--------------------------------------------------------------------------------
-- Copyright (c) 2020 David Banks
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /
-- \   \   \/
--  \   \
--  /   /         Filename  : ElectronULA.vhd
-- /___/   /\     Timestamp : 27/06/2020
-- \   \  /  \
--  \___\/\___\
--
--Design Name: ElectronULACore

-- 20/12/2021
-- Board Specific changes to support the ULA Replacement Board V1.04 - A Burgess
-- Board version 1.04 includes an SD card and supports MMFS

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity ElectronULACore is
    generic (
        LimitROMSpeed    : boolean := false;   -- true to limit ROM speed to 2MHz -- If true this breaks MMFS on the AP5
        LimitIOSpeed     : boolean := true     -- true to limit IO speed to 1MHz
    );
    port (
        clk_16M00 : in  std_logic;
        clk_24M00 : in  std_logic := '0';
        clk_40M00 : in  std_logic;
		  clk_72M00 : in  std_logic;

        -- CPU Interface
        addr      : in  std_logic_vector(15 downto 0);
        data_in   : in  std_logic_vector(7 downto 0);  -- Async, but stable on rising edge of cpu_clken
        data_out  : out std_logic_vector(7 downto 0);
        data_en   : out std_logic;
        R_W_n     : in  std_logic;
        RST_n     : in  std_logic;
        IRQ_n     : out std_logic;
        NMI_n     : in  std_logic;

        -- Video
        red       : out std_logic_vector(3 downto 0);
        green     : out std_logic_vector(3 downto 0);
        blue      : out std_logic_vector(3 downto 0);
        vsync     : out std_logic;
        hsync     : out std_logic;
		  
		   -- ROM
		  ROM_n		: out std_logic;

        -- Audio
        sound     : out std_logic;

        -- Keyboard
        kbd       : in  std_logic_vector(3 downto 0);  -- Async
		  
		  -- SD Card
        SDMISO    : in  std_logic;
        SDSS      : out std_logic;
        SDCLK     : out std_logic;
        SDMOSI    : out std_logic;

        -- Cassette
        casIn     : in  std_logic;
        casOut    : out std_logic;
		  
        -- MISC
        caps      : out std_logic;
        motor     : out std_logic;

        rom_latch : out std_logic_vector(3 downto 0);

        mode_init : in std_logic_vector(1 downto 0);
		  
		  -- MMFS Control
		  plus1 : in std_logic;

        -- Clock Generation
        cpu_clk_out    : out std_logic;
		  cpu_clken_out  : out std_logic;
		  
		  swc				  : in std_logic_vector(3 downto 0);
        turbo          : in std_logic_vector(1 downto 0);
        turbo_out      : out std_logic_vector(1 downto 0) := "01"
        );
end;

architecture behavioral of ElectronULACore is

  signal hsync_int      : std_logic;
  signal hsync_int_last : std_logic;
  signal vsync_int      : std_logic;

  signal ram_we         : std_logic;
  signal ram_n          : std_logic;
  signal ram_data       : std_logic_vector(7 downto 0);
  
  signal master_irq     : std_logic;

  signal power_on_reset : std_logic := '1';
  signal delayed_clear_reset : std_logic := '0';

  signal rtc_counter    : std_logic_vector(18 downto 0);
  signal general_counter: std_logic_vector(15 downto 0);
  signal sound_bit      : std_logic;
  signal isr_data       : std_logic_vector(7 downto 0);

  signal ram_data_in_sync : std_logic_vector(7 downto 0);

  -- ULA Registers
  signal isr            : std_logic_vector(6 downto 2);
  signal ier            : std_logic_vector(6 downto 2);
  signal screen_base    : std_logic_vector(14 downto 6);
  signal data_shift     : std_logic_vector(7 downto 0);
  signal page_enable    : std_logic;
  signal page           : std_logic_vector(2 downto 0);
  signal counter        : std_logic_vector(7 downto 0);
  signal display_mode   : std_logic_vector(2 downto 0);
  signal comms_mode     : std_logic_vector(1 downto 0);

  type palette_type is array (0 to 7) of std_logic_vector (7 downto 0);
  signal palette        : palette_type;

  signal hsync_start    : std_logic_vector(10 downto 0);
  signal hsync_end      : std_logic_vector(10 downto 0);
  signal h_active       : std_logic_vector(10 downto 0);
  signal h_total        : std_logic_vector(10 downto 0);
  signal h_count        : std_logic_vector(10 downto 0);
  signal h_count1       : std_logic_vector(10 downto 0);

  signal vsync_start    : std_logic_vector(9 downto 0);
  signal vsync_end      : std_logic_vector(9 downto 0);
  signal v_active_gph   : std_logic_vector(9 downto 0);
  signal v_active_txt   : std_logic_vector(9 downto 0);
  signal v_total        : std_logic_vector(9 downto 0);
  signal v_count        : std_logic_vector(9 downto 0);

  signal v_rtc          : std_logic_vector(9 downto 0);
  signal v_disp_gph     : std_logic_vector(9 downto 0);
  signal v_disp_txt     : std_logic_vector(9 downto 0);

  signal char_row       : std_logic_vector(3 downto 0);
  signal col_offset     : std_logic_vector(9 downto 0);

  signal screen_addr    : std_logic_vector(14 downto 0);
  signal screen_data    : std_logic_vector(7 downto 0);

  -- Screen Mode Registers

  signal mode           : std_logic_vector(1 downto 0);

  -- bits 6..3 the of the 256 byte page that the mode starts at
  signal mode_base      : std_logic_vector(6 downto 3);

  -- the number of bits per pixel (0 = 1BPP, 1 = 2BPP, 2=4BPP)
  signal mode_bpp       : std_logic_vector(1 downto 0);

   -- a '1' indicates a text mode (modes 3 and 6)
  signal mode_text      : std_logic;

  -- a '1' indicates a 40-col mode (modes 4, 5 and 6)
  signal mode_40        : std_logic;

  signal last_line      : std_logic;

  signal display_intr   : std_logic;
  signal display_intr1  : std_logic;
  signal display_intr2  : std_logic;

  signal rtc_intr       : std_logic;
  signal rtc_intr1      : std_logic;
  signal rtc_intr2      : std_logic;

  signal clk_video      : std_logic;

  signal ctrl_caps      : std_logic;

  signal field          : std_logic;

  signal caps_int       : std_logic;
  signal motor_int      : std_logic;

  -- Supports changing the switches
  signal mode_init_copy : std_logic_vector(1 downto 0);
  signal turbo_out_copy : std_logic_vector(1 downto 0) := "01";

  -- Tape Interface
  signal cintone        : std_logic;
  signal cindat         : std_logic;
  signal cinbits        : std_logic_vector(3 downto 0);
  signal coutbits       : std_logic_vector(3 downto 0);
  signal casIn1         : std_logic;
  signal casIn2         : std_logic;
  signal casIn3         : std_logic;
  signal ignore_next    : std_logic;

  -- internal RGB signals before final mux
  signal red_int        : std_logic_vector(3 downto 0);
  signal green_int      : std_logic_vector(3 downto 0);
  signal blue_int       : std_logic_vector(3 downto 0);

  -- CRTC signals (only used when Jafa Mode 7 is enabled)
  signal crtc_enable    :   std_logic;
  signal crtc_clken     :   std_logic;
  signal crtc_do        :   std_logic_vector(7 downto 0);
  signal crtc_vsync     :   std_logic;
  signal crtc_vsync_n   :   std_logic;
  signal crtc_hsync     :   std_logic;
  signal crtc_hsync_n   :   std_logic;
  signal crtc_de        :   std_logic;
  signal crtc_cursor    :   std_logic;
  signal crtc_cursor1   :   std_logic;
  signal crtc_cursor2   :   std_logic;
  signal crtc_ma        :   std_logic_vector(13 downto 0);
  signal crtc_ra        :   std_logic_vector(4 downto 0);
  signal status_enable  :   std_logic;
  signal status_do      :   std_logic_vector(7 downto 0);

  -- SAA5050 signals (only used when Jafa Mode 7 is enabled)
  signal ttxt_clock     :   std_logic;
  signal ttxt_clken     :   std_logic;
  signal ttxt_glr       :   std_logic;
  signal ttxt_dew       :   std_logic;
  signal ttxt_crs       :   std_logic;
  signal ttxt_lose      :   std_logic;
  signal ttxt_r_int     :   std_logic;
  signal ttxt_g_int     :   std_logic;
  signal ttxt_b_int     :   std_logic;
  signal ttxt_r         :   std_logic;
  signal ttxt_g         :   std_logic;
  signal ttxt_b         :   std_logic;
  signal ttxt_r_out     :   std_logic;
  signal ttxt_g_out     :   std_logic;
  signal ttxt_b_out     :   std_logic;
  signal ttxt_hs_out    :   std_logic;
  signal ttxt_vs_out    :   std_logic;

  signal mode7_enable   :   std_logic;
  
  -- ROMS
  signal ROM_n_int      :   std_logic;
  signal PLS1ROM_n	   :   std_logic;
  signal PLS1ROM_data   :	 std_logic_vector(7 downto 0);
  

  -- clock enable generation
  signal clken_counter  : std_logic_vector (3 downto 0) := (others => '0');
  signal turbo_sync     : std_logic_vector (1 downto 0);
  
  -- 6522 Signals
  
  signal via1_clken     : std_logic;
  signal via4_clken	   : std_logic;

  signal mc6522_enable     : std_logic;
  signal mc6522_data       : std_logic_vector(7 downto 0);
  signal mc6522_data_r     : std_logic_vector(7 downto 0);
  signal mc6522_irq_n      : std_logic;
  -- Port A is not really used, so signals directly loop back out to in
  signal mc6522_ca2        : std_logic;
  signal mc6522_porta      : std_logic_vector(7 downto 0);
  -- Port B is used for the MMBEEB style SDCard Interface
  signal mc6522_cb1_in     : std_logic;
  signal mc6522_cb1_out    : std_logic;
  signal mc6522_cb1_oe_l   : std_logic;
  signal mc6522_cb2_in     : std_logic;
  signal mc6522_portb_in   : std_logic_vector(7 downto 0);
  signal mc6522_portb_out  : std_logic_vector(7 downto 0);
  signal mc6522_portb_oe_l : std_logic_vector(7 downto 0);
  signal sdclk_int         : std_logic;
  
  signal contention     : std_logic;
  signal contention1    : std_logic;
  signal contention2    : std_logic;
  signal io_access      : std_logic; -- always at 1MHz, no contention
  signal rom_access     : std_logic; -- always at 2MHz, no contention
  signal ram_access     : std_logic; -- 1MHz/2MHz/Stopped

  signal kbd_access     : std_logic;

  signal clk_stopped    : std_logic_vector(1 downto 0) := "00";

  signal cpu_clken      : std_logic;
  signal cpu_clk        : std_logic := '1';
  signal clk_counter    : std_logic_vector(2 downto 0) := (others => '0');

  signal ula_irq_n      : std_logic;
  
  -- UFM
  signal read_requested	 : std_logic	:= '0';
  signal read_valid		 : std_logic	:= '0';
  signal ufm_data			 : std_logic_vector(7 downto 0);
  signal ufm_addr			 : std_logic_vector(16 downto 0);
  
  -- SAA5050 Character ROM signals
  signal char_rom_we       : std_logic := '0';
  signal char_rom_addr     : std_logic_vector(11 downto 0) := (others => '0');
  signal char_rom_data     : std_logic_vector(7 downto 0) := (others => '0');
  

-- Helper function to cast an std_logic value to an integer
function sl2int (x: std_logic) return integer is
begin
    if x = '1' then
        return 1;
    else
        return 0;
    end if;
end;

-- Helper function to cast an std_logic_vector value to an integer
function slv2int (x: std_logic_vector) return integer is
begin
    return to_integer(unsigned(x));
end;

begin

    -- video timing constants
    -- mode 00 - RGB/s @ 50Hz non-interlaced
    -- mode 01 - RGB/s @ 50Hz interlaced
	 -- mode 10 - SVGA  @ 50Hz - Not used as FPGA cannot generate 33Mhz clock, only 1 PLL
    -- mode 11 - SVGA  @ 60Hz

    clk_video    <= clk_40M00 when mode = "11" else
                    clk_16M00;
																	   
    hsync_start  <= std_logic_vector(to_unsigned(759, 11)) when mode = "11" else
                    std_logic_vector(to_unsigned(768, 11));

    hsync_end    <= std_logic_vector(to_unsigned(887, 11)) when mode = "11" else
                    std_logic_vector(to_unsigned(832, 11));

    h_total      <= std_logic_vector(to_unsigned(1055, 11)) when mode = "11" else
                    std_logic_vector(to_unsigned(1023, 11));
						  
    h_active     <= std_logic_vector(to_unsigned(640, 11));

    -- Note: The real ULA uses line 281->283/4 for VSYNC, but on both
    -- my TVs this loses part of the top line. So here we move the
    -- screen down by 7 rows. This should be transparent to software,
    -- as it doesn't affect the timing of the display or RTC
    -- interrupts. I'm happy to revert this if anyone complains!

    vsync_start  <= std_logic_vector(to_unsigned(556, 10)) when mode = "11" else
                    std_logic_vector(to_unsigned(274, 10));

    vsync_end    <= std_logic_vector(to_unsigned(560, 10)) when mode = "11" else
                    std_logic_vector(to_unsigned(276, 10)) when field = '0' else
                    std_logic_vector(to_unsigned(277, 10));

    v_total      <= std_logic_vector(to_unsigned(627, 10)) when mode = "11" else
                    std_logic_vector(to_unsigned(311, 10)) when field = '0' else
                    std_logic_vector(to_unsigned(312, 10));
						  
	 v_active_gph <= std_logic_vector(to_unsigned(512, 10)) when mode = "11" else
                    std_logic_vector(to_unsigned(256, 10)); 
					
	 v_active_txt <= std_logic_vector(to_unsigned(500, 10)) when mode = "11" else
                    std_logic_vector(to_unsigned(250, 10));

    v_disp_gph   <= std_logic_vector(to_unsigned(513, 10)) when mode = "11" else
                    std_logic_vector(to_unsigned(255, 10));
					
    v_disp_txt   <= std_logic_vector(to_unsigned(501, 10)) when mode = "11" else
                    std_logic_vector(to_unsigned(249, 10));

    v_rtc        <= std_logic_vector(to_unsigned(201, 10)) when mode = "11" else
                    std_logic_vector(to_unsigned( 99, 10));

								 
	
	 -- MAX 10 UFM contains the Plus 1 AP6 ROM, MMFS 1.44 ROM and the Mode 7 OS 1.91 ROM
	 ufmrom : entity work.ufmrom port map(
		clock_72 => clk_72M00,
		romaddress => ufm_addr,
		romdata => ufm_data,
		romen => '1',
		reset_n => '1',
		read_requested => read_requested,
		read_valid => read_valid
    );
	 
	 
	-- Initialise SAA5050 Character ROM from the UFM - ROM sits in the SAA5050
	-- ROM should be placed at the start of the UFM ROM space
	init_charrom : process(clk_24M00)
		begin
			if rising_edge(clk_24M00) then
				if char_rom_addr < x"FFF" then
					char_rom_data <= ufm_data;
					if read_valid = '1' then
						char_rom_addr <= char_rom_addr + 1;
					end if;
					char_rom_we <= '1';
				else
					char_rom_we <= '0';
				end if;
			end if;
	end process;
	
	-- Char ROM address if still initalising SAA5050 ROM otherwise read Plus 1 ROMs	
	PLS1ROM_data <= ufm_data when char_rom_addr >= x"FFF" else x"FF";
	-- Read up to 4 ROMs for the 10M08SCE144C8G
	-- ufm_addr <= ( page(1 downto 0) & addr(13 downto 0) ) when char_rom_addr >= x"FFF" else ( "0000" & char_rom_addr );
	-- Read up to 8 ROMs for the 10M08SAE144C8G
	ufm_addr <= ( page_enable & page(1 downto 0) & addr(13 downto 0) ) when char_rom_addr >= x"FFF" else ( "00000" & char_rom_addr );

	 

   -- All of main memory (0x0000-0x7fff) is dual port RAM in the ULA
   ram_32k : entity work.RAM_32K_DualPort port map(
		-- Port A is the 6502 port
		clka  => clk_16M00,
		wea   => ram_we,
		addra => addr(14 downto 0),
		dina  => data_in,
		douta => ram_data,
		-- Port B is the VGA Port
		clkb  => clk_video,
		web   => '0',
		addrb => screen_addr,
		dinb  => x"00",
		doutb => screen_data
   );
	ram_we <= '1' when addr(15) = '0' and R_W_n = '0' and cpu_clken = '1' else '0';
	ram_n <= addr(15);

   sound <= sound_bit;


------------------------------
--									 --
--			PAGED ROMS			 --
--									 --
------------------------------

 	 
    -- The external ROM is enabled:
    -- - When the address is C000-FBFF and FF00-FFFF
    -- - When the address is 8000-BFFF and the ROM 10 or 11 is paged in
    ROM_n_int <= '0' when addr(15 downto 14) = "11" and io_access = '0' else -- MOS ROM
             '0' when addr(15 downto 14) = "10" and page_enable = '1' and page(2 downto 1) = "01" else -- BASIC ROM
             '1';

	 -- Select Paged ROM when address is 8000-BFFF and the ROM 0-7 or 12-15 is paged in
	 PLS1ROM_n <= '0' when plus1 = '0' and addr(15 downto 14) = "10" and page(2 downto 1) /= "00" and page(2 downto 1) /= "01" else '1';
				 
	 ROM_n <= ROM_n_int;
				 

    -- ULA Reads + RAM Reads + KBD Reads
    data_out <= PLS1ROM_data              when PLS1ROM_n = '0' else
					 ram_data                  when ram_n = '0' else
                "0000" & (kbd xor "1111") when kbd_access = '1' else
                isr_data                  when addr(15 downto 8) = x"FE" and addr(3 downto 0) = x"0" else
                data_shift                when addr(15 downto 8) = x"FE" and addr(3 downto 0) = x"4" else
                crtc_do                   when crtc_enable = '1' else
                status_do                 when status_enable = '1' else
					 mc6522_data_r             when mc6522_enable = '1' else																	  
                x"F1"; -- todo FIXEME

    data_en  <= '1'                       when PLS1ROM_n = '0' else
					 '1'                       when ram_n = '0' else
                '1'                       when kbd_access = '1' else
                '1'                       when addr(15 downto 8) = x"FE" else
                '1'                       when crtc_enable = '1' else
                '1'                       when status_enable = '1' else
					 '1'                       when mc6522_enable = '1' else
                '0';

    -- Register FEx0 is the Interrupt Status Register (Read Only)
    -- Bit 7 always reads as 1
    -- Bits 6..2 refect in interrups status regs
    -- Bit 1 is the power up reset bit, cleared by the first read after power up
    -- Bit 0 is the OR of bits 6..2
    master_irq <= (isr(6) and ier(6)) or
                  (isr(5) and ier(5)) or
                  (isr(4) and ier(4)) or
                  (isr(3) and ier(3)) or
                  (isr(2) and ier(2));

    ula_irq_n  <= not master_irq;

    isr_data   <= '1' & isr(6 downto 2) & power_on_reset & master_irq;

    rom_latch  <= page_enable & page;

    process (clk_16M00, RST_n)
    begin

        if rising_edge(clk_16M00) then

            if (RST_n = '0') then

               isr             <= (others => '0');
               ier             <= (others => '0');
               screen_base     <= (others => '0');
               data_shift      <= (others => '0');
               page_enable     <= '0';
               page            <= (others => '0');
               counter         <= (others => '0');
               comms_mode      <= "01";
               motor_int       <= '0';
               caps_int        <= '0';
               rtc_counter     <= (others => '0');
               general_counter <= (others => '0');
               sound_bit       <= '0';
               mode            <= mode_init;
               mode_init_copy  <= mode_init;
               ctrl_caps       <= '0';
               cindat          <= '0';
               cintone         <= '0';

            else
                -- Detect switches being changed
                if (mode_init_copy /= mode_init) then
                    mode <= mode_init;
                    mode_init_copy <= mode_init;
                end if;
                if (turbo_out_copy /= swc(3 downto 2)) then
                    turbo_out <= swc(3 downto 2);
                    turbo_out_copy <= swc(3 downto 2);
                end if;
					 
                -- Synchronize the display interrupt signal from the VGA clock domain
                display_intr1 <= display_intr;
                display_intr2 <= display_intr1;
                -- Generate the display end interrupt on the rising edge (line 256 of the screen)
                if (display_intr2 = '0' and display_intr1 = '1') then
                    isr(2) <= '1';
                end if;
                -- Synchronize the rtc interrupt signal from the VGA clock domain
                rtc_intr1 <= rtc_intr;
                rtc_intr2 <= rtc_intr1;
                if mode = "11" then
                    -- For 60Hz frame rates we must synthesise a the 50Hz real time clock interrupt
                    -- In theory the counter limit should be 319999, but there are additional
                    -- rtc ticks if not rtc interrupt is received between two display interrupts
                    -- hence the correction factor of 6/5. This comes from the probability
                    -- of the there not being a 50Hz rtc interrupts between any two successive
                    -- 60Hz display interrupts.
                    if (rtc_counter = 383999) then
                        rtc_counter <= (others => '0');
                        isr(3) <= '1';
                    else
                        rtc_counter <= rtc_counter + 1;
                    end if;
                else
   					  -- Generate the rtc interrupt on the rising edge (line 100 of the screen)
	      			  if (rtc_intr2 = '0' and rtc_intr1 = '1') then
								isr(3) <= '1';
						  end if;
					 end if;
                if (comms_mode = "00") then
                    -- Cassette In Mode
                    if (casIn2 = '0') then
                        general_counter <= (others => '0');
                    else
                        general_counter <= general_counter + 1;
                    end if;
                elsif (comms_mode = "01") then
                    -- Sound Mode - Frequency = 1MHz / [16 * (S + 1)]
                    if (general_counter = 0) then
                        general_counter <= counter & "00000000";
                        sound_bit <= not sound_bit;
                    else
                        general_counter <= general_counter - 1;
                    end if;
                elsif (comms_mode = "10") then
                    -- Cassette Out Mode
                    -- Bit 12 is at 2404Hz
                    -- Bit 13 is at 1202Hz
                    if (general_counter(11 downto 0) = 0) then
                        general_counter <= general_counter - x"301";
                    else
                        general_counter <= general_counter - x"001";
                    end if;
                end if;


                -- Tape Interface Receive
                casIn1 <= casIn;
                casIn2 <= casIn1;
                casIn3 <= casIn2;
                if (comms_mode = "00" and motor_int = '1') then
                    -- Only take actions on the falling edge of casIn
                    -- On the falling edge, general_counter will contain length of
                    -- the previous high pulse in 16MHz cycles.
                    -- A 1200Hz pulse is 6666 cycles
                    -- A 2400Hz pulse is 3333 cycles
                    -- A threshold in between would be 5000 cycles.
                    -- Ignore pulses shorter then say 500 cycles as these are
                    -- probably just noise.

                    if (casIn3 = '1' and casIn2 = '0' and general_counter > 500) then
                        -- a Pulse of length > 500 cycles has been detected

                        if (cindat = '0' and cintone = '0' and general_counter <= 5000) then
                            -- High Tone detected
                            cindat  <= '0';
                            cintone <= '1';
                            cinbits <= (others => '0');
                            -- Generate the high tone detect interrupt
                            isr(6) <= '1';

                        elsif (cindat = '0' and cintone = '1' and general_counter > 5000) then
                            -- Start bit detected
                            cindat  <= '1';
                            cintone <= '0';
                            cinbits <= (others => '0');

                        elsif (cindat = '1' and ignore_next = '1') then
                            -- Ignoring the second pulse in a bit at 2400Hz
                            ignore_next <= '0';

                        elsif (cindat = '1' and cinbits < 9) then

                            if (cinbits < 8) then
                                if (general_counter > 5000) then
                                    -- shift in a zero
                                    data_shift <= '0' & data_shift(7 downto 1);
                                else
                                    -- shift in a one
                                    data_shift <= '1' & data_shift(7 downto 1);
                                end if;
                                -- Generate the receive data int as soon as the
                                -- last bit has been shifted in.
                                if (cinbits = 7) then
                                    isr(4) <= '1';
                                end if;
                            end if;
                            -- Ignore the second pulse in a bit at 2400Hz
                            if (general_counter > 5000) then
                                ignore_next <= '0';
                            else
                                ignore_next <= '1';
                            end if;
                            -- Move on to the next data bit
                            cinbits <= cinbits + 1;
                        elsif (cindat = '1' and cinbits = 9) then
                            if (general_counter > 5000) then
                                -- Found next start bit...
                                cindat  <= '1';
                                cintone <= '0';
                                cinbits <= (others => '0');
                            else
                                -- Back in tone again
                                cindat  <= '0';
                                cintone <= '1';
                                cinbits <= (others => '0');
                                -- Generate the high tone detect interrupt
                                isr(6) <= '1';
                           end if;
                       end if;
                    end if;
                else
                    cindat      <= '0';
                    cintone     <= '0';
                    cinbits     <= (others => '0');
                    ignore_next <= '0';
                end if;

                -- regardless of the comms mode, update coutbits state (at 1200Hz)
                if general_counter(13 downto 0) = 0 then
                    -- wait to TDEmpty interrupt to be cleared before starting
                    if coutbits = 0 then
                        if isr(5) = '0' then
                            coutbits <= x"9";
                        end if;
                    else
                        -- set the TDEmpty interrpt after the last data bit is sent
                        if coutbits = 1 then
                            isr(5) <= '1';
                        end if;
                        -- shift the data shift register if not the start bit
                        -- shifting a 1 at the top end gives us the correct stop bit
                        if comms_mode = "10" and coutbits /= 9 then
                            data_shift <= '1' & data_shift(7 downto 1);
                        end if;
                        -- move to the next state
                        coutbits <= coutbits - 1;
                    end if;
                end if;
                -- Generate the cassette out tone based on the current state
                if coutbits = 9 or (coutbits > 0 and data_shift(0) = '0') then
                    -- start bit or data bit "0" = 1200Hz
                    casOut <= general_counter(13);
                else
                    -- stop bit or data bit "1" or any other time= 2400Hz
                    casOut <= general_counter(12);
                end if;

                -- ULA Writes
                if (cpu_clken = '1') then
                    if delayed_clear_reset = '1' then
                        power_on_reset <= '0';
                    end if;
                    ---- Detect control+caps 1...4 and change video format
                    if (addr = x"9fff" and page_enable = '1' and page(2 downto 1) = "00") then
                        if (kbd(2 downto 1) = "00") then
                            ctrl_caps <= '1';
                        else
                            ctrl_caps <= '0';
                        end if;
                    end if;
                    -- Detect "1" being pressed: RGB non-interlaced
                    if (addr = x"afff" and page_enable = '1' and page(2 downto 1) = "00" and ctrl_caps = '1' and kbd(0) = '0') then
                        mode <= "00";
                    end if;
                    -- Detect "2" being pressed: RGB interlaced (default)
                    if (addr = x"b7ff" and page_enable = '1' and page(2 downto 1) = "00" and ctrl_caps = '1' and kbd(0) = '0') then
                        mode <= "01";
                    end if;
                    -- Detect "4" being pressed: SVGA @ 60 Hz (40 MHz clock)
                    if (addr = x"bdff" and page_enable = '1' and page(2 downto 1) = "00" and ctrl_caps = '1' and kbd(0) = '0') then
                        mode <= "11";
                    end if;
                    -- Detect "5" being pressed: 1MHz
                    if (addr = x"beff" and page_enable = '1' and page(2 downto 1) = "00" and ctrl_caps = '1' and kbd(0) = '0') then
                        turbo_out <= "00";
                    end if;
                    -- Detect "6" being pressed: 2MHz with contention (default)
                    if (addr = x"bf7f" and page_enable = '1' and page(2 downto 1) = "00" and ctrl_caps = '1' and kbd(0) = '0') then
                        turbo_out <= "01";
                    end if;
                    -- Detect "7" being pressed: 2MHz no contention
                    if (addr = x"bfbf" and page_enable = '1' and page(2 downto 1) = "00" and ctrl_caps = '1' and kbd(0) = '0') then
                        turbo_out <= "10";
                    end if;
                    -- Detect "8" being pressed: 4MHz
                    if (addr = x"bfdf" and page_enable = '1' and page(2 downto 1) = "00" and ctrl_caps = '1' and kbd(0) = '0') then
                        turbo_out <= "11";
                    end if;
                    if (addr(15 downto 8) = x"FE") then
                        if (R_W_n = '1') then
                            -- Clear the power on reset flag on the first read of the ISR (FEx0)
                            if (addr(3 downto 0) = x"0") then
                                delayed_clear_reset <= '1';
                            end if;
                            -- Clear the RDFull interrupts on reading the data_shift register
                            if (addr(3 downto 0) = x"4") then
                                isr(4) <= '0';
                            end if;
                        else
                            case addr(3 downto 0) is
                            when x"0" =>
                                ier(6 downto 2) <= data_in(6 downto 2);
                            when x"1" =>
                            when x"2" =>
                                screen_base(8 downto 6) <= data_in(7 downto 5);
                            when x"3" =>
                                screen_base(14 downto 9) <= data_in(5 downto 0);
                            when x"4" =>
                                data_shift <= data_in;
                                -- Clear the TDEmpty interrupt on writing the
                                -- data_shift register
                                isr(5) <= '0';
                            when x"5" =>
                                if (data_in(6) = '1') then
                                    -- Clear High Tone Detect IRQ
                                    isr(6) <= '0';
                                end if;
                                if (data_in(5) = '1') then
                                    -- Clear Real Time Clock IRQ
                                    isr(3) <= '0';
                                end if;
                                if (data_in(4) = '1') then
                                    -- Clear Display End IRQ
                                    isr(2) <= '0';
                                end if;
                                if (page_enable = '1' and page(2) = '0') then
                                    -- Roms 8-11 currently selected, so only selecting 8-15 will be honoured
                                    if (data_in(3) = '1') then
                                        page_enable <= data_in(3);
                                        page <= data_in(2 downto 0);
                                    end if;
                                else
                                    -- Roms 0-7 or 12-15 currently selected, so anything goes
                                    page_enable <= data_in(3);
                                    page <= data_in(2 downto 0);
                                end if;
                            when x"6" =>
                                counter <= data_in;
                            when x"7" =>
                                caps_int     <= data_in(7);
                                motor_int    <= data_in(6);
                                case (data_in(5 downto 3)) is
                                when "000" =>
                                    mode_base    <= "0110"; -- 0x3000
                                    mode_bpp     <= "00";
                                    mode_40      <= '0';
                                    mode_text    <= '0';
                                when "001" =>
                                    mode_base    <= "0110"; -- 0x3000
                                    mode_bpp     <= "01";
                                    mode_40      <= '0';
                                    mode_text    <= '0';
                                when "010" =>
                                    mode_base    <= "0110"; -- 0x3000
                                    mode_bpp     <= "10";
                                    mode_40      <= '0';
                                    mode_text    <= '0';
                                when "011" =>
                                    mode_base    <= "1000"; -- 0x4000
                                    mode_bpp     <= "00";
                                    mode_40      <= '0';
                                    mode_text    <= '1';
                                when "100" =>
                                    mode_base    <= "1011"; -- 0x5800
                                    mode_bpp     <= "00";
                                    mode_40      <= '1';
                                    mode_text    <= '0';
                                when "101" =>
                                    mode_base    <= "1011"; -- 0x5800
                                    mode_bpp     <= "01";
                                    mode_40      <= '1';
                                    mode_text    <= '0';
                                when "110" =>
                                    mode_base    <= "1100"; -- 0x6000
                                    mode_bpp     <= "00";
                                    mode_40      <= '1';
                                    mode_text    <= '1';
                                when "111" =>
                                    -- mode 7 seems to default to mode 4
                                    mode_base    <= "1011"; -- 0x5800
                                    mode_bpp     <= "00";
                                    mode_40      <= '1';
                                    mode_text    <= '0';
                                when others =>
                                end case;
                                comms_mode   <= data_in(2 downto 1);
                                -- A quirk of the Electron ULA is that RxFull
                                -- interrupt fires when tape output mode is
                                -- entered. Games like Southen Belle rely on
                                -- this quirk.
                                if data_in(2 downto 1) = "10" then
                                    isr(4) <= '1';
                                end if;
                            when others =>
                                -- A '1' in the palatte data means disable the colour
                                -- Invert the stored palette, to make the palette logic simpler
                                palette(slv2int(addr(2 downto 0))) <= data_in xor "11111111";
                            end case;
                        end if;
                    end if;
                end if;
            end if;
        end if;
    end process;

    -- SGVA timing at 60Hz with a 40.000MHz Pixel Clock
    -- Horizontal 800 + 40 + 128 + 88 = total 1056
    -- Vertical   600 +  1 +   4 + 23 = total 628
    -- Within the the 640x512 is centred so starts at 80,44
    -- Horizontal 640 + (80 + 40) + 128 + (88 + 80) = total 1056
    -- Vertical   512 + (44 +  1) +   4 + (23 + 44) = total 628
    -- RGBs timing at 50Hz with a 16.000MHz Pixel Clock
    -- Horizontal 640 + (96 + 26) +  75 + (91 + 96) = total 1024
    -- Vertical   256 + (16 +  2) +   3 + (19 + 16) = total 312

    process (clk_video)
        variable pixel : std_logic_vector(3 downto 0);
        -- start address of current row block (8-10 lines)
        variable row_addr  : std_logic_vector(14 downto 6);
        -- address within current line
        variable byte_addr : std_logic_vector(14 downto 3);
    begin
        if rising_edge(clk_video) then

            -- Horizontal counter, clocked at the pixel clock rate
            if h_count = h_total then
                h_count <= (others => '0');
            else
                h_count <= h_count + 1;
            end if;

            -- Pipelined version of h_count by to compensate the register in the RAM
            h_count1 <= h_count;

            -- Vertical counter, incremented at the end of each line
            if h_count = h_total then
                if v_count = v_total then
                    v_count <= (others => '0');
                else
                    v_count <= v_count + 1;
                end if;
            end if;

            -- Field; field=0 is the (first) odd field, field=1 is the even field
            if h_count = h_total and v_count = v_total then
                if mode = "01" then
                    -- Interlaced, so alternate odd and even fields
                    field <= not field;
                else
                    -- Non-interlaced, so odd fields only
                    field <= '0';
                end if;
            end if;

            -- Char_row counts 0..7 or 0..9 depending on the mode.
            -- It incremented on the trailing edge of hsync
            hsync_int_last <= hsync_int;
            if hsync_int = '1' and hsync_int_last = '0'  then
                if v_count = v_total then
                    char_row <= (others => '0');
                elsif v_count(0) = '1' or mode(1) = '0' then
                    if last_line = '1' then
                        char_row <= (others => '0');
                    else
                        char_row <= char_row + 1;
                    end if;
                end if;
            elsif mode_text = '0' then
                -- From the ULA schematics sheet 7, VA3 is a T-type Latch
                -- with an additional reset input connected to GMODE, so it's
                -- immediately forced to zero in a graphics mode. This is
                -- needed for 0xC0DE's Vertical Rupture demo to work. Only works correctly in interlaced mode
                char_row(3) <= '0';
            end if;

            -- Determine last line of a row
            if ((mode_text = '0' and char_row = 7) or (mode_text = '1' and char_row = 9)) and (v_count(0) = '1' or mode(1) = '0') then
                last_line <= '1';
            else
                last_line <= '0';
            end if;

            -- RAM Address, constructed from the local row_addr and byte_addr registers
            -- Some of this is taken from Hick's efforts to understand the schematics:
            -- https://www.mups.co.uk/project/hardware/acorn_electron/

            -- At start of the field, update row_addr and byte_addr from the ULA registers 2,3
            if h_count = h_total and v_count = v_total then
                row_addr  := screen_base;
                byte_addr := screen_base & "000";
            end if;

            -- At the start of hsync,  update the row_addr from byte_addr which
            -- gets to the start of the next block
            if hsync_int = '0' and last_line = '1' then
                row_addr := byte_addr(14 downto 6);
            end if;

            -- During hsync, reset byte reset back to start of line, unless
            -- it's the last line
            if hsync_int = '0' and last_line = '0' then
                byte_addr := row_addr & "000";
            end if;

            -- Every 8 or 16 pixels depending on mode/repeats
            if h_count < h_active then
                if (mode_40 = '0' and h_count(2 downto 0) = "111") or
                   (mode_40 = '1' and h_count(3 downto 0) = "1111") then
                    byte_addr := byte_addr + 1;
                end if;
            end if;

            -- Handle wrap-around back to mode_base
            if byte_addr(14 downto 11) = "0000" then
                byte_addr := mode_base & byte_addr(10 downto 3);
            end if;

            -- Screen_addr is the final 15-bit Video RAM address
            if mode7_enable = '1' then
                screen_addr <= "11111" & crtc_ma(9 downto 0);
            else
                screen_addr <= byte_addr & char_row(2 downto 0);
            end if;

            -- RGB Data
            if (h_count1 >= h_active or (mode_text = '0' and v_count >= v_active_gph) or (mode_text = '1' and v_count >= v_active_txt) or char_row >= 8) then
                -- blanking and border are always black
                red_int   <= (others => '0');
                green_int <= (others => '0');
                blue_int  <= (others => '0');
                contention <= '0';
            else
                -- Indicate possible memory contention on active scan lines
                contention <= not mode_40;
                -- rendering an actual pixel
                if (mode_bpp = 0) then
                    -- 1 bit per pixel, map to colours 0 and 8 for the palette lookup
                    if (mode_40 = '1') then
                        pixel := screen_data(7 - slv2int(h_count1(3 downto 1))) & "000";
                    else
                        pixel := screen_data(7 - slv2int(h_count1(2 downto 0))) & "000";
                    end if;
                elsif (mode_bpp = 1) then
                    -- 2 bits per pixel, map to colours 0, 2, 8, 10 for the palette lookup
                    if (mode_40 = '1') then
                        pixel := screen_data(7 - slv2int(h_count1(3 downto 2))) & "0" &
                                 screen_data(3 - slv2int(h_count1(3 downto 2))) & "0";
                    else
                        pixel := screen_data(7 - slv2int(h_count1(2 downto 1))) & "0" &
                                 screen_data(3 - slv2int(h_count1(2 downto 1))) & "0";
                    end if;
                else
                    -- 4 bits per pixel, map directly for the palette lookup
                    if (mode_40 = '1') then
                        pixel := screen_data(7 - sl2int(h_count1(3))) &
                                 screen_data(5 - sl2int(h_count1(3))) &
                                 screen_data(3 - sl2int(h_count1(3))) &
                                 screen_data(1 - sl2int(h_count1(3)));
                    else
                        pixel := screen_data(7 - sl2int(h_count1(2))) &
                                 screen_data(5 - sl2int(h_count1(2))) &
                                 screen_data(3 - sl2int(h_count1(2))) &
                                 screen_data(1 - sl2int(h_count1(2)));
                    end if;
                end if;
                -- Implement Color Palette
                case (pixel) is
                when "0000" =>
                    red_int   <= (others => palette(1)(0));
                    green_int <= (others => palette(1)(4));
                    blue_int  <= (others => palette(0)(4));
                when "0001" =>
                    red_int   <= (others => palette(7)(0));
                    green_int <= (others => palette(7)(4));
                    blue_int  <= (others => palette(6)(4));
                when "0010" =>
                    red_int   <= (others => palette(1)(1));
                    green_int <= (others => palette(1)(5));
                    blue_int  <= (others => palette(0)(5));
                when "0011" =>
                    red_int   <= (others => palette(7)(1));
                    green_int <= (others => palette(7)(5));
                    blue_int  <= (others => palette(6)(5));
                when "0100" =>
                    red_int   <= (others => palette(3)(0));
                    green_int <= (others => palette(3)(4));
                    blue_int  <= (others => palette(2)(4));
                when "0101" =>
                    red_int   <= (others => palette(5)(0));
                    green_int <= (others => palette(5)(4));
                    blue_int  <= (others => palette(4)(4));
                when "0110" =>
                    red_int   <= (others => palette(3)(1));
                    green_int <= (others => palette(3)(5));
                    blue_int  <= (others => palette(2)(5));
                when "0111" =>
                    red_int   <= (others => palette(5)(1));
                    green_int <= (others => palette(5)(5));
                    blue_int  <= (others => palette(4)(5));
                when "1000" =>
                    red_int   <= (others => palette(1)(2));
                    green_int <= (others => palette(0)(2));
                    blue_int  <= (others => palette(0)(6));
                when "1001" =>
                    red_int   <= (others => palette(7)(2));
                    green_int <= (others => palette(6)(2));
                    blue_int  <= (others => palette(6)(6));
                when "1010" =>
                    red_int   <= (others => palette(1)(3));
                    green_int <= (others => palette(0)(3));
                    blue_int  <= (others => palette(0)(7));
                when "1011" =>
                    red_int   <= (others => palette(7)(3));
                    green_int <= (others => palette(6)(3));
                    blue_int  <= (others => palette(6)(7));
                when "1100" =>
                    red_int   <= (others => palette(3)(2));
                    green_int <= (others => palette(2)(2));
                    blue_int  <= (others => palette(2)(6));
                when "1101" =>
                    red_int   <= (others => palette(5)(2));
                    green_int <= (others => palette(4)(2));
                    blue_int  <= (others => palette(4)(6));
                when "1110" =>
                    red_int   <= (others => palette(3)(3));
                    green_int <= (others => palette(2)(3));
                    blue_int  <= (others => palette(2)(7));
                when "1111" =>
                    red_int   <= (others => palette(5)(3));
                    green_int <= (others => palette(4)(3));
                    blue_int  <= (others => palette(4)(7));
                when others =>
                end case;
                --green_int <= (not ctrl_caps) & "111"; -- DEBUG make screen green
            end if;
            -- Vertical Sync, lasts 2.5 lines (160us)
            if (field = '0') then
                -- first field (odd) of interlaced scanning (or non interlaced)
                -- vsync starts at the beginning of the line
                if (h_count1 = 0 and v_count = vsync_start) then
                    vsync_int <= '0';
                elsif (h_count1 = ('0' & h_total(10 downto 1)) and v_count = vsync_end) then
                    vsync_int <= '1';
                end if;
            else
                -- second field (even) of intelaced scanning
                -- vsync starts half way through the line
                if (h_count1 = ('0' & h_total(10 downto 1)) and v_count = vsync_start) then
                    vsync_int <= '0';
                elsif (h_count1 = 0 and v_count = vsync_end) then
                    vsync_int <= '1';
                end if;
            end if;
            -- Horizontal Sync
            if (h_count1 = hsync_start) then
                hsync_int <= '0';
            elsif (h_count1 = hsync_end) then
                hsync_int <= '1';
            end if;
            -- Display Interrupt, this is co-incident with the leading edge
            -- of hsync at the end the last active line of display
            -- (line 249 in text mode or line 255 in graphics mode)
            if (h_count1 = hsync_start) and ((v_count = v_disp_gph and mode_text = '0') or (v_count = v_disp_txt and mode_text = '1')) then
                display_intr <= '1';
            elsif (h_count1 = hsync_end) then
                display_intr <= '0';
            end if;
            -- RTC Interrupt, this occurs 8192us (200 lines) after the end of
            -- the vsync, and is not co-incident with hsync
            if (v_count = v_rtc) and ((field = '0' and h_count1 = 0) or (field = '1' and h_count1 = ('0' & h_total(10 downto 1)))) then
                rtc_intr <= '1';
            elsif (v_count = 0) then
                rtc_intr <= '0';
            end if;
        end if;
    end process;

    red   <= (others => ttxt_r_out) when mode7_enable = '1' else
             red_int;

    green <= (others => ttxt_g_out) when mode7_enable = '1' else
             green_int;

    blue  <= (others => ttxt_b_out) when mode7_enable = '1' else
             blue_int;

    vsync <= ttxt_vs_out when mode7_enable = '1' else
             '1' when mode(1) = '0' else
             vsync_int;

    hsync <= ttxt_hs_out when mode7_enable = '1' else
             hsync_int and vsync_int when mode(1) = '0' else
             hsync_int;

    caps  <= caps_int;
    motor <= motor_int;

--------------------------------------------------------
-- clock enable generator
--------------------------------------------------------

    -- Keyboard accesses always need to happen at 1MHz
    kbd_access <= '1' when addr(15 downto 14) = "10" and page_enable = '1' and page(2 downto 1) = "00" else '0';

    -- IO accesses always happen at 1MHz (no contention)
    -- This includes keyboard reads in paged ROM slots 8/9
    io_access <= '1' when addr(15 downto 8) = x"FC" or addr(15 downto 8) = x"FD" or addr(15 downto 8) = x"FE" or kbd_access = '1' else '0';

    -- ROM accesses always happen at 2MHz (no contention)
    rom_access <= addr(15) and not io_access;

    -- RAM accesses always happen at 1MHz (with contention)
    ram_access <= not addr(15);

    clk_gen1 : process(clk_16M00)
    begin
        if rising_edge(clk_16M00) then
            -- Synchronize changes in the current speed with a 1MHz clock boundary
            if clken_counter = "1111" then
                turbo_sync <= turbo;
            end if;

            -- Synchronize contention signal
            contention1 <= contention;
            contention2 <= contention1;

            -- clken counter
            clken_counter <= clken_counter + 1;

            -- Logic to supress cpu cycles
            case (turbo_sync) is
                when "00" =>
                    -- 1MHz No Contention
                    --    RAM accesses 1MHz
                    --    ROM accesses 1MHz
                    --     IO accesses 1MHz
                    -- cpu_clken active on cycle 0
                    -- address/data changes on cycle 1
                    if clken_counter(3 downto 0) = "1111" then
                        cpu_clken <= '1';
                    else
                        cpu_clken <= '0';
                    end if;
                    -- No stopping of the clock in this mode
                    clk_stopped <= "00";

                when "01" =>
                    -- 2MHz/1MHz with Contention (match original Electron)
                    --    RAM accesses 1MHz + contention
                    --    ROM accesses 2MHz
                    --     IO accesses 1MHz
                    -- cpu_clken active on cycle 0, 8
                    -- address/data changes on cycle 1, 9
                    if clken_counter(2 downto 0) = "111" and clk_stopped = 0 then
                        cpu_clken <= '1';
                    else
                        cpu_clken <= '0';
                    end if;
                    -- Stop the clock on RAM or IO accesses, in the same way the ULA does
                    if clk_stopped = 0 and clken_counter(2 downto 0) = "110" and (ram_access = '1' or io_access = '1') then
                        clk_stopped <= "01";
                    elsif clken_counter(3 downto 0) = "1110" and not (ram_access = '1' and contention2 = '1') then
                        clk_stopped <= "00";
                    end if;

                when "10" =>
                    -- 2MHz No Contention
                    --    RAM accesses 2MHz
                    --    ROM accesses 2MHz
                    --     IO accesses 2MHz (or 1MHz if LimitIOSpeed true)
                    -- cpu_clken active on cycle 0, 8
                    -- address/data changes on cycle 1, 9
                    if clken_counter(2 downto 0) = "111" and clk_stopped = 0 then
                        cpu_clken <= '1';
                    else
                        cpu_clken <= '0';
                    end if;
                    -- Stop the clock on IO accesses as required
                    if LimitIOSpeed and clk_stopped = 0 and clken_counter(2 downto 0) = "110" and io_access = '1' then
                        clk_stopped <= "01";
                    elsif clken_counter(3 downto 0) = "1110" then
                        clk_stopped <= "00";
                    end if;
                when "11" =>
                    -- 4MHz No contention
                    --    RAM accesses 4MHz
                    --    ROM accesses 4MHz (or 2MHz if LimitROMSpeed true)
                    --     IO accesses 4MHz (or 1MHz if LimitIOSpeed true)
                    -- cpu_clken active on cycle 0, 4, 8, 12
                    -- address/data changes on cycle 1, 5, 9, 13
                    if clken_counter(1 downto 0) = "11" and clk_stopped = 0 then
                        cpu_clken <= '1';
                    else
                        cpu_clken <= '0';
                    end if;
                    -- Stop the clock on ROM or IO accesses as required
                    if clk_stopped = 0 then
                        if LimitROMSpeed and rom_access = '1' and clken_counter(1 downto 0) = "10" then
                            clk_stopped <= "01";
                        elsif LimitIOSpeed and io_access = '1' and clken_counter(1 downto 0) = "10" then
                            if clken_counter(3 downto 2) = "00" or clken_counter(3 downto 2) = "11" then
                                clk_stopped <= "01";
                            else
                                clk_stopped <= "10";
                            end if;
                        end if;
                    else
                        if rom_access = '1' then
                            if clken_counter(2 downto 0) = "110" then
                                clk_stopped <= "00";
                            end if;
                        else
                            if clken_counter(3 downto 0) = "1110" then
                                if clk_stopped(1) = '1' then
                                    clk_stopped <= "01";
                                else
                                    clk_stopped <= "00";
                                end if;
                            end if;
                        end if;
                    end if;
                when others =>
            end case;
				
	 -- Generate clock enables for VIA one cycle before cpu_clken
	 -- If plus1 = 1 then 6522 via clocks are disabled to disable MMC hardware
	 if plus1 = '0' then
		 if turbo_sync(1) = '0' or LimitIOSpeed then
			-- 1MHz
			via1_clken <= clken_counter(3) and clken_counter(2) and clken_counter(1) and not clken_counter(0);
			via4_clken <=                                           clken_counter(1) and not clken_counter(0);
		 elsif turbo_sync(0) = '0' then
			-- 2MHz
			via1_clken <= clken_counter(2) and clken_counter(1) and not clken_counter(0);
			via4_clken <=                                           not clken_counter(0);
		 else
			-- 4MHz
			via1_clken <= clken_counter(1) and not clken_counter(0);
			via4_clken <= '1';
		 end if;
	 else
			via1_clken <= '0';
			via4_clken <= '0';
	 end if;
			

    -- Generate cpu_clk
    if cpu_clken = '1' then
		if turbo_sync = "11" then
			-- 4MHz clock; produce a 125 ns low pulse
         clk_counter <= "011";
      else
      -- 1MHz or 2MHz clock; produce a 250 ns low pulse
			clk_counter <= "001";
      end if;
			cpu_clk <= '0';
			elsif clk_counter(2) = '0' then
				clk_counter <= clk_counter + 1;
         else
				cpu_clk <= '1';
         end if;
		end if;
	 end process;

    cpu_clk_out    <= cpu_clk;
	 cpu_clken_out  <= cpu_clken;

	 
--------------------------------------------------------
-- MMC Filing System
--------------------------------------------------------

        mc6522_enable  <= '1' when addr(15 downto 4) = x"fcb" else '0';

        via : entity work.M6522 port map(
            I_RS       => addr(3 downto 0),
            I_DATA     => data_in(7 downto 0),
            O_DATA     => mc6522_data(7 downto 0),
            I_RW_L     => R_W_n,
            I_CS1      => mc6522_enable,
            I_CS2_L    => '0',
            O_IRQ_L    => mc6522_irq_n,
            I_CA1      => '0',
            I_CA2      => mc6522_ca2,
            O_CA2      => mc6522_ca2,
            O_CA2_OE_L => open,
            I_PA       => mc6522_porta,
            O_PA       => mc6522_porta,
            O_PA_OE_L  => open,
            I_CB1      => mc6522_cb1_in,
            O_CB1      => mc6522_cb1_out,
            O_CB1_OE_L => mc6522_cb1_oe_l,
            I_CB2      => mc6522_cb2_in,
            O_CB2      => open,
            O_CB2_OE_L => open,
            I_PB       => mc6522_portb_in,
            O_PB       => mc6522_portb_out,
            O_PB_OE_L  => mc6522_portb_oe_l,
            RESET_L    => RST_n,
            I_P2_H     => via1_clken,
            ENA_4      => via4_clken,
            CLK        => clk_16M00);

        -- This is needed as in v003 of the 6522 data out is only valid while I_P2_H is asserted
        -- I_P2_H is driven from via1_clken
        data_latch: process(clk_16M00)
        begin
            if rising_edge(clk_16M00) then
                if via1_clken = '1' then
                    mc6522_data_r <= mc6522_data;
                end if;
            end if;
        end process;

        -- loop back data port
        mc6522_portb_in <= mc6522_portb_out;

        -- SDCLK is driven from either PB1 or CB1 depending on the SR Mode
        sdclk_int     <= mc6522_portb_out(1) when mc6522_portb_oe_l(1) = '0' else
                         mc6522_cb1_out      when mc6522_cb1_oe_l = '0' else
                         '1';
        SDCLK         <= sdclk_int;
        mc6522_cb1_in <= sdclk_int;

        -- SDMOSI is always driven from PB0
        SDMOSI        <= mc6522_portb_out(0) when mc6522_portb_oe_l(0) = '0' else
                     '1';
        -- SDMISO is always read from CB2
        mc6522_cb2_in <= SDMISO;

        -- SDSS is hardwired to 0 (always selected) as there is only one slave attached
        SDSS          <= '0';

        IRQ_n <= ( ula_irq_n and mc6522_irq_n ) when plus1 = '0' else ula_irq_n;

		  
--------------------------------------------------------
-- Jafa Mk1 Compatible Mode 7 Implementation
--------------------------------------------------------

        -- FC1C - Write address register
        -- FC1D - Write data register
        -- FC1E - Read status register - only bit 5 (vsync) is implemented
        -- FC1F - Read data register

        process (clk_16M00)
        variable counter : std_logic_vector(3 downto 0);
        begin
            if rising_edge(clk_16M00) then
                if counter = "1111" then
                    crtc_clken <= '1';
                else
                    crtc_clken <= '0';
                end if;
                counter := counter + 1;
                -- Generate a cursor signal that is delayed by 2 characters
                if crtc_clken = '1' then
                    crtc_cursor1 <= crtc_cursor;
                    crtc_cursor2 <= crtc_cursor1;
                end if;
            end if;
        end process;


            -- Use 24 MHz clock and generate 12 MHz enable
            ttxt_clock <= clk_24M00;
            process (clk_24M00)
            begin
                if rising_edge(clk_24M00) then
                    ttxt_clken <= not ttxt_clken;
                end if;
            end process;

        crtc_enable <= '1' when addr(15 downto 0) = x"fc1c" or
                                addr(15 downto 0) = x"fc1d" or
                                addr(15 downto 0) = x"fc1f"
                           else '0';

        status_enable <= '1' when addr(15 downto 0) = x"fc1e" else '0';

        status_do <= "00" & crtc_vsync & "00000";

        crtc : entity work.mc6845 port map (
            -- inputs
            CLOCK  => clk_16M00,
            CLKEN  => crtc_clken,
            nRESET => RST_n,
            ENABLE => crtc_enable,
            R_nW   => R_W_n,
            RS     => addr(0),
            DI     => data_in,
            LPSTB  => '0',
            -- outputs
            DO     => crtc_do,
            VSYNC  => crtc_vsync,
            HSYNC  => crtc_hsync,
            DE     => crtc_de,
            CURSOR => crtc_cursor,
            MA     => crtc_ma,
            RA     => crtc_ra
        );

        crtc_hsync_n <= not crtc_hsync;
        crtc_vsync_n <= not crtc_vsync;

        ttxt_glr <= crtc_hsync_n;
        ttxt_dew <= crtc_vsync;
        ttxt_crs <= not crtc_ra(0);
        ttxt_lose <= crtc_de;

        teletext : entity work.saa5050
        port map (
            -- inputs
            CLOCK    => ttxt_clock,
            CLKEN    => ttxt_clken,
            nRESET   => RST_n,
            DI_CLOCK => clk_16M00,
            DI_CLKEN => '1',
            DI       => screen_data(6 downto 0),
            GLR      => ttxt_glr,
            DEW      => ttxt_dew,
            CRS      => ttxt_crs,
            LOSE     => ttxt_lose,
            -- outputs
            R        => ttxt_r_int,
            G        => ttxt_g_int,
            B        => ttxt_b_int,
            -- SAA5050 character ROM loading
            char_rom_we   => char_rom_we,
            char_rom_addr => char_rom_addr,
            char_rom_data => char_rom_data
        );

        -- make the cursor visible
        ttxt_r <= ttxt_r_int xor crtc_cursor2;
        ttxt_g <= ttxt_g_int xor crtc_cursor2;
        ttxt_b <= ttxt_b_int xor crtc_cursor2;

        -- enable mode 7
        mode7_enable <= crtc_ma(13);

        ttxt_r_out  <= ttxt_r;
        ttxt_g_out  <= ttxt_g;
        ttxt_b_out  <= ttxt_b;
        ttxt_vs_out <= '1';
        ttxt_hs_out <= crtc_hsync_n and crtc_vsync_n;

end behavioral;

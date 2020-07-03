--------------------------------------------------------------------------------
-- Copyright (c) 2016 David Banks
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /
-- \   \   \/
--  \   \
--  /   /         Filename  : ElectronUla.vhd
-- /___/   /\     Timestamp : 17/09/2016
-- \   \  /  \
--  \___\/\___\
--
--Design Name: ElectronUla

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

-- Board Specific changes to support the ULA Replacement Board V1.02 - A Burgess


-- Remember to fix the UFM error on some versions of Quartus in altera_onchip_flash_avmm_data_controller.v, change the "assign flash" line.....
-- See https://www.intel.com/content/www/us/en/programmable/support/support-resources/knowledge-base/solutions/rd10162015_230.html

entity ElectronULA is
    port (
        clk_in      : in  std_logic; -- 16Mhz clock direct from Electron Circuit Board

		  -- osc      : in  std_logic; -- 16Mhz Oscillator on ULA Board
		  
        -- CPU Interface
        
		  clk_out     : out   std_logic;
        addr        : in    std_logic_vector(15 downto 0);
        data        : inout std_logic_vector(7 downto 0);
        RnWIN       : in  std_logic;
		  RnWOUT      : out  std_logic;
		  RnWOE       : out  std_logic;
		  nIRQIN      : in  std_logic;
        nIRQOUT     : out std_logic;
		  nNMI		  : in std_logic;
		  
		  -- Reset
		  nRSTIN		  : in std_logic;
		  nRSTOUT     : out  std_logic;
		  
        -- Video
        red           : out std_logic;
        green         : out std_logic;
        blue          : out std_logic;
        csync         : out std_logic;
		  nhs           : out std_logic;
		  
		  -- ROM
		  ROM_n         : out std_logic;

        -- Audio
        sound         : out std_logic;
		  
        -- Keyboard
        kbd           : in  std_logic_vector(3 downto 0);
        caps          : out std_logic;
        
        -- Cassette
        casIn         : in  std_logic;
        casOut        : out std_logic;
        casMO         : out std_logic;

		  -- Buffer Control
		  
		  -- CPU Address Bus Buffer
		  A_DIR         : out std_logic;
		  A_OE          : out std_logic;
		  
		  -- CPU Data Bus Buffer
		  PD_DIR        : out std_logic;
		  PD_OE         : out std_logic;
		    
		  
		  -- Video and Cassette Buffer
		  G1_OE         : out std_logic;
		  
		  -- Clock Out, ROM, CAPS Buffer
		  G3_OE			 : out std_logic;
		  
		  -- Keyboard, Clock In, nIRQ, RnW, nNMI Buffer
		  G4_OE         : out std_logic
		  		  
        );
end;

architecture behavioral of ElectronULA is

-- Main System Clock
signal clock_16          : std_logic;

-- SAA5050 Clock
signal clock_24          : std_logic;

-- Clock for UFM on MAX10
signal clock_112         : std_logic;							

signal data_in           : std_logic_vector(7 downto 0);

signal ula_enable        : std_logic;
signal ula_data          : std_logic_vector(7 downto 0);
signal ula_irq_n         : std_logic;
signal video_red         : std_logic_vector(3 downto 0);
signal video_green       : std_logic_vector(3 downto 0);
signal video_blue        : std_logic_vector(3 downto 0);
signal video_hsync       : std_logic;
signal video_vsync       : std_logic;
signal rom_latch         : std_logic_vector(3 downto 0);

signal powerup_reset_n   : std_logic;
signal reset_counter     : std_logic_vector (15 downto 0) := (others => '0');

signal turbo             : std_logic_vector(1 downto 0);

signal caps_led          : std_logic;
signal cpu_clk_out       : std_logic;

-- SAA5050 Character ROM signals
signal char_rom_we       : std_logic := '0';
signal char_rom_addr     : std_logic_vector(11 downto 0) := (others => '0');
signal char_rom_data     : std_logic_vector(7 downto 0) := (others => '0');

-- UFM
signal read_requested	 : std_logic;
signal read_valid			 : std_logic;
signal ufm_data			 : std_logic_vector(7 downto 0);

begin

	-- Input clock is 16Mhz
	inst_pll: entity work.Clk16 port map(
		inclk0 => clk_in,
		c0		=> clock_16,
		c1		=> clock_24,
		c2		=> clock_112
	);
	

--------------------------------------------------------
-- Initalise SAA5050 Character ROM
--------------------------------------------------------

	  init_charrom : process(clock_24)
	  begin
			if rising_edge(clock_24) then
				if char_rom_addr /= 4095 then
					if read_valid = '1' then
						char_rom_addr <= char_rom_addr + 1;
						char_rom_data <= ufm_data;
					end if;
					char_rom_we <= '1';
				else
					char_rom_we <= '0';
				end if;
			end if;
	  end process;
	  
	  ufmrom : entity work.ufmrom port map(
		 clock_112 => clock_112,
		 romaddress => char_rom_addr,
		 romdata => ufm_data,
		 romen => '1',
		 reset_n => '1',
		 read_requested => read_requested,
		 read_valid => read_valid
     );

	 
	 
    ula : entity work.ElectronULACore
	 port map (
        clk_16M00 => clock_16,
		  clk_24M00 => clock_24,

        -- CPU Interface
        addr      => addr,
        data_in   => data_in,
        data_out  => ula_data,
        data_en   => ula_enable,
        R_W_n     => RnWIN,
        RST_n     => nRSTIN,
        IRQ_n     => ula_irq_n,
        NMI_n     => nNMI,
		  
        -- Video
        red       => video_red,
        green     => video_green,
        blue      => video_blue,
        vsync     => video_vsync,
        hsync     => video_hsync,
		  
		  -- ROM
		  ROM_n		=> ROM_n,

        -- Audio
        sound     => sound,

        -- Cassette
        casIn     => casIn,
        casOut    => casOut,

        -- Keyboard
        kbd       => kbd,

        -- MISC
        caps      => caps_led,
        motor     => casMO,

        rom_latch => rom_latch,

        mode_init => "00",

        -- Clock Generation
		  cpu_clk_out	  => cpu_clk_out,
        turbo          => turbo,
        turbo_out      => turbo,
		  
		  char_rom_we	  => char_rom_we,
        char_rom_addr  => char_rom_addr,	
        char_rom_data  => char_rom_data

    );

    red   <= video_red(3);
    green <= video_green(3);
    blue  <= video_blue(3);
    csync <= video_hsync;
	 nhs   <= video_hsync;
    caps  <= not caps_led;
    
    -- IRQ is open collector to avoid contention with the expansion bus
    nIRQOUT <= '0' when ula_irq_n = '0' else 'Z';
	 
    data_in <= data;

	 data <= ula_data when RnWIN = '1' and ula_enable = '1' else
		"ZZZZZZZZ";
	
	 clk_out <= cpu_clk_out;
	 
--------------------------------------------------------
-- Buffer Control
--------------------------------------------------------

	  -- CPU Address Bus - Enable buffer and set direction to be driven from external CPU
	  
	  A_OE <= '0';
	  A_DIR <= '1';
	  
	  -- CPU Data Bus - Enable buffer when ULA is being 'read' by CPU. Direction controlled by RnW
	  PD_OE <= '0' when ula_enable = '1' else '1';
	  PD_DIR <= not RnWIN;
 
	  -- Video, Sound and Cassette - Enable Buffer
	  G1_OE <= '0';

	  -- CLK_OUT, ROM and CAPS Lock Control - Enable Buffer
	  G3_OE <= '0';
	  
	  -- Keyboard, CPU and CLK_IN Control - Enable Buffer
	  G4_OE <= '0';
	  
	  -- Only used when internal 6502 is implemented
	  RnWOE <= '1';
	  RnWOUT <= '0';

	  
--------------------------------------------------------
-- Power Up Reset Generation
--------------------------------------------------------

    reset_gen : process(clock_16)
    begin
        if rising_edge(clock_16) then
            if (reset_counter(reset_counter'high) = '0') then
                reset_counter <= reset_counter + 1;
            end if;
            powerup_reset_n <= reset_counter(reset_counter'high);
        end if;
    end process;

    -- Reset is open collector to avoid contention when BREAK pressed
    nRSTOUT <= '0' when powerup_reset_n = '0' else 'Z';

end behavioral;

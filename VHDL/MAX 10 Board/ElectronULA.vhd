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

-- 09/07/2023 - Andy Burgess
-- Board Specific changes to support the ULA Replacement Board V1.05
-- Board version 1.05 includes an SD card and supports MMFS, also has databus inline resistors to reduce noise
-- Added fix for the address bus which was causing crashes in games - Keyboard was causing noise on the address bus


-- Switch Details
	--------------

-- Switch Off = 1, On = 0 as per physical switch legend

-- Switch default 4=on, 3=off, 2=on, 1=off

-- 4321 switch order


-- Video
    
--	xxx0		SVGA 60Hz
-- xxx1		RGB 50Hz Interlaced (default)
-- xx0x		Enable Plus 1 functions - ROMS and 6522 for MMFS (Ensure this is disabled if you have a Plus 1 fitted)
--	xx1x		Disable Plus 1 functions - ROMS and 6522 for MMFS
--
-- CPU Speed
--
-- 00xx		CPU - 1Mhz No Memory Contention
-- 01xx		CPU - 1Mhz/2Mhz Memory Contention in modes 0-3 (Real Electron - Default)
-- 10xx		CPU - 2Mhz No Memory Contention
-- 11xx		CPU - 4Mhz No Memory Contention



library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

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
		  
		  -- External MOS & BASIC ROM
		  ROM_n         : out std_logic;

        -- Audio
        sound         : out std_logic;
		  
        -- Keyboard
        kbd           : in std_logic_vector(3 downto 0);
        caps          : out std_logic;
        
		  -- SD Card
        SDMISO    : in  std_logic;
        SDSS      : out std_logic;
        SDCLK     : out std_logic;
        SDMOSI    : out std_logic;

        -- Cassette
        casIn         : in  std_logic;
        casOut        : out std_logic;
        casMO         : out std_logic;
		  
		  -- Switches
        swc				 : in  std_logic_vector(3 downto 0);

		  --- Buffer Control ---
		  
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

-- VGA 60HZ Clock
signal clock_40          : std_logic;

-- Clock for UFM on MAX10. UFM is used to store ROMS
signal clock_96          : std_logic;

-- CPU signals
signal data_in           : std_logic_vector(7 downto 0);
signal cpu_clk_out       : std_logic;
signal cpu_clken_out     : std_logic;
signal ula_enable        : std_logic;
signal ula_data          : std_logic_vector(7 downto 0);
signal ula_irq_n         : std_logic;
signal phi2					 : std_logic;

-- Video signals
signal video_red         : std_logic_vector(3 downto 0);
signal video_green       : std_logic_vector(3 downto 0);
signal video_blue        : std_logic_vector(3 downto 0);
signal video_hsync       : std_logic;
signal video_vsync       : std_logic;

-- Reset control
signal powerup_reset_n   : std_logic;
signal reset_counter     : std_logic_vector (18 downto 0) := (others => '0');
signal nRST					 : std_logic;

-- Turbo speed control
signal turbo             : std_logic_vector(1 downto 0);

-- LED signal
signal caps_led          : std_logic;

-- Mode selection
signal mode_init         : std_logic_vector(1 downto 0);

begin

	-- Input clock is 16Mhz
	inst_pll : entity work.Clk16 port map(
		inclk0 => clk_in,
		c0		=> clock_16,
		c1		=> clock_24,
		c2		=> clock_40,
		c3		=> clock_96
	);

    ula : entity work.ElectronULACore
	 port map (
        clk_16M00 => clock_16,
		  clk_24M00 => clock_24,
        clk_40M00 => clock_40,
		  clk_96M00 => clock_96,

        -- CPU Interface
        addr	   => addr,
        data_in   => data_in,
        data_out  => ula_data,
        data_en   => ula_enable,
        R_W_n     => RnWIN,
        RST_n     => nRST,
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
		  
		  -- SD Card
        SDMISO		=> SDMISO,
        SDSS		=> SDSS,
        SDCLK		=> SDCLK,
        SDMOSI		=> SDMOSI,

        -- MISC
        caps      => caps_led,
        motor     => casMO,

        mode_init => mode_init,
		  
		  -- Enable/Disable Plus 1 features within the ULA
		  plus1 => swc(1),
		  
        -- Clock Generation
		  cpu_clk_out	  => cpu_clk_out, -- Used for external CPU clock
		  cpu_clken_out  => cpu_clken_out, -- Used for internal CPU clock

		  swc				  => swc,
        turbo          => turbo,
        turbo_out      => turbo
    );

	 -- Initialise video mode based on switch settings - 10 = SVGA, 01 = RGB Interlaced
	 mode_init <= "11" when swc(0) = '0' else "01";
	 
    red   <= video_red(3);
    green <= video_green(3);
    blue  <= video_blue(3);
    csync <= video_hsync and video_vsync;
	 nhs   <= video_hsync;
    caps  <= not caps_led;
	     
    -- nIRQOUT controls the enable signal of an open collector buffer which pulls IRQ low
    nIRQOUT <= ula_irq_n;
	 
	 -- CPU Write
    data_in <= data;

	 -- Create phi2 signal from cpu_clk i.e. delayed by 31ns
	 process(clock_16)
	 begin
		if falling_edge(clock_16) then
			phi2 <= cpu_clk_out;
		end if;
	 end process;
	 
	 -- Databus - Only drive data bus when phi2 is high
	 -- CPU Read
	 data <= ula_data when RnWIN = '1' and ula_enable = '1' and phi2 = '1' else "ZZZZZZZZ";
	
	 clk_out <= cpu_clk_out;
	   
--------------------------------------------------------
-- Buffer Control
--------------------------------------------------------

	 -- CPU Address Bus - Enable buffer and set direction to be driven from external CPU 
	 A_OE <= '0';
	 A_DIR <= '1';
	  
	 -- CPU Data Bus - Enable buffer when ULA is being accessed by the CPU and phi2 is high
	 PD_OE <= '0' when ula_enable = '1' and phi2 = '1' else '1';

	 -- Databus direction controlled by RnW
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

    -- Reset is open collector to avoid contention when BREAK is pressed
    nRSTOUT <= '0' when powerup_reset_n = '0' else 'Z';
	 nRST <= '0' when powerup_reset_n = '0' or nRSTIN = '0' else '1';
	 
	 
end behavioral;

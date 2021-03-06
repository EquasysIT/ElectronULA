library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity ufmrom is
    port (
		clock_72	: in  std_logic;
		romaddress	: in  std_logic_vector(11 downto 0);
		romdata		: out  std_logic_vector(7 downto 0);
		romen			: in std_logic;
		reset_n		: in std_logic;
		read_requested : out std_logic;
		read_valid	: out std_logic
        );
end;

architecture behavioral of ufmrom is

     component ULA_UFM is
        port (
            clock                   : in  std_logic;
            avmm_data_addr          : in  std_logic_vector(15 downto 0);
            avmm_data_read          : in  std_logic;
            avmm_data_readdata      : out std_logic_vector(31 downto 0);
            avmm_data_waitrequest   : out std_logic;
            avmm_data_readdatavalid : out std_logic;
            avmm_data_burstcount    : in  std_logic_vector(1 downto 0) := "01";
            reset_n                 : in  std_logic
        );
     end component ULA_UFM;
	 
	 signal flashen						: std_logic := '0';
    signal romdata32						: std_logic_vector(31 downto 0);
	 signal romdatapos					: std_logic_vector(1 downto 0);
	 signal data_waitrequest			: std_logic;
	 signal data_readdatavalid			: std_logic;
	 signal counta							: std_logic_vector(1 downto 0) := "00";

	 type readflash is ( start, readf );
	 signal state :	readflash := start;
	
begin
	
	 -- Select correct byte from the 32 bit data read from the UFM
	 process(clock_72)
	 begin
		if rising_edge(clock_72) then
			case state is
				when start =>
					flashen <= '0';
					if data_waitrequest = '0' and romen = '1' then
						state <= readf;
					end if;
				when readf =>
					flashen <= '1';
					if data_readdatavalid = '1' then
						romdatapos <= romaddress(1 downto 0);
						case romdatapos is
							when "00" =>
								romdata <= romdata32(7 downto 0);
							when "01" =>
								romdata <= romdata32(15 downto 8);
							when "10" =>
								romdata <= romdata32(23 downto 16);
							when "11" =>
								romdata <= romdata32(31 downto 24);
						end case;
						state <= start;
					end if;
			end case;
		end if;
	 end process;

	 
	 read_requested <= romen;
	 read_valid <= data_readdatavalid;

  
	 -- The UFM is 32bits wide so needs to be divided by 4 for byte addressing
	 -- Address decode for UFM is real address / 4
	 -- If using for MOS & BASIC ROM subtract x2000 as below
	 -- BASIC real address is x8000 / 4 = x2000 - x2000 = x0000 starting address in the UFM
	 -- MOS   real address is xC000 / 4 = x3000 - x2000 = x1000 starting address in the UFM
	 u0 : component ULA_UFM
        port map (
            clock                   => clock_72,
				avmm_data_addr          => "000000" & romaddress(11 downto 2),
            avmm_data_read          => flashen,
            avmm_data_readdata      => romdata32,
            avmm_data_waitrequest   => data_waitrequest,
            avmm_data_readdatavalid => data_readdatavalid,
            avmm_data_burstcount    => "01",
            reset_n                 => reset_n
				);
		
end behavioral;

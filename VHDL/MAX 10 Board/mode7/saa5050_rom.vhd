library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

entity saa5050_rom is
    port(
        clock    : in  std_logic;
        wea      : in  std_logic;
        addressa : in  std_logic_vector(11 downto 0);
        dina     : in  std_logic_vector(7 downto 0);
        qa       : out std_logic_vector(7 downto 0);
        addressb : in  std_logic_vector(11 downto 0);
        qb       : out std_logic_vector(7 downto 0)
  );
end saa5050_rom;

architecture RTL of saa5050_rom is

    type mem_type is array (0 to 4095) of std_logic_vector(7 downto 0);
    shared variable mem : mem_type;

 begin
    process(clock)
    begin
        if (rising_edge(clock)) then
            if wea = '1' then
                mem(to_integer(unsigned(addressa))) := dina;
            end if;
            qa <= mem(to_integer(unsigned(addressa)));
        end if;
    end process;

    process(clock)
    begin
        if (rising_edge(clock)) then
            qb <= mem(to_integer(unsigned(addressb)));
        end if;
    end process;
end RTL;

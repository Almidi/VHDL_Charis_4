
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use std.textio.all;
use ieee.std_logic_textio.all;


	entity CACHE is
			port (
			clk: in std_logic;
			addr: in std_logic_vector(4 downto 0);
			dout: out std_logic_vector(131 downto 0)
			);
	end CACHE;

architecture syn of CACHE is

type rom_type is array (31 downto 0) of std_logic_vector (131 downto 0);

impure function InitRomFromFile (RomFileName : in string) return rom_type is

FILE romfile : text is in RomFileName;
variable RomFileLine : line;
variable rom : rom_type;

begin
	for i in 0 to 31 loop
		readline(romfile, RomFileLine);
		read (RomFileLine, rom(i));
	end loop;
return rom;
end function;

signal ROM : rom_type := InitRomFromFile("cache.data");

begin
dout <= ROM(conv_integer(addr)) ;

--	process (clk)
--	begin
--		if clk'event and clk = '1' then
--			dout <= ROM(conv_integer(addr)) ;
--		end if;
--	end process;
end syn;

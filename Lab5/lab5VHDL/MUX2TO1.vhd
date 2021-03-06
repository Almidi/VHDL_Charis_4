library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX2TO1 is
    Port ( In0 : in  STD_LOGIC_VECTOR (31 downto 0);
           In1 : in  STD_LOGIC_VECTOR (31 downto 0);
           S : in  STD_LOGIC;
           Output : out  STD_LOGIC_VECTOR (31 downto 0));
end MUX2TO1;

architecture Behavioral of MUX2TO1 is

begin
	with S select 
		Output <= In0 when '0',
					 In1 when others;

end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX2X1_5B is
    Port ( In0 : in  STD_LOGIC_VECTOR (4 downto 0);
           In1 : in  STD_LOGIC_VECTOR (4 downto 0);
           S : in  STD_LOGIC;
           Output : out  STD_LOGIC_VECTOR (4 downto 0));
end MUX2X1_5B;

architecture Behavioral of MUX2X1_5B is

begin
	with S select 
		Output <= In0 when '0',
					 In1 when others;

end Behavioral;

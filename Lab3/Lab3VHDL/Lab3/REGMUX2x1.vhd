
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PC_Mux is
    Port ( In0 : in  STD_LOGIC_VECTOR (9 downto 0);
           In1 : in  STD_LOGIC_VECTOR (9 downto 0);
           S : in  STD_LOGIC;
           Output : out  STD_LOGIC_VECTOR (9 downto 0));
end PC_Mux;

architecture Behavioral of PC_Mux is

begin
	with S select 
		Output <= In0 when '0',
					 In1 when others;

end Behavioral;

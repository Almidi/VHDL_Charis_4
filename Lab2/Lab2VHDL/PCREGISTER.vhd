----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PC is
    Port ( DataIn : in  STD_LOGIC_VECTOR (9 downto 0);
           Clk : in  STD_LOGIC;
           DataOut : out  STD_LOGIC_VECTOR (9 downto 0);
           WrEn : in  STD_LOGIC;
			  Rst : in STD_LOGIC);
end PC;

architecture Behavioral of PC is

SIGNAL tempOUT: std_logic_vector(9 downto 0) ;

begin
-- AUTO-INITIALIZATION !
 process1: process
	begin
		wait until Clk'Event And Clk='1';
		if (WrEn='1') then
			tempOUT<=DataIn;
		end if;
		if(Rst='1') then 
			tempOut<="0000000000";
	end if;
	DataOut<= tempOUT;
 end process;

end Behavioral;



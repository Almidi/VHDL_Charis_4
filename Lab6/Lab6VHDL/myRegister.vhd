----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MYREGISTER is
    Port ( DataIn : in  STD_LOGIC_VECTOR (31 downto 0);
           Clk : in  STD_LOGIC;
           DataOut : out  STD_LOGIC_VECTOR (31 downto 0);
           WrEn : in  STD_LOGIC;
			  RST : IN STD_LOGIC);
end MYREGISTER;

architecture Behavioral of MYREGISTER is

SIGNAL tempOUT: std_logic_vector(31 downto 0) ;--:= "00000000000000000000000000000000";

begin
-- AUTO-INITIALIZATION !
 process1: process
	begin
		wait until Clk'Event And Clk='1';
		if (WrEn='1') then
			tempOUT<=DataIn;
		end if;
		if(Rst='1') then 
			tempOut<="00000000000000000000000000000000";
	   end if;
 end process;
 
 DataOut<= tempOUT;

end Behavioral;



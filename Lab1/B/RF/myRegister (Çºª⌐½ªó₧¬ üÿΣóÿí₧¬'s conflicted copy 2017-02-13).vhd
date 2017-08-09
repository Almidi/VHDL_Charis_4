----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity myRegister is
    Port ( DataIn : in  STD_LOGIC_VECTOR (31 downto 0);
           Clk : in  STD_LOGIC;
           DataOut : out  STD_LOGIC_VECTOR (31 downto 0);
           WrEn : in  STD_LOGIC);
end myRegister;

architecture Behavioral of myRegister is

SIGNAL MID : std_logic_vector(31 downto 0) := "00000000000000000000000000000000" ;

begin
-- NO AUTO-INITIALIZATION !
 process1: process
	begin
		wait until Clk'Event And Clk='1';
		if (WrEn='1') then
			MID<=DataIn;
		end if;
	dataout <= mid;
 end process;

end Behavioral;



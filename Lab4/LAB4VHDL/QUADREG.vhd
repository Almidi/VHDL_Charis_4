----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:56:57 03/24/2017 
-- Design Name: 
-- Module Name:    QUADREG - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity QUADREG is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           WEN : in  STD_LOGIC_VECTOR (4 downto 0);
           DIN : in  STD_LOGIC_VECTOR (31 downto 0);
           DOUT : out  STD_LOGIC_VECTOR (31 downto 0));
end QUADREG;

architecture Behavioral of QUADREG is

SIGNAL tempOUT: std_logic_vector(31 downto 0) ;

begin

 process1: process
	begin
		wait until Clk'Event And Clk='1';
		
		if (WEN(0)='1') then
			tempOUT <=DIN ;
			end if;
		if (WEN(1)='1') then
			tempOUT(7 downto 0) <=DIN (7 downto 0) ;
			end if;
		if (WEN(2)='1') then
			tempOUT(15 downto 8) <=DIN (7 downto 0) ;	
			end if;
		if (WEN(3)='1') then
			tempOUT(23 downto 16) <=DIN (7 downto 0) ;	
			end if;
		if (WEN(4)='1') then
			tempOUT(31 downto 24) <=DIN (7 downto 0) ;	
		   end if;
		if(Rst='1') then 
			tempOut<="00000000000000000000000000000000";
	   end if;
 end process;
 
 DOUT<= tempOUT;



end Behavioral;


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:52:57 02/12/2017 
-- Design Name: 
-- Module Name:    MUX2x1 - Behavioral 
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

entity MUX2x1 is
    Port ( In0 : in  STD_LOGIC_VECTOR (31 downto 0);
           In1 : in  STD_LOGIC_VECTOR (31 downto 0);
           S : in  STD_LOGIC;
           Output : out  STD_LOGIC_VECTOR (31 downto 0));
end MUX2x1;

architecture Behavioral of MUX2x1 is

begin
	with S select 
		Output <= In0 when '0',
					 In1 when others;

end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:52:04 02/11/2017 
-- Design Name: 
-- Module Name:    ROTR - Behavioral 
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
use IEEE.STD_LOGIC_1164.ALL;



entity ROTR is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           O : out  STD_LOGIC_VECTOR (31 downto 0));
end ROTR;

architecture Behavioral of ROTR is

begin

O <= A(0) & A(31 downto 1); 
 
end Behavioral;


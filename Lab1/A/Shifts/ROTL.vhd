----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:47:42 02/11/2017 
-- Design Name: 
-- Module Name:    af - Behavioral 
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



entity ROTL is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           O : out  STD_LOGIC_VECTOR (31 downto 0));
end ROTL;

architecture Behavioral of ROTL is

begin

O <=  A(30 downto 0) & A(31);
 
end Behavioral;
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:44:55 02/11/2017 
-- Design Name: 
-- Module Name:    ad - Behavioral 
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
----------------------------------------------------------------------------------library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity SLLO is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           O : out  STD_LOGIC_VECTOR (31 downto 0));
end SLLO;

architecture Behavioral of SLLO is

begin

O <=  A(30 downto 0) & '0';
 
end Behavioral;
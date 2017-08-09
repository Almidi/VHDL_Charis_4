----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:39:05 02/11/2017 
-- Design Name: 
-- Module Name:    SRA - Behavioral 
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
use IEEE.STD_LOGIC_SIGNED.ALL;
use ieee.std_logic_arith.all;
use IEEE.NUMERIC_BIT;
use IEEE.NUMERIC_STD.all; 



entity SRAO is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           O : out  STD_LOGIC_VECTOR (31 downto 0));
end SRAO;

architecture Behavioral of SRAO is

begin

O <=  A(31) & A(31 downto 1);

end Behavioral;


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:49:23 02/12/2017 
-- Design Name: 
-- Module Name:    MUX32x1 - Behavioral 
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

entity MUX32X1 is
    Port (	In0 : in  STD_LOGIC_VECTOR (31 downto 0);
				In1 : in  STD_LOGIC_VECTOR (31 downto 0);
				In2 : in  STD_LOGIC_VECTOR (31 downto 0);
				In3 : in  STD_LOGIC_VECTOR (31 downto 0);
				In4 : in  STD_LOGIC_VECTOR (31 downto 0);
				In5 : in  STD_LOGIC_VECTOR (31 downto 0);
				In6 : in  STD_LOGIC_VECTOR (31 downto 0);
				In7 : in  STD_LOGIC_VECTOR (31 downto 0);
				In8 : in  STD_LOGIC_VECTOR (31 downto 0);
				In9 : in  STD_LOGIC_VECTOR (31 downto 0);
				In10 : in  STD_LOGIC_VECTOR (31 downto 0);
				In11 : in  STD_LOGIC_VECTOR (31 downto 0);
				In12 : in  STD_LOGIC_VECTOR (31 downto 0);
				In13 : in  STD_LOGIC_VECTOR (31 downto 0);
				In14 : in  STD_LOGIC_VECTOR (31 downto 0);
				In15 : in  STD_LOGIC_VECTOR (31 downto 0);
				In16 : in  STD_LOGIC_VECTOR (31 downto 0);
				In17 : in  STD_LOGIC_VECTOR (31 downto 0);
				In18 : in  STD_LOGIC_VECTOR (31 downto 0);
				In19 : in  STD_LOGIC_VECTOR (31 downto 0);
				In20 : in  STD_LOGIC_VECTOR (31 downto 0);
				In21 : in  STD_LOGIC_VECTOR (31 downto 0);
				In22 : in  STD_LOGIC_VECTOR (31 downto 0);
				In23 : in  STD_LOGIC_VECTOR (31 downto 0);
				In24 : in  STD_LOGIC_VECTOR (31 downto 0);
				In25 : in  STD_LOGIC_VECTOR (31 downto 0);
				In26 : in  STD_LOGIC_VECTOR (31 downto 0);
				In27 : in  STD_LOGIC_VECTOR (31 downto 0);
				In28 : in  STD_LOGIC_VECTOR (31 downto 0);
				In29 : in  STD_LOGIC_VECTOR (31 downto 0);
				In30 : in  STD_LOGIC_VECTOR (31 downto 0);
				In31 : in  STD_LOGIC_VECTOR (31 downto 0);
				S : in  STD_LOGIC_VECTOR (4 downto 0);
				Output : out  STD_LOGIC_VECTOR (31 downto 0));
end MUX32x1;

architecture Behavioral of MUX32x1 is

begin
	with S select
		output <= In0 when "00000",
					In1 when "00001",
					In2 when "00010",
					In3 when "00011",
					In4 when "00100",
					In5 when "00101",
					In6 when "00110",
					In7 when "00111",
					In8 when "01000",
					In9 when "01001",
					In10 when "01010",
					In11 when "01011",
					In12 when "01100",
					In13 when "01101",
					In14 when "01110",
					In15 when "01111",
					In16 when "10000",
					In17 when "10001",
					In18 when "10010",
					In19 when "10011",
					In20 when "10100",
					In21 when "10101",
					In22 when "10110",
					In23 when "10111",
					In24 when "11000",
					In25 when "11001",
					In26 when "11010",
					In27 when "11011",
					In28 when "11100",
					In29 when "11101",
					In30 when "11110",
					In31 when others;
					
					
end Behavioral;

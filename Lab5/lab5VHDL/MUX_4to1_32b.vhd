library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_4to1_32b is
    Port ( DIN_A : in  STD_LOGIC_VECTOR (31 downto 0);
           DIN_B : in  STD_LOGIC_VECTOR (31 downto 0);
           DIN_C : in  STD_LOGIC_VECTOR (31 downto 0);
           DIN_D : in  STD_LOGIC_VECTOR (31 downto 0);
           DOUT : out  STD_LOGIC_VECTOR (31 downto 0);
           CNTRL : in  STD_LOGIC_VECTOR (1 downto 0));
end MUX_4to1_32b;

architecture Behavioral of MUX_4to1_32b is

begin

WITH CNTRL SELECT
	DOUT <= 	DIN_A WHEN "00",
				DIN_B WHEN "01",
				DIN_C WHEN "10",
				DIN_D WHEN OTHERS; -- "11"


end Behavioral;



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity UNPACKER is
    Port ( DIN : in  STD_LOGIC_VECTOR (31 downto 0);
           DOUT : out  STD_LOGIC_VECTOR (31 downto 0);
           CONTROL : in  STD_LOGIC_VECTOR (3 downto 0));
end UNPACKER;

architecture Behavioral of UNPACKER is
SIGNAL SIGNEXTEND : STD_LOGIC_VECTOR (23 downto 0);
SIGNAL I_DOUT : STD_LOGIC_VECTOR (31 downto 0);


begin

with DIN(7) select
	SIGNEXTEND <= "000000000000000000000000" when '0',
					  "111111111111111111111111" when others;


WITH CONTROL SELECT
	I_DOUT <= DIN when "0000",
				 SIGNEXTEND & DIN (7  DOWNTO  0) when "0001",
				 SIGNEXTEND & DIN (15 DOWNTO  8) when "0010",
				 SIGNEXTEND & DIN (23 DOWNTO 16) when "0100",
				 SIGNEXTEND & DIN (31 DOWNTO 24) when "1000";
	
	DOUT <= I_DOUT ;

end Behavioral;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FWD_CNTRL is
    Port ( ALU_RF_A_ADDR : in  STD_LOGIC_VECTOR (4 downto 0);
           ALU_RF_B_ADDR : in  STD_LOGIC_VECTOR (4 downto 0);
           RF_WR_A_1 : in  STD_LOGIC_VECTOR (4 downto 0);
           RF_WR_A_2 : in  STD_LOGIC_VECTOR (4 downto 0);
           RF_WR_EN_1 : in  STD_LOGIC;
           RF_WR_EN_2 : in  STD_LOGIC;
           CNTRL_A : out  STD_LOGIC_VECTOR (1 downto 0);
           CNTRL_B : out  STD_LOGIC_VECTOR (1 downto 0));
end FWD_CNTRL;

architecture Behavioral of FWD_CNTRL is

begin

PROCESS(ALU_RF_A_ADDR, ALU_RF_B_ADDR, RF_WR_A_1, RF_WR_A_2, RF_WR_EN_1, RF_WR_EN_2) BEGIN

----ALU RF_A INPUT---------------------------------------------------

	IF (ALU_RF_A_ADDR = RF_WR_A_1 AND RF_WR_EN_1 = '1') THEN
		CNTRL_A <= "01";
	ELSIF (ALU_RF_A_ADDR = RF_WR_A_2 AND RF_WR_EN_2 = '1') THEN
		CNTRL_A<= "10";
	ELSE 
		CNTRL_A <= "00";
	END IF;
	
----ALU RF_B INPUT---------------------------------------------------

	IF (ALU_RF_B_ADDR = RF_WR_A_1 AND RF_WR_EN_1 = '1') THEN
		CNTRL_B <= "01";
	ELSIF (ALU_RF_B_ADDR = RF_WR_A_2 AND RF_WR_EN_2 = '1') THEN
		CNTRL_B<= "10";
	ELSE 
		CNTRL_B <= "00";
	END IF;

END PROCESS;

end Behavioral;


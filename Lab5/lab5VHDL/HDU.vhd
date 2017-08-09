library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HDU is
    Port ( RF_WR_ADDR : in  STD_LOGIC_VECTOR (4 downto 0);
           RF_WRDATA_SEL : in  STD_LOGIC;
			  RF_A_ADDR : in  STD_LOGIC_VECTOR (4 downto 0);
			  RF_B_ADDR : in  STD_LOGIC_VECTOR (4 downto 0);
           PC_LD_EN : out  STD_LOGIC;
           NOP : out  STD_LOGIC);
end HDU;

architecture Behavioral of HDU is

begin



	PROCESS (RF_A_ADDR, RF_B_ADDR, RF_WR_ADDR, RF_WRDATA_SEL) BEGIN
	
		IF ((RF_WR_ADDR = RF_A_ADDR OR RF_WR_ADDR = RF_B_ADDR) AND RF_WRDATA_SEL='1') THEN
			PC_LD_EN <= '0' ;
			NOP		<= '1' ;
		ELSE 
			PC_LD_EN <= '1' ;
			NOP		<= '0' ;
		END IF ;
	END PROCESS ;



end Behavioral;


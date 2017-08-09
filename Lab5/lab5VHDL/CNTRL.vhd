library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity CNTRL is
    Port ( INSTR : in  STD_LOGIC_VECTOR (31 downto 0);
           ALU_FUNC : out  STD_LOGIC_VECTOR (3 downto 0);
			  RF_B_SEL : out  STD_LOGIC;
           RF_WRDATA_SEL : out  STD_LOGIC;
			  RF_WREN : out  STD_LOGIC;
			  ALU_BIN_SEL : out  STD_LOGIC;
			  TEMP_REG_WR : out  STD_LOGIC;
			  W_B_SEL : out  STD_LOGIC;
			  MEM_WREN : out  STD_LOGIC;
			  NOP : in STD_LOGIC
			  );
end CNTRL;

architecture Behavioral of CNTRL is

SIGNAL INT_MEM_WREN			: STD_LOGIC;
SIGNAL INT_ALU_BIN_SEL		: STD_LOGIC;
SIGNAL INT_RF_WREN			: STD_LOGIC;
SIGNAL INT_RF_WRDATA_SEL	: STD_LOGIC;
SIGNAL INT_RF_B_SEL			: STD_LOGIC;

begin

	WITH INSTR(31 downto 26) SELECT
		ALU_FUNC <= 	"1111"	WHEN "111000", -- LI
							"0000"	WHEN "001111", -- LW
							"0000"	WHEN "011111", -- SW
							"0000"	WHEN "100000", -- ADD
							"0000"	WHEN OTHERS  ; 


	WITH INSTR(31 downto 26) SELECT
		INT_RF_B_SEL <= 		'1'	WHEN "111000", -- LI
									'1'	WHEN "001111", -- LW
									'1'	WHEN "011111", -- SW
									'0'	WHEN "100000", -- ADD
									'0'	WHEN OTHERS  ; 
							
	WITH INSTR(31 downto 26) SELECT
		INT_RF_WRDATA_SEL <= '0'	WHEN "111000", -- LI
									'1'	WHEN "001111", -- LW
									'0'	WHEN "011111", -- SW
									'0'	WHEN "100000", -- ADD
									'0'	WHEN OTHERS  ; 
							
							
	WITH INSTR(31 downto 26) SELECT
		INT_RF_WREN <= 	'1'	WHEN "111000", -- LI
								'1'	WHEN "001111", -- LW
								'0'	WHEN "011111", -- SW
								'1'	WHEN "100000", -- ADD
								'1'	WHEN OTHERS  ; 
							
	WITH INSTR(31 downto 26) SELECT
		INT_ALU_BIN_SEL <= 	'1'	WHEN "111000", -- LI
									'1'	WHEN "001111", -- LW
									'1'	WHEN "011111", -- SW
									'0'	WHEN "100000", -- ADD
									'0'	WHEN OTHERS  ; 
							
	WITH INSTR(31 downto 26) SELECT ---------------------------------- TRASH
		TEMP_REG_WR <= 	'1'	WHEN "111000", -- LI
								'1'	WHEN "001111", -- LW
								'1'	WHEN "011111", -- SW
								'1'	WHEN "100000", -- ADD
								'1'	WHEN OTHERS  ; 
							
	WITH INSTR(31 downto 26) SELECT ---------------------------------- UNUSED
		W_B_SEL <= 			'1'	WHEN "111000", -- LI
								'1'	WHEN "001111", -- LW
								'1'	WHEN "011111", -- SW
								'1'	WHEN "100000", -- ADD
								'1'	WHEN OTHERS  ; 
							
	WITH INSTR(31 downto 26) SELECT
		INT_MEM_WREN <= 	'0'	WHEN "111000", -- LI
								'0'	WHEN "001111", -- LW
								'1'	WHEN "011111", -- SW
								'0'	WHEN "100000", -- ADD
								'0'	WHEN OTHERS  ; 
							
							
	--------------NOP BEHAVIOUR--------------------------
	
	MEM_WREN 		<=	INT_MEM_WREN			;--AND (NOT NOP);			
	ALU_BIN_SEL 	<=	INT_ALU_BIN_SEL		;--AND (NOT NOP);		
	RF_WREN 			<=	INT_RF_WREN				;--AND (NOT NOP);		
	RF_WRDATA_SEL 	<=	INT_RF_WRDATA_SEL		;--AND (NOT NOP);		
	RF_B_SEL 		<=	INT_RF_B_SEL			;--AND (NOT NOP);		


end Behavioral;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use ieee.std_logic_arith.all;



entity CNTRL is
    Port ( CLK					: in  STD_LOGIC;
			  RST					: in  STD_LOGIC;
			  
			  INSTR 				: in  STD_LOGIC_VECTOR (31 downto 0);
           ALU_FUNC 			: out STD_LOGIC_VECTOR (3 downto 0);
			  RF_B_SEL 			: out STD_LOGIC;
           RF_WRDATA_SEL 	: out STD_LOGIC;
			  RF_WREN 			: out STD_LOGIC;
			  ALU_BIN_SEL 		: out STD_LOGIC;
			  TEMP_REG_WR 		: out STD_LOGIC;
			  W_B_SEL 			: out STD_LOGIC;
			  MEM_WREN 			: out STD_LOGIC;
			  
			  PC_IN 				: in  STD_LOGIC_VECTOR (9 downto 0);
			  RF_A 				: in  STD_LOGIC_VECTOR (31 downto 0);
			  EPC 				: out STD_LOGIC_VECTOR (9 downto 0);
			  EPC_EN 			: out STD_LOGIC;
			  EX 					: out STD_LOGIC;
			  EXSEL 				: out STD_LOGIC;
			  MEM_F				: out STD_LOGIC
			  
			  );
end CNTRL;

architecture Behavioral of CNTRL is

component PC is
    Port ( Clk : in  STD_LOGIC;
           DataIn : in  STD_LOGIC_VECTOR (9 downto 0);
           DataOut : out  STD_LOGIC_VECTOR (9 downto 0);
			  WrEn : in  STD_LOGIC;
			  Rst : in STD_LOGIC);
end component;


SIGNAL IBUS : STD_LOGIC;

SIGNAL MEMFUNC : STD_LOGIC;
SIGNAL MEMOVF  : STD_LOGIC;
SIGNAL ADDRL 	: STD_LOGIC;


SIGNAL EXREG_WREN : STD_LOGIC;
SIGNAL COUSE_REG : STD_LOGIC_VECTOR (9 downto 0);
SIGNAL COUSE_REG_OUT : STD_LOGIC_VECTOR (9 downto 0);

SIGNAL MEMADDR : STD_LOGIC_VECTOR (31 downto 0);

SIGNAL INT_MEM_WREN : STD_LOGIC;

SIGNAL INT_RF_WREN  : STD_LOGIC;


begin


EPCREG 	: PC PORT MAP ( 
			   Clk =>CLK,
            DataIn =>PC_IN,
            DataOut =>EPC,
			   WrEn =>EXREG_WREN,
			   Rst =>RST
			   );
				
CR 		: PC PORT MAP ( 
			   Clk =>CLK,
            DataIn =>COUSE_REG,
            DataOut =>COUSE_REG_OUT,
			   WrEn =>EXREG_WREN,
			   Rst =>RST
			   );



	WITH INSTR(31 downto 26) SELECT
		ALU_FUNC <= 	"1111"	WHEN "111000", -- LI
							"0000"	WHEN "001111", -- LW
							"0000"	WHEN "011111", -- SW
							"0000"	WHEN "100000", -- ADD
							"0000"	WHEN OTHERS  ; 


	WITH INSTR(31 downto 26) SELECT
		RF_B_SEL <= 		'1'	WHEN "111000", -- LI
								'1'	WHEN "001111", -- LW
								'1'	WHEN "011111", -- SW
								'0'	WHEN "100000", -- ADD
								'0'	WHEN OTHERS  ; 
							
	WITH INSTR(31 downto 26) SELECT
		RF_WRDATA_SEL <= 	'0'	WHEN "111000", -- LI
								'1'	WHEN "001111", -- LW
								'1'	WHEN "011111", -- SW
								'0'	WHEN "100000", -- ADD
								'0'	WHEN OTHERS  ; 
							
							
	WITH INSTR(31 downto 26) SELECT
		INT_RF_WREN <= 	'1'	WHEN "111000", -- LI
								'1'	WHEN "001111", -- LW
								'0'	WHEN "011111", -- SW
								'1'	WHEN "100000", -- ADD
								'0'	WHEN OTHERS  ; 
							
	WITH INSTR(31 downto 26) SELECT
		ALU_BIN_SEL <= 	'1'	WHEN "111000", -- LI
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
								
	-----------------EXCEPTIONS---------------------------------------


	WITH INSTR(31 downto 26) SELECT
		IBUS <= 		'0'		WHEN "111000", -- LI
						'0'		WHEN "001111", -- LW
						'0'		WHEN "101010", -- JUMP_EPC
						'0'		WHEN "100000", -- ADD
						'0'		WHEN "000000", -- NOP
						'1'		WHEN OTHERS  ; 
						
	WITH INSTR(31 downto 26) SELECT
		MEMFUNC <=	'1'		WHEN "001111", -- LW
						'0'		WHEN OTHERS  ; 
						
	WITH MEMADDR(31 downto 12) SELECT
		MEMOVF <= 	'0'		WHEN "00000000000000000000", -- IMMED (15 downto 12)
						'1'		WHEN OTHERS  ; 
							
	WITH INSTR(31 downto 26) SELECT
		EPC_EN <= 	'1'		WHEN "101010", -- JUMP_EPC
						'0'		WHEN OTHERS  ; 
						
	WITH ADDRL					 SELECT
		COUSE_REG <= 	"0000001111"	WHEN '0',      -- IBUS
							"0011110000"	WHEN OTHERS  ; -- ADDRL
						
	
	MEMADDR <= RF_A + INSTR(15 downto 0);
	
	ADDRL <= MEMOVF AND MEMFUNC;
	
	EX <= IBUS OR ADDRL  ;
	EXSEL <= ADDRL ;
	EXREG_WREN <= IBUS OR ADDRL ;
	
	MEM_F <= MEMFUNC;
	MEM_WREN <= INT_MEM_WREN AND (NOT EXREG_WREN);
	RF_WREN <= INT_RF_WREN AND (NOT EXREG_WREN);
	

end Behavioral;


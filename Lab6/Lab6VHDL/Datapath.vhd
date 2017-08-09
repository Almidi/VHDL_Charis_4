library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity Datapath is PORT (  Clk : in STD_LOGIC;
									Rst : in STD_LOGIC;
									M_FLAG :OUT STD_LOGIC
									);		
end Datapath;

architecture Behavioral of Datapath is

--------------------------------------------------------COMPONENTS-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

COMPONENT ALUSTAGE is Port ( 
            Clk : in STD_LOGIC;
				Rst : in STD_LOGIC;
				RF_A : in  STD_LOGIC_VECTOR (31 downto 0);
            RF_B : in  STD_LOGIC_VECTOR (31 downto 0);
            IMMED : in  STD_LOGIC_VECTOR (31 downto 0);
            ALU_BIN_SEL : in  STD_LOGIC;
            ALU_FUNC : in  STD_LOGIC_VECTOR (3 downto 0);
            ALU_OUT : out  STD_LOGIC_VECTOR (31 downto 0);
				Temp_REG_Wr : IN STD_LOGIC
				);
end COMPONENT;


COMPONENT DECSTAGE is Port ( 
			  Instr : in  STD_LOGIC_VECTOR (31 downto 0);
			  RF_WrEn : in  STD_LOGIC;
			  ALU_out : in  STD_LOGIC_VECTOR (31 downto 0);
			  MEM_out : in  STD_LOGIC_VECTOR (31 downto 0);
			  RF_WrData_sel : in  STD_LOGIC;
			  RF_WR_ADDR: in  STD_LOGIC_VECTOR (4 downto 0);
			  RF_B_sel : in  STD_LOGIC;
			  Clk : in  STD_LOGIC;
			  Immed : out  STD_LOGIC_VECTOR (31 downto 0);
			  RF_A : out  STD_LOGIC_VECTOR (31 downto 0);
			  RF_B : out  STD_LOGIC_VECTOR (31 downto 0);
			  RST : IN STD_LOGIC);
end COMPONENT;

COMPONENT IFSTAGE is
    Port ( PC_Immed 	: in  STD_LOGIC_VECTOR (31 downto 0);
           PC_sel 	: in  STD_LOGIC;
           PC_LdEn 	: in  STD_LOGIC;
           Reset 		: in  STD_LOGIC;
           Clk 		: in  STD_LOGIC;
			  
			  EPC			: IN STD_LOGIC_VECTOR (9 downto 0);
			  EPC_EN 	: in  STD_LOGIC;
			  EX     	: in  STD_LOGIC;
			  EX_SEL 	: in  STD_LOGIC;
			  
			  PC_OUT 	: OUT STD_LOGIC_VECTOR (9 downto 0);
           Instr 		: out  STD_LOGIC_VECTOR (31 downto 0));
end COMPONENT;

COMPONENT MEMSTAGE is Port (
			  Clk 			: in  STD_LOGIC;
           Mem_WrEn 		: in  STD_LOGIC;
           ALU_MEM_Addr : in  STD_LOGIC_VECTOR (31 downto 0);
           MEM_DataIn 	: in  STD_LOGIC_VECTOR (31 downto 0);
           MEM_DataOut 	: out  STD_LOGIC_VECTOR (31 downto 0);
			  W_B_SEL 		: in  STD_LOGIC);	 
end COMPONENT;

COMPONENT CACHE_STAGE is port (
			clk: in std_logic;
			addr: in std_logic_vector(31 downto 0);
			dout: out std_logic_vector(31 downto 0);
			MISS: out std_logic
			);
end COMPONENT;


COMPONENT CNTRL is
    Port ( CLK					: in  STD_LOGIC;
			  RST					: in  STD_LOGIC;
	 
			  INSTR 				: in  STD_LOGIC_VECTOR (31 downto 0);
           ALU_FUNC 			: out  STD_LOGIC_VECTOR (3 downto 0);
			  RF_B_SEL 			: out  STD_LOGIC;
           RF_WRDATA_SEL 	: out  STD_LOGIC;
			  RF_WREN 			: out  STD_LOGIC;
			  ALU_BIN_SEL 		: out  STD_LOGIC;
			  TEMP_REG_WR 		: out  STD_LOGIC;
			  W_B_SEL 			: out  STD_LOGIC;
			  MEM_WREN 			: out  STD_LOGIC;
			  
			  RF_A 				: in  STD_LOGIC_VECTOR (31 downto 0);
			  PC_IN 				: in  STD_LOGIC_VECTOR (9 downto 0);
			  EPC 				: out STD_LOGIC_VECTOR (9 downto 0);
			  EPC_EN 			: out STD_LOGIC;
			  EX 					: out STD_LOGIC;
			  EXSEL 				: out STD_LOGIC;
			  MEM_F				: out STD_LOGIC
			  );
end COMPONENT;


COMPONENT MEM_WB is
Port ( 	CLK : in  STD_LOGIC;
			RST : in  STD_LOGIC;
 
			ALU_DATA 			: in  STD_LOGIC_VECTOR (31 downto 0);
			RF_WRDATA_SEL 		: in  STD_LOGIC;
			RF_WREN 				: in  STD_LOGIC;
			RF_A 					: in  STD_LOGIC_VECTOR (31 downto 0);
			RF_B 					: in  STD_LOGIC_VECTOR (31 downto 0);
			IMMED 				: in  STD_LOGIC_VECTOR (31 downto 0);
			RF_WR_ADDR 			: in  STD_LOGIC_VECTOR (4 downto 0);
			MEM_DATA				: in  STD_LOGIC_VECTOR (31 downto 0);
		  
			ALU_DATA_O 			: OUT  STD_LOGIC_VECTOR (31 downto 0);
			RF_WRDATA_SEL_O 	: OUT  STD_LOGIC;
			RF_WREN_O 			: OUT  STD_LOGIC;
			RF_A_O 				: OUT  STD_LOGIC_VECTOR (31 downto 0);
			RF_B_O 				: OUT  STD_LOGIC_VECTOR (31 downto 0);
			IMMED_O 				: OUT  STD_LOGIC_VECTOR (31 downto 0);
			RF_WR_ADDR_O 		: OUT  STD_LOGIC_VECTOR (4 downto 0);
			MEM_DATA_O			: OUT  STD_LOGIC_VECTOR (31 downto 0)
			);
end COMPONENT;

COMPONENT MEM_INTER is
Port ( 	CLK : in  STD_LOGIC;
			RST : in  STD_LOGIC;
 
			ALU_DATA 			: in  STD_LOGIC_VECTOR (31 downto 0);
			RF_WRDATA_SEL 		: in  STD_LOGIC;
			RF_WREN 				: in  STD_LOGIC;
			RF_A 					: in  STD_LOGIC_VECTOR (31 downto 0);
			RF_B 					: in  STD_LOGIC_VECTOR (31 downto 0);
			IMMED 				: in  STD_LOGIC_VECTOR (31 downto 0);
			RF_WR_ADDR 			: in  STD_LOGIC_VECTOR (4 downto 0);
			CACHE_DATA 			: in  STD_LOGIC_VECTOR (31 downto 0);
			MISS					: in  STD_LOGIC;
			MEM_F					: in  STD_LOGIC;
		  
			ALU_DATA_O 			: OUT  STD_LOGIC_VECTOR (31 downto 0);
			RF_WRDATA_SEL_O 	: OUT  STD_LOGIC;
			RF_WREN_O 			: OUT  STD_LOGIC;
			RF_A_O 				: OUT  STD_LOGIC_VECTOR (31 downto 0);
			RF_B_O 				: OUT  STD_LOGIC_VECTOR (31 downto 0);
			IMMED_O 				: OUT  STD_LOGIC_VECTOR (31 downto 0);
			RF_WR_ADDR_O 		: OUT  STD_LOGIC_VECTOR (4 downto 0);
			CACHE_DATA_O 		: OUT  STD_LOGIC_VECTOR (31 downto 0);
			MISS_O				: OUT	 STD_LOGIC;
			MEM_F_O				: OUT	 STD_LOGIC
			);
end COMPONENT;

COMPONENT EX_MEM is
Port ( 	CLK : in  STD_LOGIC;
			RST : in  STD_LOGIC;
 
			ALU_DATA 			: in  STD_LOGIC_VECTOR (31 downto 0);
			RF_WRDATA_SEL 		: in  STD_LOGIC;
			RF_WREN 				: in  STD_LOGIC;
			W_B_SEL 				: in  STD_LOGIC;
			MEM_WREN 			: in  STD_LOGIC;
			RF_A 					: in  STD_LOGIC_VECTOR (31 downto 0);
			RF_B 					: in  STD_LOGIC_VECTOR (31 downto 0);
			IMMED 				: in  STD_LOGIC_VECTOR (31 downto 0);
			RF_WR_ADDR 			: in  STD_LOGIC_VECTOR (4 downto 0);
			MEM_F					: in  STD_LOGIC;
		  
			ALU_DATA_O 			: OUT  STD_LOGIC_VECTOR (31 downto 0);
			RF_WRDATA_SEL_O 	: OUT  STD_LOGIC;
			RF_WREN_O 			: OUT  STD_LOGIC;
			TEMP_REG_WR_O 		: OUT  STD_LOGIC;
			W_B_SEL_O 			: OUT  STD_LOGIC;
			MEM_WREN_O 			: OUT  STD_LOGIC;
			RF_A_O 				: OUT  STD_LOGIC_VECTOR (31 downto 0);
			RF_B_O 				: OUT  STD_LOGIC_VECTOR (31 downto 0);
			IMMED_O 				: OUT  STD_LOGIC_VECTOR (31 downto 0);
			RF_WR_ADDR_O 		: OUT  STD_LOGIC_VECTOR (4 downto 0);
			MEM_F_O				: OUT	 STD_LOGIC
			);
end COMPONENT;

COMPONENT ID_EX is
    Port ( 	CLK 					: in  STD_LOGIC;
				RST 					: in  STD_LOGIC;
				
				ALUFUNC 				: in  STD_LOGIC_VECTOR (3 downto 0);
				RF_WRDATA_SEL 		: in  STD_LOGIC;
				RF_WREN 				: in  STD_LOGIC;
				ALU_BIN_SEL 		: in  STD_LOGIC;
				TEMP_REG_WR 		: in  STD_LOGIC;
				W_B_SEL 				: in  STD_LOGIC;
				MEM_WREN 			: in  STD_LOGIC;
				RF_A 					: in  STD_LOGIC_VECTOR (31 downto 0);
				RF_B 					: in  STD_LOGIC_VECTOR (31 downto 0);
				IMMED 				: in  STD_LOGIC_VECTOR (31 downto 0);
				RF_WR_ADDR 			: in  STD_LOGIC_VECTOR (4 downto 0);
				MEM_F					: in  STD_LOGIC;
			  
				ALUFUNC_O 			: OUT  STD_LOGIC_VECTOR (3 downto 0);
				RF_WRDATA_SEL_O 	: OUT  STD_LOGIC;
				RF_WREN_O 			: OUT  STD_LOGIC;
				ALU_BIN_SEL_O 		: OUT  STD_LOGIC;
				TEMP_REG_WR_O 		: OUT  STD_LOGIC;
				W_B_SEL_O 			: OUT  STD_LOGIC;
				MEM_WREN_O 			: OUT  STD_LOGIC;
				RF_A_O 				: OUT  STD_LOGIC_VECTOR (31 downto 0);
				RF_B_O 				: OUT  STD_LOGIC_VECTOR (31 downto 0);
				IMMED_O 				: OUT  STD_LOGIC_VECTOR (31 downto 0);
				RF_WR_ADDR_O 		: OUT  STD_LOGIC_VECTOR (4 downto 0);
				MEM_F_O				: OUT	 STD_LOGIC
			  );
end COMPONENT;

COMPONENT IF_ID is
    Port ( 	input 				: in  STD_LOGIC_VECTOR (31 downto 0);
				IF_PC_IN 			: in STD_LOGIC_VECTOR (9 downto 0);
				output 				: out  STD_LOGIC_VECTOR (31 downto 0);
				IF_PC_OUT 			: OUT STD_LOGIC_VECTOR (9 downto 0);
				NOP 					: in  STD_LOGIC;
				clk 					: in  STD_LOGIC;
				reset 				: in STD_LOGIC);
end COMPONENT;

--------------------------------------------------------SIGNALS--------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------	

--------------STAGES-------------(ONLY OUTPUTS)----------------------------
---------------------------------------------------------------------------

--------------ALU STAGE----------------------------------

SIGNAL ALU_OUT 			: STD_LOGIC_VECTOR (31 downto 0);

--------------DEC STAGE----------------------------------

SIGNAL DEC_Immed 			: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL DEC_RF_A 			: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL DEC_RF_B 			: STD_LOGIC_VECTOR (31 downto 0);

--------------IF  STAGE----------------------------------

SIGNAL IF_Instr 			: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL IF_PC_OUT 			: STD_LOGIC_VECTOR (9 downto 0);



--------------CACHE STAGE--------------------------------

SIGNAL CACHE_DataOut 		: STD_LOGIC_VECTOR (31 downto 0); 
SIGNAL MISS 				: STD_LOGIC;

--------------CONTROL------------------------------------

SIGNAL ALU_FUNC_O 		: STD_LOGIC_VECTOR (3 downto 0);
SIGNAL RF_B_SEL_O 		: STD_LOGIC;
SIGNAL RF_WRDATA_SEL_O 	: STD_LOGIC;
SIGNAL RF_WREN_O 			: STD_LOGIC;
SIGNAL ALU_BIN_SEL_O 	: STD_LOGIC;
SIGNAL TEMP_REG_WR_O 	: STD_LOGIC;
SIGNAL W_B_SEL_O 			: STD_LOGIC;
SIGNAL MEM_WREN_O			: STD_LOGIC;


SIGNAL EPC_O 				: STD_LOGIC_VECTOR (9 downto 0);
SIGNAL EPC_EN_O 			: STD_LOGIC;
SIGNAL EX_O 				: STD_LOGIC;
SIGNAL EXSEL_O 			: STD_LOGIC;
SIGNAL MEM_F_O          : STD_LOGIC;



--------------PIPELINE REGISTER--(ONLY OUTPUTS)----------------------------
---------------------------------------------------------------------------

------------------MEM/WB-PREGD------------------------------ 


SIGNAL D_ALU_DATA_O 			: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL D_RF_WRDATA_SEL_O 	: STD_LOGIC;
SIGNAL D_RF_WREN_O 			: STD_LOGIC;
SIGNAL D_RF_A_O 				: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL D_RF_B_O 				: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL D_IMMED_O 				: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL D_RF_WR_ADDR_O 		: STD_LOGIC_VECTOR (4  downto 0);
SIGNAL D_MEM_DATA_O 			: STD_LOGIC_VECTOR (31 downto 0); 

SIGNAL TEMP_RF_WR_EN       : STD_LOGIC;

------------------MEM INTER--------------------------------- 

SIGNAL CC_ALU_DATA_O 		: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL CC_RF_WRDATA_SEL_O 	: STD_LOGIC;
SIGNAL CC_RF_WREN_O 			: STD_LOGIC;
SIGNAL CC_TEMP_REG_WR_O 	: STD_LOGIC;
SIGNAL CC_W_B_SEL_O 			: STD_LOGIC;
SIGNAL CC_MEM_WREN_O 		: STD_LOGIC;
SIGNAL CC_RF_A_O 				: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL CC_RF_B_O 				: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL CC_IMMED_O 			: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL CC_RF_WR_ADDR_O 		: STD_LOGIC_VECTOR (4  downto 0);
SIGNAL CC_CACHE_DATA_O		: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL CC_MISS_O	  			: STD_LOGIC;
SIGNAL CC_MEM_F_O	  			: STD_LOGIC;

------------------EX/MEM-PREGC------------------------------

SIGNAL C_ALU_DATA_O 			: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL C_RF_WRDATA_SEL_O 	: STD_LOGIC;
SIGNAL C_RF_WREN_O 			: STD_LOGIC;
SIGNAL C_TEMP_REG_WR_O 		: STD_LOGIC;
SIGNAL C_W_B_SEL_O 			: STD_LOGIC;
SIGNAL C_MEM_WREN_O 			: STD_LOGIC;
SIGNAL C_RF_A_O 				: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL C_RF_B_O 				: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL C_IMMED_O 				: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL C_RF_WR_ADDR_O 		: STD_LOGIC_VECTOR (4  downto 0);
SIGNAL C_MEM_F_O	  			: STD_LOGIC;

------------------ID/EX-PREGB-------------------------------

SIGNAL B_ALUFUNC_O 			: STD_LOGIC_VECTOR (3 downto 0);
SIGNAL B_RF_WRDATA_SEL_O 	: STD_LOGIC;
SIGNAL B_RF_WREN_O 			: STD_LOGIC;
SIGNAL B_ALU_BIN_SEL_O 		: STD_LOGIC;
SIGNAL B_TEMP_REG_WR_O 		: STD_LOGIC;
SIGNAL B_W_B_SEL_O 			: STD_LOGIC;
SIGNAL B_MEM_WREN_O 			: STD_LOGIC;
SIGNAL B_RF_A_O 				: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL B_RF_B_O 				: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL B_IMMED_O 				: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL B_RF_WR_ADDR_O 		: STD_LOGIC_VECTOR (4  downto 0);
SIGNAL B_MEM_F_O	  			: STD_LOGIC;

------------------IF/ID-PREGA-------------------------------

SIGNAL A_OUTPUT 				: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL A_IF_PC_OUT 			: STD_LOGIC_VECTOR (9 downto 0);

--------------------------------------------------------PORT MAPS------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
begin


ALU_STAGE :ALUSTAGE PORT MAP( 
			Clk 				=> CLK,
			RST 				=> RST,
			RF_A 				=> B_RF_A_O,
			RF_B 				=> B_RF_B_O,
			IMMED 			=> B_IMMED_O,
			ALU_BIN_SEL 	=> B_ALU_BIN_SEL_O,
			ALU_FUNC 		=> B_ALUFUNC_O,
			ALU_OUT 			=> ALU_OUT,
			Temp_REG_Wr 	=> B_TEMP_REG_WR_O
			);


DEC_STAGE :DECSTAGE PORT MAP ( 
			Instr 			=> A_OUTPUT,
			RF_WrEn 			=> D_RF_WREN_O,
			ALU_out 			=> D_ALU_DATA_O,
			MEM_out 			=> D_MEM_DATA_O,
			RF_WrData_sel	=> D_RF_WRDATA_SEL_O,
			RF_WR_ADDR		=> D_RF_WR_ADDR_O,
			RF_B_sel 		=> RF_B_SEL_O,
			Clk 				=> Clk,
			Immed 			=> DEC_Immed,
			RF_A 				=> DEC_RF_A,
			RF_B 				=> DEC_RF_B,
			RST 				=> RST
			);


IF_STAGE : IFSTAGE PORT MAP ( 
			PC_Immed 		=> "00000000000000000000000000000000",
			PC_sel 			=> '0',
			PC_LdEn 			=> '1',
			Reset 			=> RST,
			Clk 				=> Clk,

			EPC				=>	EPC_O,
			EPC_EN 			=>	EPC_EN_O,
			EX     			=>	EX_O,
			EX_SEL 			=>	EXSEL_O,

			PC_OUT 			=> IF_PC_OUT,
			Instr 			=> IF_Instr
			);


CACHE : CACHE_STAGE PORT MAP (
			Clk 				=> Clk,
			addr 				=> C_ALU_DATA_O,
			dout 				=> CACHE_DataOut,
			MISS 				=> MISS
			);
					  
CNTRL_STAGE : CNTRL PORT MAP (
			Clk 					=> CLK,
			RST 					=> RST,

			INSTR 				=> A_OUTPUT,
			ALU_FUNC 			=> ALU_FUNC_O,
			RF_B_SEL 			=> RF_B_SEL_O,
			RF_WRDATA_SEL 		=> RF_WRDATA_SEL_O,
			RF_WREN 				=> RF_WREN_O,
			ALU_BIN_SEL			=> ALU_BIN_SEL_O,
			TEMP_REG_WR 		=> TEMP_REG_WR_O,
			W_B_SEL 				=> W_B_SEL_O,
			MEM_WREN 			=> MEM_WREN_O,

			RF_A 					=> DEC_RF_A,
			PC_IN 				=> A_IF_PC_OUT,

			EPC 					=> EPC_O,
			EPC_EN 				=> EPC_EN_O,
			EX 					=> EX_O,
			EXSEL 				=> EXSEL_O,
			MEM_F					=> MEM_F_O
			);

PREGD : MEM_WB PORT MAP (
			CLK 				=> CLK,
			RST 				=> RST,

			ALU_DATA 			=> CC_ALU_DATA_O,
			RF_WRDATA_SEL 		=> CC_RF_WRDATA_SEL_O,
			RF_WREN 				=> TEMP_RF_WR_EN,
			RF_A 					=> CC_RF_A_O,
			RF_B 					=> CC_RF_B_O,
			IMMED 				=> CC_IMMED_O,
			RF_WR_ADDR 			=> CC_RF_WR_ADDR_O,
			MEM_DATA 			=> CC_CACHE_DATA_O,

			ALU_DATA_O 			=> D_ALU_DATA_O,
			RF_WRDATA_SEL_O 	=> D_RF_WRDATA_SEL_O,
			RF_WREN_O 			=> D_RF_WREN_O,
			RF_A_O 				=> D_RF_A_O,
			RF_B_O 				=> D_RF_B_O,
			IMMED_O 				=> D_IMMED_O,
			RF_WR_ADDR_O 		=> D_RF_WR_ADDR_O,
			MEM_DATA_O 			=> D_MEM_DATA_O
			);
			
			
PREGCC : MEM_INTER PORT MAP (
		  	CLK 				=> CLK,
			RST 				=> RST,
 
			ALU_DATA 			=> C_ALU_DATA_O,
			RF_WRDATA_SEL 		=> C_RF_WRDATA_SEL_O,
			RF_WREN 				=> C_RF_WREN_O,
			RF_A 					=> C_RF_A_O,
			RF_B 					=> C_RF_B_O,
			IMMED 				=> C_IMMED_O,
			RF_WR_ADDR 			=> C_RF_WR_ADDR_O,
			CACHE_DATA			=>	CACHE_DataOut,
			MISS					=>	MISS,
			MEM_F					=> C_MEM_F_O,
		  
			ALU_DATA_O 			=> CC_ALU_DATA_O,
			RF_WRDATA_SEL_O 	=> CC_RF_WRDATA_SEL_O,
			RF_WREN_O 			=> CC_RF_WREN_O,
			RF_A_O 				=> CC_RF_A_O,
			RF_B_O 				=> CC_RF_B_O,
			IMMED_O 				=> CC_IMMED_O,
			RF_WR_ADDR_O 		=> CC_RF_WR_ADDR_O,
			CACHE_DATA_O		=> CC_CACHE_DATA_O,
			MISS_O				=> CC_MISS_O,
			MEM_F_O				=> CC_MEM_F_O
			);
			

PREGC : EX_MEM PORT MAP (
		  	CLK 				=> CLK,
			RST 				=> RST,
 
			ALU_DATA 			=> ALU_OUT,
			RF_WRDATA_SEL 		=> B_RF_WRDATA_SEL_O,
			RF_WREN 				=> B_RF_WREN_O,
			W_B_SEL 				=> B_W_B_SEL_O,
			MEM_WREN 			=> B_MEM_WREN_O,
			RF_A 					=> B_RF_A_O,
			RF_B 					=> B_RF_B_O,
			IMMED 				=> B_IMMED_O,
			RF_WR_ADDR 			=> B_RF_WR_ADDR_O,
			MEM_F					=> B_MEM_F_O,
		  
			ALU_DATA_O 			=> C_ALU_DATA_O,
			RF_WRDATA_SEL_O 	=> C_RF_WRDATA_SEL_O,
			RF_WREN_O 			=> C_RF_WREN_O,
			TEMP_REG_WR_O 		=> C_TEMP_REG_WR_O,
			W_B_SEL_O 			=> C_W_B_SEL_O,
			MEM_WREN_O 			=> C_MEM_WREN_O,
			RF_A_O 				=> C_RF_A_O,
			RF_B_O 				=> C_RF_B_O,
			IMMED_O 				=> C_IMMED_O,
			RF_WR_ADDR_O 		=> C_RF_WR_ADDR_O,
			MEM_F_O				=> C_MEM_F_O
			);


PREGB : ID_EX PORT MAP (
			CLK 				=> CLK,
			RST 				=> RST,
 
			ALUFUNC 				=> ALU_FUNC_O,
			RF_WRDATA_SEL 		=> RF_WRDATA_SEL_O,
			RF_WREN 				=> RF_WREN_O,
			ALU_BIN_SEL 		=> ALU_BIN_SEL_O,
			TEMP_REG_WR 		=> TEMP_REG_WR_O,
			W_B_SEL 				=> W_B_SEL_O,
			MEM_WREN 			=> MEM_WREN_O,
			RF_A 					=> DEC_RF_A,
			RF_B 					=> DEC_RF_B,
			IMMED 				=> DEC_Immed,
			RF_WR_ADDR 			=> A_OUTPUT(20 DOWNTO 16),
			MEM_F					=> MEM_F_O,
		  
			ALUFUNC_O 			=> B_ALUFUNC_O,
			RF_WRDATA_SEL_O 	=> B_RF_WRDATA_SEL_O,
			RF_WREN_O 			=> B_RF_WREN_O,
			ALU_BIN_SEL_O 		=> B_ALU_BIN_SEL_O,
			TEMP_REG_WR_O 		=> B_TEMP_REG_WR_O,
			W_B_SEL_O 			=> B_W_B_SEL_O,
			MEM_WREN_O 			=> B_MEM_WREN_O,
			RF_A_O 				=> B_RF_A_O,
			RF_B_O 				=> B_RF_B_O,
			IMMED_O 				=> B_IMMED_O,
			RF_WR_ADDR_O 		=> B_RF_WR_ADDR_O,
			MEM_F_O				=> B_MEM_F_O				
			);


PREGA : IF_ID PORT MAP (
			input 				=> IF_Instr,
			IF_PC_IN				=> IF_PC_OUT,
			output 				=> A_OUTPUT,
			IF_PC_OUT			=> A_IF_PC_OUT,
			NOP					=> EX_O,
			clk 					=> CLK,
			reset 				=> RST
			);

--------------------------------------------------------BEHAVIOUR------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

TEMP_RF_WR_EN <= CC_RF_WREN_O AND (CC_MISS_O NAND CC_MEM_F_O);

M_FLAG <= CC_MISS_O ;

end Behavioral;
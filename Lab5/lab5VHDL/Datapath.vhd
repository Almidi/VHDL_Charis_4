library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity Datapath is PORT (  Clk : in STD_LOGIC;
									Rst : in STD_LOGIC
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
			  RST : IN STD_LOGIC;
			  RF_A_ADDR: out  STD_LOGIC_VECTOR (4 downto 0);
			  RF_B_ADDR: out  STD_LOGIC_VECTOR (4 downto 0)
			  );
end COMPONENT;

COMPONENT IFSTAGE is Port ( 
			  PC_Immed : in  STD_LOGIC_VECTOR (31 downto 0);
           PC_sel : in  STD_LOGIC;
           PC_LdEn : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Instr : out  STD_LOGIC_VECTOR (31 downto 0));
end COMPONENT;	

COMPONENT MEMSTAGE is Port (
			  Clk : in  STD_LOGIC;
           Mem_WrEn : in  STD_LOGIC;
           ALU_MEM_Addr : in  STD_LOGIC_VECTOR (31 downto 0);
           MEM_DataIn : in  STD_LOGIC_VECTOR (31 downto 0);
           MEM_DataOut : out  STD_LOGIC_VECTOR (31 downto 0);
			  W_B_SEL : in  STD_LOGIC);	 
end COMPONENT;


COMPONENT CNTRL is
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
end COMPONENT;


COMPONENT MUX_4to1_32b is
    Port ( DIN_A : in  STD_LOGIC_VECTOR (31 downto 0);
           DIN_B : in  STD_LOGIC_VECTOR (31 downto 0);
           DIN_C : in  STD_LOGIC_VECTOR (31 downto 0);
           DIN_D : in  STD_LOGIC_VECTOR (31 downto 0);
           DOUT : out  STD_LOGIC_VECTOR (31 downto 0);
           CNTRL : in  STD_LOGIC_VECTOR (1 downto 0));
end COMPONENT;


COMPONENT MUX2TO1 is
    Port ( In0 : in  STD_LOGIC_VECTOR (31 downto 0);
           In1 : in  STD_LOGIC_VECTOR (31 downto 0);
           S : in  STD_LOGIC;
           Output : out  STD_LOGIC_VECTOR (31 downto 0));
end COMPONENT;

COMPONENT FWD_CNTRL is
    Port ( ALU_RF_A_ADDR : in  STD_LOGIC_VECTOR (4 downto 0);
           ALU_RF_B_ADDR : in  STD_LOGIC_VECTOR (4 downto 0);
           RF_WR_A_1 : in  STD_LOGIC_VECTOR (4 downto 0);
           RF_WR_A_2 : in  STD_LOGIC_VECTOR (4 downto 0);
           RF_WR_EN_1 : in  STD_LOGIC;
           RF_WR_EN_2 : in  STD_LOGIC;
           CNTRL_A : out  STD_LOGIC_VECTOR (1 downto 0);
           CNTRL_B : out  STD_LOGIC_VECTOR (1 downto 0));
end COMPONENT;

COMPONENT HDU is
    Port ( RF_WR_ADDR : in  STD_LOGIC_VECTOR (4 downto 0);
           RF_WRDATA_SEL : in  STD_LOGIC;
			  RF_A_ADDR : in  STD_LOGIC_VECTOR (4 downto 0);
			  RF_B_ADDR : in  STD_LOGIC_VECTOR (4 downto 0);
           PC_LD_EN : out  STD_LOGIC;
           NOP : out  STD_LOGIC);
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
		  
			ALU_DATA_O 			: OUT  STD_LOGIC_VECTOR (31 downto 0);
			RF_WRDATA_SEL_O 	: OUT  STD_LOGIC;
			RF_WREN_O 			: OUT  STD_LOGIC;
			TEMP_REG_WR_O 		: OUT  STD_LOGIC;
			W_B_SEL_O 			: OUT  STD_LOGIC;
			MEM_WREN_O 			: OUT  STD_LOGIC;
			RF_A_O 				: OUT  STD_LOGIC_VECTOR (31 downto 0);
			RF_B_O 				: OUT  STD_LOGIC_VECTOR (31 downto 0);
			IMMED_O 				: OUT  STD_LOGIC_VECTOR (31 downto 0);
			RF_WR_ADDR_O 		: OUT  STD_LOGIC_VECTOR (4 downto 0)	  
			);
end COMPONENT;

COMPONENT ID_EX is
    Port ( 	CLK : in  STD_LOGIC;
				RST : in  STD_LOGIC;
	 
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
				RF_A_ADDR			: in  STD_LOGIC_VECTOR (4 downto 0);
				RF_B_ADDR			: in  STD_LOGIC_VECTOR (4 downto 0);
				NOP					: in  STD_LOGIC;
			  
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
				RF_A_ADDR_O			: OUT  STD_LOGIC_VECTOR (4 downto 0);
				RF_B_ADDR_O			: OUT  STD_LOGIC_VECTOR (4 downto 0)				
			  );
end COMPONENT;

COMPONENT IF_ID is
    Port ( 	input 				: in  STD_LOGIC_VECTOR (31 downto 0);
				output 				: out  STD_LOGIC_VECTOR (31 downto 0);
				clk 					: in  STD_LOGIC;
				EN 					: in  STD_LOGIC;
				reset 				: in STD_LOGIC);
end COMPONENT;

--------------------------------------------------------SIGNALS--------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------	

--------------STAGES-------------(ONLY OUTPUTS)----------------------------
---------------------------------------------------------------------------

--------------ALU STAGE----------------------------------

SIGNAL ALU_OUT 				: STD_LOGIC_VECTOR (31 downto 0);

--------------DEC STAGE----------------------------------

SIGNAL DEC_Immed 				: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL DEC_RF_A 				: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL DEC_RF_B 				: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL DEC_RF_A_ADDR			: STD_LOGIC_VECTOR (4 downto 0);
SIGNAL DEC_RF_B_ADDR			: STD_LOGIC_VECTOR (4 downto 0);

--------------IF  STAGE----------------------------------

SIGNAL IF_Instr 				: STD_LOGIC_VECTOR (31 downto 0);

--------------MEM STAGE----------------------------------

SIGNAL MEM_DataOut 			: STD_LOGIC_VECTOR (31 downto 0); 

--------------CONTROL------------------------------------

SIGNAL ALU_FUNC_O 		: STD_LOGIC_VECTOR (3 downto 0);
SIGNAL RF_B_SEL_O 		: STD_LOGIC;
SIGNAL RF_WRDATA_SEL_O 	: STD_LOGIC;
SIGNAL RF_WREN_O 			: STD_LOGIC;
SIGNAL ALU_BIN_SEL_O 	: STD_LOGIC;
SIGNAL TEMP_REG_WR_O 	: STD_LOGIC;
SIGNAL W_B_SEL_O 			: STD_LOGIC;
SIGNAL MEM_WREN_O			: STD_LOGIC;

--------------FORWARDING MUXES---------------------------


SIGNAL FWD_MUX_A_DOUT 	: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL FWD_MUX_B_DOUT 	: STD_LOGIC_VECTOR (31 downto 0);

--------------FORWARDING MUXES---------------------------

SIGNAL RFWRMUX_Output   : STD_LOGIC_VECTOR (31 downto 0);

--------------FORWARD CONTROL----------------------------


SIGNAL FWD_CNTRL_A 		: STD_LOGIC_VECTOR (1 downto 0);
SIGNAL FWD_CNTRL_B 		: STD_LOGIC_VECTOR (1 downto 0);

--------------HDU----------------------------------------




SIGNAL HDU_PC_LD_EN 		: STD_LOGIC;
SIGNAL HDU_NOP 			: STD_LOGIC;


--------------PIPELINE REGISTER--(ONLY OUTPUTS)----------------------------
---------------------------------------------------------------------------

------------------MEM/WB-PREGD--------------------------- 


SIGNAL D_ALU_DATA_O 			: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL D_RF_WRDATA_SEL_O 	: STD_LOGIC;
SIGNAL D_RF_WREN_O 			: STD_LOGIC;
SIGNAL D_RF_A_O 				: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL D_RF_B_O 				: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL D_IMMED_O 				: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL D_RF_WR_ADDR_O 		: STD_LOGIC_VECTOR (4 downto 0);
SIGNAL D_MEM_DATA_O 			: STD_LOGIC_VECTOR (31 downto 0); 


------------------EX/MEM-PREGC---------------------------


SIGNAL C_ALU_DATA_O 			: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL C_RF_WRDATA_SEL_O 	: STD_LOGIC;
SIGNAL C_RF_WREN_O 			: STD_LOGIC;
SIGNAL C_TEMP_REG_WR_O 		: STD_LOGIC;
SIGNAL C_W_B_SEL_O 			: STD_LOGIC;
SIGNAL C_MEM_WREN_O 			: STD_LOGIC;
SIGNAL C_RF_A_O 				: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL C_RF_B_O 				: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL C_IMMED_O 				: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL C_RF_WR_ADDR_O 		: STD_LOGIC_VECTOR (4 downto 0);	  


------------------ID/EX-PREGB----------------------------


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
SIGNAL B_RF_WR_ADDR_O 		: STD_LOGIC_VECTOR (4 downto 0);	  
SIGNAL B_RF_A_ADDR_O			: STD_LOGIC_VECTOR (4 downto 0);	  
SIGNAL B_RF_B_ADDR_O			: STD_LOGIC_VECTOR (4 downto 0);	  


------------------IF/ID-PREGA----------------------------

SIGNAL A_OUTPUT 				: STD_LOGIC_VECTOR (31 downto 0);

--------------------------------------------------------PORT MAPS------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
begin


ALU_STAGE :ALUSTAGE PORT MAP( 
				Clk 				=> CLK,
				RST 				=> RST,
				RF_A 				=> FWD_MUX_A_DOUT,
            RF_B 				=> FWD_MUX_B_DOUT,
            IMMED 			=> B_IMMED_O,
            ALU_BIN_SEL 	=> B_ALU_BIN_SEL_O,
            ALU_FUNC 		=> B_ALUFUNC_O,
            ALU_OUT 			=> ALU_OUT,
				Temp_REG_Wr 	=> B_TEMP_REG_WR_O
				);


DEC_STAGE :DECSTAGE PORT MAP ( 
			  Instr 				=> A_OUTPUT,
			  RF_WrEn 			=> D_RF_WREN_O,
			  ALU_out 			=> D_ALU_DATA_O,
			  MEM_out 			=> D_MEM_DATA_O,
			  RF_WrData_sel	=> D_RF_WRDATA_SEL_O,
			  RF_WR_ADDR		=> D_RF_WR_ADDR_O,
			  RF_B_sel 			=> RF_B_SEL_O,
			  Clk 				=> Clk,
			  Immed 				=> DEC_Immed,
			  RF_A 				=> DEC_RF_A,
			  RF_B 				=> DEC_RF_B,
			  RST 				=> RST,
			  RF_A_ADDR			=> DEC_RF_A_ADDR,
			  RF_B_ADDR			=> DEC_RF_B_ADDR
			  );


IF_STAGE : IFSTAGE PORT MAP ( 
			  PC_Immed 			=> "00000000000000000000000000000000",
           PC_sel 			=> '0',
           PC_LdEn 			=> HDU_PC_LD_EN,
           Reset 				=> RST,
           Clk 				=> Clk,
           Instr 				=> IF_Instr
			  );


MEM_STAGE :MEMSTAGE PORT MAP (
			  Clk 				=> Clk,
           Mem_WrEn 			=> C_MEM_WREN_O,
           ALU_MEM_Addr 	=> C_ALU_DATA_O,
           MEM_DataIn 		=> C_RF_B_O,
           MEM_DataOut 		=> MEM_DataOut,
			  W_B_SEL 			=> C_W_B_SEL_O
			  );
			  
			  
CNTRL_STAGE : CNTRL PORT MAP (
		     INSTR 				=> A_OUTPUT,
			  ALU_FUNC 			=> ALU_FUNC_O,
			  RF_B_SEL 			=> RF_B_SEL_O,
			  RF_WRDATA_SEL	=> RF_WRDATA_SEL_O,
			  RF_WREN 			=> RF_WREN_O,
			  ALU_BIN_SEL 		=> ALU_BIN_SEL_O,
			  TEMP_REG_WR 		=> TEMP_REG_WR_O,
			  W_B_SEL 			=> W_B_SEL_O,
			  MEM_WREN 			=> MEM_WREN_O,
			  NOP 				=> HDU_NOP
			  );
			  
			  
FWD_MUX_A : MUX_4to1_32b PORT MAP (
			  DIN_A 	=> B_RF_A_O,
			  DIN_B 	=> C_ALU_DATA_O,
			  DIN_C 	=> RFWRMUX_Output,
			  DIN_D 	=> "00000000000000000000000000000000",
			  DOUT 	=> FWD_MUX_A_DOUT,
			  CNTRL 	=> FWD_CNTRL_A
			  );

FWD_MUX_B : MUX_4to1_32b PORT MAP (
			  DIN_A 	=> B_RF_B_O,
			  DIN_B 	=> C_ALU_DATA_O,
			  DIN_C 	=> RFWRMUX_Output,
			  DIN_D 	=> "00000000000000000000000000000000",
			  DOUT 	=> FWD_MUX_B_DOUT,
			  CNTRL 	=> FWD_CNTRL_B
			  );
			  

RFWRMUX : MUX2TO1 PORT MAP (
			  In0 		=>	D_ALU_DATA_O,
           In1 		=>	D_MEM_DATA_O,
           S 			=>	D_RF_WRDATA_SEL_O,
           Output 	=>	RFWRMUX_Output
			  );
			  
			  
FWD : FWD_CNTRL PORT MAP (
			  ALU_RF_A_ADDR 	=> B_RF_A_ADDR_O,
           ALU_RF_B_ADDR 	=> B_RF_B_ADDR_O,
           RF_WR_A_1 		=> C_RF_WR_ADDR_O,
           RF_WR_A_2 		=> D_RF_WR_ADDR_O,
           RF_WR_EN_1 		=> C_RF_WREN_O,
           RF_WR_EN_2 		=> D_RF_WREN_O,
           CNTRL_A 			=> FWD_CNTRL_A,
           CNTRL_B 			=> FWD_CNTRL_B
			  );


HDU_MODULE : HDU PORT MAP (
			  RF_WR_ADDR 		=> B_RF_WR_ADDR_O,
           RF_WRDATA_SEL 	=> B_RF_WRDATA_SEL_O,
			  RF_A_ADDR 		=> DEC_RF_A_ADDR,
			  RF_B_ADDR 		=> DEC_RF_B_ADDR,
           PC_LD_EN 			=> HDU_PC_LD_EN,
           NOP					=> HDU_NOP
			  );


PREGD : MEM_WB PORT MAP (
			CLK 				=> CLK,
			RST 				=> RST,
 
			ALU_DATA 			=> C_ALU_DATA_O,
			RF_WRDATA_SEL 		=> C_RF_WRDATA_SEL_O,
			RF_WREN 				=> C_RF_WREN_O,
			RF_A 					=> C_RF_A_O,
			RF_B 					=> C_RF_B_O,
			IMMED 				=> C_IMMED_O,
			RF_WR_ADDR 			=> C_RF_WR_ADDR_O,
			MEM_DATA 			=> MEM_DataOut,
		  
			ALU_DATA_O 			=> D_ALU_DATA_O,
			RF_WRDATA_SEL_O 	=> D_RF_WRDATA_SEL_O,
			RF_WREN_O 			=> D_RF_WREN_O,
			RF_A_O 				=> D_RF_A_O,
			RF_B_O 				=> D_RF_B_O,
			IMMED_O 				=> D_IMMED_O,
			RF_WR_ADDR_O 		=> D_RF_WR_ADDR_O,
			MEM_DATA_O 			=> D_MEM_DATA_O
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
		  
			ALU_DATA_O 			=> C_ALU_DATA_O,
			RF_WRDATA_SEL_O 	=> C_RF_WRDATA_SEL_O,
			RF_WREN_O 			=> C_RF_WREN_O,
			TEMP_REG_WR_O 		=> C_TEMP_REG_WR_O,
			W_B_SEL_O 			=> C_W_B_SEL_O,
			MEM_WREN_O 			=> C_MEM_WREN_O,
			RF_A_O 				=> C_RF_A_O,
			RF_B_O 				=> C_RF_B_O,
			IMMED_O 				=> C_IMMED_O,
			RF_WR_ADDR_O 		=> C_RF_WR_ADDR_O
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
			RF_A_ADDR			=> DEC_RF_A_ADDR,
			RF_B_ADDR			=> DEC_RF_B_ADDR,
			NOP					=> HDU_NOP,
		  
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
			RF_A_ADDR_O			=>	B_RF_A_ADDR_O,
			RF_B_ADDR_O			=>	B_RF_B_ADDR_O
			);


PREGA : IF_ID PORT MAP (
			input 				=> IF_Instr,
			output 				=> A_OUTPUT,
			clk 					=> CLK,
			EN                => HDU_PC_LD_EN,
			reset 				=> RST
			);

--------------------------------------------------------BEHAVIOUR------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

end Behavioral;
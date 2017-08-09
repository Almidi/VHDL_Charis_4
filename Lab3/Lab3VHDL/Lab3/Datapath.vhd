----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity Datapath is PORT (  Clk : in STD_LOGIC;
									Rst : in STD_LOGIC;
									ALU_BIN_SEL : in  STD_LOGIC;
									ALU_FUNC : in  STD_LOGIC_VECTOR (3 downto 0);
									RF_WrEn : in  STD_LOGIC;
									RF_WrData_sel : in  STD_LOGIC;
									RF_B_sel : in  STD_LOGIC;
									RF_A : out  STD_LOGIC_VECTOR (31 downto 0);
			                  RF_B : out  STD_LOGIC_VECTOR (31 downto 0);
									Temp_REG_Wr : IN STD_LOGIC;
									PC_sel : in  STD_LOGIC;
									PC_LdEn : in  STD_LOGIC;
									Instr : out  STD_LOGIC_VECTOR (31 downto 0);
									Mem_WrEn : in  STD_LOGIC;
									W_B_SEL : in  STD_LOGIC
									);		
end Datapath;

architecture Behavioral of Datapath is

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
			  RF_B_sel : in  STD_LOGIC;
			  Clk : in  STD_LOGIC;
			  Immed : out  STD_LOGIC_VECTOR (31 downto 0);
			  RF_A : out  STD_LOGIC_VECTOR (31 downto 0);
			  RF_B : out  STD_LOGIC_VECTOR (31 downto 0);
			  RST : IN STD_LOGIC);
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

SIGNAL  I_RF_A : STD_LOGIC_VECTOR (31 downto 0);
SIGNAL  I_RF_B : STD_LOGIC_VECTOR (31 downto 0);
SIGNAL  I_IMMED : STD_LOGIC_VECTOR (31 downto 0);
SIGNAL  I_ALU_OUT : STD_LOGIC_VECTOR (31 downto 0);
SIGNAL  I_Instr : STD_LOGIC_VECTOR (31 downto 0);
SIGNAL  I_MEM_out : STD_LOGIC_VECTOR (31 downto 0);




begin

ALU_STAGE :ALUSTAGE PORT MAP( 
				Clk =>Clk,
				RST =>RST,
				RF_A =>I_RF_A,
            RF_B =>I_RF_B,
            IMMED =>I_IMMED,
            ALU_BIN_SEL =>ALU_BIN_SEL,
            ALU_FUNC =>ALU_FUNC,
            ALU_OUT =>I_ALU_OUT,
				Temp_REG_Wr =>Temp_REG_Wr
				);


DEC_STAGE :DECSTAGE PORT MAP ( 
			  Instr =>I_Instr,
			  RF_WrEn =>RF_WrEn,
			  ALU_out =>I_ALU_OUT,
			  MEM_out =>I_MEM_out,
			  RF_WrData_sel =>RF_WrData_sel,
			  RF_B_sel =>RF_B_sel,
			  Clk =>Clk,
			  Immed =>I_IMMED,
			  RF_A =>I_RF_A,
			  RF_B =>I_RF_B,
			  RST =>RST
			  );


IF_STAGE : IFSTAGE PORT MAP ( 
			  PC_Immed =>I_IMMED,
           PC_sel =>PC_sel,
           PC_LdEn =>PC_LdEn,
           Reset =>RST,
           Clk =>Clk,
           Instr =>I_Instr
			  );


MEM_STAGE :MEMSTAGE PORT MAP (
			  Clk =>Clk,
           Mem_WrEn =>Mem_WrEn,
           ALU_MEM_Addr =>I_ALU_OUT,
           MEM_DataIn =>I_RF_B,
           MEM_DataOut =>I_MEM_out,
			  W_B_SEL =>W_B_SEL
			  );


RF_A <= I_RF_A ;
RF_B <= I_RF_B ;
Instr<= I_Instr;

end Behavioral;


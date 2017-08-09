----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity Processor is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC);
end Processor;

architecture Behavioral of Processor is

component CONTROL is  PORT (  Clk : in STD_LOGIC;
									Rst : in STD_LOGIC;
									ALU_BIN_SEL : OUT  STD_LOGIC;
									ALU_FUNC : OUT  STD_LOGIC_VECTOR (5 downto 0);
									RF_WrEn : OUT  STD_LOGIC;
									RF_WrData_sel : OUT  STD_LOGIC;
									RF_B_sel : OUT  STD_LOGIC;
									RF_A : IN  STD_LOGIC_VECTOR (31 downto 0);
			                  RF_B : IN  STD_LOGIC_VECTOR (31 downto 0);
									Temp_REG_Wr :OUT STD_LOGIC;
									PC_sel : OUT  STD_LOGIC;
									PC_Add_Sel : OUT  STD_LOGIC;
									PC_LdEn : OUT  STD_LOGIC;
									Instr : IN  STD_LOGIC_VECTOR (31 downto 0);
									Mem_WrEn : OUT  STD_LOGIC;
									MEM_OUT : IN  STD_LOGIC_VECTOR (31 downto 0);
									W_B_SEL : OUT  STD_LOGIC;
									UNPACK_CONTROL : OUT  STD_LOGIC_VECTOR (3 downto 0);
									QUADREG_DOUT : IN  STD_LOGIC_VECTOR (31 downto 0);
									QUADREG_WEN : OUT  STD_LOGIC_VECTOR (4 downto 0);
									MEM_SEL : OUT  STD_LOGIC;
									IMMED_OFFSET : OUT  STD_LOGIC_VECTOR (31 downto 0)
									);		


end component;

component Datapath is PORT (  Clk : in STD_LOGIC;
									Rst : in STD_LOGIC;
									ALU_BIN_SEL : in  STD_LOGIC;
									ALU_FUNC : in  STD_LOGIC_VECTOR (5 downto 0);
									RF_WrEn : in  STD_LOGIC;
									RF_WrData_sel : in  STD_LOGIC;
									MEM_SEL : in  STD_LOGIC;
									IMMED_OFFSET: IN  STD_LOGIC_VECTOR (31 downto 0); 
									RF_B_sel : in  STD_LOGIC;
									RF_A : out  STD_LOGIC_VECTOR (31 downto 0);
			                  RF_B : out  STD_LOGIC_VECTOR (31 downto 0);
									Temp_REG_Wr : IN STD_LOGIC;
									PC_sel : in  STD_LOGIC;
			                  PC_Add_Sel : in  STD_LOGIC;
									PC_LdEn : in  STD_LOGIC;
									Instr : out  STD_LOGIC_VECTOR (31 downto 0);
									Mem_WrEn : in  STD_LOGIC;
									MEM_OUT : OUT  STD_LOGIC_VECTOR (31 downto 0);
									W_B_SEL : in  STD_LOGIC;
									UNPACK_C : in  STD_LOGIC_VECTOR (3 downto 0);
									QUADREG_DOUT : OUT  STD_LOGIC_VECTOR (31 downto 0);
									QUADREG_WEN : IN  STD_LOGIC_VECTOR (4 downto 0)
									);		
end component;


SIGNAL ALU_BIN_SEL :  STD_LOGIC;
SIGNAL ALU_FUNC : STD_LOGIC_VECTOR (5 downto 0);
SIGNAL Temp_REG_Wr : STD_LOGIC;

SIGNAL RF_WrEn : STD_LOGIC;
SIGNAL RF_WrData_sel : STD_LOGIC;
SIGNAL RF_B_sel : STD_LOGIC;
SIGNAL RF_A : STD_LOGIC_VECTOR (31 downto 0);
SIGNAL RF_B : STD_LOGIC_VECTOR (31 downto 0);

SIGNAL PC_sel : STD_LOGIC;
SIGNAL PC_Add_Sel : STD_LOGIC;
SIGNAL PC_LdEn : STD_LOGIC;
SIGNAL Instr : STD_LOGIC_VECTOR (31 downto 0);

SIGNAL Mem_WrEn : STD_LOGIC;
SIGNAL MEM_OUT : STD_LOGIC_VECTOR (31 downto 0);
SIGNAL W_B_SEL : STD_LOGIC;

SIGNAL QUADREG_DOUT : STD_LOGIC_VECTOR (31 downto 0);
SIGNAL QUADREG_WEN : STD_LOGIC_VECTOR (4 downto 0);

SIGNAL MEM_SEL : STD_LOGIC;
SIGNAL IMMED_OFFSET : STD_LOGIC_VECTOR (31 downto 0);

SIGNAL UNPACK_C : STD_LOGIC_VECTOR (3 downto 0);

begin

CONTROL_PORT : CONTROL PORT MAP(   
						Clk => Clk,
						Rst => Rst,
						ALU_BIN_SEL => ALU_BIN_SEL,
						ALU_FUNC => ALU_FUNC,
						RF_WrEn => RF_WrEn,
						RF_WrData_sel => RF_WrData_sel,
						RF_B_sel => RF_B_sel,
						RF_A => RF_A,
						RF_B => RF_B,
						Temp_REG_Wr => Temp_REG_Wr,
						PC_sel => PC_sel,
						PC_Add_Sel => PC_Add_Sel,
						PC_LdEn => PC_LdEn,
						Instr => Instr,
						Mem_WrEn => Mem_WrEn,
						MEM_OUT => MEM_OUT,
						W_B_SEL => W_B_SEL,
						UNPACK_CONTROL => UNPACK_C,
						QUADREG_DOUT => QUADREG_DOUT,
						QUADREG_WEN => QUADREG_WEN,
						MEM_SEL => MEM_SEL,
						IMMED_OFFSET => IMMED_OFFSET
						);		


DATAPATH_PORT : Datapath PORT MAP(  
						Clk => Clk,
						Rst => Rst,
						ALU_BIN_SEL => ALU_BIN_SEL,
						ALU_FUNC => ALU_FUNC,
						RF_WrEn => RF_WrEn,
						RF_WrData_sel => RF_WrData_sel,
						RF_B_sel => RF_B_sel,
						RF_A => RF_A,
						RF_B => RF_B,
						Temp_REG_Wr => Temp_REG_Wr,
						PC_sel => PC_sel,
						PC_Add_Sel => PC_Add_Sel,
						PC_LdEn => PC_LdEn,
						Instr => Instr,
						Mem_WrEn => Mem_WrEn,
						MEM_OUT => MEM_OUT,
						W_B_SEL => W_B_SEL,
						UNPACK_C => UNPACK_C,
						QUADREG_DOUT => QUADREG_DOUT,
						QUADREG_WEN => QUADREG_WEN,
						MEM_SEL => MEM_SEL,
						IMMED_OFFSET => IMMED_OFFSET
						);		

end Behavioral;


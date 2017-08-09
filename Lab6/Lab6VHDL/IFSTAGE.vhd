library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use ieee.std_logic_arith.all;


entity IFSTAGE is
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
end IFSTAGE;

architecture Behavioral of IFSTAGE is

component PC_Mux PORT (	In0 : in  STD_LOGIC_VECTOR (9 downto 0);
								In1 : in  STD_LOGIC_VECTOR (9 downto 0);
								S : in  STD_LOGIC;
								Output : out  STD_LOGIC_VECTOR (9 downto 0));
end component;

component IF_MEM port ( Clk : in std_logic;
								Addr : in std_logic_vector(9 downto 0);
								Dout : out std_logic_vector(31 downto 0));
end component;

component PC is
    Port ( Clk : in  STD_LOGIC;
           DataIn : in  STD_LOGIC_VECTOR (9 downto 0);
           DataOut : out  STD_LOGIC_VECTOR (9 downto 0);
			  WrEn : in  STD_LOGIC;
			  Rst : in STD_LOGIC);
end component;

SIGNAL MUXIN0,MUXIN1,MUXOUT,PCTEMP : STD_LOGIC_VECTOR (9 downto 0);


SIGNAL EPCADVANCED: STD_LOGIC_VECTOR (9 downto 0);

SIGNAL PCMUXOUT	: STD_LOGIC_VECTOR (9 downto 0);

SIGNAL EXMUXOUT	: STD_LOGIC_VECTOR (9 downto 0);

SIGNAL EXENMUXOUT	: STD_LOGIC_VECTOR (9 downto 0);



begin

PCMUX : PC_MUX port map (
				In0 => MUXIN0,
				In1 => MUXIN1,
				S => PC_Sel,
				Output => PCMUXOUT
				);
				
EXMUX : PC_MUX port map (
				In0 => "0100000000",
				In1 => "1000000000",
				S => EX_SEL,
				Output => EXMUXOUT
				);
				
EXENMUX : PC_MUX port map (
				In0 => PCMUXOUT,
				In1 => EXMUXOUT,
				S => EX,
				Output => EXENMUXOUT
				);

EPCMUX : PC_MUX port map (
				In0 => EXENMUXOUT,
				In1 => EPCADVANCED,
				S => EPC_EN,
				Output => MUXOUT
				);

PCREG : PC PORT MAP ( 
			   Clk =>CLK,
            DataIn =>MUXOUT,
            DataOut =>PCTEMP,
			   WrEn =>PC_LDEN,
			   Rst =>RESET
			   );
				
ROM : IF_MEM PORT MAP ( 
				Clk => CLK,
				Addr =>PCTEMP,
				Dout =>INSTR
				);

MUXIN0 <= PCTEMP + 4;
MUXIN1 <= PCTEMP + 4 + PC_Immed(9 DOWNTO 0);

EPCADVANCED <= EPC + 4 ;


PC_OUT <= PCTEMP ;


end Behavioral;


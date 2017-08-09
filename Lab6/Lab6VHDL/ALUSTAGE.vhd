----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ALUSTAGE is
    Port ( Clk : in  STD_LOGIC;
			  RST: IN STD_LOGIC;
			  RF_A : in  STD_LOGIC_VECTOR (31 downto 0);
           RF_B : in  STD_LOGIC_VECTOR (31 downto 0);
           IMMED : in  STD_LOGIC_VECTOR (31 downto 0);
           ALU_BIN_SEL : in  STD_LOGIC;
           ALU_FUNC : in  STD_LOGIC_VECTOR (3 downto 0);
           ALU_OUT : out  STD_LOGIC_VECTOR (31 downto 0);
			  Temp_REG_Wr : in  STD_LOGIC);
end ALUSTAGE;

architecture Behavioral of ALUSTAGE is

COMPONENT ALU is Port ( 
		     A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           Op : in  STD_LOGIC_VECTOR (3 downto 0);
			  Output: out  STD_LOGIC_VECTOR (31 downto 0);
           Zero : out  STD_LOGIC;
           Cout : out  STD_LOGIC;
           Ovf : out  STD_LOGIC);
end COMPONENT;

COMPONENT MUX2TO1 is
    Port ( In0 : in  STD_LOGIC_VECTOR (31 downto 0);
           In1 : in  STD_LOGIC_VECTOR (31 downto 0);
           S : in  STD_LOGIC;
           Output : out  STD_LOGIC_VECTOR (31 downto 0));
end COMPONENT;

SIGNAL MUXOUT : std_logic_vector (31 downto 0);
SIGNAL ZERO : std_logic ;                          --UNUSED
SIGNAL COUT : std_logic ;                          --UNUSED
SIGNAL OVF : std_logic ;                           --UNUSED

begin

BINMUX : MUX2TO1 PORT MAP 
			( In0 => RF_B,  
           In1 => IMMED,
			  S => ALU_BIN_SEL,
           Output => MUXOUT
			);	

ALUST : ALU PORT MAP  
		   ( A => RF_A,
           B => MUXOUT,
           Op => ALU_FUNC,
			  Output => ALU_OUT,
           Zero => ZERO,
           Cout => COUT,
           Ovf => OVF );
end Behavioral;



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_misc.ALL;
use IEEE.NUMERIC_BIT;
use IEEE.NUMERIC_STD.all; 

entity ALU is Port ( 
		     A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           Op : in  STD_LOGIC_VECTOR (5 downto 0);
			  Output: out  STD_LOGIC_VECTOR (31 downto 0);
           Zero : out  STD_LOGIC;
           Cout : out  STD_LOGIC;
           Ovf : out  STD_LOGIC);
end ALU;

 architecture Behavioral of ALU is

COMPONENT ADD32BIT is
      Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
         B : in  STD_LOGIC_VECTOR (31 downto 0);
         O : out  STD_LOGIC_VECTOR (31 downto 0);
         COUT : out  STD_LOGIC;
         OVF : out  STD_LOGIC);
end COMPONENT;

COMPONENT ADD_MMX_4BYTE is
      Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
         B : in  STD_LOGIC_VECTOR (31 downto 0);
         O : out  STD_LOGIC_VECTOR (31 downto 0));
end COMPONENT;

COMPONENT SUB32BIT is
      Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
         B : in  STD_LOGIC_VECTOR (31 downto 0);
         O : out  STD_LOGIC_VECTOR (31 downto 0);
         COUT : out  STD_LOGIC;
         OVF : out  STD_LOGIC);
end COMPONENT;

COMPONENT ROTL is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           O : out  STD_LOGIC_VECTOR (31 downto 0));
end COMPONENT;

COMPONENT ROTR is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           O : out  STD_LOGIC_VECTOR (31 downto 0));
end COMPONENT;

COMPONENT SLLO is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           O : out  STD_LOGIC_VECTOR (31 downto 0));
end COMPONENT;

COMPONENT SRAO is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           O : out  STD_LOGIC_VECTOR (31 downto 0));
end COMPONENT;

COMPONENT SRLO is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           O : out  STD_LOGIC_VECTOR (31 downto 0));
end COMPONENT;

signal TEMPOUT : std_logic_vector (31 downto 0) := "00000000000000000000000000000000" ;
signal TEMPCOUT : std_logic;
signal TEMPOVF : std_logic;

signal ANDOP: std_logic_vector (31 downto 0);
signal OROP : std_logic_vector (31 downto 0);
signal NOTOP : std_logic_vector (31 downto 0);


SIGNAL ADDO : std_logic_vector (31 downto 0);
SIGNAL ACOUT: std_logic ;
SIGNAL AOVF : std_logic ;


SIGNAL SUBO : std_logic_vector (31 downto 0);
SIGNAL SCOUT: std_logic;
SIGNAL SOVF : std_logic;
 
SIGNAL OROTL : std_logic_vector (31 downto 0);

SIGNAL OROTR : std_logic_vector (31 downto 0);

SIGNAL OSLLO : std_logic_vector (31 downto 0);

SIGNAL OSRAO : std_logic_vector (31 downto 0);

SIGNAL OSRLO : std_logic_vector (31 downto 0);

SIGNAL MMX : std_logic_vector (31 downto 0);


BEGIN

ADD : ADD32BIT  PORT MAP (
			A => A,
         B => B,
         O => ADDO,
         COUT => ACOUT,
         OVF => AOVF
        );
		  
ADD_MMX : ADD_MMX_4BYTE  PORT MAP (
			A => A,
         B => B,
         O => MMX
        );


SUB: SUB32BIT PORT MAP (
			A => A,
         B => B,
         O => SUBO,
         COUT => SCOUT,
         OVF => SOVF
        );
		  
ROTLO : ROTL PORT MAP(
			A => A,
			O => OROTL
			);
			  
ROTRO : ROTR PORT MAP(
			A => A,
			O => OROTR
			);		
			
SLLOO : SLLO PORT MAP(
			A => A,
			O => OSLLO
			);		
			
SRAOO : SRAO PORT MAP(
			A => A,
			O => OSRAO
			);		
			
SRLOO : SRLO PORT MAP(
			A => A,
			O => OSRLO
			);



ANDOP <= A AND B ;
OROP <= A OR B;
NOTOP <= NOT A;


WITH OP SELECT

	TEMPOUT  <= ADDO WHEN "110000", --ADD
					SUBO WHEN "110001", --SUB
					
					ANDOP WHEN "110010",--AND
					OROP WHEN "110011", --OR
					NOTOP WHEN "110100",--NOT
					
					OSRAO WHEN "111000",--SHIFT RIGHT ARITHMETIC
					OSRLO WHEN "111010",--SHIFT RIGHT LOGICAL
					OSLLO WHEN "111001",--SHIFT LEFT LOGICAL
					OROTL WHEN "111100",--ROTATE LEFT
					OROTR WHEN "111101",--ROTATE RIGHT
					
					MMX WHEN "101000",  --ADD MMX BYTE
					
					B WHEN "111111",    --OUTPUT B AS IS
					A WHEN "011111",    --OUTPUT A AS IS
					
					TEMPOUT WHEN OTHERS ;
WITH OP SELECT
				
	TEMPCOUT <= ACOUT WHEN "110000",
				   SCOUT WHEN "110001",
					'0' WHEN OTHERS ;
WITH OP SELECT
					
	TEMPOVF <=  AOVF WHEN "110000",
				   SOVF WHEN "110001",
					'0' WHEN OTHERS ;
				
	OUTPUT <= TEMPOUT;
	COUT <= TEMPCOUT;
	OVF <=TEMPOVF;
	ZERO <= NOR_REDUCE(TEMPOUT);
	
	
	
end Behavioral;


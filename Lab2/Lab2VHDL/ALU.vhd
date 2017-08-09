
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
           Op : in  STD_LOGIC_VECTOR (3 downto 0);
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


BEGIN

ADD : ADD32BIT  PORT MAP (
			A => A,
         B => B,
         O => ADDO,
         COUT => ACOUT,
         OVF => AOVF
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

	TEMPOUT  <= ADDO WHEN "0000", --ADD
					SUBO WHEN "0001", --SUB
					ANDOP WHEN "0010",--AND
					OROP WHEN "0011", --OR
					NOTOP WHEN "0100",--NOT
					OSRAO WHEN "1000",--SHIFT RIGHT ARITHMETIC
					OSRLO WHEN "1010",--SHIFT RIGHT LOGICAL
					OSLLO WHEN "1001",--SHIFT LEFT LOGICAL
					OROTL WHEN "1100",--ROTATE LEFT
					OROTR WHEN "1101",--ROTATE RIGHT
					TEMPOUT WHEN OTHERS ;
WITH OP SELECT
				
	TEMPCOUT <= ACOUT WHEN "0000",
				   SCOUT WHEN "0001",
					'0' WHEN OTHERS ;
WITH OP SELECT
					
	TEMPOVF <=  AOVF WHEN "0000",
				   SOVF WHEN "0001",
					'0' WHEN OTHERS ;
				
	OUTPUT <= TEMPOUT;
	COUT <= TEMPCOUT;
	OVF <=TEMPOVF;
	
	ZERO <= NOR_REDUCE(TEMPOUT);
	
end Behavioral;


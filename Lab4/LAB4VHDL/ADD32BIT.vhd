
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use ieee.std_logic_arith.all;
use IEEE.NUMERIC_BIT;
use IEEE.NUMERIC_STD.all; 



entity ADD32BIT is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           O : out  STD_LOGIC_VECTOR (31 downto 0);
           COUT : out  STD_LOGIC;
           OVF : out  STD_LOGIC);
end ADD32BIT;

architecture Behavioral of ADD32BIT is

SIGNAL tempOUT : std_logic_vector (32 downto 0 );
signal tempA : std_logic_vector (32 downto 0);
signal tempB : std_logic_vector (32 downto 0);

begin

 tempA(32)<='0' ;
 tempB(32)<='0' ;

 tempA(31 downto 0) <= A(31 downto 0 );
 tempB(31 downto 0) <= B(31 downto 0 );

 tempOUT <= tempA + tempB ;    

 O <= tempOUT(31 downto 0 );
 COUT <= tempOUT(32);
 OVF <= (tempA(31) XNOR tempB(31))AND(tempA(31) XOR tempOUT(31));

end Behavioral;


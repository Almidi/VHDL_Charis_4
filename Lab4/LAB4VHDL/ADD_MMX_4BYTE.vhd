
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use ieee.std_logic_arith.all;
use IEEE.NUMERIC_BIT;
use IEEE.NUMERIC_STD.all; 


entity ADD_MMX_4BYTE is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           O : out  STD_LOGIC_VECTOR (31 downto 0));
end ADD_MMX_4BYTE;

architecture Behavioral of ADD_MMX_4BYTE is

begin

O <= (A(31 downto 24) + B(31 downto 24)) & (A(23 downto 16) + B(23 downto 16)) & (A(15 downto 8) + B(15 downto 8)) & (A(7 downto 0) + B(7 downto 0)) ;


end Behavioral;


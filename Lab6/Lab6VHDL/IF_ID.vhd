library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity IF_ID is
    Port ( 	input 				: in  STD_LOGIC_VECTOR (31 downto 0);
				IF_PC_IN 			: in STD_LOGIC_VECTOR (9 downto 0);
				output 				: out  STD_LOGIC_VECTOR (31 downto 0);
				IF_PC_OUT 			: OUT STD_LOGIC_VECTOR (9 downto 0);
				NOP 					: in  STD_LOGIC;
				clk 					: in  STD_LOGIC;
				reset 				: in STD_LOGIC);
end IF_ID;
architecture Behavioral of IF_ID is
begin
process(clk, reset)
begin
	if(reset='1') then 
			output<=std_logic_vector(to_unsigned(0,32));
			IF_PC_OUT <=std_logic_vector(to_unsigned(0,10));
			
	elsif(rising_edge(clk) AND NOP ='1') then 
	
			output<=std_logic_vector(to_unsigned(0,32));
			IF_PC_OUT <= std_logic_vector(to_unsigned(0,10));
			
	elsif(rising_edge(clk)) then 
	
			output<=input;
			IF_PC_OUT <= IF_PC_IN ;
			
	end if;
	
end process;
end Behavioral;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity IF_ID is
    Port ( 	input : in  STD_LOGIC_VECTOR (31 downto 0);
				output : out  STD_LOGIC_VECTOR (31 downto 0);
				clk : in  STD_LOGIC;
				EN : in  STD_LOGIC;
				reset : in STD_LOGIC);
end IF_ID;
architecture Behavioral of IF_ID is
begin
process(clk, reset)
begin
	if(reset='1') then output<=std_logic_vector(to_unsigned(0,32));
	elsif(rising_edge(clk) AND EN ='1') then output<=input;
	end if;
end process;
end Behavioral;
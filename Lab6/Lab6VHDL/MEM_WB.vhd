library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MEM_WB is
Port ( 	CLK : in  STD_LOGIC;
			RST : in  STD_LOGIC;
 
			ALU_DATA 			: in  STD_LOGIC_VECTOR (31 downto 0);
			RF_WRDATA_SEL 		: in  STD_LOGIC;
			RF_WREN 				: in  STD_LOGIC;
			RF_A 					: in  STD_LOGIC_VECTOR (31 downto 0);
			RF_B 					: in  STD_LOGIC_VECTOR (31 downto 0);
			IMMED 				: in  STD_LOGIC_VECTOR (31 downto 0);
			RF_WR_ADDR 			: in  STD_LOGIC_VECTOR (4 downto 0);
			MEM_DATA 			: in  STD_LOGIC_VECTOR (31 downto 0);
		  
			ALU_DATA_O 			: OUT  STD_LOGIC_VECTOR (31 downto 0);
			RF_WRDATA_SEL_O 	: OUT  STD_LOGIC;
			RF_WREN_O 			: OUT  STD_LOGIC;
			RF_A_O 				: OUT  STD_LOGIC_VECTOR (31 downto 0);
			RF_B_O 				: OUT  STD_LOGIC_VECTOR (31 downto 0);
			IMMED_O 				: OUT  STD_LOGIC_VECTOR (31 downto 0);
			RF_WR_ADDR_O 		: OUT  STD_LOGIC_VECTOR (4 downto 0);
			MEM_DATA_O 			: OUT  STD_LOGIC_VECTOR (31 downto 0)
			);
end MEM_WB;

architecture Behavioral of MEM_WB is

begin

process(clk, RST)

	begin
		if(RST='1') then 
		
			ALU_DATA_O 			<= std_logic_vector(to_unsigned(0,32));
			RF_WRDATA_SEL_O 	<= '0';
			RF_WREN_O 			<= '0';
			RF_A_O 				<= std_logic_vector(to_unsigned(0,32)) ;
			RF_B_O 				<= std_logic_vector(to_unsigned(0,32)) ;
			IMMED_O 				<= std_logic_vector(to_unsigned(0,32)) ;
			RF_WR_ADDR_O 		<= std_logic_vector(to_unsigned(0,5)) ;
			MEM_DATA_O        <= std_logic_vector(to_unsigned(0,32)) ;
			
		elsif(rising_edge(clk)) then 
			
			ALU_DATA_O 			<= ALU_DATA ;
			RF_WRDATA_SEL_O 	<= RF_WRDATA_SEL ;
			RF_WREN_O 			<= RF_WREN ;
			RF_A_O 				<= RF_A ;
			RF_B_O 				<= RF_B ;
			IMMED_O 				<= IMMED ;
			RF_WR_ADDR_O 		<= RF_WR_ADDR ;
			MEM_DATA_O        <= MEM_DATA ;
			
		end if;
end process;

end Behavioral;


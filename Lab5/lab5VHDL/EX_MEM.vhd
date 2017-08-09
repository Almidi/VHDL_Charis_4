library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity EX_MEM is
Port ( 	CLK : in  STD_LOGIC;
			RST : in  STD_LOGIC;
 
			ALU_DATA 			: in  STD_LOGIC_VECTOR (31 downto 0);
			RF_WRDATA_SEL 		: in  STD_LOGIC;
			RF_WREN 				: in  STD_LOGIC;
			W_B_SEL 				: in  STD_LOGIC;
			MEM_WREN 			: in  STD_LOGIC;
			RF_A 					: in  STD_LOGIC_VECTOR (31 downto 0);
			RF_B 					: in  STD_LOGIC_VECTOR (31 downto 0);
			IMMED 				: in  STD_LOGIC_VECTOR (31 downto 0);
			RF_WR_ADDR 			: in  STD_LOGIC_VECTOR (4 downto 0);
		  
			ALU_DATA_O 			: OUT  STD_LOGIC_VECTOR (31 downto 0);
			RF_WRDATA_SEL_O 	: OUT  STD_LOGIC;
			RF_WREN_O 			: OUT  STD_LOGIC;
			TEMP_REG_WR_O 		: OUT  STD_LOGIC;
			W_B_SEL_O 			: OUT  STD_LOGIC;
			MEM_WREN_O 			: OUT  STD_LOGIC;
			RF_A_O 				: OUT  STD_LOGIC_VECTOR (31 downto 0);
			RF_B_O 				: OUT  STD_LOGIC_VECTOR (31 downto 0);
			IMMED_O 				: OUT  STD_LOGIC_VECTOR (31 downto 0);
			RF_WR_ADDR_O 		: OUT  STD_LOGIC_VECTOR (4 downto 0)	  
			);
end EX_MEM;

architecture Behavioral of EX_MEM is

begin

process(clk, RST)
	begin
		if(RST='1') then 
		
			ALU_DATA_O 			<= std_logic_vector(to_unsigned(0,32));
			RF_WRDATA_SEL_O 	<= '0';
			RF_WREN_O 			<= '0';
 			W_B_SEL_O 			<= '0';
			MEM_WREN_O 			<= '0' ;
			RF_A_O 				<= std_logic_vector(to_unsigned(0,32)) ;
			RF_B_O 				<= std_logic_vector(to_unsigned(0,32)) ;
			IMMED_O 				<= std_logic_vector(to_unsigned(0,32)) ;
			RF_WR_ADDR_O 		<= std_logic_vector(to_unsigned(0,5)) ;
			
		elsif(rising_edge(clk)) then 
			
			ALU_DATA_O 			<= ALU_DATA ;
			RF_WRDATA_SEL_O 	<= RF_WRDATA_SEL ;
			RF_WREN_O 			<= RF_WREN ;
 			W_B_SEL_O 			<= W_B_SEL ;
			MEM_WREN_O 			<= MEM_WREN ;
			RF_A_O 				<= RF_A ;
			RF_B_O 				<= RF_B ;
			IMMED_O 				<= IMMED ;
			RF_WR_ADDR_O 		<= RF_WR_ADDR ;
			
		end if;
end process;


end Behavioral;


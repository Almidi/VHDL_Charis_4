
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MEMSTAGE is
    Port ( Clk : in  STD_LOGIC;
           Mem_WrEn : in  STD_LOGIC;
           ALU_MEM_Addr : in  STD_LOGIC_VECTOR (31 downto 0);
           MEM_DataIn : in  STD_LOGIC_VECTOR (31 downto 0);
           MEM_DataOut : out  STD_LOGIC_VECTOR (31 downto 0);
			  W_B_SEL : in  STD_LOGIC);
			  
end MEMSTAGE;

architecture Behavioral of MEMSTAGE is

SIGNAL MEM_DataInTemp : STD_LOGIC_VECTOR (31 downto 0);
SIGNAL MEM_DataOutTemp : STD_LOGIC_VECTOR (31 downto 0);


component Data_MEM port (clk : in std_logic;
								we : in std_logic;
								addr : in std_logic_vector(9 downto 0);
								din : in std_logic_vector(31 downto 0);
								dout : out std_logic_vector(31 downto 0));
end component;

begin

	myMemory : Data_MEM port map ( Clk => Clk,
										    we => MEM_WrEn,
										    addr => "00"& ALU_MEM_Addr(9 downto 2),
										    din => MEM_DataInTemp,
										    dout => MEM_DataOutTemp
										   );
	
	
	
WITH W_B_SEL SELECT
					
	MEM_DataInTemp <=  "000000000000000000000000" & MEM_DataIn(7 DOWNTO 0) WHEN '0' ,
				       MEM_DataIn WHEN OTHERS;
WITH W_B_SEL SELECT

	MEM_DataOut <=  "000000000000000000000000" & MEM_DataOutTemp(7 DOWNTO 0) WHEN '0' ,
				       MEM_DataOutTemp WHEN OTHERS;
				


end Behavioral;


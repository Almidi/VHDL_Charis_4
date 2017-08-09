---------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity DECSTAGE is Port ( Instr : in  STD_LOGIC_VECTOR (31 downto 0);
								  RF_WrEn : in  STD_LOGIC;
							     ALU_out : in  STD_LOGIC_VECTOR (31 downto 0);
							     MEM_out : in  STD_LOGIC_VECTOR (31 downto 0);
		   					  RF_WrData_sel : in  STD_LOGIC;
			   				  RF_B_sel : in  STD_LOGIC;
				   			  Clk : in  STD_LOGIC;
					   		  Immed : out  STD_LOGIC_VECTOR (31 downto 0);
						   	  RF_A : out  STD_LOGIC_VECTOR (31 downto 0);
							     RF_B : out  STD_LOGIC_VECTOR (31 downto 0);
								  RST : IN STD_LOGIC
								  );
end DECSTAGE;

architecture Behavioral of DECSTAGE is

COMPONENT MUX2X1_5B is
    Port ( In0 : in  STD_LOGIC_VECTOR (4 downto 0);
           In1 : in  STD_LOGIC_VECTOR (4 downto 0);
           S : in  STD_LOGIC;
           Output : out  STD_LOGIC_VECTOR (4 downto 0));
end COMPONENT;

COMPONENT MUX2TO1 is
    Port ( In0 : in  STD_LOGIC_VECTOR (31 downto 0);
           In1 : in  STD_LOGIC_VECTOR (31 downto 0);
           S : in  STD_LOGIC;
           Output : out  STD_LOGIC_VECTOR (31 downto 0));
end COMPONENT;

COMPONENT REGISTER_FILE is
    Port ( ARD1 : in  STD_LOGIC_VECTOR (4 downto 0);
           ARD2 : in  STD_LOGIC_VECTOR (4 downto 0);
           AWR : in  STD_LOGIC_VECTOR (4 downto 0);
           DOUT1 : out  STD_LOGIC_VECTOR (31 downto 0);
           DOUT2 : out  STD_LOGIC_VECTOR (31 downto 0);
           DIN : in  STD_LOGIC_VECTOR (31 downto 0);
           WREN : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
			  RST: IN STD_LOGIC);
end COMPONENT;

SIGNAL MUX5BOUT : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL DATAMUXOUT : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL SIGNEXTEND : STD_LOGIC_VECTOR(15 DOWNTO 0);

begin

REGISTERFILE : REGISTER_FILE PORT MAP (
					  ARD1 => Instr(25 downto 21),
					  ARD2 => MUX5BOUT,
					  AWR => INSTR(20 DOWNTO 16),
					  DOUT1 => RF_A,
					  DOUT2 => RF_B,
					  DIN => DATAMUXOUT,
					  WREN => RF_WrEn,
					  CLK => CLK,
					  RST => RST
					  );
					  
READMUX : MUX2X1_5B PORT MAP 
				( In0 => INSTR (15 DOWNTO 11),
              In1 => INSTR (20 DOWNTO 16),
				  S => RF_B_SEL ,
              Output => MUX5BOUT
				  );	

WRITEMUX : MUX2TO1 PORT MAP 
				( In0 => ALU_OUT,
              In1 => MEM_OUT,
				  S => RF_WRDATA_SEL,
              Output => DATAMUXOUT
				  );				  


with INSTR(15) select
	SIGNEXTEND <= "0000000000000000" when '0',
					  "1111111111111111" when others;


with INSTR(31 downto 26) select

	IMMED <= SIGNEXTEND & INSTR(15 DOWNTO 0) WHEN "111000",                     -- li
				INSTR(15 DOWNTO 0) & "0000000000000000" WHEN "111001",             -- lui
				SIGNEXTEND & INSTR(15 DOWNTO 0) WHEN "110000",                     -- addi
				"0000000000000000" & INSTR(15 DOWNTO 0) WHEN "110010",             -- andi
				"0000000000000000" & INSTR(15 DOWNTO 0) WHEN "110011",             -- ori
				SIGNEXTEND(13 DOWNTO 0) & INSTR(15 DOWNTO 0) & "00" WHEN "111111", -- b
				SIGNEXTEND(13 DOWNTO 0) & INSTR(15 DOWNTO 0) & "00" WHEN "000000", -- beq
				SIGNEXTEND(13 DOWNTO 0) & INSTR(15 DOWNTO 0) & "00" WHEN "000001", -- bne
				SIGNEXTEND & INSTR(15 DOWNTO 0) WHEN "000011",                     -- lb
				SIGNEXTEND & INSTR(15 DOWNTO 0) WHEN "000111",                     -- sb
				SIGNEXTEND & INSTR(15 DOWNTO 0) WHEN "001111",                     -- lw
				SIGNEXTEND & INSTR(15 DOWNTO 0) WHEN "011111",                     -- sw
				"00000000000000000000000000000000" WHEN OTHERS;

end Behavioral;


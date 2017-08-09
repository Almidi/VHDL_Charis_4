----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity CONTROL is  PORT (  Clk : in STD_LOGIC;
									Rst : in STD_LOGIC;
									ALU_BIN_SEL : OUT  STD_LOGIC;
									ALU_FUNC : OUT  STD_LOGIC_VECTOR (3 downto 0);
									RF_WrEn : OUT  STD_LOGIC;
									RF_WrData_sel : OUT  STD_LOGIC;
									RF_B_sel : OUT  STD_LOGIC;
									RF_A : IN  STD_LOGIC_VECTOR (31 downto 0);
			                  RF_B : IN  STD_LOGIC_VECTOR (31 downto 0);
									Temp_REG_Wr :OUT STD_LOGIC;
									PC_sel : OUT  STD_LOGIC;
									PC_LdEn : OUT  STD_LOGIC;
									Instr : IN  STD_LOGIC_VECTOR (31 downto 0);
									Mem_WrEn : OUT  STD_LOGIC;
									W_B_SEL : OUT  STD_LOGIC
									);		


end CONTROL;

architecture Behavioral of CONTROL is

TYPE FSM_STATE is (START, NOP, WAIT_STAGE,
						 RTYPE, RTYPE_WR, 
						 JTYPE, JTYPE_NL, 
						 ITYPE, ITYPE_WR, 
						 MEM_ITYPE, MEM_ITYPE_L, MEM_ITYPE_L_B, MEM_ITYPE_S);
signal STATE: FSM_STATE; 


SIGNAL RF_COMP : STD_LOGIC ;
SIGNAL B_COMP : STD_LOGIC ;
SIGNAL LI_AS : STD_LOGIC_VECTOR (3 downto 0);


begin

	RF_COMP <= '1' when (RF_A=RF_B)
				 else '0';
				 
	B_COMP <= (RF_COMP XOR Instr(26)) OR INSTR(27); 
	
	LI_AS  <= "1111" when (INSTR(31 downto 26)="111000" OR INSTR(31 downto 26)="111001")
				 else "0000";
				 
	W_B_SEL <= INSTR(29);
	
	RF_B_sel <= '0' when (INSTR(31 downto 26)="100000")
				 else '1';
				 
	ALU_BIN_SEL <= '0' when (INSTR(31 downto 26)="100000")
				 else '1';	
	
	--RF_WrData_sel <= '1' when (INSTR(31 downto 26)="000011" OR INSTR(31 downto 26)="000111" OR INSTR(31 downto 26)="001111" OR INSTR(31 downto 26)="011111")
	--			 else '0' ;


	FSM:process
	begin
		WAIT UNTIL clk'EVENT AND clk='1';  
		if(Rst='1') then		--Hard reset
			STATE<=START;
		else						--NOT reset
			case STATE is			
			
				when START=>	                                   --OPCODES -> FSM starting point
					if (INSTR = "00000000000000000000000000000000") then
						STATE<= NOP;
					elsif(INSTR(31 downto 26)="100000") then --R TYPE
						STATE<= RTYPE;
						
					elsif(INSTR(31 downto 26)="111000") then --I TYPE load immediate
						STATE<= ITYPE;
					elsif(INSTR(31 downto 26)="111001") then --I TYPE load upper immed
						STATE<= ITYPE;
					elsif(INSTR(31 downto 26)="110000") then --I TYPE add immed
						STATE<= ITYPE;
					elsif(INSTR(31 downto 26)="110010") then --I TYPE and immed
						STATE<= ITYPE;
					elsif(INSTR(31 downto 26)="110011") then --I TYPE or immed
						STATE<= ITYPE;
						
					elsif(INSTR(31 downto 26)="111111") then --J TYPE branch
						STATE<= JTYPE;	
					elsif(INSTR(31 downto 26)="000000") then --J TYPE branch equal
						STATE<= JTYPE;
					elsif(INSTR(31 downto 26)="000001") then --J TYPE branch not equal
					   STATE<= JTYPE;
						
					elsif(INSTR(31 downto 26)="000011") then --load byte
						STATE<= MEM_ITYPE;
					elsif(INSTR(31 downto 26)="000111") then --store byte
						STATE<= MEM_ITYPE;
					elsif(INSTR(31 downto 26)="001111") then --load word
						STATE<= MEM_ITYPE;
					elsif(INSTR(31 downto 26)="011111") then --store word
						STATE<= MEM_ITYPE;
					end if;
				
				--Individual work on each case
				--START, NOP, RTYPE, RTYPE_WR, JTYPE, JTYPE_NL, ITYPE, ITYPE_WR, MEM_ITYPE, MEM_ITYPE_L, MEM_ITYPE_S);
				when NOP =>
					STATE <= WAIT_STAGE;
				 	
				when RTYPE =>
					STATE <= RTYPE_WR;
					
				when RTYPE_WR =>
					STATE <= WAIT_STAGE;
					
				when JTYPE =>
					STATE <= JTYPE_NL;
					
				when JTYPE_NL =>
					STATE <= WAIT_STAGE;
					
				when ITYPE=>
					STATE<= ITYPE_WR;
					
				when ITYPE_WR=>
					STATE<= WAIT_STAGE;
					
				when MEM_ITYPE=>
				   if (INSTR(31 downto 26)="000011")   then
						STATE<= MEM_ITYPE_L;
					elsif(INSTR(31 downto 26)="001111") then 
						STATE<= MEM_ITYPE_L;
					elsif(INSTR(31 downto 26)="000111") then 
						STATE<= MEM_ITYPE_S;
					else
						STATE<= MEM_ITYPE_S;
					END IF ;
					
				when MEM_ITYPE_L=>
					STATE<= MEM_ITYPE_L_B;
					
				when MEM_ITYPE_L_B=>
					STATE<= WAIT_STAGE;
					
				when MEM_ITYPE_S=>
					STATE<= WAIT_STAGE;
					
				when WAIT_STAGE=>
					STATE<= START;

			end case;
		end if;	
	end process;
	
	--Output assesment
	
	with state select
		ALU_FUNC <=      INSTR(3 DOWNTO 0) when RTYPE,
							  INSTR(3 DOWNTO 0) when RTYPE_WR,	
							  
							  (INSTR(29 downto 26) or LI_AS) when ITYPE,
							  (INSTR(29 downto 26) or LI_AS) when ITYPE_WR, 
							  
					        "0000" when others;
							  
	--with state select
	--	ALU_BIN_SEL <=   '1' when ITYPE,
	--						  '1' when ITYPE_WR, 
	--						  
	--						  '1' when MEM_ITYPE,
	--						  '1' when MEM_ITYPE_L,
	--						  '1' when MEM_ITYPE_S,
	--						  
	--				        '0' when others;
							  
	with state select	
		RF_WrEn <=       '1' when RTYPE_WR,	
							  '1' when ITYPE_WR,	
							  '1' when MEM_ITYPE_L_B,	
							  
					        '0' when others;
							  
	with state select				 
		RF_WrData_sel <= '1' when MEM_ITYPE,
							  '1' when MEM_ITYPE_L,
							  '1' when MEM_ITYPE_L_B,
							  '1' when MEM_ITYPE_S,
							  
					        '0' when others;
							  
	--with state select	
	--	RF_B_sel <=      '1' when ITYPE,
	--						  '1' when ITYPE_WR, 
	--						  
	--						  '1' when MEM_ITYPE,
	--						  '1' when MEM_ITYPE_L,
	--						  '1' when MEM_ITYPE_S,
	--						  
	--						  '1' when JTYPE,
	--						  '1' when JTYPE_NL,
	--						  
	--				        '0' when others;
							  
	with state select	
		Temp_REG_Wr <=   '1' when ITYPE,
							  '1' when JTYPE,
							  '1' when RTYPE,
							  '1' when MEM_ITYPE,
					        '0' when others;
							  
	with state select	
		PC_sel <=        B_COMP when JTYPE,	
		                 B_COMP when JTYPE_NL,
					        '0' when others;
	
	with state select	
		PC_LdEn <=       
							  '1' when NOP,
							  '1' when RTYPE_WR,
							  '1' when JTYPE_NL,
							  '1' when ITYPE_WR,
							  '1' when MEM_ITYPE_L_B,
							  '1' when MEM_ITYPE_S,
					        '0' when others;
							  
	with state select	
		Mem_WrEn <=      '1' when MEM_ITYPE_S,	
					        '0' when others;
							  
	
							  


end Behavioral;


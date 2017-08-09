----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity CONTROL is  PORT (  Clk : in STD_LOGIC;
									Rst : in STD_LOGIC;
									ALU_BIN_SEL : OUT  STD_LOGIC;
									ALU_FUNC : OUT  STD_LOGIC_VECTOR (5 downto 0);
									RF_WrEn : OUT  STD_LOGIC;
									RF_WrData_sel : OUT  STD_LOGIC;
									RF_B_sel : OUT  STD_LOGIC;
									RF_A : IN  STD_LOGIC_VECTOR (31 downto 0);
			                  RF_B : IN  STD_LOGIC_VECTOR (31 downto 0);
									Temp_REG_Wr :OUT STD_LOGIC;
									PC_sel : OUT  STD_LOGIC;
									PC_Add_Sel : OUT  STD_LOGIC;
									PC_LdEn : OUT  STD_LOGIC;
									Instr : IN  STD_LOGIC_VECTOR (31 downto 0);
									Mem_WrEn : OUT  STD_LOGIC;
									MEM_OUT : IN  STD_LOGIC_VECTOR (31 downto 0);
									W_B_SEL : OUT  STD_LOGIC;
									UNPACK_CONTROL : OUT  STD_LOGIC_VECTOR (3 downto 0);
									QUADREG_DOUT : IN  STD_LOGIC_VECTOR (31 downto 0);
									QUADREG_WEN : OUT  STD_LOGIC_VECTOR (4 downto 0);
									MEM_SEL : OUT  STD_LOGIC;
									IMMED_OFFSET : OUT  STD_LOGIC_VECTOR (31 downto 0)
									
									);


end CONTROL;

architecture Behavioral of CONTROL is

TYPE FSM_STATE is (START, 			NOP, 				WAIT_STAGE,
						 RTYPE, 			RTYPE_WR, 
						 JTYPE, 			JTYPE_NL, 
						 ITYPE, 			ITYPE_WR, 
						 MEM_ITYPE, 	MEM_ITYPE_L, 	MEM_ITYPE_L_B, MEM_ITYPE_S, 
						 CMOV, 			CMOV_WR,
						 BERM, 			BERM_LD, 		BERM_PC,
						 BNEM, 			BNEM_LD_RS,		BNEM_LD_RD, 	BNEM_PC,
						 PACK, 			PACK_A, 			PACK_B, 			PACK_C, 		PACK_D, 		PACK_WR,
						 UNPACK, 		UNPACK_A, 		UNPACK_B, 		UNPACK_C, 	UNPACK_D 
						 );




signal STATE: FSM_STATE; 


SIGNAL RF_COMP : STD_LOGIC ;
SIGNAL BERM_COMP : STD_LOGIC ;
SIGNAL RFB_ZERO : STD_LOGIC ;
SIGNAL B_COMP : STD_LOGIC ;
SIGNAL BNEM_COMP : STD_LOGIC ; 
SIGNAL LI_AS : STD_LOGIC_VECTOR (5 downto 0);


begin

	
	
	
	MEM_SEL <= '0' ;
	
	
	PC_ADD_SEL <= '1' when (INSTR(31 downto 26)="100111")
				 else '0';

	MEM_SEL <= '1' when (INSTR(31 downto 26)="111100")
				 else '0';
	
		
	RF_COMP <= '1' when (RF_A=RF_B) 
				 else '0';
				 
	BERM_COMP <= '1' WHEN (RF_B=MEM_OUT) 
				 else '0';
	
	BNEM_COMP <= '0' WHEN (QUADREG_DOUT = MEM_OUT) 
				 else '1';
	
				 
	RFB_ZERO <= '1' when (RF_B = "00000000000000000000000000000000")
				 else '0';
				 
	B_COMP <= (RF_COMP XOR Instr(26)) OR INSTR(27); 
	
	
	LI_AS  <= "111111" when (INSTR(31 downto 26)="111000" OR INSTR(31 downto 26)="111001")
				 else "000000";
				 
	W_B_SEL <= '1' WHEN (INSTR(29) = '1' OR INSTR(31 downto 26)="100111")
				 else '0' ;
	
	
	RF_B_sel <= '0' when (INSTR(31 downto 26)="100000" OR INSTR(31 downto 26)="100001" OR INSTR(31 downto 26)="100011")
				 else '1';
				 
	ALU_BIN_SEL <= '0' when (INSTR(31 downto 26)="100000" OR INSTR(31 downto 26)="100001" OR INSTR(31 downto 26)="100011" OR INSTR(31 downto 26)="101111")
				 else '1';	
	

	FSM:process
	begin
		WAIT UNTIL clk'EVENT AND clk='1';  
		if(Rst='1') then		--Hard reset
			STATE<=START;
		else						--NOT reset
			case STATE is	

			   ----------------------------------------------------------------------------- START
			
				when START=>	             
					if (INSTR = "00000000000000000000000000000000") then
						STATE<= NOP;
					elsif(INSTR(31 downto 26)="100000" OR INSTR(31 downto 26)="100011") then --R TYPE
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
					elsif(INSTR(31 downto 26)="100001") then --CMOV
						STATE<= CMOV;
					elsif(INSTR(31 downto 26)="100111") then --BERM
						STATE<= BERM;
					elsif(INSTR(31 downto 26)="101111") then --BNEM
						STATE<= BNEM;		
					elsif(INSTR(31 downto 26)="111100") then --PACK
						STATE<= PACK;
					elsif(INSTR(31 downto 26)="111110") then --UNPACK
						STATE<= UNPACK;
					
					end if;
				
				----------------------------------------------------------------------------- NOP
				when NOP =>
					STATE <= WAIT_STAGE;
				 	
				----------------------------------------------------------------------------- RTYPE
				
				when RTYPE =>
					STATE <= RTYPE_WR;
					
				when RTYPE_WR =>
					STATE <= WAIT_STAGE;
					
				-----------------------------------------------------------------------------	JTYPE
					
				when JTYPE =>
					STATE <= JTYPE_NL;
					
				when JTYPE_NL =>
					STATE <= WAIT_STAGE;
					
				-----------------------------------------------------------------------------	ITYPE	
					
				when ITYPE=>
					STATE<= ITYPE_WR;
					
				when ITYPE_WR=>
					STATE<= WAIT_STAGE;
					
				-----------------------------------------------------------------------------MEM TYPE
				
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
					
				-----------------------------------------------------------------------------CMOV
				
				when CMOV =>
					if (RFB_ZERO = '1')   then
						STATE<= NOP;
					else
						STATE<= CMOV_WR;
					END IF ; 
					
				when CMOV_WR =>
					STATE <= WAIT_STAGE;
					
				-----------------------------------------------------------------------------BERM
				
				when BERM =>
					STATE <= BERM_LD;
					
				when BERM_LD =>
					STATE <= BERM_PC;
					
				when BERM_PC =>
					STATE <= WAIT_STAGE;
					
					
				-----------------------------------------------------------------------------BNEM
				
				when BNEM =>
					STATE <= BNEM_LD_RS;
					
				when BNEM_LD_RS =>
					STATE <= BNEM_LD_RD;	
					
				when BNEM_LD_RD =>
					STATE <= BNEM_PC;
					
				when BNEM_PC =>
					STATE <= WAIT_STAGE;
				
				-----------------------------------------------------------------------------PACK
				 
				when PACK =>
					STATE <= PACK_A;
					
				when PACK_A =>
					STATE <= PACK_B;	
					
				when PACK_B =>
					STATE <= PACK_C;
					
				when PACK_C =>
					STATE <= PACK_D;		
				
				when PACK_D =>
					STATE <= PACK_WR;
					
				when PACK_WR =>
					STATE <= WAIT_STAGE;	
					
				-----------------------------------------------------------------------------UNPACK
				 
				when UNPACK =>
					STATE <= UNPACK_A;
					
				when UNPACK_A =>
					STATE <= UNPACK_B;	
					
				when UNPACK_B =>
					STATE <= UNPACK_C;
					
				when UNPACK_C =>
					STATE <= UNPACK_D;		
				
				when UNPACK_D =>
					STATE <= WAIT_STAGE;
					
					
				-----------------------------------------------------------------------------WAIT_STAGE	
				
				when WAIT_STAGE=>
					STATE<= START;
					

			end case;
		end if;	
	end process;
	
	--Output assesment
	
	with state select
		ALU_FUNC <=      INSTR(5 DOWNTO 0) when RTYPE,
							  INSTR(5 DOWNTO 0) when RTYPE_WR,	
							  
							  (INSTR(31 downto 26) or LI_AS) when ITYPE,
							  (INSTR(31 downto 26) or LI_AS) when ITYPE_WR, 
							  
							  "011111" when CMOV,
							  "011111" when CMOV_WR,
							  
							  "111111" when BERM,
							  "111111" when BERM_LD,
							  "111111" when BERM_PC,
							  
							  
							  "011111" when BNEM,
							  "011111" when BNEM_LD_RS,
							  "111111" when BNEM_LD_RD,
							  "111111" when BNEM_PC,
							  
							  --"011111" when PACK,
							  --"011111" when PACK_A,
							  --"011111" when PACK_B,
							  --"011111" when PACK_C,
							  --"011111" when PACK_D,
							  --"011111" when PACK_WR,
							  
							  
							  
					        "110000" when others;
							  
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
							  '1' when CMOV_WR,
							  '1' when PACK_WR,
					        '0' when others;
							  
	with state select				 
		RF_WrData_sel <= '1' when MEM_ITYPE,
							  '1' when MEM_ITYPE_L,
							  '1' when MEM_ITYPE_L_B,
							  '1' when MEM_ITYPE_S,
							  
							  '1' when PACK,
							  '1' when PACK_A,
							  '1' when PACK_B,
							  '1' when PACK_C,
							  '1' when PACK_D,
							  '1' when PACK_WR,
							  
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
		Temp_REG_Wr <=   '1' when START,
		
							  '1' when ITYPE,
							  '1' when JTYPE,
							  '1' when RTYPE,
							  '1' when MEM_ITYPE,
							  '1' when CMOV,
							  '1' when BERM,
							  
							  '1' when BNEM,
							  '1' when BNEM_LD_RS,
							  '1' when BNEM_LD_RD,
							  '1' when BNEM_PC,
							  
							  '1' when PACK,
							  '1' when PACK_A,
							  '1' when PACK_B,
							  '1' when PACK_C,
							  '1' when PACK_D,
							  
							  '1' when UNPACK,
							  '1' when UNPACK_A,
							  '1' when UNPACK_B,
							  '1' when UNPACK_C,
							  '1' when UNPACK_D,
							  
							  
					        '0' when others;
							  
	with state select	  
		PC_sel <=        B_COMP when JTYPE,	
		                 B_COMP when JTYPE_NL,
							  
							  BERM_COMP when BERM,
							  BERM_COMP when BERM_LD,
							  BERM_COMP when BERM_PC,
							  
							  
							  BNEM_COMP when BNEM,
							  BNEM_COMP when BNEM_LD_RS,
							  BNEM_COMP when BNEM_LD_RD,
							  BNEM_COMP when BNEM_PC,
							  
					        '0' when others;
	
	with state select	
		PC_LdEn <=       
							  '1' when NOP,
							  '1' when RTYPE_WR,
							  '1' when JTYPE_NL,
							  '1' when ITYPE_WR,
							  '1' when MEM_ITYPE_L_B,
							  '1' when MEM_ITYPE_S,
							  '1' when CMOV_WR,
							  '1' when BERM_PC,
							  '1' when BNEM_PC,
							  '1' when PACK_WR,
							  '1' when UNPACK_D,
					        '0' when others;
							  
	with state select	
		Mem_WrEn <=      '1' when MEM_ITYPE_S,
								
							  '1' when UNPACK_A,
							  '1' when UNPACK_B,
							  '1' when UNPACK_C,
							  '1' when UNPACK_D,
								
					        '0' when others;
							  
	with state select	
		QUADREG_WEN <=   "00001" when BNEM_LD_RS,
								
							  "00010" when PACK_A,
							  "00100" when PACK_B,
							  "01000" when PACK_C,
							  "10000" when PACK_D,
		
					        "00000" when others;
							  
	with state select	
		IMMED_OFFSET <=  "00000000000000000000000000000100" when PACK_A,
							  "00000000000000000000000000001000" when PACK_B,
							  "00000000000000000000000000001100" when PACK_C,
							  "00000000000000000000000000001100" when PACK_D,
							  
							  "00000000000000000000000000000100" when UNPACK_B,
							  "00000000000000000000000000001000" when UNPACK_C,
							  "00000000000000000000000000001100" when UNPACK_D,
							  
					        "00000000000000000000000000000000" when others;
							  
	with state select	
		UNPACK_CONTROL <="0001" when UNPACK_A,
							  "0010" when UNPACK_B,
							  "0100" when UNPACK_C,
							  "1000" when UNPACK_D,
		
  		 		           "0000" when others;					  
             

							


end Behavioral;


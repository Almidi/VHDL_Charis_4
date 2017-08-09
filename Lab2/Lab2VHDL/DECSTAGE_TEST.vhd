--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY DECSTAGE_TEST IS
END DECSTAGE_TEST;
 
ARCHITECTURE behavior OF DECSTAGE_TEST IS 
 
    
 
    COMPONENT DECSTAGE
    PORT(
         Instr : IN  std_logic_vector(31 downto 0);
         RF_WrEn : IN  std_logic;
         ALU_out : IN  std_logic_vector(31 downto 0);
         MEM_out : IN  std_logic_vector(31 downto 0);
         RF_WrData_sel : IN  std_logic;
         RF_B_sel : IN  std_logic;
         Clk : IN  std_logic;
         Immed : OUT  std_logic_vector(31 downto 0);
         RF_A : OUT  std_logic_vector(31 downto 0);
         RF_B : OUT  std_logic_vector(31 downto 0);
         RST : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Instr : std_logic_vector(31 downto 0) := (others => '0');
   signal RF_WrEn : std_logic := '0';
   signal ALU_out : std_logic_vector(31 downto 0) := (others => '0');
   signal MEM_out : std_logic_vector(31 downto 0) := (others => '0');
   signal RF_WrData_sel : std_logic := '0';
   signal RF_B_sel : std_logic := '0';
   signal Clk : std_logic := '0';
   signal RST : std_logic := '0';

 	--Outputs
   signal Immed : std_logic_vector(31 downto 0);
   signal RF_A : std_logic_vector(31 downto 0);
   signal RF_B : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DECSTAGE PORT MAP (
          Instr => Instr,                 --IN <--
          RF_WrEn => RF_WrEn,             --IN <--
          ALU_out => ALU_out,             --IN <--
          MEM_out => MEM_out,             --IN <--
          RF_WrData_sel => RF_WrData_sel, --IN <--
          RF_B_sel => RF_B_sel,           --IN <--
          Clk => Clk,    						--IN
          Immed => Immed,                 --OUT
          RF_A => RF_A, 						--OUT
          RF_B => RF_B,  						--OUT
          RST => RST     						--IN
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   
   stim_proc: process
   begin	
	
	   ------------------------------------------------------------------------------------------------------
		--Process with Registers only
		
      RST <= '1' ;
      wait for 100 ns;	
		RST <= '0' ;
		
		RF_B_sel <= '0' ;                              --RF_B = 15 - 11 = rt 
		
		RF_WrData_sel <= '0';                          --ALU_OUT
		RF_WrEn<='1';                                  --Enable writing on register

																	  -- opcode   rs    rd    rt    sa   func    rd <= rs+rt
		Instr   <="10000000010000010001100000110000";  -- 100000  00010 00001 00011 00000 110000
		
		ALU_out <="00000000000011100000110000011101";  --00000000000011100000110000011101 = 920605
		MEM_out <="00000000000000111000000000011101";  --00000000000000111000000000011101 = 229405
		
		                                               --Expected : 
                                                     --
																	  --RF_A = 0
																	  --RF_B = 0
																	  --Write = 920605
																	  --Immed = 0
	   Wait for 10 ns ;
		
		RF_WrEn<='0';
	  
	   Wait for 50 ns ;
		
		------------------------------------------------------------------------------------------------------
		--Process with immediate
		
		RF_B_sel <= '0' ;                              
		
		RF_WrData_sel <= '1';                          --лел_OUT
		RF_WrEn<='1';                                  --Enable writing on register

																	  -- opcode   rs    rd    Immediate          rd<=SignExtend(Imm)
		Instr   <="11100000001000101100100000110000";  -- 111000  00001 00010 1100100000110000    rs<= 00001 to check previous Instruction
		
		ALU_out <="00000000000011100000110000011101";  --00000000000011100000110000011101 = 920605
		MEM_out <="00000000000000111000000000011101";  --00000000000000111000000000011101 = 229405
		
		                                               --Expected : 
                                                     --
																	  --RF_A = 920605
																	  --RF_B = 0
																	  --Write = 229405
																	  --
																	  --Immed = 11111111111111111100100000110000 = -14288
																	  
	   Wait for 10 ns ;
		
		RF_WrEn<='0';
	  
	   Wait for 50 ns ;
		
		------------------------------------------------------------------------------------------------------
      --Check for previous process NO WRITING
		
		RF_B_sel <= '1' ;                              
																	  --opcode   rs    rd    Immediate          rd<=SignExtend(Imm)
		Instr   <="11100000010000100000100000110000";  --111000  00010 00010 0000100000110000    rs<= 00010 to check previous Instruction
		                                               
																	  --Expected : 
                                                     --
																	  --RF_A = 229405
																	  --RF_B = 229405
																	  --Write = 229405
																	  --
																	  --Immed = 2096
																	  
	   Wait for 10 ns ;
		
		RF_WrEn<='0';
	  
	   Wait for 50 ns ;
		
		------------------------------------------------------------------------------------------------------
		--Branch process with immediate
		
		RF_B_sel <= '1' ;                               
		
		RF_WrData_sel <= '1';                          --лел_OUT
		RF_WrEn<='1';                                  --Enable writing on register

																	  -- opcode   rs    rd    Immediate          rd<=SignExtend(Imm)
		Instr   <="00000000001001110000000000000010";  -- 000000  00001 00111 0000000000000010    
		
		ALU_out <="00000000000011100000110000011101";  --00000000000011100000110000011101 = 920605
		MEM_out <="00000000000000111000000000011101";  --00000000000000111000000000011101 = 229405
		
		                                               --Expected : 
                                                     --
																	  --RF_A = 920605
																	  --RF_B = 0
																	  --Write = 229405
																	  --
																	  --Immed = 8
																	  
	   Wait for 10 ns ;
		
		RF_WrEn<='0';
	  
	   Wait for 50 ns ;
		
		

      wait;
   end process;

END;

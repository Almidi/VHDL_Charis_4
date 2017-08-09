--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY ALUSTAGE_TEST IS
END ALUSTAGE_TEST;
 
ARCHITECTURE behavior OF ALUSTAGE_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALUSTAGE
    PORT(
         RF_A : IN  std_logic_vector(31 downto 0);
         RF_B : IN  std_logic_vector(31 downto 0);
         IMMED : IN  std_logic_vector(31 downto 0);
         ALU_BIN_SEL : IN  std_logic;
         ALU_FUNC : IN  std_logic_vector(3 downto 0);
         ALU_OUT : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal RF_A : std_logic_vector(31 downto 0) := (others => '0');
   signal RF_B : std_logic_vector(31 downto 0) := (others => '0');
   signal IMMED : std_logic_vector(31 downto 0) := (others => '0');
   signal ALU_BIN_SEL : std_logic := '0';
   signal ALU_FUNC : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal ALU_OUT : std_logic_vector(31 downto 0);
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALUSTAGE PORT MAP (
          RF_A => RF_A,
          RF_B => RF_B,
          IMMED => IMMED,
          ALU_BIN_SEL => ALU_BIN_SEL,
          ALU_FUNC => ALU_FUNC,
          ALU_OUT => ALU_OUT
        );

 

   
   stim_proc: process
   begin		
                                                    --Data from Register File
		RF_A <=  "00000000000000000000000000001101";   --13
		RF_B <=  "00000000000000000000000000010011";	  --19 
		IMMED <= "00000000000000000000000000000001";   --1 Immediate
      wait for 100 ns;	
		
		ALU_BIN_SEL <= '0';   -- Operation in ALU with both inputs coming from Register File
		ALU_FUNC <= "0000" ;  -- ADD (Expected output --> 32)
		wait for 100 ns;	

      ALU_BIN_SEL <= '0';   -- Operation in ALU with both inputs coming from Register File
		ALU_FUNC <= "1100" ;  -- rl (Expected output --> RF_A --> "00000000000000000000000000011010" = 26)
		wait for 100 ns;	

      ALU_BIN_SEL <= '1';   -- Operation in ALU with Immediate
		ALU_FUNC <= "0000" ;  -- ADD (Expected output --> 14)
		wait for 100 ns;

		ALU_BIN_SEL <= '1';   -- Operation in ALU with Immediate
		ALU_FUNC <= "0011" ;  -- OR (Expected output --> "00000000000000000000000000001101" = 13)
		wait for 100 ns;
		
		RF_A <=  "10000000000000000000000000000000";  -- -?2147483648
		RF_B <=  "11111111111111111111111111111111";  -- -1	 
		wait for 100 ns;	
		
		ALU_BIN_SEL <= '0';   -- Operation in ALU with both inputs coming from Register File
		ALU_FUNC <= "0000" ;  -- ADD (Expected Overflow)
		wait for 100 ns;	
		
		ALU_BIN_SEL <= '0';   -- Operation in ALU with both inputs coming from Register File
		ALU_FUNC <= "1001";   -- srl (Expected output --> RF_A --> "01000000000000000000000000000000" = 1073741824)
		wait for 100 ns;	


      wait;
   end process;

END;

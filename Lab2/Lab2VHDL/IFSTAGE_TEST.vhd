LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY IFSTAGE_TEST IS
END IFSTAGE_TEST;
 
ARCHITECTURE behavior OF IFSTAGE_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IFSTAGE
    PORT(
         PC_Immed : IN  std_logic_vector(31 downto 0);
         PC_sel : IN  std_logic;
         PC_LdEn : IN  std_logic;
         Reset : IN  std_logic;
         Clk : IN  std_logic;
         Instr : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal PC_Immed : std_logic_vector(31 downto 0) := (others => '0');
   signal PC_sel : std_logic := '0';
   signal PC_LdEn : std_logic := '0';
   signal Reset : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal Instr : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IFSTAGE PORT MAP (
          PC_Immed => PC_Immed,
          PC_sel => PC_sel,
          PC_LdEn => PC_LdEn,
          Reset => Reset,
          Clk => Clk,
          Instr => Instr
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		Reset <= '1' ;                   -- RST
      wait for 100 ns;	
		Reset <= '0' ;                   -- Expected "00000000000000000000000000000001" (1)
      wait for Clk_period*2;
		
		PC_sel <= '0' ;
		PC_LdEn <= '1' ;                 -- Next Line
		
		wait for Clk_period*1;
		PC_LdEn <= '0' ;                 -- Expected "00000000000000000000000000000010" (2) 
		wait for Clk_period*2;
		
		PC_Immed <= "00000000000000000000000001000000" ; -- 64  (16 * 4)
		PC_sel <= '1' ;
		PC_LdEn <= '1' ;                 -- Skip 16 lines of Machine Code
		
		wait for Clk_period*1;
		PC_LdEn <= '0' ;                 -- Expected "00000000000000000000000000010011" (19)
		wait for Clk_period*2;
		
		PC_sel <= '0' ;
		PC_LdEn <= '1' ;                 -- Next Line
		
		wait for Clk_period*1;
		PC_LdEn <= '0' ;                 -- Expected "00000000000000000000000000000010" (20)
		wait for Clk_period*2;
		
		PC_Immed <= "11111111111111111111111111100000" ; -- -32 (-8 * 4)
		PC_sel <= '1' ;
		PC_LdEn <= '1' ;                 -- Skip 16 lines of Machine Code
		
		wait for Clk_period*1;
		PC_LdEn <= '0' ;                 -- Expected "00000000000000000000000000000010" (13)
		wait for Clk_period*10;
		Reset <= '1' ;                   -- RST
		
		wait ;
   end process;

END;

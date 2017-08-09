LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY CPU_TEST IS
END CPU_TEST;
 
ARCHITECTURE behavior OF CPU_TEST IS 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Datapath
    PORT(
         Clk : IN  std_logic;
         Rst : IN  std_logic;
			M_FLAG : OUT STD_LOGIC 
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Rst : std_logic := '0';
	
	--Outputs
	SIGNAL M_FLAG : STD_LOGIC ;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Datapath PORT MAP (
          Clk => Clk,
          Rst => Rst,
			 M_FLAG => M_FLAG
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
      Rst <= '1' ;
      wait for 100 ns;	
		Rst <= '0' ;
      wait for Clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

ENTITY PROCESSOR_TEST IS
END PROCESSOR_TEST;
 
ARCHITECTURE behavior OF PROCESSOR_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Processor
    PORT(
         CLK : IN  std_logic;
         RST : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Processor PORT MAP (
          CLK => CLK,
          RST => RST
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		RST <= '1' ;
      wait for 100 ns;
		RST <= '0' ;

      wait for CLK_period*300;

      -- insert stimulus here 

      wait;
   end process;

END;

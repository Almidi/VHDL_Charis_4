
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY CACHE_TEST IS
END CACHE_TEST;
 
ARCHITECTURE behavior OF CACHE_TEST IS 
 

 
    COMPONENT CACHE
    PORT(
         clk : IN  std_logic;
         addr : IN  std_logic_vector(4 downto 0);
         dout : OUT  std_logic_vector(131 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal addr : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal dout : std_logic_vector(131 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CACHE PORT MAP (
          clk => clk,
          addr => addr,
          dout => dout
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      ADDR <= "11111";
      wait for 100 ns;
		ADDR <= "00000";
      wait for 100 ns;
		ADDR <= "00001";
      wait for 100 ns;

      -- insert stimulus here 

      wait;
   end process;

END;

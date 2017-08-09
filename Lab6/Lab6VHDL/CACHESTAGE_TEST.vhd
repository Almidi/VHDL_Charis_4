
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY CACHESTAGE_TEST IS
END CACHESTAGE_TEST;
 
ARCHITECTURE behavior OF CACHESTAGE_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CACHE_STAGE
    PORT(
         clk : IN  std_logic;
         addr : IN  std_logic_vector(31 downto 0);
         dout : OUT  std_logic_vector(31 downto 0);
         MISS : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal addr : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal dout : std_logic_vector(31 downto 0);
   signal MISS : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CACHE_STAGE PORT MAP (
          clk => clk,
          addr => addr,
          dout => dout,
          MISS => MISS
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
		
		addr <= "00000000000000000000000000000011";

      wait for clk_period*10;
		
		addr <= "00000000000000000000000000000100";

      -- insert stimulus here 

      wait;
   end process;

END;


LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY MEMSTAGE_TEST IS
END MEMSTAGE_TEST;
 
ARCHITECTURE behavior OF MEMSTAGE_TEST IS 
 
    
 
    COMPONENT MEMSTAGE
    PORT(
         Clk : IN  std_logic;
         Mem_WrEn : IN  std_logic;
         ALU_MEM_Addr : IN  std_logic_vector(31 downto 0);
         MEM_DataIn : IN  std_logic_vector(31 downto 0);
         MEM_DataOut : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Mem_WrEn : std_logic := '0';
   signal ALU_MEM_Addr : std_logic_vector(31 downto 0) := (others => '0');
   signal MEM_DataIn : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal MEM_DataOut : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MEMSTAGE PORT MAP (
          Clk => Clk,
          Mem_WrEn => Mem_WrEn,
          ALU_MEM_Addr => ALU_MEM_Addr,
          MEM_DataIn => MEM_DataIn,
          MEM_DataOut => MEM_DataOut
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
		
		Mem_WrEn <= '0' ;
      wait for Clk_period*10;
		
		ALU_MEM_Addr <= "00000000000000000000000000000001" ;
		MEM_DataIn   <= "00000000000000000000000000000001" ;
		wait for Clk_period;
      Mem_WrEn <= '1' ;
      wait for Clk_period*5;
		Mem_WrEn <= '0' ;
      wait for Clk_period*5;
		
		ALU_MEM_Addr <= "00000000000000000000000000000010" ;
		MEM_DataIn   <= "00000000000000000000000000000010" ;
		wait for Clk_period;
      Mem_WrEn <= '1' ;
      wait for Clk_period*5;
		Mem_WrEn <= '0' ;
      wait for Clk_period*5;
		
		ALU_MEM_Addr <= "00000000000000000000000000000011" ;
		MEM_DataIn   <= "00000000000000000000000000000011" ;
		wait for Clk_period;
      Mem_WrEn <= '1' ;
      wait for Clk_period*5;
		Mem_WrEn <= '0' ;
      wait for Clk_period*5;
		
		ALU_MEM_Addr <= "00000000000000000000000000100000" ;
		MEM_DataIn   <= "00000000000000000000000000100000" ;
		wait for Clk_period;
      Mem_WrEn <= '1' ;
      wait for Clk_period*5;
		Mem_WrEn <= '0' ;
      wait for Clk_period*10;
		
		---------------------------------------------------------------------------------------------------
		
		ALU_MEM_Addr <= "00000000000000000000000000000001" ;

      wait for Clk_period*5;
		
		ALU_MEM_Addr <= "00000000000000000000000000000010" ;

      wait for Clk_period*5;

		ALU_MEM_Addr <= "00000000000000000000000000000011" ;

      wait for Clk_period*5;
		
		ALU_MEM_Addr <= "00000000000000000000000000100000" ;

      wait for Clk_period*15;
		
		--------------------------------------------------------------------------------------------------- 0's are expected from now on
		
		ALU_MEM_Addr <= "00000000000000000000000000000000" ;

      wait for Clk_period*5;
		
		ALU_MEM_Addr <= "00000000000000000000000000000100" ;

      wait for Clk_period*5;

		ALU_MEM_Addr <= "00000000000000000000000000011111" ;

      wait for Clk_period*5;
		
		ALU_MEM_Addr <= "00000000000000000000000000100001" ;

      wait for Clk_period*5;
		
		---------------------------------------------------------------------------------------------------
		

      wait;
   end process;

END;

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY RFtest IS
END RFtest;
 
ARCHITECTURE behavior OF RFtest IS 

    COMPONENT Register_File
    PORT(
         Ard1 : IN  std_logic_vector(4 downto 0);
         Ard2 : IN  std_logic_vector(4 downto 0);
         Awr : IN  std_logic_vector(4 downto 0);
         Dout1 : OUT  std_logic_vector(31 downto 0);
         Dout2 : OUT  std_logic_vector(31 downto 0);
         Din : IN  std_logic_vector(31 downto 0);
         WrEn : IN  std_logic;
         CLK : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Ard1 : std_logic_vector(4 downto 0) := (others => '0');
   signal Ard2 : std_logic_vector(4 downto 0) := (others => '0');
   signal Awr : std_logic_vector(4 downto 0) := (others => '0');
   signal Din : std_logic_vector(31 downto 0) := (others => '0');
   signal WrEn : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal Dout1 : std_logic_vector(31 downto 0);
   signal Dout2 : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Register_File PORT MAP (
          Ard1 => Ard1,
          Ard2 => Ard2,
          Awr => Awr,
          Dout1 => Dout1,
          Dout2 => Dout2,
          Din => Din,
          WrEn => WrEn,
          CLK => CLK
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

		wait for 100 ns;
		
		ARD2 <= "00000";
		
		------------------------------------------------------------WRITING ON REGISTERS 
		Din <= "00000000000000000000010000000001";
		WREN <='1';
		AWR <= "00001";
		ARD1<= "00001";
      wait for CLK_period*2;
		WREN <='0';
		wait for CLK_period*10;
		
		Din <= "00000000000000000000011000000001";
		WREN <='1';
		AWR <= "01000";
		ARD1<= "01000";
      wait for CLK_period*2;
		WREN <='0';
		wait for CLK_period*10;
		
		Din <= "00000000000011100001100001100001";
		WREN <='1';
		AWR <= "00111";
		ARD1<= "00111";
      wait for CLK_period*2;
		WREN <='0';
		wait for CLK_period*10;
		
		
		
		----------------------------------------------------------RAPID WRITING ON REGISTERS 
		Din <= "11000000000000000000000000000000";
		AWR <= "10000";
		ARD1<= "10000";
		WREN <= '1';
		wait for CLK_period*1;
		AWR <= "10001";
		ARD1<= "10001";
      wait for CLK_period*1;
		AWR <= "10010";
		ARD1<= "10010";
		wait for CLK_period*1;
		AWR <= "10011";
		ARD1<= "10011";
		wait for CLK_period*1;
		AWR <= "10100";
		ARD1<= "10100";
		wait for CLK_period*1;
		AWR <= "10101";
		ARD1<= "10101";
		
		
		------------------------------------------------------------READING REGISTERS 
		AWR<= "00000";
		wait for CLK_period*5;
		ARD2 <= "00001";
		wait for CLK_period*5;
		ARD2 <= "01000";
		wait for CLK_period*5;
		ARD2 <= "00111";
		
		------------------------------------------------------------RAPID READING REGISTERS 

		wait for CLK_period*5;
		ARD2 <= "10000";
		wait for CLK_period*1;
		ARD2 <= "10001";
		wait for CLK_period*1;
		ARD2 <= "10010";
		wait for CLK_period*1;
		ARD2 <= "10011";
		wait for CLK_period*1;
		ARD2 <= "10100";
		wait for CLK_period*1;
		ARD2 <= "10101";
		wait for CLK_period*1;
		ARD2 <= "10110";
		
		
		-------------------------------------------------------------WRITING REGISTER 0
		
		Din <= "11111111111111111111111100000001";
		WREN <='1';
		AWR <= "00000";
		ARD1<= "00000";
      wait for CLK_period*2;
		WREN <='0';
		wait for CLK_period*10;
		
      
		wait;
   end process;

END;

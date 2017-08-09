--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:15:15 03/24/2017
-- Design Name:   
-- Module Name:   C:/Users/vaila/Dropbox/ORGANWSH/Lab4/lab4VHDL/QUADREG_TEST.vhd
-- Project Name:  lab4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: QUADREG
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY QUADREG_TEST IS
END QUADREG_TEST;
 
ARCHITECTURE behavior OF QUADREG_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT QUADREG
    PORT(
         CLK : IN  std_logic;
         RST : IN  std_logic;
         WEN : IN  std_logic_vector(4 downto 0);
         DIN : IN  std_logic_vector(31 downto 0);
         DOUT : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';
   signal WEN : std_logic_vector(4 downto 0) := (others => '0');
   signal DIN : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal DOUT : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: QUADREG PORT MAP (
          CLK => CLK,
          RST => RST,
          WEN => WEN,
          DIN => DIN,
          DOUT => DOUT
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
		
		DIN <="11111111111111111111111111111111" ;
		
      wait for 100 ns;	
		RST <= '0' ;
		
      wait for CLK_period*10;
		
		WEN <= "00010";
		
		wait for CLK_period*1;
		
		WEN <= "00000";
		
		wait for CLK_period*4;
		
		
		
		WEN <= "00100";
		
		wait for CLK_period*1;
		
		WEN <= "00000";
		
		wait for CLK_period*4;
		
		
		
		WEN <= "01000";
		
		wait for CLK_period*1;
		
		WEN <= "00000";
		
		wait for CLK_period*4;
		
		
		
		WEN <= "10000";
		
		wait for CLK_period*1;
		
		WEN <= "00000";
		
		wait for CLK_period*4;
		
		
		
		RST <= '1' ;
		
		wait for CLK_period*2;
		
		RST <= '0' ;
		
		wait for CLK_period*2;
		
		
		
		
		WEN <= "00001";
		
		wait for CLK_period*1;
		
		WEN <= "00000";
		
		


      -- insert stimulus here 

      wait;
   end process;

END;

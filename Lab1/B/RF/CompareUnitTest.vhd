--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:07:32 02/12/2017
-- Design Name:   
-- Module Name:   C:/Users/JARVIS/Dropbox/ORGANWSH/Lab1/B/RF/CompareUnitTest.vhd
-- Project Name:  RF
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CompareModule
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
 
ENTITY CompareUnitTest IS
END CompareUnitTest;
 
ARCHITECTURE behavior OF CompareUnitTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CompareModule
    PORT(
         In0 : IN  std_logic_vector(4 downto 0);
         In1 : IN  std_logic_vector(4 downto 0);
         Output : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal In0 : std_logic_vector(4 downto 0) := (others => '0');
   signal In1 : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal Output : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
    
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CompareModule PORT MAP (
          In0 => In0,
          In1 => In1,
          Output => Output
        );

   

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		In0<="00001";
		In1<="00001";
		wait for 100 ns;
		In0<="00001";
		In1<="00000";
		wait for 100 ns;

      -- insert stimulus here 

      wait;
   end process;

END;

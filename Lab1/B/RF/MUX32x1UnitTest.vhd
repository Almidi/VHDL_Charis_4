--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:24:14 02/12/2017
-- Design Name:   
-- Module Name:   C:/Users/JARVIS/Dropbox/ORGANWSH/Lab1/B/RF/MUX32x1UnitTest.vhd
-- Project Name:  RF
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUX32X1
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
 
ENTITY MUX32x1UnitTest IS
END MUX32x1UnitTest;
 
ARCHITECTURE behavior OF MUX32x1UnitTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX32X1
    PORT(
         In0 : IN  std_logic_vector(31 downto 0);
         In1 : IN  std_logic_vector(31 downto 0);
         In2 : IN  std_logic_vector(31 downto 0);
         In3 : IN  std_logic_vector(31 downto 0);
         In4 : IN  std_logic_vector(31 downto 0);
         In5 : IN  std_logic_vector(31 downto 0);
         In6 : IN  std_logic_vector(31 downto 0);
         In7 : IN  std_logic_vector(31 downto 0);
         In8 : IN  std_logic_vector(31 downto 0);
         In9 : IN  std_logic_vector(31 downto 0);
         In10 : IN  std_logic_vector(31 downto 0);
         In11 : IN  std_logic_vector(31 downto 0);
         In12 : IN  std_logic_vector(31 downto 0);
         In13 : IN  std_logic_vector(31 downto 0);
         In14 : IN  std_logic_vector(31 downto 0);
         In15 : IN  std_logic_vector(31 downto 0);
         In16 : IN  std_logic_vector(31 downto 0);
         In17 : IN  std_logic_vector(31 downto 0);
         In18 : IN  std_logic_vector(31 downto 0);
         In19 : IN  std_logic_vector(31 downto 0);
         In20 : IN  std_logic_vector(31 downto 0);
         In21 : IN  std_logic_vector(31 downto 0);
         In22 : IN  std_logic_vector(31 downto 0);
         In23 : IN  std_logic_vector(31 downto 0);
         In24 : IN  std_logic_vector(31 downto 0);
         In25 : IN  std_logic_vector(31 downto 0);
         In26 : IN  std_logic_vector(31 downto 0);
         In27 : IN  std_logic_vector(31 downto 0);
         In28 : IN  std_logic_vector(31 downto 0);
         In29 : IN  std_logic_vector(31 downto 0);
         In30 : IN  std_logic_vector(31 downto 0);
         In31 : IN  std_logic_vector(31 downto 0);
         S : IN  std_logic_vector(4 downto 0);
         Output : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal In0 : std_logic_vector(31 downto 0) := (others => '0');
   signal In1 : std_logic_vector(31 downto 0) := (others => '0');
   signal In2 : std_logic_vector(31 downto 0) := (others => '0');
   signal In3 : std_logic_vector(31 downto 0) := (others => '0');
   signal In4 : std_logic_vector(31 downto 0) := (others => '0');
   signal In5 : std_logic_vector(31 downto 0) := (others => '0');
   signal In6 : std_logic_vector(31 downto 0) := (others => '0');
   signal In7 : std_logic_vector(31 downto 0) := (others => '0');
   signal In8 : std_logic_vector(31 downto 0) := (others => '0');
   signal In9 : std_logic_vector(31 downto 0) := (others => '0');
   signal In10 : std_logic_vector(31 downto 0) := (others => '0');
   signal In11 : std_logic_vector(31 downto 0) := (others => '0');
   signal In12 : std_logic_vector(31 downto 0) := (others => '0');
   signal In13 : std_logic_vector(31 downto 0) := (others => '0');
   signal In14 : std_logic_vector(31 downto 0) := (others => '0');
   signal In15 : std_logic_vector(31 downto 0) := (others => '0');
   signal In16 : std_logic_vector(31 downto 0) := (others => '0');
   signal In17 : std_logic_vector(31 downto 0) := (others => '0');
   signal In18 : std_logic_vector(31 downto 0) := (others => '0');
   signal In19 : std_logic_vector(31 downto 0) := (others => '0');
   signal In20 : std_logic_vector(31 downto 0) := (others => '0');
   signal In21 : std_logic_vector(31 downto 0) := (others => '0');
   signal In22 : std_logic_vector(31 downto 0) := (others => '0');
   signal In23 : std_logic_vector(31 downto 0) := (others => '0');
   signal In24 : std_logic_vector(31 downto 0) := (others => '0');
   signal In25 : std_logic_vector(31 downto 0) := (others => '0');
   signal In26 : std_logic_vector(31 downto 0) := (others => '0');
   signal In27 : std_logic_vector(31 downto 0) := (others => '0');
   signal In28 : std_logic_vector(31 downto 0) := (others => '0');
   signal In29 : std_logic_vector(31 downto 0) := (others => '0');
   signal In30 : std_logic_vector(31 downto 0) := (others => '0');
   signal In31 : std_logic_vector(31 downto 0) := (others => '0');
   signal S : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal Output : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX32X1 PORT MAP (
          In0 => In0,
          In1 => In1,
          In2 => In2,
          In3 => In3,
          In4 => In4,
          In5 => In5,
          In6 => In6,
          In7 => In7,
          In8 => In8,
          In9 => In9,
          In10 => In10,
          In11 => In11,
          In12 => In12,
          In13 => In13,
          In14 => In14,
          In15 => In15,
          In16 => In16,
          In17 => In17,
          In18 => In18,
          In19 => In19,
          In20 => In20,
          In21 => In21,
          In22 => In22,
          In23 => In23,
          In24 => In24,
          In25 => In25,
          In26 => In26,
          In27 => In27,
          In28 => In28,
          In29 => In29,
          In30 => In30,
          In31 => In31,
          S => S,
          Output => Output
        );

  
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
			S<="00000";
			In0<="00000000000000000000000000000111";
			wait for 100 ns;
			S<="00001";
			In1<="00000000000000000000000000001111";
			wait for 100 ns;
			S<="00010";
			In2<="00000000000000000000000000011111";
			wait for 100 ns;

      wait;
   end process;

END;

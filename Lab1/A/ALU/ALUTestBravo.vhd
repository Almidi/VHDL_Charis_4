--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:51:48 02/11/2017
-- Design Name:   
-- Module Name:   C:/Users/vaila/Dropbox/ORGANWSH/Lab1/ALU/ALUTestBravo.vhd
-- Project Name:  ALU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
 
ENTITY ALUTestBravo IS
END ALUTestBravo;
 
ARCHITECTURE behavior OF ALUTestBravo IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         A : IN  std_logic_vector(31 downto 0);
         B : IN  std_logic_vector(31 downto 0);
         Op : IN  std_logic_vector(3 downto 0);
         Output : OUT  std_logic_vector(31 downto 0);
         Zero : OUT  std_logic;
         Cout : OUT  std_logic;
         Ovf : OUT  std_logic
        );
    END COMPONENT;
    
   --Inputs
   signal A : std_logic_vector(31 downto 0) := (others => '0');
   signal B : std_logic_vector(31 downto 0) := (others => '0');
   signal Op : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Output : std_logic_vector(31 downto 0);
   signal Zero : std_logic;
   signal Cout : std_logic;
   signal Ovf : std_logic;
    
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          A => A,
          B => B,
          Op => Op,
          Output => Output,
          Zero => Zero,
          Cout => Cout,
          Ovf => Ovf
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      -- insert stimulus here	
		
		A <= "00000000000000000000000000011010";	-- 26
	   B <= "00000000000000000000000000110100";	-- 52
	   Op <= "0010";										--	AND_LOGICAL
	   wait for 100 ns;
		
		A <= "00000000000000000000000000011010";	-- 26
	   B <= "00000000000000000000000000110100";	-- 52
	   Op <= "0011";										--	OR_LOGICAL
	   wait for 100 ns;
		
		A <= "00000000000000000000000000001101";	-- 13
	   B <= "00000000000000000000000000010011";	-- 19
	   Op <= "0000";										--ADD 
	   wait for 100 ns;
		
		A <= "00000000000000000000000000001100";	-- 5
	   B <= "00000000000000000000000000000101";	-- 12
	   Op <= "0001";                             --SUB
	   wait for 100 ns;
		
		A <= "11111111111111111111111111111111";	--expected Cout
	   B <= "00000000000000000000000000000001";	--expected zero
	   Op <= "0000";										--ADD 
	   wait for 100 ns;
		
		A <= "10000000000000000000000000000000";	--expected ovf
	   B <= "11111111111111111111111111111111";	--add
	   Op <= "0000";
	   wait for 100 ns;
		
		A<= "10000000000001000001000000000000";   --NOT
		Op <= "0100";
		wait for 100 ns;
		
		A<= "10000000000000000000000000000001";   --sra
		Op <= "1000";
		wait for 100 ns;
		
		A<= "10000000000000000000000000000001";   --srl
	   Op <= "1001";
		wait for 100 ns;
		
		A<= "10000000000000000000000000000001";   --sll
		Op <= "1010";
		wait for 100 ns;
		
		A<= "10000000000000000000000000000001";   --rl
		Op <= "1100";
		wait for 100 ns;
		
		A<= "10000000000000000000000000000001";   --rr
		Op <= "1101";
		wait for 100 ns;
		
		A<= "10000000000001000001000000000000";   --NOT
		Op <= "0100";
		wait for 100 ns;
		
      wait;
   end process;

END;

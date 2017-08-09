--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:30:03 02/12/2017
-- Design Name:   
-- Module Name:   C:/Users/vaila/Dropbox/ORGANWSH/Lab1/B/RF/SINGLE_REGISTER_TEST.vhd
-- Project Name:  RF
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: myRegister
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
 
ENTITY SINGLE_REGISTER_TEST IS
END SINGLE_REGISTER_TEST;
 
ARCHITECTURE behavior OF SINGLE_REGISTER_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT myRegister
    PORT(
         DataIn : IN  std_logic_vector(31 downto 0);
         Clk : IN  std_logic;
         DataOut : OUT  std_logic_vector(31 downto 0);
         WrEn : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal DataIn : std_logic_vector(31 downto 0) := (others => '0');
   signal Clk : std_logic := '0';
   signal WrEn : std_logic := '0';

 	--Outputs
   signal DataOut : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: myRegister PORT MAP (
          DataIn => DataIn,
          Clk => Clk,
          DataOut => DataOut,
          WrEn => WrEn
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
      wait for 100 ns;	

		DataIn<= "00000000001001010100101010100010";
		WrEn <= '1' ;
      wait for Clk_period*10;
		WrEn <= '0';
		wait for Clk_period*10;
		DataIn<= "00001001010100101010100010111111" ;
		WrEn <= '1';
      wait for Clk_period*10;
		WrEn <= '0';
		wait for Clk_period*10;
      -- insert stimulus here 

      wait;
   end process;

END;

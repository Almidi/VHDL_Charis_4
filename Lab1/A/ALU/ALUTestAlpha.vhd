LIBRARY ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use ieee.std_logic_arith.all;
 
ENTITY ALU_TEST IS
END ALU_TEST;
 
ARCHITECTURE behavior OF ALU_TEST IS 
 
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
   signal op : std_logic_vector(3 downto 0) := (others => '0');

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
		--CODE START HERE!!
		--3 ADDITIONS
		
		A <= "00000000000000000000000000001101";	-- 13
	   B <= "00000000000000000000000000010011";	-- 19
	   Op <= "0000";
	   wait for 100 ns;
		
		A <= "00000000000000000000000000000000";	-- 0
	   B <= "00000000000000000000000000000000";	-- 0
	   Op <= "0000";
	   wait for 100 ns;
		
		A <= "00000000000000000000000000011010";	-- 26
	   B <= "00000000000000000000000000110100";	-- 52
	   Op <= "0010";										--	AND_LOGICAL
	   wait for 100 ns;
		
		A <= "11111111111111111111111111111011";	-- -5
	   B <= "00000000000000000000000000001100";	-- +12
	   Op <= "0000";
	   wait for 100 ns;
		
	   A <= "11111111111100000000001000000000";	--srl
	   Op <= "1001";
	   wait for 100 ns;
		
		A <= "01111111111100000000001000000101";	--rotate_right
	   Op <= "1101";
	   wait for 100 ns;

		A <= "10111111111100000000001000000101";	--sra
	   Op <= "1000";
	   wait for 100 ns;
		
		--More additions
		A <= "11111111111111111111111111111111" ;	-- -1 		Cout,Zero expected
		B <= "00000000000000000000000000000001" ; -- +1
		op <= "0000";										--ADD			
		wait for 100 ns;
		
		A <= "01111111111111111111111111111111" ;	-- 2^31 		OF expected
		B <= "00000000000000000000000000000001" ; -- +1
		op <= "0000";										-- ADD
		wait for 100 ns;
		
		A <= "00000000000000000000000000001101" ;	-- 13
		B <= "00000000000000000000000000010011" ; -- 19
		op <= "1111";										-- Crypt
		wait for 100 ns;
		
		--CODE ENDS HERE!!
      wait;					
   end process;

END;

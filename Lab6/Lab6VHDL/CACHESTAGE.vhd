library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use ieee.std_logic_arith.all;

entity CACHE_STAGE is
			port (
			clk: in std_logic;
			addr: in std_logic_vector(31 downto 0);
			dout: out std_logic_vector(31 downto 0);
			MISS: out std_logic
			);
end CACHE_STAGE;
			
architecture Behavioral of CACHE_STAGE is

	COMPONENT CACHE is
			port (
			clk: in std_logic;
			addr: in std_logic_vector(4 downto 0);
			dout: out std_logic_vector(131 downto 0)
			);
	end COMPONENT;
	
	
	SIGNAL INTADDR 	: std_logic_vector(31 downto 0);
	
	---MEM ADDR----------------------------------------
	SIGNAL TAG 			: std_logic_vector(2 downto 0);
	SIGNAL SET_INDEX 	: std_logic_vector(4 downto 0);
	SIGNAL WORD_OFF 	: std_logic_vector(1 downto 0);
	SIGNAL BYTE_OFF 	: std_logic_vector(1 downto 0);
	
	---CACHE-------------------------------------------
	SIGNAL CACHELINE 	: std_logic_vector(131 downto 0);
	
	---CACHE DATA UNPACKED-----------------------------
	
	SIGNAL VALID 		: std_logic ;
	SIGNAL CACHE_TAG 	: std_logic_vector(2 downto 0);
	SIGNAL CACHEDATA 	: std_logic_vector(127 downto 0);
	

begin


C : CACHE PORT MAP (
			clk => CLK,
			addr => SET_INDEX,
			dout => CACHELINE
			);
			
PROCESS(TAG ,CACHE_TAG, VALID) 	
	BEGIN
		IF (TAG = CACHE_TAG AND VALID = '1') THEN
			MISS <= '0' ;
		ELSE
			MISS <= '1' ;
		END IF;
END PROCESS;

INTADDR 		<= ADDR(29 DOWNTO 0)&"00";

TAG 			<= INTADDR(11 DOWNTO 9);
SET_INDEX 	<= INTADDR(8  DOWNTO 4);
WORD_OFF 	<= INTADDR(3  DOWNTO 2);
BYTE_OFF 	<= INTADDR(1  DOWNTO 0);

VALID 		<= CACHELINE(131) ;
CACHE_TAG 	<= CACHELINE(130 DOWNTO 128) ;
CACHEDATA	<= CACHELINE(127 DOWNTO 0) ;

WITH WORD_OFF SELECT
	DOUT <= 	CACHEDATA(127 DOWNTO 96) WHEN "00",
				CACHEDATA(95 DOWNTO 64) WHEN "01",
				CACHEDATA(63 DOWNTO 32) WHEN "10",
				CACHEDATA(31 DOWNTO 0) WHEN OTHERS;

end Behavioral;


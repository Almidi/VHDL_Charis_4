----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:36:35 02/12/2017 
-- Design Name: 
-- Module Name:    REGISTER_FILE - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity REGISTER_FILE is
    Port ( ARD1 : in  STD_LOGIC_VECTOR (4 downto 0);
           ARD2 : in  STD_LOGIC_VECTOR (4 downto 0);
           AWR : in  STD_LOGIC_VECTOR (4 downto 0);
           DOUT1 : out  STD_LOGIC_VECTOR (31 downto 0);
           DOUT2 : out  STD_LOGIC_VECTOR (31 downto 0);
           DIN : in  STD_LOGIC_VECTOR (31 downto 0);
           WREN : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
			  RST : IN STD_LOGIC);
end REGISTER_FILE;

architecture Behavioral of REGISTER_FILE is

----------------------------------------------------------------------------------COMPONENTS

COMPONENT MYREGISTER IS 
	Port ( DataIn : in  STD_LOGIC_VECTOR (31 downto 0);
           Clk : in  STD_LOGIC;
           DataOut : out  STD_LOGIC_VECTOR (31 downto 0);
           WrEn : in  STD_LOGIC;
			  RST: IN STD_LOGIC);
end COMPONENT;

COMPONENT CompareModule is
    Port ( In0 : in  STD_LOGIC_VECTOR (4 downto 0);
           In1 : in  STD_LOGIC_VECTOR (4 downto 0);
           Output : out  STD_LOGIC);
end COMPONENT;

COMPONENT Decoder5x32 is
    Port ( Input : in  STD_LOGIC_VECTOR (4 downto 0);
           Output : out  STD_LOGIC_VECTOR (31 downto 0));
end COMPONENT;

COMPONENT MUX2TO1 is
    Port ( In0 : in  STD_LOGIC_VECTOR (31 downto 0);
          In1 : in  STD_LOGIC_VECTOR (31 downto 0);
           S : in  STD_LOGIC;
           Output : out  STD_LOGIC_VECTOR (31 downto 0));
end COMPONENT;

COMPONENT MUX32X1 is
    Port (	In0 : in  STD_LOGIC_VECTOR (31 downto 0);
				In1 : in  STD_LOGIC_VECTOR (31 downto 0);
				In2 : in  STD_LOGIC_VECTOR (31 downto 0);
				In3 : in  STD_LOGIC_VECTOR (31 downto 0);
				In4 : in  STD_LOGIC_VECTOR (31 downto 0);
				In5 : in  STD_LOGIC_VECTOR (31 downto 0);
				In6 : in  STD_LOGIC_VECTOR (31 downto 0);
				In7 : in  STD_LOGIC_VECTOR (31 downto 0);
				In8 : in  STD_LOGIC_VECTOR (31 downto 0);
				In9 : in  STD_LOGIC_VECTOR (31 downto 0);
				In10 : in  STD_LOGIC_VECTOR (31 downto 0);
				In11 : in  STD_LOGIC_VECTOR (31 downto 0);
				In12 : in  STD_LOGIC_VECTOR (31 downto 0);
				In13 : in  STD_LOGIC_VECTOR (31 downto 0);
				In14 : in  STD_LOGIC_VECTOR (31 downto 0);
				In15 : in  STD_LOGIC_VECTOR (31 downto 0);
				In16 : in  STD_LOGIC_VECTOR (31 downto 0);
				In17 : in  STD_LOGIC_VECTOR (31 downto 0);
				In18 : in  STD_LOGIC_VECTOR (31 downto 0);
				In19 : in  STD_LOGIC_VECTOR (31 downto 0);
				In20 : in  STD_LOGIC_VECTOR (31 downto 0);
				In21 : in  STD_LOGIC_VECTOR (31 downto 0);
				In22 : in  STD_LOGIC_VECTOR (31 downto 0);
				In23 : in  STD_LOGIC_VECTOR (31 downto 0);
				In24 : in  STD_LOGIC_VECTOR (31 downto 0);
				In25 : in  STD_LOGIC_VECTOR (31 downto 0);
				In26 : in  STD_LOGIC_VECTOR (31 downto 0);
				In27 : in  STD_LOGIC_VECTOR (31 downto 0);
				In28 : in  STD_LOGIC_VECTOR (31 downto 0);
				In29 : in  STD_LOGIC_VECTOR (31 downto 0);
				In30 : in  STD_LOGIC_VECTOR (31 downto 0);
				In31 : in  STD_LOGIC_VECTOR (31 downto 0);
				S : in  STD_LOGIC_VECTOR (4 downto 0);
				Output : out  STD_LOGIC_VECTOR (31 downto 0));
end COMPONENT;

----------------------------------------------------------------------------------SIGNALS
-----------------------------------------------------------------------------REGISTER OUT
SIGNAL REG0OUT : std_logic_vector(31 downto 0);
SIGNAL REG1OUT : std_logic_vector(31 downto 0);
SIGNAL REG2OUT : std_logic_vector(31 downto 0);
SIGNAL REG3OUT : std_logic_vector(31 downto 0);
SIGNAL REG4OUT : std_logic_vector(31 downto 0);
SIGNAL REG5OUT : std_logic_vector(31 downto 0);
SIGNAL REG6OUT : std_logic_vector(31 downto 0);
SIGNAL REG7OUT : std_logic_vector(31 downto 0);
SIGNAL REG8OUT : std_logic_vector(31 downto 0);
SIGNAL REG9OUT : std_logic_vector(31 downto 0);
SIGNAL REG10OUT : std_logic_vector(31 downto 0);
SIGNAL REG11OUT : std_logic_vector(31 downto 0);
SIGNAL REG12OUT : std_logic_vector(31 downto 0);
SIGNAL REG13OUT : std_logic_vector(31 downto 0);
SIGNAL REG14OUT : std_logic_vector(31 downto 0);
SIGNAL REG15OUT : std_logic_vector(31 downto 0);
SIGNAL REG16OUT : std_logic_vector(31 downto 0);
SIGNAL REG17OUT : std_logic_vector(31 downto 0);
SIGNAL REG18OUT : std_logic_vector(31 downto 0);
SIGNAL REG19OUT : std_logic_vector(31 downto 0);
SIGNAL REG20OUT : std_logic_vector(31 downto 0);
SIGNAL REG21OUT : std_logic_vector(31 downto 0);
SIGNAL REG22OUT : std_logic_vector(31 downto 0);
SIGNAL REG23OUT : std_logic_vector(31 downto 0);
SIGNAL REG24OUT : std_logic_vector(31 downto 0);
SIGNAL REG25OUT : std_logic_vector(31 downto 0);
SIGNAL REG26OUT : std_logic_vector(31 downto 0);
SIGNAL REG27OUT : std_logic_vector(31 downto 0);
SIGNAL REG28OUT : std_logic_vector(31 downto 0);
SIGNAL REG29OUT : std_logic_vector(31 downto 0);
SIGNAL REG30OUT : std_logic_vector(31 downto 0);
SIGNAL REG31OUT : std_logic_vector(31 downto 0);

-----------------------------------------------------------------------REGISTER ENABLE

SIGNAL REGWEN0 : std_logic ;
SIGNAL REGWEN1 : std_logic ;
SIGNAL REGWEN2 : std_logic ;
SIGNAL REGWEN3 : std_logic ;
SIGNAL REGWEN4 : std_logic ;
SIGNAL REGWEN5 : std_logic ;
SIGNAL REGWEN6 : std_logic ;
SIGNAL REGWEN7 : std_logic ;
SIGNAL REGWEN8 : std_logic ;
SIGNAL REGWEN9 : std_logic ;
SIGNAL REGWEN10: std_logic ;
SIGNAL REGWEN11: std_logic ;
SIGNAL REGWEN12: std_logic ;
SIGNAL REGWEN13: std_logic ;
SIGNAL REGWEN14: std_logic ;
SIGNAL REGWEN15: std_logic ;
SIGNAL REGWEN16: std_logic ;
SIGNAL REGWEN17: std_logic ;
SIGNAL REGWEN18: std_logic ;
SIGNAL REGWEN19: std_logic ;
SIGNAL REGWEN20: std_logic ;
SIGNAL REGWEN21: std_logic ;
SIGNAL REGWEN22: std_logic ;
SIGNAL REGWEN23: std_logic ;
SIGNAL REGWEN24: std_logic ;
SIGNAL REGWEN25: std_logic ;
SIGNAL REGWEN26: std_logic ;
SIGNAL REGWEN27: std_logic ;
SIGNAL REGWEN28: std_logic ;
SIGNAL REGWEN29: std_logic ;
SIGNAL REGWEN30: std_logic ;
SIGNAL REGWEN31: std_logic ;
----------------------------------------------------------------------------------
SIGNAL COMPAREOUT1: std_logic ;
SIGNAL COMPAREOUT2: std_logic ;
SIGNAL DECOUT     : std_logic_vector(31 downto 0);

SIGNAL MUX32X1AOUT: std_logic_vector(31 downto 0);
SIGNAL MUX32X1BOUT: std_logic_vector(31 downto 0);

begin

----------------------------------------------------------------------------------PORT MAP REGISTERS

REGISTER0 : MYREGISTER PORT MAP(
			   DataOUT =>REG0OUT,
            Clk => CLK,
            DataIn =>"00000000000000000000000000000000",  
            WrEn => REGWEN0,
			   RST => RST );
REGISTER1 : MYREGISTER PORT MAP(
			   DataOUT =>REG1OUT,
            Clk => CLK,
            DataIn =>DIN,  
            WrEn => REGWEN1,
			   RST => RST );
REGISTER2 : MYREGISTER PORT MAP(
			   DataOUT =>REG2OUT,
            Clk => CLK,
            DataIn =>DIN,  
            WrEn => REGWEN2,
			   RST => RST );
REGISTER3 : MYREGISTER PORT MAP(
			   DataOUT =>REG3OUT,
            Clk => CLK,
            DataIn =>DIN,  
            WrEn => REGWEN3,
			   RST => RST );
REGISTER4 : MYREGISTER PORT MAP(
			   DataOUT =>REG4OUT,
            Clk => CLK,
            DataIn =>DIN,  
            WrEn => REGWEN4,
			   RST => RST );
REGISTER5 : MYREGISTER PORT MAP(
			   DataOUT =>REG5OUT,
            Clk => CLK,
            DataIn =>DIN,  
            WrEn => REGWEN5,
			   RST => RST );
REGISTER6 : MYREGISTER PORT MAP(
			   DataOUT =>REG6OUT,
            Clk => CLK,
            DataIn =>DIN,  
            WrEn => REGWEN6,
			   RST => RST );
REGISTER7 : MYREGISTER PORT MAP(
			   DataOUT =>REG7OUT,
            Clk => CLK,
            DataIn =>DIN,  
            WrEn => REGWEN7,
			   RST => RST );
REGISTER8 : MYREGISTER PORT MAP(
			   DataOUT =>REG8OUT,
            Clk => CLK,
            DataIn =>DIN,  
            WrEn => REGWEN8,
			   RST => RST );
REGISTER9 : MYREGISTER PORT MAP(
			   DataOUT =>REG9OUT,
            Clk => CLK,
            DataIn =>DIN,  
            WrEn => REGWEN9,
			   RST => RST );
REGISTER10 : MYREGISTER PORT MAP(
			   DataOUT =>REG10OUT,
            Clk => CLK,
            DataIn =>DIN,  
            WrEn => REGWEN10,
			   RST => RST );
REGISTER11 : MYREGISTER PORT MAP(
			   DataOUT =>REG11OUT,
            Clk => CLK,
            DataIn =>DIN,  
            WrEn => REGWEN11,
			   RST => RST );
REGISTER12 : MYREGISTER PORT MAP(
			   DataOUT =>REG12OUT,
            Clk => CLK,
            DataIn =>DIN,  
            WrEn => REGWEN12,
			   RST => RST );
REGISTER13 : MYREGISTER PORT MAP(
			   DataOUT =>REG13OUT,
            Clk => CLK,
            DataIn =>DIN,  
            WrEn => REGWEN13,
			   RST => RST );
REGISTER14 : MYREGISTER PORT MAP(
			   DataOUT =>REG14OUT,
            Clk => CLK,
            DataIn =>DIN,  
            WrEn => REGWEN14,
			   RST => RST );
REGISTER15 : MYREGISTER PORT MAP(
			   DataOUT =>REG15OUT,
            Clk => CLK,
            DataIn =>DIN,  
            WrEn => REGWEN15,
			   RST => RST );
REGISTER16 : MYREGISTER PORT MAP(
			   DataOUT =>REG16OUT,
            Clk => CLK,
            DataIn =>DIN,  
            WrEn => REGWEN16,
			   RST => RST );
REGISTER17 : MYREGISTER PORT MAP(
			   DataOUT =>REG17OUT,
            Clk => CLK,
            DataIn =>DIN,  
            WrEn => REGWEN17,
			   RST => RST );
REGISTER18 : MYREGISTER PORT MAP(
			   DataOUT =>REG18OUT,
            Clk => CLK,
            DataIn =>DIN,  
            WrEn => REGWEN18,
			   RST => RST );
REGISTER19 : MYREGISTER PORT MAP(
			   DataOUT =>REG19OUT,
            Clk => CLK,
            DataIn =>DIN,  
            WrEn => REGWEN19,
			   RST => RST );
REGISTER20 : MYREGISTER PORT MAP(
			   DataOUT =>REG20OUT,
            Clk => CLK,
            DataIn =>DIN,  
            WrEn => REGWEN20,
			   RST => RST );
REGISTER21 : MYREGISTER PORT MAP(
			   DataOUT =>REG21OUT,
            Clk => CLK,
            DataIn =>DIN,  
            WrEn => REGWEN21,
			   RST => RST );
REGISTER22 : MYREGISTER PORT MAP(
			   DataOUT =>REG22OUT,
            Clk => CLK,
            DataIn =>DIN,  
            WrEn => REGWEN22,
			   RST => RST );
REGISTER23 : MYREGISTER PORT MAP(
			   DataOUT =>REG23OUT,
            Clk => CLK,
            DataIn =>DIN,  
            WrEn => REGWEN23,
			   RST => RST );
REGISTER24 : MYREGISTER PORT MAP(
			   DataOUT =>REG24OUT,
            Clk => CLK,
            DataIn =>DIN,  
            WrEn => REGWEN24,
			   RST => RST );
REGISTER25 : MYREGISTER PORT MAP(
			   DataOUT =>REG25OUT,
            Clk => CLK,
            DataIn =>DIN,  
            WrEn => REGWEN25,
			   RST => RST );
REGISTER26 : MYREGISTER PORT MAP(
			   DataOUT =>REG26OUT,
            Clk => CLK,
            DataIn =>DIN,  
            WrEn => REGWEN26,
			   RST => RST );
REGISTER27 : MYREGISTER PORT MAP(
			   DataOUT =>REG27OUT,
            Clk => CLK,
            DataIn =>DIN,  
            WrEn => REGWEN27,
			   RST => RST );
REGISTER28 : MYREGISTER PORT MAP(
			   DataOUT =>REG28OUT,
            Clk => CLK,
            DataIn =>DIN,  
            WrEn => REGWEN28,
			   RST => RST );
REGISTER29 : MYREGISTER PORT MAP(
			   DataOUT =>REG29OUT,
            Clk => CLK,
            DataIn =>DIN,  
            WrEn => REGWEN29,
			   RST => RST );
REGISTER30 : MYREGISTER PORT MAP(
			   DataOUT =>REG30OUT,
            Clk => CLK,
            DataIn =>DIN,  
            WrEn => REGWEN30,
			   RST => RST );
REGISTER31 : MYREGISTER PORT MAP(
			   DataOUT =>REG31OUT,
            Clk => CLK,
            DataIn =>DIN,  
            WrEn => REGWEN31,
			   RST => RST );
			 
---------------------------------------------------------------------------------- PORT MAP 32X1 MUXES

MUX32X1A : MUX32X1 PORT MAP (	
				In0    => REG0OUT,
				In1    => REG1OUT,
				In2    => REG2OUT,
				In3    => REG3OUT,
				In4    => REG4OUT,
				In5    => REG5OUT,
				In6    => REG6OUT,
				In7    => REG7OUT,
				In8    => REG8OUT,
				In9    => REG9OUT,
				In10   => REG10OUT,
				In11   => REG11OUT,
				In12   => REG12OUT,
				In13   => REG13OUT,
				In14   => REG14OUT,
				In15   => REG15OUT,
				In16   => REG16OUT,
				In17   => REG17OUT,
				In18   => REG18OUT,
				In19   => REG19OUT,
				In20   => REG20OUT,
				In21   => REG21OUT,
				In22   => REG22OUT,
				In23   => REG23OUT,
				In24   => REG24OUT,
				In25   => REG25OUT,
				In26   => REG26OUT,
				In27   => REG27OUT,
				In28   => REG28OUT,
				In29   => REG29OUT,
				In30   => REG30OUT,
				In31   => REG31OUT,
				S      => ARD1,
				Output => MUX32X1AOUT
				);
				
MUX32X1B : MUX32X1 PORT MAP (	
				In0    => REG0OUT,
				In1    => REG1OUT,
				In2    => REG2OUT,
				In3    => REG3OUT,
				In4    => REG4OUT,
				In5    => REG5OUT,
				In6    => REG6OUT,
				In7    => REG7OUT,
				In8    => REG8OUT,
				In9    => REG9OUT,
				In10   => REG10OUT,
				In11   => REG11OUT,
				In12   => REG12OUT,
				In13   => REG13OUT,
				In14   => REG14OUT,
				In15   => REG15OUT,
				In16   => REG16OUT,
				In17   => REG17OUT,
				In18   => REG18OUT,
				In19   => REG19OUT,
				In20   => REG20OUT,
				In21   => REG21OUT,
				In22   => REG22OUT,
				In23   => REG23OUT,
				In24   => REG24OUT,
				In25   => REG25OUT,
				In26   => REG26OUT,
				In27   => REG27OUT,
				In28   => REG28OUT,
				In29   => REG29OUT,
				In30   => REG30OUT,
				In31   => REG31OUT,
				S      => ARD2,
				Output => MUX32X1BOUT
				);				
---------------------------------------------------------------------------------- PORT MAP 2X1 MUXES

MUX2X1A : MUX2TO1 PORT MAP (
			 In0 => MUX32X1AOUT,
          In1 => DIN,
          S => COMPAREOUT1,
          Output => DOUT1
			 );
			 
MUX2X1B : MUX2TO1 PORT MAP (
			 In0 => MUX32X1BOUT,
          In1 => DIN,
          S => COMPAREOUT2,
          Output => DOUT2
			 );

---------------------------------------------------------------------------------- PORT MAP COMPARATORS

COMP1 : COMPAREMODULE PORT MAP(
        In0 => ARD1,
        In1 =>AWR,
        Output =>COMPAREOUT1
		  );
		
COMP2 : COMPAREMODULE PORT MAP(
        In0 => ARD2,
        In1 =>AWR,
        Output =>COMPAREOUT2
		  );		
			  
---------------------------------------------------------------------------------- PORT MAP DECODER

DECODER : DECODER5X32 PORT MAP (
			 Input => AWR ,
			 Output =>DECOUT
			 );
			 

---------------------------------------------------------------------------------- WRITE ENABLE BEHAVIOUR

REGWEN0<='0' ;
REGWEN1<=WREN AND DECOUT(1);
REGWEN2<=WREN AND DECOUT(2);
REGWEN3<=WREN AND DECOUT(3);
REGWEN4<=WREN AND DECOUT(4);
REGWEN5<=WREN AND DECOUT(5);
REGWEN6<=WREN AND DECOUT(6);
REGWEN7<=WREN AND DECOUT(7);
REGWEN8<=WREN AND DECOUT(8);
REGWEN9<=WREN AND DECOUT(9);
REGWEN10<=WREN AND DECOUT(10);
REGWEN11<=WREN AND DECOUT(11);
REGWEN12<=WREN AND DECOUT(12);
REGWEN13<=WREN AND DECOUT(13);
REGWEN14<=WREN AND DECOUT(14);
REGWEN15<=WREN AND DECOUT(15);
REGWEN16<=WREN AND DECOUT(16);
REGWEN17<=WREN AND DECOUT(17);
REGWEN18<=WREN AND DECOUT(18);
REGWEN19<=WREN AND DECOUT(19);
REGWEN20<=WREN AND DECOUT(20);
REGWEN21<=WREN AND DECOUT(21);
REGWEN22<=WREN AND DECOUT(22);
REGWEN23<=WREN AND DECOUT(23);
REGWEN24<=WREN AND DECOUT(24);
REGWEN25<=WREN AND DECOUT(25);
REGWEN26<=WREN AND DECOUT(26);
REGWEN27<=WREN AND DECOUT(27);
REGWEN28<=WREN AND DECOUT(28);
REGWEN29<=WREN AND DECOUT(29);
REGWEN30<=WREN AND DECOUT(30);
REGWEN31<=WREN AND DECOUT(31);


end Behavioral;


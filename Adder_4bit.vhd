library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity Adder_4bit is
Port ( 
			A 		: in STD_LOGIC_vector (3 downto 0);
			B 		: in STD_LOGIC_vector (3 downto 0);
			Cin 	: in STD_LOGIC;
			S 		: out STD_LOGIC_vector (3 downto 0);
			Cout 	: out STD_LOGIC);
			
end Adder_4bit;
 
architecture adder_rtl of Adder_4bit is
 
-- Full Adder VHDL Code Component Decalaration
component full_adder
Port ( 
			
			i_carry  : in std_logic;
			i_bit1   : in std_logic;
			i_bit2   : in std_logic;
			o_sum    : out std_logic;
         o_carry  : out std_logic);
end component;
 
-- Intermediate Carry declaration
signal c1,c2,c3: STD_LOGIC;

 
begin
 
-- Port Mapping Full Adder 4 times
FA1 : full_adder port map( Cin, A(0), B(0), S(0), c1);
FA2 : full_adder port map( c1, A(1), B(1),  S(1), c2);
FA3 : full_adder port map( c2, A(2), B(2),  S(2), c3);
FA4 : full_adder port map( c3, A(3), B(3),  S(3), Cout);

end adder_rtl;






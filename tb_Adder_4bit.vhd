LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY tb_Adder_4bit IS
END tb_Adder_4bit;
 
ARCHITECTURE behavior OF tb_Adder_4bit IS
 
-- Component Declaration for the Unit Under Test (UUT)
COMPONENT full_adder
PORT(
		A 		: IN std_logic_vector(3 downto 0);
		B 		: IN std_logic_vector(3 downto 0);
		Cin   : IN std_logic;
		S 		: OUT std_logic_vector(3 downto 0);
		Cout  : OUT std_logic
);
END COMPONENT;
 
--Inputs
signal A 		: std_logic_vector(3 downto 0) := (others => '0');
signal B 		: std_logic_vector(3 downto 0) := (others => '0');
signal Cin	   : std_logic := '0';
 
--Outputs
signal S 		: std_logic_vector(3 downto 0);
signal Cout 	: std_logic;
 
BEGIN
 
-- Instantiate the Unit Under Test (UUT)
IFull_Adder: entity work.Adder_4bit(adder_rtl) PORT MAP (
			A 		=> A,
			B 		=> B,
			Cin 	=> Cin,
			S 		=> S,
			Cout 	=> Cout
);
 
-- Stimulus process
stim_proc_A: process
   begin		
      A<="0100";
      wait until 100 ns;	
      A<="0111";
      wait;
   end process;


   stim_proc_B: process
   begin		
      B<="1111";
      wait until 100 ns;	
      B<="0011";
      wait;
   end process;
	
	
   stim_proc_Cin: process
   begin		
		Cin<='0';
      wait for 100 ns;	
      wait;
   end process;
END behavior;

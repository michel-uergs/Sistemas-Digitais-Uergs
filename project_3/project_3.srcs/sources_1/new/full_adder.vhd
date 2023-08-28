library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity full_adder is
 Port ( 
 A      : in STD_LOGIC;
 B      : in STD_LOGIC;
 Cin    : in STD_LOGIC;
 S      : out STD_LOGIC;
 Cout   : out STD_LOGIC
 );
end full_adder;
 
architecture gate_level of full_adder is

signal saida_and_1 : std_logic;
signal saida_and_2 : std_logic;
signal saida_xor   : std_logic;


begin
 
 saida_xor <= A XOR B;
 S <= saida_xor XOR Cin;
 saida_and_1 <= saida_xor and Cin;
 saida_and_2 <= A and B;
 Cout <= saida_and_1 OR saida_and_2 ;

end gate_level;

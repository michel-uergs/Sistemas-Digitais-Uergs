library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity testbench is
end testbench ;
 
architecture behavior of testbench  is

COMPONENT full_adder
    port (
        A      : in STD_LOGIC;
        B      : in STD_LOGIC;
        Cin    : in STD_LOGIC;
        S      : out STD_LOGIC;
        Cout   : out STD_LOGIC
    );
END COMPONENT;

 signal       A      : STD_LOGIC    := '0';
 signal       B      : STD_LOGIC    := '0';
 signal       Cin    : STD_LOGIC    := '0';
 signal       S      : STD_LOGIC    := '0';
 signal       Cout   : STD_LOGIC    := '0';
 
 signal       A2      : STD_LOGIC    := '0';
 signal       B2      : STD_LOGIC    := '0';
 signal       Cin2    : STD_LOGIC    := '0';
 signal       S2      : STD_LOGIC    := '0';
 signal       Cout2   : STD_LOGIC    := '0';
begin

full_adder_i : full_adder
port map(
        A       => A,
        B       => B,
        Cin     => Cin,
        S       => S,
        Cout    => Cout
);

full_adder_p : full_adder
port map(
        A       => A2,
        B       => B2,
        Cin     => Cout,
        S       => S2,
        Cout    => Cout2
);

s: process
begin
    --Cin <= '1';
    
    --Cin	<= not Cin after 20 ns;
    
    --wait 100 ns;
    --A       => '0';
        --B       => '0';
        --Cin     => '0';
        --S       => '0';
        --Cout    => '0';
    
end process;

end;

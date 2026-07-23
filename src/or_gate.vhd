library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity or_gate is

    port(
        A : in std_logic;
        B : in std_logic;
        Y : out std_logic
    );

end or_gate;



architecture comportamiento of or_gate is

begin

    Y <= A or B;

end comportamiento;

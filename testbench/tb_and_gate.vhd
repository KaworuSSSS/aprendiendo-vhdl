library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity tb_and_gate is
end tb_and_gate;


architecture prueba of tb_and_gate is


signal A : std_logic := '0';
signal B : std_logic := '0';
signal Y : std_logic;


begin


UUT: entity work.and_gate

port map(

    A => A,
    B => B,
    Y => Y

);



process

begin


    A <= '0';
    B <= '0';
    wait for 10 ns;


    A <= '1';
    B <= '0';
    wait for 10 ns;


    A <= '1';
    B <= '1';
    wait for 10 ns;


    wait;


end process;


end prueba;

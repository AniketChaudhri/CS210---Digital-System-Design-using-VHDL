LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Testbench IS
    -- no ports
END Testbench;

ARCHITECTURE test OF Testbench IS
    SIGNAL a_in, b_in, c_out : BIT := '0';
    COMPONENT Adder
        PORT (
            a, b : IN BIT;
            c, s : OUT BIT);
    END COMPONENT;
BEGIN
    a_in <= NOT a_in AFTER 1 ns;
    b_in <= NOT b_in AFTER 1 ns;
END test;
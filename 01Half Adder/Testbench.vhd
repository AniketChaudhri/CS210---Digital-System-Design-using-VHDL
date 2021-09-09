LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Testbench IS
    -- no ports
END Testbench;

ARCHITECTURE test OF Testbench IS
    SIGNAL a_in, b_in, c_out : BIT := '0';
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Half_Adder IS
    PORT (
        a : IN BIT;
        b : IN BIT;
        c : OUT BIT;
        s : OUT BIT
    );
END Half_Adder;

ARCHITECTURE Behav OF Half_Adder IS

BEGIN
    c <= a XOR b;
    s <= a AND b;
END Behav;
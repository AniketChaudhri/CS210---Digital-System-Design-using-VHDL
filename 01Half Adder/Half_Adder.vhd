LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

-- Creating AND gate
ENTITY And_Gate IS
    PORT (
        a : IN BIT;
        b : IN BIT;
        s : OUT BIT
    );
END And_Gate;

ARCHITECTURE Behav OF And_Gate IS

BEGIN
    s <= a AND b;
END Behav;
-- End of AND gate

-- Creating XOR gate
ENTITY XOR_Gate IS
    PORT (
        a : IN BIT;
        b : IN BIT;
        c : OUT BIT
    );

BEGIN
    c <= a XOR b;
END XOR_Gate;

ARCHITECTURE Behav OF XOR_Gate IS
BEGIN
    c <= a XOR b;
END Behav;
-- End of XOR gate
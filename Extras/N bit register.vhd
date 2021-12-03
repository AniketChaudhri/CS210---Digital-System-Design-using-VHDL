-- D-FF Declaration
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY D_FF IS PORT (
    d : IN STD_LOGIC;
    clk, rst : IN STD_LOGIC;
    q : OUT STD_LOGIC);
END;

ARCHITECTURE dff_arc OF D_FF IS
BEGIN
    p1 : PROCESS (clk, rst)
    BEGIN
        IF rst = '1' THEN
            q <= '0';
        ELSIF falling_edge(clk) THEN
            q <= d;
        END IF;
    END PROCESS;
END;

-- N bit register declaration
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY N_bit_reg IS
    GENERIC (N : INTEGER := 8);
    PORT (
        data : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
        clock, reset : IN STD_LOGIC;
        Q : OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0));
END;

ARCHITECTURE struct OF N_bit_reg IS
    COMPONENT D_FF IS PORT (d, clk, rst : IN STD_LOGIC;
        q : OUT STD_LOGIC);
    END COMPONENT;

BEGIN
    F : FOR j IN 0 TO N - 1 GENERATE
        DFF : D_FF PORT MAP(data(j), clock, reset, Q(j));
    END GENERATE;
END;
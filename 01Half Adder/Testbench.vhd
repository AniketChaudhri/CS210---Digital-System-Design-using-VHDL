LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Half_Adder_TB IS
    -- no port-s
END Half_Adder_TB;

ARCHITECTURE test OF Half_Adder_TB IS

	COMPONENT Half_Adder
    PORT(
         a_in : IN  bit;
         b_in : IN  bit;
         s_out : OUT  bit;
         c_out : OUT  bit
        );
    END COMPONENT;
	SIGNAL a_in,b_in, c_out, s_out:BIT:='0';
    

    
BEGIN
    A1 : Half_Adder PORT MAP(a_in=>a_in,b_in=> b_in,c_out=> c_out, s_out=> s_out);
    
    a_in <= NOT a_in AFTER 10 ns;
    b_in <= NOT b_in AFTER 5 ns;
END;
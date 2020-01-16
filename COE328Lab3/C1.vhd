LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY C1 IS
PORT (
			K					:IN	STD_LOGIC_VECTOR(3 DOWNTO 0);
			L					:OUT  STD_LOGIC_VECTOR(3 DOWNTO 0));
			
end C1;

ARCHITECTURE Behavior OF C1 IS

BEGIN 
L(0) <= ( (not K(0) and K(1) and K(3)) or (K(0) and not K(1) and not K(2) and K(3)) );
L(1) <= ( not K(0) and  K(1) and  K(2));
L(2) <= ( ( not K(0) and  K(1) and  K(3)) or (not K(0) and K(1) and K(2)));
L(3) <= ( K(0) and not K(2) and not K(2) );
END Behavior; 
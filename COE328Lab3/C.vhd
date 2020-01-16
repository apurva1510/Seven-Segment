LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY C IS
PORT (
			K					:IN	STD_LOGIC_VECTOR(3 DOWNTO 0);
			L					:OUT  STD_LOGIC_VECTOR(3 DOWNTO 0));
			
end C;

ARCHITECTURE Behavior OF C IS

BEGIN 
L(0) <= ( ( K(2) and not K(3) and not K(0) and  K(1) )or (not K(2) and K(0) and K(1)) or ( not K(2) and K(3) and K(1)));
L(1) <= ( ( not K(2) and  K(0) and  K(1)) or (not K(2) and K(3) and K(0)));
L(2) <= ( ( not K(2) and  K(3) and  K(1)) or (not K(2) and K(3) and K(0)));
L(3) <= ( K(2) and not K(3) and not K(0) );
END Behavior; 
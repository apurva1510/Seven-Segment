LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY ASU IS
	PORT( Cin					:IN	STD_LOGIC;
			X,Y					:IN	STD_LOGIC_VECTOR(3 DOWNTO 0);
			S						:OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
			Cout,Overflow, SIGN :OUT 	STD_LOGIC);
END ASU;

ARCHITECTURE Behavior OF ASU IS
		SIGNAL Sum: STD_LOGIC_VECTOR(4 DOWNTO 0);
		SIGNAL comp: STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
PROCESS (Cin)
	BEGIN 
		IF (Cin = '1') then
			Sum <= ('0' & X) + ('0' & Y) + NOT Cin;
			S <= Sum(3 DOWNTO 0 );
			Cout <= Sum(4);
			IF (Sum(3) = '1') then
				SIGN <= '1';
			END IF;
		
	ELSE
		comp(0) <= Y(0) XOR '1';
		comp(1) <= Y(1) XOR '1';     
		comp(2) <= Y(2) XOR '1';
		comp(3) <= Y(3) XOR '1';
		
		Sum <= ('0' & X) + ('0' & comp) + NOt Cin;
		S <= Sum(3 DOWNTO 0 );
		IF (Sum(3) = '1') then
				SIGN <= '1';
		END IF;
		
		
END IF;
END PROCESS;
Overflow <= sum(4) XOR X(3) XOR Y(3) XOR sum(3);
END Behavior;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY monostable is
PORT (
	Voie : IN Std_logic;
	horloge : IN Std_logic;
	
	FM : OUT Std_logic
);
END;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY compteur is
PORT (
        raz  : in  BIT;   --signal de remise a zero
        h: in STD_LOGIC;   --signal d'activation
		  Up_Down : in BIT;
		  

		  sortie: out NATURAL range 0 to 999999  --siganl de sortie
    );
END;
	
ARCHITECTURE archi of compteur is
signal tampon : INTEGER RANGE -1024 to 1023 := 0;
BEGIN
P1: PROCESS(raz,h)
BEGIN
	IF raz = '0' THEN tampon <= 0;
	ELSIF rising_edge(h)THEN 
			if Up_down = '1'
			then tampon <= tampon + 1;
			else tampon <= -1;
			end if;
		ELSE tampon <= tampon ;
	END IF;
END PROCESS;
sortie <= tampon;
END;
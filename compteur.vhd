LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY compteur is
PORT (
        raz  : in  BIT;   --signal de remise a zero
        h: in STD_LOGIC;   --signal d'activation
		  Up_Down : in BIT;
		  Valeur_initial : in NATURAL range 0 to 15;

		  sortie: out NATURAL range 0 to 15;  --siganl de sortie
		  fin_cycle : out STD_LOGIC
    );
END;
	
ARCHITECTURE archi of compteur is
signal tampon : NATURAL RANGE 0 to 15 := 0;
BEGIN
P1: PROCESS(raz,h)
BEGIN
	IF raz = '0' 
	THEN 
		tampon <= Valeur_initial;
	ELSIF rising_edge(h)THEN 
			if Up_down = '1'
			then 
				tampon <= tampon + 1;
				IF tampon = 0
				THEN 
					fin_cycle <= '1';
				END IF;
			else 
				tampon <= tampon -1;
				IF tampon = 15
				THEN 
					fin_cycle <= '1';
				End if;
			end if;
		ELSE tampon <= tampon ;
	END IF;
END PROCESS;
sortie <= tampon;
END;
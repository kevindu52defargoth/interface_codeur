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

ARCHITECTURE archi of monostable is
signal tampon : Std_logic;
BEGIN
P1: PROCESS(Voie)
BEGIN
	if rising_edge(Voie)
	then tampon <= '1';
	end if;
END process;

P2: PROCESS(horloge)
BEGIN
	if falling_edge(horloge)
	then tampon <= '0';
	end if;
	FM <= tampon;
end process;


end archi;
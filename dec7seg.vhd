ENTITY dec7seg IS
PORT (
unite, dizaine, centaine : IN INTEGER RANGE 0 TO 15;
segments_unite, segments_dizaine, segments_centaine : OUT BIT_VECTOR (6 DOWNTO 0)
);
END dec7seg;


ARCHITECTURE numero1 OF dec7seg IS
BEGIN
process(unite)
	--unité
	CASE unite IS
	WHEN 0 =>
		s(1) <= '1';
		s(2) <= '1';
		s(3) <= '1';
		s(4) <= '1';
		s(5) <= '1';
		s(6) <= '0';

	WHEN 1 =>
		s(1) <= '0';
		s(2) <= '1';
		s(3) <= '1';
		s(4) <= '0';
		s(5) <= '0';
		s(6) <= '0';

	END CASE;
END process;
	
END numero1;
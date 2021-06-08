ENTITY dec7seg IS
PORT (
unite, dizaine, centaine : IN INTEGER RANGE 0 TO 15;
segments_unite, segments_dizaine, segments_centaine : OUT BIT_VECTOR (6 DOWNTO 0)
);
END dec7seg;


ARCHITECTURE numero1 OF dec7seg IS
BEGIN

--unité
	WITH unite SELECT
		segments_unite <= 
				"0000001" when 0,
				"1001111" when 1,
				"0010010" when 2,
				"0000110" when 3,
				"1001100" when 4,
				"0100100" when 5,
				"0100000" when 6,
				"0001111" when 7,
				"0000000" when 8,
				"0000100" when 9,
				"0000000" when others;
process(dizaine)
Begin

	--dizaine
	CASE dizaine is
	when 0=> segments_dizaine <= "0000001";  
	when 1=> segments_dizaine <= "1001111";
	when 2=> segments_dizaine <= "0010010";
	when 3=> segments_dizaine <= "0000110";
	when 4=> segments_dizaine <= "1001100";
	when 5=> segments_dizaine <= "0100100";
	when 6=> segments_dizaine <= "0100000";
	when 7=> segments_dizaine <= "0001111";
	when 8=> segments_dizaine <= "0000000";  
	when 9=> segments_dizaine <= "0000100";
	END CASE;
END process;


process(centaine)
begin
	--centaine
	CASE centaine is
	when 0=> segments_centaine <= "0000001";  
	when 1=> segments_centaine <= "1001111";
	when 2=> segments_centaine <= "0010010";
	when 3=> segments_centaine <= "0000110";
	when 4=> segments_centaine <= "1001100";
	when 5=> segments_centaine <= "0100100";
	when 6=> segments_centaine <= "0100000";
	when 7=> segments_centaine <= "0001111";
	when 8=> segments_centaine <= "0000000";  
	when 9=> segments_centaine <= "0000100";
	END CASE;


END process;
	
END numero1;
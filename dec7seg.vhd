ENTITY dec7seg IS
PORT (
unite, dizaine, centaine : IN INTEGER RANGE 0 TO 15;
segments_unite, segments_dizaine, segments_centaine : OUT BIT_VECTOR (6 DOWNTO 0)
);
END dec7seg;


ARCHITECTURE numero1 OF dec7seg IS
BEGIN
process(unite)
Begin
	--unité
	CASE unite IS
	 when 0=> segments_unite <= "0000001";   
    when 1=> segments_unite <= "1001111";
    when 2=> segments_unite <= "0010010";
    when 3=> segments_unite <= "0000110";
    when 4=> segments_unite <= "1001100";
    when 5=> segments_unite <= "0100100";
    when 6=> segments_unite <= "0100000";
    when 7=> segments_unite <= "0001111";
    when 8=> segments_unite <= "0000000";   
    when 9=> segments_unite <= "0000100";
	END CASE;
	
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
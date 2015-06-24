-- PGPLSQL Funktion zum Encoden einer Zahl fuer die Verwendung mit UPCEAN.ttf Barcode Schrift
-- Verwendung:
-- SELECT Barcode(lpad(matrikelnr,12,'0')) FROM public.tbl_student;
-- Zur Verwendung muss die ISN Extension aktiviert sein
-- dazu muss das Paket postgresql-contrib installiert sein und danach im Public Schema
-- der Befehl "CREATE EXTENSION isn;" ausgeführt werden um die Extension zu aktivieren
create or replace function Barcode(nummer in varchar) returns varchar as $$
	DECLARE encoding varchar(12);
	DECLARE v_nLen integer;
	DECLARE nummermitchecksumme varchar(13);
	DECLARE datatoprint varchar;
	DECLARE leadingDigit integer;
	DECLARE aktchar varchar;
	DECLARE aktencoding varchar;
	DECLARE datatoencode varchar;
begin

	-- check length is 12
  v_nLen := length(nummer);
  CASE WHEN v_nLen not in (12) THEN
    RETURN('Wrong length:'||v_nLen);  -- Length not allowed, end immediatly
  ELSE
      nummermitchecksumme := replace(ean13(nummer||'?')::varchar,'-',''); -- ean13 checksumme berechnen
  END CASE;
  
  -- Font Encoding
  	
  leadingDigit := substr(nummermitchecksumme, 1, 1);

	CASE leadingDigit
	WHEN 0 THEN
		encoding := 'AAAAAACCCCCC';
	WHEN 1 THEN
		encoding := 'AABABBCCCCCC';
	WHEN 2 THEN
		encoding := 'AABBABCCCCCC';
	WHEN 3 THEN
		encoding := 'AABBBACCCCCC';
	WHEN 4 THEN
		encoding := 'ABAABBCCCCCC';
	WHEN 5 THEN
		encoding := 'ABBAABCCCCCC';
	WHEN 6 THEN
		encoding := 'ABBBAACCCCCC';
	WHEN 7 THEN
		encoding := 'ABABABCCCCCC';
	WHEN 8 THEN
		encoding := 'ABABBACCCCCC';
	WHEN 9 THEN
		encoding := 'ABBABACCCCCC';
	END CASE;

	datatoencode = substr(nummermitchecksumme,2,12);
	datatoprint:='';
	For i in 0..12 LOOP
		aktchar := ascii(substr(datatoencode,i+1,1));
		aktencoding:= substr(encoding,i+1,1);

		CASE aktencoding
		WHEN 'A' THEN
			datatoprint:= datatoprint || COALESCE(chr(aktchar::integer),'Y:'||aktchar);
		WHEN 'B' THEN
			datatoprint:= datatoprint || COALESCE(chr(aktchar::integer+17),'Y:'||aktchar);
		WHEN 'C' THEN
			datatoprint:= datatoprint || COALESCE(chr(aktchar::integer+27),'Y:' || aktchar);
		ELSE
			--return('WRONGENC:'||aktencoding || 'x'||encoding ||'x'||i);
		END CASE;

		CASE i
		WHEN 0 THEN
			if leadingDigit>4 then
				datatoprint := COALESCE(chr(ascii(leadingDigit::varchar)+64),'X'||leadingDigit) || '(' || datatoprint;
			end if;
			if leadingDigit< 5 then
				datatoprint := COALESCE(chr(ascii(leadingDigit::varchar)+37),'X'||leadingDigit) || '(' || datatoprint;
			end if;
		WHEN 5 THEN
			datatoprint:= datatoprint || '*';
		WHEN 11 THEN
			datatoprint:= datatoprint || '(';
		ELSE
			-- do nothing
		END CASE;
	END LOOP; 

  return(datatoprint);
end;
$$ LANGUAGE plpgsql

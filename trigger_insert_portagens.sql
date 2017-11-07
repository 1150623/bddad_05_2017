
create or replace TRIGGER restringir_portico
BEFORE INSERT on Portico
FOR EACH ROW
DECLARE tipo  AUTOESTRADA.TIPOPORTAGEM%TYPE;		
BEGIN

SELECT TIPOPORTAGEM into tipo FROM AUTOESTRADA WHERE CODAUTOESTRADA = :new.CODAUTOESTRADA;

if(tipo = 1) then
		RAISE_APPLICATION_ERROR( -20001, 
                             'Tipo portagem não corresponde' );
	end if;
END;


create or replace TRIGGER restringir_portagemtradicional
BEFORE INSERT on PortagemTradicional
FOR EACH ROW		
DECLARE tipo AUTOESTRADA.TIPOPORTAGEM%TYPE;
BEGIN

SELECT TIPOPORTAGEM into tipo FROM AUTOESTRADA WHERE CODAUTOESTRADA = :new.CODAUTOESTRADA;

if(tipo = 2)	then
		RAISE_APPLICATION_ERROR( -20001, 
                             'Tipo portagem não corresponde' );
		end if;
END;
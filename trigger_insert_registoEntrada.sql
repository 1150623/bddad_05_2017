

create or replace TRIGGER REGISTOENTRADAONINSERT 
BEFORE INSERT ON REGISTOENTRADA
FOR EACH ROW
declare same integer;
BEGIN

SELECT Count(*) into same FROM RegistoEntrada re WHERE re.CODAUTOESTRADA = :new.CODAUTOESTRADA and re.CODPORTTRADICIONAL = :new.CODPORTTRADICIONAL and re.MATRICULAVEICULO = :new.MATRICULAVEICULO and re.dataREG = :new.datareg;

if(same > 0) then


	RAISE_APPLICATION_ERROR( -20001, 
                             'Registo j? existente na base de dados' );

  end if;
END;
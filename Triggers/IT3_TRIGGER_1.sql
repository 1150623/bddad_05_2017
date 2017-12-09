/*

TRIGGER 1 - Trigger que desative um dispositivo quando se considera que uma ordem de
            debito é incobravel pelo banco (situacao= 2).


PARA TESTAR:



insert into COBRANCAMENSAL (CLIENTENIF, DATAEMISSAO, VALORTOTAL, SITUACAOPAGAMENTO) values(123456789, TO_TIMESTAMP('2017-1-5 12:12:12', 'YYYY-MM-DD HH24:MI:SS'),15.25, 0);

UPDATE COBRANCAMENSAL SET situacaoPagamento = 2 where clienteNIF = 123456789;

+++VERIFICAR QUE OS DISPS DO CLIENTE PASSAM A 0+++
*/


create or replace trigger valor_incobravel
after update on COBRANCAMENSAL
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
BEGIN
  if(:NEW.situacaoPagamento = 2) then
    UPDATE Dispositivo SET estadoDispositivo = 0 where :NEW.clienteNIF = Dispositivo.clienteNIF;
  end if;
END;

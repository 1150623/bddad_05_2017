create or replace trigger valor_incobravel
after update on COBRANCAMENSAL
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
BEGIN
  if(:NEW.situacaoPagamento = 2) then
    UPDATE Dispositivo SET estadoDispositivo = 0 where :NEW.clienteNIF = Dispositivo.clienteNIF;
  end if;
END;

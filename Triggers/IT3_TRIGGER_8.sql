

create or replace trigger trigger_insert_dispositivo
before insert on Dispositivo
for each row
begin
    if(:NEW.clientenif in(select clienteNIF from CobrancaMensal where situacaoPagamento = 2)) then
        RAISE_APPLICATION_ERROR(-20101, 'O Cliente tem debitos incobráveis. Não pode adicionar-lhe dispositivos!');
		ROLLBACK;
    end if;
end;
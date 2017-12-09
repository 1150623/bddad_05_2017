create or replace trigger t_desativar_dispositivo
after 
    update of situacaopagamento
on cobrancamensal
for each row
begin
    if(:NEW.situacaopagamento=2) then
        update dispositivo 
        set estadodispositivo = 0
        where :NEW.clientenif=dispositivo.clientenif;
    end if;
end;
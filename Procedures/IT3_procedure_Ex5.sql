create or replace procedure atualizar_tipo_cliente(c_nif number)
as
c_tipocliente cliente.tipocliente%type;
c_data_atualizacao cliente.data_atualizacao%type;
c_pontos_acumulados cliente.pontuacaoacumulada%type;

begin

select tipocliente, data_atualizacao, pontuacaoacumulada into c_tipocliente, c_data_atualizacao, c_pontos_acumulados from cliente;

if(to_date(c_data_atualizacao, 'yyyy-mm-dd') - sysdate) = 0 then

    if c_pontos_acumulados > 2500 then
       c_tipocliente := 'Gold';
        c_data_atualizacao :=sysdate;
        update cliente SET tipocliente=c_tipocliente, data_atualizacao=c_data_atualizacao;
    else
        c_tipocliente := 'Silver';
        c_data_atualizacao :=sysdate;
        update cliente SET tipocliente=c_tipocliente, data_atualizacao=c_data_atualizacao;
    end if;
  end if;
end;

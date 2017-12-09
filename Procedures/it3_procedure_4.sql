create or replace procedure proc_calcular_debitos (v_ano number, v_mes number)
is

matricula veiculo.matricula%type;
valortotal number;

CURSOR c_debito_mensal
is
select matricula, sum(val)val from(
select v.matricula, sum(lpp.valortotal) val from
linhapagamentopassagemportico lpp, veiculo v, dispositivo_veiculo dv
where v.matricula=dv.matriculaveiculo and dv.nrseriedispositivo=lpp.nrseriedispositivo
and extract (year from lpp.dataemissao)=v_ano and extract (month from lpp.dataemissao)=v_mes
group by v.matricula
union
select v.matricula, sum(lpt.valor)val from linhapagamentosportagenstradicionais lpt, veiculo v, dispositivo_veiculo dv, registosaida rs
where v.matricula=dv.matriculaveiculo and dv.nrseriedispositivo=lpt.nrseriedispositivo and rs.nrregistosaida=lpt.nrregsaida
and extract (year from rs.data)=v_ano and extract (month from rs.data)=v_mes
group by v.matricula)
group by matricula;


linha_deb c_debito_mensal%rowtype;
begin

for linha_deb in c_debito_mensal
    loop
        insert into debitomensal (matricula, ano, mes,DEBITOMENSAL) 
        values (linha_deb.matricula, v_ano, v_mes, linha_deb.val);
        end loop;
end;
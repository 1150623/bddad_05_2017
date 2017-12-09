create or replace trigger atribuir_pontos_cobrancamensal
after
    update of situacaopagamento
on cobrancamensal
for each row

declare 
nif_cliente cobrancamensal.clientenif%type:=cobrancamensal.clientenif;
dataFact cobrancamensal.dataemissao%type:=cobrancamensal.dataemissao;


cursor reg_saidas 
is
select rs.nrregistosaida from registosaida rs, cobrancamensal cm, dispositivo d, veiculo v, cliente cl, dispositivo_veiculo dv
where cm.clientenif=cl.nif and cl.nif=d.clientenif and d.nr_serie=dv.nrseriedispositivo 
and dv.matriculaveiculo=v.matricula and v.matricula=rs.matriculaveiculo
and extract(year from rs.data)=extract(year from dataFact) 
and extract (month from rs.data)=extract(month from dataFact)
and d.clientenif=nif_cliente;

regSaidas reg_saidas%rowtype;
quilometrosT number:=0;

begin

if(:new.situacaopagamento=1) then 
    
for regSaidas in reg_saidas
    loop
        quilometrosT:=quilometrosT+func_distancia(regSaidas);
        end loop;
        
insert into LinhasPontos (clientenif, datapontos, pontos) values (nif_cliente, dataFact, quilometros);
end if;
end;

create or replace trigger atribuir_pontos_ctt
after
    update of situacaopagamento
on cobrancactt
for each row

declare 

v_matricula cobrancactt.matriculaveiculo%type:=cobrancactt.matriculaveiculo;
dataFact cobrancactt.dataemissao%type:=cobrancactt.dataemissao;
pontosAt number:=0;
nif_cliente Cliente.nif%type;

cursor pontos_CTT
is
select t.pontosAtribuidos from
taxa t, portico p, passagemportico pp, veiculo v, cobrancactt ctt, dispositivo d,
dispositivo_veiculo dv, cliente cl
where t.codautoestrada=p.codautoestrada and t.codportico=p.codportico
and p.codautoestrada=pp.codautoestrada and p.codportico=pp.codportico
and v.matricula=pp.matriculaveiculo and ctt.matriculaveiculo=v.matricula
and ctt.nrpassagem=pp.nrpassagem
and v.matricula=dv.matriculaveiculo and d.nr_serie=dv.nrseriedispositivo
and d.clientenif=cl.nif
and extract(year from rs.data)=extract(year from dataFact) 
and extract (month from cct.dataemissao)=extract(month from dataFact);

pontosCTT pontos_CTT%rowtype;

begin

if(:new.situacaopagamento=1) then 

for pontosCTT in pontos_CTT
    loop
        pontosAt:=pontosAt+pontosCTT;
        end loop;

        
insert into LinhasPontos (datapontos, pontos) values (dataFact, pontosAt);

select cl.nif into nif_cliente from cliente cl, dispositivo d, dispositivo_veiculo dv, veiculo v, cobrancactt ctt
where v.matricula=dv.matriculaveiculo and d.nr_serie=dv.nrseriedispositivo
and d.clientenif=cl.nif and d.matriculaveiculo=v_matricula;

end if;
end;
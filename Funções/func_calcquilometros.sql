create or replace function calc_quilometros (nrRegisto registosaida.nrregistosaida%type)
return number is

distancia number;
km_entrada Portagemtradicional.quilometro%type;
km_saida Portagemtradicional.quilometro%type;

begin

select pt.quilometro into km_saida from portagemtradicional pt, registosaida rs
where rs.codporttradicional=pt.codporttradicional and rs.nrregistosaida=nrRegisto;

select pt.quilometro into km_entrada from portagemtradicional pt, registoentrada re, registosaida rs
where re.nrregistoentrada=rs.nrregistoentrada and re.codporttradicional=pt.codporttradicional
and rs.nrregistosaida=nrRegisto;

distancia:=abs(km_saida-km_entrada);

return distancia;

end;

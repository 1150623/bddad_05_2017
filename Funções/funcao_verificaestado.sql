/*
Verifica o estado do dispositivo de uma matrícula numa data
*/

create or replace function verifica_estado  (v_matricula Veiculo.matricula%type, v_data timestamp)
return number is

disp Dispositivo.nr_serie%type;

begin

select nrseriedispositivo into disp from(
select dv.nrseriedispositivo from dispositivo_veiculo DV where
dv.matricula=v_matricula and dv.infodata<v_data 
order by dv.infodata desc) where rownum=1;

if (disp>0) then
return disp;
end if;
return -1;

end;
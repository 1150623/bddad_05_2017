create or replace function getDispositivoDeVeiculo  (matricula Veiculo.matricula%type, v_data timestamp)
  RETURN varchar is
  disp Dispositivo.nr_serie%type;
  contagem number;
begin
  
  select COUNT(*) into contagem
      from dispositivo_veiculo DV 
      where   dv.matriculaveiculo=matricula 
              and dv.infodata<=v_data ;
              
  if(contagem=0)
  then 
      return 'notfound';
  end if;
  
  select * into disp
  from (select dv.nrseriedispositivo
          from dispositivo_veiculo dv 
              where   dv.matriculaveiculo=matricula 
                      and dv.infodata<=v_data  
                      order by dv.infodata 
                      desc)
  where rownum=1;
  
  
  return disp;
end getDispositivoDeVeiculo;
create or replace function getVeiculoDeDispositivo  (
disp Dispositivo.nr_serie%type,
v_data timestamp)
  RETURN varchar is
  contagem number;
  v_matricula Veiculo.matricula%type;

begin
  
  select COUNT(*) into contagem
      from dispositivo_veiculo DV 
      where   dv.matriculaveiculo=v_matricula 
              and dv.infodata<=v_data;
              
  if(contagem=0)
  then 
      return 'notfound';
  end if;
  
  select matriculaveiculo into v_matricula
  from (select matriculaveiculo
          from dispositivo_veiculo dv 
              where   dv.matriculaveiculo=v_matricula 
                      and dv.infodata<=v_data 
                      order by dv.infodata 
                      desc) 
  where rownum=1;
  
  
  return v_matricula;
end getVeiculoDeDispositivo;
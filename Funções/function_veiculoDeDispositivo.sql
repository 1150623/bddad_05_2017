
create or replace function getVeiculoDeDispositivo  (disp Dispositivo.nr_serie%type, _data timestamp)
  RETURN varchar is
  _matricula Veiculo.matricula%type;

begin
  
  select COUNT(*) into contagem
      from dispositivo_veiculo DV 
      where   dv.matriculaveiculo=v_matricula 
              and dv.infodata<=v_data;
              
  if(contagem=0)
  then 
      return 'notfound';
  end if;
  
  select matricula into _matricula
  from (select matricula
          from dispositivo_veiculo dv 
              where   dv.matriculaveiculo=_matricula 
                      and dv.infodata<=_data 
                      order by dv.infodata 
                      desc) 
  where rownum=1;
  
  
  return _matricula;
end getVeiculosDeDispositivo;
create or replace FUNCTION NUMDAYS (mes number) RETURN number AS 
BEGIN
  if(mes > 12 or mes < 1) then
    return NULL;
  end if;
  
  if(mes = 1 or mes = 3 or mes =5 or mes = 7 or mes = 8 or mes = 10 or mes = 12) then
    return 31;
  end if;
  
  if(mes = 4 or mes = 6 or mes =9 or mes = 11) then
    return 30;
  end if;
  
  RETURN 28;
END NUMDAYS;
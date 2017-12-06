
---+--------------------------------------------------------------------+
-- | Funcoes que permitam obter o valor a cobrar num dado mes. 			    |
---+--------------------------------------------------------------------+
-- | -- a. func_valor_dispositivo(dispositivo_id, ano, mes) : number  	|
-- | -- b. func_valor_matricula(matricula, ano, mes) : number 			    |
-- | -- c. func_valor_cliente(cliente_id, ano, mes) : number 			      |
---+--------------------------------------------------------------------+
 
 
 -- +---+
 -- | a |
 -- +---+


  create or replace function func_valor_dispositivo(dispositivo_id DISPOSITIVO.NRSERIE%TYPE, ano, mes) 
  return number	is
  v_taxa	number;
  
  begin
      select	taxa	into	v_taxa	from	taxaporAco				
          where	classe_id	=	p_classe_id	and	porAco_id	=	p_porAco_id;			
          
  
  return	v_taxa;	
  
    except
        --Exception	handler	universal			
        when	others	then return	null;	
        
  end;	
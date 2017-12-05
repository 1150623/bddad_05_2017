
create or replace FUNCTION FATURACAO_CLIENTE

(
  CLIENTENIF IN CLIENTE.NIF%TYPE 
) RETURN FLOAT AS 
faturacao float;
financas float;
ctt float;
mensal float;
                
BEGIN


  faturacao := 0;
  select SUM(fin.valor) into financas
                from CobrancaFinancas fin, RegistoSaida rs, Dispositivo dis 
                where fin.matriculaVeiculo =  dis.matriculaVeiculo
                  and CLIENTENIF = dis.ClienteNIF
                  and extract(year from rs.DATA) = extract(year from CURRENT_TIMESTAMP);
                  
   select SUM(ctt.VALORCOBRANCA) into ctt
                  from CobrancaCTT ctt, Dispositivo dis, PassagemPortico pp 
                  where pp.nrPassagem = ctt.nrPassagem 
                    and pp.matriculaVeiculo =  dis.matriculaVeiculo
                    and CLIENTENIF = dis.ClienteNIF
                    and extract(year from pp.dataPassagem) = extract(year from CURRENT_TIMESTAMP) ;        
  
   select SUM(men.VALORTOTAL) into mensal
                  from CobrancaMensal men
                  where CLIENTENIF = men.CLIENTENIF
                    and extract(year from men.dataEmissao) = extract(year from CURRENT_TIMESTAMP);
                    
  
  faturacao := mensal + ctt + financas;
  
  RETURN faturacao;
  
  
END FATURACAO_CLIENTE;
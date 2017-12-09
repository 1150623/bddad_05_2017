
---+--------------------------------------------------------------------+
-- | Funcoes que permitam obter o valor a cobrar num dado mes. 			    |
---+--------------------------------------------------------------------+
-- | -- a. func_valor_dispositivo(dispositivo_id, ano, mes) : number  	|
-- | -- b. func_valor_matricula(matricula, ano, mes) : number 			    |
-- | -- c. func_valor_cliente(cliente_id, ano, mes) : number 			      |
---+--------------------------------------------------------------------+
 
 
 -- +-----+
 -- |  A  |
 -- +-----+

create or replace function func_valor_dispositivo(dispositivo_id DISPOSITIVO.NR_SERIE%TYPE, ano number, mes number) 
    return float	is 
    matricula Veiculo.matricula%type;
    c_ctt float;
    c_financas float;
    c_debito_porticos float;
    c_debito_tradicionais float;
    c_total float;
    conv_data timestamp;
    dias number;
    contagemCTT number;
    contagemFIN number;
    contagemDPORT number;
    contagemDTRAD number;
  begin


    dias := numDays(mes);
    c_total := 0.0;
        
        conv_data := TO_TIMESTAMP(ano || '-' || mes || '-'|| dias || '23:59:59', 'YYYY-MM-DD HH24:MI:SS');

        -- encontra o veiculo desse dispositivo no mesm enviado por parametro
         matricula:=getVeiculoDeDispositivo(dispositivo_id, conv_data);
           --dbms_output.put_line('disp -> ' || dispositivo_id || ' | tinha matricula -> ' || matricula ||' em ' || conv_data);   
           
        
          select COUNT(*) into contagemCTT from CobrancaCtt ctt where ctt.matriculaveiculo = matricula 
                                                                            and ctt.situacaoPagamento = 0
                                                                            and extract(year from ctt.dataemissao) = ano
                                                                            and extract(month from ctt.dataemissao) = mes; 
          
          select COUNT(*) into contagemFIN from CobrancaFinancas fin where fin.matriculaveiculo = matricula 
                                                                                and fin.situacaoPagamento = 0       -- 0 -> Não Pago ; 1 -> Pago
                                                                                and extract(year from fin.dataemissao) = ano
                                                                                and extract(month from fin.dataemissao) = mes; 
           select  COUNT(*) into contagemDPORT from LinhaPagamentoPassagemPortico lppp where lppp.nrseriedispositivo = dispositivo_id
                                                                        and extract(year from lppp.dataemissao) = ano
                                                                        and extract(month from lppp.dataemissao) = mes; 
          
          select COUNT(*) into contagemDTRAD from LinhaPagamentosPortagensTradicionais lppt where lppt.nrseriedispositivo = dispositivo_id
                                                                        and extract(year from lppt.dataemissao) = ano
                                                                        and extract(month from lppt.dataemissao) = mes; 
          
          if(contagemCTT <> 0) then
              
            -- Cobranca Finanças com esta matricula no mes 'mes' do ano 'ano' enviados por parametro
            select SUM(ctt.valorCobranca) into c_ctt from CobrancaCtt ctt where ctt.matriculaveiculo = matricula 
                                                                                and ctt.situacaoPagamento = 0
                                                                                and extract(year from ctt.dataemissao) = ano
                                                                                and extract(month from ctt.dataemissao) = mes; 
                                                                                
              c_total := c_total + c_ctt;                                                                 
                                                                                
                           
         
         end if;
         
         
         if(contagemFIN <> 0) then
         
            select SUM(fin.valor) into c_financas from CobrancaFinancas fin where fin.matriculaveiculo = matricula 
                                                                                    and fin.situacaoPagamento = 0       -- 0 -> Não Pago ; 1 -> Pago
                                                                                    and extract(year from fin.dataemissao) = ano
                                                                                    and extract(month from fin.dataemissao) = mes; 
            
             c_total := c_total + c_financas;    
        end if;
        
        if(contagemDPORT <> 0) then
        select SUM(valorTotal) into c_debito_porticos from LinhaPagamentoPassagemPortico lppp where lppp.nrseriedispositivo = dispositivo_id
                                                                        and extract(year from lppp.dataemissao) = ano
                                                                        and extract(month from lppp.dataemissao) = mes; 
        
        c_total := c_total + c_debito_porticos;   
         end if;
         
         if(contagemDTRAD <> 0) then
        select SUM(valor) into c_debito_tradicionais from LinhaPagamentosPortagensTradicionais lppt where lppt.nrseriedispositivo = dispositivo_id
                                                                        and extract(year from lppt.dataemissao) = ano
                                                                        and extract(month from lppt.dataemissao) = mes; 
          
        c_total := c_total + c_debito_tradicionais; 
         end if;
        
          -- dbms_output.put_line('ctt -> ' || c_ctt || '.');
          -- dbms_output.put_line('fin -> ' || c_financas || '.');      
          -- dbms_output.put_line('deb_port -> ' || c_debito_porticos || '.');     
          -- dbms_output.put_line('deb_trad -> ' || c_debito_tradicionais || '.'); 
          -- dbms_output.put_line('total -> ' || c_total || '.');
         
      return	c_total;	
  
 -- end if;
    
   
    
    exception
        --Exception	handler	universal			
        when INVALID_NUMBER	then
          return	null;	
        
  end;
  
  
 -- +-----+
 -- |  B  |
 -- +-----+
 
 
 create or replace function func_valor_matricula(matricula Veiculo.matricula%TYPE, ano number, mes number) 
    return number	is 
    dispositivo_id number;
    c_ctt number;
    c_financas number;
    c_debito_porticos number;
    c_debito_tradicionais number;
    c_total float;
    conv_data timestamp;
    dias number;
    contagemCTT float;
    contagemFIN float;
    contagemDPORT float;
    contagemDTRAD float;
    
  begin
    c_total :=0;
    dias := numDays(mes);
    -- converte ano e mes para timestamp
    conv_data := TO_TIMESTAMP(ano || '-' || mes || '-'|| dias || '23:59:59', 'YYYY-MM-DD HH24:MI:SS');
    
     
    -- encontra o veiculo desse dispositivo no mesm enviado por parametro
     dispositivo_id:=getDispositivoDeVeiculo(matricula, conv_data);
      
    if(dispositivo_id = -1) then
     raise_application_error(+100, 'Erro getDispositivoDeVeiculo');
    end if;
      
      
      select COUNT(*) into contagemCTT from CobrancaCtt ctt where ctt.matriculaveiculo = matricula 
                                                                        and ctt.situacaoPagamento = 0
                                                                        and extract(year from ctt.dataemissao) = ano
                                                                        and extract(month from ctt.dataemissao) = mes; 
          
          select COUNT(*) into contagemFIN from CobrancaFinancas fin where fin.matriculaveiculo = matricula 
                                                                            and fin.situacaoPagamento = 0       -- 0 -> Não Pago ; 1 -> Pago
                                                                            and extract(year from fin.dataemissao) = ano
                                                                            and extract(month from fin.dataemissao) = mes;  
           select  COUNT(*) into contagemDPORT from LinhaPagamentoPassagemPortico lppp where lppp.nrseriedispositivo = dispositivo_id
                                                                    and extract(year from lppp.dataemissao) = ano
                                                                    and extract(month from lppp.dataemissao) = mes; 
          
          select COUNT(*) into contagemDTRAD from LinhaPagamentosPortagensTradicionais lppt where lppt.nrseriedispositivo = dispositivo_id
                                                                    and extract(year from lppt.dataemissao) = ano
                                                                    and extract(month from lppt.dataemissao) = mes; 
      
      
      if(contagemCTT <> 0) then
      
    -- Cobranca Finanças com esta matricula no mes 'mes' do ano 'ano' enviados por parametro
    select SUM(ctt.valorCobranca) into c_ctt from CobrancaCtt ctt where ctt.matriculaveiculo = matricula 
                                                                        and ctt.situacaoPagamento = 0
                                                                        and extract(year from ctt.dataemissao) = ano
                                                                    and extract(month from ctt.dataemissao) = mes; 
    
    c_total:=c_total + c_ctt;
    end if;
    
         if(contagemFIN <> 0) then                                                                
    select SUM(fin.valor) into c_financas from CobrancaFinancas fin where fin.matriculaveiculo = matricula 
                                                                            and fin.situacaoPagamento = 0       -- 0 -> Não Pago ; 1 -> Pago
                                                                            and extract(year from fin.dataemissao) = ano
                                                                            and extract(month from fin.dataemissao) = mes; 
    c_total:=c_total + c_financas;
      end if;
     if(contagemDPORT <> 0) then
    select SUM(valorTotal) into c_debito_porticos from LinhaPagamentoPassagemPortico lppp where lppp.nrseriedispositivo = dispositivo_id
                                                                    and extract(year from lppp.dataemissao) = ano
                                                                    and extract(month from lppp.dataemissao) = mes; 
        c_total:=c_total + c_debito_porticos;                                                            
        end if;                                                            
     if(contagemDTRAD <> 0) then
    select SUM(valor) into c_debito_tradicionais from LinhaPagamentosPortagensTradicionais lppt where lppt.nrseriedispositivo = dispositivo_id
                                                                    and extract(year from lppt.dataemissao) = ano
                                                                    and extract(month from lppt.dataemissao) = mes; 
     
     c_total:=c_total + c_debito_tradicionais;
     
          -- dbms_output.put_line('ctt -> ' || c_ctt || '.');
          -- dbms_output.put_line('fin -> ' || c_financas || '.');      
          -- dbms_output.put_line('deb_port -> ' || c_debito_porticos || '.');     
          -- dbms_output.put_line('deb_trad -> ' || c_debito_tradicionais || '.'); 
          -- dbms_output.put_line('total -> ' || c_total || '.');
     
      end if;    
  return	c_total;	
        
  end;
  
  
  
 -- +-----+
 -- |  C  |
 -- +-----+
 
 
 create or replace function func_valor_cliente(cliente_id Cliente.nif%TYPE, ano number, mes number) 
    return float	is 
    conv_data timestamp;
    dias number;
    valor float;
      
BEGIN
  valor := 0;
    
    for disps in (select * from Dispositivo d where d.clienteNIF = cliente_id)
    loop  
        valor := valor + func_valor_dispositivo(disps.nr_serie, ano, mes);
    end loop;
    -- dbms_output.put_line('valorFinal -> ' || valor);
  RETURN valor;
  
END func_valor_cliente;
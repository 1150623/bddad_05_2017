
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
    conv_data timestamp;
    dias number;
   /*
   aux_a varchar2(30);
    aux_b varchar2(30);
    aux_c varchar2(30);
    aux_ano varchar2(30);
    aux_mes varchar2(30);
    aux_dia varchar2(30);
    aux_d varchar2(30);
    aux_final varchar2(30);
    */
  begin
  
    dias := numDays(mes);
    /*
    aux_ano := to_char(ano, '99');
    aux_mes := to_char(mes, '999');
    aux_dia := to_char(dias, '99');
    aux_a := concat(aux_ano, '-');
    aux_b := concat(aux_mes, '-');
    aux_c := concat(aux_dia, ' 23:59:59');
    aux_d := concat(aux_a, aux_b);
    aux_final := concat(aux_d, aux_c);
    */
    -- converte ano e mes para timestamp
    
    if(ano <> NULL and mes <> NULL and dias <> NULL) then
    
        
        conv_data := TO_TIMESTAMP(ano || '-' || mes || '-'|| dias || '23:59:59', 'YYYY-MM-DD HH24:MI:SS');
       
        -- encontra o veiculo desse dispositivo no mesm enviado por parametro
         matricula:=getVeiculoDeDispositivo(dispositivo_id, conv_data);
          
        if(matricula = -1) then
          raise_application_error(-1722, 'Erro getVeiculoDeDispositivo');
        end if;
         
          
        -- Cobranca Finanças com esta matricula no mes 'mes' do ano 'ano' enviados por parametro
        select SUM(ctt.valorCobranca) into c_ctt from CobrancaCtt ctt where ctt.matriculaveiculo = matricula 
                                                                            and ctt.situacaoPagamento = 0
                                                                            and extract(year from ctt.dataemissao) = ano
                                                                            and extract(month from ctt.dataemissao) = mes; 
                                                                            
        select SUM(fin.valor) into c_financas from CobrancaFinancas fin where fin.matriculaveiculo = matricula 
                                                                                and fin.situacaoPagamento = 0       -- 0 -> Não Pago ; 1 -> Pago
                                                                                and extract(year from fin.dataemissao) = ano
                                                                                and extract(month from fin.dataemissao) = mes; 
        
        select SUM(valorTotal) into c_debito_porticos from LinhaPagamentoPassagemPortico lppp where lppp.nrseriedispositivo = dispositivo_id
                                                                        and extract(year from lppp.dataemissao) = ano
                                                                        and extract(month from lppp.dataemissao) = mes; 
        
        select SUM(valor) into c_debito_tradicionais from LinhaPagamentosPortagensTradicionais lppt where lppt.nrseriedispositivo = dispositivo_id
                                                                        and extract(year from lppt.dataemissao) = ano
                                                                        and extract(month from lppt.dataemissao) = mes; 
              
      return	c_debito_tradicionais+c_debito_porticos+c_financas+c_ctt;	
  
  end if;
    
   
    
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
    conv_data timestamp;
    dias number;
  begin
  
    dias := numDays(mes);
    -- converte ano e mes para timestamp
    conv_data := TO_TIMESTAMP(ano + '-' + mes + '-'+ dias + '23:59:59', 'YYYY-MM-DD HH24:MI:SS');
    
     
    -- encontra o veiculo desse dispositivo no mesm enviado por parametro
     dispositivo_id:=getDispositivoDeVeiculo(matricula, conv_data);
      
    if(dispositivo_id = -1) then
     raise_application_error(+100, 'Erro getDispositivoDeVeiculo');
    end if;
      
    -- Cobranca Finanças com esta matricula no mes 'mes' do ano 'ano' enviados por parametro
    select SUM(ctt.valorCobranca) into c_ctt from CobrancaCtt ctt where ctt.matriculaveiculo = matricula 
                                                                        and ctt.situacaoPagamento = 0
                                                                        and extract(year from ctt.dataemissao) = ano
                                                                        and extract(month from ctt.dataemissao) = mes; 
                                                                        
    select SUM(fin.valor) into c_financas from CobrancaFinancas fin where fin.matriculaveiculo = matricula 
                                                                            and fin.situacaoPagamento = 0       -- 0 -> Não Pago ; 1 -> Pago
                                                                            and extract(year from fin.dataemissao) = ano
                                                                            and extract(month from fin.dataemissao) = mes; 
    
    select SUM(valorTotal) into c_debito_porticos from LinhaPagamentoPassagemPortico lppp where lppp.nrseriedispositivo = dispositivo_id
                                                                    and extract(year from lppp.dataemissao) = ano
                                                                    and extract(month from lppp.dataemissao) = mes; 
    
    select SUM(valor) into c_debito_tradicionais from LinhaPagamentosPortagensTradicionais lppt where lppt.nrseriedispositivo = dispositivo_id
                                                                    and extract(year from lppt.dataemissao) = ano
                                                                    and extract(month from lppt.dataemissao) = mes; 
          
  return	c_debito_tradicionais+c_debito_porticos+c_financas+c_ctt;	
        
  end;
  
 -- +-----+
 -- |  C  |
 -- +-----+
 
 create or replace function func_valor_cliente(cliente_id Cliente.nif%TYPE, ano number, mes number) 
    return float	is 
    conv_data timestamp;
    dias number;
    valor float;
    Cursor dispositivos is (select * from Dispositivo d where d.clienteNIF = cliente_id);  
BEGIN
  valor := 0;
    
    for item in dispositivos
    loop  
        valor := valor + func_valor_dispositivo(item.nr_serie, ano, mes);
    end loop;
    
  RETURN valor;
  
END func_valor_cliente;
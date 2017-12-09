
-- +----------------------------------------------------------------------------------------------------+
-- |                                          PROCEDURE                                                 |
-- +------------------+---------------------------------------------------------------------------------+
-- |                  |                                                                                 |
-- |                  |     Com o objetivo de fornecer indicadores de gestão pretende-se emular um      |
-- |                  | datawarehouse recorrendo ao modelo em estrela (anexo A). Crie um                |
-- |     EXERCÍCIO    | procedimento para carregar as tabelas VendasPortagem e VendasPortico.           |
-- |         6        |     Deve adaptar o modelo em estrela que se encontra no anexo A ao seu modelo   |
-- |                  | de dados em concreto. Em concreto, deve adaptar as chaves estrangeiras das      |
-- |                  | tabelas VendasPortagem e VendasPortico ao seu modelo relacional                 |
-- |                  | previamente desenvolvido. Deve também implementar as alterações ao seu          |
-- |                  | modelo de dados que possam ser necessárias para garantir que o mesmo registo    |
-- |                  | de passagem num pórtico ou numa portagem não é contabilizado mais do que        |
-- |                  | uma vez.                                                                        |
-- |                  |                                                                                 |
-- |                  |     NOTA: Entende-se por vendas, os valores debitados ao cliente                |
-- |                  |     independentemente de já terem sido pagos ou não.                            |
-- |                  |                                                                                 |
-- +------------------+---------------------------------------------------------------------------------+

/* Criação de Tabelas
  
  -> Diferenças com Anexo A - O portico jáé identificado pela autestrada e pelo seu codigo, visto que a ligação
                direta da autoestrada se torna redundante.



-- tabela VendasPortico
create table VendasPortico(
  ano number,
  mes number,
  codAutoestrada varchar2(3),
  codPortico number,
  classeVeiculo integer,
  numPassagens number,
  ValorTotalCobrado float,
  CONSTRAINT vendasportico_pk PRIMARY KEY (ano, mes, codautoestrada, codportico, classeveiculo),
  CONSTRAINT vendasportico_portico_fk FOREIGN KEY (codportico, codautoestrada) REFERENCES PORTICO,
  CONSTRAINT vendasportico_classe_fk FOREIGN KEY (classeVeiculo) REFERENCES Classe
);


-- tabela VendasPortagem
create table VendasPortagem(
  ano number,
  mes number,
  codAutoestrada varchar2(3),
  codPortagemSaida number, --Tradicional -> RegistoSaida
  classeVeiculo integer,
  numPassagens number,
  ValorTotalCobrado float,
  CONSTRAINT vendasportagem_pk PRIMARY KEY (ano, mes, codautoestrada, codPortagemSaida, classeveiculo),
  CONSTRAINT vendasportagem_portagemtradicional_fk FOREIGN KEY (codautoestrada, codPortagemSaida) REFERENCES PortagemTradicional,
  CONSTRAINT vendasportagem_classe_fk FOREIGN KEY (classeVeiculo) REFERENCES Classe
);
*/


create or replace PROCEDURE preencheVendasPortico_Portagem AS 
  v_ano number;
  v_mes number;
  v_codAutoestrada AUTOESTRADA.CODAUTOESTRADA%TYPE;
  v_classeVeiculo VEICULO.CLASSEVEICULO%TYPE;
  v_codPortagemSaida  PORTAGEMTRADICIONAL.CODPORTTRADICIONAL%TYPE;
  v_codPortico PORTICO.CODPORTICO%TYPE;
  v_numPassagens number;
  v_valorTotalCobrado float;
  aux_data timestamp;
  aux_dias number;
BEGIN 

-- =================================
--    INSERT em VendasPortico
-- =================================
 dbms_output.put_line('=====================================');
 dbms_output.put_line('      INSERT em VendasPortico        ');
 dbms_output.put_line('=====================================');


  -- Por cada Autoestrada X
for ae in (select * from Autoestrada where Autoestrada.tipoportagem = 1)
  loop
       v_codAutoEstrada := ae.codAutoestrada;
 
       -- Por cada Portico Y de X
        for port in (select p.CODAUTOESTRADA ,p.CODPORTICO from Portico p where  ae.codautoestrada = p.codautoestrada)
        loop
            v_ano:= 0;
            v_mes:= 0;
            v_codPortico := port.codPortico;
           -- Encontra as Passagens Z ordenadas por data
            for pass in (select distinct pp.NRPASSAGEM ,pp.MATRICULAVEICULO ,pp.DATAPASSAGEM  from PassagemPortico pp where pp.codPortico = v_codPortico and pp.codAutoestrada = v_codAutoEstrada order by pp.dataPassagem asc)
            loop
                
                -- Enquanto nem o ano nem o mes for alterado, conta as passagens feitas e incrementa o valor cobrado
                -- Caso contrário estes voltam a zero e recomeça a contagem.
                if(v_ano <> extract(year from pass.DATAPASSAGEM) or v_mes <> extract(month from pass.DATAPASSAGEM)) 
                  then 
                  v_ano:= extract(year from pass.dataPassagem);
                  v_mes := extract(month from pass.dataPassagem);
                  v_numPassagens:=0;
                  v_valorTotalCobrado:=0;
                  v_classeVeiculo:=0;
                end if;
                        -- Por cada classe de veiculos existente nas Passagens nos porticos Z
                     for cl in (select v.classeVeiculo from Veiculo v where v.matricula in(select pp2.matriculaVeiculo from PassagemPortico pp2 where pp2.codportico = v_codPortico and pp2.codautoestrada = v_codAutoestrada and v_ano = extract(year from pp2.dataPassagem) and v_mes = extract(month from pp2.dataPassagem) ))
                     loop
                     if (v_classeVeiculo < cl.classeVeiculo) then
                      v_classeVeiculo := cl.classeVeiculo;
                            aux_dias := numDays(v_mes);
                            aux_data := TO_TIMESTAMP(v_ano || '-' || v_mes || '-'|| aux_dias || ' 23:59:59', ' YYYY-MM-DD HH24:MI:SS');
                            -- Verifica a Linha de pagamento a fim de obter o valor pago/a pagar        
                           for line in (select lppp.VALORTOTAL from LINHAPAGAMENTOPASSAGEMPORTICO lppp where  cl.classeVeiculo = (select v.classeveiculo from Veiculo v, Dispositivo d 
                                                                                                                                                        where d.nr_serie = lppp.nrSerieDispositivo 
                                                                                                                                                        and v.matricula = getVeiculoDeDispositivo(d.nr_serie, aux_data)))
                           loop
                                      v_numPassagens:=v_numPassagens+1;
                                      v_valorTotalCobrado:= v_valorTotalCobrado + line.valorTotal;
                          end loop;
                           
                      -- Insere na tabela os valores
                      insert into VendasPortico (ano,    mes,    codAutoestrada,   codPortico ,  classeVeiculo,      numPassagens,     ValorTotalCobrado) 
                                        values  (v_ano,  v_mes,  v_codautoestrada, v_codPortico, v_classeVeiculo,    v_numPassagens,   v_ValorTotalCobrado);
                         end if;                       
                      end loop;

            end loop;
            
        end loop;
        
  end loop;
  
-- =================================
--    INSERT em VendasPortagem
-- =================================

  -- Por cada Autoestrada X
for ae in (select * from Autoestrada where Autoestrada.tipoportagem = 2)
  loop
      
       v_codAutoEstrada := ae.codAutoestrada;
       -- Por cada PortagemTradicional Y de X
        for port in (select distinct * from PortagemTradicional pt where  ae.codautoestrada = pt.codautoestrada)
        loop
            v_ano:= 0;
            v_mes:= 0;
            v_codPortagemSaida := port.codPortTradicional;
           -- Encontra os registos de Saida Z e ordenados por data
            for regSaida in (select distinct * from RegistoSaida rs where rs.codPortTradicional = v_codPortagemSaida and rs.codAutoestrada = v_codAutoEstrada order by rs.data asc)
            loop
                
                -- Enquanto nem o ano nem o mes for alterado, conta as passagens feitas e incrementa o valor cobrado
                -- Caso contrário estes voltam a zero e recomeça a contagem.
                if(v_ano <> extract(year from regSaida.data) or v_mes <> extract(month from regSaida.data)) 
                  then 
                  v_ano:= extract(year from regSaida.data);
                  v_mes := extract(month from regSaida.data);
                  v_numPassagens:=0;
                  v_valorTotalCobrado:=0;
                   v_classeVeiculo:=0;
                end if;
                        -- Por cada classe de veiculos existente no Resgito de Saida Z
                     for cl in (select distinct v.classeVeiculo from Veiculo v where v.matricula in(select reg2.matriculaVeiculo from RegistoSaida reg2 where reg2.codporttradicional = v_codPortagemSaida and reg2.codautoestrada = v_codAutoestrada and v_ano = extract(year from reg2.data) and v_mes = extract(month from reg2.data) ))
                      loop
                      if(v_classeVeiculo < cl.classeVeiculo) then -- evitar repetir classes
                        v_classeVeiculo := cl.classeVeiculo;
                            aux_dias := numDays(v_mes);
                            aux_data := TO_TIMESTAMP(v_ano || '-' || v_mes || '-'|| aux_dias || ' 23:59:59', 'YYYY-MM-DD HH24:MI:SS');
                            -- Verifica a Linha de pagamento a fim de obter o valor pago/a pagar        
                           for line in (select * from LinhaPagamentosPortagensTradicionais lppt where cl.classeVeiculo = (select v.classeveiculo from Veiculo v, Dispositivo d 
                                                                                                          where d.nr_serie = lppt.nrSerieDispositivo 
                                                                                                                and v.matricula = getVeiculoDeDispositivo(d.nr_serie, aux_data)))
                           loop
                                      v_numPassagens:=v_numPassagens+1;
                                      v_valorTotalCobrado:= v_valorTotalCobrado + line.valor;
                                      
                           end loop;
                        -- Insere na tabela os valores
                        insert into VendasPortagem (ano,    mes,    codAutoestrada,   codPortagemSaida ,  classeVeiculo,      numPassagens,     ValorTotalCobrado) 
                                                values  (v_ano,   v_mes,  v_codautoestrada, v_codPortagemSaida,       v_classeVeiculo,    v_numPassagens,   v_ValorTotalCobrado);
                       
                       end if;                         
                      end loop;

            end loop;
            
        end loop;
        
  end loop;
  
END;

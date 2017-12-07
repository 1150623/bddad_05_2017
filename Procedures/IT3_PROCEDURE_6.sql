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


-- create or replace procedure preencheVendasPortico_Portagem;

-- DO STUFF








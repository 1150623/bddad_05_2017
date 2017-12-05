
+-----------------+-----------------------------------------------------------------------------------+
+-----------------+-- Crie uma View que para cada ano, indique qual o cliente 'Gold' com maior      --+
+-- Ex. 3.2.2 	--+-- faturação.																                                  --+
+-- View 2		--+--																				                                          --+
+-----------------+-----------------------------------------------------------------------------------+ 


CREATE OR  REPLACE VIEW gold_maior_faturacao AS
SELECT c.nome, c.NIF
FROM Cliente c,
WHERE c.tipoCliente = 'Gold'
    and  c1.tipoCliente= 'Gold'
    and c.NIF <> c1.NIF
    and FATURACAO_CLIENTE(c.NIF, dt) > FATURACAO_CLIENTE(c1.NIF, dt);



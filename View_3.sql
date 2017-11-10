
CREATE OR  REPLACE VIEW gold_maior_faturacao AS
SELECT c.nome, c.NIF
FROM Cliente c, Cliente c1
WHERE c.tipoCliente = 'Gold'
    and  c1.tipoCliente= 'Gold'
    and c.NIF <> c1.NIF
    and FATURACAO_CLIENTE(c.NIF) > FATURACAO_CLIENTE(c1.NIF);



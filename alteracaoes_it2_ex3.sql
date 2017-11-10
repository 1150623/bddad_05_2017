
CREATE TABLE TipoCliente
(
tipoCliente varchar(6) NOT NULL,
CONSTRAINT tipoCliente_pk PRIMARY KEY (tipoCliente)
);

ALTER TABLE CLIENTE
ADD tipoCliente varchar(6) NOT NULL;

ALTER TABLE CLIENTE
ADD pontuacaoAcumulada integer NOT NULL;

ALTER TABLE CLIENTE
ADD pontuacaoSaldo integer NOT NULL;

ALTER TABLE CLIENTE
ADD CONSTRAINT  tipoCliente_fk FOREIGN KEY (tipoCliente) REFERENCES CLIENTE;

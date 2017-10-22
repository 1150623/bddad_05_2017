

-- tabela Cliente

create table Cliente(
nif numeric(9) NOT NULL,
nome varchar(255),
morada varchar(255),
CONSTRAINT cliente_pk PRIMARY KEY (nif)
)


-- tabela DISPOSITIVO


create table Dispositivo
(
nr_serie number NOT NULL,
iban varchar(25) NOT NULL,
estadoDispositivo numeric(1),
clienteNif numeric(9),
CONSTRAINT disp_iban_regx  CHECK(regexp_like(iban, '[A-Z]{2}[0-9]{23}')),   
CONSTRAINT disp_pk PRIMARY KEY (nr_serie),
CONSTRAINT disp_fk_cliente FOREIGN KEY(clienteNif) REFERENCES Cliente ON DELETE CASCADE
);

CREATE SEQUENCE disp_sequence;

CREATE OR REPLACE TRIGGER Disp_on_insert
		BEFORE INSERT ON Dispositivo
			FOR EACH ROW
			BEGIN
				  SELECT disp_sequence.nextval
					INTO :new.nr_serie
						FROM dual;
			END;
			
			


--tabela Classe (Veiculo)
create table Classe(
idClasse number NOT NULL,
descricao varchar(255),
CONSTRAINT classe_pk PRIMARY KEY (idClasse)
)


		
-- tabela VEICULO
create table Veiculo(
matricula varchar(8) NOT NULL,
classeVeiculo number NOT NULL,
CONSTRAINT veic_matricula_regx  CHECK(regexp_like(matricula, '([0-9]{2}-[A-Z]{2}-[0-9]{2})|([A-Z]{2}-[0-9]{2}-[0-9]{2})')),   
CONSTRAINT veic_pk PRIMARY KEY (matricula),
CONSTRAINT veik_fk_classe FOREIGN KEY(classeVeiculo) REFERENCES Classe ON DELETE CASCADE
)

-- tabela Dispositivo_Veiculo
create table Dispositivo_Veiculo(
matriculaVeiculo varchar(8) NOT NULL,
nrSerieDispositivo number NOT NULL,
CONSTRAINT veic_matricula_regx  CHECK(regexp_like(matricula, '([0-9]{2}-[A-Z]{2}-[0-9]{2})|([A-Z]{2}-[0-9]{2}-[0-9]{2})')),   
CONSTRAINT veic_pk PRIMARY KEY (matriculaVeiculo, nrSerieDispositivo),
CONSTRAINT veik_fk_dispositivo FOREIGN KEY(nrSerieDispositivo) REFERENCES Classe ON DELETE CASCADE,
CONSTRAINT veik_fk_veiculo FOREIGN KEY(matriculaVeiculo) REFERENCES Cliente ON DELETE CASCADE,
)

-- tabela TipoPortagem
create table TipoPortagem(
idTipo number NOT NULL,
descricao varchar(30),
CONSTRAINT tport_pk PRIMARY KEY (idTipo)
)

CREATE SEQUENCE tipoPortagem_sequence;

CREATE OR REPLACE TRIGGER tipoPortagem_on_insert
		BEFORE INSERT ON TipoPortagem
			FOR EACH ROW
			BEGIN
				  SELECT tipoPortagem_sequence.nextval
					INTO :new.idTipo
						FROM dual;
			END;
			

-- tabela AutoEstrada
create table AutoEstrada(
codAutoEstrada varchar(3) CHECK(regexp_like(matricula, '([A-Z][0-9]{1,2}')),
tipoPortagem number NOT NULL,
descricao varchar(255),
CONSTRAINT veic_pk PRIMARY KEY (codAutoEstrada),
CONSTRAINT veik_fk_classe FOREIGN KEY(tipoPortagem) REFERENCES TipoPortagem ON DELETE CASCADE
)


--tabela Portico
create table Portico(
codAutoEstrada varchar(3) NOT NULL,
codPortico number NOT NULL,
CONSTRAINT port_pk PRIMARY KEY (codPortico),
CONSTRAINT port_fk_autoestrada FOREIGN KEY(codAutoEstrada) REFERENCES AutoEstrada ON DELETE CASCADE
)

CREATE SEQUENCE portico_sequence;

CREATE OR REPLACE TRIGGER portico_on_insert
		BEFORE INSERT ON Portico
			FOR EACH ROW
			BEGIN
				  SELECT portico_sequence.nextval
					INTO :new.codPortico
						FROM dual;
			END;
			


--tabela TarifaTradicional
create table TarifaTradicional(
codAutoEstrada varchar(3) NOT NULL,
classeVeiculoId number NOT NULL,
tarifa float,
CONSTRAINT port_pk PRIMARY KEY (codAutoEstrada, classeVeiculoId),
CONSTRAINT port_fk_classe FOREIGN KEY(classeVeiculoId) REFERENCES Classe ON DELETE CASCADE,
CONSTRAINT port_fk_autoestrada FOREIGN KEY(codAutoEstrada) REFERENCES AutoEstrada ON DELETE CASCADE
)

-- tabela RegistoMensalPorticos
create table RegistoMensalPorticos(
idRegistoMensal number NOT NULL,
ClienteNif numeric(9) NOT NULL,
data_emissao timestamp,
valorTotal float,
CONSTRAINT port_pk PRIMARY KEY (idRegistoMensal),
CONSTRAINT port_fk_classe FOREIGN KEY(ClienteNif) REFERENCES Cliente ON DELETE CASCADE
)


-- tabela PassagemPortico
create table PassagemPortico(
nrPassagem number NOT NULL,
codAutoEstrada varchar(3) NOT NULL,
matriculaVeiculo number NOT NULL,
dataPassagem timeStamp,
codPortico number NOT NULL,
regMensalID number NOT NULL,
CONSTRAINT pass_pk PRIMARY KEY (nrPassagem),
CONSTRAINT pass_fk_veiculo FOREIGN KEY(matriculaVeiculo) REFERENCES VEICULO ON DELETE CASCADE,
CONSTRAINT pass_fk_autoestrada FOREIGN KEY(codAutoEstrada) REFERENCES AutoEstrada ON DELETE CASCADE,
CONSTRAINT pass_fk_portico FOREIGN KEY(codPortico) REFERENCES Portico ON DELETE CASCADE,
CONSTRAINT pass_fk_regMensalTrad FOREIGN KEY(regMensalID) REFERENCES RegistoMensalPorticos ON DELETE CASCADE
)

CREATE SEQUENCE passagemPortico_sequence;

CREATE OR REPLACE TRIGGER passagemPortico_on_insert
		BEFORE INSERT ON PassagemPortico
			FOR EACH ROW
			BEGIN
				  SELECT passagemPortico_sequence.nextval
					INTO :new.nrPassagem
						FROM dual;
			END;
			
-- tabela Taxa
create table Taxa(
codAutoEstrada varchar(3) NOT NULL,
codPortico number NOT NULL,
classeVeiculo number NOT NULL,
taxa float,
CONSTRAINT tax_pk PRIMARY KEY (codAutoEstrada, codPortico),
CONSTRAINT tax_fk_classeVeiculo FOREIGN KEY(classeVeiculo) REFERENCES Classe ON DELETE CASCADE,
CONSTRAINT tax_fk_autoestrada FOREIGN KEY(codAutoEstrada) REFERENCES AutoEstrada ON DELETE CASCADE,
CONSTRAINT tax_fk_portico FOREIGN KEY(codPortico) REFERENCES Portico ON DELETE CASCADE
)


-- tabela PortagemTradicional
create table PortagemTradicional(
codPortTradicional number NOT NULL,
quilometro numeric,
codAutoEstrada varchar(3) NOT NULL,
CONSTRAINT portTrad_pk PRIMARY KEY (codAutoEstrada, codPortTradicional),
CONSTRAINT portTrad_autoestrada FOREIGN KEY(codAutoEstrada) REFERENCES AutoEstrada ON DELETE CASCADE,
)


-- tabela RegistoEntrada
create table RegistoEntrada(
nrRegistoEntrada number NOT NULL,
codPortTradicional number NOT NULL,
codAutoEstrada varchar(3) NOT NULL,
matriculaVeiculo varchar(8) NOT NULL,
data TIMESTAMP,
CONSTRAINT regEntr_pk PRIMARY KEY (nrRegistoEntrada),
CONSTRAINT regEntr_fk_veiculo FOREIGN KEY(matriculaVeiculo) REFERENCES Veiculo ON DELETE CASCADE,
CONSTRAINT regEntr_fk_autoestrada FOREIGN KEY(codAutoEstrada) REFERENCES AutoEstrada ON DELETE CASCADE,
CONSTRAINT regEntr_fk_portagemTradicional FOREIGN KEY(codPortTradicional) REFERENCES PortagemTradicional ON DELETE CASCADE
)

CREATE SEQUENCE regEntrada_sequence;

CREATE OR REPLACE TRIGGER registoEntrada_on_insert
		BEFORE INSERT ON RegistoEntrada
			FOR EACH ROW
			BEGIN
				  SELECT regEntrada_sequence.nextval
					INTO :new.nrRegistoEntrada
						FROM dual;
			END;
			
			
			
-- tabela RegistoSaida
create table RegistoSaida(
nrRegistoEntrada number NOT NULL,
nrRegistoSaida number NOT NULL,
codPortTradicional number NOT NULL,
codAutoEstrada varchar(3) NOT NULL,
matriculaVeiculo varchar(8) NOT NULL,
data TIMESTAMP,
CONSTRAINT regSaida_pk PRIMARY KEY (nrRegistoEntrada),
CONSTRAINT regSaida_fk_registoEntrada FOREIGN KEY(nrRegistoEntrada) REFERENCES RegistoEntrada ON DELETE CASCADE,
CONSTRAINT regSaida_fk_veiculo FOREIGN KEY(matriculaVeiculo) REFERENCES Veiculo ON DELETE CASCADE,
CONSTRAINT regSaida_fk_autoestrada FOREIGN KEY(codAutoEstrada) REFERENCES AutoEstrada ON DELETE CASCADE,
CONSTRAINT regSaida_fk_portagemTradicional FOREIGN KEY(codPortTradicional) REFERENCES PortagemTradicional ON DELETE CASCADE
)

CREATE SEQUENCE regSaida_sequence;

CREATE OR REPLACE TRIGGER registoSaida_on_insert
		BEFORE INSERT ON RegistoSaida
			FOR EACH ROW
			BEGIN
				  SELECT regSaida_sequence.nextval
					INTO :new.nrRegistoSaida
						FROM dual;
			END;
			


-- tabela RegistoMensalTradicional
create table RegistoMensalTradicional(
idRegistoMensalTradicional number NOT NULL,
clienteNif numeric(9) NOT NULL,
valorTotal numeric,
dataEmissao TIMESTAMP,
situacaoPagamento varchar(20),
CONSTRAINT regMensTrad_pk PRIMARY KEY (idRegistoMensalTradicional),
CONSTRAINT regMensTrad_fk_cliente FOREIGN KEY(clienteNif) REFERENCES Cliente ON DELETE CASCADE
)

CREATE SEQUENCE regMensalTrad_sequence;

CREATE OR REPLACE TRIGGER regMensalTrad_on_insert
		BEFORE INSERT ON RegistoMensalTradicional
			FOR EACH ROW
			BEGIN
				  SELECT regMensalTrad_sequence.nextval
					INTO :new.idRegistoMensalTradicional
						FROM dual;
			END;
			


			
-- tabela PagamentosPortagensTradicionais
create table PagamentosPortagensTradicionais(
idPagamento number NOT NULL,
nrRegSaida number NOT NULL,
nrRegMensal number NOT NULL,
valor float,
CONSTRAINT pagPortTrad_pk PRIMARY KEY (idPagamento),
CONSTRAINT pagPortTrad_fk_regSaida FOREIGN KEY(nrRegSaida) REFERENCES RegistoSaida ON DELETE CASCADE,
CONSTRAINT pagPortTrad_fk_regMensal FOREIGN KEY(nrRegMensal) REFERENCES RegistoMensalTradicional ON DELETE CASCADE
)

CREATE SEQUENCE pagamentosPortTrad_sequence;

CREATE OR REPLACE TRIGGER pagPortTrad_on_insert
		BEFORE INSERT ON PagamentosPortagensTradicionais
			FOR EACH ROW
			BEGIN
				  SELECT pagamentosPortTrad_sequence.nextval
					INTO :new.idPagamento
						FROM dual;
			END;
			

-- tabela NoLigacao
create table NoLigacao(
quilometro numeric NOT NULL,
codAutoEstrada varchar(3) NOT NULL,
CONSTRAINT noLig_pk PRIMARY KEY (quilometro, codAutoEstrada),
CONSTRAINT noLig_fk_autoestrada FOREIGN KEY(codAutoEstrada) REFERENCES AutoEstrada ON DELETE CASCADE
)


-- tabela Ligacao
create table Ligacao(
nrLigacao number NOT NULL,
codAutoEstrada1 varchar(3) NOT NULL,
codAutoEstrada2 varchar(3) NOT NULL,
quilometro1 numeric NOT NULL,
quilometro2 numeric NOT NULL,
CONSTRAINT noLig_pk PRIMARY KEY (nrLigacao),
CONSTRAINT noLig_fk_autoestrada FOREIGN KEY(codAutoEstrada1, quilometro1) REFERENCES NoLigacao ON DELETE CASCADE,
CONSTRAINT noLig_fk_autoestrada FOREIGN KEY(codAutoEstrada2, quilometro2) REFERENCES NoLigacao ON DELETE CASCADE
)


CREATE SEQUENCE ligacoes_sequence;

CREATE OR REPLACE TRIGGER ligacao_on_insert
		BEFORE INSERT ON Ligacao
			FOR EACH ROW
			BEGIN
				  SELECT ligacoes_sequence.nextval
					INTO :new.nrLigacao
						FROM dual;
			END;
			



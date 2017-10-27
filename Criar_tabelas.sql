

-- tabela Cliente

create table Cliente(
nif numeric(9) NOT NULL,
nome varchar(255),
morada varchar(255),
CONSTRAINT cliente_pk PRIMARY KEY (nif)
);




--tabela Classe (Veiculo)
create table Classe(
idClasse integer GENERATED ALWAYS AS IDENTITY,
descricao varchar(255),
CONSTRAINT classe_pk PRIMARY KEY (idClasse)
);


		
-- tabela VEICULO
create table Veiculo(
matricula varchar(8) NOT NULL,
classeVeiculo number NOT NULL,
CONSTRAINT veic_matricula_regx  CHECK(regexp_like(matricula, '([0-9]{2}-[A-Z]{2}-[0-9]{2})|([A-Z]{2}-[0-9]{2}-[0-9]{2})')),   
CONSTRAINT veic_pk PRIMARY KEY (matricula),
CONSTRAINT veik_fk_classe FOREIGN KEY(classeVeiculo) REFERENCES Classe ON DELETE CASCADE
);


-- tabela DISPOSITIVO
create table Dispositivo
(
nr_serie integer GENERATED ALWAYS AS IDENTITY,
iban varchar(25) NOT NULL,
estadoDispositivo numeric(1),
clienteNif numeric(9) NOT NULL,
matriculaVeiculo varchar(8) NOT NULL,
CONSTRAINT disp_iban_regx  CHECK(regexp_like(iban, '[A-Z]{2}[0-9]{23}')),   
CONSTRAINT disp_pk PRIMARY KEY (nr_serie),
CONSTRAINT disp_fk_cliente FOREIGN KEY(clienteNif) REFERENCES Cliente ON DELETE CASCADE,
CONSTRAINT disp_fk_veiculo FOREIGN KEY(matriculaVeiculo) REFERENCES Veiculo ON DELETE CASCADE
);




-- tabela Dispositivo_Veiculo
create table Dispositivo_Veiculo(
matriculaVeiculo varchar(8) NOT NULL,
nrSerieDispositivo integer NOT NULL,
infoData TimeStamp,
CONSTRAINT dispVeic_pk PRIMARY KEY (matriculaVeiculo, nrSerieDispositivo),
CONSTRAINT dispVeic_fk_dispositivo FOREIGN KEY(nrSerieDispositivo) REFERENCES Dispositivo ON DELETE CASCADE,
CONSTRAINT dispVeic_fk_veiculo FOREIGN KEY(matriculaVeiculo) REFERENCES Veiculo ON DELETE CASCADE
);


-- tabela TipoPortagem
create table TipoPortagem(
idTipo  integer GENERATED ALWAYS AS IDENTITY,
descricao varchar(30),
CONSTRAINT tport_pk PRIMARY KEY (idTipo)
)




-- tabela AutoEstrada
create table AutoEstrada(
codAutoEstrada varchar(3),
tipoPortagem number NOT NULL,
descricao varchar(255),
CONSTRAINT autEst_checkCod CHECK(regexp_like(codAutoEstrada, '([A-Z][0-9]{1,2})')),
CONSTRAINT autEst_pk PRIMARY KEY (codAutoEstrada),
CONSTRAINT autEst_fk_tipoPortagem FOREIGN KEY(tipoPortagem) REFERENCES TipoPortagem ON DELETE CASCADE
)



--tabela Portico
create table Portico(
codAutoEstrada varchar(3) NOT NULL,
codPortico number NOT NULL,
descricao varchar(255),
CONSTRAINT port_pk PRIMARY KEY (codPortico),
CONSTRAINT port_fk_autoestrada FOREIGN KEY(codAutoEstrada) REFERENCES AutoEstrada ON DELETE CASCADE
)


--tabela TarifaTradicional
create table TarifaTradicional(
codAutoEstrada varchar(3) NOT NULL,
classeVeiculoId number NOT NULL,
tarifa float,
CONSTRAINT tarTrad_pk PRIMARY KEY (codAutoEstrada, classeVeiculoId),
CONSTRAINT tarTrad_fk_classe FOREIGN KEY(classeVeiculoId) REFERENCES Classe ON DELETE CASCADE,
CONSTRAINT tarTrad_fk_autoestrada FOREIGN KEY(codAutoEstrada) REFERENCES AutoEstrada ON DELETE CASCADE
)





-- tabela PassagemPortico
create table PassagemPortico(
nrPassagem  integer GENERATED ALWAYS AS IDENTITY,
codAutoEstrada varchar(3) NOT NULL,
matriculaVeiculo varchar(8) NOT NULL,
dataPassagem timeStamp,
codPortico number NOT NULL,
CONSTRAINT pass_pk PRIMARY KEY (nrPassagem),
CONSTRAINT pass_fk_veiculo FOREIGN KEY(matriculaVeiculo) REFERENCES VEICULO ON DELETE CASCADE,
CONSTRAINT pass_fk_autoestrada FOREIGN KEY(codAutoEstrada) REFERENCES AutoEstrada ON DELETE CASCADE,
CONSTRAINT pass_fk_portico FOREIGN KEY(codPortico) REFERENCES Portico ON DELETE CASCADE
);



			

-- tabela LinhaPagamentoPassagemPortico
create table LinhaPagamentoPassagemPortico(
idPagamento numeric NOT NULL,
nrSerieDispositivo integer NOT NULL,
dataEmissao timestamp,
valorTotal float,
nrPassagem integer NOT NULL,
CONSTRAINT lppp_pk PRIMARY KEY (idPagamento),
CONSTRAINT lppp_fk_dispositivo FOREIGN KEY(nrSerieDispositivo) REFERENCES DISPOSITIVO ON DELETE CASCADE,
CONSTRAINT lppp_fk_passagemPortico FOREIGN KEY(nrPassagem) REFERENCES PassagemPortico ON DELETE CASCADE
);



-- tabela Taxa
create table Taxa(
codAutoEstrada varchar(3) NOT NULL,
codPortico number NOT NULL,
classeVeiculo integer  NOT NULL,
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
descricao varchar(255),
codAutoEstrada varchar(3) NOT NULL,
CONSTRAINT portTrad_pk PRIMARY KEY (codAutoEstrada, codPortTradicional),
CONSTRAINT portTrad_autoestrada FOREIGN KEY(codAutoEstrada) REFERENCES AutoEstrada ON DELETE CASCADE
);




-- tabela RegistoEntrada
create table RegistoEntrada(
nrRegistoEntrada integer GENERATED ALWAYS AS IDENTITY,
matriculaVeiculo varchar(8) NOT NULL,
codAutoEstrada varchar(3) NOT NULL,
codPortTradicional number NOT NULL,
dataReg TIMESTAMP,
CONSTRAINT regEntr_pk PRIMARY KEY (nrRegistoEntrada),
CONSTRAINT regEntr_fk_veiculo FOREIGN KEY(matriculaVeiculo) REFERENCES Veiculo ON DELETE CASCADE,
CONSTRAINT regEntr_fk_portagemTradicional FOREIGN KEY(codAutoEstrada, codPortTradicional) REFERENCES PortagemTradicional ON DELETE CASCADE
);



			
-- tabela RegistoSaida
create table RegistoSaida(
nrRegistoSaida  integer GENERATED ALWAYS AS IDENTITY,
nrRegistoEntrada integer NOT NULL,
codPortTradicional number NOT NULL,
codAutoEstrada varchar(3) NOT NULL,
matriculaVeiculo varchar(8) NOT NULL,
data TIMESTAMP,
CONSTRAINT regSaida_pk PRIMARY KEY (nrRegistoSaida),
CONSTRAINT regSaida_fk_registoEntrada FOREIGN KEY(nrRegistoEntrada) REFERENCES RegistoEntrada ON DELETE CASCADE,
CONSTRAINT regSaida_fk_veiculo FOREIGN KEY(matriculaVeiculo) REFERENCES Veiculo ON DELETE CASCADE,
CONSTRAINT regSaida_fk_autoestrada FOREIGN KEY(codAutoEstrada, codPortTradicional) REFERENCES PortagemTradicional ON DELETE CASCADE
)


			
-- tabela LinhaPagamentosPortagensTradicionais
create table LinhaPagamentosPortagensTradicionais(
idPagamento numeric NOT NULL,
nrRegSaida integer NOT NULL,
nrSerieDispositivo integer NOT NULL,
valor float,
CONSTRAINT pagPortTrad_pk PRIMARY KEY (idPagamento),
CONSTRAINT pagPortTrad_fk_regSaida FOREIGN KEY(nrRegSaida) REFERENCES RegistoSaida ON DELETE CASCADE,
CONSTRAINT pagPortTrad_fk_regMensal FOREIGN KEY(nrSerieDispositivo) REFERENCES Dispositivo ON DELETE CASCADE
)




-- tabela CobrancaMensal
create table CobrancaMensal(
idCobrancaMensal integer GENERATED ALWAYS AS IDENTITY,
clienteNif numeric(9) NOT NULL,
valorTotal numeric,
dataEmissao TIMESTAMP,
situacaoPagamento varchar(20),
CONSTRAINT cobMens_pk PRIMARY KEY (idCobrancaMensal, clienteNif),
CONSTRAINT cobMens_fk_cliente FOREIGN KEY(clienteNif) REFERENCES Cliente ON DELETE CASCADE
)




-- tabela Ligacao
create table Ligacao(
nrLigacao integer GENERATED ALWAYS AS IDENTITY,
codAutoEstrada1 varchar(3) NOT NULL,
codAutoEstrada2 varchar(3) NOT NULL,
quilometro1 numeric,
quilometro2 numeric,
CONSTRAINT Lig_pk PRIMARY KEY (nrLigacao),
CONSTRAINT Lig_fk_autoestrada1 FOREIGN KEY(codAutoEstrada1) REFERENCES AutoEstrada ON DELETE CASCADE,
CONSTRAINT Lig_fk_autoestrada2 FOREIGN KEY(codAutoEstrada2) REFERENCES AutoEstrada ON DELETE CASCADE
)

			
		
			
-- tabela CobrancaFinancas
create table CobrancaFinancas(
matriculaVeiculo varchar(8) NOT NULL,
nrRegSaida integer NOT NULL,
valor float NOT NULL,
CONSTRAINT cobFin_pk PRIMARY KEY (matriculaVeiculo, nrRegSaida),
CONSTRAINT cobFin_fk_veiculo FOREIGN KEY(matriculaVeiculo) REFERENCES Veiculo ON DELETE CASCADE,
CONSTRAINT cobFin_fk_registoSaida FOREIGN KEY(nrRegSaida) REFERENCES RegistoSaida ON DELETE CASCADE
)


	

-- tabela CobrancaCTT
create table CobrancaCTT(
matriculaVeiculo varchar(8) NOT NULL,
nrPassagem integer NOT NULL,
dataEmissao TIMESTAMP,
valorCobranca float NOT NULL,
CONSTRAINT cobCTT_pk PRIMARY KEY (matriculaVeiculo, nrPassagem),
CONSTRAINT cobCTT_fk_veiculo FOREIGN KEY(matriculaVeiculo) REFERENCES Veiculo ON DELETE CASCADE,
CONSTRAINT cobCTT_fk_autoestrada2 FOREIGN KEY(nrPassagem) REFERENCES PassagemPortico ON DELETE CASCADE
)

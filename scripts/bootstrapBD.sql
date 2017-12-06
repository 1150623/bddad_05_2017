
--------------------
-- INSERT CLASSES --
--------------------

insert into Classe (DESCRICAO) values ('classe1');
insert into Classe (DESCRICAO) values ('classe2');
insert into Classe (DESCRICAO) values ('classe3');
insert into Classe (DESCRICAO) values ('classe4');
insert into Classe (DESCRICAO) values ('classe5');

---------------------
-- INSERT VEICULOS --
---------------------

insert into Veiculo (MATRICULA, CLASSEVEICULO) values ('32-AZ-24', 1);
insert into Veiculo (MATRICULA, CLASSEVEICULO) values ('50-AZ-31', 2);
insert into Veiculo (MATRICULA, CLASSEVEICULO) values ('AZ-24-12', 3);
insert into Veiculo (MATRICULA, CLASSEVEICULO) values ('46-OP-85', 4);
insert into Veiculo (MATRICULA, CLASSEVEICULO) values ('32-PO-14',5);
insert into Veiculo (MATRICULA, CLASSEVEICULO) values ('64-AZ-24',1);
insert into Veiculo (MATRICULA, CLASSEVEICULO) values ('32-MN-32',2);
insert into Veiculo (MATRICULA, CLASSEVEICULO) values ('00-EL-85',3);
insert into Veiculo (MATRICULA, CLASSEVEICULO) values ('11-BB-22',4);
insert into Veiculo (MATRICULA, CLASSEVEICULO) values ('55-ZZ-77',5);
insert into Veiculo (MATRICULA, CLASSEVEICULO) values ('69-PP-85',1);
insert into Veiculo (MATRICULA, CLASSEVEICULO) values ('99-AA-99',2);
insert into Veiculo (MATRICULA, CLASSEVEICULO) values ('00-KK-00',3);
insert into Veiculo (MATRICULA, CLASSEVEICULO) values ('KK-85-92',4);
insert into Veiculo (MATRICULA, CLASSEVEICULO) values ('47-HH-68',5);


------------------------
-- INSERT TIPOCLIENTE --
------------------------

insert into TipoCliente values('Silver');
insert into TipoCliente values('Gold');

---------------------
-- INSERT CLIENTES --
---------------------

insert into Cliente (NIF, MORADA, NOME, TIPOCLIENTE, PONTUACAOACUMULADA, PONTUACAOSALDO) values (123456789, 'Rua 1','Tiago', 'Gold', 3120, 2696);
insert into Cliente (NIF, MORADA, NOME, TIPOCLIENTE, PONTUACAOACUMULADA, PONTUACAOSALDO) values (159753698, 'Rua 2','Ana', 'Gold', 1564, 1231);
insert into Cliente (NIF, MORADA, NOME, TIPOCLIENTE, PONTUACAOACUMULADA, PONTUACAOSALDO) values (958412587, 'Rua 3','Maria', 'Gold', 3560, 3560);
insert into Cliente (NIF, MORADA, NOME, TIPOCLIENTE, PONTUACAOACUMULADA, PONTUACAOSALDO) values (658523658, 'Rua 4','Rodrigo', 'Gold', 1251, 1000);
insert into Cliente (NIF, MORADA, NOME, TIPOCLIENTE, PONTUACAOACUMULADA, PONTUACAOSALDO) values (424252586, 'Rua 5','Guilherme', 'Silver', 4503, 3250);
insert into Cliente (NIF, MORADA, NOME, TIPOCLIENTE, PONTUACAOACUMULADA, PONTUACAOSALDO) values (956485231, 'Rua 6','Pedro', 'Silver', 8651, 2300);
insert into Cliente (NIF, MORADA, NOME, TIPOCLIENTE, PONTUACAOACUMULADA, PONTUACAOSALDO) values (123569874, 'Rua 7','Joao', 'Silver', 568, 113);
insert into Cliente (NIF, MORADA, NOME, TIPOCLIENTE, PONTUACAOACUMULADA, PONTUACAOSALDO) values (987654321, 'Rua 8','Joaquim', 'Silver', 2000, 1850);

-------------------------
-- INSERT DISPOSITIVOS --
-------------------------

insert into Dispositivo (CLIENTENIF, MATRICULAVEICULO, IBAN, ESTADODISPOSITIVO) values(123456789, '32-AZ-24', 'PT50123456789123456789123', 1);
insert into Dispositivo (CLIENTENIF, MATRICULAVEICULO, IBAN, ESTADODISPOSITIVO) values(123456789, '50-AZ-31', 'PT50123456789123456789123', 1);
insert into Dispositivo (CLIENTENIF, MATRICULAVEICULO, IBAN, ESTADODISPOSITIVO) values(123456789, 'AZ-24-12', 'PT50123456789123456789123', 0);

insert into Dispositivo (CLIENTENIF, MATRICULAVEICULO, IBAN, ESTADODISPOSITIVO) values(987654321, '46-OP-85', 'PT50141258965423456789123', 1);
insert into Dispositivo (CLIENTENIF, MATRICULAVEICULO, IBAN, ESTADODISPOSITIVO) values(987654321, '32-PO-14', 'PT50123456789654852389123', 1);

insert into Dispositivo (CLIENTENIF, MATRICULAVEICULO, IBAN, ESTADODISPOSITIVO) values(159753698, '64-AZ-24', 'PT50129512332842356789123', 1);

insert into Dispositivo (CLIENTENIF, MATRICULAVEICULO, IBAN, ESTADODISPOSITIVO) values(958412587, '32-MN-32', 'PT50123457521563210789123', 1);
insert into Dispositivo (CLIENTENIF, MATRICULAVEICULO, IBAN, ESTADODISPOSITIVO) values(958412587, '00-EL-85', 'PT50123457521563210789123', 0);
insert into Dispositivo (CLIENTENIF, MATRICULAVEICULO, IBAN, ESTADODISPOSITIVO) values(958412587, '11-BB-22', 'PT50953651789123456789883', 1);

insert into Dispositivo (CLIENTENIF, MATRICULAVEICULO, IBAN, ESTADODISPOSITIVO) values(658523658, '55-ZZ-77', 'PT50124895132135155155441', 1);

insert into Dispositivo (CLIENTENIF, MATRICULAVEICULO, IBAN, ESTADODISPOSITIVO) values(424252586, '69-PP-85', 'PT50115724592745197542123', 0);

insert into Dispositivo (CLIENTENIF, MATRICULAVEICULO, IBAN, ESTADODISPOSITIVO) values(956485231, '99-AA-99', 'PT50178219781587521755123', 1);
insert into Dispositivo (CLIENTENIF, MATRICULAVEICULO, IBAN, ESTADODISPOSITIVO) values(956485231, '00-KK-00', 'PT50145856325224444477100', 1);

insert into Dispositivo (CLIENTENIF, MATRICULAVEICULO, IBAN, ESTADODISPOSITIVO) values(123569874, 'KK-85-92', 'PT50123400052200011412522', 1);
insert into Dispositivo (CLIENTENIF, MATRICULAVEICULO, IBAN, ESTADODISPOSITIVO) values(123569874, '47-HH-68', 'PT50120005223652214789123', 1);

-------------------------
-- INSERT TIPOPORTAGEM --
-------------------------
insert into TipoPortagem (DESCRICAO) values ('Portico') ;
insert into TipoPortagem (DESCRICAO) values ('Tradicional') ;

-------------------------
-- INSERT Sentido--
-------------------------
insert into Sentido(id_sentido, descricao) values (1, 'Montante');
insert into Sentido(id_sentido, descricao) values (2, 'Jusante');

-------------------------
-- INSERT AUTOESTRADAS --
-------------------------

insert into AUTOESTRADA (CODAUTOESTRADA, DESCRICAO, TIPOPORTAGEM) values('A1', 'A para B', 2);
insert into AUTOESTRADA (CODAUTOESTRADA, DESCRICAO, TIPOPORTAGEM) values('A2', 'A para C', 2);
insert into AUTOESTRADA (CODAUTOESTRADA, DESCRICAO, TIPOPORTAGEM) values('A3', 'A para D', 2);
insert into AUTOESTRADA (CODAUTOESTRADA, DESCRICAO, TIPOPORTAGEM) values('A4', 'A para E', 2);
insert into AUTOESTRADA (CODAUTOESTRADA, DESCRICAO, TIPOPORTAGEM) values('A5', 'A para F', 2);
insert into AUTOESTRADA (CODAUTOESTRADA, DESCRICAO, TIPOPORTAGEM) values('A6', 'B para K', 1);
insert into AUTOESTRADA (CODAUTOESTRADA, DESCRICAO, TIPOPORTAGEM) values('A7', 'B para E', 1);
insert into AUTOESTRADA (CODAUTOESTRADA, DESCRICAO, TIPOPORTAGEM) values('A8', 'B para D', 1);
insert into AUTOESTRADA (CODAUTOESTRADA, DESCRICAO, TIPOPORTAGEM) values('A9', 'B para F', 1);
insert into AUTOESTRADA (CODAUTOESTRADA, DESCRICAO, TIPOPORTAGEM) values('A10', 'C para V',1);
insert into AUTOESTRADA (CODAUTOESTRADA, DESCRICAO, TIPOPORTAGEM) values('A11', 'C para D',2);
insert into AUTOESTRADA (CODAUTOESTRADA, DESCRICAO, TIPOPORTAGEM) values('A12', 'C para K',2);
insert into AUTOESTRADA (CODAUTOESTRADA, DESCRICAO, TIPOPORTAGEM) values('A13', 'C para F',2);
insert into AUTOESTRADA (CODAUTOESTRADA, DESCRICAO, TIPOPORTAGEM) values('A14', 'D para L',2);
insert into AUTOESTRADA (CODAUTOESTRADA, DESCRICAO, TIPOPORTAGEM) values('A15', 'D para F',2);
insert into AUTOESTRADA (CODAUTOESTRADA, DESCRICAO, TIPOPORTAGEM) values('A16', 'D para E',1);
insert into AUTOESTRADA (CODAUTOESTRADA, DESCRICAO, TIPOPORTAGEM) values('A17', 'E para P',1);
insert into AUTOESTRADA (CODAUTOESTRADA, DESCRICAO, TIPOPORTAGEM) values('A18', 'E para L',1);
insert into AUTOESTRADA (CODAUTOESTRADA, DESCRICAO, TIPOPORTAGEM) values('A19', 'F para Q',1);
insert into AUTOESTRADA (CODAUTOESTRADA, DESCRICAO, TIPOPORTAGEM) values('A20', 'F para Z',1);





--------------------
-- INSERT LIGACAO --
--------------------


insert into Ligacao (CODAUTOESTRADA1, CODAUTOESTRADA2, QUILOMETRO1, QUILOMETRO2) values('A1', 'A2', 15, 21);
insert into Ligacao (CODAUTOESTRADA1, CODAUTOESTRADA2, QUILOMETRO1, QUILOMETRO2) values('A1', 'A3', 21, 5);
insert into Ligacao (CODAUTOESTRADA1, CODAUTOESTRADA2, QUILOMETRO1, QUILOMETRO2) values('A1', 'A4', 37, 14);

insert into Ligacao (CODAUTOESTRADA1, CODAUTOESTRADA2, QUILOMETRO1, QUILOMETRO2) values('A2', 'A11', 15, 21);
insert into Ligacao (CODAUTOESTRADA1, CODAUTOESTRADA2, QUILOMETRO1, QUILOMETRO2) values('A2', 'A13', 4, 45);
insert into Ligacao (CODAUTOESTRADA1, CODAUTOESTRADA2, QUILOMETRO1, QUILOMETRO2) values('A2', 'A20', 6, 63);
insert into Ligacao (CODAUTOESTRADA1, CODAUTOESTRADA2, QUILOMETRO1, QUILOMETRO2) values('A2', 'A14', 7, 74);

insert into Ligacao (CODAUTOESTRADA1, CODAUTOESTRADA2, QUILOMETRO1, QUILOMETRO2) values('A9', 'A20', 86, 2);
insert into Ligacao (CODAUTOESTRADA1, CODAUTOESTRADA2, QUILOMETRO1, QUILOMETRO2) values('A8', 'A9', 45, 43);
insert into Ligacao (CODAUTOESTRADA1, CODAUTOESTRADA2, QUILOMETRO1, QUILOMETRO2) values('A7', 'A2', 20, 14);
insert into Ligacao (CODAUTOESTRADA1, CODAUTOESTRADA2, QUILOMETRO1, QUILOMETRO2) values('A6', 'A18', 13, 14);
insert into Ligacao (CODAUTOESTRADA1, CODAUTOESTRADA2, QUILOMETRO1, QUILOMETRO2) values('A5', 'A7', 5, 5);
insert into Ligacao (CODAUTOESTRADA1, CODAUTOESTRADA2, QUILOMETRO1, QUILOMETRO2) values('A12', 'A6', 1, 99);
insert into Ligacao (CODAUTOESTRADA1, CODAUTOESTRADA2, QUILOMETRO1, QUILOMETRO2) values('A17', 'A1', 117, 120);
insert into Ligacao (CODAUTOESTRADA1, CODAUTOESTRADA2, QUILOMETRO1, QUILOMETRO2) values('A19', 'A5', 125, 29);
insert into Ligacao (CODAUTOESTRADA1, CODAUTOESTRADA2, QUILOMETRO1, QUILOMETRO2) values('A10', 'A16', 71, 16);
insert into Ligacao (CODAUTOESTRADA1, CODAUTOESTRADA2, QUILOMETRO1, QUILOMETRO2) values('A11', 'A20', 41, 53);
insert into Ligacao (CODAUTOESTRADA1, CODAUTOESTRADA2, QUILOMETRO1, QUILOMETRO2) values('A13', 'A19', 20, 17);
insert into Ligacao (CODAUTOESTRADA1, CODAUTOESTRADA2, QUILOMETRO1, QUILOMETRO2) values('A18', 'A14', 13, 96);
insert into Ligacao (CODAUTOESTRADA1, CODAUTOESTRADA2, QUILOMETRO1, QUILOMETRO2) values('A13', 'A17', 31, 46);
insert into Ligacao (CODAUTOESTRADA1, CODAUTOESTRADA2, QUILOMETRO1, QUILOMETRO2) values('A19', 'A15', 14, 81);


--------------------------------
-- INSERT PORTAGEMTRADICIONAL --  A1 -> A5 ; A11 -> A15
--------------------------------

insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A1', 1, 15, 'Portagem Tradicional A1 - NO com A2');
insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A1', 2, 21, 'Portagem Tradicional A1 - NO com A3');
insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A1', 3, 37, 'Portagem Tradicional A1 - NO com A4');
insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A1', 4, 120, 'Portagem Tradicional A1 - NO com A17');

insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A2', 1, 4, 'Portagem Tradicional A2 - NO com A13');
insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A2', 2, 6, 'Portagem Tradicional A2 - NO com A20');
insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A2', 3, 7, 'Portagem Tradicional A2 - NO com A14');
insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A2', 4, 14, 'Portagem Tradicional A2 - NO com A7');
insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A2', 5, 15, 'Portagem Tradicional A2 - NO com A11');
insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A2', 6, 21, 'Portagem Tradicional A2 - NO com A1');

insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A3', 1, 5, 'Portagem Tradicional A3 - NO com A1');

insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A4', 1, 14, 'Portagem Tradicional A4 - NO com A1');

insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A5', 1, 5, 'Portagem Tradicional A5 - NO com A7');
insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A5', 2, 29, 'Portagem Tradicional A5 - NO com A19');

insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A12', 1, 1, 'Portagem Tradicional A12 - NO com A6');

insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A13', 1, 20, 'Portagem Tradicional A1 - NO com A19');
insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A13', 2, 31, 'Portagem Tradicional A13 - NO com A17');
insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A13', 3, 45, 'Portagem Tradicional A13 - NO com A2');

insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A14', 1, 74, 'Portagem Tradicional A14 - NO com A2');
insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A14', 2, 96, 'Portagem Tradicional A14 - NO com A18');

insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A15', 1, 81, 'Portagem Tradicional A15 - NO com A19');



------------------------------
-- INSERT TARIFATRADICIONAL --  A1 -> A5 ; A11 -> A15
------------------------------


insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A1', 1, 0.53);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A1', 2, 1.5);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A1', 3, 2.1);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A1', 4, 3.4);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A1', 5, 4.0);

insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A2', 1, 0.3);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A2', 2, 1.2);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A2', 3, 2.2);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A2', 4, 3.4);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A2', 5, 3.55);

insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A3', 1, 0.23);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A3', 2, 2.13);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A3', 3, 3.12);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A3', 4, 4.0);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A3', 5, 7.25);

insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A4', 1, 2.0);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A4', 2, 2.5);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A4', 3, 3.0);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A4', 4, 3.5);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A4', 5, 4.0);

insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A5', 1, 0.5);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A5', 2, 1.7);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A5', 3, 2.5);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A5', 4, 3.4);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A5', 5, 2.0);

insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A11', 1, 0.5);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A11', 2, 1.7);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A11', 3, 2.5);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A11', 4, 3.4);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A11', 5, 2.0);

insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A12', 1, 0.5);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A12', 2, 1.7);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A12', 3, 2.5);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A12', 4, 3.4);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A12', 5, 2.0);

insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A13', 1, 0.5);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A13', 2, 1.7);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A13', 3, 2.5);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A13', 4, 3.4);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A13', 5, 2.0);

insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A14', 1, 0.5);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A14', 2, 1.7);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A14', 3, 2.5);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A14', 4, 3.4);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A14', 5, 2.0);

insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A15', 1, 01.51);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A15', 2, 1.27);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A15', 3, 2.53);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A15', 4, 3.44);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A15', 5, 2.0);




--------------------
-- INSERT Portico -- 
--------------------

insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A6', 1, 'Portico 1 A6', 1);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A6', 2, 'Portico 2 A6', 1);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A6', 3, 'Portico 3 A6', 1);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A6', 4, 'Portico 4 A6', 2);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A6', 5, 'Portico 5 A6', 2);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A6', 6, 'Portico 6 A6', 2);


insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A7', 1, 'Portico 1 A7', 1);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A7', 2, 'Portico 2 A7', 1);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A7', 3, 'Portico 3 A7', 1);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A7', 4, 'Portico 4 A7', 2);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A7', 5, 'Portico 5 A7', 2);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A7', 6, 'Portico 6 A7', 2);


insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A8', 1, 'Portico 1 A8', 1);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A8', 2, 'Portico 2 A8', 1);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A8', 3, 'Portico 3 A8', 1);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A8', 4, 'Portico 4 A8', 2);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A8', 5, 'Portico 5 A8', 2);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A8', 6, 'Portico 6 A8', 2);

insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A9', 1, 'Portico 1 A9', 1);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A9', 2, 'Portico 2 A9', 1);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A9', 3, 'Portico 3 A9', 1);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A9', 4, 'Portico 4 A9', 2);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A9', 5, 'Portico 5 A9', 2);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A9', 6, 'Portico 6 A9', 2);

insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A10', 1, 'Portico 1 A10', 1);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A10', 2, 'Portico 2 A10', 1);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A10', 3, 'Portico 3 A10', 1);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A10', 4, 'Portico 4 A10', 2);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A10', 5, 'Portico 5 A10', 2);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A10', 6, 'Portico 6 A10', 2);

insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A16', 1, 'Portico 1 A16', 1);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A16', 2, 'Portico 2 A16', 1);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A16', 3, 'Portico 3 A16', 1);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A16', 4, 'Portico 4 A16', 2);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A16', 5, 'Portico 5 A16', 2);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A16', 6, 'Portico 6 A16', 2);

insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A17', 1, 'Portico 1 A17', 1);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A17', 2, 'Portico 2 A17', 1);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A17', 3, 'Portico 3 A17', 1);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A17', 4, 'Portico 4 A17', 2);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A17', 5, 'Portico 5 A17', 2);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A17', 6, 'Portico 6 A17', 2);

insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A18', 1, 'Portico 1 A18', 1);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A18', 2, 'Portico 2 A18', 1);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A18', 3, 'Portico 3 A18', 2);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A18', 4, 'Portico 4 A18', 2);

insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A19', 1, 'Portico 1 A19', 1);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A19', 2, 'Portico 2 A19', 1);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A19', 3, 'Portico 3 A19', 1);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A19', 4, 'Portico 4 A19', 2);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A19', 5, 'Portico 5 A19', 2);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A19', 6, 'Portico 6 A19', 2);

insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A20', 1, 'Portico 1 A20', 1);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A20', 2, 'Portico 2 A20', 1);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A20', 3, 'Portico 3 A20', 1);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A20', 4, 'Portico 4 A20', 2);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A20', 5, 'Portico 5 A20', 2);
insert into PORTICO (CODAUTOESTRADA, CODPORTICO, DESCRICAO, id_sentido) values('A20', 6, 'Portico 6 A20', 2);





-----------------
-- INSERT TAXA --  A6 -> A10 ; A16 -> A20
-----------------


insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A6', 1,1, 1.955229);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A6', 1,2, 2.924985);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A6', 1,3, 3.206122);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A6', 1,4, 4.179541);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A6', 1,5, 5.144261);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A6', 2,1, 1.533219);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A6', 2,2, 6.545915);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A6', 2,3, 7.117984);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A6', 2,4, 5.601123);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A6', 2,5, 3.765374);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A6', 3,1, 2.722037);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A6', 3,2, 3.468978);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A6', 3,3, 3.661397);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A6', 3,4, 5.490585);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A6', 3,5, 6.665456);

insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A7', 1,1, 1.963012);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A7', 1,2, 2.510178);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A7', 1,3, 3.729484);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A7', 1,4, 4.459151);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A7', 1,5, 5.696799);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A7', 2,1, 3.615741);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A7', 2,2, 2.998505);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A7', 2,3, 7.309885);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A7', 2,4, 7.423444);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A7', 2,5, 2.669363);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A7', 3,1, 2.017914);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A7', 3,2, 3.678701);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A7', 3,3, 3.058840);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A7', 3,4, 4.263375);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A7', 3,5, 6.316629);

insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A8', 1,1, 1.966796);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A8', 1,2, 2.974792);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A8', 1,3, 3.445997);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A8', 1,4, 4.364604);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A8', 1,5, 5.658254);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A8', 2,1, 6.938108);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A8', 2,2, 6.655232);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A8', 2,3, 4.941893);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A8', 2,4, 8.311167);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A8', 2,5, 3.058565);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A8', 3,1, 1.674825);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A8', 3,2, 3.780877);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A8', 3,3, 4.406354);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A8', 3,4, 4.639851);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A8', 3,5, 5.787683);

insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A9', 1,1, 1.968383);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A9', 1,2, 2.222999);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A9', 1,3, 3.168737);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A9', 1,4, 4.114261);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A9', 1,5, 5.694693);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A9', 2,1, 6.442060);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A9', 2,2, 3.773614);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A9', 2,3, 8.365887);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A9', 2,4, 8.685080);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A9', 2,5, 3.064516);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A9', 3,1, 1.530412);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A9', 3,2, 3.823847);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A9', 3,3, 4.026338);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A9', 3,4, 4.798364);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A9', 3,5, 5.459731);

insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A10', 1,1, 1.971068);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A10', 1,2, 2.079409);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A10', 1,3, 3.888363);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A10', 1,4, 4.941832);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A10', 1,5, 5.193609);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A10', 2,1, 1.855129);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A10', 2,2, 7.161168);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A10', 2,3, 5.893887);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A10', 2,4, 6.315805);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A10', 2,5, 3.262093);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A10', 3,1, 1.286630);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A10', 3,2, 3.896481);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A10', 3,3, 4.510117);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A10', 3,4, 4.065859);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A10', 3,5, 6.031281);

insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A16', 1,1, 1.974365);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A16', 1,2, 2.903928);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A16', 1,3, 3.879025);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A16', 1,4, 4.175512);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A16', 1,5, 5.581225);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A16', 2,1, 1.582293);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A16', 2,2, 7.968139);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A16', 2,3, 6.205909);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A16', 2,4, 4.086612);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A16', 2,5, 3.836879);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A16', 3,1, 2.988769);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A16', 3,2, 3.985168);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A16', 3,3, 3.101321);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A16', 3,4, 5.392865);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A16', 3,5, 6.729850);

insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A17', 1,1, 1.976074);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A17', 1,2, 2.480178);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A17', 1,3, 3.146916);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A17', 1,4, 4.659535);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A17', 1,5, 5.932432);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A17', 2,1, 1.805506);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A17', 2,2, 5.656545);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A17', 2,3, 3.093753);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A17', 2,4, 7.483871);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A17', 2,5, 4.405713);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A17', 3,1, 2.835322);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A17', 3,2, 2.030824);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A17', 3,3, 4.072604);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A17', 3,4, 4.561235);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A17', 3,5, 5.756371);

insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A18', 1,1, 1.977447);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A18', 1,2, 2.072390);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A18', 1,3, 3.779321);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A18', 1,4, 4.940519);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A18', 1,5, 5.339274);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A18', 2,1, 5.871670);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A18', 2,2, 7.635243);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A18', 2,3, 7.589862);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A18', 2,4, 7.810907);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A18', 2,5, 3.285897);

insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A19', 1,1, 1.981231);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A19', 1,2, 2.537004);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A19', 1,3, 3.495834);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A19', 1,4, 4.845942);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A19', 1,5, 5.300760);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A19', 2,1, 3.193853);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A19', 2,2, 5.291605);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A19', 2,3, 5.221869);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A19', 2,4, 8.698812);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A19', 2,5, 3.675100);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A19', 3,1, 2.365886);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A19', 3,2, 2.170599);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A19', 3,3, 4.337565);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A19', 3,4, 5.076449);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A19', 3,5, 6.190527);

insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A20', 1,1, 1.988403);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A20', 1,2, 2.154088);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A20', 1,3, 3.748161);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A20', 1,4, 4.719443);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A20', 1,5, 5.964629);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A20', 2,1, 6.962279);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A20', 2,2, 4.324778);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A20', 2,3, 8.629932);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A20', 2,4, 4.380688);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A20', 2,5, 2.201880);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A20', 3,1, 1.715903);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A20', 3,2, 2.364208);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A20', 3,3, 3.627522);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A20', 3,4, 5.789849);
insert into TAXA(CODAUTOESTRADA, codPortico, classeVeiculo, taxa) values('A20', 3,5, 5.714622);



---------------------
-- INSERT PASSAGEM --  A6 -> A10 ; A16 -> A20
---------------------



insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A6', 1, TO_TIMESTAMP('2016-01-02 12:32:55', 'YYYY-MM-DD HH24:MI:SS'), '32-AZ-24', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A6', 1, TO_TIMESTAMP('2016-01-02 12:35:12', 'YYYY-MM-DD HH24:MI:SS'), '50-AZ-31', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A6', 1, TO_TIMESTAMP('2017-01-02 10:05:14', 'YYYY-MM-DD HH24:MI:SS'), '50-AZ-31',0);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A6', 2, TO_TIMESTAMP('2017-05-02 21:32:00', 'YYYY-MM-DD HH24:MI:SS'), '64-AZ-24', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A6', 2, TO_TIMESTAMP('2017-01-02 12:41:11', 'YYYY-MM-DD HH24:MI:SS'),'32-AZ-24', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A6', 3, TO_TIMESTAMP('2017-01-02 12:53:59', 'YYYY-MM-DD HH24:MI:SS'),'32-AZ-24', 0);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A7', 1, TO_TIMESTAMP('2016-01-02 9:12:52', 'YYYY-MM-DD HH24:MI:SS'), '46-OP-85', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A7', 2, TO_TIMESTAMP('2016-01-02 11:55:55', 'YYYY-MM-DD HH24:MI:SS'), '32-PO-14', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A8', 1, TO_TIMESTAMP('2017-01-02 01:02:03', 'YYYY-MM-DD HH24:MI:SS'), '32-AZ-24', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A8', 1, TO_TIMESTAMP('2017-01-02 02:14:16', 'YYYY-MM-DD HH24:MI:SS'), '00-EL-85', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A8', 2, TO_TIMESTAMP('2017-01-02 05:02:32', 'YYYY-MM-DD HH24:MI:SS'), '00-KK-00', 0);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A8', 3, TO_TIMESTAMP('2017-01-02 09:13:20', 'YYYY-MM-DD HH24:MI:SS'), 'KK-85-92', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A8', 3, TO_TIMESTAMP('2017-01-02 00:00:41', 'YYYY-MM-DD HH24:MI:SS'), '99-AA-99', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A9', 1, TO_TIMESTAMP('2017-01-02 03:14:11', 'YYYY-MM-DD HH24:MI:SS'), '32-AZ-24', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A9', 2, TO_TIMESTAMP('2017-01-02 03:25:26', 'YYYY-MM-DD HH24:MI:SS'), '32-AZ-24', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A9', 3, TO_TIMESTAMP('2017-01-02 11:11:11', 'YYYY-MM-DD HH24:MI:SS'), '11-BB-22', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A10', 1, TO_TIMESTAMP('2016-11-02 00:33:45', 'YYYY-MM-DD HH24:MI:SS'), '50-AZ-31', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A10', 1, TO_TIMESTAMP('2017-01-02 6:14:30', 'YYYY-MM-DD HH24:MI:SS'), '64-AZ-24', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A10', 1, TO_TIMESTAMP('2016-10-02 23:37:55', 'YYYY-MM-DD HH24:MI:SS'), '46-OP-85', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A10', 2, TO_TIMESTAMP('2017-01-02 13:56:12', 'YYYY-MM-DD HH24:MI:SS'), '32-AZ-24', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A10', 2, TO_TIMESTAMP('2017-01-02 18:31:50', 'YYYY-MM-DD HH24:MI:SS'), 'PP-00-00', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A10', 3, TO_TIMESTAMP('2017-01-02 19:20:23', 'YYYY-MM-DD HH24:MI:SS'), 'PP-11-11', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A16', 1, TO_TIMESTAMP('2016-01-15 14:33:58', 'YYYY-MM-DD HH24:MI:SS'), '50-AZ-31', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A16', 1, TO_TIMESTAMP('2016-11-02 16:27:27', 'YYYY-MM-DD HH24:MI:SS'), '46-OP-85', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A16', 3, TO_TIMESTAMP('2017-01-02 12:39:30', 'YYYY-MM-DD HH24:MI:SS'), '99-AA-99', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A17', 1, TO_TIMESTAMP('2016-01-23 12:31:45', 'YYYY-MM-DD HH24:MI:SS'), '32-PO-14', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A17', 1, TO_TIMESTAMP('2017-01-02 13:33:15', 'YYYY-MM-DD HH24:MI:SS'), '00-KK-00', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A17', 2, TO_TIMESTAMP('2017-01-02 17:59:00', 'YYYY-MM-DD HH24:MI:SS'), '00-KK-00', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A18', 1, TO_TIMESTAMP('2017-01-02 18:00:50', 'YYYY-MM-DD HH24:MI:SS'), '32-MN-32', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A18', 1, TO_TIMESTAMP('2017-01-02 19:14:14', 'YYYY-MM-DD HH24:MI:SS'), '64-AZ-24', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A18', 1, TO_TIMESTAMP('2017-01-02 16:16:16', 'YYYY-MM-DD HH24:MI:SS'), '32-AZ-24', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A18', 2, TO_TIMESTAMP('2017-01-02 16:32:55', 'YYYY-MM-DD HH24:MI:SS'), '11-BB-22', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A19', 1, TO_TIMESTAMP('2016-01-10 17:24:26', 'YYYY-MM-DD HH24:MI:SS'), '46-OP-85', 0);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A19', 1, TO_TIMESTAMP('2017-01-02 12:58:20', 'YYYY-MM-DD HH24:MI:SS'), '00-EL-85', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A19', 1, TO_TIMESTAMP('2016-01-01 17:07:06', 'YYYY-MM-DD HH24:MI:SS'), '50-AZ-31', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A19', 3, TO_TIMESTAMP('2016-06-02 08:08:08', 'YYYY-MM-DD HH24:MI:SS'), '32-PO-14', 0);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A20', 1, TO_TIMESTAMP('2017-01-02 14:10:51', 'YYYY-MM-DD HH24:MI:SS'), '55-ZZ-77', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A20', 1, TO_TIMESTAMP('2016-12-24 16:12:10', 'YYYY-MM-DD HH24:MI:SS'), '46-OP-85', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A20', 2, TO_TIMESTAMP('2017-01-02 12:32:55', 'YYYY-MM-DD HH24:MI:SS'), 'AZ-24-12', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A20', 2, TO_TIMESTAMP('2017-09-06 12:40:15', 'YYYY-MM-DD HH24:MI:SS'), '46-OP-85', 0);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A20', 3, TO_TIMESTAMP('2017-07-05 22:39:14', 'YYYY-MM-DD HH24:MI:SS'), '46-OP-85', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A20', 3, TO_TIMESTAMP('2017-01-02 17:51:02', 'YYYY-MM-DD HH24:MI:SS'), '11-BB-22', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A6', 4, TO_TIMESTAMP('2016-01-02 15:12:36', 'YYYY-MM-DD HH24:MI:SS'), '32-AZ-24', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A6', 4, TO_TIMESTAMP('2016-01-02 16:25:52', 'YYYY-MM-DD HH24:MI:SS'), '50-AZ-31', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A6', 4, TO_TIMESTAMP('2017-01-02 13:17:24', 'YYYY-MM-DD HH24:MI:SS'), '50-AZ-31',0);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A6', 5, TO_TIMESTAMP('2017-05-02 23:12:40', 'YYYY-MM-DD HH24:MI:SS'), '64-AZ-24', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A6', 5, TO_TIMESTAMP('2017-01-02 16:13:51', 'YYYY-MM-DD HH24:MI:SS'),'32-AZ-24', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A6', 6, TO_TIMESTAMP('2017-01-02 17:31:29', 'YYYY-MM-DD HH24:MI:SS'),'32-AZ-24', 0);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A7', 4, TO_TIMESTAMP('2016-01-02 14:16:12', 'YYYY-MM-DD HH24:MI:SS'), '46-OP-85', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A7', 5, TO_TIMESTAMP('2016-01-02 19:25:45', 'YYYY-MM-DD HH24:MI:SS'), '32-PO-14', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A8', 4, TO_TIMESTAMP('2017-01-03 11:12:53', 'YYYY-MM-DD HH24:MI:SS'), '32-AZ-24', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A8', 4, TO_TIMESTAMP('2017-01-02 09:36:51', 'YYYY-MM-DD HH24:MI:SS'), '00-EL-85', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A8', 4, TO_TIMESTAMP('2017-01-02 12:51:18', 'YYYY-MM-DD HH24:MI:SS'), '00-KK-00', 0);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A8', 6, TO_TIMESTAMP('2017-01-02 16:23:26', 'YYYY-MM-DD HH24:MI:SS'), 'KK-85-92', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A8', 6, TO_TIMESTAMP('2017-01-02 01:20:45', 'YYYY-MM-DD HH24:MI:SS'), '99-AA-99', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A9', 4, TO_TIMESTAMP('2017-01-02 19:24:16', 'YYYY-MM-DD HH24:MI:SS'), '32-AZ-24', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A9', 5, TO_TIMESTAMP('2017-01-02 19:45:26', 'YYYY-MM-DD HH24:MI:SS'), '32-AZ-24', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A9', 6, TO_TIMESTAMP('2017-01-02 16:12:23', 'YYYY-MM-DD HH24:MI:SS'), '11-BB-22', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A10', 4, TO_TIMESTAMP('2016-11-02 15:53:25', 'YYYY-MM-DD HH24:MI:SS'), '50-AZ-31', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A10', 4, TO_TIMESTAMP('2017-01-02 16:34:30', 'YYYY-MM-DD HH24:MI:SS'), '64-AZ-24', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A10', 4, TO_TIMESTAMP('2016-10-06 17:37:25', 'YYYY-MM-DD HH24:MI:SS'), '46-OP-85', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A10', 5, TO_TIMESTAMP('2017-01-02 16:56:12', 'YYYY-MM-DD HH24:MI:SS'), '32-AZ-24', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A10', 5, TO_TIMESTAMP('2017-01-02 20:31:50', 'YYYY-MM-DD HH24:MI:SS'), 'PP-00-00', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A10', 6, TO_TIMESTAMP('2017-01-02 22:20:23', 'YYYY-MM-DD HH24:MI:SS'), 'PP-11-11', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A16', 4, TO_TIMESTAMP('2016-01-15 17:13:58', 'YYYY-MM-DD HH24:MI:SS'), '50-AZ-31', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A16', 4, TO_TIMESTAMP('2016-11-02 18:57:27', 'YYYY-MM-DD HH24:MI:SS'), '46-OP-85', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A16', 6, TO_TIMESTAMP('2017-01-02 17:29:36', 'YYYY-MM-DD HH24:MI:SS'), '99-AA-99', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A17', 4, TO_TIMESTAMP('2016-01-24 18:21:55', 'YYYY-MM-DD HH24:MI:SS'), '32-PO-14', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A17', 4, TO_TIMESTAMP('2017-01-02 19:33:15', 'YYYY-MM-DD HH24:MI:SS'), '00-KK-00', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A17', 5, TO_TIMESTAMP('2017-01-02 20:29:00', 'YYYY-MM-DD HH24:MI:SS'), '00-KK-00', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A18', 4, TO_TIMESTAMP('2017-01-02 20:50:30', 'YYYY-MM-DD HH24:MI:SS'), '32-MN-32', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A18', 4, TO_TIMESTAMP('2017-01-02 20:50:24', 'YYYY-MM-DD HH24:MI:SS'), '64-AZ-24', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A18', 4, TO_TIMESTAMP('2017-01-02 18:36:26', 'YYYY-MM-DD HH24:MI:SS'), '32-AZ-24', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A18', 5, TO_TIMESTAMP('2017-01-02 21:22:45', 'YYYY-MM-DD HH24:MI:SS'), '11-BB-22', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A19', 4, TO_TIMESTAMP('2016-01-10 19:34:16', 'YYYY-MM-DD HH24:MI:SS'), '46-OP-85', 0);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A19', 4, TO_TIMESTAMP('2017-01-02 16:28:50', 'YYYY-MM-DD HH24:MI:SS'), '00-EL-85', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A19', 4, TO_TIMESTAMP('2016-01-01 19:37:16', 'YYYY-MM-DD HH24:MI:SS'), '50-AZ-31', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A19', 6, TO_TIMESTAMP('2016-06-02 18:28:58', 'YYYY-MM-DD HH24:MI:SS'), '32-PO-14', 0);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A20', 4, TO_TIMESTAMP('2017-01-02 17:35:26', 'YYYY-MM-DD HH24:MI:SS'), '55-ZZ-77', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A20', 4, TO_TIMESTAMP('2016-12-24 17:12:10', 'YYYY-MM-DD HH24:MI:SS'), '46-OP-85', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A20', 5, TO_TIMESTAMP('2017-01-02 17:22:55', 'YYYY-MM-DD HH24:MI:SS'), 'AZ-24-12', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A20', 5, TO_TIMESTAMP('2017-09-06 18:20:55', 'YYYY-MM-DD HH24:MI:SS'), '46-OP-85', 0);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A20', 6, TO_TIMESTAMP('2017-07-06 03:29:54', 'YYYY-MM-DD HH24:MI:SS'), '46-OP-85', 1);
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo, estadoDispositivo) values('A20', 6, TO_TIMESTAMP('2017-01-02 20:21:42', 'YYYY-MM-DD HH24:MI:SS'), '11-BB-22', 1);




--------------------------------
-- INSERT Dispositivo_Veiculo --  24 - 38
-------------------------------- 


insert into DISPOSITIVO_VEICULO (NRSERIEDISPOSITIVO, INFODATA, MATRICULAVEICULO) values (1, TO_TIMESTAMP('2016-12-02 00:43:02', 'YYYY-MM-DD HH24:MI:SS'), '32-AZ-24');
insert into DISPOSITIVO_VEICULO (NRSERIEDISPOSITIVO, INFODATA, MATRICULAVEICULO) values (2, TO_TIMESTAMP('2016-12-03 01:57:02', 'YYYY-MM-DD HH24:MI:SS'), '50-AZ-31');
insert into DISPOSITIVO_VEICULO (NRSERIEDISPOSITIVO, INFODATA, MATRICULAVEICULO) values (3, TO_TIMESTAMP('2016-12-05 02:07:02', 'YYYY-MM-DD HH24:MI:SS'), 'AZ-24-12');
insert into DISPOSITIVO_VEICULO (NRSERIEDISPOSITIVO, INFODATA, MATRICULAVEICULO) values (4, TO_TIMESTAMP('2016-12-10 03:21:02', 'YYYY-MM-DD HH24:MI:SS'), '46-OP-85');
insert into DISPOSITIVO_VEICULO (NRSERIEDISPOSITIVO, INFODATA, MATRICULAVEICULO) values (5, TO_TIMESTAMP('2016-12-12 04:19:02', 'YYYY-MM-DD HH24:MI:SS'), '32-PO-14');
insert into DISPOSITIVO_VEICULO (NRSERIEDISPOSITIVO, INFODATA, MATRICULAVEICULO) values (6, TO_TIMESTAMP('2016-12-07 06:42:02', 'YYYY-MM-DD HH24:MI:SS'), '64-AZ-24');
insert into DISPOSITIVO_VEICULO (NRSERIEDISPOSITIVO, INFODATA, MATRICULAVEICULO) values (7, TO_TIMESTAMP('2016-12-06 07:34:02', 'YYYY-MM-DD HH24:MI:SS'), '32-MN-32');
insert into DISPOSITIVO_VEICULO (NRSERIEDISPOSITIVO, INFODATA, MATRICULAVEICULO) values (8, TO_TIMESTAMP('2016-12-04 08:07:02', 'YYYY-MM-DD HH24:MI:SS'), '00-EL-85');
insert into DISPOSITIVO_VEICULO (NRSERIEDISPOSITIVO, INFODATA, MATRICULAVEICULO) values (9, TO_TIMESTAMP('2016-12-02 09:29:02', 'YYYY-MM-DD HH24:MI:SS'), '11-BB-22');
insert into DISPOSITIVO_VEICULO (NRSERIEDISPOSITIVO, INFODATA, MATRICULAVEICULO) values (10, TO_TIMESTAMP('2016-12-01 13:05:02', 'YYYY-MM-DD HH24:MI:SS'), '55-ZZ-77');
insert into DISPOSITIVO_VEICULO (NRSERIEDISPOSITIVO, INFODATA, MATRICULAVEICULO) values (11, TO_TIMESTAMP('2016-12-23 14:08:02', 'YYYY-MM-DD HH24:MI:SS'), '69-PP-85');
insert into DISPOSITIVO_VEICULO (NRSERIEDISPOSITIVO, INFODATA, MATRICULAVEICULO) values (12, TO_TIMESTAMP('2016-12-19 15:57:02', 'YYYY-MM-DD HH24:MI:SS'), '99-AA-99');
insert into DISPOSITIVO_VEICULO (NRSERIEDISPOSITIVO, INFODATA, MATRICULAVEICULO) values (13, TO_TIMESTAMP('2016-12-29 17:45:02', 'YYYY-MM-DD HH24:MI:SS'), '00-KK-00');
insert into DISPOSITIVO_VEICULO (NRSERIEDISPOSITIVO, INFODATA, MATRICULAVEICULO) values (14, TO_TIMESTAMP('2016-12-16 20:37:02', 'YYYY-MM-DD HH24:MI:SS'), 'KK-85-92');
insert into DISPOSITIVO_VEICULO (NRSERIEDISPOSITIVO, INFODATA, MATRICULAVEICULO) values (15, TO_TIMESTAMP('2016-12-14 22:12:02', 'YYYY-MM-DD HH24:MI:SS'), '47-HH-68');




---------------------------
-- INSERT RegistoEntrada --   A1 -> A5 ; A11 -> A15
--------------------------- 



insert into REGISTOENTRADA (CODAUTOESTRADA, CODPORTTRADICIONAL, MATRICULAVEICULO, DATAREG, ESTADODISPOSITIVO) values ('A1', 1, '32-AZ-24',TO_TIMESTAMP('2016-12-14 01:12:02', 'YYYY-MM-DD HH24:MI:SS'), 0);
insert into REGISTOENTRADA (CODAUTOESTRADA, CODPORTTRADICIONAL, MATRICULAVEICULO, DATAREG, ESTADODISPOSITIVO) values ('A1', 2, '69-PP-85',TO_TIMESTAMP('2017-12-14 02:12:02', 'YYYY-MM-DD HH24:MI:SS'), 0);
insert into REGISTOENTRADA (CODAUTOESTRADA, CODPORTTRADICIONAL, MATRICULAVEICULO, DATAREG, ESTADODISPOSITIVO) values ('A1', 3, '88-LL-88',TO_TIMESTAMP('2017-10-14 03:12:02', 'YYYY-MM-DD HH24:MI:SS'), 0);
insert into REGISTOENTRADA (CODAUTOESTRADA, CODPORTTRADICIONAL, MATRICULAVEICULO, DATAREG, ESTADODISPOSITIVO) values ('A1', 3, '00-KK-00',TO_TIMESTAMP('2017-10-07 04:12:02', 'YYYY-MM-DD HH24:MI:SS'), 1);
insert into REGISTOENTRADA (CODAUTOESTRADA, CODPORTTRADICIONAL, MATRICULAVEICULO, DATAREG, ESTADODISPOSITIVO) values ('A1', 2, '47-HH-68',TO_TIMESTAMP('2017-09-21 05:12:02', 'YYYY-MM-DD HH24:MI:SS'), 0);
insert into REGISTOENTRADA (CODAUTOESTRADA, CODPORTTRADICIONAL, MATRICULAVEICULO, DATAREG, ESTADODISPOSITIVO) values ('A5', 1, '47-HH-68',TO_TIMESTAMP('2017-01-10 06:12:02', 'YYYY-MM-DD HH24:MI:SS'), 0);
insert into REGISTOENTRADA (CODAUTOESTRADA, CODPORTTRADICIONAL, MATRICULAVEICULO, DATAREG, ESTADODISPOSITIVO) values ('A5', 1, '55-ZZ-77',TO_TIMESTAMP('2017-01-01 07:12:02', 'YYYY-MM-DD HH24:MI:SS'), 0);
insert into REGISTOENTRADA (CODAUTOESTRADA, CODPORTTRADICIONAL, MATRICULAVEICULO, DATAREG, ESTADODISPOSITIVO) values ('A5', 2, '11-BB-22',TO_TIMESTAMP('2017-08-15 08:12:02', 'YYYY-MM-DD HH24:MI:SS'), 0);
insert into REGISTOENTRADA (CODAUTOESTRADA, CODPORTTRADICIONAL, MATRICULAVEICULO, DATAREG, ESTADODISPOSITIVO) values ('A4', 1, '46-OP-85',TO_TIMESTAMP('2017-07-10 09:12:02', 'YYYY-MM-DD HH24:MI:SS'), 1);
insert into REGISTOENTRADA (CODAUTOESTRADA, CODPORTTRADICIONAL, MATRICULAVEICULO, DATAREG, ESTADODISPOSITIVO) values ('A13', 1,'55-ZZ-77',TO_TIMESTAMP('2017-11-10 10:12:02', 'YYYY-MM-DD HH24:MI:SS'), 0);
insert into REGISTOENTRADA (CODAUTOESTRADA, CODPORTTRADICIONAL, MATRICULAVEICULO, DATAREG, ESTADODISPOSITIVO) values ('A3', 1, '00-EL-85',TO_TIMESTAMP('2017-10-11 11:12:02', 'YYYY-MM-DD HH24:MI:SS'), 0);
insert into REGISTOENTRADA (CODAUTOESTRADA, CODPORTTRADICIONAL, MATRICULAVEICULO, DATAREG, ESTADODISPOSITIVO) values ('A2', 2, '00-EL-85',TO_TIMESTAMP('2016-02-15 12:12:02', 'YYYY-MM-DD HH24:MI:SS'), 1);

insert into REGISTOENTRADA (CODAUTOESTRADA, CODPORTTRADICIONAL, MATRICULAVEICULO, DATAREG, ESTADODISPOSITIVO) values ('A1', 2, 'QU-85-41',TO_TIMESTAMP('2017-03-15 12:12:02', 'YYYY-MM-DD HH24:MI:SS'), 0);
insert into REGISTOENTRADA (CODAUTOESTRADA, CODPORTTRADICIONAL, MATRICULAVEICULO, DATAREG, ESTADODISPOSITIVO) values ('A5', 2, 'LK-56-85',TO_TIMESTAMP('2017-08-15 21:12:02', 'YYYY-MM-DD HH24:MI:SS'), 0);
insert into REGISTOENTRADA (CODAUTOESTRADA, CODPORTTRADICIONAL, MATRICULAVEICULO, DATAREG, ESTADODISPOSITIVO) values ('A13', 2, '13-MP-99',TO_TIMESTAMP('2017-02-19 13:12:02', 'YYYY-MM-DD HH24:MI:SS'),0);



---------------------------
-- INSERT RegistoSaida   --   
---------------------------



insert into REGISTOSAIDA (NRREGISTOENTRADA, CODPORTTRADICIONAL, CODAUTOESTRADA, MATRICULAVEICULO, DATA, ESTADODISPOSITIVO) values (1, 2, 'A1','32-AZ-24',TO_TIMESTAMP('2016-12-14 01:12:04','YYYY-MM-DD HH24:MI:SS'),0);
insert into REGISTOSAIDA (NRREGISTOENTRADA, CODPORTTRADICIONAL, CODAUTOESTRADA, MATRICULAVEICULO, DATA, ESTADODISPOSITIVO) values (2, 1, 'A1','69-PP-85',TO_TIMESTAMP('2017-12-14 02:12:12','YYYY-MM-DD HH24:MI:SS'),0);
insert into REGISTOSAIDA (NRREGISTOENTRADA, CODPORTTRADICIONAL, CODAUTOESTRADA, MATRICULAVEICULO, DATA, ESTADODISPOSITIVO) values (3, 4, 'A1','88-LL-88',TO_TIMESTAMP('2017-10-14 03:22:05','YYYY-MM-DD HH24:MI:SS'),0);
insert into REGISTOSAIDA (NRREGISTOENTRADA, CODPORTTRADICIONAL, CODAUTOESTRADA, MATRICULAVEICULO, DATA, ESTADODISPOSITIVO) values (4, 3, 'A1','00-KK-00',TO_TIMESTAMP('2017-10-07 04:34:02', 'YYYY-MM-DD HH24:MI:SS'), 1);
insert into REGISTOSAIDA (NRREGISTOENTRADA, CODPORTTRADICIONAL, CODAUTOESTRADA, MATRICULAVEICULO, DATA, ESTADODISPOSITIVO) values (5, 1, 'A4','46-OP-85',TO_TIMESTAMP('2017-07-10 09:59:02', 'YYYY-MM-DD HH24:MI:SS'), 1);
insert into REGISTOSAIDA (NRREGISTOENTRADA, CODPORTTRADICIONAL, CODAUTOESTRADA, MATRICULAVEICULO, DATA, ESTADODISPOSITIVO) values (6,  2,'A2','00-EL-85',TO_TIMESTAMP('2016-02-15 12:43:02', 'YYYY-MM-DD HH24:MI:SS'), 1);




--------------------------------------------
-- INSERT LinhaPagamentoPassagemPortico   --   
--------------------------------------------


insert into LINHAPAGAMENTOPASSAGEMPORTICO (DATAEMISSAO, NRSERIEDISPOSITIVO, VALORTOTAL, NRPASSAGEM) values(TO_TIMESTAMP('2016-01-02 12:32:55', 'YYYY-MM-DD HH24:MI:SS'), 1, 3.5, 1);
insert into LINHAPAGAMENTOPASSAGEMPORTICO (DATAEMISSAO, NRSERIEDISPOSITIVO, VALORTOTAL, NRPASSAGEM) values( TO_TIMESTAMP('2016-01-02 12:35:12', 'YYYY-MM-DD HH24:MI:SS'), 2,1.95, 2);
insert into LINHAPAGAMENTOPASSAGEMPORTICO (DATAEMISSAO, NRSERIEDISPOSITIVO, VALORTOTAL, NRPASSAGEM) values( TO_TIMESTAMP('2017-05-02 21:32:00', 'YYYY-MM-DD HH24:MI:SS'), 6,1.76, 4);
insert into LINHAPAGAMENTOPASSAGEMPORTICO (DATAEMISSAO, NRSERIEDISPOSITIVO, VALORTOTAL, NRPASSAGEM) values( TO_TIMESTAMP('2017-01-02 12:41:11', 'YYYY-MM-DD HH24:MI:SS'),1,2.34,5);
insert into LINHAPAGAMENTOPASSAGEMPORTICO (DATAEMISSAO, NRSERIEDISPOSITIVO, VALORTOTAL, NRPASSAGEM) values( TO_TIMESTAMP('2016-01-02 9:12:52', 'YYYY-MM-DD HH24:MI:SS'), 4,1.05,7);
insert into LINHAPAGAMENTOPASSAGEMPORTICO (DATAEMISSAO, NRSERIEDISPOSITIVO, VALORTOTAL, NRPASSAGEM) values( TO_TIMESTAMP('2016-01-02 11:55:55', 'YYYY-MM-DD HH24:MI:SS'), 5,8.563, 8);
insert into LINHAPAGAMENTOPASSAGEMPORTICO (DATAEMISSAO, NRSERIEDISPOSITIVO, VALORTOTAL, NRPASSAGEM) values( TO_TIMESTAMP('2017-01-02 01:02:03', 'YYYY-MM-DD HH24:MI:SS'), 1,1.35, 9);
insert into LINHAPAGAMENTOPASSAGEMPORTICO (DATAEMISSAO, NRSERIEDISPOSITIVO, VALORTOTAL, NRPASSAGEM) values( TO_TIMESTAMP('2017-01-02 02:14:16', 'YYYY-MM-DD HH24:MI:SS'), 8,4.369, 10);
insert into LINHAPAGAMENTOPASSAGEMPORTICO (DATAEMISSAO, NRSERIEDISPOSITIVO, VALORTOTAL, NRPASSAGEM) values( TO_TIMESTAMP('2017-01-02 09:13:20', 'YYYY-MM-DD HH24:MI:SS'), 14,1.25, 12);
insert into LINHAPAGAMENTOPASSAGEMPORTICO (DATAEMISSAO, NRSERIEDISPOSITIVO, VALORTOTAL, NRPASSAGEM) values( TO_TIMESTAMP('2017-01-02 00:00:41', 'YYYY-MM-DD HH24:MI:SS'), 12,1.5, 13);
insert into LINHAPAGAMENTOPASSAGEMPORTICO (DATAEMISSAO, NRSERIEDISPOSITIVO, VALORTOTAL, NRPASSAGEM) values( TO_TIMESTAMP('2017-01-02 03:14:11', 'YYYY-MM-DD HH24:MI:SS'), 1,1.658,14);
insert into LINHAPAGAMENTOPASSAGEMPORTICO (DATAEMISSAO, NRSERIEDISPOSITIVO, VALORTOTAL, NRPASSAGEM) values( TO_TIMESTAMP('2017-01-02 03:25:26', 'YYYY-MM-DD HH24:MI:SS'), 1,1.6587,15);
insert into LINHAPAGAMENTOPASSAGEMPORTICO (DATAEMISSAO, NRSERIEDISPOSITIVO, VALORTOTAL, NRPASSAGEM) values( TO_TIMESTAMP('2017-01-02 11:11:11', 'YYYY-MM-DD HH24:MI:SS'), 9,7.1256,16);



---------------------------------------------------
-- INSERT LinhaPagamentosPortagensTradicionais   --   
---------------------------------------------------

insert into LINHAPAGAMENTOSPORTAGENSTRADICIONAIS (NRREGSAIDA, NRSERIEDISPOSITIVO, VALOR, DATAEMISSAO) values (4, 8, 1.29, TO_TIMESTAMP('2016-02-15 12:43:02', 'YYYY-MM-DD HH24:MI:SS'));
insert into LINHAPAGAMENTOSPORTAGENSTRADICIONAIS (NRREGSAIDA, NRSERIEDISPOSITIVO, VALOR, DATAEMISSAO) values (5, 13, 10.36,TO_TIMESTAMP('2017-10-07 04:34:02', 'YYYY-MM-DD HH24:MI:SS'));
insert into LINHAPAGAMENTOSPORTAGENSTRADICIONAIS (NRREGSAIDA, NRSERIEDISPOSITIVO, VALOR, DATAEMISSAO) values (6, 4, 4.52, TO_TIMESTAMP('2017-07-10 10:05:02', 'YYYY-MM-DD HH24:MI:SS'));


--------------------------
-- INSERT CobrancaCTT   --
--------------------------

insert into CobrancaCTT (MATRICULAVEICULO, NRPASSAGEM, DATAEMISSAO, VALORCOBRANCA, SITUACAOPAGAMENTO) values ('32-AZ-24', 1, TO_TIMESTAMP('2016.01.02 12:32:55', 'YYYY.MM.DD HH24:MI:SS'), 33.24, 1);
insert into CobrancaCTT (MATRICULAVEICULO, NRPASSAGEM, DATAEMISSAO, VALORCOBRANCA, SITUACAOPAGAMENTO) values ('32-AZ-24', 5, TO_TIMESTAMP('17.01.02 12:41:11', 'YYYY.MM.DD HH24:MI:SS'), 1.25, 0);
insert into CobrancaCTT (MATRICULAVEICULO, NRPASSAGEM, DATAEMISSAO, VALORCOBRANCA, SITUACAOPAGAMENTO) values ('32-AZ-24', 6, TO_TIMESTAMP('17.01.02 12:53:59', 'YYYY.MM.DD HH24:MI:SS'), 3.65, 0);
insert into CobrancaCTT (MATRICULAVEICULO, NRPASSAGEM, DATAEMISSAO, VALORCOBRANCA, SITUACAOPAGAMENTO) values ('32-AZ-24', 9, TO_TIMESTAMP('17.01.02 01:02:03', 'YYYY.MM.DD HH24:MI:SS'), 2.85, 0);
insert into CobrancaCTT (MATRICULAVEICULO, NRPASSAGEM, DATAEMISSAO, VALORCOBRANCA, SITUACAOPAGAMENTO) values ('32-AZ-24', 14, TO_TIMESTAMP('17.01.02 03:14:11', 'YYYY.MM.DD HH24:MI:SS'), 0.68, 0);
insert into CobrancaCTT (MATRICULAVEICULO, NRPASSAGEM, DATAEMISSAO, VALORCOBRANCA, SITUACAOPAGAMENTO) values ('32-AZ-24', 15, TO_TIMESTAMP('17.01.02 03:25:26', 'YYYY.MM.DD HH24:MI:SS'), 4.56, 0);
--insert into CobrancaCTT (MATRICULAVEICULO, NRPASSAGEM, DATAEMISSAO, VALORCOBRANCA, SITUACAOPAGAMENTO) values ('00-EL-85');



-------------------------------
-- INSERT CobrancaFinancas   --
-------------------------------


insert into COBRANCAFINANCAS (MATRICULAVEICULO, NRREGSAIDA, VALOR,DATAEMISSAO, SITUACAOPAGAMENTO) values ('32-AZ-24', 1, 2.36,TO_TIMESTAMP('2016-12-14 01:12:04','YYYY-MM-DD HH24:MI:SS'), 0);
insert into COBRANCAFINANCAS (MATRICULAVEICULO, NRREGSAIDA, VALOR,DATAEMISSAO, SITUACAOPAGAMENTO) values ('69-PP-85', 2, 1.56, TO_TIMESTAMP('2017-12-14 02:12:12','YYYY-MM-DD HH24:MI:SS'), 0);


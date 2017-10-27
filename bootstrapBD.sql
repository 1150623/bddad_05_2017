/*
--------------------
-- INSERT CLASSES --
--------------------

insert into Classe (DESCRICAO) values ('ligeiro');
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

---------------------
-- INSERT CLIENTES --
---------------------

insert into Cliente (NIF, MORADA, NOME) values (123456789, 'Rua 1','Tiago');
insert into Cliente (NIF, MORADA, NOME) values (987654321, 'Rua 1','Tiago');
insert into Cliente (NIF, MORADA, NOME) values (159753698, 'Rua 2','Ana');
insert into Cliente (NIF, MORADA, NOME) values (958412587, 'Rua 3','Maria');
insert into Cliente (NIF, MORADA, NOME) values (658523658, 'Rua 4','Rodrigo');
insert into Cliente (NIF, MORADA, NOME) values (424252586, 'Rua 5','Guilherme');
insert into Cliente (NIF, MORADA, NOME) values (956485231, 'Rua 6','Pedro');
insert into Cliente (NIF, MORADA, NOME) values (123569874, 'Rua 7','Joao');

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
insert into AUTOESTRADA (CODAUTOESTRADA, DESCRICAO, TIPOPORTAGEM) values('A10', 'C para V', 1);
insert into AUTOESTRADA (CODAUTOESTRADA, DESCRICAO, TIPOPORTAGEM) values('A11', 'C para D', 2);
insert into AUTOESTRADA (CODAUTOESTRADA, DESCRICAO, TIPOPORTAGEM) values('A12', 'C para K', 2);
insert into AUTOESTRADA (CODAUTOESTRADA, DESCRICAO, TIPOPORTAGEM) values('A13', 'C para F', 2);
insert into AUTOESTRADA (CODAUTOESTRADA, DESCRICAO, TIPOPORTAGEM) values('A14', 'D para L', 2);
insert into AUTOESTRADA (CODAUTOESTRADA, DESCRICAO, TIPOPORTAGEM) values('A15', 'D para F', 2);
insert into AUTOESTRADA (CODAUTOESTRADA, DESCRICAO, TIPOPORTAGEM) values('A16', 'D para E', 1);
insert into AUTOESTRADA (CODAUTOESTRADA, DESCRICAO, TIPOPORTAGEM) values('A17', 'E para P', 1);
insert into AUTOESTRADA (CODAUTOESTRADA, DESCRICAO, TIPOPORTAGEM) values('A18', 'E para L', 1);
insert into AUTOESTRADA (CODAUTOESTRADA, DESCRICAO, TIPOPORTAGEM) values('A19', 'F para Q', 1);
insert into AUTOESTRADA (CODAUTOESTRADA, DESCRICAO, TIPOPORTAGEM) values('A20', 'F para Z', 1);





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
-- INSERT PORTAGEMTRADICIONAL --
--------------------------------

insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A1', 1, 15, 'Portagem Tradicional A1 - N� com A2');
insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A1', 2, 21, 'Portagem Tradicional A1 - N� com A3');
insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A1', 3, 37, 'Portagem Tradicional A1 - N� com A4');
insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A1', 4, 120, 'Portagem Tradicional A1 - N� com A17');

insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A17', 1, 117, 'Portagem Tradicional A17 - N� com A1');
insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A17', 2, 46, 'Portagem Tradicional A17 - N� com A13');

insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A13', 1, 20, 'Portagem Tradicional A1 - N� com A19');
insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A13', 2, 31, 'Portagem Tradicional A13 - N� com A17');
insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A13', 3, 45, 'Portagem Tradicional A13 - N� com A2');

insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A2', 1, 4, 'Portagem Tradicional A2 - N� com A13');
insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A2', 2, 6, 'Portagem Tradicional A2 - N� com A20');
insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A2', 3, 7, 'Portagem Tradicional A2 - N� com A14');
insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A2', 4, 14, 'Portagem Tradicional A2 - N� com A7');
insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A2', 5, 15, 'Portagem Tradicional A2 - N� com A11');
insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A2', 6, 21, 'Portagem Tradicional A2 - N� com A1');

insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A3', 1, 5, 'Portagem Tradicional A3 - N� com A1');

insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A4', 1, 14, 'Portagem Tradicional A4 - N� com A1');

insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A5', 1, 5, 'Portagem Tradicional A5 - N� com A7');
insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A5', 2, 29, 'Portagem Tradicional A5 - N� com A19');

insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A6', 1, 13, 'Portagem Tradicional A6 - N� com A18');
insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A6', 2, 99, 'Portagem Tradicional A6 - N� com A12');

insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A7', 1, 5, 'Portagem Tradicional A7 - N� com A5');
insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A7', 2, 20, 'Portagem Tradicional A7 - N� com A2');

insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A8', 1, 45, 'Portagem Tradicional A8 - N� com A9');

insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A9', 1, 43, 'Portagem Tradicional A9 - N� com A8');
insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A9', 2, 86, 'Portagem Tradicional A9 - N� com A20');

insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A10', 1, 71, 'Portagem Tradicional A10 - N� com A16');

insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A16', 1, 16, 'Portagem Tradicional A16 - N� com A10');

insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A12', 1, 1, 'Portagem Tradicional A12 - N� com A6');

insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A14', 1, 74, 'Portagem Tradicional A14 - N� com A2');
insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A14', 2, 96, 'Portagem Tradicional A14 - N� com A18');

insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A15', 1, 81, 'Portagem Tradicional A15 - N� com A19');

insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A18', 1, 13, 'Portagem Tradicional A18 - N� com A14');
insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A18', 2, 14, 'Portagem Tradicional A18 - N� com A6');

insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A19', 1, 14, 'Portagem Tradicional A19 - N� com A15');
insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A19', 2, 17, 'Portagem Tradicional A19 - N� com A13');
insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A19', 3, 125, 'Portagem Tradicional A19 - N� com A5');

insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A20', 1, 2, 'Portagem Tradicional A20 - N� com A9');
insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A20', 2, 53, 'Portagem Tradicional A20 - N� com A11');
insert into PortagemTradicional (CODAUTOESTRADA, CODPORTTRADICIONAL, QUILOMETRO, DESCRICAO) values ('A20', 3, 63, 'Portagem Tradicional A20 - N� com A2');



------------------------------
-- INSERT TARIFATRADICIONAL --
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

insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A6', 1, 0.5);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A6', 2, 1.7);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A6', 3, 2.5);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A6', 4, 3.4);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A6', 5, 2.0);

insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A7', 1, 0.5);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A7', 2, 1.7);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A7', 3, 2.5);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A7', 4, 3.4);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A7', 5, 2.0);

insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A8', 1, 0.5);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A8', 2, 1.7);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A8', 3, 2.5);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A8', 4, 3.4);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A8', 5, 2.0);

insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A9', 1, 0.5);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A9', 2, 1.7);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A9', 3, 2.5);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A9', 4, 3.4);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A9', 5, 2.0);

insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A10', 1, 0.5);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A10', 2, 1.7);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A10', 3, 2.5);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A10', 4, 3.4);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A10', 5, 2.0);

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

insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A16', 1, 0.56);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A16', 2, 1.47);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A16', 3, 2.25);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A16', 4, 3.34);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A16', 5, 2.012);


insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A17', 1, 0.51);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A17', 2, 1.743);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A17', 3, 2.56);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A17', 4, 3.454);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A17', 5, 2.60);

insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A18', 1, 0.564);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A18', 2, 1.76);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A18', 3, 2.55);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A18', 4, 3.44);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A18', 5, 2.065);

insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A19', 1, 0.578);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A19', 2, 1.7657);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A19', 3, 2.545);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A19', 4, 3.41);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A19', 5, 2.03);

insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A20', 1, 0.55);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A20', 2, 1.77);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A20', 3, 2.55);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A20', 4, 3.44);
insert into TARIFATRADICIONAL (CODAUTOESTRADA, CLASSEVEICULOID, TARIFA) values ('A20', 5, 4.96);






*/







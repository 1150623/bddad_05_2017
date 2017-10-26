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




*/






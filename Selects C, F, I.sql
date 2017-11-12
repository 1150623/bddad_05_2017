
--+-------------------+------------------------------------------------------------------------------------------------+
--+-------------------+                                                                                               -+
--+-- Exercício (c) --+ Liste os veículos(dispositivo, matricula) que circularam em todas as autoestradas com         -+
--+-------------------+ portagens tradicionais.                                                                       -+
--+-------------------+------------------------------------------------------------------------------------------------+

SELECT dv.MATRICULAVEICULO, dv.NRSERIEDISPOSITIVO 
FROM dispositivo_veiculo dv 
WHERE dv.MATRICULAVEICULO in (Select Re.MATRICULAVEICULO 
							from RegistoEntrada Re, autoestrada A 
							where Re.CODAUTOESTRADA = A.CODAUTOESTRADA 
								AND A.tipoportagem = 2);  
								
								

--+-------------------+------------------------------------------------------------------------------------------------+
--+-------------------+ Liste os veículos (dispositivo, matricula) da classe 1 que em 2016 circularam em pelo 		  -+
--+-- Exercício (f) --+ menos uma autoestrada de pórticos, passando em mais do que um pórtico com taxa                -+
--+-------------------+ superior a 2 €.			                                                                      -+
--+-------------------+------------------------------------------------------------------------------------------------+

--------------------------
--Inserts Pórticos em 2016
--------------------------
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo) values('A6', 1, TO_TIMESTAMP('2016-08-07 12:33:43', 'YYYY-MM-DD HH24:MI:SS'), '64-AZ-24');
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo) values('A6', 3, TO_TIMESTAMP('2016-08-07 15:13:23', 'YYYY-MM-DD HH24:MI:SS'), '64-AZ-24');<- Passa
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo) values('A7', 1, TO_TIMESTAMP('2016-08-25 19:33:41', 'YYYY-MM-DD HH24:MI:SS'), '47-HH-68');
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo) values('A7', 1, TO_TIMESTAMP('2016-08-25 19:39:27', 'YYYY-MM-DD HH24:MI:SS'), 'KK-85-92');
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo) values('A8', 1, TO_TIMESTAMP('2016-11-17 19:05:33', 'YYYY-MM-DD HH24:MI:SS'), '55-ZZ-77');
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo) values('A8', 1, TO_TIMESTAMP('2016-09-25 18:25:37', 'YYYY-MM-DD HH24:MI:SS'), '32-PO-14');
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo) values('A9', 2, TO_TIMESTAMP('2016-11-17 10:27:53', 'YYYY-MM-DD HH24:MI:SS'), '32-MN-32');
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo) values('A9', 2, TO_TIMESTAMP('2016-05-27 12:55:23', 'YYYY-MM-DD HH24:MI:SS'), '11-BB-22');
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo) values('A10', 1, TO_TIMESTAMP('2016-05-31 08:52:49', 'YYYY-MM-DD HH24:MI:SS'), '64-AZ-24');
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo) values('A10', 2, TO_TIMESTAMP('2016-04-30 22:06:21', 'YYYY-MM-DD HH24:MI:SS'), '69-PP-85');
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo) values('A10', 3, TO_TIMESTAMP('2016-03-28 14:23:41', 'YYYY-MM-DD HH24:MI:SS'), '00-EL-85');
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo) values('A16', 3, TO_TIMESTAMP('2016-05-21 16:13:01', 'YYYY-MM-DD HH24:MI:SS'), '32-AZ-24'); <- Passa
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo) values('A16', 1, TO_TIMESTAMP('2016-05-15 16:33:51', 'YYYY-MM-DD HH24:MI:SS'), '69-PP-85');
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo) values('A17', 3, TO_TIMESTAMP('2016-01-13 11:54:25', 'YYYY-MM-DD HH24:MI:SS'), '69-PP-85'); <-Passa
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo) values('A18', 1, TO_TIMESTAMP('2016-08-12 13:03:57', 'YYYY-MM-DD HH24:MI:SS'), '99-AA-99');
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo) values('A18', 1, TO_TIMESTAMP('2016-12-08 17:43:25', 'YYYY-MM-DD HH24:MI:SS'), '64-AZ-24');
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo) values('A18', 2, TO_TIMESTAMP('2016-12-08 19:35:09', 'YYYY-MM-DD HH24:MI:SS'), '64-AZ-24'); <- Passa
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo) values('A20', 1, TO_TIMESTAMP('2016-02-18 16:53:59', 'YYYY-MM-DD HH24:MI:SS'), '46-OP-85');
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo) values('A20', 2, TO_TIMESTAMP('2016-12-27 18:25:49', 'YYYY-MM-DD HH24:MI:SS'), '69-PP-85'); <- Passa
insert into PASSAGEMPORTICO (CODAUTOESTRADA, CODPORTICO, dataPASSAGEM, matriculaveiculo) values('A20', 3, TO_TIMESTAMP('2016-06-14 09:05:32', 'YYYY-MM-DD HH24:MI:SS'), '00-KK-00');

--Matriculas mostradas: "69-PP-85" e "64-AZ-24"


SELECT DV.MATRICULAVEICULO, DV.NRSERIEDISPOSITIVO FROM DISPOSITIVO_VEICULO DV, VEICULO V
WHERE DV.MATRICULAVEICULO = V.MATRICULA AND V.CLASSEVEICULO = 1 AND DV.MATRICULAVEICULO IN 
  (SELECT PP.MATRICULAVEICULO FROM PASSAGEMPORTICO PP, AutoEstrada A
  WHERE PP.CODAUTOESTRADA = A.CodAutoEstrada AND extract(Year from PP.dataPassagem) = 2016 AND A.TipoPortagem=1
  AND DV.MATRICULAVEICULO IN 
    (Select PP1.MATRICULAVEICULO from PASSAGEMPORTICO PP1 WHERE extract(Year from PP1.dataPassagem)=2016
      AND 
        (Select count(*) AS Passagens from PASSAGEMPORTICO PP2, Taxa T WHERE extract(Year from PP2.dataPassagem)=2016 AND PP2.CodPortico = T.CodPortico AND PP2.CodAutoestrada = T.CodAutoestrada
          AND PP2.CodPortico = T.CodPortico and T.ClasseVeiculo = 1 AND T.Taxa > 2 AND PP2.MATRICULAVEICULO = PP.MATRICULAVEICULO
        ) > 1
    )
  );


  
--+-------------------+------------------------------------------------------------------------------------------------+
--+-------------------+ Para as autoestradas do tipo pórticos, obtenha a lista contendo o código da autoestrada, a    -+
--+-- Exercício (i) --+ percentagem de passagens de veículos de classe 1, por dia. Devem ser  excluídas as 			  -+
--+-------------------+ autoestradas, em que a percentagem  seja inferior a 10%.                                       -+
--+-------------------+------------------------------------------------------------------------------------------------+
  
  
select autoestrada, percentagemPassagensClasse1, contaDias 
from (select PP.CODAUTOESTRADA autoestrada,
			COUNT(to_char(PP.DATAPASSAGEM,'DD-MM-YYYY')) contaDias, 
			COUNT(PP.NRPASSAGEM) contaPassagens, 
			SUM(CASE when V.CLASSEVEICULO = 1 then 1 else 0 end) passagensClasse1,
			(100*(SUM(CASE when V.CLASSEVEICULO = 1 then 1 else 0 end))/COUNT(PP.NRPASSAGEM)) percentagemPassagensClasse1
from PASSAGEMPORTICO PP, AUTOESTRADA A, VEICULO V
where A.CODAUTOESTRADA = PP.CODAUTOESTRADA
		and A.TIPOPORTAGEM = 1 
		and V.MATRICULA = PP.MATRICULAVEICULO
   -- and VEI.CLASSE_VEICULO_ID = 1 --veículo classe 1
		group by PP.CODAUTOESTRADA
			having ((100*(SUM(CASE when V.CLASSEVEICULO = 1 then 1 else 0 end))/COUNT(PP.NRPASSAGEM)) > 10))
			order by percentagemPassagensClasse1 desc;
































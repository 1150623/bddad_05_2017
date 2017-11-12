

--+-------------------+------------------------------------------------------------------------------------------------+
--+-------------------+                                                                                               -+
--+-- Exercício (b) --+ Liste para cada autoestrada com pórticos, os pórticos onde nunca passaram veículos da 		  -+
--+-------------------+ classe 4.																			          -+
--+-------------------+------------------------------------------------------------------------------------------------+

SELECT DISTINCT P.DESCRICAO
FROM PORTICO P 
		INNER JOIN PASSAGEMPORTICO PP ON P.CODPORTICO=PP.CODPORTICO 
		AND P.CODAUTOESTRADA=PP.CODAUTOESTRADA 

WHERE PP.MATRICULAVEICULO 
NOT IN (SELECT V.MATRICULA 
		FROM VEICULO V 
				INNER JOIN  CLASSE C ON V.CLASSEVEICULO=C.IDCLASSE 
		WHERE C.DESCRICAO LIKE 'classe4');


--+-------------------+------------------------------------------------------------------------------------------------+
--+-------------------+ Quantos veículos(dispositivos) em 2017 já circularam em autoestradas dos dois tipos de 		  -+
--+-- Exercício (e) --+ portagem(tradicionais ou pórticos) e pelo menos um troço percorrido numa autoestrada  		  -+
--+-------------------+ tradicional	teve um percurso de mais de 20 Km.										          -+
--+-------------------+------------------------------------------------------------------------------------------------+


SELECT COUNT(RS.MATRICULAVEICULO) AS "NUMERO_VEICULOS" FROM REGISTOSAIDA RS
WHERE RS.MATRICULAVEICULO IN(SELECT RS.MATRICULAVEICULO 
							FROM REGISTOENTRADA RE,REGISTOSAIDA RS, PORTAGEMTRADICIONAL PT1,PORTAGEMTRADICIONAL PT2 
							WHERE RE.NRREGISTOENTRADA=RS.NRREGISTOENTRADA
									AND RE.CODPORTTRADICIONAL=PT1.CODPORTTRADICIONAL
									AND RE.CODAUTOESTRADA=PT1.CODAUTOESTRADA
									AND RS.CODPORTTRADICIONAL=PT2.CODPORTTRADICIONAL
									AND RS.CODAUTOESTRADA=PT2.CODAUTOESTRADA
									AND (PT2.QUILOMETRO-PT1.QUILOMETRO)>20
									AND RS.MATRICULAVEICULO IN (SELECT PPT.MATRICULAVEICULO 
																	FROM PASSAGEMPORTICO PPT)
									AND EXTRACT (YEAR FROM RS.DATA)=2017); 


									
--+-------------------+------------------------------------------------------------------------------------------------+
--+-------------------+ Liste a data, o percurso na autoestrada(portagem entrada e portagem saída) e velocidade média -+
--+-- Exercício (h) --+ para cada veículo que ultrapassou a velocidade média de 120 Km nesse percurso no mês de		  -+
--+-------------------+ Agosto de 2017.																		          -+
--+-------------------+------------------------------------------------------------------------------------------------+

SELECT RS.MATRICULAVEICULO, PT1.DESCRICAO ,PT2.DESCRICAO, 
			(PT2.QUILOMETRO-PT1.QUILOMETRO)/((EXTRACT(MINUTE FROM RS.DATA-RE.DATAREG)/60)+(EXTRACT(HOUR FROM RS.DATA-RE.DATAREG)))
FROM REGISTOENTRADA RE, REGISTOSAIDA RS, PORTAGEMTRADICIONAL PT1, PORTAGEMTRADICIONAL PT2
WHERE 	RE.NRREGISTOENTRADA=RS.NRREGISTOENTRADA
	AND RE.CODPORTTRADICIONAL=PT1.CODPORTTRADICIONAL AND RE.CODAUTOESTRADA=PT1.CODAUTOESTRADA
	AND RS.CODPORTTRADICIONAL=PT2.CODPORTTRADICIONAL AND RS.CODAUTOESTRADA=PT2.CODAUTOESTRADA
	AND (PT2.QUILOMETRO-PT1.QUILOMETRO)/((EXTRACT(MINUTE FROM RS.DATA-RE.DATAREG)/60)+(EXTRACT(HOUR FROM RS.DATA-RE.DATAREG)))>120
	AND((EXTRACT(MINUTE FROM RS.DATA-RE.DATAREG)/60)+(EXTRACT(HOUR FROM RS.DATA-RE.DATAREG)))!=0
	AND EXTRACT (YEAR FROM RS.DATA)=2017
	AND EXTRACT (MONTH FROM RS.DATA)=08;






+-----------------+-----------------------------------------------------------------------------------+
+-----------------+-- Crie uma View que permita obter para cada autoestrada tradicional e portagem  --+
+-- Ex. 3.2.2 	--+-- com pórticos os clientes (nome, tipo de cliente) e veículos (dispositivo e    --+
+-- View 2		--+-- matricula) que aí circularam no mês de Agosto de 2017.					    --+
+-----------------+-----------------------------------------------------------------------------------+ 


CREATE VIEW "Registos_Agosto" AS


(SELECT C.NOME, C.TIPOCLIENTE, AE.CODAUTOESTRADA, AE.DESCRICAO 
FROM CLIENTE C,AUTOESTRADA AE, REGISTOENTRADA RE, VEICULO V, DISPOSITIVO_VEICULO DV, DISPOSITIVO D
WHERE DV.MATRICULAVEICULO=V.MATRICULA 
		AND D.NR_SERIE=DV.NRSERIEDISPOSITIVO 
		AND V.MATRICULA=RE.MATRICULAVEICULO AND RE.CODAUTOESTRADA=AE.CODAUTOESTRADA
		AND EXTRACT(MONTH FROM RE.DATAREG)=08 
		AND EXTRACT (YEAR FROM RE.DATAREG)=17
		
		UNION 
		SELECT C.NOME, C.TIPOCLIENTE, AE.CODAUTOESTRADA, AE.DESCRICAO 
		FROM CLIENTE C, AUTOESTRADA AE, PASSAGEMPORTICO PP, VEICULO V, DISPOSITIVO_VEICULO DV, DISPOSITIVO D, REGISTOENTRADA RE
		WHERE DV.MATRICULAVEICULO=V.MATRICULA 
				AND D.NR_SERIE=DV.NRSERIEDISPOSITIVO 
				AND V.MATRICULA=PP.MATRICULAVEICULO 
				AND PP.CODAUTOESTRADA=AE.CODAUTOESTRADA
				AND EXTRACT(MONTH FROM PP.DATAPASSAGEM)=08 
				AND EXTRACT (YEAR FROM RE.DATAREG)=2017);
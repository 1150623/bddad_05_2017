--2B

SELECT DISTINCT p.descricao FROM portico p INNER JOIN passagemportico pp ON p.CODPORTICO=pp.CODPORTICO AND p.CODAUTOESTRADA=pp.CODAUTOESTRADA WHERE pp.MATRICULAVEICULO NOT IN
(SELECT v.matricula FROM veiculo v inner join  classe c on v.CLASSEVEICULO=c.IDCLASSE WHERE c.descricao like 'classe4');
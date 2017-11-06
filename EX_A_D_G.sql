
--+-------------------+------------------------------------------------------------------------------------------------+
--+-------------------+                                                                                               -+
--+-- Exercício (a) --+ Liste as autoestradas que se cruzam com a A4, indicando o km onde elas se cruzam.             -+
--+-------------------+                                                                                               -+
--+-------------------+------------------------------------------------------------------------------------------------+

select lig.codautoestrada1,lig.QUILOMETRO1, lig.CODAUTOESTRADA2, lig.QUILOMETRO2 from Ligacao lig where lig.CODAUTOESTRADA1= 'A4' or lig.CODAUTOESTRADA2='A4';

--+-------------------+------------------------------------------------------------------------------------------------+
--+-------------------+ Liste os clientes que somente circularam em autoestradas com pórticos durante o ano de 2016.  -+
--+-- Exercício (d) --+ Um cliente é identificado pelo NIF e pode ter vários veículos (dispositivos).                 -+
--+-------------------+                                                                                               -+
--+-------------------+------------------------------------------------------------------------------------------------+


select c.NOME, c.NIF, d.MATRICULAVEICULO from Dispositivo d, Cliente c where d.CLIENTENIF=c.NIF and d.MATRICULAVEICULO in (select pp.MATRICULAVEICULO from PASSAGEMPORTICO pp where extract(year from pp.DATAPASSAGEM) = 2016)
                                                                                                                            and d.MATRICULAVEICULO not in (select re.MATRICULAVEICULO from RegistoEntrada re where extract(year from re.DATAREG) = 2016);


--+-------------------+------------------------------------------------------------------------------------------------+
--+-------------------+ Indique qual a autoestrada, com o tipo de portagem tradicional, que obteve o maior número de  -+
--+-- Exercício (g) --+ passagens com o dispositivo inativo, do que qualquer autoestrada com  portagens do tipo       -+
--+-------------------+ pórticos, entre o período de 01/01/2017 a 10/10/2017.                                         -+
--+-------------------+------------------------------------------------------------------------------------------------+

select SUM(COUNT(*)) from Portagemtradicional pt, Dispositivo d, RegistoEntrada re where
                                                                                --Joins
                                                                                pt.CODAUTOESTRADA = ae.CodAUTOESTRADA
                                                                                and pt.CODPORTTRADICIONAL = re.CODPORTTRADICIONAL and pt.CODAUTOESTRADA = re.CODAUTOESTRADA and d.MATRICULAVEICULO = re.MATRICULAVEICULO
                                                                                --Restrição Dispositivo Inativo
                                                                                and d.ESTADODISPOSITIVO = 0 
                                                                                --Restrição Ano
                                                                                and extract(year from re.DATAREG) = 2017 
                                                                                --Restrição Dia e Mês
                                                                                and (extract(month from re.DATAREG) < 10 or (extract(month from re.DATAREG) = 10 and extract(day from re.DATAREG) < 10));
                              


select ae.codautoestrada from Autoestrada ae, AutoEstrada ae1 where (select Count(*) from Portagemtradicional pt, Dispositivo d, RegistoEntrada re where
                                                                                --Joins
                                                                                pt.CODAUTOESTRADA = ae.CodAUTOESTRADA
                                                                                and pt.CODPORTTRADICIONAL = re.CODPORTTRADICIONAL and pt.CODAUTOESTRADA = re.CODAUTOESTRADA and d.MATRICULAVEICULO = re.MATRICULAVEICULO
                                                                                --Restrição Dispositivo Inativo
                                                                                and d.ESTADODISPOSITIVO = 0 
                                                                                --Restrição Ano
                                                                                and extract(year from re.DATAREG) = 2017 
                                                                                --Restrição Dia e Mês
                                                                                and (extract(month from re.DATAREG) < 10 or (extract(month from re.DATAREG) = 10 and extract(day from re.DATAREG) < 10)) group by pt.CODAUTOESTRADA having soma = SUM(COUNT(*))) 
                                                                                
                                                                                > 
                                                                                
                                                                                
                                                                                (select SUM(COUNT(*)) from Portagemtradicional pt, Dispositivo d, RegistoEntrada re where
                                                                                --Joins
                                                                                pt.CODAUTOESTRADA = ae1.CodAUTOESTRADA
                                                                                and pt.CODPORTTRADICIONAL = re.CODPORTTRADICIONAL and pt.CODAUTOESTRADA = re.CODAUTOESTRADA and d.MATRICULAVEICULO = re.MATRICULAVEICULO
                                                                                --Restrição Dispositivo Inativo
                                                                                and d.ESTADODISPOSITIVO = 0 
                                                                                --Restrição Ano
                                                                                and extract(year from re.DATAREG) = 2017 
                                                                                --Restrição Dia e Mês
                                                                                and (extract(month from re.DATAREG) < 10 or (extract(month from re.DATAREG) = 10 and extract(day from re.DATAREG) < 10))group by pt.CODAUTOESTRADA having soma = SUM(COUNT(*)));
                              


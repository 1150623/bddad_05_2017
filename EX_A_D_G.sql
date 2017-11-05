
--+-------------------+------------------------------------------------------------------------------------------------+
--+-------------------+                                                                                               -+
--+-- Exercício (a) --+Liste as autoestradas que se cruzam com a A4, indicando o km onde elas se cruzam.              -+
--+-------------------+                                                                                               -+
--+-------------------+------------------------------------------------------------------------------------------------+

select lig.codautoestrada1,lig.QUILOMETRO1, lig.CODAUTOESTRADA2, lig.QUILOMETRO2 from Ligacao lig where lig.CODAUTOESTRADA1= 'A4' or lig.CODAUTOESTRADA2='A4';

--+-------------------+------------------------------------------------------------------------------------------------+
--+-------------------+ Liste os clientes que somente circularam em autoestradas com pórticos durante o ano de 2016.  -+
--+-- Exercício (d) --+ Um cliente é identificado pelo NIF e pode ter vários veículos (dispositivos).                 -+
--+-------------------+                                                                                               -+
--+-------------------+------------------------------------------------------------------------------------------------+

select pp.MATRICULAVEICULO from PASSAGEMPORTICO pp where extract(year from pp.DATAPASSAGEM) <> 2016; 


select c.NOME, c.NIF, d.MATRICULAVEICULO from Dispositivo d, Cliente c where d.CLIENTENIF=c.NIF and d.MATRICULAVEICULO not in(select pp.MATRICULAVEICULO from PASSAGEMPORTICO pp where extract(year from pp.DATAPASSAGEM) <> 2016 );


--+-------------------+------------------------------------------------------------------------------------------------+
--+-------------------+ Liste os clientes que somente circularam em autoestradas com pórticos durante o ano de 2016.  -+
--+-- Exercício (g) --+ Um cliente é identificado pelo NIF e pode ter vários veículos (dispositivos).                 -+
--+-------------------+                                                                                               -+
--+-------------------+------------------------------------------------------------------------------------------------+


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


select c.nome, c.NIF from Cliente c where c.NIF in (select c.NIF 
                                                    from Dispositivo d, Cliente c 
                                                    where d.CLIENTENIF = c.NIF  
                                                                          and d.MATRICULAVEICULO in (select pp.MATRICULAVEICULO 
                                                                                                      from PASSAGEMPORTICO pp 
                                                                                                      where extract(year from pp.DATAPASSAGEM) = 2016)
                                                                                                                      and d.MATRICULAVEICULO not in (select re.MATRICULAVEICULO 
                                                                                                                                                    from RegistoEntrada re 
                                                                                                                                                    where extract(year from re.DATAREG) = 2016))
                                                                                                                                                    
                                                   and c.NIF not in(select c.NIF
                                                                    from Dispositivo d, Cliente c 
                                                                    where d.CLIENTENIF = c.NIF  
                                                                           and d.MATRICULAVEICULO in (select re.MATRICULAVEICULO 
                                                                                                      from RegistoEntrada re 
                                                                                                      where extract(year from re.DATAREG) = 2016));

--+-------------------+------------------------------------------------------------------------------------------------+
--+-------------------+ Indique qual a autoestrada, com o tipo de portagem tradicional, que obteve o maior número de  -+
--+-- Exercício (g) --+ passagens com o dispositivo inativo, do que qualquer autoestrada com  portagens do tipo       -+
--+-------------------+ pórticos, entre o período de 01/01/2017 a 10/10/2017.                                         -+
--+-------------------+------------------------------------------------------------------------------------------------+


-- Passagens num portico
select COUNT(*) from Autoestrada ae, PassagemPortico pp where ae.codautoestrada = pp.codautoestrada             -- and dispositivo inativo
                                                                                                                and TO_TIMESTAMP('2017-01-01 00:00:01', 'YYYY-MM-DD HH24:MI:SS') <= pp.datapassagem
                                                                                                                and TO_TIMESTAMP('2017-10-10 23:59:59', 'YYYY-MM-DD HH24:MI:SS') >= pp.datapassagem;
                                                          
-- Passagens numa Portagem Tradicional
select COUNT(*) from Autoestrada ae, RegistoEntrada re where ae.codautoestrada = re.codautoestrada              -- and dispositivo inativo
                                                                                                                and TO_TIMESTAMP('2017-01-01 00:00:01', 'YYYY-MM-DD HH24:MI:SS') <= re.dataReg
                                                                                                                and TO_TIMESTAMP('2017-10-10 23:59:59', 'YYYY-MM-DD HH24:MI:SS') >= re.dataReg;


select ae1.codautoestrada from Autoestrada ae1 where (select COUNT(*) from Autoestrada ae, RegistoEntrada re where ae.codAutoestrada = ae1.codautoestrada and ae.codautoestrada = re.codautoestrada   
                                                                                                                and TO_TIMESTAMP('2017-01-01 00:00:01', 'YYYY-MM-DD HH24:MI:SS') <= re.dataReg
                                                                                                                and TO_TIMESTAMP('2017-10-10 23:59:59', 'YYYY-MM-DD HH24:MI:SS') >= re.dataReg) > (select COUNT(*) from Autoestrada ae, PassagemPortico pp where ae.codAutoestrada = ae1.codautoestrada and ae.codautoestrada = pp.codautoestrada  and TO_TIMESTAMP('2017-01-01 00:00:01', 'YYYY-MM-DD HH24:MI:SS') <= pp.datapassagem
                                                                                                                and TO_TIMESTAMP('2017-10-10 23:59:59', 'YYYY-MM-DD HH24:MI:SS') >= pp.datapassagem);




































set serveroutput on;

CREATE OR REPLACE FUNCTION func_portico_menor_trafego(ae_id autoestrada.codautoestrada%TYPE, sentido_id portico.id_sentido%TYPE, data_ini DATE, data_fim DATE) RETURN portico.codportico%TYPE
IS

    CURSOR c_porticos IS SELECT codportico 
                         FROM portico P
                         WHERE P.codautoestrada = ae_id
                         AND P.id_sentido= sentido_id; -- Buscar os todos os pórticos de uma autoestrada e de um sentido
                                   
    l_portico portico%ROWTYPE;
    portico_menor_trafego portico.codportico%TYPE;
    menor_trafego INTEGER := 0;
    temp INTEGER := 0;
    contador INTEGER := 0;
    
BEGIN

    FOR l_portico IN c_porticos LOOP
    
        SELECT COUNT(*) INTO temp
        FROM portico P, passagemportico PP
        WHERE PP.codportico = P.codportico
        AND P.codportico = l_portico.codportico
        AND PP.codautoestrada = P.codautoestrada
        AND to_date(PP.datapassagem) BETWEEN data_ini AND data_ini;
    
        IF contador = 0 THEN

            menor_trafego := temp;
            portico_menor_trafego := l_portico.codportico;
        ELSIF temp < menor_trafego THEN
            menor_trafego := temp;
            portico_menor_trafego := l_portico.codportico;
        END IF;
        
        contador := contador + 1;
        
    END LOOP;
    
    return portico_menor_trafego;
    
END func_portico_menor_trafego;

/

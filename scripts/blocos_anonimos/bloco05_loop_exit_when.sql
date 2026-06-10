DECLARE
    v_ndvi NUMBER := 100;
BEGIN
    -- Estrutura de repetição 3 (LOOP EXIT WHEN)
    LOOP
        v_ndvi := v_ndvi - 15;
        
        -- Estrutura Condicional 3
        IF v_ndvi < 50 THEN
            DBMS_OUTPUT.PUT_LINE('Aviso: NDVI abaixo de 50! (' || v_ndvi || ')');
        END IF;

        DBMS_OUTPUT.PUT_LINE('NDVI atual: ' || v_ndvi);
        EXIT WHEN v_ndvi < 40;
    END LOOP;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
/
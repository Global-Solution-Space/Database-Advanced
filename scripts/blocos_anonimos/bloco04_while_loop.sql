DECLARE
    v_cont NUMBER := 1;
    v_total NUMBER;
BEGIN

    SELECT COUNT(*) INTO v_total FROM dado_temporal;

    WHILE v_cont <= v_total LOOP
        DBMS_OUTPUT.PUT_LINE(
            'Processando leitura ' || v_cont
        );
        v_cont := v_cont + 1;
    END LOOP;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
/
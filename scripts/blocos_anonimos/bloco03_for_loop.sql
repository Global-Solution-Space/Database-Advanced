DECLARE
    v_total NUMBER;
BEGIN
    FOR i IN 1..5 LOOP

        SELECT COUNT(*) INTO v_total FROM alerta_agricola WHERE talhao_id_talhao = i;
        DBMS_OUTPUT.PUT_LINE(
            'Talhão ' || i ||
            ' possui ' || v_total ||
            ' alerta(s).'
        );
    END LOOP;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
/
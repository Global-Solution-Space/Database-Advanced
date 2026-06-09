DECLARE
    v_qtd NUMBER;
BEGIN

    SELECT COUNT(*)
    INTO v_qtd
    FROM alerta_agricola;

    IF v_qtd = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Sem alertas');

    ELSIF v_qtd <= 10 THEN
        DBMS_OUTPUT.PUT_LINE('Poucos alertas');

    ELSE
        DBMS_OUTPUT.PUT_LINE('Muitos alertas');
    END IF;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
/
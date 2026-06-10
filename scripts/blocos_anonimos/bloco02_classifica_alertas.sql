DECLARE
    -- Cursor explícito 2
    CURSOR c_alertas IS SELECT COUNT(*) FROM alerta_agricola;
    v_qtd NUMBER;
BEGIN
    OPEN c_alertas;
    FETCH c_alertas INTO v_qtd;
    CLOSE c_alertas;

    -- Estrutura Condicional 2 (IF/ELSIF/ELSE)
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
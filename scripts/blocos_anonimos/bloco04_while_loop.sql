DECLARE
    -- Cursor explícito 4
    CURSOR c_tipos IS SELECT tipo_plant FROM tipo_plantacao;
    v_tipo tipo_plantacao.tipo_plant%TYPE;
BEGIN
    OPEN c_tipos;
    FETCH c_tipos INTO v_tipo;
    
    -- Estrutura de repetição 2 (WHILE LOOP)
    WHILE c_tipos%FOUND LOOP
        DBMS_OUTPUT.PUT_LINE('Plantação: ' || v_tipo);
        FETCH c_tipos INTO v_tipo;
    END LOOP;
    
    CLOSE c_tipos;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
/
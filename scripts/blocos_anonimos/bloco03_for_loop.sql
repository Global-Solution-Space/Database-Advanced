DECLARE
    -- Cursor explícito 3
    CURSOR c_props IS SELECT nome FROM propriedade WHERE rownum <= 3;
BEGIN
    -- Estrutura de repetição 1 (FOR LOOP)
    FOR r_prop IN c_props LOOP
        DBMS_OUTPUT.PUT_LINE('Propriedade: ' || r_prop.nome);
    END LOOP;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
/
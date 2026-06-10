DECLARE
    -- Cursor explícito 1
    CURSOR c_prod IS SELECT nome FROM produtor WHERE id_produtor = 1;
    v_nome produtor.nome%TYPE;
BEGIN
    OPEN c_prod;
    FETCH c_prod INTO v_nome;
    
    -- Estrutura Condicional 1
    IF c_prod%FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Produtor encontrado: ' || v_nome);
    ELSE
        DBMS_OUTPUT.PUT_LINE('Nenhum produtor no cursor.');
    END IF;
    
    CLOSE c_prod;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
/
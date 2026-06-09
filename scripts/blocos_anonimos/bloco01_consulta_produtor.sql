DECLARE
    v_nome produtor.nome%TYPE;
BEGIN

    SELECT nome
    INTO v_nome
    FROM produtor
    WHERE id_produtor = 1;

    DBMS_OUTPUT.PUT_LINE(v_nome);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Produtor não encontrado');
END;
/
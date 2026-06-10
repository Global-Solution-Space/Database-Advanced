DECLARE
    v_id NUMBER;
    v_tipo VARCHAR2(30);
    v_contador NUMBER := 1;
BEGIN
    -- Manipulação Tabela: Tabela para Variável
    SELECT NVL(MAX(id_tipo_plant),0)+1 INTO v_id FROM tipo_plantacao;
    v_tipo := 'TRIGO';

    -- Estrutura Condicional 4
    IF v_id > 0 THEN
        -- Estrutura de Repetição 4
        LOOP
            -- Manipulação Tabela: Variável para Tabela (INSERT)
            INSERT INTO tipo_plantacao(id_tipo_plant, tipo_plant)
            VALUES(v_id, v_tipo);
            
            DBMS_OUTPUT.PUT_LINE('Cadastrado: ' || v_tipo);
            v_contador := v_contador + 1;
            EXIT WHEN v_contador > 1;
        END LOOP;
    END IF;

    -- Manipulação Tabela: Variável para Tabela (UPDATE / DELETE)
    SELECT tipo_plant INTO v_tipo FROM tipo_plantacao WHERE id_tipo_plant = v_id;
    UPDATE tipo_plantacao SET tipo_plant = v_tipo || ' (Novo)' WHERE id_tipo_plant = v_id;
    DELETE FROM tipo_plantacao WHERE id_tipo_plant = v_id;
    
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
/
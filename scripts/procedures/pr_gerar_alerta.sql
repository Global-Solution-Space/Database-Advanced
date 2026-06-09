CREATE OR REPLACE PROCEDURE pr_gerar_alerta(
    p_id_talhao NUMBER,
    p_valor NUMBER
)
IS
    v_id NUMBER;
    v_nivel VARCHAR2(20);
    v_existe NUMBER;
BEGIN

    SELECT COUNT(*)
    INTO v_existe
    FROM talhao
    WHERE id_talhao = p_id_talhao;

    IF v_existe = 0 THEN
        RAISE_APPLICATION_ERROR(
            -20010,
            'Talhão não encontrado.'
        );
    END IF;

    SELECT NVL(MAX(id_alerta),0)+1
    INTO v_id
    FROM alerta_agricola;

    IF p_valor < 20 THEN
        v_nivel := 'CRITICO';

    ELSIF p_valor < 40 THEN
        v_nivel := 'ALTO';

    ELSE
        v_nivel := 'NORMAL';
    END IF;

    INSERT INTO alerta_agricola(
        id_alerta,
        titulo,
        descricao,
        nivel_alerta,
        resolvido,
        data_alerta,
        talhao_id_talhao
    )
    VALUES(
        v_id,
        'Alerta Automático',
        'Valor detectado: ' || p_valor,
        v_nivel,
        'N',
        SYSTIMESTAMP,
        p_id_talhao
    );

    DBMS_OUTPUT.PUT_LINE(
        'Alerta criado com sucesso.'
    );

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
/
CREATE OR REPLACE PROCEDURE pr_resolver_alerta(
    p_id_alerta NUMBER
)
IS
    v_existe NUMBER;
BEGIN

    SELECT COUNT(*)
    INTO v_existe
    FROM alerta_agricola
    WHERE id_alerta = p_id_alerta;

    IF v_existe = 0 THEN
        RAISE_APPLICATION_ERROR(
            -20011,
            'Alerta não encontrado.'
        );
    END IF;

    UPDATE alerta_agricola
       SET resolvido = 'S'
     WHERE id_alerta = p_id_alerta;
    DBMS_OUTPUT.PUT_LINE(
        'Alerta resolvido.'
    );

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
/
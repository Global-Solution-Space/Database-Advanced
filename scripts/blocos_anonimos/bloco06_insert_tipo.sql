DECLARE
    v_id NUMBER;
    v_tipo VARCHAR2(30);
BEGIN

    SELECT NVL(MAX(id_tipo_plant),0)+1 INTO v_id FROM tipo_plantacao;

    v_tipo := 'SOJA';

    INSERT INTO tipo_plantacao(
        id_tipo_plant,
        tipo_plant
    )
    VALUES(v_id, v_tipo);

    DBMS_OUTPUT.PUT_LINE(
        'Tipo de plantação cadastrado.'
    );

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
/
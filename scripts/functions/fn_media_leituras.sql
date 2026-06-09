CREATE OR REPLACE FUNCTION fn_media_leituras(
    p_id_talhao NUMBER
)
RETURN NUMBER
IS
    v_media NUMBER;
BEGIN
    SELECT AVG(valor) INTO v_media FROM dado_temporal WHERE talhao_id_talhao = p_id_talhao;

    RETURN NVL(v_media,0);

EXCEPTION
    WHEN OTHERS THEN
        RETURN 0;
END;
/
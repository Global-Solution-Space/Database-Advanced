CREATE OR REPLACE FUNCTION fn_total_alertas(
    p_id_talhao NUMBER
)
RETURN NUMBER
IS
    v_total NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_total FROM alerta_agricola WHERE talhao_id_talhao = p_id_talhao;
    RETURN v_total;
EXCEPTION
    WHEN OTHERS THEN
        RETURN 0;
END;
/
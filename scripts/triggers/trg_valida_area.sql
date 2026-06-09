CREATE OR REPLACE TRIGGER trg_valida_area
BEFORE INSERT OR UPDATE
ON talhao
FOR EACH ROW
BEGIN

    IF :NEW.volum_area <= 0 THEN
        RAISE_APPLICATION_ERROR(
            -20001,
            'Área do talhão inválida.'
        );
    END IF;

END;
/
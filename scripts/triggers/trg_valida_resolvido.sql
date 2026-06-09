CREATE OR REPLACE TRIGGER trg_valida_resolvido
BEFORE INSERT OR UPDATE
ON alerta_agricola
FOR EACH ROW
BEGIN

    IF :NEW.resolvido NOT IN ('S','N') THEN
        RAISE_APPLICATION_ERROR(
            -20002,
            'Campo resolvido deve ser S ou N.'
        );
    END IF;

END;
/
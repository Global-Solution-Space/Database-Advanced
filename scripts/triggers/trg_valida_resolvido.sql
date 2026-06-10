CREATE OR REPLACE TRIGGER trg_valida_resolvido
BEFORE INSERT OR UPDATE
ON alerta_agricola
FOR EACH ROW
BEGIN

    -- Validação de domínio (S ou N)
    IF :NEW.resolvido NOT IN ('S','N') THEN
        RAISE_APPLICATION_ERROR(
            -20002,
            'Campo resolvido deve ser S ou N.'
        );
    END IF;

    -- Validação da Regra de Negócio: Irreversibilidade
    IF UPDATING THEN
        IF :OLD.resolvido = 'S' AND :NEW.resolvido = 'N' THEN
            RAISE_APPLICATION_ERROR(
                -20003,
                'Um alerta já resolvido (S) não pode voltar para pendente (N).'
            );
        END IF;
    END IF;

END;
/
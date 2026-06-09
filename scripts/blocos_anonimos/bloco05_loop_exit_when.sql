DECLARE
    v_ndvi NUMBER := 100;
BEGIN

    LOOP
        v_ndvi := v_ndvi - 15;

        DBMS_OUTPUT.PUT_LINE(
            'NDVI atual: ' || v_ndvi
        );

        EXIT WHEN v_ndvi < 40;
    END LOOP;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
/
CREATE OR REPLACE PROCEDURE IDENTIFIER(
    :p_catalog || '.' || :p_schema || '.crear_tabla
     LANGUAGE SQL
     SQL SECURITY INVOKER
     '
)
AS
BEGIN

    DECLARE v_sql STRING;

    SET v_sql = '
        CREATE OR REPLACE TABLE ' ||
        p_catalog || '.' || p_schema || '.airports_from_proc_parametrized AS
        SELECT * FROM ' ||
        p_catalog || '.' || p_schema || '.airports';

    EXECUTE IMMEDIATE v_sql;

END;
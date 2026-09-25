CREATE OR REPLACE PROCEDURE IDENTIFIER(
    :p_catalog || '.' || :p_schema || '.crear_tabla'
)(
    p_catalog STRING,
    p_schema STRING
)
LANGUAGE SQL
SQL SECURITY INVOKER
AS
BEGIN

    CREATE OR REPLACE TABLE IDENTIFIER(
        p_catalog || '.' || p_schema || '.airports_from_proc_param'
    )
    AS
    SELECT *
    FROM IDENTIFIER(
        p_catalog || '.' || p_schema || '.airports'
    );

END;
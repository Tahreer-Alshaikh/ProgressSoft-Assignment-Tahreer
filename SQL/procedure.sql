--==================================================================================
-- Procedure: p_copy_employee
--==================================================================================

CREATE OR REPLACE PROCEDURE p_copy_employee()
LANGUAGE plpgsql
AS $$
BEGIN
    -- Drop table if it already exists
    DROP TABLE IF EXISTS myemployee_update;

    -- Create new table and copy data from myemployee
    CREATE TABLE myemployee_update AS
    SELECT * FROM myemployee;
END;
$$;


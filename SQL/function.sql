--================================================================================
-- Function: F_HR_QUERY
--================================================================================

CREATE OR REPLACE FUNCTION f_hr_query()
RETURNS TABLE (
    emp_name VARCHAR,
    hire_date DATE
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT 
        (e.first_name || ' ' || e.last_name)::VARCHAR AS emp_name,
        e.hire_date
    FROM myemployee e
    WHERE e.hire_date > (
        SELECT m.hire_date
        FROM myemployee m
        WHERE m.first_name = 'SCOTT'
    );
END;
$$;


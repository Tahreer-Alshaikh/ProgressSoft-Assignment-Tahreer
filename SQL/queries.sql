--=============================================================================
--Employee Information
--=============================================================================

SELECT
e.FIRST_NAME || ' ' || e.LAST_NAME AS Employee_Name,
d.dept_name AS Department_Name,
NULL AS Manager_Name,
g.gender_name AS gender,
u.university_name AS university

FROM MyEmployee e
INNER JOIN MyDepartment d ON e.dept_id = d.dept_id
INNER JOIN Gender g ON e.gender_id = g.gender_id
INNER JOIN university u ON e.university_id = u.university_id;

--=============================================================================

SELECT 
d.dept_name AS job_title,
SUM(e.salary) AS total_monthly_salary

FROM MyEmployee e
INNER JOIN MyDepartment d ON e.dept_id = d.dept_id

WHERE
d.dept_name NOT LIKE 'Sales'

GROUP BY d.dept_name 

HAVING SUM(e.salary)>2500;

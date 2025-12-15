--======================================================================================================
--Sample Data Insert
--======================================================================================================

INSERT INTO MyDepartment VALUES (1, 'IT');
INSERT INTO MyDepartment VALUES (2, 'HR');
INSERT INTO MyDepartment VALUES (3, 'Sales');

INSERT INTO Gender VALUES (1, 'Male');
INSERT INTO Gender VALUES (2, 'Female');


--University
INSERT INTO University VALUES (1, 'Albalqa Applied University');
INSERT INTO University VALUES (2, 'HTU');

--MyEmployee
INSERT INTO MyEmployee (
id, first_name, last_name, hire_date, userid, salary, dept_id, gender_id, university_id, emp_image
)
 VALUES (1, 'Tahreer', 'AlShaikh', '2025-12-13', 200043, 2550, 1, 2, 1, NULL),
        (2, 'Kamal', 'Abdelhadi', '2022-05-10', 900073, 2700, 2, 1, 2, NULL),
        (3, 'SCOTT', 'Sami', '1987-9-9', 20777, 1500, 3, 1, 2, NULL),
        (4, 'Ahmad', 'Salem', '1980-10-10', 7646373, 1700, 3, 1, 2, NULL),
        (5, 'Rami', 'Abed', '1986-5-24', 847703, 2300, 1, 1, 2, NULL);


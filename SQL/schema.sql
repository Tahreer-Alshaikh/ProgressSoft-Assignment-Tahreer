--=============================================================================================
-- Database Schema
--=============================================================================================

DROP TABLE IF EXISTS MyEmployee;
DROP TABLE IF EXISTS MyDepartment;
DROP TABLE IF EXISTS Gender;
DROP TABLE IF EXISTS University;

TRUNCATE TABLE MyEmployee CASCADE;
TRUNCATE TABLE MyDepartment CASCADE;
TRUNCATE TABLE Gender CASCADE;
TRUNCATE TABLE University CASCADE;

-- Department Table
CREATE TABLE MyDepartment (
    Dept_ID NUMERIC PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

-- Gender Table
CREATE TABLE Gender (
    Gender_ID NUMERIC PRIMARY KEY,
    gender_name VARCHAR(50) NOT NULL
);

-- University Table
CREATE TABLE University (
    University_ID NUMERIC PRIMARY KEY,
    university_name VARCHAR(100) NOT NULL
);

-- Employee Table
CREATE TABLE MyEmployee (
    ID NUMERIC PRIMARY KEY,
    FIRST_NAME VARCHAR(20) NOT NULL,
    LAST_NAME VARCHAR(20) NOT NULL,
    HIRE_DATE DATE NOT NULL,
    USERID NUMERIC UNIQUE,
    SALARY NUMERIC CHECK (SALARY > 0),
    Dept_ID NUMERIC,
    University_ID NUMERIC,
    Gender_ID NUMERIC,
    EMP_IMAGE BYTEA,

    CONSTRAINT fk_dept
        FOREIGN KEY (Dept_ID)
        REFERENCES MyDepartment (Dept_ID),

    CONSTRAINT fk_university
        FOREIGN KEY (University_ID)
        REFERENCES University (University_ID),

    CONSTRAINT fk_gender
        FOREIGN KEY (Gender_ID)
        REFERENCES Gender (Gender_ID)
);


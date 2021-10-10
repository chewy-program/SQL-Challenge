-- Drop table if exists
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

-- Create table and view column datatypes
-- List the following details of each employee: employee number, last name, first name, sex, and salary.
CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR
);

COPY departments 
FROM '\data\departments.csv' 
DELIMITER ',' CSV HEADER; 

SELECT * FROM departments;

CREATE TABLE dept_emp (
    emp_no INTEGER,
    dept_no VARCHAR
);
COPY dept_emp
FROM '\data\dept_emp.csv'
DELIMITER ',' CSV HEADER; 

SELECT * FROM dept_emp;

CREATE TABLE dept_manager (
    dept_no VARCHAR,
    emp_no INTEGER
); 

COPY dept_manager
FROM 'data\dept_manager.csv'
DELIMITER ',' CSV HEADER; 

SELECT * FROM dept_manager;

CREATE TABLE employees (
    emp_no SERIAL PRIMARY KEY,
    emp_title_id VARCHAR,
    birth_date VARCHAR,
    first_name VARCHAR,
	last_name VARCHAR,
    sex VARCHAR,
    hire_date DATE
);

COPY employees
FROM 'data\employees.csv'
DELIMITER ',' CSV HEADER; 
SELECT * FROM employees;

CREATE TABLE salaries (
    emp_no SERIAL PRIMARY KEY,
    salary INTEGER 
); 
COPY salaries
FROM 'data\salaries.csv'
DELIMITER ',' CSV HEADER; 

SELECT * FROM salaries;

CREATE TABLE titles (
    title_id VARCHAR, 
    title VARCHAR
); 

COPY titles
FROM 'data\titles.csv'
DELIMITER ',' CSV HEADER;
SELECT * FROM titles;

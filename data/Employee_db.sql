CREATE TABLE employees(
	emp_no INT PRIMARY KEY NOT NULL, 
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL
);

SELECT *FROM employees;

CREATE TABLE dept_manager (
	emp_no INT,
	dept_no VARCHAR  
	
);

SELECT * FROM dept_manager;


CREATE TABLE salaries(
	emp_no INT,
	salary INT
);

SELECT * FROM salaries;

CREATE TABLE departments (
	dept_no VARCHAR,
	dept_name VARCHAR
);

SELECT * FROM departments;

CREATE TABLE titles(
	title_id VARCHAR NOT NULL, 
	title VARCHAR NOT NULL 
);

SELECT * FROM titles;

1.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries
ON employees.emp_no=salaries.emp_no;

2.
SELECT first_name, last_name, hire_date FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';


3.
SELECT employees.emp_no, employees.last_name, employees.first_name, dept_manager.dept_no,departments.dept_name
FROM employees
INNER JOIN dept_manager
ON dept_manager.emp_no=employees.emp_no
INNER JOIN departments
ON departments.dept_no = dept_manager.dept_no;

4.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN dept_manager
ON dept_manager.emp_no=employees.emp_no
INNER JOIN departments
ON departments.dept_no = dept_manager.dept_no;

5.
SELECT first_name,last_name,sex
FROM employees
WHERE first_name LIKE 'Hercules' AND last_name LIKE 'B%';

6. 
SELECT employees.emp_no,employees.last_name,employees.first_name, departments.dept_name
FROM employees
INNER JOIN dept_manager
ON dept_manager.emp_no=employees.emp_no
INNER JOIN departments
ON departments.dept_no = dept_manager.dept_no
WHERE dept_name LIKE 'Sales';

7.
SELECT employees.emp_no,employees.last_name,employees.first_name, departments.dept_name
FROM employees
INNER JOIN dept_manager
ON dept_manager.emp_no=employees.emp_no
INNER JOIN departments
ON departments.dept_no = dept_manager.dept_no
WHERE 	dept_name LIKE 'Sales' OR 
		dept_name LIKE 'Development';

8.
SELECT last_name, COUNT (*) AS CNT
FROM employees
GROUP BY last_name 
ORDER BY CNT DESC; 


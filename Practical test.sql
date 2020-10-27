SELECT * FROM departments;
SELECT first_name, last_name,email, department_name FROM employees;

SELECT first_name "First Name", last_name "Last Name", ROUND  (salary /2, 2) "Forthnightly Pay" FROM employees
WHERE department_id = 80;

SELECT UPPER (last_name) "Last Name", hire_date "Hire Date", salary "Salary" FROM employees 
WHERE department_id IN (20, 60) AND last_name LIKE '%a%';

SELECT * FROM employees WHERE manager_id IS NULL;

SELECT * FROM department_id

SELECT department_id, AVG (salary) "Average" ,
MIN(salary) "Minimum", MAX(salary) "Maximum",
SUM(salary) "Total Salary" FROM employees GROUP BY department_id;

INSERT INTO EMPLOYEES
(
EMPLOYEE_ID,
FIRST_NAME,
LAST_NAME,
EMAIL,
PHONE_NUMBER,
HIRE_DATE,
JOB_ID,
SALARY,
COMMISSION_PCT,
MANAGER_ID,
DEPARTMENT_ID
)
VALUES (
5, -- EMPLOYEE_ID
'Skipper', -- FIRST_NAME
'Raiden', -- LAST_NAME
'SRaiden', -- EMAIL
'737.698.10', -- PHONE_NUMBER
'18-Oct-2019', -- HIRE_DATE
'Sk_R', -- JOB_ID
1500, -- SALARY
.1, -- COMMISSION_PCT
148, -- MANGER_ID
80 -- DEPARTMENT_ID
);

SELECT * FROM employees WHERE employee_id = 5;

/*DML Statements and Transactions*/

INSERT INTO table_name (List_of_columns)
VALUES (List_of_values);

/*Example 1*/
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
10,-- EMPLOYEE_ID
'George', -- FIRST_NAME
'Gordon', --LAST_NAME
'GGORDON', -- EMAIL
'650.506.2222', -- PHONE_NUMBER
'01-JAN-07', -- HIRE_DATE
'SA_REP', -- JOB_ID
9000, -- SALARY
.1, -- COMMISSION_PCT
148, -- MANAGER_ID
80-- DEPARTMENT_ID
);

SELECT * FROM employees WHERE employee_id = 10;


/*Example 2 :  -Omitting null field*/


INSERT INTO EMPLOYEES
 (
EMPLOYEE_ID,
FIRST_NAME,
LAST_NAME,
EMAIL,
PHONE_NUMBER,
HIRE_DATE,
JOB_ID, --Omit SALARY; its value defaults to NULL.
COMMISSION_PCT,
MANAGER_ID,
DEPARTMENT_ID
)
VALUES (
20,--EMPLOYEE_ID
'John',-- FIRST_NAME
'Keats', --LAST_NAME
'JKEATS', --EMAIL
'650.506.3333', --PHONE_NUMBER
'01-JAN-07', --HIRE_DATE
'SA_REP', --JOB_ID
.1, --COMMISSION_PCT
148, -- MANAGER_ID
80 -- DEPARTMENT_ID
);


SELECT * FROM employees WHERE employee_id = 20;

/*Example 3 : */

INSERT INTO EMPLOYEES
 (
EMPLOYEE_ID,
FIRST_NAME, --Omit LAST_NAME (error)
EMAIL,
PHONE_NUMBER,
HIRE_DATE,
JOB_ID,
COMMISSION_PCT,
MANAGER_ID,
DEPARTMENT_ID
)
VALUES (
20, -- EMPLOYEE_ID
'John',-- FIRST_NAME
'JOHN', -- EMAIL
'650.506.3333', -- PHONE_NUMBER
'01-JAN-07', -- HIRE_DATE
'SA_REP',--JOB_ID
.1, --COMMISSION_PCT
148,--MANAGER_ID
80 --DEPARTMENT_ID
);

/*About UPDATE statement*/


UPDATE table_name
SET column_name = value [, column_name = value]...
[ WHERE condition ];

Example :

UPDATE employees
SET commission_pct = commission_pct + 0.05, salary = 14500
WHERE employee_id = 145;

SELECT * FROM employees WHERE department_id = 80;


/*About the DELETE Statement*/

Syntax : 
DELETE FROM table_name [ WHERE condition ];


Example :
DELETE FROM employees WHERE employee_id = 162;

SELECT * FROM employees WHERE department_id = 80;

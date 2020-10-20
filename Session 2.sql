19/10/2020

/*Oracle Database : Selecting Table Data*/

/*To view the schema of the table:*/

DESCRIBE employees;

/*To view all the datas in Employee Table :*/

SELECT * FROM employees;

/*Displaying selected columns*/ 

SELECT first_name , last_name , department_id  FROM employees;

/*Displaying selected columns  under new Headings*/

SELECT first_name as "First Name", last_name "Last Name" , department_id "department Id" FROM employees;


/*Selecting Data that Satisfies the Specified Conditions (WHERE)*/



/*Selecting Data from 1 department :*/

SELECT FIRST_NAME, last_name , department_id 
FROM employees WHERE department_id = 90;

/*Selecting Data for Last Name that Start with the Same subSubstring*/

SELECT first_name as "First Name", last_name "Last Name" FROM employees
WHERE last_name LIKE 'Ma%';


/*Selecting Data that satisfies 2 Conditions:*/

SELECT first_name, last_name, salary, commission_pct "%"
FROM employees WHERE salary >=11000 AND commission_pct IS NOT NULL;

/*Sorting Selected Data*/


/*Sorting Selected data by last_name*/

SELECT first_name, last_name , hire_date
FROM employees ORDER BY last_name;

/*Sorting  Selected data by unselected column*/

SELECT first_name , hire_date
FROM employees ORDER BY last_name;


/*Selecting Data from Multiple Tables*/

/*Selecting data from 2 tables :*/

SELECT e.first_name "First Name", e.last_name "Last Name" , d.department_name "Department Name"
FROM employees e INNER JOIN  departments d  ON (e.department_id = d.department_id);


/*Operators and Function in Queries*/


/*Arithmetic Operators*/

/*Using an Arithmetic Expression in Query*/

SELECT last_name, salary "Monthly Pay" , salary * 12 "Annual Pay" 
FROM employees WHERE department_id = 90 ORDER BY salary DESC;


/*Using Numeric functions*/


/*Rounding Numeric Data (Reference)*/

SELECT last_name, salary "Monthly Pay" , ROUND ( (salary * 12)/365 ,2) "Daily Pay" 
FROM employees WHERE department_id = 100 ORDER BY salary DESC;























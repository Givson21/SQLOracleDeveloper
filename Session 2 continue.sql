/*Using the Concatenation Operator in queries*/

SELECT first_name || ' ' || last_name "Name"
FROM employees;


/*Using Character Functions*/

/*Changing the Case of Character Data*/

SELECT UPPER(last_name) "Last Name",
INITCAP(first_name) "First Name",
LOWER(email) "Email Address"
FROM employees
ORDER BY email;


/*Using DataTime Functions*/

/*Displaying the number of years between Dates*/

SELECT last_name "Last Name",
(EXTRACT(YEAR FROM SYSDATE) - EXTRACT(YEAR FROM hire_date)) "Years Employed"
FROM employees WHERE department_id = 100
ORDER BY "Years Employed" DESC;



/*Displaying System Date and Time*/

SELECT EXTRACT(HOUR FROM SYSTIMESTAMP)  || ':'  ||
EXTRACT(MINUTE FROM SYSTIMESTAMP) || ':' ||
EXTRACT(SECOND FROM SYSTIMESTAMP) || ', ' ||
EXTRACT(DAY FROM SYSTIMESTAMP) ||  '/' ||
EXTRACT(MONTH FROM SYSTIMESTAMP) ||  '/' ||
EXTRACT(YEAR FROM SYSTIMESTAMP)  "My Timestamp"
FROM dual;

/*Using Conversion Functions*/

/*Converting Dates to Characters using format Templates (Format Models)*/

SELECT last_name, hire_date,
TO_CHAR(hire_date,'FMMonth DD YYYY') "date Started"
FROM employees;


/*Converting Characters to Numbers*/

SELECT city, postal_code "Original Postal Code",
TO_NUMBER(postal_code) + 1 "Dummy Postal Code"
FROM locations
WHERE country_id = 'US';


/*Using Aggregate Functions*/

/*Counting the number of employees reporting to the manager (GROUP BY Clause)*/

SELECT manager_id "Manager" ,
COUNT(*) "Number of Employees"
FROM employees
GROUP BY manager_id

/*Filtering Aggregate result using HAVING clause  (Having Clause)*/

SELECT manager_id "Manager" ,
COUNT(*) "Number of Employees"
FROM employees
GROUP BY manager_id
HAVING manager_id = 214;

/*Using Aggregate Functions for statistical information*/

SELECT job_id,
MIN(salary) "Minimum",
MAX(salary) "Maxicum",
AVG(salary) "Average" ,
MEDIAN(salary) "Median",
ROUND(STDDEV(salary),2) "Standard deviation"
FROM employees
GROUP BY job_id;

/*Using Null - Related Functions*/

/*Substituting String  Value for Null Values (Reference)*/
 
SELECT last_name, NVL (TO_CHAR(commission_pct), 'Not Applicable')
FROM employees WHERE last_name LIKE 'B%';


/*Specifying different expressions for NULL and NOT NULL Values*/

SELECT last_name, NVL2(commission_pct ,    salary + salary*commission_pct,   salary )  "Income"
FROM employees
WHERE last_name LIKE 'B%';






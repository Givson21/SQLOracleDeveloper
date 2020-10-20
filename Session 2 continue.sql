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
FROM Dual;

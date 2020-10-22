Select * from regions order by region_id;

INSERT INTO regions (region_id, region_name) VALUES (5, 'Africa');

COMMIT; /*Endsnds the current transaction, makes its changes permanent, erases its savepoints, and releases its locks*/
                /*Committing a transaction makes its changes permanent, erases its savepoints, and releases its locks.*/

SELECT * FROM regions ORDER BY region_id;

SELECT * FROM regions ORDER BY region_id;

UPDATE regions SET region_name = 'Middle East' WHERE region_id = 4;

ROLLBACK; /*Rolls back (undoes) either the entire current transaction or only the changes made after the specified savepoint*/

SELECT * FROM regions ORDER BY region_id;

SELECT country_name, country_id, region_id FROM countries WHERE region_id = 4 ORDER BY country_name;

SELECT country_name, country_id, region_id FROM countries WHERE region_id = 5 ORDER By country_name;

UPDATE regions SET region_name = 'Middle East' WHERE region_id = 4;

UPDATE countries SET region_id = 5 WHERE country_id = 'ZM';
SAVEPOINT Zambia;

UPDATE countries SET region_id = 5 WHERE country_id = 'NG';
SAVEPOINT Nigeria;

UPDATE countries SET region_id = 5 WHERE country_id = 'ZW';
SAVEPOINT Zimbabwe;

UPDATE countries SET region_id = 5 WHERE country_id = 'EG';
SAVEPOINT Egypt;

ROLLBACK to SAVEPOINT Nigeria;

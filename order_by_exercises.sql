USE employees;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%';

SELECT * FROM employees WHERE hire_date LIKE '199%';

SELECT * FROM employees WHERE birth_date LIKE '%12-25';

SELECT last_name
FROM employees
WHERE last_name LIKE '%Q%';

SELECT first_name
FROM employees
WHERE (first_name = 'Irena' OR
       first_name = 'Vidya' OR
       first_name = 'Maya')
    AND gender = 'M';

SELECT last_name
FROM employees
WHERE (last_name LIKE 'E%' OR
       last_name LIKE '%E');

SELECT last_name
FROM employees
WHERE (last_name LIKE 'E%' AND
       last_name LIKE '%E');

SELECT *
FROM employees
WHERE (hire_date LIKE '199%' AND
       birth_date LIKE '%12-25');

SELECT last_name
FROM employees
WHERE (last_name LIKE '%Q%' AND
       last_name NOT LIKE '%QU%');
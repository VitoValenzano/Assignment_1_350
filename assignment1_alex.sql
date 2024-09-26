/*
 * Alex Sterling
 * Team 6
 * CS 350
 * Assignment 1
 * 9/26/2024
 */

-- Question 1

SELECT country_name
FROM countries
WHERE country_name LIKE '%in%' OR country_name LIKE '%In%';

-- Question 4

SELECT e.first_name, e.last_name
FROM employees e
JOIN employees m ON e.manager_id = m.employee_id
WHERE m.first_name = 'Nancy' AND m.last_name = 'Greenberg';

-- Question 7

SELECT d.department_id, AVG(e.salary) AS average_salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_id;

-- Question 10

SELECT COUNT(e1.employee_id) AS num_employees
FROM employees e1
JOIN departments d1 ON e1.department_id = d1.department_id
JOIN employees e2 ON e2.employee_id = e1.manager_id
JOIN departments d2 ON e2.department_id = d2.department_id
WHERE d1.department_name = 'IT'
AND d2.department_name = 'Shipping'
AND e1.salary > e2.salary;

-- Question 13

SELECT country_name
FROM countries
WHERE region_id = 4
INTERSECT
SELECT country_name
FROM countries
WHERE country_name LIKE 'Z%';
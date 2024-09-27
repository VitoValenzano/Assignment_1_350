/* Author: Sean Lacson Lee */
/* Problem 3 Solution */
SELECT e.first_name, e.last_name
FROM employees e
WHERE e.job_id IN (
    SELECT j.job_id
    FROM jobs j
    WHERE j.job_title LIKE '%Manager%');



/* Problem 6 Solution */
SELECT AVG(e.salary) AS average_salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
JOIN countries c ON l.country_id = c.country_id
WHERE c.country_name = 'Germany';



/* Problem 9 Solution */
SELECT SUM(e.salary) AS total_salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE d.department_name = 'Finance';



/* Problem 12 Solution */
SELECT e.employee_id, e.last_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
JOIN countries c ON l.country_id = c.country_id
WHERE e.salary > 9000 OR c.country_name = 'Germany';

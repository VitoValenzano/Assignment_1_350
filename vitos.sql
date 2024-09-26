/*
 * Author: Vito Valenzano
 * Team 6
 * CS 350
 * Assignment 1
 * 9/26/2024
*/

/* Problem 2 Solution */
select region_id, 
count (*) as num_countries
from countries
group by region_id;

/* Problem 5 Solution */
select first_name, last_name 
from employees 
	where salary > (select salary from employees where first_name = 'Luis' and last_name = 'Popp') 
	and salary < (select salary from employees where first_name = 'Alexander' and last_name = 'Hunold');

/* Problem 8 Solution */
select min_salary, max_salary
from jobs
    where job_title = 'Programmer';

/* Problem 11 Solution */
select employee_id, first_name, last_name 
from employees
except
select employee_id, first_name, last_name
from employees
	where manager_id = (select employee_id from employees where first_name = 'Nancy' and last_name = 'Greenberg');


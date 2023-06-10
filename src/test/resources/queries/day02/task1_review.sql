select * FROM employees;
-- From employees, display all information where job title President, Sales Manager, Finance Manager
select * from JOBS
where JOB_TITLE = 'Sales Manager' or JOB_TITLE = 'President' or JOB_TITLE = 'Finance Manager';

-- Or this querry which will do the same thing as one above
select * from JOBS
where JOB_TITLE IN ('Sales Manager', 'President','Finance Manager');

--Display all Department from departments table  that does not have manager_id in department table
SELECT  * from DEPARTMENTS
where MANAGER_ID IS NULL;

--Display all locations in US or UK from Locations table
SELECT * from LOCATIONS
where COUNTRY_ID in ('US','UK');

--Display all locations NOT in US or UK from Locations table
SELECT * from LOCATIONS
where COUNTRY_ID NOT in ('US','UK');

--Display all countries in Region_ID of 1 and country name not Belgium
SELECT  * from COUNTRIES
where REGION_ID = 1 AND country_name != 'Belgium';

-- OR we can write it with this syntax -- to replace the !=
SELECT  * from COUNTRIES
where REGION_ID = 1 AND country_name <> 'Belgium';

-- OR we can write it this way
SELECT  * from COUNTRIES
where REGION_ID = 1 AND COUNTRY_NAME NOT IN 'Belgium';

--display all employees who does not work in any of these departments (90,60.100,130,120)
SELECT * from EMPLOYEES
where EMPLOYEE_ID NOT IN (90,60,100,130,120);

----------------------------------------------------------

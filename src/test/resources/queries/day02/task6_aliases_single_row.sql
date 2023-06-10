select * from employees;

/*
ALIASES
This helps us to rename out column names in out query result using ___as ""____keyword
Ex:
select first_name as given_name from employees;
 */
select first_name as given_name from employees;
select first_name as "Given Name" from employees;

--Display annual salary for all employees as annual salary column
--salary * 12
select FIRST_NAME, SALARY * 12 as "Annual Salary" From EMPLOYEES;

--SINGLE ROW FUNCTION
--CONCAT
--In java: first_name + " " + last_name
--In SQL:  first_name + || " " || + last_name

--Task: Add email to @gmail.com domain and display as full_email
select EMAIL || '@gmail.com' as full_email from EMPLOYEES;
select EMAIL || '@gmail.com' as "Full Email" from EMPLOYEES;

--Or this way we can concatenate
select concat(EMAIL, '@gmail.com') as "FULL EMAIL" from EMPLOYEES;

--Lower
select lower(EMAIL|| 'gmail.com') as FULL_EMAIL from EMPLOYEES;

--Upper
select UPPER(EMAIL|| 'gmail.com') as FULL_EMAIL from EMPLOYEES;

--Initcap - first letter Upper case
select EMAIL from EMPLOYEES;
select initcap(EMAIL) from EMPLOYEES;

--LENGTH - Display the length of the email
select EMAIL, length(EMAIL) from EMPLOYEES
order by LENGTH(EMAIL) desc;

--Display all the employees first_name and order by based on length of firstname
select FIRST_NAME, length(FIRST_NAME) from EMPLOYEES
order by length(FIRST_NAME);

--Substring (columnName, beginIndex, NumOfChar)
--Display all the employees first_name
select FIRST_NAME from EMPLOYEES;

select FIRST_NAME, substr(FIRST_NAME, 1, 4) from EMPLOYEES; --1 and 0 is the 1st one in SQL

--Display all initials from employees
select substr(FIRST_NAME, 0, 1) || '.' || substr(LAST_NAME,0,1)  as INITIALS from EMPLOYEES;

--Display all the employees first_name with 6 characters
select FIRST_NAME from EMPLOYEES
    where FIRST_NAME LIKE '______';

--the proper way would be
select FIRST_NAME from EMPLOYEES
where length(FIRST_NAME) = 3;
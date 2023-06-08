select * from employees;

/*
 -it allows to sort data based on provided column name
 -as a default it sorts in ascending order(0-9, a-z)
 */

 --Display all information based on who is making more salary to low salary (from highest to lowest)
select * from EMPLOYEES
order by SALARY desc;

--from employees, display all information based on who is making low salary to high salary (from lowest to highest)
select * from EMPLOYEES
order by SALARY; --by default order by sorts it in ascending order

--or
select * from EMPLOYEES
order by SALARY asc;

select * from EMPLOYEES
order by 8 desc; --instead of column name we can give the index of the column and indexes start from 1

--How about if you want to see only email address but salary column as it is ordered by in asc
select EMAIL, SALARY from EMPLOYEES
order by SALARY desc;

--Display all information from employees where employee id < 10 based on first name in alphabethical order
select * from EMPLOYEES
where EMPLOYEE_ID < 10
order by FIRST_NAME;

--Display all information from employees based on first name ascending and last name descending
select * from EMPLOYEES
order by FIRST_NAME, LAST_NAME desc;

select * from EMPLOYEES
order by FIRST_NAME asc, LAST_NAME desc;


select * from employees;
/*
  SUBQUERY
    similar to nested ifs, loops and etc.
 */

-- Display all information from employees who is making highest salary in company ?
select max(SALARY)from EMPLOYEES; --24000

select * from EMPLOYEES
where SALARY = 24000;

--To make it dynamic, we can use subquery. Why do I need it to be dynamic? Because the new data may get injected imto database
select *
from EMPLOYEES
where SALARY = (select max(SALARY) from EMPLOYEES);

--We can sort and see who is at the top just to make sure.
select *from EMPLOYEES
order by SALARY desc;

--find the 2nd max
select max(SALARY)from EMPLOYEES
where SALARY < 24000;

--Make it dynamic
select max(SALARY)from EMPLOYEES
where SALARY < (select max(SALARY) from EMPLOYEES);

--Display all informtion for second highest
select * from EMPLOYEES
where SALARY = 17000;

--Make it dynamic
select * from EMPLOYEES
where SALARY = (select max(SALARY) from EMPLOYEES
                where SALARY < (select max(SALARY) from EMPLOYEES));

--Display all the employees who are making above the average
select ROUND(avg(SALARY),2) from EMPLOYEES;

--To make dynamic: get all employees who are making more than average
select * from EMPLOYEES
where SALARY > (select ROUND(avg(SALARY), 2) from EMPLOYEES);
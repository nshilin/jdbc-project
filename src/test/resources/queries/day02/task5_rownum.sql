select * from employees;

/*
    ROWNUM
        It limits the number of row result displayed in the query
        Only works withe < or <=
        MySQL and PostGRES uses LIMIT keyword instead of ROWNUM and LIMIT comes after the statement.
 */

select * from EMPLOYEES
order by SALARY desc;

--display first 5 highest salary employees information in the company
--BAD practice because the following query splits/LIMITS the table and than sorts
select * from EMPLOYEES
where ROWNUM < 6
order by SALARY desc;

--Correct one would be
select * from (select * from EMPLOYEES order by SALARY desc)
where ROWNUM < 6;

--display first 52 highest salary employees information in the company
select * from (select * from EMPLOYEES order by SALARY desc)
where ROWNUM < 53;

--With salary duplicate - still NOT a good practice
--display first 5 highest salary employees information in the company
select min(salary) from (select * from EMPLOYEES order by SALARY desc)
where ROWNUM < 6; --13500

select * from EMPLOYEES
where SALARY = 13500;

--to make it dynamic
select * from EMPLOYEES
where SALARY = (select min(SALARY) from (select * from EMPLOYEES order by SALARY desc)
                                   where ROWNUM < 6);

--GOOD PRACTICE - we need to remove the duplicates and then split/limit the table  then get the min salary
select distinct SALARY from EMPLOYEES
order by SALARY desc;

select min(SALARY) from (select distinct SALARY from EMPLOYEES
                         order by SALARY desc)
where ROWNUM < 6;

-- find all information for 5th highest salary
select  * from EMPLOYEES
where salary = 13000;

--TO make it dynamic
select  * from EMPLOYEES
where salary = (select min(SALARY) from (select distinct SALARY from EMPLOYEES
                                   order by SALARY desc)
                                   where ROWNUM < 6);

--display all information from employees who is making the 52nd highest salary
select  * from EMPLOYEES
where salary = (select min(SALARY) from (select distinct SALARY from EMPLOYEES
                                         order by SALARY desc)
                where ROWNUM < 53);
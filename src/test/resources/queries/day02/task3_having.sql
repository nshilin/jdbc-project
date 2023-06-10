select * from employees;
/*

 */


select JOB_ID, SALARY from EMPLOYEES;

--BAD practice
select JOB_ID, AVG(SALARY), count(*) from EMPLOYEES
where SALARY > 5000
group by JOB_ID;

--Good practice
select JOB_ID, avg(SALARY), count(*) from EMPLOYEES
group by JOB_ID
having avg(SALARY) > 5000;

--Display department_id where employees count biger than 5
select DEPARTMENT_ID, count(*) from EMPLOYEES
group by DEPARTMENT_ID
having count(*) > 5;

--IQ: Display duplicates names in employee table
select FIRST_NAME, count(*) from EMPLOYEES
group by FIRST_NAME
having count(*)>1;

--To give a name to the average column name we us ______ as "HELLO"_____
select * from EMPLOYEES;

select JOB_ID, avg(SALARY) as "AVERAGE SALARY" from EMPLOYEES
where JOB_ID IN ('IT_PROG', 'SA_REP')
group by JOB_ID;
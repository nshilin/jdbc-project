select * from employees;


select DISTINCT JOB_ID from EMPLOYEES;

--Display average salary for "IT_PROG" -- Interview Question
select SALARY, JOB_ID from EMPLOYEES;

select SALARY from EMPLOYEES
where JOB_ID = 'IT_PROG';

select AVG(SALARY) from EMPLOYEES
where JOB_ID= 'IT_PROG';

select AVG(SALARY) from EMPLOYEES
where JOB_ID= 'SA_REP';

--Now, when you see each 'tricky word' on the requirement that means 'group by'

--get me each job_id MIN salary
--Display average salary for each job ID

--1 step - I took all the job id's and grouped them together
select JOB_ID from EMPLOYEES;

select JOB_ID from EMPLOYEES
group by JOB_ID;

--2 step
select JOB_ID, AVG(SALARY) FROM EMPLOYEES
group by JOB_ID;

--chaining and making a data table.
select JOB_ID, AVG(SALARY), min(SALARY), max(SALARY), sum(SALARY), count(*) FROM EMPLOYEES
group by JOB_ID;

--Display sum of salary for each department in Employees table
select sum(SALARY) from EMPLOYEES
group by JOB_ID;

--Find the highest salary (practice) for each department in Employees table
select max(SALARY), DEPARTMENT_ID from EMPLOYEES
group by DEPARTMENT_ID;


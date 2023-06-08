select *from EMPLOYEES;

--IN works as or logic
select * from EMPLOYEES
where JOB_ID In ('IT_PROG','SA_REP');

--from employees, get all info whose job id is NOT 'IT_PROG','SA_REP'
select * from EMPLOYEES
where JOB_ID NOT In ('IT_PROG','SA_REP');

--from location, Display city of where country id IT, US, UK
select CITY from LOCATIONS
where COUNTRY_ID IN ('IT','US','UK');

--From employees, display all information where employee_id 134, 123, 145,146
select * from EMPLOYEES
where EMPLOYEE_ID in (134, 123, 145,146);

--From employees, display all information whose department id is NULL
select * from EMPLOYEES
where DEPARTMENT_ID is NULL;

--From employees, display all information whose department id is NOT NULL
select * from EMPLOYEES
where DEPARTMENT_ID is NOT NULL;
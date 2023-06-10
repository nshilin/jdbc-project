select * from employees;
/*
 CREATE VIEW as NameOfView - generate virtual table and saves it under the view folder in database
 */
CREATE VIEW SDET AS
select substr(FIRST_NAME, 0, 1) || '.' || substr(LAST_NAME,0,1) as INITIALS,
       FIRST_NAME || 'makes' || SALARY as "Employees Salary"
from EMPLOYEES;

select * from SDET;
select INITIALS from SDET;
select "Employees Salary" from SDET;

drop view SDET;


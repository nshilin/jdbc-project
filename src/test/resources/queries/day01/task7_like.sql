select * from EMPLOYEES;
/*
 LIKE
 it works with the same logic from String class for the following methods
 startWith
 endWith
 contains

 % - any sequence of character after that
 -this technique is called pattern matching
 */

--Display all employees whose firstname startswith B
select * from EMPLOYEES
where FIRST_NAME like 'B%';

--Display all employees whose firstname startswith B and has 5 characters in total
select * from EMPLOYEES
where FIRST_NAME like 'B____';

--Display 5 letters names where the middle char is z
select * from EMPLOYEES
where FIRST_NAME like '__z__';

--Display first names where anywhere in the middle we have character z
select * from EMPLOYEES
where FIRST_NAME like '%z%';

--Display all records/info whose last have 5 letters
select * from EMPLOYEES
where FIRST_NAME like '_____';

--Display first names where 2nd char is a
select * from EMPLOYEES
where FIRST_NAME like '_a%';

--Display all employees whose firstname ends with l
select * from EMPLOYEES
where LAST_NAME like '%l';

-- from jobs, Display any job information with Job_title ends with manager
select * from JOBS
where JOB_TITLE like '%Manager';
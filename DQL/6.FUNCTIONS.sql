--MULTI ROW FUNCTIONS => max(), min(), count(),sum(), avg()

--WAQTD The maximum salary given to the employee.
select max(sal)from emp;

--WAQTD the maximum salary and minimum salary given in employee table .
select max(sal), min(sal) from emp;

--WAQTD the sum of the salary given to all the salesman .
select sum (sal) 
from emp
where job = 'SALESMAN';

--WAQTD the total salary and average salary given to all the employee except president.
select sum (sal), avg(sal) 
from emp
where job != 'PRESIDENT';

--WAQTD the number of employee who are not working as manager and clerk. 
select count(*)
from emp
where job not in ('MANAGER','CLERK');

--WAQTD total salary given to analyst and manager if they belong to department 10 or 20.
select sum (sal) 
from emp
where job in ('ANALYST', 'MANAGER') AND
	deptno in (10,20);
 
--WAQTD total salary, max salary and minimum Commission given to all the employees if there name does not start with 'S' and does not ends with 'A'. 
select sum(sal), max(sal), min(comm)
from emp
where ename not like 'S%' and ename not like '%A';

--WAQTD number of jobs present in employee table. 
select count(distinct job)
from emp;

--WAQTD first hired hiredate of employee from emp table. 
select min(hiredate)
from emp



--SINGLE ROW FUNCTIONS => 
--general functions: nvl(),
--case conversion functions: upper(), lower(), initcap(), 
--character functions: CONCAT, LENGTH, SUBSTR, INSTR, LPAD, RPAD, TRIM and REPLACE
--date functions : MONTHS_BETWEEN, ADD_MONTHS, NEXT_DAY, LAST_DAY, ROUND and TRUNC.
--reverse(),  concat() , sysdate, current_date, systimestamp, to_date, to_char, etc.

--upper()
select upper('language')
from dual;

--lower()
select lower('LANGUAGE')
from dual;

--initcap()
select initcap('she sings well')
from dual;

--reverse()
select reverse('sings well')
from dual;

--length()
select length('LANGUAGE')
from dual;

--mod(m,n)
select mod(7,2)
from dual;

--concat()
concat('Mr.' ,concat(ename, concat('your salary is', sal)))
from emp;


--substring()

--WAQTD the details of the details of employee if the employee name starting with S using substring .
select *
from emp
where substr(ename, 1, 1) = 'S';

--WAQTD name, salary from employee table if the employee name ends with R. 
select *
from emp
where substr(ename, -1, 1) = 'R';

--WAQTD the details of employee whose name starts with vowels. 
select *
from emp
where substr(ename, 1, 1) in ('A','E', 'I', 'O', 'U');

--WAQTD the employee name, hiredate and salary if they were hired in the year 81. 
select ename, hiredate, sal
from emp
where substr(hiredate, -2,2) = 81;

--WAQTD the employee name in lowercase. 
select lower(ename) from emp;

--WAQTD the first half of the employee name from employee table. 
select substr(ename,1,length(ename)/2)
from emp;

--WAQTD the first half of the name in lower case and second half of the name in reverse uppercase. 
select lower(substr(ename,1,length(ename)/2)) || upper(reverse(substr(ename, length(ename)/2)+1)))
from emp;

--WAQTD details along with annual salary of employee if the employee are getting 5 digits of annual salary. 
select emp.*, sal*12
from emp
where length(sal*12) =5;



--REPLACE()

--WAQTD the details of employee if the employee name has at least one A in it using replace function. 
select *
from emp
where length(ename)- length(replace(ename, 'A'))>0;

--WAQTD the details of employee if the employee name has at least 2A in it. 
select *
from emp
where length(ename)- length(replace(ename, 'A'))>1;

--WAQTD the details of employee if the employee name consists of exactly one A. 
select *
from emp
where length(ename)- length(replace(ename, 'A')) =1;



--INSTR() 

--WAQTD the details of employee if the employee name contains more than one A in it using instr function. 
select *
from emp
where instr(ename, 'A',1,2)>1;

--WAQTD the details of employee if the employee name contains exactly one a in it.
select *
from emp
where instr(ename, 'A',1,1)>0 and instr(ename, 1, 2) =0;


--sysdate
select sysdate from dual;

--current_date
select current_date from dual;

--systimestamp
select systimestamp from dual;

--to_date
select to_date('21-JUN-23')-SYSDATE
from dual;

--to_char

--WAQTD Details of employee if the employee were hired in your 81. 
select * 
from emp
where to_char(hiredate, 'yy')=81;

--WAQTD the employee name, hiredate and salary if the employee was hired during the month of November, or January.
select ename, hiredate, sqal
from emp
where to_char(hiredate, 'MM' ) in (1,11,12);
 
--WAQTD the details of employee if the employee hired on Sunday Tuesday or friday. 
select *
from emp
where to_char(hiredate, 'D') in (1,3,6);

--WAQTD the details of employee if the employee was hired on the leap year. 
select *
from emp
where mod(to_char(hiredate,YY), 4)=0;



--NVL FUNCTIONS 

--WAQTD employee name and salary added with commission from employee table. 
select ename, nvl(sal,0)+ nvl(comm,0)
from emp;

--WAQTD maximum salary given to all the employees in each department. 
select max(sal)
from emp
group by deptno;

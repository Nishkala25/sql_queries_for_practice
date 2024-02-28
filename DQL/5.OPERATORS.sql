--LOGICAL OPERATOR   *and  *or

--WAQTD EmpName, job and salary if the emp working as a manager and getting salary more than 2500.
select ename, job, sal
from emp
where job = "MANAGER" and sal>2500;

--WAQTD EmpName, job and deptno if the emp working in deptno 10 or 30 as 'PRESIDENT'.
select ename, job, deptno
from emp
where (deptno=10 or deptno=30) and job = "PRESIDENT"

--WAQTD details of an employee if the emp getting salary more than 1250 but less than 3000.
select *
from emp
where sal>1250 and sal<3000

--WAQTD details of an emp if the emp getting commission as 0 or 500 in dept no 30 or 20.
select *
from emp
where (comm=0 or comm=500) and (deptno=30 or deptno =20);

--WAQTD empname, job and hiredate except 'PRESIDENT' if they were hired after 82.
select ename, job, hiredate
from emp
where job!='PRESIDENT' and hiredate >'31-DEC-82'

--WAQTD details of an emp if they were hired during the year 81.
select * 
from emp
where hiredate>='01-JAN-81' and hiredate<='31-DEC-81';

--WAQTD details of an emp if they were not hired during the year 82.
select * 
from emp
where hiredate<'01-JAN-82' or hiredate>'31-DEC-82';

--use 'or'  except range

--WAQTD empname and salary given to all the emps if they are getting salary more than 2000 but less than 5000.
select ename, sal 
from emp
where sal>2000 and sal<5000;

--WAQTD details of an emp except who were getting salary between 2000 and 3000.
select * 
from emp
where sal>2000 or sal<3000;

--WAQTD empname, job, deptno and salary given to all the emps if the emp were working as a analyst or manager or clerk in dept no 10 or 20 or 30 from emp table.
select ename,job, deptno, sal
from emp
where(job = 'ANALYST' or job='MANAGER' or job = 'CLERK') and (deptno =10 or deptno =20 or deptno =30);
--can be simplified using IN operator:
select ename, job, deptno, sal
from emp
where job in ('ANALYST', 'MANAGER', 'CLERK') and deptno in(10,20,30);



--IN OPERATOR

--WAQTD details of an emp if they are working in dept no 10 or 20 or 30 or 40.
select * 
from emp
where deptno in (10,20,30,40);

--WAQTD empname,job and deptno if the emp working in deptno 30 or 40 as a manager or salesman.
select *
from emp
where deptno in (30,40) and job in ('MANAGER', 'SALESMAN');

--WAQTD empname,sal, job and deptno if the emp working in deptno 10 or 20 and getting salary 1250 or 3000 or 1300 except 'PRESIDENT' or 'MANAGER' OR 'SALESMAN'.
select ename, sal, job, deptno
from emp
where deptno in (10,20) and
	sal in (1250,3000,1300) and
	job not in ('PRESIDENT','MANAGER','SALESMAN');



--NOT IN OPERATOR

--WAQTD details of an emp who were working in dept no 10 or 20 except who were getting salary 3000, 800,1250.
select *
from emp
where deptno in (10,20) and
	sal not in(3000,800,1250);

--WAQTD details of an employee along with annual salary except who were working as a salesman, clerk and manager.
select emp.*, sal*12 as annual_salary
from emp
where job not in( 'SALESMAN','CLERK','MANAGER');

--WAQTD details of an employee if the emp getting salary more than or equal to 1250 and less than or equal to 3000.
select *
from emp
where sal >=1250 and sal<=3000;
--or
select * from emp
where sal between 1250 and 3000;



--BETWEEN OPERATOR


--WAQTD  emp name, job and commission given to all the salesman or analyst if they are getting commission between 300 and 1400.
select ename, job, comm
from emp
where job in ('SALESMAN', 'ANALYAT') and 
	comm between 300 and 1400;

--WAQTD empname and hiredate if they were hired during the year 1981.
select ename, hiredate
from emp
where hiredate between '01-JAN-81' and '31-DEC-81';

--WAQTD details of an emp along with annual salary if the emp getting salary more than 1250 but less than 2500.
select emp.*, sal*12 as annual_salary
from emp
where sal between 1251 and 1249;

--WAQTD empno, ename, sal, hiredate if the emp hired during the year 82 and getting salary between 800 and 3000.
empno, ename, sal, hiredate 
from emp
where hiredate between '01-JAN-82' and '31-DEC-82' and
	sal between 800 and 3000;

--WAQTD details of an emp except who were getting commission between 300 and 1300.
select *
from emp
where comm not between 300 and 1300;



--NOT BETWEEN OPERATOR

--WAQTD details of an emp who were getting salary between 1250 and 2500 except king and martin in deptno 30,40.
select *
from emp
where sal between 1250 and 2500 and
	ename not in ('KING', 'MARTIN') and
	deptno in (30,40);

--WAQTD empname and hiredate except who were hired duringthe year 1981.
select ename, hiredate
from emp
where hiredate not between '01-JAN-81' and '31-DEC-81';

--WAQTD empname and comm given to all the employees who were getting commission more than 0 but less than or equal to 1400.
select ename, comm
from emp
where comm between 1 and 1400;

--WAQTD details of an emp if the emp getting commission.
select * 
from emp
where comm is not null;



--IS OPERATOR

--WAQTD details off an employee if they were working as a salesman and getting Commission.
select *
from emp
where job = 'SALESMAN' and
	comm is not null;

--WAQTD details of an employee if the employee name is Smith
select *
from emp
where ename = 'SMITH';

--WAQTD Details of an employee if the employee working as a salesman or analyst and getting a salary between 1500 and 3000 except president and clerk.
select *
from emp
where job in ('SALESMAN', 'ANALYST') and
	sal between 1500 and 3000 and
	job not in ('PRESIDENT', 'CLERK');

--WAQTD emp name, job, salary if the employee working in Deptno 10, 20 and higher during 81 and they are not getting any commission.
select ename, job, sal
from emp
where deptno in (10,20) and
	hiredate between '01-JAN-81' and '31-DEC-81' and
	comm is null;

--WAQTD details of employee if the employee name is king.
select *
from emp
where ename = 'KING';

--WAQTD employee name and job if the employee name starts with M.
select ename, job
from emp
where ename like 'M%';



--LIKE OPERATOR

--WAQTD Details of an employee where ename ends with 'R'. 
select *
from emp
where ename like '%R';

--WAQTD emp name, job, sal if the employee job ends with 'man' .
select * 
from emp
where job like '%MAN';

--WAQTD details of an employee where employee name starts with 'S' or 'M'.
select *
from emp
where ename like 'S%' or
	ename like 'M%';

--WAQTD employee name, job and hiredate if the job starts with 'MAN or ends with 'MAN' 
select *
from emp
where job like 'MAN%' or
	job like '%MAN';

--WAQTD details of an employee if the employee getting three digit salary.
select * from emp where sal LIKE '___';
--or
select * from emp where sal>99 and sal<1000;
--or
select * from emp where sal between 100 and 999;

--WAQTD details of an employee if the employee getting 4 digit salary and employee name second last character must be 'I'. 
select * from emp
where sal like '____' and 
	ename like '%I';

--WAQTD details of an employee along with annual salary if the employee name starts with 'S' or'M' and annual salary ends with zero. 
select emp.*, sal*12 as annual_salary
from emp
where ename like 'S%' or ename like '%M' and
	sal*12 like '%0';

--WAQTD employee name and hiredate if the employee higher during the year 81. 
select *
from emp
where sal like '%81';

--WAQTD employee name, hiredate if the employee hired in the month of Jan and nov. 
select *
from emp
where hiredate like '%JAN%' or hiredate like '%NOV%';

--WAQTD details of an employee if they were hired on 21 or 22 date.
select *
from emp
where hiredate like '21%' or hiredate like '22%';

--WAQTD details of an employee if the job contains at least two 'A'. 
select *
from emp
where ename like '%A%A%';



--ESCAPE


--WAQTD details of an employee if the employee name contains % in it from demo table.
select *
from demo
where ename like '%!%%' ESCAPE '!';

--WAQTD details of an employee if the employee name contains '_' in it from demo table.
select * 
from demo
where ename like '%!_%' ESCAPE '!';

--WAQTD details of an employee if the employee name contains at least two % in it.
select *
from demo
where name like '%@%@%%' ESCAPE '@';
 
--WAQTD details of an employee if the employee job last character must be '_' from demo. 
select *
from demo
where job like '%@_' ESCAPE '@';


--NOT LIKE OPERATOR


--WAQTD names of employee whose name start with 'M' or 'B'; 
select ename
from emp
where ename not like 'M%' and 
	ename not like 'B%';

--WAQTD the names of employee whose name does not start with M or B but ends with H or T. 
select ename
from emp
where ename not like 'M%' and ename not like 'B%' and 
	ename like '%H' or ename like '%T';



--CONCATENATION OPERATOR ||


--WAQTD the employee name and salary of employee in the below format    ex: Mr Smith, your salary is $800
select "Mr." || ename || ", your salary is $" || sal
from emp;














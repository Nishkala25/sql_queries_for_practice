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

--

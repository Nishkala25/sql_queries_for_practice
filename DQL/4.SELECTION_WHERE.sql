--WAQTD details of Nayan.
select *
from emp
where ename = "Nayan";

--WAQTD names of the emp if the emp working as manager.
select ename
from emp
where job = "Manager";

--WAQTD the details of employee if the emp getting salary more than 1500
select * 
from emp
where sal>1500;

--WAQTD the names of emp, annual salary if the emp getting salary more than 10000
select ename , sal*12
from emp
where (sal*12)>10000;

--WAQTD the names of the emp, job and hiredate if the emp joined after the year 81
select ename, job, hiredate
from emp
where hiredate > '31-Dec-81';

--WAQTD the names of the emp, job and hiredate if the emp joined before the year 81
select ename, job, hiredate
from emp
where hiredate < '31-Dec-81';


--WAQTD the names of the emp, job and hiredate if the emp joined during the year 81
select ename, job, hiredate
from emp
where hiredate > '31-Dec-80' and hiredate < '01-Jan-82' ;

--WAQTD emp name and salary given to all the emp's if the emp getting commission 0.
select ename, sal
from emp
where comm = 0;

--WAQTD details of the emp along with annual salary if the emp getting annual salary more than 20000.
select emp.*, sal*12 as annual_salary
from emp
where (sal*12)>20000;

--WAQTD emp name job and dept no if the emp working as a clerk in dept no 20.
select ename, job, deptno
from emp
where job = "CLERK" and deptno = 20;

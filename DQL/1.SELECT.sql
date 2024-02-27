-- WAQTD Names of an emp from emp table.
	select ename from emp;

-- WAQTD Name and Salary given to all employee.
	select ename, sal from emp

-- WAQTD Details of emp.
	select * from emp;

--WAQTD empname and salary with 10% hike from emp table
	select ename, sal+(sal*(10/100))
	from emp;
--                       or
	select ename, sal*1.10
	from emp;

--WAQTD empname, job, hiredate and salary with 25% hike from emp table.
	select ename, job, hiredate, sal+(sal*(23/100))
	from emp;

--WAQTD empname, job, sal, hiredate and annual salary with 15% hike.
	select ename, job, sal, hiredate, (sal*12)+((sal*12)*(15/100))
	from emp;

--WAQTD empname, job, monthly salary, annual sal and half term salary
	select ename, job, sal, (sal*12), (sal*6)
	from emp;

--WAQTD empname, hiredate and salary with 14% deduction.
	select ename hiredate, sal-(sal*(14/100))
	from emp;

--WAQTD Empname, Job, hiredate, Salary and Annual Salary with 10% hike along with commission with 5% deduction.
	select ename,job, hiredate,sal, (sal*12)+((sal*12)*10/100), comm-(comm *5/100)
	from emp;

--WAQTD empname, job, salary with 300rs incentives.
	select ename, job, sal+300
	from emp;

--WAQTD all the emp name, job, hiredate and annual salary with 500rs bonus.
	select ename, job, hiredate, (sal*12)+500
	from emp;

--WAQTD all the emp's details with annual salary.
	select emp.*, sal*12
	from emp
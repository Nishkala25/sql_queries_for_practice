--WAQTD emp name, job, hiredate as date_of_joining and job as designation.
	select ename, hiredate as date_of_joining, job as designation
	from emp;

--WAQTD emp name, job, salary with 5%hike and annual salary with 10% hike and commission with 2% deduction from emp table.
	select ename, job, sal+(sal*(5/100)) as "Salary with 5% hike", comm-(comm*(2/100)) as "commission with 2% deduction"
	from emp;
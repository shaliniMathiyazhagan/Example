--------1-Display the manager number and the salary of the lowest paid employee for that manager.
-----Exclude anyone whose manager is not known.
----Exclude any groups where the minimum salary is $6,000 or less. Sort the output in descending order of salary
SELECT * from [dbo].EMP
select MGR,sal from EMP where MGR is not null and sal>6000 order by sal DESC 
-----2---Write a query to display each department’s name, location, number of employees, and the average salary for all employees in that department. 
-----Label the columns Name, Location, Number of People, and Salary,respectively. 
----Round the average salary to two decimal places

SELECT * from [dbo].[DEPT]
SELECT * from EMP

select d.DNAME,loc,COUNT(ENAME) as numofemployees,round (AVG (SAL),2) AS AVGSAL from Emp e join Dept d on e.Dept=d.Deptno group by D.DNAME,LOC

-----3.	Show the department number, name, number of employees, and average salary of all departments, together with the names, salaries,
-----and jobs of the employees working in each department
SELECT d.DEPTNO, d.DNAME,avg(e.SAL) over(partition by d.DEPTNO)avgsalary, COUNT(*)
over (partition by DEPTNO order by DEPTNO)AS emp_count ,e.ENAME,e.SAL, e.JOB
FROM emp e join dept d on e.DEPT=d.DEPTNO
GROUP BY d.DEPTNO,d.DNAME,e.ENAME,e.JOB,e.EMPNO,SAL ORDER BY d.DEPTNO;

-----4.	Show the department number and the lowest salary of the department with the highest average salary
SELECT min(lowest) lowest,MAX(avgsal) highestavg FROM (
SELECT min(sal) lowest,AVG(sal) AS avgsal from emp GROUP BY dept
) AS query1
select dept,min(sal) lowest ,avg(sal) avgsalary from emp group by DEPT



--------5.	Show the department numbers, names, and locations of the departments where no sales 
  ---representatives work
  select * from DEPT

   select * from DEPT where DNAME!='sales' 


-------6--6.	Show the department number, department name, and the number of employees working in each department that:
---a.Includes fewer than 3 employees:
----b,Has the highest number of employees:
----c. Has the lowest number of employees:
--a
;with
cte
as
(
Select Deptno,dname,count(*) as numofemp
from DEPT d inner join emp e
on d.DEPTNO=e.DEPT
group by DEPTNO,DNAME
)
select * from cte
where numofemp <3
----b
Select top 1 Deptno,dname,count(*) as numofemp
from DEPT d inner join emp e
on d.DEPTNO=e.DEPT
group by DEPTNO,DNAME 
order by numofemp desc
---c
Select top 1 Deptno,dname,count(*) as numofemp
from DEPT d inner join emp e
on d.DEPTNO=e.DEPT
group by DEPTNO,DNAME
order by numofemp



--select JOB,dept,COUNT(*)as numofemp from EMP
--where numofemp <3
--GROUP BY DEPT,JOB 

------7--Write a query to display the number of people with the same job.
SELECT * from EMP

SELECT JOB, COUNT(*)
FROM emp
GROUP BY JOB;


----8.	Determine the number of managers without listing them. Label the column Number of
-------Managers.  Hint: Use the MGR column to determine the number of managers
SELECT * from EMP
select count (mgr)as no_of_managers from EMP Where mgr=9 

-------9---	Write a query that displays the difference between the highest and lowest salaries. Label the column DIFFERENCE
SELECT * from EMP
select Max(sal)-min(sal) as difference from emp 
------10--Display the highest, lowest, sum, and average salary of all employees. 
---Label the columns Maximum, Minimum, Sum, and Average, respectively.  
----Round your results to the nearest whole number
SELECT * from EMP
select Max(sal)as maximum,min(sal) as minimum,sum(sal)as sum ,floor (avg(sal)) as average from EMP


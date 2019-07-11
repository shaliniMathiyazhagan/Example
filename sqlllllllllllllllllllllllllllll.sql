---2-Create a query to Select all data from the Employees table---
     select * from Employees
---3. Create a query to display unique job title codes from the EMPLOYEES table.---
SELECT DISTINCT (Title) FROM employees;
----4.	Create a query to display the employee Id, first name, job, Joining Date and Country of employees hired      
------between February 20, 2017, and May 1, 2018. Order the query in ascending order by employee Id

select employeeId,firstname,title,HireDate,country from Employees where  HireDate between '2017-2-20' and '2018-05-01' order by employeeId
------5----Display the last name and hire date of every employee who was hired in 1994
select lastname,hireDate from employees where  hiredate = '1994-11-15'

-----12.	Display the total no of records in fact_sales table.
select * from fact_sales
select count(*) from fact_sales
---13.	Display the total sales amount in fact_sales table.---
select count(Total_Amount) from fact_sales
---14.	Write a query to display the Product name, category number, and category name for all Products whose order unit is more than 10.
select * from Products
select * from Categories
select p.Productname,p.CategoryID,c.CategoryName from products p inner join Categories c on P.CategoryID=C.CategoryID where UnitsOnOrder>10
-----------15.	Display the below column for all employees 

   -----Column Names: employee name, manager name, manager salary
   select * from Employees
   select * from EMP

   select  FirstName, manager name, manager salary from Employees


   ----16.	Display the depart name, total_salary (Use EMP, DEPT table). 
   select  * from DEPT
   SELECT * from EMP
   select d.dname,e.sal from  DEPT d inner join EMP e on d.deptid=e.DEPT 

   ------19.	Write a query to find duplicates in EMP table.

    SELECT * from EMP
	select  count(*)
from emp
having count (*) > 1 


---or
select EmpNo,EName,job,MGR , Hiredate,sal,COMM,Dept , count(*) as tublicates
from emp
group by  EmpNo,EName,job,MGR , Hiredate,sal,COMM,Dept having count (*) > 1 
----20.	Give your approach to delete the duplicates in EMP table. 

delete EmpNo,EName,job,MGR , Hiredate,sal,COMM,Dept , count(*) as tublicates
from emp
group by  EmpNo,EName,job,MGR , Hiredate,sal,COMM,Dept having count (*) > 1 
---8.	Write a query to insert a new row in Shippers table using below value. 

-----Id: 5, CompanyName: Gurudavega, Phone:123-456-789
select * from Shippers
insert into shippers(CompanyName, phone) values('Gurudavega',123-456-789) 
-----11.	Write a query to display the current date. Label the column Date_today---
select GETDATE() as today
------23.	Write a query to display customer name who contributed much in total sales. 








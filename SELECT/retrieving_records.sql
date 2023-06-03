--You have a table and want to see all of the data in it
select * from emp;

--You have a table and want to see only rows that satisfy a specific condition.
select *
from emp
where deptno = 10;

--You want to return rows that satisfy multiple conditions.
select *
   from emp
   where deptno = 10
     or comm is not null
     or sal <= 2000 and deptno=20

--You have a table and want to see values for specific columns rather than for all the columns
select ename,deptno,sal
   from emp;

-- You would like to change the names of the columns that are returned by your query so they are more readable and understandable
-- It's called aliasing those columns
select sal as salary, comm as commission
   from emp;

-- Insead of returning columns, we want to create sentences using the columns and then return
-- Example: instead of return emp_id and name as columns, we want to return: "Name of employee with ID 1 is Ankit"
-- We use concat function for that
select concat('Name of employee with ID', id,' is ', ename) as msg
   from emp
   where deptno=10;
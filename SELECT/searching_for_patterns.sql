-- Match against a list of possible value with IN
select ename, job
   from emp
  where deptno in (10,20);
  
-- 

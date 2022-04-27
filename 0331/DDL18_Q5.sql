SELECT  * FROM emp_hw;

INSERT INTO emp_hw (empno,ename,job,mgr,hiredate,sal,comm,deptno,reamrk)
SELECT empno,ename,job,mgr,hiredate,sal,comm,deptno,null as reamrk FROM emp;
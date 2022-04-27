-- IN
SELECT  empno,
        ename,
        job,
        sal,
        deptno
FROM emp t1
WHERE deptno IN (SELECT deptno
              FROM emp
              WHERE deptno = &dno)
;
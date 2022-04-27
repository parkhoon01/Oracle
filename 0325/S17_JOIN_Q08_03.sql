-- oracle join
SELECT  t2.deptno AS DEPTNO,
        t2.dname  AS DNAME,
        t1.empno  AS EMPNO,
        t1.ename  AS ENAME,
        t1.job    AS JOB,
        t1.sal    AS sal
FROM emp t1, dept t2
WHERE t1.deptno(+) = t2.deptno
ORDER BY t2.deptno,t2.dname,t1.ename
;
-- ansi join
SELECT  t2.deptno AS DEPTNO,
        t2.dname  AS DNAME,
        t1.empno  AS EMPNO,
        t1.ename  AS ENAME,
        t1.job    AS JOB,
        t1.sal    AS sal
FROM emp t1 RIGHT OUTER JOIN dept t2
ON t1.deptno = t2.deptno
ORDER BY t2.deptno,t2.dname,t1.ename
;
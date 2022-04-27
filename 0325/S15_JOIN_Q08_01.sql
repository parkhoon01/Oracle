-- oracle join
SELECT  t2.deptno AS DEPTNO,
        t2.dname  AS DNAME,
        t1.empno  AS EMPNO,
        t1.ename  AS ENAME,
        t1.sal    AS SAL
FROM emp t1, dept t2
WHERE t1.deptno = t2.deptno
AND   t1.sal > 2000
ORDER BY deptno
;

-- ansi join
SELECT  t2.deptno AS DEPTNO,
        t2.dname  AS DNAME,
        t1.empno  AS EMPNO,
        t1.ename  AS ENAME,
        t1.sal    AS SAL
FROM emp t1 JOIN dept t2
ON t1.deptno = t2.deptno
AND   t1.sal > 2000
ORDER BY deptno
;
--10	ACCOUNTING	7782	CLARK	2450
--10	ACCOUNTING	7839	KING	5000
--20	RESEARCH	7902	FORD	3000
--20	RESEARCH	7788	SCOTT	3000
--20	RESEARCH	7566	JONES	2975
--30	SALES	    7698	BLAKE	2850
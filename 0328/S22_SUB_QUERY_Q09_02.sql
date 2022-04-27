SELECT  t1.empno,
        t1.ename,
        t2.dname,
        TO_CHAR(t1.hiredate,'yyyy-mm-dd') AS hiredate,
        t2.loc,
        t1.sal,
        t3.grade
FROM emp t1, dept t2, salgrade t3
WHERE t1.deptno = t2.deptno
AND sal BETWEEN t3.losal AND t3.hisal
AND t1.sal > (SELECT  AVG(sal)
                 FROM emp)
ORDER BY sal DESC, empno ASC
;
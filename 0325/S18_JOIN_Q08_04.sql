-- outer join 조건이 누락되면 일반 조인으로 변경되서 
-- outer join 데이터가 누락된다.
-- oracle join
SELECT  t2.deptno,
        t2.dname,
        t1.empno,
        t1.ename,
        t1.mgr,
        t1.sal,
        t1.deptno,
        t3.losal,
        t3.hisal,
        t3.grade,
        t4.empno AS MGR_EMPNO,
        t4.ename AS MGR_ENAME
FROM  emp t1, dept t2, salgrade t3, emp t4
WHERE   t1.deptno(+) = t2.deptno
AND     t1.sal >= t3.losal(+)
AND     t1.sal <= t3.hisal(+)
AND     t1.mgr = t4.empno(+)
ORDER BY t2.deptno,t1.empno
;

-- ansi join
SELECT  t2.deptno,
        t2.dname,
        t1.empno,
        t1.ename,
        t1.mgr,
        t1.sal,
        t1.deptno,
        t3.losal,
        t3.hisal,
        t3.grade
--        t1.mgr AS MGR_EMPNO,
--        t4.ename AS MGR_ENAME
FROM  emp t1 LEFT OUTER JOIN dept t2
ON   t1.deptno = t2.deptno
FULL OUTER JOIN salgrade t3
ON     t1.sal >= t3.losal
AND     t1.sal <= t3.hisal
JOIN 
--AND     t1.mgr = t4.empno(+)
ORDER BY t2.deptno,t1.empno
;
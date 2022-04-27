-- oracle join
SELECT  t2.deptno            AS DEPTNO,
        t2.dname             AS DNAME,
        TRUNC(AVG(NVL(t1.sal,0)))   AS AVG_SAL,
        MAX(NVL(t1.sal,0))          AS MAX_SAL,
        MIN(NVL(t1.sal,0))          AS MIN_SAL,
        COUNT(NVL(t1.sal,0))        AS CNT
FROM emp t1, dept t2
WHERE t1.deptno = t2.deptno
GROUP BY t2.deptno, t2.dname
;

-- ansi join
SELECT  t2.deptno            AS DEPTNO,
        t2.dname             AS DNAME,
        TRUNC(AVG(t1.sal))   AS AVG_SAL,
        MAX(t1.sal)          AS MAX_SAL,
        MIN(t1.sal)          AS MIN_SAL,
        COUNT(t1.sal)        AS CNT
FROM emp t1 JOIN dept t2
ON t1.deptno = t2.deptno
GROUP BY t2.deptno, t2.dname
;
--10	ACCOUNTING	2916	5000	1300	3
--20	RESEARCH	2175	3000	800	    5
--30	SALES	    1566	2850	950	    6
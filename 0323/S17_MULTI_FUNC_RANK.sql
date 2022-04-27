SELECT  empno,
        ename,
        sal,
        deptno,
        RANK() OVER(PARTITION BY deptno ORDER BY sal DESC) AS "RANK_DESC"
FROM emp
;
SELECT  deptno,
        TRUNC(AVG(NVL(sal,0))) AS "AVG_SAL",
        TRUNC(MAX(NVL(sal,0))) AS "MAX_SAL",
        TRUNC(MIN(NVL(sal,0))) AS "MIN_SAL",
        TRUNC(COUNT(*)) AS "CNT"
FROM emp
GROUP BY deptno
ORDER BY deptno DESC
;
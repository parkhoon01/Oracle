-- ROLLUP() 함수
-- ROLLUP() 함수 없이 vs ROLLUP() 사용
SELECT  deptno,job,AVG(NVL(sal,0)) AS avg_sal,COUNT(*) AS cnt_emp
FROM emp
GROUP BY deptno,job
UNION ALL
SELECT  deptno,null as job,AVG(NVL(sal,0)) AS avg_sal,COUNT(*) AS cnt_emp
FROM emp
GROUP BY deptno
UNION ALL
SELECT null as deptno, null as job, AVG(NVL(sal,0)),COUNT(*)
FROM emp
ORDER BY deptno,job
;

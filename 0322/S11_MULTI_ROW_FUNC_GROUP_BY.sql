-- 부서별 직무별 평균 급여
SELECT  deptno, job, AVG(NVL(sal,0)) AS "AVGS"
FROM emp
GROUP BY deptno, job
ORDER BY deptno, job
;
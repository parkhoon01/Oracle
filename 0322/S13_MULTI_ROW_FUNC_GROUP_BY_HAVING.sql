--SELECT  deptno,
--        job,
--        AVG(NVL(sal,0)) AS "avg"
--FROM emp
--GROUP BY deptno,job
--HAVING AVG(NVL(sal,0)) >= 2000
--ORDER BY deptno,job
--;

SELECT  deptno,
        job,
        AVG(NVL(sal,0)) AS "avg"
FROM emp
WHERE sal <= 3000
GROUP BY deptno,job
HAVING AVG(NVL(sal,0)) >= 2000
ORDER BY deptno,job
;

SELECT  deptno,
        job,
        AVG(NVL(sal,0))
FROM emp
GROUP BY deptno, job
HAVING AVG(NVL(sal,0)) >= 500
ORDER BY deptno, job
;
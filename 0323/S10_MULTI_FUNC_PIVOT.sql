-- 직책별, 부서별, 최고급여
-- job          10      20      30
-- ANALYST             3000
-- CLERK       1300    1100     950
SELECT  deptno,job,MAX(sal)
FROM emp
GROUP BY deptno,job
ORDER BY deptno,job
;

SELECT * FROM(SELECT deptno,job,sal FROM emp)
PIVOT(MAX(sal) FOR deptno IN(10,20,30
                            )
)
ORDER BY job
;
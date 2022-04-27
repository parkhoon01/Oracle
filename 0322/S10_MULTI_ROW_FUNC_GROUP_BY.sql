-- 결과 값을 원하는 열로 묶어 출력하는 GROUP BY 절
SELECT  SUM(sal), '10' AS deptno FROM emp WHERE deptno = 10
UNION ALL
SELECT  SUM(sal), '20' FROM emp WHERE deptno = 20
UNION ALL
SELECT  SUM(sal), '30' FROM emp WHERE deptno = 30;

SELECT  deptno,
        SUM(sal)
FROM emp
GROUP BY deptno
;
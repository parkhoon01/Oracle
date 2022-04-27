-- ROLLUP() : 순서가 달라지면 결과 값이 달라진다. (순서 중요)
SELECT  deptno,job,AVG(NVL(sal,0)) AS avg_sal,COUNT(*) AS cnt_emp
FROM emp
GROUP BY ROLLUP(deptno,job)
;
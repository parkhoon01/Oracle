--emp 테이블을 조회하여 아래와 같이 각 직원들의 급여가 해당 부서 합계금액에서 																					
--	몇 %의 비중을 차지하는지를 출력하세요. 단 부서번호를 기준으로 오름차순으로 출력하세요.
SELECT  t1.deptno,
        t1.ename,
        t1.sal,
        t1.SUM_DEPT,
        ROUND(t1.sal/t1.SUM_DEPT*100,2) AS "%",
        ROUND(RATIO_TO_REPORT(sal) OVER(PARTITION BY deptno)*100,2) AS "%2"
FROM(SELECT deptno,
            ename,
            sal,
            SUM(sal) OVER(PARTITION BY deptno) AS SUM_DEPT
    FROM emp) t1
ORDER BY deptno
;
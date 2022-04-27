--emp 테이블을 사용하여 아래와 같이 각 사원의 급여액이 전체 직원 급여총액에서 몇 %의 비율을 																					
--차지하는지 출력하세요. 단 급여 비중이 높은 사람이 먼저 출력되도록 하세요
SELECT  t1.deptno,
        t1.ename,
        t1.sal,
        t1.total_sal,
        ROUND(sal/t1.total_sal*100,2) AS "%",
        ROUND(RATIO_TO_REPORT(sal) OVER()*100,2) AS "%2"
FROM(SELECT deptno,
        ename,
        sal,
        SUM(sal) OVER() AS total_sal
    FROM emp) t1
ORDER BY sal DESC
;
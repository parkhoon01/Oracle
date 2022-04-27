--professor 테이블을 조회하여 학과번호 , 교수명 , 급여 , 학과별 급여 합계를 구하고 																						
--각 교수의 급여가 해당 학과별 급여 합계에서 차지하는 비율을 출력하세요.	
SELECT deptno,
        name,
        pay,
        SUM(pay) OVER(PARTITION BY deptno) AS TOTAL_PAY,
        ROUND(pay/SUM(pay) OVER(PARTITION BY deptno)*100,2) AS "RATIO_%"
FROM professor
;
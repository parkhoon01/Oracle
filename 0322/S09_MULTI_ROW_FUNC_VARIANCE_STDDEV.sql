-- STDDEV() : 표준편차 함수
-- VARIANCE() : 분산 함수
SELECT  ROUND(VARIANCE(sal),2),
        ROUND(STDDEV(sal),2),
        ROUND(AVG(NVL(sal,0)),2)
FROM emp
;
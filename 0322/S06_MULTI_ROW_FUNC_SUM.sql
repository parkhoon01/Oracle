-- SUM() 함수 : 입력 데이터들의 합계 값을 구하는 함수
-- SUM([DISTINCT,ALL])
-- OVER(분석을 위한 여러 문법)
SELECT  SUM(ALL sal),       -- sal 총합
        SUM(DISTINCT sal) AS "sal_distinct", -- sal 중복 데이터 제거 총합
        SUM(sal)
FROM emp
;
-- MAX(), MIN() : 최대값과 최소값을 구하는 함수
-- MAX,MIN([DISTINCT,ALL])
-- OVER(분석을 위한 여러 문법)
-- 원리는 데이터를 순서대로 정렬한다.
-- 그리고 그중에서 최대/최소를 추출한다.
SELECT  MAX(sal),
        MIN(sal)
FROM emp
;

SELECT  MAX(hiredate),
        MIN(hiredate)
FROM emp
;
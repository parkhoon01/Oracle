-- COUNT() 함수 
-- COUNT(*) : null 포함
-- COUNT(comm) : null 제외
-- COUNT([DISTINCT,ALL])
-- OVER(분석을 위해 여러 문법)
SELECT  COUNT(*),
        COUNT(comm)
FROM emp
;
-- 묵시적 형변환
SELECT  2 + '2'
FROM dual
;

-- 명시적 형변환  
SELECT  2 + TO_NUMBER('2')
FROM dual
;
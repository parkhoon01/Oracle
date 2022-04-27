-- RPAD('문자열' 또는 컬럼, 자리수, 채울문자)
SELECT  'Oracle',
        RPAD('Oracle',10,'*') AS rpad_01,
        RPAD('Oracle',10)     AS rpad_02
FROM dual
;
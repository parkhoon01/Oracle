-- TO_NUMBER('문자열 데이터', '인식될 숫자형태')
SELECT  TO_NUMBER('1,300','999,999') - TO_NUMBER('1,500','999,999')
FROM dual
;
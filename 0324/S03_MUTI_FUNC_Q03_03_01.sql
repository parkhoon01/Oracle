-- COUNT(*) OVER() 그룹함수 없이 총 건수 구하기
SELECT * 
FROM(SELECT COUNT(*) OVER() TOTAL, SUBSTR(tel,1,INSTR(tel,')')-1) AS tel 
    FROM student) 
PIVOT( COUNT(tel) FOR tel IN('02' AS SEOUL,
                             '031' AS GYEONGGI,
                             '051' AS BUSAN,
                             '052' AS ULSAN,
                             '053' AS DAEGU,
                             '055' AS GYEONGNAM
                                   )
)
;
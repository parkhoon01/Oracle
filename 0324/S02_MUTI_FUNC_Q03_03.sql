--Student 테이블의 tel 컬럼을 참고하여 아래와 같이 지역별 인원수를 																						
--출력하세요.단, 02-SEOUL, 031-GYEONGGI, 051-BUSAN, 																						
--052-ULSAN, 053-DAEGU, 055-GYEONGNAM으로 출력하세요.	
SELECT  COUNT(*) AS TOTAL,
        COUNT(DECODE(t1.tel,02,0))  AS SEOUL,
        COUNT(DECODE(t1.tel,031,0)) AS GYEONGGI,
        COUNT(DECODE(t1.tel,051,0)) AS BUSAN,
        COUNT(DECODE(t1.tel,052,0)) AS ULSAN,
        COUNT(DECODE(t1.tel,053,0)) AS DAEGU,
        COUNT(DECODE(t1.tel,055,0)) AS GYEONGNAM
FROM(SELECT  SUBSTR(tel,1,INSTR(tel,')')-1) AS tel
    FROM student) t1
;

--student 테이블의 Tel 컬럼을 사용하여 아래와 같이 지역별 인원수와 전체대비 																	
--차지하는 비율을 출력하세요. 																	
--																	
--(단, 02-SEOUL, 031-GYEONGGI, 051-BUSAN, 052-ULSAN, 																	
--053-DAEGU,055-GYEONGNAM으로 출력하세요.)

SELECT  COUNT(*) || 'EA(' || (COUNT(*)/COUNT(*)*100) || '%)' AS TOTAL,
        COUNT(DECODE(SUBSTR(tel,1,INSTR(tel,')')-1),02,0)) || 'EA('
        || (COUNT(DECODE(SUBSTR(tel,1,INSTR(tel,')')-1),02,0))/COUNT(*)*100) || '%)' AS SEOUL,
        COUNT(DECODE(SUBSTR(tel,1,INSTR(tel,')')-1),031,0))|| 'EA(' 
        || (COUNT(DECODE(SUBSTR(tel,1,INSTR(tel,')')-1),031,0))/COUNT(*)*100) || '%)' AS GYEONGGI,
        COUNT(DECODE(SUBSTR(tel,1,INSTR(tel,')')-1),051,0))|| 'EA(' 
        || (COUNT(DECODE(SUBSTR(tel,1,INSTR(tel,')')-1),051,0))/COUNT(*)*100) || '%)' AS BUSAN,
        COUNT(DECODE(SUBSTR(tel,1,INSTR(tel,')')-1),052,0))|| 'EA(' 
        || (COUNT(DECODE(SUBSTR(tel,1,INSTR(tel,')')-1),052,0))/COUNT(*)*100) || '%)' AS ULSAN,
        COUNT(DECODE(SUBSTR(tel,1,INSTR(tel,')')-1),053,0))|| 'EA(' 
        || (COUNT(DECODE(SUBSTR(tel,1,INSTR(tel,')')-1),053,0))/COUNT(*)*100) || '%)' AS DAEGU,
        COUNT(DECODE(SUBSTR(tel,1,INSTR(tel,')')-1),055,0))|| 'EA(' 
        || (COUNT(DECODE(SUBSTR(tel,1,INSTR(tel,')')-1),055,0))/COUNT(*)*100) || '%)' AS GYEONGNAM
FROM student
;
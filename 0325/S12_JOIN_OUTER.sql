--Student 테이블과 Professor 테이블을 Join하여 학생이름과 지도교수 이름을 출력하세요.																				
--단 지도학생이 결정되지 않은 교수의 명단도 함께 출력하세요	
SELECT  t1.name AS stu_name,
        t2.name AS prof_name
FROM student t1, professor t2
WHERE t1.profno(+) = t2.profno
;
-- ansi join
SELECT  t1.name AS stu_name,
        t2.name AS prof_name
FROM student t1 RIGHT OUTER JOIN professor t2
ON t1.profno = t2.profno
;
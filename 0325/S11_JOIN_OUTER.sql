-- OUTER JOIN(아우터 조인)
-- WHERE 조건절에 데이터가 없는 쪽에 (+)
--Student 테이블과 Professor 테이블을 Join하여 학생이름과 지도교수 이름을 출력하세요.																				
--단 지도교수가 결정되지 않은 학생의 명단도 함께 출력하세요.
-- oracle join
SELECT  t1.name AS stu_name,
        t2.name AS prof_name
FROM student t1, professor t2
WHERE t1.profno = t2.profno(+)
;

-- ansi join
-- 데이터가 있는 쪽으로 
SELECT  t1.name AS stu_name,
        t2.name AS prof_name
FROM student t1 LEFT OUTER JOIN professor t2
ON t1.profno = t2.profno
;
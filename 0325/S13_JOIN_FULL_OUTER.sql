--Student 테이블과 Professor 테이블을 Join하여 학생이름과 지도교수 이름을 출력하세요.
--단 지도학생이 결정 안 된 교수 명단과 지도 교수가 결정 안된 학생 명단을 한꺼번에 출력하세요.
-- oracle join : UNION
-- 지도교수가 할당 안된 학생 포함해서 출력
SELECT  t1.name AS stu_name,
        t2.name AS prof_name
FROM student t1, professor t2
WHERE t1.profno = t2.profno(+)
UNION
SELECT  t1.name AS stu_name,
        t2.name AS prof_name
FROM student t1, professor t2
WHERE t1.profno(+) = t2.profno
;

-- ansi join
SELECT  t1.name AS stu_name,
        t2.name AS prof_name
FROM student t1 FULL OUTER JOIN professor t2
ON t1.profno = t2.profno
;
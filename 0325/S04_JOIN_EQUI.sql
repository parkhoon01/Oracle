-- 학생(student)과 교수 테이블(professor)를 조인하여 학생의 이름과 지도교수 이름을 출력하세요.
-- 학생 테이블의 데이터는 20건, 즉 5명의 학생이 안 나왔다는 것이다.
-- EQUI JOIN은 양쪽 테이블에 모두 존재해야 한다.

-- oracle join
SELECT  s1.name AS STUDENT,
        p1.name AS PROFESSOR
FROM student s1, professor p1
WHERE s1.profno = p1.profno
;

-- ansi join
SELECT  s1.name AS STUDENT,
        p1.name AS PROFESSOR
FROM student s1 JOIN professor p1
ON s1.profno = p1.profno
;
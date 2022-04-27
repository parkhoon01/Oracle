--student 테이블을 조회하여 1전공(deptno1)이 101번인 학생들의 이름과
--각 학생들의 지도교수 번호와 지도교수 이름을 출력하세요.
-- oracle join
SELECT  s1.name AS STU_NAME,
        p1.name AS PROF_NAME
FROM student s1, professor p1
WHERE s1.profno = p1.profno
AND   s1.deptno1 = 101
;

-- ansi join
SELECT  s1.name AS STU_NAME,
        p1.name AS PROF_NAME
FROM student s1 JOIN professor p1
ON      s1.profno = p1.profno
WHERE   s1.deptno1 = 101
;
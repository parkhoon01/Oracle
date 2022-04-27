-- 학생 테이블(student)과 학과 테이블(department) , 교수 테이블(professor)을 
-- Join하여 학생의 이름과 학생의 학과이름, 학생의 지도교수 이름을 출력하세요.
-- oracle join
SELECT  s1.name AS std_name,
        d1.dname AS dept_name,
        p1.name AS prof_name
FROM student s1, department d1, professor p1
WHERE s1.profno = p1.profno 
AND s1.deptno1 = d1.deptno
;

-- ansi join
SELECT  s1.name AS std_name,
        d1.dname AS dept_name,
        p1.name AS prof_name
FROM student s1 JOIN professor p1
ON s1.profno = p1.profno 
JOIN department d1 
ON s1.deptno1 = d1.deptno
;
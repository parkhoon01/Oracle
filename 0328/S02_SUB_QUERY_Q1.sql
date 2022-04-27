-- Student 테이블과 department 테이블을 사용하여 'Anthony Hopkins'학생과 1전공이 동일한 
-- 학생들의 이름과 1전공 이름을 출력하세요.
SELECT  t2.name,
        t1.dname
FROM department t1, student t2
WHERE t1.deptno = t2.deptno1
AND t2.deptno1 = (SELECT deptno1
                 FROM student
                 WHERE name = 'Anthony Hopkins');
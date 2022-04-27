--학생 테이블 (student) 과 학과 테이블 (department) 테이블을 사용하여 학생이름, 1 전공학과번호(deptno1) ,
--1전공 학과 이름을 출력하세요.																													
--( ANSI Join 문법과 Oracle Join 문법 으로 각각 SQL 을 작성하세요 )
SELECT  t1.name AS STU_NAME,
        t1.deptno1,
        t2.dname AS DEPT_NAME
FROM student t1, department t2
WHERE t1.deptno1 = t2.deptno
;

SELECT  t1.name AS STU_NAME,
        t1.deptno1,
        t2.dname AS DEPT_NAME
FROM student t1 JOIN department t2
ON t1.deptno1 = t2.deptno
;
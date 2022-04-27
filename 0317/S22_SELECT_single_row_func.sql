-- student 테이블의 tel컬럼을 사용하여 1전공이 201번인 학생의 이름과 전화번호, 괄호가 나온 위치를 찾으세요.
SELECT  name,
        tel,
        INSTR(tel,')'),
        SUBSTR(tel,1,INSTR(tel,')')-1) AS "국번"
FROM student
WHERE deptno1 = 201
;
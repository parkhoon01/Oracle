-- 국번 뽑아내기
SELECT  name,
        tel,
        SUBSTR(tel,1,INSTR(tel,')')-1) AS "국번"
FROM student
WHERE deptno1 = 201
;
--Student 테이블에서 1 전공이 (deptno1) 101번인 학생의 이름과 연락처와 지역을 출력하세요. 
--단,지역번호가 02 는 "SEOUL" , 031 은 "GYEONGGI" , 051 은 "BUSAN" , 052 는 "ULSAN" 
--, 055 는 "GYEONGNAM"입니다.Student 테이블에서 1 전공이 (deptno1) 101번인 학생의 이름과 연락처와 지역을 출력하세요. 
--단,지역번호가 02 는 "SEOUL" , 031 은 "GYEONGGI" , 051 은 "BUSAN" , 052 는 "ULSAN" 
--, 055 는 "GYEONGNAM"입니다.
SELECT  name,
        tel,
        INSTR(tel,')'),
        DECODE(SUBSTR(tel,1, INSTR(tel,')')-1),
                            02,'SEOUL',
                            031,'GUEONGGI',
                            051,'BUSAN',
                            055,'GYEONGNAM') AS LOC
FROM student
WHERE deptno1 =101
;
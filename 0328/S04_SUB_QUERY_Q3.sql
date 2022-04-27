-- Student 테이블에서 1전공이 201번인 학과의 평균 몸무게보다 몸무게가 많은 학생들의 이름과 몸무게를 출력
SELECT  name,
        weight
FROM student
WHERE weight > (SELECT AVG(weight)
                FROM student
                WHERE deptno1 = 201
                )
;
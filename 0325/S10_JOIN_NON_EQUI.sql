--Student 테이블과 score 테이블 , hakjum 테이블을 조회하여
--학생들의 이름과 점수와 학점을 출력하세요.
-- oracle join
SELECT  t1.name AS STU_NAME,
        t2.total AS SCORE,
        t3.grade AS CRE
FROM student t1, score t2, hakjum t3
WHERE t1.studno = t2.studno
AND   t2.total >= t3.MIN_POINT
AND   t2.total <= t3.MAX_POINT
ORDER BY score ASC
;

-- ansi join
SELECT  t1.name AS STU_NAME,
        t2.total AS SCORE,
        t3.grade AS CRE
FROM student t1 JOIN score t2
ON t1.studno = t2.studno 
JOIN hakjum t3
ON    t2.total >= t3.MIN_POINT
AND   t2.total <= t3.MAX_POINT
ORDER BY score ASC
;
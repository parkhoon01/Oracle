-- DECODE() 함수
-- JAVA언어 등에서 사용 중인 분기문인 IF문 오라클로 가져온 함수
-- DECODE()함수는 오라클 전용 함수
-- 유형1 DECODE(A,B,'1',NULL)(단, 마지막 NULL은 생략 가능)
-- A가 B이면 1 그렇지 않으면 2를 출력하라
SELECT  deptno,
        name,
        DECODE(deptno,101,'Computer Engineering', null) AS DNAME
FROM professor
;
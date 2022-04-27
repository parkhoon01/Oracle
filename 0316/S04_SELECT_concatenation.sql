-- 연결 연산자 연습 문제 1
-- emp 테이블을 조회하여 모든 사람들의 이름과 직업을 아래와 같이 출력하세요.

SELECT  ename || q'[(]' || job || q'[), ]' ||
        ename || q'[']' || job || q'[']' "NAME AND JOB"
FROM emp;
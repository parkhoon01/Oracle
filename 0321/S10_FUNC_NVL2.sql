-- 아래 화면과 같이 emp 테이블에서 deptno가 30번인 사원들을 조회하여 comm값이 있을경우
-- 'Exist'를 출력하고 comm값이 null 일 경우 'null'을 출력하세요
SELECT  deptno,
        ename,
        NVL2(comm,'Exist','null') AS NVL2
FROM emp
WHERE deptno = 30
;
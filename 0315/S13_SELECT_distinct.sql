-- single column에서 distinct
--SELECT deptno
--FROM emp;

--SELECT DISTINCT deptno
--FROM emp;

-- column이 2개인 경우
--SELECT DISTINCT job,
--        deptno
--FROM emp;

-- 정렬
SELECT DISTINCT job,
        deptno
FROM emp
ORDER BY 1,2;
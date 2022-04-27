-- DENSE_RANK()
-- 동일 순위를 하나로 간주한다.
SELECT  empno,
        ename,
        sal,
        deptno,
        RANK() OVER(ORDER BY sal DESC) AS "RANK_DESC",
        DENSE_RANK() OVER(ORDER BY sal DESC) AS "DENSE_RANK"
FROM emp
;

-- 집합 연산자를 사용하지 않은 방식
--SELECT  empno,
--        ename,
--        job,
--        sal,
--        deptno
--FROM emp
--WHERE sal > 2000
--AND (deptno = 20
--OR    deptno = 30)
--;
-- 집합 연산자를 사용한 방식
SELECT  empno,
        ename,
        job,
        sal,
        deptno
FROM emp
WHERE   sal > 2000
    AND deptno = 20
UNION
SELECT  empno,
        ename,
        job,
        sal,
        deptno
FROM emp
WHERE   sal > 2000
    AND deptno = 30
;


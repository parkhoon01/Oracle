-- S로 시작하는 ename
--SELECT  empno,
--        ename,
--        job,
--        deptno
--FROM emp
--WHERE ename LIKE 'S%'
--;

-- S가 포함된 ename
-- 조회 속도가 위에 비해서 느릴 수 있다.
SELECT  empno,
        ename,
        job,
        deptno
FROM emp
WHERE ename LIKE '%S%'
;
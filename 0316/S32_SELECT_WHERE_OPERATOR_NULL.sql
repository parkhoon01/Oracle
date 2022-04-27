-- NULL + 4000 => NULL
--SELECT  empno,
--        ename,
--        sal,
--        sal * 12 + NVL(comm,0) AS "anual sal comm",
--        comm
--FROM emp
--;
-- comm 이 NULL인 데이터
--SELECT  empno,
--        ename,
--        sal,
--        comm
--FROM emp
--WHERE comm IS NULL
--;

-- comm 이 NULL이 아닌 데이터
SELECT  empno,
        ename,
        sal,
        comm
FROM emp
WHERE comm IS NOT NULL
;
-- NULL + 4000 => NULL
--SELECT  empno,
--        ename,
--        sal,
--        sal * 12 + NVL(comm,0) AS "anual sal comm",
--        comm
--FROM emp
--;
-- comm �� NULL�� ������
--SELECT  empno,
--        ename,
--        sal,
--        comm
--FROM emp
--WHERE comm IS NULL
--;

-- comm �� NULL�� �ƴ� ������
SELECT  empno,
        ename,
        sal,
        comm
FROM emp
WHERE comm IS NOT NULL
;
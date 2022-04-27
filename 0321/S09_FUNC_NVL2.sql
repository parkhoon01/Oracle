-- NVL2(COL1,COL2,COL3)
-- COL1 값이 NULL이 아니면 COL2
-- COL1 값이 NULL이면 COL3
SELECT  empno,
        ename,
        comm,
        NVL2(comm,'0','x') AS "NVL2",
        NVL2(comm,sal*12+comm,sal*12) AS "anual_sal"
FROM emp
;
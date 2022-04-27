SELECT  empno,
        ename,
        TO_CHAR(hiredate,'YYYY/MM/DD') AS "HIREDATE",
        TO_CHAR(NEXT_DAY(ADD_MONTHS(hiredate,3),'월요일'),'YYYY/MM/DD') AS "R_JOB",
        CASE WHEN comm IS NULL THEN 'N/A'
             ELSE TO_CHAR(comm)
        END AS "COMM"
FROM emp
;
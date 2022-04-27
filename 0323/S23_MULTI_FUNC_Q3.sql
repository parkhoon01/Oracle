SELECT  SUBSTR(TO_CHAR(hiredate,'yyyy/mm/dd'),1,4) AS "HIRE_YEAR",
        deptno,
        COUNT(*)
FROM emp
GROUP BY SUBSTR(TO_CHAR(hiredate,'yyyy/mm/dd'),1,4), deptno
;
SELECT  deptno, 
        MAX(DECODE(job,'CLERK',sal))     AS "CLERK",
        MAX(DECODE(job,'SALESMAN',sal))  AS "SALESMAN",
        MAX(DECODE(job,'PRESIDENT',sal)) AS "PRESIDENT",
        MAX(DECODE(job,'MANAGER',sal))   AS "MANAGER",
        MAX(DECODE(job,'ANALYST',sal))   AS "ANALYST"
FROM emp
GROUP BY deptno
ORDER BY deptno
;
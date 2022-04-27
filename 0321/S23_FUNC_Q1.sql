SELECT  empno,
        REPLACE(empno,SUBSTR(empno,3,(LENGTH(empno)-2)),'**') AS "MASKING_EMPNO",
        ename,
        CASE LENGTH(SUBSTR(ename,3,(LENGTH(ename)-2))) 
                        WHEN 2 THEN REPLACE(ename,SUBSTR(ename,3,(LENGTH(ename)-2)),'**')
                        WHEN 3 THEN REPLACE(ename,SUBSTR(ename,3,(LENGTH(ename)-2)),'***')
                        ELSE null
        END AS "MASKING_ENAME"
FROM emp
WHERE LENGTH(ename) >= 5
AND   LENGTH(ename) < 6
;
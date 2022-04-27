SELECT  ename,
        LENGTH(ename) AS ename_length
FROM emp
WHERE LENGTH(ename) >= 5
;
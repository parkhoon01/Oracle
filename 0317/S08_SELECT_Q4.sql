SELECT *
FROM emp
WHERE  NOT (sal >= 2000
    AND sal <= 3000)
;
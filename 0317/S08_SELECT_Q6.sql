SELECT *
FROM emp
WHERE   comm is NULL
    AND mgr is NOT NULL
    AND job in ('MANAGER', 'CLERK')
    AND ename NOT LIKE '_L%'
;
SELECT  deptno,
        LISTAGG(ename,',') WITHIN GROUP(ORDER BY ename) AS list_agg
FROM emp
GROUP BY deptno
ORDER BY deptno
;
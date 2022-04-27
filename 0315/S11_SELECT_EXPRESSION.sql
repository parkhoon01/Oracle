-- ACCOUNTING IT'S deptno ->10
--SELECT  dname,
--        'IT ''s deptno' "dname",
--        deptno
--FROM dept;

SELECT  dname,
        q'[IT's deptno]',
        deptno
FROM dept;
-- NOT IN(IN�� �� ���� ������)
SELECT  empno,
        ename,
        deptno,
        job
FROM emp
WHERE job NOT IN ('MANAGER', 'SALESMAN', 'CLERK')
;
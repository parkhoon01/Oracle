-- ���� �����ڸ� ������� ���� ���
--SELECT  empno,
--        ename,
--        job,
--        sal,
--        deptno
--FROM emp
--WHERE sal > 2000
--AND (deptno = 20
--OR    deptno = 30)
--;
-- ���� �����ڸ� ����� ���
SELECT  empno,
        ename,
        job,
        sal,
        deptno
FROM emp
WHERE   sal > 2000
    AND deptno = 20
UNION
SELECT  empno,
        ename,
        job,
        sal,
        deptno
FROM emp
WHERE   sal > 2000
    AND deptno = 30
;


-- S�� �����ϴ� ename
--SELECT  empno,
--        ename,
--        job,
--        deptno
--FROM emp
--WHERE ename LIKE 'S%'
--;

-- S�� ���Ե� ename
-- ��ȸ �ӵ��� ���� ���ؼ� ���� �� �ִ�.
SELECT  empno,
        ename,
        job,
        deptno
FROM emp
WHERE ename LIKE '%S%'
;
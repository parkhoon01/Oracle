-- single column���� distinct
--SELECT deptno
--FROM emp;

--SELECT DISTINCT deptno
--FROM emp;

-- column�� 2���� ���
--SELECT DISTINCT job,
--        deptno
--FROM emp;

-- ����
SELECT DISTINCT job,
        deptno
FROM emp
ORDER BY 1,2;
-- emp ������� �̸�, ����, ����, ����
-- ���� : ���� * 12 + ����
SELECT  ename, sal*12+comm as ����, sal, comm
FROM emp;

-- "sal*12+comm" �����Ͱ� ���� ���� comm�� null�̶�
-- NULL : ���� �� �� ����.
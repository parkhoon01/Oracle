-- SELF JOIN
-- 원하는 데이터가 하나의 테이블에 들어가 있는 경우
-- oracle join
SELECT  t1.empno,
        t1.ename,
        t1.mgr,
        t2.ename AS mgr_name
FROM emp t1, emp t2
WHERE t1.mgr = t2.empno(+)
;

-- ansi join
SELECT  t1.empno,
        t1.ename,
        t1.mgr,
        t2.ename AS mgr_name
FROM emp t1 LEFT OUTER JOIN emp t2
ON t1.mgr = t2.empno
;

--7788	SCOTT	7566	JONES
--7902	FORD	7566	JONES
--7499	ALLEN	7698	BLAKE
--7521	WARD	7698	BLAKE
--7654	MARTIN	7698	BLAKE
--7844	TURNER	7698	BLAKE
--7900	JAMES	7698	BLAKE
--7934	MILLER	7782	CLARK
--7876	ADAMS	7788	SCOTT
--7566	JONES	7839	KING
--7698	BLAKE	7839	KING
--7782	CLARK	7839	KING
--7369	SMITH	7902	FORD
--7839	KING		
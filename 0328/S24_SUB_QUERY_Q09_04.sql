-- 다중행 함수 사용
SELECT  empno,
        ename,
        sal,
        grade
FROM emp, salgrade
WHERE sal BETWEEN losal AND hisal
AND   sal > ALL(SELECT  sal
                FROM emp
                WHERE job = 'SALESMAN')
ORDER BY empno ASC
;

-- 다중행 함수 사용 X
SELECT  empno,
        ename,
        sal,
        grade
FROM emp, salgrade
WHERE sal BETWEEN losal AND hisal
AND   sal > (SELECT  MAX(sal)
                FROM emp
                WHERE job = 'SALESMAN')
ORDER BY empno ASC
;
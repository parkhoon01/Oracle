-- 여러 개 조건식을 사용하는 AND, OR 연산자
SELECT *
FROM emp
WHERE   deptno = 30
    AND job = 'SALESMAN'
;
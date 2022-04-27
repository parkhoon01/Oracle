-- emp 테이블에서 manager이면 10%, salesman이면 5%, analyst이면 그대로, 나머지는 3%
SELECT  empno,
        ename,
        job,
        sal,
        CASE job    WHEN 'MANAGER'  THEN sal*1.1
                    WHEN 'SALESMAN' THEN sal*1.05
                    WHEN 'ANALYST'  THEN sal
                    ELSE sal*1.03
        END AS UPSAL
FROM emp
;
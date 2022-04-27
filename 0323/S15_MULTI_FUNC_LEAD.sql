-- LEAD() 함수
-- 이후 행 값을 가져올 때 사용하는 함수
-- LEAD(출력컬럼, OFFSET, 기본출력 값)
--      OVER(Query_partition구문, ORDER BY 정렬 할 컬럼)
SELECT  ename,
        hiredate,
        sal,
        LEAD(sal,1,0) OVER( ORDER BY sal) AS "LEAD"
FROM emp
;
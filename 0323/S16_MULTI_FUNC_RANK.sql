-- RANK() 함수
-- 주어진 컬럼 값의 그룹에서 값의 순위를 계산한 후 순위를 출력
-- 같은 순위를 가질때는 같은 출력 값을 가진다.
SELECT  empno,
        ename,
        sal,
        RANK() OVER(ORDER BY sal DESC) AS "RANK_DESC"
FROM emp
;
--Emp 테이블을 사용하여 아래의 화면과 같이 부서별로 직급별로 급여 합계 결과를 출력하세요.
SELECT  *
        FROM(SELECT deptno,SUM(sal) AS TOTAL FROM emp)
PIVOT(MAX(sal) FOR job
GROUP BY deptno
;
-- GROUP BY절에 조건을 줄 때 사용하는 HAVING
-- HAVING절은 SELECT문에 GROUP BY절이 존재할 때만 사용 할 수 있다.
-- GROUP BY절을 통해 그룹화된 결과 값의 범위를 제한하는데 사용합니다.
-- emp 테이블에서 평균 급여가 2000만원 이상안 부서의 부서번호, 평균급여를 출력
--SELECT  deptno,
--        AVG(NVL(sal,0))
--FROM emp
--WHERE AVG(NVL(sal,0)) >= 2000
--GROUP BY deptno
--;

SELECT  deptno,
        AVG(NVL(sal,0))
FROM emp
GROUP BY deptno
HAVING AVG(NVL(sal,0)) >= 2000
;
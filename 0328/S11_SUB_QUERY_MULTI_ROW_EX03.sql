--emp2 테이블과 dept2 테이블을 조회하여 각 부서별 평균 연봉을 구하고 그중에서
-- 평균 연봉이 가장 적은 부서의 평균 연봉보다 적게 받는 직원들의 부서명, 직원명, 연봉
SELECT  t2.dname,
        t1.name,
        TO_CHAR(t1.pay, '$999,999,999') AS salary
FROM emp2 t1, dept2 t2
WHERE t1.deptno = t2.dcode
AND     pay < ALL(SELECT AVG(NVL(pay,0))
                    FROM emp2
                    GROUP BY deptno)
;
-- empno별로 그룹화 한후 ROLLUP() 함수에 job지정
SELECT deptno,job,COUNT(*)
FROM emp
GROUP BY deptno, ROLLUP(job)
;

SELECT deptno,job,COUNT(*)
FROM emp
GROUP BY job, ROLLUP(deptno)
;
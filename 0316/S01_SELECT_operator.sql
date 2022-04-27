-- emp 사원들의 이름, 월급, 연봉, 수당
-- 연봉 : 월급 * 12 + 수당
SELECT  ename, sal*12+comm as 연봉, sal, comm
FROM emp;

-- "sal*12+comm" 데이터가 없는 경우는 comm이 null이라서
-- NULL : 값을 알 수 없음.
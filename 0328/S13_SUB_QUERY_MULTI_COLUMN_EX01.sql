-- Professor 테이블과 department 테이블을 조회하여 각 학과별로 입사일이
-- 가장 오래된 교수의 교수번호와 이름, 학과명을 출력하세요.(입사일 오름차순)
SELECT  t1.profno,
        t1.name,
        TO_CHAR(t1.hiredate,'yyyy-mm-dd') AS hiredate,
        t2.dname AS dept_name
FROM professor t1, department t2
WHERE t1.deptno = t2.deptno
AND (t1.deptno, t1.hiredate) IN (SELECT  deptno,
                                         MIN(hiredate)
                                 FROM professor
                                 GROUP BY deptno)
ORDER BY t1.hiredate
;
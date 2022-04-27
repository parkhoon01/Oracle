-- professor테이블과 department 테이블을 조회하여 Meg Ryan 교수보다 나중에 입사한 사람의 이름과 입사일, 학과명을 출력
SELECT  t1.name AS prof_name,
        TO_CHAR(t1.hiredate, 'yyyy/mm/dd') AS hiredate,
        t2.dname as dept_name
FROM professor t1, department t2
WHERE t1.deptno = t2.deptno
AND   TO_CHAR(t1.hiredate, 'yyyy/mm/dd') > (SELECT TO_CHAR(hiredate, 'yyyy/mm/dd')
                                            FROM professor
                                            WHERE name = 'Meg Ryan'
                                            )
;
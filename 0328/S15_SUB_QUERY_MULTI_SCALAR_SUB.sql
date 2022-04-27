-- scalar sub query
-- emp2 테이블과 dept2 테이블을 조회하여 
SELECT  t1.name,
        (SELECT dname
         FROM dept2 t2
         WHERE t1.deptno = t2.dcode) AS "DNAME"
FROM emp2 t1
;
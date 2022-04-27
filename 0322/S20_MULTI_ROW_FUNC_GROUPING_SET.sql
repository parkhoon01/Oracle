SELECT  grade,deptno1,COUNT(*)
FROM student
GROUP BY GROUPING SETS(grade,deptno1)
;
-- 하나의 테이블에 여러 함수가 사용 된다면 GROUPING SETS() 함수를 사용하는 것이 매우 좋다.
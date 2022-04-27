-- CONCAT() 함수
-- 두 개의 문자열 데이터를 하나의 데이터로 연결해 주는 역활
SELECT  CONCAT(empno,ename),
        CONCAT(empno,CONCAT(':',ename))
FROM emp
WHERE ename = 'SCOTT'
;

SELECT  empno || ename,
        empno || ':' || ename
FROM emp
WHERE ename = 'SCOTT'
;
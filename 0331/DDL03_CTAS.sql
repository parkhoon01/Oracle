-- 특정 데이터만 가져오기
CREATE TABLE dept_ddl_30
AS
SELECT * FROM dept
WHERE deptno = 30;

SELECT * FROM dept_ddl_30;
-- 모든 컬럼 모두복사/특정 컬럼만 복사
-- 1. 모든 컬럼(데이터) 복사
CREATE TABLE dept_ddl
AS
SELECT *
FROM dept
;

SELECT * FROM dept_ddl;
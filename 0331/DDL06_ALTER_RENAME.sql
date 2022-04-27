-- 테이블의 컬럼 이름 변경
-- LOCATION2 -> LOC
ALTER TABLE dept6
RENAME COLUMN location2 TO loc
;
SELECT * FROM dept6;
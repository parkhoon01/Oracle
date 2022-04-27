-- UPDATE : 테이블에 있는 데이터 변경하기
-- UPDATE 테이블명
-- SET 컬럼01 = 값01,
--     컬럼02 = 값02,
--     컬럼03 = 값03
--     ...
--     WHERE 조건

-- CTAS
CREATE TABLE dept_temp2
AS
SELECT * FROM dept;

SELECT * FROM dept_temp2;
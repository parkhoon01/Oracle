-- 컬럼의 데이터 크기 변경
DESC dept7;

-- loc VARCHAR2(10) -> VARCHAR2(20)
ALTER TABLE dept7
MODIFY (loc VARCHAR2(20));
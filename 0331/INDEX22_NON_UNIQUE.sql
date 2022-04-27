-- NON UNIQUE INDEX
-- 인덱스를 만드는 컬럼에 중복되는 데이터가 없다.(중복이 현재, 미래에도 없다)
-- 문법)
-- CREATE INDEX 인덱스명
-- ON 테이블 이름(컬럼 ASC/DESC, 컬럼);

-- dept2 테이블의 area 컬럼에 non-unique index생성
CREATE INDEX idx_dept2_area
ON dept2 (area);

ALTER SESSION SET STATISTICS_LEVEL = ALL;

SELECT /*+ INDEX_ASC(t1 IDX_DEPT2_AREA) */ *
FROM dept2 t1
WHERE area > '0';

SELECT COUNT(*) FROM dept2;

SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR(NULL,NULL,'ALLSTATS LAST -ROWS +PREDICATE'));
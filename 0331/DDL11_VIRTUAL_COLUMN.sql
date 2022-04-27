-- 1. 가상 컬럼을 가지는 테이블 생성
CREATE TABLE vt1(
    COL1 number,
    COL2 number,
    COL3 number GENERATED ALWAYS AS (COL1 + COL2)
);

-- 2. 테이블에 데이터 입력(가상컬럼에 직접 데이터 입력 안됨!)
INSERT INTO vt1 VALUES (1,2,3);

INSERT INTO vt1(col1,col2) VALUES (1,2);

-- 데이터 조회
SELECT * FROM vt1;

-- col1의 값 1에서 5 변경
UPDATE vt1 
   SET col1 = 5;
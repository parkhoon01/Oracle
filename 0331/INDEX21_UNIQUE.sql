-- 인덱스
-- 데이터베이스 성능과 관련해서 정말 중요한 역활을 한다.
-- 인덱스는 양날의 칼이라 잘 사용하면 정말 좋지만 잘못 쓰게 될 경우 오히려 성능 저하의 주범

-- UNIQUE INDEX
-- 인덱스를 만드는 컬럼에 중복되는 데이터가 없다.(중복이 현재, 미래에도 없다)
-- 문법)
-- CREATE UNIQUE INDEX 인덱스명
-- ON 테이블 이름(컬럼 ASC/DESC, 컬럼);
DESC dept2;
SELECT * FROM dept2;

-- dept2 테이블에 DNAME에 unique index 생성
CREATE UNIQUE INDEX IDX_DEPT2_DNAME
ON  dept2 (dname);

INSERT INTO dept2 VALUES ('9100','temp01','1006','Seoul Branch Office');
-- dname 중복
INSERT INTO dept2 VALUES (9100,'temp01','1006','Seoul Branch Office');

-- unique index가 성능은 아주 좋은데, 혹시 현재 중복된 값이 없다 하더라도
-- 향후에 중복된 값이 입력될 가능성이 있는 컬럼에는 사용될 수 없다.
-- t3, t4 테이블 생성
CREATE TABLE t3(
    no NUMBER,
    name VARCHAR2(10),
    deptno NUMBER
);

INSERT INTO t3 values(1,'AAA',100);
INSERT INTO t3 values(2,'BBB',200);
INSERT INTO t3 values(3,'CCC',300);

COMMIT;

CREATE TABLE t4(
    deptno NUMBER,
    dname VARCHAR2(10)
);

INSERT INTO t4 values(100,'DDD');
INSERT INTO t4 values(100,'EEE');

INSERT INTO t4 values(200,'FFF');

INSERT INTO t4 values(300,'GGG');

COMMIT;
SELECT * FROM t3;
SELECT * FROM t4;
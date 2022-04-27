SELECT * FROM dept_tcl;

-- DEPT_TCL DML 작업
-- INSERT
-- UPDATE
-- DELETE
-- SELECT 확인

INSERT INTO dept_tcl VALUES(50,'DATABASE','SEOUL');

UPDATE dept_tcl SET loc = 'BUSAN'
 WHERE deptno = 40;
 
DELETE FROM dept_tcl WHERE dname = 'RESEARCH';

SELECT * FROM dept_tcl;

--10	ACCOUNTING	NEW YORK
--30	SALES	    CHICAGO
--40	OPERATIONS	BUSAN
--50	DATABASE	SEOUL

-- 트랜잭션 영구 반영
COMMIT;
-- 트랜잭션 영구 반영 확인
SELECT * FROM dept_tcl;

--10	ACCOUNTING	NEW YORK
--30	SALES	    CHICAGO
--40	OPERATIONS	BUSAN
--50	DATABASE	SEOUL

-- DDL(DATA Definition Language)
-- CREATE,ALTER,TRUNCATE,DROP
-- 명령어를 수행하자 마자 데이터 베이스에 바로 반영된다.
-- CREATE(생성)
--  데이터베이스 객체를 생성하는데 사용하는 명령어
--  CREATE TABLE 소유계정.테이블 이름(
--  열1이름 열1자료형
--  열2이름 열2자료형
--  열3이름 열3자료형
--  ...
--  )
-- WITH 절을 사용하여 원하는 테이블을 메모리에 미리 뷰처럼 가상의 테이블로 생성시킨 후
-- 테이터를 가져오는 기법이다.
-- 대용량의 테이블을 생성한 후 최대값과 최소값의 차이 구하기

-- 물리적인 테이저 저장소 위치
SELECT  t1.tablespace_name,
        t1.bytes/1024/1024 MB,
        t1.file_name
FROM dba_data_files t1
;
-- 필요한 만큼 자동으로 저장용량이 증가되도록 설정.
ALTER DATABASE DATAFILE 
AUTOEXTEND ON;
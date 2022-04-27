-- SCOTT에서 사용가능한 DICTIONARY 정보 보기
SELECt COUNT(*)
FROM dict;

-- USER_ 접두어를 가진 데이터 
SELECT  t1.table_name
FROM user_tables t1;

-- ALL_ 접두어를 가진 데이터
SELECT  t1.owner,
        t1.table_name,
        t1.tablespace_name,
        t1.num_rows
FROM all_tables t1
WHERE t1.owner = 'ADMIN';

-- DBA_ 접두어를 가진 데이터
SELECT *
FROM DBA_TABLES;
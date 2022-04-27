-- SYSDATE : 시스템의 현재 날짜와 시간 절대 오라클이 설치되어 있는 서버의 시간은 함부로 변경하면 안된다.
SELECT  SYSDATE
FROM dual
;

-- 날짜 FORMAT 변경하기 (1회성)
--ALTER SESSION SET NLS_DATE_FORMAT = 'RRRR-MM-DD:HH24:MI:SS';

SELECT  SYSDATE + 1 AS tomorrow,
        SYSDATE - 1 AS yesterday
FROM dual
;
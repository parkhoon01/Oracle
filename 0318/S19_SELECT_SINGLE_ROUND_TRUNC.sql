-- 날짜 반올림, 버림을 하는 ROUND, TUNC함수
SELECT  SYSDATE,
        ROUND(SYSDATE) AS "ROUND_SYSDATE",
        TRUNC(SYSDATE) AS "TRUNC_SYSDATE"
FROM dual
;
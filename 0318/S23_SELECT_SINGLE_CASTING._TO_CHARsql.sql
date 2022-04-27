-- TO_CHAR : 숫자 또는 날짜 데이터를 문자로 변환
SELECT  SYSDATE,
        TO_CHAR(SYSDATE, 'YYYY/MM/DD HH24:MI:SS') AS TO_CHAR_FORMAT,
        TO_CHAR(SYSDATE, 'yyyy/mm/dd hh24:mi:ss') AS TO_CHAR_FORMAT, -- 대소문자 구분하지 않음
        TO_CHAR(SYSDATE, 'MONTH') AS "MONTH",
        TO_CHAR(SYSDATE, 'DDD') AS "DDD"
FROM dual
;
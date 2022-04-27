-- NEXT_DAY(날짜 데이터, 요일문자)
-- 특정 날짜를 기준으로 돌아오는 요일의 날짜를 출력해 주는 함수.
-- WINDOWS : NEXT_DAY(SYSDATE, '금요일')
-- UNIS : NEXT_DAY(SYSDATE, 'MON')
SELECT  SYSDATE,
        NEXT_DAY(SYSDATE,'월요일') AS "NEXT_DAY_월",
        LAST_DAY(SYSDATE) AS "3월의 마지막 날짜"
FROM dual
;
-- 2018-07-13 23:56:28
SELECT  STD_DATE,
        ROUND(STD_DATE,'CC')   AS ROUND_CC,     -- 연도끝 2자리 2018이면 2050이하 이므로 2001
        ROUND(STD_DATE,'YYYY') AS ROUND_YYYY,   -- 2018-07-13 기준으로 반올림
        ROUND(STD_DATE,'Q')    AS ROUND_Q,      -- 각 분기의 2번째 달 16일 기준
        ROUND(STD_DATE,'DDD')  AS ROUND_DDD,    -- 해당일 정오(12:00)
        ROUND(STD_DATE,'HH')   AS ROUND_HH      -- 시간을 기준으로 반올림
FROM(
    SELECT  TO_DATE('2018-07-13 23:56:28','YYYY-MM-DD HH24:MI:SS') STD_DATE
    FROM dual
)
;
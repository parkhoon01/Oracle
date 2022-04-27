SELECT  CASE WHEN comm IS NULL THEN 'X'
             ELSE 'O'
        END AS "EXIST_COMM",
        COUNT(*) AS "CNT"
FROM emp
GROUP BY CASE WHEN comm IS NULL THEN 'X'
             ELSE 'O'
        END
ORDER BY CASE WHEN comm IS NULL THEN 'X'
             ELSE 'O'
        END DESC
;
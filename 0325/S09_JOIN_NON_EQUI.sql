-- oracle join
SELECT  c1.gname,
        g1.gname,
        TO_CHAR(c1.point,'999,999,999') AS GIFT_NAME
FROM customer c1, gift g1
WHERE c1.point >= g1.g_start 
AND   c1.point <= g1.g_end
;

-- ansi join
SELECT  c1.gname AS CUST_NAME,
        g1.gname AS POINT,
        TO_CHAR(c1.point,'999,999,999') AS GIFT_NAME
FROM customer c1 JOIN gift g1
ON  c1.point >= g1.g_start 
AND c1.point <= g1.g_end
;
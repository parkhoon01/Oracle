--Customer 테이블과 gift 테이블을 Join하여 고객별로 마일리지 포인트를 조회한 후 해당 마일리지 점수로 
--받을 수 있는 상품을 조회하여 고객의 이름과 받을 수 있는 상품 명을 아래와 같이 출력하세요.
-- oracle join
SELECT  c1.gname,
        g1.gname,
        c1.point
FROM customer c1, gift g1
WHERE c1.point BETWEEN g1.g_start AND g1.g_end
;

-- ansi join
SELECT  c1.gname AS CUST_NAME,
        g1.gname AS POINT,
        TO_CHAR(c1.point,'999,999,999') AS GIFT_NAME
FROM customer c1 JOIN gift g1
ON c1.point BETWEEN g1.g_start AND g1.g_end
;
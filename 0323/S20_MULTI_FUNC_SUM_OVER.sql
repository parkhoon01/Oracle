--예 2)
-- panmae 테이블을 사용하여 1000 번 대리점의 판매 내역을 제품 코드별로 분류한 후 판매일자, 제품코드, 판매량, 판매금액
-- , 누적판매금액을 아래와 같이 출력하세요.
SELECT  P_date,
        P_code,
        P_qty,
        P_total,
        SUM(P_total) OVER(PARTITION BY P_code ORDER BY P_total) AS "TOTAL"
FROM panmae
WHERE P_STORE = 1000
;
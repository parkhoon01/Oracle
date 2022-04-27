-- SUM() OVER
--예 1)  panmae 테이블을 사용하여 1000 번 대리점의 판매 내역을 출력하되 판매일자, 제품코드, 판매량, 
--누적 판매금액을 아래와 같이 출력하세요.
SELECT  P_date,
        P_code,
        P_qty,
        P_total,
        SUM(P_total) OVER(ORDER BY P_total) AS "TOTAL"
FROM panmae
WHERE P_STORE = 1000
;
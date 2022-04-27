--loan 테이블을 사용하여 1000번 지점의 대출 내역을 출력하되 대출일자, 대출종목코드, 대출건수, 																					
--대출총액, 누적대출금액을 아래와 같이 출력하세요.
SELECT  L_date AS "대출코드",
        L_code AS "대출종목코드",
        L_qty AS "대출건수",
        L_total AS "대출총액",
        SUM(L_total) OVER(ORDER BY L_date,L_code) AS "누적대출금액"
FROM loan
WHERE L_store = 1000
;
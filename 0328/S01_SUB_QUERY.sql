-- SUB QUERY
-- 하난의 쿼리 안에 또 다른 하나의 쿼리가 담겨 있는 것을 말합니다.
-- SELECT select_list
-- FROM TABLE 또는 VIEW
-- WHERE 조건 연산자( SELECT select_list
--                  FROM table
--                  WHERE 조건);
-- EMP 테이블에서 WARD보다 COMM을 적게 받는 사람의 이름과 comm을 출력
SELECT  ename,
        comm
FROM emp
WHERE comm < (SELECT comm
              FROM emp
              WHERE ename = 'WARD'
             )
;
-- 테이블에서 가상 컬럼 내역을 조회
SELECT  column_name,
        data_type,
        data_default
FROM user_tab_columns
WHERE table_name = 'VT1'
ORDER BY column_id
;
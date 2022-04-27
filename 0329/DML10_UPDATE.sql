-- 전체 데이터 수정
-- loc를 모두 SEOUL로 변경
SELECT * FROM dept_temp2;

UPDATE dept_temp2
   SET loc = 'SEOUL'
;
ROLLBACK;
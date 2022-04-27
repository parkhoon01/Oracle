-- 삭제 테이블 쓰레기 통에서 복구
-- 1. flashback확인
-- 2. 복원

-- 1. flashback
SELECT  object_name,
        original_name,
        createtime
FROM recyclebin;


-- 2. 복원
flashback table "BIN$23t7MWM6miDgUxoQAAqAOg==$0" TO BEFORE DROP;
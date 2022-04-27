-- 결합 인덱스 : WHERE 정레 조건 컬럼이 2개 이상 AND로 연결되어 함께 사용되는 경우 사용.
-- 아주 많이 사용하는 인덱스. 단, 잘못 생성하면 성능에 아주 나쁜 영향을 준다.
-- 1. emp테이블에 인원이 100명, 그중에 남자50명, 여자 50명이라 가정
--      남자 중에 SMITH인 사람이 단 2명 있다고 가정. (이름 -> 성별)
CREATE INDEX idx_emp_comp
ON emp( ename ASC, job DESC);

SELECT /*+ INDEX_ASC(t1 IDX_EMP_COMP) */*
FROM emp t1
WHERE t1.ename > '0';
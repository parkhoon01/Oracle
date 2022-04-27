SELECT  no,name FROM cat_a
UNION ALL
SELECT  no,name FROM cat_b
UNION ALL
SELECT  no,name FROM cat_c
;
-- 1.정상적인 조인
SELECT  cat_a.name,cat_b.name
FROM cat_a, cat_b
WHERE cat_a.no = cat_b.no
;

-- 3. 3개 테이블 정상 조인
SELECT  a.name,
        b.name, 
        c.name, 
        b.no
FROM cat_a a, cat_b b, cat_c c
WHERE a.no = b.no
AND   b.no = c.no
;

-- 4. 3테이블 카티션 곱
SELECT  a.name,
        b.name, 
        c.name, 
        b.no
FROM cat_a a, cat_b b, cat_c c
WHERE a.no = b.no
AND   b.no = c.no
;
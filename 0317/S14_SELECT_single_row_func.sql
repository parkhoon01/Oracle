-- UPPER : 소문자를 대문자로
-- LOWER : 대문자를 소문자로
-- INITCAP : 첫 글자만 대문자로
SELECT  ename, 
        LOWER(ename) AS lower_name,
        UPPER(ename) AS upper_name,
        INITCAP(ename) AS initcap_name
FROM emp
;

-- UPPER 함수로 문자열 비교하기(사원이름이 SCOTT인 데이터 찾기)
SELECT *
FROM emp
WHERE ename = UPPER('scott')
;

-- 사원의 이름이 대문자로 출력되도록 하시오.
SELECT UPPER(ename)
FROM emp
;
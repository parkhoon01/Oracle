-- 정규식(Regular Expression)
-- SQL의 문장에서도 유닉스에서 사용하는 정규식을 사용하여 다양한 검색을 할 수 있다.

-- ^pattern -> 해당 문자로 시작하는 line 출력
-- pattern$ -> 해당 문자로 끝나는 line 출력
-- S....E -> S로 시작해서 E로 끝나는 line 출력(.은 1글자)
-- [a-z]* -> 모든 이라는 뜻, 글자수가 0일수도 있음
-- [Pp]pattern -> 해당 문자에 해당하는 한 문자
-- [^a-m] -> 해당 문자가 해당하지 않는 한 문자

--DESC t_reg;
SELECT text
FROM t_reg
;

--REGEXP_LIKE(text,REGEXP)
-- 소문자가 들어있는 행을 모두 출력
SELECT text
FROM t_reg
WHERE REGEXP_LIKE(text,'[a-z]')
;

-- 대문자,소문자가 들어있는 행을 모두 출력
SELECT text
FROM t_reg
--WHERE   REGEXP_LIKE(text,'[a-zA-Z]')
WHERE   REGEXP_LIKE(text,'[A-z]')
;

-- 소문자로 시작하고 공백을 포함하는 경우 찾기
SELECT text
FROM t_reg
WHERE   REGEXP_LIKE(text,'[a-z] ')
;

-- 연속적인 글자수 지정하기
-- [A-Z]{2} -> 대문자가 연속 2개이상 인것
SELECT text
FROM t_reg
WHERE   REGEXP_LIKE(text,'[A-Z]{2}')
;

-- 숫자가 연속적으로 3개이상 인것
SELECT text
FROM t_reg
WHERE   REGEXP_LIKE(text,'[0-9]{3}')
;

-- 특정 위치를 지정해서 출력하기
-- 영문자로 끝나는
SELECT text
FROM t_reg
WHERE   REGEXP_LIKE(text,'[A-z]$')
;

-- student 테이블에서 id가 Ma|Mo 로 시작하는
SELECT  id
FROM student
WHERE REGEXP_LIKE(id, '^M(a|o)')
;
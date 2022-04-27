-- professior 테이블에서 학과 번호와 교수명과 학과명을 출력하되 deptno가 101번인 교수만
-- "Computer Engineering"
SELECT  deptno,
        name,
        DECODE(deptno,101,'Computer Engineering', 'ETC') AS DNAME
FROM professor
;
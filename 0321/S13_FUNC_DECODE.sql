-- DECODE(A,B,'1',C,'2','3')
-- A가 B인 경우 1, A가 C인경우 2를 둘 다 아닌경우 3
SELECT  deptno,
        name,
        DECODE(deptno,101,'Computer Engineering',
                      102,'Multimedia Engineering',
                      103,'Software Engineering',
                          'ETC') AS DNAME
FROM professor
;
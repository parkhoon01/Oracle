-- emp 테이블에서 이름 첫 두글자를 **로 표시
SELECT  ename,
        REPLACE(ename,SUBSTR(ename,1,2),'**') AS "**NAME"
FROM emp
;
UPDATE CHAP10HW_EMP
   SET deptno = 70
 WHERE empno IN (SELECT empno
                 FROM CHAP10HW_EMP
                 WHERE sal > (SELECT  AVG(NVL(sal,0))
                              FROM CHAP10HW_EMP
                              WHERE deptno = 50)
     )
;
SELECT * 
FROM CHAP10HW_EMP 
ORDER BY deptno DESC;
COMMIT;
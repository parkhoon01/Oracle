UPDATE CHAP10HW_EMP
   SET deptno = 80,
       sal = sal*1.1
 WHERE empno IN(SELECT  empno
                FROM CHAP10HW_EMP
                WHERE hiredate  > (SELECT MIN(hiredate)
                                   FROM CHAP10HW_EMP
                                   WHERE deptno = 60)
               )
;
SELECT * 
FROM CHAP10HW_EMP
WHERE deptno = 80
;
COMMIT;
ROLLBACK;
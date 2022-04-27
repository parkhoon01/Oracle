UPDATE emp_temp
   SET comm = 50
WHERE sal <= 2500
;

COMMIT;

SELECT * FROM emp_temp;
SELECT  empno as "EMPLOYEE_NO",
        ename as "EMPLOYEE_NAME",
        mgr   as "MANAGER",
        sal   as "SALARY",
        comm  as "COMMISSION",
        deptno as "DEPARTMENT_NO"
FROM emp
ORDER BY deptno DESC, ename ASC;
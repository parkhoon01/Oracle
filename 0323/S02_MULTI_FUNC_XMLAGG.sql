-- XMLELEMENT : 
SELECT  deptno,
        SUBSTR(XMLAGG(XMLELEMENT(name,',',ename) ORDER BY hiredate)
        .EXTRACT('//text()').getStringVal(),2) AS "xml_ename"
FROM emp
GROUP BY deptno
;
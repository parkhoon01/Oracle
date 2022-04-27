SELECT  MAX(DECODE(day,'SUN',dayno)) AS "SUN",
        MAX(DECODE(day,'MON',dayno)) AS "MON",
        MAX(DECODE(day,'TUE',dayno)) AS "TUE",
        MAX(DECODE(day,'WED',dayno)) AS "WED",
        MAX(DECODE(day,'THU',dayno)) AS "THU",
        MAX(DECODE(day,'FRI',dayno)) AS "FRI",
        MAX(DECODE(day,'SAT',dayno)) AS "SAT"
FROM cal
GROUP BY weekno
ORDER BY weekno
;
--SELECT  t1.weekno,
--        t1.day,
--        t1.dayno
--FROM cal t1
--;
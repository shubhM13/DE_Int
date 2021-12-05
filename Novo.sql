cty, continent, pop
Inidia  Asia     1B
China   Asia    2B

select distinct A.continent
from 
(select continent, count(distinct country) AS totalCty
from table
group by continent) AS A

inner join

(select continent, count(ditinct country) AS smallCty
from table
where pop < 500M
group by continent) AS B

ON A.continent = B.continent

where totalCty = smallCty


Applications table : appId, name, et al.. => 10 APPS
Applications Event : appId, event, TS


event : STARTED, COMPLETED, ACCEPTED
SELECT APPi
SELECT DISTINCT A.APPID,
                CASE WHEN B.EVENT = 'STARTED'
                THEN B.TS 
                ELSE NULL
                END AS APP_START_TS,
                CASE WHEN B.EVENT = 'COMPLETED'
                THEN B.TS AS APP_START_TS
                ELSE NULL
                END,
                CASE WHEN B.EVENT = 'ACCEPTED'
                THEN B.TS AS APP_START_TS
                ELSE NULL
                END


1  S 
1  C  
1  A
2

1  S  12:00  null null
1  C  00:00   
1  A  00:00
2


.SELECT.FILTER .MAPS


--------------------------------------------------
TRANSACTIONS: TXID, USERID, AMOUNT,  TS       [SUM]
               1    101       10    12:00

SELECT A.*, SUM(B.AMOUNT) AS CUM_AMOUNT
FROM TBL AS A
INNER JOIN TBL AS B ON A.USERID = B.USERID
AND B.TS <= A.TS AND B.TS >= A.TS - TO_TIMESTAMP('00:12:00')
GROUP BY A.TXID, A.USERID, A.AMOUNT, A.TS


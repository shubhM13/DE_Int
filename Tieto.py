1) Snowflake : Snowpipe, Streams, Tasks
2) ADF : LS, Getmetadata, For Each, Delete File
3) Synapse: Distributions: RR, Hash, Replicated
4) Spark: Repartition, Coalesce, Shuffling, Optimization Techniques, Delta Tables, Delta Lake Architecture, Lakehouse Arhcitecture
5) Logic Apps for Email Trigger 
6) SQL: Analytical and Window Functions
7) Python: String and List functions(append & Extend)
8) DWH: Star, Snowflake Schema, Surrogate Keys, Role Playing Dimensions, SCD Type 1 & 2, ODS, EDW, Data Mart
---------------------------------------------------------------------//

Table 1:
column
1
1
Table 2:
1
1
1
Inner Join? := 6
Left outer join? := 6
Right outer join? := 6
Full outer join? := 6
Cross join? := 6

------------------------------------------------------------------------//
TBL : ID, NAME, OCCUPATION : CASE WHEN base query
------------------------------------------------------------------------//

TBL3: COMP, NAME, POWER

SELECT A.COMP,
       A.NAME
FROM (
    SELECT *,
           DENSE_RANK() OVER(ORDER BY POWER DESC) AS RNK
    FROM TBL3
) AS A 
WHERE A.RNK = 2;

-----------------------------------------------------------------------------//

String1 = “Malayalam”
Check if string is palindrome or not? Note that its not string.

def checkalindrome(string):
    n = len(string)
    for i in (0, n):
        if string[i] != string[n-i-1]:
            return False
    return True

--------------------------------------------------------------------------------//

List= [0, 10,7,15,0,80,90]
move all the 0 in the last
output:
l1 = [10,7,15,80,90,0,0]
l2 = [10,7, 16]
l3 = [0,0]
l3.extend(l2)
key  = 0
for a in list:
    if a > k:
        swap(a,k)

----------------------------------------------------------------------------------//
    
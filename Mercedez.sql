--Write a query to find the employees who are working in the company for the past 5 years
EMP (EMPID, NAME, DOJ, SAL)

SELECT EMPID, NAME, SAL, DOJ
FROM EMP
WHERE YEAR(DOJ) <= YEAR(GETDATE()) - 5


--Write a query to select only those employee information who are earning the same salary?
SELECT EMPID, EMPNAME
FROM EMP AS A
INNER join(
SELECT SALARY, COUNT(DISTINCT EMPID)
FROM EMP 
GROUP BY salary
HAVING COUNT(DISTINCT EMPID) > 2) AS B
ON A.SALARY = B.SALARY 


--Write a query to select maximum 2 salaries from each department of the EMP table
SELECT * FROM(
    SELECT *,
    DENSE_RANK() OVER (PARTITION BY DEPT ORDER BY SALARY DESC) AS RANK
FROM EMP)
WHERE RANK = 1 OR 2


--Write a query to find the maximum salary from the EMP table without using functions.
SELECT *
FROM (
    SELECT *,
            RANK OVER (ORDER BY SALARY DESC) AS RANK
)
WHERE RANK = 1

schemaString = "nama age"
fields = [StructField(field_name, StringType(), True) for feild_name in schemaString.split()]
schema = StructType(fields)
df = spark.read.csv("file1.csv", schema)
spark.write.parquet.save("target.csv")

--df2 = df.withColumnRemnamed('age', 'employeeAge')
df3 = df.withColumn('employeeage', df.age.cast(int))

for k,v in dict.getitems():
    print(k, )

lamda l: l.split(',')
lamda x: 


def validityCheck(email):
    //lower case & 0-9
    for char in email:
        //lowercase a:=97 & z:= 97+26 = 123
        if isalpha(char) && int(char) < 97 or int(char) > 123:
            return False
        else if isnum(char) && char <=0 or char >=9:
            return False
        else 
            return True

--------------------------------
--------------------------------
----------ROUND 2---------------
--------------------------------
--------------------------------

/*
Sources : S1, S2, S3, S4 (Cold) : S3
          S5 (Hot)              : Sensors

Target1: Data Lake: D1, D2, D3, D4, [CSV] | D5 [Streams]  --- Bronze Layer
Target2: Data Lake: [5 Parquet]                           --- Silver 
Target3: Modelling Layer:                                 --- Gold Layer
                            Fast Changing Dimension : D5 [100+ Cols + 4 FIxed Cols PK-FK]
                            SCD : D1, D2, D3, D4



Assuming we have all the paquet files finally into the Azure SQL DB for the Gold Layer (Modelling):
*/

ALTER TABLE D5 
ADD CONSTRAINT D5_D1_FK FOREIGN KEY (Col1) REFERENCES
D1(COL1);

ALTER TABLE D5 
ADD CONSTRAINT D5_D2_FK FOREIGN KEY (Col2) REFERENCES
D2(COL1);

ALTER TABLE D5 
ADD CONSTRAINT D5_D3_FK FOREIGN KEY (Col3) REFERENCES
D3(COL1);

ALTER TABLE D5 
ADD CONSTRAINT D5_D4_FK FOREIGN KEY (Col4) REFERENCES
D4(COL1);

--Insted of Using D5 table as a whole (100+) columns it would be better to create a view on top of base table to select relevant columns for 
-- dimensional modelling based on the business use case

CREATE VIEW IF NOT EXISTS D5_V 
AS 
SELECT COL1,
        COL2,
        Col3,
        Col4,
        COL5,
FROM D5;


SELECT * 
INTO D5_FACT
FROM 
D5_V;


ALTER TABLE D5_FACT
ADD CONSTRAINT D5_PK PRIMARY KEY (COL1);
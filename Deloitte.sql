1) DENSE_RANK base 2nd highest salary
2) ADLS Mounting approaches - Service Principle; Key based
3) Spark: Explode(), With Column withColumnRemnamed
4) ADF Scenarios: Get Metadata, For Each
5) Synapse : Pools


/*

PRIME NUMBER CHECK USING SQL

*/

DECLARE @i INT = 2;
DECLARE @prime INT = 0;
DECLARE @result NVARCHAR(1000) = '';--CAN BE ADJUSTED

WHILE (@i <= 1000)
BEGIN
	DECLARE @j INT = @i - 1;

	SET @prime = 1;

	WHILE (@j > 1)
	BEGIN
		IF @i % @j = 0
		BEGIN
			SET @PRIME = 0;
		END

		SET @j = @j - 1;
	END

	IF @PRIME = 1
	BEGIN
		SET @result += cast(@i AS NVARCHAR(1000)) + '&';
	END

	SET @i = @i + 1;
END

SET @result = SUBSTRING(@result, 1, LEN(@result) - 1)

SELECT @result
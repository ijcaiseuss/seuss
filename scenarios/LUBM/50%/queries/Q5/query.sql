DECLARE @memberOf TABLE(
s	INT,
o	INT);

INSERT INTO @memberOf
SELECT * FROM memberOf;

SELECT DISTINCT A0.s
FROM Person AS A0,@memberOf AS A1
WHERE A0.s=A1.s AND A1.o='299276';
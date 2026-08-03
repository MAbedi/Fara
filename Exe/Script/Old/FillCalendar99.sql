--rptMatrixBalanceF : qryMatrix
USE bsell_Dam
DECLARE @COls Bigint
DECLARE @Rows Bigint
DECLARE @CircleKind Bigint
DECLARE @Where varchar(1000)
DECLARE @ActiveColumns Bigint
DECLARE @ShareColumns Bigint
DECLARE @MatrixNo Bigint

SET @COls=135
SET @Rows=125
SET @CircleKind=0
SET @Where=' WHERE (Recipts.ReciptType IN(11))And (ISNULL(ReciptItems.ProductModel , 0) Between 0 And 4023)And (ISNULL(ReciptItems.StuffCode, 0) Between 0 And 100007)And (ISNULL(ReciptItems.ProductCode, 0) Between 0 And 100007)And (ISNULL(ReciptItems.UseUnitID, 0) Between 0 And 34)And (ISNULL(Recipts.PersonID1, 0) Between 0 And 9820019)And (ISNULL(Recipts.PersonID2, 0) Between 0 And 9820019)And (ISNULL(Recipts.PersonID3, 0)  Between 0 And 9820019)And (Recipts.ReciptDate Between ''1396/10/04'' And ''1399/03/19'')And ((CAST(SUBSTRING(Recipts.ReciptDate, 6, 2) AS int) Between 1 And 12 ))And ((CAST(RIGHT(Recipts.ReciptDate,2) AS int) Between 1 And 31 ))And (Recipts.ReciptNumber Between 1 And 251953)And (Recipts.StoreID Between 1 And 23)And (Recipts.YearID Between 0 And 1399)And ((LookUps_I.Code BETWEEN 0 AND 2147483647 OR ReciptItems.SecondTypeItem  IS NULL  ))And ((LookUps_M.Code BETWEEN 0 AND 0 OR Recipts.SecondType  IS NULL  ))'
SET @ActiveColumns=17
SET @ShareColumns=0
SET @MatrixNo=1

exec SP_MatrixUnlimit @COls , @Rows , @CircleKind
 , @Where , @ActiveColumns, @ShareColumns , @MatrixNo 

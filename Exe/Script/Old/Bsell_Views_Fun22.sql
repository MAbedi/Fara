--22  تاريخ 1402/12/12    
set nocount on
if exists (select * from sysobjects where id = object_id(N'Vu_ReciptsGrid') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view Vu_ReciptsGrid
GO

IF EXISTS (SELECT * FROM  sysobjects WHERE ID = object_id(N'JsonReplaceChars') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION JsonReplaceChars
GO
IF EXISTS (SELECT * FROM  sysobjects WHERE ID = object_id(N'Recal_CheckRemainEntity') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION Recal_CheckRemainEntity
GO
IF EXISTS (SELECT * FROM  sysobjects WHERE ID = object_id(N'GetWeekDayInNextWeek') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION GetWeekDayInNextWeek
GO
IF EXISTS (SELECT * FROM  sysobjects WHERE ID = object_id(N'AllAccountItemR2andF3') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION AllAccountItemR2andF3
GO
IF EXISTS (SELECT * FROM  sysobjects WHERE ID = object_id(N'GetParentForm') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION GetParentForm
GO
IF EXISTS (SELECT * FROM  sysobjects WHERE ID = object_id(N'GetParentForm2') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION GetParentForm2
GO
IF EXISTS (SELECT * FROM  sysobjects WHERE ID = object_id(N'GetpreUnitSellPrice') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION GetpreUnitSellPrice
GO
IF EXISTS (SELECT * FROM sysobjects WHERE name = 'GetpreReciptItemID' AND type = 'P')
DROP PROCEDURE  GetpreReciptItemID
GO



IF EXISTS (SELECT * FROM  sysobjects WHERE ID = object_id(N'CustomersGroupSellsTypeCodes') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION CustomersGroupSellsTypeCodes
GO
IF EXISTS (SELECT * FROM  sysobjects WHERE ID = object_id(N'GetSellsName') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION GetSellsName
GO
IF EXISTS (SELECT * FROM  sysobjects WHERE ID = object_id(N'PrintCountingLabel') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION PrintCountingLabel
GO
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id( N'view_CheckAcconting') AND OBJECTPROPERTY(id, N'IsView') = 1)
drop view view_CheckAcconting
GO
IF EXISTS (SELECT * FROM  sysobjects WHERE ID = object_id(N'Service_StuffEntity') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION Service_StuffEntity
GO
IF OBJECT_ID ('TR_UpdateAcconting', 'TR') IS NOT NULL 
DROP TRIGGER TR_UpdateAcconting
GO
 IF OBJECT_ID ('TR_DeleteAcconting', 'TR') IS NOT NULL
DROP TRIGGER TR_DeleteAcconting
GO
 IF OBJECT_ID ('TR_UpdateTozinDate', 'TR') IS NOT NULL
DROP TRIGGER TR_UpdateTozinDate
GO

IF EXISTS (SELECT * FROM  sysobjects WHERE ID = object_id(N'GetPersonCaption') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION GetPersonCaption
GO
IF EXISTS (SELECT * FROM  sysobjects WHERE ID = object_id(N'StoreEntity') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION StoreEntity
GO
IF EXISTS (SELECT * FROM  sysobjects WHERE ID = object_id(N'GetCustomerCaption') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION GetCustomerCaption

IF EXISTS (SELECT * FROM  sysobjects WHERE ID = object_id(N'rptStuffOrderPoint_Special') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION rptStuffOrderPoint_Special
GO
IF EXISTS (SELECT * FROM sysobjects WHERE name = 'AuditLog' AND type = 'P')
DROP PROCEDURE  AuditLog
GO
IF EXISTS (SELECT * FROM  sysobjects WHERE ID = object_id(N'GetFirstChar') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION GetFirstChar
GO
IF EXISTS (SELECT * FROM sysobjects WHERE name = 'GetUser_FlowFroms' AND type = 'P')
DROP PROCEDURE  GetUser_FlowFroms
GO
IF EXISTS (SELECT * FROM  sysobjects WHERE ID = object_id(N'[dbo].[Fn_chk_ExistAttachments]') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION dbo.Fn_chk_ExistAttachments
GO
IF EXISTS (SELECT * FROM  sysobjects WHERE ID = object_id(N'[dbo].[Android_StuffEntity]') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION dbo.Android_StuffEntity
GO
IF EXISTS (SELECT * FROM  sysobjects WHERE ID = object_id(N'[dbo].[GETCaseIdMaxTime]') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION dbo.GETCaseIdMaxTime
GO
--IF EXISTS (SELECT * FROM  sysobjects WHERE ID = object_id(N'[dbo].[AllAccountItemOnPersonID3]') AND xtype IN (N'FN', N'IF', N'TF'))
--DROP FUNCTION [dbo].[AllAccountItemOnPersonID3]
--GO
if exists (select * from sysobjects where id = object_id(N'[dbo].[bsell_variance]') AND xtype in (N'FN', N'IF', N'TF'))
drop FUNCTION [dbo].[bsell_variance]
GO
if exists (select * from sysobjects where id = object_id(N'CofferGeneralReport') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure CofferGeneralReport
GO
if exists (select * from sysobjects where id = object_id(N'Machin.GeneralReportMaintenance') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure Machin.GeneralReportMaintenance
GO
IF EXISTS (SELECT * FROM sysobjects WHERE name = 'FlowAccountCoffer' AND type = 'P')
DROP PROCEDURE  [dbo].[FlowAccountCoffer]
GO
IF EXISTS (SELECT * FROM sysobjects WHERE name = 'Android_GetNewCustomer' AND type = 'P')
DROP PROCEDURE  Android_GetNewCustomer
GO
IF EXISTS (SELECT * FROM sysobjects WHERE name = 'Android_GetNewCustomerID' AND type = 'P')
DROP PROCEDURE  Android_GetNewCustomerID
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'Android_GetNewStuffCoding' AND type = 'P')
DROP PROCEDURE  Android_GetNewStuffCoding
GO
IF EXISTS (SELECT * FROM sysobjects WHERE name = 'Android_GetNewStuffCodingID' AND type = 'P')
DROP PROCEDURE  Android_GetNewStuffCodingID
GO

IF EXISTS (SELECT * FROM sysobjects WHERE name = 'Android_NewRecipts' AND type = 'P')
DROP PROCEDURE  Android_NewRecipts
GO
IF EXISTS (SELECT * FROM sysobjects WHERE name = 'Android_NewReciptsWeb' AND type = 'P')
DROP PROCEDURE  Android_NewReciptsWeb
GO

--IF EXISTS (SELECT * FROM sysobjects WHERE name = 'LinksServer_NewRecipts' AND type = 'P')
--DROP PROCEDURE  LinksServer_NewRecipts
--GO
IF EXISTS (SELECT * FROM sysobjects WHERE name = 'Android_GetCustomerBalance' AND type = 'P')
DROP PROCEDURE  Android_GetCustomerBalance
GO
if exists (select * from sysobjects where id = object_id(N'WareHouseList') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW WareHouseList
GO
if exists (select * from sysobjects where id = object_id(N'InvoiceList') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW InvoiceList
GO
if exists (select * from sysobjects where id = object_id(N'Shifts') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW Shifts
GO
if exists (select * from sysobjects where id = object_id(N'AllAccSH') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW AllAccSH
GO
if exists (select * from sysobjects where id = object_id(N'FunctionTypes') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW FunctionTypes
GO
if exists (select * from sysobjects where id = object_id(N'Machin.MaintenanceKinds') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW Machin.MaintenanceKinds
GO
if exists (select * from sysobjects where id = object_id(N'view_ReciptItems') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW view_ReciptItems
GO
if exists (select * from sysobjects where id = object_id(N'Android_Customers') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW Android_Customers
GO
if exists (select * from sysobjects where id = object_id(N'Android_CustomersGroup') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW Android_CustomersGroup
GO
IF EXISTS (SELECT * FROM  sysobjects WHERE ID = object_id(N'[dbo].[ChkUsersOnFlow4Edit]') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION dbo.ChkUsersOnFlow4Edit
GO
if exists (select * from sysobjects where id = object_id(N'view_CofferGeneralReport') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW view_CofferGeneralReport
GO
if (SELECT COUNT(UserID) AS Expr1 FROM UsersCustomersGroups)=0
update config set ChkUsersCustomersGroupsActive=0 where ChkUsersCustomersGroupsActive<>0


--------------------------------------------------
-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE FUNCTION dbo.JsonReplaceChars (@Str nvarchar(4000))
RETURNS nvarchar(4000)
AS
BEGIN
    set @Str=REPLACE(@Str,'"','\"')
    set @Str=REPLACE(@Str,'"',' ')
    set @Str=REPLACE(@Str,'\','\\')
    set @Str=REPLACE(@Str,'/','\/')
    set @Str=REPLACE(@Str,char(10),'\n')   
    set @Str=REPLACE(@Str,char(13),'\n')   
	RETURN @Str

END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE  PROCEDURE CofferGeneralReport
 @BaseParam VARCHAR(50),
 @AddParam VARCHAR(3),
 @Filter VARCHAR(100),
 @SliceCodeFlag BIT,
 @SliceCaptionFlag BIT,
 @SqlWhere VARCHAR(2000)
  
AS
BEGIN

DECLARE @SqlSelect    VARCHAR(4000)
DECLARE @SqlJoin      VARCHAR(1000)
DECLARE @SqlGroup     VARCHAR(4000)
DECLARE @SqlTopic     VARCHAR(1000)
DECLARE @SqlFinal     VARCHAR(8000)

DECLARE @OldCode      VARCHAR(1000)
DECLARE @SliceCode    VARCHAR(1000)
DECLARE @SliceCaption NVARCHAR(1000)
 
DECLARE @ID           VARCHAR(2)
DECLARE @fldName      VARCHAR(200)
DECLARE @AliasName    VARCHAR(50)
DECLARE @tblName      VARCHAR(30)
DECLARE @TopicName    VARCHAR(200)
DECLARE @Current      VARCHAR(50) 
DECLARE @JoinFldName  VARCHAR(50)
DECLARE @CaptionName  NVARCHAR(50)

DECLARE @AddCustParam1    BIT
DECLARE @AddCustParam2    BIT
DECLARE @AddCustParam3    BIT
DECLARE @AddCustParamItem BIT
 
SET @SqlSelect    = ''
SET @SqlJoin      = '' 
SET @SqlGroup     = ''
SET @SqlTopic     = ''
SET @SqlFinal     = ''
SET @OldCode      = ''
SET @SliceCode    = ''
SET @SliceCaption = ''

SET @AddCustParam1    = 0
SET @AddCustParam2    = 0
SET @AddCustParam3    = 0
SET @AddCustParamItem = 0

DECLARE @SQLSUM NVARCHAR(1000);
SET @SQLSUM = '';

DECLARE @SqlView VARCHAR(8000)
SET @SqlView = '';

DECLARE @AccBank VARCHAR(250)
SET @AccBank = (SELECT AccountDBName FROM dbo.Config)

SET @Current = @BaseParam +','+ @AddParam 

DECLARE QAnalize CURSOR 
    FOR(
	     SELECT Util.Analyze.ID,TableName,FieldName,AliasName ,JoinFieldName,CaptionName,TopicName
	     FROM Util.Analyze  INNER JOIN SplitString(@Current,',') SP ON SP.part =  Util.Analyze.ID 
	    ); 

OPEN QAnalize 
FETCH FROM QAnalize INTO @ID, @tblName, @fldName, @AliasName, @JoinFldName, @CaptionName, @TopicName ;
WHILE @@FETCH_STATUS = 0 
BEGIN
     
       SET @SqlGroup = @SqlGroup +  ISNULL(@AliasName,@tblName) +'.'+@JoinFldName  +' , '+ ISNULL(@AliasName,@tblName) +'.'+ @TopicName +','

       SET @SqlSelect = @SqlSelect + ' ISNULL(CAST('+ ISNULL(@AliasName,@tblName) +'.'+@JoinFldName +' AS VARCHAR(100)),0) +''-''+ '
       SET @SqlTopic = @SqlTopic + ' ISNULL(CAST('+ISNULL(@AliasName,@tblName) +'.'+ @TopicName +' AS VARCHAR(100)),''--'') +''-''+ ' 
       
       IF (@SliceCaptionFlag  = 1)
       BEGIN
          SET @SliceCaption  =  @SliceCaption +  'ISNULL(CAST(' +ISNULL(@AliasName,@tblName) + '.' + @TopicName + ' AS NVARCHAR(100)),'':'') AS'+'['+'عنوان '+ @CaptionName +'],'      
       END
       
       IF (@SliceCodeFlag = 1)
       BEGIN 
          SET @SliceCode = @SliceCode + '  ISNULL(CAST('+ ISNULL(@AliasName,@tblName) + '.' +@JoinFldName +' AS VARCHAR(100)),0) '+ ' AS ['+@CaptionName+'], '
       END
   

          --AddCustomerGroup1
          IF (@ID = 74)
          BEGIN
             IF(@AddCustParam1 = 1)  GOTO FetchState;
             ELSE  SET @AddCustParam1 = 1          
          END
          IF (( @ID = 70) AND (@AddCustParam1 = 0)) 
          BEGIN
               SET @AddCustParam1 = 1
               SET @SqlJoin = @SqlJoin + ' INNER JOIN Customers C1 ON C1.CustID = Forms.CustomerID1 ' 
          END
          --AddCustomerGroup1
       
          
          --AddCustomerGroup2
          IF (@ID = 75)
          BEGIN
             IF(@AddCustParam2 = 1)  GOTO  FetchState;
             ELSE  SET @AddCustParam2 = 1          
          END
          IF (( @ID = 71) AND (@AddCustParam2 = 0)) 
          BEGIN
               SET @AddCustParam2 = 1
               SET @SqlJoin = @SqlJoin + ' INNER JOIN Customers C2 ON C2.CustID = Forms.CustomerID2 ' 
          END
          --AddCustomerGroup2
          
          
          --AddCustomerGroup3
          IF (@ID = 76)
          BEGIN
             IF(@AddCustParam3 = 1)  GOTO  FetchState;
             ELSE  SET @AddCustParam3 = 1          
          END
          IF (( @ID = 72) AND (@AddCustParam3 = 0)) 
          BEGIN
               SET @AddCustParam3 = 1
               SET @SqlJoin = @SqlJoin + ' INNER JOIN Customers C3 ON C3.CustID = Forms.CustomerID3 ' 
          END
          --AddCustomerGroup3
          
          
          --AddCustomerGroupItem
          IF (@ID = 77)
          BEGIN
             IF(@AddCustParamItem = 1)  GOTO  FetchState;
             ELSE  SET @AddCustParamItem = 1          
          END
          IF (( @ID = 73) AND (@AddCustParamItem = 0)) 
          BEGIN
               SET @AddCustParamItem = 1
               SET @SqlJoin = @SqlJoin + ' INNER JOIN Customers CItem ON CItem.CustID = FormItems.CustomerID2 ' 
          END
          --AddCustomerGroupItem

   --if @JoinFldName<>null
       SET @SqlJoin = @SqlJoin + ' INNER JOIN ' + @tblName + ' '+ISNULL(@AliasName ,'')+ ' ON ' +'ISNULL('+ @fldName +',0)'+' = ' + ISNULL(@AliasName,@tblName) +'.'+@JoinFldName
       
       FetchState: FETCH NEXT FROM QAnalize INTO @ID, @tblName,@fldName,@AliasName ,@JoinFldName ,@CaptionName,@TopicName ;

END

CLOSE QAnalize ;	
DEALLOCATE QAnalize ; 

 SET @SqlSelect = LEFT(@SqlSelect, LEN(@SqlSelect)-5)
 SET @SqlTopic = LEFT(@SqlTopic, LEN(@SqlTopic)-5) 
 SET @SqlGroup = @SqlGroup + @SqlTopic +','+ @SqlSelect 
 
 
 IF (@AddParam  <> '')
 BEGIN
	SELECT @OldCode = @OldCode + 'Cast(' + FieldName +' AS VARCHAR(20)) +''-''+'      
	FROM Util.Analyze  INNER JOIN SplitString(@BaseParam,',') SP ON SP.part = Util.Analyze.ID 

	SET @OldCode   =  LEFT (@OldCode, (LEN(@OldCode) - 5))  ; 
	
	IF (@Filter <> '') 
	BEGIN
		IF (@SqlWhere = '')  
			SET @SqlWhere =  ' WHERE '+ @OldCode +'='''+@Filter+' '''	
		ELSE		
			SET @SqlWhere =  @SqlWhere +' AND '+ @OldCode +'='''+@Filter+' '''		
	END;	
 END;

SET @SqlFinal = 'SELECT '+ @SliceCode+ @SliceCaption+ @SqlSelect +' As AllColumn , '+ @SqlTopic +' AS AllCaption, SUM(CASE WHEN FormItems.ItemAmount IS NULL THEN Forms.Amount ELSE FormItems.ItemAmount END) AS Amount'
			   + ' FROM Forms LEFT OUTER JOIN '
               + ' FormItems ON Forms.FormID = FormItems.FormID AND Forms.ServerID = FormItems.ServerID AND Forms.YearID = FormItems.YearID'
               + CHAR(13) + @SqlJoin 
               + CHAR(13) + @SqlWhere +' AND Forms.FormState < 3 '
               + CHAR(13) + ' GROUP BY ' + @SqlGroup

SET @SqlFinal = REPLACE(@SqlFinal , '%W%', @AccBank)

EXEC('IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id( N''view_CofferGeneralReport'') AND OBJECTPROPERTY(id, N''IsView'') = 1)'
                 +' DROP view view_CofferGeneralReport')

SET @SQLSUM = 'SUM(Amount) AS Amount '


--create view LowerCase
SET @SqlView =  'create view view_CofferGeneralReport  AS ' 
               + CHAR(13) + 'SELECT ''جمع:‏''AS [ ],' +  @SQLSUM + ' FROM (' 
               + CHAR(13) + @SqlFinal +') AS Temp'

--print @SqlView
--print @SqlFinal
EXEC (@SqlView)

EXEC (@SqlFinal)


END 
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

-------------------------------------------------
--------------------------------------------------

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE PROCEDURE [dbo].[FlowAccountCoffer]
@BaseParam  VARCHAR(30),	
@CirculationCode VARCHAR(30),
@Where VARCHAR(2000)
AS 

BEGIN

	DECLARE @FinalSql VARCHAR(4000)
	DECLARE @SelectionField VARCHAR(1000)
	DECLARE @EffectTypes VARCHAR(1000)
	DECLARE @Temp VARCHAR(1000)
	
	SET @SelectionField = ''
	
	SELECT @SelectionField = @SelectionField + 'CAST ( '+ FieldName +' AS Varchar(20)) +''-''+' 
	FROM Util.Analyze INNER JOIN dbo.SplitString(@BaseParam,',') SP ON SP.part = Util.Analyze.ID 

	SET @SelectionField = LEFT(@SelectionField, LEN(@SelectionField)-5)
	
	IF(@Where = '')
	   SET @Where = 'WHERE ' + @SelectionField + '='''+ @CirculationCode+''''
	ELSE 
	   SET @Where = @Where + 'AND ' + @SelectionField + '=''' + @CirculationCode+'''';
 
	SET @FinalSql ='SELECT Forms.FormID, Forms.ServerID, Forms.YearID, FormTypes.FormCaption, '
	                  + CHAR(13)+'Forms.FormNumber, Forms.FormDate, (CASE WHEN FormItems.ItemAmount IS NULL THEN Forms.Amount ELSE FormItems.ItemAmount END) AS Amount '
					  +',Forms.FomNote '
					  
	SET @FinalSql = @FinalSql + CHAR(13) +'FROM Forms   LEFT OUTER JOIN FormItems ON Forms.FormID = FormItems.FormID AND Forms.ServerID = FormItems.ServerID AND Forms.YearID = FormItems.YearID INNER JOIN'
				      + CHAR(13) + 'FormTypes ON Forms.FormType = FormTypes.FormType INNER JOIN '
				      + CHAR(13) + 'Customers AS C1 ON Forms.CustomerID1 = C1.CustID  LEFT OUTER JOIN'
				      + CHAR(13) + 'Customers AS C2 ON Forms.CustomerID2 = C2.CustID LEFT OUTER JOIN Customers AS C3 ON Forms.CustomerID3 = C3.CustID '
				      
					  + CHAR(13) + @Where
                      + CHAR(13) + 'ORDER BY Forms.FormDate, Forms.FormNumber'
                      
    PRINT (@FinalSql)
    EXEC (@FinalSql)
END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
-------------------------------------------------
--------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE VIEW WareHouseList
AS
SELECT        ReciptItems_Stock.ReciptNumber AS WareHouseDocCode, ReciptItems_Stock.DocNo AS WareHouseDocCode2, 
                         ReciptItems_Stock.ReciptDate AS WareHouseDocDate, ReciptItems_Stock.DocDate AS WareHouseDocDate2, 
                         ReciptItems_Stock.ReciptCaption AS WareHouseDocType, ReciptItems_Stock.StoreID AS WareHouseCode, ReciptItems_Stock.c_StoreName AS WareHouseName, 
                         ReciptItems_Stock.StuffCode AS ItemCode, StuffCoding.c_StuffName AS ItemDesc, Units.UnitName AS ItemUnit, 
                         ReciptItems_Stock.InputEntity + ReciptItems_Stock.OutputEntity AS Amount, ReciptItems_Stock.UnitSellPrice AS UnitPrice, 
                         ReciptItems_Stock.TotalInputPrice + ReciptItems_Stock.TotalOutputPrice AS TotalPrice, ReciptItems_Stock.PersonID1 AS OpponentCode, 
                         Customers_1.CustName AS OpponentName, ReciptItems_Stock.AidNumber, ReciptItems_Stock.PersonID2 AS OpponentCode2, 
                         Customers_2.CustName AS OpponentName2, ReciptItems_Stock.PersonID1 AS DarkhasteKalaCode, Customers_D.CustName AS DarkhasteKalaName, 
                         ReciptItems_Stock.YearID AS FiscalYear, ReciptItems_Stock.ReciptType
FROM            ReciptItems_Stock INNER JOIN
                         StuffCoding ON ReciptItems_Stock.StuffCode = StuffCoding.c_StuffCode INNER JOIN
                         Units ON StuffCoding.n_UnitCode = Units.UnitCode INNER JOIN
                         Customers AS Customers_1 ON ReciptItems_Stock.PersonID1 = Customers_1.CustID INNER JOIN
                         Customers AS Customers_2 ON ReciptItems_Stock.PersonID2 = Customers_2.CustID INNER JOIN
                         Customers AS Customers_D ON ReciptItems_Stock.PersonID1 = Customers_D.CustID

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
-------------------------------------------------
--------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE VIEW InvoiceList
AS
SELECT        Recipts.ReciptNumber AS InvoiceCode, Recipts.ReciptDate AS InvoiceDate, ReciptTypes.ReciptCaption AS SaleType, Recipts.StoreID AS WareHouseCode, 
                         Stores.c_StoreName AS WareHouseName, Recipts.DocNo AS WareHouseDocCode, ReciptItems.StuffCode AS ItemCode, StuffCoding.c_StuffName AS ItemDesc, 
                         Units.UnitName AS ItemUnit, ReciptItems.InputEntity + ReciptItems.OutputEntity AS Amount, ReciptItems.UnitSellPrice AS UnitPrice, 
                         ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice AS TotalPrice, Recipts.PersonID1 AS CustomerCode, Customers_1.CustName AS CustomerName, 
                         ReciptItems.DeficitValue+ ReciptItems.DeficitValue2 + ReciptItems.DeficitValue4+ ReciptItems.DeficitValue3 AS Discount, ReciptItems.TaxValue AS Vat, Customers_1.EconomicNumber AS EconomicCode, Recipts.YearID AS FiscalYear
FROM            Recipts INNER JOIN
                         ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND Recipts.YearID = ReciptItems.YearID INNER JOIN
                         StuffCoding ON ReciptItems.StuffCode = StuffCoding.c_StuffCode INNER JOIN
                         Stores ON Recipts.StoreID = Stores.n_StoreID INNER JOIN
                         Units ON StuffCoding.n_UnitCode = Units.UnitCode INNER JOIN
                         Customers AS Customers_1 ON Recipts.PersonID1 = Customers_1.CustID INNER JOIN
                         ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType
WHERE        (ReciptTypes.SellEffect > 0)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
-------------------------------------------------
--------------------------------------------------
----IF NOT EXISTS (SELECT Name FROM sysusers WHERE Name = N'OtherUser')
----begin
----CREATE LOGIN OtherUser WITH PASSWORD='fararayaneh', CHECK_POLICY = OFF;
----CREATE USER OtherUser FROM LOGIN OtherUser;
----end

--GRANT SELECT ON dbo.WareHouseList TO OtherUser;
--GRANT SELECT ON dbo.InvoiceList TO OtherUser;
-------------------------------------------------
--------------------------------------------------

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE VIEW Shifts
AS 
SELECT 0 AS ShiftID, 'صبح کار' AS Name
UNION ALL 
SELECT 1, 'عصر کار' 
UNION ALL 
SELECT 2, 'شب کار ' 
UNION ALL 
SELECT 3, 'سایر' 
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

-------------------------------------------------
--------------------------------------------------

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE VIEW FunctionTypes
AS 
SELECT 0 AS FunctionTypeID, 'حضور' AS Name
UNION ALL 
SELECT 1, 'مرخصی تشویقی' 
UNION ALL 
SELECT 2, 'مرخصي استحقاقي' 
UNION ALL 
SELECT 3, 'مرخصي ساعتي' 
UNION ALL 
SELECT 4, 'استعلاجي' 
UNION ALL 
SELECT 5, 'ماموريت' 
UNION ALL 
SELECT 6, 'آماده بكار' 
UNION ALL 
SELECT 7, 'عدم حضور تعطیلات' 
UNION ALL 
SELECT 8, 'غیبت' 
UNION ALL 
SELECT 9, 'سایر' 
UNION ALL 
SELECT 10, 'بارندگي' 
UNION ALL 
SELECT 11, 'استراحت' 
--UNION ALL 
--SELECT 12, 'مرخصي ساعتي' 
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

-------------------------------------------------
--------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE  FUNCTION GETCaseIdMaxTime (@PersonIdFrom int=1 ,@PersonIdTo int=999999, @Date2From Char(10)='0000/00/00', @Date2To Char(10)='9999/99/99'
)
RETURNS int 
BEGIN
  DECLARE @CaseId int
  
SELECT   TOP 1   @CaseId=  CaseId--, SUM(DATEDIFF(minute, StartHour, EndHour) + ISNULL(DATEPART(Hour, OverTime), 0) * 60 + ISNULL(DATEPART(minute, OverTime), 0)) AS TotalTime
From            Tsh.Functions
WHERE        (PersonId BETWEEN @PersonIdFrom AND @PersonIdTo) AND (FunctionDate BETWEEN @Date2From AND @Date2To)
GROUP BY CaseId, FunctionDate
ORDER BY SUM(DATEDIFF(minute, StartHour, EndHour) + ISNULL(DATEPART(Hour, OverTime), 0) * 60 + ISNULL(DATEPART(minute, OverTime), 0)) DESC, FunctionDate DESC

RETURN(@CaseId)
END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
-------------------------------------------------
--------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE  FUNCTION Android_StuffEntity (@StoreIDFrom int=1 ,@StoreIDTo int=999999, @StuffCodeFrom  bigint=1 ,@StuffCodeTo bigint=999999999999
     ,@YearIDFrom int=93 ,@YearIDTo int=93,@GroupIdFrom int=1 ,@GroupIdTo int=99999999  ,@SellsEmporium int = 1 
)
RETURNS table  AS  
return (
--SELECT        StuffCoding.GroupID, StuffGroups.GroupName, ManifestoItems.StuffCode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo, ManifestoItems.SellPrice1, 
--                         derivedtbl_Mojodi.Entity, derivedtbl_Mojodi.Weight, StuffGroups_2.GroupName AS GroupName2, StuffGroups_1.GroupName AS GroupName3, 
--                         StuffGroups_1.GroupID AS GroupID2
--FROM            ManifestoItems INNER JOIN
--                             (SELECT        TOP 1 ManifestoID
--                                FROM            Manifesto
--								--WHERE  SellsEmporium = @SellsEmporium
--                               ORDER BY LTRIM(RTRIM( ManifestoRunDate)) DESC, ManifestoID DESC) AS Manifesto_1 ON ManifestoItems.ManifestoID = Manifesto_1.ManifestoID INNER JOIN
--                         StuffCoding ON ManifestoItems.StuffCode = StuffCoding.c_StuffCode INNER JOIN
--                         Units ON StuffCoding.n_UnitCode = Units.UnitCode INNER JOIN
--                         StuffGroups ON StuffCoding.GroupID = StuffGroups.GroupID LEFT OUTER JOIN
--                             (SELECT        StuffCode, ROUND(SUM(InputEntity - OutputEntity), 3) AS Entity, ROUND(SUM(InputWeight - OutputWeight), 3) AS Weight
--                                FROM            ReciptItems_Stock
--                                WHERE        (StoreID BETWEEN @StoreIDFrom AND @StoreIDTo) AND (StuffCode BETWEEN @StuffCodeFrom AND @StuffCodeTo) 
--								    AND (YearID BETWEEN @YearIDFrom AND @YearIDTo)
									
--                                GROUP BY StuffCode) AS derivedtbl_Mojodi ON ManifestoItems.StuffCode = derivedtbl_Mojodi.StuffCode LEFT OUTER JOIN
--                         StuffGroups AS StuffGroups_1 ON StuffGroups.UperGroupId = StuffGroups_1.GroupID LEFT OUTER JOIN
--                         StuffGroups AS StuffGroups_2 ON StuffGroups_1.UperGroupId = StuffGroups_2.GroupID INNER JOIN
--                         StoreStuffs ON StuffCoding.c_StuffCode = StoreStuffs.c_StuffCode
SELECT DISTINCT StuffCoding.GroupID,dbo.JsonReplaceChars(StuffGroups.GroupName) AS GroupName, ManifestoItems_1.StuffCode
,dbo.JsonReplaceChars(StuffCoding.c_StuffName) AS c_StuffName, StuffCoding.c_StuffTecInfo,
                        (SELECT	TOP 1 isnull(ManifestoItems.SellPrice1,0)AS SellPrice1
                        FROM	Manifesto INNER JOIN
								ManifestoItems ON Manifesto.ManifestoID = ManifestoItems.ManifestoID
                        WHERE	(Manifesto.SellsEmporium = @SellsEmporium) 
								AND (ManifestoItems.StuffCode = ManifestoItems_1.StuffCode)
								AND (ManifestoItems.SellPrice1 > 0)
                        ORDER BY LTRIM(RTRIM(Manifesto.ManifestoRunDate)) DESC, Manifesto.ManifestoID DESC) AS SellPrice1, derivedtbl_Mojodi.Entity, derivedtbl_Mojodi.Weight, StuffGroups_2.GroupName AS GroupName2, 
			StuffGroups_1.GroupName AS GroupName3, StuffGroups_1.GroupID AS GroupID2
FROM		Manifesto     INNER JOIN
                         ManifestoItems ManifestoItems_1  ON Manifesto.ManifestoID = ManifestoItems_1.ManifestoID INNER JOIN
                         StuffCoding ON ManifestoItems_1.StuffCode = StuffCoding.c_StuffCode INNER JOIN
                         Units ON StuffCoding.n_UnitCode = Units.UnitCode INNER JOIN
                         StuffGroups ON StuffCoding.GroupID = StuffGroups.GroupID LEFT OUTER JOIN
                             (SELECT        StuffCode, ROUND(SUM(InputEntity - OutputEntity), 3) AS Entity, ROUND(SUM(InputWeight - OutputWeight), 3) AS Weight
                                FROM            ReciptItems_Stock
                                WHERE  (StoreID BETWEEN @StoreIDFrom AND @StoreIDTo) 
								   AND (StuffCode BETWEEN @StuffCodeFrom AND @StuffCodeTo) 
								   AND (YearID BETWEEN @YearIDFrom AND @YearIDTo)
                                GROUP BY StuffCode) AS derivedtbl_Mojodi ON ManifestoItems_1.StuffCode = derivedtbl_Mojodi.StuffCode LEFT OUTER JOIN
                         StuffGroups AS StuffGroups_1 ON StuffGroups.UperGroupId = StuffGroups_1.GroupID LEFT OUTER JOIN
                         StuffGroups AS StuffGroups_2 ON StuffGroups_1.UperGroupId = StuffGroups_2.GroupID  --LEFT OUTER JOIN--
						 INNER JOIN
                         StoreStuffs ON StuffCoding.c_StuffCode = StoreStuffs.c_StuffCode

WHERE  (  (StuffCoding.GroupID   BETWEEN @GroupIdFrom AND @GroupIdTo) 
        OR(StuffGroups_1.GroupID BETWEEN @GroupIdFrom AND @GroupIdTo)
		OR(StuffGroups_2.GroupID BETWEEN @GroupIdFrom AND @GroupIdTo)
	   )
       AND  (StoreStuffs.n_StoreID  BETWEEN @StoreIDFrom AND @StoreIDTo)
	   AND  (StuffCoding.State = 0)
	   AND  (Manifesto.SellsEmporium = @SellsEmporium) 

)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
-------------------------------------------------
--------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Fn_chk_ExistAttachments (@CheckNumber char(15) ,@FormItemID int ,@YearID int ,@ServerID  int  )
RETURNS varchar(1000) 
BEGIN
  Declare @IDs varchar(1000)
  SET @IDs =''

  IF (SELECT chkExistAttachments  FROM Config) =0
   RETURN(@IDs)
  SELECT   @IDs =@IDs +CASE @IDs WHEN '' then '' ELSE ',' END+
        LTRIM(STR(YearID))+'_'+LTRIM(STR(ServerID))+'_'+LTRIM(STR(FormID))+'_'+LTRIM(STR(FormItemID))
   +','+LTRIM(STR(YearID))+'_'+LTRIM(STR(ServerID))+'_'+LTRIM(STR(FormID))+'_'+LTRIM(STR(ISNULL( preFormItemID,0)))
    FROM            FormItems
     WHERE (CheckNumber = @CheckNumber) AND (YearID = @YearID) --AND ((ServerID = @ServerID)OR (PerServerID=@ServerID) )
	     AND (LEN( LTRIM(CheckNumber))>4)--AND (LEN( LTRIM(BankName))>1)
   RETURN(@IDs)
  
END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
-------------------------------------------------
--------------------------------------------------
-------------------------------------------------
--------------------------------------------------

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE VIEW Android_Customers
AS     
SELECT     dbo.CustomersGroup.CustomerGrpID, dbo.Customers.CustID, dbo.JsonReplaceChars(dbo.Customers.CustName) AS CustName, dbo.Customers.Mobile, dbo.Customers.Tel, dbo.Customers.Tel2, dbo.Customers.Tel3, dbo.Customers.Fax, 
                         dbo.JsonReplaceChars(dbo.Customers.Address) AS Address, dbo.Customers.CustomerNote, dbo.Customers.NationalID, dbo.Customers.email,dbo.Customers.EconomicNumber,dbo.Customers.PostalCode
FROM            dbo.Customers INNER JOIN
                         dbo.CustomersGroup ON dbo.Customers.CustomerGrpID = dbo.CustomersGroup.CustomerGrpID
WHERE        (dbo.CustomersGroup.GroupType IN (0)) AND (dbo.Customers.CustomerState = 0) AND (dbo.Customers.CustomerActive = 0)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

--------------------------------------------------
-------------------------------------------------

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE VIEW Android_CustomersGroup
AS 
SELECT        CustomerGrpID,cast ( CustomerGrpName as Nvarchar) as CustomerGrpName, StartCode, FinishCode
FROM            CustomersGroup
WHERE        (GroupType IN (0))
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------
-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE PROCEDURE Android_GetCustomerBalance @PersonID int , @YearIDFrom int,@YearIDTo int as								
BEGIN
SET NOCOUNT ON
DECLARE @DateTo char(10)
DECLARE @SellsMethodFrom Bigint
DECLARE @SellsMethodTo Bigint
DECLARE @SellsEmporiumFrom Bigint
DECLARE @SellsEmporiumTo Bigint
SET @DateTo='9999/99/99'
SET @SellsMethodFrom=0
SET @SellsMethodTo=999999999
SET @SellsEmporiumFrom=0
SET @SellsEmporiumTo=999999999
DECLARE @Returnbalance money


SELECT   
     --AllAcc.CustomerID1 AS PersonID1,  
     --                    SUM(CASE WHEN AllAcc.kind = 0 THEN AllAcc.bed - AllAcc.bes ELSE 0 END) AS FirstBalance, SUM(AllAcc.bed)
     --                    - CASE WHEN SUM(CASE WHEN AllAcc.kind = 0 THEN AllAcc.bed - AllAcc.bes ELSE 0 END)
     --                    > 0 THEN SUM(CASE WHEN AllAcc.kind = 0 THEN AllAcc.bed - AllAcc.bes ELSE 0 END) ELSE 0 END AS bed, SUM(CASE WHEN doctype IN (1, 2, 10)
     --                    THEN AllAcc.bes ELSE 0 END) - CASE WHEN SUM(CASE WHEN AllAcc.kind = 0 THEN AllAcc.bed - AllAcc.bes ELSE 0 END)
     --                    < 0 THEN - SUM(CASE WHEN AllAcc.kind = 0 THEN AllAcc.bed - AllAcc.bes ELSE 0 END) ELSE 0 END AS bes						 ,
						 @Returnbalance= SUM(CASE WHEN doctype IN (1, 2, 10)
                         THEN AllAcc.bed - AllAcc.bes ELSE 0 END) 


FROM     dbo.AllAccount(10, - 1, - 1, - 1, @PersonID, @PersonID, '', @DateTo, '',
     @YearIDFrom, @YearIDTo, @SellsMethodFrom, @SellsMethodTo, @SellsEmporiumFrom, @SellsEmporiumTo, DEFAULT)
    AS AllAcc 
--GROUP BY AllAcc.CustomerID1 
return @Returnbalance

END

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------
-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE PROCEDURE Android_GetNewCustomer  @ExternalId  Nvarchar(100) ,@CustID int , @CustomerGrpID INT,@CustFirstName NVARCHAR(220),@CustName NVARCHAR(220), @Mobile NVARCHAR(20), @Tel NVARCHAR(30), 
                                @Tel2 NVARCHAR(30), @Tel3 NVARCHAR(30), @Fax NVARCHAR(255), @email NVARCHAR(30), 
                                @NationalID NVARCHAR(12), @Address NVARCHAR(200), @CustomerNote NVARCHAR(255),
								@EconomicNumber varchar(12) ,@NationalCode        varchar(30) ,  @TradeSystemCode  varchar(30) , @RegisterNumber     varchar(30) ,   
                                @PostalCode varchar(12) ,	@CustAccountNumber    varchar(60) , @PelakSabtiAsli char(25) ,@PelakSabtiFari  char(25) ,  
                                @PerCityCode varchar(10) ,@HCKharidarTypeCode    tinyint ,@HCTarafGaradadTypeCode tinyint ,@HCForoushandeType1Code tinyint ,
                                @StateCode int ,  @CityCode           int ,   
								@ReturnCustID int OUTPUT as
								
BEGIN
SET NOCOUNT ON

if len(ltrim(RTRIM( @CustName)))=0
BEGIN
SET @ReturnCustID=-5
    --نام وارد نشده
	return
END

if @CustID <>0 
BEGIN
  if (select count(*) From Customers WHERE CustID =@CustID)=0
   begin
      SET @ReturnCustID = -2
      --raiserror('كد مشتری مورد نظر جهت ویرایش وجود ندارد',16,1)
	  return
   end
  else  UPDATE Customers SET
  CustFirstName=@CustFirstName , CustName= @CustName,Mobile= @Mobile,Tel= @Tel,Tel2= @Tel2,Tel3= @Tel3,Fax= @Fax,email=@email,NationalID =@NationalID,Address=@Address,
   CustomerNote=@CustomerNote , EconomicNumber=@EconomicNumber    	,
NationalCode          			=@NationalCode          ,
TradeSystemCode       			=@TradeSystemCode       ,
RegisterNumber        			=@RegisterNumber        ,
PostalCode          			=@PostalCode          	,
CustAccountNumber     			=@CustAccountNumber     ,
PelakSabtiAsli        			=@PelakSabtiAsli        ,
PelakSabtiFari        			=@PelakSabtiFari        ,
PerCityCode           			=@PerCityCode           ,
HCKharidarTypeCode    			=@HCKharidarTypeCode    ,
HCTarafGaradadTypeCode			=@HCTarafGaradadTypeCode,
HCForoushandeType1Code			=@HCForoushandeType1Code,
StateCode             			=@StateCode             ,
CityCode              			=@CityCode 
   WHERE CustID =@CustID 
   SET @ReturnCustID =@CustID  
   RETURN 
END

if (SELECT COUNT(*) AS c FROM CustomersGroup WHERE (CustomerGrpID = @CustomerGrpID))=0
BEGIN
SET @ReturnCustID=-3
    --raiserror('كد گروه مورد نظر وجود ندارد',16,1)
	return
END

SELECT @ReturnCustID=  MAX(CustID) +1 FROM Customers WHERE (CustomerGrpID = @CustomerGrpID)

if @ReturnCustID IS NULL
SELECT @ReturnCustID=StartCode FROM CustomersGroup WHERE (CustomerGrpID = @CustomerGrpID)

if (SELECT COUNT(*) AS c FROM Customers WHERE (CustID = @ReturnCustID))<>0
BEGIN
SET @ReturnCustID=-7
    --  (-7)= كد محدوده گروه تعریف شده مشکل دارد.  
	return
END


if @ReturnCustID>(SELECT FinishCode FROM CustomersGroup WHERE (CustomerGrpID = @CustomerGrpID))
BEGIN
SET @ReturnCustID=-4
    --raiserror('رنج گروه درخواستي به پايان رسيده',16,1)
END

INSERT INTO Customers( ExternalId   , CustomerGrpID,CustFirstName , CustName, Mobile, Tel, Tel2, Tel3, Fax, email, NationalID, Address, CustomerNote 
,EconomicNumber    	,NationalCode          ,TradeSystemCode       ,RegisterNumber        ,PostalCode          	,CustAccountNumber     ,PelakSabtiAsli        ,PelakSabtiFari        ,
PerCityCode           ,HCKharidarTypeCode    ,HCTarafGaradadTypeCode,HCForoushandeType1Code,StateCode             ,CityCode              
,CustID,ModifyDate,acc_DetailCode)
            VALUES   (@ExternalId   , @CustomerGrpID,@CustFirstName,@CustName,@Mobile,@Tel,@Tel2,@Tel3,@Fax,@email,@NationalID,@Address,@CustomerNote
			,@EconomicNumber    	,@NationalCode          ,@TradeSystemCode       ,@RegisterNumber        ,@PostalCode          	,@CustAccountNumber     ,@PelakSabtiAsli        ,@PelakSabtiFari        ,
@PerCityCode           ,@HCKharidarTypeCode    ,@HCTarafGaradadTypeCode,@HCForoushandeType1Code,@StateCode             ,@CityCode              
			,@ReturnCustID,GETDATE(),@ReturnCustID)
----------------------------------------  
DECLARE @BankName varchar(150)
DECLARE @SQLText varchar(8000)

SELECT @BankName=AccountDBName from dbo.Config

if UPPER(left(@BankName,4))<>'BPMS'
begin

SET @SQLText = 'INSERT INTO '+@BankName+'.Acc.Details  '+
    '(CompanyCode, DetailCode, DetailName_L1,MakeDate,UseKindInCo,MaxCredit,CurrencyType)  '+
    'VALUES (1,'+STR(@ReturnCustID)+','''+@CustName+''',GETDATE(),0,0,0)'
EXEC (@SQLText)
end
---------------------------------------

END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------
-------------------------------------------------
--------------------------------------------------
-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE PROCEDURE Android_GetNewCustomerID @ExternalId  Nvarchar(100) , @CustID int , @CustomerGrpID int,@CustFirstName NVARCHAR(220),@CustName NVARCHAR(220), @Mobile NVARCHAR(20), @Tel NVARCHAR(30), 
                                @Tel2 NVARCHAR(30), @Tel3 NVARCHAR(30), @Fax NVARCHAR(255), @email NVARCHAR(30), 
                                @NationalID NVARCHAR(12), @Address NVARCHAR(200), @CustomerNote NVARCHAR(255),
								@EconomicNumber varchar(12) ,@NationalCode        varchar(30) ,  @TradeSystemCode  varchar(30) , @RegisterNumber     varchar(30) ,   
                                @PostalCode varchar(12) ,	@CustAccountNumber    varchar(60) , @PelakSabtiAsli char(25) ,@PelakSabtiFari  char(25) ,  
                                @PerCityCode varchar(10) ,@HCKharidarTypeCode    tinyint ,@HCTarafGaradadTypeCode tinyint ,@HCForoushandeType1Code tinyint ,
                                @StateCode int ,  @CityCode           int ,   
								@ReturnCustID int OUTPUT as
								
BEGIN
SET NOCOUNT ON
BEGIN
if len(ltrim(RTRIM( @CustName)))=0
BEGIN
SET @ReturnCustID=-5
    --نام وارد نشده
	return
END
  
  if (select count(*) From Customers WHERE ExternalId =@ExternalId)=0
   begin
      exec  Android_GetNewCustomer @ExternalId , 0  , @CustomerGrpID,@CustFirstName ,@CustName , @Mobile , @Tel , 
                                @Tel2 , @Tel3 , @Fax , @email , 
                                @NationalID , @Address , @CustomerNote  ,@EconomicNumber    	,@NationalCode          ,@TradeSystemCode       ,@RegisterNumber        ,@PostalCode          	,@CustAccountNumber     ,@PelakSabtiAsli        ,@PelakSabtiFari        ,
@PerCityCode           ,@HCKharidarTypeCode    ,@HCTarafGaradadTypeCode,@HCForoushandeType1Code,@StateCode             ,@CityCode              ,	@ReturnCustID = @ReturnCustID OUTPUT    

	  return
   end
  else  UPDATE Customers SET
   CustFirstName=@CustFirstName,CustName= @CustName,Mobile= @Mobile,Tel= @Tel,Tel2= @Tel2,Tel3= @Tel3,Fax= @Fax,email=@email,NationalID =@NationalID,Address=@Address,
   CustomerNote=@CustomerNote , EconomicNumber=@EconomicNumber    	,
NationalCode          			=@NationalCode          ,
TradeSystemCode       			=@TradeSystemCode       ,
RegisterNumber        			=@RegisterNumber        ,
PostalCode          			=@PostalCode          	,
CustAccountNumber     			=@CustAccountNumber     ,
PelakSabtiAsli        			=@PelakSabtiAsli        ,
PelakSabtiFari        			=@PelakSabtiFari        ,
PerCityCode           			=@PerCityCode           ,
HCKharidarTypeCode    			=@HCKharidarTypeCode    ,
HCTarafGaradadTypeCode			=@HCTarafGaradadTypeCode,
HCForoushandeType1Code			=@HCForoushandeType1Code,
StateCode             			=@StateCode             ,
CityCode              			=@CityCode              
   WHERE  ExternalId =@ExternalId 
   ---SET @ReturnCustID =@CustID  
   select @ReturnCustID =CustID From Customers WHERE ExternalId =@ExternalId

   RETURN 
END
END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------
CREATE PROCEDURE Android_NewRecipts
@ReciptType int,
@StoreID int,
@StoreID2 int,
@PersonID1 int,
@PersonID2 int,
@PersonID3 int,
@OperatorID int,
@UserName nvarchar(50),
@SellsEmporium int,
@MachineNo varchar(25),
@ReciptDate char(10),
@TruckNumber varchar(15),
@ReciptNote  varchar(400),
@ReciptID int out , 
@YearID int out , 
@ServerID int out,
@FormOutput tinyint out,
@ReciptNumber int out,
@ReciptCaption nvarchar(70) out,
@ID Bigint OUT
AS
SET NOCOUNT ON
--DECLARE @ReciptDate Char(10)
BEGIN

--SELECT @ReciptID= ISNULL( MAX(ReciptID),0)+1  FROM  Recipts 

--SELECT @ReciptNumber=ISNULL(  MAX(ReciptNumber),0)+1 FROM Recipts 
--WHERE        (ReciptType = @ReciptType) AND (StoreID = @StoreID) AND (YearID = @YearID)
SELECT @ReciptNumber=
CASE  
WHEN  (ReciptTypes.RestartFormNumberOnStore = 2 )
THEN
    (SELECT ISNULL(MAX(Recipts.ReciptNumber),0)+1 
	FROM        Recipts
	WHERE (Recipts.ReciptType = @ReciptType) AND (Recipts.YearID = @YearID))
WHEN  (ReciptTypes.RestartFormNumberOnStore = 1)
THEN
	(SELECT ISNULL(MAX(Recipts.ReciptNumber),0)+1 
	FROM        Recipts
	WHERE (Recipts.ReciptType = @ReciptType) AND (Recipts.StoreID = @StoreID) AND (Recipts.YearID = @YearID))
END
FROM            ReciptTypes LEFT OUTER JOIN
                         Recipts ON ReciptTypes.ReciptType = Recipts.ReciptType
WHERE (ReciptTypes.ReciptType = @ReciptType)
--FROM        Recipts INNER JOIN
--                  ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType
--WHERE (Recipts.ReciptType = @ReciptType)
GROUP BY ReciptTypes.RestartFormNumberOnStore


--SELECT @ReciptDate=RIGHT( dbo.MiladiToShamsi( GETDATE())  ,10)

--SELECT @YearID=left( @ReciptDate  ,2)
--SET @ServerID=0

SELECT @FormOutput = CASE WHEN EffectType  in (3, 4, 5, 7 ,  8  ) THEN 1 ELSE 0 END,@ReciptCaption=ReciptCaption FROM ReciptTypes
WHERE  (ReciptType = @ReciptType)


if (@UserName='') or (@UserName IS NULL) 
 SET @UserName='كاربر CRM'

if (@SellsEmporium = 0) or (@SellsEmporium IS NULL) 
 SET @SellsEmporium = case when @ReciptType= 16 then 3 when @ReciptType= 24 then 2 else 1 end  

INSERT INTO 
Recipts(ReciptID,  StoreID, StoreID2 ,  ReciptNumber, ModifyDate,  PersonID1 , PersonID2,   PersonID3, ReciptType, ReciptDate,  OperatorID,  
          FirstUser, YearID,  ServerID , PrvYearID,UseOtherID , SellsEmporium,ReciptState,MachineNo,TruckNumber,ReciptNote)
VALUES (@ReciptID, @StoreID, @StoreID2 , @ReciptNumber, GETDATE(), @PersonID1 , @PersonID2 ,@PersonID3 ,    @ReciptType, @ReciptDate, ISNULL(  @OperatorID,0)  ,    
          @UserName, @YearID, @ServerID, @YearID,      0 ,  @SellsEmporium ,0,@MachineNo,@TruckNumber,rtrim(ltrim(@ReciptNote)))
END

set @ID =(CONVERT([bigint],(ltrim(@YearID)+right('0'+ltrim(@ServerID),(2)))+ltrim(abs(@ReciptID)),0))


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------
-------------------------------------------------
--------------------------------------------------
----------------------------------------------برای هر شرکت ویرایش می شود با    ما  است ---
--------------------------------------------------

GO
SET QUOTED_IDENTIFIER ON;
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------
CREATE PROCEDURE Android_NewReciptsWeb
@ReciptType int,
@StoreID int,
@StoreID2 int,
@PersonID1 int,
@PersonID2 int,
@PersonID3 int,
@OperatorID int,
@UserName nvarchar(50),
@SellsEmporium int,
@MachineNo varchar(25),
@ReciptDate char(10),
@TruckNumber varchar(15),
@ReciptNote  varchar(400),
@Address  varchar(400),
@ReciptID int out , 
@YearID int out , 
@ServerID int out,
@FormOutput tinyint out,
@ReciptNumber int out,
@ReciptCaption nvarchar(70) out,
@ID Bigint OUT
AS
SET NOCOUNT ON
BEGIN
  SET @ID = 0
 SELECT @FormOutput = CASE WHEN EffectType  in (3, 4, 5, 7 ,  8  ) THEN 1 ELSE 0 END,@ReciptCaption=ReciptCaption FROM ReciptTypes
     WHERE  (ReciptType = @ReciptType)

 SELECT  @ReciptNumber=ReciptNumber FROM Recipts   WHERE   (ltrim(rtrim(TruckNumber)) = ltrim(rtrim(@TruckNumber)))

if   ((@ReciptNumber is NULL) or (@ReciptNumber=''))
begin
 SET @Address = rtrim(ltrim(@Address))
 IF  @Address<>''
   UPDATE Customers SET Address = @Address WHERE (CustID = @PersonID1) --AND (Address <> @Address)

set @ReciptNumber=@TruckNumber

if (@UserName='') or (@UserName IS NULL) 
 SET @UserName='كاربر CRM'

if (@SellsEmporium = 0) or (@SellsEmporium IS NULL) 
 SET @SellsEmporium = case when @ReciptType= 16 then 3 when @ReciptType= 24 then 2 else 1 end  

INSERT INTO 
Recipts(ReciptID,  StoreID, StoreID2 ,  ReciptNumber,InsertDate , ModifyDate,  PersonID1 , PersonID2,   PersonID3, ReciptType, ReciptDate,  OperatorID,  
          FirstUser, YearID,  ServerID , PrvYearID,UseOtherID , SellsEmporium,ReciptState,MachineNo,TruckNumber,ReciptNote,ReciptNote2)
VALUES (@ReciptID, @StoreID, @StoreID2 , @ReciptNumber,GETDATE(), GETDATE(), @PersonID1 , @PersonID2 ,@PersonID3 ,    @ReciptType, @ReciptDate, ISNULL(  @OperatorID,0)  ,    
          @UserName, @YearID, @ServerID, @YearID,      0 ,  @SellsEmporium ,0,@MachineNo,@TruckNumber,rtrim(ltrim(@ReciptNote)) , @Address )
set @ID =(CONVERT([bigint],(ltrim(@YearID)+right('0'+ltrim(@ServerID),(2)))+ltrim(abs(@ReciptID)),0))


END



END


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------
-------------------------------------------------
--------------------------------------------------
----------------------------------------------برای هر شرکت ویرایش می شود با    ما  است ---
--------------------------------------------------
-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO


-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE FUNCTION ChkUsersOnFlow4Edit ( @YearID int ,   @FormID int , @ServerID int,
    @FormType int , @kind int   , @UserID int , @PositionCode int )
RETURNS int 
BEGIN

DECLARE @CancelSortAccept INT ,@SortAccept INT
SELECT @SortAccept=SortAccept,@CancelSortAccept=CancelSortAccept FROM WF_FlowFroms 
  WHERE(PositionCode = @PositionCode) AND (FormTypeNum = @FormType) AND (Kind = @kind)
if @SortAccept is null RETURN(1)
RETURN(
SELECT SUM (CanEdit)AS CanEdit FROM(
SELECT COUNT(*) AS CanEdit
FROM  dbo.Fn_WorkFlow ( @YearID  , @FormType  , @kind  )
WHERE ((MaxSortAccept   =  @SortAccept) or (MaxSortAccept+1   =  @SortAccept)
       )
AND(MaxSortAccept = SortAccept)
AND((UserCitation = 0)or(UserCitation <> @UserID))
AND (FormID = @FormID) AND (ServerID = @ServerID) 
UNION
SELECT COUNT(*) AS CanEdit
FROM   dbo.Fn_WorkFlow ( @YearID  , @FormType  , @kind  )
WHERE (MaxSortAccept   <= @SortAccept)
AND(MaxSortAccept = SortAccept)
AND((UserCitation = 0)or(UserCitation <> @UserID))
AND (FormID = @FormID) AND (ServerID = @ServerID) 
AND @CancelSortAccept=1
)abc )  
END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------
--------------------------------------------------
-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE PROCEDURE GetUser_FlowFroms @PositionCode int,@YearID int,@msg varchar(1000)  OUTPUT as
BEGIN
DECLARE @FormType int
DECLARE @kind int
DECLARE @SortAccept int
DECLARE @CancelSortAccept int
DECLARE @FormCaption varchar(100)
DECLARE @COUNTForm int

DECLARE @CursorVar CURSOR
SET @msg=''
SET @CursorVar = CURSOR SCROLL DYNAMIC
FOR  SELECT      WF_FlowFroms.Kind, WF_FlowFroms.FormTypeNum, ViewFlow.FormCaption, WF_FlowFroms.SortAccept,WF_FlowFroms.CancelSortAccept
FROM         WF_FlowFroms INNER JOIN
                      ViewFlow ON WF_FlowFroms.Kind = ViewFlow.Kind AND WF_FlowFroms.FormTypeNum = ViewFlow.FormType
     WHERE     (WF_FlowFroms.PositionCode =@PositionCode)
OPEN @CursorVar
FETCH NEXT FROM @CursorVar INTO @kind,@FormType,@FormCaption,@SortAccept,@CancelSortAccept
WHILE @@FETCH_STATUS = 0
  BEGIN
    if @CancelSortAccept = 1 
      SELECT  @COUNTForm= COUNT( *)
         FROM  dbo.Fn_WorkFlow ( @YearID  , @FormType  , @kind  ) 
           WHERE (MaxSortAccept + 1  <= @SortAccept)---------------------<=
              AND(MaxSortAccept = SortAccept)
              AND((UserCitation = 0)or(UserCitation <> @PositionCode))
    else
      SELECT  @COUNTForm= COUNT( *)
         FROM  dbo.Fn_WorkFlow ( @YearID  , @FormType  , @kind  ) 
           WHERE (MaxSortAccept + 1  = @SortAccept)-----------------------=
              AND(MaxSortAccept = SortAccept)
              AND((UserCitation = 0)or(UserCitation <> @PositionCode))

      if @COUNTForm>0 
	    SET @msg=@msg+ @FormCaption+' => '+LTRIM( STR(@COUNTForm))+ CHAR(13)


    FETCH NEXT FROM @CursorVar  INTO  @kind,@FormType,@FormCaption,@SortAccept,@CancelSortAccept
  END
CLOSE @CursorVar
DEALLOCATE @CursorVar

END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
-------------------------------------------------
-------------------------------------------------  not suport sql 2000
--SET QUOTED_IDENTIFIER ON 
--GO
--SET ANSI_NULLS OFF 
--GO
--CREATE VIEW view_ReciptItems  AS 
--SELECT  * ,InvEntity - RequestedEntity AS Req_InvEntity, '' AS ____StuffTecInfo, dbo.GetLookUpsName(StuffCode, 313) AS PakhshCompany, 
--  dbo.GetStuffName(StuffCode) AS c_StuffName, 
--  ROUND(CASE WHEN InputEntity + OutputEntity <> 0 THEN TotallSellPrice / (InputEntity + OutputEntity) ELSE 0 END, 0) AS UnitSellPrice3, 
--  ROUND(CASE WHEN InputWeight + OutputWeight <> 0 THEN TotallSellPrice / (InputWeight + OutputWeight) ELSE 0 END, 0) AS UnitSellPriceWeight,
--  (TotalInputPrice + TotalOutputPrice) + (InputEntity + OutputEntity) * UnitCommission - DeficitValue AS TotalDeficient, 
--  (InputEntity + OutputEntity) * UnitCommission AS TotallCommission, TotalInputPrice + TotalOutputPrice + TaxValue AS TotalPrice_TaxValue, 
--  UnitSellPrice + UnitCommission AS UnitSellPriceCommission, 
--  (InputEntity + OutputEntity) * UnitCommission + TotalInputPrice + TotalOutputPrice AS TotallCommissionTotalPrice
--  ,InvEntity -AidNumber AS Req_InvEntity2
--  ,(SELECT TOP 1 ltrim(STR(Recipts.ReciptNumber)) + ReciptTypes.ReciptCaption + Recipts.ReciptDate AS ParentForm
--      FROM ReciptItems AS Items INNER JOIN
--           Recipts ON Items.ReciptID = Recipts.ReciptID AND Items.ServerID = Recipts.ServerID AND Items.YearID = Recipts.YearID INNER JOIN
--           ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType
--      WHERE ((Items.ReciptItemID = ReciptItems.preReciptItemID)OR(Items.preReciptItemID = ReciptItems.ReciptItemID))
--	    AND((Items.StuffCode = ReciptItems.StuffCode)) ) AS ParentForm

-- FROM ReciptItems
--GO
--SET QUOTED_IDENTIFIER OFF 
--GO
--SET ANSI_NULLS ON 
--GO
--------------------------------------------------
-------------------------------------------------
-------------------------------------------------
--------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE VIEW Machin.MaintenanceKinds  
AS 
SELECT     1 AS KindID, 'داخلي' AS KindName
UNION ALL
SELECT     2, 'ادرات' 
UNION ALL
SELECT     3, 'خارج از شركت' 
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

-------------------------------------------------
--------------------------------------------------


SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE  PROCEDURE Machin.GeneralReportMaintenance
 @BaseParam VARCHAR(50),
 @AddParam VARCHAR(3),
 @Filter VARCHAR(100),
 @SliceCodeFlag BIT,
 @SliceCaptionFlag BIT,
 @SqlWhere VARCHAR(2000)
  
AS
BEGIN

DECLARE @SqlSelect    VARCHAR(4000)
DECLARE @SqlJoin      VARCHAR(1000)
DECLARE @SqlGroup     VARCHAR(4000)
DECLARE @SqlTopic     VARCHAR(1000)
DECLARE @SqlFinal     VARCHAR(8000)

DECLARE @OldCode      VARCHAR(1000)
DECLARE @SliceCode    VARCHAR(1000)
DECLARE @SliceCaption NVARCHAR(1000)
 
DECLARE @ID           VARCHAR(2)
DECLARE @fldName      VARCHAR(200)
DECLARE @AliasName    VARCHAR(50)
DECLARE @tblName      VARCHAR(30)
DECLARE @TopicName    VARCHAR(200)
DECLARE @Current      VARCHAR(50) 
DECLARE @JoinFldName  VARCHAR(50)
DECLARE @CaptionName  NVARCHAR(50)


 
SET @SqlSelect    = ''
SET @SqlJoin      = '' 
SET @SqlGroup     = ''
SET @SqlTopic     = ''
SET @SqlFinal     = ''
SET @OldCode      = ''
SET @SliceCode    = ''
SET @SliceCaption = ''


DECLARE @SQLSUM NVARCHAR(1000);
SET @SQLSUM = '';

DECLARE @SqlView VARCHAR(8000)
SET @SqlView = '';

DECLARE @AccBank VARCHAR(250)
SET @AccBank = (SELECT AccountDBName FROM dbo.Config)

SET @Current = @BaseParam +','+ @AddParam 

DECLARE QAnalize CURSOR 
    FOR(
	     SELECT Util.Analyze.ID,TableName,FieldName,AliasName ,JoinFieldName,CaptionName,TopicName
	     FROM Util.Analyze  INNER JOIN SplitString(@Current,',') SP ON SP.part =  Util.Analyze.ID 
	    ); 

OPEN QAnalize 
FETCH FROM QAnalize INTO @ID, @tblName, @fldName, @AliasName, @JoinFldName, @CaptionName, @TopicName ;
WHILE @@FETCH_STATUS = 0 
BEGIN
     
       SET @SqlGroup = @SqlGroup +  ISNULL(@AliasName,@tblName) +'.'+@JoinFldName  +' , '+ ISNULL(@AliasName,@tblName) +'.'+ @TopicName +','

       SET @SqlSelect = @SqlSelect + ' ISNULL(CAST('+ ISNULL(@AliasName,@tblName) +'.'+@JoinFldName +' AS VARCHAR(100)),0) +''-''+ '
       SET @SqlTopic = @SqlTopic + ' ISNULL(CAST('+ISNULL(@AliasName,@tblName) +'.'+ @TopicName +' AS VARCHAR(100)),''--'') +''-''+ ' 
       
       IF (@SliceCaptionFlag  = 1)
       BEGIN
          SET @SliceCaption  =  @SliceCaption +  'ISNULL(CAST(' +ISNULL(@AliasName,@tblName) + '.' + @TopicName + ' AS NVARCHAR(100)),'':'') AS'+'['+'عنوان '+ @CaptionName +'],'      
       END
       
       IF (@SliceCodeFlag = 1)
       BEGIN 
          SET @SliceCode = @SliceCode + '  ISNULL(CAST('+ ISNULL(@AliasName,@tblName) + '.' +@JoinFldName +' AS VARCHAR(100)),0) '+ ' AS ['+@CaptionName+'], '
       END
   
   --if @JoinFldName<>null
       SET @SqlJoin = @SqlJoin + ' INNER JOIN ' + @tblName + ' '+ISNULL(@AliasName ,'')+ ' ON ' +'ISNULL('+ @fldName +',0)'+' = ' + ISNULL(@AliasName,@tblName) +'.'+@JoinFldName
       
       FetchState: FETCH NEXT FROM QAnalize INTO @ID, @tblName,@fldName,@AliasName ,@JoinFldName ,@CaptionName,@TopicName ;

END

CLOSE QAnalize ;	
DEALLOCATE QAnalize ; 

 SET @SqlSelect = LEFT(@SqlSelect, LEN(@SqlSelect)-5)
 SET @SqlTopic = LEFT(@SqlTopic, LEN(@SqlTopic)-5) 
 SET @SqlGroup = @SqlGroup + @SqlTopic +','+ @SqlSelect 
 
 
 IF (@AddParam  <> '')
 BEGIN
	SELECT @OldCode = @OldCode + 'Cast(' + FieldName +' AS VARCHAR(20)) +''-''+'      
	FROM Util.Analyze  INNER JOIN SplitString(@BaseParam,',') SP ON SP.part = Util.Analyze.ID 

	SET @OldCode   =  LEFT (@OldCode, (LEN(@OldCode) - 5))  ; 
	
	IF (@Filter <> '') 
	BEGIN
		IF (@SqlWhere = '')  
			SET @SqlWhere =  ' WHERE '+ @OldCode +'='''+@Filter+' '''	
		ELSE		
			SET @SqlWhere =  @SqlWhere +' AND '+ @OldCode +'='''+@Filter+' '''		
	END;	
 END;

SET @SqlFinal = 'SELECT '+ @SliceCode+ @SliceCaption+ @SqlSelect +' As AllColumn , '+ @SqlTopic +' AS AllCaption, SUM(F.FunctionAmount) AS Amount'
			   + ' FROM Machin.Maintenance AS M LEFT OUTER JOIN '
               + ' Tsh.Functions AS F ON M.MaintenanceID = F.MaintenanceID '
               + CHAR(13) + @SqlJoin 
               + CHAR(13) + @SqlWhere -----+' AND Machin.Maintenance.Maintenancetate < 10 '
               + CHAR(13) + ' GROUP BY ' + @SqlGroup

SET @SqlFinal = REPLACE(@SqlFinal , '%W%', @AccBank)

EXEC('IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id( N''Machin.view_GeneralReportMaintenance'') AND OBJECTPROPERTY(id, N''IsView'') = 1)'
                 +' DROP view Machin.view_GeneralReportMaintenance')

SET @SQLSUM = 'SUM(Amount) AS Amount '


--create view LowerCase
SET @SqlView =  'create view Machin.view_GeneralReportMaintenance  AS ' 
               + CHAR(13) + 'SELECT ''جمع:‏''AS [ ],' +  @SQLSUM + ' FROM (' 
               + CHAR(13) + @SqlFinal +') AS Temp'


EXEC (@SqlView)

EXEC (@SqlFinal)

END 
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
-------------------------------------------------
--------------------------------------------------


SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE VIEW dbo.view_CofferGeneralReport  AS 
SELECT 'جمع:‏'AS [ ],SUM(Amount) AS Amount  FROM (
SELECT  ISNULL(CAST(FC3.CustID AS VARCHAR(100)),0)  As AllColumn ,  ISNULL(CAST(FC3.CustName AS VARCHAR(100)),'--')  AS AllCaption, SUM(CASE WHEN FormItems.ItemAmount IS NULL THEN Forms.Amount ELSE FormItems.ItemAmount END) AS Amount FROM Forms LEFT OUTER JOIN  FormItems ON Forms.FormID = FormItems.FormID AND Forms.ServerID = FormItems.ServerID AND Forms.YearID = FormItems.YearID
 INNER JOIN Customers FC3 ON ISNULL(Forms.CustomerID3,0) = FC3.CustID
 WHERE (Forms.CustomerID1 Between 0 And 40052)And (Forms.CustomerID2 Between 0 And 40052)And (Forms.FormDate Between '92/12/01' And '93/11/29')And (Forms.YearID Between 93 And 93)And (Forms.FormNumber Between 1 And 4102)And (FormItems.TopicCode  Between 1101 And 9301)And (FormItems.DetailCode Between 0 And 807)And (FormItems.CTopicCode Between 0 And 0)And (FormItems.CTopicCode2 Between 0 And 0)And (FormItems.ctopiccode3 Between 0 And 0) AND Forms.FormState < 3 
 GROUP BY FC3.CustID , FC3.CustName, ISNULL(CAST(FC3.CustName AS VARCHAR(100)),'--') , ISNULL(CAST(FC3.CustID AS VARCHAR(100)),0) ) AS Temp
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
-------------------------------------------------
--------------------------------------------------


SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE PROCEDURE [dbo].[AuditLog] @TableName nvarchar(50), @OperationType SMALLINT
AS
BEGIN
SET NOCOUNT ON;

SET ANSI_NULLS ON
SET ANSI_PADDING ON

SET ANSI_WARNINGS ON

SET ARITHABORT ON

SET CONCAT_NULL_YIELDS_NULL ON

SET NUMERIC_ROUNDABORT OFF  

SET QUOTED_IDENTIFIER ON 

DECLARE @SqlTxt nvarchar(4000)
SET @TableName= LOWER(@TableName);
IF (@TableName = 'docgroups') AND (@OperationType=1)
 SET @SqlTxt='SELECT  TableName AS [نام‌جدول], RowCreateDateTime AS [تاریخ‌وزمان‌عملیات], DataBaseName AS [نام‌بانک], HostName AS [نام‌دستگاه‌تغییردهنده],
                      ApplicationName AS [نام‌نرم‌افزار], client_net_address AS [آدرس‌کلاینت], Serial AS [سریال‌سند], SecondaryDocNo AS [شماره‌موقت], PrimaryDocNo AS [شماره‌دایم],
                      DocDate AS [تاریخ‌سند], DocTypeCode AS [نوع‌‌سند], Status AS [وضعیت‌سند], DocTopic_L1 AS [موضوع‌کلی‌سند], YearID AS [سال‌مالی] 
              FROM    AuditLog.Acc.vu_Delete_docgroups'

ELSE IF (@TableName = 'docgroups') AND (@OperationType=2)
 SET @SqlTxt='SELECT  TableName AS [نام‌جدول], RowCreateDateTime AS [تاریخ‌وزمان‌عملیات], DataBaseName AS [نام‌بانک], HostName AS [نام‌دستگاه‌تغییردهنده],
                      ApplicationName AS [نام‌نرم‌افزار], client_net_address AS [آدرس‌کلاینت], Serial AS [سریال‌سند], SecondaryDocNo AS [شماره‌موقت], PrimaryDocNo AS [شماره‌دایم],
                      DocDate AS [تاریخ‌سند], DocTypeCode AS [نوع‌‌سند], Status AS [وضعیت‌سند], DocTopic_L1 AS [موضوع‌کلی‌سند], YearID AS [سال‌مالی]  
              FROM    AuditLog.Acc.vu_Insert_docgroups'

ELSE IF (@TableName = 'docgroups') AND (@OperationType=3)
 SET @SqlTxt ='SELECT TableName AS [نام‌جدول], RowCreateDateTime AS [تاریخ‌وزمان‌عملیات], DataBaseName AS [نام‌بانک], HostName AS [نام‌دستگاه‌تغییردهنده],
                      ApplicationName AS [نام‌نرم‌افزار], client_net_address AS [آدرس‌کلاینت],
                     MAX(CASE WHEN  OperationType =''D'' THEN Serial END) AS [سریال‌قبل],
			         MAX(CASE WHEN  OperationType = ''I'' THEN Serial END) AS [سریال‌جدید] ,
                     MAX(CASE WHEN  OperationType = ''D'' THEN SecondaryDocNo END) AS [شماره‌موقت‌قبل],
			         MAX(CASE WHEN  OperationType = ''I'' THEN SecondaryDocNo END) AS [شماره‌موقت‌جدید],
			         MAX(CASE WHEN  OperationType = ''D'' THEN PrimaryDocNo END) AS [شماره‌دایم‌قبل],
			         MAX(CASE WHEN  OperationType = ''I'' THEN PrimaryDocNo END) AS [شماره‌دایم‌جدید],
                     MAX(CASE WHEN  OperationType = ''D'' THEN DocDate END) AS [تاریخ‌سندقبل],
			         MAX(CASE WHEN  OperationType = ''I'' THEN DocDate END) AS [تاریخ‌سندجدید],
			         MAX(CASE WHEN  OperationType = ''D'' THEN DocTypeCode END) AS [نوع‌سندقبل] ,
			         MAX(CASE WHEN  OperationType = ''I'' THEN DocTypeCode END) AS [نوع‌سندجدید] ,
			         MAX(CASE WHEN  OperationType = ''D'' THEN Status END) [وضعیت‌قبل],
			         MAX(CASE WHEN  OperationType = ''I'' THEN Status END) [وضعیت‌جدید],
			         MAX(CASE WHEN  OperationType = ''D'' THEN DocTopic_L1 END) [موضوع‌سندقبل] ,
			         MAX(CASE WHEN  OperationType = ''I'' THEN DocTopic_L1 END) [موضوع‌سند‌جدید],
			         MAX(CASE WHEN  OperationType = ''D'' THEN DocNote_L1 END) [توضیحات‌قبل],
			         MAX(CASE WHEN  OperationType = ''I'' THEN DocNote_L1 END) [توضیحات‌جدید]
             FROM    AuditLog.Acc.vu_Update_docgroups
             GROUP BY metadatachangelogid2,TableName,RowCreateDateTime,  DataBaseName, HostName, ApplicationName, client_net_address
             ORDER BY metadatachangelogid2'

ELSE IF (@TableName = 'documents') AND (@OperationType=1)
    SET @SqlTxt = 'SELECT TableName AS [نام‌جدول], RowCreateDateTime AS [تاریخ‌وزمان‌عملیات], DataBaseName AS [نام‌بانک], HostName AS [نام‌دستگاه‌تغییردهنده],
                           ApplicationName AS [نام‌نرم‌افزار], client_net_address AS [آدرس‌کلاینت],
                           TopicCode AS [حساب], DetailCode AS [تفصیلی], CTopicCode AS [مرکز‌هزینه], CTopicCode2 AS [تفصیلی 3], Comment_L1 AS [شرح], Debt AS [بدهکار],
						   Credit AS [بستانکار], AidDocNo AS [شماره‌کمکی], AidDocdate AS [تاریخ‌کمکی]
                   FROM    AuditLog.Acc.vu_Delete_documents'

ELSE IF (@TableName = 'documents') AND (@OperationType=2)
    SET @SqlTxt = 'SELECT TableName AS [نام‌جدول], RowCreateDateTime AS [تاریخ‌وزمان‌عملیات], DataBaseName AS [نام‌بانک], HostName AS [نام‌دستگاه‌تغییردهنده],
                           ApplicationName AS [نام‌نرم‌افزار], client_net_address AS [آدرس‌کلاینت],
                           TopicCode AS [حساب], DetailCode AS [تفصیلی], CTopicCode AS [مرکز‌هزینه], CTopicCode2 AS [تفصیلی 3], Comment_L1 AS [شرح], Debt AS [بدهکار],
						   Credit AS [بستانکار], AidDocNo AS [شماره‌کمکی], AidDocdate AS [تاریخ‌کمکی]
                   FROM     AuditLog.Acc.vu_Insert_documents'

ELSE IF (@TableName = 'documents') AND (@OperationType=3)
    SET @SqlTxt = 'SELECT   TableName AS [نام‌جدول], RowCreateDateTime AS [تاریخ‌وزمان‌عملیات], DataBaseName AS [نام‌بانک], HostName AS [نام‌دستگاه‌تغییردهنده],
                            ApplicationName AS [نام‌نرم‌افزار], client_net_address AS [آدرس‌کلاینت],serial  AS [سریال‌سند],
                            MAX(CASE WHEN  OperationType = ''D'' THEN TopicCode END) AS [حساب‌قبل],
			                MAX(CASE WHEN  OperationType = ''I'' THEN TopicCode END) AS [حساب‌جدید],
			                MAX(CASE WHEN  OperationType = ''D'' THEN DetailCode END) AS [تفصیلی‌قبل],
                            MAX(CASE WHEN  OperationType = ''I'' THEN DetailCode END) AS [تفصیلی‌جدید],
			                MAX(CASE WHEN  OperationType = ''D'' THEN CTopicCode END) AS [مرکز‌هزینه‌قبل],
			                MAX(CASE WHEN  OperationType = ''I'' THEN CTopicCode END) AS [مرکز‌هزینه‌جدید],
			                MAX(CASE WHEN  OperationType = ''D'' THEN CTopicCode2 END) AS [مرکز‌هزینه2قبل], 
			                MAX(CASE WHEN  OperationType = ''I'' THEN CTopicCode2 END) AS [مرکز‌هزینه2جدید],
			                MAX(CASE WHEN  OperationType = ''D'' THEN Comment_L1 END) AS [شرح‌قبل],
                            MAX(CASE WHEN  OperationType = ''I'' THEN Comment_L1 END) AS [شرح‌جدید],
			                MAX(CASE WHEN  OperationType = ''D'' THEN Debt END) AS [مبلغ‌بدقبل],
			                MAX(CASE WHEN  OperationType = ''I'' THEN Debt END) AS [مبلغ‌بدجدید],
			                MAX(CASE WHEN  OperationType = ''D'' THEN Credit END) AS [مبلغ‌بس‌قبل],
			                MAX(CASE WHEN  OperationType = ''I'' THEN Credit END) AS [مبلغ‌بس‌جدید] ,
			                MAX(CASE WHEN  OperationType = ''D'' THEN AidDocNo END) AS [شماره‌کمکی‌قبل],
			                MAX(CASE WHEN   OperationType = ''I'' THEN AidDocNo END) AS [شماره‌کمکی‌جدید] ,
			                MAX(CASE WHEN  OperationType = ''D'' THEN AidDocdate END) AS [تاریخ‌کمکی‌قبل],
			                MAX(CASE WHEN  OperationType = ''I'' THEN AidDocdate END) AS [تاریخ‌کمکی‌جدید]  			  
                FROM        AuditLog.Acc.vu_Update_documents
                GROUP BY    metadatachangelogid2,TableName,RowCreateDateTime,  DataBaseName, HostName, ApplicationName, client_net_address,Serial
                ORDER BY    metadatachangelogid2,Serial'
else set @SqlTxt = 'SELECT ''Error'''
EXEC (@SqlTxt)
END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
-------------------------------------------------
--------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE FUNCTION GetFirstChar (@strinq  varchar(200)  )
RETURNS varchar(1) 
BEGIN
  declare @c varchar(1)
  set @c=  LEFT(LTRIM( @strinq), 1)
  set @c=REPLACE(@c,'ک','ك') 
  RETURN(@c)
END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
-------------------------------------------------
--------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE FUNCTION GetPersonCaption(@ReciptType varchar(200))

RETURNS table  AS  
return (
SELECT Top 1  0 As ID,CASE WHEN isnull(Person1Caption, '') = '' THEN 'مشتري1 ' ELSE Person1Caption END AS Person1Caption
FROM ReciptTypes WHERE (ReciptType in (SELECT part FROM dbo.SplitString(  @ReciptType,',')))
UNION ALL 
SELECT  Top 1 1 As ID,CASE WHEN isnull(Person2Caption, '') = '' THEN 'مشتري2 ' ELSE Person2Caption END AS Person2Caption 
FROM ReciptTypes WHERE (ReciptType in (SELECT part FROM dbo.SplitString(  @ReciptType,',')))
UNION ALL 
SELECT Top 1  2 As ID,CASE WHEN isnull(Person3Caption, '') = '' THEN 'مشتري3 ' ELSE Person3Caption END AS Person3Caption 
FROM ReciptTypes WHERE (ReciptType in (SELECT part FROM dbo.SplitString(  @ReciptType,',')))
UNION ALL 
SELECT Top 1  3 As ID,CASE WHEN isnull(Person4Caption, '') = '' THEN 'مشتري4 ' ELSE Person4Caption END AS Person4Caption 
FROM ReciptTypes WHERE (ReciptType in (SELECT part FROM dbo.SplitString(  @ReciptType,',')))
UNION ALL 
SELECT Top 1  4 As ID,CASE WHEN isnull(Person2DetailCaption, '') = '' THEN 'مشتري جزء ' ELSE Person2DetailCaption END AS Person2DetailCaption 
FROM ReciptTypes WHERE (ReciptType in (SELECT part FROM dbo.SplitString(  @ReciptType,',')))

UNION ALL 
SELECT Top 1  5 As ID,CASE WHEN isnull(Person5Caption, '') = '' THEN 'مشتري5 ' ELSE Person5Caption END AS Person5Caption 
FROM ReciptTypes WHERE (ReciptType in (SELECT part FROM dbo.SplitString(  @ReciptType,',')))


)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
-------------------------------------------------
--------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
-- =============================================
-- Author:	 <M.Kahdooei>
-- Create date: <94/02/07>
-- Description:	<دریافت عنوان مشتری برای گزارشات>
-- =============================================
CREATE FUNCTION [dbo].[GetCustomerCaption](@FormType int=13)

RETURNS table  AS  
return (
SELECT 0 As ID,CASE WHEN isnull(Customer1Label, '') = '' THEN 'مشتري1 ' ELSE Customer1Label END AS Customer1Label
FROM FormTypes WHERE (FormType = @FormType)
UNION ALL 
SELECT 1 As ID,CASE WHEN isnull(Customer2Lable, '') = '' THEN 'مشتري2 ' ELSE Customer2Lable END AS Customer2Lable 
FROM FormTypes WHERE (FormType = @FormType)
UNION ALL 
SELECT 2 As ID,CASE WHEN isnull(Customer3Lable, '') = '' THEN 'مشتري3 ' ELSE Customer3Lable END AS Customer3Lable 
FROM FormTypes WHERE (FormType = @FormType)
UNION ALL 
SELECT 3 As ID,CASE WHEN isnull(Customer2OnDetailLable, '') = '' THEN 'مشتري جزء ' ELSE Customer2OnDetailLable END AS Customer2OnDetailLable 
FROM FormTypes WHERE (FormType = @FormType)
)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
-------------------------------------------------
--------------------------------------------------

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
-- =============================================
-- Author:	 <M.Kahdooei>
-- Create date: <94/02/06>
-- Description:	<محاسبه موجودی انبار>
-- =============================================
CREATE FUNCTION [dbo].[StoreEntity] 
(
@StuffcodeFrom bigint = 0, @StuffcodeTo bigint = 9999999, @StoreIDFrom int = 0,
@StoreIDTo int = 99, @YearIDFrom int = 60, @YearIDTo int = 99
)
RETURNS 
TABLE
AS
RETURN 
(

SELECT     YearID, StoreID, StuffCode, SUM(InputEntity - OutputEntity) AS Entity
     FROM         ReciptItems_Stock
     WHERE (EffectType IN (2, 4, 6, 7,  8  ))   
	 AND (ReciptState < 3) 
	 AND   (StuffCode BETWEEN @StuffcodeFrom AND @StuffcodeTo) 
	 AND   (StoreID BETWEEN @StoreIDFrom AND @StoreIDTo) 
	 AND   (YearID BETWEEN @YearIDFrom AND @YearIDTo) 
    GROUP BY YearID, StoreID, StuffCode


)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
-------------------------------------------------
--------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE FUNCTION rptStuffOrderPoint_Special (@DateFrom Char(10)='21/01/01',@DateTo Char(10)='9999/99/99',@StuffCodeFrom INT = 0
                                                    ,@StuffCodeTo INT = 999999999,@MinAvgDailySell FLOAT=0)
                                                    
RETURNS  @TmpTable TABLE (ReciptDate Char(10), StuffCode INT ,StuffAlloy VARCHAR(12),StuffDiameter FLOAT,StuffSize VARCHAR(12),
                            Balance FLOAT, EffectiveDay INT,IneffectiveDay INT,EntityExistenceDay INT, EntityLackDay INT, TotalOutputWeight FLOAT)
AS 
BEGIN

DECLARE  StuffBalance CURSOR FOR 

SELECT  DISTINCT   IR2.ReciptDate, IR2.StuffCode,IR2.StuffAlloy,IR2.StuffSize,IR2.StuffDiameter,ISNULL(SCS.EffectiveInventory,0)EffectiveInventory,
(
 SELECT SUM( InputWeight   -  OutputWeight)
 FROM            IntegratedRecipts IR1 
 WHERE (IR1.ReciptDate <= IR2.ReciptDate) AND (IR1.StuffCode=IR2.StuffCode) AND (IR1.StuffAlloy = IR2.StuffAlloy)
                                        AND (IR1.StuffDiameter = IR2.StuffDiameter)
                                        AND IR1.StuffSize= IR2.StuffSize
									  AND IR1.EffectType IN (2,4,6,7)						    
) AS Balance,
 (SELECT SUM( CASE WHEN OutputWeight>= @MinAvgDailySell THEN OutputWeight ELSE 0 END )
 FROM            IntegratedRecipts IR3 
 WHERE (IR3.ReciptDate <= IR2.ReciptDate) AND (IR2.StuffCode=IR3.StuffCode) AND (IR2.StuffAlloy = IR3.StuffAlloy)
                                        AND (IR2.StuffDiameter = IR3.StuffDiameter)
                                        AND IR2.StuffSize= IR3.StuffSize
									  AND IR3.EffectType IN (4,7)						    
) AS TotalOutputWeight
FROM            IntegratedRecipts IR2 
                         INNER JOIN StuffCodingSpecial SCS ON
                          SCS.StuffAlloy = IR2.StuffAlloy AND SCS.StuffCode = IR2.StuffCode
                          AND SCS.StuffDiameter = IR2.StuffDiameter AND SCS.StuffSize = IR2.StuffSize
WHERE          (IR2.EffectType IN (2,4,6,7))
           AND (IR2.StuffCode BETWEEN @StuffCodeFrom AND @StuffCodeTo)
	       AND (IR2.ReciptDate BETWEEN @DateFrom AND @DateTo)
ORDER BY  IR2.StuffCode,IR2.StuffAlloy,IR2.StuffDiameter,IR2.StuffSize,IR2.ReciptDate

DECLARE @Date CHAR(10)
DECLARE @CurrDate Char(10)
DECLARE @CurrCode BIGINT
DECLARE @CurrAlloy VARCHAR(12)
DECLARE @CurrSize  VARCHAR(12)
DECLARE @CurrDiameter FLOAT
DECLARE @CurrBalance FLOAT
DECLARE @CurrWeight FLOAT

DECLARE @LastDate Char(10)
DECLARE @LastCode BIGINT
DECLARE @LastAlloy VARCHAR(12)
DECLARE @LastSize  VARCHAR(12)
DECLARE @LastDiameter FLOAT
DECLARE @LastBalance FLOAT
DECLARE @LastWeight FLOAT

DECLARE @EffectiveDay INT
DECLARE @IneffectiveDay INT
DECLARE @EntityExistenceDay INT 
DECLARE @EntityLackDay INT 
DECLARE @EffectiveInventory INT

SET @Date = @DateFrom
SET @CurrDate = @DateFrom
SET @CurrCode = 0
SET @CurrAlloy = 0
SET @CurrSize = 0
SET @CurrDiameter = 0
SET @CurrBalance = 0
SET @CurrWeight = 0

SET @LastDate = @DateFrom
SET @LastCode = 0
SET @LastAlloy = 0
SET @LastSize  = 0
SET @LastDiameter = 0
SET @LastBalance = 0
SET @LastWeight = 0

SET @EffectiveDay = 0
SET @IneffectiveDay = 0
SET @EntityExistenceDay = 0
SET @EntityLackDay = 0
SET @EffectiveInventory = 0

OPEN StuffBalance
FETCH NEXT FROM  StuffBalance INTO @CurrDate,@CurrCode,@CurrAlloy,@CurrSize,@CurrDiameter,@EffectiveInventory,@CurrBalance,@CurrWeight

SET @LastDate = @CurrDate
SET @LastCode = @CurrCode
SET @LastAlloy = @CurrAlloy
SET @LastSize  = @CurrSize
SET @LastDiameter = @CurrDiameter

WHILE @@FETCH_STATUS=0
BEGIN
	WHILE RIGHT(@Date,10) <= @DateTo
	BEGIN
	IF (@CurrDate <> RIGHT(@Date,10))
	BEGIN
	    IF  (@LastBalance>0)
            SET @EntityExistenceDay =1+@EntityExistenceDay
        ELSE 
            SET @EntityLackDay =1	+@EntityLackDay
            	    
	    IF   ((@LastBalance>0) AND (@EffectiveInventory=0))
	      OR ((@EffectiveInventory>0) AND (@LastBalance > @EffectiveInventory ))
	     SET @EffectiveDay = 1+@EffectiveDay
	    ELSE SET  @IneffectiveDay =1 +@IneffectiveDay
	    
		INSERT INTO @TmpTable ( ReciptDate, StuffCode ,StuffAlloy, StuffDiameter, StuffSize, Balance,EffectiveDay,IneffectiveDay, EntityExistenceDay, EntityLackDay,TotalOutputWeight)
		VALUES  ( RIGHT(@Date,10),@CurrCode,@CurrAlloy,@CurrDiameter,@CurrSize,@LastBalance,@EffectiveDay,@IneffectiveDay,@EntityExistenceDay,@EntityLackDay,@LastWeight)
		SET @date = dbo.MiladiToShamsi(DATEADD(DAY, 1, dbo.ShamsiToMiladi(@Date)))
		CONTINUE
	END 
	--IF @CurrDate <> RIGHT(@Date,10) 
	IF   (@CurrBalance>0)
	  SET @EntityExistenceDay  =@EntityExistenceDay +1
	ELSE 
	  SET @EntityLackDay =1	+@EntityLackDay
	   
	IF   ((@CurrBalance>0) AND (@EffectiveInventory=0))
	  OR ((@EffectiveInventory>0) AND (@CurrBalance > @EffectiveInventory ))
	  SET @EffectiveDay = 1+@EffectiveDay
	ELSE SET  @IneffectiveDay =1+@IneffectiveDay
	    
	INSERT INTO @TmpTable ( ReciptDate, StuffCode ,StuffAlloy, StuffDiameter, StuffSize,Balance,EffectiveDay,IneffectiveDay,EntityExistenceDay, EntityLackDay, TotalOutputWeight)
	VALUES  ( @CurrDate,@CurrCode,@CurrAlloy,@CurrDiameter,@CurrSize,@CurrBalance,@EffectiveDay,@IneffectiveDay,@EntityExistenceDay,@EntityLackDay,@CurrWeight)
	SET @LastBalance = @CurrBalance
	SET @LastWeight = @CurrWeight
	FETCH NEXT FROM  StuffBalance INTO @CurrDate,@CurrCode,@CurrAlloy,@CurrSize,@CurrDiameter,@EffectiveInventory,@CurrBalance,@CurrWeight
	
	IF   (@CurrCode<>@LastCode) OR (@CurrAlloy <> @LastAlloy) OR
	     (@CurrSize<>@LastSize) OR (@CurrDiameter<>@LastDiameter)
	BEGIN
	    SET @date = dbo.MiladiToShamsi(DATEADD(DAY, 1, dbo.ShamsiToMiladi(@Date)))
		WHILE @Date <= @DateTo
		BEGIN
		    IF   (@LastBalance>0)
	            SET @EntityExistenceDay =1+@EntityExistenceDay
	        ELSE 
	            SET @EntityLackDay =1	+@EntityLackDay
			IF (( @LastBalance > 0 ) AND ( @EffectiveInventory = 0 ))
				OR (( @EffectiveInventory > 0 )AND ( @LastBalance > @EffectiveInventory ))
				SET @EffectiveDay = 1+@EffectiveDay
			ELSE
				SET @IneffectiveDay = 1 +@IneffectiveDay
		    
			INSERT INTO @TmpTable ( ReciptDate, StuffCode ,StuffAlloy, StuffDiameter, StuffSize,Balance,EffectiveDay,IneffectiveDay,EntityExistenceDay, EntityLackDay,TotalOutputWeight)
			VALUES  ( RIGHT(@Date,10),@LastCode,@LastAlloy,@LastDiameter,@LastSize,@LastBalance,@EffectiveDay,@IneffectiveDay,@EntityExistenceDay,@EntityLackDay,@LastWeight)
			SET @date = dbo.MiladiToShamsi(DATEADD(DAY, 1, dbo.ShamsiToMiladi(@Date)))
		END
		SET @date = @DateFrom 
		SET @LastBalance = 0
		SET @LastWeight = 0
		SET @EffectiveDay = 0
		SET @IneffectiveDay = 0
		SET @EntityExistenceDay = 0
		SET @EntityLackDay = 0
	END
	ELSE
	BEGIN
		SET @date = dbo.MiladiToShamsi(DATEADD(DAY, 1, dbo.ShamsiToMiladi(@Date)))
	END	
	SET @LastDate = @CurrDate
	SET @LastCode = @CurrCode
	SET @LastAlloy = @CurrAlloy
	SET @LastSize  = @CurrSize
	SET @LastDiameter = @CurrDiameter
	END
END
CLOSE StuffBalance
DEALLOCATE StuffBalance
RETURN
END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
-------------------------------------------------
--------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
-- =============================================
-- Author:	 <mehdi.kahdooei>
-- Create date: <94/02/16>
-- Description:	<>
-- =============================================
CREATE TRIGGER [dbo].[TR_UpdateAcconting]
   ON  [dbo].[Customers] 
   AFTER UPDATE
AS 
BEGIN

SET NOCOUNT ON
DECLARE @BankName varchar(150)
DECLARE @DoInsert int
DECLARE @SQLText varchar(8000)
DECLARE @SQLView varchar(8000)
DECLARE @OldCustID varchar(12)
DECLARE @NewCustID varchar(12)
DECLARE @CustName varchar(150)

SELECT @BankName = AccountDBName from dbo.Config
SELECT @DoInsert = AccDetailCodeEqualCustID from dbo.Config
SELECT @OldCustID = CustID from deleted
SELECT @NewCustID = CustID from inserted
SELECT @CustName = CustName from inserted

IF (@BankName IS NOT NULL)
IF (@DoInsert = 3)
BEGIN
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[view_CheckAcconting]'))
--IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id( N'[Acc].[view_CheckAcconting]') AND OBJECTPROPERTY(id, N'IsView') = 1)
EXEC('drop view [dbo].[view_CheckAcconting]')
    
    SET @SQLView = ' create view [dbo].[view_CheckAcconting] AS '+CHAR(13)+
               ' SELECT DISTINCT  DetailCode from '+@BankName+'.Acc.Documents'
EXEC(@SQLView)


IF NOT EXISTS(SELECT DetailCode FROM dbo.view_CheckAcconting WHERE dbo.view_CheckAcconting.DetailCode = @OldCustID)
BEGIN
SET @SQLText = 'ALTER TABLE ['+@BankName+'].[Acc].[Details] '+
                   'DISABLE TRIGGER [TR_UpdateBsell] '
EXEC(@SQLText)
SET @SQLText = ' UPDATE '+@BankName+'.Acc.Details'+CHAR(13)+
               ' SET DetailCode = '+@NewCustID+', DetailName_L1 = '''+@CustName+''''+CHAR(13)+
               ' WHERE DetailCode = '+@OldCustID+' '
EXEC(@SQLText)

SET @SQLText = 'ALTER TABLE ['+@BankName+'].[Acc].[Details] '+
                   'ENABLE TRIGGER [TR_UpdateBsell] '
EXEC(@SQLText)
END
ELSE
BEGIN
RollBack Transaction
RaisError('به علت گردش ، ویرایش کد مورد نظر مجاز نمی باشد', 16, 1)
END

END

END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
-------------------------------------------------
--------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
-- =============================================
-- Author:	 <mehdi.kahdooei>
-- Create date: <94/02/16>
-- Description:	<>
-- =============================================
CREATE TRIGGER [dbo].[TR_DeleteAcconting]
   ON  [dbo].[Customers] 
   AFTER DELETE
AS 
BEGIN

SET NOCOUNT ON;
DECLARE @CustID varchar(20)
DECLARE @BankName varchar(150)
DECLARE @DoInsert int
DECLARE @SQLText varchar(8000)
DECLARE @SQLView varchar(8000)

SELECT @BankName = AccountDBName from dbo.Config
SELECT @DoInsert = AccDetailCodeEqualCustID from dbo.Config
SELECT @CustID = CustID from deleted
SELECT @CustID = LTRIM(RTRIM(@CustID))

IF (@BankName IS NOT NULL)
IF (@DoInsert = 3)
BEGIN
EXEC('IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id( N''[dbo].[view_CheckAcconting]'') AND OBJECTPROPERTY(id, N''IsView'') = 1) '+
         ' EXEC sp_refreshview ''dbo.view_CheckAcconting''')
         
    IF NOT EXISTS (SELECT * FROM sysobjects WHERE id = object_id( N'[dbo].[view_CheckAcconting]') AND OBJECTPROPERTY(id, N'IsView') = 1)
    BEGIN
    SET @SQLView = ' create VIEW [dbo].[view_CheckAcconting] AS '+CHAR(13)+
               ' SELECT DISTINCT  DetailCode from '+@BankName+'.Acc.Documents'
EXEC(@SQLView)
END
IF NOT EXISTS(SELECT DetailCode FROM view_CheckAcconting WHERE view_CheckAcconting.DetailCode = @CustID)
BEGIN
SET @SQLText = ' DELETE FROM '+@BankName+'.Acc.Details'+CHAR(13)+
               ' WHERE DetailCode = '+@CustID+''
EXEC(@SQLText)
END
ELSE
BEGIN
RollBack Transaction
RaisError('به علت گردش ، حذف کد مورد نظر مجاز نمی باشد', 16, 1)
END

END

END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
-------------------------------------------------
--------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE FUNCTION [dbo].[bsell_variance] 
(	
   @RType VARCHAR(500),@YearFrom INT,@YearTo INT

)
RETURNS TABLE 
AS
RETURN 
(
    SELECT 1 as kind, R.ReciptID as Serial, R.StoreID as  CompanyCode, R.YearID, R.ReciptID as id, 
           R.ReciptNumber as  SecondaryDocNo, 0 as PrimaryDocNo, r.ReciptDate as docdate,0 as Row,
           0 as AccCode1, cast(R.AidNumber as varchar(30)) as  AccName1, 0 as AccCode2, 
           R.AidDate as  AccName2, 0 as AccCode3, null as AccName3,
           ltrim(t.ReciptCaption) + '  بشماره :  '+ltrim( R.ReciptNumber)+ 
		   ' مشتری : '+LTRIM(R.PersonID1)+' , ''انبار: '+LTRIM(R.StoreID)    as  Comment,
           SUM(RI.TotalOutputPrice) as Debt,SUM(RI.TotalInputPrice) as Credit,
           R.ReciptNumber as AidNo, R.DocDate as AidDate, 0 as DocumentId,0 as VarianceCode, r.DocNo as docNo
    FROM
           dbo.Recipts as R INNER JOIN dbo.ReciptItems as RI  ON R.ReciptID=RI.ReciptID and 
           r.YearID=ri.YearID and r.ServerID=ri.ServerID INNER join Dbo.ReciptTypes1 as T on t.recipttype = r.ReciptType

    WHERE  R.ReciptType in (select part from dbo.SplitString(@RType,','))
           AND R.YearID BETWEEN @YearFrom And @YearTo and 
		   r.reciptstate <3
          
    GROUP BY
            R.ReciptID, R.StoreID, R.YearID, r.ReciptDate, R.AidNumber, R.AidDate,
            ltrim(t.ReciptCaption) + '  بشماره :  '+ltrim( R.ReciptNumber)+ 
		   ' مشتری : '+LTRIM(R.PersonID1)+' , ''انبار: '+LTRIM(R.StoreID)    ,
            R.ReciptNumber ,R.DocDate ,r.DocNo
)
-- =============================================
-- Author:        <Author, mehdi.kahdooei>
-- Create date: <Create Date, 94.03.24>
-- Description:    <Description, Just Use in Acconting>
-- =============================================
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
-------------------------------------------------
--------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE  FUNCTION PrintCountingLabel ( @GroupIdFrom int=1 , @GroupIdTo int=292 , @YearIDFrom int=94 , @YearIDTo int=94
                                    , @storeid int=1, @codeFrom bigint=1111001, @codeTo bigint =1888008 ,@LimitKind int =0, @SortKind int = 0  )

  RETURNS @retFindReports TABLE 
  (
	StuffCode bigint , 	c_StuffName nvarchar(150) , 	c_StuffTecInfo nvarchar(250) , 	UnitName nvarchar(50) , 	n_StoreID smallint ,
	c_StoreName nvarchar(70) ,	Entity float ,	Weight float ,	c_KeepPlace nvarchar(25) ,	Alphabet nvarchar(1) , sd1 varchar(64) , st1 int , serial int 
	, 	Cabinet nvarchar(100), 	Tierced nvarchar(100)
	, 	KeepPlace varchar(150) , 	Cabinets varchar(100) , 	Tierceds varchar(100) 
  )
  AS 
BEGIN  

-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
IF @LimitKind = -1 
INSERT INTO @retFindReports
SELECT     CountingItems.StuffCode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo, Units.UnitName, CountingItems.StoreID AS n_StoreID, Stores.c_StoreName, 
                      Count1Entity AS Entity, Count1Weight AS Weight, 
                      StuffCoding.c_KeepPlace ,dbo.GetFirstChar(StuffCoding.c_StuffName) AS Alphabet, StuffCoding.sd1, StuffCoding.st1 , CountingItems.SheetID as serial 
					  , StuffCoding.Cabinet , StuffCoding.Tierced, Sf.KeepPlace, Sf.Cabinet Cabinets , Sf.Tierced

FROM         Stores INNER JOIN
                      CountingItems  INNER JOIN
                      StuffCoding ON CountingItems.StuffCode = StuffCoding.c_StuffCode INNER JOIN
                      Units ON StuffCoding.n_UnitCode = Units.UnitCode ON Stores.n_StoreID = CountingItems.StoreID
					  LEFT OUTER JOIN StuffCodingFacilities Sf ON StuffCoding.c_StuffCode = Sf.StuffCode AND Stores.n_StoreID = Sf.StoreID
WHERE  (CountingItems.SheetID <> 0)
AND (dbo.StuffCoding.GroupID BETWEEN @GroupIdFrom AND @GroupIdTo)
AND ( (CountingItems.YearID BETWEEN   @YearIDTo AND @YearIDTo) or CountingItems.YearID is null )
AND (CountingItems.StoreID = @StoreID) AND (CountingItems.StuffCode BETWEEN @codeFrom AND @codeTo)

ORDER BY CASE WHEN @SortKind = 0 THEN  RIGHT( '0000000000000000000000000'+(cast(CountingItems.StuffCode  as varchar(50))),50)  
              WHEN @SortKind = 1 THEN  StuffCoding.c_KeepPlace
              WHEN @SortKind = 2 THEN  dbo.GetFirstChar(StuffCoding.c_StuffName)
              WHEN @SortKind = 3 THEN  CountingItems.StuffCode
			  ELSE '0'  END


-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
IF @LimitKind = 0 
INSERT INTO @retFindReports
SELECT     Rs.StuffCode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo, Units.UnitName, Rs.StoreID AS n_StoreID, Rs.c_StoreName, 
                      SUM(Rs.InputEntity - Rs.OutputEntity) AS Entity, SUM(Rs.InputWeight - Rs.OutputWeight) AS Weight, 
                      StuffCoding.c_KeepPlace ,dbo.GetFirstChar(StuffCoding.c_StuffName) AS Alphabet, StuffCoding.sd1, StuffCoding.st1 , 0 as serial 
					  , StuffCoding.Cabinet , StuffCoding.Tierced, Sf.KeepPlace, Sf.Cabinet Cabinets, Sf.Tierced

FROM    ReciptItems_Stock  Rs INNER JOIN
                      StuffCoding ON Rs.StuffCode = StuffCoding.c_StuffCode INNER JOIN
                      Units ON StuffCoding.n_UnitCode = Units.UnitCode
					  LEFT OUTER JOIN StuffCodingFacilities Sf ON StuffCoding.c_StuffCode = Sf.StuffCode AND Rs.StoreID = Sf.StoreID
WHERE (dbo.StuffCoding.GroupID BETWEEN @GroupIdFrom AND @GroupIdTo)
AND (Rs.YearID BETWEEN   @YearIDFrom AND @YearIDTo)
AND (Rs.StoreID = @StoreID) AND (Rs.StuffCode BETWEEN @codeFrom AND @codeTo)

GROUP BY Rs.StuffCode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo, Units.UnitName, Rs.StoreID, Rs.c_StoreName, 
                      StuffCoding.c_KeepPlace , StuffCoding.sd1, StuffCoding.st1
					  , StuffCoding.Cabinet , StuffCoding.Tierced, Sf.KeepPlace, Sf.Cabinet , Sf.Tierced
HAVING  (SUM(Rs.InputEntity - Rs.OutputEntity) <> 0)

ORDER BY CASE WHEN @SortKind = 0 THEN  RIGHT( '0000000000000000000000000'+(cast(Rs.StuffCode  as varchar(50))),50)  
              WHEN @SortKind = 1 THEN  StuffCoding.c_KeepPlace
              WHEN @SortKind = 2 THEN  dbo.GetFirstChar(StuffCoding.c_StuffName)
              WHEN @SortKind = 3 THEN  Rs.StuffCode
			  ELSE '0'  END

-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
IF @LimitKind = 1 
INSERT INTO @retFindReports
          SELECT  StuffCoding.c_StuffCode as StuffCode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo,
        Units.UnitName,StoreStuffs.n_StoreID, Stores.c_StoreName, 0.0 AS Entity, 0.0 AS Weight
        , StuffCoding.c_KeepPlace,dbo.GetFirstChar(StuffCoding.c_StuffName) AS Alphabet, StuffCoding.sd1, StuffCoding.st1 , 0 as serial 
					  , StuffCoding.Cabinet , StuffCoding.Tierced, Sf.KeepPlace, Sf.Cabinet Cabinets, Sf.Tierced

        FROM StoreStuffs RIGHT OUTER JOIN Stores ON StoreStuffs.n_StoreID = Stores.n_StoreID RIGHT OUTER JOIN
        StuffCoding INNER JOIN Units ON StuffCoding.n_UnitCode = Units.UnitCode ON StoreStuffs.c_StuffCode =
        StuffCoding.c_StuffCode
		LEFT OUTER JOIN StuffCodingFacilities Sf ON StuffCoding.c_StuffCode = Sf.StuffCode AND StoreStuffs.n_StoreID = Sf.StoreID

        WHERE (StoreStuffs.n_StoreID = @StoreID) AND (StuffCoding.c_StuffCode BETWEEN @codeFrom AND @codeTo)
        AND (dbo.StuffCoding.GroupID BETWEEN @GroupIdFrom AND @GroupIdTo)

        GROUP BY StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo, Units.UnitName, StoreStuffs.n_StoreID,
        Stores.c_StoreName, StuffCoding.c_KeepPlace, StuffCoding.c_StuffCode, StuffCoding.sd1, StuffCoding.st1
					  , StuffCoding.Cabinet , StuffCoding.Tierced, Sf.KeepPlace, Sf.Cabinet , Sf.Tierced
        
ORDER BY CASE WHEN @SortKind = 0 THEN  RIGHT( '0000000000000000000000000'+(cast(StuffCoding.c_StuffCode  as varchar(50))),50) 
              WHEN @SortKind = 1 THEN  StuffCoding.c_KeepPlace
              WHEN @SortKind = 2 THEN  dbo.GetFirstChar(StuffCoding.c_StuffName)
              WHEN @SortKind = 3 THEN  StuffCoding.c_StuffCode
			  ELSE '0'  END


-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
IF @LimitKind = 2 
INSERT INTO @retFindReports
        SELECT ReciptItems.StuffCode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo, Units.UnitName, Recipts.StoreID AS
        n_StoreID, Stores.c_StoreName,
        SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity) AS Entity, SUM(ReciptItems.InputWeight -
        ReciptItems.OutputWeight) AS Weight,StuffCoding.c_KeepPlace
        ,dbo.GetFirstChar(StuffCoding.c_StuffName) AS Alphabet, StuffCoding.sd1, StuffCoding.st1, 0 as serial 
					  , StuffCoding.Cabinet , StuffCoding.Tierced, Sf.KeepPlace, Sf.Cabinet Cabinets, Sf.Tierced

        FROM ReciptItems INNER JOIN
        Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND
        ReciptItems.YearID = Recipts.YearID INNER JOIN
        StuffCoding ON ReciptItems.StuffCode = StuffCoding.c_StuffCode INNER JOIN
        Units ON StuffCoding.n_UnitCode = Units.UnitCode INNER JOIN
        Stores ON Recipts.StoreID = Stores.n_StoreID INNER JOIN
        ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType
		LEFT OUTER JOIN StuffCodingFacilities Sf ON StuffCoding.c_StuffCode = Sf.StuffCode AND Stores.n_StoreID = Sf.StoreID
        WHERE (ReciptTypes.EffectType IN (2, 4))
        AND (Recipts.StoreID = @StoreID) AND (ReciptItems.StuffCode BETWEEN @codeFrom AND @codeTo)
        AND (dbo.StuffCoding.GroupID BETWEEN @GroupIdFrom AND @GroupIdTo)
        AND (Recipts.YearID BETWEEN   @YearIDFrom AND @YearIDTo)

        GROUP BY ReciptItems.StuffCode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo, Units.UnitName, Recipts.StoreID,
        Stores.c_StoreName,StuffCoding.c_KeepPlace, StuffCoding.sd1, StuffCoding.st1         
					  , StuffCoding.Cabinet , StuffCoding.Tierced, Sf.KeepPlace, Sf.Cabinet , Sf.Tierced

ORDER BY CASE WHEN @SortKind = 0 THEN  RIGHT( '0000000000000000000000000'+(cast(ReciptItems.StuffCode  as varchar(50))),50)
              WHEN @SortKind = 1 THEN  StuffCoding.c_KeepPlace
              WHEN @SortKind = 2 THEN  dbo.GetFirstChar(StuffCoding.c_StuffName)
              WHEN @SortKind = 3 THEN  ReciptItems.StuffCode
			  ELSE '0'  END

-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
IF @LimitKind = 3 
INSERT INTO @retFindReports

-- SELECT     ReciptItems.StuffCode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo, Units.UnitName, 
--			Recipts.StoreID AS n_StoreID, Stores.c_StoreName, 
--                      SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity) AS Entity, 
--					  SUM(ReciptItems.InputWeight - ReciptItems.OutputWeight) AS Weight, 
--                      StuffCoding.c_KeepPlace ,dbo.GetFirstChar(StuffCoding.c_StuffName) AS Alphabet, StuffCoding.sd1, StuffCoding.st1, 0 as serial 

--FROM         Stores INNER JOIN
--                      Recipts INNER JOIN
--                      ReciptItems ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND 
--                      ReciptItems.YearID = Recipts.YearID INNER JOIN
--                      ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType INNER JOIN
--                      StuffCoding ON ReciptItems.StuffCode = StuffCoding.c_StuffCode INNER JOIN
--                      Units ON StuffCoding.n_UnitCode = Units.UnitCode ON Stores.n_StoreID = Recipts.StoreID inner join 
--					 (select StuffCode from dbo.InventoryInMultiYearId(@YearIDFrom , @YearIDTo) where PurEntity + PurWeight = 0) 
--					 MultiYearId ON MultiYearId.StuffCode = ReciptItems.StuffCode

--WHERE     (ReciptTypes.EffectType IN (2, 4))
--AND (dbo.StuffCoding.GroupID BETWEEN @GroupIdFrom AND @GroupIdTo)
--AND (Recipts.YearID = @YearIDTo)
--AND (Recipts.StoreID = @StoreID) AND (ReciptItems.StuffCode BETWEEN @codeFrom AND @codeTo)

--GROUP BY ReciptItems.StuffCode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo, Units.UnitName, Recipts.StoreID, Stores.c_StoreName, 
--                      StuffCoding.c_KeepPlace , StuffCoding.sd1, StuffCoding.st1
--HAVING  (SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity) + SUM(ReciptItems.InputWeight - ReciptItems.OutputWeight) <> 0) 

SELECT        ReciptItems_Stock.StuffCode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo, 
						 Units.UnitName, ReciptItems_Stock.StoreID, ReciptItems_Stock.c_StoreName, 
                         SUM(ReciptItems_Stock.InputEntity - ReciptItems_Stock.OutputEntity) AS Entity, 
						 SUM(ReciptItems_Stock.InputWeight - ReciptItems_Stock.OutputWeight) AS Weight, StuffCoding.c_KeepPlace, 
                         dbo.GetFirstChar(StuffCoding.c_StuffName) AS Alphabet, StuffCoding.sd1, StuffCoding.st1, 0 AS Serial
					  , StuffCoding.Cabinet , StuffCoding.Tierced, Sf.KeepPlace, Sf.Cabinet Cabinets, Sf.Tierced
FROM            ReciptItems_Stock INNER JOIN
                         StuffCoding ON ReciptItems_Stock.StuffCode = StuffCoding.c_StuffCode INNER JOIN
                         Units ON StuffCoding.n_UnitCode = Units.UnitCode LEFT OUTER JOIN
						 (select ReciptItems_Stock_2.StuffCode from ReciptItems_Stock as ReciptItems_Stock_2
						  where (ReciptItems_Stock_2.ReciptType > 3) AND (ReciptItems_Stock_2.EffectType IN (4, 2)) AND
								(ReciptItems_Stock_2.YearID between @YearIDFrom and @YearIDTo) AND
								(ReciptItems_Stock_2.StoreID = @StoreID)
						  ) ReciptItems_Stock_3 ON ReciptItems_Stock_3.StuffCode = ReciptItems_Stock.StuffCode
LEFT OUTER JOIN StuffCodingFacilities Sf ON StuffCoding.c_StuffCode = Sf.StuffCode AND ReciptItems_Stock.StoreID = Sf.StoreID
WHERE        (ReciptItems_Stock.EffectType IN (4, 2)) AND
				(ReciptItems_Stock.StoreID = @StoreID) AND (StuffCoding.GroupID BETWEEN @GroupIdFrom AND @GroupIdTo) AND
				(ReciptItems_Stock.StuffCode BETWEEN @codeFrom AND @codeTo) AND
				(ReciptItems_Stock.YearID = @YearIDTo) AND (ReciptItems_Stock_3.StuffCode IS NULL)
GROUP BY ReciptItems_Stock.StuffCode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo, Units.UnitName, ReciptItems_Stock.StoreID, 
			ReciptItems_Stock.c_StoreName, StuffCoding.st1, StuffCoding.c_KeepPlace, StuffCoding.sd1 
					  , StuffCoding.Cabinet , StuffCoding.Tierced, Sf.KeepPlace, Sf.Cabinet , Sf.Tierced
HAVING  SUM(ReciptItems_Stock.InputEntity - ReciptItems_Stock.OutputEntity) <> 0
ORDER BY CASE WHEN @SortKind = 0 THEN  RIGHT( '0000000000000000000000000'+(cast(ReciptItems_Stock.StuffCode  as varchar(50))),50)
              WHEN @SortKind = 1 THEN  StuffCoding.c_KeepPlace
              WHEN @SortKind = 2 THEN  dbo.GetFirstChar(StuffCoding.c_StuffName) 
              WHEN @SortKind = 3 THEN  ReciptItems_Stock.StuffCode
			  ELSE '0'  END

------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
--IF @LimitKind = 4 
--INSERT INTO @retFindReports
--          SELECT  StuffCoding.c_StuffCode as StuffCode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo,
--        Units.UnitName,StoreStuffs.n_StoreID, Stores.c_StoreName, 0.0 AS Entity, 0.0 AS Weight
--        , StuffCoding.c_KeepPlace,dbo.GetFirstChar(StuffCoding.c_StuffName) AS Alphabet, StuffCoding.sd1, StuffCoding.st1, 0 as serial 

--        FROM StoreStuffs RIGHT OUTER JOIN Stores ON StoreStuffs.n_StoreID = Stores.n_StoreID RIGHT OUTER JOIN
--        StuffCoding INNER JOIN Units ON StuffCoding.n_UnitCode = Units.UnitCode ON StoreStuffs.c_StuffCode =
--        StuffCoding.c_StuffCode inner join 
--		dbo.Three_salmjodinull three on three.serial =StuffCoding.sd1 

--        WHERE (StoreStuffs.n_StoreID = @StoreID) AND (StuffCoding.c_StuffCode BETWEEN @codeFrom AND @codeTo)
--        AND (dbo.StuffCoding.GroupID BETWEEN @GroupIdFrom AND @GroupIdTo)

--        GROUP BY StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo, Units.UnitName, StoreStuffs.n_StoreID,
--        Stores.c_StoreName, StuffCoding.c_KeepPlace, StuffCoding.c_StuffCode, StuffCoding.sd1, StuffCoding.st1
        
--ORDER BY CASE WHEN @SortKind = 0 THEN  RIGHT( '0000000000000000000000000'+(cast(StuffCoding.c_StuffCode  as varchar(50))),50) 
--              WHEN @SortKind = 1 THEN  StuffCoding.c_KeepPlace
--              WHEN @SortKind = 2 THEN  dbo.GetFirstChar(StuffCoding.c_StuffName)
--              WHEN @SortKind = 3 THEN  StuffCoding.c_StuffCode
--			  ELSE 0  END

IF @LimitKind = 4 
INSERT INTO @retFindReports


SELECT        ReciptItems_Stock.StuffCode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo, 
						 Units.UnitName, ReciptItems_Stock.StoreID, ReciptItems_Stock.c_StoreName, 
                         SUM(ReciptItems_Stock.InputEntity + ReciptItems_Stock.OutputEntity) AS Entity, 
						 SUM(ReciptItems_Stock.InputWeight + ReciptItems_Stock.OutputWeight) AS Weight, StuffCoding.c_KeepPlace, 
                         dbo.GetFirstChar(StuffCoding.c_StuffName) AS Alphabet, StuffCoding.sd1, StuffCoding.st1, 0 AS Serial
					  , StuffCoding.Cabinet , StuffCoding.Tierced, Sf.KeepPlace, Sf.Cabinet Cabinets, Sf.Tierced
FROM            ReciptItems_Stock INNER JOIN
                         StuffCoding ON ReciptItems_Stock.StuffCode = StuffCoding.c_StuffCode INNER JOIN
                         Units ON StuffCoding.n_UnitCode = Units.UnitCode
						 LEFT OUTER JOIN StuffCodingFacilities Sf ON StuffCoding.c_StuffCode = Sf.StuffCode AND ReciptItems_Stock.StoreID = Sf.StoreID
WHERE        (ReciptItems_Stock.ReciptType > 3) AND 
				(ReciptItems_Stock.EffectType IN (4, 2)) AND
				(ReciptItems_Stock.StoreID = @StoreID) AND (StuffCoding.GroupID BETWEEN @GroupIdFrom AND @GroupIdTo) AND
				(ReciptItems_Stock.StuffCode BETWEEN @codeFrom AND @codeTo) AND
				(ReciptItems_Stock.YearID between @YearIDFrom and @YearIDTo)
GROUP BY ReciptItems_Stock.StuffCode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo, Units.UnitName, ReciptItems_Stock.StoreID, 
			ReciptItems_Stock.c_StoreName, StuffCoding.st1, StuffCoding.c_KeepPlace, StuffCoding.sd1 
					  , StuffCoding.Cabinet , StuffCoding.Tierced, Sf.KeepPlace, Sf.Cabinet, Sf.Tierced 

ORDER BY CASE WHEN @SortKind = 0 THEN  RIGHT( '0000000000000000000000000'+(cast(ReciptItems_Stock.StuffCode  as varchar(50))),50)
              WHEN @SortKind = 1 THEN  StuffCoding.c_KeepPlace
              WHEN @SortKind = 2 THEN  dbo.GetFirstChar(StuffCoding.c_StuffName) 
              WHEN @SortKind = 3 THEN  ReciptItems_Stock.StuffCode
			  ELSE '0'  END

-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
IF @LimitKind = 5 
INSERT INTO @retFindReports

-- SELECT     ReciptItems.StuffCode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo, Units.UnitName, 
--			Recipts.StoreID AS n_StoreID, Stores.c_StoreName, 
--                      SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity) AS Entity, 
--					  SUM(ReciptItems.InputWeight - ReciptItems.OutputWeight) AS Weight, 
--                      StuffCoding.c_KeepPlace ,dbo.GetFirstChar(StuffCoding.c_StuffName) AS Alphabet, StuffCoding.sd1, StuffCoding.st1, 0 as serial 

--FROM         Stores INNER JOIN
--                      Recipts INNER JOIN
--                      ReciptItems ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND 
--                      ReciptItems.YearID = Recipts.YearID INNER JOIN
--                      ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType INNER JOIN
--                      StuffCoding ON ReciptItems.StuffCode = StuffCoding.c_StuffCode INNER JOIN
--                      Units ON StuffCoding.n_UnitCode = Units.UnitCode ON Stores.n_StoreID = Recipts.StoreID inner join 
--					 (select StuffCode from dbo.InventoryInMultiYearId(@YearIDFrom , @YearIDTo) where PurEntity + PurWeight <> 0) 
--					 MultiYearId ON MultiYearId.StuffCode = ReciptItems.StuffCode
--WHERE     (ReciptTypes.EffectType IN (2, 4))
--AND (dbo.StuffCoding.GroupID BETWEEN @GroupIdFrom AND @GroupIdTo)
--AND (Recipts.YearID = @YearIDTo)
--AND (Recipts.StoreID = @StoreID) AND (ReciptItems.StuffCode BETWEEN @codeFrom AND @codeTo)
 

--GROUP BY ReciptItems.StuffCode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo, Units.UnitName, Recipts.StoreID, Stores.c_StoreName, 
--                      StuffCoding.c_KeepPlace, StuffCoding.sd1 , StuffCoding.st1
--HAVING  (SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity) + SUM(ReciptItems.InputWeight - ReciptItems.OutputWeight) <> 0) 
--or 
--( 
--( not(min(five.entity) is null ) and 
--(SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity) <> 0)
--min(five.entity) ) )
--or 
--( Not( min(three.entity) is null ) and (SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity) = min(three.entity)))
			
--)

SELECT        ReciptItems_Stock.StuffCode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo, 
						 Units.UnitName, ReciptItems_Stock.StoreID, ReciptItems_Stock.c_StoreName, 
                         SUM(ReciptItems_Stock.InputEntity - ReciptItems_Stock.OutputEntity) AS Entity, 
						 SUM(ReciptItems_Stock.InputWeight - ReciptItems_Stock.OutputWeight) AS Weight, StuffCoding.c_KeepPlace, 
                         dbo.GetFirstChar(StuffCoding.c_StuffName) AS Alphabet, StuffCoding.sd1, StuffCoding.st1, 0 AS Serial
					  , StuffCoding.Cabinet , StuffCoding.Tierced, Sf.KeepPlace, Sf.Cabinet Cabinets, Sf.Tierced
FROM            ReciptItems_Stock INNER JOIN
                         StuffCoding ON ReciptItems_Stock.StuffCode = StuffCoding.c_StuffCode INNER JOIN
                         Units ON StuffCoding.n_UnitCode = Units.UnitCode INNER JOIN
						 (select ReciptItems_Stock_2.StuffCode from ReciptItems_Stock as ReciptItems_Stock_2
						  where (ReciptItems_Stock_2.ReciptType > 3) AND (ReciptItems_Stock_2.EffectType IN (4, 2)) AND
								(ReciptItems_Stock_2.YearID between @YearIDFrom and @YearIDTo) AND
								(ReciptItems_Stock_2.StoreID = @StoreID)
						  ) ReciptItems_Stock_3 ON ReciptItems_Stock_3.StuffCode = ReciptItems_Stock.StuffCode
						  LEFT OUTER JOIN StuffCodingFacilities Sf ON StuffCoding.c_StuffCode = Sf.StuffCode AND ReciptItems_Stock.StoreID = Sf.StoreID
WHERE        (ReciptItems_Stock.EffectType IN (4, 2)) AND
				(ReciptItems_Stock.StoreID = @StoreID) AND (StuffCoding.GroupID BETWEEN @GroupIdFrom AND @GroupIdTo) AND
				(ReciptItems_Stock.StuffCode BETWEEN @codeFrom AND @codeTo) AND
				(ReciptItems_Stock.YearID = @YearIDTo)
GROUP BY ReciptItems_Stock.StuffCode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo, Units.UnitName, ReciptItems_Stock.StoreID, 
			ReciptItems_Stock.c_StoreName, StuffCoding.st1, StuffCoding.c_KeepPlace, StuffCoding.sd1 
					  , StuffCoding.Cabinet , StuffCoding.Tierced, Sf.KeepPlace, Sf.Cabinet , Sf.Tierced
HAVING  SUM(ReciptItems_Stock.InputEntity - ReciptItems_Stock.OutputEntity) <> 0
ORDER BY CASE WHEN @SortKind = 0 THEN  RIGHT( '0000000000000000000000000'+(cast(ReciptItems_Stock.StuffCode  as varchar(50))),50)
              WHEN @SortKind = 1 THEN  StuffCoding.c_KeepPlace
              WHEN @SortKind = 2 THEN  dbo.GetFirstChar(StuffCoding.c_StuffName) 
              WHEN @SortKind = 3 THEN  ReciptItems_Stock.StuffCode
			  ELSE '0'  END

		
------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
IF @LimitKind = 7
INSERT INTO @retFindReports

 SELECT     ReciptItems.StuffCode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo, Units.UnitName, 
			Recipts.StoreID AS n_StoreID, Stores.c_StoreName, 
                      SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity) AS Entity, 
					  SUM(ReciptItems.InputWeight - ReciptItems.OutputWeight) AS Weight, 
                      StuffCoding.c_KeepPlace ,dbo.GetFirstChar(StuffCoding.c_StuffName) AS Alphabet, StuffCoding.sd1, StuffCoding.st1, 0 as serial 
					  , StuffCoding.Cabinet , StuffCoding.Tierced, Sf.KeepPlace, Sf.Cabinet Cabinets, Sf.Tierced

FROM         Stores INNER JOIN
                      Recipts INNER JOIN
                      ReciptItems ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND 
                      ReciptItems.YearID = Recipts.YearID INNER JOIN
                      ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType INNER JOIN
                      StuffCoding ON ReciptItems.StuffCode = StuffCoding.c_StuffCode INNER JOIN
                      Units ON StuffCoding.n_UnitCode = Units.UnitCode ON Stores.n_StoreID = Recipts.StoreID inner join 
					 dbo.Three_salmjodinull three on three.serial =StuffCoding.sd1 
					 LEFT OUTER JOIN StuffCodingFacilities Sf ON StuffCoding.c_StuffCode = Sf.StuffCode AND Stores.n_StoreID = Sf.StoreID
WHERE     (ReciptTypes.EffectType IN (2, 4))
AND (dbo.StuffCoding.GroupID BETWEEN @GroupIdFrom AND @GroupIdTo)
AND (Recipts.YearID BETWEEN   @YearIDFrom AND @YearIDTo)
AND (Recipts.StoreID = @StoreID) AND (ReciptItems.StuffCode BETWEEN @codeFrom AND @codeTo)
 

GROUP BY ReciptItems.StuffCode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo, Units.UnitName, Recipts.StoreID, Stores.c_StoreName, 
                      StuffCoding.c_KeepPlace, StuffCoding.sd1 , StuffCoding.st1
					  , StuffCoding.Cabinet , StuffCoding.Tierced, Sf.KeepPlace, Sf.Cabinet , Sf.Tierced
HAVING  (SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity) = 0)

ORDER BY CASE WHEN @SortKind = 0 THEN  RIGHT( '0000000000000000000000000'+(cast(ReciptItems.StuffCode  as varchar(50))),50)
              WHEN @SortKind = 1 THEN  StuffCoding.c_KeepPlace
              WHEN @SortKind = 2 THEN  dbo.GetFirstChar(StuffCoding.c_StuffName)
              WHEN @SortKind = 3 THEN  ReciptItems.StuffCode
			  ELSE '0'  END


RETURN
END


GO
--------------------------------------------------
-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE  FUNCTION Service_StuffEntity (@YearIDFrom int=93 ,@YearIDTo int=93,@StoreIDFrom int=1 ,@StoreIDTo int=999999, 
                                       @StuffCodeFrom  bigint=1 ,@StuffCodeTo bigint=999999999999 )
RETURNS table  AS  
return (

SELECT        StoreStuffs.n_StoreID, StuffCoding.c_StuffCode,dbo.JsonReplaceChars(StuffCoding.c_StuffName) AS  c_StuffName
, StuffCoding.n_UnitCode,dbo.JsonReplaceChars( Units.UnitName ) AS UnitName, StuffCoding.c_StuffTecInfo
              , derivedtbl_Mojodi.InvAmount
FROM            StuffCoding INNER JOIN
                         Units ON StuffCoding.n_UnitCode = Units.UnitCode INNER JOIN
                         StoreStuffs ON StuffCoding.c_StuffCode = StoreStuffs.c_StuffCode LEFT OUTER JOIN
                             (SELECT        StoreID, StuffCode, ROUND(SUM(InputEntity - OutputEntity), 3) AS InvAmount
                                FROM            ReciptItems_Stock
                                WHERE (StoreID BETWEEN @StoreIDFrom AND @StoreIDTo) 
								  AND (StuffCode BETWEEN @StuffCodeFrom AND @StuffCodeTo) 
								  AND (YearID BETWEEN @YearIDFrom AND @YearIDTo)
                                GROUP BY StoreID, StuffCode) AS derivedtbl_Mojodi ON StoreStuffs.n_StoreID = derivedtbl_Mojodi.StoreID 
								    AND StuffCoding.c_StuffCode = derivedtbl_Mojodi.StuffCode
WHERE (StoreStuffs.n_StoreID BETWEEN @StoreIDFrom AND @StoreIDTo) AND (StuffCoding.State = 0)
  AND (StuffCoding.c_StuffCode BETWEEN @StuffCodeFrom AND @StuffCodeTo)
)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------
-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE FUNCTION GetSellsName (@SellsType int ,@SellsCode int )
RETURNS  Nvarchar(200) 
BEGIN
RETURN(SELECT        SellsName
FROM            SellsInfo
WHERE        (SellsType = @SellsType) AND (SellsCode = @SellsCode))  
  
END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------
-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE FUNCTION CustomersGroupSellsTypeCodes  ( @CustomerGrpID  int) 
RETURNS  
@ReturnTable TABLE  ( SellsType INT) 
AS 
BEGIN 
  DECLARE @SellsTypeCodes VARCHAR(8000) 
  
  SELECT  @SellsTypeCodes=   SellsTypeCodes
    FROM   CustomersGroup AS CustomersGroupSellsTypeCodes
    WHERE  (CustomerGrpID = @CustomerGrpID) 

    INSERT INTO @ReturnTable(SellsType) 
    SELECT part FROM dbo.SplitString(@SellsTypeCodes,',')

    RETURN
END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------
-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE FUNCTION GetParentForm(@StuffCode bigint,@preReciptItemID int,@ReciptItemID int,@YearID int )
RETURNS 	Nvarchar(500)
BEGIN	
DECLARE @UnitSellPrice money
DECLARE @ReciptDate Nvarchar(10)
DECLARE @CustName Nvarchar(100)
DECLARE @InputEntity FLOAT
DECLARE @Recall Nvarchar(500)=''

DECLARE @ID int
set @ID=1 
--SELECT @Recall=@Recall+'   '+  ltrim(STR((Recipts.ReciptNumber))) + (ReciptTypes.ReciptCaption) + (Recipts.ReciptDate)
--            +' = '+ltrim(STR((Items.InputEntity+Items.OutputEntity)))  
--      FROM ReciptItems AS Items INNER JOIN
--           Recipts ON Items.ReciptID = Recipts.ReciptID AND Items.ServerID = Recipts.ServerID AND Items.YearID = Recipts.YearID INNER JOIN
--           ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType
--      WHERE ((Items.ReciptItemID = @preReciptItemID)OR(Items.preReciptItemID = @ReciptItemID))
--	    AND((Items.StuffCode = @StuffCode))
--		AND (Items.YearID = @YearID)
      SELECT @Recall=@Recall+'|'+ltrim(STR(R.ReciptNumber)) + (RT.ReciptCaption) + (R.ReciptDate)
                            +' = '+ltrim(STR(RI.InputEntity+RI.OutputEntity))  

      FROM			ReciptItems RI 
		INNER JOIN  Recipts     R  ON RI.ReciptID = R.ReciptID AND RI.ServerID = R.ServerID AND RI.YearID = R.YearID 
		INNER JOIN  ReciptTypes RT ON R.ReciptType = RT.ReciptType

      WHERE ((RI.ReciptItemID = @preReciptItemID AND RI.StuffCode = @StuffCode
			  AND (RI.YearID = (select top (1) PrvYearID 
								from ReciptItems b 
								where b.ReciptItemID = @ReciptItemID and b.YearID = @YearID and b.StuffCode = @StuffCode)
								or RI.YearID = @YearID
								)
			)
			OR 
			 (RI.preReciptItemID = @ReciptItemID AND RI.StuffCode = @StuffCode AND (RI.PrvYearID = @YearID or RI.YearID = @YearID))
			)
			order by RI.YearID ,R.ReciptType , R.ReciptID desc


set @Recall=LTRIM(rtrim(@Recall))
RETURN(@Recall)
END

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------
-------------------------------------------------
--------------------------------------------------
-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE FUNCTION GetParentForm2(@ReciptID int,@ServerID int,@YearID int )
RETURNS 	Nvarchar(500)
BEGIN	
RETURN(
SELECT  TOP 1 * FROM(
SELECT TOP 1  ltrim(((R1.ReciptNumber))) + (RT1.ReciptCaption) + (R1.ReciptDate)
            +' E= '+ltrim(((RI.InputEntity+RI.OutputEntity)))+' W= '+ltrim(((RI.InputWeight+RI.OutputWeight)))  AS ParentForm

      FROM            ReciptItems AS RI INNER JOIN
                         ReciptItems AS RI_1 ON  
						 (RI.PrvYearID = RI_1.YearID AND RI.preReciptItemID = RI_1.ReciptItemID AND RI.StuffCode = RI_1.StuffCode)
						  INNER JOIN
                         Recipts AS R1 ON RI.ReciptID = R1.ReciptID AND RI.ServerID = R1.ServerID AND RI.YearID = R1.YearID INNER JOIN
                         ReciptTypes1 as RT1 ON R1.ReciptType = RT1.ReciptType

      WHERE (		    (RI_1.ServerID = @ServerID)AND(RI_1.YearID = @YearID)AND(RI_1.ReciptID = @ReciptID) 
		   )
		   union
SELECT TOP 1  ltrim(((R1.ReciptNumber))) + (RT1.ReciptCaption) + (R1.ReciptDate)
            +' E= '+ltrim(((RI.InputEntity+RI.OutputEntity)))+' W= '+ltrim(((RI.InputWeight+RI.OutputWeight)))  AS ParentForm

      FROM            ReciptItems AS RI INNER JOIN
                         ReciptItems AS RI_1 ON  
						 (RI.YearID = RI_1.PrvYearID AND RI.ReciptItemID = RI_1.preReciptItemID AND RI.StuffCode = RI_1.StuffCode)
						  INNER JOIN
                         Recipts AS R1 ON RI.ReciptID = R1.ReciptID AND RI.ServerID = R1.ServerID AND RI.YearID = R1.YearID INNER JOIN
                         ReciptTypes1 as RT1 ON R1.ReciptType = RT1.ReciptType

      WHERE ((RI_1.ServerID = @ServerID)AND(RI_1.YearID = @YearID)AND(RI_1.ReciptID = @ReciptID)
	        
		   ))aaa

	  )
	    
END

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------
-------------------------------------------------
--------------------------------------------------
-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE FUNCTION [dbo].[AllAccountItemR2andF3] ( @TypeDoc1 int =1 ,@TypeDoc2 int =-1,
				@TypeDoc3 int =-1 ,@TypeDoc4 int =-1 , 
				@CustIDFrom  int = 0 , @CustIDTo int = 999999999 ,
				@DateFrom  Char(10) =[01/01/01] , @DateTo Char(10) = [99/99/99],
				@DateFromRemain  Char(10) =[01/01/00] , 
				@YearIDFrom  int = 0 , @YearIDTo int = 9999,
				@SellsMethodFrom  int = 0 , @SellsMethodTo int = 999999999 ,
				@SellsEmporiumFrom  int = 0 , @SellsEmporiumTo int = 999999999 )
RETURNS table  AS  
return (

SELECT  ServerID, YearID , ReciptID,ReciptNumber, ReciptDate,DefaultDate,
		 '0' as CheckNo , '0'  as CheckDate , 
		'' as BankName , '' as AccountNumber ,ReciptType, ReciptCaption,
		PersonID1,PersonID2, ReciptNote, 0 as AidNo , '' as AidDate ,
		bed, bes ,0 as BudgetCode, 0 as ProjectID, '' as CuctomerName2 , 0 as DetailCustID ,
		StoreIDForShow as StoreID ,kind,  Code,  Name ,SellsMethod, SellsMethodName, 
		RelatedID , RelatedKind,0 as doctype ,0 AS AnalizeType, 0 as RelaID , StuffCode,c_StuffName , controlcode , 
		UnitName,entity,ReciptItemsAccount.weight,ItemNote,StuffDiameter,StuffSize,UnitSellPrice,
        WaterCo,DeficitValue,PersonID3 ,TotalPrice ,TaxValue,c_StuffTecInfo, ReciptItemID

		
FROM	ReciptItemsAccount(@TypeDoc1 , @CustIDFrom  , @CustIDTo ,@DateFrom,@DateTo ,@YearIDFrom ,@YearIDTo,
				@SellsMethodFrom   , @SellsMethodTo ,
				@SellsEmporiumFrom , @SellsEmporiumTo  , DEFAULT) ReciptItemsAccount

UNION ALL

SELECT     ServerID, YearID, FormID, FormNumber, FormDate,  DefaultDate , checkNumber, checkDate, BankName, AccountNumber, FormType, FormCaption, PersonID3, 
                      PersonID2, FomNote, AidInfoNo, AidInfoDate, bed, bes, BudgetCode, ProjectID, CustomerName2, DetailCustID, CustIDForShow, kind, Code, Name, SellsMethod, 
                      SellsMethodName, RelatedID, RelatedKind, DocType
                      ,0 AS AnalizeType, 0 as RelaID ,'' as  StuffCode,'' as c_StuffName , 0 as controlcode , 
		'' as UnitName,0 as entity, 0 as weight,FomNote as ItemNote,'' as StuffDiameter, '' as StuffSize,
		0 as UnitSellPrice ,
                      0 as WaterCo,0 as DeficitValue ,PersonID1, 0 as TotalPrice ,0 as TaxValue,
                      '' as c_StuffTecInfo,0 as ReciptItemID
FROM         CashAccountOnCustomerID3(@TypeDoc1 ,@TypeDoc2 ,@TypeDoc3 ,@TypeDoc4  
						, @CustIDFrom  , @CustIDTo,@DateFrom,@DateTo ,@YearIDFrom ,@YearIDTo,
				@SellsMethodFrom   , @SellsMethodTo ,
				@SellsEmporiumFrom , @SellsEmporiumTo  ) CashAccount

UNION ALL

------------------  مانده نقل از قبل ------------------

SELECT   max(ServerID), min(YearID) , 0 AS ReciptID, 0 AS FormNumber, @DateFromRemain AS FormDate,@DateFromRemain AS DefaultDate, '0' AS checkNumber,
		'0' AS checkDate,'' as BankName , '' as AccountNumber  , 0 AS FormType,	'نقل از قبل' AS FormCaption, 
		 PersonID3 , 0 as PersonID2 , 'نقل از قبل'  as FomNote, 0 AS AidInfoNo, 
		 '0' AS AidInfoDate, Sum(bed) as bed , Sum(bes) as bes , 0 as BudgetCode, 0 as ProjectID,	
		 '' as CustName2 ,  0 as DetailCustID ,0 as CustIDForShow ,0 AS kind , 0 as  Code, '' as  Name ,0 as SellsMethod, 
		 '' as SellsMethodName, 
		-1 as RelatedID , 0 as RelatedKind, 0 as doctype ,0 AS AnalizeType, 0 as RelaID ,
		'' as  StuffCode,'' as c_StuffName , 0 as controlcode , 
		'' as UnitName,0 as entity, 0 as weight,'' as ItemNote,'' as StuffDiameter, '' as StuffSize,
		0 as UnitSellPrice  ,
        0 as WaterCo,0 as DeficitValue  ,0 as PersonID1,0 as TotalPrice,0 as TaxValue,
        '' as c_StuffTecInfo,0 as ReciptItemID

FROM     (
-------
SELECT   ServerID, YearID , PersonID3 , bed,bes 
FROM     CashAccountOnCustomerID3(@TypeDoc1 ,@TypeDoc2 ,@TypeDoc3 ,@TypeDoc4 , @CustIDFrom  , 
		 @CustIDTo , '01/01/00', @DateFromRemain ,@YearIDFrom ,@YearIDTo,
				@SellsMethodFrom   , @SellsMethodTo ,
				@SellsEmporiumFrom , @SellsEmporiumTo   ) CashAccount

UNION ALL

SELECT  ServerID, YearID , PersonID1, bed,bes 
		
FROM	ReciptItemsAccount(@TypeDoc1 , @CustIDFrom  , @CustIDTo , '01/01/00', 
		@DateFromRemain ,@YearIDFrom ,@YearIDTo ,
				@SellsMethodFrom   , @SellsMethodTo ,
				@SellsEmporiumFrom , @SellsEmporiumTo , DEFAULT
		) ReciptItemsAccount

Union all
--------------------------- مانده ابتداي سال -----------------------
SELECT	@YearIDFrom as YearID , 0 as ServerID , CustID ,
		Case when firstBalance >0 then 
			firstBalance else 0 end  AS bed, 
		Case when firstBalance <0 then 
			- firstBalance else 0 end  AS bes 
FROM	customers
WHERE	firstBalance <> 0 And
 		(CustID between @CustIDFrom and @CustIDTo ) AND 
 		(@TypeDoc1 in (1,2,10) or @TypeDoc2 in (1,2,10) or 
 			@TypeDoc3 in(1,2,10) or @TypeDoc4 in (1,2,10))
 		 AND (SellsEmporium between @SellsEmporiumFrom and @SellsEmporiumTo )
 			
UNION ALL 
-------------------------- مانده ابتداي سال بتفكيك سال مالي -----------------------
SELECT     YearID, 0 AS ServerID, PersonID1, CASE WHEN Rate > 0 THEN Rate ELSE 0 END AS bed, CASE WHEN Rate < 0 THEN - Rate ELSE 0 END AS bes
FROM         RemainsEarly
WHERE     (Rate <> 0) And
 		(PersonID1 between @CustIDFrom and @CustIDTo ) AND 
 		(@TypeDoc1 in (1,2,10) or @TypeDoc2 in (1,2,10) or 
 			@TypeDoc3 in(1,2,10) or @TypeDoc4 in (1,2,10)) And 
 			(YearID BETWEEN @YearIDFrom  AND @YearIDFrom )
 		 AND (SellsEmporium between @SellsEmporiumFrom and @SellsEmporiumTo )

) FirstBalance 
Group By PersonID3
)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------
-------------------------------------------------
--------------------------------------------------
-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE PROCEDURE Android_GetNewStuffCoding  @ExternalId  Nvarchar(100) , @StuffCode Bigint , @GroupID int,@StuffName NVARCHAR(150), @UnitCode tinyint,
								@ReturnStuffCode Bigint OUTPUT as
								
BEGIN
SET NOCOUNT ON

set @StuffName=LTRIM(RTRIM(@StuffName))
if @StuffName=''
BEGIN
SET @ReturnStuffCode=-5
    --raiserror('نام کالا نمی تواند خالی باشد',16,1)
	return
END

if (SELECT COUNT(*) AS c FROM Units WHERE (UnitCode = @UnitCode))=0
BEGIN
SET @ReturnStuffCode=-6
    --raiserror('كد واحد کالای مورد نظر وجود ندارد',16,1)
	return
END


if @StuffCode <>0 
BEGIN
  if (select count(*) From StuffCoding WHERE c_StuffCode =@StuffCode)=0
   BEGIN
      SET @ReturnStuffCode = -2
      --raiserror('كد کالای مورد نظر جهت ویرایش وجود ندارد',16,1)
	  return
   END
  ELSE
  UPDATE StuffCoding SET
   c_StuffName= @StuffName,n_UnitCode= @UnitCode
   WHERE c_StuffCode =@StuffCode 
   SET @ReturnStuffCode =@StuffCode  
   RETURN 
END

if (SELECT COUNT(*) AS c FROM StuffGroups WHERE (GroupID = @GroupID))=0
BEGIN
SET @ReturnStuffCode=-3
    --raiserror('كد گروه مورد نظر وجود ندارد',16,1)
	return
END

SELECT @ReturnStuffCode=  MAX(c_StuffCode) +1 FROM StuffCoding WHERE (GroupID = @GroupID)



if @ReturnStuffCode IS NULL
SELECT @ReturnStuffCode=StartCode FROM StuffGroups WHERE (GroupID = @GroupID)

if (SELECT COUNT(*) AS c FROM StuffCoding WHERE (c_StuffCode = @ReturnStuffCode))<>0
BEGIN
SET @ReturnStuffCode=-7
    --  (-7)= كد محدوده گروه تعریف شده مشکل دارد.  
	return
END


if @ReturnStuffCode>(SELECT FinishCode FROM StuffGroups WHERE (GroupID = @GroupID))
BEGIN
SET @ReturnStuffCode=-4
    --raiserror('رنج گروه درخواستي به پايان رسيده',16,1)
END

INSERT INTO StuffCoding(ExternalId , GroupID, c_StuffName, n_UnitCode, c_StuffCode,ModifyDate,acc_DetaiCode,acc_CTopicCode,acc_CTopicCode2)
            VALUES   (@ExternalId , @GroupID,@StuffName,@UnitCode,@ReturnStuffCode,GETDATE(),0,0,0)
  
INSERT INTO StoreStuffs 
                         (c_StuffCode , n_StoreID)
SELECT         @ReturnStuffCode , n_StoreID
FROM        Stores           


END

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------
-------------------------------------------------
-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE PROCEDURE Android_GetNewStuffCodingID @ExternalId  Nvarchar(100) ,  @StuffCode Bigint , @GroupID int,@StuffName NVARCHAR(150), @UnitCode tinyint,
								@ReturnStuffCode Bigint OUTPUT as
								
BEGIN
SET NOCOUNT ON
BEGIN
if len(ltrim(RTRIM( @StuffName)))=0
BEGIN
SET @ReturnStuffCode=-5
    --نام وارد نشده
	return
END
  if (select count(*) From StuffCoding WHERE ExternalId =@ExternalId)=0
   begin
      exec  Android_GetNewStuffCoding @ExternalId , 0  , @GroupID ,@StuffName , @UnitCode ,	@ReturnStuffCode = @ReturnStuffCode OUTPUT    
	  return
   end
  else  UPDATE StuffCoding SET
   c_StuffName= @StuffName,n_UnitCode= @UnitCode
   WHERE  ExternalId =@ExternalId 
   --SET @ReturnStuffCode =@StuffCode  
   select  @ReturnStuffCode = c_StuffCode   From StuffCoding WHERE ExternalId = @ExternalId
   RETURN 
END
END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------
--------------------------------------------------
-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE FUNCTION GetWeekDayInNextWeek (@PersianDate  char(10) ,@WeekID int )
RETURNS char(10) 
BEGIN
DECLARE @SelectDate DATETIME
SET @SelectDate=dbo.ShamsiToMiladi(@PersianDate)

SELECT @SelectDate=DATEADD(wk, 1, DATEADD(DAY, @WeekID-DATEPART(WEEKDAY, @SelectDate), DATEDIFF(dd, 0, @SelectDate))) 
   RETURN( RIGHT(dbo.miladitoshamsi( @SelectDate),10))
  
END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------
-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE FUNCTION [dbo].[Recal_CheckRemainEntity] ( 
				@preReciptItemID int =1751763, @ReciptItemID int =2746314,
				@PrvYearID   int = 1396 ,  @YearID   int = 1396 ,  
				@Serverid  int = 0   )
				
RETURNS table  AS  
return
(
select sum(entity) AS Entity , sum(weight) As Weight 
From 
(select	ReciptItemID , YearID , serverid , 
		InputEntity + OutputEntity as entity ,InputWeight + OutputWeight as Weight  
from	dbo.ReciptItems
where	(ReciptItemID = @preReciptItemID) and  (YearID = @PrvYearID)  and (serverid = @Serverid)
UNION All

select	preReciptItemID , PrvYearID , serverid , 
		-(InputEntity + OutputEntity) as entity ,-(InputWeight + OutputWeight) as Weight  
from	dbo.ReciptItems
where	(preReciptItemID = @preReciptItemID) and  (prvYearID = @PrvYearID)  
		AND NOT( (ReciptItemID = @ReciptItemID) and  (YearID = @YearID ) and (serverid = @Serverid))-- baraye inkeh record jari ke dar hal virayesh hast dar mohasebat nayayad va dar delphi 
) RecalCheckEntity
)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
------------------------------------------------
-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE VIEW [dbo].[AllAccSH]
AS 
-----view for invoice
SELECT  R12.ReciptType, RT.ReciptCaption, R12.YearID, SUBSTRING(R12.ReciptDate,6,2) MON , R12.ReciptDate,R12.DefaultDate, 
		R12.ReciptNumber, R12.PersonID1, R12.PersonID2, 0 as secendtype,
		SUM(RI12.TotalOutputPrice) -sum(ri12.DeficitValue)-sum(ri12.DeficitValue2)-sum(ri12.DeficitValue4) +isnull(deficit,0)  AS bed, 0 as bes

FROM	Recipts AS R12 INNER JOIN
		ReciptItems AS RI12 ON R12.ReciptID = RI12.ReciptID AND R12.ServerID = RI12.ServerID AND R12.YearID = RI12.YearID
		left join (
			SELECT        ReciptID, ServerID, YearID, SUM(DeficitAdd) - SUM(DeficitDec) deficit
			FROM            ReciptsDeficits
			GROUP BY ReciptID, ServerID, YearID
			)ad on ad.ReciptID=r12.ReciptID  and ad.ServerID= r12.ServerID and ad.YearID = r12.YearID
			 INNER JOIN
        ReciptTypes1 RT on RT.RecallType=R12.ReciptType

where         (R12.ReciptType = 12) 
GROUP BY R12.ReciptDate,RT.ReciptCaption, R12.ReciptNumber, R12.PersonID1, R12.PersonID2, R12.DefaultDate, R12.YearID, R12.ReciptType,deficit


union all

SELECT  R6.ReciptType, RT.ReciptCaption, R6.YearID, SUBSTRING(R6.ReciptDate,6,2) MON , R6.ReciptDate,R6.ReciptDate, 
		R6.ReciptNumber, R6.PersonID1, R6.PersonID2, RI6.SecondTypeItem,
		0 AS bed, SUM(RI6.TotalInputPrice) -sum(RI6.DeficitValue)-sum(RI6.DeficitValue2)-sum(RI6.DeficitValue4)  +isnull(deficit,0)  as bes

FROM	Recipts AS R6 INNER JOIN
		ReciptItems AS RI6 ON R6.ReciptID = RI6.ReciptID AND R6.ServerID = RI6.ServerID AND R6.YearID = RI6.YearID
		left join (
			SELECT        ReciptID, ServerID, YearID, SUM(DeficitAdd) - SUM(DeficitDec) deficit
			FROM            ReciptsDeficits
			GROUP BY ReciptID, ServerID, YearID
			)ad on ad.ReciptID=R6.ReciptID  and ad.ServerID= R6.ServerID and ad.YearID = R6.YearID
			  INNER JOIN
         ReciptTypes1 RT on RT.RecallType=R6.ReciptType
			where         (R6.ReciptType = 6) 

GROUP BY R6.ReciptDate,RT.ReciptCaption, R6.ReciptNumber, R6.PersonID1, R6.PersonID2, R6.DefaultDate, R6.YearID, R6.ReciptType, RI6.SecondTypeItem,deficit


union all


SELECT	FT.FormType, FT.FormCaption, F.YearID,SUBSTRING(F.FormDate,6,2) MON ,F.FormDate,F.FormDate, F.FormNumber,
		F.CustomerID2 , F.CustomerID3 ,0 as sec, F.Amount bed , 0 bes
FROM	Forms AS F INNER JOIN
		FormTypes AS FT ON F.FormType = FT.FormType
where ft.DisplayFormType = 0 and ((Customer1DocType = 10 and BedBes =1) or (Customer2DocType=10 and BedBes =0))
		

union all

SELECT	FT.FormType, FT.FormCaption, F.YearID,SUBSTRING(F.FormDate,6,2) MON ,F.FormDate,F.FormDate, F.FormNumber,
		F.CustomerID2 , F.CustomerID3 ,0 as sec, 0  bed , F.Amount bes
FROM	Forms AS F INNER JOIN
		FormTypes AS FT ON F.FormType = FT.FormType
where ft.DisplayFormType = 0 and ((Customer1DocType = 10 and BedBes =0) or (Customer2DocType=10 and BedBes =1))
		

union all


SELECT  FT.FormType, FT.FormCaption, F.YearID,SUBSTRING(F.FormDate,6,2) MON ,F.FormDate,Fi.CheckDate, F.FormNumber,
		FI.CustomerID2 , F.CustomerID3 ,0 as sec,  (FI.ItemAmount)  bed , 0  bes 
FROM            Forms AS F INNER JOIN
                         FormTypes AS FT ON F.FormType = FT.FormType INNER JOIN
                         FormItems AS FI ON F.FormID = FI.FormID AND F.ServerID = FI.ServerID AND F.YearID = FI.YearID
where ft.DisplayFormType > 0 and ((CustomerDetailsDocType = 10 and BedBesDetails =1))



union all

SELECT  FT.FormType, FT.FormCaption, F.YearID,SUBSTRING(F.FormDate,6,2) MON ,F.FormDate,Fi.CheckDate, F.FormNumber,
		FI.CustomerID2 , F.CustomerID3 ,0 as sec, 0  bed ,  (FI.ItemAmount)  bes 
FROM            Forms AS F INNER JOIN
                         FormTypes AS FT ON F.FormType = FT.FormType INNER JOIN
                         FormItems AS FI ON F.FormID = FI.FormID AND F.ServerID = FI.ServerID AND F.YearID = FI.YearID
where ft.DisplayFormType > 0 and ((CustomerDetailsDocType = 10 and BedBesDetails =2))


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
------------------------------------------------
-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE TRIGGER dbo.TR_UpdateTozinDate
ON dbo.Tozin
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    IF UPDATE(EnterDate)
        UPDATE dbo.Tozin
        SET EnterDateShamsi = dbo.MiladiToShamsi(I.EnterDate),
            EnterTimeShamsi = CONVERT(CHAR(10), T.EnterDate, 108)
        FROM dbo.Tozin T
            INNER JOIN inserted I
                ON I.TozinID = T.TozinID
        WHERE EXISTS
        (
            SELECT TozinID FROM Inserted WHERE TozinID = T.TozinID
        );

    IF UPDATE(ExitDate)
        UPDATE dbo.Tozin
        SET ExitDateShamsi = dbo.MiladiToShamsi(I.ExitDate),
            ExitTimeShamsi = CONVERT(CHAR(10), T.ExitDate, 108)
        FROM dbo.Tozin T
            INNER JOIN inserted I
                ON I.TozinID = T.TozinID
        WHERE EXISTS
        (
            SELECT TozinID FROM Inserted WHERE TozinID = T.TozinID
        );

END;

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
------------------------------------------------
-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
CREATE PROCEDURE dbo.GetpreReciptItemID 
 @ControlCode bigint , 
 @preReciptItemID INT, 
 @YearID INT,  
 @ServerID int
 
AS
BEGIN
DECLARE @preOld int=-1
DECLARE @SqlFinal VARCHAR(8000)
SET @SqlFinal = '';
while (@preReciptItemID<>0 )and(@preReciptItemID<>@preOld)
begin

if @SqlFinal<>''
  set @SqlFinal=@SqlFinal+CHAR(13)+ ' UNION ALL '

set @SqlFinal=@SqlFinal+ '
SELECT  ReciptTypes1.ReciptCaption AS [فرم], Recipts.ReciptNumber AS [شماره], Recipts.ReciptDate AS [تاریخ], Recipts.StoreID AS [انبار], 
ReciptItems.ControlCode AS [راهنما],ReciptItems.UnitSellPrice AS [فی],ReciptItems.TotalOutputPrice+ReciptItems.TotalInputPrice  AS [مبلغ] ,ReciptItems.*
FROM        ReciptItems INNER JOIN
                  Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND ReciptItems.YearID = Recipts.YearID INNER JOIN
                  ReciptTypes1 ON Recipts.ReciptType = ReciptTypes1.ReciptType
WHERE     (ReciptItems.ReciptItemID = '+ltrim(@preReciptItemID)+') AND (ReciptItems.YearID <= '+ltrim(@YearID)+') 
AND (ReciptItems.ServerID = '+ltrim(@ServerID)+')AND (ReciptItems.ControlCode <> '+ltrim(0)+')'



set @preOld = @preReciptItemID
SELECT  @preReciptItemID    = ReciptItems.preReciptItemID
FROM        ReciptItems INNER JOIN
                  Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND ReciptItems.YearID = Recipts.YearID INNER JOIN
                  ReciptTypes1 ON Recipts.ReciptType = ReciptTypes1.ReciptType
WHERE     (ReciptItems.ReciptItemID = @preReciptItemID) AND (ReciptItems.YearID <= @YearID) AND (ReciptItems.ServerID = @ServerID)
AND (ControlCode <> 0 )
end

--print (@SqlFinal)
IF @SqlFinal=''
  set @SqlFinal=' SELECT ''موردی برای نمایش نیست'' as [شرح]'
EXEC (@SqlFinal)

END 

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
------------------------------------------------
-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE  FUNCTION [dbo].[GetpreUnitSellPrice] (@ControlCode bigint , @preReciptItemID int , @YearID int=1400,@ServerID int=0)
RETURNS money                                                 /* @Kind=0=UnitSellPrice @Kind=1=Total...Price */    
begin
  DECLARE @UnitSellPrice     money

DECLARE @preOld int=-1
DECLARE @SqlFinal VARCHAR(8000)
SET @SqlFinal = '';
while (@preReciptItemID<>0 )and(@preReciptItemID<>@preOld)
begin
set @preOld = @preReciptItemID
SELECT  @preReciptItemID    = ReciptItems.preReciptItemID,@UnitSellPrice=UnitSellPrice
FROM        ReciptItems INNER JOIN
                  Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND ReciptItems.YearID = Recipts.YearID INNER JOIN
                  ReciptTypes1 ON Recipts.ReciptType = ReciptTypes1.ReciptType
WHERE     (ReciptItems.ReciptItemID = @preReciptItemID) AND (ReciptItems.YearID <= @YearID) AND (ReciptItems.ServerID = @ServerID)
AND (ControlCode <> 0 )AND ReciptTypes1.EffectType in (2,4,6)


end


  

RETURN(ISNULL( @UnitSellPrice,0))

end

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
------------------------------------------------------------------------------------------
----------------------------------------------------------------------------
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
CREATE VIEW Vu_ReciptsGrid
AS
SELECT  * ,InvEntity - RequestedEntity AS Req_InvEntity, '' AS ____StuffTecInfo, dbo.GetLookUpsName(StuffCode, 313) AS PakhshCompany,
  dbo.GetStuffName(StuffCode) AS c_StuffName,

 ROUND(CASE WHEN InputEntity + OutputEntity <> 0 THEN TotallSellPrice / (InputEntity + OutputEntity) ELSE 0 END, 0) AS UnitSellPrice3,
  ROUND(CASE WHEN InputWeight + OutputWeight <> 0 THEN TotallSellPrice / (InputWeight + OutputWeight) ELSE 0 END, 0) AS UnitSellPriceWeight,

ROUND(CASE WHEN InputEntity + OutputEntity <> 0 THEN ((TotalInputPrice + TotalOutputPrice) +  (InputEntity + OutputEntity) * UnitCommission +ROUND((InputWeight + OutputWeight) * Commission,0)- DeficitValue - DeficitValue2 - DeficitValue4)
    / (InputEntity + OutputEntity) ELSE 0 END, 0) AS UnitSellDeficient,

  (TotalInputPrice + TotalOutputPrice)
  +  (InputEntity + OutputEntity) * UnitCommission +ROUND((InputWeight + OutputWeight) * Commission,0)- DeficitValue - DeficitValue2 - DeficitValue4 AS TotalDeficient,

 TotallSellPrice + DeficitValue3  AS TotallSellPrice_DeficitValue3,

   (InputEntity + OutputEntity) * UnitCommission AS TotallCommission, TotalInputPrice + TotalOutputPrice + TaxValue AS TotalPrice_TaxValue,
  UnitSellPrice + UnitCommission AS UnitSellPriceCommission,
  (InputEntity + OutputEntity) * UnitCommission +ROUND((InputWeight + OutputWeight) * Commission,0)+ TotalInputPrice + TotalOutputPrice AS TotallCommissionTotalPrice



  ,InvEntity - CASE WHEN AidNumber  <> 0 THEN AidNumber ELSE InputEntity + OutputEntity END AS Req_InvEntity2
,  InputEntity + OutputEntity - RequestedEntity AS DifferenceEntity
,  InputWeight + OutputWeight - RequestedWeight AS DifferenceWeight
,  ( (InputEntity + OutputEntity) *(SELECT Util.GetNumeric(SD1) FROM StuffCoding WHERE c_StuffCode = StuffCode) * InBox)/1000 AS WeightSD1InBox
,  (((InputEntity + OutputEntity) *(SELECT Util.GetNumeric(SD1) FROM StuffCoding WHERE c_StuffCode = StuffCode) * InBox)/1000) * ArzRate AS WeightSD1InBoxArz

  ,dbo.GetParentForm(ReciptItems.StuffCode,ReciptItems.preReciptItemID,ReciptItems.ReciptItemID,ReciptItems.YearID) AS ParentForm 
   --,(TotalInputPrice + TotalOutputPrice) * (1 + :VATCo1 * 0.01) AS VATCoTotalPrice,
   --(TotalInputPrice + TotalOutputPrice) * (:VATCo2 * 0.01) AS VATCoPrice,TotallSellPrice - (InvEntity+InvWeight) AS TotallSellPrice_InvWeight, DeficitValueCo2,  DeficitValueCo3,  DeficitValueCo4
         , InputEntity + OutputEntity - SugarEntity AS GiftEntity 
  ,DeficitValue + DeficitValue2 + DeficitValue3 AS DeficitValue123
  ,DeficitValue + DeficitValue2 + DeficitValue4 AS DeficitValue124
  ,(SELECT SUM(RegPrice) AS RegPrice FROM  ReciptsRegulates
			WHERE (ReciptID = ReciptItems.ReciptID) AND (YearID = ReciptItems.YearID)
      AND (ServerID = ReciptItems.ServerID) AND (ReciptItemID = ReciptItems.ReciptItemID ) ) AS RegPrice

  ,(SELECT Count(*)*1.0 AS CountDetails FROM   ReciptItemsDetails
			WHERE (ReciptID = ReciptItems.ReciptID) AND (YearID = ReciptItems.YearID)
      AND (ServerID = ReciptItems.ServerID) AND (ReciptItemID = ReciptItems.ReciptItemID ) ) AS CountDetails

, LTRIM(StuffCode) + ' C ' + LTRIM(InputEntity + OutputEntity) + ' I ' + LTRIM(ISNULL(InBox, 0)) AS StuffInBox
 FROM ReciptItems

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

-- Modify Data :Acc  1405/04/13  Up ----------
SET NOCOUNT ON

declare @LinkServerName varchar(500)
select @LinkServerName=c.LinkServerName from Config c
update Config set LinkServerName=''


DECLARE @S SYSNAME=''
DECLARE @SQL NVARCHAR(500)=''
DECLARE @databasename VARCHAR(300)
--DECLARE @COMPATIBILITY_LEVEL int
SELECT @databasename=db_name() 
--SELECT @COMPATIBILITY_LEVEL=COMPATIBILITY_LEVEL FROM sys.databases WHERE name = 'master'
--IF (SELECT COMPATIBILITY_LEVEL FROM sys.databases WHERE name = @databasename)<@COMPATIBILITY_LEVEL
--EXEC ( 'ALTER DATABASE '+@databasename  +' SET COMPATIBILITY_LEVEL = '+@COMPATIBILITY_LEVEL)
----- SELECT COMPATIBILITY_LEVEL FROM sys.databases WHERE name =db_name() 


DECLARE @TABLE_NAME VARCHAR(90) 
DECLARE @COLUMN_NAME VARCHAR(90)
DECLARE @DATA_TYPE VARCHAR(90) 
DECLARE @IS_NULLABLE VARCHAR(90) 
DECLARE @qry VARCHAR(max) 
DECLARE @Length int

ALTER TABLE Tsh.ClockDmp NOCHECK CONSTRAINT ALL




IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE  (TABLE_NAME = N'Documents') AND ((COLUMN_NAME = N'Debt')OR(COLUMN_NAME = N'Credit')) AND (DATA_TYPE = N'decimal') AND (NUMERIC_PRECISION = 38))
begin
 ALTER TABLE acc.Documents NOCHECK CONSTRAINT ALL
 IF  EXISTS (SELECT 1 from sysobjects where name = 'CK_Documents_ValidMoney')
ALTER TABLE Acc.Documents DROP CONSTRAINT CK_Documents_ValidMoney
 IF  EXISTS (SELECT 1 from sysobjects where name = 'DF_Documents_Debt')
 ALTER TABLE Acc.Documents DROP CONSTRAINT DF_Documents_Debt
 IF  EXISTS (SELECT 1 from sysobjects where name = 'DF_Documents_Credit')
 ALTER TABLE Acc.Documents DROP CONSTRAINT DF_Documents_Credit


 IF  EXISTS (select * from sysindexes WHERE     (name = N'IX_Documents_TDDCY_DCA'))
drop  INDEX IX_Documents_TDDCY_DCA ON Acc.Documents

IF  EXISTS (select * from sysindexes WHERE     (name = N'IX_Documents_TDCYD'))
drop  INDEX IX_Documents_TDCYD ON Acc.Documents


 
if exists (select * from sysobjects where id = object_id(N'DocumentSum') AND OBJECTPROPERTY(id, N'IsView') = 1)
drop view DocumentSum

if exists (select * from sysobjects where id = object_id(N'DocumentsSum') AND OBJECTPROPERTY(id, N'IsView') = 1)
drop view DocumentsSum

 ALTER TABLE acc.Documents	ALTER COLUMN Debt decimal(38,0) NOT NULL
 ALTER TABLE acc.Documents	ALTER COLUMN Credit decimal(38,0) NOT NULL

 ALTER TABLE Acc.Documents ADD  CONSTRAINT DF_Documents_Debt  DEFAULT (0) FOR Debt
 ALTER TABLE Acc.Documents ADD  CONSTRAINT DF_Documents_Credit  DEFAULT (0) FOR Credit

 ALTER TABLE Acc.Documents  WITH NOCHECK ADD  CONSTRAINT CK_Documents_ValidMoney CHECK  ((Debt - round(debt,0) = 0 and credit - round(credit,0) = 0))


  ALTER TABLE Acc.Documents NOCHECK CONSTRAINT CK_Documents_ValidMoney
end
 ALTER TABLE acc.Documents CHECK CONSTRAINT ALL

IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE  (TABLE_NAME = N'Documents') AND (COLUMN_NAME = N'Credit') AND (DATA_TYPE = N'decimal'))
begin
IF  EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_Documents_Credit' AND type = 'D')
ALTER TABLE Acc.Documents DROP CONSTRAINT DF_Documents_Credit
 
 ALTER TABLE acc.Documents	ALTER COLUMN Credit decimal(38,0) NOT NULL
ALTER TABLE Acc.Documents ADD CONSTRAINT DF_Documents_Credit DEFAULT 0 FOR Credit

 end




 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_CLOCKDMP' AND type = 'K')
 ALTER TABLE Tsh.ClockDmp	DROP CONSTRAINT PK_CLOCKDMP

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_DocGroup'))
DROP INDEX IX_DocGroup ON Acc.DocGroups

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_ReciptItems_StuffCode'))
DROP INDEX IX_ReciptItems_StuffCode ON dbo.ReciptItems

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_Customers_CustomerGrpID_CustomerActive'))
DROP INDEX IX_Customers_CustomerGrpID_CustomerActive ON Customers

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_MakeDoc_ReciptItems1'))
DROP INDEX IX_MakeDoc_ReciptItems1 ON ReciptItems


IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_ReciptItems_StuffCode'))
DROP INDEX IX_ReciptItems_StuffCode ON ReciptItems


IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_MakeDoc_ReciptItems1'))
DROP INDEX IX_MakeDoc_ReciptItems1 ON ReciptItems

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts_StoreID_YearID_ReciptDate_ReciptState'))
DROP INDEX IX_Recipts_StoreID_YearID_ReciptDate_ReciptState ON Recipts

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts_ReciptDate_ReciptState'))
DROP INDEX IX_Recipts_ReciptDate_ReciptState ON Recipts

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts_C'))
DROP INDEX IX_Recipts_C ON Recipts

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts_AccountBalance'))
DROP INDEX IX_Recipts_AccountBalance ON Recipts

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_MakeDoc_Recipts1'))
DROP INDEX IX_MakeDoc_Recipts1 ON Recipts

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_MakeDoc_Recipts2'))
DROP INDEX IX_MakeDoc_Recipts2 ON Recipts

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_MakeDoc_Recipts3'))
DROP INDEX IX_MakeDoc_Recipts3 ON Recipts

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts_Aid_MakeDocuments_Recipt1'))
DROP INDEX IX_Recipts_Aid_MakeDocuments_Recipt1 ON Recipts

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts_Aid_MakeDocuments_Recipt2'))
DROP INDEX IX_Recipts_Aid_MakeDocuments_Recipt2 ON Recipts

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts_Aid_MakeDocuments_Recipt3'))
DROP INDEX IX_Recipts_Aid_MakeDocuments_Recipt3 ON Recipts

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts_s'))
DROP INDEX IX_Recipts_s ON Recipts

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts4'))
DROP INDEX IX_Recipts4 ON Recipts

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts_AccountBalance'))
DROP INDEX IX_Recipts_AccountBalance ON Recipts

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts_AccountBalanceTozin'))
DROP INDEX IX_Recipts_AccountBalanceTozin ON Tozin 

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts_AccountBalance2'))
DROP INDEX IX_Recipts_AccountBalance2 ON Recipts

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts'))    
DROP INDEX IX_Recipts ON dbo.Recipts

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_Forms_cashBalance'))
DROP INDEX IX_Forms_cashBalance ON Forms

IF   EXISTS (select * from sysindexes WHERE     (name = N'INDEX_970109'))
DROP INDEX INDEX_970109 ON Recipts

IF   EXISTS (select * from sysindexes WHERE     (name = N'INDEX_ReciptDate_ReciptState'))
DROP INDEX INDEX_ReciptDate_ReciptState ON Recipts

IF EXISTS (select * from sysindexes WHERE     (name = N'IX_TEST2'))
DROP INDEX IX_TEST2 ON dbo.Tozin

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_TEST1')) 
DROP INDEX IX_TEST1 ON dbo.Tozin

IF   EXISTS (select * from sysindexes WHERE     (name = N'test2'))
DROP INDEX test2 ON Tozin

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts_PersonID2'))
DROP INDEX IX_Recipts_PersonID2 ON Recipts

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts_1'))
DROP INDEX IX_Recipts_1 ON Recipts

IF  EXISTS (select * from sysindexes WHERE     (name = N'Recipts_2'))
DROP INDEX Recipts_2 ON Recipts

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_Forms_FormType')) 
DROP INDEX IX_Forms_FormType ON Forms

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_Forms_FormType_Date_State_Year')) 
DROP INDEX IX_Forms_FormType_Date_State_Year ON Forms

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts_FormType_FormNumber')) 
DROP INDEX IX_Recipts_FormType_FormNumber ON Forms

IF   EXISTS (select * from sysindexes WHERE     (name = N'test')) 
DROP INDEX test ON Forms

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_Forms_FormType_CustomerID2')) 
DROP INDEX IX_Forms_FormType_CustomerID2 ON Forms

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_rEC'))
DROP INDEX IX_rEC ON Recipts

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts4Cardex2'))
DROP INDEX IX_Recipts4Cardex2 ON Recipts

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_Forms_FormDate_FormState_YearID'))
DROP INDEX IX_Forms_FormDate_FormState_YearID ON Forms

IF   EXISTS (select * from sysindexes WHERE     (name = N'Recipts_2'))

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_MakeDoc_StuffCoding1')) 
DROP INDEX IX_MakeDoc_StuffCoding1 ON StuffCoding

IF (SELECT count(*) FROM INFORMATION_SCHEMA.COLUMNS WHERE (TABLE_NAME = N'FormTypes') AND (LOWER(TABLE_SCHEMA) = N'Pay') AND (COLUMN_NAME = N'ActiveYearID')AND (DATA_TYPE = N'tinyint'))=1
begin
set @S=''
WHILE @S is not NULL
BEGIN                          
	SELECT @S=NAME FROM sysobjects WHERE NAME  like'DF__FormTypes__Activ%'  and NAME<>'DF__FormTypes__ActiveYearID' 
	IF @S<>'' or @S<>NULL
	BEGIN
		SET @SQL='ALTER TABLE Pay.FormTypes DROP CONSTRAINT '+@S
		exec(@SQL)
        SET @S=''
	END
	ELSE 
	SET	@S=NULL
END
ALTER TABLE Pay.FormTypes ALTER COLUMN ActiveYearID int  NOT NULL 
ALTER TABLE Pay.FormTypes ADD  CONSTRAINT DF__FormTypes__ActiveYearID  DEFAULT (0) FOR ActiveYearID

end



DECLARE db_cursor CURSOR FOR 
SELECT TABLE_SCHEMA+'.'+ TABLE_NAME AS TABLE_NAME, COLUMN_NAME,DATA_TYPE,inf.CHARACTER_MAXIMUM_LENGTH,IS_NULLABLE FROM INFORMATION_SCHEMA.COLUMNS as inf
INNER JOIN SYSOBJECTS on inf.table_name = SYSOBJECTS.name
WHERE  ((COLUMN_NAME like  N'%date%')or(COLUMN_NAME='StartYear')or(COLUMN_NAME='EndYear')or(COLUMN_NAME='StartMaliYear')or(COLUMN_NAME='FinishMaliYear')) 
   AND (DATA_TYPE like  N'%char%')
   AND (TABLE_NAME <>  N'acc.Contacts')
   
 
 AND OBJECTPROPERTY(SYSOBJECTS.id, N'IsUserTable') = 1
 AND (inf.CHARACTER_MAXIMUM_LENGTH BETWEEN 8 AND 8)--10


OPEN db_cursor  
FETCH NEXT FROM db_cursor INTO @TABLE_NAME , @COLUMN_NAME ,@DATA_TYPE,@Length,@IS_NULLABLE

WHILE @@FETCH_STATUS = 0  
BEGIN 
     SET @qry =''  
     if @Length=8
	 begin
       SET @qry = ' ALTER TABLE '+@TABLE_NAME+'	ALTER COLUMN '+@COLUMN_NAME +' '+@DATA_TYPE+'(10)' 
     if @IS_NULLABLE='NO'
	   SET @qry = @qry +' NOT NULL '

	 end

	 SET @qry = @qry +CHAR(13)  +
	             ' UPDATE  '+@TABLE_NAME+' set  '+@COLUMN_NAME+' = CASE WHEN '+@COLUMN_NAME+'<''15/12/29'' THEN ''14''+'+@COLUMN_NAME+' ELSE ''13''+'+@COLUMN_NAME+' END
	               WHERE (len('+@COLUMN_NAME+')=8) '
      --print @qry
      exec(@qry)

      FETCH NEXT FROM db_cursor INTO @TABLE_NAME , @COLUMN_NAME ,@DATA_TYPE,@Length,@IS_NULLABLE
END 

CLOSE db_cursor  
DEALLOCATE db_cursor 

----select *  From util.MaliYear
if (select COUNT(DISTINCT LEN(YearID))  From util.MaliYear) = 1 
begin
IF  EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_DocGroups_MaliYear' AND type = 'F')
ALTER TABLE acc.DocGroups DROP CONSTRAINT FK_DocGroups_MaliYear

IF  EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Recipts_MaliYear' AND type = 'F')
ALTER TABLE Recipts DROP CONSTRAINT FK_Recipts_MaliYear

IF  EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptItems_MaliYear' AND type = 'F')
ALTER TABLE ReciptItems DROP CONSTRAINT FK_ReciptItems_MaliYear

IF  EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptItems_Recipts' AND type = 'F')
ALTER TABLE ReciptItems DROP CONSTRAINT FK_ReciptItems_Recipts

IF  EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptsRegulates_ReciptItems' AND type = 'F')
ALTER TABLE ReciptsRegulates DROP CONSTRAINT FK_ReciptsRegulates_ReciptItems --- add to up3

--UPDATE  acc.DocGroups SET YearID=YearID+cast( 1300 as smallint) WHERE len(YearID)<4
--UPDATE  Recipts SET YearID=YearID+cast( 1300 as smallint) WHERE len(YearID)<4
--UPDATE  ReciptItems SET YearID=YearID+cast( 1300 as smallint) WHERE len(YearID)<4
--UPDATE  ReciptsRegulates SET YearID=YearID+cast( 1300 as smallint) WHERE len(YearID)<4
--UPDATE  Tozin SET YearID=YearID+cast( 1300 as smallint) WHERE len(YearID)<4
--UPDATE  acc._ReportRows SET YearID=YearID+cast( 1300 as smallint) WHERE len(YearID)<4
UPDATE  util.MaliYear SET YearID=YearID+cast( 1300 as smallint) WHERE len(YearID)<4

DECLARE db_cursor CURSOR FOR 
SELECT TABLE_SCHEMA+'.'+ TABLE_NAME AS TABLE_NAME, COLUMN_NAME,DATA_TYPE,inf.CHARACTER_MAXIMUM_LENGTH,IS_NULLABLE FROM INFORMATION_SCHEMA.COLUMNS as inf
INNER JOIN SYSOBJECTS on inf.table_name = SYSOBJECTS.name
WHERE  ((COLUMN_NAME like  N'%YearID%'))  and xtype='U'  AND OBJECTPROPERTY(SYSOBJECTS.id, N'IsUserTable') = 1
and (COLUMN_NAME <>  N'UseUnitsYearID') and ( COLUMN_NAME <>  N'FilterYearIDActive')  and (TABLE_NAME<> N'MaliYear')
 and (TABLE_NAME<> N'Documents')
order by len(TABLE_NAME)

OPEN db_cursor  
FETCH NEXT FROM db_cursor INTO @TABLE_NAME , @COLUMN_NAME ,@DATA_TYPE,@Length,@IS_NULLABLE

WHILE @@FETCH_STATUS = 0  
BEGIN 
     SET @qry =''  
	 SET @qry = @qry +CHAR(13)  +
         ' UPDATE  '+@TABLE_NAME+' set  '+@COLUMN_NAME+' =  '+
		      @COLUMN_NAME+' + cast( 1300 as smallint) WHERE (Isnull('+@COLUMN_NAME+','''') <> '''') AND  (len(Isnull('+@COLUMN_NAME+',''''))<4) '				 
    -- print @qry
      exec(@qry)
      FETCH NEXT FROM db_cursor INTO @TABLE_NAME , @COLUMN_NAME ,@DATA_TYPE,@Length,@IS_NULLABLE
END 

CLOSE db_cursor  
DEALLOCATE db_cursor 


end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_DocGroups_MaliYear' AND type = 'F')
IF EXISTS (SELECT name FROM sysobjects WHERE name = 'DocGroups' AND type = 'U')
ALTER TABLE acc.DocGroups WITH CHECK ADD CONSTRAINT FK_DocGroups_MaliYear 	FOREIGN KEY(YearID) REFERENCES util.MaliYear (YearID)

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Recipts_MaliYear' AND type = 'F')
ALTER TABLE Recipts       WITH CHECK ADD CONSTRAINT FK_Recipts_MaliYear 	FOREIGN KEY(YearID) REFERENCES util.MaliYear (YearID)

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptItems_MaliYear' AND type = 'F')
ALTER TABLE ReciptItems   WITH CHECK ADD CONSTRAINT FK_ReciptItems_MaliYear 	FOREIGN KEY(YearID) REFERENCES util.MaliYear (YearID)

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptItems_Recipts' AND type = 'F')
ALTER TABLE [dbo].[ReciptItems]  WITH CHECK ADD  CONSTRAINT FK_ReciptItems_Recipts FOREIGN KEY([ReciptID], [ServerID], [YearID])
REFERENCES [dbo].[Recipts] ([ReciptID], [ServerID], [YearID]) ON UPDATE CASCADE ON DELETE CASCADE




IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_CLOCKDMP' AND type = 'K')
ALTER TABLE Tsh.ClockDmp ADD  CONSTRAINT PK_CLOCKDMP PRIMARY KEY CLUSTERED (KARTNO,CLOCKDATE,CLOCKTIME) 
ALTER TABLE Tsh.ClockDmp CHECK CONSTRAINT ALL

IF NOT  EXISTS (select * from sysindexes WHERE     (name = N'IX_DocGroups_rptMonthDocuments'))
CREATE NONCLUSTERED INDEX IX_DocGroups_rptMonthDocuments
ON Acc.DocGroups (CompanyCode,SecondaryDocNo,PrimaryDocNo,DocDate,YearID)
INCLUDE (DocTypeCode)

IF NOT  EXISTS (select * from sysindexes WHERE     (name = N'IX_DocGroup'))
IF EXISTS (SELECT name FROM sysobjects WHERE name = 'DocGroups' AND type = 'U')
CREATE NONCLUSTERED INDEX IX_DocGroup ON Acc.DocGroups(	DocDate ASC,	PrimaryDocNo ASC,	SecondaryDocNo ASC,	Serial ASC) ON [PRIMARY]

IF NOT  EXISTS (select * from sysindexes WHERE     (name = N'IX_Customers_CustomerGrpID_CustomerActive'))
CREATE NONCLUSTERED INDEX IX_Customers_CustomerGrpID_CustomerActive ON dbo.Customers
(	CustomerGrpID ASC,	CustomerActive ASC)
INCLUDE ( 	CustID,	CustName,	Balance,	FirstBalance,	Country,	City,	WebSite,	Region,	Address,	Tel,	Fax,	email,	pobox,	acc_DetailCode,	MaxCredit,
	ServiceCalcType,	ServicePrice,	ExtServicePrice,	RevenuePercent,	EconomicNumber,	PostalCode,	State,	ModifyDate,	OperatorID,	CustomerNote,	ValuationType,
	ProjectID,	BudgetID,	InfoWeight,	InfoDate,	GrpActionCustomer,	ContactRate,	acc_CTopicCode,	acc_CTopicCode2,	BankId,	BankName,	AccountNumber,	AccountKind,
	BankReports,	ManageName,	ManagerSells,	ContactNo,	DiscountNote,	Discount,	DayTime,	ConveyKind,	ArzTypeID,	accStateDefault,	NationalID,	Mobile,	CustomersRow,
	PersonID1,	EstablishDate,	SellsMethod,	SellsEmporium,	SellsDefaultState,	MasirID,	MaxCreditCurrentForm,	ReagentName,	Tel2,	Tel3,	PersonID3,	UseUnitID,
	InsertAutoEffectID,	EffectID,	CustomerGrpID2,	PurchasePercent,	TechnicalCode,	acc_CTopicCode3,	CustAccountNumber,	acc_TopicCode,	RegisterNumber,
	HCTarafGaradadTypeCode,	HCKharidarTypeCode,	CustFirstName,	PerCityCode,	StateCode,	CityCode,	LastUser,	FirstUser,	CustomerState,	HCForoushandeType1Code,
	Max4WaterCo,	SupervisorAllocation,	CustomerCheckNote,
	DayOrder)  ON [PRIMARY]


IF NOT  EXISTS (select * from sysindexes WHERE     (name = N'IX_MakeDoc_ReciptItems1'))
CREATE NONCLUSTERED INDEX IX_MakeDoc_ReciptItems1 ON dbo.ReciptItems
(	ReciptID ASC,	ServerID ASC,	YearID ASC)
INCLUDE ( 	StuffCode,	InputEntity,	OutputEntity,	InputWeight,	OutputWeight,	ControlCode,	TotalInputPrice,	TotalOutputPrice,	AidNumber,
	AidDate,	ArzAmount,	TotalStandardRate,	UnitCommission)  ON [PRIMARY]


IF NOT  EXISTS (select * from sysindexes WHERE     (name = N'IX_ReciptItems_StuffCode'))
CREATE NONCLUSTERED INDEX IX_ReciptItems_StuffCode ON dbo.ReciptItems
(	StuffCode ASC)
INCLUDE ( 	ReciptID,	InputEntity,	OutputEntity,	InputWeight,	OutputWeight,	ControlCode,	TotalInputPrice,	TotalOutputPrice,	TotallSellPrice,	AidNumber,
	AidDate,	ArzAmount,	ServerID,	YearID,	UnitCommission)  ON [PRIMARY]


--------------------------------------------------------------------------------------------------------------
IF NOT  EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts_AccountBalance'))
CREATE NONCLUSTERED INDEX IX_Recipts_AccountBalance ON Recipts(	ReciptDate ASC,	ReciptState ASC,	SellsMethod ASC,	SellsEmporium ASC,	YearID ASC) ON [PRIMARY]

IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts_C'))
CREATE NONCLUSTERED INDEX IX_Recipts_C ON Recipts(	ReciptDate ASC,	ReciptState ASC,	YearID ASC) ON [PRIMARY]

IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Forms_AccountBalance'))
CREATE NONCLUSTERED INDEX IX_Forms_AccountBalance ON Forms(	CustomerID1 ASC,	FormDate ASC,	YearID ASC,	FormState ASC,	SellsEmporium ASC) ON [PRIMARY]

IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Forms_cashBalance'))
CREATE NONCLUSTERED INDEX IX_Forms_cashBalance ON Forms(	FormDate ASC,	FormState ASC,	YearID ASC,	SellsMethod ASC,	SellsEmporium ASC) ON [PRIMARY]

if ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'StoreID2','IsRowGuidCol')is  null )  
 ALTER TABLE Tozin ADD StoreID2  smallint NOT NULL  DEFAULT (0)  


IF NOT EXISTS (select * from sysindexes WHERE     (name = N'INDEX_ReciptDate_ReciptState'))
CREATE NONCLUSTERED INDEX INDEX_ReciptDate_ReciptState ON Recipts(	ReciptDate ASC,	ReciptState ASC)
INCLUDE ( 	ReciptID,	StoreID,	ReciptType,	StoreID2,	ServerID,	YearID)  ON [PRIMARY]

IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts_PersonID2'))
CREATE NONCLUSTERED INDEX IX_Recipts_PersonID2 ON Recipts(	PersonID2 ASC,	ReciptNumber ASC,	ReciptDate ASC,	ReciptType ASC,	ReciptState ASC,	YearID ASC,	PersonID3 ASC)
INCLUDE ( 	ReciptID,	SellsMethod,	ServerID)  ON [PRIMARY]


IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_rEC'))
CREATE NONCLUSTERED INDEX IX_rEC ON Recipts(SecondType ASC,	StoreID ASC,	ReciptNumber ASC,	ReciptDate ASC,	PersonID1 ASC,	ReciptType ASC,	ReciptState ASC
   ,	SellsEmporium ASC,	YearID ASC,	PersonID3 ASC)
INCLUDE ( 	ReciptID,	PersonID2,	DocNo,	DocDate,	ReciptNote,	AidNumber,	AidDate,	StoreID2,	TruckNumber,	MachineNo,	MachineName,
	SellsMethod,	ServerID,	MachineInfo)  ON [PRIMARY]
 
 IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts4Cardex2'))
CREATE NONCLUSTERED INDEX IX_Recipts4Cardex2 ON Recipts(	ReciptDate ASC,	ReciptState ASC,	YearID ASC,	PersonID3 ASC)
INCLUDE ( 	ReciptID,	StoreID,	PersonID1,	PersonID2,	ReciptType,	StoreID2,	ServerID)  ON [PRIMARY]


IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Forms_FormDate_FormState_YearID'))
CREATE NONCLUSTERED INDEX IX_Forms_FormDate_FormState_YearID ON Forms(	FormDate ASC,	FormState ASC,	YearID ASC)
INCLUDE ( 	FormID,	ServerID)  ON [PRIMARY]

IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Forms_FormType'))
CREATE NONCLUSTERED INDEX IX_Forms_FormType ON Forms(	FormType ASC)
INCLUDE ( 	FormID,	FormNumber,	FormDate,	CustomerID1,	CustomerID2,	Amount,	BudgetCode,	ProjectID,	FomNote,	AidInfoNo,	AidInfoDate,	CustomerName2,
	PayTypes,	RelatedID,	ServerID,	YearID,	SellsMethod,	SellsEmporium,	DefaultDate,	CustomerID3,	ArzAmount,	DefaultDuration)  ON [PRIMARY]

IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Forms_FormType_Date_State_Year'))
CREATE NONCLUSTERED INDEX IX_Forms_FormType_Date_State_Year ON Forms(	FormType ASC,	FormDate ASC,	FormState ASC,	YearID ASC)
INCLUDE ( 	FormID,	ServerID)  ON [PRIMARY]

IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts_FormType_FormNumber'))
CREATE NONCLUSTERED INDEX IX_Recipts_FormType_FormNumber ON Forms
(	FormType ASC,	FormNumber ASC,	FormDate ASC,	CustomerID1 ASC,	CustomerID2 ASC,	FormState ASC,	YearID ASC,	SellsMethod ASC,	SellsEmporium ASC)
INCLUDE ( 	FormID,	Amount,	BudgetCode,	ProjectID,	TopicCode,	DetailCode,	CTopicCode,	FomNote,	AidInfoNo,	AidInfoDate,	CTopicCode2,	CustomerName2,
	PayTypes,	TopicTypes,	DocNo,	DocDate,	FirstUser,	LastUser,	ServerID,	DefaultDate,	CustomerID3,	UserRegistrationDoc,	DefaultDuration)  ON [PRIMARY]


IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Forms_FormType_CustomerID2'))
CREATE NONCLUSTERED INDEX IX_Forms_FormType_CustomerID2 ON Forms
(	FormType ASC,	CustomerID2 ASC,	FormNumber ASC,	FormDate ASC,	CustomerID1 ASC,	FormState ASC,	YearID ASC,	SellsMethod ASC,	SellsEmporium ASC)
INCLUDE ( 	FormID,	Amount,	BudgetCode,	ProjectID,	TopicCode,	DetailCode,	CTopicCode,	FomNote,	AidInfoNo,	AidInfoDate,	CTopicCode2,	CustomerName2,
	PayTypes,	TopicTypes,	DocNo,	DocDate,	FirstUser,	LastUser,	ServerID,	DefaultDate,	CustomerID3,	UserRegistrationDoc,	DefaultDuration)  ON [PRIMARY]

if not ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'TozinID','IsRowGuidCol')is  null )  
CREATE NONCLUSTERED INDEX Recipts_2 ON Recipts
(	ReciptType ASC,	YearID ASC,	StoreID ASC,	ReciptNumber ASC,	ReciptDate ASC,	ReciptState ASC,	AidNumber ASC)
INCLUDE ( 	ReciptID,	ServerID,	TozinID)  ON [PRIMARY]

IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_MakeDoc_StuffCoding1'))
CREATE NONCLUSTERED INDEX IX_MakeDoc_StuffCoding1 ON StuffCoding
(	OwnerShipKind ASC)
INCLUDE ( 	c_StuffCode,	c_StuffName,	acc_DetaiCode,	acc_CTopicCode,	acc_CTopicCode2,	Acc_BidTopicCode,	Commission)  ON [PRIMARY]

if ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'PrvYearID','IsRowGuidCol')is  null )  
  ALTER TABLE Tozin ADD PrvYearID int

if not ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'PersonID2','IsRowGuidCol')is  null )  
if not ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'ParentReciptItemID','IsRowGuidCol')is  null )  
IF NOT  EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts_AccountBalanceTozin'))
CREATE NONCLUSTERED INDEX IX_Recipts_AccountBalanceTozin ON dbo.Tozin
(	ReciptType ASC,	TozinNumber ASC,	TozinDate ASC,	StuffCode ASC,	PersonID1 ASC,	StoreID ASC,	PersonID2 ASC,	YearID ASC)
INCLUDE ( 	TozinID,	MachineName,	MachineNo,	MachineWeight,	MachineFullWeight,	TozinNote,	EnterDate,	ExitDate,	FirstUser,	LastUser,	MoistureContent,
	RisingUseful,	RisingNonUseFul,	IsSystem,	ReciptID,	TozinState,	NumberOfBags,	ServerID,	ParentReciptItemID,	StoreID2,	PrvYearID)  ON [PRIMARY]


if ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'MachineEntity','IsRowGuidCol')is  null )  
  ALTER TABLE Tozin ADD MachineEntity Decimal(38,8)  NULL CONSTRAINT DF_Tozin_MachineEntity DEFAULT (0)



IF NOT  EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts_AccountBalance2'))
CREATE NONCLUSTERED INDEX IX_Recipts_AccountBalance2 ON dbo.Recipts
(	StoreID ASC,	ReciptNumber ASC,	ReciptDate ASC,	PersonID1 ASC,	ReciptType ASC,	UseUnitID ASC,	SellsMethod ASC,	SellsEmporium ASC,	MasirID ASC,
	YearID ASC,	PersonID3 ASC)
INCLUDE ( 	ReciptID,	PersonID2,	SecondType,	DocNo,	DocDate,	ReciptNote,	ParentReciptID,	ModifyDate,	ReciptState,	AidNumber,	AidDate,	FirstUser,
	LastUser,	StoreID2,	UseOtherID,	ReciptsRow,	ServerID)  ON [PRIMARY]


--------------------------------------------------------------------------------------


IF (SELECT CHARACTER_MAXIMUM_LENGTH FROM INFORMATION_SCHEMA.COLUMNS WHERE (TABLE_NAME = N'Docgroups') AND (COLUMN_NAME = N'DocTopic_L2'))<>300
ALTER TABLE [ACC].[Docgroups] ALTER COLUMN [DocTopic_L2] [varchar](300)

IF (SELECT CHARACTER_MAXIMUM_LENGTH FROM INFORMATION_SCHEMA.COLUMNS WHERE (TABLE_NAME = N'Docgroups') AND (COLUMN_NAME = N'DocTopic_L1'))<>300
ALTER TABLE [ACC].[Docgroups] ALTER COLUMN [DocTopic_L1] [varchar](300)

---IF (SELECT CHARACTER_MAXIMUM_LENGTH FROM INFORMATION_SCHEMA.COLUMNS WHERE (TABLE_NAME = N'Docgroups') AND (COLUMN_NAME = N'DocNote_L2'))<>6000
ALTER TABLE [ACC].[Docgroups] ALTER COLUMN [DocNote_L2] [varchar](6000)

--IF (SELECT CHARACTER_MAXIMUM_LENGTH FROM INFORMATION_SCHEMA.COLUMNS WHERE (TABLE_NAME = N'Docgroups') AND (COLUMN_NAME = N'DocNote_L1'))<>6000
ALTER TABLE [ACC].[Docgroups] ALTER COLUMN [DocNote_L1] [varchar](6000)

IF (SELECT CHARACTER_MAXIMUM_LENGTH FROM INFORMATION_SCHEMA.COLUMNS WHERE (TABLE_NAME = N'Documents') AND (COLUMN_NAME = N'Comment_L1') )<700
ALTER TABLE [ACC].[Documents] ALTER COLUMN [Comment_L1] [varchar](700)

IF (SELECT CHARACTER_MAXIMUM_LENGTH FROM INFORMATION_SCHEMA.COLUMNS WHERE (TABLE_NAME = N'Documents') AND (COLUMN_NAME = N'Comment_L1')) < 300 
ALTER TABLE [ACC].[Documents] ALTER COLUMN [Comment_L2] [varchar](300)

IF (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS WHERE (TABLE_NAME = N'Documents') AND (COLUMN_NAME = N'CompanyCode'))<>'int'
ALTER TABLE [ACC].[Documents] ALTER COLUMN  [CompanyCode] [int] NOT NULL

IF (SELECT CHARACTER_MAXIMUM_LENGTH FROM INFORMATION_SCHEMA.COLUMNS WHERE (TABLE_NAME = N'Documents') AND (COLUMN_NAME = N'ReferenceTxt')) < 100 
ALTER TABLE [ACC].[Documents] ALTER COLUMN [ReferenceTxt] [varchar](100)

IF (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS WHERE (TABLE_NAME = N'BudgetItems') AND (COLUMN_NAME = N'Bes'))<>'smallint'
ALTER TABLE Acc.BudgetItems ALTER COLUMN Bes smallint not null

IF (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS WHERE (TABLE_NAME = N'Categories') AND (COLUMN_NAME = N'AidInfoType'))<>'int'
ALTER TABLE [ACC].[Categories] ALTER COLUMN [AidInfoType] [int]

if ( COLUMNPROPERTY( OBJECT_ID('ACC.Expense'),'StateChangeDate','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[Expense] ADD [StateChangeDate] Char(10)
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Expense'),'AidDate','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[Expense] ADD [AidDate] Char(10)
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Expense'),'AidNumber','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[Expense] ADD [AidNumber] varchar(15)

if ( COLUMNPROPERTY( OBJECT_ID('ACC.Expense'),'ChequeDate','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[Expense] ADD [ChequeDate] Char(10)

if ( COLUMNPROPERTY( OBJECT_ID('ACC.Expense'),'ChequeDueDate','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[Expense] ADD [ChequeDueDate] Char(10)

if ( COLUMNPROPERTY( OBJECT_ID('ACC.Companies'),'ManagingDirector','IsRowGuidCol')is  null )  
ALTER TABLE ACC.Companies ADD ManagingDirector varchar(50)

if ( COLUMNPROPERTY( OBJECT_ID('ACC.Companies'),'FinancialManager','IsRowGuidCol')is  null )  
ALTER TABLE ACC.Companies ADD FinancialManager varchar(50)




if ( COLUMNPROPERTY( OBJECT_ID('ACC.TopicRange'),'levels','IsRowGuidCol')is  null )
ALTER TABLE Acc.TopicRange ADD levels  TinyInt  NOT NULL CONSTRAINT DF_TopicRange_level  DEFAULT (0)


IF EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_TopicRange' AND type = 'K')
begin
ALTER TABLE [Acc].[TopicRange] DROP CONSTRAINT [PK_TopicRange]

ALTER TABLE [Acc].[TopicRange] ADD  CONSTRAINT [PK_NewTopicRange] PRIMARY KEY CLUSTERED 
(
	[TopicCode] ASC,
	[DGID] ASC,
	[levels] ASC
)
end

IF (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS WHERE (TABLE_NAME = N'PortionTopicCode') AND (COLUMN_NAME = N'TopicCode'))<>'bigint'
begin
ALTER TABLE [ACC].[PortionTopicCode] DROP CONSTRAINT PK_PortionTopicCode
ALTER TABLE [ACC].[PortionTopicCode] ALTER COLUMN [TopicCode] [bigint] NOT NULL
ALTER TABLE acc.PortionTopicCode ADD CONSTRAINT PK_PortionTopicCode PRIMARY KEY CLUSTERED ( TopicCode, PortionTopicCode ) ON [PRIMARY]
end

IF (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS WHERE (TABLE_NAME = N'PortionTopicCode') AND (COLUMN_NAME = N'PortionTopicCode'))<>'bigint'
begin
ALTER TABLE [ACC].[PortionTopicCode] DROP CONSTRAINT PK_PortionTopicCode
ALTER TABLE [ACC].[PortionTopicCode] ALTER COLUMN [PortionTopicCode] [bigint] NOT NULL
ALTER TABLE acc.PortionTopicCode ADD CONSTRAINT PK_PortionTopicCode PRIMARY KEY CLUSTERED ( TopicCode, PortionTopicCode ) ON [PRIMARY]
end

if((SELECT COLUMNPROPERTY( OBJECT_ID('ACC.documents'),'Id','IsIdentity')) = 0) 
begin  
ALTER TABLE [ACC].[Documents] DROP CONSTRAINT PK_Documents  
ALTER TABLE [ACC].[Documents] DROP column Id  
ALTER TABLE [ACC].[Documents]  add ID int identity(1,1)  
ALTER TABLE [ACC].[Documents]   ADD CONSTRAINT PK_Documents PRIMARY KEY (ID)  
end  

if((SELECT COLUMNPROPERTY( OBJECT_ID('ACC.PortionRange'),'Id','IsIdentity')) = 0) 
begin  
ALTER TABLE ACC.PortionRange DROP CONSTRAINT PK_PortionRange  
ALTER TABLE ACC.PortionRange DROP column Id  
ALTER TABLE ACC.PortionRange  add ID int identity(1,1)  
ALTER TABLE ACC.PortionRange  ADD CONSTRAINT PK_PortionRange PRIMARY KEY (ID)  
end  

if not exists (select * from sysobjects where id = object_id(N'Acc.RequestCash') 
               and OBJECTPROPERTY(id, N'IsUserTable') = 1)
	create table Acc.RequestCash (
	RequestID int identity(1,1),
	BudgetID int not null,
	BudgetItemID int not null,
	--CompanyID int not null,
	--CashType  tinyint not null default (1),
	PayType tinyint not null default(1),
	Price money not null,
	Note_L1 varchar(5000),
	Note_L2 varchar(5000),
	FormID int not null,
	YearID int not null,
	ServerID int not null,
	CompanyID int not null,
	CONSTRAINT [PK_RequestCash] PRIMARY KEY CLUSTERED 
	([RequestID] ASC) ON [PRIMARY]) ON [PRIMARY]


if not exists (select * from sysobjects where id = object_id(N'Acc.DocReference') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
	create table Acc.DocReference (
	ReferenceID bigint identity(1,1),
	YearID int not null,
	Serial int not null,
	CompanyCode int not null,
	CountPage int not null,
	Note_L1 varchar(5000),
	Note_L2 varchar(5000),
	InsertDateTime datetime not null,
	AidNumber decimal(20,4) null,
	AidDate Char(10) null,
	InsertUserID int not null,
	ReceiverUserID int not null,
	PermitUserID int null,
	ReceiverDateTime datetime,
	ComputerName varchar(50),
	CONSTRAINT [PK_DocReference] PRIMARY KEY CLUSTERED 
	([ReferenceID] ASC) ON [PRIMARY]) ON [PRIMARY]
	

if not exists (select * from sysobjects where id = object_id(N'[util].[MaliYear]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
begin 
	Declare @YearID char(2) Set @YearID=(SELECT top 1 SUBSTRING(StartDate, 0, 3) FROM [ACC].Config) 
	Declare @StartYear Char(10) Set @StartYear=(SELECT top 1 StartDate FROM [ACC].Config) 
	Declare @EndYear Char(10) Set @EndYear=(SELECT top 1 EndDate FROM [ACC].Config) 
	CREATE TABLE [util].[MaliYear] 
	( [YearID] [int] NOT NULL , 
	[StartYear] char(10) NULL , 
	[EndYear] char(10) NULL , 
	[Status] [tinyint] NOT NULL default (0), 
	CONSTRAINT [PK_MaliYear]
	PRIMARY KEY CLUSTERED ( [YearID]) ON [PRIMARY] ) ON [PRIMARY] 
	update [ACC].DocGroups  
	set YearId = @YearID WHERE 1=1
	update [ACC].Documents set YearId = @YearID WHERE 1=1
	INSERT INTO util.MaliYear (YearID, StartYear, EndYear,Status) 
	select @YearID, @StartYear, @EndYear,0 as a
	IF EXISTS (SELECT name FROM sysindexes WHERE name = 'IX_DocGroups')    DROP INDEX [ACC].DocGroups.IX_DocGroups 
	ALTER TABLE [acc].[DocGroups] WITH CHECK ADD CONSTRAINT [FK_DocGroups_MaliYear]
	FOREIGN KEY([YearID]) REFERENCES [util].[MaliYear] ([YearID])
	CREATE NONCLUSTERED INDEX [IX_YearID] ON [acc].[DocGroups] ( [YearID] ASC )  
	ALTER TABLE [acc].[DocGroups] ADD CONSTRAINT [IX_UniqueDoc] UNIQUE NONCLUSTERED ( [YearID] ASC, [CompanyCode] ASC, [SecondaryDocNo] ASC ) 
	CREATE NONCLUSTERED INDEX [IX_DocGroup] ON [acc].[DocGroups] ( [DocDate] ASC, [PrimaryDocNo] ASC, [SecondaryDocNo] ASC, [Serial] ASC ) 
	ALTER TABLE [ACC].DocGroups DROP CONSTRAINT FK_DocGroups_Companies 
	ALTER TABLE [ACC].DocGroups 
	WITH NOCHECK ADD CONSTRAINT FK_DocGroups_Companies 
	FOREIGN KEY (CompanyCode) REFERENCES [ACC].Companies (CompanyCode)  
	ALTER TABLE [ACC].Documents DROP CONSTRAINT FK_Documents_DocGroups 
	ALTER TABLE [ACC].[DocGroups] DROP CONSTRAINT PK_DocGroups 
	ALTER TABLE [ACC].DocGroups ADD CONSTRAINT PK_DocGroups 
	PRIMARY KEY CLUSTERED (Serial,YearID,CompanyCode) ON [PRIMARY] 
	ALTER TABLE [ACC].[Documents] DROP CONSTRAINT PK_Documents 
	ALTER TABLE [ACC].Documents ADD CONSTRAINT PK_Documents PRIMARY KEY CLUSTERED  (Serial,CompanyCode,ID,YearID) ON [PRIMARY]  
	ALTER TABLE acc.Documents ADD CONSTRAINT FK_Documents_DocGroups FOREIGN KEY (Serial,YearID,	CompanyCode) 
	REFERENCES acc.DocGroups (Serial,YearID,CompanyCode) ON UPDATE CASCADE ON DELETE CASCADE 
end  


IF not EXISTS (SELECT name FROM sys.sysobjects WHERE name = 'FK_Documents_DocGroups' AND type = 'F')
begin
----ALTER TABLE Acc.Documents  drop FK_Documents_DocGroups 
BEGIN TRY  
ALTER TABLE Acc.Documents  WITH NOCHECK  ADD  CONSTRAINT  FK_Documents_DocGroups FOREIGN KEY(Serial, CompanyCode, YearID)
REFERENCES Acc.DocGroups (Serial,  CompanyCode, YearID)
ON UPDATE  CASCADE
ON DELETE CASCADE

END TRY  

BEGIN CATCH  
ALTER TABLE Acc.Documents  WITH NOCHECK  ADD  CONSTRAINT  FK_Documents_DocGroups FOREIGN KEY(Serial, YearID, CompanyCode)
REFERENCES Acc.DocGroups (Serial, YearID,  CompanyCode)
ON UPDATE  CASCADE
ON DELETE CASCADE

END CATCH; 
end

if not exists (select * from sysobjects where id = object_id(N'[Acc].[BudgetTopicRange]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
begin
CREATE TABLE Acc.BudgetTopicRange (
TopicCode BIGINT,
BudgetTopicID BIGINT,
 CONSTRAINT [PK_BudgetTopicRange] PRIMARY KEY CLUSTERED 
(
	[TopicCode] ASC,
	[BudgetTopicID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
end

if not exists (select * from sysobjects where id = object_id(N'[Acc].[DocRelated]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
begin
	CREATE TABLE [Acc].[DocRelated](
		[ItemID] [int] NOT NULL,
		[ID] [int] NOT NULL,
		[Serial] [int] NOT NULL,
		[YearID] [int] NOT NULL,
		[RelatedID] [int] NOT NULL,
		[CompanyCode] [int] NOT NULL,
		[Debit] [money] NOT NULL,
		[Credit] [money] NOT NULL,
	 CONSTRAINT [PK_DocRelated] PRIMARY KEY CLUSTERED 
	([ItemID] ASC) ON [PRIMARY]) ON [PRIMARY]

	ALTER TABLE [Acc].[DocRelated]  WITH NOCHECK ADD  CONSTRAINT [FK_DocRelated_Documents] FOREIGN KEY([Serial], [CompanyCode], [ID], [YearID])
	REFERENCES [Acc].[Documents] ([Serial], [CompanyCode], [ID], [YearID])
	ON UPDATE CASCADE
	ON DELETE CASCADE
end


if not exists (select * from sysobjects where id = object_id(N'[acc].[_FinanceReports]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
begin
CREATE TABLE acc._FinanceReports(
	repCode tinyint NOT NULL,repName nvarchar(80) NOT NULL,
	ReportType tinyint NOT NULL,	ColNumShow tinyint NOT NULL,
	_QryType tinyint NOT NULL,
 CONSTRAINT PK__FinanceReports PRIMARY KEY CLUSTERED 
(	repCode ASC) ON [PRIMARY]) ON [PRIMARY]
end

if not exists (select * from sysobjects where id = object_id(N'[acc].[_ReportRows]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
begin
CREATE TABLE acc._ReportRows(
	repCode tinyint NOT NULL,	rowID int NOT NULL,
	rowTopic1 nvarchar(80) NULL,	Calbase1 tinyint NULL,
	link1 nvarchar(10) NULL,	cType1 tinyint NULL,
	ColNum1 tinyint NULL,	rowTopic2 nvarchar(80) NULL,
	Calbase2 tinyint NULL,	link2 nvarchar(10) NULL,
	cType2 tinyint NULL,	ColNum2 tinyint NULL,
 CONSTRAINT PK__ReportRows PRIMARY KEY CLUSTERED 
(	repCode ASC,	rowID ASC) ON [PRIMARY]
 ,CONSTRAINT FK__ReportRows__FinanceReports FOREIGN KEY(repCode)
REFERENCES acc._FinanceReports (repCode)ON UPDATE CASCADE) ON [PRIMARY]
end

if not exists (select * from sysobjects where id = object_id(N'[acc].[_ReportRowsOnDocs]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
begin

CREATE TABLE acc._ReportRowsOnDocs(
	ID int IDENTITY(1,1) NOT NULL,	repCode tinyint NULL,
	rowID int NULL,	ColNum tinyint NULL,
	G_TopicCode int NULL,	G_DetailCode int NULL,
	G_CTopicCode int NULL,
 CONSTRAINT PK__ReportRowsOnDocs PRIMARY KEY CLUSTERED 
(	ID ASC) ON [PRIMARY],CONSTRAINT FK__ReportRowsOnDocs__ReportRows FOREIGN KEY(repCode, rowID)
REFERENCES acc._ReportRows (repCode, rowID)ON UPDATE CASCADE ON DELETE CASCADE) ON [PRIMARY]

end

IF ( COLUMNPROPERTY( OBJECT_ID('Acc.Config'),'ID','IsRowGuidCol')is  null )  
BEGIN
	ALTER TABLE Acc.Config ADD ID int NOT NULL DEFAULT(1)

	ALTER TABLE Acc.Config ADD CONSTRAINT
	PK_Config PRIMARY KEY CLUSTERED 
	(	
	ID
	) ON [PRIMARY]
END

if ( COLUMNPROPERTY( OBJECT_ID('Acc.DocsTransaction'),'CompanyCode','IsRowGuidCol')is  null )  
ALTER TABLE [Acc].[DocsTransaction] ADD [CompanyCode] int not NULL default (1) 
if ( COLUMNPROPERTY( OBJECT_ID('Acc.Categories'),'UserRelated','IsRowGuidCol')is  null )  
ALTER TABLE [Acc].[Categories] ADD [UserRelated] varchar(100) NULL 
IF ( COLUMNPROPERTY( OBJECT_ID('Acc.BudgetItems'),'UnitID','IsRowGuidCol') IS NULL )  
ALTER TABLE Acc.BudgetItems ADD UnitID int  NULL
IF ( COLUMNPROPERTY( OBJECT_ID('Acc.BudgetItems'),'UnitPrice','IsRowGuidCol') IS NULL )  
ALTER TABLE Acc.BudgetItems ADD UnitPrice money NULL default (0)
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Categories'),'Active','IsRowGuidCol')is  null )  
ALTER TABLE [Acc].[Categories] ADD [Active] [tinyint] NOT NULL  DEFAULT (1) 
if ( COLUMNPROPERTY( OBJECT_ID('util.CodesInProcess'),'IP','IsRowGuidCol')is  null )  
ALTER TABLE [util].[CodesInProcess] ADD [IP] nvarChar(15)  NOT NULL  DEFAULT (0) 
if ( COLUMNPROPERTY( OBJECT_ID('Acc.Categories'),'ConstructionPercent','IsRowGuidCol')is  null )  
ALTER TABLE [Acc].[Categories] ADD [ConstructionPercent] decimal(4,2)  NOT NULL  DEFAULT (0) 
if ( COLUMNPROPERTY( OBJECT_ID('Acc.Categories'),'BudgetPrice','IsRowGuidCol')is  null )  
ALTER TABLE [Acc].[Categories] ADD [BudgetPrice] money  NOT NULL  DEFAULT (0)
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Interfaces'),'WeightActive','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[Interfaces] ADD [WeightActive] [tinyint]  NOT NULL  DEFAULT (0) 
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Interfaces'),'amountActive','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[Interfaces] ADD [amountActive] [tinyint] NOT NULL  DEFAULT (0)  
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Interfaces'),'Acc_RelateShowKind','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[Interfaces] ADD [Acc_RelateShowKind] [tinyint] NOT NULL  DEFAULT (0)  
if ( COLUMNPROPERTY( OBJECT_ID('ACC.DocGroups'),'DocDateMiladi','IsRowGuidCol')is  null )  
ALTER TABLE [Acc].[DocGroups] ADD [DocDateMiladi] [datetime] NOT NULL  DEFAULT (0)  

if ( COLUMNPROPERTY( OBJECT_ID('ACC.Config'),'MiladiDateActive','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[Config] ADD [MiladiDateActive] [tinyint] NOT NULL  DEFAULT (0)  
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Config'),'DecimalActive','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[Config] ADD DecimalACtive Bit NOT NULL  DEFAULT (0)  
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Config'),'ActivePartCompany','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[Config] ADD [ActivePartCompany] [tinyint] NOT NULL  DEFAULT (1)  
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Config'),'TopicCodeFrom','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[Config] ADD TopicCodeFrom bigint NOT NULL  DEFAULT (0)  
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Config'),'TopicCodeTo','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[Config] ADD TopicCodeTo bigint NOT NULL  DEFAULT (999999999)  
if ( COLUMNPROPERTY( OBJECT_ID('ACC.AccTopicLevels'),'ADDLevelID','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[AccTopicLevels] ADD [ADDLevelID] [tinyint] NOT NULL  DEFAULT (0) 
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Config'),'RatesCalculation','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[Config] ADD [RatesCalculation] [tinyint] NOT NULL  DEFAULT (0)  
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Config'),'DefaultCompany','IsRowGuidCol')is  null ) 
ALTER TABLE [ACC].[Config] ADD [DefaultCompany] [int] NOT NULL  DEFAULT (0) 
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Config'),'ActiveMultiCompany','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[Config] ADD [ActiveMultiCompany] [tinyint] NOT NULL  DEFAULT (0) 
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Config'),'RestDocCode','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[Config] ADD [RestDocCode] [tinyint] NOT NULL  DEFAULT (1)   
if ( COLUMNPROPERTY( OBJECT_ID('ACC.AccTopicLevels'),'EditLevelID','IsRowGuidCol')is  null ) 
ALTER TABLE [ACC].[AccTopicLevels] ADD [EditLevelID] [tinyint] NOT NULL  DEFAULT (0)  
if ( COLUMNPROPERTY( OBJECT_ID('ACC.AccTopicLevels'),'DeleteLevelID','IsRowGuidCol')is  null )
ALTER TABLE [ACC].[AccTopicLevels] ADD [DeleteLevelID] [tinyint] NOT NULL  DEFAULT (0) 
if ( COLUMNPROPERTY( OBJECT_ID('ACC.AccTopicLevels'),'ChangeStateLevelID','IsRowGuidCol')is  null ) 
ALTER TABLE [ACC].[AccTopicLevels] ADD [ChangeStateLevelID] [tinyint] NOT NULL  DEFAULT (0)  
if ( COLUMNPROPERTY( OBJECT_ID('ACC.AccTopicLevels'),'PrintLevelID','IsRowGuidCol')is  null ) 
ALTER TABLE [ACC].[AccTopicLevels] ADD [PrintLevelID] [tinyint] NOT NULL  DEFAULT (0)  
if ( COLUMNPROPERTY( OBJECT_ID('ACC.AccTopicLevels'),'AccRelatedID','IsRowGuidCol')is  null ) 
ALTER TABLE [ACC].[AccTopicLevels] ADD [AccRelatedID] [tinyint] NOT NULL  DEFAULT (0)  
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Config'),'KindSearchDoc','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[Config] ADD [KindSearchDoc] [tinyint] NOT NULL  DEFAULT (0)  
if ( COLUMNPROPERTY( OBJECT_ID('ACC.AccTopicLevels'),'OtherContorolLevleId','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[AccTopicLevels] ADD [OtherContorolLevleId] [tinyint] NOT NULL  DEFAULT (0)  
if ( COLUMNPROPERTY( OBJECT_ID('ACC.AccTopicLevels'),'EditState2','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[AccTopicLevels] ADD [EditState2] [tinyint] NOT NULL  DEFAULT (20)  
if ( COLUMNPROPERTY( OBJECT_ID('ACC.AccTopicLevels'),'EditState3','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[AccTopicLevels] ADD [EditState3] [tinyint] NOT NULL  DEFAULT (20)  
if ( COLUMNPROPERTY( OBJECT_ID('ACC.AccTopicLevels'),'AccessPermanent','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[AccTopicLevels] ADD [AccessPermanent] [tinyint] NOT NULL  DEFAULT (0)  
if ( COLUMNPROPERTY( OBJECT_ID('ACC.AccTopicLevels'),'AccessCertain','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[AccTopicLevels] ADD [AccessCertain] [tinyint] NOT NULL  DEFAULT (0)  
if ( COLUMNPROPERTY( OBJECT_ID('util.CodesInProcess'),'Type','IsRowGuidCol')is  null )  
ALTER TABLE [util].[CodesInProcess] ADD [Type] [tinyint] NOT NULL  DEFAULT (0)  
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Config'),'CofferBankName','IsRowGuidCol')is not null )  
alter table [ACC].[Config] Drop Column [CofferBankName]   
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Config'),'BsellBankName‍','IsRowGuidCol')is not null ) 
alter table [ACC].[Config] Drop Column [BsellBankName‍]   
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Config'),'AssetsBankName','IsRowGuidCol')is not null )  
alter table [ACC].[Config] Drop Column [AssetsBankName]   
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Config'),'PayRollBankName','IsRowGuidCol')is not null )  
alter table [ACC].[Config] Drop Column [PayRollBankName]   
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Config'),'BudgetBankName','IsRowGuidCol')is not null )  
alter table [ACC].[Config] Drop Column [BudgetBankName]  
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Config'),'ScoreBankName','IsRowGuidCol')is not null )  
alter table [ACC].[Config] Drop Column [ScoreBankName]  
if ( COLUMNPROPERTY( OBJECT_ID('ACC.FormsInfo'),'Comment','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[FormsInfo] ADD [Comment] [varchar](100) 
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Interfaces'),'BedCaption','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[Interfaces] ADD [BedCaption] [varchar](25) NOT NULL  DEFAULT ('بدهكار') 
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Interfaces'),'besCaption','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[Interfaces] ADD [besCaption] [varchar](25) NOT NULL  DEFAULT ('بستانكار')
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Config'),'AccLevel4RelatedTobudget','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[Config] ADD [AccLevel4RelatedTobudget] [tinyint] NOT NULL  DEFAULT (0) 
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Config'),'AccCodeInBudgetActive','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[Config] ADD [AccCodeInBudgetActive] [bit] NOT NULL  DEFAULT (1)  
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Config'),'PrintSelected','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[Config] ADD [PrintSelected] [bit] NOT NULL  DEFAULT (0)  
if ( COLUMNPROPERTY( OBJECT_ID('ACC.PortionTable '),'PortionCunt','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[PortionTable] ADD [PortionCunt] [int] NOT NULL  DEFAULT (0)   
if ( COLUMNPROPERTY( OBJECT_ID('ACC.documents'),'AuditDoPrint','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[documents] ADD [AuditDoPrint] [tinyint] NOT NULL  DEFAULT (0)   
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Budgets'),'CompanyCode','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[Budgets] ADD [CompanyCode] [int] NOT NULL  DEFAULT (0) 	
if ( columnproperty( object_id('ACC.documents'),'ctopiccode3','isrowguidcol')is null ) 
alter table [ACC].[documents] add [ctopiccode3] [int] not null default (0) 	
if ( columnproperty( object_id('ACC.Config'),'CTopicCode3Active','isrowguidcol')is null ) 
alter table [ACC].[Config] add [CTopicCode3Active] [tinyint] 	
if ( columnproperty( object_id('ACC.Config'),'DocKind','isrowguidcol')is null ) 
alter table [ACC].[Config] add [DocKind] [tinyint] not null default (0)	
if ( columnproperty( object_id('ACC.Config'),'DocEmpty','isrowguidcol')is null ) 
alter table [ACC].[Config] add [DocEmpty] [tinyint] not null default (1) 
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Config'),'BsellBankNames','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[Config] ADD   [BsellBankNames] [varchar](100) 	
if ( columnproperty( object_id('ACC.Config'),'DoInsertCust','isrowguidcol')is null ) 
alter table [ACC].[Config] add [DoInsertCust] [tinyint] not null default (0)	
if ( columnproperty( object_id('ACC.FormsInfo'),'SortID','isrowguidcol')is null ) 
alter table [ACC].[FormsInfo] add [SortID] [int] not null default (0) 
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Config'),'AccBankNames','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[Config] ADD   [AccBankNames] [varchar](100)
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Config'),'CheckRelation','IsRowGuidCol')is  null )  
ALTER TABLE ACC.Config ADD CheckRelation bit  NOT NULL  DEFAULT (0)  
if ( COLUMNPROPERTY( OBJECT_ID('ACC.DocGroups'),'SourceDataBase','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[DocGroups] ADD [SourceDataBase] VarChar(100)   

if ( COLUMNPROPERTY( OBJECT_ID('ACC.DocGroups'),'ExternalId','IsRowGuidCol')is  null )  
ALTER TABLE ACC.DocGroups ADD ExternalId varchar(100) 


if ( COLUMNPROPERTY( OBJECT_ID('ACC.Config'),'IsCheckDetail','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[Config] ADD   [IsCheckDetail] [bit] not null default (0)
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Config'),'StartTopicCode','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[Config] ADD   StartTopicCode int not null default (0)
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Config'),'EndTopicCode','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[Config] ADD   EndTopicCode int not null default (0)
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Documents'),'RelatedID','IsRowGuidCol')is  null ) 
ALTER TABLE [ACC].[Documents] ADD   RelatedID int not null default (0)
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Config'),'LastVersion','IsRowGuidCol') is  null )  
ALTER TABLE [ACC].[Config] ADD  LastVersion char(20) 
if ( COLUMNPROPERTY( OBJECT_ID('ACC.documents'),'DetailCompany','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[documents] ADD [DetailCompany] [int] NOT NULL  DEFAULT (0)   
if ( COLUMNPROPERTY( OBJECT_ID('ACC.documents'),'CashType','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[documents] ADD [CashType] tinyint NOT NULL  DEFAULT (1) 
if ( COLUMNPROPERTY( OBJECT_ID('ACC.PortionRange'),'CompanyCode','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[PortionRange] ADD [CompanyCode] [int] NOT NULL  DEFAULT (0)   
if ( COLUMNPROPERTY( OBJECT_ID('ACC.PortionTable'),'YearID','IsRowGuidCol')is  null )  
ALTER TABLE ACC.PortionTable ADD [YearID] int NOT NULL  DEFAULT (0)   
if ( COLUMNPROPERTY( OBJECT_ID('ACC.PortionRange'),'YearID','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[PortionRange] ADD [YearID] [int] NOT NULL  DEFAULT (0)   
if ( COLUMNPROPERTY( OBJECT_ID('ACC.PortionDoc'),'YearID','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[PortionDoc] ADD [YearID] [int] NOT NULL  DEFAULT (0)   
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Config'),'CtoipcRelatedKind','IsRowGuidCol') is  null )  
ALTER TABLE [ACC].[Config] ADD  CtoipcRelatedKind tinyint NOT NULL DEFAULT (0)
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Config'),'CheckAccCodeInInsert','IsRowGuidCol') is  null )  
ALTER TABLE [ACC].[Config] ADD  CheckAccCodeInInsert tinyint NOT NULL DEFAULT (1)
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Config'),'Checkprint','IsRowGuidCol') is  null )  
ALTER TABLE [ACC].[Config] ADD  Checkprint tinyint NOT NULL DEFAULT (0)
if ( COLUMNPROPERTY( OBJECT_ID('Acc.DetailNotes'),'CompanyCode','IsRowGuidCol')is  null )  
ALTER TABLE Acc.DetailNotes ADD CompanyCode INT NOT NULL DEFAULT(0)
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Config'),'Options','IsRowGuidCol')is  null )  
ALTER TABLE ACC.Config ADD Options Text
if ( COLUMNPROPERTY( OBJECT_ID('ACC.AccTopicLevels'),'DeleteRowLevelID','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[AccTopicLevels] ADD [DeleteRowLevelID] [tinyint]   DEFAULT (0)
if ( COLUMNPROPERTY( OBJECT_ID('ACC.AccTopicLevels'),'EditNoteLevelID','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[AccTopicLevels] ADD [EditNoteLevelID] [tinyint]   DEFAULT (0)
if ( COLUMNPROPERTY( OBJECT_ID('ACC.AccTopicLevels'),'ShowNoteLevelID','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[AccTopicLevels] ADD [ShowNoteLevelID] [tinyint]  DEFAULT (0) 
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Budgets'),'YearID','IsRowGuidCol')is  null )
ALTER TABLE Acc.budgets ADD YearID int not null 
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Budgets'),'Status','IsRowGuidCol')is  null )
ALTER TABLE Acc.budgets ADD [Status] tinyint not null DEFAULT (0) 
if ( COLUMNPROPERTY( OBJECT_ID('ACC.BudgetItems'),'Cashtype','IsRowGuidCol')is  null )
ALTER TABLE Acc.BudgetItems ADD Cashtype tinyint not null DEFAULT (1)
if ( COLUMNPROPERTY( OBJECT_ID('ACC.BudgetItems'),'CompanyCode','IsRowGuidCol')is  null )
ALTER TABLE Acc.BudgetItems ADD CompanyCode int not null
if ( COLUMNPROPERTY( OBJECT_ID('ACC.BudgetItems'),'AidDate','IsRowGuidCol')is  null )
ALTER TABLE Acc.BudgetItems ADD AidDate varchar(10)  null
if ( COLUMNPROPERTY( OBJECT_ID('ACC.BudgetItems'),'AidNum','IsRowGuidCol')is  null )
ALTER TABLE Acc.BudgetItems ADD AidNum varchar(20)  null
if ( COLUMNPROPERTY( OBJECT_ID('ACC.BudgetItems'),'Ctype','IsRowGuidCol')is  null )
ALTER TABLE Acc.BudgetItems ADD Ctype tinyint not null default (0)
if ( COLUMNPROPERTY( OBJECT_ID('ACC.BudgetItems'),'CostType','IsRowGuidCol')is  null )
ALTER TABLE Acc.BudgetItems ADD CostType tinyint not null default (0)
if ( COLUMNPROPERTY( OBJECT_ID('ACC.BudgetItems'),'CostCode','IsRowGuidCol')is  null )
ALTER TABLE Acc.BudgetItems ADD CostCode varchar(60) null

IF ( COLUMNPROPERTY( OBJECT_ID('dbo.StuffGroups'),'AccDetailType‍','IsRowGuidCol')is not null )  
BEGIN

SET @S=''
DECLARE @SQLtext NVARCHAR(500)
SET @SQLtext=''
WHILE @S is not NULL
BEGIN
SELECT @S=NAME FROM sysobjects WHERE NAME  like'DF%StuffGrou%AccDe%'
IF @S<>'' or @S<>NULL
BEGIN
SET @SQLtext='ALTER TABLE stuffgroups DROP CONSTRAINT '+@S
exec(@SQLtext)
SET @S=''
END
ELSe 
SET	@S=NULL
END
ALTER TABLE stuffgroups DROP COLUMN AccDetailType
END 

--if ( COLUMNPROPERTY( OBJECT_ID('ACC.DocOtherSysRelated'),'DocumentID','IsRowGuidCol')is  null )
--ALTER TABLE Acc.DocOtherSysRelated ADD DocumentID int 
--if ( COLUMNPROPERTY( OBJECT_ID('ACC.DocOtherSysRelated'),'ReciptID','IsRowGuidCol')is  null )
--ALTER TABLE Acc.DocOtherSysRelated ADD ReciptID int 
--------------

if not exists (select * from dbo.sysobjects where id = object_id(N'[Acc].[Analyze]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
begin
	CREATE TABLE [Acc].[Analyze](
		[ID] [int] NOT NULL,
		[CaptionName] [nvarchar](50) NOT NULL,
		[FieldName] [varchar](500) NOT NULL,
		[TableName] [varchar](50) NULL,
		[TopicName] [varchar](50) NULL,
		[AliasName] [varchar](50) NULL,
		[JoinFieldName] [varchar](50) NULL,
	CONSTRAINT [PK_Analyze] PRIMARY KEY CLUSTERED 
	([ID] ASC)
	) ON [PRIMARY]
end;

IF (SELECT CHARACTER_MAXIMUM_LENGTH FROM INFORMATION_SCHEMA.COLUMNS WHERE (TABLE_NAME = N'Analyze') AND (LOWER(TABLE_SCHEMA) = N'acc') AND (COLUMN_NAME = N'FieldName'))<500
ALTER TABLE [Acc].[Analyze] ALTER COLUMN [FieldName] VARCHAR(500) 

if not exists (select * from dbo.sysobjects where id = object_id(N'[acc].[PortionDoc]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE [acc].[PortionDoc] ( [DetailCode] [int] NULL 
CONSTRAINT [DF_PortionDocCode_DetailCode] DEFAULT (0), [FormInfoID] [int] NOT NULL , 
[CTopicCode] [int] NULL CONSTRAINT [DF_PortionDocCode_CTopicCode] DEFAULT (0), 
[CTopicCode2] [int] NULL CONSTRAINT [DF_PortionDocCode_CTopicCode2] DEFAULT (0), 
[CTopicCode3] [int] NOT NULL CONSTRAINT [DF_Table_1_ctopiccode3] DEFAULT (0),
[Comment] [nchar] (10)  NULL , 
[Cofficient] [float] NOT NULL 
CONSTRAINT [DF_Table_1_CofficientItem] DEFAULT (0), 
[PortionCount] [int] NOT NULL 
CONSTRAINT [DF_PortionDoc_PortionCunt] DEFAULT (0),
[ID] [int] IDENTITY (1, 1) NOT NULL , 
CONSTRAINT [PK_PortionDoc] PRIMARY KEY CLUSTERED ( [ID]) ON [PRIMARY] , 
CONSTRAINT [FK_PortionDoc_FormsInfo] FOREIGN KEY ( [FormInfoID]) 
REFERENCES [acc].[FormsInfo] ( [FormInfoID] ) 
ON DELETE CASCADE ON UPDATE CASCADE ) ON [PRIMARY] 

if not exists (select * from dbo.sysobjects where id = object_id(N'[acc].[Contacts]') and OBJECTPROPERTY(id, N'IsUserTable') = 1) 
CREATE TABLE [acc].[Contacts] (
[ContactID] [int] IDENTITY (1, 1) NOT NULL , [ContactNo] [varchar] (15) NOT NULL , 
[ContactDate] char(10) NOT NULL , [State] [tinyint] NULL
CONSTRAINT [DF_Contacts_State] DEFAULT (0), 
[ContactTopic] [varchar] (1000) NULL , 
[StartDate] char(10) NULL , 
[EndDate] char(10) NULL ,
[Price] [money] NULL , 
[WorkPlace] [varchar] (1000) NULL , 
[DetailCode] [int] NULL , 
[CTopicCode] [int] NULL , 
[CtopicCode2] [int] NULL , 
[CtopicCode3] [int] NULL , 
CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED (
[ContactID] ) ON [PRIMARY])ON [PRIMARY] 
 
if exists (select * from dbo.sysobjects where id = object_id(N'[acc].[ScanInfo]') and OBJECTPROPERTY(id, N'IsUserTable') = 1) 
Drop Table acc.scanInfo
if exists (select * from dbo.sysobjects where id = object_id(N'[acc].[ScanType]') and OBJECTPROPERTY(id, N'IsUserTable') = 1) 
Drop Table acc.ScanType

if not exists (select * from dbo.sysobjects where id = object_id(N'[Util].[ScanType]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE [Util].[ScanType] ( 
[ScanType] [int] NOT NULL , 
[ScanTypeName] [nvarchar] (100) NOT NULL , 
CONSTRAINT [PK_ScanType] PRIMARY KEY CLUSTERED ( 
[ScanType] ) ON [PRIMARY]) ON [PRIMARY] 

if not exists (select * from dbo.sysobjects where id = object_id(N'[util].[ScanInfo]') and OBJECTPROPERTY(id, N'IsUserTable') = 1) 
CREATE TABLE [Util].[ScanInfo] ( 
[ScanType] [int] NOT NULL , 
[ScanInfoID] [int] NOT NULL , 
[ScanInfoName] [varchar] (100) NOT NULL , 
CONSTRAINT [PK_ScanInfo] PRIMARY KEY CLUSTERED (
[ScanType], [ScanInfoID]) ON [PRIMARY] ) ON [PRIMARY] 

if not exists (select * from dbo.sysobjects where id = object_id(N'[acc].[BudgetRang]') and OBJECTPROPERTY(id, N'IsUserTable') = 1) 
CREATE TABLE [ACC].[BudgetRang] (
[TopicCode] [bigint] NOT NULL , 
[DetailCode] [int] NOT NULL ,
[BudgetCode] [int] NOT NULL , 
[CompanyCode] [int] NOT NULL 
CONSTRAINT [DF_BudgetRang_CompanyCode] DEFAULT (1), 
[Coefficient] [float] NULL , CONSTRAINT [PK_BudgetRang] PRIMARY KEY CLUSTERED ( 
[TopicCode], [DetailCode], [BudgetCode] ) ON [PRIMARY] , 
CONSTRAINT [FK_BudgetRang_BudgetTopics] FOREIGN KEY ( 
[BudgetCode] ) REFERENCES [Acc].[BudgetTopics] ( 
[BudgetTopicID] ) ON DELETE CASCADE ON UPDATE CASCADE , 
CONSTRAINT [FK_BudgetRang_Categories] FOREIGN KEY ( 
[TopicCode] ) REFERENCES [acc].[Categories] ( [TopicCode] ) ON DELETE CASCADE ON UPDATE CASCADE ) ON [PRIMARY] 
	
if ( columnproperty( object_id('ACC.BudgetRang'),'CtopicCode','isrowguidcol')is null ) 
alter table [ACC].[BudgetRang] add [CTopicCode] [int] not null default (0) 

if ( COLUMNPROPERTY( OBJECT_ID('ACC.Contacts'),'RegistrationNumber','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[Contacts] ADD [RegistrationNumber] varChar(20) 
   
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Contacts'),'YearID','IsRowGuidCol')is  null )  
ALTER TABLE [ACC].[Contacts] ADD [YearID] [int] NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('ACC.Contacts'),'Address','IsRowGuidCol') IS NULL )  
ALTER TABLE [ACC].[Contacts] ADD [Address] [varchar](1000) NULL  

IF (SELECT CHARACTER_MAXIMUM_LENGTH FROM INFORMATION_SCHEMA.COLUMNS WHERE (TABLE_NAME = N'Contacts') AND (COLUMN_NAME = N'Address'))<1000
ALTER TABLE [ACC].[Contacts] ALTER COLUMN [Address] [varchar](1000) NULL

IF ( COLUMNPROPERTY( OBJECT_ID('Acc._ReportRows'), 'YearID', 'IsRowGuidCol') IS NULL )  
BEGIN
	DECLARE @MaxYearID INT 
	SET @MaxYearID = (SELECT MAX(YearID) FROM Util.MaliYear) 

	EXEC('ALTER TABLE [ACC].[_ReportRows] ADD [YearID] [int] NOT NULL DEFAULT ('+ @MaxYearID +') ')
	EXEC('ALTER TABLE [ACC].[_ReportRowsOnDocs] ADD [YearID] [int] NOT NULL DEFAULT ('+ @MaxYearID + ')' )   

	ALTER TABLE [ACC].[_ReportRowsOnDocs] DROP CONSTRAINT FK__ReportRowsOnDocs__ReportRows

	ALTER TABLE [ACC].[_ReportRows] DROP CONSTRAINT PK__ReportRows

	ALTER TABLE [ACC].[_ReportRows] ADD CONSTRAINT PK__ReportRows 
	PRIMARY KEY CLUSTERED (repCode, rowID, YearID) ON [PRIMARY] 

	ALTER TABLE [ACC].[_ReportRowsOnDocs] ADD CONSTRAINT FK__ReportRowsOnDocs__ReportRows FOREIGN KEY(repCode, rowID, YearID)
	REFERENCES acc._ReportRows (repCode, rowID, YearID)ON UPDATE CASCADE ON DELETE CASCADE
END


IF ((SELECT COUNT(*) FROM Acc.FinancialTopics WHERE FinancialCode = 0) = 0)
INSERT INTO Acc.FinancialTopics(FinancialCode, FinancialName_L1, FinancialName_L2, LevelID, FinancialType, Essence, MakeDate)
VALUES(0, 0, NULL, 1, 0, 0, GETDATE())

IF ( COLUMNPROPERTY( OBJECT_ID('Acc.Config'),'AllowDelDocSubSystem','IsRowGuidCol') IS NULL )  
	ALTER TABLE Acc.Config ADD AllowDelDocSubSystem TINYINT NOT NULL CONSTRAINT DF_Config_AllowDelDocSubSystem DEFAULT (1)

IF NOT EXISTS(SELECT name FROM sysobjects WHERE name = 'DF_Config_AllowDelDocSubSystem')
BEGIN

    DECLARE @DF_name VARCHAR(100);
    SET @DF_name = (SELECT name FROM sysobjects so JOIN sysconstraints sc ON so.id = sc.constid 
                    WHERE object_name(so.parent_obj) = 'Config' AND so.xtype = 'D' 
                    AND sc.colid = (SELECT colid FROM syscolumns WHERE id = object_id('Acc.Config') AND name = 'AllowDelDocSubSystem'))
    SET @Sql = 'ALTER TABLE Acc.Config DROP CONSTRAINT ' + @DF_name
    EXEC(@Sql)
    
	ALTER TABLE Acc.Config ALTER COLUMN AllowDelDocSubSystem TINYINT 
	ALTER TABLE Acc.Config ADD CONSTRAINT DF_Config_AllowDelDocSubSystem DEFAULT (1) FOR AllowDelDocSubSystem
END

IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Fitful') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Fitful(FitfulID decimal(20, 4) NOT NULL ,
  CONSTRAINT CK_Fitful CHECK  ((FitfulID=(0))),
  CONSTRAINT PK_Fitful PRIMARY KEY CLUSTERED (FitfulID ASC) ON [PRIMARY]
) ON [PRIMARY]

IF (SELECT COUNT(*) FROM Fitful)=0
INSERT INTO Fitful (FitfulID) VALUES(0)

IF ( COLUMNPROPERTY( OBJECT_ID('Fitful'),'FitfulIDc','IsRowGuidCol') IS NULL )  
	ALTER TABLE Fitful ADD FitfulIDc MONEY NOT NULL DEFAULT (0)
	
IF ( COLUMNPROPERTY( OBJECT_ID('Acc.PortionRange'),'CTopicCode3','IsRowGuidCol') IS NULL )
BEGIN
	ALTER TABLE Acc.PortionRange ADD CTopicCode3 INT NOT NULL DEFAULT (0)
	ALTER TABLE Acc.PortionRange WITH CHECK ADD CONSTRAINT [FK_PortionRange_CTopicCode3] FOREIGN KEY(CTopicCode3)
	REFERENCES Acc.CTopicCode3(CTopicCode3)
END	
	
if ( COLUMNPROPERTY( OBJECT_ID('ACC.Config'),'StartLimitID','IsRowGuidCol')is  null )  
ALTER TABLE ACC.Config ADD StartLimitID int NOT NULL CONSTRAINT DF_Config_StartLimitID  DEFAULT (1) 

if ( COLUMNPROPERTY( OBJECT_ID('ACC.Config'),'EndLimitID','IsRowGuidCol')is  null )  
ALTER TABLE ACC.Config ADD EndLimitID int NOT NULL CONSTRAINT DF_Config_EndLimitID  DEFAULT (2147483647) 

IF ( (SELECT COUNT(*) FROM Acc.FormTypes WHERE (FormType = 12)) = 0 )
INSERT INTO Acc.FormTypes(FormType, FormCaption)
SELECT 12, 'نحوه ثبت کدبودجه در سند حسابداری'

IF ( (SELECT COUNT(*) FROM Acc.FormsInfo WHERE (FormType = 12)) = 0 )
INSERT INTO Acc.FormsInfo(FormInfoID, InfoID, FormType, InfoName_L1)
SELECT (SELECT MAX(FormInfoID) + 1 FROM Acc.FormsInfo), 1, 12, 'اطلاعات ندارد'

IF ( COLUMNPROPERTY( OBJECT_ID('ACC.Config'),'ActiveCurrencyInTrialBalance','IsRowGuidCol')is  null )  
ALTER TABLE ACC.Config ADD ActiveCurrencyInTrialBalance tinyint NOT NULL CONSTRAINT DF_Config_ActiveCurrencyInTrialBalance  DEFAULT (0) 	

IF ( COLUMNPROPERTY( OBJECT_ID('ACC.Config'),'ActiveExpense','IsRowGuidCol')is  null )  
ALTER TABLE ACC.Config ADD ActiveExpense tinyint NOT NULL CONSTRAINT DF_Config_ActiveExpense  DEFAULT (0) 	

IF NOT EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'[Acc].[Expense]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
	CREATE TABLE [Acc].[Expense](
	[ExpID] [int] NOT NULL,
	[YearId] [int] NOT NULL,
	[FormNo] [int] NOT NULL,
	[FormDate] char(10) NOT NULL,
	[BudgetYear] [smallint] NULL,
	[TopicCode] [int] NULL,
	[DetailCode] [int] NULL,
	[CTopicCode] [int] NULL,
	[PayerTopicCode] [int] NULL,
	[PayerDetailCode] [int] NULL,
	[PayerCTopicCode] [int] NULL,
	[Cacther] [nvarchar](100) NULL,
	[State] [smallint] NULL,
	[Kind] [smallint] NULL,
	[Preference] [int] NULL,
	[Comments] [nvarchar](120) NULL,
	[CustDetailId] [int] NULL,
	[firstUser] [nvarchar](50) NULL,
	[lastUser] [nvarchar](50) NULL,
	 CONSTRAINT [PK_Expense] PRIMARY KEY CLUSTERED 
	([ExpID] ASC) ON [PRIMARY]) ON [PRIMARY]

	ALTER TABLE [Acc].[Expense]  WITH NOCHECK ADD  CONSTRAINT [FK_Expense_MaliYear] FOREIGN KEY([YearId])
	REFERENCES [Util].[MaliYear] ([YearID])
	ON UPDATE CASCADE
	ON DELETE CASCADE
END

IF NOT EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'[Acc].[ExpenseItems]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
	CREATE TABLE [Acc].[ExpenseItems](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ExpID] [int] NOT NULL,
	[CatcherItem] [nvarchar](80) NOT NULL,
	[Desc] [nvarchar](250) NULL,
	[Bed] [money] NULL,
	[Bes] [money] NULL,
	[ItemDetailCode] [int] NULL,
	 CONSTRAINT [PK_ExpenseItems] PRIMARY KEY CLUSTERED 
	([ID] ASC) ON [PRIMARY]) ON [PRIMARY]

	ALTER TABLE [Acc].[ExpenseItems]  WITH NOCHECK ADD  CONSTRAINT [FK_ExpenseItems_Expense] FOREIGN KEY([ExpID])
	REFERENCES [Acc].[Expense] ([ExpID])
	ON UPDATE CASCADE
	ON DELETE CASCADE
END

IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS 
                WHERE (TABLE_NAME = N'Acc.Documents') AND (COLUMN_NAME = N'AidDocNo') AND (DATA_TYPE = N'DECIMAL(20, 4)'))
BEGIN
IF ((SELECT  OBJECT_ID('Acc.DF_Documents_AidDocNo')) IS NOT NULL)
  ALTER TABLE Acc.Documents DROP CONSTRAINT DF_Documents_AidDocNo

  ALTER TABLE Acc.Documents ALTER COLUMN AidDocNo DECIMAL(20, 4) 
  ALTER TABLE Acc.Documents ADD CONSTRAINT DF_Documents_AidDocNo DEFAULT (0) FOR AidDocNo
END


IF ( COLUMNPROPERTY( OBJECT_ID('Acc.Documents'),'CurrencyType','IsRowGuidCol') IS NULL )  
ALTER TABLE Acc.Documents ADD CurrencyType INT NOT NULL DEFAULT(0)

IF NOT EXISTS (SELECT 1 FROM SYSOBJECTS WHERE Id = OBJECT_ID(N'[Acc].[VarianceDefines]') )
CREATE TABLE Acc.VarianceDefines(
	VarianceCode int IDENTITY(1,1) NOT NULL,
	VarianceName nvarchar(100) NOT NULL,
	VarianceNote nvarchar(300)  NULL,
 CONSTRAINT PK_VarianceDefines PRIMARY KEY CLUSTERED 
	(
		VarianceCode ASC
	) ON [PRIMARY]
	) ON [PRIMARY]
	
	
IF NOT EXISTS (SELECT 1 FROM SYSOBJECTS WHERE Id = OBJECT_ID(N'[Acc].[VarianceRelations]') ) 
CREATE TABLE Acc.VarianceRelations(
	VarianceRelationId int IDENTITY(1,1) NOT NULL,
	VarianceCode int NOT NULL CONSTRAINT FK_VarianceRelations_VarianceDefines FOREIGN KEY(VarianceCode) REFERENCES Acc.VarianceDefines(VarianceCode) ON UPDATE CASCADE,
	TopicCode bigint NOT NULL CONSTRAINT DF_VarianceRelations_TopicCode DEFAULT (0),
	DetailCode int NOT NULL CONSTRAINT DF_VarianceRelations_detailcode DEFAULT (0),
	CTopicCode int NOT NULL CONSTRAINT DF_VarianceRelations_cTopicCode DEFAULT (0),
	CTopicCode2 int NOT NULL CONSTRAINT DF_VarianceRelations_cTopicCode2 DEFAULT (0),
	CTopicCode3 int NOT NULL CONSTRAINT DF_VarianceRelations_cTopicCode3 DEFAULT (0),
 CONSTRAINT PK_VarianceRelations PRIMARY KEY CLUSTERED 
	(
		VarianceRelationId ASC
	) ON [PRIMARY]
	) ON [PRIMARY]


IF EXISTS(SELECT * FROM syscolumns WHERE [name] = N'CompanyCode' AND Id = OBJECT_ID(N'[Acc].[Variance]'))
    DROP TABLE Acc.Variance


IF NOT EXISTS (SELECT 1 FROM SYSOBJECTS WHERE Id = OBJECT_ID(N'[Acc].[Variance]') )
CREATE TABLE Acc.Variance(
	VarianceId int IDENTITY(1,1) NOT NULL,
	VarianceCode int NOT NULL CONSTRAINT FK_Variance_VarianceDefines FOREIGN KEY(VarianceCode) REFERENCES Acc.VarianceDefines(VarianceCode) ON UPDATE CASCADE,  
	VarianceNo int NULL, 
	VarianceDate Char(10) NULL,
	[Row] int NOT NULL,
	DocumentId int NULL ,
	yearID int NOT NULL,
	AccCode1 int NULL CONSTRAINT DF_Variance_AccCode1 DEFAULT (0),
	AccName1 nvarchar(100) NULL,
	AccCode2 int NULL CONSTRAINT DF_Variance_AccCode2 DEFAULT (0),
	AccName2 nvarchar(100) NULL,
	AccCode3 int NULL CONSTRAINT DF_Variance_AccCode3 DEFAULT (0),
	AccName3 nvarchar(100) NULL,
	Debt  money NOT NULL CONSTRAINT DF_Variance_Debt DEFAULT (0),
	Credit money NOT NULL CONSTRAINT DF_Variance_Credit DEFAULT (0),
	Comment nvarchar(500) NULL,
	AidNo int NULL,
	AidDate Char(10) NULL,
 CONSTRAINT PK_Variance PRIMARY KEY CLUSTERED 
	(
		VarianceId ASC
	) ON [PRIMARY]
	) ON [PRIMARY]


IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS
WHERE  (TABLE_NAME = N'ExpenseItems') AND (COLUMN_NAME = N'Desc') AND (character_maximum_length = 250) )
ALTER TABLE [Acc].[ExpenseItems] ALTER COLUMN [Desc] nvarchar(750)


IF NOT EXISTS (SELECT 1 from sysobjects where name = 'CK_Documents_ValidMoney')
BEGIN
ALTER TABLE [Acc].[Documents]  WITH NOCHECK ADD  CONSTRAINT [CK_Documents_ValidMoney] 
      CHECK  (([Debt] - round([debt],0) = 0 and [credit] - round([credit],0) = 0))
ALTER TABLE [Acc].[Documents] CHECK CONSTRAINT [CK_Documents_ValidMoney]
END


if not exists (select * from sysindexes WHERE     (name = N'IX_CodesInProcess'))
CREATE UNIQUE NONCLUSTERED INDEX IX_CodesInProcess ON Util.CodesInProcess
	(TableName,	FieldName,Value	) ON [PRIMARY]


--m.kahdooei 94/01/19

IF NOT EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'[Acc].[TopicRange]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
begin
CREATE TABLE [Acc].[TopicRange](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TopicCode] [bigint] NOT NULL,
	[DGID] [int] NOT NULL,
 CONSTRAINT [PK_TopicRange] PRIMARY KEY CLUSTERED 
(
	[TopicCode] ASC,
	[DGID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
end


if ( COLUMNPROPERTY( OBJECT_ID('dbo.Forms'),'CostFactorsType','IsRowGuidCol')is  null )  
ALTER TABLE dbo.Forms ADD CostFactorsType tinyint  NOT NULL  DEFAULT (0) 
if ( COLUMNPROPERTY( OBJECT_ID('dbo.Forms'),'CostFactorsCode','IsRowGuidCol')is  null )  
ALTER TABLE dbo.Forms ADD CostFactorsCode varchar(60) NULL 

IF NOT EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'[Acc].[TopicSanama]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [Acc].[TopicSanama](
	TopicCode Bigint not null,
	FormType int not null,
	Kind tinyint not null Default (0),
	DefaultValue int null,
 CONSTRAINT PK_TopicSanama PRIMARY KEY CLUSTERED 
	(
	 TopicCode,FormType
	) ON [PRIMARY] ) ON [PRIMARY]
END

IF ( COLUMNPROPERTY( OBJECT_ID('Acc.Documents'),'SanamaID','IsRowGuidCol') IS NULL )  
	ALTER TABLE Acc.Documents ADD SanamaID xml NULL

if (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS WHERE (TABLE_NAME = N'Documents') 
    AND (COLUMN_NAME = N'SanamaID')) <> 'xml'
begin
ALTER TABLE Acc.Documents DROP column SanamaID
ALTER TABLE Acc.Documents ADD SanamaID xml NULL
end

IF NOT EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'Acc.ContrastAccountSanama') and OBJECTPROPERTY(ID, N'IsUserTable') = 1)
CREATE TABLE Acc.ContrastAccountSanama
(
MasterID int not null,
ParentID int not null default (0),
DetailCode int not null default (0),
TopicCode int not null default (0),
DiffType tinyint not null default (0),
Value bigint not null default (0),
ContrastDate varchar(10) not null,
[Description] nvarchar(4000),
Expense bigint not null default (0),
CheckNo nvarchar(50),
DocNo nvarchar(50),
DocDate nvarchar(10),
Zinaf nvarchar(4000),
YearID int not null,
[Month] tinyint,
F1 varchar(20),
F2 varchar(20),
CONSTRAINT [PK_MasterID] PRIMARY KEY CLUSTERED ([MasterID] ASC) ON [PRIMARY]
) ON [PRIMARY]

IF NOT EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'Acc.AttachmentSanama') and OBJECTPROPERTY(ID, N'IsUserTable') = 1)
CREATE TABLE Acc.AttachmentSanama
(
ID int identity (1,1),
ParentID int not null,
Attachment varbinary(MAX),
AttachmentName nvarchar(250),
Extension nvarchar(5),
[Description] nvarchar(4000),
CONSTRAINT [PK_ID] PRIMARY KEY CLUSTERED ([ID] ASC) ON [PRIMARY]
) ON [PRIMARY]
 

IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_AttachmentSanama_ContrastAccountSanama' AND type = 'F')
ALTER TABLE [Acc].[AttachmentSanama]  WITH NOCHECK ADD  CONSTRAINT [FK_AttachmentSanama_ContrastAccountSanama] FOREIGN KEY([ParentID])
REFERENCES [Acc].[ContrastAccountSanama] ([MasterID])
ON UPDATE CASCADE
ON DELETE CASCADE

if ( COLUMNPROPERTY( OBJECT_ID('Acc.ContrastAccountSanama'),'MojoodiTebgheDaftar','IsRowGuidCol')is  null )  
ALTER TABLE Acc.ContrastAccountSanama ADD MojoodiTebgheDaftar bigint  NOT NULL  DEFAULT (0) 
if ( COLUMNPROPERTY( OBJECT_ID('Acc.ContrastAccountSanama'),'MojoodiTebgheBank','IsRowGuidCol')is  null )  
ALTER TABLE Acc.ContrastAccountSanama ADD MojoodiTebgheBank bigint NOT NULL  DEFAULT (0)  

update FaraSystems.dbo.OperatorItems set AccessKey = REPLACE(AccessKey,'=1073741823','=16383')
where SystemID = 39



if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'PaymentCode','IsRowGuidCol')is null )
 ALTER TABLE Customers ADD PaymentCode BigInt 




 IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Customers_AccountKind'))
CREATE NONCLUSTERED INDEX IX_Customers_AccountKind
ON dbo.Customers (AccountKind)INCLUDE (CustomerGrpID,CustName,MaxCredit,CustFirstName,CustName_L2)



IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Customers_CustomerGrpID_acc'))
CREATE NONCLUSTERED INDEX IX_Customers_CustomerGrpID_acc
ON dbo.Customers (CustomerGrpID)
INCLUDE (CustName,ModifyDate,CustFirstName,CustName_L2)


IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Documents_TDDCY_DCA'))
CREATE NONCLUSTERED INDEX IX_Documents_TDDCY_DCA
ON Acc.Documents (TopicCode,DetailCode,DetailCompany,CompanyCode,YearID)
INCLUDE (Debt,Credit,AidAmount)


IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_DocGroups_CompanyCode_YearID'))
CREATE NONCLUSTERED INDEX IX_DocGroups_CompanyCode_YearID
ON Acc.DocGroups (CompanyCode,YearID)
INCLUDE (SecondaryDocNo,PrimaryDocNo,DocDate,DocTypeCode,Status)


IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_DocGroups_CY'))
CREATE NONCLUSTERED INDEX IX_DocGroups_CY ON Acc.DocGroups
(
	CompanyCode ASC,
	YearID ASC
)
INCLUDE(SecondaryDocNo,PrimaryDocNo,DocDate,DocTypeCode,Status)
 ON [PRIMARY]


if ( COLUMNPROPERTY( OBJECT_ID('Acc.Documents'),'PO','IsRowGuidCol')is  null )  
 ALTER TABLE Acc.Documents ADD PO  varchar(30)	 



--DECLARE @BsellBankName nvarchar(100)
--DECLARE @AccBankName nvarchar(100)
--SET
--@BsellBankName=(select acc.Config.BsellBankNames from acc.Config)

--SET @AccBankName=(select acc.Config.AccBankNameOnLastYear from acc.Config)


--EXEC('UPDATE ['+@BsellBankName+'].[dbo].[config] SET AccountDBName='''+@AccBankName+'''')

------Begin Create Synonym
--IF  EXISTS(SELECT * FROM sys.synonyms where name='CustomersGroup')
--EXEC('DROP synonym [Acc].[CustomersGroup]')
--EXEC('create synonym [Acc].[CustomersGroup] for ['+@BsellBankName+'].[dbo].[CustomersGroup]')

--IF  EXISTS(SELECT * FROM sys.synonyms where name='Customers')
--EXEC('DROP synonym [Acc].[Customers]')
--EXEC('create synonym [Acc].[Customers] for ['+@BsellBankName+'].[dbo].[Customers]')
------End Create Synonym

--m.kahdooei 94/01/19



BEGIN TRY
    IF NOT EXISTS (
        SELECT 1 
        FROM sys.default_constraints 
        WHERE name = 'DF_Documents_CashType'
    )
    BEGIN
        IF NOT EXISTS (
            SELECT 1
            FROM sys.columns c
            INNER JOIN sys.default_constraints dc 
                ON c.default_object_id = dc.object_id
            WHERE c.object_id = OBJECT_ID('Acc.Documents')
              AND c.name = 'CashType'
        )
        BEGIN
            ALTER TABLE Acc.Documents 
            ADD CONSTRAINT DF_Documents_CashType 
            DEFAULT (1) FOR CashType;
        END
    END
END TRY
BEGIN CATCH
   
END CATCH

update Config set LinkServerName=@LinkServerName
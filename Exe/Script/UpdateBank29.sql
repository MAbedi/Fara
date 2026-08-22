 ----   UpdateBank 29   1405/05/20  
SET NOCOUNT ON
-------------------------------------------------------------------------------------------------------------------------------------------------------------
DECLARE @filename NVARCHAR(256);
DECLARE @db_name NVARCHAR(256);

-- گرفتن نام دیتابیس
SELECT @db_name = DB_NAME();

-- گرفتن مسیر فایل .mdf و تبدیل به .ndf
SELECT @filename = filename FROM sys.sysfiles WHERE fileid = 1;
SET @filename = REPLACE(@filename, '.mdf', '.ndf');

-- بررسی وجود فایل‌گروه
IF NOT EXISTS (SELECT * FROM sys.filegroups WHERE name = N'Fara_Files')
BEGIN
    EXEC('ALTER DATABASE [' + @db_name + '] ADD FILEGROUP Fara_Files; ');
END;

-- بررسی وجود فایل در فایل‌گروه
IF NOT EXISTS (SELECT * FROM sys.database_files WHERE name = N'Fara_Files')
BEGIN
    EXEC('ALTER DATABASE [' + @db_name + '] ADD FILE (  NAME = N''Fara_Files'',  FILENAME = ''' + @filename + '''        ) TO FILEGROUP Fara_Files; ');
END;


--IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.EntityImages') AND type = 'U')
--    DROP TABLE dbo.EntityImages;

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.EntityImages') AND type = 'U')
BEGIN
    CREATE TABLE dbo.EntityImages (
        ID BIGINT IDENTITY(1,1),
        EntityType NVARCHAR(50) NOT NULL,
        EntityID NVARCHAR(100) NOT NULL,
        ImageType NVARCHAR(20) NOT NULL,
        ImageData VARBINARY(MAX) NULL,
        FileName1 NVARCHAR(255) NULL,
        FileSize INT NULL,
        CreatedAt DATETIME DEFAULT GETDATE(), -- تغییر به DATETIME
        CONSTRAINT PK_EntityImages PRIMARY KEY CLUSTERED (ID ASC)
    ) ON [Fara_Files];

    CREATE NONCLUSTERED INDEX IX_EntityImages_EntityType_EntityID
    ON dbo.EntityImages (EntityType, EntityID);

    ALTER TABLE dbo.EntityImages
    ADD CONSTRAINT CHK_FileSize CHECK (FileSize <= 10485760);

    EXEC sys.sp_addextendedproperty 
        @name=N'MS_Description', 
        @value=N'Entity Types: (Customers, Document, Receipts, Customer, Check, StuffCoding)', 
        @level0type=N'SCHEMA', @level0name=N'dbo', 
        @level1type=N'TABLE', @level1name=N'EntityImages', 
        @level2type=N'COLUMN', @level2name=N'EntityType';

    EXEC sys.sp_addextendedproperty 
        @name=N'MS_Description', 
        @value=N'Image Types: (JPG, PNG, PDF, BMP, TXT, etc.)', 
        @level0type=N'SCHEMA', @level0name=N'dbo', 
        @level1type=N'TABLE', @level1name=N'EntityImages', 
        @level2type=N'COLUMN', @level2name=N'ImageType';
END;


--IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.EntityImagesMigrationLog') AND type = 'U')
--    DROP TABLE dbo.EntityImagesMigrationLog;

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.EntityImagesMigrationLog') AND type = 'U')
CREATE TABLE dbo.EntityImagesMigrationLog (
    ID BIGINT IDENTITY(1,1),
    ZipFile NVARCHAR(255),
    FileName1 NVARCHAR(255),
    Status NVARCHAR(50),
    ErrorMessage NVARCHAR(MAX),
    LogTime DATETIME DEFAULT GETDATE(), -- تغییر به DATETIME
    CONSTRAINT PK_EntityImagesMigrationLog PRIMARY KEY (ID)
);

-------------------------------------------------------------------------------------------------------------------------------------------------------------
IF NOT EXISTS (
		SELECT *
		FROM SYSOBJECTS
		WHERE id = object_id(N'Util.UserSessions')
			AND OBJECTPROPERTY(id, N'IsUserTable') = 1
		)
BEGIN
	CREATE TABLE Util.UserSessions (
		SessionID UNIQUEIDENTIFIER PRIMARY KEY
		,UserID INT
		,UserName NVARCHAR(100)
		,SubSystem NVARCHAR(100)
		,LoginTime DATETIME
		,LogoutTime DATETIME NULL
		,DurationMinutes INT NULL
		,MachineName NVARCHAR(100)
		,IPAddress NVARCHAR(50)
		)
END

IF NOT EXISTS (
		SELECT *
		FROM SYSOBJECTS
		WHERE id = object_id(N'Util.UserActivities')
			AND OBJECTPROPERTY(id, N'IsUserTable') = 1
		)
BEGIN
	CREATE TABLE Util.UserActivities (
		ActivityID INT IDENTITY PRIMARY KEY
		,SessionID UNIQUEIDENTIFIER
		,FormName NVARCHAR(100)
		,OpenTime DATETIME
		,CloseTime DATETIME NULL
		,DurationSeconds INT NULL
		)
END

-------------------------------------------------------------------------------------------------------------------------------------------------------------

IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'[dbo].[fn_NormalizeNumber]') 
      AND type IN (N'FN', N'IF', N'TF')
)
BEGIN
    EXEC('
    CREATE FUNCTION dbo.fn_NormalizeNumber (@num FLOAT)
    RETURNS VARCHAR(40)
    AS
    BEGIN
        DECLARE @result VARCHAR(40);

        -- تبدیل به DECIMAL برای جلوگیری از Scientific Notation
        SET @result = RTRIM(CAST(CAST(@num AS DECIMAL(38,10)) AS VARCHAR(40)));

        -- حذف صفرهای انتهایی
        WHILE RIGHT(@result,1) = ''0''
            SET @result = LEFT(@result, LEN(@result)-1);

        -- اگر آخرش ممیز موند، حذفش کن
        IF RIGHT(@result,1) = ''.''
            SET @result = LEFT(@result, LEN(@result)-1);

        RETURN @result;
    END
    ')
END


IF EXISTS ( SELECT 1 FROM sys.indexes WHERE name = 'IX_Recipts_Aid_MakeDocuments_Recipt1' AND object_id = OBJECT_ID('dbo.Recipts') ) 
 DROP INDEX IX_Recipts_Aid_MakeDocuments_Recipt1 ON dbo.Recipts
  
IF EXISTS ( SELECT 1 FROM sys.indexes WHERE name = 'IX_Recipts_Aid_MakeDocuments_Recipt2' AND object_id = OBJECT_ID('dbo.Recipts') ) 
 DROP INDEX IX_Recipts_Aid_MakeDocuments_Recipt2 ON dbo.Recipts

IF EXISTS ( SELECT 1 FROM sys.indexes WHERE name = 'IX_Recipts_Aid_MakeDocuments_Recipt3' AND object_id = OBJECT_ID('dbo.Recipts') ) 
 DROP INDEX IX_Recipts_Aid_MakeDocuments_Recipt3 ON dbo.Recipts

IF EXISTS ( SELECT 1 FROM sys.indexes WHERE name = 'IX_MakeDoc_Recipts1' AND object_id = OBJECT_ID('dbo.Recipts') ) 
 DROP INDEX IX_MakeDoc_Recipts1 ON dbo.Recipts

IF EXISTS ( SELECT 1 FROM sys.indexes WHERE name = 'IX_MakeDoc_Recipts2' AND object_id = OBJECT_ID('dbo.Recipts') ) 
 DROP INDEX IX_MakeDoc_Recipts2 ON dbo.Recipts

IF EXISTS ( SELECT 1 FROM sys.indexes WHERE name = 'IX_MakeDoc_Recipts3' AND object_id = OBJECT_ID('dbo.Recipts') ) 
 DROP INDEX IX_MakeDoc_Recipts3 ON dbo.Recipts

IF EXISTS ( SELECT 1 FROM sys.indexes WHERE name = 'IX_Recipts4' AND object_id = OBJECT_ID('dbo.Recipts') ) 
 DROP INDEX IX_Recipts4 ON dbo.Recipts

IF EXISTS ( SELECT 1 FROM sys.indexes WHERE name = 'IX_rEC' AND object_id = OBJECT_ID('dbo.Recipts') ) 
 DROP INDEX IX_rEC ON dbo.Recipts

IF EXISTS ( SELECT 1 FROM sys.indexes WHERE name = 'IX_Recipts_AccountBalance2' AND object_id = OBJECT_ID('dbo.Recipts') ) 
 DROP INDEX IX_Recipts_AccountBalance2 ON dbo.Recipts

IF EXISTS ( SELECT 1 FROM sys.indexes WHERE name = 'Recipts_2' AND object_id = OBJECT_ID('dbo.Recipts') ) 
 DROP INDEX Recipts_2 ON dbo.Recipts

IF EXISTS ( SELECT 1 FROM sys.indexes WHERE name = 'IX_MakeDoc_ReciptItems1' AND object_id = OBJECT_ID('dbo.ReciptItems') ) 
 DROP INDEX IX_MakeDoc_ReciptItems1 ON dbo.ReciptItems

IF EXISTS ( SELECT 1 FROM sys.indexes WHERE name = 'IX_ReciptItems_StuffCode' AND object_id = OBJECT_ID('dbo.ReciptItems') ) 
 DROP INDEX IX_ReciptItems_StuffCode ON dbo.ReciptItems


IF EXISTS ( SELECT 1 FROM sys.indexes WHERE name = 'IX_Forms4Doc' AND object_id = OBJECT_ID('dbo.Forms') ) 
 DROP INDEX IX_Forms4Doc ON dbo.Forms

IF EXISTS ( SELECT 1 FROM sys.indexes WHERE name = 'IX_Forms_FormType' AND object_id = OBJECT_ID('dbo.Forms') ) 
 DROP INDEX IX_Forms_FormType ON dbo.Forms

IF EXISTS ( SELECT 1 FROM sys.indexes WHERE name = 'IX_Recipts_FormType_FormNumber' AND object_id = OBJECT_ID('dbo.Forms') ) 
 DROP INDEX IX_Recipts_FormType_FormNumber ON dbo.Forms

IF EXISTS ( SELECT 1 FROM sys.indexes WHERE name = 'IX_Forms_FormType_CustomerID2' AND object_id = OBJECT_ID('dbo.Forms') ) 
 DROP INDEX IX_Forms_FormType_CustomerID2 ON dbo.Forms

  IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
    WHERE   (TABLE_NAME = N'FormItems') AND (COLUMN_NAME = N'CheckNumber') AND (DATA_TYPE = N'char')AND (CHARACTER_MAXIMUM_LENGTH = 20))
	begin
      ALTER TABLE FormItems ALTER COLUMN CheckNumber char(20)

  end

/*
select AidInfoNo  from Forms where len(AidInfoNo)>10  order by len(AidInfoNo) desc
select AidInfoNo  from FormItems where len(AidInfoNo)>10  order by len(AidInfoNo) desc
select AidNumber  from Tozin where len(AidNumber)>10  order by len(AidNumber) desc
select AidNumber  from Recipts where len(AidNumber)>10  order by len(AidNumber) desc
select AidNumber  from ReciptItems where len(AidNumber)>10  order by len(AidNumber) desc
*/

  IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
    WHERE   (TABLE_NAME = N'Forms') AND (COLUMN_NAME = N'AidInfoNo') AND (DATA_TYPE = N'varchar')AND (CHARACTER_MAXIMUM_LENGTH = 40))
	begin
	  ALTER TABLE Forms ALTER COLUMN AidInfoNo DECIMAL(29,10)
      ALTER TABLE Forms ALTER COLUMN AidInfoNo varchar(40)

	  UPDATE Forms SET AidInfoNo = dbo.fn_NormalizeNumber(AidInfoNo);


end

  IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
    WHERE   (TABLE_NAME = N'FormItems') AND (COLUMN_NAME = N'AidInfoNo') AND (DATA_TYPE = N'varchar')AND (CHARACTER_MAXIMUM_LENGTH = 40))
	begin
	  ALTER TABLE FormItems ALTER COLUMN AidInfoNo DECIMAL(29,10)
      ALTER TABLE FormItems ALTER COLUMN AidInfoNo varchar(40)
	  UPDATE FormItems SET AidInfoNo = dbo.fn_NormalizeNumber(AidInfoNo);
end

  IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
    WHERE   (TABLE_NAME = N'Tozin') AND (COLUMN_NAME = N'AidNumber') AND (DATA_TYPE = N'varchar')AND (CHARACTER_MAXIMUM_LENGTH = 40))
	begin
	  ALTER TABLE Tozin ALTER COLUMN AidNumber DECIMAL(29,10)
      ALTER TABLE Tozin ALTER COLUMN AidNumber varchar(40)
	  UPDATE Tozin SET AidNumber = dbo.fn_NormalizeNumber(AidNumber);
end


--select AidNumber from Recipts order by len(AidNumber) desc
  IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
    WHERE   (TABLE_NAME = N'Recipts') AND (COLUMN_NAME = N'AidNumber') AND (DATA_TYPE = N'varchar')AND (CHARACTER_MAXIMUM_LENGTH = 40))
	begin
	  ALTER TABLE Recipts ALTER COLUMN AidNumber DECIMAL(29,10)
      ALTER TABLE Recipts ALTER COLUMN AidNumber varchar(40) 
	  UPDATE Recipts SET AidNumber = dbo.fn_NormalizeNumber(AidNumber);
end

  IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
    WHERE   (TABLE_NAME = N'ReciptItems') AND (COLUMN_NAME = N'AidNumber') AND (DATA_TYPE = N'varchar')AND (CHARACTER_MAXIMUM_LENGTH = 40))
	begin
	  ALTER TABLE ReciptItems ALTER COLUMN AidNumber DECIMAL(29,10)
      ALTER TABLE ReciptItems ALTER COLUMN AidNumber varchar(40)
	  UPDATE ReciptItems SET AidNumber = dbo.fn_NormalizeNumber(AidNumber);
end




declare @LinkServerName varchar(500)
select @LinkServerName=c.LinkServerName from Config c
update Config set LinkServerName=''
IF OBJECT_ID ('TR_UpdateAcconting', 'TR') IS NOT NULL 
ALTER TABLE Customers DISABLE TRIGGER [TR_UpdateAcconting]
IF OBJECT_ID ('TR_DeleteAcconting', 'TR') IS NOT NULL 
ALTER TABLE Customers DISABLE TRIGGER [TR_DeleteAcconting]

UPDATE       Customers
SET                OperatorID = NULL
WHERE        (CustID = 0) AND (OperatorID <> NULL)

DECLARE @databasename VARCHAR(300)
--DECLARE @COMPATIBILITY_LEVEL int
SELECT @databasename=db_name() 
--SELECT @COMPATIBILITY_LEVEL=COMPATIBILITY_LEVEL FROM sys.databases WHERE name = 'master'
--IF (SELECT COMPATIBILITY_LEVEL FROM sys.databases WHERE name = @databasename)<@COMPATIBILITY_LEVEL
--EXEC ( 'ALTER DATABASE '+@databasename  +' SET COMPATIBILITY_LEVEL = '+@COMPATIBILITY_LEVEL)
----- SELECT COMPATIBILITY_LEVEL FROM sys.databases WHERE name =db_name() 

EXEC ( 'ALTER DATABASE '+@databasename  +' SET AUTO_SHRINK OFF WITH NO_WAIT ')


  if ( COLUMNPROPERTY( OBJECT_ID('Currencies'),'CurrencyCode','IsRowGuidCol')is  null )  
  ALTER TABLE Currencies ADD CurrencyCode varchar(5)

  if ( COLUMNPROPERTY( OBJECT_ID('Currencies'),'CurrencySymbol','IsRowGuidCol')is  null )  
  ALTER TABLE Currencies ADD CurrencySymbol varchar(5)
  	
if ( COLUMNPROPERTY( OBJECT_ID('Fitful'),'ID','IsRowGuidCol')is  null )  
ALTER TABLE Fitful ADD ID Bigint NOT NULL CONSTRAINT DF_Fitful_ID   DEFAULT(0)



IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE  (TABLE_NAME = N'ReciptItems') AND ((COLUMN_NAME = N'InputEntity')OR(COLUMN_NAME = N'OutputEntity')
                                        OR(COLUMN_NAME = N'InputWeight')OR(COLUMN_NAME = N'OutputtWeight')) AND (DATA_TYPE = N'decimal') AND (NUMERIC_PRECISION = 38))
begin

IF  EXISTS (SELECT 1 from sysobjects where name = 'DF_ReciptItems_InputEntity')
 ALTER TABLE ReciptItems DROP CONSTRAINT DF_ReciptItems_InputEntity

IF  EXISTS (SELECT 1 from sysobjects where name = 'DF_ReciptItems_OutputEntity')
 ALTER TABLE ReciptItems DROP CONSTRAINT DF_ReciptItems_OutputEntity

IF  EXISTS (SELECT 1 from sysobjects where name = 'DF_ReciptItems_InputWeight')
 ALTER TABLE ReciptItems DROP CONSTRAINT DF_ReciptItems_InputWeight

IF  EXISTS (SELECT 1 from sysobjects where name = 'DF_ReciptItems_OutputWeight')
 ALTER TABLE ReciptItems DROP CONSTRAINT DF_ReciptItems_OutputWeight

if not( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'StandardConsumption','IsRowGuidCol')is  null )  
 ALTER TABLE ReciptItems drop COLUMN  StandardConsumption  

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'ReciptItemSum_Darayi') AND OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW ReciptItemSum_Darayi

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'ReciptItemSum') AND OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW ReciptItemSum

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'VU_aidrecal') AND OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW VU_aidrecal

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_MakeDoc_ReciptItems1'))
DROP INDEX IX_MakeDoc_ReciptItems1 ON ReciptItems

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_ReciptItems_StuffCode'))
DROP INDEX IX_ReciptItems_StuffCode ON ReciptItems

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_ReciptItems_YearID'))
DROP INDEX IX_ReciptItems_YearID ON ReciptItems

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_ReciptItems4Form'))
DROP INDEX IX_ReciptItems4Form ON ReciptItems

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_ReciptItems_preReciptItemID_ServerID_YearID'))
DROP INDEX IX_ReciptItems_preReciptItemID_ServerID_YearID ON ReciptItems

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_ReciptItems_YearID_StuffCode'))
DROP INDEX IX_ReciptItems_YearID_StuffCode ON ReciptItems



ALTER TABLE ReciptItems ALTER COLUMN StandardConsumptionCo Decimal(38,8) 
ALTER TABLE ReciptItems ALTER COLUMN InputEntity Decimal(38,8) NOT NULL 
ALTER TABLE ReciptItems ALTER COLUMN OutputEntity Decimal(38,8) NOT NULL 
ALTER TABLE ReciptItems ALTER COLUMN InputWeight Decimal(38,8) NOT NULL 
ALTER TABLE ReciptItems ALTER COLUMN OutputWeight Decimal(38,8) NOT NULL 


if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'StandardConsumption','IsRowGuidCol')is  null )  
 ALTER TABLE ReciptItems ADD StandardConsumption  AS (ROUND(ISNULL(StandardConsumptionCo,0)*(InputEntity + OutputEntity),0))



end

IF not EXISTS (SELECT 1 from sysobjects where name = 'DF_ReciptItems_InputEntity')
ALTER TABLE ReciptItems ADD CONSTRAINT DF_ReciptItems_InputEntity DEFAULT 0 FOR InputEntity
IF not EXISTS (SELECT 1 from sysobjects where name = 'DF_ReciptItems_OutputEntity')
ALTER TABLE ReciptItems ADD CONSTRAINT DF_ReciptItems_OutputEntity DEFAULT 0 FOR OutputEntity
IF not EXISTS (SELECT 1 from sysobjects where name = 'DF_ReciptItems_InputWeight')
ALTER TABLE ReciptItems ADD CONSTRAINT DF_ReciptItems_InputWeight DEFAULT 0 FOR InputWeight
IF not EXISTS (SELECT 1 from sysobjects where name = 'DF_ReciptItems_OutputWeight')
ALTER TABLE ReciptItems ADD CONSTRAINT DF_ReciptItems_OutputWeight DEFAULT 0 FOR OutputWeight



IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE       (TABLE_NAME = N'CustomersAlternative') AND (COLUMN_NAME = N'AlternativeID') AND (DATA_TYPE='CHAR') AND (CHARACTER_MAXIMUM_LENGTH =24 ))
begin
 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_CustomersAlternative' AND type = 'K')
 ALTER TABLE CustomersAlternative	DROP CONSTRAINT PK_CustomersAlternative

 ALTER TABLE  CustomersAlternative ALTER COLUMN AlternativeID CHAR(24) not null
end



IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE       (TABLE_NAME = N'ReciptTypes1') AND (COLUMN_NAME = N'AutoCorrelateCo') AND (DATA_TYPE='bigint') )
begin

DECLARE @Query varchar(8000)=''
(SELECT  @Query=@Query+' ALTER TABLE ReciptTypes1 DROP CONSTRAINT '+ name FROM sysobjects
        WHERE [type] = 'D' --AND parent_object_id = OBJECT_ID('ReciptTypes1') 
             AND SUBSTRING(name,0,23)='DF__ReciptTyp__AutoC__')
		 
SET @Query=@Query+'
 ALTER TABLE ReciptTypes1 ALTER COLUMN AutoCorrelateCo BIGINT  NOT NULL'
--print @Query	
Exec (@Query) 

end

IF NOT EXISTS (SELECT top 1 name FROM sysobjects
        WHERE [type] = 'D' 
             AND name='DF_ReciptTypes1_AutoCorrelateCo')
ALTER TABLE ReciptTypes1 ADD CONSTRAINT DF_ReciptTypes1_AutoCorrelateCo DEFAULT('0') FOR AutoCorrelateCo


IF NOT EXISTS (SELECT top 1 name FROM sysobjects
        WHERE [type] = 'D' 
             AND name='DF_ReciptTypes1_AutoCorrelate')
ALTER TABLE ReciptTypes1 ADD CONSTRAINT DF_ReciptTypes1_AutoCorrelate DEFAULT('0') FOR AutoCorrelate


IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_CustomersAlternative' AND type = 'K')
 ALTER TABLE CustomersAlternative ADD CONSTRAINT PK_CustomersAlternative PRIMARY KEY CLUSTERED (CustID ASC,	AlternativeID ASC) ON [PRIMARY]
-------------------------------------------------------------------------------------------------------------------------------------------------------------


IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE       (TABLE_NAME = N'StoresAlternative') AND (COLUMN_NAME = N'AlternativeID') AND (DATA_TYPE='CHAR') AND (CHARACTER_MAXIMUM_LENGTH =24 ))
begin
 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_StoresAlternative' AND type = 'K')
 ALTER TABLE StoresAlternative	DROP CONSTRAINT PK_StoresAlternative

 ALTER TABLE  StoresAlternative ALTER COLUMN AlternativeID CHAR(24) not null
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_StoresAlternative' AND type = 'K')
 ALTER TABLE StoresAlternative ADD CONSTRAINT PK_StoresAlternative PRIMARY KEY CLUSTERED (StoreID ASC,	AlternativeID ASC) ON [PRIMARY]
-------------------------------------------------------------------------------------------------------------------------------------------------------------
IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE       (TABLE_NAME = N'StuffCodingItems') AND (COLUMN_NAME = N'AlternativeStuffCode') AND (DATA_TYPE='CHAR') AND (CHARACTER_MAXIMUM_LENGTH =24 ))
begin
 ALTER TABLE  StuffCodingItems ALTER COLUMN AlternativeStuffCode CHAR(24)  null
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------

IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE       (TABLE_NAME = N'Customers') AND (COLUMN_NAME = N'EconomicNumber') AND (DATA_TYPE='varchar') AND (CHARACTER_MAXIMUM_LENGTH =20 ))
   ALTER TABLE  Customers ALTER COLUMN EconomicNumber VARCHAR(20)

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'Buyerbbc','IsRowGuidCol')is  null )  
ALTER TABLE Customers ADD Buyerbbc varchar(10) 

------------------------------------------------------------------------------BankNationals-------------------------------------------------------------------------------------------------
 IF NOT EXISTS(SELECT * FROM SYSOBJECTS where id = object_id(N'BankNationals') and OBJECTPROPERTY(id, N'IsUserTable') = 1 )
CREATE TABLE BankNationals(
	BankNationalID varchar(20) NOT NULL,
	BankName	   varchar(70) NOT NULL,
	    CONSTRAINT PK_BankNationals PRIMARY KEY CLUSTERED (	BankNationalID ASC) ON [PRIMARY]) ON [PRIMARY]

if (select count(*) from BankNationals) =0
	INSERT    	INTO              BankNationals( BankName,BankNationalID)
	VALUES ('بانک آینده','10320894878'),('بانک اقتصاد نوین','10102194601'),('بانک انصار','10320255230'),('بانک ایران زمین','10320503079'),('بانک پارسیان','10102203401'),
	('بانک پاسارگاد','10102946956'),('بانک تجارت','10100834460'),('بانک توسعه تعاون','10104021538'),('بانک توسعه صادرات','10101313616'),('بانک حکمت ایرانیان','10100451588'),
	('بانک دی','10320237706'),('بانک رفاه','10100334245'),('بانک سامان','10101972093'),('بانک سپه','10862064732'),('بانک سرمایه','10103798457'),('بانک سینا','10860246171'),
	('بانک شهر','10103886081'),('بانک صادرات','10861736062'),('بانک صنعت و معدن','10100841160'),('بانک قرض الحسنه مهر ایران','10103509868'),('بانک قوامین','10320484367'),
	('بانک کارآفرین','10102006226'),('بانک کشاورزی','10100830184'),('بانک گردشگری','10320435268'),('بانک مرکزی جمهوری اسلامی ایران','14002207985'),('بانک مسکن','10100830792'),
	('بانک ملت','10100834967'),('بانک ملی ایران','10861677542'),('تعاونی اعتبار آزاد ثامن الائمه (ع)','10102236558'),('بانک مشترک ایران و ونزوئلا','10320162713'),('بانک قرض الحسنه رسالت','10320730277'),
	('موسسه اعتباری کوثر مرکزی','10320849582'),('فیوچر بانک (المستقبل)','14000223177'),('بانک تجارتی ایران و اروپا','14002856719'),('بانک استاندارد چارتر','10100179036'),
	('موسسه اعتباری غیر بانکی کاسپین','14005432871'),('موسسه اعتباری غیر بانکی ملل','10380252343'),('موسسه اعتباری غیر بانکی نور','14004932504'),('پست بانک ایران','10101702747' )	

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'BankNationalID','IsRowGuidCol')is null )
 ALTER TABLE Customers ADD BankNationalID varchar(20)  null
--IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Customers_BankNationals_BankNationalID' AND type = 'F')
--ALTER TABLE Customers WITH CHECK ADD CONSTRAINT FK_Customers_BankNationals_BankNationalID FOREIGN KEY (BankNationalID)  REFERENCES BankNationals(BankNationalID) --ON UPDATE CASCADE 

UPDATE  Customers 
set BankNationalID = B.BankNationalID 
FROM            Customers INNER JOIN CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID LEFT JOIN
                          BankNationals AS B ON  Customers.CustName like '%'+LTRIM(RTRIM(REPLACE( B.BankName,'بانک ','')))+'%'
WHERE        (CustomersGroup.GroupType = 1)AND ISNULL(Customers.BankNationalID,'')='' AND B.BankNationalID<>''

------------------------------------------------------------------------------BankNationals-------------------------------------------------------------------------------------------------
if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'BlackList','IsRowGuidCol')is null )
 ALTER TABLE Customers ADD BlackList bit  NOT NULL CONSTRAINT DF_Customers_BlackList   DEFAULT(0)

 if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'BaleChatID','IsRowGuidCol')is null )
  ALTER TABLE Customers ADD BaleChatID  char(30)

 if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'TaxMemoryUniqueId','IsRowGuidCol')is null )
  ALTER TABLE Customers ADD TaxMemoryUniqueId  char(6)

 if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'FarmerUniqueCode','IsRowGuidCol')is null )
  ALTER TABLE Customers ADD FarmerUniqueCode  varchar(30)

  

IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE       (TABLE_NAME = N'Config') AND (COLUMN_NAME = N'EconomicNumber') AND (DATA_TYPE='varchar') AND (CHARACTER_MAXIMUM_LENGTH =20 ))
   ALTER TABLE  Config ALTER COLUMN EconomicNumber VARCHAR(20)



IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE         (TABLE_NAME = N'ReciptItems') AND (COLUMN_NAME = N'TotalInputPrice') AND (DATA_TYPE='decimal') AND (NUMERIC_PRECISION =38 ))
begin
------------------  TotalInputPrice  TotalOutputPrice TotallSellPrice   ---------------------------------------
IF  EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_ReciptItems_TotalInputPrice' AND type = 'D') 
ALTER TABLE dbo.ReciptItems DROP  CONSTRAINT DF_ReciptItems_TotalInputPrice  

IF  EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_ReciptItems_TotalOutputPrice' AND type = 'D') 
ALTER TABLE dbo.ReciptItems DROP  CONSTRAINT DF_ReciptItems_TotalOutputPrice  

IF  EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_ReciptItems_TotallSellPrice' AND type = 'D') 
ALTER TABLE dbo.ReciptItems DROP  CONSTRAINT DF_ReciptItems_TotallSellPrice  


IF EXISTS (SELECT * FROM  sysobjects WHERE id = object_id(N'ReciptItemSum_Darayi') AND OBJECTPROPERTY(id, N'IsView') = 1)
drop VIEW  ReciptItemSum_Darayi

IF EXISTS (SELECT * FROM  sysobjects WHERE id = object_id(N'ReciptItemSum') AND OBJECTPROPERTY(id, N'IsView') = 1)
drop VIEW  ReciptItemSum

IF EXISTS (SELECT * FROM  sysobjects WHERE id = object_id(N'VU_aidrecal') AND OBJECTPROPERTY(id, N'IsView') = 1)
drop VIEW  VU_aidrecal

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_ReciptItems_YearID'))
drop index IX_ReciptItems_YearID on ReciptItems

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_MakeDoc_ReciptItems1'))
drop index IX_MakeDoc_ReciptItems1 on ReciptItems

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_ReciptItems_StuffCode'))
drop index IX_ReciptItems_StuffCode on ReciptItems

 ALTER TABLE ReciptItems	ALTER COLUMN TotalInputPrice decimal(38,0) NOT NULL
 ALTER TABLE ReciptItems	ALTER COLUMN TotalOutputPrice decimal(38,0) NOT NULL
 ALTER TABLE ReciptItems	ALTER COLUMN TotallSellPrice decimal(38,0) NOT NULL
 
 ALTER TABLE dbo.ReciptItems ADD  CONSTRAINT DF_ReciptItems_TotalInputPrice   DEFAULT (0) FOR TotalInputPrice
 ALTER TABLE dbo.ReciptItems ADD  CONSTRAINT DF_ReciptItems_TotalOutputPrice  DEFAULT (0) FOR TotalOutputPrice
 ALTER TABLE dbo.ReciptItems ADD  CONSTRAINT DF_ReciptItems_TotallSellPrice  DEFAULT (0) FOR TotallSellPrice
 ------------------  TotalInputPrice  TotalOutputPrice TotallSellPrice   ---------------------------------------
 end


 IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE         (TABLE_NAME = N'ReciptItems') AND (COLUMN_NAME = N'UnitSellPrice') AND (DATA_TYPE='decimal') AND (NUMERIC_PRECISION =38 ))
begin
IF  EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_ReciptItems_UnitSellPrice' AND type = 'D') 
ALTER TABLE dbo.ReciptItems DROP  CONSTRAINT DF_ReciptItems_UnitSellPrice  

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_ReciptItems_YearID_StuffCode'))
drop index IX_ReciptItems_YearID_StuffCode on ReciptItems


 ALTER TABLE ReciptItems	ALTER COLUMN UnitSellPrice decimal(38,8) NOT NULL

ALTER TABLE dbo.ReciptItems ADD  CONSTRAINT DF_ReciptItems_UnitSellPrice   DEFAULT (0) FOR UnitSellPrice
 
 end


   

 if (SELECT COUNT(*) FROM Util.Analyze  WHERE TableKind = 20 )<27
 begin
  DELETE Util.Analyze WHERE TableKind = 20
 INSERT INTO Util.Analyze
 (ID,TableKind, CaptionName, FieldName, TableName, TopicName, AliasName, JoinFieldName)
 SELECT 1,20,'انبار','R.StoreID','Stores','c_StoreName',NULL,'n_StoreID'
 union all
 SELECT 2,20,'گروه‏کالا','StuffCoding.GroupID','StuffGroups','GroupName',NULL,'GroupID'
 union all
 SELECT 4,20,'کدکالا','R.StuffCode','StuffCoding','c_StuffName',NULL,'c_StuffCode'
 union all
 SELECT 5,20,'گروه‏مشتري1','C1.CustomerGrpID','CustomersGroup','CustomerGrpName','GC1','CustomerGrpID'
 union all
 SELECT 6,20,'گروه‏مشتري2','C2.CustomerGrpID','CustomersGroup','CustomerGrpName','GC2','CustomerGrpID'
 union all
 SELECT 7,20,'گروه‏مشتري3','C3.CustomerGrpID','CustomersGroup','CustomerGrpName','GC3','CustomerGrpID'
 union all
 SELECT 8,20,'گروه‏مشتري‏آيتم','CItem.CustomerGrpID','CustomersGroup','CustomerGrpName','GCItem','CustomerGrpID'
 union all
 SELECT 9,20,'مشتري1','R.PersonID1','Customers','CustName','C1','CustID'
 union all
 SELECT 10,20,'مشتري2','R.PersonID2','Customers','CustName','C2','CustID'
 union all
 SELECT 11,20,'مشتري3','R.PersonID3','Customers','CustName','C3','CustID'
 union all
 SELECT 12,20,'کدمشتريِ‏آيتم','R.PersonID1D','Customers','CustName','CItem','CustID'
 union all
 SELECT 13,20,'نوع‏اطلاعات','R.SecondType','LookUps','Name',NULL,'LookUpID'
 union all
 SELECT 14,20,'‏محل‏مصرف','R.UseUnitID','UseUnits','UseUnitName','U1','UseUnitID'
 union all
 SELECT 15,20,'محل‏مصرف‏آيتم','R.UseUnitID','UseUnits','UseUnitName','U2','UseUnitID'
 union all
 SELECT 16,20,'مدل‏کالا','R.ProductModel','LookUps','Name',NULL,'LookUpID'
 union all
 SELECT 17,20,'سال‏مالي','R.YearID','Util.MaliYear','YearID','Y','YearID'
 union all
 SELECT 18,20,'ماه','SUBSTRING(R.ReciptDate, 6, 2)','Months','Name','M','MonthID'
 union all
 SELECT 19,20,'عنوان فرم','R.ReciptType','ReciptTypes','ReciptCaption','RC','ReciptType'
 union all
 SELECT 20,	20,'اموالی','R.productCode','	StuffCoding','c_StuffName','S','c_StuffCode'
 union all
 SELECT 21,20,'انبار2(انتقالی)','R.StoreID2','Stores','c_StoreName','Stores2','n_StoreID'
 union all
 SELECT 22,	20	,'شهر'	,'C1.CityCode','Zone','Shahr','Z','ShahrCode'
 union all
 SELECT 23,	20,	'استان'	,'C1.StateCode','Zone','Ostan','Z','OstanCode'
union all
 SELECT 24,	20,	'مركز فروش'	,'R.SellsEmporium','SellsEmporiums','SellsEmporiumName','SE','SellsEmporium'
 union all
 SELECT 25,	20,	'کد ملی'	,'R.PersonID1','Customers','NationalID','CN','CustID'
 union all
 SELECT 26,	20,	'آدرس'	,'R.PersonID1','Customers','address','CA','CustID'
 union all
 SELECT 27,	20,	'واحد'	,'n_UnitCode','Units','unitname','U1','UnitCode'
 union all
 SELECT 28,	20,	'عایق'	,'SecondTypeItem','LookUps','Name','LUI','LookUpID'	

 end
 							
								
								



 
 IF (( SELECT COUNT(*) FROM Util.Analyze WHERE TableKind = 21 ) = 0)
BEGIN
 INSERT INTO Util.Analyze(ID, TableKind, CaptionName, FieldName, TableName, TopicName, AliasName, JoinFieldName)
 SELECT 50, 21, 'پرسنل', 'Func.PersonId', 'dbo.Customers', 'CustName', 'CFP', 'CustID'
 UNION ALL
 SELECT 51, 21, 'محصول', 'Func.StuffId', 'dbo.StuffCoding', 'c_StuffName', 'SFS', 'c_StuffCode'
 UNION ALL
 SELECT 52, 21, 'خودرو', 'Func.MachineId', 'dbo.StuffCoding', 'c_StuffName', 'SFM', 'c_StuffCode'
 UNION ALL
 SELECT 53, 21, 'مزرعه', 'Func.EarthField', 'Agr.Earth', 'EarthDesc', NULL, 'EarthField'
 UNION ALL
 SELECT 54, 21, 'قطعه', 'Func.Gate', 'Agr.Earth', 'Gate', 'EFE', 'Gate'
 UNION ALL
 SELECT 55, 21, 'عملیات', 'Func.StuffCode2', 'dbo.StuffCoding', 'c_StuffName', 'SFS2', 'c_StuffCode'
 UNION ALL
 SELECT 56, 21, 'کارگاه', 'Func.WorkShopId', 'dbo.Customers', 'CustName', 'CFW', 'CustID'
 UNION ALL
 SELECT 57, 21, 'پرونده', 'Func.CaseId', 'dbo.Customers', 'CustName', 'CFC', 'CustID'
 UNION ALL
 SELECT 58, 21, 'ادوات', 'Func.StuffCode3', 'dbo.StuffCoding', 'c_StuffName', 'SFS3', 'c_StuffCode'
 UNION ALL
 SELECT 59, 21, 'سال‏مالي', 'SUBSTRING(Func.FunctionDate, 1, 2)', 'Util.MaliYear', 'YearID', 'YFF', 'YearID'
 UNION ALL
 SELECT 60, 21, 'ماه', 'SUBSTRING(Func.FunctionDate, 6, 2)', 'Tsh.Months', 'MonthName', 'MFF', 'MonthID'
 UNION ALL
 SELECT 61, 21, 'نوع‏کارکرد', 'Func.FunctionType', 'Tsh.FunctionType', 'FunctionTypeName', NULL, 'FunctionTypeId'
END

 IF (( SELECT COUNT(*) FROM Util.Analyze WHERE TableKind = 22 ) < 27)
BEGIN
 DELETE Util.Analyze WHERE TableKind = 22
 INSERT INTO Util.Analyze(ID, TableKind, CaptionName, FieldName, TableName, TopicName, AliasName, JoinFieldName)
 SELECT 70, 22,'گروه‏مشتري1','C1.CustomerGrpID','CustomersGroup','CustomerGrpName','GC1','CustomerGrpID'
 union all
 SELECT 71, 22,'گروه‏مشتري2','C2.CustomerGrpID','CustomersGroup','CustomerGrpName','GC2','CustomerGrpID'
 union all
 SELECT 72, 22,'گروه‏مشتري3','C3.CustomerGrpID','CustomersGroup','CustomerGrpName','GC3','CustomerGrpID'
 union all
 SELECT 73, 22,'گروه‏مشتري‏آيتم','CItem.CustomerGrpID','CustomersGroup','CustomerGrpName','FCItem','CustomerGrpID'
 union all
 SELECT 74, 22, N'مشتري1', N'Forms.CustomerID1', N'Customers', N'CustName', N'C1', N'CustID'
 UNION ALL
 SELECT 75, 22, N'مشتري2', N'Forms.CustomerID2', N'Customers', N'CustName', N'C2', N'CustID'
 UNION ALL
 SELECT 76, 22, N'مشتري3', N'Forms.CustomerID3', N'Customers', N'CustName', N'C3', N'CustID'
 UNION ALL
 SELECT 77, 22, N'مشتريِ‏آيتم', N'FormItems.CustomerID2', N'Customers', N'CustName', N'FCItem', N'CustID'
 UNION ALL
 SELECT 78, 22, N'مرکزفروش', N'Forms.SellsEmporium', N'SellsEmporiums', N'SellsEmporiumName', N'FS1', N'SellsEmporium'
 UNION ALL
 SELECT 79, 22, N'نحوه‏فروش', N'Forms.SellsMethod', N'SellsMethods', N'SellsMethodName', N'FS2', N'SellsMethod'
 UNION ALL
 SELECT 80, 22, N'نوع‏دریافت‏پرداخت', N'Forms.PayTypes', N'LookUps', N'Name', N'FP', N'LookUpID'
 UNION ALL
 SELECT 81, 22, N'موضوع‏دریافت‏پرداخت', N'Forms.TopicTypes', N'LookUps', N'Name', N'FT', N'LookUpID'
 UNION ALL
 SELECT 82, 22, N'ماه‏فرم', N'SUBSTRING(Forms.FormDate, 6, 2)', N'Months', N'Name', N'FM', N'MonthID'
 UNION ALL
 SELECT 83, 22, N'سال‏فرم', N'Forms.YearID', N'Util.MaliYear', N'YearID', N'FY', N'YearID'
 UNION ALL
 SELECT 84, 22, N'ماه‏سررسید', N'SUBSTRING(FormItems.CheckDate, 6, 2)', N'Months', N'Name', N'FSM', N'MonthID'
 UNION ALL
 SELECT 85, 22, N'سال‏سررسید', N'LEFT(FormItems.CheckDate, 2)', N'Util.MaliYear', N'YearID', N'FSY', N'YearID'
 UNION ALL
 SELECT 86, 22, N'نوع‏فرم', N'Forms.FormType', N'FormTypes', N'FormCaption', N'F', N'FormType'
 UNION ALL
 SELECT 87, 22, N'حساب', N'Forms.TopicCode', N'%W%.Acc.Categories', N'MoeenName_L1', N'FT1', N'TopicCode'
 UNION ALL
 SELECT 88, 22, N'تفصیلی', N'Forms.DetailCode', N'%W%.Acc.Details', N'DetailName_L1', N'FD', N'DetailCode'
 UNION ALL
 SELECT 89, 22, N'م‏ه1', N'Forms.CTopicCode', N'%W%.Acc.CenterTopics', N'CTopicName_L1', N'FCT1', N'CTopicCode'
 UNION ALL
 SELECT 90, 22, N'م‏ه2', N'Forms.CTopicCode2', N'%W%.Acc.CenterTopics2', N'CTopicName2_L1', N'FCT2', N'CTopicCode2'
 UNION ALL
 SELECT 91, 22, N'م‏ه3', N'Forms.CTopicCode3', N'%W%.Acc.CTopicCode3', N'CTopicName3_L1', N'FCT3', N'CTopicCode3'
 UNION ALL
 SELECT 92, 22, N'حساب‏آیتم', N'FormItems.TopicCode', N'%W%.Acc.Categories', N'MoeenName_L1', N'FIT1', N'TopicCode'
 UNION ALL
 SELECT 93, 22, N'تفصیلی‏آیتم', N'FormItems.DetailCode', N'%W%.Acc.Details', N'DetailName_L1', N'FID', N'DetailCode'
 UNION ALL
 SELECT 94, 22, N'م‏ه1آیتم', N'FormItems.CTopicCode', N'%W%.Acc.CenterTopics', N'CTopicName_L1', N'FICT1', N'CTopicCode'
 UNION ALL
 SELECT 95, 22, N'م‏ه2آیتم', N'FormItems.CTopicCode2', N'%W%.Acc.CenterTopics2', N'CTopicName2_L1', N'FICT2', N'CTopicCode2'
 UNION ALL
 SELECT 96, 22, N'م‏ه3آیتم', N'FormItems.CTopicCode3', N'%W%.Acc.CTopicCode3', N'CTopicName3_L1', N'FICT3', N'CTopicCode3' 
 UNION ALL
 SELECT 97, 22, N'مشتري4', N'Forms.CustomerID4', N'Customers', N'CustName', N'C4', N'CustID'
 
END



--delete Util.Analyze --------------------+++++++++++++++++++++++++++++++++++++++++==============================================


 IF (( SELECT COUNT(*) FROM Util.Analyze WHERE TableKind = 23 ) < 8)
BEGIN
 DELETE Util.Analyze WHERE TableKind = 23
 INSERT INTO Util.Analyze(ID, TableKind, CaptionName, FieldName, TableName, TopicName, AliasName, JoinFieldName)
 SELECT 101, 23, N'نوع دستور کار تعمیرات', N'M.MaintenanceKind', N'Machin.MaintenanceKinds', N'KindName', NULL, N'KindID'
 UNION ALL
 SELECT 102, 23, N'در خواست كننده', N'M.CustID1', N'Customers', N'CustName', N'C1', N'CustID'
 UNION ALL
 SELECT 103, 23, N'واحد تجهيزات(واحد سازماني)', N'M.CustID2', N'Customers', N'CustName', N'C2', N'CustID'
 UNION ALL
 SELECT 104, 23, N'مشتري3', N'M.CustID3', N'Customers', N'CustName', N'C3', N'CustID'
 UNION ALL
 SELECT 105, 23, N'ماشين آلات', N'M.StuffCode', N'StuffCoding', 'c_StuffName', 'S', 'c_StuffCode'
 UNION ALL
 SELECT 106, 23, N'تعمير كار', 'F.PersonId', 'Customers', 'CustName', 'CP', 'CustID'
 UNION ALL
 SELECT 107, 23, N'عملیات', 'F.StuffCode2', 'StuffCoding', 'c_StuffName', 'S2', 'c_StuffCode'
 UNION ALL
 SELECT 108, 23, N'ماه‏', N'SUBSTRING(F.FunctionDate, 6, 2)', N'Months', N'Name', NULL, N'MonthID'
 END

 IF (( SELECT COUNT(*) FROM Util.Analyze WHERE TableKind = 24 ) < 27)
BEGIN
 DELETE Util.Analyze WHERE TableKind = 24
 INSERT INTO Util.Analyze(ID, TableKind, CaptionName, FieldName, TableName, TopicName, AliasName, JoinFieldName)
 SELECT 121, 24, N'انبار', 'R.StoreID', 'Stores', 'c_StoreName', 's1', 'n_StoreID'
 UNION ALL
 SELECT 122, 24, N'انبار2', 'R.StoreID2', 'Stores', 'c_StoreName', 's2', 'n_StoreID'
 UNION ALL
 SELECT 123, 24, N'مركز فروش', 'R.SellsEmporium', 'SellsEmporiums', 'SellsEmporiumName', 'SE', 'SellsEmporium'
 UNION ALL
 SELECT 124, 24, N'نحوه فروش', 'R.SellsMethod', 'SellsMethods', 'SellsMethodName', 'SM', 'SellsMethod'
 UNION ALL
 SELECT 125, 24, N'مشتری1', 'R.PersonID1', 'Customers', 'CustName', 'C1', 'CustID'
 UNION ALL
 SELECT 126, 24, N'مشتری2', 'R.PersonID2', 'Customers', 'CustName', 'C2', 'CustID'
 UNION ALL
 SELECT 127, 24, N'مشتری3', 'R.PersonID3', 'Customers', 'CustName', 'C3', 'CustID'
 UNION ALL
 SELECT 128, 24, N'مشتری4', 'R.PersonID4', 'Customers', 'CustName', 'C4', 'CustID'
 UNION ALL
 SELECT 129, 24, N'ماه', 'SUBSTRING(R.ReciptDate,6,2)', 'Months', 'Name', 'Months', 'MonthID'
 UNION ALL
 SELECT 130, 24, N'سال‏مالي', 'R.YearID', 'Util.MaliYear', 'StartYear', 'Y', 'YearID'
 UNION ALL
 SELECT 131, 24, N'نوع ارز', 'R.ArzTypeID', ' Acc.Currencies', 'CurrenciesName', 'Cu', 'CurrenciesID'
 UNION ALL
 SELECT 132, 24, N'نوع اطلاعات', 'R.SecondType', 'LookUps', 'Name', 'L1', 'LookUpID'
 UNION ALL
 SELECT 133, 24, N'كدم مصرف', 'R.UseUnitID', 'UseUnits', 'UseUnitName', 'U', 'UseUnitID'
 UNION ALL
 SELECT 134, 24, N'سايرمحل.‏م', 'R.UseOtherID', 'UseOthers', 'UseOtherName', 'UO', 'UseOtherID' 
 UNION ALL
 SELECT 135, 24, N'کالا', 'Ri.StuffCode', 'StuffCoding', 'c_StuffName', 'SC', 'c_StuffCode' 
 UNION ALL
 SELECT 136, 24, N'مشتری آیتم', 'Ri.PersonID1', 'Customers', 'CustName', 'CI', 'CustID'
 UNION ALL
 SELECT 137, 24, N'مدل', 'Ri.ProductModel',  'LookUps', 'Name', 'LPM', 'LookUpID'
 UNION ALL
 SELECT 138, 24, N'نوع اطلاعات آیتم', 'Ri.SecondTypeItem',   'LookUps', 'Name', 'LSTi', 'LookUpID'
 UNION ALL
 SELECT 139, 24, N'محصول', 'Ri.ProductCode', 'StuffCoding', 'c_StuffName', 'SPc', 'c_StuffCode' 
 UNION ALL
 SELECT 140, 24, N'م.مصرف آیتم', 'Ri.UseUnitID',  'UseUnits', 'UseUnitName', 'UI', 'UseUnitID'
 UNION ALL
 SELECT 141, 24, N'تاریخ', 'R.ReciptDate', 'Tsh.Calendar', 'WeekDayName', 'Ca', 'CalendarDate'
 UNION ALL
 SELECT 142, 24, N'روزماه', 'SUBSTRING(R.ReciptDate,6,5)', 'Tsh.Calendar', 'SUBSTRING(R.ReciptDate,6,5)', 'Ca1', 'CalendarDate'
 UNION ALL
 SELECT 143, 24, N'روز',    'SUBSTRING(R.ReciptDate,9,2)', 'Tsh.Calendar',  'SUBSTRING(R.ReciptDate,9,2)', 'Ca2', 'CalendarDate'
 UNION ALL
 SELECT 144, 24, N'سالماه', 'REPLACE(SUBSTRING(R.ReciptDate,1,7),''/'','''')', 'Tsh.Calendar', 'REPLACE(SUBSTRING(R.ReciptDate,1,7),''/'','''')', 'Ca3', 'CalendarDate'
 UNION ALL
 SELECT 145,	24,	 N'سایرم.مصرف آیتم', 'Ri.UseOtherID_Item', 'UseOthers', 'UseOtherName', 'Uoi', 'UseOtherID'
 UNION ALL
 SELECT 146,	24,	 N'عنوان فرم', 'R.ReciptType', 'ReciptTypes', 'ReciptCaption', 'RC', 'ReciptType'	
 UNION ALL
 SELECT 147,	24,	N'گروه‏کالا',	'SC.GroupID'	,'StuffGroups',	'GroupName',	'SG'	,'GroupID'
 END

 UPDATE       Util.Analyze
SET                FieldName = REPLACE(REPLACE(FieldName, 'Recipts.', 'R.'), 'ReciptItems.', 'Ri.'), TopicName = REPLACE(REPLACE(TopicName, 'Recipts.', 'R.'), 'ReciptItems.', 'Ri.')
WHERE        (TableKind = 24)

 --select REPLACE(SUBSTRING(Recipts.ReciptDate,1,7),'/','') from Recipts

if ( COLUMNPROPERTY( OBJECT_ID('ReciptsPayments'),'PaymentDate','IsRowGuidCol')is  null )  
ALTER TABLE ReciptsPayments ADD PaymentDate char(10)  NOT NULL CONSTRAINT DF_ReciptsPayments_PaymentDate DEFAULT ('') 

if ( COLUMNPROPERTY( OBJECT_ID('ReciptsTrades'),'AmountDeclaration','IsRowGuidCol')is null )
 ALTER TABLE ReciptsTrades ADD AmountDeclaration decimal(24,4)  NOT NULL CONSTRAINT DF_ReciptsTrades_AmountDeclaration DEFAULT (0)


 if ( COLUMNPROPERTY( OBJECT_ID('ReciptsTrades'),'AmountDeclarationArz','IsRowGuidCol')is null )
 ALTER TABLE ReciptsTrades ADD AmountDeclarationArz decimal(24,4)  NOT NULL CONSTRAINT DF_ReciptsTrades_AmountDeclarationArz DEFAULT (0)

 if ( COLUMNPROPERTY( OBJECT_ID('ReciptsTrades'),'RTCarton','IsRowGuidCol')is null )
 ALTER TABLE ReciptsTrades ADD RTCarton decimal(24,4)  NOT NULL CONSTRAINT DF_ReciptsTrades_RTCarton DEFAULT (0)

 if ( COLUMNPROPERTY( OBJECT_ID('ReciptsTrades'),'RTWeight','IsRowGuidCol')is null )
 ALTER TABLE ReciptsTrades ADD RTWeight decimal(24,4)  NOT NULL CONSTRAINT DF_ReciptsTrades_RTWeight DEFAULT (0)

 if ( COLUMNPROPERTY( OBJECT_ID('ReciptsTrades'),'ArzType','IsRowGuidCol')is null )
 ALTER TABLE ReciptsTrades ADD ArzType int

 
IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes2') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'UpdateChildFromFather','IsRowGuidCol')is null )
  ALTER TABLE ReciptTypes2 ADD UpdateChildFromFather Tinyint NOT NULL CONSTRAINT DF_ReciptTypes2_UpdateChildFromFather DEFAULT (0)

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'ValueControl','IsRowGuidCol')is null )
  ALTER TABLE ReciptTypes2 ADD ValueControl bigint NOT NULL CONSTRAINT DF_ReciptTypes2_ValueControl DEFAULT (0)

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'LabelCaptions','IsRowGuidCol')is null )
  ALTER TABLE ReciptTypes2 ADD LabelCaptions Nvarchar(600)  NOT NULL CONSTRAINT DF_ReciptTypes2_LabelCaptions DEFAULT ('')

if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'ReciptNumberControl','IsRowGuidCol')is null )
  ALTER TABLE ReciptTypes2 ADD ReciptNumberControl bigint NOT NULL CONSTRAINT DF_ReciptTypes2_ReciptNumberControl DEFAULT (0)


if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'OtherSettings','IsRowGuidCol')is  null )  
  ALTER TABLE ReciptTypes2 ADD OtherSettings bigint  NOT NULL CONSTRAINT DF_ReciptTypes2_OtherSettings DEFAULT (0) 


  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'ReciptType4Copy','IsRowGuidCol')is null )
  ALTER TABLE ReciptTypes2 ADD ReciptType4Copy Tinyint 

  Declare @DefaultStoreID smallint
  SELECT @DefaultStoreID=isnull(MIN(n_StoreID),1) FROM Stores
  

 if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'DefaultStoreID','IsRowGuidCol')is null )
 exec(' ALTER TABLE ReciptTypes2 ADD DefaultStoreID smallint NOT NULL CONSTRAINT DF_ReciptTypes2_DefaultStoreID DEFAULT ('+@DefaultStoreID+')')


 if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'ReciptStatecreatedFormCo','IsRowGuidCol')is  null )  
   ALTER TABLE ReciptTypes2 ADD ReciptStatecreatedFormCo tinyint NOT NULL CONSTRAINT DF_ReciptTypes2_ReciptStatecreatedFormCo DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'ShowSettings','IsRowGuidCol')is  null )  
  ALTER TABLE ReciptTypes2 ADD ShowSettings bigint  NOT NULL CONSTRAINT DF_ReciptTypes2_ShowSettings DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'SpecialSettings','IsRowGuidCol')is  null )  
  ALTER TABLE ReciptTypes2 ADD SpecialSettings bigint  NOT NULL CONSTRAINT DF_ReciptTypes2_SpecialSettings DEFAULT (15) 
   
  
END



if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CorrelateFormType','IsRowGuidCol')is null )
  ALTER TABLE FormTypes ADD CorrelateFormType int

if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'FormRegistrationControls','IsRowGuidCol')is null )
  ALTER TABLE FormTypes ADD FormRegistrationControls bigint
  


IF NOT EXISTS(SELECT * FROM SYSOBJECTS where id = object_id(N'Util.UserNotification') and OBJECTPROPERTY(id, N'IsUserTable') = 1 )
CREATE TABLE Util.UserNotification(
	Kind int NOT NULL CONSTRAINT DF_UserNotification_Kind   DEFAULT (1)  ,
	PositionCode int NOT NULL,
	ReciptType int NOT NULL,
 CONSTRAINT PK_UserNotification PRIMARY KEY CLUSTERED (	Kind,PositionCode,ReciptType)  ON [PRIMARY]) ON [PRIMARY] 


 IF NOT EXISTS(SELECT * FROM SYSOBJECTS where id = object_id(N'ConfigUser') and OBJECTPROPERTY(id, N'IsUserTable') = 1 )
CREATE TABLE ConfigUser(
	UserID int NOT NULL,
	ComPortKind tinyint NOT NULL  DEFAULT (2) ,
	BaudRate tinyint NOT NULL  DEFAULT (7),
	[Port] varchar(50) NULL DEFAULT ('COM1') ,
	FlowControl tinyint NOT NULL  DEFAULT (2),
	XonXoffIn tinyint NOT NULL  DEFAULT (1) ,
	XonXoffOut tinyint NOT NULL DEFAULT (1) ,
	PackSize tinyint NOT NULL DEFAULT (20) ,
	StopBits tinyint NOT NULL DEFAULT (0) ,
	Parity tinyint NOT NULL DEFAULT (0),
 CONSTRAINT PK_ConfigUser PRIMARY KEY CLUSTERED (UserID ASC) ON [PRIMARY]) ON [PRIMARY]


 IF NOT EXISTS(SELECT * FROM SYSOBJECTS where id = object_id(N'UsersSellsEmporium') and OBJECTPROPERTY(id, N'IsUserTable') = 1 )
 CREATE TABLE UsersSellsEmporium(
	UserID int NOT NULL,
	SellsEmporium int NOT NULL,
	CONSTRAINT FK_UsersSellsEmporium_SellsEmporiums FOREIGN KEY(SellsEmporium) REFERENCES dbo.SellsEmporiums (SellsEmporium) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT PK_UsersSellsEmporium PRIMARY KEY CLUSTERED  (	UserID ASC,	SellsEmporium ASC) ON [PRIMARY] ) ON [PRIMARY]


-- info types : 1 =wage debit, 2= wage credit , 3=tax debit ,4=Exchange Currency ,5=Constant Acc Code For debit ,6=Constant Acc Code For credit 
-- 7= Constant Acc Code 
 IF NOT EXISTS(SELECT * FROM SYSOBJECTS where id = object_id(N'FormTypesAccCode') and OBJECTPROPERTY(id, N'IsUserTable') = 1 )
CREATE TABLE FormTypesAccCode(
	FormType	tinyint NOT NULL,
	InfoKind	tinyint NOT NULL,
	TopicCode	bigint NULL CONSTRAINT DF_FormTypesAccCode_TopicCode  DEFAULT (0) ,
	DetailCode	varchar(12) CONSTRAINT DF_FormTypesAccCode_DetailCode  DEFAULT (0)NOT NULL,
	CTopicCode	varchar(12) CONSTRAINT DF_FormTypesAccCode_CTopicCode  DEFAULT (0) NOT NULL,
	CTopicCode2	varchar(12) CONSTRAINT  DF_FormTypesAccCode_CTopicCode2  DEFAULT (0) NOT NULL,
	CTopicCode3	varchar(12) CONSTRAINT DF_FormTypesAccCode_CTopicCode3  DEFAULT (0) NOT NULL,
	Note		nvarchar(250) NULL,
	BedBes		tinyint NOT NULL,
	CustID		int NULL,
	CONSTRAINT FK_FormTypesAccCode_FormTypes FOREIGN KEY(FormType)REFERENCES FormTypes (FormType)ON UPDATE CASCADE ,
    CONSTRAINT PK_ReciptTypesAccCode PRIMARY KEY CLUSTERED (	FormType ASC,	InfoKind ASC,	BedBes ASC) ON [PRIMARY]) ON [PRIMARY]


IF  EXISTS(SELECT * FROM SYSOBJECTS where id = object_id(N'Acc.Documents') and OBJECTPROPERTY(id, N'IsUserTable') = 1 )
 ALTER TABLE Acc.Documents ALTER COLUMN DetailCompany int  NULL

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'Installation','IsRowGuidCol')is null )
  ALTER TABLE Customers ADD Installation bit  

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'InstallationFree','IsRowGuidCol')is null )
  ALTER TABLE Customers ADD InstallationFree bit   

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'InstallationNote','IsRowGuidCol')is null )
  ALTER TABLE Customers ADD InstallationNote varchar(150)  

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'Submit','IsRowGuidCol')is null )
  ALTER TABLE Customers ADD Submit bit   

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'SubmitFree','IsRowGuidCol')is null )
  ALTER TABLE Customers ADD SubmitFree bit   

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'SubmitNote','IsRowGuidCol')is null )
  ALTER TABLE Customers ADD SubmitNote varchar(150)  

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'Unloading','IsRowGuidCol')is null )
  ALTER TABLE Customers ADD Unloading bit   

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'UnloadingFree','IsRowGuidCol')is null )
  ALTER TABLE Customers ADD UnloadingFree bit  
  
if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'CitizenCode','IsRowGuidCol')is null )
  ALTER TABLE Customers ADD CitizenCode varchar(20)    


  if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'EditDateTime','IsRowGuidCol')is  null )  
ALTER TABLE Customers ADD EditDateTime datetime

if ( COLUMNPROPERTY( OBJECT_ID('LookUps'),'FactorType','IsRowGuidCol')is null )
 ALTER TABLE LookUps ADD FactorType char(20)




IF  EXISTS(SELECT * FROM SYSOBJECTS where id = object_id(N'Pay.PersonelInfo') and OBJECTPROPERTY(id, N'IsUserTable') = 1 )
if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelInfo'),'CitizenCode','IsRowGuidCol')is null )
  ALTER TABLE Pay.PersonelInfo ADD CitizenCode varchar(20)    
  

  
if ( COLUMNPROPERTY( OBJECT_ID('Machin.Maintenance'),'CustID4','IsRowGuidCol')is null )
 ALTER TABLE Machin.Maintenance ADD CustID4 int  NOT NULL CONSTRAINT DF_Maintenance_CustID4 DEFAULT (0)
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Maintenance_Customers4' AND type = 'F')
ALTER TABLE Machin.Maintenance WITH CHECK ADD CONSTRAINT FK_Maintenance_Customers4 FOREIGN KEY (CustID4) REFERENCES Customers(CustID) --ON UPDATE CASCADE 


if ( COLUMNPROPERTY( OBJECT_ID('Machin.Maintenance'),'CustID5','IsRowGuidCol')is null )
 ALTER TABLE Machin.Maintenance ADD CustID5 int  NOT NULL CONSTRAINT DF_Maintenance_CustID5 DEFAULT (0)
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Maintenance_Customers5' AND type = 'F')
ALTER TABLE Machin.Maintenance WITH CHECK ADD CONSTRAINT FK_Maintenance_Customers5 FOREIGN KEY (CustID5) REFERENCES Customers(CustID) --ON UPDATE CASCADE 


if ( COLUMNPROPERTY( OBJECT_ID('Units'),'UnitName_L2','IsRowGuidCol')is null )
  ALTER TABLE Units ADD UnitName_L2 varchar(50)  

if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'FormCaption_L2','IsRowGuidCol')is null )
  ALTER TABLE FormTypes ADD FormCaption_L2 varchar(50)  

  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'DefaultCurrencyType_Bed','IsRowGuidCol')is  null ) 
 ALTER TABLE FormTypes ADD DefaultCurrencyType_Bed Tinyint NOT NULL CONSTRAINT DF_FormTypes_DefaultCurrencyType_Bed DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'DefaultCurrencyType_Bes','IsRowGuidCol')is  null ) 
 ALTER TABLE FormTypes ADD DefaultCurrencyType_Bes Tinyint NOT NULL CONSTRAINT DF_FormTypes_DefaultCurrencyType_Bes DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'DefaultBudget_Bed','IsRowGuidCol')is  null ) 
 ALTER TABLE FormTypes ADD DefaultBudget_Bed Tinyint NOT NULL CONSTRAINT DF_FormTypes_DefaultBudget_Bed DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'DefaultBudget_Bes','IsRowGuidCol')is  null ) 
 ALTER TABLE FormTypes ADD DefaultBudget_Bes Tinyint NOT NULL CONSTRAINT DF_FormTypes_DefaultBudget_Bes DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'DefaultProject_Bed','IsRowGuidCol')is  null ) 
 ALTER TABLE FormTypes ADD DefaultProject_Bed Tinyint NOT NULL CONSTRAINT DF_FormTypes_DefaultProject_Bed DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'DefaultProject_Bes','IsRowGuidCol')is  null ) 
 ALTER TABLE FormTypes ADD DefaultProject_Bes Tinyint NOT NULL CONSTRAINT DF_FormTypes_DefaultProject_Bes DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'DefaultAidInfo_Bed','IsRowGuidCol')is  null ) 
 ALTER TABLE FormTypes ADD DefaultAidInfo_Bed Tinyint NOT NULL CONSTRAINT DF_FormTypes_DefaultAidInfo_Bed DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'DefaultAidInfo_Bes','IsRowGuidCol')is  null ) 
 ALTER TABLE FormTypes ADD DefaultAidInfo_Bes Tinyint NOT NULL CONSTRAINT DF_FormTypes_DefaultAidInfo_Bes DEFAULT (0) 

 if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'PrimaryFormType','IsRowGuidCol')is  null )  
 ALTER TABLE FormTypes ADD PrimaryFormType Tinyint  NOT NULL CONSTRAINT DF_FormTypes_PrimaryFormTypes  DEFAULT (0) 


IF NOT EXISTS(SELECT * FROM SYSOBJECTS where id = object_id(N'dbo.StuffCodingFacilities') and OBJECTPROPERTY(id, N'IsUserTable') = 1 )
CREATE TABLE dbo.StuffCodingFacilities(
	StuffCodingID int IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	StoreID smallint NOT NULL,
	StuffCode bigint NOT NULL,
	KeepPlace varchar(150) ,
	Cabinet varchar(100) ,
	Tierced varchar(100) ,
	LocationGps geography,   
	CONSTRAINT FK_StuffCodingFacilities_Stores      FOREIGN KEY(StoreID)  REFERENCES dbo.Stores (n_StoreID)       ON UPDATE CASCADE ,
	CONSTRAINT FK_StuffCodingFacilities_StuffCoding FOREIGN KEY(StuffCode)REFERENCES dbo.StuffCoding (c_StuffCode)ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT PK_StuffCodingFacilities PRIMARY KEY CLUSTERED (	StuffCodingID ASC) ON [PRIMARY]) ON [PRIMARY]

IF NOT  EXISTS (select * from sysindexes WHERE     (name = N'IX_StoreID_StuffCode'))
CREATE UNIQUE NONCLUSTERED INDEX IX_StoreID_StuffCode ON dbo.StuffCodingFacilities 
(
	StoreID ASC,
	StuffCode ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

/*
Delete   FROM         StuffCodingFacilities 
where   StuffCodingID  in (   SELECT     MAX(StuffCodingID) AS Expr1 FROM StuffCodingFacilities GROUP BY StoreID, StuffCode HAVING      (COUNT(*) > 1)
)
*/




IF NOT EXISTS(SELECT * FROM SYSOBJECTS where id = object_id(N'dbo.StuffCodingStock') and OBJECTPROPERTY(id, N'IsUserTable') = 1 )
CREATE TABLE dbo.StuffCodingStock(
	StuffCodingID int IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	StoreID smallint NOT NULL,
	StuffCode bigint NOT NULL,
    MinOrder float  ,
	MaxOrder float  ,
	OrderPoint float  ,
    OptimumPoint float  ,
    DayOfStorage int  ,
	CONSTRAINT FK_StuffCodingStock_Stores      FOREIGN KEY(StoreID)  REFERENCES dbo.Stores (n_StoreID)       ON UPDATE CASCADE ,
	CONSTRAINT FK_StuffCodingStock_StuffCoding FOREIGN KEY(StuffCode)REFERENCES dbo.StuffCoding (c_StuffCode)ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT PK_StuffCodingStock PRIMARY KEY CLUSTERED (	StuffCodingID ASC) ON [PRIMARY]) ON [PRIMARY]


if ( COLUMNPROPERTY( OBJECT_ID('StuffCodingStock'),'ProductModel','IsRowGuidCol')is null )
 ALTER TABLE StuffCodingStock ADD ProductModel int  
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_StuffCodingStock_LookUps_ProductModel' AND type = 'F')
ALTER TABLE StuffCodingStock WITH CHECK ADD CONSTRAINT FK_StuffCodingStock_LookUps_ProductModel FOREIGN KEY (ProductModel)
  REFERENCES LookUps(LookUpID) ON UPDATE CASCADE 


IF NOT EXISTS(SELECT * FROM SYSOBJECTS where id = object_id(N'ReciptTypesStuffGroups') and OBJECTPROPERTY(id, N'IsUserTable') = 1 )
CREATE TABLE ReciptTypesStuffGroups(
	ReciptType tinyint NOT NULL,
	GroupID int NOT NULL,
	CONSTRAINT FK_ReciptTypesStuffGroups_ReciptTypes FOREIGN KEY(ReciptType)REFERENCES ReciptTypes1 (ReciptType)ON UPDATE CASCADE ,
	CONSTRAINT FK_ReciptTypesStuffGroups_StuffGroups FOREIGN KEY(GroupID)REFERENCES StuffGroups (GroupID)ON UPDATE CASCADE ,
    CONSTRAINT PK_ReciptTypesStuffGroups PRIMARY KEY CLUSTERED (ReciptType ASC,	GroupID ASC
) ON [PRIMARY]
) ON [PRIMARY]



IF NOT EXISTS(SELECT * FROM SYSOBJECTS where id = object_id(N'Util.SmsInProcess') and OBJECTPROPERTY(id, N'IsUserTable') = 1 )
CREATE TABLE Util.SmsInProcess(
	FormName nvarchar(50) not NULL,
	ID bigint not NULL,
	Mobile varchar(20),
	SmsText nvarchar(720) NULL,
	IsSend tinyint  NULL,
 CONSTRAINT PK_SmsInProcess PRIMARY KEY CLUSTERED (FormName,ID) ON [PRIMARY]
 ) ON [PRIMARY]


IF NOT EXISTS(SELECT * FROM SYSOBJECTS where id = object_id(N'CustomersAccount') and OBJECTPROPERTY(id, N'IsUserTable') = 1 )
CREATE TABLE CustomersAccount(
	ID int identity(1,1) NOT NULL,
	CustID int NOT NULL,
	BankName varchar(60) NULL,
	BranchCode char(25) NULL,
	AccountNumber char(25) NULL,
	AccountKind int NULL,
	AccountHolderName varchar(60) NULL,	
	IbanNumber varchar(60) NULL,
	BankIDc char(3) NULL,
	CONSTRAINT FK_CustomersAccount_Customers FOREIGN KEY(CustID)REFERENCES Customers (CustID) ON UPDATE CASCADE ,
    CONSTRAINT PK_CustomersAccount PRIMARY KEY CLUSTERED (ID) ON [PRIMARY]) ON [PRIMARY]

---- 14020722
if not exists (select * from dbo.sysobjects where id = object_id(N'CustomerLookUpInfo') 
and OBJECTPROPERTY(id, N'IsUserTable') = 1) 
CREATE TABLE  CustomerLookUpInfo (
  CustID int NOT NULL ,
  LookUpID int NOT NULL ,
  LookUpItemID int  NOT NULL ,
  CustomerLookUpInfoRow int NOT NULL CONSTRAINT DF_CustomerLookUpInfo_CustomerLookUpInfoRow DEFAULT (0) ,
CONSTRAINT PK_CustomerLookUpInfo PRIMARY KEY CLUSTERED (CustID,	LookUpID) ON [PRIMARY] ,
CONSTRAINT FK_CustomerLookUpInfo_LookUpIDsLookUpID FOREIGN KEY (LookUpID) 
  REFERENCES  LookUps (LookUpID),--ON UPDATE CASCADE ,
CONSTRAINT FK_CustomerLookUpInfo_FormsInfoLookUpItemID FOREIGN KEY (LookUpItemID) 
  REFERENCES  LookUps (	LookUpID) ON UPDATE CASCADE ,
CONSTRAINT FK_CustomerLookUpInfo_CustomerInfo FOREIGN KEY (CustID) 
  REFERENCES  Customers (CustID) ON DELETE CASCADE ON UPDATE CASCADE ) ON [PRIMARY]



if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'DeficitValueCo2','IsRowGuidCol')is null )
  ALTER TABLE ReciptItems ADD DeficitValueCo2 Decimal(10,9)  NOT NULL CONSTRAINT DF_ReciptItems_DeficitValueCo2 DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'DeficitValueCo3','IsRowGuidCol')is null )
  ALTER TABLE ReciptItems ADD DeficitValueCo3 Decimal(10,9)  NOT NULL CONSTRAINT DF_ReciptItems_DeficitValueCo3 DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'DeficitValueCo4','IsRowGuidCol')is null )
  ALTER TABLE ReciptItems ADD DeficitValueCo4 Decimal(10,9)  NOT NULL CONSTRAINT DF_ReciptItems_DeficitValueCo4 DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'bsrn','IsRowGuidCol')is null )
  ALTER TABLE ReciptItems ADD bsrn char(12) 

if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'UnitCommissionCo','IsRowGuidCol')is null )
  ALTER TABLE ReciptItems ADD UnitCommissionCo Decimal(10,7)  NOT NULL CONSTRAINT DF_ReciptItems_UnitCommissionCo DEFAULT (0)

  ------     edit  time  in   Fun_Views_Bsell   or    Bsell_Views_Fun22.sql         مهم   مهم     مهم   مهم    مهم   مهم    مهم   مهم    مهم   مهم    مهم   مهم    مهم   مهم

  if not( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'ID','IsRowGuidCol')is  null )  
 ALTER TABLE ReciptItems drop column  ID  --- case when ReciptItemID<0 then -1 else 1 end*
 ALTER TABLE ReciptItems ADD ID  AS (CAST(LTRIM(YearID) +  LTRIM(abs(ReciptID))+RIGHT('0'+ LTRIM(ServerID),2) +  LTRIM(abs(ReciptItemID)) AS decimal(26,0)))



if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'TAXID','IsRowGuidCol')is null )
  ALTER TABLE Recipts ADD TAXID varchar(50)  --up

if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'IRTAXID','IsRowGuidCol')is null )
  ALTER TABLE Recipts ADD IRTAXID varchar(50)  --///برگشت از فروش

if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'TAXUID','IsRowGuidCol')is null )
  ALTER TABLE Recipts ADD TAXUID varchar(50)-- up

if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'REFERENCENUMBER','IsRowGuidCol')is null )
  ALTER TABLE Recipts ADD REFERENCENUMBER varchar(50)  --up

if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'DATE_OF_SEND_TO_TAX','IsRowGuidCol')is null )
  ALTER TABLE Recipts ADD DATE_OF_SEND_TO_TAX datetime

if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'tax_status','IsRowGuidCol')is null )
  ALTER TABLE Recipts ADD tax_status Tinyint  

if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'LoanPayment','IsRowGuidCol')is null )
  ALTER TABLE Recipts ADD LoanPayment money  NOT NULL CONSTRAINT DF_Recipts_LoanPayment DEFAULT (0)
 
if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'InvoiceTemplate','IsRowGuidCol')is null )
  ALTER TABLE Recipts ADD InvoiceTemplate tinyint  NOT NULL CONSTRAINT DF_Recipts_InvoiceTemplate DEFAULT (1)
 
if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'CRN','IsRowGuidCol')is null )
  ALTER TABLE Recipts ADD CRN varchar(15)  

if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'NtswID','IsRowGuidCol')is null )
  ALTER TABLE Recipts ADD NtswID bigint 

if ( COLUMNPROPERTY( OBJECT_ID('dbo.Forms'),'CostFactorsType','IsRowGuidCol')is  null )  
ALTER TABLE dbo.Forms ADD CostFactorsType tinyint  NOT NULL  DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('dbo.Forms'),'CostFactorsCode','IsRowGuidCol')is  null )  
ALTER TABLE dbo.Forms ADD CostFactorsCode varchar(60) NULL 

if ( COLUMNPROPERTY( OBJECT_ID('dbo.Forms'),'InsertDate','IsRowGuidCol')is  null )  
ALTER TABLE dbo.Forms ADD InsertDate datetime  CONSTRAINT DF_Forms_InsertDate DEFAULT (getdate())


if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'ArzAmountExchange','IsRowGuidCol')is  null )  
ALTER TABLE Forms ADD ArzAmountExchange Money  NOT NULL CONSTRAINT DF_Forms_ArzAmountExchange  DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'ArzRateExchange','IsRowGuidCol')is  null )  
ALTER TABLE Forms ADD ArzRateExchange Float  NOT NULL CONSTRAINT DF_Forms_ArzRateExchange  DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'ArzTypeIDExchange','IsRowGuidCol')is  null )  
ALTER TABLE Forms ADD ArzTypeIDExchange int 



if ( COLUMNPROPERTY( OBJECT_ID('dbo.FormItems'),'InsertDatei','IsRowGuidCol')is  null )  
ALTER TABLE dbo.FormItems ADD InsertDatei datetime  CONSTRAINT DF_FormItems_InsertDatei DEFAULT (getdate())


if ( COLUMNPROPERTY( OBJECT_ID('dbo.FormItems'),'OtherNationalCode','IsRowGuidCol')is  null )  
ALTER TABLE dbo.FormItems ADD OtherNationalCode varchar(12) NULL

--IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
--WHERE       (TABLE_NAME = N'FormItems') AND (COLUMN_NAME = N'OtherNationalCode') AND (DATA_TYPE='varchar') AND (CHARACTER_MAXIMUM_LENGTH =20 ))
--   ALTER TABLE  FormItems ALTER COLUMN OtherNationalCode VARCHAR(20)


if ( COLUMNPROPERTY( OBJECT_ID('dbo.FormItems'),'SyadSystem','IsRowGuidCol')is  null )  
ALTER TABLE FormItems ADD SyadSystem bit  NOT NULL CONSTRAINT DF_FormItems_SyadSystem DEFAULT (0)


if ( COLUMNPROPERTY( OBJECT_ID('FormItems'),'ArzAmountExchange','IsRowGuidCol')is  null )  
ALTER TABLE FormItems ADD ArzAmountExchange Money  NOT NULL CONSTRAINT DF_FormItems_ArzAmountExchange  DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('FormItems'),'ArzRateExchange','IsRowGuidCol')is  null )  
ALTER TABLE FormItems ADD ArzRateExchange Float  NOT NULL CONSTRAINT DF_FormItems_ArzRateExchange  DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('FormItems'),'ArzTypeIDExchange','IsRowGuidCol')is  null )  
ALTER TABLE FormItems ADD ArzTypeIDExchange int 

if ( COLUMNPROPERTY( OBJECT_ID('FormItems'),'SwiftCode','IsRowGuidCol')is  null )  
ALTER TABLE FormItems ADD SwiftCode varchar(20) NULL

if ( COLUMNPROPERTY( OBJECT_ID('FormItems'),'IBAN','IsRowGuidCol')is  null )  
ALTER TABLE FormItems ADD IBAN varchar(40) NULL



if ( COLUMNPROPERTY( OBJECT_ID('ReciptsRegulates'),'ArzTypeID','IsRowGuidCol')is  null )  
ALTER TABLE ReciptsRegulates ADD ArzTypeID int 

if ( COLUMNPROPERTY( OBJECT_ID('ReciptsRegulates'),'ArzAmount','IsRowGuidCol')is null )
ALTER TABLE ReciptsRegulates ADD ArzAmount decimal(18, 4)   NOT NULL CONSTRAINT DF_ReciptsRegulates_ArzAmount DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('ManifestoItems'),'PersonID1D','IsRowGuidCol')is null )
 ALTER TABLE ManifestoItems ADD PersonID1D int  

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ManifestoItems_Customers_PersonID1D' AND type = 'F')
ALTER TABLE ManifestoItems WITH CHECK ADD CONSTRAINT FK_ManifestoItems_Customers_PersonID1D FOREIGN KEY (PersonID1D)
  REFERENCES Customers(CustID) --ON UPDATE CASCADE 

if ( COLUMNPROPERTY( OBJECT_ID('ManifestoItems'),'MTaxCo','IsRowGuidCol')is null )
 ALTER TABLE ManifestoItems ADD MTaxCo float  

if ( COLUMNPROPERTY( OBJECT_ID('ManifestoItems'),'LastUser','IsRowGuidCol')is  null )  
ALTER TABLE ManifestoItems ADD LastUser nvarchar(20) 

if ( COLUMNPROPERTY( OBJECT_ID('ManifestoItems'),'FirstUser','IsRowGuidCol')is  null )  
ALTER TABLE ManifestoItems ADD FirstUser nvarchar(20)  

if ( COLUMNPROPERTY( OBJECT_ID('ManifestoItems'),'DiscountPercent2','IsRowGuidCol')is null )
 ALTER TABLE ManifestoItems ADD DiscountPercent2 decimal(18, 4) NOT NULL CONSTRAINT DF_ManifestoItems_DiscountPercent2 DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('ManifestoItems'),'DiscountAmount2','IsRowGuidCol')is null )
 ALTER TABLE ManifestoItems ADD DiscountAmount2 decimal(18, 4) NOT NULL CONSTRAINT DF_ManifestoItems_DiscountAmount2 DEFAULT (0)
  
if ( COLUMNPROPERTY( OBJECT_ID('ManifestoItems'),'CurrenciesID','IsRowGuidCol')is null )
 ALTER TABLE ManifestoItems ADD CurrenciesID int  

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ManifestoItems_Currencies_CurrenciesID' AND type = 'F')
ALTER TABLE ManifestoItems WITH CHECK ADD CONSTRAINT FK_ManifestoItems_Currencies_CurrenciesID FOREIGN KEY (CurrenciesID)
  REFERENCES Currencies(CurrenciesID) ON UPDATE CASCADE 


  
if ( COLUMNPROPERTY( OBJECT_ID('ReciptsRegulates'),'EffectAdjustments','IsRowGuidCol')is  null )  
ALTER TABLE ReciptsRegulates ADD EffectAdjustments tinyint  NOT NULL CONSTRAINT DF_ReciptsRegulates_EffectAdjustments DEFAULT (0)
  
if ( COLUMNPROPERTY( OBJECT_ID('ReciptsRegulates'),'CustID2','IsRowGuidCol')is null )
 ALTER TABLE ReciptsRegulates ADD CustID2 int  
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptsRegulates_Customers_CustID2' AND type = 'F')
ALTER TABLE ReciptsRegulates WITH CHECK ADD CONSTRAINT FK_ReciptsRegulates_Customers_CustID2 FOREIGN KEY (CustID2)
  REFERENCES Customers(CustID) --ON UPDATE CASCADE 


if ( COLUMNPROPERTY( OBJECT_ID('Agreements'),'PersonID1D','IsRowGuidCol')is null )
 ALTER TABLE Agreements ADD PersonID1D int  
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Agreements_Customers_PersonID1D' AND type = 'F')
ALTER TABLE Agreements WITH CHECK ADD CONSTRAINT FK_Agreements_Customers_PersonID1D FOREIGN KEY (PersonID1D)
  REFERENCES Customers(CustID) --ON UPDATE CASCADE 


if ( COLUMNPROPERTY( OBJECT_ID('Agreements'),'DiscountPercent','IsRowGuidCol')is null )
 ALTER TABLE Agreements ADD DiscountPercent float  

 if ( COLUMNPROPERTY( OBJECT_ID('Agreements'),'TaxCoA','IsRowGuidCol')is null )
 ALTER TABLE Agreements ADD TaxCoA float  


if ( COLUMNPROPERTY( OBJECT_ID('StuffCoding'),'NationalStuffCode','IsRowGuidCol')is null )
  ALTER TABLE StuffCoding ADD NationalStuffCode varchar(25)

if ( COLUMNPROPERTY( OBJECT_ID('StuffCoding'),'SD1Weight','IsRowGuidCol')is null )
  ALTER TABLE StuffCoding ADD SD1Weight  decimal(18, 4)   NOT NULL CONSTRAINT DF_StuffCoding_SD1Weight DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('StuffCoding'),'VatExemptCo','IsRowGuidCol')is null )
  ALTER TABLE StuffCoding ADD VatExemptCo  float  NOT NULL CONSTRAINT DF_StuffCoding_VatExemptCo DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('StuffCoding'),'MaterialUsageCo','IsRowGuidCol')is null )
  ALTER TABLE StuffCoding ADD MaterialUsageCo DECIMAL(12,9)   NOT NULL CONSTRAINT DF_StuffCoding_MaterialUsageCo DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Units'),'Tax_mu','IsRowGuidCol')is null )
  ALTER TABLE Units ADD Tax_mu varchar(6)

IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE       (TABLE_NAME = N'Units') AND (COLUMN_NAME = N'Tax_mu') AND (DATA_TYPE='varchar') AND (CHARACTER_MAXIMUM_LENGTH =6 ))
   ALTER TABLE  Units ALTER COLUMN Tax_mu VARCHAR(6)



if (  OBJECT_ID('DF_ReciptTypes1_ChangeAidReciptDate') is  null )  
begin
DECLARE @S SYSNAME
SET @S=''

DECLARE @SQL NVARCHAR(500)
SET @SQL=''
WHILE @S is not NULL
BEGIN
	SELECT @S=NAME FROM sysobjects WHERE NAME  like'DF%ReciptTyp%Chang%' and parent_obj=object_id(N'ReciptTypes1')
	IF @S<>'' or @S<>NULL
	BEGIN
		SET @SQL='ALTER TABLE ReciptTypes1 DROP CONSTRAINT '+@S
	--	print @SQL
		exec(@SQL)
        SET @S=''
	END
	ELSE 
	SET	@S=NULL
END

IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE       (TABLE_NAME = N'ReciptTypes1') AND (COLUMN_NAME = N'ChangeAidReciptDate') AND (DATA_TYPE='bigint') )
begin
  ALTER TABLE ReciptTypes1 ALTER COLUMN ChangeAidReciptDate bigint
  ALTER TABLE ReciptTypes1 ADD CONSTRAINT DF_ReciptTypes1_ChangeAidReciptDate DEFAULT (0) FOR ChangeAidReciptDate
end
end


---  UPDATE       TOP (200) Units SET                Tax_mu = RIGHT('0000' + LTRIM(UnitCode), 4)   where  Tax_mu=''

--if ( COLUMNPROPERTY( OBJECT_ID('SellsEmporiums'),'sbc_Tax','IsRowGuidCol')is null )
--  ALTER TABLE SellsEmporiums ADD sbc_Tax varchar(10)


if ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'MachineEntity','IsRowGuidCol')is  null )  
  ALTER TABLE Tozin ADD MachineEntity Decimal(38,8)  NULL CONSTRAINT DF_Tozin_MachineEntity DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'TozinNumberFormer','IsRowGuidCol')is  null )  
 ALTER TABLE Tozin ADD TozinNumberFormer  int	

  
update Config set LinkServerName=@LinkServerName
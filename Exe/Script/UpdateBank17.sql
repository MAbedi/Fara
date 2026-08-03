SET NOCOUNT ON
if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'AccountNumberNewActive','IsRowGuidCol')is  null )  
ALTER TABLE FormTypes ADD AccountNumberNewActive tinyint NOT NULL DEFAULT(0)

IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
 if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'CopyFormLevelID','IsRowGuidCol')is  null )  
ALTER TABLE ReciptTypes ADD CopyFormLevelID tinyint NOT NULL DEFAULT(0)

if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CopyFormLevelID','IsRowGuidCol')is  null )  
ALTER TABLE FormTypes ADD CopyFormLevelID tinyint NOT NULL DEFAULT(0)

if ( COLUMNPROPERTY( OBJECT_ID('Config'),'MakeDocsLevelID','IsRowGuidCol')is  null )  
ALTER TABLE Config ADD MakeDocsLevelID tinyint NOT NULL DEFAULT(0)

if ( COLUMNPROPERTY( OBJECT_ID('Config'),'DocPostKindLevelID','IsRowGuidCol')is  null )  
ALTER TABLE Config ADD DocPostKindLevelID tinyint NOT NULL DEFAULT(0)

IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
 if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'BuyEffect','IsRowGuidCol')is  null )  
ALTER TABLE ReciptTypes ADD BuyEffect tinyint NOT NULL DEFAULT(0)

IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Fitful') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Fitful(FitfulID decimal(20, 4) NOT NULL ,
  CONSTRAINT CK_Fitful CHECK  ((FitfulID=(0))),
  CONSTRAINT PK_Fitful PRIMARY KEY CLUSTERED (FitfulID ASC) ON [PRIMARY]
) ON [PRIMARY]

if (SELECT count(*) FROM Fitful)=0
insert into Fitful (FitfulID) values(0)

if ( COLUMNPROPERTY( OBJECT_ID('Fitful'),'FitfulIDc','IsRowGuidCol')is  null )  
ALTER TABLE Fitful ADD FitfulIDc money NOT NULL CONSTRAINT DF_Fitful_FitfulIDc   DEFAULT(0)

if ( COLUMNPROPERTY( OBJECT_ID('Fitful'),'TopicCode','IsRowGuidCol')is  null )  
ALTER TABLE Fitful ADD TopicCode bigint NOT NULL  CONSTRAINT DF_Fitful_TopicCode   DEFAULT(0)

if ( COLUMNPROPERTY( OBJECT_ID('Fitful'),'DetailCode','IsRowGuidCol')is  null )  
ALTER TABLE Fitful ADD DetailCode int NOT NULL  CONSTRAINT DF_Fitful_DetailCode  DEFAULT(0)

if ( COLUMNPROPERTY( OBJECT_ID('Fitful'),'Comment2','IsRowGuidCol')is  null )  
ALTER TABLE Fitful ADD Comment2 varchar(300) NOT NULL CONSTRAINT DF_Fitful_Comment2  DEFAULT ('') 

if ( COLUMNPROPERTY( OBJECT_ID('Fitful'),'FitfulNote','IsRowGuidCol')is  null )  
ALTER TABLE Fitful ADD FitfulNote nvarchar(1000) NOT NULL CONSTRAINT DF_Fitful_FitfulNote  DEFAULT ('') 


IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
 if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'CommissionActive','IsRowGuidCol')is  null )  
ALTER TABLE ReciptTypes ADD CommissionActive tinyint NOT NULL DEFAULT(0)

if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'UnitCommission','IsRowGuidCol')is  null )  
ALTER TABLE ReciptItems ADD UnitCommission decimal(20, 4) NOT NULL DEFAULT(0)

if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'TransFormID','IsRowGuidCol')is  null )  
ALTER TABLE ReciptItems ADD TransFormID int

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptItems_TransForms' AND type = 'F')
ALTER TABLE ReciptItems
WITH CHECK ADD CONSTRAINT FK_ReciptItems_TransForms FOREIGN KEY (TransFormID)
REFERENCES TransForms(TransFormID) ON UPDATE CASCADE

if ( COLUMNPROPERTY( OBJECT_ID('TransForms'),'TransFormState','IsRowGuidCol')is  null )  
ALTER TABLE TransForms ADD TransFormState tinyint NOT NULL DEFAULT(0)

if ( COLUMNPROPERTY( OBJECT_ID('Config'),'AuxiliaryActive','IsRowGuidCol')is  null )  
ALTER TABLE Config ADD AuxiliaryActive tinyint NOT NULL DEFAULT(0)

IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
 if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'FilterYearIDActive','IsRowGuidCol')is  null )  
ALTER TABLE ReciptTypes ADD FilterYearIDActive tinyint NOT NULL DEFAULT(0)

if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'PrvYearID','IsRowGuidCol')is  null )  
ALTER TABLE Recipts ADD PrvYearID int

if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'PrvYearID','IsRowGuidCol')is  null )  
ALTER TABLE ReciptItems ADD PrvYearID int

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'RegisterNumber','IsRowGuidCol')is  null )  
ALTER TABLE Customers ADD RegisterNumber varchar(30)

IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin
 if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'Day4Edit','IsRowGuidCol')is  null )  
ALTER TABLE ReciptTypes ADD Day4Edit tinyint NOT NULL DEFAULT(0)

if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ReciptBe4PostCtrlEntAct','IsRowGuidCol')is  null )  
ALTER TABLE ReciptTypes ADD ReciptBe4PostCtrlEntAct tinyint NOT NULL DEFAULT(0)
end

if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CopyAccOnRecall','IsRowGuidCol')is  null )  
ALTER TABLE FormTypes ADD CopyAccOnRecall tinyint NOT NULL DEFAULT(0)

DECLARE @S SYSNAME=''
DECLARE @SQL NVARCHAR(500)=''
WHILE @S is not NULL
BEGIN                          
	SELECT @S=NAME FROM sysobjects WHERE NAME  like'DF__%FormTypes__CopyA%__%'  and NAME<>'DF_FormTypes_CopyAccOnRecall' 
	IF @S<>'' or @S<>NULL
	BEGIN
		SET @SQL='ALTER TABLE FormTypes DROP CONSTRAINT '+@S
		exec(@SQL)
        SET @S=''
	END
	ELSE 
	SET	@S=NULL
END
 
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_FormTypes_CopyAccOnRecall' AND type = 'D')
begin
  ALTER TABLE FormTypes ALTER COLUMN CopyAccOnRecall bigint NOT NULL --DEFAULT(0)
  ALTER TABLE FormTypes ADD  CONSTRAINT DF_FormTypes_CopyAccOnRecall  DEFAULT (0) FOR CopyAccOnRecall
end



IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin
 if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ChekingTaxPrint','IsRowGuidCol')is  null )  
ALTER TABLE ReciptTypes ADD ChekingTaxPrint tinyint NOT NULL DEFAULT(0)

if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ChekingPrintEntity','IsRowGuidCol')is  null )  
ALTER TABLE ReciptTypes ADD ChekingPrintEntity tinyint NOT NULL DEFAULT(0)


if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ChangePriceManifesto','IsRowGuidCol')is  null )  
ALTER TABLE ReciptTypes ADD ChangePriceManifesto tinyint NOT NULL DEFAULT(0)
end

if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'Day4Edit','IsRowGuidCol')is  null )  
ALTER TABLE FormTypes ADD Day4Edit tinyint NOT NULL DEFAULT(0)

------------------------------ maliyat ------------------------------------

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'HCTarafGaradadTypeCode','IsRowGuidCol')is  null )  
ALTER TABLE Customers ADD HCTarafGaradadTypeCode tinyint 

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'HCKharidarTypeCode','IsRowGuidCol')is  null )  
ALTER TABLE Customers ADD HCKharidarTypeCode tinyint 


if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'CustFirstName','IsRowGuidCol')is  null )  
ALTER TABLE Customers ADD CustFirstName varchar(30) 

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'PerCityCode','IsRowGuidCol')is  null )  
ALTER TABLE Customers ADD PerCityCode varchar(10) 

IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE       (TABLE_NAME = N'Customers') AND (COLUMN_NAME = N'PerCityCode') AND (DATA_TYPE='varchar') AND (CHARACTER_MAXIMUM_LENGTH =10 ))
ALTER TABLE Customers ALTER column PerCityCode varchar(10) 


IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Zone') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Zone(ShahrCode int NOT NULL ,
Shahr nvarchar(255) NOT NULL ,
Ostan nvarchar(255) NOT NULL ,
OstanCode int NOT NULL ,  
  CONSTRAINT PK_Zone PRIMARY KEY CLUSTERED (ShahrCode ASC) ON [PRIMARY]
) ON [PRIMARY]


if not exists (SELECT ShahrCode FROM Zone WHERE (ShahrCode = 0)) 
INSERT INTO Zone (ShahrCode, Shahr, Ostan, OstanCode)
VALUES           (0, N'0', N'0', 0)

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'StateCode','IsRowGuidCol')is  null )  
ALTER TABLE Customers ADD StateCode int  NOT NULL CONSTRAINT DF_Customers_StateCode  DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'CityCode','IsRowGuidCol')is  null )  
ALTER TABLE Customers ADD CityCode int  NOT NULL CONSTRAINT DF_Customers_CityCode  DEFAULT (0) 



--IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Customers_Zone_StateCode' AND type = 'F')
--ALTER TABLE Customers
--WITH CHECK ADD CONSTRAINT FK_Customers_Zone_StateCode FOREIGN KEY (StateCode)
--REFERENCES Zone(OstanCode) --ON UPDATE CASCADE 


IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Customers_Zone_CityCode' AND type = 'F')
ALTER TABLE Customers
WITH CHECK ADD CONSTRAINT FK_Customers_Zone_CityCode FOREIGN KEY (CityCode)
REFERENCES Zone(ShahrCode) ON UPDATE CASCADE 


if ( COLUMNPROPERTY( OBJECT_ID('Config'),'StateCode','IsRowGuidCol')is  null )  
ALTER TABLE Config ADD StateCode int  NOT NULL CONSTRAINT DF_Config_StateCode  DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('Config'),'CityCode','IsRowGuidCol')is  null )  
ALTER TABLE Config ADD CityCode int  NOT NULL CONSTRAINT DF_Config_CityCode  DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('Config'),'NationalCodeField','IsRowGuidCol')is  null )  
ALTER TABLE Config ADD NationalCodeField varchar(20)

if ( COLUMNPROPERTY( OBJECT_ID('Config'),'CHKPriorityTransDate','IsRowGuidCol')is  null )  
ALTER TABLE Config ADD CHKPriorityTransDate Tinyint  NOT NULL CONSTRAINT DF_Config_CHKPriorityTransDate  DEFAULT (1) 

if ( COLUMNPROPERTY( OBJECT_ID('Config'),'ControlEntryCustInfo','IsRowGuidCol')is  null )  
ALTER TABLE Config ADD ControlEntryCustInfo Tinyint  NOT NULL CONSTRAINT DF_Config_ControlEntryCustInfo  DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'LastUser','IsRowGuidCol')is  null )  
ALTER TABLE Customers ADD LastUser nvarchar(20) 

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'FirstUser','IsRowGuidCol')is  null )  
ALTER TABLE Customers ADD FirstUser nvarchar(20)  

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'CustomerState','IsRowGuidCol')is  null )  
ALTER TABLE Customers ADD CustomerState Tinyint  NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Stores'),'EntityCaption','IsRowGuidCol')is  null )  
ALTER TABLE Stores ADD EntityCaption varchar(50) 

if ( COLUMNPROPERTY( OBJECT_ID('Stores'),'WeightCaption','IsRowGuidCol')is  null )  
ALTER TABLE Stores ADD WeightCaption varchar(50)  

if ( COLUMNPROPERTY( OBJECT_ID('Stores'),'EntityDisplayType','IsRowGuidCol')is  null )  
ALTER TABLE Stores ADD EntityDisplayType Tinyint  NOT NULL  DEFAULT (0) 



------------------------------ maliyat ------------------------------------

IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ConfirmingActive','IsRowGuidCol')is  null )  
ALTER TABLE ReciptTypes ADD ConfirmingActive tinyint NOT NULL DEFAULT(0)

if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'Confirming','IsRowGuidCol')is  null )  
ALTER TABLE ReciptItems ADD Confirming varchar(50)


------------------------------ How to display arz  ------------------------------------

if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'How2DisplayArzTypeID','IsRowGuidCol')is  null )  
ALTER TABLE FormTypes ADD How2DisplayArzTypeID tinyint NOT NULL DEFAULT(0)


if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'ArzTypeID','IsRowGuidCol')is  null )  
ALTER TABLE Forms ADD ArzTypeID int 

if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'ArzAmount','IsRowGuidCol')is  null )  
ALTER TABLE Forms ADD ArzAmount Money NOT NULL DEFAULT(0)

if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'ArzRate','IsRowGuidCol')is  null )  
ALTER TABLE Forms ADD ArzRate Float 

if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'ArzAmountExchange','IsRowGuidCol')is  null )  
ALTER TABLE Forms ADD ArzAmountExchange Money  NOT NULL CONSTRAINT DF_Forms_ArzAmountExchange  DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'ArzRateExchange','IsRowGuidCol')is  null )  
ALTER TABLE Forms ADD ArzRateExchange Float  NOT NULL CONSTRAINT DF_Forms_ArzRateExchange  DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'ArzTypeIDExchange','IsRowGuidCol')is  null )  
ALTER TABLE Forms ADD ArzTypeIDExchange int 

if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'ID','IsRowGuidCol')is  null )  
 ALTER TABLE Forms ADD ID  AS (CAST(LTRIM(YearID) +RIGHT('0'+ LTRIM(ServerID),2) +  LTRIM(abs(FormID)) AS BigInt))

if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'MachineNo','IsRowGuidCol')is  null )  
ALTER TABLE Forms ADD MachineNo varchar(25) 



if ( COLUMNPROPERTY( OBJECT_ID('FormItems'),'ArzTypeID','IsRowGuidCol')is  null )  
ALTER TABLE FormItems ADD ArzTypeID int 

if ( COLUMNPROPERTY( OBJECT_ID('FormItems'),'ArzAmount','IsRowGuidCol')is  null )  
ALTER TABLE FormItems ADD ArzAmount Money/*Float*/ NOT NULL DEFAULT(0)

IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE        (TABLE_NAME = N'FormItems') AND (COLUMN_NAME = N'ArzAmount') AND (DATA_TYPE = N'Float'))
begin
set @S=''
WHILE @S is not NULL
BEGIN                          
	SELECT @S=NAME FROM sysobjects WHERE NAME  like'DF__FormItems__ArzAm%'  and NAME<>'DF_FormItems_ArzAmount' 
	IF @S<>'' or @S<>NULL
	BEGIN
		SET @SQL='ALTER TABLE FormItems DROP CONSTRAINT '+@S
		exec(@SQL)
        SET @S=''
	END
	ELSE 
	SET	@S=NULL
END
ALTER TABLE FormItems alter column ArzAmount Float NOT NULL 
ALTER TABLE FormItems ADD  CONSTRAINT DF_FormItems_ArzAmount  DEFAULT (0) FOR ArzAmount

end

if ( COLUMNPROPERTY( OBJECT_ID('FormItems'),'ArzRate','IsRowGuidCol')is  null )  
ALTER TABLE FormItems ADD ArzRate Float 




------------------------------ How to display arz  ------------------------------------

if ( COLUMNPROPERTY( OBJECT_ID('Config'),'BrowseAllForms','IsRowGuidCol')is  null )  
ALTER TABLE Config ADD BrowseAllForms tinyint NOT NULL DEFAULT(1)

--IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'UsersCustomers') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
--CREATE TABLE UsersCustomers(
--	UserID int NOT NULL,
--	CustID int NOT NULL,
--	CONSTRAINT FK_UsersCustomers_Customers FOREIGN KEY(CustID)
--REFERENCES Customers (CustID)ON UPDATE CASCADE ON DELETE CASCADE,
-- CONSTRAINT PK_UsersCustomers PRIMARY KEY CLUSTERED (UserID ASC,CustID ASC) ON [PRIMARY]) ON [PRIMARY]

IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'UsersCustomersGroups') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE UsersCustomersGroups(
	UserID int NOT NULL,
	CustomerGrpID int NOT NULL,
	CONSTRAINT FK_UsersCustomersGroups_CustomersGroups FOREIGN KEY(CustomerGrpID)
REFERENCES CustomersGroup (CustomerGrpID)ON UPDATE CASCADE ON DELETE CASCADE,
 CONSTRAINT PK_UsersCustomersGroups PRIMARY KEY CLUSTERED (UserID ASC,CustomerGrpID ASC) ON [PRIMARY]) ON [PRIMARY]


IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE       (TABLE_NAME = N'Customers') AND (COLUMN_NAME = N'AccountKind') AND (DATA_TYPE='int') )
begin

	--DECLARE @S SYSNAME
	SET @S=''

	--DECLARE @SQL NVARCHAR(500)
	SET @SQL=''
	WHILE @S is not NULL
	BEGIN
	SELECT @S=NAME FROM sysobjects WHERE NAME  like'DF%Customers%Accou%'
	IF @S<>'' or @S<>NULL
	BEGIN
		SET @SQL='ALTER TABLE Customers DROP CONSTRAINT '+@S
		exec(@SQL)
		SET @S=''
	END
	ELSE 
	SET	@S=NULL
	END

	ALTER TABLE Customers ALTER column AccountKind int 

	ALTER TABLE Customers ADD CONSTRAINT DF_Customers_AccountKind  DEFAULT (0) FOR AccountKind
end

if ( COLUMNPROPERTY( OBJECT_ID('Config'),'SysSmsActive','IsRowGuidCol')is  null )  
ALTER TABLE Config ADD SysSmsActive tinyint NOT NULL DEFAULT(0)


IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Tsh.ClockDmp') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Tsh.ClockDmp (
	KARTNO char(10)   NOT NULL ,
	CLOCKDATE char(10)   NOT NULL ,
	CLOCKTIME char (5)   NOT NULL ,
	PERNO int   NULL ,
	REC numeric(6, 0) NOT NULL ,
	TRANSFERED numeric(6, 0) NULL ,
	SPCARDTYPE numeric(6, 0) NULL ,
	CLOCKKEY char (2)   NULL ,
	DECEMBER numeric(6, 0) NULL ,
	INTELLIGENTLYANALYSED numeric(6, 0) NULL ,
	IO_TYPE char (1)   NULL ,
	MASHINNO char (3)   NULL ,
	SPECCARDNO char(10)   NULL ,
	UNCERTAIN numeric(6, 0) NULL ,
	ComCode numeric(6, 0) NULL ,
	FPM char (1)   NULL ,
	Tag int,
	CONSTRAINT PK_CLOCKDMP PRIMARY KEY  CLUSTERED 
	(
		KARTNO,
		CLOCKDATE,
		CLOCKTIME
	)  ON [PRIMARY] 
) ON [PRIMARY]

 IF NOT  EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_CLOCKDMP' AND type = 'K')
 ALTER TABLE [Tsh].[ClockDmp] ADD  CONSTRAINT [PK_CLOCKDMP] PRIMARY KEY CLUSTERED 
(
	[KARTNO] ASC,
	[CLOCKDATE] ASC,
	[CLOCKTIME] ASC
) ON [PRIMARY]


if ( COLUMNPROPERTY( OBJECT_ID('Tsh.ClockDmp'),'Insertkind','IsRowGuidCol')is  null )  
ALTER TABLE Tsh.ClockDmp ADD Insertkind tinyint NOT NULL DEFAULT(0)

if ( COLUMNPROPERTY( OBJECT_ID('Tsh.ClockDmp'),'Note','IsRowGuidCol')is  null )  
ALTER TABLE Tsh.ClockDmp ADD Note Varchar(100) 

if ( COLUMNPROPERTY( OBJECT_ID('Tsh.ClockDmp'),'ID','IsRowGuidCol')is  null )  
ALTER TABLE Tsh.ClockDmp ADD ID int identity(1,1) Not Null

IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE       (TABLE_NAME = N'ClockDmp') AND (COLUMN_NAME = N'PERNO') AND (DATA_TYPE='int') )
ALTER TABLE Tsh.ClockDmp ALTER column PERNO int 

----------------------------------------------------------------------------------
if ( COLUMNPROPERTY( OBJECT_ID('Counting'),'CountingCalckind','IsRowGuidCol')is  null )  
ALTER TABLE Counting ADD CountingCalckind tinyint NOT NULL DEFAULT(0)

-------------------------------------------------------------------------------
if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'LoansType','IsRowGuidCol')is  null )  
ALTER TABLE FormTypes ADD LoansType int NOT NULL DEFAULT(0)

if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'GuaranteesType','IsRowGuidCol')is  null )  
ALTER TABLE FormTypes ADD GuaranteesType int NOT NULL DEFAULT(0)


if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'LoansFormID','IsRowGuidCol')is  null )  
  ALTER TABLE Forms ADD LoansFormID int   

if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'GuaranteesFormID','IsRowGuidCol')is  null )  
  ALTER TABLE Forms ADD GuaranteesFormID int   


---------------------------------------------------------------------------------------------------------
if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'AidInfo2NoCaption','IsRowGuidCol')is  null )  
ALTER TABLE FormTypes ADD AidInfo2NoCaption varchar(50) 

if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'SubAmountCaption','IsRowGuidCol')is  null )  
ALTER TABLE FormTypes ADD SubAmountCaption varchar(50) 

if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'AidInfoNo2','IsRowGuidCol')is  null )  
  ALTER TABLE Forms ADD AidInfoNo2 float   

if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'AidInfoDate2','IsRowGuidCol')is  null )  
  ALTER TABLE Forms ADD AidInfoDate2 char(10)   

-------------------------------------------------------------------------------
--IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
--WHERE       (TABLE_NAME = N'StuffCoding') AND (COLUMN_NAME = N'c_StuffTecInfo') AND (DATA_TYPE='varchar') AND (CHARACTER_MAXIMUM_LENGTH =150 ))
--ALTER TABLE StuffCoding ALTER COLUMN c_StuffTecInfo VARCHAR(150)

IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'MnuPlaceIDs','IsRowGuidCol')is null )
ALTER TABLE ReciptTypes ADD MnuPlaceIDs VARCHAR(25)

if ( COLUMNPROPERTY( OBJECT_ID('FormItems'),'PerServerID','IsRowGuidCol')is  null )  
ALTER TABLE FormItems ADD PerServerID int 
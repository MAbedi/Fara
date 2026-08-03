----  1402/04/12     UpdateBank20
/*
TMS Workflow Studio
Full SQL script for MS SQL Server databases
version 1.5

To upgrade your database structure from previous versions, see wsSQLServerUpdate.sql file
*/
SET NOCOUNT ON
if not exists (select * from dbo.sysobjects where id = object_id(N'wsworkflowinstance') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE wsworkflowinstance (
  id Integer NOT NULL,
  workflow TEXT,
  workflowdefinitionkey Integer,
  createdon DATETIME,
  modifiedon DATETIME,
  finishedon DATETIME,
  nextruntime DATETIME,
  PRIMARY KEY (id)
)

if not exists (select * from dbo.sysobjects where id = object_id(N'wstasklog') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE wstasklog (
  taskinstancekey Integer NOT NULL,
  eventdate DATETIME NOT NULL,
  operation VARCHAR(1) NOT NULL,
  userid VARCHAR(50),
  info VARCHAR(100),
  info2 VARCHAR(100),
  PRIMARY KEY (taskinstancekey,
  eventdate,
  operation)
)

if not exists (select * from dbo.sysobjects where id = object_id(N'wsattachment') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE wsattachment (
  id Integer NOT NULL,
  workkey Integer,
  createdon DATETIME,
  filecontent IMAGE,
  objecttype Integer,
  PRIMARY KEY (id)
)

if not exists (select * from dbo.sysobjects where id = object_id(N'wstaskinstance') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE wstaskinstance (
  id Integer NOT NULL,
  task TEXT,
  createdon DATETIME,
  userid VARCHAR(50),
  comments TEXT,
  name VARCHAR(50),
  subject VARCHAR(50),
  description TEXT,
  workflowinstancekey Integer,
  workflowdefinitionkey Integer,
  completed VARCHAR(1),
  modifiedon DATETIME,
  modifieduserid VARCHAR(50),
  PRIMARY KEY (id)
)

if not exists (select * from dbo.sysobjects where id = object_id(N'wsworkflowdefinition') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE wsworkflowdefinition (
  id Integer NOT NULL,
  workflow TEXT,
  name VARCHAR(255),
  PRIMARY KEY (id)
)

if not exists (select * from dbo.sysobjects where id = object_id(N'ActionPlans') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE ActionPlans(
	ID Int Identity(1,1) NOT NULL,
	ReciptType tinyInt NOT NULL,
	PersonID1 Int NOT NULL,
	PersonID2 Int NOT NULL,
	ActionPlanDate DATETIME,
	ActionPlanType Int NULL CONSTRAINT DF_ActionPlans_ActionPlanType  DEFAULT (0),
	ActionPlanNote varchar(400) NULL,
	ActionPlanState tinyInt NOT NULL CONSTRAINT DF_ActionPlans_ActionPlanState  DEFAULT (0),
	SendDate DATETIME ,
	UserName varchar(50) NULL,
	ModifyDate DATETIME NOT NULL,
	UserID Int NOT NULL,
	PurposeOfVisit varchar(100) NULL,
 CONSTRAINT FK_ActionPlans_ReciptTypes FOREIGN KEY(ReciptType)     REFERENCES dbo.ReciptTypes1 (ReciptType) ON UPDATE CASCADE ,
 CONSTRAINT FK_ActionPlans_Customers1  FOREIGN KEY(PersonID1)      REFERENCES dbo.Customers (CustID) ON UPDATE CASCADE ,
 CONSTRAINT FK_ActionPlans_Customers2  FOREIGN KEY(PersonID2)      REFERENCES dbo.Customers (CustID),
 CONSTRAINT FK_ActionPlans_LookUps     FOREIGN KEY(ActionPlanType) REFERENCES dbo.LookUps (LookUpID) ON UPDATE CASCADE ,
 CONSTRAINT PK_ActionPlans PRIMARY KEY CLUSTERED (ID) ON [PRIMARY]) ON [PRIMARY]

 ---  StuffCodingImage
 DECLARE @filename Varchar(256)
 SELECT @filename=filename FROM sysfiles WHERE fileid = 1
 set @filename=REPLACE(@filename,'.mdf','.ndf')
 DECLARE @db_name Varchar(256)
 select @db_name= db_name()
 
 IF NOT EXISTS (SELECT * FROM sys.filegroups   WHERE name='Fara_Files')    ---- _FaraFileStream Added
 begin
  if exists (select * from dbo.sysobjects where id = object_id(N'StuffCodingImage') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
   IF  (SELECT count(*) FROM StuffCodingImage   )=0
   drop TABLE dbo.StuffCodingImage
 exec('
ALTER DATABASE ['+@db_name+']  ADD FILEGROUP Fara_Files   
ALTER DATABASE ['+@db_name+']  ADD FILE (NAME = Fara_Files,FILENAME =   '''+@filename+''' ) TO FILEGROUP Fara_Files 
')
end
 
 
 if not exists (select * from dbo.sysobjects where id = object_id(N'StuffCodingImage') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
begin
CREATE TABLE dbo.StuffCodingImage(
ID bigInt Identity(1,1),
StuffCode bigInt NOT NULL,
ImageType Int NULL,
StuffImage varbinary(max) NULL,
CONSTRAINT FK_StuffCodingImage_StuffCoding FOREIGN KEY(StuffCode) REFERENCES dbo.StuffCoding (c_StuffCode)ON UPDATE CASCADE ON DELETE CASCADE,
 CONSTRAINT PK_StuffCodingImage PRIMARY KEY CLUSTERED 
(
ID ASC
) ON [Fara_Files]
) ON [Fara_Files] TEXTIMAGE_ON Fara_Files



EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TitTYPES = (itJPG=0, itPNG=1, itBMP=2)' , 
            @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StuffCodingImage', @level2type=N'COLUMN',@level2name=N'ImageType'


end



if ( COLUMNPROPERTY( OBJECT_ID('ActionPlans'),'PurposeOfVisit','IsRowGuidCol')is null)
ALTER TABLE ActionPlans ADD PurposeOfVisit varchar(100) 


--IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptTypes1_wsWorkflowdefinition' AND type = 'F')
--ALTER TABLE ReciptTypes1 WITH CHECK ADD CONSTRAINT FK_ReciptTypes1_wsWorkflowdefinition FOREIGN KEY (WorkFlowID)
--  REFERENCES wsworkflowdefinition(ID) ON UPDATE CASCADE 


--IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FormTypes_wsWorkflowdefinition' AND type = 'F')
--ALTER TABLE FormTypes WITH CHECK ADD CONSTRAINT FK_FormTypes_wsWorkflowdefinition FOREIGN KEY (WorkFlowID)
--  REFERENCES wsworkflowdefinition(ID) ON UPDATE CASCADE 
--Sheikh 2015/07/26
if ( COLUMNPROPERTY( OBJECT_ID('wstaskinstance'),'AssignedUserID','IsRowGuidCol')is null)
ALTER TABLE [wstaskinstance] ADD [AssignedUserID] VARCHAR(50) 

 if ( COLUMNPROPERTY( OBJECT_ID('wstaskinstance'),'SuperUserID','IsRowGuidCol')is null)
ALTER TABLE wstaskinstance ADD SuperUserID VARCHAR(50) 

if ( COLUMNPROPERTY( OBJECT_ID('CustomersInterView'),'SuccessPercent','IsRowGuidCol')is null)
	ALTER TABLE CustomersInterView ADD SuccessPercent Float

if ( COLUMNPROPERTY( OBJECT_ID('CustomersInterView'),'SatisfactionPercent','IsRowGuidCol')is null)
	ALTER TABLE CustomersInterView ADD SatisfactionPercent Float
----------Sheikh 2015/08/05
if not exists (select * from dbo.sysobjects where id = object_id(N'InterViewStuffRelation') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE InterViewStuffRelation (
  id Integer NOT NULL IDENTITY(1,1),
  StuffID Integer,
  InterViewID Integer,
  PRIMARY KEY (id)
)
if ( COLUMNPROPERTY( OBJECT_ID('CustomersInterView'),'SuccessPercent','IsRowGuidCol')is null)
 ALTER TABLE CustomersInterView ADD SuccessPercent Float

if ( COLUMNPROPERTY( OBJECT_ID('CustomersInterView'),'SatisfactionPercent','IsRowGuidCol')is null)
 ALTER TABLE CustomersInterView ADD SatisfactionPercent Float

if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'OtherRptFiles','IsRowGuidCol')is  null )  
 ALTER TABLE FormTypes ADD OtherRptFiles VarChar (250) 

if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'OtherRptCaptions','IsRowGuidCol')is  null )  
 ALTER TABLE FormTypes ADD OtherRptCaptions VarChar (250) 

if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'RelationshipFormTypes','IsRowGuidCol')is  null )  
 ALTER TABLE FormTypes ADD RelationshipFormTypes VarChar (200) 
 
if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'PostOverallType','IsRowGuidCol')is  null )  
 ALTER TABLE FormTypes ADD PostOverallType int

if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'NotSelcetCheckType1InRecall','IsRowGuidCol')is  null )  
 ALTER TABLE FormTypes ADD NotSelcetCheckType1InRecall Tinyint   NOT NULL CONSTRAINT DF_FormTypes_NotSelcetCheckType1InRecall  DEFAULT (0) 	 

if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'ProjectIDActive','IsRowGuidCol')is null )
 ALTER TABLE FormTypes ADD ProjectIDActive Tinyint NOT NULL DEFAULT (0)
if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'ProjectIDLable','IsRowGuidCol')is null )
 ALTER TABLE FormTypes ADD ProjectIDLable nvarchar(50)

if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'ProjectIDKind','IsRowGuidCol')is null )
 ALTER TABLE FormTypes ADD ProjectIDKind nvarchar(50)

if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'FormStateDefault4Doc','IsRowGuidCol')is  null )  
  ALTER TABLE FormTypes ADD FormStateDefault4Doc Tinyint  NOT NULL CONSTRAINT DF_FormTypes_FormStateDefault4Doc DEFAULT (0) 	   


if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'ConstTopicCode_ArzBed','IsRowGuidCol')is  null )  
ALTER TABLE FormTypes ADD ConstTopicCode_ArzBed bigint  NOT NULL CONSTRAINT DF_FormTypes_ConstTopicCode_ArzBed DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'ConstTopicCode_ArzBes','IsRowGuidCol')is  null )  
ALTER TABLE FormTypes ADD ConstTopicCode_ArzBes bigint  NOT NULL CONSTRAINT DF_FormTypes_ConstTopicCode_ArzBes DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'OtherSettings','IsRowGuidCol')is  null )  
ALTER TABLE FormTypes ADD OtherSettings bigint  NOT NULL CONSTRAINT DF_FormTypes_OtherSettings DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'FormDateBiggerCheckDate','IsRowGuidCol')is  null )  
ALTER TABLE FormTypes ADD FormDateBiggerCheckDate Tinyint  NOT NULL CONSTRAINT DF_FormTypes_FormDateBiggerCheckDate DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'SeparationDoc','IsRowGuidCol')is  null )  
ALTER TABLE FormTypes ADD SeparationDoc Tinyint  NOT NULL CONSTRAINT DF_FormTypes_SeparationDoc DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'Customer2DocType','IsRowGuidCol')is  null )  
ALTER TABLE FormTypes ADD Customer2DocType Tinyint  NOT NULL CONSTRAINT DF_FormTypes_Customer2DocType DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'StandardConsumption','IsRowGuidCol')is  null )  
 ALTER TABLE ReciptItems ADD StandardConsumption  AS (ROUND(ISNULL(StandardConsumptionCo,0)*(InputEntity + OutputEntity),0))

if ( COLUMNPROPERTY( OBJECT_ID('CustomersInterView'),'RowId','IsRowGuidCol')is null)
 ALTER TABLE CustomersInterView ADD RowId Int

if ( COLUMNPROPERTY( OBJECT_ID('CustomersInterView'),'levels','IsRowGuidCol')is null)
 ALTER TABLE CustomersInterView ADD levels Int

if ( COLUMNPROPERTY( OBJECT_ID('CustomersInterView'),'FormCallName','IsRowGuidCol')is null)
 ALTER TABLE CustomersInterView ADD FormCallName varchar(50)

if ( COLUMNPROPERTY( OBJECT_ID('CustomersInterView'),'FormCallID','IsRowGuidCol')is null)
 ALTER TABLE CustomersInterView ADD FormCallID bigInt


if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'UserRegistrationDoc','IsRowGuidCol')is  null )  
 ALTER TABLE Recipts ADD UserRegistrationDoc VarChar (50) 

if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'UserRegistrationDoc','IsRowGuidCol')is  null )  
 ALTER TABLE Forms ADD UserRegistrationDoc VarChar (50) 

if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'DefaultDuration','IsRowGuidCol')is  null )  
 ALTER TABLE Recipts ADD DefaultDuration smallInt

if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'DefaultDuration','IsRowGuidCol')is  null )  
 ALTER TABLE Forms ADD DefaultDuration smallInt

 if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'TruckNumber','IsRowGuidCol')is  null )  
 ALTER TABLE Forms ADD TruckNumber varchar(100) 

  IF NOT EXISTS (SELECT CHARACTER_MAXIMUM_LENGTH FROM INFORMATION_SCHEMA.COLUMNS
       WHERE        (TABLE_NAME = N'Forms') AND (COLUMN_NAME = N'TruckNumber') AND (CHARACTER_MAXIMUM_LENGTH = 100))
    ALTER TABLE Forms	ALTER COLUMN TruckNumber varchar(100)


if NOT ( COLUMNPROPERTY( OBJECT_ID('Forms'),'CostFactorsType','IsRowGuidCol')is  null )  
 IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_Forms_CostFactorsType' AND type = 'D')
begin
    EXEC DBO.DROP_CONSTRAINT  'DF%Forms%CostFacto%', 'Forms'
ALTER TABLE Forms ADD CONSTRAINT DF_Forms_CostFactorsType  DEFAULT (0) FOR CostFactorsType
end


 if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'CalcGiftItems','IsRowGuidCol')is  null )  
 ALTER TABLE Recipts ADD CalcGiftItems bit

 
DECLARE @DefaultDateActive TinyInt
  SELECT  @DefaultDateActive=DefaultDateActive FROM Config

if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'DefaultDateActive','IsRowGuidCol')is  null )
begin  
 exec('ALTER TABLE FormTypes ADD DefaultDateActive TinyInt  NOT NULL CONSTRAINT DF_FormTypes_DefaultDateActive  DEFAULT ('+@DefaultDateActive+') ')
 exec('UPDATE  FormTypes SET DefaultDateActive = 0 WHERE FormType in (10,50)')
end

IF EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes2') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
 if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'DefaultDateActive','IsRowGuidCol')is  null )  
   exec('ALTER TABLE ReciptTypes2 ADD DefaultDateActive TinyInt  NOT NULL CONSTRAINT DF_ReciptTypes2_DefaultDateActive  DEFAULT ('+@DefaultDateActive+') ')	


 if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'CustomersNoDiscount','IsRowGuidCol')is  null )  
   ALTER TABLE ReciptTypes2 ADD CustomersNoDiscount TinyInt  NOT NULL CONSTRAINT DF_ReciptTypes2_CustomersNoDiscount  DEFAULT (0) 	 

end

--if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'ID','IsRowGuidCol')is  null )  
-- ALTER TABLE ReciptItems ADD ID  AS case when ReciptItemID<0 then -1 else 1 end*(CAST(LTRIM(YearID) +RIGHT('0'+ LTRIM(ServerID),2) +  LTRIM(abs(ReciptItemID)) AS BigInt))

if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'ID','IsRowGuidCol')is  null )  
 ALTER TABLE ReciptItems ADD ID  AS (CAST(LTRIM(YearID) +  LTRIM(abs(ReciptID))+RIGHT('0'+ LTRIM(ServerID),2) +  LTRIM(abs(ReciptItemID)) AS decimal(26,0)))



if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'ParentID','IsRowGuidCol')is  null )  
 ALTER TABLE ReciptItems ADD ParentID  AS (CAST(LTRIM(YearID) +RIGHT('0'+ LTRIM(ServerID),2) +  LTRIM(abs(preReciptItemID)) AS BigInt))

 if not ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'ID','IsRowGuidCol')is  null )  
  ALTER TABLE Recipts drop column ID

if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'ID','IsRowGuidCol')is  null )  
 ALTER TABLE Recipts ADD ID  AS case when ReciptID<0 then -1 else 1 end*(CAST(LTRIM(YearID) +RIGHT('0'+ LTRIM(ServerID),2) +  LTRIM(abs(ReciptID)) AS BigInt))


 if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'CalcCostStorage','IsRowGuidCol')is  null )  
 ALTER TABLE Recipts ADD CalcCostStorage  bit

 if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'PortageBedbes','IsRowGuidCol')is  null )  
 ALTER TABLE Recipts ADD PortageBedbes  tinyint  NOT NULL CONSTRAINT DF_Recipts_PortageBedbes  DEFAULT (0) 	 

 if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'ReciptNote2','IsRowGuidCol')is  null )  
 ALTER TABLE Recipts ADD ReciptNote2  varchar(400)	 

if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'PO','IsRowGuidCol')is  null )  
 ALTER TABLE Recipts ADD PO  varchar(30)	
 
if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'ReciptNumberFormer','IsRowGuidCol')is  null )  
 ALTER TABLE Recipts ADD ReciptNumberFormer  int	
  
if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'External_ID','IsRowGuidCol')is  null )  
 ALTER TABLE Recipts ADD External_ID varchar(100)	

if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'PO','IsRowGuidCol')is  null )  
 ALTER TABLE ReciptItems ADD PO  varchar(30)	 

--if ( COLUMNPROPERTY( OBJECT_ID('SellsInfo'),'SellsCodeParent','IsRowGuidCol')is  null )  
-- ALTER TABLE SellsInfo ADD SellsCodeParent Int

--IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_SellsInfo_SellsCode' AND type = 'F')
-- ALTER TABLE SellsInfo  WITH CHECK ADD  CONSTRAINT FK_SellsInfo_SellsCode FOREIGN KEY(SellsCodeParent) 
-- REFERENCES SellsInfo (SellsCode) 

if ( COLUMNPROPERTY( OBJECT_ID('CustomersGroup'),'SellsTypeCodes','IsRowGuidCol')is  null )  
 ALTER TABLE CustomersGroup ADD SellsTypeCodes  varchar(8000)

if ( COLUMNPROPERTY( OBJECT_ID('Stores'),'CalculateOutPutFields','IsRowGuidCol')is  null )  
  ALTER TABLE Stores ADD CalculateOutPutFields BigInt

if ( COLUMNPROPERTY( OBJECT_ID('Stores'),'Storlength','IsRowGuidCol')is  null )  
  ALTER TABLE Stores ADD Storlength float NOT NULL CONSTRAINT DF_Stores_Storlength DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Stores'),'StorWidth','IsRowGuidCol')is  null )  
  ALTER TABLE Stores ADD StorWidth float NOT NULL CONSTRAINT DF_Stores_StorWidth DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Stores'),'StorHeight','IsRowGuidCol')is  null )  
  ALTER TABLE Stores ADD StorHeight float NOT NULL CONSTRAINT DF_Stores_StorHeight DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Stores'),'WarehouseID','IsRowGuidCol')is  null )  
 ALTER TABLE Stores ADD WarehouseID  varchar(100)

if ( COLUMNPROPERTY( OBJECT_ID('Stores'),'PostCode','IsRowGuidCol')is  null )  
 ALTER TABLE Stores ADD PostCode  varchar(12)

if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'DeficitValue2','IsRowGuidCol')is  null )  
ALTER TABLE ReciptItems ADD DeficitValue2 Money NOT NULL CONSTRAINT DF_ReciptItems_DeficitValue2 DEFAULT (0)
  
if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'DeficitValue3','IsRowGuidCol')is  null )  
ALTER TABLE ReciptItems ADD DeficitValue3 Money NOT NULL CONSTRAINT DF_ReciptItems_DeficitValue3 DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'DeficitValue4','IsRowGuidCol')is  null )  
ALTER TABLE ReciptItems ADD DeficitValue4 Money NOT NULL CONSTRAINT DF_ReciptItems_DeficitValue4 DEFAULT (0)


if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'Commission','IsRowGuidCol')is  null )  
ALTER TABLE ReciptItems ADD Commission decimal(20,3) NOT NULL CONSTRAINT DF_ReciptItems_Commission DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'CurrencyDiscounts','IsRowGuidCol')is  null )  
ALTER TABLE ReciptItems ADD CurrencyDiscounts decimal(20,3) NOT NULL CONSTRAINT DF_ReciptItems_CurrencyDiscounts DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'RIDateMS','IsRowGuidCol')is  null )  
ALTER TABLE ReciptItems ADD RIDateMS datetime

if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'RIDateME','IsRowGuidCol')is  null )  
ALTER TABLE ReciptItems ADD RIDateME datetime

if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'InBox','IsRowGuidCol')is  null )  
  ALTER TABLE ReciptItems ADD InBox float 

if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'StuffpublicPercentI','IsRowGuidCol')is  null )  
  ALTER TABLE ReciptItems ADD StuffpublicPercentI float 
  
if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'ArzPortage','IsRowGuidCol')is  null )  
  ALTER TABLE ReciptItems ADD ArzPortage float  NOT NULL CONSTRAINT DF_ReciptItems_ArzPortage DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'IneffectiveInput','IsRowGuidCol')is  null )  
  ALTER TABLE ReciptItems ADD IneffectiveInput Tinyint  NOT NULL CONSTRAINT DF_ReciptItems_IneffectiveInput DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'SpecialCode','IsRowGuidCol')is  null )  
  ALTER TABLE ReciptItems ADD SpecialCode char(25) 

  if (select  character_maximum_length 
  from information_schema.columns  
 where table_name  = 'ReciptItems' and column_name = 'SpecialCode')<25
   ALTER TABLE ReciptItems alter column SpecialCode char(25) 

  

if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'ArzRate2','IsRowGuidCol')is  null )  
  ALTER TABLE ReciptItems ADD ArzRate2 float 
  
if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'HowConvert','IsRowGuidCol')is  null )  
  ALTER TABLE ReciptItems ADD HowConvert tinyint 

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'ArzTypeID2','IsRowGuidCol')is  null )  
  ALTER TABLE ReciptItems ADD ArzTypeID2 int  

if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'ArzAmount2','IsRowGuidCol')is  null )  
  ALTER TABLE ReciptItems ADD ArzAmount2 float 

if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'ExchangePrice','IsRowGuidCol')is  null )  
  ALTER TABLE ReciptItems ADD ExchangePrice money 


if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'TozinID','IsRowGuidCol')is  null )  
BEGIN
 ALTER TABLE ReciptItems ADD TozinID int 
 ALTER TABLE ReciptItems ADD CONSTRAINT FK_ReciptItems_Tozin FOREIGN KEY (TozinID)REFERENCES Tozin (TozinID)
END

if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'CommissionPrice','IsRowGuidCol')is  null ) 
BEGIN 
  ALTER TABLE ReciptItems ADD CommissionPrice money   NOT NULL CONSTRAINT DF_ReciptItems_CommissionPrice DEFAULT (0)
  EXEC('UPDATE ReciptItems SET  CommissionPrice =ROUND((InputWeight + OutputWeight) *  Commission  , 0) WHERE (InputWeight + OutputWeight) *  Commission<>0')
END

if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'FormItems_ID','IsRowGuidCol')is  null )  
  ALTER TABLE ReciptItems ADD FormItems_ID bigint  

-------------------------------------------------------------------------------------------------------------------------------------
if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'UseOtherID_Item','IsRowGuidCol')is  null )  
begin
  ALTER TABLE ReciptItems ADD UseOtherID_Item int --- CONSTRAINT DF_ReciptItems_UseOtherID_Item    DEFAULT (0) --NvarChar (15) NULL 
--  ALTER TABLE ReciptItems WITH CHECK ADD CONSTRAINT	FK_ReciptItems_UseOthers FOREIGN KEY (UseOtherID_Item)   REFERENCES UseOthers	(UseOtherID)   
end

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptItems_UseOthers' AND type = 'F')
ALTER TABLE ReciptItems DROP CONSTRAINT FK_ReciptItems_UseOthers

  
IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
                WHERE (TABLE_NAME = N'ReciptItems') AND (COLUMN_NAME = N'UseOtherID_Item') AND (DATA_TYPE = N'int'))
if not( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'UseOtherID_Item','IsRowGuidCol')is  null )  
begin
-----  exec('update ReciptItems set UseOtherID_Item = 0 where UseOtherID_Item is NULL')
	ALTER TABLE ReciptItems ALTER COLUMN UseOtherID_Item int   
	--ALTER TABLE ReciptItems ADD CONSTRAINT DF_ReciptItems_UseOtherID_Item  DEFAULT (0) FOR UseOtherID_Item
end

 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_ReciptItems_UseOtherID_Item' AND type = 'D')
 begin
    EXEC DBO.DROP_CONSTRAINT  'DF_ReciptItems_UseOtherID_Item', 'ReciptItems'
end
	ALTER TABLE ReciptItems ALTER COLUMN UseOtherID_Item int   null


-------------------------------------------------------------------------------------------------------------------------------------
if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'CommissionCurrency','IsRowGuidCol')is  null )  
  ALTER TABLE ReciptItems ADD  CommissionCurrency DECIMAL(20,8)  

 
if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'UnitCode2','IsRowGuidCol')is  null )  
  ALTER TABLE ReciptItems ADD  UnitCode2 tinyint

 if not exists (select * from dbo.sysobjects where id = object_id(N'Stereotypy') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
begin
CREATE TABLE dbo.Stereotypy(  StereotypyID Int , StereotypyCaption varchar (100), ImageType Int NULL, StuffImage varbinary(max) NULL,
 CONSTRAINT PK_Stereotypy PRIMARY KEY CLUSTERED (StereotypyID ASC) ON [Fara_Files] ) ON [Fara_Files] TEXTIMAGE_ON Fara_Files
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TitTYPES = (itJPG=0, itPNG=1, itBMP=2)' , 
            @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Stereotypy', @level2type=N'COLUMN',@level2name=N'ImageType'
end

if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'StereotypyID','IsRowGuidCol')is null )
 ALTER TABLE ReciptItems ADD StereotypyID int 
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptItems_Stereotypy_StereotypyID' AND type = 'F')
ALTER TABLE ReciptItems WITH CHECK ADD CONSTRAINT FK_ReciptItems_Stereotypy_StereotypyID FOREIGN KEY (StereotypyID)
  REFERENCES Stereotypy(StereotypyID) ON UPDATE CASCADE 




IF NOT EXISTS (SELECT CHARACTER_MAXIMUM_LENGTH FROM INFORMATION_SCHEMA.COLUMNS
       WHERE        (TABLE_NAME = N'ReciptItems') AND (COLUMN_NAME = N'Commission') AND (NUMERIC_SCALE= 8))
begin
  ALTER TABLE ReciptItems ALTER COLUMN  CommissionCurrency DECIMAL(20,8)  
  ALTER TABLE ReciptItems ALTER COLUMN  Commission DECIMAL(20,8)  
end





if not exists (select * from dbo.sysobjects where id = object_id(N'SpecialCodings') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
begin
  CREATE TABLE dbo.SpecialCodings(
	SpecialCodingID int IDENTITY(1,1) NOT NULL,
	CharNo int NOT NULL,
	CharKey char(10) NOT NULL,
	CharName Nvarchar (100),
	CharKind1 Nvarchar (100),
	CharKind2 Nvarchar (100),
	CharKind3 Nvarchar (100),
 CONSTRAINT PK_SpecialCodings PRIMARY KEY CLUSTERED (SpecialCodingID ASC) ON [PRIMARY]) ON [PRIMARY]

 
end

if not exists (select * from sysindexes WHERE     (name = N'IX_CharNo'))
CREATE UNIQUE NONCLUSTERED INDEX IX_CharNo ON SpecialCodings (CharNo ASC,CharKey ASC) ON [PRIMARY]


if not exists (select * from dbo.sysobjects where id = object_id(N'Formula') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Formula (
  FormulaID Integer NOT NULL ,
  Kind Integer,
  Formula varchar(1000),
  PRIMARY KEY (FormulaID)
)

if ( COLUMNPROPERTY( OBJECT_ID('StuffGroups'),'StuffCodingKind','IsRowGuidCol')is  null )  
ALTER TABLE StuffGroups ADD StuffCodingKind tinyInt NOT NULL CONSTRAINT DF_StuffGroups_StuffCodingKind DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'OperatorID','IsRowGuidCol')is  null )  
  ALTER TABLE Forms ADD OperatorID Int

 if  exists (select * from dbo.sysobjects where id = object_id(N'ReciptsRegulates') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 if ( COLUMNPROPERTY( OBJECT_ID('ReciptsRegulates'),'acc_TopicCode','IsRowGuidCol')is  null )  
ALTER TABLE ReciptsRegulates ADD acc_TopicCode BigInt NOT NULL CONSTRAINT DF_ReciptsRegulates_acc_TopicCode DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('ReciptsRegulates'),'acc_DetailCode','IsRowGuidCol')is  null )  
ALTER TABLE ReciptsRegulates ADD acc_DetailCode varchar(12) NOT NULL CONSTRAINT DF_ReciptsRegulates_acc_DetailCode DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'AlternativeCustID','IsRowGuidCol')is null )
 ALTER TABLE Customers ADD AlternativeCustID BigInt

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'AlternativeCustID2','IsRowGuidCol')is null )
 ALTER TABLE Customers ADD AlternativeCustID2 BigInt

if ( COLUMNPROPERTY( OBJECT_ID('StuffCoding'),'UnitCode2','IsRowGuidCol')is  null )  
ALTER TABLE StuffCoding ADD UnitCode2 tinyInt 
 
if ( COLUMNPROPERTY( OBJECT_ID('StuffCoding'),'StuffVolume','IsRowGuidCol')is  null )  
ALTER TABLE StuffCoding ADD StuffVolume Float 

if ( COLUMNPROPERTY( OBJECT_ID('StuffCoding'),'StuffWeight','IsRowGuidCol')is  null )  
ALTER TABLE StuffCoding ADD StuffWeight Float

if ( COLUMNPROPERTY( OBJECT_ID('StuffCoding'),'DayOfStorage','IsRowGuidCol')is  null )  
ALTER TABLE StuffCoding ADD DayOfStorage int

if ( COLUMNPROPERTY( OBJECT_ID('StuffCoding'),'SellPrice5','IsRowGuidCol')is  null )  
ALTER TABLE StuffCoding ADD SellPrice5 money

if ( COLUMNPROPERTY( OBJECT_ID('StuffCoding'),'SellPrice6','IsRowGuidCol')is  null )  
ALTER TABLE StuffCoding ADD SellPrice6 money

if ( COLUMNPROPERTY( OBJECT_ID('StuffCoding'),'SellPrice7','IsRowGuidCol')is  null )  
ALTER TABLE StuffCoding ADD SellPrice7 money 

if ( COLUMNPROPERTY( OBJECT_ID('StuffCoding'),'BlockOutput','IsRowGuidCol')is  null )  
ALTER TABLE StuffCoding ADD BlockOutput tinyint  NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('StuffCoding'),'c_StuffName_L2','IsRowGuidCol')is  null )  
ALTER TABLE StuffCoding ADD c_StuffName_L2 varchar(150)  

if ( COLUMNPROPERTY( OBJECT_ID('StuffCoding'),'DefaultValue','IsRowGuidCol')is  null )  
ALTER TABLE StuffCoding ADD DefaultValue float  

if ( COLUMNPROPERTY( OBJECT_ID('StuffCoding'),'CustIdOrganic','IsRowGuidCol')is  null )  
ALTER TABLE StuffCoding ADD CustIdOrganic int  

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_StuffCoding_Customers' AND type = 'F')
ALTER TABLE StuffCoding WITH CHECK ADD CONSTRAINT FK_StuffCoding_Customers FOREIGN KEY (CustIdOrganic) REFERENCES dbo.Customers(CustID)

if ( COLUMNPROPERTY( OBJECT_ID('StuffCoding'),'ExternalId','IsRowGuidCol')is  null )  
ALTER TABLE StuffCoding ADD ExternalId varchar(100)  


if ( COLUMNPROPERTY( OBJECT_ID('StuffGroups'),'VatExemptOn','IsRowGuidCol')is  null )  
ALTER TABLE StuffGroups ADD VatExemptOn TinyInt NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('StuffGroups'),'SarFaslType','IsRowGuidCol')is  null )  
ALTER TABLE StuffGroups ADD SarFaslType TinyInt NOT NULL  CONSTRAINT DF_StuffGroups_acc_SarFaslType DEFAULT (5)

if ( COLUMNPROPERTY( OBJECT_ID('StuffGroups'),'GroupName_L2','IsRowGuidCol')is  null )  
ALTER TABLE StuffGroups ADD GroupName_L2 varchar(50)  

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'VatValidityDate','IsRowGuidCol')is null )
 ALTER TABLE Customers ADD VatValidityDate char(10)

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'VatValidityDate','IsRowGuidCol')is null )
 ALTER TABLE Customers ADD VatValidityDate char(10)

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'BusinesslicenseValidityDate','IsRowGuidCol')is null )
 ALTER TABLE Customers ADD BusinesslicenseValidityDate char(10)

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'LeaseValidityDate','IsRowGuidCol')is null )
 ALTER TABLE Customers ADD LeaseValidityDate char(10)

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'Area','IsRowGuidCol')is null )
 ALTER TABLE Customers ADD Area Float

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'Degree','IsRowGuidCol')is null )
 ALTER TABLE Customers ADD Degree char(1)

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'Score','IsRowGuidCol')is null )
 ALTER TABLE Customers ADD Score Float
 
if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'NumberCreditInstallments','IsRowGuidCol')is null )
 ALTER TABLE Customers ADD  NumberCreditInstallments Int

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'MaxWeeklyShoppingCredit','IsRowGuidCol')is null )
 ALTER TABLE Customers ADD  MaxWeeklyShoppingCredit Money
 
if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'MinWeeklyShoppingAmount','IsRowGuidCol')is null )
 ALTER TABLE Customers ADD  MinWeeklyShoppingAmount Money

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'DayOrder','IsRowGuidCol')is null )
 ALTER TABLE Customers ADD  DayOrder TinyInt

IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes1') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
   IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE        (TABLE_NAME = N'ReciptTypes1') AND (COLUMN_NAME = N'ShowNotEntityOnSearch') AND (DATA_TYPE = N'bigint'))
begin
    EXEC DBO.DROP_CONSTRAINT  'DF%ReciptTyp%ShowN%', 'ReciptTypes1'
    ALTER TABLE ReciptTypes1 ALTER COLUMN ShowNotEntityOnSearch bigint   
	ALTER TABLE ReciptTypes1 ADD CONSTRAINT DF_ReciptTypes1_ShowNotEntityOnSearch  DEFAULT (0) FOR ShowNotEntityOnSearch
end
END

IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes2') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
   IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE        (TABLE_NAME = N'ReciptTypes2') AND (COLUMN_NAME = N'RecuestActive') AND (DATA_TYPE = N'bigint'))
begin
    EXEC DBO.DROP_CONSTRAINT  'DF_ReciptTypes2_RecuestActive', 'ReciptTypes2'
    ALTER TABLE ReciptTypes2 ALTER COLUMN RecuestActive bigint   
	ALTER TABLE ReciptTypes2 ADD CONSTRAINT DF_ReciptTypes2_RecuestActive  DEFAULT (0) FOR RecuestActive
end
END



IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes2') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
INSERT INTO ReciptTypes2
                         ( ReciptType2,ConstTopicCode_ArzBed, ConstTopicCode_ArzBes)
SELECT        ReciptTypes1.ReciptType,0 ConstTopicCode_ArzBed,0 ConstTopicCode_ArzBes
FROM            ReciptTypes1 LEFT OUTER JOIN
                         ReciptTypes2 AS ReciptTypes2_1 ON ReciptTypes1.ReciptType = ReciptTypes2_1.ReciptType2
WHERE        (ReciptTypes2_1.ReciptType2 IS NULL)

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'CustName_L2','IsRowGuidCol')is null )
 ALTER TABLE Customers ADD CustName_L2 varchar(150)

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'PaymentCode','IsRowGuidCol')is null )
 ALTER TABLE Customers ADD PaymentCode BigInt 

 if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'TelegramChatID','IsRowGuidCol')is null )
 ALTER TABLE Customers ADD TelegramChatID  char(30)

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'PostControl','IsRowGuidCol')is null )
 ALTER TABLE Customers ADD PostControl  Tinyint

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'T_Tabeiat','IsRowGuidCol')is null )
 ALTER TABLE Customers ADD T_Tabeiat  Tinyint

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'PelakSabtiAsli','IsRowGuidCol')is null )
 ALTER TABLE Customers ADD PelakSabtiAsli  char(25)

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'PelakSabtiFari','IsRowGuidCol')is null )
 ALTER TABLE Customers ADD PelakSabtiFari  char(25)

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'BankIDc','IsRowGuidCol')is null )
 ALTER TABLE Customers ADD BankIDc  char(3)

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'DiscountOne','IsRowGuidCol')is  null )  
ALTER TABLE Customers ADD DiscountOne Float 
 
if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'CarType','IsRowGuidCol')is  null )  
ALTER TABLE Customers ADD CarType varchar(30) 

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'ExternalId','IsRowGuidCol')is  null )  
ALTER TABLE Customers ADD ExternalId varchar(100) 

ALTER TABLE Customers  ALTER COLUMN Address VARCHAR(300)

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'NationalCode','IsRowGuidCol')is  null )  
ALTER TABLE Customers ADD NationalCode varchar(30) 

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'TradeSystemCode','IsRowGuidCol')is  null )  
ALTER TABLE Customers ADD TradeSystemCode varchar(30) 

  


if ( COLUMNPROPERTY( OBJECT_ID('CustomersGroup'),'CustomerGrpName_L2','IsRowGuidCol')is null )
 ALTER TABLE CustomersGroup ADD CustomerGrpName_L2 varchar(80)

if ( COLUMNPROPERTY( OBJECT_ID('LookUps'),'LookUpNote','IsRowGuidCol')is null )
 ALTER TABLE LookUps ADD LookUpNote varchar(300)

if ( COLUMNPROPERTY( OBJECT_ID('LookUps'),'LookUpNote2','IsRowGuidCol')is null )
 ALTER TABLE LookUps ADD LookUpNote2 varchar(300)

if ( COLUMNPROPERTY( OBJECT_ID('LookUps'),'PayType','IsRowGuidCol')is null )
 ALTER TABLE LookUps ADD PayType  char(3)



if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'ReciptDateMiladi','IsRowGuidCol')is null )
 ALTER TABLE Recipts ADD ReciptDateMiladi DateTime

if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'MachineFullWeight','IsRowGuidCol')is  null )  
  ALTER TABLE Recipts ADD MachineFullWeight Float NOT NULL CONSTRAINT DF_Recipts_MachineFullWeight DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'MachineWeight','IsRowGuidCol')is  null )  
  ALTER TABLE Recipts ADD MachineWeight Float NOT NULL CONSTRAINT DF_Recipts_MachineWeight DEFAULT (0)


if ( COLUMNPROPERTY( OBJECT_ID('CountingItems'),'ReciptItemID','IsRowGuidCol')is  null )  
  ALTER TABLE CountingItems ADD ReciptItemID int 

if ( COLUMNPROPERTY( OBJECT_ID('CountingItems'),'YearID','IsRowGuidCol')is  null )  
  ALTER TABLE CountingItems ADD YearID int 

if ( COLUMNPROPERTY( OBJECT_ID('CountingItems'),'ServerID','IsRowGuidCol')is  null )  
  ALTER TABLE CountingItems ADD ServerID int NOT NULL CONSTRAINT DF_CountingItems_ServerID DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'PersonID4','IsRowGuidCol')is  null )  
BEGIN
 ALTER TABLE Recipts ADD PersonID4 int NOT NULL CONSTRAINT DF_Recipts_PersonID4 DEFAULT (0)
 ALTER TABLE Recipts ADD CONSTRAINT FK_Recipts_Customers4 FOREIGN KEY (PersonID4)REFERENCES Customers (CustID)
END

if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'PersonID5','IsRowGuidCol')is  null )  
BEGIN
 ALTER TABLE Recipts ADD PersonID5 int NOT NULL CONSTRAINT DF_Recipts_PersonID5 DEFAULT (0)
 ALTER TABLE Recipts ADD CONSTRAINT FK_Recipts_Customers5 FOREIGN KEY (PersonID5)REFERENCES Customers (CustID)
END



if ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'PersonID2','IsRowGuidCol')is  null )  
BEGIN
 ALTER TABLE Tozin ADD PersonID2 int NOT NULL CONSTRAINT DF_Tozin_PersonID2 DEFAULT (0)
 ALTER TABLE Tozin ADD CONSTRAINT FK_Tozin_Customers2 FOREIGN KEY (PersonID2)REFERENCES Customers (CustID)
END


if ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'IsSystem','IsRowGuidCol')is  null )  
 ALTER TABLE Tozin ADD IsSystem bit NOT NULL  DEFAULT (0)


 
if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'TozinID','IsRowGuidCol')is  null )  
BEGIN
 ALTER TABLE Recipts ADD TozinID int 
 ALTER TABLE Recipts ADD CONSTRAINT FK_Recipts_Tozin FOREIGN KEY (TozinID)REFERENCES Tozin (TozinID)
END


if ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'RelatedRecipts','IsRowGuidCol')is  null )  
  ALTER TABLE Tozin ADD RelatedRecipts varchar(27) 

if ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'ReciptID','IsRowGuidCol')is  null )  
  ALTER TABLE Tozin ADD ReciptID int

if ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'TozinState','IsRowGuidCol')is  null )  
  ALTER TABLE Tozin ADD TozinState Tinyint  NOT NULL CONSTRAINT DF_Tozin_TozinState DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'PersonID3','IsRowGuidCol')is  null )  
BEGIN
 ALTER TABLE Tozin ADD PersonID3 int NOT NULL CONSTRAINT DF_Tozin_PersonID3 DEFAULT (0)
 ALTER TABLE Tozin ADD CONSTRAINT FK_Tozin_Customers3 FOREIGN KEY (PersonID3)REFERENCES Customers (CustID)
END

if ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'NumberOfBags','IsRowGuidCol')is  null )  
  ALTER TABLE Tozin ADD NumberOfBags decimal(18,2)

if ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'ServerID','IsRowGuidCol')is  null )  
  ALTER TABLE Tozin ADD ServerID int NOT NULL CONSTRAINT DF_Tozin_ServerID DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'YearID','IsRowGuidCol')is  null )  
  ALTER TABLE Tozin ADD YearID int NOT NULL CONSTRAINT DF_Tozin_YearID DEFAULT (1395)

if ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'PrvTozinID','IsRowGuidCol')is  null )  
  ALTER TABLE Tozin ADD PrvTozinID int 

if ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'WeightKind','IsRowGuidCol')is  null )  
  ALTER TABLE Tozin ADD WeightKind tinyint NOT NULL CONSTRAINT DF_Tozin_WeightKind DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'ParentReciptItemID','IsRowGuidCol')is  null )  
  ALTER TABLE Tozin ADD ParentReciptItemID int 

if ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'DirectDownload','IsRowGuidCol')is  null )  
  ALTER TABLE Tozin ADD DirectDownload tinyint NOT NULL CONSTRAINT DF_Tozin_DirectDownload DEFAULT (0)


if ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'SecondType','IsRowGuidCol')is  null )  
  BEGIN
	ALTER TABLE Tozin ADD SecondType int NOT NULL CONSTRAINT DF_Tozin_SecondType DEFAULT (0)
	ALTER TABLE Tozin ADD  CONSTRAINT FK_Tozin_LookUps FOREIGN KEY(SecondType) REFERENCES LookUps (LookUpID)
  END


if ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'MasirID','IsRowGuidCol')is  null )  
  ALTER TABLE Tozin ADD MasirID int 


if ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'UseUnitID','IsRowGuidCol')is null ) 
  begin 
    ALTER TABLE Tozin ADD UseUnitID int NOT NULL DEFAULT (0) 
    ALTER TABLE Tozin ADD CONSTRAINT FK_Tozin_UseUnits    FOREIGN KEY ( UseUnitID ) REFERENCES UseUnits	(UseUnitID) 
  end


if ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'StoreID2','IsRowGuidCol')is  null )  
 ALTER TABLE Tozin ADD StoreID2  smallint NOT NULL  DEFAULT (0)  

if ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'AidNumber','IsRowGuidCol')is  null )  
  ALTER TABLE Tozin ADD AidNumber float

if ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'AidDate','IsRowGuidCol')is  null )  
  ALTER TABLE Tozin ADD AidDate char(10) NOT NULL CONSTRAINT DF_Tozin_AidDate DEFAULT ('')

if ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'PrvYearID','IsRowGuidCol')is  null )  
  ALTER TABLE Tozin ADD PrvYearID int

if ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'TruckNumber','IsRowGuidCol')is  null )  
  ALTER TABLE Tozin ADD TruckNumber varchar(100) 

  IF NOT EXISTS (SELECT CHARACTER_MAXIMUM_LENGTH FROM INFORMATION_SCHEMA.COLUMNS
       WHERE        (TABLE_NAME = N'Tozin') AND (COLUMN_NAME = N'TruckNumber') AND (CHARACTER_MAXIMUM_LENGTH = 100))
    ALTER TABLE Tozin	ALTER COLUMN TruckNumber varchar(100)

  


if ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'SellsMethod','IsRowGuidCol')is  null )  
begin
  ALTER TABLE Tozin ADD SellsMethod int NOT NULL DEFAULT (1)
  ALTER TABLE Tozin ADD CONSTRAINT FK_Tozin_SellsMethods FOREIGN KEY (SellsMethod)REFERENCES SellsMethods (SellsMethod)  
END

if ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'EnterDateShamsi','IsRowGuidCol')is  null )  
  ALTER TABLE Tozin ADD EnterDateShamsi char(10) NOT NULL CONSTRAINT DF_Tozin_EnterDateShamsi DEFAULT ('')

if ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'ExitDateShamsi','IsRowGuidCol')is  null )  
  ALTER TABLE Tozin ADD ExitDateShamsi char(10)  NULL CONSTRAINT DF_Tozin_ExitDateShamsi DEFAULT ('')

if ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'EnterTimeShamsi','IsRowGuidCol')is  null )  
  ALTER TABLE Tozin ADD EnterTimeShamsi char(10) NOT NULL CONSTRAINT DF_Tozin_EnterTimeShamsi DEFAULT ('')

if ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'ExitTimeShamsi','IsRowGuidCol')is  null )  
  ALTER TABLE Tozin ADD ExitTimeShamsi char(10)  NULL CONSTRAINT DF_Tozin_ExitTimeShamsi DEFAULT ('')


if ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'PersonID4','IsRowGuidCol')is  null )  
BEGIN
 ALTER TABLE Tozin ADD PersonID4 int NOT NULL CONSTRAINT DF_Tozin_PersonID4 DEFAULT (0)
 ALTER TABLE Tozin ADD CONSTRAINT FK_Tozin_Customers4 FOREIGN KEY (PersonID4)REFERENCES Customers (CustID)
END

if ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'PersonID5','IsRowGuidCol')is  null )  
BEGIN
 ALTER TABLE Tozin ADD PersonID5 int NOT NULL CONSTRAINT DF_Tozin_PersonID5 DEFAULT (0)
 ALTER TABLE Tozin ADD CONSTRAINT FK_Tozin_Customers5 FOREIGN KEY (PersonID5)REFERENCES Customers (CustID)
END


if ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'PO','IsRowGuidCol')is  null )  
 ALTER TABLE Tozin ADD PO  varchar(30)	 

if ( COLUMNPROPERTY( OBJECT_ID('Agreements'),'SellsMethod','IsRowGuidCol')is  null )  
begin
 ALTER TABLE Agreements ADD SellsMethod int NOT NULL DEFAULT (1)
 ALTER TABLE Agreements ADD CONSTRAINT FK_Agreements_SellsMethods FOREIGN KEY (SellsMethod)REFERENCES
   SellsMethods (SellsMethod) 
end

 if not exists (select * from dbo.sysobjects where id = object_id(N'UsersStoreReciptTypes') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE UsersStoreReciptTypes(
	UserID int NOT NULL,
	StoreID smallint NOT NULL,
	ReciptType tinyint NOT NULL,
 CONSTRAINT PK_UsersStoreReciptTypes PRIMARY KEY CLUSTERED (UserID ,StoreID ,ReciptType ) ON [PRIMARY]) ON [PRIMARY]

if not exists (select * from dbo.sysobjects where id = object_id(N'KalaTypes') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
begin
	CREATE TABLE KalaTypes(
		KalaType int NOT NULL,
		Title varchar(255) NOT NULL
	 CONSTRAINT PK_KalaTypes PRIMARY KEY CLUSTERED (KalaType ) ON [PRIMARY]) ON [PRIMARY]
	INSERT INTO KalaTypes(KalaType, Title)
	SELECT 1 as KalaType ,'دارو' AS Title
	UNION ALL
	SELECT 2  ,'دخانیات' 
	UNION ALL
	SELECT 3  ,'موبایل' 
	UNION ALL
	SELECT 4  ,'لوازم خانگی برقی' 
	UNION ALL
	SELECT 5  ,'قطعات مصرفی و یدکی وسایل نقلیه' 
	UNION ALL
	SELECT 6  ,'فراورده ها و مشتقات نفتی و گازی و پتروشیمیایی' 
	UNION ALL
	SELECT 7  ,'طلا اعم از شمش ،مسکوکات و مصنوعات زینتی' 
	UNION ALL
	SELECT 8  ,'منسوجات و پوشاک' 
	UNION ALL
	SELECT 9  ,'اسباب بازی' 
	UNION ALL
	SELECT 10  ,'دام زنده، گوشت سفید و قرمز' 
	UNION ALL
	SELECT 11  ,'محصولات اساسی کشاورزی' 
	UNION ALL
	SELECT 12  ,'سایر کالا ها' 
end


if ( COLUMNPROPERTY( OBJECT_ID('StuffGroups'),'KalaType','IsRowGuidCol')is  null )  
begin
 ALTER TABLE StuffGroups ADD KalaType int NOT NULL DEFAULT (12)
 ALTER TABLE StuffGroups ADD CONSTRAINT FK_StuffGroups_KalaTypes FOREIGN KEY (KalaType)REFERENCES
 KalaTypes (KalaType)  
end

 
 IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes1') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
   IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE        (TABLE_NAME = N'ReciptTypes1') AND (COLUMN_NAME = N'UserSecurityCheckActive') AND (DATA_TYPE = N'bigint'))
begin
    EXEC DBO.DROP_CONSTRAINT  'DF%ReciptTyp%UserS%', 'ReciptTypes1'
    ALTER TABLE ReciptTypes1 ALTER COLUMN UserSecurityCheckActive bigint   
	ALTER TABLE ReciptTypes1 ADD CONSTRAINT DF_ReciptTypes1_UserSecurityCheckActive  DEFAULT (0) FOR UserSecurityCheckActive
end
END


 if not exists (select * from dbo.sysobjects where id = object_id(N'StuffCodingLinked') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE dbo.StuffCodingLinked(
	c_StuffCode BigInt NOT NULL,
	StuffCode BigInt NOT NULL,
   CONSTRAINT FK_StuffCodingLinked_StuffCoding1 FOREIGN KEY(c_StuffCode) REFERENCES StuffCoding (c_StuffCode) ON UPDATE CASCADE ON DELETE CASCADE,
   CONSTRAINT FK_StuffCodingLinked_StuffCoding2 FOREIGN KEY(  StuffCode) REFERENCES StuffCoding (c_StuffCode) --ON UPDATE CASCADE --ON DELETE CASCADE
 ,CONSTRAINT [PK_StuffCodingLinked] PRIMARY KEY CLUSTERED (	c_StuffCode , StuffCode ) ON [PRIMARY]) ON [PRIMARY]


if not exists (select * from dbo.sysobjects where id = object_id(N'TozinDeficits') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE TozinDeficits(
	TozinDeficitID int NOT NULL,
	TozinID int NOT NULL,
	DeficitID smallint NOT NULL,
	DeficitAdd money NOT NULL CONSTRAINT DF_TozinDeficits_DeficitAdd  DEFAULT (0),
	DeficitDec money NOT NULL CONSTRAINT DF_TozinDeficits_DeficitDec  DEFAULT (0),
	DeficitNote varchar(50) NULL,
	ServerID int NOT NULL,
	YearID int NOT NULL,
	DeficitCo float NULL,
 CONSTRAINT FK_TozinDeficits_Tozin FOREIGN KEY(TozinID) REFERENCES Tozin (TozinID) ON UPDATE CASCADE ,
 CONSTRAINT PK_TozinsDeficits PRIMARY KEY CLUSTERED (TozinDeficitID ASC,TozinID ASC,ServerID ASC,YearID ASC) ON [PRIMARY]) ON [PRIMARY]


 IF EXISTS (SELECT * FROM sysobjects WHERE name = 'FK_ReciptItemsDetails_Customers' AND type = 'F')
  ALTER TABLE ReciptItemsDetails DROP  CONSTRAINT FK_ReciptItemsDetails_Customers 



 if not exists (select * from dbo.sysobjects where id = object_id(N'ReciptItemsDetails') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE dbo.ReciptItemsDetails(
	DetailsID int NOT NULL identity(1,1),
	ReciptItemID int NOT NULL,
	ServerID int NOT NULL,
	YearID int NOT NULL,
	ReciptID int NOT NULL,
	DetailCaption  varchar(40) NOT NULL,
	ReciptType  tinyint  NOT NULL CONSTRAINT DF_ReciptItemsDetails_ReciptType  DEFAULT (0),
 CONSTRAINT FK_ReciptItemsDetails_ReciptItems FOREIGN KEY(ReciptItemID, ReciptID, ServerID, YearID) 
     REFERENCES dbo.ReciptItems (ReciptItemID, ReciptID, ServerID, YearID) ON UPDATE CASCADE ON DELETE CASCADE,
 CONSTRAINT PK_ReciptItemsDetails PRIMARY KEY CLUSTERED (	DetailsID ASC) ON [PRIMARY]) ON [PRIMARY]


 IF NOT EXISTS (SELECT * FROM sysobjects WHERE name = 'FK_ReciptItemsDetails_ReciptItems' AND type = 'F')
begin
  ALTER TABLE ReciptItemsDetails WITH CHECK ADD CONSTRAINT FK_ReciptItemsDetails_ReciptItems  FOREIGN KEY(ReciptItemID, ReciptID, ServerID, YearID) 
     REFERENCES dbo.ReciptItems (ReciptItemID, ReciptID, ServerID, YearID) ON UPDATE CASCADE ON DELETE CASCADE
end

if ( COLUMNPROPERTY( OBJECT_ID('ReciptItemsDetails'),'ReciptType','IsRowGuidCol')is  null )  
 ALTER TABLE ReciptItemsDetails ADD ReciptType  tinyint  NOT NULL CONSTRAINT DF_ReciptItemsDetails_ReciptType  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('ReciptItemsDetails'),'StuffGrade','IsRowGuidCol')is  null )  
begin
 ALTER TABLE ReciptItemsDetails ADD StuffGrade  tinyint  NOT NULL CONSTRAINT DF_ReciptItemsDetails_StuffGrade  DEFAULT (1)
  if  EXISTS (select * from sysindexes WHERE     (name = N'IX_ReciptItemsDetails_Unique_DetailCaption'))
     DROP INDEX IX_ReciptItemsDetails_Unique_DetailCaption ON ReciptItemsDetails 
end




--SELECT        DetailsID, ReciptItemID, ServerID, YearID, ReciptID, DetailCaption, ReciptType
--FROM            ReciptItemsDetails
--WHERE        (DetailCaption IN
--                             (SELECT        ReciptItemsDetails_1.DetailCaption
--                                FROM            ReciptItemsDetails AS ReciptItemsDetails_1 INNER JOIN
--                                                         ReciptItems ON ReciptItemsDetails_1.ReciptItemID = ReciptItems.ReciptItemID AND ReciptItemsDetails_1.ReciptID = ReciptItems.ReciptID AND ReciptItemsDetails_1.ServerID = ReciptItems.ServerID AND 
--                                                         ReciptItemsDetails_1.YearID = ReciptItems.YearID INNER JOIN
--                                                         Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND ReciptItems.YearID = Recipts.YearID
--                                GROUP BY ReciptItemsDetails_1.ReciptType, ReciptItemsDetails_1.DetailCaption
--                                HAVING        (COUNT(*) > 1)))
--ORDER BY DetailCaption

--exec('
--UPDATE       ReciptItemsDetails
--SET                ReciptType = Recipts.ReciptType
--FROM            ReciptItemsDetails INNER JOIN
--                         ReciptItems ON ReciptItemsDetails.ReciptItemID = ReciptItems.ReciptItemID AND ReciptItemsDetails.ReciptID = ReciptItems.ReciptID AND ReciptItemsDetails.ServerID = ReciptItems.ServerID AND 
--                         ReciptItemsDetails.YearID = ReciptItems.YearID INNER JOIN
--                         Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND ReciptItems.YearID = Recipts.YearID
--WHERE        (ReciptItemsDetails.ReciptType = 0)
--  AND  ReciptItemsDetails.DetailCaption on in (SElsect DetailCaption)
--')


if not exists (select * from sysindexes WHERE     (name = N'IX_ReciptItemsDetails_Unique_DetailCaption'))
CREATE UNIQUE NONCLUSTERED INDEX IX_ReciptItemsDetails_Unique_DetailCaption ON ReciptItemsDetails
              (	DetailCaption,ReciptType ,StuffGrade) ON [PRIMARY]

------------------------------------------------------

 if not exists (select * from dbo.sysobjects where id = object_id(N'Commissions') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE dbo.Commissions(
	CommissionID int NOT NULL identity(1,1),
	CommissionDate char(10) NOT NULL,
	AmountFrom decimal(20,4) NOT NULL,
	AmountTo   decimal(20,4) NOT NULL,
	FixedPrice decimal(20,4) ,
	PercentPrice decimal(20,4) ,
	Note  varchar(100) ,
 CONSTRAINT PK_Commissions PRIMARY KEY CLUSTERED (	CommissionID ASC) ON [PRIMARY]) ON [PRIMARY]


 

 if not exists (select * from dbo.sysobjects where id = object_id(N'CountingDetails') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 CREATE TABLE CountingDetails(
	DetailsID int IDENTITY(1,1) NOT NULL,
	CountID int NOT NULL,
	StoreID smallint NOT NULL,
	DetailCaption varchar(40) NOT NULL,
    CONSTRAINT FK_CountingDetails_Counting FOREIGN KEY(CountID) REFERENCES Counting (CountID) ,
	CONSTRAINT FK_CountingDetails_Stores FOREIGN KEY(StoreID)REFERENCES Stores (n_StoreID) ON UPDATE CASCADE ,
    CONSTRAINT PK_CountingDetails PRIMARY KEY CLUSTERED (	DetailsID ASC ) ON [PRIMARY]) ON [PRIMARY]

if not exists (select * from sysindexes WHERE     (name = N'IX_CountingDetails_Unique_DetailCaption'))
CREATE UNIQUE NONCLUSTERED INDEX IX_CountingDetails_Unique_DetailCaption ON CountingDetails
				  (	CountID , DetailCaption) ON [PRIMARY]


if not exists (select * from dbo.sysobjects where id = object_id(N'ReciptsDoc') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE ReciptsDoc(
	Recipt_ID bigint NOT NULL,
	Serial int ,
	CompanyCode int ,
	SecondaryDocNo int ,
	PrimaryDocNo int ,
	DocDate char(10)

 CONSTRAINT PK_ReciptsDoc PRIMARY KEY CLUSTERED (	Recipt_ID ASC) ON [PRIMARY]) ON [PRIMARY]



if not exists (select * from dbo.sysobjects where id = object_id(N'Util.ExcelComparisonExcel') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Util.ExcelComparisonExcel(
	ID int IDENTITY(1,1) NOT NULL,
	ReciptType tinyint NOT NULL,
	FileKind tinyint NOT NULL,
	Caption varchar(30) NOT NULL,
	SystemFieldName varchar(30) NOT NULL,
	ExcelFieldName varchar(30) NOT NULL,
	Note nvarchar(100) NULL,
	CONSTRAINT FK_ExcelComparisonExcels_ReciptTypes FOREIGN KEY(ReciptType) REFERENCES dbo.ReciptTypes1 (ReciptType) ON UPDATE CASCADE,
    CONSTRAINT PK_ExcelComparisonExcels PRIMARY KEY CLUSTERED (	ID ASC) ON [PRIMARY]) ON [PRIMARY]
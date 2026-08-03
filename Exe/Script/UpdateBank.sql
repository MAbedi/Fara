---   1403/09/13
set nocount on

BEGIN TRY

if (Select COUNT(Uid) from sysusers where Name = 'Util')=0 
begin 
Exec sp_addrole @RoleName = N'Util' ,@ownerName='FaraUser' 
Exec sp_changeobjectowner 'dbo.CodesInProcess','Util' 
end
 if not exists (select * from sysobjects where id = object_id(N'[Util].[MaliYear]') and
 OBJECTPROPERTY(id, N'IsUserTable') = 1) if  exists (select * from sysobjects where id = object_id(N'[dbo].[MaliYear]') and
 OBJECTPROPERTY(id, N'IsUserTable') = 1) Exec sp_changeobjectowner 'dbo.MaliYear','Util'
 if not exists (select * from sysobjects where id = object_id(N'[Util].[MaliYear]') and
 OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin
 Declare @YearID char(2)
 Set @YearID=(SELECT top 1 SUBSTRING(StartMaliYear, 0, 3) FROM Config)
 Declare @StartYear Char(10)
 Set @StartYear=(SELECT top 1 StartMaliYear FROM Config)
 Declare @EndYear Char(10)
 Set @EndYear=(SELECT top 1 FinishMaliYear FROM Config)
 CREATE TABLE [MaliYear] (
 [YearID] int NOT NULL ,
 [StartYear] char(10) NULL ,
 [EndYear] char(10) NULL ,
 [Status] Tinyint NOT NULL default (0),
 CONSTRAINT [PK_MaliYear] PRIMARY KEY CLUSTERED ( [YearID]) ON [PRIMARY] ) ON [PRIMARY]

 ALTER TABLE Config ADD ServerID int NOT NULL DEFAULT (0)
 ALTER TABLE Recipts ADD ServerID int NOT NULL DEFAULT (0)
 ALTER TABLE Recipts ADD YearID int NOT NULL DEFAULT (0)
 ALTER TABLE ReciptItems ADD ServerID int NOT NULL DEFAULT (0)
 ALTER TABLE Forms ADD ServerID int NOT NULL DEFAULT (0)
 ALTER TABLE FormItems ADD ServerID int NOT NULL DEFAULT (0)
 ALTER TABLE ReciptOnFormsRange ADD ServerID int NOT NULL DEFAULT (0)
 ALTER TABLE ReciptsDeficits ADD ServerID int NOT NULL DEFAULT (0)
 ALTER TABLE ReciptPurchaseEffect ADD ServerID int NOT NULL DEFAULT (0)
 ALTER TABLE ReciptItems ADD YearID int NOT NULL DEFAULT (0)
 ALTER TABLE ReciptsDeficits ADD YearID int NOT NULL DEFAULT (0)
 ALTER TABLE ReciptOnFormsRange ADD YearID int NOT NULL DEFAULT (0)
 ALTER TABLE ReciptPurchaseEffect ADD YearID int NOT NULL DEFAULT (0)
 ALTER TABLE Forms ADD YearID int NOT NULL DEFAULT (0)
 ALTER TABLE FormItems ADD YearID int NOT NULL DEFAULT (0)
 ALTER TABLE ReciptPurchaseEffect ADD ReciptID int NOT NULL DEFAULT (0) 


 exec('
 UPDATE Recipts SET YearId = '+@YearID+'
 UPDATE ReciptsDeficits SET YearId = '+@YearID+'
 UPDATE ReciptItems SET YearId = '+@YearID+'
 UPDATE ReciptPurchaseEffect SET YearId = '+@YearID+'
 UPDATE ReciptOnFormsRange SET YearId = '+@YearID+'
 UPDATE Forms SET YearId = '+@YearID+'
 UPDATE FormItems SET YearId = '+@YearID
  )

 INSERT INTO MaliYear (YearID, StartYear, EndYear,Status)
 select @YearID, @StartYear, @EndYear,0 as a
 ALTER TABLE Recipts ADD CONSTRAINT FK_Recipts_MaliYear
 FOREIGN KEY (YearID)REFERENCES [MaliYear] (YearID) 
 ALTER TABLE ReciptItems ADD CONSTRAINT FK_ReciptItems_MaliYear
 FOREIGN KEY (YearID)REFERENCES [MaliYear] (YearID) ON UPDATE CASCADE
 ALTER TABLE Forms ADD CONSTRAINT FK_Forms_MaliYear
 FOREIGN KEY (YearID)REFERENCES [MaliYear] (YearID) ON UPDATE CASCADE
 ALTER TABLE FormItems ADD CONSTRAINT FK_FormItems_MaliYear
 FOREIGN KEY (YearID)REFERENCES [MaliYear] (YearID) 
 ALTER TABLE ReciptOnFormsRange ADD CONSTRAINT FK_ReciptOnFormsRange_MaliYear
 FOREIGN KEY (YearID)REFERENCES [MaliYear] (YearID) 
 ALTER TABLE Recipts ADD PersonID3 int NOT NULL DEFAULT (0)
 ALTER TABLE Recipts ADD CONSTRAINT FK_Recipts_Customers3 FOREIGN KEY (PersonID3)REFERENCES Customers (CustID)
 end


END TRY
BEGIN CATCH

END CATCH



IF OBJECT_ID ('TR_ConfigChangeLog_recipts', 'TR') IS NOT NULL
ALTER TABLE Recipts DISABLE TRIGGER TR_ConfigChangeLog_recipts

IF OBJECT_ID ('TR_NotAllowDeleteTrans1OnRItems', 'TR') IS NOT NULL
ALTER TABLE ReciptItems DISABLE TRIGGER TR_NotAllowDeleteTrans1OnRItems


IF OBJECT_ID ('[TR_ConfigChangeLog_dbo.FormItems]', 'TR') IS NOT NULL
ALTER TABLE FormItems DISABLE TRIGGER [TR_ConfigChangeLog_dbo.FormItems]

IF OBJECT_ID ('TR_CheckDelFormItems', 'TR') IS NOT NULL
ALTER TABLE FormItems DISABLE TRIGGER TR_CheckDelFormItems


IF OBJECT_ID ('TR_CheckDelForms.Forms', 'TR') IS NOT NULL
ALTER TABLE Forms DISABLE TRIGGER TR_CheckDelForms


IF OBJECT_ID ('TR_ConfigChangeLog_Forms.Forms', 'TR') IS NOT NULL
ALTER TABLE Forms DISABLE TRIGGER TR_ConfigChangeLog_Forms

IF OBJECT_ID ('TR_ConfigurationsChangeLog', 'TR') IS NOT NULL
ALTER TABLE Recipts DISABLE TRIGGER TR_ConfigurationsChangeLog


IF OBJECT_ID ('TR_NotAllowUpdateTrans3OnRecipt', 'TR') IS NOT NULL
ALTER TABLE Recipts DISABLE TRIGGER TR_NotAllowUpdateTrans3OnRecipt

IF OBJECT_ID ('TR_NotAllowUpdateTrans3OnRecipt', 'TR') IS NOT NULL
ALTER TABLE Recipts DISABLE TRIGGER TR_NotAllowUpdateTrans3OnRecipt

IF OBJECT_ID ('TR_NotAllowDeleteTrans1OnRItems', 'TR') IS NOT NULL
ALTER TABLE ReciptItems DISABLE TRIGGER TR_NotAllowDeleteTrans1OnRItems

IF OBJECT_ID ('TR_NotAllowUpdateTrans3OnRItems', 'TR') IS NOT NULL
DROP TRIGGER [dbo].[TR_NotAllowUpdateTrans3OnRItems]--ALTER TABLE ReciptItems DISABLE TRIGGER TR_NotAllowUpdateTrans3OnRItems



IF OBJECT_ID ('TR_NotAllowUpdateTrans3OnRDeficit', 'TR') IS NOT NULL
ALTER TABLE ReciptsDeficits DISABLE TRIGGER TR_NotAllowUpdateTrans3OnRDeficit




  if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Miladi_Shamsi]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
   CREATE TABLE [dbo].[Miladi_Shamsi] (
  [Miladi] smalldatetime NOT NULL,
  [ShamsiSlash] char(10) NULL,
  [ShamsiFull] nvarchar(30) COLLATE Persian_100_CI_AI NULL,
  [ShamsiRooz] int NULL,
  [ShamsiMaah] int NULL,
  [ShamsiSaal] int NULL,
  [ShamsiWeekDay] int NULL,
  PRIMARY KEY CLUSTERED ([Miladi])
 )



  if  exists (select * from dbo.sysobjects where id = object_id(N'Tsh.ClockDmp') and OBJECTPROPERTY(id, N'IsUserTable') = 1)

ALTER TABLE Tsh.ClockDmp NOCHECK CONSTRAINT ALL

 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_CLOCKDMP' AND type = 'K')
 ALTER TABLE Tsh.ClockDmp	DROP CONSTRAINT PK_CLOCKDMP

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_Customers_CustomerGrpID_CustomerActive'))
DROP INDEX IX_Customers_CustomerGrpID_CustomerActive ON dbo.Customers

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


BEGIN TRY
if  exists (select * from dbo.sysobjects where id = object_id(N'util.Analyze') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
IF   EXISTS (select * from util.Analyze WHERE     (FieldName = N'SUBSTRING(Recipts.ReciptDate,4,2)'))
delete from util.Analyze where (ID in (18,60,82,84,108,59,85,129,142,143))

END TRY
BEGIN CATCH

END CATCH










  if  exists (select * from dbo.sysobjects where id = object_id(N'Tsh.ClockDmp') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_CLOCKDMP' AND type = 'K')
ALTER TABLE Tsh.ClockDmp ADD  CONSTRAINT PK_CLOCKDMP PRIMARY KEY CLUSTERED (KARTNO,CLOCKDATE,CLOCKTIME) 

  if  exists (select * from dbo.sysobjects where id = object_id(N'Tsh.ClockDmp') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
ALTER TABLE Tsh.ClockDmp CHECK CONSTRAINT ALL




  if ( COLUMNPROPERTY( OBJECT_ID('RptChecks'),'ReportFileName','IsRowGuidCol')is  null )  ALTER TABLE [RptChecks] ADD [ReportFileName] VarChar (50) 
  if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'OptimumPoint','IsRowGuidCol')is  null )  ALTER TABLE [Stuffcoding] ADD [OptimumPoint] Float   
  
IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Customers_CustomersGroup' AND type = 'F')
ALTER TABLE dbo.Customers    DROP CONSTRAINT FK_Customers_CustomersGroup  
ALTER TABLE dbo.Customers WITH NOCHECK ADD CONSTRAINT FK_Customers_CustomersGroup FOREIGN KEY(     CustomerGrpID   )REFERENCES dbo.CustomersGroup(CustomerGrpID) ON UPDATE CASCADE 
IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes1') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes1'),'PersonID1OnDetailActive','IsRowGuidCol')is  null )  
  ALTER TABLE [ReciptTypes1] ADD [PersonID1OnDetailActive] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'Shift','IsRowGuidCol')is  null )  ALTER TABLE [ReciptItems] ADD [Shift] int NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'ModifyDate','IsRowGuidCol')is  null )  ALTER TABLE [Forms] ADD [ModifyDate] [datetime]  
  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'ControlCodeActive','IsRowGuidCol')is  null )  ALTER TABLE [Config] ADD [ControlCodeActive] int NOT NULL  DEFAULT (1) 
  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'AddMenuItem','IsRowGuidCol')is  null )  ALTER TABLE [Config] ADD [AddMenuItem] int NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'UnitPriceUseKind','IsRowGuidCol')is  null )  ALTER TABLE [Stuffcoding] ADD [UnitPriceUseKind] Tinyint NOT NULL DEFAULT (0)  
  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'ActiveCoffer','IsRowGuidCol')is  null )  ALTER TABLE [Config] ADD [ActiveCoffer] Tinyint NOT NULL DEFAULT (0)  
  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'ActiveBsell','IsRowGuidCol')is  null )  ALTER TABLE [Config] ADD [ActiveBsell] Tinyint NOT NULL DEFAULT (0)  
  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'ActiveBudget','IsRowGuidCol')is  null )  ALTER TABLE [Config] ADD [ActiveBudget] Tinyint NOT NULL DEFAULT (0)  
  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'ActiveStore','IsRowGuidCol')is  null )  ALTER TABLE [Config] ADD [ActiveStore] Tinyint NOT NULL DEFAULT (0)  
  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'ActiveSchedule','IsRowGuidCol')is  null )  ALTER TABLE [Config] ADD [ActiveSchedule] Tinyint NOT NULL DEFAULT (0)   ALTER TABLE dbo.Recipts	DROP CONSTRAINT DF_Recipts_ExpireDate  ALTER TABLE dbo.Recipts ADD  CONSTRAINT	DF_Recipts_ExpireDate DEFAULT ('') FOR ExpireDate 
  if not EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_Forms_CustomerID1' AND type = 'D') ALTER TABLE dbo.Forms ADD CONSTRAINT 	DF_Forms_CustomerID1 DEFAULT 0 FOR CustomerID1
  if not EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_Forms_CustomerID2' AND type = 'D') ALTER TABLE dbo.Forms ADD CONSTRAINT 	DF_Forms_CustomerID2 DEFAULT 0 FOR CustomerID2
  if not EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_FormItems_CheckType' AND type = 'D') ALTER TABLE dbo.FormItems ADD CONSTRAINT 	DF_FormItems_CheckType DEFAULT 0 FOR CheckType
  if ( COLUMNPROPERTY( OBJECT_ID('StuffGroups'),'acc_AFootInComingTopicCode','IsRowGuidCol')is  null )  ALTER TABLE [StuffGroups] ADD [acc_AFootInComingTopicCode] [varchar](12) NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('Deficits'),'DeficitsTogetherRange','IsRowGuidCol')is  null )  ALTER TABLE [Deficits] ADD [DeficitsTogetherRange] [char] (250) 
  if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'StuffNote','IsRowGuidCol')is  null )  ALTER TABLE [Stuffcoding] ADD [StuffNote] [varchar](255)  
  if ( COLUMNPROPERTY( OBJECT_ID('LookUps'),'StartCode','IsRowGuidCol')is  null )  ALTER TABLE [LookUps] ADD [StartCode] int NOT NULL  DEFAULT (0)  
  if ( COLUMNPROPERTY( OBJECT_ID('LookUps'),'FinishCode','IsRowGuidCol')is  null )  ALTER TABLE [LookUps] ADD [FinishCode] int NOT NULL  DEFAULT (0)  
  if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'Control_orderPoint_Entity','IsRowGuidCol')is  null )  ALTER TABLE [Stuffcoding] ADD [Control_orderPoint_Entity] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'StanCode','IsRowGuidCol')is  null )  ALTER TABLE [Stuffcoding] ADD [StanCode] VarChar (25)  
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'DeficitValue','IsRowGuidCol')is  null )  ALTER TABLE [ReciptItems] ADD [DeficitValue] Money 
  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'ActiveSellPrice2','IsRowGuidCol')is  null )  ALTER TABLE [Config] ADD [ActiveSellPrice2] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'OwnerShipKind','IsRowGuidCol')is  null )  ALTER TABLE [Stuffcoding] ADD [OwnerShipKind] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'Commission','IsRowGuidCol')is  null )  ALTER TABLE [Stuffcoding] ADD [Commission] Float NOT NULL  DEFAULT (0) 
IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes1') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes1'),'Amani_StuffActiveInDoc','IsRowGuidCol')is  null )  
  ALTER TABLE [ReciptTypes1] ADD [Amani_StuffActiveInDoc] Tinyint NOT NULL  DEFAULT (0) 
IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes1') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes1'),'ActiveDocOnCommission','IsRowGuidCol')is  null )  
  ALTER TABLE [ReciptTypes1] ADD [ActiveDocOnCommission] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'StuffKindActive','IsRowGuidCol')is  null )  ALTER TABLE [Config] ADD [StuffKindActive] Tinyint NOT NULL  DEFAULT (0) 
  if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ReciptOnFormsRange]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 CREATE TABLE [ReciptOnFormsRange] ([FormID] int NOT NULL ,[ReciptID] int NOT NULL ,
 CONSTRAINT [FK_ReciptOnFormsRange_Forms] FOREIGN KEY 	([FormID]
 ) REFERENCES [Forms] ([FormID]) ON DELETE CASCADE ON UPDATE CASCADE ,
 CONSTRAINT [FK_ReciptOnFormsRange_Recipts] FOREIGN KEY
 ([ReciptID]) REFERENCES [Recipts] ([ReciptID]) ) ON [PRIMARY]
IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes1') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes1'),'CofferType','IsRowGuidCol')is  null )  
  ALTER TABLE [ReciptTypes1] ADD [CofferType] VarChar (20) 
  if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'ReciptID','IsRowGuidCol')is  null )  ALTER TABLE [Forms] ADD [ReciptID]  int   
  if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'DebtControlActive','IsRowGuidCol')is  null )  ALTER TABLE [Recipts] ADD [DebtControlActive]  Tinyint NOT NULL  DEFAULT (0)  
  if ( COLUMNPROPERTY( OBJECT_ID('Stores'),'Entity','IsRowGuidCol')is  null )  ALTER TABLE [Stores] ADD [Entity] Float NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('Stores'),'Weight','IsRowGuidCol')is  null )  ALTER TABLE [Stores] ADD [Weight] Float NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'UnitSellPrice2','IsRowGuidCol')is  null )  ALTER TABLE [ReciptItems] ADD [UnitSellPrice2] Money 
  IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes1') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes1'),'ShowListOnMnu','IsRowGuidCol')is  null )  
ALTER TABLE [ReciptTypes1] ADD [ShowListOnMnu] Tinyint NOT NULL  DEFAULT (1) 
  IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes1') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes1'),'AccCodingShow','IsRowGuidCol')is  null )  
ALTER TABLE [ReciptTypes1] ADD [AccCodingShow] Tinyint NOT NULL  DEFAULT (0) 

IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes1') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes1'),'Store2Active','IsRowGuidCol')is  null )  
  ALTER TABLE [ReciptTypes1] ADD [Store2Active] Tinyint NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'StoreID2','IsRowGuidCol')is  null )  ALTER TABLE [Recipts] ADD [StoreID2]  [smallint] NOT NULL  DEFAULT (0)  
  if ( COLUMNPROPERTY( OBJECT_ID('Deficits'),'ObverseTopicCode','IsRowGuidCol')is  null )  ALTER TABLE [Deficits] ADD [ObverseTopicCode] [varchar](12) NOT NULL  DEFAULT (0)  
  if ( COLUMNPROPERTY( OBJECT_ID('TransFormItems'),'StanRate','IsRowGuidCol')is  null )  ALTER TABLE [TransFormItems] ADD [StanRate] Money  
  if ( COLUMNPROPERTY( OBJECT_ID('TransFormItems'),'ScheduleID','IsRowGuidCol')is  null )  ALTER TABLE [TransFormItems] ADD [ScheduleID] int  
  if ( COLUMNPROPERTY( OBJECT_ID('TransFormItems'),'StuffPersent','IsRowGuidCol')is  null )  ALTER TABLE [TransFormItems] ADD [StuffPersent] Float  
  if ( COLUMNPROPERTY( OBJECT_ID('TransFormItems'),'StuffPersentRate','IsRowGuidCol')is  null )  ALTER TABLE [TransFormItems] ADD [StuffPersentRate] Money  
  if ( COLUMNPROPERTY( OBJECT_ID('TransFormItems'),'InfoType','IsRowGuidCol')is  null )  ALTER TABLE [TransFormItems] ADD [InfoType] Tinyint NOT NULL  DEFAULT (0)  
  if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TransFormInfo]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 CREATE TABLE [TransFormInfo] ( [ID] int NOT NULL ,	[TransFormID] int NOT NULL ,	[InfoType] Tinyint NOT NULL , [Code] int NOT NULL ,	[Name] [varchar](80) , 	[SheetID] int  ,	[Amount1] Float  ,	[Amount2] Float , [StanRate] Money , [PrvCode] int  , CONSTRAINT [PK_TransFormInfo] PRIMARY KEY  CLUSTERED 	([ID])  ON [PRIMARY] ,CONSTRAINT [FK_TransFormInfo_TransForms] FOREIGN KEY 	([TransFormID]) REFERENCES [TransForms] ([TransFormID]) ON DELETE CASCADE  ON UPDATE CASCADE  ) ON [PRIMARY] 
  if  ( SELECT     COUNT(*) FROM         sysindexes WHERE     (name = N'IX_TransFormInfo'))= 0  
 CREATE UNIQUE NONCLUSTERED INDEX IX_TransFormInfo ON dbo.TransFormInfo	(InfoType,TransFormID,Code) ON [PRIMARY] 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CashWageActive','IsRowGuidCol')is  null )  
  ALTER TABLE [FormTypes] ADD [CashWageActive] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CashWageTopicCode','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [CashWageTopicCode] [varchar](12) NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CashWageDetailCode','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [CashWageDetailCode] [varchar](12) NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CashWageCTopicCode','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [CashWageCTopicCode] [varchar](12) NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CashWageCTopicCode2','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [CashWageCTopicCode2] [varchar](12) NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'ConstDetailCode_Bed','IsRowGuidCol')is  null )  
  ALTER TABLE [FormTypes] ADD [ConstDetailCode_Bed] [varchar](12) NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'ConstDetailCode_Bes','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [ConstDetailCode_Bes] [varchar](12) NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'ADDLevelID','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [ADDLevelID] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'EditLevelID','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [EditLevelID] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'DeleteLevelID','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [DeleteLevelID] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'ChangeStateLevelID','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [ChangeStateLevelID] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'PrintLevelID','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [PrintLevelID] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'FormRelatedLevelID','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [FormRelatedLevelID] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'AccCodeLevelID','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [AccCodeLevelID] Tinyint NOT NULL  DEFAULT (0) 
  
IF not EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes1') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
begin
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ADDLevelID','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [ADDLevelID] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'EditLevelID','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [EditLevelID] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'DeleteLevelID','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [DeleteLevelID] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ChangeStateLevelID','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [ChangeStateLevelID] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'PrintLevelID','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [PrintLevelID] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'FormRelatedLevelID','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [FormRelatedLevelID] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'AccCodeLevelID','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [AccCodeLevelID] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'Dec_TopicCode','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [Dec_TopicCode] [varchar](12) NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'Dec_DetailCode','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [Dec_DetailCode] [varchar](12) NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'Dec_CTopicCode','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [Dec_CTopicCode] [varchar](12) NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'Dec_CTopicCode2','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [Dec_CTopicCode2] [varchar](12) NOT NULL  DEFAULT (0) 
  
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'StoreKindList','IsRowGuidCol')is  null )  
  ALTER TABLE [ReciptTypes] ADD [StoreKindList] VarChar (50) 

  
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'MachineActive','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [MachineActive] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'EarthActive','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [EarthActive] Tinyint NOT NULL  DEFAULT (1) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'WetActive','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [WetActive] Tinyint NOT NULL  DEFAULT (1) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'SugarActive','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [SugarActive] Tinyint NOT NULL  DEFAULT (1) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'EffectOnCustomer2','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [EffectOnCustomer2] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'UseableCustomer','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [UseableCustomer] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'DiscountEntryKind','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [DiscountEntryKind] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'AidInfoCaptionNo','IsRowGuidCol')is  null )  
  ALTER TABLE [ReciptTypes] ADD [AidInfoCaptionNo] VarChar (50) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'DeficitValueEditing','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [DeficitValueEditing] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'AidNumRestOnSecType','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [AidNumRestOnSecType] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ArzActive','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [ArzActive] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ArzTypeID','IsRowGuidCol')is  null )  
  ALTER TABLE [ReciptTypes] ADD [ArzTypeID] int  
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'SellEffect','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [SellEffect] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'StandardRateActive','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [StandardRateActive] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'NonZeroActive','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [NonZeroActive] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ShowEntityOnSearch','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [ShowEntityOnSearch] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'InsertEntity','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [InsertEntity] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'NonZeroControl','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [NonZeroControl] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'Customer2DetailKind','IsRowGuidCol')is  null )  
  ALTER TABLE [ReciptTypes] ADD [Customer2DetailKind] VarChar (50)  
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'PriceReadOnly','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [PriceReadOnly] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'UnicCodeCheck','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [UnicCodeCheck] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ReportFileCaption1','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [ReportFileCaption1]  [varchar](20)  
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ReportFileCaption2','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [ReportFileCaption2] [varchar](20) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'Store2Caption','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [Store2Caption] VarChar (50) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'DuplicateReciptNoActive','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [DuplicateReciptNoActive] Tinyint NOT NULL  DEFAULT (0)  ALTER TABLE [StuffCoding] 
  ALTER COLUMN [c_StuffTecInfo] varchar(150)  
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'UsePerson1OnRecall','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [UsePerson1OnRecall] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ExtraCodingAddStuffName','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [ExtraCodingAddStuffName] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'State0ChangeLevelID','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [State0ChangeLevelID] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'State1ChangeLevelID','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [State1ChangeLevelID] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'State2ChangeLevelID','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [State2ChangeLevelID] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'State3ChangeLevelID','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [State3ChangeLevelID] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'FormItemKindSerial','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [FormItemKindSerial] int NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'Section2CaptionWeight','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [Section2CaptionWeight] VarChar (50) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'RequestedChange','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [RequestedChange]  Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'DeficitsLevelID','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [DeficitsLevelID]  Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'MaxControlCode','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [MaxControlCode]  Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'StoreControlEntity','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [StoreControlEntity] VarChar (50) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'Person2DetailCaption','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [Person2DetailCaption] VarChar (50) NOT NULL    DEFAULT ('مشتري') 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'AidInfoControlDate','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [AidInfoControlDate]  Tinyint NOT NULL  DEFAULT (1) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ControlCodeUnic','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [ControlCodeUnic]  Tinyint NOT NULL  DEFAULT (1) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'UseOtherActive','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [UseOtherActive] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'Deficate_TopicCode','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [Deficate_TopicCode]  VarChar (15)  
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'Deficate_DetailCode','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [Deficate_DetailCode]  VarChar (15)   
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'Deficate_MakeDocKind','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [Deficate_MakeDocKind] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ChangeAidReciptDate','IsRowGuidCol')is  null )  
  ALTER TABLE [ReciptTypes] ADD [ChangeAidReciptDate] bigint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'TozinActive','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [TozinActive] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'OtherRptFiles','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [OtherRptFiles] VarChar (250) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'OtherRptCaptions','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [OtherRptCaptions] VarChar (250) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ShowNotEntityOnSearch','IsRowGuidCol')is  null )  
  ALTER TABLE ReciptTypes ADD ShowNotEntityOnSearch bigint NOT NULL  DEFAULT (0) 



  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'SearchReciptNumber','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [SearchReciptNumber] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'AcceptRollbackEntity','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [AcceptRollbackEntity] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'PrintAfterPost','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [PrintAfterPost] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'PriorityReciptDate','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [PriorityReciptDate] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'EditableFields','IsRowGuidCol')is  null )  
  ALTER TABLE [ReciptTypes] ADD [EditableFields] NvarChar (1000) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ShowEntityWeightOnList','IsRowGuidCol')is  null ) 
   ALTER TABLE [ReciptTypes] ADD [ShowEntityWeightOnList] Tinyint NOT NULL  DEFAULT (1) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ReciptNumberKind','IsRowGuidCol')is  null )  ALTER TABLE [ReciptTypes] ADD [ReciptNumberKind] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ReciptNumberOfType','IsRowGuidCol')is  null )  
  ALTER TABLE ReciptTypes ADD ReciptNumberOfType int   
IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  ALTER TABLE ReciptTypes ALTER COLUMN ReciptNumberOfType Nvarchar(250) 
  
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'CorrelateReciptNumberKind','IsRowGuidCol')is  null )  
  ALTER TABLE [ReciptTypes] ADD [CorrelateReciptNumberKind] Tinyint NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'AllotmentActive','IsRowGuidCol')is  null )  
  ALTER TABLE [ReciptTypes] ADD [AllotmentActive] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'CorrelateReciptsDeficits','IsRowGuidCol')is  null )  
  ALTER TABLE [ReciptTypes] ADD [CorrelateReciptsDeficits] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ShowKeepPlace','IsRowGuidCol')is  null )  
  ALTER TABLE [ReciptTypes] ADD [ShowKeepPlace] Tinyint NOT NULL  DEFAULT (0)  
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'RepelInsertRecipt','IsRowGuidCol')is  null )  
  ALTER TABLE [ReciptTypes] ADD [RepelInsertRecipt] Tinyint NOT NULL  DEFAULT (1) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'CorrelateStateChange','IsRowGuidCol')is  null )  
  ALTER TABLE [ReciptTypes] ADD [CorrelateStateChange] Tinyint NOT NULL  DEFAULT (1) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'Deficate_MakeDocApart','IsRowGuidCol')is  null )  
  ALTER TABLE [ReciptTypes] ADD [Deficate_MakeDocApart] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'VATActive','IsRowGuidCol')is  null )  
  ALTER TABLE [ReciptTypes] ADD [VATActive] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'VATCo','IsRowGuidCol')is  null )  
  ALTER TABLE [ReciptTypes] ADD [VATCo] Float NOT NULL  DEFAULT (3) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'VATRound','IsRowGuidCol')is  null )  
  ALTER TABLE [ReciptTypes] ADD [VATRound] Tinyint NOT NULL  DEFAULT (2)  
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'OrderByFields','IsRowGuidCol')is  null )  
  ALTER TABLE [ReciptTypes] ADD [OrderByFields] [Nvarchar](100)  

end
  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'ArchivePath','IsRowGuidCol')is  null )  
  ALTER TABLE [Config] ADD [ArchivePath] [Nvarchar](301)  

  if ( COLUMNPROPERTY( OBJECT_ID('FormItems'),'CashWage','IsRowGuidCol')is  null )  ALTER TABLE [FormItems] ADD [CashWage] Money  
  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'AccDetailCodeEqualCustID','IsRowGuidCol')is  null )  
  ALTER TABLE [Config] ADD [AccDetailCodeEqualCustID] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'StuffpurePercent','IsRowGuidCol')is  null )  ALTER TABLE [Stuffcoding] ADD [StuffpurePercent] Float NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'StuffpublicPercent','IsRowGuidCol')is  null )  ALTER TABLE [Stuffcoding] ADD [StuffpublicPercent] Float NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'MachineWeight','IsRowGuidCol')is  null )  
  ALTER TABLE [ReciptItems] ADD [MachineWeight] Float NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'TotalWeight','IsRowGuidCol')is  null )  ALTER TABLE [ReciptItems] ADD [TotalWeight] Float NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'TruckNumber','IsRowGuidCol')is  null )  
  ALTER TABLE [Recipts] ADD [TruckNumber] [varchar](100) 

  IF NOT EXISTS (SELECT CHARACTER_MAXIMUM_LENGTH FROM INFORMATION_SCHEMA.COLUMNS
     WHERE        (TABLE_NAME = N'Recipts') AND (COLUMN_NAME = N'TruckNumber') AND (CHARACTER_MAXIMUM_LENGTH = 100))
    ALTER TABLE Recipts	ALTER COLUMN TruckNumber varchar(100)


  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'RptAddAccountKind','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [RptAddAccountKind] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'RptAddUtilizeCustCode','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [RptAddUtilizeCustCode] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'RptAddWorkableCheckKind','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [RptAddWorkableCheckKind] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'RptDecAccountKind','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [RptDecAccountKind] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'RptDecUtilizeCustCode','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [RptDecUtilizeCustCode] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'RptDecWorkableCheckKind','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [RptDecWorkableCheckKind] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CustAddUtilizeCustCode','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [CustAddUtilizeCustCode] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CustAddCondition ','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [CustAddCondition] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CustAddWorkableCheckKind','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [CustAddWorkableCheckKind] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CustDecUtilizeCustCode','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [CustDecUtilizeCustCode] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CustDecCondition ','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [CustDecCondition] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CustDecWorkableCheckKind','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [CustDecWorkableCheckKind] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'AuxiliaryCaption','IsRowGuidCol')is  null )  ALTER TABLE [Config] ADD [AuxiliaryCaption] [varchar](20)  
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'Auxiliary','IsRowGuidCol')is  null )  ALTER TABLE [ReciptItems] ADD [Auxiliary] Float 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'MachineNo','IsRowGuidCol')is  null )  ALTER TABLE [ReciptItems] ADD [MachineNo] [varchar](25) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'MachineName','IsRowGuidCol')is  null )  ALTER TABLE [ReciptItems] ADD [MachineName] [varchar](50) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'MachineFullWeight','IsRowGuidCol')is  null )  
  ALTER TABLE [ReciptItems] ADD [MachineFullWeight] Float NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'SugarCo','IsRowGuidCol')is  null )  ALTER TABLE [ReciptItems] ADD [SugarCo] Float NOT NULL  DEFAULT (0)   
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'SugarEntity','IsRowGuidCol')is  null )  
  ALTER TABLE [ReciptItems] ADD [SugarEntity] Float NOT NULL  DEFAULT (0)  
  if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'BankReports','IsRowGuidCol')is  null )  ALTER TABLE [Customers] ADD [BankReports] VarChar (250) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'Customer2DetailKind','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [Customer2DetailKind] VarChar (50) 
  ALTER TABLE [LookUps] 	ALTER COLUMN [Code] int  
  ALTER TABLE [LookUps] 	ALTER COLUMN [kind] int 
  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'StuffCodingKind','IsRowGuidCol')is  null )  ALTER TABLE [Config] ADD [StuffCodingKind] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'SpecialReportsActive','IsRowGuidCol')is  null )  ALTER TABLE [Config] ADD [SpecialReportsActive] Tinyint NOT NULL  DEFAULT (1) 
  if not exists (select * from dbo.sysobjects 
   where id = object_id(N'[dbo].[Earth]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 CREATE TABLE [Earth] ([EarthID] int NOT NULL  ,[EarthCode] int ,[EarthField] int NOT NULL , [Gate] int NOT NULL ,[Meters] Float NOT NULL ,CONSTRAINT [PK_Earth] PRIMARY KEY CLUSTERED ([EarthID]) ON [PRIMARY] ) ON [PRIMARY] 
  if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[EarthLimit]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 CREATE TABLE [EarthLimit] (	[EarthLimitID] int NOT NULL ,	[EarthID] int NOT NULL ,[StartDate] char(10)  NOT NULL ,  [EndDate] char(10)  NOT NULL ,[ProcCode] int NOT NULL ,	[ProceWeight] Float NULL ,  CONSTRAINT [PK_EarthLimit] PRIMARY KEY  CLUSTERED ([EarthLimitID]	)  ON [PRIMARY] ,  CONSTRAINT [FK_EarthLimit_Earth] FOREIGN KEY ([EarthID]) REFERENCES [Earth] ([EarthID])  ON DELETE CASCADE  ON UPDATE CASCADE ) ON [PRIMARY] 
  if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'MachineNo','IsRowGuidCol')is  null )  ALTER TABLE [Recipts] ADD [MachineNo] [varchar](25) 
  if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'MachineName','IsRowGuidCol')is  null )  ALTER TABLE [Recipts] ADD [MachineName] [varchar](50) 
  if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'ManageName','IsRowGuidCol')is  null )  ALTER TABLE [Customers] ADD [ManageName] VarChar (60) 
  if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'ManagerSells','IsRowGuidCol')is  null )  ALTER TABLE [Customers] ADD [ManagerSells] VarChar (60) 
  if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'ContactNo','IsRowGuidCol')is  null )  ALTER TABLE [Customers] ADD [ContactNo] VarChar (20) 
  if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'DiscountNote','IsRowGuidCol')is  null )  ALTER TABLE [Customers] ADD [DiscountNote] VarChar (50) 
  if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'Discount','IsRowGuidCol')is  null )  ALTER TABLE [Customers] ADD [Discount] Float 
  if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'DayTime','IsRowGuidCol')is  null )  ALTER TABLE [Customers] ADD [DayTime] int 
  if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'ConveyKind','IsRowGuidCol')is  null )  ALTER TABLE [Customers] ADD [ConveyKind] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'CommunicableStores','IsRowGuidCol')is  null )  
 ALTER TABLE [Config] ADD [CommunicableStores] Tinyint NOT NULL  DEFAULT (1) 
 
 IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE        (TABLE_NAME = N'Recipts') AND (COLUMN_NAME = N'SecondType') AND (DATA_TYPE = N'int'))
begin
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'DF_Recipts_SecondType') AND type = 'D')
 ALTER TABLE Recipts	DROP CONSTRAINT DF_Recipts_SecondType  
 ALTER TABLE Recipts ALTER COLUMN SecondType int   
end
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'DF_Recipts_SecondType') AND type = 'D')
 ALTER TABLE Recipts ADD CONSTRAINT DF_Recipts_SecondType DEFAULT (0) FOR SecondType
  
  if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ReciptTypeRange]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 CREATE TABLE [ReciptTypeRange] ([ReciptType] int NOT NULL ,[Kind] Tinyint NOT NULL , [RecalReciptType] int NOT NULL ,CONSTRAINT [PK_ReciptTypeRange] PRIMARY KEY  CLUSTERED ([ReciptType],[Kind],[RecalReciptType])  ON [PRIMARY] ) ON [PRIMARY]

  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'StuffTecInfoActive','IsRowGuidCol')is  null )  
  ALTER TABLE [Config] ADD [StuffTecInfoActive] Tinyint NOT NULL  DEFAULT (1)  
  
  IF NOT EXISTS (
SELECT CHARACTER_MAXIMUM_LENGTH FROM INFORMATION_SCHEMA.COLUMNS
WHERE        (TABLE_NAME = N'StuffCoding') AND (COLUMN_NAME = N'c_StuffName') AND (CHARACTER_MAXIMUM_LENGTH <256))
ALTER TABLE [StuffCoding]   ALTER COLUMN [c_StuffName] varchar(256)  
  
  if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'ArzTypeID','IsRowGuidCol')is  null )  
  ALTER TABLE [Recipts] ADD [ArzTypeID] int  

  if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'RialsEqual','IsRowGuidCol')is  null )  ALTER TABLE [Recipts] ADD [RialsEqual] Money  
  if ( COLUMNPROPERTY( OBJECT_ID('LookUps'),'Amount1','IsRowGuidCol')is  null )  ALTER TABLE [LookUps] ADD [Amount1] Float 
  if ( COLUMNPROPERTY( OBJECT_ID('LookUps'),'Amount2','IsRowGuidCol')is  null )  ALTER TABLE [LookUps] ADD [Amount2] Float 
  if ( COLUMNPROPERTY( OBJECT_ID('LookUps'),'Amount3','IsRowGuidCol')is  null )  ALTER TABLE [LookUps] ADD [Amount3] Float 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'StandardRate','IsRowGuidCol')is  null )  ALTER TABLE [ReciptItems] ADD [StandardRate] Money  
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'TotalStandardRate','IsRowGuidCol')is  null )  ALTER TABLE [ReciptItems] ADD [TotalStandardRate] Money  
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'ArzAmount','IsRowGuidCol')is  null )  
  ALTER TABLE [ReciptItems] ADD [ArzAmount] Float  
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'InvEntity','IsRowGuidCol')is  null )  ALTER TABLE [ReciptItems] ADD [InvEntity] Float 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'InvWeight','IsRowGuidCol')is  null )  ALTER TABLE [ReciptItems] ADD [InvWeight] Float 
  
  if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'ArzTypeID','IsRowGuidCol')is  null )  
  ALTER TABLE [Customers] ADD [ArzTypeID] int  

  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'ArzTypeID','IsRowGuidCol')is  null )  
  ALTER TABLE [Config] ADD [ArzTypeID] int  

  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'AccStateActive','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [AccStateActive] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'accStateDefault','IsRowGuidCol')is  null )  ALTER TABLE [Customers] ADD [accStateDefault] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'ManegerNoteActive','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [ManegerNoteActive] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'ManegerNote','IsRowGuidCol')is  null )  ALTER TABLE [Forms] ADD [ManegerNote] [varchar](500)  
  if ( COLUMNPROPERTY( OBJECT_ID('FormItems'),'AccState','IsRowGuidCol')is  null )  ALTER TABLE [FormItems] ADD [AccState] Tinyint   
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'TabSheetActive','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [TabSheetActive] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'DefaultTopicInInset','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [DefaultTopicInInset] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'DefaultDetailInInsert','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [DefaultDetailInInsert] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'DefaultCTopicInInsert','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [DefaultCTopicInInsert] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'DefaultCTopic2InInsert','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [DefaultCTopic2InInsert] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('StuffGroups'),'LevelID','IsRowGuidCol')is  null )  ALTER TABLE [StuffGroups] ADD [LevelID] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('StuffGroups'),'UperGroupId','IsRowGuidCol')is  null )  ALTER TABLE [StuffGroups] ADD [UperGroupId] int NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'LevelIdStuffGroup','IsRowGuidCol')is  null )  ALTER TABLE [Config] ADD [LevelIdStuffGroup] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CheckType','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [CheckType] int  
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CashType','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [CashType] int  

  if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'CashCheckFormID','IsRowGuidCol')is  null )  
  ALTER TABLE Forms ADD CashCheckFormID int   



  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'InfoUse4Bed','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [InfoUse4Bed] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'InfoUse4Bes','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [InfoUse4Bes] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'ExpireDateKind','IsRowGuidCol')is  null )  ALTER TABLE [Config] ADD [ExpireDateKind] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('StuffCoding'),'StuffExpireDate','IsRowGuidCol')is  null )  ALTER TABLE [StuffCoding] ADD [StuffExpireDate] char(10) 
  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'RecoverPittedCode','IsRowGuidCol')is  null )  ALTER TABLE [Config] ADD [RecoverPittedCode] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'CanRelation','IsRowGuidCol')is  null )  ALTER TABLE [Config] ADD [CanRelation] Tinyint NOT NULL  DEFAULT (0) 
  if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[StuffCodingSpecial]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 CREATE TABLE StuffCodingSpecial (
    [ID] int IDENTITY (1, 1) NOT NULL ,[StuffCode] int NOT NULL , 
	[StuffName] VarChar (150) NOT NULL ,[StuffSize] [varchar](12) NOT NULL DEFAULT (''), 
	[StuffDiameter] Float NOT NULL DEFAULT (''),[StuffAlloy] [varchar](12) NOT NULL DEFAULT (''), 
	[minOrder] Float NULL ,[maxOrder] Float NULL ,[orderPoint] Float NULL ,
	[orderEntity] Float NULL ,[Note] [varchar](100) NULL, 
	CONSTRAINT [PK_StuffCodingSpecial] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY] ) ON [PRIMARY] 

  if ( COLUMNPROPERTY( OBJECT_ID('StuffCodingSpecial'),'Formality','IsRowGuidCol')is  null )  
  ALTER TABLE StuffCodingSpecial ADD Formality Float   

  if ( COLUMNPROPERTY( OBJECT_ID('StuffCodingSpecial'),'Minimum','IsRowGuidCol')is  null )  
  ALTER TABLE StuffCodingSpecial ADD Minimum Float NOT NULL CONSTRAINT DF_StuffCodingSpecial_Minimum DEFAULT (0)  

  if ( COLUMNPROPERTY( OBJECT_ID('StuffCodingSpecial'),'EffectiveInventory','IsRowGuidCol')is  null )  
  ALTER TABLE StuffCodingSpecial ADD EffectiveInventory Float
  
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'SecondTypeItem','IsRowGuidCol')is  null )  
  ALTER TABLE [ReciptItems] ADD [SecondTypeItem] int  

  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'State0ChangeLevelID','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [State0ChangeLevelID] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'State1ChangeLevelID','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [State1ChangeLevelID] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'State10ChangeLevelID','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [State10ChangeLevelID] Tinyint NOT NULL  DEFAULT (0) 
  if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ExcelImport]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 CREATE TABLE [ExcelImport] ([CellCode] varchar(10) NOT NULL ,[StoreID] [smallint] NOT NULL ,
 [StuffCode] int NOT NULL ,[ReciptType] Tinyint NOT NULL ,
 [KindValue] Tinyint NULL CONSTRAINT [DF_ExcelImport_KindValue] DEFAULT (0),
 [GroupID] Tinyint NOT NULL CONSTRAINT [DF_ExcelImport_GroupID] DEFAULT (0),
 CONSTRAINT [PK_ExcelImport] PRIMARY KEY CLUSTERED([CellCode],[StoreID],[StuffCode],[ReciptType]) ON [PRIMARY] ,
 CONSTRAINT [FK_ExcelImport_ReciptTypes]FOREIGN KEY ([ReciptType])REFERENCES [ReciptTypes] ([ReciptType]) ON UPDATE CASCADE ,
 CONSTRAINT [FK_ExcelImport_Stores] FOREIGN KEY ([StoreID]) REFERENCES [Stores] ([n_StoreID]	) ON UPDATE CASCADE ,
 CONSTRAINT [FK_ExcelImport_StuffCoding] FOREIGN KEY	([StuffCode]) REFERENCES [StuffCoding] ([c_StuffCode]) ON UPDATE CASCADE ) ON [PRIMARY]
  if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'SubAmount','IsRowGuidCol')is  null )  ALTER TABLE [Forms] ADD [SubAmount] Money 
  if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'Rate','IsRowGuidCol')is  null )  ALTER TABLE [Forms] ADD [Rate] Float 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'FormTopicSerial','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [FormTopicSerial] int  
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'FormPaySerial','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [FormPaySerial] int  
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'MasterLoan','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [MasterLoan]  Tinyint NOT NULL  DEFAULT (1) 
  if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'NationalID','IsRowGuidCol')is  null )  ALTER TABLE [Customers] ADD  [NationalID] VarChar (12) NULL 
  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'StuffEnableKind','IsRowGuidCol')is  null )  ALTER TABLE [Config] ADD [StuffEnableKind] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'FileInputPath','IsRowGuidCol')is  null )  ALTER TABLE [Config] ADD [FileInputPath] VarChar (250) 
  if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Tozin]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 CREATE TABLE [Tozin] ( [TozinID] int NOT NULL , [TozinNumber] int NOT NULL 
 CONSTRAINT [DF_Tozins_TozinNumber] DEFAULT (0), [TozinDate] char(10) NOT NULL 
 CONSTRAINT [DF_Tozins_TozinDate] DEFAULT (''), [StuffCode] bigint NOT NULL ,	[PersonID1] int NOT NULL ,	
 [MachineName] VarChar (50) NULL , [StoreID] [smallint] NULL CONSTRAINT [DF_Tozins_StoreID] DEFAULT (0), 
 [MachineNo] VarChar (25) NULL ,[ReciptType] Tinyint NOT NULL , [MachineWeight] Float NOT NULL 
 CONSTRAINT [DF__Tozins_MachineWeight] DEFAULT (0), [MachineFullWeight] Float NOT NULL 
 CONSTRAINT [DF__Tozins_MachineFullWeight] DEFAULT (0), [TozinNote] VarChar (100) NULL ,
 [EnterDate] [datetime] NOT NULL ,[ExitDate] [datetime] NOT NULL , [FirstUser] VarChar (50) NULL ,
 [LastUser] VarChar (50) NULL , CONSTRAINT [PK_Tozins] PRIMARY KEY CLUSTERED 	([TozinID]	) ON [PRIMARY] ,
  CONSTRAINT [FK_Tozins_ReciptTypes] FOREIGN KEY ([ReciptType]) REFERENCES [ReciptTypes] ([ReciptType])
   ON UPDATE CASCADE , CONSTRAINT [FK_Tozins_Stores] FOREIGN KEY 	([StoreID]	) 
   REFERENCES [Stores] (	[n_StoreID]	) ON UPDATE CASCADE , CONSTRAINT [FK_Tozins_StuffCoding] 
   FOREIGN KEY 	([StuffCode]	) REFERENCES [StuffCoding] (	[c_StuffCode]	) ON UPDATE CASCADE , 
   CONSTRAINT [FK_Tozins_Customers] FOREIGN KEY 	([PersonID1]	) 
   REFERENCES [Customers] (	[CustID]	) ON UPDATE CASCADE  ) ON [PRIMARY]

ALTER TABLE tozin ALTER COLUMN exitdate DATETIME NULL

 if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UseOthers]') and OBJECTPROPERTY(id,N'IsUserTable') = 1) 
 begin
 CREATE TABLE [UseOthers]([UseOtherID] [nvarchar](15) NOT NULL,[UseOtherName] [nvarchar](50) NULL
 , [Code] NvarChar (20) NULL ,[LookUpID] int NULL ,	[Rate] Float NULL 
 , CONSTRAINT [PK_UseOthers] PRIMARY KEY CLUSTERED([UseOtherID]) ON [PRIMARY] ,
  CONSTRAINT [FK_UseOthers_LookUps] FOREIGN KEY 	([LookUpID]	) REFERENCES [LookUps] ([LookUpID]) ON UPDATE CASCADE ) ON [PRIMARY] 
  ALTER TABLE [Recipts] ADD [UseOtherID] NvarChar (15) NULL 
  ALTER TABLE dbo.Recipts WITH NOCHECK ADD CONSTRAINT	FK_Recipts_UseOthers FOREIGN KEY (UseOtherID	) 
  REFERENCES dbo.UseOthers	(	UseOtherID	) ON UPDATE CASCADE end 
  if ( COLUMNPROPERTY( OBJECT_ID('UseOthers'),'Kind','IsRowGuidCol')is  null )  
  ALTER TABLE [UseOthers] ADD [Kind] [nvarchar](50) NULL  
  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'EntityOutputLowerLimit2','IsRowGuidCol')is  null )  
  ALTER TABLE [Config] ADD [EntityOutputLowerLimit2] Money  
  if ( COLUMNPROPERTY( OBJECT_ID('UseOthers'),'TypeCode','IsRowGuidCol')is null ) 
  begin 
  ALTER TABLE dbo.UseOthers ADD	TypeCode int NULL 
  ALTER TABLE dbo.UseOthers WITH NOCHECK ADD CONSTRAINT	FK_UseOthers_LookUps1 FOREIGN KEY	(TypeCode) REFERENCES dbo.LookUps	(LookUpID) 
  end
  if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'SellPrice_S','IsRowGuidCol')is  null )  ALTER TABLE [Stuffcoding] ADD [SellPrice_S] Money  
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'RecallFormDisk','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [RecallFormDisk] Tinyint NOT NULL  DEFAULT (0) 
  if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[EarthGroups]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 CREATE TABLE [EarthGroups] ([EarthGrpID] int NOT NULL  DEFAULT (0) ,[EarthGrpName] NvarChar (100) NOT NULL , [Amount] Float ,CONSTRAINT [PK_EarthGroups] PRIMARY KEY CLUSTERED ([EarthGrpID]) ON [PRIMARY] ) ON [PRIMARY]  
 if ( COLUMNPROPERTY( OBJECT_ID('Earth'),'EarthGrpID','IsRowGuidCol')is null ) begin ALTER TABLE Earth ADD	EarthGrpID int NOT NULL DEFAULT (0)  
 ALTER TABLE Earth WITH NOCHECK ADD CONSTRAINT	FK_Earth_EarthGroups 
 FOREIGN KEY	(EarthGrpID) REFERENCES EarthGroups	(EarthGrpID )ON UPDATE CASCADE ALTER TABLE Earth ADD	EarthDesc NvarChar (80)  ALTER TABLE Earth ADD	UnitCode Tinyint   
 ALTER TABLE Earth WITH NOCHECK ADD CONSTRAINT	FK_Earth_Units FOREIGN KEY	(UnitCode) REFERENCES Units	(UnitCode  )ON UPDATE CASCADE ALTER TABLE Earth ADD	EarthTeckinfo NvarChar (50)  ALTER TABLE Earth ADD	OwnerDate char(10)  end
  if ( COLUMNPROPERTY( OBJECT_ID('EarthLimit'),'State','IsRowGuidCol')is  null )  ALTER TABLE [EarthLimit] ADD [State] Tinyint NOT NULL  DEFAULT (0) 
  if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ProcessInfo]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 CREATE TABLE [ProcessInfo] ([ProcessID] int NOT NULL ,[ProcessName] NvarChar (80) NOT NULL , CONSTRAINT [PK_ProcessInfo] PRIMARY KEY CLUSTERED ([ProcessID]) ON [PRIMARY] ) ON [PRIMARY]  if ( COLUMNPROPERTY( OBJECT_ID('TransForms'),'EarthGrpID','IsRowGuidCol')is null ) begin ALTER TABLE TransForms ADD	EarthGrpID int NOT NULL DEFAULT (0)  ALTER TABLE TransForms WITH NOCHECK ADD CONSTRAINT	FK_TransForms_EarthGroups FOREIGN KEY	(EarthGrpID) REFERENCES EarthGroups	( EarthGrpID ) ON UPDATE CASCADE  ALTER TABLE TransForms ADD	EarthCost  Float   ALTER TABLE TransForms ADD	CycleMonth Float   end if ( COLUMNPROPERTY( OBJECT_ID('TransFormItems'),'ProcessID','IsRowGuidCol')is null ) begin ALTER TABLE TransFormItems ADD	CycleMonth Float   ALTER TABLE TransFormItems ADD	ProcessID int NOT NULL DEFAULT (0)  ALTER TABLE TransFormItems WITH NOCHECK ADD CONSTRAINT	FK_TransFormItems_ProcessInfo FOREIGN KEY	(ProcessID) REFERENCES ProcessInfo	( ProcessID ) ON UPDATE CASCADE  end if ( COLUMNPROPERTY( OBJECT_ID('TransFormInfo'),'ProcessID','IsRowGuidCol')is null ) begin ALTER TABLE TransFormInfo ADD	CycleMonth Float   ALTER TABLE TransFormInfo ADD	ProcessID int NOT NULL DEFAULT (0)  ALTER TABLE TransFormInfo WITH NOCHECK ADD CONSTRAINT	FK_TransFormInfo_ProcessInfo FOREIGN KEY	(ProcessID) REFERENCES ProcessInfo	( ProcessID )ON UPDATE CASCADE  end
  if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ProcessProduce]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 CREATE TABLE [ProcessProduce] ([ProcessProduceID] int NOT NULL ,[ProcessID] int NOT NULL  DEFAULT (0) ,[ProcessRow] int NOT NULL ,[PrvCode] int NOT NULL , [CycleMonth] Float NOT NULL ,[TransFormID] int NOT NULL ,CONSTRAINT [PK_ProcessProduce] PRIMARY KEY CLUSTERED ([ProcessProduceID]) ON [PRIMARY]  ,	CONSTRAINT [FK_ProcessProduce_ProcessInfo] FOREIGN KEY ([ProcessID]) REFERENCES [ProcessInfo] ([ProcessID])  ON UPDATE CASCADE  ,	CONSTRAINT [FK_ProcessProduce_TransForms] FOREIGN KEY ([TransFormID]) REFERENCES [TransForms] ([TransFormID])  ON DELETE CASCADE ON UPDATE CASCADE ) ON [PRIMARY] 
  if ( COLUMNPROPERTY( OBJECT_ID('LookUps'),'ChangeState','IsRowGuidCol')is  null )  ALTER TABLE [LookUps] ADD [ChangeState]  Tinyint NOT NULL  DEFAULT (0)  
  if ( COLUMNPROPERTY( OBJECT_ID('StuffCoding'),'ChangeState','IsRowGuidCol')is  null )  ALTER TABLE [StuffCoding] ADD [ChangeState]  Tinyint NOT NULL  DEFAULT (0)  
  if ( COLUMNPROPERTY( OBJECT_ID('Units'),'ChangeState','IsRowGuidCol')is  null )  ALTER TABLE [Units] ADD [ChangeState]  Tinyint NOT NULL  DEFAULT (0)  
  if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[StuffCodingAid]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 CREATE TABLE [StuffCodingAid] ([c_StuffCode] int NOT NULL ,[LookupID] int NOT NULL  , [LookUpDesc] int NOT NULL ,CONSTRAINT [PK_StuffCodingAid] PRIMARY KEY CLUSTERED ([LookUpDesc],[c_StuffCode],[LookupID]) ON [PRIMARY]  ,	CONSTRAINT [FK_StuffCodingAid_StuffCoding] FOREIGN KEY ([c_StuffCode]) REFERENCES [StuffCoding] ([c_StuffCode])  ON DELETE CASCADE ON UPDATE CASCADE ) ON [PRIMARY]
  if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'Mobile','IsRowGuidCol')is  null )  ALTER TABLE [Customers] ADD [Mobile] VarChar (20) 
  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'BarCodeKind','IsRowGuidCol')is  null )  ALTER TABLE [Config] ADD [BarCodeKind] Tinyint NOT NULL  DEFAULT (0)  if not exists (select * from dbo.sysobjects where id = object_id(N'[Manifesto]') and OBJECTPROPERTY(id, N'IsUserTable') = 1) begin
 CREATE TABLE [Manifesto] ([ManifestoID] int NOT NULL ,[ManifestoNo] int NOT NULL ,[ManifestoDate] [char] (10) NOT NULL ,[ManifestoRunDate] [char] (10) NOT NULL ,[Note] NvarChar (250) , CONSTRAINT [PK_Manifesto] PRIMARY KEY CLUSTERED	([ManifestoID]) ON [PRIMARY] ) ON [PRIMARY] end if not exists (select * from dbo.sysobjects where id = object_id(N'[ManifestoItems]') and OBJECTPROPERTY(id,N'IsUserTable') = 1) begin
 CREATE TABLE [ManifestoItems] ([ManifestoItemsID] int IDENTITY (1, 1) NOT NULL , [ManifestoID] int NOT NULL ,[StuffCode] int NOT NULL , [ConsumerPrice] Money , SellPrice1 Money ,SellPrice2 Money ,SellPrice3 Money ,SellPrice4 Money , CONSTRAINT [PK_ManifestoItems] PRIMARY KEY CLUSTERED	([ManifestoItemsID]) ON [PRIMARY]
 , CONSTRAINT [FK_ManifestoItems_Manifesto] FOREIGN KEY ([ManifestoID]) REFERENCES [Manifesto] ([ManifestoID]) ON DELETE CASCADE ON UPDATE CASCADE
 , CONSTRAINT [FK_Manifesto_StuffCoding] FOREIGN KEY ([StuffCode]) REFERENCES [StuffCoding] ([c_StuffCode]) ON UPDATE CASCADE )ON [PRIMARY] end

 
IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ManifestoItems_Manifesto' AND type = 'F')
ALTER TABLE [dbo].[ManifestoItems] DROP CONSTRAINT FK_ManifestoItems_Manifesto


ALTER TABLE [dbo].[ManifestoItems]  WITH NOCHECK ADD  CONSTRAINT [FK_ManifestoItems_Manifesto] FOREIGN KEY([ManifestoID])
REFERENCES [dbo].[Manifesto] ([ManifestoID])
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE [dbo].[ManifestoItems] CHECK CONSTRAINT [FK_ManifestoItems_Manifesto]


  if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'AcceptEntity','IsRowGuidCol')is  null )  ALTER TABLE [ReciptItems] ADD [AcceptEntity] Float 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'RollbackEntity','IsRowGuidCol')is  null )  ALTER TABLE [ReciptItems] ADD [RollbackEntity] Float 
  if ( COLUMNPROPERTY( OBJECT_ID('FormItems'),'ItemState','IsRowGuidCol')is  null )  ALTER TABLE [FormItems] ADD [ItemState] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormItems'),'ItemStateComment','IsRowGuidCol')is  null )  ALTER TABLE [FormItems] ADD [ItemStateComment] NvarChar (200) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormItems'),'SeverableAmount','IsRowGuidCol')is  null )  ALTER TABLE [FormItems] ADD [SeverableAmount] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'TopicCodeActive','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [TopicCodeActive] Tinyint NOT NULL  DEFAULT (1) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'DetailCodeActive','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [DetailCodeActive] Tinyint NOT NULL  DEFAULT (1) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CTopicCode1Active','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [CTopicCode1Active] Tinyint NOT NULL  DEFAULT (1) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CTopicCode2Active','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [CTopicCode2Active] Tinyint NOT NULL  DEFAULT (1) 
  
 if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Severable]') and 
             OBJECTPROPERTY(id,N'IsUserTable') =1)
 CREATE TABLE [Severable] ([ID] int IDENTITY (1, 1) NOT NULL , [FormItemID] int NOT NULL , 
 [CustID] int NOT NULL,[TopicCode] [varchar](12) NULL,	[DetailCode] [varchar](12) NULL,
  [CTopicCode] [varchar](12) NULL,[CTopicCode2] [varchar](12) NULL,[BudgetCode] int NULL, 
  [Amount] Money NOT NULL, CONSTRAINT [PK_Severable] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY] , 
  CONSTRAINT [FK_Severable_FormItems] FOREIGN KEY ([FormItemID]) 
  REFERENCES [FormItems] ([FormItemID]) ON DELETE CASCADE ON UPDATE CASCADE , 
  CONSTRAINT [FK_Severable_Customers] FOREIGN KEY ([CustID])REFERENCES [Customers] ([CustID])  ) ON [PRIMARY]
  
  if ( COLUMNPROPERTY( OBJECT_ID('UseUnits'),'UseActive','IsRowGuidCol')is  null )  ALTER TABLE [UseUnits] ADD [UseActive]  Tinyint  NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'AcceptWeight','IsRowGuidCol')is  null )  ALTER TABLE [ReciptItems] ADD [AcceptWeight] Float 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'RollbackWeight','IsRowGuidCol')is  null )  ALTER TABLE [ReciptItems] ADD [RollbackWeight] Float 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'UpholdActive','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [UpholdActive]  Tinyint  NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'EditableFields','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [EditableFields] NvarChar (1000) 

  if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'CustomersRow','IsRowGuidCol')is  null )  ALTER TABLE [Customers] ADD [CustomersRow] int  
  if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'ReciptsRow','IsRowGuidCol')is  null )  ALTER TABLE [Recipts] ADD [ReciptsRow] int  
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CustomerDetailsDocType','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [CustomerDetailsDocType] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'BedBesDetails','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [BedBesDetails] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'DocStatusDefault','IsRowGuidCol')is  null )  ALTER TABLE [Config] ADD [DocStatusDefault] Tinyint NOT NULL DEFAULT (1)  
  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'DocReciptStateDefault','IsRowGuidCol')is  null )  ALTER TABLE [Config] ADD [DocReciptStateDefault] Tinyint NOT NULL DEFAULT (0)   if not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Recipts_LookUps' AND type = 'F')  ALTER TABLE dbo.Recipts WITH NOCHECK ADD CONSTRAINT FK_Recipts_LookUps FOREIGN KEY(     SecondType   )REFERENCES dbo.LookUps(LookUpID)  if not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptItems_LookUps' AND type = 'F')  ALTER TABLE dbo.ReciptItems WITH NOCHECK ADD CONSTRAINT FK_ReciptItems_LookUps FOREIGN KEY(     SecondTypeItem   )REFERENCES dbo.LookUps(LookUpID) 
  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'EditCustNameLevelID','IsRowGuidCol')is  null )  ALTER TABLE [Config] ADD [EditCustNameLevelID] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'EditStuffNameLevelID','IsRowGuidCol')is  null )  ALTER TABLE Config ADD EditStuffNameLevelID Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'TaxCo','IsRowGuidCol')is  null )  ALTER TABLE [ReciptItems] ADD [TaxCo] Float 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'TaxValue','IsRowGuidCol')is  null )  ALTER TABLE [ReciptItems] ADD [TaxValue] Money 
   if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[CustomersInterView]') and OBJECTPROPERTY (id,N'IsUserTable') =1)
CREATE TABLE [CustomersInterView] ([ID] int IDENTITY (1, 1) NOT NULL ,[CustID] int NOT NULL,
 [InterViewKind] Tinyint NOT NULL ,[InterViewNo] int NOT NULL,[InterViewDate] [char](10) NOT NULL, [InterViewNote] [nvarchar](2000) ,
 [Accost][nvarchar](200) ,	[ModifyDate] [datetime] NOT NULL, [InterViewStae] Tinyint NOT NULL	, CONSTRAINT [PK_CustomersInterView] 
 PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY] , 
 CONSTRAINT [FK_CustomersInterView_Customers] FOREIGN KEY ([CustID])REFERENCES [Customers] ([CustID]) ON UPDATE CASCADE ) ON [PRIMARY]

 if ( COLUMNPROPERTY( OBJECT_ID('CustomersInterView'),'FirstUser','IsRowGuidCol')is  null )  
ALTER TABLE CustomersInterView ADD FirstUser nvarchar(20)  

if ( COLUMNPROPERTY( OBJECT_ID('CustomersInterView'),'FollowUp','IsRowGuidCol')is  null )  
ALTER TABLE CustomersInterView ADD FollowUp DateTime

  if ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'ReciptNumber','IsRowGuidCol')is  null )  ALTER TABLE [Tozin] ADD [ReciptNumber] int  NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'OrderByFields','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [OrderByFields] [Nvarchar](100)
  if ( COLUMNPROPERTY( OBJECT_ID('Severable'),'SeverableNote','IsRowGuidCol')is  null )  ALTER TABLE Severable ADD SeverableNote Nvarchar(255)   if ( COLUMNPROPERTY( OBJECT_ID('Config'),'sd1_caption','IsRowGuidCol')is  null )  ALTER TABLE [Config] ADD [sd1_caption] [varchar](20)   if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'sd1','IsRowGuidCol')is  null )  ALTER TABLE [Stuffcoding] ADD [sd1] [varchar](64)   if ( COLUMNPROPERTY( OBJECT_ID('Config'),'sd2_caption','IsRowGuidCol')is  null )  ALTER TABLE [Config] ADD [sd2_caption] [varchar](20)   if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'sd2','IsRowGuidCol')is  null )  ALTER TABLE [Stuffcoding] ADD [sd2] [varchar](64)   if ( COLUMNPROPERTY( OBJECT_ID('Config'),'sd3_caption','IsRowGuidCol')is  null )  ALTER TABLE [Config] ADD [sd3_caption] [varchar](20)   if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'sd3','IsRowGuidCol')is  null )  ALTER TABLE [Stuffcoding] ADD [sd3] [varchar](64)   if ( COLUMNPROPERTY( OBJECT_ID('Config'),'sd4_caption','IsRowGuidCol')is  null )  ALTER TABLE [Config] ADD [sd4_caption] [varchar](20)   if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'sd4','IsRowGuidCol')is  null )  ALTER TABLE [Stuffcoding] ADD [sd4] [varchar](64)   if ( COLUMNPROPERTY( OBJECT_ID('Config'),'sd5_caption','IsRowGuidCol')is  null )  ALTER TABLE [Config] ADD [sd5_caption] [varchar](20)   if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'sd5','IsRowGuidCol')is  null )  ALTER TABLE [Stuffcoding] ADD [sd5] [varchar](64)   if ( COLUMNPROPERTY( OBJECT_ID('Config'),'sd6_caption','IsRowGuidCol')is  null )  ALTER TABLE [Config] ADD [sd6_caption] [varchar](20)   if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'sd6','IsRowGuidCol')is  null )  ALTER TABLE [Stuffcoding] ADD [sd6] [varchar](64)   if ( COLUMNPROPERTY( OBJECT_ID('Config'),'sd7_caption','IsRowGuidCol')is  null )  ALTER TABLE [Config] ADD [sd7_caption] [varchar](20)   if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'sd7','IsRowGuidCol')is  null )  ALTER TABLE [Stuffcoding] ADD [sd7] [varchar](64)   if ( COLUMNPROPERTY( OBJECT_ID('Config'),'sd8_caption','IsRowGuidCol')is  null )  ALTER TABLE [Config] ADD [sd8_caption] [varchar](20)   if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'sd8','IsRowGuidCol')is  null )  ALTER TABLE [Stuffcoding] ADD [sd8] [varchar](64)   if ( COLUMNPROPERTY( OBJECT_ID('Config'),'sd9_caption','IsRowGuidCol')is  null )  ALTER TABLE [Config] ADD [sd9_caption] [varchar](20)   if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'sd9','IsRowGuidCol')is  null )  ALTER TABLE [Stuffcoding] ADD [sd9] [varchar](64)   if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'st1','IsRowGuidCol')is  null )  ALTER TABLE [Stuffcoding] ADD [st1] int   if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'st2','IsRowGuidCol')is  null )  ALTER TABLE [Stuffcoding] ADD [st2] int   if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'st3','IsRowGuidCol')is  null )  ALTER TABLE [Stuffcoding] ADD [st3] int   if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'st4','IsRowGuidCol')is  null )  ALTER TABLE [Stuffcoding] ADD [st4] int   if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'st5','IsRowGuidCol')is  null )  ALTER TABLE [Stuffcoding] ADD [st5] int   if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'st6','IsRowGuidCol')is  null )  ALTER TABLE [Stuffcoding] ADD [st6] int   if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'st7','IsRowGuidCol')is  null )  ALTER TABLE [Stuffcoding] ADD [st7] int   if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'st8','IsRowGuidCol')is  null )  ALTER TABLE [Stuffcoding] ADD [st8] int   if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'st9','IsRowGuidCol')is  null )  ALTER TABLE [Stuffcoding] ADD [st9] int   if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'st10','IsRowGuidCol')is  null )  ALTER TABLE [Stuffcoding] ADD [st10] int   if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'st11','IsRowGuidCol')is  null )  ALTER TABLE [Stuffcoding] ADD [st11] int   if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'st12','IsRowGuidCol')is  null )  ALTER TABLE [Stuffcoding] ADD [st12] int   if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'st13','IsRowGuidCol')is  null )  ALTER TABLE [Stuffcoding] ADD [st13] int   if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'st14','IsRowGuidCol')is  null )  ALTER TABLE [Stuffcoding] ADD [st14] int   if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'st15','IsRowGuidCol')is  null )  ALTER TABLE [Stuffcoding] ADD [st15] int  


--IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts_StoreID_YearID_ReciptDate_ReciptState'))
IF OBJECT_ID ('TR_ConfigChangeLog_recipts', 'TR') IS NOT NULL
ALTER TABLE Recipts ENABLE TRIGGER TR_ConfigChangeLog_recipts

IF OBJECT_ID ('[TR_ConfigChangeLog_dbo.FormItems]', 'TR') IS NOT NULL
ALTER TABLE FormItems ENABLE TRIGGER [TR_ConfigChangeLog_dbo.FormItems]

IF OBJECT_ID ('TR_ConfigChangeLog_Forms.Forms', 'TR') IS NOT NULL
ALTER TABLE Forms ENABLE TRIGGER TR_ConfigChangeLog_Forms

IF OBJECT_ID ('TR_CheckDelForms.Forms', 'TR') IS NOT NULL
ALTER TABLE Forms ENABLE TRIGGER TR_CheckDelForms


IF OBJECT_ID ('TR_ConfigurationsChangeLog', 'TR') IS NOT NULL
ALTER TABLE Recipts ENABLE TRIGGER TR_ConfigurationsChangeLog

IF OBJECT_ID ('TR_NotAllowUpdateTrans3OnRecipt', 'TR') IS NOT NULL
ALTER TABLE Recipts ENABLE TRIGGER TR_NotAllowUpdateTrans3OnRecipt

IF OBJECT_ID ('TR_NotAllowUpdateTrans3OnRecipt', 'TR') IS NOT NULL
ALTER TABLE Recipts ENABLE TRIGGER TR_NotAllowUpdateTrans3OnRecipt


IF OBJECT_ID ('TR_NotAllowDeleteTrans1OnRItems', 'TR') IS NOT NULL
ALTER TABLE ReciptItems ENABLE TRIGGER TR_NotAllowDeleteTrans1OnRItems

IF OBJECT_ID ('TR_NotAllowUpdateTrans3OnRItems', 'TR') IS NOT NULL
ALTER TABLE ReciptItems ENABLE TRIGGER TR_NotAllowUpdateTrans3OnRItems

IF OBJECT_ID ('TR_CheckDelFormItems', 'TR') IS NOT NULL
ALTER TABLE FormItems ENABLE TRIGGER TR_CheckDelFormItems



IF OBJECT_ID ('TR_NotAllowUpdateTrans3OnRDeficit', 'TR') IS NOT NULL
ALTER TABLE ReciptsDeficits ENABLE TRIGGER TR_NotAllowUpdateTrans3OnRDeficit
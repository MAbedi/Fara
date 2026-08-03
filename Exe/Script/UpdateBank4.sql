set nocount on
 
 IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin
 if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'Person3Active','IsRowGuidCol')is null )
 ALTER TABLE ReciptTypes ADD Person3Active Tinyint NOT NULL DEFAULT (0)
 
 if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'Person3Caption','IsRowGuidCol')is null )
 ALTER TABLE ReciptTypes ADD Person3Caption nvarchar(50)
 
 if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'CustomerKind3','IsRowGuidCol')is null )
 ALTER TABLE ReciptTypes ADD CustomerKind3 nvarchar(50)
 
 if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'CreditChecked1','IsRowGuidCol')is null )
 ALTER TABLE ReciptTypes ADD CreditChecked1 Tinyint NOT NULL DEFAULT (1)
 
 if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'CreditChecked2','IsRowGuidCol')is null )
 ALTER TABLE ReciptTypes ADD CreditChecked2 Tinyint NOT NULL DEFAULT (1)
 
 if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'CreditChecked3','IsRowGuidCol')is null )
 ALTER TABLE ReciptTypes ADD CreditChecked3 Tinyint NOT NULL DEFAULT (1)
 
 if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'CreditChecked4','IsRowGuidCol')is null )
 ALTER TABLE ReciptTypes ADD CreditChecked4 Tinyint NOT NULL DEFAULT (1)
 
 if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'CreditChecked5','IsRowGuidCol')is null )
 ALTER TABLE ReciptTypes ADD CreditChecked5 Tinyint NOT NULL DEFAULT (1)
 
 if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'CustCheckDateOffset','IsRowGuidCol')is null )
 ALTER TABLE ReciptTypes ADD CustCheckDateOffset Tinyint NOT NULL DEFAULT (2)
 
 if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'CreditChkCurrentForm','IsRowGuidCol')is null )
 ALTER TABLE ReciptTypes ADD CreditChkCurrentForm Tinyint NOT NULL DEFAULT (1)

   if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ReciptNumberEventKind','IsRowGuidCol')is  null )  
  ALTER TABLE [ReciptTypes] ADD [ReciptNumberEventKind] Tinyint NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'WaterCoOrDeficitValueEdit','IsRowGuidCol')is  null )  
  ALTER TABLE [ReciptTypes] ADD [WaterCoOrDeficitValueEdit] Tinyint NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'StandardCaption','IsRowGuidCol')is  null )  
  ALTER TABLE ReciptTypes ADD StandardCaption Nvarchar (50) NOT NULL  DEFAULT ('«” «‰œ«—œ') 

 end
 
 if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'MaxCreditCurrentForm','IsRowGuidCol')is null )
 ALTER TABLE Customers ADD MaxCreditCurrentForm money NOT NULL DEFAULT (999999999)
 
 if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'CustomerActive','IsRowGuidCol')is null )
 ALTER TABLE Customers ADD CustomerActive Tinyint NOT NULL DEFAULT (0)

 
 if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'SellsEmporiumActive','IsRowGuidCol')is null )
 ALTER TABLE FormTypes ADD [SellsEmporiumActive] Tinyint NOT NULL DEFAULT (0)
 
 if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'SellsMethodActive','IsRowGuidCol')is null )
 ALTER TABLE FormTypes ADD SellsMethodActive Tinyint NOT NULL DEFAULT (0)
 
 if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'SellsMethod','IsRowGuidCol')is null )
 ALTER TABLE Forms ADD SellsMethod int NOT NULL DEFAULT (1)

 IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Forms_SellsMethods' AND type = 'F')
ALTER TABLE [Forms] ADD CONSTRAINT FK_Forms_SellsMethods FOREIGN KEY ([SellsMethod])REFERENCES
 [SellsMethods] ([SellsMethod]) 
 
 if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'SellsEmporium','IsRowGuidCol')is null )
 ALTER TABLE Forms ADD SellsEmporium int NOT NULL DEFAULT (1)


 IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Forms_SellsEmporiums' AND type = 'F')
ALTER TABLE [Forms] ADD CONSTRAINT FK_Forms_SellsEmporiums FOREIGN KEY ([SellsEmporium])REFERENCES
 [SellsEmporiums] ([SellsEmporium])

 



  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'SelectedInvoiceEmission','IsRowGuidCol')is  null )  ALTER TABLE [Config] ADD [SelectedInvoiceEmission] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'DuplicateFormNoActive','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [DuplicateFormNoActive] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'PrintAfterPost','IsRowGuidCol')is  null )  ALTER TABLE [FormTypes] ADD [PrintAfterPost] Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'ChangeAccNames','IsRowGuidCol')is  null )  ALTER TABLE [Config] ADD [ChangeAccNames] [nvarchar](400) 
  if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'ReagentName','IsRowGuidCol')is  null )  begin ALTER TABLE [Customers] ADD [ReagentName] [nvarchar](60)  ALTER TABLE [Customers] ADD [Tel2] [nvarchar](30)  ALTER TABLE [Customers] ADD [Tel3] [nvarchar](30)  end
  if ( COLUMNPROPERTY( OBJECT_ID('Stores'),'accTopicCodeCostDownSave','IsRowGuidCol')is  null )  
  begin  
  ALTER TABLE Stores      ADD accTopicCodeCostDownSave varchar(12) NOT NULL  DEFAULT (0) 
   ALTER TABLE ReciptTypes ADD CostDownSaveActive       Tinyint     NOT NULL  DEFAULT (0)  
   ALTER TABLE Recipts     ADD CostDownSave             money       NOT NULL  DEFAULT (0)  end 


  if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'PersonID3','IsRowGuidCol')is null ) 
  begin 
  ALTER TABLE [Customers] ADD [PersonID3] int NOT NULL DEFAULT (0) 
  ALTER TABLE [Customers] ADD CONSTRAINT [FK_Customers_CustomersPersonID3] 
     FOREIGN KEY ( [PersonID3] ) REFERENCES [Customers]	([CustID]) 
  end
  
  if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'UseUnitID','IsRowGuidCol')is null ) 
  ALTER TABLE [Customers] ADD [UseUnitID] int NOT NULL DEFAULT (0) 

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Customers_UseUnits' AND type = 'F')
  ALTER TABLE [Customers] ADD CONSTRAINT FK_Customers_UseUnits
   FOREIGN KEY ( [UseUnitID] ) REFERENCES [UseUnits]	([UseUnitID]) 
 
  
  
  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'CheckControlsItems','IsRowGuidCol')is  null )  begin
  ALTER TABLE Config ADD CheckControlsItems Nvarchar (50) NOT NULL DEFAULT ('0') 
  ALTER TABLE Config ADD CheckControlsKind  Tinyint NOT NULL DEFAULT (1) end

BEGIN TRY  
if  exists (select * from dbo.sysobjects where id = object_id(N'util.Analyze') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 if not exists (select * from dbo.sysobjects where id = object_id(N'ReciptItemsRelease') and OBJECTPROPERTY(id,N'IsUserTable') =1)
 CREATE TABLE ReciptItemsRelease (
 ReleaseID int NOT NULL ,	ReciptItemID int NOT NULL ,	ServerID int NOT NULL ,
 YearID int NOT NULL ,	ReciptID int NOT NULL ,	CustID int NOT NULL ,
 ReleaseEntity float NOT NULL ,	ReleaseWeight float NOT NULL ,
 CONSTRAINT FK_ReciptItemsRelease_Customers FOREIGN KEY 	(CustID	)
 REFERENCES Customers (CustID) ON UPDATE CASCADE ,
 CONSTRAINT FK_ReciptItemsRelease_ReciptItems FOREIGN KEY (ReciptItemID,ReciptID,ServerID,YearID)
 REFERENCES ReciptItems (ReciptItemID,ReciptID,ServerID,YearID) ON DELETE CASCADE ,
 CONSTRAINT PK_ReciptItemsRelease PRIMARY KEY CLUSTERED (ReleaseID,ServerID	) ON [PRIMARY] ) ON [PRIMARY]

END TRY  
BEGIN CATCH  

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptPurchaseEffect_ReciptItems' AND type = 'F')
ALTER TABLE ReciptPurchaseEffect DROP CONSTRAINT FK_ReciptPurchaseEffect_ReciptItems

 IF  EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_ReciptItems' AND type = 'K')
 ALTER TABLE ReciptItems DROP CONSTRAINT PK_ReciptItems 


 IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_ReciptItems' AND type = 'K')
 ALTER TABLE ReciptItems ADD CONSTRAINT PK_ReciptItems PRIMARY KEY CLUSTERED
 (ReciptItemID,ReciptID,ServerID,YearID) ON [PRIMARY]

END CATCH; 

 
if  exists (select * from dbo.sysobjects where id = object_id(N'util.Analyze') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 if not exists (select * from dbo.sysobjects where id = object_id(N'ReciptsRegulates') and OBJECTPROPERTY(id,N'IsUserTable')=1)
 CREATE TABLE ReciptsRegulates (
 ServerID int NOT NULL ,YearID int NOT NULL ,
 RegRowId int NOT NULL ,	ReciptItemID int NOT NULL ,	ReciptID int NOT NULL ,
 RegDate Char(10) NOT NULL default(''),	RegPrice money NOT NULL default(0),
 RegDocNo int NOT NULL default(0),RegDocDate Char(10) NOT NULL default(''),
 RegMasterRowID int NOT NULL default(0),RegNote nvarchar(500),
 CONSTRAINT FK_ReciptsRegulates_ReciptItems FOREIGN KEY (ReciptItemID,ReciptID,ServerID,YearID)
 REFERENCES ReciptItems (ReciptItemID,ReciptID,ServerID,YearID) ON DELETE CASCADE ,
 CONSTRAINT PK_ReciptsRegulates PRIMARY KEY CLUSTERED (RegRowId,ServerID,YearID) ON [PRIMARY] ) ON [PRIMARY]
 
 
 if  exists (select * from dbo.sysobjects where id = object_id(N'util.Analyze') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin
if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'InsertAutoEffectID','IsRowGuidCol')is null )
 ALTER TABLE Customers ADD InsertAutoEffectID int

 IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Customers_PurchaseEffect' AND type = 'F')
 ALTER TABLE Customers ADD CONSTRAINT FK_Customers_PurchaseEffect
   FOREIGN KEY (InsertAutoEffectID) REFERENCES PurchaseEffect (EffectID) ON UPDATE CASCADE

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'EffectID','IsRowGuidCol')is null )
 ALTER TABLE Customers ADD EffectID int

 
 IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Customers_PurchaseEffect2' AND type = 'F')
 ALTER TABLE Customers ADD CONSTRAINT FK_Customers_PurchaseEffect2
   FOREIGN KEY (EffectID) REFERENCES PurchaseEffect (EffectID)

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'CustomerGrpID2','IsRowGuidCol')is null )
 ALTER TABLE Customers ADD CustomerGrpID2 int

 IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Customers_CustomersGroup2' AND type = 'F')
 ALTER TABLE Customers ADD CONSTRAINT FK_Customers_CustomersGroup2
   FOREIGN KEY (CustomerGrpID2) REFERENCES CustomersGroup (CustomerGrpID)

 if ( COLUMNPROPERTY( OBJECT_ID('StuffCoding'),'CustomerGrpID','IsRowGuidCol')is null )
ALTER TABLE StuffCoding ADD CustomerGrpID int

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_StuffCoding_CustomersGroup' AND type = 'F')
  ALTER TABLE StuffCoding ADD CONSTRAINT FK_StuffCoding_CustomersGroup
   FOREIGN KEY (CustomerGrpID) REFERENCES CustomersGroup (CustomerGrpID)  
end

if ( COLUMNPROPERTY( OBJECT_ID('Config'),'DefaultDateActive','IsRowGuidCol')is  null )  
  ALTER TABLE Config ADD DefaultDateActive  Tinyint NOT NULL DEFAULT (0) 

if  exists (select * from dbo.sysobjects where id = object_id(N'ReciptItemsRelease') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
if ( COLUMNPROPERTY( OBJECT_ID('ReciptItemsRelease'),'ReleaseKind','IsRowGuidCol')is  null )  
  ALTER TABLE ReciptItemsRelease ADD ReleaseKind  Tinyint NOT NULL DEFAULT (0)


if  exists (select * from dbo.sysobjects where id = object_id(N'util.Analyze') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
  if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'DefaultDate','IsRowGuidCol')is  null )  begin
  ALTER TABLE Forms ADD DefaultDate Char(10)     
 end
if ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'MoistureContent','IsRowGuidCol')is null )
 begin
 ALTER TABLE Tozin ADD MoistureContent float not null default (0)
 ALTER TABLE Tozin ADD RisingUseful float not null default (0)
 ALTER TABLE Tozin ADD RisingNonUseFul float not null default (0) 
--- UPDATE ReciptTypes SET EffectOnCustomer = 1 WHERE (BedType = 1) 
 ----UPDATE ReciptTypes SET EffectOnCustomer = 2 WHERE (BesType = 1)
 end
  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'CheckMakeDoc4DelEdit','IsRowGuidCol')is  null )  
  ALTER TABLE Config ADD CheckMakeDoc4DelEdit  Tinyint NOT NULL DEFAULT (1)
if ( COLUMNPROPERTY( OBJECT_ID('Severable'),'ServerID','IsRowGuidCol')is null )
 begin
 ALTER TABLE Severable ADD FormID int NOT NULL DEFAULT (0)
 ALTER TABLE Severable ADD ServerID int NOT NULL DEFAULT (0)
 ALTER TABLE Severable ADD YearID int NOT NULL DEFAULT (0)
 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Severable_FormItems' AND type = 'F')
 ALTER TABLE Severable DROP CONSTRAINT FK_Severable_FormItems
 ALTER TABLE FormItems DROP CONSTRAINT PK_FormItems
 ALTER TABLE FormItems ADD CONSTRAINT PK_FormItems PRIMARY KEY CLUSTERED
 (FormItemID,FormID,ServerID,YearID) ON [PRIMARY]
 ALTER TABLE Severable DROP CONSTRAINT PK_Severable
 ALTER TABLE Severable ADD CONSTRAINT PK_Severable PRIMARY KEY CLUSTERED
 (ID,FormID,FormItemID,ServerID,YearID) ON [PRIMARY]
 ALTER TABLE Severable ADD CONSTRAINT FK_Severable_FormItems FOREIGN KEY (FormItemID,FormID,ServerID,YearID)
 REFERENCES FormItems (FormItemID,FormID,ServerID,YearID) ON UPDATE CASCADE ON DELETE CASCADE
 end
  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'StandardRateVatActive','IsRowGuidCol')is  null )  ALTER TABLE Config ADD StandardRateVatActive  Tinyint NOT NULL DEFAULT (0)
  if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'DefaultDate','IsRowGuidCol')is  null )  ALTER TABLE Recipts ADD DefaultDate Char(10)    



 if not exists (select * from dbo.sysobjects where id = object_id(N'Related') and OBJECTPROPERTY(id,N'IsUserTable')=1)
 CREATE TABLE [dbo].[Related]([ID] int NOT NULL,[RelatedID] int NOT NULL,
 [Bed] Money NOT NULL,[Bes] Money NOT NULL,[Row] int NOT NULL,[YearID] int NOT NULL,
 [ServerID] int NOT NULL,[ParentID] int NOT NULL,[FormItemID] int NULL,[Kind] Tinyint NOT NULL,
 [GroupType] Tinyint NOT NULL, CONSTRAINT [PK_RelatedRecipt] PRIMARY KEY CLUSTERED
 ([ID] ASC) ON [PRIMARY]) ON [PRIMARY]
 
 --if ( COLUMNPROPERTY( OBJECT_ID('Related'),'ArzRBed','IsRowGuidCol')is  null )  
 -- ALTER TABLE Related ADD ArzRBed decimal(20,2) NOT NULL CONSTRAINT DF_Related_ArzRBed DEFAULT (0)

 --if ( COLUMNPROPERTY( OBJECT_ID('Related'),'ArzRBes','IsRowGuidCol')is  null )  
 -- ALTER TABLE Related ADD ArzRBes decimal(20,2) NOT NULL CONSTRAINT DF_Related_ArzRBes DEFAULT (0)



 if not exists (select * from dbo.sysobjects
 where id = object_id(N'Agreements') and OBJECTPROPERTY(id,N'IsUserTable') = 1)
 CREATE TABLE Agreements ( AgreementsID int NOT NULL IDENTITY(1,1) ,
 PersonID1 int NOT NULL ,StuffCode int NOT NULL ,
 Rate money NOT NULL ,YearID int NOT NULL ,
 AgreementsDate char(10) NOT NULL CONSTRAINT DF_Agreementss_AgreementsDate DEFAULT (''),
 CONSTRAINT PK_Agreementss PRIMARY KEY CLUSTERED (AgreementsID) ON [PRIMARY] ,
 CONSTRAINT FK_Agreementss_StuffCoding FOREIGN KEY (StuffCode)
 REFERENCES StuffCoding (c_StuffCode) ON UPDATE CASCADE ,
 CONSTRAINT FK_Agreementss_Customers FOREIGN KEY (PersonID1)
 REFERENCES Customers (CustID) ON UPDATE CASCADE,
 CONSTRAINT FK_Agreementss_MaliYear FOREIGN KEY (YearID)
 REFERENCES Util.MaliYear (YearID) ON DELETE CASCADE ON UPDATE CASCADE ,) ON [PRIMARY]

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Agreementss_MaliYear' AND type = 'F')
ALTER TABLE Agreements DROP CONSTRAINT FK_Agreementss_MaliYear
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Agreementss_MaliYear' AND type = 'F')
ALTER TABLE Agreements WITH CHECK ADD CONSTRAINT FK_Agreementss_MaliYear FOREIGN KEY(YearID) REFERENCES util.MaliYear (YearID) ON UPDATE CASCADE 



 if not exists (select * from dbo.sysobjects
 where id = object_id(N'RemainsEarly') and OBJECTPROPERTY(id,N'IsUserTable') = 1)
 CREATE TABLE RemainsEarly ( RemainsEarlyID int NOT NULL IDENTITY(1,1) ,
 YearID int NOT NULL ,PersonID1 int NOT NULL ,Rate money NOT NULL ,
 InfoKind Tinyint NOT NULL ,Note nvarchar(300),
 CONSTRAINT PK_RemainsEarlys PRIMARY KEY CLUSTERED 	(RemainsEarlyID	) ON [PRIMARY] ,
 CONSTRAINT FK_RemainsEarlys_Customers FOREIGN KEY (PersonID1)
 REFERENCES Customers (CustID) ON UPDATE CASCADE,
 CONSTRAINT FK_RemainsEarly_MaliYear FOREIGN KEY (YearID)
 REFERENCES Util.MaliYear (YearID) ON DELETE CASCADE ON UPDATE CASCADE ,) ON [PRIMARY]
 if ( COLUMNPROPERTY( OBJECT_ID('UseOthers'),'IDNumber','IsRowGuidCol')is null )
 begin
 ALTER TABLE UseOthers ADD
 IDNumber varchar(12) ,NationalID varchar(12) ,HealthNumber varchar(18) ,
 UseState Tinyint NOT NULL default(0),Addres varchar(255) ,Tel1 varchar(15) ,
 Tel2 varchar(15) ,PostalCode varchar(15) , CustID int ,ExpirationDate Char(10)
 ALTER TABLE UseOthers ADD CONSTRAINT FK_UseOthers_Customers FOREIGN KEY(CustID)
 REFERENCES Customers (CustID)
 end
 if not exists (select * from dbo.sysobjects
 where id = object_id(N'Quota') and OBJECTPROPERTY(id,N'IsUserTable') = 1)
 begin
 CREATE TABLE Quota ( QuotaID int NOT NULL ,
 YearID int NOT NULL ,UseOtherID nvarchar(15) NOT NULL ,Amount money NOT NULL ,
 RunDate Char(10),CutDate Char(10),
 CONSTRAINT PK_Quotas PRIMARY KEY CLUSTERED 	(QuotaID,YearID) ON [PRIMARY] ,
 CONSTRAINT FK_Quotas_UseOthers FOREIGN KEY (UseOtherID) REFERENCES UseOthers (UseOtherID) ON UPDATE
 CASCADE,
 CONSTRAINT FK_Quota_MaliYear FOREIGN KEY (YearID) REFERENCES Util.MaliYear (YearID) ON DELETE CASCADE ON
 UPDATE CASCADE ,) ON [PRIMARY]
 
 CREATE TABLE QuotaItems ( QuotaItemsID int NOT NULL ,
 QuotaID int NOT NULL ,YearID int NOT NULL ,StuffCode int NOT NULL ,
 Entity float NOT NULL,	Weight float NOT NULL,
 CONSTRAINT PK_QuotaItems PRIMARY KEY CLUSTERED (QuotaItemsID,QuotaID,YearID) ON [PRIMARY] ,
 CONSTRAINT FK_QuotaItems_Quota FOREIGN KEY (QuotaID,YearID) REFERENCES Quota (QuotaID,YearID) ON DELETE
 CASCADE ON UPDATE CASCADE,
 CONSTRAINT FK_QuotaItems_StuffCoding FOREIGN KEY (StuffCode)REFERENCES StuffCoding (c_StuffCode) ON UPDATE
 CASCADE,) ON [PRIMARY]
 end
if ( COLUMNPROPERTY( OBJECT_ID('Agreements'),'AgrState','IsRowGuidCol')is  null )  
 ALTER TABLE Agreements ADD AgrState Tinyint NOT NULL  DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('Agreements'),'AgrAmount','IsRowGuidCol')is  null )  
 ALTER TABLE Agreements ADD AgrAmount float 

 if not exists (select * from dbo.sysobjects
 where id = object_id(N'ReciptsRegulation') and OBJECTPROPERTY(id,N'IsUserTable') = 1)
 begin
 CREATE TABLE ReciptsRegulation ( ReciptsRegulationID int NOT NULL ,
 ReciptType Tinyint NOT NULL ,RegNote Nvarchar(250) ,
 CodeDefaultKind Tinyint NOT NULL ,CustID int Default(0) NOT NULL ,
 CONSTRAINT PK_ReciptsRegulations PRIMARY KEY CLUSTERED 	(ReciptsRegulationID) ON [PRIMARY] ,
 CONSTRAINT FK_ReciptsRegulations_ReciptTypes FOREIGN KEY (ReciptType)
 REFERENCES ReciptTypes (ReciptType) ON UPDATE CASCADE,
 CONSTRAINT FK_ReciptsRegulation_Customers FOREIGN KEY (CustID)
 REFERENCES Customers (CustID) ON UPDATE CASCADE) ON [PRIMARY]
 CREATE TABLE ReciptsRegulationItems ( ReciptsRegulationItemsID int identity(1,1) NOT NULL ,
 ReciptsRegulationID int NOT NULL ,StuffCode int NOT NULL ,
 UnityRate money NOT NULL,	AmountFactor money NOT NULL,
 RunDate Char(10),RegState Tinyint Default(0) NOT NULL ,
 CONSTRAINT PK_ReciptsRegulationItems PRIMARY KEY CLUSTERED (ReciptsRegulationItemsID) ON [PRIMARY] ,
 CONSTRAINT FK_ReciptsRegulationItems_ReciptsRegulation FOREIGN KEY (ReciptsRegulationID)
 REFERENCES ReciptsRegulation (ReciptsRegulationID) ON DELETE CASCADE ON UPDATE CASCADE,
 CONSTRAINT FK_ReciptsRegulationItems_StuffCoding FOREIGN KEY (StuffCode)
 REFERENCES StuffCoding (c_StuffCode) ON UPDATE CASCADE) ON [PRIMARY]
 end

 if  exists (select * from dbo.sysobjects where id = object_id(N'util.Analyze') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 if not exists (select * from dbo.sysobjects
 where id = object_id(N'ReciptTypesAccCode') and OBJECTPROPERTY(id,N'IsUserTable') = 1)
 begin
  BEGIN TRY 
 CREATE TABLE ReciptTypesAccCode (
 ReciptType Tinyint NOT NULL ,InfoKind Tinyint NOT NULL ,
 TopicCode varchar(12) NOT NULL DEFAULT (0) ,
 DetailCode varchar(12) NOT NULL DEFAULT (0) ,
 CTopicCode varchar(12) NOT NULL DEFAULT (0) ,
 CTopicCode2 varchar(12) NOT NULL DEFAULT (0) ,
 CTopicCode3 varchar(12) NOT NULL DEFAULT (0) ,
 Note Nvarchar(250) ,
 CONSTRAINT PK_ReciptTypesAccCodes PRIMARY KEY CLUSTERED 	(ReciptType,InfoKind) ON [PRIMARY] ,
 CONSTRAINT FK_ReciptTypesAccCodes_ReciptTypes FOREIGN KEY (ReciptType)
 REFERENCES ReciptTypes (ReciptType) ON UPDATE CASCADE
 ) ON [PRIMARY]
 

END TRY  
BEGIN CATCH  
 CREATE TABLE ReciptTypesAccCode (
 ReciptType Tinyint NOT NULL ,InfoKind Tinyint NOT NULL ,
 TopicCode varchar(12) NOT NULL DEFAULT (0) ,
 DetailCode varchar(12) NOT NULL DEFAULT (0) ,
 CTopicCode varchar(12) NOT NULL DEFAULT (0) ,
 CTopicCode2 varchar(12) NOT NULL DEFAULT (0) ,
 CTopicCode3 varchar(12) NOT NULL DEFAULT (0) ,
 Note Nvarchar(250) ,
 CONSTRAINT PK_ReciptTypesAccCodes PRIMARY KEY CLUSTERED 	(ReciptType,InfoKind) ON [PRIMARY] ,
 CONSTRAINT FK_ReciptTypesAccCodes_ReciptTypes FOREIGN KEY (ReciptType)
 REFERENCES ReciptTypes1 (ReciptType) ON UPDATE CASCADE
 ) ON [PRIMARY]
END CATCH; 

 
 ALTER TABLE ReciptsRegulates ADD CustID int Default(0) NOT NULL ,
 CONSTRAINT FK_ReciptsRegulates_Customers FOREIGN KEY (CustID)
 REFERENCES Customers (CustID) ON UPDATE CASCADE
 
 end

BEGIN TRY  
if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'StandardCoefficient','IsRowGuidCol')is null )
begin
exec('
ALTER TABLE ReciptTypes ADD StandardCoefficient float NOT NULL DEFAULT (0)
 ALTER TABLE ReciptTypes ADD StandardDate Char(10) NOT NULL DEFAULT (''0001/01/01'')
 ALTER TABLE ReciptTypes ADD PawsFieldsActive Tinyint NOT NULL DEFAULT (0)
 ALTER TABLE ReciptItems ADD Portage money
 ALTER TABLE ReciptItems ADD Article money
 ALTER TABLE ReciptItems ADD Wage money
 ALTER TABLE ReciptItems ADD Scoria money
 ')
end

END TRY  
BEGIN CATCH  
if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes1'),'StandardCoefficient','IsRowGuidCol')is null )
begin
exec('
ALTER TABLE ReciptTypes1 ADD StandardCoefficient float NOT NULL DEFAULT (0)
 ALTER TABLE ReciptTypes1 ADD StandardDate Char(10) NOT NULL DEFAULT (''0001/01/01'')
 ALTER TABLE ReciptTypes1 ADD PawsFieldsActive Tinyint NOT NULL DEFAULT (0)
 ALTER TABLE ReciptItems1 ADD Portage money
 ALTER TABLE ReciptItems1 ADD Article money
 ALTER TABLE ReciptItems1 ADD Wage money
 ALTER TABLE ReciptItems1 ADD Scoria money
 ')
end

END CATCH; 



  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'CalcReciptsRegulatesActive','IsRowGuidCol')is  null )  ALTER TABLE Config ADD CalcReciptsRegulatesActive  Tinyint NOT NULL DEFAULT (0)
  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'RowInCardex','IsRowGuidCol')is  null )  
  ALTER TABLE Config ADD RowInCardex  Tinyint NOT NULL DEFAULT (0)

 if ( COLUMNPROPERTY( OBJECT_ID('UseOthers'),'UseNote','IsRowGuidCol')is null )
 ALTER TABLE UseOthers ADD UseNote varchar(255) 

 if ( COLUMNPROPERTY( OBJECT_ID('UseOthers'),'TopicCode','IsRowGuidCol')is  null ) 
 ALTER TABLE UseOthers ADD TopicCode bigint NOT NULL CONSTRAINT DF_UseOthers_TopicCode   DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('UseOthers'),'DetailCode','IsRowGuidCol')is  null ) 
 ALTER TABLE UseOthers ADD DetailCode varchar(12) NOT NULL CONSTRAINT DF_UseOthers_DetailCode   DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('UseOthers'),'CTopicCode','IsRowGuidCol')is  null ) 
 ALTER TABLE UseOthers ADD CTopicCode varchar(12) NOT NULL CONSTRAINT DF_UseOthers_CTopicCode   DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('UseOthers'),'CTopicCode2','IsRowGuidCol')is  null ) 
 ALTER TABLE UseOthers ADD CTopicCode2 varchar(12) NOT NULL CONSTRAINT DF_UseOthers_CTopicCode2   DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('UseOthers'),'CTopicCode3','IsRowGuidCol')is  null )  
  ALTER TABLE UseOthers ADD CTopicCode3 varchar(12) NOT NULL CONSTRAINT DF_UseOthers_CTopicCode3  DEFAULT (0)


 if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'ParentCoReciptID','IsRowGuidCol')is null )
 begin
 ALTER TABLE Recipts ADD ParentCoReciptID int 
 ALTER TABLE ReciptTypes ADD RecallEditKind Tinyint NOT NULL DEFAULT (0)
 end

IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
   if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'DeficitValueUnitSellPrice2','IsRowGuidCol')is  null ) 
 ALTER TABLE ReciptTypes ADD DeficitValueUnitSellPrice2 Tinyint NOT NULL DEFAULT (1)

  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'CustomerTrancKinds','IsRowGuidCol')is  null )  
  ALTER TABLE Config ADD CustomerTrancKinds varchar (50) NOT NULL  DEFAULT ('0') 
 
 IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
 if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'WastesFunctions','IsRowGuidCol')is  null ) 
 begin
 ALTER TABLE ReciptTypes ADD WastesFunctions Tinyint NOT NULL DEFAULT (0) ALTER TABLE ReciptItems ADD Waste1 decimal(18, 3) 
  ALTER TABLE ReciptItems ADD Waste2 decimal(18, 3)  ALTER TABLE ReciptItems ADD Function1 decimal(18, 3) 
 end

IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
   if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'Commendation','IsRowGuidCol')is  null ) 
 ALTER TABLE ReciptTypes ADD Commendation Tinyint NOT NULL DEFAULT (1)

IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypesAccCode') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypesAccCode'),'BedBes','IsRowGuidCol')is  null ) 
 ALTER TABLE ReciptTypesAccCode ADD BedBes Tinyint 


 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_ReciptTypesAccCodes' AND type = 'K')
 ALTER TABLE ReciptTypesAccCode	DROP CONSTRAINT PK_ReciptTypesAccCodes

IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypesAccCode') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
begin
exec('UPDATE ReciptTypesAccCode SET BedBes = 0 WHERE (BedBes IS NULL)')
ALTER TABLE ReciptTypesAccCode ALTER column BedBes Tinyint NOT NULL 

 IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_ReciptTypesAccCodes' AND type = 'K')
 ALTER TABLE ReciptTypesAccCode ADD CONSTRAINT PK_ReciptTypesAccCodes PRIMARY KEY CLUSTERED (ReciptType,InfoKind,BedBes) ON [PRIMARY]

end

IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
   if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'Person3ControlWeightCustomer','IsRowGuidCol')is  null ) 
 ALTER TABLE ReciptTypes ADD Person3ControlWeightCustomer Tinyint NOT NULL DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'CustomerID3','IsRowGuidCol')is null )
 begin
 ALTER TABLE Forms ADD CustomerID3 int NOT NULL DEFAULT (0)
 ALTER TABLE Forms ADD CONSTRAINT FK_Forms_CustomersCustomerID3
 FOREIGN KEY ( CustomerID3 ) REFERENCES Customers(CustID)
 end
 
if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'CustomerID4','IsRowGuidCol')is null )
 begin
 ALTER TABLE Forms ADD CustomerID4 int NOT NULL DEFAULT (0)
 ALTER TABLE Forms ADD CONSTRAINT FK_Forms_CustomersCustomerID4
 FOREIGN KEY ( CustomerID4 ) REFERENCES Customers(CustID)
 end


 if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'PO','IsRowGuidCol')is null )
 ALTER TABLE Forms ADD PO varchar(30)

 if ( COLUMNPROPERTY( OBJECT_ID('FormItems'),'PO','IsRowGuidCol')is null )
 ALTER TABLE FormItems ADD PO varchar(30)


if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'Customer3Active','IsRowGuidCol')is null )
 ALTER TABLE FormTypes ADD Customer3Active Tinyint NOT NULL DEFAULT (0)
if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'Customer3Lable','IsRowGuidCol')is null )
 ALTER TABLE FormTypes ADD Customer3Lable nvarchar(50)
if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CustomerKind3','IsRowGuidCol')is null )
 ALTER TABLE FormTypes ADD CustomerKind3 nvarchar(50)
 

if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'Customer4Active','IsRowGuidCol')is null )
 ALTER TABLE FormTypes ADD Customer4Active Tinyint NOT NULL DEFAULT (0)
if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'Customer4Lable','IsRowGuidCol')is null )
 ALTER TABLE FormTypes ADD Customer4Lable nvarchar(50)
if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CustomerKind4','IsRowGuidCol')is null )
 ALTER TABLE FormTypes ADD CustomerKind4 nvarchar(50)


if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'FilterYearIDActive','IsRowGuidCol')is  null )  
ALTER TABLE FormTypes ADD FilterYearIDActive tinyint NOT NULL CONSTRAINT DF_FormTypes_FilterYearIDActive DEFAULT (1) 	   

if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'UseBudgetKind','IsRowGuidCol')is  null )  
ALTER TABLE FormTypes ADD UseBudgetKind tinyint NOT NULL CONSTRAINT DF_FormTypes_UseBudgetKind DEFAULT (0) 	   


if ( COLUMNPROPERTY( OBJECT_ID('Severable'),'DeficitAmount','IsRowGuidCol')is null )
 ALTER TABLE Severable ADD DeficitAmount Money NOT NULL DEFAULT (0) 
if ( COLUMNPROPERTY( OBJECT_ID('Config'),'DefaultYear','IsRowGuidCol')is null )
 ALTER TABLE Config ADD DefaultYear  Tinyint NOT NULL DEFAULT (0)
 
IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
   if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'CustomerRateAct','IsRowGuidCol')is null )
 begin
 ALTER TABLE ReciptTypes ADD CustomerRateAct Tinyint NOT NULL DEFAULT (0)
 ALTER TABLE ReciptItems ADD CustomerRate Money
 end
if ( COLUMNPROPERTY( OBJECT_ID('Config'),'ComPortKind','IsRowGuidCol')is  null )  
ALTER TABLE Config ADD ComPortKind Tinyint NOT NULL  DEFAULT (2) 
if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'InsertDate','IsRowGuidCol')is null ) 
ALTER TABLE Recipts ADD InsertDate DateTime 

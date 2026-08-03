------  21  1401/04/12

UPDATE ReciptItems SET  DeficitValue4 = 0 WHERE DeficitValue4 = NULL

IF NOT EXISTS (SELECT 1 FROM sysusers WHERE Name = N'Dsn')
EXEC sp_addrole @RoleName = N'Dsn'



---------------------------------------------------------------
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Dsn.DesignForms') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Dsn.DesignForms(
    ID int IDENTITY(1, 1),
	FormNo int NOT NULL,
	FormCaption Nvarchar(100),
	FromDate char(10),	
	FromType int,
	TableName Nvarchar(30),
	MenuName Nvarchar(30),
	Note Nvarchar(1000),
	WorkflowID int ,
 CONSTRAINT PK_DesignForms PRIMARY KEY CLUSTERED (ID ASC) ON [PRIMARY]) ON [PRIMARY]


IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Dsn.DesignFormsItems') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Dsn.DesignFormsItems(
    ID int IDENTITY(1, 1),
	DesignFormsID int NOT NULL,
	RowNo int NOT NULL,
	ColumnName Nvarchar(30),
	ColumnDisplayName Nvarchar(30),
	ColumnDataType Nvarchar(30),
	DBType tinyint,
	ItemsString Nvarchar(1000),
	ItemsValue Nvarchar(1000),
	ParentName Nvarchar(30),
	Topx smallint ,
	Leftx smallint ,
	Width smallint ,
	Height smallint ,
	Tag int ,
	TabOrder smallint ,
	IsRequired bit ,
	Align tinyint ,
    DefaultValue Nvarchar(200),
	CheckList bigint ,
CONSTRAINT FK_DesignFormsItems_DesignForms FOREIGN KEY(DesignFormsID)REFERENCES Dsn.DesignForms (ID)ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT PK_DesignFormsItems PRIMARY KEY CLUSTERED (ID) ON [PRIMARY]) ON [PRIMARY]

if ( COLUMNPROPERTY( OBJECT_ID('Dsn.DesignFormsItems'),'RowNo','IsRowGuidCol')is  null )  
  ALTER TABLE Dsn.DesignFormsItems ADD RowNo Int


if ( COLUMNPROPERTY( OBJECT_ID('Dsn.DesignFormsItems'),'DefaultValue','IsRowGuidCol')is  null )  
  ALTER TABLE Dsn.DesignFormsItems ADD DefaultValue Nvarchar(200)

if ( COLUMNPROPERTY( OBJECT_ID('Dsn.DesignFormsItems'),'CheckList','IsRowGuidCol')is  null )  
  ALTER TABLE Dsn.DesignFormsItems ADD CheckList bigint
  

IF NOT EXISTS (SELECT * FROM  sysobjects WHERE ID = object_id(N'cnt.Fn_ProfitOrLossValue') AND xtype IN (N'FN', N'IF', N'TF'))
exec('CREATE FUNCTION cnt.Fn_ProfitOrLossValue (@ProjectCode Int=1)

  RETURNS @retFindReports TABLE 
  (
	ProjectCode INT NOT NULL,
	AverageDIR float NULL,
	AverageDSO float NULL
  )
  AS 
BEGIN  

INSERT INTO @retFindReports
   SELECT  @ProjectCode AS ProjectCode,0.0 as AverageDIR, 0.0 AS AverageDSO 
   WHERE @ProjectCode = @ProjectCode
     RETURN
END')

IF NOT EXISTS (SELECT * FROM  sysobjects WHERE ID = object_id(N'cnt.Fn_ProfitOrLoss') AND xtype IN (N'FN', N'IF', N'TF'))
exec('CREATE FUNCTION cnt.Fn_ProfitOrLoss (@ProjectCode Int=1)

  RETURNS @retFindReports TABLE 
  (
	InfoID INT NOT NULL IDENTITY(1,1),
	ProjectCode INT NOT NULL,
	Kind tinyint NOT NULL,
	Comment Nvarchar(300)  COLLATE DATABASE_DEFAULT NOT NULL,
	Price money  NOT NULL,
	InfoPercent float NULL,
	SourceInfo Nvarchar(100) COLLATE DATABASE_DEFAULT ,
	Descriptions Nvarchar(1000) COLLATE DATABASE_DEFAULT 
  )
  AS 
BEGIN  

INSERT INTO @retFindReports
   SELECT  101 AS ProjectCode,1 as Kind ,''شماره فاکنور'' as Comment, 0 AS Price , 99.99 AS InfoPercent, ''Bsell'' AS SourceInfo, ''درآمدها-به تفکیک Invoice'' AS Descriptions
   WHERE @ProjectCode = @ProjectCode

INSERT INTO @retFindReports
   SELECT  101 AS ProjectCode,2 as Kind ,''پرسنل'' as Comment, 0 AS Price , 1.1 AS InfoPercent , ''Salary'' AS SourceInfo, ''به تفکیک نوع فعالیت'' AS Descriptions
   WHERE @ProjectCode = @ProjectCode

INSERT INTO @retFindReports
   SELECT  101 AS ProjectCode,3 as Kind ,''هزینه های مستقیم'' as Comment, 0 AS Price , 1.1 AS InfoPercent , ''Salary'' AS SourceInfo, ''به تفکیک نوع فعالیت'' AS Descriptions
   WHERE @ProjectCode = @ProjectCode

INSERT INTO @retFindReports
   SELECT  101 AS ProjectCode,4 as Kind ,''پرسنل'' as Comment, 0 AS Price , 1.1 AS InfoPercent , ''Salary'' AS SourceInfo, ''به تفکیک نوع فعالیت'' AS Descriptions
   WHERE @ProjectCode = @ProjectCode
INSERT INTO @retFindReports
   SELECT  101 AS ProjectCode,4 as Kind ,''استهلاک تجهیزات'' as Comment, 0 AS Price , 1.1 AS InfoPercent , ''Salary'' AS SourceInfo, ''به تفکیک نوع فعالیت'' AS Descriptions
   WHERE @ProjectCode = @ProjectCode


INSERT INTO @retFindReports
   SELECT  101 AS ProjectCode,5 as Kind ,''هزینه های متغیر'' as Comment, 0 AS Price , 1.1 AS InfoPercent , ''Salary'' AS SourceInfo, ''به تفکیک نوع فعالیت'' AS Descriptions
   WHERE @ProjectCode = @ProjectCode

INSERT INTO @retFindReports
   SELECT  101 AS ProjectCode,6 as Kind ,''بیمه'' as Comment, 0 AS Price , 1.1 AS InfoPercent , ''Salary'' AS SourceInfo, ''به تفکیک نوع فعالیت'' AS Descriptions
   WHERE @ProjectCode = @ProjectCode
INSERT INTO @retFindReports
   SELECT  101 AS ProjectCode,6 as Kind ,''مالیات'' as Comment, 0 AS Price , 1.1 AS InfoPercent , ''Salary'' AS SourceInfo, ''به تفکیک نوع فعالیت'' AS Descriptions
   WHERE @ProjectCode = @ProjectCode


     RETURN
END')



if not exists (select * from dbo.sysobjects where id = object_id(N'cnt.ProfitOrLosss') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE cnt.ProfitOrLosss(
	ProfitOrLossID int NOT NULL,
	ProjectCode int NOT NULL,
	ProjectDate char(10) NOT NULL,
	ClientCode int NOT NULL,
	ClientName Nvarchar(200) NULL,
    AverageDIR Float ,
    AverageDSO Float ,
	RevenueSum money ,
	CostSum money ,
	GrossProfit money ,
	NetProfit money ,
	LatePaymentsToContractors money ,
	LatePaymentsToClients money ,
	FinallProfit money ,
 CONSTRAINT PK_ProfitOrLosss PRIMARY KEY CLUSTERED (ProfitOrLossID ASC ) ON [PRIMARY] ) ON [PRIMARY]

 

if not exists (select * from dbo.sysobjects where id = object_id(N'cnt.ProfitOrLosssItems') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE cnt.ProfitOrLosssItems(
	ItemID int  IDENTITY(1,1) NOT NULL,
	ProfitOrLossID int NOT NULL,
	InfoID INT NOT NULL ,
	Kind TINYINT NOT NULL,
	Comment NVARCHAR(300)  COLLATE DATABASE_DEFAULT NOT NULL,
	Price MONEY  NOT NULL,
	InfoPercent FLOAT NULL,
	SourceInfo Nvarchar(100) COLLATE DATABASE_DEFAULT ,	
	Descriptions Nvarchar(1000) COLLATE DATABASE_DEFAULT ,
 CONSTRAINT FK_ProfitOrLosssItems_ProfitOrLosss FOREIGN KEY(ProfitOrLossID)
            REFERENCES Cnt.ProfitOrLosss (ProfitOrLossID)ON UPDATE CASCADE ON DELETE CASCADE ,
 CONSTRAINT PK_ProfitOrLosssItems PRIMARY KEY CLUSTERED (ItemID ASC ) ON [PRIMARY] ) ON [PRIMARY]



 if not exists (select * from sysindexes WHERE     (name = N'IX_Recipts_Aid_MakeDocuments_Recipt1'))
 CREATE NONCLUSTERED INDEX IX_Recipts_Aid_MakeDocuments_Recipt1
ON dbo.Recipts (StoreID,ReciptNumber,ReciptDate,PersonID1,DocNo,ReciptState,SellsEmporium)
INCLUDE (ReciptID,PersonID2,ReciptType,SecondType,UseUnitID,AidNumber,AidDate,StoreID2,TruckNumber,MachineNo,MachineName,ReciptsRow,ServerID,YearID,PersonID3,MachineInfo)

if not exists (select * from sysindexes WHERE     (name = N'IX_Recipts_Aid_MakeDocuments_Recipt2'))
CREATE NONCLUSTERED INDEX IX_Recipts_Aid_MakeDocuments_Recipt2
ON dbo.Recipts (ReciptType,StoreID,ReciptNumber,ReciptDate,PersonID1,DocNo,ReciptState,SellsEmporium)
INCLUDE (ReciptID,PersonID2,SecondType,AidNumber,AidDate,TruckNumber,MachineNo,MachineName,ReciptsRow,ServerID,YearID,MachineInfo)


 if not exists (select * from sysindexes WHERE     (name = N'IX_Recipts_Aid_MakeDocuments_Recipt3'))
CREATE NONCLUSTERED INDEX IX_Recipts_Aid_MakeDocuments_Recipt3
ON dbo.Recipts (ReciptType,StoreID,ReciptNumber,ReciptDate,PersonID1,DocNo,ReciptState,SellsEmporium)
INCLUDE (ReciptID,PersonID2,SecondType,UseUnitID,AidNumber,AidDate,StoreID2,TruckNumber,MachineNo,MachineName,ReciptsRow,ServerID,YearID,PersonID3,MachineInfo)



if NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_MakeDoc_StuffCoding1'))
CREATE NONCLUSTERED INDEX IX_MakeDoc_StuffCoding1
ON StuffCoding (OwnerShipKind)
INCLUDE (c_StuffCode,c_StuffName,acc_DetaiCode,acc_CTopicCode,acc_CTopicCode2,Acc_BidTopicCode,Commission)


IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_MakeDoc_ReciptItems1'))
--DROP INDEX IX_MakeDoc_ReciptItems1 ON ReciptItems
CREATE NONCLUSTERED INDEX IX_MakeDoc_ReciptItems1
ON ReciptItems (ReciptID,ServerID,YearID)
INCLUDE (StuffCode,InputEntity,OutputEntity,InputWeight,OutputWeight,ControlCode,TotalInputPrice,TotalOutputPrice,AidNumber,AidDate,ArzAmount,TotalStandardRate,UnitCommission)

IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_MakeDoc_Recipts1'))
--DROP INDEX IX_MakeDoc_Recipts1 ON Recipts
CREATE NONCLUSTERED INDEX IX_MakeDoc_Recipts1
ON Recipts (StoreID,ReciptNumber,ReciptDate,PersonID1,PersonID2,DocNo,ReciptState,SellsEmporium,PersonID3)
INCLUDE (ReciptID,ReciptType,SecondType,ReciptNote,UseUnitID,AidNumber,AidDate,StoreID2,TruckNumber,MachineNo,MachineName,ReciptsRow,ServerID,YearID,MachineInfo)


IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_MakeDoc_Recipts2'))
--DROP INDEX IX_MakeDoc_Recipts2 ON Recipts
CREATE NONCLUSTERED INDEX IX_MakeDoc_Recipts2
ON Recipts (ReciptType,StoreID,ReciptNumber,ReciptDate,PersonID1,PersonID2,DocNo,ReciptState,SellsEmporium,PersonID3)
INCLUDE (ReciptID,SecondType,ReciptNote,UseUnitID,AidNumber,AidDate,StoreID2,TruckNumber,MachineNo,MachineName,ReciptsRow,ServerID,YearID,MachineInfo)


IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_MakeDoc_Recipts3'))
--DROP INDEX IX_MakeDoc_Recipts3 ON Recipts
CREATE NONCLUSTERED INDEX  IX_MakeDoc_Recipts3
ON Recipts (SecondType,StoreID,ReciptNumber,ReciptDate,PersonID1,PersonID2,DocNo,ReciptState,SellsEmporium,PersonID3)
INCLUDE (ReciptID,ReciptType,ReciptNote,AidNumber,AidDate,TruckNumber,MachineNo,MachineName,ReciptsRow,ServerID,YearID,MachineInfo)

IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_MakeDoc_StuffCoding2'))
--DROP INDEX IX_MakeDoc_StuffCoding2 ON StuffCoding
CREATE NONCLUSTERED INDEX  IX_MakeDoc_StuffCoding2
ON StuffCoding (GroupID,n_UnitCode)


IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_MakeDoc_ReciptItems3'))
--DROP INDEX IX_MakeDoc_ReciptItems3 ON ReciptItems
CREATE NONCLUSTERED INDEX IX_MakeDoc_ReciptItems3 ON ReciptItems(	StuffCode ASC)

IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_ReciptsDeficits1'))
--DROP INDEX IX_ReciptsDeficits1 ON ReciptsDeficits
CREATE NONCLUSTERED INDEX IX_ReciptsDeficits1
ON dbo.ReciptsDeficits (ReciptID,ServerID,YearID)
INCLUDE (DeficitID,DeficitAdd,DeficitDec)


IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Stores1'))
--DROP INDEX IX_Stores1 ON Stores
CREATE NONCLUSTERED INDEX IX_Stores1
ON Stores (n_StoreID,c_StoreName,n_ValuationType)



IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts4'))
--DROP INDEX IX_Recipts4 ON Recipts
CREATE NONCLUSTERED INDEX IX_Recipts4
ON dbo.Recipts (ReciptType)
INCLUDE (ReciptID,StoreID,ReciptNumber,ReciptDate,PersonID1,PersonID2,SecondType,ServiceValue,ReciptValue,TotalValue,AddDecValue,DocNo,DocDate,ReciptNote
         ,ParentReciptID,OperatorID,ModifyDate,ReciptState,UseUnitID,ExpireDate,ProjectID,BudgetID,AidNumber,AidDate,FirstUser,LastUser,ReciptStartDate,ReciptEndDate,
		 DebtControlActive,StoreID2,TruckNumber,MachineNo,MachineName,ArzTypeID,RialsEqual,UseOtherID,ReciptsRow,SellsMethod,SellsEmporium,MasirID,DeliveryID,PersonID2Bed
		 ,RelatedID,ServerID,YearID,PersonID3,CostDownSave,DefaultDate,ParentCoReciptID,Transmittal,InsertDate,MachineInfo,InsertTime,EditTime,PrvYearID,UserRegistrationDoc
		 ,DefaultDuration,CalcGiftItems,ReciptDateMiladi,MachineFullWeight,MachineWeight,PersonID4,TozinID)



IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_ReciptsParent'))
--DROP INDEX IX_ReciptsParent ON Recipts
CREATE NONCLUSTERED INDEX IX_ReciptsParent ON dbo.Recipts
(
	ReciptType ASC,
	ParentReciptID ASC,
	ServerID ASC,
	YearID ASC
)


IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_UsersStore'))
--DROP INDEX IX_UsersStore ON UsersStore
CREATE NONCLUSTERED INDEX IX_UsersStore ON dbo.UsersStore
(
	n_UserID ASC,
	n_StoreID ASC,
	StoreType ASC
)

IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_UsersCustomersGroups'))
--DROP INDEX IX_UsersCustomersGroups ON UsersCustomersGroups
CREATE NONCLUSTERED INDEX IX_UsersCustomersGroups ON UsersCustomersGroups
(
	UserID ASC,
	CustomerGrpID ASC
)
IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_ReciptsRegulates'))
--DROP INDEX IX_ReciptsRegulates ON ReciptsRegulates
CREATE NONCLUSTERED INDEX IX_ReciptsRegulates ON dbo.ReciptsRegulates
(
	ServerID ASC,
	RegRowId ASC,
	ReciptItemID ASC,
	ReciptID ASC
)




IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_ReciptItems_StuffCode'))
CREATE NONCLUSTERED INDEX IX_ReciptItems_StuffCode
ON dbo.ReciptItems (StuffCode)
INCLUDE (ReciptID,InputEntity,OutputEntity,InputWeight,OutputWeight,ControlCode,TotalInputPrice,TotalOutputPrice,TotallSellPrice,AidNumber
             ,AidDate,ArzAmount,ServerID,YearID,UnitCommission)


IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_ReciptItems_YearIDPrvYearID'))
CREATE NONCLUSTERED INDEX IX_ReciptItems_YearIDPrvYearID  ON dbo.ReciptItems (YearID,PrvYearID) INCLUDE (preReciptItemID)


IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_FormItems_preFormItemID'))
CREATE NONCLUSTERED INDEX IX_FormItems_preFormItemID ON dbo.FormItems (preFormItemID)


IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_ReciptItems_preReciptItemID_ServerID_YearID'))
CREATE NONCLUSTERED INDEX IX_ReciptItems_preReciptItemID_ServerID_YearID
ON ReciptItems (preReciptItemID,ServerID,YearID) INCLUDE (StuffCode,OutputEntity,OutputWeight)


IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_ReciptsTrades_YearID'))
CREATE NONCLUSTERED INDEX IX_ReciptsTrades_YearID ON dbo.ReciptsTrades (YearID)
INCLUDE (ReciptID,ServerID,ForoushType,KeshvarCode,Kotaj_No,Kotaj_Date,LC_No,LC_Date,Gomrok_Arzyabi,Gomrok_khoruj)



IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Zone_OstanCode'))
CREATE NONCLUSTERED INDEX IX_Zone_OstanCode ON dbo.Zone (OstanCode) INCLUDE (Ostan)




IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_ReciptItems_YearID_StuffCode'))
CREATE NONCLUSTERED INDEX IX_ReciptItems_YearID_StuffCode
ON dbo.ReciptItems (YearID,StuffCode)
INCLUDE (InputEntity,OutputEntity,InputWeight,OutputWeight,UnitSellPrice)



IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts_StoreID_YearID_ReciptDate_ReciptState'))
CREATE NONCLUSTERED INDEX IX_Recipts_StoreID_YearID_ReciptDate_ReciptState
ON dbo.Recipts (StoreID,YearID,ReciptDate,ReciptState)
INCLUDE (ReciptType,ParentReciptID)

IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts_ReciptDate_ReciptState'))
CREATE NONCLUSTERED INDEX IX_Recipts_ReciptDate_ReciptState   ON Recipts (ReciptDate,ReciptState)  INCLUDE (StoreID,ReciptType,StoreID2)




IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_StuffCoding_State_BlockOutput'))
CREATE NONCLUSTERED INDEX IX_StuffCoding_State_BlockOutput
ON dbo.StuffCoding (State,BlockOutput)
INCLUDE (c_StuffName,c_StuffTecInfo,BuyPrice,SellPrice1)


--if not exists (select * from dbo.sysobjects where id = object_id(N'dbo.Rankings') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
--CREATE TABLE [dbo].[Rankings](
--	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
--	[RankType] [tinyint] NOT NULL,
--	[RankDate] [char](10) NULL,
--	[StuffCode] [bigint] NULL,
--	[PersonID] [int] NULL,
--	[RankAmount] [float] NULL,
--	[ProductCodeDiscount] [bigint] NULL,
--	[DiscountEntity] [float] NULL,
--	[Grade] [nchar](1) NULL,
--	[Note] [nvarchar](200) NULL,
--	[Rate] [float] NULL,
-- CONSTRAINT [PK_Rankings] PRIMARY KEY CLUSTERED 
--(
--	[ID] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
--) ON [PRIMARY]


--if not exists (select * from dbo.sysobjects where id = object_id(N'dbo.RatingFormulas') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
--CREATE TABLE [dbo].[RatingFormulas](
--	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
--	[RowID] [tinyint] NULL,
--	[Field_ID] [smallint] NULL,
--	[Field_Name] [varchar](50) NULL,
--	[Field_Display] [nvarchar](50) NULL,
--	[FormulaText] [nvarchar](4000) NULL,
--	[FormulaType] [smallint] NULL,
-- CONSTRAINT [PK_RatingFormulas] PRIMARY KEY CLUSTERED 
--(
--	[ID] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
--) ON [PRIMARY]


--if not exists (select * from dbo.sysobjects where id = object_id(N'dbo.Ratings') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
--CREATE TABLE [dbo].[Ratings](
--	[RatingID] [int] NOT NULL,
--	[CalcType] [tinyint] NOT NULL,
--	[CalcKind] [tinyint] NOT NULL,
--	[CalcNumber] [int] NULL,
--	[CalcDate] [char](10) NULL,
--	[RunDate] [char](10) NULL,
--	[CodeFrom] [bigint] NULL,
--	[CodeTo] [bigint] NULL,
--	[CalcState] [tinyint] NULL,
--	[CalcBasedOnCode] [varchar](50) NULL,
--	[QryCalcBased] [varchar](50) NULL,
--	[RNote] [nvarchar](200) NULL,
-- CONSTRAINT [PK_Ratings] PRIMARY KEY CLUSTERED 
--(
--	[RatingID] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
--) ON [PRIMARY]


--if not exists (select * from dbo.sysobjects where id = object_id(N'dbo.RatingItems') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
--begin
--CREATE TABLE [dbo].[RatingItems](
--	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
--	[RatingID] [int] NOT NULL,
--	[RatingRow] [int] NULL,
--	[CustIDBase] [int] NULL,
--	[StuffCodeBase] [bigint] NULL,
--	[CalcBase] [float] NULL,
--	[CalcConst] [float] NULL,
--	[CalcCo] [float] NULL,
--	[StuffCode] [bigint] NULL,
--	[StuffCount] [int] NULL,
--	[Grade] [nchar](1) NULL,
--	[RINote] [nvarchar](200) NULL,
-- CONSTRAINT [PK_RatingItems] PRIMARY KEY CLUSTERED 
--(
--	[ID] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
--) ON [PRIMARY]

--ALTER TABLE [dbo].[RatingItems]  WITH CHECK ADD  CONSTRAINT [FK_RatingItems_Customers] FOREIGN KEY([CustIDBase])
--REFERENCES [dbo].[Customers] ([CustID])
--ON UPDATE CASCADE
--ON DELETE CASCADE

--ALTER TABLE [dbo].[RatingItems]  WITH CHECK ADD  CONSTRAINT [FK_RatingItems_Ratings] FOREIGN KEY([RatingID])
--REFERENCES [dbo].[Ratings] ([RatingID])
--ON UPDATE CASCADE
--ON DELETE CASCADE

--ALTER TABLE [dbo].[RatingItems]  WITH CHECK ADD  CONSTRAINT [FK_RatingItems_StuffCoding] FOREIGN KEY([StuffCode])
--REFERENCES [dbo].[StuffCoding] ([c_StuffCode])
--ON UPDATE CASCADE
--ON DELETE CASCADE

--ALTER TABLE [dbo].[RatingItems]  WITH CHECK ADD  CONSTRAINT [FK_RatingItems_StuffCodingBase] FOREIGN KEY([StuffCodeBase])
--REFERENCES [dbo].[StuffCoding] ([c_StuffCode])
--end


IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Customers_CustomerActive'))
CREATE NONCLUSTERED INDEX IX_Customers_CustomerActive ON Customers (CustomerActive)
INCLUDE (CustID,CustomerGrpID,CustName,NationalID,CustFirstName)

IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Customers_CustomerGrpID'))
CREATE NONCLUSTERED INDEX IX_Customers_CustomerGrpID ON Customers (CustomerGrpID,CustomerActive)
INCLUDE (CustID,CustName,NationalID,CustFirstName)


--IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Customers_CustomerGrpID_CustomerActive'))
--CREATE NONCLUSTERED INDEX IX_Customers_CustomerGrpID_CustomerActive ON Customers (CustomerGrpID,CustomerActive)
--INCLUDE (CustID,CustName,Balance,FirstBalance,Country,City,WebSite,Region,Address,Tel,Fax,email,pobox,acc_DetailCode,MaxCredit
--          ,ServiceCalcType,ServicePrice,ExtServicePrice,RevenuePercent,EconomicNumber,PostalCode,State,ModifyDate,OperatorID
--		  ,CustomerNote,ValuationType,ProjectID,BudgetID,InfoWeight,InfoDate,GrpActionCustomer,ContactRate,acc_CTopicCode,acc_CTopicCode2,BankId,BankName
--		  ,AccountNumber,AccountKind,BankReports,ManageName,ManagerSells,ContactNo,DiscountNote,Discount,DayTime,ConveyKind,ArzTypeID,accStateDefault
--		  ,NationalID,Mobile,CustomersRow,PersonID1,EstablishDate,SellsMethod,SellsEmporium,SellsDefaultState,MasirID,MaxCreditCurrentForm,ReagentName
--		  ,Tel2,Tel3,PersonID3,UseUnitID,InsertAutoEffectID,EffectID,CustomerGrpID2,PurchasePercent,TechnicalCode,acc_CTopicCode3,CustAccountNumber
--		  ,acc_TopicCode,RegisterNumber,HCTarafGaradadTypeCode,HCKharidarTypeCode,CustFirstName,PerCityCode,StateCode,CityCode,LastUser,FirstUser
--		  ,CustomerState,HCForoushandeType1Code,Max4WaterCo,SupervisorAllocation,CustomerCheckNote,DayOrder)
 IF NOT EXISTS(SELECT * FROM SYSOBJECTS where id = object_id(N'Util.UserNotification') and OBJECTPROPERTY(id, N'IsUserTable') = 1 )
CREATE TABLE Util.UserNotification(
	Kind int NOT NULL CONSTRAINT DF_UserNotification_Kind   DEFAULT (1)  ,
	PositionCode int NOT NULL,
	ReciptType int NOT NULL,
 CONSTRAINT PK_UserNotification PRIMARY KEY CLUSTERED (	Kind,PositionCode,ReciptType)  ON [PRIMARY]) ON [PRIMARY] 
-- UpdateBankFaraAssets.sql    تاريخ 1404/09/11      



/****** Object:  Table Assets.AccCtopics    Script Date: 21/03/1401 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Assets.AccCtopics') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Assets.AccCtopics(
	ExpCode int NOT NULL,
	ExpDesc varchar(100) NOT NULL,
	AccTopicCode bigint NOT NULL,
	AccDetailCode int NOT NULL,
	AccCTopicCode int NOT NULL,
	AccCTopicCode2 int NOT NULL,
	AccCTopicCode3 int NOT NULL,
	AccReserveCTopicCode int NOT NULL,
	AccReserveCTopicCode2 int NOT NULL,
	AccReserveCTopicCode3 int NOT NULL,
 CONSTRAINT PK_ExpenseTopics PRIMARY KEY CLUSTERED 
(
	ExpCode ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Assets.AccTopics    Script Date: 21/03/1401 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Assets.AccTopics') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Assets.AccTopics(
	AccTopicCode bigint NOT NULL,
	AccDetailCode int NOT NULL,
	AccDesc varchar(80) NOT NULL,
	AccDepTopicCode bigint NOT NULL,
	AccExpDetailCode int NOT NULL,
	AccExpTopicCode bigint NOT NULL,
	AccCTopicCode int NOT NULL,
	AccCTopicCode2 int NOT NULL,
	AccCTopicCode3 int NOT NULL,
	AccReserveCTopicCode int NOT NULL,
	AccReserveCTopicCode2 int NOT NULL,
	AccReserveCTopicCode3 int NOT NULL,
 CONSTRAINT PK_AccountsTopics PRIMARY KEY CLUSTERED 
(
	AccTopicCode ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Assets.AidAssets    Script Date: 21/03/1401 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Assets.AidAssets') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Assets.AidAssets(
	Serial int NOT NULL,
	GrpCode int NOT NULL,
	AidInfoID int NOT NULL,
	AidAssetsName varchar(150) NULL,
 CONSTRAINT PK_AidAssets PRIMARY KEY CLUSTERED 
(
	Serial ASC,
	GrpCode ASC,
	AidInfoID ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Assets.AidInfo    Script Date: 21/03/1401 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Assets.AidInfo') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Assets.AidInfo(
	GrpCode int NOT NULL,
	AidInfoID int NOT NULL,
	AidInfoName varchar(60) NOT NULL,
 CONSTRAINT PK_AidAssetsInfo PRIMARY KEY CLUSTERED 
(
	GrpCode ASC,
	AidInfoID ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Assets.AlterAssets    Script Date: 21/03/1401 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Assets.AlterAssets') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Assets.AlterAssets(
	ID int NOT NULL,
	InfoKind tinyint NOT NULL,
	Serial int NOT NULL,
	AlterDate char(10) NOT NULL,
	AlterPrice money NOT NULL,
	AlterDepValue money NOT NULL,
	AlterDepValueInYear money NOT NULL,
	AlterNote text NULL,
	FormType tinyint NOT NULL,
	PrvID int NOT NULL,
	RevalidID int NULL,
 CONSTRAINT PK_AlterAssets PRIMARY KEY CLUSTERED 
(
	ID ASC
)  ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table Assets.Amval    Script Date: 21/03/1401 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Assets.Amval') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Assets.Amval(
	SerialNum int NOT NULL,
	FormNum int NULL,
	FormDate char(10) NOT NULL,
	OwnerType int NOT NULL,
	StuffDesc varchar(150) NOT NULL,
	UnitCode int NOT NULL,
	AsstetsGrpCode int NOT NULL,
	AssetsValue money NOT NULL,
	EsqValue money NOT NULL,
	Amount int NOT NULL,
	TaxGrpCode int NOT NULL,
	TaxID int NOT NULL,
	DepMode tinyint NOT NULL,
	DepValue int NOT NULL,
	PelakNum varchar(20) NULL,
	LastPelakNum varchar(30) NULL,
	AccTopicCode bigint NOT NULL,
	AccDetailCode int NOT NULL,
	AccCTopicCode int NOT NULL,
	AccCTopicCode2 int NOT NULL,
	AccCTopicCode3 int NOT NULL,
	InvoiceNum int NULL,
	InvoiceDate char(10) NOT NULL,
	SellerNote varchar(100) NULL,
	SellerTopicCode bigint NULL,
	SellerDetailCode int NOT NULL,
	SellerCTopicCode int NOT NULL,
	StartUsingDate char(10) NOT NULL,
	DocNum int NULL,
	DocDate char(10) NULL,
	ExpCode int NOT NULL,
	PlaceCode int NOT NULL,
	UserCode int NOT NULL,
	AmvalState tinyint NOT NULL,
	FirstDepValue money NOT NULL,
	DepvalueInYear money NOT NULL,
	WarrantyDate char(10) NULL,
	MasterSerial int NULL,
	Comments varchar(6000) NULL,
	KeeperCode int NOT NULL,
	StartWarrantyDate char(10) NULL,
	CompanyID int NOT NULL,
	AidField1 nvarchar(100) NULL,
	AidField2 nvarchar(100) NULL,
 CONSTRAINT PK_Amval PRIMARY KEY CLUSTERED 
(
	SerialNum ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Assets.AssestConstNow    Script Date: 21/03/1401 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Assets.AssestConstNow') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Assets.AssestConstNow(
	SerialNum int NOT NULL,
	BazaarValue money NOT NULL,
	YearID int NULL,
 CONSTRAINT PK_AssestConstNow PRIMARY KEY CLUSTERED 
(
	SerialNum ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Assets.AssetsGroups    Script Date: 21/03/1401 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Assets.AssetsGroups') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
--CREATE TABLE Assets.AssetsGroups(
--	AsstetsGrpCode int NOT NULL,
--	GrpName varchar(80) NOT NULL,
--	AccTopicCode bigint NOT NULL,
--	AccDetailCode int NOT NULL,
--	AccCTopicCode int NOT NULL,
--	AccCTopicCode2 int NOT NULL,
--	AccCTopicCode3 int NOT NULL,
--	PrefixPelak varchar(15) NULL,
--	LevelID tinyint NOT NULL,
--	PrvGrpCode int NOT NULL,
-- CONSTRAINT PK_AssetsGroups PRIMARY KEY CLUSTERED 
--(
--	AsstetsGrpCode ASC
--)  ON [PRIMARY]
--) ON [PRIMARY]
--GO
/****** Object:  Table Assets.AssetsInsouraceGroups    Script Date: 21/03/1401 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Assets.AssetsInsouraceGroups') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Assets.AssetsInsouraceGroups(
	InsouranceItemsID int NOT NULL,
	Serial int NOT NULL,
 CONSTRAINT PK_AssetsInsouraceGroups PRIMARY KEY CLUSTERED 
(
	InsouranceItemsID ASC,
	Serial ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Assets.AssetsInsouranceSpecial    Script Date: 21/03/1401 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Assets.AssetsInsouranceSpecial') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Assets.AssetsInsouranceSpecial(
	ID int IDENTITY(1,1) NOT NULL,
	Serial int NOT NULL,
	InsouranceID int NOT NULL,
	StartDate char(10) NOT NULL,
	EndDate char(10) NOT NULL,
	InsouranceNo varchar(30) NULL,
	InsouranceDate char(10) NULL,
	InsourancePrice money NOT NULL,
	Comments varchar(300) NULL,
 CONSTRAINT PK_AssetsInsouranceSpecial PRIMARY KEY CLUSTERED 
(
	ID ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Assets.AssetsKeeper    Script Date: 21/03/1401 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Assets.AssetsKeeper') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Assets.AssetsKeeper(
	KeeperCode int NOT NULL,
	KeeperName varchar(80) NULL,
	KeeperDetailCode int NOT NULL,
	Mobile varchar(20) NULL,
	Email nvarchar(100) NULL,
 CONSTRAINT PK_AssetsKeeper PRIMARY KEY CLUSTERED 
(
	KeeperCode ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Assets.AstLaw    Script Date: 21/03/1401 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Assets.AstLaw') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Assets.AstLaw(
	LawGrpRef float NULL,
	Number float NULL,
	Des nvarchar(255) NULL,
	Method float NULL,
	Rate float NULL
) ON [PRIMARY]
GO
/****** Object:  Table Assets.AstLawGrp    Script Date: 21/03/1401 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Assets.AstLawGrp') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Assets.AstLawGrp(
	Code float NULL,
	Name nvarchar(255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table Assets.BerakAmval    Script Date: 21/03/1401 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Assets.BerakAmval') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Assets.BerakAmval(
	ID int NOT NULL,
	SerialNum int NOT NULL,
	StartDate char(10) NOT NULL,
	EndDate char(10) NULL,
	FirstDepValue money NOT NULL,
	DepvalueInYear money NOT NULL,
	FirstDepValueEndStop money NOT NULL,
	DepvalueInYearEndStop money NOT NULL,
	Note nvarchar(250) NULL,
	State tinyint NOT NULL,
 CONSTRAINT PK_BerakAmval PRIMARY KEY CLUSTERED 
(
	ID ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Assets.Config    Script Date: 21/03/1401 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Assets.Config') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Assets.Config(
	Id int IDENTITY(1,1) NOT NULL,
	BaseDate char(10) NOT NULL,
	CompanyName varchar(120) NULL,
	FirstDayMaliYear char(6) NOT NULL,
	EndDayMaliYear char(6) NOT NULL,
	FirstDepValueActive bit NOT NULL,
	LevelForEditFirstDep tinyint NOT NULL,
	ServerName varchar(50) NULL,
	AccountDBName varchar(50) NULL,
	StopDepNo float NOT NULL,
	BedTopicCode tinyint NOT NULL,
	BedDetailCode tinyint NOT NULL,
	BedCTopicCode tinyint NOT NULL,
	BedCTopicCode2 tinyint NOT NULL,
	BedCTopicCode3 tinyint NOT NULL,
	BesTopicCode tinyint NOT NULL,
	BesDetailCode tinyint NOT NULL,
	BesCTopicCode tinyint NOT NULL,
	BesCTopicCode2 tinyint NOT NULL,
	BesCTopicCode3 tinyint NOT NULL,
	DefaultDocType int NOT NULL,
	SerialNumType tinyint NOT NULL,
	ShowAmount tinyint NOT NULL,
	SerialPelak tinyint NOT NULL,
	LevelGroup tinyint NOT NULL,
	StartLimitID int NOT NULL,
	EndLimitID int NOT NULL,
	EditableDepModeDepValue tinyint NOT NULL,
	TimeToDefinitive tinyint NOT NULL,
	SysSmsActive tinyint NOT NULL,
	DocExportEffect tinyint NOT NULL,
	AidFieldCaption nvarchar(1000) NULL,
 CONSTRAINT PK_Config PRIMARY KEY CLUSTERED 
(
	Id ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Assets.Decrease    Script Date: 21/03/1401 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Assets.Decrease') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Assets.Decrease(
	SerialNum int NOT NULL,
	DecreaseID int NOT NULL,
	DecDate char(10) NOT NULL,
	DecValue money NOT NULL,
	DecType int NOT NULL,
	Comments varchar(200) NULL,
	buyerTopicCode bigint NULL,
	buyerDetailCode int NOT NULL,
	buyerCtopicCode int NOT NULL,
	InvoiceNum int NULL,
	InvoiceDate char(10) NULL,
	AssValue money NOT NULL,
	DocNum int NULL,
	DocDate char(10) NULL,
	State tinyint NOT NULL,
	ProfitTopicCode bigint NOT NULL,
	ProfitDetailCode int NOT NULL,
	ProfitCTopicCode int NOT NULL,
	ProfitCTopicCode2 int NOT NULL,
 CONSTRAINT PK___Decrease PRIMARY KEY CLUSTERED 
(
	SerialNum ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Assets.DepTable    Script Date: 21/03/1401 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Assets.DepTable') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Assets.DepTable(
	ID int IDENTITY(1,1) NOT NULL,
	Serial int NOT NULL,
	Yearid int NOT NULL,
	Tablename nvarchar(50) NOT NULL,
	Id4table int NOT NULL,
	FirstDepValue money NOT NULL,
	DepvalueInyear money NOT NULL,
	CompanyID int NOT NULL,
 CONSTRAINT PK_DepTable PRIMARY KEY CLUSTERED 
(
	Serial ASC,
	Yearid ASC,
	Tablename ASC,
	Id4table ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Assets.DocExports    Script Date: 21/03/1401 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Assets.DocExports') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Assets.DocExports(
	ArchiveId int NOT NULL,
	Document_Serial int NOT NULL,
	TopicCode bigint NOT NULL,
	DetailCode int NOT NULL,
	CTopicCode int NOT NULL,
	CTopicCode1 int NOT NULL,
	CTopicCode2 int NOT NULL,
	CTopicCode3 int NOT NULL,
	Comments varchar(100) NULL,
	Debt money NOT NULL,
	Credit money NOT NULL,
	ID int IDENTITY(1,1) NOT NULL,
	DocNo int NOT NULL,
	DocDate char(10) NULL,
	DocType tinyint NOT NULL,
 CONSTRAINT PK_DocExports PRIMARY KEY CLUSTERED 
(
	ID ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Assets.Expenses    Script Date: 21/03/1401 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Assets.Expenses') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Assets.Expenses(
	ExpID int NOT NULL,
	SerialNum int NOT NULL,
	OwnerType int NOT NULL,
	DocNum int NOT NULL,
	DocDate char(10) NOT NULL,
	ExpValue money NOT NULL,
	BuyDate char(10) NOT NULL,
	StartUsingDate_x char(10) NOT NULL,
	ExpDesc varchar(200) NULL,
	SellerTopicCode bigint NOT NULL,
	SellerDetailCode int NOT NULL,
	SellerCTopicCode int NOT NULL,
	FirstDepValue money NOT NULL,
	DepvalueInYear money NOT NULL,
	State tinyint NOT NULL,
 CONSTRAINT PK_Expenses PRIMARY KEY CLUSTERED 
(
	ExpID ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Assets.Insourance    Script Date: 21/03/1401 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Assets.Insourance') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Assets.Insourance(
	InsouranceItemsID int NOT NULL,
	InsouranceID int NOT NULL,
	InsouranceNo varchar(30) NULL,
	InsouranceDate char(10) NULL,
	StartDate char(10) NOT NULL,
	EndDate char(10) NOT NULL,
	InsourancePrice money NOT NULL,
	Comments varchar(300) NULL,
 CONSTRAINT PK_Insourance_1 PRIMARY KEY CLUSTERED 
(
	InsouranceItemsID ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Assets.InsouranceInfo    Script Date: 21/03/1401 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Assets.InsouranceInfo') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Assets.InsouranceInfo(
	InsouranceID int NOT NULL,
	InsouranceName varchar(80) NOT NULL,
	ControlActive tinyint NOT NULL,
 CONSTRAINT PK_Insourance PRIMARY KEY CLUSTERED 
(
	InsouranceID ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Assets.Movement    Script Date: 21/03/1401 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Assets.Movement') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Assets.Movement(
	MoveID int NOT NULL,
	SerialNum int NULL,
	FormNum int NULL,
	MoveDate char(10) NULL,
	OldAccCode bigint NOT NULL,
	OldPlaceCode int NOT NULL,
	OldExpCode int NOT NULL,
	OldUserCode int NOT NULL,
	NewAccCode bigint NOT NULL,
	NewPlaceCode int NOT NULL,
	NewUserCode int NOT NULL,
	ExpAccCode int NOT NULL,
	MoveState tinyint NULL,
	MoveComments text NULL,
	CostValue money NOT NULL,
	FirstDepValue money NULL,
	DepvalueInYear money NULL,
	FinalDepValue money NULL,
	MoveType tinyint NOT NULL,
 CONSTRAINT PK___Movement PRIMARY KEY CLUSTERED 
(
	MoveID ASC
)  ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table Assets.OwnerType    Script Date: 21/03/1401 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Assets.OwnerType') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Assets.OwnerType(
	OwnerType int NOT NULL,
	TypeName varchar(50) NOT NULL,
 CONSTRAINT PK_OwnerType PRIMARY KEY CLUSTERED 
(
	OwnerType ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Assets.Places    Script Date: 21/03/1401 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Assets.Places') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Assets.Places(
	PlaceCode int NOT NULL,
	PlaceName varchar(80) NOT NULL,
	AccTopicCode bigint NOT NULL,
	AccDetailCode int NOT NULL,
	AccCTopicCode int NOT NULL,
	AccCTopicCode2 int NOT NULL,
	AccCTopicCode3 int NOT NULL,
 CONSTRAINT PK_Places PRIMARY KEY CLUSTERED 
(
	PlaceCode ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Assets.ReValidate    Script Date: 21/03/1401 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Assets.ReValidate') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Assets.ReValidate(
	RID int NOT NULL,
	ValidationNum varchar(15) NOT NULL,
	ValidationDate char(10) NOT NULL,
	Comment nvarchar(150) NULL,
	State tinyint NOT NULL,
	Docno int NULL,
	DocDate char(10) NULL,
 CONSTRAINT PK_ReValidate PRIMARY KEY CLUSTERED 
(
	RID ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Assets.ReValidateItems    Script Date: 21/03/1401 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Assets.ReValidateItems') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Assets.ReValidateItems(
	ID int IDENTITY(1,1) NOT NULL,
	RID int NOT NULL,
	SerialNum int NOT NULL,
	ValidationValue money NOT NULL,
	OfficialValue money NOT NULL,
	MiderateInc money NOT NULL,
	MiderateDec money NOT NULL,
	Note nvarchar(150) NULL,
	RemainedAge float NOT NULL,
	FirstDepValue money NOT NULL,
	DepvalueInYear money NOT NULL,
 CONSTRAINT PK_ValidationItems PRIMARY KEY CLUSTERED 
(
	ID ASC
)  ON [PRIMARY],
 CONSTRAINT IX_ReValidateItems UNIQUE NONCLUSTERED 
(
	RID ASC,
	SerialNum ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
--/****** Object:  Table Assets.ScanInfo_old    Script Date: 21/03/1401 06:06:15 ب.ظ ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
--IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Assets.ScanInfo_old') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
--CREATE TABLE Assets.ScanInfo_old(
--	ScanType int NOT NULL,
--	ScanInfoID int NOT NULL,
--	ScanInfoName varchar(100) NOT NULL,
-- CONSTRAINT PK_ScanInfo PRIMARY KEY CLUSTERED 
--(
--	ScanType ASC,
--	ScanInfoID ASC
--)  ON [PRIMARY]
--) ON [PRIMARY]
--GO
/****** Object:  Table Assets.scantype_old    Script Date: 21/03/1401 06:06:15 ب.ظ ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
--IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Assets.scantype_old') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
--CREATE TABLE Assets.scantype_old(
--	ScanType int NOT NULL,
--	ScanTypeName nvarchar(100) NOT NULL,
-- CONSTRAINT PK_ScanType PRIMARY KEY CLUSTERED 
--(
--	ScanType ASC
--)  ON [PRIMARY]
--) ON [PRIMARY]
--GO
/****** Object:  Table Assets.TaxGroup    Script Date: 21/03/1401 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Assets.TaxGroup') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Assets.TaxGroup(
	TaxGrpCode int NOT NULL,
	TaxTitle varchar(80) NOT NULL,
 CONSTRAINT PK_TaxGroup PRIMARY KEY CLUSTERED 
(
	TaxGrpCode ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Assets.TaxItems    Script Date: 21/03/1401 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Assets.TaxItems') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Assets.TaxItems(
	TaxGrpCode int NOT NULL,
	TaxID int NOT NULL,
	TaxCalculateName varchar(2500) NOT NULL,
	DepMode tinyint NOT NULL,
	DepValue int NOT NULL,
	OldDepMode tinyint NULL,
	OldDepValue int NULL,
 CONSTRAINT PK_AmvalGroups PRIMARY KEY CLUSTERED 
(
	TaxGrpCode ASC,
	TaxID ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Assets.Units    Script Date: 21/03/1401 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Assets.Units') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
--CREATE TABLE Assets.Units(
--	unitCode int NOT NULL,
--	unitName varchar(50) NOT NULL,
-- CONSTRAINT PK_Units PRIMARY KEY CLUSTERED 
--(
--	unitCode ASC
--)  ON [PRIMARY]
--) ON [PRIMARY]
--GO
/****** Object:  Table Assets.Users    Script Date: 21/03/1401 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Assets.Users') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Assets.Users(
	UserID int NOT NULL,
	UserName varchar(80) NOT NULL,
	DetailCode int NOT NULL,
	Mobile varchar(20) NULL,
	Email nvarchar(100) NULL,
 CONSTRAINT PK_Users PRIMARY KEY CLUSTERED 
(
	UserID ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO

IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.AccCtopics ADD  CONSTRAINT DF_ExpenseTopics_TopicCode  DEFAULT ((0)) FOR AccTopicCode

--IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Documents_Debt')
--ALTER TABLE Agr.Earth ADD  DEFAULT (0) FOR EarthGrpID
--IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
--ALTER TABLE Agr.EarthLimit ADD  DEFAULT (0) FOR Gate
--IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
--ALTER TABLE Agr.EarthLimit ADD  DEFAULT (0) FOR State
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.AccCtopics ADD  CONSTRAINT DF_ExpenseTopics_DetailCode  DEFAULT ((0)) FOR AccDetailCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.AccCtopics ADD  CONSTRAINT DF_ExpenseTopics_CTopicCode  DEFAULT ((0)) FOR AccCTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.AccCtopics ADD  CONSTRAINT DF_ExpenseTopics_CTopicCode2  DEFAULT ((0)) FOR AccCTopicCode2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.AccCtopics ADD  CONSTRAINT DF_ExpenseTopics_CTopicCode3  DEFAULT ((0)) FOR AccCTopicCode3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.AccCtopics ADD  DEFAULT ((0)) FOR AccReserveCTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.AccCtopics ADD  DEFAULT ((0)) FOR AccReserveCTopicCode2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.AccCtopics ADD  DEFAULT ((0)) FOR AccReserveCTopicCode3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.AccTopics ADD  CONSTRAINT DF_AccountsTopics_DetailCode  DEFAULT ((0)) FOR AccDetailCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.AccTopics ADD  CONSTRAINT DF_AccTopics_AccDepTopicCode  DEFAULT ((0)) FOR AccDepTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.AccTopics ADD  CONSTRAINT DF_AccTopics_AccDetailCode1  DEFAULT ((0)) FOR AccExpDetailCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.AccTopics ADD  DEFAULT ((0)) FOR AccExpTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.AccTopics ADD  DEFAULT ((0)) FOR AccCTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.AccTopics ADD  DEFAULT ((0)) FOR AccCTopicCode2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.AccTopics ADD  DEFAULT ((0)) FOR AccCTopicCode3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.AccTopics ADD  DEFAULT ((0)) FOR AccReserveCTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.AccTopics ADD  DEFAULT ((0)) FOR AccReserveCTopicCode2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.AccTopics ADD  DEFAULT ((0)) FOR AccReserveCTopicCode3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.AlterAssets ADD  CONSTRAINT DF_AlterAssets_InfoKind  DEFAULT ((1)) FOR InfoKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.AlterAssets ADD  CONSTRAINT DF_AlterAssets_AlterPrice  DEFAULT ((0)) FOR AlterPrice
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.AlterAssets ADD  CONSTRAINT DF_AlterAssets_AlterDepValue  DEFAULT ((0)) FOR AlterDepValue
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.AlterAssets ADD  CONSTRAINT DF_AlterAssets_AlterDepValueInYear  DEFAULT ((0)) FOR AlterDepValueInYear
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.AlterAssets ADD  CONSTRAINT DF_AlterAssets_Kind  DEFAULT ((0)) FOR FormType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.AlterAssets ADD  CONSTRAINT DF_AlterAssets_PrvID  DEFAULT ((0)) FOR PrvID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.AlterAssets ADD  CONSTRAINT DF_AlterAssets_RevalidID  DEFAULT ((0)) FOR RevalidID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Amval ADD  CONSTRAINT DF___Amval_Amount  DEFAULT ((1)) FOR Amount
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Amval ADD  CONSTRAINT DF_Amval_AccTopicCode  DEFAULT ((0)) FOR AccTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Amval ADD  CONSTRAINT DF_Amval_AccDetailCode  DEFAULT ((0)) FOR AccDetailCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Amval ADD  CONSTRAINT DF_Amval_AccCTopicCode  DEFAULT ((0)) FOR AccCTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Amval ADD  CONSTRAINT DF_Amval_AccCTopicCode2  DEFAULT ((0)) FOR AccCTopicCode2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Amval ADD  CONSTRAINT DF_Amval_AccCTopicCode3  DEFAULT ((0)) FOR AccCTopicCode3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Amval ADD  CONSTRAINT DF___Amval_SellerTopicCode  DEFAULT ((0)) FOR SellerTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Amval ADD  CONSTRAINT DF___Amval_SellerDetailCode  DEFAULT ((0)) FOR SellerDetailCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Amval ADD  CONSTRAINT DF_Amval_SellerCTopicCode  DEFAULT ((0)) FOR SellerCTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Amval ADD  CONSTRAINT DF___Amval_DocNum  DEFAULT ((0)) FOR DocNum
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Amval ADD  CONSTRAINT DF___Amval_PlaceCode  DEFAULT ((0)) FOR PlaceCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Amval ADD  CONSTRAINT DF___Amval_UserCode  DEFAULT ((0)) FOR UserCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Amval ADD  CONSTRAINT DF___Amval_AmvalState  DEFAULT ((0)) FOR AmvalState
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Amval ADD  CONSTRAINT DF_Amval_FirstDepValue  DEFAULT ((0)) FOR FirstDepValue
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Amval ADD  CONSTRAINT DF_Amval_DepvalueInYear  DEFAULT ((0)) FOR DepvalueInYear
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Amval ADD  CONSTRAINT DF_Amval_MasterSerial  DEFAULT ((0)) FOR MasterSerial
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Amval ADD  CONSTRAINT DF_Amval_KeeperCode  DEFAULT ((1)) FOR KeeperCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Amval ADD  DEFAULT ((0)) FOR CompanyID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')

--ALTER TABLE Assets.AssetsGroups ADD  CONSTRAINT DF_AssetsGroups_AccTopicCode  DEFAULT ((0)) FOR AccTopicCode
--IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
--ALTER TABLE Assets.AssetsGroups ADD  DEFAULT ((0)) FOR AccDetailCode
--IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
--ALTER TABLE Assets.AssetsGroups ADD  DEFAULT ((0)) FOR AccCTopicCode
--IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
--ALTER TABLE Assets.AssetsGroups ADD  DEFAULT ((0)) FOR AccCTopicCode2
--IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
--ALTER TABLE Assets.AssetsGroups ADD  DEFAULT ((0)) FOR AccCTopicCode3
--IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
--ALTER TABLE Assets.AssetsGroups ADD  DEFAULT ((0)) FOR LevelID
--IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
--ALTER TABLE Assets.AssetsGroups ADD  DEFAULT ((0)) FOR PrvGrpCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.AssetsInsouranceSpecial ADD  CONSTRAINT DF_AssetsInsouranceSpecial_InsourancePrice  DEFAULT ((0)) FOR InsourancePrice
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.AssetsKeeper ADD  DEFAULT ((0)) FOR KeeperDetailCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.BerakAmval ADD  CONSTRAINT DF_BerakAmval_FirstDepValue  DEFAULT ((0)) FOR FirstDepValue
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.BerakAmval ADD  CONSTRAINT DF_BerakAmval_DepvalueInYear  DEFAULT ((0)) FOR DepvalueInYear
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.BerakAmval ADD  CONSTRAINT DF_BerakAmval_FirstDepValue1  DEFAULT ((0)) FOR FirstDepValueEndStop
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.BerakAmval ADD  CONSTRAINT DF_BerakAmval_DepvalueInYear1  DEFAULT ((0)) FOR DepvalueInYearEndStop
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.BerakAmval ADD  CONSTRAINT DF_BerakAmval_State  DEFAULT ((0)) FOR State
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Config ADD  CONSTRAINT DF_Config_FirstDayMaliYear  DEFAULT ('/01/01') FOR FirstDayMaliYear
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Config ADD  CONSTRAINT DF_Config_EndDayMaliYear  DEFAULT ('/12/29') FOR EndDayMaliYear
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Config ADD  CONSTRAINT DF_Config_FirstDepValueActive  DEFAULT ((0)) FOR FirstDepValueActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Config ADD  CONSTRAINT DF_Config_LevelForEditFirstDep  DEFAULT ((15)) FOR LevelForEditFirstDep
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Config ADD  CONSTRAINT DF_Config_StopDepNo  DEFAULT ((0)) FOR StopDepNo
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Config ADD  CONSTRAINT DF_Config_BedTopicCode  DEFAULT ((0)) FOR BedTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Config ADD  CONSTRAINT DF_Config_BedDetailCode  DEFAULT ((0)) FOR BedDetailCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Config ADD  CONSTRAINT DF_Config_BedCTopicCode  DEFAULT ((0)) FOR BedCTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Config ADD  CONSTRAINT DF_Config_BedCTopicCode2  DEFAULT ((0)) FOR BedCTopicCode2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Config ADD  CONSTRAINT DF_Config_BedCTopicCode3  DEFAULT ((0)) FOR BedCTopicCode3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Config ADD  CONSTRAINT DF_Config_BesTopicCode  DEFAULT ((0)) FOR BesTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Config ADD  CONSTRAINT DF_Config_BesDetailCode  DEFAULT ((0)) FOR BesDetailCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Config ADD  CONSTRAINT DF_Config_BesCTopicCode  DEFAULT ((0)) FOR BesCTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Config ADD  CONSTRAINT DF_Config_BesCTopicCode2  DEFAULT ((0)) FOR BesCTopicCode2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Config ADD  CONSTRAINT DF_Config_BesCTopicCode3  DEFAULT ((0)) FOR BesCTopicCode3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Config ADD  CONSTRAINT DF__Config__DefaultD__2BD46C74  DEFAULT ((10)) FOR DefaultDocType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Config ADD  CONSTRAINT DF__Config__SerialNu__44A01A3E  DEFAULT ((0)) FOR SerialNumType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Config ADD  CONSTRAINT DF__Config__ShowAmou__7BF04F28  DEFAULT ((0)) FOR ShowAmount
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Config ADD  CONSTRAINT DF__Config__SerialPe__029D4CB7  DEFAULT ((0)) FOR SerialPelak
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Config ADD  CONSTRAINT DF__Config__LevelGro__039170F0  DEFAULT ((0)) FOR LevelGroup
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Config ADD  CONSTRAINT DF_Config_StartLimitID  DEFAULT ((1)) FOR StartLimitID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Config ADD  CONSTRAINT DF_Config_EndLimitID  DEFAULT ((2147483647)) FOR EndLimitID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Config ADD  CONSTRAINT DF_Config_EditableDepModeDepValue  DEFAULT ((1)) FOR EditableDepModeDepValue
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Config ADD  CONSTRAINT DF_Config_TimeToDefinitive  DEFAULT ((0)) FOR TimeToDefinitive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Config ADD  CONSTRAINT DF__Config__SysSmsAc__11DF9047  DEFAULT ((0)) FOR SysSmsActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Config ADD  CONSTRAINT DF__Config__DocExpor__12D3B480  DEFAULT ((1)) FOR DocExportEffect
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Decrease ADD  CONSTRAINT DF___Decrease_SellerTopicCode  DEFAULT ((0)) FOR buyerTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Decrease ADD  CONSTRAINT DF___Decrease_SellerDetailCode  DEFAULT ((0)) FOR buyerDetailCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Decrease ADD  CONSTRAINT DF___Decrease_buyerCtopicCode  DEFAULT ((0)) FOR buyerCtopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Decrease ADD  CONSTRAINT DF_Decrease_AssValue  DEFAULT ((0)) FOR AssValue
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Decrease ADD  CONSTRAINT DF_Decrease_DocNum  DEFAULT ((0)) FOR DocNum
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Decrease ADD  DEFAULT ((0)) FOR ProfitTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Decrease ADD  DEFAULT ((0)) FOR ProfitDetailCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Decrease ADD  DEFAULT ((0)) FOR ProfitCTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Decrease ADD  DEFAULT ((0)) FOR ProfitCTopicCode2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.DepTable ADD  CONSTRAINT DF_DepTable_FirstDepValue  DEFAULT ((0)) FOR FirstDepValue
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.DepTable ADD  CONSTRAINT DF_DepTable_DepvalueInyear  DEFAULT ((0)) FOR DepvalueInyear
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.DepTable ADD  DEFAULT ((0)) FOR CompanyID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.DocExports ADD  CONSTRAINT DF_DocExports_ArchiveId  DEFAULT ((0)) FOR ArchiveId
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.DocExports ADD  CONSTRAINT DF_DocExports_DetailCode  DEFAULT ((0)) FOR DetailCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.DocExports ADD  CONSTRAINT DF_DocExports_CTopicCode  DEFAULT ((0)) FOR CTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.DocExports ADD  CONSTRAINT DF_DocExports_CTopicCode1  DEFAULT ((0)) FOR CTopicCode1
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.DocExports ADD  CONSTRAINT DF_DocExports_CTopicCode2  DEFAULT ((0)) FOR CTopicCode2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.DocExports ADD  CONSTRAINT DF_DocExports_CTopicCode3  DEFAULT ((0)) FOR CTopicCode3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.DocExports ADD  CONSTRAINT DF_DocExports_Debt  DEFAULT ((0)) FOR Debt
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.DocExports ADD  CONSTRAINT DF_DocExports_Credit  DEFAULT ((0)) FOR Credit
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.DocExports ADD  DEFAULT ((0)) FOR DocNo
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.DocExports ADD  DEFAULT ((0)) FOR DocType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Expenses ADD  CONSTRAINT DF_Expenses_OwnerType  DEFAULT ((0)) FOR OwnerType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Expenses ADD  CONSTRAINT DF___Expenses_DocNum  DEFAULT ((0)) FOR DocNum
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Expenses ADD  CONSTRAINT DF___Expenses_ExpValue  DEFAULT ((0)) FOR ExpValue
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Expenses ADD  CONSTRAINT DF___Expenses_SellerTopicCode  DEFAULT ((0)) FOR SellerTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Expenses ADD  CONSTRAINT DF___Expenses_SellerDetailCode  DEFAULT ((0)) FOR SellerDetailCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Expenses ADD  CONSTRAINT DF_Expenses_SellerCTopicCode  DEFAULT ((0)) FOR SellerCTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Expenses ADD  CONSTRAINT DF_Expenses_FirstDepValue  DEFAULT ((0)) FOR FirstDepValue
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Expenses ADD  CONSTRAINT DF_Expenses_DepvalueInYear  DEFAULT ((0)) FOR DepvalueInYear
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Expenses ADD  CONSTRAINT DF___Expenses_ExpState  DEFAULT ((0)) FOR State
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Insourance ADD  CONSTRAINT DF_Insourance_InsourancePrice  DEFAULT ((0)) FOR InsourancePrice
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.InsouranceInfo ADD  CONSTRAINT DF_Insourance_ControlActive  DEFAULT ((0)) FOR ControlActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Movement ADD  CONSTRAINT DF___Movement_OldAccCode  DEFAULT ((0)) FOR OldAccCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Movement ADD  CONSTRAINT DF___Movement_OldPlaceCode  DEFAULT ((0)) FOR OldPlaceCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Movement ADD  CONSTRAINT DF___Movement_OldExpCode  DEFAULT ((0)) FOR OldExpCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Movement ADD  CONSTRAINT DF___Movement_OldUserCode  DEFAULT ((0)) FOR OldUserCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Movement ADD  CONSTRAINT DF___Movement_NewAccCode  DEFAULT ((0)) FOR NewAccCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Movement ADD  CONSTRAINT DF___Movement_NewPlaceCode  DEFAULT ((0)) FOR NewPlaceCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Movement ADD  CONSTRAINT DF___Movement_NewUserCode  DEFAULT ((0)) FOR NewUserCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Movement ADD  CONSTRAINT DF___Movement_ExpAccCode  DEFAULT ((0)) FOR ExpAccCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Movement ADD  CONSTRAINT DF_Movement_CostValue  DEFAULT ((0)) FOR CostValue
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Movement ADD  CONSTRAINT DF_Movement_FirstDepValue  DEFAULT ((0)) FOR FirstDepValue
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Movement ADD  CONSTRAINT DF_Movement_DepvalueInYear_1  DEFAULT ((0)) FOR DepvalueInYear
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Movement ADD  CONSTRAINT DF_Movement_FinalDepValue  DEFAULT ((0)) FOR FinalDepValue
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Movement ADD  CONSTRAINT DF_Movement_MoveType  DEFAULT ((0)) FOR MoveType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Places ADD  CONSTRAINT DF_Places_TopicCode  DEFAULT ((0)) FOR AccTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Places ADD  CONSTRAINT DF_Places_DetailCode  DEFAULT ((0)) FOR AccDetailCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Places ADD  CONSTRAINT DF_Places_CTopicCode  DEFAULT ((0)) FOR AccCTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Places ADD  CONSTRAINT DF_Places_CTopicCode2  DEFAULT ((0)) FOR AccCTopicCode2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Places ADD  CONSTRAINT DF_Places_CTopicCode3  DEFAULT ((0)) FOR AccCTopicCode3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.ReValidate ADD  CONSTRAINT DF_ReValidate_State  DEFAULT ((0)) FOR State
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.ReValidate ADD  CONSTRAINT DF_ReValidate_Docno  DEFAULT ((0)) FOR Docno
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.ReValidateItems ADD  CONSTRAINT DF_ValidationItems_RID  DEFAULT ((0)) FOR RID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.ReValidateItems ADD  CONSTRAINT DF_ReValidateItems_ValidationValue  DEFAULT ((0)) FOR ValidationValue
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.ReValidateItems ADD  CONSTRAINT DF_ReValidateItems_OfficialValue  DEFAULT ((0)) FOR OfficialValue
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.ReValidateItems ADD  CONSTRAINT DF_ReValidateItems_MiderateInc  DEFAULT ((0)) FOR MiderateInc
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.ReValidateItems ADD  CONSTRAINT DF_ReValidateItems_MiderateDec  DEFAULT ((0)) FOR MiderateDec
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.ReValidateItems ADD  CONSTRAINT DF_ReValidateItems_FirstDepValue  DEFAULT ((0)) FOR FirstDepValue
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.ReValidateItems ADD  CONSTRAINT DF_ReValidateItems_DepvalueInYear  DEFAULT ((0)) FOR DepvalueInYear
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.TaxItems ADD  CONSTRAINT DF_TaxItems_DepValue  DEFAULT ((0)) FOR DepValue
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Assets.Users ADD  DEFAULT ((0)) FOR DetailCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Cnt.ContractOperations ADD  CONSTRAINT DF_ContractOperations_Percent1  DEFAULT ((0)) FOR Percent1
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Cnt.ContractOperations ADD  CONSTRAINT DF_ContractOperations_Percent2  DEFAULT ((0)) FOR Percent2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Cnt.ContractOperations ADD  CONSTRAINT DF_ContractOperations_DiscountPercent  DEFAULT ((0)) FOR DiscountPercent
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Cnt.ContractOperations ADD  CONSTRAINT DF_ContractOperations_Percent3  DEFAULT ((0)) FOR Percent3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Cnt.Contracts ADD  DEFAULT ((0)) FOR EmployerId
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Cnt.Contracts ADD  DEFAULT ((0)) FOR WorkShopId
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Cnt.Contracts ADD  CONSTRAINT DF_Contracts_Percent1  DEFAULT ((0)) FOR Percent1
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Cnt.Contracts ADD  CONSTRAINT DF_Contracts_Percent2  DEFAULT ((0)) FOR Percent2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Cnt.Contracts ADD  CONSTRAINT DF_Contracts_Percent3  DEFAULT ((0)) FOR Percent3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Cnt.Contracts ADD  DEFAULT ((0)) FOR ArzAmount
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Cnt.Contracts ADD  CONSTRAINT DF_Contracts_TaxAble  DEFAULT ((1)) FOR TaxAble
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Cnt.ContractsProperties ADD  CONSTRAINT DF_ContractsProperties_PropertiesEntity  DEFAULT ((0)) FOR PropertiesEntity
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Cnt.RunSchedules ADD  CONSTRAINT DF_Contracts_CustID  DEFAULT ((0)) FOR CustID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ActionPlans ADD  CONSTRAINT DF_ActionPlans_ActionPlanType  DEFAULT ((0)) FOR ActionPlanType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ActionPlans ADD  CONSTRAINT DF_ActionPlans_ActionPlanState  DEFAULT ((0)) FOR ActionPlanState
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Acts ADD  CONSTRAINT DF_Acts_Essense  DEFAULT (1) FOR Essense
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Acts ADD  CONSTRAINT DF_Acts_actNote  DEFAULT ('') FOR actNote
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Acts ADD  CONSTRAINT DF_Acts_DocNo  DEFAULT (0) FOR DocNo
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Acts ADD  CONSTRAINT DF_Acts_DocDate  DEFAULT ('') FOR DocDate
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Acts ADD  CONSTRAINT DF_Acts_acc_TopicCode  DEFAULT (0) FOR acc_TopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Acts ADD  CONSTRAINT DF_Acts_acc_DetailCode  DEFAULT (0) FOR acc_DetailCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Acts ADD  CONSTRAINT DF_Acts_acc_CTopicCode  DEFAULT (0) FOR acc_CTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Agreements ADD  CONSTRAINT DF_Agreementss_AgreementsDate  DEFAULT ('') FOR AgreementsDate
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Agreements ADD  DEFAULT (0) FOR AgrState
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Agreements ADD  DEFAULT ((1)) FOR SellsMethod
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.CheckBook ADD  DEFAULT (0) FOR ChkBookActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_UsageDetailCode  DEFAULT (0) FOR UsageDetailCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_UsageCTopicCode  DEFAULT (0) FOR UsageCTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_SecondCustomerAvailable  DEFAULT (0) FOR SecondCustomerAvailable
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_StuffCodeAidInfoAvailable  DEFAULT (0) FOR StuffCodeAidInfoAvailable
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_UniqueSerial  DEFAULT (0) FOR UniqueSerial
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_FactorReleaseRelation  DEFAULT (0) FOR FactorReleaseRelation
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_BankState  DEFAULT (0) FOR BankState
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_EntityDisplayType  DEFAULT (0) FOR EntityDisplayType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_EntityOutputType  DEFAULT (0) FOR EntityOutputLowerLimit
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_CountStoreKind  DEFAULT (0) FOR CountStoreKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_EntityWeight  DEFAULT (0) FOR Carton
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF__Config__EntityCa__2062B9C8  DEFAULT ('مقدار') FOR EntityCaption
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF__Config__WeightCa__2156DE01  DEFAULT ('وزن') FOR WeightCaption
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR ControlOrderPointEntity
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (1) FOR ControlCodeActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR AddMenuItem
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR ActiveCoffer
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR ActiveBsell
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR ActiveBudget
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR ActiveStore
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR ActiveSchedule
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR ActiveSellPrice2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR StuffKindActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR AccDetailCodeEqualCustID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR StuffCodingKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (1) FOR SpecialReportsActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (1) FOR CommunicableStores
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (1) FOR StuffTecInfoActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR LevelIdStuffGroup
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR ExpireDateKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR RecoverPittedCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR CanRelation
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR StuffEnableKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR BarCodeKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (1) FOR DocStatusDefault
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR DocReciptStateDefault
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR EditCustNameLevelID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR ServerID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR SelectedInvoiceEmission
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT ('0') FOR CheckControlsItems
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (1) FOR CheckControlsKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR DefaultDateActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (1) FOR CheckMakeDoc4DelEdit
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR StandardRateVatActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR CalcReciptsRegulatesActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR RowInCardex
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT ('0') FOR CustomerTrancKinds
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR DefaultYear
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (2) FOR ComPortKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR EditStuffNameLevelID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (7) FOR BaudRate
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT ('COM1') FOR Port
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR ActiveProcurement
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR ActiveManeger
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (2) FOR FlowControl
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (1) FOR XonXoffIn
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (1) FOR XonXoffOut
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (20) FOR PackSize
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR StopBits
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR Parity
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR UseUnitsYearID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR stCount
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (1) FOR UnicStuffCodingKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR Miladi_ValiDate_Date_Check
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT ('0') FOR ActiveSubsys
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT ('0') FOR CustAccDetailCodeEqualCustID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR MakeDocsLevelID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR DocPostKindLevelID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR AuxiliaryActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_StateCode  DEFAULT (0) FOR StateCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_CityCode  DEFAULT (0) FOR CityCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_CHKPriorityTransDate  DEFAULT (1) FOR CHKPriorityTransDate
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_ControlEntryCustInfo  DEFAULT (0) FOR ControlEntryCustInfo
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (1) FOR BrowseAllForms
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR SysSmsActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT ((0)) FOR WorkFlowActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT ((0)) FOR Band
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT ((0)) FOR SabteNam
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT ((1)) FOR FilterOnServerID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_RequiredCustomers  DEFAULT ((1)) FOR RequiredCustomers
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_CustomersUnicName  DEFAULT ((0)) FOR CustomersUnicName
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_CheckDateDefaultAct  DEFAULT ((0)) FOR CheckDateDefaultAct
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_CheckWarnDay  DEFAULT ((3)) FOR CheckWarnDay
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_FunctionDate4EditFrom  DEFAULT ('00/00/00') FOR FunctionDate4EditFrom
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_FunctionDate4EditTo  DEFAULT ('99/99/99') FOR FunctionDate4EditTo
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_DeadlineChanges  DEFAULT ((0)) FOR DeadlineChanges
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_ConcatField4StuffName  DEFAULT ('') FOR ConcatField4StuffName
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_Tabeiat  DEFAULT ((0)) FOR Tabeiat
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_MachineryLookUpKind1  DEFAULT ((0)) FOR MachineryLookUpKind1
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_MachineryLookUpKind2  DEFAULT ((0)) FOR MachineryLookUpKind2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_MachineryLookUpKind3  DEFAULT ((0)) FOR MachineryLookUpKind3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_MachineryLookUpKind4  DEFAULT ((0)) FOR MachineryLookUpKind4
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_MachineryLookUpKind5  DEFAULT ((0)) FOR MachineryLookUpKind5
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_MachineryLookUpKind6  DEFAULT ((0)) FOR MachineryLookUpKind6
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
--ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_ReciptStateChanges  DEFAULT ((0)) FOR ReciptStateChanges
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_SendDoc2OtherSystems  DEFAULT ((0)) FOR SendDoc2OtherSystems
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_chkExistAttachments  DEFAULT ((0)) FOR chkExistAttachments
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_PureSellActive  DEFAULT ((0)) FOR PureSellActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_ConcatField4StuffNameKind  DEFAULT ((0)) FOR ConcatField4StuffNameKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_ActiveMiladi  DEFAULT ((0)) FOR ActiveMiladi
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_AccCenterTopicEqualUseUnitID  DEFAULT ((0)) FOR AccCenterTopicEqualUseUnitID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_ChkUsersCustomersGroupsActive  DEFAULT ((1)) FOR ChkUsersCustomersGroupsActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_taxPayerTypeField  DEFAULT ((0)) FOR taxPayerTypeField
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_GroupReciptPostKind  DEFAULT ((0)) FOR GroupReciptPostKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_ArzActiveAll  DEFAULT ((0)) FOR ArzActiveAll
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_MakeDocumentPost  DEFAULT ((7)) FOR MakeDocumentPost
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_AllControls  DEFAULT ((0)) FOR AllControls
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_SmallDeals  DEFAULT ((250000000)) FOR SmallDeals
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_SmallDealsCo  DEFAULT ((5)) FOR SmallDealsCo
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_PlaqueReaderActive  DEFAULT ((0)) FOR PlaqueReaderActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_ConfigSettings  DEFAULT ((1)) FOR ConfigSettings
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_RoundEntity  DEFAULT ((3)) FOR RoundEntity
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_ChkSumTotalOutputPrice  DEFAULT ((1)) FOR ChkSumTotalOutputPrice
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_CustomerKindsTransaction  DEFAULT ('0,0,4,5,6,8,11,12,13,14,0,3,8,19,0,8,9,11') FOR CustomerKindsTransaction
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_DetailCodelength  DEFAULT ((15)) FOR DetailCodelength
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_SearchLimitCustomersGroups  DEFAULT ((0)) FOR SearchLimitCustomersGroups
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_POActive  DEFAULT ((0)) FOR POActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  DEFAULT ((0)) FOR WarrantyDay
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_POCaption  DEFAULT ('PO') FOR POCaption
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Costs ADD  DEFAULT (0) FOR CustID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Costs ADD  DEFAULT (0) FOR VAT
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Counting ADD  CONSTRAINT DF_Counting_State  DEFAULT (0) FOR State
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Counting ADD  DEFAULT ((0)) FOR CountingCalckind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.CountingItems ADD  CONSTRAINT DF_CountingItems_StuffSize  DEFAULT ('') FOR StuffSize
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.CountingItems ADD  CONSTRAINT DF_CountingItems_StuffDiameter  DEFAULT ('') FOR StuffDiameter
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.CountingItems ADD  CONSTRAINT DF_CountingItems_StuffAlloy  DEFAULT ('') FOR StuffAlloy
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.CountingItems ADD  CONSTRAINT DF_Counting_ControlCode  DEFAULT ((0)) FOR ControlCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.CountingItems ADD  CONSTRAINT DF_Counting_OutputEntity  DEFAULT (0) FOR Count1Entity
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.CountingItems ADD  CONSTRAINT DF_Counting_InputWeight  DEFAULT (0) FOR Count1Weight
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.CountingItems ADD  CONSTRAINT DF_CountingItems_ServerID  DEFAULT ((0)) FOR ServerID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Customers ADD  CONSTRAINT DF_Customers_CustomerGrpID  DEFAULT (0) FOR CustomerGrpID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Customers ADD  CONSTRAINT DF_Customers_Balance  DEFAULT (0) FOR Balance
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Customers ADD  CONSTRAINT DF_Customers_FirstBalance  DEFAULT (0) FOR FirstBalance
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Customers ADD  CONSTRAINT DF_Customers_acc_DetailCode  DEFAULT (0) FOR acc_DetailCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Customers ADD  CONSTRAINT DF_Customers_MaxCredit  DEFAULT (0) FOR MaxCredit
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Customers ADD  CONSTRAINT DF_Customers_ServiceCalcType  DEFAULT (0) FOR ServiceCalcType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Customers ADD  CONSTRAINT DF_Customers_ServicePrice  DEFAULT (0) FOR ServicePrice
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Customers ADD  CONSTRAINT DF_Customers_ServicePrice1  DEFAULT (0) FOR ExtServicePrice
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Customers ADD  CONSTRAINT DF_Customers_RevenuePercent  DEFAULT (0) FOR RevenuePercent
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Customers ADD  CONSTRAINT DF_Customers_State  DEFAULT (0) FOR State
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Customers ADD  DEFAULT (0) FOR GrpActionCustomer
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Customers ADD  DEFAULT (0) FOR acc_CTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Customers ADD  DEFAULT (0) FOR acc_CTopicCode2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Customers ADD  CONSTRAINT DF_Customers_AccountKind  DEFAULT ((0)) FOR AccountKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Customers ADD  DEFAULT (0) FOR ConveyKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Customers ADD  DEFAULT (0) FOR accStateDefault
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Customers ADD  DEFAULT (0) FOR PersonID1
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Customers ADD  CONSTRAINT DF_Customers_SellsEmporium  DEFAULT (1) FOR SellsEmporium
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Customers ADD  DEFAULT (0) FOR SellsDefaultState
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Customers ADD  DEFAULT (999999999) FOR MaxCreditCurrentForm
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Customers ADD  DEFAULT (0) FOR CustomerActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Customers ADD  DEFAULT (0) FOR PersonID3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Customers ADD  DEFAULT (0) FOR UseUnitID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Customers ADD  CONSTRAINT DF_Customers_acc_CTopicCode3  DEFAULT (0) FOR acc_CTopicCode3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Customers ADD  CONSTRAINT DF_Customers_acc_TopicCode  DEFAULT ((0)) FOR acc_TopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Customers ADD  CONSTRAINT DF_Customers_StateCode  DEFAULT (0) FOR StateCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Customers ADD  CONSTRAINT DF_Customers_CityCode  DEFAULT (0) FOR CityCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Customers ADD  DEFAULT (0) FOR CustomerState
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Customers ADD  CONSTRAINT DF_Customers_HCForoushandeType1Code  DEFAULT ((1)) FOR HCForoushandeType1Code
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Customers ADD  CONSTRAINT DF_Customers_Max4WaterCo  DEFAULT ((0)) FOR Max4WaterCo
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Customers ADD  CONSTRAINT DF_Customers_SupervisorAllocation  DEFAULT ((0)) FOR SupervisorAllocation
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.CustomersCapacity ADD  DEFAULT (0) FOR Amount
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.CustomersCapacity ADD  DEFAULT (0) FOR Price
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.CustomersGroup ADD  CONSTRAINT DF_CustomersGroup_StartCode  DEFAULT (0) FOR StartCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.CustomersGroup ADD  CONSTRAINT DF_CustomersGroup_FinishCode  DEFAULT (0) FOR FinishCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.CustomersGroup ADD  CONSTRAINT DF_CustomersGroup_acc_TopicCode  DEFAULT ((0)) FOR acc_TopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.CustomersGroup ADD  CONSTRAINT DF_CustomersGroup_acc_ChecksTopicCode  DEFAULT ((0)) FOR acc_ChecksTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.CustomersGroup ADD  CONSTRAINT DF_CustomersGroup_acc_ReChecksTopicCode  DEFAULT ((0)) FOR acc_ReChecksTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.CustomersGroup ADD  CONSTRAINT DF_CustomersGroup_acc_CertifyTopicCode  DEFAULT ((0)) FOR acc_CertifyTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.CustomersGroup ADD  CONSTRAINT DF_CustomersGroup_acc_CTopicCode  DEFAULT (0) FOR acc_CTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.CustomersGroup ADD  CONSTRAINT DF_CustomersGroup_GroupType  DEFAULT (0) FOR GroupType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.CustomersGroup ADD  CONSTRAINT DF_CustomersGroup_acc_InComingTopicCode  DEFAULT (0) FOR acc_InComingTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.CustomersGroup ADD  CONSTRAINT DF_CustomersGroup_acc_InComingTopicCode1  DEFAULT (0) FOR acc_AFootInComingTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.CustomersGroup ADD  CONSTRAINT DF_CustomersGroup_acc_CTopicCode1  DEFAULT (0) FOR acc_CTopicCode2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.CustomersGroup ADD  CONSTRAINT DF_CustomersGroup_acc_CTopicCode3  DEFAULT (0) FOR acc_CTopicCode3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.CustomersGroup ADD  CONSTRAINT DF_CustomersGroup_DetailType  DEFAULT ((0)) FOR DetailType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.CustomersManag ADD  DEFAULT ((0)) FOR LegalReal
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.CustomersOtherGroups ADD  CONSTRAINT DF_CustomersOtherGroups_CustomerGrpID  DEFAULT ((0)) FOR CustomerGrpID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Deficits ADD  CONSTRAINT DF_Deficits_DeficitID  DEFAULT (0) FOR DeficitID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Deficits ADD  CONSTRAINT DF_Deficits_DeficitType  DEFAULT (0) FOR DeficitType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Deficits ADD  CONSTRAINT DF_Deficits_CalculationType  DEFAULT (0) FOR CalculationType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Deficits ADD  CONSTRAINT DF_Deficits_DeficitCo  DEFAULT (0) FOR DeficitCo
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Deficits ADD  CONSTRAINT DF_Deficits_ExportType  DEFAULT (0) FOR ExportType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Deficits ADD  CONSTRAINT DF_Deficits_acc_TopicCode  DEFAULT ((0)) FOR acc_TopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Deficits ADD  CONSTRAINT DF_Deficits_acc_DetailCode  DEFAULT (0) FOR acc_DetailCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Deficits ADD  CONSTRAINT DF_Deficits_acc_CTopicCode  DEFAULT (0) FOR acc_CTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Deficits ADD  CONSTRAINT DF_Deficits_acc_CTopicCode1  DEFAULT (0) FOR acc_CTopicCode2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Deficits ADD  DEFAULT (1) FOR EditAfterPost
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Deficits ADD  DEFAULT (0) FOR BeforeDeficitCalc
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Deficits ADD  CONSTRAINT DF_Deficits_ObverseTopicCode  DEFAULT ((0)) FOR ObverseTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Deficits ADD  DEFAULT ('00/00/00') FOR StartDate
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Deficits ADD  DEFAULT ('99/99/99') FOR EndDate
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Deficits ADD  CONSTRAINT DF_Deficits_acc_CTopicCode3  DEFAULT (0) FOR acc_CTopicCode3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Deficits ADD  CONSTRAINT DF_Deficits_AccFixedCoding  DEFAULT ((0)) FOR AccFixedCoding
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Deficits ADD  CONSTRAINT DF_Deficits_TopicCodeBed  DEFAULT ((0)) FOR TopicCodeBed
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Deficits ADD  CONSTRAINT DF_Deficits_DetailCodeBed  DEFAULT ((0)) FOR DetailCodeBed
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Deficits ADD  CONSTRAINT DF_Deficits_CTopicCodeBed  DEFAULT ((0)) FOR CTopicCodeBed
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Deficits ADD  CONSTRAINT DF_Deficits_CTopicCode2Bed  DEFAULT ((0)) FOR CTopicCode2Bed
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Deficits ADD  CONSTRAINT DF_Deficits_CTopicCode3Bed  DEFAULT ((0)) FOR CTopicCode3Bed
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Deficits ADD  CONSTRAINT DF_Deficits_TopicCodeBes  DEFAULT ((0)) FOR TopicCodeBes
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Deficits ADD  CONSTRAINT DF_Deficits_DetailCodeBes  DEFAULT ((0)) FOR DetailCodeBes
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Deficits ADD  CONSTRAINT DF_Deficits_CTopicCodeBes  DEFAULT ((0)) FOR CTopicCodeBes
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Deficits ADD  CONSTRAINT DF_Deficits_CTopicCode2Bes  DEFAULT ((0)) FOR CTopicCode2Bes
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Deficits ADD  CONSTRAINT DF_Deficits_CTopicCode3Bes  DEFAULT ((0)) FOR CTopicCode3Bes
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Deficits ADD  CONSTRAINT DF_Deficits_TTMSActive  DEFAULT ((1)) FOR TTMSActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.EarthGroups ADD  DEFAULT (0) FOR EarthGrpID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ExcelImport ADD  CONSTRAINT DF_ExcelImport_KindValue  DEFAULT (0) FOR KindValue
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ExcelImport ADD  CONSTRAINT DF_ExcelImport_GroupID  DEFAULT (0) FOR GroupID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Fitful ADD  DEFAULT (0) FOR FitfulIDc
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Fitful ADD  DEFAULT ((0)) FOR TopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Fitful ADD  DEFAULT ((0)) FOR DetailCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Fitful ADD  CONSTRAINT DF_Fitful_Comment2  DEFAULT ('') FOR Comment2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Fitful ADD  CONSTRAINT DF_Fitful_FitfulNote  DEFAULT ('') FOR FitfulNote
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormItems ADD  CONSTRAINT DF_FormItems_CheckType  DEFAULT ((1)) FOR CheckType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormItems ADD  CONSTRAINT DF_FormItems_TopicCode  DEFAULT ((0)) FOR TopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormItems ADD  DEFAULT (1) FOR CheckState
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormItems ADD  DEFAULT (0) FOR ItemState
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormItems ADD  DEFAULT (0) FOR SeverableAmount
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormItems ADD  DEFAULT (0) FOR RelatedID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormItems ADD  DEFAULT (0) FOR ServerID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormItems ADD  DEFAULT (0) FOR YearID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormItems ADD  DEFAULT (0) FOR VAT
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormItems ADD  CONSTRAINT DF_FormItems_CTopicCode3  DEFAULT (0) FOR CTopicCode3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormItems ADD  CONSTRAINT DF_FormItems_ArzAmount  DEFAULT ((0)) FOR ArzAmount
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormItems ADD  CONSTRAINT DF_FormItems_AmountDelay  DEFAULT ((0)) FOR AmountDelay
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Forms ADD  CONSTRAINT DF_Forms_CustomerID1  DEFAULT ((0)) FOR CustomerID1
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Forms ADD  CONSTRAINT DF_Forms_CustomerID2  DEFAULT ((0)) FOR CustomerID2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Forms ADD  CONSTRAINT DF_Forms_TopicCode  DEFAULT ((0)) FOR TopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Forms ADD  CONSTRAINT DF_Forms_PayTypes  DEFAULT ((0)) FOR PayTypes
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Forms ADD  CONSTRAINT DF_Forms_TopicTypes  DEFAULT ((0)) FOR TopicTypes
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Forms ADD  CONSTRAINT DF_Forms_DocNo  DEFAULT ((0)) FOR DocNo
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Forms ADD  CONSTRAINT DF_Forms_DocDate  DEFAULT ('') FOR DocDate
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Forms ADD  CONSTRAINT DF__Forms__FormState__2B203F5D  DEFAULT ((0)) FOR FormState
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Forms ADD  CONSTRAINT DF__Forms__RelatedID__39A6963A  DEFAULT ((0)) FOR RelatedID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Forms ADD  CONSTRAINT DF__Forms__ServerID__3E6B4B57  DEFAULT ((0)) FOR ServerID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Forms ADD  CONSTRAINT DF__Forms__YearID__47F4B591  DEFAULT ((0)) FOR YearID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Forms ADD  CONSTRAINT DF__Forms__SellsMeth__6B3DF1CE  DEFAULT ((1)) FOR SellsMethod
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Forms ADD  CONSTRAINT DF__Forms__SellsEmpo__6D263A40  DEFAULT ((1)) FOR SellsEmporium
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Forms ADD  CONSTRAINT DF__Forms__CustomerI__0D13E6E5  DEFAULT ((0)) FOR CustomerID3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Forms ADD  CONSTRAINT DF__Forms__Transmitt__14CAE29D  DEFAULT ((0)) FOR Transmittal
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Forms ADD  CONSTRAINT DF_Forms_CTopicCode3  DEFAULT ((0)) FOR CTopicCode3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Forms ADD  CONSTRAINT DF__Forms__ArzAmount__62E4DC06  DEFAULT ((0)) FOR ArzAmount
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Forms ADD  CONSTRAINT DF_Forms_CostFactorsType  DEFAULT ((0)) FOR CostFactorsType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Forms ADD  CONSTRAINT DF_Forms_ArzAmountExchange  DEFAULT ((0)) FOR ArzAmountExchange
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Forms ADD  CONSTRAINT DF_Forms_ArzRateExchange  DEFAULT ((0)) FOR ArzRateExchange
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Forms ADD  DEFAULT ((0)) FOR CustomerID4
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Pay_T__4B380934  DEFAULT ((1)) FOR Pay_Topic_Active
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__MnuPl__247341CE  DEFAULT ((0)) FOR MnuPlaceID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__UserS__25676607  DEFAULT ((1)) FOR UserSecurityCheckActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__MaxRo__265B8A40  DEFAULT ((1000)) FOR MaxRowsPerForm
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__AutoS__274FAE79  DEFAULT ((2)) FOR AutoStateChange
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Seria__2843D2B2  DEFAULT ((0)) FOR SerialNoFrom
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Seria__2937F6EB  DEFAULT ((2147483647)) FOR SerialNoTo
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Chang__2A2C1B24  DEFAULT ((1)) FOR ChangeFormNo_DateActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__RowOn__7B0717E7  DEFAULT ((1)) FOR RowOnMnu
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Seria__32574CD1  DEFAULT ((0)) FOR SerialCheckActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__ShowL__7DAE7A68  DEFAULT ((1)) FOR ShowListOnMnu
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Check__440BE8B8  DEFAULT ((0)) FOR CheckFor_4Print
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Custo__61BC4730  DEFAULT ((0)) FOR Customer1Effect
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Custo__62B06B69  DEFAULT ((0)) FOR Customer2Effect
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Defau__16300F6F  DEFAULT ((0)) FOR DefaultCTopic2_Bed
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Defau__172433A8  DEFAULT ((0)) FOR DefaultCTopic2_Bes
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Defau__181857E1  DEFAULT ((0)) FOR DefaultCTopic_Bed
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Defau__190C7C1A  DEFAULT ((0)) FOR DefaultCTopic_Bes
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Defau__1A00A053  DEFAULT ((0)) FOR DefaultDetail_Bed
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Defau__1AF4C48C  DEFAULT ((0)) FOR DefaultDetail_Bes
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Defau__1BE8E8C5  DEFAULT ((0)) FOR DefaultTopic_Bed
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Defau__1CDD0CFE  DEFAULT ((0)) FOR DefaultTopic_Bes
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF_FormTypes_ConstTopicCode_Bes  DEFAULT ((0)) FOR ConstTopicCode_Bes
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__CustC__1FB979A9  DEFAULT ((1)) FOR CustCodeUse4Bed
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__CustC__20AD9DE2  DEFAULT ((1)) FOR CustCodeUse4Bes
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__MakeD__21A1C21B  DEFAULT ((0)) FOR MakeDoc
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF_FormTypes_CashWageTopicCodee  DEFAULT ((0)) FOR CashWageTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__ADDLe__2B5614DE  DEFAULT ((0)) FOR ADDLevelID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__EditL__2C4A3917  DEFAULT ((0)) FOR EditLevelID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Delet__2D3E5D50  DEFAULT ((0)) FOR DeleteLevelID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Chang__2E328189  DEFAULT ((0)) FOR ChangeStateLevelID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Print__2F26A5C2  DEFAULT ((0)) FOR PrintLevelID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__FormR__301AC9FB  DEFAULT ((0)) FOR FormRelatedLevelID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__AccCo__310EEE34  DEFAULT ((0)) FOR AccCodeLevelID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__RptAd__414555FD  DEFAULT ((0)) FOR RptAddAccountKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__RptAd__42397A36  DEFAULT ((0)) FOR RptAddUtilizeCustCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__RptAd__432D9E6F  DEFAULT ((0)) FOR RptAddWorkableCheckKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__RptDe__4421C2A8  DEFAULT ((0)) FOR RptDecAccountKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__RptDe__4515E6E1  DEFAULT ((0)) FOR RptDecUtilizeCustCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__RptDe__460A0B1A  DEFAULT ((0)) FOR RptDecWorkableCheckKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__CustA__46FE2F53  DEFAULT ((0)) FOR CustAddUtilizeCustCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__CustA__47F2538C  DEFAULT ((0)) FOR CustAddCondition
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__CustA__48E677C5  DEFAULT ((0)) FOR CustAddWorkableCheckKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__CustD__49DA9BFE  DEFAULT ((0)) FOR CustDecUtilizeCustCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__CustD__4ACEC037  DEFAULT ((0)) FOR CustDecCondition
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__CustD__4BC2E470  DEFAULT ((0)) FOR CustDecWorkableCheckKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__AccSt__0EE4BEB9  DEFAULT ((0)) FOR AccStateActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Maneg__10CD072B  DEFAULT ((0)) FOR ManegerNoteActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__TabSh__11C12B64  DEFAULT ((0)) FOR TabSheetActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Defau__12B54F9D  DEFAULT ((0)) FOR DefaultTopicInInset
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Defau__13A973D6  DEFAULT ((0)) FOR DefaultDetailInInsert
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Defau__149D980F  DEFAULT ((0)) FOR DefaultCTopicInInsert
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Defau__1591BC48  DEFAULT ((0)) FOR DefaultCTopic2InInsert
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__InfoU__13FE7991  DEFAULT ((0)) FOR InfoUse4Bed
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__InfoU__14F29DCA  DEFAULT ((0)) FOR InfoUse4Bes
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__State__7E7A181D  DEFAULT ((0)) FOR State0ChangeLevelID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__State__7F6E3C56  DEFAULT ((0)) FOR State1ChangeLevelID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__State__0062608F  DEFAULT ((0)) FOR State10ChangeLevelID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Maste__6D8F833D  DEFAULT ((1)) FOR MasterLoan
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Recal__1103A803  DEFAULT ((0)) FOR RecallFormDisk
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Topic__16DC7CEA  DEFAULT ((1)) FOR TopicCodeActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Detai__17D0A123  DEFAULT ((1)) FOR DetailCodeActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__CTopi__18C4C55C  DEFAULT ((1)) FOR CTopicCode1Active
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__CTopi__19B8E995  DEFAULT ((1)) FOR CTopicCode2Active
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Uphol__215A0B5D  DEFAULT ((0)) FOR UpholdActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Custo__49BD0272  DEFAULT ((0)) FOR CustomerDetailsDocType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__BedBe__4AB126AB  DEFAULT ((0)) FOR BedBesDetails
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__CalcC__554EB0AF  DEFAULT ((0)) FOR CalcCheckDateOfLookUpsAmount1
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Sells__6955A95C  DEFAULT ((0)) FOR SellsEmporiumActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Sells__6A49CD95  DEFAULT ((0)) FOR SellsMethodActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Dupli__70F6CB24  DEFAULT ((0)) FOR DuplicateFormNoActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Print__71EAEF5D  DEFAULT ((0)) FOR PrintAfterPost
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Custo__0EFC2F57  DEFAULT ((0)) FOR Customer3Active
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Resta__58B5F896  DEFAULT ((0)) FOR RestartFormNumberOnSellsEmporium
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Trans__15BF06D6  DEFAULT ((0)) FOR TransmittalActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Trans__16B32B0F  DEFAULT ((0)) FOR TransmittalLevelID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__DocTy__3F0C0083  DEFAULT ((8)) FOR DocTypeCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__VATAc__0F87D5EA  DEFAULT ((0)) FOR VATActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__DocPo__0E437000  DEFAULT ((-1)) FOR DocPostKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Defau__2FA463CB  DEFAULT ((0)) FOR DefaultCTopic3_Bed
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Defau__30988804  DEFAULT ((0)) FOR DefaultCTopic3_Bes
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__CTopi__318CAC3D  DEFAULT ((0)) FOR CTopicCode3Active
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Accou__3FDACB94  DEFAULT ((0)) FOR AccountNumberNewActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__CopyF__41C31406  DEFAULT ((0)) FOR CopyFormLevelID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF_FormTypes_CopyAccOnRecall  DEFAULT ((0)) FOR CopyAccOnRecall
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Day4E__2492A3D2  DEFAULT ((0)) FOR Day4Edit
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__How2D__61F0B7CD  DEFAULT ((0)) FOR How2DisplayArzTypeID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Loans__7B1236A9  DEFAULT ((0)) FOR LoansType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF__FormTypes__Guara__7C065AE2  DEFAULT ((0)) FOR GuaranteesType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF_FormTypes_AutoPrintOnItemAmount  DEFAULT ((0)) FOR AutoPrintOnItemAmount
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF_FormTypes_PriorityFormDate  DEFAULT ((0)) FOR PriorityFormDate
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF_FormTypes_CheckNumberActive  DEFAULT ((1)) FOR CheckNumberActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF_FormTypes_DefaultDateActive  DEFAULT ((0)) FOR DefaultDateActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  DEFAULT ((0)) FOR Customer3Effect
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF_FormTypes_NotSelcetCheckType1InRecall  DEFAULT ((0)) FOR NotSelcetCheckType1InRecall
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  DEFAULT ((0)) FOR ProjectIDActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF_FormTypes_FormStateDefault4Doc  DEFAULT ((0)) FOR FormStateDefault4Doc
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF_FormTypes_ConstTopicCode_ArzBed  DEFAULT ((0)) FOR ConstTopicCode_ArzBed
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF_FormTypes_ConstTopicCode_ArzBes  DEFAULT ((0)) FOR ConstTopicCode_ArzBes
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF_FormTypes_OtherSettings  DEFAULT ((0)) FOR OtherSettings
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF_FormTypes_FormDateBiggerCheckDate  DEFAULT ((0)) FOR FormDateBiggerCheckDate
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  DEFAULT ((0)) FOR Customer4Active
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF_FormTypes_SeparationDoc  DEFAULT ((0)) FOR SeparationDoc
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF_FormTypes_FilterYearIDActive  DEFAULT ((1)) FOR FilterYearIDActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.FormTypes ADD  CONSTRAINT DF_FormTypes_UseBudgetKind  DEFAULT ((0)) FOR UseBudgetKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.InsurancesItems ADD  DEFAULT (0) FOR VAT
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.LookUps ADD  DEFAULT (0) FOR acc_CTopicCode2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.LookUps ADD  DEFAULT (0) FOR acc_CTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.LookUps ADD  DEFAULT (0) FOR acc_DetailCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.LookUps ADD  CONSTRAINT DF_LookUps_acc_TopicCode  DEFAULT ((0)) FOR acc_TopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.LookUps ADD  DEFAULT (0) FOR StartCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.LookUps ADD  DEFAULT (0) FOR FinishCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.LookUps ADD  DEFAULT (0) FOR ChangeState
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.LookUps ADD  CONSTRAINT DF_LookUps_acc_CTopicCode3  DEFAULT (0) FOR acc_CTopicCode3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Manifesto ADD  DEFAULT (1) FOR SellsMethod
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Manifesto ADD  DEFAULT (1) FOR SellsEmporium
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Manifesto ADD  DEFAULT (0) FOR CustomerGrpIDFrom
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Manifesto ADD  DEFAULT (999999999) FOR CustomerGrpIDTo
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Manifesto ADD  DEFAULT (0) FOR CustIDFrom
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Manifesto ADD  DEFAULT (999999999) FOR CustIDTo
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Manifesto ADD  DEFAULT (0) FOR Statuss
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Manifesto ADD  CONSTRAINT DF_Manifesto_SellOrBuy  DEFAULT ((0)) FOR SellOrBuy
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ManifestoItems ADD  CONSTRAINT DF_ManifestoItems_DiscountPercent  DEFAULT ((0)) FOR DiscountPercent
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ManifestoItems ADD  CONSTRAINT DF_ManifestoItems_DiscountAmount  DEFAULT ((0)) FOR DiscountAmount
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ProcessProduce ADD  DEFAULT (0) FOR ProcessID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Proforma ADD  DEFAULT (0) FOR CustID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.PurchaseEffect ADD  CONSTRAINT DF_PurchaseEffect_Coefficient  DEFAULT (0) FOR Coefficient
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.PurchaseEffect ADD  CONSTRAINT DF_PurchaseEffect_AmountRate  DEFAULT (0) FOR AmountRate
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.PurchaseEffect ADD  CONSTRAINT DF_PurchaseEffect_StuffCode  DEFAULT ((0)) FOR StuffCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.PurchaseEffect ADD  CONSTRAINT DF_PurchaseEffect_CoefficientMin  DEFAULT ((-999999999)) FOR CoefficientMin
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.PurchaseEffect ADD  CONSTRAINT DF_PurchaseEffect_CoefficientMax  DEFAULT ((9999999999.)) FOR CoefficientMax
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  CONSTRAINT DF_ReciptItems_StuffSize  DEFAULT ('') FOR StuffSize
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  CONSTRAINT DF_ReciptItems_StuffDiameter  DEFAULT ('') FOR StuffDiameter
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  CONSTRAINT DF_ReciptItems_StuffAlloy  DEFAULT ('') FOR StuffAlloy
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  CONSTRAINT DF_ReciptItems_InputEntity  DEFAULT (0) FOR InputEntity
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  CONSTRAINT DF_ReciptItems_OutputEntity  DEFAULT (0) FOR OutputEntity
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  CONSTRAINT DF_ReciptItems_InputWeight  DEFAULT (0) FOR InputWeight
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  CONSTRAINT DF_ReciptItems_OutputWeight  DEFAULT (0) FOR OutputWeight
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  CONSTRAINT DF_ReciptItems_RequestedEntity  DEFAULT (0) FOR RequestedEntity
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  CONSTRAINT DF_ReciptItems_RequestedWeight  DEFAULT (0) FOR RequestedWeight
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  CONSTRAINT DF_ReciptItems_ControlCode  DEFAULT ((0)) FOR ControlCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  CONSTRAINT DF_ReciptItems_StuffGrade  DEFAULT (1) FOR StuffGrade
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  CONSTRAINT DF_ReciptItems_TotalInputPrice  DEFAULT (0) FOR TotalInputPrice
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  CONSTRAINT DF_ReciptItems_TotalOutputPrice  DEFAULT (0) FOR TotalOutputPrice
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  CONSTRAINT DF_ReciptItems_UnitSellPrice  DEFAULT (0) FOR UnitSellPrice
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  CONSTRAINT DF_ReciptItems_TotallSellPrice  DEFAULT (0) FOR TotallSellPrice
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  CONSTRAINT DF_ReciptItems_acc_TopicCode  DEFAULT ((0)) FOR acc_TopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  CONSTRAINT DF_ReciptItems_acc_DetailCode  DEFAULT (0) FOR acc_DetailCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  CONSTRAINT DF_ReciptItems_acc_CTopicCode  DEFAULT (0) FOR acc_CTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  CONSTRAINT DF_ReciptItems_Discount  DEFAULT (0) FOR Discount
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  CONSTRAINT DF_ReciptItems_acc_CTopicCode1  DEFAULT (0) FOR acc_CTopicCode2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  CONSTRAINT DF_ReciptItems_ProductCode  DEFAULT (0) FOR ProductCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  CONSTRAINT DF_ReciptItems_ProductModel  DEFAULT (0) FOR ProductModel
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  DEFAULT ('') FOR ItemDate
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  DEFAULT (0) FOR OrderState
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  CONSTRAINT DF_ReciptItems_WaterCo  DEFAULT (0) FOR WaterCo
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  DEFAULT (0) FOR Shift
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  CONSTRAINT DF_ReciptItems_DeficitValue1  DEFAULT ((0)) FOR DeficitValue
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  DEFAULT (0) FOR MachineWeight
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  DEFAULT (0) FOR TotalWeight
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  DEFAULT (0) FOR MachineFullWeight
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  DEFAULT (0) FOR SugarCo
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  DEFAULT (0) FOR SugarEntity
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  DEFAULT (0) FOR ServerID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  DEFAULT (0) FOR YearID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  CONSTRAINT DF_ReciptItems_acc_CTopicCode3  DEFAULT (0) FOR acc_CTopicCode3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  DEFAULT (0) FOR UnitCommission
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  CONSTRAINT DF_ReciptItems_DeficitValue2  DEFAULT ((0)) FOR DeficitValue2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  CONSTRAINT DF_ReciptItems_DeficitValue3  DEFAULT ((0)) FOR DeficitValue3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  CONSTRAINT DF_ReciptItems_Commission  DEFAULT ((0)) FOR Commission
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  CONSTRAINT DF_ReciptItems_CurrencyDiscounts  DEFAULT ((0)) FOR CurrencyDiscounts
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  CONSTRAINT DF_ReciptItems_ArzPortage  DEFAULT ((0)) FOR ArzPortage
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  CONSTRAINT DF_ReciptItems_IneffectiveInput  DEFAULT ((0)) FOR IneffectiveInput
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  CONSTRAINT DF_ReciptItems_CommissionPrice  DEFAULT ((0)) FOR CommissionPrice
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems ADD  CONSTRAINT DF_ReciptItems_DeficitValue4  DEFAULT ((0)) FOR DeficitValue4
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems_TempCalculate ADD  CONSTRAINT DF_ReciptItems_tempCalculate_TotalOutputPrice  DEFAULT ((0)) FOR TotalOutputPrice
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems_TempCalculate ADD  CONSTRAINT DF_ReciptItems_tempCalculate_TotalInputPrice  DEFAULT ((0)) FOR TotalInputPrice
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItems_TempCalculate ADD  CONSTRAINT DF_ReciptItems_tempCalculate_TotallSellPrice  DEFAULT ((0)) FOR TotallSellPrice
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItemsDetails ADD  CONSTRAINT DF_ReciptItemsDetails_ReciptType  DEFAULT ((0)) FOR ReciptType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItemsDetails ADD  CONSTRAINT DF_ReciptItemsDetails_StuffGrade  DEFAULT ((1)) FOR StuffGrade
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItemsRelease ADD  DEFAULT (0) FOR ReleaseKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItemsRelease ADD  CONSTRAINT DF_ReciptItemsRelease_EarthField  DEFAULT ((0)) FOR EarthField
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptItemsRelease ADD  DEFAULT (0) FOR Gate
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptOnFormsRange ADD  DEFAULT (0) FOR ServerID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptOnFormsRange ADD  DEFAULT (0) FOR YearID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptPurchaseEffect ADD  DEFAULT (0) FOR ServerID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptPurchaseEffect ADD  DEFAULT (0) FOR YearID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptPurchaseEffect ADD  DEFAULT (0) FOR ReciptID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptPurchaseEffect ADD  CONSTRAINT DF_ReciptPurchaseEffect_IsPrint  DEFAULT ((1)) FOR IsPrint
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Recipts ADD  CONSTRAINT DF_Recipts_StoreID  DEFAULT (0) FOR StoreID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Recipts ADD  CONSTRAINT DF_Recipts_ReciptNumber  DEFAULT (0) FOR ReciptNumber
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Recipts ADD  CONSTRAINT DF_Recipts_ReciptDate  DEFAULT ('') FOR ReciptDate
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Recipts ADD  CONSTRAINT DF_Recipts_PersonID1  DEFAULT (0) FOR PersonID1
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Recipts ADD  CONSTRAINT DF_Recipts_PersonID2  DEFAULT (0) FOR PersonID2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Recipts ADD  CONSTRAINT DF_Recipts_SecondType  DEFAULT (0) FOR SecondType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Recipts ADD  CONSTRAINT DF_Recipts_ServiceValue  DEFAULT (0) FOR ServiceValue
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Recipts ADD  CONSTRAINT DF_Recipts_ReciptValue  DEFAULT (0) FOR ReciptValue
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Recipts ADD  CONSTRAINT DF_Recipts_TotalValue  DEFAULT (0) FOR TotalValue
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Recipts ADD  CONSTRAINT DF_Recipts_AddDecValue  DEFAULT (0) FOR AddDecValue
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Recipts ADD  CONSTRAINT DF_Recipts_DocNo  DEFAULT (0) FOR DocNo
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Recipts ADD  CONSTRAINT DF_Recipts_DocDate  DEFAULT ('') FOR DocDate
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Recipts ADD  CONSTRAINT DF_Recipts_ReciptState  DEFAULT (0) FOR ReciptState
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Recipts ADD  CONSTRAINT DF_Recipts_ExpireDate  DEFAULT ('') FOR ExpireDate
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Recipts ADD  DEFAULT (0) FOR DebtControlActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Recipts ADD  DEFAULT (0) FOR StoreID2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Recipts ADD  DEFAULT (1) FOR SellsMethod
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Recipts ADD  DEFAULT (1) FOR SellsEmporium
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Recipts ADD  DEFAULT (361) FOR DeliveryID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Recipts ADD  DEFAULT (0) FOR PersonID2Bed
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Recipts ADD  DEFAULT (0) FOR RelatedID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Recipts ADD  DEFAULT (0) FOR ServerID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Recipts ADD  DEFAULT (0) FOR YearID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Recipts ADD  DEFAULT (0) FOR PersonID3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Recipts ADD  DEFAULT (0) FOR CostDownSave
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Recipts ADD  DEFAULT (0) FOR Transmittal
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Recipts ADD  CONSTRAINT DF_Recipts_MachineFullWeight  DEFAULT ((0)) FOR MachineFullWeight
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Recipts ADD  CONSTRAINT DF_Recipts_MachineWeight  DEFAULT ((0)) FOR MachineWeight
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Recipts ADD  CONSTRAINT DF_Recipts_PersonID4  DEFAULT ((0)) FOR PersonID4
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Recipts ADD  CONSTRAINT DF_Recipts_PortageBedbes  DEFAULT ((0)) FOR PortageBedbes
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Recipts ADD  CONSTRAINT DF_Recipts_PersonID5  DEFAULT ((0)) FOR PersonID5
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptsDeficits ADD  CONSTRAINT DF_ReciptsDeficits_DeficitAdd  DEFAULT (0) FOR DeficitAdd
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptsDeficits ADD  CONSTRAINT DF_ReciptsDeficits_DeficitDec  DEFAULT (0) FOR DeficitDec
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptsDeficits ADD  DEFAULT (0) FOR ServerID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptsDeficits ADD  DEFAULT (0) FOR YearID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptsDeficits ADD  DEFAULT (0) FOR ArzAmount
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptsDeficits ADD  CONSTRAINT DF_ReciptsDeficits_TopicCode  DEFAULT ((0)) FOR TopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptsDeficits ADD  CONSTRAINT DF_ReciptsDeficits_DetailCode  DEFAULT ((0)) FOR DetailCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptsDeficits ADD  CONSTRAINT DF_ReciptsDeficits_CTopicCode  DEFAULT ((0)) FOR CTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptsDeficits ADD  CONSTRAINT DF_ReciptsDeficits_CTopicCode2  DEFAULT ((0)) FOR CTopicCode2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptsDeficits ADD  CONSTRAINT DF_ReciptsDeficits_CTopicCode3  DEFAULT ((0)) FOR CTopicCode3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptsPayments ADD  CONSTRAINT DF_ReciptsPayments_PaymentKind  DEFAULT ((9)) FOR PaymentKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptsPayments ADD  CONSTRAINT DF_ReciptsPayments_DocNo  DEFAULT ((0)) FOR DocNo
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptsRegulates ADD  DEFAULT ('') FOR RegDate
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptsRegulates ADD  DEFAULT (0) FOR RegPrice
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptsRegulates ADD  DEFAULT (0) FOR RegDocNo
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptsRegulates ADD  DEFAULT ('') FOR RegDocDate
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptsRegulates ADD  DEFAULT (0) FOR RegMasterRowID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptsRegulates ADD  DEFAULT (0) FOR CustID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptsRegulates ADD  CONSTRAINT DF_ReciptsRegulates_acc_TopicCode  DEFAULT ((0)) FOR acc_TopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptsRegulates ADD  CONSTRAINT DF_ReciptsRegulates_acc_DetailCode  DEFAULT ((0)) FOR acc_DetailCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptsRegulation ADD  DEFAULT (0) FOR CustID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptsRegulationItems ADD  DEFAULT (0) FOR RegState
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptsTrades ADD  CONSTRAINT DF_ReciptsTrades_HowRecInfo  DEFAULT ((1066)) FOR HowRecInfo
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptsTrades ADD  CONSTRAINT DF_ReciptsTrades_HowToDoDeal  DEFAULT ((26)) FOR HowToDoDeal
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptsTrades ADD  CONSTRAINT DF_ReciptsTrades_StockDate  DEFAULT ('') FOR StockDate
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptsTrades ADD  CONSTRAINT DF_ReciptsTrades_RingsSupply  DEFAULT ((20)) FOR RingsSupply
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  CONSTRAINT DF_ReciptTypes_EffectType  DEFAULT (0) FOR EffectType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  CONSTRAINT DF_ReciptTypes_UseType  DEFAULT (0) FOR UseType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  CONSTRAINT DF_ReciptTypes_RecallType  DEFAULT (0) FOR RecallType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  CONSTRAINT DF_ReciptTypes_MakeDoc  DEFAULT (0) FOR MakeDoc
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  CONSTRAINT DF_ReciptTypes_PerformFileName  DEFAULT ('') FOR PerformFileName
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  CONSTRAINT DF_ReciptTypes_ReportFileName  DEFAULT ('') FOR ReportFileName
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  CONSTRAINT DF_ReciptTypes_StoreActive  DEFAULT (1) FOR StoreActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  CONSTRAINT DF_ReciptTypes_RestartFormNumberOnStore  DEFAULT (2) FOR RestartFormNumberOnStore
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  CONSTRAINT DF_ReciptTypes_Person1Active  DEFAULT (1) FOR Person1Active
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  CONSTRAINT DF_ReciptTypes_Person2Active  DEFAULT (1) FOR Person2Active
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  CONSTRAINT DF_ReciptTypes_Person1Groups  DEFAULT ('') FOR Person1Groups
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  CONSTRAINT DF_ReciptTypes_Person1Groups1  DEFAULT ('') FOR Person2Groups
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  CONSTRAINT DF_ReciptTypes_Section1Visible  DEFAULT (1) FOR Section1Visible
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  CONSTRAINT DF_ReciptTypes_Section2Visible  DEFAULT (1) FOR Section2Visible
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  CONSTRAINT DF_ReciptTypes_SecondTypeActive  DEFAULT (1) FOR SecondTypeActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  CONSTRAINT DF_ReciptTypes_BedType  DEFAULT (0) FOR BedType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  CONSTRAINT DF_ReciptTypes_BesType  DEFAULT (0) FOR BesType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  CONSTRAINT DF_ReciptTypes_DetailNoteActive  DEFAULT (1) FOR DetailNoteActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  CONSTRAINT DF_ReciptTypes_ControlEntityActive  DEFAULT (1) FOR ControlEntityActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  CONSTRAINT DF_ReciptTypes_ExpireDateActive  DEFAULT (1) FOR ExpireDateActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  CONSTRAINT DF_ReciptTypes_HelpID  DEFAULT (0) FOR HelpID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  CONSTRAINT DF_ReciptTypes_TemplateCode  DEFAULT (0) FOR TemplateCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  CONSTRAINT DF_ReciptTypes_UseUnitCase  DEFAULT (0) FOR UseUnitCase
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  CONSTRAINT DF_ReciptTypes1_UserSecurityCheckActive  DEFAULT ((0)) FOR UserSecurityCheckActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  CONSTRAINT DF_ReciptTypes_UseStoreIDOnRecall  DEFAULT (1) FOR UseStoreIDOnRecall
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  CONSTRAINT DF_ReciptTypes_DeficitsActive  DEFAULT (1) FOR DeficitsActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  CONSTRAINT DF_ReciptTypes_UnitPriceReadOnly  DEFAULT (0) FOR UnitPriceReadOnly
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  CONSTRAINT DF_ReciptTypes_MaxRowsPerForm  DEFAULT (0) FOR MaxRowsPerForm
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  CONSTRAINT DF_ReciptTypes_BudgetRecalType  DEFAULT (0) FOR BudgetRecalKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  CONSTRAINT DF_ReciptTypes_CorrelateReciptType  DEFAULT (0) FOR CorrelateReciptType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  CONSTRAINT DF_ReciptTypes_CorrelateKind  DEFAULT (0) FOR CorrelateKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (1) FOR EditReciptNumberActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR PersonID1OnDetailActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (3) FOR NoteShow
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (2) FOR AutoStateChange
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (2) FOR MaxCreditChecked
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR ControlEntityKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR MnuPlaceID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (2) FOR DetailDateActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR ConversionCoSerial
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR ProcedureActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR FormKindSerial
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR Correlate4EditActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (2) FOR AutoCorrelate
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR EffectOnCustomer
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR DefaultCTopic2_Bed
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR DefaultCTopic2_Bes
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR DefaultCTopic_Bed
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR DefaultCTopic_Bes
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR DefaultDetail_Bed
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR DefaultDetail_Bes
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR DefaultTopic_Bed
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR DefaultTopic_Bes
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  CONSTRAINT DF_ReciptTypes1_ConstTopicCode_Bes  DEFAULT ((0)) FOR ConstTopicCode_Bes
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR RowOnMnu
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR ShowSelectStore
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (1) FOR CustCodeUse4Bed
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (1) FOR CustCodeUse4Bes
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR AccountKind4Deficits
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR Amani_StuffActiveInDoc
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR ActiveDocOnCommission
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (1) FOR ShowListOnMnu
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR AccCodingShow
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR Store2Active
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR ADDLevelID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR EditLevelID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR DeleteLevelID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR ChangeStateLevelID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR PrintLevelID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR FormRelatedLevelID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR AccCodeLevelID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  CONSTRAINT DF_ReciptTypes1_Dec_TopicCode  DEFAULT ((0)) FOR Dec_TopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR Dec_DetailCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR Dec_CTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR Dec_CTopicCode2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR EffectOnCustomer2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR UseableCustomer
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR NonZeroControl
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR MachineActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (1) FOR EarthActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (1) FOR WetActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (1) FOR SugarActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (1) FOR DuplicateReciptNumber
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR DiscountEntryKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR EffectOnNotRecall
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR DeficitValueEditing
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR AidNumRestOnSecType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR ArzActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR SellEffect
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR StandardRateActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR NonZeroActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR ShowEntityOnSearch
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR InsertEntity
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR PriceReadOnly
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR UnicCodeCheck
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR DuplicateReciptNoActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR UsePerson1OnRecall
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR ExtraCodingAddStuffName
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR State0ChangeLevelID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR State1ChangeLevelID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR State2ChangeLevelID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR State3ChangeLevelID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR FormItemKindSerial
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR RequestedChange
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR DeficitsLevelID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR MaxControlCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT ('مشتري') FOR Person2DetailCaption
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (1) FOR AidInfoControlDate
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (1) FOR ControlCodeUnic
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR UseOtherActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  CONSTRAINT DF_ReciptTypes1_Deficate_TopicCode  DEFAULT ((0)) FOR Deficate_TopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR Deficate_MakeDocKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR ChangeAidReciptDate
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR TozinActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  CONSTRAINT DF_ReciptTypes1_ShowNotEntityOnSearch  DEFAULT ((0)) FOR ShowNotEntityOnSearch
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR SearchReciptNumber
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR AcceptRollbackEntity
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR PrintAfterPost
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR PriorityReciptDate
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (1) FOR ShowEntityWeightOnList
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR ShowKeepPlace
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR ReciptNumberKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR CorrelateReciptNumberKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR AllotmentActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR CorrelateReciptsDeficits
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (1) FOR RepelInsertRecipt
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (1) FOR CorrelateStateChange
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR Deficate_MakeDocApart
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR VATActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (3) FOR VATCo
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (2) FOR VATRound
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR MasirActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR DeliveryActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR SellsEmporiumActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR SellsMethodActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR Person3Active
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (1) FOR CreditChecked1
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (1) FOR CreditChecked2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (1) FOR CreditChecked3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (1) FOR CreditChecked4
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (1) FOR CreditChecked5
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (2) FOR CustCheckDateOffset
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (1) FOR CreditChkCurrentForm
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR ReciptNumberEventKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR CostDownSaveActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR WaterCoOrDeficitValueEdit
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT ('استاندارد') FOR StandardCaption
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR StandardCoefficient
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT ('01/01/01') FOR StandardDate
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR PawsFieldsActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR RecallEditKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (1) FOR DeficitValueUnitSellPrice2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR WastesFunctions
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (1) FOR Commendation
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR Person3ControlWeightCustomer
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR TransmittalActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR TransmittalLevelID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR CustomerRateAct
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR AutoCorrelateCo
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR CartonKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (7) FOR DocTypeCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR ActiveReMainPersonRecipt
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR ActiveTimeToStr
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT ((-1)) FOR MinRowsPerForm
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR ReciptIDEventKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR WaterCoEffect
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR SumOnStuffCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR BarCodeKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (1) FOR StepCorrelate
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (1) FOR InsertAidOnRecall
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR SellPriceCheck
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR ControlEntityCol
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR IncreasingInventory
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR IncreasingInventoryStore
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (1) FOR TopicCodeActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (1) FOR DetailCodeActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (1) FOR CTopicCode1Active
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (1) FOR CTopicCode2Active
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT ((-2)) FOR RoundCount
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR RecallReciptState1
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT ('مدل') FOR ProcedureCaption
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR EarthFieldGateActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT ((-1)) FOR DocPostKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR ReciptsRowActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR DefaultCTopic3_Bed
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR DefaultCTopic3_Bes
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR StartEndHourActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR CTopicCode3Active
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR ConversionCoSerialFormula
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR CopyFormLevelID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR BuyEffect
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR CommissionActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR FilterYearIDActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR Day4Edit
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR ReciptBe4PostCtrlEntAct
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR ChekingTaxPrint
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR ConfirmingActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR ChekingPrintEntity
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes1 ADD  DEFAULT (0) FOR ChangePriceManifesto
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  DEFAULT ((1)) FOR CorrelateCoReciptNumber_Kind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  CONSTRAINT DF_ReciptTypes2_AutoInsertPostInsert  DEFAULT ((0)) FOR AutoInsertPostInsert
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  CONSTRAINT DF_ReciptTypes2_ControlPrintingByDate  DEFAULT ((0)) FOR ControlPrintingByDate
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  CONSTRAINT DF_ReciptTypes2_DisplayStatusBar  DEFAULT ((3)) FOR DisplayStatusBar
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  CONSTRAINT DF_ReciptTypes2_PrimaryReciptType  DEFAULT ((0)) FOR PrimaryReciptType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  CONSTRAINT DF_ReciptTypes2_CustomerGrpID4Add2Customers1  DEFAULT ((0)) FOR CustomerGrpID4Add2Customers1
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  CONSTRAINT DF_ReciptTypes2_CustomerGrpID4Add2Customers2  DEFAULT ((0)) FOR CustomerGrpID4Add2Customers2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  CONSTRAINT DF_ReciptTypes2_RecuestActive  DEFAULT ((0)) FOR RecuestActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  CONSTRAINT DF_ReciptTypes2_PaymentsActive  DEFAULT ((1)) FOR PaymentsActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  CONSTRAINT DF_ReciptTypes2_CalculatedEntityOrWeight  DEFAULT ((0)) FOR CalculatedEntityOrWeight
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  CONSTRAINT DF_ReciptTypes2_AmountInAccountForm  DEFAULT ((0)) FOR AmountInAccountForm
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  CONSTRAINT DF_ReciptTypes2_StandardConsumptionActive  DEFAULT ((0)) FOR StandardConsumptionActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  CONSTRAINT DF_ReciptTypes2_AidNumberUnic  DEFAULT ((0)) FOR AidNumberUnic
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  CONSTRAINT DF_ReciptTypes2_AlloyDiameterSizeDividedByAMillion  DEFAULT ((0)) FOR AlloyDiameterSizeDividedByAMillion
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  CONSTRAINT DF_ReciptTypes2_MinAmountOfGiftItems  DEFAULT ((0)) FOR MinAmountOfGiftItems
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  CONSTRAINT DF_ReciptTypes2_ActiveGiftItems  DEFAULT ((0)) FOR ActiveGiftItems
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  CONSTRAINT DF_ReciptTypes2_DefaultDateActive  DEFAULT ((0)) FOR DefaultDateActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  CONSTRAINT DF_ReciptTypes2_CustomersNoDiscount  DEFAULT ((0)) FOR CustomersNoDiscount
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  CONSTRAINT DF_ReciptTypes2_CustomerKindPayments  DEFAULT ('1,2') FOR CustomerKindPayments
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  CONSTRAINT DF_ReciptTypes2_Person4Active  DEFAULT ((0)) FOR Person4Active
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  DEFAULT ((0)) FOR EffectOnCustomer3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  DEFAULT ((0)) FOR EffectOnCustomer4
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  CONSTRAINT DF_ReciptTypes2_RecallTypeOption  DEFAULT ((6)) FOR RecallTypeOption
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  CONSTRAINT DF_ReciptTypes2_CheckParentReciptID  DEFAULT ((0)) FOR CheckParentReciptID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  CONSTRAINT DF_ReciptTypes2_CalcCostStorageCaption  DEFAULT ('هزينه انبارداري محاسبه شود') FOR CalcCostStorageCaption
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  CONSTRAINT DF_ReciptTypes2_FormStateDefault4Doc  DEFAULT ((0)) FOR FormStateDefault4Doc
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  CONSTRAINT DF_ReciptTypes2_CustomerGrpID4Add2Customers3  DEFAULT ((0)) FOR CustomerGrpID4Add2Customers3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  CONSTRAINT DF_ReciptTypes2_MachineNoCaption  DEFAULT ('شماره ماشين') FOR MachineNoCaption
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  CONSTRAINT DF_ReciptTypes2_MachineNameCaption  DEFAULT ('نام راننده') FOR MachineNameCaption
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  CONSTRAINT DF_ReciptTypes2_Settings  DEFAULT ((0)) FOR Settings
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  CONSTRAINT DF_ReciptTypes2_IneffectiveInputChk  DEFAULT ((0)) FOR IneffectiveInputChk
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  CONSTRAINT DF_ReciptTypes2_ExcelRecallMaxAmount  DEFAULT ((0)) FOR ExcelRecallMaxAmount
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  CONSTRAINT DF_ReciptTypes2_InsuranceValue  DEFAULT ((0)) FOR InsuranceValue
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  CONSTRAINT DF_ReciptTypes2_ReciptsSplit4PersonIDLevelID  DEFAULT ((0)) FOR ReciptsSplit4PersonIDLevelID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  CONSTRAINT DF_ReciptTypes2_ReciptStatecreatedForm  DEFAULT ((0)) FOR ReciptStatecreatedForm
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  CONSTRAINT DF_ReciptTypes2_ReciptStateSmallerThan  DEFAULT ((3)) FOR ReciptStateSmallerThan
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  DEFAULT ((0)) FOR EffectOnCustomerReg
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  CONSTRAINT DF_ReciptTypes2_FillPersonID1From  DEFAULT ((0)) FOR FillPersonID1From
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  DEFAULT ((0)) FOR CorrelateReciptState
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  CONSTRAINT DF_ReciptTypes2_Person5Active  DEFAULT ((0)) FOR Person5Active
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  DEFAULT ((1.00)) FOR PriceCo
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypes2 ADD  CONSTRAINT DF_ReciptTypes2_StereotypyActive  DEFAULT ((0)) FOR StereotypyActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypesAccCode ADD  CONSTRAINT DF_ReciptTypesAccCode_TopicCode  DEFAULT ((0)) FOR TopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypesAccCode ADD  CONSTRAINT DF_ReciptTypesAccCode_DetailCode  DEFAULT ((0)) FOR DetailCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypesAccCode ADD  CONSTRAINT DF_ReciptTypesAccCode_CTopicCode  DEFAULT ((0)) FOR CTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypesAccCode ADD  CONSTRAINT DF_ReciptTypesAccCode_CTopicCode2  DEFAULT ((0)) FOR CTopicCode2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ReciptTypesAccCode ADD  CONSTRAINT DF_ReciptTypesAccCode_CTopicCode3  DEFAULT ((0)) FOR CTopicCode3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.RemainsEarly ADD  CONSTRAINT DF_RemainsEarly_SellsEmporium  DEFAULT (1) FOR SellsEmporium
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.RemainsEarly ADD  CONSTRAINT DF_RemainsEarly_ArzRemain  DEFAULT ((0)) FOR ArzRemain
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.RptChecks ADD  DEFAULT (0) FOR LeftDateString
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.RptChecks ADD  DEFAULT (0) FOR TopDateString
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.RptChecks ADD  DEFAULT (0) FOR WidthDateString
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.RptChecks ADD  DEFAULT (0) FOR LeftAmountArz
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.RptChecks ADD  DEFAULT (0) FOR TopAmountArz
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.RptChecks ADD  DEFAULT (0) FOR WidthAmountArz
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.RptChecks ADD  DEFAULT ((0)) FOR LeftNationalID1
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.RptChecks ADD  DEFAULT ((0)) FOR TopNationalID1
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.RptChecks ADD  DEFAULT ((0)) FOR WidthNationalID1
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.RptChecks ADD  DEFAULT ((0)) FOR LeftNationalID2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.RptChecks ADD  DEFAULT ((0)) FOR TopNationalID2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.RptChecks ADD  DEFAULT ((0)) FOR WidthNationalID2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.RptChecks ADD  DEFAULT ((0)) FOR LeftValueNumBox
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.RptChecks ADD  DEFAULT ((0)) FOR TopValueNumBox
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.RptChecks ADD  DEFAULT ((0)) FOR WidthValueNumBox
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.RptChecks ADD  DEFAULT ((0)) FOR LeftCheckDateBox
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.RptChecks ADD  DEFAULT ((0)) FOR TopCheckDateBox
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.RptChecks ADD  DEFAULT ((0)) FOR WidthCheckDateBox
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.RptChecks ADD  DEFAULT ((0)) FOR LeftLineCorrosion
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.RptChecks ADD  DEFAULT ((0)) FOR TopLineCorrosion
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.RptChecks ADD  DEFAULT ((0)) FOR WidthLineCorrosion
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.RptChecks ADD  DEFAULT ((0)) FOR LeftHunterCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.RptChecks ADD  DEFAULT ((0)) FOR TopHunterCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.RptChecks ADD  DEFAULT ((0)) FOR WidthHunterCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ScheduleInfo ADD  CONSTRAINT DF_ScheduleInfo_ProcInFoId  DEFAULT (0) FOR ProcInFoId
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ScheduleInfo ADD  CONSTRAINT DF_ScheduleInfo_MasterInfoID  DEFAULT (0) FOR MasterInfoID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ScheduleProcItems ADD  CONSTRAINT DF_ScheduleProcItems_ProcCode  DEFAULT (0) FOR ProcCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ScheduleProcItems ADD  CONSTRAINT DF_ScheduleProcItems_DeliveryDate  DEFAULT (0) FOR DeliveryDate
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ScheduleProcItems ADD  CONSTRAINT DF_ScheduleProcItems_Amount  DEFAULT (0) FOR Amount
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ScheduleProcItems ADD  CONSTRAINT DF_ScheduleProcItems_ReciptItemId  DEFAULT (0) FOR ReciptItemId
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ScheduleProcItems ADD  CONSTRAINT DF_ScheduleProcItems_ProductModel  DEFAULT (0) FOR ProductModel
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ScheduleProCode ADD  CONSTRAINT DF_ScheduleProCode_ProcWordLoad  DEFAULT (0) FOR ProcWordLoad
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ScheduleTimeTabel ADD  CONSTRAINT DF_ScheduleTimeTabel_KIND  DEFAULT (0) FOR KIND
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ScheduleTimeTabel ADD  CONSTRAINT DF_ScheduleTimeTabel_ProcCode  DEFAULT (0) FOR ProcCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ScheduleTimeTabel ADD  CONSTRAINT DF_ScheduleTimeTabel_TrnsFormID  DEFAULT (0) FOR TrnsFormID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ScheduleType ADD  CONSTRAINT DF_ScheduleType_Workload_Normal  DEFAULT (0) FOR Workload_Normal
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ScheduleType ADD  CONSTRAINT DF_ScheduleType_Workload_Time  DEFAULT (0) FOR Workload_Time
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ScheduleType ADD  CONSTRAINT DF_ScheduleType_Workload_Amountd  DEFAULT (0) FOR Workload_Amountd
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ScheduleType ADD  CONSTRAINT DF_ScheduleType_StandardRate  DEFAULT (0) FOR StandardRate
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ScheduleType ADD  CONSTRAINT DF_ScheduleType_Note  DEFAULT (0) FOR Note
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ScheduleType ADD  CONSTRAINT DF_ScheduleType_AccRelatedActive  DEFAULT (0) FOR AccRelatedActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ScheduleType ADD  CONSTRAINT DF_ScheduleType_KindActive  DEFAULT (0) FOR KindActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ScheduleType ADD  CONSTRAINT DF_ScheduleType_Proc_Line_Active  DEFAULT (0) FOR Proc_Line_Active
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ScheduleType ADD  CONSTRAINT DF_ScheduleType_MasterNo  DEFAULT (0) FOR MasterNo
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ScheduleType ADD  CONSTRAINT DF_ScheduleType_ProcRelatedActive  DEFAULT (0) FOR ProcRelatedActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ScheduleWorksItems ADD  CONSTRAINT DF_ScheduleWorksItems_ProductModel  DEFAULT (0) FOR ProductModel
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ScheduleWorksItems ADD  CONSTRAINT DF_ScheduleWorksItems_ProcStuffCoding  DEFAULT ((0)) FOR ProcStuffCoding
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ScheduleWorksItems ADD  CONSTRAINT DF_ScheduleWorksItems_OrderId  DEFAULT (0) FOR OrderId
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.ScheduleWorksItems ADD  CONSTRAINT DF_ScheduleWorksItems_TrancFormId  DEFAULT (0) FOR TrancFormId
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.SellsEmporiums ADD  CONSTRAINT DF_SellsEmporiums_ServerID  DEFAULT ((0)) FOR ServerID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.SellsEmporiums ADD  CONSTRAINT DF_SellsEmporiums_TopicCode  DEFAULT ((0)) FOR TopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.SellsEmporiums ADD  CONSTRAINT DF_SellsEmporiums_DetailCode  DEFAULT ((0)) FOR DetailCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.SellsEmporiums ADD  CONSTRAINT DF_SellsEmporiums_CTopicCode  DEFAULT ((0)) FOR CTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.SellsEmporiums ADD  CONSTRAINT DF_SellsEmporiums_CTopicCode2  DEFAULT ((0)) FOR CTopicCode2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.SellsEmporiums ADD  CONSTRAINT DF_SellsEmporiums_CTopicCode3  DEFAULT ((0)) FOR CTopicCode3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.SellsMethods ADD  CONSTRAINT DF_SellsMethods_VajhTypes  DEFAULT ('1;2;3') FOR VajhTypes
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.SellsTypes ADD  CONSTRAINT DF_SellsTypes_IsElective  DEFAULT ((0)) FOR IsElective
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Severable ADD  DEFAULT (0) FOR FormID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Severable ADD  DEFAULT (0) FOR ServerID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Severable ADD  DEFAULT (0) FOR YearID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Severable ADD  DEFAULT (0) FOR DeficitAmount
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Severable ADD  DEFAULT ((0)) FOR ArzAmount
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Severable ADD  CONSTRAINT DF_Severable_CTopicCode3  DEFAULT ((0)) FOR CTopicCode3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Stores ADD  CONSTRAINT DF_Stores_c_accTopicCode  DEFAULT ((0)) FOR c_accTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Stores ADD  CONSTRAINT DF_Stores_c_accDetailCode  DEFAULT (0) FOR c_accDetailCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Stores ADD  CONSTRAINT DF_Stores_c_accCTopicCode  DEFAULT (0) FOR c_accCTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Stores ADD  CONSTRAINT DF_Stores_c_accCTopicCode1  DEFAULT (0) FOR c_accCTopicCode2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Stores ADD  DEFAULT (0) FOR CorrelateStore
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Stores ADD  DEFAULT (0) FOR StoreKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Stores ADD  DEFAULT (1) FOR HasDeficit
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Stores ADD  DEFAULT (0) FOR Entity
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Stores ADD  DEFAULT (0) FOR Weight
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Stores ADD  CONSTRAINT DF_Stores_accTopicCodeCostDownSave  DEFAULT ((0)) FOR accTopicCodeCostDownSave
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Stores ADD  DEFAULT (0) FOR EntityDisplayType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Stores ADD  CONSTRAINT DF_Stores_CTopicCode3  DEFAULT ((0)) FOR CTopicCode3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Stores ADD  CONSTRAINT DF_Stores_TypeOfSale  DEFAULT ((0)) FOR TypeOfSale
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Stores ADD  CONSTRAINT DF_Stores_Storlength  DEFAULT ((0)) FOR Storlength
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Stores ADD  CONSTRAINT DF_Stores_StorWidth  DEFAULT ((0)) FOR StorWidth
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Stores ADD  CONSTRAINT DF_Stores_StorHeight  DEFAULT ((0)) FOR StorHeight
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.StuffCoding ADD  CONSTRAINT DF_StuffCoding_BuyPrice  DEFAULT ((0)) FOR BuyPrice
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.StuffCoding ADD  CONSTRAINT DF_StuffCoding_StandardRate  DEFAULT ((0)) FOR StandardRate
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.StuffCoding ADD  CONSTRAINT DF_StuffCoding_SellPrice1  DEFAULT ((0)) FOR SellPrice1
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.StuffCoding ADD  CONSTRAINT DF_StuffCoding_SellPrice2  DEFAULT ((0)) FOR SellPrice2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.StuffCoding ADD  CONSTRAINT DF_StuffCoding_SellPrice3  DEFAULT ((0)) FOR SellPrice3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.StuffCoding ADD  CONSTRAINT DF_StuffCoding_SellPrice4  DEFAULT ((0)) FOR SellPrice4
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.StuffCoding ADD  CONSTRAINT DF_StuffCoding_OperatorID  DEFAULT ((0)) FOR OperatorID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.StuffCoding ADD  CONSTRAINT DF_StuffCoding_State  DEFAULT ((0)) FOR State
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.StuffCoding ADD  CONSTRAINT DF_StuffCoding_s_s  DEFAULT ((0)) FOR s_s
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.StuffCoding ADD  CONSTRAINT DF_StuffCoding_EntityWeight  DEFAULT ((1)) FOR Carton
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.StuffCoding ADD  CONSTRAINT DF__Stuffcodi__UnitP__2CBE6F0C  DEFAULT ((0)) FOR UnitPriceUseKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.StuffCoding ADD  CONSTRAINT DF__Stuffcodi__Contr__37B0FECB  DEFAULT ((0)) FOR Control_orderPoint_Entity
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.StuffCoding ADD  CONSTRAINT DF__Stuffcodi__Owner__3A785CDD  DEFAULT ((0)) FOR OwnerShipKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.StuffCoding ADD  CONSTRAINT DF_Stuffcoding_acc_IncomTopicCode  DEFAULT ((0)) FOR Acc_InComeTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.StuffCoding ADD  CONSTRAINT DF_Stuffcoding_Acc_BidTopicCode  DEFAULT ((0)) FOR Acc_BidTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.StuffCoding ADD  CONSTRAINT DF_Stuffcoding_Acc_CommissionTopicCode  DEFAULT ((0)) FOR Acc_CommissionTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.StuffCoding ADD  CONSTRAINT DF__Stuffcodi__Commi__3E48EDC1  DEFAULT ((0)) FOR Commission
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.StuffCoding ADD  CONSTRAINT DF__Stuffcodi__Stuff__3D74C519  DEFAULT ((0)) FOR StuffpurePercent
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.StuffCoding ADD  CONSTRAINT DF__Stuffcodi__Stuff__3E68E952  DEFAULT ((0)) FOR StuffpublicPercent
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.StuffCoding ADD  CONSTRAINT DF__StuffCodi__Chang__1123A394  DEFAULT ((0)) FOR ChangeState
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.StuffCoding ADD  CONSTRAINT DF__StuffCodi__VatEx__1CB87F2D  DEFAULT ((0)) FOR VatExempt
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.StuffCoding ADD  CONSTRAINT DF_StuffCoding_acc_CTopicCode3  DEFAULT ((0)) FOR acc_CTopicCode3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.StuffCoding ADD  DEFAULT ((0)) FOR BlockOutput
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.StuffCodingSpecial ADD  DEFAULT ('') FOR StuffSize
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.StuffCodingSpecial ADD  DEFAULT ('') FOR StuffDiameter
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.StuffCodingSpecial ADD  DEFAULT ('') FOR StuffAlloy
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.StuffCodingSpecial ADD  CONSTRAINT DF_StuffCodingSpecial_Minimum  DEFAULT ((0)) FOR Minimum
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.StuffGroups ADD  CONSTRAINT DF_StuffGroups_acc_IncomTopicCode  DEFAULT ((0)) FOR acc_IncomeTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.StuffGroups ADD  CONSTRAINT DF_StuffGroups_acc_BidTopicCode  DEFAULT ((0)) FOR acc_BidTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.StuffGroups ADD  CONSTRAINT DF_StuffGroups_acc_CTopicCode  DEFAULT ((0)) FOR acc_CTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.StuffGroups ADD  CONSTRAINT DF_StuffGroups_acc_DetailCode  DEFAULT ((0)) FOR acc_DetailCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.StuffGroups ADD  CONSTRAINT DF_StuffGroups_acc_CTopicCode1  DEFAULT ((0)) FOR acc_CTopicCode2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.StuffGroups ADD  CONSTRAINT DF_StuffGroups_acc_AFootInComingTopicCode  DEFAULT ((0)) FOR acc_AFootInComingTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.StuffGroups ADD  CONSTRAINT DF__StuffGrou__Level__63C5568A  DEFAULT ((0)) FOR LevelID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.StuffGroups ADD  CONSTRAINT DF__StuffGrou__UperG__64B97AC3  DEFAULT ((0)) FOR UperGroupId
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.StuffGroups ADD  CONSTRAINT DF__StuffGrou__Group__322BCABB  DEFAULT ((0)) FOR GroupType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.StuffGroups ADD  CONSTRAINT DF_StuffGroups_acc_CTopicCode3  DEFAULT ((0)) FOR acc_CTopicCode3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.StuffGroups ADD  CONSTRAINT DF_StuffGroups_StuffCodingKind  DEFAULT ((0)) FOR StuffCodingKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.StuffGroups ADD  DEFAULT ((0)) FOR VatExemptOn
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.StuffGroups ADD  CONSTRAINT DF_StuffGroups_acc_SarFaslType  DEFAULT ((5)) FOR SarFaslType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.StuffGroups ADD  DEFAULT ((12)) FOR KalaType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Tariffs ADD  DEFAULT ((0)) FOR CoilSheet
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Tozin ADD  CONSTRAINT DF_Tozins_TozinNumber  DEFAULT (0) FOR TozinNumber
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Tozin ADD  CONSTRAINT DF_Tozins_TozinDate  DEFAULT ('') FOR TozinDate
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Tozin ADD  CONSTRAINT DF_Tozins_StoreID  DEFAULT (0) FOR StoreID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Tozin ADD  CONSTRAINT DF__Tozins_MachineWeight  DEFAULT (0) FOR MachineWeight
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Tozin ADD  CONSTRAINT DF__Tozins_MachineFullWeight  DEFAULT (0) FOR MachineFullWeight
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Tozin ADD  DEFAULT (0) FOR ReciptNumber
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Tozin ADD  DEFAULT (0) FOR MoistureContent
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Tozin ADD  DEFAULT (0) FOR RisingUseful
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Tozin ADD  DEFAULT (0) FOR RisingNonUseFul
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Tozin ADD  CONSTRAINT DF_Tozin_PersonID2  DEFAULT ((0)) FOR PersonID2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Tozin ADD  DEFAULT ((0)) FOR IsSystem
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Tozin ADD  CONSTRAINT DF_Tozin_TozinState  DEFAULT ((0)) FOR TozinState
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Tozin ADD  CONSTRAINT DF_Tozin_PersonID3  DEFAULT ((0)) FOR PersonID3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Tozin ADD  CONSTRAINT DF_Tozin_ServerID  DEFAULT ((0)) FOR ServerID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Tozin ADD  CONSTRAINT DF_Tozin_YearID  DEFAULT ((1395)) FOR YearID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Tozin ADD  CONSTRAINT DF_Tozin_WeightKind  DEFAULT ((0)) FOR WeightKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Tozin ADD  CONSTRAINT DF_Tozin_DirectDownload  DEFAULT ((0)) FOR DirectDownload
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Tozin ADD  CONSTRAINT DF_Tozin_SecondType  DEFAULT ((0)) FOR SecondType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Tozin ADD  DEFAULT ((0)) FOR UseUnitID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Tozin ADD  DEFAULT ((0)) FOR StoreID2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Tozin ADD  CONSTRAINT DF_Tozin_AidDate  DEFAULT ('') FOR AidDate
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Tozin ADD  DEFAULT ((1)) FOR SellsMethod
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Tozin ADD  CONSTRAINT DF_Tozin_EnterDateShamsi  DEFAULT ('') FOR EnterDateShamsi
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Tozin ADD  CONSTRAINT DF_Tozin_ExitDateShamsi  DEFAULT ('') FOR ExitDateShamsi
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Tozin ADD  CONSTRAINT DF_Tozin_EnterTimeShamsi  DEFAULT ('') FOR EnterTimeShamsi
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Tozin ADD  CONSTRAINT DF_Tozin_ExitTimeShamsi  DEFAULT ('') FOR ExitTimeShamsi
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Tozin ADD  CONSTRAINT DF_Tozin_PersonID4  DEFAULT ((0)) FOR PersonID4
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Tozin ADD  CONSTRAINT DF_Tozin_PersonID5  DEFAULT ((0)) FOR PersonID5
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.TozinDeficits ADD  CONSTRAINT DF_TozinDeficits_DeficitAdd  DEFAULT ((0)) FOR DeficitAdd
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.TozinDeficits ADD  CONSTRAINT DF_TozinDeficits_DeficitDec  DEFAULT ((0)) FOR DeficitDec
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.TransFormInfo ADD  DEFAULT (0) FOR ProcessID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.TransFormItems ADD  DEFAULT (0) FOR InfoType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.TransFormItems ADD  DEFAULT (0) FOR ProcessID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.TransForms ADD  CONSTRAINT DF_TransForms_ControlCode  DEFAULT ((0)) FOR ControlCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.TransForms ADD  DEFAULT (0) FOR StuffModel
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.TransForms ADD  DEFAULT (0) FOR EarthGrpID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.TransForms ADD  DEFAULT (0) FOR TransFormState
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.Units ADD  DEFAULT (0) FOR ChangeState
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.UseOthers ADD  DEFAULT (0) FOR UseState
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.UseOthers ADD  CONSTRAINT DF_UseOthers_TopicCode  DEFAULT ((0)) FOR TopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.UseOthers ADD  CONSTRAINT DF_UseOthers_DetailCode  DEFAULT ((0)) FOR DetailCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.UseOthers ADD  CONSTRAINT DF_UseOthers_CTopicCode  DEFAULT ((0)) FOR CTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.UseOthers ADD  CONSTRAINT DF_UseOthers_CTopicCode2  DEFAULT ((0)) FOR CTopicCode2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.UseOthers ADD  CONSTRAINT DF_UseOthers_CTopicCode3  DEFAULT ((0)) FOR CTopicCode3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.UseUnits ADD  CONSTRAINT DF_UseUnits_acc_TopicCode  DEFAULT ((0)) FOR acc_TopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.UseUnits ADD  DEFAULT (0) FOR acc_DetailCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.UseUnits ADD  DEFAULT (0) FOR acc_CTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.UseUnits ADD  DEFAULT (0) FOR acc_CTopicCode2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.UseUnits ADD  DEFAULT (0) FOR UseActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.UseUnits ADD  DEFAULT (0) FOR YearID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.UseUnits ADD  CONSTRAINT DF_UseUnits_acc_CTopicCode3  DEFAULT (0) FOR acc_CTopicCode3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.UseUnits ADD  CONSTRAINT DF_UseUnits_CustID1  DEFAULT ((0)) FOR CustID1
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.UseUnits ADD  CONSTRAINT DF_UseUnits_CustID2  DEFAULT ((0)) FOR CustID2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.UseUnits ADD  CONSTRAINT DF_UseUnits_CustID3  DEFAULT ((0)) FOR CustID3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.UseUnits ADD  CONSTRAINT DF_UseUnits_CustID4  DEFAULT ((0)) FOR CustID4
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.WF_FlowFroms ADD  CONSTRAINT DF_WF_FlowFroms_CancelSortAccept  DEFAULT ((0)) FOR CancelSortAccept
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE dbo.WF_TransWorkFlow ADD  CONSTRAINT DF_WF_TransWorkFlow_UserCitation  DEFAULT ((0)) FOR UserCitation
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Lab.SampleItems ADD  CONSTRAINT DF_SampleItems_CustID  DEFAULT ((0)) FOR CustID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Machin.Machinery ADD  DEFAULT (0) FOR Amount
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Machin.Machinery ADD  DEFAULT (0) FOR Total
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Machin.Machinery ADD  CONSTRAINT DF_Machinery_states  DEFAULT (0) FOR states
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Machin.Maintenance ADD  CONSTRAINT DF_Maintenance_MaintenanceStatus  DEFAULT ((0)) FOR MaintenanceStatus
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Tsh.Calendar ADD  CONSTRAINT DF_Calendar_CalendarKind  DEFAULT ((0)) FOR CalendarKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Tsh.ClockDmp ADD  DEFAULT ((0)) FOR Insertkind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Tsh.FunctionItems ADD  DEFAULT (0) FOR FarmId
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Tsh.FunctionItems ADD  DEFAULT (0) FOR PieceId
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Tsh.FunctionItems ADD  DEFAULT (1) FOR Ratio
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Tsh.FunctionOther ADD  CONSTRAINT DF_FunctionOther_FunctionOtherKind  DEFAULT ((0)) FOR FunctionOtherKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Tsh.Functions ADD  DEFAULT (0) FOR PersonId
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Tsh.Functions ADD  DEFAULT (0) FOR Productionprocess
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Tsh.Functions ADD  DEFAULT (0) FOR EarthField
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Tsh.Functions ADD  DEFAULT (0) FOR Gate
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Tsh.Functions ADD  DEFAULT (1) FOR Ratio
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Tsh.Functions ADD  CONSTRAINT DF_Functions_FunctionAmount  DEFAULT ((0)) FOR FunctionAmount
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Tsh.Functions ADD  DEFAULT (0) FOR CaseId
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Tsh.Functions ADD  DEFAULT (0) FOR Amount1
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Tsh.Functions ADD  DEFAULT (0) FOR Amount2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Tsh.Functions ADD  DEFAULT (0) FOR Amount3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Tsh.Functions ADD  CONSTRAINT DF_Functions_MaintenanceID  DEFAULT (0) FOR MaintenanceID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Tsh.Functions ADD  CONSTRAINT DF_TshFunctions_Supervisor  DEFAULT ((0)) FOR Supervisor
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Tsh.ScheduleExceptions ADD  DEFAULT (0) FOR WorkGroupId
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Tsh.Schedules ADD  DEFAULT (0) FOR WorkGroupId
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Util.CodesInProcess ADD  DEFAULT (0) FOR [Type]
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ExpenseTopics_TopicCode')
ALTER TABLE Util.MaliYear ADD  DEFAULT (0) FOR Status

--IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Earth_EarthGroups' AND type = 'F')
--begin
--ALTER TABLE Agr.Earth  WITH CHECK ADD  CONSTRAINT FK_Earth_EarthGroups FOREIGN KEY(EarthGrpID)
--REFERENCES dbo.EarthGroups (EarthGrpID)
--ON UPDATE CASCADE

--ALTER TABLE Agr.Earth CHECK CONSTRAINT FK_Earth_EarthGroups
--end
--IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Earth_Units' AND type = 'F')
--begin
--ALTER TABLE Agr.Earth  WITH CHECK ADD  CONSTRAINT FK_Earth_Units FOREIGN KEY(UnitCode)
--REFERENCES dbo.Units (UnitCode)
--ON UPDATE CASCADE

--ALTER TABLE Agr.Earth CHECK CONSTRAINT FK_Earth_Units
--end
--IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_EarthLimit_Earth' AND type = 'F')
--begin
--ALTER TABLE Agr.EarthLimit  WITH CHECK ADD  CONSTRAINT FK_EarthLimit_Earth FOREIGN KEY(EarthField, Gate)
--REFERENCES Agr.Earth (EarthField, Gate)
--ON UPDATE CASCADE

--ALTER TABLE Agr.EarthLimit CHECK CONSTRAINT FK_EarthLimit_Earth
--end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_AidAssets_AidInfo' AND type = 'F')
begin
ALTER TABLE Assets.AidAssets  WITH CHECK ADD  CONSTRAINT FK_AidAssets_AidInfo FOREIGN KEY(GrpCode, AidInfoID)
REFERENCES Assets.AidInfo (GrpCode, AidInfoID)

ALTER TABLE Assets.AidAssets CHECK CONSTRAINT FK_AidAssets_AidInfo
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_AidAssets_Amval' AND type = 'F')
begin
ALTER TABLE Assets.AidAssets  WITH NOCHECK ADD  CONSTRAINT FK_AidAssets_Amval FOREIGN KEY(Serial)
REFERENCES Assets.Amval (SerialNum)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Assets.AidAssets CHECK CONSTRAINT FK_AidAssets_Amval
end
--IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_AidInfo_AssetsGroups' AND type = 'F')
--begin
--ALTER TABLE Assets.AidInfo  WITH CHECK ADD  CONSTRAINT FK_AidInfo_AssetsGroups FOREIGN KEY(GrpCode)
--REFERENCES Assets.AssetsGroups (AsstetsGrpCode)
--ON UPDATE CASCADE
--ON DELETE CASCADE

--ALTER TABLE Assets.AidInfo CHECK CONSTRAINT FK_AidInfo_AssetsGroups
--end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_AlterAssets_Amval' AND type = 'F')
begin
ALTER TABLE Assets.AlterAssets  WITH NOCHECK ADD  CONSTRAINT FK_AlterAssets_Amval FOREIGN KEY(Serial)
REFERENCES Assets.Amval (SerialNum)
ON UPDATE CASCADE

ALTER TABLE Assets.AlterAssets CHECK CONSTRAINT FK_AlterAssets_Amval
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Amval_AccCtopics' AND type = 'F')
begin
ALTER TABLE Assets.Amval  WITH CHECK ADD  CONSTRAINT FK_Amval_AccCtopics FOREIGN KEY(ExpCode)
REFERENCES Assets.AccCtopics (ExpCode)

ALTER TABLE Assets.Amval CHECK CONSTRAINT FK_Amval_AccCtopics
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Amval_AccTopics' AND type = 'F')
begin
ALTER TABLE Assets.Amval  WITH NOCHECK ADD  CONSTRAINT FK_Amval_AccTopics FOREIGN KEY(AccTopicCode)
REFERENCES Assets.AccTopics (AccTopicCode)
ON UPDATE CASCADE

ALTER TABLE Assets.Amval CHECK CONSTRAINT FK_Amval_AccTopics
end
--IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Amval_AssetsGroups' AND type = 'F')
--begin
--ALTER TABLE Assets.Amval  WITH CHECK ADD  CONSTRAINT FK_Amval_AssetsGroups FOREIGN KEY(AsstetsGrpCode)
--REFERENCES Assets.AssetsGroups (AsstetsGrpCode)
--ON UPDATE CASCADE

--ALTER TABLE Assets.Amval CHECK CONSTRAINT FK_Amval_AssetsGroups
--end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Amval_AssetsKeeper' AND type = 'F')
begin
ALTER TABLE Assets.Amval  WITH CHECK ADD  CONSTRAINT FK_Amval_AssetsKeeper FOREIGN KEY(KeeperCode)
REFERENCES Assets.AssetsKeeper (KeeperCode)
ON UPDATE CASCADE

ALTER TABLE Assets.Amval CHECK CONSTRAINT FK_Amval_AssetsKeeper
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Amval_Places' AND type = 'F')
begin
ALTER TABLE Assets.Amval  WITH NOCHECK ADD  CONSTRAINT FK_Amval_Places FOREIGN KEY(PlaceCode)
REFERENCES Assets.Places (PlaceCode)

ALTER TABLE Assets.Amval CHECK CONSTRAINT FK_Amval_Places
end
--IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Amval_Units' AND type = 'F')
--begin
--ALTER TABLE Assets.Amval  WITH NOCHECK ADD  CONSTRAINT FK_Amval_Units FOREIGN KEY(UnitCode)
--REFERENCES Assets.Units (unitCode)

--ALTER TABLE Assets.Amval CHECK CONSTRAINT FK_Amval_Units
--end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Amval_Users' AND type = 'F')
begin
ALTER TABLE Assets.Amval  WITH NOCHECK ADD  CONSTRAINT FK_Amval_Users FOREIGN KEY(UserCode)
REFERENCES Assets.Users (UserID)

ALTER TABLE Assets.Amval CHECK CONSTRAINT FK_Amval_Users
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_AssestConstNow_Amval' AND type = 'F')
begin
ALTER TABLE Assets.AssestConstNow  WITH CHECK ADD  CONSTRAINT FK_AssestConstNow_Amval FOREIGN KEY(SerialNum)
REFERENCES Assets.Amval (SerialNum)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Assets.AssestConstNow CHECK CONSTRAINT FK_AssestConstNow_Amval
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_AssestConstNow_MaliYear' AND type = 'F')
begin
ALTER TABLE Assets.AssestConstNow  WITH CHECK ADD  CONSTRAINT FK_AssestConstNow_MaliYear FOREIGN KEY(YearID)
REFERENCES Util.MaliYear (YearID)
ON UPDATE CASCADE

ALTER TABLE Assets.AssestConstNow CHECK CONSTRAINT FK_AssestConstNow_MaliYear
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_AssetsInsouraceGroups_Amval' AND type = 'F')
begin
ALTER TABLE Assets.AssetsInsouraceGroups  WITH NOCHECK ADD  CONSTRAINT FK_AssetsInsouraceGroups_Amval FOREIGN KEY(Serial)
REFERENCES Assets.Amval (SerialNum)
ON UPDATE CASCADE

ALTER TABLE Assets.AssetsInsouraceGroups CHECK CONSTRAINT FK_AssetsInsouraceGroups_Amval
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_AssetsInsouraceGroups_Insourance' AND type = 'F')
begin
ALTER TABLE Assets.AssetsInsouraceGroups  WITH CHECK ADD  CONSTRAINT FK_AssetsInsouraceGroups_Insourance FOREIGN KEY(InsouranceItemsID)
REFERENCES Assets.Insourance (InsouranceItemsID)
ON UPDATE CASCADE

ALTER TABLE Assets.AssetsInsouraceGroups CHECK CONSTRAINT FK_AssetsInsouraceGroups_Insourance
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_AssetsInsouranceSpecial_Amval' AND type = 'F')
begin
ALTER TABLE Assets.AssetsInsouranceSpecial  WITH NOCHECK ADD  CONSTRAINT FK_AssetsInsouranceSpecial_Amval FOREIGN KEY(Serial)
REFERENCES Assets.Amval (SerialNum)
ON UPDATE CASCADE

ALTER TABLE Assets.AssetsInsouranceSpecial CHECK CONSTRAINT FK_AssetsInsouranceSpecial_Amval
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_BerakAmval_Amval' AND type = 'F')
begin
ALTER TABLE Assets.BerakAmval  WITH NOCHECK ADD  CONSTRAINT FK_BerakAmval_Amval FOREIGN KEY(SerialNum)
REFERENCES Assets.Amval (SerialNum)
ON UPDATE CASCADE

ALTER TABLE Assets.BerakAmval CHECK CONSTRAINT FK_BerakAmval_Amval
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Decrease_Amval' AND type = 'F')
begin
ALTER TABLE Assets.Decrease  WITH NOCHECK ADD  CONSTRAINT FK_Decrease_Amval FOREIGN KEY(SerialNum)
REFERENCES Assets.Amval (SerialNum)
ON UPDATE CASCADE
ON DELETE CASCADE
ALTER TABLE Assets.Decrease CHECK CONSTRAINT FK_Decrease_Amval
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_DepTable_Amval' AND type = 'F')
begin
ALTER TABLE Assets.DepTable  WITH NOCHECK ADD  CONSTRAINT FK_DepTable_Amval FOREIGN KEY(Serial)
REFERENCES Assets.Amval (SerialNum)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Assets.DepTable CHECK CONSTRAINT FK_DepTable_Amval
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_DepTable_MaliYear' AND type = 'F')
begin
ALTER TABLE Assets.DepTable  WITH CHECK ADD  CONSTRAINT FK_DepTable_MaliYear FOREIGN KEY(Yearid)
REFERENCES Util.MaliYear (YearID)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Assets.DepTable CHECK CONSTRAINT FK_DepTable_MaliYear
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Expenses_Amval' AND type = 'F')
begin
ALTER TABLE Assets.Expenses  WITH NOCHECK ADD  CONSTRAINT FK_Expenses_Amval FOREIGN KEY(SerialNum)
REFERENCES Assets.Amval (SerialNum)
ON UPDATE CASCADE

ALTER TABLE Assets.Expenses CHECK CONSTRAINT FK_Expenses_Amval
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Expenses_OwnerType' AND type = 'F')
begin
ALTER TABLE Assets.Expenses  WITH NOCHECK ADD  CONSTRAINT FK_Expenses_OwnerType FOREIGN KEY(OwnerType)
REFERENCES Assets.OwnerType (OwnerType)

ALTER TABLE Assets.Expenses CHECK CONSTRAINT FK_Expenses_OwnerType
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Insourance_InsouranceInfo' AND type = 'F')
begin
ALTER TABLE Assets.Insourance  WITH CHECK ADD  CONSTRAINT FK_Insourance_InsouranceInfo FOREIGN KEY(InsouranceID)
REFERENCES Assets.InsouranceInfo (InsouranceID)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Assets.Insourance CHECK CONSTRAINT FK_Insourance_InsouranceInfo
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Movement_Amval' AND type = 'F')
begin
ALTER TABLE Assets.Movement  WITH NOCHECK ADD  CONSTRAINT FK_Movement_Amval FOREIGN KEY(SerialNum)
REFERENCES Assets.Amval (SerialNum)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Assets.Movement CHECK CONSTRAINT FK_Movement_Amval
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Movement_Places' AND type = 'F')
begin
ALTER TABLE Assets.Movement  WITH NOCHECK ADD  CONSTRAINT FK_Movement_Places FOREIGN KEY(NewPlaceCode)
REFERENCES Assets.Places (PlaceCode)
ON UPDATE CASCADE

ALTER TABLE Assets.Movement CHECK CONSTRAINT FK_Movement_Places
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReValidateItems_Amval' AND type = 'F')
begin
ALTER TABLE Assets.ReValidateItems  WITH NOCHECK ADD  CONSTRAINT FK_ReValidateItems_Amval FOREIGN KEY(SerialNum)
REFERENCES Assets.Amval (SerialNum)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Assets.ReValidateItems CHECK CONSTRAINT FK_ReValidateItems_Amval
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReValidateItems_ReValidate' AND type = 'F')
begin
ALTER TABLE Assets.ReValidateItems  WITH NOCHECK ADD  CONSTRAINT FK_ReValidateItems_ReValidate FOREIGN KEY(RID)
REFERENCES Assets.ReValidate (RID)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Assets.ReValidateItems CHECK CONSTRAINT FK_ReValidateItems_ReValidate
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ScanInfo_ScanType' AND type = 'F')
begin
ALTER TABLE Assets.ScanInfo_old  WITH NOCHECK ADD  CONSTRAINT FK_ScanInfo_ScanType FOREIGN KEY(ScanType)
REFERENCES Assets.scantype_old (ScanType)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Assets.ScanInfo_old CHECK CONSTRAINT FK_ScanInfo_ScanType
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_TaxItems_TaxGroup' AND type = 'F')
begin
ALTER TABLE Assets.TaxItems  WITH NOCHECK ADD  CONSTRAINT FK_TaxItems_TaxGroup FOREIGN KEY(TaxGrpCode)
REFERENCES Assets.TaxGroup (TaxGrpCode)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Assets.TaxItems CHECK CONSTRAINT FK_TaxItems_TaxGroup
end


IF not EXISTS (SELECT 1 from sysobjects where name = 'CK_Amval')
begin
ALTER TABLE Assets.Amval  WITH NOCHECK ADD  CONSTRAINT CK_Amval CHECK  ((AssetsValue>=EsqValue))
ALTER TABLE Assets.Amval CHECK CONSTRAINT CK_Amval
end


if not exists (select * from dbo.sysobjects where id = object_id(N'Assets.AssetsKeeper') and OBJECTPROPERTY(id, N'IsUserTable') = 1) 
begin  
  CREATE TABLE Assets.AssetsKeeper ( [KeeperCode] [int] NOT NULL , [KeeperName] [varchar] (80)  NULL , 
  CONSTRAINT [PK_AssetsKeeper] PRIMARY KEY CLUSTERED ( [KeeperCode] ) ON [PRIMARY] ) ON [PRIMARY] 
  INSERT INTO Assets.AssetsKeeper(KeeperCode,KeeperName) VALUES(1,'1')  
end 

if ( COLUMNPROPERTY( OBJECT_ID('Assets.Amval'),'KeeperCode','IsRowGuidCol')is  null )  
begin  
  ALTER TABLE Assets.Amval ADD  KeeperCode int NOT NULL CONSTRAINT DF_Amval_KeeperCode DEFAULT 1 
  ALTER TABLE Assets.Amval ADD CONSTRAINT FK_Amval_AssetsKeeper FOREIGN KEY ( KeeperCode ) 
  REFERENCES AssetsKeeper ( KeeperCode ) ON UPDATE CASCADE  
end  

ALTER TABLE Assets.Decrease DROP CONSTRAINT FK_Decrease_Amval 
ALTER TABLE Assets.Decrease WITH NOCHECK ADD CONSTRAINT FK_Decrease_Amval 
FOREIGN KEY ( SerialNum) REFERENCES Assets.Amval ( SerialNum ) ON UPDATE CASCADE ON DELETE CASCADE 

if((SELECT COLUMNPROPERTY( OBJECT_ID('Assets.DocExports'),'Id','IsIdentity')) = 0) 
begin  
  ALTER TABLE Assets.DocExports DROP CONSTRAINT PK_DocExports  
  ALTER TABLE Assets.DocExports DROP column Id  
  ALTER TABLE Assets.DocExports add ID int identity(1,1)  
  ALTER TABLE Assets.DocExports  ADD CONSTRAINT PK_DocExports PRIMARY KEY (ID)  
end  

if not exists (select * from dbo.sysobjects where id = object_id(N'[Assets].[AssestConstNow]') and OBJECTPROPERTY (id,N'IsUserTable') =1)
  CREATE TABLE Assets.AssestConstNow ( [SerialNum] [int] NOT NULL , [BazaarValue] [money] Not NULL , 
  CONSTRAINT [PK_AssestConstNow] PRIMARY KEY CLUSTERED ( [SerialNum] ) ON [PRIMARY] , 
  CONSTRAINT [FK_AssestConstNow_Amval] FOREIGN KEY ( [SerialNum] ) 
  REFERENCES [Assets].[Amval] ([SerialNum] ) ON DELETE CASCADE ON UPDATE CASCADE ) ON [PRIMARY]  

if ( COLUMNPROPERTY( OBJECT_ID('Assets.AssetsKeeper'),'KeeperDetailCode','IsRowGuidCol')is  null )  
ALTER TABLE Assets.AssetsKeeper ADD [KeeperDetailCode] [int] NOT NULL  DEFAULT (0)   
if ( COLUMNPROPERTY( OBJECT_ID('Assets.Users'),'DetailCode','IsRowGuidCol')is  null )  
ALTER TABLE Assets.Users ADD [DetailCode] [int] NOT NULL  DEFAULT (0)   
if ( COLUMNPROPERTY( OBJECT_ID('Assets.DocExports'),'DocNo','IsRowGuidCol')is  null )  
ALTER TABLE Assets.DocExports ADD DocNo int NOT NULL DEFAULT (0)   
if ( COLUMNPROPERTY( OBJECT_ID('Assets.DocExports'),'DocDate','IsRowGuidCol')is  null )  
ALTER TABLE Assets.DocExports ADD DocDate CHAR(10)  

--if ( COLUMNPROPERTY( OBJECT_ID('Assets.AssetsGroups'),'AccDetailCode','IsRowGuidCol')is null )  
--ALTER TABLE Assets.AssetsGroups ADD AccDetailCode INT NOT NULL DEFAULT (0)  
--if ( COLUMNPROPERTY( OBJECT_ID('Assets.AssetsGroups'),'AccCTopicCode','IsRowGuidCol')is null )  
--ALTER TABLE Assets.AssetsGroups ADD AccCTopicCode INT NOT NULL DEFAULT (0)  
--if ( COLUMNPROPERTY( OBJECT_ID('Assets.AssetsGroups'),'AccCTopicCode2','IsRowGuidCol')is null )  
--ALTER TABLE Assets.AssetsGroups ADD AccCTopicCode2 INT NOT NULL DEFAULT (0)  
--if ( COLUMNPROPERTY( OBJECT_ID('Assets.AssetsGroups'),'AccCTopicCode3','IsRowGuidCol')is null )  
--ALTER TABLE Assets.AssetsGroups ADD AccCTopicCode3 INT NOT NULL DEFAULT (0)


if ( COLUMNPROPERTY( OBJECT_ID('Assets.AccTopics'),'AccCTopicCode','IsRowGuidCol')is null )  
ALTER TABLE Assets.AccTopics ADD AccCTopicCode INT NOT NULL DEFAULT (0)
if ( COLUMNPROPERTY( OBJECT_ID('Assets.AccTopics'),'AccCTopicCode2','IsRowGuidCol')is null )  
ALTER TABLE Assets.AccTopics ADD AccCTopicCode2 INT NOT NULL DEFAULT (0)
if ( COLUMNPROPERTY( OBJECT_ID('Assets.AccTopics'),'AccCTopicCode3','IsRowGuidCol')is null )  
ALTER TABLE Assets.AccTopics ADD AccCTopicCode3 INT NOT NULL DEFAULT (0)
if ( COLUMNPROPERTY( OBJECT_ID('Assets.Config'),'DefaultDocType','IsRowGuidCol')is null )  
ALTER TABLE Assets.Config ADD DefaultDocType INT NOT NULL DEFAULT (10)
if ( COLUMNPROPERTY( OBJECT_ID('Assets.Config'),'SerialNumType','IsRowGuidCol')is null )  
ALTER TABLE Assets.Config ADD SerialNumType TINYINT NOT NULL DEFAULT (0)
if ( COLUMNPROPERTY( OBJECT_ID('Assets.Config'),'ShowAmount','IsRowGuidCol')is null )  
ALTER TABLE Assets.Config ADD ShowAmount TINYINT NOT NULL DEFAULT (0)
if ( COLUMNPROPERTY( OBJECT_ID('Assets.Config'),'AidFieldCaption','IsRowGuidCol')is null )  
ALTER TABLE Assets.Config ADD AidFieldCaption nvarchar(1000) NULL 
if ( COLUMNPROPERTY( OBJECT_ID('Assets.Decrease'),'ProfitTopicCode','IsRowGuidCol')is null )  
ALTER TABLE Assets.Decrease ADD ProfitTopicCode BIGINT NOT NULL DEFAULT (0)
if ( COLUMNPROPERTY( OBJECT_ID('Assets.Decrease'),'ProfitDetailCode','IsRowGuidCol')is null )  
ALTER TABLE Assets.Decrease ADD ProfitDetailCode INT NOT NULL DEFAULT (0)
if ( COLUMNPROPERTY( OBJECT_ID('Assets.Decrease'),'ProfitCTopicCode','IsRowGuidCol')is null )  
ALTER TABLE Assets.Decrease ADD ProfitCTopicCode INT NOT NULL DEFAULT (0)
if ( COLUMNPROPERTY( OBJECT_ID('Assets.Decrease'),'ProfitCTopicCode2','IsRowGuidCol')is null )  
ALTER TABLE Assets.Decrease ADD ProfitCTopicCode2 INT NOT NULL DEFAULT (0)
if ( COLUMNPROPERTY( OBJECT_ID('Assets.AccTopics'),'AccReserveCTopicCode','IsRowGuidCol')is null )  
ALTER TABLE Assets.AccTopics ADD AccReserveCTopicCode INT NOT NULL DEFAULT (0)
if ( COLUMNPROPERTY( OBJECT_ID('Assets.AccTopics'),'AccReserveCTopicCode2','IsRowGuidCol')is null )  
ALTER TABLE Assets.AccTopics ADD AccReserveCTopicCode2 INT NOT NULL DEFAULT (0)
if ( COLUMNPROPERTY( OBJECT_ID('Assets.AccTopics'),'AccReserveCTopicCode3','IsRowGuidCol')is null )  
ALTER TABLE Assets.AccTopics ADD AccReserveCTopicCode3 INT NOT NULL DEFAULT (0)
if ( COLUMNPROPERTY( OBJECT_ID('Assets.AccCtopics'),'AccReserveCTopicCode','IsRowGuidCol')is null )  
ALTER TABLE Assets.AccCtopics ADD AccReserveCTopicCode INT NOT NULL DEFAULT (0)
if ( COLUMNPROPERTY( OBJECT_ID('Assets.AccCtopics'),'AccReserveCTopicCode2','IsRowGuidCol')is null )  
ALTER TABLE Assets.AccCtopics ADD AccReserveCTopicCode2 INT NOT NULL DEFAULT (0)
if ( COLUMNPROPERTY( OBJECT_ID('Assets.AccCtopics'),'AccReserveCTopicCode3','IsRowGuidCol')is null )  
ALTER TABLE Assets.AccCtopics ADD AccReserveCTopicCode3 INT NOT NULL DEFAULT (0)
if ( COLUMNPROPERTY( OBJECT_ID('Assets.Config'),'SerialPelak','IsRowGuidCol')is null )  
ALTER TABLE Assets.Config ADD SerialPelak TINYINT NOT NULL DEFAULT (0)
if ( COLUMNPROPERTY( OBJECT_ID('Assets.Config'),'LevelGroup','IsRowGuidCol')is null )  
ALTER TABLE Assets.Config ADD LevelGroup TINYINT NOT NULL DEFAULT (0) 

--if ( COLUMNPROPERTY( OBJECT_ID('Assets.AssetsGroups'),'PrefixPelak','IsRowGuidCol')is null  )  
--ALTER TABLE Assets.AssetsGroups ADD PrefixPelak varchar(15)  
--if ( COLUMNPROPERTY( OBJECT_ID('Assets.AssetsGroups'),'LevelID','IsRowGuidCol')is null )  
--ALTER TABLE Assets.AssetsGroups ADD LevelID TINYINT NOT NULL DEFAULT (0)
--if ( COLUMNPROPERTY( OBJECT_ID('Assets.AssetsGroups'),'PrvGrpCode','IsRowGuidCol')is null )  
--ALTER TABLE Assets.AssetsGroups ADD PrvGrpCode INT NOT NULL DEFAULT (0)


IF( COLUMNPROPERTY( OBJECT_ID('Assets.DocExports'),'DocType','IsRowGuidCol')IS NULL )  
ALTER TABLE Assets.DocExports ADD DocType TINYINT NOT NULL DEFAULT (0) 
IF( COLUMNPROPERTY( OBJECT_ID('Assets.Movement'),'MoveType','IsRowGuidCol')IS NULL )  
ALTER TABLE Assets.Movement ADD MoveType TINYINT NOT NULL DEFAULT (0)
if (COLUMNPROPERTY( OBJECT_ID('assets.TaxItems'),'OldDepMode','IsRowGuidCol')is null) 
alter table assets.TaxItems add OldDepMode tinyint null
if (COLUMNPROPERTY( OBJECT_ID('assets.TaxItems'),'OldDepValue','IsRowGuidCol')is null)
alter table assets.TaxItems add OldDepValue int null

if ( COLUMNPROPERTY( OBJECT_ID('Assets.Amval'),'AidField1','IsRowGuidCol')is null )
ALTER TABLE Assets.Amval ADD AidField1 nvarchar(100) null
if ( COLUMNPROPERTY( OBJECT_ID('Assets.Amval'),'AidField2','IsRowGuidCol')is null )
ALTER TABLE Assets.Amval ADD AidField2 nvarchar(100) null

set nocount on  
if (Select COUNT(Uid) from sysusers where Name = 'Util')=0  
begin  
  Exec sp_addrole @RoleName = N'Util' ,@ownerName='FaraUser'  
  Exec sp_changeobjectowner 'dbo.CodesInProcess','Util'  
end  

if not exists (select * from sysobjects where id = object_id(N'[Util].[MaliYear]') and  OBJECTPROPERTY(id, N'IsUserTable') = 1) 
if  exists (select * from sysobjects where id = object_id(N'[dbo].[MaliYear]') and  OBJECTPROPERTY(id, N'IsUserTable') = 1) 
Exec sp_changeobjectowner 'dbo.MaliYear','Util'  
if not exists (select * from sysobjects where id = object_id(N'[Util].[MaliYear]') and  OBJECTPROPERTY(id, N'IsUserTable') = 1)  
begin  
	Declare @YearID char(2)  Set @YearID=(SELECT top 1 SUBSTRING(BaseDate, 0, 3) 
	FROM Assets.Config)  
	Declare @StartYear Char(10)  
	Set @StartYear=(SELECT top 1 SUBSTRING(BaseDate, 0, 3)+FirstDayMaliYear FROM Assets.Config)  
	Declare @EndYear Char(10)  
	Set @EndYear=(SELECT top 1 SUBSTRING(BaseDate, 0, 3)+EndDayMaliYear FROM Assets.Config)  
	CREATE TABLE [Util].[MaliYear] (  [YearID] int NOT NULL ,  [StartYear] char(10) NULL ,  [EndYear] char(10) NULL , 
	 [Status] Tinyint NOT NULL default (0),  
	 CONSTRAINT [PK_MaliYear] PRIMARY KEY CLUSTERED ( [YearID]) ON [PRIMARY] ) ON [PRIMARY]  
	 INSERT INTO Util.MaliYear (YearID, StartYear, EndYear,Status)  select @YearID, @StartYear, @EndYear,0 as a  
end 
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'[Assets].[DepTable]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)  
 CREATE TABLE [Assets].[DepTable]( [ID] [int] IDENTITY(1,1) NOT NULL,	
 [Serial] [int] NOT NULL, [Yearid] [int] NOT NULL, [Tablename] [nvarchar](50) NOT NULL,
  [Id4table] [int] NOT NULL, [FirstDepValue] [money] NOT NULL CONSTRAINT [DF_DepTable_FirstDepValue]  DEFAULT (0),
   [DepvalueInyear] [money] NOT NULL CONSTRAINT [DF_DepTable_DepvalueInyear]  DEFAULT (0),
    CONSTRAINT [PK_DepTable] PRIMARY KEY CLUSTERED ([Serial] ASC,[Yearid] ASC,
	[Tablename] ASC,	[Id4table] ASC)  ON [PRIMARY] ) ON [PRIMARY]   

 if ( COLUMNPROPERTY( OBJECT_ID('Assets.Config'),'StartLimitID','IsRowGuidCol')is null ) 
 ALTER TABLE Assets.Config ADD StartLimitID int NOT NULL CONSTRAINT DF_Config_StartLimitID DEFAULT (1) 

 if ( COLUMNPROPERTY( OBJECT_ID('Assets.Config'),'EndLimitID','IsRowGuidCol')is null ) 
 ALTER TABLE Assets.Config ADD EndLimitID int NOT NULL CONSTRAINT DF_Config_EndLimitID DEFAULT (2147483647) 



if ( COLUMNPROPERTY( OBJECT_ID('Assets.AssestConstNow'),'YearID','IsRowGuidCol')is  null )  
begin  
  ALTER TABLE Assets.AssestConstNow ADD  YearID int 
  ALTER TABLE Assets.AssestConstNow ADD CONSTRAINT FK_AssestConstNow_MaliYear FOREIGN KEY ( YearID ) 
  REFERENCES Util.MaliYear ( YearID ) ON UPDATE CASCADE  
end  

if ( COLUMNPROPERTY( OBJECT_ID('Assets.AssetsKeeper'),'Mobile','IsRowGuidCol')is  null )  
ALTER TABLE Assets.AssetsKeeper ADD  Mobile varchar(20) 

if ( COLUMNPROPERTY( OBJECT_ID('Assets.AssetsKeeper'),'Email','IsRowGuidCol')is  null )  
ALTER TABLE Assets.AssetsKeeper ADD  Email  nvarchar(100)  


if ( COLUMNPROPERTY( OBJECT_ID('Assets.Users'),'Mobile','IsRowGuidCol')is  null )  
ALTER TABLE Assets.Users ADD  Mobile varchar(20) 

if ( COLUMNPROPERTY( OBJECT_ID('Assets.Users'),'Email','IsRowGuidCol')is  null )  
ALTER TABLE Assets.Users ADD  Email  nvarchar(100)  

if ( COLUMNPROPERTY( OBJECT_ID('Assets.Amval'),'StartWarrantyDate','IsRowGuidCol')is  null )  
ALTER TABLE Assets.Amval ADD  StartWarrantyDate char(10)

if ( COLUMNPROPERTY( OBJECT_ID('Assets.Amval'),'CompanyID','IsRowGuidCol')is  null )  
ALTER TABLE Assets.Amval ADD  CompanyID int not null default (0)

if ( COLUMNPROPERTY( OBJECT_ID('Assets.DepTable'),'CompanyID','IsRowGuidCol')is  null )  
ALTER TABLE Assets.DepTable ADD  CompanyID int not null default (0)

if ( COLUMNPROPERTY( OBJECT_ID('Assets.Amval'),'AmvalCount','IsRowGuidCol')is not null )
ALTER TABLE Assets.Amval drop column  AmvalCount

IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE (TABLE_NAME = N'Util.CodesInProcess') AND (COLUMN_NAME = N'UserID') AND (DATA_TYPE='int'))
ALTER TABLE Util.CodesInProcess ALTER column UserID int

if not exists (select * from sysobjects where id = object_id(N'[Util].[scantype]') and  OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE [Util].[ScanType](
	[ScanType] [int] NOT NULL,
	[ScanTypeName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ScanType] PRIMARY KEY CLUSTERED 
(
	[ScanType] ASC
) ON [PRIMARY]
) ON [PRIMARY]

if exists (select * from sysobjects where id = object_id(N'[Assets].[scantype]') and  OBJECTPROPERTY(id, N'IsUserTable') = 1)
begin
insert into Util.ScanType (ScanType, ScanTypeName)
select ScanType, ScanTypeName from Assets.ScanType where ScanType not in (select ScanType from Util.ScanType)

exec sp_rename 'assets.scantype', 'scantype_old'
end

if not exists (select * from sysobjects where id = object_id(N'[Util].[ScanInfo]') and  OBJECTPROPERTY(id, N'IsUserTable') = 1)
begin
CREATE TABLE [Util].[ScanInfo](
	[ScanType] [int] NOT NULL,
	[ScanInfoID] [int] NOT NULL,
	[ScanInfoName] [varchar](100) NOT NULL,
 CONSTRAINT [PK_ScanInfo] PRIMARY KEY CLUSTERED 
(
	[ScanType] ASC,
	[ScanInfoID] ASC
) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [Util].[ScanInfo]  WITH CHECK ADD  CONSTRAINT [FK_ScanInfo_ScanType] FOREIGN KEY([ScanType])
REFERENCES [Util].[ScanType] ([ScanType])
ON UPDATE CASCADE
ON DELETE CASCADE
end 

if exists (select * from sysobjects where id = object_id(N'[Assets].[ScanInfo]') and  OBJECTPROPERTY(id, N'IsUserTable') = 1)
begin
insert into Util.ScanInfo (ScanType, ScanInfoID, ScanInfoName)
select ai.ScanType, ai.ScanInfoID, ai.ScanInfoName from Assets.ScanInfo as ai left outer join
	Util.ScanInfo as us on ai.ScanType = us.ScanType and ai.ScanInfoID = us.ScanInfoID
		where us.ScanType is null and us.ScanInfoID is null

exec sp_rename 'assets.ScanInfo', 'ScanInfo_old'
end

if not exists (select * from sysobjects where id = object_id(N'Assets.DepTableCo') and  OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Assets.DepTableCo(
	SerialNum int NOT NULL,
	Yearid int NOT NULL,
	DepCoValue float NOT NULL, 
	CONSTRAINT FK_DepTableCo_Amval FOREIGN KEY(SerialNum)REFERENCES Assets.Amval (SerialNum)ON UPDATE CASCADE ON DELETE CASCADE , 
	CONSTRAINT FK_DepTableCo_MaliYear FOREIGN KEY(Yearid)REFERENCES Util.MaliYear (YearID)ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT PK_DepTableCo PRIMARY KEY CLUSTERED (	SerialNum ASC,	Yearid ASC) ON [PRIMARY]) ON [PRIMARY]


if ( COLUMNPROPERTY( OBJECT_ID('Assets.Amval'),'Comments','IsRowGuidCol')is  null )
alter table Assets.Amval add Comments varchar(6000) null
--------------------------------------------------------------------------------------------
IF OBJECT_ID ('[Assets].[TR_ConfigChangeLog_Amval]', 'TR') IS NOT NULL 
ALTER TABLE Assets.Amval DISABLE TRIGGER TR_ConfigChangeLog_Amval 

UPDATE Assets.Amval SET Amount=1 WHERE Amount=0
if (SELECT left(cast(SERVERPROPERTY('productversion') as varchar(25)), 1))<>8
if not ( SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS WHERE      (TABLE_NAME = N'amval') 
    AND (COLUMN_NAME = N'Comments') )='varchar'
alter table Assets.Amval alter column Comments varchar(6000) null
--begin
--if object_id('tempdb..##assets2000') is not null
--drop table ##assets2000
--declare @ttt int
--set @ttt = 1
--if exists (select * from Assets.Amval where (Comments is not null))
--begin
--select SerialNum,Comments into ##assets2000 from Assets.Amval where Comments is not null
--set @ttt = 2
--end
--alter table Assets.Amval drop column Comments
--alter table Assets.Amval add Comments varchar(6000) null
--if (@ttt = 2)
--update Assets.Amval set Comments = tt.Comments
--from Assets.Amval inner join ##assets2000 as tt on Assets.Amval.SerialNum = tt.SerialNum
--end

IF OBJECT_ID ('[Assets].[TR_ConfigChangeLog_Amval]', 'TR') IS NOT NULL 
ALTER TABLE Assets.Amval ENABLE TRIGGER TR_ConfigChangeLog_Amval 

if ( COLUMNPROPERTY( OBJECT_ID('Assets.Amval'),'ReciptItemsID','IsRowGuidCol')is null )
ALTER TABLE Assets.Amval ADD ReciptItemsID bigint

if ( COLUMNPROPERTY( OBJECT_ID('Assets.Amval'),'SellsEmporium','IsRowGuidCol')is null )
ALTER TABLE Assets.Amval ADD SellsEmporium int NOT NULL CONSTRAINT DF_Amval_SellsEmporium  DEFAULT (1)

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Amval_SellsEmporium' AND type = 'F')
  ALTER TABLE Assets.Amval ADD CONSTRAINT FK_Amval_SellsEmporium FOREIGN KEY (SellsEmporium)REFERENCES
       SellsEmporiums (SellsEmporium) ON UPDATE CASCADE 

if ( COLUMNPROPERTY( OBJECT_ID('Assets.Config'),'TopicCode','IsRowGuidCol')is null )
ALTER TABLE Assets.Config ADD TopicCode bigint NOT NULL CONSTRAINT DF_Config_TopicCode  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Assets.Config'),'DetailCode','IsRowGuidCol')is null )
ALTER TABLE Assets.Config ADD DetailCode int NOT NULL CONSTRAINT DF_Config_DetailCode  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Assets.Config'),'CTopicCode','IsRowGuidCol')is null )
ALTER TABLE Assets.Config ADD CTopicCode int NOT NULL CONSTRAINT DF_Config_CTopicCode  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Assets.Config'),'CTopicCode2','IsRowGuidCol')is null )
ALTER TABLE Assets.Config ADD CTopicCode2 int NOT NULL CONSTRAINT DF_Config_CTopicCode2  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Assets.Config'),'CTopicCode3','IsRowGuidCol')is null )
ALTER TABLE Assets.Config ADD CTopicCode3 int NOT NULL CONSTRAINT DF_Config_CTopicCode3  DEFAULT (0)


--IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Amval_AssetsGroups' AND type = 'F')
--ALTER TABLE Assets.Amval WITH CHECK ADD CONSTRAINT FK_Amval_AssetsGroups FOREIGN KEY (AsstetsGrpCode) REFERENCES StuffGroups(GroupID) ON UPDATE CASCADE 


if exists (select * from sysobjects where id = object_id(N'Assets.AssetsGroups') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view Assets.AssetsGroups

exec('create VIEW Assets.AssetsGroups
AS
SELECT        StuffGroups.GroupID AsstetsGrpCode, StuffGroups.GroupName GrpName,acc_IncomeTopicCode  AccTopicCode,acc_DetailCode AccDetailCode,acc_CTopicCode AccCTopicCode
   ,acc_CTopicCode2 AccCTopicCode2,acc_CTopicCode3 AccCTopicCode3,0 PrefixPelak,0 LevelID,StuffGroups.UperGroupId PrvGrpCode


FROM            StuffGroups LEFT OUTER JOIN
                             (SELECT DISTINCT UperGroupId
                                FROM            StuffGroups AS StuffGroups_1) AS ChildGroup ON StuffGroups.GroupID = ChildGroup.UperGroupId LEFT OUTER JOIN
                             (SELECT        GroupID, COUNT(GroupID) AS cntGroupID
                                FROM            StuffCoding AS StuffCoding_1
                                GROUP BY GroupID) AS stuffcoding ON stuffcoding.GroupID = StuffGroups.GroupID
WHERE        (ChildGroup.UperGroupId IS NULL) AND (StuffGroups.LevelID >=
                             (SELECT        LevelIdStuffGroup
                                FROM            dbo.Config))
								AND GroupType = 9 ')


IF  EXISTS(SELECT * FROM SYSOBJECTS where id = object_id(N'Assets.Units') and OBJECTPROPERTY(id, N'IsUserTable') = 1 )
begin
	IF  EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Amval_Units' AND type = 'F')
		ALTER TABLE Assets.Amval drop CONSTRAINT FK_Amval_Units

	EXEC sp_rename 'Assets.Units', 'Assets.UnitsOld';

	INSERT INTO Units
                         (UnitCode, UnitName)
	SELECT        unitCode, unitName
	FROM            Assets.[Assets.UnitsOld]
	WHERE        (unitCode NOT IN
                             (SELECT        UnitCode
                                FROM            Units))

end 

--IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Amval_Units' AND type = 'F')
--begin
--ALTER TABLE Assets.Amval alter column UnitCode tinyint not null
--ALTER TABLE Assets.Amval WITH CHECK ADD CONSTRAINT FK_Amval_Units FOREIGN KEY (UnitCode) REFERENCES Units(UnitCode) ON UPDATE CASCADE 
--end

if ( COLUMNPROPERTY( OBJECT_ID('Assets.Amval'),'ColorID','IsRowGuidCol')is null )
 ALTER TABLE Assets.Amval ADD ColorID int  




--if ( COLUMNPROPERTY( OBJECT_ID('Assets.AlterAssets'),'YearID','IsRowGuidCol')is null )
--ALTER TABLE Assets.AlterAssets ADD YearID int NOT NULL CONSTRAINT DF_AlterAssets_YearID  DEFAULT (1400)

--if ( COLUMNPROPERTY( OBJECT_ID('Assets.Revalidate'),'YearID','IsRowGuidCol')is null )
--ALTER TABLE Assets.Revalidate ADD YearID int NOT NULL CONSTRAINT DF_Revalidate_YearID  DEFAULT (1400)

if not( COLUMNPROPERTY( OBJECT_ID('Assets.AlterAssets'),'YearID','IsRowGuidCol')is null )
begin
IF EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_AlterAssets_YearID' AND type = 'D')
  ALTER TABLE Assets.AlterAssets drop CONSTRAINT DF_AlterAssets_YearID

ALTER TABLE Assets.AlterAssets drop COLUMN  YearID 
end

if not( COLUMNPROPERTY( OBJECT_ID('Assets.Revalidate'),'YearID','IsRowGuidCol')is null )
begin
IF EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_Revalidate_YearID' AND type = 'D')
 ALTER TABLE Assets.Revalidate drop CONSTRAINT DF_Revalidate_YearID

ALTER TABLE Assets.Revalidate drop COLUMN  YearID 
end

if not exists (select * from dbo.sysobjects where id = object_id(N'Assets.Colors') and OBJECTPROPERTY (id,N'IsUserTable') =1)
  CREATE TABLE Assets.Colors ( ColorID int NOT NULL ,  ColorName varchar(30) Not NULL , 
  CONSTRAINT PK_Colors PRIMARY KEY CLUSTERED ( ColorID ) ON [PRIMARY]  ) ON [PRIMARY]  


IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Amval_Colors' AND type = 'F')
ALTER TABLE Assets.Amval WITH CHECK ADD CONSTRAINT FK_Amval_Colors FOREIGN KEY (ColorID) REFERENCES Assets.Colors(ColorID) ON UPDATE CASCADE 


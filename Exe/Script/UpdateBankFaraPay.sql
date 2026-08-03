-- UpdateBankFaraPay.sql    تاريخ 1404/09/15      
--------  Add Tabel BPMS 


/****** Object:  Table Pay.BudgetInfoItems    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.BudgetInfoItems') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Pay.BudgetInfoItems(
	BudgetInfoItemID int NOT NULL,
	BudgetInfoID int NOT NULL,
	SalaryID int NOT NULL,
	Fday float NULL,
	Fhours float NULL,
 CONSTRAINT PK_BudgetInfoItems PRIMARY KEY CLUSTERED 
(
	BudgetInfoItemID ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Pay.BudgetsInfo    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.BudgetsInfo') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Pay.BudgetsInfo(
	BudgetInfoID int NOT NULL,
	ProjectID int NOT NULL,
	ProjectDetailID int NOT NULL,
	Years tinyint NOT NULL,
	Mounth tinyint NOT NULL,
	InterdictFormInfoID int NOT NULL,
	PersonelCount int NOT NULL,
	Fday float NULL,
	Fhours float NULL,
	UserID int NULL,
	Status tinyint NULL,
	Kind tinyint NOT NULL,
 CONSTRAINT PK_BudgetsInfo PRIMARY KEY CLUSTERED 
(
	BudgetInfoID ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Pay.CalculateWage    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.CalculateWage') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Pay.CalculateWage(
	SalaryID int NOT NULL,
	Amount float NOT NULL,
 CONSTRAINT PK_CalculateWage PRIMARY KEY CLUSTERED 
(
	SalaryID ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Pay.ChangeWage    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.ChangeWage') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Pay.ChangeWage(
	SalaryID int NOT NULL,
	CalculatedKind tinyint NOT NULL,
	Amount float NOT NULL,
	Firstdate char(10) NULL,
	Enddate char(10) NULL,
	ColumnsCalc nvarchar(2000) NULL,
	SalaryIDFormula  AS (('S'+ltrim(str(SalaryID)))+'F'),
 CONSTRAINT PK_ChangeWage PRIMARY KEY CLUSTERED 
(
	SalaryID ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Pay.Config    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.Config') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Pay.Config(
	CompanyName varchar(100) NULL,
	CompanyName_L2 varchar(100) NULL,
	CompanyDesc varchar(100) NULL,
	CompanyDesc_L2 varchar(100) NULL,
	RegisterNumber varchar(15) NULL,
	Address varchar(250) NULL,
	Address_L2 varchar(250) NULL,
	Tel1 varchar(20) NULL,
	Tel2 varchar(20) NULL,
	Fax varchar(20) NULL,
	Email varchar(50) NULL,
	WebSite varchar(50) NULL,
	AccountDBName varchar(250) NULL,
	StartMaliYear char(10) NOT NULL,
	FinishMaliYear char(10) NOT NULL,
	BankState tinyint NOT NULL,
	EconomicNumber varchar(12) NULL,
	PostalCode varchar(12) NULL,
	BudgetBankName varchar(120) NULL,
	Language1 int NOT NULL,
	Language2 int NOT NULL,
	BaseSalary money NULL,
	StoreSalaryID int NULL,
	ManagementName_L1 varchar(100) NULL,
	ManagementName_L2 varchar(100) NULL,
	UpperBonus money NOT NULL,
	BonusTaxExemption money NOT NULL,
	TaxBonusCo money NOT NULL,
	RecalSalaryLaw varchar(250) NULL,
	SpacialWageCode int NOT NULL,
	AccountDBNameOld varchar(250) NULL,
	TaxKindCalc tinyint NOT NULL,
	ActiveSalary tinyint NOT NULL,
	ActivePayRoll tinyint NOT NULL,
	ActiveMange tinyint NOT NULL,
	ActiveSchedule tinyint NOT NULL,
	ActiveOrganization tinyint NOT NULL,
	FunctionKind int NOT NULL,
	DecContainTaxunder tinyint NOT NULL,
	DecContainTaxNumerator tinyint NOT NULL,
	TFN varchar(12) NULL,
	PayMainKind int NULL,
	PayPettyKind int NULL,
	TIN varchar(12) NULL,
	Signer1NationalID varchar(10) NULL,
	Signer1Name varchar(15) NULL,
	Signer1LastName varchar(50) NULL,
	Signer1Job varchar(30) NULL,
	Signer2NationalID varchar(10) NULL,
	Signer2Name varchar(15) NULL,
	Signer2LastName varchar(50) NULL,
	Signer2Job varchar(30) NULL,
	InterdictItemSumSalary1 nvarchar(250) NULL,
	InterdictItemSumSalary2 nvarchar(250) NULL,
	InterdictItem4ListSalary nvarchar(250) NULL,
	HideSalaryID4ListSalary nvarchar(250) NULL,
	AccountServerName nvarchar(50) NULL,
	SubDayOfCurrentMonth tinyint NOT NULL,
	ChkHideSalaryID4ListSalary tinyint NOT NULL,
	TaxWithExemptionsTimeSheets tinyint NOT NULL,
	SituationTime tinyint NOT NULL,
	OffTimeInFish tinyint NOT NULL,
	ChkGroupInterdicts tinyint NOT NULL,
	ChkStateArchiveEdit tinyint NOT NULL,
	ScanState tinyint NOT NULL,
	ArchiveScan varchar(255) NULL,
	ActiveRangeProject tinyint NOT NULL,
	FunctionActiveMinutes int NOT NULL,
	AccDetailCodeEqualPersonelNo int NOT NULL,
	OffTimeControlMessages tinyint NOT NULL,
	SysSmsActive tinyint NOT NULL,
	LastVersion char(20) NULL,
	EidiDisplayedSeparatelyOnTaxList tinyint NOT NULL,
	HasSeprateDetailCompany tinyint NOT NULL,
	PrvBankName char(30) NULL,
	MinBenefitsInsuranceList money NOT NULL,
	VacationMounthFrom char(7) NULL,
	VacationMounthTo char(7) NULL,
	DecExtInFishPrint nvarchar(250) NULL,
	IntegrateLoanRemain tinyint NULL,
	SendDoc2OtherSystems int NOT NULL,
	PonyTaxAble tinyint NOT NULL,
	PersonelNoInInterdictNo tinyint NOT NULL,
	NumberOffDaysInMonth float NOT NULL,
	BenCode int NULL,
	ActAnnuityInlistSalary tinyint NOT NULL,
	SalaryID4PartMakeBankDSK nvarchar(250) NULL,
	FloatToTimeActive tinyint NOT NULL,
	FunctionItemSeparation tinyint NOT NULL,
	UnicNationalID tinyint NOT NULL,
	SalaryID4PartKind tinyint NOT NULL,
	ActRewardInlistSalary tinyint NOT NULL,
	Eid_E_Tax_IncludedInTheTaxList tinyint NOT NULL,
	TaxWithExemptionsFunctionDay tinyint NOT NULL,
	FunctionDayDefault tinyint NOT NULL,
	ClockCard4FieldName varchar(30) NOT NULL,
	DocTypeCode tinyint NOT NULL,
	GOvConstAmount money NOT NULL,
	GOvSpouse money NOT NULL,
	GOvChild money NOT NULL,
	InterimInterest tinyint NOT NULL,
	DecimalOrMinute Tinyint NOT NULL CONSTRAINT DF_Config_DecimalOrMinute DEFAULT (0),
	NoPrintSalaryIDs varchar (250)
) ON [PRIMARY]
GO


/****** Object:  Table Pay.DecExtItems    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.DecExtItems') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Pay.DecExtItems(
	DecExtItemID int NOT NULL,
	DecExtID int NOT NULL,
	SalaryID int NOT NULL,
	DayQuntity float NULL,
	Amount money NOT NULL,
	Rate money NOT NULL,
 CONSTRAINT PK_DecExtItems PRIMARY KEY CLUSTERED 
(
	DecExtItemID ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Pay.Educations    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.Educations') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Pay.Educations(
	EducationCode varchar(20) NOT NULL,
	EducationName varchar(100) NULL,
 CONSTRAINT PK_Educations PRIMARY KEY CLUSTERED 
(
	EducationCode ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Pay.FixedCalculated    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.FixedCalculated') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Pay.FixedCalculated(
	FixedCID int IDENTITY(1,1) NOT NULL,
	FunctionID int NOT NULL,
	FormInfoID int NOT NULL,
	PersonelNO int NOT NULL,
	ProjectID int NOT NULL,
	OfficeCode int NOT NULL,
	JobCede int NOT NULL,
	SalaryID int NOT NULL,
	Mounth tinyint NOT NULL,
	Price money NOT NULL,
	BedBes tinyint NOT NULL,
	CalCulateKind tinyint NOT NULL,
	AccTopicCode bigint NOT NULL,
	AccDetailCode int NOT NULL,
	AccCTopicCode int NOT NULL,
	AccCTopicCode2 int NOT NULL,
	ShowListKind tinyint NOT NULL,
	ArchiveDate char(10) NULL,
	DocNo int NULL,
	DocDate char(10) NULL,
	ArchiveID int NOT NULL,
	AccCTopicCode3 int NOT NULL,
	ProcCode int NULL,
	MounthRetard tinyint NULL,
	YearRetard int NULL,
	YearID int NULL,
	Years int NULL,
	LabelID int NOT NULL,
 CONSTRAINT PK_FixedCalculated PRIMARY KEY CLUSTERED 
(
	FixedCID ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Pay.FixedLabels    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.FixedLabels') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Pay.FixedLabels(
	LabelID int NOT NULL,
	LabelDateTime datetime NOT NULL,
	Descriptions varchar(500) NOT NULL,
 CONSTRAINT PK_FixedLabels PRIMARY KEY CLUSTERED 
(
	LabelID ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Pay.FormInfoItems    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.FormInfoItems') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Pay.FormInfoItems(
	ItemID int NOT NULL,
	FormInfoID int NOT NULL,
	SalaryID int NOT NULL,
	Coefficient float NOT NULL,
	Coefficient2 float NULL,
	Amount money NOT NULL,
	SalaryID2 int NULL,
 CONSTRAINT PK_FormInfoItems PRIMARY KEY CLUSTERED 
(
	ItemID ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Pay.FormsInfo    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.FormsInfo') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Pay.FormsInfo(
	FormInfoID int NOT NULL,
	FormType smallint NULL,
	InfoID int NULL,
	InfoName_L1 varchar(255) NULL,
	InfoName_L2 varchar(255) NULL,
	PrvInfoID int NULL,
	Amount money NULL,
	Amount2 money NULL,
	Coefficient float NULL,
	StandardDays float NULL,
	StandardTimes float NULL,
	AccTopicCode int NULL,
	AccDetailCode int NULL,
	AccCTopicCode int NULL,
	AccCTopicCode2 int NULL,
	CalCulateType tinyint NOT NULL,
	RecallFormInfoID1 varchar(150) NULL,
	RecallFormInfoID2 varchar(150) NULL,
	WordDocuments varchar(150) NULL,
	RecalKindClock tinyint NOT NULL,
	FirstAmount money NOT NULL,
	MaxDay float NOT NULL,
	MaxTime float NOT NULL,
	MuliplyInDay tinyint NOT NULL,
	AccCTopicCode3 int NOT NULL,
	PayMentActive tinyint NOT NULL,
	TaxCode tinyint NULL,
	WageCalcKind tinyint NOT NULL,
	FormInfoID2 int NULL,
	Years int NULL,
	Note text NULL,
	Checking4AllPersonnel tinyint NOT NULL,
	EmployerAmountActive tinyint NOT NULL,
	AccTopicCodeB int NULL,
	AccDetailCodeB int NULL,
	DisableDecContainTaxNumerator tinyint NOT NULL,
	SalaryIDinDocActive tinyint NOT NULL,
 CONSTRAINT PK_FormsInfo PRIMARY KEY CLUSTERED 
(
	FormInfoID ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table Pay.FormTypes    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.FormTypes') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Pay.FormTypes(
	FormType smallint NOT NULL,
	FormCaption_L1 varchar(150) NOT NULL,
	FormCaption_L2 varchar(150) NULL,
	DurationDayActive tinyint NULL,
	DurationTimeActive tinyint NULL,
	ExemptPersonActive tinyint NULL,
	SalaryEffectKind tinyint NULL,
	KargozinyEffectKind tinyint NULL,
	RecalSalaryTypes varchar(250) NULL,
	SalaryKind tinyint NULL,
	CoefficientActive tinyint NULL,
	AmountActive tinyint NULL,
	Amount2Active tinyint NULL,
	RecallFormTypes smallint NULL,
	UseEndMounthKind tinyint NULL,
	AidInfoNo1Active tinyint NULL,
	AidInfoDate1Active tinyint NULL,
	AidInfo1Caption varchar(50) NULL,
	AidInfoNo2Active tinyint NULL,
	AidInfoDate2Active tinyint NULL,
	AidInfo2Caption varchar(50) NULL,
	TopicCodeKind tinyint NULL,
	DetailCodeKind tinyint NULL,
	CTopicCodeKind tinyint NULL,
	CTopicCode2Kind tinyint NULL,
	DisplayFormType tinyint NULL,
	ReportFileName1 varchar(50) NULL,
	ReportFileName2 varchar(50) NULL,
	ReportFileName3 varchar(50) NULL,
	ReportFileName4 varchar(50) NULL,
	Note_L1 text NULL,
	Note_L2 text NULL,
	WordDocumentsActive tinyint NULL,
	FunctionShow tinyint NOT NULL,
	RecalKindClock tinyint NOT NULL,
	CalCulateTypeActive tinyint NULL,
	FormInfo4Function int NOT NULL,
	ChangeAmountActive tinyint NOT NULL,
	FirstAmountActive tinyint NOT NULL,
	NoteActive tinyint NULL,
	LimitMounthActive tinyint NOT NULL,
	ReportFooter text NULL,
	MaxDayTimeActive tinyint NOT NULL,
	ReportCaption1 varchar(150) NOT NULL,
	ReportCaption2 varchar(150) NOT NULL,
	ReportCaption3 varchar(150) NOT NULL,
	ReportCaption4 varchar(150) NOT NULL,
	MnuRow tinyint NOT NULL,
	ShowMnuId tinyint NOT NULL,
	ShowOperators tinyint NOT NULL,
	MuliplyInDayActive tinyint NOT NULL,
	CTopicCode3Kind tinyint NOT NULL,
	EarthProceedsActivate tinyint NOT NULL,
	ADDLevelID tinyint NOT NULL,
	EditLevelID tinyint NOT NULL,
	DeleteLevelID tinyint NOT NULL,
	ChangeStateLevelID tinyint NOT NULL,
	PrintLevelID tinyint NOT NULL,
	PrintDesignLevelID tinyint NOT NULL,
	FormRelatedLevelID tinyint NOT NULL,
	AccCodeLevelID tinyint NOT NULL,
	OtherCtrlLevelID tinyint NOT NULL,
	XlsLevelID tinyint NOT NULL,
	FinalStateEditLevelID tinyint NOT NULL,
	ConstantStateEditLevelID tinyint NOT NULL,
	CalcLevelID tinyint NOT NULL,
	SendLevelID tinyint NOT NULL,
	DecExtStateActive tinyint NOT NULL,
	AmountCaption varchar(50) NULL,
	Amount2Caption varchar(50) NULL,
	StandardDayCaption varchar(50) NULL,
	StandardTimeCaption varchar(50) NULL,
	ShowMnuPlace varchar(20) NULL,
	PayMentShow tinyint NOT NULL,
	ProcName varchar(50) NULL,
	EarthName varchar(50) NULL,
	TaxCodeShow tinyint NOT NULL,
	WageCalcKindActive tinyint NOT NULL,
	FirstAmountName varchar(50) NOT NULL,
	PrefixInfoID int NULL,
	MasterFormType int NULL,
	ContactFormType int NULL,
	RepetitiveControl tinyint NOT NULL,
	ActiveYearID tinyint NOT NULL,
	PersonelTypeInfoRow tinyint NOT NULL,
	PrintAfterPost tinyint NOT NULL,
	InsertAccCode bit NULL,
	WorkFlowID int NULL,
	RepetitiveControlInfoID tinyint NOT NULL,
	SalaryIDinDocShow tinyint NOT NULL,
 CONSTRAINT PK_FormTypes PRIMARY KEY CLUSTERED 
(
	FormType ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table Pay.FunctionDay    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.FunctionDay') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Pay.FunctionDay(
	FunID int NOT NULL,
	OfficeCode int NOT NULL,
	FunNo int NOT NULL,
	FunDate char(10) NOT NULL,
	FirstUser varchar(50) NULL,
	LastUser varchar(50) NULL,
	state tinyint NOT NULL,
	note text NULL,
	YearID int NULL,
 CONSTRAINT PK_FunctionDay PRIMARY KEY CLUSTERED 
(
	FunID ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table Pay.FunctionDayItems    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.FunctionDayItems') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Pay.FunctionDayItems(
	FunItemID int NOT NULL,
	FunID int NOT NULL,
	PersonelNo int NOT NULL,
	PeresentID int NOT NULL,
	FunTime float NOT NULL,
	ExtTime float NOT NULL,
	ShiftNo int NOT NULL,
	WorkID int NOT NULL,
	EarthCode int NOT NULL,
	ProcCode int NOT NULL,
	FirstUser varchar(50) NULL,
	LastUser varbinary(50) NULL,
	StandardRate money NOT NULL,
	AccCTopicCode3 int NOT NULL,
 CONSTRAINT PK_FunctionDayItems PRIMARY KEY CLUSTERED 
(
	FunItemID ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Pay.Functions    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.Functions') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Pay.Functions(
	FunctionID int NOT NULL,
	FormInfoID int NOT NULL,
	Mounth tinyint NOT NULL,
	PersonelNo int NOT NULL,
	FunctionDay float NULL,
	FunctionTime float NULL,
	ProjectID int NOT NULL,
	JobCode int NOT NULL,
	OfficeCode int NOT NULL,
	ProjectRow int NULL,
	ProcCode int NULL,
	CTopic3 int NULL,
	SickDay int NULL,
	YearID int NULL,
	Years int NULL,
	Situation tinyint NOT NULL,
 CONSTRAINT PK_Functions PRIMARY KEY CLUSTERED 
(
	FunctionID ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Pay.FunctionsItems    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.FunctionsItems') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Pay.FunctionsItems(
	FunctionsItemsID int NOT NULL,
	FunctionID int NOT NULL,
	SalaryID int NULL,
	FDaily float NULL,
	FHours float NULL,
	Amount money NULL,
	AccTopicCode int NULL,
	AccDetailCode int NULL,
	AccCTopicCode int NULL,
	AccCTopicCode2 int NULL,
 CONSTRAINT PK_FunctionsItems PRIMARY KEY CLUSTERED 
(
	FunctionsItemsID ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Pay.FunctionSpecial    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.FunctionSpecial') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Pay.FunctionSpecial(
	ID int IDENTITY(1,1) NOT NULL,
	YearID int NOT NULL,
	Year smallint NOT NULL,
	Mounth tinyint NOT NULL,
	PersonelNo int NOT NULL,
	FunctionDay float NOT NULL,
	SickDay float NOT NULL,
	FunctionTime float NOT NULL,
	OverTime float NOT NULL,
	WorkingHoliday float NOT NULL,
	NightWork float NOT NULL,
	FractionWorkTime float NOT NULL,
	FractionWorkDay float NOT NULL,
 CONSTRAINT PK_FunctionSpecial PRIMARY KEY CLUSTERED 
(
	ID ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Pay.FunctionSpecialControl    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.FunctionSpecialControl') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Pay.FunctionSpecialControl(
	ID int IDENTITY(1,1) NOT NULL,
	YearID int NOT NULL,
	ControlDate char(10) NOT NULL,
	PersonelNo int NOT NULL,
	OfficeCode int NULL,
	ProjectID int NULL,
	CarCode int NULL,
	ActivityCode int NULL,
	ProcCode int NULL,
	FunctionKind int NULL,
	FunctionTime float NOT NULL,
	FunAmount float NOT NULL,
 CONSTRAINT PK_FunctionSpecialControl PRIMARY KEY CLUSTERED 
(
	ID ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Pay.GetReprots    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.GetReprots') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Pay.GetReprots(
	GetReprotsID int NOT NULL,
	GetReprotsName varchar(80) NOT NULL,
	OtherRptFiles varchar(250) NULL,
	OtherRptCaptions varchar(250) NULL,
	ActiveFunctionsItems tinyint NOT NULL,
	DeleteColumnIfSumWageIsZero tinyint NOT NULL,
 CONSTRAINT PK_GetReprots PRIMARY KEY CLUSTERED 
(
	GetReprotsID ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Pay.GetRptColumns    Script Date: 28/02/1401 04:56:38 ب.ظ ******/   
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.GetRptColumns') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)   
CREATE TABLE Pay.GetRptColumns(
    ID INT IDENTITY(1,1) NOT NULL,
	ColumnsID int NOT NULL,
	GetReprotsID int NOT NULL,
	ColumnsName varchar(80) NOT NULL,
	Kind tinyint NOT NULL,
	ColumnsSalaryID varchar(300) NULL,
	Amount money NULL,
	ColumnsSalaryIDSub nvarchar(300) NULL,
	ColumnsRoundNo float NOT NULL,
	ColumnsCalc nvarchar(2000) NULL,
	ConstID int NULL,
 CONSTRAINT PK_GetRptColumns PRIMARY KEY CLUSTERED 
(
	ID ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Pay.GetRptConstColumns    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.GetRptConstColumns') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
CREATE TABLE Pay.GetRptConstColumns(
	ConstID int NOT NULL,
	ColumnsName varchar(250) NOT NULL,
	Alias varchar(100) NULL,
	ColumnsCaption varchar(100) NULL,
	TabelName varchar(100) NULL,
	IsOutPut tinyint NOT NULL,
	SortType tinyint NULL,
	SortOrder tinyint NULL,
	GroupBy tinyint NOT NULL,
 CONSTRAINT PK_GetRptConstColumns PRIMARY KEY CLUSTERED 
(
	ConstID ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Pay.InsouranceTemp    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.InsouranceTemp') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Pay.InsouranceTemp(
	insuranceID tinyint NULL,
	PeopleExempt tinyint NOT NULL,
	InsouranceEmployer money NULL,
	FDaily float NULL
) ON [PRIMARY]
GO
/****** Object:  Table Pay.InsuranceCONSTinfo    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.InsuranceCONSTinfo') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
CREATE TABLE Pay.InsuranceCONSTinfo(
	insuranceNo tinyint NOT NULL,
	FormInfoID int NULL,
	insurancename varchar(50) NOT NULL,
	EmployerName varchar(50) NULL,
	workShop varchar(20) NULL,
	InsuranceLabel_L1 varchar(20) NULL,
	InsuranceLabel_L2 varchar(20) NULL,
	Employeeshare float NOT NULL,
	Employershare float NOT NULL,
	InactionInsuranceShare float NULL,
	insuranceUp money NOT NULL,
	dailywage money NULL,
	AccTopicCode int NULL,
	AccDetailCode int NULL,
	AccCTopicCode int NULL,
	AccCTopicCode2 int NULL,
	AccCTopicCode3 int NULL,
	tel varchar(20) NULL,
	address varchar(255) NULL,
	HardShipPercent tinyint NOT NULL,
	PeopleExempt tinyint NOT NULL,
	OffShootName_L1 varchar(50) NULL,
	PostalCode varchar(15) NULL,
	PoorsantRate float NULL,
	TaxCode tinyint NULL,
	MON_PYM varchar(10) NULL,
	AccTopicCodeExempt bigint NOT NULL,
	AccDetailCodeExempt int NOT NULL,
	AccCTopicCodeExempt int NOT NULL,
	AccCTopicCode2Exempt int NOT NULL,
	AccCTopicCode3Exempt int NOT NULL,
 CONSTRAINT PK_InsuranceCONSTinfo PRIMARY KEY CLUSTERED 
(
	insuranceNo ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Pay.InterdictItems    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.InterdictItems') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)  
CREATE TABLE Pay.InterdictItems(
	InterdictItemsID int NOT NULL,
	InterdictID int NOT NULL,
	SalaryID int NOT NULL,
	Amount money NOT NULL,
	FirstMounth tinyint NULL,
	EndMounth tinyint NULL,
	AccTopicCode int NULL,
	AccDetailCode int NULL,
	AccCTopicCode int NULL,
	AccCTopicCode2 int NULL,
	ExpenseType tinyint NULL,
	UserID int NULL,
	ItemNote_L1 varchar(250) NULL,
	ItemNote_L2 varchar(250) NULL,
	RetardDate char(10) NULL,
	Firstdate char(10) NULL,
	Enddate char(10) NULL,
	JobScore float NULL,
 CONSTRAINT PK_InterdictItems PRIMARY KEY CLUSTERED 
(
	InterdictItemsID ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Pay.Interdicts    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.Interdicts') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)  
CREATE TABLE Pay.Interdicts(
	InterdictID int NOT NULL,
	InterdictNo varchar(50) NOT NULL,
	InterdictDate char(10) NOT NULL,
	subcompanyCode int NOT NULL,
	PersonelNo int NOT NULL,
	OfficeCode int NOT NULL,
	jobCode int NOT NULL,
	grade int NOT NULL,
	jobCity int NOT NULL,
	InterdicType int NOT NULL,
	EmployTypeID int NULL,
	InterdicStartDate char(10) NULL,
	employDaytime tinyint NULL,
	AccTopicCode int NULL,
	AccDetailCode int NULL,
	AccCTopicCode int NULL,
	AccCTopicCode2 int NULL,
	KargozinyNote_L1 text NULL,
	KargozinyNote_L2 text NULL,
	State tinyint NULL,
	UserID int NULL,
	TotalYearsWork tinyint NOT NULL,
	InterdicEndDate char(10) NULL,
	Comment text NULL,
	InterdicStartDateM datetime NULL,
	TaxCalculationType int NULL,
	insuranceID tinyint NOT NULL,
	ProjectID int NOT NULL,
	StandardEmployAmount money NOT NULL,
	ManegePercent float NOT NULL,
	OfficeManegePercent float NOT NULL,
	GroupID int NOT NULL,
	PayehNo int NOT NULL,
	GrpExpense int NOT NULL,
	SubFunctionID int NOT NULL,
	SubInterdictID int NOT NULL,
	LastInterdictID int NOT NULL,
	AccCTopicCode3 int NOT NULL,
	GradeDate char(10) NULL,
	HasRetard tinyint NOT NULL,
	InsuranceStartDate char(10) NULL,
	InsuranceEndDate char(10) NULL,
	jobsGroup int NULL,
	TaxMounth tinyint NULL,
	TaxDays smallint NULL,
	LastUser nvarchar(20) NULL,
	FirstUser nvarchar(20) NULL,
	AidNo1 varchar(20) NULL,
	AidDate1 char(10) NULL,
	TypeOfContract int NULL,
	StandardClock decimal(18, 4) NULL,
	RetardActive tinyint NOT NULL,
 CONSTRAINT PK_Interdicts PRIMARY KEY CLUSTERED 
(
	InterdictID ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table Pay.jobs    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.jobs') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
CREATE TABLE Pay.jobs(
	jobCode int NOT NULL,
	jobName varchar(100) NOT NULL,
	JobLocation int NOT NULL,
	OrganPos int NULL,
	Organizational int NULL,
	GroupCode int NULL,
	JobDefinition varchar(500) NULL,
	CreationDate char(10) NULL,
	GradeID int NULL,
	RankID int NULL,
 CONSTRAINT PK_jobs PRIMARY KEY CLUSTERED 
(
	jobCode ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Pay.jobsItems    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.jobsItems') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
CREATE TABLE Pay.jobsItems(
	ID int IDENTITY(1,1) NOT NULL,
	jobCode int NOT NULL,
	Descriptions varchar(500) NOT NULL,
	InfoKind smallint NOT NULL,
 CONSTRAINT PK_jobsItems PRIMARY KEY CLUSTERED 
(
	ID ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Pay.jobsSalaryRanges    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.jobsSalaryRanges') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
CREATE TABLE Pay.jobsSalaryRanges(
	jobCode int NOT NULL,
	SalaryID int NOT NULL,
	Amount money NOT NULL,
 CONSTRAINT PK_jobsSalaryRanges PRIMARY KEY CLUSTERED 
(
	jobCode ASC,
	SalaryID ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Pay.jobsTerms    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.jobsTerms') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)  
CREATE TABLE Pay.jobsTerms(
	ID int IDENTITY(1,1) NOT NULL,
	jobCode int NOT NULL,
	LicenceCode int NOT NULL,
	StudyField int NULL,
	ExperienceYear decimal(18, 4) NULL,
	ExperienceMonth decimal(18, 4) NULL,
	Duration decimal(18, 4) NULL,
	MinPoints decimal(18, 4) NULL,
	MaxPoints decimal(18, 4) NULL,
	PercentExtra decimal(18, 4) NULL,
	JobLevel int NULL,
	TestCondition int NULL,
	Note varchar(200) NULL,
 CONSTRAINT PK_jobsTerms PRIMARY KEY CLUSTERED 
(
	ID ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Pay.Mission    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.Mission') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
CREATE TABLE Pay.Mission(
	MissionID int IDENTITY(1,1) NOT NULL,
	MissionNo int NOT NULL,
	MissionDate char(10) NOT NULL,
	State tinyint NOT NULL,
	PersonelNo int NOT NULL,
	MissionPlace varchar(100) NULL,
	CompanyCode int NOT NULL,
	MissionStartDate char(10) NULL,
	MissionEndDate char(10) NULL,
	MissionFunction float NULL,
	MissionTopic varchar(1000) NULL,
	TransPort varchar(70) NULL,
	OtherTopic varchar(1000) NULL,
	MissionKind int NULL,
	AccTopicCode bigint NULL,
	AccDetailCode int NOT NULL,
	AccCTopicCode int NOT NULL,
	AccCTopicCode2 int NOT NULL,
	AccCTopicCode3 int NOT NULL,
	DocNo int NULL,
	YearID int NULL,
 CONSTRAINT PK_Mission PRIMARY KEY CLUSTERED 
(
	MissionID ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Pay.MissionInfo    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.MissionInfo') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)  
CREATE TABLE Pay.MissionInfo(
	MissionInfoID int IDENTITY(1,1) NOT NULL,
	MissionID int NOT NULL,
	InfoType tinyint NOT NULL,
	AccDetailCode int NOT NULL,
	AccCTopicCode int NOT NULL,
	AccCTopicCode2 int NOT NULL,
	AccCTopicCode3 int NOT NULL,
	ExpID int NULL,
	StartDate char(10) NULL,
	EndDate char(10) NULL,
	FunMission float NULL,
	RateMission float NULL,
	CofficentManage float NULL,
	Price money NULL,
 CONSTRAINT PK_MissionInfo PRIMARY KEY CLUSTERED 
(
	MissionInfoID ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Pay.PersonelAccounts    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.PersonelAccounts') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Pay.PersonelAccounts(
	PersonelNo int NOT NULL,
	AccountsType int NOT NULL,
	BankCode_Pa int NULL,
	BranchInfo_Pa int NULL,
	AccBankType_Pa int NULL,
	BranchCode_Pa varchar(12) NULL,
	AccountNumber_Pa varchar(30) NULL,
	CreditCardNo_Pa varchar(25) NULL,
 CONSTRAINT PK_PersonelAccounts PRIMARY KEY CLUSTERED 
(
	PersonelNo ASC,
	AccountsType ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Pay.PersonelArchives    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.PersonelArchives') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
CREATE TABLE Pay.PersonelArchives(
	ArchiveID int NOT NULL,
	PersonelNo int NOT NULL,
	Comment varchar(200) NULL,
	FormInfoID int NOT NULL,
 CONSTRAINT PK_Archives PRIMARY KEY CLUSTERED 
(
	ArchiveID ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Pay.PersonelDecExt    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.PersonelDecExt') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Pay.PersonelDecExt(
	DecExtID int NOT NULL,
	FormInfoID int NULL,
	PersonelNo int NULL,
	EmployeeAmount money NULL,
	FirstMounth int NULL,
	EndMounth int NULL,
	AidNo1 varchar(30) NULL,
	AidDate1 char(10) NULL,
	AidNo2 varchar(30) NULL,
	AidDate2 char(10) NULL,
	DayQuntity float NULL,
	DayTime float NULL,
	EmployerAmount money NULL,
	FormInfoID2 int NULL,
	Note_L1 nvarchar(4000) NULL,
	Note_L2 nvarchar(4000) NULL,
	AccTopicCode int NULL,
	AccDetailCode int NULL,
	AccCTopicCode int NULL,
	AccCTopicCode2 int NULL,
	PaymentLoan money NOT NULL,
	OfficeCode int NOT NULL,
	ProjectInfoID int NULL,
	OfficeInfoID int NULL,
	EndDate char(10) NULL,
	Minute_ float NOT NULL,
	AccCTopicCode3 int NOT NULL,
	State tinyint NOT NULL,
	ProcCode int NULL,
	EarthCode int NULL,
	Settlement money NULL,
	YearID int NULL,
	StartYear int NULL,
	EndYear int NULL,
	Situation tinyint NOT NULL,
	SettlementDate char(10) NULL,
	PayableDuringMonth tinyint NOT NULL,
	LastUser nvarchar(20) NULL,
	FirstUser nvarchar(20) NULL,
	DocNoBonus int NULL,
	DocDateBonus char(10) NULL,
	DocNoAnnuity int NULL,
	DocDateAnnuity char(10) NULL,
	NumberOfMonth int NOT NULL,
	leaveCount float NULL,
	leavePrice money NOT NULL,
 CONSTRAINT PK_PersonelDecExt PRIMARY KEY CLUSTERED 
(
	DecExtID ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Pay.PersonelDecExtItem    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.PersonelDecExtItem') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Pay.PersonelDecExtItem(
	DecExtID int NOT NULL,
	Years smallint NOT NULL,
	Months smallint NOT NULL,
	Amount money NOT NULL,
	ID int IDENTITY(1,1) NOT NULL,
 CONSTRAINT PK_PersonelDecExtItem PRIMARY KEY CLUSTERED 
(
	ID ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Pay.PersonelInfo    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.PersonelInfo') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)  
CREATE TABLE Pay.PersonelInfo(
	PersonelNo int NOT NULL,
	PersonelState int NOT NULL,
	name_L1 varchar(25) NOT NULL,
	name_L2 varchar(25) NULL,
	lastName_L1 varchar(30) NOT NULL,
	lastName_L2 varchar(30) NULL,
	fatherName_L1 varchar(25) NOT NULL,
	fatherName_L2 varchar(25) NULL,
	NationalityCode int NULL,
	BirthDate char(10) NOT NULL,
	SodurDate char(10) NULL,
	BirthPlace int NULL,
	SodurPlace int NULL,
	NationalID varchar(12) NULL,
	IDNumber varchar(12) NOT NULL,
	sex int NOT NULL,
	marriage int NULL,
	childNumber int NULL,
	SupPepNumber tinyint NULL,
	LicenceCode int NULL,
	studyField int NULL,
	StudyCityCode int NULL,
	StudyFinishedate char(10) NULL,
	UnivercityCode int NULL,
	StudyAverage float NULL,
	employDate char(10) NOT NULL,
	finishEmployDate char(10) NULL,
	BankCode int NULL,
	BranchCode varchar(12) NULL,
	AccountNumber varchar(30) NULL,
	AccBankType int NULL,
	insuranceID tinyint NOT NULL,
	InsuranceNumber varchar(18) NULL,
	TaxZone int NULL,
	TaxCalculationType int NULL,
	CoTax numeric(10, 0) NULL,
	Tel varchar(15) NULL,
	address_L1 varchar(255) NULL,
	address_L2 varchar(255) NULL,
	Note_L1 varchar(250) NULL,
	Note_L2 varchar(250) NULL,
	StoreDayTime tinyint NOT NULL,
	employDatem datetime NULL,
	StoreDayTimeActive bit NOT NULL,
	EmployID varchar(12) NULL,
	AccTopicCode int NOT NULL,
	AccDetailCode int NOT NULL,
	AccCTopicCode int NOT NULL,
	AccCTopicCode2 int NOT NULL,
	PercentWound float NULL,
	SoldierState int NULL,
	SpecialJob tinyint NOT NULL,
	AccCTopicCode3 int NOT NULL,
	CreditCardNo varchar(25) NULL,
	MaskanKind int NOT NULL,
	SpecialState int NOT NULL,
	PostalCode varchar(15) NULL,
	BranchInfo int NULL,
	OffTime int NOT NULL,
	DSW_JOB char(6) NULL,
	EducationType int NULL,
	EducationDegree int NULL,
	EducationGrade int NULL,
	TimeCardNumber varchar(15) NULL,
	NumberOfMedicalOffice int NULL,
	IssuedProvince int NULL,
	IssuedSection int NULL,
	IssuedVillage int NULL,
	BirthProvince int NULL,
	BirthSection int NULL,
	BirthVillage int NULL,
	EmployTypeID int NULL,
	Mobile varchar(20) NULL,
	Email nvarchar(100) NULL,
	MartyrChild bit NOT NULL,
	TelegramChatID char(30) NULL,
 CONSTRAINT PK_PersonelInfo PRIMARY KEY CLUSTERED 
(
	PersonelNo ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Pay.PersonelSponsorship    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.PersonelSponsorship') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
CREATE TABLE Pay.PersonelSponsorship(
	ID int IDENTITY(1,1) NOT NULL,
	PersonelNo int NOT NULL,
	Name varchar(25) NOT NULL,
	lastName varchar(30) NOT NULL,
	FatherName varchar(25) NOT NULL,
	IDNumber varchar(12) NOT NULL,
	NationalID varchar(12) NULL,
	BirthDate char(10) NOT NULL,
	Kind tinyint NOT NULL,
	State tinyint NULL,
	Note varchar(50) NULL,
	Sex tinyint NOT NULL,
	MarriageID int NULL,
	StudyActive tinyint NOT NULL,
	kinship int NULL,
	JobType int NULL,
	InsuranceType int NULL,
	InsurancePercent float NULL,
	JobTitle varchar(70) NULL,
	MaritalDate char(10) NULL,
	DivorceDate char(10) NULL,
	DeathDate char(10) NULL,
	Degree int NULL,
	GraduationDate char(10) NOT NULL,
 CONSTRAINT PK_PersonelSponsorship PRIMARY KEY CLUSTERED 
(
	ID ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Pay.PersonelTypeInfo    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.PersonelTypeInfo') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)  
CREATE TABLE Pay.PersonelTypeInfo(
	PersonelNo int NOT NULL,
	FormType smallint NOT NULL,
	FormInfoID int NOT NULL,
 CONSTRAINT PK_PersonelTypeInfo PRIMARY KEY CLUSTERED 
(
	PersonelNo ASC,
	FormType ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Pay.Pony    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.Pony') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
CREATE TABLE Pay.Pony(
	PonyID int IDENTITY(1,1) NOT NULL,
	PonyNo int NOT NULL,
	PonyDate char(10) NOT NULL,
	PersonelNo int NOT NULL,
	AdjustDate char(10) NOT NULL,
	FunctionYearly float NULL,
	Months tinyint NULL,
	CurrentMonthsPay money NULL,
	UselessLeave float NULL,
	UselessLeavePay money NULL,
	AnnuityOldPay money NULL,
	Annuity float NULL,
	AnnuityPay money NULL,
	Tide float NULL,
	TidePay money NULL,
	RemainLoan money NULL,
	DebitCredit money NULL,
	Note varchar(500) NULL,
	Tax money NOT NULL,
	SalaryNet money NOT NULL,
	SalaryNonNet money NOT NULL,
	SalarySum money NOT NULL,
	SalaryPureSum money NOT NULL,
	PArchiveDate char(10) NULL,
	PArchiveID int NULL,
	OrderDate char(10) NULL,
	RealDate char(10) NULL,
 CONSTRAINT PK_Pony PRIMARY KEY CLUSTERED 
(
	PonyID ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Pay.PonyArchives    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.PonyArchives') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
CREATE TABLE Pay.PonyArchives(
	PonyArchivesID int IDENTITY(1,1) NOT NULL,
	PonyID int NOT NULL,
	PonyKind tinyint NOT NULL,
	ExtraCode int NULL,
	ExtraCaptin nvarchar(300) NULL,
	ExtraAmount money NOT NULL,
	Mounth float NULL,
	SumFunctionDay float NULL,
	Price money NOT NULL,
 CONSTRAINT PK_PonyArchives PRIMARY KEY CLUSTERED 
(
	PonyArchivesID ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Pay.PonyDebitCredits    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.PonyDebitCredits') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Pay.PonyDebitCredits(
	PonyDebitCreditsID int IDENTITY(1,1) NOT NULL,
	PonyID int NOT NULL,
	PonyNote nvarchar(300) NOT NULL,
	Amount money NOT NULL,
 CONSTRAINT PK_PonyDebitCredits PRIMARY KEY CLUSTERED 
(
	PonyDebitCreditsID ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Pay.RecalClocks    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.RecalClocks') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
CREATE TABLE Pay.RecalClocks(
	ID int IDENTITY(1,1) NOT NULL,
	SalaryID int NOT NULL,
	RecalClockName tinyint NOT NULL,
	StartStr tinyint NOT NULL,
	CountStr tinyint NOT NULL,
	StartFloatStr tinyint NOT NULL,
	CountFloatStr tinyint NOT NULL,
	ExcelFieldName varchar(150) NULL,
	Kind tinyint NOT NULL,
	TableFieldName varchar(150) NULL,
	ExcelFieldName2 varchar(150) NULL,
 CONSTRAINT PK_RecalClocks PRIMARY KEY CLUSTERED 
(
	ID ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Pay.SalaryRange    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.SalaryRange') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
CREATE TABLE Pay.SalaryRange(
	FormInfoID int NOT NULL,
	SalaryID int NOT NULL,
	Kind tinyint NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table Pay.ScanInfo    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.ScanInfo') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)  
CREATE TABLE Pay.ScanInfo(
	ScanType int NOT NULL,
	ScanInfoID int NOT NULL,
	ScanInfoName varchar(100) NOT NULL,
 CONSTRAINT PK_ScanInfo PRIMARY KEY CLUSTERED 
(
	ScanType ASC,
	ScanInfoID ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Pay.ScanType    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.ScanType') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Pay.ScanType(
	ScanType int NOT NULL,
	ScanTypeName nvarchar(100) NOT NULL,
 CONSTRAINT PK_ScanType PRIMARY KEY CLUSTERED 
(
	ScanType ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Pay.TaxInfo    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.TaxInfo') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
CREATE TABLE Pay.TaxInfo(
	YearID int NOT NULL,
	Mounth int NOT NULL,
	PayKind int NOT NULL,
	Branch int NULL,
	PostDate char(10) NOT NULL,
	Bank int NULL,
	TaxCheakDate char(10) NULL,
	TaxBranch varchar(50) NULL,
	TaxAccountNum char(20) NULL,
	TaxCheckSerial char(10) NULL,
	PaymentsCasesDate char(10) NOT NULL,
	PaymentsCases money NOT NULL,
	Penalties4NonSubmission money NOT NULL,
	Penalties4NonPay money NOT NULL,
	Penalties4NonSubmissionLast money NOT NULL,
	Penalties4NonPayLast money NOT NULL,
	SalarieLastMonth money NOT NULL,
	SalarieBonusesLastMonth money NOT NULL,
	TaxLastMonth money NOT NULL,
	TaxDebtLastMonth money NOT NULL,
	Paragraph int NOT NULL,
 CONSTRAINT PK_TaxInfo PRIMARY KEY CLUSTERED 
(
	YearID ASC,
	Mounth ASC,
	Paragraph ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Object:  Table Pay.WageFormula    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.WageFormula') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
CREATE TABLE Pay.WageFormula(
	SalaryID int NOT NULL,
	YearFrom int NOT NULL,
	MounthFrom tinyint NOT NULL,
	YearTo int NOT NULL,
	MounthTo tinyint NOT NULL,
	SQLCalc varchar(8000) NULL,
	WhereSQLCalc varchar(8000) NULL,
	Note nvarchar(2000) NULL,
	RunOrder tinyint NOT NULL,
 CONSTRAINT PK_WageFormula PRIMARY KEY CLUSTERED 
(
	SalaryID ASC,
	MounthFrom ASC,
	YearFrom ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO



if not exists (select * from sysindexes WHERE     (name = N'IX_DecExtItems_SalaryID')) CREATE NONCLUSTERED INDEX IX_DecExtItems_SalaryID ON Pay.DecExtItems
(
	SalaryID ASC
) ON [PRIMARY]
GO
/****** Object:  Index IX_DecExtItems_Tax    Script Date: 28/02/1401 04:56:38 ب.ظ ******/

if not exists (select * from sysindexes WHERE     (name = N'IX_DecExtItems_Tax')) CREATE NONCLUSTERED INDEX IX_DecExtItems_Tax ON Pay.DecExtItems
(
	SalaryID ASC
) ON [PRIMARY]
GO
/****** Object:  Index IX_FixedCalculated_ArchiveIDMounthPersonelNOSalaryID    Script Date: 28/02/1401 04:56:38 ب.ظ ******/

if not exists (select * from sysindexes WHERE     (name = N'IX_FixedCalculated_ArchiveIDMounthPersonelNOSalaryID')) CREATE NONCLUSTERED INDEX IX_FixedCalculated_ArchiveIDMounthPersonelNOSalaryID ON Pay.FixedCalculated
(
	ArchiveID ASC,
	Mounth ASC,
	PersonelNO ASC,
	SalaryID ASC
) ON [PRIMARY]
GO
/****** Object:  Index IX_FixedCalculated_BedBes_CalCulateKind_ShowListKind    Script Date: 28/02/1401 04:56:38 ب.ظ ******/

if not exists (select * from sysindexes WHERE     (name = N'IX_FixedCalculated_BedBes_CalCulateKind_ShowListKind')) CREATE NONCLUSTERED INDEX IX_FixedCalculated_BedBes_CalCulateKind_ShowListKind ON Pay.FixedCalculated
(
	BedBes ASC,
	CalCulateKind ASC,
	ShowListKind ASC
)
INCLUDE(PersonelNO,ProjectID,OfficeCode,SalaryID,Mounth,Price,ArchiveDate,ArchiveID)  ON [PRIMARY]
GO
/****** Object:  Index IX_FixedCalculated_BedBes_ShowListKind    Script Date: 28/02/1401 04:56:38 ب.ظ ******/


if not exists (select * from sysindexes WHERE     (name = N'IX_FixedCalculated_BedBes_ShowListKind')) CREATE NONCLUSTERED INDEX IX_FixedCalculated_BedBes_ShowListKind ON Pay.FixedCalculated
(
	BedBes ASC,
	ShowListKind ASC
)
INCLUDE(PersonelNO,ProjectID,OfficeCode,SalaryID,Mounth,Price,ArchiveDate,ArchiveID)  ON [PRIMARY]
GO
/****** Object:  Index IX_FixedCalculated_CalCulateKind_ShowListKind    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
 if not exists (select * from sysindexes WHERE     (name = N'IX_FixedCalculated_CalCulateKind_ShowListKind')) CREATE NONCLUSTERED INDEX IX_FixedCalculated_CalCulateKind_ShowListKind ON Pay.FixedCalculated
(
	CalCulateKind ASC,
	ShowListKind ASC
)
INCLUDE(PersonelNO,ProjectID,OfficeCode,Mounth,Price,ArchiveDate,ArchiveID)  ON [PRIMARY]
GO
/****** Object:  Index IX_FixedCalculated_MakeDoc    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
if not exists (select * from sysindexes WHERE     (name = N'IX_FixedCalculated_MakeDoc')) CREATE NONCLUSTERED INDEX IX_FixedCalculated_MakeDoc ON Pay.FixedCalculated
(
	Mounth ASC,
	SalaryID ASC,
	CalCulateKind ASC,
	AccTopicCode ASC,
	AccDetailCode ASC,
	AccCTopicCode ASC,
	AccCTopicCode2 ASC,
	ShowListKind ASC,
	AccCTopicCode3 ASC
) ON [PRIMARY]
GO
/****** Object:  Index IX_FixedCalculated_Mounth    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
if not exists (select * from sysindexes WHERE     (name = N'IX_FixedCalculated_Mounth')) CREATE NONCLUSTERED INDEX IX_FixedCalculated_Mounth ON Pay.FixedCalculated
(
	Mounth ASC
) ON [PRIMARY]
GO
/****** Object:  Index IX_FixedCalculated_Mounth_PersonelNo_ArchiveID_PersonelNO    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
if not exists (select * from sysindexes WHERE     (name = N'IX_FixedCalculated_Mounth_PersonelNo_ArchiveID_PersonelNO')) CREATE NONCLUSTERED INDEX IX_FixedCalculated_Mounth_PersonelNo_ArchiveID_PersonelNO ON Pay.FixedCalculated
(
	Mounth ASC,
	ArchiveID ASC,
	PersonelNO ASC
)
INCLUDE(ProjectID,OfficeCode,JobCede,SalaryID,Price,ShowListKind,ProcCode)  ON [PRIMARY]
GO
/****** Object:  Index IX_FixedCalculated_MounthArchiveIDPersonelNO    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
if not exists (select * from sysindexes WHERE     (name = N'IX_FixedCalculated_MounthArchiveIDPersonelNO')) CREATE NONCLUSTERED INDEX IX_FixedCalculated_MounthArchiveIDPersonelNO ON Pay.FixedCalculated
(
	Mounth ASC,
	ArchiveID ASC,
	PersonelNO ASC
)
INCLUDE(FunctionID,ProjectID,OfficeCode,SalaryID,Price,BedBes,CalCulateKind,ShowListKind)  ON [PRIMARY]
GO
/****** Object:  Index IX_FixedCalculated_MounthYears    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
if not exists (select * from sysindexes WHERE     (name = N'IX_FixedCalculated_MounthYears')) CREATE NONCLUSTERED INDEX IX_FixedCalculated_MounthYears ON Pay.FixedCalculated
(
	Mounth ASC,
	Years ASC
)
INCLUDE(PersonelNO,SalaryID,ArchiveID)  ON [PRIMARY]
GO
/****** Object:  Index IX_FixedCalculated_OfficeCode    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
if not exists (select * from sysindexes WHERE     (name = N'IX_FixedCalculated_OfficeCode')) CREATE NONCLUSTERED INDEX IX_FixedCalculated_OfficeCode ON Pay.FixedCalculated
(
	OfficeCode ASC
)
INCLUDE(PersonelNO,ProjectID,Mounth,Price,BedBes,ShowListKind,ArchiveDate,ArchiveID)  ON [PRIMARY]
GO
/****** Object:  Index IX_FixedCalculated_OfficeCode_ShowListKind    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
if not exists (select * from sysindexes WHERE     (name = N'IX_FixedCalculated_OfficeCode_ShowListKind')) CREATE NONCLUSTERED INDEX IX_FixedCalculated_OfficeCode_ShowListKind ON Pay.FixedCalculated
(
	OfficeCode ASC,
	ShowListKind ASC
)
INCLUDE(PersonelNO,ProjectID,Mounth,Price,ArchiveDate,ArchiveID)  ON [PRIMARY]
GO
/****** Object:  Index IX_FixedCalculated_PersonelNO    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
if not exists (select * from sysindexes WHERE     (name = N'IX_FixedCalculated_PersonelNO')) CREATE NONCLUSTERED INDEX IX_FixedCalculated_PersonelNO ON Pay.FixedCalculated
(
	PersonelNO ASC
) ON [PRIMARY]
GO
/****** Object:  Index IX_FixedCalculated_PersonelNO_Mounth    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
if not exists (select * from sysindexes WHERE     (name = N'IX_FixedCalculated_PersonelNO_Mounth')) CREATE NONCLUSTERED INDEX IX_FixedCalculated_PersonelNO_Mounth ON Pay.FixedCalculated
(
	PersonelNO ASC,
	Mounth ASC
)
INCLUDE(ProjectID,OfficeCode,JobCede,SalaryID,Price,BedBes,ArchiveID)  ON [PRIMARY]
GO
/****** Object:  Index IX_FixedCalculated_PersonelNOMounth    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
if not exists (select * from sysindexes WHERE     (name = N'IX_FixedCalculated_PersonelNOMounth')) CREATE NONCLUSTERED INDEX IX_FixedCalculated_PersonelNOMounth ON Pay.FixedCalculated
(
	PersonelNO ASC,
	Mounth ASC
)
INCLUDE(ArchiveID)  ON [PRIMARY]
GO
/****** Object:  Index IX_FixedCalculated_ShowListKind    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
if not exists (select * from sysindexes WHERE     (name = N'IX_FixedCalculated_ShowListKind')) CREATE NONCLUSTERED INDEX IX_FixedCalculated_ShowListKind ON Pay.FixedCalculated
(
	ShowListKind ASC
)
INCLUDE(PersonelNO,ProjectID,OfficeCode,SalaryID,Mounth,Price,ArchiveDate,ArchiveID)  ON [PRIMARY]
GO
/****** Object:  Index IX_FixedCalculated_ShowListKindPersonelNOMounth    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
if not exists (select * from sysindexes WHERE     (name = N'IX_FixedCalculated_ShowListKindPersonelNOMounth')) CREATE NONCLUSTERED INDEX IX_FixedCalculated_ShowListKindPersonelNOMounth ON Pay.FixedCalculated
(
	ShowListKind ASC,
	PersonelNO ASC,
	Mounth ASC
)
INCLUDE(Price,BedBes,ArchiveID)  ON [PRIMARY]
GO
/****** Object:  Index IX_FixedCalculated1    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
if not exists (select * from sysindexes WHERE     (name = N'IX_FixedCalculated1')) CREATE NONCLUSTERED INDEX IX_FixedCalculated1 ON Pay.FixedCalculated
(
	Mounth ASC,
	BedBes ASC,
	CalCulateKind ASC,
	ShowListKind ASC
)
INCLUDE(PersonelNO,Price)  ON [PRIMARY]
GO
/****** Object:  Index IX_FormsInfo    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
if not exists (select * from sysindexes WHERE     (name = N'IX_FormsInfo')) CREATE NONCLUSTERED INDEX IX_FormsInfo ON Pay.FormsInfo
(
	FormType ASC,
	InfoID ASC
) ON [PRIMARY]
GO
/****** Object:  Index IX_FormsInfo_FormType    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
if not exists (select * from sysindexes WHERE     (name = N'IX_FormsInfo_FormType')) CREATE NONCLUSTERED INDEX IX_FormsInfo_FormType ON Pay.FormsInfo
(
	FormType ASC
) ON [PRIMARY]
GO
/****** Object:  Index IX_DuplicateControl    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
if not exists (select * from sysindexes WHERE     (name = N'IX_DuplicateControl'))
CREATE UNIQUE NONCLUSTERED INDEX IX_DuplicateControl ON Pay.Functions
(
	Mounth ASC,
	PersonelNo ASC,
	ProjectID ASC,
	JobCode ASC,
	OfficeCode ASC,
	ProjectRow ASC,
	ProcCode ASC,
	CTopic3 ASC,
	YearID ASC,
	Years ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index IX_Functions_PersonelNo    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
if not exists (select * from sysindexes WHERE     (name = N'IX_Functions_PersonelNo')) CREATE NONCLUSTERED INDEX IX_Functions_PersonelNo ON Pay.Functions
(
	PersonelNo ASC
) ON [PRIMARY]
GO
/****** Object:  Index IX_Functions_YearIDMounthPersonelNo    Script Date: 28/02/1401 04:56:38 ب.ظ ******/
if not exists (select * from sysindexes WHERE     (name = N'IX_Functions_YearIDMounthPersonelNo')) CREATE NONCLUSTERED INDEX IX_Functions_YearIDMounthPersonelNo ON Pay.Functions
(
	YearID ASC,
	Mounth ASC,
	PersonelNo ASC
) ON [PRIMARY]
GO


IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_BudgetInfoItems_Fday' AND type = 'D')
ALTER TABLE Pay.BudgetInfoItems ADD  CONSTRAINT DF_BudgetInfoItems_Fday  DEFAULT (0) FOR Fday
GO
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_BudgetInfoItems_Fhours' AND type = 'D')
ALTER TABLE Pay.BudgetInfoItems ADD  CONSTRAINT DF_BudgetInfoItems_Fhours  DEFAULT (0) FOR Fhours
GO
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_BudgetsInfo_Fday' AND type = 'D')
ALTER TABLE Pay.BudgetsInfo ADD  CONSTRAINT DF_BudgetsInfo_Fday  DEFAULT (0) FOR Fday
GO
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_BudgetsInfo_Fhours' AND type = 'D')
ALTER TABLE Pay.BudgetsInfo ADD  CONSTRAINT DF_BudgetsInfo_Fhours  DEFAULT (0) FOR Fhours
GO
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_BudgetsInfo_Status' AND type = 'D')
ALTER TABLE Pay.BudgetsInfo ADD  CONSTRAINT DF_BudgetsInfo_Status  DEFAULT (0) FOR Status
GO
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_BudgetsInfo_Kind' AND type = 'D')
ALTER TABLE Pay.BudgetsInfo ADD  CONSTRAINT DF_BudgetsInfo_Kind  DEFAULT (0) FOR Kind
GO
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_ChangeWage_CalculatedKind' AND type = 'D')
ALTER TABLE Pay.ChangeWage ADD  CONSTRAINT DF_ChangeWage_CalculatedKind  DEFAULT (0) FOR CalculatedKind
GO
 
-- BankState
IF COL_LENGTH('Pay.Config', 'BankState') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'BankState';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_BankState DEFAULT (0) FOR BankState;
END

GO

-- Language1
IF COL_LENGTH('Pay.Config', 'Language1') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'Language1';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_Language1 DEFAULT (0) FOR Language1;
END

GO

-- Language2
IF COL_LENGTH('Pay.Config', 'Language2') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'Language2';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_Language2 DEFAULT (0) FOR Language2;
END

GO
-- BaseSalary
IF COL_LENGTH('Pay.Config', 'BaseSalary') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'BaseSalary';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_BaseSalary DEFAULT (0) FOR BaseSalary;
END

GO

-- UpperBonus
IF COL_LENGTH('Pay.Config', 'UpperBonus') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'UpperBonus';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_UpperBonus DEFAULT (0) FOR UpperBonus;
END

GO
-- BonusTaxExemption
IF COL_LENGTH('Pay.Config', 'BonusTaxExemption') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'BonusTaxExemption';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_BonusTaxExemption DEFAULT (0) FOR BonusTaxExemption;
END

GO

-- TaxBonusCo
IF COL_LENGTH('Pay.Config', 'TaxBonusCo') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'TaxBonusCo';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_TaxBonusCo DEFAULT (0) FOR TaxBonusCo;
END

GO

-- SpacialWageCode
IF COL_LENGTH('Pay.Config', 'SpacialWageCode') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'SpacialWageCode';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_SpacialWageCode DEFAULT (0) FOR SpacialWageCode;
END

GO

-- TaxKindCalc
IF COL_LENGTH('Pay.Config', 'TaxKindCalc') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'TaxKindCalc';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_TaxKindCalc DEFAULT (0) FOR TaxKindCalc;
END

GO

-- ActiveSalary
IF COL_LENGTH('Pay.Config', 'ActiveSalary') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'ActiveSalary';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_ActiveSalary DEFAULT (1) FOR ActiveSalary;
END

GO

-- ActivePayRoll
IF COL_LENGTH('Pay.Config', 'ActivePayRoll') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'ActivePayRoll';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_ActivePayRoll DEFAULT (1) FOR ActivePayRoll;
END

GO

-- ActiveMange
IF COL_LENGTH('Pay.Config', 'ActiveMange') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'ActiveMange';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_ActiveMange DEFAULT (1) FOR ActiveMange;
END

GO

-- ActiveSchedule
IF COL_LENGTH('Pay.Config', 'ActiveSchedule') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'ActiveSchedule';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_ActiveSchedule DEFAULT (0) FOR ActiveSchedule;
END

GO

-- ActiveOrganization
IF COL_LENGTH('Pay.Config', 'ActiveOrganization') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'ActiveOrganization';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_ActiveOrganization DEFAULT (0) FOR ActiveOrganization;
END

GO

-- FunctionKind
IF COL_LENGTH('Pay.Config', 'FunctionKind') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'FunctionKind';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_FunctionKind DEFAULT (0) FOR FunctionKind;
END
GO

-- DecContainTaxunder
IF COL_LENGTH('Pay.Config', 'DecContainTaxunder') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'DecContainTaxunder';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_DecContainTaxunder DEFAULT (1) FOR DecContainTaxunder;
END
GO
GO

-- DecContainTaxNumerator
IF COL_LENGTH('Pay.Config', 'DecContainTaxNumerator') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'DecContainTaxNumerator';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_DecContainTaxNumerator DEFAULT (0) FOR DecContainTaxNumerator;
END
GO

-- SubDayOfCurrentMonth
IF COL_LENGTH('Pay.Config', 'SubDayOfCurrentMonth') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'SubDayOfCurrentMonth';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_SubDayOfCurrentMonth DEFAULT (5) FOR SubDayOfCurrentMonth;
END
GO

-- ChkHideSalaryID4ListSalary
IF COL_LENGTH('Pay.Config', 'ChkHideSalaryID4ListSalary') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'ChkHideSalaryID4ListSalary';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_ChkHideSalaryID4ListSalary DEFAULT (0) FOR ChkHideSalaryID4ListSalary;
END
GO

-- TaxWithExemptionsTimeSheets
IF COL_LENGTH('Pay.Config', 'TaxWithExemptionsTimeSheets') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'TaxWithExemptionsTimeSheets';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_TaxWithExemptionsTimeSheets DEFAULT (0) FOR TaxWithExemptionsTimeSheets;
END
GO

-- SituationTime
IF COL_LENGTH('Pay.Config', 'SituationTime') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'SituationTime';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_SituationTime DEFAULT (0) FOR SituationTime;
END
GO

-- OffTimeInFish
IF COL_LENGTH('Pay.Config', 'OffTimeInFish') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'OffTimeInFish';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_OffTimeInFish DEFAULT (1) FOR OffTimeInFish;
END
GO

-- ChkGroupInterdicts
IF COL_LENGTH('Pay.Config', 'ChkGroupInterdicts') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'ChkGroupInterdicts';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_ChkGroupInterdicts DEFAULT (0) FOR ChkGroupInterdicts;
END
GO

-- ChkStateArchiveEdit
IF COL_LENGTH('Pay.Config', 'ChkStateArchiveEdit') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'ChkStateArchiveEdit';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_ChkStateArchiveEdit DEFAULT (0) FOR ChkStateArchiveEdit;
END
GO

-- ScanState
IF COL_LENGTH('Pay.Config', 'ScanState') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'ScanState';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_ScanState DEFAULT (0) FOR ScanState;
END
GO

-- ActiveRangeProject
IF COL_LENGTH('Pay.Config', 'ActiveRangeProject') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'ActiveRangeProject';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_ActiveRangeProject DEFAULT (0) FOR ActiveRangeProject;
END
GO

-- FunctionActiveMinutes
IF COL_LENGTH('Pay.Config', 'FunctionActiveMinutes') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'FunctionActiveMinutes';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_FunctionActiveMinutes DEFAULT (0) FOR FunctionActiveMinutes;
END
GO

-- AccDetailCodeEqualPersonelNo
IF COL_LENGTH('Pay.Config', 'AccDetailCodeEqualPersonelNo') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'AccDetailCodeEqualPersonelNo';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_AccDetailCodeEqualPersonelNo DEFAULT (0) FOR AccDetailCodeEqualPersonelNo;
END
GO

-- OffTimeControlMessages
IF COL_LENGTH('Pay.Config', 'OffTimeControlMessages') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'OffTimeControlMessages';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_OffTimeControlMessages DEFAULT (0) FOR OffTimeControlMessages;
END
GO

-- SysSmsActive
IF COL_LENGTH('Pay.Config', 'SysSmsActive') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'SysSmsActive';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_SysSmsActive DEFAULT (0) FOR SysSmsActive;
END
GO

-- EidiDisplayedSeparatelyOnTaxList
IF COL_LENGTH('Pay.Config', 'EidiDisplayedSeparatelyOnTaxList') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'EidiDisplayedSeparatelyOnTaxList';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_EidiDisplayedSeparatelyOnTaxList DEFAULT (0) FOR EidiDisplayedSeparatelyOnTaxList;
END
GO

-- HasSeprateDetailCompany
IF COL_LENGTH('Pay.Config', 'HasSeprateDetailCompany') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'HasSeprateDetailCompany';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_HasSeprateDetailCompany DEFAULT (0) FOR HasSeprateDetailCompany;
END
GO

-- MinBenefitsInsuranceList
IF COL_LENGTH('Pay.Config', 'MinBenefitsInsuranceList') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'MinBenefitsInsuranceList';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_MinBenefitsInsuranceList DEFAULT (1100000) FOR MinBenefitsInsuranceList;
END
GO

-- SendDoc2OtherSystems
IF COL_LENGTH('Pay.Config', 'SendDoc2OtherSystems') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'SendDoc2OtherSystems';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_SendDoc2OtherSystems DEFAULT (0) FOR SendDoc2OtherSystems;
END
GO

-- PonyTaxAble
IF COL_LENGTH('Pay.Config', 'PonyTaxAble') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'PonyTaxAble';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_PonyTaxAble DEFAULT (0) FOR PonyTaxAble;
END
GO

-- PersonelNoInInterdictNo
IF COL_LENGTH('Pay.Config', 'PersonelNoInInterdictNo') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'PersonelNoInInterdictNo';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_PersonelNoInInterdictNo DEFAULT (0) FOR PersonelNoInInterdictNo;
END
GO

-- NumberOffDaysInMonth
IF COL_LENGTH('Pay.Config', 'NumberOffDaysInMonth') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'NumberOffDaysInMonth';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_NumberOffDaysInMonth DEFAULT (0) FOR NumberOffDaysInMonth;
END
GO

-- ActAnnuityInlistSalary
IF COL_LENGTH('Pay.Config', 'ActAnnuityInlistSalary') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'ActAnnuityInlistSalary';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_ActAnnuityInlistSalary DEFAULT (0) FOR ActAnnuityInlistSalary;
END
GO

-- FloatToTimeActive
IF COL_LENGTH('Pay.Config', 'FloatToTimeActive') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'FloatToTimeActive';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_FloatToTimeActive DEFAULT (0) FOR FloatToTimeActive;
END
GO

-- FunctionItemSeparation
IF COL_LENGTH('Pay.Config', 'FunctionItemSeparation') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'FunctionItemSeparation';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_FunctionItemSeparation DEFAULT (0) FOR FunctionItemSeparation;
END
GO

-- UnicNationalID
IF COL_LENGTH('Pay.Config', 'UnicNationalID') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'UnicNationalID';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_UnicNationalID DEFAULT (0) FOR UnicNationalID;
END
GO

-- SalaryID4PartKind
IF COL_LENGTH('Pay.Config', 'SalaryID4PartKind') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'SalaryID4PartKind';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_SalaryID4PartKind DEFAULT (0) FOR SalaryID4PartKind;
END
GO

-- ActRewardInlistSalary
IF COL_LENGTH('Pay.Config', 'ActRewardInlistSalary') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'ActRewardInlistSalary';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_ActRewardInlistSalary DEFAULT (0) FOR ActRewardInlistSalary;
END
GO

-- Eid_E_Tax_IncludedInTheTaxList
IF COL_LENGTH('Pay.Config', 'Eid_E_Tax_IncludedInTheTaxList') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'Eid_E_Tax_IncludedInTheTaxList';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_Eid_E_Tax_IncludedInTheTaxList DEFAULT (0) FOR Eid_E_Tax_IncludedInTheTaxList;
END
GO

-- TaxWithExemptionsFunctionDay
IF COL_LENGTH('Pay.Config', 'TaxWithExemptionsFunctionDay') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'TaxWithExemptionsFunctionDay';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_TaxWithExemptionsFunctionDay DEFAULT (0) FOR TaxWithExemptionsFunctionDay;
END
GO

-- FunctionDayDefault
IF COL_LENGTH('Pay.Config', 'FunctionDayDefault') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'FunctionDayDefault';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_FunctionDayDefault DEFAULT (0) FOR FunctionDayDefault;
END
GO

-- ClockCard4FieldName
IF COL_LENGTH('Pay.Config', 'ClockCard4FieldName') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'ClockCard4FieldName';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_ClockCard4FieldName DEFAULT ('PersonelNo') FOR ClockCard4FieldName;
END
GO

-- DocTypeCode
IF COL_LENGTH('Pay.Config', 'DocTypeCode') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'DocTypeCode';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_DocTypeCode DEFAULT (7) FOR DocTypeCode;
END
GO

-- -- 
IF COL_LENGTH('Pay.Config', 'GovConstAmount') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'GovConstAmount';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_GovConstAmount DEFAULT (16000000) FOR GovConstAmount;
END
GO

-- GOvSpouse
IF COL_LENGTH('Pay.Config', 'GovSpouse') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'GovSpouse';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_GovSpouse DEFAULT (4000000) FOR GovSpouse;
END
GO

-- GOvChild
IF COL_LENGTH('Pay.Config', 'GovChild') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'GovChild';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_GovChild DEFAULT (1500000) FOR GovChild;
END
GO

-- InterimInterest
IF COL_LENGTH('Pay.Config', 'InterimInterest') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Config') AND c.name = 'InterimInterest';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.Config DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.Config ADD CONSTRAINT DF_Config_InterimInterest DEFAULT (0) FOR InterimInterest;
END
GO
GO
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_DecExtItems_DayQuntity' AND type = 'D')
ALTER TABLE Pay.DecExtItems ADD  CONSTRAINT DF_DecExtItems_DayQuntity  DEFAULT (0)FOR DayQuntity
GO
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_DecExtItems_Amount' AND type = 'D')
ALTER TABLE Pay.DecExtItems ADD  CONSTRAINT DF_DecExtItems_Amount  DEFAULT (0) FOR Amount
GO
IF COL_LENGTH('Pay.DecExtItems', 'Rate') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.DecExtItems') AND c.name = 'Rate';
    
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.DecExtItems DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END

    ALTER TABLE Pay.DecExtItems ADD CONSTRAINT DF_DecExtItems_Rate DEFAULT (0) FOR Rate;
END


--ALTER TABLE Pay.Fitful ADD  CONSTRAINT DF_Fitful_FitfulIDc  DEFAULT (0)FOR FitfulIDc
GO
--ALTER TABLE Pay.Fitful ADD  CONSTRAINT DF_Fitful_ID  DEFAULT (0)FOR ID
GO
-- FunctionID
IF COL_LENGTH('Pay.FixedCalculated', 'FunctionID') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FixedCalculated') AND c.name = 'FunctionID';
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.FixedCalculated DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END
    ALTER TABLE Pay.FixedCalculated ADD CONSTRAINT DF_FixedCalculated_FunctionID DEFAULT (0) FOR FunctionID;
END
GO

-- PersonelNO
IF COL_LENGTH('Pay.FixedCalculated', 'PersonelNO') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FixedCalculated') AND c.name = 'PersonelNO';
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.FixedCalculated DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END
    ALTER TABLE Pay.FixedCalculated ADD CONSTRAINT DF_FixedCalculated_PersonelNO DEFAULT (0) FOR PersonelNO;
END
GO

-- ProjectID
IF COL_LENGTH('Pay.FixedCalculated', 'ProjectID') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FixedCalculated') AND c.name = 'ProjectID';
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.FixedCalculated DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END
    ALTER TABLE Pay.FixedCalculated ADD CONSTRAINT DF_FixedCalculated_ProjectID DEFAULT (0) FOR ProjectID;
END
GO

-- OfficeCode
IF COL_LENGTH('Pay.FixedCalculated', 'OfficeCode') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FixedCalculated') AND c.name = 'OfficeCode';
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.FixedCalculated DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END
    ALTER TABLE Pay.FixedCalculated ADD CONSTRAINT DF_FixedCalculated_OfficeCode DEFAULT (0) FOR OfficeCode;
END
GO

-- JobCede
IF COL_LENGTH('Pay.FixedCalculated', 'JobCede') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FixedCalculated') AND c.name = 'JobCede';
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.FixedCalculated DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END
    ALTER TABLE Pay.FixedCalculated ADD CONSTRAINT DF_FixedCalculated_JobCede DEFAULT (0) FOR JobCede;
END
GO

-- Price
IF COL_LENGTH('Pay.FixedCalculated', 'Price') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FixedCalculated') AND c.name = 'Price';
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.FixedCalculated DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END
    ALTER TABLE Pay.FixedCalculated ADD CONSTRAINT DF_FixedCalculated_Price DEFAULT (0) FOR Price;
END
GO

-- BedBes
IF COL_LENGTH('Pay.FixedCalculated', 'BedBes') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FixedCalculated') AND c.name = 'BedBes';
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.FixedCalculated DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END
    ALTER TABLE Pay.FixedCalculated ADD CONSTRAINT DF_FixedCalculated_BedBes DEFAULT (0) FOR BedBes;
END
GO

-- CalCulateKind
IF COL_LENGTH('Pay.FixedCalculated', 'CalCulateKind') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FixedCalculated') AND c.name = 'CalCulateKind';
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.FixedCalculated DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END
    ALTER TABLE Pay.FixedCalculated ADD CONSTRAINT DF_FixedCalculated_CalCulateKind DEFAULT (0) FOR CalCulateKind;
END
GO

-- AccTopicCode
IF COL_LENGTH('Pay.FixedCalculated', 'AccTopicCode') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FixedCalculated') AND c.name = 'AccTopicCode';
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.FixedCalculated DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END
    ALTER TABLE Pay.FixedCalculated ADD CONSTRAINT DF_FixedCalculated_AccTopicCode DEFAULT (0) FOR AccTopicCode;
END
GO

-- AccDetailCode
IF COL_LENGTH('Pay.FixedCalculated', 'AccDetailCode') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FixedCalculated') AND c.name = 'AccDetailCode';
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.FixedCalculated DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END
    ALTER TABLE Pay.FixedCalculated ADD CONSTRAINT DF_FixedCalculated_AccDetailCode DEFAULT (0) FOR AccDetailCode;
END
GO

-- AccCTopicCode
IF COL_LENGTH('Pay.FixedCalculated', 'AccCTopicCode') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FixedCalculated') AND c.name = 'AccCTopicCode';
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.FixedCalculated DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END
    ALTER TABLE Pay.FixedCalculated ADD CONSTRAINT DF_FixedCalculated_AccCTopicCode DEFAULT (0) FOR AccCTopicCode;
END
GO

-- AccCTopicCode2
IF COL_LENGTH('Pay.FixedCalculated', 'AccCTopicCode2') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FixedCalculated') AND c.name = 'AccCTopicCode2';
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.FixedCalculated DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END
    ALTER TABLE Pay.FixedCalculated ADD CONSTRAINT DF_FixedCalculated_AccCTopicCode2 DEFAULT (0) FOR AccCTopicCode2;
END
GO

-- ShowListKind
IF COL_LENGTH('Pay.FixedCalculated', 'ShowListKind') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FixedCalculated') AND c.name = 'ShowListKind';
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.FixedCalculated DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END
    ALTER TABLE Pay.FixedCalculated ADD CONSTRAINT DF_FixedCalculated_ShowListKind DEFAULT (0) FOR ShowListKind;
END
GO

-- ArchiveID
IF COL_LENGTH('Pay.FixedCalculated', 'ArchiveID') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FixedCalculated') AND c.name = 'ArchiveID';
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.FixedCalculated DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END
    ALTER TABLE Pay.FixedCalculated ADD CONSTRAINT DF_FixedCalculated_ArchiveID DEFAULT (0) FOR ArchiveID;
END
GO

-- AccCTopicCode3
IF COL_LENGTH('Pay.FixedCalculated', 'AccCTopicCode3') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FixedCalculated') AND c.name = 'AccCTopicCode3';
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.FixedCalculated DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END
    ALTER TABLE Pay.FixedCalculated ADD CONSTRAINT DF_FixedCalculated_AccCTopicCode3 DEFAULT (0) FOR AccCTopicCode3;
END
GO

-- LabelID
IF COL_LENGTH('Pay.FixedCalculated', 'LabelID') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name
    FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FixedCalculated') AND c.name = 'LabelID';
    IF @dc IS NOT NULL
    BEGIN
        SET @sql = N'ALTER TABLE Pay.FixedCalculated DROP CONSTRAINT ' + QUOTENAME(@dc);
        EXEC sp_executesql @sql;
    END
    ALTER TABLE Pay.FixedCalculated ADD CONSTRAINT DF_FixedCalculated_LabelID DEFAULT (0) FOR LabelID;
END
GO
-- ==================================================================
-- جدول: Pay.FormInfoItems
-- ==================================================================
IF COL_LENGTH('Pay.FormInfoItems', 'Coefficient') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormInfoItems') AND c.name = 'Coefficient';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormInfoItems DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormInfoItems ADD CONSTRAINT DF_FormInfoItems_Coefficient DEFAULT (0) FOR Coefficient;
END
GO

IF COL_LENGTH('Pay.FormInfoItems', 'Coefficient2') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormInfoItems') AND c.name = 'Coefficient2';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormInfoItems DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormInfoItems ADD CONSTRAINT DF_FormInfoItems_Coefficient2 DEFAULT (1) FOR Coefficient2;
END
GO

IF COL_LENGTH('Pay.FormInfoItems', 'Amount') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormInfoItems') AND c.name = 'Amount';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormInfoItems DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormInfoItems ADD CONSTRAINT DF_FormInfoItems_Amount DEFAULT (0) FOR Amount;
END
GO

-- ==================================================================
-- جدول: Pay.FormsInfo
-- ==================================================================
IF COL_LENGTH('Pay.FormsInfo', 'PrvInfoID') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormsInfo') AND c.name = 'PrvInfoID';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormsInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormsInfo ADD CONSTRAINT DF_FormsInfo_PrvInfoID DEFAULT (0) FOR PrvInfoID;
END
GO

IF COL_LENGTH('Pay.FormsInfo', 'CalCulateType') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormsInfo') AND c.name = 'CalCulateType';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormsInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormsInfo ADD CONSTRAINT DF_FormsInfo_CalCulateType DEFAULT (0) FOR CalCulateType;
END
GO

IF COL_LENGTH('Pay.FormsInfo', 'RecalKindClock') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormsInfo') AND c.name = 'RecalKindClock';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormsInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormsInfo ADD CONSTRAINT DF_FormsInfo_RecalKindClock DEFAULT (0) FOR RecalKindClock;
END
GO

IF COL_LENGTH('Pay.FormsInfo', 'FirstAmount') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormsInfo') AND c.name = 'FirstAmount';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormsInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormsInfo ADD CONSTRAINT DF_FormsInfo_FirstAmount DEFAULT (0) FOR FirstAmount;
END
GO

IF COL_LENGTH('Pay.FormsInfo', 'MaxDay') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormsInfo') AND c.name = 'MaxDay';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormsInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormsInfo ADD CONSTRAINT DF_FormsInfo_MaxDay DEFAULT (0) FOR MaxDay;
END
GO

IF COL_LENGTH('Pay.FormsInfo', 'MaxTime') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormsInfo') AND c.name = 'MaxTime';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormsInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormsInfo ADD CONSTRAINT DF_FormsInfo_MaxTime DEFAULT (0) FOR MaxTime;
END
GO

IF COL_LENGTH('Pay.FormsInfo', 'MuliplyInDay') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormsInfo') AND c.name = 'MuliplyInDay';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormsInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormsInfo ADD CONSTRAINT DF_FormsInfo_MuliplyInDay DEFAULT (0) FOR MuliplyInDay;
END
GO

IF COL_LENGTH('Pay.FormsInfo', 'AccCTopicCode3') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormsInfo') AND c.name = 'AccCTopicCode3';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormsInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormsInfo ADD CONSTRAINT DF_FormsInfo_AccCTopicCode3 DEFAULT (0) FOR AccCTopicCode3;
END
GO

IF COL_LENGTH('Pay.FormsInfo', 'PayMentActive') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormsInfo') AND c.name = 'PayMentActive';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormsInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormsInfo ADD CONSTRAINT DF_FormsInfo_PayMentActive DEFAULT (0) FOR PayMentActive;
END
GO

IF COL_LENGTH('Pay.FormsInfo', 'WageCalcKind') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormsInfo') AND c.name = 'WageCalcKind';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormsInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormsInfo ADD CONSTRAINT DF_FormsInfo_WageCalcKind DEFAULT (0) FOR WageCalcKind;
END
GO

IF COL_LENGTH('Pay.FormsInfo', 'Checking4AllPersonnel') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormsInfo') AND c.name = 'Checking4AllPersonnel';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormsInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormsInfo ADD CONSTRAINT DF_FormsInfo_Checking4AllPersonnel DEFAULT (0) FOR Checking4AllPersonnel;
END
GO

IF COL_LENGTH('Pay.FormsInfo', 'EmployerAmountActive') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormsInfo') AND c.name = 'EmployerAmountActive';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormsInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormsInfo ADD CONSTRAINT DF_FormsInfo_EmployerAmountActive DEFAULT (0) FOR EmployerAmountActive;
END
GO

IF COL_LENGTH('Pay.FormsInfo', 'DisableDecContainTaxNumerator') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormsInfo') AND c.name = 'DisableDecContainTaxNumerator';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormsInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormsInfo ADD CONSTRAINT DF_FormsInfo_DisableDecContainTaxNumerator DEFAULT (0) FOR DisableDecContainTaxNumerator;
END
GO

IF COL_LENGTH('Pay.FormsInfo', 'SalaryIDinDocActive') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormsInfo') AND c.name = 'SalaryIDinDocActive';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormsInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormsInfo ADD CONSTRAINT DF_FormsInfo_SalaryIDinDocActive DEFAULT (1) FOR SalaryIDinDocActive;
END
GO

-- ==================================================================
-- جدول: Pay.FormTypes
-- ==================================================================
IF COL_LENGTH('Pay.FormTypes', 'DurationDayActive') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'DurationDayActive';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_DurationDayActive DEFAULT (0) FOR DurationDayActive;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'DurationTimeActive') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'DurationTimeActive';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_DurationTimeActive DEFAULT (0) FOR DurationTimeActive;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'ExemptPersonActive') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'ExemptPersonActive';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_ExemptPersonActive DEFAULT (0) FOR ExemptPersonActive;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'SalaryEffectKind') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'SalaryEffectKind';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_SalaryEffectKind DEFAULT (0) FOR SalaryEffectKind;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'KargozinyEffectKind') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'KargozinyEffectKind';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_KargozinyEffectKind DEFAULT (0) FOR KargozinyEffectKind;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'RecalSalaryTypes') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'RecalSalaryTypes';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_RecalSalaryTypes DEFAULT (0) FOR RecalSalaryTypes;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'SalaryKind') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'SalaryKind';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_SalaryKind DEFAULT (0) FOR SalaryKind;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'CoefficientActive') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'CoefficientActive';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_CoefficientActive DEFAULT (0) FOR CoefficientActive;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'AmountActive') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'AmountActive';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_AmountActive DEFAULT (0) FOR AmountActive;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'Amount2Active') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'Amount2Active';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_Amount2Active DEFAULT (0) FOR Amount2Active;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'RecallFormTypes') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'RecallFormTypes';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_RecallFormTypes DEFAULT (0) FOR RecallFormTypes;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'UseEndMounthKind') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'UseEndMounthKind';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_UseEndMounthKind DEFAULT (0) FOR UseEndMounthKind;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'AidInfoNo1Active') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'AidInfoNo1Active';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_AidInfoNo1Active DEFAULT (0) FOR AidInfoNo1Active;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'AidInfoDate1Active') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'AidInfoDate1Active';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_AidInfoDate1Active DEFAULT (0) FOR AidInfoDate1Active;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'AidInfo1Caption') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'AidInfo1Caption';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_AidInfo1Caption DEFAULT ('') FOR AidInfo1Caption;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'AidInfoNo2Active') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'AidInfoNo2Active';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_AidInfoNo2Active DEFAULT (0) FOR AidInfoNo2Active;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'AidInfoDate2Active') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'AidInfoDate2Active';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_AidInfoDate2Active DEFAULT (0) FOR AidInfoDate2Active;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'AidInfo2Caption') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'AidInfo2Caption';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_AidInfo2Caption DEFAULT ('') FOR AidInfo2Caption;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'TopicCodeKind') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'TopicCodeKind';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_TopicCodeKind DEFAULT (0) FOR TopicCodeKind;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'DetailCodeKind') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'DetailCodeKind';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_DetailCodeKind DEFAULT (0) FOR DetailCodeKind;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'CTopicCodeKind') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'CTopicCodeKind';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_CTopicCodeKind DEFAULT (0) FOR CTopicCodeKind;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'CTopicCode2Kind') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'CTopicCode2Kind';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_CTopicCode2Kind DEFAULT (0) FOR CTopicCode2Kind;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'DisplayFormType') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'DisplayFormType';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_DisplayFormType DEFAULT (1) FOR DisplayFormType;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'WordDocumentsActive') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'WordDocumentsActive';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_WordDocumentsActive DEFAULT (0) FOR WordDocumentsActive;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'FunctionShow') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'FunctionShow';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_FunctionShow DEFAULT (0) FOR FunctionShow;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'RecalKindClock') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'RecalKindClock';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_RecalKindClock DEFAULT (0) FOR RecalKindClock;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'CalCulateTypeActive') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'CalCulateTypeActive';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_CalCulateTypeActive DEFAULT (0) FOR CalCulateTypeActive;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'FormInfo4Function') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'FormInfo4Function';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_FormInfo4Function DEFAULT (12) FOR FormInfo4Function;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'ChangeAmountActive') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'ChangeAmountActive';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_ChangeAmountActive DEFAULT (1) FOR ChangeAmountActive;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'FirstAmountActive') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'FirstAmountActive';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_FirstAmountActive DEFAULT (1) FOR FirstAmountActive;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'NoteActive') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'NoteActive';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_NoteActive DEFAULT (0) FOR NoteActive;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'LimitMounthActive') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'LimitMounthActive';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_LimitMounthActive DEFAULT (0) FOR LimitMounthActive;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'MaxDayTimeActive') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'MaxDayTimeActive';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_MaxDayTimeActive DEFAULT (2) FOR MaxDayTimeActive;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'ReportCaption1') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'ReportCaption1';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_ReportCaption1 DEFAULT ('چاپ 1') FOR ReportCaption1;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'ReportCaption2') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'ReportCaption2';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_ReportCaption2 DEFAULT ('چاپ 2') FOR ReportCaption2;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'ReportCaption3') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'ReportCaption3';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_ReportCaption3 DEFAULT ('چاپ 3') FOR ReportCaption3;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'ReportCaption4') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'ReportCaption4';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_ReportCaption4 DEFAULT ('چاپ 4') FOR ReportCaption4;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'MnuRow') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'MnuRow';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_MnuRow DEFAULT (1) FOR MnuRow;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'ShowMnuId') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'ShowMnuId';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_ShowMnuId DEFAULT (3) FOR ShowMnuId;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'ShowOperators') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'ShowOperators';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_ShowOperators DEFAULT (0) FOR ShowOperators;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'MuliplyInDayActive') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'MuliplyInDayActive';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_MuliplyInDayActive DEFAULT (0) FOR MuliplyInDayActive;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'CTopicCode3Kind') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'CTopicCode3Kind';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_CTopicCode3Kind DEFAULT (0) FOR CTopicCode3Kind;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'EarthProceedsActivate') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'EarthProceedsActivate';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_EarthProceedsActivate DEFAULT (0) FOR EarthProceedsActivate;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'ADDLevelID') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'ADDLevelID';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_ADDLevelID DEFAULT (0) FOR ADDLevelID;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'EditLevelID') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'EditLevelID';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_EditLevelID DEFAULT (0) FOR EditLevelID;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'DeleteLevelID') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'DeleteLevelID';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_DeleteLevelID DEFAULT (0) FOR DeleteLevelID;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'ChangeStateLevelID') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'ChangeStateLevelID';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_ChangeStateLevelID DEFAULT (0) FOR ChangeStateLevelID;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'PrintLevelID') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'PrintLevelID';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_PrintLevelID DEFAULT (0) FOR PrintLevelID;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'PrintDesignLevelID') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'PrintDesignLevelID';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_PrintDesignLevelID DEFAULT (0) FOR PrintDesignLevelID;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'FormRelatedLevelID') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'FormRelatedLevelID';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_FormRelatedLevelID DEFAULT (0) FOR FormRelatedLevelID;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'AccCodeLevelID') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'AccCodeLevelID';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_AccCodeLevelID DEFAULT (0) FOR AccCodeLevelID;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'OtherCtrlLevelID') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'OtherCtrlLevelID';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_OtherCtrlLevelID DEFAULT (0) FOR OtherCtrlLevelID;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'XlsLevelID') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'XlsLevelID';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_XlsLevelID DEFAULT (0) FOR XlsLevelID;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'FinalStateEditLevelID') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'FinalStateEditLevelID';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_FinalStateEditLevelID DEFAULT (0) FOR FinalStateEditLevelID;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'ConstantStateEditLevelID') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'ConstantStateEditLevelID';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_ConstantStateEditLevelID DEFAULT (0) FOR ConstantStateEditLevelID;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'CalcLevelID') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'CalcLevelID';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_CalcLevelID DEFAULT (0) FOR CalcLevelID;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'SendLevelID') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'SendLevelID';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_SendLevelID DEFAULT (0) FOR SendLevelID;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'DecExtStateActive') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'DecExtStateActive';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_DecExtStateActive DEFAULT (0) FOR DecExtStateActive;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'PayMentShow') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'PayMentShow';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_PayMentShow DEFAULT (0) FOR PayMentShow;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'TaxCodeShow') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'TaxCodeShow';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_TaxCodeShow DEFAULT (0) FOR TaxCodeShow;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'WageCalcKindActive') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'WageCalcKindActive';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_WageCalcKindActive DEFAULT (0) FOR WageCalcKindActive;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'FirstAmountName') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'FirstAmountName';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_FirstAmountName DEFAULT ('مبلغ اوليه') FOR FirstAmountName;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'RepetitiveControl') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'RepetitiveControl';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_RepetitiveControl DEFAULT (1) FOR RepetitiveControl;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'PersonelTypeInfoRow') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'PersonelTypeInfoRow';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_PersonelTypeInfoRow DEFAULT (0) FOR PersonelTypeInfoRow;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'PrintAfterPost') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'PrintAfterPost';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_PrintAfterPost DEFAULT (0) FOR PrintAfterPost;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'InsertAccCode') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'InsertAccCode';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_InsertAccCode DEFAULT (0) FOR InsertAccCode;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'RepetitiveControlInfoID') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'RepetitiveControlInfoID';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_RepetitiveControlInfoID DEFAULT (2) FOR RepetitiveControlInfoID;
END
GO

IF COL_LENGTH('Pay.FormTypes', 'SalaryIDinDocShow') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FormTypes') AND c.name = 'SalaryIDinDocShow';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FormTypes DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FormTypes ADD CONSTRAINT DF_FormTypes_SalaryIDinDocShow DEFAULT (0) FOR SalaryIDinDocShow;
END
GO

-- ==================================================================
-- جدول: Pay.FunctionDay
-- ==================================================================
IF COL_LENGTH('Pay.FunctionDay', 'OfficeCode') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FunctionDay') AND c.name = 'OfficeCode';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FunctionDay DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FunctionDay ADD CONSTRAINT DF_FunctionDay_OfficeCode DEFAULT (0) FOR OfficeCode;
END
GO

IF COL_LENGTH('Pay.FunctionDay', 'state') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FunctionDay') AND c.name = 'state';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FunctionDay DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FunctionDay ADD CONSTRAINT DF_FunctionDay_state DEFAULT (0) FOR state;
END
GO

-- ==================================================================
-- جدول: Pay.FunctionDayItems
-- ==================================================================
IF COL_LENGTH('Pay.FunctionDayItems', 'PeresentID') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FunctionDayItems') AND c.name = 'PeresentID';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FunctionDayItems DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FunctionDayItems ADD CONSTRAINT DF_FunctionDayItems_PerestID DEFAULT (0) FOR PeresentID;
END
GO

IF COL_LENGTH('Pay.FunctionDayItems', 'FunTime') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FunctionDayItems') AND c.name = 'FunTime';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FunctionDayItems DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FunctionDayItems ADD CONSTRAINT DF_FunctionDayItems_FunTime DEFAULT (0) FOR FunTime;
END
GO

IF COL_LENGTH('Pay.FunctionDayItems', 'ExtTime') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FunctionDayItems') AND c.name = 'ExtTime';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FunctionDayItems DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FunctionDayItems ADD CONSTRAINT DF_FunctionDayItems_ExtTime DEFAULT (0) FOR ExtTime;
END
GO

IF COL_LENGTH('Pay.FunctionDayItems', 'ShiftNo') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FunctionDayItems') AND c.name = 'ShiftNo';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FunctionDayItems DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FunctionDayItems ADD CONSTRAINT DF_FunctionDayItems_ShiftNo DEFAULT (0) FOR ShiftNo;
END
GO

IF COL_LENGTH('Pay.FunctionDayItems', 'WorkID') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FunctionDayItems') AND c.name = 'WorkID';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FunctionDayItems DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FunctionDayItems ADD CONSTRAINT DF_FunctionDayItems_WorkID DEFAULT (0) FOR WorkID;
END
GO

IF COL_LENGTH('Pay.FunctionDayItems', 'EarthCode') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FunctionDayItems') AND c.name = 'EarthCode';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FunctionDayItems DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FunctionDayItems ADD CONSTRAINT DF_FunctionDayItems_EarthCode DEFAULT (0) FOR EarthCode;
END
GO

IF COL_LENGTH('Pay.FunctionDayItems', 'ProcCode') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FunctionDayItems') AND c.name = 'ProcCode';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FunctionDayItems DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FunctionDayItems ADD CONSTRAINT DF_FunctionDayItems_ProcCode DEFAULT (0) FOR ProcCode;
END
GO

IF COL_LENGTH('Pay.FunctionDayItems', 'StandardRate') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FunctionDayItems') AND c.name = 'StandardRate';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FunctionDayItems DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FunctionDayItems ADD CONSTRAINT DF_FunctionDayItems_StandardRate DEFAULT (0) FOR StandardRate;
END
GO

IF COL_LENGTH('Pay.FunctionDayItems', 'AccCTopicCode3') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FunctionDayItems') AND c.name = 'AccCTopicCode3';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FunctionDayItems DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FunctionDayItems ADD CONSTRAINT DF_FunctionDayItems_AccCTopicCode3 DEFAULT (0) FOR AccCTopicCode3;
END
GO

-- ==================================================================
-- جدول: Pay.Functions
-- ==================================================================
IF COL_LENGTH('Pay.Functions', 'FunctionDay') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Functions') AND c.name = 'FunctionDay';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Functions DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Functions ADD CONSTRAINT DF_Functions_FunctionDay DEFAULT (0) FOR FunctionDay;
END
GO

IF COL_LENGTH('Pay.Functions', 'FunctionTime') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Functions') AND c.name = 'FunctionTime';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Functions DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Functions ADD CONSTRAINT DF_Functions_FunctionTime DEFAULT (0) FOR FunctionTime;
END
GO

IF COL_LENGTH('Pay.Functions', 'OfficeCode') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Functions') AND c.name = 'OfficeCode';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Functions DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Functions ADD CONSTRAINT DF_Functions_OfficeCode DEFAULT (0) FOR OfficeCode;
END
GO

IF COL_LENGTH('Pay.Functions', 'Situation') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Functions') AND c.name = 'Situation';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Functions DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Functions ADD CONSTRAINT DF_Functions_Situation DEFAULT (0) FOR Situation;
END
GO

-- ==================================================================
-- جدول: Pay.FunctionSpecial
-- ==================================================================
IF COL_LENGTH('Pay.FunctionSpecial', 'FunctionDay') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FunctionSpecial') AND c.name = 'FunctionDay';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FunctionSpecial DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FunctionSpecial ADD CONSTRAINT DF_FunctionSpecial_FunctionDay DEFAULT (0) FOR FunctionDay;
END
GO

IF COL_LENGTH('Pay.FunctionSpecial', 'SickDay') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FunctionSpecial') AND c.name = 'SickDay';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FunctionSpecial DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FunctionSpecial ADD CONSTRAINT DF_FunctionSpecial_SickDay DEFAULT (0) FOR SickDay;
END
GO

IF COL_LENGTH('Pay.FunctionSpecial', 'FunctionTime') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FunctionSpecial') AND c.name = 'FunctionTime';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FunctionSpecial DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FunctionSpecial ADD CONSTRAINT DF_FunctionSpecial_FunctionTime DEFAULT (0) FOR FunctionTime;
END
GO

IF COL_LENGTH('Pay.FunctionSpecial', 'OverTime') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FunctionSpecial') AND c.name = 'OverTime';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FunctionSpecial DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FunctionSpecial ADD CONSTRAINT DF_FunctionSpecial_OverTime DEFAULT (0) FOR OverTime;
END
GO

IF COL_LENGTH('Pay.FunctionSpecial', 'WorkingHoliday') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FunctionSpecial') AND c.name = 'WorkingHoliday';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FunctionSpecial DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FunctionSpecial ADD CONSTRAINT DF_FunctionSpecial_WorkingHoliday DEFAULT (0) FOR WorkingHoliday;
END
GO

IF COL_LENGTH('Pay.FunctionSpecial', 'NightWork') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FunctionSpecial') AND c.name = 'NightWork';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FunctionSpecial DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FunctionSpecial ADD CONSTRAINT DF_FunctionSpecial_NightWork DEFAULT (0) FOR NightWork;
END
GO

IF COL_LENGTH('Pay.FunctionSpecial', 'FractionWorkTime') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FunctionSpecial') AND c.name = 'FractionWorkTime';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FunctionSpecial DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FunctionSpecial ADD CONSTRAINT DF_FunctionSpecial_FractionWorkTime DEFAULT (0) FOR FractionWorkTime;
END
GO

IF COL_LENGTH('Pay.FunctionSpecial', 'FractionWorkDay') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FunctionSpecial') AND c.name = 'FractionWorkDay';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FunctionSpecial DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FunctionSpecial ADD CONSTRAINT DF_FunctionSpecial_FractionWorkDay DEFAULT (0) FOR FractionWorkDay;
END
GO

-- ==================================================================
-- جدول: Pay.FunctionSpecialControl
-- ==================================================================
IF COL_LENGTH('Pay.FunctionSpecialControl', 'FunctionTime') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FunctionSpecialControl') AND c.name = 'FunctionTime';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FunctionSpecialControl DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FunctionSpecialControl ADD CONSTRAINT DF_FunctionSpecialControl_FunctionTime DEFAULT (0) FOR FunctionTime;
END
GO

IF COL_LENGTH('Pay.FunctionSpecialControl', 'FunAmount') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.FunctionSpecialControl') AND c.name = 'FunAmount';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.FunctionSpecialControl DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.FunctionSpecialControl ADD CONSTRAINT DF_FunctionSpecialControl_FunAmount DEFAULT (0) FOR FunAmount;
END
GO

-- ==================================================================
-- جدول: Pay.GetReprots
-- ==================================================================
IF COL_LENGTH('Pay.GetReprots', 'ActiveFunctionsItems') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.GetReprots') AND c.name = 'ActiveFunctionsItems';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.GetReprots DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.GetReprots ADD CONSTRAINT DF_GetReprots_ActiveFunctionsItems DEFAULT (1) FOR ActiveFunctionsItems;
END
GO

IF COL_LENGTH('Pay.GetReprots', 'DeleteColumnIfSumWageIsZero') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.GetReprots') AND c.name = 'DeleteColumnIfSumWageIsZero';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.GetReprots DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.GetReprots ADD CONSTRAINT DF_GetReprots_DeleteColumnIfSumWageIsZero DEFAULT (0) FOR DeleteColumnIfSumWageIsZero;
END
GO

-- ==================================================================
-- جدول: Pay.GetRptColumns
-- ==================================================================
IF COL_LENGTH('Pay.GetRptColumns', 'ColumnsRoundNo') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.GetRptColumns') AND c.name = 'ColumnsRoundNo';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.GetRptColumns DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.GetRptColumns ADD CONSTRAINT DF_GetRptColumns_ColumnsRoundNo DEFAULT (0) FOR ColumnsRoundNo;
END
GO

-- ==================================================================
-- جدول: Pay.InsuranceCONSTinfo
-- ==================================================================
IF COL_LENGTH('Pay.InsuranceCONSTinfo', 'Employeeshare') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.InsuranceCONSTinfo') AND c.name = 'Employeeshare';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.InsuranceCONSTinfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.InsuranceCONSTinfo ADD CONSTRAINT DF_InsuranceCONSTinfo_Employeeshare DEFAULT (0) FOR Employeeshare;
END
GO

IF COL_LENGTH('Pay.InsuranceCONSTinfo', 'Employershare') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.InsuranceCONSTinfo') AND c.name = 'Employershare';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.InsuranceCONSTinfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.InsuranceCONSTinfo ADD CONSTRAINT DF_InsuranceCONSTinfo_Employershare DEFAULT (0) FOR Employershare;
END
GO

IF COL_LENGTH('Pay.InsuranceCONSTinfo', 'InactionInsuranceShare') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.InsuranceCONSTinfo') AND c.name = 'InactionInsuranceShare';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.InsuranceCONSTinfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.InsuranceCONSTinfo ADD CONSTRAINT DF_InsuranceCONSTinfo_InactionInsuranceShare DEFAULT (0) FOR InactionInsuranceShare;
END
GO

IF COL_LENGTH('Pay.InsuranceCONSTinfo', 'HardShipPercent') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.InsuranceCONSTinfo') AND c.name = 'HardShipPercent';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.InsuranceCONSTinfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.InsuranceCONSTinfo ADD CONSTRAINT DF_InsuranceCONSTinfo_HardShipPercent DEFAULT (0) FOR HardShipPercent;
END
GO

IF COL_LENGTH('Pay.InsuranceCONSTinfo', 'PeopleExempt') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.InsuranceCONSTinfo') AND c.name = 'PeopleExempt';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.InsuranceCONSTinfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.InsuranceCONSTinfo ADD CONSTRAINT DF_InsuranceCONSTinfo_PeopleExempt DEFAULT (0) FOR PeopleExempt;
END
GO

IF COL_LENGTH('Pay.InsuranceCONSTinfo', 'AccTopicCodeExempt') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.InsuranceCONSTinfo') AND c.name = 'AccTopicCodeExempt';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.InsuranceCONSTinfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.InsuranceCONSTinfo ADD CONSTRAINT DF_InsuranceCONSTinfo_AccTopicCodeExempt DEFAULT (0) FOR AccTopicCodeExempt;
END
GO

IF COL_LENGTH('Pay.InsuranceCONSTinfo', 'AccDetailCodeExempt') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.InsuranceCONSTinfo') AND c.name = 'AccDetailCodeExempt';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.InsuranceCONSTinfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.InsuranceCONSTinfo ADD CONSTRAINT DF_InsuranceCONSTinfo_AccDetailCodeExempt DEFAULT (0) FOR AccDetailCodeExempt;
END
GO

IF COL_LENGTH('Pay.InsuranceCONSTinfo', 'AccCTopicCodeExempt') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.InsuranceCONSTinfo') AND c.name = 'AccCTopicCodeExempt';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.InsuranceCONSTinfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.InsuranceCONSTinfo ADD CONSTRAINT DF_InsuranceCONSTinfo_AccCTopicCodeExempt DEFAULT (0) FOR AccCTopicCodeExempt;
END
GO

IF COL_LENGTH('Pay.InsuranceCONSTinfo', 'AccCTopicCode2Exempt') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.InsuranceCONSTinfo') AND c.name = 'AccCTopicCode2Exempt';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.InsuranceCONSTinfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.InsuranceCONSTinfo ADD CONSTRAINT DF_InsuranceCONSTinfo_AccCTopicCode2Exempt DEFAULT (0) FOR AccCTopicCode2Exempt;
END
GO

IF COL_LENGTH('Pay.InsuranceCONSTinfo', 'AccCTopicCode3Exempt') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.InsuranceCONSTinfo') AND c.name = 'AccCTopicCode3Exempt';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.InsuranceCONSTinfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.InsuranceCONSTinfo ADD CONSTRAINT DF_InsuranceCONSTinfo_AccCTopicCode3Exempt DEFAULT (0) FOR AccCTopicCode3Exempt;
END
GO

-- ==================================================================
-- جدول: Pay.InterdictItems
-- ==================================================================
IF COL_LENGTH('Pay.InterdictItems', 'Amount') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.InterdictItems') AND c.name = 'Amount';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.InterdictItems DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.InterdictItems ADD CONSTRAINT DF_InterdictItems_Amount DEFAULT (0) FOR Amount;
END
GO

IF COL_LENGTH('Pay.InterdictItems', 'FirstMounth') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.InterdictItems') AND c.name = 'FirstMounth';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.InterdictItems DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.InterdictItems ADD CONSTRAINT DF_InterdictItems_FirstMounth DEFAULT (0) FOR FirstMounth;
END
GO

IF COL_LENGTH('Pay.InterdictItems', 'EndMounth') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.InterdictItems') AND c.name = 'EndMounth';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.InterdictItems DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.InterdictItems ADD CONSTRAINT DF_InterdictItems_EndMounth DEFAULT (0) FOR EndMounth;
END
GO

IF COL_LENGTH('Pay.InterdictItems', 'ExpenseType') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.InterdictItems') AND c.name = 'ExpenseType';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.InterdictItems DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.InterdictItems ADD CONSTRAINT DF_InterdictItems_ExpenseType DEFAULT (0) FOR ExpenseType;
END
GO

-- ==================================================================
-- جدول: Pay.Interdicts
-- ==================================================================
IF COL_LENGTH('Pay.Interdicts', 'subcompanyCode') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Interdicts') AND c.name = 'subcompanyCode';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Interdicts DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Interdicts ADD CONSTRAINT DF_Interdicts_subcompanyCode DEFAULT (0) FOR subcompanyCode;
END
GO

IF COL_LENGTH('Pay.Interdicts', 'jobCode') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Interdicts') AND c.name = 'jobCode';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Interdicts DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Interdicts ADD CONSTRAINT DF_Interdicts_jobCode DEFAULT (0) FOR jobCode;
END
GO

IF COL_LENGTH('Pay.Interdicts', 'grade') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Interdicts') AND c.name = 'grade';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Interdicts DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Interdicts ADD CONSTRAINT DF_Interdicts_grade DEFAULT (0) FOR grade;
END
GO

IF COL_LENGTH('Pay.Interdicts', 'jobCity') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Interdicts') AND c.name = 'jobCity';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Interdicts DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Interdicts ADD CONSTRAINT DF_Interdicts_jobCity DEFAULT (0) FOR jobCity;
END
GO

IF COL_LENGTH('Pay.Interdicts', 'InterdicType') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Interdicts') AND c.name = 'InterdicType';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Interdicts DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Interdicts ADD CONSTRAINT DF_Interdicts_InterdicType DEFAULT (0) FOR InterdicType;
END
GO

IF COL_LENGTH('Pay.Interdicts', 'EmployTypeID') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Interdicts') AND c.name = 'EmployTypeID';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Interdicts DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Interdicts ADD CONSTRAINT DF_Interdicts_EmployTypeID DEFAULT (0) FOR EmployTypeID;
END
GO

IF COL_LENGTH('Pay.Interdicts', 'employDaytime') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Interdicts') AND c.name = 'employDaytime';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Interdicts DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Interdicts ADD CONSTRAINT DF_Interdicts_employDaytime DEFAULT (0) FOR employDaytime;
END
GO

IF COL_LENGTH('Pay.Interdicts', 'AccTopicCode') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Interdicts') AND c.name = 'AccTopicCode';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Interdicts DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Interdicts ADD CONSTRAINT DF_Interdicts_AccTopicCode DEFAULT (0) FOR AccTopicCode;
END
GO

IF COL_LENGTH('Pay.Interdicts', 'AccDetailCode') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Interdicts') AND c.name = 'AccDetailCode';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Interdicts DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Interdicts ADD CONSTRAINT DF_Interdicts_AccDetailCode DEFAULT (0) FOR AccDetailCode;
END
GO

IF COL_LENGTH('Pay.Interdicts', 'AccCTopicCode') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Interdicts') AND c.name = 'AccCTopicCode';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Interdicts DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Interdicts ADD CONSTRAINT DF_Interdicts_AccCTopicCode DEFAULT (0) FOR AccCTopicCode;
END
GO

IF COL_LENGTH('Pay.Interdicts', 'AccCTopicCode2') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Interdicts') AND c.name = 'AccCTopicCode2';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Interdicts DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Interdicts ADD CONSTRAINT DF_Interdicts_AccCTopicCode2 DEFAULT (0) FOR AccCTopicCode2;
END
GO

IF COL_LENGTH('Pay.Interdicts', 'State') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Interdicts') AND c.name = 'State';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Interdicts DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Interdicts ADD CONSTRAINT DF_Interdicts_State DEFAULT (0) FOR State;
END
GO

IF COL_LENGTH('Pay.Interdicts', 'TotalYearsWork') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Interdicts') AND c.name = 'TotalYearsWork';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Interdicts DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Interdicts ADD CONSTRAINT DF_Interdicts_TotalYearsWork DEFAULT (0) FOR TotalYearsWork;
END
GO

IF COL_LENGTH('Pay.Interdicts', 'TaxCalculationType') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Interdicts') AND c.name = 'TaxCalculationType';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Interdicts DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Interdicts ADD CONSTRAINT DF_Interdicts_TaxCalculationType DEFAULT (0) FOR TaxCalculationType;
END
GO

IF COL_LENGTH('Pay.Interdicts', 'ProjectID') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Interdicts') AND c.name = 'ProjectID';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Interdicts DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Interdicts ADD CONSTRAINT DF_Interdicts_ProjectID DEFAULT (0) FOR ProjectID;
END
GO

IF COL_LENGTH('Pay.Interdicts', 'StandardEmployAmount') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Interdicts') AND c.name = 'StandardEmployAmount';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Interdicts DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Interdicts ADD CONSTRAINT DF_Interdicts_StandardEmployAmount DEFAULT (0) FOR StandardEmployAmount;
END
GO

IF COL_LENGTH('Pay.Interdicts', 'ManegePercent') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Interdicts') AND c.name = 'ManegePercent';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Interdicts DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Interdicts ADD CONSTRAINT DF_Interdicts_ManegePercent DEFAULT (0) FOR ManegePercent;
END
GO

IF COL_LENGTH('Pay.Interdicts', 'OfficeManegePercent') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Interdicts') AND c.name = 'OfficeManegePercent';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Interdicts DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Interdicts ADD CONSTRAINT DF_Interdicts_OfficeManegePercent DEFAULT (0) FOR OfficeManegePercent;
END
GO

IF COL_LENGTH('Pay.Interdicts', 'GroupID') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Interdicts') AND c.name = 'GroupID';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Interdicts DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Interdicts ADD CONSTRAINT DF_Interdicts_GroupID DEFAULT (0) FOR GroupID;
END
GO

IF COL_LENGTH('Pay.Interdicts', 'PayehNo') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Interdicts') AND c.name = 'PayehNo';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Interdicts DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Interdicts ADD CONSTRAINT DF_Interdicts_PayehNo DEFAULT (0) FOR PayehNo;
END
GO

IF COL_LENGTH('Pay.Interdicts', 'GrpExpense') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Interdicts') AND c.name = 'GrpExpense';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Interdicts DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Interdicts ADD CONSTRAINT DF_Interdicts_GrpExpense DEFAULT (0) FOR GrpExpense;
END
GO

IF COL_LENGTH('Pay.Interdicts', 'SubFunctionID') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Interdicts') AND c.name = 'SubFunctionID';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Interdicts DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Interdicts ADD CONSTRAINT DF_Interdicts_SubFunctionID DEFAULT (0) FOR SubFunctionID;
END
GO

IF COL_LENGTH('Pay.Interdicts', 'SubInterdictID') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Interdicts') AND c.name = 'SubInterdictID';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Interdicts DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Interdicts ADD CONSTRAINT DF_Interdicts_SubInterdictID DEFAULT (0) FOR SubInterdictID;
END
GO

IF COL_LENGTH('Pay.Interdicts', 'LastInterdictID') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Interdicts') AND c.name = 'LastInterdictID';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Interdicts DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Interdicts ADD CONSTRAINT DF_Interdicts_LastInterdictID DEFAULT (0) FOR LastInterdictID;
END
GO

IF COL_LENGTH('Pay.Interdicts', 'AccCTopicCode3') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Interdicts') AND c.name = 'AccCTopicCode3';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Interdicts DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Interdicts ADD CONSTRAINT DF_Interdicts_AccCTopicCode3 DEFAULT (0) FOR AccCTopicCode3;
END
GO

IF COL_LENGTH('Pay.Interdicts', 'GradeDate') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Interdicts') AND c.name = 'GradeDate';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Interdicts DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Interdicts ADD CONSTRAINT DF_Interdicts_GradeDate DEFAULT ('') FOR GradeDate;
END
GO

IF COL_LENGTH('Pay.Interdicts', 'HasRetard') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Interdicts') AND c.name = 'HasRetard';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Interdicts DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Interdicts ADD CONSTRAINT DF_Interdicts_HasRetard DEFAULT (0) FOR HasRetard;
END
GO

IF COL_LENGTH('Pay.Interdicts', 'RetardActive') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Interdicts') AND c.name = 'RetardActive';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Interdicts DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Interdicts ADD CONSTRAINT DF_Interdicts_RetardActive DEFAULT (1) FOR RetardActive;
END
GO

-- ==================================================================
-- جدول: Pay.Mission
-- ==================================================================
IF COL_LENGTH('Pay.Mission', 'State') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Mission') AND c.name = 'State';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Mission DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Mission ADD CONSTRAINT DF_Mission_State DEFAULT (0) FOR State;
END
GO

IF COL_LENGTH('Pay.Mission', 'CompanyCode') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Mission') AND c.name = 'CompanyCode';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Mission DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Mission ADD CONSTRAINT DF_Mission_CompanyCode DEFAULT (0) FOR CompanyCode;
END
GO

IF COL_LENGTH('Pay.Mission', 'AccTopicCode') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Mission') AND c.name = 'AccTopicCode';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Mission DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Mission ADD CONSTRAINT DF_Mission_AccTopicCode DEFAULT ('0') FOR AccTopicCode;
END
GO

IF COL_LENGTH('Pay.Mission', 'AccDetailCode') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Mission') AND c.name = 'AccDetailCode';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Mission DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Mission ADD CONSTRAINT DF_Mission_AccDetailCode DEFAULT (0) FOR AccDetailCode;
END
GO

IF COL_LENGTH('Pay.Mission', 'AccCTopicCode') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Mission') AND c.name = 'AccCTopicCode';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Mission DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Mission ADD CONSTRAINT DF_Mission_AccCTopicCode DEFAULT (0) FOR AccCTopicCode;
END
GO

IF COL_LENGTH('Pay.Mission', 'AccCTopicCode2') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Mission') AND c.name = 'AccCTopicCode2';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Mission DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Mission ADD CONSTRAINT DF_Mission_AccCTopicCode2 DEFAULT (0) FOR AccCTopicCode2;
END
GO

IF COL_LENGTH('Pay.Mission', 'AccCTopicCode3') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Mission') AND c.name = 'AccCTopicCode3';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Mission DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Mission ADD CONSTRAINT DF_Mission_AccCTopicCode3 DEFAULT (0) FOR AccCTopicCode3;
END
GO

-- ==================================================================
-- جدول: Pay.MissionInfo
-- ==================================================================
IF COL_LENGTH('Pay.MissionInfo', 'AccDetailCode') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.MissionInfo') AND c.name = 'AccDetailCode';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.MissionInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.MissionInfo ADD CONSTRAINT DF_MissionInfo_AccDetailCode DEFAULT (0) FOR AccDetailCode;
END
GO

IF COL_LENGTH('Pay.MissionInfo', 'AccCTopicCode') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.MissionInfo') AND c.name = 'AccCTopicCode';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.MissionInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.MissionInfo ADD CONSTRAINT DF_MissionInfo_AccCTopicCode DEFAULT (0) FOR AccCTopicCode;
END
GO

IF COL_LENGTH('Pay.MissionInfo', 'AccCTopicCode2') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.MissionInfo') AND c.name = 'AccCTopicCode2';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.MissionInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.MissionInfo ADD CONSTRAINT DF_MissionInfo_AccCTopicCode2 DEFAULT (0) FOR AccCTopicCode2;
END
GO

IF COL_LENGTH('Pay.MissionInfo', 'AccCTopicCode3') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.MissionInfo') AND c.name = 'AccCTopicCode3';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.MissionInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.MissionInfo ADD CONSTRAINT DF_MissionInfo_AccCTopicCode3 DEFAULT (0) FOR AccCTopicCode3;
END
GO

-- ==================================================================
-- جدول: Pay.PersonelDecExt
-- ==================================================================
IF COL_LENGTH('Pay.PersonelDecExt', 'DayQuntity') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelDecExt') AND c.name = 'DayQuntity';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelDecExt DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelDecExt ADD CONSTRAINT DF_PersonelDecExt_DayQuntity DEFAULT (0) FOR DayQuntity;
END
GO

IF COL_LENGTH('Pay.PersonelDecExt', 'DayTime') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelDecExt') AND c.name = 'DayTime';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelDecExt DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelDecExt ADD CONSTRAINT DF_PersonelDecExt_DayTime DEFAULT (0) FOR DayTime;
END
GO

IF COL_LENGTH('Pay.PersonelDecExt', 'FormInfoID2') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelDecExt') AND c.name = 'FormInfoID2';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelDecExt DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelDecExt ADD CONSTRAINT DF_PersonelDecExt_FormInfoID2 DEFAULT (0) FOR FormInfoID2;
END
GO

IF COL_LENGTH('Pay.PersonelDecExt', 'PaymentLoan') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelDecExt') AND c.name = 'PaymentLoan';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelDecExt DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelDecExt ADD CONSTRAINT DF_PersonelDecExt_PaymentLoan DEFAULT (0) FOR PaymentLoan;
END
GO

IF COL_LENGTH('Pay.PersonelDecExt', 'OfficeCode') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelDecExt') AND c.name = 'OfficeCode';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelDecExt DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelDecExt ADD CONSTRAINT DF_PersonelDecExt_OfficeCode DEFAULT (0) FOR OfficeCode;
END
GO

IF COL_LENGTH('Pay.PersonelDecExt', 'EndDate') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelDecExt') AND c.name = 'EndDate';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelDecExt DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelDecExt ADD CONSTRAINT DF_PersonelDecExt_EndDate DEFAULT ('') FOR EndDate;
END
GO

IF COL_LENGTH('Pay.PersonelDecExt', 'Minute_') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelDecExt') AND c.name = 'Minute_';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelDecExt DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelDecExt ADD CONSTRAINT DF_PersonelDecExt_Minute_ DEFAULT (0) FOR Minute_;
END
GO

IF COL_LENGTH('Pay.PersonelDecExt', 'AccCTopicCode3') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelDecExt') AND c.name = 'AccCTopicCode3';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelDecExt DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelDecExt ADD CONSTRAINT DF_PersonelDecExt_AccCTopicCode3 DEFAULT (0) FOR AccCTopicCode3;
END
GO

IF COL_LENGTH('Pay.PersonelDecExt', 'State') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelDecExt') AND c.name = 'State';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelDecExt DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelDecExt ADD CONSTRAINT DF_PersonelDecExt_State DEFAULT (0) FOR State;
END
GO

IF COL_LENGTH('Pay.PersonelDecExt', 'Situation') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelDecExt') AND c.name = 'Situation';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelDecExt DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelDecExt ADD CONSTRAINT DF_PersonelDecExt_Situation DEFAULT (0) FOR Situation;
END
GO

IF COL_LENGTH('Pay.PersonelDecExt', 'PayableDuringMonth') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelDecExt') AND c.name = 'PayableDuringMonth';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelDecExt DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelDecExt ADD CONSTRAINT DF_PersonelDecExt_PayableDuringMonth DEFAULT (0) FOR PayableDuringMonth;
END
GO

IF COL_LENGTH('Pay.PersonelDecExt', 'NumberOfMonth') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelDecExt') AND c.name = 'NumberOfMonth';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelDecExt DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelDecExt ADD CONSTRAINT DF_PersonelDecExt_NumberOfMonth DEFAULT (0) FOR NumberOfMonth;
END
GO

IF COL_LENGTH('Pay.PersonelDecExt', 'leavePrice') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelDecExt') AND c.name = 'leavePrice';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelDecExt DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelDecExt ADD CONSTRAINT DF_PersonelDecExt_leavePrice DEFAULT (0) FOR leavePrice;
END
GO

-- ==================================================================
-- جدول: Pay.PersonelInfo
-- ==================================================================
IF COL_LENGTH('Pay.PersonelInfo', 'PersonelState') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelInfo') AND c.name = 'PersonelState';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelInfo ADD CONSTRAINT DF_PersonelInfo_PersonelState DEFAULT (0) FOR PersonelState;
END
GO

IF COL_LENGTH('Pay.PersonelInfo', 'NationalityCode') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelInfo') AND c.name = 'NationalityCode';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelInfo ADD CONSTRAINT DF_PersonelInfo_NationalityCode DEFAULT (0) FOR NationalityCode;
END
GO

IF COL_LENGTH('Pay.PersonelInfo', 'BirthDate') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelInfo') AND c.name = 'BirthDate';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelInfo ADD CONSTRAINT DF_PersonelInfo_BirthDate DEFAULT (0) FOR BirthDate;
END
GO

IF COL_LENGTH('Pay.PersonelInfo', 'BirthPlace') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelInfo') AND c.name = 'BirthPlace';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelInfo ADD CONSTRAINT DF_PersonelInfo_BirthPlace DEFAULT (0) FOR BirthPlace;
END
GO

IF COL_LENGTH('Pay.PersonelInfo', 'SodurPlace') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelInfo') AND c.name = 'SodurPlace';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelInfo ADD CONSTRAINT DF_PersonelInfo_SodurPlace DEFAULT (0) FOR SodurPlace;
END
GO

IF COL_LENGTH('Pay.PersonelInfo', 'IDNumber') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelInfo') AND c.name = 'IDNumber';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelInfo ADD CONSTRAINT DF_PersonelInfo_IDNumber DEFAULT (0) FOR IDNumber;
END
GO

IF COL_LENGTH('Pay.PersonelInfo', 'sex') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelInfo') AND c.name = 'sex';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelInfo ADD CONSTRAINT DF_PersonelInfo_sex DEFAULT (0) FOR sex;
END
GO

IF COL_LENGTH('Pay.PersonelInfo', 'marriage') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelInfo') AND c.name = 'marriage';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelInfo ADD CONSTRAINT DF_PersonelInfo_marriage DEFAULT (0) FOR marriage;
END
GO

IF COL_LENGTH('Pay.PersonelInfo', 'childNumber') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelInfo') AND c.name = 'childNumber';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelInfo ADD CONSTRAINT DF_PersonelInfo_childNumber DEFAULT (0) FOR childNumber;
END
GO

IF COL_LENGTH('Pay.PersonelInfo', 'SupPepNumber') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelInfo') AND c.name = 'SupPepNumber';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelInfo ADD CONSTRAINT DF_PersonelInfo_SupPepNumber DEFAULT (0) FOR SupPepNumber;
END
GO

IF COL_LENGTH('Pay.PersonelInfo', 'LicenceCode') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelInfo') AND c.name = 'LicenceCode';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelInfo ADD CONSTRAINT DF_PersonelInfo_LicenceCode DEFAULT (0) FOR LicenceCode;
END
GO

IF COL_LENGTH('Pay.PersonelInfo', 'studyField') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelInfo') AND c.name = 'studyField';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelInfo ADD CONSTRAINT DF_PersonelInfo_studyField DEFAULT (0) FOR studyField;
END
GO

IF COL_LENGTH('Pay.PersonelInfo', 'StudyCityCode') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelInfo') AND c.name = 'StudyCityCode';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelInfo ADD CONSTRAINT DF_PersonelInfo_StudyCityCode DEFAULT (0) FOR StudyCityCode;
END
GO

IF COL_LENGTH('Pay.PersonelInfo', 'UnivercityCode') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelInfo') AND c.name = 'UnivercityCode';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelInfo ADD CONSTRAINT DF_PersonelInfo_UnivercityCode DEFAULT (0) FOR UnivercityCode;
END
GO

IF COL_LENGTH('Pay.PersonelInfo', 'BankCode') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelInfo') AND c.name = 'BankCode';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelInfo ADD CONSTRAINT DF_PersonelInfo_BankCode DEFAULT (0) FOR BankCode;
END
GO

IF COL_LENGTH('Pay.PersonelInfo', 'insuranceID') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelInfo') AND c.name = 'insuranceID';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelInfo ADD CONSTRAINT DF_PersonelInfo_insuranceID DEFAULT (0) FOR insuranceID;
END
GO

IF COL_LENGTH('Pay.PersonelInfo', 'TaxZone') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelInfo') AND c.name = 'TaxZone';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelInfo ADD CONSTRAINT DF_PersonelInfo_TaxZone DEFAULT (0) FOR TaxZone;
END
GO

IF COL_LENGTH('Pay.PersonelInfo', 'TaxCalculationType') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelInfo') AND c.name = 'TaxCalculationType';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelInfo ADD CONSTRAINT DF_PersonelInfo_TaxCalculationType DEFAULT (0) FOR TaxCalculationType;
END
GO

IF COL_LENGTH('Pay.PersonelInfo', 'CoTax') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelInfo') AND c.name = 'CoTax';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelInfo ADD CONSTRAINT DF_PersonelInfo_CoTax DEFAULT (0) FOR CoTax;
END
GO

IF COL_LENGTH('Pay.PersonelInfo', 'StoreDayTime') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelInfo') AND c.name = 'StoreDayTime';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelInfo ADD CONSTRAINT DF_PersonelInfo_StoreDayTime DEFAULT (0) FOR StoreDayTime;
END
GO

IF COL_LENGTH('Pay.PersonelInfo', 'StoreDayTimeActive') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelInfo') AND c.name = 'StoreDayTimeActive';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelInfo ADD CONSTRAINT DF_PersonelInfo_StoreDayTimeActive DEFAULT (1) FOR StoreDayTimeActive;
END
GO

IF COL_LENGTH('Pay.PersonelInfo', 'AccTopicCode') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelInfo') AND c.name = 'AccTopicCode';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelInfo ADD CONSTRAINT DF_PersonelInfo_AccTopicCode DEFAULT (0) FOR AccTopicCode;
END
GO

IF COL_LENGTH('Pay.PersonelInfo', 'AccDetailCode') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelInfo') AND c.name = 'AccDetailCode';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelInfo ADD CONSTRAINT DF_PersonelInfo_AccDetailCode DEFAULT (0) FOR AccDetailCode;
END
GO

IF COL_LENGTH('Pay.PersonelInfo', 'AccCTopicCode') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelInfo') AND c.name = 'AccCTopicCode';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelInfo ADD CONSTRAINT DF_PersonelInfo_AccCTopicCode DEFAULT (0) FOR AccCTopicCode;
END
GO

IF COL_LENGTH('Pay.PersonelInfo', 'AccCTopicCode2') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelInfo') AND c.name = 'AccCTopicCode2';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelInfo ADD CONSTRAINT DF_PersonelInfo_AccCTopicCode2 DEFAULT (0) FOR AccCTopicCode2;
END
GO

IF COL_LENGTH('Pay.PersonelInfo', 'SpecialJob') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelInfo') AND c.name = 'SpecialJob';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelInfo ADD CONSTRAINT DF_PersonelInfo_SpecialJob DEFAULT (0) FOR SpecialJob;
END
GO

IF COL_LENGTH('Pay.PersonelInfo', 'AccCTopicCode3') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelInfo') AND c.name = 'AccCTopicCode3';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelInfo ADD CONSTRAINT DF_PersonelInfo_AccCTopicCode3 DEFAULT (0) FOR AccCTopicCode3;
END
GO

IF COL_LENGTH('Pay.PersonelInfo', 'MaskanKind') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelInfo') AND c.name = 'MaskanKind';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelInfo ADD CONSTRAINT DF_PersonelInfo_MaskanKind DEFAULT (0) FOR MaskanKind;
END
GO

IF COL_LENGTH('Pay.PersonelInfo', 'SpecialState') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelInfo') AND c.name = 'SpecialState';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelInfo ADD CONSTRAINT DF_PersonelInfo_SpecialState DEFAULT (0) FOR SpecialState;
END
GO

IF COL_LENGTH('Pay.PersonelInfo', 'OffTime') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelInfo') AND c.name = 'OffTime';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelInfo ADD CONSTRAINT DF_PersonelInfo_OffTime DEFAULT (0) FOR OffTime;
END
GO

IF COL_LENGTH('Pay.PersonelInfo', 'MartyrChild') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelInfo') AND c.name = 'MartyrChild';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelInfo ADD CONSTRAINT DF_PersonelInfo_MartyrChild DEFAULT (0) FOR MartyrChild;
END
GO

-- ==================================================================
-- جدول: Pay.PersonelSponsorship
-- ==================================================================
IF COL_LENGTH('Pay.PersonelSponsorship', 'Kind') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelSponsorship') AND c.name = 'Kind';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelSponsorship DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelSponsorship ADD CONSTRAINT DF_PersonelSponsorship_Kind DEFAULT (0) FOR Kind;
END
GO

IF COL_LENGTH('Pay.PersonelSponsorship', 'Sex') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelSponsorship') AND c.name = 'Sex';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelSponsorship DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelSponsorship ADD CONSTRAINT DF_PersonelSponsorship_Sex DEFAULT (0) FOR Sex;
END
GO

IF COL_LENGTH('Pay.PersonelSponsorship', 'StudyActive') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelSponsorship') AND c.name = 'StudyActive';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelSponsorship DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelSponsorship ADD CONSTRAINT DF_PersonelSponsorship_StudyActive DEFAULT (1) FOR StudyActive;
END
GO

IF COL_LENGTH('Pay.PersonelSponsorship', 'InsurancePercent') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelSponsorship') AND c.name = 'InsurancePercent';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelSponsorship DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelSponsorship ADD CONSTRAINT DF_PersonelSponsorship_InsurancePercent DEFAULT (100) FOR InsurancePercent;
END
GO

IF COL_LENGTH('Pay.PersonelSponsorship', 'GraduationDate') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PersonelSponsorship') AND c.name = 'GraduationDate';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PersonelSponsorship DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PersonelSponsorship ADD CONSTRAINT DF_PersonelSponsorship_GraduationDate DEFAULT ('') FOR GraduationDate;
END
GO

-- ==================================================================
-- جدول: Pay.Pony
-- ==================================================================
IF COL_LENGTH('Pay.Pony', 'Tax') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Pony') AND c.name = 'Tax';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Pony DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Pony ADD CONSTRAINT DF_Pony_Tax DEFAULT (0) FOR Tax;
END
GO

IF COL_LENGTH('Pay.Pony', 'SalaryNet') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Pony') AND c.name = 'SalaryNet';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Pony DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Pony ADD CONSTRAINT DF_Pony_SalaryNet DEFAULT (0) FOR SalaryNet;
END
GO

IF COL_LENGTH('Pay.Pony', 'SalaryNonNet') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Pony') AND c.name = 'SalaryNonNet';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Pony DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Pony ADD CONSTRAINT DF_Pony_SalaryNonNet DEFAULT (0) FOR SalaryNonNet;
END
GO

IF COL_LENGTH('Pay.Pony', 'SalarySum') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Pony') AND c.name = 'SalarySum';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Pony DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Pony ADD CONSTRAINT DF_Pony_SalarySum DEFAULT (0) FOR SalarySum;
END
GO

IF COL_LENGTH('Pay.Pony', 'SalaryPureSum') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.Pony') AND c.name = 'SalaryPureSum';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.Pony DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.Pony ADD CONSTRAINT DF_Pony_SalaryPureSum DEFAULT (0) FOR SalaryPureSum;
END
GO

-- ==================================================================
-- جدول: Pay.PonyArchives
-- ==================================================================
IF COL_LENGTH('Pay.PonyArchives', 'ExtraAmount') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PonyArchives') AND c.name = 'ExtraAmount';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PonyArchives DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PonyArchives ADD CONSTRAINT DF_PonyArchives_ExtraAmount DEFAULT (0) FOR ExtraAmount;
END
GO

IF COL_LENGTH('Pay.PonyArchives', 'Price') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PonyArchives') AND c.name = 'Price';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PonyArchives DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PonyArchives ADD CONSTRAINT DF_PonyArchives_Price DEFAULT (0) FOR Price;
END
GO

-- ==================================================================
-- جدول: Pay.PonyDebitCredits
-- ==================================================================
IF COL_LENGTH('Pay.PonyDebitCredits', 'Amount') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.PonyDebitCredits') AND c.name = 'Amount';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.PonyDebitCredits DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.PonyDebitCredits ADD CONSTRAINT DF_PonyDebitCredits_Amount DEFAULT (0) FOR Amount;
END
GO

-- ==================================================================
-- جدول: Pay.RecalClocks
-- ==================================================================
IF COL_LENGTH('Pay.RecalClocks', 'SalaryID') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.RecalClocks') AND c.name = 'SalaryID';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.RecalClocks DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.RecalClocks ADD CONSTRAINT DF_RecalClocks_SalaryID DEFAULT (0) FOR SalaryID;
END
GO

IF COL_LENGTH('Pay.RecalClocks', 'Kind') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.RecalClocks') AND c.name = 'Kind';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.RecalClocks DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.RecalClocks ADD CONSTRAINT DF_RecalClocks_Kind DEFAULT (0) FOR Kind;
END
GO

-- ==================================================================
-- جدول: Pay.SalaryRange
-- ==================================================================
IF COL_LENGTH('Pay.SalaryRange', 'Kind') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.SalaryRange') AND c.name = 'Kind';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.SalaryRange DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.SalaryRange ADD CONSTRAINT DF_SalaryRange_Kind DEFAULT (0) FOR Kind;
END
GO

-- ==================================================================
-- جدول: Pay.TaxInfo
-- ==================================================================
IF COL_LENGTH('Pay.TaxInfo', 'PaymentsCases') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.TaxInfo') AND c.name = 'PaymentsCases';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.TaxInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.TaxInfo ADD CONSTRAINT DF_TaxInfo_PaymentsCases DEFAULT (0) FOR PaymentsCases;
END
GO

IF COL_LENGTH('Pay.TaxInfo', 'Penalties4NonSubmission') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.TaxInfo') AND c.name = 'Penalties4NonSubmission';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.TaxInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.TaxInfo ADD CONSTRAINT DF_TaxInfo_Penalties4NonSubmission DEFAULT (0) FOR Penalties4NonSubmission;
END
GO

IF COL_LENGTH('Pay.TaxInfo', 'Penalties4NonPay') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.TaxInfo') AND c.name = 'Penalties4NonPay';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.TaxInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.TaxInfo ADD CONSTRAINT DF_TaxInfo_Penalties4NonPay DEFAULT (0) FOR Penalties4NonPay;
END
GO

IF COL_LENGTH('Pay.TaxInfo', 'Penalties4NonSubmissionLast') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.TaxInfo') AND c.name = 'Penalties4NonSubmissionLast';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.TaxInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.TaxInfo ADD CONSTRAINT DF_TaxInfo_Penalties4NonSubmissionLast DEFAULT (0) FOR Penalties4NonSubmissionLast;
END
GO

IF COL_LENGTH('Pay.TaxInfo', 'Penalties4NonPayLast') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.TaxInfo') AND c.name = 'Penalties4NonPayLast';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.TaxInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.TaxInfo ADD CONSTRAINT DF_TaxInfo_Penalties4NonPayLast DEFAULT (0) FOR Penalties4NonPayLast;
END
GO

IF COL_LENGTH('Pay.TaxInfo', 'SalarieLastMonth') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.TaxInfo') AND c.name = 'SalarieLastMonth';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.TaxInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.TaxInfo ADD CONSTRAINT DF_TaxInfo_SalarieLastMonth DEFAULT (0) FOR SalarieLastMonth;
END
GO

IF COL_LENGTH('Pay.TaxInfo', 'SalarieBonusesLastMonth') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.TaxInfo') AND c.name = 'SalarieBonusesLastMonth';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.TaxInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.TaxInfo ADD CONSTRAINT DF_TaxInfo_SalarieBonusesLastMonth DEFAULT (0) FOR SalarieBonusesLastMonth;
END
GO

IF COL_LENGTH('Pay.TaxInfo', 'TaxLastMonth') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.TaxInfo') AND c.name = 'TaxLastMonth';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.TaxInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.TaxInfo ADD CONSTRAINT DF_TaxInfo_TaxLastMonth DEFAULT (0) FOR TaxLastMonth;
END
GO

IF COL_LENGTH('Pay.TaxInfo', 'TaxDebtLastMonth') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.TaxInfo') AND c.name = 'TaxDebtLastMonth';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.TaxInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.TaxInfo ADD CONSTRAINT DF_TaxInfo_TaxDebtLastMonth DEFAULT (0) FOR TaxDebtLastMonth;
END
GO

IF COL_LENGTH('Pay.TaxInfo', 'Paragraph') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.TaxInfo') AND c.name = 'Paragraph';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.TaxInfo DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.TaxInfo ADD CONSTRAINT DF_TaxInfo_Paragraph DEFAULT (85) FOR Paragraph;
END
GO

-- ==================================================================
-- جدول: Pay.WageFormula
-- ==================================================================
IF COL_LENGTH('Pay.WageFormula', 'RunOrder') IS NOT NULL
BEGIN
    DECLARE @dc NVARCHAR(128), @sql NVARCHAR(4000);
    SELECT @dc = dc.name FROM sys.default_constraints dc
    JOIN sys.columns c ON dc.parent_object_id = c.object_id AND dc.parent_column_id = c.column_id
    WHERE c.object_id = OBJECT_ID('Pay.WageFormula') AND c.name = 'RunOrder';
    IF @dc IS NOT NULL BEGIN SET @sql = N'ALTER TABLE Pay.WageFormula DROP CONSTRAINT ' + QUOTENAME(@dc); EXEC sp_executesql @sql; END
    ALTER TABLE Pay.WageFormula ADD CONSTRAINT DF_WageFormula_RunOrder DEFAULT (1) FOR RunOrder;
END
GO
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_CalculateWage_FormsInfo' AND type = 'F')
 begin
ALTER TABLE Pay.CalculateWage  WITH CHECK ADD  CONSTRAINT FK_CalculateWage_FormsInfo FOREIGN KEY(SalaryID)
REFERENCES Pay.FormsInfo (FormInfoID)
ON UPDATE CASCADE

ALTER TABLE Pay.CalculateWage CHECK CONSTRAINT FK_CalculateWage_FormsInfo
end

 IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ChangeWage_FormsInfo' AND type = 'F')
 begin
ALTER TABLE Pay.ChangeWage  WITH CHECK ADD  CONSTRAINT FK_ChangeWage_FormsInfo FOREIGN KEY(SalaryID)
REFERENCES Pay.FormsInfo (FormInfoID)
ON UPDATE CASCADE

ALTER TABLE Pay.ChangeWage CHECK CONSTRAINT FK_ChangeWage_FormsInfo
end

 IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_DecExtItems_FormsInfo' AND type = 'F')
 begin
ALTER TABLE Pay.DecExtItems  WITH CHECK ADD  CONSTRAINT FK_DecExtItems_FormsInfo FOREIGN KEY(SalaryID)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.DecExtItems CHECK CONSTRAINT FK_DecExtItems_FormsInfo

end 

 IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_DecExtItems_PersonelDecExt' AND type = 'F')
 begin
ALTER TABLE Pay.DecExtItems  WITH CHECK ADD  CONSTRAINT FK_DecExtItems_PersonelDecExt FOREIGN KEY(DecExtID)
REFERENCES Pay.PersonelDecExt (DecExtID)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Pay.DecExtItems CHECK CONSTRAINT FK_DecExtItems_PersonelDecExt
end


IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FixedCalculated_FixedLabels' AND type = 'F')
 begin
ALTER TABLE Pay.FixedCalculated  WITH CHECK ADD  CONSTRAINT FK_FixedCalculated_FixedLabels FOREIGN KEY(LabelID)
REFERENCES Pay.FixedLabels (LabelID)
ON UPDATE CASCADE

ALTER TABLE Pay.FixedCalculated CHECK CONSTRAINT FK_FixedCalculated_FixedLabels
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FixedCalculated_MaliYear' AND type = 'F')
 begin
ALTER TABLE Pay.FixedCalculated  WITH CHECK ADD  CONSTRAINT FK_FixedCalculated_MaliYear FOREIGN KEY(YearID)
REFERENCES Util.MaliYear (YearID)
ON UPDATE CASCADE

ALTER TABLE Pay.FixedCalculated CHECK CONSTRAINT FK_FixedCalculated_MaliYear
end


IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FixedCalculated_PersonelInfo' AND type = 'F')
 begin
ALTER TABLE Pay.FixedCalculated  WITH CHECK ADD  CONSTRAINT FK_FixedCalculated_PersonelInfo FOREIGN KEY(PersonelNO)
REFERENCES Pay.PersonelInfo (PersonelNo)
ON UPDATE CASCADE

ALTER TABLE Pay.FixedCalculated CHECK CONSTRAINT FK_FixedCalculated_PersonelInfo
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FormInfoItems_FormsInfo' AND type = 'F')
begin
ALTER TABLE Pay.FormInfoItems  WITH NOCHECK ADD  CONSTRAINT FK_FormInfoItems_FormsInfo FOREIGN KEY(FormInfoID)
REFERENCES Pay.FormsInfo (FormInfoID)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Pay.FormInfoItems CHECK CONSTRAINT FK_FormInfoItems_FormsInfo
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FormInfoItems_FormsInfo1' AND type = 'F')
begin
ALTER TABLE Pay.FormInfoItems  WITH NOCHECK ADD  CONSTRAINT FK_FormInfoItems_FormsInfo1 FOREIGN KEY(SalaryID)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.FormInfoItems CHECK CONSTRAINT FK_FormInfoItems_FormsInfo1
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FormInfoItems_SalaryID2' AND type = 'F')
begin
ALTER TABLE Pay.FormInfoItems  WITH CHECK ADD  CONSTRAINT FK_FormInfoItems_SalaryID2 FOREIGN KEY(SalaryID2)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.FormInfoItems CHECK CONSTRAINT FK_FormInfoItems_SalaryID2
end


IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FunctionDay_FormsInfo' AND type = 'F')
begin
ALTER TABLE Pay.FunctionDay  WITH CHECK ADD  CONSTRAINT FK_FunctionDay_FormsInfo FOREIGN KEY(OfficeCode)
REFERENCES Pay.FormsInfo (FormInfoID)
ON UPDATE CASCADE

ALTER TABLE Pay.FunctionDay CHECK CONSTRAINT FK_FunctionDay_FormsInfo
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FunctionDay_MaliYear' AND type = 'F')
begin
ALTER TABLE Pay.FunctionDay  WITH CHECK ADD  CONSTRAINT FK_FunctionDay_MaliYear FOREIGN KEY(YearID)
REFERENCES Util.MaliYear (YearID)
ON UPDATE CASCADE

ALTER TABLE Pay.FunctionDay CHECK CONSTRAINT FK_FunctionDay_MaliYear
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FunctionDayItems_FormsInfo' AND type = 'F')
begin
ALTER TABLE Pay.FunctionDayItems  WITH CHECK ADD  CONSTRAINT FK_FunctionDayItems_FormsInfo FOREIGN KEY(PeresentID)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.FunctionDayItems CHECK CONSTRAINT FK_FunctionDayItems_FormsInfo
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FunctionDayItems_FormsInfo1' AND type = 'F')
begin
ALTER TABLE Pay.FunctionDayItems  WITH CHECK ADD  CONSTRAINT FK_FunctionDayItems_FormsInfo1 FOREIGN KEY(ShiftNo)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.FunctionDayItems CHECK CONSTRAINT FK_FunctionDayItems_FormsInfo1
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FunctionDayItems_FormsInfo2' AND type = 'F')
begin
ALTER TABLE Pay.FunctionDayItems  WITH CHECK ADD  CONSTRAINT FK_FunctionDayItems_FormsInfo2 FOREIGN KEY(WorkID)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.FunctionDayItems CHECK CONSTRAINT FK_FunctionDayItems_FormsInfo2
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FunctionDayItems_FormsInfo3' AND type = 'F')
begin
ALTER TABLE Pay.FunctionDayItems  WITH CHECK ADD  CONSTRAINT FK_FunctionDayItems_FormsInfo3 FOREIGN KEY(ProcCode)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.FunctionDayItems CHECK CONSTRAINT FK_FunctionDayItems_FormsInfo3
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FunctionDayItems_FunctionDay' AND type = 'F')
begin
ALTER TABLE Pay.FunctionDayItems  WITH NOCHECK ADD  CONSTRAINT FK_FunctionDayItems_FunctionDay FOREIGN KEY(FunID)
REFERENCES Pay.FunctionDay (FunID)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Pay.FunctionDayItems CHECK CONSTRAINT FK_FunctionDayItems_FunctionDay
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FunctionDayItems_PersonelInfo' AND type = 'F')
begin
ALTER TABLE Pay.FunctionDayItems  WITH NOCHECK ADD  CONSTRAINT FK_FunctionDayItems_PersonelInfo FOREIGN KEY(PersonelNo)
REFERENCES Pay.PersonelInfo (PersonelNo)
ON UPDATE CASCADE

ALTER TABLE Pay.FunctionDayItems CHECK CONSTRAINT FK_FunctionDayItems_PersonelInfo
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Functions_FormsInfo' AND type = 'F')
begin
ALTER TABLE Pay.Functions  WITH CHECK ADD  CONSTRAINT FK_Functions_FormsInfo FOREIGN KEY(FormInfoID)
REFERENCES Pay.FormsInfo (FormInfoID)
ON UPDATE CASCADE

ALTER TABLE Pay.Functions CHECK CONSTRAINT FK_Functions_FormsInfo
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Functions_FormsInfo_OfficeCode' AND type = 'F')
begin
ALTER TABLE Pay.Functions  WITH CHECK ADD  CONSTRAINT FK_Functions_FormsInfo_OfficeCode FOREIGN KEY(OfficeCode)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.Functions CHECK CONSTRAINT FK_Functions_FormsInfo_OfficeCode
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Functions_FormsInfo1' AND type = 'F')
begin
ALTER TABLE Pay.Functions  WITH CHECK ADD  CONSTRAINT FK_Functions_FormsInfo1 FOREIGN KEY(ProjectID)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.Functions CHECK CONSTRAINT FK_Functions_FormsInfo1
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Functions_MaliYear' AND type = 'F')
begin
ALTER TABLE Pay.Functions  WITH CHECK ADD  CONSTRAINT FK_Functions_MaliYear FOREIGN KEY(YearID)
REFERENCES Util.MaliYear (YearID)
ON UPDATE CASCADE

ALTER TABLE Pay.Functions CHECK CONSTRAINT FK_Functions_MaliYear
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Functions_PersonelInfo' AND type = 'F')
begin
ALTER TABLE Pay.Functions  WITH CHECK ADD  CONSTRAINT FK_Functions_PersonelInfo FOREIGN KEY(PersonelNo)
REFERENCES Pay.PersonelInfo (PersonelNo)
ON UPDATE CASCADE

ALTER TABLE Pay.Functions CHECK CONSTRAINT FK_Functions_PersonelInfo
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FunctionsItems_FormsInfo' AND type = 'F')
begin
ALTER TABLE Pay.FunctionsItems  WITH CHECK ADD  CONSTRAINT FK_FunctionsItems_FormsInfo FOREIGN KEY(SalaryID)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.FunctionsItems CHECK CONSTRAINT FK_FunctionsItems_FormsInfo
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FunctionsItems_Functions' AND type = 'F')
begin
ALTER TABLE Pay.FunctionsItems  WITH NOCHECK ADD  CONSTRAINT FK_FunctionsItems_Functions FOREIGN KEY(FunctionID)
REFERENCES Pay.Functions (FunctionID)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Pay.FunctionsItems CHECK CONSTRAINT FK_FunctionsItems_Functions
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FunctionSpecial_MaliYear' AND type = 'F')
begin
ALTER TABLE Pay.FunctionSpecial  WITH CHECK ADD  CONSTRAINT FK_FunctionSpecial_MaliYear FOREIGN KEY(YearID)
REFERENCES Util.MaliYear (YearID)
ON UPDATE CASCADE

ALTER TABLE Pay.FunctionSpecial CHECK CONSTRAINT FK_FunctionSpecial_MaliYear
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FunctionSpecial_PersonelInfo' AND type = 'F')
begin
ALTER TABLE Pay.FunctionSpecial  WITH CHECK ADD  CONSTRAINT FK_FunctionSpecial_PersonelInfo FOREIGN KEY(PersonelNo)
REFERENCES Pay.PersonelInfo (PersonelNo)
ON UPDATE CASCADE

ALTER TABLE Pay.FunctionSpecial CHECK CONSTRAINT FK_FunctionSpecial_PersonelInfo
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FunctionSpecialControl_MaliYear' AND type = 'F')
begin
ALTER TABLE Pay.FunctionSpecialControl  WITH CHECK ADD  CONSTRAINT FK_FunctionSpecialControl_MaliYear FOREIGN KEY(YearID)
REFERENCES Util.MaliYear (YearID)
ON UPDATE CASCADE

ALTER TABLE Pay.FunctionSpecialControl CHECK CONSTRAINT FK_FunctionSpecialControl_MaliYear
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FunctionSpecialControl_PersonelInfo' AND type = 'F')
begin
ALTER TABLE Pay.FunctionSpecialControl  WITH CHECK ADD  CONSTRAINT FK_FunctionSpecialControl_PersonelInfo FOREIGN KEY(PersonelNo)
REFERENCES Pay.PersonelInfo (PersonelNo)
ON UPDATE CASCADE

ALTER TABLE Pay.FunctionSpecialControl CHECK CONSTRAINT FK_FunctionSpecialControl_PersonelInfo
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_GetRptColumns_GetReprots' AND type = 'F')
begin
ALTER TABLE Pay.GetRptColumns  WITH CHECK ADD  CONSTRAINT FK_GetRptColumns_GetReprots FOREIGN KEY(GetReprotsID)
REFERENCES Pay.GetReprots (GetReprotsID)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Pay.GetRptColumns CHECK CONSTRAINT FK_GetRptColumns_GetReprots
end

--IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Insurance_FormsInfo' AND type = 'F')
--begin
--ALTER TABLE Pay.Insurance  WITH CHECK ADD  CONSTRAINT FK_Insurance_FormsInfo FOREIGN KEY(FormInfoID)
--REFERENCES Pay.FormsInfo (FormInfoID)
--ON UPDATE CASCADE

--ALTER TABLE Pay.Insurance CHECK CONSTRAINT FK_Insurance_FormsInfo
--end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_InterdictItems_FormsInfo' AND type = 'F')
begin
ALTER TABLE Pay.InterdictItems  WITH CHECK ADD  CONSTRAINT FK_InterdictItems_FormsInfo FOREIGN KEY(SalaryID)
REFERENCES Pay.FormsInfo (FormInfoID)
ON UPDATE CASCADE

ALTER TABLE Pay.InterdictItems CHECK CONSTRAINT FK_InterdictItems_FormsInfo
end

DELETE FROM Pay.InterdictItems
FROM            Pay.InterdictItems LEFT OUTER JOIN
                         Pay.Interdicts ON Pay.InterdictItems.InterdictID = Pay.Interdicts.InterdictID
WHERE        (Pay.Interdicts.InterdictID IS NULL)

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_InterdictItems_Interdicts' AND type = 'F')
begin
ALTER TABLE Pay.InterdictItems  WITH CHECK ADD  CONSTRAINT FK_InterdictItems_Interdicts FOREIGN KEY(InterdictID)
REFERENCES Pay.Interdicts (InterdictID)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Pay.InterdictItems CHECK CONSTRAINT FK_InterdictItems_Interdicts
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Interdicts_FormsInfo' AND type = 'F')
begin
ALTER TABLE Pay.Interdicts  WITH CHECK ADD  CONSTRAINT FK_Interdicts_FormsInfo FOREIGN KEY(ProjectID)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.Interdicts CHECK CONSTRAINT FK_Interdicts_FormsInfo
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Interdicts_FormsInfo_jobCode' AND type = 'F')
begin
ALTER TABLE Pay.Interdicts  WITH CHECK ADD  CONSTRAINT FK_Interdicts_FormsInfo_jobCode FOREIGN KEY(jobCode)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.Interdicts CHECK CONSTRAINT FK_Interdicts_FormsInfo_jobCode
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Interdicts_FormsInfo_OfficeCode' AND type = 'F')
begin
ALTER TABLE Pay.Interdicts  WITH CHECK ADD  CONSTRAINT FK_Interdicts_FormsInfo_OfficeCode FOREIGN KEY(OfficeCode)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.Interdicts CHECK CONSTRAINT FK_Interdicts_FormsInfo_OfficeCode
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Interdicts_PersonelInfo' AND type = 'F')
begin
ALTER TABLE Pay.Interdicts  WITH CHECK ADD  CONSTRAINT FK_Interdicts_PersonelInfo FOREIGN KEY(PersonelNo)
REFERENCES Pay.PersonelInfo (PersonelNo)
ON UPDATE CASCADE

ALTER TABLE Pay.Interdicts CHECK CONSTRAINT FK_Interdicts_PersonelInfo
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_jobs_FormsInfo_JobLocation' AND type = 'F')
begin
ALTER TABLE Pay.jobs  WITH CHECK ADD  CONSTRAINT FK_jobs_FormsInfo_JobLocation FOREIGN KEY(JobLocation)
REFERENCES Pay.FormsInfo (FormInfoID)
ON UPDATE CASCADE

ALTER TABLE Pay.jobs CHECK CONSTRAINT FK_jobs_FormsInfo_JobLocation
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_jobs_FormsInfo_Organizational' AND type = 'F')
begin
ALTER TABLE Pay.jobs  WITH CHECK ADD  CONSTRAINT FK_jobs_FormsInfo_Organizational FOREIGN KEY(Organizational)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.jobs CHECK CONSTRAINT FK_jobs_FormsInfo_Organizational
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_jobs_FormsInfo_OrganPos' AND type = 'F')
begin
ALTER TABLE Pay.jobs  WITH CHECK ADD  CONSTRAINT FK_jobs_FormsInfo_OrganPos FOREIGN KEY(OrganPos)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.jobs CHECK CONSTRAINT FK_jobs_FormsInfo_OrganPos
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_jobsItems_jobs' AND type = 'F')
begin
ALTER TABLE Pay.jobsItems  WITH CHECK ADD  CONSTRAINT FK_jobsItems_jobs FOREIGN KEY(jobCode)
REFERENCES Pay.jobs (jobCode)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Pay.jobsItems CHECK CONSTRAINT FK_jobsItems_jobs
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_jobsSalaryRanges_FormsInfo' AND type = 'F')
begin
ALTER TABLE Pay.jobsSalaryRanges  WITH CHECK ADD  CONSTRAINT FK_jobsSalaryRanges_FormsInfo FOREIGN KEY(SalaryID)
REFERENCES Pay.FormsInfo (FormInfoID)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Pay.jobsSalaryRanges CHECK CONSTRAINT FK_jobsSalaryRanges_FormsInfo
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_jobsSalaryRanges_jobCode' AND type = 'F')
begin
ALTER TABLE Pay.jobsSalaryRanges  WITH CHECK ADD  CONSTRAINT FK_jobsSalaryRanges_jobCode FOREIGN KEY(jobCode)
REFERENCES Pay.jobs (jobCode)
ON DELETE CASCADE

ALTER TABLE Pay.jobsSalaryRanges CHECK CONSTRAINT FK_jobsSalaryRanges_jobCode
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_jobsTerms_FormsInfo_JobLevel' AND type = 'F')
begin
ALTER TABLE Pay.jobsTerms  WITH CHECK ADD  CONSTRAINT FK_jobsTerms_FormsInfo_JobLevel FOREIGN KEY(JobLevel)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.jobsTerms CHECK CONSTRAINT FK_jobsTerms_FormsInfo_JobLevel
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_jobsTerms_FormsInfo_LicenceCode' AND type = 'F')
begin
ALTER TABLE Pay.jobsTerms  WITH CHECK ADD  CONSTRAINT FK_jobsTerms_FormsInfo_LicenceCode FOREIGN KEY(LicenceCode)
REFERENCES Pay.FormsInfo (FormInfoID)
ON UPDATE CASCADE

ALTER TABLE Pay.jobsTerms CHECK CONSTRAINT FK_jobsTerms_FormsInfo_LicenceCode
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_jobsTerms_FormsInfo_StudyField' AND type = 'F')
begin
ALTER TABLE Pay.jobsTerms  WITH CHECK ADD  CONSTRAINT FK_jobsTerms_FormsInfo_StudyField FOREIGN KEY(StudyField)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.jobsTerms CHECK CONSTRAINT FK_jobsTerms_FormsInfo_StudyField
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_jobsTerms_jobs' AND type = 'F')
begin
ALTER TABLE Pay.jobsTerms  WITH CHECK ADD  CONSTRAINT FK_jobsTerms_jobs FOREIGN KEY(jobCode)
REFERENCES Pay.jobs (jobCode)

ALTER TABLE Pay.jobsTerms CHECK CONSTRAINT FK_jobsTerms_jobs
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Mission_MaliYear' AND type = 'F')
begin
ALTER TABLE Pay.Mission  WITH CHECK ADD  CONSTRAINT FK_Mission_MaliYear FOREIGN KEY(YearID)
REFERENCES Util.MaliYear (YearID)
ON UPDATE CASCADE

ALTER TABLE Pay.Mission CHECK CONSTRAINT FK_Mission_MaliYear
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FunctionDay_MaliYear' AND type = 'F')
begin
ALTER TABLE Pay.Mission  WITH NOCHECK ADD  CONSTRAINT FK_Mission_PersonelInfo FOREIGN KEY(PersonelNo)
REFERENCES Pay.PersonelInfo (PersonelNo)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Pay.Mission CHECK CONSTRAINT FK_Mission_PersonelInfo
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_MissionInfo_Mission' AND type = 'F')
begin
ALTER TABLE Pay.MissionInfo  WITH NOCHECK ADD  CONSTRAINT FK_MissionInfo_Mission FOREIGN KEY(MissionID)
REFERENCES Pay.Mission (MissionID)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Pay.MissionInfo CHECK CONSTRAINT FK_MissionInfo_Mission
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelAccounts_FormsInfoAccBankType_Pa' AND type = 'F')
begin
ALTER TABLE Pay.PersonelAccounts  WITH CHECK ADD  CONSTRAINT FK_PersonelAccounts_FormsInfoAccBankType_Pa FOREIGN KEY(AccBankType_Pa)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.PersonelAccounts CHECK CONSTRAINT FK_PersonelAccounts_FormsInfoAccBankType_Pa
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelAccounts_FormsInfoAccountsType' AND type = 'F')
begin
ALTER TABLE Pay.PersonelAccounts  WITH CHECK ADD  CONSTRAINT FK_PersonelAccounts_FormsInfoAccountsType FOREIGN KEY(AccountsType)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.PersonelAccounts CHECK CONSTRAINT FK_PersonelAccounts_FormsInfoAccountsType
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelAccounts_FormsInfoBankCode_Pa' AND type = 'F')
begin
ALTER TABLE Pay.PersonelAccounts  WITH CHECK ADD  CONSTRAINT FK_PersonelAccounts_FormsInfoBankCode_Pa FOREIGN KEY(BankCode_Pa)
REFERENCES Pay.FormsInfo (FormInfoID)
ON UPDATE CASCADE

ALTER TABLE Pay.PersonelAccounts CHECK CONSTRAINT FK_PersonelAccounts_FormsInfoBankCode_Pa
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelAccounts_FormsInfoBranchInfo' AND type = 'F')
begin
ALTER TABLE Pay.PersonelAccounts  WITH CHECK ADD  CONSTRAINT FK_PersonelAccounts_FormsInfoBranchInfo FOREIGN KEY(BranchInfo_Pa)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.PersonelAccounts CHECK CONSTRAINT FK_PersonelAccounts_FormsInfoBranchInfo
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelAccounts_PersonelInfo' AND type = 'F')
begin
ALTER TABLE Pay.PersonelAccounts  WITH CHECK ADD  CONSTRAINT FK_PersonelAccounts_PersonelInfo FOREIGN KEY(PersonelNo)
REFERENCES Pay.PersonelInfo (PersonelNo)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Pay.PersonelAccounts CHECK CONSTRAINT FK_PersonelAccounts_PersonelInfo
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelArchives_PersonelInfo' AND type = 'F')
begin
ALTER TABLE Pay.PersonelArchives  WITH CHECK ADD  CONSTRAINT FK_PersonelArchives_PersonelInfo FOREIGN KEY(PersonelNo)
REFERENCES Pay.PersonelInfo (PersonelNo)
ON UPDATE CASCADE

ALTER TABLE Pay.PersonelArchives CHECK CONSTRAINT FK_PersonelArchives_PersonelInfo
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelDecExt_FormsInfo' AND type = 'F')
begin
ALTER TABLE Pay.PersonelDecExt  WITH CHECK ADD  CONSTRAINT FK_PersonelDecExt_FormsInfo FOREIGN KEY(FormInfoID)
REFERENCES Pay.FormsInfo (FormInfoID)
ON UPDATE CASCADE

ALTER TABLE Pay.PersonelDecExt CHECK CONSTRAINT FK_PersonelDecExt_FormsInfo
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelDecExt_MaliYear' AND type = 'F')
begin
ALTER TABLE Pay.PersonelDecExt  WITH CHECK ADD  CONSTRAINT FK_PersonelDecExt_MaliYear FOREIGN KEY(YearID)
REFERENCES Util.MaliYear (YearID)
ON UPDATE CASCADE

ALTER TABLE Pay.PersonelDecExt CHECK CONSTRAINT FK_PersonelDecExt_MaliYear
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelDecExt_PersonelInfo' AND type = 'F')
begin
ALTER TABLE Pay.PersonelDecExt  WITH CHECK ADD  CONSTRAINT FK_PersonelDecExt_PersonelInfo FOREIGN KEY(PersonelNo)
REFERENCES Pay.PersonelInfo (PersonelNo)
ON UPDATE CASCADE

ALTER TABLE Pay.PersonelDecExt CHECK CONSTRAINT FK_PersonelDecExt_PersonelInfo
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelDecExtItem_PersonelDecExt' AND type = 'F')
begin
ALTER TABLE Pay.PersonelDecExtItem  WITH CHECK ADD  CONSTRAINT FK_PersonelDecExtItem_PersonelDecExt FOREIGN KEY(DecExtID)
REFERENCES Pay.PersonelDecExt (DecExtID)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Pay.PersonelDecExtItem CHECK CONSTRAINT FK_PersonelDecExtItem_PersonelDecExt
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelInfo_FormsInfo' AND type = 'F')
begin

ALTER TABLE Pay.PersonelInfo  WITH CHECK ADD  CONSTRAINT FK_PersonelInfo_FormsInfo FOREIGN KEY(NationalityCode)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.PersonelInfo CHECK CONSTRAINT FK_PersonelInfo_FormsInfo
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelInfo_FormsInfo1' AND type = 'F')
begin
ALTER TABLE Pay.PersonelInfo  WITH CHECK ADD  CONSTRAINT FK_PersonelInfo_FormsInfo1 FOREIGN KEY(BirthPlace)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.PersonelInfo CHECK CONSTRAINT FK_PersonelInfo_FormsInfo1
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelInfo_FormsInfo10' AND type = 'F')
begin
ALTER TABLE Pay.PersonelInfo  WITH CHECK ADD  CONSTRAINT FK_PersonelInfo_FormsInfo10 FOREIGN KEY(BankCode)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.PersonelInfo CHECK CONSTRAINT FK_PersonelInfo_FormsInfo10
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelInfo_FormsInfo11' AND type = 'F')
begin
ALTER TABLE Pay.PersonelInfo  WITH CHECK ADD  CONSTRAINT FK_PersonelInfo_FormsInfo11 FOREIGN KEY(BranchInfo)
REFERENCES Pay.FormsInfo (FormInfoID)
ON DELETE CASCADE

ALTER TABLE Pay.PersonelInfo CHECK CONSTRAINT FK_PersonelInfo_FormsInfo11
end
GO
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelInfo_FormsInfo2' AND type = 'F')
begin
ALTER TABLE Pay.PersonelInfo  WITH CHECK ADD  CONSTRAINT FK_PersonelInfo_FormsInfo2 FOREIGN KEY(SodurPlace)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.PersonelInfo CHECK CONSTRAINT FK_PersonelInfo_FormsInfo2
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelInfo_FormsInfo3' AND type = 'F')
begin
ALTER TABLE Pay.PersonelInfo  WITH CHECK ADD  CONSTRAINT FK_PersonelInfo_FormsInfo3 FOREIGN KEY(sex)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.PersonelInfo CHECK CONSTRAINT FK_PersonelInfo_FormsInfo3
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelInfo_FormsInfo4' AND type = 'F')
begin
ALTER TABLE Pay.PersonelInfo  WITH CHECK ADD  CONSTRAINT FK_PersonelInfo_FormsInfo4 FOREIGN KEY(marriage)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.PersonelInfo CHECK CONSTRAINT FK_PersonelInfo_FormsInfo4
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelInfo_FormsInfo5' AND type = 'F')
begin
ALTER TABLE Pay.PersonelInfo  WITH CHECK ADD  CONSTRAINT FK_PersonelInfo_FormsInfo5 FOREIGN KEY(childNumber)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.PersonelInfo CHECK CONSTRAINT FK_PersonelInfo_FormsInfo5
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelInfo_FormsInfo6' AND type = 'F')
begin
ALTER TABLE Pay.PersonelInfo  WITH CHECK ADD  CONSTRAINT FK_PersonelInfo_FormsInfo6 FOREIGN KEY(LicenceCode)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.PersonelInfo CHECK CONSTRAINT FK_PersonelInfo_FormsInfo6
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelInfo_FormsInfo7' AND type = 'F')
begin
ALTER TABLE Pay.PersonelInfo  WITH CHECK ADD  CONSTRAINT FK_PersonelInfo_FormsInfo7 FOREIGN KEY(studyField)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.PersonelInfo CHECK CONSTRAINT FK_PersonelInfo_FormsInfo7
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelInfo_FormsInfo8' AND type = 'F')
begin
ALTER TABLE Pay.PersonelInfo  WITH CHECK ADD  CONSTRAINT FK_PersonelInfo_FormsInfo8 FOREIGN KEY(StudyCityCode)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.PersonelInfo CHECK CONSTRAINT FK_PersonelInfo_FormsInfo8
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelInfo_FormsInfo9' AND type = 'F')
begin
ALTER TABLE Pay.PersonelInfo  WITH CHECK ADD  CONSTRAINT FK_PersonelInfo_FormsInfo9 FOREIGN KEY(UnivercityCode)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.PersonelInfo CHECK CONSTRAINT FK_PersonelInfo_FormsInfo9
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelInfo_FormsInfoBirthProvince' AND type = 'F')
begin
ALTER TABLE Pay.PersonelInfo  WITH CHECK ADD  CONSTRAINT FK_PersonelInfo_FormsInfoBirthProvince FOREIGN KEY(BirthProvince)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.PersonelInfo CHECK CONSTRAINT FK_PersonelInfo_FormsInfoBirthProvince
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelInfo_FormsInfoBirthSection' AND type = 'F')
begin
ALTER TABLE Pay.PersonelInfo  WITH CHECK ADD  CONSTRAINT FK_PersonelInfo_FormsInfoBirthSection FOREIGN KEY(BirthSection)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.PersonelInfo CHECK CONSTRAINT FK_PersonelInfo_FormsInfoBirthSection
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelInfo_FormsInfoBirthVillage' AND type = 'F')
begin
ALTER TABLE Pay.PersonelInfo  WITH CHECK ADD  CONSTRAINT FK_PersonelInfo_FormsInfoBirthVillage FOREIGN KEY(BirthVillage)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.PersonelInfo CHECK CONSTRAINT FK_PersonelInfo_FormsInfoBirthVillage
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelInfo_FormsInfoEducationDegree' AND type = 'F')
begin
ALTER TABLE Pay.PersonelInfo  WITH CHECK ADD  CONSTRAINT FK_PersonelInfo_FormsInfoEducationDegree FOREIGN KEY(EducationDegree)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.PersonelInfo CHECK CONSTRAINT FK_PersonelInfo_FormsInfoEducationDegree
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelInfo_FormsInfoEducationGrade' AND type = 'F')
begin
ALTER TABLE Pay.PersonelInfo  WITH CHECK ADD  CONSTRAINT FK_PersonelInfo_FormsInfoEducationGrade FOREIGN KEY(EducationGrade)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.PersonelInfo CHECK CONSTRAINT FK_PersonelInfo_FormsInfoEducationGrade
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelInfo_FormsInfoEducationType' AND type = 'F')
begin
ALTER TABLE Pay.PersonelInfo  WITH CHECK ADD  CONSTRAINT FK_PersonelInfo_FormsInfoEducationType FOREIGN KEY(EducationType)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.PersonelInfo CHECK CONSTRAINT FK_PersonelInfo_FormsInfoEducationType
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelInfo_FormsInfoEmployTypeID' AND type = 'F')
begin

ALTER TABLE Pay.PersonelInfo  WITH CHECK ADD  CONSTRAINT FK_PersonelInfo_FormsInfoEmployTypeID FOREIGN KEY(EmployTypeID)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.PersonelInfo CHECK CONSTRAINT FK_PersonelInfo_FormsInfoEmployTypeID
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelInfo_FormsInfoIssuedProvince' AND type = 'F')
begin
ALTER TABLE Pay.PersonelInfo  WITH CHECK ADD  CONSTRAINT FK_PersonelInfo_FormsInfoIssuedProvince FOREIGN KEY(IssuedProvince)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.PersonelInfo CHECK CONSTRAINT FK_PersonelInfo_FormsInfoIssuedProvince
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelInfo_FormsInfoIssuedSection' AND type = 'F')
begin
ALTER TABLE Pay.PersonelInfo  WITH CHECK ADD  CONSTRAINT FK_PersonelInfo_FormsInfoIssuedSection FOREIGN KEY(IssuedSection)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.PersonelInfo CHECK CONSTRAINT FK_PersonelInfo_FormsInfoIssuedSection
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelInfo_FormsInfoIssuedVillage' AND type = 'F')
begin
ALTER TABLE Pay.PersonelInfo  WITH CHECK ADD  CONSTRAINT FK_PersonelInfo_FormsInfoIssuedVillage FOREIGN KEY(IssuedVillage)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.PersonelInfo CHECK CONSTRAINT FK_PersonelInfo_FormsInfoIssuedVillage
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelInfo_FormsInfoPersonelState' AND type = 'F')
begin
ALTER TABLE Pay.PersonelInfo  WITH CHECK ADD  CONSTRAINT FK_PersonelInfo_FormsInfoPersonelState FOREIGN KEY(PersonelState)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.PersonelInfo CHECK CONSTRAINT FK_PersonelInfo_FormsInfoPersonelState
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelInfo_InsuranceCONSTinfo' AND type = 'F')
begin
ALTER TABLE Pay.PersonelInfo  WITH CHECK ADD  CONSTRAINT FK_PersonelInfo_InsuranceCONSTinfo FOREIGN KEY(insuranceID)
REFERENCES Pay.InsuranceCONSTinfo (insuranceNo)
ON UPDATE CASCADE

ALTER TABLE Pay.PersonelInfo CHECK CONSTRAINT FK_PersonelInfo_InsuranceCONSTinfo
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelSponsorship_FormsInfo' AND type = 'F')
begin
ALTER TABLE Pay.PersonelSponsorship  WITH CHECK ADD  CONSTRAINT FK_PersonelSponsorship_FormsInfo FOREIGN KEY(MarriageID)
REFERENCES Pay.FormsInfo (FormInfoID)
ON UPDATE CASCADE

ALTER TABLE Pay.PersonelSponsorship CHECK CONSTRAINT FK_PersonelSponsorship_FormsInfo
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelSponsorship_FormsInfo_Degree' AND type = 'F')
begin
ALTER TABLE Pay.PersonelSponsorship  WITH CHECK ADD  CONSTRAINT FK_PersonelSponsorship_FormsInfo_Degree FOREIGN KEY(Degree)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.PersonelSponsorship CHECK CONSTRAINT FK_PersonelSponsorship_FormsInfo_Degree
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelSponsorship_FormsInfo_InsuranceType' AND type = 'F')
begin
ALTER TABLE Pay.PersonelSponsorship  WITH CHECK ADD  CONSTRAINT FK_PersonelSponsorship_FormsInfo_InsuranceType FOREIGN KEY(InsuranceType)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.PersonelSponsorship CHECK CONSTRAINT FK_PersonelSponsorship_FormsInfo_InsuranceType
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelSponsorship_FormsInfo_JobType' AND type = 'F')
begin
ALTER TABLE Pay.PersonelSponsorship  WITH CHECK ADD  CONSTRAINT FK_PersonelSponsorship_FormsInfo_JobType FOREIGN KEY(JobType)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.PersonelSponsorship CHECK CONSTRAINT FK_PersonelSponsorship_FormsInfo_JobType
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelSponsorship_FormsInfo_kinship' AND type = 'F')
begin
ALTER TABLE Pay.PersonelSponsorship  WITH CHECK ADD  CONSTRAINT FK_PersonelSponsorship_FormsInfo_kinship FOREIGN KEY(kinship)
REFERENCES Pay.FormsInfo (FormInfoID)

ALTER TABLE Pay.PersonelSponsorship CHECK CONSTRAINT FK_PersonelSponsorship_FormsInfo_kinship
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelSponsorship_PersonelInfo' AND type = 'F')
begin
ALTER TABLE Pay.PersonelSponsorship  WITH CHECK ADD  CONSTRAINT FK_PersonelSponsorship_PersonelInfo FOREIGN KEY(PersonelNo)
REFERENCES Pay.PersonelInfo (PersonelNo)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Pay.PersonelSponsorship CHECK CONSTRAINT FK_PersonelSponsorship_PersonelInfo
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelTypeInfo_FormsInfoFormInfoID' AND type = 'F')
begin
ALTER TABLE Pay.PersonelTypeInfo  WITH CHECK ADD  CONSTRAINT FK_PersonelTypeInfo_FormsInfoFormInfoID FOREIGN KEY(FormInfoID)
REFERENCES Pay.FormsInfo (FormInfoID)
ON UPDATE CASCADE

ALTER TABLE Pay.PersonelTypeInfo CHECK CONSTRAINT FK_PersonelTypeInfo_FormsInfoFormInfoID
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelTypeInfo_FormTypesFormType' AND type = 'F')
begin
ALTER TABLE Pay.PersonelTypeInfo  WITH NOCHECK ADD  CONSTRAINT FK_PersonelTypeInfo_FormTypesFormType FOREIGN KEY(FormType)
REFERENCES Pay.FormTypes (FormType)
ON UPDATE CASCADE

ALTER TABLE Pay.PersonelTypeInfo CHECK CONSTRAINT FK_PersonelTypeInfo_FormTypesFormType
end

DELETE FROM Pay.PersonelTypeInfo
FROM            Pay.PersonelTypeInfo LEFT OUTER JOIN
                         Pay.PersonelInfo ON Pay.PersonelTypeInfo.PersonelNo = Pay.PersonelInfo.PersonelNo
WHERE        (Pay.PersonelInfo.PersonelNo IS NULL)

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelTypeInfo_PersonelInfo' AND type = 'F')
begin
ALTER TABLE Pay.PersonelTypeInfo  WITH CHECK ADD  CONSTRAINT FK_PersonelTypeInfo_PersonelInfo FOREIGN KEY(PersonelNo)
REFERENCES Pay.PersonelInfo (PersonelNo)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Pay.PersonelTypeInfo CHECK CONSTRAINT FK_PersonelTypeInfo_PersonelInfo
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Pony_PersonelInfo' AND type = 'F')
begin
ALTER TABLE Pay.Pony  WITH CHECK ADD  CONSTRAINT FK_Pony_PersonelInfo FOREIGN KEY(PersonelNo)
REFERENCES Pay.PersonelInfo (PersonelNo)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Pay.Pony CHECK CONSTRAINT FK_Pony_PersonelInfo
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PonyArchives_Ponys' AND type = 'F')
begin
ALTER TABLE Pay.PonyArchives  WITH CHECK ADD  CONSTRAINT FK_PonyArchives_Ponys FOREIGN KEY(PonyID)
REFERENCES Pay.Pony (PonyID)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Pay.PonyArchives CHECK CONSTRAINT FK_PonyArchives_Ponys
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PonyDebitCredits_Ponys' AND type = 'F')
begin
ALTER TABLE Pay.PonyDebitCredits  WITH CHECK ADD  CONSTRAINT FK_PonyDebitCredits_Ponys FOREIGN KEY(PonyID)
REFERENCES Pay.Pony (PonyID)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Pay.PonyDebitCredits CHECK CONSTRAINT FK_PonyDebitCredits_Ponys
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_SalaryRange_FormsInfo' AND type = 'F')
begin
ALTER TABLE Pay.SalaryRange  WITH NOCHECK ADD  CONSTRAINT FK_SalaryRange_FormsInfo FOREIGN KEY(FormInfoID)
REFERENCES Pay.FormsInfo (FormInfoID)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Pay.SalaryRange CHECK CONSTRAINT FK_SalaryRange_FormsInfo
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ScanInfo_ScanType' AND type = 'F')
begin
ALTER TABLE Pay.ScanInfo  WITH CHECK ADD  CONSTRAINT FK_ScanInfo_ScanType FOREIGN KEY(ScanType)
REFERENCES Pay.ScanType (ScanType)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Pay.ScanInfo CHECK CONSTRAINT FK_ScanInfo_ScanType
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_TaxInfo_MaliYear' AND type = 'F')
begin
ALTER TABLE Pay.TaxInfo  WITH CHECK ADD  CONSTRAINT FK_TaxInfo_MaliYear FOREIGN KEY(YearID)
REFERENCES Util.MaliYear (YearID)
ON UPDATE CASCADE

ALTER TABLE Pay.TaxInfo CHECK CONSTRAINT FK_TaxInfo_MaliYear
end

--IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Taxs_FormsInfo' AND type = 'F')
--begin
--ALTER TABLE Pay.Taxs  WITH CHECK ADD  CONSTRAINT FK_Taxs_FormsInfo FOREIGN KEY(FormInfoID)
--REFERENCES Pay.FormsInfo (FormInfoID)
--ON UPDATE CASCADE

--ALTER TABLE Pay.Taxs CHECK CONSTRAINT FK_Taxs_FormsInfo
--end
--IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_TaxsItems_Taxs' AND type = 'F')
--begin
--ALTER TABLE Pay.TaxsItems  WITH CHECK ADD  CONSTRAINT FK_TaxsItems_Taxs FOREIGN KEY(TaxID)
--REFERENCES Pay.Taxs (TaxID)
--ON UPDATE CASCADE
--ON DELETE CASCADE

--ALTER TABLE Pay.TaxsItems CHECK CONSTRAINT FK_TaxsItems_Taxs
--end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_WageFormula_FormsInfoFormInfoID' AND type = 'F')
begin
ALTER TABLE Pay.WageFormula  WITH CHECK ADD  CONSTRAINT FK_WageFormula_FormsInfoFormInfoID FOREIGN KEY(SalaryID)
REFERENCES Pay.FormsInfo (FormInfoID)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Pay.WageFormula CHECK CONSTRAINT FK_WageFormula_FormsInfoFormInfoID
end

--ALTER TABLE Util.MaliYearUsers  WITH CHECK ADD  CONSTRAINT FK_MaliYearUsers_MaliYear FOREIGN KEY(YearID)
--REFERENCES Util.MaliYear (YearID)
--ON UPDATE CASCADE
--GO
--ALTER TABLE Util.MaliYearUsers CHECK CONSTRAINT FK_MaliYearUsers_MaliYear
--GO
--ALTER TABLE Util.ScanInfo  WITH CHECK ADD  CONSTRAINT FK_ScanInfo_ScanType FOREIGN KEY(ScanType)
--REFERENCES Util.ScanType (ScanType)
--ON UPDATE CASCADE
--ON DELETE CASCADE
--GO
--ALTER TABLE Util.ScanInfo CHECK CONSTRAINT FK_ScanInfo_ScanType
--GO
--ALTER TABLE Pay.Fitful  WITH CHECK ADD  CONSTRAINT CK_Fitful CHECK  ((FitfulID = 0))
--GO
--ALTER TABLE Pay.Fitful CHECK CONSTRAINT CK_Fitful
IF not EXISTS (SELECT 1 from sysobjects where name = 'CK_PersonelDecExtItem_Years_Months')
begin
ALTER TABLE Pay.PersonelDecExtItem  WITH CHECK ADD  CONSTRAINT CK_PersonelDecExtItem_Years_Months CHECK  ((Years > 0 and Months > 0))

ALTER TABLE Pay.PersonelDecExtItem CHECK CONSTRAINT CK_PersonelDecExtItem_Years_Months
end

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.Taxs') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)CREATE TABLE Pay.Taxs(
	TaxID int NOT NULL,
	FormInfoID int NOT NULL,
	YearRun int NOT NULL,
	MonthRun int NOT NULL,
	Descriptions varchar(150) NULL,
	BonusFreeTax money NOT NULL,
	TFN_CODE int NULL,
	Statuss tinyint NULL,
 CONSTRAINT PK_Taxs PRIMARY KEY CLUSTERED 
(
	TaxID ASC
) ON [PRIMARY]
) ON [PRIMARY]

IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.TaxsItems') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)CREATE TABLE Pay.TaxsItems(
	ID int IDENTITY(1,1) NOT NULL,
	TaxID int NOT NULL,
	RowNo int NOT NULL,
	RevenuePrice money NOT NULL,
	FixedPrice money NOT NULL,
	Cofficient float NOT NULL,
 CONSTRAINT PK_TaxsItems PRIMARY KEY CLUSTERED 
(
	ID ASC
) ON [PRIMARY]
) ON [PRIMARY]


if ( COLUMNPROPERTY( OBJECT_ID('Pay.Taxs'),'Taxs_Bonus_TaxID','IsRowGuidCol')is  null )
 ALTER TABLE Pay.Taxs  ADD Taxs_Bonus_TaxID int 


IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.Insurance') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)CREATE TABLE Pay.Insurance(
	InsuranceID int NOT NULL,
	FormInfoID int NOT NULL,
	MinDailySalary money NOT NULL,
	MaxDailySalary money NOT NULL,
	YearRun int NOT NULL,
	MonthRun int NOT NULL,
	InsertDate char(10) NULL,
	Descriptions varchar(150) NULL,
 CONSTRAINT PK_Insurance PRIMARY KEY CLUSTERED 
(
	InsuranceID ASC
) ON [PRIMARY]
) ON [PRIMARY]

if not exists (select * from sysobjects where id = object_id(N'Pay.JobPromissory') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Pay.JobPromissory(
jobCode int NOT NULL ,
PromRunDate char(10) NOT NULL ,
PromAmount money  NOT NULL ,
CONSTRAINT PK_JobPromissory  PRIMARY KEY CLUSTERED (jobCode,	PromRunDate) ON [PRIMARY] ,
CONSTRAINT FK_JobPromissory_jobs FOREIGN KEY (jobCode) 
  REFERENCES Pay.jobs (jobCode) ON DELETE CASCADE ON UPDATE CASCADE ) ON [PRIMARY]


if not exists (select * from sysobjects where id = object_id(N'Tab_Job') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
    CREATE TABLE Tab_Job(
      Job_Code     char(6) COLLATE Arabic_CI_AS NULL,
      Job_Desc varchar(50) COLLATE Arabic_CI_AS NULL) ON [PRIMARY]
---- UpDateBankAssets  UpdateBank 23   1400/03/24
SET NOCOUNT ON
IF OBJECT_ID ('TR_UpdateAcconting', 'TR') IS NOT NULL 
ALTER TABLE Customers DISABLE TRIGGER [TR_UpdateAcconting]
IF OBJECT_ID ('TR_DeleteAcconting', 'TR') IS NOT NULL 
ALTER TABLE Customers DISABLE TRIGGER [TR_DeleteAcconting]


DECLARE @TABLE_NAME VARCHAR(90) 
DECLARE @COLUMN_NAME VARCHAR(90)
DECLARE @DATA_TYPE VARCHAR(90) 
DECLARE @IS_NULLABLE VARCHAR(90) 
DECLARE @qry VARCHAR(max) 
DECLARE @Length int

--IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_DocGroup'))
--DROP INDEX IX_DocGroup ON Acc.DocGroups


IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'Assets')
BEGIN
EXEC('CREATE SCHEMA Assets')
END


IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_DepTable_MaliYear' AND type = 'F')
ALTER TABLE Assets.DepTable DROP CONSTRAINT FK_DepTable_MaliYear



DECLARE db_cursor CURSOR FOR 
SELECT TABLE_SCHEMA+'.'+ TABLE_NAME AS TABLE_NAME, COLUMN_NAME,DATA_TYPE,inf.CHARACTER_MAXIMUM_LENGTH,IS_NULLABLE FROM INFORMATION_SCHEMA.COLUMNS as inf
INNER JOIN SYSOBJECTS on inf.table_name = SYSOBJECTS.name
WHERE  ((COLUMN_NAME like  N'%date%')or(COLUMN_NAME='StartYear')or(COLUMN_NAME='EndYear')or(COLUMN_NAME='StartMaliYear')or(COLUMN_NAME='FinishMaliYear')) 
   AND (DATA_TYPE like  N'%char%')
   AND (TABLE_NAME <>  N'acc.Contacts')
   
 
 AND OBJECTPROPERTY(SYSOBJECTS.id, N'IsUserTable') = 1
 AND (inf.CHARACTER_MAXIMUM_LENGTH BETWEEN 8 AND 10)--


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

--IF NOT  EXISTS (select * from sysindexes WHERE     (name = N'IX_DocGroup'))
--CREATE NONCLUSTERED INDEX IX_DocGroup ON Acc.DocGroups(	DocDate ASC,	PrimaryDocNo ASC,	SecondaryDocNo ASC,	Serial ASC) ON [PRIMARY]

--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------

----select *  From util.MaliYear
if (select COUNT(DISTINCT LEN(YearID))  From util.MaliYear) = 1 
begin

UPDATE  util.MaliYear SET YearID=YearID+cast( 1300 as smallint) WHERE len(YearID)<4

DECLARE db_cursor CURSOR FOR 
SELECT TABLE_SCHEMA+'.'+ TABLE_NAME AS TABLE_NAME, COLUMN_NAME,DATA_TYPE,inf.CHARACTER_MAXIMUM_LENGTH,IS_NULLABLE FROM INFORMATION_SCHEMA.COLUMNS as inf
INNER JOIN SYSOBJECTS on inf.table_name = SYSOBJECTS.name
WHERE  ((COLUMN_NAME like  N'%YearID%'))  and xtype='U'  AND OBJECTPROPERTY(SYSOBJECTS.id, N'IsUserTable') = 1
and ( COLUMN_NAME <>  N'FilterYearIDActive')  and (TABLE_NAME<> N'MaliYear')
and ( COLUMN_NAME <>  N'ActiveYearID')
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

IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_DepTable_MaliYear' AND type = 'F')
if  exists (select * from dbo.sysobjects where id = object_id(N'Assets.DepTable') and OBJECTPROPERTY(id, N'IsUserTable') = 1) 
alter TABLE Assets.DepTable  WITH CHECK ADD  CONSTRAINT FK_DepTable_MaliYear FOREIGN KEY(Yearid)
REFERENCES Util.MaliYear (YearID)
ON UPDATE CASCADE
ON DELETE CASCADE 


if ( COLUMNPROPERTY( OBJECT_ID('Assets.AccTopics'),'AccExpTopicCode','IsRowGuidCol')is  null ) 
if  exists (select * from dbo.sysobjects where id = object_id(N'Assets.AccTopics') and OBJECTPROPERTY(id, N'IsUserTable') = 1) 
Begin  
  ALTER TABLE Assets.AccTopics ADD [AccExpTopicCode] [bigint] NOT NULL  DEFAULT (0)  
  ALTER TABLE Assets.Amval WITH NOCHECK ADD CONSTRAINT FK_Amval_AccTopics FOREIGN KEY ( AccTopicCode ) 
  REFERENCES AccTopics ( AccTopicCode  ) ON UPDATE CASCADE  
end

---------------------------------------------------------------------------------------------

IF OBJECT_ID ('TR_ConfigChangeLog_FormInfoItems', 'TR') IS NOT NULL
ALTER TABLE Pay.FormInfoItems  DISABLE TRIGGER TR_ConfigChangeLog_FormInfoItems

IF OBJECT_ID ('TR_ConfigChangeLog_FormsInfo', 'TR') IS NOT NULL 
ALTER TABLE Pay.FormsInfo  DISABLE TRIGGER TR_ConfigChangeLog_FormsInfo

IF OBJECT_ID ('TR_ConfigChangeLog_Functions', 'TR') IS NOT NULL 
ALTER TABLE Pay.Functions   DISABLE TRIGGER TR_ConfigChangeLog_Functions

IF OBJECT_ID ('TR_ConfigChangeLog_FunctionsItems', 'TR') IS NOT NULL 
ALTER TABLE Pay.FunctionsItems  DISABLE TRIGGER TR_ConfigChangeLog_FunctionsItems

IF OBJECT_ID ('TR_ConfigChangeLog_PersonelInfo', 'TR') IS NOT NULL 
ALTER TABLE Pay.PersonelInfo  DISABLE TRIGGER TR_ConfigChangeLog_PersonelInfo

IF OBJECT_ID ('TR_ConfigChangeLog_PersonelDecExt', 'TR') IS NOT NULL 
ALTER TABLE Pay.PersonelDecExt  DISABLE TRIGGER TR_ConfigChangeLog_PersonelDecExt

IF OBJECT_ID ('TR_ConfigChangeLog_PersonelDecExtItem', 'TR') IS NOT NULL 
ALTER TABLE Pay.PersonelDecExtItem  DISABLE TRIGGER TR_ConfigChangeLog_PersonelDecExtItem

IF OBJECT_ID ('TR_ConfigChangeLog_Interdicts', 'TR') IS NOT NULL 
ALTER TABLE Pay.Interdicts  DISABLE TRIGGER TR_ConfigChangeLog_Interdicts

IF OBJECT_ID ('TR_ConfigChangeLog_InterdictItems', 'TR') IS NOT NULL 
ALTER TABLE Pay.InterdictItems  DISABLE TRIGGER TR_ConfigChangeLog_InterdictItems

IF OBJECT_ID ('TR_ConfigChangeLog_InsuranceCONSTinfo', 'TR') IS NOT NULL 
ALTER TABLE Pay.InsuranceCONSTinfo  DISABLE TRIGGER TR_ConfigChangeLog_InsuranceCONSTinfo

IF OBJECT_ID ('TR_ConfigChangeLog_SalaryRange', 'TR') IS NOT NULL 
ALTER TABLE Pay.SalaryRange  DISABLE TRIGGER TR_ConfigChangeLog_SalaryRange
----------------------------------------------------------------------------------------------------------


if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'PrefixInfoID','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD PrefixInfoID int 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'MasterFormType','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD MasterFormType int 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormsInfo'),'FormInfoID2','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormsInfo ADD FormInfoID2 int

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'ContactFormType','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD ContactFormType int 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'RepetitiveControl','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD RepetitiveControl Tinyint NOT NULL DEFAULT(1)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'RepetitiveControlInfoID','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD RepetitiveControlInfoID Tinyint NOT NULL DEFAULT(2)


if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'SalaryIDinDocShow','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD SalaryIDinDocShow tinyint NOT NULL DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'Checking4AllPersonnelShow','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD Checking4AllPersonnelShow tinyint NOT NULL DEFAULT (1) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'EmployerAmountActiveShow','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD EmployerAmountActiveShow tinyint NOT NULL DEFAULT (1) 


if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'PersonelTypeInfoRow','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD PersonelTypeInfoRow Tinyint NOT NULL DEFAULT(0)

if not exists (select * from dbo.sysobjects where id = object_id(N'Pay.Educations') and OBJECTPROPERTY(id,
N'IsUserTable') = 1)
CREATE TABLE Pay.Educations (EducationCode varchar (20) ,EducationName varchar (100),
CONSTRAINT PK_Educations PRIMARY KEY  CLUSTERED (EducationCode)  ON [PRIMARY] ) ON [PRIMARY]  



--if not exists (select * from dbo.sysobjects where id = object_id(N'Degree_s') and OBJECTPROPERTY(id,
--N'IsUserTable') = 1)
--CREATE TABLE Degree_s (DegreeCode int ,DegreeName varchar (100),
--  Points Decimal(18,4),
--CONSTRAINT PK_Degree_s PRIMARY KEY  CLUSTERED (DegreeCode)  ON [PRIMARY] ) ON [PRIMARY]  

 
if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormInfoItems'),'SalaryID2','IsRowGuidCol')is  null )
begin
  ALTER TABLE Pay.FormInfoItems ADD SalaryID2 int
end

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FormInfoItems_SalaryID2' AND type = 'F')
  ALTER TABLE Pay.FormInfoItems  drop CONSTRAINT FK_FormInfoItems_SalaryID2
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FormInfoItems_SalaryID2' AND type = 'F')
  ALTER TABLE Pay.FormInfoItems  WITH CHECK ADD CONSTRAINT FK_FormInfoItems_SalaryID2 FOREIGN KEY(SalaryID2)
  REFERENCES Pay.FormsInfo (FormInfoID)


--if ((SELECT count(FormType)FROM Pay.FormTypes WHERE (FormType =110))= 0) 
--begin
--	INSERT INTO Pay.FormTypes (FormType,FormCaption_L1,DisplayFormType,ShowMnuPlace,ActiveYearID)  
--	   VALUES  (110,'جدول جایگزینی',0,'0,1',0)

--	INSERT INTO Pay.FormsInfo (FormInfoID, FormType, InfoID, InfoName_L1)
--	SELECT (SELECT MAX(FormInfoID) + 1 FROM Pay.FormsInfo) , 110, 1, 'تجربه بجای تحصیل'
--end

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelDecExt'),'YearID','IsRowGuidCol')is  null )
begin
 ALTER TABLE Pay.PersonelDecExt ADD YearID int
 ALTER TABLE Pay.PersonelDecExt ADD StartYear int
 ALTER TABLE Pay.PersonelDecExt ADD EndYear   int  
end

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FixedCalculated'),'YearID','IsRowGuidCol')is  null )
begin
 ALTER TABLE Pay.FixedCalculated   ADD YearID int
 ALTER TABLE Pay.FixedCalculated ADD Years int 
end

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormsInfo'),'Years','IsRowGuidCol')is  null )
 ALTER TABLE Pay.FormsInfo ADD Years int
 
if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'ActiveYearID','IsRowGuidCol')is  null )
 ALTER TABLE Pay.FormTypes  ADD ActiveYearID Tinyint  NOT NULL DEFAULT (0)


if ( COLUMNPROPERTY( OBJECT_ID('Pay.Mission'),'YearID','IsRowGuidCol')is  null )
 ALTER TABLE Pay.Mission ADD YearID int
 
if ( COLUMNPROPERTY( OBJECT_ID('Pay.FunctionDay'),'YearID','IsRowGuidCol')is  null )
 ALTER TABLE Pay.FunctionDay ADD YearID int

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Functions'),'YearID','IsRowGuidCol')is  null )
begin
 ALTER TABLE Pay.Functions  ADD YearID int
 ALTER TABLE Pay.Functions  ADD Years int 
end

if not exists (select * from dbo.sysobjects where id = object_id(N'Pay.jobs') and OBJECTPROPERTY(id,N'IsUserTable') = 1)
CREATE TABLE Pay.jobs (jobCode int Not Null ,jobName varchar (100) Not Null,
JobLocation int Not Null,OrganPos int,Organizational int ,GroupCode int ,
JobDefinition varchar(500), CreationDate char(10),
CONSTRAINT FK_jobs_FormsInfo_JobLocation FOREIGN KEY(JobLocation) REFERENCES Pay.FormsInfo (FormInfoID)ON UPDATE CASCADE,
CONSTRAINT FK_jobs_FormsInfo_OrganPos FOREIGN KEY(OrganPos) REFERENCES Pay.FormsInfo (FormInfoID),
CONSTRAINT FK_jobs_FormsInfo_Organizational FOREIGN KEY(Organizational) REFERENCES Pay.FormsInfo (FormInfoID),

CONSTRAINT PK_jobs PRIMARY KEY  CLUSTERED (jobCode)  ON [PRIMARY] ) ON [PRIMARY]

if ( COLUMNPROPERTY( OBJECT_ID('Pay.jobs'),'GradeID','IsRowGuidCol')is  null )
ALTER TABLE Pay.jobs ADD GradeID int

if ( COLUMNPROPERTY( OBJECT_ID('Pay.jobs'),'RankID','IsRowGuidCol')is  null )
ALTER TABLE Pay.jobs ADD RankID int


if not exists (select * from dbo.sysobjects where id = object_id(N'Pay.jobsItems') and OBJECTPROPERTY(id,
N'IsUserTable') = 1)
CREATE TABLE Pay.jobsItems (ID int Identity(1,1) Not Null ,jobCode int Not Null ,
Descriptions varchar(500) Not Null,InfoKind smallInt Not Null ,

CONSTRAINT FK_jobsItems_jobs FOREIGN KEY(jobCode) REFERENCES Pay.jobs (jobCode)
ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT PK_jobsItems PRIMARY KEY  CLUSTERED (ID)  ON [PRIMARY] ) ON [PRIMARY]


if not exists (select * from dbo.sysobjects where id = object_id(N'Pay.jobsTerms') and OBJECTPROPERTY(id,
N'IsUserTable') = 1)
CREATE TABLE Pay.jobsTerms (ID int Identity(1,1) Not Null ,jobCode int Not Null ,
LicenceCode int  Not Null ,StudyField int,ExperienceYear decimal(18,4),ExperienceMonth decimal(18,4),
Duration decimal(18,4),MinPoints decimal(18,4),MaxPoints decimal(18,4),
PercentExtra decimal(18,4),JobLevel int,TestCondition int ,Note varchar(200),

CONSTRAINT FK_jobsTerms_FormsInfo_LicenceCode FOREIGN KEY(LicenceCode) REFERENCES Pay.FormsInfo (FormInfoID)ON UPDATE CASCADE,
CONSTRAINT FK_jobsTerms_FormsInfo_StudyField FOREIGN KEY(StudyField) REFERENCES Pay.FormsInfo (FormInfoID),
CONSTRAINT FK_jobsTerms_FormsInfo_JobLevel FOREIGN KEY(JobLevel) REFERENCES Pay.FormsInfo (FormInfoID),

CONSTRAINT FK_jobsTerms_jobs FOREIGN KEY(jobCode) REFERENCES Pay.jobs (jobCode)
--ON UPDATE CASCADE --ON DELETE CASCADE
,
CONSTRAINT PK_jobsTerms PRIMARY KEY  CLUSTERED (ID)  ON [PRIMARY] ) ON [PRIMARY]


--------------------------------------------------------------------------------------------
IF OBJECT_ID ('TR_ConfigChangeLog_FormInfoItems', 'TR') IS NOT NULL
ALTER TABLE Pay.FormInfoItems  ENABLE TRIGGER TR_ConfigChangeLog_FormInfoItems

IF OBJECT_ID ('TR_ConfigChangeLog_FormsInfo', 'TR') IS NOT NULL 
ALTER TABLE Pay.FormsInfo  ENABLE TRIGGER TR_ConfigChangeLog_FormsInfo

IF OBJECT_ID ('TR_ConfigChangeLog_Functions', 'TR') IS NOT NULL 
ALTER TABLE Pay.Functions   ENABLE TRIGGER TR_ConfigChangeLog_Functions

IF OBJECT_ID ('TR_ConfigChangeLog_FunctionsItems', 'TR') IS NOT NULL 
ALTER TABLE FunctionsItems  ENABLE TRIGGER TR_ConfigChangeLog_FunctionsItems

IF OBJECT_ID ('TR_ConfigChangeLog_PersonelInfo', 'TR') IS NOT NULL 
ALTER TABLE Pay.PersonelInfo  ENABLE TRIGGER TR_ConfigChangeLog_PersonelInfo

IF OBJECT_ID ('TR_ConfigChangeLog_PersonelDecExt', 'TR') IS NOT NULL 
ALTER TABLE Pay.PersonelDecExt  ENABLE TRIGGER TR_ConfigChangeLog_PersonelDecExt

IF OBJECT_ID ('TR_ConfigChangeLog_PersonelDecExtItem', 'TR') IS NOT NULL 
ALTER TABLE Pay.PersonelDecExtItem  ENABLE TRIGGER TR_ConfigChangeLog_PersonelDecExtItem

IF OBJECT_ID ('TR_ConfigChangeLog_Interdicts', 'TR') IS NOT NULL 
ALTER TABLE Pay.Interdicts  ENABLE TRIGGER TR_ConfigChangeLog_Interdicts

IF OBJECT_ID ('TR_ConfigChangeLog_InterdictItems', 'TR') IS NOT NULL 
ALTER TABLE Pay.InterdictItems  ENABLE TRIGGER TR_ConfigChangeLog_InterdictItems

IF OBJECT_ID ('TR_ConfigChangeLog_InsuranceCONSTinfo', 'TR') IS NOT NULL 
ALTER TABLE Pay.InsuranceCONSTinfo  ENABLE TRIGGER TR_ConfigChangeLog_InsuranceCONSTinfo

IF OBJECT_ID ('TR_ConfigChangeLog_SalaryRange', 'TR') IS NOT NULL 
ALTER TABLE Pay.SalaryRange  ENABLE TRIGGER TR_ConfigChangeLog_SalaryRange
---------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------
IF OBJECT_ID ('TR_ConfigChangeLog_FormInfoItems', 'TR') IS NOT NULL
ALTER TABLE Pay.FormInfoItems  DISABLE TRIGGER TR_ConfigChangeLog_FormInfoItems

IF OBJECT_ID ('TR_ConfigChangeLog_FormsInfo', 'TR') IS NOT NULL 
ALTER TABLE Pay.FormsInfo  DISABLE TRIGGER TR_ConfigChangeLog_FormsInfo

IF OBJECT_ID ('TR_ConfigChangeLog_Functions', 'TR') IS NOT NULL 
ALTER TABLE Pay.Functions   DISABLE TRIGGER TR_ConfigChangeLog_Functions

IF OBJECT_ID ('TR_ConfigChangeLog_FunctionsItems', 'TR') IS NOT NULL 
ALTER TABLE Pay.FunctionsItems  DISABLE TRIGGER TR_ConfigChangeLog_FunctionsItems

IF OBJECT_ID ('TR_ConfigChangeLog_PersonelInfo', 'TR') IS NOT NULL 
ALTER TABLE Pay.PersonelInfo  DISABLE TRIGGER TR_ConfigChangeLog_PersonelInfo

IF OBJECT_ID ('TR_ConfigChangeLog_PersonelDecExt', 'TR') IS NOT NULL 
ALTER TABLE Pay.PersonelDecExt  DISABLE TRIGGER TR_ConfigChangeLog_PersonelDecExt

IF OBJECT_ID ('TR_ConfigChangeLog_PersonelDecExtItem', 'TR') IS NOT NULL 
ALTER TABLE Pay.PersonelDecExtItem  DISABLE TRIGGER TR_ConfigChangeLog_PersonelDecExtItem

IF OBJECT_ID ('TR_ConfigChangeLog_Interdicts', 'TR') IS NOT NULL 
ALTER TABLE Pay.Interdicts  DISABLE TRIGGER TR_ConfigChangeLog_Interdicts

IF OBJECT_ID ('TR_ConfigChangeLog_InterdictItems', 'TR') IS NOT NULL 
ALTER TABLE Pay.InterdictItems  DISABLE TRIGGER TR_ConfigChangeLog_InterdictItems

IF OBJECT_ID ('TR_ConfigChangeLog_InsuranceCONSTinfo', 'TR') IS NOT NULL 
ALTER TABLE Pay.InsuranceCONSTinfo  DISABLE TRIGGER TR_ConfigChangeLog_InsuranceCONSTinfo

IF OBJECT_ID ('TR_ConfigChangeLog_SalaryRange', 'TR') IS NOT NULL 
ALTER TABLE Pay.SalaryRange  DISABLE TRIGGER TR_ConfigChangeLog_SalaryRange
----------------------------------------------------------------------------------------------------------


ALTER TABLE Pay.PersonelAccounts ALTER COLUMN AccountNumber_Pa  varchar (30)
ALTER TABLE Pay.PersonelInfo ALTER COLUMN AccountNumber  varchar (30)

ALTER TABLE Pay.PersonelDecExt ALTER COLUMN AidNo1  varchar (30)
ALTER TABLE Pay.PersonelDecExt ALTER COLUMN AidNo2  varchar (30)

ALTER TABLE Pay.InsuranceCONSTinfo ALTER COLUMN MON_PYM  varchar (10)


--IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
--                WHERE        (TABLE_NAME = N'Pay.FormsInfo') AND (COLUMN_NAME = N'AccTopicCode') AND (DATA_TYPE = N'bigint'))
-- ALTER TABLE Pay.FormsInfo	ALTER COLUMN AccTopicCode BIGINT 



if  exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Analyze]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 Drop TABLE [dbo].[Analyze]
 
 if not exists (select * from dbo.sysobjects where id = object_id(N'Util.Analyze') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
begin
CREATE TABLE Util.Analyze(ID int NOT NULL,TableKind int NOT NULL,CaptionName nvarchar(50) NOT NULL,
FieldName varchar(50) NOT NULL,	TableName varchar(250) NULL,
TopicName varchar(50) NULL,	AliasName varchar(50) NULL,
JoinFieldName varchar(50) NULL,	CONSTRAINT PK_Analyze PRIMARY KEY CLUSTERED
(ID ASC,TableKind ASC )	) ON [PRIMARY]
end
 
 if not exists (select * from dbo.sysobjects where id = object_id(N'Util.AnalyzeItems') and
 OBJECTPROPERTY(id, N'IsUserTable') = 1)
 CREATE TABLE Util.AnalyzeItems(
 ID int NOT NULL,
 FieldName nvarchar(50) NOT NULL,
 DisPlayName nvarchar(50) NOT NULL,
 Kind Tinyint NOT NULL,
 CONSTRAINT PK_AnalyzeItems PRIMARY KEY CLUSTERED (ID ASC) ON [PRIMARY]) ON [PRIMARY]
 
  if not exists (select * from dbo.sysobjects where id = object_id(N'Pay.TaxInfo') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
begin
CREATE TABLE Pay.TaxInfo(
 YearID int NOT NULL ,
 Mounth int NOT NULL,

 PayKind int NOT NULL,
 Branch int ,
 PostDate char(10) NOT NULL,
 Bank int ,
 TaxCheakDate char(10) ,
 TaxBranch varchar(50) ,
 TaxAccountNum char(20) ,
 TaxCheckSerial char(10) , 

 PaymentsCasesDate char(10) NOT NULL,
 PaymentsCases money NOT NULL CONSTRAINT DF_TaxInfo_PaymentsCases DEFAULT (0) ,

 Penalties4NonSubmission money NOT NULL CONSTRAINT DF_TaxInfo_Penalties4NonSubmission DEFAULT (0) ,
 Penalties4NonPay money NOT NULL CONSTRAINT DF_TaxInfo_Penalties4NonPay DEFAULT (0) ,
 Penalties4NonSubmissionLast money NOT NULL CONSTRAINT DF_TaxInfo_Penalties4NonSubmissionLast DEFAULT (0) ,
 Penalties4NonPayLast money NOT NULL CONSTRAINT DF_TaxInfo_Penalties4NonPayLast DEFAULT (0) ,

 SalarieLastMonth money NOT NULL CONSTRAINT DF_TaxInfo_SalarieLastMonth DEFAULT (0) ,
 SalarieBonusesLastMonth money NOT NULL CONSTRAINT DF_TaxInfo_SalarieBonusesLastMonth DEFAULT (0) ,
 TaxLastMonth money NOT NULL CONSTRAINT DF_TaxInfo_TaxLastMonth DEFAULT (0) ,
 TaxDebtLastMonth money NOT NULL CONSTRAINT DF_TaxDebtLastMonth DEFAULT (0) , 
 Paragraph int  NOT NULL CONSTRAINT DF_TaxInfo_Paragraph DEFAULT (85),
 
 CONSTRAINT PK_TaxInfo PRIMARY KEY CLUSTERED (YearID ASC,Mounth ASC ,Paragraph ASC )	) ON [PRIMARY]
end


if ( COLUMNPROPERTY( OBJECT_ID('Pay.TaxInfo'),'Paragraph','IsRowGuidCol')is  null )  
begin
  ALTER TABLE  Pay.TaxInfo ADD Paragraph int  NOT NULL CONSTRAINT DF_TaxInfo_Paragraph DEFAULT (85)
  IF EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_TaxInfo' AND type = 'K')
     ALTER TABLE  Pay.TaxInfo	DROP CONSTRAINT PK_TaxInfo
end

 IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_TaxInfo' AND type = 'K')
 ALTER TABLE  Pay.TaxInfo ADD CONSTRAINT PK_TaxInfo PRIMARY KEY CLUSTERED (YearID ASC,Mounth ASC ,Paragraph ASC) ON [PRIMARY]



IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE       (TABLE_NAME = N'TaxInfo') AND (COLUMN_NAME = N'TaxBranch') AND (DATA_TYPE='varchar') AND (CHARACTER_MAXIMUM_LENGTH =50 ))
   ALTER TABLE  Pay.TaxInfo ALTER COLUMN TaxBranch VARCHAR(50)

if not exists (select * from dbo.sysobjects where id = object_id(N'Pay.WageFormula') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
begin
CREATE TABLE  Pay.WageFormula(
	SalaryID int NOT NULL,
	YearFrom int NOT NULL ,
	MounthFrom tinyint NOT NULL ,
	YearTo int NOT NULL ,
	MounthTo tinyint NOT NULL ,
--	AmountFrom money  CONSTRAINT DF_WageFormula_AmountFrom DEFAULT (0) NOT NULL ,
--	AmountTo money CONSTRAINT  DF_WageFormula_AmountTo DEFAULT (922337203685477) NOT NULL,
	SQLCalc varchar(8000) NULL,
	WhereSQLCalc varchar(8000) NULL,
	Note nvarchar(2000) NULL,
 CONSTRAINT FK_WageFormula_FormsInfoFormInfoID FOREIGN KEY(SalaryID)REFERENCES  Pay.FormsInfo (FormInfoID)ON DELETE CASCADE ON UPDATE CASCADE,
 CONSTRAINT PK_WageFormula PRIMARY KEY CLUSTERED (SalaryID ,MounthFrom,YearFrom) ON [PRIMARY]) ON [PRIMARY]
end


IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS WHERE  (TABLE_NAME = N'Pay.WageFormula') AND (COLUMN_NAME = N'YearFrom') AND (DATA_TYPE = N'int'))
begin
IF EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_WageFormula' AND type = 'K')
 ALTER TABLE  Pay.WageFormula	DROP CONSTRAINT PK_WageFormula
 
alter TABLE  Pay.WageFormula  alter column YearFrom int  not null
alter TABLE  Pay.WageFormula  alter column YearTo   int  not null


end
IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_WageFormula' AND type = 'K')
  ALTER TABLE  Pay.WageFormula ADD  CONSTRAINT PK_WageFormula PRIMARY KEY CLUSTERED (	SalaryID ASC,	MounthFrom ASC,	YearFrom ASC) ON [PRIMARY]

if ( COLUMNPROPERTY( OBJECT_ID('Pay.WageFormula'),'RunOrder','IsRowGuidCol')is  null )  
ALTER TABLE  Pay.WageFormula ADD RunOrder tinyint NOT NULL  CONSTRAINT DF_WageFormula_RunOrder DEFAULT 1


if not exists (select * from dbo.sysobjects where id = object_id(N'Pay.PonyDebitCredits') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE  Pay.PonyDebitCredits(
	PonyDebitCreditsID int IDENTITY(1,1) NOT NULL,
	PonyID int NOT NULL,
	PonyNote Nvarchar(300)  NOT NULL,
	Amount money NOT NULL CONSTRAINT DF_PonyDebitCredits_Amount  DEFAULT (0),
	CONSTRAINT FK_PonyDebitCredits_Ponys FOREIGN KEY(PonyID) REFERENCES Pay.Pony (PonyID) ON UPDATE CASCADE ON DELETE CASCADE ,
    CONSTRAINT PK_PonyDebitCredits PRIMARY KEY CLUSTERED (	PonyDebitCreditsID ASC) ON [PRIMARY]) ON [PRIMARY]


if not exists (select * from dbo.sysobjects where id = object_id(N'Pay.PonyArchives') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE  Pay.PonyArchives(
	PonyArchivesID int IDENTITY(1,1) NOT NULL,
	PonyID int NOT NULL,
	PonyKind Tinyint NOT NULL,

	ExtraCode int ,
	ExtraCaptin nvarchar(300) ,
	ExtraAmount money NOT NULL CONSTRAINT DF_PonyArchives_Amount  DEFAULT (0) ,

	Mounth float ,
	SumFunctionDay float ,
	Price money NOT NULL CONSTRAINT DF_PonyArchives_Price  DEFAULT (0) ,


	CONSTRAINT FK_PonyArchives_Ponys FOREIGN KEY(PonyID) REFERENCES Pay.Pony (PonyID) ON UPDATE CASCADE ON DELETE CASCADE,
   CONSTRAINT PK_PonyArchives PRIMARY KEY CLUSTERED (	PonyArchivesID ASC) ON [PRIMARY]) ON [PRIMARY]


if not exists (select * from dbo.sysobjects where id = object_id(N'Pay.jobsSalaryRanges') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Pay.jobsSalaryRanges(
 jobCode int NOT NULL,
 SalaryID int NOT NULL,
 Amount money NOT NULL,
 CONSTRAINT FK_jobsSalaryRanges_jobCode FOREIGN KEY(jobCode) REFERENCES Pay.jobs (jobCode)  ON DELETE CASCADE ,
 CONSTRAINT FK_jobsSalaryRanges_FormsInfo FOREIGN KEY(SalaryID) REFERENCES Pay.FormsInfo (FormInfoID) ON UPDATE CASCADE ON DELETE CASCADE ,
 CONSTRAINT [PK_jobsSalaryRanges] PRIMARY KEY CLUSTERED (jobCode,SalaryID) ON [PRIMARY]) ON [PRIMARY]



if not(  OBJECT_ID('FK_GetRptColumns_GetRptConstColumns') is  null )
ALTER TABLE Pay.GetRptColumns DROP   CONSTRAINT FK_GetRptColumns_GetRptConstColumns 




if ( COLUMNPROPERTY( OBJECT_ID('Pay.GetReprots'),'DeleteColumnIfSumWageIsZero','IsRowGuidCol')is  null )  
ALTER TABLE Pay.GetReprots ADD DeleteColumnIfSumWageIsZero Tinyint NOT NULL  DEFAULT (0) 


if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelDecExt'),'SettlementDate','IsRowGuidCol')is  null )
ALTER TABLE Pay.PersonelDecExt ADD SettlementDate char(10)  


if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelDecExt'),'PayableDuringMonth','IsRowGuidCol')is  null )
ALTER TABLE Pay.PersonelDecExt ADD PayableDuringMonth Tinyint NOT NULL CONSTRAINT DF_PersonelDecExt_PayableDuringMonth  DEFAULT  (0)  

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelSponsorship'),'kinship','IsRowGuidCol')is  null )
begin
  ALTER TABLE Pay.PersonelSponsorship ADD kinship int 
  ALTER TABLE Pay.PersonelSponsorship ADD  CONSTRAINT FK_PersonelSponsorship_FormsInfo_kinship 
   FOREIGN KEY (kinship) REFERENCES Pay.FormsInfo (FormInfoID) 	
end

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelSponsorship'),'JobType','IsRowGuidCol')is  null )
begin
  ALTER TABLE Pay.PersonelSponsorship ADD JobType int 
  ALTER TABLE Pay.PersonelSponsorship ADD  CONSTRAINT FK_PersonelSponsorship_FormsInfo_JobType 
   FOREIGN KEY (JobType) REFERENCES Pay.FormsInfo (FormInfoID) 	
end

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelSponsorship'),'InsuranceType','IsRowGuidCol')is  null )
begin
  ALTER TABLE Pay.PersonelSponsorship ADD InsuranceType int 
  ALTER TABLE Pay.PersonelSponsorship ADD  CONSTRAINT FK_PersonelSponsorship_FormsInfo_InsuranceType 
   FOREIGN KEY (InsuranceType) REFERENCES Pay.FormsInfo (FormInfoID) 	
end

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelSponsorship'),'InsurancePercent','IsRowGuidCol')is  null )
  ALTER TABLE Pay.PersonelSponsorship ADD InsurancePercent float  DEFAULT 100
    
if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelSponsorship'),'JobTitle','IsRowGuidCol')is  null )
  ALTER TABLE Pay.PersonelSponsorship ADD JobTitle varchar(70)
  
if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelSponsorship'),'MaritalDate','IsRowGuidCol')is  null )
  ALTER TABLE Pay.PersonelSponsorship ADD MaritalDate char(10)
   
if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelSponsorship'),'DivorceDate','IsRowGuidCol')is  null )
  ALTER TABLE Pay.PersonelSponsorship ADD DivorceDate char(10)
  
if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelSponsorship'),'DeathDate','IsRowGuidCol')is  null )
  ALTER TABLE Pay.PersonelSponsorship ADD DeathDate char(10)
  
if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelSponsorship'),'Degree','IsRowGuidCol')is  null )
begin
  ALTER TABLE Pay.PersonelSponsorship ADD Degree int 
  ALTER TABLE Pay.PersonelSponsorship ADD  CONSTRAINT FK_PersonelSponsorship_FormsInfo_Degree 
   FOREIGN KEY (Degree) REFERENCES Pay.FormsInfo (FormInfoID) 	
end

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelSponsorship'),'GraduationDate','IsRowGuidCol')is  null )
  ALTER TABLE Pay.PersonelSponsorship ADD GraduationDate   char(10)  NOT NULL  DEFAULT ('')   


if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelInfo'),'Mobile','IsRowGuidCol')is  null )
  ALTER TABLE Pay.PersonelInfo ADD Mobile varchar(20)

if ( COLUMNPROPERTY( OBJECT_ID('util.CodesInProcess'),'Type','IsRowGuidCol')is  null )  
ALTER TABLE util.CodesInProcess ADD Type tinyint NOT NULL  DEFAULT (0)  

--IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'DF_DecExtItems_DayQuntity') AND type = 'D')
 ALTER TABLE Pay.DecExtItems DROP CONSTRAINT DF_DecExtItems_DayQuntity

ALTER TABLE Pay.DecExtItems ALTER column DayQuntity Float 

IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'DF_DecExtItems_DayQuntity') AND type = 'D')
ALTER TABLE Pay.DecExtItems  ADD CONSTRAINT DF_DecExtItems_DayQuntity  DEFAULT 0 FOR DayQuntity 


IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Fitful') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Fitful(FitfulID decimal(20, 4) NOT NULL ,
  FitfulNote varchar(1000) ,
  CONSTRAINT CK_Fitful CHECK  ((FitfulID=(0))),
  CONSTRAINT PK_Fitful PRIMARY KEY CLUSTERED (FitfulID ASC) ON [PRIMARY]
) ON [PRIMARY]

if (SELECT count(*) FROM Fitful)=0
insert into Fitful (FitfulID) values(0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'ChkStateArchiveEdit','IsRowGuidCol')is  null )
ALTER TABLE Pay.Config ADD ChkStateArchiveEdit Tinyint  NOT NULL  CONSTRAINT DF_Config_ChkStateArchiveEdit DEFAULT 0

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'ArchiveScan','IsRowGuidCol')is  null )
  ALTER TABLE Pay.Config ADD ArchiveScan varchar(255)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'ScanState','IsRowGuidCol')is  null )  
ALTER TABLE Pay.Config ADD ScanState tinyint NOT NULL  CONSTRAINT DF_Config_ScanState DEFAULT 0

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'ArchiveScan','IsRowGuidCol')is  null )  
ALTER TABLE Pay.Config ADD ArchiveScan varchar(255)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'ActiveRangeProject','IsRowGuidCol')is  null )  
ALTER TABLE Pay.Config ADD ActiveRangeProject tinyint NOT NULL  CONSTRAINT DF_Config_ActiveRangeProject DEFAULT 0

GO


DECLARE @S SYSNAME
SET @S=''

DECLARE @SQL NVARCHAR(500)
SET @SQL=''
WHILE @S is not NULL
BEGIN
	SELECT @S=NAME FROM sysobjects WHERE NAME  like'DF%Interdict%TaxCa%'
	IF @S<>'' or @S<>NULL
	BEGIN
		SET @SQL='ALTER TABLE Pay.Interdicts DROP CONSTRAINT '+@S
		exec(@SQL)
        SET @S=''
	END
	ELSE 
	SET	@S=NULL
END

ALTER TABLE Pay.Interdicts ALTER COLUMN TaxCalculationType int
ALTER TABLE Pay.Interdicts ADD CONSTRAINT DF_Interdicts_TaxCalculationType DEFAULT (0) FOR TaxCalculationType
--------------------------------------------------------
--------------------------------------------------------


if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'FunctionActiveMinutes','IsRowGuidCol')is  null )
ALTER TABLE Pay.Config ADD FunctionActiveMinutes int NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'AccDetailCodeEqualPersonelNo','IsRowGuidCol')is  null )
ALTER TABLE Pay.Config ADD AccDetailCodeEqualPersonelNo int NOT NULL  DEFAULT (0)
 
 if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelInfo'),'Email','IsRowGuidCol')is  null )
  ALTER TABLE Pay.PersonelInfo ADD Email nvarchar(100)

 if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelInfo'),'MartyrChild','IsRowGuidCol')is  null )
  ALTER TABLE Pay.PersonelInfo ADD MartyrChild bit NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelInfo'),'TelegramChatID','IsRowGuidCol')is null )
 ALTER TABLE Pay.PersonelInfo ADD TelegramChatID  char(30)

  
  
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_PersonelSponsorship' AND type = 'K')
 ALTER TABLE Pay.PersonelSponsorship ADD CONSTRAINT PK_PersonelSponsorship PRIMARY KEY CLUSTERED (ID) ON [PRIMARY]

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_MissionInfo' AND type = 'K')
 ALTER TABLE Pay.MissionInfo ADD CONSTRAINT PK_MissionInfo PRIMARY KEY CLUSTERED (MissionInfoID) ON [PRIMARY]

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_BudgetInfoItems' AND type = 'K')
 ALTER TABLE Pay.BudgetInfoItems ADD CONSTRAINT PK_BudgetInfoItems PRIMARY KEY CLUSTERED (BudgetInfoItemID) ON [PRIMARY]


if  exists (select * from sysindexes WHERE     (name = N'IX_FixedCalculated'))
DROP INDEX Pay.FixedCalculated.IX_FixedCalculated 


if not exists (select * from sysindexes WHERE     (name = N'IX_FixedCalculated'))
CREATE  NONCLUSTERED INDEX IX_FixedCalculated ON Pay.FixedCalculated
	(ArchiveID,	Mounth,PersonelNO 	) 


if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'PrintAfterPost','IsRowGuidCol')is  null )  
ALTER TABLE Pay.FormTypes ADD PrintAfterPost Tinyint NOT NULL  DEFAULT (0) 


----------------------------------------------------------------------------------------------------------
Declare @FormInfoID int
Declare @FormType int
SET     @FormType=16

UPDATE Pay.FormTypes
SET    PersonelTypeInfoRow = 1
WHERE  (FormType = @FormType) and (PersonelTypeInfoRow = 0)

SELECT @FormInfoID=FormInfoID
FROM   Pay.FormsInfo
WHERE  (FormType = @FormType) AND (InfoID = 1)


--INSERT INTO Pay.PersonelTypeInfo(PersonelNo, FormType, FormInfoID)
--SELECT distinct PersonelInfo.PersonelNo, FormsInfo.FormType, @FormInfoID
--FROM   Pay.FormsInfo CROSS JOIN
--       Pay.PersonelInfo
--WHERE  (FormsInfo.FormType = @FormType) AND (FormsInfo.InfoID = 1)
--         AND PersonelInfo.PersonelNo NOT IN ( SELECT  PersonelNo
--                                                FROM Pay.PersonelTypeInfo
--                                                 WHERE (FormType = @FormType) 											     
--											 )
------------------------------------------------------------------------------------------------------------
if ( COLUMNPROPERTY( OBJECT_ID('Pay.ChangeWage'),'Firstdate','IsRowGuidCol')is  null )
ALTER TABLE Pay.ChangeWage ADD Firstdate char(10)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.ChangeWage'),'Enddate','IsRowGuidCol')is  null )
ALTER TABLE Pay.ChangeWage ADD Enddate char(10)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.ChangeWage'),'ColumnsCalc','IsRowGuidCol')is  null )
ALTER TABLE Pay.ChangeWage ADD ColumnsCalc NvarChar (2000)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.ChangeWage'),'SalaryIDFormula','IsRowGuidCol')is  null )
ALTER TABLE Pay.ChangeWage ADD SalaryIDFormula AS  (('S'+ltrim(str([SalaryID])))+'F')

-----------------------------------------
DECLARE @Query varchar(8000)
SET @Query=(SELECT name FROM sysobjects
        WHERE [type] = 'D' --AND parent_object_id = OBJECT_ID('[Mission]') 
             AND SUBSTRING(name,0,21)='DF__Mission__AccTopi')

SET @Query='ALTER TABLE Pay.[Mission] DROP CONSTRAINT '+@Query+'
ALTER TABLE Pay.[Mission] ALTER COLUMN AccTopicCode BIGINT
ALTER TABLE Pay.[Mission] ADD CONSTRAINT DF__Mission__AccTopicCode DEFAULT(''0'') FOR AccTopicCode'
Exec (@Query) 



if (  OBJECT_ID('Pay.PK_PersonelInfo') is  null )
ALTER TABLE Pay.PersonelInfo ADD CONSTRAINT PK_PersonelInfo PRIMARY KEY CLUSTERED (	[PersonelNo] ASC ) ON [PRIMARY]


if not(  OBJECT_ID('FK_Interdicts_PersonelInfo') is  null )
ALTER TABLE Pay.Interdicts  Drop  CONSTRAINT FK_Interdicts_PersonelInfo 

if (  OBJECT_ID(N'Pay.FK_Interdicts_PersonelInfo') is  null )
ALTER TABLE Pay.Interdicts  WITH CHECK ADD  CONSTRAINT FK_Interdicts_PersonelInfo FOREIGN KEY(PersonelNo)
REFERENCES Pay.PersonelInfo (PersonelNo)
ON UPDATE CASCADE




if not(  OBJECT_ID('FK_FixedCalculated_PersonelInfo') is  null )
ALTER TABLE Pay.FixedCalculated  Drop  CONSTRAINT FK_FixedCalculated_PersonelInfo 

if (  OBJECT_ID('Pay.FK_FixedCalculated_PersonelInfo') is  null )
ALTER TABLE Pay.FixedCalculated  WITH CHECK ADD  CONSTRAINT FK_FixedCalculated_PersonelInfo FOREIGN KEY(PersonelNO)
REFERENCES Pay.PersonelInfo (PersonelNo)
ON UPDATE CASCADE



if not(  OBJECT_ID('FK_PersonelArchives_PersonelInfo') is  null )
ALTER TABLE Pay.PersonelArchives  Drop  CONSTRAINT FK_PersonelArchives_PersonelInfo 

if not(  OBJECT_ID('FK_PersonelArchives_PersonelInfo') is  null )
ALTER TABLE Pay.PersonelArchives  Drop  CONSTRAINT FK_PersonelArchives_PersonelInfo 

if (  OBJECT_ID('Pay.FK_PersonelArchives_PersonelInfo') is  null )
ALTER TABLE Pay.PersonelArchives  WITH CHECK ADD  CONSTRAINT FK_PersonelArchives_PersonelInfo FOREIGN KEY(PersonelNO)
REFERENCES Pay.PersonelInfo (PersonelNo)
ON UPDATE CASCADE



if  exists (select * from sysindexes WHERE     (name = N'IX_Interdicts_InsuranceID'))
DROP INDEX Pay.Interdicts.IX_Interdicts_InsuranceID 

UPDATE       Pay.Interdicts
SET                insuranceID =(select max(insuranceNo) from Pay.InsuranceCONSTinfo)
--select * 
FROM            Pay.Interdicts LEFT OUTER JOIN
                         Pay.InsuranceCONSTinfo ON Pay.Interdicts.insuranceID = Pay.InsuranceCONSTinfo.insuranceNo
WHERE        (Pay.InsuranceCONSTinfo.insuranceNo IS NULL)

GO

GO


DECLARE @S SYSNAME
SET @S=''

DECLARE @SQL NVARCHAR(500)

SET @S=''
SET @SQL=''
WHILE @S is not NULL
BEGIN
	SELECT @S=NAME FROM sysobjects WHERE NAME  like'DF%Interdict%insur%'
	IF @S<>'' or @S<>NULL
	BEGIN
		SET @SQL='ALTER TABLE Pay.Interdicts DROP CONSTRAINT '+@S
		exec(@SQL)
        SET @S=''
	END
	ELSE 
	SET	@S=NULL
END
if ( select count(insuranceNo ) from Pay.InsuranceCONSTinfo ) >0 
begin 
	select @SQL=min(insuranceNo) from Pay.InsuranceCONSTinfo

	SET @SQL='ALTER TABLE Pay.Interdicts ADD CONSTRAINT DF_Interdicts_insuranceID DEFAULT ('+@SQL+') FOR insuranceID'
	exec(@SQL)
	ALTER TABLE Pay.Interdicts ADD CONSTRAINT DF_Interdicts_InsuranceStartDate DEFAULT ('') FOR InsuranceStartDate
	ALTER TABLE Pay.Interdicts ADD CONSTRAINT DF_Interdicts_InsuranceEndDate DEFAULT ('') FOR InsuranceEndDate


	if (  OBJECT_ID('Pay.FK_Interdicts_InsuranceCONSTinfo') is  null )
	IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
	WHERE        (TABLE_NAME = N'Pay.Interdicts') AND (COLUMN_NAME = N'insuranceID') AND (DATA_TYPE = N'tinyint')
	)
	begin
	  ALTER TABLE Pay.Interdicts DROP CONSTRAINT DF_Interdicts_insuranceID
	  ALTER TABLE Pay.Interdicts alter column insuranceID  tinyint NOT NULL  
	  ALTER TABLE Pay.Interdicts ADD CONSTRAINT DF_Interdicts_insuranceID DEFAULT (0) FOR insuranceID

	end
end 


IF  EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE        (TABLE_NAME = N'Pay.Interdicts') AND (COLUMN_NAME = N'insuranceID') AND (DATA_TYPE = N'tinyint'))
if (  OBJECT_ID('Pay.FK_Interdicts_InsuranceCONSTinfo') is  null )
ALTER TABLE Pay.Interdicts WITH CHECK ADD CONSTRAINT	FK_Interdicts_InsuranceCONSTinfo FOREIGN KEY
(insuranceID) REFERENCES Pay.InsuranceCONSTinfo(insuranceNo) 



if (  OBJECT_ID('Pay.FK_InterdictItems_Interdicts') is  null )
begin
	SELECT        Pay.InterdictItems.*
	INTO              Pay.InterdictItems4Not_Fk
	FROM            Pay.InterdictItems LEFT OUTER JOIN
							 Pay.Interdicts ON InterdictItems.InterdictID = Interdicts.InterdictID
	WHERE        (Interdicts.InterdictID IS NULL)


	DELETE FROM InterdictItems
	FROM            Pay.InterdictItems LEFT OUTER JOIN
							 Pay.Interdicts ON InterdictItems.InterdictID = Interdicts.InterdictID
	WHERE        (Interdicts.InterdictID IS NULL)
end


if (  OBJECT_ID('Pay.FK_InterdictItems_Interdicts') is  null )
ALTER TABLE Pay.InterdictItems   ADD  CONSTRAINT FK_InterdictItems_Interdicts FOREIGN KEY(InterdictID)
REFERENCES Pay.Interdicts (InterdictID)
ON UPDATE CASCADE
ON DELETE CASCADE

if not(  OBJECT_ID('FK_FunctionsItems_FormsInfo') is  null )
ALTER TABLE Pay.FunctionsItems  DROP  CONSTRAINT FK_FunctionsItems_FormsInfo 

--INSERT INTO Pay.FormsInfo
--                         (FormInfoID, FormType, InfoID, InfoName_L1)
--SELECT DISTINCT FunctionsItems.SalaryID FormInfoID ,29 as FormType , FunctionsItems.SalaryID InfoID ,'عناوبن کارکرد حذف شده استفاده شده در ثبت کارکرد' as InfoName_L1
--FROM            Pay.FunctionsItems LEFT OUTER JOIN
--                         Pay.FormsInfo ON FunctionsItems.SalaryID = FormsInfo.FormInfoID
--WHERE        (FormsInfo.FormInfoID IS NULL)

if (  OBJECT_ID('Pay.FK_FunctionsItems_FormsInfo') is  null )
ALTER TABLE Pay.FunctionsItems  WITH CHECK ADD  CONSTRAINT FK_FunctionsItems_FormsInfo FOREIGN KEY(SalaryID)
REFERENCES Pay.FormsInfo (FormInfoID)


if ( COLUMNPROPERTY( OBJECT_ID('Pay.Interdicts'),'AidNo1','IsRowGuidCol')is  null )  
ALTER TABLE Pay.Interdicts ADD AidNo1 varchar(20) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Interdicts'),'AidDate1','IsRowGuidCol')is  null )  
ALTER TABLE Pay.Interdicts ADD AidDate1 char(10)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormsInfo'),'Note','IsRowGuidCol')is  null )  
ALTER TABLE Pay.FormsInfo ADD Note text

--Sheikh 2015/07/28
if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'InsertAccCode','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD InsertAccCode BIT  CONSTRAINT DF_FormTypes_InsertAccCode DEFAULT (0) 
--Sheikh 2015/08/23
if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'DecExtInFishPrint','IsRowGuidCol')is  null )  
ALTER TABLE Pay.Config ADD DecExtInFishPrint NVARCHAR(250)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'IntegrateLoanRemain','IsRowGuidCol')is  null )  
ALTER TABLE Pay.Config ADD IntegrateLoanRemain tinyint

if ( COLUMNPROPERTY( OBJECT_ID('Fitful'),'FitfulIDc','IsRowGuidCol')is  null )  
ALTER TABLE Fitful ADD FitfulIDc money NOT NULL CONSTRAINT DF_Fitful_FitfulIDc   DEFAULT(0)

if ( COLUMNPROPERTY( OBJECT_ID('Fitful'),'ID','IsRowGuidCol')is  null )  
ALTER TABLE Fitful ADD ID Bigint NOT NULL CONSTRAINT DF_Fitful_ID   DEFAULT(0)


if ( COLUMNPROPERTY( OBJECT_ID('Pay.InsuranceCONSTinfo'),'AccTopicCodeExempt','IsRowGuidCol')is  null )
ALTER TABLE Pay.InsuranceCONSTinfo ADD AccTopicCodeExempt bigint NOT NULL CONSTRAINT DF_InsuranceCONSTinfo_AccTopicCodeExempt DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.InsuranceCONSTinfo'),'AccDetailCodeExempt','IsRowGuidCol')is  null )
ALTER TABLE Pay.InsuranceCONSTinfo ADD AccDetailCodeExempt int NOT NULL CONSTRAINT DF_InsuranceCONSTinfo_AccDetailCodeExempt DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.InsuranceCONSTinfo'),'AccCTopicCodeExempt','IsRowGuidCol')is  null )
ALTER TABLE Pay.InsuranceCONSTinfo ADD AccCTopicCodeExempt int NOT NULL CONSTRAINT DF_InsuranceCONSTinfo_AccCTopicCodeExempt DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.InsuranceCONSTinfo'),'AccCTopicCode2Exempt','IsRowGuidCol')is  null )
ALTER TABLE Pay.InsuranceCONSTinfo ADD AccCTopicCode2Exempt int NOT NULL CONSTRAINT DF_InsuranceCONSTinfo_AccCTopicCode2Exempt DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.InsuranceCONSTinfo'),'AccCTopicCode3Exempt','IsRowGuidCol')is  null )
ALTER TABLE Pay.InsuranceCONSTinfo ADD AccCTopicCode3Exempt int NOT NULL CONSTRAINT DF_InsuranceCONSTinfo_AccCTopicCode3Exempt DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'PonyTaxAble','IsRowGuidCol')is  null )      
ALTER TABLE Pay.Config ADD PonyTaxAble Tinyint NOT NULL CONSTRAINT DF_Config_PonyTaxAble DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'WorkFlowID','IsRowGuidCol')is  null )  
 ALTER TABLE Pay.FormTypes ADD WorkFlowID int  


IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE (TABLE_NAME = N'Util.CodesInProcess') AND (COLUMN_NAME = N'UserID') AND (DATA_TYPE='int'))
ALTER TABLE Util.CodesInProcess ALTER column UserID int 

IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE (TABLE_NAME = N'Pay.InterdictItems') AND (COLUMN_NAME = N'UserID') AND (DATA_TYPE='int'))
ALTER TABLE Pay.InterdictItems ALTER column UserID int 

IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE (TABLE_NAME = N'Pay.Interdicts') AND (COLUMN_NAME = N'UserID') AND (DATA_TYPE='int'))
ALTER TABLE Pay.Interdicts ALTER column UserID int 


if ( COLUMNPROPERTY( OBJECT_ID('Pay.Interdicts'),'TypeOfContract','IsRowGuidCol')is  null )  
ALTER TABLE Pay.Interdicts ADD TypeOfContract int 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Interdicts'),'StandardClock','IsRowGuidCol')is  null )  
ALTER TABLE Pay.Interdicts ADD StandardClock Decimal(18,4) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Interdicts'),'RetardActive','IsRowGuidCol')is  null )
ALTER TABLE Pay.Interdicts ADD RetardActive Tinyint NOT NULL CONSTRAINT DF_Interdicts_RetardActive DEFAULT (1)



 IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'Pay.FixedLabels') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Pay.FixedLabels(
	LabelID INT NOT NULL,
	LabelDateTime DATETIME NOT NULL,
	Descriptions  VARCHAR(500) NOT NULL	,
 CONSTRAINT PK_FixedLabels PRIMARY KEY CLUSTERED (LabelID ASC) ON [PRIMARY]) ON [PRIMARY]

if (select count(*) from Pay.FixedLabels )=0
INSERT   INTO              Pay.FixedLabels(LabelID, LabelDateTime, Descriptions)
VALUES        (0,getdate(),'دسته بندی محاسبات')

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FixedCalculated'),'LabelID','IsRowGuidCol')is  null )  
 ALTER TABLE Pay.FixedCalculated ADD LabelID int NOT NULL  DEFAULT (0)



IF  EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FixedCalculated_FixedLabels' AND type = 'F')
ALTER TABLE Pay.FixedCalculated Drop  CONSTRAINT FK_FixedCalculated_FixedLabels 

IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FixedCalculated_FixedLabels' AND type = 'F')
ALTER TABLE Pay.FixedCalculated WITH CHECK ADD  CONSTRAINT FK_FixedCalculated_FixedLabels FOREIGN KEY(LabelID)
REFERENCES Pay.FixedLabels (LabelID) ON UPDATE CASCADE




--IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Tab_job') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
--CREATE TABLE dbo.Tab_job(	JOB_CODE nvarchar(50) NULL,	JOB_DESC nvarchar(255) NULL,) ON [PRIMARY] 

/****** Object:  Table Pay.Taxs    Script Date: 28/02/1401 04:56:38 ب.ظ ******/

IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.Taxs') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)CREATE TABLE Pay.Taxs(
	TaxID int NOT NULL,
	FormInfoID int NOT NULL,
	YearRun int NOT NULL,
	MonthRun int NOT NULL,
	Descriptions varchar(150) NULL,
	BonusFreeTax money NOT NULL,
	TFN_CODE int NULL,
	Statuss tinyint NULL,
 CONSTRAINT PK_Taxs PRIMARY KEY CLUSTERED 
(
	TaxID ASC
) ON [PRIMARY]
) ON [PRIMARY]

IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.TaxsItems') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)CREATE TABLE Pay.TaxsItems(
	ID int IDENTITY(1,1) NOT NULL,
	TaxID int NOT NULL,
	RowNo int NOT NULL,
	RevenuePrice money NOT NULL,
	FixedPrice money NOT NULL,
	Cofficient float NOT NULL,
 CONSTRAINT PK_TaxsItems PRIMARY KEY CLUSTERED 
(
	ID ASC
) ON [PRIMARY]
) ON [PRIMARY]


if ( COLUMNPROPERTY( OBJECT_ID('Pay.Taxs'),'Taxs_Bonus_TaxID','IsRowGuidCol')is  null )
 ALTER TABLE Pay.Taxs  ADD Taxs_Bonus_TaxID int 


IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.Insurance') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)CREATE TABLE Pay.Insurance(
	InsuranceID int NOT NULL,
	FormInfoID int NOT NULL,
	MinDailySalary money NOT NULL,
	MaxDailySalary money NOT NULL,
	YearRun int NOT NULL,
	MonthRun int NOT NULL,
	InsertDate char(10) NULL,
	Descriptions varchar(150) NULL,
 CONSTRAINT PK_Insurance PRIMARY KEY CLUSTERED 
(
	InsuranceID ASC
) ON [PRIMARY]
) ON [PRIMARY]



--------------------------------------------------------------------------------------------
IF OBJECT_ID ('TR_ConfigChangeLog_FormInfoItems', 'TR') IS NOT NULL
ALTER TABLE Pay.FormInfoItems  ENABLE TRIGGER TR_ConfigChangeLog_FormInfoItems

IF OBJECT_ID ('TR_ConfigChangeLog_FormsInfo', 'TR') IS NOT NULL 
ALTER TABLE Pay.FormsInfo  ENABLE TRIGGER TR_ConfigChangeLog_FormsInfo

IF OBJECT_ID ('TR_ConfigChangeLog_Functions', 'TR') IS NOT NULL 
ALTER TABLE Pay.Functions   ENABLE TRIGGER TR_ConfigChangeLog_Functions

IF OBJECT_ID ('TR_ConfigChangeLog_FunctionsItems', 'TR') IS NOT NULL 
ALTER TABLE Pay.FunctionsItems  ENABLE TRIGGER TR_ConfigChangeLog_FunctionsItems

IF OBJECT_ID ('TR_ConfigChangeLog_PersonelInfo', 'TR') IS NOT NULL 
ALTER TABLE Pay.PersonelInfo  ENABLE TRIGGER TR_ConfigChangeLog_PersonelInfo

IF OBJECT_ID ('TR_ConfigChangeLog_PersonelDecExt', 'TR') IS NOT NULL 
ALTER TABLE Pay.PersonelDecExt  ENABLE TRIGGER TR_ConfigChangeLog_PersonelDecExt

IF OBJECT_ID ('TR_ConfigChangeLog_PersonelDecExtItem', 'TR') IS NOT NULL 
ALTER TABLE Pay.PersonelDecExtItem  ENABLE TRIGGER TR_ConfigChangeLog_PersonelDecExtItem

IF OBJECT_ID ('TR_ConfigChangeLog_Interdicts', 'TR') IS NOT NULL 
ALTER TABLE Pay.Interdicts  ENABLE TRIGGER TR_ConfigChangeLog_Interdicts

IF OBJECT_ID ('TR_ConfigChangeLog_InterdictItems', 'TR') IS NOT NULL 
ALTER TABLE Pay.InterdictItems  ENABLE TRIGGER TR_ConfigChangeLog_InterdictItems

IF OBJECT_ID ('TR_ConfigChangeLog_InsuranceCONSTinfo', 'TR') IS NOT NULL 
ALTER TABLE Pay.InsuranceCONSTinfo  ENABLE TRIGGER TR_ConfigChangeLog_InsuranceCONSTinfo

IF OBJECT_ID ('TR_ConfigChangeLog_SalaryRange', 'TR') IS NOT NULL 
ALTER TABLE Pay.SalaryRange  ENABLE TRIGGER TR_ConfigChangeLog_SalaryRange
---------------------------------------------------------------------------------------------
----  UP TRIGGER Add Code
----  UP TRIGGER Add Code
----  UP TRIGGER Add Code
----  UP TRIGGER Add Code


--IF  EXISTS(SELECT * FROM SYSOBJECTS where id = object_id(N'Assets.AssetsGroups') and OBJECTPROPERTY(id, N'IsUserTable') = 1 )

--begin 
--	EXEC sp_rename 'Assets.AssetsGroups', 'Assets.AssetsGroupsOld';

--	INSERT INTO StuffGroups
--                         (GroupID, GroupName, StartCode, FinishCode, acc_IncomeTopicCode, acc_BidTopicCode, acc_CTopicCode, acc_DetailCode, acc_CTopicCode2, acc_AFootInComingTopicCode, LevelID, UperGroupId, GroupType, 
--                         acc_CTopicCode3)
--	SELECT        AsstetsGrpCode, GrpName, AsstetsGrpCode AS Expr1, AsstetsGrpCode AS Expr2, AccTopicCode, AccTopicCode AS Expr3, AccCTopicCode, AccDetailCode, AccCTopicCode2, AccCTopicCode3, LevelID, PrvGrpCode, 
--                         9 AS GroupType, AccCTopicCode3 AS Expr4
--	FROM            Assets.[Assets.AssetsGroupsOld]
--	WHERE        (AsstetsGrpCode NOT IN
--                             (SELECT        GroupID
--                                FROM            StuffGroups))

--end 


--if ( COLUMNPROPERTY( OBJECT_ID('StuffGroups'),'PrefixPelak','IsRowGuidCol')is null )
--begin
--IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Amval_AssetsGroups' AND type = 'F')
--  ALTER TABLE Assets.Amval drop CONSTRAINT FK_Amval_AssetsGroups
--ALTER TABLE StuffGroups ADD PrefixPelak varchar(15)
--end

IF OBJECT_ID ('Pay.[TR_ConfigChangeLog_FormsInfo]', 'TR') IS NOT NULL 
DROP TRIGGER Pay.[TR_ConfigChangeLog_FormsInfo]

IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'Pay.GetRptColumns') AND name = 'ID')
BEGIN
    ALTER TABLE [Pay].[GetRptColumns]
    ADD ID INT IDENTITY(1,1) NOT NULL;
END


IF EXISTS (SELECT * FROM sys.key_constraints WHERE name = 'PK_GetRptColumns' AND parent_object_id = OBJECT_ID(N'[Pay].[GetRptColumns]'))
BEGIN
    ALTER TABLE [Pay].[GetRptColumns]
    DROP CONSTRAINT PK_GetRptColumns;
END


IF EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[Pay].[GetRptColumns]') AND name = 'ID')
AND NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Pay].[GetRptColumns]') AND is_primary_key = 1)
BEGIN
    ALTER TABLE [Pay].[GetRptColumns]
    ADD CONSTRAINT PK_GetRptColumns PRIMARY KEY CLUSTERED (ID)
     ON [PRIMARY];
END

if ( COLUMNPROPERTY( OBJECT_ID('Fitful'),'DetailCode','IsRowGuidCol')is  null )  
ALTER TABLE Fitful ADD DetailCode int NOT NULL CONSTRAINT DF_Fitful_DetailCode   DEFAULT(0)


UPDATE       Pay.FixedCalculated
SET                CalCulateKind = 11
WHERE        (CalCulateKind = 10) AND (ShowListKind = 11) AND (BedBes = 2) AND (YearID <= 1404)

UPDATE pay.PersonelDecExt 
SET YearID = left(AidDate1,4)
from	Pay.personeldecext  left  join
		 Pay.FormsInfo as FormsInfo_1 on Pay.PersonelDecExt.forminfoid = FormsInfo_1.forminfoid
where	(formsinfo_1.formtype = 16) and ISNULL(YearID,0)=0 and len(left(AidDate1,4))=4


if ( COLUMNPROPERTY( OBJECT_ID('Pay.FunctionDay'),'Situation','IsRowGuidCol')is  null )
ALTER TABLE Pay.FunctionDay  ADD Situation Tinyint  NOT NULL  DEFAULT 0


UPDATE pay.PersonelDecExt 
SET YearID = (SELECT MAX(YearID) FROM Util.MaliYear)
from	Pay.personeldecext  left  join
		 Pay.FormsInfo as FormsInfo_1 on Pay.PersonelDecExt.forminfoid = FormsInfo_1.forminfoid
where	(formsinfo_1.formtype = 16) and ISNULL(YearID,0)=0


ALTER TABLE Pay.PersonelInfo ALTER COLUMN DSW_JOB char(6) COLLATE Arabic_CI_AS 

if not ( COLUMNPROPERTY( OBJECT_ID('Pay.FormsInfo'),'Years','IsRowGuidCol')is  null )
alter table Pay.FormsInfo drop column Years 

if not ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'StartMaliYear','IsRowGuidCol')is  null )
alter table pay.Config drop column StartMaliYear

if not ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'FinishMaliYear','IsRowGuidCol')is  null )
alter table pay.Config drop column FinishMaliYear

if not ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'AccountDBName','IsRowGuidCol')is  null )
alter table pay.Config drop column AccountDBName



-- ALTER TABLE pay.Config ADD StartMaliYear char(10) NOT NULL DEFAULT ('0000/00/00')
-- ALTER TABLE pay.Config ADD FinishMaliYear char(10) NOT NULL DEFAULT ('9999/99/99')
--ALTER TABLE pay.Config ADD AccountDBName char(100) 



if ( COLUMNPROPERTY( OBJECT_ID('Fitful'),'ID','IsRowGuidCol')is  null )  
ALTER TABLE Fitful ADD ID Bigint NOT NULL CONSTRAINT DF_Fitful_ID   DEFAULT(0)

IF  EXISTS(SELECT * FROM SYSOBJECTS where id = object_id(N'Pay.PersonelInfo') and OBJECTPROPERTY(id, N'IsUserTable') = 1 )
begin
  if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelInfo'),'CitizenCode','IsRowGuidCol')is null )
    ALTER TABLE Pay.PersonelInfo ADD CitizenCode varchar(20)  
	
  if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelInfo'),'LocationCode','IsRowGuidCol')is null )
    ALTER TABLE Pay.PersonelInfo ADD LocationCode int NOT NULL  DEFAULT (0)

  IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelInfo_FormsInfo_Location' AND type = 'F')
  ALTER TABLE Pay.PersonelInfo WITH CHECK ADD CONSTRAINT FK_PersonelInfo_FormsInfo_Location FOREIGN KEY (LocationCode) REFERENCES Pay.FormsInfo(FormInfoID) --ON UPDATE CASCADE 

end  
GO
if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelInfo'),'BaleChatID','IsRowGuidCol')is null )
  ALTER TABLE Pay.PersonelInfo ADD BaleChatID  char(30)

GO
if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'Checking4AllPersonnelShow','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD Checking4AllPersonnelShow tinyint NOT NULL DEFAULT (1) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'EmployerAmountActiveShow','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD EmployerAmountActiveShow tinyint NOT NULL DEFAULT (1) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'PromissoryFormType','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD PromissoryFormType int 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelAccounts'),'SHEBA','IsRowGuidCol')is  null )
ALTER TABLE Pay.PersonelAccounts ADD SHEBA char(30) 


if ( COLUMNPROPERTY( OBJECT_ID('Pay.FixedCalculated'),'SubCompanyCode','IsRowGuidCol')is  null )  
 ALTER TABLE Pay.FixedCalculated ADD SubCompanyCode int NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Interdicts'),'RetirementDate','IsRowGuidCol')is  null )  
 ALTER TABLE Pay.Interdicts ADD RetirementDate char(10) NOT NULL  DEFAULT ('')

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Interdicts'),'jobCityAddress','IsRowGuidCol')is  null )  
 ALTER TABLE Pay.Interdicts ADD jobCityAddress varchar(250) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormsInfo'),'WageKind','IsRowGuidCol')is  null )  
 ALTER TABLE Pay.FormsInfo ADD WageKind  Tinyint  NOT NULL  CONSTRAINT DF_FormsInfo_WageKind    DEFAULT (0)




if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'FormInfo4Function','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD FormInfo4Function int NOT NULL CONSTRAINT DF_FormTypes_FormInfo4Function  DEFAULT (12) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'WageKind_Active','IsRowGuidCol') is  null )
begin
	ALTER TABLE Pay.FormTypes ADD WageKind_Active Tinyint  NOT NULL  CONSTRAINT DF_FormTypes_WageKind_Active   DEFAULT (0)
exec(
	'
	UPDATE Pay.FormTypes  
	SET WageKind_Active = 1  
	WHERE formtype in (22,23,24,25,29,31,33,43,44,47,53,54,118,138)
	'
	) 
end

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormsInfo'),'WageKind','IsRowGuidCol')is  null )
begin
	ALTER TABLE Pay.FormsInfo ADD WageKind   Tinyint  NOT NULL  CONSTRAINT DF_FormsInfo_WageKind    DEFAULT (0)
exec('
	UPDATE FI 
		SET FI.WageKind = 1
	FROM Pay.SalaryRange SR
		INNER JOIN 	Pay.FormsInfo FI ON SR.SalaryID = FI.FormInfoID
		INNER JOIN  Pay.FormTypes FT ON FI.FormType = FT.FormType 
		INNER JOIN	Pay.FormsInfo AS FI_55 ON SR.FormInfoID = FI_55.FormInfoID
	WHERE (SR.Kind = 0) 
		AND FI_55.FormType = 55
		AND FI.WageKind = 0
		AND FI_55.InfoID = 1 
	'
	)

exec('
	UPDATE FI 
		SET FI.WageKind = 
						case 
							when FI_130.InfoID = 7  then 2 
							when FI_130.InfoID = 8  then 2
							when FI_130.InfoID = 13 then 5
							when FI_130.InfoID = 14 then 5
							when FI_130.InfoID = 15 then 11
							when FI_130.InfoID = 16 then 12
							when FI_130.InfoID = 17 then 4 
							when FI_130.InfoID = 18 then 10
							when FI_130.InfoID = 19 then 9
							when FI_130.InfoID = 20 then 15
							when FI_130.InfoID = 21 then 16
							when FI_130.InfoID = 22 then 13
							when FI_130.InfoID = 23 then 13
							when FI_130.InfoID = 24 then 13
							when FI_130.InfoID = 25 then 0
							when FI_130.InfoID = 26 then 14
							when FI_130.InfoID = 27 then 3
							when FI_130.InfoID = 28 then 18
							when FI_130.InfoID = 29 then 2
							when FI_130.InfoID = 30 then 2
							when FI_130.InfoID = 31 then 8
							when FI_130.InfoID = 32 then 8
							when FI_130.InfoID = 33 then 22
							when FI_130.InfoID = 34 then 23
						else 0 
						end
	FROM Pay.SalaryRange SR
		INNER JOIN 	Pay.FormsInfo FI ON SR.SalaryID = FI.FormInfoID
		INNER JOIN  Pay.FormTypes FT ON FI.FormType = FT.FormType 
		INNER JOIN	Pay.FormsInfo AS FI_130 ON SR.FormInfoID = FI_130.FormInfoID
	WHERE (SR.Kind = 0) 
		AND FI_130.FormType = 130
		AND FI.WageKind = 0
	')

exec('
	UPDATE FI 
		SET FI.WageKind = 2
	FROM Pay.SalaryRange SR
		INNER JOIN 	Pay.FormsInfo FI ON SR.SalaryID = FI.FormInfoID
		INNER JOIN  Pay.FormTypes FT ON FI.FormType = FT.FormType 
		INNER JOIN	Pay.FormsInfo AS FI_55 ON SR.FormInfoID = FI_55.FormInfoID
	WHERE (SR.Kind = 0) 
		AND FI_55.FormType = 55
		AND FI.WageKind = 0
		AND FI_55.InfoID = 2
	')
end

exec('
if ( COLUMNPROPERTY( OBJECT_ID(''Pay.FormsInfo''),''WageKind'',''IsRowGuidCol'')is  null )
ALTER TABLE Pay.FormsInfo ADD WageKind   Tinyint  NOT NULL  CONSTRAINT DF_FormsInfo_WageKind    DEFAULT (0)
')




/*

--BEGIN TRY  
درصورت خطا  در 
UPDATE FI 		SET FI.WageKind = 

که در چند خط پایین هست  فقط خط زیر را اجرا کنید
	ALTER TABLE Pay.FormsInfo ADD WageKind   Tinyint  NOT NULL  CONSTRAINT DF_FormsInfo_WageKind    DEFAULT (0)
--END TRY  

--BEGIN CATCH  

--END CATCH;
*/

--if ( SELECT count(*) FROM Pay.FormTypes WHERE (DisplayFormType = 4) AND (FormType IN (94,130)))>0
--begin
----SELECT        Pay.WageKinds.WageKind, Pay.WageKinds.WageKindName ,InfoName_L1,InfoName_L130 ,WageKind_New ,WageKindold ,InfoID
----FROM            Pay.WageKinds LEFT OUTER JOIN                             (select 
--UPDATE FI 		SET FI.WageKind = 
--						case 
--							when FI_130.InfoID = 7  then 1 
--							when FI_130.InfoID = 8  then 2
--							when FI_130.InfoID = 9  then 3
--							when FI_130.InfoID = 10 then 4
--							when FI_130.InfoID = 11 then 5
--							when FI_130.InfoID = 12 then 6
--							when FI_130.InfoID = 13 then 7
--							when FI_130.InfoID = 14 then 8
--							when FI_130.InfoID = 16 then 10 
--							when FI_130.InfoID = 17 then 11
--							when FI_130.InfoID = 18 then 16
--							when FI_130.InfoID = 19 then 17
--							when FI_130.InfoID = 20 then 18
--							when FI_130.InfoID = 21 then 19
--							when FI_130.InfoID = 22 then 20
--							when FI_130.InfoID = 23 then 21
--							when FI_130.InfoID = 24 then 22
--							when FI_130.InfoID = 25 then 23
--							when FI_130.InfoID = 26 then 24
--							when FI_130.InfoID = 27 then 25
--							when FI_130.InfoID = 28 then 26
--							when FI_130.InfoID = 29 then 27
--							when FI_130.InfoID = 30 then 28
--							when FI_130.InfoID = 31 then 29
--							when FI_130.InfoID = 32 then 30
--						  --when FI_130.InfoID = 33 then ?
--						  --when FI_130.InfoID = 34 then ?
--						  --when FI_130.InfoID = 35 then ?
--							when FI_130.InfoID = 36 then 12
--							when FI_130.InfoID = 37 then 13
--							when FI_130.InfoID = 38 then 14
--							when FI_130.InfoID = 39 then 15
--						else 0 
--						end 
--						--WageKind_New ,FI.InfoName_L1,FI_130.InfoName_L1 InfoName_L130,SR.Kind,FI.WageKind WageKindold,FI_130.InfoID ,FI.InfoID InfoIDfi ,FI.formInfoID
--	FROM Pay.SalaryRange SR
--		INNER JOIN 	Pay.FormsInfo FI ON SR.SalaryID = FI.FormInfoID
--		INNER JOIN  Pay.FormTypes FT ON FI.FormType = FT.FormType 
--		INNER JOIN	Pay.FormsInfo AS FI_130 ON SR.FormInfoID = FI_130.FormInfoID
		
--	WHERE (SR.Kind = 0) AND	FI_130.FormType = 130
----) AS derivedtbl_1 ON Pay.WageKinds.WageKind = derivedtbl_1.WageKind_New


--update Pay.FormsInfo
--set WageKind = 1 
--WHERE  (FormInfoID IN
--                             (SELECT DISTINCT Pay.SalaryRange.SalaryID
--                                FROM            Pay.FormsInfo AS FormsInfo_1 INNER JOIN
--                                                         Pay.SalaryRange ON FormsInfo_1.FormInfoID = Pay.SalaryRange.FormInfoID
--                                WHERE        (FormsInfo_1.FormType = 29)))
--	 AND WageKind != 1
----
--update Pay.FormsInfo
--set WageKind = 27 
--WHERE  not (FormInfoID IN
--                             (SELECT DISTINCT Pay.SalaryRange.SalaryID
--                                FROM            Pay.FormsInfo AS FormsInfo_1 INNER JOIN
--                                                         Pay.SalaryRange ON FormsInfo_1.FormInfoID = Pay.SalaryRange.FormInfoID
--                                WHERE        (FormsInfo_1.FormType = 29)))
--	 AND WageKind = 1

--UPDATE Pay.FormTypes
--   SET DisplayFormType = 0
--WHERE (DisplayFormType = 4) AND (FormType IN (94,130))

--END

IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.Taxs') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)CREATE TABLE Pay.Taxs(
	TaxID int NOT NULL,
	FormInfoID int NOT NULL,
	YearRun int NOT NULL,
	MonthRun int NOT NULL,
	Descriptions varchar(150) NULL,
	BonusFreeTax money NOT NULL,
	TFN_CODE int NULL,
	Statuss tinyint NULL,
 CONSTRAINT PK_Taxs PRIMARY KEY CLUSTERED 
(
	TaxID ASC
) ON [PRIMARY]
) ON [PRIMARY]

IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.TaxsItems') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)CREATE TABLE Pay.TaxsItems(
	ID int IDENTITY(1,1) NOT NULL,
	TaxID int NOT NULL,
	RowNo int NOT NULL,
	RevenuePrice money NOT NULL,
	FixedPrice money NOT NULL,
	Cofficient float NOT NULL,
 CONSTRAINT PK_TaxsItems PRIMARY KEY CLUSTERED 
(
	ID ASC
) ON [PRIMARY]
) ON [PRIMARY]


if ( COLUMNPROPERTY( OBJECT_ID('Pay.Taxs'),'Taxs_Bonus_TaxID','IsRowGuidCol')is  null )
 ALTER TABLE Pay.Taxs  ADD Taxs_Bonus_TaxID int 


IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.Insurance') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)CREATE TABLE Pay.Insurance(
	InsuranceID int NOT NULL,
	FormInfoID int NOT NULL,
	MinDailySalary money NOT NULL,
	MaxDailySalary money NOT NULL,
	YearRun int NOT NULL,
	MonthRun int NOT NULL,
	InsertDate char(10) NULL,
	Descriptions varchar(150) NULL,
 CONSTRAINT PK_Insurance PRIMARY KEY CLUSTERED 
(
	InsuranceID ASC
) ON [PRIMARY]
) ON [PRIMARY]

if not exists (select * from sysobjects where id = object_id(N'Pay.JobPromissory') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Pay.JobPromissory(
jobCode int NOT NULL ,
PromRunDate char(10) NOT NULL ,
PromAmount money  NOT NULL ,
CONSTRAINT PK_JobPromissory  PRIMARY KEY CLUSTERED (jobCode,	PromRunDate) ON [PRIMARY] ,
CONSTRAINT FK_JobPromissory_jobs FOREIGN KEY (jobCode) 
  REFERENCES Pay.jobs (jobCode) ON DELETE CASCADE ON UPDATE CASCADE ) ON [PRIMARY]


if not exists (select * from sysobjects where id = object_id(N'Tab_Job') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
    CREATE TABLE Tab_Job(
      Job_Code     char(6) COLLATE Arabic_CI_AS NULL,
      Job_Desc varchar(50) COLLATE Arabic_CI_AS NULL) ON [PRIMARY]



--declare @LinkServerName varchar(500)
--select @LinkServerName=c.LinkServerName from Config c
--update Config set LinkServerName=''


--DECLARE @S SYSNAME=''
--DECLARE @SQL NVARCHAR(500)=''
DECLARE @databasename VARCHAR(300)
--DECLARE @COMPATIBILITY_LEVEL int
SELECT @databasename=db_name() 
--SELECT @COMPATIBILITY_LEVEL=COMPATIBILITY_LEVEL FROM sys.databases WHERE name = 'master'


--DECLARE @TABLE_NAME VARCHAR(90) 
--DECLARE @COLUMN_NAME VARCHAR(90)
--DECLARE @DATA_TYPE VARCHAR(90) 
--DECLARE @IS_NULLABLE VARCHAR(90) 
--DECLARE @qry VARCHAR(max) 
--DECLARE @Length int

--ALTER TABLE Tsh.ClockDmp NOCHECK CONSTRAINT ALL




 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_CLOCKDMP' AND type = 'K')
 ALTER TABLE Tsh.ClockDmp	DROP CONSTRAINT PK_CLOCKDMP


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
GO
DECLARE @S SYSNAME
DECLARE @SQL NVARCHAR(500)

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


IF   EXISTS (select * from Util.Analyze WHERE     (FieldName = N'SUBSTRING(Acc.DocGroups.DocDate,4,2)'))
delete from Util.Analyze where (ID in (9))

DECLARE @TABLE_NAME VARCHAR(90) 
DECLARE @COLUMN_NAME VARCHAR(90)
DECLARE @DATA_TYPE VARCHAR(90) 
DECLARE @IS_NULLABLE VARCHAR(90) 
DECLARE @qry VARCHAR(max) 
DECLARE @Length int


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



IF NOT EXISTS (
    SELECT 1 
    FROM INFORMATION_SCHEMA.COLUMNS 
    WHERE TABLE_SCHEMA = 'Pay' AND TABLE_NAME = 'Pony' AND COLUMN_NAME = 'YearID'
)
BEGIN
    ALTER TABLE [Pay].[Pony] ADD YearID INT NULL;
END



if ( COLUMNPROPERTY( OBJECT_ID('pay.Config'),'DecimalOrMinute','IsRowGuidCol')is null )
 ALTER TABLE pay.Config ADD DecimalOrMinute Tinyint NOT NULL CONSTRAINT DF_Config_DecimalOrMinute DEFAULT (0) 
 
if ( COLUMNPROPERTY( OBJECT_ID('pay.Config'),'NoPrintSalaryIDs','IsRowGuidCol')is null )
 ALTER TABLE pay.Config ADD NoPrintSalaryIDs  varchar (250)


 IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[Pay].[GetRptColumns]') AND name = 'id')
BEGIN
    ALTER TABLE [Pay].[GetRptColumns]
    ADD id INT IDENTITY(1,1) NOT NULL;
END


IF EXISTS (SELECT * FROM sys.key_constraints WHERE name = 'PK_GetRptColumns' AND parent_object_id = OBJECT_ID(N'[Pay].[GetRptColumns]'))
BEGIN
    ALTER TABLE [Pay].[GetRptColumns]
    DROP CONSTRAINT PK_GetRptColumns;
END


IF EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[Pay].[GetRptColumns]') AND name = 'id')
AND NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Pay].[GetRptColumns]') AND is_primary_key = 1)
BEGIN
    ALTER TABLE [Pay].[GetRptColumns]
    ADD CONSTRAINT PK_GetRptColumns PRIMARY KEY CLUSTERED (id)
     ON [PRIMARY];
END



--IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Recipts_MaliYear' AND type = 'F')
--ALTER TABLE Recipts       WITH CHECK ADD CONSTRAINT FK_Recipts_MaliYear 	FOREIGN KEY(YearID) REFERENCES util.MaliYear (YearID)

--IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptItems_MaliYear' AND type = 'F')
--ALTER TABLE ReciptItems   WITH CHECK ADD CONSTRAINT FK_ReciptItems_MaliYear 	FOREIGN KEY(YearID) REFERENCES util.MaliYear (YearID)

--IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptItems_Recipts' AND type = 'F')
--ALTER TABLE [dbo].[ReciptItems]  WITH CHECK ADD  CONSTRAINT FK_ReciptItems_Recipts FOREIGN KEY([ReciptID], [ServerID], [YearID])
--REFERENCES [dbo].[Recipts] ([ReciptID], [ServerID], [YearID]) ON UPDATE CASCADE ON DELETE CASCADE




--IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_CLOCKDMP' AND type = 'K')
--ALTER TABLE Tsh.ClockDmp ADD  CONSTRAINT PK_CLOCKDMP PRIMARY KEY CLUSTERED (KARTNO,CLOCKDATE,CLOCKTIME) 
--ALTER TABLE Tsh.ClockDmp CHECK CONSTRAINT ALL


--IF NOT  EXISTS (select * from sysindexes WHERE     (name = N'IX_Customers_CustomerGrpID_CustomerActive'))
--CREATE NONCLUSTERED INDEX IX_Customers_CustomerGrpID_CustomerActive ON dbo.Customers
--(	CustomerGrpID ASC,	CustomerActive ASC)
--INCLUDE ( 	CustID,	CustName,	Balance,	FirstBalance,	Country,	City,	WebSite,	Region,	Address,	Tel,	Fax,	email,	pobox,	acc_DetailCode,	MaxCredit,
--	ServiceCalcType,	ServicePrice,	ExtServicePrice,	RevenuePercent,	EconomicNumber,	PostalCode,	State,	ModifyDate,	OperatorID,	CustomerNote,	ValuationType,
--	ProjectID,	BudgetID,	InfoWeight,	InfoDate,	GrpActionCustomer,	ContactRate,	acc_CTopicCode,	acc_CTopicCode2,	BankId,	BankName,	AccountNumber,	AccountKind,
--	BankReports,	ManageName,	ManagerSells,	ContactNo,	DiscountNote,	Discount,	DayTime,	ConveyKind,	ArzTypeID,	accStateDefault,	NationalID,	Mobile,	CustomersRow,
--	PersonID1,	EstablishDate,	SellsMethod,	SellsEmporium,	SellsDefaultState,	MasirID,	MaxCreditCurrentForm,	ReagentName,	Tel2,	Tel3,	PersonID3,	UseUnitID,
--	InsertAutoEffectID,	EffectID,	CustomerGrpID2,	PurchasePercent,	TechnicalCode,	acc_CTopicCode3,	CustAccountNumber,	acc_TopicCode,	RegisterNumber,
--	HCTarafGaradadTypeCode,	HCKharidarTypeCode,	CustFirstName,	PerCityCode,	StateCode,	CityCode,	LastUser,	FirstUser,	CustomerState,	HCForoushandeType1Code,
--	Max4WaterCo,	SupervisorAllocation,	CustomerCheckNote,
--	DayOrder)  ON [PRIMARY]


--IF NOT  EXISTS (select * from sysindexes WHERE     (name = N'IX_MakeDoc_ReciptItems1'))
--CREATE NONCLUSTERED INDEX IX_MakeDoc_ReciptItems1 ON dbo.ReciptItems
--(	ReciptID ASC,	ServerID ASC,	YearID ASC)
--INCLUDE ( 	StuffCode,	InputEntity,	OutputEntity,	InputWeight,	OutputWeight,	ControlCode,	TotalInputPrice,	TotalOutputPrice,	AidNumber,
--	AidDate,	ArzAmount,	TotalStandardRate,	UnitCommission)  ON [PRIMARY]


--IF NOT  EXISTS (select * from sysindexes WHERE     (name = N'IX_ReciptItems_StuffCode'))
--CREATE NONCLUSTERED INDEX IX_ReciptItems_StuffCode ON dbo.ReciptItems
--(	StuffCode ASC)
--INCLUDE ( 	ReciptID,	InputEntity,	OutputEntity,	InputWeight,	OutputWeight,	ControlCode,	TotalInputPrice,	TotalOutputPrice,	TotallSellPrice,	AidNumber,
--	AidDate,	ArzAmount,	ServerID,	YearID,	UnitCommission)  ON [PRIMARY]


----------------------------------------------------------------------------------------------------------------
--IF NOT  EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts_AccountBalance'))
--CREATE NONCLUSTERED INDEX IX_Recipts_AccountBalance ON Recipts(	ReciptDate ASC,	ReciptState ASC,	SellsMethod ASC,	SellsEmporium ASC,	YearID ASC) ON [PRIMARY]

--IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts_C'))
--CREATE NONCLUSTERED INDEX IX_Recipts_C ON Recipts(	ReciptDate ASC,	ReciptState ASC,	YearID ASC) ON [PRIMARY]

--IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Forms_AccountBalance'))
--CREATE NONCLUSTERED INDEX IX_Forms_AccountBalance ON Forms(	CustomerID1 ASC,	FormDate ASC,	YearID ASC,	FormState ASC,	SellsEmporium ASC) ON [PRIMARY]

--IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Forms_cashBalance'))
--CREATE NONCLUSTERED INDEX IX_Forms_cashBalance ON Forms(	FormDate ASC,	FormState ASC,	YearID ASC,	SellsMethod ASC,	SellsEmporium ASC) ON [PRIMARY]

--if ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'StoreID2','IsRowGuidCol')is  null )  
-- ALTER TABLE Tozin ADD StoreID2  smallint NOT NULL  DEFAULT (0)  


--IF NOT EXISTS (select * from sysindexes WHERE     (name = N'INDEX_ReciptDate_ReciptState'))
--CREATE NONCLUSTERED INDEX INDEX_ReciptDate_ReciptState ON Recipts(	ReciptDate ASC,	ReciptState ASC)
--INCLUDE ( 	ReciptID,	StoreID,	ReciptType,	StoreID2,	ServerID,	YearID)  ON [PRIMARY]

--IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts_PersonID2'))
--CREATE NONCLUSTERED INDEX IX_Recipts_PersonID2 ON Recipts(	PersonID2 ASC,	ReciptNumber ASC,	ReciptDate ASC,	ReciptType ASC,	ReciptState ASC,	YearID ASC,	PersonID3 ASC)
--INCLUDE ( 	ReciptID,	SellsMethod,	ServerID)  ON [PRIMARY]


--IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_rEC'))
--CREATE NONCLUSTERED INDEX IX_rEC ON Recipts(SecondType ASC,	StoreID ASC,	ReciptNumber ASC,	ReciptDate ASC,	PersonID1 ASC,	ReciptType ASC,	ReciptState ASC
--   ,	SellsEmporium ASC,	YearID ASC,	PersonID3 ASC)
--INCLUDE ( 	ReciptID,	PersonID2,	DocNo,	DocDate,	ReciptNote,	AidNumber,	AidDate,	StoreID2,	TruckNumber,	MachineNo,	MachineName,
--	SellsMethod,	ServerID,	MachineInfo)  ON [PRIMARY]
 
-- IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts4Cardex2'))
--CREATE NONCLUSTERED INDEX IX_Recipts4Cardex2 ON Recipts(	ReciptDate ASC,	ReciptState ASC,	YearID ASC,	PersonID3 ASC)
--INCLUDE ( 	ReciptID,	StoreID,	PersonID1,	PersonID2,	ReciptType,	StoreID2,	ServerID)  ON [PRIMARY]


--IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Forms_FormDate_FormState_YearID'))
--CREATE NONCLUSTERED INDEX IX_Forms_FormDate_FormState_YearID ON Forms(	FormDate ASC,	FormState ASC,	YearID ASC)
--INCLUDE ( 	FormID,	ServerID)  ON [PRIMARY]

--IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Forms_FormType'))
--CREATE NONCLUSTERED INDEX IX_Forms_FormType ON Forms(	FormType ASC)
--INCLUDE ( 	FormID,	FormNumber,	FormDate,	CustomerID1,	CustomerID2,	Amount,	BudgetCode,	ProjectID,	FomNote,	AidInfoNo,	AidInfoDate,	CustomerName2,
--	PayTypes,	RelatedID,	ServerID,	YearID,	SellsMethod,	SellsEmporium,	DefaultDate,	CustomerID3,	ArzAmount,	DefaultDuration)  ON [PRIMARY]

--IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Forms_FormType_Date_State_Year'))
--CREATE NONCLUSTERED INDEX IX_Forms_FormType_Date_State_Year ON Forms(	FormType ASC,	FormDate ASC,	FormState ASC,	YearID ASC)
--INCLUDE ( 	FormID,	ServerID)  ON [PRIMARY]

--IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts_FormType_FormNumber'))
--CREATE NONCLUSTERED INDEX IX_Recipts_FormType_FormNumber ON Forms
--(	FormType ASC,	FormNumber ASC,	FormDate ASC,	CustomerID1 ASC,	CustomerID2 ASC,	FormState ASC,	YearID ASC,	SellsMethod ASC,	SellsEmporium ASC)
--INCLUDE ( 	FormID,	Amount,	BudgetCode,	ProjectID,	TopicCode,	DetailCode,	CTopicCode,	FomNote,	AidInfoNo,	AidInfoDate,	CTopicCode2,	CustomerName2,
--	PayTypes,	TopicTypes,	DocNo,	DocDate,	FirstUser,	LastUser,	ServerID,	DefaultDate,	CustomerID3,	UserRegistrationDoc,	DefaultDuration)  ON [PRIMARY]


--IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Forms_FormType_CustomerID2'))
--CREATE NONCLUSTERED INDEX IX_Forms_FormType_CustomerID2 ON Forms
--(	FormType ASC,	CustomerID2 ASC,	FormNumber ASC,	FormDate ASC,	CustomerID1 ASC,	FormState ASC,	YearID ASC,	SellsMethod ASC,	SellsEmporium ASC)
--INCLUDE ( 	FormID,	Amount,	BudgetCode,	ProjectID,	TopicCode,	DetailCode,	CTopicCode,	FomNote,	AidInfoNo,	AidInfoDate,	CTopicCode2,	CustomerName2,
--	PayTypes,	TopicTypes,	DocNo,	DocDate,	FirstUser,	LastUser,	ServerID,	DefaultDate,	CustomerID3,	UserRegistrationDoc,	DefaultDuration)  ON [PRIMARY]

--if not ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'TozinID','IsRowGuidCol')is  null )  
--CREATE NONCLUSTERED INDEX Recipts_2 ON Recipts
--(	ReciptType ASC,	YearID ASC,	StoreID ASC,	ReciptNumber ASC,	ReciptDate ASC,	ReciptState ASC,	AidNumber ASC)
--INCLUDE ( 	ReciptID,	ServerID,	TozinID)  ON [PRIMARY]

--IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_MakeDoc_StuffCoding1'))
--CREATE NONCLUSTERED INDEX IX_MakeDoc_StuffCoding1 ON StuffCoding
--(	OwnerShipKind ASC)
--INCLUDE ( 	c_StuffCode,	c_StuffName,	acc_DetaiCode,	acc_CTopicCode,	acc_CTopicCode2,	Acc_BidTopicCode,	Commission)  ON [PRIMARY]

--if ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'PrvYearID','IsRowGuidCol')is  null )  
--  ALTER TABLE Tozin ADD PrvYearID int

--if not ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'PersonID2','IsRowGuidCol')is  null )  
--if not ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'ParentReciptItemID','IsRowGuidCol')is  null )  
--IF NOT  EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts_AccountBalanceTozin'))
--CREATE NONCLUSTERED INDEX IX_Recipts_AccountBalanceTozin ON dbo.Tozin
--(	ReciptType ASC,	TozinNumber ASC,	TozinDate ASC,	StuffCode ASC,	PersonID1 ASC,	StoreID ASC,	PersonID2 ASC,	YearID ASC)
--INCLUDE ( 	TozinID,	MachineName,	MachineNo,	MachineWeight,	MachineFullWeight,	TozinNote,	EnterDate,	ExitDate,	FirstUser,	LastUser,	MoistureContent,
--	RisingUseful,	RisingNonUseFul,	IsSystem,	ReciptID,	TozinState,	NumberOfBags,	ServerID,	ParentReciptItemID,	StoreID2,	PrvYearID)  ON [PRIMARY]


--if ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'MachineEntity','IsRowGuidCol')is  null )  
--  ALTER TABLE Tozin ADD MachineEntity Decimal(38,8)  NULL CONSTRAINT DF_Tozin_MachineEntity DEFAULT (0)



--IF NOT  EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts_AccountBalance2'))
--CREATE NONCLUSTERED INDEX IX_Recipts_AccountBalance2 ON dbo.Recipts
--(	StoreID ASC,	ReciptNumber ASC,	ReciptDate ASC,	PersonID1 ASC,	ReciptType ASC,	UseUnitID ASC,	SellsMethod ASC,	SellsEmporium ASC,	MasirID ASC,
--	YearID ASC,	PersonID3 ASC)
--INCLUDE ( 	ReciptID,	PersonID2,	SecondType,	DocNo,	DocDate,	ReciptNote,	ParentReciptID,	ModifyDate,	ReciptState,	AidNumber,	AidDate,	FirstUser,
--	LastUser,	StoreID2,	UseOtherID,	ReciptsRow,	ServerID)  ON [PRIMARY]


--------------------------------------------------------------------------------------

--update FaraSystems.dbo.OperatorItems set AccessKey = REPLACE(AccessKey,'=1073741823','=16383')
--where SystemID = 39



--if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'PaymentCode','IsRowGuidCol')is null )
-- ALTER TABLE Customers ADD PaymentCode BigInt 




-- IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Customers_AccountKind'))
--CREATE NONCLUSTERED INDEX IX_Customers_AccountKind
--ON dbo.Customers (AccountKind)INCLUDE (CustomerGrpID,CustName,MaxCredit,CustFirstName,CustName_L2)



--IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Customers_CustomerGrpID_acc'))
--CREATE NONCLUSTERED INDEX IX_Customers_CustomerGrpID_acc
--ON dbo.Customers (CustomerGrpID)
--INCLUDE (CustName,ModifyDate,CustFirstName,CustName_L2)



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




--update Config set LinkServerName=@LinkServerName
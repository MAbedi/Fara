-- UpdateBankFaraAcc.sql    تاريخ 1404/09/11      

IF NOT EXISTS (
    SELECT 1
    FROM sys.objects
    WHERE object_id = OBJECT_ID(N'AddDefaultIfNotExists')
      AND type = 'P'
)
BEGIN
    EXEC('
    create PROCEDURE AddDefaultIfNotExists
        @SchemaName NVARCHAR(128),
        @TableName NVARCHAR(128),
        @ColumnName NVARCHAR(128),
        @ConstraintName NVARCHAR(128),
        @DefaultValue NVARCHAR(50)
    AS
    BEGIN
        SET NOCOUNT ON;

        IF EXISTS (
            SELECT 1
            FROM sys.columns c
            WHERE c.Name = @ColumnName
              AND c.Object_ID = OBJECT_ID(@SchemaName + ''.'' + @TableName)
        )
        BEGIN
            IF NOT EXISTS (
                SELECT 1
                FROM sys.default_constraints dc
                INNER JOIN sys.columns c
                    ON dc.parent_object_id = c.object_id
                   AND dc.parent_column_id = c.column_id
                WHERE dc.parent_object_id = OBJECT_ID(@SchemaName + ''.'' + @TableName)
                  AND c.name = @ColumnName
            )
            BEGIN
                DECLARE @sql NVARCHAR(MAX);
                SET @sql = ''ALTER TABLE '' + QUOTENAME(@SchemaName) + ''.'' + QUOTENAME(@TableName) +
                           '' ADD CONSTRAINT '' + QUOTENAME(@ConstraintName) +
                           '' DEFAULT ('' + @DefaultValue + '') FOR '' + QUOTENAME(@ColumnName);

                EXEC sp_executesql @sql;
            END
        END
    END
    ')
END

/****** Object:  Table Acc._ReportRows    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc._ReportRows') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Acc._ReportRows(
	repCode tinyint NOT NULL,
	rowID int NOT NULL,
	rowTopic1 nvarchar(80) NULL,
	Calbase1 tinyint NULL,
	link1 nvarchar(10) NULL,
	cType1 tinyint NULL,
	ColNum1 tinyint NULL,
	rowTopic2 nvarchar(80) NULL,
	Calbase2 tinyint NULL,
	link2 nvarchar(10) NULL,
	cType2 tinyint NULL,
	ColNum2 tinyint NULL,
	YearID int NOT NULL,
 CONSTRAINT PK__ReportRows PRIMARY KEY CLUSTERED 
(
	repCode ASC,
	rowID ASC,
	YearID ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Acc._ReportRowsOnDocs    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc._ReportRowsOnDocs') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Acc._ReportRowsOnDocs(
	ID int IDENTITY(1,1) NOT NULL,
	repCode tinyint NULL,
	rowID int NULL,
	ColNum tinyint NULL,
	G_TopicCode int NULL,
	G_DetailCode int NULL,
	G_CTopicCode int NULL,
	YearID int NOT NULL,
 CONSTRAINT PK__ReportRowsOnDocs PRIMARY KEY CLUSTERED 
(
	ID ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Acc.AccTopicLevels    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.AccTopicLevels') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Acc.AccTopicLevels(
	LevelID int NOT NULL,
	LevelCaption_L1 varchar(80) NOT NULL,
	LevelCaption_L2 varchar(80) NULL,
	PrvLevelID int NOT NULL,
	CodeLength tinyint NOT NULL,
	FinancialRelationType tinyint NOT NULL,
	AuditRelationType tinyint NOT NULL,
	EssenceSelectable tinyint NOT NULL,
	AccRelationType tinyint NOT NULL,
	CenterTopicsRelationType tinyint NOT NULL,
	DetailsRelationType tinyint NOT NULL,
	AccLastYearActive tinyint NOT NULL,
	AssignedForm tinyint NOT NULL,
	ReportFileName1 varchar(100) NOT NULL,
	ReportFileName2 varchar(100) NULL,
	ReportFileName3 varchar(100) NULL,
	TopicType tinyint NOT NULL,
	BudgetRelationType tinyint NOT NULL,
	TaxonomyActive tinyint NOT NULL,
	ProjectsRelationType tinyint NOT NULL,
	UseInDocumentsActive tinyint NOT NULL,
	ReactionEssenceType tinyint NOT NULL,
	NoteActive tinyint NOT NULL,
	RecalInterfaceID varchar(120) NULL,
	AidInfoTypeActive tinyint NULL,
	ADDLevelID tinyint NOT NULL,
	EditLevelID tinyint NOT NULL,
	DeleteLevelID tinyint NOT NULL,
	ChangeStateLevelID tinyint NOT NULL,
	PrintLevelID tinyint NOT NULL,
	AccRelatedID tinyint NOT NULL,
	OtherContorolLevleId tinyint NOT NULL,
	EditState2 tinyint NOT NULL,
	EditState3 tinyint NOT NULL,
	AccessPermanent tinyint NOT NULL,
	AccessCertain tinyint NOT NULL,
	DeleteRowLevelID tinyint NULL,
	EditNoteLevelID tinyint NULL,
	ShowNoteLevelID tinyint NULL,
 CONSTRAINT PK_AccTopicLevels PRIMARY KEY CLUSTERED 
(
	LevelID ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Acc.Analyze    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.Analyze') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Acc.Analyze(
	ID int NOT NULL,
	CaptionName nvarchar(50) NOT NULL,
	FieldName varchar(500) NULL,
	TableName varchar(50) NULL,
	TopicName varchar(50) NULL,
	AliasName varchar(50) NULL,
	JoinFieldName varchar(50) NULL,
 CONSTRAINT PK_Analyze PRIMARY KEY CLUSTERED 
(
	ID ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Acc.AttachmentSanama    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.AttachmentSanama') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Acc.AttachmentSanama(
	ID int IDENTITY(1,1) NOT NULL,
	ParentID int NOT NULL,
	Attachment varbinary(max) NULL,
	AttachmentName nvarchar(250) NULL,
	Extension nvarchar(5) NULL,
	Description nvarchar(4000) NULL,
 CONSTRAINT PK_ID PRIMARY KEY CLUSTERED 
(
	ID ASC
)  ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table Acc.AuditTopics    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.AuditTopics') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Acc.AuditTopics(
	AuditCode int NOT NULL,
	AuditName_L1 varchar(150) NOT NULL,
	AuditName_L2 varchar(150) NULL,
	LevelID int NOT NULL,
	MakeDate datetime NOT NULL,
 CONSTRAINT PK_AuditTopic PRIMARY KEY CLUSTERED 
(
	AuditCode ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO

IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.Interfaces') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)  
CREATE TABLE Acc.Interfaces(
	InterfaceID int NOT NULL,
	InterfaceCaption_L1 varchar(50) NULL,
	InterfaceCaption_L2 varchar(50) NULL,
	HasReload tinyint NULL,
	ReloadInterfaceID int NULL,
	HasDoc tinyint NULL,
	AccBedType tinyint NULL,
	AccBesType tinyint NULL,
	Note_L1 varchar(200) NULL,
	Note_L2 varchar(200) NULL,
	ReportFilename varchar(100) NULL,
	CustomerVisible tinyint NULL,
	CustGroups varchar(250) NULL,
	ProjectID int NULL,
	FormFooter_L1 varchar(200) NULL,
	FormFooter_L2 varchar(200) NULL,
	BudgetEffect tinyint NULL,
	BedVisible tinyint NULL,
	BesVisible tinyint NULL,
	WeightActive tinyint NOT NULL,
	amountActive tinyint NOT NULL,
	Acc_RelateShowKind tinyint NOT NULL,
	BedCaption‍ varchar(25) NOT NULL,
	besCaption‍ varchar(25) NOT NULL,
 CONSTRAINT PK_Interfaces PRIMARY KEY CLUSTERED 
(
	InterfaceID ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO


IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.Budgets') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Acc.Budgets(
	BudgetID int NOT NULL,
	InterfaceID int NOT NULL,
	BudgetSerial int NULL,
	BudgetTopicID int NULL,
	BudgetDate char(10) NULL,
	Note_L1 varchar(200) NULL,
	Note_L2 varchar(200) NULL,
	ProjectID int NULL,
	CustomerID int NULL,
	AccCode int NULL,
	DetailCode int NULL,
	CTopic1 int NULL,
	CTopic2 int NULL,
	CompanyCode int NOT NULL  DEFAULT ((0)),
	YearID int NOT NULL,
	Status tinyint NOT NULL DEFAULT ((0)),
	 CONSTRAINT FK_Budgets_Interfaces FOREIGN KEY(InterfaceID)
REFERENCES Acc.Interfaces (InterfaceID)
ON UPDATE CASCADE,
 CONSTRAINT PK_Budgets PRIMARY KEY CLUSTERED 
(
	BudgetID ASC
) ON [PRIMARY]
) ON [PRIMARY]


/****** Object:  Table Acc.BudgetItems    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.BudgetItems') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Acc.BudgetItems(
	BudgetItemID int NOT NULL,
	BudgetID int NOT NULL,
	ItemSerial int NULL,
	BudgetTopicID int NULL,
	ProjectID int NULL,
	Bed money NULL,
	Bes smallint NOT NULL,
	Entity float NULL,
	Weight float NULL,
	ItemNote_L1 varchar(100) NULL,
	ItemNote_L2 varchar(100) NULL,
	CustomerID int NULL,
	AccCode int NULL,
	DetailCode int NULL,
	CTopic1 int NULL,
	CTopic2 int NULL,
	Cashtype tinyint NOT NULL,
	CompanyCode int NOT NULL,
	AidDate varchar(10) NULL,
	AidNum varchar(20) NULL,
	Ctype tinyint NOT NULL,
	CostType tinyint NOT NULL,
	CostCode varchar(60) NULL,
	UnitID int NULL,
	UnitPrice money NULL,
 CONSTRAINT PK_BudgetItems PRIMARY KEY CLUSTERED 
(
	BudgetItemID ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Acc.BudgetRang    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.BudgetRang') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Acc.BudgetRang(
	TopicCode bigint NOT NULL,
	DetailCode int NOT NULL,
	BudgetCode int NOT NULL,
	CompanyCode int NOT NULL,
	Coefficient float NULL,
	CTopicCode int NOT NULL,
 CONSTRAINT PK_BudgetRang PRIMARY KEY CLUSTERED 
(
	TopicCode ASC,
	DetailCode ASC,
	BudgetCode ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO

IF EXISTS (SELECT 1 
           FROM sys.views 
           WHERE name = 'BudgetsInfo' 
             AND schema_id = SCHEMA_ID('Acc'))
BEGIN
    DROP VIEW Acc.BudgetsInfo;
END

IF OBJECT_ID('Acc.BudgetsInfo', 'FN') IS NOT NULL
    DROP FUNCTION Acc.BudgetsInfo;



/****** Object:  Table Acc.Budgets    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.BudgetsInfo') --AND OBJECTPROPERTY(id, N'IsUserTable') = 1
)
CREATE TABLE Acc.BudgetsInfo(
	BudgetID int NOT NULL,
	InterfaceID int NOT NULL,
	BudgetSerial int NULL,
	BudgetTopicID int NULL,
	BudgetDate char(10) NULL,
	Note_L1 varchar(200) NULL,
	Note_L2 varchar(200) NULL,
	ProjectID int NULL,
	CustomerID int NULL,
	AccCode int NULL,
	DetailCode int NULL,
	CTopic1 int NULL,
	CTopic2 int NULL,
	CompanyCode int NOT NULL,
	YearID int NOT NULL,
	Status tinyint NOT NULL,
 CONSTRAINT PK_BudgetsInfo PRIMARY KEY CLUSTERED 
(
	BudgetID ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Acc.BudgetTopicLevels    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.BudgetTopicLevels') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Acc.BudgetTopicLevels(
	LevelID int NOT NULL,
	LevelCaption_L1 varchar(50) NULL,
	LevelCaption_L2 varchar(50) NULL,
	prvLevelID int NULL,
	CodeLength tinyint NULL,
	EssenseSelectable tinyint NULL,
	AccRelationType tinyint NULL,
	TopicType tinyint NULL,
	AssignedForm int NULL,
	ReportFileName varchar(100) NULL,
	NextYearSelectType tinyint NULL,
	GroupOnTopicsVisible tinyint NULL,
	SelectPercentType tinyint NULL,
	HasRelateOnProjects tinyint NULL,
 CONSTRAINT PK_BudgetTopicLevels PRIMARY KEY CLUSTERED 
(
	LevelID ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Acc.BudgetTopicRange    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.BudgetTopicRange') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Acc.BudgetTopicRange(
	TopicCode bigint NOT NULL,
	BudgetTopicID bigint NOT NULL,
 CONSTRAINT PK_BudgetTopicRange PRIMARY KEY CLUSTERED 
(
	TopicCode ASC,
	BudgetTopicID ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Acc.BudgetTopics    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.BudgetTopics') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Acc.BudgetTopics(
	BudgetTopicID int NOT NULL,
	BudgetCaption_L1 varchar(100) NOT NULL,
	BudgetCaption_L2 varchar(100) NULL,
	AccCode int NULL,
	DetailCode int NULL,
	CTopic1 int NULL,
	LevelID int NOT NULL,
	Note_L1 varchar(200) NULL,
	Note_L2 varchar(200) NULL,
	NextYearCalType tinyint NULL,
	Essence tinyint NOT NULL CONSTRAINT DF_BudgetTopics_Essence  DEFAULT ((0)),
	DecExtPerecent int NULL,
	GroupTopic int NULL,
	PortionPerecentReclamation int NULL,
	PortionPerecentExp int NULL,
 CONSTRAINT PK_BudgetTopics PRIMARY KEY CLUSTERED 
(
	BudgetTopicID ASC
) ON [PRIMARY]
) ON [PRIMARY]

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.BudgetsInfo') --AND OBJECTPROPERTY(id, N'IsUserTable') = 1
)
CREATE TABLE Acc.BudgetsInfo(
	BudgetTopicID int NOT NULL,
	BudgetCaption_L1 varchar(100) NOT NULL,
	BudgetCaption_L2 varchar(100) NULL,
	AccCode int NULL,
	DetailCode int NULL,
	CTopic1 int NULL,
	LevelID int NOT NULL,
	Note_L1 varchar(200) NULL,
	Note_L2 varchar(200) NULL,
	NextYearCalType tinyint NULL,
	Essence tinyint NOT NULL,
	DecExtPerecent int NULL,
	GroupTopic int NULL,
	PortionPerecentReclamation int NULL,
	PortionPerecentExp int NULL,
 CONSTRAINT PK_BudgetTopics PRIMARY KEY CLUSTERED 
(
	BudgetTopicID ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Acc.Categories    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.Categories') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Acc.Categories(
	TopicCode bigint NOT NULL,
	MoeenName_L1 varchar(100) NOT NULL,
	MoeenName_L2 varchar(100) NULL,
	LevelID int NOT NULL,
	FinancialID int NOT NULL,
	AuditID int NOT NULL,
	Essence int NULL,
	ReactionForRepEssence int NULL,
	TaxonomyType int NULL,
	TaxonomyTopicCode bigint NULL,
	LastYearTopicCode bigint NULL,
	LastTopicCode bigint NULL,
	AidInfoType int NULL,
	AuditReferenceNo int NULL,
	AuditReferenceTxt varchar(30) NULL,
	RecalInterfaceID varchar(120) NULL,
	KindInsertBudgetCode int NOT NULL,
	BudgetTopicID int NULL,
	ProjectID int NULL,
	makeDate datetime NOT NULL,
	ConstructionPercent  decimal(4, 2) NOT NULL CONSTRAINT DF_Cateries_ConstructionPercent  DEFAULT ((0)) ,
	BudgetPrice money NOT NULL CONSTRAINT DF_Cateries_BudgetPrice  DEFAULT ((0)) ,
	UserRelated varchar(100) NULL,
	Active tinyint NOT NULL CONSTRAINT DF_Cateries_Active  DEFAULT ((1)) ,
 CONSTRAINT PK_Categories PRIMARY KEY CLUSTERED 
(
	TopicCode ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Acc.CategoriesNote    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.CategoriesNote') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Acc.CategoriesNote(
	ID int NOT NULL,
	TopicCode bigint NOT NULL,
	Note_L1 text NOT NULL,
	Note_L2 text NULL,
	NoteDate char(10) NOT NULL,
	AttachFileName varchar(150) NULL,
	MakeDate datetime NOT NULL,
 CONSTRAINT PK_CategoriesNote PRIMARY KEY CLUSTERED 
(
	ID ASC
)  ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table Acc.Companies    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.Companies') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Acc.Companies(
	CompanyCode int NOT NULL,
	CompanyName_L1 varchar(150) NOT NULL,
	CompanyName_L2 varchar(150) NULL,
	LevelID int NOT NULL,
	Comment_L1 varchar(255) NULL,
	Comment_L2 varchar(255) NULL,
	MakeDate datetime NOT NULL,
 CONSTRAINT PK_Companies PRIMARY KEY CLUSTERED 
(
	CompanyCode ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Acc.Config    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.Config') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Acc.Config(
	StartDate char(10) NOT NULL,
	EndDate char(10) NOT NULL,
	AssignedDocForm tinyint NOT NULL,
	Report1OnDocName varchar(150) NULL,
	Report2OnDocName varchar(150) NULL,
	Report3OnDocName varchar(150) NULL,
	CTopicCode2Active tinyint NULL,
	CTopicCode1Active tinyint NULL,
	DetailCodeActive tinyint NULL,
	AuditCodeActive tinyint NULL,
	FinancialCodeActive tinyint NULL,
	AttachFileToDocActive tinyint NULL,
	LastYearActive tinyint NULL,
	AccBankNameOnLastYear varchar(100) NULL,
	DocumentsFooter varchar(200) NULL,
	DocumentsFooter_L2 varchar(200) NULL,
	DocumentsSignature varchar(250) NULL,
	DocumentsSignature_L2 varchar(250) NULL,
	ReportKind tinyint NOT NULL,
	SecondaryDocNoActiveOnPrint tinyint NOT NULL,
	DocDateActiveOnPrint tinyint NOT NULL,
	CountAccLevel tinyint NOT NULL,
	CuontCTopicLevel tinyint NOT NULL,
	CuontCTopic2Level tinyint NOT NULL,
	CuontAuditLevel tinyint NOT NULL,
	CountFinancialLevel tinyint NOT NULL,
	LevelIDOnKol int NOT NULL,
	Language1 varchar(20) NULL,
	Language2 varchar(20) NULL,
	Organization varchar(100) NULL,
	Chief varchar(60) NULL,
	Accountant varchar(60) NULL,
	DateRangeFrom char(10) NULL,
	DateRangeTo char(10) NULL,
	BudgetReportFooter varchar(250) NULL,
	UseKindInCoActive tinyint NOT NULL,
	AccActive tinyint NOT NULL,
	BudgetActive tinyint NOT NULL,
	AuditActive tinyint NOT NULL,
	FinancialActive tinyint NOT NULL,
	PortainActive tinyint NOT NULL,
	SpecialActive tinyint NOT NULL,
	ManegeActive tinyint NOT NULL,
	MiladiDateActive tinyint NOT NULL,
	DefaultCompany int NOT NULL,
	ActiveMultiCompany tinyint NOT NULL,
	KindSearchDoc tinyint NOT NULL,
	AccLevel4RelatedTobudget tinyint NOT NULL,
	AccCodeInBudgetActive bit NOT NULL,
	PrintSelected bit NOT NULL,
	CTopicCode3Active tinyint NULL,
	DocKind tinyint NOT NULL,
	DocEmpty tinyint NOT NULL,
	DoInsertCust tinyint NOT NULL,
	BsellBankNames varchar(100) NULL,
	AccBankNames varchar(100) NULL,
	LastVersion char(20) NULL,
	IsCheckDetail bit NOT NULL,
	StartTopicCode int NOT NULL,
	EndTopicCode int NOT NULL,
	RestDocCode tinyint NOT NULL,
	DecimalACtive bit NOT NULL,
	ActivePartCompany tinyint NOT NULL,
	TopicCodeFrom bigint NOT NULL,
	TopicCodeTo bigint NOT NULL,
	RatesCalculation tinyint NOT NULL,
	CtoipcRelatedKind tinyint NOT NULL,
	CheckAccCodeInInsert tinyint NOT NULL,
	ID int NOT NULL,
	CheckRelation bit NOT NULL,
	Checkprint tinyint NOT NULL,
	Options text NULL,
	AllowDelDocSubSystem tinyint NOT NULL,
	StartLimitID int NOT NULL,
	EndLimitID int NOT NULL,
	ActiveCurrencyInTrialBalance tinyint NOT NULL,
	ActiveExpense tinyint NOT NULL,
	BudgetType varchar(1000) NULL,
	SanamaInfo varchar(4000) NULL,
	EditableDetailRange bit NOT NULL,
	AddStuffcoding tinyint NOT NULL,
	AccBookSortType tinyint NOT NULL,
	ShowAccountInfoInDetailsReport tinyint NOT NULL,
	ChkBalancCTopicCode3 tinyint NOT NULL,
	ChkSelfDocShow tinyint NOT NULL,
	POActive tinyint NOT NULL,
	CTopicCode2IsZero tinyint NOT NULL,
	CTopicCode3IsZero tinyint NOT NULL,
	TopicCaptionActive tinyint NOT NULL,
	RptMD bigint NOT NULL,
	UserIDFilter tinyint NOT NULL,
 CONSTRAINT PK_Config PRIMARY KEY CLUSTERED 
(
	ID ASC
)  ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table Acc.Contacts    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.Contacts') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Acc.Contacts(
	ContactID int IDENTITY(1,1) NOT NULL,
	ContactNo varchar(15) NOT NULL,
	ContactDate char(10) NOT NULL,
	State tinyint NULL,
	ContactTopic varchar(1000) NULL,
	StartDate char(10) NULL,
	EndDate char(10) NULL,
	Price money NULL,
	WorkPlace varchar(1000) NULL,
	DetailCode int NULL,
	CTopicCode int NULL,
	CtopicCode2 int NULL,
	CtopicCode3 int NULL,
	RegistrationNumber varchar(20) NULL,
	YearID int NOT NULL,
	Address varchar(1000) NULL,
 CONSTRAINT PK_Contacts PRIMARY KEY CLUSTERED 
(
	ContactID ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Acc.ContrastAccountSanama    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.ContrastAccountSanama') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Acc.ContrastAccountSanama(
	MasterID int NOT NULL,
	ParentID int NOT NULL,
	DetailCode int NOT NULL,
	TopicCode int NOT NULL,
	DiffType tinyint NOT NULL,
	Value bigint NOT NULL,
	ContrastDate varchar(10) NOT NULL,
	Description nvarchar(4000) NULL,
	Expense bigint NOT NULL,
	CheckNo nvarchar(50) NULL,
	DocNo nvarchar(50) NULL,
	DocDate nvarchar(10) NULL,
	Zinaf nvarchar(4000) NULL,
	YearID int NOT NULL,
	Month tinyint NULL,
	F1 varchar(20) NULL,
	F2 varchar(20) NULL,
	MojoodiTebgheDaftar bigint NOT NULL,
	MojoodiTebgheBank bigint NOT NULL,
 CONSTRAINT PK_MasterID PRIMARY KEY CLUSTERED 
(
	MasterID ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Acc.DetailNotes    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.DetailNotes') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Acc.DetailNotes(
	ID int NOT NULL,
	TopicCode bigint NOT NULL,
	DetailCode int NOT NULL,
	Note text NOT NULL,
	NoteDate char(10) NOT NULL,
	AttachFileName varchar(150) NULL,
	MakeDate datetime NOT NULL,
	CompanyCode int NOT NULL,
 CONSTRAINT PK_DetailNote PRIMARY KEY CLUSTERED 
(
	ID ASC
)  ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table Acc.DGCompaniesRange    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.DGCompaniesRange') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Acc.DGCompaniesRange(
	DGIDCompanies int NOT NULL,
	CompanyCode int NOT NULL,
 CONSTRAINT PK_DGCompaniesRange PRIMARY KEY CLUSTERED 
(
	DGIDCompanies ASC,
	CompanyCode ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Acc.DocGroups    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.DocGroups') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Acc.DocGroups(
	Serial int NOT NULL,
	CompanyCode int NOT NULL,
	SecondaryDocNo int NOT NULL,
	PrimaryDocNo int NOT NULL,
	DocDate char(10) NOT NULL,
	DocTypeCode tinyint NOT NULL,
	Status tinyint NOT NULL,
	DocTopic_L1 varchar(300) NULL,
	DocTopic_L2 varchar(300) NULL,
	UserID int NOT NULL,
	MakeDate datetime NOT NULL,
	AttachFolderName varchar(120) NULL,
	DocNote_L1 varchar(6000) NULL,
	DocNote_L2 varchar(6000) NULL,
	FirstUser varchar(50) NULL,
	SecondUser varchar(50) NULL,
	DocDateMiladi datetime NOT NULL,
	YearID int NOT NULL,
	SourceDataBase varchar(100) NULL,
	ExternalId varchar(100) NULL,
 CONSTRAINT PK_DocGroups PRIMARY KEY CLUSTERED 
(
	Serial ASC,
	YearID ASC,
	CompanyCode ASC
)  ON [PRIMARY],
 CONSTRAINT IX_UniqueDoc UNIQUE NONCLUSTERED 
(
	YearID ASC,
	CompanyCode ASC,
	SecondaryDocNo ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Acc.DocOtherSysRelated    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.DocOtherSysRelated') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Acc.DocOtherSysRelated(
	ID int IDENTITY(1,1) NOT NULL,
	Kind tinyint NOT NULL,
	TableKind tinyint NOT NULL,
	tableID int NOT NULL,
	RelatedNO int NOT NULL,
 CONSTRAINT PK_DocOtherSysRelated PRIMARY KEY CLUSTERED 
(
	ID ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Acc.DocReference    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.DocReference') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Acc.DocReference(
	ReferenceID bigint IDENTITY(1,1) NOT NULL,
	YearID int NOT NULL,
	Serial int NOT NULL,
	CompanyCode int NOT NULL,
	CountPage int NOT NULL,
	Note_L1 varchar(5000) NULL,
	Note_L2 varchar(5000) NULL,
	InsertDateTime datetime NOT NULL,
	AidNumber decimal(20, 4) NULL,
	AidDate char(10) NULL,
	InsertUserID int NOT NULL,
	ReceiverUserID int NOT NULL,
	PermitUserID int NULL,
	ReceiverDateTime datetime NULL,
	ComputerName varchar(50) NULL,
 CONSTRAINT PK_DocReference PRIMARY KEY CLUSTERED 
(
	ReferenceID ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Acc.DocRelated    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.DocRelated') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Acc.DocRelated(
	ItemID int NOT NULL,
	ID int NOT NULL,
	Serial int NOT NULL,
	YearID int NOT NULL,
	RelatedID int NOT NULL,
	CompanyCode int NOT NULL,
	Debit money NOT NULL,
	Credit money NOT NULL,
 CONSTRAINT PK_DocRelated PRIMARY KEY CLUSTERED 
(
	ItemID ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Acc.DocsTransaction    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.DocsTransaction') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Acc.DocsTransaction(
	ID int IDENTITY(1,1) NOT NULL,
	Serial int NOT NULL,
	SecondaryDocNo int NOT NULL,
	DocDate char(10) NOT NULL,
	TransDate char(10) NOT NULL,
	UserName varchar(50) NOT NULL,
	TransType tinyint NOT NULL,
	CompanyCode int NOT NULL,
 CONSTRAINT PK_DocsTransaction PRIMARY KEY CLUSTERED 
(
	ID ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Acc.Documents    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.Documents') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Acc.Documents(
	Serial int NOT NULL,
	TopicCode bigint NOT NULL,
	DetailCode int NULL,
	CTopicCode int NULL,
	CTopicCode2 int NULL,
	Comment_L1 varchar(300) NULL,
	Comment_L2 varchar(300) NULL,
	Row int NOT NULL,
	Debt money NOT NULL,
	Credit money NOT NULL,
	AidDocNo decimal(20, 4) NULL,
	AidDocdate char(10) NULL,
	AidAmount float NULL,
	BudgetTopicID int NULL,
	BudgetID int NULL,
	ReferenceNo int NULL,
	ReferenceTxt varchar(100) NULL,
	ReferenceDate char(10) NULL,
	ProjectID int NULL,
	ReferenceCheck tinyint NULL,
	CompanyCode int NOT NULL,
	AuditDoPrint tinyint NOT NULL,
	ctopiccode3 int NOT NULL,
	ID int IDENTITY(1,1) NOT NULL,
	YearID int NOT NULL,
	RelatedID int NOT NULL,
	DetailCompany int NOT NULL,
	CurrencyType int NOT NULL,
	CashType tinyint NOT NULL,
	SanamaID xml NULL,
	PO varchar(30) NULL,
 CONSTRAINT PK_Documents PRIMARY KEY CLUSTERED 
(
	Serial ASC,
	CompanyCode ASC,
	ID ASC,
	YearID ASC
)  ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table Acc.Expense    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.Expense') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Acc.Expense(
	ExpID int NOT NULL,
	YearId int NOT NULL,
	FormNo int NOT NULL,
	FormDate nvarchar(10) NOT NULL,
	BudgetYear smallint NULL,
	TopicCode int NULL,
	DetailCode int NULL,
	CTopicCode int NULL,
	PayerTopicCode int NULL,
	PayerDetailCode int NULL,
	PayerCTopicCode int NULL,
	Cacther nvarchar(100) NULL,
	State smallint NULL,
	Kind smallint NULL,
	Preference int NULL,
	Comments nvarchar(120) NULL,
	CustDetailId int NULL,
	firstUser nvarchar(50) NULL,
	lastUser nvarchar(50) NULL,
	StateChangeDate char(10) NULL,
	AidDate char(10) NULL,
	AidNumber varchar(15) NULL,
	ChequeDate char(10) NULL,
	ChequeDueDate char(10) NULL,
 CONSTRAINT PK_Expense PRIMARY KEY CLUSTERED 
(
	ExpID ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Acc.ExpenseItems    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.ExpenseItems') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Acc.ExpenseItems(
	ID int IDENTITY(1,1) NOT NULL,
	ExpID int NOT NULL,
	CatcherItem nvarchar(80) NOT NULL,
	[Desc] nvarchar(750) NULL,
	Bed money NULL,
	Bes money NULL,
	ItemDetailCode int NULL,
 CONSTRAINT PK_ExpenseItems PRIMARY KEY CLUSTERED 
(
	ID ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Acc.FinancialTopics    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.FinancialTopics') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Acc.FinancialTopics(
	FinancialCode int NOT NULL,
	FinancialName_L1 varchar(120) NOT NULL,
	FinancialName_L2 varchar(120) NULL,
	LevelID int NOT NULL,
	FinancialType int NOT NULL,
	Essence int NOT NULL,
	MakeDate datetime NOT NULL,
 CONSTRAINT PK_FinancialTopic PRIMARY KEY CLUSTERED 
(
	FinancialCode ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Acc.FormsInfo    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.FormsInfo') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Acc.FormsInfo(
	FormInfoID int NOT NULL,
	InfoID int NOT NULL,
	FormType tinyint NOT NULL,
	InfoName_L1 varchar(150) NOT NULL,
	InfoName_L2 varchar(150) NULL,
	Comment varchar(100) NULL,
	SortID int NOT NULL,
 CONSTRAINT PK_FormsInfo PRIMARY KEY CLUSTERED 
(
	FormInfoID ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Acc.FormTypes    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.FormTypes') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Acc.FormTypes(
	FormType tinyint NOT NULL,
	FormCaption varchar(80) NOT NULL,
 CONSTRAINT PK_FormTypes PRIMARY KEY CLUSTERED 
(
	FormType ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Acc.Interfaces    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  Table Acc.PortionDoc    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.PortionDoc') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)  
CREATE TABLE Acc.PortionDoc(
	DetailCode int NULL,
	FormInfoID int NOT NULL,
	CTopicCode int NULL,
	CTopicCode2 int NULL,
	CTopicCode3 int NOT NULL,
	Comment nchar(10) NULL,
	Cofficient float NOT NULL,
	PortionCount int NOT NULL,
	ID int IDENTITY(1,1) NOT NULL,
	YearID int NOT NULL,
 CONSTRAINT PK_PortionDoc PRIMARY KEY CLUSTERED 
(
	ID ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Acc.PortionRange    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.PortionRange') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
CREATE TABLE Acc.PortionRange(
	FormInfoID int NOT NULL,
	CompanyCode int NOT NULL,
	TopicCode bigint NOT NULL,
	DetailCode int NOT NULL,
	CTopicCode int NOT NULL,
	CTopicCode2 int NOT NULL,
	ID int IDENTITY(1,1) NOT NULL,
	YearID int NOT NULL,
	CTopicCode3 int NOT NULL,
 CONSTRAINT PK_PortionRange PRIMARY KEY CLUSTERED 
(
	ID ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Acc.PortionTable    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.PortionTable') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)   
CREATE TABLE Acc.PortionTable(
	CofficientID int NOT NULL,
	FormInfoID int NOT NULL,
	CTopicCode int NOT NULL,
	Cofficient float NOT NULL,
	PortionCunt int NOT NULL,
	YearID int NOT NULL,
 CONSTRAINT PK_PortionTable PRIMARY KEY CLUSTERED 
(
	CofficientID ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Acc.PortionTableItems    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.PortionTableItems') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)  
CREATE TABLE Acc.PortionTableItems(
	ID int IDENTITY(1,1) NOT NULL,
	CofficientID int NOT NULL,
	CTopicCode2 int NOT NULL,
	CofficientItem float NOT NULL,
 CONSTRAINT PK_PortionTableItems PRIMARY KEY CLUSTERED 
(
	ID ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Acc.PortionTopicCode    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.PortionTopicCode') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)   
CREATE TABLE Acc.PortionTopicCode(
	TopicCode bigint NOT NULL,
	PortionTopicCode bigint NOT NULL,
 CONSTRAINT PK_PortionTopicCode PRIMARY KEY CLUSTERED 
(
	TopicCode ASC,
	PortionTopicCode ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Acc.Projects    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.Projects') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)  
CREATE TABLE Acc.Projects(
	ProjectID int NOT NULL,
	ProjectCaption_L1 varchar(100) NULL,
	ProjectCaption_L2 varchar(100) NULL,
	CTopic1 int NULL,
	CTopic2 int NULL,
	LevelID int NULL,
	Note_L1 varchar(200) NULL,
	Note_L2 varchar(200) NULL,
 CONSTRAINT PK_Projects PRIMARY KEY CLUSTERED 
(
	ProjectID ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Acc.ProjectsRange    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.ProjectsRange') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)  
CREATE TABLE Acc.ProjectsRange(
	ProjectID int NOT NULL,
	BudgetTopicID int NOT NULL,
 CONSTRAINT PK_ProjectsRange PRIMARY KEY CLUSTERED 
(
	ProjectID ASC,
	BudgetTopicID ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Acc.RequestCash    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.RequestCash') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)   
CREATE TABLE Acc.RequestCash(
	RequestID int NOT NULL,
	BudgetID int NOT NULL,
	BudgetItemID int NOT NULL,
	CompanyID int NOT NULL,
	CashType int NOT NULL,
	PayType int NOT NULL,
	Amount money NOT NULL,
	Note_L1 varchar(5000) NULL,
	Note_L2 varchar(5000) NULL,
	FormID int NOT NULL,
	YearID int NOT NULL,
	ServerID int NOT NULL,
 CONSTRAINT PK_RequestCash PRIMARY KEY CLUSTERED 
(
	RequestID ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Acc.TopicRange    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.TopicRange') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)   
CREATE TABLE Acc.TopicRange(
	ID int IDENTITY(1,1) NOT NULL,
	TopicCode bigint NOT NULL,
	DGID int NOT NULL,
	levels tinyint NOT NULL,
 CONSTRAINT PK_NewTopicRange PRIMARY KEY CLUSTERED 
(
	TopicCode ASC,
	DGID ASC,
	levels ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Acc.TopicSanama    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.TopicSanama') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)  
CREATE TABLE Acc.TopicSanama(
	TopicCode bigint NOT NULL,
	FormType int NOT NULL,
	Kind tinyint NOT NULL,
	DefaultValue int NULL,
 CONSTRAINT PK_TopicSanama PRIMARY KEY CLUSTERED 
(
	TopicCode ASC,
	FormType ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Acc.Variance    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.Variance') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)   
CREATE TABLE Acc.Variance(
	VarianceId int IDENTITY(1,1) NOT NULL,
	VarianceCode int NOT NULL,
	VarianceNo int NULL,
	VarianceDate char(10) NULL,
	[Row] int NOT NULL,
	DocumentId int NULL,
	yearID int NOT NULL,
	AccCode1 int NULL,
	AccName1 nvarchar(100) NULL,
	AccCode2 int NULL,
	AccName2 nvarchar(100) NULL,
	AccCode3 int NULL,
	AccName3 nvarchar(100) NULL,
	Debt money NOT NULL,
	Credit money NOT NULL,
	Comment nvarchar(500) NULL,
	AidNo int NULL,
	AidDate char(10) NULL,
 CONSTRAINT PK_Variance PRIMARY KEY CLUSTERED 
(
	VarianceId ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Acc.VarianceDefines    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.VarianceDefines') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)  
CREATE TABLE Acc.VarianceDefines(
	VarianceCode int IDENTITY(1,1) NOT NULL,
	VarianceName nvarchar(100) NOT NULL,
	VarianceNote nvarchar(300) NULL,
 CONSTRAINT PK_VarianceDefines PRIMARY KEY CLUSTERED 
(
	VarianceCode ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Acc.VarianceRelations    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Acc.VarianceRelations') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)  
CREATE TABLE Acc.VarianceRelations(
	VarianceRelationId int IDENTITY(1,1) NOT NULL,
	VarianceCode int NOT NULL,
	TopicCode bigint NOT NULL,
	DetailCode int NOT NULL,
	CTopicCode int NOT NULL,
	CTopicCode2 int NOT NULL,
	CTopicCode3 int NOT NULL,
 CONSTRAINT PK_VarianceRelations PRIMARY KEY CLUSTERED 
(
	VarianceRelationId ASC
)  ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table Agr.Earth    Script Date: 22/10/1403 06:06:15 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


 DECLARE @S SYSNAME
SET @S=''

DECLARE @SQL NVARCHAR(500)
SET @SQL=''
WHILE @S is not NULL
BEGIN                          
	SELECT @S=NAME FROM sysobjects WHERE NAME  like'DF___ReportRo__YearI__%'  and  OBJECT_NAME(parent_obj) ='_ReportRows'
	IF @S<>'' or @S<>NULL
	BEGIN
		SET @SQL='ALTER TABLE Acc._ReportRows DROP CONSTRAINT '+@S
		exec(@SQL)
        SET @S=''
	END
	ELSE 
	SET	@S=NULL
END

SET @S=''


SET @SQL=''
WHILE @S is not NULL
BEGIN                          
	SELECT @S=NAME FROM sysobjects WHERE NAME  like'DF___ReportRo__YearI__%'  and  OBJECT_NAME(parent_obj) ='_ReportRowsOnDocs'
	IF @S<>'' or @S<>NULL
	BEGIN
		SET @SQL='ALTER TABLE Acc._ReportRowsOnDocs DROP CONSTRAINT '+@S
		exec(@SQL)
        SET @S=''
	END
	ELSE 
	SET	@S=NULL
END



IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Documents_Debt')
ALTER TABLE Acc.Documents ADD  CONSTRAINT DF_Documents_Debt  DEFAULT ((0)) FOR Debt

 
 IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF__ReportRows_YearID')
ALTER TABLE Acc._ReportRows ADD  CONSTRAINT DF__ReportRows_YearID DEFAULT ((1403)) FOR YearID


IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF__ReportRowsOnDocs_YearID')
ALTER TABLE Acc._ReportRowsOnDocs ADD  CONSTRAINT DF__ReportRowsOnDocs_YearID  DEFAULT ((1403)) FOR YearID


IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_AccTopicLevels_FinancialRelationType')
ALTER TABLE Acc.AccTopicLevels ADD  CONSTRAINT DF_AccTopicLevels_FinancialRelationType  DEFAULT ((0)) FOR FinancialRelationType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_AccTopicLevels_AuditRelationType')
ALTER TABLE Acc.AccTopicLevels ADD  CONSTRAINT DF_AccTopicLevels_AuditRelationType  DEFAULT ((0)) FOR AuditRelationType

IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_AccTopicLevels_EssenceSelectable')
ALTER TABLE Acc.AccTopicLevels ADD  CONSTRAINT DF_AccTopicLevels_EssenceSelectable  DEFAULT ((0)) FOR EssenceSelectable

IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_AccTopicLevels_AccRelationType')
ALTER TABLE Acc.AccTopicLevels ADD  CONSTRAINT DF_AccTopicLevels_AccRelationType  DEFAULT ((0)) FOR AccRelationType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_AccTopicLevels_CTopicCodeRelationType')
ALTER TABLE Acc.AccTopicLevels ADD  CONSTRAINT DF_AccTopicLevels_CTopicCodeRelationType  DEFAULT ((0)) FOR CenterTopicsRelationType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_AccTopicLevels_DetailcodeRelationType')
ALTER TABLE Acc.AccTopicLevels ADD  CONSTRAINT DF_AccTopicLevels_DetailcodeRelationType  DEFAULT ((0)) FOR DetailsRelationType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_AccTopicLevels_AccLastYearActive')
ALTER TABLE Acc.AccTopicLevels ADD  CONSTRAINT DF_AccTopicLevels_AccLastYearActive  DEFAULT ((0)) FOR AccLastYearActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_AccTopicLevels_AssignedForm')
ALTER TABLE Acc.AccTopicLevels ADD  CONSTRAINT DF_AccTopicLevels_AssignedForm  DEFAULT ((0)) FOR AssignedForm
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_AccTopicLevels_TopicType')
ALTER TABLE Acc.AccTopicLevels ADD  CONSTRAINT DF_AccTopicLevels_TopicType  DEFAULT ((0)) FOR TopicType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_AccTopicLevels_BudgetRelationType')
ALTER TABLE Acc.AccTopicLevels ADD  CONSTRAINT DF_AccTopicLevels_BudgetRelationType  DEFAULT ((0)) FOR BudgetRelationType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_AccTopicLevels_TaxonomyActive')
ALTER TABLE Acc.AccTopicLevels ADD  CONSTRAINT DF_AccTopicLevels_TaxonomyActive  DEFAULT ((0)) FOR TaxonomyActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_AccTopicLevels_ProjectsRelationType')
ALTER TABLE Acc.AccTopicLevels ADD  CONSTRAINT DF_AccTopicLevels_ProjectsRelationType  DEFAULT ((0)) FOR ProjectsRelationType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_AccTopicLevels_UseInDocumentsActive')
ALTER TABLE Acc.AccTopicLevels ADD  CONSTRAINT DF_AccTopicLevels_UseInDocumentsActive  DEFAULT ((1)) FOR UseInDocumentsActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_AccTopicLevels_ReactionEssenceType')
ALTER TABLE Acc.AccTopicLevels ADD  CONSTRAINT DF_AccTopicLevels_ReactionEssenceType  DEFAULT ((0)) FOR ReactionEssenceType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_AccTopicLevels_NoteActive')
ALTER TABLE Acc.AccTopicLevels ADD  CONSTRAINT DF_AccTopicLevels_NoteActive  DEFAULT ((0)) FOR NoteActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_AccTopicLevels_AidInfoType')
ALTER TABLE Acc.AccTopicLevels ADD  CONSTRAINT DF_AccTopicLevels_AidInfoType  DEFAULT ((0)) FOR AidInfoTypeActive



SET @S=''
SET @SQL=''
WHILE @S is not NULL
BEGIN                          
	SELECT @S=NAME FROM sysobjects WHERE NAME  like'DF__AccTopicL%'  and  OBJECT_NAME(parent_obj) ='AccTopicLevels'
	IF @S<>'' or @S<>NULL
	BEGIN
		SET @SQL='ALTER TABLE Acc.AccTopicLevels DROP CONSTRAINT '+@S
		exec(@SQL)
        SET @S=''
	END
	ELSE 
	SET	@S=NULL
END


IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_AccTopicLevels_ADDLevelID')
ALTER TABLE Acc.AccTopicLevels ADD  CONSTRAINT DF_AccTopicLevels_ADDLevelID DEFAULT ((0)) FOR ADDLevelID

IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_AccTopicLevels_EditLevelID')
ALTER TABLE Acc.AccTopicLevels ADD  CONSTRAINT DF_AccTopicLevels_EditLevelID  DEFAULT ((0)) FOR EditLevelID

IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_AccTopicLevels_DeleteLevelID')
ALTER TABLE Acc.AccTopicLevels ADD  CONSTRAINT DF_AccTopicLevels_DeleteLevelID  DEFAULT ((0)) FOR DeleteLevelID

IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_AccTopicLevels_ChangeStateLevelID')
ALTER TABLE Acc.AccTopicLevels ADD  CONSTRAINT DF_AccTopicLevels_ChangeStateLevelID  DEFAULT ((0)) FOR ChangeStateLevelID

IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_AccTopicLevels_PrintLevelID')
ALTER TABLE Acc.AccTopicLevels ADD  CONSTRAINT DF_AccTopicLevels_PrintLevelID  DEFAULT ((0)) FOR PrintLevelID

IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_AccTopicLevels_AccRelatedID')
ALTER TABLE Acc.AccTopicLevels ADD  CONSTRAINT DF_AccTopicLevels_AccRelatedID  DEFAULT ((0)) FOR AccRelatedID

IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_AccTopicLevels_OtherContorolLevleId')
ALTER TABLE Acc.AccTopicLevels ADD  CONSTRAINT DF_AccTopicLevels_OtherContorolLevleId  DEFAULT ((0)) FOR OtherContorolLevleId

IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_AccTopicLevels_EditState2')
ALTER TABLE Acc.AccTopicLevels ADD  CONSTRAINT DF_AccTopicLevels_EditState2  DEFAULT ((20)) FOR EditState2

IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_AccTopicLevels_EditState3')
ALTER TABLE Acc.AccTopicLevels ADD  CONSTRAINT DF_AccTopicLevels_EditState3  DEFAULT ((20)) FOR EditState3

IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_AccTopicLevels_AccessPermanent')
ALTER TABLE Acc.AccTopicLevels ADD  CONSTRAINT DF_AccTopicLevels_AccessPermanent  DEFAULT ((0)) FOR AccessPermanent

IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_AccTopicLevels_AccessCertain')
ALTER TABLE Acc.AccTopicLevels ADD  CONSTRAINT DF_AccTopicLevels_AccessCertain  DEFAULT ((0)) FOR AccessCertain

IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_AccTopicLevels_DeleteRowLevelID')
ALTER TABLE Acc.AccTopicLevels ADD  CONSTRAINT DF_AccTopicLevels_DeleteRowLevelID  DEFAULT ((0)) FOR DeleteRowLevelID

IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_AccTopicLevels_EditNoteLevelID')
ALTER TABLE Acc.AccTopicLevels ADD  CONSTRAINT DF_AccTopicLevels_EditNoteLevelID  DEFAULT ((0)) FOR EditNoteLevelID

IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_AccTopicLevels_ShowNoteLevelID')
ALTER TABLE Acc.AccTopicLevels ADD  CONSTRAINT DF_AccTopicLevels_ShowNoteLevelID  DEFAULT ((0)) FOR ShowNoteLevelID


SET @S=''
SET @SQL=''
WHILE @S is not NULL
BEGIN                          
	SELECT @S=NAME FROM sysobjects WHERE NAME  like'DF__BudgetIte__%'  and  OBJECT_NAME(parent_obj) ='BudgetItems'
	IF @S<>'' or @S<>NULL
	BEGIN
		SET @SQL='ALTER TABLE Acc.BudgetItems DROP CONSTRAINT '+@S
		exec(@SQL)
        SET @S=''
	END
	ELSE 
	SET	@S=NULL
END

IF EXISTS (
    SELECT 1
    FROM sys.columns
    WHERE Name = N'Cashtype'
      AND Object_ID = Object_ID(N'Acc.BudgetItems')
)AND NOT EXISTS (
    SELECT 1
    FROM sys.objects
    WHERE Name = N'DF_BudgetItems_Cashtype'
      AND Type = 'D'
      AND Parent_Object_ID = Object_ID(N'Acc.BudgetItems')
)

BEGIN
    ALTER TABLE Acc.BudgetItems ADD CONSTRAINT DF_BudgetItems_Cashtype DEFAULT (1) FOR Cashtype;
END

--SELECT * FROM sysobjects WHERE --NAME  like'DF__BudgetIte_%'  and 
--OBJECT_NAME(parent_obj) ='BudgetItems'

-- Ctype
IF EXISTS (
    SELECT 1
    FROM sys.columns
    WHERE Name = N'Ctype'
      AND Object_ID = Object_ID(N'Acc.BudgetItems')
)
AND NOT EXISTS (
    SELECT 1
    FROM sys.objects
    WHERE Name = N'DF_BudgetItems_Ctype'
      AND Type = 'D'
      AND Parent_Object_ID = Object_ID(N'Acc.BudgetItems')
)
BEGIN
    ALTER TABLE Acc.BudgetItems
    ADD CONSTRAINT DF_BudgetItems_Ctype DEFAULT (0) FOR Ctype;
END


-- CostType
IF EXISTS (
    SELECT 1
    FROM sys.columns
    WHERE Name = N'CostType'
      AND Object_ID = Object_ID(N'Acc.BudgetItems')
)
AND NOT EXISTS (
    SELECT 1
    FROM sys.objects
    WHERE Name = N'DF_BudgetItems_CostType'
      AND Type = 'D'
      AND Parent_Object_ID = Object_ID(N'Acc.BudgetItems')
)
BEGIN
    ALTER TABLE Acc.BudgetItems
    ADD CONSTRAINT DF_BudgetItems_CostType DEFAULT (0) FOR CostType;
END


-- UnitPrice
IF EXISTS (
    SELECT 1
    FROM sys.columns
    WHERE Name = N'UnitPrice'
      AND Object_ID = Object_ID(N'Acc.BudgetItems')
)
AND NOT EXISTS (
    SELECT 1
    FROM sys.objects
    WHERE Name = N'DF_BudgetItems_UnitPrice'
      AND Type = 'D'
      AND Parent_Object_ID = Object_ID(N'Acc.BudgetItems')
)
BEGIN
    ALTER TABLE Acc.BudgetItems
    ADD CONSTRAINT DF_BudgetItems_UnitPrice DEFAULT (0) FOR UnitPrice;
END


SET @S=''
SET @SQL=''
WHILE @S is not NULL
BEGIN                          
	SELECT @S=NAME FROM sysobjects WHERE NAME  like'DF__BudgetRan__%'  and  OBJECT_NAME(parent_obj) ='BudgetRang'
	IF @S<>'' or @S<>NULL
	BEGIN
		SET @SQL='ALTER TABLE Acc.BudgetRang DROP CONSTRAINT '+@S
		exec(@SQL)
        SET @S=''
	END
	ELSE 
	SET	@S=NULL
END



IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_BudgetRang_CompanyCode')
ALTER TABLE Acc.BudgetRang ADD  CONSTRAINT DF_BudgetRang_CompanyCode  DEFAULT ((1)) FOR CompanyCode

IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_BudgetRang_CTopicCode')
ALTER TABLE Acc.BudgetRang ADD  CONSTRAINT DF_BudgetRang_CTopicCode  DEFAULT ((0)) FOR CTopicCode


SET @S=''
SET @SQL=''
WHILE @S is not NULL
BEGIN                          
	SELECT @S=NAME FROM sysobjects WHERE NAME  like'DF__Budgets__%'  and  OBJECT_NAME(parent_obj) ='Budgets'
	IF @S<>'' or @S<>NULL
	BEGIN
		SET @SQL='ALTER TABLE Acc.Budgets DROP CONSTRAINT '+@S
		exec(@SQL)
        SET @S=''
	END
	ELSE 
	SET	@S=NULL
END

IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Budgets_CompanyCode')
ALTER TABLE Acc.Budgets ADD  CONSTRAINT DF_Budgets_CompanyCode  DEFAULT ((0)) FOR CompanyCode

IF EXISTS (
    SELECT 1
    FROM sys.columns
    WHERE Name = N'Status'
      AND Object_ID = Object_ID(N'Acc.Budgets')
)
AND NOT EXISTS (
    SELECT 1
    FROM sys.objects
    WHERE Name = N'DF_Budgets_Status'
      AND Type = 'D'
      AND Parent_Object_ID = Object_ID(N'Acc.Budgets')
)
BEGIN
    ALTER TABLE Acc.Budgets
    ADD CONSTRAINT DF_Budgets_Status DEFAULT (0) FOR [Status];
END


IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_BudgetTopics_Essence')
ALTER TABLE Acc.BudgetTopics ADD  CONSTRAINT DF_BudgetTopics_Essence  DEFAULT ((0)) FOR Essence

--IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Cateries_KindInsertBudgetCode')
--ALTER TABLE Acc.Cateries ADD  CONSTRAINT DF_Cateries_KindInsertBudgetCode  DEFAULT ((0)) FOR KindInsertBudgetCode

if not ( COLUMNPROPERTY( OBJECT_ID('Acc.Cateries'),'ConstructionPercent','IsRowGuidCol')is null )
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Cateries_ConstructionPercent')
ALTER TABLE Acc.Cateries ADD  CONSTRAINT DF_Cateries_ConstructionPercent  DEFAULT ((0)) FOR ConstructionPercent

if not ( COLUMNPROPERTY( OBJECT_ID('Acc.Cateries'),'BudgetPrice','IsRowGuidCol')is null )
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Cateries_BudgetPrice')
ALTER TABLE Acc.Cateries ADD  CONSTRAINT DF_Cateries_BudgetPrice  DEFAULT ((0)) FOR BudgetPrice

if not ( COLUMNPROPERTY( OBJECT_ID('Acc.Cateries'),'Active','IsRowGuidCol')is null )
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Cateries_Active')
ALTER TABLE Acc.Cateries ADD  CONSTRAINT DF_Cateries_Active  DEFAULT ((1)) FOR Active


SET @S=''
SET @SQL=''
WHILE @S is not NULL
BEGIN                          
	SELECT @S=NAME FROM sys.objects WHERE 	name LIKE 'DF__Config__%' and	lower( SCHEMA_NAME(schema_id))='acc'
	IF @S<>'' or @S<>NULL
	BEGIN
		SET @SQL='ALTER TABLE Acc.Config DROP CONSTRAINT '+@S
		exec(@SQL)
        SET @S=''
	END
	ELSE 
	SET	@S=NULL
END


IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_CuontAuditLevel1')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_CuontAuditLevel1  DEFAULT ((2)) FOR AuditCodeActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_CountFinancialLevel1')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_CountFinancialLevel1  DEFAULT ((3)) FOR FinancialCodeActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_ReportKind')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_ReportKind  DEFAULT ((0)) FOR ReportKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_SecondaryDocNoPrint')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_SecondaryDocNoPrint  DEFAULT ((0)) FOR SecondaryDocNoActiveOnPrint
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_DocDateActiveOnPrint')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_DocDateActiveOnPrint  DEFAULT ((0)) FOR DocDateActiveOnPrint
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_CountAccLevel')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_CountAccLevel  DEFAULT ((3)) FOR CountAccLevel
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_CuontCTopicLevel')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_CuontCTopicLevel  DEFAULT ((1)) FOR CuontCTopicLevel
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_CuontCTopic2Level')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_CuontCTopic2Level  DEFAULT ((1)) FOR CuontCTopic2Level
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_CuontAuditLevel')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_CuontAuditLevel  DEFAULT ((2)) FOR CuontAuditLevel
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_CountFinancialLevel')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_CountFinancialLevel  DEFAULT ((3)) FOR CountFinancialLevel
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_LevelIDOnKol')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_LevelIDOnKol  DEFAULT ((2)) FOR LevelIDOnKol
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_UseKindInCoActive')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_UseKindInCoActive  DEFAULT ((0)) FOR UseKindInCoActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_AccActive')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_AccActive  DEFAULT ((0)) FOR AccActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_AccActive1')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_AccActive1  DEFAULT ((0)) FOR BudgetActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_AccActive1_1')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_AccActive1_1  DEFAULT ((0)) FOR AuditActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_FinancialActive')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_FinancialActive  DEFAULT ((0)) FOR FinancialActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_PortainActive')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_PortainActive  DEFAULT ((0)) FOR PortainActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_AccActive1_2')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_AccActive1_2  DEFAULT ((0)) FOR SpecialActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_Manege')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_Manege  DEFAULT ((0)) FOR ManegeActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_MiladiDateActive')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_MiladiDateActive  DEFAULT ((0)) FOR MiladiDateActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_DefaultCompany')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_DefaultCompany  DEFAULT ((0)) FOR DefaultCompany
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_ActiveMultiCompany')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_ActiveMultiCompany  DEFAULT ((0)) FOR ActiveMultiCompany
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_KindSearchDoc')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_KindSearchDoc  DEFAULT ((0)) FOR KindSearchDoc
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_AccLevel4RelatedTobudget')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_AccLevel4RelatedTobudget  DEFAULT ((0)) FOR AccLevel4RelatedTobudget
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_AccCodeInBudgetActive')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_AccCodeInBudgetActive  DEFAULT ((1)) FOR AccCodeInBudgetActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_PrintSelected')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_PrintSelected  DEFAULT ((0)) FOR PrintSelected
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_DocKind')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_DocKind  DEFAULT ((0)) FOR DocKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_DocEmpty')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_DocEmpty  DEFAULT ((1)) FOR DocEmpty
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_DoInsertCust')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_DoInsertCust  DEFAULT ((0)) FOR DoInsertCust
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_IsCheckDetail')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_IsCheckDetail  DEFAULT ((0)) FOR IsCheckDetail
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_StartTopicCode')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_StartTopicCode  DEFAULT ((0)) FOR StartTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_EndTopicCode')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_EndTopicCode  DEFAULT ((0)) FOR EndTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_RestDocCode')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_RestDocCode  DEFAULT ((1)) FOR RestDocCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_DecimalACtive')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_DecimalACtive  DEFAULT ((0)) FOR DecimalACtive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_ActivePartCompany')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_ActivePartCompany  DEFAULT ((1)) FOR ActivePartCompany
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_TopicCodeFrom')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_TopicCodeFrom  DEFAULT ((0)) FOR TopicCodeFrom
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_TopicCodeTo')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_TopicCodeTo  DEFAULT ((999999999)) FOR TopicCodeTo
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_RatesCalculation')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_RatesCalculation  DEFAULT ((0)) FOR RatesCalculation
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_CtoipcRelatedKind')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_CtoipcRelatedKind  DEFAULT ((0)) FOR CtoipcRelatedKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_CheckAccCodeInInsert')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_CheckAccCodeInInsert  DEFAULT ((1)) FOR CheckAccCodeInInsert
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_ID')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_ID  DEFAULT ((1)) FOR ID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_CheckRelation')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_CheckRelation  DEFAULT ((0)) FOR CheckRelation
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_Checkprint')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_Checkprint  DEFAULT ((0)) FOR Checkprint
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_AllowDelDocSubSystem')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_AllowDelDocSubSystem  DEFAULT ((1)) FOR AllowDelDocSubSystem
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_StartLimitID')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_StartLimitID  DEFAULT ((1)) FOR StartLimitID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_EndLimitID')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_EndLimitID  DEFAULT ((2147483647)) FOR EndLimitID

exec AddDefaultIfNotExists 'Acc','Config','ActiveCurrencyInTrialBalance','DF_Config_ActiveCurrencyInTrialBalance','0'
    
--IF EXISTS (    SELECT 1     FROM sys.columns     WHERE Name = N'ActiveCurrencyInTrialBalance'      AND Object_ID = Object_ID(N'Acc.Config'))
--IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_ActiveCurrencyInTrialBalance')
--ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_ActiveCurrencyInTrialBalance  DEFAULT ((0)) FOR ActiveCurrencyInTrialBalance

IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_ActiveExpense')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_ActiveExpense  DEFAULT ((0)) FOR ActiveExpense
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_EditableDetailRange')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_EditableDetailRange  DEFAULT ((1)) FOR EditableDetailRange

--IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_AddStuffcoding')
--ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_AddStuffcoding  DEFAULT ((0)) FOR AddStuffcoding

IF EXISTS (
    SELECT 1
    FROM sys.columns
    WHERE Name = N'AccBookSortType'
      AND Object_ID = Object_ID(N'Acc.Config')
)
AND NOT EXISTS (
    SELECT 1
    FROM sys.objects
    WHERE Name = N'DF_Config_AccBookSortType'
      AND Type = 'D'
      AND Parent_Object_ID = Object_ID(N'Acc.Config')
)
BEGIN
    ALTER TABLE Acc.Config
    ADD CONSTRAINT DF_Config_AccBookSortType DEFAULT (0) FOR AccBookSortType;
END


IF EXISTS (SELECT 1 FROM sys.columns WHERE Name = N'AccBookSortType'  AND Object_ID = Object_ID(N'Acc.Config'))
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_ShowAccountInfoInDetailsReport')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_ShowAccountInfoInDetailsReport  DEFAULT ((0)) FOR ShowAccountInfoInDetailsReport
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_ChkBalancCTopicCode3')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_ChkBalancCTopicCode3  DEFAULT ((0)) FOR ChkBalancCTopicCode3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_ChkSelfDocShow')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_ChkSelfDocShow  DEFAULT ((0)) FOR ChkSelfDocShow
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_POActive')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_POActive  DEFAULT ((0)) FOR POActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_CTopicCode2IsZero')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_CTopicCode2IsZero  DEFAULT ((1)) FOR CTopicCode2IsZero
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_CTopicCode3IsZero')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_CTopicCode3IsZero  DEFAULT ((1)) FOR CTopicCode3IsZero
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_TopicCaptionActive')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_TopicCaptionActive  DEFAULT ((0)) FOR TopicCaptionActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_RptMD')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_RptMD  DEFAULT ((0)) FOR RptMD
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Config_UserIDFilter')
ALTER TABLE Acc.Config ADD  CONSTRAINT DF_Config_UserIDFilter  DEFAULT ((0)) FOR UserIDFilter
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Contacts_State')
ALTER TABLE Acc.Contacts ADD  CONSTRAINT DF_Contacts_State  DEFAULT ((0)) FOR State


SET @S=''
SET @SQL=''
WHILE @S is not NULL
BEGIN                          
	SELECT @S=NAME FROM sys.objects WHERE 	name LIKE 'DF__Contacts__%' and	lower( SCHEMA_NAME(schema_id))='acc'
	IF @S<>'' or @S<>NULL
	BEGIN
		SET @SQL='ALTER TABLE Acc.Contacts DROP CONSTRAINT '+@S
		exec(@SQL)
        SET @S=''
	END
	ELSE 
	SET	@S=NULL
END


IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Contacts_YearID')
ALTER TABLE Acc.Contacts ADD  CONSTRAINT DF_Contacts_YearID  DEFAULT ((0)) FOR YearID

SET @S=''
SET @SQL=''
WHILE @S is not NULL
BEGIN                          
	SELECT @S=NAME FROM sys.objects WHERE 	name LIKE 'DF__ContrastA__%' and	lower( SCHEMA_NAME(schema_id))='acc'
	IF @S<>'' or @S<>NULL
	BEGIN
		SET @SQL='ALTER TABLE Acc.ContrastAccountSanama DROP CONSTRAINT '+@S
		exec(@SQL)
        SET @S=''
	END
	ELSE 
	SET	@S=NULL
END




SET @S=''
SET @SQL=''
WHILE @S is not NULL
BEGIN                          
	SELECT @S=NAME FROM sys.objects WHERE 	name LIKE 'DF__ContrastA__%' and	lower( SCHEMA_NAME(schema_id))='acc'
	IF @S<>'' or @S<>NULL
	BEGIN
		SET @SQL='ALTER TABLE Acc.ContrastAccountSanama DROP CONSTRAINT '+@S
		exec(@SQL)
        SET @S=''
	END
	ELSE 
	SET	@S=NULL
END


IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ContrastAccountSanama_ParentID')
ALTER TABLE Acc.ContrastAccountSanama ADD  CONSTRAINT DF_ContrastAccountSanama_ParentID  DEFAULT ((0)) FOR ParentID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ContrastAccountSanama_DetailCode')
ALTER TABLE Acc.ContrastAccountSanama ADD  CONSTRAINT DF_ContrastAccountSanama_DetailCode  DEFAULT ((0)) FOR DetailCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ContrastAccountSanama_TopicCode')
ALTER TABLE Acc.ContrastAccountSanama ADD  CONSTRAINT DF_ContrastAccountSanama_TopicCode  DEFAULT ((0)) FOR TopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ContrastAccountSanama_DiffType')
ALTER TABLE Acc.ContrastAccountSanama ADD  CONSTRAINT DF_ContrastAccountSanama_DiffType  DEFAULT ((0)) FOR DiffType
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ContrastAccountSanama_Value')
ALTER TABLE Acc.ContrastAccountSanama ADD  CONSTRAINT DF_ContrastAccountSanama_Value  DEFAULT ((0)) FOR [Value]
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ContrastAccountSanama_Expense')
ALTER TABLE Acc.ContrastAccountSanama ADD  CONSTRAINT DF_ContrastAccountSanama_Expense  DEFAULT ((0)) FOR Expense
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ContrastAccountSanama_MojoodiTebgheDaftar')
ALTER TABLE Acc.ContrastAccountSanama ADD  CONSTRAINT DF_ContrastAccountSanama_MojoodiTebgheDaftar  DEFAULT ((0)) FOR MojoodiTebgheDaftar
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_ContrastAccountSanama_MojoodiTebgheBank')
ALTER TABLE Acc.ContrastAccountSanama ADD  CONSTRAINT DF_ContrastAccountSanama_MojoodiTebgheBank  DEFAULT ((0)) FOR MojoodiTebgheBank
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_DetailNotes_CompanyCode')
ALTER TABLE Acc.DetailNotes ADD  CONSTRAINT DF_DetailNotes_CompanyCode  DEFAULT ((0)) FOR CompanyCode



SET @S=''
SET @SQL=''
WHILE @S is not NULL
BEGIN                          
	SELECT @S=NAME FROM sys.objects WHERE 	name LIKE 'DF__DocGroups__%' and	lower( SCHEMA_NAME(schema_id))='acc'
	IF @S<>'' or @S<>NULL
	BEGIN
		SET @SQL='ALTER TABLE Acc.DocGroups DROP CONSTRAINT '+@S
		exec(@SQL)
        SET @S=''
	END
	ELSE 
	SET	@S=NULL
END


IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_DocGroups_CompanyCode')
ALTER TABLE Acc.DocGroups ADD  CONSTRAINT DF_DocGroups_CompanyCode  DEFAULT ((0)) FOR CompanyCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_DocGroups_PrimaryDocNo')
ALTER TABLE Acc.DocGroups ADD  CONSTRAINT DF_DocGroups_PrimaryDocNo  DEFAULT ((0)) FOR PrimaryDocNo
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_DocGroups_Status')
ALTER TABLE Acc.DocGroups ADD  CONSTRAINT DF_DocGroups_Status  DEFAULT ((0)) FOR [Status]

IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_DocGroups_DocDateMiladi')
ALTER TABLE Acc.DocGroups ADD  CONSTRAINT DF_DocGroups_DocDateMiladi  DEFAULT ((0)) FOR DocDateMiladi
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_DocGroups_YearID')
ALTER TABLE Acc.DocGroups ADD  CONSTRAINT DF_DocGroups_YearID  DEFAULT ((0)) FOR YearID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_DocOtherSysRelated_Kind')
ALTER TABLE Acc.DocOtherSysRelated ADD  CONSTRAINT DF_DocOtherSysRelated_Kind  DEFAULT ((0)) FOR Kind


SET @S=''
SET @SQL=''
WHILE @S is not NULL
BEGIN                          
	SELECT @S=NAME FROM sys.objects WHERE 	name LIKE 'DF__DocsTrans__%' and	lower( SCHEMA_NAME(schema_id))='acc'
	IF @S<>'' or @S<>NULL
	BEGIN
		SET @SQL='ALTER TABLE Acc.DocsTransaction DROP CONSTRAINT '+@S
		exec(@SQL)
        SET @S=''
	END
	ELSE 
	SET	@S=NULL
END

IF  EXISTS (SELECT 1 from sysobjects where name = 'DF__DocsTrans__Compa__549EAE15')  
ALTER TABLE Acc.DocsTransaction drop  CONSTRAINT DF__DocsTrans__Compa__549EAE15  
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_DocsTransaction_CompanyCode')
ALTER TABLE Acc.DocsTransaction ADD  CONSTRAINT DF_DocsTransaction_CompanyCode  DEFAULT ((1)) FOR CompanyCode



SET @S=''
SET @SQL=''
WHILE @S is not NULL
BEGIN                          
	SELECT @S=NAME FROM sys.objects WHERE 	name LIKE 'DF__Documents__%' and	lower( SCHEMA_NAME(schema_id))='acc'
	IF @S<>'' or @S<>NULL
	BEGIN
		SET @SQL='ALTER TABLE Acc.Documents DROP CONSTRAINT '+@S
		exec(@SQL)
        SET @S=''
	END
	ELSE 
	SET	@S=NULL
END

IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Documents_Serial')
ALTER TABLE Acc.Documents ADD  CONSTRAINT DF_Documents_Serial  DEFAULT ((0)) FOR Serial
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Documents_TopicCode')
ALTER TABLE Acc.Documents ADD  CONSTRAINT DF_Documents_TopicCode  DEFAULT ((0)) FOR TopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Documents_DetailCode')
ALTER TABLE Acc.Documents ADD  CONSTRAINT DF_Documents_DetailCode  DEFAULT ((0)) FOR DetailCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Documents_CTopicCode')
ALTER TABLE Acc.Documents ADD  CONSTRAINT DF_Documents_CTopicCode  DEFAULT ((0)) FOR CTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Documents_CTopicCode2')
ALTER TABLE Acc.Documents ADD  CONSTRAINT DF_Documents_CTopicCode2  DEFAULT ((0)) FOR CTopicCode2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Documents_Credit')
ALTER TABLE Acc.Documents ADD  CONSTRAINT DF_Documents_Credit  DEFAULT ((0)) FOR Credit
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Documents_AidDocNo')
ALTER TABLE Acc.Documents ADD  CONSTRAINT DF_Documents_AidDocNo  DEFAULT ((0)) FOR AidDocNo
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Documents_AidAmount')
ALTER TABLE Acc.Documents ADD  CONSTRAINT DF_Documents_AidAmount  DEFAULT ((0)) FOR AidAmount
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Documents_BudgetTopicID')
ALTER TABLE Acc.Documents ADD  CONSTRAINT DF_Documents_BudgetTopicID  DEFAULT ((0)) FOR BudgetTopicID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Documents_BudgetID')
ALTER TABLE Acc.Documents ADD  CONSTRAINT DF_Documents_BudgetID  DEFAULT ((0)) FOR BudgetID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Documents_ReferenceNo')
ALTER TABLE Acc.Documents ADD  CONSTRAINT DF_Documents_ReferenceNo  DEFAULT ((0)) FOR ReferenceNo
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Documents_ProjectID')
ALTER TABLE Acc.Documents ADD  CONSTRAINT DF_Documents_ProjectID  DEFAULT ((0)) FOR ProjectID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Documents_ReferenceIsOk')
ALTER TABLE Acc.Documents ADD  CONSTRAINT DF_Documents_ReferenceIsOk  DEFAULT ((0)) FOR ReferenceCheck
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Documents_CompanyCode')
ALTER TABLE Acc.Documents ADD  CONSTRAINT DF_Documents_CompanyCode  DEFAULT ((1)) FOR CompanyCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Documents_AuditDoPrint')
ALTER TABLE Acc.Documents ADD  CONSTRAINT DF_Documents_AuditDoPrint  DEFAULT ((0)) FOR AuditDoPrint
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Documents_ctopiccode3')
ALTER TABLE Acc.Documents ADD  CONSTRAINT DF_Documents_ctopiccode3  DEFAULT ((0)) FOR ctopiccode3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Documents_YearID')
ALTER TABLE Acc.Documents ADD  CONSTRAINT DF_Documents_YearID  DEFAULT ((0)) FOR YearID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Documents_RelatedID')
ALTER TABLE Acc.Documents ADD  CONSTRAINT DF_Documents_RelatedID  DEFAULT ((0)) FOR RelatedID
--IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Documents_DetailCompany')
--ALTER TABLE Acc.Documents ADD  CONSTRAINT DF_Documents_DetailCompany  DEFAULT ((0)) FOR DetailCompany
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Documents_CurrencyType')
ALTER TABLE Acc.Documents ADD  CONSTRAINT DF_Documents_CurrencyType  DEFAULT ((0)) FOR CurrencyType
IF EXISTS (
    SELECT 1
    FROM sys.columns
    WHERE Name = N'CashType'
      AND Object_ID = Object_ID(N'Acc.Config')
)

IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Documents_CashType')
ALTER TABLE Acc.Documents ADD  CONSTRAINT DF_Documents_CashType  DEFAULT ((1)) FOR CashType



SET @S=''
SET @SQL=''
WHILE @S is not NULL
BEGIN                          
	SELECT @S=NAME FROM sys.objects WHERE 	name LIKE 'DF__FormsInfo__%' and	lower( SCHEMA_NAME(schema_id))='acc'
	IF @S<>'' or @S<>NULL
	BEGIN
		SET @SQL='ALTER TABLE Acc.FormsInfo DROP CONSTRAINT '+@S
		exec(@SQL)
        SET @S=''
	END
	ELSE 
	SET	@S=NULL
END

IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_FormsInfo_SortID')  --DF__FormsInfo__SortI__40657506
ALTER TABLE Acc.FormsInfo ADD  CONSTRAINT DF_FormsInfo_SortID  DEFAULT ((0)) FOR SortID -- DF__FormsInfo__SortI__40657506


SET @S=''
SET @SQL=''
WHILE @S is not NULL
BEGIN                          
	SELECT @S=NAME FROM sys.objects WHERE 	name LIKE 'DF__Interface__%' and	lower( SCHEMA_NAME(schema_id))='acc'
	IF @S<>'' or @S<>NULL
	BEGIN
		SET @SQL='ALTER TABLE Acc.Interfaces DROP CONSTRAINT '+@S
		exec(@SQL)
        SET @S=''
	END
	ELSE 
	SET	@S=NULL
END

IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Interfaces_WeightActive')
ALTER TABLE Acc.Interfaces ADD  CONSTRAINT DF_Interfaces_WeightActive  DEFAULT ((0)) FOR WeightActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Interfaces_amountActive')
ALTER TABLE Acc.Interfaces ADD  CONSTRAINT DF_Interfaces_amountActive  DEFAULT ((0)) FOR amountActive
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Interfaces_Acc_RelateShowKind')
ALTER TABLE Acc.Interfaces ADD  CONSTRAINT DF_Interfaces_Acc_RelateShowKind  DEFAULT ((0)) FOR Acc_RelateShowKind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Interfaces_BedCaption‍')
ALTER TABLE Acc.Interfaces ADD  CONSTRAINT DF_Interfaces_BedCaption‍  DEFAULT ('بدهكار') FOR BedCaption‍
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Interfaces_besCaption‍')
ALTER TABLE Acc.Interfaces ADD  CONSTRAINT DF_Interfaces_besCaption‍  DEFAULT ('بستانكار') FOR besCaption‍


IF EXISTS (SELECT 1 from sysobjects where name = 'DF__PortionDo__YearI__0A3BA4B7')  
ALTER TABLE Acc.PortionDoc drop  CONSTRAINT DF__PortionDo__YearI__0A3BA4B7  

SET @S=''
SET @SQL=''
WHILE @S is not NULL
BEGIN                          
	SELECT @S=NAME FROM sys.objects WHERE 	name LIKE 'DF__PortionDo__%' and	lower( SCHEMA_NAME(schema_id))='acc'
	IF @S<>'' or @S<>NULL
	BEGIN
		SET @SQL='ALTER TABLE Acc.PortionDoc DROP CONSTRAINT '+@S
		exec(@SQL)
        SET @S=''
	END
	ELSE 
	SET	@S=NULL
END


IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_PortionDocCode_DetailCode')
ALTER TABLE Acc.PortionDoc ADD  CONSTRAINT DF_PortionDocCode_DetailCode  DEFAULT ((0)) FOR DetailCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_PortionDocCode_CTopicCode')
ALTER TABLE Acc.PortionDoc ADD  CONSTRAINT DF_PortionDocCode_CTopicCode  DEFAULT ((0)) FOR CTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_PortionDocCode_CTopicCode2')
ALTER TABLE Acc.PortionDoc ADD  CONSTRAINT DF_PortionDocCode_CTopicCode2  DEFAULT ((0)) FOR CTopicCode2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Table_1_ctopiccode3')
ALTER TABLE Acc.PortionDoc ADD  CONSTRAINT DF_Table_1_ctopiccode3  DEFAULT ((0)) FOR CTopicCode3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Table_1_CofficientItem')
ALTER TABLE Acc.PortionDoc ADD  CONSTRAINT DF_Table_1_CofficientItem  DEFAULT ((0)) FOR Cofficient
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_PortionDoc_PortionCunt')
ALTER TABLE Acc.PortionDoc ADD  CONSTRAINT DF_PortionDoc_PortionCunt  DEFAULT ((0)) FOR PortionCount
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_PortionDoc_YearID')
ALTER TABLE Acc.PortionDoc ADD  CONSTRAINT DF_PortionDoc_YearID  DEFAULT ((0)) FOR YearID


SET @S=''
SET @SQL=''
WHILE @S is not NULL
BEGIN                          
	SELECT @S=NAME FROM sys.objects WHERE 	name LIKE 'DF__PortionRa__%' and	lower( SCHEMA_NAME(schema_id))='acc'
	IF @S<>'' or @S<>NULL
	BEGIN
		SET @SQL='ALTER TABLE Acc.PortionRange DROP CONSTRAINT '+@S
		exec(@SQL)
        SET @S=''
	END
	ELSE 
	SET	@S=NULL
END

IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_PortionRange_CompanyCode')
ALTER TABLE Acc.PortionRange ADD  CONSTRAINT DF_PortionRange_CompanyCode  DEFAULT ((1)) FOR CompanyCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_PortionRange_TopicCode')
ALTER TABLE Acc.PortionRange ADD  CONSTRAINT DF_PortionRange_TopicCode  DEFAULT ((0)) FOR TopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_PortionRange_DetailCode')
ALTER TABLE Acc.PortionRange ADD  CONSTRAINT DF_PortionRange_DetailCode  DEFAULT ((0)) FOR DetailCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_PortionRange_CTopicCode')
ALTER TABLE Acc.PortionRange ADD  CONSTRAINT DF_PortionRange_CTopicCode  DEFAULT ((0)) FOR CTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_PortionRange_CTopicCode2')
ALTER TABLE Acc.PortionRange ADD  CONSTRAINT DF_PortionRange_CTopicCode2  DEFAULT ((0)) FOR CTopicCode2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_PortionRangeYearID')
ALTER TABLE Acc.PortionRange ADD  CONSTRAINT DF_PortionRangeYearID  DEFAULT ((0)) FOR YearID
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_PortionRange_CTopicCode3')
ALTER TABLE Acc.PortionRange ADD  CONSTRAINT DF_PortionRange_CTopicCode3  DEFAULT ((0)) FOR CTopicCode3


SET @S=''
SET @SQL=''
WHILE @S is not NULL
BEGIN                          
	SELECT @S=NAME FROM sys.objects WHERE 	name LIKE 'DF__PortionTa__%' and	lower( SCHEMA_NAME(schema_id))='acc'
	IF @S<>'' or @S<>NULL
	BEGIN
		SET @SQL='ALTER TABLE Acc.PortionTable DROP CONSTRAINT '+@S
		exec(@SQL)
        SET @S=''
	END
	ELSE 
	SET	@S=NULL
END


IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_PortionTable_Cofficient')
ALTER TABLE Acc.PortionTable ADD  CONSTRAINT DF_PortionTable_Cofficient  DEFAULT ((0)) FOR Cofficient
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_PortionTable_PortionCunt')
ALTER TABLE Acc.PortionTable ADD  CONSTRAINT DF_PortionTable_PortionCunt  DEFAULT ((0)) FOR PortionCunt
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_PortionTable_YearID')
ALTER TABLE Acc.PortionTable ADD  CONSTRAINT DF_PortionTable_YearID  DEFAULT ((0)) FOR YearID

IF EXISTS (SELECT 1 from sysobjects where name = 'DF_PortionTableItems_Cofficient')  
ALTER TABLE Acc.PortionTableItems drop  CONSTRAINT DF_PortionTableItems_Cofficient  
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_PortionTableItems_CofficientItem')
ALTER TABLE Acc.PortionTableItems ADD  CONSTRAINT DF_PortionTableItems_CofficientItem  DEFAULT ((0)) FOR CofficientItem


SET @S=''
SET @SQL=''
WHILE @S is not NULL
BEGIN                          
	SELECT @S=NAME FROM sys.objects WHERE 	name LIKE 'DF__RequestCa__%' and	lower( SCHEMA_NAME(schema_id))='acc'
	IF @S<>'' or @S<>NULL
	BEGIN
		SET @SQL='ALTER TABLE Acc.RequestCash DROP CONSTRAINT '+@S
		exec(@SQL)
        SET @S=''
	END
	ELSE 
	SET	@S=NULL
END


IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_RequestCash_PayType')
ALTER TABLE Acc.RequestCash ADD  CONSTRAINT DF_RequestCash_PayType  DEFAULT ((1)) FOR PayType


IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_TopicRange_level')
ALTER TABLE Acc.TopicRange ADD  CONSTRAINT DF_TopicRange_level  DEFAULT ((0)) FOR levels


SET @S=''
SET @SQL=''
WHILE @S is not NULL
BEGIN                          
	SELECT @S=NAME FROM sys.objects WHERE 	name LIKE 'DF__TopicSanam__%' and	lower( SCHEMA_NAME(schema_id))='acc'
	IF @S<>'' or @S<>NULL
	BEGIN
		SET @SQL='ALTER TABLE Acc.TopicSanama DROP CONSTRAINT '+@S
		exec(@SQL)
        SET @S=''
	END
	ELSE 
	SET	@S=NULL
END


IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_TopicSanama_Kind')
ALTER TABLE Acc.TopicSanama ADD  CONSTRAINT DF_TopicSanama_Kind  DEFAULT ((0)) FOR Kind
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Variance_AccCode1')
ALTER TABLE Acc.Variance ADD  CONSTRAINT DF_Variance_AccCode1  DEFAULT ((0)) FOR AccCode1
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Variance_AccCode2')
ALTER TABLE Acc.Variance ADD  CONSTRAINT DF_Variance_AccCode2  DEFAULT ((0)) FOR AccCode2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Variance_AccCode3')
ALTER TABLE Acc.Variance ADD  CONSTRAINT DF_Variance_AccCode3  DEFAULT ((0)) FOR AccCode3
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Variance_Debt')
ALTER TABLE Acc.Variance ADD  CONSTRAINT DF_Variance_Debt  DEFAULT ((0)) FOR Debt
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_Variance_Credit')
ALTER TABLE Acc.Variance ADD  CONSTRAINT DF_Variance_Credit  DEFAULT ((0)) FOR Credit
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_VarianceRelations_TopicCode')
ALTER TABLE Acc.VarianceRelations ADD  CONSTRAINT DF_VarianceRelations_TopicCode  DEFAULT ((0)) FOR TopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_VarianceRelations_detailcode')
ALTER TABLE Acc.VarianceRelations ADD  CONSTRAINT DF_VarianceRelations_detailcode  DEFAULT ((0)) FOR DetailCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_VarianceRelations_cTopicCode')
ALTER TABLE Acc.VarianceRelations ADD  CONSTRAINT DF_VarianceRelations_cTopicCode  DEFAULT ((0)) FOR CTopicCode
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_VarianceRelations_cTopicCode2')
ALTER TABLE Acc.VarianceRelations ADD  CONSTRAINT DF_VarianceRelations_cTopicCode2  DEFAULT ((0)) FOR CTopicCode2
IF NOT EXISTS (SELECT 1 from sysobjects where name = 'DF_VarianceRelations_cTopicCode3')
ALTER TABLE Acc.VarianceRelations ADD  CONSTRAINT DF_VarianceRelations_cTopicCode3  DEFAULT ((0)) FOR CTopicCode3



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

IF  EXISTS (select * from sysindexes WHERE     (name = N'IX_Documents_YearIDCompanyCode'))
drop  INDEX IX_Documents_YearIDCompanyCode ON Acc.Documents

IF  EXISTS (select * from sysindexes WHERE     (name = N'IX_Documents_TDCYD2'))
drop  INDEX IX_Documents_TDCYD2 ON Acc.Documents

IF  EXISTS (select * from sysindexes WHERE     (name = N'IX_Documents_CompanyCode_YearID'))
drop  INDEX IX_Documents_CompanyCode_YearID ON Acc.Documents

IF  EXISTS (select * from sysindexes WHERE     (name = N'IX_Documents_Serial_CompanyCode_YearID'))
drop  INDEX IX_Documents_Serial_CompanyCode_YearID ON Acc.Documents
 

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




IF NOT  EXISTS (select * from sysindexes WHERE     (name = N'IX_DocGroups_rptMonthDocuments'))
CREATE NONCLUSTERED INDEX IX_DocGroups_rptMonthDocuments
ON Acc.DocGroups (CompanyCode,SecondaryDocNo,PrimaryDocNo,DocDate,YearID)
INCLUDE (DocTypeCode)

IF NOT  EXISTS (select * from sysindexes WHERE     (name = N'IX_DocGroup'))
IF EXISTS (SELECT name FROM sysobjects WHERE name = 'DocGroups' AND type = 'U')
CREATE NONCLUSTERED INDEX IX_DocGroup ON Acc.DocGroups(	DocDate ASC,	PrimaryDocNo ASC,	SecondaryDocNo ASC,	Serial ASC) ON [PRIMARY]


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
	Declare @YearID char(2) 
	Set @YearID=(SELECT top 1 SUBSTRING(StartDate, 0, 3) FROM [ACC].Config) 
	Declare @StartYear Char(10) 
	Set @StartYear=(SELECT top 1 StartDate FROM [ACC].Config) 
	Declare @EndYear Char(10) 
	Set @EndYear=(SELECT top 1 EndDate FROM [ACC].Config) 
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


IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_DocGroup'))
DROP INDEX IX_DocGroup ON Acc.DocGroups



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


IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK__ReportRows__FinanceReports' AND type = 'F')
begin
ALTER TABLE Acc._ReportRows  WITH CHECK ADD  CONSTRAINT FK__ReportRows__FinanceReports FOREIGN KEY(repCode)
REFERENCES Acc._FinanceReports (repCode)
ON UPDATE CASCADE
ALTER TABLE Acc._ReportRows CHECK CONSTRAINT FK__ReportRows__FinanceReports
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK__ReportRowsOnDocs__ReportRows' AND type = 'F')
begin
ALTER TABLE Acc._ReportRowsOnDocs  WITH CHECK ADD  CONSTRAINT FK__ReportRowsOnDocs__ReportRows FOREIGN KEY(repCode, rowID, YearID)
REFERENCES Acc._ReportRows (repCode, rowID, YearID)
ON UPDATE CASCADE
ON DELETE CASCADE
ALTER TABLE Acc._ReportRowsOnDocs CHECK CONSTRAINT FK__ReportRowsOnDocs__ReportRows
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_AttachmentSanama_ContrastAccountSanama' AND type = 'F')
begin
ALTER TABLE Acc.AttachmentSanama  WITH NOCHECK ADD  CONSTRAINT FK_AttachmentSanama_ContrastAccountSanama FOREIGN KEY(ParentID)
REFERENCES Acc.ContrastAccountSanama (MasterID)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Acc.AttachmentSanama CHECK CONSTRAINT FK_AttachmentSanama_ContrastAccountSanama
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_AuditTopic_AccTopicLevels' AND type = 'F')
begin
ALTER TABLE Acc.AuditTopics  WITH NOCHECK ADD  CONSTRAINT FK_AuditTopic_AccTopicLevels FOREIGN KEY(LevelID)
REFERENCES Acc.AccTopicLevels (LevelID)
ON UPDATE CASCADE

ALTER TABLE Acc.AuditTopics CHECK CONSTRAINT FK_AuditTopic_AccTopicLevels
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_BudgetItems_Budgets' AND type = 'F')
begin
ALTER TABLE Acc.BudgetItems  WITH CHECK ADD  CONSTRAINT FK_BudgetItems_Budgets FOREIGN KEY(BudgetID)
REFERENCES Acc.Budgets (BudgetID)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Acc.BudgetItems CHECK CONSTRAINT FK_BudgetItems_Budgets
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_BudgetItems_BudgetTopics' AND type = 'F')
begin
ALTER TABLE Acc.BudgetItems  WITH CHECK ADD  CONSTRAINT FK_BudgetItems_BudgetTopics FOREIGN KEY(BudgetTopicID)
REFERENCES Acc.BudgetTopics (BudgetTopicID)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Acc.BudgetItems CHECK CONSTRAINT FK_BudgetItems_BudgetTopics
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_BudgetItems_Projects' AND type = 'F')
begin
ALTER TABLE Acc.BudgetItems  WITH CHECK ADD  CONSTRAINT FK_BudgetItems_Projects FOREIGN KEY(ProjectID)
REFERENCES Acc.Projects (ProjectID)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Acc.BudgetItems CHECK CONSTRAINT FK_BudgetItems_Projects
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_BudgetRang_BudgetTopics' AND type = 'F')
begin
ALTER TABLE Acc.BudgetRang  WITH CHECK ADD  CONSTRAINT FK_BudgetRang_BudgetTopics FOREIGN KEY(BudgetCode)
REFERENCES Acc.BudgetTopics (BudgetTopicID)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Acc.BudgetRang CHECK CONSTRAINT FK_BudgetRang_BudgetTopics
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_BudgetRang_Categories' AND type = 'F')
begin
ALTER TABLE Acc.BudgetRang  WITH CHECK ADD  CONSTRAINT FK_BudgetRang_Categories FOREIGN KEY(TopicCode)
REFERENCES Acc.Categories (TopicCode)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Acc.BudgetRang CHECK CONSTRAINT FK_BudgetRang_Categories
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Budgets_Interfaces' AND type = 'F')
begin
ALTER TABLE Acc.Budgets  WITH CHECK ADD  CONSTRAINT FK_Budgets_Interfaces FOREIGN KEY(InterfaceID)
REFERENCES Acc.Interfaces (InterfaceID)
ON UPDATE CASCADE

ALTER TABLE Acc.Budgets CHECK CONSTRAINT FK_Budgets_Interfaces
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Categories_AccTopicLevels' AND type = 'F')
begin
ALTER TABLE Acc.Categories  WITH NOCHECK ADD  CONSTRAINT FK_Categories_AccTopicLevels FOREIGN KEY(LevelID)
REFERENCES Acc.AccTopicLevels (LevelID)
ON UPDATE CASCADE

ALTER TABLE Acc.Categories CHECK CONSTRAINT FK_Categories_AccTopicLevels
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Categories_AuditTopics' AND type = 'F')
begin
ALTER TABLE Acc.Categories  WITH NOCHECK ADD  CONSTRAINT FK_Categories_AuditTopics FOREIGN KEY(AuditID)
REFERENCES Acc.AuditTopics (AuditCode)

ALTER TABLE Acc.Categories CHECK CONSTRAINT FK_Categories_AuditTopics
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Categories_FinancialTopics' AND type = 'F')
begin
ALTER TABLE Acc.Categories  WITH NOCHECK ADD  CONSTRAINT FK_Categories_FinancialTopics FOREIGN KEY(FinancialID)
REFERENCES Acc.FinancialTopics (FinancialCode)

ALTER TABLE Acc.Categories CHECK CONSTRAINT FK_Categories_FinancialTopics
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Categories_FormsInfo' AND type = 'F')
begin
ALTER TABLE Acc.Categories  WITH NOCHECK ADD  CONSTRAINT FK_Categories_FormsInfo FOREIGN KEY(Essence)
REFERENCES Acc.FormsInfo (FormInfoID)
ON UPDATE CASCADE

ALTER TABLE Acc.Categories CHECK CONSTRAINT FK_Categories_FormsInfo
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Categories_FormsInfo1' AND type = 'F')
begin
ALTER TABLE Acc.Categories  WITH NOCHECK ADD  CONSTRAINT FK_Categories_FormsInfo1 FOREIGN KEY(AidInfoType)
REFERENCES Acc.FormsInfo (FormInfoID)

ALTER TABLE Acc.Categories CHECK CONSTRAINT FK_Categories_FormsInfo1
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_CategoriesNote_Categories' AND type = 'F')
begin
ALTER TABLE Acc.CategoriesNote  WITH NOCHECK ADD  CONSTRAINT FK_CategoriesNote_Categories FOREIGN KEY(TopicCode)
REFERENCES Acc.Categories (TopicCode)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Acc.CategoriesNote CHECK CONSTRAINT FK_CategoriesNote_Categories
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_DetailNotes_Categories' AND type = 'F')
begin
ALTER TABLE Acc.DetailNotes  WITH NOCHECK ADD  CONSTRAINT FK_DetailNotes_Categories FOREIGN KEY(TopicCode)
REFERENCES Acc.Categories (TopicCode)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Acc.DetailNotes CHECK CONSTRAINT FK_DetailNotes_Categories
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_DGCompaniesRange_Companies' AND type = 'F')
begin
ALTER TABLE Acc.DGCompaniesRange  WITH CHECK ADD  CONSTRAINT FK_DGCompaniesRange_Companies FOREIGN KEY(CompanyCode)
REFERENCES Acc.Companies (CompanyCode)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Acc.DGCompaniesRange CHECK CONSTRAINT FK_DGCompaniesRange_Companies
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_DocGroups_MaliYear' AND type = 'F')
begin
ALTER TABLE Acc.DocGroups  WITH CHECK ADD  CONSTRAINT FK_DocGroups_MaliYear FOREIGN KEY(YearID)
REFERENCES Util.MaliYear (YearID)

ALTER TABLE Acc.DocGroups CHECK CONSTRAINT FK_DocGroups_MaliYear
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_DocRelated_Documents' AND type = 'F')
begin
ALTER TABLE Acc.DocRelated  WITH NOCHECK ADD  CONSTRAINT FK_DocRelated_Documents FOREIGN KEY(Serial, CompanyCode, ID, YearID)
REFERENCES Acc.Documents (Serial, CompanyCode, ID, YearID)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Acc.DocRelated CHECK CONSTRAINT FK_DocRelated_Documents
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Documents_Categories' AND type = 'F')
begin
ALTER TABLE Acc.Documents  WITH NOCHECK ADD  CONSTRAINT FK_Documents_Categories FOREIGN KEY(TopicCode)
REFERENCES Acc.Categories (TopicCode)
ON UPDATE CASCADE
ALTER TABLE Acc.Documents CHECK CONSTRAINT FK_Documents_Categories
end

IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'dbo.Customers') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
begin

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Documents_Customers' AND type = 'F')
begin
ALTER TABLE Acc.Documents  WITH NOCHECK ADD  CONSTRAINT FK_Documents_Customers FOREIGN KEY(DetailCode)
REFERENCES dbo.Customers (CustID)
ON UPDATE CASCADE

ALTER TABLE Acc.Documents CHECK CONSTRAINT FK_Documents_Customers
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Documents_Customers1' AND type = 'F')
begin
ALTER TABLE Acc.Documents  WITH NOCHECK ADD  CONSTRAINT FK_Documents_Customers1 FOREIGN KEY(CTopicCode)
REFERENCES dbo.Customers (CustID)

ALTER TABLE Acc.Documents CHECK CONSTRAINT FK_Documents_Customers1
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Documents_Customers2' AND type = 'F')
begin
ALTER TABLE Acc.Documents  WITH NOCHECK ADD  CONSTRAINT FK_Documents_Customers2 FOREIGN KEY(CTopicCode2)
REFERENCES dbo.Customers (CustID)

ALTER TABLE Acc.Documents CHECK CONSTRAINT FK_Documents_Customers2
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Documents_Customers3' AND type = 'F')
begin
ALTER TABLE Acc.Documents  WITH NOCHECK ADD  CONSTRAINT FK_Documents_Customers3 FOREIGN KEY(ctopiccode3)
REFERENCES dbo.Customers (CustID)

ALTER TABLE Acc.Documents CHECK CONSTRAINT FK_Documents_Customers3
end

END

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Documents_DocGroups' AND type = 'F')
begin
ALTER TABLE Acc.Documents  WITH NOCHECK ADD  CONSTRAINT FK_Documents_DocGroups FOREIGN KEY(Serial, YearID, CompanyCode)
REFERENCES Acc.DocGroups (Serial, YearID, CompanyCode)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Acc.Documents CHECK CONSTRAINT FK_Documents_DocGroups
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Expense_MaliYear' AND type = 'F')
begin
ALTER TABLE Acc.Expense  WITH NOCHECK ADD  CONSTRAINT FK_Expense_MaliYear FOREIGN KEY(YearId)
REFERENCES Util.MaliYear (YearID)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Acc.Expense CHECK CONSTRAINT FK_Expense_MaliYear
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ExpenseItems_Expense' AND type = 'F')
begin
ALTER TABLE Acc.ExpenseItems  WITH NOCHECK ADD  CONSTRAINT FK_ExpenseItems_Expense FOREIGN KEY(ExpID)
REFERENCES Acc.Expense (ExpID)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Acc.ExpenseItems CHECK CONSTRAINT FK_ExpenseItems_Expense
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FinancialTopic_AccTopicLevels' AND type = 'F')
begin
ALTER TABLE Acc.FinancialTopics  WITH NOCHECK ADD  CONSTRAINT FK_FinancialTopic_AccTopicLevels FOREIGN KEY(LevelID)
REFERENCES Acc.AccTopicLevels (LevelID)
ON UPDATE CASCADE

ALTER TABLE Acc.FinancialTopics CHECK CONSTRAINT FK_FinancialTopic_AccTopicLevels
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FinancialTopics_FormsInfo' AND type = 'F')
begin
ALTER TABLE Acc.FinancialTopics  WITH NOCHECK ADD  CONSTRAINT FK_FinancialTopics_FormsInfo FOREIGN KEY(FinancialType)
REFERENCES Acc.FormsInfo (FormInfoID)
ON UPDATE CASCADE

ALTER TABLE Acc.FinancialTopics CHECK CONSTRAINT FK_FinancialTopics_FormsInfo
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FinancialTopics_FormsInfo1' AND type = 'F')
begin
ALTER TABLE Acc.FinancialTopics  WITH NOCHECK ADD  CONSTRAINT FK_FinancialTopics_FormsInfo1 FOREIGN KEY(Essence)
REFERENCES Acc.FormsInfo (FormInfoID)

ALTER TABLE Acc.FinancialTopics CHECK CONSTRAINT FK_FinancialTopics_FormsInfo1
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FormsInfo_FormTypes' AND type = 'F')
begin
ALTER TABLE Acc.FormsInfo  WITH CHECK ADD  CONSTRAINT FK_FormsInfo_FormTypes FOREIGN KEY(FormType)
REFERENCES Acc.FormTypes (FormType)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Acc.FormsInfo CHECK CONSTRAINT FK_FormsInfo_FormTypes
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PortionDoc_FormsInfo' AND type = 'F')
begin
ALTER TABLE Acc.PortionDoc  WITH CHECK ADD  CONSTRAINT FK_PortionDoc_FormsInfo FOREIGN KEY(FormInfoID)
REFERENCES Acc.FormsInfo (FormInfoID)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Acc.PortionDoc CHECK CONSTRAINT FK_PortionDoc_FormsInfo
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PortionRange_Categories' AND type = 'F')
begin
ALTER TABLE Acc.PortionRange  WITH NOCHECK ADD  CONSTRAINT FK_PortionRange_Categories FOREIGN KEY(TopicCode)
REFERENCES Acc.Categories (TopicCode)

ALTER TABLE Acc.PortionRange CHECK CONSTRAINT FK_PortionRange_Categories
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PortionRange_FormsInfo' AND type = 'F')
begin
ALTER TABLE Acc.PortionRange  WITH NOCHECK ADD  CONSTRAINT FK_PortionRange_FormsInfo FOREIGN KEY(FormInfoID)
REFERENCES Acc.FormsInfo (FormInfoID)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Acc.PortionRange CHECK CONSTRAINT FK_PortionRange_FormsInfo
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PortionTableItems_PortionTable' AND type = 'F')
begin
ALTER TABLE Acc.PortionTableItems  WITH CHECK ADD  CONSTRAINT FK_PortionTableItems_PortionTable FOREIGN KEY(CofficientID)
REFERENCES Acc.PortionTable (CofficientID)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Acc.PortionTableItems CHECK CONSTRAINT FK_PortionTableItems_PortionTable
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PortionTopicCode_Categories' AND type = 'F')
begin
ALTER TABLE Acc.PortionTopicCode  WITH NOCHECK ADD  CONSTRAINT FK_PortionTopicCode_Categories FOREIGN KEY(TopicCode)
REFERENCES Acc.Categories (TopicCode)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Acc.PortionTopicCode CHECK CONSTRAINT FK_PortionTopicCode_Categories
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PortionTopicCode_Categories1' AND type = 'F')
begin
ALTER TABLE Acc.PortionTopicCode  WITH NOCHECK ADD  CONSTRAINT FK_PortionTopicCode_Categories1 FOREIGN KEY(PortionTopicCode)
REFERENCES Acc.Categories (TopicCode)

ALTER TABLE Acc.PortionTopicCode CHECK CONSTRAINT FK_PortionTopicCode_Categories1
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ProjectsRange_BudgetTopics' AND type = 'F')
begin
ALTER TABLE Acc.ProjectsRange  WITH CHECK ADD  CONSTRAINT FK_ProjectsRange_BudgetTopics FOREIGN KEY(BudgetTopicID)
REFERENCES Acc.BudgetTopics (BudgetTopicID)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Acc.ProjectsRange CHECK CONSTRAINT FK_ProjectsRange_BudgetTopics
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ProjectsRange_Projects' AND type = 'F')
begin
ALTER TABLE Acc.ProjectsRange  WITH CHECK ADD  CONSTRAINT FK_ProjectsRange_Projects FOREIGN KEY(ProjectID)
REFERENCES Acc.Projects (ProjectID)
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE Acc.ProjectsRange CHECK CONSTRAINT FK_ProjectsRange_Projects
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Variance_VarianceDefines' AND type = 'F')
begin
ALTER TABLE Acc.Variance  WITH CHECK ADD  CONSTRAINT FK_Variance_VarianceDefines FOREIGN KEY(VarianceCode)
REFERENCES Acc.VarianceDefines (VarianceCode)
ON UPDATE CASCADE

ALTER TABLE Acc.Variance CHECK CONSTRAINT FK_Variance_VarianceDefines
end
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_VarianceRelations_VarianceDefines' AND type = 'F')
begin
ALTER TABLE Acc.VarianceRelations  WITH CHECK ADD  CONSTRAINT FK_VarianceRelations_VarianceDefines FOREIGN KEY(VarianceCode)
REFERENCES Acc.VarianceDefines (VarianceCode)
ON UPDATE CASCADE

ALTER TABLE Acc.VarianceRelations CHECK CONSTRAINT FK_VarianceRelations_VarianceDefines
end

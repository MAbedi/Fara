--    تبدیل بانک  دارائی ثابت دستمزد به بانک فرا
--- بانک فقط باید دارائی ثابت باشد  رو بانک های دیگر اجرا نشود
--- Assets_???    این نام جایگزین شود و اجرا شود
use  Assets_KohSefidtest__1400

UPDATE       FaraSystems.dbo.Sections SET                SysID = 40 WHERE        (BankName = 'Assets_???')

if not exists (select * from dbo.sysobjects where id = object_id(N'Config') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
begin
CREATE TABLE dbo.Config(
	CompanyName varchar(100) NULL,
	CompanyDesc varchar(100) NULL,
	RegisterNumber varchar(15) NULL,
	Address varchar(250) NULL,
	Tel1 varchar(20) NULL,
	Tel2 varchar(20) NULL,
	Fax varchar(20) NULL,
	Email varchar(50) NULL,
	WebSite varchar(50) NULL,
	UsageDetailCode tinyint NOT NULL,
	UsageCTopicCode tinyint NOT NULL,
	SecondCustomerAvailable tinyint NOT NULL,
	StuffCodeAidInfoAvailable tinyint NOT NULL,
	ActsFooter varchar(250) NULL,
	UniqueSerial tinyint NOT NULL,
	FactorHeader varchar(250) NULL,
	FactorFooter varchar(250) NULL,
	FactorSigns varchar(250) NULL,
	FactorReleaseRelation tinyint NOT NULL,
	AccountDBName varchar(250) NULL,
	StartMaliYear char(10) NOT NULL,
	FinishMaliYear char(10) NOT NULL,
	BankState tinyint NOT NULL,
	EntityDisplayType tinyint NOT NULL,
	EntityOutputLowerLimit money NOT NULL,
	CheckDateOffset tinyint NULL,
	CofferBankName varchar(250) NULL,
	EconomicNumber varchar(20) NULL,
	PostalCode varchar(12) NULL,
	BudgetBankName varchar(120) NULL,
	CountStoreKind tinyint NOT NULL,
	Carton tinyint NOT NULL,
	EntityCaption varchar(50) NULL,
	WeightCaption varchar(50) NULL,
	SearchCode varchar(50) NULL,
	AccountDBNameOld varchar(250) NULL,
	ControlOrderPointEntity tinyint NOT NULL,
	ActivityKind varchar(100) NULL,
	ControlCodeActive int NOT NULL,
	AddMenuItem int NOT NULL,
	ActiveCoffer tinyint NOT NULL,
	ActiveBsell tinyint NOT NULL,
	ActiveBudget tinyint NOT NULL,
	ActiveStore tinyint NOT NULL,
	ActiveSchedule tinyint NOT NULL,
	sd1_caption varchar(20) NULL,
	sd2_caption varchar(20) NULL,
	sd3_caption varchar(20) NULL,
	sd4_caption varchar(20) NULL,
	sd5_caption varchar(20) NULL,
	sd6_caption varchar(20) NULL,
	sd7_caption varchar(20) NULL,
	sd8_caption varchar(20) NULL,
	sd9_caption varchar(20) NULL,
	ActiveSellPrice2 tinyint NOT NULL,
	StuffKindActive tinyint NOT NULL,
	AccDetailCodeEqualCustID tinyint NOT NULL,
	AuxiliaryCaption varchar(20) NULL,
	StuffCodingKind tinyint NOT NULL,
	SpecialReportsActive tinyint NOT NULL,
	CommunicableStores tinyint NOT NULL,
	StuffTecInfoActive tinyint NOT NULL,
	ArzTypeID int NULL,
	LevelIdStuffGroup tinyint NOT NULL,
	ExpireDateKind tinyint NOT NULL,
	RecoverPittedCode tinyint NOT NULL,
	CanRelation tinyint NOT NULL,
	StuffEnableKind tinyint NOT NULL,
	FileInputPath varchar(250) NULL,
	EntityOutputLowerLimit2 money NULL,
	BarCodeKind tinyint NOT NULL,
	ArchivePath nvarchar(301) NULL,
	DocStatusDefault tinyint NOT NULL,
	DocReciptStateDefault tinyint NOT NULL,
	EditCustNameLevelID tinyint NOT NULL,
	ServerID int NOT NULL,
	SelectedInvoiceEmission tinyint NOT NULL,
	ChangeAccNames nvarchar(400) NULL,
	CheckControlsItems nvarchar(50) NOT NULL,
	CheckControlsKind tinyint NOT NULL,
	DefaultDateActive tinyint NOT NULL,
	CheckMakeDoc4DelEdit tinyint NOT NULL,
	StandardRateVatActive tinyint NOT NULL,
	CalcReciptsRegulatesActive tinyint NOT NULL,
	RowInCardex tinyint NOT NULL,
	CustomerTrancKinds varchar(50) NOT NULL,
	DefaultYear tinyint NOT NULL,
	ComPortKind tinyint NOT NULL,
	EditStuffNameLevelID tinyint NOT NULL,
	PhonBookIIPath varchar(250) NULL,
	AccountServerName nvarchar(50) NULL,
	BaudRate tinyint NOT NULL,
	Port varchar(50) NULL,
	ActiveProcurement tinyint NOT NULL,
	ActiveManeger tinyint NOT NULL,
	FlowControl tinyint NOT NULL,
	XonXoffIn tinyint NOT NULL,
	XonXoffOut tinyint NOT NULL,
	PackSize tinyint NOT NULL,
	StopBits tinyint NOT NULL,
	Parity tinyint NOT NULL,
	UseUnitsYearID tinyint NOT NULL,
	stCount tinyint NOT NULL,
	UnicStuffCodingKind tinyint NOT NULL,
	ActiveSubsys varchar(30) NULL,
	Miladi_ValiDate_Date_Check tinyint NOT NULL,
	FunctionsAmountCaptions varchar(1000) NULL,
	CustAccDetailCodeEqualCustID varchar(50) NOT NULL,
	MakeDocsLevelID tinyint NOT NULL,
	DocPostKindLevelID tinyint NOT NULL,
	AuxiliaryActive tinyint NOT NULL,
	StateCode int NOT NULL,
	CityCode int NOT NULL,
	NationalCodeField varchar(20) NULL,
	CHKPriorityTransDate tinyint NOT NULL,
	ControlEntryCustInfo tinyint NOT NULL,
	BrowseAllForms tinyint NOT NULL,
	SysSmsActive tinyint NOT NULL,
	WorkFlowActive tinyint NOT NULL,
	Band tinyint NOT NULL,
	SabteNam tinyint NOT NULL,
	FilterOnServerID tinyint NOT NULL,
	RequiredCustomers bigint NOT NULL,
	LastVersion char(20) NULL,
	CustomersUnicName tinyint NOT NULL,
	CheckDateDefaultAct tinyint NOT NULL,
	CheckWarnDay tinyint NOT NULL,
	FunctionDate4EditFrom char(10) NOT NULL,
	FunctionDate4EditTo char(10) NOT NULL,
	DeadlineChanges tinyint NOT NULL,
	ConcatField4StuffName varchar(200) NOT NULL,
	MoadyName varchar(255) NULL,
	Tabeiat tinyint NOT NULL,
	MachineryLookUpKind1 int NOT NULL,
	MachineryLookUpKind2 int NOT NULL,
	MachineryLookUpKind3 int NOT NULL,
	MachineryLookUpKind4 int NOT NULL,
	MachineryLookUpKind5 int NOT NULL,
	MachineryLookUpKind6 int NOT NULL,
	SendDoc2OtherSystems int NOT NULL,
	chkExistAttachments tinyint NOT NULL,
	PureSellActive tinyint NOT NULL,
	ConcatField4StuffNameKind int NOT NULL,
	TelegramBotAPI varchar(200) NULL,
	ActiveMiladi tinyint NOT NULL,
	AccCenterTopicEqualUseUnitID tinyint NOT NULL,
	ChkUsersCustomersGroupsActive tinyint NOT NULL,
	taxPayerTypeField tinyint NOT NULL,
	CompanyName_L2 varchar(100) NULL,
	GroupReciptPostKind int NOT NULL,
	ArzActiveAll tinyint NOT NULL,
	MakeDocumentPost bigint NOT NULL,
	AllControls bigint NOT NULL,
	SmallDeals money NOT NULL,
	SmallDealsCo float NOT NULL,
	SmallDealsPrice  AS (round((SmallDeals*SmallDealsCo)/(100),(0))),
	PlaqueReaderActive tinyint NOT NULL,
	IPCameraURL varchar(1000) NULL,
	ConfigSettings bigint NOT NULL,
	RoundEntity tinyint NOT NULL,
	MinEntity  AS (CONVERT(decimal(20,18),left(stuff('0.000000000000',RoundEntity+(3),(1),'1'),RoundEntity+(3)),0)),
	ChkSumTotalOutputPrice tinyint NOT NULL,
	CustomerKindsTransaction nvarchar(200) NOT NULL,
	DetailCodelength tinyint NOT NULL,
	SearchLimitCustomersGroups tinyint NOT NULL,
	POActive tinyint NOT NULL,
	NipcUserName varchar(200) NULL,
	NipcPassWord varchar(200) NULL,
	WarrantyFormTypes char(250) NULL,
	WarrantyDay tinyint NOT NULL,
	POCaption varchar(50) NOT NULL,
	LinkServerName varchar(200) NULL,
	FISCAL_ID varchar(2048) NULL,
	PUB_KEY varchar(2048) NULL,
	PUB_KEY_ID varchar(2048) NULL,
	PRV_KY varchar(2048) NULL,
	ECONOMIC_NUMBER varchar(30) NULL,
	URL_MoadianAPI varchar(100) NOT NULL,
	EntityOrWeight tinyint NOT NULL,
	ActiveConfigUser tinyint NOT NULL,
	CSR_KEY nvarchar(2048) NULL,
	CRT_KEY nvarchar(2048) NULL
) ON [PRIMARY]


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_UsageDetailCode  DEFAULT (0) FOR UsageDetailCode


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_UsageCTopicCode  DEFAULT (0) FOR UsageCTopicCode


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_SecondCustomerAvailable  DEFAULT (0) FOR SecondCustomerAvailable


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_StuffCodeAidInfoAvailable  DEFAULT (0) FOR StuffCodeAidInfoAvailable


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_UniqueSerial  DEFAULT (0) FOR UniqueSerial


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_FactorReleaseRelation  DEFAULT (0) FOR FactorReleaseRelation


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_BankState  DEFAULT (0) FOR BankState


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_EntityDisplayType  DEFAULT (0) FOR EntityDisplayType


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_EntityOutputType  DEFAULT (0) FOR EntityOutputLowerLimit


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_CountStoreKind  DEFAULT (0) FOR CountStoreKind


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_EntityWeight  DEFAULT (0) FOR Carton


ALTER TABLE dbo.Config ADD  CONSTRAINT DF__Config__EntityCa__2062B9C8  DEFAULT ('مقدار') FOR EntityCaption


ALTER TABLE dbo.Config ADD  CONSTRAINT DF__Config__WeightCa__2156DE01  DEFAULT ('وزن') FOR WeightCaption


ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR ControlOrderPointEntity


ALTER TABLE dbo.Config ADD  DEFAULT (1) FOR ControlCodeActive


ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR AddMenuItem


ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR ActiveCoffer


ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR ActiveBsell


ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR ActiveBudget


ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR ActiveStore


ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR ActiveSchedule


ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR ActiveSellPrice2


ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR StuffKindActive


ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR AccDetailCodeEqualCustID


ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR StuffCodingKind


ALTER TABLE dbo.Config ADD  DEFAULT (1) FOR SpecialReportsActive


ALTER TABLE dbo.Config ADD  DEFAULT (1) FOR CommunicableStores


ALTER TABLE dbo.Config ADD  DEFAULT (1) FOR StuffTecInfoActive


ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR LevelIdStuffGroup


ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR ExpireDateKind


ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR RecoverPittedCode


ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR CanRelation


ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR StuffEnableKind


ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR BarCodeKind


ALTER TABLE dbo.Config ADD  DEFAULT (1) FOR DocStatusDefault


ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR DocReciptStateDefault


ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR EditCustNameLevelID


ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR ServerID


ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR SelectedInvoiceEmission


ALTER TABLE dbo.Config ADD  DEFAULT ('0') FOR CheckControlsItems


ALTER TABLE dbo.Config ADD  DEFAULT (1) FOR CheckControlsKind


ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR DefaultDateActive


ALTER TABLE dbo.Config ADD  DEFAULT (1) FOR CheckMakeDoc4DelEdit


ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR StandardRateVatActive


ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR CalcReciptsRegulatesActive


ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR RowInCardex


ALTER TABLE dbo.Config ADD  DEFAULT ('0') FOR CustomerTrancKinds


ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR DefaultYear


ALTER TABLE dbo.Config ADD  DEFAULT (2) FOR ComPortKind


ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR EditStuffNameLevelID


ALTER TABLE dbo.Config ADD  DEFAULT (7) FOR BaudRate


ALTER TABLE dbo.Config ADD  DEFAULT ('COM1') FOR Port


ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR ActiveProcurement


ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR ActiveManeger


ALTER TABLE dbo.Config ADD  DEFAULT (2) FOR FlowControl


ALTER TABLE dbo.Config ADD  DEFAULT (1) FOR XonXoffIn


ALTER TABLE dbo.Config ADD  DEFAULT (1) FOR XonXoffOut


ALTER TABLE dbo.Config ADD  DEFAULT (20) FOR PackSize


ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR StopBits


ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR Parity


ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR UseUnitsYearID


ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR stCount


ALTER TABLE dbo.Config ADD  DEFAULT (1) FOR UnicStuffCodingKind


ALTER TABLE dbo.Config ADD  DEFAULT ('000000000000100100000000000001') FOR ActiveSubsys


ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR Miladi_ValiDate_Date_Check


ALTER TABLE dbo.Config ADD  DEFAULT ('0') FOR CustAccDetailCodeEqualCustID


ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR MakeDocsLevelID


ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR DocPostKindLevelID


ALTER TABLE dbo.Config ADD  DEFAULT (0) FOR AuxiliaryActive


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_StateCode  DEFAULT (0) FOR StateCode


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_CityCode  DEFAULT (0) FOR CityCode


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_CHKPriorityTransDate  DEFAULT (1) FOR CHKPriorityTransDate


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_ControlEntryCustInfo  DEFAULT (0) FOR ControlEntryCustInfo


ALTER TABLE dbo.Config ADD  DEFAULT ((1)) FOR BrowseAllForms


ALTER TABLE dbo.Config ADD  DEFAULT ((0)) FOR SysSmsActive


ALTER TABLE dbo.Config ADD  DEFAULT ((0)) FOR WorkFlowActive


ALTER TABLE dbo.Config ADD  DEFAULT ((0)) FOR Band


ALTER TABLE dbo.Config ADD  DEFAULT ((0)) FOR SabteNam


ALTER TABLE dbo.Config ADD  DEFAULT ((1)) FOR FilterOnServerID


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_RequiredCustomers  DEFAULT ((1)) FOR RequiredCustomers


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_CustomersUnicName  DEFAULT ((0)) FOR CustomersUnicName


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_CheckDateDefaultAct  DEFAULT ((0)) FOR CheckDateDefaultAct


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_CheckWarnDay  DEFAULT ((3)) FOR CheckWarnDay


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_FunctionDate4EditFrom  DEFAULT ('00/00/00') FOR FunctionDate4EditFrom


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_FunctionDate4EditTo  DEFAULT ('99/99/99') FOR FunctionDate4EditTo


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_DeadlineChanges  DEFAULT ((0)) FOR DeadlineChanges


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_ConcatField4StuffName  DEFAULT ('') FOR ConcatField4StuffName


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_Tabeiat  DEFAULT ((0)) FOR Tabeiat


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_MachineryLookUpKind1  DEFAULT ((0)) FOR MachineryLookUpKind1


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_MachineryLookUpKind2  DEFAULT ((0)) FOR MachineryLookUpKind2


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_MachineryLookUpKind3  DEFAULT ((0)) FOR MachineryLookUpKind3


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_MachineryLookUpKind4  DEFAULT ((0)) FOR MachineryLookUpKind4


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_MachineryLookUpKind5  DEFAULT ((0)) FOR MachineryLookUpKind5


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_MachineryLookUpKind6  DEFAULT ((0)) FOR MachineryLookUpKind6


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_SendDoc2OtherSystems  DEFAULT ((0)) FOR SendDoc2OtherSystems


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_chkExistAttachments  DEFAULT ((0)) FOR chkExistAttachments


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_PureSellActive  DEFAULT ((0)) FOR PureSellActive


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_ConcatField4StuffNameKind  DEFAULT ((0)) FOR ConcatField4StuffNameKind


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_ActiveMiladi  DEFAULT ((0)) FOR ActiveMiladi


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_AccCenterTopicEqualUseUnitID  DEFAULT ((0)) FOR AccCenterTopicEqualUseUnitID


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_ChkUsersCustomersGroupsActive  DEFAULT ((1)) FOR ChkUsersCustomersGroupsActive


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_taxPayerTypeField  DEFAULT ((0)) FOR taxPayerTypeField


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_GroupReciptPostKind  DEFAULT ((0)) FOR GroupReciptPostKind


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_ArzActiveAll  DEFAULT ((0)) FOR ArzActiveAll


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_MakeDocumentPost  DEFAULT ((7)) FOR MakeDocumentPost


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_AllControls  DEFAULT ((0)) FOR AllControls


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_SmallDeals  DEFAULT ((250000000)) FOR SmallDeals


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_SmallDealsCo  DEFAULT ((5)) FOR SmallDealsCo


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_PlaqueReaderActive  DEFAULT ((0)) FOR PlaqueReaderActive


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_ConfigSettings  DEFAULT ((1)) FOR ConfigSettings


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_RoundEntity  DEFAULT ((3)) FOR RoundEntity


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_ChkSumTotalOutputPrice  DEFAULT ((1)) FOR ChkSumTotalOutputPrice


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_CustomerKindsTransaction  DEFAULT ('0,0,3,8,9') FOR CustomerKindsTransaction


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_DetailCodelength  DEFAULT ((15)) FOR DetailCodelength


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_SearchLimitCustomersGroups  DEFAULT ((0)) FOR SearchLimitCustomersGroups


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_POActive  DEFAULT ((0)) FOR POActive


ALTER TABLE dbo.Config ADD  DEFAULT ((0)) FOR WarrantyDay


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_POCaption  DEFAULT ('PO') FOR POCaption


ALTER TABLE dbo.Config ADD  CONSTRAINT DF_Config_URL_MoadianAPI  DEFAULT ('http://213.108.242.54:8080/moadianwsh/MoadianAPI/FARA/') FOR URL_MoadianAPI


ALTER TABLE dbo.Config ADD  DEFAULT ((0)) FOR EntityOrWeight


ALTER TABLE dbo.Config ADD  DEFAULT ((0)) FOR ActiveConfigUser



EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Config', @level2type=N'COLUMN',@level2name=N'CompanyName'


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'فيلد براي كارتن' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Config', @level2type=N'COLUMN',@level2name=N'Carton'

end

---  select * from config
if (select count(*) from config) = 0
INSERT INTO Config
                         (CompanyName,  AccountDBName,  ActiveSubsys, SysSmsActive,ComPortKind,StartMaliYear,FinishMaliYear)
SELECT        TOP (200) CompanyName,  AccountDBName,'000000000000100100000000000001' ActiveSubsys, SysSmsActive, 0 ComPortKind ,FirstDayMaliYear StartMaliYear,EndDayMaliYear FinishMaliYear
FROM       Assets.Config AS Config_1                 


if exists (select * from sysobjects where id = object_id(N'UsersStore') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW UsersStore
GO
if exists (select * from sysobjects where id = object_id(N'ReciptTypes') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW ReciptTypes
GO
if exists (select * from sysobjects where id = object_id(N'FormTypes') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW FormTypes
GO
if exists (select * from sysobjects where id = object_id(N'LookUps') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW LookUps
---------------------------
GO
if exists (select * from sysobjects where id = object_id(N'Stores') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW Stores
---------------------------
GO
if exists (select * from sysobjects where id = object_id(N'StuffCoding') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW StuffCoding
---------------------------
GO




CREATE VIEW UsersStore
AS 
SELECT 0 AS n_UserID , 0 AS n_StoreID, 0 AS StoreType

GO
	CREATE VIEW dbo.ReciptTypes
	AS
SELECT        12 AS ReciptType,0 PrimaryReciptType , 'دارائی ثابت به فرا' AS ReciptCaption, 0 AS EffectType, '0000000000000000000000000' AS MnuPlaceIDs, - 1 AS SellEffect, 0 AS FormKindSerial, 0 AS FormItemKindSerial, 'دارائی ثابت به فرا ' AS StoreCaption, 'دارائی ثابت به فرا ' AS Person1Caption, 
                         'دارائی ثابت به فرا ' AS Person2Caption, 'دارائی ثابت به فرا ' AS Person3Caption, 'دارائی ثابت به فرا ' AS Person4Caption, 'دارائی ثابت به فرا ' AS Section2Caption, 'دارائی ثابت به فرا ' AS ExpireDateCaption, 'دارائی ثابت به فرا ' AS ControlCodeCaption, 
                         'دارائی ثابت به فرا ' AS UseUnitCaseCaption, 'دارائی ثابت به فرا ' AS Person2DetailCaption, 'دارائی ثابت به فرا ' AS OtherRptCaptions, 'دارائی ثابت به فرا ' AS StandardCaption, 'دارائی ثابت به فرا ' AS ProcedureCaption, 'دارائی ثابت به فرا ' AS StuffCodingAddFieldCaption, 
                         'دارائی ثابت به فرا ' AS ReciptCaption_L2, 'دارائی ثابت به فرا ' AS CalcCostStorageCaption, 'دارائی ثابت به فرا ' AS LookUpName, 'دارائی ثابت به فرا ' AS LookUpNameItem
						 ,'دارائی ثابت به فرا ' AidInfoCaption , '' ReportFileCaption1, '' ReportFileCaption2 ,'' Store2Caption,'' Section2CaptionWeight

	--, UseType, RecallType, MakeDoc, FormSignature, FormHeader, FormFooter, RecallReciptTypes, PerformFileName, 
	--						 ReportFileName, PrintCount, ReciptDescription, StoreActive, , RestartFormNumberOnStore, Person1Active, Person2Active, Person1Caption, 
	--						 Person2Caption, Person1Groups, Person2Groups, Section1Visible, Section2Visible, Section2Caption, SecondTypeActive, BedType, BesType, DetailNoteActive, 
	--						 ControlEntityActive, ExpireDateActive, ExpireDateCaption, HelpID, TemplateCode, ControlCodeCaption, UseUnitCase, UseUnitCaseCaption, UserSecurityCheckActive, 
	--						 UseStoreIDOnRecall, DeficitsActive, RecallReciptDeficitsType, UnitPriceReadOnly, MaxRowsPerForm, 
	--						 AidInfoActive, AidInfoCaption, AutoPrice, DiscountActive, OutPutWithTransFormActive, FormTypeForTranseForm, 
	--						 CorrelateReciptType, CorrelateKind, EditReciptNumberActive, PersonID1OnDetailActive, NoteShow, AutoStateChange, MaxCreditChecked, ControlEntityKind, 
	--						 MnuPlaceID, DetailDateActive, ConversionCoSerial, ProcedureActive, , Correlate4EditActive, AutoCorrelate, CustomerKind1, CustomerKind2, 
	--						 EffectOnCustomer, DefaultCTopic2_Bed, DefaultCTopic2_Bes, DefaultCTopic_Bed, DefaultCTopic_Bes, DefaultDetail_Bed, DefaultDetail_Bes, DefaultTopic_Bed, 
	--						 DefaultTopic_Bes, ConstTopicCode_Bed, ConstTopicCode_Bes, RowOnMnu, ShowSelectStore, CustCodeUse4Bed, CustCodeUse4Bes, AccountKind4Deficits, 
	--						 Amani_StuffActiveInDoc, ActiveDocOnCommission, CofferType, ShowListOnMnu, AccCodingShow, Store2Active, ADDLevelID, EditLevelID, DeleteLevelID, 
	--						 ChangeStateLevelID, PrintLevelID, FormRelatedLevelID, AccCodeLevelID, StoreKindList, Dec_TopicCode, Dec_DetailCode, Dec_CTopicCode, Dec_CTopicCode2, 
	--						 EffectOnCustomer2, UseableCustomer, NonZeroControl, MachineActive, EarthActive, WetActive, SugarActive, DuplicateReciptNumber, Customer2DetailKind, 
	--						 DiscountEntryKind, AidInfoCaptionNo, EffectOnNotRecall, DeficitValueEditing, AidNumRestOnSecType, ArzActive, ArzTypeID, SellEffect, StandardRateActive, 
	--						 NonZeroActive, ShowEntityOnSearch, InsertEntity, PriceReadOnly, UnicCodeCheck, ReportFileCaption1, ReportFileCaption2, Store2Caption, DuplicateReciptNoActive, 
	--						 UsePerson1OnRecall, ExtraCodingAddStuffName, State0ChangeLevelID, State1ChangeLevelID, State2ChangeLevelID, State3ChangeLevelID, , 
	--						 Section2CaptionWeight, RequestedChange, DeficitsLevelID, MaxControlCode, StoreControlEntity, Person2DetailCaption, AidInfoControlDate, ControlCodeUnic, 
	--						 UseOtherActive, Deficate_TopicCode, Deficate_DetailCode, Deficate_MakeDocKind, ChangeAidReciptDate, TozinActive, OtherRptFiles, OtherRptCaptions, 
	--						 ShowNotEntityOnSearch, SearchReciptNumber, AcceptRollbackEntity, PrintAfterPost, PriorityReciptDate, EditableFields, ShowEntityWeightOnList, ShowKeepPlace, 
	--						 ReciptNumberKind, ReciptNumberOfType, CorrelateReciptNumberKind, AllotmentActive, CorrelateReciptsDeficits, RepelInsertRecipt, CorrelateStateChange, 
	--						 Deficate_MakeDocApart, VATActive, VATCo, VATRound, OrderByFields, MasirActive, DeliveryActive, SellsEmporiumActive, SellsMethodActive, Person3Active, 
	--						 Person3Caption, CustomerKind3, CreditChecked1, CreditChecked2, CreditChecked3, CreditChecked4, CreditChecked5, CustCheckDateOffset, CreditChkCurrentForm, 
	--						 ReciptNumberEventKind, CostDownSaveActive, WaterCoOrDeficitValueEdit, StandardCaption, StandardCoefficient, StandardDate, PawsFieldsActive, RecallEditKind, 
	--						 DeficitValueUnitSellPrice2, WastesFunctions, Commendation, Person3ControlWeightCustomer, TransmittalActive, TransmittalLevelID, CustomerRateAct, 
	--						 AutoCorrelateCo, CartonKind, DocTypeCode, ActiveReMainPersonRecipt, ActiveTimeToStr, MinRowsPerForm, ReciptIDEventKind, WaterCoEffect, SumOnStuffCode, 
	--						 ReportID, BarCodeKind, StepCorrelate, InsertAidOnRecall, SellPriceCheck, ControlEntityCol, IncreasingInventory, IncreasingInventoryStore, ShortCutKey, 
	--						 TopicCodeActive, DetailCodeActive, CTopicCode1Active, CTopicCode2Active, MnuPlaceIDs, RoundCount, ProcedureKIndList, ProcedureCaption, EarthFieldGateActive, 
	--						 DocPostKind, ReciptsRowActive, DefaultCTopic3_Bed, DefaultCTopic3_Bes, StartEndHourActive, CTopicCode3Active, RecallReciptState1, CopyFormLevelID, 
	--						 BuyEffect, ConversionCoSerialFormula, CommissionActive, FilterYearIDActive, Day4Edit, ReciptBe4PostCtrlEntAct, ChekingTaxPrint, ConfirmingActive, 
	--						 ChekingPrintEntity, ChangePriceManifesto


  
  
GO
	CREATE VIEW dbo.FormTypes
	AS
	SELECT 12 FormType,'دارائی ثابت به فرا' FormCaption  ,0 PrimaryFormType ,0 DisplayFormType,0 MnuPlaceID
GO
	CREATE VIEW dbo.LookUps
	AS
	SELECT 12 LookUpID,1 Code ,'دارائی ثابت به فرا' Name ,0 Kind

GO
	CREATE VIEW dbo.Stores
	AS
	SELECT 12 n_StoreID,1 Code ,'دارائی ثابت به فرا' StoreName ,7 n_ValuationType

GO
	CREATE VIEW dbo.StuffCoding
	AS
	SELECT     0   GroupID, 0 AS cntGroupID

	 

GO


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



 IF NOT EXISTS(SELECT * FROM SYSOBJECTS where id = object_id(N'StuffGroups') and OBJECTPROPERTY(id, N'IsUserTable') = 1 )
 begin
 CREATE TABLE dbo.StuffGroups(
	GroupID int NOT NULL,
	GroupName varchar(50) NULL,
	StartCode bigint NULL,
	FinishCode bigint NULL,
	acc_IncomeTopicCode bigint NULL,
	acc_BidTopicCode bigint NULL,
	acc_CTopicCode varchar(12) NOT NULL,
	acc_DetailCode varchar(12) NOT NULL,
	acc_CTopicCode2 varchar(12) NOT NULL,
	acc_AFootInComingTopicCode bigint NULL,
	LevelID tinyint NOT NULL,
	UperGroupId int NOT NULL,
	GroupType tinyint NOT NULL,
	acc_CTopicCode3 varchar(12) NOT NULL,
	OrderPoint decimal(20, 4) NULL,
	StuffCodingKind tinyint NOT NULL,
	VatExemptOn tinyint NOT NULL,
	SarFaslType tinyint NOT NULL,
	GroupName_L2 varchar(50) NULL,
	KalaType int NOT NULL,
	PrefixPelak varchar(15) NULL,
 CONSTRAINT PK_StuffGroups PRIMARY KEY CLUSTERED 
(
	GroupID ASC
) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE dbo.StuffGroups ADD  CONSTRAINT DF_StuffGroups_acc_IncomTopicCode  DEFAULT ((0)) FOR acc_IncomeTopicCode

ALTER TABLE dbo.StuffGroups ADD  CONSTRAINT DF_StuffGroups_acc_BidTopicCode  DEFAULT ((0)) FOR acc_BidTopicCode

ALTER TABLE dbo.StuffGroups ADD  CONSTRAINT DF_StuffGroups_acc_CTopicCode  DEFAULT (0) FOR acc_CTopicCode

ALTER TABLE dbo.StuffGroups ADD  CONSTRAINT DF_StuffGroups_acc_DetailCode  DEFAULT (0) FOR acc_DetailCode

ALTER TABLE dbo.StuffGroups ADD  CONSTRAINT DF_StuffGroups_acc_CTopicCode1  DEFAULT (0) FOR acc_CTopicCode2

ALTER TABLE dbo.StuffGroups ADD  CONSTRAINT DF_StuffGroups_acc_AFootInComingTopicCode  DEFAULT ((0)) FOR acc_AFootInComingTopicCode

ALTER TABLE dbo.StuffGroups ADD  DEFAULT (0) FOR LevelID

ALTER TABLE dbo.StuffGroups ADD  DEFAULT (0) FOR UperGroupId

ALTER TABLE dbo.StuffGroups ADD  DEFAULT (0) FOR GroupType

ALTER TABLE dbo.StuffGroups ADD  CONSTRAINT DF_StuffGroups_acc_CTopicCode3  DEFAULT (0) FOR acc_CTopicCode3

ALTER TABLE dbo.StuffGroups ADD  CONSTRAINT DF_StuffGroups_StuffCodingKind  DEFAULT ((0)) FOR StuffCodingKind

ALTER TABLE dbo.StuffGroups ADD  DEFAULT ((0)) FOR VatExemptOn

ALTER TABLE dbo.StuffGroups ADD  CONSTRAINT DF_StuffGroups_acc_SarFaslType  DEFAULT ((5)) FOR SarFaslType

ALTER TABLE dbo.StuffGroups ADD  DEFAULT ((12)) FOR KalaType


end



IF  EXISTS(SELECT * FROM SYSOBJECTS where id = object_id(N'Assets.AssetsGroups') and OBJECTPROPERTY(id, N'IsUserTable') = 1 )
EXEC sp_rename 'Assets.AssetsGroups', 'Assets.AssetsGroupsOld';

INSERT INTO StuffGroups
                         (GroupID, GroupName, StartCode, FinishCode, acc_IncomeTopicCode, acc_BidTopicCode, acc_CTopicCode, acc_DetailCode, acc_CTopicCode2, acc_AFootInComingTopicCode, LevelID, UperGroupId, GroupType, 
                         acc_CTopicCode3)
SELECT        AsstetsGrpCode, GrpName, AsstetsGrpCode AS Expr1, AsstetsGrpCode AS Expr2, AccTopicCode, AccTopicCode AS Expr3, AccCTopicCode, AccDetailCode, AccCTopicCode2, AccCTopicCode3, LevelID, PrvGrpCode, 
                         9 AS GroupType, AccCTopicCode3 AS Expr4
FROM            Assets.[Assets.AssetsGroupsOld]
WHERE        (AsstetsGrpCode NOT IN
                             (SELECT        GroupID
                                FROM            StuffGroups))



IF NOT EXISTS(SELECT * FROM SYSOBJECTS where id = object_id(N'SellsEmporiums') and OBJECTPROPERTY(id, N'IsUserTable') = 1 )
 begin
 
CREATE TABLE [dbo].[SellsEmporiums](
	[SellsEmporium] [int] NOT NULL,
	[SellsEmporiumName] [nvarchar](100) NOT NULL,
	[ServerID] [int] NOT NULL,
	[TopicCode] [bigint] NOT NULL,
	[DetailCode] [varchar](12) NOT NULL,
	[CTopicCode] [varchar](12) NOT NULL,
	[CTopicCode2] [varchar](12) NOT NULL,
	[CTopicCode3] [varchar](12) NOT NULL,
	[ReportFileName] [varchar](100) NULL,
 CONSTRAINT [PK_SellsEmporiums] PRIMARY KEY CLUSTERED 
(
	[SellsEmporium] ASC
) ON [PRIMARY]
) ON [PRIMARY]


ALTER TABLE [dbo].[SellsEmporiums] ADD  CONSTRAINT [DF_SellsEmporiums_ServerID]  DEFAULT ((0)) FOR [ServerID]


ALTER TABLE [dbo].[SellsEmporiums] ADD  CONSTRAINT [DF_SellsEmporiums_TopicCode]  DEFAULT ((0)) FOR [TopicCode]


ALTER TABLE [dbo].[SellsEmporiums] ADD  CONSTRAINT [DF_SellsEmporiums_DetailCode]  DEFAULT ((0)) FOR [DetailCode]


ALTER TABLE [dbo].[SellsEmporiums] ADD  CONSTRAINT [DF_SellsEmporiums_CTopicCode]  DEFAULT ((0)) FOR [CTopicCode]

ALTER TABLE [dbo].[SellsEmporiums] ADD  CONSTRAINT [DF_SellsEmporiums_CTopicCode2]  DEFAULT ((0)) FOR [CTopicCode2]


ALTER TABLE [dbo].[SellsEmporiums] ADD  CONSTRAINT [DF_SellsEmporiums_CTopicCode3]  DEFAULT ((0)) FOR [CTopicCode3]

INSERT INTO SellsEmporiums (SellsEmporium ,[SellsEmporiumName])
 select 1	,' مرکز فروش '	
end

if exists (select * from sysobjects where id = object_id(N'dbo.Units') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view dbo.Units


IF NOT EXISTS(SELECT * FROM SYSOBJECTS where id = object_id(N'Units') and OBJECTPROPERTY(id, N'IsUserTable') = 1 )
 begin

CREATE TABLE Units(
	[UnitCode] [tinyint] NOT NULL,
	[UnitName] [varchar](50) NOT NULL,
	[ChangeState] [tinyint] NOT NULL,
	[UnitName_L2] [varchar](50) NULL,
	[Tax_mu] [varchar](6) NULL,
 CONSTRAINT [PK_Units] PRIMARY KEY CLUSTERED 
(
	[UnitCode] ASC
) ON [PRIMARY]
) ON [PRIMARY]


ALTER TABLE [dbo].[Units] ADD  DEFAULT (0) FOR [ChangeState]
end



----   UpdateBank 30   1403/04/19   
SET NOCOUNT ON
 
 




IF  EXISTS(SELECT * FROM SYSOBJECTS where id = object_id(N'Assets.AssetsGroups') and OBJECTPROPERTY(id, N'IsUserTable') = 1 )
EXEC sp_rename 'Assets.AssetsGroups', 'Assets.AssetsGroupsOld';

INSERT INTO StuffGroups
                         (GroupID, GroupName, StartCode, FinishCode, acc_IncomeTopicCode, acc_BidTopicCode, acc_CTopicCode, acc_DetailCode, acc_CTopicCode2, acc_AFootInComingTopicCode, LevelID, UperGroupId, GroupType, 
                         acc_CTopicCode3)
SELECT        AsstetsGrpCode, GrpName, AsstetsGrpCode AS Expr1, AsstetsGrpCode AS Expr2, AccTopicCode, AccTopicCode AS Expr3, AccCTopicCode, AccDetailCode, AccCTopicCode2, AccCTopicCode3, LevelID, PrvGrpCode, 
                         9 AS GroupType, AccCTopicCode3 AS Expr4
FROM            Assets.[Assets.AssetsGroupsOld]
WHERE        (AsstetsGrpCode NOT IN
                             (SELECT        GroupID
                                FROM            StuffGroups))




  








if ( COLUMNPROPERTY( OBJECT_ID('StuffGroups'),'PrefixPelak','IsRowGuidCol')is null )
begin
IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Amval_AssetsGroups' AND type = 'F')
  ALTER TABLE Assets.Amval drop CONSTRAINT FK_Amval_AssetsGroups
ALTER TABLE StuffGroups ADD PrefixPelak varchar(15)
end

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


IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Amval_AssetsGroups' AND type = 'F')
ALTER TABLE Assets.Amval WITH CHECK ADD CONSTRAINT FK_Amval_AssetsGroups FOREIGN KEY (AsstetsGrpCode) REFERENCES StuffGroups(GroupID) ON UPDATE CASCADE 


if exists (select * from sysobjects where id = object_id(N'Assets.AssetsGroups') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view Assets.AssetsGroups

exec('create VIEW Assets.AssetsGroups
AS
SELECT        StuffGroups.GroupID AsstetsGrpCode, StuffGroups.GroupName GrpName,acc_IncomeTopicCode  AccTopicCode,acc_DetailCode AccDetailCode,acc_CTopicCode AccCTopicCode
   ,acc_CTopicCode2 AccCTopicCode2,acc_CTopicCode3 AccCTopicCode3, PrefixPelak,0 LevelID,StuffGroups.UperGroupId PrvGrpCode


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


end


INSERT INTO Units
                         (UnitCode, UnitName)
SELECT        unitCode, unitName
FROM            Assets.[Assets.UnitsOld]
WHERE        (unitCode NOT IN
                             (SELECT        UnitCode
                                FROM            Units))




IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Amval_Units' AND type = 'F')
begin
ALTER TABLE Assets.Amval alter column UnitCode tinyint not null
ALTER TABLE Assets.Amval WITH CHECK ADD CONSTRAINT FK_Amval_Units FOREIGN KEY (UnitCode) REFERENCES Units(UnitCode) ON UPDATE CASCADE 
end

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

  if ( COLUMNPROPERTY( OBJECT_ID('util.CodesInProcess'),'Ip','IsRowGuidCol')is  null )  
  ALTER TABLE [util].[CodesInProcess] ADD [Ip] [nvarchar](20)  

  if ( COLUMNPROPERTY( OBJECT_ID('util.CodesInProcess'),'FormName','IsRowGuidCol')is  null )  
  ALTER TABLE [util].[CodesInProcess] ADD FormName [nvarchar](50)  

  if ( COLUMNPROPERTY( OBJECT_ID('util.CodesInProcess'),'type','IsRowGuidCol')is  null )  
  ALTER TABLE [util].[CodesInProcess] ADD type tinyint  
  
  
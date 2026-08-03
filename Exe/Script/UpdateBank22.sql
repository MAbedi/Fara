IF NOT EXISTS (SELECT CHARACTER_MAXIMUM_LENGTH FROM INFORMATION_SCHEMA.COLUMNS
       WHERE        (TABLE_NAME = N'FormItems') AND (COLUMN_NAME = N'CheckDate') AND (CHARACTER_MAXIMUM_LENGTH = 10))
BEGIN
    ALTER TABLE FormItems	ALTER COLUMN CheckDate CHAR(10)
	UPDATE  FormItems set  CheckDate = CASE WHEN CheckDate<'50/12/29' THEN '14'+CheckDate ELSE '13'+CheckDate END
	where (len(CheckDate)=8) 
END

--------------------------------------------------------------------------------------------------------------
IF NOT  EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts_PersonID3_ReciptState'))
CREATE NONCLUSTERED INDEX IX_Recipts_PersonID3_ReciptState ON Recipts (PersonID3,ReciptState) INCLUDE (ReciptType)

IF NOT  EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts4Form'))
CREATE NONCLUSTERED INDEX IX_Recipts4Form ON dbo.Recipts (ReciptType,YearID,StoreID,ReciptNumber,ReciptDate,PersonID1,PersonID2,SellsEmporium)
                                                 INCLUDE (PersonID3,PersonID4)

IF NOT  EXISTS (select * from sysindexes WHERE     (name = N'IX_ReciptItems4Form'))
CREATE NONCLUSTERED INDEX IX_ReciptItems4Form ON dbo.ReciptItems (StuffCode) INCLUDE (InputEntity,OutputEntity,preReciptItemID,PrvYearID)


IF NOT  EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts_AccountBalance'))
CREATE NONCLUSTERED INDEX IX_Recipts_AccountBalance ON Recipts(	ReciptDate ASC,	ReciptState ASC,	SellsMethod ASC,	SellsEmporium ASC,	YearID ASC) ON [PRIMARY]

IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts_C'))
CREATE NONCLUSTERED INDEX IX_Recipts_C ON Recipts(	ReciptDate ASC,	ReciptState ASC,	YearID ASC) ON [PRIMARY]

IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Forms_AccountBalance'))
CREATE NONCLUSTERED INDEX IX_Forms_AccountBalance ON Forms(	CustomerID1 ASC,	FormDate ASC,	YearID ASC,	FormState ASC,	SellsEmporium ASC) ON [PRIMARY]

IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Forms_cashBalance'))
CREATE NONCLUSTERED INDEX IX_Forms_cashBalance ON Forms(	FormDate ASC,	FormState ASC,	YearID ASC,	SellsMethod ASC,	SellsEmporium ASC) ON [PRIMARY]

IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Forms4Doc'))
CREATE NONCLUSTERED INDEX IX_Forms4Doc
ON dbo.Forms (FormNumber,FormDate,CustomerID1,PayTypes,FormState,SellsEmporium)
INCLUDE (FormType,CustomerID2,Amount,TopicCode,DetailCode,CTopicCode,FomNote,AidInfoNo,AidInfoDate,CTopicCode2,TopicTypes,DocNo,CustomerID3,CTopicCode3,ArzTypeID,ArzAmount,PO)


IF NOT EXISTS (select * from sysindexes WHERE     (name = N'INDEX_ReciptDate_ReciptState'))
CREATE NONCLUSTERED INDEX INDEX_ReciptDate_ReciptState ON Recipts(	ReciptDate ASC,	ReciptState ASC)
INCLUDE ( 	ReciptID,	StoreID,	ReciptType,	StoreID2,	ServerID,	YearID)  ON [PRIMARY]

IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts_PersonID2'))
CREATE NONCLUSTERED INDEX IX_Recipts_PersonID2 ON Recipts(	PersonID2 ASC,	ReciptNumber ASC,	ReciptDate ASC,	ReciptType ASC,	ReciptState ASC,	YearID ASC,	PersonID3 ASC)
INCLUDE ( 	ReciptID,	SellsMethod,	ServerID)  ON [PRIMARY]


IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_rEC'))
CREATE NONCLUSTERED INDEX IX_rEC ON Recipts(SecondType ASC,	StoreID ASC,	ReciptNumber ASC,	ReciptDate ASC,	PersonID1 ASC,	ReciptType ASC,	ReciptState ASC
   ,	SellsEmporium ASC,	YearID ASC,	PersonID3 ASC)
INCLUDE ( 	ReciptID,	PersonID2,	DocNo,	DocDate,	ReciptNote,	AidNumber,	AidDate,	StoreID2,	TruckNumber,	MachineNo,	MachineName,
	SellsMethod,	ServerID,	MachineInfo)  ON [PRIMARY]
 
 IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts4Cardex2'))
CREATE NONCLUSTERED INDEX IX_Recipts4Cardex2 ON Recipts(	ReciptDate ASC,	ReciptState ASC,	YearID ASC,	PersonID3 ASC)
INCLUDE ( 	ReciptID,	StoreID,	PersonID1,	PersonID2,	ReciptType,	StoreID2,	ServerID)  ON [PRIMARY]


IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Forms_FormDate_FormState_YearID'))
CREATE NONCLUSTERED INDEX IX_Forms_FormDate_FormState_YearID ON Forms(	FormDate ASC,	FormState ASC,	YearID ASC)
INCLUDE ( 	FormID,	ServerID)  ON [PRIMARY]

IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Forms_FormType'))
CREATE NONCLUSTERED INDEX IX_Forms_FormType ON Forms(	FormType ASC)
INCLUDE ( 	FormID,	FormNumber,	FormDate,	CustomerID1,	CustomerID2,	Amount,	BudgetCode,	ProjectID,	FomNote,	AidInfoNo,	AidInfoDate,	CustomerName2,
	PayTypes,	RelatedID,	ServerID,	YearID,	SellsMethod,	SellsEmporium,	DefaultDate,	CustomerID3,	ArzAmount,	DefaultDuration)  ON [PRIMARY]

IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Forms_FormType_Date_State_Year'))
CREATE NONCLUSTERED INDEX IX_Forms_FormType_Date_State_Year ON Forms(	FormType ASC,	FormDate ASC,	FormState ASC,	YearID ASC)
INCLUDE ( 	FormID,	ServerID)  ON [PRIMARY]

IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts_FormType_FormNumber'))
CREATE NONCLUSTERED INDEX IX_Recipts_FormType_FormNumber ON Forms
(	FormType ASC,	FormNumber ASC,	FormDate ASC,	CustomerID1 ASC,	CustomerID2 ASC,	FormState ASC,	YearID ASC,	SellsMethod ASC,	SellsEmporium ASC)
INCLUDE ( 	FormID,	Amount,	BudgetCode,	ProjectID,	TopicCode,	DetailCode,	CTopicCode,	FomNote,	AidInfoNo,	AidInfoDate,	CTopicCode2,	CustomerName2,
	PayTypes,	TopicTypes,	DocNo,	DocDate,	FirstUser,	LastUser,	ServerID,	DefaultDate,	CustomerID3,	UserRegistrationDoc,	DefaultDuration)  ON [PRIMARY]


IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Forms_FormType_CustomerID2'))
CREATE NONCLUSTERED INDEX IX_Forms_FormType_CustomerID2 ON Forms
(	FormType ASC,	CustomerID2 ASC,	FormNumber ASC,	FormDate ASC,	CustomerID1 ASC,	FormState ASC,	YearID ASC,	SellsMethod ASC,	SellsEmporium ASC)
INCLUDE ( 	FormID,	Amount,	BudgetCode,	ProjectID,	TopicCode,	DetailCode,	CTopicCode,	FomNote,	AidInfoNo,	AidInfoDate,	CTopicCode2,	CustomerName2,
	PayTypes,	TopicTypes,	DocNo,	DocDate,	FirstUser,	LastUser,	ServerID,	DefaultDate,	CustomerID3,	UserRegistrationDoc,	DefaultDuration)  ON [PRIMARY]

--CREATE NONCLUSTERED INDEX Recipts_2 ON Recipts
--(	ReciptType ASC,	YearID ASC,	StoreID ASC,	ReciptNumber ASC,	ReciptDate ASC,	ReciptState ASC,	AidNumber ASC)
--INCLUDE ( 	ReciptID,	ServerID,	TozinID)  ON [PRIMARY]

IF NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_MakeDoc_StuffCoding1'))
CREATE NONCLUSTERED INDEX IX_MakeDoc_StuffCoding1 ON StuffCoding
(	OwnerShipKind ASC)
INCLUDE ( 	c_StuffCode,	c_StuffName,	acc_DetaiCode,	acc_CTopicCode,	acc_CTopicCode2,	Acc_BidTopicCode,	Commission)  ON [PRIMARY]

IF NOT  EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts_AccountBalanceTozin'))
CREATE NONCLUSTERED INDEX IX_Recipts_AccountBalanceTozin ON dbo.Tozin
(	ReciptType ASC,	TozinNumber ASC,	TozinDate ASC,	StuffCode ASC,	PersonID1 ASC,	StoreID ASC,	PersonID2 ASC,	YearID ASC)
INCLUDE ( 	TozinID,	MachineName,	MachineNo,	MachineWeight,	MachineFullWeight,	TozinNote,	EnterDate,	ExitDate,	FirstUser,	LastUser,	MoistureContent,
	RisingUseful,	RisingNonUseFul,	IsSystem,	ReciptID,	TozinState,	NumberOfBags,	ServerID,	ParentReciptItemID,	StoreID2,	PrvYearID)  ON [PRIMARY]

IF NOT  EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts_AccountBalance2'))
CREATE NONCLUSTERED INDEX IX_Recipts_AccountBalance2 ON dbo.Recipts
(	StoreID ASC,	ReciptNumber ASC,	ReciptDate ASC,	PersonID1 ASC,	ReciptType ASC,	UseUnitID ASC,	SellsMethod ASC,	SellsEmporium ASC,	MasirID ASC,
	YearID ASC,	PersonID3 ASC)
INCLUDE ( 	ReciptID,	PersonID2,	SecondType,	DocNo,	DocDate,	ReciptNote,	ParentReciptID,	ModifyDate,	ReciptState,	AidNumber,	AidDate,	FirstUser,
	LastUser,	StoreID2,	UseOtherID,	ReciptsRow,	ServerID)  ON [PRIMARY]



IF NOT  EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts__ReciptState_SellsMethod_SellsEmporium_YearID'))
CREATE NONCLUSTERED INDEX IX_Recipts__ReciptState_SellsMethod_SellsEmporium_YearID
ON dbo.Recipts (ReciptState,SellsMethod,SellsEmporium,YearID)
INCLUDE (StoreID,ReciptNumber,ReciptDate,PersonID1,PersonID2,ReciptType,SecondType,ReciptNote,ArzTypeID,RialsEqual,RelatedID,DefaultDate,DefaultDuration,PortageBedbes)


IF NOT  EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts__ReciptState_SellsMethod_SellsEmporium_YearID2'))
CREATE NONCLUSTERED INDEX IX_Recipts__ReciptState_SellsMethod_SellsEmporium_YearID2
ON dbo.Recipts (ReciptState,SellsMethod,SellsEmporium,YearID)
INCLUDE (StoreID,ReciptNumber,ReciptDate,PersonID1,PersonID2,ReciptType,SecondType,ReciptNote,ArzTypeID,RialsEqual,PersonID2Bed,RelatedID,PersonID3,DefaultDate,DefaultDuration)


IF NOT  EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts_YearID_ParentCoReciptID'))
CREATE NONCLUSTERED INDEX IX_Recipts_YearID_ParentCoReciptID ON dbo.Recipts (YearID) INCLUDE (ParentCoReciptID)


IF NOT  EXISTS (select * from sysindexes WHERE     (name = N'IX_ServerID_YearID_ParentCoReciptID'))
CREATE NONCLUSTERED INDEX IX_ServerID_YearID_ParentCoReciptID ON dbo.Recipts (ServerID,YearID,ParentCoReciptID)


IF NOT  EXISTS (select * from sysindexes WHERE     (name = N'IX_ReciptPurchaseEffect_ReciptItemID'))
 CREATE NONCLUSTERED INDEX IX_ReciptPurchaseEffect_ReciptItemID ON ReciptPurchaseEffect (ReciptItemID)
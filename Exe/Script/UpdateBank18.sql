----UP18    1401/05/11
set nocount on

IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'WF_TransWorkFlow') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE WF_TransWorkFlow(
	ID int IDENTITY(1,1) NOT NULL,
	kind tinyint NOT NULL,
	ServerID int NOT NULL,
	YearID int NOT NULL,
	FormID int NOT NULL,
	FormType tinyint NOT NULL,
	ModifyDate datetime NOT NULL,
	UserID int NOT NULL,
	PositionCode int NOT NULL,
	SortAccept tinyint NOT NULL,
	State tinyint NOT NULL,
	Note nvarchar(100) NULL,
 CONSTRAINT PK_WorkFlow PRIMARY KEY CLUSTERED 
(
	ID ASC
) ON [PRIMARY]
) ON [PRIMARY]



IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'WF_FlowFroms') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE WF_FlowFroms(
	ID int IDENTITY(1,1) NOT NULL,
	Kind tinyint NOT NULL,
	FormTypeNum int NOT NULL,
	PositionCode int NOT NULL,
	SortAccept tinyint NULL,
	TitleControl nvarchar(50) NULL,
	StateAfterPost tinyint NULL,
	Note nvarchar(500) NULL,
	CancelSortAccept tinyint  NOT NULL CONSTRAINT DF_WF_FlowFroms_CancelSortAccept DEFAULT (0) ,
 CONSTRAINT PK_TurnFroms PRIMARY KEY CLUSTERED 
(
	ID ASC
) ON [PRIMARY]
) ON [PRIMARY]


if ( COLUMNPROPERTY( OBJECT_ID('WF_FlowFroms'),'CancelSortAccept','IsRowGuidCol')is null )
 ALTER TABLE WF_FlowFroms ADD CancelSortAccept tinyint  NOT NULL CONSTRAINT DF_WF_FlowFroms_CancelSortAccept DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('WF_TransWorkFlow'),'UserCitation','IsRowGuidCol')is null )
 ALTER TABLE WF_TransWorkFlow ADD UserCitation int  NOT NULL CONSTRAINT DF_WF_TransWorkFlow_UserCitation DEFAULT (0)

 
--------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'StuffCodeTemp') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE StuffCodeTemp(
	ID int IDENTITY(1,1) NOT NULL,
	StuffCode bigint NOT NULL,
	ReciptType int NOT NULL,
	UserID int NOT NULL,
 CONSTRAINT PK_StuffCodeTemp PRIMARY KEY CLUSTERED 
( ID ASC
) ON [PRIMARY]
) ON [PRIMARY]

if ( COLUMNPROPERTY( OBJECT_ID('StuffCodeTemp'),'ID','IsRowGuidCol')is null )
begin
  ALTER TABLE StuffCodeTemp ADD ID int IDENTITY(1,1) NOT NULL
  ALTER TABLE StuffCodeTemp DROP CONSTRAINT PK_StuffCodeTemp
end

IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_StuffCodeTemp' AND type = 'K')
ALTER TABLE StuffCodeTemp ADD CONSTRAINT PK_StuffCodeTemp PRIMARY KEY CLUSTERED (ID ASC) ON [PRIMARY]
 
--------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------

IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes1') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
EXEC sp_rename 'ReciptTypes', 'ReciptTypes1'

CREATE TABLE ReciptTypes2(
	ReciptType2 tinyint NOT NULL,
	CorrelateCoReciptNumber_Kind Tinyint NOT NULL  DEFAULT (1) ,
	 CONSTRAINT FK_ReciptTypes2_ReciptTypes1 FOREIGN KEY(ReciptType2)
REFERENCES ReciptTypes1 (ReciptType) ON UPDATE CASCADE ON DELETE CASCADE,
 CONSTRAINT PK_ReciptTypes2 PRIMARY KEY CLUSTERED 
(
	ReciptType2 ASC
) ON [PRIMARY]
) ON [PRIMARY] 

INSERT INTO  ReciptTypes2 (ReciptType2)
  SELECT     ReciptType  FROM   ReciptTypes1
  Where ReciptType not in( SELECT     ReciptType2  FROM   ReciptTypes2 )

END


IF EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'StuffsDeficitsRange') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE StuffsDeficitsRange


IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Tsh.FunctionOther') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE Tsh.FunctionOther(
	FunctionOtherId int IDENTITY(1, 1),
	YearNO int  NOT NULL,
	MonthNO int  NOT NULL,
	PersonId int NOT NULL , -- CustId  11,13,14,19
	FunctionOtherKind int NOT NULL CONSTRAINT DF_FunctionOther_FunctionOtherKind  DEFAULT (0) ,
	FunctionOtherhour char(5),
CONSTRAINT PK_FunctionOther PRIMARY KEY CLUSTERED 
(
	FunctionOtherId ASC
) ON [PRIMARY]
) ON [PRIMARY]

END


IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FunctionOther_Customers1' AND type = 'F')
ALTER TABLE Tsh.FunctionOther
WITH CHECK ADD CONSTRAINT FK_FunctionOther_Customers1 FOREIGN KEY (PersonId)
REFERENCES dbo.Customers(CustID)


IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Tsh.Calendar') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE Tsh.Calendar(
	CalendarDate char(10) NOT NULL,
	YearNO int  NOT NULL,
	MonthNO int  NOT NULL,
	DayNo int  NOT NULL,
	WeekDayID int  NOT NULL,
    WeekDayName Nvarchar(10),
	CalendarKind int NOT NULL CONSTRAINT DF_Calendar_CalendarKind  DEFAULT (0) ,
	WeekInYear int NOT NULL ,
CONSTRAINT PK_Calendar PRIMARY KEY CLUSTERED 
(
	CalendarDate ASC
) ON [PRIMARY]
) ON [PRIMARY]

END

if ( COLUMNPROPERTY( OBJECT_ID('Tsh.Calendar'),'WeekInYear','IsRowGuidCol')is null )
 ALTER TABLE Tsh.Calendar ADD WeekInYear int 


IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'CustomersOtherGroups') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE CustomersOtherGroups(
 CustID int NOT NULL,
 CustomerGrpID int NOT NULL CONSTRAINT DF_CustomersOtherGroups_CustomerGrpID  DEFAULT ((0)) ,
 CONSTRAINT FK_CustomersOtherGroups_Customers FOREIGN KEY(CustID) REFERENCES Customers (CustID) ON UPDATE CASCADE ON DELETE CASCADE,
 CONSTRAINT FK_CustomersOtherGroups_CustomersGroup FOREIGN KEY(CustomerGrpID)REFERENCES CustomersGroup (CustomerGrpID)ON DELETE CASCADE ,
 CONSTRAINT PK_CustomersOtherGroups PRIMARY KEY CLUSTERED  (CustID ASC,CustomerGrpID ASC ) ON [PRIMARY] ) ON [PRIMARY]


IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'CustomersAlternative') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE CustomersAlternative(
	CustID int NOT NULL,
	AlternativeID bigint NOT NULL,
CONSTRAINT FK_CustomersAlternative_Customers FOREIGN KEY(CustID) REFERENCES Customers (CustID)ON UPDATE CASCADE ,
CONSTRAINT PK_CustomersAlternative PRIMARY KEY CLUSTERED (	CustID ASC,	AlternativeID ASC) ON [PRIMARY]) ON [PRIMARY]


IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'StoresAlternative') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE StoresAlternative(
	StoreID Smallint NOT NULL,
	AlternativeID bigint NOT NULL,
CONSTRAINT FK_StoresAlternative_Stores FOREIGN KEY(StoreID) REFERENCES Stores (n_StoreID)ON UPDATE CASCADE ,
CONSTRAINT PK_StoresAlternative PRIMARY KEY CLUSTERED (	StoreID ASC,	AlternativeID ASC) ON [PRIMARY]) ON [PRIMARY]

if ( COLUMNPROPERTY( OBJECT_ID('Severable'),'ArzAmount','IsRowGuidCol')is null )
 ALTER TABLE Severable ADD ArzAmount decimal(18, 4) NOT NULL DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Severable'),'CTopicCode3','IsRowGuidCol')is null )
 ALTER TABLE Severable ADD CTopicCode3 varchar(12)  NOT NULL CONSTRAINT DF_Severable_CTopicCode3 DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Severable'),'ArzTypeID','IsRowGuidCol')is  null )  
ALTER TABLE Severable ADD ArzTypeID int 

if ( COLUMNPROPERTY( OBJECT_ID('Severable'),'ArzRate','IsRowGuidCol')is  null )  
ALTER TABLE Severable ADD ArzRate Float 

 
if not exists (select * from sysindexes WHERE     (name = N'IX_LookUps'))
CREATE  NONCLUSTERED INDEX IX_LookUps ON LookUps
	(Kind,	Code	) 

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'HCForoushandeType1Code','IsRowGuidCol')is  null )  
ALTER TABLE Customers ADD HCForoushandeType1Code Tinyint  NOT NULL CONSTRAINT DF_Customers_HCForoushandeType1Code  DEFAULT (1)

if ( COLUMNPROPERTY( OBJECT_ID('FormItems'),'DayDelay','IsRowGuidCol')is null )
 ALTER TABLE FormItems ADD DayDelay int

if ( COLUMNPROPERTY( OBJECT_ID('FormItems'),'AmountDelay','IsRowGuidCol')is null )
 ALTER TABLE FormItems ADD AmountDelay decimal(18, 4) NOT NULL CONSTRAINT DF_FormItems_AmountDelay DEFAULT (0)

if not exists (select * from dbo.sysobjects where id = object_id(N'ReciptsPayments') and OBJECTPROPERTY(id,N'IsUserTable') = 1) 
begin 
	  CREATE TABLE ReciptsPayments (
	  ReciptsPaymentID int IDENTITY (1, 1) NOT NULL ,   
	  ReciptID int NOT NULL,	ServerID int NOT NULL,	YearID int NOT NULL,
	  CustID int NOT NULL ,
	  PaymentCo float   ,
	  Payment money  NOT NULL ,
	  Note  varchar(100),
	  PaymentKind tinyint  NOT NULL CONSTRAINT DF_ReciptsPayments_PaymentKind  DEFAULT (9),	  
	  CONSTRAINT PK_ReciptsPayments PRIMARY KEY CLUSTERED	(ReciptsPaymentID) ON [PRIMARY],
	  CONSTRAINT FK_ReciptsPayments_Customers FOREIGN KEY (CustID) 
	    REFERENCES Customers (CustID) ON UPDATE CASCADE ,
	  CONSTRAINT FK_ReciptsPayments_Recipts FOREIGN KEY(ReciptID, ServerID, YearID)
        REFERENCES Recipts (ReciptID, ServerID, YearID)ON UPDATE CASCADE ON DELETE CASCADE	  )ON [PRIMARY] 
end

if ( COLUMNPROPERTY( OBJECT_ID('ReciptsPayments'),'PaymentCo','IsRowGuidCol')is null )
 ALTER TABLE ReciptsPayments ADD PaymentCo float

if ( COLUMNPROPERTY( OBJECT_ID('ReciptsPayments'),'PaymentKind','IsRowGuidCol')is null )
 ALTER TABLE ReciptsPayments ADD PaymentKind tinyint  NOT NULL CONSTRAINT DF_ReciptsPayments_PaymentKind  DEFAULT (9)

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'Max4WaterCo','IsRowGuidCol')is null )
 ALTER TABLE Customers ADD Max4WaterCo decimal(18, 4) NOT NULL CONSTRAINT DF_Customers_Max4WaterCo DEFAULT (0)


IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes2') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
	if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'AutoInsertPostInsert','IsRowGuidCol')is  null )  
	ALTER TABLE ReciptTypes2 ADD AutoInsertPostInsert Tinyint  NOT NULL CONSTRAINT DF_ReciptTypes2_AutoInsertPostInsert  DEFAULT (0) 

	--IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes2') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
	if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'ControlPrintingByDate','IsRowGuidCol')is  null )  
	ALTER TABLE ReciptTypes2 ADD ControlPrintingByDate Tinyint  NOT NULL CONSTRAINT DF_ReciptTypes2_ControlPrintingByDate  DEFAULT (0) 

	--IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes2') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
	if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'DisplayStatusBar','IsRowGuidCol')is  null )  
	ALTER TABLE ReciptTypes2 ADD DisplayStatusBar Tinyint  NOT NULL CONSTRAINT DF_ReciptTypes2_DisplayStatusBar  DEFAULT (3) 

	if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'PrimaryReciptType','IsRowGuidCol')is  null )  
	ALTER TABLE ReciptTypes2 ADD PrimaryReciptType Tinyint  NOT NULL CONSTRAINT DF_ReciptTypes2_PrimaryReciptType  DEFAULT (0) 

	if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'CustomerGrpID4Add2Customers1','IsRowGuidCol')is  null )  
	ALTER TABLE ReciptTypes2 ADD CustomerGrpID4Add2Customers1 int  NOT NULL CONSTRAINT DF_ReciptTypes2_CustomerGrpID4Add2Customers1 DEFAULT (0) 

	if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'CustomerGrpID4Add2Customers2','IsRowGuidCol')is  null )  
	ALTER TABLE ReciptTypes2 ADD CustomerGrpID4Add2Customers2 int  NOT NULL CONSTRAINT DF_ReciptTypes2_CustomerGrpID4Add2Customers2 DEFAULT (0) 

	if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'RecuestActive','IsRowGuidCol')is  null )  
	ALTER TABLE ReciptTypes2 ADD RecuestActive bigint  NOT NULL CONSTRAINT DF_ReciptTypes2_RecuestActive DEFAULT (0) 	
	
	if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'PaymentsActive','IsRowGuidCol')is  null )  
	ALTER TABLE ReciptTypes2 ADD PaymentsActive Tinyint  NOT NULL CONSTRAINT DF_ReciptTypes2_PaymentsActive DEFAULT (1) 

	if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'AmountInAccountForm','IsRowGuidCol')is  null )  
	ALTER TABLE ReciptTypes2 ADD AmountInAccountForm Tinyint  NOT NULL CONSTRAINT DF_ReciptTypes2_AmountInAccountForm DEFAULT (0) 		

	if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'WorkFlowID','IsRowGuidCol')is  null )  
	ALTER TABLE ReciptTypes2 ADD WorkFlowID int  

    if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'StandardConsumptionActive','IsRowGuidCol')is  null )  
      ALTER TABLE ReciptTypes2 ADD StandardConsumptionActive Tinyint  NOT NULL CONSTRAINT DF_ReciptTypes2_StandardConsumptionActive DEFAULT (0) 
	  
    if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'AidNumberUnic','IsRowGuidCol')is  null )  
      ALTER TABLE ReciptTypes2 ADD AidNumberUnic Tinyint  NOT NULL CONSTRAINT DF_ReciptTypes2_AidNumberUnic DEFAULT (0) 
	  	
    if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'AlloyDiameterSizeDividedByAMillion','IsRowGuidCol')is  null )  
      ALTER TABLE ReciptTypes2 ADD AlloyDiameterSizeDividedByAMillion Tinyint  NOT NULL CONSTRAINT DF_ReciptTypes2_AlloyDiameterSizeDividedByAMillion DEFAULT (0) 

    if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'MinAmountOfGiftItems','IsRowGuidCol')is  null )  
      ALTER TABLE ReciptTypes2 ADD MinAmountOfGiftItems int  NOT NULL CONSTRAINT DF_ReciptTypes2_MinAmountOfGiftItems DEFAULT (0) 

    if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'PercentGiftItems','IsRowGuidCol')is  null )  
      ALTER TABLE ReciptTypes2 ADD PercentGiftItems float   
	  
    if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'ActiveGiftItems','IsRowGuidCol')is  null )  
      ALTER TABLE ReciptTypes2 ADD ActiveGiftItems int  NOT NULL CONSTRAINT DF_ReciptTypes2_ActiveGiftItems DEFAULT (0) 

    --if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'CheckBoxField','IsRowGuidCol')is  null )  
    --  ALTER TABLE ReciptTypes2 ADD CheckBoxField Bigint  


    if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'SyntheticCodeField','IsRowGuidCol')is  null )  
        ALTER TABLE ReciptTypes2 ADD SyntheticCodeField VarChar (250) 
 
    if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'SyntheticCodeInField','IsRowGuidCol')is  null )  
        ALTER TABLE ReciptTypes2 ADD SyntheticCodeInField VarChar (250) 
	  
    if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'StuffCodingAddField','IsRowGuidCol')is  null )  
        ALTER TABLE ReciptTypes2 ADD StuffCodingAddField VarChar (250) 
 
    if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'StuffCodingAddFieldCaption','IsRowGuidCol')is  null )  
        ALTER TABLE ReciptTypes2 ADD StuffCodingAddFieldCaption VarChar (250) 

    if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'StoreKindProductModel','IsRowGuidCol')is  null )  
       ALTER TABLE ReciptTypes2 ADD StoreKindProductModel VarChar (50) 

   if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'CustomerKindPayments','IsRowGuidCol')is null )
    ALTER TABLE ReciptTypes2 ADD CustomerKindPayments nvarchar(50) NOT NULL  CONSTRAINT DF_ReciptTypes2_CustomerKindPayments DEFAULT ('1,2') 


	 if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'Person4Active','IsRowGuidCol')is null )
	 ALTER TABLE ReciptTypes2 ADD Person4Active Tinyint NOT NULL CONSTRAINT DF_ReciptTypes2_Person4Active DEFAULT (0)
 
	 if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'Person4Caption','IsRowGuidCol')is null )
	 ALTER TABLE ReciptTypes2 ADD Person4Caption nvarchar(50)
 
	 if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'CustomerKind4','IsRowGuidCol')is null )
	 ALTER TABLE ReciptTypes2 ADD CustomerKind4 nvarchar(50)

    if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'EffectOnCustomer3','IsRowGuidCol')is  null )  
	   ALTER TABLE ReciptTypes2 ADD EffectOnCustomer3 Tinyint NOT NULL  DEFAULT (0) 
 
    if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'EffectOnCustomer4','IsRowGuidCol')is  null )  
	   ALTER TABLE ReciptTypes2 ADD EffectOnCustomer4 Tinyint NOT NULL  DEFAULT (0) 


	 if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'Person5Active','IsRowGuidCol')is null )
	 ALTER TABLE ReciptTypes2 ADD Person5Active Tinyint NOT NULL CONSTRAINT DF_ReciptTypes2_Person5Active DEFAULT (0)
 
	 if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'Person5Caption','IsRowGuidCol')is null )
	 ALTER TABLE ReciptTypes2 ADD Person5Caption nvarchar(50)
 
	 if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'CustomerKind5','IsRowGuidCol')is null )
	 ALTER TABLE ReciptTypes2 ADD CustomerKind5 nvarchar(50)


		
    if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'EffectOnCustomerReg','IsRowGuidCol')is  null )  
	   ALTER TABLE ReciptTypes2 ADD EffectOnCustomerReg Tinyint NOT NULL  DEFAULT (0) 

    if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'RecallTypeOption','IsRowGuidCol')is  null )  
	   ALTER TABLE ReciptTypes2 ADD RecallTypeOption Bigint NOT NULL CONSTRAINT DF_ReciptTypes2_RecallTypeOption DEFAULT (6) 

    if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'DesignFormID','IsRowGuidCol')is  null )  
	   ALTER TABLE ReciptTypes2 ADD DesignFormID int 

    if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'FormulaID','IsRowGuidCol')is  null )  
	   ALTER TABLE ReciptTypes2 ADD FormulaID int 	   

    if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'ReciptCaption_L2','IsRowGuidCol')is  null )  
	   ALTER TABLE ReciptTypes2 ADD ReciptCaption_L2 varchar(70) 	   

    if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'FindParentReciptID','IsRowGuidCol')is  null )  
	   ALTER TABLE ReciptTypes2 ADD FindParentReciptID varchar(30) 	 
	   
    if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'CheckParentReciptID','IsRowGuidCol')is  null )  
	   ALTER TABLE ReciptTypes2 ADD CheckParentReciptID Tinyint NOT NULL CONSTRAINT DF_ReciptTypes2_CheckParentReciptID DEFAULT (0) 	 
	   

    if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'CalcCostStorageCaption','IsRowGuidCol')is  null )  
	   ALTER TABLE ReciptTypes2 ADD CalcCostStorageCaption varchar(30) NOT NULL CONSTRAINT DF_ReciptTypes2_CalcCostStorageCaption DEFAULT ('هزینه انبارداری محاسبه شود') 	 

    if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'AidDateDay','IsRowGuidCol')is  null )  
	   ALTER TABLE ReciptTypes2 ADD AidDateDay int 	   
	     
    if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'FormStateDefault4Doc','IsRowGuidCol')is  null )  
	   ALTER TABLE ReciptTypes2 ADD FormStateDefault4Doc Tinyint  NOT NULL CONSTRAINT DF_ReciptTypes2_FormStateDefault4Doc DEFAULT (0) 	   

	if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'CustomerGrpID4Add2Customers3','IsRowGuidCol')is  null )  
	ALTER TABLE ReciptTypes2 ADD CustomerGrpID4Add2Customers3 int  NOT NULL CONSTRAINT DF_ReciptTypes2_CustomerGrpID4Add2Customers3 DEFAULT (0) 

    if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'MachineNoCaption','IsRowGuidCol')is  null )  
	   ALTER TABLE ReciptTypes2 ADD MachineNoCaption varchar(20) NOT NULL CONSTRAINT DF_ReciptTypes2_MachineNoCaption DEFAULT ('شماره ماشين') 	 

    if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'MachineNameCaption','IsRowGuidCol')is  null )  
	   ALTER TABLE ReciptTypes2 ADD MachineNameCaption varchar(20) NOT NULL CONSTRAINT DF_ReciptTypes2_MachineNameCaption DEFAULT ('نام راننده') 	 


 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_ReciptTypes2_ConstTopicCode_ArzBed' AND type = 'D')
 ALTER TABLE ReciptTypes2 DROP CONSTRAINT DF_ReciptTypes2_ConstTopicCode_ArzBed

	if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'ConstTopicCode_ArzBed','IsRowGuidCol')is  null )  
	ALTER TABLE ReciptTypes2 ADD ConstTopicCode_ArzBed bigint  NOT NULL CONSTRAINT DF_ReciptTypes2_ConstTopicCode_ArzBed DEFAULT (0) 

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_ReciptTypes2_ConstTopicCode_ArzBes' AND type = 'D')
 ALTER TABLE ReciptTypes2 DROP CONSTRAINT DF_ReciptTypes2_ConstTopicCode_ArzBes

	if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'ConstTopicCode_ArzBes','IsRowGuidCol')is  null )  
	ALTER TABLE ReciptTypes2 ADD ConstTopicCode_ArzBes bigint  NOT NULL CONSTRAINT DF_ReciptTypes2_ConstTopicCode_ArzBes DEFAULT (0) 


	if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'Settings','IsRowGuidCol')is  null )  
	ALTER TABLE ReciptTypes2 ADD Settings bigint  NOT NULL CONSTRAINT DF_ReciptTypes2_Settings DEFAULT (0) 

	if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'IneffectiveInputChk','IsRowGuidCol')is  null )  
	ALTER TABLE ReciptTypes2 ADD IneffectiveInputChk Tinyint  NOT NULL CONSTRAINT DF_ReciptTypes2_IneffectiveInputChk DEFAULT (0) 


    if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'OtherFieldCaptions','IsRowGuidCol')is  null )  
      ALTER TABLE ReciptTypes2 ADD OtherFieldCaptions VarChar (500) 

      ALTER TABLE ReciptTypes2 ALTER COLUMN OtherFieldCaptions VARCHAR (500) 

    if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'FieldInTheField','IsRowGuidCol')is  null )  
      ALTER TABLE ReciptTypes2 ADD FieldInTheField VarChar (500) 

      ALTER TABLE ReciptTypes2 ALTER COLUMN FieldInTheField VARCHAR (500) 

    if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'FieldInTheFieldXls','IsRowGuidCol')is  null )  
      ALTER TABLE ReciptTypes2 ADD FieldInTheFieldXls VarChar (500)  

      ALTER TABLE ReciptTypes2 ALTER COLUMN FieldInTheFieldXls VARCHAR (500) 
 
	if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'ExcelRecallMaxAmount','IsRowGuidCol')is  null )  
	ALTER TABLE ReciptTypes2 ADD ExcelRecallMaxAmount Float  NOT NULL CONSTRAINT DF_ReciptTypes2_ExcelRecallMaxAmount DEFAULT (0) 
	  
	if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'FormType4Service','IsRowGuidCol')is  null )  
	ALTER TABLE ReciptTypes2 ADD FormType4Service Tinyint  

	if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'InsuranceValue','IsRowGuidCol')is  null )  
	ALTER TABLE ReciptTypes2 ADD InsuranceValue Float  NOT NULL CONSTRAINT DF_ReciptTypes2_InsuranceValue DEFAULT (0) 

    if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'ReciptsSplit4PersonIDLevelID','IsRowGuidCol')is  null )  
     ALTER TABLE ReciptTypes2 ADD ReciptsSplit4PersonIDLevelID tinyint NOT NULL CONSTRAINT DF_ReciptTypes2_ReciptsSplit4PersonIDLevelID DEFAULT (0) 
		  

    if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'ReciptStatecreatedForm','IsRowGuidCol')is  null )  
     ALTER TABLE ReciptTypes2 ADD ReciptStatecreatedForm tinyint NOT NULL CONSTRAINT DF_ReciptTypes2_ReciptStatecreatedForm DEFAULT (0) 


    if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'IfFirstUserIsNotEdited','IsRowGuidCol')is  null )  
     ALTER TABLE ReciptTypes2 ADD IfFirstUserIsNotEdited VARCHAR (50) 

    if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'ReciptStateSmallerThan','IsRowGuidCol')is  null )  
     ALTER TABLE ReciptTypes2 ADD ReciptStateSmallerThan tinyint NOT NULL CONSTRAINT DF_ReciptTypes2_ReciptStateSmallerThan DEFAULT (3) 

    if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'FillPersonID1From','IsRowGuidCol')is  null )  
     ALTER TABLE ReciptTypes2 ADD FillPersonID1From tinyint NOT NULL CONSTRAINT DF_ReciptTypes2_FillPersonID1From DEFAULT (0) 

   if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'CorrelateReciptState','IsRowGuidCol')is  null )  
   ALTER TABLE ReciptTypes2 ADD CorrelateReciptState tinyint NOT NULL  DEFAULT (0) 


    if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'UseOtherCaption','IsRowGuidCol')is  null )  
     ALTER TABLE ReciptTypes2 ADD UseOtherCaption VARCHAR (50) 

    if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'PriceCo','IsRowGuidCol')is  null )  
     ALTER TABLE ReciptTypes2 ADD PriceCo float NOT NULL  DEFAULT (1.00) 

	 if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes2'),'StereotypyActive','IsRowGuidCol')is null )
	 ALTER TABLE ReciptTypes2 ADD StereotypyActive Tinyint NOT NULL CONSTRAINT DF_ReciptTypes2_StereotypyActive DEFAULT (0)


END

 if  exists (select * from dbo.sysobjects where id = object_id(N'ReciptTypesAccCode') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypesAccCode'),'CustID','IsRowGuidCol')is  null )  
ALTER TABLE ReciptTypesAccCode ADD CustID int  
 
------------------------------------                       ---------------------------------------------------------------
------------------------------------   TopicCode To BigInt  ----------------------------------------------------------------
------------------------------------                       ---------------------------------------------------------------
IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE  (TABLE_NAME = N'Forms') AND (COLUMN_NAME = N'TopicCode') AND (DATA_TYPE = N'bigint'))
begin
IF EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_Forms_TopicCode' AND type = 'D')
ALTER TABLE Forms DROP CONSTRAINT DF_Forms_TopicCode
ALTER TABLE Forms ALTER column TopicCode bigint 
end

IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_Forms_TopicCode' AND type = 'D')
ALTER TABLE Forms ADD CONSTRAINT DF_Forms_TopicCode  DEFAULT (0) FOR TopicCode

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_FormItems_TopicCode' AND type = 'D')
ALTER TABLE FormItems DROP CONSTRAINT DF_FormItems_TopicCode

IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE       (TABLE_NAME = N'FormItems') AND (COLUMN_NAME = N'TopicCode') AND (DATA_TYPE='bigint'))
ALTER TABLE FormItems ALTER column TopicCode bigint 
ALTER TABLE FormItems ADD CONSTRAINT DF_FormItems_TopicCode  DEFAULT (0) FOR TopicCode

IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE       (TABLE_NAME = N'Severable') AND (COLUMN_NAME = N'TopicCode') AND (DATA_TYPE='bigint'))
ALTER TABLE Severable ALTER column TopicCode bigint 


IF EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_Customers_acc_TopicCode' AND type = 'D')
ALTER TABLE Customers DROP CONSTRAINT DF_Customers_acc_TopicCode

IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE       (TABLE_NAME = N'Customers') AND (COLUMN_NAME = N'acc_TopicCode') AND (DATA_TYPE='bigint'))
  ALTER TABLE Customers ALTER column acc_TopicCode bigint 
ALTER TABLE Customers ADD CONSTRAINT DF_Customers_acc_TopicCode  DEFAULT (0) FOR acc_TopicCode


IF EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_CustomersGroup_acc_TopicCode' AND type = 'D')
ALTER TABLE CustomersGroup DROP CONSTRAINT DF_CustomersGroup_acc_TopicCode

IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE       (TABLE_NAME = N'CustomersGroup') AND (COLUMN_NAME = N'acc_TopicCode') AND (DATA_TYPE='bigint'))
  ALTER TABLE CustomersGroup ALTER column acc_TopicCode bigint 

ALTER TABLE CustomersGroup ADD CONSTRAINT DF_CustomersGroup_acc_TopicCode  DEFAULT (0) FOR acc_TopicCode


IF EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_CustomersGroup_acc_ChecksTopicCode' AND type = 'D')
ALTER TABLE CustomersGroup DROP CONSTRAINT DF_CustomersGroup_acc_ChecksTopicCode

IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE       (TABLE_NAME = N'CustomersGroup') AND (COLUMN_NAME = N'acc_ChecksTopicCode') AND (DATA_TYPE='bigint'))
ALTER TABLE CustomersGroup ALTER column acc_ChecksTopicCode bigint 

ALTER TABLE CustomersGroup ADD CONSTRAINT DF_CustomersGroup_acc_ChecksTopicCode  DEFAULT (0) FOR acc_ChecksTopicCode

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_CustomersGroup_acc_ReChecksTopicCode' AND type = 'D')
ALTER TABLE CustomersGroup DROP CONSTRAINT DF_CustomersGroup_acc_ReChecksTopicCode

IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE (TABLE_NAME = N'CustomersGroup') AND (COLUMN_NAME = N'acc_ReChecksTopicCode') AND (DATA_TYPE='bigint'))
  ALTER TABLE CustomersGroup ALTER column acc_ReChecksTopicCode bigint 

ALTER TABLE CustomersGroup ADD CONSTRAINT DF_CustomersGroup_acc_ReChecksTopicCode  DEFAULT (0) FOR acc_ReChecksTopicCode


IF EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_CustomersGroup_acc_CertifyTopicCode' AND type = 'D')
ALTER TABLE CustomersGroup DROP CONSTRAINT DF_CustomersGroup_acc_CertifyTopicCode

IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE (TABLE_NAME = N'CustomersGroup') AND (COLUMN_NAME = N'acc_CertifyTopicCode') AND (DATA_TYPE='bigint'))
ALTER TABLE CustomersGroup ALTER column acc_CertifyTopicCode bigint 

ALTER TABLE CustomersGroup ADD CONSTRAINT DF_CustomersGroup_acc_CertifyTopicCode  DEFAULT (0) FOR acc_CertifyTopicCode

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_Deficits_acc_TopicCode' AND type = 'D')
ALTER TABLE Deficits DROP CONSTRAINT DF_Deficits_acc_TopicCode

IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE (TABLE_NAME = N'Deficits') AND (COLUMN_NAME = N'acc_TopicCode') AND (DATA_TYPE='bigint'))
ALTER TABLE Deficits ALTER column acc_TopicCode bigint 

ALTER TABLE Deficits ADD CONSTRAINT DF_Deficits_acc_TopicCode  DEFAULT (0) FOR acc_TopicCode

IF  EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_ReciptItems_acc_TopicCode' AND type = 'D')
ALTER TABLE ReciptItems DROP CONSTRAINT DF_ReciptItems_acc_TopicCode

IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE (TABLE_NAME = N'ReciptItems') AND (COLUMN_NAME = N'acc_TopicCode') AND (DATA_TYPE='bigint'))
ALTER TABLE ReciptItems ALTER column acc_TopicCode bigint 

ALTER TABLE ReciptItems ADD CONSTRAINT DF_ReciptItems_acc_TopicCode  DEFAULT (0) FOR acc_TopicCode

IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE  (TABLE_NAME = N'StuffGroups') AND (COLUMN_NAME = N'acc_IncomeTopicCode') AND (DATA_TYPE = N'bigint'))
BEGIN

	EXEC DBO.DROP_CONSTRAINT  'DF%Deficits%Obvers%', 'Deficits'
	ALTER TABLE Deficits ALTER column ObverseTopicCode bigint 
	ALTER TABLE Deficits ADD CONSTRAINT DF_Deficits_ObverseTopicCode  DEFAULT (0) FOR ObverseTopicCode

	EXEC DBO.DROP_CONSTRAINT  'DF%UseUnits%acc_To%', 'UseUnits'
	ALTER TABLE UseUnits ALTER column acc_TopicCode bigint 
	ALTER TABLE UseUnits ADD CONSTRAINT DF_UseUnits_acc_TopicCode  DEFAULT (0) FOR acc_TopicCode

	EXEC DBO.DROP_CONSTRAINT  'DF%LookUps%acc_Top%', 'LookUps'
	ALTER TABLE LookUps ALTER column acc_TopicCode bigint 
	ALTER TABLE LookUps ADD CONSTRAINT DF_LookUps_acc_TopicCode  DEFAULT (0) FOR acc_TopicCode

	EXEC DBO.DROP_CONSTRAINT  'DF%Stores%accTopic%', 'Stores'
	ALTER TABLE Stores ALTER column accTopicCodeCostDownSave bigint 
	ALTER TABLE Stores ADD CONSTRAINT DF_Stores_accTopicCodeCostDownSave DEFAULT (0) FOR accTopicCodeCostDownSave

	EXEC DBO.DROP_CONSTRAINT  'DF__StuffGrou__acc_A%', 'StuffGroups'
	ALTER TABLE StuffGroups DROP CONSTRAINT DF_StuffGroups_acc_IncomTopicCode
	ALTER TABLE StuffGroups ALTER column acc_IncomeTopicCode bigint 
	ALTER TABLE StuffGroups ADD CONSTRAINT DF_StuffGroups_acc_IncomTopicCode  DEFAULT (0) FOR acc_IncomeTopicCode
END

IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE (TABLE_NAME = N'Stores') AND (COLUMN_NAME = N'c_accTopicCode') AND (DATA_TYPE='bigint'))
ALTER TABLE Stores ALTER column c_accTopicCode bigint 

IF not  EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_Stores_c_accTopicCode' AND type = 'D')
ALTER TABLE Stores ADD CONSTRAINT DF_Stores_c_accTopicCode  DEFAULT (0) FOR c_accTopicCode

IF  EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_StuffGroups_acc_BidTopicCode' AND type = 'D')
ALTER TABLE StuffGroups DROP CONSTRAINT DF_StuffGroups_acc_BidTopicCode

IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE (TABLE_NAME = N'StuffGroups') AND (COLUMN_NAME = N'acc_BidTopicCode') AND (DATA_TYPE='bigint'))
ALTER TABLE StuffGroups ALTER column acc_BidTopicCode bigint 

ALTER TABLE StuffGroups ADD CONSTRAINT DF_StuffGroups_acc_BidTopicCode  DEFAULT (0) FOR acc_BidTopicCode

IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE (TABLE_NAME = N'StuffGroups') AND (COLUMN_NAME = N'acc_AFootInComingTopicCode') AND (DATA_TYPE='bigint'))
begin
IF  EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_StuffGroups_acc_AFootInComingTopicCode' AND type = 'D')
ALTER TABLE StuffGroups DROP CONSTRAINT DF_StuffGroups_acc_AFootInComingTopicCode
ALTER TABLE StuffGroups ALTER column acc_AFootInComingTopicCode bigint 
ALTER TABLE StuffGroups ADD CONSTRAINT DF_StuffGroups_acc_AFootInComingTopicCode  DEFAULT (0) FOR acc_AFootInComingTopicCode
end

IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS     
WHERE  (TABLE_NAME = N'ReciptTypes1') AND (COLUMN_NAME = N'Deficate_TopicCode') AND (DATA_TYPE = N'bigint'))
BEGIN
	EXEC DBO.DROP_CONSTRAINT   'DF_%Stuffcodi%_Acc_%', 'Stuffcoding'
	--ALTER TABLE Stuffcoding  DROP CONSTRAINT DF_Stuffcoding_acc_IncomTopicCode
	ALTER TABLE Stuffcoding  ALTER COLUMN acc_IncomeTopicCode bigint 
	ALTER TABLE Stuffcoding  ADD CONSTRAINT DF_Stuffcoding_acc_IncomTopicCode  DEFAULT (0) FOR acc_IncomeTopicCode

	--ALTER TABLE Stuffcoding  DROP CONSTRAINT DF_Stuffcoding_Acc_BidTopicCode
	ALTER TABLE Stuffcoding  ALTER COLUMN Acc_BidTopicCode bigint 
	ALTER TABLE Stuffcoding  ADD CONSTRAINT DF_Stuffcoding_Acc_BidTopicCode  DEFAULT (0) FOR Acc_BidTopicCode


	ALTER TABLE Stuffcoding  ALTER COLUMN Acc_CommissionTopicCode bigint 
	ALTER TABLE Stuffcoding  ADD CONSTRAINT DF_Stuffcoding_Acc_CommissionTopicCode  DEFAULT (0) FOR Acc_CommissionTopicCode

	EXEC DBO.DROP_CONSTRAINT   'DF%FormTypes%CashW%', 'FormTypes'
	ALTER TABLE FormTypes  ALTER COLUMN CashWageTopicCode bigint 
	ALTER TABLE FormTypes ADD CONSTRAINT DF_FormTypes_CashWageTopicCodee  DEFAULT (0) FOR CashWageTopicCode


	EXEC DROP_CONSTRAINT   'DF%FormTypes%Const%', 'FormTypes'
	ALTER TABLE FormTypes  ALTER COLUMN ConstTopicCode_Bed bigint 
	ALTER TABLE FormTypes ADD CONSTRAINT DF_FormTypes_ConstTopicCode_Bed  DEFAULT (0) FOR ConstTopicCode_Bed

	EXEC DROP_CONSTRAINT   'DF%FormTypes%Const%', 'FormTypes'
	ALTER TABLE FormTypes  ALTER COLUMN ConstTopicCode_Bes bigint 
	ALTER TABLE FormTypes ADD CONSTRAINT DF_FormTypes_ConstTopicCode_Bes  DEFAULT (0) FOR ConstTopicCode_Bes


	EXEC DROP_CONSTRAINT   'DF%ReciptTyp%Const%', 'ReciptTypes1'
	ALTER TABLE ReciptTypes1  ALTER COLUMN ConstTopicCode_Bed bigint 
	ALTER TABLE ReciptTypes1 ADD CONSTRAINT DF_ReciptTypes1_ConstTopicCode_Bed  DEFAULT (0) FOR ConstTopicCode_Bed

	EXEC DROP_CONSTRAINT   'DF%ReciptTyp%Const%', 'ReciptTypes1'
	ALTER TABLE ReciptTypes1  ALTER COLUMN ConstTopicCode_Bes bigint 
	ALTER TABLE ReciptTypes1 ADD CONSTRAINT DF_ReciptTypes1_ConstTopicCode_Bes  DEFAULT (0) FOR ConstTopicCode_Bes


	EXEC DROP_CONSTRAINT   'DF%ReciptTyp%Dec_T%', 'ReciptTypes1'
	ALTER TABLE ReciptTypes1  ALTER COLUMN Dec_TopicCode bigint 
	ALTER TABLE ReciptTypes1 ADD CONSTRAINT DF_ReciptTypes1_Dec_TopicCode  DEFAULT (0) FOR Dec_TopicCode


	ALTER TABLE ReciptTypes1  ALTER COLUMN Deficate_TopicCode bigint 
	IF not  EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_ReciptTypes1_Deficate_TopicCode' AND type = 'D')
	ALTER TABLE ReciptTypes1 ADD CONSTRAINT DF_ReciptTypes1_Deficate_TopicCode  DEFAULT (0) FOR Deficate_TopicCode


END

IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE  (TABLE_NAME = N'ReciptTypesAccCode') AND (COLUMN_NAME = N'TopicCode') AND (DATA_TYPE = N'bigint'))
begin
	DECLARE @S SYSNAME
	DECLARE @SQL NVARCHAR(500)
	SET @S=''
	SET @SQL=''
	WHILE @S is not NULL
	BEGIN
		SELECT  @S= name
			FROM   sysobjects 
		WHERE (xtype='D') and parent_obj= OBJECT_ID('ReciptTypesAccCode')

		IF @S<>'' or @S<>NULL
		BEGIN
			SET @SQL='ALTER TABLE ReciptTypesAccCode DROP CONSTRAINT '+@S
			exec(@SQL)
			SET @S=''
		END
		ELSE 
		SET	@S=NULL
	END
------------------------	EXEC DBO.DROP_CONSTRAINT   'DF%ReciptTyp%Topic%', 'ReciptTypesAccCode'
 if  exists (select * from dbo.sysobjects where id = object_id(N'ReciptTypesAccCode') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
	ALTER TABLE ReciptTypesAccCode  ALTER COLUMN TopicCode bigint 
end

if  exists (select * from dbo.sysobjects where id = object_id(N'ReciptTypesAccCode') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
begin
IF not  EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_ReciptTypesAccCode_TopicCode' AND type = 'D')
ALTER TABLE ReciptTypesAccCode  ADD CONSTRAINT DF_ReciptTypesAccCode_TopicCode  DEFAULT (0) FOR TopicCode

IF not  EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_ReciptTypesAccCode_DetailCode' AND type = 'D')
ALTER TABLE ReciptTypesAccCode  ADD CONSTRAINT DF_ReciptTypesAccCode_DetailCode  DEFAULT (0) FOR DetailCode

IF not  EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_ReciptTypesAccCode_CTopicCode' AND type = 'D')
ALTER TABLE ReciptTypesAccCode  ADD CONSTRAINT DF_ReciptTypesAccCode_CTopicCode  DEFAULT (0) FOR CTopicCode

IF not  EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_ReciptTypesAccCode_CTopicCode2' AND type = 'D')
ALTER TABLE ReciptTypesAccCode  ADD CONSTRAINT DF_ReciptTypesAccCode_CTopicCode2  DEFAULT (0) FOR CTopicCode2

IF not  EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_ReciptTypesAccCode_CTopicCode3' AND type = 'D')
ALTER TABLE ReciptTypesAccCode  ADD CONSTRAINT DF_ReciptTypesAccCode_CTopicCode3  DEFAULT (0) FOR CTopicCode3

end


IF not  EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_StuffCoding_acc_CTopicCode3' AND type = 'D')
ALTER TABLE StuffCoding ADD CONSTRAINT DF_StuffCoding_acc_CTopicCode3  DEFAULT (0) FOR acc_CTopicCode3




------------------------------------                       ---------------------------------------------------------------
------------------------------------   TopicCode To BigInt  ----------------------------------------------------------------
------------------------------------                       ---------------------------------------------------------------
if ( COLUMNPROPERTY( OBJECT_ID('SellsEmporiums'),'ServerID','IsRowGuidCol')is null )
 ALTER TABLE SellsEmporiums ADD ServerID int NOT NULL CONSTRAINT DF_SellsEmporiums_ServerID DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('SellsEmporiums'),'TopicCode','IsRowGuidCol')is null )
 ALTER TABLE SellsEmporiums ADD TopicCode bigint  NOT NULL CONSTRAINT DF_SellsEmporiums_TopicCode DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('SellsEmporiums'),'DetailCode','IsRowGuidCol')is null )
 ALTER TABLE SellsEmporiums ADD DetailCode varchar(12)  NOT NULL CONSTRAINT DF_SellsEmporiums_DetailCode DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('SellsEmporiums'),'CTopicCode','IsRowGuidCol')is null )
 ALTER TABLE SellsEmporiums ADD CTopicCode varchar(12)  NOT NULL CONSTRAINT DF_SellsEmporiums_CTopicCode DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('SellsEmporiums'),'CTopicCode2','IsRowGuidCol')is null )
 ALTER TABLE SellsEmporiums ADD CTopicCode2 varchar(12)  NOT NULL CONSTRAINT DF_SellsEmporiums_CTopicCode2 DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('SellsEmporiums'),'CTopicCode3','IsRowGuidCol')is null )
 ALTER TABLE SellsEmporiums ADD CTopicCode3 varchar(12)  NOT NULL CONSTRAINT DF_SellsEmporiums_CTopicCode3 DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('SellsEmporiums'),'ReportFileName','IsRowGuidCol')is null )
 ALTER TABLE SellsEmporiums ADD ReportFileName varchar(100)  


if ( COLUMNPROPERTY( OBJECT_ID('ManifestoItems'),'DiscountPercent','IsRowGuidCol')is null )
 ALTER TABLE ManifestoItems ADD DiscountPercent decimal(18, 4) NOT NULL CONSTRAINT DF_ManifestoItems_DiscountPercent DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('ManifestoItems'),'DiscountAmount','IsRowGuidCol')is null )
 ALTER TABLE ManifestoItems ADD DiscountAmount decimal(18, 4) NOT NULL CONSTRAINT DF_ManifestoItems_DiscountAmount DEFAULT (0)
  
 
if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'AutoPrintOnItemAmount','IsRowGuidCol')is null )
 ALTER TABLE FormTypes ADD AutoPrintOnItemAmount money NOT NULL CONSTRAINT DF_FormTypes_AutoPrintOnItemAmount DEFAULT (0)
  

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'SupervisorAllocation','IsRowGuidCol')is null )
 ALTER TABLE Customers ADD SupervisorAllocation Tinyint  NOT NULL CONSTRAINT DF_Customers_SupervisorAllocation DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Tsh.Functions'),'Supervisor','IsRowGuidCol')is null )
 ALTER TABLE Tsh.Functions ADD Supervisor Tinyint  NOT NULL CONSTRAINT DF_TshFunctions_Supervisor DEFAULT (0)


 if not exists (select * from dbo.sysobjects where id = object_id(N'ReciptsTrades') and OBJECTPROPERTY(id,N'IsUserTable') = 1) 
BEGIN 
  CREATE TABLE dbo.ReciptsTrades(
	ReciptsTradeID int IDENTITY(1,1) NOT NULL,
	ReciptID int NOT NULL,
	ServerID int NOT NULL,
	YearID int NOT NULL,
	ForoushType int NOT NULL ,
	KeshvarCode int ,
	--ArzType int ,
	Kotaj_No int ,
	Kotaj_Date  char(10) ,
	LC_No  char(19) ,
	LC_Date   char(10) ,
	Gomrok_Arzyabi  int ,
	Gomrok_khoruj  int ,
  CONSTRAINT FK_ReciptsTrades_Recipts FOREIGN KEY(ReciptID, ServerID, YearID) REFERENCES dbo.Recipts (ReciptID, ServerID, YearID) ON UPDATE CASCADE ON DELETE CASCADE ,
  CONSTRAINT PK_ReciptsTrades PRIMARY KEY CLUSTERED (	ReciptsTradeID ASC) ON [PRIMARY]) ON [PRIMARY]
END


if ( COLUMNPROPERTY( OBJECT_ID('ReciptsTrades'),'HowRecInfo','IsRowGuidCol')is null )
 ALTER TABLE ReciptsTrades ADD HowRecInfo int  NOT NULL CONSTRAINT DF_ReciptsTrades_HowRecInfo DEFAULT (1066)

if ( COLUMNPROPERTY( OBJECT_ID('ReciptsTrades'),'HowToDoDeal','IsRowGuidCol')is null )
 ALTER TABLE ReciptsTrades ADD HowToDoDeal int  NOT NULL CONSTRAINT DF_ReciptsTrades_HowToDoDeal DEFAULT (26)


if ( COLUMNPROPERTY( OBJECT_ID('ReciptsTrades'),'StockNumber','IsRowGuidCol')is null )
 ALTER TABLE ReciptsTrades ADD StockNumber bigint 
 
if ( COLUMNPROPERTY( OBJECT_ID('ReciptsTrades'),'StockDate','IsRowGuidCol')is null )
 ALTER TABLE ReciptsTrades ADD StockDate char(10)  NOT NULL CONSTRAINT DF_ReciptsTrades_StockDate DEFAULT ('')

if ( COLUMNPROPERTY( OBJECT_ID('ReciptsTrades'),'RingsSupply','IsRowGuidCol')is null )
 ALTER TABLE ReciptsTrades ADD RingsSupply  int  NOT NULL CONSTRAINT DF_ReciptsTrades_RingsSupply DEFAULT (20)

if ( COLUMNPROPERTY( OBJECT_ID('ReciptsTrades'),'ClauseBuyerEligibility','IsRowGuidCol')is null )
 ALTER TABLE ReciptsTrades ADD ClauseBuyerEligibility  int  

if ( COLUMNPROPERTY( OBJECT_ID('ReciptsTrades'),'BranchStatus','IsRowGuidCol')is null )
 ALTER TABLE ReciptsTrades ADD BranchStatus  int  

if ( COLUMNPROPERTY( OBJECT_ID('ReciptsTrades'),'BranchNumber','IsRowGuidCol')is null )
 ALTER TABLE ReciptsTrades ADD BranchNumber  int  
 

 if not exists (select * from dbo.sysobjects where id = object_id(N'StuffCodingItems') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 CREATE TABLE StuffCodingItems (
  --شناسه جزء ، طول ، عرض ، ضخامت ، وزن ، بارکد ، توضيحات 
  StuffCodingItemID int IDENTITY (1, 1) NOT NULL,
  StuffCode bigint NOT NULL ,
  AlternativeStuffCode bigint ,
  Length_ decimal(20, 4) NOT NULL ,--CONSTRAINT DF_StuffCodingItems_Length_  DEFAULT (0), 
  Width decimal(20, 4) NOT NULL  ,--CONSTRAINT DF_StuffCodingItems_Width DEFAULT (0),
  Thickness decimal(20, 4) NOT NULL  ,--CONSTRAINT DF_StuffCodingItems_Thickness DEFAULT (0),
  Weight_ decimal(20, 4)  ,--CONSTRAINT DF_StuffCodingItems_Weight_ DEFAULT (0) ,
  Barcode nvarchar(30)  ,
  Description_  VarChar (150)  ,
  CONSTRAINT FK_StuffCodingItems_StuffCoding FOREIGN KEY (StuffCode) REFERENCES StuffCoding (c_StuffCode)  ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT PK_StuffCodingItems PRIMARY KEY CLUSTERED 	(StuffCodingItemID) ON [PRIMARY] ) ON [PRIMARY] 


 if not exists (select * from dbo.sysobjects where id = object_id(N'ReciptStateChangs') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 CREATE TABLE ReciptStateChangs (
  ReciptStateChangID int IDENTITY (1, 1) NOT NULL,
  ReciptIDS varchar(8000)  ,
  ServerID int ,
  YearID int ,
  UserName varchar(100) ,
  DateOfAction datetime ,
  Descriptions  VarChar (150)  ,
  CONSTRAINT PK_ReciptStateChangs PRIMARY KEY CLUSTERED 	(ReciptStateChangID) ON [PRIMARY] ) ON [PRIMARY] 


if ( COLUMNPROPERTY( OBJECT_ID('StuffCodingItems'),'AlternativeStuffCode','IsRowGuidCol')is null )
 ALTER TABLE StuffCodingItems ADD AlternativeStuffCode bigint 
  
if ( COLUMNPROPERTY( OBJECT_ID('ManifestoItems'),'StuffCodingItemID','IsRowGuidCol')is null )
 ALTER TABLE ManifestoItems ADD StuffCodingItemID int  
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ManifestoItems_StuffCodingItems_StuffCodingItemID' AND type = 'F')
ALTER TABLE ManifestoItems WITH CHECK ADD CONSTRAINT FK_ManifestoItems_StuffCodingItems_StuffCodingItemID FOREIGN KEY (StuffCodingItemID)
  REFERENCES StuffCodingItems(StuffCodingItemID) --ON UPDATE CASCADE 

if ( COLUMNPROPERTY( OBJECT_ID('ManifestoItems'),'SellPrice5','IsRowGuidCol')is  null )  
ALTER TABLE ManifestoItems ADD SellPrice5 money

if ( COLUMNPROPERTY( OBJECT_ID('ManifestoItems'),'SellPrice6','IsRowGuidCol')is  null )  
ALTER TABLE ManifestoItems ADD SellPrice6 money

if ( COLUMNPROPERTY( OBJECT_ID('ManifestoItems'),'SellPrice7','IsRowGuidCol')is  null )  
ALTER TABLE ManifestoItems ADD SellPrice7 money 

if ( COLUMNPROPERTY( OBJECT_ID('ManifestoItems'),'ReciptItemsID','IsRowGuidCol')is  null )  
ALTER TABLE ManifestoItems ADD ReciptItemsID bigint 


if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'StuffCodingItemID','IsRowGuidCol')is null )
 ALTER TABLE ReciptItems ADD StuffCodingItemID int 
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptItems_StuffCodingItems_StuffCodingItemID' AND type = 'F')
ALTER TABLE ReciptItems WITH CHECK ADD CONSTRAINT FK_ReciptItems_StuffCodingItems_StuffCodingItemID FOREIGN KEY (StuffCodingItemID)
  REFERENCES StuffCodingItems(StuffCodingItemID) --ON UPDATE CASCADE 

if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'Length_','IsRowGuidCol')is null )
 ALTER TABLE ReciptItems ADD Length_ decimal(20, 4)

if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'Width','IsRowGuidCol')is null )
 ALTER TABLE ReciptItems ADD Width decimal(20, 4)

if ( COLUMNPROPERTY( OBJECT_ID('StuffGroups'),'OrderPoint','IsRowGuidCol')is null )
 ALTER TABLE StuffGroups ADD OrderPoint decimal(20, 4)

if ( COLUMNPROPERTY( OBJECT_ID('Deficits'),'GroupDeficitID','IsRowGuidCol')is null )
 ALTER TABLE Deficits ADD GroupDeficitID int 

if ( COLUMNPROPERTY( OBJECT_ID('Deficits'),'Post2Field','IsRowGuidCol')is null )
 ALTER TABLE Deficits ADD Post2Field varchar(50)  
 
 -------------------- acc  

 if ( COLUMNPROPERTY( OBJECT_ID('Deficits'),'AccFixedCoding','IsRowGuidCol')is null )
 ALTER TABLE Deficits ADD AccFixedCoding Tinyint  NOT NULL CONSTRAINT DF_Deficits_AccFixedCoding DEFAULT (0)


 if ( COLUMNPROPERTY( OBJECT_ID('Deficits'),'TopicCodeBed','IsRowGuidCol')is null )
 ALTER TABLE Deficits ADD TopicCodeBed bigint  NOT NULL CONSTRAINT DF_Deficits_TopicCodeBed DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Deficits'),'DetailCodeBed','IsRowGuidCol')is null )
 ALTER TABLE Deficits ADD DetailCodeBed varchar(12)  NOT NULL CONSTRAINT DF_Deficits_DetailCodeBed DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Deficits'),'CTopicCodeBed','IsRowGuidCol')is null )
 ALTER TABLE Deficits ADD CTopicCodeBed varchar(12)  NOT NULL CONSTRAINT DF_Deficits_CTopicCodeBed DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Deficits'),'CTopicCode2Bed','IsRowGuidCol')is null )
 ALTER TABLE Deficits ADD CTopicCode2Bed varchar(12)  NOT NULL CONSTRAINT DF_Deficits_CTopicCode2Bed DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Deficits'),'CTopicCode3Bed','IsRowGuidCol')is null )
 ALTER TABLE Deficits ADD CTopicCode3Bed varchar(12)  NOT NULL CONSTRAINT DF_Deficits_CTopicCode3Bed DEFAULT (0)
-----------------------------------------
if ( COLUMNPROPERTY( OBJECT_ID('Deficits'),'TopicCodeBes','IsRowGuidCol')is null )
 ALTER TABLE Deficits ADD TopicCodeBes bigint  NOT NULL CONSTRAINT DF_Deficits_TopicCodeBes DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Deficits'),'DetailCodeBes','IsRowGuidCol')is null )
 ALTER TABLE Deficits ADD DetailCodeBes varchar(12)  NOT NULL CONSTRAINT DF_Deficits_DetailCodeBes DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Deficits'),'CTopicCodeBes','IsRowGuidCol')is null )
 ALTER TABLE Deficits ADD CTopicCodeBes varchar(12)  NOT NULL CONSTRAINT DF_Deficits_CTopicCodeBes DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Deficits'),'CTopicCode2Bes','IsRowGuidCol')is null )
 ALTER TABLE Deficits ADD CTopicCode2Bes varchar(12)  NOT NULL CONSTRAINT DF_Deficits_CTopicCode2Bes DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Deficits'),'CTopicCode3Bes','IsRowGuidCol')is null )
 ALTER TABLE Deficits ADD CTopicCode3Bes varchar(12)  NOT NULL CONSTRAINT DF_Deficits_CTopicCode3Bes DEFAULT (0)

 -------------------- acc  
 if ( COLUMNPROPERTY( OBJECT_ID('Deficits'),'TTMSActive','IsRowGuidCol')is null )
 ALTER TABLE Deficits ADD TTMSActive Tinyint  NOT NULL CONSTRAINT DF_Deficits_TTMSActive DEFAULT (1)

if ( COLUMNPROPERTY( OBJECT_ID('Stores'),'TypeOfSale','IsRowGuidCol')is null )
 ALTER TABLE Stores ADD TypeOfSale Tinyint  NOT NULL CONSTRAINT DF_Stores_TypeOfSale DEFAULT (0)

 if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'CustomerCheckNote','IsRowGuidCol')is  null )  
 ALTER TABLE Customers ADD CustomerCheckNote varchar(255)   

if ( COLUMNPROPERTY( OBJECT_ID('SellsMethods'),'Deadline','IsRowGuidCol')is null )
 ALTER TABLE SellsMethods ADD Deadline decimal(20, 4)

 if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'PriorityFormDate','IsRowGuidCol')is  null )  
  ALTER TABLE FormTypes ADD PriorityFormDate Tinyint NOT NULL  CONSTRAINT DF_FormTypes_PriorityFormDate DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('FormItems'),'CheckCounter','IsRowGuidCol')is null )
 ALTER TABLE FormItems ADD CheckCounter int

if ( COLUMNPROPERTY( OBJECT_ID('LookUps'),'ExportDateTime','IsRowGuidCol')is null )
 ALTER TABLE LookUps ADD ExportDateTime datetime

if ( COLUMNPROPERTY( OBJECT_ID('StuffCoding'),'ExportDateTime','IsRowGuidCol')is null )
 ALTER TABLE StuffCoding ADD ExportDateTime datetime

 

if ( COLUMNPROPERTY( OBJECT_ID('CustomersGroup'),'DetailType','IsRowGuidCol')is null )
 ALTER TABLE CustomersGroup ADD DetailType int   NOT NULL CONSTRAINT DF_CustomersGroup_DetailType DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'ParentFormID','IsRowGuidCol')is null )
 ALTER TABLE Forms ADD ParentFormID int

if ( COLUMNPROPERTY( OBJECT_ID('ReciptsDeficits'),'DeficitCo','IsRowGuidCol')is null )
ALTER TABLE ReciptsDeficits ADD DeficitCo float


if ( COLUMNPROPERTY( OBJECT_ID('ReciptsDeficits'),'TopicCode','IsRowGuidCol')is null )
 ALTER TABLE ReciptsDeficits ADD TopicCode bigint  NOT NULL CONSTRAINT DF_ReciptsDeficits_TopicCode DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('ReciptsDeficits'),'DetailCode','IsRowGuidCol')is null )
 ALTER TABLE ReciptsDeficits ADD DetailCode varchar(12)  NOT NULL CONSTRAINT DF_ReciptsDeficits_DetailCode DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('ReciptsDeficits'),'CTopicCode','IsRowGuidCol')is null )
 ALTER TABLE ReciptsDeficits ADD CTopicCode varchar(12)  NOT NULL CONSTRAINT DF_ReciptsDeficits_CTopicCode DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('ReciptsDeficits'),'CTopicCode2','IsRowGuidCol')is null )
 ALTER TABLE ReciptsDeficits ADD CTopicCode2 varchar(12)  NOT NULL CONSTRAINT DF_ReciptsDeficits_CTopicCode2 DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('ReciptsDeficits'),'CTopicCode3','IsRowGuidCol')is null )
 ALTER TABLE ReciptsDeficits ADD CTopicCode3 varchar(12)  NOT NULL CONSTRAINT DF_ReciptsDeficits_CTopicCode3 DEFAULT (0)

 if ( COLUMNPROPERTY( OBJECT_ID('ReciptsDeficits'),'ArzTypeID','IsRowGuidCol')is  null )  
ALTER TABLE ReciptsDeficits ADD ArzTypeID int 


 if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'Relating4Help','IsRowGuidCol')is  null )  
  ALTER TABLE FormTypes ADD Relating4Help varchar(25)   

if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'ProcedureKindList','IsRowGuidCol')is  null )  
  ALTER TABLE FormTypes ADD ProcedureKindList VarChar (50)

if ( COLUMNPROPERTY( OBJECT_ID('FormItems'),'ProductCode','IsRowGuidCol')is  null ) 
 ALTER TABLE FormItems ADD ProductCode bigint 

if ( COLUMNPROPERTY( OBJECT_ID('FormItems'),'LineCorrosion','IsRowGuidCol')is  null ) 
 ALTER TABLE FormItems ADD LineCorrosion bit 

 if ( COLUMNPROPERTY( OBJECT_ID('FormItems'),'VatCo','IsRowGuidCol')is  null ) 
 ALTER TABLE FormItems ADD VatCo float 

if ( COLUMNPROPERTY( OBJECT_ID('FormItems'),'ReciptItems_ID','IsRowGuidCol')is  null )  
BEGIN
 ALTER TABLE FormItems ADD ReciptItems_ID Bigint 
 --ALTER TABLE FormItems ADD CONSTRAINT FK_FormItems_ReciptItems  FOREIGN KEY (ReciptItems_ID) REFERENCES ReciptItems (ID)
END

if ( COLUMNPROPERTY( OBJECT_ID('FormItems'),'ID','IsRowGuidCol')is  null )  
 ALTER TABLE FormItems ADD ID  AS case when FormItemID<0 then -1 else 1 end*(CAST(LTRIM(YearID) +RIGHT('0'+ LTRIM(ServerID),2) +  LTRIM(abs(FormItemID)) AS BigInt))

 if ( COLUMNPROPERTY( OBJECT_ID('FormItems'),'PrvYearID','IsRowGuidCol')is  null )  
ALTER TABLE FormItems ADD PrvYearID int

if ( COLUMNPROPERTY( OBJECT_ID('FormItems'),'HunterCode','IsRowGuidCol')is  null )  
  ALTER TABLE FormItems ADD HunterCode Char (20)

 if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'WorkFlowID','IsRowGuidCol')is  null )  
  ALTER TABLE FormTypes ADD WorkFlowID int  

 if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CheckNumberActive','IsRowGuidCol')is  null )  
  ALTER TABLE FormTypes ADD CheckNumberActive TinyInt NOT NULL CONSTRAINT DF_FormTypes_CheckNumberActive DEFAULT (1)

 if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CallableStates','IsRowGuidCol')is  null )  
  ALTER TABLE FormTypes ADD CallableStates char(250)

 if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'InsertSeverableOnRecall','IsRowGuidCol')is  null )  
  ALTER TABLE FormTypes ADD InsertSeverableOnRecall TinyInt 

if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'Customer3Effect','IsRowGuidCol')is  null ) 
 ALTER TABLE FormTypes ADD Customer3Effect Tinyint NOT NULL  DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'OrderByFieldsItem','IsRowGuidCol')is  null )  
   ALTER TABLE FormTypes ADD OrderByFieldsItem Nvarchar(100)

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'sex','IsRowGuidCol')is null )
 ALTER TABLE Customers ADD sex tinyint
 
if ( COLUMNPROPERTY( OBJECT_ID('CustomersActivity'),'Number','IsRowGuidCol')is null )
 ALTER TABLE CustomersActivity ADD Number int

if ( COLUMNPROPERTY( OBJECT_ID('CustomersActivity'),'Capacity','IsRowGuidCol')is null )
 ALTER TABLE CustomersActivity ADD Capacity int

 exec('
 if ( COLUMNPROPERTY( OBJECT_ID(''CustomersActivity''),''NumberCapacity'',''IsRowGuidCol'')is  null )  
 ALTER TABLE CustomersActivity ADD NumberCapacity  AS (ISNULL(Number,0)*(ISNULL(Capacity,0))) ')

 if ( COLUMNPROPERTY( OBJECT_ID('CustomersActivity'),'Capacity','IsRowGuidCol')is null )
 ALTER TABLE CustomersActivity ADD Capacity int

 if ( COLUMNPROPERTY( OBJECT_ID('CustomersActivity'),'ActivityNote','IsRowGuidCol')is null )
 ALTER TABLE CustomersActivity ADD ActivityNote NvarChar(200)

 if ( COLUMNPROPERTY( OBJECT_ID('CustomersActivity'),'Elective','IsRowGuidCol')is null )
 ALTER TABLE CustomersActivity ADD Elective bit

 if ( COLUMNPROPERTY( OBJECT_ID('SellsTypes'),'IsElective','IsRowGuidCol')is null )
 ALTER TABLE SellsTypes ADD IsElective bit NOT NULL CONSTRAINT DF_SellsTypes_IsElective DEFAULT (0)
 
-- IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
--WHERE (TABLE_NAME = N'Util.CodesInProcess') AND (COLUMN_NAME = N'UserID') AND (DATA_TYPE='int'))
--ALTER TABLE Util.CodesInProcess ALTER column UserID int 

if ( COLUMNPROPERTY( OBJECT_ID('CustomersGroup'),'DetailType','IsRowGuidCol')is null )
 ALTER TABLE CustomersGroup ADD DetailType int NOT NULL CONSTRAINT DF_CustomersGroup_DetailType DEFAULT (0)
 

 if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'PersonID1','IsRowGuidCol')is  null ) 
 ALTER TABLE [ReciptItems] ADD [PersonID1] int NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ShowSelectStore','IsRowGuidCol')is  null ) 
 ALTER TABLE [ReciptTypes] ADD [ShowSelectStore] Tinyint NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('Deficits'),'BeforeDeficitCalc','IsRowGuidCol')is  null ) 
 ALTER TABLE [Deficits] ADD [BeforeDeficitCalc] Tinyint NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('RptChecks'),'LeftAmountArz','IsRowGuidCol')is  null ) 
 ALTER TABLE [RptChecks] ADD [LeftAmountArz] Float NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('RptChecks'),'TopAmountArz','IsRowGuidCol')is  null ) 
 ALTER TABLE [RptChecks] ADD [TopAmountArz] Float NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('RptChecks'),'WidthAmountArz','IsRowGuidCol')is  null ) 
 ALTER TABLE [RptChecks] ADD [WidthAmountArz] Float NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('FormItems'),'AmountArz','IsRowGuidCol')is  null ) 
 ALTER TABLE [FormItems] ADD [AmountArz] Float   

  if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'AccountKind','IsRowGuidCol')is  null ) 
 ALTER TABLE [Customers] ADD [AccountKind] Tinyint NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('FormItems'),'CheckState','IsRowGuidCol')is  null ) 
 ALTER TABLE [FormItems] ADD [CheckState] Tinyint NOT NULL  DEFAULT (1)  

  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CheckFor_4Print','IsRowGuidCol')is  null ) 
 ALTER TABLE [FormTypes] ADD [CheckFor_4Print] Tinyint NOT NULL  DEFAULT (0) 

     if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'AccountNumber','IsRowGuidCol')is  null ) 
 ALTER TABLE [Customers] ADD [AccountNumber] [char] (25) 

  if ( COLUMNPROPERTY( OBJECT_ID('FormItems'),'CheckFor','IsRowGuidCol')is  null ) 
 ALTER TABLE [FormItems] ADD [CheckFor] VarChar (255)  

  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'ShowListOnMnu','IsRowGuidCol')is  null ) 
 ALTER TABLE [FormTypes] ADD [ShowListOnMnu] Tinyint NOT NULL  DEFAULT (1) 

  if ( COLUMNPROPERTY( OBJECT_ID('FormItems'),'AccountNumberNew','IsRowGuidCol')is  null ) 
 ALTER TABLE [FormItems] ADD [AccountNumberNew] Float  

  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'SerialCheckActive','IsRowGuidCol')is  null ) 
 ALTER TABLE [FormTypes] ADD [SerialCheckActive] Tinyint NOT NULL  DEFAULT (0) 

		  if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[CheckBook]') and OBJECTPROPERTY(id,
		 N'IsUserTable') = 1)
		  CREATE TABLE [CheckBook] ([CheckBookID] int NOT NULL ,[BankID] int NOT NULL ,[CheckBookNo] int NOT NULL ,
	 	 [SerialFrom] int NOT NULL ,[SerialTo] int NOT NULL ,CONSTRAINT [PK_CheckBook] PRIMARY KEY CLUSTERED
	   ([CheckBookID]) ON [PRIMARY] ,	CONSTRAINT [FK_CheckBook_Customers] FOREIGN KEY ([BankID]
		 ) REFERENCES [Customers] ([CustID]) ON DELETE CASCADE ON UPDATE CASCADE ) ON [PRIMARY] 

  if ( COLUMNPROPERTY( OBJECT_ID('CheckBook'),'ChkBookActive','IsRowGuidCol')is  null ) 
 ALTER TABLE [CheckBook] ADD [ChkBookActive] Tinyint NOT NULL  DEFAULT (0) 

     
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'RowOnMnu','IsRowGuidCol')is  null ) 
 ALTER TABLE [FormTypes] ADD [RowOnMnu] int NOT NULL  DEFAULT (1) 

  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CustomerKind1','IsRowGuidCol')is  null ) 
 ALTER TABLE [FormTypes] ADD [CustomerKind1] VarChar (50) 

  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CustomerKind2','IsRowGuidCol')is  null ) 
 ALTER TABLE [FormTypes] ADD [CustomerKind2] VarChar (50) 

  if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'BankId','IsRowGuidCol')is  null ) 
 ALTER TABLE [Customers] ADD [BankId] Float  

  if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'BankName','IsRowGuidCol')is  null ) 
 ALTER TABLE [Customers] ADD [BankName] VarChar (60) 

      if ( COLUMNPROPERTY( OBJECT_ID('RptChecks'),'ReportFileName','IsRowGuidCol')is  null ) 
    ALTER TABLE [RptChecks] ADD [ReportFileName] VarChar (50) 

      if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'OptimumPoint','IsRowGuidCol')is  null ) 
    ALTER TABLE [Stuffcoding] ADD [OptimumPoint] Float  

  if ( COLUMNPROPERTY( OBJECT_ID('TransFormItems'),'CulchEntity','IsRowGuidCol')is  null ) 
 ALTER TABLE [TransFormItems] ADD [CulchEntity] Float  

  if ( COLUMNPROPERTY( OBJECT_ID('TransFormItems'),'CulchWeight','IsRowGuidCol')is  null ) 
 ALTER TABLE [TransFormItems] ADD [CulchWeight] Float  

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'CustomerKind1','IsRowGuidCol')is  null ) 
 ALTER TABLE [ReciptTypes] ADD [CustomerKind1] VarChar (50) 

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'CustomerKind2','IsRowGuidCol')is  null ) 
 ALTER TABLE [ReciptTypes] ADD [CustomerKind2] VarChar (50) 

  if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'FirstUser','IsRowGuidCol')is  null ) 
 ALTER TABLE [Forms] ADD [FirstUser] [varchar](50)  

  if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'LastUser','IsRowGuidCol')is  null ) 
 ALTER TABLE [Forms] ADD [LastUser] [varchar](50)  

  if ( COLUMNPROPERTY( OBJECT_ID('FormItems'),'FirstUser','IsRowGuidCol')is  null ) 
 ALTER TABLE [FormItems] ADD [FirstUser] [varchar](50)  

  if ( COLUMNPROPERTY( OBJECT_ID('FormItems'),'LastUser','IsRowGuidCol')is  null ) 
 ALTER TABLE [FormItems] ADD [LastUser] [varchar](50)  

  if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'FirstUser','IsRowGuidCol')is  null ) 
 ALTER TABLE [Recipts] ADD [FirstUser] [varchar](50)  

  if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'LastUser','IsRowGuidCol')is  null ) 
 ALTER TABLE [Recipts] ADD [LastUser] [varchar](50)  

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'FirstUser','IsRowGuidCol')is  null ) 
 ALTER TABLE [ReciptItems] ADD [FirstUser] [varchar](50)  

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'LastUser','IsRowGuidCol')is  null ) 
 ALTER TABLE [ReciptItems] ADD [LastUser] [varchar](50)  

  if ( COLUMNPROPERTY( OBJECT_ID('LookUps'),'acc_CTopicCode2','IsRowGuidCol')is  null ) 
   ALTER TABLE [LookUps] ADD [acc_CTopicCode2] [varchar](12) NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('LookUps'),'acc_CTopicCode','IsRowGuidCol')is  null ) 
   ALTER TABLE [LookUps] ADD [acc_CTopicCode] [varchar](12) NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('LookUps'),'acc_DetailCode','IsRowGuidCol')is  null ) 
   ALTER TABLE [LookUps] ADD [acc_DetailCode] [varchar](12) NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('LookUps'),'acc_TopicCode','IsRowGuidCol')is  null ) 
   ALTER TABLE [LookUps] ADD [acc_TopicCode] [varchar](12) NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'acc_CTopicCode2','IsRowGuidCol')is  null ) 
   ALTER TABLE [Stuffcoding] ADD [acc_CTopicCode2] [varchar](12) NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'acc_CTopicCode','IsRowGuidCol')is  null ) 
   ALTER TABLE [Customers] ADD [acc_CTopicCode] [varchar](12) NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'acc_CTopicCode2','IsRowGuidCol')is  null ) 
   ALTER TABLE [Customers] ADD [acc_CTopicCode2] [varchar](12) NOT NULL  DEFAULT (0) 


  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'EffectOnCustomer','IsRowGuidCol')is  null ) 
 ALTER TABLE [ReciptTypes] ADD [EffectOnCustomer] Tinyint NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'DefaultCTopic2_Bed','IsRowGuidCol')is  null ) 
 ALTER TABLE [ReciptTypes] ADD [DefaultCTopic2_Bed] Tinyint NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'DefaultCTopic2_Bes','IsRowGuidCol')is  null ) 
 ALTER TABLE [ReciptTypes] ADD [DefaultCTopic2_Bes] Tinyint NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'DefaultCTopic_Bed','IsRowGuidCol')is  null ) 
 ALTER TABLE [ReciptTypes] ADD [DefaultCTopic_Bed] Tinyint NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'DefaultCTopic_Bes','IsRowGuidCol')is  null ) 
 ALTER TABLE [ReciptTypes] ADD [DefaultCTopic_Bes] Tinyint NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'DefaultDetail_Bed','IsRowGuidCol')is  null ) 
 ALTER TABLE [ReciptTypes] ADD [DefaultDetail_Bed] Tinyint NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'DefaultDetail_Bes','IsRowGuidCol')is  null ) 
 ALTER TABLE [ReciptTypes] ADD [DefaultDetail_Bes] Tinyint NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'DefaultTopic_Bed','IsRowGuidCol')is  null ) 
 ALTER TABLE [ReciptTypes] ADD [DefaultTopic_Bed] Tinyint NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'DefaultTopic_Bes','IsRowGuidCol')is  null ) 
 ALTER TABLE [ReciptTypes] ADD [DefaultTopic_Bes] Tinyint NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ConstTopicCode_Bed','IsRowGuidCol')is  null ) 
 ALTER TABLE [ReciptTypes] ADD ConstTopicCode_Bed int NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ConstTopicCode_Bes','IsRowGuidCol')is  null ) 
 ALTER TABLE [ReciptTypes] ADD [ConstTopicCode_Bes] int NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'RowOnMnu','IsRowGuidCol')is  null ) 
 ALTER TABLE [ReciptTypes] ADD [RowOnMnu] int NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'ContactRate','IsRowGuidCol')is  null ) 
 ALTER TABLE [Customers] ADD [ContactRate] Money 

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'ContactRate','IsRowGuidCol')is  null ) 
 ALTER TABLE [ReciptItems] ADD [ContactRate] Money 

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'WaterCo','IsRowGuidCol')is  null ) 
 ALTER TABLE [ReciptItems] ADD [WaterCo] Float 

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'AutoCorrelate','IsRowGuidCol')is  null ) 
 ALTER TABLE [ReciptTypes] ADD [AutoCorrelate] Tinyint NOT NULL  DEFAULT (2) 

    ALTER TABLE dbo.Customers    DROP CONSTRAINT FK_Customers_CustomersGroup 
    ALTER TABLE dbo.Customers WITH NOCHECK ADD CONSTRAINT FK_Customers_CustomersGroup FOREIGN KEY( 
        CustomerGrpID   )REFERENCES dbo.CustomersGroup(CustomerGrpID) ON UPDATE CASCADE 


      if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'OrderState','IsRowGuidCol')is  null ) 
 ALTER TABLE [ReciptItems] ADD [OrderState] Tinyint NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'ActivityKind','IsRowGuidCol')is  null ) 
 ALTER TABLE [Config] ADD [ActivityKind] [varchar](100)  

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'Correlate4EditActive','IsRowGuidCol')is  null ) 
 ALTER TABLE [ReciptTypes] ADD [Correlate4EditActive] Tinyint NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'GrpActionCustomer','IsRowGuidCol')is  null ) 
   ALTER TABLE [Customers] ADD [GrpActionCustomer] Tinyint NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'ControlOrderPointEntity','IsRowGuidCol')is  null ) 
 ALTER TABLE [Config] ADD [ControlOrderPointEntity] Tinyint NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('RptChecks'),'LeftDateString','IsRowGuidCol')is  null ) 
 ALTER TABLE [RptChecks] ADD [LeftDateString] Float NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('RptChecks'),'TopDateString','IsRowGuidCol')is  null ) 
 ALTER TABLE [RptChecks] ADD [TopDateString] Float NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('RptChecks'),'WidthDateString','IsRowGuidCol')is  null ) 
 ALTER TABLE [RptChecks] ADD [WidthDateString] Float NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'MnuPlaceID','IsRowGuidCol')is  null ) 
 ALTER TABLE [FormTypes] ADD [MnuPlaceID] int NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'UserSecurityCheckActive','IsRowGuidCol')is  null ) 
 ALTER TABLE [FormTypes] ADD [UserSecurityCheckActive] Tinyint NOT NULL  DEFAULT (1) 

  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'MaxRowsPerForm','IsRowGuidCol')is  null ) 
 ALTER TABLE [FormTypes] ADD [MaxRowsPerForm] int NOT NULL  DEFAULT (1000) 

  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'AutoStateChange','IsRowGuidCol')is  null ) 
 ALTER TABLE [FormTypes] ADD [AutoStateChange] Tinyint NOT NULL  DEFAULT (2) 

  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'SerialNoFrom','IsRowGuidCol')is  null ) 
 ALTER TABLE [FormTypes] ADD [SerialNoFrom] int NOT NULL  DEFAULT (1) 

  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'SerialNoTo','IsRowGuidCol')is  null ) 
 ALTER TABLE [FormTypes] ADD [SerialNoTo] int NOT NULL  DEFAULT (2147483647) 

  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'Customer2OnDetailLable','IsRowGuidCol')is  null ) 
 ALTER TABLE [FormTypes] ADD [Customer2OnDetailLable] [varchar](50)  

  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'ChangeFormNo_DateActive','IsRowGuidCol')is  null ) 
 ALTER TABLE [FormTypes] ADD [ChangeFormNo_DateActive] Tinyint NOT NULL  DEFAULT (1) 

  if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'FormState','IsRowGuidCol')is  null ) 
 ALTER TABLE [Forms] ADD [FormState] Tinyint NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'ProductCode','IsRowGuidCol')is  null ) 
 ALTER TABLE [ReciptItems] ADD [ProductCode] bigint NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'ProductModel','IsRowGuidCol')is  null ) 
 ALTER TABLE [ReciptItems] ADD [ProductModel] int NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'MnuPlaceID','IsRowGuidCol')is  null ) 
 ALTER TABLE [ReciptTypes] ADD [MnuPlaceID] int NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'ItemDate','IsRowGuidCol')is  null ) 
 ALTER TABLE [ReciptItems] ADD [ItemDate] char(10)   DEFAULT ('') 

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'DetailDateActive','IsRowGuidCol')is  null ) 
 ALTER TABLE [ReciptTypes] ADD [DetailDateActive] Tinyint NOT NULL  DEFAULT (2) 

  if ( COLUMNPROPERTY( OBJECT_ID('TransForms'),'ControlCode','IsRowGuidCol')is  null ) 
 ALTER TABLE [TransForms] ADD [ControlCode] int NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('TransForms'),'StuffModel','IsRowGuidCol')is  null ) 
 ALTER TABLE [TransForms] ADD [StuffModel] int NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ConversionCoSerial','IsRowGuidCol')is  null ) 
 ALTER TABLE [ReciptTypes] ADD [ConversionCoSerial] int NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ProcedureActive','IsRowGuidCol')is  null ) 
 ALTER TABLE [ReciptTypes] ADD [ProcedureActive] Tinyint NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'FormKindSerial','IsRowGuidCol')is  null ) 
 ALTER TABLE [ReciptTypes] ADD [FormKindSerial] int NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('Deficits'),'EditAfterPost','IsRowGuidCol')is  null ) 
 ALTER TABLE [Deficits] ADD [EditAfterPost] Tinyint NOT NULL  DEFAULT (1) 

  if ( COLUMNPROPERTY( OBJECT_ID('Stores'),'CorrelateStore','IsRowGuidCol')is  null ) 
 ALTER TABLE [Stores] ADD [CorrelateStore] [smallint] NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('Stores'),'StoreKind','IsRowGuidCol')is  null ) 
 ALTER TABLE [Stores] ADD [StoreKind] Tinyint NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ControlEntityKind','IsRowGuidCol')is  null ) 
 ALTER TABLE [ReciptTypes] ADD [ControlEntityKind] Tinyint NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'AutoStateChange','IsRowGuidCol')is  null ) 
 ALTER TABLE [ReciptTypes] ADD [AutoStateChange] Tinyint NOT NULL  DEFAULT (2) 

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'MaxCreditChecked','IsRowGuidCol')is  null ) 
 ALTER TABLE [ReciptTypes] ADD [MaxCreditChecked] Tinyint NOT NULL  DEFAULT (2) 

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'NoteShow','IsRowGuidCol')is  null ) 
 ALTER TABLE [ReciptTypes] ADD [NoteShow] Tinyint NOT NULL  DEFAULT (3) 

  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'Pay_Topic_Active','IsRowGuidCol')is  null ) 
 ALTER TABLE [FormTypes] ADD [Pay_Topic_Active] Tinyint NOT NULL  DEFAULT (1) 

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'EditReciptNumberActive','IsRowGuidCol')is  null ) 
 ALTER TABLE [ReciptTypes] ADD [EditReciptNumberActive] Tinyint NOT NULL  DEFAULT (1) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'PersonID1OnDetailActive','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [PersonID1OnDetailActive] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'Shift','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptItems] ADD [Shift] int NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'ModifyDate','IsRowGuidCol')is  null ) 
    ALTER TABLE [Forms] ADD [ModifyDate] [datetime]  

      if ( COLUMNPROPERTY( OBJECT_ID('Config'),'ControlCodeActive','IsRowGuidCol')is  null ) 
    ALTER TABLE [Config] ADD [ControlCodeActive] int NOT NULL  DEFAULT (1) 

      if ( COLUMNPROPERTY( OBJECT_ID('Config'),'AddMenuItem','IsRowGuidCol')is  null ) 
    ALTER TABLE [Config] ADD [AddMenuItem] int NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'UnitPriceUseKind','IsRowGuidCol')is  null ) 
    ALTER TABLE [Stuffcoding] ADD [UnitPriceUseKind] Tinyint NOT NULL DEFAULT (0)  

      if ( COLUMNPROPERTY( OBJECT_ID('Config'),'ActiveCoffer','IsRowGuidCol')is  null ) 
    ALTER TABLE [Config] ADD [ActiveCoffer] Tinyint NOT NULL DEFAULT (0)  

      if ( COLUMNPROPERTY( OBJECT_ID('Config'),'ActiveBsell','IsRowGuidCol')is  null ) 
    ALTER TABLE [Config] ADD [ActiveBsell] Tinyint NOT NULL DEFAULT (0)  

      if ( COLUMNPROPERTY( OBJECT_ID('Config'),'ActiveBudget','IsRowGuidCol')is  null ) 
    ALTER TABLE [Config] ADD [ActiveBudget] Tinyint NOT NULL DEFAULT (0)  

      if ( COLUMNPROPERTY( OBJECT_ID('Config'),'ActiveStore','IsRowGuidCol')is  null ) 
    ALTER TABLE [Config] ADD [ActiveStore] Tinyint NOT NULL DEFAULT (0)  

      if ( COLUMNPROPERTY( OBJECT_ID('Config'),'ActiveSchedule','IsRowGuidCol')is  null ) 
    ALTER TABLE [Config] ADD [ActiveSchedule] Tinyint NOT NULL DEFAULT (0)  

    ALTER TABLE dbo.Recipts	DROP CONSTRAINT DF_Recipts_ExpireDate 
    ALTER TABLE dbo.Recipts ADD  CONSTRAINT	DF_Recipts_ExpireDate DEFAULT ('') FOR ExpireDate 

      if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'ReciptStartDate','IsRowGuidCol')is  null ) 
 ALTER TABLE [Recipts] ADD [ReciptStartDate] char(10)  

  if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'ReciptEndDate','IsRowGuidCol')is  null ) 
 ALTER TABLE [Recipts] ADD [ReciptEndDate] char(10)  

  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'Customer1Effect','IsRowGuidCol')is  null ) 
 ALTER TABLE [FormTypes] ADD [Customer1Effect] Tinyint NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'Customer2Effect','IsRowGuidCol')is  null ) 
 ALTER TABLE [FormTypes] ADD [Customer2Effect] Tinyint NOT NULL  DEFAULT (0) 

   
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'DefaultCTopic2_Bed','IsRowGuidCol')is  null ) 
 ALTER TABLE [FormTypes] ADD [DefaultCTopic2_Bed] Tinyint NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'DefaultCTopic2_Bes','IsRowGuidCol')is  null ) 
 ALTER TABLE [FormTypes] ADD [DefaultCTopic2_Bes] Tinyint NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'DefaultCTopic_Bed','IsRowGuidCol')is  null ) 
 ALTER TABLE [FormTypes] ADD [DefaultCTopic_Bed] Tinyint NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'DefaultCTopic_Bes','IsRowGuidCol')is  null ) 
 ALTER TABLE [FormTypes] ADD [DefaultCTopic_Bes] Tinyint NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'DefaultDetail_Bed','IsRowGuidCol')is  null ) 
 ALTER TABLE [FormTypes] ADD [DefaultDetail_Bed] Tinyint NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'DefaultDetail_Bes','IsRowGuidCol')is  null ) 
 ALTER TABLE [FormTypes] ADD [DefaultDetail_Bes] Tinyint NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'DefaultTopic_Bed','IsRowGuidCol')is  null ) 
 ALTER TABLE [FormTypes] ADD [DefaultTopic_Bed] Tinyint NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'DefaultTopic_Bes','IsRowGuidCol')is  null ) 
 ALTER TABLE [FormTypes] ADD [DefaultTopic_Bes] Tinyint NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'ConstTopicCode_Bed','IsRowGuidCol')is  null ) 
 ALTER TABLE [FormTypes] ADD [ConstTopicCode_Bed] int NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'ConstTopicCode_Bes','IsRowGuidCol')is  null ) 
 ALTER TABLE [FormTypes] ADD [ConstTopicCode_Bes] int NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CustCodeUse4Bed','IsRowGuidCol')is  null ) 
 ALTER TABLE [FormTypes] ADD [CustCodeUse4Bed] Tinyint NOT NULL  DEFAULT (1) 

  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CustCodeUse4Bes','IsRowGuidCol')is  null ) 
 ALTER TABLE [FormTypes] ADD [CustCodeUse4Bes] Tinyint NOT NULL  DEFAULT (1) 

  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'MakeDoc','IsRowGuidCol')is  null ) 
 ALTER TABLE [FormTypes] ADD [MakeDoc] Tinyint NOT NULL  DEFAULT (0) 

      if not EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_Forms_CustomerID1' AND type = 'D')
    ALTER TABLE dbo.Forms ADD CONSTRAINT 	DF_Forms_CustomerID1 DEFAULT 0 FOR CustomerID1

      if not EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_Forms_CustomerID2' AND type = 'D')
    ALTER TABLE dbo.Forms ADD CONSTRAINT 	DF_Forms_CustomerID2 DEFAULT 0 FOR CustomerID2

      if not EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_FormItems_CheckType' AND type = 'D')
    ALTER TABLE dbo.FormItems ADD CONSTRAINT 	DF_FormItems_CheckType DEFAULT 0 FOR CheckType

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'CustCodeUse4Bed','IsRowGuidCol')is  null ) 
 ALTER TABLE [ReciptTypes] ADD [CustCodeUse4Bed] Tinyint NOT NULL  DEFAULT (1) 

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'CustCodeUse4Bes','IsRowGuidCol')is  null ) 
 ALTER TABLE [ReciptTypes] ADD [CustCodeUse4Bes] Tinyint NOT NULL  DEFAULT (1) 

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'AccountKind4Deficits','IsRowGuidCol')is  null ) 
 ALTER TABLE [ReciptTypes] ADD [AccountKind4Deficits] Tinyint NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('Stores'),'HasDeficit','IsRowGuidCol')is  null ) 
 ALTER TABLE [Stores] ADD [HasDeficit] [smallint] NOT NULL  DEFAULT (1) 

  if ( COLUMNPROPERTY( OBJECT_ID('UseUnits'),'acc_TopicCode','IsRowGuidCol')is  null ) 
   ALTER TABLE [UseUnits] ADD [acc_TopicCode] [varchar](12) NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('UseUnits'),'acc_DetailCode','IsRowGuidCol')is  null ) 
   ALTER TABLE [UseUnits] ADD [acc_DetailCode] [varchar](12) NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('UseUnits'),'acc_CTopicCode','IsRowGuidCol')is  null ) 
   ALTER TABLE [UseUnits] ADD [acc_CTopicCode] [varchar](12) NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('UseUnits'),'acc_CTopicCode2','IsRowGuidCol')is  null ) 
   ALTER TABLE [UseUnits] ADD [acc_CTopicCode2] [varchar](12) NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('StuffGroups'),'acc_AFootInComingTopicCode','IsRowGuidCol')is  null ) 
   ALTER TABLE [StuffGroups] ADD [acc_AFootInComingTopicCode] [varchar](12) NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('Deficits'),'DeficitsTogetherRange','IsRowGuidCol')is  null ) 
    ALTER TABLE [Deficits] ADD [DeficitsTogetherRange] [char] (250) 

      if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'StuffNote','IsRowGuidCol')is  null ) 
    ALTER TABLE [Stuffcoding] ADD [StuffNote] [varchar](255)  

      if ( COLUMNPROPERTY( OBJECT_ID('LookUps'),'StartCode','IsRowGuidCol')is  null ) 
    ALTER TABLE [LookUps] ADD [StartCode] int NOT NULL  DEFAULT (0)  

      if ( COLUMNPROPERTY( OBJECT_ID('LookUps'),'FinishCode','IsRowGuidCol')is  null ) 
    ALTER TABLE [LookUps] ADD [FinishCode] int NOT NULL  DEFAULT (0)  

      if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'Control_orderPoint_Entity','IsRowGuidCol')is  null ) 
    ALTER TABLE [Stuffcoding] ADD [Control_orderPoint_Entity] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'StanCode','IsRowGuidCol')is  null ) 
    ALTER TABLE [Stuffcoding] ADD [StanCode] VarChar (25)  

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'DeficitValue','IsRowGuidCol')is  null ) 
     UPDATE  ReciptTypes SET   DiscountActive = 0 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'DeficitValue','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptItems] ADD [DeficitValue] Money 

      if ( COLUMNPROPERTY( OBJECT_ID('Config'),'ActiveSellPrice2','IsRowGuidCol')is  null ) 
    ALTER TABLE [Config] ADD [ActiveSellPrice2] Tinyint NOT NULL  DEFAULT (0) 


      if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'OwnerShipKind','IsRowGuidCol')is  null ) 
    ALTER TABLE [Stuffcoding] ADD [OwnerShipKind] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'Acc_InComeTopicCode','IsRowGuidCol')is  null ) 
 ALTER TABLE [Stuffcoding] ADD [Acc_InComeTopicCode] [varchar](12) NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'Acc_BidTopicCode','IsRowGuidCol')is  null ) 
 ALTER TABLE [Stuffcoding] ADD [Acc_BidTopicCode] [varchar](12) NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'Acc_CommissionTopicCode','IsRowGuidCol')is  null ) 
 ALTER TABLE [Stuffcoding] ADD [Acc_CommissionTopicCode] [varchar](12) NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'Commission','IsRowGuidCol')is  null ) 
    ALTER TABLE [Stuffcoding] ADD [Commission] Float NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'Amani_StuffActiveInDoc','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [Amani_StuffActiveInDoc] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ActiveDocOnCommission','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [ActiveDocOnCommission] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('Config'),'StuffKindActive','IsRowGuidCol')is  null ) 
    ALTER TABLE [Config] ADD [StuffKindActive] Tinyint NOT NULL  DEFAULT (0) 

		if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ReciptOnFormsRange]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
			  CREATE TABLE [ReciptOnFormsRange] ([FormID] int NOT NULL ,[ReciptID] int NOT NULL ,
			 CONSTRAINT [FK_ReciptOnFormsRange_Forms] FOREIGN KEY 	([FormID]
			 ) REFERENCES [Forms] ([FormID]) ON DELETE CASCADE ON UPDATE CASCADE ,
			 CONSTRAINT [FK_ReciptOnFormsRange_Recipts] FOREIGN KEY
			 ([ReciptID]) REFERENCES [Recipts] ([ReciptID]) ) ON [PRIMARY]

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'CofferType','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [CofferType] VarChar (20) 

      if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'ReciptID','IsRowGuidCol')is  null ) 
    ALTER TABLE [Forms] ADD [ReciptID]  int   

      if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'DebtControlActive','IsRowGuidCol')is  null ) 
    ALTER TABLE [Recipts] ADD [DebtControlActive]  Tinyint NOT NULL  DEFAULT (0)  

      if ( COLUMNPROPERTY( OBJECT_ID('Stores'),'Entity','IsRowGuidCol')is  null ) 
    ALTER TABLE [Stores] ADD [Entity] Float NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('Stores'),'Weight','IsRowGuidCol')is  null ) 
    ALTER TABLE [Stores] ADD [Weight] Float NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'UnitSellPrice2','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptItems] ADD [UnitSellPrice2] Money 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ShowListOnMnu','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [ShowListOnMnu] Tinyint NOT NULL  DEFAULT (1) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'AccCodingShow','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [AccCodingShow] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'Store2Active','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [Store2Active] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'StoreID2','IsRowGuidCol')is  null ) 
    ALTER TABLE [Recipts] ADD [StoreID2]  [smallint] NOT NULL  DEFAULT (0)  

      if ( COLUMNPROPERTY( OBJECT_ID('Deficits'),'ObverseTopicCode','IsRowGuidCol')is  null ) 
    ALTER TABLE [Deficits] ADD [ObverseTopicCode] [varchar](12) NOT NULL  DEFAULT (0)  
 
      if ( COLUMNPROPERTY( OBJECT_ID('TransFormItems'),'StanRate','IsRowGuidCol')is  null ) 
    ALTER TABLE [TransFormItems] ADD [StanRate] Money  

      if ( COLUMNPROPERTY( OBJECT_ID('TransFormItems'),'ScheduleID','IsRowGuidCol')is  null ) 
    ALTER TABLE [TransFormItems] ADD [ScheduleID] int  

      if ( COLUMNPROPERTY( OBJECT_ID('TransFormItems'),'StuffPersent','IsRowGuidCol')is  null ) 
    ALTER TABLE [TransFormItems] ADD [StuffPersent] Float  

      if ( COLUMNPROPERTY( OBJECT_ID('TransFormItems'),'StuffPersentRate','IsRowGuidCol')is  null ) 
    ALTER TABLE [TransFormItems] ADD [StuffPersentRate] Money  

      if ( COLUMNPROPERTY( OBJECT_ID('TransFormItems'),'InfoType','IsRowGuidCol')is  null ) 
    ALTER TABLE [TransFormItems] ADD [InfoType] Tinyint NOT NULL  DEFAULT (0)  

		  if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TransFormInfo]') and OBJECTPROPERTY(id,
		 N'IsUserTable') = 1)
		  CREATE TABLE [TransFormInfo] ( [ID] int NOT NULL ,	[TransFormID] int NOT NULL ,	[InfoType] Tinyint NOT NULL ,
     [Code] int NOT NULL ,	[Name] [varchar](80) , 	[SheetID] int  ,	[Amount1] Float  ,	[Amount2] Float ,
     [StanRate] Money , [PrvCode] int  , CONSTRAINT [PK_TransFormInfo] PRIMARY KEY  CLUSTERED 
    	([ID])  ON [PRIMARY] ,CONSTRAINT [FK_TransFormInfo_TransForms] FOREIGN KEY 
    	([TransFormID]) REFERENCES [TransForms] ([TransFormID]) ON DELETE CASCADE  ON UPDATE CASCADE  ) ON [PRIMARY] 

      if  ( SELECT     COUNT(*) FROM         sysindexes WHERE     (name = N'IX_TransFormInfo'))= 0  
      CREATE UNIQUE NONCLUSTERED INDEX IX_TransFormInfo ON dbo.TransFormInfo	(InfoType,TransFormID,Code) ON [PRIMARY] 


      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CashWageActive','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [CashWageActive] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CashWageTopicCode','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [CashWageTopicCode] [varchar](12) NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CashWageDetailCode','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [CashWageDetailCode] [varchar](12) NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CashWageCTopicCode','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [CashWageCTopicCode] [varchar](12) NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CashWageCTopicCode2','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [CashWageCTopicCode2] [varchar](12) NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'ConstDetailCode_Bed','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [ConstDetailCode_Bed] [varchar](12) NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'ConstDetailCode_Bes','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [ConstDetailCode_Bes] [varchar](12) NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'ADDLevelID','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [ADDLevelID] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'EditLevelID','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [EditLevelID] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'DeleteLevelID','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [DeleteLevelID] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'ChangeStateLevelID','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [ChangeStateLevelID] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'PrintLevelID','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [PrintLevelID] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'FormRelatedLevelID','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [FormRelatedLevelID] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'AccCodeLevelID','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [AccCodeLevelID] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ADDLevelID','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [ADDLevelID] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'EditLevelID','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [EditLevelID] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'DeleteLevelID','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [DeleteLevelID] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ChangeStateLevelID','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [ChangeStateLevelID] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'PrintLevelID','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [PrintLevelID] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'FormRelatedLevelID','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [FormRelatedLevelID] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'AccCodeLevelID','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [AccCodeLevelID] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormItems'),'CashWage','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormItems] ADD [CashWage] Money  

      if ( COLUMNPROPERTY( OBJECT_ID('Config'),'AccDetailCodeEqualCustID','IsRowGuidCol')is  null ) 
    ALTER TABLE [Config] ADD [AccDetailCodeEqualCustID] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'StoreKindList','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [StoreKindList] VarChar (50) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'Dec_TopicCode','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [Dec_TopicCode] [varchar](12) NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'Dec_DetailCode','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [Dec_DetailCode] [varchar](12) NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'Dec_CTopicCode','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [Dec_CTopicCode] [varchar](12) NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'Dec_CTopicCode2','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [Dec_CTopicCode2] [varchar](12) NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'StuffpurePercent','IsRowGuidCol')is  null ) 
    ALTER TABLE [Stuffcoding] ADD [StuffpurePercent] Float NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'StuffpublicPercent','IsRowGuidCol')is  null ) 
    ALTER TABLE [Stuffcoding] ADD [StuffpublicPercent] Float NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'MachineWeight','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptItems] ADD [MachineWeight] Float NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'TotalWeight','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptItems] ADD [TotalWeight] Float NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'TruckNumber','IsRowGuidCol')is  null ) 
    ALTER TABLE [Recipts] ADD [TruckNumber] [varchar](25) 


      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'RptAddAccountKind','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [RptAddAccountKind] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'RptAddUtilizeCustCode','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [RptAddUtilizeCustCode] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'RptAddWorkableCheckKind','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [RptAddWorkableCheckKind] Tinyint NOT NULL  DEFAULT (0) 


      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'RptDecAccountKind','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [RptDecAccountKind] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'RptDecUtilizeCustCode','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [RptDecUtilizeCustCode] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'RptDecWorkableCheckKind','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [RptDecWorkableCheckKind] Tinyint NOT NULL  DEFAULT (0) 



      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CustAddUtilizeCustCode','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [CustAddUtilizeCustCode] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CustAddCondition ','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [CustAddCondition] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CustAddWorkableCheckKind','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [CustAddWorkableCheckKind] Tinyint NOT NULL  DEFAULT (0) 


      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CustDecUtilizeCustCode','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [CustDecUtilizeCustCode] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CustDecCondition ','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [CustDecCondition] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CustDecWorkableCheckKind','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [CustDecWorkableCheckKind] Tinyint NOT NULL  DEFAULT (0) 


      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'EffectOnCustomer2','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [EffectOnCustomer2] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'UseableCustomer','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [UseableCustomer] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('Config'),'AuxiliaryCaption','IsRowGuidCol')is  null ) 
    ALTER TABLE [Config] ADD [AuxiliaryCaption] [varchar](20)  

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'Auxiliary','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptItems] ADD [Auxiliary] Float 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'NonZeroControl','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [NonZeroControl] Tinyint NOT NULL  DEFAULT (0) 


      if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'MachineNo','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptItems] ADD [MachineNo] [varchar](25) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'MachineName','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptItems] ADD [MachineName] [varchar](50) 


      if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'MachineFullWeight','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptItems] ADD [MachineFullWeight] Float NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'SugarCo','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptItems] ADD [SugarCo] Float NOT NULL  DEFAULT (0)   

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'SugarEntity','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptItems] ADD [SugarEntity] Float NOT NULL  DEFAULT (0)  

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'MachineActive','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [MachineActive] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'EarthActive','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [EarthActive] Tinyint NOT NULL  DEFAULT (1) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'WetActive','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [WetActive] Tinyint NOT NULL  DEFAULT (1) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'SugarActive','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [SugarActive] Tinyint NOT NULL  DEFAULT (1) 

      if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'BankReports','IsRowGuidCol')is  null ) 
    ALTER TABLE [Customers] ADD [BankReports] VarChar (250) 

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'DuplicateReciptNumber','IsRowGuidCol')is  null ) 
 ALTER TABLE [ReciptTypes] ADD [DuplicateReciptNumber] Tinyint NOT NULL  DEFAULT (1) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'Customer2DetailKind','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [Customer2DetailKind] VarChar (50) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'Customer2DetailKind','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [Customer2DetailKind] VarChar (50) 

    ALTER TABLE [LookUps] 	ALTER COLUMN [Code] int 
    ALTER TABLE [LookUps] 	ALTER COLUMN [kind] int 

      if ( COLUMNPROPERTY( OBJECT_ID('Config'),'StuffCodingKind','IsRowGuidCol')is  null ) 
    ALTER TABLE [Config] ADD [StuffCodingKind] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('Config'),'SpecialReportsActive','IsRowGuidCol')is  null ) 
    ALTER TABLE [Config] ADD [SpecialReportsActive] Tinyint NOT NULL  DEFAULT (1) 

		  if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Earth]') and OBJECTPROPERTY(id,
		 N'IsUserTable') = 1)
		  CREATE TABLE [Earth] ([EarthID] int NOT NULL  ,[EarthCode] int ,[EarthField] int NOT NULL ,
	 	 [Gate] int NOT NULL ,[Meters] Float NOT NULL ,CONSTRAINT [PK_Earth] PRIMARY KEY CLUSTERED
	   ([EarthID]) ON [PRIMARY] ) ON [PRIMARY] 

		  if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[EarthLimit]') and OBJECTPROPERTY(id,
		 N'IsUserTable') = 1)
	    CREATE TABLE [EarthLimit] (	[EarthLimitID] int NOT NULL ,	[EarthID] int NOT NULL ,[StartDate] char(10)  NOT NULL , 
	   [EndDate] char(10)  NOT NULL ,[ProcCode] int NOT NULL ,	[ProceWeight] Float NULL , 
	   CONSTRAINT [PK_EarthLimit] PRIMARY KEY  CLUSTERED ([EarthLimitID]	)  ON [PRIMARY] , 
	   CONSTRAINT [FK_EarthLimit_Earth] FOREIGN KEY ([EarthID]) REFERENCES [Earth] ([EarthID]) 
	   ON DELETE CASCADE  ON UPDATE CASCADE ) ON [PRIMARY] 

      if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'MachineNo','IsRowGuidCol')is  null ) 
    ALTER TABLE [Recipts] ADD [MachineNo] [varchar](25) 

      if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'MachineName','IsRowGuidCol')is  null ) 
    ALTER TABLE [Recipts] ADD [MachineName] [varchar](50) 

      if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'ManageName','IsRowGuidCol')is  null ) 
    ALTER TABLE [Customers] ADD [ManageName] VarChar (60) 

      if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'ManagerSells','IsRowGuidCol')is  null ) 
    ALTER TABLE [Customers] ADD [ManagerSells] VarChar (60) 

      if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'ContactNo','IsRowGuidCol')is  null ) 
    ALTER TABLE [Customers] ADD [ContactNo] VarChar (20) 

      if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'DiscountNote','IsRowGuidCol')is  null ) 
    ALTER TABLE [Customers] ADD [DiscountNote] VarChar (50) 

      if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'Discount','IsRowGuidCol')is  null ) 
    ALTER TABLE [Customers] ADD [Discount] Float 

      if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'DayTime','IsRowGuidCol')is  null ) 
    ALTER TABLE [Customers] ADD [DayTime] int 

      if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'ConveyKind','IsRowGuidCol')is  null ) 
    ALTER TABLE [Customers] ADD [ConveyKind] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('Config'),'CommunicableStores','IsRowGuidCol')is  null ) 
    ALTER TABLE [Config] ADD [CommunicableStores] Tinyint NOT NULL  DEFAULT (1) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'DiscountEntryKind','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [DiscountEntryKind] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'AidInfoCaptionNo','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [AidInfoCaptionNo] VarChar (50) 

    
    ALTER TABLE Recipts	DROP CONSTRAINT DF_Recipts_SecondType 
    ALTER TABLE [Recipts] ALTER COLUMN [SecondType] int  
    ALTER TABLE Recipts ADD  CONSTRAINT	DF_Recipts_SecondType DEFAULT (0) FOR SecondType 

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'EffectOnNotRecall','IsRowGuidCol')is  null ) 
 ALTER TABLE [ReciptTypes] ADD [EffectOnNotRecall] Tinyint NOT NULL  DEFAULT (0) 

		  if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ReciptTypeRange]') and OBJECTPROPERTY(id,
		 N'IsUserTable') = 1)
		  CREATE TABLE [ReciptTypeRange] ([ReciptType] int NOT NULL ,[Kind] Tinyint NOT NULL ,
		 [RecalReciptType] int NOT NULL ,CONSTRAINT [PK_ReciptTypeRange] PRIMARY KEY  CLUSTERED
		 ([ReciptType],[Kind],[RecalReciptType])  ON [PRIMARY] ) ON [PRIMARY]

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'DeficitValueEditing','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [DeficitValueEditing] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('Config'),'StuffTecInfoActive','IsRowGuidCol')is  null ) 
    ALTER TABLE [Config] ADD [StuffTecInfoActive] Tinyint NOT NULL  DEFAULT (1) 

    ALTER TABLE [StuffCoding] ALTER COLUMN [c_StuffName] varchar(150)  

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'AidNumRestOnSecType','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [AidNumRestOnSecType] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ArzActive','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [ArzActive] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ArzTypeID','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [ArzTypeID] int  

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'SellEffect','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [SellEffect] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'ArzTypeID','IsRowGuidCol')is  null ) 
    ALTER TABLE [Recipts] ADD [ArzTypeID] int  

      if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'RialsEqual','IsRowGuidCol')is  null ) 
    ALTER TABLE [Recipts] ADD [RialsEqual] Money  

      if ( COLUMNPROPERTY( OBJECT_ID('LookUps'),'Amount1','IsRowGuidCol')is  null ) 
    ALTER TABLE [LookUps] ADD [Amount1] Float 

      if ( COLUMNPROPERTY( OBJECT_ID('LookUps'),'Amount2','IsRowGuidCol')is  null ) 
    ALTER TABLE [LookUps] ADD [Amount2] Float 

      if ( COLUMNPROPERTY( OBJECT_ID('LookUps'),'Amount3','IsRowGuidCol')is  null ) 
    ALTER TABLE [LookUps] ADD [Amount3] Float 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'StandardRate','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptItems] ADD [StandardRate] Money  

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'TotalStandardRate','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptItems] ADD [TotalStandardRate] Money  

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'StandardRateActive','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [StandardRateActive] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'ArzAmount','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptItems] ADD [ArzAmount] Float  

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'NonZeroActive','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [NonZeroActive] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ShowEntityOnSearch','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [ShowEntityOnSearch] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'InsertEntity','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [InsertEntity] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'InvEntity','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptItems] ADD [InvEntity] Float 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'InvWeight','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptItems] ADD [InvWeight] Float 

      if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'ArzTypeID','IsRowGuidCol')is  null ) 
    ALTER TABLE [Customers] ADD [ArzTypeID] int  

      if ( COLUMNPROPERTY( OBJECT_ID('Config'),'ArzTypeID','IsRowGuidCol')is  null ) 
    ALTER TABLE [Config] ADD [ArzTypeID] int  

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'AccStateActive','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [AccStateActive] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'accStateDefault','IsRowGuidCol')is  null ) 
    ALTER TABLE [Customers] ADD [accStateDefault] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'ManegerNoteActive','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [ManegerNoteActive] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'ManegerNote','IsRowGuidCol')is  null ) 
    ALTER TABLE [Forms] ADD [ManegerNote] [varchar](500)  

      if ( COLUMNPROPERTY( OBJECT_ID('FormItems'),'AccState','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormItems] ADD [AccState] Tinyint   

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'TabSheetActive','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [TabSheetActive] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'DefaultTopicInInset','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [DefaultTopicInInset] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'DefaultDetailInInsert','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [DefaultDetailInInsert] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'DefaultCTopicInInsert','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [DefaultCTopicInInsert] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'DefaultCTopic2InInsert','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [DefaultCTopic2InInsert] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'PriceReadOnly','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [PriceReadOnly] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('StuffGroups'),'LevelID','IsRowGuidCol')is  null ) 
    ALTER TABLE [StuffGroups] ADD [LevelID] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('StuffGroups'),'UperGroupId','IsRowGuidCol')is  null ) 
    ALTER TABLE [StuffGroups] ADD [UperGroupId] int NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('Config'),'LevelIdStuffGroup','IsRowGuidCol')is  null ) 
    ALTER TABLE [Config] ADD [LevelIdStuffGroup] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'UnicCodeCheck','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [UnicCodeCheck] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ReportFileCaption1','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [ReportFileCaption1]  [varchar](20)  

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ReportFileCaption2','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [ReportFileCaption2] [varchar](20) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CheckType','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [CheckType] int  

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CashType','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [CashType] int  

      if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'CashCheckFormID','IsRowGuidCol')is  null ) 
    ALTER TABLE [Forms] ADD [CashCheckFormID] int   

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'Store2Caption','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [Store2Caption] VarChar (50) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'InfoUse4Bed','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [InfoUse4Bed] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'InfoUse4Bes','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [InfoUse4Bes] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'DuplicateReciptNoActive','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [DuplicateReciptNoActive] Tinyint NOT NULL  DEFAULT (0) 

	
IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_StuffCoding_State_BlockOutput'))	
	drop index IX_StuffCoding_State_BlockOutput on StuffCoding
    ALTER TABLE [StuffCoding] ALTER COLUMN [c_StuffTecInfo] varchar(20)  

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'UsePerson1OnRecall','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [UsePerson1OnRecall] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ExtraCodingAddStuffName','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [ExtraCodingAddStuffName] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('Config'),'ExpireDateKind','IsRowGuidCol')is  null ) 
    ALTER TABLE [Config] ADD [ExpireDateKind] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('StuffCoding'),'StuffExpireDate','IsRowGuidCol')is  null ) 
    ALTER TABLE [StuffCoding] ADD [StuffExpireDate] char(10) 

 ALTER TABLE [Recipts] ALTER COLUMN [ReciptNote] varchar(400) 

      if ( COLUMNPROPERTY( OBJECT_ID('Config'),'RecoverPittedCode','IsRowGuidCol')is  null ) 
    ALTER TABLE [Config] ADD [RecoverPittedCode] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('Config'),'CanRelation','IsRowGuidCol')is  null ) 
    ALTER TABLE [Config] ADD [CanRelation] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'State0ChangeLevelID','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [State0ChangeLevelID] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'State1ChangeLevelID','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [State1ChangeLevelID] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'State2ChangeLevelID','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [State2ChangeLevelID] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'State3ChangeLevelID','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [State3ChangeLevelID] Tinyint NOT NULL  DEFAULT (0) 

		  if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[StuffCodingSpecial]') and OBJECTPROPERTY(id,
		 N'IsUserTable') = 1)
		  CREATE TABLE [StuffCodingSpecial] ([ID] int IDENTITY (1, 1) NOT NULL ,[StuffCode] int NOT NULL ,
		 [StuffName] VarChar (150) NOT NULL ,[StuffSize] [varchar](12) NOT NULL DEFAULT (''),
		 [StuffDiameter] Float NOT NULL DEFAULT (''),[StuffAlloy] [varchar](12) NOT NULL DEFAULT (''),
		 [minOrder] Float NULL ,[maxOrder] Float NULL ,[orderPoint] Float NULL ,[orderEntity] Float NULL ,[Note] [varchar](100) NULL,
		 CONSTRAINT [PK_StuffCodingSpecial] PRIMARY KEY CLUSTERED 	([ID]) ON [PRIMARY] ) ON [PRIMARY] 

		  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'FormItemKindSerial','IsRowGuidCol')is null )
		 UPDATE ReciptTypes SET PersonID1OnDetailActive=0 WHERE PersonID1OnDetailActive=2

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'FormItemKindSerial','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [FormItemKindSerial] int NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'SecondTypeItem','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptItems] ADD [SecondTypeItem] int    NOT NULL  DEFAULT (0)

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'State0ChangeLevelID','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [State0ChangeLevelID] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'State1ChangeLevelID','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [State1ChangeLevelID] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'State10ChangeLevelID','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [State10ChangeLevelID] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'Section2CaptionWeight','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [Section2CaptionWeight] VarChar (50) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'RequestedChange','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [RequestedChange]  Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'DeficitsLevelID','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [DeficitsLevelID]  Tinyint NOT NULL  DEFAULT (0) 


		  if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ExcelImport]') and OBJECTPROPERTY(id,
		 N'IsUserTable') = 1)
			  CREATE TABLE [ExcelImport] ([CellCode] varchar(10) NOT NULL ,[StoreID] [smallint] NOT NULL ,
			 [StuffCode] int NOT NULL ,[ReciptType] Tinyint NOT NULL ,
			 [KindValue] Tinyint NULL CONSTRAINT [DF_ExcelImport_KindValue] DEFAULT (0),
			 [GroupID] Tinyint NOT NULL CONSTRAINT [DF_ExcelImport_GroupID] DEFAULT (0),
			 CONSTRAINT [PK_ExcelImport] PRIMARY KEY CLUSTERED([CellCode],[StoreID],[StuffCode],[ReciptType]) ON [PRIMARY] ,
			 CONSTRAINT [FK_ExcelImport_ReciptTypes]FOREIGN KEY ([ReciptType])REFERENCES [ReciptTypes] ([ReciptType]) ON UPDATE CASCADE ,
			 CONSTRAINT [FK_ExcelImport_Stores] FOREIGN KEY ([StoreID]) REFERENCES [Stores] ([n_StoreID]	) ON UPDATE CASCADE ,
			 CONSTRAINT [FK_ExcelImport_StuffCoding] FOREIGN KEY	([StuffCode]) REFERENCES [StuffCoding] ([c_StuffCode]) ON UPDATE CASCADE ) ON [PRIMARY]

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'MaxControlCode','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [MaxControlCode]  Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'SubAmount','IsRowGuidCol')is  null ) 
    ALTER TABLE [Forms] ADD [SubAmount] Money 

      if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'Rate','IsRowGuidCol')is  null ) 
    ALTER TABLE [Forms] ADD [Rate] Float 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'FormTopicSerial','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [FormTopicSerial] int  

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'FormPaySerial','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [FormPaySerial] int  

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'StoreControlEntity','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [StoreControlEntity] VarChar (50) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'Person2DetailCaption','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [Person2DetailCaption] VarChar (50) NOT NULL    DEFAULT ('ãÔÊÑí') 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'AidInfoControlDate','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [AidInfoControlDate]  Tinyint NOT NULL  DEFAULT (1) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'MasterLoan','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [MasterLoan]  Tinyint NOT NULL  DEFAULT (1) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ControlCodeUnic','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [ControlCodeUnic]  Tinyint NOT NULL  DEFAULT (1) 

      if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'NationalID','IsRowGuidCol')is  null ) 
    ALTER TABLE [Customers] ADD  [NationalID] VarChar (12) NULL 

      if ( COLUMNPROPERTY( OBJECT_ID('Config'),'StuffEnableKind','IsRowGuidCol')is  null ) 
    ALTER TABLE [Config] ADD [StuffEnableKind] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('Config'),'FileInputPath','IsRowGuidCol')is  null ) 
    ALTER TABLE [Config] ADD [FileInputPath] VarChar (250) 

      if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Tozin]') and OBJECTPROPERTY(id,
     N'IsUserTable') = 1)
      CREATE TABLE [Tozin] ( [TozinID] int NOT NULL ,
     [TozinNumber] int NOT NULL CONSTRAINT [DF_Tozins_TozinNumber] DEFAULT (0),
     [TozinDate] char(10) NOT NULL CONSTRAINT [DF_Tozins_TozinDate] DEFAULT (''),
     [StuffCode] int NOT NULL ,	[PersonID1] int NOT NULL ,	[MachineName] VarChar (50) NULL ,
     [StoreID] [smallint] NULL CONSTRAINT [DF_Tozins_StoreID] DEFAULT (0),
     [MachineNo] VarChar (25) NULL ,[ReciptType] Tinyint NOT NULL ,
     [MachineWeight] Float NOT NULL CONSTRAINT [DF__Tozins_MachineWeight] DEFAULT (0),
     [MachineFullWeight] Float NOT NULL CONSTRAINT [DF__Tozins_MachineFullWeight] DEFAULT (0),
     [TozinNote] VarChar (100) NULL ,[EnterDate] [datetime] NOT NULL ,[ExitDate] [datetime] NOT NULL ,
     [FirstUser] VarChar (50) NULL ,[LastUser] VarChar (50) NULL ,
     CONSTRAINT [PK_Tozins] PRIMARY KEY CLUSTERED 	([TozinID]	) ON [PRIMARY] ,
     CONSTRAINT [FK_Tozins_ReciptTypes] FOREIGN KEY ([ReciptType])
     REFERENCES [ReciptTypes] ([ReciptType]) ON UPDATE CASCADE ,
     CONSTRAINT [FK_Tozins_Stores] FOREIGN KEY 	([StoreID]	)
     REFERENCES [Stores] (	[n_StoreID]	) ON UPDATE CASCADE ,
     CONSTRAINT [FK_Tozins_StuffCoding] FOREIGN KEY 	([StuffCode]	)
     REFERENCES [StuffCoding] (	[c_StuffCode]	) ON UPDATE CASCADE ,
     CONSTRAINT [FK_Tozins_Customers] FOREIGN KEY 	([PersonID1]	)
     REFERENCES [Customers] (	[CustID]	) ON UPDATE CASCADE 
     ) ON [PRIMARY]

    
     if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UseOthers]') and
     OBJECTPROPERTY(id,N'IsUserTable') = 1)
     begin
     CREATE TABLE [UseOthers]([UseOtherID] [nvarchar](15) NOT NULL,[UseOtherName] [nvarchar](50) NULL,
     [Code] NvarChar (20) NULL ,[LookUpID] int NULL ,	[Rate] Float NULL ,
     CONSTRAINT [PK_UseOthers] PRIMARY KEY CLUSTERED([UseOtherID]) ON [PRIMARY] ,
     CONSTRAINT [FK_UseOthers_LookUps] FOREIGN KEY 	([LookUpID]	)
     REFERENCES [LookUps] ([LookUpID]) ON UPDATE CASCADE ) ON [PRIMARY]
    ALTER TABLE [Recipts] ADD [UseOtherID] NvarChar (15) NULL
    ALTER TABLE dbo.Recipts WITH NOCHECK ADD CONSTRAINT	FK_Recipts_UseOthers FOREIGN KEY
     (UseOtherID	) REFERENCES dbo.UseOthers	(	UseOtherID	) ON UPDATE CASCADE
     end 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'UseOtherActive','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [UseOtherActive] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('UseOthers'),'Kind','IsRowGuidCol')is  null ) 
    ALTER TABLE [UseOthers] ADD [Kind] [nvarchar](50) NULL  

      if ( COLUMNPROPERTY( OBJECT_ID('Config'),'EntityOutputLowerLimit2','IsRowGuidCol')is  null ) 
    ALTER TABLE [Config] ADD [EntityOutputLowerLimit2] Money 



		 if ( COLUMNPROPERTY( OBJECT_ID('UseOthers'),'TypeCode','IsRowGuidCol')is null )
		 begin
		ALTER TABLE dbo.UseOthers ADD	TypeCode int NULL
		ALTER TABLE dbo.UseOthers WITH NOCHECK ADD CONSTRAINT	FK_UseOthers_LookUps1
		 FOREIGN KEY	(TypeCode) REFERENCES dbo.LookUps	(LookUpID)
		 end


      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'Deficate_TopicCode','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [Deficate_TopicCode]  VarChar (15)  

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'Deficate_DetailCode','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [Deficate_DetailCode]  VarChar (15)       

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'Deficate_MakeDocKind','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [Deficate_MakeDocKind] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('Stuffcoding'),'SellPrice_S','IsRowGuidCol')is  null ) 
    ALTER TABLE [Stuffcoding] ADD [SellPrice_S] Money  

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ChangeAidReciptDate','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [ChangeAidReciptDate] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'TozinActive','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [TozinActive] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'OtherRptFiles','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [OtherRptFiles] VarChar (250) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'OtherRptCaptions','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [OtherRptCaptions] VarChar (250) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'RecallFormDisk','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [RecallFormDisk] Tinyint NOT NULL  DEFAULT (0) 

		  if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[EarthGroups]') and OBJECTPROPERTY(id,
		 N'IsUserTable') = 1)
		 CREATE TABLE [EarthGroups] ([EarthGrpID] int NOT NULL  DEFAULT (0) ,[EarthGrpName] NvarChar (100) NOT NULL ,
	 	 [Amount] Float ,CONSTRAINT [PK_EarthGroups] PRIMARY KEY CLUSTERED ([EarthGrpID]) ON [PRIMARY] ) ON [PRIMARY] 



		 if ( COLUMNPROPERTY( OBJECT_ID('Earth'),'EarthGrpID','IsRowGuidCol')is null )
		 begin
		ALTER TABLE Earth ADD	EarthGrpID int NOT NULL DEFAULT (0) 
		ALTER TABLE Earth WITH NOCHECK ADD CONSTRAINT	FK_Earth_EarthGroups
		 FOREIGN KEY	(EarthGrpID) REFERENCES EarthGroups	(EarthGrpID )ON UPDATE CASCADE
		ALTER TABLE Earth ADD	EarthDesc NvarChar (80) 
		ALTER TABLE Earth ADD	UnitCode Tinyint  
		ALTER TABLE Earth WITH NOCHECK ADD CONSTRAINT	FK_Earth_Units
		 FOREIGN KEY	(UnitCode) REFERENCES Units	(UnitCode  )ON UPDATE CASCADE 
		ALTER TABLE Earth ADD	EarthTeckinfo NvarChar (50) 
		ALTER TABLE Earth ADD	OwnerDate char(10) 
		 end

      if ( COLUMNPROPERTY( OBJECT_ID('EarthLimit'),'State','IsRowGuidCol')is  null ) 
    ALTER TABLE [EarthLimit] ADD [State] Tinyint NOT NULL  DEFAULT (0) 

		  if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ProcessInfo]') and OBJECTPROPERTY(id,
		 N'IsUserTable') = 1)
		  CREATE TABLE [ProcessInfo] ([ProcessID] int NOT NULL ,[ProcessName] NvarChar (80) NOT NULL ,
	 	 CONSTRAINT [PK_ProcessInfo] PRIMARY KEY CLUSTERED ([ProcessID]) ON [PRIMARY] ) ON [PRIMARY] 


		 if ( COLUMNPROPERTY( OBJECT_ID('TransForms'),'EarthGrpID','IsRowGuidCol')is null )
		 begin
		ALTER TABLE TransForms ADD	EarthGrpID int NOT NULL DEFAULT (0) 
		ALTER TABLE TransForms WITH NOCHECK ADD CONSTRAINT	FK_TransForms_EarthGroups
		 FOREIGN KEY	(EarthGrpID) REFERENCES EarthGroups	( EarthGrpID ) ON UPDATE CASCADE 
		ALTER TABLE TransForms ADD	EarthCost  Float  
		ALTER TABLE TransForms ADD	CycleMonth Float  
		 end

		 if ( COLUMNPROPERTY( OBJECT_ID('TransFormItems'),'ProcessID','IsRowGuidCol')is null )
		 begin
		ALTER TABLE TransFormItems ADD	CycleMonth Float  
		ALTER TABLE TransFormItems ADD	ProcessID int NOT NULL DEFAULT (0) 
		ALTER TABLE TransFormItems WITH NOCHECK ADD CONSTRAINT	FK_TransFormItems_ProcessInfo
		 FOREIGN KEY	(ProcessID) REFERENCES ProcessInfo	( ProcessID ) ON UPDATE CASCADE 
		 end


		 if ( COLUMNPROPERTY( OBJECT_ID('TransFormInfo'),'ProcessID','IsRowGuidCol')is null )
		 begin
		ALTER TABLE TransFormInfo ADD	CycleMonth Float  
		ALTER TABLE TransFormInfo ADD	ProcessID int NOT NULL DEFAULT (0) 
		ALTER TABLE TransFormInfo WITH NOCHECK ADD CONSTRAINT	FK_TransFormInfo_ProcessInfo
		 FOREIGN KEY	(ProcessID) REFERENCES ProcessInfo	( ProcessID )ON UPDATE CASCADE 
		 end

		  if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ProcessProduce]') and OBJECTPROPERTY(id,
		 N'IsUserTable') = 1)
		  CREATE TABLE [ProcessProduce] ([ProcessProduceID] int NOT NULL ,[ProcessID] int NOT NULL  DEFAULT (0) ,[ProcessRow] int NOT NULL ,[PrvCode] int NOT NULL ,
	 	 [CycleMonth] Float NOT NULL ,[TransFormID] int NOT NULL ,CONSTRAINT [PK_ProcessProduce] PRIMARY KEY CLUSTERED
	   ([ProcessProduceID]) ON [PRIMARY] 
		 ,	CONSTRAINT [FK_ProcessProduce_ProcessInfo] FOREIGN KEY ([ProcessID]) REFERENCES [ProcessInfo] ([ProcessID])  ON UPDATE CASCADE 
		 ,	CONSTRAINT [FK_ProcessProduce_TransForms] FOREIGN KEY ([TransFormID]) REFERENCES [TransForms] ([TransFormID])  ON DELETE CASCADE ON UPDATE CASCADE ) ON [PRIMARY] 


       if ( COLUMNPROPERTY( OBJECT_ID('LookUps'),'ChangeState','IsRowGuidCol')is  null ) 
    ALTER TABLE [LookUps] ADD [ChangeState]  Tinyint NOT NULL  DEFAULT (0)  

        if ( COLUMNPROPERTY( OBJECT_ID('StuffCoding'),'ChangeState','IsRowGuidCol')is  null ) 
    ALTER TABLE [StuffCoding] ADD [ChangeState]  Tinyint NOT NULL  DEFAULT (0)  

        if ( COLUMNPROPERTY( OBJECT_ID('Units'),'ChangeState','IsRowGuidCol')is  null ) 
    ALTER TABLE [Units] ADD [ChangeState]  Tinyint NOT NULL  DEFAULT (0)  

      if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[StuffCodingAid]') and OBJECTPROPERTY(id,
		 N'IsUserTable') = 1)
		  CREATE TABLE [StuffCodingAid] ([c_StuffCode] int NOT NULL ,[LookupID] int NOT NULL  ,
	 	 [LookUpDesc] int NOT NULL ,CONSTRAINT [PK_StuffCodingAid] PRIMARY KEY CLUSTERED
	   ([LookUpDesc],[c_StuffCode],[LookupID]) ON [PRIMARY] 
		 ,	CONSTRAINT [FK_StuffCodingAid_StuffCoding] FOREIGN KEY ([c_StuffCode]) REFERENCES [StuffCoding] ([c_StuffCode])  ON DELETE CASCADE ON UPDATE CASCADE ) ON [PRIMARY]


      if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'Mobile','IsRowGuidCol')is  null ) 
    ALTER TABLE [Customers] ADD [Mobile] VarChar (20) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ShowNotEntityOnSearch','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [ShowNotEntityOnSearch] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'SearchReciptNumber','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [SearchReciptNumber] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('Config'),'BarCodeKind','IsRowGuidCol')is  null ) 
    ALTER TABLE [Config] ADD [BarCodeKind] Tinyint NOT NULL  DEFAULT (0) 

     if not exists (select * from dbo.sysobjects where id = object_id(N'[Manifesto]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
     begin
      CREATE TABLE [Manifesto] ([ManifestoID] int NOT NULL ,[ManifestoNo] int NOT NULL
     ,[ManifestoDate] [char] (10) NOT NULL ,[ManifestoRunDate] [char] (10) NOT NULL ,[Note] NvarChar (250) ,
     CONSTRAINT [PK_Manifesto] PRIMARY KEY CLUSTERED	([ManifestoID]) ON [PRIMARY] ) ON [PRIMARY]
     end
     if not exists (select * from dbo.sysobjects where id = object_id(N'[ManifestoItems]') and OBJECTPROPERTY(id,N'IsUserTable') = 1)
     begin
      CREATE TABLE [ManifestoItems] ([ManifestoItemsID] int IDENTITY (1, 1) NOT NULL ,
     [ManifestoID] int NOT NULL ,[StuffCode] int NOT NULL , [ConsumerPrice] Money ,
     SellPrice1 Money ,SellPrice2 Money ,SellPrice3 Money ,SellPrice4 Money ,
     CONSTRAINT [PK_ManifestoItems] PRIMARY KEY CLUSTERED	([ManifestoItemsID]) ON [PRIMARY],
     CONSTRAINT [FK_ManifestoItems_Manifesto] FOREIGN KEY ([ManifestoID])
     REFERENCES [Manifesto] ([ManifestoID]) ON DELETE CASCADE ON UPDATE CASCADE,
     CONSTRAINT [FK_Manifesto_StuffCoding] FOREIGN KEY ([StuffCode])
     REFERENCES [StuffCoding] ([c_StuffCode]) ON UPDATE CASCADE )ON [PRIMARY]
     end

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'AcceptEntity','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptItems] ADD [AcceptEntity] Float 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'RollbackEntity','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptItems] ADD [RollbackEntity] Float 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'AcceptRollbackEntity','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [AcceptRollbackEntity] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'PrintAfterPost','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [PrintAfterPost] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'PriorityReciptDate','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [PriorityReciptDate] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormItems'),'ItemState','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormItems] ADD [ItemState] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormItems'),'ItemStateComment','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormItems] ADD [ItemStateComment] NvarChar (200) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormItems'),'SeverableAmount','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormItems] ADD [SeverableAmount] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'TopicCodeActive','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [TopicCodeActive] Tinyint NOT NULL  DEFAULT (1) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'DetailCodeActive','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [DetailCodeActive] Tinyint NOT NULL  DEFAULT (1) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CTopicCode1Active','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [CTopicCode1Active] Tinyint NOT NULL  DEFAULT (1) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CTopicCode2Active','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [CTopicCode2Active] Tinyint NOT NULL  DEFAULT (1) 

		 if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Severable]') and OBJECTPROPERTY(id,N'IsUserTable') =1)
      CREATE TABLE [Severable] ([ID] int IDENTITY (1, 1) NOT NULL , [FormItemID] int NOT NULL ,
     [CustID] int NOT NULL,[TopicCode] [varchar](12) NULL,	[DetailCode] [varchar](12) NULL,
     [CTopicCode] [varchar](12) NULL,[CTopicCode2] [varchar](12) NULL,[BudgetCode] int NULL,
     [Amount] Money NOT NULL,
     CONSTRAINT [PK_Severable] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY] ,
     CONSTRAINT [FK_Severable_FormItems] FOREIGN KEY ([FormItemID]) REFERENCES [FormItems] ([FormItemID]) ON DELETE
     CASCADE ON UPDATE CASCADE ,
     CONSTRAINT [FK_Severable_Customers] FOREIGN KEY ([CustID])REFERENCES [Customers] ([CustID])  ON UPDATE CASCADE
     ) ON [PRIMARY]

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'EditableFields','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [EditableFields] NvarChar (1000) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ShowEntityWeightOnList','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [ShowEntityWeightOnList] Tinyint NOT NULL  DEFAULT (1) 

      if ( COLUMNPROPERTY( OBJECT_ID('UseUnits'),'UseActive','IsRowGuidCol')is  null ) 
    ALTER TABLE [UseUnits] ADD [UseActive]  Tinyint  NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ShowKeepPlace','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [ShowKeepPlace] Tinyint NOT NULL  DEFAULT (0) 

     if ( COLUMNPROPERTY( OBJECT_ID('Config'),'ArchivePath','IsRowGuidCol')is  null ) 
    ALTER TABLE [Config] ADD [ArchivePath] [Nvarchar](301)  

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'AcceptWeight','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptItems] ADD [AcceptWeight] Float 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'RollbackWeight','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptItems] ADD [RollbackWeight] Float 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'UpholdActive','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [UpholdActive]  Tinyint  NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'EditableFields','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [EditableFields] NvarChar (1000) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ReciptNumberKind','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [ReciptNumberKind] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes1'),'ReciptNumberOfType','IsRowGuidCol')is  null ) 
    ALTER TABLE ReciptTypes1 ADD ReciptNumberOfType int  
    ALTER TABLE ReciptTypes1 ALTER COLUMN ReciptNumberOfType Nvarchar(250) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'CorrelateReciptNumberKind','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [CorrelateReciptNumberKind] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'AllotmentActive','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [AllotmentActive] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'CorrelateReciptsDeficits','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [CorrelateReciptsDeficits] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'CustomersRow','IsRowGuidCol')is  null ) 
    ALTER TABLE [Customers] ADD [CustomersRow] int  

      if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'ReciptsRow','IsRowGuidCol')is  null ) 
    ALTER TABLE [Recipts] ADD [ReciptsRow] int  

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'RepelInsertRecipt','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [RepelInsertRecipt] Tinyint NOT NULL  DEFAULT (1) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CustomerDetailsDocType','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [CustomerDetailsDocType] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'BedBesDetails','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [BedBesDetails] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'CorrelateStateChange','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [CorrelateStateChange] Tinyint NOT NULL  DEFAULT (1) 

      if ( COLUMNPROPERTY( OBJECT_ID('Config'),'DocStatusDefault','IsRowGuidCol')is  null ) 
    ALTER TABLE [Config] ADD [DocStatusDefault] Tinyint NOT NULL DEFAULT (1)  

      if ( COLUMNPROPERTY( OBJECT_ID('Config'),'DocReciptStateDefault','IsRowGuidCol')is  null ) 
    ALTER TABLE [Config] ADD [DocReciptStateDefault] Tinyint NOT NULL DEFAULT (0)  

     if not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Recipts_LookUps' AND type = 'F') 
    ALTER TABLE dbo.Recipts WITH NOCHECK ADD CONSTRAINT FK_Recipts_LookUps FOREIGN KEY( 
        SecondType   )REFERENCES dbo.LookUps(LookUpID) 

     if not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptItems_LookUps' AND type = 'F') 
    ALTER TABLE dbo.ReciptItems WITH NOCHECK ADD CONSTRAINT FK_ReciptItems_LookUps FOREIGN KEY( 
        SecondTypeItem   )REFERENCES dbo.LookUps(LookUpID) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'Deficate_MakeDocApart','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [Deficate_MakeDocApart] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('Config'),'EditCustNameLevelID','IsRowGuidCol')is  null ) 
    ALTER TABLE [Config] ADD [EditCustNameLevelID] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('Config'),'EditStuffNameLevelID','IsRowGuidCol')is  null ) 
    ALTER TABLE Config ADD EditStuffNameLevelID Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'TaxCo','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptItems] ADD [TaxCo] Float 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'TaxValue','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptItems] ADD [TaxValue] Money 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'VATActive','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [VATActive] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'VATCo','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [VATCo] Float NOT NULL  DEFAULT (3) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'VATRound','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [VATRound] Tinyint NOT NULL  DEFAULT (2) 

		 if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[CustomersInterView]') and OBJECTPROPERTY
     (id,N'IsUserTable') =1)
      CREATE TABLE [CustomersInterView] ([ID] int IDENTITY (1, 1) NOT NULL ,[CustID] int NOT NULL,
     [InterViewKind] Tinyint NOT NULL ,[InterViewNo] int NOT NULL,[InterViewDate] [char](10) NOT NULL,
     [InterViewNote] [nvarchar](2000) ,[Accost][nvarchar](200) ,	[ModifyDate] [datetime] NOT NULL,
     [InterViewStae] Tinyint NOT NULL	,
     CONSTRAINT [PK_CustomersInterView] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY] ,
     CONSTRAINT [FK_CustomersInterView_Customers] FOREIGN KEY ([CustID])REFERENCES [Customers] ([CustID]) ON UPDATE
     CASCADE
     ) ON [PRIMARY]

      if ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'ReciptNumber','IsRowGuidCol')is  null ) 
    ALTER TABLE [Tozin] ADD [ReciptNumber] int  NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'OrderByFields','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [OrderByFields] [Nvarchar](100)  NOT NULL  DEFAULT ('ReciptItemID') 

     if ( COLUMNPROPERTY( OBJECT_ID('Severable'),'SeverableNote','IsRowGuidCol')is  null ) 
    ALTER TABLE Severable ADD SeverableNote Nvarchar(255)  









       IF NOT EXISTS(SELECT * FROM SYSOBJECTS where id = object_id(N'[dbo].[AddressType]')
			 and OBJECTPROPERTY(id, N'IsUserTable') = 1 )
			 BEGIN
			  CREATE TABLE [dbo].[AddressType](	[AddressType] int NOT NULL,
			 [AddressTypeName] [nvarchar](30) NULL,	[ParentType] int NULL,
			 CONSTRAINT [PK_AddressType] PRIMARY KEY CLUSTERED
			 (	[AddressType] )ON [PRIMARY])
			
			 INSERT INTO [AddressType] ([AddressType] ,[AddressTypeName] ,[ParentType])
			 select 1	,' ßÔæÑåÇ'	, NULL
			 union all
			 select 3,'	ÇÓÊÇäåÇ	',1
			 union all
			 select 5,'	ÔåÑåÇ	',3
			 union all
			 select 7,'	ãäÇØÞ	',5
			 union all
			 select 9,'	äÇÍíå	',7
			 union all
			 select 11,'	ÎíÇÈÇä	',9
			 END
			
       IF NOT EXISTS(SELECT * FROM SYSOBJECTS where id = object_id(N'[dbo].[AddressInfo]')
			 and OBJECTPROPERTY(id, N'IsUserTable') = 1 )
			 BEGIN
			  CREATE TABLE [dbo].[AddressInfo](	[AddressID] int NOT NULL,
			 [AddressType] int NOT NULL,[AddressName] [nvarchar](80) NOT NULL,
			 [ParentID] int NULL, CONSTRAINT [PK_AddressInfo] PRIMARY KEY CLUSTERED
			 (	[AddressID] )ON [PRIMARY])
			 ALTER TABLE [dbo].[AddressInfo] WITH CHECK ADD CONSTRAINT [FK_AddressInfo_AddressInfo] FOREIGN KEY([ParentID])
			 REFERENCES [dbo].[AddressInfo] ([AddressID])
			 ALTER TABLE [dbo].[AddressInfo] CHECK CONSTRAINT [FK_AddressInfo_AddressInfo]
			 ALTER TABLE [AddressInfo] ADD CONSTRAINT [FK_AddressInfo_AddressType] FOREIGN KEY ([AddressType])REFERENCES
			 [AddressType] ([AddressType]) ON UPDATE CASCADE
			 ALTER TABLE [dbo].[AddressInfo] CHECK CONSTRAINT [FK_AddressInfo_AddressType]
			 ALTER TABLE [dbo].[AddressInfo] WITH CHECK ADD CONSTRAINT [CK_Address_Type] CHECK (([AddressType]>=(1) AND
			 [AddressType]<=(20)))
			 ALTER TABLE [dbo].[AddressInfo] CHECK CONSTRAINT [CK_Address_Type]
			 END


			 IF NOT EXISTS(SELECT * FROM SYSOBJECTS where id = object_id(N'[dbo].[AddressInMasir]')
			 and OBJECTPROPERTY(id, N'IsUserTable') = 1 )
			 BEGIN
			  CREATE TABLE [dbo].[AddressInMasir](	[MasirID] int NOT NULL,
			 [AddressID] int NOT NULL,	[MasirText] [nvarchar](500) NULL,
			 CONSTRAINT [PK_AddressInMasir] PRIMARY KEY CLUSTERED (	[MasirID] )ON [PRIMARY])

			 ALTER TABLE [dbo].[AddressInMasir] WITH CHECK ADD CONSTRAINT [FK_AddressInMasir_AddressInfo] FOREIGN KEY
			 ([AddressID])
			 REFERENCES [dbo].[AddressInfo] ([AddressID])ON UPDATE CASCADE
			 ALTER TABLE [dbo].[AddressInMasir] CHECK CONSTRAINT [FK_AddressInMasir_AddressInfo]
			 END
			 if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'PersonID1','IsRowGuidCol')is null )
			 begin
			 ALTER TABLE Customers ADD PersonID1 int NOT NULL DEFAULT (0)
			 ALTER TABLE Customers ADD CONSTRAINT FK_Customers_Customers FOREIGN KEY (PersonID1)REFERENCES Customers
			 (CustID)
			 ALTER TABLE Customers ADD EstablishDate char(10)
			 end

			 if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[CustomersBroker]') and OBJECTPROPERTY
			 (id,N'IsUserTable') =1)
			 begin

			  CREATE TABLE [CustomersBroker] ([PersonID1] int NOT NULL,[PersonID2] int NOT NULL ,
			 CONSTRAINT [PK_CustomersBroker] PRIMARY KEY CLUSTERED ([PersonID1],[PersonID2]) ON [PRIMARY] ,
			 CONSTRAINT [FK_CustomersBroker_Customers] FOREIGN KEY ([PersonID1])REFERENCES [Customers] ([CustID]) ON UPDATE
			 CASCADE,
			 CONSTRAINT [FK_CustomersBroker_Customers2] FOREIGN KEY ([PersonID2])REFERENCES [Customers] ([CustID])
			 ) ON [PRIMARY]

			  CREATE TABLE [SellsTypes] ([SellsType] int NOT NULL,[SellsTypeName] [Nvarchar](100) NOT NULL ,
			 CONSTRAINT [PK_SellsTypes] PRIMARY KEY CLUSTERED ([SellsType]) ON [PRIMARY] ) ON [PRIMARY]


			  CREATE TABLE [SellsInfo] ([SellsType] int NOT NULL,[SellsCode] int NOT NULL,
			 [SellsName] [Nvarchar](200) NOT NULL ,
			 CONSTRAINT [PK_SellsInfo] PRIMARY KEY CLUSTERED ([SellsCode]) ON [PRIMARY] ,
			 CONSTRAINT [FK_SellsInfo_SellsTypes] FOREIGN KEY ([SellsType])REFERENCES [SellsTypes] ([SellsType]) ON UPDATE
			 CASCADE
			 ) ON [PRIMARY]


			 INSERT INTO [SellsTypes] ([SellsType],[SellsTypeName]) VALUES (12,'Ñæå ÈäÏí ÝÚÇáíÊ ÇÕáí')
			 INSERT INTO [SellsInfo] ([SellsType],[SellsCode],[SellsName]) VALUES (12,121,'äÏÇÑÏ')

			 INSERT INTO [SellsTypes] ([SellsType],[SellsTypeName]) VALUES (14,'Ñæå ÈäÏí ÝÚÇáíÊ ÝÑÚí')
			 INSERT INTO [SellsInfo] ([SellsType],[SellsCode],[SellsName]) VALUES (14,141,'äÏÇÑÏ')

			 INSERT INTO [SellsTypes] ([SellsType],[SellsTypeName]) VALUES (16,'Ñæå ÈäÏí ÝÚÇáíÊ åÇ')
			 INSERT INTO [SellsInfo] ([SellsType],[SellsCode],[SellsName]) VALUES (16,161,'äÏÇÑÏ')

			 INSERT INTO [SellsTypes] ([SellsType],[SellsTypeName]) VALUES (18,'Ñæå ÈäÏí ÝÚÇáíÊ ÓÇíÑ')
			 INSERT INTO [SellsInfo] ([SellsType],[SellsCode],[SellsName]) VALUES (18,181,'äÏÇÑÏ')


			 INSERT INTO [SellsTypes] ([SellsType],[SellsTypeName]) VALUES (32,'æÖÚíÊ ÍÞæÞí ãÔÊÑíÇä')
			 INSERT INTO [SellsInfo] ([SellsType],[SellsCode],[SellsName]) VALUES (32,321,'ÇÔÎÇÕ')
			 INSERT INTO [SellsInfo] ([SellsType],[SellsCode],[SellsName]) VALUES (32,322,'ÓåÇãí ÚÇã')
			 INSERT INTO [SellsInfo] ([SellsType],[SellsCode],[SellsName]) VALUES (32,323,'ÓåÇãí ÎÇÕ')

			 INSERT INTO [SellsTypes] ([SellsType],[SellsTypeName]) VALUES (34,'ÏÓÊå ÈäÏí ãÔÊÑíÇä ÏÇÎáí æ ÎÇÑÌí')
			 INSERT INTO [SellsInfo] ([SellsType],[SellsCode],[SellsName]) VALUES (34,341,'ÏÇÎáí')
			 INSERT INTO [SellsInfo] ([SellsType],[SellsCode],[SellsName]) VALUES (34,342,'ÎÇÑÌí')
			 INSERT INTO [SellsInfo] ([SellsType],[SellsCode],[SellsName]) VALUES (34,343,'ÏÇÎáí æ ÎÇÑÌí')

			 INSERT INTO [SellsTypes] ([SellsType],[SellsTypeName]) VALUES (36,'ãßÇäåÇí ÊÍæíá ßÇáÇ')
			 INSERT INTO [SellsInfo] ([SellsType],[SellsCode],[SellsName]) VALUES (36,361,'ÏÑÈ ßÇÑÎÇäå')
			 INSERT INTO [SellsInfo] ([SellsType],[SellsCode],[SellsName]) VALUES (36,362,'ÊÍæíá ÏÑ ãÍá')

			 INSERT INTO [SellsTypes] ([SellsType],[SellsTypeName]) VALUES (42,'íÇã åÇí Úãæãí')
			 INSERT INTO [SellsInfo] ([SellsType],[SellsCode],[SellsName]) VALUES (42,421,'ÚíÏ äæÑæÒ ãÈÇÑß ÈÇÏ')
			 INSERT INTO [SellsInfo] ([SellsType],[SellsCode],[SellsName]) VALUES (42,422,'ÚíÏ ÝØÑ ãÈÇÑß ÈÇÏ')

			 INSERT INTO [SellsTypes] ([SellsType],[SellsTypeName]) VALUES (44,'íÇã åÇí ÎÕæÕí')
			 INSERT INTO [SellsInfo] ([SellsType],[SellsCode],[SellsName]) VALUES (44,441,'ÇíÇä ÞÑÇÑÏÇÏ')
			 INSERT INTO [SellsInfo] ([SellsType],[SellsCode],[SellsName]) VALUES (44,442,'ÇÒÏæÇÌ')
			 INSERT INTO [SellsInfo] ([SellsType],[SellsCode],[SellsName]) VALUES (44,443,'ÊæáÏ')
			 INSERT INTO [SellsInfo] ([SellsType],[SellsCode],[SellsName]) VALUES (44,444,'ÊÇÓíÓ')

			 INSERT INTO [SellsTypes] ([SellsType],[SellsTypeName]) VALUES (46,'äÍæå ÇÑÓÇá')
			 INSERT INTO [SellsInfo] ([SellsType],[SellsCode],[SellsName]) VALUES (46,461,'äÍæå1')

			 INSERT INTO [SellsTypes] ([SellsType],[SellsTypeName]) VALUES (52,'ÓãÊ åÇ')
			 INSERT INTO [SellsInfo] ([SellsType],[SellsCode],[SellsName]) VALUES (52,521,'ãÏíÑ ÚÇãá')

			  CREATE TABLE [CustomersActivity] ([PersonID1] int NOT NULL,[SellsType] int NOT NULL,
			 [SellsCode] int NOT NULL,
			 CONSTRAINT [PK_CustomersActivity] PRIMARY KEY CLUSTERED ([PersonID1],[SellsType]) ON [PRIMARY] ,
			 CONSTRAINT [FK_CustomersActivity_Customers] FOREIGN KEY ([PersonID1])REFERENCES [Customers] ([CustID]) ON UPDATE
			 CASCADE,
			 CONSTRAINT [FK_CustomersActivity_SellsTypes] FOREIGN KEY ([SellsType])REFERENCES [SellsTypes] ([SellsType]) ON
			 UPDATE CASCADE
			 ) ON [PRIMARY]

			  CREATE TABLE [SellsMethods] ([SellsMethod] int NOT NULL,[SellsMethodName] [Nvarchar](100) NOT NULL ,
			 CONSTRAINT [PK_SellsMethods] PRIMARY KEY CLUSTERED ([SellsMethod]) ON [PRIMARY] ) ON [PRIMARY]
			 INSERT INTO [SellsMethods] ([SellsMethod],[SellsMethodName]) VALUES (1,'äÞÏí')


			  CREATE TABLE [SellsEmporiums] ([SellsEmporium] int NOT NULL,[SellsEmporiumName] [Nvarchar](100) NOT NULL ,
			 CONSTRAINT [PK_SellsEmporiums] PRIMARY KEY CLUSTERED ([SellsEmporium]) ON [PRIMARY] ) ON [PRIMARY]
			 INSERT INTO [SellsEmporiums] ([SellsEmporium],[SellsEmporiumName]) VALUES (1,'ãÑßÒ ÝÑæÔ ãÑßÒí')

			 ALTER TABLE [Customers] ADD [SellsMethod] Int
			 ALTER TABLE [Customers] ADD CONSTRAINT [FK_Customers_SellsMethods] FOREIGN KEY (SellsMethod)REFERENCES
			 [SellsMethods] (SellsMethod)ON UPDATE CASCADE

			 ALTER TABLE [Customers] ADD [SellsEmporium] Int
			 ALTER TABLE [Customers] ADD CONSTRAINT [FK_Customers_SellsEmporiums] FOREIGN KEY (SellsEmporium)REFERENCES
			 [SellsEmporiums] (SellsEmporium)ON UPDATE CASCADE

			 ALTER TABLE [Customers] ADD [SellsDefaultState] Tinyint NOT NULL DEFAULT (0)

			  CREATE TABLE [CustomersManag] ([ID] int IDENTITY (1, 1) NOT NULL ,[PersonID1] int NOT NULL,
			 [JobCode] int NOT NULL ,[ManagName] [Nvarchar](100) NOT NULL ,[Mobile] [varchar](20) NULL,
			 [Tel] [varchar](30) ,[Fax] [varchar](30) ,	[Email] [varchar](30) ,	[BirthDate] char(10) ,
			 [MarriageDate] char(10) , [State] [Tinyint], [SendKind] Int,
			 CONSTRAINT [PK_CustomersManag] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY] ,
			 CONSTRAINT [FK_CustomersManag_Customers] FOREIGN KEY ([PersonID1])REFERENCES [Customers] ([CustID]) ON UPDATE
			 CASCADE,
			 CONSTRAINT [FK_CustomersManag_SellsInfo] FOREIGN KEY ([JobCode])REFERENCES [SellsInfo] ([SellsCode]) ON UPDATE
			 CASCADE,
			 CONSTRAINT [FK_CustomersManag_SellsInfoSendKind] FOREIGN KEY ([SendKind])REFERENCES [SellsInfo] ([SellsCode])
			 ) ON [PRIMARY]

			 ALTER TABLE [Customers] ADD [MasirID] Int
			 ALTER TABLE [Customers] ADD CONSTRAINT [FK_Customers_AddressInMasir] FOREIGN KEY ([MasirID])REFERENCES
			 [AddressInMasir] ([MasirID])ON UPDATE CASCADE

			  CREATE TABLE [CustomersMasir] ([ID] int IDENTITY (1, 1) NOT NULL ,[PersonID1] int NOT NULL,
			 [MasirID] int NOT NULL ,[MasirNote] [Nvarchar](100) NOT NULL ,
			 CONSTRAINT [PK_CustomersMasir] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY] ,
			 CONSTRAINT [FK_CustomersMasir_Customers] FOREIGN KEY ([PersonID1])REFERENCES [Customers] ([CustID]) ON UPDATE
			 CASCADE,
			 CONSTRAINT [FK_CustomersMasir_AddressInMasir] FOREIGN KEY ([MasirID])REFERENCES [AddressInMasir] ([MasirID])
			 ) ON [PRIMARY]

			  CREATE TABLE [DeficitsCorrelation] ([DeficitID] [smallint] NOT NULL,[Kind] int NOT NULL,
			 [CodeFrom] int NOT NULL,[CodeTo] int NOT NULL,
			 CONSTRAINT [PK_DeficitsCorrelation] PRIMARY KEY CLUSTERED ([DeficitID],[Kind],[CodeFrom]) ON [PRIMARY] ,
			 CONSTRAINT [FK_DeficitsCorrelation_Deficits] FOREIGN KEY ([DeficitID])REFERENCES [Deficits] ([DeficitID]) ON UPDATE
			 CASCADE
			 ) ON [PRIMARY]

			 INSERT INTO DeficitsCorrelation
			 (DeficitID, CodeFrom, CodeTo, Kind)
			 SELECT DeficitID, c_StuffCode, c_StuffCode, 1
			 FROM StuffsDeficitsRange
			 end

       if ( COLUMNPROPERTY( OBJECT_ID('Manifesto'),'SellsMethod','IsRowGuidCol')is  null ) 
       begin 
			 ALTER TABLE [Manifesto] ADD [SellsMethod] int NOT NULL DEFAULT (1)
			 ALTER TABLE [Manifesto] ADD CONSTRAINT [FK_Manifesto_SellsMethods] FOREIGN KEY ([SellsMethod])REFERENCES
			 [SellsMethods] ([SellsMethod])ON UPDATE CASCADE

			 ALTER TABLE [Manifesto] ADD [SellsEmporium] int NOT NULL DEFAULT (1)
			 ALTER TABLE [Manifesto] ADD CONSTRAINT [FK_Manifesto_SellsEmporiums] FOREIGN KEY ([SellsEmporium])REFERENCES
			 [SellsEmporiums] ([SellsEmporium])

			 ALTER TABLE [Manifesto] ADD [FirstUser] [nvarchar](50) NULL
			 ALTER TABLE [Manifesto] ADD [LastUser] [nvarchar](50) NULL

			 ALTER TABLE [Manifesto] ADD [CustomerGrpIDFrom] int NOT NULL DEFAULT (0)
			 ALTER TABLE [Manifesto] ADD [CustomerGrpIDTo] int NOT NULL DEFAULT (999999999)

			 ALTER TABLE [Manifesto] ADD [CustIDFrom] int NOT NULL DEFAULT (0)
			 ALTER TABLE [Manifesto] ADD [CustIDTo] int NOT NULL DEFAULT (999999999)

			 ALTER TABLE [Deficits] ADD [StartDate] char(10) NOT NULL DEFAULT ('0000/00/00')
			 ALTER TABLE [Deficits] ADD [EndDate] char(10) NOT NULL DEFAULT ('9999/99/99')



			 ALTER TABLE [Recipts] ADD [SellsMethod] int NOT NULL DEFAULT (1)
			 ALTER TABLE [Recipts] ADD CONSTRAINT [FK_Recipts_SellsMethods] FOREIGN KEY ([SellsMethod])REFERENCES
			 [SellsMethods] ([SellsMethod])            ON UPDATE CASCADE

			 ALTER TABLE [Recipts] ADD [SellsEmporium] int NOT NULL DEFAULT (1)
			 ALTER TABLE [Recipts] ADD CONSTRAINT [FK_Recipts_SellsEmporiums] FOREIGN KEY ([SellsEmporium])REFERENCES
			 [SellsEmporiums] ([SellsEmporium])           ON UPDATE CASCADE

			 ALTER TABLE [Recipts] ADD [MasirID] Int
			 ALTER TABLE [Recipts] ADD CONSTRAINT [FK_Recipts_AddressInMasir] FOREIGN KEY ([MasirID])REFERENCES
			 [AddressInMasir] ([MasirID])

			 ALTER TABLE [Recipts] ADD [DeliveryID] int NOT NULL DEFAULT (361)
			 ALTER TABLE [Recipts] ADD CONSTRAINT [FK_Recipts_SellsInfo] FOREIGN KEY ([DeliveryID])REFERENCES [SellsInfo]
			 ([SellsCode]) ON UPDATE CASCADE

			 ALTER TABLE [ReciptTypes] ADD [MasirActive] Tinyint NOT NULL DEFAULT (0)
			 ALTER TABLE [ReciptTypes] ADD [DeliveryActive] Tinyint NOT NULL DEFAULT (0)

			 ALTER TABLE [ReciptTypes] ADD [SellsEmporiumActive] Tinyint NOT NULL DEFAULT (0)
			 ALTER TABLE [ReciptTypes] ADD [SellsMethodActive] Tinyint NOT NULL DEFAULT (0)

			 ALTER TABLE [Recipts] ADD [PersonID2Bed] Tinyint NOT NULL DEFAULT (0)

			 ALTER TABLE [Recipts] ADD [RelatedID] int NOT NULL DEFAULT (0)
			 ALTER TABLE [Forms] ADD [RelatedID] int NOT NULL DEFAULT (0)
			 ALTER TABLE [FormItems] ADD [RelatedID] int NOT NULL DEFAULT (0)

			 ALTER TABLE [Stuffcoding] ADD [Cabinet] [Nvarchar](100)
			 ALTER TABLE [Stuffcoding] ADD [Tierced] [Nvarchar](100)

			 ALTER TABLE Config ADD ServerID int NOT NULL DEFAULT (0)
			 ALTER TABLE Recipts ADD ServerID int NOT NULL DEFAULT (0)
			 ALTER TABLE ReciptItems ADD ServerID int NOT NULL DEFAULT (0)
			 ALTER TABLE Forms ADD ServerID int NOT NULL DEFAULT (0)
			 ALTER TABLE FormItems ADD ServerID int NOT NULL DEFAULT (0)
			 ALTER TABLE ReciptOnFormsRange ADD ServerID int NOT NULL DEFAULT (0)
			 ALTER TABLE ReciptsDeficits ADD ServerID int NOT NULL DEFAULT (0)
			 ALTER TABLE ReciptPurchaseEffect ADD ServerID int NOT NULL DEFAULT (0)



			 ALTER TABLE Recipts ADD YearID int NOT NULL DEFAULT (0)
			 ALTER TABLE ReciptItems ADD YearID int NOT NULL DEFAULT (0)
			 ALTER TABLE ReciptsDeficits ADD YearID int NOT NULL DEFAULT (0)
			 ALTER TABLE ReciptOnFormsRange ADD YearID int NOT NULL DEFAULT (0)
			 ALTER TABLE ReciptPurchaseEffect ADD YearID int NOT NULL DEFAULT (0)
			 ALTER TABLE Forms ADD YearID int NOT NULL DEFAULT (0)
			 ALTER TABLE FormItems ADD YearID int NOT NULL DEFAULT (0)

			 ALTER TABLE ReciptPurchaseEffect ADD ReciptID int NOT NULL DEFAULT (0)

			 DELETE FROM ReciptsDeficits FROM ReciptsDeficits LEFT OUTER JOIN 
			 Recipts ON ReciptsDeficits.ReciptID = Recipts.ReciptID WHERE (Recipts.ReciptID IS NULL) 

			 end

      	 if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CalcCheckDateOfLookUpsAmount1','IsRowGuidCol')is null )
			 begin
			 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptOnFormsRange_Recipts' AND type = 'F')
			 ALTER TABLE ReciptOnFormsRange DROP CONSTRAINT FK_ReciptOnFormsRange_Recipts
			 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptsDeficits_Recipts' AND type = 'F')
			 ALTER TABLE ReciptsDeficits DROP CONSTRAINT FK_ReciptsDeficits_Recipts
			 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptItems_Recipts' AND type = 'F')
			 ALTER TABLE ReciptItems DROP CONSTRAINT FK_ReciptItems_Recipts

			 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Recipts_Recipts' AND type = 'F')
			 ALTER TABLE Recipts DROP CONSTRAINT FK_Recipts_Recipts
			 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_Recipts' AND type = 'K')
			 ALTER TABLE Recipts DROP CONSTRAINT PK_Recipts
			 ALTER TABLE Recipts ADD CONSTRAINT PK_Recipts PRIMARY KEY CLUSTERED (ReciptID,ServerID,YearID) ON [PRIMARY]
			 ALTER TABLE ReciptsDeficits DROP CONSTRAINT PK_ReciptsDeficits
			 ALTER TABLE ReciptsDeficits ADD CONSTRAINT PK_ReciptsDeficits PRIMARY KEY CLUSTERED
			 (ReciptDeficitID,ReciptID,ServerID,YearID) ON [PRIMARY]


			 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptPurchaseEffect_ReciptItems' AND type = 'F')
			 ALTER TABLE ReciptPurchaseEffect DROP CONSTRAINT FK_ReciptPurchaseEffect_ReciptItems
			 ALTER TABLE ReciptItems DROP CONSTRAINT PK_ReciptItems
			 ALTER TABLE ReciptItems ADD CONSTRAINT PK_ReciptItems PRIMARY KEY CLUSTERED
			 (ReciptItemID,ReciptID,ServerID,YearID) ON [PRIMARY]

			 ALTER TABLE ReciptItems ADD CONSTRAINT FK_ReciptItems_Recipts FOREIGN KEY (ReciptID,ServerID,YearID)REFERENCES
			 Recipts (ReciptID,ServerID,YearID) ON DELETE CASCADE ON UPDATE CASCADE
			 ALTER TABLE ReciptsDeficits ADD CONSTRAINT FK_ReciptsDeficits_Recipts FOREIGN KEY (ReciptID,ServerID,YearID)
			 REFERENCES Recipts (ReciptID,ServerID,YearID) ON UPDATE CASCADE

			 ALTER TABLE ReciptPurchaseEffect DROP CONSTRAINT PK_ReciptPurchaseEffect
			 ALTER TABLE ReciptPurchaseEffect ADD CONSTRAINT PK_ReciptPurchaseEffect PRIMARY KEY CLUSTERED
			 (EffectID,ReciptID,ReciptItemID,ServerID,YearID) ON [PRIMARY]

			 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptOnFormsRange_Forms' AND type = 'F')
			 ALTER TABLE ReciptOnFormsRange DROP CONSTRAINT FK_ReciptOnFormsRange_Forms
			 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FormItems_Forms' AND type = 'F')
			 ALTER TABLE FormItems DROP CONSTRAINT FK_FormItems_Forms

			 ALTER TABLE Forms DROP CONSTRAINT PK_Forms
			 ALTER TABLE Forms ADD  CONSTRAINT PK_Forms PRIMARY KEY CLUSTERED (FormID,ServerID,YearID) ON [PRIMARY]

			 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_ReciptOnFormsRange' AND type = 'K')
			 ALTER TABLE ReciptOnFormsRange DROP CONSTRAINT PK_ReciptOnFormsRange
			 ALTER TABLE ReciptOnFormsRange ADD CONSTRAINT PK_ReciptOnFormsRange PRIMARY KEY CLUSTERED
			 (FormID,ReciptID,ServerID,YearID) ON [PRIMARY]
			 ALTER TABLE ReciptOnFormsRange ADD CONSTRAINT FK_ReciptOnFormsRange_Recipts FOREIGN KEY
			 (ReciptID,ServerID,YearID)REFERENCES Recipts (ReciptID,ServerID,YearID)
			 ALTER TABLE ReciptOnFormsRange ADD CONSTRAINT FK_ReciptOnFormsRange_Forms FOREIGN KEY
			 (FormID,ServerID,YearID)REFERENCES Forms (FormID,ServerID,YearID) ON UPDATE CASCADE

			 ALTER TABLE FormItems ADD CONSTRAINT FK_FormItems_Forms FOREIGN KEY (FormID,ServerID,YearID)REFERENCES Forms
			 (FormID,ServerID,YearID) ON DELETE CASCADE ON UPDATE CASCADE
			 ALTER TABLE [FormTypes] ADD [CalcCheckDateOfLookUpsAmount1] Tinyint NOT NULL DEFAULT (0)

			 end

       if (Select COUNT(Uid) from sysusers where Name = 'Util')=0
       begin
       Exec sp_addrole @RoleName = N'Util' ,@ownerName='FaraUser'
       Exec sp_changeobjectowner 'dbo.CodesInProcess','Util'
       end


			 if not exists (select * from sysobjects where id = object_id(N'[Util].[MaliYear]') and
			 OBJECTPROPERTY(id, N'IsUserTable') = 1)
       if  exists (select * from sysobjects where id = object_id(N'[dbo].[MaliYear]') and
			 OBJECTPROPERTY(id, N'IsUserTable') = 1)
  		 Exec sp_changeobjectowner 'dbo.MaliYear','Util'


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

			 UPDATE Recipts SET YearId = @YearID
			 UPDATE ReciptsDeficits SET YearId = @YearID
			 UPDATE ReciptItems SET YearId = @YearID
			 UPDATE ReciptPurchaseEffect SET YearId = @YearID
			 UPDATE ReciptOnFormsRange SET YearId = @YearID
			 UPDATE Forms SET YearId = @YearID
			 UPDATE FormItems SET YearId = @YearID

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

			 ALTER TABLE Recipts ADD [PersonID3] int NOT NULL DEFAULT (0)
			 ALTER TABLE Recipts ADD CONSTRAINT [FK_Recipts_Customers3] FOREIGN KEY ([PersonID3])REFERENCES [Customers]
			 ([CustID])

			 ALTER TABLE ReciptTypes ADD Person3Active Tinyint NOT NULL DEFAULT (0)
			 ALTER TABLE ReciptTypes ADD Person3Caption [nvarchar](50)
			 ALTER TABLE ReciptTypes ADD CustomerKind3 [nvarchar](50)

			 ALTER TABLE ReciptTypes ADD CreditChecked1 Tinyint NOT NULL DEFAULT (1)
			 ALTER TABLE ReciptTypes ADD CreditChecked2 Tinyint NOT NULL DEFAULT (1)
			 ALTER TABLE ReciptTypes ADD CreditChecked3 Tinyint NOT NULL DEFAULT (1)
			 ALTER TABLE ReciptTypes ADD CreditChecked4 Tinyint NOT NULL DEFAULT (1)
			 ALTER TABLE ReciptTypes ADD CreditChecked5 Tinyint NOT NULL DEFAULT (1)

			 ALTER TABLE ReciptTypes ADD CustCheckDateOffset Tinyint NOT NULL DEFAULT (2)
			 ALTER TABLE ReciptTypes ADD CreditChkCurrentForm Tinyint NOT NULL DEFAULT (1)
			 ALTER TABLE Customers ADD MaxCreditCurrentForm money NOT NULL DEFAULT (999999999)
			 ALTER TABLE Customers ADD CustomerActive Tinyint NOT NULL DEFAULT (0)
			 end
			 if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'SellsEmporiumActive','IsRowGuidCol')is null )
			 begin
			 ALTER TABLE FormTypes ADD [SellsEmporiumActive] Tinyint NOT NULL DEFAULT (0)
			 ALTER TABLE FormTypes ADD [SellsMethodActive] Tinyint NOT NULL DEFAULT (0)
			 
			 ALTER TABLE [Forms] ADD [SellsMethod] int NOT NULL DEFAULT (1)
			 ALTER TABLE [Forms] ADD CONSTRAINT [FK_Forms_SellsMethods] FOREIGN KEY ([SellsMethod])REFERENCES
			 [SellsMethods] ([SellsMethod])           ON UPDATE CASCADE
			 
			 ALTER TABLE [Forms] ADD [SellsEmporium] int NOT NULL DEFAULT (1)
			 ALTER TABLE [Forms] ADD CONSTRAINT [FK_Forms_SellsEmporiums] FOREIGN KEY ([SellsEmporium])REFERENCES
			 [SellsEmporiums] ([SellsEmporium])              ON UPDATE CASCADE

			 end 

      if ( COLUMNPROPERTY( OBJECT_ID('Config'),'SelectedInvoiceEmission','IsRowGuidCol')is  null ) 
    ALTER TABLE [Config] ADD [SelectedInvoiceEmission] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ReciptNumberEventKind','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [ReciptNumberEventKind] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'DuplicateFormNoActive','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [DuplicateFormNoActive] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'PrintAfterPost','IsRowGuidCol')is  null ) 
    ALTER TABLE [FormTypes] ADD [PrintAfterPost] Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('Config'),'ChangeAccNames','IsRowGuidCol')is  null ) 
    ALTER TABLE [Config] ADD [ChangeAccNames] [nvarchar](400) 


      if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'ReagentName','IsRowGuidCol')is  null ) 
		 begin
    ALTER TABLE [Customers] ADD [ReagentName] [nvarchar](60) 
    ALTER TABLE [Customers] ADD [Tel2] [nvarchar](30) 
    ALTER TABLE [Customers] ADD [Tel3] [nvarchar](30) 
		 end

      if ( COLUMNPROPERTY( OBJECT_ID('Stores'),'accTopicCodeCostDownSave','IsRowGuidCol')is  null ) 
		 begin 
    ALTER TABLE Stores      ADD accTopicCodeCostDownSave varchar(12) NOT NULL  DEFAULT (0) 
    ALTER TABLE ReciptTypes ADD CostDownSaveActive       Tinyint     NOT NULL  DEFAULT (0) 
    ALTER TABLE Recipts     ADD CostDownSave             money       NOT NULL  DEFAULT (0) 
     end 

      if ( COLUMNPROPERTY( OBJECT_ID('util.CodesInProcess'),'Ip','IsRowGuidCol')is  null ) 
    ALTER TABLE [util].[CodesInProcess] ADD [Ip] [nvarchar](20) 

     if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'PersonID3','IsRowGuidCol')is null )
     begin
    ALTER TABLE [Customers] ADD [PersonID3] int NOT NULL DEFAULT (0)
    ALTER TABLE [Customers] ADD CONSTRAINT [FK_Customers_CustomersPersonID3] FOREIGN KEY ( [PersonID3] ) REFERENCES [Customers]	([CustID])
    ALTER TABLE [Customers] ADD [UseUnitID] int NOT NULL DEFAULT (0)
    ALTER TABLE [Customers] ADD CONSTRAINT [FK_Customers_UseUnits] FOREIGN KEY ( [UseUnitID] ) REFERENCES [UseUnits]	([UseUnitID])
     end

      if ( COLUMNPROPERTY( OBJECT_ID('Config'),'CheckControlsItems','IsRowGuidCol')is  null ) 
     begin
		ALTER TABLE Config ADD CheckControlsItems Nvarchar (50) NOT NULL DEFAULT ('0')
		ALTER TABLE Config ADD CheckControlsKind  Tinyint NOT NULL DEFAULT (1)
		ALTER TABLE Config ADD CheckControlsTypes Nvarchar (200) NOT NULL DEFAULT ('10,21,22,24,27,28,50,54')
     end

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

	   if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'InsertAutoEffectID','IsRowGuidCol')is null )
			 begin
			 ALTER TABLE Customers ADD InsertAutoEffectID int
			 ALTER TABLE Customers ADD CONSTRAINT FK_Customers_PurchaseEffect
			   FOREIGN KEY (InsertAutoEffectID) REFERENCES PurchaseEffect (EffectID) ON UPDATE CASCADE
			 ALTER TABLE Customers ADD EffectID int
			 ALTER TABLE Customers ADD CONSTRAINT FK_Customers_PurchaseEffect2
			   FOREIGN KEY (EffectID) REFERENCES PurchaseEffect (EffectID)
			 ALTER TABLE Customers ADD CustomerGrpID2 int
			 ALTER TABLE Customers ADD CONSTRAINT FK_Customers_CustomersGroup2
			   FOREIGN KEY (CustomerGrpID2) REFERENCES CustomersGroup (CustomerGrpID)
			 ALTER TABLE StuffCoding ADD CustomerGrpID int
			 ALTER TABLE StuffCoding ADD CONSTRAINT FK_StuffCoding_CustomersGroup
			   FOREIGN KEY (CustomerGrpID) REFERENCES CustomersGroup (CustomerGrpID)  
			 end


      if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'DefaultDate','IsRowGuidCol')is  null ) 
    	 begin
      ALTER TABLE Forms ADD DefaultDate Char(10)    
	  	ALTER TABLE Config ADD DefaultDateActive  Tinyint NOT NULL DEFAULT (0)
	  	ALTER TABLE ReciptItemsRelease ADD ReleaseKind  Tinyint NOT NULL DEFAULT (0)
			 end

		if ( COLUMNPROPERTY( OBJECT_ID('Tozin'),'MoistureContent','IsRowGuidCol')is null )
			 begin
			 ALTER TABLE Tozin ADD MoistureContent float not null default (0)
			 ALTER TABLE Tozin ADD RisingUseful float not null default (0)
			 ALTER TABLE Tozin ADD RisingNonUseFul float not null default (0)
       UPDATE ReciptTypes SET EffectOnCustomer = 1 WHERE (BedType = 1)
       UPDATE ReciptTypes SET EffectOnCustomer = 2 WHERE (BesType = 1)
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

      if ( COLUMNPROPERTY( OBJECT_ID('Config'),'StandardRateVatActive','IsRowGuidCol')is  null ) 
		ALTER TABLE Config ADD StandardRateVatActive  Tinyint NOT NULL DEFAULT (0)

      if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'DefaultDate','IsRowGuidCol')is  null ) 
      ALTER TABLE Recipts ADD DefaultDate Char(10)    

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'WaterCoOrDeficitValueEdit','IsRowGuidCol')is  null ) 
    ALTER TABLE [ReciptTypes] ADD [WaterCoOrDeficitValueEdit] Tinyint NOT NULL  DEFAULT (0) 

		 if not exists (select * from dbo.sysobjects where id = object_id(N'Related') and OBJECTPROPERTY(id,N'IsUserTable')=1)
			  CREATE TABLE [dbo].[Related]([ID] int NOT NULL,[RelatedID] int NOT NULL,
			 [Bed] Money NOT NULL,[Bes] Money NOT NULL,[Row] int NOT NULL,[YearID] int NOT NULL,
			 [ServerID] int NOT NULL,[ParentID] int NOT NULL,[FormItemID] int NULL,[Kind] Tinyint NOT NULL,
			 [GroupType] Tinyint NOT NULL, CONSTRAINT [PK_RelatedRecipt] PRIMARY KEY CLUSTERED
			 ([ID] ASC) ON [PRIMARY]) ON [PRIMARY]

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

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'StandardCaption','IsRowGuidCol')is  null ) 
    ALTER TABLE ReciptTypes ADD StandardCaption Nvarchar (50) NOT NULL  DEFAULT ('ÇÓÊÇäÏÇÑÏ') 

		 if not exists (select * from dbo.sysobjects
			 where id = object_id(N'ReciptTypesAccCode') and OBJECTPROPERTY(id,N'IsUserTable') = 1)
			 begin
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

			 ALTER TABLE ReciptsRegulates ADD CustID int Default(0) NOT NULL ,
			 CONSTRAINT FK_ReciptsRegulates_Customers FOREIGN KEY (CustID)
			 REFERENCES Customers (CustID) ON UPDATE CASCADE

			 ALTER TABLE ReciptTypes ADD StandardCoefficient float NOT NULL DEFAULT (0)
			 ALTER TABLE ReciptTypes ADD StandardDate Char(10) NOT NULL DEFAULT ('0001/01/01')

			 ALTER TABLE ReciptTypes ADD PawsFieldsActive Tinyint NOT NULL DEFAULT (0)
			 ALTER TABLE ReciptItems ADD Portage money
			 ALTER TABLE ReciptItems ADD Article money
			 ALTER TABLE ReciptItems ADD Wage money
			 ALTER TABLE ReciptItems ADD Scoria money

          
			 end

      if ( COLUMNPROPERTY( OBJECT_ID('Config'),'CalcReciptsRegulatesActive','IsRowGuidCol')is  null ) 
		ALTER TABLE Config ADD CalcReciptsRegulatesActive  Tinyint NOT NULL DEFAULT (0)

      if ( COLUMNPROPERTY( OBJECT_ID('Config'),'RowInCardex','IsRowGuidCol')is  null ) 
		ALTER TABLE Config ADD RowInCardex  Tinyint NOT NULL DEFAULT (0)

		 if ( COLUMNPROPERTY( OBJECT_ID('UseOthers'),'UseNote','IsRowGuidCol')is null )
			 ALTER TABLE UseOthers ADD UseNote varchar(255) 

		 if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'ParentCoReciptID','IsRowGuidCol')is null )
			 begin
			 ALTER TABLE Recipts ADD ParentCoReciptID int 
			 ALTER TABLE ReciptTypes ADD RecallEditKind Tinyint NOT NULL DEFAULT (0)
			 end

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'DeficitValueUnitSellPrice2','IsRowGuidCol')is  null ) 
			 ALTER TABLE ReciptTypes ADD DeficitValueUnitSellPrice2 Tinyint NOT NULL DEFAULT (1)

      if ( COLUMNPROPERTY( OBJECT_ID('Config'),'CustomerTrancKinds','IsRowGuidCol')is  null ) 
    ALTER TABLE Config ADD CustomerTrancKinds varchar (50) NOT NULL  DEFAULT ('0') 

     if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'WastesFunctions','IsRowGuidCol')is  null ) 
			 begin
			 ALTER TABLE ReciptTypes ADD WastesFunctions Tinyint NOT NULL DEFAULT (0)
      ALTER TABLE ReciptItems ADD Waste1 decimal(18, 3) 
      ALTER TABLE ReciptItems ADD Waste2 decimal(18, 3) 
      ALTER TABLE ReciptItems ADD Function1 decimal(18, 3) 
			 end

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'Commendation','IsRowGuidCol')is  null ) 
			 ALTER TABLE ReciptTypes ADD Commendation Tinyint NOT NULL DEFAULT (1)

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypesAccCode'),'BedBes','IsRowGuidCol')is  null ) 
			 ALTER TABLE ReciptTypesAccCode ADD BedBes Tinyint 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'Person3ControlWeightCustomer','IsRowGuidCol')is  null ) 
			 ALTER TABLE ReciptTypes ADD Person3ControlWeightCustomer Tinyint NOT NULL DEFAULT (0)

		if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'CustomerID3','IsRowGuidCol')is null )
			 begin

			 ALTER TABLE Forms ADD CustomerID3 int NOT NULL DEFAULT (0)
			 ALTER TABLE Forms ADD CONSTRAINT FK_Forms_CustomersCustomerID3
			 FOREIGN KEY ( CustomerID3 ) REFERENCES Customers(CustID)

			 ALTER TABLE FormTypes ADD Customer3Active Tinyint NOT NULL DEFAULT (0)
			 ALTER TABLE FormTypes ADD Customer3Lable nvarchar(50)
			 ALTER TABLE FormTypes ADD CustomerKind3 nvarchar(50)

			 ALTER TABLE Severable ADD DeficitAmount Money NOT NULL DEFAULT (0)
  		ALTER TABLE Config ADD DefaultYear  Tinyint NOT NULL DEFAULT (0)

			 end

			 if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Analyze]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
			  CREATE TABLE [dbo].[Analyze](
			 [ID] int NOT NULL,
			 [CaptionName] [nvarchar](50) NOT NULL,
			 [FieldName] [varchar](50) NOT NULL,
			 [TableName] [varchar](50) NULL,
			 [TopicName] [varchar](50) NULL,
			 [AliasName] [varchar](50) NULL,
			 [JoinFieldName] [varchar](50) NULL,
			 CONSTRAINT [PK_Analyze] PRIMARY KEY CLUSTERED ([ID] ASC) ON [PRIMARY]) ON [PRIMARY]

			 if (SELECT COUNT(*) FROM Analyze)=0
			 begin
			 INSERT INTO Analyze
			 (ID, CaptionName, FieldName, TableName, TopicName, AliasName, JoinFieldName)
			 SELECT 1,'ÇäÈÇÑ','Recipts.StoreID','Stores','c_StoreName',NULL,'n_StoreID'
			 union all
			 SELECT 2,'Ñæåþ˜ÇáÇ','StuffCoding.GroupID','StuffGroups','GroupName',NULL,'GroupID'
			 union all
			 SELECT 4,'˜Ï˜ÇáÇ','ReciptItems.StuffCode','StuffCoding','c_StuffName',NULL,'c_StuffCode'
			 union all
			 SELECT 5,'ÑæåþãÔÊÑí1','C1.CustomerGrpID','CustomersGroup','CustomerGrpName','GC1','CustomerGrpID'
			 union all
			 SELECT 6,'ÑæåþãÔÊÑí2','C2.CustomerGrpID','CustomersGroup','CustomerGrpName','GC2','CustomerGrpID'
			 union all
			 SELECT 7,'ÑæåþãÔÊÑí3','C3.CustomerGrpID','CustomersGroup','CustomerGrpName','GC3','CustomerGrpID'
			 union all
			 SELECT 8,'ÑæåþãÔÊÑíþÂíÊã','CItem.CustomerGrpID','CustomersGroup','CustomerGrpName','GCItem','CustomerGrpID'
			 union all
			 SELECT 9,'ãÔÊÑí1','Recipts.PersonID1','Customers','CustName','C1','CustID'
			 union all
			 SELECT 10,'ãÔÊÑí2','Recipts.PersonID2','Customers','CustName','C2','CustID'
			 union all
			 SELECT 11,'ãÔÊÑí3','Recipts.PersonID3','Customers','CustName','C3','CustID'
			 union all
			 SELECT 12,'˜ÏãÔÊÑíöþÂíÊã','ReciptItems.PersonID1','Customers','CustName','CItem','CustID'
			 union all
			 SELECT 13,'äæÚþÇØáÇÚÇÊ','Recipts.SecondType','LookUps','Name',NULL,'LookUpID'
			 union all
			 SELECT 14,'þãÍáþãÕÑÝ','Recipts.UseUnitID','UseUnits','UseUnitName','U1','UseUnitID'
			 union all
			 SELECT 15,'ãÍáþãÕÑÝþÂíÊã','ReciptItems.UseUnitID','UseUnits','UseUnitName','U2','UseUnitID'
			 union all
			 SELECT 16,'ãÏáþ˜ÇáÇ','ReciptItems.ProductModel','LookUps','Name',NULL,'LookUpID'
			 union all
			 SELECT 17,'ÓÇáþãÇáí','Recipts.YearID','Util.MaliYear','YearID','Y','YearID'
			 union all
			 SELECT 18,'ãÇå','SUBSTRING(Recipts.ReciptDate, 6, 2)','Months','Name','M','MonthID'
			 end

			 if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'CustomerRateAct','IsRowGuidCol')is null )
			 begin
			 ALTER TABLE ReciptTypes ADD CustomerRateAct Tinyint NOT NULL DEFAULT (0)
			 ALTER TABLE ReciptItems ADD CustomerRate Money
			 end

    if ( COLUMNPROPERTY( OBJECT_ID('Config'),'ComPortKind','IsRowGuidCol')is  null ) 
    ALTER TABLE Config ADD ComPortKind Tinyint NOT NULL  DEFAULT (2) 

    if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'InsertDate','IsRowGuidCol')is null )
		ALTER TABLE Recipts ADD InsertDate DateTime

     

			 if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'Transmittal','IsRowGuidCol')is null )
			 begin
			 ALTER TABLE Recipts ADD Transmittal int NOT NULL DEFAULT (0)
			 ALTER TABLE ReciptTypes ADD TransmittalActive Tinyint NOT NULL DEFAULT (0)
			 ALTER TABLE ReciptTypes ADD TransmittalLevelID Tinyint NOT NULL DEFAULT (0)
			 end

			 if not exists (select * from dbo.sysobjects where id = object_id(N'Util.AnalyzeItems') and
			 OBJECTPROPERTY(id, N'IsUserTable') = 1)
		   CREATE TABLE Util.AnalyzeItems(
			 ID int NOT NULL,
			 FieldName nvarchar(50) NOT NULL,
			 DisPlayName nvarchar(50) NOT NULL,
			 Kind Tinyint NOT NULL,
			 CONSTRAINT PK_AnalyzeItems PRIMARY KEY CLUSTERED (ID ASC) ON [PRIMARY]) ON [PRIMARY]

			 IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_ReciptItems_WaterCo' AND type = 'D')
			 ALTER TABLE ReciptItems ADD CONSTRAINT DF_ReciptItems_WaterCo DEFAULT (0) FOR WaterCo 

      

      
			 if not exists (select * from dbo.sysobjects where id = object_id(N'ScheduleTimePerson') and OBJECTPROPERTY(id, N'IsUserTable')
			 = 1)
			 begin
			 CREATE TABLE ScheduleTimePerson (	TimePersonId int NOT NULL ,	WorkId int NOT NULL ,
			 PersonId int NULL ,	Proc_Entity int NULL ,	Proc_Time int NULL ,
			 Proc_Note char (500) NULL ,	CONSTRAINT PK_ScheduleTimePersON PRIMARY KEY CLUSTERED
			 (		TimePersonId	) ON [PRIMARY] )
			 ON [PRIMARY]

			 CREATE TABLE ScheduleStuffLossItems (	LossItemId int NOT NULL ,	WorkId int NULL ,
			 LossStuffCoding int NULL ,	LossEntity int NULL ,	LossWeight int NULL ,
			 LossNote char (500) NULL ,	CONSTRAINT PK_ScheduleStuffLossItems PRIMARY KEY CLUSTERED
			 (	LossItemId	) ON [PRIMARY] ) ON [PRIMARY]

			 CREATE TABLE ScheduleTimeLossItems (TimeLossId int NOT NULL ,
			 WorkId int NOT NULL ,	LoseId int NOT NULL ,	LossTime int NOT NULL ,
			 LossCommant char (500) NULL ,	CONSTRAINT PK_ScheduleTimeLossItems PRIMARY KEY CLUSTERED
			 (		TimeLossId	) ON [PRIMARY] ) ON [PRIMARY]

			 CREATE TABLE ScheduleWorksItems (	ItemsId int NOT NULL ,
			 WorkId int NULL ,	ProductModel int NULL CONSTRAINT DF_ScheduleWorksItems_ProductModel DEFAULT (0),
			 ProcStuffCoding bigint NULL CONSTRAINT DF_ScheduleWorksItems_ProcStuffCoding DEFAULT (0),
			 OrderId int NULL CONSTRAINT DF_ScheduleWorksItems_OrderId DEFAULT (0),
			 TrancFormId int NULL CONSTRAINT DF_ScheduleWorksItems_TrancFormId DEFAULT (0),
			 WorkTime float NULL ,	ProcAmount float NULL ,	LossAmount1 float NULL ,	LossAmount2 float NULL ,
			 CONSTRAINT PK_4 PRIMARY KEY CLUSTERED 	(	ItemsId	) ON [PRIMARY] ) ON [PRIMARY]

			 CREATE TABLE ScheduleTimeWorks (	WorkId int NOT NULL ,	WorkNo int NULL ,
			 WorkDate char(10) NULL ,	State Tinyint NULL ,	MashinID int NULL ,	ShiftNo Tinyint NULL ,
			 ReciptNo int NULL ,	ReciptDate char(10) NULL ,	ProcCode int NULL ,
			 CONSTRAINT PK_ScheduleWorkItems PRIMARY KEY CLUSTERED 	(	WorkId	) ON [PRIMARY] ) ON
			 [PRIMARY]

			 CREATE TABLE ScheduleTimeTabel (TimeTabelId int NOT NULL ,
			 KIND int NOT NULL CONSTRAINT DF_ScheduleTimeTabel_KIND DEFAULT (0),	ProcID int NOT NULL ,	MashineID
			 int NOT NULL ,
			 ProcCode int NOT NULL CONSTRAINT DF_ScheduleTimeTabel_ProcCode DEFAULT (0),
			 TrnsFormID int NOT NULL CONSTRAINT DF_ScheduleTimeTabel_TrnsFormID DEFAULT (0),
			 S_Date char(10) NOT NULL ,	S_Amount int NOT NULL ,	S_Function int NOT NULL ,
			 CONSTRAINT PK_ScheduleTimeTabel PRIMARY KEY CLUSTERED 	(TimeTabelId) ON [PRIMARY] ) ON
			 [PRIMARY]

			 CREATE TABLE ScheduleProcItems (ProcId int NOT NULL ,	ProcstaffCoding int NOT NULL ,
			 ProcCode int NOT NULL CONSTRAINT DF_ScheduleProcItems_ProcCode DEFAULT (0),
			 DeliveryDate char(10) NOT NULL CONSTRAINT DF_ScheduleProcItems_DeliveryDate DEFAULT (0),
			 Amount float NOT NULL CONSTRAINT DF_ScheduleProcItems_Amount DEFAULT (0),
			 ReciptItemId int NOT NULL CONSTRAINT DF_ScheduleProcItems_ReciptItemId DEFAULT (0),
			 ProductModel int NOT NULL CONSTRAINT DF_ScheduleProcItems_ProductModel DEFAULT (0),
			 CONSTRAINT PK_ScheduleProcItems PRIMARY KEY CLUSTERED 	(ProcId	) ON [PRIMARY] ) ON [PRIMARY]

			 CREATE TABLE ScheduleType (	Code int NOT NULL ,	Name varchar (80) NULL ,
			 Workload_Normal Tinyint NOT NULL CONSTRAINT DF_ScheduleType_Workload_Normal DEFAULT (0),
			 Workload_Time Tinyint NOT NULL CONSTRAINT DF_ScheduleType_Workload_Time DEFAULT (0),
			 Workload_Amountd Tinyint NOT NULL CONSTRAINT DF_ScheduleType_Workload_Amountd DEFAULT (0),
			 StandardRate Tinyint NOT NULL CONSTRAINT DF_ScheduleType_StandardRate DEFAULT (0),
			 Note Tinyint NOT NULL CONSTRAINT DF_ScheduleType_Note DEFAULT (0),
			 AccRelatedActive Tinyint NOT NULL CONSTRAINT DF_ScheduleType_AccRelatedActive DEFAULT (0),
			 KindActive Tinyint NOT NULL CONSTRAINT DF_ScheduleType_KindActive DEFAULT (0),
			 Proc_Line_Active Tinyint NOT NULL CONSTRAINT DF_ScheduleType_Proc_Line_Active DEFAULT (0),
			 ReportName1 varchar (80) NULL ,	ReportName2 varchar (80) NULL ,
			 MasterNo int NULL CONSTRAINT DF_ScheduleType_MasterNo DEFAULT (0),
			 ProcRelatedActive Tinyint NOT NULL CONSTRAINT DF_ScheduleType_ProcRelatedActive DEFAULT (0),
			 CONSTRAINT PK_ScheduleType PRIMARY KEY CLUSTERED 	(Code) ON [PRIMARY] ) ON [PRIMARY]

			 CREATE TABLE ScheduleInfo (	ScheduleId int NOT NULL ,	Code int NOT NULL ,	InfoId int NOT NULL ,
			 InfoName varchar (80) NOT NULL ,	ProcInFoId int NOT NULL CONSTRAINT DF_ScheduleInfo_ProcInFoId DEFAULT
			 (0),
			 MasterInfoID int NOT NULL CONSTRAINT DF_ScheduleInfo_MasterInfoID DEFAULT (0),	Kind Tinyint NULL ,
			 WorkLoad_Normal float NULL ,WorkLoad_Amount float NULL ,WorkLoad_time float NULL ,
			 StandardRate money NULL ,Comment varchar (1000) NULL ,	Acc_TopicCode int NULL ,
			 Acc_DetailCode int NULL ,	Acc_CTopicCode1 int NULL ,	Acc_CTopicCode2 int NULL ,
			 CONSTRAINT PK_ScheduleInfo PRIMARY KEY CLUSTERED (ScheduleId) ON [PRIMARY] ,
			 CONSTRAINT FK_ScheduleInfo_ScheduleType FOREIGN KEY (Code) REFERENCES ScheduleType (Code) ON UPDATE
			 CASCADE ) ON [PRIMARY]

			 CREATE TABLE ScheduleProCode (	ScheduleId int NOT NULL ,	ProcCode int NOT NULL ,
			 ProcWordLoad float NOT NULL CONSTRAINT DF_ScheduleProCode_ProcWordLoad DEFAULT (0),
			 CONSTRAINT FK_ScheduleProCode_ScheduleInfo FOREIGN KEY 	(ScheduleId
			 ) REFERENCES ScheduleInfo (	ScheduleId) ON DELETE CASCADE ON UPDATE CASCADE ) ON [PRIMARY]
			 end

      



			 ALTER TABLE StuffCoding NOCHECK CONSTRAINT ALL
			 ALTER TABLE TransFormItems NOCHECK CONSTRAINT ALL
			 ALTER TABLE ManifestoItems NOCHECK CONSTRAINT ALL
			 ALTER TABLE StuffCodingAid NOCHECK CONSTRAINT ALL
			 --ALTER TABLE StuffsDeficitsRange NOCHECK CONSTRAINT ALL
			 ALTER TABLE Agreements NOCHECK CONSTRAINT ALL
			 ALTER TABLE ReciptItems NOCHECK CONSTRAINT ALL
			 ALTER TABLE QuotaItems NOCHECK CONSTRAINT ALL
			 ALTER TABLE ReciptsRegulationItems NOCHECK CONSTRAINT ALL
			 ALTER TABLE Tozin NOCHECK CONSTRAINT ALL
			 ALTER TABLE StoreStuffs NOCHECK CONSTRAINT ALL
			 ALTER TABLE CountingItems NOCHECK CONSTRAINT ALL
			 ALTER TABLE ScheduleWorksItems NOCHECK CONSTRAINT ALL
			 ALTER TABLE PurchaseEffect NOCHECK CONSTRAINT ALL

			 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_ScheduleWorksItems_ProcStuffCoding' AND type = 'D')
			 ALTER TABLE ScheduleWorksItems DROP CONSTRAINT DF_ScheduleWorksItems_ProcStuffCoding
			 -----------------------------------------------------------D R O P
			 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_CountingItems_StuffCoding' AND type = 'F')
			 ALTER TABLE dbo.CountingItems	DROP CONSTRAINT FK_CountingItems_StuffCoding
			 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_StoreStuffs_StuffCoding' AND type = 'F')
			 ALTER TABLE dbo.StoreStuffs	DROP CONSTRAINT FK_StoreStuffs_StuffCoding
			 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Tozins_StuffCoding' AND type = 'F')
			 ALTER TABLE dbo.Tozin	DROP CONSTRAINT FK_Tozins_StuffCoding
			 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptsRegulationItems_StuffCoding' AND type = 'F')
			 ALTER TABLE dbo.ReciptsRegulationItems	DROP CONSTRAINT FK_ReciptsRegulationItems_StuffCoding
			 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_QuotaItems_StuffCoding' AND type = 'F')
			 ALTER TABLE dbo.QuotaItems	DROP CONSTRAINT FK_QuotaItems_StuffCoding
			 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptItems_StuffCoding' AND type = 'F')
			 ALTER TABLE dbo.ReciptItems	DROP CONSTRAINT FK_ReciptItems_StuffCoding
			 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Agreementss_StuffCoding' AND type = 'F')
			 ALTER TABLE dbo.Agreements	DROP CONSTRAINT FK_Agreementss_StuffCoding
			 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ExcelImport_StuffCoding' AND type = 'F')
			 ALTER TABLE dbo.ExcelImport	DROP CONSTRAINT FK_ExcelImport_StuffCoding
			 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_StuffsDeficitsRange_StuffCoding' AND type = 'F')
			 ALTER TABLE dbo.StuffsDeficitsRange	DROP CONSTRAINT FK_StuffsDeficitsRange_StuffCoding
			 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_StuffsDeficitsRange_Deficits' AND type = 'F')
			 ALTER TABLE dbo.StuffsDeficitsRange	DROP CONSTRAINT FK_StuffsDeficitsRange_Deficits
			 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_StuffsDeficitsRange' AND type = 'K')
			 ALTER TABLE dbo.StuffsDeficitsRange	DROP CONSTRAINT PK_StuffsDeficitsRange
			 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_StuffCodingAid_StuffCoding' AND type = 'F')
			 ALTER TABLE dbo.StuffCodingAid	DROP CONSTRAINT FK_StuffCodingAid_StuffCoding
			 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Manifesto_StuffCoding' AND type = 'F')
			 ALTER TABLE dbo.ManifestoItems	DROP CONSTRAINT FK_Manifesto_StuffCoding
			 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_TransForms_StuffCoding' AND type = 'F')
			 ALTER TABLE dbo.TransForms	DROP CONSTRAINT FK_TransForms_StuffCoding
			 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_TransFormItems_StuffCoding' AND type = 'F')
			 ALTER TABLE dbo.TransFormItems	DROP CONSTRAINT FK_TransFormItems_StuffCoding
			 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_StoreStuffs_Stores' AND type = 'F')
			 ALTER TABLE dbo.StoreStuffs	DROP CONSTRAINT FK_StoreStuffs_Stores
			 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_StoreStuffs' AND type = 'K')
			 ALTER TABLE dbo.StoreStuffs	DROP CONSTRAINT PK_StoreStuffs
			 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_StuffCodingAid' AND type = 'K')
			 ALTER TABLE dbo.StuffCodingAid	DROP CONSTRAINT PK_StuffCodingAid
			 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_ExcelImport' AND type = 'K')
			 ALTER TABLE ExcelImport	DROP CONSTRAINT PK_ExcelImport
			 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_CountingItems_Stores' AND type = 'F')
			 ALTER TABLE CountingItems	DROP CONSTRAINT FK_CountingItems_Stores
			 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PurchaseEffect_StuffCoding' AND type = 'F')
			 ALTER TABLE PurchaseEffect	DROP CONSTRAINT FK_PurchaseEffect_StuffCoding
			 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ScheduleWorksItems_StuffCoding' AND type = 'F')
			 ALTER TABLE ScheduleWorksItems	DROP CONSTRAINT FK_ScheduleWorksItems_StuffCoding
			 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ScheduleWorksItems_Customers' AND type = 'F')
			 ALTER TABLE ScheduleWorksItems	DROP CONSTRAINT FK_ScheduleWorksItems_Customers

			 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Delivery_StuffCoding' AND type = 'F')
			 ALTER TABLE [Machin].[Delivery]	DROP CONSTRAINT FK_Delivery_StuffCoding

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FuelRationing_StuffCoding1' AND type = 'F')
			 ALTER TABLE [Machin].[FuelRationing]	DROP CONSTRAINT FK_FuelRationing_StuffCoding1

			 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FuelRationing_StuffCoding2' AND type = 'F')
			 ALTER TABLE [Machin].[FuelRationing]	DROP CONSTRAINT FK_FuelRationing_StuffCoding2


			 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Maintenance_StuffCoding' AND type = 'F')
			 ALTER TABLE [Machin].Maintenance	DROP CONSTRAINT FK_Maintenance_StuffCoding


			 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_CustomersCapacity_StuffCoding' AND type = 'F')
			 ALTER TABLE CustomersCapacity	DROP CONSTRAINT FK_CustomersCapacity_StuffCoding

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Machinery_StuffCoding' AND type = 'F')
			 ALTER TABLE [Machin].Machinery	DROP CONSTRAINT FK_Machinery_StuffCoding


IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Machinery_StuffCoding1' AND type = 'F')
			 ALTER TABLE [Machin].Machinery	DROP CONSTRAINT FK_Machinery_StuffCoding1

--IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FunctionItems_StuffCoding' AND type = 'F')
--			 ALTER TABLE [Machin].Machinery	DROP CONSTRAINT FK_FunctionItems_StuffCoding


	--		 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_StuffCoding' AND type = 'K')
	--		 ALTER TABLE dbo.StuffCoding	DROP CONSTRAINT PK_StuffCoding


						 if EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__PurchaseE__Stuff__3ADF759F]') AND type = 'D')
						ALTER TABLE [dbo].[PurchaseEffect] DROP CONSTRAINT [DF__PurchaseE__Stuff__3ADF759F]

			 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Customers_PurchaseEffect' AND type = 'F')
			 ALTER TABLE Customers	DROP CONSTRAINT FK_Customers_PurchaseEffect

			 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Customers_PurchaseEffect2' AND type = 'F')
			 ALTER TABLE Customers	DROP CONSTRAINT FK_Customers_PurchaseEffect2

			 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptPurchaseEffect_PurchaseEffect' AND type = 'F')
			 ALTER TABLE ReciptPurchaseEffect	DROP CONSTRAINT FK_ReciptPurchaseEffect_PurchaseEffect

			 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_PurchaseEffect' AND type = 'K')
			 ALTER TABLE PurchaseEffect	DROP CONSTRAINT PK_PurchaseEffect

      

 if exists (select * from sysobjects where id = object_id(N'VU_aidrecal') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view VU_aidrecal

			 -----------------------------------------------------------A L T E R TO BIGINT  +
			 ALTER TABLE StuffCoding	ALTER COLUMN c_StuffCode BIGINT NOT NULL
			 ALTER TABLE StuffGroups	ALTER COLUMN StartCode BIGINT
			 ALTER TABLE StuffGroups	ALTER COLUMN FinishCode BIGINT
			 ALTER TABLE StuffCodingSpecial	ALTER COLUMN StuffCode BIGINT
			 ALTER TABLE dbo.TransForms	ALTER COLUMN StuffCode BIGINT
			 ALTER TABLE dbo.TransFormItems ALTER COLUMN StuffCode BIGINT
			 ALTER TABLE dbo.ManifestoItems	ALTER COLUMN StuffCode BIGINT
			 ALTER TABLE dbo.StuffCodingAid	ALTER COLUMN c_StuffCode BIGINT NOT NULL
			 --ALTER TABLE dbo.StuffsDeficitsRange	ALTER COLUMN c_StuffCode BIGINT NOT NULL
			 ALTER TABLE dbo.Agreements	ALTER COLUMN StuffCode BIGINT
			 ALTER TABLE dbo.ReciptItems	ALTER COLUMN StuffCode BIGINT
			 ALTER TABLE dbo.QuotaItems	ALTER COLUMN StuffCode BIGINT
			 ALTER TABLE dbo.ReciptsRegulationItems	ALTER COLUMN StuffCode BIGINT
			 ALTER TABLE dbo.Tozin	ALTER COLUMN StuffCode BIGINT
			 ALTER TABLE dbo.StoreStuffs	ALTER COLUMN c_StuffCode BIGINT NOT NULL
			 ALTER TABLE dbo.CountingItems	ALTER COLUMN StuffCode BIGINT
			 ALTER TABLE dbo.ExcelImport ALTER COLUMN StuffCode BIGINT NOT NULL
			 ALTER TABLE dbo.CountingItems ALTER COLUMN StuffCode BIGINT
			 if ( COLUMNPROPERTY( OBJECT_ID('PurchaseEffect'),'StuffCode','IsRowGuidCol')is not null )
			 ALTER TABLE PurchaseEffect	ALTER COLUMN StuffCode bigint
			 ALTER TABLE StuffGroups	ALTER COLUMN StartCode bigint
			 ALTER TABLE StuffGroups	ALTER COLUMN FinishCode bigint

			 ALTER TABLE ScheduleWorksItems ALTER COLUMN ProcStuffCoding BIGINT

      

     

			 -----------------------------------------------------------C R E A T E  +

			 ALTER TABLE PurchaseEffect ADD CONSTRAINT PK_PurchaseEffect PRIMARY KEY CLUSTERED (EffectID) ON [PRIMARY]
						ALTER TABLE ReciptPurchaseEffect WITH NOCHECK ADD CONSTRAINT FK_ReciptPurchaseEffect_PurchaseEffect FOREIGN
						 KEY(EffectID)REFERENCES PurchaseEffect (EffectID)ON UPDATE CASCADE

 						ALTER TABLE Customers  WITH CHECK ADD  CONSTRAINT FK_Customers_PurchaseEffect FOREIGN KEY(InsertAutoEffectID) 
						 REFERENCES PurchaseEffect (EffectID)  -- ON UPDATE CASCADE 

						ALTER TABLE Customers  WITH CHECK ADD  CONSTRAINT FK_Customers_PurchaseEffect2 FOREIGN KEY(EffectID) 
						 REFERENCES PurchaseEffect (EffectID) 


	--		 ALTER TABLE dbo.StuffCoding ADD CONSTRAINT PK_StuffCoding PRIMARY KEY CLUSTERED (c_StuffCode) ON [PRIMARY]
			 ALTER TABLE dbo.ExcelImport ADD CONSTRAINT PK_ExcelImport PRIMARY KEY CLUSTERED
			 (CellCode,StoreID,StuffCode,ReciptType) ON [PRIMARY]
			 --ALTER TABLE dbo.StuffsDeficitsRange ADD CONSTRAINT PK_StuffsDeficitsRange PRIMARY KEY CLUSTERED
			 --(c_StuffCode,DeficitID) ON [PRIMARY]
			 ALTER TABLE dbo.StoreStuffs ADD CONSTRAINT PK_StoreStuffs PRIMARY KEY CLUSTERED(c_StuffCode,n_StoreID) ON
			 [PRIMARY]
			 ALTER TABLE dbo.StuffCodingAid ADD CONSTRAINT PK_StuffCodingAid PRIMARY KEY CLUSTERED
			 (LookUpDesc,c_StuffCode,LookupID) ON [PRIMARY]
			 ALTER TABLE dbo.CountingItems WITH NOCHECK ADD CONSTRAINT
			 FK_CountingItems_StuffCoding FOREIGN KEY(StuffCode) REFERENCES dbo.StuffCoding	(c_StuffCode)
			 ON UPDATE CASCADe
			 ALTER TABLE dbo.StoreStuffs WITH NOCHECK ADD CONSTRAINT
			 FK_StoreStuffs_StuffCoding FOREIGN KEY	(c_StuffCode) REFERENCES dbo.StuffCoding(c_StuffCode)
			 ON UPDATE CASCADe	 ON DELETE CASCADe
			 ALTER TABLE dbo.Tozin WITH NOCHECK ADD CONSTRAINT
			 FK_Tozins_StuffCoding FOREIGN KEY	(StuffCode) REFERENCES dbo.StuffCoding	(c_StuffCode)
			 ON UPDATE CASCAdE
			 ALTER TABLE dbo.ReciptsRegulationItems WITH NOCHECK ADD CONSTRAINT
			 FK_ReciptsRegulationItems_StuffCoding FOREIGN KEY(StuffCode) REFERENCES dbo.StuffCoding	(c_StuffCode) ON
			 UPDATE CASCAdE
			 ALTER TABLE dbo.QuotaItems WITH NOCHECK ADD CONSTRAINT
			 FK_QuotaItems_StuffCoding FOREIGN KEY	(StuffCode) REFERENCES dbo.StuffCoding	(c_StuffCode)
			 ON UPDATE CASCaDE
			 ALTER TABLE dbo.ReciptItems WITH NOCHECK ADD CONSTRAINT
			 FK_ReciptItems_StuffCoding FOREIGN KEY	(StuffCode) REFERENCES dbo.StuffCoding	(c_StuffCode)
			 ON UPDATE CASCaDE
			 ALTER TABLE dbo.Agreements WITH NOCHECK ADD CONSTRAINT
			 FK_Agreementss_StuffCoding FOREIGN KEY	(StuffCode) REFERENCES dbo.StuffCoding	(c_StuffCode)
			 ON UPDATE CAScADE
			 ALTER TABLE dbo.ExcelImport WITH NOCHECK ADD CONSTRAINT
			 FK_ExcelImport_StuffCoding FOREIGN KEY	(StuffCode) REFERENCES dbo.StuffCoding	(c_StuffCode)
			 ON UPDATE CAScADE
			 --ALTER TABLE dbo.StuffsDeficitsRange WITH NOCHECK ADD CONSTRAINT
			 --FK_StuffsDeficitsRange_StuffCoding FOREIGN KEY(c_StuffCode) REFERENCES dbo.StuffCoding(c_StuffCode)
			 --ON UPDATE CAsCADE ON DELETE CAsCADE
			 --ALTER TABLE dbo.StuffsDeficitsRange WITH NOCHECK ADD CONSTRAINT
			 --FK_StuffsDeficitsRange_Deficits FOREIGN KEY	(DeficitID) REFERENCES dbo.Deficits	(DeficitID)
			 --ON UPDATE CASCaDE ON DELETE CASCaDE
			 ALTER TABLE dbo.StuffCodingAid WITH NOCHECK ADD CONSTRAINT
			 FK_StuffCodingAid_StuffCoding FOREIGN KEY(c_StuffCode) REFERENCES dbo.StuffCoding(c_StuffCode)
			 ON UPDATE CAsCADE ON DELETE CAsCADE
			 ALTER TABLE dbo.ManifestoItems WITH NOCHECK ADD CONSTRAINT
			 FK_Manifesto_StuffCoding FOREIGN KEY(StuffCode) REFERENCES dbo.StuffCoding	(c_StuffCode)
			 ON UPDATE CaSCADE
			 ALTER TABLE dbo.TransForms WITH NOCHECK ADD CONSTRAINT
			 FK_TransForms_StuffCoding FOREIGN KEY	(StuffCode) REFERENCES dbo.StuffCoding	(c_StuffCode)
			 ALTER TABLE dbo.TransFormItems WITH NOCHECK ADD CONSTRAINT
			 FK_TransFormItems_StuffCoding FOREIGN KEY(StuffCode) REFERENCES dbo.StuffCoding	(c_StuffCode)
			 ON UPDATE CASCADe
			 ALTER TABLE dbo.CountingItems WITH NOCHECK ADD CONSTRAINT
			 FK_CountingItems_Stores FOREIGN KEY	(StoreID) REFERENCES dbo.Stores	(n_StoreID)
			 ON UPDATE CASCADe
			 ALTER TABLE dbo.StoreStuffs WITH NOCHECK ADD CONSTRAINT
			 FK_StoreStuffs_Stores FOREIGN KEY	(n_StoreID) REFERENCES dbo.Stores(n_StoreID)
			 ON UPDATE cASCADE	ON DELETE caSCADE
			 
			 if ( COLUMNPROPERTY( OBJECT_ID('PurchaseEffect'),'StuffCode','IsRowGuidCol')is not null )
			 ALTER TABLE PurchaseEffect WITH NOCHECK ADD CONSTRAINT FK_PurchaseEffect_StuffCoding FOREIGN KEY([StuffCode])
			 REFERENCES StuffCoding (c_StuffCode)
			 
			 ALTER TABLE ScheduleWorksItems WITH noCHECK ADD CONSTRAINT FK_ScheduleWorksItems_StuffCoding FOREIGN KEY
			 (ProcStuffCoding)
			 REFERENCES StuffCoding (c_StuffCode)ON UPDATE CASCADE
			 
			 ALTER TABLE ScheduleWorksItems WITH NOCHECK ADD CONSTRAINT FK_ScheduleWorksItems_Customers FOREIGN KEY
			 (OrderId)
			 REFERENCES Customers (CustID)ON UPDATE CASCADE
			 
			 ALTER TABLE ScheduleWorksItems ADD CONSTRAINT DF_ScheduleWorksItems_ProcStuffCoding DEFAULT (0) FOR
			 ProcStuffCoding

      

     


			 -----------------------------------------------------------C H E C K CONSTRAINT
			 ALTER TABLE StuffCoding CHECK CONSTRAINT ALL
			 ALTER TABLE TransFormItems CHECK CONSTRAINT ALL
			 ALTER TABLE ManifestoItems CHECK CONSTRAINT ALL
			 ALTER TABLE StuffCodingAid CHECK CONSTRAINT ALL
			 --ALTER TABLE StuffsDeficitsRange CHECK CONSTRAINT ALL
			 --ALTER TABLE StuffsDeficitsRange CHECK CONSTRAINT ALL
			 ALTER TABLE Agreements CHECK CONSTRAINT ALL
			 ALTER TABLE ReciptItems CHECK CONSTRAINT ALL
			 ALTER TABLE QuotaItems CHECK CONSTRAINT ALL
			 ALTER TABLE ReciptsRegulationItems CHECK CONSTRAINT ALL
			 ALTER TABLE Tozin CHECK CONSTRAINT ALL
			 ALTER TABLE StoreStuffs CHECK CONSTRAINT ALL
			 ALTER TABLE CountingItems CHECK CONSTRAINT ALL
			 ALTER TABLE ScheduleWorksItems CHECK CONSTRAINT ALL
			 ALTER TABLE PurchaseEffect CHECK CONSTRAINT ALL

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'PestEntity','IsRowGuidCol')is  null ) 
      ALTER TABLE ReciptItems ADD PestEntity  decimal(18, 2) 

		 if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'DocTypeCode','IsRowGuidCol')is null )
     		ALTER TABLE FormTypes ADD DocTypeCode Tinyint NOT NULL DEFAULT (8)

      




        if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'RestartFormNumberOnSellsEmporium','IsRowGuidCol')is  null ) 
      ALTER TABLE FormTypes ADD RestartFormNumberOnSellsEmporium Tinyint NOT NULL  DEFAULT (0) 

        if ( COLUMNPROPERTY( OBJECT_ID('Config'),'PhonBookIIPath','IsRowGuidCol')is  null ) 
      ALTER TABLE Config ADD PhonBookIIPath varchar (250) 

			 if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'Transmittal','IsRowGuidCol')is null )
			 begin
			 ALTER TABLE Forms ADD Transmittal int NOT NULL DEFAULT (0)
			 ALTER TABLE FormTypes ADD TransmittalActive Tinyint NOT NULL DEFAULT (0)
			 ALTER TABLE FormTypes ADD TransmittalLevelID Tinyint NOT NULL DEFAULT (0)
			 end

      if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'MachineInfo','IsRowGuidCol')is  null ) 
    ALTER TABLE Recipts ADD MachineInfo varchar(50) 

     if ( COLUMNPROPERTY( OBJECT_ID('Config'),'AccountServerName','IsRowGuidCol')is  null ) 
    ALTER TABLE Config ADD AccountServerName Nvarchar (50) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'AutoCorrelateCo','IsRowGuidCol')is  null ) 
    ALTER TABLE ReciptTypes ADD AutoCorrelateCo Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'CartonKind','IsRowGuidCol')is  null ) 
    ALTER TABLE ReciptTypes ADD CartonKind Tinyint NOT NULL  DEFAULT (0) 

      if ( COLUMNPROPERTY( OBJECT_ID('Config'),'BaudRate','IsRowGuidCol')is  null ) 
    ALTER TABLE Config ADD BaudRate Tinyint NOT NULL  DEFAULT (7) 

      if ( COLUMNPROPERTY( OBJECT_ID('Config'),'Port','IsRowGuidCol')is  null ) 
    ALTER TABLE Config ADD Port varchar (50)   DEFAULT ('COM1') 


      if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'DocTypeCode','IsRowGuidCol')is  null ) 
			 begin
  --  IfThen(opt.AccOldAvailable,ALTER TABLE ReciptTypes ADD DocTypeCode Tinyint NOT NULL  DEFAULT (3) 
                              ALTER TABLE ReciptTypes ADD DocTypeCode Tinyint NOT NULL  DEFAULT (7) 

			 --UPDATE FormTypes SET DocTypeCode = 7
			 --WHERE (MakeDoc =1) AND (DisplayFormType in(0))
			 end

      ALTER TABLE Recipts ALTER COLUMN AidNumber decimal(18, 4)
      ALTER TABLE ReciptItems ALTER COLUMN AidNumber decimal(18, 4)
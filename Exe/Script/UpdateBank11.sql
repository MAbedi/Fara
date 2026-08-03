set nocount on
  if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'RestartFormNumberOnSellsEmporium','IsRowGuidCol')is  null )  ALTER TABLE FormTypes ADD RestartFormNumberOnSellsEmporium Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'PhonBookIIPath','IsRowGuidCol')is  null )  
  ALTER TABLE Config ADD PhonBookIIPath varchar (250) 
 if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'Transmittal','IsRowGuidCol')is null )
 begin
 ALTER TABLE Forms ADD Transmittal int NOT NULL DEFAULT (0)
 ALTER TABLE FormTypes ADD TransmittalActive Tinyint NOT NULL DEFAULT (0)
 ALTER TABLE FormTypes ADD TransmittalLevelID Tinyint NOT NULL DEFAULT (0)
 end
  if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'MachineInfo','IsRowGuidCol')is  null )  
  ALTER TABLE Recipts ADD MachineInfo varchar(50)  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'AccountServerName','IsRowGuidCol')is  null )  ALTER TABLE Config ADD AccountServerName Nvarchar (50) 
  
  IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  begin
 if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'AutoCorrelateCo','IsRowGuidCol')is  null )  
  ALTER TABLE ReciptTypes ADD AutoCorrelateCo bigint NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'CartonKind','IsRowGuidCol')is  null )  
  ALTER TABLE ReciptTypes ADD CartonKind Tinyint NOT NULL  DEFAULT (0) 
  if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'DocTypeCode','IsRowGuidCol')is  null )  
  BEGIN 
  ALTER TABLE ReciptTypes ADD DocTypeCode Tinyint NOT NULL  DEFAULT (7)  
  UPDATE FormTypes SET DocTypeCode = 7 WHERE (MakeDoc =1) AND (DisplayFormType in(0)) 
  END 
  end


  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'ActiveProcurement','IsRowGuidCol')is  null )  
  ALTER TABLE Config ADD ActiveProcurement Tinyint NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'ActiveManeger','IsRowGuidCol')is  null )  
  ALTER TABLE Config ADD ActiveManeger Tinyint NOT NULL  DEFAULT (0) 


if not exists (select * from dbo.sysobjects where id = object_id(N'Unit2Stuffs') and OBJECTPROPERTY(id,N'IsUserTable') = 1) 
CREATE TABLE dbo.Unit2Stuffs(
  StuffCode bigint NOT NULL,
  UnitCode tinyint NOT NULL,
  UnitCo DECIMAL(18,6) NOT NULL,
  CONSTRAINT FK_Unit2Stuffs_Units FOREIGN KEY(UnitCode) REFERENCES dbo.Units (UnitCode) ON UPDATE CASCADE ON DELETE CASCADE ,
  CONSTRAINT FK_Unit2Stuffs_StuffCoding FOREIGN KEY(StuffCode)REFERENCES dbo.StuffCoding (c_StuffCode)--ON UPDATE CASCADE 
  ON DELETE CASCADE,
  CONSTRAINT PK_Unit2Stuffs PRIMARY KEY CLUSTERED (	StuffCode ASC,	UnitCode ASC) ON [PRIMARY]) ON [PRIMARY]
  
	if not exists (select * from dbo.sysobjects where id = object_id(N'Currencies') and OBJECTPROPERTY(id, N'IsUserTable') = 1) 
	begin
	 CREATE TABLE Currencies (CurrenciesID int NOT NULL ,CurrenciesName VarChar (250) NOT NULL, 
	 CONSTRAINT PK_Currencies PRIMARY KEY CLUSTERED	(CurrenciesID) ON [PRIMARY] ) ON [PRIMARY] 
	 end 

  if ( COLUMNPROPERTY( OBJECT_ID('Currencies'),'CurrencyCode','IsRowGuidCol')is  null )  
  ALTER TABLE Currencies ADD CurrencyCode varchar(5)

  if ( COLUMNPROPERTY( OBJECT_ID('Currencies'),'CurrencySymbol','IsRowGuidCol')is  null )  
  ALTER TABLE Currencies ADD CurrencySymbol varchar(5)
  	



	if not exists (select * from dbo.sysobjects where id = object_id(N'CurrenciesItems') and OBJECTPROPERTY(id,N'IsUserTable') = 1) 
	begin
	  CREATE TABLE CurrenciesItems (CurrenciesItemsID int IDENTITY (1, 1) NOT NULL ,   
	  CurrenciesID int NOT NULL , CurrenciesDate char (10) NOT NULL ,
	  EqualityWithMainUnit decimal(18, 2) NOT NULL ,
	  InformationSource  VarChar (100),
	  CONSTRAINT PK_CurrenciesItems PRIMARY KEY CLUSTERED	(CurrenciesItemsID) ON [PRIMARY],
	  CONSTRAINT FK_CurrenciesItems_Currencies FOREIGN KEY (CurrenciesID) 
	  REFERENCES Currencies (CurrenciesID) ON UPDATE CASCADE )ON [PRIMARY] 
	end
	
---------------------------------- New
if not exists (select * from dbo.sysobjects where id = object_id(N'CurrenciesInfo') and OBJECTPROPERTY(id,N'IsUserTable') = 1) 
begin
  CREATE TABLE CurrenciesInfo (CurrenciesInfoID int  NOT NULL ,   
   CurrenciesInfoName varchar(150) NOT NULL ,
   CONSTRAINT PK_CurrenciesInfo PRIMARY KEY CLUSTERED	(CurrenciesInfoID) ON [PRIMARY] )ON [PRIMARY] 
end

if ( COLUMNPROPERTY( OBJECT_ID('CurrenciesItems'),'CurrenciesInfoID','IsRowGuidCol')is  null )  
begin
  ALTER TABLE CurrenciesItems ADD CurrenciesInfoID int 
  ALTER TABLE CurrenciesItems ADD CONSTRAINT FK_CurrenciesItems_CurrenciesInfo 
      FOREIGN KEY (CurrenciesInfoID)REFERENCES CurrenciesInfo (CurrenciesInfoID)  ON UPDATE CASCADE 
end

if ( COLUMNPROPERTY( OBJECT_ID('CurrenciesItems'),'CurrenciesTime','IsRowGuidCol')is  null )  
begin
  ALTER TABLE CurrenciesItems ADD CurrenciesTime float
  ALTER TABLE CurrenciesItems ALTER column EqualityWithMainUnit float
end  

if (select COUNT(*) from CurrenciesInfo)=0
begin
 INSERT INTO CurrenciesInfo (CurrenciesInfoID,CurrenciesInfoName) VALUES (1,'بانك مركزي')
 INSERT INTO CurrenciesInfo (CurrenciesInfoID,CurrenciesInfoName) VALUES (2,'بانك ملي')
end  


INSERT INTO CurrenciesItems
                         (CurrenciesID, CurrenciesDate, EqualityWithMainUnit,CurrenciesTime)
SELECT        CurrenciesID, '1300/01/01' AS CurrenciesDate, 0 AS EqualityWithMainUnit ,'0' as CurrenciesTime
FROM            Currencies
WHERE CurrenciesID NOT IN (SELECT DISTINCT CurrenciesID FROM CurrenciesItems  )

---------------------------------- New 

  if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'ArzRate','IsRowGuidCol')is  null )  
  ALTER TABLE ReciptItems ADD ArzRate Money 
  if ( COLUMNPROPERTY( OBJECT_ID('StuffCoding'),'TariffsID','IsRowGuidCol')is  null )  
  ALTER TABLE StuffCoding ADD TariffsID varchar(15) 
  if not exists (select * from dbo.sysobjects where id = object_id(N'Tariffs') and OBJECTPROPERTY(id,N'IsUserTable') = 1) 
	begin
	  CREATE TABLE Tariffs (TariffsID varchar(15)  NOT NULL ,   
	  TariffsName varchar(150) NOT NULL ,UnitCode Tinyint not null,
	  StandardCode varchar(25)  ,
	  CONSTRAINT PK_Tariffs PRIMARY KEY CLUSTERED	(TariffsID) ON [PRIMARY],
	  CONSTRAINT FK_Tariffs_Units FOREIGN KEY (UnitCode) 
	  REFERENCES Units (UnitCode) ON UPDATE CASCADE )ON [PRIMARY] 
	  
	--  ALTER TABLE StuffCoding ADD CONSTRAINT FK_StuffCoding_Tariffs FOREIGN KEY (TariffsID)REFERENCES            Tariffs (TariffsID) 
	end

if ( COLUMNPROPERTY( OBJECT_ID('Tariffs'),'StuffDiameterFrom','IsRowGuidCol')is  null )  
  ALTER TABLE Tariffs ADD StuffDiameterFrom float 

if ( COLUMNPROPERTY( OBJECT_ID('Tariffs'),'StuffDiameterTo','IsRowGuidCol')is  null )  
  ALTER TABLE Tariffs ADD StuffDiameterTo float 

if ( COLUMNPROPERTY( OBJECT_ID('Tariffs'),'CoilSheet','IsRowGuidCol')is  null )  
  ALTER TABLE Tariffs ADD CoilSheet tinyint not null   DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('Tariffs'),'StuffCode','IsRowGuidCol')is  null )  
BEGIN
  ALTER TABLE Tariffs ADD StuffCode Bigint NULL
  ALTER TABLE Tariffs WITH CHECK ADD  CONSTRAINT FK_Tariffs_StuffCoding_StuffCode FOREIGN KEY(StuffCode)REFERENCES StuffCoding (c_StuffCode)
END

if ( COLUMNPROPERTY( OBJECT_ID('Tariffs'),'ID','IsRowGuidCol')is  null )  
begin
  IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_StuffCoding_Tariffs' AND type = 'F')
    ALTER TABLE StuffCoding	DROP CONSTRAINT FK_StuffCoding_Tariffs
  IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_StuffCodingSpecial_Tariffs' AND type = 'F')
    ALTER TABLE StuffCodingSpecial	DROP CONSTRAINT FK_StuffCodingSpecial_Tariffs
  IF  EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_Tariffs' AND type = 'K')
    ALTER TABLE Tariffs	DROP CONSTRAINT PK_Tariffs

  ALTER TABLE Tariffs ADD ID int identity(1,1)  NOT NULL
  ALTER TABLE Tariffs ADD CONSTRAINT PK_Tariffs PRIMARY KEY CLUSTERED (ID) ON [PRIMARY]
end


  
	
if not exists (select * from dbo.sysobjects where id = object_id(N'Negotiations') and OBJECTPROPERTY(id,N'IsUserTable') = 1) 
begin
	  CREATE TABLE Negotiations (NegotiationsID int IDENTITY (1, 1) NOT NULL ,   
	  CustID int NOT NULL , NegotiationsDate char (10) NOT NULL ,
	  Audience  VarChar (150),  NegDescription   VarChar (1000),
   	ReciptID int NOT NULL,	ServerID int NOT NULL,	YearID int NOT NULL,
	  
	  CONSTRAINT PK_Negotiations PRIMARY KEY CLUSTERED	(NegotiationsID) ON [PRIMARY],
	  CONSTRAINT FK_Negotiations_Customers FOREIGN KEY (CustID) 
	    REFERENCES Customers (CustID) ON UPDATE CASCADE ,
	  CONSTRAINT FK_Negotiations_Recipts FOREIGN KEY(ReciptID, ServerID, YearID)
        REFERENCES Recipts (ReciptID, ServerID, YearID)ON UPDATE CASCADE ON DELETE CASCADE	  )ON [PRIMARY] 
end

if not exists (select * from dbo.sysobjects where id = object_id(N'Proforma') and OBJECTPROPERTY(id,N'IsUserTable') = 1) 
 begin
  CREATE TABLE Proforma (ProformaID int IDENTITY (1, 1) NOT NULL ,   
   ProformaNo  VarChar (100),   ProformaDate datetime NOT NULL ,ExpiryDate datetime NOT NULL ,
   DeliveryDate datetime NOT NULL ,PaymentMode int NOT NULL,Duration  int NOT NULL,
   ContractType int NOT NULL,ProducingCountry  VarChar (100),
   TransportDate datetime NOT NULL ,WayDuration  int NOT NULL,
   TransportBy  int NOT NULL,PackagingType  int NOT NULL, TransportConditions VarChar (100),  
     
   LicenseNumberOrder  VarChar (150), LicenseDateOrder  Char (10), LoadingLocation VarChar (100), CountTransport int ,
   DemandType int ,ImportType int ,BorderEntry VarChar (100),DeliveryTimeOpenCredit int ,
	 
   OrderType int ,TypeOfTransaction int , LettersCreditNo  VarChar (20),
   OpeningBank VarChar (100),Branch VarChar (100),BranchCode VarChar (100),
   BranchTel VarChar (20),BranchAddress VarChar (200),
   YvzansRate decimal(18,2),YvzansDuration  int ,

  ReciptID int NOT NULL,	ServerID int NOT NULL,	YearID int NOT NULL,
  CONSTRAINT PK_Proforma PRIMARY KEY CLUSTERED	(ProformaID) ON [PRIMARY],
	  
  CONSTRAINT FK_Proforma_SellsInfo61 FOREIGN KEY (PaymentMode)   REFERENCES SellsInfo (SellsCode) ON UPDATE CASCADE ,
  CONSTRAINT FK_Proforma_SellsInfo62 FOREIGN KEY (ContractType)   REFERENCES SellsInfo (SellsCode)  ,
  CONSTRAINT FK_Proforma_SellsInfo63 FOREIGN KEY (TransportBy)   REFERENCES SellsInfo (SellsCode)  ,
  CONSTRAINT FK_Proforma_SellsInfo64 FOREIGN KEY (PackagingType)   REFERENCES SellsInfo (SellsCode)  ,
  
  CONSTRAINT FK_Proforma_SellsInfo65 FOREIGN KEY (DemandType)   REFERENCES SellsInfo (SellsCode)  ,
  CONSTRAINT FK_Proforma_SellsInfo66 FOREIGN KEY (ImportType)   REFERENCES SellsInfo (SellsCode)  ,
  
  CONSTRAINT FK_Proforma_SellsInfo67 FOREIGN KEY (OrderType)   REFERENCES SellsInfo (SellsCode)  ,
  CONSTRAINT FK_Proforma_SellsInfo68 FOREIGN KEY (TypeOfTransaction)   REFERENCES SellsInfo (SellsCode)  ,

  CONSTRAINT FK_Proforma_Recipts FOREIGN KEY(ReciptID, ServerID, YearID)
        REFERENCES Recipts (ReciptID, ServerID, YearID) )ON [PRIMARY] 
        
        
 INSERT INTO SellsTypes (SellsType,SellsTypeName) VALUES (61,'نحوه هاي پرداخت')
 INSERT INTO SellsInfo (SellsType,SellsCode,SellsName) VALUES (61,611,'نحوه1')
 INSERT INTO SellsInfo (SellsType,SellsCode,SellsName) VALUES (61,612,'نحوه2')
         
 INSERT INTO SellsTypes (SellsType,SellsTypeName) VALUES (62,'نوع قرارداد')
 INSERT INTO SellsInfo (SellsType,SellsCode,SellsName) VALUES (62,621,'نوع قرارداد1')
 INSERT INTO SellsInfo (SellsType,SellsCode,SellsName) VALUES (62,622,'نوع قرارداد2')
 
 INSERT INTO SellsTypes (SellsType,SellsTypeName) VALUES (63,'وسيله حمل')
 INSERT INTO SellsInfo (SellsType,SellsCode,SellsName) VALUES (63,631,'وسيله 1')
 INSERT INTO SellsInfo (SellsType,SellsCode,SellsName) VALUES (63,632,'وسيله 2')
 
 INSERT INTO SellsTypes (SellsType,SellsTypeName) VALUES (64,'نوع بسته بندي')
 INSERT INTO SellsInfo (SellsType,SellsCode,SellsName) VALUES (64,641,'نوع بسته بندي 1')
 INSERT INTO SellsInfo (SellsType,SellsCode,SellsName) VALUES (64,642,'نوع بسته بندي 2')
-- 
 
 INSERT INTO SellsTypes (SellsType,SellsTypeName) VALUES (65,'نوع تقاضا')
 INSERT INTO SellsInfo (SellsType,SellsCode,SellsName) VALUES (65,651,'نوع تقاضا 1')
 INSERT INTO SellsInfo (SellsType,SellsCode,SellsName) VALUES (65,652,'نوع تقاضا 2')

 INSERT INTO SellsTypes (SellsType,SellsTypeName) VALUES (66,'نوع واردات')
 INSERT INTO SellsInfo (SellsType,SellsCode,SellsName) VALUES (66,661,'نوع واردات 1')
 INSERT INTO SellsInfo (SellsType,SellsCode,SellsName) VALUES (66,662,'نوع واردات 2')
-- 

 INSERT INTO SellsTypes (SellsType,SellsTypeName) VALUES (67,'نوع ثبت سفارش')
 INSERT INTO SellsInfo (SellsType,SellsCode,SellsName) VALUES (67,671,'نوع ثبت سفارش 1')
 INSERT INTO SellsInfo (SellsType,SellsCode,SellsName) VALUES (67,672,'نوع ثبت سفارش 2')

 INSERT INTO SellsTypes (SellsType,SellsTypeName) VALUES (68,'نوع معامله')
 INSERT INTO SellsInfo (SellsType,SellsCode,SellsName) VALUES (68,681,'نوع معامله 1')
 INSERT INTO SellsInfo (SellsType,SellsCode,SellsName) VALUES (68,682,'نوع معامله 2')
end	

if ( COLUMNPROPERTY( OBJECT_ID('Proforma'),'DischargedDate','IsRowGuidCol')is  null )  
ALTER TABLE Proforma ADD DischargedDate datetime   

if ( COLUMNPROPERTY( OBJECT_ID('Proforma'),'NumberDossier','IsRowGuidCol')is  null )  
ALTER TABLE Proforma ADD NumberDossier varchar(30)  

if ( COLUMNPROPERTY( OBJECT_ID('Proforma'),'PaymentStatus','IsRowGuidCol')is  null )  
ALTER TABLE Proforma ADD PaymentStatus int

if ( COLUMNPROPERTY( OBJECT_ID('Proforma'),'ProformaNote','IsRowGuidCol')is  null )  
ALTER TABLE Proforma ADD ProformaNote varchar(300)  


if ( COLUMNPROPERTY( OBJECT_ID('StuffCodingSpecial'),'TariffsID','IsRowGuidCol')is  null )  
begin
  ALTER TABLE StuffCodingSpecial ADD TariffsID varchar(15) 
  --ALTER TABLE StuffCodingSpecial ADD CONSTRAINT FK_StuffCodingSpecial_Tariffs       FOREIGN KEY (TariffsID)REFERENCES Tariffs (TariffsID) 
end

if  exists (select * from dbo.sysobjects where id = object_id(N'dbo.ScanInfo') and 
   OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop TABLE ScanInfo
if  exists (select * from dbo.sysobjects where id = object_id(N'dbo.ScanType') and 
   OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop TABLE dbo.ScanType

if not exists (select * from dbo.sysobjects where id = object_id(N'Util.ScanType') and 
   OBJECTPROPERTY(id, N'IsUserTable') = 1)
begin
CREATE TABLE Util.ScanType (ScanType int NOT NULL ,ScanTypeName nvarchar (100) NOT NULL ,
CONSTRAINT PK_ScanType PRIMARY KEY CLUSTERED (ScanType	) ON [PRIMARY] ) ON [PRIMARY]
end
if not exists (select * from dbo.sysobjects where id = object_id(N'Util.ScanInfo') and 
   OBJECTPROPERTY(id, N'IsUserTable') = 1)
begin
CREATE TABLE Util.ScanInfo (ScanType int NOT NULL ,ScanInfoID int NOT NULL ,ScanInfoName varchar (100) NOT NULL ,
CONSTRAINT PK_ScanInfo PRIMARY KEY CLUSTERED (ScanType,ScanInfoID) ON [PRIMARY] ,
CONSTRAINT FK_ScanInfo_ScanType FOREIGN KEY (ScanType) REFERENCES Util.ScanType (ScanType) 
ON DELETE CASCADE ON UPDATE CASCADE ) ON [PRIMARY]

INSERT INTO Util.ScanType (ScanType,ScanTypeName) VALUES (1,'مذاكرات')
INSERT INTO Util.ScanInfo (ScanType,ScanInfoID,ScanInfoName) VALUES (1,1,'اسناد مذاكره')
 
end

if not exists (select * from dbo.sysobjects where id = object_id(N'Costs') and OBJECTPROPERTY(id,N'IsUserTable') = 1) 
 begin  
  CREATE TABLE Costs (CostsID int IDENTITY (1, 1) NOT NULL ,   
  TypeOperations int NOT NULL ,InformationType int NOT NULL ,
   CostsCode   int NOT NULL ,   CostsDate char(10) NOT NULL ,
   CostsAmount money,CostsNote varchar(500),
   ReciptID int NOT NULL,	ServerID int NOT NULL,	YearID int NOT NULL,
  CONSTRAINT PK_Costs PRIMARY KEY CLUSTERED	(CostsID) ON [PRIMARY],
  CONSTRAINT FK_Costs_SellsInfo FOREIGN KEY (CostsCode)   REFERENCES SellsInfo (SellsCode) ON UPDATE CASCADE ,
  CONSTRAINT FK_Costs_Recipts FOREIGN KEY(ReciptID, ServerID, YearID)
        REFERENCES Recipts (ReciptID, ServerID, YearID) )ON [PRIMARY] 
         
 INSERT INTO SellsTypes (SellsType,SellsTypeName) VALUES (69,'هزينه ها')
 INSERT INTO SellsInfo (SellsType,SellsCode,SellsName) VALUES (69,691,'هزينه1')
 INSERT INTO SellsInfo (SellsType,SellsCode,SellsName) VALUES (69,692,'هزينه2')
 
 INSERT INTO SellsTypes (SellsType,SellsTypeName) VALUES (70,'فرآيندها')
 INSERT INTO SellsInfo (SellsType,SellsCode,SellsName) VALUES (70,701,'فرآيند1')
 INSERT INTO SellsInfo (SellsType,SellsCode,SellsName) VALUES (70,702,'فرآيند2')

INSERT INTO Util.ScanType (ScanType,ScanTypeName) VALUES (2,'هزينه و فرآيند')
INSERT INTO Util.ScanInfo (ScanType,ScanInfoID,ScanInfoName) VALUES (2,1,'اسناد هزينه و فرآيند')
 
end	

if ( COLUMNPROPERTY( OBJECT_ID('Costs'),'CustID','IsRowGuidCol')is  null )  
begin
  ALTER TABLE Costs ADD CustID int NOT NULL  DEFAULT (0) 
  ALTER TABLE Costs ADD CONSTRAINT FK_Costs_Customers FOREIGN KEY (CustID) 
	    REFERENCES Customers (CustID) ON UPDATE CASCADE 
end

IF Not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Costs_Recipts' AND type = 'F')
ALTER TABLE Costs  WITH CHECK ADD  CONSTRAINT FK_Costs_Recipts FOREIGN KEY(ReciptID, ServerID, YearID)
REFERENCES Recipts (ReciptID, ServerID, YearID)

if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'RelatedRecipts','IsRowGuidCol')is  null )  
begin
  ALTER TABLE Forms ADD RelatedRecipts varchar(27) 
  ALTER TABLE FormTypes ADD RelatedReciptTypes char(270) 
end

if ( COLUMNPROPERTY( OBJECT_ID('Proforma'),'CustID','IsRowGuidCol')is  null )  
begin
  ALTER TABLE Proforma ADD CustID int NOT NULL  DEFAULT (0) 
  ALTER TABLE Proforma ADD CONSTRAINT FK_Proforma_Customers FOREIGN KEY (CustID) 
	    REFERENCES Customers (CustID) ON UPDATE CASCADE 
end

if not exists (select * from dbo.sysobjects where id = object_id(N'Insurances') and OBJECTPROPERTY(id, N'IsUserTable') = 1) 
begin
 CREATE TABLE Insurances (InsurancesID int NOT NULL ,InsurancesNo int NOT NULL ,
 InsurancesDate Char (10) NOT NULL, CustID int NOT NULL , 
 CurrenciesID int NOT NULL ,ExchangeRates decimal(18, 2) NOT NULL ,
 ReciptID int NOT NULL,	ServerID int NOT NULL,	YearID int NOT NULL,
CONSTRAINT FK_Insurances_Customers FOREIGN KEY (CustID) REFERENCES Customers (CustID) ON UPDATE CASCADE , 
CONSTRAINT FK_Insurances_Currencies FOREIGN KEY (CurrenciesID) REFERENCES Currencies (CurrenciesID) ON UPDATE CASCADE ,
CONSTRAINT FK_Insurances_Recipts FOREIGN KEY(ReciptID, ServerID, YearID) REFERENCES Recipts (ReciptID, ServerID, YearID)
  ON UPDATE CASCADE  ON DELETE CASCADE ,
CONSTRAINT PK_Insurances PRIMARY KEY CLUSTERED	(InsurancesID) ON [PRIMARY] ) ON [PRIMARY] 
 end 

if not exists (select * from dbo.sysobjects where id = object_id(N'InsurancesItems') and OBJECTPROPERTY(id,N'IsUserTable') = 1) 
begin
  CREATE TABLE InsurancesItems (InsurancesItemsID int IDENTITY (1, 1) NOT NULL ,   
  InsurancesID int NOT NULL , InsurancesCode int NOT NULL,
  PremiumRates  decimal(18, 2) NOT NULL ,
  CurrencyAmount money ,RialEquivalent money,
  CONSTRAINT FK_InsurancesItems_SellsInfo FOREIGN KEY (InsurancesCode)   REFERENCES SellsInfo (SellsCode),
  CONSTRAINT PK_InsurancesItems PRIMARY KEY CLUSTERED	(InsurancesItemsID) ON [PRIMARY],
  CONSTRAINT FK_InsurancesItems_Insurances FOREIGN KEY (InsurancesID) 
  REFERENCES Insurances (InsurancesID) ON UPDATE CASCADE  ON DELETE CASCADE )ON [PRIMARY] 
  
  
 INSERT INTO SellsTypes (SellsType,SellsTypeName) VALUES (72,'عناوين بيمه')
 INSERT INTO SellsInfo (SellsType,SellsCode,SellsName) VALUES (72,721,'عنوان1')
 INSERT INTO SellsInfo (SellsType,SellsCode,SellsName) VALUES (72,722,'عنوان2')

end

if (select COUNT(*) from SellsTypes where SellsType = 73 )=0
begin
 INSERT INTO SellsTypes (SellsType,SellsTypeName) VALUES (73,'وضعیت پرداخت')
 INSERT INTO SellsInfo (SellsType,SellsCode,SellsName) VALUES (73,731,'وضعیت پرداخت1')
 INSERT INTO SellsInfo (SellsType,SellsCode,SellsName) VALUES (73,732,'وضعیت پرداخت2')
end  



 if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'VATActive','IsRowGuidCol')is null )
 begin
 ALTER TABLE FormTypes       ADD VATActive Tinyint NOT NULL DEFAULT (0)
 ALTER TABLE FormItems       ADD VAT Money NOT NULL DEFAULT (0)
 ALTER TABLE Costs           ADD VAT Money NOT NULL DEFAULT (0)
 ALTER TABLE InsurancesItems ADD VAT Money NOT NULL DEFAULT (0)
 end

if ( COLUMNPROPERTY( OBJECT_ID('ReciptsDeficits'),'ArzAmount','IsRowGuidCol')is null )
 ALTER TABLE ReciptsDeficits ADD ArzAmount decimal(18, 4) NOT NULL DEFAULT (0)
 
IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin
 if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ActiveReMainPersonRecipt','IsRowGuidCol')is  null )  
ALTER TABLE ReciptTypes ADD ActiveReMainPersonRecipt Tinyint NOT NULL  DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ActiveTimeToStr','IsRowGuidCol')is  null )  
ALTER TABLE ReciptTypes ADD ActiveTimeToStr Tinyint NOT NULL  DEFAULT (0) 
end

if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'InsertTime','IsRowGuidCol')is  null )  
ALTER TABLE Recipts ADD InsertTime varchar(25)  

if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'EditTime','IsRowGuidCol')is  null )  
ALTER TABLE Recipts ADD EditTime varchar(25)  

if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'InsertTime','IsRowGuidCol')is  null )  
ALTER TABLE ReciptItems ADD InsertTime varchar(25)  

if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'EditTime','IsRowGuidCol')is  null )  
ALTER TABLE ReciptItems ADD EditTime varchar(25)  

IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
 if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'MinRowsPerForm','IsRowGuidCol')is  null )  
ALTER TABLE ReciptTypes ADD MinRowsPerForm int NOT NULL  DEFAULT (-1) 


  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'BaudRate','IsRowGuidCol')is  null )  
  ALTER TABLE Config ADD BaudRate Tinyint NOT NULL  DEFAULT (7) 
  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'Port','IsRowGuidCol')is  null )  
  ALTER TABLE Config ADD Port varchar (50)   DEFAULT ('COM1') 

  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'FlowControl','IsRowGuidCol')is  null )  
  ALTER TABLE Config ADD FlowControl Tinyint NOT NULL  DEFAULT (2) 

  if ( COLUMNPROPERTY( OBJECT_ID('Config'),'XonXoffIn','IsRowGuidCol')is  null )  
  ALTER TABLE Config ADD XonXoffIn Tinyint NOT NULL  DEFAULT (1) 

if ( COLUMNPROPERTY( OBJECT_ID('Config'),'XonXoffOut','IsRowGuidCol')is  null )  
  ALTER TABLE Config ADD XonXoffOut Tinyint NOT NULL  DEFAULT (1) 

if ( COLUMNPROPERTY( OBJECT_ID('Config'),'PackSize','IsRowGuidCol')is  null )  
  ALTER TABLE Config ADD PackSize Tinyint NOT NULL  DEFAULT (20) 

IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
 if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ReciptIDEventKind','IsRowGuidCol')is  null )  
ALTER TABLE ReciptTypes ADD ReciptIDEventKind Tinyint NOT NULL  DEFAULT (0) 



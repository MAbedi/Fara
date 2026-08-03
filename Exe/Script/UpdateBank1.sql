
SET NOCOUNT ON





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
 end
 if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'EstablishDate','IsRowGuidCol')is null )
 ALTER TABLE Customers ADD EstablishDate char(10)
 
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
 CONSTRAINT [FK_CustomersMasir_Customers] FOREIGN KEY ([PersonID1])REFERENCES [Customers] ([CustID]) ON UPDATE CASCADE,
 CONSTRAINT [FK_CustomersMasir_AddressInMasir] FOREIGN KEY ([MasirID])REFERENCES [AddressInMasir] ([MasirID])
 ) ON [PRIMARY]
 CREATE TABLE [DeficitsCorrelation] ([DeficitID] [smallint] NOT NULL,[Kind] int NOT NULL,
 [CodeFrom] Bigint NOT NULL,[CodeTo] Bigint NOT NULL,
 CONSTRAINT [PK_DeficitsCorrelation] PRIMARY KEY CLUSTERED ([DeficitID],[Kind],[CodeFrom]) ON [PRIMARY] ,
 CONSTRAINT [FK_DeficitsCorrelation_Deficits] FOREIGN KEY ([DeficitID])REFERENCES [Deficits] ([DeficitID]) ON UPDATE
 CASCADE
 ) ON [PRIMARY]
 --INSERT INTO DeficitsCorrelation
 --(DeficitID, CodeFrom, CodeTo, Kind)
 --SELECT DeficitID, c_StuffCode, c_StuffCode, 1
 --FROM StuffsDeficitsRange
 end



if ( COLUMNPROPERTY( OBJECT_ID('CustomersManag'),'LegalReal','IsRowGuidCol')is null )
 ALTER TABLE CustomersManag ADD LegalReal Tinyint NOT NULL DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('CustomersManag'),'NationalID','IsRowGuidCol')is null )
 ALTER TABLE CustomersManag ADD NationalID varchar(12) 

if ( COLUMNPROPERTY( OBJECT_ID('CustomersManag'),'OfShares','IsRowGuidCol')is null )
 ALTER TABLE CustomersManag ADD OfShares float 

if ( COLUMNPROPERTY( OBJECT_ID('SellsMethods'),'VajhTypes','IsRowGuidCol')is null )
 ALTER TABLE SellsMethods ADD VajhTypes  varchar(20)  NOT NULL CONSTRAINT DF_SellsMethods_VajhTypes  DEFAULT ('1;2;3') 

if ( COLUMNPROPERTY( OBJECT_ID('SellsMethods'),'SellAmount','IsRowGuidCol')is null )
 ALTER TABLE SellsMethods ADD SellAmount  float

 

 
 
--------------DeficitsCorrelation Bigint-------------DeficitsCorrelation Bigint---------------------------------------
--------------DeficitsCorrelation Bigint-------------DeficitsCorrelation Bigint---------------------------------------

IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
        WHERE        (TABLE_NAME = N'DeficitsCorrelation') AND (COLUMN_NAME = N'CodeFrom') AND (DATA_TYPE = N'Bigint'))
begin
IF EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_DeficitsCorrelation' AND type = 'K')
 ALTER TABLE DeficitsCorrelation DROP CONSTRAINT PK_DeficitsCorrelation 
 ALTER TABLE DeficitsCorrelation ALTER COLUMN CodeFrom Bigint NOT NULL
 ALTER TABLE DeficitsCorrelation ALTER column CodeTo Bigint
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_DeficitsCorrelation' AND type = 'K')
 ALTER TABLE DeficitsCorrelation ADD CONSTRAINT PK_DeficitsCorrelation PRIMARY KEY CLUSTERED (DeficitID,Kind,CodeFrom) ON [PRIMARY]

--------------DeficitsCorrelation Bigint-------------DeficitsCorrelation Bigint---------------------------------------
--------------DeficitsCorrelation Bigint-------------DeficitsCorrelation Bigint---------------------------------------
 

if not exists (SELECT CustID FROM Customers WHERE (CustID = 0)) 
INSERT INTO Customers (CustID, CustName, ModifyDate, CustomerGrpID) 
 SELECT 0, '0', GETDATE(), (SELECT MIN(CustomerGrpID) FROM CustomersGroup)


if ( COLUMNPROPERTY( OBJECT_ID('RptChecks'),'LeftNationalID1','IsRowGuidCol')is  null ) 
 ALTER TABLE RptChecks ADD LeftNationalID1 Float NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('RptChecks'),'TopNationalID1','IsRowGuidCol')is  null ) 
 ALTER TABLE RptChecks ADD TopNationalID1 Float NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('RptChecks'),'WidthNationalID1','IsRowGuidCol')is  null ) 
 ALTER TABLE RptChecks ADD WidthNationalID1 Float NOT NULL  DEFAULT (0) 


 if ( COLUMNPROPERTY( OBJECT_ID('RptChecks'),'LeftNationalID2','IsRowGuidCol')is  null ) 
 ALTER TABLE RptChecks ADD LeftNationalID2 Float NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('RptChecks'),'TopNationalID2','IsRowGuidCol')is  null ) 
 ALTER TABLE RptChecks ADD TopNationalID2 Float NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('RptChecks'),'WidthNationalID2','IsRowGuidCol')is  null ) 
 ALTER TABLE RptChecks ADD WidthNationalID2 Float NOT NULL  DEFAULT (0) 


 if ( COLUMNPROPERTY( OBJECT_ID('RptChecks'),'LeftValueNumBox','IsRowGuidCol')is  null ) 
 ALTER TABLE RptChecks ADD LeftValueNumBox Float NOT NULL  DEFAULT (0) 
 
  if ( COLUMNPROPERTY( OBJECT_ID('RptChecks'),'TopValueNumBox','IsRowGuidCol')is  null ) 
 ALTER TABLE RptChecks ADD TopValueNumBox Float NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('RptChecks'),'WidthValueNumBox','IsRowGuidCol')is  null ) 
 ALTER TABLE RptChecks ADD WidthValueNumBox Float NOT NULL  DEFAULT (0) 

 

  if ( COLUMNPROPERTY( OBJECT_ID('RptChecks'),'LeftCheckDateBox','IsRowGuidCol')is  null ) 
 ALTER TABLE RptChecks ADD LeftCheckDateBox Float NOT NULL  DEFAULT (0) 
 
  if ( COLUMNPROPERTY( OBJECT_ID('RptChecks'),'TopCheckDateBox','IsRowGuidCol')is  null ) 
 ALTER TABLE RptChecks ADD TopCheckDateBox Float NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('RptChecks'),'WidthCheckDateBox','IsRowGuidCol')is  null ) 
 ALTER TABLE RptChecks ADD WidthCheckDateBox Float NOT NULL  DEFAULT (0) 

 
 if ( COLUMNPROPERTY( OBJECT_ID('RptChecks'),'LeftLineCorrosion','IsRowGuidCol')is  null ) 
 ALTER TABLE RptChecks ADD LeftLineCorrosion Float NOT NULL  DEFAULT (0) 
 
  if ( COLUMNPROPERTY( OBJECT_ID('RptChecks'),'TopLineCorrosion','IsRowGuidCol')is  null ) 
 ALTER TABLE RptChecks ADD TopLineCorrosion Float NOT NULL  DEFAULT (0) 

  if ( COLUMNPROPERTY( OBJECT_ID('RptChecks'),'WidthLineCorrosion','IsRowGuidCol')is  null ) 
 ALTER TABLE RptChecks ADD WidthLineCorrosion Float NOT NULL  DEFAULT (0) 


 --if ( COLUMNPROPERTY( OBJECT_ID('RptChecks'),'LeftHunterCode','IsRowGuidCol')is  null ) 
 --ALTER TABLE RptChecks ADD LeftHunterCode Float NOT NULL  DEFAULT (0) 
 
 -- if ( COLUMNPROPERTY( OBJECT_ID('RptChecks'),'TopHunterCode','IsRowGuidCol')is  null ) 
 --ALTER TABLE RptChecks ADD TopHunterCode Float NOT NULL  DEFAULT (0) 

 -- if ( COLUMNPROPERTY( OBJECT_ID('RptChecks'),'WidthHunterCode','IsRowGuidCol')is  null ) 
 --ALTER TABLE RptChecks ADD WidthHunterCode Float NOT NULL  DEFAULT (0) 
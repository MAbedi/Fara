set nocount on
 -----------------------------------------------------------C R E A T E #13#10+
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_PurchaseEffect' AND type = 'K')
  ALTER TABLE PurchaseEffect ADD CONSTRAINT PK_PurchaseEffect PRIMARY KEY CLUSTERED (EffectID) ON [PRIMARY]

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptPurchaseEffect_PurchaseEffect' AND type = 'F')
ALTER TABLE ReciptPurchaseEffect WITH NOCHECK ADD CONSTRAINT FK_ReciptPurchaseEffect_PurchaseEffect FOREIGN
 KEY(EffectID)REFERENCES PurchaseEffect (EffectID)ON UPDATE CASCADE

if not ( COLUMNPROPERTY( OBJECT_ID('Customers'),'InsertAutoEffectID','IsRowGuidCol')is  null )  
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Customers_PurchaseEffect' AND type = 'F')
 ALTER TABLE Customers  WITH CHECK ADD  CONSTRAINT FK_Customers_PurchaseEffect FOREIGN KEY(InsertAutoEffectID) 
 REFERENCES PurchaseEffect (EffectID) 

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Customers_PurchaseEffect2' AND type = 'F')
 if not( COLUMNPROPERTY( OBJECT_ID('Customers'),'EffectID','IsRowGuidCol')is  null )
 ALTER TABLE Customers  WITH CHECK ADD  CONSTRAINT FK_Customers_PurchaseEffect2 FOREIGN KEY(EffectID) 
 REFERENCES PurchaseEffect (EffectID) 

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_StuffCoding' AND type = 'K')
 ALTER TABLE dbo.StuffCoding ADD CONSTRAINT PK_StuffCoding PRIMARY KEY CLUSTERED (c_StuffCode) ON [PRIMARY]

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_ExcelImport' AND type = 'K')
 ALTER TABLE dbo.ExcelImport ADD CONSTRAINT PK_ExcelImport PRIMARY KEY CLUSTERED
 (CellCode,StoreID,StuffCode,ReciptType) ON [PRIMARY]

--IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_StuffsDeficitsRange' AND type = 'K')
-- ALTER TABLE dbo.StuffsDeficitsRange ADD CONSTRAINT PK_StuffsDeficitsRange PRIMARY KEY CLUSTERED
-- (c_StuffCode,DeficitID) ON [PRIMARY]

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_StoreStuffs' AND type = 'K')
 ALTER TABLE dbo.StoreStuffs ADD CONSTRAINT PK_StoreStuffs PRIMARY KEY CLUSTERED(c_StuffCode,n_StoreID) ON
 [PRIMARY]

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_StuffCodingAid' AND type = 'K')
 ALTER TABLE dbo.StuffCodingAid ADD CONSTRAINT PK_StuffCodingAid PRIMARY KEY CLUSTERED
 (LookUpDesc,c_StuffCode,LookupID) ON [PRIMARY]

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_CountingItems_StuffCoding' AND type = 'F')
ALTER TABLE dbo.CountingItems WITH NOCHECK ADD CONSTRAINT
 FK_CountingItems_StuffCoding FOREIGN KEY(StuffCode) REFERENCES dbo.StuffCoding	(c_StuffCode)
 ON UPDATE CASCADe

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_StoreStuffs_StuffCoding' AND type = 'F')
 ALTER TABLE dbo.StoreStuffs WITH NOCHECK ADD CONSTRAINT
 FK_StoreStuffs_StuffCoding FOREIGN KEY	(c_StuffCode) REFERENCES dbo.StuffCoding(c_StuffCode)
 ON UPDATE CASCADe	 ON DELETE CASCADe

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Tozins_StuffCoding' AND type = 'F')
 ALTER TABLE dbo.Tozin WITH NOCHECK ADD CONSTRAINT
 FK_Tozins_StuffCoding FOREIGN KEY	(StuffCode) REFERENCES dbo.StuffCoding	(c_StuffCode)
 ON UPDATE CASCAdE

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptsRegulationItems_StuffCoding' AND type = 'F')
 ALTER TABLE dbo.ReciptsRegulationItems WITH NOCHECK ADD CONSTRAINT
 FK_ReciptsRegulationItems_StuffCoding FOREIGN KEY(StuffCode) REFERENCES dbo.StuffCoding	(c_StuffCode) ON
 UPDATE CASCAdE

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_QuotaItems_StuffCoding' AND type = 'F')
 ALTER TABLE dbo.QuotaItems WITH NOCHECK ADD CONSTRAINT
 FK_QuotaItems_StuffCoding FOREIGN KEY	(StuffCode) REFERENCES dbo.StuffCoding	(c_StuffCode)
 ON UPDATE CASCaDE


IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptItems_StuffCoding' AND type = 'F')
 ALTER TABLE dbo.ReciptItems WITH NOCHECK ADD CONSTRAINT
 FK_ReciptItems_StuffCoding FOREIGN KEY	(StuffCode) REFERENCES dbo.StuffCoding	(c_StuffCode)
 ON UPDATE CASCaDE

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Agreementss_StuffCoding' AND type = 'F')
 ALTER TABLE dbo.Agreements WITH NOCHECK ADD CONSTRAINT
 FK_Agreementss_StuffCoding FOREIGN KEY	(StuffCode) REFERENCES dbo.StuffCoding	(c_StuffCode)
 ON UPDATE CAScADE


IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ExcelImport_StuffCoding' AND type = 'F')
 ALTER TABLE dbo.ExcelImport WITH NOCHECK ADD CONSTRAINT
 FK_ExcelImport_StuffCoding FOREIGN KEY	(StuffCode) REFERENCES dbo.StuffCoding	(c_StuffCode)
 ON UPDATE CAScADE

-- IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_StuffsDeficitsRange_StuffCoding' AND type = 'F')
--ALTER TABLE dbo.StuffsDeficitsRange WITH NOCHECK ADD CONSTRAINT
-- FK_StuffsDeficitsRange_StuffCoding FOREIGN KEY(c_StuffCode) REFERENCES dbo.StuffCoding(c_StuffCode)
-- ON UPDATE CAsCADE ON DELETE CAsCADE

--IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_StuffsDeficitsRange_Deficits' AND type = 'F')
-- ALTER TABLE dbo.StuffsDeficitsRange WITH NOCHECK ADD CONSTRAINT
-- FK_StuffsDeficitsRange_Deficits FOREIGN KEY(DeficitID) REFERENCES dbo.Deficits	(DeficitID)
-- ON UPDATE CASCaDE ON DELETE CASCaDE


IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_StuffCodingAid_StuffCoding' AND type = 'F')
ALTER TABLE dbo.StuffCodingAid WITH NOCHECK ADD CONSTRAINT
 FK_StuffCodingAid_StuffCoding FOREIGN KEY(c_StuffCode) REFERENCES dbo.StuffCoding(c_StuffCode)
 ON UPDATE CAsCADE ON DELETE CAsCADE

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Manifesto_StuffCoding' AND type = 'F')
 ALTER TABLE dbo.ManifestoItems WITH NOCHECK ADD CONSTRAINT
 FK_Manifesto_StuffCoding FOREIGN KEY(StuffCode) REFERENCES dbo.StuffCoding	(c_StuffCode)
 ON UPDATE CaSCADE

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_TransForms_StuffCoding' AND type = 'F')
 ALTER TABLE dbo.TransForms WITH NOCHECK ADD CONSTRAINT
 FK_TransForms_StuffCoding FOREIGN KEY	(StuffCode) REFERENCES dbo.StuffCoding	(c_StuffCode)

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_TransFormItems_StuffCoding' AND type = 'F')
 ALTER TABLE dbo.TransFormItems WITH NOCHECK ADD CONSTRAINT
 FK_TransFormItems_StuffCoding FOREIGN KEY(StuffCode) REFERENCES dbo.StuffCoding	(c_StuffCode)
 ON UPDATE CASCADe

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_CountingItems_Stores' AND type = 'F')
 ALTER TABLE dbo.CountingItems WITH NOCHECK ADD CONSTRAINT
 FK_CountingItems_Stores FOREIGN KEY	(StoreID) REFERENCES dbo.Stores	(n_StoreID)
 ON UPDATE CASCADe


IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_StoreStuffs_Stores' AND type = 'F')
 ALTER TABLE dbo.StoreStuffs WITH NOCHECK ADD CONSTRAINT
 FK_StoreStuffs_Stores FOREIGN KEY	(n_StoreID) REFERENCES dbo.Stores(n_StoreID)
 ON UPDATE cASCADE	ON DELETE caSCADE
 
 if ( COLUMNPROPERTY( OBJECT_ID('PurchaseEffect'),'StuffCode','IsRowGuidCol')is not null )
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PurchaseEffect_StuffCoding' AND type = 'F')
 ALTER TABLE PurchaseEffect WITH NOCHECK ADD CONSTRAINT FK_PurchaseEffect_StuffCoding FOREIGN KEY([StuffCode])
 REFERENCES StuffCoding (c_StuffCode)
 
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ScheduleWorksItems_StuffCoding' AND type = 'F')
 ALTER TABLE ScheduleWorksItems WITH noCHECK ADD CONSTRAINT FK_ScheduleWorksItems_StuffCoding FOREIGN KEY
 (ProcStuffCoding)
 REFERENCES StuffCoding (c_StuffCode)ON UPDATE CASCADE
 
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ScheduleWorksItems_Customers' AND type = 'F')
 ALTER TABLE ScheduleWorksItems WITH NOCHECK ADD CONSTRAINT FK_ScheduleWorksItems_Customers FOREIGN KEY
 (OrderId)
 REFERENCES Customers (CustID)ON UPDATE CASCADE
 
 
 DECLARE @S SYSNAME
SET @S=''

DECLARE @SQL NVARCHAR(500)
SET @SQL=''
WHILE @S is not NULL
BEGIN
	SELECT @S=NAME FROM sysobjects WHERE NAME  like'DF%ScheduleWo%ProcStuf%'
	IF @S<>'' or @S<>NULL
	BEGIN
		SET @SQL='ALTER TABLE ScheduleWorksItems DROP CONSTRAINT '+@S
		exec(@SQL)
        SET @S=''
	END
	ELSE 
	SET	@S=NULL
END
 ALTER TABLE ScheduleWorksItems ADD CONSTRAINT DF_ScheduleWorksItems_ProcStuffCoding DEFAULT (0) FOR
 ProcStuffCoding
 
 
 IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptItems_StuffCoding' AND type = 'F')
ALTER TABLE ReciptItems  WITH CHECK ADD  CONSTRAINT FK_ReciptItems_StuffCoding FOREIGN KEY(StuffCode)
REFERENCES StuffCoding (c_StuffCode) ON UPDATE CASCADE
 
 
 
 

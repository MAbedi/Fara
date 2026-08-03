set nocount on

if  exists (select * from sysindexes WHERE     (name = N'IX_ReciptItems_StuffCode'))
DROP INDEX ReciptItems.IX_ReciptItems_StuffCode 

if  exists (select * from sysindexes WHERE     (name = N'IX_ReciptItems_RSYS'))
DROP INDEX ReciptItems.IX_ReciptItems_RSYS 


 -----------------------------------------------------------A L T E R TO BIGINT #13#10+
IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE        (TABLE_NAME = N'StuffCoding') AND (COLUMN_NAME = N'c_StuffCode') AND (DATA_TYPE = N'bigint')
)
begin

 ALTER TABLE StuffCoding    	ALTER COLUMN c_StuffCode BIGINT NOT NULL
 ALTER TABLE StuffGroups     	ALTER COLUMN StartCode   BIGINT 
 ALTER TABLE StuffGroups	    ALTER COLUMN FinishCode  BIGINT
 ALTER TABLE StuffCodingSpecial	ALTER COLUMN StuffCode   BIGINT NOT NULL
 ALTER TABLE dbo.TransForms	    ALTER COLUMN StuffCode   BIGINT
 ALTER TABLE dbo.TransFormItems ALTER COLUMN StuffCode   BIGINT
 ALTER TABLE dbo.ManifestoItems	ALTER COLUMN StuffCode   BIGINT
 ALTER TABLE dbo.StuffCodingAid	ALTER COLUMN c_StuffCode BIGINT NOT NULL

 --ALTER TABLE dbo.StuffsDeficitsRange ALTER COLUMN c_StuffCode BIGINT NOT NULL

 ALTER TABLE dbo.Agreements	ALTER COLUMN StuffCode BIGINT
 ALTER TABLE dbo.ReciptItems	ALTER COLUMN StuffCode BIGINT NOT NULL
 ALTER TABLE dbo.QuotaItems	ALTER COLUMN StuffCode BIGINT
 ALTER TABLE dbo.ReciptsRegulationItems	ALTER COLUMN StuffCode BIGINT
 ALTER TABLE dbo.Tozin	ALTER COLUMN StuffCode BIGINT NOT NULL
 ALTER TABLE dbo.StoreStuffs	ALTER COLUMN c_StuffCode BIGINT NOT NULL
 ALTER TABLE dbo.CountingItems	ALTER COLUMN StuffCode BIGINT NOT NULL
 ALTER TABLE dbo.ExcelImport ALTER COLUMN StuffCode BIGINT NOT NULL
 ALTER TABLE dbo.CountingItems ALTER COLUMN StuffCode BIGINT

end
 
 DECLARE @S SYSNAME
SET @S=''

DECLARE @SQL NVARCHAR(500)
SET @SQL=''
WHILE @S is not NULL
BEGIN                          
	SELECT @S=NAME FROM sysobjects WHERE NAME  like'DF__%PurchaseE%__%'  and NAME<>'DF_ReciptPurchaseEffect_IsPrint' and NAME<>'DF_ReciptPurchaseEffect_PurchaseID'
	IF @S<>'' or @S<>NULL
	BEGIN
		SET @SQL='ALTER TABLE PurchaseEffect DROP CONSTRAINT '+@S
		exec(@SQL)
        SET @S=''
	END
	ELSE 
	SET	@S=NULL
END
 
 if ( COLUMNPROPERTY( OBJECT_ID('PurchaseEffect'),'StuffCode','IsRowGuidCol')is not null )
 ALTER TABLE PurchaseEffect	ALTER COLUMN StuffCode bigint

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_PurchaseEffect_Coefficient' AND type = 'D')
ALTER TABLE PurchaseEffect ADD  CONSTRAINT DF_PurchaseEffect_Coefficient  DEFAULT (0) FOR Coefficient


IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_PurchaseEffect_AmountRate' AND type = 'D')
ALTER TABLE PurchaseEffect ADD  CONSTRAINT DF_PurchaseEffect_AmountRate  DEFAULT (0) FOR AmountRate


if ( COLUMNPROPERTY( OBJECT_ID('PurchaseEffect'),'StuffCode','IsRowGuidCol')is not null )
 IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_PurchaseEffect_StuffCode' AND type = 'D')
ALTER TABLE PurchaseEffect ADD  CONSTRAINT DF_PurchaseEffect_StuffCode DEFAULT (0) FOR StuffCode


IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE        (TABLE_NAME = N'StuffGroups') AND (COLUMN_NAME = N'StartCode') AND (DATA_TYPE = N'bigint')
)
begin

 ALTER TABLE StuffGroups	ALTER COLUMN StartCode bigint
 ALTER TABLE StuffGroups	ALTER COLUMN FinishCode bigint
 ALTER TABLE ScheduleWorksItems ALTER COLUMN ProcStuffCoding BIGINT
 end

-------------GroupID int-------------GroupID int-------------GroupID int-------------GroupID int-------------GroupID int
-------------GroupID int-------------GroupID int-------------GroupID int-------------GroupID int-------------GroupID int

IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE        (TABLE_NAME = N'StuffGroups') AND (COLUMN_NAME = N'GroupID') AND (DATA_TYPE = N'int')
)
begin

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_StuffCoding_StuffGroups' AND type = 'F')
 ALTER TABLE StuffCoding	DROP CONSTRAINT FK_StuffCoding_StuffGroups
  
IF EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_StuffGroups' AND type = 'K')
 ALTER TABLE StuffGroups DROP CONSTRAINT PK_StuffGroups 
 ALTER TABLE StuffGroups ALTER COLUMN GroupID int NOT NULL
 ALTER TABLE StuffCoding ALTER COLUMN GroupID int NOT NULL
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_StuffGroups' AND type = 'K')
 ALTER TABLE StuffGroups ADD CONSTRAINT PK_StuffGroups PRIMARY KEY CLUSTERED (GroupID) ON [PRIMARY]

 IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_StuffCoding_StuffGroups' AND type = 'F')
ALTER TABLE StuffCoding WITH NOCHECK ADD CONSTRAINT
 FK_StuffCoding_StuffGroups FOREIGN KEY(GroupID) REFERENCES StuffGroups	(GroupID)
 ON UPDATE CASCADe

-------------GroupID int-------------GroupID int-------------GroupID int-------------GroupID int-------------GroupID int
-------------GroupID int-------------GroupID int-------------GroupID int-------------GroupID int-------------GroupID int
 
-- if not exists (select * from sysindexes WHERE     (name = N'IX_ReciptItems_StuffCode'))
--CREATE NONCLUSTERED INDEX IX_ReciptItems_StuffCode ON dbo.ReciptItems
--	(	StuffCode	) ON [PRIMARY]

IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE        (TABLE_NAME = N'CheckBook') AND (COLUMN_NAME = N'SerialFrom') AND (DATA_TYPE = N'bigint'))
begin
 ALTER TABLE CheckBook	ALTER COLUMN SerialFrom bigint
 ALTER TABLE CheckBook	ALTER COLUMN SerialTo bigint

end

IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE        (TABLE_NAME = N'ReciptItems') AND (COLUMN_NAME = N'ControlCode') AND (DATA_TYPE = N'bigint'))
begin
IF EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_ReciptItems_ControlCode' AND type = 'D')
 ALTER TABLE ReciptItems DROP CONSTRAINT DF_ReciptItems_ControlCode

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_MakeDoc_ReciptItems1'))
DROP INDEX IX_MakeDoc_ReciptItems1 ON ReciptItems

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_ReciptItems_StuffCode'))
DROP INDEX IX_ReciptItems_StuffCode ON ReciptItems

IF   EXISTS (select * from sysindexes WHERE     (name = N'idx_reciptitems2'))
DROP INDEX idx_reciptitems2 ON ReciptItems
 
 ALTER TABLE ReciptItems	ALTER COLUMN ControlCode bigint


 ALTER TABLE ReciptItems ADD CONSTRAINT DF_ReciptItems_ControlCode DEFAULT (0) FOR ControlCode
 
 end




 IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE        (TABLE_NAME = N'CountingItems') AND (COLUMN_NAME = N'ControlCode') AND (DATA_TYPE = N'bigint'))
begin

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_Counting_ControlCode' AND type = 'D')
 ALTER TABLE CountingItems DROP CONSTRAINT DF_Counting_ControlCode
 
 ALTER TABLE CountingItems	ALTER COLUMN ControlCode bigint

 ALTER TABLE CountingItems ADD CONSTRAINT DF_Counting_ControlCode DEFAULT (0) FOR ControlCode
 
 end




 IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE        (TABLE_NAME = N'TransForms') AND (COLUMN_NAME = N'ControlCode') AND (DATA_TYPE = N'bigint'))
begin
 --DECLARE @S SYSNAME
SET @S=''
--DECLARE @SQL NVARCHAR(500)
SET @SQL=''
WHILE @S is not NULL
BEGIN                          
	SELECT @S=NAME FROM sysobjects WHERE NAME  like'DF__%TransForm%__Contr%'  and NAME<>'DF_TransForms_ControlCode' 
	IF @S<>'' or @S<>NULL
	BEGIN
		SET @SQL='ALTER TABLE TransForms DROP CONSTRAINT '+@S
		exec(@SQL)
        SET @S=''
	END
	ELSE 
	SET	@S=NULL
END


 
 ALTER TABLE TransForms	ALTER COLUMN ControlCode bigint

 ALTER TABLE TransForms ADD CONSTRAINT DF_TransForms_ControlCode DEFAULT (0) FOR ControlCode
 
 end










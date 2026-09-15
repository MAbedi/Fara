----   UpdateBank 32 Acc Active    1404/05/01   
SET NOCOUNT ON

if ( COLUMNPROPERTY( OBJECT_ID('Acc.Documents'),'CurrencyDebit','IsRowGuidCol')is  null )
ALTER TABLE Acc.Documents ADD CurrencyDebit Decimal(38,18) NOT NULL CONSTRAINT DF_Documents_CurrencyDebit DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('Acc.Documents'),'CurrencyCredit','IsRowGuidCol')is  null )
begin
ALTER TABLE Acc.Documents ADD CurrencyCredit Decimal(38,18) NOT NULL CONSTRAINT DF_Documents_CurrencyCredit DEFAULT (0) 
exec('
update acc.Documents set
CurrencyDebit  = case when Debt   > 0 then AidAmount else 0 end,
CurrencyCredit = case when Credit > 0 then AidAmount else 0 end
where AidAmount<>0
')
exec('update acc.Documents set AidAmount  = 0 where CurrencyType<>0 ')
end

if ( COLUMNPROPERTY( OBJECT_ID('Acc.Documents'),'CurrencyRate','IsRowGuidCol')is  null )
ALTER TABLE Acc.Documents ADD CurrencyRate Decimal(38,18) NOT NULL CONSTRAINT DF_Documents_CurrencyRate DEFAULT (1) 


IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE  (TABLE_NAME = N'Documents') AND ((COLUMN_NAME = N'CurrencyDebit')OR(COLUMN_NAME = N'CurrencyCredit')) AND (DATA_TYPE = N'decimal') AND (NUMERIC_PRECISION = 38))
begin

IF  EXISTS (SELECT 1 from sysobjects where name = 'DF_Documents_CurrencyDebit')
 ALTER TABLE Acc.Documents DROP CONSTRAINT DF_Documents_CurrencyDebit

IF  EXISTS (SELECT 1 from sysobjects where name = 'DF_Documents_CurrencyCredit')
 ALTER TABLE Acc.Documents DROP CONSTRAINT DF_Documents_CurrencyCredit

 IF  EXISTS (SELECT 1 from sysobjects where name = 'DF_Documents_CurrencyRate')
 ALTER TABLE Acc.Documents DROP CONSTRAINT DF_Documents_CurrencyRate


ALTER TABLE Acc.Documents ALTER COLUMN CurrencyDebit Decimal(38,18) NOT NULL 
ALTER TABLE Acc.Documents ALTER COLUMN CurrencyCredit Decimal(38,18) NOT NULL 
ALTER TABLE Acc.Documents ALTER COLUMN CurrencyRate Decimal(38,18) NOT NULL 

ALTER TABLE Acc.Documents ADD CONSTRAINT DF_Documents_CurrencyDebit DEFAULT 0 FOR CurrencyDebit
ALTER TABLE Acc.Documents ADD CONSTRAINT DF_Documents_CurrencyCredit DEFAULT 0 FOR CurrencyCredit
ALTER TABLE Acc.Documents ADD CONSTRAINT DF_Documents_CurrencyRate DEFAULT 1 FOR CurrencyRate


end

IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS 
WHERE  (TABLE_NAME = N'ACC.DocGroups') AND (COLUMN_NAME = N'DocTypeCode') AND (DATA_TYPE = N'tinyint') )
begin
IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_DocGroups_rptMonthDocuments'))
   DROP  INDEX IX_DocGroups_rptMonthDocuments ON ACC.DocGroups

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_DocGroups_CompanyCode_YearID'))
   DROP  INDEX IX_DocGroups_CompanyCode_YearID ON ACC.DocGroups

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_DocGroups_CY'))
   DROP  INDEX IX_DocGroups_CY ON ACC.DocGroups


   ALTER TABLE Acc.DocGroups ALTER COLUMN DocTypeCode int NOT NULL 
end

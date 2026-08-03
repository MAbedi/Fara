set nocount on
IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE        (TABLE_NAME = N'StuffCoding') AND (COLUMN_NAME = N'c_StuffCode') AND (DATA_TYPE = N'bigint')
)
begin
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
 --IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_StuffsDeficitsRange_Deficits' AND type = 'F')
 --ALTER TABLE dbo.StuffsDeficitsRange	DROP CONSTRAINT FK_StuffsDeficitsRange_Deficits
 --IF EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_StuffsDeficitsRange' AND type = 'K')
 --ALTER TABLE dbo.StuffsDeficitsRange	DROP CONSTRAINT PK_StuffsDeficitsRange


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
 
 --IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_TempProductions_StuffCoding' AND type = 'F')
 --ALTER TABLE TempProductions	DROP CONSTRAINT FK_TempProductions_StuffCoding
 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FunctionItems_StuffCoding' AND type = 'F')
 ALTER TABLE tsh.FunctionItems	DROP CONSTRAINT FK_FunctionItems_StuffCoding
 
 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Functions_StuffCoding' AND type = 'F')
ALTER TABLE tsh.Functions	DROP CONSTRAINT FK_Functions_StuffCoding
 
IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Functions_StuffCoding1' AND type = 'F')
ALTER TABLE tsh.Functions	DROP CONSTRAINT FK_Functions_StuffCoding1
  
IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Machinery_StuffCoding1' AND type = 'F')
ALTER TABLE Machin.Machinery	DROP CONSTRAINT FK_Machinery_StuffCoding1
 
IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Machinery_StuffCoding' AND type = 'F')
ALTER TABLE Machin.Machinery	DROP CONSTRAINT FK_Machinery_StuffCoding

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Functions_StuffCoding3' AND type = 'F')
ALTER TABLE tsh.Functions	DROP CONSTRAINT FK_Functions_StuffCoding3

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Functions_StuffCoding2' AND type = 'F')
ALTER TABLE tsh.Functions	DROP CONSTRAINT FK_Functions_StuffCoding2

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Maintenance_StuffCoding' AND type = 'F')
ALTER TABLE Machin.Maintenance	DROP CONSTRAINT FK_Maintenance_StuffCoding

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Delivery_StuffCoding' AND type = 'F')
ALTER TABLE Machin.Delivery	DROP CONSTRAINT FK_Delivery_StuffCoding

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_CustomersCapacity_StuffCoding' AND type = 'F')
ALTER TABLE CustomersCapacity	DROP CONSTRAINT FK_CustomersCapacity_StuffCoding

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FuelRationing_StuffCoding2' AND type = 'F')
ALTER TABLE Machin.FuelRationing	DROP CONSTRAINT FK_FuelRationing_StuffCoding2

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FuelRationing_StuffCoding1' AND type = 'F')
ALTER TABLE Machin.FuelRationing	DROP CONSTRAINT FK_FuelRationing_StuffCoding1

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_RunSchedules_StuffCoding' AND type = 'F')
ALTER TABLE Cnt.RunSchedules	DROP CONSTRAINT FK_RunSchedules_StuffCoding

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ContractOperations_StuffCoding' AND type = 'F')
ALTER TABLE Cnt.ContractOperations	DROP CONSTRAINT FK_ContractOperations_StuffCoding

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_MachineStop_StuffCoding' AND type = 'F')
ALTER TABLE Machin.MachineStop	DROP CONSTRAINT FK_MachineStop_StuffCoding


IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptItems_StuffCoding1' AND type = 'F')
ALTER TABLE ReciptItems	DROP CONSTRAINT FK_ReciptItems_StuffCoding1


 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_StuffCoding' AND type = 'K')
 ALTER TABLE dbo.StuffCoding	DROP CONSTRAINT PK_StuffCoding

declare @Se varchar(500)
declare @StuffCode bigint

--SELECT    @StuffCode= ReciptItems.StuffCode,@Se='ÏÑ ' +ReciptTypes.ReciptCaption +str(Recipts.ReciptNumber)+' ÓÇá '+STR(ReciptItems.YearID)
--FROM         ReciptItems INNER JOIN
--                      Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND ReciptItems.YearID = Recipts.YearID INNER JOIN
--                      ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType LEFT OUTER JOIN
--                      StuffCoding ON ReciptItems.StuffCode = StuffCoding.c_StuffCode
--WHERE     (StuffCoding.c_StuffCode IS NULL)                             

SELECT    @StuffCode= ReciptItems.StuffCode,@Se='ÏÑ ' +ReciptTypes.ReciptCaption +str(Recipts.ReciptNumber)+' ÓÇá '+STR(ReciptItems.YearID)
FROM            ReciptItems INNER JOIN
                         Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND ReciptItems.YearID = Recipts.YearID INNER JOIN
                         ReciptTypes1 as ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType
WHERE        (ReciptItems.StuffCode NOT IN
                             (SELECT        c_StuffCode
                                FROM            StuffCoding))


                           



set @Se='ßÇáÇ Èå ßÏ '+STR(@StuffCode)+@Se+'  ÊÚÑíÝ äÔÏå'
if @StuffCode>0
  raiserror(@Se,16,1)


 
 IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__PurchaseE__Stuff__3ADF759F]') AND type = 'D')
 ALTER TABLE [dbo].[PurchaseEffect] DROP CONSTRAINT [DF__PurchaseE__Stuff__3ADF759F]
 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Customers_PurchaseEffect' AND type = 'F')
 ALTER TABLE Customers	DROP CONSTRAINT FK_Customers_PurchaseEffect
 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Customers_PurchaseEffect2' AND type = 'F')
 ALTER TABLE Customers	DROP CONSTRAINT FK_Customers_PurchaseEffect2
 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptPurchaseEffect_PurchaseEffect' AND type = 'F')
 ALTER TABLE ReciptPurchaseEffect	DROP CONSTRAINT FK_ReciptPurchaseEffect_PurchaseEffect
 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_PurchaseEffect' AND type = 'K')
 ALTER TABLE PurchaseEffect	DROP CONSTRAINT PK_PurchaseEffect


end
SET NOCOUNT ON

DECLARE @TABLE_NAME VARCHAR(90) 
DECLARE @COLUMN_NAME VARCHAR(90)
DECLARE @DATA_TYPE VARCHAR(90) 
DECLARE @IS_NULLABLE VARCHAR(90) 
DECLARE @qry VARCHAR(max) 
DECLARE @Length int

 IF  EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_CLOCKDMP' AND type = 'K')
ALTER TABLE [Tsh].[ClockDmp] DROP CONSTRAINT [PK_CLOCKDMP]

DECLARE db_cursor CURSOR FOR 
SELECT TABLE_SCHEMA+'.'+ TABLE_NAME AS TABLE_NAME, COLUMN_NAME,DATA_TYPE,inf.CHARACTER_MAXIMUM_LENGTH,IS_NULLABLE FROM INFORMATION_SCHEMA.COLUMNS as inf
INNER JOIN SYSOBJECTS on inf.table_name = SYSOBJECTS.name
WHERE  ((COLUMN_NAME like  N'%date%')or(COLUMN_NAME='StartYear')or(COLUMN_NAME='EndYear')or(COLUMN_NAME='StartMaliYear')or(COLUMN_NAME='FinishMaliYear')) 
   AND (DATA_TYPE like  N'%char%')
 
 AND OBJECTPROPERTY(SYSOBJECTS.id, N'IsUserTable') = 1
 AND (inf.CHARACTER_MAXIMUM_LENGTH BETWEEN 8 AND 10)--10
 AND (inf.TABLE_SCHEMA<>'Acc')
 AND (inf.TABLE_SCHEMA<>'Assets')
  and   TABLE_NAME <> 'DesignForms22'  ---اصلا این شرط بیخودی هست یجا گیر بود زدیم

OPEN db_cursor  
FETCH NEXT FROM db_cursor INTO @TABLE_NAME , @COLUMN_NAME ,@DATA_TYPE,@Length,@IS_NULLABLE

WHILE @@FETCH_STATUS = 0  
BEGIN 
     SET @qry =''  
     if @Length=8
	 begin
       SET @qry = ' ALTER TABLE '+@TABLE_NAME+'	ALTER COLUMN '+@COLUMN_NAME +' '+@DATA_TYPE+'(10)' 
     if @IS_NULLABLE='NO'
	   SET @qry = @qry +' NOT NULL '

	 end
	  	 SET @qry = @qry +CHAR(13)  + '; DISABLE TRIGGER ALL ON  '+@TABLE_NAME +';'

	 SET @qry = @qry +CHAR(13)  +
	             ' UPDATE  '+@TABLE_NAME+' set  '+@COLUMN_NAME+' = CASE WHEN '+@COLUMN_NAME+'<''15/12/29'' THEN ''14''+'+@COLUMN_NAME+' ELSE ''13''+'+@COLUMN_NAME+' END
	               WHERE (len('+@COLUMN_NAME+')=8); '
	  	 SET @qry = @qry +CHAR(13)  + ' ENABLE TRIGGER ALL ON  '+@TABLE_NAME
      --print @qry
      exec(@qry)

      FETCH NEXT FROM db_cursor INTO @TABLE_NAME , @COLUMN_NAME ,@DATA_TYPE,@Length,@IS_NULLABLE
END 

  if not( COLUMNPROPERTY( OBJECT_ID('Deficits'),'StartDate','IsRowGuidCol')is  null ) 
  exec('Update Deficits SET StartDate = ''1300/00/00'' WHERE (StartDate = ''1400/00/00'')
Update Deficits SET EndDate   = ''1499/99/99'' WHERE ( EndDate  = ''1399/99/99'')')

CLOSE db_cursor  
DEALLOCATE db_cursor 

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_MaliYearUsers_MaliYear' AND type = 'F')
ALTER TABLE Util.MaliYearUsers DROP CONSTRAINT FK_MaliYearUsers_MaliYear --set  ON UPDATE CASCADE ON DELETE CASCADE


if  exists (select * from dbo.sysobjects where id = object_id(N'util.Analyze') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
----select *  From util.MaliYear
--if (select COUNT(DISTINCT LEN(YearID))  From util.MaliYear) = 1 
begin
  if  exists (select * from dbo.sysobjects where id = object_id(N'acc.DocGroups') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
  IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_DocGroups_MaliYear' AND type = 'F')
   ALTER TABLE acc.DocGroups DROP CONSTRAINT FK_DocGroups_MaliYear


IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptItems_MaliYear' AND type = 'F')
ALTER TABLE ReciptItems DROP CONSTRAINT FK_ReciptItems_MaliYear

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptItems_Recipts' AND type = 'F')
ALTER TABLE ReciptItems DROP CONSTRAINT FK_ReciptItems_Recipts

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptsRegulates_ReciptItems' AND type = 'F')
ALTER TABLE ReciptsRegulates DROP CONSTRAINT FK_ReciptsRegulates_ReciptItems --- add to up3

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptsDeficits_Recipts' AND type = 'F')
ALTER TABLE ReciptsDeficits DROP CONSTRAINT FK_ReciptsDeficits_Recipts  --- add to up3

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_RemainsEarly_MaliYear' AND type = 'F')
ALTER TABLE RemainsEarly DROP CONSTRAINT FK_RemainsEarly_MaliYear


IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FormItems_Customers' AND type = 'F')
ALTER TABLE FormItems DROP CONSTRAINT FK_FormItems_Customers

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Contracts_MaliYear' AND type = 'F')
ALTER TABLE Cnt.Contracts DROP CONSTRAINT FK_Contracts_MaliYear

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FormItems_Forms' AND type = 'F')
ALTER TABLE FormItems DROP CONSTRAINT FK_FormItems_Forms

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FormItems_MaliYear' AND type = 'F')
ALTER TABLE FormItems DROP CONSTRAINT FK_FormItems_MaliYear

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Forms_MaliYear' AND type = 'F')
ALTER TABLE Forms DROP CONSTRAINT FK_Forms_MaliYear

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Severable_FormItems' AND type = 'F')
ALTER TABLE Severable DROP CONSTRAINT FK_Severable_FormItems

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Agreementss_MaliYear' AND type = 'F')
ALTER TABLE Agreements DROP CONSTRAINT FK_Agreementss_MaliYear


IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Recipts_MaliYear' AND type = 'F')
ALTER TABLE Recipts DROP CONSTRAINT FK_Recipts_MaliYear

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Documents_DocGroups' AND type = 'F')
ALTER TABLE acc.Documents DROP CONSTRAINT FK_Documents_DocGroups

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptsPayments_Recipts' AND type = 'F')
ALTER TABLE ReciptsPayments DROP CONSTRAINT FK_ReciptsPayments_Recipts

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptPurchaseEffect_ReciptItems' AND type = 'F')
ALTER TABLE ReciptPurchaseEffect DROP CONSTRAINT FK_ReciptPurchaseEffect_ReciptItems

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Proforma_Recipts' AND type = 'F')
ALTER TABLE Proforma DROP CONSTRAINT FK_Proforma_Recipts

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Costs_Recipts' AND type = 'F')
ALTER TABLE Costs DROP CONSTRAINT FK_Costs_Recipts







--  if  exists (select * from dbo.sysobjects where id = object_id(N'acc.DocGroups') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
--     UPDATE  acc.DocGroups SET YearID=YearID+cast( 1300 as smallint) WHERE len(YearID)<4
--UPDATE  Recipts SET YearID=YearID+cast( 1300 as smallint) WHERE len(YearID)<4
--UPDATE  ReciptItems SET YearID=YearID+cast( 1300 as smallint) WHERE len(YearID)<4
--UPDATE  ReciptsRegulates SET YearID=YearID+cast( 1300 as smallint) WHERE len(YearID)<4
--UPDATE  util.MaliYear SET YearID=YearID+cast( 1300 as smallint) WHERE len(YearID)<4

UPDATE  util.MaliYear SET YearID=YearID+CAST( 1300 as smallint) WHERE LEN(YearID)<4

IF  EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_MaliYearUsers_MaliYear' AND type = 'F')
UPDATE  util.MaliYearUsers SET YearID=YearID+CAST( 1300 as smallint) WHERE LEN(YearID)<4

UPDATE  Forms SET YearID=YearID+CAST( 1300 as smallint) WHERE LEN(YearID)<4
UPDATE  FormItems SET YearID=YearID+CAST( 1300 as smallint) WHERE LEN(YearID)<4
--select distinct YearID from FormItems
--select distinct YearID from Forms


UPDATE  Recipts SET YearID=YearID+CAST( 1300 as smallint) WHERE LEN(YearID)<4
UPDATE  ReciptItems SET YearID=YearID+CAST( 1300 as smallint) WHERE LEN(YearID)<4
if  exists (select * from dbo.sysobjects where id = object_id(N'ReciptsPayments') and OBJECTPROPERTY(id,N'IsUserTable') = 1) 

UPDATE  ReciptsPayments SET YearID=YearID+CAST( 1300 as smallint) WHERE LEN(YearID)<4
--select distinct YearID from ReciptItems
--select distinct YearID from Recipts

DECLARE db_cursor CURSOR FOR 
SELECT TABLE_SCHEMA+'.'+ TABLE_NAME AS TABLE_NAME, COLUMN_NAME,DATA_TYPE,inf.CHARACTER_MAXIMUM_LENGTH,IS_NULLABLE FROM INFORMATION_SCHEMA.COLUMNS as inf
INNER JOIN SYSOBJECTS on inf.table_name = SYSOBJECTS.name
WHERE  ((COLUMN_NAME like  N'%YearID%'))  and xtype='U'  AND OBJECTPROPERTY(SYSOBJECTS.id, N'IsUserTable') = 1
and (COLUMN_NAME <>  N'UseUnitsYearID') and ( COLUMN_NAME <>  N'FilterYearIDActive')  and (TABLE_NAME<> N'MaliYear')
--order by len(TABLE_NAME)

OPEN db_cursor  
FETCH NEXT FROM db_cursor INTO @TABLE_NAME , @COLUMN_NAME ,@DATA_TYPE,@Length,@IS_NULLABLE

WHILE @@FETCH_STATUS = 0  
BEGIN 
     SET @qry =''  
	 SET @qry = @qry +CHAR(13)  +
         ' UPDATE  '+@TABLE_NAME+' SET  '+@COLUMN_NAME+' =  '+
		      @COLUMN_NAME+' + CAST( 1300 as Smallint) WHERE (ISNULL('+@COLUMN_NAME+','''') <> '''') AND  (LEN(ISNULL('+@COLUMN_NAME+',''''))<4) '				 
    -- print @qry
      exec(@qry)
      FETCH NEXT FROM db_cursor INTO @TABLE_NAME , @COLUMN_NAME ,@DATA_TYPE,@Length,@IS_NULLABLE
END 

CLOSE db_cursor  
DEALLOCATE db_cursor 






if  exists (select * from dbo.sysobjects where id = object_id(N'acc.DocGroups') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
   IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_DocGroups_MaliYear' AND type = 'F')
     ALTER TABLE acc.DocGroups WITH CHECK ADD CONSTRAINT FK_DocGroups_MaliYear 	FOREIGN KEY(YearID) REFERENCES util.MaliYear (YearID)
ALTER TABLE Recipts       WITH CHECK ADD CONSTRAINT FK_Recipts_MaliYear 	FOREIGN KEY(YearID) REFERENCES util.MaliYear (YearID)
ALTER TABLE ReciptItems   WITH CHECK ADD CONSTRAINT FK_ReciptItems_MaliYear 	FOREIGN KEY(YearID) REFERENCES util.MaliYear (YearID)
ALTER TABLE [dbo].[ReciptItems]  WITH NOCHECK ADD  CONSTRAINT [FK_ReciptItems_Recipts] FOREIGN KEY([ReciptID], [ServerID], [YearID])
REFERENCES [dbo].[Recipts] ([ReciptID], [ServerID], [YearID]) ON UPDATE CASCADE ON DELETE CASCADE




end

if  exists (select * from dbo.sysobjects where id = object_id(N'Proforma') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
IF Not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Proforma_Recipts' AND type = 'F')
ALTER TABLE Proforma  WITH CHECK ADD   CONSTRAINT FK_Proforma_Recipts FOREIGN KEY(ReciptID, ServerID, YearID)
          REFERENCES Recipts (ReciptID, ServerID, YearID) 




IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_MaliYearUsers_MaliYear' AND type = 'F')
ALTER TABLE util.MaliYearUsers  WITH CHECK ADD CONSTRAINT FK_MaliYearUsers_MaliYear FOREIGN KEY(YearID) REFERENCES util.MaliYear (YearID)
 ON UPDATE CASCADE ON DELETE CASCADE

--is in up19 IF Not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Contracts_MaliYear' AND type = 'F')
--ALTER TABLE Cnt.Contracts WITH CHECK ADD CONSTRAINT FK_Contracts_MaliYear FOREIGN KEY(YearID) REFERENCES util.MaliYear (YearID)

--INSERT INTO Forms
--                         (FormID, FormType, InfoID, InfoName_L1)
--SELECT DISTINCT FormItems.FormID FormInfoID ,12 as FormType , FormItems.FormID InfoID ,'وضعیت پرسنل حذف شده استفاده شده در معرفی پرسنل' as InfoName_L1
--FROM            FormItems LEFT OUTER JOIN
--                         Forms ON FormItems.FormID = Forms.FormID and FormItems.ServerID = Forms.ServerID and FormItems.YearID = Forms.YearID
--WHERE        (Forms.FormID IS NULL)




BEGIN TRY  
IF Not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FormItems_Forms' AND type = 'F')
ALTER TABLE dbo.FormItems  WITH CHECK ADD  CONSTRAINT FK_FormItems_Forms FOREIGN KEY(FormID, ServerID, YearID)
REFERENCES dbo.Forms (FormID, ServerID, YearID) ON UPDATE CASCADE ON DELETE CASCADE
END TRY  
BEGIN CATCH  
IF  EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptOnFormsRange_Forms' AND type = 'F')
 ALTER TABLE ReciptOnFormsRange drop CONSTRAINT FK_ReciptOnFormsRange_Forms 

 IF  EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_Forms' AND type = 'K')
 ALTER TABLE Forms drop  CONSTRAINT PK_Forms 


IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_Forms' AND type = 'K')
 ALTER TABLE Forms ADD  CONSTRAINT PK_Forms PRIMARY KEY CLUSTERED (FormID,ServerID,YearID) ON [PRIMARY]
END CATCH; 



if  exists (select * from dbo.sysobjects where id = object_id(N'util.MaliYear') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FormItems_MaliYear' AND type = 'F')
ALTER TABLE FormItems WITH CHECK ADD CONSTRAINT FK_FormItems_MaliYear FOREIGN KEY(YearID) REFERENCES util.MaliYear (YearID)


if  exists (select * from dbo.sysobjects where id = object_id(N'util.MaliYear') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Forms_MaliYear' AND type = 'F')
ALTER TABLE Forms WITH CHECK ADD CONSTRAINT FK_Forms_MaliYear FOREIGN KEY(YearID) REFERENCES util.MaliYear (YearID)

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Severable_FormItems' AND type = 'F')
ALTER TABLE dbo.Severable  WITH CHECK ADD  CONSTRAINT FK_Severable_FormItems FOREIGN KEY(FormItemID, FormID, ServerID, YearID)
REFERENCES dbo.FormItems (FormItemID, FormID, ServerID, YearID) ON UPDATE CASCADE ON DELETE CASCADE

if  exists (select * from dbo.sysobjects where id = object_id(N'Agreements') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Agreementss_MaliYear' AND type = 'F')
ALTER TABLE Agreements WITH CHECK ADD CONSTRAINT FK_Agreementss_MaliYear FOREIGN KEY(YearID) REFERENCES util.MaliYear (YearID)ON UPDATE CASCADE 


if  exists (select * from dbo.sysobjects where id = object_id(N'util.MaliYear') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Recipts_MaliYear' AND type = 'F')
ALTER TABLE Recipts WITH CHECK ADD CONSTRAINT FK_Recipts_MaliYear FOREIGN KEY(YearID) REFERENCES util.MaliYear (YearID)

if  exists (select * from dbo.sysobjects where id = object_id(N'acc.Documents') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Documents_DocGroups' AND type = 'F')
ALTER TABLE Acc.Documents  WITH NOCHECK ADD  CONSTRAINT FK_Documents_DocGroups FOREIGN KEY(Serial ,YearID, CompanyCode )
REFERENCES Acc.DocGroups (Serial ,YearID, CompanyCode) ON UPDATE CASCADE ON DELETE CASCADE

if  exists (select * from dbo.sysobjects where id = object_id(N'ReciptsPayments') and OBJECTPROPERTY(id,N'IsUserTable') = 1) 
IF Not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptsPayments_Recipts' AND type = 'F')
ALTER TABLE dbo.ReciptsPayments  WITH CHECK ADD  CONSTRAINT FK_ReciptsPayments_Recipts FOREIGN KEY(ReciptID, ServerID, YearID)
REFERENCES dbo.Recipts (ReciptID, ServerID, YearID) ON UPDATE CASCADE ON DELETE CASCADE

--IF Not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptPurchaseEffect_ReciptItems' AND type = 'F')
--ALTER TABLE dbo.ReciptPurchaseEffect  WITH CHECK ADD  CONSTRAINT FK_ReciptPurchaseEffect_ReciptItems FOREIGN KEY(ReciptItemID, ReciptID, ServerID, YearID)
--REFERENCES dbo.ReciptItems (ReciptItemID, ReciptID, ServerID, YearID) --ON UPDATE CASCADE
-- ON DELETE CASCADE


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
 [SellsMethods] ([SellsMethod])  
 ALTER TABLE [Recipts] ADD [SellsEmporium] int NOT NULL DEFAULT (1)
 ALTER TABLE [Recipts] ADD CONSTRAINT [FK_Recipts_SellsEmporiums] FOREIGN KEY ([SellsEmporium])REFERENCES
 [SellsEmporiums] ([SellsEmporium]) 
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
 
 DELETE FROM ReciptsDeficits FROM ReciptsDeficits LEFT OUTER JOIN 
 Recipts ON ReciptsDeficits.ReciptID = Recipts.ReciptID WHERE (Recipts.ReciptID IS NULL) 
 end


IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_CustomersMasir_Customers' AND type = 'F')
ALTER TABLE [dbo].[CustomersMasir] DROP CONSTRAINT FK_CustomersMasir_Customers

  if  exists (select * from dbo.sysobjects where id = object_id(N'acc.DocGroups') and OBJECTPROPERTY(id, N'IsUserTable') = 1)ALTER TABLE [dbo].[CustomersMasir]  WITH CHECK ADD  CONSTRAINT [FK_CustomersMasir_Customers] FOREIGN KEY([PersonID1])
        REFERENCES [dbo].[Customers] ([CustID])ON UPDATE CASCADE --ON DELETE CASCADE


IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Recipts_CustomersMasir' AND type = 'F')
ALTER TABLE dbo.Recipts  WITH CHECK ADD  CONSTRAINT FK_Recipts_CustomersMasir FOREIGN KEY(MasirID) REFERENCES dbo.CustomersMasir (ID)
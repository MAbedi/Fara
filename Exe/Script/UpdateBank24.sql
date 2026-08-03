----1---     1401/03/31  Pay Active تاریخ
SET NOCOUNT ON

--IF NOT EXISTS (SELECT 1 FROM sysusers WHERE Name = N'Pay')
--begin
--EXEC sp_addrole @RoleName = N'Pay'
--EXEC('
--ALTER SCHEMA  pay TRANSFER dbo.Config
--ALTER SCHEMA  pay TRANSFER dbo.ScanInfo
--ALTER SCHEMA  pay TRANSFER dbo.ScanType
--ALTER SCHEMA  pay TRANSFER dbo.FormsInfo
--ALTER SCHEMA  pay TRANSFER dbo.FormTypes
--ALTER SCHEMA  pay TRANSFER dbo.[InterdictItems];
--ALTER SCHEMA  pay TRANSFER dbo.[GetReprots];
--ALTER SCHEMA  pay TRANSFER dbo.[InsuranceCONSTinfo];
--ALTER SCHEMA  pay TRANSFER dbo.[GetRptColumns];
--ALTER SCHEMA  pay TRANSFER dbo.[InsouranceTemp];
--ALTER SCHEMA  pay TRANSFER dbo.[CalculateWage];
--ALTER SCHEMA  pay TRANSFER dbo.[PersonelArchives];
--ALTER SCHEMA  pay TRANSFER dbo.[PonyDebitCredits];
--ALTER SCHEMA  pay TRANSFER dbo.[FunctionDay];
--ALTER SCHEMA  pay TRANSFER dbo.[FormInfoItems];
--ALTER SCHEMA  pay TRANSFER dbo.[jobsSalaryRanges];
--ALTER SCHEMA  pay TRANSFER dbo.[ChangeWage];
--ALTER SCHEMA  pay TRANSFER dbo.[FunctionDayItems];
--ALTER SCHEMA  pay TRANSFER dbo.[Mission];
--ALTER SCHEMA  pay TRANSFER dbo.[BudgetInfoItems];
--ALTER SCHEMA  pay TRANSFER dbo.[BudgetsInfo];
--ALTER SCHEMA  pay TRANSFER dbo.[PersonelDecExtItem];
--ALTER SCHEMA  pay TRANSFER dbo.[PersonelAccounts];
--ALTER SCHEMA  pay TRANSFER dbo.[GetRptConstColumns];
--ALTER SCHEMA  pay TRANSFER dbo.[TaxInfo];
--ALTER SCHEMA  pay TRANSFER dbo.[DecExtItems];
--ALTER SCHEMA  pay TRANSFER dbo.[Temp_Interdicts];
--ALTER SCHEMA  pay TRANSFER dbo.[Temp_InterdictItems];
--ALTER SCHEMA  pay TRANSFER dbo.[FixedCalculated];
--ALTER SCHEMA  pay TRANSFER dbo.[WageFormula];
--ALTER SCHEMA  pay TRANSFER dbo.[TaxInfo_Old_];
--ALTER SCHEMA  pay TRANSFER dbo.[Interdicts];
--ALTER SCHEMA  pay TRANSFER dbo.[Educations];
--ALTER SCHEMA  pay TRANSFER dbo.[PonyArchives];
--ALTER SCHEMA  pay TRANSFER dbo.[FixedLabels];
--ALTER SCHEMA  pay TRANSFER dbo.[jobs];
--ALTER SCHEMA  pay TRANSFER dbo.[Pony];
--ALTER SCHEMA  pay TRANSFER dbo.[PersonelSponsorship];
--ALTER SCHEMA  pay TRANSFER dbo.[jobsItems];
--ALTER SCHEMA  pay TRANSFER dbo.[SalaryRange];
--ALTER SCHEMA  pay TRANSFER dbo.[jobsTerms];
--ALTER SCHEMA  pay TRANSFER dbo.[FunctionSpecial];
--ALTER SCHEMA  pay TRANSFER dbo.[PersonelTypeInfo];
--ALTER SCHEMA  pay TRANSFER dbo.[FunctionsItems];
--ALTER SCHEMA  pay TRANSFER dbo.[FunctionSpecialControl];
--ALTER SCHEMA  pay TRANSFER dbo.[PersonelInfo];
--ALTER SCHEMA  pay TRANSFER dbo.[MissionInfo];
--ALTER SCHEMA  pay TRANSFER dbo.[RecalClocks];
--ALTER SCHEMA  pay TRANSFER dbo.[Functions];
--ALTER SCHEMA  pay TRANSFER dbo.[PersonelDecExt];
--')
--end



--DECLARE @OldSchema VARCHAR(200)
--DECLARE @NewSchema VARCHAR(200)
--DECLARE @SQL nvarchar(4000)
--SET @OldSchema = 'dbo'
--SET @NewSchema = 'Pay'

--DECLARE tableCursor CURSOR FAST_FORWARD FOR 
--    SELECT 'ALTER SCHEMA  ['+ @NewSchema +'] TRANSFER [' + SysSchemas.Name + '].[' + DbObjects.Name + '];' AS Cmd
--    FROM sys.Objects DbObjects
--    INNER JOIN sys.Schemas SysSchemas ON DbObjects.schema_id = SysSchemas.schema_id
--    WHERE SysSchemas.Name = @OldSchema
--   --AND (DbObjects.Type IN ('U', 'P', 'V'))
--    AND (type not in ('IF','P','TF','FN','V','PK','F','D','C'))
--	AND (is_ms_shipped = 0 )
--	AND NOT(DbObjects.Name LIKE N'%Fitful%')
--	AND NOT(DbObjects.Name LIKE N'%dtpropert%')
--OPEN tableCursor 
--FETCH NEXT FROM tableCursor INTO  @SQL
--WHILE @@FETCH_STATUS = 0
--BEGIN
--    --PRINT @SQL
--    EXEC (@SQL)
--    FETCH NEXT FROM tableCursor INTO  @SQL
--END
--CLOSE tableCursor 
--DEALLOCATE tableCursor 




UPDATE Pay.Interdicts SET  InterdictNo = REPLACE(InterdictNo, '/', '.') WHERE (InterdictNo LIKE '%/%')


if ( COLUMNPROPERTY( OBJECT_ID('Fitful'),'ID','IsRowGuidCol')is  null )  
ALTER TABLE Fitful ADD ID bigint NOT NULL CONSTRAINT DF_Fitful_ID  DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('pay.Interdicts'),'RetardActive','IsRowGuidCol')is  null )
ALTER TABLE pay.Interdicts ADD RetardActive Tinyint NOT NULL CONSTRAINT DF_Interdicts_RetardActive DEFAULT (1)




UPDATE pay.Interdicts SET  InterdictNo = REPLACE(InterdictNo, '/', '.') WHERE (InterdictNo LIKE '%/%')

DECLARE @TABLE_NAME VARCHAR(90) 
DECLARE @COLUMN_NAME VARCHAR(90)
DECLARE @DATA_TYPE VARCHAR(90) 
DECLARE @IS_NULLABLE VARCHAR(90) 
DECLARE @qry VARCHAR(max) 
DECLARE @Length int

if  exists (select * from sysindexes WHERE     (name = N'IX_Interdicts_PersonelNo_subcompanyCode'))
DROP INDEX IX_Interdicts_PersonelNo_subcompanyCode ON pay.Interdicts  



IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_FixedCalculated_OfficeCode_ShowListKind'))
DROP INDEX IX_FixedCalculated_OfficeCode_ShowListKind ON pay.FixedCalculated

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_FixedCalculated_BedBes_CalCulateKind_ShowListKind'))
DROP INDEX IX_FixedCalculated_BedBes_CalCulateKind_ShowListKind ON pay.FixedCalculated

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_FixedCalculated_BedBes_ShowListKind'))
DROP INDEX IX_FixedCalculated_BedBes_ShowListKind ON pay.FixedCalculated

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_FixedCalculated_ShowListKind'))
DROP INDEX IX_FixedCalculated_ShowListKind ON pay.FixedCalculated

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_FixedCalculated_OfficeCode'))
DROP INDEX IX_FixedCalculated_OfficeCode ON pay.FixedCalculated

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_FixedCalculated_CalCulateKind_ShowListKind'))
DROP INDEX IX_FixedCalculated_CalCulateKind_ShowListKind ON pay.FixedCalculated


IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_PersonelDecExt_FormInfoID'))
DROP INDEX IX_PersonelDecExt_FormInfoID ON Pay.PersonelDecExt

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_Interdicts_PersonelNo'))
DROP INDEX IX_Interdicts_PersonelNo ON Pay.Interdicts

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_Interdicts_EmployTypeID_PersonelNo'))
DROP INDEX IX_Interdicts_EmployTypeID_PersonelNo ON Pay.Interdicts

IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_Interdicts_PersonelNo_subcompanyCode2'))
DROP INDEX IX_Interdicts_PersonelNo_subcompanyCode2 ON Pay.Interdicts


----------------------------------------------------------------------------------------------------------
IF OBJECT_ID ('TR_ConfigChangeLog_FormInfoItems', 'TR') IS NOT NULL
ALTER TABLE Pay.FormInfoItems  DISABLE TRIGGER TR_ConfigChangeLog_FormInfoItems

IF OBJECT_ID ('TR_ConfigChangeLog_FormsInfo', 'TR') IS NOT NULL 
ALTER TABLE Pay.FormsInfo  DISABLE TRIGGER TR_ConfigChangeLog_FormsInfo

IF OBJECT_ID ('TR_ConfigChangeLog_Functions', 'TR') IS NOT NULL 
ALTER TABLE Pay.Functions  DISABLE TRIGGER TR_ConfigChangeLog_Functions

IF OBJECT_ID ('TR_ConfigChangeLog_FunctionsItems', 'TR') IS NOT NULL 
ALTER TABLE Pay.FunctionsItems  DISABLE TRIGGER TR_ConfigChangeLog_FunctionsItems

IF OBJECT_ID ('TR_ConfigChangeLog_PersonelInfo', 'TR') IS NOT NULL 
ALTER TABLE Pay.PersonelInfo  DISABLE TRIGGER TR_ConfigChangeLog_PersonelInfo

IF OBJECT_ID ('TR_ConfigChangeLog_PersonelDecExt', 'TR') IS NOT NULL 
ALTER TABLE Pay.PersonelDecExt  DISABLE TRIGGER TR_ConfigChangeLog_PersonelDecExt

IF OBJECT_ID ('TR_ConfigChangeLog_PersonelDecExtItem', 'TR') IS NOT NULL 
ALTER TABLE Pay.PersonelDecExtItem  DISABLE TRIGGER TR_ConfigChangeLog_PersonelDecExtItem

IF OBJECT_ID ('TR_ConfigChangeLog_Interdicts', 'TR') IS NOT NULL 
ALTER TABLE Pay.Interdicts  DISABLE TRIGGER TR_ConfigChangeLog_Interdicts

IF OBJECT_ID ('TR_ConfigChangeLog_InterdictItems', 'TR') IS NOT NULL 
ALTER TABLE Pay.InterdictItems  DISABLE TRIGGER TR_ConfigChangeLog_InterdictItems

IF OBJECT_ID ('TR_ConfigChangeLog_InsuranceCONSTinfo', 'TR') IS NOT NULL 
ALTER TABLE Pay.InsuranceCONSTinfo  DISABLE TRIGGER TR_ConfigChangeLog_InsuranceCONSTinfo

IF OBJECT_ID ('TR_ConfigChangeLog_SalaryRange', 'TR') IS NOT NULL 
ALTER TABLE Pay.SalaryRange  DISABLE TRIGGER TR_ConfigChangeLog_SalaryRange
----------------------------------------------------------------------------------------------------------


DECLARE db_cursor CURSOR FOR 
SELECT TABLE_SCHEMA+'.'+ TABLE_NAME AS TABLE_NAME, COLUMN_NAME,DATA_TYPE,inf.CHARACTER_MAXIMUM_LENGTH,IS_NULLABLE FROM INFORMATION_SCHEMA.COLUMNS as inf
INNER JOIN SYSOBJECTS on inf.table_name = SYSOBJECTS.name
WHERE  ((COLUMN_NAME like  N'%date%')or(COLUMN_NAME='StartYear')or(COLUMN_NAME='EndYear')or(COLUMN_NAME='StartMaliYear')or(COLUMN_NAME='FinishMaliYear')) 
   AND (DATA_TYPE like  N'%char%')
   AND (TABLE_NAME <>  N'acc.Contacts')
   
 
 AND OBJECTPROPERTY(SYSOBJECTS.id, N'IsUserTable') = 1
 AND (inf.CHARACTER_MAXIMUM_LENGTH BETWEEN 8 AND 8)--10


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

	 SET @qry = @qry +CHAR(13)  +
	             ' UPDATE  '+@TABLE_NAME+' set  '+@COLUMN_NAME+' = CASE WHEN '+@COLUMN_NAME+'<''20/12/29'' THEN ''14''+'+@COLUMN_NAME+' ELSE ''13''+'+@COLUMN_NAME+' END
	               WHERE (len('+@COLUMN_NAME+')=8) '
      --print @qry
      exec(@qry)

      FETCH NEXT FROM db_cursor INTO @TABLE_NAME , @COLUMN_NAME ,@DATA_TYPE,@Length,@IS_NULLABLE
END 

CLOSE db_cursor  
DEALLOCATE db_cursor 
ALTER TABLE Pay.FixedCalculated ALTER column YearRetard int 
UPDATE  Pay.FixedCalculated set  YearRetard = CASE WHEN YearRetard<20 THEN 1400+YearRetard  ELSE 1300+YearRetard END  WHERE (len(YearRetard)=2)  
UPDATE  Pay.FixedCalculated set  Years = CASE WHEN Years<20 THEN 1400+Years  ELSE 1300+Years END  WHERE (len(Years)=2)  


UPDATE  Pay.PersonelDecExtItem SET Years=Years+cast( 1300 as smallint) WHERE len(Years)<4
UPDATE  Pay.PersonelDecExt SET StartYear=StartYear+cast( 1300 as smallint) WHERE len(StartYear)<4
UPDATE  Pay.PersonelDecExt SET EndYear=EndYear+cast( 1300 as smallint) WHERE len(EndYear)<4
--UPDATE  Pay.FormsInfo SET Years=Years+cast( 1300 as smallint) WHERE len(Years)<4

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_WageFormula' AND type = 'K')
begin
 ALTER TABLE Pay.WageFormula	DROP CONSTRAINT PK_WageFormula

ALTER TABLE Pay.WageFormula ALTER COLUMN YearFrom int NOT NULL
ALTER TABLE Pay.WageFormula ALTER COLUMN YearTo int NOT NULL

UPDATE  Pay.WageFormula SET YearFrom=YearFrom+cast( 1300 as smallint) WHERE len(YearFrom)<4
UPDATE  Pay.WageFormula SET YearTo=YearTo+cast( 1300 as smallint) WHERE len(YearTo)<4
end


UPDATE  Pay.Functions SET Years=Years+cast( 1300 as smallint) WHERE len(Years)<4
--UPDATE  TaxInfo SET YearID=YearID+cast( 1300 as smallint) WHERE len(YearID)<4






UPDATE  Pay.PersonelDecExt
 SET DayTime=DayTime+cast( 1300 as smallint) 
FROM            Pay.PersonelDecExt INNER JOIN
                         Pay.FormsInfo ON PersonelDecExt.FormInfoID = FormsInfo.FormInfoID INNER JOIN
                         Pay.FormTypes ON FormsInfo.FormType = FormTypes.FormType

WHERE len(DayTime)<4 AND    (FormTypes.SalaryKind = 14)



----select *  From util.MaliYear
if (select COUNT(DISTINCT LEN(YearID))  From util.MaliYear) = 1 
begin
--IF  EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_DocGroups_MaliYear' AND type = 'F')
--ALTER TABLE acc.DocGroups DROP CONSTRAINT FK_DocGroups_MaliYear

IF  EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_TaxInfo_MaliYear' AND type = 'F')
ALTER TABLE Pay.TaxInfo DROP CONSTRAINT FK_TaxInfo_MaliYear

if  exists (select * from dbo.sysobjects where id = object_id(N'Util.MaliYearUsers') and OBJECTPROPERTY(id,N'IsUserTable') =1)
IF  EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_MaliYearUsers_MaliYear' AND type = 'F')
ALTER TABLE Util.MaliYearUsers DROP CONSTRAINT FK_MaliYearUsers_MaliYear

--IF  EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Recipts_MaliYear' AND type = 'F')
--ALTER TABLE Recipts DROP CONSTRAINT FK_Recipts_MaliYear

--IF  EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptItems_MaliYear' AND type = 'F')
--ALTER TABLE ReciptItems DROP CONSTRAINT FK_ReciptItems_MaliYear

--IF  EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptItems_Recipts' AND type = 'F')
--ALTER TABLE ReciptItems DROP CONSTRAINT FK_ReciptItems_Recipts

--IF  EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptsRegulates_ReciptItems' AND type = 'F')
--ALTER TABLE ReciptsRegulates DROP CONSTRAINT FK_ReciptsRegulates_ReciptItems --- add to up3

UPDATE  util.MaliYear SET YearID=YearID+cast( 1300 as smallint) WHERE len(YearID)<4

DECLARE db_cursor CURSOR FOR 
SELECT TABLE_SCHEMA+'.'+ TABLE_NAME AS TABLE_NAME, COLUMN_NAME,DATA_TYPE,inf.CHARACTER_MAXIMUM_LENGTH,IS_NULLABLE FROM INFORMATION_SCHEMA.COLUMNS as inf
INNER JOIN SYSOBJECTS on inf.table_name = SYSOBJECTS.name
WHERE  ((COLUMN_NAME like  N'%YearID%'))  and xtype='U'  AND OBJECTPROPERTY(SYSOBJECTS.id, N'IsUserTable') = 1
and (COLUMN_NAME <>  N'UseUnitsYearID') and ( COLUMN_NAME <>  N'FilterYearIDActive')  and (TABLE_NAME<> N'MaliYear')
 and (COLUMN_NAME<> N'ActiveYearID')
 order by len(TABLE_NAME)


OPEN db_cursor  
FETCH NEXT FROM db_cursor INTO @TABLE_NAME , @COLUMN_NAME ,@DATA_TYPE,@Length,@IS_NULLABLE

WHILE @@FETCH_STATUS = 0  
BEGIN 
     SET @qry =''  
	 SET @qry = @qry +CHAR(13)  +
         ' UPDATE  '+@TABLE_NAME+' set  '+@COLUMN_NAME+' =  '+
		      @COLUMN_NAME+' + cast( 1300 as smallint) WHERE (Isnull('+@COLUMN_NAME+','''') <> '''') AND  (len(Isnull('+@COLUMN_NAME+',''''))<4) '				 
    -- print @qry
      exec(@qry)
      FETCH NEXT FROM db_cursor INTO @TABLE_NAME , @COLUMN_NAME ,@DATA_TYPE,@Length,@IS_NULLABLE
END 

CLOSE db_cursor  
DEALLOCATE db_cursor 


end

UPDATE       Pay.PersonelDecExt  SET                EndDate = ''  WHERE        (EndDate = '  /  /')


IF EXISTS (SELECT name FROM sysobjects WHERE name = 'TaxInfo' AND type = 'U')
begin
IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_TaxInfo_MaliYear' AND type = 'F')
ALTER TABLE Pay.TaxInfo  drop  CONSTRAINT FK_TaxInfo_MaliYear 


end

if  exists (select * from dbo.sysobjects where id = object_id(N'Util.MaliYearUsers') and OBJECTPROPERTY(id,N'IsUserTable') =1)
begin
IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_MaliYearUsers_MaliYear' AND type = 'F')
ALTER TABLE Util.MaliYearUsers  drop  CONSTRAINT FK_MaliYearUsers_MaliYear 

IF not  EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_MaliYearUsers_MaliYear' AND type = 'F')
ALTER TABLE Util.MaliYearUsers  WITH CHECK ADD  CONSTRAINT FK_MaliYearUsers_MaliYear FOREIGN KEY(YearID)
REFERENCES Util.MaliYear (YearID) ON UPDATE CASCADE
end

--IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_DocGroups_MaliYear' AND type = 'F')
--IF EXISTS (SELECT name FROM sysobjects WHERE name = 'DocGroups' AND type = 'U')
--ALTER TABLE acc.DocGroups WITH CHECK ADD CONSTRAINT FK_DocGroups_MaliYear 	FOREIGN KEY(YearID) REFERENCES util.MaliYear (YearID)


--IF NOT  EXISTS (select * from sysindexes WHERE     (name = N'IX_DocGroup'))
--CREATE NONCLUSTERED INDEX IX_DocGroup ON Acc.DocGroups(	DocDate ASC,	PrimaryDocNo ASC,	SecondaryDocNo ASC,	Serial ASC) ON [PRIMARY]

--------------------------------------------------------------------------------------



ALTER TABLE Pay.[FunctionsItems] ALTER COLUMN [FHours] float
ALTER TABLE Pay.[FunctionsItems] ALTER COLUMN [FDaily] float

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelDecExt'),'ProjectInfoID','IsRowGuidCol')is  null )
ALTER TABLE Pay.[PersonelDecExt] ADD [ProjectInfoID] int 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelDecExt'),'OfficeInfoID','IsRowGuidCol')is  null )
ALTER TABLE Pay.[PersonelDecExt] ADD [OfficeInfoID] int 

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_Functions_FunctionTime' AND type = 'D')
ALTER TABLE Pay.Functions DROP CONSTRAINT DF_Functions_FunctionTime
ALTER TABLE Pay.[Functions] ALTER COLUMN [FunctionTime] float
ALTER TABLE Pay.Functions ADD CONSTRAINT DF_Functions_FunctionTime DEFAULT (0) FOR FunctionTime

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Functions'),'ProjectRow','IsRowGuidCol')is  null )
ALTER TABLE Pay.[Functions] ADD [ProjectRow] int 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelInfo'),'PercentWound','IsRowGuidCol')is  null )
ALTER TABLE Pay.[PersonelInfo] ADD [PercentWound] float 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelInfo'),'SoldierState','IsRowGuidCol')is  null )
ALTER TABLE Pay.PersonelInfo ADD [SoldierState] int 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.InsuranceCONSTinfo'),'OffShootName_L1','IsRowGuidCol')is  null )
ALTER TABLE Pay.InsuranceCONSTinfo ADD [OffShootName_L1] varchar (50)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.InsuranceCONSTinfo'),'MON_PYM','IsRowGuidCol')is  null )
ALTER TABLE Pay.InsuranceCONSTinfo ADD MON_PYM varchar (10)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelDecExt'),'OfficeCode','IsRowGuidCol')is  null )
ALTER TABLE Pay.PersonelDecExt ADD [OfficeCode] int NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Functions'),'OfficeCode','IsRowGuidCol')is  null )
ALTER TABLE Pay.Functions  ADD [OfficeCode] int NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'ReportFooter','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD [ReportFooter] [text] 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'MaxDayTimeActive','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD [MaxDayTimeActive] tinyint NOT NULL  DEFAULT (2)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Interdicts'),'ProjectID','IsRowGuidCol')is  null )
ALTER TABLE Pay.Interdicts ADD [ProjectID] int NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Interdicts'),'StandardEmployAmount','IsRowGuidCol')is  null )
ALTER TABLE Pay.Interdicts WITH CHECK ADD CONSTRAINT FK_Interdicts_FormsInfo FOREIGN KEY(ProjectID)REFERENCES Pay.FormsInfo(FormInfoID)

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Interdicts_FormsInfo' AND type = 'F')
ALTER TABLE Pay.Interdicts drop CONSTRAINT FK_Interdicts_FormsInfo 
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Interdicts_FormsInfo' AND type = 'F')
ALTER TABLE Pay.Interdicts WITH CHECK ADD CONSTRAINT FK_Interdicts_FormsInfo FOREIGN KEY(ProjectID)REFERENCES Pay.FormsInfo(FormInfoID)


if ( COLUMNPROPERTY( OBJECT_ID('Pay.Interdicts'),'StandardEmployAmount','IsRowGuidCol')is  null )
ALTER TABLE Pay.Interdicts ADD [StandardEmployAmount] money NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.InsuranceCONSTinfo'),'HardShipPercent','IsRowGuidCol')is  null )
ALTER TABLE Pay.InsuranceCONSTinfo ADD [HardShipPercent] tinyint NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.InsuranceCONSTinfo'),'PeopleExempt','IsRowGuidCol')is  null )
ALTER TABLE Pay.InsuranceCONSTinfo ADD [PeopleExempt] tinyint NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelInfo'),'AccTopicCode','IsRowGuidCol')is  null )
ALTER TABLE Pay.PersonelInfo ADD [AccTopicCode] [bigint] NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelInfo'),'AccDetailCode','IsRowGuidCol')is  null )
ALTER TABLE Pay.PersonelInfo ADD [AccDetailCode] int NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelInfo'),'AccCTopicCode','IsRowGuidCol')is  null )
ALTER TABLE Pay.PersonelInfo ADD [AccCTopicCode] int NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelInfo'),'AccCTopicCode2','IsRowGuidCol')is  null )
ALTER TABLE Pay.PersonelInfo ADD [AccCTopicCode2] int NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'ReportCaption1','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD [ReportCaption1] varchar(150) NOT NULL  DEFAULT ('چاپ 1')

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'ReportCaption2','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD [ReportCaption2] varchar(150) NOT NULL  DEFAULT ('چاپ 2')

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'ReportCaption3','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD [ReportCaption3] varchar(150) NOT NULL  DEFAULT ('چاپ 3')

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'ReportCaption4','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD [ReportCaption4] varchar(150) NOT NULL  DEFAULT ('چاپ 4')

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'MnuRow','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD [MnuRow] tinyint NOT NULL  DEFAULT (1)


if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'ShowMnuId','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD [ShowMnuId] tinyint NOT NULL  DEFAULT (3)


if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormsInfo'),'MaxDay','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormsInfo ADD [MaxDay] float NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormsInfo'),'MaxTime','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormsInfo ADD [MaxTime] float NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'LimitMounthActive','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD [LimitMounthActive] tinyint NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Interdicts'),'TaxCalculationType','IsRowGuidCol')is  null )
ALTER TABLE Pay.Interdicts ADD [TaxCalculationType] tinyint NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Interdicts'),'insuranceID','IsRowGuidCol')is  null )
ALTER TABLE Pay.Interdicts ADD [insuranceID] tinyint NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'NoteActive','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD [NoteActive] tinyint NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelInfo'),'EmployID','IsRowGuidCol')is  null )
ALTER TABLE Pay.PersonelInfo ADD [EmployID] varchar(12)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'RecalSalaryLaw','IsRowGuidCol')is  null )
ALTER TABLE Pay.Config ADD [RecalSalaryLaw] varchar (250)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.InterdictItems'),'ItemNote_L1','IsRowGuidCol')is  null )
ALTER TABLE Pay.InterdictItems ADD [ItemNote_L1] varchar (250)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.InterdictItems'),'ItemNote_L2','IsRowGuidCol')is  null )
ALTER TABLE Pay.InterdictItems ADD [ItemNote_L2] varchar (250) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Interdicts'),'ManegePercent','IsRowGuidCol')is  null )
ALTER TABLE Pay.Interdicts ADD [ManegePercent] float NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Interdicts'),'OfficeManegePercent','IsRowGuidCol')is  null )
ALTER TABLE Pay.Interdicts ADD [OfficeManegePercent] float NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'SpacialWageCode','IsRowGuidCol')is  null )
ALTER TABLE Pay.Config ADD [SpacialWageCode] int NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelDecExt'),'EndDate','IsRowGuidCol')is  null )
ALTER TABLE Pay.PersonelDecExt ADD [EndDate] char(10)  DEFAULT ('')

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelDecExt'),'Minute_','IsRowGuidCol')is  null )
ALTER TABLE Pay.PersonelDecExt ADD [Minute_] float NOT NULL  DEFAULT (0)

if not exists (select * from dbo.sysobjects where id = object_id(N'Pay.FunctionDay') and OBJECTPROPERTY(id,
N'IsUserTable') = 1)
CREATE TABLE Pay.FunctionDay ([FunID] int NOT NULL ,[OfficeCode] int NOT NULL  DEFAULT (0),
[FunNo] int NOT NULL ,[FunDate] char(10)  NOT NULL ,[FirstUser] varchar (50)  NULL ,
[LastUser] varchar (50)  NULL ,[state] tinyint NOT NULL  DEFAULT (0),[note] [text]  NULL ,
CONSTRAINT [PK_FunctionDay] PRIMARY KEY  CLUSTERED ([FunID])  ON [PRIMARY] ,CONSTRAINT [FK_FunctionDay_FormsInfo] FOREIGN KEY
([OfficeCode]	) REFERENCES Pay.FormsInfo ([FormInfoID]	) ON UPDATE CASCADE ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

if not exists (select * from dbo.sysobjects where id = object_id(N'Pay.FunctionDayItems') and OBJECTPROPERTY(id,
N'IsUserTable') = 1)
CREATE TABLE  Pay.FunctionDayItems ([FunItemID] int NOT NULL ,[FunID] int NOT NULL ,[PersonelNo] int NOT NULL ,
[PeresentID] int NOT NULL  DEFAULT (0),[FunTime] float NOT NULL  DEFAULT (0),[ExtTime] float NOT NULL  DEFAULT (0),
[ShiftNo] int NOT NULL  DEFAULT (0),[WorkID] int NOT NULL  DEFAULT (0),[EarthCode] int NOT NULL  DEFAULT (0),
[ProcCode] int NOT NULL DEFAULT (0),[FirstUser] varchar (50)  NULL ,[LastUser] [varbinary] (50) NULL ,
[StandardRate] money NOT NULL  DEFAULT (0),
CONSTRAINT [PK_FunctionDayItems] PRIMARY KEY  CLUSTERED ([FunItemID])  ON [PRIMARY] ,
--CONSTRAINT [FK_FunctionDayItems_FormsInfo] FOREIGN KEY ([PeresentID]) REFERENCES Pay.FormsInfo (	[FormInfoID]),
--CONSTRAINT [FK_FunctionDayItems_FormsInfo1] FOREIGN KEY ([ShiftNo]) REFERENCES Pay.FormsInfo ([FormInfoID]),
--CONSTRAINT [FK_FunctionDayItems_FormsInfo2] FOREIGN KEY ([WorkID]) REFERENCES Pay.FormsInfo ([FormInfoID]),
--CONSTRAINT [FK_FunctionDayItems_FormsInfo3] FOREIGN KEY ([ProcCode]) REFERENCES Pay.FormsInfo ([FormInfoID]),
CONSTRAINT [FK_FunctionDayItems_FunctionDay] FOREIGN KEY ([FunID]) REFERENCES Pay.FunctionDay ([FunID]) ON DELETE CASCADE  ON UPDATE CASCADE ,
CONSTRAINT [FK_FunctionDayItems_PersonelInfo] FOREIGN KEY ([PersonelNo]	) REFERENCES Pay.PersonelInfo([PersonelNo]) ON UPDATE CASCADE ) ON [PRIMARY]

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Interdicts'),'GroupID','IsRowGuidCol')is  null )
ALTER TABLE Pay.Interdicts ADD [GroupID] int NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'ShowOperators','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD [ShowOperators] tinyint NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelInfo'),'SpecialJob','IsRowGuidCol')is  null )
ALTER TABLE Pay.PersonelInfo ADD [SpecialJob] tinyint NOT NULL  DEFAULT (0)


if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormsInfo'),'MuliplyInDay','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormsInfo ADD [MuliplyInDay] tinyint NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'MuliplyInDayActive','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD [MuliplyInDayActive] tinyint NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Functions'),'ProcCode','IsRowGuidCol')is  null )
ALTER TABLE Pay.Functions  ADD [ProcCode] int 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Functions'),'CTopic3','IsRowGuidCol')is  null )
ALTER TABLE Pay.Functions  ADD [CTopic3] int 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'CTopicCode3Kind','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD [CTopicCode3Kind] tinyint NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormsInfo'),'AccCTopicCode3','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormsInfo ADD [AccCTopicCode3] int NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FixedCalculated'),'AccCTopicCode3','IsRowGuidCol')is  null )
ALTER TABLE Pay.FixedCalculated ADD [AccCTopicCode3] int NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelInfo'),'AccCTopicCode3','IsRowGuidCol')is  null )
ALTER TABLE Pay.PersonelInfo ADD [AccCTopicCode3] int NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelDecExt'),'AccCTopicCode3','IsRowGuidCol')is  null )
ALTER TABLE Pay.PersonelDecExt ADD [AccCTopicCode3] int NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FunctionDayItems'),'AccCTopicCode3','IsRowGuidCol')is  null )
ALTER TABLE  Pay.FunctionDayItems ADD AccCTopicCode3 int NOT NULL  DEFAULT (0)


if  exists (select * from dbo.sysobjects where id = object_id(N'Pay.Cnv_Function') and OBJECTPROPERTY(id,
	N'IsUserTable') = 1) 
if ( COLUMNPROPERTY( OBJECT_ID('Pay.Cnv_Function'),'AccCTopicCode3','IsRowGuidCol')is  null )
ALTER TABLE  Pay.Cnv_Function ADD AccCTopicCode3 int NOT NULL  DEFAULT (0)


if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelInfo'),'CreditCardNo','IsRowGuidCol')is  null )
ALTER TABLE Pay.PersonelInfo ADD [CreditCardNo] varchar (25)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'EarthProceedsActivate','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD [EarthProceedsActivate] tinyint NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.InsuranceCONSTinfo'),'PostalCode','IsRowGuidCol')is  null )
ALTER TABLE Pay.InsuranceCONSTinfo ADD [PostalCode] varchar (15)


--ALTER TABLE Pay.FormsInfo      ALTER COLUMN [InfoName_L1]        varchar (500)
--ALTER TABLE Pay.FormsInfo      ALTER COLUMN [InfoName_L2]        varchar (500)
--ALTER TABLEPay.PersonelInfo  ALTER COLUMN [PersonelState]      int
--ALTER TABLEPay.PersonelInfo  ALTER COLUMN [SupPepNumber]       int
--ALTER TABLEPay.PersonelInfo  ALTER COLUMN [AccBankType]        int
--ALTER TABLEPay.PersonelInfo  ALTER COLUMN [TaxCalculationType] int
--ALTER TABLE Pay.Interdicts     ALTER COLUMN [TaxCalculationType] int

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelInfo'),'MaskanKind','IsRowGuidCol')is  null )
ALTER TABLE Pay.PersonelInfo ADD [MaskanKind] int NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelInfo'),'SpecialState','IsRowGuidCol')is  null )
ALTER TABLE Pay.PersonelInfo ADD [SpecialState] int NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Interdicts'),'PayehNo','IsRowGuidCol')is  null )
ALTER TABLE Pay.Interdicts ADD [PayehNo] int NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Interdicts'),'GrpExpense','IsRowGuidCol')is  null )
ALTER TABLE Pay.Interdicts ADD [GrpExpense] int NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Interdicts'),'SubFunctionID','IsRowGuidCol')is  null )
ALTER TABLE Pay.Interdicts ADD [SubFunctionID] int NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Interdicts'),'SubInterdictID','IsRowGuidCol')is  null )
ALTER TABLE Pay.Interdicts ADD [SubInterdictID] int NOT NULL  DEFAULT (0)
                                                  
if ( COLUMNPROPERTY( OBJECT_ID('Pay.Functions'),'SickDay','IsRowGuidCol')is  null )
ALTER TABLE Pay.Functions  ADD [SickDay] int 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelDecExt'),'State','IsRowGuidCol')is  null )
ALTER TABLE Pay.PersonelDecExt ADD [State] tinyint NOT NULL  DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FixedCalculated'),'ProcCode','IsRowGuidCol')is  null )
ALTER TABLE  Pay.[FixedCalculated] ADD [ProcCode] int 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.InsuranceCONSTinfo'),'PoorsantRate ','IsRowGuidCol')is  null )
ALTER TABLE Pay.InsuranceCONSTinfo ADD [PoorsantRate] float

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'ADDLevelID','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD [ADDLevelID] tinyint NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'EditLevelID','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD [EditLevelID] tinyint NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'DeleteLevelID','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD [DeleteLevelID] tinyint NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'ChangeStateLevelID','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD [ChangeStateLevelID] tinyint NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'PrintLevelID','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD [PrintLevelID] tinyint NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'PrintDesignLevelID','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD [PrintDesignLevelID] tinyint NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'FormRelatedLevelID','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD [FormRelatedLevelID] tinyint NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'AccCodeLevelID','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD [AccCodeLevelID] tinyint NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'OtherCtrlLevelID','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD [OtherCtrlLevelID] tinyint NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'XlsLevelID','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD [XlsLevelID] tinyint NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'FinalStateEditLevelID','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD [FinalStateEditLevelID] tinyint NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'ConstantStateEditLevelID','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD [ConstantStateEditLevelID] tinyint NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'CalcLevelID','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD [CalcLevelID] tinyint NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'SendLevelID','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD [SendLevelID] tinyint NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'DecExtStateActive','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD [DecExtStateActive] tinyint NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'AmountCaption','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD [AmountCaption] varchar(50)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'Amount2Caption','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD [Amount2Caption] varchar(50)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'StandardDayCaption','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD [StandardDayCaption] varchar(50)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'StandardTimeCaption','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD [StandardTimeCaption] varchar(50)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelDecExt'),'ProcCode','IsRowGuidCol')is  null )
ALTER TABLE Pay.PersonelDecExt ADD [ProcCode] int 

if not exists (select * from dbo.sysobjects where id = object_id(N'Pay.[ChangeWage]') and OBJECTPROPERTY(id,
	N'IsUserTable') = 1) begin
	CREATE TABLE  Pay.[ChangeWage]([SalaryID] int NOT NULL,
	[CalculatedKind] tinyint NOT NULL CONSTRAINT [DF_ChangeWage_CalculatedKind] DEFAULT ((0)),
	[Amount] float NOT NULL ,CONSTRAINT [PK_ChangeWage] PRIMARY KEY  CLUSTERED (SalaryID) ON [PRIMARY] ) ON [PRIMARY]
	ALTER TABLE [ChangeWage] WITH CHECK ADD CONSTRAINT [FK_ChangeWage_FormsInfo] FOREIGN KEY([SalaryID])
	REFERENCES Pay.FormsInfo ([FormInfoID])ON UPDATE CASCADE
	end

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Interdicts'),'LastInterdictID','IsRowGuidCol')is  null )
ALTER TABLE Pay.Interdicts ADD [LastInterdictID] int NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'AccountDBNameOld','IsRowGuidCol')is  null )
ALTER TABLE Pay.Config ADD [AccountDBNameOld]   varchar(250) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelInfo'),'PostalCode','IsRowGuidCol')is  null )
ALTER TABLE Pay.PersonelInfo ADD [PostalCode] varchar (15)

if not exists (select * from dbo.sysobjects where id = object_id(N'Pay.[PersonelSponsorship]') and OBJECTPROPERTY(id,
	N'IsUserTable') = 1) begin
	CREATE TABLE  Pay.[PersonelSponsorship] ([ID] int IDENTITY (1, 1) NOT NULL ,[PersonelNo] int NOT NULL ,
	[Name] varchar (25) NOT NULL ,[lastName] varchar (30) NOT NULL ,	[FatherName] varchar (25) NOT NULL ,
	[IDNumber] varchar (12) NOT NULL ,[NationalID] varchar (12) NULL ,[BirthDate] char(10) NOT NULL ,
	[Kind] tinyint NOT NULL CONSTRAINT [DF_PersonelSponsorship_Kind] DEFAULT (0),
	[State] tinyint NULL ,[Note] varchar (50) NULL ,CONSTRAINT [FK_PersonelSponsorship_PersonelInfo] FOREIGN KEY
	([PersonelNo]) REFERENCES Pay.PersonelInfo([PersonelNo]) ON DELETE CASCADE ON UPDATE CASCADE ) ON [PRIMARY]
	end

 if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelSponsorship'),'Sex','IsRowGuidCol')is  null )
 ALTER TABLE  Pay.[PersonelSponsorship] ADD [Sex] tinyint NOT NULL  DEFAULT (0)

  if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelInfo'),'BranchInfo','IsRowGuidCol')is  null ) begin
  ALTER TABLE Pay.PersonelInfo ADD [BranchInfo] int 
  ALTER TABLE Pay.PersonelInfo WITH CHECK ADD CONSTRAINT FK_PersonelInfo_FormsInfo11 FOREIGN KEY([BranchInfo])
  REFERENCES  Pay.FormsInfo ([FormInfoID]) ON DELETE CASCADE 
	end

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelInfo_FormsInfo11' AND type = 'F')
  ALTER TABLE Pay.PersonelInfo drop CONSTRAINT FK_PersonelInfo_FormsInfo11 
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelInfo_FormsInfo11' AND type = 'F')
  ALTER TABLE Pay.PersonelInfo WITH CHECK ADD CONSTRAINT FK_PersonelInfo_FormsInfo11 FOREIGN KEY([BranchInfo])
  REFERENCES  Pay.FormsInfo ([FormInfoID]) ON DELETE CASCADE 


  if ( COLUMNPROPERTY( OBJECT_ID('Pay.Interdicts'),'AccCTopicCode3','IsRowGuidCol')is  null )
  ALTER TABLE Pay.Interdicts ADD [AccCTopicCode3] int NOT NULL  DEFAULT (0)

  if ( COLUMNPROPERTY( OBJECT_ID('pay.InsuranceCONSTinfo'),'AccCTopicCode3','IsRowGuidCol')is  null )
  ALTER TABLE Pay.InsuranceCONSTinfo ADD [AccCTopicCode3] int NOT NULL  DEFAULT (0)

  if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelInfo'),'OffTime','IsRowGuidCol')is  null )
  ALTER TABLE Pay.PersonelInfo ADD [OffTime]  int NOT NULL  DEFAULT (0)

  if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelInfo'),'DSW_JOB','IsRowGuidCol')is  null )
  ALTER TABLE Pay.PersonelInfo ADD [DSW_JOB] char (6)

	if not exists (select * from dbo.sysobjects where id = object_id(N'Pay.[Mission]') and OBJECTPROPERTY(id,
	N'IsUserTable') = 1) begin
	CREATE TABLE Pay.[Mission] ([MissionID] int IDENTITY (1, 1) NOT NULL ,[MissionNo] int NOT NULL ,[MissionDate] char(10) NOT
	NULL ,
	[State] tinyint NOT NULL DEFAULT (0) ,[PersonelNo] int NOT NULL ,[MissionPlace] varchar (100) ,[CompanyCode] int NOT
	NULL DEFAULT (0) ,
	[MissionStartDate] char(10) , [MissionEndDate] char(10) , [MissionFunction] float ,
	[MissionTopic] varchar (1000) , [TransPort] varchar (70) , [OtherTopic] varchar (1000) , [MissionKind] int ,
	[AccTopicCode] [bigint] NOT NULL DEFAULT (0) , [AccDetailCode] int NOT NULL DEFAULT (0) ,
	[AccCTopicCode] int NOT NULL DEFAULT (0) , [AccCTopicCode2] int NOT NULL DEFAULT (0) ,[AccCTopicCode3] int NOT
	NULL DEFAULT (0) ,
	CONSTRAINT [PK_Mission] PRIMARY KEY CLUSTERED	([MissionID]) ON [PRIMARY] ,
	CONSTRAINT [FK_Mission_PersonelInfo] FOREIGN KEY ([PersonelNo])
	REFERENCES Pay.PersonelInfo([PersonelNo]) ON DELETE CASCADE ON UPDATE CASCADE ) ON [PRIMARY]
	end
	if not exists (select * from dbo.sysobjects where id = object_id(N'Pay.[MissionInfo]') and OBJECTPROPERTY(id,N'IsUserTable') = 1)
	begin
	CREATE TABLE Pay.[MissionInfo] ([MissionInfoID] int IDENTITY (1, 1) NOT NULL ,
	[MissionID] int NOT NULL ,[InfoType] tinyint NOT NULL ,
	[AccDetailCode] int NOT NULL DEFAULT (0) , [AccCTopicCode] int NOT NULL DEFAULT (0) ,
	[AccCTopicCode2] int NOT NULL DEFAULT (0) , [AccCTopicCode3] int NOT NULL DEFAULT (0) ,
	[ExpID] int,[StartDate] Char(10) ,[EndDate] Char(10) ,[FunMission] float,[RateMission] float ,
	[CofficentManage] float , [Price] money ,
	CONSTRAINT [PK_MissionInfo] PRIMARY KEY CLUSTERED	([MissionInfoID]) ON [PRIMARY] ,
	CONSTRAINT [FK_MissionInfo_Mission] FOREIGN KEY
	([MissionID]) REFERENCES Pay.[Mission] ([MissionID]) ON DELETE CASCADE ON UPDATE CASCADE ) ON [PRIMARY]
	end

  if ( COLUMNPROPERTY( OBJECT_ID('Pay.Mission'),'DocNo','IsRowGuidCol')is  null )
  ALTER TABLE Pay.[Mission] ADD [DocNo] int 

if not exists (select * from dbo.sysobjects where id = object_id(N'Pay.[PersonelDecExtItem]') and OBJECTPROPERTY(id,
N'IsUserTable') = 1)
CREATE TABLE Pay.[PersonelDecExtItem] ([ID] int NOT NULL ,[DecExtID] int NOT NULL ,	[Years] [smallint] NULL ,
[Months] [smallint] NULL , [Amount] money NOT NULL ,	CONSTRAINT [PK_PersonelDecExtItem] PRIMARY KEY  CLUSTERED
([ID])  ON [PRIMARY] ,	CONSTRAINT [FK_PersonelDecExtItem_PersonelDecExt] FOREIGN KEY 	([DecExtID]	)
REFERENCES Pay.PersonelDecExt (	[DecExtID]	) ON DELETE CASCADE  ON UPDATE CASCADE ) ON [PRIMARY]

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'TaxKindCalc','IsRowGuidCol')is  null )
ALTER TABLE Pay.Config ADD [TaxKindCalc] tinyint NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'ActiveSalary','IsRowGuidCol')is  null )
ALTER TABLE Pay.Config ADD [ActiveSalary] tinyint NOT NULL DEFAULT (1) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'ActivePayRoll','IsRowGuidCol')is  null )
ALTER TABLE Pay.Config ADD [ActivePayRoll] tinyint NOT NULL DEFAULT (1) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'ActiveMange','IsRowGuidCol')is  null )
ALTER TABLE Pay.Config ADD [ActiveMange] tinyint NOT NULL DEFAULT (1) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'ActiveSchedule','IsRowGuidCol')is  null )
ALTER TABLE Pay.Config ADD [ActiveSchedule] tinyint NOT NULL DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'ActiveOrganization','IsRowGuidCol')is  null )
ALTER TABLE Pay.Config ADD [ActiveOrganization] tinyint NOT NULL DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'ShowMnuPlace','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD [ShowMnuPlace] varchar(20)

if not exists (select * from dbo.sysobjects where id = object_id(N'Pay.[PersonelAccounts]') and OBJECTPROPERTY(id,
N'IsUserTable') = 1)
	CREATE TABLE Pay.[PersonelAccounts] ([PersonelNo] int NOT NULL ,	[AccountsType] int NOT NULL ,
	[BankCode_Pa] int NULL ,[BranchInfo_Pa] int NULL ,	[AccBankType_Pa] int NULL ,
	[BranchCode_Pa] varchar (12) NULL ,	[AccountNumber_Pa] varchar (30) NULL ,[CreditCardNo_Pa] varchar (25) NULL ,
	CONSTRAINT [PK_PersonelAccounts] PRIMARY KEY CLUSTERED ([PersonelNo],	[AccountsType]) ON [PRIMARY] ,
	CONSTRAINT [FK_PersonelAccounts_FormsInfoAccBankType_Pa] FOREIGN KEY ([AccBankType_Pa]) REFERENCES Pay.FormsInfo ([FormInfoID]),
	CONSTRAINT [FK_PersonelAccounts_FormsInfoAccountsType] FOREIGN KEY ([AccountsType]) REFERENCES Pay.FormsInfo ([FormInfoID]),
	CONSTRAINT [FK_PersonelAccounts_FormsInfoBankCode_Pa] FOREIGN KEY (	[BankCode_Pa]) REFERENCES Pay.FormsInfo (	[FormInfoID]) ON UPDATE CASCADE ,
	CONSTRAINT [FK_PersonelAccounts_FormsInfoBranchInfo] FOREIGN KEY ([BranchInfo_Pa]) REFERENCES Pay.FormsInfo ([FormInfoID]),
	CONSTRAINT [FK_PersonelAccounts_PersonelInfo] FOREIGN KEY ([PersonelNo]) REFERENCES Pay.PersonelInfo([PersonelNo]) ON DELETE CASCADE ON UPDATE CASCADE ) ON [PRIMARY]

	if not exists (select * from dbo.sysobjects where id = object_id(N'Pay.[RecalClocks]') and OBJECTPROPERTY
	(id, N'IsUserTable') = 1) begin
	CREATE TABLE Pay.[RecalClocks](
	[ID] int IDENTITY (1, 1) NOT NULL , [SalaryID] int NOT NULL DEFAULT (0) , [RecalClockName] tinyint NOT NULL ,
	[StartStr] tinyint NOT NULL , [CountStr] tinyint NOT NULL , [StartFloatStr] tinyint NOT NULL ,
	[CountFloatStr] tinyint NOT NULL ,
	CONSTRAINT [PK_RecalClocks] PRIMARY KEY CLUSTERED(ID) ON [PRIMARY] ) ON [PRIMARY]
	end

if ( COLUMNPROPERTY( OBJECT_ID('Pay.RecalClocks'),'ExcelFieldName','IsRowGuidCol')is  null )
ALTER TABLE Pay.RecalClocks ADD ExcelFieldName varchar(150)  

if ( COLUMNPROPERTY( OBJECT_ID('Pay.RecalClocks'),'ExcelFieldName2','IsRowGuidCol')is  null )
ALTER TABLE Pay.RecalClocks ADD ExcelFieldName2 varchar(150)  

if ( COLUMNPROPERTY( OBJECT_ID('Pay.RecalClocks'),'Kind','IsRowGuidCol')is  null )  
ALTER TABLE vRecalClocks ADD Kind tinyint NOT NULL CONSTRAINT DF_RecalClocks_Kind   DEFAULT(0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.RecalClocks'),'TableFieldName','IsRowGuidCol')is  null )
ALTER TABLE vRecalClocks ADD TableFieldName varchar(150)  

  if((SELECT COLUMNPROPERTY( OBJECT_ID('Pay.PersonelDecExtItem'),'ID','IsIdentity')) = 0)
  begin
	if (SELECT OBJECT_ID('PK_PersonelDecExtItem'))<> null
  ALTER TABLE Pay.[PersonelDecExtItem] DROP CONSTRAINT PK_PersonelDecExtItem
  ALTER TABLE Pay.[PersonelDecExtItem] DROP COLUMN ID
  ALTER TABLE Pay.[PersonelDecExtItem] ADD ID int identity(1,1)
  ALTER TABLE Pay.[PersonelDecExtItem] ADD CONSTRAINT PK_PersonelDecExtItem PRIMARY KEY (ID)
  end
  

  if not exists (select * from dbo.sysobjects where id = object_id(N'Pay.[Pony]') and OBJECTPROPERTY(id,
	N'IsUserTable') = 1) 
  begin
	CREATE TABLE Pay.[Pony] ([PonyID] int IDENTITY (1, 1) NOT NULL ,[PonyNo] int NOT NULL ,[PonyDate] char(10) NOT NULL ,
	[PersonelNo] int NOT NULL ,[AdjustDate] char(10)  NOT NULL  ,[FunctionYearly] float  ,
	[Months] tinyint  , [CurrentMonthsPay] money  ,
	[UselessLeave] float  , [UselessLeavePay] money  ,
	[AnnuityOldPay] money  ,      --[AnnuityOld] float  ,
	[Annuity] float  , [AnnuityPay] money  ,
	[Tide] float  , [TidePay] money  ,
	[RemainLoan] money  , [DebitCredit] money   ,[Note] varchar (500) NULL ,
	CONSTRAINT [PK_Pony] PRIMARY KEY CLUSTERED	([PonyID]) ON [PRIMARY] ,
	CONSTRAINT [FK_Pony_PersonelInfo] FOREIGN KEY ([PersonelNo])
	REFERENCES Pay.PersonelInfo([PersonelNo]) ON DELETE CASCADE ON UPDATE CASCADE ) ON [PRIMARY]
	end

if (SELECT inf.CHARACTER_MAXIMUM_LENGTH FROM INFORMATION_SCHEMA.COLUMNS as inf
INNER JOIN SYSOBJECTS on inf.table_name = SYSOBJECTS.name
WHERE  (COLUMN_NAME='Note')  AND (TABLE_NAME =  N'Pay.Pony')
 AND OBJECTPROPERTY(SYSOBJECTS.id, N'IsUserTable') = 1)=50
ALTER TABLE Pay.Pony ALTER COLUMN Note VARCHAR (500)
-------------------------------dropd ropdropdropdropdropdropdropdrop drop ---------------------
--if ( COLUMNPROPERTY( OBJECT_ID('Pay.Pony'),'TaxAble','IsRowGuidCol')is  null )      
--ALTER TABLE Pay.Pony ADD TaxAble Tinyint NOT NULL CONSTRAINT DF_Pony_TaxAble DEFAULT (0) 
IF not(COLUMNPROPERTY(OBJECT_ID('Pay.Pony'),'TaxAble','IsRowGuidCol')IS NULL)
ALTER TABLE Pay.Pony
DROP CONSTRAINT DF_Pony_TaxAble,
                COLUMN TaxAble

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Pony'),'Tax','IsRowGuidCol')is  null )
ALTER TABLE Pay.Pony ADD Tax money NOT NULL CONSTRAINT DF_Pony_Tax DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Pony'),'SalaryNet','IsRowGuidCol')is  null )
ALTER TABLE Pay.Pony ADD SalaryNet money NOT NULL CONSTRAINT DF_Pony_SalaryNet DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Pony'),'SalaryNonNet','IsRowGuidCol')is  null )
ALTER TABLE Pay.Pony ADD SalaryNonNet money NOT NULL CONSTRAINT DF_Pony_SalaryNonNet DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Pony'),'SalarySum','IsRowGuidCol')is  null )
ALTER TABLE Pay.Pony ADD SalarySum money NOT NULL CONSTRAINT DF_Pony_SalarySum DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Pony'),'SalaryPureSum','IsRowGuidCol')is  null )
ALTER TABLE Pay.Pony ADD SalaryPureSum money NOT NULL CONSTRAINT DF_Pony_SalaryPureSum DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Pony'),'PArchiveDate','IsRowGuidCol')is  null )
ALTER TABLE Pay.Pony ADD PArchiveDate char(10) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Pony'),'PArchiveID','IsRowGuidCol')is  null )
ALTER TABLE Pay.Pony ADD PArchiveID int

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Pony'),'OrderDate','IsRowGuidCol')is  null )
ALTER TABLE Pay.Pony ADD OrderDate char(10) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Pony'),'RealDate','IsRowGuidCol')is  null )
ALTER TABLE Pay.Pony ADD RealDate char(10)  


if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'FunctionKind','IsRowGuidCol')is  null )
ALTER TABLE Pay.Config ADD [FunctionKind] int NOT NULL  DEFAULT (0)

	if not exists (select * from dbo.sysobjects where id = object_id(N'Pay.[ScanInfo]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
	begin
	CREATE TABLE Pay.[ScanType] ([ScanType] int NOT NULL ,[ScanTypeName] nvarchar (100) NOT NULL ,
	CONSTRAINT [PK_ScanType] PRIMARY KEY CLUSTERED ([ScanType]	) ON [PRIMARY] ) ON [PRIMARY]
	CREATE TABLE Pay.[ScanInfo] ([ScanType] int NOT NULL ,[ScanInfoID] int NOT NULL ,[ScanInfoName] varchar (100) NOT
	NULL ,
	CONSTRAINT [PK_ScanInfo] PRIMARY KEY CLUSTERED ([ScanType],[ScanInfoID]) ON [PRIMARY] ,
	CONSTRAINT [FK_ScanInfo_ScanType] FOREIGN KEY ([ScanType]) REFERENCES Pay.[ScanType] (	[ScanType]
	) ON DELETE CASCADE ON UPDATE CASCADE ) ON [PRIMARY]
	end



	if (SELECT OBJECT_ID('DF_Functions_FunctionDay'))<> null
	ALTER TABLE Pay.Functions DROP CONSTRAINT DF_Functions_FunctionDay
	ALTER TABLE Pay.Functions  ALTER COLUMN FunctionDay float
	if (SELECT OBJECT_ID('DF_Functions_FunctionDay'))= null
	ALTER TABLE Pay.Functions ADD CONSTRAINT DF_Functions_FunctionDay DEFAULT (0) FOR FunctionDay


if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'PayMentShow','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD [PayMentShow] tinyint NOT NULL DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormsInfo'),'PayMentActive','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormsInfo ADD [PayMentActive] tinyint NOT NULL DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'DecContainTaxunder','IsRowGuidCol')is  null )
ALTER TABLE Pay.Config ADD [DecContainTaxunder] tinyint NOT NULL DEFAULT (1) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'DecContainTaxNumerator','IsRowGuidCol')is  null )
ALTER TABLE Pay.Config ADD [DecContainTaxNumerator] tinyint NOT NULL DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'ProcName','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD [ProcName] varchar (50)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'EarthName','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD [EarthName] varchar (50)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelDecExt'),'EarthCode','IsRowGuidCol')is  null )
ALTER TABLE Pay.PersonelDecExt ADD [EarthCode] int 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'TFN','IsRowGuidCol')is  null )
ALTER TABLE Pay.Config ADD [TFN]   varchar(12) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'PayMainKind','IsRowGuidCol')is  null )
ALTER TABLE Pay.Config ADD [PayMainKind]  int 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'PayPettyKind','IsRowGuidCol')is  null )
ALTER TABLE Pay.Config ADD [PayPettyKind]  int 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'TIN','IsRowGuidCol')is  null )
ALTER TABLE Pay.Config ADD [TIN]   varchar(12) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'Signer1NationalID','IsRowGuidCol')is  null )
ALTER TABLE Pay.Config ADD [Signer1NationalID]   varchar(10) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'Signer1Name','IsRowGuidCol')is  null )
ALTER TABLE Pay.Config ADD [Signer1Name]   varchar(15) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'Signer1LastName','IsRowGuidCol')is  null )
ALTER TABLE Pay.Config ADD [Signer1LastName]   varchar(50) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'Signer1Job','IsRowGuidCol')is  null )
ALTER TABLE Pay.Config ADD [Signer1Job]   varchar(30) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'Signer2NationalID','IsRowGuidCol')is  null )
ALTER TABLE Pay.Config ADD [Signer2NationalID]   varchar(10) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'Signer2Name','IsRowGuidCol')is  null )
ALTER TABLE Pay.Config ADD [Signer2Name]   varchar(15) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'Signer2LastName','IsRowGuidCol')is  null )
ALTER TABLE Pay.Config ADD [Signer2LastName]   varchar(50) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'Signer2Job','IsRowGuidCol')is  null )
ALTER TABLE Pay.Config ADD [Signer2Job]   varchar(30) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormsInfo'),'TaxCode','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormsInfo ADD [TaxCode] tinyint  

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'TaxCodeShow','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD [TaxCodeShow] tinyint NOT NULL DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.InsuranceCONSTinfo'),'TaxCode','IsRowGuidCol')is  null )
ALTER TABLE Pay.InsuranceCONSTinfo ADD [TaxCode] tinyint  

if not exists (select * from dbo.sysobjects where id = object_id(N'Pay.[GetReprots]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
begin
CREATE TABLE Pay.[GetReprots] ([GetReprotsID] int NOT NULL ,[GetReprotsName] varchar (80) NOT NULL
,[OtherRptFiles] varchar (250) , [OtherRptCaptions] varchar (250),
CONSTRAINT [PK_GetReprots] PRIMARY KEY CLUSTERED	([GetReprotsID]) ON [PRIMARY] ) ON [PRIMARY]
end


if not exists (select * from dbo.sysobjects where id = object_id(N'Pay.[GetRptColumns]') and OBJECTPROPERTY(id,N'IsUserTable') =1)
begin
CREATE TABLE Pay.[GetRptColumns] ([ColumnsID] int NOT NULL ,
[GetReprotsID] int NOT NULL ,[ColumnsName] varchar (80) NOT NULL,[Kind] tinyint NOT NULL ,
[ColumnsSalaryID]varchar (300) , [Amount] money ,
CONSTRAINT [PK_GetRptColumns] PRIMARY KEY CLUSTERED	([ColumnsID],[GetReprotsID]) ON [PRIMARY],
CONSTRAINT [FK_GetRptColumns_GetReprots] FOREIGN KEY
([GetReprotsID]) REFERENCES Pay.[GetReprots] ([GetReprotsID]) ON DELETE CASCADE ON UPDATE CASCADE ) ON [PRIMARY]
end
    
if ( COLUMNPROPERTY( OBJECT_ID('Pay.GetRptColumns'),'ColumnsSalaryIDSub','IsRowGuidCol')is  null )
ALTER TABLE Pay.[GetRptColumns] ADD [ColumnsSalaryIDSub] nvarchar (300)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.GetRptColumns'),'ColumnsRoundNo','IsRowGuidCol')is  null )
ALTER TABLE Pay.GetRptColumns ADD ColumnsRoundNo float  NOT NULL  DEFAULT (0)
    
if ( COLUMNPROPERTY( OBJECT_ID('Pay.GetRptColumns'),'ColumnsCalc','IsRowGuidCol')is  null )
ALTER TABLE Pay.GetRptColumns ADD ColumnsCalc nvarchar (2000)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.GetRptColumns'),'ConstID','IsRowGuidCol')is  null )
ALTER TABLE Pay.GetRptColumns ADD ConstID int


if not exists (select * from dbo.sysobjects where id = object_id(N'Pay.GetRptConstColumns') and OBJECTPROPERTY(id,N'IsUserTable') =1)
CREATE TABLE Pay.GetRptConstColumns(
	ConstID int NOT NULL,
	ColumnsName varchar(250) NOT NULL,
	Alias varchar(100) NULL,
	ColumnsCaption varchar(100) NULL,
	TabelName varchar(100) NULL,
	IsOutPut tinyint NOT NULL,
	SortType tinyint NULL,
	SortOrder tinyint NULL,
	GroupBy tinyint NOT NULL,
 CONSTRAINT PK_GetRptConstColumns PRIMARY KEY CLUSTERED 
(
	ConstID ASC
) ON [PRIMARY]
) ON [PRIMARY]



if (SELECT OBJECT_ID('DF_PersonelInfo_n_TaxCalculationType'))<> null
ALTER TABLE Pay.PersonelInfo DROP CONSTRAINT DF_PersonelInfo_n_TaxCalculationType
ALTER TABLE Pay.PersonelInfo ALTER COLUMN TaxCalculationType int
if (SELECT OBJECT_ID('DF_PersonelInfo_n_TaxCalculationType'))= null
ALTER TABLE Pay.PersonelInfo ADD CONSTRAINT DF_PersonelInfo_n_TaxCalculationType DEFAULT (0) FOR TaxCalculationType

if not(SELECT OBJECT_ID('DF_PersonelInfo_AccBankType')) is  null
ALTER TABLE Pay.PersonelInfo DROP CONSTRAINT DF_PersonelInfo_AccBankType
ALTER TABLE Pay.PersonelInfo ALTER COLUMN AccBankType int
if (SELECT OBJECT_ID('DF_PersonelInfo_AccBankType')) = null
ALTER TABLE Pay.PersonelInfo ADD CONSTRAINT DF_PersonelInfo_AccBankType DEFAULT (0) FOR AccBankType

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'InterdictItemSumSalary1','IsRowGuidCol')is  null )
ALTER TABLE Pay.Config ADD [InterdictItemSumSalary1] nvarchar (250)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'InterdictItemSumSalary2','IsRowGuidCol')is  null )
ALTER TABLE Pay.Config ADD [InterdictItemSumSalary2] nvarchar (250)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Interdicts'),'GradeDate','IsRowGuidCol')is  null )
ALTER TABLE Pay.Interdicts ADD [GradeDate] char (10)  DEFAULT ('')

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'InterdictItem4ListSalary','IsRowGuidCol')is  null )
ALTER TABLE Pay.Config ADD [InterdictItem4ListSalary] nvarchar (250)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'HideSalaryID4ListSalary','IsRowGuidCol')is  null )
ALTER TABLE Pay.Config ADD HideSalaryID4ListSalary nvarchar (250)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'ChkHideSalaryID4ListSalary','IsRowGuidCol')is  null )
ALTER TABLE Pay.Config ADD ChkHideSalaryID4ListSalary tinyint NOT NULL  DEFAULT (0) 

if ( SELECT name FROM sysobjects where name='CK_PersonelDecExtItem_Years_Months')is null
begin
ALTER TABLE Pay.PersonelDecExtItem ADD CONSTRAINT CK_PersonelDecExtItem_Years_Months CHECK (Years > 0 AND Months > 0 )
ALTER TABLE Pay.PersonelDecExtItem ALTER COLUMN Years  [smallint] NOT NULL
ALTER TABLE Pay.PersonelDecExtItem ALTER COLUMN Months [smallint] NOT NULL
end

if not exists (select * from dbo.sysobjects where id = object_id(N'Pay.[CalculateWage]') and OBJECTPROPERTY(id,
	N'IsUserTable') = 1) begin
	CREATE TABLE Pay.[CalculateWage]([SalaryID] int NOT NULL,
	[Amount] float NOT NULL ,CONSTRAINT [PK_CalculateWage] PRIMARY KEY  CLUSTERED (SalaryID) ON [PRIMARY] ) ON [PRIMARY]
	ALTER TABLE Pay.[CalculateWage] WITH CHECK ADD CONSTRAINT [FK_CalculateWage_FormsInfo] FOREIGN KEY([SalaryID])
	REFERENCES Pay.FormsInfo ([FormInfoID])ON UPDATE CASCADE
	end

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelSponsorship'),'MarriageID','IsRowGuidCol')is  null ) begin
ALTER TABLE Pay.[PersonelSponsorship] ADD [MarriageID] int 
ALTER TABLE Pay.[PersonelSponsorship] WITH CHECK ADD CONSTRAINT [FK_PersonelSponsorship_FormsInfo] FOREIGN KEY([marriageId])
REFERENCES Pay.FormsInfo ([FormInfoID])ON UPDATE CASCADE
end

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelSponsorship'),'StudyActive','IsRowGuidCol')is  null )
ALTER TABLE Pay.[PersonelSponsorship] ADD [StudyActive] tinyint NOT NULL  DEFAULT (1)


if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'WageCalcKindActive','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD [WageCalcKindActive] tinyint NOT NULL DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormsInfo'),'WageCalcKind','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormsInfo ADD [WageCalcKind] tinyint NOT NULL DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormsInfo'),'Checking4AllPersonnel','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormsInfo ADD Checking4AllPersonnel tinyint NOT NULL DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormsInfo'),'EmployerAmountActive','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormsInfo ADD EmployerAmountActive tinyint NOT NULL DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormsInfo'),'AccTopicCodeB','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormsInfo ADD AccTopicCodeB int  

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormsInfo'),'AccDetailCodeB','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormsInfo ADD AccDetailCodeB int  

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormsInfo'),'DisableDecContainTaxNumerator','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormsInfo ADD DisableDecContainTaxNumerator tinyint NOT NULL DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormsInfo'),'SalaryIDinDocActive','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormsInfo ADD SalaryIDinDocActive tinyint NOT NULL DEFAULT (1) 


if ( COLUMNPROPERTY( OBJECT_ID('Pay.Interdicts'),'HasRetard','IsRowGuidCol')is  null )
ALTER TABLE Pay.Interdicts ADD [HasRetard] tinyint NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.InterdictItems'),'Firstdate','IsRowGuidCol')is  null )
ALTER TABLE Pay.InterdictItems ADD [Firstdate] char(10)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.InterdictItems'),'Enddate','IsRowGuidCol')is  null )
ALTER TABLE Pay.InterdictItems ADD [Enddate] char(10)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.InterdictItems'),'JobScore','IsRowGuidCol')is  null )
ALTER TABLE Pay.InterdictItems ADD JobScore Float


if ( COLUMNPROPERTY( OBJECT_ID('Pay.FixedCalculated'),'MounthRetard','IsRowGuidCol')is  null )
ALTER TABLE Pay.FixedCalculated ADD [MounthRetard] tinyint 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FixedCalculated'),'YearRetard','IsRowGuidCol')is  null )
ALTER TABLE Pay.FixedCalculated ADD [YearRetard] int 




--if (Select COUNT(Uid) from sysusers where Name = 'Util')=0
--begin
--exec sp_grantdbaccess N'FaraUser', N'FaraUser'
--Exec sp_addrole @RoleName = N'Util'  owner_Name    +
--
--end

if  OBJECT_ID('Util')=null
Exec sp_addrole @RoleName = N'Util'
if  OBJECT_ID('dbo.CodesInProcess')=null
Exec sp_changeobjectowner 'dbo.CodesInProcess','Util'


if ( COLUMNPROPERTY( OBJECT_ID('Pay.DecExtItems'),'Rate','IsRowGuidCol')is  null )
ALTER TABLE Pay.DecExtItems ADD Rate money NOT NULL   DEFAULT (0)

if not exists (select * from dbo.sysobjects where id = object_id(N'Util.ScanInfo') and OBJECTPROPERTY(id,
	N'IsUserTable') = 1) begin
Exec sp_changeobjectowner 'dbo.ScanInfo','Util'
Exec sp_changeobjectowner 'dbo.ScanType','Util'
end

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'FirstAmountName','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD [FirstAmountName] varchar (50)  NOT NULL  DEFAULT ('مبلغ اوليه')



if not exists (select * from sysobjects where id = object_id(N'Util.MaliYear') and
	OBJECTPROPERTY(id, N'IsUserTable') = 1)
	begin
	Declare @YearID char(2)
	Set @YearID=(SELECT top 1 SUBSTRING(StartMaliYear, 1, 4) FROM Config)
	Declare @StartYear Char(10)
	Set @StartYear=(SELECT top 1 StartMaliYear FROM Config)
	Declare @EndYear Char(10)
	Set @EndYear=(SELECT top 1 FinishMaliYear FROM Config)
	CREATE TABLE Util.MaliYear (YearID int NOT NULL ,
	StartYear char(10) NULL ,EndYear char(10) NULL ,
	Status tinyint NOT NULL default (0),
	CONSTRAINT PK_MaliYear PRIMARY KEY CLUSTERED ( YearID) ON [PRIMARY] ) ON [PRIMARY]

	INSERT INTO Util.MaliYear (YearID, StartYear, EndYear,Status)
	SELECT @YearID, @StartYear, @EndYear,0 as a

	end          

if not exists (select * from dbo.sysobjects where
	id = object_id(N'Pay.FunctionSpecial') and OBJECTPROPERTY(id,N'IsUserTable') = 1)
	CREATE TABLE Pay.FunctionSpecial (ID int NOT NULL IDENTITY(1,1),
	YearID int NOT NULL ,Year smallint NOT NULL ,Mounth tinyint NOT NULL ,PersonelNo int NOT NULL ,
	FunctionDay float NOT NULL DEFAULT (0),SickDay float NOT NULL DEFAULT (0),
	FunctionTime float NOT NULL DEFAULT (0),OverTime float NOT NULL DEFAULT (0),
	WorkingHoliday float NOT NULL DEFAULT (0),NightWork float NOT NULL DEFAULT (0),
	FractionWorkTime float NOT NULL DEFAULT (0),FractionWorkDay float NOT NULL DEFAULT (0),
	CONSTRAINT PK_FunctionSpecial PRIMARY KEY CLUSTERED (ID) ON [PRIMARY] ,
	CONSTRAINT FK_FunctionSpecial_MaliYear FOREIGN KEY (YearID) REFERENCES Util.MaliYear (YearID) ON DELETE CASCADE
	ON UPDATE CASCADE ,
	CONSTRAINT FK_FunctionSpecial_PersonelInfo FOREIGN KEY (PersonelNo) REFERENCES Pay.PersonelInfo (PersonelNo) ON
	UPDATE CASCADE) ON [PRIMARY]

if not exists (select * from dbo.sysobjects where
	id = object_id(N'Pay.FunctionSpecialControl') and OBJECTPROPERTY(id,N'IsUserTable') = 1)
	CREATE TABLE Pay.FunctionSpecialControl (ID int NOT NULL IDENTITY(1,1),
	YearID int NOT NULL ,ControlDate Char(10) NOT NULL ,PersonelNo int NOT NULL ,
	OfficeCode int ,ProjectID int ,
	CarCode int ,ActivityCode int ,
	ProcCode int ,FunctionKind int ,
	FunctionTime float NOT NULL DEFAULT (0),FunAmount float NOT NULL DEFAULT (0),
	CONSTRAINT PK_FunctionSpecialControl PRIMARY KEY CLUSTERED (ID) ON [PRIMARY] ,
	CONSTRAINT FK_FunctionSpecialControl_MaliYear FOREIGN KEY (YearID) REFERENCES Util.MaliYear (YearID) ON DELETE
	CASCADE ON UPDATE CASCADE ,
	CONSTRAINT FK_FunctionSpecialControl_PersonelInfo FOREIGN KEY (PersonelNo) REFERENCES Pay.PersonelInfo (PersonelNo) ON
	UPDATE CASCADE) ON [PRIMARY]


if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'AccountServerName','IsRowGuidCol')is  null )
ALTER TABLE Pay.Config ADD AccountServerName Nvarchar (50)

	if ( COLUMNPROPERTY( OBJECT_ID('Pay.Interdicts'),'InsuranceStartDate','IsRowGuidCol')is null )
	begin
	ALTER TABLE Pay.Interdicts ADD InsuranceStartDate Char(10) DEFAULT ('')
	ALTER TABLE Pay.Interdicts ADD InsuranceEndDate Char(10) DEFAULT ('')
	end

if ( COLUMNPROPERTY( OBJECT_ID('util.CodesInProcess'),'Ip','IsRowGuidCol')is  null )
ALTER TABLE util.CodesInProcess ADD Ip nvarchar (20)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelDecExt'),'Settlement','IsRowGuidCol')is  null )
ALTER TABLE Pay.PersonelDecExt ADD Settlement money 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'SubDayOfCurrentMonth','IsRowGuidCol')is  null )
ALTER TABLE Pay.Config ADD SubDayOfCurrentMonth tinyint NOT NULL DEFAULT (5)


if ( COLUMNPROPERTY( OBJECT_ID('Pay.Interdicts'),'jobsGroup','IsRowGuidCol')is  null )
ALTER TABLE Pay.Interdicts ADD jobsGroup int


if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'ChkGroupInterdicts','IsRowGuidCol')is  null )
ALTER TABLE Pay.Config ADD ChkGroupInterdicts tinyint NOT NULL DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Interdicts'),'TaxMounth','IsRowGuidCol')is  null )
ALTER TABLE Pay.Interdicts ADD TaxMounth tinyint

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Interdicts'),'TaxDays','IsRowGuidCol')is  null )
ALTER TABLE Pay.Interdicts ADD TaxDays smallint

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Interdicts'),'LastUser','IsRowGuidCol')is  null )  
ALTER TABLE Pay.Interdicts ADD LastUser nvarchar(20) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Interdicts'),'FirstUser','IsRowGuidCol')is  null )  
ALTER TABLE Pay.Interdicts ADD FirstUser nvarchar(20)  



ALTER TABLE Pay.PersonelDecExt ALTER COLUMN FirstMounth int
ALTER TABLE Pay.PersonelDecExt ALTER COLUMN EndMounth int

ALTER TABLE Pay.PersonelDecExt ALTER COLUMN Note_L1 Nvarchar(4000)
ALTER TABLE Pay.PersonelDecExt ALTER COLUMN Note_L2 Nvarchar(4000)

--------------------------------------------------------------------------------------------
IF OBJECT_ID ('TR_ConfigChangeLog_FormInfoItems', 'TR') IS NOT NULL
ALTER TABLE Pay.FormInfoItems  ENABLE TRIGGER TR_ConfigChangeLog_FormInfoItems

IF OBJECT_ID ('TR_ConfigChangeLog_FormsInfo', 'TR') IS NOT NULL 
ALTER TABLE Pay.FormsInfo  ENABLE TRIGGER TR_ConfigChangeLog_FormsInfo

IF OBJECT_ID ('TR_ConfigChangeLog_Functions', 'TR') IS NOT NULL 
ALTER TABLE Pay.Functions   ENABLE TRIGGER TR_ConfigChangeLog_Functions

IF OBJECT_ID ('TR_ConfigChangeLog_FunctionsItems', 'TR') IS NOT NULL 
ALTER TABLE Pay.FunctionsItems  ENABLE TRIGGER TR_ConfigChangeLog_FunctionsItems

IF OBJECT_ID ('TR_ConfigChangeLog_PersonelInfo', 'TR') IS NOT NULL 
ALTER TABLE Pay.PersonelInfo  ENABLE TRIGGER TR_ConfigChangeLog_PersonelInfo

IF OBJECT_ID ('TR_ConfigChangeLog_PersonelDecExt', 'TR') IS NOT NULL 
ALTER TABLE Pay.PersonelDecExt  ENABLE TRIGGER TR_ConfigChangeLog_PersonelDecExt

IF OBJECT_ID ('TR_ConfigChangeLog_PersonelDecExtItem', 'TR') IS NOT NULL 
ALTER TABLE Pay.PersonelDecExtItem  ENABLE TRIGGER TR_ConfigChangeLog_PersonelDecExtItem

IF OBJECT_ID ('TR_ConfigChangeLog_Interdicts', 'TR') IS NOT NULL 
ALTER TABLE Pay.Interdicts  ENABLE TRIGGER TR_ConfigChangeLog_Interdicts

IF OBJECT_ID ('TR_ConfigChangeLog_InterdictItems', 'TR') IS NOT NULL 
ALTER TABLE Pay.InterdictItems  ENABLE TRIGGER TR_ConfigChangeLog_InterdictItems

IF OBJECT_ID ('TR_ConfigChangeLog_InsuranceCONSTinfo', 'TR') IS NOT NULL 
ALTER TABLE Pay.InsuranceCONSTinfo  ENABLE TRIGGER TR_ConfigChangeLog_InsuranceCONSTinfo

IF OBJECT_ID ('TR_ConfigChangeLog_SalaryRange', 'TR') IS NOT NULL 
ALTER TABLE Pay.SalaryRange  ENABLE TRIGGER TR_ConfigChangeLog_SalaryRange
---------------------------------------------------------------------------------------------
if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelDecExt'),'LastUser','IsRowGuidCol')is  null )  
ALTER TABLE Pay.PersonelDecExt ADD LastUser nvarchar(20) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelDecExt'),'FirstUser','IsRowGuidCol')is  null )  
ALTER TABLE Pay.PersonelDecExt ADD FirstUser nvarchar(20)  

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelDecExt'),'DocNoBonus','IsRowGuidCol')is  null )  
ALTER TABLE Pay.PersonelDecExt ADD DocNoBonus int  

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelDecExt'),'DocDateBonus','IsRowGuidCol')is  null )  
ALTER TABLE Pay.PersonelDecExt ADD DocDateBonus char(10)  

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelDecExt'),'DocNoAnnuity','IsRowGuidCol')is  null )  
ALTER TABLE Pay.PersonelDecExt ADD DocNoAnnuity int  

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelDecExt'),'DocDateAnnuity','IsRowGuidCol')is  null )  
ALTER TABLE Pay.PersonelDecExt ADD DocDateAnnuity char(10)  


if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelDecExt'),'NumberOfMonth','IsRowGuidCol')is  null )  
ALTER TABLE Pay.PersonelDecExt ADD NumberOfMonth int   NOT NULL CONSTRAINT DF_PersonelDecExt_NumberOfMonth DEFAULT (0) 


if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelDecExt'),'leaveCount','IsRowGuidCol')is  null )  
ALTER TABLE Pay.PersonelDecExt ADD leaveCount float   


if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelDecExt'),'leavePrice','IsRowGuidCol')is  null )  
ALTER TABLE Pay.PersonelDecExt ADD leavePrice money   NOT NULL CONSTRAINT DF_PersonelDecExt_leavePrice DEFAULT (0) 

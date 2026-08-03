---- UpDateBankAssets  UpdateBank 23   1400/03/24
SET NOCOUNT ON
IF OBJECT_ID ('TR_UpdateAcconting', 'TR') IS NOT NULL 
ALTER TABLE Customers DISABLE TRIGGER [TR_UpdateAcconting]
IF OBJECT_ID ('TR_DeleteAcconting', 'TR') IS NOT NULL 
ALTER TABLE Customers DISABLE TRIGGER [TR_DeleteAcconting]


DECLARE @TABLE_NAME VARCHAR(90) 
DECLARE @COLUMN_NAME VARCHAR(90)
DECLARE @DATA_TYPE VARCHAR(90) 
DECLARE @IS_NULLABLE VARCHAR(90) 
DECLARE @qry VARCHAR(max) 
DECLARE @Length int

--IF   EXISTS (select * from sysindexes WHERE     (name = N'IX_DocGroup'))
--DROP INDEX IX_DocGroup ON Acc.DocGroups


IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_DepTable_MaliYear' AND type = 'F')
ALTER TABLE Assets.DepTable DROP CONSTRAINT FK_DepTable_MaliYear



DECLARE db_cursor CURSOR FOR 
SELECT TABLE_SCHEMA+'.'+ TABLE_NAME AS TABLE_NAME, COLUMN_NAME,DATA_TYPE,inf.CHARACTER_MAXIMUM_LENGTH,IS_NULLABLE FROM INFORMATION_SCHEMA.COLUMNS as inf
INNER JOIN SYSOBJECTS on inf.table_name = SYSOBJECTS.name
WHERE  ((COLUMN_NAME like  N'%date%')or(COLUMN_NAME='StartYear')or(COLUMN_NAME='EndYear')or(COLUMN_NAME='StartMaliYear')or(COLUMN_NAME='FinishMaliYear')) 
   AND (DATA_TYPE like  N'%char%')
   AND (TABLE_NAME <>  N'acc.Contacts')
   
 
 AND OBJECTPROPERTY(SYSOBJECTS.id, N'IsUserTable') = 1
 AND (inf.CHARACTER_MAXIMUM_LENGTH BETWEEN 8 AND 10)--


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
	             ' UPDATE  '+@TABLE_NAME+' set  '+@COLUMN_NAME+' = CASE WHEN '+@COLUMN_NAME+'<''15/12/29'' THEN ''14''+'+@COLUMN_NAME+' ELSE ''13''+'+@COLUMN_NAME+' END
	               WHERE (len('+@COLUMN_NAME+')=8) '
      --print @qry
      exec(@qry)

      FETCH NEXT FROM db_cursor INTO @TABLE_NAME , @COLUMN_NAME ,@DATA_TYPE,@Length,@IS_NULLABLE
END 

CLOSE db_cursor  
DEALLOCATE db_cursor 

--IF NOT  EXISTS (select * from sysindexes WHERE     (name = N'IX_DocGroup'))
--CREATE NONCLUSTERED INDEX IX_DocGroup ON Acc.DocGroups(	DocDate ASC,	PrimaryDocNo ASC,	SecondaryDocNo ASC,	Serial ASC) ON [PRIMARY]

--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------

----select *  From util.MaliYear
if (select COUNT(DISTINCT LEN(YearID))  From util.MaliYear) = 1 
begin

UPDATE  util.MaliYear SET YearID=YearID+cast( 1300 as smallint) WHERE len(YearID)<4

DECLARE db_cursor CURSOR FOR 
SELECT TABLE_SCHEMA+'.'+ TABLE_NAME AS TABLE_NAME, COLUMN_NAME,DATA_TYPE,inf.CHARACTER_MAXIMUM_LENGTH,IS_NULLABLE FROM INFORMATION_SCHEMA.COLUMNS as inf
INNER JOIN SYSOBJECTS on inf.table_name = SYSOBJECTS.name
WHERE  ((COLUMN_NAME like  N'%YearID%'))  and xtype='U'  AND OBJECTPROPERTY(SYSOBJECTS.id, N'IsUserTable') = 1
and ( COLUMN_NAME <>  N'FilterYearIDActive')  and (TABLE_NAME<> N'MaliYear')
and ( COLUMN_NAME <>  N'ActiveYearID')
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

IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_DepTable_MaliYear' AND type = 'F')
if  exists (select * from dbo.sysobjects where id = object_id(N'Assets.DepTable') and OBJECTPROPERTY(id, N'IsUserTable') = 1) 
alter TABLE Assets.DepTable  WITH CHECK ADD  CONSTRAINT FK_DepTable_MaliYear FOREIGN KEY(Yearid)
REFERENCES Util.MaliYear (YearID)
ON UPDATE CASCADE
ON DELETE CASCADE 


if ( COLUMNPROPERTY( OBJECT_ID('Assets.AccTopics'),'AccExpTopicCode','IsRowGuidCol')is  null ) 
if  exists (select * from dbo.sysobjects where id = object_id(N'Assets.AccTopics') and OBJECTPROPERTY(id, N'IsUserTable') = 1) 
Begin  
  ALTER TABLE Assets.AccTopics ADD [AccExpTopicCode] [bigint] NOT NULL  DEFAULT (0)  
  ALTER TABLE Assets.Amval WITH NOCHECK ADD CONSTRAINT FK_Amval_AccTopics FOREIGN KEY ( AccTopicCode ) 
  REFERENCES AccTopics ( AccTopicCode  ) ON UPDATE CASCADE  
end

if not exists (select * from dbo.sysobjects where id = object_id(N'Assets.AssetsKeeper') and OBJECTPROPERTY(id, N'IsUserTable') = 1) 
begin  
  CREATE TABLE Assets.AssetsKeeper ( [KeeperCode] [int] NOT NULL , [KeeperName] [varchar] (80)  NULL , 
  CONSTRAINT [PK_AssetsKeeper] PRIMARY KEY CLUSTERED ( [KeeperCode] ) ON [PRIMARY] ) ON [PRIMARY] 
  INSERT INTO Assets.AssetsKeeper(KeeperCode,KeeperName) VALUES(1,'1')  
end 

if ( COLUMNPROPERTY( OBJECT_ID('Assets.Amval'),'KeeperCode','IsRowGuidCol')is  null )  
begin  
  ALTER TABLE Assets.Amval ADD  KeeperCode int NOT NULL CONSTRAINT DF_Amval_KeeperCode DEFAULT 1 
  ALTER TABLE Assets.Amval ADD CONSTRAINT FK_Amval_AssetsKeeper FOREIGN KEY ( KeeperCode ) 
  REFERENCES AssetsKeeper ( KeeperCode ) ON UPDATE CASCADE  
end  

ALTER TABLE Assets.Decrease DROP CONSTRAINT FK_Decrease_Amval 
ALTER TABLE Assets.Decrease WITH NOCHECK ADD CONSTRAINT FK_Decrease_Amval 
FOREIGN KEY ( SerialNum) REFERENCES Assets.Amval ( SerialNum ) ON UPDATE CASCADE ON DELETE CASCADE 

if((SELECT COLUMNPROPERTY( OBJECT_ID('Assets.DocExports'),'Id','IsIdentity')) = 0) 
begin  
  ALTER TABLE Assets.DocExports DROP CONSTRAINT PK_DocExports  
  ALTER TABLE Assets.DocExports DROP column Id  
  ALTER TABLE Assets.DocExports add ID int identity(1,1)  
  ALTER TABLE Assets.DocExports  ADD CONSTRAINT PK_DocExports PRIMARY KEY (ID)  
end  

if not exists (select * from dbo.sysobjects where id = object_id(N'[Assets].[AssestConstNow]') and OBJECTPROPERTY (id,N'IsUserTable') =1)
  CREATE TABLE Assets.AssestConstNow ( [SerialNum] [int] NOT NULL , [BazaarValue] [money] Not NULL , 
  CONSTRAINT [PK_AssestConstNow] PRIMARY KEY CLUSTERED ( [SerialNum] ) ON [PRIMARY] , 
  CONSTRAINT [FK_AssestConstNow_Amval] FOREIGN KEY ( [SerialNum] ) 
  REFERENCES [Assets].[Amval] ([SerialNum] ) ON DELETE CASCADE ON UPDATE CASCADE ) ON [PRIMARY]  

if ( COLUMNPROPERTY( OBJECT_ID('Assets.AssetsKeeper'),'KeeperDetailCode','IsRowGuidCol')is  null )  
ALTER TABLE Assets.AssetsKeeper ADD [KeeperDetailCode] [int] NOT NULL  DEFAULT (0)   
if ( COLUMNPROPERTY( OBJECT_ID('Assets.Users'),'DetailCode','IsRowGuidCol')is  null )  
ALTER TABLE Assets.Users ADD [DetailCode] [int] NOT NULL  DEFAULT (0)   
if ( COLUMNPROPERTY( OBJECT_ID('Assets.DocExports'),'DocNo','IsRowGuidCol')is  null )  
ALTER TABLE Assets.DocExports ADD DocNo int NOT NULL DEFAULT (0)   
if ( COLUMNPROPERTY( OBJECT_ID('Assets.DocExports'),'DocDate','IsRowGuidCol')is  null )  
ALTER TABLE Assets.DocExports ADD DocDate CHAR(10)  

--if ( COLUMNPROPERTY( OBJECT_ID('Assets.AssetsGroups'),'AccDetailCode','IsRowGuidCol')is null )  
--ALTER TABLE Assets.AssetsGroups ADD AccDetailCode INT NOT NULL DEFAULT (0)  
--if ( COLUMNPROPERTY( OBJECT_ID('Assets.AssetsGroups'),'AccCTopicCode','IsRowGuidCol')is null )  
--ALTER TABLE Assets.AssetsGroups ADD AccCTopicCode INT NOT NULL DEFAULT (0)  
--if ( COLUMNPROPERTY( OBJECT_ID('Assets.AssetsGroups'),'AccCTopicCode2','IsRowGuidCol')is null )  
--ALTER TABLE Assets.AssetsGroups ADD AccCTopicCode2 INT NOT NULL DEFAULT (0)  
--if ( COLUMNPROPERTY( OBJECT_ID('Assets.AssetsGroups'),'AccCTopicCode3','IsRowGuidCol')is null )  
--ALTER TABLE Assets.AssetsGroups ADD AccCTopicCode3 INT NOT NULL DEFAULT (0)


if ( COLUMNPROPERTY( OBJECT_ID('Assets.AccTopics'),'AccCTopicCode','IsRowGuidCol')is null )  
ALTER TABLE Assets.AccTopics ADD AccCTopicCode INT NOT NULL DEFAULT (0)
if ( COLUMNPROPERTY( OBJECT_ID('Assets.AccTopics'),'AccCTopicCode2','IsRowGuidCol')is null )  
ALTER TABLE Assets.AccTopics ADD AccCTopicCode2 INT NOT NULL DEFAULT (0)
if ( COLUMNPROPERTY( OBJECT_ID('Assets.AccTopics'),'AccCTopicCode3','IsRowGuidCol')is null )  
ALTER TABLE Assets.AccTopics ADD AccCTopicCode3 INT NOT NULL DEFAULT (0)
if ( COLUMNPROPERTY( OBJECT_ID('Assets.Config'),'DefaultDocType','IsRowGuidCol')is null )  
ALTER TABLE Assets.Config ADD DefaultDocType INT NOT NULL DEFAULT (10)
if ( COLUMNPROPERTY( OBJECT_ID('Assets.Config'),'SerialNumType','IsRowGuidCol')is null )  
ALTER TABLE Assets.Config ADD SerialNumType TINYINT NOT NULL DEFAULT (0)
if ( COLUMNPROPERTY( OBJECT_ID('Assets.Config'),'ShowAmount','IsRowGuidCol')is null )  
ALTER TABLE Assets.Config ADD ShowAmount TINYINT NOT NULL DEFAULT (0)
if ( COLUMNPROPERTY( OBJECT_ID('Assets.Config'),'AidFieldCaption','IsRowGuidCol')is null )  
ALTER TABLE Assets.Config ADD AidFieldCaption nvarchar(1000) NULL 
if ( COLUMNPROPERTY( OBJECT_ID('Assets.Decrease'),'ProfitTopicCode','IsRowGuidCol')is null )  
ALTER TABLE Assets.Decrease ADD ProfitTopicCode BIGINT NOT NULL DEFAULT (0)
if ( COLUMNPROPERTY( OBJECT_ID('Assets.Decrease'),'ProfitDetailCode','IsRowGuidCol')is null )  
ALTER TABLE Assets.Decrease ADD ProfitDetailCode INT NOT NULL DEFAULT (0)
if ( COLUMNPROPERTY( OBJECT_ID('Assets.Decrease'),'ProfitCTopicCode','IsRowGuidCol')is null )  
ALTER TABLE Assets.Decrease ADD ProfitCTopicCode INT NOT NULL DEFAULT (0)
if ( COLUMNPROPERTY( OBJECT_ID('Assets.Decrease'),'ProfitCTopicCode2','IsRowGuidCol')is null )  
ALTER TABLE Assets.Decrease ADD ProfitCTopicCode2 INT NOT NULL DEFAULT (0)
if ( COLUMNPROPERTY( OBJECT_ID('Assets.AccTopics'),'AccReserveCTopicCode','IsRowGuidCol')is null )  
ALTER TABLE Assets.AccTopics ADD AccReserveCTopicCode INT NOT NULL DEFAULT (0)
if ( COLUMNPROPERTY( OBJECT_ID('Assets.AccTopics'),'AccReserveCTopicCode2','IsRowGuidCol')is null )  
ALTER TABLE Assets.AccTopics ADD AccReserveCTopicCode2 INT NOT NULL DEFAULT (0)
if ( COLUMNPROPERTY( OBJECT_ID('Assets.AccTopics'),'AccReserveCTopicCode3','IsRowGuidCol')is null )  
ALTER TABLE Assets.AccTopics ADD AccReserveCTopicCode3 INT NOT NULL DEFAULT (0)
if ( COLUMNPROPERTY( OBJECT_ID('Assets.AccCtopics'),'AccReserveCTopicCode','IsRowGuidCol')is null )  
ALTER TABLE Assets.AccCtopics ADD AccReserveCTopicCode INT NOT NULL DEFAULT (0)
if ( COLUMNPROPERTY( OBJECT_ID('Assets.AccCtopics'),'AccReserveCTopicCode2','IsRowGuidCol')is null )  
ALTER TABLE Assets.AccCtopics ADD AccReserveCTopicCode2 INT NOT NULL DEFAULT (0)
if ( COLUMNPROPERTY( OBJECT_ID('Assets.AccCtopics'),'AccReserveCTopicCode3','IsRowGuidCol')is null )  
ALTER TABLE Assets.AccCtopics ADD AccReserveCTopicCode3 INT NOT NULL DEFAULT (0)
if ( COLUMNPROPERTY( OBJECT_ID('Assets.Config'),'SerialPelak','IsRowGuidCol')is null )  
ALTER TABLE Assets.Config ADD SerialPelak TINYINT NOT NULL DEFAULT (0)
if ( COLUMNPROPERTY( OBJECT_ID('Assets.Config'),'LevelGroup','IsRowGuidCol')is null )  
ALTER TABLE Assets.Config ADD LevelGroup TINYINT NOT NULL DEFAULT (0) 

--if ( COLUMNPROPERTY( OBJECT_ID('Assets.AssetsGroups'),'PrefixPelak','IsRowGuidCol')is null  )  
--ALTER TABLE Assets.AssetsGroups ADD PrefixPelak varchar(15)  
--if ( COLUMNPROPERTY( OBJECT_ID('Assets.AssetsGroups'),'LevelID','IsRowGuidCol')is null )  
--ALTER TABLE Assets.AssetsGroups ADD LevelID TINYINT NOT NULL DEFAULT (0)
--if ( COLUMNPROPERTY( OBJECT_ID('Assets.AssetsGroups'),'PrvGrpCode','IsRowGuidCol')is null )  
--ALTER TABLE Assets.AssetsGroups ADD PrvGrpCode INT NOT NULL DEFAULT (0)


IF( COLUMNPROPERTY( OBJECT_ID('Assets.DocExports'),'DocType','IsRowGuidCol')IS NULL )  
ALTER TABLE Assets.DocExports ADD DocType TINYINT NOT NULL DEFAULT (0) 
IF( COLUMNPROPERTY( OBJECT_ID('Assets.Movement'),'MoveType','IsRowGuidCol')IS NULL )  
ALTER TABLE Assets.Movement ADD MoveType TINYINT NOT NULL DEFAULT (0)
if (COLUMNPROPERTY( OBJECT_ID('assets.TaxItems'),'OldDepMode','IsRowGuidCol')is null) 
alter table assets.TaxItems add OldDepMode tinyint null
if (COLUMNPROPERTY( OBJECT_ID('assets.TaxItems'),'OldDepValue','IsRowGuidCol')is null)
alter table assets.TaxItems add OldDepValue int null

if ( COLUMNPROPERTY( OBJECT_ID('Assets.Amval'),'AidField1','IsRowGuidCol')is null )
ALTER TABLE Assets.Amval ADD AidField1 nvarchar(100) null
if ( COLUMNPROPERTY( OBJECT_ID('Assets.Amval'),'AidField2','IsRowGuidCol')is null )
ALTER TABLE Assets.Amval ADD AidField2 nvarchar(100) null

set nocount on  
if (Select COUNT(Uid) from sysusers where Name = 'Util')=0  
begin  
  Exec sp_addrole @RoleName = N'Util' ,@ownerName='FaraUser'  
  Exec sp_changeobjectowner 'dbo.CodesInProcess','Util'  
end  

if not exists (select * from sysobjects where id = object_id(N'[Util].[MaliYear]') and  OBJECTPROPERTY(id, N'IsUserTable') = 1) 
if  exists (select * from sysobjects where id = object_id(N'[dbo].[MaliYear]') and  OBJECTPROPERTY(id, N'IsUserTable') = 1) 
Exec sp_changeobjectowner 'dbo.MaliYear','Util'  
if not exists (select * from sysobjects where id = object_id(N'[Util].[MaliYear]') and  OBJECTPROPERTY(id, N'IsUserTable') = 1)  
begin  
	Declare @YearID char(2)  Set @YearID=(SELECT top 1 SUBSTRING(BaseDate, 0, 3) 
	FROM Assets.Config)  
	Declare @StartYear Char(10)  
	Set @StartYear=(SELECT top 1 SUBSTRING(BaseDate, 0, 3)+FirstDayMaliYear FROM Assets.Config)  
	Declare @EndYear Char(10)  
	Set @EndYear=(SELECT top 1 SUBSTRING(BaseDate, 0, 3)+EndDayMaliYear FROM Assets.Config)  
	CREATE TABLE [Util].[MaliYear] (  [YearID] int NOT NULL ,  [StartYear] char(10) NULL ,  [EndYear] char(10) NULL , 
	 [Status] Tinyint NOT NULL default (0),  
	 CONSTRAINT [PK_MaliYear] PRIMARY KEY CLUSTERED ( [YearID]) ON [PRIMARY] ) ON [PRIMARY]  
	 INSERT INTO Util.MaliYear (YearID, StartYear, EndYear,Status)  select @YearID, @StartYear, @EndYear,0 as a  
end 
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'[Assets].[DepTable]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)  
 CREATE TABLE [Assets].[DepTable]( [ID] [int] IDENTITY(1,1) NOT NULL,	
 [Serial] [int] NOT NULL, [Yearid] [int] NOT NULL, [Tablename] [nvarchar](50) NOT NULL,
  [Id4table] [int] NOT NULL, [FirstDepValue] [money] NOT NULL CONSTRAINT [DF_DepTable_FirstDepValue]  DEFAULT (0),
   [DepvalueInyear] [money] NOT NULL CONSTRAINT [DF_DepTable_DepvalueInyear]  DEFAULT (0),
    CONSTRAINT [PK_DepTable] PRIMARY KEY CLUSTERED ([Serial] ASC,[Yearid] ASC,
	[Tablename] ASC,	[Id4table] ASC)  ON [PRIMARY] ) ON [PRIMARY]   

 if ( COLUMNPROPERTY( OBJECT_ID('Assets.Config'),'StartLimitID','IsRowGuidCol')is null ) 
 ALTER TABLE Assets.Config ADD StartLimitID int NOT NULL CONSTRAINT DF_Config_StartLimitID DEFAULT (1) 

 if ( COLUMNPROPERTY( OBJECT_ID('Assets.Config'),'EndLimitID','IsRowGuidCol')is null ) 
 ALTER TABLE Assets.Config ADD EndLimitID int NOT NULL CONSTRAINT DF_Config_EndLimitID DEFAULT (2147483647) 



if ( COLUMNPROPERTY( OBJECT_ID('Assets.AssestConstNow'),'YearID','IsRowGuidCol')is  null )  
begin  
  ALTER TABLE Assets.AssestConstNow ADD  YearID int 
  ALTER TABLE Assets.AssestConstNow ADD CONSTRAINT FK_AssestConstNow_MaliYear FOREIGN KEY ( YearID ) 
  REFERENCES Util.MaliYear ( YearID ) ON UPDATE CASCADE  
end  

if ( COLUMNPROPERTY( OBJECT_ID('Assets.AssetsKeeper'),'Mobile','IsRowGuidCol')is  null )  
ALTER TABLE Assets.AssetsKeeper ADD  Mobile varchar(20) 

if ( COLUMNPROPERTY( OBJECT_ID('Assets.AssetsKeeper'),'Email','IsRowGuidCol')is  null )  
ALTER TABLE Assets.AssetsKeeper ADD  Email  nvarchar(100)  


if ( COLUMNPROPERTY( OBJECT_ID('Assets.Users'),'Mobile','IsRowGuidCol')is  null )  
ALTER TABLE Assets.Users ADD  Mobile varchar(20) 

if ( COLUMNPROPERTY( OBJECT_ID('Assets.Users'),'Email','IsRowGuidCol')is  null )  
ALTER TABLE Assets.Users ADD  Email  nvarchar(100)  

if ( COLUMNPROPERTY( OBJECT_ID('Assets.Amval'),'StartWarrantyDate','IsRowGuidCol')is  null )  
ALTER TABLE Assets.Amval ADD  StartWarrantyDate char(10)

if ( COLUMNPROPERTY( OBJECT_ID('Assets.Amval'),'CompanyID','IsRowGuidCol')is  null )  
ALTER TABLE Assets.Amval ADD  CompanyID int not null default (0)

if ( COLUMNPROPERTY( OBJECT_ID('Assets.DepTable'),'CompanyID','IsRowGuidCol')is  null )  
ALTER TABLE Assets.DepTable ADD  CompanyID int not null default (0)

if ( COLUMNPROPERTY( OBJECT_ID('Assets.Amval'),'AmvalCount','IsRowGuidCol')is not null )
ALTER TABLE Assets.Amval drop column  AmvalCount

IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE (TABLE_NAME = N'Util.CodesInProcess') AND (COLUMN_NAME = N'UserID') AND (DATA_TYPE='int'))
ALTER TABLE Util.CodesInProcess ALTER column UserID int

if not exists (select * from sysobjects where id = object_id(N'[Util].[scantype]') and  OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE [Util].[ScanType](
	[ScanType] [int] NOT NULL,
	[ScanTypeName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ScanType] PRIMARY KEY CLUSTERED 
(
	[ScanType] ASC
) ON [PRIMARY]
) ON [PRIMARY]

if exists (select * from sysobjects where id = object_id(N'[Assets].[scantype]') and  OBJECTPROPERTY(id, N'IsUserTable') = 1)
begin
insert into Util.ScanType (ScanType, ScanTypeName)
select ScanType, ScanTypeName from Assets.ScanType where ScanType not in (select ScanType from Util.ScanType)

exec sp_rename 'assets.scantype', 'scantype_old'
end

if not exists (select * from sysobjects where id = object_id(N'[Util].[ScanInfo]') and  OBJECTPROPERTY(id, N'IsUserTable') = 1)
begin
CREATE TABLE [Util].[ScanInfo](
	[ScanType] [int] NOT NULL,
	[ScanInfoID] [int] NOT NULL,
	[ScanInfoName] [varchar](100) NOT NULL,
 CONSTRAINT [PK_ScanInfo] PRIMARY KEY CLUSTERED 
(
	[ScanType] ASC,
	[ScanInfoID] ASC
) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [Util].[ScanInfo]  WITH CHECK ADD  CONSTRAINT [FK_ScanInfo_ScanType] FOREIGN KEY([ScanType])
REFERENCES [Util].[ScanType] ([ScanType])
ON UPDATE CASCADE
ON DELETE CASCADE
end 

if exists (select * from sysobjects where id = object_id(N'[Assets].[ScanInfo]') and  OBJECTPROPERTY(id, N'IsUserTable') = 1)
begin
insert into Util.ScanInfo (ScanType, ScanInfoID, ScanInfoName)
select ai.ScanType, ai.ScanInfoID, ai.ScanInfoName from Assets.ScanInfo as ai left outer join
	Util.ScanInfo as us on ai.ScanType = us.ScanType and ai.ScanInfoID = us.ScanInfoID
		where us.ScanType is null and us.ScanInfoID is null

exec sp_rename 'assets.ScanInfo', 'ScanInfo_old'
end

if not exists (select * from sysobjects where id = object_id(N'Assets.DepTableCo') and  OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Assets.DepTableCo(
	SerialNum int NOT NULL,
	Yearid int NOT NULL,
	DepCoValue float NOT NULL, 
	CONSTRAINT FK_DepTableCo_Amval FOREIGN KEY(SerialNum)REFERENCES Assets.Amval (SerialNum)ON UPDATE CASCADE ON DELETE CASCADE , 
	CONSTRAINT FK_DepTableCo_MaliYear FOREIGN KEY(Yearid)REFERENCES Util.MaliYear (YearID)ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT PK_DepTableCo PRIMARY KEY CLUSTERED (	SerialNum ASC,	Yearid ASC) ON [PRIMARY]) ON [PRIMARY]


if ( COLUMNPROPERTY( OBJECT_ID('Assets.Amval'),'Comments','IsRowGuidCol')is  null )
alter table Assets.Amval add Comments varchar(6000) null
--------------------------------------------------------------------------------------------
IF OBJECT_ID ('[Assets].[TR_ConfigChangeLog_Amval]', 'TR') IS NOT NULL 
ALTER TABLE Assets.Amval DISABLE TRIGGER TR_ConfigChangeLog_Amval 

UPDATE Assets.Amval SET Amount=1 WHERE Amount=0
if (SELECT left(cast(SERVERPROPERTY('productversion') as varchar(25)), 1))<>8
if not ( SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS WHERE      (TABLE_NAME = N'amval') 
    AND (COLUMN_NAME = N'Comments') )='varchar'
alter table Assets.Amval alter column Comments varchar(6000) null
--begin
--if object_id('tempdb..##assets2000') is not null
--drop table ##assets2000
--declare @ttt int
--set @ttt = 1
--if exists (select * from Assets.Amval where (Comments is not null))
--begin
--select SerialNum,Comments into ##assets2000 from Assets.Amval where Comments is not null
--set @ttt = 2
--end
--alter table Assets.Amval drop column Comments
--alter table Assets.Amval add Comments varchar(6000) null
--if (@ttt = 2)
--update Assets.Amval set Comments = tt.Comments
--from Assets.Amval inner join ##assets2000 as tt on Assets.Amval.SerialNum = tt.SerialNum
--end

IF OBJECT_ID ('[Assets].[TR_ConfigChangeLog_Amval]', 'TR') IS NOT NULL 
ALTER TABLE Assets.Amval ENABLE TRIGGER TR_ConfigChangeLog_Amval 
---------------------------------------------------------------------------------------------
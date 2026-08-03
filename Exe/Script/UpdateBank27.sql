----4---     1402/01/19  Pay Active تاریخ
SET NOCOUNT ON
----------------------------------------------------------------------------------------------------------
IF OBJECT_ID ('TR_ConfigChangeLog_FormInfoItems', 'TR') IS NOT NULL
ALTER TABLE Pay.FormInfoItems  DISABLE TRIGGER TR_ConfigChangeLog_FormInfoItems

IF OBJECT_ID ('TR_ConfigChangeLog_FormsInfo', 'TR') IS NOT NULL 
ALTER TABLE Pay.FormsInfo  DISABLE TRIGGER TR_ConfigChangeLog_FormsInfo

IF OBJECT_ID ('TR_ConfigChangeLog_Functions', 'TR') IS NOT NULL 
ALTER TABLE Pay.Functions   DISABLE TRIGGER TR_ConfigChangeLog_Functions

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


ALTER TABLE Pay.PersonelAccounts ALTER COLUMN AccountNumber_Pa  varchar (30)
ALTER TABLE Pay.PersonelInfo ALTER COLUMN AccountNumber  varchar (30)

ALTER TABLE Pay.PersonelDecExt ALTER COLUMN AidNo1  varchar (30)
ALTER TABLE Pay.PersonelDecExt ALTER COLUMN AidNo2  varchar (30)

ALTER TABLE Pay.InsuranceCONSTinfo ALTER COLUMN MON_PYM  varchar (10)


--IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
--                WHERE        (TABLE_NAME = N'Pay.FormsInfo') AND (COLUMN_NAME = N'AccTopicCode') AND (DATA_TYPE = N'bigint'))
-- ALTER TABLE Pay.FormsInfo	ALTER COLUMN AccTopicCode BIGINT 



if  exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Analyze]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 Drop TABLE [dbo].[Analyze]
 
 if not exists (select * from dbo.sysobjects where id = object_id(N'Util.Analyze') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
begin
CREATE TABLE Util.Analyze(ID int NOT NULL,TableKind int NOT NULL,CaptionName nvarchar(50) NOT NULL,
FieldName varchar(50) NOT NULL,	TableName varchar(250) NULL,
TopicName varchar(50) NULL,	AliasName varchar(50) NULL,
JoinFieldName varchar(50) NULL,	CONSTRAINT PK_Analyze PRIMARY KEY CLUSTERED
(ID ASC,TableKind ASC )	) ON [PRIMARY]
end
 
 if not exists (select * from dbo.sysobjects where id = object_id(N'Util.AnalyzeItems') and
 OBJECTPROPERTY(id, N'IsUserTable') = 1)
 CREATE TABLE Util.AnalyzeItems(
 ID int NOT NULL,
 FieldName nvarchar(50) NOT NULL,
 DisPlayName nvarchar(50) NOT NULL,
 Kind Tinyint NOT NULL,
 CONSTRAINT PK_AnalyzeItems PRIMARY KEY CLUSTERED (ID ASC) ON [PRIMARY]) ON [PRIMARY]
 
  if not exists (select * from dbo.sysobjects where id = object_id(N'Pay.TaxInfo') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
begin
CREATE TABLE Pay.TaxInfo(
 YearID int NOT NULL ,
 Mounth int NOT NULL,

 PayKind int NOT NULL,
 Branch int ,
 PostDate char(10) NOT NULL,
 Bank int ,
 TaxCheakDate char(10) ,
 TaxBranch varchar(50) ,
 TaxAccountNum char(20) ,
 TaxCheckSerial char(10) , 

 PaymentsCasesDate char(10) NOT NULL,
 PaymentsCases money NOT NULL CONSTRAINT DF_TaxInfo_PaymentsCases DEFAULT (0) ,

 Penalties4NonSubmission money NOT NULL CONSTRAINT DF_TaxInfo_Penalties4NonSubmission DEFAULT (0) ,
 Penalties4NonPay money NOT NULL CONSTRAINT DF_TaxInfo_Penalties4NonPay DEFAULT (0) ,
 Penalties4NonSubmissionLast money NOT NULL CONSTRAINT DF_TaxInfo_Penalties4NonSubmissionLast DEFAULT (0) ,
 Penalties4NonPayLast money NOT NULL CONSTRAINT DF_TaxInfo_Penalties4NonPayLast DEFAULT (0) ,

 SalarieLastMonth money NOT NULL CONSTRAINT DF_TaxInfo_SalarieLastMonth DEFAULT (0) ,
 SalarieBonusesLastMonth money NOT NULL CONSTRAINT DF_TaxInfo_SalarieBonusesLastMonth DEFAULT (0) ,
 TaxLastMonth money NOT NULL CONSTRAINT DF_TaxInfo_TaxLastMonth DEFAULT (0) ,
 TaxDebtLastMonth money NOT NULL CONSTRAINT DF_TaxDebtLastMonth DEFAULT (0) , 
 Paragraph int  NOT NULL CONSTRAINT DF_TaxInfo_Paragraph DEFAULT (85),
 
 CONSTRAINT PK_TaxInfo PRIMARY KEY CLUSTERED (YearID ASC,Mounth ASC ,Paragraph ASC )	) ON [PRIMARY]
end


if ( COLUMNPROPERTY( OBJECT_ID('Pay.TaxInfo'),'Paragraph','IsRowGuidCol')is  null )  
begin
  ALTER TABLE  Pay.TaxInfo ADD Paragraph int  NOT NULL CONSTRAINT DF_TaxInfo_Paragraph DEFAULT (85)
  IF EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_TaxInfo' AND type = 'K')
     ALTER TABLE  Pay.TaxInfo	DROP CONSTRAINT PK_TaxInfo
end

 IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_TaxInfo' AND type = 'K')
 ALTER TABLE  Pay.TaxInfo ADD CONSTRAINT PK_TaxInfo PRIMARY KEY CLUSTERED (YearID ASC,Mounth ASC ,Paragraph ASC) ON [PRIMARY]



IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE       (TABLE_NAME = N'TaxInfo') AND (COLUMN_NAME = N'TaxBranch') AND (DATA_TYPE='varchar') AND (CHARACTER_MAXIMUM_LENGTH =50 ))
   ALTER TABLE  Pay.TaxInfo ALTER COLUMN TaxBranch VARCHAR(50)

if not exists (select * from dbo.sysobjects where id = object_id(N'Pay.WageFormula') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
begin
CREATE TABLE  Pay.WageFormula(
	SalaryID int NOT NULL,
	YearFrom int NOT NULL ,
	MounthFrom tinyint NOT NULL ,
	YearTo int NOT NULL ,
	MounthTo tinyint NOT NULL ,
--	AmountFrom money  CONSTRAINT DF_WageFormula_AmountFrom DEFAULT (0) NOT NULL ,
--	AmountTo money CONSTRAINT  DF_WageFormula_AmountTo DEFAULT (922337203685477) NOT NULL,
	SQLCalc varchar(8000) NULL,
	WhereSQLCalc varchar(8000) NULL,
	Note nvarchar(2000) NULL,
 CONSTRAINT FK_WageFormula_FormsInfoFormInfoID FOREIGN KEY(SalaryID)REFERENCES  Pay.FormsInfo (FormInfoID)ON DELETE CASCADE ON UPDATE CASCADE,
 CONSTRAINT PK_WageFormula PRIMARY KEY CLUSTERED (SalaryID ,MounthFrom,YearFrom) ON [PRIMARY]) ON [PRIMARY]
end


IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS WHERE  (TABLE_NAME = N'Pay.WageFormula') AND (COLUMN_NAME = N'YearFrom') AND (DATA_TYPE = N'int'))
begin
IF EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_WageFormula' AND type = 'K')
 ALTER TABLE  Pay.WageFormula	DROP CONSTRAINT PK_WageFormula
 
alter TABLE  Pay.WageFormula  alter column YearFrom int  not null
alter TABLE  Pay.WageFormula  alter column YearTo   int  not null


end
IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_WageFormula' AND type = 'K')
  ALTER TABLE  Pay.WageFormula ADD  CONSTRAINT PK_WageFormula PRIMARY KEY CLUSTERED (	SalaryID ASC,	MounthFrom ASC,	YearFrom ASC) ON [PRIMARY]

if ( COLUMNPROPERTY( OBJECT_ID('Pay.WageFormula'),'RunOrder','IsRowGuidCol')is  null )  
ALTER TABLE  Pay.WageFormula ADD RunOrder tinyint NOT NULL  CONSTRAINT DF_WageFormula_RunOrder DEFAULT 1


if not exists (select * from dbo.sysobjects where id = object_id(N'Pay.PonyDebitCredits') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE  Pay.PonyDebitCredits(
	PonyDebitCreditsID int IDENTITY(1,1) NOT NULL,
	PonyID int NOT NULL,
	PonyNote Nvarchar(300)  NOT NULL,
	Amount money NOT NULL CONSTRAINT DF_PonyDebitCredits_Amount  DEFAULT (0),
	CONSTRAINT FK_PonyDebitCredits_Ponys FOREIGN KEY(PonyID) REFERENCES Pay.Pony (PonyID) ON UPDATE CASCADE ON DELETE CASCADE ,
    CONSTRAINT PK_PonyDebitCredits PRIMARY KEY CLUSTERED (	PonyDebitCreditsID ASC) ON [PRIMARY]) ON [PRIMARY]


if not exists (select * from dbo.sysobjects where id = object_id(N'Pay.PonyArchives') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE  Pay.PonyArchives(
	PonyArchivesID int IDENTITY(1,1) NOT NULL,
	PonyID int NOT NULL,
	PonyKind Tinyint NOT NULL,

	ExtraCode int ,
	ExtraCaptin nvarchar(300) ,
	ExtraAmount money NOT NULL CONSTRAINT DF_PonyArchives_Amount  DEFAULT (0) ,

	Mounth float ,
	SumFunctionDay float ,
	Price money NOT NULL CONSTRAINT DF_PonyArchives_Price  DEFAULT (0) ,


	CONSTRAINT FK_PonyArchives_Ponys FOREIGN KEY(PonyID) REFERENCES Pay.Pony (PonyID) ON UPDATE CASCADE ON DELETE CASCADE,
   CONSTRAINT PK_PonyArchives PRIMARY KEY CLUSTERED (	PonyArchivesID ASC) ON [PRIMARY]) ON [PRIMARY]


if not exists (select * from dbo.sysobjects where id = object_id(N'Pay.jobsSalaryRanges') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Pay.jobsSalaryRanges(
 jobCode int NOT NULL,
 SalaryID int NOT NULL,
 Amount money NOT NULL,
 CONSTRAINT FK_jobsSalaryRanges_jobCode FOREIGN KEY(jobCode) REFERENCES Pay.jobs (jobCode)  ON DELETE CASCADE ,
 CONSTRAINT FK_jobsSalaryRanges_FormsInfo FOREIGN KEY(SalaryID) REFERENCES Pay.FormsInfo (FormInfoID) ON UPDATE CASCADE ON DELETE CASCADE ,
 CONSTRAINT [PK_jobsSalaryRanges] PRIMARY KEY CLUSTERED (jobCode,SalaryID) ON [PRIMARY]) ON [PRIMARY]



 if (Select Count(*) From Util.Analyze WHERE    (TableKind = 4)  )=0
begin
DELETE From Util.Analyze
INSERT INTO Util.Analyze(ID,TableKind,CaptionName,FieldName,TableName,TopicName,AliasName,JoinFieldName)
SELECT 1,1,N'ماه','SUBSTRING(FunctionSpecialControl.ControlDate,6,2)','Pay.Months','Name','Months','MonthID'
	UNION ALL
SELECT 2,1,N'سال‏','Pay.FunctionSpecialControl.YearID','Util.MaliYear','','Y','YearID'
	UNION ALL
SELECT 3,1,N'روز','SUBSTRING(FunctionSpecialControl.ControlDate,9,2)',NULL,'','',''
	UNION ALL
SELECT 4,1,N'واحد سازماني','FunctionSpecialControl.OfficeCode','(SELECT InfoID, InfoName_L1 as OfficeName FROM pay.FormsInfo WHERE FormType = 12)','OfficeName','Office','InfoID'
	UNION ALL
SELECT 5,1,N'كد پرسنل','Pay.FunctionSpecialControl.PersonelNo','Pay.PersonelInfo','name_L1+'' ''+lastName_L1','C1','PersonelNo'	
	UNION ALL
SELECT 6,1,N'كد پروژه','FunctionSpecialControl.ProjectID','(SELECT InfoID, InfoName_L1 as ProjectName FROM pay.FormsInfo WHERE FormType  in(39,40,41) )','ProjectName','Project','InfoID'
	UNION ALL
SELECT 7,1,N'كد خودرو','FunctionSpecialControl.CarCode','(SELECT InfoID, InfoName_L1 as CarName FROM pay.FormsInfo WHERE FormType = 96)','CarName','Car','InfoID'
	UNION ALL
SELECT 8,1,N'كد محصول','FunctionSpecialControl.ProcCode','(SELECT InfoID, InfoName_L1 as ProcName FROM pay.FormsInfo WHERE FormType = 67)','ProcName','Procs','InfoID'
	UNION ALL
SELECT 9,1,N'كد فعاليت','FunctionSpecialControl.ActivityCode','(SELECT InfoID, InfoName_L1 as ActivityName FROM pay.FormsInfo WHERE FormType = 66)','ActivityName','Activity','InfoID'
	UNION ALL
SELECT 10,1,N'نوع كاركرد','FunctionSpecialControl.FunctionKind','(SELECT InfoID, InfoName_L1 as FunctionKindName FROM pay.FormsInfo WHERE FormType = 70)','FunctionKindName','FunctionKinds','InfoID'
	
UNION ALL

SELECT 1,2,N'واحد سازماني','FormsInfo.InfoID', 'Pay.FormsInfo',  'InfoName_L1',NULL,'نمي خواد'
	UNION ALL
SELECT 2,2,N'سال‏','SUBSTRING( FunctionDay.FunDate,1,4)','Util.MaliYear','StartYear+''تا''+EndYear','Y','YearID'
	UNION ALL
SELECT 3,2,N'ماه','SUBSTRING( FunctionDay.FunDate,6,2)','Pay.Months','Name','Months','MonthID'
	UNION ALL
SELECT 4,2,N'روز','SUBSTRING( FunctionDay.FunDate,9,2)',NULL,'','',''
	UNION ALL
SELECT 5,2,N'كد پرسنل','Pay.FunctionDayItems.PersonelNo','Pay.PersonelInfo','name_L1+'' ''+lastName_L1','C1','PersonelNo'	
	UNION ALL
SELECT 6,2,N'كد حضور','FunctionDayItems.PeresentID','(SELECT InfoID, InfoName_L1 as PeresentName FROM pay.FormsInfo WHERE FormType = 64)','PeresentName','Peresents','InfoID'
	UNION ALL
SELECT 7,2,N'كد شيفت','FunctionDayItems.ShiftNo','(SELECT InfoID, InfoName_L1 as ShiftName FROM pay.FormsInfo WHERE FormType = 65)','ShiftName','Shifts','InfoID'
	UNION ALL
SELECT 8,2,N'نوع كار','FunctionDayItems.WorkID','(SELECT InfoID, InfoName_L1 as WorkName FROM pay.FormsInfo WHERE FormType = 66)','WorkName','WorkIDs','InfoID'
	UNION ALL
SELECT 9,2,N'كد زمين','FunctionDayItems.EarthCode','(SELECT InfoID, InfoName_L1 as EarthName pay.FROM FormsInfo WHERE FormType = 69)','EarthName','Earths','InfoID'
	UNION ALL
SELECT 10,2,N'كد محصول','FunctionDayItems.ProcCode','(SELECT InfoID, InfoName_L1 as ProcName pay.FROM FormsInfo WHERE FormType = 67)','ProcName','Procs','InfoID'

UNION ALL

SELECT 1,3,N'كد پرسنل','Rpt_Comprasion2.PersonelNo','Pay.PersonelInfo','name_L1+'' ''+lastName_L1','C1','PersonelNo'	
	UNION ALL
SELECT 2,3,N'واحد سازماني','Rpt_Comprasion2.OfficeCode','(SELECT InfoID, InfoName_L1 as OfficeName FROM pay.FormsInfo WHERE FormType = 12)','OfficeName','Office','InfoID'
	UNION ALL
SELECT 3,3,N'كد پروژه','Rpt_Comprasion2.ProjectCode','(SELECT InfoID, InfoName_L1 as ProjectName FROM pay.FormsInfo WHERE FormType  in(39,40,41) )','ProjectName','Project','InfoID'
	UNION ALL
SELECT 4,3,N'كد شغل','Rpt_Comprasion2.JobCode','(SELECT InfoID, InfoName_L1 as JobName FROM pay.FormsInfo WHERE FormType = 13)','JobName','Job','InfoID'
	UNION ALL
SELECT 5,3,N'نوع مزايا','Rpt_Comprasion2.SalaryID','(SELECT FormInfoID, InfoName_L1  FROM pay.FormsInfo )','InfoName_L1','FormsInfo','FormInfoID'
	UNION ALL
SELECT 6,3,N'ماه','Rpt_Comprasion2.Mounth','Pay.Months','Name','Months','MonthID'
	UNION ALL
SELECT 7,3,N'سال‏','Rpt_Comprasion2.YearID','Util.MaliYear','StartYear+''تا''+EndYear','Y','YearID'
	UNION ALL
 SELECT 8, 3, N'حساب', N'Rpt_Comprasion2.AccTopicCode', N'%W%.Acc.Categories', N'MoeenName_L1', N'FT1', N'TopicCode'
 UNION ALL
 SELECT 9, 3, N'تفصیلی', N'Rpt_Comprasion2.AccDetailCode', N'%W%.Acc.Details', N'DetailName_L1', N'FD', N'DetailCode'
 UNION ALL
 SELECT 10, 3, N'م‏ه1', N'Rpt_Comprasion2.AccCTopicCode', N'%W%.Acc.CenterTopics', N'CTopicName_L1', N'FCT1', N'CTopicCode'
 UNION ALL
 SELECT 11, 3, N'م‏ه2', N'Rpt_Comprasion2.AccCTopicCode2', N'%W%.Acc.CenterTopics2', N'CTopicName2_L1', N'FCT2', N'CTopicCode2'
 UNION ALL
 SELECT 12, 3, N'م‏ه3', N'Rpt_Comprasion2.AccCTopicCode3', N'%W%.Acc.CTopicCode3', N'CTopicName3_L1', N'FCT3', N'CTopicCode3'
	UNION ALL
SELECT 13,3,N'كد محصول','Rpt_Comprasion2.ProcCode','(SELECT InfoID, InfoName_L1 as ProcName FROM pay.FormsInfo WHERE FormType = 67)','ProcName','Procs','InfoID'


UNION ALL

SELECT 1,4,N'كد پرسنل','Rpt_ProjectCostPrice.PersonelNo','Pay.PersonelInfo','name_L1+'' ''+C1.lastName_L1','C1','PersonelNo'	
	UNION ALL
SELECT 2,4,N'واحد سازماني','Rpt_ProjectCostPrice.OfficeCode','(SELECT InfoID, InfoName_L1 as OfficeName FROM pay.FormsInfo WHERE FormType = 12)','OfficeName','Office','InfoID'
	UNION ALL
SELECT 3,4,N'كد پروژه','Rpt_ProjectCostPrice.ProjectID','(SELECT InfoID, InfoName_L1 as ProjectName FROM pay.FormsInfo WHERE FormType in(39,40,41) )','ProjectName','Project','InfoID'
	UNION ALL
SELECT 4,4,N'كد شغل','Rpt_ProjectCostPrice.JobCode','(SELECT InfoID, InfoName_L1 as JobName FROM pay.FormsInfo WHERE FormType = 13)','JobName','Job','InfoID'
	UNION ALL
SELECT 5,4,N'ماه','Rpt_ProjectCostPrice.Mounth','Pay.Months','Name','Months','MonthID'

end


--if (  OBJECT_ID('FK_GetRptColumns_GetRptConstColumns') is  null )
--ALTER TABLE Pay.GetRptColumns ADD  CONSTRAINT FK_GetRptColumns_GetRptConstColumns FOREIGN KEY(ConstID)
--REFERENCES Pay.GetRptConstColumns (ConstID) ON UPDATE CASCADE

if not(  OBJECT_ID('FK_GetRptColumns_GetRptConstColumns') is  null )
ALTER TABLE Pay.GetRptColumns DROP   CONSTRAINT FK_GetRptColumns_GetRptConstColumns 


--SELECT        'SELECT ' + LTRIM(STR(ConstID)) + ',' AS Expr1, '''' + ColumnsName + '''' AS Expr2, ',''' + Alias + '''' AS Expr3, ',N''' + ColumnsCaption + '''' AS Expr4, 
--                         ',''' + TabelName + ''',' AS Expr5, LTRIM(STR(IsOutPut)) + ',' AS Expr6, LTRIM(STR(GroupBy)) AS Expr7, ' UNION ALL ' AS Expr8
--FROM            GetRptConstColumns



if (Select Count(*) From Pay.GetRptConstColumns  ) < 76
begin
DELETE From Pay.GetRptConstColumns 
INSERT INTO Pay.GetRptConstColumns(ConstID, ColumnsName, Alias, ColumnsCaption, TabelName, IsOutPut, GroupBy)
SELECT 1,	'PersonelNo'	,''	,N'ش. پرسنل'	,'Pay.PersonelInfo',	1,	0	 UNION ALL 
SELECT 2,	'Mobile'	,''	,N'موبايل'	,'Pay.PersonelInfo',	1,	0	 UNION ALL 
SELECT 3,	'PersonelInfo.name_L1 + '' '' + PersonelInfo.lastName_L1'	,'PersonName'	,N'نام پرسنل'	,'',	1,	0	 UNION ALL 
SELECT 4,	'fatherName_L1'	,''	,N'نام پدر'	,'Pay.PersonelInfo',	1,	0	 UNION ALL 
SELECT 5,	'name_L1'	,''	,N'نام'	,'Pay.PersonelInfo',	1,	0	 UNION ALL 
SELECT 6,	'lastName_L1'	,''	,N'نام خانوادگي'	,'Pay.PersonelInfo',	1,	0	 UNION ALL 
SELECT 7,	'NationalID'	,''	,N'كد ملي'	,'Pay.PersonelInfo',	1,	0	 UNION ALL 
SELECT 8,	'''13'' + LEFT (PersonelInfo.BirthDate, 2)'	,'BirthYear'	,N'سال تولد'	,'',	1,	0	 UNION ALL 
SELECT 9,	'InfoID'	,'sexID'	,N'كد جنسيت'	,'FormsInfo_sex',	1,	0	 UNION ALL 
SELECT 10,	'InfoName_L1'	,'sexName'	,N'جنسيت'	,'FormsInfo_sex',	1,	0	 UNION ALL 
SELECT 11,	'InfoID'	,'marriageID'	,N'كد تاهل'	,'FormsInfo_marriage',	1,	0	 UNION ALL 
SELECT 12,	'InfoName_L1'	,'marriageName'	,N'تاهل'	,'FormsInfo_marriage',	1,	0	 UNION ALL 
SELECT 13,	'InfoID'	,'childNumberID'	,N'كد فرزند'	,'FormsInfo_childNumber',	1,	0	 UNION ALL 
SELECT 14,	'InfoName_L1'	,'childNumberName'	,N'تعداد فرزند'	,'FormsInfo_childNumber',	1,	0	 UNION ALL 
SELECT 15,	'InfoID'	,'EmployTypeID'	,N'كد نوع استخدام'	,'FormsInfo_EmployTypeID',	1,	0	 UNION ALL 
SELECT 16,	'InfoName_L1'	,'EmployTypeName'	,N'نوع استخدام'	,'FormsInfo_EmployTypeID',	1,	0	 UNION ALL 
SELECT 17,	'InfoID'	,'LicenceCode'	,N'كد مدرك تحصيلي'	,'FormsInfo_LicenceCode',	1,	0	 UNION ALL 
SELECT 18,	'InfoName_L1'	,'LicenceName'	,N'مدرك تحصيلي'	,'FormsInfo_LicenceCode',	1,	0	 UNION ALL 
SELECT 19,	'InfoID'	,'TaxCalculationTypeID'	,N'كد ماليات'	,'FormsInfo_TaxCalculationType',	1,	0	 UNION ALL 
SELECT 20,	'InfoName_L1'	,'TaxCalculationTypeName'	,N'ماليات'	,'FormsInfo_TaxCalculationType',	1,	0	 UNION ALL 
SELECT 21,	'insurancename'	,''	,N'بيمه'	,'InsuranceCONSTinfo_Interdicts',	1,	0	 UNION ALL 
SELECT 22,	'InfoID'	,'insuranceCode'	,N'كد بيمه'	,'FormsInfo_insuranceID',	1,	0	 UNION ALL 
SELECT 23,	'InfoName_L1'	,''	,N'نام بيمه'	,'FormsInfo_insuranceID',	1,	0	 UNION ALL 
SELECT 24,	'InfoName_L1'	,'BankName'	,N'نام بانك'	,'FormsInfo_BankCode',	1,	0	 UNION ALL 
SELECT 25,	'InfoName_L1'	,'BranchName'	,N'نام شعبه'	,'FormsInfo_BranchInfo',	1,	0	 UNION ALL 
SELECT 26,	'BranchCode'	,''	,N'كد شعبه'	,'Pay.PersonelInfo',	1,	0	 UNION ALL 
SELECT 27,	'StoreDayTime'	,''	,N'ذخيره سنوات انتقالي'	,'Pay.PersonelInfo',	1,	0	 UNION ALL 
SELECT 28,	'MON_PYM'	,''	,N'رديف پيمان(وضعيت بيمه)'	,'InsuranceCONSTinfo',	1,	0	 UNION ALL 
SELECT 29,	'FirstAmount'	,''	,N'مبلغ اوليه(نوع استخدام)'	,'FormsInfoEmployTypeID',	1,	0	 UNION ALL 
SELECT 30,	'InfoName_L1'	,'StateName'	,N'وضعيت پرسنل'	,'FormsInfoPersonelState',	1,	0	 UNION ALL 
SELECT 31,	'AccountNumber'	,''	,N'شماره حساب بانكي'	,'Pay.PersonelInfo',	1,	0	 UNION ALL 
SELECT 32,	'InsuranceNumber'	,''	,N'شماره بيمه'	,'Pay.PersonelInfo',	1,	0	 UNION ALL 
SELECT 33,	'InfoID'	,'OfficeCode'	,N'كد'	,'FormsInfoOffice',	1,	0	 UNION ALL 
SELECT 34,	'InfoName_L1'	,'OfficeName'	,N'واحد سازماني'	,'FormsInfoOffice',	1,	0	 UNION ALL 
SELECT 35,	'InfoID'	,'jobCode'	,N'كدپست سازماني'	,'FormsInfo_jobCode',	1,	0	 UNION ALL 
SELECT 36,	'InfoName_L1'	,'jobName'	,N'پست سازماني'	,'FormsInfo_jobCode',	1,	0	 UNION ALL 
SELECT 37,	'InfoID'	,'ProjectCode'	,N'كدپروژه/مركزهزينه'	,'FormsInfoProject',	1,	0	 UNION ALL 
SELECT 38,	'InfoName_L1'	,'ProjectName'	,N'پروژه/مركزهزينه'	,'FormsInfoProject',	1,	0	 UNION ALL 
SELECT 39,	'InfoName_L1'	,'gradeName'	,N'رتبه'	,'FormsInfo_grade',	1,	0	 UNION ALL 
SELECT 40,	'FunctionDay'	,''	,N'روزهاي كاركرد'	,'Functions_Sum',	1,	0	 UNION ALL 
SELECT 41,	'FunctionTime'	,''	,N'ساعات كاركرد'	,'Functions_Sum',	1,	0	 UNION ALL 
SELECT 42,	'Amount'	,''	,N'جمع عناوين حكم'	,'InterdictItemsAmount',	1,	0	 UNION ALL 
SELECT 43,	'CAST(SUM(CASE WHEN ((FormsInfo_2.InfoID BETWEEN 1 AND 4) AND (FormsInfo_2.FormType = 22)) THEN price ELSE 0 END) / (CASE WHEN Functions_Sum.FunctionDay <> 0 THEN Functions_Sum.FunctionDay ELSE 1 END) AS money)'	,'WageDay'	,N'حقوق روزانه'	,'',	1,	5	 UNION ALL 
SELECT 44,	'CASE ShowlistKind WHEN 1 THEN price ELSE 0 END'	,'SumWage'	,N'جمع حقوق و مزايا'	,'',	1,	10	 UNION ALL 
SELECT 45,	'CASE WHEN (ShowlistKind IN (2 , 4 , 15 , 14) AND bedbes = 1) THEN price ELSE 0 END'	,'sum23Dec'	,N'بيمه كارفرما'	,'',	1,	10	 UNION ALL 
SELECT 46,	'CASE WHEN SUM(CASE WHEN ((CalCulateKind = 10) AND (ShowlistKind = 2)) THEN price ELSE 0 END) <> 0 THEN SUM(CASE ShowlistKind WHEN 3 THEN price ELSE 0 END) ELSE 0 END'	,'ContainInsourance'	,N'مشمول بيمه'	,'',	1,	5	 UNION ALL 
SELECT 47,	'CASE WHEN (ShowlistKind = 11 AND bedbes = 0 AND CalCulateKind = 12) THEN price ELSE 0 END'	,'ContainTax'	,N'مشمول ماليات '	,'',	1,	10	 UNION ALL 
SELECT 48,	'CASE WHEN (ShowlistKind = 11 AND bedbes = 2) THEN price ELSE 0 END'	,'TaxValue'	,N'ماليات '	,'',	1,	10	 UNION ALL 
SELECT 49,	'SUM(CASE ShowlistKind WHEN 2 THEN price ELSE 0 END) + SUM(CASE WHEN ShowlistKind = 11 AND bedbes = 2 THEN price ELSE 0 END)'	,'SumDec'	,N'جمع كسورات'	,'',	1,	5	 UNION ALL 
SELECT 50,	'SUM(CASE ShowlistKind WHEN 1 THEN price ELSE 0 END) - (SUM(CASE ShowlistKind WHEN 2 THEN price ELSE 0 END) + SUM(CASE WHEN ShowlistKind = 11 AND bedbes = 2 THEN price ELSE 0 END))'	,'PayableSalary'	,N'حقوق قابل پرداخت'	,'',	1,	5	 UNION ALL 
SELECT 51,	'IDNumber'	,''	,N'ش.شناسنامه'	,'Pay.PersonelInfo',	1,	0	 UNION ALL 
SELECT 52,	'BirthPlace_L1'	,''	,N'محل تولد'	,'EmployeeInfo',	1,	0	 UNION ALL 
SELECT 53,	'SodurPlace_L1'	,''	,N'محل صدور'	,'EmployeeInfo',	1,	0	 UNION ALL 
SELECT 54,	'BirthProvince_L1'	,''	,N'استان محل تولد'	,'EmployeeInfo',	1,	0	 UNION ALL 
SELECT 55,	'IssuedProvince_L1'	,''	,N'استان محل صدور'	,'EmployeeInfo',	1,	0	 UNION ALL 
SELECT 56,	'EmployID'	,''	,N'شماره‏مستخدم'	,'Pay.PersonelInfo',	1,	0	 UNION ALL 
SELECT 57,	'studyField_L1'	,''	,N'رشته تحصيلي'	,'EmployeeInfo',	1,	0	 UNION ALL 
SELECT 58,	'SoldierState_L1'	,''	,N'وضعيت نظام'	,'EmployeeInfo',	1,	0	 UNION ALL 
SELECT 59,	'InfoName_L1'	,'GroupName'	,N'گروه'	,'FormsInfo_GroupID',	1,	0	 UNION ALL 
SELECT 60,	'AccountNumber'	,''	,N'شماره حساب بانكي'	,'Pay.PersonelInfo',	1,	0	 UNION ALL 
SELECT 61,	'InfoName_L1'	,'PayehNoName'	,N'پايه'	,'FormsInfo_PayehNo',	1,	0	 UNION ALL 
SELECT 62,	'InfoName_L1'	,'SubInterdictName'	,N'نوع حكم'	,'FormsInfo_SubInterdictID',	1,	0	 UNION ALL 
SELECT 63,	'InfoName_L1'	,'jobsGroupName'	,N'کد و عنوان شغل'	,'FormsInfo_jobsGroup',	1,	0	 UNION ALL 
SELECT 64,	'InfoName_L1'	,'jobCityName'	,N'محل خدمت'	,'FormsInfo_jobCity',	1,	0	 UNION ALL 
SELECT 65,	'employDate'	,''	,N'تاريخ استخدام'	,'Pay.PersonelInfo',	1,	0	 UNION ALL 
SELECT 66,	'TotalYearsWork'	,''	,N'سنوات'	,'Pay.Interdicts',	1,	0	 UNION ALL 
SELECT 67,	'CASE WHEN PersonelInfo.StoreDayTime>0 THEN LTRIM(STR(PersonelInfo.StoreDayTime))+''0000'' ELSE '''' END ','StoreDayTime2'	,N'ذخيره سنوات انتقالي2'	,'',	1,	0	 UNION ALL 
SELECT 68,	'InterdicStartDate'	,''	,N'تاريخ‏اجراي‏حكم'	,'Pay.Interdicts',	1,	0	 	 UNION ALL 
SELECT 69,	'InfoName_L1'	,'EmployTypeName2'	,N'نوع حكم استخدام'	,'FormsInfo_EmployTypeID',	1,	0	 UNION ALL 
SELECT 70,	'BirthDate'	,''	,N'تاريخ تولد'	,'Pay.PersonelInfo',	1,	0 UNION ALL 
SELECT 71,	'SpecialStateName'	,''	,N'وضعيت ويژه'	,'EmployeeInfo',	1,	0	 UNION ALL 
SELECT 72,	'PoorsantRate'	,''	,N'نرخ پورسانتاژ '	,'InsuranceCONSTinfo',	1,	0 UNION ALL 
SELECT 73,	''''' '	,'NullColumns'	,N'ستون خالي'	,'',	1,	5	  UNION ALL 
SELECT 74,	'CreditCardNo'	,''	,N'ش كارت اعتباري'	,'Pay.PersonelInfo',	1,	0	UNION ALL 
SELECT 75,	'FunctionSick'	,''	,N'روزهاي بیماری'	,'Functions_Sum',	1,	0	 UNION ALL 
SELECT 76,	'FunctionDayNoSick'	,''	,N'روزهاي كاركردبدون بیماری'	,'Functions_Sum',	1,	0	 
end  


if ( COLUMNPROPERTY( OBJECT_ID('Pay.GetReprots'),'ActiveFunctionsItems','IsRowGuidCol')is  null )  
begin
UPDATE Pay.GetRptColumns Set ColumnsID=ColumnsID+100
INSERT INTO Pay.GetRptColumns
                         (ColumnsID, GetReprotsID, ColumnsName, ConstID, Kind)
SELECT        GetRptConstColumns.ConstID , GetReprots.GetReprotsID, GetRptConstColumns.ColumnsCaption, 
                         GetRptConstColumns.ConstID, 0 AS Expr2
FROM            Pay.GetReprots CROSS JOIN
                         Pay.GetRptConstColumns

ALTER TABLE Pay.GetReprots ADD ActiveFunctionsItems Tinyint NOT NULL  DEFAULT (1) 
end


if ( COLUMNPROPERTY( OBJECT_ID('Pay.GetReprots'),'DeleteColumnIfSumWageIsZero','IsRowGuidCol')is  null )  
ALTER TABLE Pay.GetReprots ADD DeleteColumnIfSumWageIsZero Tinyint NOT NULL  DEFAULT (0) 


if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelDecExt'),'SettlementDate','IsRowGuidCol')is  null )
ALTER TABLE Pay.PersonelDecExt ADD SettlementDate char(10)  


if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelDecExt'),'PayableDuringMonth','IsRowGuidCol')is  null )
ALTER TABLE Pay.PersonelDecExt ADD PayableDuringMonth Tinyint NOT NULL CONSTRAINT DF_PersonelDecExt_PayableDuringMonth  DEFAULT  (0)  

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelSponsorship'),'kinship','IsRowGuidCol')is  null )
begin
  ALTER TABLE Pay.PersonelSponsorship ADD kinship int 
  ALTER TABLE Pay.PersonelSponsorship ADD  CONSTRAINT FK_PersonelSponsorship_FormsInfo_kinship 
   FOREIGN KEY (kinship) REFERENCES Pay.FormsInfo (FormInfoID) 	
end

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelSponsorship'),'JobType','IsRowGuidCol')is  null )
begin
  ALTER TABLE Pay.PersonelSponsorship ADD JobType int 
  ALTER TABLE Pay.PersonelSponsorship ADD  CONSTRAINT FK_PersonelSponsorship_FormsInfo_JobType 
   FOREIGN KEY (JobType) REFERENCES Pay.FormsInfo (FormInfoID) 	
end

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelSponsorship'),'InsuranceType','IsRowGuidCol')is  null )
begin
  ALTER TABLE Pay.PersonelSponsorship ADD InsuranceType int 
  ALTER TABLE Pay.PersonelSponsorship ADD  CONSTRAINT FK_PersonelSponsorship_FormsInfo_InsuranceType 
   FOREIGN KEY (InsuranceType) REFERENCES Pay.FormsInfo (FormInfoID) 	
end

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelSponsorship'),'InsurancePercent','IsRowGuidCol')is  null )
  ALTER TABLE Pay.PersonelSponsorship ADD InsurancePercent float  DEFAULT 100
    
if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelSponsorship'),'JobTitle','IsRowGuidCol')is  null )
  ALTER TABLE Pay.PersonelSponsorship ADD JobTitle varchar(70)
  
if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelSponsorship'),'MaritalDate','IsRowGuidCol')is  null )
  ALTER TABLE Pay.PersonelSponsorship ADD MaritalDate char(10)
   
if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelSponsorship'),'DivorceDate','IsRowGuidCol')is  null )
  ALTER TABLE Pay.PersonelSponsorship ADD DivorceDate char(10)
  
if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelSponsorship'),'DeathDate','IsRowGuidCol')is  null )
  ALTER TABLE Pay.PersonelSponsorship ADD DeathDate char(10)
  
if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelSponsorship'),'Degree','IsRowGuidCol')is  null )
begin
  ALTER TABLE Pay.PersonelSponsorship ADD Degree int 
  ALTER TABLE Pay.PersonelSponsorship ADD  CONSTRAINT FK_PersonelSponsorship_FormsInfo_Degree 
   FOREIGN KEY (Degree) REFERENCES Pay.FormsInfo (FormInfoID) 	
end

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelSponsorship'),'GraduationDate','IsRowGuidCol')is  null )
  ALTER TABLE Pay.PersonelSponsorship ADD GraduationDate   char(10)  NOT NULL  DEFAULT ('')   


if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelInfo'),'Mobile','IsRowGuidCol')is  null )
  ALTER TABLE Pay.PersonelInfo ADD Mobile varchar(20)

if ( COLUMNPROPERTY( OBJECT_ID('util.CodesInProcess'),'Type','IsRowGuidCol')is  null )  
ALTER TABLE util.CodesInProcess ADD Type tinyint NOT NULL  DEFAULT (0)  

--IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'DF_DecExtItems_DayQuntity') AND type = 'D')
 ALTER TABLE Pay.DecExtItems DROP CONSTRAINT DF_DecExtItems_DayQuntity

ALTER TABLE Pay.DecExtItems ALTER column DayQuntity Float 

IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'DF_DecExtItems_DayQuntity') AND type = 'D')
ALTER TABLE Pay.DecExtItems  ADD CONSTRAINT DF_DecExtItems_DayQuntity  DEFAULT 0 FOR DayQuntity 


IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Fitful') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Fitful(FitfulID decimal(20, 4) NOT NULL ,
  FitfulNote varchar(1000) ,
  CONSTRAINT CK_Fitful CHECK  ((FitfulID=(0))),
  CONSTRAINT PK_Fitful PRIMARY KEY CLUSTERED (FitfulID ASC) ON [PRIMARY]
) ON [PRIMARY]

if (SELECT count(*) FROM Fitful)=0
insert into Fitful (FitfulID) values(0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'ChkStateArchiveEdit','IsRowGuidCol')is  null )
ALTER TABLE Pay.Config ADD ChkStateArchiveEdit Tinyint  NOT NULL  CONSTRAINT DF_Config_ChkStateArchiveEdit DEFAULT 0

--if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'َArchiveScan','IsRowGuidCol')is  null )
--  ALTER TABLE Pay.Config ADD ArchiveScan varchar(255)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'ScanState','IsRowGuidCol')is  null )  
ALTER TABLE Pay.Config ADD ScanState tinyint NOT NULL  CONSTRAINT DF_Config_ScanState DEFAULT 0

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'ArchiveScan','IsRowGuidCol')is  null )  
ALTER TABLE Pay.Config ADD ArchiveScan varchar(255)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'ActiveRangeProject','IsRowGuidCol')is  null )  
ALTER TABLE Pay.Config ADD ActiveRangeProject tinyint NOT NULL  CONSTRAINT DF_Config_ActiveRangeProject DEFAULT 0



DECLARE @S SYSNAME
SET @S=''

DECLARE @SQL NVARCHAR(500)
SET @SQL=''
WHILE @S is not NULL
BEGIN
	SELECT @S=NAME FROM sysobjects WHERE NAME  like'DF%Interdict%TaxCa%'
	IF @S<>'' or @S<>NULL
	BEGIN
		SET @SQL='ALTER TABLE Pay.Interdicts DROP CONSTRAINT '+@S
		exec(@SQL)
        SET @S=''
	END
	ELSE 
	SET	@S=NULL
END

ALTER TABLE Pay.Interdicts ALTER COLUMN TaxCalculationType int
ALTER TABLE Pay.Interdicts ADD CONSTRAINT DF_Interdicts_TaxCalculationType DEFAULT (0) FOR TaxCalculationType
--------------------------------------------------------
--------------------------------------------------------


if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'FunctionActiveMinutes','IsRowGuidCol')is  null )
ALTER TABLE Pay.Config ADD FunctionActiveMinutes int NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'AccDetailCodeEqualPersonelNo','IsRowGuidCol')is  null )
ALTER TABLE Pay.Config ADD AccDetailCodeEqualPersonelNo int NOT NULL  DEFAULT (0)
 
 if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelInfo'),'Email','IsRowGuidCol')is  null )
  ALTER TABLE Pay.PersonelInfo ADD Email nvarchar(100)

 if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelInfo'),'MartyrChild','IsRowGuidCol')is  null )
  ALTER TABLE Pay.PersonelInfo ADD MartyrChild bit NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelInfo'),'TelegramChatID','IsRowGuidCol')is null )
 ALTER TABLE Pay.PersonelInfo ADD TelegramChatID  char(30)

  
  
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_PersonelSponsorship' AND type = 'K')
 ALTER TABLE Pay.PersonelSponsorship ADD CONSTRAINT PK_PersonelSponsorship PRIMARY KEY CLUSTERED (ID) ON [PRIMARY]

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_MissionInfo' AND type = 'K')
 ALTER TABLE Pay.MissionInfo ADD CONSTRAINT PK_MissionInfo PRIMARY KEY CLUSTERED (MissionInfoID) ON [PRIMARY]

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_BudgetInfoItems' AND type = 'K')
 ALTER TABLE Pay.BudgetInfoItems ADD CONSTRAINT PK_BudgetInfoItems PRIMARY KEY CLUSTERED (BudgetInfoItemID) ON [PRIMARY]


if  exists (select * from sysindexes WHERE     (name = N'IX_FixedCalculated'))
DROP INDEX Pay.FixedCalculated.IX_FixedCalculated 


if not exists (select * from sysindexes WHERE     (name = N'IX_FixedCalculated'))
CREATE  NONCLUSTERED INDEX IX_FixedCalculated ON Pay.FixedCalculated
	(ArchiveID,	Mounth,PersonelNO 	) 


if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'PrintAfterPost','IsRowGuidCol')is  null )  
ALTER TABLE Pay.FormTypes ADD PrintAfterPost Tinyint NOT NULL  DEFAULT (0) 


----------------------------------------------------------------------------------------------------------
Declare @FormInfoID int
Declare @FormType int
SET     @FormType=16

UPDATE Pay.FormTypes
SET    PersonelTypeInfoRow = 1
WHERE  (FormType = @FormType) and (PersonelTypeInfoRow = 0)

SELECT @FormInfoID=FormInfoID
FROM   Pay.FormsInfo
WHERE  (FormType = @FormType) AND (InfoID = 1)


INSERT INTO Pay.PersonelTypeInfo(PersonelNo, FormType, FormInfoID)
SELECT distinct PersonelInfo.PersonelNo, FormsInfo.FormType, @FormInfoID
FROM   Pay.FormsInfo CROSS JOIN
       Pay.PersonelInfo
WHERE  (FormsInfo.FormType = @FormType) AND (FormsInfo.InfoID = 1)
         AND PersonelInfo.PersonelNo NOT IN ( SELECT  PersonelNo
                                                FROM Pay.PersonelTypeInfo
                                                 WHERE (FormType = @FormType) 											     
											 )
----------------------------------------------------------------------------------------------------------
if ( COLUMNPROPERTY( OBJECT_ID('Pay.ChangeWage'),'Firstdate','IsRowGuidCol')is  null )
ALTER TABLE Pay.ChangeWage ADD Firstdate char(10)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.ChangeWage'),'Enddate','IsRowGuidCol')is  null )
ALTER TABLE Pay.ChangeWage ADD Enddate char(10)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.ChangeWage'),'ColumnsCalc','IsRowGuidCol')is  null )
ALTER TABLE Pay.ChangeWage ADD ColumnsCalc NvarChar (2000)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.ChangeWage'),'SalaryIDFormula','IsRowGuidCol')is  null )
ALTER TABLE Pay.ChangeWage ADD SalaryIDFormula AS  (('S'+ltrim(str([SalaryID])))+'F')

-----------------------------------------
DECLARE @Query varchar(8000)
SET @Query=(SELECT name FROM sysobjects
        WHERE [type] = 'D' --AND parent_object_id = OBJECT_ID('[Mission]') 
             AND SUBSTRING(name,0,21)='DF__Mission__AccTopi')

SET @Query='ALTER TABLE Pay.[Mission] DROP CONSTRAINT '+@Query+'
ALTER TABLE Pay.[Mission] ALTER COLUMN AccTopicCode BIGINT
ALTER TABLE Pay.[Mission] ADD CONSTRAINT DF__Mission__AccTopicCode DEFAULT(''0'') FOR AccTopicCode'
Exec (@Query) 



if (  OBJECT_ID('Pay.PK_PersonelInfo') is  null )
ALTER TABLE Pay.PersonelInfo ADD CONSTRAINT PK_PersonelInfo PRIMARY KEY CLUSTERED (	[PersonelNo] ASC ) ON [PRIMARY]


if not(  OBJECT_ID('FK_Interdicts_PersonelInfo') is  null )
ALTER TABLE Pay.Interdicts  Drop  CONSTRAINT FK_Interdicts_PersonelInfo 

if (  OBJECT_ID(N'Pay.FK_Interdicts_PersonelInfo') is  null )
ALTER TABLE Pay.Interdicts  WITH CHECK ADD  CONSTRAINT FK_Interdicts_PersonelInfo FOREIGN KEY(PersonelNo)
REFERENCES Pay.PersonelInfo (PersonelNo)
ON UPDATE CASCADE




if not(  OBJECT_ID('FK_FixedCalculated_PersonelInfo') is  null )
ALTER TABLE Pay.FixedCalculated  Drop  CONSTRAINT FK_FixedCalculated_PersonelInfo 

if (  OBJECT_ID('Pay.FK_FixedCalculated_PersonelInfo') is  null )
ALTER TABLE Pay.FixedCalculated  WITH CHECK ADD  CONSTRAINT FK_FixedCalculated_PersonelInfo FOREIGN KEY(PersonelNO)
REFERENCES Pay.PersonelInfo (PersonelNo)
ON UPDATE CASCADE



if not(  OBJECT_ID('FK_PersonelArchives_PersonelInfo') is  null )
ALTER TABLE Pay.PersonelArchives  Drop  CONSTRAINT FK_PersonelArchives_PersonelInfo 

if not(  OBJECT_ID('FK_PersonelArchives_PersonelInfo') is  null )
ALTER TABLE Pay.PersonelArchives  Drop  CONSTRAINT FK_PersonelArchives_PersonelInfo 

if (  OBJECT_ID('Pay.FK_PersonelArchives_PersonelInfo') is  null )
ALTER TABLE Pay.PersonelArchives  WITH CHECK ADD  CONSTRAINT FK_PersonelArchives_PersonelInfo FOREIGN KEY(PersonelNO)
REFERENCES Pay.PersonelInfo (PersonelNo)
ON UPDATE CASCADE



if  exists (select * from sysindexes WHERE     (name = N'IX_Interdicts_InsuranceID'))
DROP INDEX Pay.Interdicts.IX_Interdicts_InsuranceID 

UPDATE       Pay.Interdicts
SET                insuranceID =(select max(insuranceNo) from Pay.InsuranceCONSTinfo)
--select * 
FROM            Pay.Interdicts LEFT OUTER JOIN
                         Pay.InsuranceCONSTinfo ON Pay.Interdicts.insuranceID = Pay.InsuranceCONSTinfo.insuranceNo
WHERE        (Pay.InsuranceCONSTinfo.insuranceNo IS NULL)



SET @S=''
SET @SQL=''
WHILE @S is not NULL
BEGIN
	SELECT @S=NAME FROM sysobjects WHERE NAME  like'DF%Interdict%insur%'
	IF @S<>'' or @S<>NULL
	BEGIN
		SET @SQL='ALTER TABLE Pay.Interdicts DROP CONSTRAINT '+@S
		exec(@SQL)
        SET @S=''
	END
	ELSE 
	SET	@S=NULL
END
select @SQL=min(insuranceNo) from Pay.InsuranceCONSTinfo
SET @SQL='ALTER TABLE Pay.Interdicts ADD CONSTRAINT DF_Interdicts_insuranceID DEFAULT ('+@SQL+') FOR insuranceID'
exec(@SQL)
ALTER TABLE Pay.Interdicts ADD CONSTRAINT DF_Interdicts_InsuranceStartDate DEFAULT ('') FOR InsuranceStartDate
ALTER TABLE Pay.Interdicts ADD CONSTRAINT DF_Interdicts_InsuranceEndDate DEFAULT ('') FOR InsuranceEndDate


if (  OBJECT_ID('Pay.FK_Interdicts_InsuranceCONSTinfo') is  null )
IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE        (TABLE_NAME = N'Pay.Interdicts') AND (COLUMN_NAME = N'insuranceID') AND (DATA_TYPE = N'tinyint')
)
begin
  ALTER TABLE Pay.Interdicts DROP CONSTRAINT DF_Interdicts_insuranceID
  ALTER TABLE Pay.Interdicts alter column insuranceID  tinyint NOT NULL  
  ALTER TABLE Pay.Interdicts ADD CONSTRAINT DF_Interdicts_insuranceID DEFAULT (0) FOR insuranceID

end



IF  EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE        (TABLE_NAME = N'Pay.Interdicts') AND (COLUMN_NAME = N'insuranceID') AND (DATA_TYPE = N'tinyint'))
if (  OBJECT_ID('Pay.FK_Interdicts_InsuranceCONSTinfo') is  null )
ALTER TABLE Pay.Interdicts WITH CHECK ADD CONSTRAINT	FK_Interdicts_InsuranceCONSTinfo FOREIGN KEY
(insuranceID) REFERENCES Pay.InsuranceCONSTinfo(insuranceNo) 



if (  OBJECT_ID('Pay.FK_InterdictItems_Interdicts') is  null )
begin
	SELECT        Pay.InterdictItems.*
	INTO              Pay.InterdictItems4Not_Fk
	FROM            Pay.InterdictItems LEFT OUTER JOIN
							 Pay.Interdicts ON InterdictItems.InterdictID = Interdicts.InterdictID
	WHERE        (Interdicts.InterdictID IS NULL)


	DELETE FROM InterdictItems
	FROM            Pay.InterdictItems LEFT OUTER JOIN
							 Pay.Interdicts ON InterdictItems.InterdictID = Interdicts.InterdictID
	WHERE        (Interdicts.InterdictID IS NULL)
end


if (  OBJECT_ID('Pay.FK_InterdictItems_Interdicts') is  null )
ALTER TABLE Pay.InterdictItems   ADD  CONSTRAINT FK_InterdictItems_Interdicts FOREIGN KEY(InterdictID)
REFERENCES Pay.Interdicts (InterdictID)
ON UPDATE CASCADE
ON DELETE CASCADE

if not(  OBJECT_ID('FK_FunctionsItems_FormsInfo') is  null )
ALTER TABLE Pay.FunctionsItems  DROP  CONSTRAINT FK_FunctionsItems_FormsInfo 

INSERT INTO Pay.FormsInfo
                         (FormInfoID, FormType, InfoID, InfoName_L1)
SELECT DISTINCT FunctionsItems.SalaryID FormInfoID ,29 as FormType , FunctionsItems.SalaryID InfoID ,'عناوبن کارکرد حذف شده استفاده شده در ثبت کارکرد' as InfoName_L1
FROM            Pay.FunctionsItems LEFT OUTER JOIN
                         Pay.FormsInfo ON FunctionsItems.SalaryID = FormsInfo.FormInfoID
WHERE        (FormsInfo.FormInfoID IS NULL)

if (  OBJECT_ID('Pay.FK_FunctionsItems_FormsInfo') is  null )
ALTER TABLE Pay.FunctionsItems  WITH CHECK ADD  CONSTRAINT FK_FunctionsItems_FormsInfo FOREIGN KEY(SalaryID)
REFERENCES Pay.FormsInfo (FormInfoID)


if ( COLUMNPROPERTY( OBJECT_ID('Pay.Interdicts'),'AidNo1','IsRowGuidCol')is  null )  
ALTER TABLE Pay.Interdicts ADD AidNo1 varchar(20) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Interdicts'),'AidDate1','IsRowGuidCol')is  null )  
ALTER TABLE Pay.Interdicts ADD AidDate1 char(10)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormsInfo'),'Note','IsRowGuidCol')is  null )  
ALTER TABLE Pay.FormsInfo ADD Note text

--Sheikh 2015/07/28
if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'InsertAccCode','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD InsertAccCode BIT  CONSTRAINT DF_FormTypes_InsertAccCode DEFAULT (0) 
--Sheikh 2015/08/23
if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'DecExtInFishPrint','IsRowGuidCol')is  null )  
ALTER TABLE Pay.Config ADD DecExtInFishPrint NVARCHAR(250)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'IntegrateLoanRemain','IsRowGuidCol')is  null )  
ALTER TABLE Pay.Config ADD IntegrateLoanRemain tinyint

if ( COLUMNPROPERTY( OBJECT_ID('Fitful'),'FitfulIDc','IsRowGuidCol')is  null )  
ALTER TABLE Fitful ADD FitfulIDc money NOT NULL CONSTRAINT DF_Fitful_FitfulIDc   DEFAULT(0)

if ( COLUMNPROPERTY( OBJECT_ID('Fitful'),'ID','IsRowGuidCol')is  null )  
ALTER TABLE Fitful ADD ID Bigint NOT NULL CONSTRAINT DF_Fitful_ID   DEFAULT(0)


if ( COLUMNPROPERTY( OBJECT_ID('Pay.InsuranceCONSTinfo'),'AccTopicCodeExempt','IsRowGuidCol')is  null )
ALTER TABLE Pay.InsuranceCONSTinfo ADD AccTopicCodeExempt bigint NOT NULL CONSTRAINT DF_InsuranceCONSTinfo_AccTopicCodeExempt DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.InsuranceCONSTinfo'),'AccDetailCodeExempt','IsRowGuidCol')is  null )
ALTER TABLE Pay.InsuranceCONSTinfo ADD AccDetailCodeExempt int NOT NULL CONSTRAINT DF_InsuranceCONSTinfo_AccDetailCodeExempt DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.InsuranceCONSTinfo'),'AccCTopicCodeExempt','IsRowGuidCol')is  null )
ALTER TABLE Pay.InsuranceCONSTinfo ADD AccCTopicCodeExempt int NOT NULL CONSTRAINT DF_InsuranceCONSTinfo_AccCTopicCodeExempt DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.InsuranceCONSTinfo'),'AccCTopicCode2Exempt','IsRowGuidCol')is  null )
ALTER TABLE Pay.InsuranceCONSTinfo ADD AccCTopicCode2Exempt int NOT NULL CONSTRAINT DF_InsuranceCONSTinfo_AccCTopicCode2Exempt DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.InsuranceCONSTinfo'),'AccCTopicCode3Exempt','IsRowGuidCol')is  null )
ALTER TABLE Pay.InsuranceCONSTinfo ADD AccCTopicCode3Exempt int NOT NULL CONSTRAINT DF_InsuranceCONSTinfo_AccCTopicCode3Exempt DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'PonyTaxAble','IsRowGuidCol')is  null )      
ALTER TABLE Pay.Config ADD PonyTaxAble Tinyint NOT NULL CONSTRAINT DF_Config_PonyTaxAble DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'WorkFlowID','IsRowGuidCol')is  null )  
 ALTER TABLE Pay.FormTypes ADD WorkFlowID int  


IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE (TABLE_NAME = N'Util.CodesInProcess') AND (COLUMN_NAME = N'UserID') AND (DATA_TYPE='int'))
ALTER TABLE Util.CodesInProcess ALTER column UserID int 

IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE (TABLE_NAME = N'Pay.InterdictItems') AND (COLUMN_NAME = N'UserID') AND (DATA_TYPE='int'))
ALTER TABLE Pay.InterdictItems ALTER column UserID int 

IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE (TABLE_NAME = N'Pay.Interdicts') AND (COLUMN_NAME = N'UserID') AND (DATA_TYPE='int'))
ALTER TABLE Pay.Interdicts ALTER column UserID int 


if ( COLUMNPROPERTY( OBJECT_ID('Pay.Interdicts'),'TypeOfContract','IsRowGuidCol')is  null )  
ALTER TABLE Pay.Interdicts ADD TypeOfContract int 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Interdicts'),'StandardClock','IsRowGuidCol')is  null )  
ALTER TABLE Pay.Interdicts ADD StandardClock Decimal(18,4) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Interdicts'),'RetardActive','IsRowGuidCol')is  null )
ALTER TABLE Pay.Interdicts ADD RetardActive Tinyint NOT NULL CONSTRAINT DF_Interdicts_RetardActive DEFAULT (1)



 IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'Pay.FixedLabels') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Pay.FixedLabels(
	LabelID INT NOT NULL,
	LabelDateTime DATETIME NOT NULL,
	Descriptions  VARCHAR(500) NOT NULL	,
 CONSTRAINT PK_FixedLabels PRIMARY KEY CLUSTERED (LabelID ASC) ON [PRIMARY]) ON [PRIMARY]

if (select count(*) from Pay.FixedLabels )=0
INSERT   INTO              Pay.FixedLabels(LabelID, LabelDateTime, Descriptions)
VALUES        (0,getdate(),'دسته بندی محاسبات')

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FixedCalculated'),'LabelID','IsRowGuidCol')is  null )  
 ALTER TABLE Pay.FixedCalculated ADD LabelID int NOT NULL  DEFAULT (0)



IF  EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FixedCalculated_FixedLabels' AND type = 'F')
ALTER TABLE Pay.FixedCalculated Drop  CONSTRAINT FK_FixedCalculated_FixedLabels 

IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FixedCalculated_FixedLabels' AND type = 'F')
ALTER TABLE Pay.FixedCalculated WITH CHECK ADD  CONSTRAINT FK_FixedCalculated_FixedLabels FOREIGN KEY(LabelID)
REFERENCES Pay.FixedLabels (LabelID) ON UPDATE CASCADE




--IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Tab_job') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
--CREATE TABLE dbo.Tab_job(	JOB_CODE nvarchar(50) NULL,	JOB_DESC nvarchar(255) NULL,) ON [PRIMARY] 

/****** Object:  Table Pay.Taxs    Script Date: 28/02/1401 04:56:38 ب.ظ ******/

IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.Taxs') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)CREATE TABLE Pay.Taxs(
	TaxID int NOT NULL,
	FormInfoID int NOT NULL,
	YearRun int NOT NULL,
	MonthRun int NOT NULL,
	Descriptions varchar(150) NULL,
	BonusFreeTax money NOT NULL,
	TFN_CODE int NULL,
	Statuss tinyint NULL,
 CONSTRAINT PK_Taxs PRIMARY KEY CLUSTERED 
(
	TaxID ASC
) ON [PRIMARY]
) ON [PRIMARY]

IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.TaxsItems') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)CREATE TABLE Pay.TaxsItems(
	ID int IDENTITY(1,1) NOT NULL,
	TaxID int NOT NULL,
	RowNo int NOT NULL,
	RevenuePrice money NOT NULL,
	FixedPrice money NOT NULL,
	Cofficient float NOT NULL,
 CONSTRAINT PK_TaxsItems PRIMARY KEY CLUSTERED 
(
	ID ASC
) ON [PRIMARY]
) ON [PRIMARY]


if ( COLUMNPROPERTY( OBJECT_ID('Pay.Taxs'),'Taxs_Bonus_TaxID','IsRowGuidCol')is  null )
 ALTER TABLE Pay.Taxs  ADD Taxs_Bonus_TaxID int 


IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Pay.Insurance') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)CREATE TABLE Pay.Insurance(
	InsuranceID int NOT NULL,
	FormInfoID int NOT NULL,
	MinDailySalary money NOT NULL,
	MaxDailySalary money NOT NULL,
	YearRun int NOT NULL,
	MonthRun int NOT NULL,
	InsertDate char(10) NULL,
	Descriptions varchar(150) NULL,
 CONSTRAINT PK_Insurance PRIMARY KEY CLUSTERED 
(
	InsuranceID ASC
) ON [PRIMARY]
) ON [PRIMARY]



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
----  UP TRIGGER Add Code
----  UP TRIGGER Add Code
----  UP TRIGGER Add Code
----  UP TRIGGER Add Code


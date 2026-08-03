----   UpdateBank 31 Pay   1404/08/10   
SET NOCOUNT ON
IF OBJECT_ID ('Pay.[TR_ConfigChangeLog_FormsInfo]', 'TR') IS NOT NULL 
DROP TRIGGER Pay.[TR_ConfigChangeLog_FormsInfo]

IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[Pay].[GetRptColumns]') AND name = 'id')
BEGIN
    ALTER TABLE [Pay].[GetRptColumns]
    ADD id INT IDENTITY(1,1) NOT NULL;
END


IF EXISTS (SELECT * FROM sys.key_constraints WHERE name = 'PK_GetRptColumns' AND parent_object_id = OBJECT_ID(N'[Pay].[GetRptColumns]'))
BEGIN
    ALTER TABLE [Pay].[GetRptColumns]
    DROP CONSTRAINT PK_GetRptColumns;
END


IF EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[Pay].[GetRptColumns]') AND name = 'id')
AND NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Pay].[GetRptColumns]') AND is_primary_key = 1)
BEGIN
    ALTER TABLE [Pay].[GetRptColumns]
    ADD CONSTRAINT PK_GetRptColumns PRIMARY KEY CLUSTERED (id)
     ON [PRIMARY];
END


IF NOT EXISTS (
    SELECT 1 
    FROM INFORMATION_SCHEMA.COLUMNS 
    WHERE TABLE_SCHEMA = 'Pay' AND TABLE_NAME = 'Pony' AND COLUMN_NAME = 'YearID'
)
BEGIN
    ALTER TABLE [Pay].[Pony] ADD YearID INT NULL;
END


if ( COLUMNPROPERTY( OBJECT_ID('Fitful'),'DetailCode','IsRowGuidCol')is  null )  
ALTER TABLE Fitful ADD DetailCode int NOT NULL CONSTRAINT DF_Fitful_DetailCode   DEFAULT(0)


UPDATE       Pay.FixedCalculated
SET                CalCulateKind = 11
WHERE        (CalCulateKind = 10) AND (ShowListKind = 11) AND (BedBes = 2) AND (YearID <= 1404)

UPDATE pay.PersonelDecExt 
SET YearID = left(AidDate1,4)
from	Pay.personeldecext  left  join
		 Pay.FormsInfo as FormsInfo_1 on Pay.PersonelDecExt.forminfoid = FormsInfo_1.forminfoid
where	(formsinfo_1.formtype = 16) and ISNULL(YearID,0)=0 and len(left(AidDate1,4))=4


if ( COLUMNPROPERTY( OBJECT_ID('Pay.FunctionDay'),'Situation','IsRowGuidCol')is  null )
ALTER TABLE Pay.FunctionDay  ADD Situation Tinyint  NOT NULL  DEFAULT 0


UPDATE pay.PersonelDecExt 
SET YearID = (SELECT MAX(YearID) FROM Util.MaliYear)
from	Pay.personeldecext  left  join
		 Pay.FormsInfo as FormsInfo_1 on Pay.PersonelDecExt.forminfoid = FormsInfo_1.forminfoid
where	(formsinfo_1.formtype = 16) and ISNULL(YearID,0)=0


ALTER TABLE Pay.PersonelInfo ALTER COLUMN DSW_JOB char(6) COLLATE Arabic_CI_AS 

if not ( COLUMNPROPERTY( OBJECT_ID('Pay.FormsInfo'),'Years','IsRowGuidCol')is  null )
alter table Pay.FormsInfo drop column Years 

if not ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'StartMaliYear','IsRowGuidCol')is  null )
alter table pay.Config drop column StartMaliYear

if not ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'FinishMaliYear','IsRowGuidCol')is  null )
alter table pay.Config drop column FinishMaliYear

if not ( COLUMNPROPERTY( OBJECT_ID('Pay.Config'),'AccountDBName','IsRowGuidCol')is  null )
alter table pay.Config drop column AccountDBName



-- ALTER TABLE pay.Config ADD StartMaliYear char(10) NOT NULL DEFAULT ('0000/00/00')
-- ALTER TABLE pay.Config ADD FinishMaliYear char(10) NOT NULL DEFAULT ('9999/99/99')
--ALTER TABLE pay.Config ADD AccountDBName char(100) 



if ( COLUMNPROPERTY( OBJECT_ID('Fitful'),'ID','IsRowGuidCol')is  null )  
ALTER TABLE Fitful ADD ID Bigint NOT NULL CONSTRAINT DF_Fitful_ID   DEFAULT(0)

IF  EXISTS(SELECT * FROM SYSOBJECTS where id = object_id(N'Pay.PersonelInfo') and OBJECTPROPERTY(id, N'IsUserTable') = 1 )
begin
  if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelInfo'),'CitizenCode','IsRowGuidCol')is null )
    ALTER TABLE Pay.PersonelInfo ADD CitizenCode varchar(20)  
	
  if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelInfo'),'LocationCode','IsRowGuidCol')is null )
    ALTER TABLE Pay.PersonelInfo ADD LocationCode int NOT NULL  DEFAULT (0)

  IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_PersonelInfo_FormsInfo_Location' AND type = 'F')
  ALTER TABLE Pay.PersonelInfo WITH CHECK ADD CONSTRAINT FK_PersonelInfo_FormsInfo_Location FOREIGN KEY (LocationCode) REFERENCES Pay.FormsInfo(FormInfoID) --ON UPDATE CASCADE 

end  

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelInfo'),'BaleChatID','IsRowGuidCol')is null )
  ALTER TABLE Pay.PersonelInfo ADD BaleChatID  char(30)


if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'Checking4AllPersonnelShow','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD Checking4AllPersonnelShow tinyint NOT NULL DEFAULT (1) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'EmployerAmountActiveShow','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD EmployerAmountActiveShow tinyint NOT NULL DEFAULT (1) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'PromissoryFormType','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD PromissoryFormType int 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.PersonelAccounts'),'SHEBA','IsRowGuidCol')is  null )
ALTER TABLE Pay.PersonelAccounts ADD SHEBA char(30) 


if ( COLUMNPROPERTY( OBJECT_ID('Pay.FixedCalculated'),'SubCompanyCode','IsRowGuidCol')is  null )  
 ALTER TABLE Pay.FixedCalculated ADD SubCompanyCode int NOT NULL  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Interdicts'),'RetirementDate','IsRowGuidCol')is  null )  
 ALTER TABLE Pay.Interdicts ADD RetirementDate char(10) NOT NULL  DEFAULT ('')

if ( COLUMNPROPERTY( OBJECT_ID('Pay.Interdicts'),'jobCityAddress','IsRowGuidCol')is  null )  
 ALTER TABLE Pay.Interdicts ADD jobCityAddress varchar(250) 




if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'FormInfo4Function','IsRowGuidCol')is  null )
ALTER TABLE Pay.FormTypes ADD FormInfo4Function int NOT NULL CONSTRAINT DF_FormTypes_FormInfo4Function  DEFAULT (12) 

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormTypes'),'WageKind_Active','IsRowGuidCol') is  null )
begin
	ALTER TABLE Pay.FormTypes ADD WageKind_Active Tinyint  NOT NULL  CONSTRAINT DF_FormTypes_WageKind_Active   DEFAULT (0)
exec(
	'
	UPDATE Pay.FormTypes  
	SET WageKind_Active = 1  
	WHERE formtype in (22,23,24,25,29,31,33,43,44,47,53,54,118,138)
	'
	) 
end

if ( COLUMNPROPERTY( OBJECT_ID('Pay.FormsInfo'),'WageKind','IsRowGuidCol')is  null )
begin
	ALTER TABLE Pay.FormsInfo ADD WageKind   Tinyint  NOT NULL  CONSTRAINT DF_FormsInfo_WageKind    DEFAULT (0)
exec('
	UPDATE FI 
		SET FI.WageKind = 1
	FROM Pay.SalaryRange SR
		INNER JOIN 	Pay.FormsInfo FI ON SR.SalaryID = FI.FormInfoID
		INNER JOIN  Pay.FormTypes FT ON FI.FormType = FT.FormType 
		INNER JOIN	Pay.FormsInfo AS FI_55 ON SR.FormInfoID = FI_55.FormInfoID
	WHERE (SR.Kind = 0) 
		AND FI_55.FormType = 55
		AND FI.WageKind = 0
		AND FI_55.InfoID = 1 
	'
	)

exec('
	UPDATE FI 
		SET FI.WageKind = 
						case 
							when FI_130.InfoID = 7  then 2 
							when FI_130.InfoID = 8  then 2
							when FI_130.InfoID = 13 then 5
							when FI_130.InfoID = 14 then 5
							when FI_130.InfoID = 15 then 11
							when FI_130.InfoID = 16 then 12
							when FI_130.InfoID = 17 then 4 
							when FI_130.InfoID = 18 then 10
							when FI_130.InfoID = 19 then 9
							when FI_130.InfoID = 20 then 15
							when FI_130.InfoID = 21 then 16
							when FI_130.InfoID = 22 then 13
							when FI_130.InfoID = 23 then 13
							when FI_130.InfoID = 24 then 13
							when FI_130.InfoID = 25 then 0
							when FI_130.InfoID = 26 then 14
							when FI_130.InfoID = 27 then 3
							when FI_130.InfoID = 28 then 18
							when FI_130.InfoID = 29 then 2
							when FI_130.InfoID = 30 then 2
							when FI_130.InfoID = 31 then 8
							when FI_130.InfoID = 32 then 8
							when FI_130.InfoID = 33 then 22
							when FI_130.InfoID = 34 then 23
						else 0 
						end
	FROM Pay.SalaryRange SR
		INNER JOIN 	Pay.FormsInfo FI ON SR.SalaryID = FI.FormInfoID
		INNER JOIN  Pay.FormTypes FT ON FI.FormType = FT.FormType 
		INNER JOIN	Pay.FormsInfo AS FI_130 ON SR.FormInfoID = FI_130.FormInfoID
	WHERE (SR.Kind = 0) 
		AND FI_130.FormType = 130
		AND FI.WageKind = 0
	')

exec('
	UPDATE FI 
		SET FI.WageKind = 2
	FROM Pay.SalaryRange SR
		INNER JOIN 	Pay.FormsInfo FI ON SR.SalaryID = FI.FormInfoID
		INNER JOIN  Pay.FormTypes FT ON FI.FormType = FT.FormType 
		INNER JOIN	Pay.FormsInfo AS FI_55 ON SR.FormInfoID = FI_55.FormInfoID
	WHERE (SR.Kind = 0) 
		AND FI_55.FormType = 55
		AND FI.WageKind = 0
		AND FI_55.InfoID = 2
	')
end

exec('
if ( COLUMNPROPERTY( OBJECT_ID(''Pay.FormsInfo''),''WageKind'',''IsRowGuidCol'')is  null )
ALTER TABLE Pay.FormsInfo ADD WageKind   Tinyint  NOT NULL  CONSTRAINT DF_FormsInfo_WageKind    DEFAULT (0)
')


if ( SELECT count(*) FROM Pay.FormTypes WHERE (DisplayFormType = 4) AND (FormType IN (94,130)))>0
begin
--SELECT        Pay.WageKinds.WageKind, Pay.WageKinds.WageKindName ,InfoName_L1,InfoName_L130 ,WageKind_New ,WageKindold ,InfoID
--FROM            Pay.WageKinds LEFT OUTER JOIN                             (select 
UPDATE FI 		SET FI.WageKind = 
						case 
							when FI_130.InfoID = 7  then 1 
							when FI_130.InfoID = 8  then 2
							when FI_130.InfoID = 9  then 3
							when FI_130.InfoID = 10 then 4
							when FI_130.InfoID = 11 then 5
							when FI_130.InfoID = 12 then 6
							when FI_130.InfoID = 13 then 7
							when FI_130.InfoID = 14 then 8
							when FI_130.InfoID = 16 then 10 
							when FI_130.InfoID = 17 then 11
							when FI_130.InfoID = 18 then 16
							when FI_130.InfoID = 19 then 17
							when FI_130.InfoID = 20 then 18
							when FI_130.InfoID = 21 then 19
							when FI_130.InfoID = 22 then 20
							when FI_130.InfoID = 23 then 21
							when FI_130.InfoID = 24 then 22
							when FI_130.InfoID = 25 then 23
							when FI_130.InfoID = 26 then 24
							when FI_130.InfoID = 27 then 25
							when FI_130.InfoID = 28 then 26
							when FI_130.InfoID = 29 then 27
							when FI_130.InfoID = 30 then 28
							when FI_130.InfoID = 31 then 29
							when FI_130.InfoID = 32 then 30
						  --when FI_130.InfoID = 33 then ?
						  --when FI_130.InfoID = 34 then ?
						  --when FI_130.InfoID = 35 then ?
							when FI_130.InfoID = 36 then 12
							when FI_130.InfoID = 37 then 13
							when FI_130.InfoID = 38 then 14
							when FI_130.InfoID = 39 then 15
						else 0 
						end 
						--WageKind_New ,FI.InfoName_L1,FI_130.InfoName_L1 InfoName_L130,SR.Kind,FI.WageKind WageKindold,FI_130.InfoID ,FI.InfoID InfoIDfi ,FI.formInfoID
	FROM Pay.SalaryRange SR
		INNER JOIN 	Pay.FormsInfo FI ON SR.SalaryID = FI.FormInfoID
		INNER JOIN  Pay.FormTypes FT ON FI.FormType = FT.FormType 
		INNER JOIN	Pay.FormsInfo AS FI_130 ON SR.FormInfoID = FI_130.FormInfoID
		
	WHERE (SR.Kind = 0) AND	FI_130.FormType = 130
--) AS derivedtbl_1 ON Pay.WageKinds.WageKind = derivedtbl_1.WageKind_New


update Pay.FormsInfo
set WageKind = 1 
WHERE  (FormInfoID IN
                             (SELECT DISTINCT Pay.SalaryRange.SalaryID
                                FROM            Pay.FormsInfo AS FormsInfo_1 INNER JOIN
                                                         Pay.SalaryRange ON FormsInfo_1.FormInfoID = Pay.SalaryRange.FormInfoID
                                WHERE        (FormsInfo_1.FormType = 29)))
	 AND WageKind != 1
--
update Pay.FormsInfo
set WageKind = 27 
WHERE  not (FormInfoID IN
                             (SELECT DISTINCT Pay.SalaryRange.SalaryID
                                FROM            Pay.FormsInfo AS FormsInfo_1 INNER JOIN
                                                         Pay.SalaryRange ON FormsInfo_1.FormInfoID = Pay.SalaryRange.FormInfoID
                                WHERE        (FormsInfo_1.FormType = 29)))
	 AND WageKind = 1

UPDATE Pay.FormTypes
   SET DisplayFormType = 0
WHERE (DisplayFormType = 4) AND (FormType IN (94,130))

END

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

if not exists (select * from sysobjects where id = object_id(N'Pay.JobPromissory') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Pay.JobPromissory(
jobCode int NOT NULL ,
PromRunDate char(10) NOT NULL ,
PromAmount money  NOT NULL ,
CONSTRAINT PK_JobPromissory  PRIMARY KEY CLUSTERED (jobCode,	PromRunDate) ON [PRIMARY] ,
CONSTRAINT FK_JobPromissory_jobs FOREIGN KEY (jobCode) 
  REFERENCES Pay.jobs (jobCode) ON DELETE CASCADE ON UPDATE CASCADE ) ON [PRIMARY]


if not exists (select * from sysobjects where id = object_id(N'Tab_Job') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
    CREATE TABLE Tab_Job(
      Job_Code     char(6) COLLATE Arabic_CI_AS NULL,
      Job_Desc varchar(50) COLLATE Arabic_CI_AS NULL) ON [PRIMARY]
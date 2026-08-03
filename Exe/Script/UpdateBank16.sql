                                        ---------                    
                    --------------------         --------------------
--------------------------------------- TimeSheet ---------------------------------------
                    --------------------         --------------------
                                        ---------
set nocount on

IF NOT EXISTS (SELECT Name FROM sysusers WHERE Name = N'Tsh')
EXEC sp_addrole @RoleName = N'Tsh'

---------------------------------------------------------------
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Tsh.Months') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE Tsh.Months(
	MonthId tinyint NOT NULL,
	MonthName nvarchar(50) NOT NULL,
 CONSTRAINT PK_Months PRIMARY KEY CLUSTERED 
(
	MonthId ASC
) ON [PRIMARY]
) ON [PRIMARY]

INSERT INTO Tsh.Months(MonthId, MonthName)
SELECT 1 , '›—Ê—œÌ‰'  UNION
SELECT 2 , '«—œÌ»Â‘ ' UNION
SELECT 3 , 'Œ—œ«œ'    UNION
SELECT 4 , ' Ì—'      UNION
SELECT 5 , '„—œ«œ'    UNION
SELECT 6 , '‘Â—ÌÊ—'   UNION
SELECT 7 , '„Â—'      UNION
SELECT 8 , '¬»«‰'     UNION
SELECT 9 , '¬–—'      UNION
SELECT 10, 'œÌ'       UNION
SELECT 11, '»Â„‰'     UNION
SELECT 12, '«”›‰œ'

END

---------------------------------------------------------------
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Tsh.Week') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE Tsh.Week(
	DayId tinyint NOT NULL,
	DayName nvarchar(50) NOT NULL,
 CONSTRAINT PK_Week PRIMARY KEY CLUSTERED 
(
	DayId ASC
) ON [PRIMARY]
) ON [PRIMARY]

INSERT INTO Tsh.Week(DayId, DayName)
SELECT 1 , '‘‰»Â'     UNION
SELECT 2 , 'Ìﬂ‘‰»Â'   UNION
SELECT 3 , 'œÊ‘‰»Â'   UNION
SELECT 4 , '”Â ‘‰»Â'  UNION
SELECT 5 , 'çÂ«—‘‰»Â' UNION
SELECT 6 , 'Å‰Ã ‘‰»Â' UNION
SELECT 7 , '¬œÌ‰Â' 
END

---------------------------------------------------------------
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Tsh.WorkGroups') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE Tsh.WorkGroups(
	WorkGroupId int NOT NULL,
	WorkGroupName nvarchar(50) NOT NULL,
 CONSTRAINT PK_WorkGroups PRIMARY KEY CLUSTERED 
(
	WorkGroupId ASC
) ON [PRIMARY]
) ON [PRIMARY]

END

---------------------------------------------------------------
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Tsh.GroupsPerson') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
begin
  CREATE TABLE Tsh.GroupsPerson(
	CustID int NOT NULL,  
	CustID2 int NOT NULL,
	RunDate char(10) NOT NULL,
 CONSTRAINT PK_GroupsPerson PRIMARY KEY CLUSTERED 
(
	CustID,CustID2 ASC
)  ON [PRIMARY]
) ON [PRIMARY]
	
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_GroupsPersons_Customers' AND type = 'F')
	ALTER TABLE Tsh.GroupsPerson  WITH NOCHECK ADD  
	CONSTRAINT FK_GroupsPersons_Customers FOREIGN KEY(CustID)
	REFERENCES Customers (CustID)
	ON UPDATE CASCADE

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_GroupsPersons_Customers2' AND type = 'F')
	ALTER TABLE Tsh.GroupsPerson  WITH NOCHECK ADD  
	CONSTRAINT FK_GroupsPersons_Customers2 FOREIGN KEY(CustID2)
	REFERENCES Customers (CustID)

---------------------------------------------------------------
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Tsh.WorkGroupsPerson') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
  CREATE TABLE Tsh.WorkGroupsPerson(
	WorkGroupId int NOT NULL,
	CustID int NOT NULL,  
	RunDate char(10) NOT NULL,-------»⁄œ« «÷«›Â ‘œ
	CONSTRAINT FK_WorkGroupsPersons_WorkGroups FOREIGN KEY(WorkGroupId)
	REFERENCES Tsh.WorkGroups (WorkGroupId)
	ON UPDATE CASCADE,
	CONSTRAINT FK_WorkGroupsPersons_Customers FOREIGN KEY(CustID)
	REFERENCES Customers (CustID)
	ON UPDATE CASCADE,	
 CONSTRAINT PK_WorkGroupsPerson PRIMARY KEY CLUSTERED 
(
	WorkGroupId,CustID ASC
)  ON [PRIMARY]
) ON [PRIMARY]
---------------------------------------------------------------
----------  «’·«Õ ﬂ·Ìœ œÊÃœÊ· “Ì— »« ﬂ„ﬂ «÷«›Â ﬂ—œ‰ ›Ì·œ RunDate 
if ( COLUMNPROPERTY( OBJECT_ID('Tsh.WorkGroupsPerson'),'RunDate','IsRowGuidCol')is  null )  
begin
  ALTER TABLE Tsh.WorkGroupsPerson ADD RunDate char(10) NOT NULL CONSTRAINT DF_WorkGroupsPerson_RunDate DEFAULT (0)
  
IF EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_WorkGroupsPerson' AND type = 'K')
 ALTER TABLE Tsh.WorkGroupsPerson DROP CONSTRAINT PK_WorkGroupsPerson
 ALTER TABLE Tsh.WorkGroupsPerson ADD  CONSTRAINT PK_WorkGroupsPerson 
   PRIMARY KEY CLUSTERED (WorkGroupId,CustID,RunDate) ON [PRIMARY] 
   
IF EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_GroupsPerson' AND type = 'K')
 ALTER TABLE Tsh.GroupsPerson DROP CONSTRAINT PK_GroupsPerson
 ALTER TABLE Tsh.GroupsPerson ADD  CONSTRAINT PK_GroupsPerson 
   PRIMARY KEY CLUSTERED (CustID,CustID2,RunDate) ON [PRIMARY]   
  
end  



---------------------------------------------------------------shift kari
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Tsh.Schedules') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE Tsh.Schedules(
	ScheduleId int NOT NULL,
	WorkGroupId int NOT NULL DEFAULT(0) , 
	ScheduleNo int NOT NULL,
	ScheduleDate char(10) NOT NULL,
	ScheduleNote nvarchar(500) NULL,
	RunDate char(10) NOT NULL,

 CONSTRAINT PK_Schedules PRIMARY KEY CLUSTERED 
(
	ScheduleId ASC
) ON [PRIMARY]
) ON [PRIMARY]


END
IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Schedules_WorkGroups' AND type = 'F')
ALTER TABLE Tsh.Schedules
WITH CHECK ADD CONSTRAINT FK_Schedules_WorkGroups FOREIGN KEY (WorkGroupId)
REFERENCES Tsh.WorkGroups(WorkGroupId)ON UPDATE CASCADE


---------------------------------------------------------------
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Tsh.ScheduleItems') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE Tsh.ScheduleItems(
	ScheduleItemId int IDENTITY(1,1),
	ScheduleId int NOT NULL,
	DayId tinyint NOT NULL,
	Shift1 decimal(4,2) NULL,
	Shift2 decimal(4,2) NULL,
	Shift3 decimal(4,2) NULL,
	Note nvarchar(500) NULL,
 CONSTRAINT PK_ScheduleItems PRIMARY KEY CLUSTERED 
(
	ScheduleItemId ASC
) ON [PRIMARY]
) ON [PRIMARY]

END

IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
    WHERE   (TABLE_NAME = N'ScheduleItems') AND (COLUMN_NAME = N'Shift1') AND (DATA_TYPE = N'decimal')AND (NUMERIC_PRECISION=4) AND (NUMERIC_SCALE=2))
begin  
  ALTER TABLE Tsh.ScheduleItems ALTER column Shift1 decimal(4,2)
  ALTER TABLE Tsh.ScheduleItems ALTER column Shift2 decimal(4,2)
  ALTER TABLE Tsh.ScheduleItems ALTER column Shift3 decimal(4,2)
end

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ScheduleItems_Schedules' AND type = 'F')
ALTER TABLE Tsh.ScheduleItems
WITH CHECK ADD CONSTRAINT FK_ScheduleItems_Schedules FOREIGN KEY (ScheduleId)
REFERENCES Tsh.Schedules(ScheduleId)ON UPDATE CASCADE ON DELETE CASCADE

---------------------------------------------------------------
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Tsh.HistoricalKind') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE Tsh.HistoricalKind(
	HistoricalKindId tinyint NOT NULL,
	HistoricalKindName nvarchar(500) NOT NULL,
 CONSTRAINT PK_HistoricalKind PRIMARY KEY CLUSTERED 
(
	HistoricalKindId ASC
) ON [PRIMARY]
) ON [PRIMARY]
END

---------------------------------------------------------------
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Tsh.ScheduleExceptions') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE Tsh.ScheduleExceptions(
	ExceptionId int NOT NULL,
	ExceptionDate char(10) NOT NULL,
	WorkGroupId int NOT NULL DEFAULT(0), -- 
	Shift1 decimal(4,2) NULL,
	Shift2 decimal(4,2) NULL,
	Shift3 decimal(4,2) NULL,
	Note nvarchar(500) NULL,
	HistoricalKindId tinyint NOT NULL,
	YearId int NOT NULL,
CONSTRAINT PK_ScheduleExceptions PRIMARY KEY CLUSTERED 
(
	ExceptionId ASC
) ON [PRIMARY]
) ON [PRIMARY]
END


IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ScheduleExceptions_HistoricalKind' AND type = 'F')
ALTER TABLE Tsh.ScheduleExceptions
WITH CHECK ADD CONSTRAINT FK_ScheduleExceptions_HistoricalKind FOREIGN KEY (HistoricalKindId)
REFERENCES Tsh.HistoricalKind(HistoricalKindId)ON UPDATE CASCADE 

if ( COLUMNPROPERTY( OBJECT_ID('Tsh.ScheduleExceptions'),'WorkGroupId','IsRowGuidCol')is  null )  
ALTER TABLE Tsh.ScheduleExceptions ADD WorkGroupId int NOT NULL DEFAULT(0)


IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ScheduleExceptions_WorkGroups' AND type = 'F')
ALTER TABLE Tsh.ScheduleExceptions
WITH CHECK ADD CONSTRAINT FK_ScheduleExceptions_WorkGroups FOREIGN KEY (WorkGroupId)
REFERENCES Tsh.WorkGroups(WorkGroupId)ON UPDATE CASCADE


---------------------------------------------------------------
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Tsh.Functions')AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE Tsh.Functions(
	FunctionId int NOT NULL,
	FunctionInfoType tinyint NOT NULL, -- ‰Ê⁄ «ÿ·«⁄« 
--	WorkGroupId int NOT NULL DEFAULT(0), -- 
	WorkShopId int NOT NULL DEFAULT(0), -- CustId    5,16
	MachineId bigint , -- StuffCode    9
	PersonId int NOT NULL DEFAULT(0), -- CustId  11,13,14,19
	StuffId bigint NULL, -- StuffCode   3

	StuffCode2 bigint NULL, -- StuffCode    ⁄„·Ì«  
	StuffCode3 bigint NULL, -- StuffCode   «œÊ«  

	Productionprocess int NOT NULL DEFAULT(0), -- CustId  ›—¬Ì‰œ  Ê·Ìœ   18
	EarthField varchar(10) NOT NULL DEFAULT(0),--   „“—⁄Â
	Gate int NOT NULL DEFAULT(0), -- ﬁÿ⁄Â
	Ratio int NOT NULL DEFAULT(1),
	FunctionAmount float NOT NULL DEFAULT(0),
	FunctionDate char(10) NOT NULL ,
	StartHour datetime ,
	EndHour datetime ,
	FunctionHour datetime ,
	FunctionNote nvarchar(500) ,
	CaseId int NOT NULL DEFAULT(0), -- CustId   15
	FunctionType tinyint NOT NULL,
	FunctionStatus tinyint NOT NULL,
	Amount1 float DEFAULT(0),
	Amount2 float DEFAULT(0),
	Amount3 float DEFAULT(0),
	UserChangeFunctionStatus  varchar(50),
CONSTRAINT PK_Functions PRIMARY KEY CLUSTERED 
(
	FunctionId ASC
) ON [PRIMARY]
) ON [PRIMARY]
END

IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
    WHERE   (TABLE_NAME = N'Functions') AND (COLUMN_NAME = N'FunctionHour') AND (DATA_TYPE = N'datetime'))
ALTER TABLE Tsh.Functions ALTER column FunctionHour datetime

if (  OBJECT_ID('DF_Functions_FunctionAmount') is  null )  
begin
DECLARE @S SYSNAME
SET @S=''

DECLARE @SQL NVARCHAR(500)
SET @SQL=''
WHILE @S is not NULL
BEGIN
	SELECT @S=NAME FROM sysobjects WHERE NAME  like'DF%Functions%Funct%' and parent_obj=object_id(N'Tsh.Functions')
	IF @S<>'' or @S<>NULL
	BEGIN
		SET @SQL='ALTER TABLE Tsh.Functions DROP CONSTRAINT '+@S
	--	print @SQL
		exec(@SQL)
        SET @S=''
	END
	ELSE 
	SET	@S=NULL
END

IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
    WHERE   (TABLE_NAME = N'Functions') AND (COLUMN_NAME = N'FunctionAmount') AND (DATA_TYPE = N'float'))
ALTER TABLE Tsh.Functions ALTER column FunctionAmount float

ALTER TABLE Tsh.Functions ADD CONSTRAINT DF_Functions_FunctionAmount  DEFAULT (0) FOR FunctionAmount
end


if ( COLUMNPROPERTY( OBJECT_ID('Tsh.Functions'),'Amount1','IsRowGuidCol')is  null )  
ALTER TABLE Tsh.Functions ADD Amount1 float DEFAULT(0)
if ( COLUMNPROPERTY( OBJECT_ID('Tsh.Functions'),'Amount2','IsRowGuidCol')is  null )  
ALTER TABLE Tsh.Functions ADD Amount2 float DEFAULT(0)
if ( COLUMNPROPERTY( OBJECT_ID('Tsh.Functions'),'Amount3','IsRowGuidCol')is  null )  
ALTER TABLE Tsh.Functions ADD Amount3 float DEFAULT(0)

if ( COLUMNPROPERTY( OBJECT_ID('Tsh.Functions'),'StuffCode2','IsRowGuidCol')is  null )  
ALTER TABLE Tsh.Functions ADD StuffCode2 bigint
if ( COLUMNPROPERTY( OBJECT_ID('Tsh.Functions'),'StuffCode3','IsRowGuidCol')is  null )  
ALTER TABLE Tsh.Functions ADD StuffCode3 bigint

if ( COLUMNPROPERTY( OBJECT_ID('Tsh.Functions'),'ShiftWork','IsRowGuidCol')is  null )  
ALTER TABLE Tsh.Functions ADD ShiftWork tinyint
if ( COLUMNPROPERTY( OBJECT_ID('Tsh.Functions'),'Shift','IsRowGuidCol')is  null )  
ALTER TABLE Tsh.Functions ADD Shift tinyint

if ( COLUMNPROPERTY( OBJECT_ID('Tsh.Functions'),'ShiftWorkTime','IsRowGuidCol')is  null )  
ALTER TABLE Tsh.Functions ADD ShiftWorkTime datetime
if ( COLUMNPROPERTY( OBJECT_ID('Tsh.Functions'),'OverTime','IsRowGuidCol')is  null )  
ALTER TABLE Tsh.Functions ADD OverTime datetime

if ( COLUMNPROPERTY( OBJECT_ID('Tsh.Functions'),'UserChangeFunctionStatus','IsRowGuidCol')is  null )  
ALTER TABLE Tsh.Functions ADD UserChangeFunctionStatus  varchar(50)

if ( COLUMNPROPERTY( OBJECT_ID('Tsh.Functions'),'FirstUser','IsRowGuidCol')is  null )  
ALTER TABLE Tsh.Functions ADD FirstUser varchar(50)  

if ( COLUMNPROPERTY( OBJECT_ID('Tsh.Functions'),'LastUser','IsRowGuidCol')is  null )  
ALTER TABLE Tsh.Functions ADD LastUser varchar(50) 


IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Functions_StuffCoding' AND type = 'F')
ALTER TABLE Tsh.Functions
WITH CHECK ADD CONSTRAINT FK_Functions_StuffCoding FOREIGN KEY (MachineId)
REFERENCES dbo.StuffCoding(c_StuffCode) ON UPDATE CASCADE 

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Functions_Customers' AND type = 'F')
ALTER TABLE Tsh.Functions
WITH CHECK ADD CONSTRAINT FK_Functions_Customers FOREIGN KEY (WorkShopId)
REFERENCES dbo.Customers(CustID) ON UPDATE CASCADE 

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Functions_Customers1' AND type = 'F')
ALTER TABLE Tsh.Functions
WITH CHECK ADD CONSTRAINT FK_Functions_Customers1 FOREIGN KEY (PersonId)
REFERENCES dbo.Customers(CustID)


IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Functions_Customers2' AND type = 'F')
ALTER TABLE Tsh.Functions
WITH CHECK ADD CONSTRAINT FK_Functions_Customers2 FOREIGN KEY (CaseId)
REFERENCES dbo.Customers(CustID) 

--IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Functions_WorkGroups' AND type = 'F')
--ALTER TABLE Tsh.Functions
--WITH CHECK ADD CONSTRAINT FK_Functions_WorkGroups FOREIGN KEY (WorkGroupId)
--REFERENCES Tsh.WorkGroups(WorkGroupId)ON UPDATE CASCADE

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Functions_StuffCoding2' AND type = 'F')
ALTER TABLE Tsh.Functions
WITH CHECK ADD CONSTRAINT FK_Functions_StuffCoding2 FOREIGN KEY (StuffCode2)
REFERENCES dbo.StuffCoding(c_StuffCode) --ON UPDATE CASCADE 

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Functions_StuffCoding3' AND type = 'F')
ALTER TABLE Tsh.Functions
WITH CHECK ADD CONSTRAINT FK_Functions_StuffCoding3 FOREIGN KEY (StuffCode2)
REFERENCES dbo.StuffCoding(c_StuffCode) --ON UPDATE CASCADE 

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Functions_WorkGroups' AND type = 'F')
begin
ALTER TABLE Tsh.Functions Drop CONSTRAINT FK_Functions_WorkGroups 
end


if not( COLUMNPROPERTY( OBJECT_ID('Tsh.Functions'),'WorkGroupId','IsRowGuidCol')is  null )  
begin
	DECLARE @S1 SYSNAME
	SET @S1=''

	DECLARE @SQL1 NVARCHAR(500)
	SET @SQL1=''
	WHILE @S1 is not NULL
	BEGIN
		SELECT @S1=NAME FROM sysobjects WHERE NAME  like'DF%Functions%Work%'
		IF @S1<>'' or @S1<>NULL
		BEGIN
			SET @SQL1='ALTER TABLE Tsh.Functions DROP CONSTRAINT '+@S
			exec(@SQL1)
			SET @S1=''
		END
		ELSE 
		SET	@S1=NULL
	END

	if not( COLUMNPROPERTY( OBJECT_ID('Tsh.Functions'),'WorkGroupId','IsRowGuidCol')is  null )  
	ALTER TABLE Tsh.Functions Drop COlumn WorkGroupId
end




IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Functions_Customers3' AND type = 'F')
ALTER TABLE Tsh.Functions
WITH CHECK ADD CONSTRAINT FK_Functions_Customers3 FOREIGN KEY (Productionprocess)
REFERENCES dbo.Customers(CustID) 

--IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Functions_Earth' AND type = 'F')
--ALTER TABLE Tsh.Functions
--WITH CHECK ADD CONSTRAINT FK_Functions_Earth FOREIGN KEY (EarthField,Gate)
--REFERENCES Agr.Earth(EarthField,Gate)         ---replication error

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Functions_StuffCoding1' AND type = 'F')
ALTER TABLE Tsh.Functions
WITH CHECK ADD CONSTRAINT FK_Functions_StuffCoding1 FOREIGN KEY (StuffId)
REFERENCES dbo.StuffCoding(c_StuffCode) 


---------------------------------------------------------------
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Tsh.FunctionItems') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE Tsh.FunctionItems(
	FunctionItemId int IDENTITY(1, 1),
	FunctionId int NOT NULL,
	DoneAmount decimal(18, 4) NULL,
	DamageAmount decimal(18, 4) NULL,
	RepairAmount decimal(18, 4) NULL,
	FunctionAmount float NOT NULL,
	BaseAmount decimal(18, 4) NOT NULL,
	BaseRate money NOT NULL,
	FunctionItemNote nvarchar(500) NOT NULL,
	StuffId bigint NULL , -- StuffCode
	FarmId int NOT NULL DEFAULT(0),
	PieceId int NOT NULL DEFAULT(0),
	Ratio int NOT NULL DEFAULT(1),
CONSTRAINT PK_FunctionItems PRIMARY KEY CLUSTERED 
(
	FunctionItemId ASC
) ON [PRIMARY]
) ON [PRIMARY]



END

IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
    WHERE   (TABLE_NAME = N'FunctionItems') AND (COLUMN_NAME = N'FunctionAmount') AND (DATA_TYPE = N'float'))
ALTER TABLE Tsh.FunctionItems ALTER column FunctionAmount float


IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FunctionItems_Functions' AND type = 'F')
ALTER TABLE Tsh.FunctionItems
WITH CHECK ADD CONSTRAINT FK_FunctionItems_Functions FOREIGN KEY (FunctionId)
REFERENCES Tsh.Functions(FunctionId) ON UPDATE CASCADE

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FunctionItems_StuffCoding' AND type = 'F')
ALTER TABLE Tsh.FunctionItems
WITH CHECK ADD CONSTRAINT FK_FunctionItems_StuffCoding FOREIGN KEY (StuffId)
REFERENCES dbo.StuffCoding(c_StuffCode)

if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'NextFormType','IsRowGuidCol')is  null )  
ALTER TABLE FormTypes ADD NextFormType Tinyint 

if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'AidFormType','IsRowGuidCol')is  null )  
ALTER TABLE Forms ADD AidFormType Tinyint 

IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
 if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'DocPostKind','IsRowGuidCol')is  null )  
ALTER TABLE ReciptTypes ADD DocPostKind smallint NOT NULL DEFAULT(-1)

if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'DocPostKind','IsRowGuidCol')is  null )  
ALTER TABLE FormTypes ADD DocPostKind smallint NOT NULL DEFAULT(-1)

if ( COLUMNPROPERTY( OBJECT_ID('Config'),'FunctionsAmountCaptions','IsRowGuidCol')is  null )  
ALTER TABLE Config ADD FunctionsAmountCaptions varchar(1000)

IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes1') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
 IF (SELECT COUNT(*) FROM ReciptTypes1 WHERE EarthFieldGateActive = 1 )>0
begin
 if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'EarthField','IsRowGuidCol')is  null )  
  ALTER TABLE ReciptItems ADD EarthField varchar(10)

 if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'Gate','IsRowGuidCol')is  null )  
  ALTER TABLE ReciptItems ADD Gate int
end

IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
    WHERE   (TABLE_NAME = N'StuffCoding') AND (COLUMN_NAME = N'n_orderPoint') AND (DATA_TYPE = N'float'))
 ALTER TABLE StuffCoding ALTER column n_orderPoint float


IF NOT EXISTS (SELECT 1 FROM sysusers WHERE Name = N'Machin')
EXEC sp_addrole @RoleName = N'Machin'


IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Machin.Machinery')AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE Machin.Machinery(
	MachinType tinyint NOT NULL, -- ‰Ê⁄ «ÿ·«⁄« 
	MachineId bigint  NOT NULL, -- StuffCode    
	StuffId bigint  NOT NULL, -- StuffCode   
	ControlType  tinyint NOT NULL, 
	Amount float NOT NULL DEFAULT(0),
	Total float NOT NULL DEFAULT(0),
CONSTRAINT PK_Machinery PRIMARY KEY CLUSTERED 
(
	MachinType,MachineId,StuffId 
) ON [PRIMARY]
) ON [PRIMARY]


END

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Machinery_StuffCoding' AND type = 'F')
ALTER TABLE Machin.Machinery
WITH CHECK ADD CONSTRAINT FK_Machinery_StuffCoding FOREIGN KEY (MachineId)
REFERENCES dbo.StuffCoding(c_StuffCode) ON UPDATE CASCADE 

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Machinery_StuffCoding1' AND type = 'F')
ALTER TABLE Machin.Machinery
WITH CHECK ADD CONSTRAINT FK_Machinery_StuffCoding1 FOREIGN KEY (StuffId)
REFERENCES dbo.StuffCoding(c_StuffCode) 


if ( COLUMNPROPERTY( OBJECT_ID('Machin.Machinery'),'states','IsRowGuidCol')is  null )  
ALTER TABLE Machin.Machinery ADD states Tinyint CONSTRAINT DF_Machinery_states  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Machin.Machinery'),'LookUpID1','IsRowGuidCol')is  null )  
ALTER TABLE Machin.Machinery ADD LookUpID1 int CONSTRAINT FK_Machinery_LookUps1 FOREIGN KEY (LookUpID1)
REFERENCES LookUps(LookUpID)  ON UPDATE CASCADE

if ( COLUMNPROPERTY( OBJECT_ID('Machin.Machinery'),'LookUpID2','IsRowGuidCol')is  null )  
ALTER TABLE Machin.Machinery ADD LookUpID2 int CONSTRAINT FK_Machinery_LookUps2 FOREIGN KEY (LookUpID2)
REFERENCES LookUps(LookUpID) 

if ( COLUMNPROPERTY( OBJECT_ID('Machin.Machinery'),'LookUpID3','IsRowGuidCol')is  null )  
ALTER TABLE Machin.Machinery ADD LookUpID3 int CONSTRAINT FK_Machinery_LookUps3 FOREIGN KEY (LookUpID3)
REFERENCES LookUps(LookUpID) 

if ( COLUMNPROPERTY( OBJECT_ID('Machin.Machinery'),'Amount2','IsRowGuidCol')is  null )  
ALTER TABLE Machin.Machinery ADD Amount2 decimal(20,4) 

if ( COLUMNPROPERTY( OBJECT_ID('Machin.Machinery'),'Model','IsRowGuidCol')is  null )  
ALTER TABLE Machin.Machinery ADD Model varchar(20) 

if ( COLUMNPROPERTY( OBJECT_ID('Machin.Machinery'),'Specifications','IsRowGuidCol')is  null )  
ALTER TABLE Machin.Machinery ADD Specifications varchar(20) 

if ( COLUMNPROPERTY( OBJECT_ID('Machin.Machinery'),'Id','IsRowGuidCol')is  null ) 
begin
  IF  EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_Machinery' AND type = 'K')
    ALTER TABLE Machin.Machinery	DROP CONSTRAINT PK_Machinery
 ALTER TABLE Machin.Machinery ADD Id int identity(1,1) not null
end 

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_Machinery' AND type = 'K')
 ALTER TABLE Machin.Machinery ADD CONSTRAINT PK_Machinery PRIMARY KEY CLUSTERED (Id) ON [PRIMARY]

if ( COLUMNPROPERTY( OBJECT_ID('Machin.Machinery'),'ParentId','IsRowGuidCol')is  null ) 
 ALTER TABLE Machin.Machinery ADD ParentId int 

IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'dbo.CustomersCapacity')AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE dbo.CustomersCapacity(
	CustID int NOT NULL ,
	StuffCode bigint NOT NULL, 
	Amount float DEFAULT(0),
	Price money DEFAULT(0),
	RunDate char(10) NOT NULL ,
	States tinyint NOT NULL, 
CONSTRAINT PK_CustomersCapacity PRIMARY KEY CLUSTERED (CustID,StuffCode) ON [PRIMARY]
) ON [PRIMARY]
END

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_CustomersCapacity_Customers' AND type = 'F')
ALTER TABLE dbo.CustomersCapacity
WITH CHECK ADD CONSTRAINT FK_CustomersCapacity_Customers FOREIGN KEY (CustID)
REFERENCES Customers(CustID) ON UPDATE CASCADE 

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_CustomersCapacity_StuffCoding' AND type = 'F')
ALTER TABLE dbo.CustomersCapacity
WITH CHECK ADD CONSTRAINT FK_CustomersCapacity_StuffCoding FOREIGN KEY (StuffCode)
REFERENCES StuffCoding(c_StuffCode) ON UPDATE CASCADE 



IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Machin.Maintenance')AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE Machin.Maintenance(
   MaintenanceID int,
   YearID int NOT NULL ,
   MaintenanceKind tinyint NOT NULL, 
   MaintenanceNo tinyint NOT NULL, 
   MaintenanceDate char(10) NOT NULL ,
   CustID1 int NOT NULL ,
   CustID2 int NOT NULL ,
   CustID3 int NOT NULL ,
   StuffCode bigint NOT NULL, 
   DescRequest varchar(1000),
   NumberCar varchar(20),
   driverName varchar(20),
   DateAndTime DateTime,
   LoginNow DateTime,
--   MaintenanceStatus tinyint NOT NULL,
CONSTRAINT PK_Maintenance PRIMARY KEY CLUSTERED (MaintenanceID) ON [PRIMARY]
) ON [PRIMARY]
END

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Maintenance_Customers1' AND type = 'F')
ALTER TABLE Machin.Maintenance
WITH CHECK ADD CONSTRAINT FK_Maintenance_Customers1 FOREIGN KEY (CustID1)
REFERENCES Customers(CustID) ON UPDATE CASCADE 

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Maintenance_Customers2' AND type = 'F')
ALTER TABLE Machin.Maintenance
WITH CHECK ADD CONSTRAINT FK_Maintenance_Customers2 FOREIGN KEY (CustID2)
REFERENCES Customers(CustID) --ON UPDATE CASCADE 

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Maintenance_Customers3' AND type = 'F')
ALTER TABLE Machin.Maintenance
WITH CHECK ADD CONSTRAINT FK_Maintenance_Customers3 FOREIGN KEY (CustID3)
REFERENCES Customers(CustID) --ON UPDATE CASCADE 

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Maintenance_StuffCoding' AND type = 'F')
ALTER TABLE Machin.Maintenance
WITH CHECK ADD CONSTRAINT FK_Maintenance_StuffCoding FOREIGN KEY (StuffCode)
REFERENCES StuffCoding(c_StuffCode) ON UPDATE CASCADE


if (SELECT count(c_StuffCode) FROM StuffCoding WHERE c_StuffCode=0)=0
INSERT INTO StuffCoding (c_StuffCode,c_StuffName,n_UnitCode,GroupID,TariffsID,acc_CTopicCode3,acc_DetaiCode,acc_CTopicCode,acc_CTopicCode2)
SELECT 0,'0',1,(SELECT MIN(GroupID)FROM StuffGroups),null,0,0,0,0

if (SELECT count(MaintenanceID) FROM Machin.Maintenance WHERE MaintenanceID=0)=0
INSERT INTO Machin.Maintenance
 (MaintenanceID, YearID, MaintenanceKind, MaintenanceNo, MaintenanceDate, CustID1, CustID2, CustID3, StuffCode)
SELECT     0, (SELECT MAX(YearID) FROM Util.MaliYear) , 0, 0, '0', 0, 0, 0, (SELECT MAX(c_StuffCode) FROM StuffCoding)

if ( COLUMNPROPERTY( OBJECT_ID('Tsh.Functions'),'MaintenanceID','IsRowGuidCol')is  null )  
ALTER TABLE Tsh.Functions ADD MaintenanceID int CONSTRAINT DF_Functions_MaintenanceID  DEFAULT (0)

IF  EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Functions_Maintenance' AND type = 'F')
ALTER TABLE Tsh.Functions Drop CONSTRAINT FK_Functions_Maintenance 

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Functions_Maintenance' AND type = 'F')
ALTER TABLE Tsh.Functions
WITH CHECK ADD CONSTRAINT FK_Functions_Maintenance FOREIGN KEY (MaintenanceID)
REFERENCES Machin.Maintenance(MaintenanceID)

 if ( COLUMNPROPERTY( OBJECT_ID('Machin.Maintenance'),'MaintenanceStatus','IsRowGuidCol')is  null )  
ALTER TABLE Machin.Maintenance ADD MaintenanceStatus Tinyint NOT NULL 
         CONSTRAINT DF_Maintenance_MaintenanceStatus  DEFAULT (0)
  
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Machin.FuelRationing')AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE Machin.FuelRationing(
   FuelRationingID int,
   FuelRationingKind tinyint NOT NULL, 
   StuffCode1 bigint NOT NULL, 
   FuelRationingDate char(10) NOT NULL ,
   StuffCode2 bigint NOT NULL, 
   Amount float NOT NULL ,
   Note varchar(1000),
CONSTRAINT PK_FuelRationing PRIMARY KEY CLUSTERED (FuelRationingID) ON [PRIMARY]
) ON [PRIMARY]
END

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FuelRationing_StuffCoding1' AND type = 'F')
ALTER TABLE Machin.FuelRationing
WITH CHECK ADD CONSTRAINT FK_FuelRationing_StuffCoding1 FOREIGN KEY (StuffCode1)
REFERENCES StuffCoding(c_StuffCode) ON UPDATE CASCADE

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FuelRationing_StuffCoding2' AND type = 'F')
ALTER TABLE Machin.FuelRationing
WITH CHECK ADD CONSTRAINT FK_FuelRationing_StuffCoding2 FOREIGN KEY (StuffCode2)
REFERENCES StuffCoding(c_StuffCode) --ON UPDATE CASCADE


IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Machin.Delivery')AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE Machin.Delivery(
   DeliveryID int NOT NULL,
   StuffCode bigint NOT NULL, 
   CustID1 int NOT NULL ,
   DeliveryDate char(10) NOT NULL ,
   DeliveryText varchar(2000),
CONSTRAINT PK_Delivery PRIMARY KEY CLUSTERED (DeliveryID) ON [PRIMARY]
) ON [PRIMARY]
END

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Delivery_Customers1' AND type = 'F')
ALTER TABLE Machin.Delivery
WITH CHECK ADD CONSTRAINT FK_Delivery_Customers1 FOREIGN KEY (CustID1)
REFERENCES Customers(CustID) ON UPDATE CASCADE 

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Delivery_StuffCoding' AND type = 'F')
ALTER TABLE Machin.Delivery
WITH CHECK ADD CONSTRAINT FK_Delivery_StuffCoding FOREIGN KEY (StuffCode)
REFERENCES StuffCoding(c_StuffCode) ON UPDATE CASCADE


 if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'TechnicalCode','IsRowGuidCol')is  null )  
  ALTER TABLE Customers ADD TechnicalCode varchar(30)

  
IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE       (TABLE_NAME = N'Customers') AND (COLUMN_NAME = N'OperatorID') AND (DATA_TYPE='nvarchar') AND (CHARACTER_MAXIMUM_LENGTH =100 ))
  ALTER TABLE Customers ALTER COLUMN OperatorID nvarchar(500)
--ALTER TABLE Customers ALTER COLUMN OperatorID nvarchar(500)   ---<< Any company that needs it <<--

IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
begin
 if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ReciptsRowActive','IsRowGuidCol')is  null )  
ALTER TABLE ReciptTypes ADD ReciptsRowActive bigint NOT NULL DEFAULT(0)
 
if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'DefaultCTopic3_Bed','IsRowGuidCol')is  null )  
ALTER TABLE ReciptTypes ADD DefaultCTopic3_Bed tinyint NOT NULL DEFAULT(0)

if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'DefaultCTopic3_Bes','IsRowGuidCol')is  null )  
ALTER TABLE ReciptTypes ADD DefaultCTopic3_Bes tinyint NOT NULL DEFAULT(0)

if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'StartEndHourActive','IsRowGuidCol')is  null )  
ALTER TABLE ReciptTypes ADD StartEndHourActive tinyint NOT NULL DEFAULT(0)
end

if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'DefaultCTopic3_Bed','IsRowGuidCol')is  null )  
ALTER TABLE FormTypes ADD DefaultCTopic3_Bed tinyint NOT NULL DEFAULT(0)

if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'DefaultCTopic3_Bes','IsRowGuidCol')is  null )  
ALTER TABLE FormTypes ADD DefaultCTopic3_Bes tinyint NOT NULL DEFAULT(0)

if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CTopicCode3Active','IsRowGuidCol')is  null )  
ALTER TABLE FormTypes ADD CTopicCode3Active tinyint NOT NULL DEFAULT(0)

IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
 if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'CTopicCode3Active','IsRowGuidCol')is  null )  
ALTER TABLE ReciptTypes ADD CTopicCode3Active tinyint NOT NULL DEFAULT(0)

if ( COLUMNPROPERTY( OBJECT_ID('Forms'),'CTopicCode3','IsRowGuidCol')is  null )  
ALTER TABLE Forms ADD CTopicCode3 varchar(12) NOT NULL CONSTRAINT DF_Forms_CTopicCode3  DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('FormItems'),'CTopicCode3','IsRowGuidCol')is  null )  
ALTER TABLE FormItems ADD CTopicCode3 varchar(12) NOT NULL CONSTRAINT DF_FormItems_CTopicCode3  DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'acc_CTopicCode3','IsRowGuidCol')is  null )  
ALTER TABLE Customers ADD acc_CTopicCode3 varchar(12) NOT NULL CONSTRAINT DF_Customers_acc_CTopicCode3  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Deficits'),'acc_CTopicCode3','IsRowGuidCol')is  null )  
ALTER TABLE Deficits ADD acc_CTopicCode3 varchar(12) NOT NULL CONSTRAINT DF_Deficits_acc_CTopicCode3  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('StuffGroups'),'acc_CTopicCode3','IsRowGuidCol')is  null )  
ALTER TABLE StuffGroups ADD acc_CTopicCode3 varchar(12) NOT NULL CONSTRAINT DF_StuffGroups_acc_CTopicCode3  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'acc_CTopicCode3','IsRowGuidCol')is  null )  
ALTER TABLE ReciptItems ADD acc_CTopicCode3 varchar(12) NOT NULL CONSTRAINT DF_ReciptItems_acc_CTopicCode3  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('CustomersGroup'),'acc_CTopicCode3','IsRowGuidCol')is  null )  
ALTER TABLE CustomersGroup ADD acc_CTopicCode3 varchar(12) NOT NULL CONSTRAINT DF_CustomersGroup_acc_CTopicCode3  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('UseUnits'),'acc_CTopicCode3','IsRowGuidCol')is  null )  
ALTER TABLE UseUnits ADD acc_CTopicCode3 varchar(12) NOT NULL CONSTRAINT DF_UseUnits_acc_CTopicCode3  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'acc_TopicCode','IsRowGuidCol')is  null )  
ALTER TABLE Customers ADD acc_TopicCode varchar(12) NOT NULL CONSTRAINT DF_Customers_acc_TopicCode  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('LookUps'),'acc_CTopicCode3','IsRowGuidCol')is  null )  
ALTER TABLE LookUps ADD acc_CTopicCode3 varchar(12) NOT NULL CONSTRAINT DF_LookUps_acc_CTopicCode3  DEFAULT (0)
 
if ( COLUMNPROPERTY( OBJECT_ID('Config'),'CustAccDetailCodeEqualCustID','IsRowGuidCol')is  null )  
ALTER TABLE Config ADD CustAccDetailCodeEqualCustID varchar (50) NOT NULL  DEFAULT ('0')

IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
 if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ConversionCoSerialFormula','IsRowGuidCol')is  null )  
ALTER TABLE ReciptTypes ADD ConversionCoSerialFormula tinyint NOT NULL DEFAULT(0)

if ( COLUMNPROPERTY( OBJECT_ID('Stores'),'CTopicCode3','IsRowGuidCol')is  null )  
ALTER TABLE Stores ADD CTopicCode3 varchar(12) NOT NULL CONSTRAINT DF_Stores_CTopicCode3  DEFAULT (0)


if ( COLUMNPROPERTY( OBJECT_ID('UseUnits'),'CustID1','IsRowGuidCol')is  null )  
begin
  ALTER TABLE UseUnits ADD CustID1 int NOT NULL CONSTRAINT DF_UseUnits_CustID1 DEFAULT (0)
  ALTER TABLE UseUnits ADD CONSTRAINT FK_UseUnits_Customers1
      FOREIGN KEY (CustID1)REFERENCES Customers (CustID)  ON UPDATE CASCADE ON DELETE CASCADE 
end

if ( COLUMNPROPERTY( OBJECT_ID('UseUnits'),'CustID2','IsRowGuidCol')is  null )  
begin
  ALTER TABLE UseUnits ADD CustID2 int NOT NULL CONSTRAINT DF_UseUnits_CustID2  DEFAULT (0)
  ALTER TABLE UseUnits ADD CONSTRAINT FK_UseUnits_Customers2
      FOREIGN KEY (CustID2)REFERENCES Customers (CustID)  --ON UPDATE CASCADE ON DELETE CASCADE 
end

if ( COLUMNPROPERTY( OBJECT_ID('UseUnits'),'CustID3','IsRowGuidCol')is  null )  
begin
  ALTER TABLE UseUnits ADD CustID3 int NOT NULL CONSTRAINT DF_UseUnits_CustID3  DEFAULT (0)
  ALTER TABLE UseUnits ADD CONSTRAINT FK_UseUnits_Customers3
      FOREIGN KEY (CustID3)REFERENCES Customers (CustID)  --ON UPDATE CASCADE ON DELETE CASCADE 
end

if ( COLUMNPROPERTY( OBJECT_ID('UseUnits'),'CustID4','IsRowGuidCol')is  null )  
begin
  ALTER TABLE UseUnits ADD CustID4 int NOT NULL CONSTRAINT DF_UseUnits_CustID4  DEFAULT (0)
  ALTER TABLE UseUnits ADD CONSTRAINT FK_UseUnits_Customers4
      FOREIGN KEY (CustID4)REFERENCES Customers (CustID)  --ON UPDATE CASCADE ON DELETE CASCADE 
end
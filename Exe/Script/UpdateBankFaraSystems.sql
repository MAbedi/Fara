-------------------------------------------------------------------------
---------------------------اين بروز رساني در فرم login3.pas  اضافه شد
-------------------------------------------------------------------------
use FaraSystems


if (Select COUNT(Uid) from sysusers where Name = 'Util')=0 
begin 
  Exec sp_addrole @RoleName = N'Util' ,@ownerName='FaraUser' 
end


-- add to FaraSystems database 
if not exists (select * from sysobjects where id = object_id(N'Util.SubSystemsMenus') AND OBJECTPROPERTY(id, N'IsTable') = 1)
CREATE TABLE util.SubSystemsMenus(
	ID int IDENTITY(1,1) NOT NULL,
	SysMenuName varchar(100) NULL,
	SysMenuCaption nvarchar(200) NULL,
	SysMenuSequence int NOT NULL,
	ParentID int NULL,
	FormName varchar(100) NULL,
 CONSTRAINT PK_SubSystemsMenus PRIMARY KEY CLUSTERED (ID ASC )
)


if not exists (select * from sysobjects where id = object_id(N'Util.FormsActions') AND OBJECTPROPERTY(id, N'IsTable') = 1)
CREATE TABLE util.FormsActions(
	ID int NOT NULL,
	FormActionName varchar(100) NOT NULL,
	FormActionCaption nvarchar(200) NULL,
	FormActionSequence int NOT NULL,
	ParentID nvarchar(50) NULL,
 CONSTRAINT PK_FormsActions PRIMARY KEY CLUSTERED (ID ASC )
)


if not exists (select * from sysobjects where id = object_id(N'Util.OperatorsAccess') AND OBJECTPROPERTY(id, N'IsTable') = 1)
CREATE TABLE util.OperatorsAccess(
	ID int IDENTITY(1,1) NOT NULL,
	UserID int NOT NULL,
	ActionName varchar(100) NULL,
	SubSystemsMenus_ID int NULL,
 CONSTRAINT PK_OperatorsAccess PRIMARY KEY CLUSTERED (ID ASC )
)

IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'SMService') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE FaraSystems.dbo.SMService(
    SMServiceID int Not Null IDentity(1,1),
	FormKind int NOT NULL,
	FormType int NOT NULL,
	GroupType int NOT NULL,
	Note VarChar(250) NULL,
	SmsNumber int NULL,
	SmsActive Tinyint NULL,
	SmsText varchar(250) NULL,
	SmsTextDetail varchar(250) NULL,
	SysID Tinyint NOT NULL CONSTRAINT DF_SMService_SysID  DEFAULT (18) ,
	PhoneField char(20) NOT NULL CONSTRAINT DF_SMService_PhoneField  DEFAULT ('mobile') ,
 CONSTRAINT PK_SMService PRIMARY KEY CLUSTERED 
(
	SMServiceID ASC
) ON [PRIMARY]
) ON [PRIMARY]


if ( COLUMNPROPERTY( OBJECT_ID('SMService'),'SysID','IsRowGuidCol')is  null )  
ALTER TABLE FaraSystems.dbo.SMService ADD SysID Tinyint NOT NULL CONSTRAINT DF_SMService_SysID  DEFAULT (18) 

if ( COLUMNPROPERTY( OBJECT_ID('SMService'),'PhoneField','IsRowGuidCol')is  null )  
ALTER TABLE FaraSystems.dbo.SMService ADD PhoneField char(20) NOT NULL CONSTRAINT DF_SMService_PhoneField  DEFAULT ('mobile') 

if ( COLUMNPROPERTY( OBJECT_ID('SMService'),'DateFieldName','IsRowGuidCol')is  null )  
ALTER TABLE FaraSystems.dbo.SMService ADD DateFieldName char(30) 

if ( COLUMNPROPERTY( OBJECT_ID('SMService'),'Duration','IsRowGuidCol')is  null )  
ALTER TABLE FaraSystems.dbo.SMService ADD Duration int NOT NULL CONSTRAINT DF_SMService_Duration  DEFAULT (0) 


 
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'SMS_BOX') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE FaraSystems.dbo.SMS_BOX(
	MASTERID int NOT NULL,
	BOXKIND smallint NOT NULL,
	SMSKIND int NULL,
	CREATEDATE char(10) NULL,
	CREATETIME char(5) NULL,
	USERTITLE varchar(50) NULL,
	PHONENUMBER varchar(20) NULL,
	REC_YEAR char(4) NULL,
	REC_MONTH char(2) NULL,
	REC_DAY char(2) NULL,
	REC_HOUR char(2) NULL,
	REC_MIN char(2) NULL,
	REC_YEARACT char(4) NULL,
	REC_MONTHACT char(2) NULL,
	REC_DAYACT char(2) NULL,
	REC_HOURACT char(2) NULL,
	REC_MINACT char(2) NULL,
	MESS varchar(250) NULL,
	REC_STATUS smallint NULL,
	REFSERIAL int NULL,
 CONSTRAINT PK_SMS_BOX PRIMARY KEY CLUSTERED 
(
	MASTERID ASC,
	BOXKIND ASC
) ON [PRIMARY]
) ON [PRIMARY]



IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'SMS_SMSKINDS') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE FaraSystems.dbo.SMS_SMSKINDS(
	KINDID int NOT NULL,
	KINDNAME varchar(50) NULL,
 CONSTRAINT PK_SMS_SMSKINDS PRIMARY KEY CLUSTERED 
(
	KINDID ASC
) ON [PRIMARY]
) ON [PRIMARY]


IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'SMS_FIXPARAMS') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE FaraSystems.dbo.SMS_FIXPARAMS(
	DEVKIND smallint NULL,
	M_PARAMETER varchar(50) NULL,
	M_PINCODE varchar(50) NULL,
	M_SENDTIMEOUT int NULL,
	M_SENDINTERVAL int NULL,
	M_RETRYTIMES int NULL,
	M_SMSVLIDITY varchar(10) NULL,
	M_DELIVERY smallint NULL,
	REFRESHMIN int NULL,
	lANG smallint NULL,
	INT_USERNAME varchar(50) NULL,
	INT_PASS varchar(50) NULL,
	INT_SMSNUMBER varchar(50) NULL
) ON [PRIMARY]


IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Position') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Position(
	PositionCode int NOT NULL,
	PositionTitle varchar(100) NULL,
 CONSTRAINT PK_Position PRIMARY KEY CLUSTERED 
(
	PositionCode ASC
) ON [PRIMARY]
) ON [PRIMARY]



if (select COUNT(*) from SMS_FIXPARAMS)=0
INSERT    
INTO     SMS_FIXPARAMS(DEVKIND, M_PARAMETER, M_PINCODE, M_SENDTIMEOUT, M_SENDINTERVAL, M_RETRYTIMES, M_SMSVLIDITY, M_DELIVERY, REFRESHMIN, 
                         lANG )
VALUES        (2	,'COM6, 9600'	,7202,	28	,1,	1	,'Max Time',	1,	30,	1			)




if (select COUNT(*) from SMS_SMSKINDS)=0
INSERT INTO SMS_SMSKINDS (KINDID,KINDNAME)
--FROM 
SELECT 1,'فوري'
UNION ALL
SELECT 2,'برنامه ريزي'






if ( COLUMNPROPERTY( OBJECT_ID('Operators'),'PositionCode','IsRowGuidCol')is  null )  
ALTER TABLE Operators ADD PositionCode int 



IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Operators_Position' AND type = 'F')
 ALTER TABLE Operators  WITH CHECK ADD  CONSTRAINT FK_Operators_Position FOREIGN KEY(PositionCode) 
 REFERENCES Position (PositionCode) ON UPDATE CASCADE


if ( COLUMNPROPERTY( OBJECT_ID('Operators'),'Mobile','IsRowGuidCol')is  null )  
ALTER TABLE Operators ADD Mobile varchar(20)

if ( COLUMNPROPERTY( OBJECT_ID('Operators'),'Email','IsRowGuidCol')is  null )  
ALTER TABLE Operators ADD Email nvarchar(100)


if not exists (select * from dbo.sysobjects where id = object_id(N'MatrixSave') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE FaraSystems.dbo.MatrixSave(
	MatrixNo int not NULL,
	MatrixName VarChar(250) ,
	MatrixSQL varchar(max) ,
	COl_s varchar(1000) ,
	Row_s varchar(1000) ,
    CircleKind int, 
    ActiveColumns bigint    ,
    ShareColumns bigint,
 CONSTRAINT PK_MatrixSave PRIMARY KEY CLUSTERED (	MatrixNo ASC) ON [PRIMARY]) ON [PRIMARY]

if ( COLUMNPROPERTY( OBJECT_ID('MatrixSave'),'HashTag','IsRowGuidCol')is  null )  
ALTER TABLE MatrixSave ADD HashTag nvarchar(100)


if ( COLUMNPROPERTY( OBJECT_ID('Operators'),'SysWarnTime','IsRowGuidCol')is null )
 ALTER TABLE Operators ADD SysWarnTime int NOT NULL CONSTRAINT DF_Operators_SysWarnTime DEFAULT (1)
 
 if ( COLUMNPROPERTY( OBJECT_ID('Operators'),'InterViewWarnTime','IsRowGuidCol')is null )
 ALTER TABLE Operators ADD InterViewWarnTime int NOT NULL CONSTRAINT DF_Operators_InterViewWarnTime DEFAULT (0)


if ( COLUMNPROPERTY( OBJECT_ID('Operators'),'OperatorActive','IsRowGuidCol')is null )
 ALTER TABLE Operators ADD OperatorActive  TinyInt NOT NULL CONSTRAINT DF_Operators_OperatorActive  DEFAULT (1)

if ( COLUMNPROPERTY( OBJECT_ID('SMService'),'DateFieldName','IsRowGuidCol')is  null )  
ALTER TABLE FaraSystems.dbo.SMService ADD DateFieldName char(30) 

if ( COLUMNPROPERTY( OBJECT_ID('SMService'),'Duration','IsRowGuidCol')is  null )  
ALTER TABLE FaraSystems.dbo.SMService ADD Duration int NOT NULL CONSTRAINT DF_SMService_Duration  DEFAULT (0) 

if ( COLUMNPROPERTY( OBJECT_ID('Operators'),'TelegramChatID','IsRowGuidCol')is null )
 ALTER TABLE Operators ADD TelegramChatID  char(30)



if ( COLUMNPROPERTY( OBJECT_ID('Operators'),'FormPolicy','IsRowGuidCol')is null )
 ALTER TABLE Operators ADD  FormPolicy  varchar(8000) 

ALTER TABLE FaraSystems.dbo.Reports ALTER COLUMN CrossTabSQL VarChar (2000)

ALTER TABLE FaraSystems.dbo.FormDesign ALTER COLUMN MackDate Char (10)



IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'FaraConfig') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE FaraConfig(
	LoginKind Tinyint NOT NULL CONSTRAINT DF_FaraConfig_LoginKind  DEFAULT (0),
 CONSTRAINT PK_FaraConfig PRIMARY KEY CLUSTERED 
(
	LoginKind ASC
) ON [PRIMARY]
) ON [PRIMARY]

---Update BANK Agriculture
set nocount on
if (Select COUNT(Uid) from sysusers where Name = 'Agr')=0 
begin 
Exec sp_addrole @RoleName = N'Agr' ,@ownerName='FaraUser' 
end

if not exists (select * from dbo.sysobjects where id = object_id(N'Agr.Earth') and 
     OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Agr.Earth (
	EarthField varchar(10) NOT NULL,
	Gate int NOT NULL,
	EarthGrpID int DEFAULT (0) NOT NULL,
	EarthDesc nvarchar(80) NULL,
	Meters float NOT NULL,
	UnitCode tinyint NULL,
	EarthTeckinfo nvarchar(50) NULL,
	OwnerDate nCHAR(10) NULL,
	
CONSTRAINT	FK_Earth_EarthGroups 
	 FOREIGN KEY	(EarthGrpID) REFERENCES EarthGroups	(EarthGrpID )ON UPDATE CASCADE ,	
CONSTRAINT	FK_Earth_Units 
	 FOREIGN KEY	(UnitCode) REFERENCES Units	(UnitCode  )ON UPDATE CASCADE ,	 
  CONSTRAINT PK_Earth PRIMARY KEY CLUSTERED (EarthField,Gate) ON [PRIMARY] ) ON [PRIMARY] 
if not exists (select * from dbo.sysobjects where id = object_id(N'Agr.EarthLimit') and 
    OBJECTPROPERTY(id, N'IsUserTable') = 1)
 CREATE TABLE Agr.EarthLimit (	
 	EarthLimitID int NOT NULL,
	EarthField varchar(10)  DEFAULT (0) NOT NULL,
	Gate int DEFAULT (0) NOT NULL,
	StartDate Char(10) NOT NULL,
	EndDate Char(10) NOT NULL,
	ProcCode int NOT NULL,
	ProceWeight float NULL,
	State tinyint DEFAULT (0)  NOT NULL, 
 
 CONSTRAINT PK_EarthLimit 
 PRIMARY KEY  CLUSTERED (EarthLimitID	)  ON [PRIMARY] ,  
 CONSTRAINT FK_EarthLimit_Earth FOREIGN KEY(EarthField, Gate)
REFERENCES Agr.Earth (EarthField, Gate)
ON UPDATE CASCADE  ) ON [PRIMARY] 

if ( COLUMNPROPERTY( OBJECT_ID('Agr.EarthLimit'),'Varieties','IsRowGuidCol')is null )
  ALTER TABLE Agr.EarthLimit ADD Varieties nvarchar(40)
if ( COLUMNPROPERTY( OBJECT_ID('Agr.EarthLimit'),'Age','IsRowGuidCol')is null )
  ALTER TABLE Agr.EarthLimit ADD Age nvarchar(40)


if  exists (select * from dbo.sysobjects where id = 
     object_id(N'dbo.EarthLimit') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP Table  dbo.EarthLimit    
     
if  exists (select * from dbo.sysobjects where id = 
     object_id(N'dbo.Earth') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP Table  dbo.Earth

if  exists (select * from dbo.sysobjects where id = object_id(N'ReciptItemsRelease') and    OBJECTPROPERTY(id, N'IsUserTable') = 1)
if ( COLUMNPROPERTY( OBJECT_ID('ReciptItemsRelease'),'EarthField','IsRowGuidCol')is null )
 begin
 ALTER TABLE ReciptItemsRelease ADD EarthField varchar(10) NOT NULL DEFAULT (0)
 ALTER TABLE ReciptItemsRelease ADD Gate int NOT NULL DEFAULT (0)
 ALTER TABLE ReciptItemsRelease ADD ReleaseNote varchar(200) 
 end 
 
 
if ( COLUMNPROPERTY( OBJECT_ID('StuffCoding'),'VendorBarcode','IsRowGuidCol')is null )
  ALTER TABLE StuffCoding ADD VendorBarcode nvarchar(30)
  
IF  EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptTypes') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
begin
if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ProcedureKindList','IsRowGuidCol')is  null )  
  ALTER TABLE ReciptTypes ADD ProcedureKindList VarChar (50)
  
if ( COLUMNPROPERTY( OBJECT_ID('ReciptTypes'),'ProcedureCaption','IsRowGuidCol')is  null )  
  ALTER TABLE ReciptTypes ADD ProcedureCaption VarChar (50)  NOT NULL  DEFAULT ('„œ·')
end  

--if not exists (SELECT     sysobjects.* FROM         sysobjects WHERE     (name = N'PK_CodesInProcess'))
--ALTER TABLE Util.CodesInProcess ADD CONSTRAINT PK_CodesInProcess 
--   PRIMARY KEY CLUSTERED(UserID, FormName, TableName, FieldName, Value, Ip) ON [PRIMARY]

if exists (select * from sysindexes WHERE     (name = N'IX_CodesInProcess'))
 drop index Util.CodesInProcess.IX_CodesInProcess


ALTER TABLE Util.CodesInProcess ALTER COLUMN Value BIGINT NOT NULL

if not exists (select * from sysindexes WHERE     (name = N'IX_CodesInProcess'))
CREATE UNIQUE NONCLUSTERED INDEX IX_CodesInProcess ON Util.CodesInProcess
	(TableName,	FieldName,Value	) ON [PRIMARY]
	
if ( COLUMNPROPERTY( OBJECT_ID('util.CodesInProcess'),'Type','IsRowGuidCol')is  null )  
ALTER TABLE util.CodesInProcess ADD [Type] tinyint NOT NULL  DEFAULT (0)  

if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'UserSecurityCheckActive','IsRowGuidCol')is  null )  
ALTER TABLE FormTypes ADD UserSecurityCheckActive tinyint NOT NULL  DEFAULT (0)
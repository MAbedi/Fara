IF NOT EXISTS (SELECT 1 FROM sysusers WHERE Name = N'Lab')
EXEC sp_addrole @RoleName = N'Lab'

---------------------------------------------------------------drop TABLE Lab.SampleItems   drop TABLE Lab.Samples
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Lab.Samples') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE Lab.Samples(
    SampleID int  NOT NULL,
	ReciptType tinyint NOT NULL,
	SampleNo int NOT NULL,
	SampleDate char(10),	
	HourID int ,
	ShiftID int ,
	InsertDate datetime ,
	Hectolitre float ,
	StuffCode bigint ,
	HookupKind   tinyint ,
    FirstUser nvarchar(20) ,
	LastUser nvarchar(20) ,
    CONSTRAINT FK_Samples_ReciptTypes     FOREIGN KEY(ReciptType)REFERENCES ReciptTypes1(ReciptType)      ON UPDATE CASCADE,
 	CONSTRAINT FK_Samples_LookUps_HourID  FOREIGN KEY(HourID)    REFERENCES dbo.LookUps(LookUpID )        ON UPDATE CASCADE,
	CONSTRAINT FK_Samples_LookUps_ShiftID FOREIGN KEY(ShiftID)   REFERENCES dbo.LookUps(LookUpID)    /*-- ON UPDATE CASCADE */,
    CONSTRAINT FK_Samples_StuffCoding     FOREIGN KEY(StuffCode) REFERENCES dbo.StuffCoding(c_StuffCode)  ON UPDATE CASCADE,
 CONSTRAINT PK_Samples PRIMARY KEY CLUSTERED (SampleID ASC) ON [PRIMARY]) ON [PRIMARY]


IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Lab.SampleItems') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
 CREATE TABLE Lab.SampleItems(
	ID int  NOT NULL,
	SampleID int NOT NULL,
	Storepit Smallint ,
	Height   FLOAT ,
	Moisture FLOAT ,
	Gluten FLOAT ,
	Indexs FLOAT ,
	Descriptions Nvarchar(100),
	Consideration Nvarchar(200),
	StuffCode bigint ,
	HookupKind   tinyint ,
	HookupID   bigint ,
	HookupCaption Nvarchar(100),
    CONSTRAINT FK_SampleItems_Samples FOREIGN KEY(SampleID)REFERENCES Lab.Samples (SampleID)ON UPDATE CASCADE ON DELETE CASCADE ,
    CONSTRAINT FK_Samples_Stores FOREIGN KEY(Storepit)REFERENCES Stores (n_StoreID)ON UPDATE CASCADE ,
    CONSTRAINT FK_SampleItems_StuffCoding     FOREIGN KEY(StuffCode) REFERENCES dbo.StuffCoding(c_StuffCode)  /*-- ON UPDATE CASCADE */,
    CONSTRAINT PK_SampleItems PRIMARY KEY CLUSTERED (ID ASC) ON [PRIMARY]) ON [PRIMARY]

GO

if ( COLUMNPROPERTY( OBJECT_ID('Lab.SampleItems'),'CustID','IsRowGuidCol')is  null )  
BEGIN
 ALTER TABLE Lab.SampleItems ADD CustID int NOT NULL CONSTRAINT DF_SampleItems_CustID DEFAULT (0)
 ALTER TABLE Lab.SampleItems ADD CONSTRAINT FK_SampleItems_Customers FOREIGN KEY (CustID)REFERENCES Customers (CustID)ON UPDATE CASCADE
END


if ( COLUMNPROPERTY( OBJECT_ID('Lab.SampleItems'),'D_Hour','IsRowGuidCol')is  null )  
 ALTER TABLE Lab.SampleItems ADD D_Hour int

if ( COLUMNPROPERTY( OBJECT_ID('Lab.SampleItems'),'D_Minute','IsRowGuidCol')is  null )  
 ALTER TABLE Lab.SampleItems ADD D_Minute int


 exec(' if ( COLUMNPROPERTY( OBJECT_ID(''Lab.SampleItems''),''DurationHM'',''IsRowGuidCol'')is  null )  
 ALTER TABLE Lab.SampleItems ADD DurationHM  AS ISNULL(D_Hour,0)+ROUND(ISNULL(D_Minute,0) / 60.0 * 100, 0) / 100 ')


 if ( COLUMNPROPERTY( OBJECT_ID('Lab.SampleItems'),'SiHectolitre','IsRowGuidCol')is  null )  
 ALTER TABLE Lab.SampleItems ADD SiHectolitre float 

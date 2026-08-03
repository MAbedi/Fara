SET NOCOUNT ON
 if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'Transmittal','IsRowGuidCol')is null )
 begin
 ALTER TABLE Recipts ADD Transmittal int NOT NULL DEFAULT (0)
 ALTER TABLE ReciptTypes ADD TransmittalActive Tinyint NOT NULL DEFAULT (0)
 ALTER TABLE ReciptTypes ADD TransmittalLevelID Tinyint NOT NULL DEFAULT (0)
 end
 IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_ReciptItems_WaterCo' AND type = 'D')
 ALTER TABLE ReciptItems ADD CONSTRAINT DF_ReciptItems_WaterCo DEFAULT (0) FOR WaterCo
 
 
 IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'MakeDocs') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE MakeDocs(
	DocKind int NOT NULL,
	DocType int NOT NULL,
	DocTypeIndex int NOT NULL,
	DocRow int NOT NULL,
	DocCaption nvarchar(200) NULL,
	DocName nvarchar(200) NOT NULL,
 CONSTRAINT PK_MakeDocs PRIMARY KEY CLUSTERED 
(
	DocKind ,DocType ,DocTypeIndex,DocName 
) ON [PRIMARY]
) ON [PRIMARY]


if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'CustAccountNumber','IsRowGuidCol')is null )
 ALTER TABLE Customers ADD CustAccountNumber varchar(60) 



if ( COLUMNPROPERTY( OBJECT_ID('Customers'),'PaymentCode','IsRowGuidCol')is null )
 ALTER TABLE Customers ADD  PaymentCode bigint 
 
 
 

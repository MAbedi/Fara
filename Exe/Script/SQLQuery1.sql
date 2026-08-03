IF NOT EXISTS (SELECT 1 FROM sysusers WHERE Name = N'Machin')
EXEC sp_addrole @RoleName = N'Machin'


IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'Machin.Machinery')AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE Machin.Machinery(
	MachinType tinyint NOT NULL, -- äæÚ ÇØáÇÚÇÊ
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

if (SELECT count(MaintenanceID) FROM Machin.Maintenance WHERE MaintenanceID=0)=0
INSERT INTO Machin.Maintenance
 (MaintenanceID, YearID, MaintenanceKind, MaintenanceNo, MaintenanceDate, CustID1, CustID2, CustID3, StuffCode)
SELECT     0, (SELECT MAX(YearID) FROM Util.MaliYear) , 0, 0, '0', 0, 0, 0, (SELECT MAX(c_StuffCode) FROM StuffCoding)

if ( COLUMNPROPERTY( OBJECT_ID('Tsh.Functions'),'MaintenanceID','IsRowGuidCol')is  null )  
ALTER TABLE Tsh.Functions ADD MaintenanceID int CONSTRAINT DF_Functions_MaintenanceID  DEFAULT (0)

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Functions_Maintenance' AND type = 'F')
ALTER TABLE Tsh.Functions
WITH CHECK ADD CONSTRAINT FK_Functions_Maintenance FOREIGN KEY (MaintenanceID)
REFERENCES Machin.Maintenance(MaintenanceID) ON DELETE CASCADE --ON UPDATE CASCADE --


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
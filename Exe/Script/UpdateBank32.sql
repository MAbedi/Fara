----   UpdateBank 32 Pay   1405/03/09   
SET NOCOUNT ON

-- 2. ایجاد جدول موقت برای ذخیره سال‌های منحصربه‌فرد PonyDate
IF OBJECT_ID('tempdb..#UniqueYears') IS NOT NULL
    DROP TABLE #UniqueYears;

SELECT DISTINCT CAST(LEFT(PonyDate, 4) AS INT) AS YearNo
INTO #UniqueYears
FROM [Pay].[Pony]
WHERE PonyDate LIKE '[1-9][0-9][0-9][0-9]/[0-1][0-9]/[0-3][0-9]'
  AND TRY_CAST(LEFT(PonyDate, 4) AS INT) IS NOT NULL;

-- 3. اضافه کردن سال‌های جدید به MaliYear اگر وجود نداشته باشن
INSERT INTO [Util].[MaliYear] (YearID, StartYear, EndYear, Status)
SELECT 
    y.YearNo AS YearID,
    CAST(y.YearNo AS VARCHAR(4)) + '/01/01' AS StartYear,
    CAST(y.YearNo AS VARCHAR(4)) + '/12/29' AS EndYear,
    1 AS Status
FROM #UniqueYears y
LEFT JOIN [Util].[MaliYear] m ON y.YearNo = m.YearID
WHERE m.YearID IS NULL;

-- 4. پر کردن YearID در Pony با YearID از MaliYear
UPDATE p
SET p.YearID = CAST(LEFT(p.PonyDate, 4) AS INT)
FROM [Pay].[Pony] p
WHERE p.YearID IS NULL;

-------------------------------------------------------------------------------------------------------------------------------------------------------------
DECLARE @filename NVARCHAR(256);
DECLARE @db_name NVARCHAR(256);

-- گرفتن نام دیتابیس
SELECT @db_name = DB_NAME();

-- گرفتن مسیر فایل .mdf و تبدیل به .ndf
SELECT @filename = filename FROM sys.sysfiles WHERE fileid = 1;
SET @filename = REPLACE(@filename, '.mdf', '.ndf');

-- بررسی وجود فایل‌گروه
IF NOT EXISTS (SELECT * FROM sys.filegroups WHERE name = N'Fara_Files')
BEGIN
    EXEC('ALTER DATABASE [' + @db_name + '] ADD FILEGROUP Fara_Files; ');
END;

-- بررسی وجود فایل در فایل‌گروه
IF NOT EXISTS (SELECT * FROM sys.database_files WHERE name = N'Fara_Files')
BEGIN
    EXEC('ALTER DATABASE [' + @db_name + '] ADD FILE (  NAME = N''Fara_Files'',  FILENAME = ''' + @filename + '''        ) TO FILEGROUP Fara_Files; ');
END;


if not exists (select * from sysindexes WHERE     (name = N'IX_Tab_Job'))
 CREATE NONCLUSTERED INDEX IX_Tab_Job ON [dbo].[Tab_Job] ([Job_Code]) INCLUDE ([Job_Desc])

if not exists (select * from sysindexes WHERE     (name = N'IX_PersonelDecExt_YearID_PersonelNo'))
CREATE NONCLUSTERED INDEX IX_PersonelDecExt_YearID_PersonelNo ON [Pay].[PersonelDecExt] ([YearID],[PersonelNo]) 
               INCLUDE ([FormInfoID],[EmployeeAmount],[EmployerAmount],[EndDate])

--if not exists (select * from sysindexes WHERE     (name = N'IX_Interdicts_subcompanyCode_PersonelNo'))
--CREATE NONCLUSTERED INDEX IX_Interdicts_subcompanyCode_PersonelNo ON [Pay].[Interdicts] ([subcompanyCode],[PersonelNo]) 
--INCLUDE ([OfficeCode],[jobCode],[EmployTypeID],[InterdicStartDate],[InterdicEndDate],[TaxCalculationType]
--      ,[insuranceID],[InsuranceStartDate],[InsuranceEndDate])


--IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.EntityImages') AND type = 'U')
--    DROP TABLE dbo.EntityImages;

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.EntityImages') AND type = 'U')
BEGIN
    CREATE TABLE dbo.EntityImages (
        ID BIGINT IDENTITY(1,1),
        EntityType NVARCHAR(50) NOT NULL,
        EntityID NVARCHAR(100) NOT NULL,
        ImageType NVARCHAR(20) NOT NULL,
        ImageData VARBINARY(MAX) NULL,
        FileName1 NVARCHAR(255) NULL,
        FileSize INT NULL,
        CreatedAt DATETIME DEFAULT GETDATE(), -- تغییر به DATETIME
        CONSTRAINT PK_EntityImages PRIMARY KEY CLUSTERED (ID ASC)
    ) ON [Fara_Files];

    CREATE NONCLUSTERED INDEX IX_EntityImages_EntityType_EntityID
    ON dbo.EntityImages (EntityType, EntityID);

    ALTER TABLE dbo.EntityImages
    ADD CONSTRAINT CHK_FileSize CHECK (FileSize <= 10485760);

    EXEC sys.sp_addextendedproperty 
        @name=N'MS_Description', 
        @value=N'Entity Types: (Customers, Document, Receipts, Customer, Check, StuffCoding)', 
        @level0type=N'SCHEMA', @level0name=N'dbo', 
        @level1type=N'TABLE', @level1name=N'EntityImages', 
        @level2type=N'COLUMN', @level2name=N'EntityType';

    EXEC sys.sp_addextendedproperty 
        @name=N'MS_Description', 
        @value=N'Image Types: (JPG, PNG, PDF, BMP, TXT, etc.)', 
        @level0type=N'SCHEMA', @level0name=N'dbo', 
        @level1type=N'TABLE', @level1name=N'EntityImages', 
        @level2type=N'COLUMN', @level2name=N'ImageType';
END;


--IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.EntityImagesMigrationLog') AND type = 'U')
--    DROP TABLE dbo.EntityImagesMigrationLog;

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.EntityImagesMigrationLog') AND type = 'U')
CREATE TABLE dbo.EntityImagesMigrationLog (
    ID BIGINT IDENTITY(1,1),
    ZipFile NVARCHAR(255),
    FileName1 NVARCHAR(255),
    Status NVARCHAR(50),
    ErrorMessage NVARCHAR(MAX),
    LogTime DATETIME DEFAULT GETDATE(), -- تغییر به DATETIME
    CONSTRAINT PK_EntityImagesMigrationLog PRIMARY KEY (ID)
);

-------------------------------------------------------------------------------------------------------------------------------------------------------------
IF NOT EXISTS (
		SELECT *
		FROM SYSOBJECTS
		WHERE id = object_id(N'Util.UserSessions')
			AND OBJECTPROPERTY(id, N'IsUserTable') = 1
		)
BEGIN
	CREATE TABLE Util.UserSessions (
		SessionID UNIQUEIDENTIFIER PRIMARY KEY
		,UserID INT
		,UserName NVARCHAR(100)
		,SubSystem NVARCHAR(100)
		,LoginTime DATETIME
		,LogoutTime DATETIME NULL
		,DurationMinutes INT NULL
		,MachineName NVARCHAR(100)
		,IPAddress NVARCHAR(50)
		)
END

IF NOT EXISTS (
		SELECT *
		FROM SYSOBJECTS
		WHERE id = object_id(N'Util.UserActivities')
			AND OBJECTPROPERTY(id, N'IsUserTable') = 1
		)
BEGIN
	CREATE TABLE Util.UserActivities (
		ActivityID INT IDENTITY PRIMARY KEY
		,SessionID UNIQUEIDENTIFIER
		,FormName NVARCHAR(100)
		,OpenTime DATETIME
		,CloseTime DATETIME NULL
		,DurationSeconds INT NULL
		)
END

-------------------------------------------------------------------------------------------------------------------------------------------------------------




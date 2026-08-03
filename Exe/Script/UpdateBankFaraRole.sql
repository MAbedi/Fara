/* SQL Server 2012+ check */
IF CAST(SERVERPROPERTY('ProductMajorVersion') AS INT) < 11
BEGIN
    RAISERROR('SQL Server 2012 or higher is required.',16,1)
    RETURN
END


/* ================= ACC ================= */

IF NOT EXISTS (SELECT 1 FROM sys.database_principals WHERE name = N'Acc' AND type = 'R')
    CREATE ROLE Acc

IF SCHEMA_ID(N'Acc') IS NULL
    EXEC('CREATE SCHEMA Acc')

IF EXISTS (SELECT 1 FROM sys.database_principals WHERE name = N'FaraUser')
BEGIN
    ALTER ROLE Acc ADD MEMBER FaraUser
    GRANT CONTROL ON SCHEMA::Acc TO FaraUser
END


/* ================= PAY ================= */

IF NOT EXISTS (SELECT 1 FROM sys.database_principals WHERE name = N'Pay' AND type = 'R')
    CREATE ROLE Pay

IF SCHEMA_ID(N'Pay') IS NULL
    EXEC('CREATE SCHEMA Pay')

IF EXISTS (SELECT 1 FROM sys.database_principals WHERE name = N'FaraUser')
BEGIN
    ALTER ROLE Pay ADD MEMBER FaraUser
    GRANT CONTROL ON SCHEMA::Pay TO FaraUser
END


/* ================= ASSETS ================= */

IF NOT EXISTS (SELECT 1 FROM sys.database_principals WHERE name = N'Assets' AND type = 'R')
    CREATE ROLE Assets

IF SCHEMA_ID(N'Assets') IS NULL
    EXEC('CREATE SCHEMA Assets')

IF EXISTS (SELECT 1 FROM sys.database_principals WHERE name = N'FaraUser')
BEGIN
    ALTER ROLE Assets ADD MEMBER FaraUser
    GRANT CONTROL ON SCHEMA::Assets TO FaraUser
END

/* ================= Util ================= */

IF NOT EXISTS (SELECT 1 FROM sys.database_principals WHERE name = N'Util' AND type = 'R')
    CREATE ROLE Util

IF SCHEMA_ID(N'Util') IS NULL
    EXEC('CREATE SCHEMA Util')

IF EXISTS (SELECT 1 FROM sys.database_principals WHERE name = N'FaraUser')
BEGIN
    ALTER ROLE Util ADD MEMBER FaraUser
    GRANT CONTROL ON SCHEMA::Util TO FaraUser
END

--  Generals  4  AuditLog 
use AuditLog
GO 
	IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[Is_EnLeapYear]') AND xtype IN (N'FN', N'IF', N'TF'))
	DROP FUNCTION [dbo].[Is_EnLeapYear]
	GO 
	IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[MiladiToShamsi]') AND xtype IN (N'FN', N'IF', N'TF'))
	DROP FUNCTION [dbo].[MiladiToShamsi]
	GO 
	
	IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].MiladiToShamsiTime') AND xtype IN (N'FN', N'IF', N'TF'))
	DROP FUNCTION [dbo].MiladiToShamsiTime
	GO 
--------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO 
SET ANSI_NULLS ON 
GO 
CREATE FUNCTION [dbo].[Is_EnLeapYear](@EnYear SMALLINT) RETURNS BIT
BEGIN 
  DECLARE @Result BIT 
  IF ((@EnYear % 4) = 0) AND (((@EnYear % 100) <> 0) OR ((@EnYear % 400) = 0))
    SET @Result = 1
  ELSE 
    SET @Result = 0
  RETURN @Result
END 

GO 
SET QUOTED_IDENTIFIER OFF 
GO 
SET ANSI_NULLS ON 
GO 


------------------------------------------------------------------------------------------

SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

IF NOT EXISTS (
  SELECT 1 FROM sys.indexes
  WHERE object_id = OBJECT_ID(N'dbo.MetaDataChangeLog')
    AND name = N'IX_MetaDataChangeLog_RowCreateDateTime'
)
BEGIN
  EXEC(N'CREATE' + N' INDEX IX_MetaDataChangeLog_RowCreateDateTime'
    + N' ON dbo.MetaDataChangeLog (RowCreateDateTime DESC, MetaDataChangeLogId DESC)'
    + N' INCLUDE (TableName, LoginName);');
END;
GO

/* Audit log readers (SQL Server 2016 SP1+).
   XML columns are PreviousRowXmlValues and CurrentRowXmlValues. */
CREATE OR ALTER PROCEDURE dbo.sp_GetAuditMaster
    @TableName NVARCHAR(128) = NULL,
    @RecordKey NVARCHAR(100) = NULL,
    @FromDate CHAR(10) = NULL,
    @ToDate CHAR(10) = NULL,
    @TopRows INT = 200
AS
BEGIN
    SET NOCOUNT ON;
    SELECT TOP (@TopRows) L.MetaDataChangeLogId AS LogId, L.TableName,
           COALESCE(NULLIF(ATC.TableCaption,N''),NULLIF(ATC.PersianCaption,N''),L.TableName) AS DisplayCaption,
           ATC.ModuleName, L.LoginName AS UserName, L.RowCreateDateTime AS ChangeDate, L.RowCreateDateTime AS ChangeTime,
           CASE WHEN L.PreviousRowXmlValues IS NULL AND L.CurrentRowXmlValues IS NOT NULL THEN N'Insert'
                WHEN L.CurrentRowXmlValues IS NULL AND L.PreviousRowXmlValues IS NOT NULL THEN N'Delete'
                ELSE N'Update' END AS ActionType,
           K.RecordKey
    FROM dbo.MetaDataChangeLog L
    OUTER APPLY (SELECT COALESCE(
        NULLIF(L.CurrentRowXmlValues.value('(/inserted/@Serial)[1]','nvarchar(100)'),N''),
        NULLIF(L.PreviousRowXmlValues.value('(/deleted/@Serial)[1]','nvarchar(100)'),N''),
        NULLIF(L.CurrentRowXmlValues.value('(/Row/@Serial)[1]','nvarchar(100)'),N''),
        NULLIF(L.PreviousRowXmlValues.value('(/Row/@Serial)[1]','nvarchar(100)'),N''),
        NULLIF(L.CurrentRowXmlValues.value('(/inserted/@Key)[1]','nvarchar(100)'),N''),
        NULLIF(L.PreviousRowXmlValues.value('(/deleted/@Key)[1]','nvarchar(100)'),N''),
        NULLIF(L.CurrentRowXmlValues.value('(/Row/@Key)[1]','nvarchar(100)'),N''),
        NULLIF(L.PreviousRowXmlValues.value('(/Row/@Key)[1]','nvarchar(100)'),N''),
        NULLIF(L.CurrentRowXmlValues.value('(/inserted/@FormID)[1]','nvarchar(100)'),N''),
        NULLIF(L.CurrentRowXmlValues.value('(/inserted/@FormItemID)[1]','nvarchar(100)'),N''),
        NULLIF(L.CurrentRowXmlValues.value('(/inserted/@ReciptID)[1]','nvarchar(100)'),N''),
        NULLIF(L.CurrentRowXmlValues.value('(/inserted/@ReciptItemID)[1]','nvarchar(100)'),N'')) AS RecordKey) K
    LEFT JOIN dbo.AuditTableCaption ATC ON ATC.TableName=L.TableName
    WHERE (@TableName IS NULL OR L.TableName=@TableName)
      AND (@FromDate IS NULL OR CONVERT(char(10),L.RowCreateDateTime,111)>=@FromDate)
      AND (@ToDate IS NULL OR CONVERT(char(10),L.RowCreateDateTime,111)<=@ToDate)
      AND (@RecordKey IS NULL OR K.RecordKey=@RecordKey)
    ORDER BY L.RowCreateDateTime DESC,L.MetaDataChangeLogId DESC;
END;
GO

CREATE OR ALTER PROCEDURE dbo.sp_GetAuditDetail
    @LogId BIGINT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @OldXml XML,@NewXml XML,@TableName NVARCHAR(128);
    SELECT @OldXml=PreviousRowXmlValues,@NewXml=CurrentRowXmlValues,@TableName=TableName
    FROM dbo.MetaDataChangeLog WHERE MetaDataChangeLogId=@LogId;
    ;WITH O AS (
      SELECT P.ColumnName,MAX(P.ValueText) OldValue FROM (
        SELECT A.c.value('local-name(.)','nvarchar(128)'),A.c.value('.','nvarchar(max)')
        FROM @OldXml.nodes('/*/@*') A(c)
        UNION ALL
        SELECT E.c.value('local-name(.)','nvarchar(128)'),E.c.value('.','nvarchar(max)')
        FROM @OldXml.nodes('/*/*[not(@*) and not(*)]') E(c)) P(ColumnName,ValueText)
      GROUP BY P.ColumnName),
    N AS (
      SELECT P.ColumnName,MAX(P.ValueText) NewValue FROM (
        SELECT A.c.value('local-name(.)','nvarchar(128)'),A.c.value('.','nvarchar(max)')
        FROM @NewXml.nodes('/*/@*') A(c)
        UNION ALL
        SELECT E.c.value('local-name(.)','nvarchar(128)'),E.c.value('.','nvarchar(max)')
        FROM @NewXml.nodes('/*/*[not(@*) and not(*)]') E(c)) P(ColumnName,ValueText)
      GROUP BY P.ColumnName)
    SELECT COALESCE(N.ColumnName,O.ColumnName) ColumnName,
           COALESCE(L.ColumnCaption,COALESCE(N.ColumnName,O.ColumnName)) ColumnCaption,
           O.OldValue,N.NewValue
    FROM O FULL OUTER JOIN N ON N.ColumnName=O.ColumnName
    LEFT JOIN dbo.logTable L ON L.TableName=@TableName AND L.ColumnName=COALESCE(N.ColumnName,O.ColumnName)
    WHERE ISNULL(O.OldValue,N'')<>ISNULL(N.NewValue,N'')
      AND COALESCE(N.ColumnName,O.ColumnName) NOT IN (N'ID',N'LogId',N'Serial');
END;
GO
----------------------------------------------------------------------------
GO 
SET QUOTED_IDENTIFIER ON 
GO 
SET ANSI_NULLS ON 
GO 
CREATE FUNCTION dbo.MiladiToShamsiTime(@EnDate DATETIME,@Time bit) RETURNS VARCHAR(20)
BEGIN
		DECLARE @EnYear SMALLINT 
		DECLARE @EnMonth SMALLINT 
		DECLARE @EnDay SMALLINT 
		DECLARE @I SMALLINT 
		DECLARE @Days_Of_Year SMALLINT 
		DECLARE @Temp VARCHAR(20)
		DECLARE @M SMALLINT
		DECLARE @En_Month_Days TABLE(ID SMALLINT IDENTITY(1,1),DayCount SMALLINT)
		INSERT INTO @En_Month_Days(DayCount)VALUES(31)
		INSERT INTO @En_Month_Days(DayCount)VALUES(28)
		INSERT INTO @En_Month_Days(DayCount)VALUES(31)
		INSERT INTO @En_Month_Days(DayCount)VALUES(30)
		INSERT INTO @En_Month_Days(DayCount)VALUES(31)
		INSERT INTO @En_Month_Days(DayCount)VALUES(30)
		INSERT INTO @En_Month_Days(DayCount)VALUES(31)
		INSERT INTO @En_Month_Days(DayCount)VALUES(31)
		INSERT INTO @En_Month_Days(DayCount)VALUES(30)
		INSERT INTO @En_Month_Days(DayCount)VALUES(31)
		INSERT INTO @En_Month_Days(DayCount)VALUES(30)
		INSERT INTO @En_Month_Days(DayCount)VALUES(31)

		SET @EnYear = DATEPART(YYYY,@EnDate)
		SET @EnMonth = DATEPART(MM,@EnDate)
		SET @EnDay = DATEPART(DD,@EnDate)
		SET @Days_Of_Year = 0
		SET @I = 1
--=============================================
--               Special Year
--=============================================
		IF ((@EnYear % 400) = 384)
			SET @M = 1
		ELSE
			SET @M = 0

		SET @EnDay = @EnDay - @M
		IF (@EnDay = 0)
		BEGIN
			SET @EnMonth = @EnMonth - 1
			IF (@EnMonth = 0)
			BEGIN
				SET @EnYear = @EnYear - 1
				SET @EnMonth = 12
				SET @EnDay = (SELECT DayCount FROM @En_Month_Days WHERE ID = @EnMonth)
			END
			ELSE
				SET @EnDay = (SELECT DayCount FROM @En_Month_Days WHERE ID = @EnMonth)
		END
--=============================================
--            Computing Day of Year
--=============================================
		WHILE @I < @EnMonth
		BEGIN 
			SET @Days_Of_Year = @Days_Of_Year + (SELECT DayCount FROM @En_Month_Days WHERE ID = @I)
			SET @I = @I + 1
		END 
		SET @Days_Of_Year = @Days_Of_Year + @EnDay
		IF (((SELECT [dbo].[Is_EnLeapYear](@EnYear)) = 1) AND (@EnMonth > 2))
			SET @Days_Of_Year = @Days_Of_Year + 1
--=============================================
--         Computing Month and Day 
--=============================================
		IF (@Days_Of_Year <= 79)  
		BEGIN
			IF (((@EnYear - 1) % 4) = 0)
				SET @Days_Of_Year = @Days_Of_Year + 11
			ELSE
				SET @Days_Of_Year = @Days_Of_Year + 10
			SET @EnYear = @EnYear - 622
    
			IF ((@Days_Of_Year % 30) = 0)
			BEGIN 
				SET @EnMonth = (@Days_Of_Year / 30) + 9
				SET @EnDay = 30
			END 
			ELSE 
			BEGIN 
				SET @EnMonth = (@Days_Of_Year / 30) + 10
				SET @EnDay = @Days_Of_Year % 30
			END 
		END
		ELSE
		BEGIN 
			SET @EnYear = @EnYear - 621
			SET @Days_Of_Year = @Days_Of_Year - 79
			IF (@Days_Of_Year <= 186)
			BEGIN 
				IF ((@Days_Of_Year % 31) = 0)
				BEGIN 
					SET @EnMonth = (@Days_Of_Year / 31)
					SET @EnDay = 31
				END 
				ELSE
				BEGIN 
					SET @EnMonth = (@Days_Of_Year / 31) + 1
					SET @EnDay = (@Days_Of_Year % 31)
				END 
			END 
			ELSE
			BEGIN 
				SET @Days_Of_Year = @Days_Of_Year - 186
				IF ((@Days_Of_Year % 30) = 0)
				BEGIN 
					SET @EnMonth = (@Days_Of_Year / 30) + 6
					SET @EnDay = 30
				END 
				ELSE 
				BEGIN 
					SET @EnMonth = (@Days_Of_Year / 30) + 7
					SET @EnDay = @Days_Of_Year % 30
				END 
			END 
		END 
--=============================================
--               Format Result
--=============================================
		SET @Temp = CAST(@EnYear AS NCHAR(4)) + '/'
		IF (@EnMonth < 10)
			SET @Temp = @Temp + RIGHT('0' + CAST(@EnMonth AS NCHAR(1)),2) + '/'
		ELSE
			SET @Temp = @Temp + CAST(@EnMonth AS NCHAR(2)) + '/'
		IF (@EnDay < 10)
			SET @Temp = @Temp + RIGHT('0' + CAST(@EnDay AS NCHAR(1)),2) + '/'
		ELSE
			SET @Temp = @Temp + CAST(@EnDay AS NCHAR(2)) 
   if (@Time=1)
		set @Temp= @Temp +' '+CONVERT(VARCHAR(5), @EnDate, 108) -- FORMAT(@EnDate,'HH:mm') 
		
	RETURN @Temp 
END

GO 
SET QUOTED_IDENTIFIER OFF 
GO 
SET ANSI_NULLS ON 
GO 

----------------------------------------------------------------------------
GO 
SET QUOTED_IDENTIFIER ON 
GO 
SET ANSI_NULLS ON 
GO 
------------------------------------------------------------------------------------------
----------------------------------------------------------------------------
GO 
SET QUOTED_IDENTIFIER ON 
GO 
SET ANSI_NULLS ON 
GO 
CREATE FUNCTION [dbo].[MiladiToShamsi](@EnDate DATETIME) RETURNS VARCHAR(10)
BEGIN
RETURN dbo.[MiladiToShamsitime](@EnDate,0)
end
GO 
SET QUOTED_IDENTIFIER OFF 
GO 
SET ANSI_NULLS ON 
GO 
------------------------------------------------------------------------------------------

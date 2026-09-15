/*
  Audit log server-side readers.
  Compatible with MetaDataChangeLog used by the legacy Delphi AuditLog form:
  PreviousRowXmlValues = old XML, CurrentRowXmlValues = new XML.
*/

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

CREATE OR ALTER PROCEDURE dbo.sp_GetAuditMaster
    @TableName  NVARCHAR(128) = NULL,
    @RecordKey  NVARCHAR(100) = NULL,
    @FromDate   CHAR(10) = NULL,
    @ToDate     CHAR(10) = NULL
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @Id sysname, @User sysname, @Dt sysname, @Tm sysname, @sql nvarchar(max);
    SELECT @Id = COALESCE(COL_NAME(OBJECT_ID(N'dbo.MetaDataChangeLog'), COLUMNPROPERTY(OBJECT_ID(N'dbo.MetaDataChangeLog'),'ID','ColumnId')), N'LogId');
    IF COL_LENGTH(N'dbo.MetaDataChangeLog', @Id) IS NULL SET @Id = N'LogID';
    SELECT @User = CASE WHEN COL_LENGTH(N'dbo.MetaDataChangeLog','UserName') IS NOT NULL THEN N'UserName' WHEN COL_LENGTH(N'dbo.MetaDataChangeLog','Username') IS NOT NULL THEN N'Username' ELSE NULL END,
           @Dt = CASE WHEN COL_LENGTH(N'dbo.MetaDataChangeLog','ChangeDate') IS NOT NULL THEN N'ChangeDate' WHEN COL_LENGTH(N'dbo.MetaDataChangeLog','LogDate') IS NOT NULL THEN N'LogDate' ELSE NULL END,
           @Tm = CASE WHEN COL_LENGTH(N'dbo.MetaDataChangeLog','ChangeTime') IS NOT NULL THEN N'ChangeTime' WHEN COL_LENGTH(N'dbo.MetaDataChangeLog','LogTime') IS NOT NULL THEN N'LogTime' ELSE NULL END;
    SET @sql = N'SELECT L.' + QUOTENAME(@Id) + N' AS LogId,L.TableName,COALESCE(NULLIF(ATC.TableCaption,N''''),NULLIF(ATC.PersianCaption,N''''),L.TableName) AS DisplayCaption,ATC.ModuleName,'
      + CASE WHEN @User IS NULL THEN N'CAST(NULL AS nvarchar(200))' ELSE N'L.'+QUOTENAME(@User) END + N' AS UserName,'
      + CASE WHEN @Dt IS NULL THEN N'CAST(NULL AS nvarchar(30))' ELSE N'L.'+QUOTENAME(@Dt) END + N' AS ChangeDate,'
      + CASE WHEN @Tm IS NULL THEN N'CAST(NULL AS nvarchar(30))' ELSE N'L.'+QUOTENAME(@Tm) END + N' AS ChangeTime,'
      + N'CASE WHEN L.PreviousRowXmlValues IS NULL AND L.CurrentRowXmlValues IS NOT NULL THEN N''Insert'' WHEN L.CurrentRowXmlValues IS NULL AND L.PreviousRowXmlValues IS NOT NULL THEN N''Delete'' ELSE N''Update'' END AS ActionType,K.RecordKey,L.PreviousRowXmlValues AS OldXml,L.CurrentRowXmlValues AS NewXml FROM dbo.MetaDataChangeLog L OUTER APPLY (SELECT COALESCE(NULLIF(L.CurrentRowXmlValues.value(''(/inserted/@Serial)[1]'',''nvarchar(100)''),N''''),NULLIF(L.PreviousRowXmlValues.value(''(/deleted/@Serial)[1]'',''nvarchar(100)''),N''''),NULLIF(L.CurrentRowXmlValues.value(''(/Row/@Serial)[1]'',''nvarchar(100)''),N''''),NULLIF(L.PreviousRowXmlValues.value(''(/Row/@Serial)[1]'',''nvarchar(100)''),N''''),NULLIF(L.CurrentRowXmlValues.value(''(/inserted/@Key)[1]'',''nvarchar(100)''),N''''),NULLIF(L.PreviousRowXmlValues.value(''(/deleted/@Key)[1]'',''nvarchar(100)''),N''''),NULLIF(L.CurrentRowXmlValues.value(''(/Row/@Key)[1]'',''nvarchar(100)''),N''''),NULLIF(L.PreviousRowXmlValues.value(''(/Row/@Key)[1]'',''nvarchar(100)''),N'''')) AS RecordKey) K LEFT JOIN dbo.AuditTableCaption ATC ON ATC.TableName=L.TableName WHERE (@TableName IS NULL OR L.TableName=@TableName) AND (@RecordKey IS NULL OR K.RecordKey=@RecordKey) ORDER BY ' + CASE WHEN @Dt IS NULL THEN N'(SELECT 0)' ELSE N'L.'+QUOTENAME(@Dt) END + N' DESC,' + CASE WHEN @Tm IS NULL THEN N'(SELECT 0)' ELSE N'L.'+QUOTENAME(@Tm) END + N' DESC,L.' + QUOTENAME(@Id) + N' DESC;';
    EXEC sys.sp_executesql @sql,N'@TableName nvarchar(128),@RecordKey nvarchar(100)',@TableName,@RecordKey;
    RETURN;

    /* legacy static implementation retained below for reference
    SELECT
        L.ID AS LogId,
        L.TableName,
        COALESCE(NULLIF(ATC.TableCaption, N''),
                 NULLIF(ATC.PersianCaption, N''), L.TableName) AS DisplayCaption,
        ATC.ModuleName,
        L.UserName,
        L.ChangeDate,
        L.ChangeTime,
        CASE
            WHEN L.PreviousRowXmlValues IS NULL
                 AND L.CurrentRowXmlValues IS NOT NULL THEN N'Insert'
            WHEN L.CurrentRowXmlValues IS NULL
                 AND L.PreviousRowXmlValues IS NOT NULL THEN N'Delete'
            ELSE N'Update'
        END AS ActionType,
        K.RecordKey,
        L.PreviousRowXmlValues AS OldXml,
        L.CurrentRowXmlValues AS NewXml
    FROM dbo.MetaDataChangeLog AS L
    OUTER APPLY
    (
        SELECT COALESCE(
            NULLIF(L.CurrentRowXmlValues.value('(/inserted/@Serial)[1]', 'nvarchar(100)'), N''),
            NULLIF(L.PreviousRowXmlValues.value('(/deleted/@Serial)[1]', 'nvarchar(100)'), N''),
            NULLIF(L.CurrentRowXmlValues.value('(/Row/@Serial)[1]', 'nvarchar(100)'), N''),
            NULLIF(L.PreviousRowXmlValues.value('(/Row/@Serial)[1]', 'nvarchar(100)'), N''),
            NULLIF(L.CurrentRowXmlValues.value('(/inserted/@Key)[1]', 'nvarchar(100)'), N''),
            NULLIF(L.PreviousRowXmlValues.value('(/deleted/@Key)[1]', 'nvarchar(100)'), N''),
            NULLIF(L.CurrentRowXmlValues.value('(/Row/@Key)[1]', 'nvarchar(100)'), N''),
            NULLIF(L.PreviousRowXmlValues.value('(/Row/@Key)[1]', 'nvarchar(100)'), N''),
            NULLIF(L.CurrentRowXmlValues.value('(/inserted/@FormID)[1]', 'nvarchar(100)'), N''),
            NULLIF(L.CurrentRowXmlValues.value('(/inserted/@FormItemID)[1]', 'nvarchar(100)'), N''),
            NULLIF(L.CurrentRowXmlValues.value('(/inserted/@ReciptID)[1]', 'nvarchar(100)'), N''),
            NULLIF(L.CurrentRowXmlValues.value('(/inserted/@ReciptItemID)[1]', 'nvarchar(100)'), N'')
        ) AS RecordKey
    ) AS K
    LEFT JOIN dbo.AuditTableCaption AS ATC
      ON ATC.TableName = L.TableName
    WHERE (@TableName IS NULL OR L.TableName = @TableName)
      AND (@FromDate IS NULL OR L.ChangeDate >= @FromDate)
      AND (@ToDate IS NULL OR L.ChangeDate <= @ToDate)
      AND (@RecordKey IS NULL OR K.RecordKey = @RecordKey)
    ORDER BY L.ChangeDate DESC, L.ChangeTime DESC, L.ID DESC; */
END;
GO

CREATE OR ALTER PROCEDURE dbo.sp_GetAuditDetail
    @LogId BIGINT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @OldXml XML, @NewXml XML, @TableName NVARCHAR(128);

    SELECT
        @OldXml = PreviousRowXmlValues,
        @NewXml = CurrentRowXmlValues,
        @TableName = TableName
    FROM dbo.MetaDataChangeLog
    WHERE MetaDataChangeLogId = @LogId;

    ;WITH OldValues AS
    (
        SELECT P.ColumnName, MAX(P.ValueText) AS OldValue
        FROM
        (
            SELECT A.c.value('local-name(.)', 'nvarchar(128)') AS ColumnName,
                   A.c.value('.', 'nvarchar(max)') AS ValueText
            FROM @OldXml.nodes('/*/@*') AS A(c)
            UNION ALL
            SELECT E.c.value('local-name(.)', 'nvarchar(128)'),
                   E.c.value('.', 'nvarchar(max)')
            FROM @OldXml.nodes('/*/*[not(@*) and not(*)]') AS E(c)
        ) AS P
        GROUP BY P.ColumnName
    ),
    NewValues AS
    (
        SELECT P.ColumnName, MAX(P.ValueText) AS NewValue
        FROM
        (
            SELECT A.c.value('local-name(.)', 'nvarchar(128)') AS ColumnName,
                   A.c.value('.', 'nvarchar(max)') AS ValueText
            FROM @NewXml.nodes('/*/@*') AS A(c)
            UNION ALL
            SELECT E.c.value('local-name(.)', 'nvarchar(128)'),
                   E.c.value('.', 'nvarchar(max)')
            FROM @NewXml.nodes('/*/*[not(@*) and not(*)]') AS E(c)
        ) AS P
        GROUP BY P.ColumnName
    )
    SELECT
        COALESCE(N.ColumnName, O.ColumnName) AS ColumnName,
        COALESCE(L.ColumnCaption, COALESCE(N.ColumnName, O.ColumnName)) AS ColumnCaption,
        O.OldValue,
        N.NewValue
    FROM OldValues AS O
    FULL OUTER JOIN NewValues AS N ON N.ColumnName = O.ColumnName
    LEFT JOIN dbo.logTable AS L
      ON L.TableName = @TableName
     AND L.ColumnName = COALESCE(N.ColumnName, O.ColumnName)
    WHERE ISNULL(O.OldValue, N'') <> ISNULL(N.NewValue, N'')
      AND COALESCE(N.ColumnName, O.ColumnName) NOT IN (N'ID', N'LogId', N'Serial');
END;
GO

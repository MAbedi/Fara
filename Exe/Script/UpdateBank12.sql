set nocount on
------------- control ReciptItemID tekrari 
if not exists (select * from sysindexes WHERE     (name = N'IX_ReciptItems'))
begin
--ALTER TABLE ReciptItems DISABLE TRIGGER TR_NotAllowUpdateTrans3OnRItems
declare @maxReciptItemsID int 
set @maxReciptItemsID= (select max(ReciptItemID) from ReciptItems where serverid=0  )

----------- update preReciptItemID
UPDATE    ReciptItems
SET              preReciptItemID = preReciptItemID +@maxReciptItemsID

WHERE     ltrim(str(preReciptItemID)) + '-' + ltrim(str(ServerID)) + '-' + ltrim(str(YearID)) 
                      + '-' + ltrim(str(CASE WHEN ControlCode > 0 THEN ControlCode ELSE StuffCode END)) IN
                          (SELECT     ltrim(str(ReciptItemID)) + '-' + ltrim(str(ServerID)) + '-' + ltrim(str(YearID)) + '-' + ltrim(str(CASE WHEN Min(ControlCode) 
                                                   > 0 THEN min(ControlCode) ELSE Min(StuffCode) END)) AS KeyCode
                             FROM         dbo.ReciptItems
                             GROUP BY ReciptItemID, ServerID, YearID
                             HAVING      (COUNT(*) <> 1))and serverid=0 

----------- update ReciptItemID
UPDATE    ReciptItems
SET              ReciptItemID = ReciptItemID +@maxReciptItemsID

WHERE     ltrim(str(ReciptItemID)) + '-' + ltrim(str(ServerID)) + '-' + ltrim(str(YearID)) 
                      + '-' + ltrim(str(CASE WHEN ControlCode > 0 THEN ControlCode ELSE StuffCode END)) IN
                          (SELECT     ltrim(str(ReciptItemID)) + '-' + ltrim(str(ServerID)) + '-' + ltrim(str(YearID)) + '-' + ltrim(str(CASE WHEN Min(ControlCode) 
                                                   > 0 THEN Min(ControlCode) ELSE Min(StuffCode) END)) AS KeyCode
                             FROM         dbo.ReciptItems
                             GROUP BY ReciptItemID, ServerID, YearID
                             HAVING      (COUNT(*) <> 1)) and serverid=0 


UPDATE    ReciptItems
SET              ReciptItemID = ReciptID+ReciptItemID +@maxReciptItemsID

WHERE     ltrim(str(ReciptItemID)) + '-' + ltrim(str(ServerID)) + '-' + ltrim(str(YearID)) 
                      + '-' + ltrim(str(CASE WHEN ControlCode > 0 THEN ControlCode ELSE StuffCode END)) IN
                          (SELECT     ltrim(str(ReciptItemID)) + '-' + ltrim(str(ServerID)) + '-' + ltrim(str(YearID)) + '-' + ltrim(str(CASE WHEN Min(ControlCode) 
                                                   > 0 THEN Min(ControlCode) ELSE Min(StuffCode) END)) AS KeyCode
                             FROM         dbo.ReciptItems
                             GROUP BY ReciptItemID, ServerID, YearID
                             HAVING      (COUNT(*) <> 1))and serverid=0 
---------------- serverid =1 
------------- control ReciptItemID tekrari 
--declare @maxReciptItemsID int 
set @maxReciptItemsID= (select max(ReciptItemID) from ReciptItems where serverid=1  )

----------- update preReciptItemID
UPDATE    ReciptItems
SET              preReciptItemID = preReciptItemID +@maxReciptItemsID

WHERE     ltrim(str(preReciptItemID)) + '-' + ltrim(str(ServerID)) + '-' + ltrim(str(YearID)) 
                      + '-' + ltrim(str(CASE WHEN ControlCode > 0 THEN ControlCode ELSE StuffCode END)) IN
                          (SELECT     ltrim(str(ReciptItemID)) + '-' + ltrim(str(ServerID)) + '-' + ltrim(str(YearID)) + '-' + ltrim(str(CASE WHEN Min(ControlCode) 
                                                   > 0 THEN min(ControlCode) ELSE Min(StuffCode) END)) AS KeyCode
                             FROM         dbo.ReciptItems
                             GROUP BY ReciptItemID, ServerID, YearID
                             HAVING      (COUNT(*) <> 1))and serverid=1 

----------- update ReciptItemID
UPDATE    ReciptItems
SET              ReciptItemID = ReciptItemID +@maxReciptItemsID

WHERE     ltrim(str(ReciptItemID)) + '-' + ltrim(str(ServerID)) + '-' + ltrim(str(YearID)) 
                      + '-' + ltrim(str(CASE WHEN ControlCode > 0 THEN ControlCode ELSE StuffCode END)) IN
                          (SELECT     ltrim(str(ReciptItemID)) + '-' + ltrim(str(ServerID)) + '-' + ltrim(str(YearID)) + '-' + ltrim(str(CASE WHEN Min(ControlCode) 
                                                   > 0 THEN Min(ControlCode) ELSE Min(StuffCode) END)) AS KeyCode
                             FROM         dbo.ReciptItems
                             GROUP BY ReciptItemID, ServerID, YearID
                             HAVING      (COUNT(*) <> 1)) and serverid=1 


UPDATE    ReciptItems
SET              ReciptItemID = ReciptID+ReciptItemID +@maxReciptItemsID

WHERE     ltrim(str(ReciptItemID)) + '-' + ltrim(str(ServerID)) + '-' + ltrim(str(YearID)) 
                      + '-' + ltrim(str(CASE WHEN ControlCode > 0 THEN ControlCode ELSE StuffCode END)) IN
                          (SELECT     ltrim(str(ReciptItemID)) + '-' + ltrim(str(ServerID)) + '-' + ltrim(str(YearID)) + '-' + ltrim(str(CASE WHEN Min(ControlCode) 
                                                   > 0 THEN Min(ControlCode) ELSE Min(StuffCode) END)) AS KeyCode
                             FROM         dbo.ReciptItems
                             GROUP BY ReciptItemID, ServerID, YearID
                             HAVING      (COUNT(*) <> 1))and serverid=1 
-------------serverid=2
------------- control ReciptItemID tekrari 
--declare @maxReciptItemsID int 
set @maxReciptItemsID= (select max(ReciptItemID) from ReciptItems where serverid=2  )

----------- update preReciptItemID
UPDATE    ReciptItems
SET              preReciptItemID = preReciptItemID +@maxReciptItemsID

WHERE     ltrim(str(preReciptItemID)) + '-' + ltrim(str(ServerID)) + '-' + ltrim(str(YearID)) 
                      + '-' + ltrim(str(CASE WHEN ControlCode > 0 THEN ControlCode ELSE StuffCode END)) IN
                          (SELECT     ltrim(str(ReciptItemID)) + '-' + ltrim(str(ServerID)) + '-' + ltrim(str(YearID)) + '-' + ltrim(str(CASE WHEN Min(ControlCode) 
                                                   > 0 THEN min(ControlCode) ELSE Min(StuffCode) END)) AS KeyCode
                             FROM         dbo.ReciptItems
                             GROUP BY ReciptItemID, ServerID, YearID
                             HAVING      (COUNT(*) <> 1))and serverid=2 

----------- update ReciptItemID
UPDATE    ReciptItems
SET              ReciptItemID = ReciptItemID +@maxReciptItemsID

WHERE     ltrim(str(ReciptItemID)) + '-' + ltrim(str(ServerID)) + '-' + ltrim(str(YearID)) 
                      + '-' + ltrim(str(CASE WHEN ControlCode > 0 THEN ControlCode ELSE StuffCode END)) IN
                          (SELECT     ltrim(str(ReciptItemID)) + '-' + ltrim(str(ServerID)) + '-' + ltrim(str(YearID)) + '-' + ltrim(str(CASE WHEN Min(ControlCode) 
                                                   > 0 THEN Min(ControlCode) ELSE Min(StuffCode) END)) AS KeyCode
                             FROM         dbo.ReciptItems
                             GROUP BY ReciptItemID, ServerID, YearID
                             HAVING      (COUNT(*) <> 1)) and serverid=2 


UPDATE    ReciptItems
SET              ReciptItemID = ReciptID+ReciptItemID +@maxReciptItemsID

WHERE     ltrim(str(ReciptItemID)) + '-' + ltrim(str(ServerID)) + '-' + ltrim(str(YearID)) 
                      + '-' + ltrim(str(CASE WHEN ControlCode > 0 THEN ControlCode ELSE StuffCode END)) IN
                          (SELECT     ltrim(str(ReciptItemID)) + '-' + ltrim(str(ServerID)) + '-' + ltrim(str(YearID)) + '-' + ltrim(str(CASE WHEN Min(ControlCode) 
                                                   > 0 THEN Min(ControlCode) ELSE Min(StuffCode) END)) AS KeyCode
                             FROM         dbo.ReciptItems
                             GROUP BY ReciptItemID, ServerID, YearID
                             HAVING      (COUNT(*) <> 1))and serverid=2 

-------------------------- mavared eshkal 
declare @ErrorCount int 
set @ErrorCount =
(
select count(*)
from (
SELECT     ReciptItems.ReciptItemID,ReciptItems.YearID, ReciptItems.ServerID, ReciptItems.preReciptItemID
FROM         ReciptItems LEFT OUTER JOIN
                      ReciptItems ReciptItems_1 ON ReciptItems.preReciptItemID = ReciptItems_1.ReciptItemID AND ReciptItems.ServerID = ReciptItems_1.ServerID AND 
                      ReciptItems.YearID = ReciptItems_1.YearID
WHERE     (ReciptItems_1.ReciptItemID IS NULL) AND (ISNULL(ReciptItems.preReciptItemID, 0) <> 0)
) aaaa
) 


if @ErrorCount>0 
begin
  raiserror(' ⁄œ«œÌ Œÿ« ÊÃÊœ œ«—œ ﬂÂ »«Ìœ »——”Ì ‘Êœ',16,1)
end 
--else   raiserror('«‰Ã«„ ‘œ.',16,1)

--print 'error count is : ' + ltrim(str(@ErrorCount ))
--ALTER TABLE ReciptItems ENABLE TRIGGER TR_NotAllowUpdateTrans3OnRItems

BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
CREATE UNIQUE NONCLUSTERED INDEX IX_ReciptItems ON dbo.ReciptItems
	(
	ReciptItemID,
	ServerID,
	YearID
	) ON [PRIMARY]
COMMIT

end



--------------- control FormItemID tekrari 
--if not exists (select * from sysindexes WHERE     (name = N'IX_FormItems'))
--begin
----ALTER TABLE FormItems DISABLE TRIGGER TR_NotAllowUpdateTrans3OnRItems
--declare @maxFormItemsID int 
--set @maxFormItemsID= (select max(FormItemID) from FormItems where serverid=0  )

------------- update preFormItemID
--UPDATE    FormItems
--SET              preFormItemID = preFormItemID +@maxFormItemsID

--WHERE     ltrim(str(preFormItemID)) + '-' + ltrim(str(ServerID)) + '-' + ltrim(str(YearID)) 
--                      + '-' + ltrim((isnull(CheckNumber,0))) IN
--                          (SELECT     ltrim(str(FormItemID)) + '-' + ltrim(str(ServerID)) + '-' + ltrim(str(YearID)) + '-' + ltrim((min(isnull(CheckNumber,0)))) AS KeyCode
--                             FROM         dbo.FormItems
--                             GROUP BY FormItemID, ServerID, YearID
--                             HAVING      (COUNT(*) <> 1))and serverid=0 

------------- update FormItemID
--UPDATE    FormItems
--SET              FormItemID = FormItemID +@maxFormItemsID

--WHERE     ltrim(str(FormItemID)) + '-' + ltrim(str(ServerID)) + '-' + ltrim(str(YearID)) 
--                      + '-' + ltrim((isnull(CheckNumber,0))) IN
--                          (SELECT     ltrim(str(FormItemID)) + '-' + ltrim(str(ServerID)) + '-' + ltrim(str(YearID)) + '-' + ltrim((min(isnull(CheckNumber,0)))) AS KeyCode
--                             FROM         dbo.FormItems
--                             GROUP BY FormItemID, ServerID, YearID
--                             HAVING      (COUNT(*) <> 1)) and serverid=0 


----UPDATE    FormItems
----SET              FormItemID = FormID+FormItemID +@maxFormItemsID

----WHERE     ltrim(str(FormItemID)) + '-' + ltrim(str(ServerID)) + '-' + ltrim(str(YearID)) 
----                      + '-' + ltrim((CheckNumber)) IN
----                          (SELECT     ltrim(str(FormItemID)) + '-' + ltrim(str(ServerID)) + '-' + ltrim(str(YearID)) + '-' + ltrim(str(min(CheckNumber))) AS KeyCode
----                             FROM         dbo.FormItems
----                             GROUP BY FormItemID, ServerID, YearID
----                             HAVING      (COUNT(*) <> 1))and serverid=0 
------------------ serverid =1 
--------------- control FormItemID tekrari 
----declare @maxFormItemsID int 
--set @maxFormItemsID= (select max(FormItemID) from FormItems where serverid=1  )

------------- update preFormItemID
--UPDATE    FormItems
--SET              preFormItemID = preFormItemID +@maxFormItemsID

--WHERE     ltrim(str(preFormItemID)) + '-' + ltrim(str(ServerID)) + '-' + ltrim(str(YearID)) 
--                      + '-' + ltrim((isnull(CheckNumber,0))) IN
--                          (SELECT     ltrim(str(FormItemID)) + '-' + ltrim(str(ServerID)) + '-' + ltrim(str(YearID)) + '-' + ltrim((min(isnull(CheckNumber,0)))) AS KeyCode
--                             FROM         dbo.FormItems
--                             GROUP BY FormItemID, ServerID, YearID
--                             HAVING      (COUNT(*) <> 1))and serverid=1 

------------- update FormItemID
--UPDATE    FormItems
--SET              FormItemID = FormItemID +@maxFormItemsID

--WHERE     ltrim(str(FormItemID)) + '-' + ltrim(str(ServerID)) + '-' + ltrim(str(YearID)) 
--                      + '-' + ltrim((isnull(CheckNumber,0))) IN
--                          (SELECT     ltrim(str(FormItemID)) + '-' + ltrim(str(ServerID)) + '-' + ltrim(str(YearID)) + '-' + ltrim(min((isnull(CheckNumber,0)))) AS KeyCode
--                             FROM         dbo.FormItems
--                             GROUP BY FormItemID, ServerID, YearID
--                             HAVING      (COUNT(*) <> 1)) and serverid=1 


----UPDATE    FormItems
----SET              FormItemID = FormID+FormItemID +@maxFormItemsID

----WHERE     ltrim(str(FormItemID)) + '-' + ltrim(str(ServerID)) + '-' + ltrim(str(YearID)) 
----                      + '-' + ltrim((CheckNumber)) IN
----                          (SELECT     ltrim(str(FormItemID)) + '-' + ltrim(str(ServerID)) + '-' + ltrim(str(YearID)) + '-' + ltrim(str(min(CheckNumber))) AS KeyCode
----                             FROM         dbo.FormItems
----                             GROUP BY FormItemID, ServerID, YearID
----                             HAVING      (COUNT(*) <> 1))and serverid=1 
---------------serverid=2
--------------- control FormItemID tekrari 
----declare @maxFormItemsID int 
--set @maxFormItemsID= (select max(FormItemID) from FormItems where serverid=2  )

------------- update preFormItemID
--UPDATE    FormItems
--SET              preFormItemID = preFormItemID +@maxFormItemsID

--WHERE     ltrim(str(preFormItemID)) + '-' + ltrim(str(ServerID)) + '-' + ltrim(str(YearID)) 
--                      + '-' + ltrim((isnull(CheckNumber,0))) IN
--                          (SELECT     ltrim(str(FormItemID)) + '-' + ltrim(str(ServerID)) + '-' + ltrim(str(YearID)) + '-' + ltrim((min(isnull(CheckNumber,0)))) AS KeyCode
--                             FROM         dbo.FormItems
--                             GROUP BY FormItemID, ServerID, YearID
--                             HAVING      (COUNT(*) <> 1))and serverid=2 

------------- update FormItemID
--UPDATE    FormItems
--SET              FormItemID = FormItemID +@maxFormItemsID

--WHERE     ltrim(str(FormItemID)) + '-' + ltrim(str(ServerID)) + '-' + ltrim(str(YearID)) 
--                      + '-' + ltrim((isnull(CheckNumber,0))) IN
--                          (SELECT     ltrim(str(FormItemID)) + '-' + ltrim(str(ServerID)) + '-' + ltrim(str(YearID)) + '-' + ltrim((min(isnull(CheckNumber,0)))) AS KeyCode
--                             FROM         dbo.FormItems
--                             GROUP BY FormItemID, ServerID, YearID
--                             HAVING      (COUNT(*) <> 1)) and serverid=2 


----UPDATE    FormItems
----SET              FormItemID = FormID+FormItemID +@maxFormItemsID

----WHERE     ltrim(str(FormItemID)) + '-' + ltrim(str(ServerID)) + '-' + ltrim(str(YearID)) 
----                      + '-' + ltrim((CheckNumber)) IN
----                          (SELECT     ltrim(str(FormItemID)) + '-' + ltrim(str(ServerID)) + '-' + ltrim(str(YearID)) + '-' + ltrim(str(min(CheckNumber))) AS KeyCode
----                             FROM         dbo.FormItems
----                             GROUP BY FormItemID, ServerID, YearID
----                             HAVING      (COUNT(*) <> 1))and serverid=2 

---------------------------- mavared eshkal 
----declare @ErrorCount int 
--set @ErrorCount =
--(
--select count(*)
--from (
--SELECT     FormItems.FormItemID,FormItems.YearID, FormItems.ServerID, FormItems.preFormItemID 
--FROM         FormItems LEFT OUTER JOIN
--                      FormItems FormItems_1 ON FormItems.preFormItemID = FormItems_1.FormItemID AND FormItems.ServerID = FormItems_1.ServerID AND 
--                      FormItems.YearID = FormItems_1.YearID
--WHERE     (FormItems_1.FormItemID IS NULL) AND (ISNULL(FormItems.preFormItemID, 0) <> 0)
--) aaaa
--) 


--if @ErrorCount>0 
--begin
--  raiserror('œ— IX_FormItems  ⁄œ«œÌ Œÿ« ÊÃÊœ œ«—œ ﬂÂ »«Ìœ »——”Ì ‘Êœ',16,1)
--end 
----else   raiserror('«‰Ã«„ ‘œ.',16,1)

----print 'error count is : ' + ltrim(str(@ErrorCount ))
----ALTER TABLE FormItems ENABLE TRIGGER TR_NotAllowUpdateTrans3OnRItems

--BEGIN TRANSACTION
--SET QUOTED_IDENTIFIER ON
--SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
--SET ARITHABORT ON
--SET NUMERIC_ROUNDABORT OFF
--SET CONCAT_NULL_YIELDS_NULL ON
--SET ANSI_NULLS ON
--SET ANSI_PADDING ON
--SET ANSI_WARNINGS ON
--COMMIT
--BEGIN TRANSACTION
--CREATE UNIQUE NONCLUSTERED INDEX IX_FormItems ON dbo.FormItems
--	(
--	FormItemID,
--	ServerID,
--	YearID
--	) ON [PRIMARY]
--COMMIT

--end




if ( COLUMNPROPERTY( OBJECT_ID('UseUnits'),'YearID','IsRowGuidCol')is  null )  
begin
  ALTER TABLE UseUnits ADD YearID int NOT NULL DEFAULT (0)
end   

if ( COLUMNPROPERTY( OBJECT_ID('Config'),'stCount','IsRowGuidCol')is  null )  
ALTER TABLE Config ADD stCount Tinyint NOT NULL  DEFAULT (0)    

 
if (SELECT COLUMNPROPERTY( OBJECT_ID('FormItems'),'AccountNumberNew','PRECISION'))<=53
if not exists (select * from dbo.sysobjects where id = object_id(N'Temp_AccountNumberNew') 
        and OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
SELECT     FormItemID, FormID, ServerID, YearID, AccountNumberNew
INTO            Temp_AccountNumberNew
FROM         FormItems

if ( COLUMNPROPERTY( OBJECT_ID('FormItems'),'AccountNumberNew1','IsRowGuidCol')is  null )  
ALTER TABLE FormItems ADD AccountNumberNew1 VARCHAR(60)

UPDATE FormItems  SET AccountNumberNew =0 where AccountNumberNew>999999999999999                                                                 
END

if ( COLUMNPROPERTY( OBJECT_ID('Config'),'ActiveSubsys','IsRowGuidCol')is  null )  
ALTER TABLE Config ADD ActiveSubsys  varchar(30) NOT NULL  DEFAULT ('0')


IF NOT EXISTS (SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE       (TABLE_NAME = N'Config') AND (COLUMN_NAME = N'ActiveSubsys') AND (DATA_TYPE='varchar') AND (CHARACTER_MAXIMUM_LENGTH =30 ))
begin
   ALTER TABLE Config ALTER COLUMN ActiveSubsys VARCHAR(30)
   update Config set 	ActiveSubsys  =ActiveSubsys+'00001'
end

IF OBJECT_ID ('TR_NotAllowUpdate0', 'TR') IS NOT NULL 
DROP TRIGGER [dbo].[TR_NotAllowUpdate0]
GO
CREATE TRIGGER [dbo].[TR_NotAllowUpdate0]
ON [dbo].[Recipts] AFTER UPDATE 
AS
BEGIN
SET NOCOUNT ON;
if update(docno) 
IF EXISTS (SELECT r.ReciptID FROM  dbo.Recipts r INNER JOIN 
                  inserted d ON r.ReciptID=d.ReciptID AND r.ServerID=d.ServerID AND r.YearID=d.YearID           WHERE r.docno=0)

BEGIN
  RAISERROR('شماره سند قابل ویرایش به 0  نمی باشد',16,1)
  ROLLBACK;
END
END
GO
ALTER TABLE [dbo].[Recipts] ENABLE TRIGGER TR_NotAllowUpdate0
GO



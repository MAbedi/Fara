USE [Bsell_Sahand_1395]
GO
DROP TRIGGER [dbo].[TR_ChangeStateB4DeleteRecipt]
GO
--==========================================================================
CREATE TRIGGER [dbo].[TR_ChangeStateB4DeleteRecipt]
ON [dbo].[Recipts]  INSTEAD OF DELETE
AS
BEGIN
---SET NOCOUNT ON;
DECLARE @ReciptID int
DECLARE @YearID int
DECLARE @ServerID int

SELECT @ReciptID=ReciptID,@YearID=YearID,@ServerID=ServerID FROM  deleted

DECLARE @ReciptType int
DECLARE @ParentReciptID int
DECLARE @OldReciptID int

SELECT @ParentReciptID=ParentReciptID FROM Recipts 
WHERE        (ReciptID = @ReciptID) AND (ServerID = @ServerID) AND (YearID = @YearID)


SELECT @ReciptType=ReciptType FROM Recipts 
WHERE        (ReciptID = @ParentReciptID) AND (ServerID = @ServerID) AND (YearID = @YearID)

DECLARE @PostDelChangeState int
---بعد از ثبت فرم مرتبط فرم اولیه فراخوانی یک به یک رزرو و بعد از حذف قطعی شود.
---------------------                 بعد از حذف قطعی       --------------------------
SELECT  @PostDelChangeState=  CASE  WHEN  RecallTypeOption & 8192 = 8192 THEN 1 ELSE 0 END  
FROM            ReciptTypes
WHERE        (ReciptType = @ReciptType) 

if @PostDelChangeState = 1
begin
UPDATE Recipts
SET    ReciptState = 1 
FROM   ReciptItems INNER JOIN
       Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND ReciptItems.YearID = Recipts.YearID
WHERE (ReciptItems.ReciptItemID in (SELECT preReciptItemID FROM ReciptItems 
WHERE (ReciptID in (SELECT ParentReciptID FROM deleted)) 
   AND (ServerID = @ServerID) AND (YearID = @YearID)) )  
   AND (Recipts.ServerID = @ServerID) AND (Recipts.YearID = @YearID)

END

DELETE  Recipts WHERE     (ReciptID in(SELECT ReciptID FROM deleted )) AND (ServerID = @ServerID) AND (YearID = @YearID)

END
GO



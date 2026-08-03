set nocount on
 -----------------------------------------------------------C H E C K CONSTRAINT
 ALTER TABLE StuffCoding CHECK CONSTRAINT ALL
 ALTER TABLE TransFormItems CHECK CONSTRAINT ALL
 ALTER TABLE ManifestoItems CHECK CONSTRAINT ALL
 ALTER TABLE StuffCodingAid CHECK CONSTRAINT ALL

 --ALTER TABLE StuffsDeficitsRange CHECK CONSTRAINT ALL
 --ALTER TABLE StuffsDeficitsRange CHECK CONSTRAINT ALL

 ALTER TABLE Agreements CHECK CONSTRAINT ALL
 ALTER TABLE ReciptItems CHECK CONSTRAINT ALL
 ALTER TABLE QuotaItems CHECK CONSTRAINT ALL
 ALTER TABLE ReciptsRegulationItems CHECK CONSTRAINT ALL
 ALTER TABLE Tozin CHECK CONSTRAINT ALL
 ALTER TABLE StoreStuffs CHECK CONSTRAINT ALL
 ALTER TABLE CountingItems CHECK CONSTRAINT ALL
 ALTER TABLE ScheduleWorksItems CHECK CONSTRAINT ALL
 ALTER TABLE PurchaseEffect CHECK CONSTRAINT ALL
if ( COLUMNPROPERTY( OBJECT_ID('ReciptItems'),'PestEntity','IsRowGuidCol')is  null )  ALTER TABLE ReciptItems ADD PestEntity  decimal(18, 2) 
if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'DocTypeCode','IsRowGuidCol')is null ) ALTER TABLE FormTypes ADD DocTypeCode Tinyint NOT NULL DEFAULT (8)

if ( COLUMNPROPERTY( OBJECT_ID('ReciptPurchaseEffect'),'EffectNote','IsRowGuidCol')is null ) 
  ALTER TABLE ReciptPurchaseEffect ADD EffectNote varchar(20)

if ( COLUMNPROPERTY( OBJECT_ID('ReciptPurchaseEffect'),'PurchaseID','IsRowGuidCol')is null ) 
  ALTER TABLE ReciptPurchaseEffect ADD PurchaseID int


if ( COLUMNPROPERTY( OBJECT_ID('ReciptPurchaseEffect'),'TozinID','IsRowGuidCol')is  null )  
begin
  ALTER TABLE ReciptPurchaseEffect ADD TozinID int 
end

if not exists (select * from sysobjects where id = object_id(N'FK_ReciptPurchaseEffect_Tozin') and OBJECTPROPERTY(id, N'CnstIsColumn') = 1)
  ALTER TABLE ReciptPurchaseEffect ADD CONSTRAINT FK_ReciptPurchaseEffect_Tozin
      FOREIGN KEY (TozinID)REFERENCES Tozin (TozinID)  --ON UPDATE CASCADE ON DELETE CASCADE 


   
--if ( COLUMNPROPERTY( OBJECT_ID('ReciptPurchaseEffect'),'Kind','IsRowGuidCol')is null ) 
--  ALTER TABLE ReciptPurchaseEffect ADD Kind tinyint  NOT NULL CONSTRAINT DF_ReciptPurchaseEffect_Kind DEFAULT (0) 	

if ( COLUMNPROPERTY( OBJECT_ID('ReciptPurchaseEffect'),'IsPrint','IsRowGuidCol')is  null )  
  ALTER TABLE ReciptPurchaseEffect ADD IsPrint bit  NOT NULL CONSTRAINT DF_ReciptPurchaseEffect_IsPrint DEFAULT (1) 	


if not exists (select * from sysobjects where id = object_id(N'FK_ReciptPurchaseEffect_ReciptItems') )
IF NOT EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N'ReciptPurchaseEffect_Temp') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
SELECT * from ReciptPurchaseEffect
SELECT ReciptPurchaseEffect.* 
INTO ReciptPurchaseEffect_Temp
FROM            ReciptPurchaseEffect LEFT OUTER JOIN
                         ReciptItems ON ReciptPurchaseEffect.ReciptItemID = ReciptItems.ReciptItemID AND ReciptPurchaseEffect.ReciptID = ReciptItems.ReciptID 
						 AND ReciptPurchaseEffect.YearID = ReciptItems.YearID AND 
                         ReciptPurchaseEffect.ServerID = ReciptItems.ServerID
WHERE        (ReciptItems.ReciptItemID IS NULL)

DELETE FROM ReciptPurchaseEffect
FROM            ReciptPurchaseEffect LEFT OUTER JOIN
                         ReciptItems ON ReciptPurchaseEffect.ReciptItemID = ReciptItems.ReciptItemID AND ReciptPurchaseEffect.ReciptID = ReciptItems.ReciptID 
						 AND ReciptPurchaseEffect.YearID = ReciptItems.YearID AND 
                         ReciptPurchaseEffect.ServerID = ReciptItems.ServerID
WHERE        (ReciptItems.ReciptItemID IS NULL)


INSERT INTO ReciptPurchaseEffect
                         (EffectID, Amount, ReplaceRate, ReciptItemID, ServerID, YearID, ReciptID, EffectNote, PurchaseID, TozinID, IsPrint)
SELECT        ReciptPurchaseEffect_Temp.EffectID, ReciptPurchaseEffect_Temp.Amount, ReciptPurchaseEffect_Temp.ReplaceRate, MIN(ReciptItems.ReciptItemID) AS Expr1, ReciptPurchaseEffect_Temp.ServerID, 
                         ReciptPurchaseEffect_Temp.YearID, ReciptPurchaseEffect_Temp.ReciptID, ReciptPurchaseEffect_Temp.EffectNote, ReciptPurchaseEffect_Temp.PurchaseID, ReciptPurchaseEffect_Temp.TozinID, 
                         ReciptPurchaseEffect_Temp.IsPrint
FROM            ReciptPurchaseEffect_Temp LEFT OUTER JOIN
                         ReciptItems ON ReciptPurchaseEffect_Temp.ReciptID = ReciptItems.ReciptID AND ReciptPurchaseEffect_Temp.YearID = ReciptItems.YearID AND ReciptPurchaseEffect_Temp.ServerID = ReciptItems.ServerID
GROUP BY ReciptPurchaseEffect_Temp.EffectID, ReciptPurchaseEffect_Temp.Amount, ReciptPurchaseEffect_Temp.ReplaceRate, ReciptPurchaseEffect_Temp.ServerID, ReciptPurchaseEffect_Temp.YearID, 
                         ReciptPurchaseEffect_Temp.ReciptID, ReciptPurchaseEffect_Temp.EffectNote, ReciptPurchaseEffect_Temp.PurchaseID, ReciptPurchaseEffect_Temp.TozinID, ReciptPurchaseEffect_Temp.IsPrint
HAVING        (MIN(ReciptItems.ReciptItemID) IS NOT NULL)


End



if not exists (select * from sysobjects where id = object_id(N'FK_ReciptPurchaseEffect_ReciptItems') )
BEGIN TRY  
ALTER TABLE dbo.ReciptPurchaseEffect  WITH CHECK ADD  CONSTRAINT FK_ReciptPurchaseEffect_ReciptItems FOREIGN KEY(ReciptItemID,ReciptID, ServerID, YearID)
REFERENCES dbo.ReciptItems (ReciptItemID,ReciptID, ServerID, YearID)
ON UPDATE CASCADE
ON DELETE CASCADE
END TRY  
BEGIN CATCH  
ALTER TABLE dbo.ReciptPurchaseEffect  WITH CHECK ADD  CONSTRAINT FK_ReciptPurchaseEffect_ReciptItems FOREIGN KEY(ReciptItemID,ReciptID, ServerID, YearID)
REFERENCES dbo.ReciptItems (ReciptItemID,ReciptID, ServerID, YearID)
--ON UPDATE CASCADE
--ON DELETE CASCADE
END CATCH  





  
if ( COLUMNPROPERTY( OBJECT_ID('PurchaseEffect'),'CoefficientMin','IsRowGuidCol')is  null )  
 ALTER TABLE PurchaseEffect ADD CoefficientMin float  NOT NULL CONSTRAINT DF_PurchaseEffect_CoefficientMin DEFAULT (-999999999) 	

if ( COLUMNPROPERTY( OBJECT_ID('PurchaseEffect'),'CoefficientMax','IsRowGuidCol')is  null )  
 ALTER TABLE PurchaseEffect ADD CoefficientMax float  NOT NULL CONSTRAINT DF_PurchaseEffect_CoefficientMax DEFAULT (9999999999) 	

if ( COLUMNPROPERTY( OBJECT_ID('PurchaseEffect'),'PENote','IsRowGuidCol')is  null )  
 ALTER TABLE PurchaseEffect ADD PENote varchar(50)  


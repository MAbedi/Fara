SET NOCOUNT ON
 if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CalcCheckDateOfLookUpsAmount1','IsRowGuidCol')is null )
 begin
 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptOnFormsRange_Recipts' AND type = 'F')
 ALTER TABLE ReciptOnFormsRange DROP CONSTRAINT FK_ReciptOnFormsRange_Recipts
 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptsDeficits_Recipts' AND type = 'F')
 ALTER TABLE ReciptsDeficits DROP CONSTRAINT FK_ReciptsDeficits_Recipts
 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptItems_Recipts' AND type = 'F')
 ALTER TABLE ReciptItems DROP CONSTRAINT FK_ReciptItems_Recipts
 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Recipts_Recipts' AND type = 'F')
 ALTER TABLE Recipts DROP CONSTRAINT FK_Recipts_Recipts
 IF EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_Recipts' AND type = 'K')
 ALTER TABLE Recipts DROP CONSTRAINT PK_Recipts
 end

 IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_Recipts' AND type = 'K')
 ALTER TABLE Recipts ADD CONSTRAINT PK_Recipts PRIMARY KEY CLUSTERED (ReciptID,ServerID,YearID) ON [PRIMARY]
 IF  EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_ReciptsDeficits' AND type = 'K')
 ALTER TABLE ReciptsDeficits DROP CONSTRAINT PK_ReciptsDeficits
 ALTER TABLE ReciptsDeficits ADD CONSTRAINT PK_ReciptsDeficits PRIMARY KEY CLUSTERED
 (ReciptDeficitID,ReciptID,ServerID,YearID) ON [PRIMARY]

 
 --IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptsRegulates_ReciptItems' AND type = 'F')
 --ALTER TABLE ReciptsRegulates DROP CONSTRAINT FK_ReciptsRegulates_ReciptItems

 --IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptItemsRelease_ReciptItems' AND type = 'F')
 --ALTER TABLE ReciptItemsRelease DROP CONSTRAINT FK_ReciptItemsRelease_ReciptItems


 --IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptPurchaseEffect_ReciptItems' AND type = 'F')
 --ALTER TABLE ReciptPurchaseEffect DROP CONSTRAINT FK_ReciptPurchaseEffect_ReciptItems

 --ALTER TABLE ReciptItems DROP CONSTRAINT PK_ReciptItems
 
 IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_ReciptItems' AND type = 'K')
 ALTER TABLE ReciptItems ADD CONSTRAINT PK_ReciptItems PRIMARY KEY CLUSTERED
 (ReciptItemID,ReciptID,ServerID,YearID) ON [PRIMARY]

 IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptItems_Recipts' AND type = 'F')
 ALTER TABLE ReciptItems ADD CONSTRAINT FK_ReciptItems_Recipts FOREIGN KEY (ReciptID,ServerID,YearID)REFERENCES
 Recipts (ReciptID,ServerID,YearID) ON DELETE CASCADE ON UPDATE CASCADE

 IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptsDeficits_Recipts' AND type = 'F')
 ALTER TABLE ReciptsDeficits ADD CONSTRAINT FK_ReciptsDeficits_Recipts FOREIGN KEY (ReciptID,ServerID,YearID)
 REFERENCES Recipts (ReciptID,ServerID,YearID) ON UPDATE CASCADE

 --ALTER TABLE ReciptPurchaseEffect DROP CONSTRAINT PK_ReciptPurchaseEffect
 
 IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_ReciptPurchaseEffect' AND type = 'K')
 ALTER TABLE ReciptPurchaseEffect ADD CONSTRAINT PK_ReciptPurchaseEffect PRIMARY KEY CLUSTERED
 (EffectID,ReciptID,ReciptItemID,ServerID,YearID) ON [PRIMARY]


 --IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptOnFormsRange_Forms' AND type = 'F')
 --ALTER TABLE ReciptOnFormsRange DROP CONSTRAINT FK_ReciptOnFormsRange_Forms


 --IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FormItems_Forms' AND type = 'F')
 --ALTER TABLE FormItems DROP CONSTRAINT FK_FormItems_Forms
 -- ALTER TABLE Forms DROP CONSTRAINT PK_Forms

 IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_Forms' AND type = 'K')
 ALTER TABLE Forms ADD  CONSTRAINT PK_Forms PRIMARY KEY CLUSTERED (FormID,ServerID,YearID) ON [PRIMARY]

 --IF EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_ReciptOnFormsRange' AND type = 'K')
 --ALTER TABLE ReciptOnFormsRange DROP CONSTRAINT PK_ReciptOnFormsRange

 IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'PK_ReciptOnFormsRange' AND type = 'K')
 ALTER TABLE ReciptOnFormsRange ADD CONSTRAINT PK_ReciptOnFormsRange PRIMARY KEY CLUSTERED
 (FormID,ReciptID,ServerID,YearID) ON [PRIMARY]


 IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptOnFormsRange_Recipts' AND type = 'F')
 ALTER TABLE ReciptOnFormsRange ADD CONSTRAINT FK_ReciptOnFormsRange_Recipts FOREIGN KEY
 (ReciptID,ServerID,YearID)REFERENCES Recipts (ReciptID,ServerID,YearID)

 IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptOnFormsRange_Forms' AND type = 'F')
 ALTER TABLE ReciptOnFormsRange ADD CONSTRAINT FK_ReciptOnFormsRange_Forms FOREIGN KEY
 (FormID,ServerID,YearID)REFERENCES Forms (FormID,ServerID,YearID) ON UPDATE CASCADE

 IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_FormItems_Forms' AND type = 'F')
 ALTER TABLE FormItems ADD CONSTRAINT FK_FormItems_Forms FOREIGN KEY (FormID,ServerID,YearID)REFERENCES Forms
 (FormID,ServerID,YearID) ON DELETE CASCADE ON UPDATE CASCADE




 if  exists (select * from dbo.sysobjects where id = object_id(N'ReciptsRegulates') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptsRegulates_ReciptItems' AND type = 'F')
begin
--SELECT        ReciptsRegulates.*
--INTO              ReciptsRegulates_FK_Temp
--FROM            ReciptsRegulates LEFT OUTER JOIN
--                         ReciptItems ON ReciptsRegulates.ReciptItemID = ReciptItems.ReciptItemID AND ReciptsRegulates.ReciptID = ReciptItems.ReciptID AND ReciptsRegulates.ServerID = ReciptItems.ServerID AND 
--                         ReciptsRegulates.YearID = ReciptItems.YearID
--WHERE        (ReciptItems.ReciptItemID IS NULL)

--DELETE FROM ReciptsRegulates
--FROM            ReciptsRegulates LEFT OUTER JOIN
--                         ReciptItems ON ReciptsRegulates.ReciptItemID = ReciptItems.ReciptItemID AND ReciptsRegulates.ReciptID = ReciptItems.ReciptID AND ReciptsRegulates.ServerID = ReciptItems.ServerID AND 
--                         ReciptsRegulates.YearID = ReciptItems.YearID
--WHERE        (ReciptItems.ReciptItemID IS NULL)

 ALTER TABLE ReciptsRegulates ADD CONSTRAINT FK_ReciptsRegulates_ReciptItems FOREIGN KEY (ReciptItemID,ReciptID,ServerID,YearID)
 REFERENCES ReciptItems (ReciptItemID,ReciptID,ServerID,YearID) ON DELETE CASCADE

 end

 if  exists (select * from dbo.sysobjects where id = object_id(N'ReciptItemsRelease') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_ReciptItemsRelease_ReciptItems' AND type = 'F')
 ALTER TABLE ReciptItemsRelease ADD  CONSTRAINT FK_ReciptItemsRelease_ReciptItems FOREIGN KEY (ReciptItemID,ReciptID,ServerID,YearID)
 REFERENCES ReciptItems (ReciptItemID,ReciptID,ServerID,YearID) ON DELETE CASCADE


 if ( COLUMNPROPERTY( OBJECT_ID('FormTypes'),'CalcCheckDateOfLookUpsAmount1','IsRowGuidCol')is null )
 ALTER TABLE [FormTypes] ADD [CalcCheckDateOfLookUpsAmount1] Tinyint NOT NULL DEFAULT (0)
 
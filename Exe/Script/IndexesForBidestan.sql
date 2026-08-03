IF  ( SELECT     COUNT(*) FROM         sysindexes WHERE     (name = N'IX_Recipt_DateState'))= 0 

CREATE NONCLUSTERED INDEX [IX_Recipt_DateState] ON [dbo].[Recipts] 
(
	[ReciptDate] ASC,[ReciptState] ASC
)
INCLUDE ( [ReciptID],[ReciptType],[ServerID],[YearID]
)ON [PRIMARY]
GO

IF  ( SELECT  COUNT(*) FROM  sysindexes WHERE  (name = N'IX_Recipt_Type'))= 0 

CREATE NONCLUSTERED INDEX [IX_Recipt_Type] ON [dbo].[Recipts] 
(
	[ReciptType] ASC
)
INCLUDE ( [ReciptID],[ReciptDate],[ServerID],[YearID]
)  ON [PRIMARY]
GO

IF  ( SELECT     COUNT(*) FROM  sysindexes WHERE (name = N'IX_ReciptItems_RSY'))= 0 

CREATE NONCLUSTERED INDEX [IX_ReciptItems_RSY] ON [dbo].[ReciptItems] 
(
	[preReciptItemID] ASC,[ServerID] ASC,[YearID] ASC
) ON [PRIMARY]
GO

IF  ( SELECT     COUNT(*) FROM  sysindexes WHERE  (name = N'IX_ReciptItems_RSYS'))= 0 

CREATE NONCLUSTERED INDEX [IX_ReciptItems_RSYS] ON [dbo].[ReciptItems] 
(
	[ReciptID] ASC,	[ServerID] ASC,	[YearID] ASC,[StuffCode] ASC
) ON [PRIMARY]
GO

IF  ( SELECT     COUNT(*) FROM  sysindexes WHERE  (name = N'IX_ReciptItems_Stuff'))= 0 

CREATE NONCLUSTERED INDEX [IX_ReciptItems_Stuff] ON [dbo].[ReciptItems] 
(
	[StuffCode] ASC,[StuffSize] ASC,[StuffDiameter] ASC,[StuffAlloy] ASC
)
INCLUDE ( [ReciptID],[OutputWeight],[ServerID],[YearID])
 ON [PRIMARY]
GO

IF  ( SELECT   COUNT(*) FROM    sysindexes WHERE     (name = N'IX_ReciptItems_StuffCode'))= 0 

CREATE NONCLUSTERED INDEX [IX_ReciptItems_StuffCode] ON [dbo].[ReciptItems] 
(
	[StuffCode] ASC
)
INCLUDE ( [ReciptID],[StuffSize],[StuffDiameter],[StuffAlloy],[ServerID],[YearID])
  ON [PRIMARY]
GO

IF  ( SELECT     COUNT(*) FROM         sysindexes WHERE     (name = N'IX_ReciptItems_StuffCode1'))= 0 

CREATE NONCLUSTERED INDEX [IX_ReciptItems_StuffCode1] ON [dbo].[ReciptItems] 
(
	[StuffCode] ASC
)
INCLUDE ( [ReciptID],[StuffSize],[StuffDiameter],[StuffAlloy],[InputWeight],[OutputWeight],[ServerID],[YearID])
 WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO





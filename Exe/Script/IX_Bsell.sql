

--if not exists (select * from sysindexes WHERE     (name = N'IX_Recipts4Cardex1'))
--CREATE NONCLUSTERED INDEX IX_Recipts4Cardex1
--ON [dbo].[Recipts] ([ReciptState],[YearID],[PersonID3])
--INCLUDE ([ReciptID],[StoreID],[PersonID1],[PersonID2],[ReciptType],[StoreID2],[ServerID])

--GO
--if not exists (select * from sysindexes WHERE     (name = N'IX_Recipts4Cardex2'))
--CREATE NONCLUSTERED INDEX IX_Recipts4Cardex2
--ON [dbo].[Recipts] ([ReciptDate],[ReciptState],[YearID],[PersonID3])
--INCLUDE ([ReciptID],[StoreID],[PersonID1],[PersonID2],[ReciptType],[StoreID2],[ServerID])


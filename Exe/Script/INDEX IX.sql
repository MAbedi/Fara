DROP INDEX IX_Interdicts_PersonelNo ON [Pay].Interdicts
DROP INDEX [IX_FixedCalculated_YPM] ON [Pay].FixedCalculated
DROP INDEX IX_FixedCalculated_PM ON [Pay].FixedCalculated

 if not exists (select * from sysindexes WHERE     (name = N'IX_Interdicts_PersonelNo'))
 CREATE NONCLUSTERED INDEX IX_Interdicts_PersonelNo ON Pay.Interdicts (PersonelNo) INCLUDE (subcompanyCode,InterdicStartDate,InterdicEndDate,TaxCalculationType)
 GO
 if not exists (select * from sysindexes WHERE     (name = N'IX_FixedCalculated_YPM'))
 CREATE NONCLUSTERED INDEX IX_FixedCalculated_YPM ON Pay.FixedCalculated (Years,PersonelNO,Mounth) INCLUDE (SalaryID,Price,BedBes,CalCulateKind,ShowListKind,ArchiveID,YearID)
 GO
 if not exists (select * from sysindexes WHERE     (name = N'IX_FixedCalculated_PM'))
 CREATE NONCLUSTERED INDEX IX_FixedCalculated_PM ON Pay.FixedCalculated (PersonelNO,Mounth) INCLUDE (ArchiveID,YearID,Years)

 GO
 CREATE NONCLUSTERED INDEX IX_FixedCalculated_YPM_S ON [Pay].[FixedCalculated] ([Years],[PersonelNO],[Mounth]) INCLUDE ([SalaryID],[Price],[BedBes],[CalCulateKind],[ShowListKind],[ArchiveID],[YearID])
 GO
 CREATE NONCLUSTERED INDEX IX_PersonelDecExt_P ON [Pay].[PersonelDecExt] ([PersonelNo]) INCLUDE ([FormInfoID],[EmployeeAmount],[FirstMounth],[EndMounth],[PaymentLoan],[EndDate],[YearID],[StartYear],[EndYear])
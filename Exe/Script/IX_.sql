
if NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_MakeDoc_StuffCoding1'))
CREATE NONCLUSTERED INDEX IX_MakeDoc_StuffCoding1
ON StuffCoding (OwnerShipKind)
INCLUDE (c_StuffCode,c_StuffName,acc_DetaiCode,acc_CTopicCode,acc_CTopicCode2,Acc_BidTopicCode,Commission)
GO
IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_MakeDoc_ReciptItems1'))
--DROP INDEX IX_MakeDoc_ReciptItems1 ON ReciptItems
CREATE NONCLUSTERED INDEX IX_MakeDoc_ReciptItems1
ON ReciptItems (ReciptID,ServerID,YearID)
INCLUDE (StuffCode,InputEntity,OutputEntity,InputWeight,OutputWeight,ControlCode,TotalInputPrice,TotalOutputPrice,AidNumber,AidDate,ArzAmount,TotalStandardRate,UnitCommission)
GO
IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_MakeDoc_Recipts1'))
--DROP INDEX IX_MakeDoc_Recipts1 ON Recipts
CREATE NONCLUSTERED INDEX IX_MakeDoc_Recipts1
ON Recipts (StoreID,ReciptNumber,ReciptDate,PersonID1,PersonID2,DocNo,ReciptState,SellsEmporium,PersonID3)
INCLUDE (ReciptID,ReciptType,SecondType,ReciptNote,UseUnitID,AidNumber,AidDate,StoreID2,TruckNumber,MachineNo,MachineName,ReciptsRow,ServerID,YearID,MachineInfo)
GO
GO
IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_MakeDoc_Recipts2'))
--DROP INDEX IX_MakeDoc_Recipts2 ON Recipts
CREATE NONCLUSTERED INDEX IX_MakeDoc_Recipts2
ON Recipts (ReciptType,StoreID,ReciptNumber,ReciptDate,PersonID1,PersonID2,DocNo,ReciptState,SellsEmporium,PersonID3)
INCLUDE (ReciptID,SecondType,ReciptNote,UseUnitID,AidNumber,AidDate,StoreID2,TruckNumber,MachineNo,MachineName,ReciptsRow,ServerID,YearID,MachineInfo)
GO
GO
IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_MakeDoc_Recipts3'))
--DROP INDEX IX_MakeDoc_Recipts3 ON Recipts
CREATE NONCLUSTERED INDEX  IX_MakeDoc_Recipts3
ON Recipts (SecondType,StoreID,ReciptNumber,ReciptDate,PersonID1,PersonID2,DocNo,ReciptState,SellsEmporium,PersonID3)
INCLUDE (ReciptID,ReciptType,ReciptNote,AidNumber,AidDate,TruckNumber,MachineNo,MachineName,ReciptsRow,ServerID,YearID,MachineInfo)
GO
IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_MakeDoc_StuffCoding2'))
--DROP INDEX IX_MakeDoc_StuffCoding2 ON StuffCoding
CREATE NONCLUSTERED INDEX  IX_MakeDoc_StuffCoding2
ON StuffCoding (GroupID,n_UnitCode)

GO
IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_MakeDoc_ReciptItems3'))
--DROP INDEX IX_MakeDoc_ReciptItems3 ON ReciptItems
CREATE NONCLUSTERED INDEX IX_MakeDoc_ReciptItems3 ON ReciptItems(	StuffCode ASC)
GO
IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_ReciptsDeficits1'))
--DROP INDEX IX_ReciptsDeficits1 ON ReciptsDeficits
CREATE NONCLUSTERED INDEX IX_ReciptsDeficits1
ON dbo.ReciptsDeficits (ReciptID,ServerID,YearID)
INCLUDE (DeficitID,DeficitAdd,DeficitDec)


IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Stores1'))
--DROP INDEX IX_Stores1 ON Stores
CREATE NONCLUSTERED INDEX IX_Stores1
ON Stores (n_StoreID,c_StoreName,n_ValuationType)



IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_Recipts4'))
--DROP INDEX IX_Recipts4 ON Recipts
CREATE NONCLUSTERED INDEX IX_Recipts4
ON dbo.Recipts (ReciptType)
INCLUDE (ReciptID,StoreID,ReciptNumber,ReciptDate,PersonID1,PersonID2,SecondType,ServiceValue,ReciptValue,TotalValue,AddDecValue,DocNo,DocDate,ReciptNote
,ParentReciptID,OperatorID,ModifyDate,ReciptState,UseUnitID,ExpireDate,ProjectID,BudgetID,AidNumber,AidDate,FirstUser,LastUser,ReciptStartDate,ReciptEndDate
,DebtControlActive,StoreID2,TruckNumber,MachineNo,MachineName,ArzTypeID,RialsEqual,UseOtherID,ReciptsRow,SellsMethod,SellsEmporium,MasirID,DeliveryID,PersonID2Bed
,RelatedID,ServerID,YearID,PersonID3,CostDownSave,DefaultDate,ParentCoReciptID,Transmittal,InsertDate,MachineInfo,InsertTime,EditTime,PrvYearID,UserRegistrationDoc
,DefaultDuration,CalcGiftItems,ReciptDateMiladi,MachineFullWeight,MachineWeight,PersonID4,TozinID)



IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_ReciptsParent'))
--DROP INDEX IX_ReciptsParent ON Recipts
CREATE NONCLUSTERED INDEX IX_ReciptsParent ON dbo.Recipts
(
	ReciptType ASC,
	ParentReciptID ASC,
	ServerID ASC,
	YearID ASC
)
GO

IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_UsersStore'))
--DROP INDEX IX_UsersStore ON UsersStore
CREATE NONCLUSTERED INDEX IX_UsersStore ON dbo.UsersStore
(
	n_UserID ASC,
	n_StoreID ASC,
	StoreType ASC
)
GO
IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_UsersCustomersGroups'))
--DROP INDEX IX_UsersCustomersGroups ON UsersCustomersGroups
CREATE NONCLUSTERED INDEX IX_UsersCustomersGroups ON UsersCustomersGroups
(
	UserID ASC,
	CustomerGrpID ASC
)
IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_ReciptsRegulates'))
--DROP INDEX IX_ReciptsRegulates ON ReciptsRegulates
CREATE NONCLUSTERED INDEX IX_ReciptsRegulates ON dbo.ReciptsRegulates
(
	ServerID ASC,
	RegRowId ASC,
	ReciptItemID ASC,
	ReciptID ASC
)


IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_ReciptItemSum'))
--DROP INDEX IX_ReciptItemSum ON ReciptsRegulates
CREATE NONCLUSTERED INDEX IX_ReciptItemSum
ON dbo.ReciptItemSum (price)
INCLUDE (yearid,serverid,reciptid)


IF  NOT EXISTS (select * from sysindexes WHERE     (name = N'IX_ReciptItems_StuffCode'))
CREATE NONCLUSTERED INDEX IX_ReciptItems_StuffCode
ON dbo.ReciptItems (StuffCode)
INCLUDE (ReciptID,InputEntity,OutputEntity,InputWeight,OutputWeight,ControlCode,TotalInputPrice,TotalOutputPrice,TotallSellPrice,AidNumber
             ,AidDate,ArzAmount,ServerID,YearID,UnitCommission)

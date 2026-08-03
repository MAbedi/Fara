ALTER TABLE StuffCoding ADD  CONSTRAINT DF_StuffCoding_BuyPrice  DEFAULT (0) FOR BuyPrice
GO

ALTER TABLE ReciptTypes2 ADD  CONSTRAINT DF_ReciptTypes2_ConstTopicCode_ArzBed  DEFAULT (0) FOR ConstTopicCode_ArzBed
GO
ALTER TABLE ReciptTypes2 ADD  CONSTRAINT DF_ReciptTypes2_ConstTopicCode_ArzBes  DEFAULT (0) FOR ConstTopicCode_ArzBes
GO
ALTER TABLE StuffCoding ADD  CONSTRAINT DF_StuffCoding_StandardRate  DEFAULT (0) FOR StandardRate
GO

ALTER TABLE StuffCoding ADD  CONSTRAINT DF_StuffCoding_SellPrice1  DEFAULT (0) FOR SellPrice1
GO

ALTER TABLE StuffCoding ADD  CONSTRAINT DF_StuffCoding_SellPrice2  DEFAULT (0) FOR SellPrice2
GO

ALTER TABLE StuffCoding ADD  CONSTRAINT DF_StuffCoding_SellPrice3  DEFAULT (0) FOR SellPrice3
GO

ALTER TABLE StuffCoding ADD  CONSTRAINT DF_StuffCoding_SellPrice4  DEFAULT (0) FOR SellPrice4
GO

ALTER TABLE StuffCoding ADD  CONSTRAINT DF_StuffCoding_acc_DetaiCode  DEFAULT (0) FOR acc_DetaiCode
GO

ALTER TABLE StuffCoding ADD  CONSTRAINT DF_StuffCoding_acc_CTopicCode  DEFAULT (0) FOR acc_CTopicCode
GO

ALTER TABLE StuffCoding ADD  CONSTRAINT DF_StuffCoding_OperatorID  DEFAULT (0) FOR OperatorID
GO

ALTER TABLE StuffCoding ADD  CONSTRAINT DF_StuffCoding_State  DEFAULT (0) FOR State
GO

ALTER TABLE StuffCoding ADD  CONSTRAINT DF_StuffCoding_Carton  DEFAULT ((1)) FOR Carton
GO

ALTER TABLE StuffCoding ADD  CONSTRAINT DF_StuffCoding_acc_CTopicCode2  DEFAULT (0) FOR acc_CTopicCode2
GO

ALTER TABLE StuffCoding ADD  CONSTRAINT DF_StuffCoding_UnitPriceUseKind  DEFAULT (0) FOR UnitPriceUseKind
GO

ALTER TABLE StuffCoding ADD  CONSTRAINT DF_StuffCoding_Control_orderPoint_Entity  DEFAULT (0) FOR Control_orderPoint_Entity
GO

ALTER TABLE StuffCoding ADD  CONSTRAINT DF_StuffCoding_OwnerShipKind  DEFAULT (0) FOR OwnerShipKind
GO

ALTER TABLE StuffCoding ADD  CONSTRAINT DF_StuffCoding_Acc_InComeTopicCode  DEFAULT (0) FOR Acc_InComeTopicCode
GO

ALTER TABLE StuffCoding ADD  CONSTRAINT DF_StuffCoding_Acc_BidTopicCode  DEFAULT (0) FOR Acc_BidTopicCode
GO

ALTER TABLE StuffCoding ADD  CONSTRAINT DF_StuffCoding_Acc_CommissionTopicCode  DEFAULT (0) FOR Acc_CommissionTopicCode
GO

ALTER TABLE StuffCoding ADD  CONSTRAINT DF_StuffCoding_Commission  DEFAULT (0) FOR Commission
GO

ALTER TABLE StuffCoding ADD  CONSTRAINT DF_StuffCoding_StuffpurePercent  DEFAULT (0) FOR StuffpurePercent
GO

ALTER TABLE StuffCoding ADD  CONSTRAINT DF_StuffCoding_StuffpublicPercent  DEFAULT (0) FOR StuffpublicPercent
GO

ALTER TABLE StuffCoding ADD  CONSTRAINT DF_StuffCoding_ChangeState  DEFAULT (0) FOR ChangeState
GO

ALTER TABLE ReciptItems ADD  CONSTRAINT DF_ReciptItems_StuffSize  DEFAULT ('') FOR StuffSize
GO

ALTER TABLE ReciptItems ADD  CONSTRAINT DF_ReciptItems_StuffDiameter  DEFAULT ('') FOR StuffDiameter
GO

ALTER TABLE ReciptItems ADD  CONSTRAINT DF_ReciptItems_StuffAlloy  DEFAULT ('') FOR StuffAlloy
GO

ALTER TABLE ReciptItems ADD  CONSTRAINT DF_ReciptItems_InputEntity  DEFAULT (0) FOR InputEntity
GO

ALTER TABLE ReciptItems ADD  CONSTRAINT DF_ReciptItems_OutputEntity  DEFAULT (0) FOR OutputEntity
GO

ALTER TABLE ReciptItems ADD  CONSTRAINT DF_ReciptItems_InputWeight  DEFAULT (0) FOR InputWeight
GO

ALTER TABLE ReciptItems ADD  CONSTRAINT DF_ReciptItems_OutputWeight  DEFAULT (0) FOR OutputWeight
GO

ALTER TABLE ReciptItems ADD  CONSTRAINT DF_ReciptItems_RequestedEntity  DEFAULT (0) FOR RequestedEntity
GO

ALTER TABLE ReciptItems ADD  CONSTRAINT DF_ReciptItems_RequestedWeight  DEFAULT (0) FOR RequestedWeight
GO

ALTER TABLE ReciptItems ADD  CONSTRAINT DF_ReciptItems_ControlCode  DEFAULT (0) FOR ControlCode
GO

ALTER TABLE ReciptItems ADD  CONSTRAINT DF_ReciptItems_StuffGrade  DEFAULT (1) FOR StuffGrade
GO

ALTER TABLE ReciptItems ADD  CONSTRAINT DF_ReciptItems_TotalInputPrice  DEFAULT (0) FOR TotalInputPrice
GO

ALTER TABLE ReciptItems ADD  CONSTRAINT DF_ReciptItems_TotalOutputPrice  DEFAULT (0) FOR TotalOutputPrice
GO

ALTER TABLE ReciptItems ADD  CONSTRAINT DF_ReciptItems_UnitSellPrice  DEFAULT (0) FOR UnitSellPrice
GO

ALTER TABLE ReciptItems ADD  CONSTRAINT DF_ReciptItems_TotallSellPrice  DEFAULT (0) FOR TotallSellPrice
GO

ALTER TABLE ReciptItems ADD  CONSTRAINT DF_ReciptItems_acc_TopicCode  DEFAULT (0) FOR acc_TopicCode
GO

ALTER TABLE ReciptItems ADD  CONSTRAINT DF_ReciptItems_acc_DetailCode  DEFAULT (0) FOR acc_DetailCode
GO

ALTER TABLE ReciptItems ADD  CONSTRAINT DF_ReciptItems_acc_CTopicCode  DEFAULT (0) FOR acc_CTopicCode
GO

ALTER TABLE ReciptItems ADD  CONSTRAINT DF_ReciptItems_Discount  DEFAULT (0) FOR Discount
GO

ALTER TABLE ReciptItems ADD  CONSTRAINT DF_ReciptItems_acc_CTopicCode1  DEFAULT (0) FOR acc_CTopicCode2
GO

ALTER TABLE Recipts CHECK CONSTRAINT FK_Recipts_UseOthers
GO

ALTER TABLE Recipts ADD  CONSTRAINT DF_Recipts_StoreID  DEFAULT (0) FOR StoreID
GO

ALTER TABLE Recipts ADD  CONSTRAINT DF_Recipts_ReciptNumber  DEFAULT (0) FOR ReciptNumber
GO

ALTER TABLE Recipts ADD  CONSTRAINT DF_Recipts_ReciptDate  DEFAULT ('') FOR ReciptDate
GO

ALTER TABLE Recipts ADD  CONSTRAINT DF_Recipts_PersonID1  DEFAULT (0) FOR PersonID1
GO

ALTER TABLE Recipts ADD  CONSTRAINT DF_Recipts_PersonID2  DEFAULT (0) FOR PersonID2
GO

ALTER TABLE Recipts ADD  CONSTRAINT DF_Recipts_SecondType  DEFAULT (0) FOR SecondType
GO

ALTER TABLE Recipts ADD  CONSTRAINT DF_Recipts_ServiceValue  DEFAULT (0) FOR ServiceValue
GO

ALTER TABLE Recipts ADD  CONSTRAINT DF_Recipts_ReciptValue  DEFAULT (0) FOR ReciptValue
GO

ALTER TABLE Recipts ADD  CONSTRAINT DF_Recipts_TotalValue  DEFAULT (0) FOR TotalValue
GO

ALTER TABLE Recipts ADD  CONSTRAINT DF_Recipts_AddDecValue  DEFAULT (0) FOR AddDecValue
GO

ALTER TABLE Recipts ADD  CONSTRAINT DF_Recipts_DocNo  DEFAULT (0) FOR DocNo
GO

ALTER TABLE Recipts ADD  CONSTRAINT DF_Recipts_DocDate  DEFAULT ('') FOR DocDate
GO

ALTER TABLE Recipts ADD  CONSTRAINT DF_Recipts_ReciptState  DEFAULT (0) FOR ReciptState
GO

ALTER TABLE Recipts ADD  CONSTRAINT DF_Recipts_ExpireDate  DEFAULT ('') FOR ExpireDate
GO

ALTER TABLE Recipts ADD  DEFAULT (0) FOR DebtControlActive
GO

ALTER TABLE Recipts ADD  DEFAULT (0) FOR StoreID2
GO

ALTER TABLE Recipts ADD  DEFAULT (1) FOR SellsMethod
GO

ALTER TABLE Recipts ADD  DEFAULT (1) FOR SellsEmporium
GO

ALTER TABLE Recipts ADD  DEFAULT (361) FOR DeliveryID
GO

ALTER TABLE Recipts ADD  DEFAULT (0) FOR PersonID2Bed
GO

ALTER TABLE Recipts ADD  DEFAULT (0) FOR RelatedID
GO

ALTER TABLE Recipts ADD  DEFAULT (0) FOR ServerID
GO

ALTER TABLE Recipts ADD  DEFAULT (0) FOR YearID
GO

ALTER TABLE Recipts ADD  DEFAULT (0) FOR PersonID3
GO

ALTER TABLE Recipts ADD  DEFAULT (0) FOR CostDownSave
GO

ALTER TABLE Recipts ADD  DEFAULT (0) FOR Transmittal
GO





/****** Object:  UserDefinedFunction [dbo].[Aid_MakeDocuments_Recipt]    Script Date: 29/03/1400 12:06:57 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER FUNCTION [dbo].[Aid_MakeDocuments_Recipt]  
				(
				@AllDocAble Tinyint = 0, @NumberFrom int = -9999999, @NumberTo int = 99999999 , 
				@DateFrom    char(10) = '0000/00/00', @DateTo    char(10) = '9999/99/99',
				@AidDateFrom char(10) = '0000/00/00', @AidDateTo char(10) = '9999/99/99',
				@StoreIDFrom   smallint = -999, @StoreIDTo smallint = 999 , @ItemTopicCode bigint = 0 ,
				@SecondTpFrom     int = 0, @SecondTpTo    int = 100, @CustomerGrpIDFrom int = 0, @CustomerGrpIDTo int = 999999 ,
				@ReciptStateFrom  int = 0, @ReciptStateTo int = 99 ,
                @CustID1Form  int = 0 ,  @CustID1To  int = 999999999 ,
				@CustID2Form  int = 0 ,  @CustID2To  int = 999999999 ,
				@CustID3Form  int = 0 ,  @CustID3To  int = 999999999 ,
				@SellsEmporiumFrom int = 0, @SellsEmporiumTo int = 999999999,
                @MakeDocKind int = 1     ,@ReciptsRowFrom int = 0, @ReciptsRowTo    int = 999999999,
				@ReciptTypeFrom int = 5  ,@ReciptTypeTo   int = 5, 
				@NotReciptNumber varchar(max), @NotCustID1 varchar(max), @addIDFilter varchar(max)
				)
RETURNS @retFindReports TABLE 
  (
	Part                varchar(10),
	IDs					varchar(max) ,
	ID					bigint ,
	ReciptItemID		int ,
	ReciptID			int ,
	StoreID				smallint ,
	StoreName			varchar(70) COLLATE DATABASE_DEFAULT ,
	ReciptNumber		int ,
	ReciptDate			char(10) COLLATE DATABASE_DEFAULT ,
	ReciptType			tinyint ,
	CustID				int ,
	CustName			varchar(160) COLLATE DATABASE_DEFAULT ,
	StuffCode			bigint ,
	c_StuffName			varchar(250) COLLATE DATABASE_DEFAULT ,
	BedType				tinyint ,
	ReciptCaption		varchar(170) COLLATE DATABASE_DEFAULT ,
	Entity				FLOAT ,
	Weight				float ,
	bed					money ,
	bes					money  ,
	BedBes				int  ,
	Falg				tinyint ,
	TopicCode			bigint ,
	DetailCode			int ,
	CTopicCode			int ,
	CTopicCode2			int ,
	CTopicCode3			int ,
	kind				int ,
	AidNumber			decimal(18, 4) ,
	AidDate				char(10) COLLATE DATABASE_DEFAULT ,
	IAidNumber			decimal(18, 4) NULL,
	IAidDate			char(10) COLLATE DATABASE_DEFAULT ,
	ControlCode			bigint ,
	ServerID			int ,
	YearID				int ,
	ItemNote			varchar(1000) COLLATE DATABASE_DEFAULT ,
	ReciptNote			varchar(1000) COLLATE DATABASE_DEFAULT ,
	UnitSellPrice		money ,
	MachineName			varchar(150)  COLLATE DATABASE_DEFAULT ,
	MachineNo			varchar(25)   COLLATE DATABASE_DEFAULT ,
	MachineInfo			varchar(150)  COLLATE DATABASE_DEFAULT ,
	TruckNumber			varchar(150)  COLLATE DATABASE_DEFAULT ,
	ArzAmount			float  ,
	reciptsrow			int  ,
	CustName2			varchar(160)  COLLATE DATABASE_DEFAULT ,
	UnitName			varchar(50)   COLLATE DATABASE_DEFAULT ,
	StuffDiameter		float ,
	PO					varchar(30)   COLLATE DATABASE_DEFAULT ,
	ArzTypeID			int NULL,
	UseUnitName			varchar(70)   COLLATE DATABASE_DEFAULT NULL,
	UseUnitNameM		varchar(70)   COLLATE DATABASE_DEFAULT NULL,
	ArzRate				money ,
	ArzName				varchar(50),
	RialsEqual			money,
    SellsEmporiumName	varchar(100),
	CustName3			varchar(160)  COLLATE DATABASE_DEFAULT 
  )
	AS BEGIN
	
	------- Part 1
	------------------------------------------------------------------------------------------------------------------------
	-----------------------------------------------taraf Bedehkar hesab -------------------Bed------------------------------
	------------------------------------------------------------------------------------------------------------------------
	
INSERT INTO @retFindReports

SELECT  'P1' as Part, '' AS IDs, R.ID, RI.ReciptitemID, RI.ReciptID, R.StoreID, S1.c_StoreName, R.ReciptNumber, R.ReciptDate,
		R.ReciptType, C1.CustID, C1.CustName, RI.StuffCode, SC.c_StuffName, RT.BedType,
		RT.ReciptCaption, RI.InputEntity + RI.OutputEntity AS Entity, RI.InputWeight + RI.OutputWeight AS Weight,
		Case when RT.Deficate_MakeDocKind = 0 then
				case when RT.DiscountActive > 0  then ISNULL(RI.TotallSellPrice,0)  
					else RI.TotalInputPrice + RI.TotalOutputPrice 
				end  
		 	 when RT.Deficate_MakeDocKind=1 then    
				case when RI.TotalInputPrice > 0 then RI.TotalStandardRate
				    else RI.TotalInputPrice + RI.TotalOutputPrice  
				end 
			 when RT.Deficate_MakeDocKind in (2,6) 
				then  
					RI.TotalInputPrice + RI.TotalOutputPrice  +
					case when RTA.CoInfoKind_5_bed  = 1 and RI.TotallSellPrice <> 0
						 then - (ISNULL(RI.DeficitValue,0) + ISNULL(RI.DeficitValue2,0) +DeficitValue4 باید بزنیم+ ISNULL(RI.DeficitValue3,0)) 
						 else 0 end +
					case when RTA.CoInfoKind_11_bed = 1 and RI.TotallSellPrice <> 0
						 then  -(ISNULL(RI.DeficitValue, 0) )  else 0 end +
			        case when RTA.CoInfoKind_12_bed = 1 and RI.TotallSellPrice <> 0
				         then  -(ISNULL(RI.DeficitValue2, 0) ) else 0 end +
					case when RTA.CoInfoKind_1_bes = 1 then ROUND(ISNULL(RI.Portage,0),0) else 0 end +
					case when RTA.CoInfoKind_2_bes = 1 then ISNULL(RI.UnitSellPrice2,0)   else 0 end -
					case when RTA.CoInfoKind_2_bed = 1 then ISNULL(RI.UnitSellPrice2,0)   else 0 end +
					case when RT.AccountKind4Deficits = 1 then 
						case when RTA.CoInfoKind_0_bes = 1 or RTA.CoInfoKind_15_bes = 1 or RTA.CoInfoKind_16_bes = 1 
							 then  ISNULL(RI.TaxValue,0) else 0 end -
						case when RTA.CoInfoKind_0_bed = 1 or RTA.CoInfoKind_15_bed = 1 or RTA.CoInfoKind_16_bed = 1 
							 then  ISNULL(RI.TaxValue,0) else 0 end 
					else 0  end +
					case when RTA.CoInfoKind_13_bed = 1 and RI.TotallSellPrice <> 0
						then -(ISNULL(RI.DeficitValue3,0)) else 0 
					end
			when RT.Deficate_MakeDocKind = 8 
				then  
					RI.TotalInputPrice + RI.TotalOutputPrice  +
					case when RTA.CoInfoKind_2_bes = 1 then ISNULL(UnitSellPrice2,0) else 0 end -
					case when RTA.CoInfoKind_2_bed = 1 then ISNULL(UnitSellPrice2,0) else 0 end +
					case when RT.AccountKind4Deficits = 1 then 
						case when RTA.CoInfoKind_0_bes =1 or RTA.CoInfoKind_15_bes = 1 or RTA.CoInfoKind_16_bes = 1 
							 then  ISNULL(TaxValue,0) else 0 end -
						case when RTA.CoInfoKind_0_bed =1 or RTA.CoInfoKind_15_bed = 1 or RTA.CoInfoKind_16_bed = 1 
							 then  ISNULL(TaxValue,0) else 0 end 
					else 0 end 
			when RT.Deficate_MakeDocKind = 4  
				then 
					RI.TotalInputPrice + RI.TotalOutputPrice   +
						case when RT.AccountKind4Deficits = 1 then  
							case when RTA.CoInfoKind_0_bes = 1 or RTA.CoInfoKind_15_bes = 1 or RTA.CoInfoKind_16_bes = 1 
								 then ISNULL(TaxValue,0) else 0 end -
							case when RTA.CoInfoKind_0_bed = 1 or RTA.CoInfoKind_15_bed = 1 or RTA.CoInfoKind_16_bed = 1 
								 then ISNULL(TaxValue,0) else 0 end 
							else 0 
						end +
						case when RTA.CoInfoKind_5_bed = 1 
							 then -(ISNULL(RI.DeficitValue,0) + ISNULL(RI.DeficitValue2,0) + ISNULL(RI.DeficitValue3,0)) 
							else 0 end +
						case when RTA.CoInfoKind_11_bed =1 
							 then  -(ISNULL(RI.DeficitValue, 0) )  else 0 end +
						case when RTA.CoInfoKind_12_bed =1 
							 then  -(ISNULL(RI.DeficitValue2, 0) ) else 0 end +												
						case when ( RTA.CoInfoKind_1_bes = 1 or RTA.CoInfoKind_1_bed  = 1 )
							 then ROUND(ISNULL(Portage,0),0) else 0 end +
						case when ( RTA.CoInfoKind_2_bes = 1 or RTA.CoInfoKind_2_bed  = 1 )
							 then ISNULL(UnitSellPrice2,0)   else 0 end +
						case when ( RTA.CoInfoKind_8_bes = 1 or RTA.CoInfoKind_8_bed  = 1 )
							 then  ISNULL(  round((RI.OutputEntity + RI.InputEntity) * RI.UnitCommission,0),0)  else 0 end 
		else 
			RI.TotalInputPrice + RI.TotalOutputPrice - 
				(ISNULL(RI.DeficitValue,0) + ISNULL(RI.DeficitValue2,0) + ISNULL(RI.DeficitValue3,0)) +
			case when RTA.CoInfoKind_13_bed = 1  then  -(ISNULL(RI.DeficitValue3,0)) else 0 end	
		end  AS bed, 0 AS bes, 1 AS BedBes, 
		case when ((TotallSellPrice = 0) and (RT.TemplateCode not in (0,5,1)) 
		and ((RT.VATActive <> 0 ) or (isnull(RT.VATActive,0) <> 0))
				and RT.EffectType in (4,5) ) then  1 else 0  end as Falg,
		case when ( RT.AccCodingShow = 4 and RI.acc_TopicCode > 0 ) then RI.acc_TopicCode else 
			case RT.DefaultTopic_Bed 
				when 0 then 0 
				when 1 then case SC.OwnerShipKind when 0 then S1.c_accTopicCode	else SC.Acc_BidTopicCode end 
				when 2 then SG.acc_IncomeTopicCode
				when 3 then SC.Acc_InComeTopicCode
				when 5 then  case RT.CustCodeUse4Bed  
								when 1 then case  when C1.acc_TopicCode > 0 then 
									case when isnull(PersonID2Bed,0) = 0 	then C1.acc_TopicCode else   C2.acc_TopicCode end
										 else CG1.acc_TopicCode end								 
								when 2 then case  when C2.acc_TopicCode  > 0 then C2.acc_TopicCode  else CG2.acc_TopicCode  end 
								when 3 then case  when CD1.acc_TopicCode > 0 then CD1.acc_TopicCode else CGD1.acc_TopicCode end
								when 4 then case  when C3.acc_TopicCode  > 0 then C3.acc_TopicCode  else CG3.acc_TopicCode  end 
								when 5 then case  when C4.acc_TopicCode  > 0 then C4.acc_TopicCode  else CG4.acc_TopicCode  end 
							 else -1 end 
				when 4 then  case RT.CustCodeUse4Bed 
								when 1 then CG1.acc_TopicCode  
								when 2 then CG2.acc_TopicCode  
								when 3 then CGD1.acc_TopicCode 
								when 4 then CG3.acc_TopicCode  
								when 5 then CG4.acc_TopicCode  
							 else -1 end 
				when 6 then 
					case LM.acc_TopicCode
						when -1 then case  when C1.acc_TopicCode > 0 then C1.acc_TopicCode else CG1.acc_TopicCode end 
						when -2 then case  when C2.acc_TopicCode > 0 then C2.acc_TopicCode else CG2.acc_TopicCode end 
						when -3 then case  when C3.acc_TopicCode > 0 then C3.acc_TopicCode else CG3.acc_TopicCode end 
					else LM.acc_TopicCode end 
				when 7 then  SPG.acc_IncomeTopicCode
				when 8 then  LPD.acc_TopicCode
				when 9 then  RT.ConstTopicCode_Bed
				when 10 then SG.acc_AFootInComingTopicCode
				when 11 then RI.acc_TopicCode
				when 12 then SG.acc_BidTopicCode
				when 13 then  case RT.UseUnitCase 
								when 1 then UM.acc_TopicCode 
								when 2 then UD.acc_TopicCode 
								when 3 then UD.acc_TopicCode
							 else UD.acc_TopicCode  end 
				when 28 then  case RT.UseOtherActive 
								when 1 then UOM.TopicCode 
								when 2 then UOD.TopicCode 
								when 3 then UOD.TopicCode
							 else UOD.TopicCode  end 
				when 14 then  
					case when RI.ProductCode <> 0 then SPG.acc_BidTopicCode 
					else 
						 case RT.CustCodeUse4Bed 
							when 1 then case  when C1.acc_TopicCode >0 then C1.acc_TopicCode else CG1.acc_TopicCode end 
							when 2 then case  when C2.acc_TopicCode >0 then C2.acc_TopicCode else CG2.acc_TopicCode end 
							when 3 then case  when CD1.acc_TopicCode>0 then CD1.acc_TopicCode else CGD1.acc_TopicCode end
							when 4 then case  when C3.acc_TopicCode >0 then C3.acc_TopicCode else CG3.acc_TopicCode end 
							when 5 then case  when C4.acc_TopicCode >0 then C4.acc_TopicCode else CG4.acc_TopicCode end 
						 else -1 end 
					end 
				when 15 then SPG.acc_AFootInComingTopicCode 
				when 16 then SPC.Acc_BidTopicCode
				when 24 then LD.acc_TopicCode
				when 17 then case SC.OwnerShipKind when 0 then S2.c_accTopicCode else SC.Acc_BidTopicCode end 
			else 0 end end  as TopicCode,
		case when  ( RT.AccCodingShow = 4 and RI.acc_DetailCode > 0 )then RI.acc_DetailCode else 
			case RT.DefaultDetail_Bed
				when 0 then  0 
				when 1 then  case SC.OwnerShipKind when 0 then S1.c_accDetailCode	else  SC.acc_DetaiCode end 
				when 2 then  SG.acc_DetailCode
				when 3 then  SC.acc_DetaiCode
				when 4 then  -1
				when 5 then  case RT.CustCodeUse4Bed 
								when 1 then case when isnull(PersonID2Bed,0) = 0 then C1.acc_DetailCode else  C2.acc_DetailCode end 
								when 2 then C2.acc_DetailCode 
								when 3 then CD1.acc_DetailCode 
								when 4 then C3.acc_DetailCode 
								when 5 then C4.acc_DetailCode 
							else -1 end 
				when 6 then 
					case  LM.acc_DetailCode
						when -1 then C1.acc_DetailCode 
						when -2 then C2.acc_DetailCode 
						when -3 then C3.acc_DetailCode 			
					else LM.acc_DetailCode end 
				when 7 then  SPG.acc_DetailCode
				when 8 then  LPD.acc_DetailCode
				when 9 then  -1
				when 10 then SG.acc_DetailCode
				when 11 then RI.acc_DetailCode
				when 12 then SG.acc_DetailCode
				when 13 then  case RT.UseUnitCase 
									when 1 then UM.acc_DetailCode 
									when 2 then UD.acc_DetailCode 
									when 3 then UD.acc_DetailCode
								else UD.acc_DetailCode  end 
				when 28 then  case RT.UseOtherActive 
									when 1 then UOM.DetailCode 
									when 2 then UOD.DetailCode 
									when 3 then UOD.DetailCode
								else UOD.DetailCode  end 
				when 14 then case when RI.ProductCode <> 0 then	SPG.acc_DetailCode	else SG.acc_DetailCode end 
				when 15 then SPG.acc_DetailCode
				when 16 then SPC.acc_DetaiCode
				when 17 then  case SC.OwnerShipKind when 0 then S2.c_accDetailCode else  SC.acc_DetaiCode end 
				when 18 then case when RI.acc_TopicCode > 0 then RI.acc_DetailCode else SG.acc_DetailCode end 
				when 24 then LD.acc_DetailCode
				when 26 then case when LM.acc_DetailCode <> 0 then LM.acc_DetailCode else C1.acc_DetailCode	end
				when 27 then case when SC.acc_DetaiCode=0 then SG.acc_DetailCode else  SC.acc_DetaiCode end 
		else 0 end 
		end as DetailCode ,
		case when ( RT.AccCodingShow = 4 and RI.acc_CTopicCode > 0 ) then RI.acc_CTopicCode else 
			case RT.DefaultCTopic_Bed
				when 0  then 0 
				when 1  then S1.c_accCTopicCode
				when 2  then SG.acc_CTopicCode
				when 3  then SC.acc_CTopicCode
				when 4  then  case RT.CustCodeUse4Bed 
								when 1 then CG1.acc_CTopicCode 
								when 2 then CG2.acc_CTopicCode 
								when 3 then CGD1.acc_CTopicCode 
								when 4 then CG3.acc_CTopicCode 
								when 5 then CG4.acc_CTopicCode 
							 else -1 end 
				when 5  then  case RT.CustCodeUse4Bed 
								when 1 then C1.acc_CTopicCode 
								when 2 then C2.acc_CTopicCode 
								when 3 then CD1.acc_CTopicCode 
								when 4 then C3.acc_CTopicCode
								when 5 then C4.acc_CTopicCode
							 else -1 end 
				when 6  then  LM.acc_CTopicCode
				when 7  then  SPG.acc_CTopicCode
				when 8  then  LPD.acc_CTopicCode
				when 9  then  -1
				when 10 then SG.acc_CTopicCode
				when 11 then RI.acc_CTopicCode
				when 12 then SG.acc_CTopicCode
				when 13 then  case RT.UseUnitCase 
								when 1 then UM.acc_CTopicCode 
								when 2 then UD.acc_CTopicCode 
								when 3 then UD.acc_CTopicCode
							 else UD.acc_CTopicCode  end 
				when 28 then  case RT.UseOtherActive 
								when 1 then UOM.CTopicCode 
								when 2 then UOD.CTopicCode 
								when 3 then UOD.CTopicCode
							 else UOD.CTopicCode  end 
				when 14 then SPG.acc_CTopicCode
				when 15 then SPG.acc_CTopicCode
				when 16 then  case when RI.ProductCode <> 0 then SPC.acc_CTopicCode	else 
								case RT.CustCodeUse4Bed 
									when 1 then C1.acc_CTopicCode 
									when 2 then C2.acc_CTopicCode 
									when 3 then CD1.acc_CTopicCode 
									when 4 then C3.acc_CTopicCode 
									when 5 then C4.acc_CTopicCode 
								else -1 end 
							end
				when 17 then S2.c_accCTopicCode
				when 18 then C3.acc_CTopicCode
				when 19 then  CD1.acc_CTopicCode 
				when 21 then C2.acc_CTopicCode
				when 22 then 
					case when RI.acc_TopicCode > 0 then RI.acc_CTopicCode 
					else 
						case RT.CustCodeUse4Bed 
							when 1 then C1.acc_CTopicCode 
							when 2 then C2.acc_CTopicCode 
							when 3 then CD1.acc_CTopicCode 
							when 4 then C3.acc_CTopicCode 
							when 5 then C4.acc_CTopicCode 
							else -1 
						end 
					end
				when 23 then SE.CTopicCode 
				when 25 then C4.acc_CTopicCode
			else 0 end  end as CTopicCode,
		case when ( RT.AccCodingShow = 4 and RI.acc_CTopicCode2 >0 )then RI.acc_CTopicCode2 else 		
			case RT.DefaultCTopic2_Bed
				when 0  then 0 
				when 1  then S1.c_accCTopicCode2
				when 2  then SG.acc_CTopicCode2
				when 3  then SC.acc_CTopicCode2
				when 4  then  case RT.CustCodeUse4Bed 
								when 1 then CG1.acc_CTopicCode2 
								when 2 then CG2.acc_CTopicCode2 
								when 3 then CGD1.acc_CTopicCode2 
								when 4 then CG3.acc_CTopicCode2 
								when 5 then CG4.acc_CTopicCode2 
							 else -1 end 
				when 5  then  case RT.CustCodeUse4Bed 
								when 1 then C1.acc_CTopicCode2 
								when 2 then C2.acc_CTopicCode2 
								when 3 then CD1.acc_CTopicCode2
								when 4 then C3.acc_CTopicCode2
								when 5 then C4.acc_CTopicCode2
							 else -1 end 
				when 6  then  LM.acc_CTopicCode2
				when 7  then  SPG.acc_CTopicCode2
				when 8  then  LPD.acc_CTopicCode2
				when 9  then  -1
				when 10 then SG.acc_CTopicCode2
				when 11 then RI.acc_CTopicCode2
				when 12 then SG.acc_CTopicCode2
				when 13 then  case RT.UseUnitCase 
								when 1 then UM.acc_CTopicCode2 
								when 2 then UD.acc_CTopicCode2 
								when 3 then UD.acc_CTopicCode2
							  else UD.acc_CTopicCode2  end 
				when 28 then  case RT.UseOtherActive 
								when 1 then UOM.CTopicCode2 
								when 2 then UOD.CTopicCode2 
								when 3 then UOD.CTopicCode2
							  else UOD.CTopicCode2  end 
				when 14 then SPG.acc_CTopicCode2
				when 15 then SPG.acc_CTopicCode2
				when 16 then case when RI.ProductCode <> 0 then SPC.acc_CTopicCode2
								else 
									case RT.CustCodeUse4Bed 
										when 1 then C1.acc_CTopicCode2 
										when 2 then C2.acc_CTopicCode2 
										when 3 then CD1.acc_CTopicCode2 
										when 4 then C3.acc_CTopicCode2 
										when 5 then C4.acc_CTopicCode2 
									 else -1 end 
								end 
				when 17 then S2.c_accCTopicCode2
				when 18 then C3.acc_CTopicCode2
				when 19 then CD1.acc_CTopicCode2
				when 20 then C1.acc_CTopicCode2
				when 21 then C2.acc_CTopicCode2
				when 24 then LD.acc_CTopicCode2
				when 25 then C4.acc_CTopicCode2
			else 0 end 
		end as CTopicCode2 ,
		case when  (RT.AccCodingShow = 4 and RI.acc_CTopicCode3 > 0) then RI.acc_CTopicCode3 else 		
			case RT.DefaultCTopic3_Bed
				when 0 then 0 
				when 1 then S1.CTopicCode3
				when 2 then SG.acc_CTopicCode3
				when 3 then SC.acc_CTopicCode3
				when 4 then  case RT.CustCodeUse4Bed 
								when 1 then CG1.acc_CTopicCode3 
								when 2 then CG2.acc_CTopicCode3 
								when 3 then CGD1.acc_CTopicCode3 
								when 4 then CG3.acc_CTopicCode3 
								when 5 then CG4.acc_CTopicCode3 
							 else -1 end 
				when 5 then  case RT.CustCodeUse4Bed 
								when 1 then C1.acc_CTopicCode3 
								when 2 then C2.acc_CTopicCode3 
								when 3 then CD1.acc_CTopicCode3
								when 4 then C3.acc_CTopicCode3
								when 5 then C4.acc_CTopicCode3
							 else -1 end 
				when 6 then  LM.acc_CTopicCode3
				when 7 then  SPG.acc_CTopicCode3
				when 8 then  LPD.acc_CTopicCode3
				when 9 then  -1
				when 10 then SG.acc_CTopicCode3
				when 11 then RI.acc_CTopicCode3
				when 12 then SG.acc_CTopicCode3
				when 13 then  case RT.UseUnitCase 
								when 1 then UM.acc_CTopicCode3
								when 2 then UD.acc_CTopicCode3 
								when 3 then UD.acc_CTopicCode3
							 else UD.acc_CTopicCode3  end 
				when 28 then  case RT.UseOtherActive 
								when 1 then UOM.CTopicCode3
								when 2 then UOD.CTopicCode3 
								when 3 then UOD.CTopicCode3
							 else UOD.CTopicCode3  end 
				when 14 then SPG.acc_CTopicCode3
				when 15 then SPG.acc_CTopicCode3
				when 16 then SPC.acc_CTopicCode3
				when 17 then S2.CTopicCode3
				when 18 then C3.acc_CTopicCode3
				when 19 then CD1.acc_CTopicCode3
				when 20 then C1.acc_CTopicCode3
				when 23 then SE.CTopicCode3										 
				when 21 then C2.acc_CTopicCode3
				when 25 then C4.acc_CTopicCode3
				else 0 end 
			end as CTopicCode3,
			1 as kind, R.AidNumber, R.AidDate, RI.AidNumber as IAidNumber, RI.AidDate as IAidDate, RI.ControlCode,
			R.ServerID, R.YearID, RI.ItemNote, R.ReciptNote, RI.UnitSellPrice, R.MachineName, R.MachineNo, R.MachineInfo,
			R.TruckNumber, ISNULL(RI.ArzAmount,0) AS ArzAmount, ISNULL(R.reciptsrow,0) as reciptsrow, C2.CustName AS CustName2,
			u.UnitName, RI.StuffDiameter, RI.PO, R.ArzTypeID, UD.UseUnitName, UM.UseUnitName as UseUnitNameM,
			RI.ArzRate, CU.CurrenciesName AS ArzName, R.RialsEqual, SE.SellsEmporiumName, C3.CustName as CustName3

FROM			Recipts        R 
	INNER JOIN  ReciptItems    RI   ON R.ReciptID = RI.ReciptID AND R.ServerID = RI.ServerID AND R.YearID = RI.YearID 
	INNER JOIN	SellsEmporiums SE   ON isnull(R.SellsEmporium,1) = SE.SellsEmporium 
	INNER JOIN  StuffCoding    SC   ON RI.StuffCode = SC.c_StuffCode 
	INNER JOIN  StuffGroups    SG   ON SC.GroupID = SG.GroupID 
	INNER JOIN  Units          U    ON SC.n_UnitCode = U.UnitCode 
	INNER JOIN  ReciptTypes    RT   ON R.ReciptType = RT.ReciptType 
	LEFT  JOIN	ReciptTypesAccCode_Co RTA ON RT.ReciptType = RTA.ReciptType 
	INNER JOIN  Stores         S1   ON R.StoreID  = S1.n_StoreID 
	LEFT  JOIN  Stores         S2   ON R.StoreID2 = S2.n_StoreID 
	INNER JOIN  Customers      C1   ON isnull(R.PersonID1,0) = C1.CustID
	INNER JOIN  CustomersGroup CG1  ON C1.CustomerGrpID = CG1.CustomerGrpID
	INNER JOIN  Customers      C2   ON isnull(R.PersonID2,0) = C2.CustID
	INNER JOIN  CustomersGroup CG2  ON C2.CustomerGrpID = CG2.CustomerGrpID
	INNER JOIN  Customers      C3   ON isnull(R.PersonID3,0) = C3.CustID
	INNER JOIN  CustomersGroup CG3  ON C3.CustomerGrpID = CG3.CustomerGrpID
	INNER JOIN  Customers      C4   ON isnull(R.PersonID4,0) = C4.CustID
	INNER JOIN  CustomersGroup CG4  ON C4.CustomerGrpID   = CG4.CustomerGrpID
	INNER JOIN  Customers      CD1  ON isnull(RI.PersonID1,0) = CD1.CustID
	INNER JOIN  CustomersGroup CGD1 ON CD1.CustomerGrpID = CGD1.CustomerGrpID
	LEFT  JOIN	UseUnits       UM   ON R.UseUnitID        = UM.UseUnitID 
	LEFT  JOIN  UseUnits       UD   ON RI.UseUnitID       = UD.UseUnitID 
	INNER JOIN	LookUps        LM   ON isnull(R.SecondType,0)       = LM.LookUpID 
	INNER JOIN	LookUps        LD   ON isnull(RI.SecondTypeItem,0)  = LD.LookUpID 
	INNER JOIN	LookUps        LPD  ON isnull(RI.ProductModel,0)    = LPD.LookUpID 
	LEFT  JOIN	UseOthers      UOM  ON R.UseOtherID       = UOM.UseOtherID 
	LEFT  JOIN	UseOthers      UOD  ON RI.UseOtherID_Item = UOD.UseOtherID
	INNER JOIN  StuffCoding    SPC  ON isnull(RI.ProductCode,0) = SPC.c_StuffCode 
	INNER JOIN  StuffGroups    SPG  ON SPC.GroupID        = SPG.GroupID 
	INNER JOIN  Currencies     CU   ON isnull(R.ArzTypeID,0)    = CU.CurrenciesID

WHERE   (R.ReciptType     BETWEEN @ReciptTypeFrom AND @ReciptTypeTo) 
	AND	(R.ReciptNumber   BETWEEN @NumberFrom     AND @NumberTo  )   
	AND	(R.ReciptState < ReciptStateSmallerThan) 
	AND	(R.ReciptState    BETWEEN @ReciptStateFrom    AND @ReciptStateTo  ) 
	AND	(C1.CustomerGrpID BETWEEN @CustomerGrpIDFrom  AND @CustomerGrpIDTo ) 
	AND	(LM.Code          BETWEEN @SecondTpFrom  AND @SecondTpTo ) 
	AND	(R.ReciptDate     BETWEEN @DateFrom  AND @DateTo ) 
	AND ((ISNULL(R.AidDate,'') ='') OR (R.AidDate ='/  /') OR (R.AidDate BETWEEN @AidDateFrom  AND @AidDateTo )) 
	AND	(ISNULL(R.PersonID1,0) BETWEEN @CustID1Form  AND @CustID1To ) 
	AND	(ISNULL(R.PersonID2,0) BETWEEN @CustID2Form  AND @CustID2To ) 
	AND	(ISNULL(R.PersonID3,0) BETWEEN @CustID3Form  AND @CustID3To ) 
	AND	(R.StoreID        BETWEEN @StoreIDFrom   AND @StoreIDTo ) 
	AND ((R.DocNo < 1) OR (@AllDocAble=1)) 
	AND	(SC.OwnerShipKind <> (CASE  RT.Amani_StuffActiveInDoc WHEN 1 THEN -1 ELSE 1 END )) 
	And	ISNULL( RI.acc_TopicCode ,0 ) >= @ItemTopicCode 
	AND	(SE.SellsEmporium BETWEEN @SellsEmporiumFrom AND @SellsEmporiumTo) 
	AND	(ISNULL(R.ReciptsRow,0 ) BETWEEN @ReciptsRowFrom AND @ReciptsRowTo) 
	AND	((RI.TotalInputPrice + RI.TotalOutputPrice) + RI.UnitCommission > 0)
	AND ((@NotReciptNumber = '-1') or (R.ReciptNumber NOT IN (SELECT part FROM dbo.SplitString(@NotReciptNumber,','))))
	AND ((@NotCustID1      = '-1') or (R.PersonID1    NOT IN (SELECT part FROM dbo.SplitString(@NotCustID1,','))))
	AND ((@addIDFilter     = '-1') or (R.ID               IN (SELECT part FROM dbo.SplitString(@addIDFilter,','))))
	AND ((RT.CheckParentReciptID = 0) OR (ISNULL( R.ParentReciptID,0) <> 0 ))
	AND ((CASE WHEN RT.FormStateDefault4Doc = 0 THEN R.ReciptState ELSE RT.FormStateDefault4Doc END) = R.ReciptState)

	------- Part 2
	------------------------------------------------------------------------------------------------------------------------
	-----------------------------------------------taraf bestankar hesab -------------------BES-----------------------------
	------------------------------------------------------------------------------------------------------------------------

INSERT INTO @retFindReports
SELECT  'P2' as Part, '' as IDs, R.ID, 
		case   @MakeDocKind  when 2 then 0 else RI.ReciptitemID end as  ReciptitemID,
		case   @MakeDocKind  when 2 then 0 else R.ReciptID      end as  ReciptID,
		R.StoreID, S1.c_StoreName, case @MakeDocKind  when 2 then 0 else R.ReciptNumber end as ReciptNumber,
		R.ReciptDate, R.ReciptType, C1.CustID, C1.CustName,
		case  when  RT.Deficate_MakeDocKind = 4 then  0 else  RI.StuffCode   end as StuffCode  ,
		case  when  RT.Deficate_MakeDocKind = 4 then '' else  SC.c_StuffName end as c_StuffName ,
		RT.BedType, RT.ReciptCaption,
		case  when RT.Deficate_MakeDocKind  = 4 then 0 else RI.InputEntity + RI.OutputEntity  end  AS Entity,
		case  when RT.Deficate_MakeDocKind  = 4 then 0 else RI.InputWeight + RI.OutputWeight  end  AS Weight,
		0 AS bed ,
		case when RT.Deficate_MakeDocKind = 0 then case when RT.DiscountActive > 0 then ISNULL(RI.TotallSellPrice,0) else RI.TotalInputPrice + RI.TotalOutputPrice end   
			 when RT.Deficate_MakeDocKind = 1 then      
				case when RI.TotalOutputPrice > 0 then  RI.TotalStandardRate 
					 else RI.TotalInputPrice + RI.TotalOutputPrice end 
			 when RT.Deficate_MakeDocKind in (2,6) then  
					RI.TotalInputPrice + RI.TotalOutputPrice +
				case when RT.AccountKind4Deficits = 2 then 
					case when RTA.CoInfoKind_0_bed = 1 or RTA.CoInfoKind_15_bed = 1 or RTA.CoInfoKind_16_bed = 1
						 then  ISNULL(TaxValue,0) else 0 end -		
					case when RTA.CoInfoKind_0_bes = 1 or RTA.CoInfoKind_15_bes = 1 or RTA.CoInfoKind_16_bes = 1 
						 then  ISNULL(TaxValue,0) else 0 end 
				else 0 end +
				case when RTA.CoInfoKind_5_bes  = 1 and RI.TotallSellPrice <> 0 then 
					- (ISNULL(RI.DeficitValue, 0) + RI.DeficitValue2 + RI.DeficitValue3) else 0 end +																				  
				case when RTA.CoInfoKind_11_bes = 1 and RI.TotallSellPrice <> 0 then 
					- (ISNULL(RI.DeficitValue, 0) ) else 0 end +
				case when RTA.CoInfoKind_12_bes = 1 and RI.TotallSellPrice <> 0 then 
					- (ISNULL(RI.DeficitValue2,0) ) else 0 end +											 
				case when RTA.CoInfoKind_1_bed =1 then ROUND(ISNULL(Portage,0),0) else 0 end + 	
				case when RT.AccountKind4Deficits = 2 then 
					case when RTA.CoInfoKind_2_bed =1 then ISNULL(UnitSellPrice2,0) else 0 end -
					case when RTA.CoInfoKind_2_bes =1 then ISNULL(UnitSellPrice2,0) else 0 end
				else 0 end 
			when RT.Deficate_MakeDocKind in (8) then  
				RI.TotalInputPrice + RI.TotalOutputPrice +
					case when RT.AccountKind4Deficits = 2 then 
						case when RTA.CoInfoKind_0_bed = 1 or RTA.CoInfoKind_15_bed = 1 or RTA.CoInfoKind_16_bed = 1
							 then  ISNULL(TaxValue,0) else 0 end -
						case when RTA.CoInfoKind_0_bes = 1 or RTA.CoInfoKind_15_bes = 1 or RTA.CoInfoKind_16_bes = 1 
							 then  ISNULL(TaxValue,0) else 0 end 
					else 0 end +
					case when RT.AccountKind4Deficits = 2 then 
						case when RTA.CoInfoKind_2_bed = 1 then ISNULL(UnitSellPrice2,0) else 0 end -
						case when RTA.CoInfoKind_2_bes = 1 then ISNULL(UnitSellPrice2,0) else 0 end
					else 0 end 
			WHEN RT.Deficate_MakeDocKind = 3 THEN  RI.TotallSellPrice 
		else RI.TotalInputPrice + RI.TotalOutputPrice end +
			case when RTA.CoInfoKind_13_bes = 1 and RI.TotallSellPrice <> 0 then 
				- (ISNULL(RI.DeficitValue3,0)) 
			else 0 end	
		AS  bes, 2 AS BedBes, 
		case when ((TotallSellPrice = 0) and (RT.TemplateCode not in (0,5,1))
				and ((RT.VATActive <> 0) or (isnull(RT.VATActive,0) <> 0))
				and RT.AccountKind4Deficits = 2 ) then  1 else 0  end as Falg,
		case when ( RT.AccCodingShow = 5 and RI.acc_TopicCode > 0 ) then RI.acc_TopicCode else 			
			case RT.DefaultTopic_Bes 
				when 0 then 0 
				when 1 then S1.c_accTopicCode
				when 2 then SG.acc_IncomeTopicCode
				when 3 then case SC.OwnerShipKind  when 0 then SC.Acc_InComeTopicCode else SC.Acc_BidTopicCode end 
				when 5 then  case RT.CustCodeUse4Bes 
								when 1 then case  when C1.acc_TopicCode  > 0 then C1.acc_TopicCode  else CG1.acc_TopicCode  end 
								when 2 then case  when C2.acc_TopicCode  > 0 then C2.acc_TopicCode  else CG2.acc_TopicCode  end 
								when 3 then case  when CD1.acc_TopicCode > 0 then CD1.acc_TopicCode else CGD1.acc_TopicCode end
								when 4 then case  when C3.acc_TopicCode  > 0 then C3.acc_TopicCode  else CG3.acc_TopicCode  end 
								when 5 then case  when C4.acc_TopicCode  > 0 then C4.acc_TopicCode  else CG4.acc_TopicCode  end 
							 else -1 end 
				when 4 then  case RT.CustCodeUse4Bes 
								when 1 then CG1.acc_TopicCode  
								when 2 then CG2.acc_TopicCode  
								when 3 then CGD1.acc_TopicCode 
								when 4 then CG3.acc_TopicCode  
								when 5 then CG4.acc_TopicCode  
							 else -1 end 
				when 5 then  -2
				when 6 then 
					case LM.acc_TopicCode 
						when -1 then case  when C1.acc_TopicCode > 0 then C1.acc_TopicCode else CG1.acc_TopicCode end 
						when -2 then case  when C2.acc_TopicCode > 0 then C2.acc_TopicCode else CG2.acc_TopicCode end 
						when -3 then case  when C3.acc_TopicCode > 0 then C3.acc_TopicCode else CG3.acc_TopicCode end 
					else LM.acc_TopicCode end 
				when 7 then  SPG.acc_IncomeTopicCode
				when 8 then  LPD.acc_TopicCode
				when 9 then  RT.ConstTopicCode_Bes
				when 10 then SG.acc_AFootInComingTopicCode
				when 11 then RI.acc_TopicCode
				when 12 then SG.acc_BidTopicCode
				when 13 then  case RT.UseUnitCase
								when 1 then UM.acc_TopicCode 
								when 2 then UD.acc_TopicCode 
								when 3 then UD.acc_TopicCode
							 else  UD.acc_TopicCode  end 
				when 28 then  case RT.UseOtherActive
								when 1 then UOM.TopicCode 
								when 2 then UOD.TopicCode 
								when 3 then UOD.TopicCode
							 else  UOD.TopicCode  end 
				when 14 then SPG.acc_BidTopicCode
				when 15 then SPG.acc_AFootInComingTopicCode
				when 16 then SC.Acc_BidTopicCode
				when 17 then S2.c_accTopicCode
				when 23 then SE.TopicCode							   
				when 24 then LD.acc_TopicCode
			else 0 end 
		end as TopicCode ,
		case when ( RT.AccCodingShow = 5 and RI.acc_DetailCode > 0 ) then RI.acc_DetailCode else 	
			case RT.DefaultDetail_Bes
				when 0 then  0 
				when 1 then  S1.c_accDetailCode
				when 2 then  SG.acc_DetailCode
				when 3 then  SC.acc_DetaiCode
				when 4 then  -1
				when 5 then  case RT.CustCodeUse4Bes
								when 1 then C1.acc_DetailCode 
								when 2 then C2.acc_DetailCode 
								when 3 then CD1.acc_DetailCode 
								when 4 then C3.acc_DetailCode 
								when 5 then C4.acc_DetailCode 
							 else -1 end 
				when 6 then
					case LM.acc_DetailCode
						when -1 then C1.acc_DetailCode 
						when -2 then C2.acc_DetailCode 
						when -3 then C3.acc_DetailCode 
					else  LM.acc_DetailCode end 
				when 7 then  SPG.acc_DetailCode
				when 8 then  LPD.acc_DetailCode
				when 9 then  -1
				when 10 then SG.acc_DetailCode
				when 11 then RI.acc_DetailCode
				when 12 then SG.acc_DetailCode
				when 13 then  case RT.UseUnitCase
								when 1 then UM.acc_DetailCode 
								when 2 then UD.acc_DetailCode 
								when 3 then UD.acc_DetailCode
							 else  UD.acc_DetailCode  end 
				when 28 then  case RT.UseOtherActive
								when 1 then UOM.DetailCode 
								when 2 then UOD.DetailCode 
								when 3 then UOD.DetailCode
							 else  UOD.DetailCode  end 
				when 14 then SPG.acc_DetailCode
				when 15 then SPG.acc_DetailCode
				when 16 then SPC.acc_DetaiCode
				when 17 then  S2.c_accDetailCode
				when 18 then case when RI.acc_TopicCode  > 0  then RI.acc_DetailCode else SG.acc_DetailCode end 
				when 24 then LD.acc_DetailCode
				when 26 then case when LM.acc_DetailCode <> 0 then LM.acc_DetailCode else C1.acc_DetailCode end
				when 27 then case when SC.acc_DetaiCode   = 0 then SG.acc_DetailCode else SC.acc_DetaiCode  end 
			else 0 end 
		end as DetailCode ,
		case when ( RT.AccCodingShow = 5 and RI.acc_CTopicCode > 0 )then RI.acc_CTopicCode else 	
			case RT.DefaultCTopic_Bes
				when 0 then 0 
				when 1 then S1.c_accCTopicCode
				when 2 then SG.acc_CTopicCode
				when 3 then SC.acc_CTopicCode
				when 4 then  case RT.CustCodeUse4Bes
								when 1 then CG1.acc_CTopicCode 
								when 2 then CG2.acc_CTopicCode 
								when 3 then CGD1.acc_CTopicCode 
								when 4 then CG3.acc_CTopicCode 
								when 5 then CG4.acc_CTopicCode 
							 else -1 end 
				when 5 then  case RT.CustCodeUse4Bes 
								when 1 then C1.acc_CTopicCode 
								when 2 then C2.acc_CTopicCode 
								when 3 then CD1.acc_CTopicCode 
								when 4 then C3.acc_CTopicCode 
								when 5 then C4.acc_CTopicCode 
							 else -1 end 
				when 6 then  LM.acc_CTopicCode
				when 7 then  SPG.acc_CTopicCode
				when 8 then  LPD.acc_CTopicCode
				when 9 then  -1
				when 10 then SG.acc_CTopicCode
				when 11 then RI.acc_CTopicCode
				when 12 then SG.acc_CTopicCode
				when 13 then  case RT.UseUnitCase
								when 1 then UM.acc_CTopicCode 
								when 2 then UD.acc_CTopicCode 
								when 3 then UD.acc_CTopicCode
							 else  UD.acc_CTopicCode  end 
				when 28 then  case RT.UseOtherActive
								when 1 then UOM.CTopicCode 
								when 2 then UOD.CTopicCode 
								when 3 then UOD.CTopicCode
							 else  UOD.CTopicCode  end 
				when 14 then SPG.acc_CTopicCode
				when 15 then SPG.acc_CTopicCode
				when 16 then SPC.acc_CTopicCode
				when 17 then S2.c_accCTopicCode
				when 18 then C3.acc_CTopicCode
				when 19 then  CD1.acc_CTopicCode 
				when 21 then C2.acc_CTopicCode
				when 23 then SE.CTopicCode 
				when 22 then 
					case when RI.acc_TopicCode > 0 then RI.acc_CTopicCode 
					else 
						case RT.CustCodeUse4Bed 
							when 1 then C1.acc_CTopicCode 
							when 2 then C2.acc_CTopicCode 
							when 3 then CD1.acc_CTopicCode 
							when 4 then C3.acc_CTopicCode 
							when 5 then C4.acc_CTopicCode 
						else -1 end 
					end 
				when 25 then C4.acc_CTopicCode
			else 0 end 
		end as CTopicCode,
		case when ( RT.AccCodingShow = 5 and RI.acc_CTopicCode2 > 0 ) then RI.acc_CTopicCode2 else 		
			case RT.DefaultCTopic2_Bes
				when 0 then 0 
				when 1 then S1.c_accCTopicCode2
				when 2 then SG.acc_CTopicCode2
				when 3 then SC.acc_CTopicCode2
				when 4 then  case RT.CustCodeUse4Bes
								when 1 then CG1.acc_CTopicCode2 
								when 2 then CG2.acc_CTopicCode2 
								when 3 then CGD1.acc_CTopicCode2 
								when 4 then CG3.acc_CTopicCode2 
								when 5 then CG4.acc_CTopicCode2 
							 else -1 end 
				when 5 then  case RT.CustCodeUse4Bes 
								when 1 then C1.acc_CTopicCode2 
								when 2 then C2.acc_CTopicCode2 
								when 3 then CD1.acc_CTopicCode2
								when 4 then C3.acc_CTopicCode2
								when 5 then C4.acc_CTopicCode2
							 else -1 end 
				when 6 then  LM.acc_CTopicCode2
				when 7 then  SPG.acc_CTopicCode2
				when 8 then  LPD.acc_CTopicCode2
				when 9 then  -1
				when 10 then SG.acc_CTopicCode2
				when 11 then RI.acc_CTopicCode2
				when 12 then SG.acc_CTopicCode2
				when 13 then  case RT.UseUnitCase
								when 1 then UM.acc_CTopicCode2 
								when 2 then UD.acc_CTopicCode2 
								when 3 then UD.acc_CTopicCode2
							 else  UD.acc_CTopicCode2  end 
				when 28 then  case RT.UseOtherActive
								when 1 then UOM.CTopicCode2 
								when 2 then UOD.CTopicCode2 
								when 3 then UOD.CTopicCode2
							 else  UOD.CTopicCode2  end 
				when 14 then SPG.acc_CTopicCode2
				when 15 then SPG.acc_CTopicCode2
				when 16 then SPC.acc_CTopicCode2
				when 17 then S2.c_accCTopicCode2
				when 18 then C3.acc_CTopicCode2
				when 19 then CD1.acc_CTopicCode2     
				when 20 then C1.acc_CTopicCode2
				when 21 then C2.acc_CTopicCode2
				when 24 then LD.acc_CTopicCode2
				when 25 then C4.acc_CTopicCode2
			else 0 end 
		end as CTopicCode2 ,
		case when ( RT.AccCodingShow = 5 and RI.acc_CTopicCode3 > 0 ) then RI.acc_CTopicCode3 else 		
				case RT.DefaultCTopic3_Bes
				when 0 then 0 
				when 1 then S1.CTopicCode3
				when 2 then SG.acc_CTopicCode3
				when 3 then SC.acc_CTopicCode3
				when 4 then  case RT.CustCodeUse4Bes
								when 1 then CG1.acc_CTopicCode3 
								when 2 then CG2.acc_CTopicCode3 
								when 3 then CGD1.acc_CTopicCode3 
								when 4 then CG3.acc_CTopicCode3 				
								when 5 then CG4.acc_CTopicCode3 				
							 else -1 end 
				when 5 then  case RT.CustCodeUse4Bes 
								when 1 then C1.acc_CTopicCode3 
								when 2 then C2.acc_CTopicCode3 
								when 3 then CD1.acc_CTopicCode3
								when 4 then C3.acc_CTopicCode3				
								when 5 then C4.acc_CTopicCode3				
							 else -1 end 
				when 6 then  LM.acc_CTopicCode3
				when 7 then  SPG.acc_CTopicCode3
				when 8 then  LPD.acc_CTopicCode3
				when 9 then  -1
				when 10 then SG.acc_CTopicCode3
				when 11 then RI.acc_CTopicCode3
				when 12 then SG.acc_CTopicCode3
				when 13 then  case RT.UseUnitCase
								when 1 then UM.acc_CTopicCode3
								when 2 then UD.acc_CTopicCode3 
								when 3 then UD.acc_CTopicCode3
							 else  UD.acc_CTopicCode3  end 
				when 28 then  case RT.UseOtherActive
								when 1 then UOM.CTopicCode3
								when 2 then UOD.CTopicCode3 
								when 3 then UOD.CTopicCode3
							 else  UOD.CTopicCode3  end 
				when 14 then SPG.acc_CTopicCode3
				when 15 then SPG.acc_CTopicCode3
				when 16 then SPC.acc_CTopicCode3
				when 17 then S2.CTopicCode3
				when 18 then C3.acc_CTopicCode3
				when 19 then CD1.acc_CTopicCode3										   
				when 21 then C2.acc_CTopicCode3
				when 23 then SE.CTopicCode3
				when 25 then C4.acc_CTopicCode3
			else 0 end 
		end as CTopicCode3,
		1 as kind, R.AidNumber, R.AidDate, RI.AidNumber as IAidNumber, RI.AidDate as IAidDate, RI.ControlCode,
		R.ServerID, R.YearID, RI.ItemNote, R.ReciptNote, RI.UnitSellPrice, R.MachineName, R.MachineNo, R.MachineInfo,
		R.TruckNumber, ISNULL(RI.ArzAmount,0) AS ArzAmount, ISNULL(R.reciptsrow,0) as reciptsrow, C2.CustName AS CustName2, 
		U.UnitName, RI.StuffDiameter, RI.PO, R.ArzTypeID, UD.UseUnitName, UM.UseUnitName as UseUnitNameM, RI.ArzRate, 
		CU.CurrenciesName AS ArzName, R.RialsEqual, SE.SellsEmporiumName, C3.CustName as CustName3
	
FROM			Recipts        R 
	INNER JOIN  ReciptItems    RI   ON R.ReciptID = RI.ReciptID AND R.ServerID = RI.ServerID AND R.YearID = RI.YearID 
	INNER JOIN	SellsEmporiums SE   ON isnull(R.SellsEmporium,1) = SE.SellsEmporium 
	INNER JOIN  StuffCoding    SC   ON RI.StuffCode = SC.c_StuffCode 
	INNER JOIN  StuffGroups    SG   ON SC.GroupID = SG.GroupID 
	INNER JOIN  Units          U    ON SC.n_UnitCode = U.UnitCode 
	INNER JOIN  ReciptTypes    RT   ON R.ReciptType = RT.ReciptType 
	LEFT  JOIN	ReciptTypesAccCode_Co RTA ON RT.ReciptType = RTA.ReciptType 
	INNER JOIN  Stores         S1   ON R.StoreID  = S1.n_StoreID 
	LEFT  JOIN  Stores         S2   ON R.StoreID2 = S2.n_StoreID 
	INNER JOIN  Customers      C1   ON isnull(R.PersonID1,0) = C1.CustID
	INNER JOIN  CustomersGroup CG1  ON C1.CustomerGrpID = CG1.CustomerGrpID
	INNER JOIN  Customers      C2   ON isnull(R.PersonID2,0) = C2.CustID
	INNER JOIN  CustomersGroup CG2  ON C2.CustomerGrpID = CG2.CustomerGrpID
	INNER JOIN  Customers      C3   ON isnull(R.PersonID3,0) = C3.CustID
	INNER JOIN  CustomersGroup CG3  ON C3.CustomerGrpID = CG3.CustomerGrpID
	INNER JOIN  Customers      C4   ON isnull(R.PersonID4,0) = C4.CustID
	INNER JOIN  CustomersGroup CG4  ON C4.CustomerGrpID   = CG4.CustomerGrpID
	INNER JOIN  Customers      CD1  ON isnull(RI.PersonID1,0) = CD1.CustID
	INNER JOIN  CustomersGroup CGD1 ON CD1.CustomerGrpID = CGD1.CustomerGrpID
	LEFT  JOIN	UseUnits       UM   ON R.UseUnitID        = UM.UseUnitID 
	LEFT  JOIN  UseUnits       UD   ON RI.UseUnitID       = UD.UseUnitID 
	INNER JOIN	LookUps        LM   ON isnull(R.SecondType,0)       = LM.LookUpID 
	INNER JOIN	LookUps        LD   ON isnull(RI.SecondTypeItem,0)  = LD.LookUpID 
	INNER JOIN	LookUps        LPD  ON isnull(RI.ProductModel,0)    = LPD.LookUpID 
	LEFT  JOIN	UseOthers      UOM  ON R.UseOtherID       = UOM.UseOtherID 
	LEFT  JOIN	UseOthers      UOD  ON RI.UseOtherID_Item = UOD.UseOtherID
	INNER JOIN  StuffCoding    SPC  ON isnull(RI.ProductCode,0) = SPC.c_StuffCode 
	INNER JOIN  StuffGroups    SPG  ON SPC.GroupID        = SPG.GroupID 
	INNER JOIN  Currencies     CU   ON isnull(R.ArzTypeID,0)    = CU.CurrenciesID

WHERE   (R.ReciptType BETWEEN @ReciptTypeFrom AND @ReciptTypeTo) 
	AND (R.ReciptNumber BETWEEN @NumberFrom  AND @NumberTo  ) 
	AND	(R.ReciptState < ReciptStateSmallerThan)
	AND	(R.ReciptState BETWEEN @ReciptStateFrom  AND @ReciptStateTo  ) 
	AND	(C1.CustomerGrpID BETWEEN @CustomerGrpIDFrom  AND @CustomerGrpIDTo )
	AND	(LM.Code BETWEEN @SecondTpFrom  AND @SecondTpTo )  
	AND	(R.ReciptDate BETWEEN @DateFrom  AND @DateTo ) 
	AND	((ISNULL(R.AidDate,'') ='')OR(R.AidDate ='/  /')OR (R.AidDate BETWEEN @AidDateFrom  AND @AidDateTo )) 
	AND	(ISNULL(R.PersonID1,0) BETWEEN @CustID1Form  AND @CustID1To ) 
	AND	(ISNULL(R.PersonID2,0) BETWEEN @CustID2Form  AND @CustID2To ) 
	AND	(ISNULL(R.PersonID3,0) BETWEEN @CustID3Form  AND @CustID3To ) 
	AND (R.StoreID BETWEEN @StoreIDFrom   AND @StoreIDTo )
	AND	((R.DocNo < 1) OR (@AllDocAble = 1))
	AND (SC.OwnerShipKind <> (Case  RT.Amani_StuffActiveInDoc when 1 then -1 else 1 end ))
	AND	ISNULL(RI.acc_TopicCode, 0) >= @ItemTopicCode
	AND	(SE.SellsEmporium BETWEEN @SellsEmporiumFrom AND @SellsEmporiumTo) 
	AND (ISNULL(R.ReciptsRow, 0) BETWEEN @ReciptsRowFrom AND @ReciptsRowTo)
	AND	((RI.TotalInputPrice + RI.TotalOutputPrice) + isnull(RI.UnitCommission,0) > 0) 
	AND  RT.DefaultTopic_Bes <> 0
	AND ((@NotReciptNumber = '-1') or (R.ReciptNumber NOT IN (SELECT part FROM dbo.SplitString(@NotReciptNumber,','))))
	AND ((@NotCustID1      = '-1') or (R.PersonID1    NOT IN (SELECT part FROM dbo.SplitString(@NotCustID1,','))))
	AND ((@addIDFilter     = '-1') or (R.ID               IN (SELECT part FROM dbo.SplitString(@addIDFilter,','))))
	AND ((RT.CheckParentReciptID = 0) OR (ISNULL( R.ParentReciptID,0) <> 0 ))
	AND ((CASE WHEN RT.FormStateDefault4Doc = 0 THEN R.ReciptState ELSE RT.FormStateDefault4Doc END) = R.ReciptState)
	
	------- Part 3
	------------------------------------------------------------------------------------------------------------------------
	-----------------------------------------------taraf kosorat va ezafat -----------------BES-----------------------------
	------------------------------------------------------------------------------------------------------------------------
	
INSERT INTO @retFindReports

SELECT	'P3' as Part, '' AS IDs, R.ID, 0 AS ReciptitemID, R.ReciptID, R.StoreID, S1.c_StoreName, R.ReciptNumber, R.ReciptDate, R.ReciptType,
		C1.CustID, C1.CustName, 0 AS StuffCode, '' AS c_StuffName, RT.BedType, RT.ReciptCaption, 0.0 AS Entity, 0.0 AS Weight,
		CASE RT.AccountKind4Deficits WHEN 1 THEN (FR.DeficitAdd - FR.DeficitDec) ELSE 0 END AS bed,
		CASE RT.AccountKind4Deficits WHEN 2 THEN (FR.DeficitAdd - FR.DeficitDec) ELSE 0 END AS bes,
		RT.AccountKind4Deficits AS bedbes, 0 AS Falg,
		CASE WHEN	RT.Deficate_MakeDocKind in (4,5) AND R.PersonID2 > 0 THEN 		
				CASE WHEN C2.acc_TopicCode > 0 THEN C2.acc_TopicCode ELSE CG2.acc_TopicCode END 
			WHEN	RT.Deficate_MakeDocKind = 9 THEN 
				case RT.DefaultTopic_Bed
					when 0  then 0 
					when 1  then S1.c_accTopicCode
					when 4  then case RT.CustCodeUse4Bed
									when 1 then CG1.acc_TopicCode 
									when 2 then CG2.acc_TopicCode 
								 else -1 end 
					when 5  then case RT.CustCodeUse4Bed 
									when 1 then C1.acc_TopicCode 
									when 2 then C2.acc_TopicCode 
								 else -1 end 
					when 6  then LM.acc_TopicCode
					when 8  then LM.acc_TopicCode
					when 9  then -1
					when 13 then RT.UseUnitCase
					when 21 then C2.acc_TopicCode
					when 23 then SE.TopicCode 
					when 22 then case RT.CustCodeUse4Bed 
									when 1 then C1.acc_TopicCode 
									when 2 then C2.acc_TopicCode 
								else -1 end 
					when 25 then 25
					when 28 then RT.UseOtherActive														
				else 0 end
		ELSE 
			CASE RT.AccountKind4Deficits	
				WHEN 3 THEN S1.c_accTopicCode 
			ELSE 
				CASE (CASE RT.AccountKind4Deficits WHEN 1 THEN RT.DefaultTopic_Bed ELSE RT.DefaultTopic_Bes END) 
					WHEN 0  THEN 0 
					WHEN 1  THEN S1.c_accTopicCode 
					WHEN 4  THEN CASE (CASE RT.AccountKind4Deficits WHEN 1 THEN RT.CustCodeUse4Bed ELSE RT.CustCodeUse4Bes END) 
										WHEN 1 THEN CG1.acc_TopicCode
										WHEN 2 THEN CG2.acc_TopicCode 
								 ELSE -2 END 
					WHEN 5 THEN CASE (CASE RT.AccountKind4Deficits WHEN 1 THEN RT.CustCodeUse4Bed ELSE RT.CustCodeUse4Bes END) 
										WHEN 1 THEN CASE WHEN C1.acc_TopicCode > 0 THEN C1.acc_TopicCode ELSE CG1.acc_TopicCode END 
										WHEN 2 THEN CASE WHEN C2.acc_TopicCode > 0 THEN C2.acc_TopicCode ELSE CG2.acc_TopicCode END 
								 ELSE -1 END 
					WHEN 6 THEN LM.acc_TopicCode 
					WHEN 9 THEN CASE RT.AccountKind4Deficits WHEN 1 THEN RT.ConstTopicCode_Bed ELSE RT.ConstTopicCode_Bes END 
					WHEN 10 THEN CG1.acc_TopicCode 
				ELSE 0 END 
			END 
		END AS TopicCode,
		CASE (CASE RT.AccountKind4Deficits WHEN 1 THEN RT.DefaultDetail_Bed ELSE RT.DefaultDetail_Bes END) 
			WHEN 0 THEN 0 
			WHEN 1 THEN S1.c_accDetailCode 
			WHEN 5 THEN CASE (CASE RT.AccountKind4Deficits WHEN 1 THEN RT.CustCodeUse4Bed ELSE RT.CustCodeUse4Bes END) 
							WHEN 1 THEN C1.acc_DetailCode 
							WHEN 2 THEN C2.acc_DetailCode 
							WHEN 3 THEN -1 
						ELSE -1 END 
			WHEN 6 THEN LM.acc_DetailCode 
	    ELSE 		
			CASE 	WHEN RT.Deficate_MakeDocKind = 4 THEN C1.acc_DetailCode 
					WHEN RT.Deficate_MakeDocKind = 9 THEN 
						case RT.DefaultDetail_Bed
							when 0  then 0 
							when 1  then S1.c_accDetailCode
							when 5  then  case RT.CustCodeUse4Bed 
											when 1 then C1.acc_DetailCode 
											when 2 then C2.acc_DetailCode 
										else -1 end 
							when 6  then  LM.acc_DetailCode
							when 8  then  LM.acc_DetailCode
							when 9  then  -1
							when 13 then   RT.UseUnitCase
							when 21 then C2.acc_DetailCode
							when 23 then SE.CTopicCode 
							when 22 then case RT.CustCodeUse4Bed 
												when 1 then C1.acc_DetailCode 
												when 2 then C2.acc_DetailCode 
											else -1 end 
							when 25 then 25
							when 28 then  RT.UseOtherActive														
						else 0 end
			ELSE 0 END  
		END AS DetailCode,
		CASE (CASE RT.AccountKind4Deficits WHEN 1 THEN RT.DefaultCTopic_Bed ELSE RT.DefaultCTopic_Bes END) 
				WHEN 0 THEN 0 
				WHEN 1 THEN S1.c_accCTopicCode 
				WHEN 4 THEN CASE (CASE RT.AccountKind4Deficits WHEN 1 THEN RT.CustCodeUse4Bed ELSE RT.CustCodeUse4Bes END) 
								WHEN 1 THEN CG1.acc_CTopicCode 
								WHEN 2 THEN CG2.acc_CTopicCode 
								WHEN 3 THEN -1 
							ELSE - 1 END 
				WHEN 5 THEN CASE (CASE RT.AccountKind4Deficits WHEN 1 THEN RT.CustCodeUse4Bed ELSE RT.CustCodeUse4Bes END) 
								WHEN 1 THEN C1.acc_CTopicCode 
								WHEN 2 THEN C2.acc_CTopicCode 
								WHEN 3 THEN -1 
							ELSE - 1 END 
				WHEN 6  THEN LM.acc_CTopicCode 
				when 21 then C2.acc_CTopicCode
				WHEN 23 THEN SE.CTopicCode 
		ELSE
			CASE	WHEN	RT.Deficate_MakeDocKind = 9 THEN 
						case RT.DefaultCTopic_Bed
							when 0  then 0 
							when 1  then S1.c_accCTopicCode
							when 4  then case RT.CustCodeUse4Bed
											when 1 then CG1.acc_CTopicCode 
											when 2 then CG2.acc_CTopicCode 
										else -1 end 
							when 5  then case RT.CustCodeUse4Bed 
											when 1 then C1.acc_CTopicCode 
											when 2 then C2.acc_CTopicCode 
										else -1 end 
							when 6  then  LM.acc_CTopicCode
							when 8  then  LM.acc_CTopicCode
							when 9  then  -1
							when 13 then   RT.UseUnitCase
							when 21 then C2.acc_CTopicCode
							when 23 then SE.CTopicCode 
							when 22 then case RT.CustCodeUse4Bed 
											when 1 then C1.acc_CTopicCode 
											when 2 then C2.acc_CTopicCode 
										  else -1 	end 
							when 25 then 25
							when 28 then  RT.UseOtherActive														
						else 0 end
			else 0 end
		END AS CTopicCode,
		CASE (CASE RT.AccountKind4Deficits WHEN 1 THEN RT.DefaultCTopic2_Bed ELSE RT.DefaultCTopic2_Bes END) 
				WHEN 0 THEN 0 
				WHEN 1 THEN S1.c_accCTopicCode2
				WHEN 4 THEN CASE (CASE RT.AccountKind4Deficits WHEN 1 THEN RT.CustCodeUse4Bed ELSE RT.CustCodeUse4Bes END) 
								WHEN 1 THEN CG1.acc_CTopicCode2 
								WHEN 2 THEN CG2.acc_CTopicCode2 
								WHEN 3 THEN - 1 
							ELSE - 1 END 
				WHEN 5 THEN CASE (CASE RT.AccountKind4Deficits WHEN 1 THEN RT.CustCodeUse4Bed ELSE RT.CustCodeUse4Bes END) 
								WHEN 1 THEN C1.acc_CTopicCode2 
								WHEN 2 THEN C2.acc_CTopicCode2 
								WHEN 3 THEN -1 
								WHEN 5 THEN 100 
							ELSE -1 END 
				WHEN 6 THEN LM.acc_CTopicCode2 
				WHEN 28 THEN UOM.CTopicCode2
		ELSE 0 END AS CTopicCode2,
		CASE (CASE RT.AccountKind4Deficits WHEN 1 THEN RT.DefaultCTopic3_Bed ELSE RT.DefaultCTopic3_Bes END) 
				WHEN 0  THEN 0 
				WHEN 1  THEN S1.CTopicCode3 
				WHEN 4  THEN CASE (CASE RT.AccountKind4Deficits WHEN 1 THEN RT.CustCodeUse4Bed ELSE RT.CustCodeUse4Bes END) 
								WHEN 1 THEN CG1.acc_CTopicCode3 
								WHEN 2 THEN CG2.acc_CTopicCode3 
								WHEN 3 THEN -1 
						ELSE -1 END 
				WHEN 5  THEN CASE (CASE RT.AccountKind4Deficits WHEN 1 THEN RT.CustCodeUse4Bed ELSE RT.CustCodeUse4Bes END) 
								WHEN 1 THEN C1.acc_CTopicCode3 
								WHEN 2 THEN C2.acc_CTopicCode3 
								WHEN 3 THEN -1 
						ELSE -1 END 
				WHEN 6  THEN LM.acc_CTopicCode3 
				WHEN 23 THEN SE.CTopicCode3 
		ELSE 0 END AS CTopicCode3,
		1 AS kind, R.AidNumber, R.AidDate, 0 AS IAidNumber, '' AS IAidDate, 0 AS ControlCode, R.ServerID, R.YearID,
		'' AS ItemNote, R.ReciptNote, 0 AS UnitSellPrice, R.MachineName, R.MachineNo, R.MachineInfo, R.TruckNumber,
		FR.ArzAmount, ISNULL(R.ReciptsRow, 0) AS ReciptsRow, C2.CustName AS CustName2, '' AS UnitName, 0.0 AS StuffDiameter,
		R.PO, R.ArzTypeID, '' as UseUnitName, UM.UseUnitName as UseUnitNameM, RSM.ArzRate, CU.CurrenciesName AS ArzName,
		R.RialsEqual, SE.SellsEmporiumName, C3.CustName as CustName3

FROM			Recipts         R    ---
	INNER JOIN  ReciptTypes     RT   ON R.ReciptType = RT.ReciptType 
	INNER JOIN  Stores          S1   ON R.StoreID  = S1.n_StoreID 
	INNER JOIN  Customers       C1   ON isnull(R.PersonID1,0) = C1.CustID
	INNER JOIN  CustomersGroup  CG1  ON C1.CustomerGrpID = CG1.CustomerGrpID
	INNER JOIN  Customers       C2   ON isnull(R.PersonID2,0) = C2.CustID
	INNER JOIN  CustomersGroup  CG2  ON C2.CustomerGrpID = CG2.CustomerGrpID
	INNER JOIN  Customers       C3   ON isnull(R.PersonID3,0) = C3.CustID
	INNER JOIN  CustomersGroup  CG3  ON C3.CustomerGrpID = CG3.CustomerGrpID
	INNER JOIN  Customers       C4   ON isnull(R.PersonID4,0) = C4.CustID
	INNER JOIN  CustomersGroup  CG4  ON C4.CustomerGrpID   = CG4.CustomerGrpID
	INNER JOIN  AllDeficits_ForReciptsdoc FR   ON FR.ReciptID = R.ReciptID AND FR.ServerID = R.ServerID AND FR.YearID = R.YearID
	INNER JOIN	SellsEmporiums  SE   ON isnull(R.SellsEmporium,1) = SE.SellsEmporium 
	LEFT  JOIN	UseUnits        UM   ON R.UseUnitID             = UM.UseUnitID 
	INNER JOIN	LookUps         LM   ON isnull(R.SecondType,0)  = LM.LookUpID 
	LEFT  JOIN	UseOthers       UOM  ON R.UseOtherID       = UOM.UseOtherID
	INNER JOIN  Currencies      CU   ON isnull(R.ArzTypeID,0)    = CU.CurrenciesID
	INNER JOIN  ReciptItemSum   RSM  ON R.ReciptID = RSM.ReciptID AND R.ServerID = RSM.ServerID AND R.YearID = RSM.YearID
					
WHERE   (R.ReciptType   BETWEEN @ReciptTypeFrom AND @ReciptTypeTo) --
	AND	(R.ReciptNumber BETWEEN @NumberFrom     AND @NumberTo  )   --
	AND	(R.ReciptState  BETWEEN @ReciptStateFrom  AND @ReciptStateTo  ) --
	AND	(C1.CustomerGrpID BETWEEN @CustomerGrpIDFrom  AND @CustomerGrpIDTo ) --
	AND	(LM.Code BETWEEN @SecondTpFrom  AND @SecondTpTo ) --
	AND	(R.ReciptDate BETWEEN @DateFrom  AND @DateTo ) --
	AND ((ISNULL(R.AidDate,'') ='') OR (R.AidDate ='/  /') OR (R.AidDate BETWEEN @AidDateFrom  AND @AidDateTo )) --
	AND	(ISNULL(R.PersonID1,0) BETWEEN @CustID1Form  AND @CustID1To ) --
	AND	(ISNULL(R.PersonID2,0) BETWEEN @CustID2Form  AND @CustID2To ) --
	AND	(ISNULL(R.PersonID3,0) BETWEEN @CustID3Form  AND @CustID3To ) --
	AND	(R.StoreID BETWEEN @StoreIDFrom   AND @StoreIDTo ) ---
	AND ((R.DocNo < 1) OR (@AllDocAble=1)) --
	AND	(SE.SellsEmporium BETWEEN @SellsEmporiumFrom AND @SellsEmporiumTo) 
	AND	(ISNULL( R.ReciptsRow,0 ) BETWEEN @ReciptsRowFrom AND @ReciptsRowTo) --
	AND ((@NotReciptNumber = '-1') or (R.ReciptNumber NOT IN (SELECT part FROM dbo.SplitString(@NotReciptNumber,','))))
	AND ((@NotCustID1      = '-1') or (R.PersonID1    NOT IN (SELECT part FROM dbo.SplitString(@NotCustID1,','))))
	AND ((@addIDFilter     = '-1') or (R.ID               IN (SELECT part FROM dbo.SplitString(@addIDFilter,','))))
	AND ((RT.CheckParentReciptID = 0) OR (ISNULL( R.ParentReciptID,0) <> 0 ))--
	AND ((CASE WHEN RT.FormStateDefault4Doc = 0 THEN R.ReciptState ELSE RT.FormStateDefault4Doc END) = R.ReciptState)	
	AND (R.ReciptState < 3)	
	AND (RT.AccountKind4Deficits IN (1, 2))
	AND (RSM.price > 0)	

	------- Part 4
	------------------------------------------------------------------------------------------------------------------------
	-----------------------------------------------taraf kosorat va ezafat -----------------BED-----------------------------
	------------------------------------------------------------------------------------------------------------------------
	
INSERT INTO @retFindReports

SELECT  'P4' as Part, '' AS IDs,
		CASE @MakeDocKind WHEN 2 THEN 0 ELSE R.ID       END AS ID, 0 AS ReciptitemID,
		CASE @MakeDocKind WHEN 2 THEN 0 ELSE R.ReciptID END AS ReciptID,
		R.StoreID, S1.c_StoreName, CASE @MakeDocKind WHEN 2 THEN 0 ELSE R.ReciptNumber END AS ReciptNumber,
		R.ReciptDate, R.ReciptType, 0 AS CustID, '' AS CustName, 0 AS StuffCode, '' AS c_StuffName, RT.BedType,
		D.DeficitName + ' ' + RT.ReciptCaption AS ReciptCaption,
		0.0 AS Entity, 0.0 AS Weight,
		CASE RT.AccountKind4Deficits WHEN 1 THEN FR.DeficitDec WHEN 2 THEN FR.DeficitAdd WHEN 3 THEN FR.DeficitDec ELSE 0 END AS bed,
		CASE RT.AccountKind4Deficits WHEN 2 THEN FR.DeficitDec WHEN 1 THEN FR.DeficitAdd WHEN 3 THEN FR.DeficitAdd ELSE 0 END AS bes,
		CASE RT.AccountKind4Deficits WHEN 2 THEN 1 WHEN 1 THEN 2 WHEN 3 THEN 2 ELSE 0 END AS Bedbes, 0 AS Falg,
		CASE WHEN (RT.Settings &  16384 <> 0) THEN FR.TopicCode 
			ELSE
				CASE	WHEN RT.Deficate_MakeDocKind = 0        THEN D.acc_TopicCode 
						WHEN RT.Deficate_MakeDocKind IN (2,3,8) THEN D.acc_TopicCode --END 
						WHEN RT.Deficate_MakeDocKind = 4 		
							THEN	CASE WHEN C2.acc_TopicCode > 0 THEN C2.acc_TopicCode 
									ELSE CASE WHEN S1.c_accTopicCode <> 0 THEN S1.c_accTopicCode ELSE D.acc_TopicCode END  
									END						
						WHEN RT.Deficate_MakeDocKind = 5 
							THEN CASE WHEN  S1.c_accTopicCode <> 0 THEN S1.c_accTopicCode ELSE D.acc_TopicCode END 
						WHEN RT.Deficate_MakeDocKind = 6 THEN D.acc_TopicCode 
						WHEN RT.Deficate_MakeDocKind = 9 THEN 
								case RT.DefaultTopic_Bes
										when 0  then 0 
										when 1  then S1.c_accTopicCode
										when 4  then  case RT.CustCodeUse4Bes
														when 1 then CG1.acc_TopicCode 
														when 2 then CG2.acc_TopicCode 
													else -1 end 
										when 5  then  case RT.CustCodeUse4Bes 
														when 1 then C1.acc_TopicCode 
														when 2 then C2.acc_TopicCode 
													 else -1 end 
										when 6  then  LM.acc_TopicCode
										when 8  then  LM.acc_TopicCode
										when 9  then  -1
										when 13 then RT.UseUnitCase
										when 21 then C2.acc_TopicCode
										when 23 then SE.TopicCode 
										when 22 then	case RT.CustCodeUse4Bed 
															when 1 then C1.acc_TopicCode 
															when 2 then C2.acc_TopicCode 
														else -1 end 
										when 25 then 25
										when 28 then  RT.UseOtherActive														
								else 0 end
				ELSE 0 END 
		END AS acc_TopicCode,
		CASE WHEN (RT.Settings &  16384 <> 0) 	THEN FR.DetailCode ELSE
				CASE  WHEN RT.Deficate_MakeDocKind = 4 THEN C1.acc_DetailCode 
				   	  WHEN RT.Deficate_MakeDocKind = 9 THEN 
							case RT.DefaultDetail_Bes
									when 0 then 0 
									when 1 then S1.c_accDetailCode
									when 5 then  case RT.CustCodeUse4Bes 
													when 1 then C1.acc_DetailCode 
													when 2 then C2.acc_DetailCode 
												else -1 end 
									when 6 then  LM.acc_DetailCode
									when 8 then  LM.acc_DetailCode
									when 9 then  -1
									when 13 then   RT.UseUnitCase
									when 21 then C2.acc_DetailCode
									when 23 then SE.CTopicCode 
									when 22 then 
												case RT.CustCodeUse4Bed 
													when 1 then C1.acc_DetailCode 
													when 2 then C2.acc_DetailCode 
												else -1 end 
									when 25 then 25
									when 28 then  RT.UseOtherActive														
							else 0 end

				ELSE CASE WHEN D.acc_DetailCode = -6 THEN LM.acc_DetailCode 
						  WHEN D.acc_DetailCode = -1 THEN C1.acc_DetailCode 
				     ELSE D.acc_DetailCode END
        END  end  AS acc_DetailCode,
		CASE WHEN (RT.Settings & 16384 <> 0) THEN FR.CTopicCode ELSE
				CASE	WHEN RT.Deficate_MakeDocKind = 0      THEN D.acc_CTopicCode 
						WHEN RT.Deficate_MakeDocKind IN (2,8) THEN 
								CASE WHEN S1.c_accCTopicCode <> 0 THEN S1.c_accCTopicCode  ELSE D.acc_CTopicCode END 
						WHEN RT.Deficate_MakeDocKind = 4 THEN  
								CASE WHEN C2.acc_CTopicCode > 0 THEN C2.acc_CTopicCode 
								ELSE CASE WHEN S1.c_accCTopicCode <> 0 
								    		THEN S1.c_accCTopicCode 
									  ELSE D.acc_CTopicCode END  
								END						
						WHEN RT.Deficate_MakeDocKind = 5 THEN 
								CASE WHEN S1.c_accCTopicCode <> 0 THEN S1.c_accCTopicCode ELSE D.acc_CTopicCode END 
						WHEN RT.Deficate_MakeDocKind = 6 THEN D.acc_CTopicCode 
						WHEN RT.Deficate_MakeDocKind = 9 THEN 
								case RT.DefaultCTopic_Bes
										when 0 then 0 
										when 1 then S1.c_accCTopicCode
										when 4 then  case RT.CustCodeUse4Bes--------  كد حساب -------------
														when 1 then CG1.acc_CTopicCode 
														when 2 then CG2.acc_CTopicCode 
													 else -1 end 
										when 5 then  case RT.CustCodeUse4Bes 
														when 1 then C1.acc_CTopicCode 
														when 2 then C2.acc_CTopicCode 
													 else -1 end 
										when 6 then  LM.acc_CTopicCode
										when 8 then  LM.acc_CTopicCode
										when 9 then  -1
										when 13 then   RT.UseUnitCase
										when 21 then C2.acc_CTopicCode
										when 23 then SE.CTopicCode 
										when 22 then 
												case RT.CustCodeUse4Bed 
													when 1 then C1.acc_CTopicCode 
													when 2 then C2.acc_CTopicCode 
												else -1 end 
										when 25 then 25
										when 28 then  RT.UseOtherActive														
								else 0 end

				ELSE 0 END
		END AS acc_CTopicCode,
		CASE D.acc_CTopicCode2  
			when -1  then C1.acc_CTopicCode2 
			when -2  then C2.acc_CTopicCode2 
			when -3  then -1
			when -4  then C3.acc_CTopicCode2  
			when -6  then LM.acc_CTopicCode2		
			when -11 then -11
			when -12 then S1.c_accCTopicCode2  
			when -13 then UM.acc_CTopicCode2
			when -14 then UOM.CTopicCode2
			when -16 then -16								 
			when -23 then SE.CTopicCode2 
			when -24 then -24
			when -26 then LM.acc_CTopicCode2  
	    ELSE 
			CASE WHEN (RT.Settings &  16384 <> 0) THEN FR.CTopicCode2 ELSE
				 CASE WHEN RT.Deficate_MakeDocKind = 5 THEN C2.acc_CTopicCode2 
					  WHEN RT.Deficate_MakeDocKind = 4 THEN C2.acc_CTopicCode2 
			  ELSE D.acc_CTopicCode2 END
			END  
		END AS acc_CTopicCode2,
		CASE WHEN (RT.Settings &  16384 <> 0) THEN FR.CTopicCode3 ELSE D.acc_CTopicCode3 end AS CTopicCode3,
		1 AS kind, R.AidNumber, R.AidDate, 0 AS IAidNumber, '' AS IAidDate, 0 AS ControlCode, R.ServerID, R.YearID,
		'' AS ItemNote, R.ReciptNote + ' ' + ISNULL(FR.DeficitNote,'') AS ReciptNote, 0 AS UnitSellPrice, R.MachineName, 
		R.MachineNo, R.MachineInfo, R.TruckNumber, FR.ArzAmount, 0 AS reciptsrow, '' AS CustName2,
		'' AS UnitName, 0.0 AS StuffDiameter, R.PO, FR.ArzTypeID, '' as UseUnitName, UM.UseUnitName as UseUnitNameM, 
		RSM.ArzRate, CU.CurrenciesName AS ArzName, R.RialsEqual, SE.SellsEmporiumName, '' as CustName3

	FROM			Recipts         R    
		INNER JOIN  ReciptTypes     RT   ON R.ReciptType = RT.ReciptType 
		INNER JOIN  Stores          S1   ON R.StoreID  = S1.n_StoreID 
		INNER JOIN  Customers       C1   ON isnull(R.PersonID1,0) = C1.CustID
		INNER JOIN  CustomersGroup  CG1  ON C1.CustomerGrpID = CG1.CustomerGrpID
		INNER JOIN  Customers       C2   ON isnull(R.PersonID2,0) = C2.CustID
		INNER JOIN  CustomersGroup  CG2  ON C2.CustomerGrpID = CG2.CustomerGrpID
		INNER JOIN  Customers       C3   ON isnull(R.PersonID3,0) = C3.CustID
		INNER JOIN  CustomersGroup  CG3  ON C3.CustomerGrpID = CG3.CustomerGrpID
		INNER JOIN  Customers       C4   ON isnull(R.PersonID4,0) = C4.CustID
		INNER JOIN  CustomersGroup  CG4  ON C4.CustomerGrpID   = CG4.CustomerGrpID
		INNER JOIN  ReciptsDeficits FR   ON FR.ReciptID = R.ReciptID AND FR.ServerID = R.ServerID AND FR.YearID = R.YearID
		INNER JOIN  Deficits        D    ON FR.DeficitID = D.DeficitID
		INNER JOIN	SellsEmporiums  SE   ON isnull(R.SellsEmporium,1) = SE.SellsEmporium
		LEFT  JOIN	UseUnits        UM   ON R.UseUnitID        = UM.UseUnitID   
		INNER JOIN	LookUps         LM   ON isnull(R.SecondType,0)       = LM.LookUpID    
		LEFT  JOIN	UseOthers       UOM  ON R.UseOtherID       = UOM.UseOtherID
		INNER JOIN  Currencies      CU   ON isnull(R.ArzTypeID,0)    = CU.CurrenciesID
		INNER JOIN  ReciptItemSum   RSM  ON R.ReciptID = RSM.ReciptID AND R.ServerID = RSM.ServerID AND R.YearID = RSM.YearID 
					
WHERE   (R.ReciptType   BETWEEN @ReciptTypeFrom AND @ReciptTypeTo) 
	AND	(R.ReciptNumber BETWEEN @NumberFrom     AND @NumberTo  )   
	AND	(R.ReciptState  BETWEEN @ReciptStateFrom  AND @ReciptStateTo  ) 
	AND	(C1.CustomerGrpID BETWEEN @CustomerGrpIDFrom  AND @CustomerGrpIDTo ) 
	AND	(LM.Code BETWEEN @SecondTpFrom  AND @SecondTpTo ) 
	AND	(R.ReciptDate BETWEEN @DateFrom  AND @DateTo ) 
	AND ((ISNULL(R.AidDate,'') ='') OR (R.AidDate ='/  /') OR (R.AidDate BETWEEN @AidDateFrom  AND @AidDateTo )) 
	AND	(ISNULL(R.PersonID1,0) BETWEEN @CustID1Form  AND @CustID1To ) 
	AND	(ISNULL(R.PersonID2,0) BETWEEN @CustID2Form  AND @CustID2To ) 
	AND	(ISNULL(R.PersonID3,0) BETWEEN @CustID3Form  AND @CustID3To ) 
	AND	(R.StoreID BETWEEN @StoreIDFrom   AND @StoreIDTo ) 
	AND ((R.DocNo < 1) OR (@AllDocAble=1)) 
    AND	(SE.SellsEmporium BETWEEN @SellsEmporiumFrom AND @SellsEmporiumTo) 
	AND	(ISNULL( R.ReciptsRow,0 ) BETWEEN @ReciptsRowFrom AND @ReciptsRowTo) 
	AND ((@NotReciptNumber = '-1') or (R.ReciptNumber NOT IN (SELECT part FROM dbo.SplitString(@NotReciptNumber,','))))
	AND ((@NotCustID1      = '-1') or (R.PersonID1    NOT IN (SELECT part FROM dbo.SplitString(@NotCustID1,','))))
	AND ((@addIDFilter     = '-1') or (R.ID               IN (SELECT part FROM dbo.SplitString(@addIDFilter,','))))
	AND ((RT.CheckParentReciptID = 0) OR (ISNULL( R.ParentReciptID,0) <> 0 ))
	AND ((CASE WHEN RT.FormStateDefault4Doc = 0 THEN R.ReciptState ELSE RT.FormStateDefault4Doc END) = R.ReciptState)	
	AND (R.ReciptState < 3)
	AND (RT.AccountKind4Deficits IN (1, 2))
	AND (RSM.price > 0)	
					
	------- Part 5
	------------------------------------------------------------------------------------------------------------------------
	-----------------------------(D.AccFixedCoding = 1) AND (AccountKind4Deficits <> 0) ---BED -----------------------------
	------------------------------------------------------------------------------------------------------------------------

INSERT INTO @retFindReports
SELECT	'P5' as Part, '' AS IDs, CASE @MakeDocKind WHEN 2 THEN 0 ELSE R.ID END AS ID, 0 AS ReciptitemID,		
		CASE @MakeDocKind WHEN 2 THEN 0 ELSE R.ReciptID END AS ReciptID,
		R.StoreID, '' AS c_StoreName, CASE @MakeDocKind WHEN 2 THEN 0 ELSE R.ReciptNumber END AS ReciptNumber,	
		R.ReciptDate, R.ReciptType, 0 AS CustID, '' AS CustName, 0 AS StuffCode, '' AS c_StuffName, RT.BedType,
		D.DeficitName + ' ' + RT.ReciptCaption AS ReciptCaption, 0.0 AS Expr1, 0.0 AS Expr2,
		CASE RT.AccountKind4Deficits WHEN 2 THEN FR.DeficitDec WHEN 1 THEN FR.DeficitAdd WHEN 3 THEN FR.DeficitAdd ELSE 0 END AS bed,
		CASE RT.AccountKind4Deficits WHEN 1 THEN FR.DeficitDec WHEN 2 THEN FR.DeficitAdd WHEN 3 THEN FR.DeficitDec ELSE 0 END AS bes,
		1 AS Bedbes, 0 AS Falg,		 
		case D.TopicCodeBed  
			when -1  then C1.acc_TopicCode 
			when -2  then C2.acc_TopicCode 
			when -3  then -3
			when -4  then C3.acc_TopicCode  
			when -6  then LM.acc_TopicCode		
			when -11 then -11
			when -12 then S1.c_accTopicCode 
			when -13 then UM.acc_TopicCode
			when -14 then UOM.TopicCode 
			when -16 then -16							 
			when -23 then SE.TopicCode 
			when -24 then -24
			when -26 then  LM.acc_TopicCode 
       	else	case 	(
					case  D.TopicCodeBed  
						when -100 then  RT.DefaultCTopic_Bed 
						when -101 then  RT.DefaultCTopic_Bes 
						else -999
					end 
						)
					when 1 then S1.c_accTopicCode
					when 2 then 2
					when 3 then 3
				else D.TopicCodeBed end 
		end AS acc_TopicCode,
		case D.DetailCodeBed  
			when -1  then C1.acc_DetailCode
			when -2  then C2.acc_DetailCode
			when -3  then -3
			when -4  then C3.acc_DetailCode  
			when -6  then LM.acc_DetailCode		
			when -11 then -11
			when -12 then S1.c_accDetailCode
			when -13 then UM.acc_DetailCode
			when -14 then UOM.DetailCode
			when -16 then -16								 
			when -23 then SE.DetailCode 
			when -24 then -24
			when -26 then  LM.acc_DetailCode
       	else 	case 	(
							case  D.DetailCodeBed  
								when -100 then  RT.DefaultCTopic_Bed 
								when -101 then  RT.DefaultCTopic_Bes 
								else -999
							end 
							)
					when 1 then S1.c_accDetailCode
					when 2 then 2
					when 3 then 3
				else D.DetailCodeBed	end 
		end  AS acc_DetailCode,		 
		case D.CTopicCodeBed  
			when -1  then C1.acc_CTopicCode 
			when -2  then C2.acc_CTopicCode 
			when -3  then -1
			when -4  then C3.acc_CTopicCode  
			when -6  then LM.acc_CTopicCode		
			when -11 then -11
			when -12 then S1.c_accCTopicCode 
			when -13 then UM.acc_CTopicCode
			when -14 then UOM.CTopicCode
			when -16 then -16								 
			when -23 then SE.CTopicCode 
			when -24 then -24
			when -26 then  LM.acc_CTopicCode
       	else 	case 	(
						case  D.CTopicCodeBed 
							when -100 then   RT.DefaultCTopic_Bed 
							when -101 then  RT.DefaultCTopic_Bes 
							else -999
						end 
						)
					when 1 then S1.c_accCTopicCode
					when 2 then 2
					when 3 then 3
				else d.CTopicCodeBed 
      			end 
		end   AS acc_CTopicCode,
		case D.CTopicCode2Bed  
			when -1  then C1.acc_CTopicCode2 
			when -2  then C2.acc_CTopicCode2 
			when -3  then -1 
			when -4  then C3.acc_CTopicCode2  
			when -6  then LM.acc_CTopicCode2		
			when -11 then -11
			when -12 then S1.c_accCTopicCode2 
			when -13 then UM.acc_CTopicCode2
			when -14 then UOM.CTopicCode2
			when -16 then -16								 
			when -23 then SE.CTopicCode2 
			when -24 then -24
			when -26 then  LM.acc_CTopicCode2  
       	else 	case 	(
						case  D.CTopicCode2Bed 
							when -100 then   RT.DefaultCTopic_Bed 
							when -101 then  RT.DefaultCTopic_Bes 
							else -999
						end 
						)
					when 1 then S1.c_accCTopicCode2
					when 2 then 2
					when 3 then 3

				else d.CTopicCode2Bed end 
		end   AS  acc_CTopicCode2,
		case D.CTopicCode3Bed  
			when -1  then C1.acc_CTopicCode3 
			when -2  then C2.acc_CTopicCode3 
			when -3  then -1
			when -4  then C3.acc_CTopicCode3  
			when -6  then LM.acc_CTopicCode3		
			when -11 then -11
			when -12 then S1.CTopicCode3 
			when -13 then UM.acc_CTopicCode3
			when -14 then UOM.CTopicCode3
			when -16 then -16								 
			when -23 then SE.CTopicCode3 
			when -24 then -24
			when -26 then  LM.acc_CTopicCode3 
       	else 	case 	(
							case  D.CTopicCode3Bed 
								when -100 then   RT.DefaultCTopic_Bed 
								when -101 then  RT.DefaultCTopic_Bes 
								else -999
							end 
						 )
					when 1 then S1.CTopicCode3
					when 2 then 2
					when 3 then 3
				else d.CTopicCode3Bed end 
		end   AS  acc_CTopicCode3,
		1 AS kind, R.AidNumber, R.AidDate, 0 AS IAidNumber, '' AS IAidDate, 0 AS ControlCode, R.ServerID, 
		R.YearID, '' AS ItemNote, R.ReciptNote + ' ' + ISNULL(FR.DeficitNote,'') AS ReciptNote, 0 AS UnitSellPrice,
		R.MachineName, R.MachineNo, R.MachineInfo, R.TruckNumber, FR.ArzAmount, 0 AS reciptsrow, '' AS CustName2,
		'' AS UnitName, 0.0 AS StuffDiameter, R.PO, FR.ArzTypeID, '' as UseUnitName,UM.UseUnitName as UseUnitNameM, 
		0 as ArzRate, CU.CurrenciesName AS ArzName, R.RialsEqual, SE.SellsEmporiumName, '' as CustName3

	FROM			Recipts         R    --
		INNER JOIN  ReciptTypes     RT   ON R.ReciptType = RT.ReciptType -- 
		INNER JOIN  Stores          S1   ON R.StoreID  = S1.n_StoreID --
		INNER JOIN  Customers       C1   ON isnull(R.PersonID1,0) = C1.CustID
		INNER JOIN  CustomersGroup  CG1  ON C1.CustomerGrpID = CG1.CustomerGrpID
		INNER JOIN  Customers       C2   ON isnull(R.PersonID2,0) = C2.CustID
		INNER JOIN  CustomersGroup  CG2  ON C2.CustomerGrpID = CG2.CustomerGrpID
		INNER JOIN  Customers       C3   ON isnull(R.PersonID3,0) = C3.CustID
		INNER JOIN  CustomersGroup  CG3  ON C3.CustomerGrpID = CG3.CustomerGrpID
		INNER JOIN  Customers       C4   ON isnull(R.PersonID4,0) = C4.CustID
		INNER JOIN  CustomersGroup  CG4  ON C4.CustomerGrpID   = CG4.CustomerGrpID
		INNER JOIN  ReciptsDeficits FR   ON FR.ReciptID = R.ReciptID AND FR.ServerID = R.ServerID AND FR.YearID = R.YearID --
		INNER JOIN  Deficits        D    ON FR.DeficitID = D.DeficitID --
		INNER JOIN	SellsEmporiums  SE   ON isnull(R.SellsEmporium,1) = SE.SellsEmporium 
		LEFT  JOIN	UseUnits        UM   ON R.UseUnitID             = UM.UseUnitID  
		INNER JOIN	LookUps         LM   ON isnull(R.SecondType,0)  = LM.LookUpID
		LEFT  JOIN	UseOthers       UOM  ON R.UseOtherID       = UOM.UseOtherID 
		INNER JOIN  Currencies      CU   ON isnull(R.ArzTypeID,0)   = CU.CurrenciesID
		INNER JOIN  ReciptItemSum   RSM  ON R.ReciptID = RSM.ReciptID AND R.ServerID = RSM.ServerID AND R.YearID = RSM.YearID --

WHERE   (R.ReciptType   BETWEEN @ReciptTypeFrom AND @ReciptTypeTo) --
	AND	(R.ReciptNumber BETWEEN @NumberFrom     AND @NumberTo  )   --
	AND	(R.ReciptState  BETWEEN @ReciptStateFrom  AND @ReciptStateTo  ) --
	AND	(C1.CustomerGrpID BETWEEN @CustomerGrpIDFrom  AND @CustomerGrpIDTo ) --
	AND	(LM.Code BETWEEN @SecondTpFrom  AND @SecondTpTo ) --
	AND	(R.ReciptDate BETWEEN @DateFrom  AND @DateTo ) --
	AND ((ISNULL(R.AidDate,'') ='') OR (R.AidDate ='/  /') OR (R.AidDate BETWEEN @AidDateFrom  AND @AidDateTo )) --
	AND	(ISNULL(R.PersonID1,0) BETWEEN @CustID1Form  AND @CustID1To ) --
	AND	(ISNULL(R.PersonID2,0) BETWEEN @CustID2Form  AND @CustID2To ) --
	AND	(ISNULL(R.PersonID3,0) BETWEEN @CustID3Form  AND @CustID3To ) --
	AND	(R.StoreID BETWEEN @StoreIDFrom   AND @StoreIDTo ) ---
	AND ((R.DocNo < 1) OR (@AllDocAble=1)) --
	AND	(SE.SellsEmporium BETWEEN @SellsEmporiumFrom AND @SellsEmporiumTo) 
	AND	(ISNULL( R.ReciptsRow,0 ) BETWEEN @ReciptsRowFrom AND @ReciptsRowTo) --
	AND ((@NotReciptNumber = '-1') or (R.ReciptNumber NOT IN (SELECT part FROM dbo.SplitString(@NotReciptNumber,','))))
	AND ((@NotCustID1      = '-1') or (R.PersonID1    NOT IN (SELECT part FROM dbo.SplitString(@NotCustID1,','))))
	AND ((@addIDFilter     = '-1') or (R.ID               IN (SELECT part FROM dbo.SplitString(@addIDFilter,','))))
	AND ((RT.CheckParentReciptID = 0) OR (ISNULL( R.ParentReciptID,0) <> 0 ))--
	AND ((CASE WHEN RT.FormStateDefault4Doc = 0 THEN R.ReciptState ELSE RT.FormStateDefault4Doc END) = R.ReciptState)	--	
	AND (R.ReciptState < 3)	--
	AND (RSM.price > 0)
	AND (FR.DeficitDec + FR.DeficitAdd > 0)
	AND (RT.AccountKind4Deficits <> 0)
	AND (D.AccFixedCoding = 1)

UNION ALL

	------- Part 6
	------------------------------------------------------------------------------------------------------------------------
	-----------------------------(D.AccFixedCoding = 1) AND (AccountKind4Deficits <> 0) ---BED -----------------------------
	------------------------------------------------------------------------------------------------------------------------
	
SELECT  'P6' as Part, '' AS IDs, CASE @MakeDocKind WHEN 2 THEN 0 ELSE R.ID END AS ID, 0 AS ReciptitemID, 
		CASE @MakeDocKind WHEN 2 THEN 0 ELSE R.ReciptID     END AS ReciptID, R.StoreID, '' AS c_StoreName, 
		CASE @MakeDocKind WHEN 2 THEN 0 ELSE R.ReciptNumber END AS ReciptNumber, R.ReciptDate, R.ReciptType, 0 AS CustID, '' AS CustName, 
		0 AS StuffCode, '' AS c_StuffName, RT.BedType, D.DeficitName + ' ' + RT.ReciptCaption AS ReciptCaption,	0.0 AS Expr1, 0.0 AS Expr2,
		CASE RT.AccountKind4Deficits WHEN 1 THEN FR.DeficitDec WHEN 2 THEN FR.DeficitAdd WHEN 3 THEN FR.DeficitDec ELSE 0 END AS bed,
		CASE RT.AccountKind4Deficits WHEN 2 THEN FR.DeficitDec WHEN 1 THEN FR.DeficitAdd WHEN 3 THEN FR.DeficitAdd ELSE 0 END AS bes,
		2 AS Bedbes, 0 AS Falg,
		case D.TopicCodeBes  
			when -1  then C1.acc_TopicCode 
			when -2  then C2.acc_TopicCode 
			when -3  then -3
			when -4  then C3.acc_TopicCode  
			when -6  then LM.acc_TopicCode		
			when -11 then -11
			when -12 then S1.c_accTopicCode 
			when -13 then UM.acc_TopicCode
			when -14 then UOM.TopicCode 
			when -16 then -16
			when -23 then SE.TopicCode 
			when -24 then -24
			when -26 then LM.acc_TopicCode
       	else	case 	(
					case  D.TopicCodeBes  
						when -100 then   RT.DefaultCTopic_Bes 
						when -101 then  RT.DefaultCTopic_Bes 
						else -999
					end 
						)
				when 1 then S1.c_accTopicCode
				when 2 then 2
				when 3 then 3
				else D.TopicCodeBes 
      	end 
		end AS acc_TopicCode,
		case D.DetailCodeBes  
			when -1  then C1.acc_DetailCode
			when -2  then C2.acc_DetailCode
			when -3  then -3
			when -4  then C3.acc_DetailCode  
			when -6  then LM.acc_DetailCode		
			when -11 then -11
			when -12 then S1.c_accDetailCode 
			when -13 then UM.acc_DetailCode
			when -14 then UOM.DetailCode
			when -16 then -16
			when -23 then SE.DetailCode 
			when -24 then -24
			when -26 then LM.acc_DetailCode
       	else	case 	(
							case  D.DetailCodeBes  
								when -100 then  RT.DefaultCTopic_Bes 
								when -101 then  RT.DefaultCTopic_Bes 
								else -999
							end 
						 )
					when 1 then S1.c_accDetailCode
					when 2 then 2
					when 3 then 3
				else D.DetailCodeBes end 
		end  AS acc_DetailCode,		 
		case D.CTopicCodeBes  
			when -1  then C1.acc_CTopicCode 
			when -2  then C2.acc_CTopicCode 
			when -3  then -1
			when -4  then C3.acc_CTopicCode  
			when -6  then LM.acc_CTopicCode		
			when -11 then -11
			when -12 then S1.c_accCTopicCode 
			when -13 then UM.acc_CTopicCode
			when -14 then UOM.CTopicCode
			when -16 then -16
			when -23 then SE.CTopicCode 
			when -24 then -24
			when -26 then LM.acc_CTopicCode
       	else	case 	(
							case  D.CTopicCodeBes 
								when -100 then  RT.DefaultCTopic_Bes 
								when -101 then  RT.DefaultCTopic_Bes 
								else -999
							end 
						 )
					when 1 then S1.c_accCTopicCode
					when 2 then 2
					when 3 then 3
				else d.CTopicCodeBes end 
		end   AS acc_CTopicCode,
		case D.CTopicCode2Bes  
			when -1  then C1.acc_CTopicCode2 
			when -2  then C2.acc_CTopicCode2 
			when -3  then -1
			when -4  then C3.acc_CTopicCode2  
			when -6  then LM.acc_CTopicCode2		
			when -11 then -11
			when -12 then S1.c_accCTopicCode2
			when -13 then UM.acc_CTopicCode2
			when -14 then UOM.CTopicCode2
			when -16 then -16
			when -23 then SE.CTopicCode2 
			when -24 then -24
			when -26 then LM.acc_CTopicCode2
       	else	case 	(
							case  D.CTopicCode2Bes 
								when -100 then  RT.DefaultCTopic_Bes 
								when -101 then  RT.DefaultCTopic_Bes 
								else -999
							end 
						 )
					when 1 then S1.c_accCTopicCode2
					when 2 then 2
					when 3 then 3
				else d.CTopicCode2Bes	end 
		end   AS  acc_CTopicCode2,
		case D.CTopicCode3Bes  
			when -1  then C1.acc_CTopicCode3 
			when -2  then C2.acc_CTopicCode3 
			when -3  then -1
			when -4  then C3.acc_CTopicCode3  
			when -6  then LM.acc_CTopicCode3		
			when -11 then -11
			when -12 then S1.CTopicCode3
			when -13 then UM.acc_CTopicCode3
			when -14 then UOM.CTopicCode3
			when -16 then -16
			when -23 then SE.CTopicCode3 
			when -24 then -24
			when -26 then LM.acc_CTopicCode3
       	else	case 	(
							case  D.CTopicCode3Bes 
								when -100 then  RT.DefaultCTopic_Bes 
								when -101 then  RT.DefaultCTopic_Bes 
								else -999
							end 
						 )
					when 1 then S1.CTopicCode3
					when 2 then 2
					when 3 then 3
				else d.CTopicCode3Bes end 
		end   AS  acc_CTopicCode3,
		1 AS kind, R.AidNumber, R.AidDate, 0 AS IAidNumber, '' AS IAidDate, 0 AS ControlCode, R.ServerID, R.YearID,	'' AS ItemNote,
		R.ReciptNote + ' ' + ISNULL(FR.DeficitNote,'') AS ReciptNote, 0 AS UnitSellPrice, R.MachineName, R.MachineNo, R.MachineInfo,
		R.TruckNumber, FR.ArzAmount, 0 AS reciptsrow, '' AS CustName2, '' AS UnitName, 0.0 AS StuffDiameter, R.PO, FR.ArzTypeID, '' as UseUnitName, 
		UM.UseUnitName as UseUnitNameM, 0 as ArzRate, CU.CurrenciesName AS ArzName, R.RialsEqual, SE.SellsEmporiumName, '' as CustName3

FROM			    Recipts         R    --
		INNER JOIN  ReciptTypes     RT   ON R.ReciptType = RT.ReciptType -- 
		INNER JOIN  Stores          S1   ON R.StoreID  = S1.n_StoreID --
		INNER JOIN  Customers       C1   ON isnull(R.PersonID1,0) = C1.CustID
		INNER JOIN  CustomersGroup  CG1  ON C1.CustomerGrpID = CG1.CustomerGrpID
		INNER JOIN  Customers       C2   ON isnull(R.PersonID2,0) = C2.CustID
		INNER JOIN  CustomersGroup  CG2  ON C2.CustomerGrpID = CG2.CustomerGrpID
		INNER JOIN  Customers       C3   ON isnull(R.PersonID3,0) = C3.CustID
		INNER JOIN  CustomersGroup  CG3  ON C3.CustomerGrpID = CG3.CustomerGrpID
		INNER JOIN  Customers       C4   ON isnull(R.PersonID4,0) = C4.CustID
		INNER JOIN  CustomersGroup  CG4  ON C4.CustomerGrpID   = CG4.CustomerGrpID
		INNER JOIN  ReciptsDeficits FR   ON FR.ReciptID = R.ReciptID AND FR.ServerID = R.ServerID AND FR.YearID = R.YearID --
		INNER JOIN  Deficits        D    ON FR.DeficitID = D.DeficitID --
		INNER JOIN	SellsEmporiums  SE   ON isnull(R.SellsEmporium,1) = SE.SellsEmporium
		LEFT  JOIN	UseUnits        UM   ON R.UseUnitID        = UM.UseUnitID   --
		INNER JOIN	LookUps         LM   ON isnull(R.SecondType,0)   = LM.LookUpID 
		LEFT  JOIN	UseOthers       UOM  ON R.UseOtherID       = UOM.UseOtherID --
		INNER JOIN  Currencies      CU   ON isnull(R.ArzTypeID,0)    = CU.CurrenciesID
		INNER JOIN  ReciptItemSum   RSM  ON R.ReciptID = RSM.ReciptID AND R.ServerID = RSM.ServerID AND R.YearID = RSM.YearID --

WHERE       (R.ReciptType     BETWEEN @ReciptTypeFrom     AND @ReciptTypeTo) --
	AND	(R.ReciptNumber   BETWEEN @NumberFrom         AND @NumberTo  )   --
	AND	(R.ReciptState    BETWEEN @ReciptStateFrom    AND @ReciptStateTo  ) --
	AND	(C1.CustomerGrpID BETWEEN @CustomerGrpIDFrom  AND @CustomerGrpIDTo ) --
	AND	(LM.Code      BETWEEN @SecondTpFrom  AND @SecondTpTo ) --
	AND	(R.ReciptDate BETWEEN @DateFrom      AND @DateTo ) --
	AND ((ISNULL(R.AidDate,'') ='') OR (R.AidDate ='/  /') OR (R.AidDate BETWEEN @AidDateFrom  AND @AidDateTo )) --
	AND	(ISNULL(R.PersonID1,0) BETWEEN @CustID1Form  AND @CustID1To ) --
	AND	(ISNULL(R.PersonID2,0) BETWEEN @CustID2Form  AND @CustID2To ) --
	AND	(ISNULL(R.PersonID3,0) BETWEEN @CustID3Form  AND @CustID3To ) --
	AND	(R.StoreID BETWEEN @StoreIDFrom   AND @StoreIDTo ) ---
	AND ((R.DocNo < 1) OR (@AllDocAble=1)) --
	AND	(SE.SellsEmporium       BETWEEN @SellsEmporiumFrom AND @SellsEmporiumTo) 
	AND	(ISNULL(R.ReciptsRow,0) BETWEEN @ReciptsRowFrom    AND @ReciptsRowTo) --
	AND ((@NotReciptNumber = '-1') or (R.ReciptNumber NOT IN (SELECT part FROM dbo.SplitString(@NotReciptNumber,','))))
	AND ((@NotCustID1      = '-1') or (R.PersonID1    NOT IN (SELECT part FROM dbo.SplitString(@NotCustID1,','))))
	AND ((@addIDFilter     = '-1') or (R.ID               IN (SELECT part FROM dbo.SplitString(@addIDFilter,','))))
	AND ((RT.CheckParentReciptID = 0) OR (ISNULL( R.ParentReciptID,0) <> 0 ))--
	AND ((CASE WHEN RT.FormStateDefault4Doc = 0 THEN R.ReciptState ELSE RT.FormStateDefault4Doc END) = R.ReciptState)	--	
	AND (R.ReciptState < 3)	--
	AND (RSM.price > 0)
	AND (FR.DeficitDec + FR.DeficitAdd > 0)
	AND (RT.AccountKind4Deficits <> 0)
	AND (D.AccFixedCoding = 1)

	----------part 7
    ---------------------------------------------------------------------------------------------------------------------------------
	------------------------------------حق العملکاری--------------------BED----------------------------------------------------------
	---------------------------------------------------------------------------------------------------------------------------------

INSERT INTO @retFindReports

SELECT  'P7' as Part, '' as IDs, R.ID, 0 as ReciptitemID, RI.ReciptID, R.StoreID, S1.c_StoreName, R.ReciptNumber, R.ReciptDate, R.ReciptType,
		0 as CustID , ' ' as CustName, RI.StuffCode, SC.c_StuffName, RT.BedType, RT.ReciptCaption, 
		RI.InputEntity + RI.OutputEntity AS Entity,	RI.InputWeight + RI.OutputWeight AS Weight,
		ROUND(( case when RT.DiscountActive > 0 then ISNULL(RI.TotallSellPrice,0) 
				else (RI.TotalInputPrice + RI.TotalOutputPrice ) end) * SC.Commission, 0) AS bed, 0 AS bes, 1 AS BedBes, 
		0 as Falg, SC.Acc_BidTopicCode, SC.acc_DetaiCode, SC.acc_CTopicCode, SC.acc_CTopicCode2, 0 as CTopicCode3, 2 as kind ,
		R.AidNumber, R.AidDate, RI.AidNumber as IAidNumber, RI.AidDate as IAidDate,	RI.ControlCode , R.ServerID, R.YearID, 
		'' as ItemNote, R.ReciptNote, 0 as UnitSellPrice, R.MachineName, R.MachineNo, R.MachineInfo, R.TruckNumber, 
		ISNULL(RI.ArzAmount,0) AS ArzAmount, ISNULL(R.reciptsrow,0), C2.CustName AS CustName2, '' as UnitName, RI.StuffDiameter, 
		RI.PO, R.ArzTypeID, UD.UseUnitName, UM.UseUnitName as UseUnitNameM, RI.ArzRate,	CU.CurrenciesName AS ArzName, 
		R.RialsEqual, SE.SellsEmporiumName, C3.CustName as CustName3
		
FROM			Recipts        R 
	INNER JOIN  ReciptItems    RI   ON R.ReciptID = RI.ReciptID AND R.ServerID = RI.ServerID AND R.YearID = RI.YearID 
	LEFT  JOIN	SellsEmporiums SE   ON isnull(R.SellsEmporium,1) = SE.SellsEmporium 
	INNER JOIN  StuffCoding    SC   ON RI.StuffCode = SC.c_StuffCode  -- StuffCoding_R
	INNER JOIN  ReciptTypes    RT   ON R.ReciptType = RT.ReciptType 
	INNER JOIN  Stores         S1   ON R.StoreID  = S1.n_StoreID    --- Stores_1
	INNER JOIN  Customers      C2   ON isnull(R.PersonID2,0) = C2.CustID
	INNER JOIN  Customers      C3   ON isnull(R.PersonID3,0) = C3.CustID
	LEFT  JOIN	UseUnits       UM   ON R.UseUnitID        = UM.UseUnitID --UseUnitsMaster
	LEFT  JOIN  UseUnits       UD   ON RI.UseUnitID       = UD.UseUnitID --UseUnits
	INNER JOIN	LookUps        LM   ON isnull(R.SecondType,0) = LM.LookUpID 
	INNER JOIN  Currencies     CU   ON isnull(R.ArzTypeID,0)    = CU.CurrenciesID

WHERE	(R.ReciptType   BETWEEN @ReciptTypeFrom AND @ReciptTypeTo) 
	AND	(R.ReciptNumber BETWEEN @NumberFrom  AND @NumberTo  ) 
	AND	(R.ReciptDate   BETWEEN @DateFrom  AND @DateTo ) 
	AND	((ISNULL(R.AidDate,'') ='') OR (R.AidDate ='/  /') OR (R.AidDate BETWEEN @AidDateFrom  AND @AidDateTo )) 
	AND (R.ReciptState BETWEEN @ReciptStateFrom  AND @ReciptStateTo  ) 
	AND	(R.ReciptState < ReciptStateSmallerThan)
	AND	(ISNULL(R.PersonID1,0) BETWEEN @CustID1Form  AND @CustID1To ) 
	AND	(ISNULL(R.PersonID2,0) BETWEEN @CustID2Form  AND @CustID2To ) 
	AND	(ISNULL(R.PersonID3,0) BETWEEN @CustID3Form  AND @CustID3To ) 
	AND	(R.StoreID BETWEEN @StoreIDFrom   AND @StoreIDTo ) 
	AND (( R.DocNo < 1) OR (@AllDocAble=1)) 
	And (SC.OwnerShipKind = ( Case  RT.ActiveDocOnCommission when 1 then 1 else -1 end ))
	AND	((RI.TotalInputPrice + RI.TotalOutputPrice) + ISNULL(RI.UnitCommission,0) > 0)
	AND	(SE.SellsEmporium BETWEEN @SellsEmporiumFrom AND @SellsEmporiumTo) 
	AND (ISNULL( R.ReciptsRow,0 ) BETWEEN @ReciptsRowFrom AND @ReciptsRowTo)
	AND (LM.Code BETWEEN @SecondTpFrom  AND @SecondTpTo )
	AND ((@NotReciptNumber = '-1') or (R.ReciptNumber NOT IN (SELECT part FROM dbo.SplitString(@NotReciptNumber,','))))
	AND ((@NotCustID1      = '-1') or (R.PersonID1    NOT IN (SELECT part FROM dbo.SplitString(@NotCustID1,','))))
	AND ((@addIDFilter     = '-1') or (R.ID               IN (SELECT part FROM dbo.SplitString(@addIDFilter,','))))
	AND ((RT.CheckParentReciptID = 0) OR (ISNULL( R.ParentReciptID,0) <> 0 ))
	AND ((case when RT.FormStateDefault4Doc = 0 then R.ReciptState else RT.FormStateDefault4Doc end) = R.ReciptState)

	----------part 8
    ---------------------------------------------------------------------------------------------------------------------------------
	------------------------------------حق العملکاری--------------------BES----------------------------------------------------------
	---------------------------------------------------------------------------------------------------------------------------------

INSERT INTO @retFindReports

SELECT	'P8' as Part, '' as IDs, R.ID, 0 as ReciptitemID, RI.ReciptID, R.StoreID, S1.c_StoreName, R.ReciptNumber,	R.ReciptDate, R.ReciptType,
		0 as CustID, ' ' as CustName, RI.StuffCode,	SC.c_StuffName, RT.BedType, RT.ReciptCaption, RI.InputEntity + RI.OutputEntity AS Entity, 
		RI.InputWeight + RI.OutputWeight AS Weight,	0 AS bed,
		ROUND((case when RT.DiscountActive > 0 then ISNULL(RI.TotallSellPrice,0) 
				else RI.TotalInputPrice + RI.TotalOutputPrice end) * SC.Commission, 0) AS bes, 2 AS BedBes,0 as Falg, 
		SC.Acc_CommissionTopicCode,	0 AS acc_DetaiCode, 0 AS acc_CTopicCode, 0 AS acc_CTopicCode2 , 0 as CTopicCode3, 2 as kind ,
		R.AidNumber, R.AidDate, RI.AidNumber as IAidNumber, RI.AidDate as IAidDate,	RI.ControlCode , R.ServerID, R.YearID, '' as ItemNote, 
		R.ReciptNote, 0 as UnitSellPrice , R.MachineName , R.MachineNo, R.MachineInfo, R.TruckNumber, ISNULL(RI.ArzAmount,0) AS ArzAmount , 
		ISNULL(R.reciptsrow,0), C2.CustName AS CustName2, '' as UnitName, RI.StuffDiameter, RI.PO, R.ArzTypeID, UD.UseUnitName,
		UM.UseUnitName as UseUnitNameM, RI.ArzRate, CU.CurrenciesName AS ArzName, R.RialsEqual, SE.SellsEmporiumName, C3.CustName as CustName3

FROM			Recipts        R 
	INNER JOIN  ReciptItems    RI   ON R.ReciptID = RI.ReciptID AND R.ServerID = RI.ServerID AND R.YearID = RI.YearID 
	INNER JOIN	SellsEmporiums SE   ON isnull(R.SellsEmporium,1) = SE.SellsEmporium 
	INNER JOIN  StuffCoding    SC   ON RI.StuffCode = SC.c_StuffCode  
	INNER JOIN  ReciptTypes    RT   ON R.ReciptType = RT.ReciptType 
	INNER JOIN  Stores         S1   ON R.StoreID  = S1.n_StoreID    
	INNER JOIN  Customers      C2   ON isnull(R.PersonID2,0) = C2.CustID
	INNER JOIN  Customers      C3   ON isnull(R.PersonID3,0) = C3.CustID
	LEFT  JOIN	UseUnits       UM   ON R.UseUnitID        = UM.UseUnitID 
	LEFT  JOIN  UseUnits       UD   ON RI.UseUnitID       = UD.UseUnitID 
	INNER JOIN	LookUps        LM   ON isnull(R.SecondType,0)   = LM.LookUpID 
	INNER JOIN  Currencies     CU   ON isnull(R.ArzTypeID,0)    = CU.CurrenciesID


WHERE   (R.ReciptType BETWEEN @ReciptTypeFrom AND @ReciptTypeTo) 
	AND (R.ReciptNumber BETWEEN @NumberFrom  AND @NumberTo  ) 
	AND	(R.ReciptDate BETWEEN @DateFrom  AND @DateTo ) 
	AND	((ISNULL(R.AidDate,'') ='') OR (R.AidDate ='/  /') OR (R.AidDate BETWEEN @AidDateFrom  AND @AidDateTo )) 
	AND	(R.ReciptState BETWEEN @ReciptStateFrom  AND @ReciptStateTo  ) 
	AND	(R.ReciptState < ReciptStateSmallerThan)
	AND (ISNULL(R.PersonID1,0) BETWEEN @CustID1Form  AND @CustID1To ) 
	AND	(ISNULL(R.PersonID2,0) BETWEEN @CustID2Form  AND @CustID2To ) 
	AND	(ISNULL(R.PersonID3,0) BETWEEN @CustID3Form  AND @CustID3To ) 
	AND	(R.StoreID BETWEEN @StoreIDFrom   AND @StoreIDTo ) AND (( R.DocNo < 1) OR (@AllDocAble = 1 )) 
	And	(SC.OwnerShipKind = (Case  RT.ActiveDocOnCommission when 1 then 1 else -1 end )) 
	AND	((RI.TotalInputPrice + RI.TotalOutputPrice) + ISNULL(RI.UnitCommission,0) > 0)
	AND	(SE.SellsEmporium BETWEEN @SellsEmporiumFrom AND @SellsEmporiumTo) 
	AND	(ISNULL( R.ReciptsRow,0 ) BETWEEN @ReciptsRowFrom AND @ReciptsRowTo) 
	AND	(LM.Code BETWEEN @SecondTpFrom  AND @SecondTpTo )
	AND ((@NotReciptNumber = '-1') or (R.ReciptNumber NOT IN (SELECT part FROM dbo.SplitString(@NotReciptNumber,','))))
	AND ((@NotCustID1      = '-1') or (R.PersonID1    NOT IN (SELECT part FROM dbo.SplitString(@NotCustID1,','))))
	AND ((@addIDFilter     = '-1') or (R.ID               IN (SELECT part FROM dbo.SplitString(@addIDFilter,','))))
	AND ((RT.CheckParentReciptID = 0) OR (ISNULL( R.ParentReciptID,0) <> 0 ))
	AND ((case when RT.FormStateDefault4Doc = 0 then R.ReciptState else RT.FormStateDefault4Doc end) = R.ReciptState)
	
	----------part 9
    ---------------------------------------------------------------------------------------------------------------------------------
	-------------------------haqolamal-------------------------------BES-------------------------------------------------------------
	---------------------------------------------------------------------------------------------------------------------------------
	
INSERT INTO @retFindReports

SELECT  'P9' as Part, '' as IDs, R.ID, 0 as ReciptitemID, RI.ReciptID, R.StoreID, S1.c_StoreName, R.ReciptNumber, R.ReciptDate, 
		R.ReciptType, 0 as CustID, ' ' as CustName, RI.StuffCode, SC.c_StuffName, RT.BedType, RT.ReciptCaption,
		RI.InputEntity + RI.OutputEntity AS Entity,	RI.InputWeight + RI.OutputWeight AS Weight,
		case   RT.Deficate_MakeDocKind 
			when 0 then 0 
			when 1 then case when RI.TotalInputPrice > 0  then RI.TotalInputPrice  - isnull(RI.TotalStandardRate,0) else 0 end 
		end AS bed,
		case   RT.Deficate_MakeDocKind 
			when 0 then 0 
			when 1 then case when RI.TotalOutputPrice > 0 then RI.TotalOutputPrice - isnull(RI.TotalStandardRate,0) else 0 end 
		end AS bes,
		case when RI.TotalInputPrice > 0 then 1 else 2 end AS BedBes, 0 as Falg, RT.Deficate_TopicCode,	RT.Deficate_DetailCode ,
		0 AS acc_CTopicCode, 0 AS acc_CTopicCode2 , 0 as CTopicCode3, 1 as kind , R.AidNumber, R.AidDate, RI.AidNumber as IAidNumber,
		RI.AidDate as IAidDate,	RI.ControlCode, R.ServerID, R.YearID, '' as ItemNote, R.ReciptNote, 0 as UnitSellPrice,
		R.MachineName , R.MachineNo, R.MachineInfo, R.TruckNumber, ISNULL(RI.ArzAmount,0) AS ArzAmount , 
		ISNULL(R.reciptsrow,0), '' AS CustName2, '' as UnitName, RI.StuffDiameter, RI.PO, R.ArzTypeID, UD.UseUnitName,
		UM.UseUnitName as UseUnitNameM, RI.ArzRate,	CU.CurrenciesName AS ArzName, R.RialsEqual,	SE.SellsEmporiumName, '' as CustName3

FROM			Recipts        R 
	INNER JOIN  ReciptItems    RI   ON R.ReciptID = RI.ReciptID AND R.ServerID = RI.ServerID AND R.YearID = RI.YearID 
	INNER JOIN	SellsEmporiums SE   ON isnull(R.SellsEmporium,1) = SE.SellsEmporium 
	INNER JOIN  StuffCoding    SC   ON RI.StuffCode = SC.c_StuffCode  
	INNER JOIN  ReciptTypes    RT   ON R.ReciptType = RT.ReciptType 
	INNER JOIN  Stores         S1   ON R.StoreID  = S1.n_StoreID    
	LEFT  JOIN	UseUnits       UM   ON R.UseUnitID        = UM.UseUnitID 
	LEFT  JOIN  UseUnits       UD   ON RI.UseUnitID       = UD.UseUnitID 
	INNER JOIN	LookUps        LM   ON isnull(R.SecondType,0)       = LM.LookUpID 
	INNER JOIN  Currencies     CU   ON isnull(R.ArzTypeID,0)    = CU.CurrenciesID


WHERE   (R.ReciptType   BETWEEN @ReciptTypeFrom AND @ReciptTypeTo) 
	AND (R.ReciptNumber BETWEEN @NumberFrom     AND @NumberTo  ) 
	AND	(R.ReciptDate   BETWEEN @DateFrom       AND @DateTo ) 
	AND	((ISNULL(R.AidDate,'') = '') OR (R.AidDate = '/  /') OR (R.AidDate BETWEEN @AidDateFrom  AND @AidDateTo )) 
	AND	(R.ReciptState  BETWEEN @ReciptStateFrom  AND @ReciptStateTo  ) 
	AND (R.ReciptState < ReciptStateSmallerThan)
	AND	(ISNULL(R.PersonID1,0) BETWEEN @CustID1Form  AND @CustID1To ) 
	AND (ISNULL(R.PersonID2,0) BETWEEN @CustID2Form  AND @CustID2To ) 
	AND (ISNULL(R.PersonID3,0) BETWEEN @CustID3Form  AND @CustID3To ) 
	AND	((RI.TotalInputPrice + RI.TotalOutputPrice) + ISNULL(RI.UnitCommission,0) > 0)
	AND	(R.StoreID BETWEEN @StoreIDFrom   AND @StoreIDTo ) 
	AND ((R.DocNo < 1) OR (@AllDocAble=1)) 
	AND	case   RT.Deficate_MakeDocKind 	
			when 0 then 0 
			when 1 then RI.TotalInputPrice + RI.TotalOutputPrice - isnull(RI.TotalStandardRate,0)
		end > 0 
	AND	(SE.SellsEmporium BETWEEN @SellsEmporiumFrom AND @SellsEmporiumTo)  
	AND	(ISNULL( R.ReciptsRow,0 ) BETWEEN @ReciptsRowFrom AND @ReciptsRowTo) 
	AND	(LM.Code BETWEEN @SecondTpFrom  AND @SecondTpTo )
	AND ((@NotReciptNumber = '-1') or (R.ReciptNumber NOT IN (SELECT part FROM dbo.SplitString(@NotReciptNumber,','))))
	AND ((@NotCustID1      = '-1') or (R.PersonID1    NOT IN (SELECT part FROM dbo.SplitString(@NotCustID1,','))))
	AND ((@addIDFilter     = '-1') or (R.ID               IN (SELECT part FROM dbo.SplitString(@addIDFilter,','))))
	AND ((RT.CheckParentReciptID = 0) OR (ISNULL( R.ParentReciptID,0) <> 0 ))
	AND ((case when RT.FormStateDefault4Doc = 0 then R.ReciptState else RT.FormStateDefault4Doc end) = R.ReciptState)

	----------part 10
    ---------------------------------------------------------------------------------------------------------------------------------
	-------------------------haqolamal-------------------------------BED-------------------------------------------------------------
	---------------------------------------------------------------------------------------------------------------------------------

INSERT INTO @retFindReports

SELECT 	'P10' as Part, '' as IDs, case @MakeDocKind when 2 then 0 else R.ID end as ID,
		case @MakeDocKind when 2 then 0 else RI.ReciptitemID end as  ReciptitemID,
		case @MakeDocKind when 2 then 0 else R.ReciptID      end as  ReciptID,
		R.StoreID, S1.c_StoreName, case @MakeDocKind  when 2 then 0 else R.ReciptNumber end as  ReciptNumber,
		R.ReciptDate, R.ReciptType, C1.CustID, C1.CustName, RI.StuffCode, SC.c_StuffName, RT.BedType,
		RT.ReciptCaption, RI.InputEntity + RI.OutputEntity AS Entity, RI.InputWeight + RI.OutputWeight AS Weight,
		case   
			when RT.Deficate_MakeDocKind in (2,3,6,8) 
				then (ISNULL(RI.DeficitValue,0) + ISNULL(RI.DeficitValue2,0) + ISNULL(RI.DeficitValue3,0))
		else 0  end AS bed, 0 AS bes, 1 AS BedBes, 0 as Falg, RT.Dec_TopicCode as TopicCode, RT.Dec_DetailCode as DetailCode,
		case RT.DefaultCTopic_Bes
			when 0  then 0 
			when 1  then S1.c_accCTopicCode
			when 2  then SG.acc_CTopicCode
			when 3  then SC.acc_CTopicCode
			when 4  then  case RT.CustCodeUse4Bes
							when 3 then case  when C1.acc_TopicCode  > 0 then C1.acc_TopicCode  else CG1.acc_TopicCode  end 
							when 2 then case  when C2.acc_TopicCode  > 0 then C2.acc_TopicCode  else CG2.acc_TopicCode  end 
							when 1 then case  when CD1.acc_TopicCode > 0 then CD1.acc_TopicCode else CGD1.acc_TopicCode end
						 else -1 end 
			when 5  then  case RT.CustCodeUse4Bes 
							when 1 then C1.acc_CTopicCode 
							when 2 then C2.acc_CTopicCode 
							when 3 then CD1.acc_CTopicCode 
						 else -1 end 
			when 6  then  LM.acc_CTopicCode
			when 7  then  SPG.acc_CTopicCode
			when 8  then  LPD.acc_CTopicCode
			when 9  then  -1
			when 10 then SG.acc_CTopicCode
			when 11 then RI.acc_CTopicCode
			when 12 then SG.acc_CTopicCode
			when 13 then UD.acc_CTopicCode
			when 28 then UOD.CTopicCode
			when 14 then SPG.acc_CTopicCode
			when 15 then SPG.acc_CTopicCode
			when 16 then SPC.acc_CTopicCode
			when 17 then S2.c_accCTopicCode
			when 25 then C4.acc_CTopicCode
		else 0 end as CTopicCode,
		case RT.DefaultCTopic2_Bes
			when 0  then 0 
			when 1  then S2.c_accCTopicCode2
			when 2  then SG.acc_CTopicCode2
			when 3  then SC.acc_CTopicCode2
			when 4  then  case RT.CustCodeUse4Bes
							when 1 then CG1.acc_CTopicCode2 
							when 2 then CG2.acc_CTopicCode2 
							when 3 then CGD1.acc_CTopicCode2 
						 else -1 end 
			when 5  then  case RT.CustCodeUse4Bes 
							when 1 then C1.acc_CTopicCode2 
							when 2 then C2.acc_CTopicCode2 
							when 3 then CD1.acc_CTopicCode2
						 else -1 end 
			when 6  then  LM.acc_CTopicCode2
			when 7  then  SPG.acc_CTopicCode2
			when 8  then  LPD.acc_CTopicCode2
			when 9  then  -1
			when 10 then SG.acc_CTopicCode2
			when 11 then RI.acc_CTopicCode2
			when 12 then SG.acc_CTopicCode2
			when 13 then UD.acc_CTopicCode2
			when 28 then UOD.CTopicCode2
			when 14 then SPG.acc_CTopicCode2
			when 15 then SPG.acc_CTopicCode2
			when 16 then SPC.acc_CTopicCode2
			when 17 then S2.c_accCTopicCode2
			when 25 then C4.acc_CTopicCode2
			else 0 
		end as CTopicCode2, 0 as CTopicCode3, 1 as kind, R.AidNumber, R.AidDate, RI.AidNumber as IAidNumber, 
		RI.AidDate as IAidDate,	RI.ControlCode, R.ServerID, R.YearID, RI.ItemNote, R.ReciptNote, RI.UnitSellPrice,
		R.MachineName, R.MachineNo, R.MachineInfo, R.TruckNumber, ISNULL(RI.ArzAmount,0) AS ArzAmount, ISNULL(R.reciptsrow,0),
		C2.CustName AS CustName2, U.UnitName, RI.StuffDiameter, RI.PO, R.ArzTypeID, UD.UseUnitName,	UM.UseUnitName as UseUnitNameM,
		RI.ArzRate, CU.CurrenciesName AS ArzName, R.RialsEqual, SE.SellsEmporiumName, C3.CustName as CustName3

FROM			Recipts        R 
	INNER JOIN  ReciptItems    RI   ON R.ReciptID = RI.ReciptID AND R.ServerID = RI.ServerID AND R.YearID = RI.YearID 
	INNER JOIN	SellsEmporiums SE   ON isnull(R.SellsEmporium,1) = SE.SellsEmporium 
	INNER JOIN  StuffCoding    SC   ON RI.StuffCode = SC.c_StuffCode --StuffCoding_R
	INNER JOIN  StuffGroups    SG   ON SC.GroupID = SG.GroupID --StuffGroups_R
	INNER JOIN  Units          U    ON SC.n_UnitCode = U.UnitCode --U 
	INNER JOIN  ReciptTypes    RT   ON R.ReciptType = RT.ReciptType --T 
	INNER JOIN  Stores         S1   ON R.StoreID  = S1.n_StoreID  --Stores_1
	LEFT  JOIN  Stores         S2   ON R.StoreID2 = S2.n_StoreID  --Stores_2
	INNER JOIN  Customers      C1   ON isnull(R.PersonID1,0) = C1.CustID  --CT1
	INNER JOIN  CustomersGroup CG1  ON C1.CustomerGrpID = CG1.CustomerGrpID
	INNER JOIN  Customers      C2   ON isnull(R.PersonID2,0) = C2.CustID  --CT2
	INNER JOIN  CustomersGroup CG2  ON C2.CustomerGrpID = CG2.CustomerGrpID --CG2
	INNER JOIN  Customers      C3   ON isnull(R.PersonID3,0) = C3.CustID  --CT3
	INNER JOIN  CustomersGroup CG3  ON C3.CustomerGrpID = CG3.CustomerGrpID
	INNER JOIN  Customers      C4   ON isnull(R.PersonID4,0) = C4.CustID  --Customers_4
	INNER JOIN  CustomersGroup CG4  ON C4.CustomerGrpID   = CG4.CustomerGrpID --CG4
	INNER JOIN  Customers      CD1  ON isnull(RI.PersonID1,0) = CD1.CustID --Customers_D1
	INNER JOIN  CustomersGroup CGD1 ON CD1.CustomerGrpID = CGD1.CustomerGrpID  --CustomersGroup_D1
	LEFT  JOIN	UseUnits       UM   ON R.UseUnitID        = UM.UseUnitID   --UseUnitsMaster
	LEFT  JOIN  UseUnits       UD   ON RI.UseUnitID       = UD.UseUnitID  ---UI
	INNER JOIN	LookUps        LM   ON isnull(R.SecondType,0)       = LM.LookUpID --LookUps_2
	INNER JOIN	LookUps        LD   ON isnull(RI.SecondTypeItem,0)  = LD.LookUpID 
	INNER JOIN	LookUps        LPD  ON isnull(RI.ProductModel,0)    = LPD.LookUpID --LookUps_1
	LEFT  JOIN	UseOthers      UOM  ON R.UseOtherID       = UOM.UseOtherID 
	LEFT  JOIN	UseOthers      UOD  ON RI.UseOtherID_Item = UOD.UseOtherID  --UO
	INNER JOIN  StuffCoding    SPC  ON isnull(RI.ProductCode,0) = SPC.c_StuffCode --StuffCoding_P
	INNER JOIN  StuffGroups    SPG  ON SPC.GroupID        = SPG.GroupID   ---StuffGroups_P
	INNER JOIN  Currencies     CU   ON isnull(R.ArzTypeID,0)    = CU.CurrenciesID

WHERE   (R.ReciptType     BETWEEN @ReciptTypeFrom   AND @ReciptTypeTo) 
	AND (R.ReciptNumber   BETWEEN @NumberFrom       AND @NumberTo  ) 
	AND	(R.ReciptState < RT.ReciptStateSmallerThan)
	AND	(R.ReciptState    BETWEEN @ReciptStateFrom    AND @ReciptStateTo  ) 
	AND	(C1.CustomerGrpID BETWEEN @CustomerGrpIDFrom  AND @CustomerGrpIDTo ) 
	AND	(R.ReciptDate     BETWEEN @DateFrom  AND @DateTo ) 
	AND	((ISNULL(R.AidDate,'') = '') OR (R.AidDate ='/  /') OR (R.AidDate BETWEEN @AidDateFrom  AND @AidDateTo )) 
	AND	(LM.Code BETWEEN @SecondTpFrom  AND @SecondTpTo ) 
	AND	(ISNULL(R.PersonID1,0) BETWEEN @CustID1Form  AND @CustID1To ) 
	AND	(ISNULL(R.PersonID2,0) BETWEEN @CustID2Form  AND @CustID2To ) 
	AND	(ISNULL(R.PersonID3,0) BETWEEN @CustID3Form  AND @CustID3To ) 
	AND	((RI.TotalInputPrice + RI.TotalOutputPrice) + ISNULL(RI.UnitCommission,0) > 0)
	AND	(R.StoreID BETWEEN @StoreIDFrom   AND @StoreIDTo ) 
	AND (( R.DocNo < 1 ) OR (@AllDocAble = 1)) 
	And (SC.OwnerShipKind <> (Case  RT.Amani_StuffActiveInDoc when 1 then -1 else 1 end )) 
	And	ISNULL( RI.acc_TopicCode ,0 ) >= @ItemTopicCode 
	And	case   RT.Deficate_MakeDocKind 
			when 1 then (ISNULL(RI.DeficitValue,0) + ISNULL(RI.DeficitValue2,0) + ISNULL(RI.DeficitValue3,0))
		else 0  end <> 0 
	AND	(SE.SellsEmporium BETWEEN @SellsEmporiumFrom AND @SellsEmporiumTo) 
	AND	(ISNULL( R.ReciptsRow,0 ) BETWEEN @ReciptsRowFrom AND @ReciptsRowTo)
	AND ((@NotReciptNumber = '-1') or (R.ReciptNumber NOT IN (SELECT part FROM dbo.SplitString(@NotReciptNumber,','))))
	AND ((@NotCustID1      = '-1') or (R.PersonID1    NOT IN (SELECT part FROM dbo.SplitString(@NotCustID1,','))))
	AND ((@addIDFilter     = '-1') or (R.ID               IN (SELECT part FROM dbo.SplitString(@addIDFilter,','))))
	AND ((RT.CheckParentReciptID = 0) OR (ISNULL( R.ParentReciptID,0) <> 0 ))
	AND ((case when RT.FormStateDefault4Doc = 0 then R.ReciptState else RT.FormStateDefault4Doc end) = R.ReciptState)
	
	----------part 11
    ---------------------------------------------------------------------------------------------------------------------------------
	-------------------------کسورات اضافات خطی-------------------------------BED--BES------------------------------------------------
	---------------------------------------------------------------------------------------------------------------------------------
	
	INSERT INTO @retFindReports

SELECT  'P11' as Part, '' as IDs, case @MakeDocKind when 2 then 0 else R.ID end as ID,
		case @MakeDocKind when 2 then 0 else RI.ReciptitemID end as  ReciptitemID,
		case @MakeDocKind when 2 then 0 else R.ReciptID      end as  ReciptID,
		R.StoreID, S1.c_StoreName, case @MakeDocKind when 2 then 0 else R.ReciptNumber end as ReciptNumber,
		R.ReciptDate, R.ReciptType, C1.CustID, C1.CustName, RI.StuffCode, SC.c_StuffName, RT.BedType,
		RT.ReciptCaption + case 
								when InfoKind=0  then ' ارزش افزوده'
								when InfoKind=1  then ' کرايه حمل'
								when InfoKind=2  then ' کنترل مواد(هزينه حمل)'
								when InfoKind=3  then ' کنترل دستمزد'
								when InfoKind=4  then ' کنترل سربار'
								when InfoKind=5  then ' تخفيفات کالا'
								when InfoKind=6  then ' نرخ استاندارد'
								when InfoKind=7  then ' پيش فرض ها'
								when InfoKind=8  then ' حق العمل كاري'
								when InfoKind=9  then ' نحوه پرداخت'
								when InfoKind=10 then ' تخفیف/پورسانت'
								when InfoKind=11 then ' تخفيفات1 کالا'
								when InfoKind=12 then ' تخفيفات2 کالا'
								when InfoKind=13 then ' تخفيفات3 کالا'
								when InfoKind=14 then ' کرايه حمل2'
								when InfoKind=15 then ' مالیات 6 درصد'
								when InfoKind=16 then ' مالیات 3 درصد'
								when InfoKind=17 then ' هزينه پورسانت کالا'
								when InfoKind=18 then ' پورسانت ضریب وزن'								 
							else '' end as ReciptCaption,
		RI.InputEntity + RI.OutputEntity AS Entity,	RI.InputWeight + RI.OutputWeight AS Weight,
		case when (RTA.BedBes = 0)
			then 
				case InfoKind 
					when 0 then --- ارزش افزوده 
						case 
							when RT.Deficate_MakeDocKind in(2,3,4,6,8) then ISNULL(RI.TaxValue,0)
							else 0  
						end
					when 1 then --- کرايه حمل 
						case  
							when RT.Deficate_MakeDocKind in(2,3,6,8) then ROUND(ISNULL(RI.portage,0),0)
							else 0  
						end
					when 2 then --- کنترل مواد 
							case  
							when RT.Deficate_MakeDocKind in(2,3,6,8) then ISNULL(RI.UnitSellPrice2,0)
							else 0  
						end		      
					when 3 then 0 --- کنترل دستمزد  
					when 4 then 0 --- کنترل سربار 
					when 5 then --- تخفيفات خطی  
						case  
							when RT.Deficate_MakeDocKind in(2,5,6,8) 
								then (ISNULL(RI.DeficitValue,0) + ISNULL(RI.DeficitValue2,0) + ISNULL(RI.DeficitValue3,0))
							else 0  
						end
					when 11 then --- تخفيفات خطی  
						case  
							when RT.Deficate_MakeDocKind in(2,5,6) then (ISNULL(RI.DeficitValue,0))
							else 0  
						end
					when 12 then --- تخفيفات خطی  
						case  
							when RT.Deficate_MakeDocKind in(2,5,6) then  ISNULL(RI.DeficitValue2, 0) 
							else 0  
						end
					when 13 then --- تخفيفات خطی  
						case  
							when RT.Deficate_MakeDocKind in(2,5,6) then  ISNULL(RI.DeficitValue3, 0)
							else 0  
						end 
					when 6 then 0 --- نرخ استاندارد   
					when 7 then 0 --- پيش فرضها  
					when 8 then   --- حق العمل کاري 
						case 
							when RT.Deficate_MakeDocKind in(2,3,6,8) 
								then ISNULL(round((RI.OutputEntity + RI.InputEntity) * RI.UnitCommission,0),0)
							else 0 
						end --- حق العمل کاري
					when 15 then --- ماليات  3 درصد  
						case 
							when RT.Deficate_MakeDocKind in(2,3,4,6,8) then round(ISNULL(RI.TaxValue,0)* 2/3,0)
							else 0  
						end
					when 16 then --- 6 درصد ماليات 
						case 
							when RT.Deficate_MakeDocKind in(2,3,4,6,8) then ISNULL(RI.TaxValue,0) - round(ISNULL(RI.TaxValue,0)* 2/3,0)
							else 0  
						end 
					when 17 then --- 17 درصد پورسانت 
						case 
							when RT.Deficate_MakeDocKind in(2,3,4,6,8) then round (ISNULL(RI.TotallSellPrice,0)* ISNULL(RI.Commission,0)/100,0)
							else 0  
						end 
					when 18 then --- 18 ,وزن پورسانت 
						case 
							when RT.Deficate_MakeDocKind in(2,3,4,6,8) then CommissionPrice 
							else 0  
						end 
					else 0

				end
			else 0 
		end AS bed ,
		case when (RTA.BedBes = 1 )
			then 
				case InfoKind 
					when 0 then --- ارزش افزوده 
						case 
							when RT.Deficate_MakeDocKind in(2,3,4,6,8) then ISNULL(RI.TaxValue,0)
							else 0  
						end
					when 1 then --- کرايه حمل 
						case 
							when RT.Deficate_MakeDocKind in(2,3,6,8) then ROUND(ISNULL(RI.portage,0),0)
							else 0  
						end
					when 2 then  --- کنترل مواد  
					case when isnull(Article,0) <> 0 then ROUND(Article,0) else 
						case 
							when RT.Deficate_MakeDocKind in(2,3,6,8) then ISNULL(RI.UnitSellPrice2,0)
							else 0  
						end
						end
					when 3 then ROUND(Wage,0) --- کنترل دستمزد  
					when 4 then ROUND(Scoria,0) --- کنترل سربار 
					when 5 then --- تخفيفات خطی  
						case  
							when RT.Deficate_MakeDocKind in(2,6,8) 
								then (ISNULL(RI.DeficitValue,0) + ISNULL(RI.DeficitValue2,0) + ISNULL(RI.DeficitValue3,0))
							else 0  
						end
					when 11 then --- تخفيفات خطی  
						case  
							when RT.Deficate_MakeDocKind in(2,5,6) then (ISNULL(RI.DeficitValue,0))
							else 0  
						end
					when 12 then --- تخفيفات خطی  
						case  
							when RT.Deficate_MakeDocKind in(2,5,6) then  ISNULL(RI.DeficitValue2,0) 
							else 0  
						end
					when 13 then --- تخفيفات خطی  
						case  
							when RT.Deficate_MakeDocKind in(2,5,6) then  ISNULL(RI.DeficitValue3,0)
							else 0  
						end
					when 6 then 0 --- نرخ استاندارد   
					when 7 then 0 --- پيش فرضها  
					when 8 then  --- حق العمل کاري 
						case  
							when RT.Deficate_MakeDocKind in(2,3,6,8)
								then ISNULL(round((RI.OutputEntity + RI.InputEntity) * RI.UnitCommission,0),0)
							else 0  
						end
	                when 15 then --- ماليات  3 درصد  
						case 
							when RT.Deficate_MakeDocKind in(2,3,4,6,8) then round(ISNULL(RI.TaxValue,0) * 2/3,0)
							else 0  
						end
					when 16 then --- 6 درصد ماليات 
						case 
							when RT.Deficate_MakeDocKind in(2,3,4,6,8) 
								then ISNULL(RI.TaxValue,0) - round(ISNULL(RI.TaxValue,0) * 2/3,0)
							else 0  
						end
						 --- حق العمل کاري 
					when 17 then --- 6 درصد پورسانت 
						case 
							when RT.Deficate_MakeDocKind in(2,3,4,6,8) 
								then round (ISNULL(RI.TotallSellPrice,0) * ISNULL(RI.Commission,0) / 100,0)
							else 0  
						end
					when 18 then --- 18 ,وزن پورسانت 
						case 
							when RT.Deficate_MakeDocKind in(2,3,4,6,8) then CommissionPrice

							else 0  
						end 

				else 0 end 
		else 0  end AS  bes, BedBes + 1 as BedBes, 0 as Falg,
		case when  RTA.TopicCode < 0  
			then  
				case (case  RTA.TopicCode when -1 then RT.DefaultTopic_Bed else RT.DefaultTopic_Bes end )
					when 0 then 0 
					when 1 then 
						case SC.OwnerShipKind when 0 then S1.c_accTopicCode else SC.Acc_BidTopicCode end 
					when 2 then SG.acc_IncomeTopicCode
					when 3 then SC.Acc_InComeTopicCode
					when 4 then 
						case  (case  RTA.TopicCode when -1 then RT.CustCodeUse4Bed  else RT.CustCodeUse4Bes end ) 
							when 3 then case  when C1.acc_TopicCode  > 0  then C1.acc_TopicCode  else CG1.acc_TopicCode end 
							when 2 then case  when C2.acc_TopicCode  > 0  then C2.acc_TopicCode  else CG2.acc_TopicCode end 
							when 1 then case  when CD1.acc_TopicCode > 0  then CD1.acc_TopicCode else CGD1.acc_TopicCode end
							when 4 then case  when C3.acc_TopicCode  > 0  then C3.acc_TopicCode  else CG3.acc_TopicCode end
							when 5 then case  when C4.acc_TopicCode  > 0  then C4.acc_TopicCode  else CG4.acc_TopicCode end
							else -1 
						end 
					when 5  then  C1.acc_TopicCode  
					when 6  then  LM.acc_TopicCode
					when 7  then  SG.acc_IncomeTopicCode
					when 8  then  LPD.acc_TopicCode
					when 9  then  RT.ConstTopicCode_Bed
					when 10 then SG.acc_AFootInComingTopicCode
					when 11 then RI.acc_TopicCode
					when 12 then SG.acc_BidTopicCode
					when 14 then SG.acc_BidTopicCode
					when 15 then SG.acc_AFootInComingTopicCode
					when 16 then SC.Acc_BidTopicCode
					when 17 then case SC.OwnerShipKind 	when 0 then S2.c_accTopicCode	else SC.Acc_BidTopicCode end 			
					when 18 then C3.acc_TopicCode  ---مشتری3								
					when 19 then CD1.acc_TopicCode ---مشتری Details								
					when 20 then C1.acc_TopicCode    ---مشتری1				
					when 21 then C2.acc_TopicCode  ---مشتری2					
					when 22 then  RI.acc_TopicCode  --22-اگر کد حساب در ReciptItem مخالف صفر بود ReciptItem در غیر اینصورت واحد سازمانی				
					when 23 then SE.TopicCode  ---مرکز فروش					
					when 24 then LD.acc_TopicCode   --24نوع اطلاعات Details					
					when 25 then C4.acc_TopicCode  --مشتری4					
					when 26 then case when LM.acc_TopicCode <> 0  then LM.acc_TopicCode else C1.acc_TopicCode end  --اگر‌نوع‌اطلاعات‌Master<>0بود‌نوع‌اطلاعات‌Master‌وگرنه‌اطلاعات‌مشتری					
					when 27 then case when SC.Acc_BidTopicCode<>0   then SC.Acc_BidTopicCode else SG.acc_BidTopicCode end   --کدینگ کالا اگر صفر بود از گروه کالا					
					when 28 then  UOD.CTopicCode2  --سایر محل های مصرف
					else 0 
				end 
		else RTA.TopicCode end as TopicCode ,
		case   RTA.DetailCode
			when -1  then C1.acc_DetailCode 
			when -2  then C2.acc_DetailCode 
			when -3  then CD1.acc_DetailCode
			when -4  then C3.acc_DetailCode  
			when -6  then LM.acc_DetailCode
			when -11 then RI.acc_DetailCode 
			when -12 then S1.c_accDetailCode
			when -13 then UM.acc_DetailCode
			when -14 then UOM.DetailCode
			when -16 then SC.acc_DetaiCode							
			when -23 then SE.DetailCode 
			when -24 then LD.acc_DetailCode
			when -26 then  LM.acc_DetailCode  ---shajeei abedi
			else  
			case when  RTA.DetailCode	<0 then 
				case (
						case  RTA.DetailCode 
							when -100 then   RT.Defaultdetail_Bed
							when -101 then  RT.Defaultdetail_Bes 
						end 
					 )
						when 1 then   case SC.OwnerShipKind 	when 0 then S1.c_accDetailCode else  SC.acc_DetaiCode end 
						when 2 then  SG.acc_DetailCode
						when 3 then  SC.acc_DetaiCode
					else 0
				end 
				else RTA.DetailCode 
			end 
		end as DetailCode ,
		case RTA.CTopicCode  
			when -1 then C1.acc_CTopicCode 
			when -2 then C2.acc_CTopicCode 
			when -3 then CD1.acc_CTopicCode 
			when -4 then C3.acc_CTopicCode  
			when -6 then LM.acc_CTopicCode		
			when -11 then RI.acc_CTopicCode
			when -12 then S1.c_accCTopicCode 
			when -13 then UM.acc_CTopicCode
			when -14 then UOM.CTopicCode
			when -16 then SC.acc_CTopicCode								 
			when -23 then SE.CTopicCode 
			when -24 then LD.acc_CTopicCode
			when -26 then LM.acc_CTopicCode 
       			else 
		  		case 	(
							case  RTA.CTopicCode 
								when -100 then   RT.DefaultCTopic_Bed 
								when -101 then  RT.DefaultCTopic_Bes 
								else -999
							end 
						 )
					when 1 then S1.c_accCTopicCode
					when 2 then SG.acc_CTopicCode
					when 3 then SC.acc_CTopicCode

				else RTA.CTopicCode 
      			end 
		end as CTopicCode ,
		case RTA.CTopicCode2 
			when -1 then C1.acc_CTopicCode2 
			when -2 then C2.acc_CTopicCode2 
			when -3 then CD1.acc_CTopicCode2 
			when -4 then C3.acc_CTopicCode2  
			when -6 then LM.acc_CTopicCode2
			when -11 then RI.acc_CTopicCode2
			when -12 then S1.c_accCTopicCode2 
			when -13 then UM.acc_CTopicCode2
			when -14 then UOM.CTopicCode2
			when -16 then SC.acc_CTopicCode2								 
			when -23 then SE.CTopicCode2 
			when -24 then LD.acc_CTopicCode2
			when -26 then  LM.acc_CTopicCode2  
       			else 
		  		case 	(
							case  RTA.CTopicCode2 
								when -100 then   RT.DefaultCTopic2_Bed 
								when -101 then  RT.DefaultCTopic2_Bes 
								else -999
							end 
						 )
					when 1 then S1.c_accCTopicCode2
					when 2 then SG.acc_CTopicCode2
					when 3 then SC.acc_CTopicCode2

			else RTA.CTopicCode2  
			end
		end as CTopicCode2 ,
		case RTA.CTopicCode3 
			when -1 then C1.acc_CTopicCode3 
			when -2 then C2.acc_CTopicCode3 
			when -3 then CD1.acc_CTopicCode3 
			when -4 then C3.acc_CTopicCode3  
			when -6 then LM.acc_CTopicCode3		
			when -11 then RI.acc_CTopicCode3
			when -12 then S1.CTopicCode3 
			when -13 then UM.acc_CTopicCode3
			when -14 then UOM.CTopicCode3
			when -16 then SC.acc_CTopicCode3								 
			when -23 then SE.CTopicCode3 
			when -24 then LD.acc_CTopicCode3
			when -26 then  LM.acc_CTopicCode3 
       			else 
		  		case 	(
							case  RTA.CTopicCode3 
								when -100 then   RT.DefaultCTopic3_Bed 
								when -101 then  RT.DefaultCTopic3_Bes 
								else -999
							end 
						 )
					when 1 then S1.CTopicCode3
					when 2 then SG.acc_CTopicCode3
					when 3 then SC.acc_CTopicCode3

				else RTA.CTopicCode3  end
		end as CTopicCode3, 1 as kind, R.AidNumber, R.AidDate, RI.AidNumber as IAidNumber, RI.AidDate as IAidDate, 
		RI.ControlCode, R.ServerID, R.YearID, RTA.Note + ' - ' + RI.ItemNote as ItemNote, R.ReciptNote, RI.UnitSellPrice, 
		R.MachineName, R.MachineNo, R.MachineInfo, R.TruckNumber,
		case InfoKind 	when 18 then ISNULL(RI.CommissionCurrency,0) else ISNULL(RI.ArzAmount,0) end  AS ArzAmount, 
		ISNULL(R.reciptsrow,0),	C2.CustName AS CustName2, U.UnitName, RI.StuffDiameter, RI.PO, R.ArzTypeID, UD.UseUnitName,
		UM.UseUnitName as UseUnitNameM, RI.ArzRate,CU.CurrenciesName AS ArzName, R.RialsEqual, SE.SellsEmporiumName,
		C3.CustName as CustName3

FROM			Recipts        R 
	INNER JOIN  ReciptItems    RI   ON R.ReciptID = RI.ReciptID AND R.ServerID = RI.ServerID AND R.YearID = RI.YearID 
	INNER JOIN	SellsEmporiums SE   ON isnull(R.SellsEmporium,1) = SE.SellsEmporium
	INNER JOIN  StuffCoding    SC   ON RI.StuffCode = SC.c_StuffCode 
	INNER JOIN  StuffGroups    SG   ON SC.GroupID = SG.GroupID 
	INNER JOIN  Units          U    ON SC.n_UnitCode = U.UnitCode 
	INNER JOIN  ReciptTypes    RT   ON R.ReciptType = RT.ReciptType 
	LEFT  JOIN	ReciptTypesAccCode RTA ON RT.ReciptType = RTA.ReciptType 
	INNER JOIN  Stores         S1   ON R.StoreID  = S1.n_StoreID 
	LEFT  JOIN  Stores         S2   ON R.StoreID2 = S2.n_StoreID 
	INNER JOIN  Customers      C1   ON isnull(R.PersonID1,0) = C1.CustID
	INNER JOIN  CustomersGroup CG1  ON C1.CustomerGrpID = CG1.CustomerGrpID
	INNER JOIN  Customers      C2   ON isnull(R.PersonID2,0) = C2.CustID
	INNER JOIN  CustomersGroup CG2  ON C2.CustomerGrpID = CG2.CustomerGrpID
	INNER JOIN  Customers      C3   ON isnull(R.PersonID3,0) = C3.CustID
	INNER JOIN  CustomersGroup CG3  ON C3.CustomerGrpID = CG3.CustomerGrpID
	INNER JOIN  Customers      C4   ON isnull(R.PersonID4,0) = C4.CustID  
	INNER JOIN  CustomersGroup CG4  ON C4.CustomerGrpID   = CG4.CustomerGrpID
	INNER JOIN  Customers      CD1  ON isnull(RI.PersonID1,0) = CD1.CustID
	INNER JOIN  CustomersGroup CGD1 ON CD1.CustomerGrpID = CGD1.CustomerGrpID
	LEFT  JOIN	UseUnits       UM   ON R.UseUnitID        = UM.UseUnitID 
	LEFT  JOIN  UseUnits       UD   ON RI.UseUnitID       = UD.UseUnitID 
	INNER JOIN	LookUps        LM   ON isnull(R.SecondType,0)       = LM.LookUpID 
	INNER JOIN	LookUps        LD   ON isnull(RI.SecondTypeItem,0)  = LD.LookUpID 
	INNER JOIN	LookUps        LPD  ON isnull(RI.ProductModel,0)    = LPD.LookUpID
	LEFT  JOIN	UseOthers      UOM  ON R.UseOtherID       = UOM.UseOtherID  
	LEFT  JOIN	UseOthers      UOD  ON RI.UseOtherID_Item = UOD.UseOtherID  
	INNER JOIN  StuffCoding    SPC  ON isnull(RI.ProductCode,0) = SPC.c_StuffCode 
	INNER JOIN  StuffGroups    SPG  ON SPC.GroupID        = SPG.GroupID 
	INNER JOIN  Currencies     CU   ON isnull(R.ArzTypeID,0)    = CU.CurrenciesID

WHERE   (R.ReciptType   BETWEEN @ReciptTypeFrom AND @ReciptTypeTo) 
	AND (R.ReciptNumber BETWEEN @NumberFrom  AND @NumberTo  ) 
	AND (R.ReciptState < ReciptStateSmallerThan) 
	AND (R.ReciptState    BETWEEN @ReciptStateFrom  AND @ReciptStateTo  ) 
	AND	(C1.CustomerGrpID BETWEEN @CustomerGrpIDFrom  AND @CustomerGrpIDTo ) 
	AND (R.ReciptDate     BETWEEN @DateFrom  AND @DateTo ) 
	AND ((ISNULL(R.AidDate,'') ='')OR(R.AidDate ='/  /')OR (R.AidDate BETWEEN @AidDateFrom  AND @AidDateTo )) 
	AND	(LM.Code BETWEEN @SecondTpFrom  AND @SecondTpTo ) 
	AND	(ISNULL(R.PersonID1,0) BETWEEN @CustID1Form  AND @CustID1To ) 
	AND	(ISNULL(R.PersonID2,0) BETWEEN @CustID2Form  AND @CustID2To ) 
	AND	(ISNULL(R.PersonID3,0) BETWEEN @CustID3Form  AND @CustID3To ) 
	AND	(R.StoreID BETWEEN @StoreIDFrom   AND @StoreIDTo ) 
	AND	(( R.DocNo < 1) OR (@AllDocAble = 1)) 
	And	(SC.OwnerShipKind <> (Case  RT.Amani_StuffActiveInDoc when 1 then -1 else 1 end )) 
	And ISNULL(RI.acc_TopicCode,0) >= @ItemTopicCode 
	And	(case InfoKind 
					when 0 then --- ارزش افزوده 
						case 
							when RT.Deficate_MakeDocKind in(2,3,4,6,8) then ISNULL(RI.TaxValue,0)
						else 0  end
					when 1 then --- کرايه حمل 
						case 
							when RT.Deficate_MakeDocKind in(2,3,6,8) then ROUND(ISNULL(RI.portage,0),0)
						else 0  end
					when 2 then  --- کنترل مواد  
					case when isnull(Article,0) <> 0 then ROUND(Article,0) else 
						case 
							when RT.Deficate_MakeDocKind in(2,3,6,8) then ISNULL(RI.UnitSellPrice2,0)
						else 0  end
					end 
					when 3 then Wage --- کنترل دستمزد  
					when 4 then Scoria --- کنترل سربار 
					when 5 then --- تخفيفات خطی  
						case  
							when RT.Deficate_MakeDocKind in(2,5,6,8) 
								then (ISNULL(RI.DeficitValue,0) + ISNULL(RI.DeficitValue2,0) + ISNULL(RI.DeficitValue3,0))
						else 0  end
					when 6 then 0 --- نرخ استاندارد   
					when 7 then 0 --- پيش فرضها  
					when 8 then  --- حق العمل کاري 
						case  
							when RT.Deficate_MakeDocKind in(2,3,6,8)  
								then ISNULL(round((RI.OutputEntity + RI.InputEntity) * RI.UnitCommission,0),0)
						else 0  end
					when 11 then --- تخفيفات خطی  
						case  
							when RT.Deficate_MakeDocKind in(2,5,6) then (ISNULL(RI.DeficitValue,0))
						else 0  end
					when 12 then --- تخفيفات خطی  
						case  
							when RT.Deficate_MakeDocKind in(2,5,6) then  ISNULL(RI.DeficitValue2, 0) 
						else 0  end
					when 13 then --- تخفيفات خطی  
						case  
							when RT.Deficate_MakeDocKind in(2,5,6) then  ISNULL(RI.DeficitValue3, 0)
						else 0  end											 
						 --- حق العمل کاري 
				    when 15 then --- ماليات  3 درصد  
						case 
							when RT.Deficate_MakeDocKind in(2,3,4,6,8) then round(ISNULL(RI.TaxValue,0)* 2/3,0)
						else 0  end
					when 16 then --- 6 درصد ماليات 
						case 
							when RT.Deficate_MakeDocKind in(2,3,4,6,8) then ISNULL(RI.TaxValue,0) - round(ISNULL(RI.TaxValue,0)* 2/3,0)
						else 0  end
					when 17 then --- 17 درصد پورسانت 
						case 
							when RT.Deficate_MakeDocKind in(2,3,4,6,8) then round (ISNULL(RI.TotallSellPrice,0)* ISNULL(RI.Commission,0)/100,0)
						else 0  end
					when 18 then --- 18 ,وزن پورسانت 
						case 
							when RT.Deficate_MakeDocKind in(2,3,4,6,8) then CommissionPrice

						else 0  end 
				else 0 end 
		) <> 0 
	AND	(SE.SellsEmporium BETWEEN @SellsEmporiumFrom AND @SellsEmporiumTo)  
	AND	(ISNULL(R.ReciptsRow,0) BETWEEN @ReciptsRowFrom    AND @ReciptsRowTo)
	AND ((@NotReciptNumber = '-1') or (R.ReciptNumber NOT IN (SELECT part FROM dbo.SplitString(@NotReciptNumber,','))))
	AND ((@NotCustID1      = '-1') or (R.PersonID1    NOT IN (SELECT part FROM dbo.SplitString(@NotCustID1,','))))
	AND ((@addIDFilter     = '-1') or (R.ID               IN (SELECT part FROM dbo.SplitString(@addIDFilter,','))))
	AND ((RT.CheckParentReciptID = 0) OR (ISNULL( R.ParentReciptID,0) <> 0 ))
	AND ((CASE WHEN RT.FormStateDefault4Doc = 0 THEN R.ReciptState ELSE RT.FormStateDefault4Doc END) = R.ReciptState)

	----------part 12
    ---------------------------------------------------------------------------------------------------------------------------------
	---------------add for AmountInAccountForm :-----  براي اينکه در حساب خريدار و فروشنده گردش داده شود----------BED----------------
	---------------------------------------------------------------------------------------------------------------------------------
	
INSERT INTO @retFindReports

SELECT  'P12' as Part, '' as IDs, R.ID, RI.ReciptitemID, RI.ReciptID, R.StoreID, S1.c_StoreName, R.ReciptNumber,
		R.ReciptDate, R.ReciptType, C1.CustID, C1.CustName, RI.StuffCode, SC.c_StuffName, RT.BedType,
		RT.ReciptCaption, RI.InputEntity + RI.OutputEntity AS Entity, RI.InputWeight + RI.OutputWeight AS Weight,
		TotallSellPrice AS bed, 0 AS bes, 1 AS BedBes, 0 as Falg, 
		case  when C1.acc_TopicCode >0 then C1.acc_TopicCode else CG1.acc_TopicCode end  as TopicCode ,
		C1.acc_DetailCode  as DetailCode, CG1.acc_CTopicCode as CTopicCode,	CG1.acc_CTopicCode2  as CTopicCode2,
		CG1.acc_CTopicCode3  as CTopicCode3,1 as kind, R.AidNumber, R.AidDate, RI.AidNumber as IAidNumber,
		RI.AidDate as IAidDate, RI.ControlCode, R.ServerID, R.YearID, RI.ItemNote, R.ReciptNote, RI.UnitSellPrice,
		R.MachineName, R.MachineNo, R.MachineInfo, R.TruckNumber, ISNULL(RI.ArzAmount,0) AS ArzAmount,
		ISNULL(R.reciptsrow,0) as reciptsrow, C2.CustName AS CustName2, U.UnitName, RI.StuffDiameter, RI.PO,
		R.ArzTypeID, UD.UseUnitName, UM.UseUnitName as UseUnitNameM, RI.ArzRate, CU.CurrenciesName AS ArzName,
		R.RialsEqual, SE.SellsEmporiumName, C3.CustName as CustName3

FROM			Recipts        R 
	INNER JOIN  ReciptItems    RI   ON R.ReciptID = RI.ReciptID AND R.ServerID = RI.ServerID AND R.YearID = RI.YearID 
	INNER JOIN	SellsEmporiums SE   ON isnull(R.SellsEmporium,1) = SE.SellsEmporium 
	INNER JOIN  StuffCoding    SC   ON RI.StuffCode = SC.c_StuffCode   --- StuffCoding_R
	INNER JOIN  Units          U    ON SC.n_UnitCode = U.UnitCode 
	INNER JOIN  ReciptTypes    RT   ON R.ReciptType = RT.ReciptType 
	INNER JOIN  Stores         S1   ON R.StoreID  = S1.n_StoreID 
	INNER JOIN  Customers      C1   ON isnull(R.PersonID1,0) = C1.CustID
	INNER JOIN  CustomersGroup CG1  ON C1.CustomerGrpID = CG1.CustomerGrpID
	INNER JOIN  Customers      C2   ON isnull(R.PersonID2,0) = C2.CustID
	INNER JOIN  CustomersGroup CG2  ON C2.CustomerGrpID = CG2.CustomerGrpID
	INNER JOIN  Customers      C3   ON isnull(R.PersonID3,0) = C3.CustID
	INNER JOIN  CustomersGroup CG3  ON C3.CustomerGrpID = CG3.CustomerGrpID
	LEFT  JOIN	UseUnits       UM   ON R.UseUnitID        = UM.UseUnitID    --UseUnitsMaster
	LEFT  JOIN  UseUnits       UD   ON RI.UseUnitID       = UD.UseUnitID    --UseUnits
	INNER JOIN	LookUps        LM   ON isnull(R.SecondType,0)       = LM.LookUpID --LookUps_2
	INNER JOIN  Currencies     CU   ON isnull(R.ArzTypeID,0)    = CU.CurrenciesID



WHERE   (R.ReciptType   BETWEEN @ReciptTypeFrom AND @ReciptTypeTo) 
	AND (R.ReciptNumber BETWEEN @NumberFrom  AND @NumberTo  ) 
	AND (R.ReciptState < ReciptStateSmallerThan) 
	AND RT.AmountInAccountForm = 1 
	And	(R.ReciptState BETWEEN @ReciptStateFrom  AND @ReciptStateTo  ) 
	AND	(C1.CustomerGrpID BETWEEN @CustomerGrpIDFrom  AND @CustomerGrpIDTo ) 
	AND (LM.Code BETWEEN @SecondTpFrom  AND @SecondTpTo ) 
	AND	(R.ReciptDate BETWEEN @DateFrom  AND @DateTo ) 
	AND	((ISNULL(R.AidDate,'') ='')OR(R.AidDate ='/  /')OR (R.AidDate BETWEEN @AidDateFrom  AND @AidDateTo )) 
	AND	(ISNULL(R.PersonID1,0) BETWEEN @CustID1Form  AND @CustID1To ) 
	AND	(ISNULL(R.PersonID2,0) BETWEEN @CustID2Form  AND @CustID2To ) 
	AND	(ISNULL(R.PersonID3,0) BETWEEN @CustID3Form  AND @CustID3To ) 
	AND	(R.StoreID BETWEEN @StoreIDFrom   AND @StoreIDTo ) 
	AND ((R.DocNo < 1) OR (@AllDocAble=1)) 
	And	(SC.OwnerShipKind <> (Case RT.Amani_StuffActiveInDoc when 1 then -1 else 1 end )) 
	And ISNULL( RI.acc_TopicCode ,0 ) >= @ItemTopicCode 
	AND	(SE.SellsEmporium BETWEEN @SellsEmporiumFrom AND @SellsEmporiumTo)  
	AND	(ISNULL( R.ReciptsRow,0 ) BETWEEN @ReciptsRowFrom AND @ReciptsRowTo) 
	AND	((RI.TotalInputPrice + RI.TotalOutputPrice) + ISNULL(RI.UnitCommission,0) > 0)
	AND ((@NotReciptNumber = '-1') or (R.ReciptNumber NOT IN (SELECT part FROM dbo.SplitString(@NotReciptNumber,','))))
	AND ((@NotCustID1      = '-1') or (R.PersonID1    NOT IN (SELECT part FROM dbo.SplitString(@NotCustID1,','))))
	AND ((@addIDFilter     = '-1') or (R.ID               IN (SELECT part FROM dbo.SplitString(@addIDFilter,','))))
	AND ((RT.CheckParentReciptID = 0) OR (ISNULL( R.ParentReciptID,0) <> 0 ))
	AND ((case when RT.FormStateDefault4Doc = 0 then R.ReciptState else RT.FormStateDefault4Doc end) = R.ReciptState)

	----------part 13
    ---------------------------------------------------------------------------------------------------------------------------------
	-------------------------haqolamal-------------------------------BES-------------------------------------------------------------
	---------------------------------------------------------------------------------------------------------------------------------
	
INSERT INTO @retFindReports

SELECT  'P13' as Part, '' as IDs, R.ID, RI.ReciptitemID, RI.ReciptID, R.StoreID, S1.c_StoreName, R.ReciptNumber,
		R.ReciptDate, R.ReciptType, C1.CustID, C1.CustName, RI.StuffCode, SC.c_StuffName, RT.BedType, 
		RT.ReciptCaption, RI.InputEntity + RI.OutputEntity AS Entity, RI.InputWeight + RI.OutputWeight AS Weight,
		0 as bed , TotallSellPrice AS bes, 2 AS BedBes, 0 as Falg,
		case when C1.acc_TopicCode > 0 then C1.acc_TopicCode else CG1.acc_TopicCode end as TopicCode ,
		C1.acc_DetailCode  as DetailCode, CG1.acc_CTopicCode as CTopicCode, CG1.acc_CTopicCode2 as CTopicCode2,
		CG1.acc_CTopicCode3  as CTopicCode3, 1 as kind, R.AidNumber, R.AidDate, RI.AidNumber as IAidNumber,
		RI.AidDate as IAidDate, RI.ControlCode, R.ServerID, R.YearID, RI.ItemNote, R.ReciptNote, 
		RI.UnitSellPrice, R.MachineName, R.MachineNo, R.MachineInfo, R.TruckNumber, 
		ISNULL(RI.ArzAmount,0) AS ArzAmount, ISNULL(R.reciptsrow,0) as reciptsrow , 
		C2.CustName AS CustName2, U.UnitName, RI.StuffDiameter, RI.PO, R.ArzTypeID, UD.UseUnitName,
		UM.UseUnitName as UseUnitNameM, RI.ArzRate, CU.CurrenciesName AS ArzName, R.RialsEqual,
		SE.SellsEmporiumName, C3.CustName as CustName3

FROM			Recipts        R 
	INNER JOIN  ReciptItems    RI   ON R.ReciptID = RI.ReciptID AND R.ServerID = RI.ServerID AND R.YearID = RI.YearID 
	INNER JOIN	SellsEmporiums SE   ON isnull(R.SellsEmporium,1) = SE.SellsEmporium 
	INNER JOIN  StuffCoding    SC   ON RI.StuffCode = SC.c_StuffCode  
	INNER JOIN  Units          U    ON SC.n_UnitCode = U.UnitCode 
	INNER JOIN  ReciptTypes    RT   ON R.ReciptType = RT.ReciptType 
	INNER JOIN  Stores         S1   ON R.StoreID  = S1.n_StoreID 
	INNER JOIN  Customers      C1   ON isnull(R.PersonID1,0) = C1.CustID
	INNER JOIN  CustomersGroup CG1  ON C1.CustomerGrpID = CG1.CustomerGrpID
	INNER JOIN  Customers      C2   ON isnull(R.PersonID2,0) = C2.CustID
	INNER JOIN  CustomersGroup CG2  ON C2.CustomerGrpID = CG2.CustomerGrpID
	INNER JOIN  Customers      C3   ON isnull(R.PersonID3,0) = C3.CustID
	INNER JOIN  CustomersGroup CG3  ON C3.CustomerGrpID = CG3.CustomerGrpID
	LEFT  JOIN	UseUnits       UM   ON R.UseUnitID        = UM.UseUnitID    
	LEFT  JOIN  UseUnits       UD   ON RI.UseUnitID       = UD.UseUnitID  
	INNER JOIN	LookUps        LM   ON isnull(R.SecondType,0)       = LM.LookUpID 
	INNER JOIN  Currencies     CU   ON isnull(R.ArzTypeID,0)    = CU.CurrenciesID


WHERE	(R.ReciptType   BETWEEN @ReciptTypeFrom AND @ReciptTypeTo) 
	AND (R.ReciptNumber BETWEEN @NumberFrom     AND @NumberTo ) 
	AND	(R.ReciptState < ReciptStateSmallerThan) 
	AND (RT.AmountInAccountForm = 1 ) 
	AND	(R.ReciptState    BETWEEN @ReciptStateFrom    AND @ReciptStateTo ) 
	AND	(C1.CustomerGrpID BETWEEN @CustomerGrpIDFrom  AND @CustomerGrpIDTo ) 
	AND	(LM.Code      BETWEEN @SecondTpFrom  AND @SecondTpTo ) 
	AND	(R.ReciptDate BETWEEN @DateFrom      AND @DateTo ) 
	AND ((ISNULL(R.AidDate,'') ='')OR(R.AidDate ='/  /')OR (R.AidDate BETWEEN @AidDateFrom  AND @AidDateTo )) 
	AND	(ISNULL(R.PersonID1,0) BETWEEN @CustID1Form  AND @CustID1To ) 
	AND	(ISNULL(R.PersonID2,0) BETWEEN @CustID2Form  AND @CustID2To ) 
	AND	(ISNULL(R.PersonID3,0) BETWEEN @CustID3Form  AND @CustID3To ) 
	AND	(R.StoreID BETWEEN @StoreIDFrom   AND @StoreIDTo ) 
	AND	(( R.DocNo < 1) OR (@AllDocAble=1)) 
	AND	(SC.OwnerShipKind <> ( Case  RT.Amani_StuffActiveInDoc when 1 then -1 else 1 end )) 
	AND	ISNULL( RI.acc_TopicCode ,0 ) >= @ItemTopicCode 
	AND	(SE.SellsEmporium BETWEEN @SellsEmporiumFrom AND @SellsEmporiumTo)  
	AND (ISNULL(R.ReciptsRow,0 ) BETWEEN @ReciptsRowFrom AND @ReciptsRowTo) 
	AND	((RI.TotalInputPrice + RI.TotalOutputPrice) + ISNULL(RI.UnitCommission,0) > 0)
	AND ((@NotReciptNumber = '-1') or (R.ReciptNumber NOT IN (SELECT part FROM dbo.SplitString(@NotReciptNumber,','))))
	AND ((@NotCustID1      = '-1') or (R.PersonID1    NOT IN (SELECT part FROM dbo.SplitString(@NotCustID1,','))))
	AND ((@addIDFilter     = '-1') or (R.ID               IN (SELECT part FROM dbo.SplitString(@addIDFilter,','))))
	AND ((RT.CheckParentReciptID = 0) OR (ISNULL( R.ParentReciptID,0) <> 0 ))
	AND ((case when RT.FormStateDefault4Doc = 0 then R.ReciptState else RT.FormStateDefault4Doc end) = R.ReciptState)

	----------part 14
    ---------------------------------------------------------------------------------------------------------------------------------
	--------------------------takhfif 100 darsad-------------------------------------BES---------------------------------------------
	---------------------------------------------------------------------------------------------------------------------------------

	UPDATE @retFindReports SET bed = ROUND(bed,0), bes = ROUND(bes,0)

	INSERT INTO @retFindReports

	SELECT  Part, '' as IDs, ID, ReciptItemID, ReciptID, StoreID, StoreName, ReciptNumber, ReciptDate, ReciptType, 
			CustID, CustName, StuffCode, c_StuffName, BedType, ReciptCaption, Entity, Weight,
			case when  Falg = 1 then bes else 0 end as bed, case when  Falg=1 then bed else 0 end as bes,
			0 as BedBes, Falg, TopicCode, DetailCode, CTopicCode, CTopicCode2, CTopicCode3, kind, AidNumber, 
			AidDate, IAidNumber, IAidDate, ControlCode, ServerID, YearID, ItemNote, ReciptNote, UnitSellPrice, MachineName,
			MachineNo, MachineInfo, TruckNumber, ArzAmount, reciptsrow, CustName2, UnitName, StuffDiameter , PO, ArzTypeID, 
			UseUnitName, UseUnitName as UseUnitNameM, ArzRate, ArzName, RialsEqual,	SellsEmporiumName, CustName3

	from @retFindReports
	where Falg =1
	
	RETURN
END

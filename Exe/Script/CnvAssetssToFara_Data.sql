--CnvAssetssToFara_Data   1404/08/21

USE Fara_DataBase 
-- Assets.Config
SET IDENTITY_INSERT Assets.Config ON
INSERT INTO Assets.Config
	(  
		Id, BaseDate, CompanyName, FirstDayMaliYear, EndDayMaliYear, FirstDepValueActive, LevelForEditFirstDep, ServerName, 
                AccountDBName, StopDepNo, BedTopicCode, BedDetailCode, BedCTopicCode, BedCTopicCode2, BedCTopicCode3, BesTopicCode, 
                BesDetailCode, BesCTopicCode, BesCTopicCode2, BesCTopicCode3, DefaultDocType, SerialNumType, ShowAmount, AidFieldCaption, 
                SerialPelak, LevelGroup, StartLimitID, EndLimitID, EditableDepModeDepValue, TimeToDefinitive, SysSmsActive, DocExportEffect
	)       
SELECT          Id, BaseDate, CompanyName, FirstDayMaliYear, EndDayMaliYear, FirstDepValueActive, LevelForEditFirstDep, ServerName, 
               AccountDBName, StopDepNo, BedTopicCode, BedDetailCode, BedCTopicCode, BedCTopicCode2, BedCTopicCode3, BesTopicCode, 
               BesDetailCode, BesCTopicCode, BesCTopicCode2, BesCTopicCode3, DefaultDocType, SerialNumType, ShowAmount, AidFieldCaption, 
               SerialPelak, LevelGroup, StartLimitID, EndLimitID, EditableDepModeDepValue, TimeToDefinitive, SysSmsActive, DocExportEffect
FROM            Assets_DataBase.Assets.Config
SET IDENTITY_INSERT Assets.Config OFF
--
INSERT INTO assets.AccCtopics(  ExpCode, ExpDesc, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, AccCTopicCode3, AccReserveCTopicCode, 
                         AccReserveCTopicCode2, AccReserveCTopicCode3)

SELECT        ExpCode, ExpDesc, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, AccCTopicCode3, AccReserveCTopicCode, 
                         AccReserveCTopicCode2, AccReserveCTopicCode3
FROM         Assets_DataBase.Assets.AccCtopics
--
INSERT INTO        Assets.AccTopics(AccTopicCode, AccDetailCode, AccDesc, AccDepTopicCode, AccExpDetailCode, AccExpTopicCode, AccCTopicCode, AccCTopicCode2, 
                         AccCTopicCode3, AccReserveCTopicCode, AccReserveCTopicCode2, AccReserveCTopicCode3
)
SELECT        AccTopicCode, AccDetailCode, AccDesc, AccDepTopicCode, AccExpDetailCode, AccExpTopicCode, AccCTopicCode, AccCTopicCode2, 
                         AccCTopicCode3, AccReserveCTopicCode, AccReserveCTopicCode2, AccReserveCTopicCode3
FROM            Assets_DataBase.Assets.AccTopics
--
/*
INSERT INTO  Assets.AssetsGroups
	( AsstetsGrpCode, GrpName, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, AccCTopicCode3, PrefixPelak, LevelID, PrvGrpCode )
SELECT    AsstetsGrpCode, GrpName, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, AccCTopicCode3, PrefixPelak, LevelID, PrvGrpCode
FROM      Assets_DataBase.Assets.AssetsGroups
*/
--
INSERT INTO     Assets.AidInfo(GrpCode, AidInfoID, AidInfoName )
SELECT        GrpCode, AidInfoID, AidInfoName
FROM            Assets_DataBase.Assets.AidInfo
--
INSERT INTO Assets.AstLawGrp( Code, Name )     
SELECT        Code, Name
FROM             Assets_DataBase.Assets.AstLawGrp
--
INSERT INTO Assets.AstLaw( LawGrpRef, Number, Des, Method, Rate )
SELECT        LawGrpRef, Number, Des, Method, Rate
FROM            Assets_DataBase.Assets.AstLaw
--
INSERT INTO   Assets.AssetsKeeper(  KeeperCode, KeeperName, KeeperDetailCode, Mobile, Email )
SELECT        KeeperCode, KeeperName, KeeperDetailCode, Mobile, Email
FROM            Assets_DataBase.Assets.AssetsKeeper
--
--
INSERT INTO Assets.TaxGroup
                         (TaxGrpCode, TaxTitle)
SELECT        TaxGrpCode, TaxTitle
FROM            Assets_DataBase.Assets.TaxGroup 
--
INSERT INTO Assets.TaxItems
                         (TaxGrpCode, TaxID, TaxCalculateName, DepMode, DepValue, OldDepMode, OldDepValue)
SELECT        TaxGrpCode, TaxID, TaxCalculateName, DepMode, DepValue, OldDepMode, OldDepValue
FROM            Assets_DataBase.Assets.TaxItems 
--
INSERT INTO Units (UnitCode, UnitName)
SELECT src.UnitCode, src.UnitName
FROM Assets_DataBase.dbo.Units AS src
WHERE NOT EXISTS (
    SELECT 1 
    FROM Units AS dest 
    WHERE dest.UnitCode = src.UnitCode)
--
INSERT INTO Assets.Users
                         (UserID, UserName, DetailCode, Mobile, Email)
SELECT        UserID, UserName, DetailCode, Mobile, Email
FROM            Assets_DataBase.Assets.Users 
--
INSERT INTO Assets.Places
                         (PlaceCode, PlaceName, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, AccCTopicCode3)
SELECT        PlaceCode, PlaceName, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, AccCTopicCode3
FROM            Assets_DataBase.Assets.Places 
--
INSERT INTO Assets.OwnerType
                         (OwnerType, TypeName)
SELECT        OwnerType, TypeName
FROM            Assets_DataBase.Assets.OwnerType 
--
INSERT INTO Assets.InsouranceInfo
                         (InsouranceID, InsouranceName, ControlActive)
SELECT        InsouranceID, InsouranceName, ControlActive
FROM            Assets_DataBase.Assets.InsouranceInfo 
--
INSERT INTO Assets.Insourance
                         (InsouranceItemsID, InsouranceID, InsouranceNo, InsouranceDate, StartDate, EndDate, InsourancePrice, Comments)
SELECT        InsouranceItemsID, InsouranceID, InsouranceNo, InsouranceDate, StartDate, EndDate, InsourancePrice, Comments
FROM            Assets_DataBase.Assets.Insourance  
--
INSERT INTO Assets.Amval
       (
		SerialNum, FormNum, FormDate, OwnerType, StuffDesc, UnitCode, AsstetsGrpCode, AssetsValue, EsqValue, Amount, TaxGrpCode, TaxID, DepMode, DepValue, PelakNum, LastPelakNum, AccTopicCode, AccDetailCode, 
                AccCTopicCode, AccCTopicCode2, AccCTopicCode3, InvoiceNum, InvoiceDate, SellerNote, SellerTopicCode, SellerDetailCode, SellerCTopicCode, StartUsingDate, DocNum, DocDate, ExpCode, PlaceCode, UserCode, AmvalState, 
                FirstDepValue, DepvalueInYear, WarrantyDate, MasterSerial, Comments, KeeperCode, AidField1, AidField2, StartWarrantyDate, CompanyID
	)
SELECT        SerialNum, FormNum, FormDate, OwnerType, StuffDesc, UnitCode, AsstetsGrpCode, AssetsValue, EsqValue, Amount, TaxGrpCode, TaxID, DepMode, DepValue, PelakNum, LastPelakNum, AccTopicCode, 
              AccDetailCode, AccCTopicCode, AccCTopicCode2, AccCTopicCode3, InvoiceNum, InvoiceDate, SellerNote, SellerTopicCode, SellerDetailCode, SellerCTopicCode, StartUsingDate, DocNum, DocDate, ExpCode, PlaceCode, 
              UserCode, AmvalState, FirstDepValue, DepvalueInYear, WarrantyDate, MasterSerial, Comments, KeeperCode, AidField1, AidField2, StartWarrantyDate, CompanyID
FROM         Assets_DataBase.Assets.Amval
-- Assets.DocExports
SET IDENTITY_INSERT Assets.DocExports ON
INSERT INTO Assets.DocExports
	( ArchiveId, Document_Serial, TopicCode, DetailCode, CTopicCode, CTopicCode1, CTopicCode2, CTopicCode3, Comments, Debt, Credit, ID, DocNo, DocDate, DocType )
SELECT    ArchiveId, Document_Serial, TopicCode, DetailCode, CTopicCode, CTopicCode1, CTopicCode2, CTopicCode3, Comments, Debt, Credit, ID, DocNo, DocDate, DocType
FROM            Assets.DocExports
SET IDENTITY_INSERT Assets.DocExports OFF
--
INSERT INTO      Assets.AidAssets( Serial, GrpCode, AidInfoID, AidAssetsName )
SELECT        Serial, GrpCode, AidInfoID, AidAssetsName
FROM               Assets_DataBase.Assets.AidAssets
-- Assets.AlterAssets
--SET IDENTITY_INSERT Assets.AlterAssets ON
INSERT INTO Assets.AlterAssets (ID, InfoKind, Serial, AlterDate, AlterPrice, AlterDepValue, AlterDepValueInYear, AlterNote, FormType, PrvID, RevalidID )
SELECT        ID, InfoKind, Serial, AlterDate, AlterPrice, AlterDepValue, AlterDepValueInYear, AlterNote, FormType, PrvID, RevalidID
FROM            Assets_DataBase.Assets.AlterAssets
--SET IDENTITY_INSERT Assets.AlterAssets OFF
--
INSERT INTO Assets.BerakAmval( ID, SerialNum, StartDate, EndDate, FirstDepValue, DepvalueInYear, FirstDepValueEndStop, DepvalueInYearEndStop, Note, State )
SELECT        ID, SerialNum, StartDate, EndDate, FirstDepValue, DepvalueInYear, FirstDepValueEndStop, DepvalueInYearEndStop, Note, State
FROM            Assets_DataBase.Assets.BerakAmval
--
INSERT INTO Assets.Movement
                         (MoveID, SerialNum, FormNum, MoveDate, OldAccCode, OldPlaceCode, OldExpCode, OldUserCode, NewAccCode, NewPlaceCode, NewUserCode, ExpAccCode, MoveState, MoveComments, CostValue, FirstDepValue, 
                         DepvalueInYear, FinalDepValue, MoveType)
SELECT        MoveID, SerialNum, FormNum, MoveDate, OldAccCode, OldPlaceCode, OldExpCode, OldUserCode, NewAccCode, NewPlaceCode, NewUserCode, ExpAccCode, MoveState, MoveComments, CostValue, FirstDepValue, 
                         DepvalueInYear, FinalDepValue, MoveType
FROM            Assets_DataBase.Assets.Movement 
--

INSERT INTO Assets.ReValidate
                         (RID, ValidationNum, ValidationDate, Comment, State, Docno, DocDate)
SELECT        RID, ValidationNum, ValidationDate, Comment, State, Docno, DocDate
FROM            Assets_DataBase.Assets.ReValidate 
-- ReValidateItems
SET IDENTITY_INSERT Assets.ReValidateItems ON
INSERT INTO Assets.ReValidateItems
                         (ID, RID, SerialNum, ValidationValue, OfficialValue, MiderateInc, MiderateDec, Note, RemainedAge, FirstDepValue, DepvalueInYear)
SELECT        ID, RID, SerialNum, ValidationValue, OfficialValue, MiderateInc, MiderateDec, Note, RemainedAge, FirstDepValue, DepvalueInYear
FROM            Assets_DataBase.Assets.ReValidateItems 
SET IDENTITY_INSERT Assets.ReValidateItems OFF
--
INSERT INTO Assets.Decrease
                         (SerialNum, DecreaseID, DecDate, DecValue, DecType, Comments, buyerTopicCode, buyerDetailCode, buyerCtopicCode, InvoiceNum, InvoiceDate, AssValue, DocNum, DocDate, State, ProfitTopicCode, ProfitDetailCode, 
                         ProfitCTopicCode, ProfitCTopicCode2)
SELECT        SerialNum, DecreaseID, DecDate, DecValue, DecType, Comments, buyerTopicCode, buyerDetailCode, buyerCtopicCode, InvoiceNum, InvoiceDate, AssValue, DocNum, DocDate, State, ProfitTopicCode, 
                         ProfitDetailCode, ProfitCTopicCode, ProfitCTopicCode2
FROM            Assets_DataBase.Assets.Decrease 
-- DepTable
SET IDENTITY_INSERT Assets.DepTable ON
INSERT INTO  Assets.DepTable(ID, Serial, Yearid, Tablename, Id4table, FirstDepValue, DepvalueInyear, CompanyID )
SELECT        ID, Serial, Yearid, Tablename, Id4table, FirstDepValue, DepvalueInyear, CompanyID
FROM             Assets_DataBase.Assets.DepTable
SET IDENTITY_INSERT Assets.DepTable OFF
--
INSERT INTO Assets.AssestConstNow
                         (SerialNum, BazaarValue, YearID)
SELECT        SerialNum, BazaarValue, YearID
FROM            Assets_DataBase.Assets.AssestConstNow  
--
INSERT INTO Assets.AssetsInsouraceGroups
                         (InsouranceItemsID, Serial)
SELECT        InsouranceItemsID, Serial
FROM            Assets_DataBase.Assets.AssetsInsouraceGroups  
-- AssetsInsouranceSpecial
SET IDENTITY_INSERT Assets.AssetsInsouranceSpecial ON
INSERT INTO Assets.AssetsInsouranceSpecial
                         (ID, Serial, InsouranceID, StartDate, EndDate, InsouranceNo, InsouranceDate, InsourancePrice, Comments)
SELECT        ID, Serial, InsouranceID, StartDate, EndDate, InsouranceNo, InsouranceDate, InsourancePrice, Comments
FROM            Assets_DataBase.Assets.AssetsInsouranceSpecial  
SET IDENTITY_INSERT Assets.AssetsInsouranceSpecial OFF
--
INSERT INTO Assets.DepTableCo
                         (SerialNum, Yearid, DepCoValue)
SELECT        SerialNum, Yearid, DepCoValue
FROM            Assets_DataBase.Assets.DepTableCo 
--

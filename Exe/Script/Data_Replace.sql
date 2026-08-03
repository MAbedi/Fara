--- CnvAssetssToFara_Data   1404/08/19
Use bsell_azarakhash 
--
insert into Assets.Config
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
FROM            Assets.Config
--
insert into assets.AccCtopics(  ExpCode, ExpDesc, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, AccCTopicCode3, AccReserveCTopicCode, 
                         AccReserveCTopicCode2, AccReserveCTopicCode3)

SELECT        ExpCode, ExpDesc, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, AccCTopicCode3, AccReserveCTopicCode, 
                         AccReserveCTopicCode2, AccReserveCTopicCode3
FROM         Assets_azarakhash.Assets.AccCtopics
--
insert into        Assets.AccTopics(AccTopicCode, AccDetailCode, AccDesc, AccDepTopicCode, AccExpDetailCode, AccExpTopicCode, AccCTopicCode, AccCTopicCode2, 
                         AccCTopicCode3, AccReserveCTopicCode, AccReserveCTopicCode2, AccReserveCTopicCode3
)
SELECT        AccTopicCode, AccDetailCode, AccDesc, AccDepTopicCode, AccExpDetailCode, AccExpTopicCode, AccCTopicCode, AccCTopicCode2, 
                         AccCTopicCode3, AccReserveCTopicCode, AccReserveCTopicCode2, AccReserveCTopicCode3
FROM            Assets_azarakhash.Assets.AccTopics
--
insert into  Assets.AssetsGroups
	( AsstetsGrpCode, GrpName, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, AccCTopicCode3, PrefixPelak, LevelID, PrvGrpCode )
SELECT    AsstetsGrpCode, GrpName, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, AccCTopicCode3, PrefixPelak, LevelID, PrvGrpCode
FROM      Assets_azarakhash.Assets.AssetsGroups
--
insert into     Assets.AidInfo(GrpCode, AidInfoID, AidInfoName )
SELECT        GrpCode, AidInfoID, AidInfoName
FROM            Assets_azarakhash. Assets.AidInfo
--
insert into Assets.AstLawGrp( Code, Name )     
SELECT        Code, Name
FROM             Assets_azarakhash.Assets.AstLawGrp
--
insert into Assets.AstLaw( LawGrpRef, Number, Des, Method, Rate )
SELECT        LawGrpRef, Number, Des, Method, Rate
FROM            Assets_azarakhash.Assets.AstLaw
--
insert into   Assets.AssetsKeeper(  KeeperCode, KeeperName, KeeperDetailCode, Mobile, Email )
SELECT        KeeperCode, KeeperName, KeeperDetailCode, Mobile, Email
FROM            Assets_azarakhash.Assets.AssetsKeeper
--
--
INSERT INTO Assets.TaxGroup
                         (TaxGrpCode, TaxTitle)
SELECT        TaxGrpCode, TaxTitle
FROM            Assets_azarakhash.Assets.TaxGroup 
--
INSERT INTO Assets.TaxItems
                         (TaxGrpCode, TaxID, TaxCalculateName, DepMode, DepValue, OldDepMode, OldDepValue)
SELECT        TaxGrpCode, TaxID, TaxCalculateName, DepMode, DepValue, OldDepMode, OldDepValue
FROM            Assets_azarakhash.Assets.TaxItems 
--
INSERT INTO Assets.Units
                         (unitCode, unitName)
SELECT        unitCode, unitName
FROM            Assets_azarakhash.Assets.Units 
--
INSERT INTO Assets.Users
                         (UserID, UserName, DetailCode, Mobile, Email)
SELECT        UserID, UserName, DetailCode, Mobile, Email
FROM            Assets_azarakhash.Assets.Users 
--
INSERT INTO Assets.Places
                         (PlaceCode, PlaceName, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, AccCTopicCode3)
SELECT        PlaceCode, PlaceName, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, AccCTopicCode3
FROM            Assets_azarakhash.Assets.Places 
--
INSERT INTO Assets.OwnerType
                         (OwnerType, TypeName)
SELECT        OwnerType, TypeName
FROM            Assets_azarakhash.Assets.OwnerType 
--
INSERT INTO Assets.InsouranceInfo
                         (InsouranceID, InsouranceName, ControlActive)
SELECT        InsouranceID, InsouranceName, ControlActive
FROM            Assets_azarakhash.Assets.InsouranceInfo 
--
INSERT INTO Assets.Insourance
                         (InsouranceItemsID, InsouranceID, InsouranceNo, InsouranceDate, StartDate, EndDate, InsourancePrice, Comments)
SELECT        InsouranceItemsID, InsouranceID, InsouranceNo, InsouranceDate, StartDate, EndDate, InsourancePrice, Comments
FROM            Assets_azarakhash.Assets.Insourance  
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
FROM         Assets_azarakhash.Assets.Amval
--
insert into Assets.DocExports
	( ArchiveId, Document_Serial, TopicCode, DetailCode, CTopicCode, CTopicCode1, CTopicCode2, CTopicCode3, Comments, Debt, Credit, ID, DocNo, DocDate, DocType )
SELECT    ArchiveId, Document_Serial, TopicCode, DetailCode, CTopicCode, CTopicCode1, CTopicCode2, CTopicCode3, Comments, Debt, Credit, ID, DocNo, DocDate, DocType
FROM            Assets.DocExports
--
insert into      Assets.AidAssets( Serial, GrpCode, AidInfoID, AidAssetsName )
SELECT        Serial, GrpCode, AidInfoID, AidAssetsName
FROM               Assets_azarakhash.Assets.AidAssets
--
insert into Assets.AlterAssets (ID, InfoKind, Serial, AlterDate, AlterPrice, AlterDepValue, AlterDepValueInYear, AlterNote, FormType, PrvID, RevalidID )
SELECT        ID, InfoKind, Serial, AlterDate, AlterPrice, AlterDepValue, AlterDepValueInYear, AlterNote, FormType, PrvID, RevalidID
FROM            Assets_azarakhash.Assets.AlterAssets
--
insert into Assets.BerakAmval( ID, SerialNum, StartDate, EndDate, FirstDepValue, DepvalueInYear, FirstDepValueEndStop, DepvalueInYearEndStop, Note, State )
SELECT        ID, SerialNum, StartDate, EndDate, FirstDepValue, DepvalueInYear, FirstDepValueEndStop, DepvalueInYearEndStop, Note, State
FROM            Assets_azarakhash.Assets.BerakAmval
--
INSERT INTO Assets.Movement
                         (MoveID, SerialNum, FormNum, MoveDate, OldAccCode, OldPlaceCode, OldExpCode, OldUserCode, NewAccCode, NewPlaceCode, NewUserCode, ExpAccCode, MoveState, MoveComments, CostValue, FirstDepValue, 
                         DepvalueInYear, FinalDepValue, MoveType)
SELECT        MoveID, SerialNum, FormNum, MoveDate, OldAccCode, OldPlaceCode, OldExpCode, OldUserCode, NewAccCode, NewPlaceCode, NewUserCode, ExpAccCode, MoveState, MoveComments, CostValue, FirstDepValue, 
                         DepvalueInYear, FinalDepValue, MoveType
FROM            Assets_azarakhash.Assets.Movement 
--

INSERT INTO Assets.ReValidate
                         (RID, ValidationNum, ValidationDate, Comment, State, Docno, DocDate)
SELECT        RID, ValidationNum, ValidationDate, Comment, State, Docno, DocDate
FROM            Assets_azarakhash.Assets.ReValidate 
--
INSERT INTO Assets.ReValidateItems
                         (ID, RID, SerialNum, ValidationValue, OfficialValue, MiderateInc, MiderateDec, Note, RemainedAge, FirstDepValue, DepvalueInYear)
SELECT        ID, RID, SerialNum, ValidationValue, OfficialValue, MiderateInc, MiderateDec, Note, RemainedAge, FirstDepValue, DepvalueInYear
FROM            Assets_azarakhash.Assets.ReValidateItems 
--
INSERT INTO Assets.Decrease
                         (SerialNum, DecreaseID, DecDate, DecValue, DecType, Comments, buyerTopicCode, buyerDetailCode, buyerCtopicCode, InvoiceNum, InvoiceDate, AssValue, DocNum, DocDate, State, ProfitTopicCode, ProfitDetailCode, 
                         ProfitCTopicCode, ProfitCTopicCode2)
SELECT        SerialNum, DecreaseID, DecDate, DecValue, DecType, Comments, buyerTopicCode, buyerDetailCode, buyerCtopicCode, InvoiceNum, InvoiceDate, AssValue, DocNum, DocDate, State, ProfitTopicCode, 
                         ProfitDetailCode, ProfitCTopicCode, ProfitCTopicCode2
FROM            Assets_azarakhash.Assets.Decrease 
--
insert into  Assets.DepTable(ID, Serial, Yearid, Tablename, Id4table, FirstDepValue, DepvalueInyear, CompanyID )
SELECT        ID, Serial, Yearid, Tablename, Id4table, FirstDepValue, DepvalueInyear, CompanyID
FROM             Assets_azarakhash.Assets.DepTable
--
INSERT INTO Assets.AssestConstNow
                         (SerialNum, BazaarValue, YearID)
SELECT        SerialNum, BazaarValue, YearID
FROM            Assets_azarakhash.Assets.AssestConstNow  
--
INSERT INTO Assets.AssetsInsouraceGroups
                         (InsouranceItemsID, Serial)
SELECT        InsouranceItemsID, Serial
FROM            Assets_azarakhash.Assets.AssetsInsouraceGroups  
--
INSERT INTO Assets.AssetsInsouranceSpecial
                         (ID, Serial, InsouranceID, StartDate, EndDate, InsouranceNo, InsouranceDate, InsourancePrice, Comments)
SELECT        ID, Serial, InsouranceID, StartDate, EndDate, InsouranceNo, InsouranceDate, InsourancePrice, Comments
FROM            Assets_azarakhash.Assets.AssetsInsouranceSpecial  
--

INSERT INTO Assets.DepTableCo
                         (SerialNum, Yearid, DepCoValue)
SELECT        SerialNum, Yearid, DepCoValue
FROM            Assets_azarakhash.Assets.DepTableCo 
--

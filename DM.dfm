object DmF: TDmF
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 531
  Width = 1075
  object adcBSell: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=tycedar;Persist Security Info=True;' +
      'User ID=farauser;Initial Catalog=BPMS_EhtemamJam;Data Source=.;U' +
      'se Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;' +
      'Workstation ID=P1;Initial File Name="";Use Encryption for Data=F' +
      'alse;Tag with column collation when possible=False;MARS Connecti' +
      'on=False;DataTypeCompatibility=0;Trust Server Certificate=False;' +
      'Server SPN="";Application Intent=READWRITE;MultiSubnetFailover=F' +
      'alse;Use FMTONLY=False;Authentication="";Access Token="";Transpa' +
      'rentNetworkIPResolution=True;Connect Retry Count=1;Connect Retry' +
      ' Interval=10'
    KeepConnection = False
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    BeforeConnect = adcBSellBeforeConnect
    AfterDisconnect = adcBSellAfterDisconnect
    Left = 151
    Top = 16
  end
  object qryTmpTmp: TADOQuery
    AutoCalcFields = False
    Connection = adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT      0')
    Left = 461
    Top = 15
  end
  object adcAccounting: TADOConnection
    Tag = 1
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=tycedar;Persist Security Info=True;' +
      'User ID=FaraUser;Initial Catalog=BPMS_EhtemamJam;Data Source=.;U' +
      'se Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;' +
      'Workstation ID=ABEDI;Initial File Name="";Use Encryption for Dat' +
      'a=False;Tag with column collation when possible=False;MARS Conne' +
      'ction=False;DataTypeCompatibility=0;Trust Server Certificate=Fal' +
      'se;Server SPN="";Application Intent=READWRITE;MultiSubnetFailove' +
      'r=False;Use FMTONLY=False;Authentication="";Access Token="";Tran' +
      'sparentNetworkIPResolution=True;Connect Retry Count=1;Connect Re' +
      'try Interval=10'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    AfterConnect = adcAccountingAfterConnect
    BeforeConnect = adcAccountingBeforeConnect
    Left = 45
    Top = 16
  end
  object adcFaraSystem: TADOConnection
    Tag = 1
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=tycedar;Persist Security Info=True;' +
      'User ID=FaraUser;Initial Catalog=FaraSystems;Data Source=.;Initi' +
      'al File Name="";Server SPN="";Authentication="";Access Token=""'
    CursorLocation = clUseServer
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    AfterConnect = adcFaraSystemAfterConnect
    BeforeConnect = adcFaraSystemBeforeConnect
    Left = 150
    Top = 137
  end
  object qryGlbTmpTmp: TADOQuery
    AutoCalcFields = False
    Connection = adcFaraSystem
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select 0')
    Left = 576
    Top = 87
  end
  object qryAccounting: TADOQuery
    AutoCalcFields = False
    Connection = adcAccounting
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select 0')
    Left = 485
    Top = 80
  end
  object adcOldAccounting: TADOConnection
    Tag = 1
    CommandTimeout = 15
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Password=tycedar;Data Source=\\' +
      's8\FaraRayaneh\Account\Data\1391.mdb;Persist Security Info=True;' +
      'Jet OLEDB:New Database Password=tycedar'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'SQLOLEDB'
    BeforeConnect = adcOldAccountingBeforeConnect
    Left = 38
    Top = 78
  end
  object qry_Temp: TADOQuery
    AutoCalcFields = False
    Connection = adcAccounting
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select 0')
    Left = 329
    Top = 127
  end
  object qryAccOldAndNew: TADOQuery
    AutoCalcFields = False
    Connection = adcAccounting
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select 0')
    Left = 389
    Top = 75
  end
  object qryAccCenterTopics2: TADOQuery
    AutoCalcFields = False
    Connection = adcAccounting
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT  CTopicCode2, CTopicName2_L1 AS CTopicName2, CTopicName2_' +
        'L2'
      'FROM acc.CenterTopics2')
    Left = 493
    Top = 156
  end
  object qryAccDetailCode: TADOQuery
    AutoCalcFields = False
    Connection = adcAccounting
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT DetailCode,DetailName_L1 AS DetailName,DetailName_L2 AS D' +
        'etailName2,1 as CompanyCode'
      'FROM acc.Details')
    Left = 362
    Top = 222
  end
  object qryAccTopicCode: TADOQuery
    AutoCalcFields = False
    Connection = adcAccounting
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     acc.Categories.TopicCode, acc.Categories.MoeenName_L1' +
        ' AS MoeenName, acc.Categories.MoeenName_L2'
      'FROM         acc.Categories LEFT OUTER JOIN'
      
        '                      acc.CategoriesForUse ON acc.Categories.Top' +
        'icCode = acc.CategoriesForUse.PrvTopicCode'
      'WHERE     (acc.CategoriesForUse.PrvTopicCode IS NULL)'
      ''
      '  ')
    Left = 66
    Top = 314
  end
  object qryAccCenterTopics: TADOQuery
    AutoCalcFields = False
    Connection = adcAccounting
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT CTopicCode,CTopicName_L1 AS CTopicName,CTopicName_L2'
      ''
      'FROM acc.CenterTopics')
    Left = 262
    Top = 240
  end
  object qryAccBudget: TADOQuery
    AutoCalcFields = False
    Connection = adcAccounting
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     acc.BudgetTopics.BudgetTopicID, acc.BudgetTopics.Budg' +
        'etCaption_L1, acc.BudgetTopics.BudgetCaption_L2'
      'FROM         acc.BudgetTopics LEFT OUTER JOIN'
      
        '                      acc.BudgetTopicsForUse ON acc.BudgetTopics' +
        '.BudgetTopicID = acc.BudgetTopicsForUse.PrvBudgetTopicID'
      'WHERE     (acc.BudgetTopicsForUse.PrvBudgetTopicID IS NULL)'
      '  '
      ' ')
    Left = 178
    Top = 323
  end
  object qryAccProject: TADOQuery
    AutoCalcFields = False
    Connection = adcAccounting
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     acc.Projects.ProjectID, acc.Projects.ProjectCaption_L' +
        '1'
      'FROM         acc.ProjectsRange INNER JOIN'
      
        '                      acc.Projects ON acc.ProjectsRange.ProjectI' +
        'D = acc.Projects.ProjectID'
      '  ')
    Left = 271
    Top = 317
  end
  object qryOperators: TADOQuery
    Connection = adcFaraSystem
    CursorType = ctStatic
    LockType = ltReadOnly
    BeforeOpen = qryOperatorsBeforeOpen
    Parameters = <>
    SQL.Strings = (
      'SELECT UserID, name'
      'FROM FaraSystems.dbo.Operators')
    Left = 57
    Top = 250
  end
  object BalloonHint1: TBalloonHint
    Left = 576
    Top = 384
  end
  object qryAccCenterTopics3: TADOQuery
    AutoCalcFields = False
    Connection = adcAccounting
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     CTopicCode3, CTopicName3_L1 AS CTopicName3 , CTopicNa' +
        'me3_L2'
      'FROM         Acc.CTopicCode3')
    Left = 157
    Top = 252
  end
  object qryCurrencies: TADOQuery
    Connection = adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT        CurrenciesID, CurrenciesName,CurrencyCode , Curren' +
        'cySymbol'
      'FROM            Currencies')
    Left = 536
    Top = 16
  end
  object qrySMS_BOX: TADOQuery
    AutoCalcFields = False
    Connection = adcFaraSystem
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT      MASTERID, BOXKIND, SMSKIND, CREATEDATE, CREATETIME, ' +
        'USERTITLE, PHONENUMBER, REC_YEAR, REC_MONTH, REC_DAY, REC_HOUR, '
      
        '                         REC_MIN, REC_YEARACT, REC_MONTHACT, REC' +
        '_DAYACT, REC_HOURACT, REC_MINACT, MESS, REC_STATUS, REFSERIAL'
      'FROM            SMS_BOX')
    Left = 600
    Top = 159
    object qrySMS_BOXMASTERID: TIntegerField
      FieldName = 'MASTERID'
    end
    object qrySMS_BOXBOXKIND: TSmallintField
      FieldName = 'BOXKIND'
    end
    object qrySMS_BOXSMSKIND: TIntegerField
      FieldName = 'SMSKIND'
    end
    object qrySMS_BOXCREATEDATE: TStringField
      FieldName = 'CREATEDATE'
      FixedChar = True
      Size = 10
    end
    object qrySMS_BOXCREATETIME: TStringField
      FieldName = 'CREATETIME'
      FixedChar = True
      Size = 5
    end
    object qrySMS_BOXUSERTITLE: TStringField
      FieldName = 'USERTITLE'
      Size = 50
    end
    object qrySMS_BOXPHONENUMBER: TStringField
      FieldName = 'PHONENUMBER'
    end
    object qrySMS_BOXREC_YEAR: TStringField
      FieldName = 'REC_YEAR'
      FixedChar = True
      Size = 4
    end
    object qrySMS_BOXREC_MONTH: TStringField
      FieldName = 'REC_MONTH'
      FixedChar = True
      Size = 2
    end
    object qrySMS_BOXREC_DAY: TStringField
      FieldName = 'REC_DAY'
      FixedChar = True
      Size = 2
    end
    object qrySMS_BOXREC_HOUR: TStringField
      FieldName = 'REC_HOUR'
      FixedChar = True
      Size = 2
    end
    object qrySMS_BOXREC_MIN: TStringField
      FieldName = 'REC_MIN'
      FixedChar = True
      Size = 2
    end
    object qrySMS_BOXREC_YEARACT: TStringField
      FieldName = 'REC_YEARACT'
      FixedChar = True
      Size = 4
    end
    object qrySMS_BOXREC_MONTHACT: TStringField
      FieldName = 'REC_MONTHACT'
      FixedChar = True
      Size = 2
    end
    object qrySMS_BOXREC_DAYACT: TStringField
      FieldName = 'REC_DAYACT'
      FixedChar = True
      Size = 2
    end
    object qrySMS_BOXREC_HOURACT: TStringField
      FieldName = 'REC_HOURACT'
      FixedChar = True
      Size = 2
    end
    object qrySMS_BOXREC_MINACT: TStringField
      FieldName = 'REC_MINACT'
      FixedChar = True
      Size = 2
    end
    object qrySMS_BOXMESS: TStringField
      FieldName = 'MESS'
      Size = 250
    end
    object qrySMS_BOXREC_STATUS: TSmallintField
      FieldName = 'REC_STATUS'
    end
    object qrySMS_BOXREFSERIAL: TIntegerField
      FieldName = 'REFSERIAL'
    end
  end
  object zbal: TzAPIBalloon
    AutoCloseMode = acAutoCalc
    Title = 'aaaaddddd'
    Prompt.Strings = (
      'FINANCES Ltd'
      'TzAPIBalloon ver. 1')
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 462
    Top = 216
  end
  object qryConfig: TADOQuery
    AutoCalcFields = False
    Connection = adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT C.CompanyName, C.CompanyDesc, C.RegisterNumber, C.Address' +
        ', C.Tel1, C.Tel2, C.Fax, C.Email, C.WebSite, C.ActsFooter, C.Fac' +
        'torHeader, C.FactorFooter, C.FactorSigns, C.FactorReleaseRelatio' +
        'n, C.StartMaliYear,'
      
        'C.FinishMaliYear, C.EconomicNumber, C.PostalCode, C.StateCode, C' +
        '.CityCode, C.NationalCodeField, C.CHKPriorityTransDate, C.Custom' +
        'ersUnicName, Z.Shahr, Z.Ostan'
      
        'FROM Zone AS Z INNER JOIN Config AS C ON Z.ShahrCode = C.CityCod' +
        'e'
      '')
    Left = 525
    Top = 223
  end
  object pdbConfig: TppDBPipeline
    DataSource = srcConfig
    UserName = 'pdbConfig'
    Left = 393
    Top = 283
  end
  object srcConfig: TDataSource
    DataSet = qryConfig
    Left = 296
    Top = 368
  end
  object tmrFlow: TTimer
    Enabled = False
    OnTimer = tmrFlowTimer
    Left = 232
    Top = 408
  end
  object adcsalary: TADOConnection
    Tag = 1
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=tycedar;Persist Security Info=True;' +
      'User ID=farauser;Initial Catalog=BPMS_EhtemamJam;Data Source=.;U' +
      'se Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;' +
      'Workstation ID=WINDEV-A-01;Use Encryption for Data=False;Tag wit' +
      'h column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    BeforeConnect = adcsalaryBeforeConnect
    Left = 144
    Top = 77
  end
  object qryMasterLookUps: TADOQuery
    Connection = adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     LookUpID, Name ,Code'
      'FROM         LookUps'
      'WHERE     (Kind = 0)')
    Left = 128
    Top = 389
  end
  object qryStores: TADOQuery
    Connection = adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT        n_StoreID AS StoreID, EntityDisplayType, StoreKind' +
        ', EntityCaption, WeightCaption, c_StoreName'
      'FROM            Stores')
    Left = 488
    Top = 288
  end
  object qryStoreType: TADOQuery
    Connection = adcBSell
    CursorType = ctStatic
    Filter = 'n_StoreID= 1 AND n_UserID= 127'
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT UsersStore.StoreType ,UsersStore.n_StoreID  ,UsersStore.n' +
        '_UserID'
      '    FROM UsersStore INNER JOIN'
      '    Stores ON UsersStore.n_StoreID = Stores.n_StoreID'
      '    WHERE (Stores.n_ValuationType <> 7) '
      '')
    Left = 488
    Top = 352
  end
  object qryOstan: TADOQuery
    Connection = adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT DISTINCT OstanCode, Ostan'
      'FROM            Zone'
      'WHERE        (OstanCode <> 0)'
      'ORDER BY OstanCode')
    Left = 378
    Top = 417
  end
  object qryShahr: TADOQuery
    Connection = adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'OstanCode'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT        ShahrCode, Shahr, Ostan, OstanCode'
      'FROM            Zone'
      
        'WHERE        (OstanCode = :OstanCode ) AND (ShahrCode <> LTRIM(O' +
        'stanCode) + '#39'00000'#39')')
    Left = 314
    Top = 425
  end
  object qryFormula: TADOQuery
    Connection = adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT        formul.Component, formul.fieldname, formul.Caption' +
        ', formul.disp, formul.isSum, formul.MyType, dbo.Fitful.FitfulID ' +
        'AS value'
      
        'FROM            (SELECT        '#39'grdReciptItems'#39' AS Component, '#39'P' +
        'urTotalPrice'#39' AS fieldname, '#39'SumPurTotalPrice'#39' AS Caption, '#39#1580#1605#1593' ' +
        #1605#1576#1604#1594' '#1601#1575#1705#1578#1608#1585#39' AS disp, 1 AS isSum, '#39'grd'#39' AS MyType'
      '                           UNION'
      
        '                           SELECT        '#39'grdReciptDeficits'#39' AS ' +
        'Component, '#39'DeficitValue'#39' AS fieldname, '#39'SumDeficitValue'#39' AS Cap' +
        'tion, '#39#1580#1605#1593' '#1705#1587#1608#1585#1575#1578' '#1608' '#1575#1590#1575#1601#1575#1578#39' AS disp, 1 AS isSum, '#39'grd'#39' AS MyType'
      '                           UNION'
      
        '                           SELECT        '#39'grdCheck'#39' AS Component' +
        ', '#39'CheckAmount'#39' AS fieldname, '#39'SumCheckAmount'#39' AS Caption, '#39#1580#1605#1593' ' +
        #1605#1576#1575#1604#1594' '#1670#1705#39' AS disp, 1 AS isSum, '#39'grd'#39' AS MyType'
      '                           UNION'
      
        '                           SELECT        '#39'qryRecipts'#39' AS Compone' +
        'nt, '#39'CashPrice'#39' AS fieldname, '#39'CashPrice'#39' AS Caption, '#39#1605#1576#1604#1594' '#1606#1602#1583#1740 +
        #39' AS disp, 0 AS isSum, '#39'qry'#39' AS MyType'
      '                           UNION'
      
        '                           SELECT        '#39'qryRecipts'#39' AS Compone' +
        'nt, '#39'RatePercent'#39' AS fieldname, '#39'RatePercent'#39' AS Caption, '#39#1583#1585#1589#1583' ' +
        #1705#1575#1585#1605#1586#1583#39' AS disp, 0 AS isSum, '#39'qry'#39' AS MyType'
      '                           UNION'
      
        '                           SELECT        '#39'qryRecipts'#39' AS Compone' +
        'nt, '#39'PaymentCount'#39' AS fieldname, '#39'PaymentCount'#39' AS Caption, '#39#1578#1593#1583 +
        #1575#1583' '#1575#1602#1587#1575#1591#39' AS disp, 0 AS isSum, '#39'qry'#39' AS MyType'
      #9'           UNION'
      
        '                           SELECT        '#39#39' AS Component, '#39#39' AS ' +
        'fieldname, '#39'CheckTop'#39' AS Caption, '#39#1585#1571#1587' '#1670#1705#39' AS disp, 0 AS isSum, ' +
        #39'None'#39' AS MyType) AS formul CROSS JOIN'
      '                         dbo.Fitful'
      ''
      #9#9#9#9#9#9' '
      '')
    Left = 50
    Top = 393
  end
  object qryUnits: TADOQuery
    Connection = adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT UnitCode, UnitName'
      'FROM Units')
    Left = 476
    Top = 443
  end
  object qrySellsMethods: TADOQuery
    Connection = adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT        SellsMethod, SellsMethodName'
      'FROM            SellsMethods')
    Left = 370
    Top = 361
  end
  object qryCtopicCode3: TADOQuery
    Connection = adcAccounting
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     CTopicCode3, CTopicName3_L1'
      'FROM        acc.CTopicCode3')
    Left = 680
    Top = 232
  end
  object qryCtopicCode2: TADOQuery
    Connection = adcAccounting
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     CTopicCode2, CTopicName2_L1'
      'FROM         acc.CenterTopics2')
    Left = 680
    Top = 176
  end
  object qryDetail: TADOQuery
    Connection = adcAccounting
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     DetailCode, DetailName_L1  FROM         acc.Details')
    Left = 760
    Top = 64
  end
  object qryCategories: TADOQuery
    Connection = adcAccounting
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     TopicCode, MoeenName_L1'
      'FROM         acc.Categories'
      'WHERE     (LevelID = 3)')
    Left = 648
    Top = 72
  end
  object qryCtopicCode: TADOQuery
    Connection = adcAccounting
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     CTopicCode, CTopicName_L1'
      'FROM         acc.CenterTopics')
    Left = 680
    Top = 120
  end
  object qryAmval: TADOQuery
    Connection = adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'select SerialNum,pelakNum,StuffDesc,PlaceCode,AccTopicCode,Asset' +
        'sValue,'
      'UserCode,ExpCode from Assets.amval')
    Left = 742
    Top = 140
  end
  object qryUsersStoreReciptTypes: TADOQuery
    Connection = adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'UserID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT        StoreID, ReciptType'
      'FROM            UsersStoreReciptTypes'
      'WHERE        (UserID = :UserID )')
    Left = 776
    Top = 248
    object qryUsersStoreReciptTypesStoreID: TSmallintField
      FieldName = 'StoreID'
    end
    object qryUsersStoreReciptTypesReciptType: TWordField
      FieldName = 'ReciptType'
    end
  end
  object qryCustomers: TADOQuery
    Connection = adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT        CustID, CustName'
      'FROM            Customers')
    Left = 676
    Top = 371
  end
  object qryUseUnits: TADOQuery
    Connection = adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT       *'#9#9#9#9#9#9#9#9#9#9#9#9#9
      'FROM        Vu_UseUnitName')
    Left = 757
    Top = 404
  end
  object qryRT: TADOQuery
    Connection = adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT    *,(SELECT TOP (1) L1.Name FROM LookUps AS L1 '
      
        '      WHERE (L1.LookUpID = FormKindSerial) AND (L1.Kind = 0)) AS' +
        ' LookUpName'
      #9'  ,(SELECT TOP (1) L1.Name FROM LookUps AS L1 '
      
        '      WHERE (L1.LookUpID = FormItemKindSerial) AND (L1.Kind = 0)' +
        ') AS LookUpNameItem'
      'FROM            ReciptTypes'
      'WHERE        (ReciptType = 12 )')
    Left = 600
    Top = 248
    object qryRTStoreCaption: TStringField
      FieldName = 'StoreCaption'
      Size = 50
    end
    object qryRTPerson1Caption: TStringField
      FieldName = 'Person1Caption'
      Size = 50
    end
    object qryRTPerson2Caption: TStringField
      FieldName = 'Person2Caption'
      Size = 50
    end
    object qryRTSection2Caption: TStringField
      FieldName = 'Section2Caption'
      Size = 50
    end
    object qryRTExpireDateCaption: TStringField
      FieldName = 'ExpireDateCaption'
      Size = 50
    end
    object qryRTControlCodeCaption: TStringField
      FieldName = 'ControlCodeCaption'
      Size = 50
    end
    object qryRTUseUnitCaseCaption: TStringField
      FieldName = 'UseUnitCaseCaption'
      Size = 50
    end
    object qryRTAidInfoCaption: TStringField
      FieldName = 'AidInfoCaption'
      Size = 50
    end
    object qryRTReportFileCaption1: TStringField
      FieldName = 'ReportFileCaption1'
    end
    object qryRTReportFileCaption2: TStringField
      FieldName = 'ReportFileCaption2'
    end
    object qryRTStore2Caption: TStringField
      FieldName = 'Store2Caption'
      Size = 50
    end
    object qryRTSection2CaptionWeight: TStringField
      FieldName = 'Section2CaptionWeight'
      Size = 50
    end
    object qryRTPerson2DetailCaption: TStringField
      FieldName = 'Person2DetailCaption'
      Size = 50
    end
    object qryRTOtherRptCaptions: TStringField
      FieldName = 'OtherRptCaptions'
      Size = 250
    end
    object qryRTPerson3Caption: TWideStringField
      FieldName = 'Person3Caption'
      Size = 50
    end
    object qryRTStandardCaption: TWideStringField
      FieldName = 'StandardCaption'
      Size = 50
    end
    object qryRTProcedureCaption: TStringField
      FieldName = 'ProcedureCaption'
      Size = 50
    end
    object qryRTStuffCodingAddFieldCaption: TStringField
      FieldName = 'StuffCodingAddFieldCaption'
      Size = 250
    end
    object qryRTPerson4Caption: TWideStringField
      FieldName = 'Person4Caption'
      Size = 50
    end
    object qryRTReciptCaption_L2: TStringField
      FieldName = 'ReciptCaption_L2'
      Size = 70
    end
    object qryRTCalcCostStorageCaption: TStringField
      FieldName = 'CalcCostStorageCaption'
      Size = 30
    end
    object qryRTReciptCaption: TStringField
      FieldName = 'ReciptCaption'
      Size = 70
    end
    object qryRTLookUpName: TStringField
      FieldName = 'LookUpName'
      ReadOnly = True
      Size = 50
    end
    object qryRTLookUpNameItem: TStringField
      FieldName = 'LookUpNameItem'
      ReadOnly = True
      Size = 50
    end
  end
  object qryReciptTypes: TADOQuery
    Connection = adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ReciptTypes')
    Left = 623
    Top = 316
  end
  object stpNewReciptsCorrelate: TADOStoredProc
    Connection = adcBSell
    ProcedureName = 'NewReciptsCorrelate;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@OldID'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = Null
      end
      item
        Name = '@FirstUser'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@ID'
        Attributes = [paNullable]
        DataType = ftLargeint
        Direction = pdInputOutput
        Precision = 19
        Value = Null
      end>
    Left = 648
    Top = 17
  end
  object qryTopicCode: TADOQuery
    Connection = adcAccounting
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     acc.Categories.TopicCode, acc.Categories.MoeenName_L1' +
        ', acc.Categories.MoeenName_L2'
      'FROM         acc.Categories LEFT OUTER JOIN'
      
        '                      acc.CategoriesForUse ON acc.Categories.Top' +
        'icCode = acc.CategoriesForUse.PrvTopicCode'
      'WHERE     (acc.CategoriesForUse.PrvTopicCode IS NULL)'
      ''
      ' ')
    Left = 922
    Top = 91
  end
  object qry_CTopicCode3: TADOQuery
    Connection = adcAccounting
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     CTopicCode3, CTopicName3_L1, CTopicName3_L2'
      'FROM         acc.CTopicCode3')
    Left = 922
    Top = 339
  end
  object qry_CTopicCode: TADOQuery
    Connection = adcAccounting
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT CTopicCode,CTopicName_L1,CTopicName_L2'
      'FROM acc.CenterTopics')
    Left = 922
    Top = 276
  end
  object qryDetailCode: TADOQuery
    Connection = adcAccounting
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'IF (SELECT LOWER(TYPE) FROM sys.objects WHERE name = '#39'Details'#39') ' +
        '= '#39'v'#39
      ''
      ''
      
        ' SELECT        Acc.MainDetails.DetailCode, Acc.MainDetails.Detai' +
        'lName_L1,Acc.MainDetails.DetailName_L2,Acc.MainDetails.CompanyCo' +
        'de, Acc.DetailGroups.DetailType'
      'FROM            Acc.MainDetails INNER JOIN'
      
        '                         Acc.DetailGroups ON Acc.MainDetails.Det' +
        'ailGroup = Acc.DetailGroups.DGID'
      '    ELSE'
      
        '   SELECT   DetailCode,DetailName_L1,DetailName_L2,CompanyCode, ' +
        '0 AS DetailType'
      'FROM            Acc.Details')
    Left = 930
    Top = 147
  end
  object qry_CTopicCode2: TADOQuery
    Connection = adcAccounting
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT CTopicCode2,CTopicName2_L1,CTopicName2_L2'
      'FROM acc.CenterTopics2')
    Left = 922
    Top = 211
  end
  object qry_Company: TADOQuery
    Connection = adcAccounting
    CursorType = ctStatic
    AfterOpen = qry_CompanyAfterOpen
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM   Acc.Companies'
      ' ')
    Left = 895
    Top = 427
  end
  object qryDayHour: TADOQuery
    Connection = adcsalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Amount FROM Pay.FormsInfo WHERE (FormType=16)AND(infoid =' +
        ' 1)')
    Left = 1008
    Top = 288
    object qryDayHourAmount: TBCDField
      FieldName = 'Amount'
      Precision = 19
    end
  end
  object qryDSW_JOB: TADOQuery
    AutoCalcFields = False
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\Projects\Fara201' +
      '0\Salary\Exe\Bimeh\Manufactory.mdb;Persist Security Info=False'
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'SELECT Job_Code, Job_Desc FROM Tab_Job')
    Left = 1008
    Top = 232
  end
  object qryWageDec: TADOQuery
    Connection = adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT        SalaryID, InfoName_L1, CalcText,Kind'
      
        'FROM            (SELECT        '#39'WAGE_'#39' + LTRIM(STR(FixedCalculat' +
        'ed.SalaryID)) AS SalaryID, FormsInfo_2.InfoName_L1,'
      
        '                                                    '#39'SUM(CASE WH' +
        'EN SalaryID IN('#39' + LTRIM(STR(FixedCalculated.SalaryID)) + '#39')THEN' +
        ' Price ELSE 0 END )'#39' AS CalcText'
      #9#9#9#9#9#9#9#9#9#9#9#9#9',1 AS Kind'
      
        '                           FROM Pay.FixedCalculated LEFT OUTER J' +
        'OIN'
      
        '                                                    Pay.FormsInf' +
        'o AS FormsInfo_2 ON FixedCalculated.SalaryID = FormsInfo_2.FormI' +
        'nfoID'
      
        '                           WHERE        (FixedCalculated.ShowLis' +
        'tKind = 1)'
      
        '                           GROUP BY FixedCalculated.SalaryID, Fo' +
        'rmsInfo_2.InfoName_L1, FormsInfo_2.FormInfoID'
      '                           UNION ALL'
      
        '                           SELECT        '#39'DEC_'#39' + LTRIM(STR(Fixe' +
        'dCalculated_1.SalaryID)) AS Expr3, MAX(CASE WHEN InsuranceCONSTi' +
        'nfo.InsuranceLabel_L1 IS NULL'
      
        '                                                    THEN FormsIn' +
        'fo_2.InfoName_L1 ELSE InsuranceCONSTinfo.InsuranceLabel_L1 END) ' +
        'AS Expr1,'
      
        '                                                    '#39'SUM(CASE WH' +
        'EN SalaryID IN('#39' + LTRIM(STR(FixedCalculated_1.SalaryID)) + '#39') A' +
        'ND ShowlistKind=2 THEN Price ELSE 0 END )'#39' AS Expr2'
      #9#9#9#9#9#9#9#9#9#9#9#9#9',2 AS Kind'
      
        '                           FROM Pay.InsuranceCONSTinfo RIGHT OUT' +
        'ER JOIN'
      
        '                                                    Pay.FormsInf' +
        'o AS FormsInfo_2 ON InsuranceCONSTinfo.FormInfoID = FormsInfo_2.' +
        'FormInfoID RIGHT OUTER JOIN'
      
        '                                                    Pay.FixedCal' +
        'culated AS FixedCalculated_1 ON FormsInfo_2.FormInfoID = FixedCa' +
        'lculated_1.SalaryID'
      
        '                           WHERE        (FixedCalculated_1.ShowL' +
        'istKind = 2)'
      
        '                           GROUP BY FixedCalculated_1.SalaryID, ' +
        'FormsInfo_2.InfoName_L1, FormsInfo_2.FormInfoID'
      '                           UNION ALL'
      
        '                           SELECT        '#39'CC_1'#39' AS Expr1, '#39#1581#1602#1608#1602' ' +
        #1602#1575#1576#1604' '#1662#1585#1583#1575#1582#1578#39' AS Expr2,'
      
        '                                                    '#39'SUM(CASE Sh' +
        'owlistKind WHEN 1 THEN price ELSE 0 END)'#39' + '#39'-(SUM(CASE Showlist' +
        'Kind WHEN 2 THEN price ELSE 0 END)'#39' + '#39'+SUM(CASE WHEN ShowlistKi' +
        'nd = 11 AND bedbes = 2 THEN price ELSE 0 END))'#39
      '                                                     AS Expr3'
      #9#9#9#9#9#9#9#9#9#9#9#9#9',2 AS Kind'
      '                           UNION ALL'
      
        '                           SELECT        '#39'CC_2'#39' AS Expr1, '#39#1581#1602#1608#1602' ' +
        #1585#1608#1586#1575#1606#1607#39' AS Expr2,'
      
        '                                                    '#39'CAST(SUM(CA' +
        'SE WHEN ((FormsInfo_2.InfoID BETWEEN 1 AND 4) '#39' + '#39'AND (FormsInf' +
        'o_2.FormType = 22)) THEN price ELSE 0 END)  / '#39' + '#39'(CASE WHEN Fu' +
        'nctions_Sum.FunctionDay <> 0 THEN Functions_Sum.FunctionDay ELSE' +
        ' 1 END) AS money)'#39
      '                                                     AS Expr3'
      #9#9#9#9#9#9#9#9#9#9#9#9#9',2 AS Kind'
      '                           UNION ALL'
      
        '                           SELECT        '#39'CC_3'#39' AS Expr1, '#39#1580#1605#1593' '#1581 +
        #1602#1608#1602' '#1608' '#1605#1586#1575#1610#1575#39' AS Expr2, '#39'SUM(CASE ShowlistKind WHEN 1 THEN price ' +
        'ELSE 0 END)'#39' AS Expr3'
      #9#9#9#9#9#9#9#9#9#9#9#9#9',2 AS Kind'
      '                           UNION ALL'
      
        '                           SELECT        '#39'CC_4'#39' AS Expr1, '#39#1576#1610#1605#1607' ' +
        #1603#1575#1585#1601#1585#1605#1575#39' AS Expr2, '#39'SUM(CASE WHEN (ShowlistKind IN (2, 4, 15, 14' +
        ') AND bedbes = 1) THEN price ELSE 0 END)'#39' AS Expr3'
      #9#9#9#9#9#9#9#9#9#9#9#9#9',2 AS Kind'
      '                           UNION ALL'
      
        '                           SELECT        '#39'CC_5'#39' AS Expr1, '#39#1605#1588#1605#1608#1604 +
        ' '#1576#1610#1605#1607#39' AS Expr2, '#39'SUM(CASE ShowlistKind WHEN 3 THEN price ELSE 0' +
        ' END)'#39' AS Expr3'
      #9#9#9#9#9#9#9#9#9#9#9#9#9',2 AS Kind'
      '                           UNION ALL'
      
        '                           SELECT        '#39'CC_6'#39' AS Expr1, '#39#39' AS ' +
        'Expr2, /*'#1605#1588#1605#1608#1604' '#1605#1575#1604#1610#1575#1578'*/'
      
        '                                                    '#39'SUM(CASE WH' +
        'EN (ShowlistKind = 11 AND bedbes = 0 AND CalCulateKind = 12) THE' +
        'N 0 ELSE 0 END)'#39' AS Expr3'
      #9#9#9#9#9#9#9#9#9#9#9#9#9',2 AS Kind'
      '                           UNION ALL'
      
        '                           SELECT        '#39'CC_7'#39' AS Expr1, '#39#1605#1575#1604#1610#1575 +
        #1578#39' AS Expr2, '#39'SUM(CASE WHEN (ShowlistKind = 11 AND bedbes = 2) T' +
        'HEN price ELSE 0 END)'#39' AS Expr3'
      #9#9#9#9#9#9#9#9#9#9#9#9#9',2 AS Kind'
      '                           UNION ALL'
      
        '                           SELECT        '#39'CC_8'#39' AS Expr1, '#39#1580#1605#1593' '#1603 +
        #1587#1608#1585#1575#1578#39' AS Expr2,'
      
        '                                                    '#39'SUM(CASE Sh' +
        'owlistKind WHEN 2 THEN price ELSE 0 END)'#39' + '#39'+ SUM(CASE WHEN Sho' +
        'wlistKind = 11 AND bedbes = 2 THEN price ELSE 0 END)'#39' AS Expr3'
      #9#9#9#9#9#9#9#9#9#9#9#9#9',2 AS Kind'
      '                           UNION ALL'
      
        '                           SELECT        '#39'OTHER_'#39' + LTRIM(STR(Fi' +
        'xedCalculated_OTHER.SalaryID)) + '#39'_'#39' + LTRIM(STR(FixedCalculated' +
        '_OTHER.BedBes))'
      
        '                                                    + '#39'_'#39' + LTRI' +
        'M(STR(FixedCalculated_OTHER.CalCulateKind)) + '#39'_'#39' + LTRIM(STR(Fi' +
        'xedCalculated_OTHER.ShowListKind)) AS Expr3,'
      
        '                                                    FormsInfo.In' +
        'foName_L1 + CASE WHEN BedBes = 0 AND CalCulateKind = 10 AND Show' +
        'ListKind = 3 THEN '#39' '#1605#1588#1605#1608#1604' '#1576#1610#1605#1607'  '#39' WHEN BedBes = 1 AND'
      
        '                                                    CalCulateKin' +
        'd = 10 AND ShowListKind = 14 THEN '#39' '#1576#1610#1605#1607' '#1576#1610#1603#1575#1585#1610'  '#39' WHEN BedBes =' +
        ' 1 AND CalCulateKind = 10 AND'
      
        '                                                    ShowListKind' +
        ' = 4 THEN '#39' '#1576#1610#1605#1607' '#1587#1607#1605' '#1603#1575#1585#1601#1585#1605#1575'  '#39' WHEN BedBes = 2 AND CalCulateKin' +
        'd = 10 AND ShowListKind = 5 THEN '#39' 30% '#1581#1602' '#1576#1610#1605#1607' '#39' WHEN BedBes = 1' +
        ' AND'
      
        '                                                    CalCulateKin' +
        'd = 10 AND'
      
        '                                                    ShowListKind' +
        ' = 4 THEN '#39' '#1581#1602' '#1576#1610#1605#1607' '#1587#1607#1605' '#1603#1575#1585#1601#1585#1605#1575#39' ELSE '#39#39' END + CASE WHEN CalCula' +
        'teKind > 11 THEN '#39'_'#39' + LTRIM(Str(FixedCalculated_OTHER.CalCulate' +
        'Kind -'
      
        '                                                     11)) ELSE '#39 +
        #39' END AS Expr1, '#39'SUM(CASE WHEN SalaryID IN('#39' + LTRIM(STR(FixedCa' +
        'lculated_OTHER.SalaryID))'
      
        '                                                    + '#39') AND Bed' +
        'Bes = '#39' + LTRIM(STR(FixedCalculated_OTHER.BedBes))'
      '                                                    + '#39
      
        '  AND CalCulateKind = '#39' + LTRIM(STR(FixedCalculated_OTHER.CalCul' +
        'ateKind))'
      '                                                    + '#39
      
        '   AND ShowListKind = '#39' + LTRIM(STR(FixedCalculated_OTHER.ShowLi' +
        'stKind)) + '#39' THEN Price ELSE 0 END )'#39' AS Expr2'
      #9#9#9#9#9#9#9#9#9#9#9#9#9',2 AS Kind'
      
        '                           FROM Pay.FixedCalculated AS FixedCalc' +
        'ulated_OTHER INNER JOIN'
      
        '                                                    Pay.FormsInf' +
        'o ON FixedCalculated_OTHER.FormInfoID = FormsInfo.FormInfoID'
      
        '                           WHERE        (FixedCalculated_OTHER.S' +
        'howListKind > 2)'
      
        '                           GROUP BY FixedCalculated_OTHER.Salary' +
        'ID, FixedCalculated_OTHER.BedBes, FixedCalculated_OTHER.CalCulat' +
        'eKind, FixedCalculated_OTHER.ShowListKind,'
      
        '                                                    FormsInfo.In' +
        'foName_L1) AS qryWageDec'
      'ORDER BY SalaryID')
    Left = 720
    Top = 328
    object qryWageDecSalaryID: TStringField
      DisplayLabel = #1603#1583' '#1601#1585#1605#1608#1604
      FieldName = 'SalaryID'
      ReadOnly = True
      Size = 30
    end
    object qryWageDecInfoName_L1: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1601#1585#1605#1608#1604
      FieldName = 'InfoName_L1'
      ReadOnly = True
      Size = 255
    end
    object qryWageDecCalcText: TStringField
      FieldName = 'CalcText'
      ReadOnly = True
      Size = 300
    end
    object qryWageDecKind: TIntegerField
      FieldName = 'Kind'
      ReadOnly = True
    end
  end
  object qryConfigPay: TADOQuery
    AutoCalcFields = False
    Connection = adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT        CompanyName, CompanyDesc, RegisterNumber, Address,' +
        ' Tel1, Tel2, Fax, Email, WebSite, StartMaliYear, FinishMaliYear,' +
        ' EconomicNumber, PostalCode, ManagementName_L1, CompanyName_L2, '
      
        '                         CompanyDesc_L2, Address_L2, ManagementN' +
        'ame_L2, DecContainTaxunder, DecContainTaxNumerator, TFN, TIN, Si' +
        'gner1NationalID, Signer1Name, Signer1LastName, Signer1Job, Signe' +
        'r2NationalID, '
      
        '                         Signer2Name, Signer2LastName, Signer2Jo' +
        'b, GovConstAmount, GovSpouse, GovChild'
      'FROM Pay.Config')
    Left = 1008
    Top = 368
  end
  object pdbConfigPay: TppDBPipeline
    UserName = 'pdbConfigPay'
    Left = 1000
    Top = 424
  end
  object qrytab_job: TADOQuery
    Connection = adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT        JOB_CODE, JOB_DESC'
      'FROM            tab_job')
    Left = 1008
    Top = 160
  end
  object ADOCmdUpDate: TADOCommand
    Connection = adcsalary
    ExecuteOptions = [eoExecuteNoRecords]
    Parameters = <>
    Left = 842
    Top = 75
  end
  object RESTClient1: TRESTClient
    Accept = '*/*'
    AcceptCharset = 'UTF-8, *;q=0.8'
    BaseURL = 
      'http://apex.fararayanehco.com/ords/fara/integration/SendPayrollP' +
      'aper'
    Params = <
      item
        Kind = pkREQUESTBODY
        name = 'body'
        Value = 'd:\Projects\FaraXE8\1396050005_1.PNG'
      end>
    HandleRedirects = True
    SynchronizedEvents = False
    Left = 917
    Top = 30
  end
  object RESTRequest1: TRESTRequest
    Accept = '*/*'
    Client = RESTClient1
    Method = rmPOST
    Params = <
      item
        Kind = pkHTTPHEADER
        name = 'nationalcode'
        Value = '4322394744'
      end
      item
        Kind = pkHTTPHEADER
        name = 'year'
        Value = '1398'
      end
      item
        Kind = pkHTTPHEADER
        name = 'month'
        Value = '4'
      end
      item
        Kind = pkHTTPHEADER
        name = 'orgid'
        Value = '1000'
      end
      item
        Kind = pkHTTPHEADER
        name = 'filename'
        Value = '1396050005_1.PNG'
      end
      item
        Kind = pkHTTPHEADER
        name = 'body'
        Value = 'c:\Users\Mahmood\Desktop\1\1396050005_1.PNG'
      end>
    SynchronizedEvents = False
    Left = 989
    Top = 30
  end
  object qryTmpTmpP: TADOQuery
    AutoCalcFields = False
    Connection = adcsalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select 0')
    Left = 397
    Top = 15
  end
  object adcAuditLog: TADOConnection
    Tag = 1
    CommandTimeout = 15
    ConnectionString = 
      'Provider=SQLOLEDB;Password=tycedar;Persist Security Info=True;Us' +
      'er ID=FaraUser;Initial Catalog=AuditLog;Data Source=.;Use Proced' +
      'ure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstati' +
      'on ID=ABEDI;Use Encryption for Data=False;Tag with column collat' +
      'ion when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB'
    BeforeConnect = adcAuditLogBeforeConnect
    Left = 37
    Top = 144
  end
  object qryConfigUser: TADOQuery
    Connection = adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'UserID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select *  from  ConfigUser'
      'WHERE        ( UserID = :UserID )')
    Left = 768
    Top = 321
  end
  object spNewFormsCorrelate: TADOStoredProc
    Connection = adcBSell
    ProcedureName = 'NewFormsCorrelate;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@OldID'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = Null
      end
      item
        Name = '@FirstUser'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@ID'
        Attributes = [paNullable]
        DataType = ftLargeint
        Direction = pdInputOutput
        Precision = 19
        Value = Null
      end>
    Left = 768
    Top = 17
  end
  object qryLookUps: TADOQuery
    Connection = adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     LookUpID, Name ,Code'
      'FROM         LookUps'
      'WHERE     (Kind <> 0)')
    Left = 136
    Top = 445
  end
  object fdcBSell: TFDConnection
    Params.Strings = (
      'User_Name=farauser'
      'OSAuthent=No'
      'SERVER=.'
      'Password=tycedar'
      'ApplicationName=Fara'
      'Workstation=D1'
      'Database=BPMS_TPIT_1399'
      'DriverID=MSSQL')
    LoginPrompt = False
    BeforeConnect = fdcBSellBeforeConnect
    Left = 216
    Top = 80
  end
  object qryCn: TADOQuery
    AutoCalcFields = False
    Connection = adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select 0')
    Left = 325
    Top = 199
  end
  object qry_TempAss: TADOQuery
    AutoCalcFields = False
    Connection = adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select 0')
    Left = 401
    Top = 135
  end
  object SkinManager: TsSkinManager
    ButtonsOptions.OldGlyphsMode = True
    Active = False
    InternalSkins = <>
    MenuSupport.Font.Charset = DEFAULT_CHARSET
    MenuSupport.Font.Color = clWindowText
    MenuSupport.Font.Height = -11
    MenuSupport.Font.Name = 'Segoe UI'
    MenuSupport.Font.Style = []
    SkinDirectory = 'c:\Skins'
    SkinName = 'Fara'
    SkinInfo = 'N/A'
    ThirdParty.ThirdEdits = 
      'TEdit'#13#10'TMemo'#13#10'TMaskEdit'#13#10'TLabeledEdit'#13#10'THotKey'#13#10'TListBox'#13#10'TCheck' +
      'ListBox'#13#10'TRichEdit'#13#10'TDateTimePicker'#13#10
    ThirdParty.ThirdButtons = 'TButton'#13#10
    ThirdParty.ThirdBitBtns = 'TBitBtn'#13#10
    ThirdParty.ThirdCheckBoxes = 'TCheckBox'#13#10'TRadioButton'#13#10'TGroupButton'#13#10
    ThirdParty.ThirdGroupBoxes = 'TGroupBox'#13#10'TRadioGroup'#13#10
    ThirdParty.ThirdListViews = 'TListView'#13#10
    ThirdParty.ThirdPanels = 'TPanel'#13#10
    ThirdParty.ThirdGrids = 'TStringGrid'#13#10'TDrawGrid'#13#10
    ThirdParty.ThirdTreeViews = 'TTreeView'#13#10
    ThirdParty.ThirdComboBoxes = 'TComboBox'#13#10'TColorBox'#13#10
    ThirdParty.ThirdWWEdits = ' '#13#10
    ThirdParty.ThirdVirtualTrees = ' '#13#10
    ThirdParty.ThirdGridEh = ' '#13#10
    ThirdParty.ThirdPageControl = 'TPageControl'#13#10
    ThirdParty.ThirdTabControl = 'TTabControl'#13#10
    ThirdParty.ThirdToolBar = 'TToolBar'#13#10
    ThirdParty.ThirdStatusBar = 'TStatusBar'#13#10
    ThirdParty.ThirdSpeedButton = 'TSpeedButton'#13#10
    ThirdParty.ThirdScrollControl = 'TScrollBox'#13#10
    ThirdParty.ThirdUpDown = 'TUpDown'#13#10
    ThirdParty.ThirdScrollBar = 'TScrollBar'#13#10
    ThirdParty.ThirdStaticText = 'TStaticText'#13#10
    ThirdParty.ThirdNativePaint = ' '#13#10
    OnAfterChange = SkinManagerAfterChange
    Left = 616
    Top = 456
  end
  object qryStuffImages: TADOQuery
    Connection = adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'StuffCode'
        DataType = ftLargeint
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT StuffCode, StuffImage, ImageType'
      'FROM StuffCodingImage'
      'WHERE StuffCode = :StuffCode')
    Left = 824
    Top = 156
    object qryStuffImagesStuffCode: TLargeintField
      FieldName = 'StuffCode'
    end
    object qryStuffImagesStuffImage: TBlobField
      FieldName = 'StuffImage'
    end
    object qryStuffImagesImageType: TIntegerField
      FieldName = 'ImageType'
    end
  end
  object stpSp_dboption: TADOStoredProc
    Connection = adcFaraSystem
    ProcedureName = 'sp_dboption'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@dbname'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 128
        Value = 'Bsell_damyaran_85'
      end
      item
        Name = '@optname'
        Attributes = [paNullable]
        DataType = ftString
        Size = 35
        Value = 'read only'
      end
      item
        Name = '@optvalue'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 234
    Top = 463
    object stpSp_dboptionOptionName: TWideStringField
      FieldName = 'OptionName'
      Size = 35
    end
    object stpSp_dboptionCurrentSetting: TStringField
      FieldName = 'CurrentSetting'
      ReadOnly = True
      Size = 3
    end
  end
  object fdcAuditLog: TFDConnection
    Params.Strings = (
      'User_Name=farauser'
      'OSAuthent=No'
      'SERVER=.'
      'Password=tycedar'
      'ApplicationName=Fara'
      'Workstation=D1'
      'Database=AuditLog'
      'DriverID=MSSQL')
    LoginPrompt = False
    BeforeConnect = fdcAuditLogBeforeConnect
    Left = 224
    Top = 136
  end
end

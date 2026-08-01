inherited EmissionDocF: TEmissionDocF
  Left = 249
  Top = 148
  ActiveControl = DBEdtCompany
  Caption = #1589#1583#1608#1585' '#1587#1606#1583
  ClientHeight = 488
  ClientWidth = 632
  Position = poDesktopCenter
  ExplicitWidth = 638
  ExplicitHeight = 517
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Left = -1
    Top = 444
    Width = 624
    Height = 5
    ExplicitLeft = -1
    ExplicitTop = 456
    ExplicitWidth = 640
    ExplicitHeight = 5
  end
  object Label1: TLabel [1]
    Left = 358
    Top = 340
    Width = 54
    Height = 13
    Caption = #1588#1605#1575#1585#1607' '#1587#1606#1583
    FocusControl = DBEdit1
  end
  object Label2: TLabel [2]
    Left = 558
    Top = 340
    Width = 59
    Height = 13
    Caption = #1705#1583' '#1608' '#1606#1575#1605' '#1608#1575#1581#1583
    FocusControl = DBEdtCompany
  end
  object Label3: TLabel [3]
    Left = 358
    Top = 365
    Width = 45
    Height = 13
    Caption = #1578#1575#1585#1610#1582' '#1587#1606#1583
    FocusControl = DBEdit3
  end
  object Label4: TLabel [4]
    Left = 531
    Top = 391
    Width = 86
    Height = 13
    Caption = #1588#1585#1581' '#1593#1605#1608#1605#1610' '#1587#1606#1583
    FocusControl = dbmmoDocTopic_L1
  end
  object btn1: TSpeedButton [5]
    Left = 443
    Top = 335
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = btn1Click
  end
  inherited Panel1: TPanel
    Width = 632
    TabOrder = 4
    ExplicitWidth = 640
    inherited Image1: TImage
      Left = 586
      ExplicitLeft = 586
    end
    inherited lblTopic0: TLabel
      Left = 514
      OnClick = lblTopic0Click
      ExplicitLeft = 514
    end
    inherited lblTopic1: TLabel
      Left = 493
      ExplicitLeft = 493
    end
  end
  inherited pnlDown: TPanel
    Top = 451
    Width = 632
    TabOrder = 5
    ExplicitTop = 463
    ExplicitWidth = 640
    inherited btnClose: TBitBtn
      Action = DataSetCancel1
      Caption = #1575#1606#1589#1600#1600#1600#1585#1575#1601
    end
    object BitBtn1: TBitBtn
      Left = 556
      Top = 6
      Width = 75
      Height = 25
      Action = DataSetPost1
      Caption = #1578#1571#1610#1610#1600#1600#1600#1583
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      Left = 475
      Top = 6
      Width = 75
      Height = 25
      Caption = #1604#1610#1587#1578' '#1582#1591#1575#1607#1575
      TabOrder = 2
      OnClick = BitBtn2Click
    end
  end
  object DBEdit1: TDBEdit [8]
    Left = 248
    Top = 336
    Width = 106
    Height = 21
    DataField = 'SecondaryDocNo'
    DataSource = srcDocGroup
    TabOrder = 1
  end
  object DBEdtCompany: TDBEdit [9]
    Left = 472
    Top = 336
    Width = 80
    Height = 21
    DataField = 'CompanyCode'
    DataSource = srcDocGroup
    TabOrder = 0
  end
  object DBEdit3: TDBEdit [10]
    Left = 248
    Top = 361
    Width = 106
    Height = 21
    DataField = 'DocDate'
    DataSource = srcDocGroup
    TabOrder = 2
  end
  object dbmmoDocTopic_L1: TDBMemo [11]
    Left = 248
    Top = 408
    Width = 369
    Height = 47
    Color = clCream
    DataField = 'DocTopic_L1'
    DataSource = srcDocGroup
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object DBGrid1: TDBGrid [12]
    Left = 0
    Top = 73
    Width = 632
    Height = 248
    Align = alTop
    Color = clCream
    DataSource = srcExpenseList
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 6
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'FormNo'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FormDate'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cacther'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Amount'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TopicCode'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DetailCode'
        Width = 41
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Bed'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Bes'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CustDetailId'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Desc'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CatcherItem'
        Width = 85
        Visible = True
      end>
  end
  object Panel2: TPanel [13]
    Left = 0
    Top = 321
    Width = 241
    Height = 130
    Align = alLeft
    TabOrder = 7
    ExplicitHeight = 142
    object lslWarnings: TListBox
      Left = 1
      Top = 1
      Width = 239
      Height = 140
      Align = alClient
      Color = 16744576
      Font.Charset = ARABIC_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      TabOrder = 0
      Visible = False
      OnClick = lslWarningsClick
    end
  end
  object dbedt_CompanyName_L1: TDBEdit [14]
    Left = 443
    Top = 362
    Width = 174
    Height = 19
    TabStop = False
    Color = clBtnFace
    Ctl3D = False
    DataField = '_CompanyName_L1'
    DataSource = srcDocGroup
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
  end
  inherited ActionList1: TActionList
    Top = 24
    inherited DataSetPost1: TDataSetPost
      DataSource = srcDocGroup
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = 'DataSetInsert1'
    end
    object actFilter: TAction
      Caption = 'actFilter'
      OnExecute = actFilterExecute
    end
  end
  object srcDocGroup: TDataSource
    DataSet = qryDocGroup
    Left = 352
    Top = 8
  end
  object qryDocGroup: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    AfterInsert = qryDocGroupAfterInsert
    AfterPost = qryDocGroupAfterPost
    AfterCancel = qryDocGroupAfterCancel
    Parameters = <>
    SQL.Strings = (
      'SELECT *  FROM  Acc.DocGroups;')
    Left = 272
    Top = 8
    object qryDocGroupSerial: TIntegerField
      FieldName = 'Serial'
    end
    object qryDocGroupSecondaryDocNo: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1587#1606#1583
      FieldName = 'SecondaryDocNo'
      OnChange = qryDocGroupSecondaryDocNoChange
    end
    object qryDocGroupCompanyCode: TWordField
      DisplayLabel = #1603#1583' '#1608#1575#1581#1583
      FieldName = 'CompanyCode'
      OnChange = qryDocGroupCompanyCodeChange
    end
    object qryDocGroupDocTypeCode: TIntegerField
      FieldName = 'DocTypeCode'
    end
    object qryDocGroupTopic_L1: TStringField
      DisplayLabel = #1588#1585#1581' '#1593#1605#1608#1605#1740' '#1587#1606#1583
      FieldName = 'DocTopic_L1'
      Size = 300
    end
    object qryDocGroupDocDate: TStringField
      DisplayLabel = #1578#1575#1585#1740#1582' '#1587#1606#1583
      FieldName = 'DocDate'
      FixedChar = True
      Size = 10
    end
    object qryDocGroupUserID: TIntegerField
      FieldName = 'UserID'
    end
    object qryDocGroupMakeDate: TDateTimeField
      FieldName = 'MakeDate'
    end
    object qryDocGroupFirstUser: TStringField
      FieldName = 'FirstUser'
      Size = 50
    end
    object intgrfldDocGroupYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryDocGroup_CompanyName_L1: TStringField
      DisplayWidth = 100
      FieldKind = fkLookup
      FieldName = '_CompanyName_L1'
      LookupDataSet = qry_Company
      LookupKeyFields = 'CompanyCode'
      LookupResultField = 'CompanyName_L1'
      KeyFields = 'CompanyCode'
      Size = 100
      Lookup = True
    end
  end
  object qryDocuments: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'SELECT *  FROM Acc.Documents;')
    Left = 360
    Top = 128
  end
  object qryExpenseList: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'FromFormNo2'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ToFormNo2'
        DataType = ftWideString
        Size = 10
        Value = '2147483647'
      end
      item
        Name = 'FromFormDate2'
        DataType = ftWideString
        Size = 10
        Value = '0000/00/00'
      end
      item
        Name = 'ToFormDate2'
        DataType = ftWideString
        Size = 10
        Value = '9999/99/99'
      end
      item
        Name = 'FromState2'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ToState2'
        DataType = ftWideString
        Size = 1
        Value = '3'
      end>
    SQL.Strings = (
      
        'SELECT  Acc.Expense.ExpID, Acc.Expense.FormNo, Acc.Expense.FormD' +
        'ate, MIN(Acc.Expense.Cacther) AS Cacther, Acc.Expense.State, Acc' +
        '.Expense.Kind,'
      
        '   Acc.Expense.Preference, Acc.Expense.Comments, Acc.Expense.Top' +
        'icCode, Acc.Expense.DetailCode, Acc.Expense.CTopicCode, '
      
        '   Sum(Acc.ExpenseItems.Bed)-Sum(Acc.ExpenseItems.Bes) AS Amount' +
        ', 0 AS Checked, Sum(Acc.ExpenseItems.Bed) AS bed, Sum(Acc.Expens' +
        'eItems.Bes) AS bes,'
      
        '   Acc.Expense.CustDetailId, Acc.Details.DetailName_L1, MIN(Acc.' +
        'ExpenseItems.CatcherItem) AS CatcherItem, Acc.Expense.PayerTopic' +
        'Code, Acc.Expense.PayerDetailCode,'
      
        '   Acc.Expense.PayerCTopicCode, Acc.Expense.firstUser, Acc.Expen' +
        'se.lastUser'
      ''
      
        'FROM Acc.Expense INNER JOIN Acc.Details ON Acc.Expense.CustDetai' +
        'lId = Acc.Details.DetailCode AND Acc.Expense.CustDetailId = Acc.' +
        'Details.DetailCode '
      
        '       LEFT JOIN Acc.ExpenseItems ON Acc.Expense.ExpID = Acc.Exp' +
        'enseItems.ExpID'
      ''
      'WHERE (FormNo Between :FromFormNo2 And :ToFormNo2)'
      
        '                 AND (FormDate Between :FromFormDate2 And :ToFor' +
        'mDate2)'
      '                 AND (State Between :FromState2 And :ToState2)'
      ''
      
        'GROUP BY Acc.Expense.ExpID, Acc.Expense.FormNo, Acc.Expense.Form' +
        'Date, Acc.Expense.State, Acc.Expense.Kind, Acc.Expense.Preferenc' +
        'e, Acc.Expense.Comments,'
      
        ' Acc.Expense.TopicCode, Acc.Expense.DetailCode, Acc.Expense.CTop' +
        'icCode, Acc.Expense.CustDetailId, Acc.Details.DetailName_L1, Acc' +
        '.Expense.PayerTopicCode,'
      
        ' Acc.Expense.PayerDetailCode, Acc.Expense.PayerCTopicCode, Acc.E' +
        'xpense.firstUser, Acc.Expense.lastUser, Acc.Expense.Kind'
      ''
      'ORDER BY Acc.Expense.FormDate;'
      '')
    Left = 64
    Top = 117
    object qryExpenseListExpID: TAutoIncField
      FieldName = 'ExpID'
      ReadOnly = True
    end
    object qryExpenseListFormNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607
      FieldName = 'FormNo'
    end
    object qryExpenseListFormDate: TWideStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'FormDate'
      Size = 10
    end
    object qryExpenseListCacther: TWideStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1591#1585#1601' '#1581#1587#1575#1576
      FieldName = 'Cacther'
      Size = 100
    end
    object qryExpenseListPreference: TIntegerField
      Tag = 3
      DisplayLabel = #1575#1608#1604#1608#1610#1578' '#1662#1585#1583#1575#1582#1578
      FieldName = 'Preference'
    end
    object qryExpenseListAmount: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1602#1575#1576#1604' '#1662#1585#1583#1575#1582#1578
      FieldName = 'Amount'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryExpenseListTopicCode: TIntegerField
      Tag = 3
      DisplayLabel = #1581#1587#1575#1576
      FieldName = 'TopicCode'
    end
    object qryExpenseListDetailCode: TIntegerField
      Tag = 3
      DisplayLabel = #1578#1601#1589#1610#1604#1610
      FieldName = 'DetailCode'
    end
    object qryExpenseListCTopicCode: TIntegerField
      Tag = 3
      DisplayLabel = #1662#1585#1608#1688#1607
      FieldName = 'CTopicCode'
    end
    object qryExpenseList_TopicCodeName: TStringField
      FieldKind = fkLookup
      FieldName = '_TopicCodeName'
      LookupDataSet = qryTopicCode
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'MoeenName_L1'
      KeyFields = 'TopicCode'
      Size = 150
      Lookup = True
    end
    object qryExpenseList_DetailCode: TStringField
      FieldKind = fkLookup
      FieldName = '_DetailCode'
      LookupDataSet = qryDetails
      LookupKeyFields = 'DetailCode'
      LookupResultField = 'DetailName_L1'
      KeyFields = 'DetailCode'
      Size = 150
      Lookup = True
    end
    object qryExpenseList_CTopicCode: TStringField
      FieldKind = fkLookup
      FieldName = '_CTopicCode'
      LookupDataSet = qryCenterTopics
      LookupKeyFields = 'CTopicCode'
      LookupResultField = 'CTopicName_L1'
      KeyFields = 'CTopicCode'
      Size = 150
      Lookup = True
    end
    object qryExpenseListState: TSmallintField
      Tag = 3
      DisplayLabel = #1608#1590#1593#1610#1578
      FieldName = 'State'
    end
    object qryExpenseListKind: TSmallintField
      FieldName = 'Kind'
    end
    object qryExpenseListComments: TWideStringField
      FieldName = 'Comments'
      Size = 120
    end
    object qryExpenseListChecked: TSmallintField
      FieldName = 'Checked'
    end
    object qryExpenseListBed: TBCDField
      DisplayLabel = #1575#1589#1604' '#1605#1576#1604#1594
      FieldName = 'Bed'
      currency = True
      Precision = 19
    end
    object qryExpenseListBes: TBCDField
      DisplayLabel = #1603#1587#1608#1585#1575#1578
      FieldName = 'Bes'
      currency = True
      Precision = 19
    end
    object qryExpenseListCustDetailId: TIntegerField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610
      FieldName = 'CustDetailId'
    end
    object qryExpenseListCatcherItem: TWideStringField
      Tag = 3
      DisplayLabel = #1711#1610#1585#1606#1583#1607' '#1608#1580#1607
      FieldName = 'CatcherItem'
      Size = 80
    end
    object qryExpenseListPayerTopicCode: TIntegerField
      FieldName = 'PayerTopicCode'
    end
    object qryExpenseListPayerDetailCode: TIntegerField
      FieldName = 'PayerDetailCode'
    end
    object qryExpenseListPayerCTopicCode: TIntegerField
      FieldName = 'PayerCTopicCode'
    end
    object strngfldExpenseListDetailName_L1: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1578#1601#1589#1740#1604#1740
      FieldName = 'DetailName_L1'
    end
  end
  object srcExpenseList: TDataSource
    DataSet = qryExpenseList
    Left = 168
    Top = 136
  end
  object qryDetails: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT DetailCode,  DetailName_L1 FROM Acc.Details'
      '')
    Left = 538
    Top = 197
  end
  object qryTopicCode: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     CategoriesForUse_1.TopicCode, CategoriesForUse_1.Moee' +
        'nName_L1'
      'FROM         Acc.CategoriesForUse RIGHT OUTER JOIN'
      
        '                      Acc.CategoriesForUse AS CategoriesForUse_1' +
        ' ON Acc.CategoriesForUse.PrvTopicCode = CategoriesForUse_1.Topic' +
        'Code'
      'WHERE     (Acc.CategoriesForUse.PrvLevelID IS NULL)'
      ''
      '')
    Left = 538
    Top = 135
  end
  object qryCenterTopics: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT  CTopicCode,  CTopicName_L1  FROM  Acc.CenterTopics')
    Left = 538
    Top = 271
  end
  object qry_Company: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT  * FROM  acc.Companies'
      'order by companycode')
    Left = 198
    Top = 21
    object intgrfld_CompanyCompanyCode: TIntegerField
      FieldName = 'CompanyCode'
    end
    object intgrfld_CompanyLevelID: TIntegerField
      FieldName = 'LevelID'
    end
    object dtmfld_CompanyMakeDate: TDateTimeField
      FieldName = 'MakeDate'
    end
    object qry_CompanyCompanyName_L1: TStringField
      FieldName = 'CompanyName_L1'
      Size = 150
    end
    object qry_CompanyCompanyName_L2: TStringField
      FieldName = 'CompanyName_L2'
      Size = 150
    end
    object qry_CompanyComment_L1: TStringField
      FieldName = 'Comment_L1'
      Size = 255
    end
    object qry_CompanyComment_L2: TStringField
      FieldName = 'Comment_L2'
      Size = 255
    end
  end
end

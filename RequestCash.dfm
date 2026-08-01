inherited RequestCashF: TRequestCashF
  BorderStyle = bsSizeToolWin
  Caption = #1575#1602#1604#1575#1605' '#1583#1585#1582#1608#1575#1587#1578' '#1608#1580#1607
  ClientHeight = 491
  ClientWidth = 861
  OnResize = FormResize
  ExplicitWidth = 877
  ExplicitHeight = 530
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 434
    Width = 853
    ExplicitTop = 446
    ExplicitWidth = 869
  end
  object Label1: TLabel [1]
    Left = 0
    Top = 73
    Width = 861
    Height = 15
    Align = alTop
    AutoSize = False
    Color = clSkyBlue
    ParentColor = False
    Transparent = False
    ExplicitLeft = -162
    ExplicitTop = 122
    ExplicitWidth = 939
  end
  inherited Panel1: TPanel
    Width = 861
    ExplicitWidth = 869
    inherited Image1: TImage
      Left = 815
      ExplicitLeft = 815
    end
    inherited lblTopic0: TLabel
      Left = 691
      Width = 104
      Caption = #1575#1602#1604#1575#1605' '#1583#1585#1582#1608#1575#1587#1578' '#1608#1580#1607
      ExplicitLeft = 599
      ExplicitWidth = 104
    end
    inherited lblTopic1: TLabel
      Left = 722
      ExplicitLeft = 722
    end
  end
  inherited pnlDown: TPanel
    Top = 454
    Width = 861
    ExplicitTop = 466
    ExplicitWidth = 869
    inherited btnClose: TBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 4
      Height = 29
      Align = alLeft
      ExplicitLeft = 4
      ExplicitTop = 4
      ExplicitHeight = 29
    end
    object pnlOk: TPanel
      Left = 463
      Top = 1
      Width = 162
      Height = 35
      Align = alRight
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 1
      object BitBtn1: TBitBtn
        AlignWithMargins = True
        Left = 84
        Top = 3
        Width = 75
        Height = 29
        Action = DataSetPost1
        Align = alRight
        Caption = #1578#1571#1610#1610#1600#1600#1600#1583
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00318C2900007B00004A9C4200FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00009C100000AD0800007B0000BDBD5A00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000084420000AD080000B51000008C00007B841800FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000084000000BD180000B51000009400007B6300008CB5
          7300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00318C290000A5180000B5100000FF420000BD1800BD9C00000073
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00009C100000A5390000FF420000FF420000AD080000BD1000007B
          00006BAD5A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000B5210000E7420000FF4200318C2900318C2900BDBD1000008C
          000018841800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000084080000940800FF00FF00FF00FF00BD9C000000B5
          1000007B00008CB57300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B84210000B5
          10000084000000730000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00009C
          080000B51000007B000000A55A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00318C
          290000B5100010941800BD9C2100FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF001094290039DE8C00BD9C18006BAD5A00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00189C210000CE210000A55A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF008CB57300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 0
      end
      object BitBtn2: TBitBtn
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 75
        Height = 29
        Action = DataSetCancel1
        Align = alRight
        Caption = #1575#1606#1589#1600#1600#1600#1585#1575#1601
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00424A
          4A00424A4A00424A4A0000424A00424A4A00424A4A00424A4A00005A4A00424A
          4A00424A4A00424A4A00005A4A00424A4A00424A4A00FF00FF00FF00FF006B73
          6B00FFFFFF00FFFFFF0000E7FF00FFFFFF00FFFFFF00FFFFFF00BDFFFF00FFFF
          FF00FFFFFF00FFFFFF00BDFFFF00FFFFFF006B736B00FF00FF00FF00FF006B73
          6B00FFFFFF000010AD0000844A00FF9C4A00FF9C4A00FF9C4A00BD9C4A00FF9C
          4A00FF9C4A00FF9C4A00BD9C4A000018CE006B736B00FF00FF00FF00FF006B73
          6B00FFFFFF000018CE000000AD00FFFFFF00FF9C4A00FFFFFF0000E7FF00FF9C
          4A00FFFFFF00FFFFFF000000CE00FFFFFF006B736B00FF00FF00FF00FF008484
          7300FFFFFF00FF9C4A000000CE000010AD00FF9C4A00FFFFFF00BDFFFF00FF9C
          4A000010AD000018CE00BD9C4A00FFFFFF0084847300FF00FF00FF00FF008484
          7300FFFFFF00FF9C4A0000844A000018CE000010AD00FF9C4A00BD9C4A000010
          AD000018CE00FF9C4A00BD9C4A00FFFFFF0084847300FF00FF00FF00FF008484
          7300FFFFFF00F78C390000E7FF00FFFFFF000018CE000018DE00BD18AD000018
          DE00FFFFFF00FFFFFF00BD9C3900FFFFFF0084847300FF00FF00FF00FF008C8C
          8C00F7F7F700F78C390000E7FF00FFFFFF00F78C39000018DE00BD18DE000018
          CE000010AD00FFFFFF00BD9C3900F7F7F7008C8C8C00FF00FF00FF00FF008C8C
          8C00F7F7F700E784080000840800E78408000018CE000018E700BD9C0800E784
          08000018F7000010AD00BD9C0800F7F7F7008C8C8C00FF00FF00FF00FF009494
          9400E7E7E700E784080000E7FF000018F7000018E700FFFFFF00BDFFFF00E784
          0800FFFFFF000018F700BD9C0800E7E7E70094949400FF00FF00FF00FF009494
          9400E7E7E700E78408000000FF000018E700E7840800FFFFFF00BDFFFF00E784
          0800FFFFFF00FFFFFF00BD18F700E7E7E70094949400FF00FF00FF00FF009C9C
          9C00CED6CE000018F7000000F700E7840800E7840800E7840800FF9C0800E784
          0800E7840800E7840800008408000018F7009C9C9C00FF00FF00FF00FF009C9C
          9C00CED6CE000018F70000C6CE00CED6CE00CED6CE00CED6CE0000DECE00CED6
          CE00CED6CE00CED6CE0000C6CE00CED6CE009C9C9C00FF00FF00FF00FF009C9C
          9C009C9C9C009C9C9C0000849C009C9C9C009C9C9C009C9C9C0084849C009C9C
          9C009C9C9C009C9C9C0000849C009C9C9C009C9C9C00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 1
      end
    end
    object pnlNew: TPanel
      Left = 625
      Top = 1
      Width = 243
      Height = 35
      Align = alRight
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 2
      object BitBtn3: TBitBtn
        AlignWithMargins = True
        Left = 165
        Top = 3
        Width = 75
        Height = 29
        Action = DataSetInsert1
        Align = alRight
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        AlignWithMargins = True
        Left = 84
        Top = 3
        Width = 75
        Height = 29
        Action = DataSetEdit1
        Align = alRight
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 75
        Height = 29
        Action = DataSetDelete1
        Align = alRight
        Caption = #1581#1584#1601
        TabOrder = 2
      end
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 85
      Top = 4
      Width = 70
      Height = 29
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1740#1576
      TabOrder = 3
    end
    object BitBtn7: TBitBtn
      AlignWithMargins = True
      Left = 161
      Top = 4
      Width = 70
      Height = 29
      Action = actSearch_
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
    end
  end
  object DBGrid1: TDBGrid [4]
    Tag = 111
    Left = 0
    Top = 88
    Width = 861
    Height = 366
    Align = alClient
    Color = clCream
    DataSource = srcRequest
    DrawingStyle = gdsGradient
    TabOrder = 2
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnEditButtonClick = DBGrid1EditButtonClick
    OnEnter = DBGrid1Enter
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'BudgetID'
        Visible = True
      end
      item
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'BudgetItemID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = '_CompanyName'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = '_'#1614'Amount'
        Visible = True
      end
      item
        Expanded = False
        FieldName = '_CashType'
        Visible = True
      end
      item
        Expanded = False
        FieldName = '_CompanyID'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PayType'
        PickList.Strings = (
          #1606#1575#1605#1588#1582#1589
          #1670#1705
          #1608#1580#1607' '#1606#1602#1583
          #1578#1607#1575#1578#1585)
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Price'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Note_L1'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Note_L2'
        Width = 28
        Visible = True
      end>
  end
  inherited ActionList1: TActionList
    inherited DataSetPost1: TDataSetPost
      DataSource = srcRequest
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcRequest
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      Hint = ' '
      ImageIndex = 7
      ShortCut = 113
      DataSource = srcRequest
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      Hint = ' '
      ImageIndex = 9
      ShortCut = 115
      DataSource = srcRequest
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
      DataSource = srcRequest
    end
    object actSearch_: TAction
      Caption = #1580#1587#1578#1580#1608
      OnExecute = actSearch_Execute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1740#1576
      OnExecute = actSortExecute
    end
  end
  object qryRequest: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryRequestAfterInsert
    BeforePost = qryRequestBeforePost
    BeforeDelete = qryRequestBeforeDelete
    Parameters = <
      item
        Name = 'FormID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'YearID'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ServerID'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      'select * from acc.RequestCash'
      'where ( FormID = :FormID)'
      'AND (YearID = :YearID)  and (ServerID = :ServerID)')
    Left = 160
    Top = 160
    object qryRequestRequestID: TIntegerField
      FieldName = 'RequestID'
    end
    object qryRequestBudgetID: TIntegerField
      Tag = 3
      DisplayLabel = #1578#1593#1607#1583' '#1576#1608#1583#1580#1607
      FieldName = 'BudgetID'
      Required = True
    end
    object qryRequestBudgetItemID: TIntegerField
      Tag = 3
      DisplayLabel = #1585#1583#1740#1601' '#1578#1593#1607#1583' '#1576#1608#1583#1580#1607
      FieldName = 'BudgetItemID'
      Required = True
    end
    object qryRequestPayType: TWordField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1662#1585#1583#1575#1582#1578
      FieldName = 'PayType'
      OnGetText = MyGetText
      OnSetText = MySetText
    end
    object qryRequestPrice: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1578#1575#1740#1740#1583' '#1588#1583#1607
      FieldName = 'Price'
      Required = True
      currency = True
      Precision = 19
    end
    object qryRequestNote_L1: TStringField
      Tag = 3
      DisplayLabel = #1588#1585#1581' '#1662#1585#1583#1575#1582#1578
      FieldName = 'Note_L1'
      Size = 5000
    end
    object qryRequestNote_L2: TStringField
      Tag = 3
      DisplayLabel = 'Note'
      FieldName = 'Note_L2'
      Size = 5000
    end
    object qryRequestFormID: TIntegerField
      FieldName = 'FormID'
    end
    object qryRequestYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryRequestServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryRequestCompanyID: TIntegerField
      FieldName = 'CompanyID'
    end
    object qryRequest_CompanyName: TStringField
      DisplayLabel = #1605#1581#1604' '#1607#1586#1740#1606#1607
      FieldKind = fkLookup
      FieldName = '_CompanyName'
      LookupDataSet = qryLookUp
      LookupKeyFields = 'BudgetItemID'
      LookupResultField = 'CompanyName_L1'
      KeyFields = 'BudgetItemID'
      ReadOnly = True
      Size = 70
      Lookup = True
    end
    object qryRequest_CashType: TIntegerField
      DisplayLabel = #1606#1602#1583#1740'/'#1594#1740#1585#1606#1602#1583#1740
      FieldKind = fkLookup
      FieldName = '_CashType'
      LookupDataSet = qryLookUp
      LookupKeyFields = 'BudgetItemID'
      LookupResultField = 'Cashtype'
      KeyFields = 'BudgetItemID'
      ReadOnly = True
      Lookup = True
    end
    object qryRequest_Amount: TCurrencyField
      DisplayLabel = #1605#1576#1604#1594' '#1576#1608#1583#1580#1607' '#1588#1583#1607
      FieldKind = fkLookup
      FieldName = '_'#1614'Amount'
      LookupDataSet = qryLookUp
      LookupKeyFields = 'BudgetItemID'
      LookupResultField = 'Bed'
      KeyFields = 'BudgetItemID'
      ReadOnly = True
      Lookup = True
    end
    object qryRequest_CompanyID: TStringField
      DisplayLabel = #1588#1585#1705#1578
      FieldKind = fkLookup
      FieldName = '_CompanyID'
      LookupDataSet = qryCompanies
      LookupKeyFields = 'CompanyCode'
      LookupResultField = 'CompanyName_L1'
      KeyFields = 'CompanyID'
      Size = 200
      Lookup = True
    end
  end
  object srcRequest: TDataSource
    DataSet = qryRequest
    OnStateChange = srcRequestStateChange
    Left = 176
    Top = 320
  end
  object qryLookUp: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     Acc.BudgetItems.BudgetItemID, Acc.BudgetItems.BudgetI' +
        'D, Acc.BudgetItems.BudgetTopicID, Acc.BudgetItems.Bed, Acc.Budge' +
        'tItems.Cashtype, Acc.BudgetItems.CompanyCode, '
      '                      Acc.Companies.CompanyName_L1'
      'FROM         Acc.BudgetItems LEFT OUTER JOIN'
      
        '                      Acc.Companies ON Acc.BudgetItems.CompanyCo' +
        'de = Acc.Companies.CompanyCode')
    Left = 112
    Top = 288
  end
  object qryCompanies: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT        CompanyCode, CompanyName_L1'
      'FROM            Acc.Companies')
    Left = 360
    Top = 288
  end
end

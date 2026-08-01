inherited OtherNationalCodeEditF: TOtherNationalCodeEditF
  Left = 392
  Top = 196
  ActiveControl = edtOtherNationalCode
  Caption = #1705#1583' '#1605#1604#1740' '#1587#1575#1740#1585
  ClientHeight = 293
  ClientWidth = 812
  ExplicitWidth = 828
  ExplicitHeight = 332
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 241
    Width = 812
    Height = 15
    Align = alBottom
    ExplicitTop = 308
    ExplicitWidth = 741
    ExplicitHeight = 15
  end
  object Label8: TLabel [1]
    Left = 0
    Top = 228
    Width = 812
    Height = 13
    Align = alBottom
    BiDiMode = bdLeftToRight
    Caption = '...'
    Color = clMaroon
    Font.Charset = ARABIC_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentColor = False
    ParentFont = False
    WordWrap = True
    ExplicitTop = 240
    ExplicitWidth = 12
  end
  inherited Panel1: TPanel
    Width = 812
    TabOrder = 1
    ExplicitWidth = 820
    inherited Image1: TImage
      Left = 766
      ExplicitLeft = 687
    end
    inherited lblTopic0: TLabel
      Left = 679
      Top = 9
      Width = 67
      Caption = #1705#1583' '#1605#1604#1740' '#1587#1575#1740#1585
      ExplicitLeft = 679
      ExplicitTop = 9
      ExplicitWidth = 67
    end
    inherited lblTopic1: TLabel
      Left = 369
      Top = 20
      Width = 304
      Height = 26
      Caption = 
        #1579#1576#1578' '#1608' '#1608#1740#1585#1575#1740#1588' '#1705#1585#1583#1606' '#1705#1583' '#1605#1604#1740' '#1587#1575#1740#1585#13#10'Double Click  '#1576#1585#1575#1740' '#1576#1585#1585#1587#1740' '#1587#1575#1740#1585' '#1601#1585#1575 +
        #1582#1608#1575#1606' '#1588#1583#1607' '#1607#1575' '#1588#1605#1575#1585#1607' '#1670#1705' '#1580#1575#1585#1740
      Visible = False
      ExplicitLeft = 369
      ExplicitTop = 20
      ExplicitWidth = 304
      ExplicitHeight = 26
    end
    object edtOtherNationalCode: TDBEdit
      Left = 1
      Top = 51
      Width = 818
      Height = 21
      Align = alBottom
      DataField = 'OtherNationalCode'
      DataSource = srcFormItems
      TabOrder = 0
    end
    object dbchkSyadSystem: TDBCheckBox
      Left = 1
      Top = 1
      Width = 104
      Height = 50
      Align = alLeft
      Caption = #1579#1576#1578'  '#1587#1575#1605#1575#1606#1607' '#1589#1740#1575#1583' '
      DataField = 'SyadSystem'
      DataSource = srcFormItems
      TabOrder = 1
    end
  end
  inherited pnlDown: TPanel
    Top = 256
    Width = 812
    TabOrder = 0
    ExplicitTop = 268
    ExplicitWidth = 820
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
    object okPanel: TPanel
      Left = 579
      Top = 1
      Width = 160
      Height = 35
      Align = alRight
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 1
      object BitBtn2: TBitBtn
        AlignWithMargins = True
        Left = 83
        Top = 6
        Width = 75
        Height = 23
        Margins.Top = 6
        Margins.Right = 2
        Margins.Bottom = 6
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
      object BitBtn10: TBitBtn
        AlignWithMargins = True
        Left = 3
        Top = 6
        Width = 75
        Height = 23
        Margins.Top = 6
        Margins.Right = 2
        Margins.Bottom = 6
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
    object newPanel: TPanel
      Left = 739
      Top = 1
      Width = 80
      Height = 35
      Align = alRight
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 2
      object BitBtn1: TBitBtn
        AlignWithMargins = True
        Left = 3
        Top = 6
        Width = 75
        Height = 23
        Margins.Top = 6
        Margins.Right = 2
        Margins.Bottom = 6
        Action = DataSetEdit1
        Align = alRight
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 0
      end
    end
  end
  object DBGrid1: TCedarDbgrid [4]
    Left = 0
    Top = 73
    Width = 812
    Height = 99
    Hint = 'Double Click  '#1576#1585#1575#1740' '#1576#1585#1585#1587#1740' '#1587#1575#1740#1585' '#1601#1585#1575#1582#1608#1575#1606' '#1588#1583#1607' '#1607#1575' '#1588#1605#1575#1585#1607' '#1670#1705' '#1580#1575#1585#1740
    Align = alClient
    Color = clCream
    DataSource = srcFormItems
    DynProps = <>
    Flat = True
    FooterParams.FillStyle = cfstSolidEh
    FooterParams.Font.Charset = DEFAULT_CHARSET
    FooterParams.Font.Color = clWindowText
    FooterParams.Font.Height = -12
    FooterParams.Font.Name = 'Tahoma'
    FooterParams.Font.Style = [fsBold]
    FooterParams.ParentFont = False
    FooterParams.VertLines = False
    GridLineParams.VertEmptySpaceStyle = dessNonEh
    HorzScrollBar.ExtraPanel.Visible = True
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
    IndicatorTitle.ShowDropDownSign = True
    IndicatorTitle.TitleButton = True
    OddRowColor = clInactiveCaption
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDblClickOptimizeColWidth, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove]
    ParentShowHint = False
    RowHeight = 18
    RowPanel.Active = True
    SearchPanel.Enabled = True
    ShowHint = True
    SortLocal = True
    TabOrder = 2
    OnDblClick = DBGrid1DblClick
    ActiveSearchPanel = False
    SelectFooterIndex = 0
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'OtherNationalCode'
        Footers = <>
        Width = 113
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ItemNote'
        Footers = <>
        Width = 147
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CheckNumber'
        Footers = <>
        Width = 71
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CheckDate'
        Footers = <>
        Width = 66
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ItemAmount'
        Footers = <>
        Width = 93
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'BankName'
        Footers = <>
        Width = 40
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AccountNumber'
        Footers = <>
        Width = 72
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'City'
        Footers = <>
        Width = 33
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CheckFor'
        Footers = <>
        Width = 38
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AccountNumberNew'
        Footers = <>
        Width = 72
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SyadSystem'
        Footers = <>
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object grpDetailNote: TGroupBox [5]
    Left = 0
    Top = 172
    Width = 812
    Height = 56
    Align = alBottom
    Caption = #1578#1608#1590#1610#1581#1575#1578' '#1601#1585#1605
    TabOrder = 3
    ExplicitTop = 184
    ExplicitWidth = 820
    object dbmmoFomNote: TDBMemo
      Tag = 111
      Left = 2
      Top = 15
      Width = 816
      Height = 39
      Align = alClient
      Color = clCream
      DataField = 'FomNote'
      DataSource = srcForms
      TabOrder = 0
    end
  end
  inherited ActionList1: TActionList
    Left = 167
    Top = 14
    inherited DataSetPost1: TDataSetPost
      DataSource = srcFormItems
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcFormItems
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      DataSource = srcFormItems
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
      DataSource = srcFormItems
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      DataSource = srcFormItems
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
    end
    object actSearch: TAction
      Caption = #1580#1587#1578#1580#1608
      ShortCut = 114
    end
    object actExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      ShortCut = 118
    end
    object actOther: TAction
      Caption = #1587#1575#1610#1585
    end
  end
  object srcFormItems: TDataSource
    DataSet = qryFormItems
    OnStateChange = srcFormItemsStateChange
    Left = 406
    Top = 119
  end
  object qryFormItems: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    BeforeDelete = qryFormItemsBeforeDelete
    Parameters = <
      item
        Name = 'FormItemID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ServerID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'YearID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT        OtherNationalCode, CheckNumber, CheckDate, ItemAmo' +
        'unt, ItemNote, BankName, AccountNumber, City, AccountNumberNew, ' +
        'CheckFor'
      ', SyadSystem,FormID'
      'FROM            FormItems'
      
        'WHERE        (FormItemID = :FormItemID  ) AND (ServerID = :Serve' +
        'rID ) '
      '     AND (YearID = :YearID )')
    Left = 288
    Top = 124
    object qryFormItemsOtherNationalCode: TStringField
      DisplayLabel = #1705#1583' '#1605#1604#1740' '#1587#1575#1740#1585
      FieldName = 'OtherNationalCode'
      Size = 12
    end
    object qryFormItemsCheckNumber: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1670#1705
      FieldName = 'CheckNumber'
      ReadOnly = True
      FixedChar = True
      Size = 15
    end
    object qryFormItemsCheckDate: TStringField
      DisplayLabel = #1587#1585#1585#1587#1740#1583' '#1670#1705
      FieldName = 'CheckDate'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object qryFormItemsItemAmount: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1670#1705
      FieldName = 'ItemAmount'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryFormItemsItemNote: TStringField
      DisplayLabel = #1578#1608#1590#1740#1581#1575#1578
      FieldName = 'ItemNote'
      Size = 255
    end
    object qryFormItemsBankName: TStringField
      DisplayLabel = #1606#1575#1605' '#1576#1575#1606#1705
      FieldName = 'BankName'
      ReadOnly = True
    end
    object qryFormItemsAccountNumber: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
      FieldName = 'AccountNumber'
      ReadOnly = True
      FixedChar = True
      Size = 25
    end
    object qryFormItemsCity: TStringField
      DisplayLabel = #1588#1607#1585
      FieldName = 'City'
      ReadOnly = True
      FixedChar = True
    end
    object qryFormItemsAccountNumberNew: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
      FieldName = 'AccountNumberNew'
      ReadOnly = True
      Size = 60
    end
    object qryFormItemsCheckFor: TStringField
      DisplayLabel = #1583#1585' '#1608#1580#1607
      FieldName = 'CheckFor'
      ReadOnly = True
      Size = 255
    end
    object qryFormItemsSyadSystem: TBooleanField
      DisplayLabel = #1579#1576#1578'  '#1587#1575#1605#1575#1606#1607' '#1589#1740#1575#1583' '
      FieldName = 'SyadSystem'
    end
    object qryFormItemsFormID: TIntegerField
      FieldName = 'FormID'
    end
  end
  object qryForms: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterOpen = qryFormsAfterOpen
    BeforeDelete = qryFormItemsBeforeDelete
    Parameters = <
      item
        Name = 'FormID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ServerID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'YearID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT        Forms.FomNote, FormTypes.MnuPlaceID'
      'FROM            Forms INNER JOIN'
      
        '                         FormTypes ON Forms.FormType = FormTypes' +
        '.FormType'
      'WHERE        (FormID = :FormID  ) AND (ServerID = :ServerID ) '
      '     AND (YearID = :YearID )')
    Left = 296
    Top = 196
    object qryFormsFomNote: TStringField
      FieldName = 'FomNote'
      Size = 255
    end
    object qryFormsMnuPlaceID: TIntegerField
      FieldName = 'MnuPlaceID'
    end
  end
  object srcForms: TDataSource
    DataSet = qryForms
    OnStateChange = srcFormItemsStateChange
    Left = 414
    Top = 191
  end
end

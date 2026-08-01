inherited EjareF: TEjareF
  Left = 392
  Top = 196
  Caption = #1579#1576#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1602#1585#1575#1585#1583#1575#1583' '#1575#1580#1575#1585#1607
  ClientHeight = 298
  ClientWidth = 733
  OnClose = FormClose
  ExplicitWidth = 749
  ExplicitHeight = 337
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 246
    Width = 733
    Height = 15
    Align = alBottom
    ExplicitTop = 308
    ExplicitWidth = 741
    ExplicitHeight = 15
  end
  object Label1: TLabel [1]
    Left = 635
    Top = 87
    Width = 82
    Height = 13
    Alignment = taRightJustify
    Caption = #1593#1606#1608#1575#1606' '#1603#1604#1610' '#1602#1585#1575#1585#1583#1575#1583
    FocusControl = edtContractTopic
  end
  object Label40: TLabel [2]
    Left = 619
    Top = 113
    Width = 89
    Height = 13
    Anchors = [akTop, akRight]
    Caption = #1588#1582#1589' '#1591#1585#1601' '#1602#1585#1575#1585#1583#1575#1583
    ExplicitLeft = 635
  end
  object Label6: TLabel [3]
    Left = 622
    Top = 166
    Width = 29
    Height = 13
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = #1578#1608#1590#1740#1581
    ExplicitLeft = 638
  end
  object Label7: TLabel [4]
    Left = 286
    Top = 87
    Width = 48
    Height = 13
    Anchors = [akTop, akRight]
    Caption = #1606#1608#1593' '#1602#1585#1575#1585#1583#1575#1583
    ExplicitLeft = 302
  end
  object Label8: TLabel [5]
    Left = 0
    Top = 233
    Width = 733
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
    ExplicitTop = 245
    ExplicitWidth = 12
  end
  object Label10: TLabel [6]
    Left = 286
    Top = 139
    Width = 68
    Height = 13
    Anchors = [akTop, akRight]
    Caption = #1606#1608#1593' '#1605#1608#1585#1583' '#1575#1580#1575#1585#1740
    ExplicitLeft = 302
  end
  object Label2: TLabel [7]
    Left = 619
    Top = 139
    Width = 55
    Height = 13
    Anchors = [akTop, akRight]
    Caption = #1606#1608#1593' '#1575#1587#1578#1601#1575#1583#1607
    ExplicitLeft = 635
  end
  object Label3: TLabel [8]
    Left = 286
    Top = 113
    Width = 71
    Height = 13
    Anchors = [akTop, akRight]
    Caption = #1605#1608#1590#1608#1593' '#1662#1585#1583#1575#1582#1578' '
    ExplicitLeft = 302
  end
  object Label4: TLabel [9]
    Left = 283
    Top = 166
    Width = 74
    Height = 13
    Anchors = [akTop, akRight]
    Caption = #1606#1608#1593' '#1608#1587#1740#1604#1607' '#1606#1602#1604#1740#1607
    ExplicitLeft = 299
  end
  object Label5: TLabel [10]
    Left = 622
    Top = 193
    Width = 64
    Height = 13
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = #1603#1583' '#1605#1604#1705'\'#1705#1575#1585#1711#1575#1607
    FocusControl = edtWorkShopId
    ExplicitLeft = 638
  end
  object btnWorkShopId: TSpeedButton [11]
    Tag = 1
    Left = 518
    Top = 188
    Width = 23
    Height = 22
    Anchors = [akTop, akRight]
    Caption = '...'
    OnClick = btnWorkShopIdClick
    ExplicitLeft = 534
  end
  inherited Panel1: TPanel
    Width = 733
    TabOrder = 6
    ExplicitWidth = 741
    inherited Image1: TImage
      Left = 687
      ExplicitLeft = 687
    end
    inherited lblTopic0: TLabel
      Left = 533
      Top = 9
      Width = 134
      Caption = #1579#1576#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1602#1585#1575#1585#1583#1575#1583' '#1575#1580#1575#1585#1607
      ExplicitLeft = 533
      ExplicitTop = 9
      ExplicitWidth = 134
    end
    inherited lblTopic1: TLabel
      Left = 594
      Top = 28
      Visible = False
      ExplicitLeft = 594
      ExplicitTop = 28
    end
    object edtCaseNo: TDBEdit
      Left = 416
      Top = 50
      Width = 217
      Height = 19
      Color = clBtnFace
      Ctl3D = False
      DataField = 'CaseNo'
      DataSource = srcContracts
      Enabled = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  inherited pnlDown: TPanel
    Top = 261
    Width = 733
    TabOrder = 5
    ExplicitTop = 228
    ExplicitWidth = 741
    object newPanel: TPanel
      Left = 655
      Top = 1
      Width = 85
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      Caption = '`'
      TabOrder = 1
      DesignSize = (
        85
        35)
      object BitBtn9: TBitBtn
        Left = 5
        Top = 5
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 0
      end
    end
    object okPanel: TPanel
      Left = 484
      Top = 1
      Width = 163
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitLeft = 492
      DesignSize = (
        163
        35)
      object BitBtn1: TBitBtn
        Left = 87
        Top = 5
        Width = 75
        Height = 25
        Action = DataSetPost1
        Anchors = [akTop, akRight]
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
        Left = 7
        Top = 5
        Width = 75
        Height = 25
        Action = DataSetCancel1
        Anchors = [akTop, akRight]
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
  end
  object edtContractTopic: TDBEdit [14]
    Left = 416
    Top = 83
    Width = 217
    Height = 21
    DataField = 'ContractTopic'
    DataSource = srcContracts
    ReadOnly = True
    TabOrder = 0
  end
  object cmbTarafeGharardadType: TDBComboBox [15]
    Left = 400
    Top = 109
    Width = 217
    Height = 21
    Anchors = [akTop, akRight]
    AutoDropDown = True
    Color = clWhite
    DataField = 'TarafeGharardadType'
    DataSource = srcContracts
    Items.Strings = (
      ''
      #1605#1608#1580#1585
      #1605#1587#1578#1575#1580#1585)
    TabOrder = 1
  end
  object edtTozih: TDBEdit [16]
    Left = 400
    Top = 162
    Width = 217
    Height = 21
    Anchors = [akTop, akRight]
    DataField = 'Tozih'
    DataSource = srcContracts
    TabOrder = 2
    ExplicitLeft = 416
  end
  object cmbGharardadTypeCode: TDBComboBox [17]
    Left = 6
    Top = 83
    Width = 276
    Height = 21
    Anchors = [akTop, akRight]
    AutoDropDown = True
    Color = clWhite
    DataField = 'GharardadTypeCode'
    DataSource = srcContracts
    Items.Strings = (
      ''
      #1585#1587#1605#1740
      #1593#1575#1583#1740)
    TabOrder = 3
  end
  object cmbEjariType: TDBComboBox [18]
    Left = 6
    Top = 135
    Width = 276
    Height = 21
    Anchors = [akTop, akRight]
    AutoDropDown = True
    Color = clWhite
    DataField = 'EjariType'
    DataSource = srcContracts
    Items.Strings = (
      ''
      '1='#1605#1587#1705#1608#1606#1740
      '2='#1578#1580#1575#1585#1740
      '3='#1575#1583#1575#1585#1740
      '4='#1705#1588#1575#1608#1585#1586#1740
      '5='#1570#1605#1608#1586#1588#1740
      '6='#1582#1583#1605#1575#1578#1740
      '7='#1587#1575#1740#1585' '#1575#1605#1575#1705#1606
      '8='#1605#1575#1588#1740#1606' '#1570#1604#1575#1578
      '9='#1608#1587#1575#1740#1604' '#1606#1602#1604#1740#1607)
    TabOrder = 4
  end
  object cmbKarbariType: TDBComboBox [19]
    Left = 400
    Top = 135
    Width = 217
    Height = 21
    Anchors = [akTop, akRight]
    AutoDropDown = True
    Color = clWhite
    DataField = 'KarbariType'
    DataSource = srcContracts
    Items.Strings = (
      ''
      '1-'#1605#1587#1705#1608#1606#1740
      '2-'#1605#1587#1705#1608#1606#1740' '#1587#1575#1586#1605#1575#1606#1740'/'#1582#1608#1575#1576#1711#1575#1607
      '3-'#1587#1575#1740#1585)
    TabOrder = 7
  end
  object cmbMozuType: TDBComboBox [20]
    Left = 6
    Top = 109
    Width = 276
    Height = 21
    Anchors = [akTop, akRight]
    AutoDropDown = True
    Color = clWhite
    DataField = 'MozuType'
    DataSource = srcContracts
    Items.Strings = (
      ''
      '1='#1575#1580#1575#1585#1607
      '2='#1608#1583#1740#1593#1607' '#1575#1580#1575#1585#1607' '#1606#1575#1605#1607
      '3='#1575#1587#1578#1585#1583#1575#1583' '#1608#1583#1740#1593#1607
      '4='#1575#1587#1578#1585#1583#1575#1583' '#1575#1580#1575#1585#1607)
    TabOrder = 8
  end
  object cmbVasile: TDBComboBox [21]
    Left = 6
    Top = 162
    Width = 276
    Height = 21
    Anchors = [akTop, akRight]
    AutoDropDown = True
    Color = clWhite
    DataField = 'Vasile'
    DataSource = srcContracts
    Items.Strings = (
      ''
      '1='#1586#1605#1740#1606#1740
      '2='#1585#1740#1604#1740
      '3='#1583#1585#1740#1575#1740#1740
      '4='#1607#1608#1575#1740#1740)
    TabOrder = 9
  end
  object edtWorkShopId: TDBEdit [22]
    Left = 540
    Top = 189
    Width = 77
    Height = 21
    Anchors = [akTop, akRight]
    DataField = 'WorkShopId'
    DataSource = srcContracts
    TabOrder = 10
    ExplicitLeft = 556
  end
  inherited ActionList1: TActionList
    Left = 87
    Top = 30
    inherited DataSetPost1: TDataSetPost
      DataSource = srcContracts
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      DataSource = srcContracts
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
    end
    object actSearch: TAction
      Caption = #1580#1587#1578#1580#1608
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
  object qryContracts: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    BeforePost = qryContractsBeforePost
    AfterPost = qryContractsAfterPost
    Parameters = <
      item
        Name = 'CaseNo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT    *'
      'FROM          Cnt.Contracts'
      'where CaseNo=:CaseNo'
      ''
      '')
    Left = 226
    Top = 17
    object qryContractsCaseNo: TIntegerField
      FieldName = 'CaseNo'
    end
    object qryContractsContractTopic: TWideStringField
      FieldName = 'ContractTopic'
      Size = 60
    end
    object qryContractsTarafeGharardadType: TWordField
      FieldName = 'TarafeGharardadType'
      OnGetText = ALLGetText
      OnSetText = AllSetText
    end
    object qryContractsGharardadTypeCode: TWordField
      FieldName = 'GharardadTypeCode'
      OnGetText = ALLGetText
      OnSetText = AllSetText
    end
    object qryContractsEjariType: TWordField
      FieldName = 'EjariType'
      OnGetText = ALLGetText
      OnSetText = AllSetText
    end
    object qryContractsKarbariType: TWordField
      FieldName = 'KarbariType'
      OnGetText = ALLGetText
      OnSetText = AllSetText
    end
    object qryContractsMozuType: TWordField
      FieldName = 'MozuType'
      OnGetText = ALLGetText
      OnSetText = AllSetText
    end
    object qryContractsVasile: TWordField
      FieldName = 'Vasile'
      OnGetText = ALLGetText
      OnSetText = AllSetText
    end
    object qryContractsTozih: TStringField
      FieldName = 'Tozih'
      Size = 255
    end
    object qryContractsWorkShopId: TIntegerField
      FieldName = 'WorkShopId'
    end
  end
  object srcContracts: TDataSource
    DataSet = qryContracts
    OnStateChange = srcContractsStateChange
    Left = 382
    Top = 7
  end
end

inherited StoresAlternativeF: TStoresAlternativeF
  Left = 392
  Top = 196
  Caption = #1705#1583#1607#1575#1740' '#1580#1575#1740#1711#1586#1740#1606' '#1575#1606#1576#1575#1585
  ClientHeight = 318
  ClientWidth = 591
  OnClose = FormClose
  ExplicitWidth = 607
  ExplicitHeight = 357
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 266
    Width = 591
    Height = 15
    Align = alBottom
    ExplicitLeft = -32
    ExplicitTop = 359
    ExplicitWidth = 741
    ExplicitHeight = 15
  end
  inherited Panel1: TPanel
    Width = 591
    ExplicitWidth = 599
    DesignSize = (
      591
      73)
    inherited Image1: TImage
      Left = 447
      Top = 32
      ExplicitLeft = 463
      ExplicitTop = 32
    end
    inherited lblTopic0: TLabel
      Left = 468
      Width = 105
      Caption = #1705#1583#1607#1575#1740' '#1580#1575#1740#1711#1586#1740#1606' '#1575#1606#1576#1575#1585
      ExplicitLeft = 484
      ExplicitWidth = 105
    end
    inherited lblTopic1: TLabel
      Left = 514
      Visible = False
      ExplicitLeft = 588
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 1
      Width = 456
      Height = 71
      Align = alLeft
      Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1575#1606#1576#1575#1585
      TabOrder = 0
      object edtn_StoreID: TDBEdit
        AlignWithMargins = True
        Left = 345
        Top = 18
        Width = 106
        Height = 19
        TabStop = False
        Align = alRight
        Color = clBtnFace
        Ctl3D = False
        DataField = 'n_StoreID'
        DataSource = srcStores
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
      object edtc_StoreName: TDBEdit
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 334
        Height = 19
        TabStop = False
        Align = alClient
        Color = clBtnFace
        Ctl3D = False
        DataField = 'c_StoreName'
        DataSource = srcStores
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
      object edtTel: TDBEdit
        AlignWithMargins = True
        Left = 5
        Top = 47
        Width = 446
        Height = 19
        TabStop = False
        Align = alBottom
        BiDiMode = bdLeftToRight
        Color = clBtnFace
        Ctl3D = False
        DataField = 'Tel'
        DataSource = srcStores
        ParentBiDiMode = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 2
      end
    end
  end
  inherited pnlDown: TPanel
    Top = 281
    Width = 591
    ExplicitTop = 293
    ExplicitWidth = 599
    inherited btnClose: TBitBtn
      Top = 4
      ExplicitTop = 4
    end
    object newPanel: TPanel
      Left = 360
      Top = 1
      Width = 238
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      Caption = '`'
      TabOrder = 1
      DesignSize = (
        238
        35)
      object BitBtn6: TBitBtn
        Left = 161
        Top = 4
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn9: TBitBtn
        Left = 83
        Top = 4
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn10: TBitBtn
        Left = 6
        Top = 4
        Width = 75
        Height = 25
        Action = DataSetDelete1
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        TabOrder = 2
      end
    end
    object okPanel: TPanel
      Left = 188
      Top = 1
      Width = 164
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitLeft = 196
      DesignSize = (
        164
        35)
      object BitBtn1: TBitBtn
        Left = 85
        Top = 4
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
        Left = 6
        Top = 4
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
  object DBGrid1: TCedarDbgrid [3]
    Left = 0
    Top = 73
    Width = 591
    Height = 193
    Align = alClient
    BiDiMode = bdRightToLeft
    Ctl3D = False
    DataSource = srcStoresAlternative
    DynProps = <>
    Flat = True
    FooterParams.FillStyle = cfstGradientEh
    FooterParams.Font.Charset = DEFAULT_CHARSET
    FooterParams.Font.Color = clWindowText
    FooterParams.Font.Height = -12
    FooterParams.Font.Name = 'Tahoma'
    FooterParams.Font.Style = [fsBold]
    FooterParams.ParentFont = False
    FooterParams.VertLines = False
    GridLineParams.VertEmptySpaceStyle = dessNonEh
    HorzScrollBar.ExtraPanel.Visible = True
    IndicatorTitle.ShowDropDownSign = True
    IndicatorTitle.TitleButton = True
    OddRowColor = clInfoBk
    ParentBiDiMode = False
    ParentCtl3D = False
    RowHeight = 20
    SearchPanel.Enabled = True
    SortLocal = True
    TabOrder = 2
    ActiveSearchPanel = False
    SelectFooterIndex = 0
    Columns = <
      item
        BiDiMode = bdLeftToRight
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AlternativeID'
        Footers = <>
        Width = 276
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  inherited ActionList1: TActionList
    Left = 183
    Top = 214
    inherited DataSetPost1: TDataSetPost
      DataSource = srcStoresAlternative
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcStoresAlternative
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      DataSource = srcStoresAlternative
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
      DataSource = srcStoresAlternative
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      DataSource = srcStoresAlternative
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
  object qryStoresAlternative: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryStoresAlternativeAfterInsert
    BeforePost = qryStoresAlternativeBeforePost
    AfterPost = qryStoresAlternativeAfterPost
    BeforeDelete = qryStoresAlternativeBeforeDelete
    Parameters = <
      item
        Name = 'StoreID'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      'SELECT   *'
      'FROM         StoresAlternative'
      'where StoreID=:StoreID'
      '')
    Left = 346
    Top = 193
    object qryStoresAlternativeStoreID: TSmallintField
      FieldName = 'StoreID'
    end
    object qryStoresAlternativeAlternativeID: TStringField
      DisplayLabel = #1705#1583' '#1575#1606#1576#1575#1585' '#1580#1575#1740#1711#1586#1740#1606
      FieldName = 'AlternativeID'
      FixedChar = True
      Size = 24
    end
  end
  object srcStoresAlternative: TDataSource
    DataSet = qryStoresAlternative
    OnStateChange = srcStoresAlternativeStateChange
    Left = 486
    Top = 143
  end
  object qryStores: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterScroll = qryStoresAfterScroll
    Parameters = <
      item
        Name = 'StoreID'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'SELECT      n_StoreID  , c_StoreName'
      
        ', '#39'Tel: '#39' + ISNULL(c_tel, '#39#39') +  '#39' Fax: '#39' + ISNULL(c_fax, '#39#39') + ' +
        #39' : '#39' + ISNULL(c_address, '#39#39') + '#39' : '#39' + ISNULL(c_note, '#39#39') AS Te' +
        'l'
      'FROM            Stores'
      'WHERE        (n_StoreID = :StoreID )'
      '')
    Left = 164
    Top = 128
    object qryStoresn_StoreID: TSmallintField
      FieldName = 'n_StoreID'
    end
    object qryStoresc_StoreName: TStringField
      FieldName = 'c_StoreName'
      Size = 70
    end
    object qryStoresTel: TStringField
      FieldName = 'Tel'
      ReadOnly = True
      Size = 537
    end
  end
  object srcStores: TDataSource
    DataSet = qryStores
    Left = 397
    Top = 101
  end
end

inherited RecallSpecialRecipts2F: TRecallSpecialRecipts2F
  Left = 447
  Top = 228
  Align = alClient
  Caption = #1575#1606#1578#1582#1575#1576' '#1601#1585#1605' '#1601#1585#1575#1582#1608#1575#1606#1740
  ClientHeight = 546
  ClientWidth = 701
  OldCreateOrder = True
  OnDestroy = FormDestroy
  ExplicitWidth = 707
  ExplicitHeight = 575
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 701
    TabOrder = 1
    ExplicitWidth = 701
    DesignSize = (
      701
      73)
    inherited Image1: TImage
      Left = 647
      ExplicitLeft = 604
    end
    inherited lblTopic0: TLabel
      Left = 571
      Top = 6
      Width = 56
      Caption = #1575#1606#1578#1582#1575#1576' '#1601#1585#1605
      ExplicitLeft = 528
      ExplicitTop = 6
      ExplicitWidth = 56
    end
    inherited lblTopic1: TLabel
      Left = 272
      Top = 27
      Width = 355
      AutoSize = False
      Caption = #1576#1585#1575#1610' '#1575#1606#1578#1582#1575#1576' '#1601#1585#1605' '#1575#1586' '#1583#1603#1605#1607' Space '#1610#1575' Double Click '#1605#1608#1587' '#1575#1587#1578#1601#1575#1583#1607' '#1603#1606#1610#1583'.'
      ExplicitLeft = 229
      ExplicitTop = 27
      ExplicitWidth = 355
    end
    object chkPrice: TCheckBox
      Left = 514
      Top = 48
      Width = 113
      Height = 17
      TabStop = False
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      Caption = #1601#1585#1575' '#1582#1608#1575#1606#1610' '#1576#1575' '#1602#1610#1605#1578
      Checked = True
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      State = cbChecked
      TabOrder = 0
    end
  end
  inherited pnlDown: TPanel
    Top = 509
    Width = 701
    TabOrder = 2
    ExplicitTop = 509
    ExplicitWidth = 701
    DesignSize = (
      701
      37)
    inherited btnClose: TBitBtn
      Left = 6
      Top = 8
      Glyph.Data = {00000000}
      ModalResult = 2
      TabOrder = 7
      ExplicitLeft = 6
      ExplicitTop = 8
    end
    object BitBtn1: TBitBtn
      Left = 619
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1578#1571#1610#1610#1600#1600#1600#1583
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 159
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 5
    end
    object BitBtn3: TBitBtn
      Left = 83
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 6
    end
    object BitBtn4: TBitBtn
      Left = 466
      Top = 8
      Width = 75
      Height = 25
      Action = actShowpreRecipt
      Anchors = [akTop, akRight]
      Caption = #1605#1588#1575#1607#1583#1607' '#1711#1585#1583#1588
      TabOrder = 2
    end
    object BitBtn5: TBitBtn
      Left = 236
      Top = 8
      Width = 75
      Height = 25
      Action = actExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 4
    end
    object BitBtn8: TBitBtn
      Left = 542
      Top = 8
      Width = 75
      Height = 25
      Action = actRptCardex
      Anchors = [akTop, akRight]
      Caption = #1603#1575#1585#1583#1603#1587
      TabOrder = 1
    end
    object BitBtn9: TBitBtn
      Left = 389
      Top = 8
      Width = 75
      Height = 25
      Action = actFilter
      Anchors = [akTop, akRight]
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 3
    end
    object BitBtn10: TBitBtn
      Left = 313
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Anchors = [akTop, akRight]
      Caption = #1670#1575#1662
      TabOrder = 8
    end
  end
  object StatusBar1: TStatusBar [2]
    Left = 0
    Top = 471
    Width = 701
    Height = 19
    Panels = <
      item
        Width = 300
      end
      item
        Width = 300
      end>
  end
  object StatusBar2: TStatusBar [3]
    Left = 0
    Top = 490
    Width = 701
    Height = 19
    Panels = <
      item
        Width = 300
      end
      item
        Width = 300
      end>
  end
  object Panel2: TPanel [4]
    Left = 0
    Top = 430
    Width = 701
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    BevelWidth = 2
    BorderWidth = 2
    BorderStyle = bsSingle
    TabOrder = 5
    object lblSumChecks: TLabel
      Left = 2
      Top = 2
      Width = 473
      Height = 33
      Align = alLeft
      Alignment = taRightJustify
      AutoSize = False
      Caption = #1580#1605#1593' '#1601#1585#1605#8204#1607#1575#1610' '#1575#1606#1578#1582#1575#1576' '#1588#1583#1607
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 617
      Top = 5
      Width = 75
      Height = 27
      Action = actSelectAll
      Align = alRight
      Caption = #1575#1606#1578#1582#1575#1576' '#1607#1605#1607
      TabOrder = 0
    end
    object BitBtn7: TBitBtn
      AlignWithMargins = True
      Left = 536
      Top = 5
      Width = 75
      Height = 27
      Action = actSlelectInverse
      Align = alRight
      Caption = #1575#1606#1578#1582#1575#1576' '#1605#1593#1603#1608#1587
      TabOrder = 1
    end
  end
  object Panel3: TPanel [5]
    Left = 0
    Top = 73
    Width = 701
    Height = 41
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BorderWidth = 3
    BorderStyle = bsSingle
    TabOrder = 6
    DesignSize = (
      697
      37)
    object LblStore: TLabel
      Left = 475
      Top = 12
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1603#1583' '#1575#1606#1576#1575#1585
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 580
    end
    object DBTextStoreID: TDBText
      Left = 395
      Top = 10
      Width = 77
      Height = 16
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Color = clCream
      DataField = 'StoreID'
      DataSource = srcSpecialRecall
      ParentColor = False
      Transparent = False
      ExplicitLeft = 500
    end
    object DBText2: TDBText
      Left = 86
      Top = 10
      Width = 167
      Height = 16
      Color = clCream
      DataField = 'c_StoreName'
      DataSource = srcSpecialRecall
      ParentColor = False
      Transparent = False
    end
    object Label2: TLabel
      Left = 256
      Top = 12
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = #1606#1575#1605' '#1575#1606#1576#1575#1585
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object DBGrid1: TCedarDbgrid [6]
    Left = 0
    Top = 114
    Width = 701
    Height = 316
    Align = alClient
    Color = clCream
    DataSource = srcSpecialRecall
    DynProps = <>
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    FooterParams.FillStyle = cfstGradientEh
    FooterParams.Font.Charset = DEFAULT_CHARSET
    FooterParams.Font.Color = clWindowText
    FooterParams.Font.Height = -11
    FooterParams.Font.Name = 'Tahoma'
    FooterParams.Font.Style = [fsBold]
    FooterParams.ParentFont = False
    FooterParams.VertLines = False
    GridLineParams.VertEmptySpaceStyle = dessNonEh
    HorzScrollBar.ExtraPanel.Visible = True
    IndicatorTitle.ShowDropDownSign = True
    IndicatorTitle.TitleButton = True
    OddRowColor = clGradientInactiveCaption
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    RowHeight = 21
    SearchPanel.Enabled = True
    SearchPanel.FilterOnTyping = True
    SortLocal = True
    TabOrder = 0
    OnDblClick = DBGrid1DblClick
    OnKeyDown = DBGrid1KeyDown
    OnKeyPress = DBGrid1KeyPress
    ActiveSearchPanel = False
    SelectFooterIndex = 0
    Columns = <
      item
        CellButtons = <>
        Checkboxes = True
        DynProps = <>
        EditButtons = <>
        FieldName = '_Checked'
        Footers = <>
        Width = 33
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'StuffCode'
        Footers = <>
        Width = 64
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ControlCode'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'c_StuffName'
        Footers = <>
        Width = 64
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'StuffAlloy'
        Footers = <>
        Width = 64
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'StuffDiameter'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'StuffSize'
        Footers = <>
        Width = 64
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Entity'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Weight'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'OutputEntity'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'InvEntity'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CustName'
        Footers = <>
        Width = 64
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ReciptCaption'
        Footers = <>
        Width = 64
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'StuffGrade'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'UnitName'
        Footers = <>
        Width = 64
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'UnitSellPrice'
        Footers = <>
        Width = 31
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Price'
        Footers = <>
        Width = 64
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ReciptNumber'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ReciptDate'
        Footers = <>
        Width = 64
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PersonID1'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AidNumberM'
        Footers = <>
        Width = 64
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AidDateM'
        Footers = <>
        Width = 64
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PersonID1M'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CustName1M'
        Footers = <>
        Width = 64
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PersonID2M'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CustName2M'
        Footers = <>
        Width = 64
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PersonID3M'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CustName3M'
        Footers = <>
        Width = 64
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  inherited ActionList1: TActionList
    object actSearch: TAction
      Caption = #1580#1587#1578#1580#1608
      Hint = ' '
      ShortCut = 114
      OnExecute = actSearchExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      Hint = ' '
      ShortCut = 117
      OnExecute = actSortExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      Hint = ' '
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      Hint = ' '
      ShortCut = 8310
      OnExecute = actExcelExecute
    end
    object actSelectAll: TAction
      Caption = #1575#1606#1578#1582#1575#1576' '#1607#1605#1607
      Hint = ' '
      ShortCut = 16449
      OnExecute = actSelectAllExecute
    end
    object actSlelectInverse: TAction
      Caption = #1575#1606#1578#1582#1575#1576' '#1605#1593#1603#1608#1587
      Hint = ' '
      ShortCut = 16457
      OnExecute = actSlelectInverseExecute
    end
    object actRptCardex: TAction
      Caption = #1603#1575#1585#1583#1603#1587
      OnExecute = actRptCardexExecute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actShowpreRecipt: TAction
      Caption = #1605#1588#1575#1607#1583#1607' '#1711#1585#1583#1588
      ShortCut = 123
      OnExecute = Action1Execute
    end
  end
  object qrySpecialRecall: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 192
    Top = 200
    object qrySpecialRecall_Checked: TFMTBCDField
      Tag = 3
      DisplayLabel = #1575#1606#1578#1582#1575#1576
      FieldName = '_Checked'
      Precision = 20
      Size = 4
    end
    object qrySpecialRecallStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qrySpecialRecallControlCode: TLargeintField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1585#1575#1607#1606#1605#1575
      FieldName = 'ControlCode'
    end
    object qrySpecialRecallc_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1588#1585#1581' '#1603#1575#1604#1575
      FieldName = 'c_StuffName'
      Size = 70
    end
    object qrySpecialRecallStuffAlloy: TStringField
      Tag = 3
      DisplayLabel = #1570#1604#1610#1575#1688
      FieldName = 'StuffAlloy'
      Size = 12
    end
    object qrySpecialRecallStuffDiameter: TFloatField
      Tag = 3
      DisplayLabel = #1590#1582#1575#1605#1578' '
      FieldName = 'StuffDiameter'
    end
    object qrySpecialRecallStuffSize: TStringField
      Tag = 3
      DisplayLabel = #1575#1576#1593#1575#1583
      FieldName = 'StuffSize'
      Size = 12
    end
    object qrySpecialRecallEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'Entity'
    end
    object qrySpecialRecallWeight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606
      FieldName = 'Weight'
    end
    object qrySpecialRecallOutputEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1583#1585#1582#1608#1575#1587#1578
      FieldName = 'OutputEntity'
    end
    object qrySpecialRecallInvEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1608#1580#1608#1583#1610
      FieldName = 'InvEntity'
    end
    object qrySpecialRecallCustName: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1662#1603#1610#1606#1711' '
      FieldName = 'CustName'
      Size = 120
    end
    object qrySpecialRecallReciptCaption: TStringField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
      FieldName = 'ReciptCaption'
      Size = 70
    end
    object qrySpecialRecallStuffGrade: TSmallintField
      Tag = 3
      DisplayLabel = #1583#1585#1580#1607' '#1603#1575#1604#1575
      FieldName = 'StuffGrade'
    end
    object qrySpecialRecallUnitName: TStringField
      Tag = 3
      DisplayLabel = #1608#1575#1581#1583' '
      FieldName = 'UnitName'
      Size = 50
    end
    object qrySpecialRecallPrice: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'Price'
      currency = True
      Precision = 19
    end
    object qrySpecialRecallReciptNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'ReciptNumber'
    end
    object qrySpecialRecallReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1601#1585#1605
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qrySpecialRecallPersonID1: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1662#1603#1610#1606#1711' '
      FieldName = 'PersonID1'
    end
    object qrySpecialRecallPersonID1M: TIntegerField
      Tag = 3
      DisplayLabel = #1705#1583' '#1605#1588#1578#1585#1740'1'
      FieldName = 'PersonID1M'
    end
    object qrySpecialRecallCustName1M: TStringField
      Tag = 3
      DisplayLabel = ' '#1605#1588#1578#1585#1740'1'
      FieldName = 'CustName1M'
      Size = 120
    end
    object qrySpecialRecallPersonID2M: TIntegerField
      Tag = 3
      DisplayLabel = #1705#1583' '#1605#1588#1578#1585#1740'2'
      FieldName = 'PersonID2M'
    end
    object qrySpecialRecallCustName2M: TStringField
      Tag = 3
      DisplayLabel = ' '#1605#1588#1578#1585#1740'2'
      FieldName = 'CustName2M'
      Size = 120
    end
    object qrySpecialRecallPersonID3M: TIntegerField
      Tag = 3
      DisplayLabel = #1705#1583' '#1605#1588#1578#1585#1740'3'
      FieldName = 'PersonID3M'
    end
    object qrySpecialRecallCustName3M: TStringField
      Tag = 3
      DisplayLabel = ' '#1605#1588#1578#1585#1740'3'
      FieldName = 'CustName3M'
      Size = 120
    end
    object qrySpecialRecallAidNumberM: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1705#1605#1705#1740
      FieldName = 'AidNumberM'
      Size = 40
    end
    object qrySpecialRecallAidDateM: TStringField
      DisplayLabel = #1578#1575#1585#1740#1582' '#1705#1605#1705#1740
      FieldName = 'AidDateM'
      FixedChar = True
      Size = 10
    end
    object qrySpecialRecallStoreID: TSmallintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1575#1606#1576#1575#1585
      FieldName = 'StoreID'
      OnChange = qrySpecialRecallStoreIDChange
    end
    object qrySpecialRecallReciptItemID: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1606#1583#1607
      FieldName = 'ReciptItemID'
    end
    object qrySpecialRecallc_StoreName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1575#1606#1576#1575#1585
      FieldName = 'c_StoreName'
      Size = 70
    end
    object qrySpecialRecallItemNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' '#1603#1575#1604#1575
      FieldName = 'ItemNote'
      Size = 100
    end
    object qrySpecialRecallArzAmount: TFloatField
      DisplayLabel = #1605#1576#1604#1594' '#1575#1585#1586#1610
      FieldName = 'ArzAmount'
      currency = True
    end
    object qrySpecialRecallArzRate: TBCDField
      DisplayLabel = #1606#1585#1582' '#1575#1585#1586#1610
      FieldName = 'ArzRate'
      currency = True
      Precision = 19
    end
    object qrySpecialRecallWaterCo: TFloatField
      FieldName = 'WaterCo'
    end
    object qrySpecialRecallDeficitValue: TBCDField
      FieldName = 'DeficitValue'
      Precision = 19
    end
    object qrySpecialRecallTaxCo: TFloatField
      FieldName = 'TaxCo'
    end
    object qrySpecialRecallTaxValue: TBCDField
      FieldName = 'TaxValue'
      Precision = 19
    end
    object qrySpecialRecallUnitSellPrice: TFMTBCDField
      Tag = 3
      DisplayLabel = #1601#1740
      FieldName = 'UnitSellPrice'
      Precision = 19
    end
    object qrySpecialRecallReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qrySpecialRecallServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qrySpecialRecallYearID: TIntegerField
      FieldName = 'YearID'
    end
  end
  object srcSpecialRecall: TDataSource
    DataSet = qrySpecialRecall
    Left = 328
    Top = 248
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcSpecialRecall
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 568
    Top = 280
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'ControlCode'
      FieldName = 'ControlCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'StuffCode'
      FieldName = 'StuffCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'StuffDiameter'
      FieldName = 'StuffDiameter'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'StuffSize'
      FieldName = 'StuffSize'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'StoreID'
      FieldName = 'StoreID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = '_checked'
      FieldName = '_checked'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'ReciptItemID'
      FieldName = 'ReciptItemID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'c_StoreName'
      FieldName = 'c_StoreName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'c_StuffName'
      FieldName = 'c_StuffName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'UnitName'
      FieldName = 'UnitName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'StuffAlloy'
      FieldName = 'StuffAlloy'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'StuffGrade'
      FieldName = 'StuffGrade'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'Entity'
      FieldName = 'Entity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'Weight'
      FieldName = 'Weight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'Price'
      FieldName = 'Price'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'PersonID1'
      FieldName = 'PersonID1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'CustName'
      FieldName = 'CustName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'ReciptNumber'
      FieldName = 'ReciptNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'ReciptDate'
      FieldName = 'ReciptDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'ReciptCaption'
      FieldName = 'ReciptCaption'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'ItemNote'
      FieldName = 'ItemNote'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = 'InvEntity'
      FieldName = 'InvEntity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = 'OutputEntity'
      FieldName = 'OutputEntity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField24: TppField
      FieldAlias = 'ArzAmount'
      FieldName = 'ArzAmount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField25: TppField
      FieldAlias = 'ArzRate'
      FieldName = 'ArzRate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField26: TppField
      FieldAlias = 'WaterCo'
      FieldName = 'WaterCo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField27: TppField
      FieldAlias = 'DeficitValue'
      FieldName = 'DeficitValue'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField28: TppField
      FieldAlias = 'TaxCo'
      FieldName = 'TaxCo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField29: TppField
      FieldAlias = 'TaxValue'
      FieldName = 'TaxValue'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\Projects\Fara\Salary\Exe\Report\rptEmployeeInfolist_Bank2.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RefreshTokenLifeSpan = 365
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RefreshTokenLifeSpan = 365
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    EmailSettings.ConnectionSettings.ConnectionStatusInfo = [csiStatusBar]
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PDFSettings.Layers = True
    PDFSettings.Outline = True
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.DropBoxSettings.SharedResources = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.GoogleDriveSettings.SharedResources = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    CloudDriveSettings.OneDriveSettings.SharedResources = True
    Left = 568
    Top = 352
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 25400
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 17992
        mmWidth = 197379
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCompanyName: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCompanyName'
        OnGetText = ppLblCompanyNameGetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 73025
        mmTop = 1058
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCaption: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCaption'
        OnGetText = ppLblCaptionGetText
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578'  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8424
        mmLeft = 92382
        mmTop = 8467
        mmWidth = 12615
        BandType = 0
        LayerName = Foreground
      end
      object ppSysVarPageNo: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SysVarPageNo1'
        OnGetText = ppSysVarPageNoGetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 9790
        mmTop = 8467
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object ppLblPrintDate: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lbprintdate'
        OnGetText = ppLblPrintDateGetText
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1711#1586#1575#1585#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 9790
        mmTop = 1058
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object ppDBCalcdcCount_TextAlign: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalcdcCount_TextAlign'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 153988
        mmTop = 4233
        mmWidth = 21960
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7409
      mmPrintPosition = 0
      object ppLineDetail: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'LineDetail'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 194469
        mmTop = 0
        mmWidth = 2910
        BandType = 4
        LayerName = Foreground
      end
      object ppLin4Position: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Lin4Position'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 0
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 9525
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 0
        mmWidth = 197379
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1606#1602#1604' '#1576#1607'..'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6011
        mmLeft = 181240
        mmTop = 529
        mmWidth = 15579
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape3'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 0
        mmWidth = 197379
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1580#1605#1593
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6085
        mmLeft = 183886
        mmTop = 529
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object qryInsertMasterInfo: TADOQuery
    Connection = DmF.adcBSell
    Parameters = <
      item
        Name = 'ReciptID'
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
      
        'SELECT       StoreID, PersonID1, PersonID2, SecondType, ReciptNo' +
        'te, AidNumber, AidDate, StoreID2, SellsMethod, SellsEmporium, Ma' +
        'sirID, DeliveryID, PersonID3, PersonID4, TozinID'
      'FROM            Recipts'
      'WHERE        (ReciptID = :ReciptID ) AND (ServerID = :ServerID )'
      ' AND (YearID = :YearID )')
    Left = 248
    Top = 346
  end
end

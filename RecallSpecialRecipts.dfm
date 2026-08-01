inherited RecallSpecialReciptsF: TRecallSpecialReciptsF
  Left = 453
  Top = 54
  Align = alClient
  Caption = #1575#1606#1578#1582#1575#1576' '#1601#1585#1605' '#1601#1585#1575#1582#1608#1575#1606#1740
  ClientHeight = 546
  ClientWidth = 831
  OldCreateOrder = True
  OnActivate = FormActivate
  OnDestroy = FormDestroy
  ExplicitWidth = 837
  ExplicitHeight = 575
  PixelsPerInch = 96
  TextHeight = 13
  object spl1: TSplitter [0]
    Left = 0
    Top = 281
    Width = 831
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitLeft = -30
    ExplicitTop = 290
    ExplicitWidth = 747
  end
  inherited Panel1: TPanel
    Width = 831
    ExplicitWidth = 831
    DesignSize = (
      831
      73)
    inherited Image1: TImage
      Left = 777
      ExplicitLeft = 604
    end
    inherited lblTopic0: TLabel
      Left = 701
      Top = 6
      Width = 56
      Caption = #1575#1606#1578#1582#1575#1576' '#1601#1585#1605
      ExplicitLeft = 528
      ExplicitTop = 6
      ExplicitWidth = 56
    end
    inherited lblTopic1: TLabel
      Left = 402
      Top = 27
      Width = 355
      AutoSize = False
      Caption = #1576#1585#1575#1610' '#1575#1606#1578#1582#1575#1576' '#1601#1585#1605' '#1575#1586' '#1583#1603#1605#1607' Space '#1610#1575' Double Click '#1605#1608#1587' '#1575#1587#1578#1601#1575#1583#1607' '#1603#1606#1610#1583'.'
      ExplicitLeft = 229
      ExplicitTop = 27
      ExplicitWidth = 355
    end
    object btnExcelComparisonRecallF: TBitBtn
      Left = 5
      Top = 42
      Width = 190
      Height = 25
      Action = actExcelComparisonRecallF
      Caption = #1583#1585#1610#1575#1601#1578' '#1608' '#1605#1602#1575#1610#1587#1607' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1586' Excel'
      TabOrder = 0
    end
  end
  inherited pnlDown: TPanel
    Top = 509
    Width = 831
    ExplicitTop = 509
    ExplicitWidth = 831
    inherited btnClose: TBitBtn
      AlignWithMargins = True
      Left = 2
      Top = 7
      Width = 72
      Height = 23
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Align = alLeft
      Glyph.Data = {00000000}
      ModalResult = 2
      TabOrder = 5
      ExplicitLeft = 2
      ExplicitTop = 7
      ExplicitWidth = 72
      ExplicitHeight = 23
    end
    object btnOk: TBitBtn
      AlignWithMargins = True
      Left = 757
      Top = 7
      Width = 72
      Height = 23
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Align = alRight
      Caption = #1578#1571#1610#1610#1600#1600#1600#1583
      Default = True
      ModalResult = 1
      TabOrder = 4
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 150
      Top = 7
      Width = 72
      Height = 23
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actSearch
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 0
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 76
      Top = 7
      Width = 72
      Height = 23
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 1
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 609
      Top = 7
      Width = 72
      Height = 23
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actShowpreRecipt
      Align = alRight
      Caption = #1605#1588#1575#1607#1583#1607' '#1711#1585#1583#1588
      TabOrder = 2
    end
    object BitBtn5: TBitBtn
      AlignWithMargins = True
      Left = 224
      Top = 7
      Width = 72
      Height = 23
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 3
    end
    object BitBtn8: TBitBtn
      AlignWithMargins = True
      Left = 683
      Top = 7
      Width = 72
      Height = 23
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actRptCardex
      Align = alRight
      Caption = #1603#1575#1585#1583#1603#1587
      TabOrder = 6
    end
    object BitBtn9: TBitBtn
      AlignWithMargins = True
      Left = 535
      Top = 7
      Width = 72
      Height = 23
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 7
    end
    object BitBtn10: TBitBtn
      AlignWithMargins = True
      Left = 461
      Top = 7
      Width = 72
      Height = 23
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = ActPerFactor
      Align = alRight
      Caption = #1662#1610#1588#8207#1601#1575#1603#1578#1608#1585'(42)'
      TabOrder = 8
    end
    object BitBtn11: TBitBtn
      AlignWithMargins = True
      Left = 384
      Top = 7
      Width = 75
      Height = 23
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actPrint
      Align = alRight
      Caption = #1670#1575#1662
      TabOrder = 9
    end
  end
  object StatusBar1: TStatusBar [3]
    Left = 0
    Top = 471
    Width = 831
    Height = 19
    Panels = <
      item
        Width = 300
      end
      item
        Width = 300
      end>
  end
  object StatusBar2: TStatusBar [4]
    Left = 0
    Top = 490
    Width = 831
    Height = 19
    Panels = <
      item
        Width = 300
      end
      item
        Width = 300
      end>
  end
  object Panel2: TPanel [5]
    Left = 0
    Top = 430
    Width = 831
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    BevelWidth = 2
    BorderWidth = 2
    BorderStyle = bsSingle
    TabOrder = 4
    object lblSumChecks: TLabel
      Left = 8
      Top = 4
      Width = 473
      Height = 37
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
    object lblCountNo: TLabel
      AlignWithMargins = True
      Left = 532
      Top = 17
      Width = 128
      Height = 15
      Margins.Top = 15
      Align = alRight
      Caption = #1578#1593#1583#1575#1583' '#1587#1601#1575#1585#1588' '#1576#1586#1585#1711#1578#1585' '#1575#1586' '#1589#1601#1585' '
      Color = 9816831
      ParentColor = False
      Transparent = True
      ExplicitHeight = 13
    end
    object lblUnitSellPriceCHK: TLabel
      AlignWithMargins = True
      Left = 448
      Top = 17
      Width = 78
      Height = 15
      Margins.Top = 15
      Align = alRight
      Caption = #1601#1740' '#1576#1586#1585#1711#1578#1585' '#1575#1586' '#1589#1601#1585
      Color = 51711
      ParentColor = False
      Transparent = True
      ExplicitHeight = 13
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 747
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
      Left = 666
      Top = 5
      Width = 75
      Height = 27
      Action = actSlelectInverse
      Align = alRight
      Caption = #1575#1606#1578#1582#1575#1576' '#1605#1593#1603#1608#1587
      TabOrder = 1
    end
  end
  object Panel3: TPanel [6]
    Left = 0
    Top = 73
    Width = 831
    Height = 41
    Align = alTop
    BorderWidth = 3
    TabOrder = 6
    DesignSize = (
      831
      41)
    object LblStore: TLabel
      Left = 511
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
      ExplicitLeft = 570
    end
    object DBTextStoreID: TDBText
      Left = 431
      Top = 10
      Width = 77
      Height = 16
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Color = clCream
      DataField = 'StoreID'
      DataSource = srcSpecialRecall
      ParentColor = False
      Transparent = True
      ExplicitLeft = 490
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
      Transparent = True
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
    object rgPrice: TRadioGroup
      Left = 608
      Top = 4
      Width = 219
      Height = 33
      Align = alRight
      Caption = #1601#1585#1575' '#1582#1608#1575#1606#1610' '#1576#1575' '#1601#1740
      Columns = 3
      ItemIndex = 1
      Items.Strings = (
        #1606#1583#1575#1585#1583
        #1601#1740
        #1601#1740' '#1580#1583#1740#1583)
      TabOrder = 0
    end
  end
  object pnlMaster: TPanel [7]
    Left = 0
    Top = 114
    Width = 831
    Height = 167
    Align = alTop
    TabOrder = 7
    object pnlMaster1: TPanel
      Left = 1
      Top = 135
      Width = 829
      Height = 31
      Align = alBottom
      TabOrder = 0
      object btnSort: TBitBtn
        AlignWithMargins = True
        Left = 4
        Top = 2
        Width = 72
        Height = 27
        Hint = ' '
        Margins.Top = 1
        Margins.Bottom = 1
        Align = alLeft
        Caption = #1578#1585#1578#1610#1576
        TabOrder = 0
        OnClick = btnSortClick
      end
      object btnSearch: TBitBtn
        AlignWithMargins = True
        Left = 82
        Top = 2
        Width = 72
        Height = 27
        Hint = ' '
        Margins.Top = 1
        Margins.Bottom = 1
        Align = alLeft
        Caption = #1580#1587#1578#1580#1608
        TabOrder = 1
        OnClick = btnSearchClick
      end
    end
    object dbgrdMaster: TCedarDbgrid
      Left = 1
      Top = 1
      Width = 829
      Height = 134
      Align = alClient
      Color = clCream
      DataSource = srcMaster
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
      FooterParams.Font.Height = -13
      FooterParams.Font.Name = 'Tahoma'
      FooterParams.Font.Style = [fsBold]
      FooterParams.ParentFont = False
      FooterParams.VertLines = False
      GridLineParams.VertEmptySpaceStyle = dessNonEh
      HorzScrollBar.ExtraPanel.Visible = True
      IndicatorTitle.ShowDropDownSign = True
      IndicatorTitle.TitleButton = True
      OddRowColor = clGradientInactiveCaption
      ParentFont = False
      RowHeight = 21
      SearchPanel.Enabled = True
      SearchPanel.FilterOnTyping = True
      SortLocal = True
      TabOrder = 1
      OnKeyPress = dbgrdMasterKeyPress
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ReciptNumber'
          Footers = <>
          Width = 54
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
          FieldName = 'CustName'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PersonID2'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CustName2'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PersonID3'
          Footers = <>
          Width = 46
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CustName3'
          Footers = <>
          Width = 41
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PersonID4'
          Footers = <>
          Width = 38
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CustName4'
          Footers = <>
          Width = 47
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'StoreID'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'c_StoreName'
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
          FieldName = 'DefaultDate'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DefaultDuration'
          Footers = <>
          Width = 34
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object DBGrid1: TCedarDbgrid [8]
    Tag = 111
    Left = 0
    Top = 284
    Width = 831
    Height = 146
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
    FooterParams.Font.Height = -13
    FooterParams.Font.Name = 'Tahoma'
    FooterParams.Font.Style = [fsBold]
    FooterParams.ParentFont = False
    FooterParams.VertLines = False
    GridLineParams.VertEmptySpaceStyle = dessNonEh
    HorzScrollBar.ExtraPanel.Visible = True
    IndicatorTitle.ShowDropDownSign = True
    IndicatorTitle.TitleButton = True
    OddRowColor = clGradientInactiveCaption
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ParentShowHint = False
    RowHeight = 21
    SearchPanel.Enabled = True
    SearchPanel.FilterOnTyping = True
    ShowHint = True
    SortLocal = True
    TabOrder = 5
    OnDblClick = DBGrid1DblClick
    OnDrawColumnCell = DBGrid1DrawColumnCell
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
        Width = 32
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'StuffCode'
        Footers = <>
        Width = 37
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ControlCode'
        Footers = <>
        Width = 62
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'c_StuffName'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'StuffAlloy'
        Footers = <>
        Width = 25
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'StuffDiameter'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'StuffSize'
        Footers = <>
        Width = 25
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SpecialCode'
        Footers = <>
        Width = 58
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Entity'
        Footers = <>
        Width = 37
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'WeightOnEntity'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Weight'
        Footers = <>
        Width = 34
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PersonID1'
        Footers = <>
        Width = 64
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CustName'
        Footers = <>
        Width = 79
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ItemNote'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ReciptCaption'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'StuffGrade'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'UnitName'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'UnitSellPrice'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'UnitSellPricePost'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Price'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ReciptNumber'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ReciptDate'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'MAidDate'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'MAidNumber'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PersonID1M'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CustName1M'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PersonID2M'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CustName2M'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PersonID3M'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CustName3M'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PersonID4M'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CustName4M'
        Footers = <>
        Width = 60
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'gateketab'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'moalef'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'motarjem'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'nevisandeh'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'noejeld'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PakhshCompany'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Tabaghe'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Mozo'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'padidAvarandehName'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CountNo'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Auxiliary'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AidNumber'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AidDate'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'UseUnitIDM'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'UseUnitNameM'
        Footers = <>
        Width = 64
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'UseUnitID'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'UseUnitName'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'UseOtherID_Item'
        Footers = <>
        Width = 64
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = '__EntityEdit'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'StoreID'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'c_StoreName'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'c_StuffTecInfo'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'WaterCo'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DeficitValue'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DeficitValue2'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DeficitValue3'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TaxCo'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TaxValue'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SecondTypeName'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'MachineNo'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'MachineName'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ItemDate'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ProductModel'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ProductModelName'
        Footers = <>
        Width = 60
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ArzAmount'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PO'
        Footers = <>
        Width = 26
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'acc_CTopicCode3'
        Footers = <>
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  inherited ActionList1: TActionList
    Left = 368
    Top = 24
    object actSearch: TAction [2]
      Caption = #1580#1587#1578#1580#1608
      Hint = ' '
      ShortCut = 114
      OnExecute = actSearchExecute
    end
    object actSort: TAction [3]
      Caption = #1578#1585#1578#1610#1576
      Hint = ' '
      ShortCut = 117
      OnExecute = actSortExecute
    end
    object actPrint: TAction [4]
      Caption = #1670#1575#1662
      Hint = ' '
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actExcel: TAction [5]
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      Hint = ' '
      ShortCut = 8310
      OnExecute = actExcelExecute
    end
    object actSelectAll: TAction [6]
      Caption = #1575#1606#1578#1582#1575#1576' '#1607#1605#1607
      Hint = ' '
      ShortCut = 16449
      OnExecute = actSelectAllExecute
    end
    object actSlelectInverse: TAction [7]
      Caption = #1575#1606#1578#1582#1575#1576' '#1605#1593#1603#1608#1587
      Hint = ' '
      ShortCut = 16457
      OnExecute = actSlelectInverseExecute
    end
    object actRptCardex: TAction [8]
      Caption = #1603#1575#1585#1583#1603#1587
      OnExecute = actRptCardexExecute
    end
    object actFilter: TAction [9]
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actShowpreRecipt: TAction [10]
      Caption = #1605#1588#1575#1607#1583#1607' '#1711#1585#1583#1588
      ShortCut = 123
      OnExecute = actShowpreReciptExecute
    end
    object ActPerFactor: TAction [11]
      Caption = #1662#1610#1588#8207#1601#1575#1603#1578#1608#1585'(42)'
      OnExecute = ActPerFactorExecute
    end
    inherited actManagGridColumns: TAction
      OnExecute = actManagGridColumnsExecute
    end
    object actExcelComparisonRecallF: TAction
      Caption = #1583#1585#1610#1575#1601#1578' '#1608' '#1605#1602#1575#1610#1587#1607' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1586' Excel'
      OnExecute = actExcelComparisonRecallFExecute
    end
  end
  object qrySpecialRecall: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = qrySpecialRecallAfterOpen
    BeforePost = qrySpecialRecallBeforePost
    AfterScroll = qrySpecialRecallAfterScroll
    CommandTimeout = 0
    Parameters = <>
    Left = 385
    Top = 337
    object qrySpecialRecall_Checked: TFMTBCDField
      Tag = 3
      DisplayLabel = #1575#1606#1578#1582#1575#1576
      FieldName = '_Checked'
      Precision = 20
      Size = 4
    end
    object qrySpecialRecallStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583#1603#1575#1604#1575
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
      OnGetText = qrySpecialRecallStuffSizeGetText
      FixedChar = True
      Size = 12
    end
    object qrySpecialRecallEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'Entity'
    end
    object qrySpecialRecallWeightOnEntity: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606' '#1608#1575#1581#1583
      FieldName = 'WeightOnEntity'
    end
    object qrySpecialRecallWeight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606
      FieldName = 'Weight'
    end
    object qrySpecialRecallPersonID1: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1662#1603#1610#1606#1711' '
      FieldName = 'PersonID1'
    end
    object qrySpecialRecallCustName: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1662#1603#1610#1606#1711' '
      FieldName = 'CustName'
      Size = 120
    end
    object qrySpecialRecallItemNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' '#1603#1575#1604#1575
      FieldName = 'ItemNote'
      Size = 100
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
    object qrySpecialRecallUnitSellPrice: TFMTBCDField
      DisplayLabel = #1601#1610
      FieldName = 'UnitSellPrice'
      currency = True
    end
    object qrySpecialRecallUnitSellPricePost: TFloatField
      DisplayLabel = #1601#1740' '#1580#1583#1740#1583
      FieldName = 'UnitSellPricePost'
      ReadOnly = True
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
    object qrySpecialRecallMAidDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1603#1605#1603#1610' '#1601#1585#1605
      FieldName = 'MAidDate'
      FixedChar = True
      Size = 10
    end
    object qrySpecialRecallMAidNumber: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1603#1605#1603#1610' '#1601#1585#1605
      FieldName = 'MAidNumber'
      Size = 40
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
    object qrySpecialRecallPersonID2: TIntegerField
      Tag = 3
      DisplayLabel = #1705#1583' '#1605#1588#1578#1585#1740'2'
      FieldName = 'PersonID2M'
    end
    object qrySpecialRecallCustName2: TStringField
      Tag = 3
      DisplayLabel = ' '#1605#1588#1578#1585#1740'2'
      FieldName = 'CustName2M'
      Size = 120
    end
    object qrySpecialRecallPersonID3: TIntegerField
      Tag = 3
      DisplayLabel = #1705#1583' '#1605#1588#1578#1585#1740'3'
      FieldName = 'PersonID3M'
    end
    object qrySpecialRecallCustName3: TStringField
      Tag = 3
      DisplayLabel = ' '#1605#1588#1578#1585#1740'3'
      FieldName = 'CustName3M'
      Size = 120
    end
    object qrySpecialRecallPersonID4M: TIntegerField
      Tag = 3
      DisplayLabel = #1705#1583' '#1605#1588#1578#1585#1740'4'
      FieldName = 'PersonID4M'
    end
    object qrySpecialRecallCustName4: TStringField
      Tag = 3
      DisplayLabel = ' '#1605#1588#1578#1585#1740'4'
      FieldName = 'CustName4M'
      Size = 120
    end
    object qrySpecialRecallgateketab: TStringField
      DisplayLabel = #1602#1591#1593
      FieldName = 'gateketab'
      Size = 64
    end
    object qrySpecialRecallmoalef: TStringField
      DisplayLabel = #1605#1572#1604#1601
      FieldName = 'moalef'
      Size = 64
    end
    object qrySpecialRecallmotarjem: TStringField
      DisplayLabel = #1605#1578#1585#1580#1605
      FieldName = 'motarjem'
      Size = 64
    end
    object qrySpecialRecallnevisandeh: TStringField
      DisplayLabel = #1606#1608#1610#1587#1606#1583#1607
      FieldName = 'nevisandeh'
      Size = 64
    end
    object qrySpecialRecallnoejeld: TStringField
      DisplayLabel = #1580#1604#1583
      FieldName = 'noejeld'
      Size = 64
    end
    object qrySpecialRecallPakhshCompany: TStringField
      DisplayLabel = #1662#1582#1588
      FieldName = 'PakhshCompany'
      Size = 64
    end
    object qrySpecialRecallTabaghe: TStringField
      DisplayLabel = #1591#1576#1602#1607
      FieldName = 'Tabaghe'
      Size = 64
    end
    object qrySpecialRecallMozo: TStringField
      DisplayLabel = #1605#1608#1590#1608#1593
      FieldName = 'Mozo'
      Size = 64
    end
    object qrySpecialRecallpadidAvarandehName: TStringField
      DisplayLabel = #1662#1583#1740#1583#1570#1608#1585#1606#1583#1607
      FieldName = 'padidAvarandehName'
      Size = 64
    end
    object qrySpecialRecallCountNo: TIntegerField
      DisplayLabel = #1578#1593#1583#1575#1583#1587#1601#1575#1585#1588
      FieldName = 'CountNo'
    end
    object qrySpecialRecallAuxiliary: TFloatField
      FieldName = 'Auxiliary'
    end
    object qrySpecialRecallAidNumber: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1603#1605#1603#1610
      FieldName = 'AidNumber'
      Size = 40
    end
    object qrySpecialRecallAidDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1603#1605#1603#1610
      FieldName = 'AidDate'
      FixedChar = True
      Size = 10
    end
    object qrySpecialRecallUseUnitIDM: TIntegerField
      DisplayLabel = #1603#1583' '#1605#1581#1604' '#1605#1589#1585#1601'.'#1605
      FieldName = 'UseUnitIDM'
    end
    object qrySpecialRecallUseUnitNameM: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1605#1581#1604' '#1605#1589#1585#1601' '#1605
      FieldName = 'UseUnitNameM'
      Size = 70
    end
    object qrySpecialRecallUseUnitID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1581#1604' '#1605#1589#1585#1601
      FieldName = 'UseUnitID'
    end
    object qrySpecialRecallUseUnitName: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1605#1581#1604' '#1605#1589#1585#1601
      FieldName = 'UseUnitName'
      Size = 70
    end
    object qrySpecialRecall__EntityEdit: TFMTBCDField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1583#1585#1582#1608#1575#1587#1578
      FieldName = '__EntityEdit'
      OnChange = qrySpecialRecall__EntityEditChange
      Precision = 20
      Size = 4
    end
    object qrySpecialRecallStoreID: TSmallintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1575#1606#1576#1575#1585
      FieldName = 'StoreID'
      OnChange = qrySpecialRecallStoreIDChange
    end
    object qrySpecialRecallc_StoreName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1575#1606#1576#1575#1585
      FieldName = 'c_StoreName'
      Size = 70
    end
    object qrySpecialRecallc_StuffTecInfo: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1601#1606#1740'/'#1588#1575#1576#1705
      FieldName = 'c_StuffTecInfo'
      Size = 30
    end
    object qrySpecialRecallWaterCo: TFloatField
      Tag = 3
      DisplayLabel = #1583#1585#1589#1583#1578#1582#1601#1610#1601
      FieldName = 'WaterCo'
    end
    object qrySpecialRecallDeficitValue: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1578#1582#1601#1610#1601
      FieldName = 'DeficitValue'
      currency = True
      Precision = 19
    end
    object qrySpecialRecallDeficitValue2: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1578#1582#1601#1610#1601'2'
      FieldName = 'DeficitValue2'
      currency = True
      Precision = 19
    end
    object qrySpecialRecallDeficitValue3: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1578#1582#1601#1610#1601'3'
      FieldName = 'DeficitValue3'
      currency = True
      Precision = 19
    end
    object qrySpecialRecallDeficitValue4: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1578#1582#1601#1610#1601'4'
      FieldName = 'DeficitValue4'
      currency = True
      Precision = 19
    end
    object qrySpecialRecallTaxCo: TFloatField
      Tag = 3
      DisplayLabel = #1583#1585#1589#1583#1605#1575#1604#1610#1575#1578
      FieldName = 'TaxCo'
    end
    object qrySpecialRecallTaxValue: TBCDField
      Tag = 3
      DisplayLabel = #1605#1575#1604#1610#1575#1578
      FieldName = 'TaxValue'
      currency = True
      Precision = 19
    end
    object qrySpecialRecallSecondTypeName: TStringField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
      FieldName = 'SecondTypeName'
      Size = 50
    end
    object qrySpecialRecallMachineNo: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1605#1575#1588#1610#1606
      FieldName = 'MachineNo'
      Size = 25
    end
    object qrySpecialRecallMachineName: TStringField
      DisplayLabel = #1606#1575#1605' '#1585#1575#1606#1606#1583#1607
      FieldName = 'MachineName'
      Size = 50
    end
    object qrySpecialRecallItemDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'ItemDate'
      Size = 10
    end
    object qrySpecialRecallProductModel: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1583#1604
      FieldName = 'ProductModel'
    end
    object qrySpecialRecallArzAmount: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1575#1585#1586
      FieldName = 'ArzAmount'
    end
    object qrySpecialRecallPortage: TBCDField
      FieldName = 'Portage'
      Precision = 19
    end
    object qrySpecialRecallArticle: TBCDField
      FieldName = 'Article'
      Precision = 19
    end
    object qrySpecialRecallWage: TBCDField
      FieldName = 'Wage'
      Precision = 19
    end
    object qrySpecialRecallScoria: TBCDField
      FieldName = 'Scoria'
      Precision = 19
    end
    object qrySpecialRecallReciptItemID: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1606#1583#1607
      FieldName = 'ReciptItemID'
    end
    object qrySpecialRecallSecondTypeItem: TIntegerField
      FieldName = 'SecondTypeItem'
    end
    object qrySpecialRecallYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qrySpecialRecallUnitSellPriceCHK: TIntegerField
      FieldName = 'UnitSellPriceCHK'
      ReadOnly = True
    end
    object qrySpecialRecallProductCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1581#1589#1608#1604
      FieldName = 'ProductCode'
    end
    object qrySpecialRecallArzRate: TBCDField
      FieldName = 'ArzRate'
      Precision = 19
    end
    object qrySpecialRecallReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qrySpecialRecallServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qrySpecialRecallSpecialCode: TStringField
      Tag = 3
      DisplayLabel = #1705#1583' '#1588#1575#1587#1740'/'#1602#1591#1593#1607
      FieldName = 'SpecialCode'
      FixedChar = True
      Size = 25
    end
    object qrySpecialRecallUseOtherID_Item: TIntegerField
      Tag = 3
      DisplayLabel = #1587#1575#1740#1585' '#1605#1581#1604' '#1607#1575#1740' '#1605#1589#1585#1601
      FieldName = 'UseOtherID_Item'
    end
    object qrySpecialRecallPO: TStringField
      FieldName = 'PO'
      Size = 30
    end
    object qrySpecialRecallDeficitValueCo2: TFMTBCDField
      DisplayLabel = #1583#1585#1589#1583#1578#1582#1601#1610#1601'2'
      FieldName = 'DeficitValueCo2'
      Precision = 10
      Size = 9
    end
    object qrySpecialRecallDeficitValueCo4: TFMTBCDField
      DisplayLabel = #1583#1585#1589#1583#1578#1582#1601#1610#1601'4'
      FieldName = 'DeficitValueCo4'
      Precision = 10
      Size = 9
    end
    object qrySpecialRecallDeficitValueCo3: TFMTBCDField
      DisplayLabel = #1583#1585#1589#1583#1578#1582#1601#1610#1601'3'
      FieldName = 'DeficitValueCo3'
      Precision = 10
      Size = 9
    end
    object qrySpecialRecallProductModelName: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1605#1583#1604
      FieldName = 'ProductModelName'
      Size = 150
    end
    object qrySpecialRecallCommissionCurrency: TFMTBCDField
      FieldName = 'CommissionCurrency'
      Precision = 38
    end
    object qrySpecialRecallCommissionPrice: TFMTBCDField
      FieldName = 'CommissionPrice'
      Precision = 38
    end
    object qrySpecialRecallCommission: TFMTBCDField
      FieldName = 'Commission'
      Precision = 38
    end
    object qrySpecialRecallacc_CTopicCode3: TStringField
      Tag = 3
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'4'
      FieldName = 'acc_CTopicCode3'
      Size = 12
    end
    object qrySpecialRecallStandardConsumptionCo: TFMTBCDField
      FieldName = 'StandardConsumptionCo'
      Precision = 20
      Size = 4
    end
  end
  object srcSpecialRecall: TDataSource
    DataSet = qrySpecialRecall
    Left = 504
    Top = 352
  end
  object qry4type11: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'ReciptType'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'AidDate'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'RecallKind1Str'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'RecallKind2Str'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'StuffCodeFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'StuffCodeTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'StoreIDFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'StoreIDTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ControlcodeFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ControlcodeTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'DiameterFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'DiameterTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'RcpNumberFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'RcpNumberTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ItemPersonIDFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ItemPersonIDTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'DateFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'DateTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearIDFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearIDTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'SecondTypeItemFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'SecondTypeItemTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ReciptType21'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'StoreID20'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      
        'SELECT * FROM (SELECT  ReciptItems.YearID,   ReciptItems.ReciptI' +
        'temID, '
      
        'ReciptItems.StuffCode, StuffCoding.c_StuffName, ReciptItems.Cont' +
        'rolCode, ReciptItems.StuffSize , '
      'ReciptItems.StuffDiameter,'
      
        'ReciptItems.StuffAlloy, ReciptItems.PersonID1, Customers.CustNam' +
        'e,'
      ''
      'case when RecallType =11 Then '
      #9'isnull(ReciptItems.RequestedEntity,0)  -'
      #9#9'(ROUND(ReciptItems.InputEntity + ReciptItems.OutputEntity - '
      #9#9'ISNULL(AidRecallSpecial.Entity, 0), 3))'
      
        #9'else '#9#9'(ROUND(ReciptItems.InputEntity + ReciptItems.OutputEntit' +
        'y - '
      #9#9'ISNULL(AidRecallSpecial.Entity, 0), 3))'
      #9'end  AS Entity,'
      'case when RecallType =11 Then '
      #9'isnull(ReciptItems.RequestedWeight,0)  -'
      #9#9'ROUND(ReciptItems.InputWeight + ReciptItems.OutputWeight - '
      #9#9'ISNULL(AidRecallSpecial.Weight, 0), 3) '
      #9'else '
      #9#9'ROUND(ReciptItems.InputWeight + ReciptItems.OutputWeight - '
      #9#9'ISNULL(AidRecallSpecial.Weight, 0), 3) end'
      #9'AS Weight,'
      ''
      ''
      'case when'
      #9'case when RecallType =11 Then '
      #9'isnull(ReciptItems.RequestedEntity,0)  -'
      #9#9'(ROUND(ReciptItems.InputEntity + ReciptItems.OutputEntity - '
      #9#9'ISNULL(AidRecallSpecial.Entity, 0), 3))'
      
        #9'else '#9#9'(ROUND(ReciptItems.InputEntity + ReciptItems.OutputEntit' +
        'y - '
      #9#9'ISNULL(AidRecallSpecial.Entity, 0), 3))'
      #9'end <>0'
      #9'then ROUND ('
      #9#9'case when RecallType =11 Then '
      #9'isnull(ReciptItems.RequestedWeight,0)  -'
      #9#9'ROUND(ReciptItems.InputWeight + ReciptItems.OutputWeight - '
      #9#9'ISNULL(AidRecallSpecial.Weight, 0), 3) '
      #9'else '
      #9#9'ROUND(ReciptItems.InputWeight + ReciptItems.OutputWeight - '
      #9#9'ISNULL(AidRecallSpecial.Weight, 0), 3) end'
      ''
      #9#9'/'
      ''
      ''
      #9#9'case when RecallType =11 Then '
      #9'isnull(ReciptItems.RequestedEntity,0)  -'
      #9#9'(ROUND(ReciptItems.InputEntity + ReciptItems.OutputEntity - '
      #9#9'ISNULL(AidRecallSpecial.Entity, 0), 3))'
      
        #9'else '#9#9'(ROUND(ReciptItems.InputEntity + ReciptItems.OutputEntit' +
        'y - '
      #9#9'ISNULL(AidRecallSpecial.Entity, 0), 3))'
      #9'end'
      #9',3) else 0 end   as  WeightOnEntity ,'
      ''
      ''
      ''
      
        '                ReciptItems.TotalInputPrice + ReciptItems.TotalO' +
        'utputPrice -  ISNULL( AidRecallSpecial.Price, 0) AS Price,'
      
        '                      ReciptItems.TotallSellPrice - AidRecallSpe' +
        'cial.TotallSellPrice AS TotallSellPrice, ReciptItems.StuffGrade,' +
        ' Recipts.StoreID, Stores.c_StoreName,'
      
        '                      Units.UnitName, Recipts.ReciptNumber, Reci' +
        'pts.ReciptDate, ReciptTypes.ReciptCaption, ReciptItems.ItemNote,' +
        ' ReciptItems.Auxiliary,'
      
        '                      ReciptItems.UnitSellPrice, gateketab.Name ' +
        'AS '#1602#1591#1593', moalef.Name AS '#1605#1572#1604#1601', motarjem.Name AS '#1605#1578#1585#1580#1605', nevisandeh.' +
        'Name AS '#1606#1608#1610#1587#1606#1583#1607', noejeld.Name AS '#1580#1604#1583','
      
        '                      PakhshCompany.Name AS '#1662#1582#1588', StuffCoding.sd1' +
        ' AS '#1591#1576#1602#1607', Mozo.Name AS '#1605#1608#1590#1608#1593', derivedtbl_1.CountNo'
      ''
      ''
      
        '                     , ReciptItems.Portage, ReciptItems.Article,' +
        ' ReciptItems.Wage, ReciptItems.Scoria'
      ''
      
        ',ReciptItems.AidNumber, ReciptItems.AidDate, ReciptItems.UseUnit' +
        'ID, UseUnits.UseUnitName ,ReciptItems.SecondTypeItem'
      
        ', Fitful.FitfulID AS _Checked  , Fitful.FitfulID AS  __EntityEdi' +
        't,isnull(ReciptItems.RequestedEntity,0) as RequestedEntity'
      
        ', ReciptItems.WaterCo, ReciptItems.DeficitValue, ReciptItems.Def' +
        'icitValue2, ReciptItems.DeficitValue4, ReciptItems.DeficitValue3' +
        ', ReciptItems.TaxCo, ReciptItems.TaxValue,LookUps.Name AS Second' +
        'TypeName'
      
        '   , ReciptItems.DeficitValueCo2,  ReciptItems.DeficitValueCo4,R' +
        'eciptItems.DeficitValueCo3'
      
        ',CASE WHEN ISNULL(AidRecallSpecial.Entity,0)<>0 THEN ROUND(ISNUL' +
        'L(AidRecallSpecial.Price,0)/AidRecallSpecial.Entity,2) ELSE 0 EN' +
        'D UnitSellPricePost'
      
        ',CASE WHEN (ROUND(CASE WHEN ISNULL(AidRecallSpecial.Entity,0)<>0' +
        ' THEN ROUND(ISNULL(AidRecallSpecial.Price,0)/AidRecallSpecial.En' +
        'tity,2) ELSE 0 END,2)=ROUND(ReciptItems.UnitSellPrice,2))'
      
        '         OR(ROUND(CASE WHEN ISNULL(AidRecallSpecial.Entity,0)<>0' +
        ' THEN ROUND(ISNULL(AidRecallSpecial.Price,0)/AidRecallSpecial.En' +
        'tity,2) ELSE 0 END,2)=0) THEN 0 ELSE 1 END AS UnitSellPriceCHK, '
      
        #9#9' ReciptItems.MachineNo  , ReciptItems.MachineName, ReciptItems' +
        '.ItemDate'
      '     ,'#39#39' AS  padidAvarandehName , StuffCoding.c_StuffTecInfo'
      
        '     , ReciptItems.ProductCode , ReciptItems.ProductModel , Stuf' +
        'fCoding.sd1, StuffCoding.sd2, StuffCoding.sd3, StuffCoding.sd4, ' +
        'StuffCoding.sd5'
      
        '     , StuffCoding.sd6, StuffCoding.sd7, StuffCoding.sd8,StuffCo' +
        'ding.sd9 ,ReciptItems.ArzAmount ,ReciptItems.ArzRate ,ReciptItem' +
        's.SpecialCode'
      ',Recipts.AidNumber AS MAidNumber, Recipts.AidDate AS MAidDate'
      ',Recipts.PersonID1 AS PersonID1M,Recipts.PersonID2 AS PersonID2M'
      ',Recipts.PersonID3 AS PersonID3M,Recipts.PersonID4 AS PersonID4M'
      
        ',Customers1.CustName AS CustName1M,Customers2.CustName AS CustNa' +
        'me2M'
      
        ',Customers3.CustName AS CustName3M,Customers4.CustName AS CustNa' +
        'me4M'
      
        ','#39#39' as gateketab , '#39#39' as moalef,'#39#39' as motarjem,'#39#39' as nevisandeh,' +
        #39#39' as noejeld ,'#39#39' as PakhshCompany,'#39#39' as Tabaghe , '#39#39' as Mozo'
      ',Recipts.ReciptID,Recipts.ServerID'
      
        ',Recipts.UseUnitID AS UseUnitIDM ,'#39#39' AS UseUnitNameM ,ReciptItem' +
        's.UseOtherID_Item,Recipts.PO'
      ''
      ''
      'FROM         UseUnits RIGHT OUTER JOIN'
      'ReciptItems INNER JOIN'
      'Recipts ON'
      
        ' ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerI' +
        'D = Recipts.ServerID AND ReciptItems.YearID = Recipts.YearID'
      ' INNER JOIN'
      
        'ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType INNER' +
        ' JOIN'
      'Stores ON Recipts.StoreID = Stores.n_StoreID INNER JOIN'
      'Units INNER JOIN'
      
        'StuffCoding ON Units.UnitCode = StuffCoding.n_UnitCode ON Recipt' +
        'Items.StuffCode = StuffCoding.c_StuffCode ON'
      'UseUnits.UseUnitID = ReciptItems.UseUnitID LEFT OUTER JOIN'
      
        'Customers ON Recipts.PersonID1 = Customers.CustID LEFT OUTER JOI' +
        'N'
      
        '  (SELECT     ReciptItems_1.StuffCode, ReciptItems_1.StuffSize, ' +
        'ReciptItems_1.StuffDiameter, ReciptItems_1.StuffAlloy, COUNT(*) ' +
        'AS CountNo'
      '     FROM         Recipts AS Recipts_1 INNER JOIN'
      '                           ReciptItems AS ReciptItems_1 ON '
      
        'Recipts_1.ReciptID = ReciptItems_1.ReciptID  AND Recipts_1.Serve' +
        'rID = ReciptItems_1.ServerID AND Recipts_1.YearID = ReciptItems_' +
        '1.YearID'
      
        '     WHERE     (Recipts_1.ReciptType = :ReciptType ) AND (Recipt' +
        's_1.AidDate >= :AidDate ) AND (Recipts_1.ReciptState < 3)'
      
        '     GROUP BY ReciptItems_1.StuffCode, ReciptItems_1.StuffSize, ' +
        'ReciptItems_1.StuffDiameter, ReciptItems_1.StuffAlloy) AS derive' +
        'dtbl_1 ON'
      
        'ReciptItems.StuffCode = derivedtbl_1.StuffCode AND ReciptItems.S' +
        'tuffSize = derivedtbl_1.StuffSize AND ReciptItems.StuffDiameter ' +
        '= derivedtbl_1.StuffDiameter AND'
      'ReciptItems.StuffAlloy = derivedtbl_1.StuffAlloy LEFT OUTER JOIN'
      'dbo.AidRecallSpecial( :RecallKind1Str ) AS AidRecallSpecial ON '
      'ReciptItems.ReciptItemID = AidRecallSpecial.preReciptItemID '
      
        'AND ReciptItems.YearID = AidRecallSpecial.YearID  LEFT OUTER JOI' +
        'N'
      
        'dbo.LookUps4Type(313) AS PakhshCompany ON StuffCoding.st13 = Pak' +
        'hshCompany.Code LEFT OUTER JOIN'
      
        'dbo.LookUps4Type(312) AS noejeld ON StuffCoding.st12 = noejeld.C' +
        'ode LEFT OUTER JOIN'
      
        'dbo.LookUps4Type(311) AS gateketab ON StuffCoding.st11 = gateket' +
        'ab.Code LEFT OUTER JOIN'
      
        'dbo.LookUps4Type(305) AS motarjem ON StuffCoding.st5 = motarjem.' +
        'Code LEFT OUTER JOIN'
      
        'dbo.LookUps4Type(304) AS moalef ON StuffCoding.st4 = moalef.Code' +
        ' LEFT OUTER JOIN'
      
        'dbo.LookUps4Type(303) AS nevisandeh ON StuffCoding.st3 = nevisan' +
        'deh.Code LEFT OUTER JOIN'
      'dbo.LookUps4Type(308) AS Mozo ON StuffCoding.st8 = Mozo.Code'
      ''
      ' CROSS JOIN  Fitful'
      
        'LEFT OUTER JOIN LookUps ON ReciptItems.SecondTypeItem = LookUps.' +
        'LookUpID '
      
        'INNER JOIN Customers AS Customers1 ON ISNULL(Recipts.PersonID1, ' +
        '0) = Customers1.CustID'
      
        'INNER JOIN Customers AS Customers2 ON ISNULL(Recipts.PersonID2, ' +
        '0) = Customers2.CustID'
      
        'INNER JOIN Customers AS Customers3 ON ISNULL(Recipts.PersonID3, ' +
        '0) = Customers3.CustID'
      
        'INNER JOIN Customers AS Customers4 ON ISNULL(Recipts.PersonID4, ' +
        '0) = Customers4.CustID'
      ''
      'WHERE     (ReciptTypes.EffectType IN (  :RecallKind2Str )) AND '
      ''
      '((case when RecallType =11 Then '
      #9'isnull(ReciptItems.RequestedEntity,0)  -'
      #9#9'(ROUND(ReciptItems.InputEntity + ReciptItems.OutputEntity - '
      #9#9'ISNULL(AidRecallSpecial.Entity, 0), 3))'
      
        #9'else '#9#9'(ROUND(ReciptItems.InputEntity + ReciptItems.OutputEntit' +
        'y - '
      #9#9'ISNULL(AidRecallSpecial.Entity, 0), 3))'
      #9'end '
      ''
      '                      NOT BETWEEN - 0.0001 AND 0.0001) OR'
      ''
      ''
      '(case when RecallType =11 Then '
      #9'isnull(ReciptItems.RequestedEntity,0)  -'
      #9#9'ROUND(ReciptItems.InputWeight + ReciptItems.OutputWeight - '
      #9#9'ISNULL(AidRecallSpecial.Weight, 0), 3) '
      #9'else '
      #9#9'ROUND(ReciptItems.InputWeight + ReciptItems.OutputWeight - '
      #9#9'ISNULL(AidRecallSpecial.Weight, 0), 3) end'
      ''
      'NOT BETWEEN - 0.0001 AND 0.0001))'
      ''
      
        '        AND (ReciptItems.StuffCode BETWEEN :StuffCodeFrom AND :S' +
        'tuffCodeTo)'
      
        '        AND (Recipts.StoreID BETWEEN :StoreIDFrom AND :StoreIDTo' +
        ')'
      
        '        AND (ReciptItems.ControlCode BETWEEN :ControlcodeFrom AN' +
        'D :ControlcodeTo)'
      
        '        AND (ReciptItems.StuffDiameter BETWEEN :DiameterFrom AND' +
        ' :DiameterTo)'
      
        '        AND (Recipts.ReciptNumber BETWEEN :RcpNumberFrom AND :Rc' +
        'pNumberTo)'
      
        '        AND (ReciptItems.PersonID1 BETWEEN :ItemPersonIDFrom AND' +
        ' :ItemPersonIDTo  OR ReciptItems.PersonID1 IS NULL  )'
      ''
      '        AND (Recipts.ReciptDate BETWEEN :DateFrom AND :DateTo )'
      ''
      '   AND(Recipts.YearID BETWEEN :YearIDFrom AND :YearIDTo)'
      ''
      
        'AND(LookUps.Code BETWEEN :SecondTypeItemFrom AND :SecondTypeItem' +
        'To  OR ReciptItems.SecondTypeItem  IS NULL  )'
      ''
      ' AND (Recipts.ReciptType IN ( :ReciptType21 ))'
      
        ' ) DERIVEDTBL WHERE (StoreID = :StoreID20 ) ORDER BY StuffSize,S' +
        'tuffCode '
      ''
      '')
    Left = 241
    Top = 345
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcSpecialRecall
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 704
    Top = 344
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'StuffCode'
      FieldName = 'StuffCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'ControlCode'
      FieldName = 'ControlCode'
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
      FieldAlias = 'ReciptItemID'
      FieldName = 'ReciptItemID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'c_StoreName'
      FieldName = 'c_StoreName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'c_StuffName'
      FieldName = 'c_StuffName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'UnitName'
      FieldName = 'UnitName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'StuffAlloy'
      FieldName = 'StuffAlloy'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'StuffGrade'
      FieldName = 'StuffGrade'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'Entity'
      FieldName = 'Entity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'Weight'
      FieldName = 'Weight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'UnitSellPrice'
      FieldName = 'UnitSellPrice'
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
      FieldAlias = 'Auxiliary'
      FieldName = 'Auxiliary'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = #1602#1591#1593
      FieldName = #1602#1591#1593
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField24: TppField
      FieldAlias = #1605#1572#1604#1601
      FieldName = #1605#1572#1604#1601
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField25: TppField
      FieldAlias = #1605#1578#1585#1580#1605
      FieldName = #1605#1578#1585#1580#1605
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField26: TppField
      FieldAlias = #1606#1608#1610#1587#1606#1583#1607
      FieldName = #1606#1608#1610#1587#1606#1583#1607
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField27: TppField
      FieldAlias = #1580#1604#1583
      FieldName = #1580#1604#1583
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField28: TppField
      FieldAlias = #1662#1582#1588
      FieldName = #1662#1582#1588
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField29: TppField
      FieldAlias = #1605#1608#1590#1608#1593
      FieldName = #1605#1608#1590#1608#1593
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField30: TppField
      FieldAlias = #1591#1576#1602#1607
      FieldName = #1591#1576#1602#1607
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField31: TppField
      FieldAlias = 'CountNo'
      FieldName = 'CountNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField32: TppField
      FieldAlias = 'WeightOnEntity'
      FieldName = 'WeightOnEntity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField33: TppField
      FieldAlias = 'Portage'
      FieldName = 'Portage'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField34: TppField
      FieldAlias = 'Article'
      FieldName = 'Article'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField35: TppField
      FieldAlias = 'Wage'
      FieldName = 'Wage'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField36: TppField
      FieldAlias = 'Scoria'
      FieldName = 'Scoria'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField37: TppField
      FieldAlias = 'UseUnitID'
      FieldName = 'UseUnitID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField38: TppField
      FieldAlias = 'UseUnitName'
      FieldName = 'UseUnitName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField39: TppField
      FieldAlias = 'AidNumber'
      FieldName = 'AidNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField40: TppField
      FieldAlias = 'AidDate'
      FieldName = 'AidDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField41: TppField
      FieldAlias = 'SecondTypeItem'
      FieldName = 'SecondTypeItem'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField42: TppField
      FieldAlias = 'YearID'
      FieldName = 'YearID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField43: TppField
      FieldAlias = '_Checked'
      FieldName = '_Checked'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField44: TppField
      FieldAlias = '__EntityEdit'
      FieldName = '__EntityEdit'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField45: TppField
      FieldAlias = 'WaterCo'
      FieldName = 'WaterCo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField46: TppField
      FieldAlias = 'DeficitValue'
      FieldName = 'DeficitValue'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField47: TppField
      FieldAlias = 'TaxCo'
      FieldName = 'TaxCo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField48: TppField
      FieldAlias = 'TaxValue'
      FieldName = 'TaxValue'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
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
    Left = 592
    Top = 344
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
  object qryMaster: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterScroll = qryMasterAfterScroll
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'ReciptType'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'AidDate'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'RecallKind1Str'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ReciptTypeCur'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'JoinReplace'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'RecallKind2Str'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'StuffCodeFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'StuffCodeTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'StoreIDFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'StoreIDTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ControlcodeFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ControlcodeTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'DiameterFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'DiameterTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'RcpNumberFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'RcpNumberTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ItemPersonIDFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ItemPersonIDTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'DateFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'DateTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearIDFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearIDTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'SecondTypeItemFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'SecondTypeItemTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'SecondTypeFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'SecondTypeTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'UseUnitIDFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'UseUnitIDTo'
        DataType = ftWideString
        Size = 6
        Value = '999999'
      end
      item
        Name = 'UseUnitIDReciptFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'UseUnitIDReciptTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PersonID2From'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PersonID2To'
        DataType = ftWideString
        Size = 9
        Value = '999999999'
      end
      item
        Name = 'PersonID3From'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PersonID3To'
        DataType = ftWideString
        Size = 9
        Value = '999999999'
      end
      item
        Name = 'PersonID4From'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PersonID4To'
        DataType = ftWideString
        Size = 9
        Value = '999999999'
      end
      item
        Name = 'SellsEmporiumFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'SellsEmporiumTo'
        DataType = ftWideString
        Size = 9
        Value = '999999999'
      end
      item
        Name = 'AidNumberFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'AidNumberTo'
        DataType = ftWideString
        Size = 9
        Value = '999999999'
      end>
    SQL.Strings = (
      
        'SELECT distinct   Recipts.YearID,Recipts.ServerID,Recipts.Recipt' +
        'ID,Recipts.ReciptNumber, Recipts.ReciptDate, '
      
        '                             ReciptTypes.ReciptCaption, Recipts.' +
        'PersonID1, Customers.CustName,  Recipts.StoreID, Stores.c_StoreN' +
        'ame'
      
        ', Recipts.PersonID2, Recipts.PersonID3 ,Recipts.MasirID,Recipts.' +
        'ReciptNote, Customers2.CustName AS CustName2'
      
        ', Customers3.CustName AS CustName3,Recipts.PersonID4 , Customers' +
        '4.CustName AS CustName4'
      ',Recipts.DefaultDate ,Recipts.DefaultDuration'
      ''
      ''
      ''
      'FROM            ReciptItems INNER JOIN'
      
        '                         Recipts ON ReciptItems.ReciptID = Recip' +
        'ts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND Reci' +
        'ptItems.YearID = Recipts.YearID INNER JOIN'
      
        '                         ReciptTypes ON Recipts.ReciptType = Rec' +
        'iptTypes.ReciptType LEFT OUTER JOIN'
      
        '                             (SELECT        ReciptItems_1.StuffC' +
        'ode, ReciptItems_1.StuffSize, ReciptItems_1.StuffDiameter, Recip' +
        'tItems_1.StuffAlloy, COUNT(*) AS CountNo'
      
        '                                FROM            Recipts AS Recip' +
        'ts_1 INNER JOIN'
      
        '                                                         ReciptI' +
        'tems AS ReciptItems_1 ON Recipts_1.ReciptID = ReciptItems_1.Reci' +
        'ptID AND Recipts_1.ServerID = ReciptItems_1.ServerID AND Recipts' +
        '_1.YearID = ReciptItems_1.YearID'
      
        '                                WHERE        (Recipts_1.ReciptTy' +
        'pe = :ReciptType ) AND (Recipts_1.AidDate >= :AidDate) AND (Reci' +
        'pts_1.ReciptState < 3)'
      
        '                                GROUP BY ReciptItems_1.StuffCode' +
        ', ReciptItems_1.StuffSize, ReciptItems_1.StuffDiameter, ReciptIt' +
        'ems_1.StuffAlloy) AS derivedtbl_1 ON ReciptItems.StuffCode = der' +
        'ivedtbl_1.StuffCode AND '
      
        '                         ReciptItems.StuffSize = derivedtbl_1.St' +
        'uffSize AND ReciptItems.StuffDiameter = derivedtbl_1.StuffDiamet' +
        'er AND ReciptItems.StuffAlloy = derivedtbl_1.StuffAlloy LEFT OUT' +
        'ER JOIN'
      
        '                         dbo.AidRecallSpecial(  :RecallKind1Str ' +
        ') AS AidRecallSpecial ON'
      '--------------------'
      'ReciptItems.StuffCode = AidRecallSpecial.StuffCode AND'
      '---------------------'
      ''
      
        '                         ReciptItems.ReciptItemID = AidRecallSpe' +
        'cial.preReciptItemID AND ReciptItems.YearID = AidRecallSpecial.Y' +
        'earID'
      
        '                          AND AidRecallSpecial.ReciptType = :Rec' +
        'iptTypeCur  LEFT OUTER JOIN'
      
        '                         LookUps ON ReciptItems.SecondTypeItem =' +
        ' LookUps.LookUpID LEFT OUTER JOIN'
      
        '                      Stores ON Recipts.StoreID = Stores.n_Store' +
        'ID LEFT OUTER JOIN'
      
        '                      Customers ON Recipts.PersonID1 = Customers' +
        '.CustID  LEFT OUTER JOIN'
      
        '                      Customers AS Customers2 ON Recipts.PersonI' +
        'D2 = Customers2.CustID LEFT OUTER JOIN'
      
        '                      Customers AS Customers3 ON Recipts.PersonI' +
        'D3 = Customers3.CustID LEFT OUTER JOIN'
      
        '                      Customers AS Customers4 ON Recipts.PersonI' +
        'D4 = Customers4.CustID'
      ''
      
        ' LEFT OUTER JOIN LookUps LookUps_M ON Recipts.SecondType = LookU' +
        'ps_M.LookUpID'
      ''
      '  :JoinReplace'
      ''
      'WHERE     (ReciptTypes.EffectType IN (  :RecallKind2Str ))'
      
        'AND (ReciptItems.InputEntity + ReciptItems.OutputEntity - ISNULL' +
        '(AidRecallSpecial.Entity, 0)'
      '                      NOT BETWEEN - 0.0001 AND 0.0001 OR'
      
        '                      ReciptItems.InputWeight + ReciptItems.Outp' +
        'utWeight - ISNULL(AidRecallSpecial.Weight, 0) NOT BETWEEN - 0.00' +
        '01 AND 0.0001)'
      '----------------------'
      
        'AND (ReciptItems.InputEntity + ReciptItems.OutputEntity - ISNULL' +
        '(AidRecallSpecial.Entity, 0) > 0 OR'
      
        '     ReciptItems.InputWeight + ReciptItems.OutputWeight - ISNULL' +
        '(AidRecallSpecial.Weight, 0) > 0)'
      '----------------------'
      ''
      
        '        AND (ReciptItems.StuffCode BETWEEN :StuffCodeFrom AND :S' +
        'tuffCodeTo)'
      
        '        AND (Recipts.StoreID BETWEEN :StoreIDFrom AND :StoreIDTo' +
        ')'
      
        '        AND (ReciptItems.ControlCode BETWEEN :ControlcodeFrom AN' +
        'D :ControlcodeTo)'
      
        '        AND (ReciptItems.StuffDiameter BETWEEN :DiameterFrom AND' +
        ' :DiameterTo)'
      
        '        AND (Recipts.ReciptNumber BETWEEN :RcpNumberFrom AND :Rc' +
        'pNumberTo)'
      
        '        AND (ReciptItems.PersonID1 BETWEEN :ItemPersonIDFrom AND' +
        ' :ItemPersonIDTo  OR ReciptItems.PersonID1 IS NULL  )'
      ''
      '        AND (Recipts.ReciptDate BETWEEN :DateFrom AND :DateTo )'
      ''
      '   AND(Recipts.YearID BETWEEN :YearIDFrom AND :YearIDTo)'
      ''
      
        'AND(LookUps.Code BETWEEN :SecondTypeItemFrom AND :SecondTypeItem' +
        'To  OR ReciptItems.SecondTypeItem  IS NULL  )'
      
        'AND(LookUps_M.Code BETWEEN :SecondTypeFrom AND :SecondTypeTo  OR' +
        ' Recipts.SecondType  IS NULL  )'
      ''
      
        'AND (ReciptItems.UseUnitID BETWEEN :UseUnitIDFrom       AND :Use' +
        'UnitIDTo        OR ISNULL(ReciptItems.UseUnitID,0)=0   )'
      
        'AND (Recipts.UseUnitID     BETWEEN :UseUnitIDReciptFrom AND :Use' +
        'UnitIDReciptTo  OR ISNULL(Recipts.UseUnitID,0)=0   )'
      ''
      ''
      
        'AND (Recipts.PersonID2 BETWEEN :PersonID2From AND :PersonID2To  ' +
        ')'
      
        'AND (Recipts.PersonID3 BETWEEN :PersonID3From AND :PersonID3To  ' +
        ')'
      
        'AND (Recipts.PersonID4 BETWEEN :PersonID4From AND :PersonID4To  ' +
        ')'
      
        'AND (Recipts.SellsEmporium BETWEEN :SellsEmporiumFrom AND :Sells' +
        'EmporiumTo)'
      
        'AND ((Recipts.AidNumber = '#39#39')or(ISNULL(Recipts.AidNumber,0) BETW' +
        'EEN :AidNumberFrom AND :AidNumberTo))'
      '')
    Left = 409
    Top = 185
    object qryMasterReciptNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'ReciptNumber'
    end
    object qryMasterReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1740#1582' '#1601#1585#1605
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryMasterPersonID1: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583
      FieldName = 'PersonID1'
    end
    object qryMasterCustName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605
      FieldName = 'CustName'
      Size = 120
    end
    object qryMasterPersonID2: TIntegerField
      DisplayLabel = #1705#1583'2'
      FieldName = 'PersonID2'
    end
    object qryMasterCustName2: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605'2'
      FieldName = 'CustName2'
      Size = 120
    end
    object qryMasterPersonID3: TIntegerField
      DisplayLabel = #1705#1583'3'
      FieldName = 'PersonID3'
    end
    object qryMasterCustName3: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605'3'
      FieldName = 'CustName3'
      Size = 120
    end
    object qryMasterPersonID4: TIntegerField
      DisplayLabel = #1705#1583'4'
      FieldName = 'PersonID4'
    end
    object qryMasterCustName4: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605'4'
      FieldName = 'CustName4'
      Size = 120
    end
    object qryMasterStoreID: TSmallintField
      Tag = 3
      DisplayLabel = #1705#1583' '#1575#1606#1576#1575#1585
      FieldName = 'StoreID'
    end
    object qryMasterc_StoreName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1575#1606#1576#1575#1585
      FieldName = 'c_StoreName'
      Size = 70
    end
    object qryMasterReciptCaption: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1601#1585#1605
      FieldName = 'ReciptCaption'
      Size = 70
    end
    object qryMasterMasirID: TIntegerField
      FieldName = 'MasirID'
    end
    object qryMasterReciptNote: TStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' '#1601#1585#1605
      FieldName = 'ReciptNote'
      Size = 1500
    end
    object qryMasterReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryMasterYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryMasterServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryMasterDefaultDuration: TSmallintField
      DisplayLabel = #1605#1583#1578
      FieldName = 'DefaultDuration'
    end
    object qryMasterDefaultDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1580#1575#1606#1576#1610
      FieldName = 'DefaultDate'
      FixedChar = True
      Size = 10
    end
  end
  object srcMaster: TDataSource
    DataSet = qryMaster
    Left = 544
    Top = 168
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
        'sirID, DeliveryID, PersonID3, PersonID4, TozinID,DefaultDuration' +
        ',DefaultDate'
      'FROM            Recipts'
      'WHERE        (ReciptID = :ReciptID ) AND (ServerID = :ServerID )'
      ' AND (YearID = :YearID )')
    Left = 216
    Top = 178
  end
end

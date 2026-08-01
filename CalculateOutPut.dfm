inherited CalculateOutPutF: TCalculateOutPutF
  Left = 377
  Top = 222
  Caption = #1602#1740#1605#1578' '#1711#1584#1575#1585#1740' '#1581#1608#1575#1604#1607' '#1607#1575#1740' '#1575#1606#1576#1575#1585' '
  ClientHeight = 656
  ClientWidth = 945
  OnResize = FormResize
  ExplicitTop = -184
  ExplicitWidth = 953
  ExplicitHeight = 687
  DesignSize = (
    945
    656)
  PixelsPerInch = 96
  TextHeight = 13
  object pnlLblLimitPlace: TPanel [0]
    Left = 0
    Top = 53
    Width = 945
    Height = 17
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object LblShowLimitPlace1: TLabel
      Left = 851
      Top = 0
      Width = 94
      Height = 17
      Align = alRight
      Caption = 'LblShow LimitPlace1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      ExplicitHeight = 13
    end
  end
  object CedarDbgrid2: TCedarDbgrid [1]
    Left = 24
    Top = 273
    Width = 744
    Height = 290
    Anchors = [akLeft, akRight, akBottom]
    DataSource = DataSource2
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
    IndicatorTitle.ShowDropDownSign = True
    IndicatorTitle.TitleButton = True
    OddRowColor = clWhite
    RowHeight = 18
    SearchPanel.Enabled = True
    SortLocal = True
    TabOrder = 6
    Visible = False
    OnDblClick = CedarDbgrid2DblClick
    ActiveSearchPanel = False
    SelectFooterIndex = 0
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object CedarDbgrid1: TCedarDbgrid [2]
    Left = 24
    Top = 20
    Width = 876
    Height = 297
    Anchors = [akLeft, akTop, akRight]
    DataSource = DataSource1
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
    IndicatorTitle.ShowDropDownSign = True
    IndicatorTitle.TitleButton = True
    OddRowColor = clWhite
    RowHeight = 18
    SearchPanel.Enabled = True
    SortLocal = True
    TabOrder = 4
    Visible = False
    ActiveSearchPanel = False
    SelectFooterIndex = 0
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  inherited PnlUnderButton: TPanel
    Top = 615
    Width = 945
    BevelOuter = bvNone
    ExplicitTop = 615
    ExplicitWidth = 945
    inherited BtnReject: TBitBtn
      Left = 3
      Top = 6
      Height = 29
      ExplicitLeft = 3
      ExplicitTop = 6
      ExplicitHeight = 29
    end
    object btnFilter: TBitBtn
      AlignWithMargins = True
      Left = 867
      Top = 6
      Width = 75
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 1
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 246
      Top = 6
      Width = 75
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actsendtoexel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 165
      Top = 6
      Width = 75
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSearch_
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 3
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 84
      Top = 6
      Width = 75
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 4
    end
    object btnAllCalculate: TBitBtn
      AlignWithMargins = True
      Left = 786
      Top = 6
      Width = 75
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alRight
      Caption = #1605#1581#1575#1587#1576#1607' '#1602#1610#1605#1578
      TabOrder = 5
      OnClick = btnAllCalculateClick
    end
    object btnAllCalculatLoop: TBitBtn
      AlignWithMargins = True
      Left = 617
      Top = 6
      Width = 163
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alRight
      Caption = #1605#1581#1575#1587#1576#1607' '#1602#1610#1605#1578'('#1580#1575#1576#1580#1575#1610#1610' '#1576#1610#1606' '#1575#1606#1576#1575#1585')'
      TabOrder = 6
      OnClick = btnAllCalculatLoopClick
    end
    object btnCardex: TBitBtn
      AlignWithMargins = True
      Left = 327
      Top = 6
      Width = 75
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actCardex
      Align = alLeft
      Caption = #1603#1575#1585#1583#1603#1587
      TabOrder = 7
      ExplicitTop = 9
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 536
      Top = 6
      Width = 75
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alRight
      Caption = #1587#1575#1740#1585'...'
      TabOrder = 8
      OnClick = BitBtn4Click
    end
    object chkFiFo: TCheckBox
      Left = 468
      Top = 0
      Width = 65
      Height = 41
      Align = alRight
      Caption = 'New FiFo'
      TabOrder = 9
    end
  end
  inherited Panel3: TPanel [4]
    Top = 70
    Width = 945
    Height = 526
    BevelInner = bvNone
    BevelOuter = bvNone
    ExplicitTop = 70
    ExplicitWidth = 945
    ExplicitHeight = 526
    object Splitter2: TSplitter
      Left = 0
      Top = 279
      Width = 945
      Height = 3
      Cursor = crVSplit
      Align = alTop
      ExplicitLeft = 2
      ExplicitTop = 15
      ExplicitWidth = 95
    end
    object DBGrid1: TDBGrid
      Left = 533
      Top = 282
      Width = 107
      Height = 75
      Align = alClient
      Color = clCream
      DataSource = srckol
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Visible = False
    end
    object ProgressBar1: TProgressBar
      Left = 0
      Top = 509
      Width = 945
      Height = 17
      Align = alBottom
      Min = 1
      Position = 1
      Step = 1
      TabOrder = 2
    end
    object pnlReciptsRegulates: TPanel
      Left = 0
      Top = 0
      Width = 945
      Height = 167
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object lbl1: TLabel
        Left = 0
        Top = 0
        Width = 945
        Height = 39
        Align = alTop
        AutoSize = False
        Caption = 
          #1576#1585#1585#1608#1610' '#1601#1585#1605#1607#1575#1610' '#1586#1610#1585' '#1587#1606#1583' '#1581#1587#1575#1576#1583#1575#1585#1610' '#1589#1575#1583#1585' '#1588#1583#1607' '#1575#1587#1578#1548' '#1583#1585' '#1589#1608#1585#1578' '#1602#1610#1605#1578' '#1711#1584#1575#1585#1610' '#1608 +
          ' '#1578#1594#1610#1610#1585' '#1583#1585' '#1605#1576#1575#1604#1594' '#1607#1585' '#1610#1603' '#1575#1586' '#1570#1606#1607#1575#1548#1576#1585#1575#1610' '#1570#1606#1607#1575' '#1576#1578#1575#1585#1610#1582' "'#1578#1575#1585#1740#1582' '#1601#1585#1605' '#1605#1585#1576#1608#1591'"' +
          '  '#1740#1575'  "'#1578#1575#1585#1610#1582' '#1579#1576#1578' '#1578#1593#1583#1610#1604#1575#1578'" '#1578#1593#1583#1610#1604#1575#1578' '#1579#1576#1578' '#1582#1608#1575#1607#1583' '#1588#1583'.'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        WordWrap = True
        ExplicitWidth = 953
      end
      object grd1: TDBGrid
        Left = 0
        Top = 79
        Width = 945
        Height = 88
        Align = alClient
        Color = clCream
        DataSource = SrcCalcControls
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'StoreID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ReciptNumber'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ReciptDate'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ReciptCaption'
            Width = 210
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DocNo'
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DocDate'
            Width = 109
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 39
        Width = 945
        Height = 40
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object lblDate: TLabel
          AlignWithMargins = True
          Left = 86
          Top = 12
          Width = 87
          Height = 25
          Margins.Top = 12
          Align = alLeft
          Alignment = taRightJustify
          Caption = '"'#1578#1575#1585#1610#1582' '#1579#1576#1578' '#1578#1593#1583#1610#1604#1575#1578'"'
          ExplicitHeight = 13
        end
        object RadioGroup1: TRadioGroup
          AlignWithMargins = True
          Left = 179
          Top = 3
          Width = 763
          Height = 34
          Align = alClient
          Caption = '  '#1578#1575#1585#1610#1582' '#1579#1576#1578' '#1578#1593#1583#1610#1604#1575#1578'  '
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            #1578#1575#1585#1740#1582' '#1601#1585#1605' '#1605#1585#1576#1608#1591
            #1578#1575#1585#1740#1582' '#1579#1575#1576#1578)
          TabOrder = 0
          OnClick = RadioGroup1Click
        end
        object medtDate: TMaskEdit
          AlignWithMargins = True
          Left = 3
          Top = 8
          Width = 77
          Height = 24
          Margins.Top = 8
          Margins.Bottom = 8
          Align = alLeft
          Color = 13431799
          Enabled = False
          EditMask = '9999/99/99;1;_'
          MaxLength = 10
          TabOrder = 1
          Text = '    /  /  '
          ExplicitHeight = 21
        end
      end
    end
    object grpCheck: TGroupBox
      Left = 0
      Top = 357
      Width = 945
      Height = 152
      Align = alBottom
      Caption = ' '#1575#1591#1604#1575#1593#1575#1578' '#1602#1575#1576#1604' '#1576#1585#1585#1587#1610
      TabOrder = 4
      Visible = False
      object dbgrdCheck: TDBGrid
        Left = 2
        Top = 15
        Width = 941
        Height = 115
        Align = alClient
        DataSource = SrcCheck
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'StuffCode'
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'c_StuffName'
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'InPrice'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OutPrice'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Price'
            Visible = True
          end>
      end
      object SumGrid1: TSumGrid
        Top = 130
        Width = 941
        Hint = #1575#1582#1578#1604#1575#1601
        Active = False
        Enable_Controls = True
        MasterGrid = dbgrdCheck
        FieldsName = 'InPrice;OutPrice;Price;'
      end
    end
    object pnlMemo: TPanel
      Left = 0
      Top = 282
      Width = 533
      Height = 75
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 5
      Visible = False
      object Label2: TLabel
        Left = 0
        Top = 0
        Width = 533
        Height = 13
        Align = alTop
        Caption = #1604#1610#1587#1578' '#1603#1575#1604#1575#1607#1610' '#1601#1575#1602#1583' '#1602#1610#1605#1578' '#1583#1585' '#1585#1587#1610#1583' '#1602#1610#1605#1578' '#1606#1583#1575#1585#1606#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
        WordWrap = True
        ExplicitLeft = 319
        ExplicitWidth = 214
      end
      object mem1: TMemo
        Tag = 111
        Left = 0
        Top = 13
        Width = 533
        Height = 62
        Align = alClient
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object grpCheckCalc: TGroupBox
      Left = 0
      Top = 167
      Width = 945
      Height = 112
      Align = alTop
      Caption = #1575#1591#1604#1575#1593#1575#1578' '#1705#1575#1604#1575#1607#1575#1740' '#1602#1575#1576#1604' '#1576#1585#1585#1587#1740
      TabOrder = 6
      Visible = False
      object Splitter1: TSplitter
        Left = 2
        Top = 15
        Width = 941
        Height = 3
        Cursor = crVSplit
        Align = alTop
        ExplicitLeft = 1
        ExplicitTop = 109
        ExplicitWidth = 779
      end
      object DBGrid3: TDBGrid
        Left = 2
        Top = 18
        Width = 941
        Height = 92
        Align = alClient
        Color = clCream
        DataSource = srcCheckCalc
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'StoreID'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'reciptcaption'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ReciptNumber'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ReciptDate'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'StuffCode'
            Width = 34
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'StuffSize'
            Width = 27
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'StuffDiameter'
            Width = 37
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'StuffAlloy'
            Width = 19
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'outputentity'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OutputWeight'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ControlCode'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TotalOutputPrice'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UnitSellPrice'
            Width = 37
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Outreciptcaption'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OutReciptNumber'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OutReciptDate'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OutUnitSellPrice'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'InUnitSellPrice'
            Width = 60
            Visible = True
          end>
      end
    end
    object GroupBox1: TGroupBox
      Left = 640
      Top = 282
      Width = 305
      Height = 75
      Align = alRight
      Caption = '  '#1601#1585#1605' '#1607#1575#1740#1740' '#1705#1607' '#1602#1740#1605#1578' '#1711#1584#1575#1585#1740' '#1605#1740' '#1588#1608#1606#1583' '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      object grdWarningType: TDBGrid
        Left = 2
        Top = 15
        Width = 301
        Height = 58
        Align = alClient
        Color = clCream
        DataSource = srcWarningType
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clGreen
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ReciptType'
            Width = 33
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ReciptCaption'
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EffectType'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SellEffect'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BuyEffect'
            Width = 40
            Visible = True
          end>
      end
    end
    object DBGrid2: TCedarDbgrid
      AlignWithMargins = True
      Left = 536
      Top = 285
      Width = 101
      Height = 69
      Align = alClient
      Color = clCream
      Ctl3D = False
      DataSource = SrcStores
      DynProps = <>
      Flat = True
      FooterParams.FillStyle = cfstSolidEh
      FooterParams.Font.Charset = DEFAULT_CHARSET
      FooterParams.Font.Color = clWindowText
      FooterParams.Font.Height = -12
      FooterParams.Font.Name = 'Segoe UI'
      FooterParams.Font.Style = [fsBold]
      FooterParams.ParentFont = False
      FooterParams.VertLines = False
      GridLineParams.VertEmptySpaceStyle = dessNonEh
      HorzScrollBar.ExtraPanel.Visible = True
      IndicatorTitle.ShowDropDownSign = True
      IndicatorTitle.TitleButton = True
      OddRowColor = clWhite
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      RowHeight = 18
      SearchPanel.Enabled = True
      SortLocal = True
      TabOrder = 1
      OnExit = DBGrid2Exit
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'n_StoreID'
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
          FieldName = 'n_ValuationType'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CalculateOutPutFields'
          Footers = <>
          Width = 64
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object StatusBar1: TStatusBar [5]
    Left = 0
    Top = 596
    Width = 945
    Height = 19
    Panels = <
      item
        Text = '0'
        Width = 200
      end
      item
        Text = '1'
        Width = 200
      end>
  end
  inherited Panel2: TPanel [6]
    Width = 945
    BevelOuter = bvNone
    ExplicitWidth = 945
    DesignSize = (
      945
      53)
    inherited ImgTemplate: TImage
      Left = 910
      ExplicitLeft = 748
    end
    inherited lblCaption: TLabel
      Left = 838
      Top = 15
      Height = 35
      ExplicitLeft = 838
      ExplicitTop = 15
    end
    inherited lblBaseDate: TLabel
      Left = 431
      ExplicitLeft = 366
    end
    object Label1: TLabel
      Left = 755
      Top = 32
      Width = 3
      Height = 13
    end
  end
  inherited ActionList: TActionList
    Left = 248
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662' (F7)'
      ShortCut = 118
      Visible = False
    end
    object actsendtoexel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actsendtoexelExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actCalcVijeh2: TAction
      Caption = #1605#1581#1575#1587#1576#1607' '#1602#1610#1605#1578' '#1588#1606#1575#1587#1575#1610#1610' '#1608#1610#1688#1607' 2'
      OnExecute = actCalcVijeh2Execute
    end
    object actCalcVijeh: TAction
      Caption = #1605#1581#1575#1587#1576#1607' '#1602#1610#1605#1578' '#1588#1606#1575#1587#1575#1610#1610' '#1608#1610#1688#1607' '
      OnExecute = actCalcVijehExecute
    end
    object actAllCalculate: TAction
      Caption = #1605#1581#1575#1587#1576#1607' '#1602#1610#1605#1578
      OnExecute = actAllCalculateExecute
    end
    object actCalcAverage: TAction
      Caption = 'actCalcAverage'
    end
    object actCalcFiFo: TAction
      Caption = 'actCalcFiFo'
      OnExecute = actCalcFiFoExecute
    end
    object actCardex: TAction
      Caption = #1603#1575#1585#1583#1603#1587
      OnExecute = actCardexExecute
    end
    object actAnalysisWeight: TAction
      Caption = #1602#1740#1605#1578' '#1711#1584#1575#1585#1740' '#1601#1585#1605#1607#1575#1740' '#1578#1580#1586#1610#1607'/'#1578#1608#1604#1610#1583'-'#1588#1606#1575#1587#1575#1610#1610' '#1608#1610#1688#1607'('#1608#1586#1606')'
      OnExecute = actAnalysisWeightExecute
    end
    object actAnalysisAvrage: TAction
      Caption = #1602#1740#1605#1578' '#1711#1584#1575#1585#1740' '#1601#1585#1605#1607#1575#1740' '#1578#1580#1586#1610#1607'/'#1578#1608#1604#1610#1583'-'#1605#1740#1575#1606#1711#1740#1606
      OnExecute = actAnalysisAvrageExecute
    end
    object actAnalysisEntity: TAction
      Caption = #1602#1740#1605#1578' '#1711#1584#1575#1585#1740' '#1601#1585#1605#1607#1575#1740' '#1578#1580#1586#1610#1607'/'#1578#1608#1604#1610#1583'-'#1588#1606#1575#1587#1575#1610#1610' '#1608#1610#1688#1607'('#1605#1602#1583#1575#1585')'
      OnExecute = actAnalysisEntityExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 192
    Top = 9
  end
  object SrcCalSpecialOutPut: TDataSource
    DataSet = qryCalSpecialOutPut
    Left = 592
    Top = 168
  end
  object qryCalSpecialOutPut: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterOpen = qryCalSpecialOutPutAfterOpen
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'StuffCodeFrom'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end
      item
        Name = 'StuffCodeTo'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end
      item
        Name = 'DateFrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'DateTo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'StoreID'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
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
      
        'SELECT ReciptItems.ReciptItemID, ReciptItems.StuffCode, StuffCod' +
        'ing.c_StuffName, ReciptTypes.ReciptCaption,'
      
        '       ReciptItems.StuffSize, ReciptItems.StuffDiameter, ReciptI' +
        'tems.StuffAlloy, ReciptItems.OutputEntity, ReciptItems.OutputWei' +
        'ght,'
      
        '       ReciptItems.TotalOutputPrice, ReciptItems.UnitSellPrice, ' +
        'ReciptItems.preReciptItemID, Recipts.ReciptNumber,'
      
        '       Recipts.ReciptDate,ReciptItems.ServerID,ReciptItems.YearI' +
        'D,ReciptItems.ReciptID'
      '       ,ReciptTypes.AutoPrice'
      'FROM   ReciptItems INNER JOIN'
      
        '       Recipts ON  ReciptItems.ReciptID = Recipts.ReciptID AND R' +
        'eciptItems.ServerID = Recipts.ServerID AND ReciptItems.YearID = ' +
        'Recipts.YearID INNER JOIN'
      
        '       ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptTyp' +
        'e INNER JOIN'
      
        '       StuffCoding ON ReciptItems.StuffCode = StuffCoding.c_Stuf' +
        'fCode'
      'WHERE (ReciptTypes.EffectType = 4)AND(ReciptTypes.SellEffect<>1)'
      
        '      AND (ReciptItems.StuffCode BETWEEN :StuffCodeFrom AND :Stu' +
        'ffCodeTo)'
      '      AND (Recipts.ReciptDate BETWEEN  :DateFrom AND :DateTo )'
      '      AND (Recipts.StoreID=:StoreID)'
      ' AND (Recipts.ReciptState < 3)'
      'AND( ReciptItems.YearID = :YearID  )'
      
        'ORDER BY  ReciptItems.preReciptItemID,Recipts.ReciptDate, Recipt' +
        's.ReciptNumber, ReciptItems.ReciptItemID')
    Left = 704
    Top = 168
    object qryCalSpecialOutPutStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qryCalSpecialOutPutc_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1603#1575#1604#1575
      DisplayWidth = 39
      FieldName = 'c_StuffName'
      Size = 70
    end
    object qryCalSpecialOutPutReciptItemID: TIntegerField
      FieldName = 'ReciptItemID'
    end
    object qryCalSpecialOutPutReciptCaption: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1575#1591#1604#1575#1593#1575#1578' '
      FieldName = 'ReciptCaption'
      Size = 70
    end
    object qryCalSpecialOutPutStuffSize: TStringField
      Tag = 3
      DisplayLabel = #1575#1576#1593#1575#1583
      FieldName = 'StuffSize'
      Size = 12
    end
    object qryCalSpecialOutPutStuffDiameter: TFloatField
      Tag = 3
      DisplayLabel = #1590#1582#1575#1605#1578' '
      FieldName = 'StuffDiameter'
    end
    object qryCalSpecialOutPutStuffAlloy: TStringField
      Tag = 3
      DisplayLabel = #1570#1604#1610#1575#1688
      FieldName = 'StuffAlloy'
      Size = 12
    end
    object qryCalSpecialOutPutOutputEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'OutputEntity'
    end
    object qryCalSpecialOutPutOutputWeight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606
      FieldName = 'OutputWeight'
    end
    object qryCalSpecialOutPutTotalOutputPrice: TBCDField
      Tag = 3
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607' '
      FieldName = 'TotalOutputPrice'
      currency = True
      Precision = 19
    end
    object qryCalSpecialOutPutUnitSellPrice: TFMTBCDField
      DisplayLabel = #1576#1607#1575#1569' '#1608#1575#1581#1583
      FieldName = 'UnitSellPrice'
      Precision = 19
    end
    object qryCalSpecialOutPutpreReciptItemID: TIntegerField
      FieldName = 'preReciptItemID'
    end
    object qryCalSpecialOutPutReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryCalSpecialOutPutReciptNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'ReciptNumber'
    end
    object qryCalSpecialOutPutReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1601#1585#1605' '
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryCalSpecialOutPutServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryCalSpecialOutPutYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryCalSpecialOutPutAutoPrice: TWordField
      FieldName = 'AutoPrice'
    end
  end
  object qrySpecialInputItems: TADOQuery
    Connection = DmF.adcBSell
    LockType = ltReadOnly
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'pryreciptItemId'
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
      
        'SELECT     ReciptItemID, InputEntity, InputWeight, TotalInputPri' +
        'ce, preReciptItemID'
      'FROM         dbo.ReciptItems'
      'WHERE     (ReciptItemID = :pryreciptItemId)'
      'AND( ReciptItems.YearID = :YearID  )'
      'ORDER BY ReciptItemID')
    Left = 368
    Top = 296
    object qrySpecialInputItemsReciptItemID: TIntegerField
      FieldName = 'ReciptItemID'
    end
    object qrySpecialInputItemsInputEntity: TFloatField
      FieldName = 'InputEntity'
    end
    object qrySpecialInputItemsInputWeight: TFloatField
      FieldName = 'InputWeight'
    end
    object qrySpecialInputItemsTotalInputPrice: TBCDField
      FieldName = 'TotalInputPrice'
      Precision = 19
    end
    object qrySpecialInputItemspreReciptItemID: TIntegerField
      FieldName = 'preReciptItemID'
    end
  end
  object qryStores: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'StoreIDFrom'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'StoreIDTo'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'Select * From Stores'
      'WHERE (n_StoreID BETWEEN :StoreIDFrom AND :StoreIDTo)'
      '   AND (StoreKind <> 3)'
      '   AND (n_ValuationType <> 7)'
      ''
      ''
      'Order by N_StoreId'
      ''
      ''
      '')
    Left = 511
    Top = 12
    object qryStoresn_StoreID: TSmallintField
      DisplayLabel = #1603#1583
      FieldName = 'n_StoreID'
    end
    object qryStoresc_StoreName: TStringField
      DisplayLabel = #1606#1575#1605' '#1575#1606#1576#1575#1585
      FieldName = 'c_StoreName'
      Required = True
      Size = 70
    end
    object qryStoresn_ValuationType: TSmallintField
      DisplayLabel = #1606#1581#1608#1607' '#1602#1610#1605#1578' '#1711#1584#1575#1585#1610
      FieldName = 'n_ValuationType'
      OnGetText = qryStoresn_ValuationTypeGetText
    end
    object qryStoresCalculateOutPutFields: TLargeintField
      DisplayLabel = #1602#1740#1605#1578' '#1711#1584#1575#1585#1740' '#1576#1585' '#1575#1587#1575#1587' '#1601#1740#1604#1583
      FieldName = 'CalculateOutPutFields'
      OnGetText = qryStoresCalculateOutPutFieldsGetText
    end
  end
  object SrcStores: TDataSource
    DataSet = qryStores
    Left = 320
    Top = 13
  end
  object qryKol: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    OnFetchComplete = qryKolFetchComplete
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'StuffcodeFrom'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = Null
      end
      item
        Name = 'StuffcodeTo'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = Null
      end
      item
        Name = 'StoreID'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
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
      'SELECT     ReciptItems.StuffCode'
      'FROM         StuffCoding INNER JOIN'
      '                      Recipts INNER JOIN'
      '                      ReciptItems ON '
      
        'Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = R' +
        'eciptItems.ServerID AND Recipts.YearID = ReciptItems.YearID '
      ''
      'ON StuffCoding.c_StuffCode = ReciptItems.StuffCode INNER JOIN'
      
        '                      ReciptTypes ON Recipts.ReciptType = Recipt' +
        'Types.ReciptType'
      
        'WHERE  (dbo.ReciptItems.StuffCode between :StuffcodeFrom  And :S' +
        'tuffcodeTo) AND'
      '       (dbo.Recipts.StoreID = :StoreID) AND'
      
        '       (dbo.ReciptTypes.EffectType = 4) AND(ReciptTypes.SellEffe' +
        'ct<>1) AND'
      '       (dbo.Recipts.ReciptState < 3)'
      'AND( Recipts.YearID = :YearID  )'
      'GROUP BY ReciptItems.StuffCode')
    Left = 272
    Top = 112
  end
  object qryOut: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'StoreID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'StuffCode'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 8
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
      
        'SELECT ReciptItemID,ReciptID, ReciptDate, StuffCode AS c_StuffCo' +
        'de, OutputEntity,'
      
        '       OutputWeight, ServerID,   YearID  , InputEntity, InputWei' +
        'ght,   TotalInputPrice, AutoPrice'
      '        ,DocNo ,ReciptState,TotalOutputPrice,SellEffect'
      'FROM         ReciptItems_Stock_Calc'
      ''
      'WHERE (StoreID = :StoreID) AND'
      '      (StuffCode = :StuffCode)  AND'
      
        '        ( (EffectType in( 4,7,8)) OR ( (EffectType in( 2,6)) AND' +
        ' (AutoPrice = 1)))AND'
      '    (SellEffect<>1) AND (ReciptState < 3)   AND'
      '    ( YearID = :YearID  )AND (BuyEffect <> 3 )'
      'ORDER BY ReciptDate, StuffCode, EffectType'
      ''
      '')
    Left = 184
    Top = 80
    object qryOutReciptItemID: TIntegerField
      FieldName = 'ReciptItemID'
    end
    object qryOutReciptDate: TStringField
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryOutc_StuffCode: TLargeintField
      FieldName = 'c_StuffCode'
    end
    object qryOutOutputEntity: TFloatField
      FieldName = 'OutputEntity'
    end
    object qryOutOutputWeight: TFloatField
      FieldName = 'OutputWeight'
    end
    object qryOutServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryOutYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryOutInputEntity: TFloatField
      FieldName = 'InputEntity'
    end
    object qryOutInputWeight: TFloatField
      FieldName = 'InputWeight'
    end
    object qryOutTotalInputPrice: TBCDField
      FieldName = 'TotalInputPrice'
      Precision = 19
    end
    object qryOutAutoPrice: TWordField
      FieldName = 'AutoPrice'
    end
    object qryOutReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryOutDocNo: TIntegerField
      FieldName = 'DocNo'
    end
    object qryOutReciptState: TWordField
      FieldName = 'ReciptState'
    end
    object qryOutTotalOutputPrice: TFloatField
      FieldName = 'TotalOutputPrice'
    end
    object qryOutSellEffect: TWordField
      FieldName = 'SellEffect'
    end
  end
  object qryIN: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 0
    Parameters = <>
    Left = 584
    Top = 13
    object qryINReciptDate: TStringField
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryINc_StuffCode: TLargeintField
      FieldName = 'c_StuffCode'
    end
    object qryINInputWeight: TFloatField
      FieldName = 'InputWeight'
    end
    object qryINTotalInputPrice: TBCDField
      FieldName = 'TotalInputPrice'
      Precision = 19
    end
    object qryINInputEntity: TFloatField
      FieldName = 'InputEntity'
    end
    object qryINAutoPrice: TWordField
      FieldName = 'AutoPrice'
    end
    object qryINReciptItemID: TIntegerField
      FieldName = 'ReciptItemID'
    end
    object qryINServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryINYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryINReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
  end
  object qryAverage: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'StoreID'
        Size = -1
        Value = Null
      end
      item
        Name = 'StoreID2'
        Size = -1
        Value = Null
      end
      item
        Name = 'StuffCodeFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'StuffCodeTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'DateFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'DateTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearID'
        Size = -1
        Value = Null
      end
      item
        Name = 'StoreIDOrder'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT   ReciptItems_Stock_Calc.UnionKind, ReciptItems_Stock_Cal' +
        'c.StoreID AS StoreID , ReciptItems_Stock_Calc.StoreID2 AS StoreI' +
        'D2 ,ReciptItems_Stock_Calc.ReciptType,'
      
        ' ReciptItems_Stock_Calc.StuffCode AS StuffCode, StuffCoding.c_St' +
        'uffName, ReciptItems_Stock_Calc.ReciptDate,'
      
        '          ReciptItems_Stock_Calc.ReciptNumber, ReciptItems_Stock' +
        '_Calc.ReciptItemID,ReciptItems_Stock_Calc.InputEntity,'
      
        '          ReciptItems_Stock_Calc.OutputEntity, ReciptItems_Stock' +
        '_Calc.TotalInputPrice, ReciptItems_Stock_Calc.TotalOutputPrice,'
      
        '          ReciptItems_Stock_Calc.EffectType , ReciptItems_Stock_' +
        'Calc.AutoPrice, ReciptItems_Stock_Calc.InputWeight,'
      
        '          ReciptItems_Stock_Calc.OutputWeight, ReciptItems_Stock' +
        '_Calc.TotallSellPrice, ReciptItems_Stock_Calc.ReciptCaption,'
      
        '          ReciptItems_Stock_Calc.StuffSize, ReciptItems_Stock_Ca' +
        'lc.StuffDiameter, ReciptItems_Stock_Calc.StuffAlloy ,'
      
        '          0 as ProductModel, 0 as UseUnitID , TotalInputPriceBas' +
        'e , TotalOutputPriceBase,DocNo, ServerID ,YearID,ReciptID'
      
        ',TotallSellPriceBase,ReciptState,DiagnosisCalcTotalPrice,Calcula' +
        'tedEntityOrWeight'
      'FROM         StuffCoding INNER JOIN'
      '                      ReciptItems_Stock_Calc ON '
      
        '                      StuffCoding.c_StuffCode = ReciptItems_Stoc' +
        'k_Calc.StuffCode '
      ''
      
        'WHERE     ((ReciptItems_Stock_Calc.EffectType = 2) OR  (ReciptIt' +
        'ems_Stock_Calc.EffectType = 4)) AND '
      '          (    ReciptItems_Stock_Calc.SellEffect<>1 or '
      
        #9#9#9'((ReciptItems_Stock_Calc.AutoPrice <>1) and  ReciptItems_Stoc' +
        'k_Calc.EffectType = 2 ))  AND'
      '          (dbo.ReciptItems_Stock_Calc.ReciptState < 3) AND'
      
        '          ((ReciptItems_Stock_Calc.StoreID = :StoreID ) or ((Rec' +
        'iptItems_Stock_Calc.ReciptType in (7))'
      
        '          and ( ReciptItems_Stock_Calc.StoreID2 = :StoreID2 ))) ' +
        'AND'
      
        '          (ReciptItems_Stock_Calc.StuffCode between :StuffCodeFr' +
        'om and :StuffCodeTo ) AND'
      
        '          (ReciptItems_Stock_Calc.ReciptDate between  :DateFrom ' +
        ' and  :DateTo )'
      'AND( ReciptItems_Stock_Calc.YearID = :YearID  )'
      'AND (ReciptItems_Stock_Calc.BuyEffect <> 3 ) '
      
        'ORDER BY  ReciptItems_Stock_Calc.StuffCode, ReciptItems_Stock_Ca' +
        'lc.ReciptDate,'
      
        ' case when  ReciptItems_Stock_Calc.StoreID = :StoreIDOrder then ' +
        '0 else 1 end ,'
      
        ' case when n_ValuationType=6 then  ReciptItems_Stock_Calc.Recipt' +
        'ID  else 0 end ,'
      '          ReciptItems_Stock_Calc.EffectType ,'
      '          ReciptItems_Stock_Calc.ReciptNumber,'
      ''
      '          ReciptItems_Stock_Calc.ReciptType,'
      '          ReciptItems_Stock_Calc.ControlCode,'
      ''
      '          ReciptItems_Stock_Calc.ReciptItemID')
    Left = 64
    Top = 301
  end
  object qryAverageModel: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'StoreID'
        Size = -1
        Value = Null
      end
      item
        Name = 'StoreID2'
        Size = -1
        Value = Null
      end
      item
        Name = 'StuffCodeFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'StuffCodeTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'DateFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'DateTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearID'
        Size = -1
        Value = Null
      end
      item
        Name = 'StoreIDOrder'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT    ReciptItems_Stock_Calc.UnionKind, ReciptItems_Stock_Ca' +
        'lc.StoreID, ReciptItems_Stock_Calc.StoreID2 AS StoreID2  , Recip' +
        'tItems_Stock_Calc.StuffCode, StuffCoding.c_StuffName, ReciptItem' +
        's_Stock_Calc.ReciptDate, ReciptItems_Stock_Calc.ReciptNumber, Re' +
        'ciptItems_Stock_Calc.ReciptItemID,'
      
        '                      ReciptItems_Stock_Calc.InputEntity, Recipt' +
        'Items_Stock_Calc.OutputEntity, ReciptItems_Stock_Calc.TotalInput' +
        'Price, ReciptItems_Stock_Calc.TotalOutputPrice, ReciptItems_Stoc' +
        'k_Calc.EffectType, '
      
        '                      ReciptItems_Stock_Calc.AutoPrice, ReciptIt' +
        'ems_Stock_Calc.InputWeight, ReciptItems_Stock_Calc.OutputWeight,' +
        ' ReciptItems_Stock_Calc.TotallSellPrice, ReciptItems_Stock_Calc.' +
        'ReciptCaption, '
      
        '                      ReciptItems_Stock_Calc.StuffSize, ReciptIt' +
        'ems_Stock_Calc.StuffDiameter, ReciptItems_Stock_Calc.StuffAlloy,' +
        ' ReciptItems_Stock_Calc.ProductModel, 0 as UseUnitID ,ReciptItem' +
        's_Stock_Calc.ReciptType ,'
      
        ' TotalInputPriceBase , TotalOutputPriceBase,DocNo, ServerID ,Yea' +
        'rID,ReciptID'
      
        ',TotallSellPriceBase,ReciptState,DiagnosisCalcTotalPrice,Calcula' +
        'tedEntityOrWeight'
      'FROM         StuffCoding INNER JOIN'
      '                      ReciptItems_Stock_Calc ON '
      
        '                      StuffCoding.c_StuffCode = ReciptItems_Stoc' +
        'k_Calc.StuffCode '
      ''
      
        'WHERE     ((ReciptItems_Stock_Calc.EffectType = 2) OR  (ReciptIt' +
        'ems_Stock_Calc.EffectType = 4)) AND'
      '(    ReciptItems_Stock_Calc.SellEffect<>1 or '
      
        #9#9#9'((ReciptItems_Stock_Calc.AutoPrice <>1) and  ReciptItems_Stoc' +
        'k_Calc.EffectType = 2 ))  AND'
      '          (dbo.ReciptItems_Stock_Calc.ReciptState < 3) AND'
      
        '          ((ReciptItems_Stock_Calc.StoreID = :StoreID ) or ((Rec' +
        'iptItems_Stock_Calc.ReciptType=7)'
      
        '          and ( ReciptItems_Stock_Calc.StoreID2 = :StoreID2 ))) ' +
        'AND'
      
        '          (ReciptItems_Stock_Calc.StuffCode between :StuffCodeFr' +
        'om and :StuffCodeTo ) AND'
      
        '          (ReciptItems_Stock_Calc.ReciptDate between  :DateFrom ' +
        ' and  :DateTo  )'
      'AND( ReciptItems_Stock_Calc.YearID = :YearID  )'
      'AND (ReciptItems_Stock_Calc.BuyEffect <> 3 ) '
      
        'ORDER BY  ReciptItems_Stock_Calc.StuffCode, ReciptItems_Stock_Ca' +
        'lc.ProductModel, ReciptItems_Stock_Calc.ReciptDate, ReciptItems_' +
        'Stock_Calc.EffectType,'
      
        'case when  ReciptItems_Stock_Calc.StoreID = :StoreIDOrder then 0' +
        ' else 1 end ,'
      
        '                      ReciptItems_Stock_Calc.ReciptNumber, Recip' +
        'tItems_Stock_Calc.ReciptItemID')
    Left = 80
    Top = 357
  end
  object qryAverageModelUseUnits: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'StoreID'
        Size = -1
        Value = Null
      end
      item
        Name = 'StoreID2'
        Size = -1
        Value = Null
      end
      item
        Name = 'StuffCodeFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'StuffCodeTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'DateFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'DateTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearID'
        Size = -1
        Value = Null
      end
      item
        Name = 'StoreIDOrder'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT    ReciptItems_Stock_Calc.UnionKind, ReciptItems_Stock_Ca' +
        'lc.StoreID, ReciptItems_Stock_Calc.StoreID2 AS StoreID2  , Recip' +
        'tItems_Stock_Calc.StuffCode, StuffCoding.c_StuffName, ReciptItem' +
        's_Stock_Calc.ReciptDate, ReciptItems_Stock_Calc.ReciptNumber, Re' +
        'ciptItems_Stock_Calc.ReciptItemID, '
      
        '                      ReciptItems_Stock_Calc.InputEntity, Recipt' +
        'Items_Stock_Calc.OutputEntity, ReciptItems_Stock_Calc.TotalInput' +
        'Price, ReciptItems_Stock_Calc.TotalOutputPrice, ReciptItems_Stoc' +
        'k_Calc.EffectType, '
      
        '                      ReciptItems_Stock_Calc.AutoPrice, ReciptIt' +
        'ems_Stock_Calc.InputWeight, ReciptItems_Stock_Calc.OutputWeight,' +
        ' ReciptItems_Stock_Calc.TotallSellPrice, ReciptItems_Stock_Calc.' +
        'ReciptCaption, '
      
        '                      ReciptItems_Stock_Calc.StuffSize, ReciptIt' +
        'ems_Stock_Calc.StuffDiameter, ReciptItems_Stock_Calc.StuffAlloy,' +
        ' ReciptItems_Stock_Calc.ProductModel, ReciptItems_Stock_Calc.Use' +
        'UnitID ,ReciptItems_Stock_Calc.ReciptType  , '
      
        'TotalInputPriceBase , TotalOutputPriceBase,DocNo, ServerID ,Year' +
        'ID,ReciptID'
      
        ',TotallSellPriceBase,ReciptState,DiagnosisCalcTotalPrice,Calcula' +
        'tedEntityOrWeight'
      'FROM         StuffCoding INNER JOIN'
      '                      ReciptItems_Stock_Calc ON '
      
        '                      StuffCoding.c_StuffCode = ReciptItems_Stoc' +
        'k_Calc.StuffCode '
      ''
      
        'WHERE     ((ReciptItems_Stock_Calc.EffectType = 2) OR  (ReciptIt' +
        'ems_Stock_Calc.EffectType = 4))AND'
      ''
      ''
      '(    ReciptItems_Stock_Calc.SellEffect<>1 or '
      
        #9#9#9'((ReciptItems_Stock_Calc.AutoPrice <>1) and  ReciptItems_Stoc' +
        'k_Calc.EffectType = 2 ))  AND'
      '          (dbo.ReciptItems_Stock_Calc.ReciptState < 3) AND'
      '          ((ReciptItems_Stock_Calc.StoreID = :StoreID )'
      '          or ((ReciptItems_Stock_Calc.ReciptType=7)'
      
        '          and ( ReciptItems_Stock_Calc.StoreID2 = :StoreID2 ))) ' +
        'AND'
      
        '          (ReciptItems_Stock_Calc.StuffCode between :StuffCodeFr' +
        'om and :StuffCodeTo ) AND'
      
        '          (ReciptItems_Stock_Calc.ReciptDate  between :DateFrom ' +
        ' and  :DateTo  )'
      'AND( ReciptItems_Stock_Calc.YearID = :YearID  )'
      'AND (ReciptItems_Stock_Calc.BuyEffect <> 3 ) '
      
        'ORDER BY  ReciptItems_Stock_Calc.StuffCode, ReciptItems_Stock_Ca' +
        'lc.ProductModel, ReciptItems_Stock_Calc.UseUnitID, '
      
        'ReciptItems_Stock_Calc.ReciptDate, ReciptItems_Stock_Calc.Effect' +
        'Type,'
      
        'case when  ReciptItems_Stock_Calc.StoreID = :StoreIDOrder then 0' +
        ' else 1 end ,'
      
        '                      ReciptItems_Stock_Calc.ReciptNumber, Recip' +
        'tItems_Stock_Calc.ReciptItemID')
    Left = 72
    Top = 413
  end
  object qryAllAverage: TADOQuery
    Connection = DmF.adcBSell
    CommandTimeout = 0
    Parameters = <>
    Left = 480
    Top = 165
  end
  object ADOQuery1: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'StuffcodeFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = Null
      end
      item
        Name = 'StuffcodeTo'
        Attributes = [paSigned, paNullable]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = Null
      end
      item
        Name = 'StoreID'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT  dbo.ReciptItems.StuffCode, dbo.StuffCoding.c_StuffName, ' +
        'SUM(dbo.ReciptItems.InputEntity) AS SumOfInputEntity,'
      
        '        SUM(dbo.ReciptItems.InputWeight) AS SumOfInputWeight, SU' +
        'M(dbo.ReciptItems.TotalInputPrice) AS SumOfTotalInputPrice,'
      
        '        SUM(dbo.ReciptItems.OutputEntity) AS SumOfOutputEntity, ' +
        'SUM(dbo.ReciptItems.OutputWeight) AS SumOfOutputWeight,'
      
        '        SUM(dbo.ReciptItems.TotalOutputPrice) AS SumOfTotalOutpu' +
        'tPrice'
      'FROM    dbo.StuffCoding INNER JOIN'
      '        dbo.Recipts INNER JOIN'
      '        dbo.ReciptItems ON '
      ''
      
        'Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = R' +
        'eciptItems.ServerID AND Recipts.YearID = ReciptItems.YearID'
      ''
      
        ' ON dbo.StuffCoding.c_StuffCode = dbo.ReciptItems.StuffCode INNE' +
        'R JOIN'
      
        '        dbo.ReciptTypes ON dbo.Recipts.ReciptType = dbo.ReciptTy' +
        'pes.ReciptType'
      
        'GROUP BY dbo.ReciptItems.StuffCode, dbo.StuffCoding.c_StuffName,' +
        ' dbo.Recipts.StoreID, dbo.ReciptTypes.EffectType,dbo.Recipts.Rec' +
        'iptState'
      
        'HAVING (dbo.ReciptItems.StuffCode between :StuffcodeFrom  And :S' +
        'tuffcodeTo) AND'
      '       (dbo.Recipts.StoreID = :StoreID) AND'
      
        '       (dbo.ReciptTypes.EffectType = 4)AND(ReciptTypes.SellEffec' +
        't<>1) AND'
      '       (dbo.Recipts.ReciptState < 3)'
      ''
      ''
      '')
    Left = 560
    Top = 328
  end
  object srckol: TDataSource
    DataSet = qryKol
    Left = 176
    Top = 200
  end
  object qryAvrageFirstEntity: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'AverageKind'
        Size = -1
        Value = Null
      end
      item
        Name = 'AverageKind'
        Size = -1
        Value = Null
      end
      item
        Name = 'DateFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearID'
        Size = -1
        Value = Null
      end
      item
        Name = 'StoreID'
        Size = -1
        Value = Null
      end
      item
        Name = 'AverageKind'
        Size = -1
        Value = Null
      end
      item
        Name = 'AverageKind'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     ReciptItems_Stock_Calc.StoreID AS StoreID , ReciptIte' +
        'ms_Stock_Calc.StuffCode, SUM(ReciptItems_Stock_Calc.InputEntity ' +
        '- ReciptItems_Stock_Calc.OutputEntity) AS Entity,'
      
        '                      SUM(ReciptItems_Stock_Calc.TotalInputPrice' +
        ' - ReciptItems_Stock_Calc.TotalOutputPrice) AS TotalPrice, SUM(R' +
        'eciptItems_Stock_Calc.InputWeight - ReciptItems_Stock_Calc.Outpu' +
        'tWeight) AS Weight,'
      
        '                       SUM(CASE WHEN ReciptItems_Stock_Calc.Effe' +
        'ctType = 2 THEN 1 ELSE - 1 END * ReciptItems_Stock_Calc.TotallSe' +
        'llPrice) AS TotallSellPrice, '
      
        '                      CASE :AverageKind WHEN 0 THEN 0 WHEN 4 THE' +
        'N ReciptItems_Stock_Calc.ProductModel WHEN 5 THEN ReciptItems_St' +
        'ock_Calc.ProductModel ELSE 0 END AS ProductModel, '
      
        '                      CASE :AverageKind WHEN 0 THEN 0 WHEN 4 THE' +
        'N 0 WHEN 5 THEN ReciptItems_Stock_Calc.UseUnitID ELSE 0 END AS U' +
        'seUnitID'
      ''
      'FROM         StuffCoding INNER JOIN'
      '                      ReciptItems_Stock_Calc ON '
      
        '                      StuffCoding.c_StuffCode = ReciptItems_Stoc' +
        'k_Calc.StuffCode '
      'WHERE     (ReciptItems_Stock_Calc.EffectType in( 2 , 4 ))  AND'
      
        '                 (dbo.ReciptItems_Stock_Calc.ReciptState < 3)  A' +
        'ND  '
      '               (    ReciptItems_Stock_Calc.SellEffect<>1 or'
      
        #9#9#9'((ReciptItems_Stock_Calc.AutoPrice <>1) and  ReciptItems_Stoc' +
        'k_Calc.EffectType = 2 ))  AND'
      
        '                 (ReciptItems_Stock_Calc.ReciptDate <:DateFrom  ' +
        ' )'
      
        '                 AND   (ReciptItems_Stock_Calc.YearID = :YearID)' +
        ' AND'
      ' (ReciptItems_Stock_Calc.StoreID = :StoreID  )'
      'AND (ReciptItems_Stock_Calc.BuyEffect <> 3 )'
      ''
      
        'GROUP BY ReciptItems_Stock_Calc.StoreID, ReciptItems_Stock_Calc.' +
        'StuffCode,'
      
        '                 CASE :AverageKind  WHEN 0 THEN 0 WHEN 4 THEN 0 ' +
        'WHEN 5 THEN ReciptItems_Stock_Calc.UseUnitID ELSE 0 END,'
      
        '                 CASE :AverageKind  WHEN 0 THEN 0 WHEN 4 THEN Re' +
        'ciptItems_Stock_Calc.ProductModel WHEN 5 THEN ReciptItems_Stock_' +
        'Calc.ProductModel ELSE 0 END'
      ''
      '')
    Left = 120
    Top = 269
  end
  object qryCalcControls: TADOQuery
    Connection = DmF.adcBSell
    LockType = ltReadOnly
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'StoreIDFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'StoreIDTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'DateFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'DateTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'StuffCodeFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'StuffCodeTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearID'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM         dbo.CalcControls(:StoreIDFrom ,:StoreIDTo ,'
      '                                     :DateFrom  ,:DateTo  ,'
      
        '                                     :StuffCodeFrom , :StuffCode' +
        'To , :YearID  ) AS CalcControls_1')
    Left = 282
    Top = 176
    object qryCalcControlsReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryCalcControlsStoreID: TSmallintField
      DisplayLabel = #1603#1583' '#1575#1606#1576#1575#1585
      FieldName = 'StoreID'
    end
    object qryCalcControlsReciptNumber: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607
      FieldName = 'ReciptNumber'
    end
    object qryCalcControlsReciptDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryCalcControlsReciptCaption: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldName = 'ReciptCaption'
      Size = 70
    end
    object qryCalcControlsReciptType: TWordField
      FieldName = 'ReciptType'
    end
    object qryCalcControlsDocNo: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1587#1606#1583
      FieldName = 'DocNo'
    end
    object qryCalcControlsDocDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1587#1606#1583
      FieldName = 'DocDate'
      FixedChar = True
      Size = 10
    end
    object qryCalcControlsKind: TStringField
      FieldName = 'Kind'
      ReadOnly = True
      Size = 10
    end
    object qryCalcControlsAutoPrice: TWordField
      FieldName = 'AutoPrice'
    end
  end
  object SrcCalcControls: TDataSource
    DataSet = qryCalcControls
    Left = 370
    Top = 152
  end
  object qryReciptsRegulates: TADOQuery
    Connection = DmF.adcBSell
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'SELECT *  FROM ReciptsRegulates WHERE ServerID = - 1')
    Left = 474
    Top = 400
  end
  object qryCheck: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'StuffCodeFrom'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end
      item
        Name = 'StuffCodeTo'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end
      item
        Name = 'DateFrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'DateTo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'YearID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'StoreIDFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'StoreIDTo'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'StoreID2From'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'StoreID2To'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     ReciptItems.StuffCode, StuffCoding.c_StuffName, SUM(R' +
        'eciptItems.TotalInputPrice) AS InPrice, '
      #9#9'SUM(ReciptItems.TotalOutputPrice) AS OutPrice, '
      
        '                      SUM(ReciptItems.TotalInputPrice - ReciptIt' +
        'ems.TotalOutputPrice) AS Price'
      'FROM         ReciptItems INNER JOIN'
      
        '                      Recipts ON ReciptItems.ReciptID = Recipts.' +
        'ReciptID AND '
      
        '                      ReciptItems.ServerID = Recipts.ServerID AN' +
        'D '
      
        '                      ReciptItems.YearID = Recipts.YearID INNER ' +
        'JOIN'
      
        '                      StuffCoding ON ReciptItems.StuffCode = Stu' +
        'ffCoding.c_StuffCode INNER JOIN'
      
        '                      ReciptTypes ON Recipts.ReciptType = Recipt' +
        'Types.ReciptType'
      ''
      'WHERE ( Recipts.ReciptType IN (7, 13) or'
      '        ReciptTypes.PrimaryReciptType  IN (7, 13)  )'
      ''
      
        'AND  (ReciptItems.StuffCode  between :StuffCodeFrom and :StuffCo' +
        'deTo ) '
      'AND  (Recipts.ReciptDate between  :DateFrom  and  :DateTo )'
      'AND( ReciptItems.YearID = :YearID  )'
      
        'AND ( ( Recipts.StoreID  between  :StoreIDFrom  and  :StoreIDTo ' +
        ' )or( Recipts.StoreID2  between  :StoreID2From  and  :StoreID2To' +
        '  ))'
      'GROUP BY ReciptItems.StuffCode, StuffCoding.c_StuffName'
      
        'HAVING      (SUM( case when ReciptTypes.IncreasingInventory = 0 ' +
        'then  ReciptItems.TotalInputPrice else '
      
        '                                                                ' +
        '      ReciptItems.TotalOutputPrice end  '
      
        '                                                                ' +
        '    - ReciptItems.TotalOutputPrice) <> 0) '
      '')
    Left = 282
    Top = 394
    object qryCheckStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qryCheckc_StuffName: TStringField
      DisplayLabel = #1588#1585#1581' '#1603#1575#1604#1575
      DisplayWidth = 42
      FieldName = 'c_StuffName'
      Size = 150
    end
    object qryCheckInPrice: TBCDField
      DisplayLabel = #1580#1605#1593' '#1608#1575#1585#1583#1607
      DisplayWidth = 24
      FieldName = 'InPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryCheckOutPrice: TBCDField
      DisplayLabel = #1580#1605#1593' '#1589#1575#1583#1585#1607
      DisplayWidth = 24
      FieldName = 'OutPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryCheckPrice: TBCDField
      DisplayLabel = #1575#1582#1578#1604#1575#1601
      DisplayWidth = 24
      FieldName = 'Price'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object SrcCheck: TDataSource
    DataSet = qryCheck
    Left = 354
    Top = 402
  end
  object qryReciptItems: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      
        'SELECT        ReciptItemID, ReciptID, ServerID, YearID, TotalOut' +
        'putPrice, TotalInputPrice, TotallSellPrice'
      'FROM            ReciptItems_TempCalculate'
      'WHERE        (ReciptItemID = 0)')
    Left = 720
    Top = 376
  end
  object ADOQuery2qryIN: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'StoreID'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'StuffCode'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
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
      
        'SELECT dbo.Recipts.ReciptDate, dbo.StuffCoding.c_StuffCode, dbo.' +
        'ReciptItems.InputEntity, dbo.ReciptItems.InputWeight,'
      '       dbo.ReciptItems.TotalInputPrice'
      ',AutoPrice'
      
        ', dbo.ReciptItems.ReciptItemID, ReciptItems.ServerID,   ReciptIt' +
        'ems.YearID'
      ''
      'FROM   dbo.StuffCoding INNER JOIN'
      '       dbo.Recipts INNER JOIN'
      '       dbo.ReciptItems ON  '
      
        'Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = R' +
        'eciptItems.ServerID AND Recipts.YearID = ReciptItems.YearID '
      ''
      
        ' ON dbo.StuffCoding.c_StuffCode = dbo.ReciptItems.StuffCode INNE' +
        'R JOIN'
      
        '       dbo.ReciptTypes ON dbo.Recipts.ReciptType = dbo.ReciptTyp' +
        'es.ReciptType'
      'WHERE  ( case when dbo.ReciptTypes.IncreasingInventory=1  '
      
        '            then dbo.Recipts.StoreID2 else dbo.Recipts.StoreID  ' +
        'end   = :StoreID )  AND '
      '              (dbo.StuffCoding.c_StuffCode = :StuffCode) '
      
        'AND (dbo.ReciptTypes.EffectType = 2 or dbo.ReciptTypes.Increasin' +
        'gInventory=1 )'
      ''
      ' AND (dbo.Recipts.ReciptState < 3)AND '
      ' (   '
      #9'ReciptTypes.SellEffect<>1 or '
      
        #9'((ReciptTypes.AutoPrice <>1) and  (ReciptTypes.EffectType = 2 o' +
        'r dbo.ReciptTypes.IncreasingInventory=1) )'
      ')'
      ''
      'AND( Recipts.YearID = :YearID  )'
      ''
      'ORDER BY dbo.Recipts.ReciptDate, dbo.StuffCoding.c_StuffCode')
    Left = 384
    Top = 93
  end
  object ADOQuery3qryOut: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'StoreID'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'StuffCode'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
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
      
        'SELECT dbo.ReciptItems.ReciptItemID,dbo.ReciptItems.ReciptID, db' +
        'o.Recipts.ReciptDate, dbo.StuffCoding.c_StuffCode, dbo.ReciptIte' +
        'ms.OutputEntity,'
      
        '       dbo.ReciptItems.OutputWeight, ReciptItems.ServerID,   Rec' +
        'iptItems.YearID'
      ''
      
        ', dbo.ReciptItems.InputEntity, dbo.ReciptItems.InputWeight,   db' +
        'o.ReciptItems.TotalInputPrice, AutoPrice'
      ''
      ''
      'FROM         StuffCoding INNER JOIN'
      '                      Recipts INNER JOIN'
      
        '                      ReciptItems ON Recipts.ReciptID = ReciptIt' +
        'ems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND Rec' +
        'ipts.YearID = ReciptItems.YearID ON '
      
        '                      StuffCoding.c_StuffCode = ReciptItems.Stuf' +
        'fCode INNER JOIN'
      
        '                      ReciptTypes ON Recipts.ReciptType = Recipt' +
        'Types.ReciptType'
      ''
      'WHERE (dbo.Recipts.StoreID = :StoreID) AND'
      '      (dbo.StuffCoding.c_StuffCode = :StuffCode) '
      
        'AND   ( (dbo.ReciptTypes.EffectType = 4) OR ( (ReciptTypes.Effec' +
        'tType = 2) AND (ReciptTypes.AutoPrice = 1) )        ) '
      'AND'
      '(ReciptTypes.SellEffect<>1) AND (dbo.Recipts.ReciptState < 3)'
      'AND( Recipts.YearID = :YearID  )'
      
        'ORDER BY dbo.Recipts.ReciptDate, dbo.StuffCoding.c_StuffCode, db' +
        'o.ReciptTypes.EffectType'
      '')
    Left = 72
    Top = 8
  end
  object qryOutOld: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'StoreID'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'StuffCode'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
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
      
        'SELECT dbo.ReciptItems.ReciptItemID,dbo.ReciptItems.ReciptID, db' +
        'o.Recipts.ReciptDate, ReciptItems.StuffCode AS c_StuffCode, dbo.' +
        'ReciptItems.OutputEntity,'
      
        '       dbo.ReciptItems.OutputWeight, ReciptItems.ServerID,   Rec' +
        'iptItems.YearID'
      ''
      
        ', dbo.ReciptItems.InputEntity, dbo.ReciptItems.InputWeight,   db' +
        'o.ReciptItems.TotalInputPrice, AutoPrice'
      ''
      ''
      'FROM         Recipts INNER JOIN'
      
        '                      ReciptItems ON Recipts.ReciptID = ReciptIt' +
        'ems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND Rec' +
        'ipts.YearID = ReciptItems.YearID  INNER JOIN'
      
        '                      ReciptTypes ON Recipts.ReciptType = Recipt' +
        'Types.ReciptType'
      ''
      'WHERE (dbo.Recipts.StoreID = :StoreID) AND'
      '      (ReciptItems.StuffCode = :StuffCode) '
      
        'AND   ( (dbo.ReciptTypes.EffectType = 4) OR ( (ReciptTypes.Effec' +
        'tType = 2) AND (ReciptTypes.AutoPrice = 1) )        ) '
      'AND'
      '(ReciptTypes.SellEffect<>1) AND (dbo.Recipts.ReciptState < 3)'
      'AND( Recipts.YearID = :YearID  )'
      'AND (ReciptTypes.BuyEffect <> 3 ) '
      
        'ORDER BY dbo.Recipts.ReciptDate, ReciptItems.StuffCode, dbo.Reci' +
        'ptTypes.EffectType'
      ''
      '')
    Left = 184
    Top = 136
  end
  object qryCheckCalc: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      
        'select  opf.StoreID ,ipf.ReciptType , ipf.reciptcaption, ipf.Rec' +
        'iptNumber , ipf.ReciptDate ,  opf.StuffCode , opf.StuffSize , op' +
        'f.StuffDiameter , opf.StuffAlloy , opf.outputentity , opf.Output' +
        'Weight , '
      
        #9#9'opf.ControlCode , opf.TotalOutputPrice , opf.UnitSellPrice  ,o' +
        'pf.ReciptType AS OutReciptType, opf.reciptcaption AS Outreciptca' +
        'ption, opf.ReciptNumber  AS OutReciptNumber , opf.ReciptDate AS ' +
        'OutReciptDate '
      
        #9#9',round(opf.UnitSellPrice,0) AS OutUnitSellPrice, round(ipf.Uni' +
        'tSellPrice ,0) AS InUnitSellPrice'
      'from '
      ''
      #9'('
      
        #9#9'select ReciptItems.* , recipts.ReciptDate , recipts.ReciptNumb' +
        'er , ReciptTypes.reciptcaption , Recipts.ReciptType , recipts.St' +
        'oreID'
      #9#9#9#9#9'FROM            ReciptItems INNER JOIN'
      
        '                         Recipts ON ReciptItems.ReciptID = Recip' +
        'ts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND Reci' +
        'ptItems.YearID = Recipts.YearID INNER JOIN'
      
        '                         ReciptTypes ON Recipts.ReciptType = Rec' +
        'iptTypes.ReciptType INNER JOIN'
      
        '                         Stores ON Recipts.StoreID = Stores.n_St' +
        'oreID'
      
        #9#9'where  (Stores.n_ValuationType =3) AND (ReciptTypes.EffectType' +
        ' in ( 4))'
      #9') OPF '
      ''
      #9'inner join '
      #9'('
      
        #9#9'select ReciptItems.*, recipts.ReciptDate , recipts.ReciptNumbe' +
        'r , ReciptTypes.reciptcaption , Recipts.ReciptType'
      #9#9#9#9#9'FROM'#9'ReciptItems INNER JOIN'
      #9#9#9#9#9#9#9'Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND'
      #9#9#9#9#9#9#9#9'ReciptItems.ServerID = Recipts.ServerID AND'
      #9#9#9#9#9#9#9#9'ReciptItems.YearID = Recipts.YearID INNER JOIN'
      
        #9#9#9#9#9#9#9'ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptTyp' +
        'e INNER JOIN'
      
        '                         Stores ON Recipts.StoreID = Stores.n_St' +
        'oreID'
      
        #9#9'where (Stores.n_ValuationType =3) AND (ReciptTypes.EffectType ' +
        'in (2))'
      #9') IPF '
      
        'on opf.preReciptItemID =IPF.ReciptItemID and opf.prvyearid = ipf' +
        '.yearid'
      'where '
      ''
      ''
      'not ('
      
        #9#9#9'round(opf.TotalOutputPrice/case when opf.outputentity=0 then ' +
        '1 else opf.outputentity end  ,0) - '
      
        #9#9#9'round(ipf.TotalinputPrice/case when ipf.inputentity=0 then 1 ' +
        'else ipf.inputentity end  ,0)'
      #9#9#9'between -1 and 1 '
      #9#9#9'or '
      
        #9#9#9'round(opf.TotalOutputPrice/case when opf.OutputWeight=0 then ' +
        '1 else opf.OutputWeight end ,0) - '
      
        #9#9#9'round(ipf.TotalinputPrice/case when ipf.inputentity=0 then 1 ' +
        'else ipf.inputentity end  ,0)'
      #9#9#9'between -1 and 1'
      #9#9#9'OR'
      
        #9#9#9'round(opf.TotalOutputPrice/case when opf.outputentity=0 then ' +
        '1 else opf.outputentity end  ,0) - '
      
        #9#9#9'round(ipf.TotalinputPrice/case when ipf.InputWeight=0 then 1 ' +
        'else ipf.InputWeight end  ,0)'
      #9#9#9'between -1 and 1 '
      #9#9#9'or '
      
        #9#9#9'round(opf.TotalOutputPrice/case when opf.OutputWeight=0 then ' +
        '1 else opf.OutputWeight end ,0) - '
      
        #9#9#9'round(ipf.TotalinputPrice/case when ipf.InputWeight=0 then 1 ' +
        'else ipf.InputWeight end  ,0)'
      #9#9#9'between -1 and 1'
      #9#9#9')'
      'order by ipf.ReciptType ,ipf.ReciptDate ,  ipf.ReciptNumber')
    Left = 504
    Top = 264
    object qryCheckCalcStoreID: TSmallintField
      DisplayLabel = #1705#1583' '#1575#1606#1576#1575#1585
      FieldName = 'StoreID'
    end
    object qryCheckCalcReciptType: TWordField
      FieldName = 'ReciptType'
    end
    object qryCheckCalcreciptcaption: TStringField
      DisplayLabel = #1606#1608#1593' '#1601#1585#1605
      FieldName = 'reciptcaption'
      Size = 70
    end
    object qryCheckCalcReciptNumber: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'ReciptNumber'
    end
    object qryCheckCalcReciptDate: TStringField
      DisplayLabel = #1578#1575#1585#1740#1582' '#1601#1585#1605
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryCheckCalcStuffCode: TLargeintField
      DisplayLabel = #1705#1583' '#1705#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qryCheckCalcStuffSize: TStringField
      DisplayLabel = #1575#1606#1583#1575#1586#1607
      FieldName = 'StuffSize'
      Size = 12
    end
    object qryCheckCalcStuffDiameter: TFloatField
      DisplayLabel = #1590#1582#1575#1605#1578
      FieldName = 'StuffDiameter'
    end
    object qryCheckCalcStuffAlloy: TStringField
      DisplayLabel = #1570#1604#1740#1575#1688
      FieldName = 'StuffAlloy'
      Size = 12
    end
    object qryCheckCalcoutputentity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1582#1585#1608#1580#1740
      FieldName = 'outputentity'
    end
    object qryCheckCalcOutputWeight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1582#1585#1608#1580#1740
      FieldName = 'OutputWeight'
    end
    object qryCheckCalcControlCode: TLargeintField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1585#1575#1607#1606#1605#1575
      FieldName = 'ControlCode'
    end
    object qryCheckCalcTotalOutputPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1740' '#1705#1604' '#1589#1575#1583#1585#1607
      FieldName = 'TotalOutputPrice'
      currency = True
      Precision = 19
    end
    object qryCheckCalcUnitSellPrice: TFMTBCDField
      DisplayLabel = #1601#1740
      FieldName = 'UnitSellPrice'
      Precision = 19
    end
    object qryCheckCalcOutReciptType: TWordField
      FieldName = 'OutReciptType'
    end
    object qryCheckCalcOutreciptcaption: TStringField
      DisplayLabel = #1606#1608#1593' '#1601#1585#1605' '#1582#1585#1608#1580#1740
      FieldName = 'Outreciptcaption'
      Size = 70
    end
    object qryCheckCalcOutReciptNumber: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605' '#1582#1585#1608#1580#1740
      FieldName = 'OutReciptNumber'
    end
    object qryCheckCalcOutReciptDate: TStringField
      DisplayLabel = #1578#1575#1585#1740#1582' '#1601#1585#1605' '#1582#1585#1608#1580#1740
      FieldName = 'OutReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryCheckCalcOutUnitSellPrice: TFMTBCDField
      DisplayLabel = #1601#1740' '#1582#1585#1608#1580#1740
      FieldName = 'OutUnitSellPrice'
      ReadOnly = True
      Precision = 19
    end
    object qryCheckCalcInUnitSellPrice: TFMTBCDField
      DisplayLabel = #1601#1740' '#1608#1585#1608#1583
      FieldName = 'InUnitSellPrice'
      ReadOnly = True
      Precision = 19
    end
  end
  object srcCheckCalc: TDataSource
    DataSet = qryCheckCalc
    Left = 330
    Top = 218
  end
  object qryVijehLevelID0: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'StoreID'
        Size = -1
        Value = Null
      end
      item
        Name = 'StuffCodeFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'StuffCodeTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'DateFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'DateTo'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT * FROM Fn_CalcVijeh(:StoreID , :StuffCodeFrom , :StuffCod' +
        'eTo, :DateFrom , :DateTo)'
      'WHERE (LevelID = 0)')
    Left = 648
    Top = 232
  end
  object qryVijehLevelID: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'StoreID'
        Size = -1
        Value = Null
      end
      item
        Name = 'StuffCodeFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'StuffCodeTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'DateFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'DateTo'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT * FROM Fn_CalcVijeh(:StoreID , :StuffCodeFrom , :StuffCod' +
        'eTo, :DateFrom , :DateTo)'
      'WHERE (LevelID <> 0)')
    Left = 648
    Top = 288
  end
  object PopupMenu1: TPopupMenu
    Left = 480
    Top = 312
    object N1: TMenuItem
      Action = actAnalysisWeight
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object N3: TMenuItem
      Action = actAnalysisEntity
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object N2: TMenuItem
      Action = actAnalysisAvrage
    end
  end
  object qryAverageAllStore: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'StuffCodeFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'StuffCodeTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'DateFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'DateTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearID'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT   ReciptItems_Stock_Calc.UnionKind, ReciptItems_Stock_Cal' +
        'c.ReciptType,'
      
        ' ReciptItems_Stock_Calc.StuffCode AS StuffCode, StuffCoding.c_St' +
        'uffName, ReciptItems_Stock_Calc.ReciptDate,'
      
        '          ReciptItems_Stock_Calc.ReciptNumber, ReciptItems_Stock' +
        '_Calc.ReciptItemID,ReciptItems_Stock_Calc.InputEntity,'
      
        '          ReciptItems_Stock_Calc.OutputEntity, ReciptItems_Stock' +
        '_Calc.TotalInputPrice, ReciptItems_Stock_Calc.TotalOutputPrice,'
      
        '          ReciptItems_Stock_Calc.EffectType , ReciptItems_Stock_' +
        'Calc.AutoPrice, ReciptItems_Stock_Calc.InputWeight,'
      
        '          ReciptItems_Stock_Calc.OutputWeight, ReciptItems_Stock' +
        '_Calc.TotallSellPrice, ReciptItems_Stock_Calc.ReciptCaption,'
      
        '          ReciptItems_Stock_Calc.StuffSize, ReciptItems_Stock_Ca' +
        'lc.StuffDiameter, ReciptItems_Stock_Calc.StuffAlloy ,'
      
        '          0 as ProductModel, 0 as UseUnitID , TotalInputPriceBas' +
        'e , TotalOutputPriceBase,DocNo, ServerID ,YearID,ReciptID'
      ',TotallSellPriceBase,ReciptState'
      'FROM         StuffCoding INNER JOIN'
      '                      ReciptItems_Stock_Calc ON '
      
        '                      StuffCoding.c_StuffCode = ReciptItems_Stoc' +
        'k_Calc.StuffCode '
      ''
      
        'WHERE     ((ReciptItems_Stock_Calc.EffectType = 2) OR  (ReciptIt' +
        'ems_Stock_Calc.EffectType = 4)) AND '
      '          (    ReciptItems_Stock_Calc.SellEffect<>1 or '
      
        #9#9#9'((ReciptItems_Stock_Calc.AutoPrice <>1) and  ReciptItems_Stoc' +
        'k_Calc.EffectType = 2 ))  AND'
      '          (dbo.ReciptItems_Stock_Calc.ReciptState < 3)'
      
        '          AND(ReciptItems_Stock_Calc.StuffCode between :StuffCod' +
        'eFrom and :StuffCodeTo )'
      
        '          AND(ReciptItems_Stock_Calc.ReciptDate between  :DateFr' +
        'om  and  :DateTo )'
      'AND( ReciptItems_Stock_Calc.YearID = :YearID  )'
      'AND (ReciptItems_Stock_Calc.BuyEffect <> 3 )'
      'AND (ReciptItems_Stock_Calc.n_ValuationType = 9 )'
      
        'ORDER BY  ReciptItems_Stock_Calc.StuffCode, ReciptItems_Stock_Ca' +
        'lc.ReciptDate,'
      '          ReciptItems_Stock_Calc.EffectType ,'
      '          ReciptItems_Stock_Calc.ReciptNumber,'
      ''
      '          ReciptItems_Stock_Calc.ReciptType,'
      '          ReciptItems_Stock_Calc.ControlCode,'
      ''
      '          ReciptItems_Stock_Calc.ReciptItemID')
    Left = 216
    Top = 237
  end
  object qryAvrageFirstEntityAllStore: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'DateFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearID'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT   ReciptItems_Stock_Calc.StuffCode, SUM(ReciptItems_Stock' +
        '_Calc.InputEntity - ReciptItems_Stock_Calc.OutputEntity) AS Enti' +
        'ty,'
      
        '      SUM(ReciptItems_Stock_Calc.TotalInputPrice - ReciptItems_S' +
        'tock_Calc.TotalOutputPrice) AS TotalPrice,'
      
        '       SUM(ReciptItems_Stock_Calc.InputWeight - ReciptItems_Stoc' +
        'k_Calc.OutputWeight) AS Weight,'
      
        '   SUM(CASE WHEN ReciptItems_Stock_Calc.EffectType = 2 THEN 1 EL' +
        'SE - 1 END * ReciptItems_Stock_Calc.TotallSellPrice) AS TotallSe' +
        'llPrice'
      'FROM         StuffCoding INNER JOIN'
      '                      ReciptItems_Stock_Calc ON '
      
        '                      StuffCoding.c_StuffCode = ReciptItems_Stoc' +
        'k_Calc.StuffCode '
      'WHERE     (ReciptItems_Stock_Calc.EffectType in( 2 , 4 ))  AND'
      
        '                 (dbo.ReciptItems_Stock_Calc.ReciptState < 3)  A' +
        'ND  '
      
        '               (   ((ReciptItems_Stock_Calc.AutoPrice <>1) and  ' +
        'ReciptItems_Stock_Calc.EffectType = 2 ))  AND'
      
        '                 (ReciptItems_Stock_Calc.ReciptDate <:DateFrom  ' +
        ' )'
      
        '                 AND   (ReciptItems_Stock_Calc.YearID = :YearID)' +
        ' '
      'AND (ReciptItems_Stock_Calc.BuyEffect <> 3 )'
      'AND (ReciptItems_Stock_Calc.n_ValuationType = 9 )'
      'GROUP BY  ReciptItems_Stock_Calc.StuffCode')
    Left = 240
    Top = 293
  end
  object qryGetInputPrice: TADOQuery
    Connection = DmF.adcBSell
    CommandTimeout = 0
    Parameters = <>
    Left = 616
    Top = 393
  end
  object srcWarningType: TDataSource
    DataSet = qryWarningType
    Left = 40
    Top = 181
  end
  object qryWarningType: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      
        'SELECT        ReciptType, ReciptCaption,EffectType,SellEffect,Bu' +
        'yEffect'
      'FROM            ReciptTypes'
      
        'WHERE        (AutoPrice = 1) AND (replace (MnuPlaceIDs,'#39'0'#39','#39#39') >' +
        ' '#39'0'#39')'
      'AND (BuyEffect <> 3 )')
    Left = 111
    Top = 204
    object qryWarningTypeReciptType: TWordField
      DisplayLabel = #1705#1583
      FieldName = 'ReciptType'
    end
    object qryWarningTypeReciptCaption: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldName = 'ReciptCaption'
      Size = 70
    end
    object qryWarningTypeEffectType: TWordField
      DisplayLabel = #1578#1575#1579#1740#1585
      FieldName = 'EffectType'
    end
    object qryWarningTypeSellEffect: TWordField
      DisplayLabel = #1601#1585#1608#1588
      FieldName = 'SellEffect'
    end
    object qryWarningTypeBuyEffect: TWordField
      DisplayLabel = #1582#1585#1740#1583
      FieldName = 'BuyEffect'
    end
  end
  object qry0In: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'StoreIdFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'StoreIdTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'StuffCode'
        Attributes = [paSigned, paNullable]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = '0'
      end
      item
        Name = 'StuffCode1'
        Attributes = [paSigned, paNullable]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = '0'
      end
      item
        Name = 'ControlCodeFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = '0'
      end
      item
        Name = 'ControlCodeTo'
        Attributes = [paSigned, paNullable]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = '0'
      end
      item
        Name = 'DateFrom'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '0'
      end
      item
        Name = 'DateTo'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '0'
      end
      item
        Name = 'DateFromRemain'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '0'
      end
      item
        Name = 'YearIDFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'YearIDTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'DiameterFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = 0.000000000000000000
      end
      item
        Name = 'DiameterTo'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = 0.000000000000000000
      end
      item
        Name = 'PersonID1DFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'PersonID1DTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'PersonID4From'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'PersonID4To'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT StuffCode, ReciptNumber, ReciptItemID,ReciptID, ServerID,' +
        '   YearID, Cardex.id,    InputEntity , TotalInputPrice ,FitfulID' +
        ' as CInputEntity ,FitfulID as CTotalInputPrice'
      
        ', IncreasingInventory,case when IncreasingInventory=1 then autoP' +
        'rice  else autoPrice end autoPrice'
      
        ',case when InputEntity<>0 then TotalInputPrice/InputEntity else ' +
        '0 end fi'
      ''
      
        'FROM dbo.Cardex(:StoreIdFrom ,:StoreIdTo , :StuffCode , :StuffCo' +
        'de1 , :ControlCodeFrom , :ControlCodeTo '
      
        '          ,:DateFrom , :DateTo ,:DateFromRemain   , :YearIDFrom ' +
        ', :YearIDTo ,  :DiameterFrom , :DiameterTo'
      
        '          ,  :PersonID1DFrom , :PersonID1DTo  ,  :PersonID4From ' +
        ', :PersonID4To ,0 , 2147483647,0 , 2147483647'
      ') AS Cardex  CROSS JOIN'
      '     Fitful'
      ''
      'where  ((autoPrice=0)or(InputEntity>0))'
      ''
      
        'ORDER BY StuffCode,Cardex.ReciptDate, CASE WHEN n_ValuationType ' +
        '= 6 THEN ReciptID ELSE 0 END ,'
      
        'Cardex.EffectType, Cardex.ReciptNumber, Cardex.ReciptType, Carde' +
        'x.ControlCode, Cardex.ReciptItemID'
      ''
      '')
    Left = 384
    Top = 472
    object qry0InautoPrice: TIntegerField
      FieldName = 'autoPrice'
      ReadOnly = True
    end
    object qry0InInputEntity: TFloatField
      FieldName = 'InputEntity'
      ReadOnly = True
    end
    object qry0InTotalInputPrice: TFloatField
      FieldName = 'TotalInputPrice'
      ReadOnly = True
    end
    object qry0Infi: TFloatField
      FieldName = 'fi'
      ReadOnly = True
    end
    object qry0InCInputEntity: TFMTBCDField
      FieldName = 'CInputEntity'
      Precision = 20
      Size = 4
    end
    object qry0InCTotalInputPrice: TFMTBCDField
      FieldName = 'CTotalInputPrice'
      Precision = 20
      Size = 4
    end
    object qry0InReciptItemID: TIntegerField
      FieldName = 'ReciptItemID'
      ReadOnly = True
    end
    object qry0InReciptID: TIntegerField
      FieldName = 'ReciptID'
      ReadOnly = True
    end
    object qry0InServerID: TIntegerField
      FieldName = 'ServerID'
      ReadOnly = True
    end
    object qry0InYearID: TIntegerField
      FieldName = 'YearID'
      ReadOnly = True
    end
    object qry0InReciptNumber: TIntegerField
      FieldName = 'ReciptNumber'
      ReadOnly = True
    end
    object qry0InIncreasingInventory: TWordField
      FieldName = 'IncreasingInventory'
      ReadOnly = True
    end
    object qry0Inid: TFMTBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 26
      Size = 0
    end
    object qry0InStuffCode: TLargeintField
      FieldName = 'StuffCode'
      ReadOnly = True
    end
  end
  object qry1Out: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'StoreIdFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'StoreIdTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'StuffCode'
        Attributes = [paSigned, paNullable]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = '0'
      end
      item
        Name = 'StuffCode1'
        Attributes = [paSigned, paNullable]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = '0'
      end
      item
        Name = 'ControlCodeFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = '0'
      end
      item
        Name = 'ControlCodeTo'
        Attributes = [paSigned, paNullable]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = '0'
      end
      item
        Name = 'DateFrom'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '0'
      end
      item
        Name = 'DateTo'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '0'
      end
      item
        Name = 'DateFromRemain'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '0'
      end
      item
        Name = 'YearIDFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'YearIDTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'DiameterFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = 0.000000000000000000
      end
      item
        Name = 'DiameterTo'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = 0.000000000000000000
      end
      item
        Name = 'PersonID1DFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'PersonID1DTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'PersonID4From'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'PersonID4To'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT StuffCode, ReciptNumber, ReciptItemID,ReciptID, ServerID,' +
        '   YearID,  Cardex.id, autoPrice,   InputEntity'
      
        ' , TotalInputPrice , OutputEntity , TotalOutputPrice ,FitfulID a' +
        's COutputEntity'
      
        'FROM dbo.Cardex(:StoreIdFrom ,:StoreIdTo , :StuffCode , :StuffCo' +
        'de1 , :ControlCodeFrom , :ControlCodeTo '
      
        ',:DateFrom , :DateTo ,:DateFromRemain   , :YearIDFrom , :YearIDT' +
        'o ,  :DiameterFrom , :DiameterTo'
      
        '          ,  :PersonID1DFrom , :PersonID1DTo  ,  :PersonID4From ' +
        ', :PersonID4To ,0 , 2147483647,0 , 2147483647'
      ') AS Cardex  CROSS JOIN'
      '     Fitful'
      ''
      'where  ( autoPrice = 1 )'
      
        'ORDER BY StuffCode,Cardex.ReciptDate, CASE WHEN n_ValuationType ' +
        '= 6 THEN ReciptID ELSE 0 END ,'
      
        'Cardex.EffectType, Cardex.ReciptNumber, Cardex.ReciptType, Carde' +
        'x.ControlCode, Cardex.ReciptItemID'
      '')
    Left = 496
    Top = 472
    object qry1OutautoPrice: TIntegerField
      FieldName = 'autoPrice'
      ReadOnly = True
    end
    object qry1OutInputEntity: TFloatField
      FieldName = 'InputEntity'
      ReadOnly = True
    end
    object qry1OutTotalInputPrice: TFloatField
      FieldName = 'TotalInputPrice'
      ReadOnly = True
    end
    object qry1OutOutputEntity: TFloatField
      FieldName = 'OutputEntity'
      ReadOnly = True
    end
    object qry1OutTotalOutputPrice: TBCDField
      FieldName = 'TotalOutputPrice'
      ReadOnly = True
      Precision = 19
    end
    object qry1OutCOutputEntity: TFMTBCDField
      FieldName = 'COutputEntity'
      Precision = 20
      Size = 4
    end
    object qry1OutReciptItemID: TIntegerField
      FieldName = 'ReciptItemID'
      ReadOnly = True
    end
    object qry1OutReciptID: TIntegerField
      FieldName = 'ReciptID'
      ReadOnly = True
    end
    object qry1OutServerID: TIntegerField
      FieldName = 'ServerID'
      ReadOnly = True
    end
    object qry1OutYearID: TIntegerField
      FieldName = 'YearID'
      ReadOnly = True
    end
    object qry1OutReciptNumber: TIntegerField
      FieldName = 'ReciptNumber'
      ReadOnly = True
    end
    object qry1Outid: TFMTBCDField
      FieldName = 'id'
      ReadOnly = True
      Precision = 26
      Size = 0
    end
    object qry1OutStuffCode: TLargeintField
      FieldName = 'StuffCode'
      ReadOnly = True
    end
  end
  object DataSource1: TDataSource
    DataSet = qry0In
    Left = 256
    Top = 496
  end
  object DataSource2: TDataSource
    DataSet = qry1Out
    Left = 600
    Top = 480
  end
end

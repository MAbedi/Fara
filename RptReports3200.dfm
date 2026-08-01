inherited RptReports3200F: TRptReports3200F
  Caption = #1605#1580#1605#1608#1593#1607' '#1711#1586#1575#1585#1588
  ClientWidth = 993
  OnResize = FormResize
  ExplicitWidth = 1009
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Width = 993
    ExplicitWidth = 993
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 916
      Top = 8
      Width = 75
      Height = 25
      Margins.Left = 1
      Margins.Top = 7
      Margins.Right = 1
      Margins.Bottom = 7
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 1
    end
    object BtnPrint: TBitBtn
      AlignWithMargins = True
      Left = 839
      Top = 8
      Width = 75
      Height = 25
      Margins.Left = 1
      Margins.Top = 7
      Margins.Right = 1
      Margins.Bottom = 7
      Action = actPrint
      Align = alRight
      Caption = #1670#1575#1662' (F7)'
      TabOrder = 2
    end
  end
  inherited Panel2: TPanel
    Width = 993
    ExplicitWidth = 993
    DesignSize = (
      993
      53)
    inherited ImgTemplate: TImage
      Left = 988
      ExplicitLeft = 988
    end
    inherited lblCaption: TLabel
      Left = 849
      Width = 98
      Caption = #1605#1580#1605#1608#1593#1607' '#1711#1586#1575#1585#1588
      ExplicitLeft = 849
      ExplicitWidth = 98
    end
    inherited lblBaseDate: TLabel
      Left = 450
      ExplicitLeft = 450
    end
  end
  inherited Panel3: TPanel
    Width = 993
    ExplicitWidth = 993
    object splLeft2: TSplitter
      Left = 667
      Top = 19
      Width = 5
      Height = 129
      Beveled = True
      ExplicitLeft = 660
      ExplicitTop = 13
      ExplicitHeight = 379
    end
    object splLeft1: TSplitter
      Left = 332
      Top = 19
      Width = 5
      Height = 129
      Beveled = True
      ExplicitLeft = 300
      ExplicitTop = 25
      ExplicitHeight = 0
    end
    object splTop: TSplitter
      Left = 2
      Top = 148
      Width = 989
      Height = 4
      Cursor = crVSplit
      Align = alBottom
      ExplicitTop = 149
    end
    object Panel1: TPanel
      Left = 2
      Top = 152
      Width = 989
      Height = 270
      Align = alBottom
      Caption = 'Panel1'
      TabOrder = 2
      object splLeft4: TSplitter
        Left = 666
        Top = 1
        Width = 5
        Height = 268
        Beveled = True
        ExplicitLeft = 660
        ExplicitTop = 13
        ExplicitHeight = 379
      end
      object splLeft3: TSplitter
        Left = 331
        Top = 1
        Width = 5
        Height = 268
        Beveled = True
        ExplicitLeft = 277
        ExplicitTop = -2
      end
      object grdDetails3203: TCedarDbgrid
        Left = 671
        Top = 1
        Width = 317
        Height = 268
        Align = alClient
        DataSource = srcDetails3203
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
        OddRowColor = clWhite
        RowHeight = 18
        SearchPanel.Enabled = True
        SortLocal = True
        TabOrder = 2
        ActiveSearchPanel = False
        SelectFooterIndex = 0
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object grdDetails3204: TCedarDbgrid
        Left = 336
        Top = 1
        Width = 330
        Height = 268
        Align = alLeft
        DataSource = srcDetails3204
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
        OddRowColor = clWhite
        RowHeight = 18
        SearchPanel.Enabled = True
        SortLocal = True
        TabOrder = 1
        ActiveSearchPanel = False
        SelectFooterIndex = 0
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object grdDetails3205: TCedarDbgrid
        Left = 1
        Top = 1
        Width = 330
        Height = 268
        Align = alLeft
        DataSource = srcDetails3205
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
        OddRowColor = clWhite
        RowHeight = 18
        SearchPanel.Enabled = True
        SortLocal = True
        TabOrder = 0
        ActiveSearchPanel = False
        SelectFooterIndex = 0
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object pnlLblLimitPlace: TPanel
      Left = 2
      Top = 2
      Width = 989
      Height = 17
      Align = alTop
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      object LblShowLimitPlace2: TLabel
        Left = 1
        Top = 1
        Width = 94
        Height = 13
        Align = alLeft
        BiDiMode = bdLeftToRight
        Caption = 'LblShow LimitPlace2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        Transparent = True
      end
      object LblShowLimitPlace1: TLabel
        Left = 894
        Top = 1
        Width = 94
        Height = 13
        Align = alRight
        Caption = 'LblShow LimitPlace1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
    end
    object grdDetails3200: TCedarDbgrid
      Left = 672
      Top = 19
      Width = 319
      Height = 129
      Align = alClient
      DataSource = srcDetails3200
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
      OddRowColor = clWhite
      RowHeight = 18
      SearchPanel.Enabled = True
      SortLocal = True
      TabOrder = 4
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object grdDetails3201: TCedarDbgrid
      Left = 337
      Top = 19
      Width = 330
      Height = 129
      Align = alLeft
      DataSource = srcDetails3201
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
      OddRowColor = clWhite
      RowHeight = 18
      SearchPanel.Enabled = True
      SortLocal = True
      TabOrder = 0
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object grdDetails3202: TCedarDbgrid
      Left = 2
      Top = 19
      Width = 330
      Height = 129
      Align = alLeft
      DataSource = srcDetails3202
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
      OddRowColor = clWhite
      RowHeight = 18
      SearchPanel.Enabled = True
      SortLocal = True
      TabOrder = 1
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  inherited ActionList: TActionList
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actPrint: TAction
      AutoCheck = True
      Caption = #1670#1575#1662' (F7)'
      ShortCut = 118
      OnExecute = actPrintExecute
    end
  end
  object qryDetails3203: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryDetails3200AfterOpen
    CommandTimeout = 1000
    Parameters = <>
    Left = 762
    Top = 331
  end
  object srcDetails3203: TDataSource
    DataSet = qryDetails3203
    Left = 762
    Top = 387
  end
  object qryDetails3204: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryDetails3200AfterOpen
    CommandTimeout = 1000
    Parameters = <>
    Left = 501
    Top = 371
  end
  object srcDetails3204: TDataSource
    DataSet = qryDetails3204
    Left = 496
    Top = 427
  end
  object srcDetails3201: TDataSource
    DataSet = qryDetails3201
    Left = 464
    Top = 123
  end
  object qryDetails3201: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryDetails3200AfterOpen
    CommandTimeout = 1000
    Parameters = <>
    Left = 381
    Top = 115
  end
  object qryDetails3202: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryDetails3200AfterOpen
    CommandTimeout = 1000
    Parameters = <>
    Left = 61
    Top = 107
  end
  object srcDetails3202: TDataSource
    DataSet = qryDetails3202
    Left = 56
    Top = 163
  end
  object qryDetails3205: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryDetails3200AfterOpen
    CommandTimeout = 1000
    Parameters = <>
    Left = 205
    Top = 363
  end
  object srcDetails3205: TDataSource
    DataSet = qryDetails3205
    Left = 200
    Top = 419
  end
  object qryDetails3200: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryDetails3200AfterOpen
    CommandTimeout = 1000
    Parameters = <>
    Left = 757
    Top = 99
  end
  object srcDetails3200: TDataSource
    DataSet = qryDetails3200
    Left = 848
    Top = 91
  end
  object qryInitReports: TADOQuery
    Connection = DmF.adcFaraSystem
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = qryInitReportsAfterOpen
    Parameters = <
      item
        Name = 'Type'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      ''
      'SELECT     *'
      'FROM         Reports'
      'WHERE     (ReportID = :Type)')
    Left = 450
    Top = 267
    object qryInitReportsReportID: TIntegerField
      FieldName = 'ReportID'
    end
    object qryInitReportsReportDate: TStringField
      FieldName = 'ReportDate'
      FixedChar = True
      Size = 10
    end
    object qryInitReportsn_systemparts: TWordField
      FieldName = 'n_systemparts'
    end
    object qryInitReportsReportName: TStringField
      FieldName = 'ReportName'
      Size = 100
    end
    object qryInitReportsMasterSql: TStringField
      FieldName = 'MasterSql'
      Size = 10000
    end
    object qryInitReportsRow: TIntegerField
      FieldName = 'Row'
    end
    object qryInitReportsReportSql: TStringField
      FieldName = 'ReportSql'
      Size = 10000
    end
    object qryInitReportsMasterField: TStringField
      FieldName = 'MasterField'
      Size = 50
    end
    object qryInitReportsMasterCaption: TStringField
      FieldName = 'MasterCaption'
    end
    object qryInitReportsMenuName: TStringField
      FieldName = 'MenuName'
      Size = 50
    end
    object qryInitReportsReportFileName1: TStringField
      FieldName = 'ReportFileName1'
      Size = 50
    end
    object qryInitReportsReportFileName2: TStringField
      FieldName = 'ReportFileName2'
      Size = 50
    end
    object qryInitReportsReportFileName3: TStringField
      FieldName = 'ReportFileName3'
      Size = 50
    end
    object qryInitReportsReportFileName4: TStringField
      FieldName = 'ReportFileName4'
      Size = 50
    end
    object qryInitReportsReportCaption1: TStringField
      FieldName = 'ReportCaption1'
      Size = 50
    end
    object qryInitReportsReportCaption2: TStringField
      FieldName = 'ReportCaption2'
      Size = 50
    end
    object qryInitReportsReportCaption3: TStringField
      FieldName = 'ReportCaption3'
      Size = 50
    end
    object qryInitReportsReportCaption4: TStringField
      FieldName = 'ReportCaption4'
      Size = 50
    end
    object qryInitReportsOffColumnsCount: TWordField
      FieldName = 'OffColumnsCount'
    end
    object qryInitReportsFormType: TIntegerField
      FieldName = 'FormType'
    end
    object qryInitReportsFormType1: TIntegerField
      FieldName = 'FormType1'
    end
    object qryInitReportsFormType2: TIntegerField
      FieldName = 'FormType2'
    end
    object qryInitReportsFormType3: TIntegerField
      FieldName = 'FormType3'
    end
    object qryInitReportsFormType4: TIntegerField
      FieldName = 'FormType4'
    end
    object qryInitReportsRestartField: TStringField
      FieldName = 'RestartField'
      Size = 50
    end
    object qryInitReportsLocateField: TStringField
      FieldName = 'LocateField'
      Size = 50
    end
    object qryInitReportsFormCaption1: TStringField
      FieldName = 'FormCaption1'
      Size = 50
    end
    object qryInitReportsFormCaption2: TStringField
      FieldName = 'FormCaption2'
      Size = 50
    end
    object qryInitReportsFormCaption3: TStringField
      FieldName = 'FormCaption3'
      Size = 50
    end
    object qryInitReportsFormCaption4: TStringField
      FieldName = 'FormCaption4'
      Size = 50
    end
    object qryInitReportsFormKind1: TWordField
      FieldName = 'FormKind1'
    end
    object qryInitReportsFormKind2: TWordField
      FieldName = 'FormKind2'
    end
    object qryInitReportsFormKind3: TWordField
      FieldName = 'FormKind3'
    end
    object qryInitReportsFormKind4: TWordField
      FieldName = 'FormKind4'
    end
    object qryInitReportsQuickSearchField: TStringField
      FieldName = 'QuickSearchField'
    end
    object qryInitReportsReportHelp: TStringField
      FieldName = 'ReportHelp'
      Size = 10000
    end
    object qryInitReportsRuningTotalField1: TStringField
      FieldName = 'RuningTotalField1'
      Size = 50
    end
    object qryInitReportsRuningTotalField2: TStringField
      FieldName = 'RuningTotalField2'
      Size = 50
    end
    object qryInitReportsRuningTotalField3: TStringField
      FieldName = 'RuningTotalField3'
      Size = 50
    end
    object qryInitReportsRuningTotalField4: TStringField
      FieldName = 'RuningTotalField4'
      Size = 50
    end
    object qryInitReportsRuningTotalField5: TStringField
      FieldName = 'RuningTotalField5'
      Size = 50
    end
    object qryInitReportsRuningTotalField6: TStringField
      FieldName = 'RuningTotalField6'
      Size = 50
    end
    object qryInitReportsSumCurrentRecordActive: TWordField
      FieldName = 'SumCurrentRecordActive'
    end
    object qryInitReportsSelectedRowActive: TWordField
      FieldName = 'SelectedRowActive'
    end
    object qryInitReportsAddSumFieldsName: TStringField
      FieldName = 'AddSumFieldsName'
      Size = 500
    end
    object qryInitReportsCrossTabSQL: TStringField
      FieldName = 'CrossTabSQL'
      Size = 1500
    end
    object qryInitReportsCaptions4CrossTab: TStringField
      FieldName = 'Captions4CrossTab'
      Size = 400
    end
    object qryInitReportsSql4SomeYears: TStringField
      FieldName = 'Sql4SomeYears'
      Size = 10000
    end
    object qryInitReportsActivateGroup: TWordField
      FieldName = 'ActivateGroup'
    end
    object qryInitReportsMasterParmCount: TWordField
      FieldName = 'MasterParmCount'
    end
    object qryInitReportsSumActive: TWordField
      FieldName = 'SumActive'
    end
    object qryInitReportsMenuList4Action: TStringField
      FieldName = 'MenuList4Action'
      Size = 250
    end
    object qryInitReportsFormCaption: TStringField
      FieldName = 'FormCaption'
      Size = 50
    end
    object qryInitReportslineMenu: TWordField
      FieldName = 'lineMenu'
    end
  end
  object qryinitReportsItems: TADOQuery
    Connection = DmF.adcFaraSystem
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryinitReportsItemsAfterScroll
    Parameters = <
      item
        Name = 'ReportID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      ''
      'SELECT     *'
      'FROM         ReportsItems'
      'WHERE     (ReportsItems.ReportID = :ReportID )            '
      'ORDER BY Row DESC'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 570
    Top = 259
    object qryinitReportsItemsItemID: TIntegerField
      FieldName = 'ItemID'
    end
    object qryinitReportsItemsReportID: TIntegerField
      FieldName = 'ReportID'
    end
    object qryinitReportsItemsfldName: TStringField
      FieldName = 'fldName'
      Size = 50
    end
    object qryinitReportsItemsTopic: TStringField
      FieldName = 'Topic'
      Size = 50
    end
    object qryinitReportsItemslabelCaption: TStringField
      FieldName = 'labelCaption'
      Size = 50
    end
    object qryinitReportsItemscType: TWordField
      FieldName = 'cType'
    end
    object qryinitReportsItemscDefaultValues: TWordField
      FieldName = 'cDefaultValues'
    end
    object qryinitReportsItemscFrom: TStringField
      FieldName = 'cFrom'
      Size = 50
    end
    object qryinitReportsItemscTo: TStringField
      FieldName = 'cTo'
      Size = 50
    end
    object qryinitReportsItemsTcInputType: TWordField
      FieldName = 'TcInputType'
    end
    object qryinitReportsItemsLookupSql: TStringField
      FieldName = 'LookupSql'
      Size = 10000
    end
    object qryinitReportsItemsMinMaxSql: TStringField
      FieldName = 'MinMaxSql'
      Size = 10000
    end
    object qryinitReportsItemsParamUse: TWordField
      FieldName = 'ParamUse'
    end
    object qryinitReportsItemsRow: TWordField
      FieldName = 'Row'
    end
    object qryinitReportsItemsConnectionTag: TWordField
      FieldName = 'ConnectionTag'
    end
    object qryinitReportsItemsUseParamInOtherForms: TWordField
      FieldName = 'UseParamInOtherForms'
    end
    object qryinitReportsItemsUseParamInMain: TWordField
      FieldName = 'UseParamInMain'
    end
    object qryinitReportsItemsUseForm1: TWordField
      FieldName = 'UseForm1'
    end
    object qryinitReportsItemsUseForm2: TWordField
      FieldName = 'UseForm2'
    end
    object qryinitReportsItemsUseForm3: TWordField
      FieldName = 'UseForm3'
    end
    object qryinitReportsItemsUseForm4: TWordField
      FieldName = 'UseForm4'
    end
    object qryinitReportsItemsShowLimitPlace: TWordField
      FieldName = 'ShowLimitPlace'
    end
  end
  object qryinitReportsItemsItems: TADOQuery
    Connection = DmF.adcFaraSystem
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'ItemID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      #13'SELECT     *'
      'FROM         ReportsItemsItems'
      'WHERE     (ItemID = :ItemID )')
    Left = 730
    Top = 259
    object qryinitReportsItemsItemsID: TIntegerField
      FieldName = 'ID'
    end
    object qryinitReportsItemsItemsItemID: TIntegerField
      FieldName = 'ItemID'
    end
    object qryinitReportsItemsItemsParamName: TStringField
      FieldName = 'ParamName'
      Size = 50
    end
  end
  object PopList4Print: TPopupMenu
    AutoHotkeys = maManual
    Left = 922
    Top = 328
    object AllClikPop: TMenuItem
      Caption = #1670#1575#1662' '#1605#1588#1582#1589' '#1606#1588#1583#1607
      Visible = False
    end
    object men1: TMenuItem
      Tag = 1
      Caption = #1670#1575#1662' 1'
      Hint = '1'
      OnClick = AllC_l_i_c_k_Click
    end
    object men2: TMenuItem
      Tag = 1
      Caption = #1670#1575#1662' 2'
      Hint = '2'
      OnClick = AllC_l_i_c_k_Click
    end
    object men3: TMenuItem
      Tag = 1
      Caption = #1670#1575#1662' 3'
      Hint = '3'
      OnClick = AllC_l_i_c_k_Click
    end
    object men4: TMenuItem
      Tag = 1
      Caption = #1670#1575#1662' 4'
      Hint = '4'
      OnClick = AllC_l_i_c_k_Click
    end
  end
  object pln3200: TppDBPipeline
    DataSource = srcDetails3200
    OpenDataSource = False
    UserName = 'pln3200'
    Left = 831
    Top = 155
    MasterDataPipelineName = 'ppDBPipeline2'
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = pln3200
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RefreshTokenLifeSpan = 365
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
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
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.DropBoxSettings.SharedResources = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.GoogleDriveSettings.SharedResources = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    CloudDriveSettings.OneDriveSettings.SharedResources = True
    Left = 864
    Top = 411
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'pln3200'
    object ppTitleBand1: TppTitleBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 10848
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DBPipeline1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 20
        Font.Style = [fsBold, fsItalic]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 8202
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 39952
        BandType = 1
        LayerName = Foreground
      end
      object pdbclc2CrossXNameY: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'pdbclc2CrossXNameY'
        Border.mmPadding = 0
        DataPipeline = pln3200
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pln3200'
        mmHeight = 6350
        mmLeft = 203300
        mmTop = 0
        mmWidth = 17198
        BandType = 1
        LayerName = Foreground
      end
    end
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 14552
      mmPrintPosition = 0
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Color = clNavy
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 3969
        mmLeft = 203200
        mmTop = 0
        mmWidth = 0
        BandType = 0
        LayerName = Foreground
      end
      object ppLblShowLimitPlace2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblShowLimitPlace2'
        Border.mmPadding = 0
        Caption = #1605#1581#1583#1608#1583#1607' '#1583#1608
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5821
        mmLeft = 3175
        mmTop = 1323
        mmWidth = 9260
        BandType = 0
        LayerName = Foreground
      end
      object ppLblShowLimitPlace1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblShowLimitPlace1'
        Border.mmPadding = 0
        Caption = #1605#1581#1583#1608#1583#1607' '#1610#1603
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 190765
        mmTop = 1323
        mmWidth = 9790
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCurrentDate: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCurrentDate'
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1585#1608#1586
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 3440
        mmTop = 8731
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object LblCurrentDate2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCurrentDate2'
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1585#1608#1586' '#1608' '#1607#1601#1578#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5800
        mmLeft = 44376
        mmTop = 5556
        mmWidth = 16214
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable3'
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yekan'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 23283
        mmTop = 2910
        mmWidth = 7144
        BandType = 0
        LayerName = Foreground
      end
      object pplblYearId: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = 'YearId'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5927
        mmLeft = 66146
        mmTop = 5821
        mmWidth = 8805
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 14023
      mmPrintPosition = 0
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 5821
        mmWidth = 200555
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 40217
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        Border.mmPadding = 0
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4487
        mmLeft = 184680
        mmTop = 1323
        mmWidth = 17187
        BandType = 8
        LayerName = Foreground
      end
      object pdbclcCrossXNameY: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'pdbclcCrossXNameY'
        Border.mmPadding = 0
        DataPipeline = pln3200
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pln3200'
        mmHeight = 6350
        mmLeft = 170392
        mmTop = 5821
        mmWidth = 17198
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 65617
      mmPrintPosition = 0
      object ppDBCalcnum2alphabet: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalcnum2alphabet'
        Border.mmPadding = 0
        DataPipeline = pln3200
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pln3200'
        mmHeight = 5821
        mmLeft = 92075
        mmTop = 794
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object DBnum2alphabet: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBnum2alphabet'
        Border.mmPadding = 0
        DataPipeline = pln3200
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pln3200'
        mmHeight = 5821
        mmLeft = 129117
        mmTop = 4498
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object pdbtxtCrossXNameY: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'pdbtxtCrossXNameY'
        Border.mmPadding = 0
        DataPipeline = pln3200
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pln3200'
        mmHeight = 6350
        mmLeft = 203300
        mmTop = 39423
        mmWidth = 17198
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
  object pln3201: TppDBPipeline
    DataSource = srcDetails3201
    OpenDataSource = False
    UserName = 'pln32001'
    Left = 559
    Top = 115
  end
  object pln3202: TppDBPipeline
    DataSource = srcDetails3202
    OpenDataSource = False
    UserName = 'pln3202'
    Left = 183
    Top = 107
  end
  object pln3203: TppDBPipeline
    DataSource = srcDetails3203
    OpenDataSource = False
    UserName = 'pln3203'
    Left = 871
    Top = 267
  end
  object pln3204: TppDBPipeline
    DataSource = srcDetails3204
    OpenDataSource = False
    UserName = 'pln3204'
    Left = 367
    Top = 267
  end
  object pln3205: TppDBPipeline
    DataSource = srcDetails3205
    OpenDataSource = False
    UserName = 'pln3205'
    Left = 135
    Top = 259
  end
end

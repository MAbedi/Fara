inherited PrintStuffLabelF: TPrintStuffLabelF
  Left = 203
  Top = 93
  Caption = #1670#1575#1662' '#1576#1585#1670#1587#1576' '#1603#1575#1604#1575
  ClientHeight = 470
  ClientWidth = 613
  OldCreateOrder = True
  ExplicitWidth = 619
  ExplicitHeight = 499
  DesignSize = (
    613
    470)
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 413
    Width = 613
    ExplicitTop = 413
    ExplicitWidth = 613
  end
  inherited Panel1: TPanel
    Width = 613
    ExplicitWidth = 613
    DesignSize = (
      613
      73)
    inherited Image1: TImage
      Left = 559
      ExplicitLeft = 559
    end
    inherited lblTopic0: TLabel
      Left = 451
      Width = 88
      Caption = #1670#1575#1662' '#1576#1585#1670#1587#1576' '#1603#1575#1604#1575
      ExplicitLeft = 451
      ExplicitWidth = 88
    end
    inherited lblTopic1: TLabel
      Left = 263
      Width = 263
      Height = 33
      AutoSize = False
      Caption = ''
      ExplicitLeft = 263
      ExplicitWidth = 263
      ExplicitHeight = 33
    end
    object Label1: TLabel
      Left = 88
      Top = 8
      Width = 55
      Height = 13
      Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1575#1606#1576#1575#1585
      FocusControl = DBEdit1
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 3
      Width = 72
      Height = 19
      Ctl3D = False
      DataField = 'n_StoreID'
      DataSource = srcStuffs
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 25
      Width = 183
      Height = 19
      Ctl3D = False
      DataField = 'c_StoreName'
      DataSource = srcStuffs
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object rdgLimit: TRadioGroup
      Left = 198
      Top = 3
      Width = 166
      Height = 67
      Caption = '  '#1605#1581#1583#1608#1583#1607'  '
      ItemIndex = 0
      Items.Strings = (
        #1705#1575#1604#1575#1607#1575#1610' '#1583#1575#1585#1575#1610' &'#1605#1608#1580#1608#1583#1610
        '&'#1607#1605#1600#1600#1600#1607' '#1705#1575#1604#1575#1607#1600#1600#1600#1575)
      TabOrder = 2
      OnClick = rdgLimitClick
    end
  end
  inherited pnlDown: TPanel
    Top = 433
    Width = 613
    ExplicitTop = 433
    ExplicitWidth = 613
    object BitBtn1: TSpeedButton [0]
      AlignWithMargins = True
      Left = 408
      Top = 4
      Width = 120
      Height = 29
      Hint = ' '
      Align = alRight
      Caption = #1601#1740#1604#1578#1585' '#1587#1591#1585#1607#1575#1740' '#1575#1606#1578#1582#1575#1576#1740
      OnClick = BitBtn1Click
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 534
      Top = 4
      Width = 75
      Height = 29
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 327
      Top = 4
      Width = 75
      Height = 29
      Action = actPrint
      Align = alRight
      Caption = #1670#1575#1662
      TabOrder = 2
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 246
      Top = 4
      Width = 75
      Height = 29
      Action = actSearch
      Align = alRight
      Caption = #1580#1587#1580#1578#1608
      TabOrder = 3
    end
  end
  object rgSort: TRadioGroup [3]
    Left = 0
    Top = 73
    Width = 613
    Height = 32
    Align = alTop
    Caption = #1578#1585#1578#1610#1576' '#1576#1585#1581#1587#1576
    Columns = 4
    ItemIndex = 0
    Items.Strings = (
      #1603#1583' '#1603#1575#1604#1575
      #1605#1581#1604' '#1606#1711#1607#1583#1575#1585#1610' '#1603#1575#1604#1575
      #1606#1575#1605' '#1705#1575#1604#1575'('#1575#1604#1601#1576#1575')')
    TabOrder = 3
    OnClick = rdgLimitClick
  end
  object DBGrid1: TCedarDbgrid [4]
    Left = 0
    Top = 105
    Width = 613
    Height = 328
    Align = alClient
    Color = clCream
    DataSource = srcStuffs
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
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    RowHeight = 18
    SearchPanel.Enabled = True
    SortLocal = True
    TabOrder = 2
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
        FieldName = 'Selected'
        Footers = <>
        Width = 37
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'c_StuffCode'
        Footers = <>
        Width = 80
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'c_StuffName'
        Footers = <>
        Width = 74
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'c_StuffTecInfo'
        Footers = <>
        Width = 106
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'c_UnitName'
        Footers = <>
        Width = 69
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Font'
        Footers = <>
        Width = 53
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  inherited ActionList1: TActionList
    Left = 488
    Top = 176
    object actFilter: TAction
      Category = 'Dataset'
      Caption = #1605#1581#1583#1608#1583#1607
      Hint = ' '
      ShortCut = 116
      OnExecute = actFilterExecute
    end
    object actPrint: TAction
      Category = 'Dataset'
      Caption = #1670#1575#1662
      Hint = ' '
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actSearch: TAction
      Caption = #1580#1587#1580#1578#1608
      ShortCut = 114
      OnExecute = actSearchExecute
    end
  end
  object qryStuffs: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 192
    Top = 232
    object qryStuffsSelected: TIntegerField
      Tag = 3
      DisplayLabel = #1575#1606#1578#1582#1575#1576
      FieldName = 'Selected'
    end
    object qryStuffsc_StuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'c_StuffCode'
    end
    object qryStuffsc_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1603#1575#1604#1575' '
      FieldName = 'c_StuffName'
      Size = 150
    end
    object qryStuffsc_StuffTecInfo: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1601#1606#1610
      FieldName = 'c_StuffTecInfo'
      Size = 30
    end
    object qryStuffsc_UnitName: TStringField
      Tag = 3
      DisplayLabel = #1608#1575#1581#1583
      FieldName = 'c_UnitName'
      Size = 50
    end
    object qryStuffsFont: TStringField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1582#1591
      FieldName = 'Font'
      Size = 64
    end
    object qryStuffsn_StoreID: TSmallintField
      DisplayLabel = #1603#1583' '#1575#1606#1576#1575#1585
      FieldName = 'n_StoreID'
    end
    object qryStuffsc_StoreName: TStringField
      DisplayLabel = #1606#1575#1605' '#1575#1606#1576#1575#1585
      FieldName = 'c_StoreName'
      Size = 70
    end
    object qryStuffsc_KeepPlace: TStringField
      FieldName = 'c_KeepPlace'
      Size = 50
    end
    object qryStuffsTabaghe: TStringField
      FieldName = 'Tabaghe'
      Size = 64
    end
    object qryStuffsvazn: TFloatField
      FieldName = 'vazn'
    end
    object qryStuffsst2: TIntegerField
      FieldName = 'st2'
    end
    object qryStuffspadidAvarandeh: TStringField
      FieldName = 'padidAvarandeh'
      Size = 50
    end
    object qryStuffsAndaze: TStringField
      FieldName = 'Andaze'
      Size = 64
    end
    object qryStuffsRadif: TStringField
      FieldName = 'Radif'
      Size = 25
    end
    object qryStuffsGhafase: TStringField
      FieldName = 'Ghafase'
      Size = 64
    end
    object qryStuffsEntity: TFloatField
      FieldName = 'Entity'
      ReadOnly = True
    end
    object qryStuffsWeight: TFloatField
      FieldName = 'Weight'
      ReadOnly = True
    end
    object qryStuffsStuffNote: TStringField
      FieldName = 'StuffNote'
      Size = 255
    end
    object qryStuffsGenre: TStringField
      FieldName = 'Genre'
      Size = 50
    end
    object qryStuffssd1: TStringField
      FieldName = 'sd1'
      Size = 64
    end
    object qryStuffsStuffNote_1: TStringField
      FieldName = 'StuffNote_1'
      Size = 255
    end
    object qryStuffssd7: TStringField
      FieldName = 'sd7'
      Size = 64
    end
    object qryStuffsNaghash: TStringField
      FieldName = 'Naghash'
      Size = 50
    end
    object qryStuffsTeknic: TStringField
      FieldName = 'Teknic'
      Size = 50
    end
    object qryStuffsSabk: TStringField
      FieldName = 'Sabk'
      Size = 50
    end
    object qryStuffssd2: TStringField
      FieldName = 'sd2'
      Size = 64
    end
    object qryStuffsKhat: TStringField
      FieldName = 'Khat'
      Size = 50
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcStuffs
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 80
    Top = 64
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'c_StuffCode'
      FieldName = 'c_StuffCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'c_StuffName'
      FieldName = 'c_StuffName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'c_StuffTecInfo'
      FieldName = 'c_StuffTecInfo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'c_UnitName'
      FieldName = 'c_UnitName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'n_StoreID'
      FieldName = 'n_StoreID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'c_StoreName'
      FieldName = 'c_StoreName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'c_KeepPlace'
      FieldName = 'c_KeepPlace'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'Tabaghe'
      FieldName = 'Tabaghe'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'vazn'
      FieldName = 'vazn'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'st2'
      FieldName = 'st2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'padidAvarandeh'
      FieldName = 'padidAvarandeh'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'Andaze'
      FieldName = 'Andaze'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'Radif'
      FieldName = 'Radif'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'Ghafase'
      FieldName = 'Ghafase'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'Entity'
      FieldName = 'Entity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'Weight'
      FieldName = 'Weight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'StuffNote'
      FieldName = 'StuffNote'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'Genre'
      FieldName = 'Genre'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'Font'
      FieldName = 'Font'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'sd1'
      FieldName = 'sd1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'StuffNote_1'
      FieldName = 'StuffNote_1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = 'sd7'
      FieldName = 'sd7'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = 'Naghash'
      FieldName = 'Naghash'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    Columns = 2
    ColumnPositions.Strings = (
      '108000'
      '6350')
    DataPipeline = ppDBPipeline1
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
    Template.FileName = 'D:\Projects\Fara\BSell\Exe\Report\PrintStuffLabel2.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
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
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 248
    Top = 168
    Version = '19.04'
    mmColumnWidth = 101650
    DataPipelineName = 'ppDBPipeline1'
    object ppColumnHeaderBand1: TppColumnHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 34925
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        ParentWidth = True
        Pen.Width = 2
        mmHeight = 34925
        mmLeft = 0
        mmTop = 0
        mmWidth = 101650
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        OnGetText = ppLabel1GetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 31221
        mmTop = 794
        mmWidth = 39158
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'c_StoreName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5249
        mmLeft = 17727
        mmTop = 5821
        mmWidth = 67733
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1603#1583' '#1603#1575#1604#1575':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5292
        mmLeft = 86519
        mmTop = 13758
        mmWidth = 8424
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = #1588#1585#1581' '#1603#1575#1604#1575':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5292
        mmLeft = 86519
        mmTop = 21431
        mmWidth = 10033
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1601#1606#1610':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 30692
        mmTop = 28575
        mmWidth = 9525
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = #1608#1575#1581#1583' '#1588#1605#1575#1585#1588':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 29104
        mmTop = 12965
        mmWidth = 12700
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'c_StuffCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7705
        mmLeft = 53975
        mmTop = 12435
        mmWidth = 31485
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        OnGetText = ppDBText3GetText
        Border.mmPadding = 0
        DataField = 'c_StuffName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4763
        mmLeft = 42598
        mmTop = 21696
        mmWidth = 42333
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'c_StuffTecInfo'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6879
        mmLeft = 1058
        mmTop = 26988
        mmWidth = 27517
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'c_UnitName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 2646
        mmTop = 11906
        mmWidth = 25665
        BandType = 4
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 0
        mmTop = 8996
        mmWidth = 101650
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText62: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText58'
        Border.mmPadding = 0
        DataField = 'c_KeepPlace'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 42598
        mmTop = 28046
        mmWidth = 37042
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel64: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label85'
        Border.mmPadding = 0
        Caption = #1605#1581#1604' '#1606#1711#1607#1583#1575#1585#1610' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5292
        mmLeft = 80169
        mmTop = 28046
        mmWidth = 18785
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1608#1585#1608#1583' '#1576#1607' '#1575#1606#1576#1575#1585':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3440
        mmLeft = 17992
        mmTop = 17463
        mmWidth = 23813
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1575#1606#1602#1590#1575#1569' '#1605#1608#1575#1583' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 17992
        mmTop = 22225
        mmWidth = 23548
        BandType = 4
        LayerName = Foreground
      end
      object ppImage1: TppImage
        OnPrint = ppImage1Print
        DesignLayer = ppDesignLayer1
        UserName = 'Image1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Border.mmPadding = 0
        mmHeight = 13229
        mmLeft = 42598
        mmTop = 12965
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppColumnFooterBand1: TppColumnFooterBand
      AlignToBottom = True
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
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
  object srcStuffs: TDataSource
    DataSet = qryStuffs
    Left = 312
    Top = 160
  end
  object PopPrint: TPopupMenu
    AutoHotkeys = maManual
    Left = 416
    Top = 313
    object mnuPrintStuffLabel: TMenuItem
      Caption = #1670#1575#1662' '
      Hint = 'PrintStuffLabel'
      OnClick = mnuPrintStuffLabelClick
    end
    object N11: TMenuItem
      Caption = #1670#1575#1662' 2'
      Hint = 'PrintStuffLabel2'
      OnClick = mnuPrintStuffLabelClick
    end
    object N12: TMenuItem
      Caption = #1670#1575#1662' 3'
      Hint = 'PrintStuffLabel3'
      OnClick = mnuPrintStuffLabelClick
    end
    object N13: TMenuItem
      Caption = #1670#1575#1662' 4'
      Hint = 'PrintStuffLabel4'
      OnClick = mnuPrintStuffLabelClick
    end
  end
end

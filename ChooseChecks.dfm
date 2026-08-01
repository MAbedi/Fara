inherited ChooseChecksF: TChooseChecksF
  Left = 471
  Top = 148
  Align = alLeft
  Caption = #1575#1606#1578#1582#1575#1576' '
  ClientHeight = 512
  ClientWidth = 826
  OldCreateOrder = True
  OnDestroy = FormDestroy
  ExplicitWidth = 832
  ExplicitHeight = 541
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 826
    ExplicitWidth = 826
    DesignSize = (
      826
      73)
    inherited Image1: TImage
      Left = 772
      ExplicitLeft = 604
    end
    inherited lblTopic0: TLabel
      Left = 715
      Width = 37
      Caption = #1575#1606#1578#1582#1575#1576' '
      ExplicitLeft = 547
      ExplicitWidth = 37
    end
    inherited lblTopic1: TLabel
      Left = 384
      Width = 355
      AutoSize = False
      Caption = 
        #1576#1585#1575#1610' '#1575#1606#1578#1582#1575#1576' '#1587#1591#1585' '#1605#1608#1585#1583' '#1606#1592#1585' '#1575#1586' '#1583#1603#1605#1607' Space '#1610#1575' Double Click '#1605#1608#1587' '#1575#1587#1578#1601#1575 +
        #1583#1607' '#1603#1606#1610#1583'.'
      ExplicitLeft = 216
      ExplicitWidth = 355
    end
    object chkNote: TCheckBox
      Left = 603
      Top = 53
      Width = 136
      Height = 17
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      Caption = #1601#1585#1575' '#1582#1608#1575#1606#1610' '#1576#1575' '#1578#1608#1590#1610#1581#1575#1578
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
    Top = 475
    Width = 826
    ExplicitTop = 475
    ExplicitWidth = 826
    inherited btnClose: TBitBtn
      Caption = #1575#1606#1589#1585#1575#1601
      Glyph.Data = {00000000}
      ModalResult = 2
      TabOrder = 5
    end
    object BitBtn1: TBitBtn
      Left = 745
      Top = 6
      Width = 75
      Height = 25
      Caption = #1578#1571#1610#1610#1600#1600#1600#1583
      Default = True
      ModalResult = 1
      TabOrder = 4
    end
    object BitBtn2: TBitBtn
      Left = 166
      Top = 6
      Width = 75
      Height = 25
      Action = actSearch
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 0
    end
    object BitBtn3: TBitBtn
      Left = 87
      Top = 6
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 1
    end
    object BitBtn4: TBitBtn
      Left = 325
      Top = 6
      Width = 75
      Height = 25
      Action = actPrint
      Caption = #1670#1575#1662
      TabOrder = 2
    end
    object BitBtn5: TBitBtn
      Left = 245
      Top = 6
      Width = 75
      Height = 25
      Action = actExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 3
    end
    object btnFilter: TBitBtn
      Left = 404
      Top = 6
      Width = 75
      Height = 25
      Action = actFilter
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 6
    end
  end
  object StatusBar1: TStatusBar [2]
    Left = 0
    Top = 437
    Width = 826
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
    Top = 456
    Width = 826
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
    Top = 396
    Width = 826
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    BevelWidth = 2
    BorderWidth = 2
    BorderStyle = bsSingle
    TabOrder = 4
    object lblSumChecks: TLabel
      Left = 4
      Top = 4
      Width = 473
      Height = 37
      Alignment = taRightJustify
      AutoSize = False
      Caption = #1580#1605#1593' '#1587#1591#1585#1607#1575#1610' '#1575#1606#1578#1582#1575#1576' '#1588#1583#1607
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
      Left = 742
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
      Left = 661
      Top = 5
      Width = 75
      Height = 27
      Action = actSlelectInverse
      Align = alRight
      Caption = #1575#1606#1578#1582#1575#1576' '#1605#1593#1603#1608#1587
      TabOrder = 1
    end
    object CheckBox1: TCheckBox
      AlignWithMargins = True
      Left = 598
      Top = 5
      Width = 57
      Height = 27
      Align = alRight
      Alignment = taLeftJustify
      Caption = '&'#1601#1610#1604#1578#1585
      TabOrder = 2
      OnClick = CheckBox1Click
    end
    object chkSumActive: TCheckBox
      AlignWithMargins = True
      Left = 472
      Top = 5
      Width = 120
      Height = 27
      Align = alRight
      Alignment = taLeftJustify
      Caption = '&'#1605#1581#1575#1587#1576#1607' '#1601#1593#1575#1604' '#1576#1575#1588#1583
      TabOrder = 3
      OnClick = DBGrid1DblClick
    end
  end
  object DBGrid1: TCedarDbgrid [5]
    Left = 0
    Top = 73
    Width = 826
    Height = 323
    Align = alClient
    Color = clCream
    DataSource = srcChecks
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
    OddRowColor = clInfoBk
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    RowHeight = 18
    SearchPanel.Enabled = True
    SortLocal = True
    TabOrder = 5
    OnCellClick = DBGrid1CellClick
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
        FieldName = '_checked'
        Footers = <>
        Width = 32
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CheckNumber'
        Footers = <>
        Width = 36
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CheckDate'
        Footers = <>
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
        Width = 68
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ItemAmount'
        Footers = <>
        Width = 60
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CheckCounter'
        Footers = <>
        Width = 53
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'FormCaption'
        Footers = <>
        Width = 40
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CashWage'
        Footers = <>
        Width = 44
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ItemAmount_CashWage'
        Footers = <>
        Width = 52
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AmountDelay'
        Footers = <>
        Width = 62
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ItemNote'
        Footers = <>
        Width = 45
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'FormNumber'
        Footers = <>
        Width = 52
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'FormDate'
        Footers = <>
        Width = 47
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CustomerID1'
        Footers = <>
        Width = 49
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CustName1'
        Footers = <>
        Width = 67
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CustomerID2'
        Footers = <>
        Width = 48
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CustName'
        Footers = <>
        Width = 61
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CustName2'
        Footers = <>
        Width = 69
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = '_RowID'
        Footers = <>
        Width = 61
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
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
  end
  object qryChecks: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandTimeout = 0
    Parameters = <>
    Left = 136
    Top = 160
    object qryChecks_RowID: TBCDField
      Tag = 3
      DisplayLabel = #1578#1585#1578#1610#1576' '#1575#1606#1578#1582#1575#1576
      FieldName = '_RowID'
      Precision = 18
      Size = 2
    end
    object qryChecks_checked: TBCDField
      Tag = 3
      DisplayLabel = #1575#1606#1578#1582#1575#1576
      FieldName = '_checked'
      Precision = 18
      Size = 2
    end
    object qryChecksFormItemID: TIntegerField
      FieldName = 'FormItemID'
    end
    object qryChecksCheckNumber: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '
      FieldName = 'CheckNumber'
      FixedChar = True
      Size = 15
    end
    object qryChecksCheckDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1587#1585#1585#1587#1610#1583
      FieldName = 'CheckDate'
      FixedChar = True
      Size = 10
    end
    object qryChecksBankName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1576#1575#1606#1603
      FieldName = 'BankName'
    end
    object qryChecksAccountNumber: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
      FieldName = 'AccountNumber'
      FixedChar = True
      Size = 15
    end
    object qryChecksItemAmount: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'ItemAmount'
      currency = True
      Precision = 19
    end
    object qryChecksItemNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'ItemNote'
      Size = 255
    end
    object qryChecksFormNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'FormNumber'
    end
    object qryChecksFormDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1601#1585#1605
      FieldName = 'FormDate'
      FixedChar = True
      Size = 10
    end
    object qryChecksCustName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1605#1588#1578#1585#1610
      FieldName = 'CustName'
      Size = 120
    end
    object qryChecksCustomerID2: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1588#1578#1585#1610' '
      FieldName = 'CustomerID2'
    end
    object qryChecksCustName2: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1605#1588#1578#1585#1610'2'
      FieldName = 'CustName2'
      Size = 60
    end
    object qryChecksFormType: TSmallintField
      FieldName = 'FormType'
    end
    object qryChecksFormCaption: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1601#1585#1605
      FieldName = 'FormCaption'
      Size = 50
    end
    object qryChecksAccountNumberNew: TStringField
      FieldName = 'AccountNumberNew'
      Size = 60
    end
    object qryChecksCustomerID1: TIntegerField
      DisplayLabel = #1605#1588#1578#1585#1740'1'
      FieldName = 'CustomerID1'
    end
    object qryChecksCustName1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1605#1588#1578#1585#1610'1'
      FieldName = 'CustName1'
      Size = 120
    end
    object qryCheckspreFormItemID: TIntegerField
      FieldName = 'preFormItemID'
    end
    object qryChecksBudgetCode: TIntegerField
      FieldName = 'BudgetCode'
    end
    object qryChecksAmountArz: TFloatField
      FieldName = 'AmountArz'
    end
    object qryChecksCashWage: TBCDField
      DisplayLabel = #1576#1607#1585#1607' '#1608#1575#1605
      FieldName = 'CashWage'
      currency = True
      Precision = 19
    end
    object qryChecksPayTypes: TIntegerField
      FieldName = 'PayTypes'
    end
    object qryChecksTopicTypes: TIntegerField
      FieldName = 'TopicTypes'
    end
    object qryChecksTopicTypesI: TIntegerField
      FieldName = 'TopicTypesI'
    end
    object qryChecksDayDelay: TIntegerField
      FieldName = 'DayDelay'
      ReadOnly = True
    end
    object qryChecksDayDelay2: TIntegerField
      FieldName = 'DayDelay2'
      ReadOnly = True
    end
    object qryChecksAmountDelay: TBCDField
      DisplayLabel = #1580#1585#1610#1605#1607' '#1583#1610#1585#1603#1585#1583
      FieldName = 'AmountDelay'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryChecksAmountDelay2: TBCDField
      DisplayLabel = #1580#1585#1610#1605#1607' '#1583#1610#1585#1603#1585#1583'2'
      FieldName = 'AmountDelay2'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryChecksAmountDelayOzviyat: TBCDField
      DisplayLabel = #1580#1585#1610#1605#1607' '#1583#1610#1585#1603#1585#1583' '#1593#1590#1608#1610#1578
      FieldName = 'AmountDelayOzviyat'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryChecksItemAmount_CashWage: TBCDField
      DisplayLabel = #1575#1589#1604' '#1608#1601#1585#1593
      FieldName = 'ItemAmount_CashWage'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryChecksServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryChecksFormID: TIntegerField
      FieldName = 'FormID'
    end
    object qryChecksCheckCounter: TIntegerField
      Tag = 3
      DisplayLabel = #1662#1588#1578' '#1606#1605#1585#1607
      FieldName = 'CheckCounter'
    end
    object qryChecksYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryChecksMTopicCode: TLargeintField
      FieldName = 'MTopicCode'
    end
    object qryChecksMDetailCode: TStringField
      FieldName = 'MDetailCode'
      Size = 12
    end
    object qryChecksMCTopicCode: TStringField
      FieldName = 'MCTopicCode'
      Size = 12
    end
    object qryChecksMCTopicCode2: TStringField
      FieldName = 'MCTopicCode2'
      Size = 12
    end
    object qryChecksMCTopicCode3: TStringField
      FieldName = 'MCTopicCode3'
      Size = 12
    end
    object qryChecksTopicCode: TLargeintField
      FieldName = 'TopicCode'
    end
    object qryChecksDetailCode: TStringField
      FieldName = 'DetailCode'
      Size = 12
    end
    object qryChecksCTopicCode: TStringField
      FieldName = 'CTopicCode'
      Size = 12
    end
    object qryChecksCTopicCode2: TStringField
      FieldName = 'CTopicCode2'
      Size = 12
    end
    object qryChecksAidInfoNo: TStringField
      Tag = 3
      FieldName = 'AidInfoNo'
      Size = 40
    end
    object qryChecksCTopicCode3: TStringField
      FieldName = 'CTopicCode3'
      Size = 12
    end
  end
  object srcChecks: TDataSource
    DataSet = qryChecks
    Left = 288
    Top = 144
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
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
    Left = 520
    Top = 208
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 20638
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        OnGetText = ppLabel1GetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 75671
        mmTop = 794
        mmWidth = 51858
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578' '#1670#1603#1607#1575#1610' '#1602#1575#1576#1604' '#1608#1575#1711#1584#1575#1585#1610' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5842
        mmLeft = 85169
        mmTop = 6879
        mmWidth = 32597
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 0
        mmTop = 11113
        mmWidth = 203300
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        OnGetText = ppLabel3GetText
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1670#1575#1662
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6615
        mmLeft = 1058
        mmTop = 3969
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1585#1583#1610#1601
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 194205
        mmTop = 15610
        mmWidth = 5556
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1576#1575#1606#1603
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 177271
        mmTop = 15610
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1588#1593#1576#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 152400
        mmTop = 15610
        mmWidth = 7144
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1670#1603
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 128323
        mmTop = 15610
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1670#1603
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 108479
        mmTop = 15610
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594' '#1670#1603
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4657
        mmLeft = 88287
        mmTop = 15610
        mmWidth = 8636
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1605#1578#1593#1607#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4657
        mmLeft = 67733
        mmTop = 15610
        mmWidth = 8043
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 18785
        mmWidth = 203300
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4763
        mmLeft = 76465
        mmTop = 17198
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4763
        mmLeft = 104775
        mmTop = 17198
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4763
        mmLeft = 119856
        mmTop = 17198
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4763
        mmLeft = 142875
        mmTop = 16669
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4763
        mmLeft = 167482
        mmTop = 17463
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4763
        mmLeft = 191559
        mmTop = 17198
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'BankName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4763
        mmLeft = 169598
        mmTop = 265
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'AccountNumber'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 145786
        mmTop = 265
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'CheckNumber'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5927
        mmLeft = 120915
        mmTop = 0
        mmWidth = 21696
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'CheckDate'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 106098
        mmTop = 0
        mmWidth = 13758
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'ItemAmount'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 78846
        mmTop = 0
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'CustName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 1852
        mmTop = 265
        mmWidth = 74348
        BandType = 4
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'preFormItemID'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5927
        mmLeft = 193411
        mmTop = 265
        mmWidth = 7408
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 16404
      mmPrintPosition = 0
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        ParentWidth = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 1058
        mmWidth = 203300
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        Border.mmPadding = 0
        Caption = #1578#1593#1583#1575#1583' '#1670#1603#1607#1600#1600#1600#1575':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5292
        mmLeft = 44450
        mmTop = 3440
        mmWidth = 14817
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1605#1576#1604#1594' '#1670#1603#1607#1600#1600#1600#1575':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5419
        mmLeft = 44450
        mmTop = 10054
        mmWidth = 18881
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'AccountNumber'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7144
        mmLeft = 24871
        mmTop = 2646
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        Border.mmPadding = 0
        DataField = 'ItemAmount'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7144
        mmLeft = 5027
        mmTop = 8731
        mmWidth = 37042
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
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcChecks
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 352
    Top = 208
  end
  object qryInsert: TADOQuery
    Connection = DmF.adcBSell
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'NewFormItemID'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'NewFormID'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'NewRow'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'LoanActive'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PayDate'
        DataType = ftWideString
        Size = 1
        Value = Null
      end
      item
        Name = 'validDate'
        DataType = ftWideString
        Size = 1
        Value = Null
      end
      item
        Name = 'CheckDate2'
        DataType = ftWideString
        Size = 1
        Value = Null
      end
      item
        Name = 'CheckType'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'CheckType2'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ItemNote'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'OldFormItemID'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'NewBudgetCode'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'AccountNumberNew'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'AmountArz'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'CashWage'
        DataType = ftFloat
        Size = 1
        Value = 0.000000000000000000
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
      end
      item
        Name = 'TopicTypesI'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'FirstUser'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'TopicCode'
        DataType = ftLargeint
        Size = -1
        Value = '0'
      end
      item
        Name = 'DetailCode'
        DataType = ftInteger
        Size = -1
        Value = 0
      end
      item
        Name = 'CTopicCode'
        DataType = ftInteger
        Size = -1
        Value = 0
      end
      item
        Name = 'CTopicCode2'
        DataType = ftInteger
        Size = -1
        Value = 0
      end
      item
        Name = 'CTopicCode3'
        DataType = ftInteger
        Size = -1
        Value = 0
      end
      item
        Name = 'DayDelay'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'AmountDelay'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PerServerID'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'CheckCounter'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'CheckNumber'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'AidInfoDate'
        DataType = ftWideString
        Size = 1
        Value = Null
      end
      item
        Name = 'CheckFor'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PrvYearID'
        Size = -1
        Value = Null
      end
      item
        Name = 'OldFormItemID1'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearID2'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ServerID2'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'FormID'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      'INSERT INTO FormItems'
      
        '   (FormItemID, FormID, Row, CheckNumber,HunterCode, CheckDate, ' +
        'CheckType, ItemAmount,'
      '    ItemNote, BankName, AccountNumber, City, CustomerID2,'
      
        '                      preFormItemID,BudgetCode, AccountNumberNew' +
        ', AmountArz ,CashWage,YearID,ServerID  , TopicTypesI , FirstUser'
      
        '                 , TopicCode, DetailCode, CTopicCode, CTopicCode' +
        '2, CTopicCode3  ,  DayDelay  , AmountDelay , PerServerID , Check' +
        'Counter'
      
        '                 , AidInfoNo , AidInfoDate , CheckFor , PrvYearI' +
        'D , SyadSystem ,OtherNationalCode'
      
        ', ProductCode, LineCorrosion, VatCo,  PO, InsertDatei, ArzAmount' +
        'Exchange, ArzRateExchange, ArzTypeIDExchange, SwiftCode, IBAN )'
      
        'SELECT     :NewFormItemID , :NewFormID , :NewRow, CheckNumber, H' +
        'unterCode,'
      'case when :LoanActive = 1 then :PayDate else'
      
        '    case when :validDate = 2 then :CheckDate2 else  CheckDate en' +
        'd  end  as CheckDate  ,'
      
        '    case when :CheckType = 2 then :CheckType2 else  CheckType en' +
        'd AS CheckType,'
      
        '    ItemAmount, ISNULL( ItemNote ,'#39#39') + :ItemNote   , BankName, ' +
        'AccountNumber, City,'
      
        '                      CustomerID2, :OldFormItemID,:NewBudgetCode' +
        ' , :AccountNumberNew, :AmountArz'
      
        '                     , :CashWage , :YearID , :ServerID , :TopicT' +
        'ypesI , :FirstUser'
      
        ', :TopicCode, :DetailCode, :CTopicCode, :CTopicCode2, :CTopicCod' +
        'e3  ,  :DayDelay  , :AmountDelay , :PerServerID , :CheckCounter'
      
        ', :CheckNumber, :AidInfoDate , :CheckFor , :PrvYearID , SyadSyst' +
        'em , OtherNationalCode'
      
        ', ProductCode, LineCorrosion, VatCo,  PO, InsertDatei, ArzAmount' +
        'Exchange, ArzRateExchange, ArzTypeIDExchange, SwiftCode, IBAN'
      'FROM         FormItems'
      'WHERE     (FormItemID = :OldFormItemID1 )'
      'and  (YearID =:YearID2) '
      'and  (ServerID =:ServerID2 ) '
      'and  (FormID =:FormID  ) ')
    Left = 178
    Top = 279
  end
end

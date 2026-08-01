inherited RptSalaryAdjustmentF: TRptSalaryAdjustmentF
  Left = 168
  Top = 148
  Caption = #1711#1586#1575#1585#1588' '#1578#1593#1583#1740#1604' '#1581#1602#1608#1602' '
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 480
    Height = 37
    ExplicitLeft = -8
    ExplicitTop = 486
    ExplicitHeight = 37
    inherited BtnReject: TBitBtn
      Top = 4
      Height = 29
      Margins.Top = 3
      Margins.Bottom = 3
      ExplicitHeight = 23
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 707
      Top = 4
      Width = 75
      Height = 29
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 1
      ExplicitLeft = 696
      ExplicitTop = 8
      ExplicitHeight = 25
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 4
      Width = 75
      Height = 29
      Action = actSentExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 2
      ExplicitLeft = 250
      ExplicitTop = 8
      ExplicitHeight = 25
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 85
      Top = 4
      Width = 75
      Height = 29
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 3
      ExplicitLeft = 94
      ExplicitTop = 8
      ExplicitHeight = 25
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 166
      Top = 4
      Width = 75
      Height = 29
      Action = actSearch_
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
      ExplicitLeft = 172
      ExplicitTop = 8
      ExplicitHeight = 25
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 626
      Top = 4
      Width = 75
      Height = 29
      Action = actPrint
      Align = alRight
      Caption = #1670#1575#1662
      TabOrder = 5
      ExplicitTop = 3
    end
  end
  inherited Panel2: TPanel
    inherited lblCaption: TLabel
      Left = 615
      Width = 125
      Caption = #1711#1586#1575#1585#1588' '#1578#1593#1583#1740#1604' '#1581#1602#1608#1602' '
      ExplicitLeft = 615
      ExplicitWidth = 125
    end
  end
  inherited Panel3: TPanel
    Height = 427
    ExplicitHeight = 427
    object Panel4: TPanel
      Left = 2
      Top = 2
      Width = 782
      Height = 423
      Align = alClient
      TabOrder = 0
      object DBGrid1: TCedarDbgrid
        Left = 1
        Top = 1
        Width = 780
        Height = 421
        Align = alClient
        Color = clCream
        DataSource = srcCross
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
        OddRowColor = clWhite
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDblClickOptimizeColWidth, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove]
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
  end
  inherited ActionList: TActionList
    Left = 136
    Top = 0
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actShow: TAction
      Caption = #1606#1605#1575#1610#1588
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actChart: TAction
      Caption = #1606#1605#1608#1583#1575#1585
    end
    object actSentExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSentExcelExecute
    end
    object actShowForms: TAction
      Caption = #1606#1605#1575#1610#1588' '#1601#1585#1605
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      Hint = ' '
      ShortCut = 118
      OnExecute = actPrintExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 232
    Top = 1
  end
  object srcCross: TDataSource
    DataSet = qryCross
    Left = 448
    Top = 173
  end
  object qryCross: TADOQuery
    Connection = DmF.adcsalary
    LockType = ltReadOnly
    Parameters = <>
    Left = 354
    Top = 207
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcCross
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 488
    Top = 261
    MasterDataPipelineName = 'ppDBPipeline2'
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A5'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 147902
    PrinterSetup.PaperSize = 11
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
    PreviewFormSettings.ZoomPercentage = 120
    PreviewFormSettings.ZoomSetting = zsPercentage
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
    Left = 512
    Top = 360
    Version = '23.0'
    mmColumnWidth = 203200
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
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
end

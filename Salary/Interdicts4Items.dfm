inherited Interdicts4ItemsF: TInterdicts4ItemsF
  Left = 412
  Top = 149
  Caption = #1604#1610#1587#1578' '#1575#1581#1603#1575#1605' '#1576#1575' '#1575#1591#1604#1575#1593#1575#1578' '#1605#1586#1575#1610#1575
  ClientHeight = 466
  ClientWidth = 1202
  OnResize = FormResize
  ExplicitWidth = 1210
  ExplicitHeight = 497
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 425
    Width = 1202
    ExplicitTop = 425
    ExplicitWidth = 1202
    DesignSize = (
      1202
      41)
    object BitBtn3: TBitBtn
      Left = 1119
      Top = 8
      Width = 75
      Height = 25
      Action = actShowForm
      Anchors = [akRight, akBottom]
      Caption = #1606#1605#1575#1610#1588' '#1581#1603#1605
      TabOrder = 1
    end
    object BitBtn7: TBitBtn
      Left = 1040
      Top = 8
      Width = 75
      Height = 25
      Action = actFilter
      Anchors = [akRight, akBottom]
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 2
    end
    object BitBtn2: TBitBtn
      Left = 960
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Anchors = [akRight, akBottom]
      Caption = #1670#1575#1662' (F7)'
      TabOrder = 3
    end
    object BitBtn4: TBitBtn
      Left = 247
      Top = 8
      Width = 75
      Height = 25
      Action = actSendToExcel
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      TabOrder = 4
    end
    object BitBtn5: TBitBtn
      Left = 168
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 5
    end
    object BitBtn6: TBitBtn
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 6
    end
    object BitBtn1: TBitBtn
      Left = 881
      Top = 8
      Width = 75
      Height = 25
      Action = ActChangeState
      Anchors = [akRight, akBottom]
      Caption = #1578#1594#1610#1610#1585' '#1608#1590#1593#1610#1578' '
      TabOrder = 7
    end
    object BitBtn8: TBitBtn
      Left = 326
      Top = 8
      Width = 75
      Height = 25
      Caption = #1587#1575#1610#1585' '#1575#1605#1603#1575#1606#1575#1578
      TabOrder = 8
      OnClick = BitBtn8Click
    end
  end
  inherited Panel2: TPanel
    Width = 1202
    ExplicitWidth = 1202
    DesignSize = (
      1202
      53)
    inherited ImgTemplate: TImage
      Left = 1160
      ExplicitLeft = 684
    end
    inherited lblCaption: TLabel
      Left = 1094
      ExplicitLeft = 1094
    end
    inherited lblBaseDate: TLabel
      Left = 343
      ExplicitLeft = 343
    end
    object pnlCompany: TPanel
      Left = 1
      Top = 1
      Width = 207
      Height = 51
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      Visible = False
      DesignSize = (
        207
        51)
      object Label1: TLabel
        Left = 125
        Top = 5
        Width = 69
        Height = 13
        Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1588#1585#1603#1578
      end
      object SpeedButton1: TSpeedButton
        Left = 10
        Top = 0
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SpeedButton1Click
      end
      object DBEdit1: TDBEdit
        Left = 35
        Top = 1
        Width = 78
        Height = 21
        DataField = 'CompanyCode'
        DataSource = srcCompanies
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 11
        Top = 24
        Width = 187
        Height = 19
        Color = 15987699
        Ctl3D = False
        DataField = 'CompanyName_L1'
        DataSource = srcCompanies
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBNavigator1: TDBNavigator
        Left = 10
        Top = 24
        Width = 188
        Height = 19
        DataSource = srcCompanies
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Anchors = [akLeft, akBottom]
        Flat = True
        TabOrder = 2
      end
    end
  end
  inherited Panel3: TPanel
    Width = 1202
    Height = 372
    ExplicitWidth = 1202
    ExplicitHeight = 372
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 1198
      Height = 18
      Align = alTop
      TabOrder = 1
      object lblPersonelCode: TLabel
        Left = 1102
        Top = 1
        Width = 95
        Height = 13
        Align = alRight
        Caption = #1605#1581#1583#1608#1583#1607' '#1603#1583' '#1662#1585#1587#1606#1604#1610'  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblOfficeCode: TLabel
        Left = 1
        Top = 1
        Width = 122
        Height = 13
        Align = alLeft
        Caption = #1605#1581#1583#1608#1583#1607' '#1603#1583' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610'  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
    object DBGrid1: TCedarDbgrid
      Left = 2
      Top = 20
      Width = 1198
      Height = 350
      Align = alClient
      Color = clCream
      ColumnDefValues.DropDownShowTitles = True
      ColumnDefValues.Title.TitleButton = True
      DataSource = srcInterdictList
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
      FooterParams.Font.Height = -12
      FooterParams.Font.Name = 'Tahoma'
      FooterParams.Font.Style = [fsBold]
      FooterParams.ParentFont = False
      FooterParams.VertLines = False
      GridLineParams.VertEmptySpaceStyle = dessNonEh
      HorzScrollBar.ExtraPanel.NavigatorButtons = [nbFirstEh, nbPriorEh, nbNextEh, nbLastEh, nbRefreshEh]
      HorzScrollBar.ExtraPanel.Visible = True
      IndicatorTitle.ShowDropDownSign = True
      IndicatorTitle.TitleButton = True
      OddRowColor = clGradientInactiveCaption
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      RowHeight = 21
      SearchPanel.Enabled = True
      SearchPanel.FilterOnTyping = True
      SortLocal = True
      TabOrder = 0
      TitleParams.Color = clBtnFace
      TitleParams.SecondColor = clCream
      TitleParams.SortMarkerStyle = smstDefaultEh
      OnDblClick = DBGrid1DblClick
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnKeyPress = DBGrid1KeyPress
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  inherited ActionList: TActionList
    Left = 560
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actShowForm: TAction
      Caption = #1606#1605#1575#1610#1588' '#1601#1585#1605
      OnExecute = actShowFormExecute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662' (F7)'
      OnExecute = actPrintExecute
    end
    object actSendToExcel: TAction
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      OnExecute = actSendToExcelExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object ActChangeState: TAction
      Caption = #1578#1594#1610#1610#1585' '#1608#1590#1593#1610#1578' '
      Visible = False
      OnExecute = ActChangeStateExecute
    end
    object actPrintVijeh: TAction
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
      OnExecute = actPrintVijehExecute
    end
    object actSMS: TAction
      Caption = #1575#1585#1587#1575#1604' '#1662#1610#1575#1605#1603
      OnExecute = actSMSExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 456
  end
  object srcInterdictList: TDataSource
    DataSet = qryInterdictList
    Left = 56
    Top = 176
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 216000
    PrinterSetup.mmPaperWidth = 279000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'D:\Projects\Fara\Salary\Exe\Report\Interdicts4ItemsF.rtm'
    Units = utMillimeters
    AllowPrintToFile = True
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
    Left = 544
    Top = 224
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 39952
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
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
        mmLeft = 107421
        mmTop = 0
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCaption'
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578' '#1575#1581#1603#1575#1605' '#1662#1585#1587#1606#1604' '#1576#1578#1601#1603#1610#1603' '#1606#1608#1593' '#1581#1603#1605
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
        mmLeft = 101266
        mmTop = 6350
        mmWidth = 64177
        BandType = 0
        LayerName = Foreground
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        ParentWidth = True
        mmHeight = 7408
        mmLeft = 0
        mmTop = 32544
        mmWidth = 266300
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 247121
        mmTop = 32544
        mmWidth = 2910
        BandType = 0
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 212196
        mmTop = 32544
        mmWidth = 2910
        BandType = 0
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 229659
        mmTop = 32544
        mmWidth = 2910
        BandType = 0
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 191559
        mmTop = 32544
        mmWidth = 2910
        BandType = 0
        LayerName = Foreground
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 118534
        mmTop = 32544
        mmWidth = 3175
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1581#1603#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 247650
        mmTop = 33338
        mmWidth = 17727
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1581#1603#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 230188
        mmTop = 33602
        mmWidth = 16669
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1575#1580#1585#1575#1581#1603#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 212725
        mmTop = 33867
        mmWidth = 16669
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label101'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 192088
        mmTop = 33338
        mmWidth = 19844
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = #1605#1588#1582#1589#1575#1578' '#1662#1585#1587#1606#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 119063
        mmTop = 33073
        mmWidth = 72231
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SysVarPageNo1'
        OnGetText = ppSystemVariable2GetText
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
        mmTop = 14817
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lbprintdate'
        OnGetText = ppLabel7GetText
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
        mmTop = 9790
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        OnGetText = ppLabel5GetText
        Border.mmPadding = 0
        Caption = #1605#1581#1583#1608#1583#1607' '#1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 242359
        mmTop = 25665
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground
      end
      object ppLine20: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line20'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 0
        mmTop = 24871
        mmWidth = 266171
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 89959
        mmTop = 33073
        mmWidth = 28310
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = ' '#1662#1587#1578' '#1587#1575#1586#1605#1575#1606#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 51329
        mmTop = 33073
        mmWidth = 37835
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = #1585#1578#1576#1607' '#1588#1594#1604#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 17727
        mmTop = 33338
        mmWidth = 32808
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        Border.mmPadding = 0
        Caption = #1662#1575#1610#1575#1606' '#1602#1585#1575#1585' '#1583#1575#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 529
        mmTop = 33338
        mmWidth = 16404
        BandType = 0
        LayerName = Foreground
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 50800
        mmTop = 32544
        mmWidth = 3175
        BandType = 0
        LayerName = Foreground
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 89429
        mmTop = 32544
        mmWidth = 3175
        BandType = 0
        LayerName = Foreground
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line101'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 17198
        mmTop = 32544
        mmWidth = 3175
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        OnGetText = ppLabel16GetText
        Border.mmPadding = 0
        Caption = #1605#1581#1583#1608#1583#1607' '#1588#1605#1575#1585#1607' '#1608#1578#1575#1585#1610#1582' '#1581#1603#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 120915
        mmTop = 25665
        mmWidth = 26723
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        OnGetText = ppLabel14GetText
        Border.mmPadding = 0
        Caption = #1605#1581#1583#1608#1583#1607' '#1603#1583' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6350
        mmLeft = 9790
        mmTop = 25400
        mmWidth = 25400
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = #1606#1608#1593' '#1581#1603#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 242359
        mmTop = 19315
        mmWidth = 14288
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'InterdicType_L1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5556
        mmLeft = 163513
        mmTop = 19579
        mmWidth = 75406
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        OnGetText = ppLabel17GetText
        Border.mmPadding = 0
        Caption = #1603#1583' '#1608#1606#1575#1605' '#1588#1585#1603#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 242359
        mmTop = 13229
        mmWidth = 19050
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 263261
        mmTop = 0
        mmWidth = 2910
        BandType = 4
        LayerName = Foreground
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 247121
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 229659
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line16'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 17198
        mmTop = 0
        mmWidth = 2910
        BandType = 4
        LayerName = Foreground
      end
      object ppLine17: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line17'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 50800
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine18: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line18'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 89429
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine21: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line21'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 0
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'InterdictNo'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 247650
        mmTop = 0
        mmWidth = 17727
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'InterdictDate'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 230188
        mmTop = 0
        mmWidth = 16669
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'OfficeName_L1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6096
        mmLeft = 89959
        mmTop = 0
        mmWidth = 28310
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'JobName_L1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 51329
        mmTop = 0
        mmWidth = 37835
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'InterdicEndDate'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 529
        mmTop = 0
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'grade_L1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 17727
        mmTop = 0
        mmWidth = 32808
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'PersonelName_L1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 119063
        mmTop = 0
        mmWidth = 72231
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'PersonelNo'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 192088
        mmTop = 0
        mmWidth = 19844
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText101'
        Border.mmPadding = 0
        DataField = 'InterdicStartDate'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 212725
        mmTop = 0
        mmWidth = 16669
        BandType = 4
        LayerName = Foreground
      end
      object ppLine19: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line19'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 191559
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine22: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line22'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 118534
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine23: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line23'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 212196
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
      mmHeight = 7408
      mmPrintPosition = 0
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 266171
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 6350
        mmTop = 2381
        mmWidth = 266171
        BandType = 7
        LayerName = Foreground
      end
      object ppRegion1: TppRegion
        DesignLayer = ppDesignLayer1
        UserName = 'Region1'
        Caption = 'Region1'
        Visible = False
        mmHeight = 4763
        mmLeft = 73554
        mmTop = 5292
        mmWidth = 40746
        BandType = 7
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppRecFooterLine: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'RecFooterLine'
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 85461
          mmTop = 6879
          mmWidth = 13229
          BandType = 7
          LayerName = Foreground
        end
      end
      object ppRegion2: TppRegion
        DesignLayer = ppDesignLayer1
        UserName = 'Region2'
        Caption = 'Region2'
        Visible = False
        mmHeight = 4763
        mmLeft = 129911
        mmTop = 8467
        mmWidth = 40746
        BandType = 7
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppRecFooterLine2: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'RecFooterLine1'
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 139965
          mmTop = 9260
          mmWidth = 13229
          BandType = 7
          LayerName = Foreground
        end
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
    DataSource = srcInterdictList
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 624
    Top = 197
  end
  object qryCompanies: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryCompaniesAfterScroll
    Parameters = <
      item
        Name = 'CompanyCodeFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'CompanyCodeTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 999
      end>
    SQL.Strings = (
      
        'SELECT     acc.Companies.CompanyCode, acc.Companies.CompanyName_' +
        'L1, acc.Companies.CompanyName_L2, acc.CompaniesForUse.PrvCompany' +
        'Code'
      'FROM         acc.Companies LEFT OUTER JOIN'
      
        '                      acc.CompaniesForUse ON acc.Companies.Compa' +
        'nyCode = acc.CompaniesForUse.PrvCompanyCode'
      'WHERE     (acc.CompaniesForUse.PrvCompanyCode IS NULL)'
      
        'AND  ((acc.Companies.CompanyCode = 0)OR(acc.Companies.CompanyCod' +
        'e BETWEEN :CompanyCodeFrom AND :CompanyCodeTo ))   ')
    Left = 240
    Top = 13
    object qryCompaniesCompanyCode: TIntegerField
      FieldName = 'CompanyCode'
    end
    object qryCompaniesPrvCompanyCode: TStringField
      FieldName = 'PrvCompanyCode'
      ReadOnly = True
      Size = 10
    end
    object qryCompaniesCompanyName_L1: TStringField
      FieldName = 'CompanyName_L1'
      Size = 150
    end
    object qryCompaniesCompanyName_L2: TStringField
      FieldName = 'CompanyName_L2'
      Size = 150
    end
  end
  object srcCompanies: TDataSource
    DataSet = qryCompanies
    Left = 312
    Top = 13
  end
  object qryInterdictList: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryInterdictListAfterOpen
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      
        '// SELECT InterdictsList.InterdictID, InterdictsList.InterdictNo' +
        ', InterdictsList.InterdictDate, InterdictsList.PersonelNo, Inter' +
        'dictsList.subcompanyCode, InterdictsList.JobName_L1, InterdictsL' +
        'ist.JobName_L2, InterdictsList.grade_L1, InterdictsList.grade_L2' +
        ', InterdictsList.jobCity_L1, InterdictsList.jobCity_L2, Interdic' +
        'tsList.InterdicType_L1, InterdictsList.InterdicType_L2, Interdic' +
        'tsList.InterdicStartDate, InterdictsList.employDaytime, Interdic' +
        'tsList.KargozinyNote_L1, InterdictsList.KargozinyNote_L2, Interd' +
        'ictsList.OfficeName_L1, InterdictsList.OfficeName_L2,InterdictsL' +
        'ist.InterdicEndDate   , Pay.EmployeeInfo.PersonelName_L1 AS Pers' +
        'onelName_L1, Pay.EmployeeInfo.PersonelName_L2 AS PersonelName_L2' +
        ',   Pay.EmployeeInfo.licence_L1 AS licence_L1, Pay.EmployeeInfo.' +
        'licence_L2 AS licence_L2'
      
        '// ,EmployeeInfo.employDate, EmployeeInfo.studyField_L1, Employe' +
        'eInfo.finishEmployDate'
      '//'
      
        '//,(SELECT Amount FROM Pay.InterdictItems WHERE (SalaryID = 31) ' +
        'AND'
      
        '//(InterdictID = Pay.InterdictsList.InterdictID)) as Salary31_L1' +
        ','
      
        '//(SELECT Amount FROM Pay.InterdictItems WHERE (SalaryID = 117) ' +
        'AND'
      
        '// (InterdictID = Pay.InterdictsList.InterdictID)) as Salary117_' +
        'L1,'
      
        '// (SELECT Amount FROM Pay.InterdictItems WHERE (SalaryID = 118)' +
        ' AND (InterdictID = Pay.InterdictsList.InterdictID)) as Salary11' +
        '8_L1,(SELECT Amount FROM Pay.InterdictItems WHERE (SalaryID = 11' +
        '9) AND (InterdictID = Pay.InterdictsList.InterdictID)) as Salary' +
        '119_L1,(SELECT Amount FROM Pay.InterdictItems WHERE (SalaryID = ' +
        '126) AND (InterdictID = Pay.InterdictsList.InterdictID)) as Sala' +
        'ry126_L1,(SELECT Amount FROM Pay.InterdictItems WHERE (SalaryID ' +
        '= 127) AND (InterdictID = Pay.InterdictsList.InterdictID)) as Sa' +
        'lary127_L1,(SELECT Amount FROM Pay.InterdictItems WHERE (SalaryI' +
        'D = 130) AND (InterdictID = Pay.InterdictsList.InterdictID)) as ' +
        'Salary130_L1,(SELECT Amount FROM Pay.InterdictItems WHERE (Salar' +
        'yID = 131) AND (InterdictID = Pay.InterdictsList.InterdictID)) a'
      '//FROM Pay.InterdictsList INNER JOIN'
      
        '//Pay.EmployeeInfo ON Pay.InterdictsList.PersonelNo = Pay.Employ' +
        'eeInfo.PersonelNo'
      
        '//ORDER BY Pay.InterdictsList.InterdictDate, Pay.InterdictsList.' +
        'InterdictNo'
      '')
    Left = 376
    Top = 144
  end
  object PopMnuState: TPopupMenu
    Left = 344
    Top = 386
    object N1: TMenuItem
      Caption = #1578#1594#1610#1610#1585' '#1608#1590#1593#1610#1578' '#1576#1607' '#1662#1610#1610#1588' '#1606#1608#1610#1587
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1578#1594#1610#1610#1585' '#1608#1590#1593#1610#1578' '#1576#1607' '#1606#1607#1575#1574#1610
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1578#1594#1610#1610#1585' '#1608#1590#1593#1610#1578' '#1576#1607' '#1576#1575#1610#1711#1575#1606#1610
      OnClick = N3Click
    end
  end
  object qryItems: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT        Pay.FormsInfo.InfoID, Pay.InterdictItems.SalaryID,' +
        ' Pay.FormsInfo.InfoName_L1, Pay.FormsInfo.InfoName_L2'
      'FROM            Pay.InterdictItems INNER JOIN'
      
        '                         Pay.FormsInfo ON Pay.InterdictItems.Sal' +
        'aryID = Pay.FormsInfo.FormInfoID'
      
        'GROUP BY Pay.InterdictItems.SalaryID, Pay.FormsInfo.InfoName_L1,' +
        ' Pay.FormsInfo.InfoName_L2, Pay.FormsInfo.InfoID'
      'ORDER BY Pay.FormsInfo.InfoID, Pay.InterdictItems.SalaryID')
    Left = 128
    Top = 341
    object qryItemsSalaryID: TIntegerField
      DisplayLabel = #1587#1585#1610#1575#1604
      FieldName = 'SalaryID'
    end
    object qryItemsInfoName_L1: TStringField
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object qryItemsInfoName_L2: TStringField
      FieldName = 'InfoName_L2'
      Size = 255
    end
  end
  object PopMnuPrint: TPopupMenu
    Left = 521
    Top = 384
    object AllClick: TMenuItem
      Caption = #1575#1586' Hint '#1608' Name '#1608'Tag'#1575#1587#1578#1601#1575#1583#1607' '#1588#1583#1607
      Visible = False
      OnClick = AllClickClick
    end
    object Interdicts4ItemsF: TMenuItem
      Caption = #1670#1575#1662' '#1576#1578#1601#1603#1610#1603' '#1606#1608#1593' '#1581#1603#1605
      Hint = 'InterdicType_L1'
      OnClick = AllClickClick
    end
    object AllClickRow: TMenuItem
      Tag = 30
      Caption = #1575#1586' Hint '#1608' Name '#1608'Tag'#1575#1587#1578#1601#1575#1583#1607' '#1588#1583#1607
      Hint = 'AllClick'
      Visible = False
      OnClick = AllClickRowClick
    end
    object N7: TMenuItem
      Caption = #1670#1575#1662' '#1576#1575' '#1593#1606#1575#1608#1610#1606' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1610#1575
      object Interdicts4ItemsFList1Row: TMenuItem
        Tag = 15
        Caption = #1610#1603' '#1587#1591#1585#1610
        OnClick = AllClickRowClick
      end
      object Interdicts4ItemsFList2Row: TMenuItem
        Tag = 30
        Caption = #1583#1608' '#1587#1591#1585#1610
        OnClick = AllClickRowClick
      end
    end
    object N4: TMenuItem
      Caption = #1670#1575#1662' '#1576#1578#1601#1603#1610#1603' '#1605#1583#1585#1603' '#1578#1581#1589#1610#1604#1610
      object Interdicts4ItemsFlicence1Row: TMenuItem
        Tag = 15
        Caption = #1610#1603' '#1587#1591#1585#1610
        Hint = 'licence_L1'
        OnClick = AllClickRowClick
      end
      object Interdicts4ItemsFlicence2Row: TMenuItem
        Tag = 30
        Caption = #1583#1608' '#1587#1591#1585#1610
        Hint = 'licence_L1'
        OnClick = AllClickRowClick
      end
    end
    object grade_L1: TMenuItem
      Caption = #1670#1575#1662' '#1576#1578#1601#1603#1610#1603' '#1585#1578#1576#1607' '#1588#1594#1604#1610
      object Interdicts4ItemsFgrade1Row: TMenuItem
        Tag = 15
        Caption = #1610#1603' '#1587#1591#1585#1610
        Hint = 'grade_L1'
        OnClick = AllClickRowClick
      end
      object Interdicts4ItemsFgrade2Row: TMenuItem
        Tag = 30
        Caption = #1583#1608' '#1587#1591#1585#1610
        Hint = 'grade_L1'
        OnClick = AllClickRowClick
      end
    end
    object N5: TMenuItem
      Caption = #1670#1575#1662' '#1576#1578#1601#1603#1610#1603' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
      object Interdicts4ItemsFOfficeName1Row: TMenuItem
        Tag = 15
        Caption = #1610#1603' '#1587#1591#1585#1610
        Hint = 'OfficeName_L1'
        OnClick = AllClickRowClick
      end
      object Interdicts4ItemsFOfficeName2Row: TMenuItem
        Tag = 30
        Caption = #1583#1608' '#1587#1591#1585#1610
        Hint = 'OfficeName_L1'
        OnClick = AllClickRowClick
      end
    end
  end
  object PopOther: TPopupMenu
    Left = 225
    Top = 352
    object N6: TMenuItem
      Action = actPrintVijeh
    end
    object N8: TMenuItem
      Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1610
      OnClick = N8Click
    end
  end
  object ppDBPipeline2: TppDBPipeline
    OpenDataSource = False
    UserName = 'DBPipeline2'
    Left = 352
    Top = 253
    object ppField1: TppField
      FieldAlias = 'InterdictID'
      FieldName = 'InterdictID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppField2: TppField
      FieldAlias = 'InterdictNo'
      FieldName = 'InterdictNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppField3: TppField
      FieldAlias = 'InterdictDate'
      FieldName = 'InterdictDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppField4: TppField
      FieldAlias = 'PersonelNo'
      FieldName = 'PersonelNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppField5: TppField
      FieldAlias = 'subcompanyCode'
      FieldName = 'subcompanyCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppField6: TppField
      FieldAlias = 'JobName_L1'
      FieldName = 'JobName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppField7: TppField
      FieldAlias = 'JobName_L2'
      FieldName = 'JobName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppField8: TppField
      FieldAlias = 'grade_L1'
      FieldName = 'grade_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppField9: TppField
      FieldAlias = 'grade_L2'
      FieldName = 'grade_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppField10: TppField
      FieldAlias = 'jobCity_L1'
      FieldName = 'jobCity_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppField11: TppField
      FieldAlias = 'jobCity_L2'
      FieldName = 'jobCity_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppField12: TppField
      FieldAlias = 'InterdicType_L1'
      FieldName = 'InterdicType_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppField13: TppField
      FieldAlias = 'InterdicType_L2'
      FieldName = 'InterdicType_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppField14: TppField
      FieldAlias = 'InterdicStartDate'
      FieldName = 'InterdicStartDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppField15: TppField
      FieldAlias = 'employDaytime'
      FieldName = 'employDaytime'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppField16: TppField
      FieldAlias = 'KargozinyNote_L1'
      FieldName = 'KargozinyNote_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppField17: TppField
      FieldAlias = 'KargozinyNote_L2'
      FieldName = 'KargozinyNote_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppField18: TppField
      FieldAlias = 'OfficeName_L1'
      FieldName = 'OfficeName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppField19: TppField
      FieldAlias = 'OfficeName_L2'
      FieldName = 'OfficeName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppField20: TppField
      FieldAlias = 'InterdicEndDate'
      FieldName = 'InterdicEndDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppField21: TppField
      FieldAlias = 'PersonelName_L1'
      FieldName = 'PersonelName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppField22: TppField
      FieldAlias = 'PersonelName_L2'
      FieldName = 'PersonelName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppField23: TppField
      FieldAlias = 'licence_L1'
      FieldName = 'licence_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppField24: TppField
      FieldAlias = 'licence_L2'
      FieldName = 'licence_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppField25: TppField
      FieldAlias = 'Salary31_L1'
      FieldName = 'Salary31_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppField26: TppField
      FieldAlias = 'Salary117_L1'
      FieldName = 'Salary117_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppField27: TppField
      FieldAlias = 'Salary118_L1'
      FieldName = 'Salary118_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppField28: TppField
      FieldAlias = 'Salary119_L1'
      FieldName = 'Salary119_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppField29: TppField
      FieldAlias = 'Salary126_L1'
      FieldName = 'Salary126_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppField30: TppField
      FieldAlias = 'Salary127_L1'
      FieldName = 'Salary127_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppField31: TppField
      FieldAlias = 'Salary130_L1'
      FieldName = 'Salary130_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppField32: TppField
      FieldAlias = 'a'
      FieldName = 'a'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
  end
end

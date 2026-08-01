inherited Interdicts4FormF: TInterdicts4FormF
  Left = 421
  Top = 157
  Caption = #1604#1610#1587#1578' '#1575#1581#1603#1575#1605' '#1603#1575#1585#1711#1586#1610#1606#1610
  ClientHeight = 473
  ClientWidth = 714
  ExplicitWidth = 722
  ExplicitHeight = 504
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 432
    Width = 714
    ExplicitTop = 434
    ExplicitWidth = 722
    inherited BtnReject: TBitBtn
      Left = 3
      Top = 8
      Height = 25
      Margins.Left = 2
      Margins.Top = 7
      Margins.Right = 2
      Margins.Bottom = 7
      ExplicitLeft = 3
      ExplicitTop = 8
      ExplicitHeight = 25
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 565
      Top = 8
      Width = 75
      Height = 25
      Margins.Left = 2
      Margins.Top = 7
      Margins.Right = 2
      Margins.Bottom = 7
      Action = actShowForm
      Align = alRight
      Caption = #1606#1605#1575#1610#1588' '#1581#1603#1605
      TabOrder = 1
    end
    object BitBtn7: TBitBtn
      AlignWithMargins = True
      Left = 407
      Top = 8
      Width = 75
      Height = 25
      Margins.Left = 2
      Margins.Top = 7
      Margins.Right = 2
      Margins.Bottom = 7
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 2
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 486
      Top = 8
      Width = 75
      Height = 25
      Margins.Left = 2
      Margins.Top = 7
      Margins.Right = 2
      Margins.Bottom = 7
      Action = ActChangeState
      Align = alRight
      Caption = #1578#1594#1610#1610#1585' '#1608#1590#1593#1610#1578' '
      TabOrder = 3
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 240
      Top = 8
      Width = 75
      Height = 25
      Margins.Left = 2
      Margins.Top = 7
      Margins.Right = 2
      Margins.Bottom = 7
      Action = actSendToExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 4
    end
    object BitBtn5: TBitBtn
      AlignWithMargins = True
      Left = 161
      Top = 8
      Width = 75
      Height = 25
      Margins.Left = 2
      Margins.Top = 7
      Margins.Right = 2
      Margins.Bottom = 7
      Action = actSearch_
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 5
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 82
      Top = 8
      Width = 75
      Height = 25
      Margins.Left = 2
      Margins.Top = 7
      Margins.Right = 2
      Margins.Bottom = 7
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 6
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 644
      Top = 8
      Width = 75
      Height = 25
      Margins.Left = 2
      Margins.Top = 7
      Margins.Right = 2
      Margins.Bottom = 7
      Action = actPrint
      Align = alRight
      Caption = #1670#1575#1662' (F7)'
      TabOrder = 7
    end
    object BitBtn8: TBitBtn
      AlignWithMargins = True
      Left = 319
      Top = 8
      Width = 75
      Height = 25
      Margins.Left = 2
      Margins.Top = 7
      Margins.Right = 2
      Margins.Bottom = 7
      Align = alLeft
      Caption = #1587#1575#1610#1585' '#1575#1605#1603#1575#1606#1575#1578
      TabOrder = 8
      OnClick = BitBtn8Click
    end
  end
  inherited Panel2: TPanel
    Width = 714
    Height = 74
    ExplicitWidth = 722
    ExplicitHeight = 74
    DesignSize = (
      714
      74)
    inherited ImgTemplate: TImage
      Left = 668
      ExplicitLeft = 684
    end
    inherited lblCaption: TLabel
      Left = 606
      Height = 54
      ExplicitLeft = 606
    end
    inherited lblBaseDate: TLabel
      Left = 337
      ExplicitLeft = 341
    end
    object pnlCompany: TPanel
      Left = 1
      Top = 1
      Width = 207
      Height = 72
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        207
        72)
      object Label1: TLabel
        Left = 125
        Top = 9
        Width = 69
        Height = 13
        Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1588#1585#1603#1578
      end
      object SpeedButton1: TSpeedButton
        Left = 10
        Top = 4
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SpeedButton1Click
      end
      object DBEdit1: TDBEdit
        Left = 35
        Top = 5
        Width = 78
        Height = 21
        DataField = 'CompanyCode'
        DataSource = srcCompanies
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 11
        Top = 28
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
        Top = 49
        Width = 188
        Height = 18
        DataSource = srcCompanies
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Anchors = [akLeft, akBottom]
        Flat = True
        TabOrder = 2
      end
    end
  end
  inherited Panel3: TPanel
    Top = 74
    Width = 714
    Height = 358
    ExplicitTop = 74
    ExplicitWidth = 722
    ExplicitHeight = 360
    object lblFilterStringCaption: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 23
      Width = 712
      Height = 13
      Align = alTop
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = 'FilterStringCaption'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      Transparent = True
      WordWrap = True
      OnClick = lblFilterStringCaptionClick
      ExplicitLeft = 628
      ExplicitWidth = 89
    end
    object StatusBar1: TStatusBar
      Left = 2
      Top = 339
      Width = 718
      Height = 19
      Panels = <
        item
          Width = 200
        end
        item
          Width = 200
        end
        item
          Width = 50
        end>
    end
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 718
      Height = 18
      Align = alTop
      TabOrder = 2
      Visible = False
      object lblPersonelCode: TLabel
        Left = 628
        Top = 1
        Width = 89
        Height = 13
        Align = alRight
        Caption = #1605#1581#1583#1608#1583#1607' '#1603#1583' '#1662#1585#1587#1606#1604#1610
      end
      object lblOfficeCode: TLabel
        Left = 1
        Top = 1
        Width = 116
        Height = 13
        Align = alLeft
        Caption = #1605#1581#1583#1608#1583#1607' '#1603#1583' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
      end
    end
    object DBGrid1: TCedarDbgrid
      Left = 2
      Top = 39
      Width = 718
      Height = 300
      Align = alClient
      Color = clCream
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
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ParentFont = False
      RowHeight = 18
      SearchPanel.Enabled = True
      SearchPanel.FilterOnTyping = True
      SortLocal = True
      TabOrder = 0
      OnDblClick = DBGrid1DblClick
      OnKeyPress = DBGrid1KeyPress
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'InterdictNo'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'InterdictDate'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'InterdicStartDate'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'InterdicEndDate'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'finishEmployDate'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'InsuranceStartDate'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'InsuranceEndDate'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PersonelNo'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PersonelName_L1'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'FullName'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PersonelName_L2'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'InterdicType_L1'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'InterdicType_L2'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'OfficeName_L1'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'OfficeName_L2'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'JobName_L1'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'JobName_L2'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'grade_L1'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'grade_L2'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'jobCity_L1'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'jobCity_L2'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'State'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'licence_L1'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'licence_L2'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ProjectID'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ProjectName'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'SubInterdictName'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'GrpExpenseName'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'AidNo1'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'AidDate1'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'FirstUser'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'LastUser'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'MartyrChild'
          Footers = <>
          Width = 55
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PercentWound'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'employDate'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'employDaytime'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'InterdicTypeID'
          Footers = <>
          Width = 44
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'OfficeID'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Mobile'
          Footers = <>
          Width = 38
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'InterdictID'
          Footers = <>
          Width = 33
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'subcompanyCode'
          Footers = <>
          Width = 46
        end>
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
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendToExcelExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object Action1: TAction
      Caption = 'Action1'
    end
    object ActChangeState: TAction
      Caption = #1578#1594#1610#1610#1585' '#1608#1590#1593#1610#1578' '
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
    object actSelectAll: TAction
      Caption = #1575#1606#1578#1582#1575#1576' '#1607#1605#1607' '#1587#1591#1585' '#1607#1575
      OnExecute = actSelectAllExecute
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
    Template.FileName = 'D:\Projects\Fara\Salary\Exe\Report\Interdicts4FormF.rtm'
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
    Left = 512
    Top = 216
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
      object plblFilterStringCaption: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        OnGetText = plblFilterStringCaptionGetText
        Border.mmPadding = 0
        Caption = #1606#1605#1575#1610#1588' '#1603#1604' '#1605#1581#1583#1608#1583#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 3969
        mmLeft = 48683
        mmTop = 15081
        mmWidth = 50536
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
        mmLeft = 0
        mmTop = 0
        mmWidth = 266171
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'InterdicTypeID'
      DataPipeline = ppDBPipeline1
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      ResetPageNo = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 3440
        mmPrintPosition = 0
        object ppLine5: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line5'
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 0
          mmTop = 0
          mmWidth = 266300
          BandType = 5
          GroupNo = 0
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
    Top = 16
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
    Left = 336
    Top = 13
  end
  object qryInterdictList: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterOpen = qryInterdictListAfterOpen
    Parameters = <
      item
        Name = 'PersonFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'PersonTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 99999
      end
      item
        Name = 'interFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = 0.000000000000000000
      end
      item
        Name = 'interTo'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = 99999.000000000000000000
      end
      item
        Name = 'InterDateFrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '0'
      end
      item
        Name = 'InterDateTo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '999999'
      end
      item
        Name = 'InterTypeFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'InterTypeTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 99999
      end
      item
        Name = 'OfficeFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'OfficeTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 99999
      end
      item
        Name = 'jobCityFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'jobCityTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 999999
      end
      item
        Name = 'jobCodeFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'jobCodeTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 999999
      end
      item
        Name = 'companyCode'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'PersonStateNoFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PersonStateNoTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'InterdicEndDateFrom'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'InterdicEndDateTo'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'InterdicStartDateFrom'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'InterdicStartDateTo'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     InterdictsList.*, EmployeeInfo.PersonelName_L1 AS Per' +
        'sonelName_L1,  EmployeeInfo.Name_L1+'#39' '#39' + EmployeeInfo.LastName_' +
        'L1 AS FullName, EmployeeInfo.PersonelName_L2 AS PersonelName_L2,'
      
        '           EmployeeInfo.LicenceCode AS LicenceCode, EmployeeInfo' +
        '.licence_L1 AS licence_L1, EmployeeInfo.licence_L2 AS licence_L2'
      
        ',finishEmployDate, EmployeeInfo.Mobile , EmployeeInfo.MartyrChil' +
        'd , EmployeeInfo.PercentWound , EmployeeInfo.employDate'
      ''
      
        'FROM Pay.InterdictsList INNER JOIN           pay.EmployeeInfo ON' +
        ' InterdictsList.PersonelNo = EmployeeInfo.PersonelNo'
      ''
      
        'WHERE     (InterdictsList.PersonelNo      BETWEEN :PersonFrom AN' +
        'D :PersonTo)'
      
        'AND   ( InterdictsList.InterdictNo  BETWEEN :interFrom AND :inte' +
        'rTo) AND'
      
        '          (InterdictsList.InterdictDate   BETWEEN :InterDateFrom' +
        ' AND :InterDateTo) AND'
      
        '          (InterdictsList.InterdicTypeID  BETWEEN :InterTypeFrom' +
        ' AND :InterTypeTo) AND'
      
        '          (InterdictsList.OfficeID        BETWEEN :OfficeFrom AN' +
        'D :OfficeTo) AND'
      
        '          (InterdictsList.jobCity        BETWEEN :jobCityFrom AN' +
        'D :jobCityTo) AND'
      
        '          (InterdictsList.jobCode        BETWEEN :jobCodeFrom AN' +
        'D :jobCodeTo) AND'
      
        '          ((InterdictsList.subcompanyCode = :companyCode)or(Inte' +
        'rdictsList.subcompanyCode=0)) AND'
      '          (InterdictsList.InterdicType =0 )'
      
        'AND (EmployeeInfo.PersonStateNo BETWEEN :PersonStateNoFrom AND :' +
        'PersonStateNoTo)'
      
        'AND (InterdictsList.InterdicEndDate   BETWEEN :InterdicEndDateFr' +
        'om AND :InterdicEndDateTo) '
      
        'AND  (InterdictsList.InterdicStartDate   BETWEEN :InterdicStartD' +
        'ateFrom AND :InterdicStartDateTo) '
      ''
      
        'ORDER BY   InterdictsList.InterdictDate, InterdictsList.Interdic' +
        'tNo')
    Left = 304
    Top = 264
    object qryInterdictListInterdictNo: TFloatField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1581#1603#1605
      FieldName = 'InterdictNo'
      ReadOnly = True
    end
    object qryInterdictListInterdictDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1581#1603#1605
      FieldName = 'InterdictDate'
      FixedChar = True
      Size = 10
    end
    object qryInterdictListInterdicStartDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1575#1580#1585#1575#1610' '#1581#1603#1605
      FieldName = 'InterdicStartDate'
      FixedChar = True
      Size = 10
    end
    object qryInterdictListInterdicEndDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1662#1575#1610#1575#1606' '#1602#1585#1575#1585#1583#1575#1583
      FieldName = 'InterdicEndDate'
      FixedChar = True
      Size = 10
    end
    object qryInterdictListfinishEmployDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1582#1575#1578#1605#1607' '#1602#1585#1575#1585#1583#1575#1583
      FieldName = 'finishEmployDate'
      FixedChar = True
      Size = 10
    end
    object qryInterdictListInsuranceStartDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1740#1582' '#1588#1585#1608#1593' '#1576#1740#1605#1607
      FieldName = 'InsuranceStartDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryInterdictListInsuranceEndDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582#8207#1662#1575#1610#1575#1606#8207#1576#1740#1605#1607
      FieldName = 'InsuranceEndDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryInterdictListPersonelNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588'.'#1662#1585#1587#1606#1604
      FieldName = 'PersonelNo'
    end
    object qryInterdictListPersonelName_L1: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1662#1585#1587#1606#1604
      FieldName = 'PersonelName_L1'
      ReadOnly = True
      Size = 60
    end
    object qryInterdictListFullName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1608' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1740
      FieldName = 'FullName'
      ReadOnly = True
      Size = 56
    end
    object qryInterdictListPersonelName_L2: TStringField
      DisplayLabel = 'PersonelName'
      FieldName = 'PersonelName_L2'
      ReadOnly = True
      Size = 60
    end
    object qryInterdictListInterdicType_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1581#1603#1605'/'#1575#1587#1578#1582#1583#1575#1605
      FieldName = 'InterdicType_L1'
      Size = 255
    end
    object qryInterdictListInterdicType_L2: TStringField
      DisplayLabel = 'InterdicType'
      FieldName = 'InterdicType_L2'
      Size = 255
    end
    object qryInterdictListOfficeName_L1: TStringField
      Tag = 3
      DisplayLabel = ' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
      FieldName = 'OfficeName_L1'
      Size = 255
    end
    object qryInterdictListOfficeName_L2: TStringField
      DisplayLabel = 'OfficeName'
      FieldName = 'OfficeName_L2'
      Size = 255
    end
    object qryInterdictListJobName_L1: TStringField
      Tag = 3
      DisplayLabel = #1662#1587#1578' '#1587#1575#1586#1605#1575#1606#1610
      FieldName = 'JobName_L1'
      Size = 255
    end
    object qryInterdictListJobName_L2: TStringField
      DisplayLabel = 'JobName'
      FieldName = 'JobName_L2'
      Size = 255
    end
    object qryInterdictListgrade_L1: TStringField
      Tag = 3
      DisplayLabel = #1585#1578#1576#1607' '#1588#1594#1604#1610
      FieldName = 'grade_L1'
      Size = 255
    end
    object qryInterdictListgrade_L2: TStringField
      DisplayLabel = 'grade'
      FieldName = 'grade_L2'
      Size = 255
    end
    object qryInterdictListjobCity_L1: TStringField
      Tag = 3
      DisplayLabel = #1605#1581#1604' '#1582#1583#1605#1578
      FieldName = 'jobCity_L1'
      Size = 255
    end
    object qryInterdictListjobCity_L2: TStringField
      FieldName = 'jobCity_L2'
      Size = 255
    end
    object qryInterdictListState: TWordField
      DisplayLabel = #1608#1590#1593#1610#1578
      FieldName = 'State'
      OnGetText = qryInterdictListStateGetText
    end
    object qryInterdictListlicence_L1: TStringField
      Tag = 3
      DisplayLabel = #1605#1583#1585#1603' '#1578#1581#1589#1610#1604#1610
      FieldName = 'licence_L1'
      Size = 255
    end
    object qryInterdictListlicence_L2: TStringField
      DisplayLabel = 'licence'
      FieldName = 'licence_L2'
      Size = 255
    end
    object qryInterdictListProjectID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1662#1585#1608#1688#1607
      FieldName = 'ProjectID'
    end
    object qryInterdictListProjectName: TStringField
      Tag = 3
      DisplayLabel = #1662#1585#1608#1688#1607
      FieldName = 'ProjectName'
      Size = 255
    end
    object qryInterdictListSubInterdictName: TStringField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1581#1603#1605
      FieldName = 'SubInterdictName'
      Size = 255
    end
    object qryInterdictListGrpExpenseName: TStringField
      Tag = 3
      DisplayLabel = #1711#1585#1608#1607' '#1607#1586#1610#1606#1607
      FieldName = 'GrpExpenseName'
      Size = 255
    end
    object qryInterdictListAidNo1: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1603#1605#1603#1610
      FieldName = 'AidNo1'
    end
    object qryInterdictListAidDate1: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1603#1605#1603#1610
      FieldName = 'AidDate1'
      FixedChar = True
      Size = 10
    end
    object qryInterdictListFirstUser: TWideStringField
      DisplayLabel = #1589#1575#1583#1585' '#1705#1606#1606#1583#1607
      FieldName = 'FirstUser'
    end
    object qryInterdictListLastUser: TWideStringField
      DisplayLabel = #1608#1740#1585#1575#1740#1588' '#1705#1606#1606#1583#1607
      FieldName = 'LastUser'
    end
    object qryInterdictListMartyrChild: TBooleanField
      DisplayLabel = #1601#1585#1586#1606#1583' '#1588#1607#1740#1583
      FieldName = 'MartyrChild'
    end
    object qryInterdictListPercentWound: TFloatField
      Tag = 3
      DisplayLabel = #1583#1585#1589#1583' '#1580#1575#1606#1576#1575#1586#1610
      FieldName = 'PercentWound'
    end
    object qryInterdictListemployDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1575#1587#1578#1582#1583#1575#1605
      FieldName = 'employDate'
      FixedChar = True
      Size = 10
    end
    object qryInterdictListemployDaytime: TWordField
      Tag = 3
      DisplayLabel = #1662#1575#1610#1575#1606' '#1602#1585#1575#1585' '#1583#1575#1583
      FieldName = 'employDaytime'
    end
    object qryInterdictListAccTopicCode: TIntegerField
      FieldName = 'AccTopicCode'
    end
    object qryInterdictListAccDetailCode: TIntegerField
      FieldName = 'AccDetailCode'
    end
    object qryInterdictListAccCTopicCode2: TIntegerField
      FieldName = 'AccCTopicCode2'
    end
    object qryInterdictListInterdicTypeID: TIntegerField
      DisplayLabel = #1606#1608#1593' '#1581#1603#1605
      FieldName = 'InterdicTypeID'
    end
    object qryInterdictListOfficeID: TIntegerField
      Tag = 3
      DisplayLabel = #1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
      FieldName = 'OfficeID'
    end
    object qryInterdictListLicenceCode: TIntegerField
      FieldName = 'LicenceCode'
    end
    object qryInterdictListAccCTopicCode: TIntegerField
      FieldName = 'AccCTopicCode'
    end
    object qryInterdictListMobile: TStringField
      FieldName = 'Mobile'
    end
    object qryInterdictListKargozinyNote_L1: TMemoField
      FieldName = 'KargozinyNote_L1'
      BlobType = ftMemo
    end
    object qryInterdictListKargozinyNote_L2: TMemoField
      FieldName = 'KargozinyNote_L2'
      BlobType = ftMemo
    end
    object qryInterdictListUserID: TIntegerField
      FieldName = 'UserID'
    end
    object qryInterdictListInterdictID: TIntegerField
      Tag = 3
      DisplayLabel = #1587#1585#1610#1575#1604
      FieldName = 'InterdictID'
    end
    object qryInterdictListsubcompanyCode: TIntegerField
      DisplayLabel = #1603#1583' '#1588#1585#1603#1578
      FieldName = 'subcompanyCode'
    end
  end
  object PopMnuState: TPopupMenu
    Left = 416
    Top = 338
    object N1: TMenuItem
      Caption = #1578#1594#1610#1610#1585' '#1608#1590#1593#1610#1578' '#1576#1607' '#1662#1610#1610#1588' '#1606#1608#1610#1587
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1578#1594#1610#1610#1585' '#1608#1590#1593#1610#1578' '#1576#1607' '#1606#1607#1575#1574#1610
      OnClick = N2Click
    end
    object mnuState50: TMenuItem
      Caption = #1578#1594#1610#1610#1585' '#1608#1590#1593#1610#1578' '#1576#1607' '#1576#1575#1610#1711#1575#1606#1610
      OnClick = mnuState50Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object N3: TMenuItem
      Action = actSelectAll
    end
  end
  object PopMnuPrint: TPopupMenu
    Left = 545
    Top = 312
    object AllClick: TMenuItem
      Caption = #1575#1586' Hint '#1608' Name '#1575#1587#1578#1601#1575#1583#1607' '#1588#1583#1607
      Visible = False
      OnClick = AllClickClick
    end
    object Interdicts4FormF: TMenuItem
      Caption = #1670#1575#1662
      Hint = 'InterdicType_L1'
      OnClick = AllClickClick
    end
    object PersonelDecExtInfo_2F2ColumnsTa: TMenuItem
      Caption = #1670#1575#1662' '#1576#1578#1601#1603#1610#1603' '#1605#1583#1585#1603' '#1578#1581#1589#1610#1604#1610
      Visible = False
      OnClick = AllClickClick
    end
    object PersonelDecExtInfo_2F2ColumnsSandogh: TMenuItem
      Caption = #1670#1575#1662' '#1576#1578#1601#1603#1610#1603' '#1585#1578#1576#1607' '#1588#1594#1604#1610
      Visible = False
      OnClick = AllClickClick
    end
    object PersonelDecExtInfo_2Fmonth1: TMenuItem
      Caption = #1670#1575#1662' '#1576#1578#1601#1603#1610#1603' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
      Visible = False
      OnClick = AllClickClick
    end
  end
  object PopOther: TPopupMenu
    Left = 273
    Top = 352
    object N6: TMenuItem
      Action = actPrintVijeh
    end
    object N8: TMenuItem
      Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1610
      OnClick = N8Click
    end
    object N5: TMenuItem
      Action = actSelectAll
    end
    object N11: TMenuItem
      Caption = #1605#1585#1578#1576' '#1705#1585#1583#1606' '#1588#1605#1575#1585#1607' '#1705#1605#1705#1740' 1 ....'
      OnClick = N11Click
    end
    object N7: TMenuItem
      Caption = #1578#1594#1610#1610#1585' '#1578#1575#1585#1610#1582' '#1603#1605#1603#1610
      OnClick = N7Click
    end
  end
  object qryInitQry: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT  *  FROM Pay.FormTypes'
      'where FormType= 45')
    Left = 108
    Top = 347
  end
end

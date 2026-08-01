inherited rptfunctionF: TrptfunctionF
  Left = 202
  Top = 138
  Caption = #1711#1586#1575#1585#1588' '#1603#1575#1585#1603#1585#1583' '#1576#1578#1601#1603#1610#1603'  '#1662#1585#1608#1688#1607' '#1548#1605#1575#1607' '#1608' '#1662#1585#1587#1606#1604
  ClientHeight = 436
  ClientWidth = 777
  OnResize = FormResize
  ExplicitWidth = 793
  ExplicitHeight = 475
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 395
    Width = 777
    ExplicitTop = 396
    ExplicitWidth = 781
    inherited BtnReject: TBitBtn
      Left = 3
      Top = 6
      Height = 29
      ExplicitLeft = 3
      ExplicitTop = 6
      ExplicitHeight = 29
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 703
      Top = 6
      Width = 75
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actFilter
      Align = alRight
      TabOrder = 1
    end
    object BitBtn6: TBitBtn
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
      TabOrder = 2
    end
    object BitBtn5: TBitBtn
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
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 246
      Top = 6
      Width = 75
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSendtoExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 4
    end
    object DBNavigator2: TDBNavigator
      AlignWithMargins = True
      Left = 327
      Top = 3
      Width = 208
      Height = 35
      DataSource = srcInfo
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alClient
      Flat = True
      TabOrder = 5
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 541
      Top = 6
      Width = 75
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actPrint
      Align = alRight
      TabOrder = 6
    end
    object Button3: TButton
      AlignWithMargins = True
      Left = 622
      Top = 6
      Width = 75
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Action = ActFunShow
      Align = alRight
      TabOrder = 7
    end
  end
  inherited Panel2: TPanel
    Width = 777
    Height = 66
    ExplicitWidth = 781
    ExplicitHeight = 66
    inherited ImgTemplate: TImage
      Left = 743
      ExplicitLeft = 728
    end
    inherited lblCaption: TLabel
      Left = 679
      Height = 16
      ExplicitLeft = 679
    end
    object Label1: TLabel
      Left = 120
      Top = 6
      Width = 73
      Height = 13
      Caption = #1603#1583' '#1608#1593#1606#1608#1575#1606' '#1662#1585#1608#1688#1607' '
    end
    object SpeedButton1: TSpeedButton
      Left = 14
      Top = 1
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = SpeedButton1Click
    end
    object DBEdit1: TDBEdit
      Left = 39
      Top = 2
      Width = 68
      Height = 21
      DataField = 'ProjectCode'
      DataSource = srcProject
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 15
      Top = 26
      Width = 235
      Height = 19
      Color = 14540253
      Ctl3D = False
      DataField = 'InfoName_L1'
      DataSource = srcProject
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object DBNavigator1: TDBNavigator
      Left = 17
      Top = 45
      Width = 232
      Height = 18
      DataSource = srcProject
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Flat = True
      TabOrder = 2
    end
  end
  inherited Panel3: TPanel
    Top = 66
    Width = 777
    Height = 329
    ExplicitTop = 66
    ExplicitWidth = 781
    ExplicitHeight = 330
    object Panel1: TPanel
      Left = 0
      Top = 33
      Width = 781
      Height = 297
      Align = alClient
      Caption = 'Panel1'
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 779
        Height = 275
        Align = alClient
        Color = clCream
        DataSource = srcInfo
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnDblClick = ActFunShowExecute
        OnKeyPress = DBGrid1KeyPress
      end
      object SumGrid1: TSumGrid
        Left = 1
        Top = 276
        Width = 779
        Active = False
        Enable_Controls = True
        MasterGrid = DBGrid1
      end
    end
    object ToolBar1: TToolBar
      Left = 0
      Top = 0
      Width = 781
      Height = 33
      BorderWidth = 2
      ButtonHeight = 21
      ButtonWidth = 57
      Caption = 'ToolBar1'
      EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
      EdgeInner = esLowered
      ShowCaptions = True
      TabOrder = 1
      object ToolButton1: TToolButton
        Tag = 1
        Left = 0
        Top = 0
        Caption = #1601#1585#1608#1585#1583#1610#1606
        Grouped = True
        ImageIndex = 0
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton2: TToolButton
        Tag = 2
        Left = 57
        Top = 0
        Caption = #1575#1585#1583#1610#1576#1607#1588#1578
        Grouped = True
        ImageIndex = 1
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton3: TToolButton
        Tag = 3
        Left = 114
        Top = 0
        Caption = #1582#1585#1583#1575#1583
        Grouped = True
        ImageIndex = 2
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton4: TToolButton
        Tag = 4
        Left = 171
        Top = 0
        Caption = #1578#1610#1585
        Grouped = True
        ImageIndex = 3
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton5: TToolButton
        Tag = 5
        Left = 228
        Top = 0
        Caption = #1605#1585#1583#1575#1583
        Grouped = True
        ImageIndex = 4
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton6: TToolButton
        Tag = 6
        Left = 285
        Top = 0
        Caption = #1588#1607#1585#1610#1608#1585
        Grouped = True
        ImageIndex = 5
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton7: TToolButton
        Tag = 7
        Left = 342
        Top = 0
        Caption = #1605#1607#1585
        Grouped = True
        ImageIndex = 6
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton8: TToolButton
        Tag = 8
        Left = 399
        Top = 0
        Caption = #1570#1576#1575#1606
        Grouped = True
        ImageIndex = 7
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton9: TToolButton
        Tag = 9
        Left = 456
        Top = 0
        Caption = #1570#1584#1585
        Grouped = True
        ImageIndex = 8
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton10: TToolButton
        Tag = 10
        Left = 513
        Top = 0
        Caption = #1583#1610
        Grouped = True
        ImageIndex = 9
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton11: TToolButton
        Tag = 11
        Left = 570
        Top = 0
        Caption = #1576#1607#1605#1606
        Grouped = True
        ImageIndex = 10
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton12: TToolButton
        Tag = 12
        Left = 627
        Top = 0
        Caption = #1575#1587#1601#1606#1583
        Grouped = True
        ImageIndex = 11
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton13: TToolButton
        Tag = 13
        Left = 684
        Top = 0
        Caption = #1607#1605#1607' '#1605#1575#1607#1607#1575
        Grouped = True
        ImageIndex = 12
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
    end
  end
  inherited ActionList: TActionList
    Left = 672
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      OnExecute = actPrintExecute
    end
    object actSendtoExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendtoExcelExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object ActFunShow: TAction
      Caption = #1606#1605#1575#1610#1588' '#1603#1575#1585#1603#1585#1583
      OnExecute = ActFunShowExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 632
  end
  object qryWage: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     Pay.FormsInfo.FormInfoID, Pay.FormsInfo.InfoID, Pay.F' +
        'ormsInfo.InfoName_L1, Pay.FormsInfo.InfoName_L2'
      ''
      'FROM         Pay.FormsInfo INNER JOIN'
      
        '                      Pay.FormTypes ON Pay.FormsInfo.FormType = ' +
        'Pay.FormTypes.FormType'
      'WHERE     (Pay.FormTypes.SalaryKind = 5)')
    Left = 544
    Top = 8
    object qryWageFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qryWageInfoID: TIntegerField
      FieldName = 'InfoID'
    end
    object qryWageInfoName_L1: TStringField
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object qryWageInfoName_L2: TStringField
      FieldName = 'InfoName_L2'
      Size = 255
    end
  end
  object qryInfo: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryInfoAfterOpen
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     Pay.Functions.ProjectID, Pay.FormsInfo.InfoID, Pay.Fo' +
        'rmsInfo.InfoName_L1, Pay.FormsInfo.InfoName_L2, Pay.Functions.Pe' +
        'rsonelNo, '
      
        '                      Pay.PersonelInfo.name_L1 + '#39'  '#39' + Pay.Pers' +
        'onelInfo.lastName_L1 as PersonelName_L1, Pay.PersonelInfo.name_L' +
        '2, Pay.PersonelInfo.lastName_L2, '
      
        '                      Pay.Functions.FunctionDay, Pay.Functions.F' +
        'unctionTime, Pay.Functions.Mounth, ALLFUnctionItems.*, Pay.Stand' +
        'ardTimes.InfoName_L1 AS Mounth_L1, '
      '                      Pay.StandardTimes.InfoName_L2 AS Mounth_L2'
      'FROM         Pay.Functions INNER JOIN'
      
        '                      Pay.FormsInfo ON Pay.Functions.ProjectID =' +
        ' Pay.FormsInfo.FormInfoID INNER JOIN'
      
        '                      Pay.PersonelInfo ON Pay.Functions.Personel' +
        'No = Pay.PersonelInfo.PersonelNo left outer JOIN'
      '                          (SELECT     FunctionID'
      '                             FROM Pay.FunctionsItems'
      
        '                             GROUP BY FunctionID) ALLFUnctionIte' +
        'ms ON Pay.Functions.FunctionID = ALLFUnctionItems.FunctionID INN' +
        'ER JOIN'
      
        '                      Pay.StandardTimes ON Pay.Functions.Mounth ' +
        '= Pay.StandardTimes.InfoID')
    Left = 280
    Top = 144
  end
  object srcInfo: TDataSource
    DataSet = qryInfo
    Left = 192
    Top = 144
  end
  object srcProject: TDataSource
    DataSet = qryProject
    Left = 328
    Top = 8
  end
  object qryProject: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryProjectAfterScroll
    Parameters = <
      item
        Name = 'ProjectIDFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ProjectIDTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     FormsInfo.InfoID AS ProjectCode, FormsInfo.InfoName_L' +
        '1, FormsInfo.InfoName_L2'
      ',FormsInfo.FormInfoID  AS ProjectID'
      ''
      'FROM Pay.Functions INNER JOIN'
      
        '                      Pay.FormsInfo ON Functions.ProjectID = For' +
        'msInfo.FormInfoID'
      ''
      
        'where      (FormsInfo.InfoID BETWEEN :ProjectIDFrom AND :Project' +
        'IDTo)'
      
        'GROUP BY FormsInfo.InfoName_L1, FormsInfo.InfoName_L2, FormsInfo' +
        '.InfoID,FormsInfo.FormInfoID'
      '')
    Left = 272
    Top = 8
    object qryProjectProjectID: TIntegerField
      FieldName = 'ProjectID'
    end
    object qryProjectInfoName_L1: TStringField
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object qryProjectInfoName_L2: TStringField
      FieldName = 'InfoName_L2'
      Size = 255
    end
    object qryProjectProjectCode: TIntegerField
      FieldName = 'ProjectCode'
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
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
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    Template.FileName = 'D:\Projects\Fara\Salary\Exe\Report\rptfunction.rtm'
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
    Top = 320
    Version = '23.0'
    mmColumnWidth = 266300
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 37835
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape2'
        mmHeight = 17198
        mmLeft = 0
        mmTop = 20638
        mmWidth = 266701
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        OnGetText = ppLabel2GetText
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
        mmLeft = 103717
        mmTop = 0
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LblCaption'
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578' '#1603#1575#1585#1603#1585#1583' '#1576#1578#1601#1603#1610#1603' '#1662#1585#1608#1688#1607' '#1607#1575' '#1608#1605#1575#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8467
        mmLeft = 97367
        mmTop = 6350
        mmWidth = 66940
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
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
        mmTop = 4233
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer2
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
        mmLeft = 9525
        mmTop = 9525
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = ':'#1603#1583' '#1608#1593#1606#1608#1575#1606' '#1662#1585#1608#1688#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 243682
        mmTop = 14552
        mmWidth = 22225
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label17'
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
        mmLeft = 203465
        mmTop = 23548
        mmWidth = 45773
        BandType = 0
        LayerName = Foreground1
      end
      object ppLblTime: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LblTime'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1587#1575#1593#1578
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
        mmLeft = 188648
        mmTop = 31221
        mmWidth = 14023
        BandType = 0
        LayerName = Foreground1
      end
      object ppLblDay: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LblDay'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1585#1608#1586
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
        mmLeft = 188648
        mmTop = 26194
        mmWidth = 14023
        BandType = 0
        LayerName = Foreground1
      end
      object ppLblFun: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LblFun'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1575#1585#1603#1585#1583
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
        mmLeft = 188648
        mmTop = 21167
        mmWidth = 14023
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 249503
        mmTop = 23813
        mmWidth = 16933
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'ProjectID'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5292
        mmLeft = 230453
        mmTop = 14817
        mmWidth = 12435
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 16669
        mmLeft = 199761
        mmTop = 20638
        mmWidth = 3440
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 16669
        mmLeft = 182563
        mmTop = 20638
        mmWidth = 5821
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 16669
        mmLeft = 246063
        mmTop = 20638
        mmWidth = 3440
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'InfoName_L1'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5292
        mmLeft = 188384
        mmTop = 14817
        mmWidth = 41804
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'Mounth_L1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 8424
        mmLeft = 79640
        mmTop = 6350
        mmWidth = 17727
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer2
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentWidth = False
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 265
        mmTop = 0
        mmWidth = 266701
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
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
          PrinterSetup.mmPaperHeight = 215900
          PrinterSetup.mmPaperWidth = 279401
          PrinterSetup.PaperSize = 1
          Version = '23.0'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline1'
          object ppDetailBand4: TppDetailBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 10848
            mmPrintPosition = 0
            object ppLine12: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line12'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 10848
              mmLeft = 263261
              mmTop = 0
              mmWidth = 3440
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText7: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText7'
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
              mmHeight = 5292
              mmLeft = 203465
              mmTop = 0
              mmWidth = 44979
              BandType = 4
              LayerName = Foreground
            end
            object ppDBTxtDay: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBTxtDay'
              Border.mmPadding = 0
              DataField = 'FunctionDay'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 5027
              mmLeft = 188384
              mmTop = 0
              mmWidth = 14023
              BandType = 4
              LayerName = Foreground
            end
            object ppDBTxtTime: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBTxtTime'
              Border.mmPadding = 0
              DataField = 'FunctionTime'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 5027
              mmLeft = 188384
              mmTop = 5292
              mmWidth = 14023
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText12: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText12'
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
              mmHeight = 5292
              mmLeft = 250032
              mmTop = 0
              mmWidth = 15875
              BandType = 4
              LayerName = Foreground
            end
            object ppLine15: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line15'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 10848
              mmLeft = 199496
              mmTop = 0
              mmWidth = 3440
              BandType = 4
              LayerName = Foreground
            end
            object ppLine16: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line16'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 10848
              mmLeft = 184680
              mmTop = 0
              mmWidth = 3440
              BandType = 4
              LayerName = Foreground
            end
            object ppLine17: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line17'
              Border.mmPadding = 0
              ParentHeight = True
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 10848
              mmLeft = 245798
              mmTop = 0
              mmWidth = 3440
              BandType = 4
              LayerName = Foreground
            end
            object ppLine9: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line9'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 10848
              mmLeft = 0
              mmTop = 0
              mmWidth = 265
              BandType = 4
              LayerName = Foreground
            end
            object ppLine2: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line2'
              Border.mmPadding = 0
              Position = lpBottom
              Weight = 0.750000000000000000
              mmHeight = 2646
              mmLeft = 0
              mmTop = 8202
              mmWidth = 266701
              BandType = 4
              LayerName = Foreground
            end
          end
          object ppSummaryBand1: TppSummaryBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 14552
            mmPrintPosition = 0
            object ppShape1: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape1'
              mmHeight = 14552
              mmLeft = 0
              mmTop = 0
              mmWidth = 266701
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel10: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label10'
              Border.mmPadding = 0
              Caption = #1580#1605#1593' '#1603#1604':'#8207
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Yagut'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5556
              mmLeft = 254794
              mmTop = 794
              mmWidth = 10319
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalcTime: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc101'
              AutoSize = True
              Border.mmPadding = 0
              DataField = 'FunctionTime'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6519
              mmLeft = 173705
              mmTop = 7408
              mmWidth = 28702
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalcDay: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalcDay'
              AutoSize = True
              Border.mmPadding = 0
              DataField = 'FunctionDay'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6519
              mmLeft = 175483
              mmTop = 529
              mmWidth = 26924
              BandType = 7
              LayerName = Foreground
            end
            object ppLine1: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line1'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 14552
              mmLeft = 184680
              mmTop = 0
              mmWidth = 3440
              BandType = 7
              LayerName = Foreground
            end
            object ppLine3: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line3'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 14552
              mmLeft = 199496
              mmTop = 0
              mmWidth = 3440
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
        end
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'ProjectID'
      DataPipeline = ppDBPipeline2
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      ResetPageNo = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline2'
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
        mmHeight = 2910
        mmPrintPosition = 0
      end
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcInfo
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 402
    Top = 312
    MasterDataPipelineName = 'ppDBPipeline2'
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'ProjectID'
      FieldName = 'ProjectID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'InfoID'
      FieldName = 'InfoID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'InfoName_L1'
      FieldName = 'InfoName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'InfoName_L2'
      FieldName = 'InfoName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'PersonelNo'
      FieldName = 'PersonelNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'PersonelName_L1'
      FieldName = 'PersonelName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'name_L2'
      FieldName = 'name_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'lastName_L2'
      FieldName = 'lastName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'FunctionDay'
      FieldName = 'FunctionDay'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'FunctionTime'
      FieldName = 'FunctionTime'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'Mounth'
      FieldName = 'Mounth'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'FunctionID'
      FieldName = 'FunctionID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'Mounth_L1'
      FieldName = 'Mounth_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'Mounth_L2'
      FieldName = 'Mounth_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = srcProject
    OpenDataSource = False
    UserName = 'DBPipeline2'
    Left = 488
    Top = 320
    object ppDBPipeline2ppField1: TppField
      FieldAlias = 'ProjectID'
      FieldName = 'ProjectID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField2: TppField
      FieldAlias = 'InfoName_L1'
      FieldName = 'InfoName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField3: TppField
      FieldAlias = 'InfoName_L2'
      FieldName = 'InfoName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
  end
end

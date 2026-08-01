inherited rptBudgetRevenuF: TrptBudgetRevenuF
  Left = 240
  Caption = #1570#1605#1575#1585' '#1583#1585#1570#1605#1583' '#1605#1575#1607#1610#1575#1606#1607
  ClientHeight = 517
  OnResize = FormResize
  ExplicitWidth = 794
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 476
    object BitBtn2: TBitBtn
      Left = 548
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Anchors = [akRight, akBottom]
      Caption = #1670#1575#1662' (F7)'
      TabOrder = 1
    end
    object BitBtn7: TBitBtn
      Left = 626
      Top = 8
      Width = 75
      Height = 25
      Action = actFormShow
      Anchors = [akRight, akBottom]
      Caption = #1606#1605#1575#1610#1588' '#1601#1585#1605
      TabOrder = 2
    end
    object DBNavigator2: TDBNavigator
      Left = 336
      Top = 8
      Width = 208
      Height = 25
      DataSource = SrcBudget
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Anchors = [akLeft, akTop, akRight]
      Flat = True
      TabOrder = 3
    end
    object BitBtn4: TBitBtn
      Left = 238
      Top = 8
      Width = 75
      Height = 25
      Action = actSendExel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 4
    end
    object BitBtn6: TBitBtn
      Left = 161
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00636B
        7300C69C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006394B500218C
        EF002173B500CE9C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF004AB5FF0042A5
        FF00218CEF007B849400CE9C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0052BD
        FF005ABDFF00218CEF002173B500CE9C9400FF00FF00FF00FF00FF00FF00FF00
        FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0031A5
        FF0052BDFF0042A5FF00218CEF0084849400CE9C9400FF00FF00FF00FF00FF00
        FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FFFFFF0052BDFF005ABDFF003184D60052636B00FF00FF009C6B6B00CEA5
        9C00D6B5A500CE9C9C00C6949400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0031A5FF0052BDFF00C6CEDE009C9C9C00AD8C8400E7D6BD00FFFF
        D600FFFFDE00FFFFD600EFDEC600FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00C6ADAD00CEA59400FFE7BD00FFF7CE00FFFF
        D600FFFFD600FFFFDE00FFFFE700FFFFFF00C6A5A500FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00BD8C8C00EFDEB500F7D6AD00FFF7CE00FFFF
        D600FFFFDE00FFFFEF00FFFFF700FFFFFF00F7EFDE00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00E7CEAD00FFEFBD00F7CE9C00FFEFC600FFFF
        D600FFFFDE00FFFFF700FFFFF700FFFFDE00FFFFDE00C6949400FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00EFD6B500FFE7B500F7C68C00F7DEB500FFFF
        D600FFFFDE00FFFFEF00FFFFEF00FFFFDE00FFFFDE00BD9C8C00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00E7CEAD00FFEFBD00EFBD8400F7C69400FFEF
        C600FFFFD600FFFFD600FFFFD600FFFFD600FFFFDE00C6949400FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00D6ADA500FFEFBD00F7DEAD00F7CE9C00F7D6
        A500F7E7BD00FFFFD600FFFFD600FFFFD600FFFFD600FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00C69C8C00FFFFFF00FFFFFF00F7C6
        9400EFBD8400F7C69400F7D6AD00FFEFC600BD9C8C00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00EFEFE700FFFFEF00FFE7
        B500F7DEAD00FFE7B500FFEFBD00C69C9400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C69C
        8C00CEA59C00C69C9400FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 5
    end
    object BitBtn5: TBitBtn
      Left = 84
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1576#1607' '#1578#1585#1578#1610#1576
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006A00
        00006A0000006A000000FF00FF006A0000006A0000006A000000FFFFFF00FF00
        FF00FF00FF00FF00FF0000580300FF00FF00FF00FF00FF00FF00FFFFFF006A6A
        6A006A000000FF00FF00FF00FF00FF00FF00980000006A6A6A00FF00FF00FF00
        FF00FF00FF00005803006AFF6A0000580300FF00FF00FF00FF00FF00FF00FF00
        FF006A6A6A006A0000006A0000006A0000006A000000FF00FF00FF00FF00FF00
        FF00FF00FF006AFF6A006AB650000084000000580300FF00FF00FFFFFF00FF00
        FF00FF00FF006A000000FF00FF00980000006A000000FF00FF00FFFFFF00FF00
        FF00FF00FF006AFF6A006AB650000084000000580300FF00FF00FFFFFF00FF00
        FF00FF00FF00980000006A0000006A000000FF00FF00FF00FF00FF00FF000058
        0300005803000058030000580300005803000058030000580300FF00FF00FF00
        FF00FF00FF006A6A6A006A0000006A6A6A00FF00FF00FF00FF00FFFFFF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0098000000FF00FF00FF00FF00FF00FF00FFFFFF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FFFFFF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF000000
        6A0000006A0000006A0000006A0000006A0000006A00FF00FF00FFFFFF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF000000
        6A0000006A00FF00FF00FF00FF00FF00FF000000B600FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF006A6A6A0000006A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000006A0000006A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF006A6A6A0000006A00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF000000
        6A0000006A00FF00FF00FF00FF0000006A0000006A00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF001100
        7B0011007B0011007B0011007B0011007B0011007B00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00}
      TabOrder = 6
    end
    object BitBtn3: TBitBtn
      Left = 704
      Top = 8
      Width = 75
      Height = 25
      Action = actFilter
      Anchors = [akRight, akBottom]
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 7
    end
  end
  inherited Panel2: TPanel
    inherited lblCaption: TLabel
      Height = 16
      ExplicitLeft = 674
    end
    object LblLimit: TLabel
      Left = 684
      Top = 30
      Width = 46
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1593#1606#1608#1575#1606' '#1601#1585#1605
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  inherited Panel3: TPanel
    Height = 423
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 786
      Height = 401
      Align = alClient
      Color = clCream
      DataSource = SrcBudget
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'BudgetCode'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BudgetCaption'
          Width = 114
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'InCredit'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LastCredit'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'credit'
          Visible = True
        end>
    end
    object StatusBar1: TStatusBar
      Left = 2
      Top = 403
      Width = 786
      Height = 19
      BiDiMode = bdRightToLeft
      Panels = <
        item
          Width = 120
        end
        item
          Width = 125
        end
        item
          Width = 125
        end
        item
          Width = 125
        end
        item
          Width = 125
        end>
      ParentBiDiMode = False
    end
  end
  inherited ActionList: TActionList
    Left = 504
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
      OnExecute = actPrintExecute
    end
    object actSendExel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendExelExecute
    end
    object actFormShow: TAction
      Caption = #1606#1605#1575#1610#1588' '#1601#1585#1605
      OnExecute = actFormShowExecute
    end
    object actSort: TAction
      Caption = #1576#1607' '#1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 560
  end
  object qryBudget: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryBudgetAfterOpen
    Parameters = <
      item
        Name = 'DateFrom1'
        DataType = ftString
        Size = 10
        Value = '0000/00/00'
      end
      item
        Name = 'DateTo1'
        DataType = ftString
        Size = 10
        Value = '9999/99/99'
      end
      item
        Name = 'DateFrom2'
        DataType = ftString
        Size = 10
        Value = '0000/00/00'
      end
      item
        Name = 'DateTo2'
        DataType = ftString
        Size = 10
        Value = '9999/99/99'
      end>
    SQL.Strings = (
      
        'SELECT     DERIVEDTBL.*, BudgetTopics_1.BudgetCaption_L1 AS Budg' +
        'etCaption1, BudgetTopics_2.BudgetCaption_L1 AS BudgetCaption2,'
      
        '           Accounting.acc.BudgetTopics.BudgetCaption_L1 AS Budge' +
        'tCaption'
      'FROM         ('
      
        'SELECT     LEFT(BudgetCode, 1) AS BudgetCode1, LEFT(BudgetCode, ' +
        '2) AS BudgetCode2,'
      '           BudgetCode AS BudgetCode,'
      
        '       '#9'sum( case when formDate BETWEEN :DateFrom1 AND :DateTo1 ' +
        'then credit - debt else 0 end ) as InCredit ,'
      
        '      '#9'sum( case when formDate <:DateFrom2 then credit - debt  e' +
        'lse 0 end ) as LastCredit ,'
      #9'      sum( Credit - debt ) as credit'
      'FROM         dbo.AllAccountOld(7) AllAccount'
      'WHERE     (FormDate <= :DateTo2) and    (FormType <> 17)'
      
        'GROUP BY LEFT(BudgetCode, 1), LEFT(BudgetCode, 2), BudgetCode) D' +
        'ERIVEDTBL LEFT OUTER JOIN'
      
        '                      Accounting.acc.BudgetTopics BudgetTopics_2' +
        ' ON DERIVEDTBL.BudgetCode2 = BudgetTopics_2.BudgetTopicID LEFT O' +
        'UTER JOIN'
      
        '                      Accounting.acc.BudgetTopics ON DERIVEDTBL.' +
        'BudgetCode = Accounting.acc.BudgetTopics.BudgetTopicID LEFT OUTE' +
        'R JOIN'
      
        '                      Accounting.acc.BudgetTopics BudgetTopics_1' +
        ' ON DERIVEDTBL.BudgetCode1 = BudgetTopics_1.BudgetTopicID'
      'ORDER BY BudgetCode,BudgetCode1,BudgetCode2'
      ' '
      ' ')
    Left = 288
    Top = 176
    object qryBudgetBudgetCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1576#1608#1583#1580#1607
      FieldName = 'BudgetCode'
    end
    object qryBudgetBudgetCode1: TStringField
      FieldName = 'BudgetCode1'
      Size = 1
    end
    object qryBudgetBudgetCode2: TStringField
      FieldName = 'BudgetCode2'
      Size = 2
    end
    object qryBudgetInCredit: TFMTBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1608#1589#1608#1604#1610' '#1610#1603' '#1605#1575#1607
      FieldName = 'InCredit'
      currency = True
      Precision = 19
    end
    object qryBudgetLastCredit: TFMTBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1608#1589#1608#1604#1610' '#1605#1575#1607#1607#1575#1610' '#1711#1584#1588#1578#1607
      FieldName = 'LastCredit'
      currency = True
      Precision = 19
    end
    object qryBudgetCredit: TFMTBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1608#1589#1608#1604#1610' '#1578#1575#1662#1575#1610#1575#1606
      FieldName = 'credit'
      currency = True
      Precision = 19
    end
    object qryBudgetBudgetCaption1: TStringField
      FieldName = 'BudgetCaption1'
      Size = 100
    end
    object qryBudgetBudgetCaption2: TStringField
      FieldName = 'BudgetCaption2'
      Size = 100
    end
    object qryBudgetBudgetCaption3: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1576#1608#1583#1580#1607
      FieldName = 'BudgetCaption'
      Size = 100
    end
  end
  object SrcBudget: TDataSource
    DataSet = qryBudget
    Left = 176
    Top = 176
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = SrcBudget
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 492
    Top = 148
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
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
    Template.FileName = 'D:\Projects\Fara\Bsell b4 menu\Exe\Report\4backup.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
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
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
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
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 344
    Top = 297
    Version = '22.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 28575
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        mmHeight = 6879
        mmLeft = 0
        mmTop = 21696
        mmWidth = 266300
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCompanyName: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCompanyName'
        OnGetText = ppLblCompanyNameGetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575#1585#1575#1610#1575#1606#1607' '
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
        mmLeft = 106363
        mmTop = 1058
        mmWidth = 53181
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1570#1605#1575#1585' '#1583#1585#1570#1605#1583' '#1605#1575#1607#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7144
        mmLeft = 119592
        mmTop = 7673
        mmWidth = 26723
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 15081
        mmWidth = 266300
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        OnGetText = ppLabel16GetText
        Border.mmPadding = 0
        Caption = 'Label3'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 254794
        mmTop = 15610
        mmWidth = 9525
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = 'Label4'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        Visible = False
        mmHeight = 5821
        mmLeft = 4233
        mmTop = 15610
        mmWidth = 9525
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583' '#1576#1608#1583#1580#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5842
        mmLeft = 245798
        mmTop = 22225
        mmWidth = 19844
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1576#1608#1583#1580#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 125942
        mmTop = 22225
        mmWidth = 118534
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594' '#1608#1589#1608#1604#1610' '#1610#1603' '#1605#1575#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5842
        mmLeft = 63500
        mmTop = 22225
        mmWidth = 30000
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594' '#1608#1589#1608#1604#1610' '#1578#1575#1662#1575#1610#1575#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5842
        mmLeft = 794
        mmTop = 22225
        mmWidth = 30000
        BandType = 0
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 31221
        mmTop = 21696
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 62706
        mmTop = 21696
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 125148
        mmTop = 21696
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 245005
        mmTop = 21696
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        OnGetText = ppLabel3GetText
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 4233
        mmTop = 10319
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        OnGetText = ppSystemVariable1GetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 4233
        mmTop = 5027
        mmWidth = 8202
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594' '#1662#1610#1588#1606#1607#1575#1583#1610' '#1576#1608#1583#1580#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5842
        mmLeft = 94721
        mmTop = 22225
        mmWidth = 30000
        BandType = 0
        LayerName = Foreground
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line16'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 93927
        mmTop = 21696
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1575#1606#1583#1607#8207#1605#1576#1604#1594#8207#1608#1589#1608#1604#1610#8207#1605#1575#1607#1607#1575#1610#8207#1602#1576#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5842
        mmLeft = 32279
        mmTop = 22225
        mmWidth = 30000
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'BudgetCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7673
        mmLeft = 245798
        mmTop = 0
        mmWidth = 19844
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'BudgetCaption'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7673
        mmLeft = 125942
        mmTop = 0
        mmWidth = 118534
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'InCredit'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7673
        mmLeft = 63500
        mmTop = 0
        mmWidth = 29898
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'LastCredit'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7673
        mmLeft = 32279
        mmTop = 0
        mmWidth = 29898
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'credit'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7673
        mmLeft = 794
        mmTop = 0
        mmWidth = 29898
        BandType = 4
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 31221
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 62706
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 125148
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 245005
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7673
        mmLeft = 94721
        mmTop = 0
        mmWidth = 29898
        BandType = 4
        LayerName = Foreground
      end
      object ppLine17: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line17'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 93927
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppLine23: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line22'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 265113
        mmTop = 0
        mmWidth = 1058
        BandType = 4
        LayerName = Foreground
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 0
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Visible = False
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 8731
      mmPrintPosition = 0
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape3'
        mmHeight = 8731
        mmLeft = 0
        mmTop = 0
        mmWidth = 254794
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label101'
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1606#1602#1604' '#1576#1607' '#1589#1601#1581#1607' '#1576#1593#1583' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7673
        mmLeft = 125942
        mmTop = 529
        mmWidth = 23283
        BandType = 8
        LayerName = Foreground
      end
      object ppLine25: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line25'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8731
        mmLeft = 62706
        mmTop = 0
        mmWidth = 265
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc7: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc7'
        Border.mmPadding = 0
        DataField = 'LastCredit'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7673
        mmLeft = 32279
        mmTop = 529
        mmWidth = 29898
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc8: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc8'
        Border.mmPadding = 0
        DataField = 'credit'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7673
        mmLeft = 794
        mmTop = 529
        mmWidth = 29898
        BandType = 8
        LayerName = Foreground
      end
      object ppLine27: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line27'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8731
        mmLeft = 93927
        mmTop = 0
        mmWidth = 265
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc9: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc9'
        Border.mmPadding = 0
        DataField = 'InCredit'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7673
        mmLeft = 63500
        mmTop = 529
        mmWidth = 29898
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc10: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc10'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7673
        mmLeft = 94721
        mmTop = 529
        mmWidth = 29898
        BandType = 8
        LayerName = Foreground
      end
      object ppLine29: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line29'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8731
        mmLeft = 31221
        mmTop = 0
        mmWidth = 265
        BandType = 8
        LayerName = Foreground
      end
      object ppLine30: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line30'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8731
        mmLeft = 125148
        mmTop = 0
        mmWidth = 265
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 8731
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        mmHeight = 8731
        mmLeft = 0
        mmTop = 0
        mmWidth = 266171
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1603#1604' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7673
        mmLeft = 125942
        mmTop = 529
        mmWidth = 21167
        BandType = 7
        LayerName = Foreground
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8731
        mmLeft = 62706
        mmTop = 0
        mmWidth = 265
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'LastCredit'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7673
        mmLeft = 32279
        mmTop = 529
        mmWidth = 29898
        BandType = 7
        LayerName = Foreground
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8731
        mmLeft = 31221
        mmTop = 0
        mmWidth = 265
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        Border.mmPadding = 0
        DataField = 'credit'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7673
        mmLeft = 794
        mmTop = 529
        mmWidth = 29898
        BandType = 7
        LayerName = Foreground
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8731
        mmLeft = 93927
        mmTop = 0
        mmWidth = 265
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'InCredit'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7673
        mmLeft = 63500
        mmTop = 529
        mmWidth = 29898
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc4: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc4'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7673
        mmLeft = 94721
        mmTop = 529
        mmWidth = 29898
        BandType = 7
        LayerName = Foreground
      end
      object ppLine22: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line201'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8731
        mmLeft = 125148
        mmTop = 0
        mmWidth = 265
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'BudgetCode1'
      DataPipeline = ppDBPipeline1
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Visible = False
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 8996
        mmPrintPosition = 0
        object ppDBText9: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText9'
          Border.mmPadding = 0
          DataField = 'BudgetCode1'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 7673
          mmLeft = 245798
          mmTop = 794
          mmWidth = 19844
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText10: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText10'
          Border.mmPadding = 0
          DataField = 'BudgetCaption1'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Zar'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 7673
          mmLeft = 125942
          mmTop = 794
          mmWidth = 110596
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine20: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line20'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 8731
          mmLeft = 245005
          mmTop = 0
          mmWidth = 265
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine21: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line21'
          Border.mmPadding = 0
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 7673
          mmLeft = 265113
          mmTop = 0
          mmWidth = 1058
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine24: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line24'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 8731
          mmLeft = 62706
          mmTop = 265
          mmWidth = 265
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc5: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc5'
          Border.mmPadding = 0
          DataField = 'LastCredit'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 12
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 7673
          mmLeft = 32279
          mmTop = 794
          mmWidth = 29898
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc6: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc6'
          Border.mmPadding = 0
          DataField = 'credit'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0;(#,0)'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 12
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 7673
          mmLeft = 794
          mmTop = 794
          mmWidth = 29898
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine26: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line26'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 8731
          mmLeft = 93927
          mmTop = 265
          mmWidth = 265
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc11: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc11'
          Border.mmPadding = 0
          DataField = 'InCredit'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0;(#,0)'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 12
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 7673
          mmLeft = 63500
          mmTop = 794
          mmWidth = 29898
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc12: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc101'
          Border.mmPadding = 0
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 12
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 7673
          mmLeft = 94721
          mmTop = 794
          mmWidth = 29898
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine28: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line28'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 8731
          mmLeft = 31221
          mmTop = 265
          mmWidth = 265
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine31: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line301'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 8731
          mmLeft = 125148
          mmTop = 265
          mmWidth = 265
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel8: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label1'
          Border.mmPadding = 0
          Caption = 'not Visabel'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Zar'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 5842
          mmLeft = 139700
          mmTop = 2381
          mmWidth = 15748
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 8731
        mmPrintPosition = 0
        object ppShape5: TppShape
          DesignLayer = ppDesignLayer1
          UserName = 'Shape5'
          mmHeight = 8731
          mmLeft = 0
          mmTop = 0
          mmWidth = 266300
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText13: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText13'
          Border.mmPadding = 0
          DataField = 'BudgetCode1'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 7673
          mmLeft = 245798
          mmTop = 529
          mmWidth = 19844
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText14: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText14'
          Border.mmPadding = 0
          DataField = 'BudgetCaption1'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Zar'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 7673
          mmLeft = 125942
          mmTop = 529
          mmWidth = 118534
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine42: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line101'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 8731
          mmLeft = 125148
          mmTop = 0
          mmWidth = 265
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine43: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line43'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 8731
          mmLeft = 245005
          mmTop = 0
          mmWidth = 265
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine44: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line44'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 8731
          mmLeft = 62706
          mmTop = 0
          mmWidth = 265
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc21: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc21'
          Border.mmPadding = 0
          DataField = 'LastCredit'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 12
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 7673
          mmLeft = 32279
          mmTop = 529
          mmWidth = 29898
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc22: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc22'
          Border.mmPadding = 0
          DataField = 'credit'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0;(#,0)'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 12
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 7673
          mmLeft = 794
          mmTop = 529
          mmWidth = 29898
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine45: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line45'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 8731
          mmLeft = 93927
          mmTop = 0
          mmWidth = 265
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc23: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc23'
          Border.mmPadding = 0
          DataField = 'InCredit'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0;(#,0)'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 12
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 7673
          mmLeft = 63500
          mmTop = 529
          mmWidth = 29898
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc24: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc24'
          Border.mmPadding = 0
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 12
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 7673
          mmLeft = 94721
          mmTop = 529
          mmWidth = 29898
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine46: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line46'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 8731
          mmLeft = 31221
          mmTop = 0
          mmWidth = 265
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'BudgetCode2'
      DataPipeline = ppDBPipeline1
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Visible = False
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 8731
        mmPrintPosition = 0
        object ppDBText7: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText7'
          Border.mmPadding = 0
          DataField = 'BudgetCode2'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 7673
          mmLeft = 245798
          mmTop = 529
          mmWidth = 19844
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBText8: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText8'
          Border.mmPadding = 0
          DataField = 'BudgetCaption2'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Zar'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 7673
          mmLeft = 142875
          mmTop = 529
          mmWidth = 101600
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLine10: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line10'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 8731
          mmLeft = 125148
          mmTop = 0
          mmWidth = 265
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLine15: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line15'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 8731
          mmLeft = 245005
          mmTop = 0
          mmWidth = 265
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLine18: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line18'
          Border.mmPadding = 0
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 8731
          mmLeft = 265113
          mmTop = 0
          mmWidth = 1058
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLine32: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line32'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 8731
          mmLeft = 62706
          mmTop = 0
          mmWidth = 265
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBCalc13: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc13'
          Border.mmPadding = 0
          DataField = 'LastCredit'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 12
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 7673
          mmLeft = 32279
          mmTop = 529
          mmWidth = 29898
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBCalc14: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc14'
          Border.mmPadding = 0
          DataField = 'credit'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0;(#,0)'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 12
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 7673
          mmLeft = 794
          mmTop = 529
          mmWidth = 29898
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLine33: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line33'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 8731
          mmLeft = 93927
          mmTop = 0
          mmWidth = 265
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBCalc15: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc15'
          Border.mmPadding = 0
          DataField = 'InCredit'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0;(#,0)'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 12
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 7673
          mmLeft = 63500
          mmTop = 529
          mmWidth = 29898
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBCalc16: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc16'
          Border.mmPadding = 0
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 12
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 7673
          mmLeft = 94721
          mmTop = 529
          mmWidth = 29898
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLine34: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line34'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 8731
          mmLeft = 31221
          mmTop = 0
          mmWidth = 265
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLine19: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line19'
          Border.mmPadding = 0
          Position = lpBottom
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 0
          mmTop = 6879
          mmWidth = 266171
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLine35: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line35'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 8731
          mmLeft = 0
          mmTop = 0
          mmWidth = 265
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLine36: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line36'
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 3175
          mmLeft = 0
          mmTop = 0
          mmWidth = 266300
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLabel12: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label12'
          Border.mmPadding = 0
          Caption = 'not Visabel'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Zar'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 5821
          mmLeft = 137054
          mmTop = 1852
          mmWidth = 15875
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 8731
        mmPrintPosition = 0
        object ppShape4: TppShape
          DesignLayer = ppDesignLayer1
          UserName = 'Shape4'
          mmHeight = 8731
          mmLeft = 0
          mmTop = 0
          mmWidth = 266300
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBText11: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText11'
          Border.mmPadding = 0
          DataField = 'BudgetCode2'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 7673
          mmLeft = 245798
          mmTop = 794
          mmWidth = 19844
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBText12: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText101'
          Border.mmPadding = 0
          DataField = 'BudgetCaption2'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Zar'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 7673
          mmLeft = 125942
          mmTop = 794
          mmWidth = 118534
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLine37: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line202'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 8731
          mmLeft = 245005
          mmTop = 0
          mmWidth = 265
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLine38: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line38'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 8731
          mmLeft = 62706
          mmTop = 0
          mmWidth = 265
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBCalc17: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc17'
          Border.mmPadding = 0
          DataField = 'LastCredit'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 12
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 7673
          mmLeft = 32279
          mmTop = 794
          mmWidth = 29898
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLine39: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line39'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 8731
          mmLeft = 93927
          mmTop = 0
          mmWidth = 265
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBCalc18: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc18'
          Border.mmPadding = 0
          DataField = 'InCredit'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0;(#,0)'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 12
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 7673
          mmLeft = 63500
          mmTop = 794
          mmWidth = 29898
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBCalc19: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc19'
          Border.mmPadding = 0
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 12
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 7673
          mmLeft = 94721
          mmTop = 794
          mmWidth = 29898
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLine40: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line40'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 8731
          mmLeft = 125148
          mmTop = 0
          mmWidth = 265
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLine41: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line41'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 8731
          mmLeft = 31221
          mmTop = 0
          mmWidth = 265
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBCalc20: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc20'
          Border.mmPadding = 0
          DataField = 'credit'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0;(#,0)'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 12
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 7673
          mmLeft = 794
          mmTop = 794
          mmWidth = 29898
          BandType = 5
          GroupNo = 1
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
end

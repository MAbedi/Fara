inherited rptInvoiceMatrisF: TrptInvoiceMatrisF
  Left = 271
  Top = 133
  Caption = #1711#1586#1575#1585#1588' '#1605#1575#1578#1585#1610#1587#1610' '#1582#1585#1608#1580' '#1603#1575#1604#1575' '#1576#1585#1581#1587#1576' '#1605#1588#1578#1585#1610
  ClientHeight = 517
  OnResize = FormResize
  ExplicitWidth = 794
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 476
    inherited BtnReject: TBitBtn
      Left = 9
      ExplicitLeft = 9
    end
    object BitBtn2: TBitBtn
      Left = 626
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Anchors = [akRight, akBottom]
      Caption = #1670#1575#1662
      TabOrder = 1
    end
    object BitBtn7: TBitBtn
      Left = 703
      Top = 8
      Width = 75
      Height = 25
      Action = actFilter
      Anchors = [akRight, akBottom]
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 2
    end
    object BitBtn6: TBitBtn
      Left = 240
      Top = 8
      Width = 75
      Height = 25
      Action = actExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' '#1575#1603#1587#1604
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      Left = 163
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
    end
    object BitBtn3: TBitBtn
      Left = 86
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 5
    end
  end
  inherited Panel2: TPanel
    inherited lblCaption: TLabel
      Height = 16
      ExplicitLeft = 674
    end
  end
  inherited Panel3: TPanel
    Height = 423
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 786
      Height = 380
      Align = alClient
      Color = clCream
      DataSource = srcRecipt
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnColEnter = DBGrid1ColEnter
      OnDrawColumnCell = DBGrid1DrawColumnCell
    end
    object DBGrid2: TDBGrid
      Left = 2
      Top = 382
      Width = 786
      Height = 40
      Align = alBottom
      DataSource = srcSum
      Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  inherited ActionList: TActionList
    inherited DataSetInsert1: TDataSetInsert [0]
    end
    inherited DataSetEdit1: TDataSetEdit [1]
    end
    inherited DataSetPost1: TDataSetPost [2]
    end
    inherited DataSetCancel1: TDataSetCancel [3]
    end
    object actFilter: TAction [4]
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    inherited DataSetDelete1_: TDataSetDelete [5]
    end
    object actPrint: TAction [6]
      Caption = #1670#1575#1662
      OnExecute = actPrintExecute
    end
    object actExcel: TAction [7]
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' '#1575#1603#1587#1604
      OnExecute = actExcelExecute
    end
    object actSort: TAction [8]
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited actExit: TAction [10]
    end
  end
  object qryRecipt: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PersonIDfrom'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PersonIDto'
        DataType = ftString
        Size = 9
        Value = '999999999'
      end
      item
        Name = 'ReciptDatefrom'
        DataType = ftString
        Size = 10
        Value = '0000/00/00'
      end
      item
        Name = 'ReciptDateto'
        DataType = ftString
        Size = 10
        Value = '9999/99/99'
      end>
    SQL.Strings = (
      
        'select dbo.Customers.CustID,dbo.Customers.CustName,dbo.Customers' +
        '.Address'
      ',funALL.StuffCode0'
      ',funALL.StuffCode1'
      ',funALL.StuffCode2'
      ',funALL.StuffCode3'
      ',funALL.StuffCode4'
      ',funALL.StuffCode5'
      ',funALL.StuffCode6'
      ',funALL.StuffCode7'
      ',funALL.StuffCode8'
      ',funALL.StuffCode9'
      ',funALL.StuffCode10'
      ',funALL.StuffCode11'
      ',funALL.StuffCode12'
      ',funALL.StuffCode13'
      ',funALL.StuffCode14'
      ',funALL.StuffCode15'
      ',funALL.StuffCode16'
      ',funALL.StuffCode17'
      ',funALL.StuffCode18'
      ',funALL.StuffCode19'
      ',ReciptNumber,ReciptDate'
      
        'from ( SELECT   dbo.Recipts.PersonID1 ,dbo.Recipts.ReciptDate as' +
        ' ReciptDate  , dbo.Recipts.ReciptNumber as ReciptNumber'
      
        ',sum(case when (dbo.ReciptItems.StuffCode=111) then dbo.ReciptIt' +
        'ems.OutputEntity else 0 end) as StuffCode0'
      
        ',sum(case when (dbo.ReciptItems.StuffCode=112) then dbo.ReciptIt' +
        'ems.OutputEntity else 0 end) as StuffCode1'
      
        ',sum(case when (dbo.ReciptItems.StuffCode=121) then dbo.ReciptIt' +
        'ems.OutputEntity else 0 end) as StuffCode2'
      
        ',sum(case when (dbo.ReciptItems.StuffCode=122) then dbo.ReciptIt' +
        'ems.OutputEntity else 0 end) as StuffCode3'
      
        ',sum(case when (dbo.ReciptItems.StuffCode=131) then dbo.ReciptIt' +
        'ems.OutputEntity else 0 end) as StuffCode4'
      
        ',sum(case when (dbo.ReciptItems.StuffCode=132) then dbo.ReciptIt' +
        'ems.OutputEntity else 0 end) as StuffCode5'
      
        ',sum(case when (dbo.ReciptItems.StuffCode=141) then dbo.ReciptIt' +
        'ems.OutputEntity else 0 end) as StuffCode6'
      
        ',sum(case when (dbo.ReciptItems.StuffCode=142) then dbo.ReciptIt' +
        'ems.OutputEntity else 0 end) as StuffCode7'
      
        ',sum(case when (dbo.ReciptItems.StuffCode=151) then dbo.ReciptIt' +
        'ems.OutputEntity else 0 end) as StuffCode8'
      
        ',sum(case when (dbo.ReciptItems.StuffCode=152) then dbo.ReciptIt' +
        'ems.OutputEntity else 0 end) as StuffCode9'
      
        ',sum(case when (dbo.ReciptItems.StuffCode=211) then dbo.ReciptIt' +
        'ems.OutputEntity else 0 end) as StuffCode10'
      
        ',sum(case when (dbo.ReciptItems.StuffCode=212) then dbo.ReciptIt' +
        'ems.OutputEntity else 0 end) as StuffCode11'
      
        ',sum(case when (dbo.ReciptItems.StuffCode=221) then dbo.ReciptIt' +
        'ems.OutputEntity else 0 end) as StuffCode12'
      
        ',sum(case when (dbo.ReciptItems.StuffCode=222) then dbo.ReciptIt' +
        'ems.OutputEntity else 0 end) as StuffCode13'
      
        ',sum(case when (dbo.ReciptItems.StuffCode=231) then dbo.ReciptIt' +
        'ems.OutputEntity else 0 end) as StuffCode14'
      
        ',sum(case when (dbo.ReciptItems.StuffCode=232) then dbo.ReciptIt' +
        'ems.OutputEntity else 0 end) as StuffCode15'
      
        ',sum(case when (dbo.ReciptItems.StuffCode=241) then dbo.ReciptIt' +
        'ems.OutputEntity else 0 end) as StuffCode16'
      
        ',sum(case when (dbo.ReciptItems.StuffCode=242) then dbo.ReciptIt' +
        'ems.OutputEntity else 0 end) as StuffCode17'
      
        ',sum(case when (dbo.ReciptItems.StuffCode=251) then dbo.ReciptIt' +
        'ems.OutputEntity else 0 end) as StuffCode18'
      
        ',sum(case when (dbo.ReciptItems.StuffCode=252) then dbo.ReciptIt' +
        'ems.OutputEntity else 0 end) as StuffCode19'
      'FROM dbo.ReciptItems INNER JOIN'
      
        'dbo.Customers ON dbo.ReciptItems.PersonID1 = dbo.Customers.CustI' +
        'D INNER JOIN'
      
        'dbo.Recipts ON dbo.ReciptItems.ReciptID = dbo.Recipts.ReciptID I' +
        'NNER JOIN'
      
        'dbo.ReciptTypes ON dbo.Recipts.ReciptType = dbo.ReciptTypes.Reci' +
        'ptType'
      'where'
      ' (dbo.Recipts.ReciptType = 11)and'
      
        ' (dbo.Recipts.PersonID1 between :PersonIDfrom and :PersonIDto) a' +
        'nd'
      
        ' (dbo.Recipts.ReciptDate between :ReciptDatefrom and :ReciptDate' +
        'to)'
      
        'GROUP BY dbo.Recipts.PersonID1, dbo.Recipts.ReciptDate, dbo.Reci' +
        'pts.ReciptNumber'
      
        ')funALL INNER JOIN dbo.Customers ON dbo.Customers.CustID = FunAL' +
        'L.PersonID1'
      'order by dbo.Customers.CustID')
    Left = 376
    Top = 109
  end
  object srcRecipt: TDataSource
    DataSet = qryRecipt
    Left = 448
    Top = 109
  end
  object qryStuff: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT     c_StuffCode , c_StuffName'
      'FROM         dbo.StuffCoding'
      '')
    Left = 320
    Top = 8
    object qryStuffc_StuffCode: TLargeintField
      FieldName = 'c_StuffCode'
    end
    object qryStuffc_StuffName: TStringField
      FieldName = 'c_StuffName'
      Size = 70
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\Projects\Fara\BSell\Exe\Report\invoice16column.rtm'
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
    Left = 576
    Top = 336
    Version = '22.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand3: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 38100
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        mmHeight = 13229
        mmLeft = 0
        mmTop = 24871
        mmWidth = 284427
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1588#1582#1589#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 213519
        mmTop = 29633
        mmWidth = 58473
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = 'Label1'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5821
        mmLeft = 1588
        mmTop = 16140
        mmWidth = 8202
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable3'
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5821
        mmLeft = 1588
        mmTop = 10319
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label25'
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 14
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7324
        mmLeft = 109364
        mmTop = 4498
        mmWidth = 62526
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label26'
        Border.mmPadding = 0
        Caption = #1711#1586#1575#1585#1588' '#1605#1575#1578#1585#1610#1587#1610' '#1601#1585#1608#1588' '#1603#1575#1604#1575' '#1576#1585#1581#1587#1576' '#1605#1588#1578#1585#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6604
        mmLeft = 110021
        mmTop = 11113
        mmWidth = 61214
        BandType = 0
        LayerName = Foreground
      end
      object StuffCode8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'l16StuffCode8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'l16StuffCode8'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5376
        mmLeft = 82021
        mmTop = 25929
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object StuffCode6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'l16StuffCode6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'l16StuffCode6'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5376
        mmLeft = 104246
        mmTop = 26194
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object StuffCode4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'l16StuffCode4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'l16StuffCode4'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5376
        mmLeft = 126471
        mmTop = 26194
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object StuffCode2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'l16StuffCode2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'l16StuffCode2'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5376
        mmLeft = 148696
        mmTop = 25929
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object StuffCode0: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'l16StuffCode0'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'l16StuffCode0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5376
        mmLeft = 170921
        mmTop = 25929
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel38: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5376
        mmLeft = 273051
        mmTop = 29633
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground
      end
      object StuffCode12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'l16StuffCode12'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'StuffCode12'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5376
        mmLeft = 37306
        mmTop = 25929
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object StuffCode10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'l16StuffCode10'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'StuffCode10'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5376
        mmLeft = 59796
        mmTop = 25929
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object StuffCode14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'l16StuffCode14'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'StuffCode14'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5376
        mmLeft = 15081
        mmTop = 25929
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object StuffCode1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'l16StuffCode1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'l16StuffCode1'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5376
        mmLeft = 170921
        mmTop = 32279
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object StuffCode3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'StuffCode3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'l16StuffCode3'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5376
        mmLeft = 148696
        mmTop = 32279
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object StuffCode5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'StuffCode5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'l16StuffCode5'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5376
        mmLeft = 126471
        mmTop = 32279
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object StuffCode7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'StuffCode7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'l16StuffCode7'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5376
        mmLeft = 104246
        mmTop = 32279
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object StuffCode11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'StuffCode11'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'StuffCode11'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5376
        mmLeft = 59796
        mmTop = 32279
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object StuffCode13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'StuffCode13'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'StuffCode13'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5376
        mmLeft = 37306
        mmTop = 32279
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object StuffCode15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'StuffCode15'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'StuffCode15'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5376
        mmLeft = 15081
        mmTop = 32279
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object StuffCode9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'StuffCode9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'l16StuffCode9'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5376
        mmLeft = 82021
        mmTop = 32279
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12965
        mmLeft = 36777
        mmTop = 25135
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12965
        mmLeft = 59002
        mmTop = 25135
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12965
        mmLeft = 81492
        mmTop = 24871
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12965
        mmLeft = 103717
        mmTop = 25135
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12965
        mmLeft = 125942
        mmTop = 24871
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12965
        mmLeft = 148167
        mmTop = 25135
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object ppLine18: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12965
        mmLeft = 170392
        mmTop = 25135
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object ppLine19: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12965
        mmLeft = 192617
        mmTop = 24871
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object ppLine21: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line15'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12965
        mmLeft = 272257
        mmTop = 24871
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 31750
        mmWidth = 192617
        BandType = 0
        LayerName = Foreground
      end
      object ppLine30: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line30'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12965
        mmLeft = 14552
        mmTop = 25135
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label28'
        Border.mmPadding = 0
        Caption = 'Label28'
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
        mmLeft = 270934
        mmTop = 9790
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label29'
        Border.mmPadding = 0
        Caption = 'Label29'
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
        mmLeft = 271463
        mmTop = 16404
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground
      end
      object ppLine142: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line142'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12965
        mmLeft = 212196
        mmTop = 24871
        mmWidth = 4233
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand2: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 14288
      mmPrintPosition = 0
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'CustID'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5556
        mmLeft = 272786
        mmTop = 2910
        mmWidth = 11377
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'CustName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 214578
        mmTop = 3175
        mmWidth = 57415
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTX0: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBTX0'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 170657
        mmTop = 0
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTX2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBTX2'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 148432
        mmTop = 0
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTX4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBTX4'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 126207
        mmTop = 0
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTX6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBTX6'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 103981
        mmTop = 0
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTX8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBTX8'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 81756
        mmTop = 0
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTX14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBTX14'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 14817
        mmTop = 0
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTX12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBTX12'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 37042
        mmTop = 0
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTX10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBTX10'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 59531
        mmTop = 0
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTX1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBTX1'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 170657
        mmTop = 7408
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTX3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBTX3'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 148432
        mmTop = 7408
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTX5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBTX5'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 126207
        mmTop = 7408
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTX7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBTX7'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 103981
        mmTop = 7408
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTX9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBTX9'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 81756
        mmTop = 6879
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTX15: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBTX15'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 14817
        mmTop = 7408
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTX13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBTX13'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 37042
        mmTop = 7408
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTX11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBTX11'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 59531
        mmTop = 7408
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 36777
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line16'
        Border.mmPadding = 0
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 0
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line17'
        Border.mmPadding = 0
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 59002
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line18'
        Border.mmPadding = 0
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 81492
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line19'
        Border.mmPadding = 0
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 103717
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine28: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line20'
        Border.mmPadding = 0
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 125942
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine29: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line21'
        Border.mmPadding = 0
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 148167
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine31: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line22'
        Border.mmPadding = 0
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 170392
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine32: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line23'
        Border.mmPadding = 0
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 192617
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine34: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line25'
        Border.mmPadding = 0
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 272257
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine35: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line26'
        Border.mmPadding = 0
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 284163
        mmTop = 0
        mmWidth = 529
        BandType = 4
        LayerName = Foreground
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line28'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 265
        mmTop = 6879
        mmWidth = 192617
        BandType = 4
        LayerName = Foreground
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line29'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 14023
        mmWidth = 284428
        BandType = 4
        LayerName = Foreground
      end
      object ppLine38: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line31'
        Border.mmPadding = 0
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 14552
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine143: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line143'
        Border.mmPadding = 0
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
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
      mmHeight = 14552
      mmPrintPosition = 0
      object ppShape8: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape8'
        mmHeight = 14552
        mmLeft = 0
        mmTop = 0
        mmWidth = 284428
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCLCF4: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCF4'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 126736
        mmTop = 0
        mmWidth = 21167
        BandType = 8
        LayerName = Foreground
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 81492
        mmTop = 0
        mmWidth = 3704
        BandType = 8
        LayerName = Foreground
      end
      object ppLine111: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line111'
        Border.mmPadding = 0
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 103717
        mmTop = 0
        mmWidth = 3704
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCLCF3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCF3'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 148696
        mmTop = 7144
        mmWidth = 21431
        BandType = 8
        LayerName = Foreground
      end
      object ppLine129: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line129'
        Border.mmPadding = 0
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 125942
        mmTop = 0
        mmWidth = 3704
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCLCF2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCF2'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 148696
        mmTop = 0
        mmWidth = 21431
        BandType = 8
        LayerName = Foreground
      end
      object ppLine130: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line130'
        Border.mmPadding = 0
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 148167
        mmTop = 0
        mmWidth = 3704
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCLCF1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCF1'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 170921
        mmTop = 7144
        mmWidth = 21431
        BandType = 8
        LayerName = Foreground
      end
      object ppLine131: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line131'
        Border.mmPadding = 0
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 170392
        mmTop = 0
        mmWidth = 3704
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCLCF0: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCF0'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 170921
        mmTop = 0
        mmWidth = 21431
        BandType = 8
        LayerName = Foreground
      end
      object ppLine132: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line132'
        Border.mmPadding = 0
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 192617
        mmTop = 0
        mmWidth = 3704
        BandType = 8
        LayerName = Foreground
      end
      object ppLine133: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line133'
        Border.mmPadding = 0
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 192617
        mmTop = 0
        mmWidth = 3704
        BandType = 8
        LayerName = Foreground
      end
      object ppLine134: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line134'
        Border.mmPadding = 0
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 192617
        mmTop = 0
        mmWidth = 3704
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel39: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label39'
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1603#1604
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
        mmLeft = 273051
        mmTop = 0
        mmWidth = 9525
        BandType = 8
        LayerName = Foreground
      end
      object ppLine135: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line135'
        Border.mmPadding = 0
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 192617
        mmTop = 0
        mmWidth = 3704
        BandType = 8
        LayerName = Foreground
      end
      object ppLine136: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line136'
        Border.mmPadding = 0
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 36777
        mmTop = 0
        mmWidth = 3704
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCLCF12: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCF12'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 37571
        mmTop = 0
        mmWidth = 20902
        BandType = 8
        LayerName = Foreground
      end
      object ppLine137: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line137'
        Border.mmPadding = 0
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 59002
        mmTop = 0
        mmWidth = 3704
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCLCF10: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCF10'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 59531
        mmTop = 0
        mmWidth = 21431
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCLCF14: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCF14'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 14817
        mmTop = 0
        mmWidth = 21431
        BandType = 8
        LayerName = Foreground
      end
      object ppLine138: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line138'
        Border.mmPadding = 0
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 13494
        mmLeft = 14552
        mmTop = 0
        mmWidth = 3704
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCLCF15: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCF15'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 14817
        mmTop = 7144
        mmWidth = 21431
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCLCF13: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCF13'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 37571
        mmTop = 7144
        mmWidth = 20902
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCLCF11: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCF11'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 59267
        mmTop = 7144
        mmWidth = 21431
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCLCF5: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCF5'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 126736
        mmTop = 7144
        mmWidth = 21167
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCLCF6: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCF6'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 104511
        mmTop = 0
        mmWidth = 21167
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCLCF7: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCF7'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 104511
        mmTop = 7144
        mmWidth = 21167
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCLCF8: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCF8'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 82021
        mmTop = 0
        mmWidth = 21431
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCLCF9: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCF9'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 82021
        mmTop = 7144
        mmWidth = 21431
        BandType = 8
        LayerName = Foreground
      end
      object ppLine139: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line139'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 14552
        mmTop = 6879
        mmWidth = 178065
        BandType = 8
        LayerName = Foreground
      end
      object ppLine146: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line146'
        Border.mmPadding = 0
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 212196
        mmTop = 0
        mmWidth = 3704
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand3: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 14552
      mmPrintPosition = 0
      object ppShape9: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape9'
        mmHeight = 14552
        mmLeft = 0
        mmTop = 0
        mmWidth = 284428
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCLCS4: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCS4'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 125942
        mmTop = 794
        mmWidth = 21167
        BandType = 7
        LayerName = Foreground
      end
      object ppLine147: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line147'
        Border.mmPadding = 0
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14552
        mmLeft = 81492
        mmTop = 0
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground
      end
      object ppLine148: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line148'
        Border.mmPadding = 0
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14552
        mmLeft = 103717
        mmTop = 0
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCLCS3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCS3'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 148696
        mmTop = 7938
        mmWidth = 21431
        BandType = 7
        LayerName = Foreground
      end
      object ppLine149: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line149'
        Border.mmPadding = 0
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14552
        mmLeft = 125942
        mmTop = 0
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCLCS2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCS2'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 148696
        mmTop = 794
        mmWidth = 21431
        BandType = 7
        LayerName = Foreground
      end
      object ppLine150: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1301'
        Border.mmPadding = 0
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14552
        mmLeft = 148167
        mmTop = 0
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCLCS1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc301'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 170921
        mmTop = 7938
        mmWidth = 21431
        BandType = 7
        LayerName = Foreground
      end
      object ppLine151: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line151'
        Border.mmPadding = 0
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14552
        mmLeft = 170392
        mmTop = 0
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCLCS0: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCS0'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 170921
        mmTop = 794
        mmWidth = 21431
        BandType = 7
        LayerName = Foreground
      end
      object ppLine153: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line153'
        Border.mmPadding = 0
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14552
        mmLeft = 192617
        mmTop = 0
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground
      end
      object ppLine156: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line156'
        Border.mmPadding = 0
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14552
        mmLeft = 36777
        mmTop = 0
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCLCS12: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCS12'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 37306
        mmTop = 794
        mmWidth = 20902
        BandType = 7
        LayerName = Foreground
      end
      object ppLine157: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line157'
        Border.mmPadding = 0
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14552
        mmLeft = 59002
        mmTop = 0
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCLCS10: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCS10'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 59267
        mmTop = 794
        mmWidth = 21431
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCLCS14: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCS14'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 14817
        mmTop = 794
        mmWidth = 21431
        BandType = 7
        LayerName = Foreground
      end
      object ppLine158: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line158'
        Border.mmPadding = 0
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14552
        mmLeft = 14552
        mmTop = 0
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCLCS15: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCS15'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 14817
        mmTop = 7938
        mmWidth = 21431
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCLCS13: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCS13'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 37306
        mmTop = 7938
        mmWidth = 20902
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCLCS11: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCS11'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 59267
        mmTop = 7938
        mmWidth = 21431
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCLCS5: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCS5'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 125942
        mmTop = 7938
        mmWidth = 21167
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCLCS6: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCS6'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 104246
        mmTop = 794
        mmWidth = 21167
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCLCS7: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc401'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 104246
        mmTop = 7938
        mmWidth = 21167
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCLCS8: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCS8'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 81756
        mmTop = 794
        mmWidth = 21431
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCLCS9: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCS9'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 81756
        mmTop = 7938
        mmWidth = 21431
        BandType = 7
        LayerName = Foreground
      end
      object ppLine159: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line159'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 14817
        mmTop = 7408
        mmWidth = 177800
        BandType = 7
        LayerName = Foreground
      end
      object ppLine162: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line162'
        Border.mmPadding = 0
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14552
        mmLeft = 212196
        mmTop = 0
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel42: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label42'
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1603#1604
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
        mmLeft = 275167
        mmTop = 794
        mmWidth = 9525
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
    DataSource = srcRecipt
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 704
    Top = 333
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'CustID'
      FieldName = 'CustID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'CustName'
      FieldName = 'CustName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'Address'
      FieldName = 'Address'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'StuffCode0'
      FieldName = 'StuffCode0'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'StuffCode1'
      FieldName = 'StuffCode1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'StuffCode2'
      FieldName = 'StuffCode2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'StuffCode3'
      FieldName = 'StuffCode3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'StuffCode4'
      FieldName = 'StuffCode4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'StuffCode5'
      FieldName = 'StuffCode5'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'StuffCode6'
      FieldName = 'StuffCode6'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'StuffCode7'
      FieldName = 'StuffCode7'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'StuffCode8'
      FieldName = 'StuffCode8'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'StuffCode9'
      FieldName = 'StuffCode9'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'StuffCode10'
      FieldName = 'StuffCode10'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'StuffCode11'
      FieldName = 'StuffCode11'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'StuffCode12'
      FieldName = 'StuffCode12'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'StuffCode13'
      FieldName = 'StuffCode13'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'StuffCode14'
      FieldName = 'StuffCode14'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'StuffCode15'
      FieldName = 'StuffCode15'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'StuffCode16'
      FieldName = 'StuffCode16'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'StuffCode17'
      FieldName = 'StuffCode17'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = 'StuffCode18'
      FieldName = 'StuffCode18'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = 'StuffCode19'
      FieldName = 'StuffCode19'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField24: TppField
      FieldAlias = 'ReciptNumber'
      FieldName = 'ReciptNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField25: TppField
      FieldAlias = 'ReciptDate'
      FieldName = 'ReciptDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
  end
  object PopPrint: TPopupMenu
    AutoHotkeys = maManual
    Left = 560
    Top = 405
    object N51: TMenuItem
      Caption = #1670#1575#1662' 5 '#1587#1578#1608#1606#1610
      OnClick = N51Click
    end
    object N52: TMenuItem
      Caption = #1670#1575#1662' 8'#1587#1578#1608#1606#1610
      OnClick = N52Click
    end
    object N53: TMenuItem
      Caption = #1670#1575#1662' 16'#1587#1578#1608#1606#1610
      OnClick = N53Click
    end
  end
  object srcSum: TDataSource
    DataSet = qrySum
    Left = 160
    Top = 407
  end
  object qrySum: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    Left = 104
    Top = 408
  end
end

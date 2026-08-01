inherited PrintCountingLabelF: TPrintCountingLabelF
  Left = 457
  Caption = #1670#1575#1662' '#1576#1585#1711#1607' '#1588#1605#1575#1585#1588' '#1603#1575#1604#1575
  ClientHeight = 364
  ClientWidth = 498
  ExplicitWidth = 504
  ExplicitHeight = 393
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 307
    Width = 498
    ExplicitTop = 266
    ExplicitWidth = 381
  end
  inherited Panel1: TPanel
    Width = 498
    ExplicitWidth = 498
    inherited Image1: TImage
      Left = 132
      Top = 8
      ExplicitLeft = 15
      ExplicitTop = 8
    end
    inherited lblTopic0: TLabel
      Left = 365
      Width = 115
      Caption = #1670#1575#1662' '#1576#1585#1711#1607' '#1588#1605#1575#1585#1588' '#1603#1575#1604#1575
      ExplicitLeft = 248
      ExplicitWidth = 115
    end
    inherited lblTopic1: TLabel
      Left = 148
      Width = 263
      Height = 33
      AutoSize = False
      Caption = ''
      ExplicitLeft = 31
      ExplicitWidth = 263
      ExplicitHeight = 33
    end
  end
  inherited pnlDown: TPanel
    Top = 327
    Width = 498
    ExplicitTop = 327
    ExplicitWidth = 498
    object BitBtn2: TBitBtn
      Left = 169
      Top = 6
      Width = 75
      Height = 25
      Action = act_Excel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 1
    end
    object BitBtn3: TBitBtn
      Left = 330
      Top = 6
      Width = 75
      Height = 25
      Action = actFilter
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      Left = 250
      Top = 4
      Width = 75
      Height = 25
      Action = actPrint
      Caption = #1670#1575#1662
      TabOrder = 3
    end
    object BitBtn4: TBitBtn
      Left = 88
      Top = 6
      Width = 75
      Height = 25
      Action = actSave
      Caption = #1584#1582#1740#1585#1607' '#1575#1591#1604#1575#1593#1575#1578
      TabOrder = 4
    end
  end
  object rdgLimit: TRadioGroup [3]
    Left = 0
    Top = 121
    Width = 498
    Height = 127
    Align = alTop
    Caption = #1605#1581#1583#1608#1583#1607' '#1670#1575#1662
    Items.Strings = (
      '0-'#1705#1575#1604#1575#1607#1575#1610' '#1583#1575#1585#1575#1610' &'#1605#1608#1580#1608#1583#1610
      '1-&'#1607#1605#1600#1600#1600#1607' '#1705#1575#1604#1575#1607#1600#1600#1600#1575
      '2-'#1603#1575#1604#1575#1607#1575#1610' '#1583#1575#1585#1575#1610' '#1711#1585#1583#1588
      '3-'#1705#1575#1604#1575#1607#1575#1740' '#1583#1575#1585#1575#1740' '#1605#1608#1580#1608#1583#1740' '#1705#1607' '#1591#1740' 5 '#1587#1575#1604' '#1585#1575#1705#1583' '#1607#1587#1578#1606#1583' .'
      '4-'#1705#1575#1604#1575#1607#1575#1740' '#1583#1575#1585#1575#1740' '#1711#1585#1583#1588' '#1591#1740' 5 '#1587#1575#1604'.'
      '5-'#1705#1575#1604#1575#1607#1575#1740' '#1583#1575#1585#1575#1740' '#1711#1585#1583#1588' '#1591#1740' 5 '#1587#1575#1604' '#1705#1607' '#1605#1608#1580#1608#1583#1740' '#1583#1575#1585#1606#1583)
    TabOrder = 2
    OnClick = rdgLimitClick
  end
  object chkPrintSerial: TCheckBox [4]
    AlignWithMargins = True
    Left = 3
    Top = 296
    Width = 492
    Height = 25
    Margins.Top = 10
    Margins.Bottom = 6
    Align = alBottom
    Caption = #1588#1605#1575#1585#1607' '#1587#1585#1610#1575#1604' '#1588#1605#1575#1585#1588' '#1576#1585#1575#1610' '#1576#1585#1711#1607' '#1607#1575' '#1670#1575#1662' '#1588#1608#1583'.'#8207
    Checked = True
    State = cbChecked
    TabOrder = 3
  end
  object rgSort: TRadioGroup [5]
    Left = 0
    Top = 248
    Width = 498
    Height = 48
    Align = alTop
    Caption = #1578#1585#1578#1610#1576' '#1576#1585#1581#1587#1576
    Columns = 5
    ItemIndex = 0
    Items.Strings = (
      #1603#1583' '#1603#1575#1604#1575
      #1605#1581#1604' '#1606#1711#1607#1583#1575#1585#1610'*'
      #1606#1575#1605' '#1705#1575#1604#1575'('#1575#1604#1601#1576#1575')'
      #1705#1583#1705#1575#1604#1575'('#1593#1583#1583#1740')'
      'SD1')
    TabOrder = 4
    OnClick = rdgLimitClick
  end
  object chkCountingItems: TCheckBox [6]
    Left = 0
    Top = 73
    Width = 498
    Height = 17
    Align = alTop
    Alignment = taLeftJustify
    Caption = #1575#1740#1575' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1586' '#1601#1575#1740#1604' '#1584#1582#1740#1585#1607' '#1588#1583#1607' '#1582#1608#1575#1606#1583#1607' '#1588#1608#1583' '#1567
    Checked = True
    State = cbChecked
    TabOrder = 5
    OnClick = chkCountingItemsClick
  end
  object mmoCountingItems: TMemo [7]
    Left = 0
    Top = 90
    Width = 498
    Height = 31
    Align = alTop
    Alignment = taCenter
    Color = clInactiveCaption
    Ctl3D = False
    Lines.Strings = (
      
        '"'#1576#1585#1575#1740' '#1575#1606#1578#1582#1575#1576' '#1740#1705#1740' '#1575#1586' '#1711#1586#1740#1606#1607' '#1607#1575#1740' '#1670#1575#1662' '#1576#1575#1740#1583' '#1578#1740#1705' '#1605#1585#1576#1608#1591' '#1576#1607' "'#1575#1591#1604#1575#1593#1575#1578' '#1575#1586' ' +
        #1601#1575#1740#1604' '#1584#1582#1740#1585#1607' '#1588#1583#1607' '#1670#1575#1662' '
      #1588#1608#1583' "'#1585#1575' '#1576#1585#1583#1575#1585#1740#1583' " .')
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 6
  end
  inherited ActionList1: TActionList
    Top = 152
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
    object act_Excel: TAction
      Category = 'Dataset'
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = act_ExcelExecute
    end
    object actSave: TAction
      Caption = #1584#1582#1740#1585#1607' '#1575#1591#1604#1575#1593#1575#1578
      OnExecute = actSaveExecute
    end
  end
  object qryStuffs: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = qryStuffsCalcFields
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'GroupIdFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'GroupIdTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearIDFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearIDTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'storeid'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'codeFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'codeTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'LimitKind'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'SortKind'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      'SELECT  *'
      
        'FROM  dbo.PrintCountingLabel( :GroupIdFrom  , :GroupIdTo  , :Yea' +
        'rIDFrom  , :YearIDTo'
      
        '                                    , :storeid , :codeFrom , :co' +
        'deTo  ,:LimitKind , :SortKind ) AS PrintCountingLabel_1'
      'ORDER BY RptID')
    Left = 184
    Top = 8
    object qryStuffsRptID: TLargeintField
      FieldName = 'RptID'
      ReadOnly = True
    end
    object qryStuffsStuffCode: TLargeintField
      FieldName = 'StuffCode'
    end
    object qryStuffsUnitName: TStringField
      FieldName = 'UnitName'
      Size = 50
    end
    object qryStuffsc_StuffName: TStringField
      FieldName = 'c_StuffName'
      Size = 70
    end
    object qryStuffsc_StuffTecInfo: TStringField
      FieldName = 'c_StuffTecInfo'
      Size = 30
    end
    object qryStuffsn_StoreID: TSmallintField
      FieldName = 'n_StoreID'
    end
    object qryStuffsc_StoreName: TWideStringField
      FieldName = 'c_StoreName'
      Size = 70
    end
    object qryStuffsEntity: TFloatField
      FieldName = 'Entity'
    end
    object qryStuffsWeight: TFloatField
      FieldName = 'Weight'
    end
    object qryStuffs_Serial: TIntegerField
      FieldKind = fkCalculated
      FieldName = '_Serial'
      Calculated = True
    end
    object qryStuffsc_KeepPlace: TStringField
      FieldName = 'c_KeepPlace'
      Size = 50
    end
    object qryStuffsAlphabet: TWideStringField
      FieldName = 'Alphabet'
      Size = 1
    end
    object qryStuffssd1: TStringField
      FieldName = 'sd1'
      Size = 64
    end
    object qryStuffsst1: TIntegerField
      FieldName = 'st1'
    end
    object qryStuffsserial: TIntegerField
      FieldName = 'serial'
    end
    object qryStuffsTierced: TWideStringField
      Tag = 3
      FieldName = 'Tierced'
      Size = 100
    end
    object qryStuffsCabinet: TWideStringField
      Tag = 3
      FieldName = 'Cabinet'
      Size = 100
    end
    object qryStuffsKeepPlace: TStringField
      FieldName = 'KeepPlace'
      Size = 150
    end
    object qryStuffsCabinets: TStringField
      FieldName = 'Cabinets'
      Size = 100
    end
    object qryStuffsTierceds: TStringField
      FieldName = 'Tierceds'
      Size = 100
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcStuffs
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 104
    Top = 136
  end
  object ppReport1: TppReport
    AutoStop = False
    ColumnPositions.Strings = (
      '150500'
      '6350')
    DataPipeline = ppDBPipeline1
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
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 148000
    PrinterSetup.PaperSize = 11
    Template.FileName = 'D:\Projects\Fara2010\BSell\Exe\Report\PrintCountingLabelA5.rtm'
    Units = utMillimeters
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
    Left = 200
    Top = 136
    Version = '23.0'
    mmColumnWidth = 135300
    DataPipelineName = 'ppDBPipeline1'
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 196586
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        mmHeight = 194734
        mmLeft = 529
        mmTop = 794
        mmWidth = 134673
        BandType = 4
        LayerName = Foreground
      end
      object ppShape5: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape5'
        Shape = stRoundRect
        mmHeight = 40746
        mmLeft = 4498
        mmTop = 42333
        mmWidth = 128852
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
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 47890
        mmTop = 6350
        mmWidth = 43392
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
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 49213
        mmTop = 12171
        mmWidth = 40481
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
        mmLeft = 120650
        mmTop = 52123
        mmWidth = 10583
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
        mmLeft = 34396
        mmTop = 53446
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
        mmLeft = 25400
        mmTop = 46302
        mmWidth = 12700
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'StuffCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 9059
        mmLeft = 98690
        mmTop = 51329
        mmWidth = 20955
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
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6879
        mmLeft = 39952
        mmTop = 43921
        mmWidth = 79904
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
        mmLeft = 6879
        mmTop = 52652
        mmWidth = 26194
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'UnitName'
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
        mmLeft = 7144
        mmTop = 45508
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        Pen.Width = 2
        Shape = stCircle
        mmHeight = 3969
        mmLeft = 69056
        mmTop = 2646
        mmWidth = 5292
        BandType = 4
        LayerName = Foreground
      end
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape3'
        Pen.Width = 2
        Shape = stCircle
        mmHeight = 3969
        mmLeft = 126207
        mmTop = 2646
        mmWidth = 5292
        BandType = 4
        LayerName = Foreground
      end
      object ppShape4: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape4'
        Pen.Width = 2
        Shape = stCircle
        mmHeight = 3969
        mmLeft = 7144
        mmTop = 2646
        mmWidth = 5292
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = #1576#1585#1711#1607' '#1588#1605#1575#1585#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tehran'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6435
        mmLeft = 6879
        mmTop = 9260
        mmWidth = 19050
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        OnGetText = ppLabel7GetText
        Border.mmPadding = 0
        Caption = #1576#1585#1711#1600#1600#1607' '#1588#1605#1600#1600#1575#1585#1588' '#1605#1608#1580#1600#1600#1600#1608#1583#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7144
        mmLeft = 51329
        mmTop = 34131
        mmWidth = 36513
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1603#1575#1604#1575':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5292
        mmLeft = 120650
        mmTop = 45244
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = #1578#1593#1600#1600#1600#1583#1575#1583' '#1588#1605#1575#1585#1588' '#1588#1583#1607':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5821
        mmLeft = 101336
        mmTop = 66675
        mmWidth = 28840
        BandType = 4
        LayerName = Foreground
      end
      object ppShape6: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape6'
        mmHeight = 8996
        mmLeft = 78317
        mmTop = 65088
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppShape7: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape7'
        mmHeight = 8996
        mmLeft = 34925
        mmTop = 73819
        mmWidth = 65088
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = #1606#1600#1600#1600#1575#1605' '#1711#1600#1600#1600#1585#1608#1607' '#1588#1605#1575#1585#1588':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5821
        mmLeft = 101336
        mmTop = 75406
        mmWidth = 29633
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = #1575#1605#1590#1600#1600#1600#1575#1569':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5821
        mmLeft = 34396
        mmTop = 63236
        mmWidth = 9525
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        OnGetText = ppDBText3GetText
        Border.mmPadding = 0
        DataField = 'c_StuffName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 31750
        mmTop = 15875
        mmWidth = 87842
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'StuffCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5546
        mmLeft = 68263
        mmTop = 22754
        mmWidth = 51329
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1588' '#1587#1608#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tehran Bold'
        Font.Size = 11
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5969
        mmLeft = 113771
        mmTop = 33867
        mmWidth = 17187
        BandType = 4
        LayerName = Foreground
      end
      object ppShape8: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape8'
        Shape = stRoundRect
        mmHeight = 40746
        mmLeft = 3704
        mmTop = 96573
        mmWidth = 129382
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
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
        mmLeft = 119592
        mmTop = 106363
        mmWidth = 10583
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
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
        mmLeft = 34131
        mmTop = 107950
        mmWidth = 9525
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
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
        mmLeft = 25135
        mmTop = 100806
        mmWidth = 12700
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'StuffCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 9059
        mmLeft = 97102
        mmTop = 105304
        mmWidth = 20955
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        OnGetText = ppDBText3GetText
        Border.mmPadding = 0
        DataField = 'c_StuffName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6985
        mmLeft = 40217
        mmTop = 97367
        mmWidth = 78052
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
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
        mmLeft = 6615
        mmTop = 107156
        mmWidth = 26194
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        Border.mmPadding = 0
        DataField = 'UnitName'
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
        mmLeft = 6879
        mmTop = 100013
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        OnGetText = ppLabel7GetText
        Border.mmPadding = 0
        Caption = #1576#1585#1711#1600#1600#1607' '#1588#1605#1600#1600#1575#1585#1588' '#1605#1608#1580#1600#1600#1600#1608#1583#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7144
        mmLeft = 51329
        mmTop = 88371
        mmWidth = 36513
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1603#1575#1604#1575':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5292
        mmLeft = 119592
        mmTop = 98161
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        Border.mmPadding = 0
        Caption = #1578#1593#1600#1600#1600#1583#1575#1583' '#1588#1605#1575#1585#1588' '#1588#1583#1607':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5821
        mmLeft = 100542
        mmTop = 121973
        mmWidth = 28840
        BandType = 4
        LayerName = Foreground
      end
      object ppShape9: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape9'
        mmHeight = 8996
        mmLeft = 77788
        mmTop = 119856
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppShape10: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape10'
        mmHeight = 8996
        mmLeft = 34396
        mmTop = 128323
        mmWidth = 64823
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        Border.mmPadding = 0
        Caption = #1606#1600#1600#1600#1575#1605' '#1711#1600#1600#1600#1585#1608#1607' '#1588#1605#1575#1585#1588':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5821
        mmLeft = 100542
        mmTop = 130440
        mmWidth = 29633
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label101'
        Border.mmPadding = 0
        Caption = #1575#1605#1590#1600#1600#1600#1575#1569':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5821
        mmLeft = 34131
        mmTop = 117740
        mmWidth = 9525
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label20'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1588' '#1583#1608#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tehran Bold'
        Font.Size = 11
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5969
        mmLeft = 115623
        mmTop = 88371
        mmWidth = 16383
        BandType = 4
        LayerName = Foreground
      end
      object ppShape11: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape11'
        Shape = stRoundRect
        mmHeight = 40746
        mmLeft = 3704
        mmTop = 152136
        mmWidth = 128852
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label21'
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
        mmLeft = 118534
        mmTop = 161396
        mmWidth = 10583
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label22'
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
        mmLeft = 34131
        mmTop = 163513
        mmWidth = 9525
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label23'
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
        mmLeft = 25135
        mmTop = 156369
        mmWidth = 12700
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'StuffCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 9059
        mmLeft = 96838
        mmTop = 160073
        mmWidth = 20955
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        OnGetText = ppDBText3GetText
        Border.mmPadding = 0
        DataField = 'c_StuffName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6985
        mmLeft = 39688
        mmTop = 153194
        mmWidth = 78052
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText101'
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
        mmLeft = 6615
        mmTop = 162719
        mmWidth = 26194
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText15'
        Border.mmPadding = 0
        DataField = 'UnitName'
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
        mmLeft = 6879
        mmTop = 155575
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label24'
        OnGetText = ppLabel7GetText
        Border.mmPadding = 0
        Caption = #1576#1585#1711#1600#1600#1607' '#1588#1605#1600#1600#1575#1585#1588' '#1605#1608#1580#1600#1600#1600#1608#1583#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7144
        mmLeft = 51329
        mmTop = 144198
        mmWidth = 36513
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label25'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1603#1575#1604#1575':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5292
        mmLeft = 118534
        mmTop = 154252
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label26'
        Border.mmPadding = 0
        Caption = #1578#1593#1600#1600#1600#1583#1575#1583' '#1588#1605#1575#1585#1588' '#1588#1583#1607':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5821
        mmLeft = 98954
        mmTop = 175948
        mmWidth = 28840
        BandType = 4
        LayerName = Foreground
      end
      object ppShape12: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape12'
        mmHeight = 8996
        mmLeft = 76465
        mmTop = 175155
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppShape13: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape101'
        mmHeight = 8996
        mmLeft = 36513
        mmTop = 183886
        mmWidth = 61383
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label27'
        Border.mmPadding = 0
        Caption = #1606#1600#1600#1600#1575#1605' '#1711#1600#1600#1600#1585#1608#1607' '#1588#1605#1575#1585#1588':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5821
        mmLeft = 98954
        mmTop = 185209
        mmWidth = 29633
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label28'
        Border.mmPadding = 0
        Caption = #1575#1605#1590#1600#1600#1600#1575#1569':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5821
        mmLeft = 34131
        mmTop = 173302
        mmWidth = 9525
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label201'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1588' '#1575#1608#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tehran Bold'
        Font.Size = 11
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5969
        mmLeft = 114565
        mmTop = 143934
        mmWidth = 16044
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label30'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1603#1575#1604#1575':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5292
        mmLeft = 121179
        mmTop = 16404
        mmWidth = 9790
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label31'
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
        mmLeft = 121179
        mmTop = 23019
        mmWidth = 10319
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        OnPrint = ppDBText19Print
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        Border.mmPadding = 0
        DataField = '_Serial'
        DataPipeline = ppDBPipeline1
        Font.Charset = OEM_CHARSET
        Font.Color = clBlack
        Font.Name = 'Modern'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5927
        mmLeft = 6615
        mmTop = 15875
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText17: TppDBText
        OnPrint = ppDBText19Print
        DesignLayer = ppDesignLayer1
        UserName = 'DBText17'
        Border.mmPadding = 0
        DataField = '_Serial'
        DataPipeline = ppDBPipeline1
        Font.Charset = OEM_CHARSET
        Font.Color = clBlack
        Font.Name = 'Modern'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5927
        mmLeft = 6615
        mmTop = 33602
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText18: TppDBText
        OnPrint = ppDBText19Print
        DesignLayer = ppDesignLayer1
        UserName = 'DBText18'
        Border.mmPadding = 0
        DataField = '_Serial'
        DataPipeline = ppDBPipeline1
        Font.Charset = OEM_CHARSET
        Font.Color = clBlack
        Font.Name = 'Modern'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5927
        mmLeft = 6615
        mmTop = 88106
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText19: TppDBText
        OnPrint = ppDBText19Print
        DesignLayer = ppDesignLayer1
        UserName = 'DBText19'
        Border.mmPadding = 0
        DataField = '_Serial'
        DataPipeline = ppDBPipeline1
        Font.Charset = OEM_CHARSET
        Font.Color = clBlack
        Font.Name = 'Modern'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5927
        mmLeft = 6615
        mmTop = 142611
        mmWidth = 17198
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
        mmLeft = 43127
        mmTop = 22754
        mmWidth = 16140
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
        mmLeft = 4498
        mmTop = 22754
        mmWidth = 38100
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label32'
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
        mmLeft = 109538
        mmTop = 59531
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText20'
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
        mmLeft = 67998
        mmTop = 59531
        mmWidth = 41010
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText201'
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
        mmLeft = 70379
        mmTop = 114829
        mmWidth = 41010
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label33'
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
        mmLeft = 111919
        mmTop = 114829
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label34'
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
        mmLeft = 108744
        mmTop = 169334
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText22'
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
        mmLeft = 67204
        mmTop = 169334
        mmWidth = 41010
        BandType = 4
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Style = psDashDot
        Position = lpBottom
        Style = lsDouble
        Weight = 0.500000000000000000
        mmHeight = 2117
        mmLeft = 0
        mmTop = 84402
        mmWidth = 134938
        BandType = 4
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Pen.Style = psDashDot
        Position = lpBottom
        Style = lsDouble
        Weight = 0.500000000000000000
        mmHeight = 2117
        mmLeft = 529
        mmTop = 138907
        mmWidth = 134938
        BandType = 4
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Pen.Style = psDashDot
        Position = lpBottom
        Style = lsDouble
        Weight = 0.500000000000000000
        mmHeight = 2117
        mmLeft = 0
        mmTop = 29633
        mmWidth = 134938
        BandType = 4
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
  object srcStuffs: TDataSource
    DataSet = qryStuffs
    Left = 112
    Top = 8
  end
  object PopPrint: TPopupMenu
    AutoHotkeys = maManual
    Left = 248
    Top = 9
    object N1: TMenuItem
      Caption = #1670#1575#1662' '#1576#1585#1711#1607' '#1606#1605#1575#1610#1588
      Hint = 'PrintCountingLabel1'
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1670#1575#1662' '#1604#1610#1587#1578' '#1606#1605#1575#1610#1588
      Hint = 'PrintCountingLabel2'
      OnClick = N1Click
    end
    object A51: TMenuItem
      Caption = #1670#1575#1662' A5'
      Hint = 'PrintCountingLabelA5'
      OnClick = N1Click
    end
    object Letter1: TMenuItem
      Caption = #1670#1575#1662' Letter'
      Hint = 'PrintCountingLabelLetter'
      OnClick = N1Click
    end
  end
  object qryinit: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ReciptType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 12
      end>
    SQL.Strings = (
      'declare @ReciptType int'
      'set @ReciptType= :ReciptType'
      'SELECT  *  ,(SELECT   count(*)'
      'FROM            ReciptTypes'
      
        'WHERE       ( ('#39','#39' + RecallReciptTypes + '#39','#39' LIKE '#39'%,'#39'+LTRIM( st' +
        'r(@ReciptType))+'#39',%'#39')  OR'
      '       (ReciptType = @ReciptType))'
      
        ' AND (RecallType IN (2, 3, 4, 5, 6, 7, 8, 10, 11, 12, 13, 15, 16' +
        '))) AS ParentFormActive'
      ''
      ' FROM    ReciptTypes'
      ''
      'where ReciptType=@ReciptType'
      ''
      ''
      'ORDER BY ReciptType'
      '')
    Left = 94
    Top = 212
  end
end

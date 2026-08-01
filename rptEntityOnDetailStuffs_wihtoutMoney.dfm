inherited rptEntityOnDetailStuffs_wihtoutMoneyF: TrptEntityOnDetailStuffs_wihtoutMoneyF
  Left = 224
  Top = 81
  Caption = #1576#1607' '#1578#1601#1603#1610#1603' '#1588#1605#1575#1585#1607' '#1585#1575#1607#1606#1605#1575
  ClientHeight = 525
  ClientWidth = 780
  OnResize = FormResize
  ExplicitWidth = 796
  ExplicitHeight = 564
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 484
    Width = 780
    ExplicitTop = 485
    ExplicitWidth = 784
    object BitBtn2: TBitBtn
      Left = 547
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Anchors = [akRight, akBottom]
      Caption = #1670#1575#1662
      TabOrder = 1
    end
    object BitBtn7: TBitBtn
      Left = 627
      Top = 8
      Width = 75
      Height = 25
      Action = actShowCardex
      Anchors = [akRight, akBottom]
      Caption = #1603#1575#1585#1583#1603#1587
      TabOrder = 2
    end
    object BitBtn6: TBitBtn
      Left = 250
      Top = 8
      Width = 75
      Height = 25
      Action = actSendToExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 3
    end
    object BitBtn3: TBitBtn
      Left = 172
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
    end
    object BitBtn4: TBitBtn
      Left = 94
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 5
    end
    object BitBtn5: TBitBtn
      Left = 706
      Top = 8
      Width = 75
      Height = 25
      Action = actFilter
      Anchors = [akRight, akBottom]
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 6
    end
  end
  inherited Panel2: TPanel
    Width = 780
    Height = 68
    ExplicitWidth = 784
    ExplicitHeight = 68
    inherited ImgTemplate: TImage
      Left = 747
      ExplicitLeft = 747
    end
    inherited lblCaption: TLabel
      Left = 690
      Top = 17
      Height = 16
      ExplicitLeft = 690
      ExplicitTop = 17
    end
    object lblDate: TLabel
      Left = 19
      Top = 49
      Width = 68
      Height = 13
      Anchors = [akLeft, akTop, akRight]
      BiDiMode = bdLeftToRight
      Caption = #1605#1581#1583#1608#1583#1607' '#1578#1575#1585#1610#1582#1610
      ParentBiDiMode = False
    end
    object lblFilter: TLabel
      Left = 593
      Top = 49
      Width = 149
      Height = 13
      Anchors = [akLeft, akTop, akRight]
      Caption = #1605#1581#1583#1608#1583#1607' '#1603#1583' '#1603#1575#1604#1575' '#1608' '#1605#1581#1583#1608#1583#1607' '#1590#1582#1575#1605#1578
    end
    object lblStore: TLabel
      Left = 285
      Top = 8
      Width = 55
      Height = 13
      Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1575#1606#1576#1575#1585
    end
    object DBText1: TDBText
      Left = 19
      Top = 5
      Width = 190
      Height = 16
      Color = 13948116
      DataField = 'c_StoreName'
      DataSource = srcStore
      ParentColor = False
    end
    object DBEdit1: TDBEdit
      Left = 238
      Top = 4
      Width = 44
      Height = 21
      DataField = 'n_StoreID'
      DataSource = srcStore
      TabOrder = 0
    end
    object DBNavigator1: TDBNavigator
      Left = 19
      Top = 28
      Width = 188
      Height = 19
      DataSource = srcStore
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 211
      Top = 3
      Width = 25
      Height = 23
      Caption = '...'
      TabOrder = 2
      OnClick = BitBtn1Click
    end
  end
  inherited Panel3: TPanel
    Top = 68
    Width = 780
    Height = 397
    ExplicitTop = 68
    ExplicitWidth = 784
    ExplicitHeight = 398
  end
  object DBGrid1: TDBGrid [3]
    Left = 0
    Top = 68
    Width = 780
    Height = 397
    Align = alClient
    Color = clCream
    DataSource = srcDetailStuffs
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'ControlCode'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'StuffCode'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'c_StuffName'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'c_StuffTecInfo'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UnitName'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'StuffSize'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'StuffDiameter'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'StuffAlloy'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'StuffGrade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PersonID1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Entity'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Weight'
        Visible = True
      end>
  end
  object StatusBar1: TStatusBar [4]
    Left = 0
    Top = 465
    Width = 780
    Height = 19
    Panels = <
      item
        Width = 150
      end
      item
        Width = 150
      end
      item
        Width = 150
      end
      item
        Width = 50
      end>
    ExplicitTop = 466
    ExplicitWidth = 784
  end
  inherited ActionList: TActionList
    Left = 448
    Top = 0
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actShowCardex: TAction
      Caption = #1603#1575#1585#1583#1603#1587
      OnExecute = actShowCardexExecute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
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
  end
  inherited ImageList1: TImageList
    Left = 488
    Top = 1
  end
  object srcDetailStuffs: TDataSource
    DataSet = qryDetailStuffs
    Left = 112
    Top = 112
  end
  object qryDetailStuffs: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterOpen = qryDetailStuffsAfterOpen
    Parameters = <
      item
        Name = 'DateFrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'DateTo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'StoreIDFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'StoreIDTo'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'StuffCodeFrom'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = Null
      end
      item
        Name = 'StuffCodeTo'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = Null
      end
      item
        Name = 'ControlCodeFrom'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = Null
      end
      item
        Name = 'ControlCodeTo'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = Null
      end
      item
        Name = 'StuffKindActive'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT      dbo.Recipts.StoreID, dbo.ReciptItems.ControlCode, db' +
        'o.ReciptItems.StuffCode, dbo.StuffCoding.c_StuffName, dbo.Units.' +
        'UnitName,'
      
        '                      dbo.ReciptItems.StuffSize, dbo.ReciptItems' +
        '.StuffDiameter, dbo.ReciptItems.StuffAlloy, dbo.ReciptItems.Stuf' +
        'fGrade,'
      
        '                      ROUND(SUM(dbo.ReciptItems.InputEntity - db' +
        'o.ReciptItems.OutputEntity), 3) AS Entity,'
      
        '                      ROUND(SUM(dbo.ReciptItems.InputWeight - db' +
        'o.ReciptItems.OutputWeight), 3) AS Weight,'
      
        '                      MAX(dbo.ReciptItems.PersonID1) AS PersonID' +
        '1,StuffCoding.c_StuffTecInfo'
      'FROM         dbo.ReciptItems INNER JOIN'
      '                      dbo.Recipts ON '
      ''
      
        '                      Recipts.ReciptID = ReciptItems.ReciptID AN' +
        'D Recipts.ServerID = ReciptItems.ServerID AND Recipts.YearID = R' +
        'eciptItems.YearID'
      ''
      ''
      ' INNER JOIN'
      
        '                      dbo.StuffCoding ON dbo.ReciptItems.StuffCo' +
        'de = dbo.StuffCoding.c_StuffCode INNER JOIN'
      
        '                      dbo.Units ON dbo.StuffCoding.n_UnitCode = ' +
        'dbo.Units.UnitCode INNER JOIN'
      
        '                      dbo.ReciptTypes ON dbo.Recipts.ReciptType ' +
        '= dbo.ReciptTypes.ReciptType'
      
        'WHERE     (dbo.ReciptTypes.EffectType IN (2, 4)) AND (dbo.Recipt' +
        's.ReciptState < 3)AND'
      
        '(dbo.Recipts.ReciptDate  BETWEEN :DateFrom AND :DateTo) AND (dbo' +
        '.Recipts.StoreID  BETWEEN :StoreIDFrom  AND :StoreIDTo) AND (dbo' +
        '.ReciptItems.StuffCode  BETWEEN :StuffCodeFrom AND :StuffCodeTo)' +
        ' AND'
      
        ' (dbo.ReciptItems.ControlCode  BETWEEN :ControlCodeFrom AND :Con' +
        'trolCodeTo)'
      'AND (dbo.StuffCoding.OwnerShipKind  in (:StuffKindActive)) '
      
        'GROUP BY dbo.Recipts.StoreID, dbo.ReciptItems.StuffCode, dbo.Stu' +
        'ffCoding.c_StuffName, dbo.Units.UnitName, dbo.ReciptItems.StuffS' +
        'ize,'
      
        '                      dbo.ReciptItems.StuffDiameter, dbo.ReciptI' +
        'tems.StuffAlloy, dbo.ReciptItems.ControlCode, dbo.ReciptItems.St' +
        'uffGrade,StuffCoding.c_StuffTecInfo'
      
        'HAVING      (SUM(dbo.ReciptItems.InputEntity - dbo.ReciptItems.O' +
        'utputEntity) >= 0.0001) OR'
      
        '                      (SUM(dbo.ReciptItems.InputEntity - dbo.Rec' +
        'iptItems.OutputEntity) <= - 0.0001) OR'
      
        '                      (SUM(dbo.ReciptItems.InputWeight - dbo.Rec' +
        'iptItems.OutputWeight) >= 0.0001) OR'
      
        '                      (SUM(dbo.ReciptItems.InputWeight - dbo.Rec' +
        'iptItems.OutputWeight) <= - 0.0001)'
      ''
      'ORDER BY dbo.ReciptItems.ControlCode, dbo.ReciptItems.StuffCode'
      '')
    Left = 192
    Top = 112
    object qryDetailStuffsStoreID: TSmallintField
      FieldName = 'StoreID'
    end
    object qryDetailStuffsControlCode: TLargeintField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1585#1575#1607#1606#1605#1575
      FieldName = 'ControlCode'
    end
    object qryDetailStuffsStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qryDetailStuffsc_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1603#1575#1604#1575
      FieldName = 'c_StuffName'
      Size = 70
    end
    object qryDetailStuffsUnitName: TStringField
      Tag = 3
      DisplayLabel = #1608#1575#1581#1583
      FieldName = 'UnitName'
      Size = 50
    end
    object qryDetailStuffsStuffSize: TStringField
      Tag = 3
      DisplayLabel = #1575#1576#1593#1575#1583
      FieldName = 'StuffSize'
      Size = 12
    end
    object qryDetailStuffsStuffDiameter: TFloatField
      Tag = 3
      DisplayLabel = #1590#1582#1575#1605#1578
      FieldName = 'StuffDiameter'
    end
    object qryDetailStuffsStuffAlloy: TStringField
      DisplayLabel = #1570#1604#1610#1575#1688
      FieldName = 'StuffAlloy'
      Size = 12
    end
    object qryDetailStuffsStuffGrade: TWordField
      DisplayLabel = #1583#1585#1580#1607
      FieldName = 'StuffGrade'
    end
    object qryDetailStuffsEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'Entity'
      ReadOnly = True
    end
    object qryDetailStuffsWeight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606
      FieldName = 'Weight'
      ReadOnly = True
    end
    object qryDetailStuffsPersonID1: TIntegerField
      Tag = 3
      DisplayLabel = #1705#1583' '#1605#1588#1578#1585#1610'/'#1662#1705#1610#1606#1711
      FieldName = 'PersonID1'
      ReadOnly = True
    end
    object qryDetailStuffsc_StuffTecInfo: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1601#1606#1610
      FieldName = 'c_StuffTecInfo'
      Size = 30
    end
  end
  object qryStore: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterScroll = qryStoreAfterScroll
    Parameters = <
      item
        Name = 'UserID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'UserIDAdmin'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'StoreIdFrom'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 0
      end
      item
        Name = 'StoreIdTo'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 999
      end>
    SQL.Strings = (
      'SELECT DISTINCT     Stores.n_StoreID , c_StoreName'
      'FROM         Stores'
      
        ' LEFT OUTER JOIN   UsersStore ON Stores.n_StoreID = UsersStore.n' +
        '_StoreID'
      
        'WHERE ( (UsersStore.n_UserID = :UserID )or ( :UserIDAdmin = 127)' +
        ')  AND         (Stores.n_StoreID  BETWEEN :StoreIdFrom AND :Stor' +
        'eIdTo)')
    Left = 648
    Top = 144
    object qryStoren_StoreID: TSmallintField
      FieldName = 'n_StoreID'
    end
    object qryStorec_StoreName: TStringField
      FieldName = 'c_StoreName'
      Size = 70
    end
  end
  object srcStore: TDataSource
    DataSet = qryStore
    Left = 568
    Top = 152
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
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
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\Projects\Fara\BSell\Exe\Report\rptEntityOnDetailStuffs.rtm'
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
    Left = 160
    Top = 261
    Version = '22.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 35190
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape1'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 27781
        mmWidth = 284692
        BandType = 0
        LayerName = Foreground1
      end
      object ppLblCompanyName: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LblCompanyName'
        OnGetText = ppLblCompanyNameGetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575#1585#1575#1610#1575#1606#1607
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
        mmLeft = 116681
        mmTop = 0
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1711#1586#1575#1585#1588' '#1605#1608#1580#1608#1583#1610' '#1576#1585' '#1581#1587#1576' '#1588#1605#1575#1585#1607' '#1585#1575#1607#1606#1605#1575' '#1608' '#1585#1610#1586' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1575#1604#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7144
        mmLeft = 96838
        mmTop = 6350
        mmWidth = 90752
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        OnGetText = ppLabel3GetText
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1670#1575#1662':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5292
        mmLeft = 8467
        mmTop = 14817
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1575#1606#1576#1575#1585':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7197
        mmLeft = 259292
        mmTop = 13494
        mmWidth = 20659
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 20108
        mmWidth = 284300
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1585#1575#1607#1606#1605#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 130969
        mmTop = 28310
        mmWidth = 18785
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1603#1575#1604#1575' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 229659
        mmTop = 28310
        mmWidth = 46038
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label101'
        Border.mmPadding = 0
        Caption = #1570#1604#1610#1575#1688
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 150813
        mmTop = 28310
        mmWidth = 17992
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label12'
        Border.mmPadding = 0
        Caption = #1662#1603#1610#1606#1711
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6879
        mmLeft = 212725
        mmTop = 28046
        mmWidth = 15610
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = #1575#1576#1593#1575#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 170127
        mmTop = 28310
        mmWidth = 24606
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label14'
        Border.mmPadding = 0
        Caption = #1608#1586#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 82815
        mmTop = 28310
        mmWidth = 26988
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label15'
        Border.mmPadding = 0
        Caption = #1605#1602#1583#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 110861
        mmTop = 28310
        mmWidth = 18785
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label17'
        Border.mmPadding = 0
        Caption = #1590#1582#1575#1605#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 195527
        mmTop = 28310
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label18'
        Border.mmPadding = 0
        Caption = #1585#1583#1610#1601
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6068
        mmLeft = 276983
        mmTop = 28310
        mmWidth = 7056
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label19'
        Border.mmPadding = 0
        Caption = #1578#1608#1590#1610#1581#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6773
        mmLeft = 794
        mmTop = 28310
        mmWidth = 81227
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 148961
        mmTop = 28046
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 274638
        mmTop = 28046
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 227278
        mmTop = 27781
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 193675
        mmTop = 28046
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 210609
        mmTop = 27781
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line101'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 168011
        mmTop = 28046
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line13'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 128852
        mmTop = 27781
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line14'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 108744
        mmTop = 28046
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line15'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 80963
        mmTop = 28046
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText11'
        Border.mmPadding = 0
        DataField = 'n_StoreID'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 252148
        mmTop = 14023
        mmWidth = 6350
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable1'
        OnGetText = ppSystemVariable1GetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 6350
        mmLeft = 8467
        mmTop = 7673
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText15'
        Border.mmPadding = 0
        DataField = 'c_StoreName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5556
        mmLeft = 182298
        mmTop = 14288
        mmWidth = 69056
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        OnGetText = ppLabel6GetText
        Border.mmPadding = 0
        Caption = #1605#1581#1583#1608#1583#1607' '#1578#1575#1585#1610#1582#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5292
        mmLeft = 8467
        mmTop = 22225
        mmWidth = 17727
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label9'
        OnGetText = ppLabel9GetText
        Border.mmPadding = 0
        Caption = #1605#1581#1583#1608#1583#1607'  '#1603#1583'  '#1603#1575#1604#1575'  '#1608'  '#1605#1581#1583#1608#1583#1607'  '#1590#1582#1575#1605#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5376
        mmLeft = 225955
        mmTop = 22225
        mmWidth = 41360
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer2
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6085
        mmLeft = 0
        mmTop = 0
        mmWidth = 284300
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipeline2
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
          PrinterSetup.mmPaperHeight = 210000
          PrinterSetup.mmPaperWidth = 297000
          PrinterSetup.PaperSize = 9
          Units = utMillimeters
          Version = '22.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline2'
          object ppDetailBand2: TppDetailBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 7144
            mmPrintPosition = 0
            object ppLine56: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line56'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 7673
              mmLeft = 283105
              mmTop = 0
              mmWidth = 1588
              BandType = 4
              LayerName = Foreground
            end
            object ppLine58: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line58'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 7673
              mmLeft = 0
              mmTop = 0
              mmWidth = 1323
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText13: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText13'
              Border.mmPadding = 0
              DataField = 'c_StuffName'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6350
              mmLeft = 229130
              mmTop = 529
              mmWidth = 46302
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText14: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText14'
              Border.mmPadding = 0
              DataField = 'PersonID1'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6350
              mmLeft = 212461
              mmTop = 529
              mmWidth = 15875
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText17: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText17'
              Border.mmPadding = 0
              DataField = 'StuffSize'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6350
              mmLeft = 170657
              mmTop = 529
              mmWidth = 23813
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText18: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText18'
              Border.mmPadding = 0
              DataField = 'StuffDiameter'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6350
              mmLeft = 195527
              mmTop = 529
              mmWidth = 16140
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText19: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText19'
              Border.mmPadding = 0
              DataField = 'StuffAlloy'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6350
              mmLeft = 150813
              mmTop = 529
              mmWidth = 18256
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText21: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText21'
              Border.mmPadding = 0
              DataField = 'Entity'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6350
              mmLeft = 111125
              mmTop = 529
              mmWidth = 18785
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText22: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText22'
              Border.mmPadding = 0
              DataField = 'Weight'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6350
              mmLeft = 83608
              mmTop = 265
              mmWidth = 25665
              BandType = 4
              LayerName = Foreground
            end
            object ppLine2: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line2'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 7673
              mmLeft = 128852
              mmTop = 0
              mmWidth = 1588
              BandType = 4
              LayerName = Foreground
            end
            object ppLine24: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line24'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 7673
              mmLeft = 274373
              mmTop = 0
              mmWidth = 1588
              BandType = 4
              LayerName = Foreground
            end
            object ppLine25: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line25'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 7673
              mmLeft = 210609
              mmTop = 0
              mmWidth = 1588
              BandType = 4
              LayerName = Foreground
            end
            object ppLine26: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line26'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 7673
              mmLeft = 168011
              mmTop = 0
              mmWidth = 1588
              BandType = 4
              LayerName = Foreground
            end
            object ppLine28: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line28'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 7673
              mmLeft = 108744
              mmTop = 0
              mmWidth = 1588
              BandType = 4
              LayerName = Foreground
            end
            object ppLine29: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line29'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 7673
              mmLeft = 80963
              mmTop = 0
              mmWidth = 1588
              BandType = 4
              LayerName = Foreground
            end
            object ppLine30: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line201'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 7673
              mmLeft = 149225
              mmTop = 0
              mmWidth = 1323
              BandType = 4
              LayerName = Foreground
            end
            object ppLine36: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line36'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 7673
              mmLeft = 194205
              mmTop = 0
              mmWidth = 1058
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText24: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText24'
              Border.mmPadding = 0
              DataField = 'ControlCode'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6350
              mmLeft = 130704
              mmTop = 529
              mmWidth = 19315
              BandType = 4
              LayerName = Foreground
            end
            object ppLine38: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line38'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 7673
              mmLeft = 227278
              mmTop = 0
              mmWidth = 1588
              BandType = 4
              LayerName = Foreground
            end
            object ppDBCalc1: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc1'
              Border.mmPadding = 0
              DataField = 'ControlCode'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DBCalcType = dcCount
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6615
              mmLeft = 276226
              mmTop = 265
              mmWidth = 7938
              BandType = 4
              LayerName = Foreground
            end
          end
          object ppSummaryBand1: TppSummaryBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 8731
            mmPrintPosition = 0
            object ppDBCalc5: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc5'
              Border.mmPadding = 0
              DataField = 'Weight'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '$#,0;($#,0)'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 12
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6085
              mmLeft = 83873
              mmTop = 0
              mmWidth = 25665
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc6: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc6'
              Border.mmPadding = 0
              DataField = 'Entity'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '$#,0;($#,0)'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 12
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6085
              mmLeft = 111125
              mmTop = 0
              mmWidth = 18785
              BandType = 7
              LayerName = Foreground
            end
            object ppLine46: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line46'
              Border.mmPadding = 0
              Position = lpBottom
              Weight = 0.750000000000000000
              mmHeight = 529
              mmLeft = 0
              mmTop = 6615
              mmWidth = 284692
              BandType = 7
              LayerName = Foreground
            end
            object ppLine48: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line48'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6615
              mmLeft = 128852
              mmTop = 529
              mmWidth = 1588
              BandType = 7
              LayerName = Foreground
            end
            object ppLine49: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line49'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6879
              mmLeft = 108744
              mmTop = 265
              mmWidth = 1588
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel4: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label4'
              Border.mmPadding = 0
              Caption = #1580#1605#1593' '#1603#1604':'#8207
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Yagut'
              Font.Size = 12
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 5556
              mmLeft = 267494
              mmTop = 0
              mmWidth = 13494
              BandType = 7
              LayerName = Foreground
            end
            object ppLine50: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line50'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6615
              mmLeft = 80963
              mmTop = 529
              mmWidth = 1588
              BandType = 7
              LayerName = Foreground
            end
            object ppLine4: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line4'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6615
              mmLeft = 283105
              mmTop = 529
              mmWidth = 1588
              BandType = 7
              LayerName = Foreground
            end
            object ppLine7: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line501'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6615
              mmLeft = 0
              mmTop = 529
              mmWidth = 1588
              BandType = 7
              LayerName = Foreground
            end
            object ppLine6: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line6'
              Border.mmPadding = 0
              Position = lpBottom
              Weight = 0.750000000000000000
              mmHeight = 529
              mmLeft = 0
              mmTop = 0
              mmWidth = 284692
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
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'n_StoreID'
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
        Visible = False
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 7673
        mmPrintPosition = 0
        object ppDBCalc3: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBCalc3'
          Border.mmPadding = 0
          DataField = 'weight'
          DataPipeline = ppDBPipeline2
          DisplayFormat = '$#,0;($#,0)'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 12
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          TextAlignment = taCentered
          Transparent = True
          Visible = False
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 6615
          mmLeft = 51858
          mmTop = 0
          mmWidth = 25400
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc4: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBCalc4'
          Border.mmPadding = 0
          DataField = 'entity'
          DataPipeline = ppDBPipeline2
          DisplayFormat = '$#,0;($#,0)'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 12
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          TextAlignment = taCentered
          Transparent = True
          Visible = False
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 6615
          mmLeft = 78052
          mmTop = 0
          mmWidth = 20638
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel22: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label21'
          Border.mmPadding = 0
          Caption = #1580#1605#1593' '#1603#1604':'#8207
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Yagut'
          Font.Size = 12
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 6085
          mmLeft = 270140
          mmTop = 529
          mmWidth = 13494
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine31: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line11'
          Border.mmPadding = 0
          Position = lpBottom
          Weight = 0.750000000000000000
          mmHeight = 2646
          mmLeft = 0
          mmTop = 4762
          mmWidth = 284300
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine32: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line32'
          Border.mmPadding = 0
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 7938
          mmLeft = 282840
          mmTop = 0
          mmWidth = 1588
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine33: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line33'
          Border.mmPadding = 0
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 7408
          mmLeft = 97896
          mmTop = 0
          mmWidth = 1588
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine34: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line34'
          Border.mmPadding = 0
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 7408
          mmLeft = 76200
          mmTop = 0
          mmWidth = 1588
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine35: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line35'
          Border.mmPadding = 0
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 7408
          mmLeft = 50006
          mmTop = 0
          mmWidth = 1588
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine37: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line37'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 7408
          mmLeft = 0
          mmTop = 0
          mmWidth = 1588
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
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
    DataSource = srcStore
    UserName = 'DBPipeline1'
    Left = 120
    Top = 192
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'n_StoreID'
      FieldName = 'n_StoreID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'c_StoreName'
      FieldName = 'c_StoreName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = srcDetailStuffs
    UserName = 'DBPipeline2'
    Left = 192
    Top = 192
    MasterDataPipelineName = 'ppDBPipeline1'
    object ppDBPipeline2ppField1: TppField
      FieldAlias = 'StoreID'
      FieldName = 'StoreID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField2: TppField
      FieldAlias = 'ControlCode'
      FieldName = 'ControlCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField3: TppField
      FieldAlias = 'StuffCode'
      FieldName = 'StuffCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField4: TppField
      FieldAlias = 'c_StuffName'
      FieldName = 'c_StuffName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField5: TppField
      FieldAlias = 'UnitName'
      FieldName = 'UnitName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField6: TppField
      FieldAlias = 'StuffSize'
      FieldName = 'StuffSize'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField7: TppField
      FieldAlias = 'StuffDiameter'
      FieldName = 'StuffDiameter'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField8: TppField
      FieldAlias = 'StuffAlloy'
      FieldName = 'StuffAlloy'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField9: TppField
      FieldAlias = 'StuffGrade'
      FieldName = 'StuffGrade'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField10: TppField
      FieldAlias = 'Entity'
      FieldName = 'Entity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField11: TppField
      FieldAlias = 'Weight'
      FieldName = 'Weight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField12: TppField
      FieldAlias = 'Price'
      FieldName = 'Price'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField13: TppField
      FieldAlias = 'PersonID1'
      FieldName = 'PersonID1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
  end
end

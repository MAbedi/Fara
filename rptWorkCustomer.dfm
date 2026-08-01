inherited rptWorkCustomerF: TrptWorkCustomerF
  Left = 252
  Top = 211
  Caption = #1711#1586#1575#1585#1588' '#1593#1605#1604#1603#1585#1583' '#1582#1585#1610#1583' '#1605#1588#1578#1585#1610#1575#1606
  ClientHeight = 517
  OnResize = FormResize
  ExplicitWidth = 794
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 476
    inherited BtnReject: TBitBtn
      TabOrder = 3
    end
    object btnFilter: TBitBtn
      Left = 693
      Top = 6
      Width = 75
      Height = 25
      Action = actFilter
      Anchors = [akTop, akRight]
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 2
    end
    object btnShow: TBitBtn
      Left = 615
      Top = 6
      Width = 75
      Height = 25
      Action = actShow
      Anchors = [akTop, akRight]
      Caption = #1606#1605#1575#1610#1588
      TabOrder = 1
    end
    object btnPrint: TBitBtn
      Left = 537
      Top = 6
      Width = 75
      Height = 25
      Action = actPrint
      Anchors = [akTop, akRight]
      Caption = #1670#1575#1662
      TabOrder = 0
    end
    object btnSort: TBitBtn
      Left = 95
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 4
    end
    object btnSearch_: TBitBtn
      Left = 174
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 5
    end
    object btnSendToExcel: TBitBtn
      Left = 253
      Top = 8
      Width = 75
      Height = 25
      Action = actSendToExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 6
    end
  end
  inherited Panel2: TPanel
    Height = 68
    ExplicitHeight = 68
    inherited lblCaption: TLabel
      Height = 16
      ExplicitLeft = 674
    end
    object grpCustomers: TGroupBox
      Left = 1
      Top = 1
      Width = 231
      Height = 66
      Align = alLeft
      Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1605#1588#1578#1585#1610
      TabOrder = 0
      object btn: TSpeedButton
        Left = 112
        Top = 14
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = btnClick
      end
      object DBEdit1: TDBEdit
        Left = 136
        Top = 15
        Width = 86
        Height = 21
        DataField = 'CustID'
        DataSource = srcCustomers
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 4
        Top = 40
        Width = 218
        Height = 19
        Color = clBtnFace
        Ctl3D = False
        DataField = 'CustName'
        DataSource = srcCustomers
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6974207
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object DBNavigator1: TDBNavigator
        Left = 5
        Top = 15
        Width = 104
        Height = 20
        DataSource = srcCustomers
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Flat = True
        TabOrder = 0
      end
    end
  end
  inherited Panel3: TPanel
    Top = 68
    Height = 408
    ExplicitTop = 68
    ExplicitHeight = 409
    object dbgrdStuff: TDBGrid
      Left = 499
      Top = 2
      Width = 289
      Height = 405
      Align = alRight
      DataSource = srcStuffs
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'StuffCode'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_StuffName'
          Width = 172
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UnitName'
          Title.Alignment = taCenter
          Width = 34
          Visible = True
        end>
    end
    object dbgrdRecipts: TDBGrid
      Left = 2
      Top = 2
      Width = 497
      Height = 405
      Align = alClient
      DataSource = srcRecipts
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ReciptNumber'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReciptDate'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReciptCaption'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AcceptEntity'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RollbackEntity'
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OutputEntity'
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UnitSellPrice'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TotalOutputPrice'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ItemNote'
          Width = 162
          Visible = True
        end>
    end
  end
  inherited ActionList: TActionList
    Left = 633
    Top = 15
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actShow: TAction
      Caption = #1606#1605#1575#1610#1588
      OnExecute = actShowExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      OnExecute = actPrintExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actSendToExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendToExcelExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 468
    Top = 8
  end
  object qryCustomers: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryCustomersAfterScroll
    Parameters = <
      item
        Name = 'CustFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'CustTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT DISTINCT Customers.CustID, Customers.CustName'
      'FROM         Customers INNER JOIN'
      
        '                      CustomersGroup ON Customers.CustomerGrpID ' +
        '= CustomersGroup.CustomerGrpID'
      
        'WHERE     (CustomersGroup.GroupType = 0) AND (Customers.CustID B' +
        'ETWEEN :CustFrom AND :CustTo)')
    Left = 293
    Top = 15
    object qryCustomersCustID: TIntegerField
      DisplayLabel = #1603#1583
      FieldName = 'CustID'
    end
    object qryCustomersCustName: TStringField
      DisplayLabel = #1606#1575#1605' '#1605#1588#1578#1585#1610
      FieldName = 'CustName'
      Size = 120
    end
  end
  object srcCustomers: TDataSource
    DataSet = qryCustomers
    Left = 350
  end
  object qryStuffs: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryStuffsAfterScroll
    Parameters = <
      item
        Name = 'CustID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ReciptDateFrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'ReciptDateTO'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'StuffFrom'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = Null
      end
      item
        Name = 'StuffTO'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT    DISTINCT   ReciptItems.StuffCode, StuffCoding.c_StuffN' +
        'ame, Units.UnitName'
      'FROM         ReciptItems INNER JOIN'
      
        '                      StuffCoding ON ReciptItems.StuffCode = Stu' +
        'ffCoding.c_StuffCode INNER JOIN'
      
        '                      Recipts ON Recipts.ReciptID = ReciptItems.' +
        'ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND Recipts' +
        '.YearID = ReciptItems.YearID'
      ' LEFT OUTER JOIN'
      
        '                      Units ON StuffCoding.n_UnitCode = Units.Un' +
        'itCode'
      
        'WHERE   (Recipts.PersonID1 = :CustID) AND (Recipts.ReciptDate BE' +
        'TWEEN :ReciptDateFrom AND :ReciptDateTO)'
      'and  (ReciptItems.StuffCode BETWEEN :StuffFrom AND :StuffTO)'
      ''
      '')
    Left = 614
    Top = 102
    object qryStuffsStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qryStuffsc_StuffName: TStringField
      DisplayLabel = #1606#1575#1605' '#1603#1575#1604#1575
      FieldName = 'c_StuffName'
      ReadOnly = True
      Size = 150
    end
    object qryStuffsUnitName: TStringField
      Alignment = taCenter
      DisplayLabel = #1608#1575#1581#1583
      FieldName = 'UnitName'
      Size = 50
    end
  end
  object srcStuffs: TDataSource
    DataSet = qryStuffs
    Left = 623
    Top = 189
  end
  object qryRecipts: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'StuffCode'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = Null
      end
      item
        Name = 'CustId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ReciptDateFrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'ReciptDateTO'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT   DISTINCT   ReciptItems.StuffCode, Recipts.ReciptNumber,' +
        ' Recipts.ReciptDate, ReciptTypes.ReciptCaption, ReciptItems.Acce' +
        'ptEntity, ReciptItems.RollbackEntity, '
      
        '                      ReciptItems.OutputEntity, ReciptItems.Unit' +
        'SellPrice, ReciptItems.TotalOutputPrice, ReciptItems.ItemNote,Re' +
        'cipts.ReciptID'
      ', ReciptItems.ServerID, ReciptItems.YearID'
      ''
      'FROM         ReciptItems INNER JOIN'
      
        '                      Recipts ON Recipts.ReciptID = ReciptItems.' +
        'ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND Recipts' +
        '.YearID = ReciptItems.YearID'
      ' LEFT OUTER JOIN'
      
        '                      ReciptTypes ON Recipts.ReciptType = Recipt' +
        'Types.ReciptType'
      'WHERE   (ReciptItems.StuffCode = :StuffCode) '
      'AND (Recipts.PersonID1 = :CustId) '
      
        'AND (Recipts.ReciptDate BETWEEN :ReciptDateFrom AND :ReciptDateT' +
        'O)')
    Left = 87
    Top = 121
    object qryReciptsStuffCode: TLargeintField
      FieldName = 'StuffCode'
    end
    object qryReciptsReciptNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1575#1603#1578#1608#1585' '
      FieldName = 'ReciptNumber'
    end
    object qryReciptsReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryReciptsReciptCaption: TStringField
      Tag = 3
      DisplayLabel = #1606#1608#1593
      FieldName = 'ReciptCaption'
      Size = 70
    end
    object qryReciptsAcceptEntity: TFloatField
      Tag = 3
      DisplayLabel = #1578#1593#1583#1575#1583' '#1606#1575#1582#1575#1604#1589#1610
      FieldName = 'AcceptEntity'
      currency = True
    end
    object qryReciptsRollbackEntity: TFloatField
      Tag = 3
      DisplayLabel = #1576#1585#1711#1588#1578#1610
      FieldName = 'RollbackEntity'
      currency = True
    end
    object qryReciptsOutputEntity: TFloatField
      Tag = 3
      DisplayLabel = #1582#1575#1604#1589
      FieldName = 'OutputEntity'
    end
    object qryReciptsUnitSellPrice: TFMTBCDField
      Tag = 3
      DisplayLabel = #1576#1607#1575#1610' '#1608#1575#1581#1583
      FieldName = 'UnitSellPrice'
      currency = True
      Precision = 19
    end
    object qryReciptsTotalOutputPrice: TBCDField
      Tag = 3
      DisplayLabel = #1576#1607#1575#1610' '#1603#1604
      FieldName = 'TotalOutputPrice'
      currency = True
      Precision = 19
    end
    object qryReciptsItemNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'ItemNote'
      Size = 1500
    end
    object qryReciptsReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryReciptsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryReciptsYearID: TIntegerField
      FieldName = 'YearID'
    end
  end
  object srcRecipts: TDataSource
    DataSet = qryRecipts
    Left = 170
    Top = 239
  end
  object ppDBCust: TppDBPipeline
    DataSource = srcCustomers
    UserName = 'DBCust'
    Left = 295
    Top = 111
    object ppDBCustppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CustID'
      FieldName = 'CustID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDBCustppField2: TppField
      FieldAlias = 'CustName'
      FieldName = 'CustName'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
  end
  object ppDBStuffs: TppDBPipeline
    DataSource = srcStuffs
    UserName = 'DBStuffs'
    Left = 550
    Top = 141
    MasterDataPipelineName = 'ppDBCust'
  end
  object ppDBRecipts: TppDBPipeline
    DataSource = srcRecipts
    UserName = 'DBRecipts'
    Left = 254
    Top = 165
    MasterDataPipelineName = 'ppDBStuffs'
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBCust
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
    Template.FileName = 'D:\Projects\Fara\BSell\Exe\Report\rptWorkCustomer.rtm'
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
    Left = 304
    Top = 269
    Version = '22.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBCust'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 16404
      mmPrintPosition = 0
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1711#1586#1575#1585#1588' '#1593#1605#1604#1705#1585#1583' '#1582#1585#1610#1583' '#1605#1588#1578#1585#1610#1575#1606
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
        mmLeft = 121557
        mmTop = 6615
        mmWidth = 41063
        BandType = 0
        LayerName = Foreground2
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer3
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 10054
        mmTop = 1852
        mmWidth = 7281
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label14'
        Border.mmPadding = 0
        Caption = #1605#1581#1583#1608#1583#1607' '#1578#1575#1585#1610#1582
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 6350
        mmLeft = 235215
        mmTop = 265
        mmWidth = 13494
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label19'
        Border.mmPadding = 0
        Caption = #1605#1581#1583#1608#1583#1607' '#1588#1605#1575#1585#1607' '#1601#1585#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 6615
        mmLeft = 250825
        mmTop = 0
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        Visible = False
        mmHeight = 6615
        mmLeft = 8731
        mmTop = 7408
        mmWidth = 5821
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel44: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label102'
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
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
        mmLeft = 116152
        mmTop = 1058
        mmWidth = 52123
        BandType = 0
        LayerName = Foreground2
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      PrintCount = 50
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer3
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppDBStuffs'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 0
        mmWidth = 284300
        BandType = 4
        LayerName = Foreground2
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppDBStuffs
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
          DataPipelineName = 'ppDBStuffs'
          object ppTitleBand1: TppTitleBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand2: TppDetailBand
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 6350
            mmPrintPosition = 0
            object ppSubReport2: TppSubReport
              DesignLayer = ppDesignLayer2
              UserName = 'SubReport2'
              ExpandAll = False
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              TraverseAllData = False
              DataPipelineName = 'ppDBRecipts'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 529
              mmWidth = 284300
              BandType = 4
              LayerName = Foreground1
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              object ppChildReport2: TppChildReport
                AutoStop = False
                DataPipeline = ppDBRecipts
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
                DataPipelineName = 'ppDBRecipts'
                object ppTitleBand2: TppTitleBand
                  Border.mmPadding = 0
                  mmBottomOffset = 0
                  mmHeight = 0
                  mmPrintPosition = 0
                end
                object ppDetailBand3: TppDetailBand
                  Border.mmPadding = 0
                  mmBottomOffset = 0
                  mmHeight = 7144
                  mmPrintPosition = 0
                  object ppDBText2: TppDBText
                    DesignLayer = ppDesignLayer1
                    UserName = 'DBText2'
                    Border.mmPadding = 0
                    DataField = 'ReciptDate'
                    DataPipeline = ppDBRecipts
                    Font.Charset = ARABIC_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Badr'
                    Font.Size = 10
                    Font.Style = []
                    TextAlignment = taCentered
                    Transparent = True
                    DataPipelineName = 'ppDBRecipts'
                    mmHeight = 5027
                    mmLeft = 174361
                    mmTop = 794
                    mmWidth = 14288
                    BandType = 4
                    LayerName = Foreground
                  end
                  object ppDBText4: TppDBText
                    DesignLayer = ppDesignLayer1
                    UserName = 'DBText4'
                    Border.mmPadding = 0
                    DataField = 'ReciptNumber'
                    DataPipeline = ppDBRecipts
                    Font.Charset = ARABIC_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Badr'
                    Font.Size = 10
                    Font.Style = []
                    TextAlignment = taCentered
                    Transparent = True
                    DataPipelineName = 'ppDBRecipts'
                    mmHeight = 5292
                    mmLeft = 193146
                    mmTop = 529
                    mmWidth = 14552
                    BandType = 4
                    LayerName = Foreground
                  end
                  object ppDBText5: TppDBText
                    DesignLayer = ppDesignLayer1
                    UserName = 'DBText5'
                    Border.mmPadding = 0
                    DataField = 'ReciptCaption'
                    DataPipeline = ppDBRecipts
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Zar'
                    Font.Size = 10
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBRecipts'
                    mmHeight = 5292
                    mmLeft = 145521
                    mmTop = 794
                    mmWidth = 23283
                    BandType = 4
                    LayerName = Foreground
                  end
                  object ppDBText6: TppDBText
                    DesignLayer = ppDesignLayer1
                    UserName = 'DBText6'
                    Border.mmPadding = 0
                    DataField = 'AcceptEntity'
                    DataPipeline = ppDBRecipts
                    Font.Charset = ARABIC_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Badr'
                    Font.Size = 10
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBRecipts'
                    mmHeight = 5292
                    mmLeft = 126207
                    mmTop = 794
                    mmWidth = 16933
                    BandType = 4
                    LayerName = Foreground
                  end
                  object ppDBText7: TppDBText
                    DesignLayer = ppDesignLayer1
                    UserName = 'DBText7'
                    Border.mmPadding = 0
                    DataField = 'RollbackEntity'
                    DataPipeline = ppDBRecipts
                    Font.Charset = ARABIC_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Badr'
                    Font.Size = 10
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBRecipts'
                    mmHeight = 5292
                    mmLeft = 107156
                    mmTop = 1058
                    mmWidth = 16404
                    BandType = 4
                    LayerName = Foreground
                  end
                  object ppDBText8: TppDBText
                    DesignLayer = ppDesignLayer1
                    UserName = 'DBText8'
                    Border.mmPadding = 0
                    DataField = 'OutputEntity'
                    DataPipeline = ppDBRecipts
                    Font.Charset = ARABIC_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Badr'
                    Font.Size = 10
                    Font.Style = []
                    ParentDataPipeline = False
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBRecipts'
                    mmHeight = 5292
                    mmLeft = 87048
                    mmTop = 794
                    mmWidth = 16669
                    BandType = 4
                    LayerName = Foreground
                  end
                  object ppDBText9: TppDBText
                    DesignLayer = ppDesignLayer1
                    UserName = 'DBText9'
                    Border.mmPadding = 0
                    DataField = 'UnitSellPrice'
                    DataPipeline = ppDBRecipts
                    DisplayFormat = '#,0;-#,0'
                    Font.Charset = ARABIC_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Badr'
                    Font.Size = 10
                    Font.Style = []
                    ParentDataPipeline = False
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBRecipts'
                    mmHeight = 5292
                    mmLeft = 64558
                    mmTop = 794
                    mmWidth = 20373
                    BandType = 4
                    LayerName = Foreground
                  end
                  object ppDBText10: TppDBText
                    DesignLayer = ppDesignLayer1
                    UserName = 'DBText10'
                    Border.mmPadding = 0
                    DataField = 'TotalOutputPrice'
                    DataPipeline = ppDBRecipts
                    DisplayFormat = '#,0;-#,0'
                    Font.Charset = ARABIC_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Badr'
                    Font.Size = 10
                    Font.Style = []
                    ParentDataPipeline = False
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBRecipts'
                    mmHeight = 5292
                    mmLeft = 41010
                    mmTop = 794
                    mmWidth = 20638
                    BandType = 4
                    LayerName = Foreground
                  end
                  object ppDBText11: TppDBText
                    DesignLayer = ppDesignLayer1
                    UserName = 'DBText101'
                    Border.mmPadding = 0
                    DataField = 'ItemNote'
                    DataPipeline = ppDBRecipts
                    Font.Charset = ARABIC_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Zar'
                    Font.Size = 10
                    Font.Style = []
                    ParentDataPipeline = False
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBRecipts'
                    mmHeight = 5821
                    mmLeft = 0
                    mmTop = 1323
                    mmWidth = 38365
                    BandType = 4
                    LayerName = Foreground
                  end
                  object ppLine1: TppLine
                    DesignLayer = ppDesignLayer1
                    UserName = 'Line1'
                    Border.mmPadding = 0
                    Position = lpRight
                    Weight = 1.000000000000000000
                    mmHeight = 9525
                    mmLeft = 207698
                    mmTop = 0
                    mmWidth = 2910
                    BandType = 4
                    LayerName = Foreground
                  end
                end
                object ppSummaryBand3: TppSummaryBand
                  Border.mmPadding = 0
                  mmBottomOffset = 0
                  mmHeight = 265
                  mmPrintPosition = 0
                  object ppLine4: TppLine
                    DesignLayer = ppDesignLayer1
                    UserName = 'Line4'
                    Border.mmPadding = 0
                    Weight = 1.000000000000000000
                    mmHeight = 265
                    mmLeft = 0
                    mmTop = 0
                    mmWidth = 284428
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
            object ppDBText12: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText12'
              Border.mmPadding = 0
              DataField = 'c_StuffName'
              DataPipeline = ppDBStuffs
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBStuffs'
              mmHeight = 5292
              mmLeft = 214313
              mmTop = 794
              mmWidth = 49213
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText13: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText13'
              Border.mmPadding = 0
              DataField = 'StuffCode'
              DataPipeline = ppDBStuffs
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBStuffs'
              mmHeight = 6435
              mmLeft = 265378
              mmTop = 1058
              mmWidth = 16140
              BandType = 4
              LayerName = Foreground1
            end
          end
          object ppSummaryBand2: TppSummaryBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppGroup3: TppGroup
            BreakName = 'StuffCode'
            DataPipeline = ppDBStuffs
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            KeepTogether = True
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group3'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppDBStuffs'
            NewFile = False
            object ppGroupHeaderBand3: TppGroupHeaderBand
              Border.mmPadding = 0
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
            object ppGroupFooterBand3: TppGroupFooterBand
              Border.mmPadding = 0
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 0
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
        end
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'CustID'
      DataPipeline = ppDBCust
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      ResetPageNo = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBCust'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 17463
        mmPrintPosition = 0
        object ppDBText1: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText1'
          Border.mmPadding = 0
          DataField = 'CustName'
          DataPipeline = ppDBCust
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Zar'
          Font.Size = 11
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBCust'
          mmHeight = 6085
          mmLeft = 157427
          mmTop = 529
          mmWidth = 86254
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppDBText3: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText3'
          Border.mmPadding = 0
          DataField = 'CustID'
          DataPipeline = ppDBCust
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 11
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBCust'
          mmHeight = 5556
          mmLeft = 246063
          mmTop = 265
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel1: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label3'
          Border.mmPadding = 0
          Caption = #1705#1583' '#1608' '#1606#1575#1605' '#1605#1588#1578#1585#1610
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Zar'
          Font.Size = 9
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          mmHeight = 5027
          mmLeft = 264584
          mmTop = 529
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLine2: TppLine
          DesignLayer = ppDesignLayer3
          UserName = 'Line5'
          Border.mmPadding = 0
          Pen.Width = 2
          Position = lpBottom
          Weight = 1.200000047683716000
          mmHeight = 2910
          mmLeft = 0
          mmTop = 5292
          mmWidth = 285751
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel4: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label4'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1705#1583' '#1705#1575#1604#1575
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Zar'
          Font.Size = 9
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          mmHeight = 4995
          mmLeft = 273580
          mmTop = 9790
          mmWidth = 8509
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel6: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label6'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1606#1575#1605' '#1705#1575#1604#1575
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Zar'
          Font.Size = 9
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          mmHeight = 5027
          mmLeft = 252678
          mmTop = 9790
          mmWidth = 11906
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel9: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label9'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1588#1605#1575#1585#1607' '#1601#1575#1705#1578#1608#1585
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Zar'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          mmHeight = 4498
          mmLeft = 193146
          mmTop = 9525
          mmWidth = 14817
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel10: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label10'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1578#1575#1585#1610#1582
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Zar'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          mmHeight = 4487
          mmLeft = 176477
          mmTop = 9525
          mmWidth = 11906
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel11: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label101'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1606#1608#1593
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Zar'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          mmHeight = 4487
          mmLeft = 159015
          mmTop = 9525
          mmWidth = 11906
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel12: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label12'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1606#1575#1582#1575#1604#1589
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Zar'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          mmHeight = 4763
          mmLeft = 134673
          mmTop = 9525
          mmWidth = 13494
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel13: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label13'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1576#1585#1711#1588#1578#1610
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Zar'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          mmHeight = 4487
          mmLeft = 115094
          mmTop = 9525
          mmWidth = 11906
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel14: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label5'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1582#1575#1604#1589
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Zar'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          mmHeight = 4498
          mmLeft = 94456
          mmTop = 9525
          mmWidth = 11906
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel15: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label15'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1576#1607#1575#1610' '#1608#1575#1581#1583
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Zar'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          mmHeight = 4487
          mmLeft = 73025
          mmTop = 9790
          mmWidth = 11906
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel16: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label16'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1576#1607#1575#1610' '#1705#1604
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Zar'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          mmHeight = 4487
          mmLeft = 48154
          mmTop = 9790
          mmWidth = 11906
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel17: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label17'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1578#1608#1590#1610#1581#1575#1578
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Zar'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          mmHeight = 4498
          mmLeft = 15875
          mmTop = 9525
          mmWidth = 11906
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLine3: TppLine
          DesignLayer = ppDesignLayer3
          UserName = 'Line3'
          Border.mmPadding = 0
          Pen.Width = 0
          Position = lpBottom
          Style = lsDouble
          Weight = 0.250000000000000000
          mmHeight = 2910
          mmLeft = 0
          mmTop = 14552
          mmWidth = 285486
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLine5: TppLine
          DesignLayer = ppDesignLayer3
          UserName = 'Line1'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 1.000000000000000000
          mmHeight = 10583
          mmLeft = 210344
          mmTop = 8202
          mmWidth = 1588
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppDesignLayers3: TppDesignLayers
      object ppDesignLayer3: TppDesignLayer
        UserName = 'Foreground2'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end

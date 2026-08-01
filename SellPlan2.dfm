inherited SellPlan2F: TSellPlan2F
  Left = 428
  Top = 206
  Caption = #1576#1585#1606#1575#1605#1607' '#1585#1610#1586#1610' '#1582#1585#1610#1583
  ClientWidth = 769
  OnResize = FormResize
  ExplicitWidth = 781
  ExplicitHeight = 554
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Width = 769
    ExplicitTop = 475
    ExplicitWidth = 769
    object btnOrderSelect: TBitBtn
      Left = 688
      Top = 7
      Width = 83
      Height = 25
      Action = actOrderSelect
      Anchors = [akTop, akRight]
      Caption = #1575#1606#1578#1582#1575#1576#8207#1583#1585#1582#1608#1575#1587#1578
      TabOrder = 6
    end
    object btnShowForm: TBitBtn
      Left = 611
      Top = 7
      Width = 75
      Height = 25
      Action = actShowForm
      Anchors = [akTop, akRight]
      Caption = #1606#1605#1575#1610#1588
      TabOrder = 5
    end
    object btnDelDriver: TBitBtn
      Left = 533
      Top = 8
      Width = 75
      Height = 25
      Action = actDelDriver
      Anchors = [akTop, akRight]
      Caption = #1581#1584#1601' '
      TabOrder = 4
    end
    object btnSort: TBitBtn
      Left = 81
      Top = 7
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 1
    end
    object btnSearch_: TBitBtn
      Left = 157
      Top = 7
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 2
    end
    object btnSendExcel: TBitBtn
      Left = 234
      Top = 7
      Width = 75
      Height = 25
      Action = actSendExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 3
    end
    object btnPrint: TBitBtn
      Left = 310
      Top = 7
      Width = 75
      Height = 25
      Action = actPrint
      Caption = #1670#1575#1662
      TabOrder = 7
    end
    object btnRow: TBitBtn
      Left = 454
      Top = 8
      Width = 75
      Height = 25
      Action = actRow
      Anchors = [akTop, akRight]
      Caption = #1578#1594#1610#1610#1585' '#1585#1583#1610#1601' '#1601#1585#1605
      TabOrder = 8
    end
  end
  inherited Panel2: TPanel
    Width = 769
    Height = 56
    ExplicitWidth = 773
    ExplicitHeight = 56
    inherited ImgTemplate: TImage
      Left = 768
      ExplicitLeft = 768
    end
    inherited lblCaption: TLabel
      Left = 634
      Height = 16
      ExplicitLeft = 634
    end
  end
  inherited Panel3: TPanel
    Top = 56
    Width = 769
    Height = 419
    ExplicitTop = 56
    ExplicitWidth = 769
    ExplicitHeight = 420
    object TabControl1: TTabControl
      Left = 2
      Top = 2
      Width = 765
      Height = 415
      Align = alClient
      TabOrder = 0
      Tabs.Strings = (
        #1578#1593#1610#1610#1606' '#1606#1589#1575#1576' '#1605#1593#1575#1605#1604#1607
        #1578#1593#1610#1610#1606' '#1605#1575#1605#1608#1585' '#1582#1585#1610#1583)
      TabIndex = 0
      OnChange = TabControl1Change
      ExplicitHeight = 416
      object lblUnitName: TLabel
        Left = 4
        Top = 24
        Width = 757
        Height = 13
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = #1604#1610#1587#1578' '#1603#1575#1585#1662#1585#1583#1575#1586#1575#1606'/'#1605#1575#1605#1608#1585' '#1582#1585#1610#1583
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        ExplicitLeft = 2
        ExplicitTop = 2
        ExplicitWidth = 769
      end
      object DBGrid1: TDBGrid
        Left = 4
        Top = 37
        Width = 757
        Height = 173
        Align = alTop
        Color = clCream
        DataSource = srcCustomers
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CustID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CustName'
            Width = 286
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CustomerNote'
            Width = 363
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 4
        Top = 210
        Width = 757
        Height = 201
        Align = alClient
        TabOrder = 1
        ExplicitWidth = 761
        ExplicitHeight = 203
        object lblRecpits: TLabel
          Left = 1
          Top = 1
          Width = 759
          Height = 13
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = #1604#1610#1587#1578' '#1583#1585#1582#1608#1575#1587#1578' '#1582#1585#1610#1583#1607#1575#1610' '#1575#1606#1578#1582#1575#1576' '#1588#1583#1607' '#1580#1607#1578' :'#8204' %S'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          ExplicitWidth = 767
        end
        object DBGrid2: TDBGrid
          Left = 1
          Top = 14
          Width = 759
          Height = 188
          Align = alClient
          Color = clCream
          DataSource = srcRecipts
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = actRowExecute
          Columns = <
            item
              Expanded = False
              FieldName = 'ReciptNumber'
              Width = 39
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ReciptDate'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PersonID1'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CustName'
              Width = 165
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PersonID2'
              Width = 51
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CustName2'
              Width = 114
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Tel'
              Width = 82
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SellsMethodName'
              Width = 146
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SumPrice'
              Visible = True
            end>
        end
      end
    end
  end
  inherited ActionList: TActionList
    Left = 468
    Top = 11
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actOrderSelect: TAction
      Caption = #1575#1606#1578#1582#1575#1576#8207#1583#1585#1582#1608#1575#1587#1578
      OnExecute = actOrderSelectExecute
    end
    object actShowForm: TAction
      Caption = #1606#1605#1575#1610#1588
      OnExecute = actShowFormExecute
    end
    object actDelDriver: TAction
      Caption = #1581#1584#1601' '
      OnExecute = actDelDriverExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actSendExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendExcelExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      OnExecute = actPrintExecute
    end
    object actprintvijeh: TAction
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
      OnExecute = actprintvijehExecute
    end
    object actRow: TAction
      Caption = #1578#1594#1610#1610#1585' '#1585#1583#1610#1601' '#1601#1585#1605
      Visible = False
      OnExecute = actRowExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 533
  end
  object qryCustomers: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryCustomersAfterScroll
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     Customers.CustID, Customers.CustName, Customers.Custo' +
        'merNote'
      'FROM         Customers INNER JOIN'
      
        '                      CustomersGroup ON Customers.CustomerGrpID ' +
        '= CustomersGroup.CustomerGrpID'
      'WHERE      (Customers.CustID <> 0) AND'
      
        '  (Customers.CustomerActive = 0) AND (CustomersGroup.GroupType =' +
        ' 17)')
    Left = 448
    Top = 152
    object qryCustomersCustID: TIntegerField
      DisplayLabel = #1603#1583
      FieldName = 'CustID'
    end
    object qryCustomersCustName: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldName = 'CustName'
      Size = 120
    end
    object qryCustomersCustomerNote: TStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'CustomerNote'
      Size = 250
    end
  end
  object srcCustomers: TDataSource
    DataSet = qryCustomers
    Left = 657
    Top = 135
  end
  object qryRecipts: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PersonID2'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'SellsMethodFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'SellsMethodTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT   Recipts.ReciptID, Recipts.ReciptNumber, Recipts.ReciptD' +
        'ate, Recipts.PersonID1, Recipts.ReciptType, Recipts.PersonID2, C' +
        'ustomers.CustName,'
      
        '                      Customers2.CustName AS CustName2,  Custome' +
        'rs.Tel ,Recipts.ServerID , Recipts.YearID , Recipts.SellsMethod,' +
        ' SellsMethods.SellsMethodName ,'
      
        'SUM(ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice) ' +
        'AS SumPrice'
      ''
      'FROM         Recipts INNER JOIN'
      
        '                      Customers AS Customers2 ON Recipts.PersonI' +
        'D2 = Customers2.CustID INNER JOIN'
      
        '                      Customers ON Recipts.PersonID1 = Customers' +
        '.CustID INNER JOIN'
      
        '                      ReciptItems ON Recipts.ReciptID = ReciptIt' +
        'ems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND Rec' +
        'ipts.YearID = ReciptItems.YearID  '
      'LEFT OUTER JOIN'
      
        '                      AddressInMasir ON Customers.MasirID = Addr' +
        'essInMasir.MasirID   LEFT OUTER JOIN'
      
        '                      SellsMethods ON Recipts.SellsMethod = Sell' +
        'sMethods.SellsMethod'
      ''
      'WHERE   (Recipts.PersonID2 = :PersonID2 )'
      
        ' and (Recipts.ReciptState<2) and (Recipts.ParentReciptID=0 or Re' +
        'cipts.ParentReciptID is null) AND'
      
        ' ( Recipts.ReciptType in (22,120,121,122,123,124,125,126,127,128' +
        ',129) )'
      
        'AND (Recipts.SellsMethod BETWEEN :SellsMethodFrom AND :SellsMeth' +
        'odTo )'
      ''
      
        'GROUP BY Recipts.ReciptID, Recipts.ReciptNumber, Recipts.ReciptD' +
        'ate, Recipts.PersonID1, Recipts.ReciptType,'
      
        'Recipts.PersonID2, Customers.CustName,Customers2.CustName, Recip' +
        'ts.ReciptsRow, Customers.Tel, '
      
        'Recipts.ServerID , Recipts.YearID  , Recipts.SellsMethod, SellsM' +
        'ethods.SellsMethodName')
    Left = 128
    Top = 325
    object qryReciptsReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryReciptsReciptNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607
      FieldName = 'ReciptNumber'
    end
    object qryReciptsReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryReciptsPersonID1: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1602#1587#1605#1578
      FieldName = 'PersonID1'
    end
    object qryReciptsCustName: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1608#1575#1581#1583' '#1583#1585' '#1582#1608#1575#1587#1578' '#1603#1606#1606#1583#1607
      FieldName = 'CustName'
      Size = 150
    end
    object qryReciptsReciptType: TWordField
      FieldName = 'ReciptType'
    end
    object qryReciptsTel: TStringField
      Tag = 3
      DisplayLabel = #1578#1604#1601#1606
      FieldName = 'Tel'
      Size = 30
    end
    object qryReciptsPersonID2: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1603#1575#1585#1662#1585#1583#1575#1586
      FieldName = 'PersonID2'
    end
    object qryReciptsCustName2: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1603#1575#1585#1662#1585#1583#1575#1586
      FieldName = 'CustName2'
      Size = 60
    end
    object qryReciptsSellsMethodName: TWideStringField
      DisplayLabel = #1606#1589#1575#1576' '#1605#1593#1575#1605#1604#1607
      FieldName = 'SellsMethodName'
      Size = 100
    end
    object qryReciptsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryReciptsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryReciptsSumPrice: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1576#1585#1570#1608#1585#1583#1610' '
      FieldName = 'SumPrice'
      ReadOnly = True
      Precision = 19
    end
  end
  object srcRecipts: TDataSource
    DataSet = qryRecipts
    Left = 206
    Top = 324
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
    Template.FileName = 'D:\Projects\Fara\BSell\Exe\Report\RepCustomers2.rtm'
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
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 648
    Top = 335
    Version = '22.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppDetailBand2: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6350
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
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcCustomers
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 368
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
      FieldAlias = 'CustomerNote'
      FieldName = 'CustomerNote'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = srcRecipts
    OpenDataSource = False
    UserName = 'DBPipeline2'
    Left = 504
    Top = 333
    MasterDataPipelineName = 'ppDBPipeline1'
  end
end

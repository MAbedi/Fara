inherited InvoiceWithCashF: TInvoiceWithCashF
  Left = 398
  Top = 231
  Caption = #1593#1605#1604#1603#1585#1583' '#1578#1608#1586#1610#1593' '#1603#1606#1606#1583#1711#1575#1606
  ClientHeight = 517
  OnResize = FormResize
  ExplicitWidth = 794
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 476
    inherited BtnReject: TBitBtn
      Top = 9
      TabOrder = 2
      ExplicitTop = 9
    end
    object btnFilter: TBitBtn
      Left = 699
      Top = 7
      Width = 75
      Height = 26
      Action = actFilter
      Anchors = [akTop, akRight]
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 1
    end
    object btnprint: TBitBtn
      Left = 620
      Top = 7
      Width = 75
      Height = 25
      Action = actShow1
      Anchors = [akTop, akRight]
      Caption = #1606#1605#1575#1610#1588' '#1581#1608#1575#1604#1607
      TabOrder = 0
    end
    object btnSort: TBitBtn
      Left = 95
      Top = 9
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      Left = 174
      Top = 9
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
    end
    object btnExportExcel: TBitBtn
      Left = 253
      Top = 9
      Width = 75
      Height = 25
      Action = actExportExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 5
    end
    object BitBtn2: TBitBtn
      Left = 462
      Top = 7
      Width = 75
      Height = 25
      Action = actPrint
      Anchors = [akTop, akRight]
      Caption = #1670#1575#1662
      TabOrder = 6
    end
    object btnShow2: TBitBtn
      Left = 541
      Top = 7
      Width = 75
      Height = 25
      Action = actShow2
      Anchors = [akTop, akRight]
      Caption = #1606#1605#1575#1610#1588' '#1581#1608#1575#1604#1607'2'
      TabOrder = 7
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
    object lblReport: TLabel
      Left = 2
      Top = 2
      Width = 80
      Height = 13
      Align = alTop
      Alignment = taCenter
      BiDiMode = bdRightToLeft
      Caption = #1604#1610#1587#1578' '#1581#1608#1575#1604#1607' '#1607#1575
      Color = clGradientInactiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label1: TLabel
      Left = 2
      Top = 158
      Width = 263
      Height = 13
      Align = alTop
      Alignment = taCenter
      BiDiMode = bdRightToLeft
      Caption = #1711#1586#1575#1585#1588' '#1593#1605#1604#1603#1585#1583' '#1578#1608#1586#1610#1593' '#1603#1606#1606#1583#1711#1575#1606' '#1576#1607' '#1578#1601#1603#1610#1603' '#1581#1608#1575#1604#1607' '#1601#1585#1608#1588
      Color = clGradientInactiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object DBGrid2: TDBGrid
      Left = 2
      Top = 171
      Width = 786
      Height = 251
      Align = alClient
      Color = clCream
      DataSource = srcInvoice
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = actShow2Execute
      OnKeyPress = DBGrid2KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'PersonID1'
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FormNumber'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FormDate'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Tel'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CustName'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nakhales'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RollBackPrice'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DeficatePrice'
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CashPrice'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CheckCont'
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CheckPrice'
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TotallSellPrice'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Balance'
          Width = 33
          Visible = True
        end>
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 786
      Height = 143
      Align = alTop
      Color = clCream
      DataSource = dsAssignment
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = actShow1Execute
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'ReciptNumber'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReciptDate'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AidNumber'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AidDate'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PersonID3'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CustName'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReciptState'
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'StoreID'
          Width = 39
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_StoreName'
          Width = 39
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AcceptEntity'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RollbackEntity'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Entity'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReciptNote'
          Width = 68
          Visible = True
        end>
    end
  end
  inherited ActionList: TActionList
    Left = 89
    Top = 7
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      OnExecute = actPrintExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actExportExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actExportExcelExecute
    end
    object actShow1: TAction
      Caption = #1606#1605#1575#1610#1588' '#1581#1608#1575#1604#1607
      OnExecute = actShow1Execute
    end
    object actShow2: TAction
      Caption = #1606#1605#1575#1610#1588' '#1581#1608#1575#1604#1607'2'
      OnExecute = actShow2Execute
    end
  end
  inherited ImageList1: TImageList
    Left = 176
    Top = 7
  end
  object qryAssignment: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryAssignmentAfterScroll
    Parameters = <
      item
        Name = 'ReciptNumberFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ReciptNumberTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
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
        Name = 'PersonID3from'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PersonID3to'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'YearID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT    Recipts.ReciptID, Recipts.ReciptNumber, Recipts.Recipt' +
        'Date, Recipts.ReciptState, Recipts.PersonID3,'
      'Customers.CustName, Recipts.ReciptNote,'
      
        '                      SUM(ReciptItems.InputEntity + ReciptItems.' +
        'OutputEntity) AS Entity,'
      
        '                      SUM(ReciptItems.AcceptEntity) AS AcceptEnt' +
        'ity, SUM(ReciptItems.RollbackEntity)'
      
        '                      AS RollbackEntity, Recipts.StoreID, Stores' +
        '.c_StoreName, Recipts.AidNumber, Recipts.AidDate'
      ', Recipts.ServerID, Recipts.YearID'
      'FROM         ReciptItems INNER JOIN'
      
        '                      Recipts ON Recipts.ReciptID = ReciptItems.' +
        'ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND'
      '                      Recipts.YearID = ReciptItems.YearID'
      ' INNER JOIN'
      
        '                      Stores ON Recipts.StoreID = Stores.n_Store' +
        'ID LEFT OUTER JOIN'
      
        '                      Customers ON Recipts.PersonID3 = Customers' +
        '.CustID'
      
        'WHERE     (Recipts.ReciptType = 11)AND (Recipts.ReciptNumber BET' +
        'WEEN :ReciptNumberFrom AND :ReciptNumberTo)'
      '  AND (Recipts.ReciptDate BETWEEN :DateFrom AND :DateTo)'
      '  AND (Recipts.StoreID BETWEEN   :StoreIDFrom AND :StoreIDTo )'
      
        'AND   (Recipts.PersonID3 between :PersonID3from and :PersonID3to' +
        ')'
      ''
      'AND ( Recipts.YearID = :YearID   ) '
      ''
      
        'GROUP BY Recipts.ReciptID, Recipts.StoreID, Recipts.ReciptNumber' +
        ', Recipts.ReciptDate, Customers.CustName, Recipts.ReciptNote,'
      'Stores.c_StoreName,'
      
        '                      Recipts.PersonID3, Recipts.ReciptState, Re' +
        'cipts.AidNumber, Recipts.AidDate'
      ', Recipts.ServerID, Recipts.YearID'
      ''
      'HAVING     (Recipts.ReciptState < 3)'
      'ORDER BY Recipts.ReciptDate, Recipts.ReciptNumber'
      ''
      ' '
      ' '
      ' '
      ' '
      ' '
      '  '
      '  '
      ' ')
    Left = 269
    Top = 92
    object qryAssignmentReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryAssignmentReciptNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607
      FieldName = 'ReciptNumber'
    end
    object qryAssignmentReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryAssignmentReciptState: TWordField
      Tag = 3
      DisplayLabel = #1608#1590#1593#1610#1578
      FieldName = 'ReciptState'
    end
    object qryAssignmentPersonID3: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1585#1575#1606#1606#1583#1607
      FieldName = 'PersonID3'
    end
    object qryAssignmentCustName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1585#1575#1606#1606#1583#1607
      FieldName = 'CustName'
      Size = 120
    end
    object qryAssignmentReciptNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
      FieldName = 'ReciptNote'
      Size = 400
    end
    object qryAssignmentEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1606#1607#1575#1610#1610
      FieldName = 'Entity'
      ReadOnly = True
    end
    object qryAssignmentAcceptEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1578#1575#1610#1610#1583' '#1588#1583#1607
      FieldName = 'AcceptEntity'
      ReadOnly = True
    end
    object qryAssignmentRollbackEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1576#1585#1711#1588#1578#1610
      FieldName = 'RollbackEntity'
      ReadOnly = True
    end
    object qryAssignmentStoreID: TSmallintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1575#1606#1576#1575#1585
      FieldName = 'StoreID'
    end
    object qryAssignmentc_StoreName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1575#1606#1576#1575#1585
      FieldName = 'c_StoreName'
      Size = 70
    end
    object qryAssignmentAidNumber: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1603#1605#1603#1610
      FieldName = 'AidNumber'
      Size = 40
    end
    object qryAssignmentAidDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1603#1605#1603#1610
      FieldName = 'AidDate'
      FixedChar = True
      Size = 10
    end
    object qryAssignmentServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryAssignmentYearID: TIntegerField
      FieldName = 'YearID'
    end
  end
  object dsAssignment: TDataSource
    DataSet = qryAssignment
    Left = 160
    Top = 85
  end
  object qryInvoice: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Parent'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ServerID'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearID'
        DataType = ftString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      'Select * from InvoiceWithCash (:Parent ,  :ServerID, :YearID )'
      'order by FormNumber'
      ''
      ''
      ' ')
    Left = 146
    Top = 284
    object qryInvoiceParentReciptID: TIntegerField
      FieldName = 'ParentReciptID'
    end
    object qryInvoiceReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryInvoicePersonID1: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1582#1585#1610#1583#1575#1585
      FieldName = 'PersonID1'
    end
    object qryInvoiceFormNumber: TFloatField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'FormNumber'
    end
    object qryInvoiceFormDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'FormDate'
      FixedChar = True
      Size = 10
    end
    object qryInvoiceTel: TStringField
      Tag = 3
      DisplayLabel = #1578#1604#1601#1606
      FieldName = 'Tel'
      Size = 30
    end
    object qryInvoiceCustName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1601#1585#1608#1588#1711#1575#1607
      FieldName = 'CustName'
      Size = 120
    end
    object qryInvoiceNakhales: TFloatField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1606#1575#1582#1575#1604#1589
      FieldName = 'Nakhales'
      currency = True
    end
    object qryInvoiceRollBackPrice: TFloatField
      Tag = 3
      DisplayLabel = #1576#1585#1711#1588#1578#1610
      FieldName = 'RollBackPrice'
      currency = True
    end
    object qryInvoicePrice: TBCDField
      FieldName = 'Price'
      currency = True
      Precision = 19
    end
    object qryInvoiceCashPrice: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1606#1602#1583#1610
      FieldName = 'CashPrice'
      currency = True
      Precision = 19
    end
    object qryInvoiceCheckCont: TIntegerField
      Tag = 3
      DisplayLabel = #1578#1593#1583#1575#1583
      FieldName = 'CheckCont'
    end
    object qryInvoiceCheckPrice: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1670#1603
      FieldName = 'CheckPrice'
      currency = True
      Precision = 19
    end
    object qryInvoiceDeficatePrice: TBCDField
      Tag = 3
      DisplayLabel = #1578#1582#1601#1610#1601
      FieldName = 'DeficatePrice'
      currency = True
      Precision = 19
    end
    object qryInvoiceBalance: TBCDField
      Tag = 3
      DisplayLabel = #1605#1575#1606#1583#1607
      FieldName = 'Balance'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryInvoiceServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryInvoiceYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryInvoiceTotallSellPrice: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1582#1575#1604#1589
      FieldName = 'TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object srcInvoice: TDataSource
    DataSet = qryInvoice
    Left = 127
    Top = 354
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = srcInvoice
    UserName = 'DBPipeline2'
    Left = 256
    Top = 305
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsAssignment
    UserName = 'DBPipeline1'
    Left = 56
    Top = 301
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
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\Projects\Fara\BSell\Exe\Report\InvoiceWithCash.rtm'
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
    TextSearchSettings.Enabled = True
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
    Left = 369
    Top = 277
    Version = '22.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 18256
      mmPrintPosition = 0
      object ppLblCompanyName: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LblCompanyName'
        OnGetText = ppLblCompanyNameGetText
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
        mmLeft = 116681
        mmTop = 1058
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground1
      end
      object ppLblPrintDate: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lbprintdate'
        OnGetText = ppLblPrintDateGetText
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
        mmLeft = 2910
        mmTop = 2910
        mmWidth = 12171
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
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 2910
        mmTop = 7938
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground1
      end
      object ppLblCaption: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LblCaption'
        Border.mmPadding = 0
        Caption = #1711#1586#1575#1585#1588' '#1593#1605#1604#1603#1585#1583' '#1578#1608#1586#1610#1593' '#1603#1606#1606#1583#1711#1575#1606' '#1576#1607' '#1578#1601#1603#1610#1603' '#1581#1608#1575#1604#1607' '#1601#1585#1608#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7112
        mmLeft = 99439
        mmTop = 9260
        mmWidth = 80010
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine36: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line36'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 17727
        mmWidth = 284427
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer2
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 0
        mmWidth = 284427
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
          PrinterSetup.mmPaperHeight = 210079
          PrinterSetup.mmPaperWidth = 297127
          PrinterSetup.PaperSize = 9
          Version = '22.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline2'
          object ppTitleBand1: TppTitleBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand2: TppDetailBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 6879
            mmPrintPosition = 0
            object ppDBText2: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText2'
              Border.mmPadding = 0
              DataField = 'PersonID1'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6615
              mmLeft = 266965
              mmTop = 0
              mmWidth = 17198
              BandType = 4
              LayerName = Foreground
            end
            object ppLine11: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line11'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6879
              mmLeft = 266436
              mmTop = 0
              mmWidth = 2910
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText3: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText3'
              Border.mmPadding = 0
              DataField = 'FormNumber'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6615
              mmLeft = 247121
              mmTop = 0
              mmWidth = 19050
              BandType = 4
              LayerName = Foreground
            end
            object ppLine12: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line12'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6879
              mmLeft = 247121
              mmTop = 0
              mmWidth = 2910
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText4: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText4'
              Border.mmPadding = 0
              DataField = 'Tel'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6615
              mmLeft = 224367
              mmTop = 0
              mmWidth = 22225
              BandType = 4
              LayerName = Foreground
            end
            object ppLine13: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line13'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6879
              mmLeft = 224103
              mmTop = 0
              mmWidth = 2910
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText5: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText5'
              Border.mmPadding = 0
              DataField = 'CustName'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 5821
              mmLeft = 174625
              mmTop = 794
              mmWidth = 48419
              BandType = 4
              LayerName = Foreground
            end
            object ppLine14: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line14'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6879
              mmLeft = 173832
              mmTop = 0
              mmWidth = 2910
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText6: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText6'
              Border.mmPadding = 0
              DataField = 'Nakhales'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0;(#,0)'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6615
              mmLeft = 150019
              mmTop = 0
              mmWidth = 23019
              BandType = 4
              LayerName = Foreground
            end
            object ppLine15: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line15'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6879
              mmLeft = 148961
              mmTop = 0
              mmWidth = 2910
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText7: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText7'
              Border.mmPadding = 0
              DataField = 'RollBackPrice'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0;(#,0)'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6615
              mmLeft = 125148
              mmTop = 0
              mmWidth = 23019
              BandType = 4
              LayerName = Foreground
            end
            object ppLine16: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line16'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6879
              mmLeft = 124354
              mmTop = 0
              mmWidth = 2646
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText8: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText8'
              Border.mmPadding = 0
              DataField = 'DeficatePrice'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0;(#,0)'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6615
              mmLeft = 100542
              mmTop = 0
              mmWidth = 23019
              BandType = 4
              LayerName = Foreground
            end
            object ppLine17: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line17'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6879
              mmLeft = 99484
              mmTop = 0
              mmWidth = 2646
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText9: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText9'
              Border.mmPadding = 0
              DataField = 'CashPrice'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0;(#,0)'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6615
              mmLeft = 71173
              mmTop = 0
              mmWidth = 27517
              BandType = 4
              LayerName = Foreground
            end
            object ppLine18: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line18'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6879
              mmLeft = 70644
              mmTop = 0
              mmWidth = 2646
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText10: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText10'
              Border.mmPadding = 0
              DataField = 'CheckCont'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0;-#,0'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 5842
              mmLeft = 58738
              mmTop = 265
              mmWidth = 10848
              BandType = 4
              LayerName = Foreground
            end
            object ppLine19: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line19'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6879
              mmLeft = 57944
              mmTop = 0
              mmWidth = 2646
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText11: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText101'
              Border.mmPadding = 0
              DataField = 'CheckPrice'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0;(#,0)'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6519
              mmLeft = 27781
              mmTop = 0
              mmWidth = 29633
              BandType = 4
              LayerName = Foreground
            end
            object ppLine20: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line20'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6879
              mmLeft = 26723
              mmTop = 0
              mmWidth = 2646
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText12: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText12'
              Border.mmPadding = 0
              DataField = 'Balance'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0;(#,0)'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6519
              mmLeft = 0
              mmTop = 0
              mmWidth = 26194
              BandType = 4
              LayerName = Foreground
            end
            object ppLine21: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line201'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6879
              mmLeft = 0
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
              mmHeight = 6879
              mmLeft = 284163
              mmTop = 0
              mmWidth = 2910
              BandType = 4
              LayerName = Foreground
            end
            object ppLine24: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line24'
              Border.mmPadding = 0
              Pen.Style = psDot
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 0
              mmTop = 6614
              mmWidth = 284428
              BandType = 4
              LayerName = Foreground
            end
          end
          object ppSummaryBand1: TppSummaryBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 8731
            mmPrintPosition = 0
            object ppLine23: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line23'
              Border.mmPadding = 0
              Pen.Width = 2
              Weight = 1.500000000000000000
              mmHeight = 529
              mmLeft = 0
              mmTop = 0
              mmWidth = 284428
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc1: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc1'
              Border.mmPadding = 0
              DataField = 'Balance'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0;(#,0)'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6519
              mmLeft = 265
              mmTop = 529
              mmWidth = 25929
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc2: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc2'
              Border.mmPadding = 0
              DataField = 'CheckPrice'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0;(#,0)'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6519
              mmLeft = 28046
              mmTop = 529
              mmWidth = 29633
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc3: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc3'
              Border.mmPadding = 0
              DataField = 'CheckCont'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6519
              mmLeft = 59002
              mmTop = 529
              mmWidth = 10848
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc4: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc4'
              Border.mmPadding = 0
              DataField = 'CashPrice'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0;(#,0)'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6519
              mmLeft = 71702
              mmTop = 529
              mmWidth = 27517
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc5: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc5'
              Border.mmPadding = 0
              DataField = 'DeficatePrice'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0;(#,0)'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6519
              mmLeft = 100806
              mmTop = 529
              mmWidth = 23019
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc6: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc6'
              Border.mmPadding = 0
              DataField = 'Nakhales'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0;(#,0)'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6519
              mmLeft = 150548
              mmTop = 529
              mmWidth = 23019
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc7: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc7'
              Border.mmPadding = 0
              DataField = 'RollBackPrice'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0;(#,0)'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6519
              mmLeft = 125677
              mmTop = 529
              mmWidth = 23019
              BandType = 7
              LayerName = Foreground
            end
            object ppLine25: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line25'
              Border.mmPadding = 0
              Style = lsDouble
              Weight = 0.750000000000000000
              mmHeight = 1852
              mmLeft = 0
              mmTop = 6879
              mmWidth = 284428
              BandType = 7
              LayerName = Foreground
            end
            object ppLine26: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line202'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 7144
              mmLeft = 26723
              mmTop = 0
              mmWidth = 2646
              BandType = 7
              LayerName = Foreground
            end
            object ppLine27: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line27'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 7144
              mmLeft = 57944
              mmTop = 0
              mmWidth = 2646
              BandType = 7
              LayerName = Foreground
            end
            object ppLine28: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line28'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 7144
              mmLeft = 70644
              mmTop = 0
              mmWidth = 2646
              BandType = 7
              LayerName = Foreground
            end
            object ppLine29: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line29'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 7144
              mmLeft = 99484
              mmTop = 0
              mmWidth = 2646
              BandType = 7
              LayerName = Foreground
            end
            object ppLine30: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line30'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 7144
              mmLeft = 124354
              mmTop = 265
              mmWidth = 2646
              BandType = 7
              LayerName = Foreground
            end
            object ppLine31: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line301'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 7144
              mmLeft = 148961
              mmTop = 0
              mmWidth = 2646
              BandType = 7
              LayerName = Foreground
            end
            object ppLine32: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line32'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 7144
              mmLeft = 173832
              mmTop = 0
              mmWidth = 2646
              BandType = 7
              LayerName = Foreground
            end
            object ppLine33: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line33'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 7144
              mmLeft = 0
              mmTop = 265
              mmWidth = 2646
              BandType = 7
              LayerName = Foreground
            end
            object ppLine34: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line34'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 7408
              mmLeft = 284163
              mmTop = 0
              mmWidth = 2646
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel18: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label18'
              Border.mmPadding = 0
              Caption = #1580#1605#1593' '#1603#1600#1600#1600#1600#1600#1600#1600#1600#1600#1604
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Yagut'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5969
              mmLeft = 257239
              mmTop = 794
              mmWidth = 20574
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
      mmHeight = 12965
      mmPrintPosition = 0
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = #1578#1606#1592#1610#1605' '#1603#1606#1606#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6011
        mmLeft = 240385
        mmTop = 0
        mmWidth = 15325
        BandType = 8
        LayerName = Foreground1
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label16'
        Border.mmPadding = 0
        Caption = #1578#1575#1574#1610#1583' '#1603#1606#1606#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6011
        mmLeft = 135140
        mmTop = 0
        mmWidth = 13970
        BandType = 8
        LayerName = Foreground1
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label17'
        Border.mmPadding = 0
        Caption = #1605#1607#1585' '#1588#1585#1603#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6011
        mmLeft = 23781
        mmTop = 529
        mmWidth = 13293
        BandType = 8
        LayerName = Foreground1
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'ReciptID'
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
        mmHeight = 18785
        mmPrintPosition = 0
        object ppDBText1: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText1'
          Border.mmPadding = 0
          DataField = 'CustName'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6011
          mmLeft = 205846
          mmTop = 1588
          mmWidth = 34660
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape2: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape2'
          mmHeight = 7144
          mmLeft = 0
          mmTop = 11377
          mmWidth = 284428
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel1: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label1'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1603#1583' '#1582#1585#1610#1583#1575#1585
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 5027
          mmLeft = 266965
          mmTop = 12700
          mmWidth = 16140
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel2: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label2'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1588#1605#1575#1585#1607' '#1601#1585#1605
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 5027
          mmLeft = 248709
          mmTop = 12700
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel3: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label3'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1578#1604#1601#1606
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 5027
          mmLeft = 227542
          mmTop = 12700
          mmWidth = 18256
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine1: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line1'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 6615
          mmLeft = 266436
          mmTop = 11642
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine2: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line2'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 6615
          mmLeft = 247121
          mmTop = 11642
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine3: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line3'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 6615
          mmLeft = 224103
          mmTop = 11642
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel4: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label4'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1606#1575#1605' '#1601#1585#1608#1588#1711#1575#1607
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 5821
          mmLeft = 174361
          mmTop = 11906
          mmWidth = 49742
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine4: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line4'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 6615
          mmLeft = 173832
          mmTop = 11642
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel5: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label5'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1605#1576#1604#1594' '#1606#1575#1582#1575#1589
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 5821
          mmLeft = 149754
          mmTop = 11906
          mmWidth = 23813
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel6: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label6'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1576#1585#1711#1588#1578#1610
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 5821
          mmLeft = 124884
          mmTop = 11906
          mmWidth = 23813
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine5: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line5'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 6615
          mmLeft = 148961
          mmTop = 11642
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine6: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line6'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 6615
          mmLeft = 124354
          mmTop = 11642
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel7: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label7'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1578#1582#1601#1610#1601
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 5821
          mmLeft = 100277
          mmTop = 11906
          mmWidth = 23813
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine7: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line7'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 6615
          mmLeft = 99484
          mmTop = 11642
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel8: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label8'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1605#1576#1604#1594' '#1606#1602#1583#1610
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 5821
          mmLeft = 71702
          mmTop = 11906
          mmWidth = 27781
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine8: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line8'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 6615
          mmLeft = 70644
          mmTop = 11642
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel9: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label9'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1578#1593#1583#1575#1583
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 5821
          mmLeft = 58208
          mmTop = 11906
          mmWidth = 11906
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel10: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label10'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1605#1576#1604#1594' '#1670#1603
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 5821
          mmLeft = 27781
          mmTop = 11906
          mmWidth = 29898
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine9: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line9'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 6615
          mmLeft = 57944
          mmTop = 11642
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel11: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label101'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1605#1575#1606#1583#1607
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 5821
          mmLeft = 1323
          mmTop = 11906
          mmWidth = 23813
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine10: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line10'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 6615
          mmLeft = 26723
          mmTop = 11642
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine35: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line35'
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 18519
          mmWidth = 284427
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText13: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText13'
          Border.mmPadding = 0
          DataField = 'PersonID3'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6519
          mmLeft = 241036
          mmTop = 1058
          mmWidth = 12171
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel12: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label11'
          Border.mmPadding = 0
          Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1578#1608#1586#1610#1593' '#1603#1606#1606#1583#1607' :'#8207
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 6011
          mmLeft = 253228
          mmTop = 1058
          mmWidth = 27940
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel13: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label12'
          Border.mmPadding = 0
          Caption = #1588#1605#1575#1585#1607' '#1581#1608#1575#1604#1607' '#1589#1575#1583#1585#1607':'#8207
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Yagut'
          Font.Size = 9
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 5503
          mmLeft = 25765
          mmTop = 0
          mmWidth = 23876
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText14: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText14'
          Border.mmPadding = 0
          DataField = 'ReciptNumber'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 9
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 5927
          mmLeft = 7144
          mmTop = 0
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel14: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label14'
          Border.mmPadding = 0
          Caption = #1578#1575#1585#1610#1582' '#1581#1608#1575#1604#1607' '#1589#1575#1583#1585#1607':'#8207' '
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Yagut'
          Font.Size = 9
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 5503
          mmLeft = 25400
          mmTop = 5292
          mmWidth = 23961
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText15: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText15'
          Border.mmPadding = 0
          DataField = 'ReciptDate'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 9
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 5821
          mmLeft = 7144
          mmTop = 4763
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
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
  object pmmenu: TPopupMenu
    AutoHotkeys = maManual
    Left = 580
    Top = 365
    object N3: TMenuItem
      Caption = #1670#1575#1662
      object N2: TMenuItem
        Caption = #1580#1575#1585#1610
        Hint = 'InvoiceWithCash'
        OnClick = ALLN2Click
      end
      object N1: TMenuItem
        Tag = 1
        Caption = #1607#1605#1607
        Hint = 'InvoiceWithCash'
        OnClick = ALLN2Click
      end
    end
    object N21: TMenuItem
      Caption = #1670#1575#1662' 2'
      object N4: TMenuItem
        Caption = #1580#1575#1585#1610
        Hint = 'InvoiceWithCash2'
        OnClick = ALLN2Click
      end
      object N5: TMenuItem
        Tag = 1
        Caption = #1607#1605#1607
        Hint = 'InvoiceWithCash2'
        OnClick = ALLN2Click
      end
      object TMenuItem
      end
    end
  end
end

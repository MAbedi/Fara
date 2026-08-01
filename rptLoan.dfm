inherited rptLoanF: TrptLoanF
  Left = 316
  Top = 96
  Caption = #1711#1586#1575#1585#1588' '#1608#1575#1605
  ClientHeight = 589
  ClientWidth = 778
  OnActivate = FormActivate
  OnResize = FormResize
  ExplicitWidth = 794
  ExplicitHeight = 628
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 548
    Width = 778
    ExplicitTop = 549
    object BitBtn6: TBitBtn
      Left = 94
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 172
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 2
    end
    object BitBtn2: TBitBtn
      Left = 250
      Top = 8
      Width = 75
      Height = 25
      Action = actSendToExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 3
    end
    object BitBtn4: TBitBtn
      Left = 624
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Anchors = [akRight, akBottom]
      Caption = #1670#1575#1662
      TabOrder = 4
    end
    object BitBtn3: TBitBtn
      Left = 707
      Top = 8
      Width = 75
      Height = 25
      Action = actFilter
      Anchors = [akRight, akBottom]
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 5
    end
    object BitBtn5: TBitBtn
      Left = 330
      Top = 8
      Width = 75
      Height = 25
      Action = actPrintVijeh
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
      TabOrder = 6
    end
  end
  inherited Panel2: TPanel
    Width = 778
    inherited lblCaption: TLabel
      Height = 16
    end
  end
  inherited Panel3: TPanel
    Width = 778
    Height = 495
    ExplicitHeight = 496
    object Splitter1: TSplitter
      Left = 571
      Top = 2
      Height = 492
      Align = alRight
      ExplicitLeft = 448
      ExplicitTop = 112
      ExplicitHeight = 100
    end
    object Panel1: TPanel
      Left = 574
      Top = 2
      Width = 214
      Height = 492
      Align = alRight
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 212
        Height = 470
        Align = alClient
        DataSource = srcGetLaon
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnKeyPress = DBGrid1KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'CustomerID2'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CustName'
            Width = 27
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LoanCount'
            Visible = True
          end>
      end
      object SumGrid1: TSumGrid
        Left = 1
        Top = 471
        Width = 212
        Active = False
        Enable_Controls = True
        MasterGrid = DBGrid1
        FieldsName = 'LoanCount;'
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 2
      Width = 569
      Height = 492
      Align = alClient
      TabOrder = 1
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 567
        Height = 180
        Align = alTop
        TabOrder = 0
        object Label2: TLabel
          Left = 1
          Top = 1
          Width = 29
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = #1608#1575#1605' '#1607#1575
          Color = 12239318
          ParentColor = False
          Transparent = False
        end
        object DBGrid2: TDBGrid
          Left = 1
          Top = 14
          Width = 565
          Height = 115
          Align = alClient
          DataSource = srcLaon
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = actShowExecute
          Columns = <
            item
              Expanded = False
              FieldName = 'FormNumber'
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FormDate'
              Width = 59
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Amount'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SubAmount'
              Width = 43
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Amount_SubAmount'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Rate'
              Width = 62
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AidInfoNo2'
              Width = 46
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CustomerID1'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CustName'
              Width = 46
              Visible = True
            end>
        end
        object SumGrid2: TSumGrid
          Left = 1
          Top = 129
          Width = 565
          Active = False
          Enable_Controls = True
          MasterGrid = DBGrid2
          FieldsName = 'Amount;SubAmount;Amount_SubAmount;'
        end
        object Panel8: TPanel
          Left = 1
          Top = 149
          Width = 565
          Height = 30
          Align = alBottom
          TabOrder = 2
          object BitBtn7: TBitBtn
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 75
            Height = 23
            Margins.Right = 2
            Margins.Bottom = 2
            Action = actShow
            Align = alLeft
            Caption = #1606#1605#1575#1610#1588' '#1608#1575#1605
            TabOrder = 0
          end
        end
      end
      object Panel7: TPanel
        Left = 1
        Top = 181
        Width = 567
        Height = 280
        Align = alClient
        TabOrder = 1
        object lblReLaonItem: TLabel
          Left = 1
          Top = 1
          Width = 36
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = #1575#1602#1587#1575#1591
          Color = 12239318
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object DBGrid4: TDBGrid
          Left = 1
          Top = 14
          Width = 565
          Height = 245
          Align = alClient
          DataSource = srcReLaonItem
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid4DrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'CheckNumber'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CheckDate'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ItemAmount'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Interest'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ItemAmount_CashWage'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DayDelay'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AmountDelay'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ItemAmount2'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CashWage'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ItemAmount_CashWage2'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CheckDate2'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LoanFormNumber'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FormNumber'
              Visible = True
            end>
        end
        object SumGrid4: TSumGrid
          Left = 1
          Top = 259
          Width = 565
          Hint = #1580#1605#1593' '#1662#1585#1583#1575#1582#1578#1610
          Active = False
          Enable_Controls = True
          MasterGrid = DBGrid4
          FieldsName = 
            'ItemAmount;Interest;ItemAmount_CashWage;DayDelay;AmountDelay;Ite' +
            'mAmount2;CashWage;ItemAmount_CashWage2;'
        end
      end
      object Panel9: TPanel
        Left = 1
        Top = 461
        Width = 567
        Height = 30
        Align = alBottom
        TabOrder = 2
        object btnLaonItem: TBitBtn
          AlignWithMargins = True
          Left = 4
          Top = 3
          Width = 122
          Height = 24
          Margins.Top = 2
          Margins.Bottom = 2
          Align = alLeft
          Caption = #1606#1605#1575#1610#1588' '#1601#1585#1605' '#1576#1575#1586#1662#1585#1583#1575#1582#1578
          TabOrder = 0
          OnClick = btnLaonItemClick
        end
      end
    end
  end
  inherited ActionList: TActionList
    Left = 320
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
    end
    object actSendToExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendToExcelExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      OnExecute = actPrintExecute
    end
    object actPrintVijeh: TAction
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
      OnExecute = actPrintVijehExecute
    end
    object actShow: TAction
      Caption = #1606#1605#1575#1610#1588' '#1608#1575#1605
      OnExecute = actShowExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 168
    Top = 9
  end
  object qryGetLaon: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryGetLaonAfterScroll
    Parameters = <
      item
        Name = 'FormType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'CustomerID2From'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'CustomerID2To'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT        Forms.CustomerID2, Customers.CustName, COUNT(Forms' +
        '.CustomerID2) AS LoanCount'
      'FROM            Forms INNER JOIN'
      
        '                         Customers ON Forms.CustomerID2 = Custom' +
        'ers.CustID'
      'WHERE        (Forms.FormType = :FormType )'
      
        '       AND (Forms.CustomerID2 BETWEEN :CustomerID2From AND :Cust' +
        'omerID2To )'
      'GROUP BY Forms.CustomerID2, Customers.CustName')
    Left = 632
    Top = 149
    object qryGetLaonCustomerID2: TIntegerField
      DisplayLabel = #1603#1583' '#1593#1590#1608
      FieldName = 'CustomerID2'
    end
    object qryGetLaonCustName: TStringField
      DisplayLabel = #1593#1590#1608
      FieldName = 'CustName'
      Size = 120
    end
    object qryGetLaonLoanCount: TIntegerField
      DisplayLabel = #1578#1593#1583#1575#1583' '#1608#1575#1605' '#1583#1585#1610#1575#1601#1578#1610
      FieldName = 'LoanCount'
      ReadOnly = True
    end
  end
  object qryLaon: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterScroll = qryLaonAfterScroll
    Parameters = <
      item
        Name = 'FormType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'CustomerID2'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT        Forms.FormID, Forms.ServerID, Forms.YearID,    For' +
        'ms.FormNumber, Forms.FormDate, Forms.Amount, Forms.SubAmount, Fo' +
        'rms.Rate, '
      
        'Forms.CustomerID1, Customers.CustName,  ISNULL(Forms.Amount, 0) ' +
        '+ ISNULL(Forms.SubAmount, 0)  as Amount_SubAmount'
      ',Forms.AidInfoNo2'
      'FROM            Forms INNER JOIN'
      
        '                         Customers ON Forms.CustomerID1 = Custom' +
        'ers.CustID'
      
        'WHERE        (Forms.FormType = :FormType ) AND (Forms.CustomerID' +
        '2 = :CustomerID2 )'
      'ORDER BY Forms.FormNumber')
    Left = 328
    Top = 125
    object qryLaonFormNumber: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1608#1575#1605
      FieldName = 'FormNumber'
    end
    object qryLaonFormDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'FormDate'
      FixedChar = True
      Size = 10
    end
    object qryLaonAmount: TBCDField
      DisplayLabel = #1575#1589#1604' '#1608#1575#1605
      FieldName = 'Amount'
      currency = True
      Precision = 19
    end
    object qryLaonSubAmount: TBCDField
      DisplayLabel = #1601#1585#1593' '#1608#1575#1605
      FieldName = 'SubAmount'
      currency = True
      Precision = 19
    end
    object qryLaonRate: TFloatField
      DisplayLabel = #1606#1585#1582' '#1578#1587#1607#1610#1604#1575#1578
      FieldName = 'Rate'
    end
    object qryLaonCustomerID1: TIntegerField
      DisplayLabel = #1603#1583#1608#1575#1605' '#1583#1607#1606#1583#1607
      FieldName = 'CustomerID1'
    end
    object qryLaonCustName: TStringField
      DisplayLabel = #1608#1575#1605' '#1583#1607#1606#1583#1607
      FieldName = 'CustName'
      Size = 120
    end
    object qryLaonFormID: TIntegerField
      FieldName = 'FormID'
    end
    object qryLaonServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryLaonYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryLaonAmount_SubAmount: TBCDField
      DisplayLabel = #1575#1589#1604' '#1608' '#1601#1585#1593' '#1608#1575#1605
      FieldName = 'Amount_SubAmount'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryLaonAidInfoNo2: TFloatField
      DisplayLabel = #1605#1583#1578'('#1605#1575#1607')'
      FieldName = 'AidInfoNo2'
    end
  end
  object srcGetLaon: TDataSource
    DataSet = qryGetLaon
    Left = 680
    Top = 120
  end
  object srcLaon: TDataSource
    DataSet = qryLaon
    Left = 251
    Top = 120
  end
  object PopMenu: TPopupMenu
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    Left = 611
    Top = 240
    object AllC_l_i_c_k_: TMenuItem
      Caption = #1575#1593#1590#1575
      OnClick = AllC_l_i_c_k_Click
    end
    object DetailNote: TMenuItem
      Tag = 1
      Caption = #1608#1575#1605' '#1607#1575
      OnClick = DetailNoteClick
    end
    object N1: TMenuItem
      Caption = #1575#1602#1587#1575#1591
      OnClick = N1Click
    end
  end
  object pdbGetLaon: TppDBPipeline
    DataSource = srcGetLaon
    OpenDataSource = False
    UserName = 'pdbGetLaon'
    Left = 708
    Top = 199
    object pdbGetLaonppField1: TppField
      FieldAlias = 'CustomerID2'
      FieldName = 'CustomerID2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object pdbGetLaonppField2: TppField
      FieldAlias = 'CustName'
      FieldName = 'CustName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object pdbGetLaonppField3: TppField
      FieldAlias = 'LoanCount'
      FieldName = 'LoanCount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
  end
  object pdbLaon: TppDBPipeline
    DataSource = srcLaon
    OpenDataSource = False
    UserName = 'pdbLaon'
    Left = 132
    Top = 125
    MasterDataPipelineName = 'pdbGetLaon'
    object pdbLaonppField1: TppField
      FieldAlias = 'FormNumber'
      FieldName = 'FormNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object pdbLaonppField2: TppField
      FieldAlias = 'FormDate'
      FieldName = 'FormDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object pdbLaonppField3: TppField
      FieldAlias = 'Amount'
      FieldName = 'Amount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object pdbLaonppField4: TppField
      FieldAlias = 'SubAmount'
      FieldName = 'SubAmount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object pdbLaonppField5: TppField
      FieldAlias = 'Rate'
      FieldName = 'Rate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object pdbLaonppField6: TppField
      FieldAlias = 'CustomerID1'
      FieldName = 'CustomerID1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object pdbLaonppField7: TppField
      FieldAlias = 'CustName'
      FieldName = 'CustName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object pdbLaonppField8: TppField
      FieldAlias = 'FormID'
      FieldName = 'FormID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object pdbLaonppField9: TppField
      FieldAlias = 'ServerID'
      FieldName = 'ServerID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object pdbLaonppField10: TppField
      FieldAlias = 'YearID'
      FieldName = 'YearID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = pdbGetLaon
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
    Template.FileName = 'D:\Projects\Fara2010\Bsell\Exe\Report\rptLoan.rtm'
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
    PreviewFormSettings.ZoomPercentage = 70
    PreviewFormSettings.ZoomSetting = zsPercentage
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
    Left = 676
    Top = 325
    Version = '22.02'
    mmColumnWidth = 0
    DataPipelineName = 'pdbGetLaon'
    object ppHeaderBand2: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 38894
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape1'
        mmHeight = 14817
        mmLeft = 0
        mmTop = 24077
        mmWidth = 284300
        BandType = 0
        LayerName = Foreground2
      end
      object ppLblCompanyName: TppLabel
        DesignLayer = ppDesignLayer3
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
        mmLeft = 146050
        mmTop = 0
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1711#1586#1575#1585#1588' '#1608#1575#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7197
        mmLeft = 163371
        mmTop = 6350
        mmWidth = 16425
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label3'
        OnGetText = ppLabel3GetText
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1670#1575#1662':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5292
        mmLeft = 4498
        mmTop = 11113
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label18'
        Border.mmPadding = 0
        Caption = #1603#1583' '
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
        mmLeft = 276595
        mmTop = 27781
        mmWidth = 4022
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = #1588#1585#1581' '
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
        mmLeft = 258217
        mmTop = 27781
        mmWidth = 7705
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label28'
        Border.mmPadding = 0
        Caption = '1'
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
        mmLeft = 51970
        mmTop = 31750
        mmWidth = 2159
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label29'
        Border.mmPadding = 0
        Caption = '1'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5969
        mmLeft = 34614
        mmTop = 31750
        mmWidth = 1947
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label302'
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 529
        mmTop = 31750
        mmWidth = 25929
        BandType = 0
        LayerName = Foreground2
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer3
        UserName = 'SystemVariable1'
        OnGetText = ppSystemVariable3GetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 6085
        mmLeft = 4763
        mmTop = 3969
        mmWidth = 11377
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line8'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 1058
        mmTop = 31221
        mmWidth = 236803
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = '1'
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
        mmLeft = 30009
        mmTop = 24606
        mmWidth = 2159
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1608#1575#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 155840
        mmTop = 24871
        mmWidth = 81756
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1575#1602#1587#1575#1591' '#1607#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 61648
        mmTop = 24871
        mmWidth = 93663
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label9'
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
        mmHeight = 6615
        mmLeft = 199761
        mmTop = 31750
        mmWidth = 16669
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = '0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5969
        mmLeft = 189659
        mmTop = 31750
        mmWidth = 1947
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 155575
        mmTop = 31750
        mmWidth = 25929
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label12'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606' '#1575#1591#1604#1575#1593#1575#1578
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
        mmLeft = 217223
        mmTop = 31750
        mmWidth = 20320
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = '1'
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
        mmLeft = 111501
        mmTop = 31750
        mmWidth = 2159
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label101'
        Border.mmPadding = 0
        Caption = '1'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5969
        mmLeft = 94674
        mmTop = 31750
        mmWidth = 1947
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label15'
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 61383
        mmTop = 31750
        mmWidth = 25929
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label16'
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606' '#1575#1591#1604#1575#1593#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 121444
        mmTop = 31750
        mmWidth = 33602
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line1'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 237861
        mmTop = 24077
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 251090
        mmTop = 24077
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 272786
        mmTop = 24077
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 216694
        mmTop = 31485
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine17: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 199232
        mmTop = 31221
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine28: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line101'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 181769
        mmTop = 31485
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine25: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line25'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 155311
        mmTop = 24077
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine19: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 120650
        mmTop = 31485
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine21: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line21'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 104246
        mmTop = 31221
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine31: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line31'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 61383
        mmTop = 24342
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine33: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line33'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 86784
        mmTop = 31485
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine35: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line35'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 43921
        mmTop = 31485
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine37: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line37'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 26723
        mmTop = 31485
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine43: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line28'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 0
        mmTop = 17198
        mmWidth = 284300
        BandType = 0
        LayerName = Foreground2
      end
    end
    object ppDetailBand4: TppDetailBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppSubReport3: TppSubReport
        DesignLayer = ppDesignLayer3
        UserName = 'SubReport3'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        ParentWidth = False
        TraverseAllData = False
        DataPipelineName = 'pdbLaon'
        mmHeight = 6615
        mmLeft = 155311
        mmTop = 0
        mmWidth = 81756
        BandType = 4
        LayerName = Foreground2
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport3: TppChildReport
          AutoStop = False
          DataPipeline = pdbLaon
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
          DataPipelineName = 'pdbLaon'
          object ppDetailBand5: TppDetailBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 6350
            mmPrintPosition = 0
            object ppDBText12: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText1'
              Border.mmPadding = 0
              DataField = 'Rate'
              DataPipeline = pdbLaon
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pdbLaon'
              mmHeight = 6350
              mmLeft = 46038
              mmTop = 0
              mmWidth = 14023
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText13: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText2'
              Border.mmPadding = 0
              DataField = 'Amount'
              DataPipeline = pdbLaon
              DisplayFormat = '#,0;(#,0)'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pdbLaon'
              mmHeight = 6350
              mmLeft = 28310
              mmTop = 0
              mmWidth = 15346
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText14: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText3'
              Border.mmPadding = 0
              DataField = 'Amount'
              DataPipeline = pdbLaon
              DisplayFormat = '#,0;(#,0)'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pdbLaon'
              mmHeight = 6350
              mmLeft = 7673
              mmTop = 0
              mmWidth = 25135
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText15: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText4'
              Border.mmPadding = 0
              DataField = 'CustName'
              DataPipeline = pdbLaon
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pdbLaon'
              mmHeight = 5842
              mmLeft = 62706
              mmTop = 0
              mmWidth = 19643
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
        end
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText16'
        Border.mmPadding = 0
        DataField = 'CustomerID2'
        DataPipeline = pdbGetLaon
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pdbGetLaon'
        mmHeight = 6350
        mmLeft = 273315
        mmTop = 265
        mmWidth = 10583
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText21'
        Border.mmPadding = 0
        DataField = 'CustName'
        DataPipeline = pdbGetLaon
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pdbGetLaon'
        mmHeight = 5821
        mmLeft = 251619
        mmTop = 529
        mmWidth = 20902
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText22'
        Border.mmPadding = 0
        DataField = 'CustName'
        DataPipeline = pdbGetLaon
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pdbGetLaon'
        mmHeight = 5821
        mmLeft = 238390
        mmTop = 529
        mmWidth = 12435
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine23: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line23'
        Border.mmPadding = 0
        Position = lpRight
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 280723
        mmTop = 0
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine26: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line26'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 251090
        mmTop = 0
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 237861
        mmTop = 0
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 216694
        mmTop = 0
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine18: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line11'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 199232
        mmTop = 0
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine29: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line29'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 181769
        mmTop = 0
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine30: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line30'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 155311
        mmTop = 0
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine20: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line12'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 120650
        mmTop = 0
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine22: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line13'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 104246
        mmTop = 0
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine32: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line32'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 61383
        mmTop = 0
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine34: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line34'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 86784
        mmTop = 0
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine36: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line36'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 43921
        mmTop = 0
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine39: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line39'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 529
        mmTop = 0
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine44: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line41'
        Border.mmPadding = 0
        Pen.Style = psDot
        Position = lpBottom
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 0
        mmTop = 5027
        mmWidth = 284428
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine27: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line27'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 272786
        mmTop = 0
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground2
      end
    end
    object ppFooterBand2: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line2'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 794
        mmTop = 0
        mmWidth = 283105
        BandType = 8
        LayerName = Foreground2
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 8996
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape2'
        ReprintOnOverFlow = True
        StretchWithParent = True
        mmHeight = 7144
        mmLeft = 0
        mmTop = 265
        mmWidth = 284300
        BandType = 7
        LayerName = Foreground2
      end
      object ppSubReport6: TppSubReport
        DesignLayer = ppDesignLayer3
        UserName = 'SubReport6'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        ParentWidth = False
        TraverseAllData = False
        mmHeight = 6615
        mmLeft = 59796
        mmTop = 265
        mmWidth = 93927
        BandType = 7
        LayerName = Foreground2
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport6: TppChildReport
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
          object ppDetailBand8: TppDetailBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 6350
            mmPrintPosition = 0
            object ppDBText30: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText5'
              Border.mmPadding = 0
              DataField = 'CheckDate'
              DisplayFormat = '#,0;(#,0)'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 6350
              mmLeft = 1852
              mmTop = 0
              mmWidth = 23813
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText31: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText6'
              Border.mmPadding = 0
              DataField = 'FormDate2'
              DisplayFormat = '#,0;(#,0)'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 6350
              mmLeft = 28046
              mmTop = 0
              mmWidth = 15081
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText32: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText7'
              Border.mmPadding = 0
              DataField = 'ItemAmount2'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 6350
              mmLeft = 44979
              mmTop = 0
              mmWidth = 15875
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText33: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText8'
              Border.mmPadding = 0
              DataField = 'ItemAmount'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5821
              mmLeft = 61913
              mmTop = 529
              mmWidth = 31750
              BandType = 4
              LayerName = Foreground1
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
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1603#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 260880
        mmTop = 529
        mmWidth = 23019
        BandType = 7
        LayerName = Foreground2
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line14'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 237861
        mmTop = 265
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground2
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line15'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 216694
        mmTop = 265
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground2
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line16'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 199232
        mmTop = 265
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground2
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line17'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 181769
        mmTop = 265
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground2
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line18'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 155311
        mmTop = 265
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground2
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line19'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 120650
        mmTop = 265
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground2
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line20'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 104246
        mmTop = 265
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground2
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line201'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 86784
        mmTop = 265
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground2
      end
      object ppLine24: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line24'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 61383
        mmTop = 265
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground2
      end
      object ppLine40: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line40'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 43921
        mmTop = 265
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground2
      end
      object ppLine41: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line401'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 26723
        mmTop = 265
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground2
      end
      object ppLine42: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line22'
        Border.mmPadding = 0
        Position = lpBottom
        ReprintOnOverFlow = True
        StretchWithParent = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 794
        mmTop = 5027
        mmWidth = 285751
        BandType = 7
        LayerName = Foreground2
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
  object PopPrint: TPopupMenu
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    Left = 643
    Top = 376
    object MenuItem1: TMenuItem
      Caption = #1608#1575#1605' '#1580#1575#1585#1610
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Tag = 1
      Caption = #1607#1605#1607' '#1608#1575#1605' '#1607#1575
      OnClick = MenuItem1Click
    end
  end
  object srcReLaonItem: TDataSource
    DataSet = qryReLaonItem
    Left = 243
    Top = 336
  end
  object qryReLaonItem: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'FormID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'ServerID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'YearID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'FormID2'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ServerID2'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearID2'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      
        'SELECT  cast( CheckNumber as int) as CheckNumber, CheckDate, Ite' +
        'mAmount, Interest, CheckDate2  , ItemAmount2, CashWage,'
      
        '   ItemAmount_CashWage, ItemAmount_CashWage as ItemAmount_CashWa' +
        'ge2,DayDelay  , AmountDelay,YearID ,ServerID ,FormID ,FormNumber' +
        ' , LoanFormNumber'
      'FROM            ('
      
        'SELECT Forms.FormNumber as LoanFormNumber, Forms_1.YearID ,Forms' +
        '_1.ServerID ,Forms_1.FormID ,Forms_1.FormNumber,  '
      
        'FormItems.CheckNumber, FormItems.CheckDate, FormItems.ItemAmount' +
        ', FormItems.CashWage AS Interest, FormItems_1.CheckDate AS Check' +
        'Date2 , '
      
        '      FormItems_1.ItemAmount AS ItemAmount2, FormItems_1.CashWag' +
        'e, FormItems_1.ItemAmount + FormItems_1.CashWage AS ItemAmount_C' +
        'ashWage, '
      '   FormItems_1.DayDelay  ,  FormItems_1.AmountDelay'
      
        '                           FROM            FormItems AS FormItem' +
        's_1 RIGHT OUTER JOIN'
      
        '                                                    Forms AS For' +
        'ms_1 ON FormItems_1.YearID = Forms_1.YearID AND FormItems_1.Serv' +
        'erID = Forms_1.ServerID AND '
      
        '                                                    FormItems_1.' +
        'FormID = Forms_1.FormID RIGHT OUTER JOIN'
      
        '                                                    FormItems IN' +
        'NER JOIN'
      
        '                                                    Forms ON For' +
        'mItems.FormID = Forms.FormID AND FormItems.ServerID = Forms.Serv' +
        'erID AND FormItems.YearID = Forms.YearID ON '
      
        '                                                    FormItems_1.' +
        'preFormItemID = FormItems.FormItemID'
      
        'WHERE      (Forms.FormID = :FormID ) AND (Forms.ServerID = :Serv' +
        'erID ) AND (Forms.YearID = :YearID )'
      '     AND NOT (FormItems_1.preFormItemID IS NULL)  ) AS loan'
      ''
      ''
      ''
      'UNION ALL '
      ''
      
        'SELECT    cast( CheckNumber as int) as   CheckNumber,CheckDate, ' +
        'ItemAmount, Interest, CheckDate2 ,ItemAmount2,CashWage2,ItemAmou' +
        'ntCashWage,  ItemAmountCashWage2'
      
        '                 ,  DayDelay, AmountDelay,YearID ,ServerID ,Form' +
        'ID ,FormNumber , LoanFormNumber'
      
        'FROM            (SELECT        FormItems.CheckNumber, FormItems.' +
        'CheckDate, FormItems.ItemAmount, FormItems.CashWage AS Interest,' +
        ' '
      
        '                         FormItems.ItemAmount + FormItems.CashWa' +
        'ge AS ItemAmountCashWage, '
      '                 FormItems.DayDelay'
      
        #9#9#9#9' ,FormItems_1.ItemAmount as ItemAmount2 ,FormItems_1.CashWag' +
        'e as  CashWage2'
      
        #9#9#9#9' ,FormItems_1.ItemAmount + FormItems_1.CashWage as  ItemAmou' +
        'ntCashWage2'
      #9#9#9#9' ,FormItems_1.CheckDate as CheckDate2'#9#9#9#9' '#9#9#9#9' '
      
        #9#9#9#9' ,Forms_1.YearID ,Forms_1.ServerID ,Forms_1.FormID ,Forms_1.' +
        'FormNumber , Forms.FormNumber AS LoanFormNumber'
      #9#9#9#9' ,FormItems.AmountDelay'#9#9#9' '
      '                           '
      'FROM            FormItems AS FormItems_1 RIGHT OUTER JOIN'
      
        '                         Forms AS Forms_1 ON FormItems_1.YearID ' +
        '= Forms_1.YearID AND FormItems_1.ServerID = Forms_1.ServerID AND' +
        ' '
      
        '                         FormItems_1.FormID = Forms_1.FormID RIG' +
        'HT OUTER JOIN'
      '                         FormItems INNER JOIN'
      
        '                         Forms ON FormItems.FormID = Forms.FormI' +
        'D AND FormItems.ServerID = Forms.ServerID AND FormItems.YearID =' +
        ' Forms.YearID ON '
      
        '                         FormItems_1.preFormItemID = FormItems.F' +
        'ormItemID'
      ''
      
        'WHERE (Forms.FormID = :FormID2 ) AND (Forms.ServerID = :ServerID' +
        '2 ) AND (Forms.YearID = :YearID2  )'
      '     AND (    (FormItems_1.preFormItemID IS NULL)'
      
        #9'       OR ((FormItems.ItemAmount<>FormItems_1.ItemAmount)OR(For' +
        'mItems.CashWage<>FormItems_1.CashWage) )'
      #9#9' )'
      ''
      '  ) AS loan'
      ' '
      ' ORDER BY CAST( loan.CheckNumber as INT)')
    Left = 387
    Top = 344
    object qryReLaonItemCheckNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1575#1602#1587#1575#1591
      FieldName = 'CheckNumber'
      ReadOnly = True
    end
    object StringField2: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1587#1585#1585#1587#1610#1583
      FieldName = 'CheckDate'
      FixedChar = True
      Size = 10
    end
    object BCDField1: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1602#1587#1591
      FieldName = 'ItemAmount'
      currency = True
      Precision = 19
    end
    object BCDField2: TBCDField
      DisplayLabel = #1576#1607#1585#1607
      FieldName = 'Interest'
      currency = True
      Precision = 19
    end
    object qryReLaonItemItemAmount_CashWage: TBCDField
      DisplayLabel = #1575#1589#1604' '#1608#1601#1585#1593
      FieldName = 'ItemAmount_CashWage'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryReLaonItemDayDelay: TIntegerField
      DisplayLabel = #1585#1608#1586#1607#1575#1610' '#1583#1610#1585#1603#1585#1583
      FieldName = 'DayDelay'
      ReadOnly = True
    end
    object qryReLaonItemAmountDelay: TBCDField
      DisplayLabel = #1580#1585#1610#1605#1607' '#1583#1610#1585#1603#1585#1583
      FieldName = 'AmountDelay'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryReLaonItemItemAmount2: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1662#1585#1583#1575#1582#1578' '#1588#1583#1607
      FieldName = 'ItemAmount2'
      currency = True
      Precision = 19
    end
    object qryReLaonItemCashWage: TBCDField
      DisplayLabel = #1576#1607#1585#1607' '#1662#1585#1583#1575#1582#1578' '#1588#1583#1607
      FieldName = 'CashWage'
      currency = True
      Precision = 19
    end
    object qryReLaonItemItemAmount_CashWage2: TBCDField
      DisplayLabel = #1580#1605#1593' '#1662#1585#1583#1575#1582#1578#1610
      FieldName = 'ItemAmount_CashWage2'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryReLaonItemCheckDate2: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1662#1585#1583#1575#1582#1578
      FieldName = 'CheckDate2'
      FixedChar = True
      Size = 10
    end
    object qryReLaonItemYearID: TIntegerField
      FieldName = 'YearID'
      ReadOnly = True
    end
    object qryReLaonItemServerID: TIntegerField
      FieldName = 'ServerID'
      ReadOnly = True
    end
    object qryReLaonItemFormID: TIntegerField
      FieldName = 'FormID'
      ReadOnly = True
    end
    object qryReLaonItemFormNumber: TIntegerField
      DisplayLabel = #1588'.'#1601'.'#1576#1575#1586#1662#1585#1583#1575#1582#1578
      FieldName = 'FormNumber'
      ReadOnly = True
    end
    object qryReLaonItemLoanFormNumber: TIntegerField
      DisplayLabel = #1588'.'#1601'.'#1608#1575#1605
      FieldName = 'LoanFormNumber'
      ReadOnly = True
    end
  end
  object pdbReLaonItem: TppDBPipeline
    DataSource = srcReLaonItem
    OpenDataSource = False
    UserName = 'pdbLaonItem1'
    Left = 100
    Top = 373
  end
  object ADOQuery1: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'FormID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'ServerID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'YearID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'DayDate'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'DayDate2'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'FormID2'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ServerID2'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearID2'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      
        'SELECT  cast( CheckNumber as int) as CheckNumber, CheckDate, Ite' +
        'mAmount, Interest, CheckDate2  , ItemAmount2, CashWage,'
      
        'ItemAmount_CashWage, ItemAmount_CashWage as ItemAmount_CashWage2' +
        ', CalcDayDelay, '
      
        '            DBO.GetAmountDelay ( CalcDayDelay , itemamount ) AS ' +
        'CalcAmountDelay ,  DayDelay  , AmountDelay ,CashWage*0 AS RemIte' +
        'mAmount ,CashWage*0 CalcAmountDelay2 ,CashWage*0 CalcInterestAmo' +
        'untDelay'
      ',YearID ,ServerID ,FormID ,FormNumber , LoanFormNumber'
      
        'FROM            (SELECT Forms.FormNumber as LoanFormNumber, Form' +
        's_1.YearID ,Forms_1.ServerID ,Forms_1.FormID ,Forms_1.FormNumber' +
        ',  '
      
        'FormItems.CheckNumber, FormItems.CheckDate, FormItems.ItemAmount' +
        ', FormItems.CashWage AS Interest, FormItems_1.CheckDate AS Check' +
        'Date2 , '
      
        '      FormItems_1.ItemAmount AS ItemAmount2, FormItems_1.CashWag' +
        'e, FormItems_1.ItemAmount + FormItems_1.CashWage AS ItemAmount_C' +
        'ashWage, '
      
        '                                                    DATEDIFF(day' +
        ', dbo.ShamsiToMiladi(FormItems.CheckDate), dbo.ShamsiToMiladi(Fo' +
        'rms_1.FormDate)) AS CalcDayDelay'
      ',  FormItems_1.DayDelay  ,  FormItems_1.AmountDelay'
      
        '                           FROM            FormItems AS FormItem' +
        's_1 RIGHT OUTER JOIN'
      
        '                                                    Forms AS For' +
        'ms_1 ON FormItems_1.YearID = Forms_1.YearID AND FormItems_1.Serv' +
        'erID = Forms_1.ServerID AND '
      
        '                                                    FormItems_1.' +
        'FormID = Forms_1.FormID RIGHT OUTER JOIN'
      
        '                                                    FormItems IN' +
        'NER JOIN'
      
        '                                                    Forms ON For' +
        'mItems.FormID = Forms.FormID AND FormItems.ServerID = Forms.Serv' +
        'erID AND FormItems.YearID = Forms.YearID ON '
      
        '                                                    FormItems_1.' +
        'preFormItemID = FormItems.FormItemID'
      
        'WHERE      (Forms.FormID = :FormID ) AND (Forms.ServerID = :Serv' +
        'erID ) AND (Forms.YearID = :YearID )'
      '     AND NOT (FormItems_1.preFormItemID IS NULL)  ) AS loan'
      ''
      ''
      ''
      'UNION ALL '
      ''
      
        'SELECT    cast( CheckNumber as int) as   CheckNumber,CheckDate, ' +
        'ItemAmount, Interest, CheckDate2 ,ItemAmount2,CashWage2,ItemAmou' +
        'ntCashWage,  ItemAmountCashWage2'
      
        '                 , 0*DayDelay AS CalcDayDelay,0*itemamount AS Ca' +
        'lcAmountDelay2, DayDelay,    dbo.GetAmountDelay ( daydelay, item' +
        'amount ) AS AmountDelay'
      #9#9#9#9'  ,RemItemAmount'
      
        #9#9'  , case when RemItemAmount>0 then DBO.GetAmountDelay ( CalcDa' +
        'yDelay , RemItemAmount ) else 0 end AS CalcAmountDelay'
      
        #9#9'  , case when RemItemAmount<0 then abs(DBO.GetAmountDelay ( Ca' +
        'lcDayDelay , RemItemAmount )) else 0 end AS CalcInterestAmountDe' +
        'lay'
      ',YearID ,ServerID ,FormID ,FormNumber , LoanFormNumber'
      ''
      ''
      
        'FROM            (SELECT        FormItems.CheckNumber, FormItems.' +
        'CheckDate, FormItems.ItemAmount, FormItems.CashWage AS Interest,' +
        ' '
      
        '                         FormItems.ItemAmount + FormItems.CashWa' +
        'ge AS ItemAmountCashWage, '
      
        '                 DATEDIFF(day, dbo.ShamsiToMiladi(FormItems.Chec' +
        'kDate), dbo.ShamsiToMiladi( :DayDate )) AS DayDelay'
      
        #9#9#9#9' ,FormItems_1.ItemAmount as ItemAmount2 ,FormItems_1.CashWag' +
        'e as  CashWage2'
      
        #9#9#9#9' ,FormItems_1.ItemAmount + FormItems_1.CashWage as  ItemAmou' +
        'ntCashWage2'
      #9#9#9#9' ,FormItems_1.CheckDate as CheckDate2'
      
        #9#9#9#9' ,FormItems.ItemAmount +FormItems.CashWage -FormItems_1.Item' +
        'Amount-FormItems_1.CashWage as RemItemAmount'
      
        #9#9#9#9' , DATEDIFF(day, dbo.ShamsiToMiladi(FormItems_1.CheckDate), ' +
        'dbo.ShamsiToMiladi(:DayDate2 )) AS CalcDayDelay'
      
        #9#9#9#9' ,Forms_1.YearID ,Forms_1.ServerID ,Forms_1.FormID ,Forms_1.' +
        'FormNumber , Forms.FormNumber AS LoanFormNumber'
      #9#9#9#9' '
      '                           '
      'FROM            FormItems AS FormItems_1 RIGHT OUTER JOIN'
      
        '                         Forms AS Forms_1 ON FormItems_1.YearID ' +
        '= Forms_1.YearID AND FormItems_1.ServerID = Forms_1.ServerID AND' +
        ' '
      
        '                         FormItems_1.FormID = Forms_1.FormID RIG' +
        'HT OUTER JOIN'
      '                         FormItems INNER JOIN'
      
        '                         Forms ON FormItems.FormID = Forms.FormI' +
        'D AND FormItems.ServerID = Forms.ServerID AND FormItems.YearID =' +
        ' Forms.YearID ON '
      
        '                         FormItems_1.preFormItemID = FormItems.F' +
        'ormItemID'
      ''
      
        'WHERE (Forms.FormID = :FormID2 ) AND (Forms.ServerID = :ServerID' +
        '2 ) AND (Forms.YearID = :YearID2  )'
      '     AND (    (FormItems_1.preFormItemID IS NULL)'
      
        #9'       OR ((FormItems.ItemAmount<>FormItems_1.ItemAmount)OR(For' +
        'mItems.CashWage<>FormItems_1.CashWage) )'
      #9#9' )'
      ''
      '  ) AS loan'
      ' '
      ' ORDER BY CAST( loan.CheckNumber as INT)')
    Left = 491
    Top = 400
  end
end

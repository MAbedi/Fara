inherited rptBudgetTransactionF: TrptBudgetTransactionF
  Left = 212
  Caption = #1711#1586#1575#1585#1588' '#1608#1589#1608#1604#1610' '#1608' '#1662#1585#1583#1575#1582#1578#1610' '#1576#1578#1601#1603#1610#1603' '#1603#1583' '#1576#1608#1583#1580#1607' '
  ClientHeight = 517
  OnResize = FormResize
  ExplicitWidth = 794
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 476
    inherited BtnReject: TBitBtn
      Left = 7
      ExplicitLeft = 7
    end
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
      DataSource = SrcForms
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
      Top = 10
      Height = 16
      ExplicitLeft = 674
      ExplicitTop = 10
    end
    object LblPerson1: TLabel
      Left = 273
      Top = 10
      Width = 40
      Height = 13
      Alignment = taRightJustify
      Caption = #1603#1583' '#1576#1608#1583#1580#1607
      FocusControl = EdtBudgetID
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 189
      Top = 5
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = SpeedButton1Click
    end
    object DBTexBudgetTopicID: TDBText
      Left = 8
      Top = 8
      Width = 180
      Height = 17
      Color = 13948116
      DataField = 'BudgetCaption'
      DataSource = SrcBudget
      ParentColor = False
      Transparent = False
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
    object EdtBudgetID: TDBEdit
      Left = 213
      Top = 6
      Width = 57
      Height = 21
      DataField = 'BudgetTopicID'
      DataSource = SrcBudget
      TabOrder = 0
      OnKeyDown = EdtBudgetIDKeyDown
    end
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 27
      Width = 180
      Height = 18
      DataSource = SrcBudget
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Flat = True
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 1
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
      DataSource = SrcForms
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
          FieldName = 'FormNumber'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FormCaption'
          Title.Alignment = taCenter
          Width = 99
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FormDate'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CustomerID1'
          Title.Alignment = taCenter
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CustName1'
          Title.Alignment = taCenter
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CustomerID2'
          Title.Alignment = taCenter
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CustName2'
          Title.Alignment = taCenter
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Amount'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FomNote'
          Title.Alignment = taCenter
          Width = 93
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
          Width = 220
        end
        item
          Width = 220
        end
        item
          Width = 220
        end
        item
          Width = 50
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
  object qryForms: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = qryFormsAfterOpen
    Parameters = <
      item
        Name = 'Budget'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'DateFrom'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'DateTo'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'CustID1From'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'CustID1To'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'CustID2From'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'CustID2To'
        DataType = ftString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      'SELECT      Forms.*,  FormTypes.FormCaption AS FormCaption'
      
        '           ,(SELECT CustName FROM  Customers WHERE CustID=Custom' +
        'erID1)as CustName1'
      '           ,CustName2 = '
      '            CASE CustomerID2'
      '         WHEN  null  THEN  Forms.CustomerName2'
      '         WHEN  '#39#39'  THEN  Forms.CustomerName2'
      '         WHEN   0 THEN  Forms.CustomerName2'
      
        '         ELSE (SELECT CustName FROM  Customers WHERE CustID=Cust' +
        'omerID2)'
      '      END'
      'FROM  Forms INNER JOIN'
      '      FormTypes ON  Forms.FormType =  FormTypes.FormType'
      
        'WHERE     ( Forms.BudgetCode = :Budget) and( Forms.FormDate betw' +
        'een :DateFrom and :DateTo)'
      
        '     and( Forms.CustomerID1 between :CustID1From and :CustID1To)' +
        'and( Forms.CustomerID2 between :CustID2From and :CustID2To)')
    Left = 112
    Top = 189
    object qryFormsFormNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'FormNumber'
    end
    object qryFormsFormDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'FormDate'
      FixedChar = True
      Size = 10
    end
    object qryFormsCustomerID1: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1576#1575#1606#1603'/'#1589#1606#1583#1608#1602#1583#1575#1585
      FieldName = 'CustomerID1'
    end
    object qryFormsCustName1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1576#1575#1606#1603'/'#1589#1606#1583#1608#1602#1583#1575#1585
      FieldName = 'CustName1'
      ReadOnly = True
      Size = 60
    end
    object qryFormsCustomerID2: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1588#1578#1585#1610
      FieldName = 'CustomerID2'
    end
    object qryFormsCustName2: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1605#1588#1578#1585#1610
      FieldName = 'CustName2'
      ReadOnly = True
      Size = 60
    end
    object qryFormsAmount: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'Amount'
      currency = True
      Precision = 19
    end
    object qryFormsFomNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'FomNote'
      Size = 255
    end
    object qryFormsCustomerName2: TStringField
      FieldName = 'CustomerName2'
      Size = 100
    end
    object qryFormsFormCaption: TStringField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
      FieldName = 'FormCaption'
      Size = 50
    end
    object qryFormsFormID: TIntegerField
      FieldName = 'FormID'
    end
    object qryFormsFormType: TWordField
      FieldName = 'FormType'
    end
    object qryFormsBudgetCode: TIntegerField
      FieldName = 'BudgetCode'
    end
    object qryFormsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryFormsYearID: TIntegerField
      FieldName = 'YearID'
    end
  end
  object SrcForms: TDataSource
    DataSet = qryForms
    Left = 224
    Top = 205
  end
  object qryBudget: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryBudgetAfterScroll
    Parameters = <
      item
        Name = 'BudgetIDFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'BudgetIDTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     BudgetTopicID, BudgetCaption_l1 as BudgetCaption '
      'FROM         acc.BudgetTopics'
      'WHERE   BudgetTopicID between :BudgetIDFrom and :BudgetIDTo')
    Left = 432
    Top = 8
    object qryBudgetBudgetTopicID: TIntegerField
      FieldName = 'BudgetTopicID'
    end
    object qryBudgetBudgetCaption: TStringField
      FieldName = 'BudgetCaption'
      Size = 100
    end
  end
  object SrcBudget: TDataSource
    DataSet = qryBudget
    Left = 360
    Top = 8
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = SrcBudget
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 500
    Top = 212
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'BudgetTopicID'
      FieldName = 'BudgetTopicID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'BudgetCaption'
      FieldName = 'BudgetCaption'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'D:\Projects\Fara\BSell\Exe\Report\rptCustTranc.rtm'
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
    Left = 408
    Top = 196
    Version = '22.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 27252
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 19844
        mmWidth = 203200
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        OnGetText = ppLabel1GetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Titr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6879
        mmLeft = 78486
        mmTop = 0
        mmWidth = 46228
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1711#1586#1575#1585#1588' '#1608#1589#1608#1604#1610' '#1608' '#1662#1585#1583#1575#1582#1578#1610' '#1576#1578#1601#1603#1610#1603' '#1603#1583' '#1576#1608#1583#1580#1607' '
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
        mmLeft = 67710
        mmTop = 5292
        mmWidth = 67776
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 0
        mmTop = 12435
        mmWidth = 203300
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1603#1583#1608' '#1606#1575#1605' '#1576#1608#1583#1580#1607':'#8207
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
        mmLeft = 181240
        mmTop = 13229
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1605#1588#1578#1585#1610
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
        mmLeft = 40217
        mmTop = 20373
        mmWidth = 13758
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1576#1575#1606#1603'/'#1589#1606#1583#1608#1602#1583#1575#1585
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
        mmLeft = 91546
        mmTop = 20373
        mmWidth = 24342
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
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
        mmLeft = 147638
        mmTop = 20373
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594
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
        mmLeft = 10583
        mmTop = 20373
        mmWidth = 5821
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        OnGetText = ppLabel3GetText
        Border.mmPadding = 0
        Caption = #1576#1578#1575#1585#1610#1582':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5292
        mmLeft = 9525
        mmTop = 7144
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'BudgetTopicID'
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
        mmHeight = 6615
        mmLeft = 163777
        mmTop = 12965
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'BudgetCaption'
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
        mmHeight = 5821
        mmLeft = 99748
        mmTop = 13229
        mmWidth = 63765
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
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
        mmLeft = 9525
        mmTop = 1852
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
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
        mmHeight = 6011
        mmLeft = 187590
        mmTop = 20373
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 82021
        mmTop = 19844
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 66146
        mmTop = 19844
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 25400
        mmTop = 19844
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        OnGetText = ppLabel16GetText
        Border.mmPadding = 0
        Caption = #1575#1586' '#1578#1575#1585#1610#1582
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5292
        mmLeft = 9525
        mmTop = 13494
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582
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
        mmLeft = 175948
        mmTop = 20373
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 185738
        mmTop = 19844
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 169863
        mmTop = 19844
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 138642
        mmTop = 19844
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        Border.mmPadding = 0
        Caption = #1603#1583' '#1605#1588#1578#1585#1610
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
        mmLeft = 69056
        mmTop = 20373
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground
      end
      object ppLine28: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line28'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 122767
        mmTop = 19844
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = #1603#1583#1576#1575#1606#1603'/'#1589#1606#1583#1608#1602
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 124090
        mmTop = 20902
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6000
      mmPrintPosition = 0
      object ppLine22: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line22'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6000
        mmLeft = 186796
        mmTop = 0
        mmWidth = 529
        BandType = 4
        LayerName = Foreground
      end
      object ppLine23: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line23'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 138113
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object ppLine24: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line24'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 65881
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine25: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line25'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 25135
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine33: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line33'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 81756
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'CustomerID2'
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
        mmHeight = 6085
        mmLeft = 67998
        mmTop = 0
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'CustomerID1'
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
        mmHeight = 6085
        mmLeft = 124619
        mmTop = 0
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'CustName1'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6085
        mmLeft = 83873
        mmTop = 0
        mmWidth = 39952
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'FormCaption'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6085
        mmLeft = 140494
        mmTop = 0
        mmWidth = 30427
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'FormNumber'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6085
        mmLeft = 187590
        mmTop = 0
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 201084
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 0
        mmTop = 0
        mmWidth = 1323
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'FormDate'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6085
        mmLeft = 171715
        mmTop = 0
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 169334
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'Amount'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0 ;(#,0)'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        ResetGroup = ppGroup2
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6085
        mmLeft = 529
        mmTop = 0
        mmWidth = 25929
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText15'
        Border.mmPadding = 0
        DataField = 'CustName2'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6085
        mmLeft = 27252
        mmTop = 0
        mmWidth = 39952
        BandType = 4
        LayerName = Foreground
      end
      object ppLine27: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 122502
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 2910
      mmPrintPosition = 0
      object ppLine21: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 0
        mmTop = 0
        mmWidth = 203300
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'BudgetCode'
      DataPipeline = ppDBPipeline2
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      ResetPageNo = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline2'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 11113
        mmPrintPosition = 0
        object ppShape7: TppShape
          DesignLayer = ppDesignLayer1
          UserName = 'Shape7'
          mmHeight = 6085
          mmLeft = 0
          mmTop = 0
          mmWidth = 203200
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine19: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line19'
          Border.mmPadding = 0
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 6085
          mmLeft = 25135
          mmTop = 0
          mmWidth = 1852
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc17: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc17'
          Border.mmPadding = 0
          DataField = 'Amount'
          DataPipeline = ppDBPipeline2
          DisplayFormat = '#,0 ;(#,0)'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 6085
          mmLeft = 529
          mmTop = 0
          mmWidth = 25929
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel23: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label23'
          Border.mmPadding = 0
          Caption = #1578#1593#1583#1575#1583' '#1585#1603#1608#1585#1583':'#8207
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Zar'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4763
          mmLeft = 187590
          mmTop = 529
          mmWidth = 14288
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc20: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc20'
          Border.mmPadding = 0
          DataField = 'FormNumber'
          DataPipeline = ppDBPipeline2
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 5027
          mmLeft = 169598
          mmTop = 529
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel33: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label33'
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
          mmHeight = 6085
          mmLeft = 27252
          mmTop = 0
          mmWidth = 10319
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
  object ppDBPipeline2: TppDBPipeline
    DataSource = SrcForms
    OpenDataSource = False
    UserName = 'DBPipeline2'
    Left = 600
    Top = 212
    MasterDataPipelineName = 'ppDBPipeline1'
  end
end

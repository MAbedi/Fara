inherited CategoresDetailNoteF: TCategoresDetailNoteF
  Left = 292
  Top = 162
  ActiveControl = DBEdit3
  Caption = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
  ClientHeight = 478
  ClientWidth = 475
  ExplicitWidth = 481
  ExplicitHeight = 507
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 421
    Width = 475
    ExplicitTop = 421
    ExplicitWidth = 475
  end
  object Label1: TLabel [1]
    Left = 386
    Top = 49
    Width = 69
    Height = 13
    Align = alCustom
    Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1581#1587#1575#1576
  end
  object Label2: TLabel [2]
    Left = 346
    Top = 95
    Width = 109
    Height = 13
    Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1581#1587#1575#1576' '#1578#1601#1589#1610#1604#1610
  end
  object DBText1: TDBText [3]
    Left = 88
    Top = 65
    Width = 301
    Height = 17
    Color = 13750737
    DataField = 'MoeenName_L1'
    DataSource = srcCategories
    ParentColor = False
    Transparent = False
  end
  object DBText2: TDBText [4]
    Left = 88
    Top = 114
    Width = 301
    Height = 17
    Color = 13750737
    DataField = 'DetailName_L1'
    DataSource = SrcDetail
    ParentColor = False
    Transparent = False
  end
  object Bevel2: TBevel [5]
    Left = 0
    Top = 89
    Width = 465
    Height = 8
    Shape = bsTopLine
  end
  object Label3: TLabel [6]
    Left = 424
    Top = 146
    Width = 21
    Height = 13
    Caption = #1578#1575#1585#1610#1582
    FocusControl = DBEdit3
  end
  object Label4: TLabel [7]
    Left = 253
    Top = 146
    Width = 76
    Height = 13
    Caption = #1606#1575#1605' '#1601#1575#1610#1604' '#1662#1610#1608#1587#1578#1610
    FocusControl = DBEdit4
  end
  object SpeedButton1: TSpeedButton [8]
    Left = 78
    Top = 142
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = SpeedButton1Click
  end
  object DBText3: TDBText [9]
    Left = 394
    Top = 65
    Width = 65
    Height = 17
    Alignment = taCenter
    Color = clCream
    DataField = 'TopicCode'
    DataSource = srcCategories
    ParentColor = False
    Transparent = False
  end
  object Bevel3: TBevel [10]
    Left = 1
    Top = 135
    Width = 464
    Height = 3
    Shape = bsTopLine
  end
  object DBText4: TDBText [11]
    Left = 394
    Top = 113
    Width = 65
    Height = 18
    Alignment = taCenter
    Color = clCream
    DataField = 'DetailCode'
    DataSource = SrcDetail
    ParentColor = False
    Transparent = False
  end
  inherited Panel1: TPanel
    Width = 475
    Height = 47
    ExplicitWidth = 475
    ExplicitHeight = 47
    inherited Image1: TImage
      Left = 421
      ExplicitLeft = 421
    end
    inherited lblTopic0: TLabel
      Left = 314
      Top = 10
      Width = 87
      Caption = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
      ExplicitLeft = 314
      ExplicitTop = 10
      ExplicitWidth = 87
    end
    inherited lblTopic1: TLabel
      Left = 328
      Top = 27
      Visible = False
      ExplicitLeft = 328
      ExplicitTop = 27
    end
  end
  inherited pnlDown: TPanel
    Top = 440
    Width = 475
    Height = 38
    TabOrder = 6
    ExplicitTop = 440
    ExplicitWidth = 475
    ExplicitHeight = 38
    inherited btnClose: TBitBtn
      Top = 7
      Action = actExit
      ExplicitTop = 7
    end
    object newPanel: TPanel
      Left = 243
      Top = 1
      Width = 231
      Height = 36
      Align = alRight
      BevelOuter = bvNone
      Caption = '`'
      TabOrder = 2
      DesignSize = (
        231
        36)
      object BitBtn6: TBitBtn
        Left = 156
        Top = 6
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1600#1600#1583#1610#1583
        TabOrder = 2
      end
      object BitBtn9: TBitBtn
        Left = 79
        Top = 6
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1600#1600#1600#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn10: TBitBtn
        Left = 2
        Top = 6
        Width = 75
        Height = 25
        Action = DataSetDelete1
        Anchors = [akTop, akRight]
        Caption = #1581#1600#1600#1584#1601
        TabOrder = 0
      end
    end
    object okPanel: TPanel
      Left = 83
      Top = 1
      Width = 160
      Height = 36
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        160
        36)
      object BitBtn5: TBitBtn
        Left = 84
        Top = 6
        Width = 75
        Height = 25
        Action = DataSetPost1
        Anchors = [akTop, akRight]
        Caption = #1578#1571#1610#1610#1600#1600#1600#1583
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00318C2900007B00004A9C4200FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00009C100000AD0800007B0000BDBD5A00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000084420000AD080000B51000008C00007B841800FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000084000000BD180000B51000009400007B6300008CB5
          7300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00318C290000A5180000B5100000FF420000BD1800BD9C00000073
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00009C100000A5390000FF420000FF420000AD080000BD1000007B
          00006BAD5A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000B5210000E7420000FF4200318C2900318C2900BDBD1000008C
          000018841800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000084080000940800FF00FF00FF00FF00BD9C000000B5
          1000007B00008CB57300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B84210000B5
          10000084000000730000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00009C
          080000B51000007B000000A55A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00318C
          290000B5100010941800BD9C2100FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF001094290039DE8C00BD9C18006BAD5A00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00189C210000CE210000A55A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF008CB57300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 1
      end
      object BitBtn7: TBitBtn
        Left = 7
        Top = 6
        Width = 75
        Height = 25
        Action = DataSetCancel1
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1589#1600#1600#1600#1585#1575#1601
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00424A
          4A00424A4A00424A4A0000424A00424A4A00424A4A00424A4A00005A4A00424A
          4A00424A4A00424A4A00005A4A00424A4A00424A4A00FF00FF00FF00FF006B73
          6B00FFFFFF00FFFFFF0000E7FF00FFFFFF00FFFFFF00FFFFFF00BDFFFF00FFFF
          FF00FFFFFF00FFFFFF00BDFFFF00FFFFFF006B736B00FF00FF00FF00FF006B73
          6B00FFFFFF000010AD0000844A00FF9C4A00FF9C4A00FF9C4A00BD9C4A00FF9C
          4A00FF9C4A00FF9C4A00BD9C4A000018CE006B736B00FF00FF00FF00FF006B73
          6B00FFFFFF000018CE000000AD00FFFFFF00FF9C4A00FFFFFF0000E7FF00FF9C
          4A00FFFFFF00FFFFFF000000CE00FFFFFF006B736B00FF00FF00FF00FF008484
          7300FFFFFF00FF9C4A000000CE000010AD00FF9C4A00FFFFFF00BDFFFF00FF9C
          4A000010AD000018CE00BD9C4A00FFFFFF0084847300FF00FF00FF00FF008484
          7300FFFFFF00FF9C4A0000844A000018CE000010AD00FF9C4A00BD9C4A000010
          AD000018CE00FF9C4A00BD9C4A00FFFFFF0084847300FF00FF00FF00FF008484
          7300FFFFFF00F78C390000E7FF00FFFFFF000018CE000018DE00BD18AD000018
          DE00FFFFFF00FFFFFF00BD9C3900FFFFFF0084847300FF00FF00FF00FF008C8C
          8C00F7F7F700F78C390000E7FF00FFFFFF00F78C39000018DE00BD18DE000018
          CE000010AD00FFFFFF00BD9C3900F7F7F7008C8C8C00FF00FF00FF00FF008C8C
          8C00F7F7F700E784080000840800E78408000018CE000018E700BD9C0800E784
          08000018F7000010AD00BD9C0800F7F7F7008C8C8C00FF00FF00FF00FF009494
          9400E7E7E700E784080000E7FF000018F7000018E700FFFFFF00BDFFFF00E784
          0800FFFFFF000018F700BD9C0800E7E7E70094949400FF00FF00FF00FF009494
          9400E7E7E700E78408000000FF000018E700E7840800FFFFFF00BDFFFF00E784
          0800FFFFFF00FFFFFF00BD18F700E7E7E70094949400FF00FF00FF00FF009C9C
          9C00CED6CE000018F7000000F700E7840800E7840800E7840800FF9C0800E784
          0800E7840800E7840800008408000018F7009C9C9C00FF00FF00FF00FF009C9C
          9C00CED6CE000018F70000C6CE00CED6CE00CED6CE00CED6CE0000DECE00CED6
          CE00CED6CE00CED6CE0000C6CE00CED6CE009C9C9C00FF00FF00FF00FF009C9C
          9C009C9C9C009C9C9C0000849C009C9C9C009C9C9C009C9C9C0084849C009C9C
          9C009C9C9C009C9C9C0000849C009C9C9C009C9C9C00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 0
      end
    end
    object BitBtn2: TBitBtn
      Left = 84
      Top = 7
      Width = 75
      Height = 25
      Action = actPrint
      Cancel = True
      Caption = #1670#1575#1662
      TabOrder = 3
    end
  end
  object DBEdit3: TDBEdit [14]
    Left = 350
    Top = 143
    Width = 66
    Height = 21
    Ctl3D = True
    DataField = 'NoteDate'
    DataSource = srcdetailNote
    ParentCtl3D = False
    TabOrder = 3
  end
  object DBEdit4: TDBEdit [15]
    Left = 102
    Top = 143
    Width = 147
    Height = 21
    DataField = 'AttachFileName'
    DataSource = srcdetailNote
    TabOrder = 2
    OnKeyDown = DBEdit4KeyDown
  end
  object DBNavigator1: TDBNavigator [16]
    Left = 0
    Top = 419
    Width = 475
    Height = 21
    DataSource = srcdetailNote
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Align = alBottom
    Flat = True
    TabOrder = 5
  end
  object GroupBox1: TGroupBox [17]
    Left = 0
    Top = 168
    Width = 475
    Height = 251
    Align = alBottom
    Caption = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
    Font.Charset = ARABIC_CHARSET
    Font.Color = 170
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object DBMemo1: TDBMemo
      Tag = 111
      Left = 2
      Top = 15
      Width = 471
      Height = 234
      TabStop = False
      Align = alClient
      Color = clCream
      DataField = 'Note'
      DataSource = srcdetailNote
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object BitBtn1: TBitBtn [18]
    Left = 7
    Top = 141
    Width = 66
    Height = 24
    Anchors = [akLeft, akBottom]
    Caption = #1606#1605#1575#1610#1588
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  inherited ActionList1: TActionList
    Left = 16
    Top = 65528
    object DataSetInsert1: TDataSetInsert [0]
      Category = 'Dataset'
      Caption = #1580#1600#1600#1583#1610#1583
      DataSource = srcdetailNote
    end
    object DataSetEdit1: TDataSetEdit [1]
      Category = 'Dataset'
      Caption = #1608#1610#1600#1600#1600#1585#1575#1610#1588
      DataSource = srcdetailNote
    end
    object DataSetDelete1: TDataSetDelete [2]
      Category = 'Dataset'
      Caption = #1581#1600#1600#1584#1601
      DataSource = srcdetailNote
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcdetailNote
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcdetailNote
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      OnExecute = actPrintExecute
    end
    object actExit: TAction
      Caption = #1576#1575#1586#1711#1588#1578
      OnExecute = actExitExecute
    end
  end
  object qrydetailNote: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    AfterInsert = qrydetailNoteAfterInsert
    BeforePost = qrydetailNoteBeforePost
    AfterPost = qrydetailNoteAfterPost
    BeforeDelete = qrydetailNoteBeforeDelete
    Parameters = <
      item
        Name = 'TopicCode'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = '1'
      end
      item
        Name = 'DetailCode'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end
      item
        Name = 'CompanyCode'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM        acc.DetailNotes'
      
        'WHERE     (TopicCode = :TopicCode ) AND (DetailCode = :DetailCod' +
        'e ) AND (CompanyCode = :CompanyCode)'
      #13'Order by NoteDate')
    Left = 24
    Top = 40
    object qrydetailNoteID: TIntegerField
      FieldName = 'ID'
    end
    object qrydetailNoteTopicCode: TLargeintField
      DisplayLabel = #1603#1583' '#1605#1593#1740#1606
      FieldName = 'TopicCode'
    end
    object qrydetailNoteDetailCode: TIntegerField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610
      FieldName = 'DetailCode'
    end
    object qrydetailNoteNoteDate: TStringField
      Alignment = taCenter
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'NoteDate'
      Required = True
      EditMask = '9999/99/99'
      Size = 10
    end
    object qrydetailNoteNote: TMemoField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'Note'
      Required = True
      BlobType = ftMemo
    end
    object qrydetailNoteMakeDate: TDateTimeField
      Alignment = taCenter
      FieldName = 'MakeDate'
    end
    object qrydetailNoteAttachFileName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1601#1575#1610#1604' '#1662#1610#1608#1587#1578#1610
      FieldName = 'AttachFileName'
      Size = 150
    end
    object qrydetailNoteCompanyCode: TIntegerField
      FieldName = 'CompanyCode'
    end
  end
  object srcdetailNote: TDataSource
    AutoEdit = False
    DataSet = qrydetailNote
    OnStateChange = srcdetailNoteStateChange
    Left = 24
    Top = 96
  end
  object qryCategories: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'TopicCode'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT  * FROM   acc.Categories'
      'where TopicCode=:TopicCode')
    Left = 200
  end
  object OpenDialog1: TOpenDialog
    Title = #1606#1575#1605' '#1601#1575#1610#1604' '#1662#1610#1608#1587#1578
    Left = 160
    Top = 94
  end
  object qrydetail: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'DetailCode'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'companyCode'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM        acc.Details'
      'where DetailCode=:DetailCode'
      '        and companyCode=:companyCode')
    Left = 120
  end
  object SrcDetail: TDataSource
    DataSet = qrydetail
    Left = 120
    Top = 56
  end
  object srcCategories: TDataSource
    DataSet = qryCategories
    Left = 208
    Top = 48
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
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
    Template.FileName = 'D:\projects\Fara\Accounting\Exe\Report\CategoresDetailNote.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RefreshTokenLifeSpan = 365
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
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
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.DropBoxSettings.SharedResources = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.GoogleDriveSettings.SharedResources = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    CloudDriveSettings.OneDriveSettings.SharedResources = True
    Left = 352
    Top = 215
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      PrintCount = 50
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 265
      mmPrintPosition = 0
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppPageStyle1: TppPageStyle
      Border.mmPadding = 0
      EndPage = 0
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 252942
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'AttachFileName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 61119
        mmTop = 33073
        mmWidth = 128059
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'NoteDate'
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
        mmHeight = 5821
        mmLeft = 172244
        mmTop = 25929
        mmWidth = 15081
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'Note'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 206905
        mmLeft = 3440
        mmTop = 45773
        mmWidth = 197115
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1600#1582
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
        mmLeft = 189971
        mmTop = 25929
        mmWidth = 9790
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1601#1575#1610#1604
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
        mmLeft = 189707
        mmTop = 32808
        mmWidth = 10054
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' '#1578#1600#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610' :'
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
        mmLeft = 167746
        mmTop = 39688
        mmWidth = 32808
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        OnGetText = ppLabel4GetText
        Border.mmPadding = 0
        Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606' '#1581#1587#1575#1576
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 178594
        mmTop = 12435
        mmWidth = 20902
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
        OnGetText = ppLabel10GetText
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1670#1575#1662
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 3704
        mmTop = 7938
        mmWidth = 9525
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        OnGetText = ppLabel1GetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
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
        mmLeft = 74613
        mmTop = 529
        mmWidth = 52123
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
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
        mmLeft = 88636
        mmTop = 7144
        mmWidth = 24342
        BandType = 10
        LayerName = PageLayer1
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
        mmHeight = 5292
        mmLeft = 3969
        mmTop = 13758
        mmWidth = 6350
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 0
        mmTop = 24871
        mmWidth = 203200
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        OnGetText = ppLabel5GetText
        Border.mmPadding = 0
        Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606' '#1581#1587#1575#1576' '#1578#1601#1589#1610#1604#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5503
        mmLeft = 168848
        mmTop = 18785
        mmWidth = 30649
        BandType = 10
        LayerName = PageLayer1
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'ID'
      DataPipeline = ppDBPipeline1
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
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
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'PageLayer1'
        LayerType = ltPage
        Index = 0
      end
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 1
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcdetailNote
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 280
    Top = 215
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'ID'
      FieldName = 'ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'TopicCode'
      FieldName = 'TopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'DetailCode'
      FieldName = 'DetailCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'NoteDate'
      FieldName = 'NoteDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'Note'
      FieldName = 'Note'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'MakeDate'
      FieldName = 'MakeDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'AttachFileName'
      FieldName = 'AttachFileName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'CompanyCode'
      FieldName = 'CompanyCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
  end
  object Popprint: TPopupMenu
    Left = 312
    Top = 344
    object N11: TMenuItem
      Caption = #1670#1575#1662'1'
      OnClick = N11Click
    end
    object N21: TMenuItem
      Caption = #1670#1575#1662'2'
      OnClick = N21Click
    end
  end
end

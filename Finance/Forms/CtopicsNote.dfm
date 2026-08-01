inherited CtopicsNoteF: TCtopicsNoteF
  Left = 340
  Top = 187
  ActiveControl = DBEdit3
  Caption = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
  ClientHeight = 468
  ClientWidth = 528
  ExplicitWidth = 534
  ExplicitHeight = 497
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 411
    Width = 528
    ExplicitTop = 411
    ExplicitWidth = 528
  end
  object Label1: TLabel [1]
    Left = 443
    Top = 97
    Width = 69
    Height = 13
    Align = alCustom
    Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1581#1587#1575#1576
  end
  object Label2: TLabel [2]
    Left = 396
    Top = 50
    Width = 115
    Height = 13
    Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1581#1587#1575#1576' '#1578#1601#1589#1610#1604#1610'2'
  end
  object DBText1: TDBText [3]
    Left = 144
    Top = 115
    Width = 301
    Height = 17
    Color = 15000804
    DataField = 'MoeenName_L1'
    DataSource = srcCategories
    ParentColor = False
    Transparent = False
  end
  object DBText2: TDBText [4]
    Left = 144
    Top = 69
    Width = 301
    Height = 17
    Color = 15000804
    DataField = 'CTopicName_L1'
    DataSource = srcCenterTopic
    ParentColor = False
    Transparent = False
  end
  object Bevel2: TBevel [5]
    Left = 0
    Top = 89
    Width = 521
    Height = 3
    Shape = bsTopLine
  end
  object Label3: TLabel [6]
    Left = 488
    Top = 152
    Width = 21
    Height = 13
    Caption = #1578#1575#1585#1610#1582
    FocusControl = DBEdit3
  end
  object Label4: TLabel [7]
    Left = 262
    Top = 149
    Width = 76
    Height = 13
    Caption = #1606#1575#1605' '#1601#1575#1610#1604' '#1662#1610#1608#1587#1578#1610
    FocusControl = DBEdit4
  end
  object SpeedButton1: TSpeedButton [8]
    Left = 92
    Top = 144
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = SpeedButton1Click
  end
  object Label5: TLabel [9]
    Left = 0
    Top = 178
    Width = 528
    Height = 14
    Align = alBottom
    AutoSize = False
    Caption = '    '#1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
    Color = clBtnFace
    Font.Charset = ARABIC_CHARSET
    Font.Color = 170
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object DBText3: TDBText [10]
    Left = 451
    Top = 115
    Width = 65
    Height = 17
    Color = clCream
    DataField = 'TopicCode'
    DataSource = srcCategories
    ParentColor = False
    Transparent = False
  end
  object DBText4: TDBText [11]
    Left = 451
    Top = 69
    Width = 65
    Height = 17
    Color = clCream
    DataField = 'CTopicCode'
    DataSource = srcCenterTopic
    ParentColor = False
    Transparent = False
  end
  object Bevel3: TBevel [12]
    Left = 1
    Top = 135
    Width = 520
    Height = 3
    Shape = bsTopLine
  end
  inherited Panel1: TPanel
    Width = 528
    Height = 47
    ExplicitWidth = 528
    ExplicitHeight = 47
    inherited Image1: TImage
      Left = 474
      ExplicitLeft = 474
    end
    inherited lblTopic0: TLabel
      Left = 367
      Top = 10
      Width = 87
      Caption = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
      ExplicitLeft = 367
      ExplicitTop = 10
      ExplicitWidth = 87
    end
    inherited lblTopic1: TLabel
      Left = 381
      Top = 27
      Visible = False
      ExplicitLeft = 381
      ExplicitTop = 27
    end
  end
  inherited pnlDown: TPanel
    Top = 430
    Width = 528
    Height = 38
    TabOrder = 6
    ExplicitTop = 430
    ExplicitWidth = 528
    ExplicitHeight = 38
    object okPanel: TPanel [0]
      Left = 140
      Top = 1
      Width = 156
      Height = 36
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        156
        36)
      object BitBtn5: TBitBtn
        Left = 80
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
        Left = 3
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
    inherited btnClose: TBitBtn
      Left = 6
      Top = 7
      Action = actExit
      ExplicitLeft = 6
      ExplicitTop = 7
    end
    object newPanel: TPanel
      Left = 296
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
        Left = 155
        Top = 6
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1600#1600#1583#1610#1583
        TabOrder = 2
      end
      object BitBtn9: TBitBtn
        Left = 78
        Top = 6
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1600#1600#1600#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn10: TBitBtn
        Left = 1
        Top = 6
        Width = 75
        Height = 25
        Action = DataSetDelete1
        Anchors = [akTop, akRight]
        Caption = #1581#1600#1600#1584#1601
        TabOrder = 0
      end
    end
    object Button1: TButton
      Left = 83
      Top = 7
      Width = 75
      Height = 25
      Action = actPrint
      TabOrder = 3
    end
  end
  object DBMemo1: TDBMemo [15]
    Tag = 111
    Left = 0
    Top = 192
    Width = 528
    Height = 217
    Align = alBottom
    BevelInner = bvNone
    BevelOuter = bvRaised
    BevelKind = bkSoft
    Ctl3D = True
    DataField = 'Note'
    DataSource = srcCtopicNote
    ParentCtl3D = False
    TabOrder = 4
  end
  object DBEdit3: TDBEdit [16]
    Left = 417
    Top = 148
    Width = 66
    Height = 21
    Ctl3D = True
    DataField = 'NoteDate'
    DataSource = srcCtopicNote
    ParentCtl3D = False
    TabOrder = 3
  end
  object DBEdit4: TDBEdit [17]
    Left = 118
    Top = 145
    Width = 144
    Height = 21
    DataField = 'AttachFileName'
    DataSource = srcCtopicNote
    TabOrder = 2
    OnKeyDown = DBEdit4KeyDown
  end
  object DBNavigator1: TDBNavigator [18]
    Left = 0
    Top = 409
    Width = 528
    Height = 21
    DataSource = srcCtopicNote
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Align = alBottom
    Flat = True
    TabOrder = 5
  end
  object BitBtn1: TBitBtn [19]
    Left = 12
    Top = 142
    Width = 76
    Height = 24
    Caption = #1606#1605#1575#1610#1588
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  inherited ActionList1: TActionList
    Left = 16
    Top = 0
    object DataSetInsert1: TDataSetInsert [0]
      Category = 'Dataset'
      Caption = #1580#1600#1600#1583#1610#1583
      DataSource = srcCtopicNote
    end
    object DataSetEdit1: TDataSetEdit [1]
      Category = 'Dataset'
      Caption = #1608#1610#1600#1600#1600#1585#1575#1610#1588
      DataSource = srcCtopicNote
    end
    object DataSetDelete1: TDataSetDelete [2]
      Category = 'Dataset'
      Caption = #1581#1600#1600#1584#1601
      DataSource = srcCtopicNote
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcCtopicNote
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcCtopicNote
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
  object qryCTopicNote: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    AfterInsert = qryCTopicNoteAfterInsert
    BeforePost = qryCTopicNoteBeforePost
    AfterPost = qryCTopicNoteAfterPost
    BeforeDelete = qryCTopicNoteBeforeDelete
    Parameters = <
      item
        Name = 'TopicCode'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = '2'
      end
      item
        Name = 'CTopicCode'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 15
      end>
    SQL.Strings = (
      'SELECT     * FROM acc.CtopicNotes'
      'Where TopicCode = :TopicCode  And CTopicCode = :CTopicCode  '
      'Order by NoteDate')
    Left = 24
    Top = 48
    object qryCTopicNoteID: TIntegerField
      FieldName = 'ID'
    end
    object qryCTopicNoteTopicCode: TLargeintField
      DisplayLabel = #1603#1583' '#1605#1593#1740#1606
      FieldName = 'TopicCode'
      Required = True
    end
    object qryCTopicNoteCTopicCode: TIntegerField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'
      FieldName = 'CTopicCode'
      Required = True
    end
    object qryCTopicNoteNote: TMemoField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'Note'
      Required = True
      BlobType = ftMemo
    end
    object qryCTopicNoteNoteDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'NoteDate'
      Required = True
      EditMask = '!9999/99/99;1;_'
      FixedChar = True
      Size = 10
    end
    object qryCTopicNoteAttachFileName: TStringField
      DisplayLabel = #1606#1575#1605' '#1601#1575#1610#1604' '#1662#1610#1608#1587#1578#1610
      FieldName = 'AttachFileName'
      Size = 120
    end
    object qryCTopicNoteMakeDate: TDateTimeField
      Alignment = taCenter
      DisplayLabel = #1578#1575#1585#1610#1582' '#1575#1610#1580#1575#1583
      FieldName = 'MakeDate'
      Required = True
      EditMask = '!9999/99/00;1;_'
    end
  end
  object srcCtopicNote: TDataSource
    DataSet = qryCTopicNote
    OnStateChange = srcCtopicNoteStateChange
    Left = 16
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
      
        'SELECT     acc.Categories.TopicCode, acc.Categories.MoeenName_L1' +
        ',acc.Categories.MoeenName_L2'
      'FROM         acc.Categories '
      'WHERE    (acc.Categories.TopicCode = :TopicCode)'
      '')
    Left = 200
  end
  object OpenDialog1: TOpenDialog
    Title = #1606#1575#1605' '#1601#1575#1610#1604' '#1662#1610#1608#1587#1578
    Left = 56
    Top = 65534
  end
  object qryCenterTopic: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CTopicCode'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select * from acc.Centertopics'
      ' where CTopicCode=:CTopicCode')
    Left = 120
    object qryCenterTopicCTopicCode: TIntegerField
      FieldName = 'CTopicCode'
    end
    object qryCenterTopicCTopicName_L1: TStringField
      FieldName = 'CTopicName_L1'
      Size = 120
    end
    object qryCenterTopicCTopicName_L2: TStringField
      FieldName = 'CTopicName_L2'
      Size = 120
    end
    object qryCenterTopicLevelID: TIntegerField
      FieldName = 'LevelID'
    end
    object qryCenterTopicAidNumber: TIntegerField
      FieldName = 'AidNumber'
    end
    object qryCenterTopicAidDate: TStringField
      FieldName = 'AidDate'
      FixedChar = True
      Size = 10
    end
    object qryCenterTopicMakeDate: TDateTimeField
      FieldName = 'MakeDate'
    end
  end
  object srcCenterTopic: TDataSource
    DataSet = qryCenterTopic
    Left = 120
    Top = 48
  end
  object srcCategories: TDataSource
    DataSet = qryCategories
    Left = 200
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
    Template.FileName = 'D:\projects\Fara\Accounting\Exe\Report\ctopicsNote2.rtm'
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
    Left = 248
    Top = 263
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
        mmTop = 32279
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
        mmTop = 24077
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
        mmLeft = 189971
        mmTop = 24077
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
        mmTop = 32015
        mmWidth = 10054
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610' :'
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
        mmLeft = 172509
        mmTop = 39688
        mmWidth = 28046
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
        mmHeight = 5503
        mmLeft = 179451
        mmTop = 15875
        mmWidth = 20574
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
        Caption = #1578#1608#1590#1610#1581#1575#1578' '#1605#1585#1576#1608#1591' '#1576#1607' '#1581#1587#1575#1576#1607#1575
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
        mmLeft = 82776
        mmTop = 7144
        mmWidth = 36068
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
        mmTop = 22490
        mmWidth = 203200
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
    DataSource = srcCtopicNote
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 176
    Top = 263
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
      FieldAlias = 'CTopicCode'
      FieldName = 'CTopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'Note'
      FieldName = 'Note'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'NoteDate'
      FieldName = 'NoteDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'AttachFileName'
      FieldName = 'AttachFileName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'MakeDate'
      FieldName = 'MakeDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
  end
  object PopPrint: TPopupMenu
    Left = 424
    Top = 274
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

inherited rptTrans_CustF: TrptTrans_CustF
  Left = 204
  Top = 138
  Caption = #1711#1586#1575#1585#1588' '#1582#1585#1608#1580#1610' '#1607#1575#1610' '#1575#1606#1576#1575#1585' '#1576#1578#1601#1603#1610#1603' '#1605#1588#1578#1585#1610#1575#1606
  ClientWidth = 778
  OnResize = FormResize
  ExplicitWidth = 790
  ExplicitHeight = 554
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Width = 778
    ExplicitTop = 475
    ExplicitWidth = 778
    object BitBtn2: TBitBtn
      Left = 545
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Anchors = [akRight, akBottom]
      Caption = #1670#1575#1662
      TabOrder = 1
    end
    object BitBtn7: TBitBtn
      Left = 700
      Top = 8
      Width = 75
      Height = 25
      Action = ActFilter
      Anchors = [akRight, akBottom]
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 2
    end
    object BitBtn6: TBitBtn
      Left = 243
      Top = 8
      Width = 75
      Height = 25
      Action = actExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' '#1575#1603#1587#1604
      TabOrder = 3
    end
    object BitBtn3: TBitBtn
      Left = 165
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
    end
    object BitBtn4: TBitBtn
      Left = 87
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 5
    end
    object BitBtn5: TBitBtn
      Left = 623
      Top = 8
      Width = 75
      Height = 25
      Action = actShow
      Anchors = [akRight, akBottom]
      Caption = #1606#1605#1575#1610#1588
      TabOrder = 6
    end
  end
  inherited Panel2: TPanel
    Width = 778
    Height = 64
    ExplicitWidth = 778
    ExplicitHeight = 64
    inherited lblCaption: TLabel
      Height = 16
      ExplicitLeft = 674
    end
    object SBtnStoreID: TSpeedButton
      Left = 10
      Top = 2
      Width = 23
      Height = 20
      Caption = '...'
      OnClick = SBtnStoreIDClick
    end
    object LblStore: TLabel
      Left = 123
      Top = 4
      Width = 81
      Height = 13
      Alignment = taRightJustify
      Caption = #1603#1583'  '#1608' '#1606#1575#1605'  '#1605#1588#1578#1585#1610
      FocusControl = EdtStoreID
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText: TDBText
      Left = 9
      Top = 24
      Width = 198
      Height = 16
      Color = 13948116
      DataField = 'CustName'
      DataSource = SrcCust
      ParentColor = False
      Transparent = False
    end
    object EdtStoreID: TDBEdit
      Left = 36
      Top = 2
      Width = 70
      Height = 21
      DataField = 'PersonID1'
      DataSource = SrcCust
      TabOrder = 0
    end
    object DBNavigator2: TDBNavigator
      Left = 8
      Top = 43
      Width = 200
      Height = 18
      DataSource = SrcCust
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Flat = True
      TabOrder = 1
    end
  end
  inherited Panel3: TPanel
    Top = 64
    Width = 778
    Height = 411
    ExplicitTop = 64
    ExplicitWidth = 778
    ExplicitHeight = 413
    object StatusBar1: TStatusBar
      Left = 2
      Top = 392
      Width = 786
      Height = 19
      Panels = <
        item
          Width = 160
        end
        item
          Width = 160
        end
        item
          Width = 160
        end
        item
          Width = 160
        end
        item
          Text = #1580#1605#1593' '#1603#1604
          Width = 50
        end>
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 786
      Height = 352
      Align = alClient
      Color = clCream
      DataSource = SrcReciptItem
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = actShowExecute
      OnKeyDown = DBGrid1KeyDown
      OnKeyPress = DBGrid1KeyPress
      OnKeyUp = DBGrid1KeyUp
      OnMouseUp = DBGrid1MouseUp
      Columns = <
        item
          Expanded = False
          FieldName = 'ReciptNumber'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReciptDate'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'StuffCode'
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_StuffName'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UnitName'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ProductModel'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ModelName'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OutputEntity'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OutputWeight'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TotalOutputPrice'
          Visible = True
        end>
    end
    object StatusBar2: TStatusBar
      Left = 2
      Top = 373
      Width = 786
      Height = 19
      BiDiMode = bdRightToLeft
      Panels = <
        item
          Width = 160
        end
        item
          Width = 160
        end
        item
          Width = 160
        end
        item
          Width = 160
        end
        item
          Text = #1580#1605#1593' '#1587#1591#1585#1607#1575#1610' '#1580#1575#1585#1610
          Width = 50
        end>
      ParentBiDiMode = False
    end
    object StatusBar3: TStatusBar
      Left = 2
      Top = 354
      Width = 786
      Height = 19
      BiDiMode = bdRightToLeft
      Panels = <
        item
          Width = 160
        end
        item
          Width = 160
        end
        item
          Width = 160
        end
        item
          Width = 160
        end
        item
          Text = #1580#1605#1593' '#1587#1591#1585#1607#1575#1610' '#1575#1606#1578#1582#1575#1576#1610
          Width = 50
        end>
      ParentBiDiMode = False
    end
  end
  inherited ActionList: TActionList
    Left = 568
    Top = 16
    inherited DataSetInsert1: TDataSetInsert [0]
    end
    inherited DataSetEdit1: TDataSetEdit [1]
    end
    object ActFilter: TAction [2]
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = ActFilterExecute
    end
    inherited DataSetPost1: TDataSetPost [3]
    end
    object actShow: TAction [4]
      Caption = #1606#1605#1575#1610#1588
      OnExecute = actShowExecute
    end
    object actPrint: TAction [5]
      Caption = #1670#1575#1662
      OnExecute = actPrintExecute
    end
    inherited DataSetCancel1: TDataSetCancel [6]
    end
    inherited DataSetDelete1_: TDataSetDelete [7]
    end
    inherited actshowChart: TAction [8]
    end
    object actExcel: TAction [9]
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' '#1575#1603#1587#1604
      OnExecute = actExcelExecute
    end
    inherited actSearch_: TAction [10]
      OnExecute = actSearch_Execute
    end
    object actSort: TAction [11]
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    inherited actExit: TAction [12]
    end
  end
  inherited ImageList1: TImageList
    Left = 600
    Top = 17
  end
  object SrcCust: TDataSource
    DataSet = qryCust
    Left = 416
    Top = 8
  end
  object qryCust: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryCustAfterScroll
    Parameters = <
      item
        Name = 'PersonIDFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'PersonIDTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 999999
      end>
    SQL.Strings = (
      'SELECT     dbo.Recipts.PersonID1 , dbo.Customers.CustName'
      'FROM         dbo.Recipts LEFT OUTER JOIN'
      
        '                      dbo.Customers ON dbo.Recipts.PersonID1 = d' +
        'bo.Customers.CustID'
      
        'where         (dbo.Recipts.PersonID1 between  :PersonIDFrom and ' +
        ':PersonIDTo) '
      'GROUP BY dbo.Recipts.PersonID1, dbo.Customers.CustName')
    Left = 360
    Top = 8
    object qryCustPersonID1: TIntegerField
      FieldName = 'PersonID1'
    end
    object qryCustCustName: TStringField
      FieldName = 'CustName'
      Size = 120
    end
  end
  object qryReciptItem: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = qryReciptItemAfterOpen
    AfterScroll = qryReciptItemAfterScroll
    OnCalcFields = qryReciptItemCalcFields
    Parameters = <
      item
        Name = 'PersonID1'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'FormType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
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
        Name = 'ReciptDateFrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'ReciptDateTo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
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
        Name = 'ModelFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ModelTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT   dbo.Recipts.ReciptNumber, dbo.Recipts.ReciptDate, dbo.R' +
        'eciptItems.StuffCode, dbo.ReciptItems.ProductModel, dbo.ReciptIt' +
        'ems.OutputEntity,'
      
        '         dbo.Recipts.ReciptID, dbo.Recipts.StoreID, dbo.ReciptIt' +
        'ems.OutputWeight, dbo.Units.UnitName, dbo.StuffCoding.c_StuffNam' +
        'e,'
      
        '         dbo.ReciptItems.TotalOutputPrice, dbo.ReciptItems.Recip' +
        'tItemID, dbo.LookUps.Name AS ModelName, dbo.ReciptItems.OutputEn' +
        'tity AS sumEntity,'
      
        '         dbo.ReciptItems.OutputWeight AS sumWeight, dbo.ReciptIt' +
        'ems.TotalOutputPrice AS sumPrice'
      ', ReciptItems.ServerID, ReciptItems.YearID'
      ''
      'FROM     ReciptItems INNER JOIN'
      
        '         Recipts ON Recipts.ReciptID = ReciptItems.ReciptID AND ' +
        'Recipts.ServerID = ReciptItems.ServerID AND Recipts.YearID = Rec' +
        'iptItems.YearID LEFT OUTER JOIN'
      
        '         LookUps ON ReciptItems.ProductModel = LookUps.LookUpID ' +
        'LEFT OUTER JOIN'
      '         Units INNER JOIN'
      
        '         StuffCoding ON Units.UnitCode = StuffCoding.n_UnitCode ' +
        'ON ReciptItems.StuffCode = StuffCoding.c_StuffCode'
      'WHERE   (dbo.Recipts.PersonID1=:PersonID1)'
      '      AND (dbo.Recipts.ReciptType =:FormType )'
      
        '      AND (dbo.Recipts.ReciptNumber between  :ReciptNumberFrom a' +
        'nd :ReciptNumberTo)'
      
        '      AND (dbo.Recipts.ReciptDate between  :ReciptDateFrom and :' +
        'ReciptDateTo)'
      
        '      AND (dbo.ReciptItems.StuffCode between  :StuffCodeFrom and' +
        ' :StuffCodeTo)'
      
        '      AND (dbo.ReciptItems.ProductModel BETWEEN :ModelFrom and :' +
        'ModelTo)'
      ''
      ''
      '')
    Left = 200
    Top = 176
    object qryReciptItemReciptNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'ReciptNumber'
    end
    object qryReciptItemReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1601#1585#1605
      FieldName = 'ReciptDate'
      EditMask = '!9999/99/00;1;_'
      FixedChar = True
      Size = 10
    end
    object qryReciptItemStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qryReciptItemc_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1603#1575#1604#1575
      DisplayWidth = 39
      FieldName = 'c_StuffName'
      Size = 70
    end
    object qryReciptItemUnitName: TStringField
      Tag = 3
      DisplayLabel = #1608#1575#1581#1583' '#1588#1605#1575#1585#1588
      DisplayWidth = 47
      FieldName = 'UnitName'
      Size = 50
    end
    object qryReciptItemProductModel: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1583#1604
      FieldName = 'ProductModel'
    end
    object qryReciptItemOutputEntity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'OutputEntity'
    end
    object qryReciptItemOutputWeight: TFloatField
      DisplayLabel = #1608#1586#1606
      FieldName = 'OutputWeight'
    end
    object qryReciptItemTotalOutputPrice: TBCDField
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'TotalOutputPrice'
      currency = True
      Precision = 19
    end
    object qryReciptItemReciptItemID: TIntegerField
      FieldName = 'ReciptItemID'
    end
    object qryReciptItemModelName: TStringField
      DisplayLabel = #1605#1583#1604' '#1603#1575#1604#1575
      FieldName = 'ModelName'
      Size = 50
    end
    object qryReciptItemReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryReciptItemStoreID: TSmallintField
      FieldName = 'StoreID'
    end
    object qryReciptItemsumEntity: TFloatField
      FieldName = 'sumEntity'
    end
    object qryReciptItemsumWeight: TFloatField
      FieldName = 'sumWeight'
    end
    object qryReciptItemsumPrice: TBCDField
      FieldName = 'sumPrice'
      Precision = 19
    end
    object qryReciptItem_row: TIntegerField
      FieldKind = fkCalculated
      FieldName = '_row'
      Calculated = True
    end
    object qryReciptItemServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryReciptItemYearID: TIntegerField
      FieldName = 'YearID'
    end
  end
  object SrcReciptItem: TDataSource
    DataSet = qryReciptItem
    Left = 104
    Top = 176
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
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    Template.FileName = 'D:\projects\Fara\BSell\Exe\Report\RpttransCust.rtm'
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
    Left = 560
    Top = 156
    Version = '22.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 37042
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape2'
        mmHeight = 7408
        mmLeft = 265
        mmTop = 29633
        mmWidth = 266436
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        OnGetText = ppLabel1GetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 111125
        mmTop = 1323
        mmWidth = 47625
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1711#1586#1575#1585#1588' '#1582#1585#1608#1580#1610' '#1607#1575#1610' '#1575#1606#1576#1575#1585' '#1576#1578#1601#1603#1610#1603' '#1605#1588#1578#1585#1610#1575#1606
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
        mmLeft = 102955
        mmTop = 6615
        mmWidth = 63966
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 0
        mmTop = 16404
        mmWidth = 266701
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1603#1583#1608' '#1606#1575#1605' '#1605#1588#1578#1585#1610' :'#8207
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
        mmLeft = 242094
        mmTop = 20638
        mmWidth = 24342
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
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
        mmHeight = 6615
        mmLeft = 30956
        mmTop = 29898
        mmWidth = 16933
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
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
        mmLeft = 48948
        mmTop = 29898
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = #1608#1575#1581#1583' '#1588#1605#1575#1585#1588
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
        mmLeft = 130969
        mmTop = 29898
        mmWidth = 19050
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1603#1575#1604#1575
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
        mmLeft = 151077
        mmTop = 29898
        mmWidth = 71173
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
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
        mmTop = 29898
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label11'
        OnGetText = ppLabel11GetText
        Border.mmPadding = 0
        Caption = #1575#1586' '#1603#1583' '#1603#1575#1604#1575#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5292
        mmLeft = 3969
        mmTop = 23019
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
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
        mmLeft = 3969
        mmTop = 9790
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'PersonID1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6879
        mmLeft = 224367
        mmTop = 20638
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'CustName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 160338
        mmTop = 20638
        mmWidth = 63765
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
        mmLeft = 3969
        mmTop = 4233
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = #1603#1583' '#1603#1575#1604#1575
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
        mmLeft = 223573
        mmTop = 29898
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 148961
        mmTop = 29898
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
        mmHeight = 6879
        mmLeft = 221457
        mmTop = 29898
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 62442
        mmTop = 29898
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
        mmHeight = 6879
        mmLeft = 46831
        mmTop = 29898
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
        mmHeight = 6879
        mmLeft = 29104
        mmTop = 29898
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer2
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
        mmHeight = 5419
        mmLeft = 3969
        mmTop = 17463
        mmWidth = 7620
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label17'
        Border.mmPadding = 0
        Caption = #1603#1583' '#1605#1583#1604
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
        mmLeft = 113771
        mmTop = 29898
        mmWidth = 16140
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 111654
        mmTop = 29898
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label18'
        Border.mmPadding = 0
        Caption = #1605#1583#1604' '#1603#1575#1604#1575
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
        mmLeft = 64823
        mmTop = 29898
        mmWidth = 47361
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line11'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 128852
        mmTop = 29898
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '
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
        mmLeft = 243153
        mmTop = 29898
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label15'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607
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
        mmLeft = 255323
        mmTop = 29898
        mmWidth = 10848
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line13'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 241300
        mmTop = 29898
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
        mmLeft = 249767
        mmTop = 29898
        mmWidth = 5292
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
        mmWidth = 266701
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
          PrinterSetup.PaperName = 'Letter'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 215900
          PrinterSetup.mmPaperWidth = 279401
          PrinterSetup.PaperSize = 1
          Version = '22.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline2'
          object ppDetailBand3: TppDetailBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 7144
            mmPrintPosition = 0
            object ppLine10: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line102'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 7144
              mmLeft = 266436
              mmTop = 0
              mmWidth = 529
              BandType = 4
              LayerName = Foreground
            end
            object ppLine2: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line1'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 7144
              mmLeft = 222515
              mmTop = 0
              mmWidth = 529
              BandType = 4
              LayerName = Foreground
            end
            object ppLine3: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line2'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 7144
              mmLeft = 148696
              mmTop = 0
              mmWidth = 1852
              BandType = 4
              LayerName = Foreground
            end
            object ppLine12: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line3'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 7144
              mmLeft = 46830
              mmTop = 0
              mmWidth = 1852
              BandType = 4
              LayerName = Foreground
            end
            object ppLine15: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line4'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 7144
              mmLeft = 28840
              mmTop = 0
              mmWidth = 1852
              BandType = 4
              LayerName = Foreground
            end
            object ppLine16: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line5'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 7144
              mmLeft = 62442
              mmTop = 0
              mmWidth = 1852
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText1: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText1'
              Border.mmPadding = 0
              DataField = 'OutputWeight'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6350
              mmLeft = 30956
              mmTop = 0
              mmWidth = 17198
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText2: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText2'
              Border.mmPadding = 0
              DataField = 'OutputEntity'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6350
              mmLeft = 48948
              mmTop = 0
              mmWidth = 14817
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText11: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText3'
              Border.mmPadding = 0
              DataField = 'UnitName'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6350
              mmLeft = 130969
              mmTop = 0
              mmWidth = 19050
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText12: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText4'
              Border.mmPadding = 0
              DataField = 'c_StuffName'
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
              mmHeight = 6350
              mmLeft = 151077
              mmTop = 0
              mmWidth = 71173
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText13: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText5'
              Border.mmPadding = 0
              DataField = 'TotalOutputPrice'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6350
              mmLeft = 1058
              mmTop = 0
              mmWidth = 29104
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText14: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText6'
              Border.mmPadding = 0
              DataField = 'StuffCode'
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
              mmHeight = 6350
              mmLeft = 223573
              mmTop = 0
              mmWidth = 18521
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText16: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText7'
              Border.mmPadding = 0
              DataField = 'ProductModel'
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
              mmHeight = 6350
              mmLeft = 113771
              mmTop = 0
              mmWidth = 16140
              BandType = 4
              LayerName = Foreground
            end
            object ppLine17: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line6'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 7144
              mmLeft = 112713
              mmTop = 0
              mmWidth = 529
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText17: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText8'
              Border.mmPadding = 0
              DataField = 'ModelName'
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
              mmHeight = 6350
              mmLeft = 64823
              mmTop = 0
              mmWidth = 47625
              BandType = 4
              LayerName = Foreground
            end
            object ppLine18: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line7'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 7144
              mmLeft = 128588
              mmTop = 0
              mmWidth = 1852
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText18: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText18'
              Border.mmPadding = 0
              DataField = 'ReciptDate'
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
              mmHeight = 6350
              mmLeft = 243153
              mmTop = 0
              mmWidth = 11113
              BandType = 4
              LayerName = Foreground
            end
            object ppLine19: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line8'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 7144
              mmLeft = 242359
              mmTop = 0
              mmWidth = 529
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText25: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText25'
              Border.mmPadding = 0
              DataField = 'ReciptNumber'
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
              mmHeight = 6350
              mmLeft = 255323
              mmTop = 0
              mmWidth = 10583
              BandType = 4
              LayerName = Foreground
            end
            object ppLine20: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line20'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 7144
              mmLeft = 254530
              mmTop = 0
              mmWidth = 529
              BandType = 4
              LayerName = Foreground
            end
            object ppLine21: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line9'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 7144
              mmLeft = 265
              mmTop = 0
              mmWidth = 265
              BandType = 4
              LayerName = Foreground
            end
          end
          object ppSummaryBand3: TppSummaryBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
            object ppShape1: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape1'
              mmHeight = 7144
              mmLeft = 265
              mmTop = 0
              mmWidth = 266701
              BandType = 7
              LayerName = Foreground
            end
            object ppLine23: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line10'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 7144
              mmLeft = 46831
              mmTop = 0
              mmWidth = 1852
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc4: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc1'
              Border.mmPadding = 0
              DataField = 'Weight'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6615
              mmLeft = 30956
              mmTop = 0
              mmWidth = 17198
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc5: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc2'
              Border.mmPadding = 0
              DataField = 'Entity'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6615
              mmLeft = 48948
              mmTop = 0
              mmWidth = 14817
              BandType = 7
              LayerName = Foreground
            end
            object ppLine24: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line11'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 7144
              mmLeft = 62442
              mmTop = 0
              mmWidth = 1852
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel19: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label1'
              Border.mmPadding = 0
              Caption = ' : '#1578#1593#1583#1575#1583' '#1603#1575#1604#1575
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
              mmLeft = 234950
              mmTop = 265
              mmWidth = 15081
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc8: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc3'
              Border.mmPadding = 0
              DataField = 'StuffCode'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DBCalcType = dcCount
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6615
              mmLeft = 216959
              mmTop = 265
              mmWidth = 17198
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel20: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label201'
              Border.mmPadding = 0
              Caption = #1580#1605#1593' '#1603#1604':'#8207
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Yagut'
              Font.Size = 11
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 6615
              mmLeft = 253471
              mmTop = 0
              mmWidth = 11377
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc2: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc4'
              Border.mmPadding = 0
              DataField = 'Price'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0.;(#,0.)'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6615
              mmLeft = 1058
              mmTop = 0
              mmWidth = 29104
              BandType = 7
              LayerName = Foreground
            end
            object ppLine55: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line55'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 7144
              mmLeft = 28840
              mmTop = 0
              mmWidth = 1852
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
  object ppDBPipeline2: TppDBPipeline
    DataSource = SrcReciptItem
    OpenDataSource = False
    UserName = 'DBPipeline2'
    Left = 480
    Top = 157
    MasterDataPipelineName = 'ppDBPipeline1'
    object ppDBPipeline2ppField1: TppField
      FieldAlias = 'ReciptNumber'
      FieldName = 'ReciptNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField2: TppField
      FieldAlias = 'ReciptDate'
      FieldName = 'ReciptDate'
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
      FieldAlias = 'ProductModel'
      FieldName = 'ProductModel'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField7: TppField
      FieldAlias = 'OutputEntity'
      FieldName = 'OutputEntity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField8: TppField
      FieldAlias = 'OutputWeight'
      FieldName = 'OutputWeight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField9: TppField
      FieldAlias = 'TotalOutputPrice'
      FieldName = 'TotalOutputPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField10: TppField
      FieldAlias = 'ReciptItemID'
      FieldName = 'ReciptItemID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField11: TppField
      FieldAlias = 'ModelName'
      FieldName = 'ModelName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField12: TppField
      FieldAlias = 'ReciptID'
      FieldName = 'ReciptID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField13: TppField
      FieldAlias = 'StoreID'
      FieldName = 'StoreID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField14: TppField
      FieldAlias = 'sumEntity'
      FieldName = 'sumEntity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField15: TppField
      FieldAlias = 'sumWeight'
      FieldName = 'sumWeight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField16: TppField
      FieldAlias = 'sumPrice'
      FieldName = 'sumPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField17: TppField
      FieldAlias = '_row'
      FieldName = '_row'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = SrcCust
    OpenDataSource = False
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'DBPipeline1'
    Left = 400
    Top = 157
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'PersonID1'
      FieldName = 'PersonID1'
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
  end
end

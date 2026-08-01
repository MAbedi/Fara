inherited RptControlEntityF: TRptControlEntityF
  Left = 295
  Top = 152
  Caption = #1711#1586#1575#1585#1588' '#1603#1606#1578#1585#1604#1610' '#1605#1608#1580#1608#1583#1610' '#1576#1585' '#1581#1587#1576' '#1575#1606#1576#1575#1585#1607#1575
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actsendtoExel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 85
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 2
    end
    object BtnShow: TButton
      AlignWithMargins = True
      Left = 626
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alRight
      Caption = #1587#1591#1581' '#1662#1575#1574#1610#1606
      TabOrder = 3
      OnClick = BtnShowClick
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 166
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSearch_
      Align = alLeft
      TabOrder = 4
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 707
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actfilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 5
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 328
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actshowChart
      Align = alLeft
      Caption = #1606#1605#1608#1583#1575#1585
      TabOrder = 6
    end
    object Button3: TButton
      AlignWithMargins = True
      Left = 545
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actPrint
      Align = alRight
      TabOrder = 7
    end
  end
  inherited Panel2: TPanel
    inherited lblCaption: TLabel
      Left = 736
      Width = 4
      Caption = ''
      ExplicitLeft = 740
      ExplicitWidth = 4
    end
    object LblLimit: TLabel
      Left = 707
      Top = 32
      Width = 28
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1575#1586#1578#1575#1585#1610#1582
    end
  end
  inherited Panel3: TPanel
    object Label1: TLabel
      Left = 80
      Top = 216
      Width = 47
      Height = 13
      Caption = 'ReportSql'
    end
    object DBGrid1: TCedarDbgrid
      Left = 2
      Top = 2
      Width = 782
      Height = 419
      Align = alClient
      Color = clCream
      DataSource = srcEntity
      DynProps = <>
      Flat = True
      FooterParams.FillStyle = cfstSolidEh
      FooterParams.Font.Charset = DEFAULT_CHARSET
      FooterParams.Font.Color = clWindowText
      FooterParams.Font.Height = -12
      FooterParams.Font.Name = 'Tahoma'
      FooterParams.Font.Style = [fsBold]
      FooterParams.ParentFont = False
      FooterParams.VertLines = False
      GridLineParams.VertEmptySpaceStyle = dessNonEh
      HorzScrollBar.ExtraPanel.Visible = True
      IndicatorTitle.ShowDropDownSign = True
      IndicatorTitle.TitleButton = True
      OddRowColor = clWhite
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      RowHeight = 18
      SearchPanel.Enabled = True
      SortLocal = True
      TabOrder = 0
      OnDblClick = actshowExecute
      OnKeyPress = DBGrid1KeyPress
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'StoreID'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'c_StoreName'
          Footers = <>
          Width = 111
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Entity'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Weight'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Price'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TotallSellPrice'
          Footers = <>
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  inherited ActionList: TActionList
    Left = 384
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited actshowChart: TAction
      OnExecute = actshowChartExecute
    end
    object actfilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actfilterExecute
    end
    object actsendtoExel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actsendtoExelExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actshow: TAction
      Caption = #1605#1608#1580#1608#1583#1610' '#1576#1585' '#1581#1587#1576' '#1711#1585#1608#1607' '#1603#1575#1604#1575
      OnExecute = actshowExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 288
  end
  object qryEntity: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterOpen = qryEntityAfterOpen
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
        Name = 'dateFrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '0000/00/00'
      end
      item
        Name = 'dateTo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '9999/99/99'
      end
      item
        Name = 'StoreIdFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 0
      end
      item
        Name = 'StoreIdTO'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 999
      end
      item
        Name = 'StuffKindActive'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'YearIDFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'YearIDTO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     ReciptItems_Stock.StoreID, ReciptItems_Stock.c_StoreN' +
        'ame, ROUND(SUM(ReciptItems_Stock.InputEntity - ReciptItems_Stock' +
        '.OutputEntity), 3) AS Entity, '
      
        '                      ROUND(SUM(ReciptItems_Stock.InputWeight - ' +
        'ReciptItems_Stock.OutputWeight), 3) AS Weight, '
      
        '                      SUM(ReciptItems_Stock.TotalInputPrice - Re' +
        'ciptItems_Stock.TotalOutputPrice) AS Price,'
      
        '       SUM(ReciptItems_Stock.TotallSellPrice ) AS TotallSellPric' +
        'e'
      'FROM         ReciptItems_Stock'
      ' INNER JOIN'
      
        '                      dbo.StuffCoding ON ReciptItems_Stock.Stuff' +
        'Code = dbo.StuffCoding.c_StuffCode INNER JOIN'
      
        '                      dbo.StuffGroups ON dbo.StuffCoding.GroupID' +
        ' = dbo.StuffGroups.GroupID '
      ''
      
        ' LEFT OUTER JOIN   UsersStore ON ReciptItems_Stock.StoreID = Use' +
        'rsStore.n_StoreID'
      
        'WHERE ( (UsersStore.n_UserID = :UserID )or ( :UserIDAdmin = 127)' +
        ')  AND  '
      ''
      
        '     (ReciptItems_Stock.ReciptDate BETWEEN :dateFrom AND :dateTo' +
        ') AND (ReciptItems_Stock.EffectType IN (2, 4))'
      
        'AND (ReciptItems_Stock.StoreID BETWEEN :StoreIdFrom AND :StoreId' +
        'TO) AND (ReciptItems_Stock.ReciptState < 3)'
      'AND (dbo.StuffCoding.OwnerShipKind  in (:StuffKindActive)) '
      'and '
      'ReciptItems_Stock.yearID between :YearIDFrom And :YearIDTO '
      
        'GROUP BY ReciptItems_Stock.StoreID, ReciptItems_Stock.c_StoreNam' +
        'e'
      
        'HAVING      (SUM(ReciptItems_Stock.InputEntity - ReciptItems_Sto' +
        'ck.OutputEntity) >= 0.0001) OR'
      
        '                      (SUM(ReciptItems_Stock.InputEntity - Recip' +
        'tItems_Stock.OutputEntity) <= - 0.0001) OR'
      
        '                      (SUM(ReciptItems_Stock.InputWeight - Recip' +
        'tItems_Stock.OutputWeight) >= 0.0001) OR'
      
        '                      (SUM(ReciptItems_Stock.InputWeight - Recip' +
        'tItems_Stock.OutputWeight) <= - 0.0001) OR'
      
        '                      (SUM(ReciptItems_Stock.TotalInputPrice - R' +
        'eciptItems_Stock.TotalOutputPrice) >= 0.1) OR'
      
        '                      (SUM(ReciptItems_Stock.TotalInputPrice - R' +
        'eciptItems_Stock.TotalOutputPrice) <= - 0.1)'
      'ORDER BY ReciptItems_Stock.StoreID                      ')
    Left = 400
    Top = 104
    object qryEntityStoreID: TSmallintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1575#1606#1576#1575#1585
      FieldName = 'StoreID'
    end
    object qryEntityc_StoreName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1575#1606#1576#1575#1585
      FieldName = 'c_StoreName'
      Size = 70
    end
    object qryEntityEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'Entity'
      ReadOnly = True
    end
    object qryEntityWeight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606
      FieldName = 'Weight'
      ReadOnly = True
    end
    object qryEntityPrice: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'Price'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryEntityTotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object srcEntity: TDataSource
    DataSet = qryEntity
    Left = 480
    Top = 101
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcEntity
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 328
    Top = 181
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
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'D:\Projects\Fara\BSell\Exe\Report\RptControlEntity.rtm'
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
    Left = 552
    Top = 157
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 25929
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        mmHeight = 6350
        mmLeft = 0
        mmTop = 19579
        mmWidth = 203200
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCompanyName: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCompanyName'
        OnGetText = ppLblCompanyNameGetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1601#1585#1575#1585#1575#1610#1575#1606#1607
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
        mmLeft = 88636
        mmTop = 0
        mmWidth = 25929
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1603#1586#1575#1585#1588' '#1603#1606#1578#1585#1604#1610' '#1605#1608#1580#1608#1583#1610' '#1576#1585' '#1581#1587#1576' '#1575#1606#1576#1575#1585#1607#1575
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
        mmLeft = 70782
        mmTop = 6615
        mmWidth = 61637
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 14023
        mmWidth = 203200
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        OnGetText = ppLabel3GetText
        Border.mmPadding = 0
        Caption = #1605#1581#1583#1608#1583#1607' '#1578#1575#1585#1610#1582
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 188384
        mmTop = 14552
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583' '#1575#1606#1576#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 186796
        mmTop = 19844
        mmWidth = 15610
        BandType = 0
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 186002
        mmTop = 19579
        mmWidth = 2910
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = #1605#1588#1582#1589#1575#1578' '#1575#1606#1576#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5842
        mmLeft = 144257
        mmTop = 19579
        mmWidth = 15494
        BandType = 0
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 104511
        mmTop = 19579
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1602#1583#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 73290
        mmTop = 19579
        mmWidth = 30427
        BandType = 0
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 72496
        mmTop = 19579
        mmWidth = 3175
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1608#1586#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 41275
        mmTop = 19579
        mmWidth = 30692
        BandType = 0
        LayerName = Foreground
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 40217
        mmTop = 19579
        mmWidth = 2910
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 1323
        mmTop = 19579
        mmWidth = 38100
        BandType = 0
        LayerName = Foreground
      end
      object ppLblPrintDate: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblPrintDate'
        OnGetText = ppLblPrintDateGetText
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1670#1575#1662
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 6615
        mmTop = 7673
        mmWidth = 9525
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
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 6615
        mmTop = 2646
        mmWidth = 8731
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6615
        mmLeft = 199232
        mmTop = 0
        mmWidth = 3969
        BandType = 4
        LayerName = Foreground
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 186002
        mmTop = 0
        mmWidth = 4233
        BandType = 4
        LayerName = Foreground
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 104511
        mmTop = 0
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 72496
        mmTop = 0
        mmWidth = 3175
        BandType = 4
        LayerName = Foreground
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 40217
        mmTop = 0
        mmWidth = 2910
        BandType = 4
        LayerName = Foreground
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line15'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 0
        mmTop = 0
        mmWidth = 27517
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'Price'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0.;($#,0.)'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 1323
        mmTop = 0
        mmWidth = 38100
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'Weight'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 41010
        mmTop = 0
        mmWidth = 30692
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'Entity'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 73290
        mmTop = 0
        mmWidth = 30427
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'c_StoreName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 105304
        mmTop = 0
        mmWidth = 79904
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'StoreID'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6519
        mmLeft = 186796
        mmTop = 0
        mmWidth = 15610
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 19050
      mmPrintPosition = 0
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape3'
        ParentWidth = True
        mmHeight = 7408
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1606#1602#1604' '#1576#1607' '#1589#1601#1581#1607' '#1576#1593#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 175948
        mmTop = 529
        mmWidth = 23019
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        Border.mmPadding = 0
        DataField = 'Weight'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6519
        mmLeft = 41275
        mmTop = 529
        mmWidth = 30692
        BandType = 8
        LayerName = Foreground
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line16'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 40217
        mmTop = 0
        mmWidth = 2910
        BandType = 8
        LayerName = Foreground
      end
      object ppLine17: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line17'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 72496
        mmTop = 0
        mmWidth = 3175
        BandType = 8
        LayerName = Foreground
      end
      object ppLine18: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line18'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 104511
        mmTop = 0
        mmWidth = 3704
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc5: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc5'
        Border.mmPadding = 0
        DataField = 'Entity'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6519
        mmLeft = 73290
        mmTop = 529
        mmWidth = 30427
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'Price'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6519
        mmLeft = 1323
        mmTop = 529
        mmWidth = 38100
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 19050
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        mmHeight = 7673
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1603#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 187855
        mmTop = 529
        mmWidth = 11113
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'Price'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.;(#,0.)'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6519
        mmLeft = 1323
        mmTop = 529
        mmWidth = 38100
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc4: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc4'
        Border.mmPadding = 0
        DataField = 'Weight'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6519
        mmLeft = 41275
        mmTop = 529
        mmWidth = 30692
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc6: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc6'
        Border.mmPadding = 0
        DataField = 'Entity'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6519
        mmLeft = 73290
        mmTop = 529
        mmWidth = 30427
        BandType = 7
        LayerName = Foreground
      end
      object ppLine21: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line21'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 104511
        mmTop = 0
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground
      end
      object ppLine22: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line22'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 72496
        mmTop = 0
        mmWidth = 3175
        BandType = 7
        LayerName = Foreground
      end
      object ppLine23: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line23'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 40217
        mmTop = 0
        mmWidth = 2910
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
    object ppParameterList1: TppParameterList
    end
  end
  object PMnuShow: TPopupMenu
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    Left = 587
    Top = 360
    object N4: TMenuItem
      Action = actshow
    end
    object N6: TMenuItem
      Caption = #1605#1608#1580#1608#1583#1610' '#1576#1585' '#1581#1587#1576' '#1603#1583' '#1603#1575#1604#1575
      OnClick = N6Click
    end
    object N7: TMenuItem
      Caption = #1605#1608#1580#1608#1583#1610' '#1576#1585' '#1581#1587#1576' '#1588#1605#1575#1585#1607' '#1585#1575#1607#1606#1605#1575
      OnClick = N7Click
    end
    object N8: TMenuItem
      Caption = #1605#1608#1580#1608#1583#1610' '#1576#1585' '#1581#1587#1576' '#1585#1610#1586#1575#1591#1604#1575#1593#1575#1578
      OnClick = N8Click
    end
  end
end

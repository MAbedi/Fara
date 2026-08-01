inherited rptDarayiSellsMonthF: TrptDarayiSellsMonthF
  Left = 303
  Caption = #1711#1586#1575#1585#1588' '#1601#1585#1608#1588' '#1605#1575#1607#1610#1575#1606#1607' '#1601#1575#1602#1583' '#1588#1605#1575#1585#1607' '#1575#1602#1578#1589#1575#1583#1610'/'#1605#1604#1610
  ClientHeight = 551
  ClientWidth = 1012
  ExplicitWidth = 1028
  ExplicitHeight = 590
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 510
    Width = 1012
    ExplicitTop = 511
    ExplicitWidth = 1016
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 937
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 1
    end
    object BitBtn7: TBitBtn
      AlignWithMargins = True
      Left = 856
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actPrint
      Align = alRight
      Caption = #1670#1575#1662
      TabOrder = 2
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSendToExle
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 166
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSearch_
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
    end
    object BitBtn3: TBitBtn
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
      TabOrder = 5
    end
    object BitBtn15: TBitBtn
      AlignWithMargins = True
      Left = 775
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alRight
      Caption = #1575#1591#1604#1575#1593#1575#1578' '#1605#1575#1604#1610#1575#1578
      TabOrder = 6
      OnClick = BitBtn15Click
    end
  end
  inherited Panel2: TPanel
    Width = 1012
    Height = 57
    ExplicitWidth = 1016
    ExplicitHeight = 57
    DesignSize = (
      1012
      57)
    inherited ImgTemplate: TImage
      Left = 1003
      ExplicitLeft = 1011
    end
    inherited lblCaption: TLabel
      Left = 904
      Height = 37
      ExplicitLeft = 912
    end
    inherited lblBaseDate: TLabel
      Left = 457
      ExplicitLeft = 461
    end
    object DBEdit1: TDBEdit
      Left = 768
      Top = 7
      Width = 53
      Height = 19
      Hint = #1576#1585#1575#1610' '#1606#1605#1575#1610#1588' '
      Anchors = []
      Ctl3D = False
      DataField = 'PersonID1'
      DataSource = srcSells
      ParentCtl3D = False
      TabOrder = 0
      Visible = False
      ExplicitLeft = 774
    end
    inline frmTax: TfrmTax
      Left = 1
      Top = 1
      Width = 561
      Height = 55
      Align = alLeft
      TabOrder = 1
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 561
      ExplicitHeight = 55
      inherited lblTax: TLabel
        Top = 3
        Width = 124
        Height = 13
        Alignment = taRightJustify
        ExplicitTop = 3
        ExplicitWidth = 124
        ExplicitHeight = 13
      end
      inherited lblTown: TLabel
        Height = 13
        Alignment = taRightJustify
        ExplicitHeight = 13
      end
      inherited Panel1: TPanel
        Left = 401
        Height = 55
        ExplicitLeft = 401
        ExplicitHeight = 55
        inherited chkYear96: TCheckBox
          Top = 32
          ExplicitTop = 32
        end
        inherited cmbStuffShow: TComboBox
          Height = 21
          OnChange = frmTaxcmbStuffShowChange
        end
      end
      inherited adcTTMS: TADOConnection
        Left = 166
      end
      inherited OpenDialog1: TOpenDialog
        Left = 249
        Top = 0
      end
      inherited qryConfig: TADOQuery
        Left = 215
        Top = 28
      end
      inherited qryTTMS: TADOQuery
        Left = 396
        Top = 20
      end
    end
  end
  inherited Panel3: TPanel
    Top = 93
    Width = 1012
    Height = 397
    ExplicitTop = 93
    ExplicitWidth = 1016
    ExplicitHeight = 398
    object DBGrid1: TCedarDbgrid
      Left = 2
      Top = 2
      Width = 1012
      Height = 394
      Align = alClient
      Color = clCream
      DataSource = srcSells
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
      OddRowColor = clGradientInactiveCaption
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      RowHeight = 21
      SearchPanel.Enabled = True
      SortLocal = True
      TabOrder = 0
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PersonID1'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CustName'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'FullCustName'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'NationalID'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'EconomicNumber'
          Footers = <>
          Width = 77
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'LenAddress'
          Footers = <>
          Width = 51
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Address'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Tel'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Mobile'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PostalCode'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'GroupID'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'c_StuffName'
          Footers = <>
          Width = 88
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ReciptDate'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TotalOutputPrice'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TaxValueOnTax'
          Footers = <>
          Width = 110
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TaxValueOnTown'
          Footers = <>
          Width = 83
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TaxValue'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TotallSellPrice'
          Footers = <>
          Width = 64
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object Memo1: TMemo [3]
    Left = 0
    Top = 490
    Width = 1012
    Height = 20
    Align = alBottom
    Color = clInactiveCaption
    Ctl3D = False
    Lines.Strings = (
      
        #1583#1585' '#1575#1610#1606' '#1711#1586#1575#1585#1588' '#1601#1585#1605#1607#1575#1610#1610' '#1606#1605#1575#1610#1588' '#1583#1575#1583#1607' '#1605#1610' '#1588#1608#1606#1583' '#1603#1607' '#1606#1608#1593' '#1578#1575#1579#1610#1585' '#1570#1606#1607#1575' '#1576#1585' '#1601#1585#1608 +
        #1588' '#1605#1579#1576#1578' '#1576#1575#1588#1583'.')
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 3
  end
  inline frmTaxTxt1: TfrmTaxTxt [4]
    Left = 0
    Top = 57
    Width = 1012
    Height = 36
    Align = alTop
    TabOrder = 4
    ExplicitTop = 57
    ExplicitWidth = 1016
    inherited Memo1: TMemo
      Width = 1016
      Lines.Strings = (
        
          '1- '#1576#1575' '#1575#1606#1578#1582#1575#1576' '#1601#1575#1610#1604' Access '#1575#1591#1604#1575#1593#1575#1578' '#1575#1610#1606' '#1711#1586#1575#1585#1588' '#1583#1585' '#1570#1606' '#1584#1582#1610#1585#1607' '#1605#1610' '#1588#1608#1583'('#1583#1585 +
          ' '#1589#1608#1585#1578' '#1608#1580#1608#1583' '#1575#1591#1604#1575#1593#1575#1578' '#1602#1576#1604#1610#1548#1575#1591#1604#1575#1593#1575#1578' '#1580#1583#1610#1583' '#1580#1575#1610#1711#1585#1610#1606' '#1575#1591#1604#1575#1593#1575#1578' '#1602#1576#1604#1610' '#1605#1610' '#1711#1585#1583 +
          #1583'.)'
        
          '2- '#1662#1587' '#1575#1586' '#1575#1606#1580#1575#1605' '#1605#1585#1581#1604#1607' '#1610#1603' '#1606#1610#1575#1586' '#1605#1610' '#1576#1575#1588#1583' '#1576#1575' '#1575#1587#1578#1601#1575#1583#1607' '#1575#1586' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1583#1575#1585 +
          #1575#1574#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1584#1582#1610#1585#1607' '#1588#1583#1607' '#1585#1575' '#1576#1585#1585#1587#1610' '#1608' '#1606#1587#1576#1578' '#1576#1607' '#1575#1585#1587#1575#1604' '#1570#1606' '#1575#1602#1583#1575#1605' '#1588#1608#1583'.')
      ExplicitWidth = 1012
    end
  end
  inherited ActionList: TActionList [5]
    Left = 408
    Top = 168
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
    object actSendToExle: TAction
      AutoCheck = True
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendToExleExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 624
    Top = 8
  end
  object srcSells: TDataSource
    DataSet = qrySells
    Left = 72
    Top = 293
  end
  object qrySells: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    Left = 176
    Top = 293
    object qrySellsPersonID1: TIntegerField
      Tag = 3
      DisplayLabel = #1585#1583#1610#1601
      FieldName = 'PersonID1'
    end
    object qrySellsCustName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1582#1585#1610#1583#1575#1585
      FieldName = 'CustName'
      Size = 120
    end
    object qrySellsFullCustName: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1582#1589#1575#1578
      FieldName = 'FullCustName'
      ReadOnly = True
      Size = 120
    end
    object qrySellsNationalID: TStringField
      Tag = 3
      DisplayLabel = #1603#1583#1605#1604#1610
      FieldName = 'NationalID'
      Size = 12
    end
    object qrySellsEconomicNumber: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1575#1602#1578#1589#1575#1583#1610
      FieldName = 'EconomicNumber'
    end
    object qrySellsLenAddress: TIntegerField
      Tag = 3
      DisplayLabel = #1591#1608#1604' '#1570#1583#1585#1587
      FieldName = 'LenAddress'
      ReadOnly = True
    end
    object qrySellsAddress: TStringField
      Tag = 3
      DisplayLabel = #1606#1588#1575#1606#1610
      FieldName = 'Address'
      Size = 100
    end
    object qrySellsTel: TStringField
      Tag = 3
      DisplayLabel = #1578#1604#1601#1606
      FieldName = 'Tel'
      Size = 30
    end
    object qrySellsMobile: TStringField
      Tag = 3
      DisplayLabel = #1605#1608#1576#1575#1610#1604
      FieldName = 'Mobile'
    end
    object qrySellsPostalCode: TStringField
      Tag = 3
      DisplayLabel = #1603#1583#1662#1587#1578#1610
      FieldName = 'PostalCode'
      Size = 12
    end
    object qrySellsGroupID: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1711#1585#1608#1607' '#1603#1575#1604#1575
      FieldName = 'GroupID'
    end
    object qrySellsc_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1588#1585#1581' '#1603#1575#1604#1575' '#1608' '#1582#1583#1605#1575#1578
      FieldName = 'c_StuffName'
      Size = 70
    end
    object qrySellsReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1582#1585#1610#1583
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qrySellsTotalOutputPrice: TBCDField
      Tag = 3
      DisplayLabel = #1580#1605#1593' '#1585#1610#1575#1604#1610
      FieldName = 'TotalOutputPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySellsTaxValueOnTax: TBCDField
      Tag = 3
      DisplayLabel = #1605#1575#1604#1610#1575#1578' '#1576#1585' '#1575#1585#1586#1588' '#1575#1601#1586#1608#1583#1607
      FieldName = 'TaxValueOnTax'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySellsTaxValueOnTown: TBCDField
      Tag = 3
      DisplayLabel = #1593#1608#1575#1585#1590' '#1588#1607#1585#1583#1575#1585#1610
      FieldName = 'TaxValueOnTown'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySellsTaxValue: TBCDField
      Tag = 3
      DisplayLabel = #1575#1585#1586#1588' '#1575#1601#1586#1608#1583#1607
      FieldName = 'TaxValue'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySellsTotallSellPrice: TBCDField
      Tag = 3
      DisplayLabel = #1580#1605#1593' '#1603#1604
      FieldName = 'TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySellsStateCode: TIntegerField
      Tag = 3
      DisplayLabel = #1705#1583' '#1575#1587#1578#1575#1606
      FieldName = 'StateCode'
    end
    object qrySellsCityCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1588#1607#1585' '#1582#1585#1740#1583#1575#1585
      FieldName = 'CityCode'
    end
    object qrySellsSellEffect: TWordField
      Tag = 3
      FieldName = 'SellEffect'
    end
    object qrySellsHCKharidarTypeCode: TWordField
      FieldName = 'HCKharidarTypeCode'
    end
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
    Template.FileName = 'D:\Projects\Fara2010\BSell\Exe\Report\rptDarayiSellsMonth.rtm'
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
    EmailSettings.Enabled = True
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
    Left = 256
    Top = 293
    Version = '22.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      PrintCount = 10
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 55000
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'ReciptDate'
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
        mmHeight = 5165
        mmLeft = 49213
        mmTop = 529
        mmWidth = 22490
        BandType = 4
        LayerName = Foreground
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Border.mmPadding = 0
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 0
        mmTop = 3440
        mmWidth = 283898
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'CustName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4699
        mmLeft = 229130
        mmTop = 0
        mmWidth = 47361
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'Address'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 140759
        mmTop = 0
        mmWidth = 76200
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'TotalOutputPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0;($#,0)'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5556
        mmLeft = 14552
        mmTop = 265
        mmWidth = 26723
        BandType = 4
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'PersonID1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 276755
        mmTop = 529
        mmWidth = 7144
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'c_StuffName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 82550
        mmTop = 265
        mmWidth = 51065
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 25665
      mmPrintPosition = 0
      object ppDBCalcnum2alphabet: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalcnum2alphabet'
        OnGetText = ppDBCalcnum2alphabetGetText
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'TotalOutputPrice'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5800
        mmLeft = 49213
        mmTop = 529
        mmWidth = 29845
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'TotalOutputPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0;($#,0)'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 14552
        mmTop = 529
        mmWidth = 26723
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
      mmHeight = 200555
      mmPrintPosition = 0
      object plblMonth: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'plblMonth'
        OnGetText = plblMonthGetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1575#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7197
        mmLeft = 159544
        mmTop = 14552
        mmWidth = 20638
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = #1575#1586' '#1575#1585#1575#1574#1607' '#1588#1605#1575#1585#1607' '#1575#1602#1578#1589#1575#1583#1610' /'#1588#1605#1575#1585#1607' '#1605#1604#1610' '#1575#1605#1578#1606#1575#1593' '#1608#1585#1586#1610#1583#1607' '#1575#1606#1583'.'#8207
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
        mmLeft = 55298
        mmTop = 14552
        mmWidth = 81492
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = #1575#1587#1575#1605#1610' '#1582#1585#1610#1583#1575#1585#1575#1606#1610' '#1603#1607' '#1583#1585'  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7144
        mmLeft = 182034
        mmTop = 15081
        mmWidth = 39158
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1585#1583#1610#1601' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 277019
        mmTop = 42333
        mmWidth = 6615
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label29'
        Border.mmPadding = 0
        Caption = #1585#1610#1575#1604' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6604
        mmLeft = 92192
        mmTop = 172244
        mmWidth = 7027
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label26'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1603#1604' '#1576#1581#1585#1608#1601' :'#8207
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
        mmLeft = 245798
        mmTop = 172244
        mmWidth = 21431
        BandType = 10
        LayerName = PageLayer1
      end
      object pdbtxtnum2alphabet: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'pdbtxtnum2alphabet'
        OnGetText = pdbtxtnum2alphabetGetText
        Border.mmPadding = 0
        DataField = 'TotalOutputPrice'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6477
        mmLeft = 100806
        mmTop = 171980
        mmWidth = 144463
        BandType = 10
        LayerName = PageLayer1
      end
      object plblPostalCode: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LblPostalCode'
        OnGetText = plblPostalCodeGetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'plblPostalCode'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 15875
        mmTop = 23548
        mmWidth = 39158
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 138642
        mmLeft = 47625
        mmTop = 40481
        mmWidth = 2117
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label19'
        Border.mmPadding = 0
        Caption = #1603#1583' '#1662#1587#1578#1610' 10'#1585#1602#1605#1610' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5969
        mmLeft = 57150
        mmTop = 23019
        mmWidth = 22945
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label14'
        Border.mmPadding = 0
        Caption = #1711#1586#1575#1585#1588' '#1601#1585#1608#1588' '#1605#1575#1607#1610#1575#1606#1607' '#1601#1575#1602#1583' '#1588#1605#1575#1585#1607' '#1575#1602#1578#1589#1575#1583#1610'/'#1605#1604#1610
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
        mmLeft = 66279
        mmTop = 34660
        mmWidth = 59267
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1582#1585#1610#1583' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 52652
        mmTop = 42333
        mmWidth = 21167
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
        mmHeight = 6350
        mmLeft = 1323
        mmTop = 22490
        mmWidth = 7673
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLblAddress: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LblAddress'
        OnGetText = ppLblAddressGetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'LblAddress'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 12435
        mmLeft = 80963
        mmTop = 22490
        mmWidth = 85196
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLblTel: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LblTel'
        OnGetText = ppLblTelGetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'LblTel'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5842
        mmLeft = 127265
        mmTop = 34660
        mmWidth = 39158
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLblRegisterNumber: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LblRegisterNumber'
        OnGetText = ppLblRegisterNumberGetText
        Border.mmPadding = 0
        Caption = 'LblRegisterNumber'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 233628
        mmTop = 34660
        mmWidth = 28575
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLblEconomicNumber: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LblEconomicNumber'
        OnGetText = ppLblEconomicNumberGetText
        Border.mmPadding = 0
        Caption = 'LblEconomicNumber'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6615
        mmLeft = 225161
        mmTop = 27517
        mmWidth = 36999
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLblCompanyName: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label21'
        OnGetText = ppLblCompanyNameGetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CompanyName'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5842
        mmLeft = 180711
        mmTop = 21960
        mmWidth = 81492
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine35: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line21'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 178859
        mmWidth = 49742
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine34: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line11'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9260
        mmLeft = 0
        mmTop = 169863
        mmWidth = 3175
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 131498
        mmLeft = 71967
        mmTop = 40481
        mmWidth = 2646
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 129911
        mmLeft = 130969
        mmTop = 40481
        mmWidth = 2646
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 129646
        mmLeft = 214313
        mmTop = 40481
        mmWidth = 2646
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 129646
        mmLeft = 273844
        mmTop = 40746
        mmWidth = 2646
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label15'
        Border.mmPadding = 0
        Caption = #1605#1607#1585' '#1608' '#1575#1605#1590#1575' '#1605#1580#1575#1586' '#1588#1582#1589' '#1581#1602#1608#1602#1610
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
        mmLeft = 137584
        mmTop = 185473
        mmWidth = 39158
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label22'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1588#1575#1606#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 159544
        mmTop = 42333
        mmWidth = 43656
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label20'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1585#1581' '#1606#1608#1593' '#1603#1575#1604#1575' /'#1582#1583#1605#1575#1578' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 80963
        mmTop = 42069
        mmWidth = 43392
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label17'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594' '#1601#1585#1608#1588' '#1576#1607' '#1585#1610#1575#1604' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 15875
        mmTop = 42598
        mmWidth = 27517
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label16'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1608#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610' /'#1606#1575#1605' '#1588#1585#1603#1578' '#1582#1585#1610#1583#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 236803
        mmTop = 42333
        mmWidth = 38100
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Border.mmPadding = 0
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 2646
        mmLeft = 0
        mmTop = 47096
        mmWidth = 284300
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1604#1601#1606':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5969
        mmLeft = 166688
        mmTop = 34660
        mmWidth = 11642
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1579#1576#1578':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6085
        mmLeft = 262996
        mmTop = 34396
        mmWidth = 14552
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1588#1575#1606#1610':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6085
        mmLeft = 166688
        mmTop = 22490
        mmWidth = 10319
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1575#1602#1578#1589#1575#1583#1610':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5969
        mmLeft = 262996
        mmTop = 28046
        mmWidth = 20616
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1601#1585#1608#1588#1606#1583#1607':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5821
        mmLeft = 262996
        mmTop = 22225
        mmWidth = 16637
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
        mmTop = 40746
        mmWidth = 284300
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLblYear: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LblYear'
        OnGetText = ppLblYearGetText
        Border.mmPadding = 0
        Caption = #1587#1575#1604'     13'
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
        mmLeft = 139594
        mmTop = 14817
        mmWidth = 15028
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = #1711#1586#1575#1585#1588' '#1601#1585#1608#1588' '#1605#1575#1607#1610#1575#1606#1607' '#1601#1575#1602#1583' '#1588#1605#1575#1585#1607' '#1575#1602#1578#1589#1575#1583#1610'/'#1605#1604#1610
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
        mmLeft = 108776
        mmTop = 0
        mmWidth = 71374
        BandType = 10
        LayerName = PageLayer1
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape1'
        ParentWidth = True
        mmHeight = 150019
        mmLeft = 0
        mmTop = 21960
        mmWidth = 284300
        BandType = 10
        LayerName = PageLayer1
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
    DataSource = srcSells
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 336
    Top = 293
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
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'NationalID'
      FieldName = 'NationalID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'EconomicNumber'
      FieldName = 'EconomicNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'City'
      FieldName = 'City'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'Address'
      FieldName = 'Address'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'Tel'
      FieldName = 'Tel'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'PostalCode'
      FieldName = 'PostalCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'GroupID'
      FieldName = 'GroupID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'c_StuffName'
      FieldName = 'c_StuffName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'ReciptDate'
      FieldName = 'ReciptDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'TotalOutputPrice'
      FieldName = 'TotalOutputPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'TaxValue'
      FieldName = 'TaxValue'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'TotallSellPrice'
      FieldName = 'TotallSellPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
  end
  object qryEmtenae_Detail: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM  Emtenae_Detail')
    Left = 152
    Top = 144
  end
end

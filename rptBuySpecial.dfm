inherited rptBuySpecialF: TrptBuySpecialF
  Left = 426
  Top = 188
  Caption = #1711#1600#1600#1586#1575#1585#1588' '#1582#1585#1610#1600#1600#1583' '#1607#1575#1610' '#1582#1575#1589
  ClientHeight = 517
  ClientWidth = 807
  ExplicitWidth = 819
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 476
    Width = 807
    ExplicitWidth = 807
    DesignSize = (
      807
      41)
    object BitBtn7: TBitBtn
      Left = 717
      Top = 8
      Width = 75
      Height = 25
      Action = actFilter
      Anchors = [akRight, akBottom]
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 1
      ExplicitLeft = 721
    end
    object BitBtn2: TBitBtn
      Left = 561
      Top = 8
      Width = 75
      Height = 25
      Action = actClearDoc
      Anchors = [akRight, akBottom]
      Caption = #1662#1575#1603#1587#1575#1586#1610' '#1587#1606#1583
      TabOrder = 2
      ExplicitLeft = 565
    end
    object BitBtn6: TBitBtn
      Left = 237
      Top = 8
      Width = 75
      Height = 25
      Action = actExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' '#1575#1603#1587#1604
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      Left = 159
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
    end
    object BitBtn3: TBitBtn
      Left = 81
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 5
    end
    object BtnReciptState: TBitBtn
      Left = 639
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1578#1594#1610#1610#1585#1608#1590#1593#1610#1578#8207#1576#1607
      TabOrder = 6
      OnClick = BtnReciptStateClick
      ExplicitLeft = 643
    end
    object BitBtn4: TBitBtn
      Left = 483
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Anchors = [akRight, akBottom]
      Caption = #1670#1575#1662' (F7)'
      TabOrder = 7
      ExplicitLeft = 487
    end
    object btnPrintvi: TBitBtn
      Left = 405
      Top = 8
      Width = 75
      Height = 25
      Action = actPrintVijeh
      Anchors = [akRight, akBottom]
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
      TabOrder = 8
      ExplicitLeft = 409
    end
    object BitBtn5: TBitBtn
      Left = 315
      Top = 8
      Width = 75
      Height = 25
      Caption = #1587#1575#1610#1585'...'
      TabOrder = 9
      OnClick = BitBtn5Click
    end
  end
  inherited Panel2: TPanel
    Width = 807
    ExplicitWidth = 807
    inherited ImgTemplate: TImage
      Left = 802
      ExplicitLeft = 802
    end
    inherited lblCaption: TLabel
      Left = 699
      Height = 16
      ExplicitLeft = 699
    end
    inherited lblBaseDate: TLabel
      Left = 361
      ExplicitLeft = 361
    end
  end
  inherited Panel3: TPanel
    Width = 807
    Height = 423
    ExplicitWidth = 807
    object Label1: TLabel
      Left = 184
      Top = 360
      Width = 71
      Height = 13
      Caption = #1578#1608#1590#1610#1581#1575#1578' '#1570#1585#1578#1740#1705#1604
      FocusControl = edtItemNote
    end
    object StatusBar1: TStatusBar
      Left = 2
      Top = 403
      Width = 803
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
          Text = #1580#1605#1593' '#1603#1604
          Width = 160
        end>
      ParentBiDiMode = False
    end
    object DBGrid1: TCedarDbgrid
      Left = 2
      Top = 2
      Width = 803
      Height = 380
      Align = alClient
      Color = clCream
      DataSource = SrcBuy
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
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ReciptNumber'
          Footers = <>
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
          FieldName = 'PersonID1'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'person1Name'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'RequestedEntity'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'WaterCo'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'InputEntity'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ContactRate'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'UnitSellPrice'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TotalInputPrice'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'FirstUser'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'LastUser'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PersonID2'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'person2Name'
          Footers = <>
          Width = 64
        end
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
          FieldName = 'NameAmount1_3_2'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'shift'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'shiftName'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ReciptState'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DefaultDate'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DefaultDuration'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'UnitSellPrice2'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'EntityToAmount'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PrizeFatAmount'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'EncouragementPenalty'
          Footers = <>
          Width = 46
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ReciptNote'
          Footers = <>
          Width = 55
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ItemNote'
          Footers = <>
          Width = 111
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object edtItemNote: TDBEdit
      Left = 2
      Top = 382
      Width = 803
      Height = 21
      Align = alBottom
      DataField = 'ItemNote'
      DataSource = SrcBuy
      ReadOnly = True
      TabOrder = 2
      ExplicitLeft = 224
      ExplicitTop = 376
      ExplicitWidth = 19504
    end
  end
  inherited ActionList: TActionList
    inherited DataSetInsert1: TDataSetInsert [0]
    end
    inherited DataSetEdit1: TDataSetEdit [1]
    end
    inherited DataSetPost1: TDataSetPost [2]
    end
    inherited DataSetCancel1: TDataSetCancel [3]
    end
    inherited DataSetDelete1_: TDataSetDelete [4]
    end
    inherited actshowChart: TAction [5]
    end
    object actFilter: TAction [6]
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actPrint: TAction [7]
      Caption = #1670#1575#1662' (F7)'
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actExcel: TAction [8]
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' '#1575#1603#1587#1604
      OnExecute = actExcelExecute
    end
    inherited actSearch_: TAction [9]
      OnExecute = actSearch_Execute
    end
    object actSort: TAction [10]
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    inherited actExit: TAction [11]
    end
    object actClearDoc: TAction
      Caption = #1662#1575#1603#1587#1575#1586#1610' '#1587#1606#1583
      OnExecute = actClearDocExecute
    end
    object actPrintVijeh: TAction
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
      OnExecute = actPrintVijehExecute
    end
    object actUpDate: TAction
      Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1610
      OnExecute = actUpDateExecute
    end
    object actshow: TAction
      Caption = #1606#1605#1575#1610#1588' '#1601#1585#1605
      OnExecute = actshowExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 150
    Top = 8
  end
  object qryBuy: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryBuyAfterOpen
    Parameters = <>
    Left = 177
    Top = 168
    object qryBuyReciptNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607
      FieldName = 'ReciptNumber'
    end
    object qryBuyReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'ReciptDate'
      EditMask = '!9999/99/00;1;_'
      FixedChar = True
      Size = 10
    end
    object qryBuyPersonID1: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1601#1585#1608#1588#1606#1583#1607
      FieldName = 'PersonID1'
    end
    object qryBuypersonName1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1601#1585#1608#1588#1606#1583#1607
      FieldName = 'person1Name'
      Size = 60
    end
    object qryBuyRequestedEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'RequestedEntity'
    end
    object qryBuyWaterCo: TFloatField
      Tag = 3
      DisplayLabel = #1583#1585#1589#1583' '#1570#1576
      FieldName = 'WaterCo'
    end
    object qryBuyInputEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1606#1607#1575#1610#1610
      FieldName = 'InputEntity'
    end
    object qryBuyContactRate: TFloatField
      Tag = 3
      DisplayLabel = #1601#1610' '#1602#1585#1575#1585#1583#1575#1583
      FieldName = 'ContactRate'
    end
    object qryBuyTotalInputPrice: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1603#1604
      FieldName = 'TotalInputPrice'
      currency = True
      Precision = 19
    end
    object qryBuyUnitSellPrice: TFMTBCDField
      Tag = 3
      DisplayLabel = #1601#1610' '#1606#1607#1575#1610#1610
      FieldName = 'UnitSellPrice'
      Precision = 19
    end
    object qryBuyFirstUser: TStringField
      Tag = 3
      DisplayLabel = #1579#1576#1578' '#1603#1606#1606#1583#1607
      FieldName = 'FirstUser'
      Size = 50
    end
    object qryBuyLastUser: TStringField
      Tag = 3
      DisplayLabel = #1608#1610#1585#1575#1610#1588' '#1603#1606#1606#1583#1607
      FieldName = 'LastUser'
      Size = 50
    end
    object qryBuyPersonID2: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1578#1581#1608#1610#1604' '#1711#1610#1585#1606#1583#1607
      FieldName = 'PersonID2'
    end
    object qryBuypersonName2: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1578#1581#1608#1610#1604' '#1711#1610#1585#1606#1583#1607
      FieldName = 'person2Name'
      Size = 60
    end
    object qryBuyStoreID: TSmallintField
      Tag = 3
      DisplayLabel = #1705#1583#1575#1606#1576#1575#1585
      FieldName = 'StoreID'
    end
    object qryBuyNameAmount1_3_2: TFloatField
      Tag = 3
      DisplayLabel = #1670#1585#1576#1610' '#1580#1575#1610#1586#1607
      FieldName = 'NameAmount1_3_2'
      ReadOnly = True
      DisplayFormat = '0.0;(0.0)'
    end
    object qryBuyshift: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1610#1601#1578' '#1578#1581#1608#1610#1604
      FieldName = 'shift'
    end
    object qryBuyshiftName: TStringField
      Tag = 3
      DisplayLabel = #1588#1610#1601#1578' '#1578#1581#1608#1610#1604
      FieldName = 'shiftName'
      Size = 50
    end
    object qryBuyReciptID: TIntegerField
      Tag = 3
      FieldName = 'ReciptID'
    end
    object qryBuyReciptState: TWordField
      Tag = 3
      DisplayLabel = #1608#1590#1593#1610#1578
      FieldName = 'ReciptState'
      OnGetText = qryBuyReciptStateGetText
    end
    object qryBuyServerID: TIntegerField
      Tag = 3
      FieldName = 'ServerID'
    end
    object qryBuyYearID: TIntegerField
      Tag = 3
      FieldName = 'YearID'
    end
    object qryBuyDefaultDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1580#1575#1606#1576#1610
      FieldName = 'DefaultDate'
      FixedChar = True
      Size = 10
    end
    object qryBuyDefaultDuration: TSmallintField
      Tag = 3
      DisplayLabel = #1605#1583#1578' '#1578#1575#1585#1610#1582' '#1580#1575#1606#1576#1610
      FieldName = 'DefaultDuration'
    end
    object qryBuyUnitSellPrice2: TBCDField
      Tag = 3
      DisplayLabel = #1601#1740' '#1608#1575#1581#1583' '#1670#1585#1576#1740
      FieldName = 'UnitSellPrice2'
      Precision = 19
    end
    object qryBuyEntityToAmount: TFloatField
      Tag = 3
      DisplayLabel = #1581#1575#1589#1604#1590#1585#1576' '#1583#1585#1589#1583' '#1670#1585#1576#1740' '#1608' '#1578#1593#1583#1575#1583' '#1606#1607#1575#1740#1740
      FieldName = 'EntityToAmount'
      ReadOnly = True
    end
    object qryBuyPrizeFatAmount: TFloatField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1670#1585#1576#1740' '#1580#1575#1740#1586#1607
      FieldName = 'PrizeFatAmount'
      ReadOnly = True
      currency = True
    end
    object qryBuyEncouragementPenalty: TFloatField
      Tag = 3
      DisplayLabel = #1578#1588#1608#1740#1602'/'#1580#1585#1740#1605#1607' '#1670#1585#1576#1740
      FieldName = 'EncouragementPenalty'
      ReadOnly = True
      currency = True
    end
    object qryBuyReciptNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1740#1581#1575#1578
      FieldName = 'ReciptNote'
      Size = 1000
    end
    object qryBuyItemNote: TStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' '#1570#1585#1578#1740#1705#1604
      FieldName = 'ItemNote'
      Size = 1500
    end
  end
  object SrcBuy: TDataSource
    DataSet = qryBuy
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
    Template.FileName = 'D:\Projects\Fara\BSell\Exe\Report\rptBuySpecial.rtm'
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
    Left = 664
    Top = 122
    Version = '22.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 27252
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        mmHeight = 10319
        mmLeft = 0
        mmTop = 16933
        mmWidth = 266701
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label202'
        Border.mmPadding = 0
        Caption = #1670#1585#1576#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4763
        mmLeft = 158221
        mmTop = 17463
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line25'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 54769
        mmTop = 17198
        mmWidth = 4498
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label102'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1594#1610#1610#1585#1601#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4741
        mmLeft = 55298
        mmTop = 19050
        mmWidth = 8467
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCompanyName: TppLabel
        DesignLayer = ppDesignLayer1
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
        mmLeft = 106627
        mmTop = 1058
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCaption: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCaption'
        Border.mmPadding = 0
        Caption = #1711#1600#1600#1586#1575#1585#1588' '#1582#1585#1610#1600#1600#1583' '#1607#1575#1610' '#1582#1600#1575#1589
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
        mmLeft = 110829
        mmTop = 7673
        mmWidth = 42926
        BandType = 0
        LayerName = Foreground
      end
      object ppLblPrintDate: TppLabel
        DesignLayer = ppDesignLayer1
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
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' '#1588#1605#1575#1585#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 3969
        mmLeft = 256117
        mmTop = 17463
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 255588
        mmTop = 17198
        mmWidth = 4233
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 244211
        mmTop = 18785
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 243682
        mmTop = 17198
        mmWidth = 4763
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line16'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 187061
        mmTop = 17198
        mmWidth = 4498
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1601#1610' '#1606#1607#1575#1610#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 35454
        mmTop = 18785
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line52'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 34925
        mmTop = 17198
        mmWidth = 11377
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1602#1583#1575#1585
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 20902
        mmTop = 18785
        mmWidth = 13758
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594' '#1603#1604
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 529
        mmTop = 18785
        mmWidth = 19050
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line60'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 20108
        mmTop = 17198
        mmWidth = 4763
        BandType = 0
        LayerName = Foreground
      end
      object plblAllName: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1594#1610#1610#1585#1601#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 5821
        mmLeft = 147373
        mmTop = 18785
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 146844
        mmTop = 17198
        mmWidth = 4498
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 157692
        mmTop = 17198
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 121444
        mmTop = 17198
        mmWidth = 4498
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1594#1610#1610#1585#1601#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 5821
        mmLeft = 121709
        mmTop = 18785
        mmWidth = 10319
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 132292
        mmTop = 17198
        mmWidth = 4498
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line18'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 87313
        mmTop = 17198
        mmWidth = 4498
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label101'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1594#1610#1610#1585#1601#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 5821
        mmLeft = 87577
        mmTop = 18785
        mmWidth = 10319
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line19'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 98161
        mmTop = 17198
        mmWidth = 4498
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line28'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 64029
        mmTop = 17198
        mmWidth = 4498
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1601#1585#1608#1588#1606#1583#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 207698
        mmTop = 18785
        mmWidth = 35719
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 207169
        mmTop = 17198
        mmWidth = 4498
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label19'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' '#1587#1585#1610#1575#1604
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4763
        mmLeft = 256117
        mmTop = 21960
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        OnGetText = ppSysVarPageNoGetText
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
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line22'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 179917
        mmTop = 17198
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = #1580#1575#1610#1586#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        WordWrap = True
        mmHeight = 4763
        mmLeft = 158221
        mmTop = 21960
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label22'
        Border.mmPadding = 0
        Caption = #1583#1585#1589#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 173832
        mmTop = 17463
        mmWidth = 5556
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line23'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 173302
        mmTop = 17198
        mmWidth = 4498
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label201'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1670#1585#1576#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4763
        mmLeft = 173832
        mmTop = 21960
        mmWidth = 5556
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label24'
        Border.mmPadding = 0
        Caption = #1601#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 189177
        mmTop = 17463
        mmWidth = 4498
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label25'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1602#1585#1575#1585#1583#1575#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4763
        mmLeft = 187855
        mmTop = 21960
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label203'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1600#1600#1610#1601#1600#1578
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4763
        mmLeft = 196586
        mmTop = 17727
        mmWidth = 10319
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 196057
        mmTop = 17198
        mmWidth = 3175
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label26'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1600#1581#1608#1610#1604
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4763
        mmLeft = 196586
        mmTop = 22225
        mmWidth = 10319
        BandType = 0
        LayerName = Foreground
      end
      object plblALLTextName: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        OnGetText = plblALLTextNameGetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = '1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 8996
        mmLeft = 180446
        mmTop = 17727
        mmWidth = 6350
        BandType = 0
        LayerName = Foreground
      end
      object plbl2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label20'
        OnGetText = plblALLTextNameGetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = '2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9260
        mmLeft = 132821
        mmTop = 17463
        mmWidth = 13758
        BandType = 0
        LayerName = Foreground
      end
      object plbl3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label204'
        OnGetText = plblALLTextNameGetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = '3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9260
        mmLeft = 98690
        mmTop = 17463
        mmWidth = 22490
        BandType = 0
        LayerName = Foreground
      end
      object plbl4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        OnGetText = plblALLTextNameGetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = '4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9260
        mmLeft = 64558
        mmTop = 17463
        mmWidth = 22490
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = 'Label13'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6350
        mmLeft = 17992
        mmTop = 4498
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = 'Label11'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6435
        mmLeft = 28575
        mmTop = 3175
        mmWidth = 10668
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 263790
        mmTop = 0
        mmWidth = 2910
        BandType = 4
        LayerName = Foreground
      end
      object ppLin4Position: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Lin4Position'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 0
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'ReciptNumber'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 256117
        mmTop = 0
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 255588
        mmTop = 0
        mmWidth = 4233
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'ReciptDate'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5927
        mmLeft = 244211
        mmTop = 0
        mmWidth = 11113
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 243682
        mmTop = 0
        mmWidth = 4763
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'ContactRate'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 187590
        mmTop = 0
        mmWidth = 8202
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line21'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 187061
        mmTop = 0
        mmWidth = 5556
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        Border.mmPadding = 0
        DataField = 'UnitSellPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 35454
        mmTop = 0
        mmWidth = 19050
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line53'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 34925
        mmTop = 0
        mmWidth = 11377
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText15'
        Border.mmPadding = 0
        DataField = 'InputEntity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 20638
        mmTop = 0
        mmWidth = 14023
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line57'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 20108
        mmTop = 0
        mmWidth = 3175
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText16'
        Border.mmPadding = 0
        DataField = 'TotalInputPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 529
        mmTop = 0
        mmWidth = 19315
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'ReplaceRate1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 147373
        mmTop = 0
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 146844
        mmTop = 0
        mmWidth = 2381
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 157692
        mmTop = 0
        mmWidth = 2381
        BandType = 4
        LayerName = Foreground
      end
      object NameAmount3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        OnGetText = NameAmount4GetText
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 121973
        mmTop = 0
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line15'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 121444
        mmTop = 0
        mmWidth = 5556
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line101'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 132292
        mmTop = 0
        mmWidth = 5556
        BandType = 4
        LayerName = Foreground
      end
      object NameAmount4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        OnGetText = NameAmount4GetText
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 87842
        mmTop = 0
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line20'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 87313
        mmTop = 0
        mmWidth = 5556
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line24'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 98161
        mmTop = 0
        mmWidth = 5556
        BandType = 4
        LayerName = Foreground
      end
      object ReplaceRate3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 98690
        mmTop = 0
        mmWidth = 22490
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = 'NameAmount4'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 55298
        mmTop = 0
        mmWidth = 8467
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line29'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 54769
        mmTop = 0
        mmWidth = 5556
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line32'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 64029
        mmTop = 0
        mmWidth = 5556
        BandType = 4
        LayerName = Foreground
      end
      object ReplaceRate4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        OnGetText = NameAmount4GetText
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 64558
        mmTop = 0
        mmWidth = 22490
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line17'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 207169
        mmTop = 0
        mmWidth = 5556
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'person1Name'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 207698
        mmTop = 0
        mmWidth = 35719
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line102'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 179917
        mmTop = 0
        mmWidth = 5556
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'NameAmount1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 180446
        mmTop = 0
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label21'
        Border.mmPadding = 0
        Caption = '3.2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 173832
        mmTop = 0
        mmWidth = 5821
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line26'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 173302
        mmTop = 0
        mmWidth = 2381
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 196057
        mmTop = 0
        mmWidth = 5556
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        OnGetText = ppDBText1GetText
        Border.mmPadding = 0
        DataField = 'shiftName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5419
        mmLeft = 196586
        mmTop = 0
        mmWidth = 10319
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText17'
        Border.mmPadding = 0
        DataField = 'NameAmount1_3_2'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '0.00;(0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 158486
        mmTop = 0
        mmWidth = 14288
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'ReplaceRate2'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 132821
        mmTop = 0
        mmWidth = 13758
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 12700
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        mmHeight = 7673
        mmLeft = 0
        mmTop = 0
        mmWidth = 266701
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1606#1602#1604' '#1576#1607'..'#8207
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
        mmLeft = 55298
        mmTop = 529
        mmWidth = 19579
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line51'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 54769
        mmTop = 0
        mmWidth = 3704
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc26'
        Border.mmPadding = 0
        DataField = 'UnitSellPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 35454
        mmTop = 529
        mmWidth = 19050
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line55'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 34925
        mmTop = 0
        mmWidth = 11377
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc28'
        Border.mmPadding = 0
        DataField = 'InputEntity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 20638
        mmTop = 529
        mmWidth = 14023
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line59'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 20108
        mmTop = 0
        mmWidth = 3175
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc30'
        Border.mmPadding = 0
        DataField = 'TotalInputPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 529
        mmTop = 265
        mmWidth = 19315
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'UnitSellPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DBCalcType = dcAverage
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 77788
        mmTop = 794
        mmWidth = 18521
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label23'
        Border.mmPadding = 0
        Caption = ': '#1605#1610#1575#1606#1711#1610#1606' '#1601#1610' '#1606#1607#1575#1610#1610' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6085
        mmLeft = 96573
        mmTop = 794
        mmWidth = 23813
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 19050
      mmPrintPosition = 0
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape3'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 0
        mmWidth = 266701
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1580#1605#1593
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6085
        mmLeft = 57415
        mmTop = 529
        mmWidth = 10848
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line50'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 54769
        mmTop = 0
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc25'
        Border.mmPadding = 0
        DataField = 'UnitSellPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 35454
        mmTop = 529
        mmWidth = 19050
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line54'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 34925
        mmTop = 0
        mmWidth = 11377
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc27'
        Border.mmPadding = 0
        DataField = 'InputEntity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 20638
        mmTop = 529
        mmWidth = 14023
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line58'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 20108
        mmTop = 0
        mmWidth = 3175
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc29'
        Border.mmPadding = 0
        DataField = 'TotalInputPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 529
        mmTop = 529
        mmWidth = 19315
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = #1578#1606#1592#1610#1605' '#1603#1606#1606#1583#1607' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6085
        mmLeft = 249503
        mmTop = 11113
        mmWidth = 15875
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        Border.mmPadding = 0
        Caption = #1578#1575#1574#1610#1583' '#1603#1606#1606#1583#1607' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6085
        mmLeft = 70908
        mmTop = 10848
        mmWidth = 14817
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        Border.mmPadding = 0
        Caption = ': '#1605#1610#1575#1606#1711#1610#1606' '#1601#1610' '#1606#1607#1575#1610#1610' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6085
        mmLeft = 88900
        mmTop = 529
        mmWidth = 23813
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'UnitSellPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DBCalcType = dcAverage
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 70115
        mmTop = 529
        mmWidth = 18521
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
  object ppDBPipeline1: TppDBPipeline
    DataSource = SrcBuy
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 696
    Top = 245
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'ReciptNumber'
      FieldName = 'ReciptNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'ReciptDate'
      FieldName = 'ReciptDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'PersonID1'
      FieldName = 'PersonID1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'person1Name'
      FieldName = 'person1Name'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'RequestedEntity'
      FieldName = 'RequestedEntity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'WaterCo'
      FieldName = 'WaterCo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'InputEntity'
      FieldName = 'InputEntity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'ContactRate'
      FieldName = 'ContactRate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'UnitSellPrice'
      FieldName = 'UnitSellPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'TotalInputPrice'
      FieldName = 'TotalInputPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'FirstUser'
      FieldName = 'FirstUser'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'LastUser'
      FieldName = 'LastUser'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'PersonID2'
      FieldName = 'PersonID2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'person2Name'
      FieldName = 'person2Name'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'StoreID'
      FieldName = 'StoreID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'NameAmount1_3_2'
      FieldName = 'NameAmount1_3_2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'shift'
      FieldName = 'shift'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'shiftName'
      FieldName = 'shiftName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'ReciptID'
      FieldName = 'ReciptID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'ReciptState'
      FieldName = 'ReciptState'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'ServerID'
      FieldName = 'ServerID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = 'YearID'
      FieldName = 'YearID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = 'DefaultDate'
      FieldName = 'DefaultDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField24: TppField
      FieldAlias = 'DefaultDuration'
      FieldName = 'DefaultDuration'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField25: TppField
      FieldAlias = 'UnitSellPrice2'
      FieldName = 'UnitSellPrice2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField26: TppField
      FieldAlias = 'EntityToAmount'
      FieldName = 'EntityToAmount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField27: TppField
      FieldAlias = 'PrizeFatAmount'
      FieldName = 'PrizeFatAmount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField28: TppField
      FieldAlias = 'EncouragementPenalty'
      FieldName = 'EncouragementPenalty'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
  end
  object PopMnuReciptState: TPopupMenu
    AutoHotkeys = maManual
    Left = 400
    Top = 320
    object Mnu_A_L_L_C_l_i_c_k: TMenuItem
      Visible = False
      OnClick = Mnu_A_L_L_C_l_i_c_kClick
    end
    object MenuItem6: TMenuItem
      Caption = #1602#1591#1593#1610
      Hint = 'UPDATE Recipts SET ReciptState = 1 WHERE (ReciptState = 0) AND'
      OnClick = Mnu_A_L_L_C_l_i_c_kClick
    end
    object MenuItem7: TMenuItem
      Caption = #1583' '#1575' '#1574#1600#1605
      Hint = 
        'UPDATE Recipts SET ReciptState = 2 WHERE (ReciptState in(0,1)) A' +
        'ND '
      OnClick = Mnu_A_L_L_C_l_i_c_kClick
    end
    object N1: TMenuItem
      Caption = #1576#1600#1575#1591#1600#1604
      Hint = 'UPDATE Recipts SET ReciptState = 3 WHERE (ReciptState<=1) AND '
      OnClick = Mnu_A_L_L_C_l_i_c_kClick
    end
    object MnuState0: TMenuItem
      Caption = #1605#1600#1608#1602#1578
      Hint = 'UPDATE Recipts SET ReciptState =0  WHERE (ReciptState>=0) AND '
      OnClick = Mnu_A_L_L_C_l_i_c_kClick
    end
    object N2: TMenuItem
      Caption = #1575#1606#1578#1582#1575#1576' '#1607#1605#1607' '#1587#1591#1585#1607#1575
      OnClick = N2Click
    end
  end
  object pmOther: TPopupMenu
    AutoHotkeys = maManual
    Left = 137
    Top = 371
    object N3: TMenuItem
      Action = actshow
    end
    object MenuItem1: TMenuItem
      Action = actUpDate
    end
  end
  object pm1: TPopupMenu
    Left = 592
    Top = 336
    object N11: TMenuItem
      Caption = #1670#1575#1662'1'
      Hint = '_1'
      OnClick = N11Click
    end
    object N21: TMenuItem
      Caption = #1670#1575#1662'2'
      Hint = '_2'
      OnClick = N11Click
    end
    object N22: TMenuItem
      Caption = #1670#1575#1662'3'
      Hint = '_3'
      OnClick = N11Click
    end
  end
  object qryPurchaseEffect: TADOQuery
    Connection = DmF.adcBSell
    LockType = ltReadOnly
    Parameters = <>
    Left = 328
    Top = 189
  end
end

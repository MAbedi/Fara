inherited Interdicts4HistoryF: TInterdicts4HistoryF
  Left = 406
  Top = 98
  Caption = #1587#1608#1575#1576#1602' '#1575#1581#1603#1575#1605' '#1603#1575#1585#1711#1586#1610#1606#1610
  ClientHeight = 571
  ClientWidth = 894
  OnResize = FormResize
  ExplicitTop = -64
  ExplicitWidth = 902
  ExplicitHeight = 602
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 530
    Width = 894
    ExplicitTop = 530
    ExplicitWidth = 894
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 815
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actShowForm
      Align = alRight
      Caption = #1606#1605#1575#1610#1588' '#1581#1603#1605
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 653
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actPrint
      Align = alRight
      Caption = #1670#1575#1662' (F7)'
      TabOrder = 2
    end
    object BitBtn5: TBitBtn
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
      TabOrder = 3
    end
    object BitBtn6: TBitBtn
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
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 734
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alRight
      Caption = #1605#1593#1585#1601#1610' '#1662#1585#1587#1606#1604
      TabOrder = 5
      OnClick = BitBtn1Click
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 572
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actState
      Align = alRight
      Caption = ' '#1662#1610#1588' '#1606#1608#1610#1587
      TabOrder = 6
    end
    object BitBtn8: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alLeft
      Caption = #1587#1575#1610#1585#1575#1605#1603#1575#1606#1575#1578
      TabOrder = 7
      OnClick = BitBtn8Click
    end
  end
  inherited Panel2: TPanel
    Width = 894
    ExplicitWidth = 894
    DesignSize = (
      894
      53)
    inherited ImgTemplate: TImage
      Left = 856
      ExplicitLeft = 684
    end
    inherited lblCaption: TLabel
      Left = 786
      ExplicitLeft = 786
    end
  end
  inherited Panel3: TPanel
    Width = 894
    Height = 477
    ExplicitWidth = 894
    ExplicitHeight = 477
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 632
      Height = 473
      Align = alClient
      TabOrder = 1
      object Splitter2: TSplitter
        Left = 1
        Top = 332
        Width = 630
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        ExplicitTop = 147
        ExplicitWidth = 458
      end
      object Splitter1: TSplitter
        Left = 1
        Top = 185
        Width = 630
        Height = 3
        Cursor = crVSplit
        Align = alTop
        ExplicitLeft = 3
        ExplicitTop = 61
        ExplicitWidth = 458
      end
      object GroupBox1: TGroupBox
        Left = 1
        Top = 188
        Width = 630
        Height = 144
        Align = alClient
        Caption = '  '#1593#1606#1575#1608#1610#1606' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1610#1575'   '
        TabOrder = 0
        object DBGrid4: TDBGrid
          Left = 2
          Top = 15
          Width = 626
          Height = 127
          Align = alClient
          Color = clCream
          DataSource = srcItems
          GradientStartColor = clCream
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'SalaryID'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'InfoName_L1'
              Width = 31
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'InfoName_L2'
              Width = 18
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Amount'
              Width = 106
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ItemNote_L1'
              Width = 169
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ItemNote_L2'
              Width = 21
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Firstdate'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Enddate'
              Visible = True
            end>
        end
      end
      object GroupBox2: TGroupBox
        Left = 1
        Top = 1
        Width = 630
        Height = 184
        Align = alTop
        Caption = '  '#1604#1610#1587#1578' '#1575#1581#1603#1575#1605' '#1603#1575#1585#1711#1586#1610#1606#1610'  '
        TabOrder = 1
        object DBGrid1: TCedarDbgrid
          Left = 2
          Top = 15
          Width = 626
          Height = 167
          Align = alClient
          Color = clCream
          DataSource = srcInterdictList
          DynProps = <>
          EvenRowColor = clSkyBlue
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
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          RowHeight = 18
          SearchPanel.Enabled = True
          SortLocal = True
          TabOrder = 0
          OnDblClick = DBGrid1DblClick
          ActiveSearchPanel = False
          SelectFooterIndex = 0
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'InterdictNo'
              Footers = <>
              Width = 46
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'InterdictDate'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'InterdicStartDate'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'InterdicEndDate'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'InsuranceStartDate'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'InsuranceEndDate'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'InterdicType_L1'
              Footers = <>
              Width = 64
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'InterdicType_L2'
              Footers = <>
              Width = 64
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'OfficeName_L1'
              Footers = <>
              Width = 64
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'OfficeName_L2'
              Footers = <>
              Width = 64
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'JobName_L1'
              Footers = <>
              Width = 64
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'JobName_L2'
              Footers = <>
              Width = 64
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'grade_L1'
              Footers = <>
              Width = 64
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'grade_L2'
              Footers = <>
              Width = 64
            end
            item
              CellButtons = <>
              Checkboxes = True
              DynProps = <>
              EditButtons = <>
              FieldName = 'RetardActive'
              Footers = <>
              KeyList.Strings = (
                '1'
                '0')
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'State'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'InterdictItemsAmount'
              Footers = <>
              Width = 64
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'insurancename'
              Footers = <>
              Width = 64
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Tax'
              Footers = <>
              Width = 64
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object GroupBox3: TGroupBox
        Left = 1
        Top = 335
        Width = 630
        Height = 137
        Align = alBottom
        Caption = '  '#1604#1610#1587#1578' '#1662#1585#1587#1606#1604' '#1601#1575#1602#1583' '#1581#1603#1605'  '
        TabOrder = 2
        object DBGrid3: TDBGrid
          Left = 2
          Top = 15
          Width = 626
          Height = 120
          Align = alClient
          Color = clCream
          DataSource = srcPersonelInfo
          GradientStartColor = clCream
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'PersonelNo'
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'name_L1'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'name_L2'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'lastName_L1'
              Width = 63
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'lastName_L2'
              Width = 36
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fatherName_L1'
              Width = 36
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fatherName_L2'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NationalityCode'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NationalID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'employDate'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'finishEmployDate'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'State'
              Width = 50
              Visible = True
            end>
        end
      end
    end
    object DBGrid2: TCedarDbgrid
      Left = 634
      Top = 2
      Width = 258
      Height = 473
      Align = alRight
      Color = clCream
      DataSource = SrcEmployeeInfolist
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
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      RowHeight = 18
      SearchPanel.Enabled = True
      SortLocal = True
      TabOrder = 0
      OnKeyPress = DBGrid2KeyPress
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PersonelNo'
          Footers = <>
          Width = 53
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PersonelName_L1'
          Footers = <>
          Width = 89
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PersonelName_L2'
          Footers = <>
          Width = 71
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  inherited ActionList: TActionList
    Left = 248
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actShowForm: TAction
      Caption = #1606#1605#1575#1610#1588' '#1581#1603#1605
      OnExecute = actShowFormExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662' (F7)'
      OnExecute = actPrintExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actState: TAction
      Caption = ' '#1662#1610#1588' '#1606#1608#1610#1587
      OnExecute = actStateExecute
    end
    object actDelete: TAction
      Caption = #1581#1584#1601' '#1581#1603#1605
      OnExecute = actDeleteExecute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
    end
  end
  inherited ImageList1: TImageList
    Left = 456
  end
  object srcInterdictList: TDataSource
    DataSet = qryInterdictList
    Left = 56
    Top = 120
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
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
    Template.FileName = 
      'D:\Projects\Fara\Salary\Exe\Report\rptInterdicts4History_Person.' +
      'rtm'
    Units = utMillimeters
    AllowPrintToFile = True
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
    Left = 536
    Top = 360
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 29104
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        OnGetText = ppLabel1GetText
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
        mmLeft = 72231
        mmTop = 0
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LblCaption'
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578' '#1575#1581#1603#1575#1605' '#1662#1585#1587#1606#1604' '#1576#1578#1601#1603#1610#1603' '#1606#1575#1605' '#1662#1585#1587#1606#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8382
        mmLeft = 63040
        mmTop = 5821
        mmWidth = 66802
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape1'
        ParentWidth = True
        mmHeight = 7408
        mmLeft = 0
        mmTop = 21696
        mmWidth = 203300
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 188913
        mmTop = 21696
        mmWidth = 2910
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 157957
        mmTop = 21696
        mmWidth = 2910
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 174890
        mmTop = 21696
        mmWidth = 2910
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 136261
        mmTop = 21696
        mmWidth = 3175
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1581#1603#1605
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
        mmLeft = 189442
        mmTop = 22225
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1581#1603#1605
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
        mmLeft = 175419
        mmTop = 22225
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1575#1580#1585#1575#1581#1603#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 158486
        mmTop = 22225
        mmWidth = 16140
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label101'
        Border.mmPadding = 0
        Caption = #1606#1608#1593' '#1581#1603#1605
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
        mmLeft = 136790
        mmTop = 22225
        mmWidth = 20902
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SysVarPageNo1'
        OnGetText = ppSystemVariable2GetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 1323
        mmTop = 8467
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lbprintdate'
        OnGetText = ppLabel7GetText
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
        mmLeft = 1323
        mmTop = 3440
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
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
        mmLeft = 107421
        mmTop = 22225
        mmWidth = 28575
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = ' '#1662#1587#1578' '#1587#1575#1586#1605#1575#1606#1610
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
        mmLeft = 70115
        mmTop = 22225
        mmWidth = 36513
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = #1585#1578#1576#1607' '#1588#1594#1604#1610
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
        mmLeft = 37306
        mmTop = 22225
        mmWidth = 32015
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label15'
        Border.mmPadding = 0
        Caption = #1662#1575#1610#1575#1606' '#1602#1585#1575#1585' '#1583#1575#1583
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
        mmLeft = 20638
        mmTop = 22225
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 69586
        mmTop = 21696
        mmWidth = 3175
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 106892
        mmTop = 21696
        mmWidth = 3175
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line101'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 36777
        mmTop = 21696
        mmWidth = 3175
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = ':'#1588#1605#1575#1585#1607' '#1608#1606#1575#1605' '#1662#1585#1587#1606#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 177536
        mmTop = 14817
        mmWidth = 25135
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label12'
        Border.mmPadding = 0
        Caption = #1608#1590#1593#1610#1578
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
        mmLeft = 529
        mmTop = 22225
        mmWidth = 19050
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line11'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 20108
        mmTop = 21696
        mmWidth = 3175
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText10'
        OnGetText = ppDBText10GetText
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'PersonelNo'
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
        mmHeight = 6519
        mmLeft = 160593
        mmTop = 14817
        mmWidth = 16679
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
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 0
        mmWidth = 203300
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipeline1
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
          Units = utMillimeters
          Version = '23.0'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline1'
          object ppDetailBand2: TppDetailBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 6085
            mmPrintPosition = 0
            object ppLine12: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line12'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 202936
              mmTop = 0
              mmWidth = 265
              BandType = 4
              LayerName = Foreground
            end
            object ppLine13: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line13'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 188913
              mmTop = 0
              mmWidth = 2646
              BandType = 4
              LayerName = Foreground
            end
            object ppLine14: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line14'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 174890
              mmTop = 0
              mmWidth = 2646
              BandType = 4
              LayerName = Foreground
            end
            object ppLine16: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line16'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 20108
              mmTop = 0
              mmWidth = 2910
              BandType = 4
              LayerName = Foreground
            end
            object ppLine17: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line17'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 69586
              mmTop = 0
              mmWidth = 2646
              BandType = 4
              LayerName = Foreground
            end
            object ppLine18: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line18'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 36777
              mmTop = 0
              mmWidth = 2646
              BandType = 4
              LayerName = Foreground
            end
            object ppLine21: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line21'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 0
              mmTop = 0
              mmWidth = 2646
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText2: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText1'
              Border.mmPadding = 0
              DataField = 'InterdictNo'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6085
              mmLeft = 189442
              mmTop = 0
              mmWidth = 13229
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText4: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText3'
              Border.mmPadding = 0
              DataField = 'InterdictDate'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6085
              mmLeft = 175419
              mmTop = 0
              mmWidth = 13229
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText5: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText4'
              Border.mmPadding = 0
              DataField = 'OfficeName_L1'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6085
              mmLeft = 107421
              mmTop = 0
              mmWidth = 28575
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText6: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText5'
              Border.mmPadding = 0
              DataField = 'JobName_L1'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 5821
              mmLeft = 70115
              mmTop = 0
              mmWidth = 36513
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText8: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText7'
              Border.mmPadding = 0
              DataField = 'InterdicEndDate'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6085
              mmLeft = 20638
              mmTop = 0
              mmWidth = 15610
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText7: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText6'
              Border.mmPadding = 0
              DataField = 'grade_L1'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 5821
              mmLeft = 37306
              mmTop = 0
              mmWidth = 32015
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText9: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText9'
              Border.mmPadding = 0
              DataField = 'InterdicType_L1'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6085
              mmLeft = 136790
              mmTop = 0
              mmWidth = 20902
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText11: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText101'
              Border.mmPadding = 0
              DataField = 'InterdicStartDate'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6085
              mmLeft = 158486
              mmTop = 0
              mmWidth = 16140
              BandType = 4
              LayerName = Foreground
            end
            object ppLine19: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line19'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 136261
              mmTop = 0
              mmWidth = 2646
              BandType = 4
              LayerName = Foreground
            end
            object ppLine23: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line23'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 157957
              mmTop = 0
              mmWidth = 2646
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText1: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText2'
              OnGetText = ppDBText1GetText
              Border.mmPadding = 0
              DataField = 'State'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 5821
              mmLeft = 529
              mmTop = 0
              mmWidth = 19050
              BandType = 4
              LayerName = Foreground
            end
            object ppLine6: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line6'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 106892
              mmTop = 0
              mmWidth = 2646
              BandType = 4
              LayerName = Foreground
            end
          end
          object ppFooterBand2: TppFooterBand
            Border.mmPadding = 0
            PrintOnLastPage = False
            mmBottomOffset = 0
            mmHeight = 4763
            mmPrintPosition = 0
            object ppLine1: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line1'
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 2910
              mmLeft = 0
              mmTop = 265
              mmWidth = 203200
              BandType = 8
              LayerName = Foreground
            end
          end
          object ppSummaryBand1: TppSummaryBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 10054
            mmPrintPosition = 0
            object ppLine5: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line5'
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 3969
              mmLeft = 0
              mmTop = 0
              mmWidth = 203200
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
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
    end
    object ppGroup2: TppGroup
      BreakName = 'PersonelNo'
      DataPipeline = ppDBPipeline2
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
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
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcInterdictList
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 528
    Top = 189
    MasterDataPipelineName = 'ppDBPipeline2'
    object ppDBPipeline1ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'InterdictID'
      FieldName = 'InterdictID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'InterdictNo'
      FieldName = 'InterdictNo'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'InterdictDate'
      FieldName = 'InterdictDate'
      FieldLength = 8
      DisplayWidth = 8
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'JobName_L1'
      FieldName = 'JobName_L1'
      FieldLength = 255
      DisplayWidth = 255
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'JobName_L2'
      FieldName = 'JobName_L2'
      FieldLength = 255
      DisplayWidth = 255
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'grade_L1'
      FieldName = 'grade_L1'
      FieldLength = 255
      DisplayWidth = 255
      Position = 5
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'grade_L2'
      FieldName = 'grade_L2'
      FieldLength = 255
      DisplayWidth = 255
      Position = 6
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'jobCity_L1'
      FieldName = 'jobCity_L1'
      FieldLength = 255
      DisplayWidth = 255
      Position = 7
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'jobCity_L2'
      FieldName = 'jobCity_L2'
      FieldLength = 255
      DisplayWidth = 255
      Position = 8
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'InterdicType_L1'
      FieldName = 'InterdicType_L1'
      FieldLength = 255
      DisplayWidth = 255
      Position = 9
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'InterdicType_L2'
      FieldName = 'InterdicType_L2'
      FieldLength = 255
      DisplayWidth = 255
      Position = 10
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'InterdicStartDate'
      FieldName = 'InterdicStartDate'
      FieldLength = 8
      DisplayWidth = 8
      Position = 11
    end
    object ppDBPipeline1ppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'employDaytime'
      FieldName = 'employDaytime'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 12
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'KargozinyNote_L1'
      FieldName = 'KargozinyNote_L1'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'KargozinyNote_L2'
      FieldName = 'KargozinyNote_L2'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'State'
      FieldName = 'State'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 15
    end
    object ppDBPipeline1ppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'InterdicTypeID'
      FieldName = 'InterdicTypeID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
    end
    object ppDBPipeline1ppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'OfficeID'
      FieldName = 'OfficeID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'OfficeName_L1'
      FieldName = 'OfficeName_L1'
      FieldLength = 255
      DisplayWidth = 255
      Position = 18
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'OfficeName_L2'
      FieldName = 'OfficeName_L2'
      FieldLength = 255
      DisplayWidth = 255
      Position = 19
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'InterdicEndDate'
      FieldName = 'InterdicEndDate'
      FieldLength = 8
      DisplayWidth = 8
      Position = 20
    end
    object ppDBPipeline1ppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'PersonelNo'
      FieldName = 'PersonelNo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 21
    end
  end
  object qryInterdictList: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryInterdictListAfterOpen
    AfterScroll = qryInterdictListAfterScroll
    Parameters = <
      item
        Name = 'PersonID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end
      item
        Name = 'companyCodeFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'companyCodeTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 999
      end
      item
        Name = 'InterdictDate'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     Interdicts.InterdictID, Interdicts.InterdictNo, Inter' +
        'dicts.InterdictDate, Interdicts.subcompanyCode, FormsInfo_2.Info' +
        'Name_L1 AS JobName_L1,'
      
        '                      FormsInfo_2.InfoName_L2 AS JobName_L2, For' +
        'msInfo_3.InfoName_L1 AS grade_L1, FormsInfo_3.InfoName_L2 AS gra' +
        'de_L2,'
      
        '                      FormsInfo_4.InfoName_L1 AS jobCity_L1, For' +
        'msInfo_4.InfoName_L2 AS jobCity_L2, FormsInfo_5.InfoName_L1 AS I' +
        'nterdicType_L1,'
      
        '                      FormsInfo_5.InfoName_L2 AS InterdicType_L2' +
        ', Interdicts.InterdicStartDate, Interdicts.employDaytime, Interd' +
        'icts.AccTopicCode, Interdicts.AccDetailCode,'
      
        '                      Interdicts.AccCTopicCode, Interdicts.AccCT' +
        'opicCode2, Interdicts.State, Interdicts.UserID, FormsInfo_5.Info' +
        'ID AS InterdicTypeID, FormsInfo_1.InfoID AS OfficeID,'
      
        '                      Interdicts.PersonelNo, FormsInfo_1.InfoNam' +
        'e_L1 AS OfficeName_L1, FormsInfo_1.InfoName_L2 AS OfficeName_L2,' +
        ' Interdicts.InterdicEndDate, Interdicts.InterdicType,'
      
        '                      SUM(InterdictItems.Amount) AS InterdictIte' +
        'msAmount, InsuranceCONSTinfo.insurancename, FormsInfo_Tax.InfoNa' +
        'me_L1 AS Tax'
      
        '                      , Interdicts.InsuranceStartDate, Interdict' +
        's.InsuranceEndDate'
      ', Interdicts.RetardActive'
      ''
      'FROM Pay.Interdicts INNER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfo_1 ON Pay.Interd' +
        'icts.OfficeCode = FormsInfo_1.FormInfoID INNER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfo_2 ON Pay.Interd' +
        'icts.jobCode = FormsInfo_2.FormInfoID INNER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfo_3 ON Pay.Interd' +
        'icts.grade = FormsInfo_3.FormInfoID INNER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfo_4 ON Pay.Interd' +
        'icts.jobCity = FormsInfo_4.FormInfoID INNER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfo_5 ON Pay.Interd' +
        'icts.EmployTypeID = FormsInfo_5.FormInfoID LEFT OUTER JOIN'
      
        '                      Pay.InterdictItems ON Pay.Interdicts.Inter' +
        'dictID = InterdictItems.InterdictID LEFT OUTER JOIN'
      
        '                      Pay.InsuranceCONSTinfo ON Pay.Interdicts.i' +
        'nsuranceID = InsuranceCONSTinfo.insuranceNo LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfo_Tax ON Pay.Inte' +
        'rdicts.TaxCalculationType = FormsInfo_Tax.FormInfoID'
      'WHERE     (Interdicts.PersonelNo = :PersonID )'
      
        '  AND((Interdicts.subcompanyCode = 0)OR(Interdicts.subcompanyCod' +
        'e BETWEEN :companyCodeFrom AND :companyCodeTo )) '
      '  AND (Interdicts.InterdictDate <= :InterdictDate  )'
      
        'GROUP BY Interdicts.InterdictID, Interdicts.InterdictNo, Interdi' +
        'cts.InterdictDate, Interdicts.subcompanyCode, FormsInfo_2.InfoNa' +
        'me_L1, FormsInfo_2.InfoName_L2,'
      
        '                      FormsInfo_3.InfoName_L1, FormsInfo_3.InfoN' +
        'ame_L2, FormsInfo_4.InfoName_L1, FormsInfo_4.InfoName_L2, FormsI' +
        'nfo_5.InfoName_L1, FormsInfo_5.InfoName_L2,'
      
        '                      Interdicts.InterdicStartDate, Interdicts.e' +
        'mployDaytime, Interdicts.AccTopicCode, Interdicts.AccDetailCode,' +
        ' Interdicts.AccCTopicCode, Interdicts.AccCTopicCode2,'
      
        '                      Interdicts.State, Interdicts.UserID, Forms' +
        'Info_5.InfoID, FormsInfo_1.InfoID, Interdicts.PersonelNo, FormsI' +
        'nfo_1.InfoName_L1, FormsInfo_1.InfoName_L2,'
      
        '                      Interdicts.InterdicEndDate, Interdicts.Int' +
        'erdicType, InsuranceCONSTinfo.insurancename, FormsInfo_Tax.InfoN' +
        'ame_L1'
      
        '                      , Interdicts.InsuranceStartDate, Interdict' +
        's.InsuranceEndDate'
      ', Interdicts.RetardActive'
      'ORDER BY Interdicts.InterdictDate, Interdicts.InterdictNo')
    Left = 160
    Top = 104
    object qryInterdictListInterdictNo: TStringField
      Tag = 3
      DisplayLabel = #1588'.'#1581#1603#1605
      FieldName = 'InterdictNo'
      Size = 50
    end
    object qryInterdictListInterdictDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1581#1603#1605
      FieldName = 'InterdictDate'
      FixedChar = True
      Size = 10
    end
    object qryInterdictListInterdicStartDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1575#1580#1585#1575#1610' '#1581#1603#1605
      FieldName = 'InterdicStartDate'
      FixedChar = True
      Size = 10
    end
    object qryInterdictListInterdicEndDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1662#1575#1610#1575#1606' '#1602#1585#1575#1585#1583#1575#1583
      FieldName = 'InterdicEndDate'
      FixedChar = True
      Size = 10
    end
    object qryInterdictListInsuranceStartDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1740#1582' '#1588#1585#1608#1593' '#1576#1740#1605#1607
      FieldName = 'InsuranceStartDate'
      FixedChar = True
      Size = 10
    end
    object qryInterdictListInsuranceEndDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1740#1582' '#1662#1575#1740#1575#1606' '#1576#1740#1605#1607
      FieldName = 'InsuranceEndDate'
      FixedChar = True
      Size = 10
    end
    object qryInterdictListInterdicType_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1581#1603#1605
      FieldName = 'InterdicType_L1'
      Size = 255
    end
    object qryInterdictListInterdicType_L2: TStringField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1581#1603#1605' 2'
      FieldName = 'InterdicType_L2'
      Size = 255
    end
    object qryInterdictListOfficeName_L1: TStringField
      Tag = 3
      DisplayLabel = ' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
      FieldName = 'OfficeName_L1'
      Size = 255
    end
    object qryInterdictListOfficeName_L2: TStringField
      Tag = 3
      DisplayLabel = #1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610' 2'
      FieldName = 'OfficeName_L2'
      Size = 255
    end
    object qryInterdictListJobName_L1: TStringField
      Tag = 3
      DisplayLabel = '  '#1662#1587#1578' '#1587#1575#1586#1605#1575#1606#1610
      FieldName = 'JobName_L1'
      Size = 255
    end
    object qryInterdictListJobName_L2: TStringField
      Tag = 3
      DisplayLabel = ' '#1662#1587#1578' '#1587#1575#1586#1605#1575#1606#1610'2'
      FieldName = 'JobName_L2'
      Size = 255
    end
    object qryInterdictListgrade_L1: TStringField
      Tag = 3
      DisplayLabel = #1585#1578#1576#1607' '#1588#1594#1604#1610
      FieldName = 'grade_L1'
      Size = 255
    end
    object qryInterdictListgrade_L2: TStringField
      Tag = 3
      DisplayLabel = #1585#1578#1576#1607' '#1588#1594#1604#1610'2'
      FieldName = 'grade_L2'
      Size = 255
    end
    object qryInterdictListRetardActive: TWordField
      DisplayLabel = #1605#1608#1579#1585' '#1583#1585' '#1605#1581#1575#1587#1576#1575#1578' '
      FieldName = 'RetardActive'
    end
    object qryInterdictListState: TWordField
      DisplayLabel = #1608#1590#1593#1610#1578
      FieldName = 'State'
      OnGetText = qryInterdictListStateGetText
    end
    object qryInterdictListInterdictItemsAmount: TBCDField
      DisplayLabel = #1580#1605#1593' '#1581#1602#1608#1602' '#1605#1586#1575#1610#1575
      FieldName = 'InterdictItemsAmount'
      currency = True
      Precision = 19
    end
    object qryInterdictListinsurancename: TStringField
      Tag = 3
      DisplayLabel = #1576#1610#1605#1607
      FieldName = 'insurancename'
      Size = 50
    end
    object qryInterdictListTax: TStringField
      Tag = 3
      DisplayLabel = #1605#1575#1604#1610#1575#1578
      FieldName = 'Tax'
      Size = 255
    end
    object qryInterdictListjobCity_L2: TStringField
      FieldName = 'jobCity_L2'
      Size = 255
    end
    object qryInterdictListjobCity_L1: TStringField
      FieldName = 'jobCity_L1'
      Size = 255
    end
    object qryInterdictListemployDaytime: TWordField
      Tag = 3
      DisplayLabel = #1662#1575#1610#1575#1606' '#1602#1585#1575#1585' '#1583#1575#1583
      FieldName = 'employDaytime'
    end
    object qryInterdictListInterdicTypeID: TIntegerField
      DisplayLabel = #1606#1608#1593' '#1581#1603#1605
      FieldName = 'InterdicTypeID'
    end
    object qryInterdictListOfficeID: TIntegerField
      DisplayLabel = #1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
      FieldName = 'OfficeID'
    end
    object qryInterdictListPersonelNo: TIntegerField
      FieldName = 'PersonelNo'
    end
    object qryInterdictListInterdictID: TIntegerField
      Tag = 3
      FieldName = 'InterdictID'
    end
    object qryInterdictListInterdicType: TIntegerField
      FieldName = 'InterdicType'
    end
  end
  object qryEmployeeInfolist: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryEmployeeInfolistAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT     *'
      'FROM Pay.EmployeeInfo'
      'ORDER BY PersonelNo')
    Left = 752
    Top = 128
    object qryEmployeeInfolistPersonelNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588'.'#1662#1585#1587#1606#1604
      FieldName = 'PersonelNo'
    end
    object qryEmployeeInfolistPersonelName_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1662#1585#1587#1606#1604
      FieldName = 'PersonelName_L1'
      ReadOnly = True
      Size = 60
    end
    object qryEmployeeInfolistPersonelName_L2: TStringField
      Tag = 3
      DisplayLabel = 'PersonelName'
      FieldName = 'PersonelName_L2'
      ReadOnly = True
      Size = 60
    end
  end
  object SrcEmployeeInfolist: TDataSource
    DataSet = qryEmployeeInfolist
    Left = 704
    Top = 200
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = SrcEmployeeInfolist
    OpenDataSource = False
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'DBPipeline2'
    Left = 522
    Top = 263
    object ppDBPipeline2ppField1: TppField
      FieldAlias = 'PersonelNo'
      FieldName = 'PersonelNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField2: TppField
      FieldAlias = 'PersonelName_L1'
      FieldName = 'PersonelName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField3: TppField
      FieldAlias = 'PersonelName_L2'
      FieldName = 'PersonelName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
  end
  object qryPersonelInfo: TADOQuery
    Connection = DmF.adcsalary
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     *, Pay.FormsInfo.InfoName_L1 AS State'
      'FROM         Pay.PersonelInfo LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo ON Pay.PersonelInfo.Personel' +
        'State = Pay.FormsInfo.FormInfoID'
      'WHERE     (NOT (Pay.PersonelInfo.PersonelNo IN'
      '                          (SELECT     PersonelNo'
      '                             FROM         Pay.Interdicts)))')
    Left = 122
    Top = 399
    object qryPersonelInfoPersonelNo: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607
      FieldName = 'PersonelNo'
    end
    object qryPersonelInfoname_L1: TStringField
      DisplayLabel = #1606#1575#1605
      FieldName = 'name_L1'
      Size = 25
    end
    object qryPersonelInfoname_L2: TStringField
      DisplayLabel = 'name'
      FieldName = 'name_L2'
      Size = 25
    end
    object qryPersonelInfolastName_L1: TStringField
      DisplayLabel = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
      FieldName = 'lastName_L1'
      Size = 30
    end
    object qryPersonelInfolastName_L2: TStringField
      DisplayLabel = 'lastName'
      FieldName = 'lastName_L2'
      Size = 30
    end
    object qryPersonelInfofatherName_L1: TStringField
      DisplayLabel = #1606#1575#1605' '#1662#1583#1585
      FieldName = 'fatherName_L1'
      Size = 25
    end
    object qryPersonelInfofatherName_L2: TStringField
      DisplayLabel = 'fatherName'
      FieldName = 'fatherName_L2'
      Size = 25
    end
    object qryPersonelInfoNationalityCode: TIntegerField
      DisplayLabel = #1603#1583' '#1605#1604#1610
      FieldName = 'NationalityCode'
    end
    object qryPersonelInfoNationalID: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1588#1606#1575#1587#1606#1575#1605#1607
      FieldName = 'NationalID'
      Size = 12
    end
    object qryPersonelInfoemployDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1575#1587#1578#1582#1583#1575#1605
      FieldName = 'employDate'
      FixedChar = True
      Size = 10
    end
    object qryPersonelInfofinishEmployDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1582#1575#1578#1605#1607' '#1602#1585#1575#1585#1583#1575#1583
      FieldName = 'finishEmployDate'
      FixedChar = True
      Size = 10
    end
    object qryPersonelInfoState: TStringField
      DisplayLabel = #1608#1590#1593#1610#1578
      FieldName = 'State'
      Size = 255
    end
  end
  object srcPersonelInfo: TDataSource
    DataSet = qryPersonelInfo
    Left = 218
    Top = 407
  end
  object qryItems: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'InterdictID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT        InterdictItems.SalaryID, FormsInfo.InfoName_L1, Fo' +
        'rmsInfo.InfoName_L2, InterdictItems.Amount, InterdictItems.ItemN' +
        'ote_L1, InterdictItems.ItemNote_L2, InterdictItems.Firstdate, In' +
        'terdictItems.Enddate'
      'FROM Pay.InterdictItems LEFT OUTER JOIN'
      
        '                         Pay.FormsInfo ON InterdictItems.SalaryI' +
        'D = FormsInfo.FormInfoID'
      'WHERE        (InterdictItems.InterdictID = :InterdictID)')
    Left = 136
    Top = 253
    object qryItemsSalaryID: TIntegerField
      DisplayLabel = #1587#1585#1610#1575#1604
      FieldName = 'SalaryID'
    end
    object qryItemsInfoName_L1: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1581#1602#1608#1602'  '#1608' '#1605#1586#1575#1610#1575
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object qryItemsInfoName_L2: TStringField
      FieldName = 'InfoName_L2'
      Size = 255
    end
    object qryItemsAmount: TBCDField
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'Amount'
      currency = True
      Precision = 19
    end
    object qryItemsItemNote_L1: TStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'ItemNote_L1'
      Size = 250
    end
    object qryItemsItemNote_L2: TStringField
      FieldName = 'ItemNote_L2'
      Size = 250
    end
    object qryItemsFirstdate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1605#1593#1608#1602#1607' '#1575#1586
      FieldName = 'Firstdate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryItemsEnddate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1605#1593#1608#1602#1607' '#1578#1575
      FieldName = 'Enddate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
  end
  object srcItems: TDataSource
    DataSet = qryItems
    Left = 56
    Top = 261
  end
  object PopOther: TPopupMenu
    Left = 321
    Top = 424
    object N6: TMenuItem
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
      OnClick = N6Click
    end
    object N8: TMenuItem
      Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1610
      OnClick = N8Click
    end
    object tag1: TMenuItem
      Caption = #1575#1586' tag '#1575#1587#1578#1601#1575#1583#1607' '#1588#1583#1607
      Visible = False
    end
    object N2: TMenuItem
      Tag = 1
      Caption = #1578#1594#1610#1610#1585' '#1608#1590#1593#1610#1578' '#1576#1607' '#1606#1607#1575#1574#1610
      OnClick = AllStateClick
    end
    object AllState: TMenuItem
      Tag = 50
      Caption = #1578#1594#1610#1610#1585' '#1608#1590#1593#1610#1578' '#1576#1607' '#1576#1575#1610#1711#1575#1606#1610
      OnClick = AllStateClick
    end
    object N1: TMenuItem
      Action = actDelete
    end
  end
  object qryInitQry: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT  *  FROM Pay.FormTypes'
      'where FormType= 45')
    Left = 644
    Top = 339
  end
end

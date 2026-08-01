inherited ReciptsFundF: TReciptsFundF
  Caption = #1589#1608#1585#1578' '#1582#1604#1575#1589#1607' '#1578#1606#1582#1608#1575#1607' '#1582#1585#1740#1583
  ClientHeight = 450
  ClientWidth = 778
  ExplicitWidth = 794
  ExplicitHeight = 489
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 409
    Width = 778
    ExplicitTop = 410
    object btnReciptsPricing: TBitBtn
      AlignWithMargins = True
      Left = 711
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSelectNew
      Align = alRight
      Caption = #1580#1583#1740#1583
      TabOrder = 1
    end
    object btnSort: TBitBtn
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
    object btnSearch_: TBitBtn
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
      TabOrder = 3
    end
    object btnSendExcel: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSendExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607'Excel'
      TabOrder = 4
    end
    object btnReciptsPricing1: TBitBtn
      AlignWithMargins = True
      Left = 387
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actPrint
      Align = alRight
      Caption = #1670#1575#1662
      TabOrder = 5
    end
    object btnReciptsPricing2: TBitBtn
      AlignWithMargins = True
      Left = 468
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actReciptsPricing
      Align = alRight
      Caption = #1602#1740#1605#1578' '#1711#1584#1575#1585#1740
      TabOrder = 6
    end
    object btnReciptsPricing3: TBitBtn
      AlignWithMargins = True
      Left = 549
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actDelete
      Align = alRight
      Caption = #1581#1584#1601' '#1585#1583#1740#1601
      TabOrder = 7
    end
    object btnSelectNew: TBitBtn
      AlignWithMargins = True
      Left = 630
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSelectEdit
      Align = alRight
      Caption = #1608#1740#1585#1575#1740#1588
      TabOrder = 8
    end
  end
  inherited Panel2: TPanel
    Width = 778
    inherited lblCaption: TLabel
      Height = 16
      ExplicitLeft = 674
    end
  end
  inherited Panel3: TPanel
    Top = 84
    Width = 778
    Height = 325
    ExplicitTop = 84
    ExplicitHeight = 306
    object DBGridEh1: TDBGridEh
      Left = 2
      Top = 2
      Width = 786
      Height = 322
      Align = alClient
      AutoFitColWidths = True
      Color = clCream
      DataSource = srcRecipts
      DynProps = <>
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      SearchPanel.Enabled = True
      SortLocal = True
      SumList.Active = True
      TabOrder = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ReciptCaption'
          Footers = <>
          Width = 89
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ReciptNumber'
          Footers = <>
        end
        item
          CellButtons = <>
          Color = 13431799
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
          FieldName = 'CustName'
          Footers = <>
          Width = 97
        end
        item
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButtons = <>
          FieldName = 'TotalPrice'
          Footers = <>
          Width = 79
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ReciptsRow'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ReciptNote'
          Footers = <>
          Width = 109
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object pnlWorkShopId: TPanel [3]
    Left = 0
    Top = 53
    Width = 778
    Height = 31
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    ExplicitWidth = 790
    DesignSize = (
      778
      31)
    object lblPersonID2: TLabel
      Left = 673
      Top = 8
      Width = 72
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1603#1583#1608' '#1606#1575#1605' '#1605#1588#1578#1585#1740
      ExplicitLeft = 681
    end
    object btnPersonID2: TSpeedButton
      Tag = 1
      Left = 552
      Top = 3
      Width = 23
      Height = 22
      Anchors = [akTop, akRight]
      Caption = '...'
      OnClick = btnPersonID2Click
      ExplicitLeft = 560
    end
    object btnReciptsRow: TSpeedButton
      Tag = 1
      Left = 42
      Top = 5
      Width = 25
      Height = 22
      Anchors = [akTop, akRight]
      Caption = '...'
      OnClick = btnReciptsRowClick
      ExplicitLeft = 50
    end
    object lbl1: TLabel
      Left = 163
      Top = 12
      Width = 56
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1588#1605#1575#1585#1607'/'#1585#1583#1740#1601
      ExplicitLeft = 171
    end
    object medtPersonID2: TMaskEdit
      Left = 577
      Top = 4
      Width = 93
      Height = 21
      Anchors = [akTop, akRight]
      Enabled = False
      EditMask = '999999999'
      MaxLength = 9
      TabOrder = 0
      Text = '0        '
      OnChange = medtPersonID2Change
      ExplicitLeft = 585
    end
    object medtPersonID2Name: TMaskEdit
      Left = 282
      Top = 5
      Width = 264
      Height = 19
      Anchors = [akTop, akRight]
      Color = clInactiveCaption
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      Text = ''
      ExplicitLeft = 290
    end
    object medtReciptsRow: TMaskEdit
      Left = 66
      Top = 6
      Width = 93
      Height = 21
      Anchors = [akTop, akRight]
      Enabled = False
      EditMask = '999999999'
      MaxLength = 9
      TabOrder = 2
      Text = '0        '
      OnChange = medtPersonID2Change
      ExplicitLeft = 74
    end
  end
  inherited ActionList: TActionList
    Left = 192
    Top = 16
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actReciptsPricing: TAction
      Caption = #1602#1740#1605#1578' '#1711#1584#1575#1585#1740
      OnExecute = actReciptsPricingExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actDelete: TAction
      Caption = #1581#1584#1601' '#1585#1583#1740#1601
      OnExecute = actDeleteExecute
    end
    object actSelectNew: TAction
      Caption = #1580#1583#1740#1583
      OnExecute = actSelectNewExecute
    end
    object actSendExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607'Excel'
      OnExecute = actSendExcelExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actSelectEdit: TAction
      Caption = #1608#1740#1585#1575#1740#1588
      OnExecute = actSelectEditExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 120
    Top = 153
  end
  object qryRecipts: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    Left = 408
    Top = 168
    object qryReciptsReciptCaption: TStringField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1601#1585#1605
      FieldName = 'ReciptCaption'
      Size = 70
    end
    object qryReciptsReciptNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607
      FieldName = 'ReciptNumber'
    end
    object qryReciptsReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1740#1582
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryReciptsPersonID1: TIntegerField
      Tag = 3
      DisplayLabel = #1705#1583' '#1601#1585#1608#1588#1606#1583#1607
      FieldName = 'PersonID1'
    end
    object qryReciptsCustName: TStringField
      Tag = 3
      DisplayLabel = #1601#1585#1608#1588#1606#1583#1607
      FieldName = 'CustName'
      Size = 150
    end
    object qryReciptsTotalPrice: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'TotalPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryReciptsReciptNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1740#1581#1575#1578
      FieldName = 'ReciptNote'
      Size = 400
    end
    object qryReciptsReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryReciptsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryReciptsReciptsRow: TIntegerField
      DisplayLabel = #1585#1583#1740#1601'/'#1588#1605#1575#1585#1607
      FieldName = 'ReciptsRow'
    end
    object qryReciptsYearID: TIntegerField
      FieldName = 'YearID'
    end
  end
  object srcRecipts: TDataSource
    DataSet = qryRecipts
    Left = 552
    Top = 160
  end
  object prp1: TppReport
    AutoStop = False
    DataPipeline = pln1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Users\Mahmood\Desktop\ReciptsFundF.rtm'
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
    Top = 264
    Version = '22.02'
    mmColumnWidth = 0
    DataPipelineName = 'pln1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 25400
      mmPrintPosition = 0
      object plblLblCompanyName: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'plblLblCompanyName'
        OnGetText = plblLblCompanyNameGetText
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
        mmLeft = 0
        mmTop = 1058
        mmWidth = 210079
        BandType = 0
        LayerName = Foreground
      end
      object plblLblCaption: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'plblLblCaption'
        OnGetText = plblLblCaptionGetText
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578'  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5842
        mmLeft = 0
        mmTop = 8467
        mmWidth = 210079
        BandType = 0
        LayerName = Foreground
      end
      object ppSysVarPageNo: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SysVarPageNo1'
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
        mmLeft = 9790
        mmTop = 8467
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object plblLblPrintDate: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lbprintdate'
        OnGetText = plblLblPrintDateGetText
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
        mmLeft = 9790
        mmTop = 1058
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object ppDBCalcdcCount_TextAlign: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalcdcCount_TextAlign'
        Border.BorderPositions = [bpLeft, bpRight]
        Border.Visible = True
        Border.mmPadding = 0
        DataPipeline = pln1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DBCalcType = dcCount
        DataPipelineName = 'pln1'
        mmHeight = 6350
        mmLeft = 25400
        mmTop = 18785
        mmWidth = 25400
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = #1606#1608#1593' '#1601#1585#1605
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 171979
        mmTop = 18786
        mmWidth = 25400
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 151659
        mmTop = 18786
        mmWidth = 20320
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 136419
        mmTop = 18786
        mmWidth = 15240
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = #1705#1583' '#1601#1585#1608#1588#1606#1583#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 121179
        mmTop = 18786
        mmWidth = 15240
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = #1601#1585#1608#1588#1606#1583#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 70378
        mmTop = 18786
        mmWidth = 50800
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 50058
        mmTop = 18786
        mmWidth = 20320
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = #1578#1608#1590#1610#1581#1575#1578
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 528
        mmTop = 18786
        mmWidth = 49530
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6858
      mmPrintPosition = 0
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.BorderPositions = [bpLeft, bpRight]
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'ReciptCaption'
        DataPipeline = pln1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'pln1'
        mmHeight = 6858
        mmLeft = 171979
        mmTop = 0
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.BorderPositions = [bpLeft, bpRight]
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'ReciptNumber'
        DataPipeline = pln1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'pln1'
        mmHeight = 6858
        mmLeft = 151659
        mmTop = 0
        mmWidth = 20320
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.BorderPositions = [bpLeft, bpRight]
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'ReciptDate'
        DataPipeline = pln1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'pln1'
        mmHeight = 6858
        mmLeft = 136419
        mmTop = 0
        mmWidth = 15240
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.BorderPositions = [bpLeft, bpRight]
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'PersonID1'
        DataPipeline = pln1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'pln1'
        mmHeight = 6858
        mmLeft = 121179
        mmTop = 0
        mmWidth = 15240
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.BorderPositions = [bpLeft, bpRight]
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'CustName'
        DataPipeline = pln1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'pln1'
        mmHeight = 6858
        mmLeft = 70378
        mmTop = 0
        mmWidth = 50800
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.BorderPositions = [bpLeft, bpRight]
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'TotalPrice'
        DataPipeline = pln1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'pln1'
        mmHeight = 6858
        mmLeft = 50058
        mmTop = 0
        mmWidth = 20320
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.BorderPositions = [bpLeft, bpRight]
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'ReciptNote'
        DataPipeline = pln1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'pln1'
        mmHeight = 6858
        mmLeft = 528
        mmTop = 0
        mmWidth = 49530
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 9525
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        ParentHeight = True
        ParentWidth = True
        mmHeight = 9525
        mmLeft = 0
        mmTop = 0
        mmWidth = 197379
        BandType = 8
        LayerName = Foreground
      end
      object plbl1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'plbl1'
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1606#1602#1604' '#1576#1607'..'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6011
        mmLeft = 181240
        mmTop = 529
        mmWidth = 15579
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc6'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'TotalPrice'
        DataPipeline = pln1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'pln1'
        mmHeight = 9525
        mmLeft = 50058
        mmTop = 0
        mmWidth = 20320
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        ParentHeight = True
        ParentWidth = True
        mmHeight = 7408
        mmLeft = 0
        mmTop = 0
        mmWidth = 197379
        BandType = 7
        LayerName = Foreground
      end
      object plbl2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'plbl2'
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
        mmLeft = 183886
        mmTop = 529
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc5'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'TotalPrice'
        DataPipeline = pln1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'pln1'
        mmHeight = 7408
        mmLeft = 50058
        mmTop = 0
        mmWidth = 20320
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
  object pln1: TppDBPipeline
    DataSource = srcRecipts
    OpenDataSource = False
    UserName = 'pln1'
    Left = 528
    Top = 240
    object pfldpln1ppField1: TppField
      FieldAlias = 'ReciptCaption'
      FieldName = 'ReciptCaption'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object pfldpln1ppField2: TppField
      FieldAlias = 'ReciptNumber'
      FieldName = 'ReciptNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object pfldpln1ppField3: TppField
      FieldAlias = 'ReciptDate'
      FieldName = 'ReciptDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object pfldpln1ppField4: TppField
      FieldAlias = 'PersonID1'
      FieldName = 'PersonID1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object pfldpln1ppField5: TppField
      FieldAlias = 'CustName'
      FieldName = 'CustName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object pfldpln1ppField6: TppField
      FieldAlias = 'TotalPrice'
      FieldName = 'TotalPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object pfldpln1ppField7: TppField
      FieldAlias = 'ReciptNote'
      FieldName = 'ReciptNote'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object pfldpln1ppField8: TppField
      FieldAlias = 'ReciptID'
      FieldName = 'ReciptID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object pfldpln1ppField9: TppField
      FieldAlias = 'ServerID'
      FieldName = 'ServerID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object pfldpln1ppField10: TppField
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
end

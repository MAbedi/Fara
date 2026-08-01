inherited SalaryListTaxF: TSalaryListTaxF
  Left = 367
  Top = 129
  Caption = #1604#1610#1587#1578' '#1605#1575#1604#1610#1575#1578#1610' '#1581#1602#1608#1602
  ClientHeight = 536
  ClientWidth = 970
  ExplicitWidth = 986
  ExplicitHeight = 575
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 495
    Width = 970
    ExplicitTop = 495
    ExplicitWidth = 970
    DesignSize = (
      970
      41)
    object Button1: TButton
      Left = 797
      Top = 8
      Width = 75
      Height = 25
      Action = actFish
      Anchors = [akTop, akRight, akBottom]
      TabOrder = 1
      ExplicitLeft = 617
    end
    object DBNavigator2: TDBNavigator
      Left = 323
      Top = 8
      Width = 312
      Height = 25
      DataSource = srcSalary
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Anchors = [akLeft, akTop, akRight]
      Flat = True
      TabOrder = 2
      ExplicitWidth = 132
    end
    object BitBtn4: TBitBtn
      Left = 243
      Top = 8
      Width = 75
      Height = 25
      Action = actSendtoExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 3
    end
    object BitBtn5: TBitBtn
      Left = 165
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
    end
    object BitBtn6: TBitBtn
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 5
    end
    object BitBtn7: TBitBtn
      Left = 876
      Top = 8
      Width = 75
      Height = 25
      Action = actFilter
      Anchors = [akRight, akBottom]
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 6
      ExplicitLeft = 696
    end
    object Button2: TButton
      Left = 718
      Top = 8
      Width = 75
      Height = 25
      Action = actFunctionShow
      Anchors = [akTop, akRight, akBottom]
      TabOrder = 7
      ExplicitLeft = 538
    end
    object Button3: TButton
      Left = 640
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight, akBottom]
      Caption = #1670#1575#1662' '
      TabOrder = 8
      OnClick = Button3Click
      ExplicitLeft = 460
    end
  end
  inherited Panel2: TPanel
    Width = 970
    ExplicitWidth = 970
    inherited ImgTemplate: TImage
      Left = 965
      ExplicitLeft = 965
    end
    inherited lblCaption: TLabel
      Left = 798
      Width = 126
      Height = 16
      Caption = #1604#1610#1587#1578' '#1605#1575#1604#1610#1575#1578#1610' '#1581#1602#1608#1602
      ExplicitLeft = 798
      ExplicitWidth = 126
    end
    inherited lblBaseDate: TLabel
      Left = 439
      ExplicitLeft = 439
    end
  end
  inherited Panel3: TPanel
    Width = 970
    Height = 442
    ExplicitWidth = 970
    ExplicitHeight = 442
    object ToolBar1: TToolBar
      Left = 2
      Top = 2
      Width = 966
      Height = 36
      BorderWidth = 2
      ButtonHeight = 21
      ButtonWidth = 54
      Caption = 'ToolBar1'
      EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
      EdgeInner = esLowered
      ShowCaptions = True
      TabOrder = 1
      ExplicitWidth = 786
      object ToolButton1: TToolButton
        Tag = 1
        Left = 0
        Top = 0
        Caption = #1601#1585#1608#1585#1583#1610#1606
        Grouped = True
        ImageIndex = 0
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton2: TToolButton
        Tag = 2
        Left = 54
        Top = 0
        Caption = #1575#1585#1583#1610#1576#1607#1588#1578
        Grouped = True
        ImageIndex = 1
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton3: TToolButton
        Tag = 3
        Left = 108
        Top = 0
        Caption = #1582#1585#1583#1575#1583
        Grouped = True
        ImageIndex = 2
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton4: TToolButton
        Tag = 4
        Left = 162
        Top = 0
        Caption = #1578#1610#1585
        Grouped = True
        ImageIndex = 3
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton5: TToolButton
        Tag = 5
        Left = 216
        Top = 0
        Caption = #1605#1585#1583#1575#1583
        Grouped = True
        ImageIndex = 4
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton6: TToolButton
        Tag = 6
        Left = 270
        Top = 0
        Caption = #1588#1607#1585#1610#1608#1585
        Grouped = True
        ImageIndex = 5
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton7: TToolButton
        Tag = 7
        Left = 324
        Top = 0
        Caption = #1605#1607#1585
        Grouped = True
        ImageIndex = 6
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton8: TToolButton
        Tag = 8
        Left = 378
        Top = 0
        Caption = #1570#1576#1575#1606
        Grouped = True
        ImageIndex = 7
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton9: TToolButton
        Tag = 9
        Left = 432
        Top = 0
        Caption = #1570#1584#1585
        Grouped = True
        ImageIndex = 8
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton10: TToolButton
        Tag = 10
        Left = 486
        Top = 0
        Caption = #1583#1610
        Grouped = True
        ImageIndex = 9
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton11: TToolButton
        Tag = 11
        Left = 540
        Top = 0
        Caption = #1576#1607#1605#1606
        Grouped = True
        ImageIndex = 10
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton12: TToolButton
        Tag = 12
        Left = 594
        Top = 0
        Caption = #1575#1587#1601#1606#1583
        Grouped = True
        ImageIndex = 11
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
    end
    object DBGrid1: TCedarDbgrid
      Left = 2
      Top = 38
      Width = 966
      Height = 402
      Align = alClient
      Color = clCream
      DataSource = srcSalary
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
      HorzScrollBar.ExtraPanel.NavigatorButtons = [nbFirstEh, nbPriorEh, nbNextEh, nbLastEh, nbRefreshEh]
      HorzScrollBar.ExtraPanel.Visible = True
      IndicatorTitle.ShowDropDownSign = True
      IndicatorTitle.TitleButton = True
      OddRowColor = clWhite
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      RowHeight = 18
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
          FieldName = '_Radif'
          Footers = <>
          Width = 88
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PersonelNO'
          Footers = <>
          Width = 88
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'name_L1'
          Footers = <>
          Width = 88
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'name_L2'
          Footers = <>
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'lastName_L1'
          Footers = <>
          Width = 88
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'lastName_L2'
          Footers = <>
          Width = 60
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'fatherName_L1'
          Footers = <>
          Width = 88
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'fatherName_L2'
          Footers = <>
          Width = 86
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ContainTax'
          Footers = <>
          Width = 88
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TaxValue'
          Footers = <>
          Width = 88
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'SumWage'
          Footers = <>
          Width = 88
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object CmbArchiveID: TComboBox [3]
    Left = 16
    Top = 16
    Width = 126
    Height = 21
    Color = 13431799
    TabOrder = 3
    Text = 'CmbArchiveID'
    OnChange = CmbArchiveIDChange
  end
  inherited ActionList: TActionList
    Left = 224
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662' (F7)'
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actSendtoExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendtoExcelExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actFish: TAction
      Caption = #1601#1610#1588' '#1581#1602#1608#1602
      OnExecute = actFishExecute
    end
    object actFunctionShow: TAction
      Caption = #1606#1605#1575#1610#1588' '#1603#1575#1585#1603#1585#1583
      OnExecute = actFunctionShowExecute
    end
    object actPrint2: TAction
      Caption = #1670#1575#1662' 2'
      OnExecute = actPrint2Execute
    end
  end
  inherited ImageList1: TImageList
    Left = 336
  end
  object qrysalary: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = qrysalaryCalcFields
    Parameters = <
      item
        Name = 'ArchiveID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'YearID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Years'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Mounth'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 6
      end
      item
        Name = 'FromPersonelNo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'ToPersonelNo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 999999
      end
      item
        Name = 'StateFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'StateTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'TaxFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'TaxTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT     FixedCalculated.PersonelNO, PersonelInfo.name_L1, Per' +
        'sonelInfo.name_L2, PersonelInfo.lastName_L1, PersonelInfo.lastNa' +
        'me_L2, '
      
        '                      PersonelInfo.fatherName_L1, PersonelInfo.f' +
        'atherName_L2, FormsInfoPersonelState.InfoName_L1 AS StateName_L1' +
        ', '
      
        '                      SUM(CASE ShowlistKind WHEN 1 THEN price EL' +
        'SE 0 END) AS SumWage,'
      
        '                      SUM( case when ( ShowlistKind=11 and bedbe' +
        's=0 and CalCulateKind=12) then price else 0 end ) as ContainTax'
      ''
      
        '                      , SUM(CASE WHEN (ShowlistKind = 11 AND bed' +
        'bes = 2) THEN price ELSE 0 END) AS TaxValue'
      'FROM Pay.FixedCalculated LEFT OUTER JOIN'
      '                      Pay.PersonelInfo LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfoPersonelState ON' +
        ' PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID ' +
        'ON '
      
        '                      FixedCalculated.PersonelNO = PersonelInfo.' +
        'PersonelNo LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfo_Tax ON FormsInf' +
        'o_Tax.FormInfoID = PersonelInfo.TaxCalculationType'
      'WHERE     (FixedCalculated.ArchiveID = :ArchiveID) '
      
        'AND (FixedCalculated.YearID = :YearID  ) AND (FixedCalculated.Ye' +
        'ars = :Years  ) '
      'AND  (FixedCalculated.Mounth = :mounth) '
      
        'AND   (FixedCalculated.PersonelNO BETWEEN :FromPersonelNo AND :T' +
        'oPersonelNo) AND'
      
        '          (FormsInfoPersonelState.InfoID BETWEEN :StateFrom AND ' +
        ':StateTo)'
      
        '          and  (FormsInfo_Tax.InfoID BETWEEN :TaxFrom AND :TaxTo' +
        ')'
      ''
      
        '                      GROUP BY FixedCalculated.PersonelNO, Forms' +
        'InfoPersonelState.InfoName_L1, PersonelInfo.name_L1, PersonelInf' +
        'o.name_L2, PersonelInfo.lastName_L1,'
      
        '                      PersonelInfo.lastName_L2, PersonelInfo.fat' +
        'herName_L1, PersonelInfo.fatherName_L2')
    Left = 57
    Top = 161
    object qrysalary_Radif: TIntegerField
      DisplayLabel = #1585#1583#1610#1601
      FieldKind = fkCalculated
      FieldName = '_Radif'
      Calculated = True
    end
    object qrysalaryPersonelNO: TIntegerField
      Tag = 3
      DisplayLabel = #1588' '#1662#1585#1587#1606#1604#1610
      FieldName = 'PersonelNO'
    end
    object qrysalaryname_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605
      FieldName = 'name_L1'
      Size = 25
    end
    object qrysalaryname_L2: TStringField
      DisplayLabel = 'name'
      FieldName = 'name_L2'
      Size = 25
    end
    object qrysalarylastName_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
      FieldName = 'lastName_L1'
      Size = 40
    end
    object qrysalarylastName_L2: TStringField
      DisplayLabel = 'lastName'
      FieldName = 'lastName_L2'
      Size = 30
    end
    object qrysalaryfatherName_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1662#1583#1585
      FieldName = 'fatherName_L1'
      Size = 25
    end
    object qrysalaryfatherName_L2: TStringField
      DisplayLabel = 'fatherName'
      FieldName = 'fatherName_L2'
      Size = 25
    end
    object qrysalaryContainTax: TBCDField
      Tag = 3
      DisplayLabel = 'A'
      FieldName = 'ContainTax'
      currency = True
      Precision = 19
    end
    object qrysalaryTaxValue: TBCDField
      Tag = 3
      DisplayLabel = #1605#1575#1604#1610#1575#1578
      FieldName = 'TaxValue'
      currency = True
      Precision = 19
    end
    object qrysalarySumWage: TBCDField
      Tag = 3
      DisplayLabel = #1580#1605#1593' '#1605#1586#1575#1610#1575
      FieldName = 'SumWage'
      currency = True
      Precision = 19
    end
  end
  object srcSalary: TDataSource
    DataSet = qrysalary
    Left = 112
    Top = 184
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcSalary
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 456
    Top = 285
    object ppDBPipeline1ppField1: TppField
      FieldAlias = '_Radif'
      FieldName = '_Radif'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'PersonelNO'
      FieldName = 'PersonelNO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'name_L1'
      FieldName = 'name_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'name_L2'
      FieldName = 'name_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'lastName_L1'
      FieldName = 'lastName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'lastName_L2'
      FieldName = 'lastName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'fatherName_L1'
      FieldName = 'fatherName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'fatherName_L2'
      FieldName = 'fatherName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'ContainTax'
      FieldName = 'ContainTax'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'TaxValue'
      FieldName = 'TaxValue'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'SumWage'
      FieldName = 'SumWage'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
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
    Template.FileName = 'D:\Projects\Fara\Salary\Exe\Report\SalaryListTax.rtm'
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
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
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
    Left = 568
    Top = 288
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 25665
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        Shape = stRoundRect
        mmHeight = 8467
        mmLeft = 0
        mmTop = 17198
        mmWidth = 203300
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610
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
        mmLeft = 171980
        mmTop = 18521
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel43: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label25'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1575#1605
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
        mmLeft = 149490
        mmTop = 18256
        mmWidth = 21696
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
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 2381
        mmTop = 8731
        mmWidth = 6350
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel45: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        OnGetText = ppLabel45GetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 14
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7408
        mmLeft = 70908
        mmTop = 0
        mmWidth = 61383
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel46: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label36'
        OnGetText = ppLabel46GetText
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
        mmHeight = 6435
        mmLeft = 2381
        mmTop = 2381
        mmWidth = 11896
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1588#1605#1608#1604' '#1605#1575#1604#1610#1575#1578
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
        mmLeft = 60590
        mmTop = 17992
        mmWidth = 29000
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        OnGetText = ppLabel34GetText
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578' '#1605#1575#1604#1610#1575#1578#1610' '#1581#1602#1608#1602' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 8382
        mmLeft = 163535
        mmTop = 8467
        mmWidth = 36491
        BandType = 0
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line18'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 30163
        mmTop = 17198
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label23'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1575#1604#1610#1575#1578
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
        mmLeft = 30692
        mmTop = 18256
        mmWidth = 29000
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label24'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1605#1586#1575#1610#1575
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
        mmLeft = 794
        mmTop = 18256
        mmWidth = 29000
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 60061
        mmTop = 17198
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 89959
        mmTop = 17198
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 171450
        mmTop = 17198
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = #1585#1583#1610#1601
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
        mmLeft = 193940
        mmTop = 18785
        mmWidth = 8731
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
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
        mmLeft = 112448
        mmTop = 18256
        mmWidth = 36248
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1662#1583#1585
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
        mmLeft = 90488
        mmTop = 18256
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 111919
        mmTop = 17198
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 148961
        mmTop = 17198
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 193411
        mmTop = 17198
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand2: TppDetailBand
      Border.mmPadding = 0
      PrintCount = 28
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 0
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line21'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 89959
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line22'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 171450
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'name_L1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7144
        mmLeft = 149490
        mmTop = 0
        mmWidth = 21696
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'PersonelNO'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7673
        mmLeft = 171980
        mmTop = 0
        mmWidth = 21167
        BandType = 4
        LayerName = Foreground
      end
      object ppLine17: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line23'
        Border.mmPadding = 0
        Pen.Width = 2
        ParentHeight = True
        Position = lpRight
        Weight = 1.500000000000000000
        mmHeight = 7673
        mmLeft = 201613
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground
      end
      object ppLine24: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line24'
        Border.mmPadding = 0
        Pen.Width = 2
        ParentHeight = True
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 7673
        mmLeft = 0
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine31: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line32'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 60061
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine32: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line35'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 30163
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'SumWage'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7673
        mmLeft = 794
        mmTop = 0
        mmWidth = 29000
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'ContainTax'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7673
        mmLeft = 60590
        mmTop = 0
        mmWidth = 29000
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'TaxValue'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7673
        mmLeft = 30692
        mmTop = 0
        mmWidth = 29000
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'fatherName_L1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7144
        mmLeft = 90488
        mmTop = 0
        mmWidth = 21167
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'lastName_L1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7144
        mmLeft = 112448
        mmTop = 0
        mmWidth = 36248
        BandType = 4
        LayerName = Foreground
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 111919
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line101'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 148961
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 193411
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        Border.mmPadding = 0
        DataField = 'PersonelNO'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7673
        mmLeft = 193940
        mmTop = 0
        mmWidth = 8731
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 25665
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        Shape = stRoundRect
        mmHeight = 7938
        mmLeft = 0
        mmTop = 0
        mmWidth = 203300
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1603#1604':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7144
        mmLeft = 91017
        mmTop = 0
        mmWidth = 15081
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc7: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc7'
        Border.mmPadding = 0
        DataField = 'PersonelNO'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7673
        mmLeft = 155840
        mmTop = 0
        mmWidth = 18256
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc32: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc32'
        Border.mmPadding = 0
        DataField = 'ContainTax'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7673
        mmLeft = 60590
        mmTop = 0
        mmWidth = 29000
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1593#1583#1575#1583' '#1662#1585#1587#1606#1604': '#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7144
        mmLeft = 174361
        mmTop = 0
        mmWidth = 27517
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc36: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc36'
        Border.mmPadding = 0
        DataField = 'SumWage'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7789
        mmLeft = 794
        mmTop = 0
        mmWidth = 29000
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc38: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc38'
        Border.mmPadding = 0
        DataField = 'TaxValue'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7673
        mmLeft = 30692
        mmTop = 0
        mmWidth = 29000
        BandType = 8
        LayerName = Foreground
      end
      object ppLine76: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line76'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 30163
        mmTop = 0
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
      object ppRegion1: TppRegion
        DesignLayer = ppDesignLayer1
        UserName = 'Region1'
        Caption = 'Region1'
        mmHeight = 14552
        mmLeft = 0
        mmTop = 8202
        mmWidth = 203300
        BandType = 8
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
      end
      object ppRecFooterLine: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line51'
        Border.mmPadding = 0
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 7144
        mmWidth = 203300
        BandType = 8
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 60061
        mmTop = 0
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 89959
        mmTop = 0
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 30427
      mmPrintPosition = 0
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape3'
        Shape = stRoundRect
        mmHeight = 7938
        mmLeft = 0
        mmTop = 0
        mmWidth = 203300
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel49: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label27'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1603#1604':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7144
        mmLeft = 91017
        mmTop = 0
        mmWidth = 15081
        BandType = 7
        LayerName = Foreground
      end
      object ppLine58: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line58'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8996
        mmLeft = 89959
        mmTop = 0
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppLine60: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line60'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8996
        mmLeft = 30163
        mmTop = 0
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppLine61: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line61'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8996
        mmLeft = 60061
        mmTop = 0
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'SumWage'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7789
        mmLeft = 794
        mmTop = 0
        mmWidth = 29000
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'PersonelNO'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7673
        mmLeft = 154517
        mmTop = 0
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc5: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc5'
        Border.mmPadding = 0
        DataField = 'TaxValue'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7673
        mmLeft = 30692
        mmTop = 0
        mmWidth = 29000
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc4: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = '_TaxInvolved1'
        Border.mmPadding = 0
        DataField = 'ContainTax'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7673
        mmLeft = 60590
        mmTop = 0
        mmWidth = 29000
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1593#1583#1575#1583' '#1662#1585#1587#1606#1604': '#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7144
        mmLeft = 174361
        mmTop = 0
        mmWidth = 27517
        BandType = 7
        LayerName = Foreground
      end
      object ppRegion2: TppRegion
        DesignLayer = ppDesignLayer1
        UserName = 'Region2'
        Caption = 'Region2'
        mmHeight = 15875
        mmLeft = 0
        mmTop = 8202
        mmWidth = 203300
        BandType = 7
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
      end
      object ppRecFooterLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line31'
        Border.mmPadding = 0
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 7144
        mmWidth = 203300
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
  object PopPrint: TPopupMenu
    Left = 312
    Top = 341
    object F71: TMenuItem
      Action = actPrint
    end
    object N21: TMenuItem
      Action = actPrint2
    end
  end
end

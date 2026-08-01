inherited rptcheckSadereh_StateF: TrptcheckSadereh_StateF
  Left = 334
  Top = 75
  Caption = #1711#1586#1575#1585#1588' '#1670#1603#1607#1575#1610' '#1589#1575#1583#1585#1607' '#1576#1575#1606#1603#1607#1575
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 711
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 1
      ExplicitLeft = 695
      ExplicitTop = 8
      ExplicitHeight = 25
    end
    object BitBtn8: TBitBtn
      AlignWithMargins = True
      Left = 630
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actShow
      Align = alRight
      Caption = #1606#1605#1575#1610#1588
      TabOrder = 2
      ExplicitLeft = 618
      ExplicitTop = 8
      ExplicitHeight = 25
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 7
      Width = 75
      Height = 30
      Margins.Top = 6
      Action = actExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' '#1575#1603#1587#1604
      TabOrder = 3
      ExplicitLeft = 289
      ExplicitTop = 6
      ExplicitHeight = 25
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 166
      Top = 7
      Width = 75
      Height = 30
      Margins.Top = 6
      Action = actSearch_
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
      ExplicitLeft = 211
      ExplicitTop = 6
      ExplicitHeight = 25
    end
    object BitBtn7: TBitBtn
      AlignWithMargins = True
      Left = 85
      Top = 7
      Width = 75
      Height = 30
      Margins.Top = 6
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 5
      ExplicitLeft = 134
      ExplicitTop = 6
      ExplicitHeight = 25
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 468
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actPrint
      Align = alRight
      Caption = #1670#1575#1662
      TabOrder = 6
      ExplicitLeft = 464
      ExplicitTop = 8
      ExplicitHeight = 25
    end
    object BitBtn5: TBitBtn
      AlignWithMargins = True
      Left = 549
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actChang
      Align = alRight
      Caption = #1578#1594#1610#1610#1585' '#1608#1590#1593#1610#1578
      TabOrder = 7
      ExplicitLeft = 541
      ExplicitTop = 8
      ExplicitHeight = 25
    end
    object BitBtn9: TBitBtn
      AlignWithMargins = True
      Left = 328
      Top = 7
      Width = 75
      Height = 30
      Margins.Top = 6
      Action = actSpecial
      Align = alLeft
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
      TabOrder = 8
      ExplicitLeft = 367
      ExplicitTop = 6
      ExplicitHeight = 25
    end
  end
  inherited Panel2: TPanel
    object Label1: TLabel
      Left = 184
      Top = 12
      Width = 59
      Height = 13
      Caption = #1608#1590#1593#1610#1578' '#1670#1603#1607#1575
    end
    object CheckBox1: TCheckBox
      Left = 164
      Top = 32
      Width = 97
      Height = 17
      Alignment = taLeftJustify
      Caption = #1607#1605#1607' '#1575#1591#1604#1575#1593#1575#1578' '
      TabOrder = 0
      OnClick = CheckBox1Click
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 32
      Top = 8
      Width = 145
      Height = 21
      Hint = 'kind16'
      KeyField = 'Code'
      ListField = 'Name'
      ListSource = srcCheck
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
  end
  inherited Panel3: TPanel
    object DBGrid1: TCedarDbgrid
      Left = 2
      Top = 2
      Width = 786
      Height = 420
      Align = alClient
      Color = clCream
      DataSource = srcDetail
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
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      RowHeight = 18
      SearchPanel.Enabled = True
      SortLocal = True
      TabOrder = 0
      OnDblClick = actShowExecute
      OnKeyPress = DBGrid1KeyPress
      OnKeyUp = DBGrid1KeyUp
      OnMouseUp = DBGrid1MouseUp
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CheckNumber'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CheckDate'
          Footers = <>
          Width = 94
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ItemAmount'
          Footers = <>
          Width = 94
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'BankName'
          Footers = <>
          Width = 94
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ItemNote'
          Footers = <>
          Width = 94
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'nameCheckStae'
          Footers = <>
          Width = 94
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CustName'
          Footers = <>
          Width = 94
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Month'
          Footers = <>
          Width = 94
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  inherited ActionList: TActionList
    Left = 592
    inherited DataSetInsert1: TDataSetInsert [0]
    end
    inherited DataSetEdit1: TDataSetEdit [1]
    end
    inherited DataSetPost1: TDataSetPost [2]
    end
    inherited DataSetCancel1: TDataSetCancel [3]
    end
    inherited actshowChart: TAction [4]
    end
    object actFilter: TAction [5]
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actShow: TAction [6]
      Caption = #1606#1605#1575#1610#1588
      OnExecute = actShowExecute
    end
    object actChang: TAction [7]
      Caption = #1578#1594#1610#1610#1585' '#1608#1590#1593#1610#1578
      OnExecute = actChangExecute
    end
    object actPrint: TAction [8]
      Caption = #1670#1575#1662
      OnExecute = actPrintExecute
    end
    object actSpecial: TAction [9]
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
      OnExecute = actSpecialExecute
    end
    object actExcel: TAction [10]
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' '#1575#1603#1587#1604
      OnExecute = actExcelExecute
    end
    object actSort: TAction [11]
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited actExit: TAction [14]
    end
  end
  inherited ImageList1: TImageList
    Left = 648
  end
  object qryDetail: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = qryDetailAfterOpen
    AfterScroll = qryDetailAfterScroll
    DataSource = srcCheck
    Parameters = <
      item
        Name = 'FormType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 50
      end
      item
        Name = 'bankFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'bankTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 99999
      end
      item
        Name = 'dateFrom'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '0'
      end
      item
        Name = 'dateTo'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '9999/99/99'
      end
      item
        Name = 'CheckStateFrom'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 1
      end
      item
        Name = 'CheckStateTo'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 10
      end>
    SQL.Strings = (
      
        'SELECT  FormNumber,dbo.FormItems.CheckNumber, dbo.FormItems.Chec' +
        'kDate, dbo.FormItems.ItemAmount, dbo.FormItems.ItemNote, Kind.Na' +
        'me as nameCheckStae,'
      '        dbo.Forms.FormType, dbo.FormItems.CheckState, '
      ''
      'dbo.FormItems.FormID, FormItems.ServerID, FormItems.YearID'
      ', dbo.FormItems.FormItemID, dbo.Customers.CustName AS BankName,'
      
        '        Customers_1.CustName AS CustName, ABS(SUBSTRING(dbo.Form' +
        'Items.CheckDate, 6, 2)) AS Month,'
      
        'dbo.FormItems.ItemAmount as Amount,dbo.FormItems.FormItemID as r' +
        'ow'
      'FROM   (SELECT     Code, Name'
      '     FROM         LookUps'
      'WHERE     (Kind = 16)) Kind RIGHT OUTER JOIN'
      '      FormItems INNER JOIN'
      
        '      Forms ON FormItems.FormID = Forms.FormID AND FormItems.Ser' +
        'verID = Forms.ServerID AND FormItems.YearID = Forms.YearID INNER' +
        ' JOIN'
      
        '      Customers ON Forms.CustomerID1 = Customers.CustID LEFT OUT' +
        'ER JOIN'
      
        '      Customers Customers_1 ON FormItems.CustomerID2 = Customers' +
        '_1.CustID ON Kind.Code = FormItems.CheckState'
      ''
      
        'WHERE   ((dbo.Forms.FormType =:FormType ) or ( dbo.Forms.FormTyp' +
        'e =54)) AND'
      
        '        (dbo.Forms.CustomerID1 BETWEEN :bankFrom AND :bankTo) AN' +
        'D'
      
        '        (dbo.FormItems.CheckDate BETWEEN :dateFrom AND :dateTo) ' +
        'AND'
      
        '        (dbo.FormItems.CheckState between :CheckStateFrom and :C' +
        'heckStateTo)'
      'ORDER BY dbo.FormItems.CheckDate'
      ' ')
    Left = 224
    Top = 96
    object qryDetailCheckNumber: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1670#1603
      FieldName = 'CheckNumber'
      FixedChar = True
      Size = 15
    end
    object qryDetailCheckDate: TStringField
      Tag = 3
      DisplayLabel = #1587#1585#1585#1587#1610#1583' '#1670#1603
      FieldName = 'CheckDate'
      FixedChar = True
      Size = 10
    end
    object qryDetailItemAmount: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1670#1603
      FieldName = 'ItemAmount'
      currency = True
      Precision = 19
    end
    object qryDetailBankName: TStringField
      Tag = 3
      DisplayLabel = #1576#1575#1606#1603' '#1608' '#1588#1593#1576#1607
      FieldName = 'BankName'
      Size = 60
    end
    object qryDetailItemNote: TStringField
      Tag = 3
      DisplayLabel = #1588#1585#1581' '#1670#1603' '#1589#1575#1583#1585#1607
      FieldName = 'ItemNote'
      Size = 255
    end
    object qryDetailnameCheckStae: TStringField
      Tag = 3
      DisplayLabel = #1608#1590#1593#1610#1578' '#1670#1603
      FieldName = 'nameCheckStae'
      Size = 50
    end
    object qryDetailCustName: TStringField
      Tag = 3
      DisplayLabel = #1583#1585#1610#1575#1601#1578' '#1603#1606#1606#1583#1607' '#1670#1603
      FieldName = 'CustName'
      Size = 120
    end
    object qryDetailMonth: TFloatField
      DisplayLabel = #1605#1575#1607
      FieldName = 'Month'
      ReadOnly = True
    end
    object qryDetailFormType: TWordField
      FieldName = 'FormType'
    end
    object qryDetailCheckState: TWordField
      FieldName = 'CheckState'
    end
    object qryDetailFormID: TIntegerField
      FieldName = 'FormID'
    end
    object qryDetailFormItemID: TIntegerField
      FieldName = 'FormItemID'
    end
    object qryDetailAmount: TBCDField
      FieldName = 'Amount'
      currency = True
      Precision = 19
    end
    object qryDetailrow: TIntegerField
      FieldName = 'row'
    end
    object qryDetailFormNumber: TIntegerField
      FieldName = 'FormNumber'
    end
    object qryDetailServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryDetailYearID: TIntegerField
      FieldName = 'YearID'
    end
  end
  object srcDetail: TDataSource
    DataSet = qryDetail
    Left = 160
    Top = 101
  end
  object qrycheck: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterScroll = qrycheckAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT dbo.LookUps.*  FROM  dbo.LookUps where kind=16')
    Left = 288
    Top = 8
    object qrycheckLookUpID: TIntegerField
      FieldName = 'LookUpID'
    end
    object qrycheckCode: TWordField
      FieldName = 'Code'
    end
    object qrycheckName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object qrycheckKind: TWordField
      FieldName = 'Kind'
    end
    object qrycheckacc_CTopicCode2: TStringField
      FieldName = 'acc_CTopicCode2'
      Size = 12
    end
    object qrycheckacc_CTopicCode: TStringField
      FieldName = 'acc_CTopicCode'
      Size = 12
    end
    object qrycheckacc_DetailCode: TStringField
      FieldName = 'acc_DetailCode'
      Size = 12
    end
    object qrycheckacc_TopicCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576
      FieldName = 'acc_TopicCode'
    end
  end
  object srcCheck: TDataSource
    DataSet = qrycheck
    Left = 344
    Top = 8
  end
  object ppReport1: TppReport
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
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'D:\Projects\Fara\BSell\Exe\Report\rptcheckSadereh_State.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
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
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 48
    Top = 301
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 25400
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 17992
        mmWidth = 203200
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
        mmLeft = 75936
        mmTop = 1058
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCaption: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCaption'
        Border.mmPadding = 0
        Caption = ' '#1711#1586#1575#1585#1588' '#1670#1603#1607#1575#1610' '#1589#1575#1583#1585#1607' '#1576#1575#1606#1603#1607#1575
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
        mmLeft = 81870
        mmTop = 7408
        mmWidth = 39455
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
        mmLeft = 3440
        mmTop = 8996
        mmWidth = 12171
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
        mmLeft = 3440
        mmTop = 3704
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1587#1585#1585#1587#1610#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 189921
        mmTop = 18522
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 189393
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594' '#1670#1603
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 170392
        mmTop = 18521
        mmWidth = 18785
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 169863
        mmTop = 17991
        mmWidth = 2117
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1585#1581' '#1670#1603' '#1589#1575#1583#1585#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 87577
        mmTop = 18521
        mmWidth = 81756
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 0
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1576#1575#1606#1603' '#1608' '#1588#1593#1576#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 41275
        mmTop = 18521
        mmWidth = 44979
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 0
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1670#1603
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 23019
        mmTop = 18522
        mmWidth = 16933
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 0
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1608#1590#1593#1610#1578' '#1670#1603
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 794
        mmTop = 18521
        mmWidth = 20902
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line16'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 0
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line18'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 86784
        mmTop = 17992
        mmWidth = 2117
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line20'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 40481
        mmTop = 17992
        mmWidth = 2117
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line201'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 22225
        mmTop = 17991
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6615
        mmLeft = 200290
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
        mmHeight = 6615
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
        DataField = 'CheckDate'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 189971
        mmTop = 0
        mmWidth = 12700
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6615
        mmLeft = 189442
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'ItemAmount'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 170392
        mmTop = 0
        mmWidth = 18785
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6615
        mmLeft = 169863
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'BankName'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 41275
        mmTop = 0
        mmWidth = 44979
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'ItemNote'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 87577
        mmTop = 0
        mmWidth = 81756
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6615
        mmLeft = 0
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'CheckNumber'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 23019
        mmTop = 0
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line15'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 0
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'nameCheckStae'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 794
        mmTop = 0
        mmWidth = 20902
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line17'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6615
        mmLeft = 0
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line19'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6615
        mmLeft = 86784
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line21'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6615
        mmLeft = 40481
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line22'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6615
        mmLeft = 22225
        mmTop = 0
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 11377
      mmPrintPosition = 0
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
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
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape3'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
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
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 192088
        mmTop = 529
        mmWidth = 10054
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        Border.mmPadding = 0
        DataField = 'ItemAmount'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 167746
        mmTop = 529
        mmWidth = 21431
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'Month'
      DataPipeline = ppDBPipeline1
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 7408
        mmPrintPosition = 0
        object ppShape2: TppShape
          DesignLayer = ppDesignLayer1
          UserName = 'Shape2'
          mmHeight = 7408
          mmLeft = 0
          mmTop = 0
          mmWidth = 203200
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel4: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label4'
          Border.mmPadding = 0
          Caption = #1580#1605#1593' '#8207#1605#1575#1607' '
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 6085
          mmLeft = 186532
          mmTop = 529
          mmWidth = 16404
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc4'
          Border.mmPadding = 0
          DataField = 'ItemAmount'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0;(#,0)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'badr'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6350
          mmLeft = 138642
          mmTop = 529
          mmWidth = 21960
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText7'
          Border.mmPadding = 0
          DataField = 'Month'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'badr'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6350
          mmLeft = 171450
          mmTop = 529
          mmWidth = 12700
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
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcDetail
    UserName = 'DBPipeline1'
    Left = 48
    Top = 357
  end
  object PopChange: TPopupMenu
    AutoHotkeys = maManual
    Left = 480
    Top = 325
  end
end

inherited rptHavalehF: TrptHavalehF
  Left = 343
  Top = 182
  Caption = #1711#1586#1575#1585#1588' '#1605#1575#1578#1585#1610#1587#1610' '#1582#1585#1608#1580' '#1603#1575#1604#1575' '#1576#1585#1581#1587#1576' '#1605#1588#1578#1585#1610
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    DesignSize = (
      790
      41)
    object BitBtn2: TBitBtn
      Left = 626
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Anchors = [akRight, akBottom]
      Caption = #1670#1575#1662
      TabOrder = 1
    end
    object BitBtn7: TBitBtn
      Left = 707
      Top = 6
      Width = 75
      Height = 25
      Action = actFilter
      Anchors = [akRight, akBottom]
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 2
    end
    object BitBtn6: TBitBtn
      Left = 240
      Top = 8
      Width = 75
      Height = 25
      Action = actExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' '#1575#1603#1587#1604
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      Left = 163
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
    end
    object BitBtn3: TBitBtn
      Left = 86
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 5
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
      DataSource = srcRecipt
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
      RowHeight = 18
      SearchPanel.Enabled = True
      SortLocal = True
      TabOrder = 0
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      object RowDetailData: TRowDetailPanelControlEh
      end
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
    object actFilter: TAction [4]
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    inherited DataSetDelete1_: TDataSetDelete [5]
    end
    object actPrint: TAction [6]
      Caption = #1670#1575#1662
      OnExecute = actPrintExecute
    end
    object actExcel: TAction [7]
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' '#1575#1603#1587#1604
      OnExecute = actExcelExecute
    end
    object actSort: TAction [8]
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited actExit: TAction [10]
    end
  end
  object qryRecipt: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PersonIDfrom'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PersonIDto'
        DataType = ftString
        Size = 9
        Value = '999999999'
      end
      item
        Name = 'ReciptDatefrom'
        DataType = ftString
        Size = 10
        Value = '0000/00/00'
      end
      item
        Name = 'ReciptDateto'
        DataType = ftString
        Size = 10
        Value = '9999/99/99'
      end>
    SQL.Strings = (
      
        'select dbo.Customers.CustID,dbo.Customers.CustName,dbo.Customers' +
        '.Address'
      ',funALL.StuffCode0'
      ',funALL.StuffCode1'
      ',funALL.StuffCode2'
      ',funALL.StuffCode3'
      ',funALL.StuffCode4'
      ',funALL.StuffCode5'
      ',funALL.StuffCode6'
      ',funALL.StuffCode7'
      ',funALL.StuffCode8'
      ',funALL.StuffCode9'
      ',funALL.StuffCode10'
      ',funALL.StuffCode11'
      ',funALL.StuffCode12'
      ',funALL.StuffCode13'
      ',funALL.StuffCode14'
      ',funALL.StuffCode15'
      ',funALL.StuffCode16'
      ',funALL.StuffCode17'
      ',funALL.StuffCode18'
      ',funALL.StuffCode19'
      ',ReciptNumber,ReciptDate'
      
        'from ( SELECT   dbo.Recipts.PersonID1 ,dbo.Recipts.ReciptDate as' +
        ' ReciptDate  , dbo.Recipts.ReciptNumber as ReciptNumber'
      
        ',sum(case when (dbo.ReciptItems.StuffCode=111) then dbo.ReciptIt' +
        'ems.OutputEntity else 0 end) as StuffCode0'
      
        ',sum(case when (dbo.ReciptItems.StuffCode=112) then dbo.ReciptIt' +
        'ems.OutputEntity else 0 end) as StuffCode1'
      
        ',sum(case when (dbo.ReciptItems.StuffCode=121) then dbo.ReciptIt' +
        'ems.OutputEntity else 0 end) as StuffCode2'
      
        ',sum(case when (dbo.ReciptItems.StuffCode=122) then dbo.ReciptIt' +
        'ems.OutputEntity else 0 end) as StuffCode3'
      
        ',sum(case when (dbo.ReciptItems.StuffCode=131) then dbo.ReciptIt' +
        'ems.OutputEntity else 0 end) as StuffCode4'
      
        ',sum(case when (dbo.ReciptItems.StuffCode=132) then dbo.ReciptIt' +
        'ems.OutputEntity else 0 end) as StuffCode5'
      
        ',sum(case when (dbo.ReciptItems.StuffCode=141) then dbo.ReciptIt' +
        'ems.OutputEntity else 0 end) as StuffCode6'
      
        ',sum(case when (dbo.ReciptItems.StuffCode=142) then dbo.ReciptIt' +
        'ems.OutputEntity else 0 end) as StuffCode7'
      
        ',sum(case when (dbo.ReciptItems.StuffCode=151) then dbo.ReciptIt' +
        'ems.OutputEntity else 0 end) as StuffCode8'
      
        ',sum(case when (dbo.ReciptItems.StuffCode=152) then dbo.ReciptIt' +
        'ems.OutputEntity else 0 end) as StuffCode9'
      
        ',sum(case when (dbo.ReciptItems.StuffCode=211) then dbo.ReciptIt' +
        'ems.OutputEntity else 0 end) as StuffCode10'
      
        ',sum(case when (dbo.ReciptItems.StuffCode=212) then dbo.ReciptIt' +
        'ems.OutputEntity else 0 end) as StuffCode11'
      
        ',sum(case when (dbo.ReciptItems.StuffCode=221) then dbo.ReciptIt' +
        'ems.OutputEntity else 0 end) as StuffCode12'
      
        ',sum(case when (dbo.ReciptItems.StuffCode=222) then dbo.ReciptIt' +
        'ems.OutputEntity else 0 end) as StuffCode13'
      
        ',sum(case when (dbo.ReciptItems.StuffCode=231) then dbo.ReciptIt' +
        'ems.OutputEntity else 0 end) as StuffCode14'
      
        ',sum(case when (dbo.ReciptItems.StuffCode=232) then dbo.ReciptIt' +
        'ems.OutputEntity else 0 end) as StuffCode15'
      
        ',sum(case when (dbo.ReciptItems.StuffCode=241) then dbo.ReciptIt' +
        'ems.OutputEntity else 0 end) as StuffCode16'
      
        ',sum(case when (dbo.ReciptItems.StuffCode=242) then dbo.ReciptIt' +
        'ems.OutputEntity else 0 end) as StuffCode17'
      
        ',sum(case when (dbo.ReciptItems.StuffCode=251) then dbo.ReciptIt' +
        'ems.OutputEntity else 0 end) as StuffCode18'
      
        ',sum(case when (dbo.ReciptItems.StuffCode=252) then dbo.ReciptIt' +
        'ems.OutputEntity else 0 end) as StuffCode19'
      'FROM dbo.ReciptItems INNER JOIN'
      
        'dbo.Customers ON dbo.ReciptItems.PersonID1 = dbo.Customers.CustI' +
        'D INNER JOIN'
      
        'dbo.Recipts ON dbo.ReciptItems.ReciptID = dbo.Recipts.ReciptID I' +
        'NNER JOIN'
      
        'dbo.ReciptTypes ON dbo.Recipts.ReciptType = dbo.ReciptTypes.Reci' +
        'ptType'
      'where'
      ' (dbo.Recipts.ReciptType in (9,11 ) )and'
      
        ' (dbo.Recipts.PersonID1 between :PersonIDfrom and :PersonIDto) a' +
        'nd'
      
        ' (dbo.Recipts.ReciptDate between :ReciptDatefrom and :ReciptDate' +
        'to)'
      
        'GROUP BY dbo.Recipts.PersonID1, dbo.Recipts.ReciptDate, dbo.Reci' +
        'pts.ReciptNumber'
      
        ')funALL INNER JOIN dbo.Customers ON dbo.Customers.CustID = FunAL' +
        'L.PersonID1'
      'order by dbo.Customers.CustID')
    Left = 376
    Top = 109
  end
  object srcRecipt: TDataSource
    DataSet = qryRecipt
    Left = 448
    Top = 109
  end
  object qryStuff: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT     c_StuffCode , c_StuffName'
      'FROM         dbo.StuffCoding'
      '')
    Left = 320
    Top = 8
    object qryStuffc_StuffCode: TLargeintField
      FieldName = 'c_StuffCode'
    end
    object qryStuffc_StuffName: TStringField
      FieldName = 'c_StuffName'
      Size = 70
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
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
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\Projects\Fara\BSell\Exe\Report\havaleh16column.rtm'
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
    Left = 576
    Top = 336
    Version = '18.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand3: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 38100
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        mmHeight = 13229
        mmLeft = 0
        mmTop = 24871
        mmWidth = 284427
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Caption = #1605#1588#1582#1589#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5376
        mmLeft = 250296
        mmTop = 29633
        mmWidth = 21696
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Caption = 'Label1'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5821
        mmLeft = 1588
        mmTop = 16140
        mmWidth = 8202
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable3'
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5821
        mmLeft = 1588
        mmTop = 10319
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label25'
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7324
        mmLeft = 109364
        mmTop = 4498
        mmWidth = 62526
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label26'
        Caption = #1711#1586#1575#1585#1588' '#1605#1575#1578#1585#1610#1587#1610' '#1582#1585#1608#1580' '#1603#1575#1604#1575' '#1576#1585#1581#1587#1576' '#1605#1588#1578#1585#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6604
        mmLeft = 110380
        mmTop = 11113
        mmWidth = 60494
        BandType = 0
        LayerName = Foreground
      end
      object StuffCode8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'l16StuffCode8'
        AutoSize = False
        Caption = 'l16StuffCode8'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5376
        mmLeft = 82021
        mmTop = 25929
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object StuffCode6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'l16StuffCode6'
        AutoSize = False
        Caption = 'l16StuffCode6'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5376
        mmLeft = 104246
        mmTop = 26194
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object StuffCode4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'l16StuffCode4'
        AutoSize = False
        Caption = 'l16StuffCode4'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5376
        mmLeft = 126471
        mmTop = 26194
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object StuffCode2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'l16StuffCode2'
        AutoSize = False
        Caption = 'l16StuffCode2'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5376
        mmLeft = 148696
        mmTop = 25929
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object StuffCode0: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'l16StuffCode0'
        AutoSize = False
        Caption = 'l16StuffCode0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5376
        mmLeft = 170921
        mmTop = 25929
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel38: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        AutoSize = False
        Caption = #1603#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5376
        mmLeft = 273051
        mmTop = 29633
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground
      end
      object StuffCode12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'l16StuffCode12'
        AutoSize = False
        Caption = 'StuffCode12'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5376
        mmLeft = 37306
        mmTop = 25929
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object StuffCode10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'l16StuffCode10'
        AutoSize = False
        Caption = 'StuffCode10'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5376
        mmLeft = 59796
        mmTop = 25929
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object StuffCode14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'l16StuffCode14'
        AutoSize = False
        Caption = 'StuffCode14'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5376
        mmLeft = 15081
        mmTop = 25929
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object StuffCode1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'l16StuffCode1'
        AutoSize = False
        Caption = 'l16StuffCode1'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5376
        mmLeft = 170921
        mmTop = 32279
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object StuffCode3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'StuffCode3'
        AutoSize = False
        Caption = 'l16StuffCode3'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5376
        mmLeft = 148696
        mmTop = 32279
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object StuffCode5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'StuffCode5'
        AutoSize = False
        Caption = 'l16StuffCode5'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5376
        mmLeft = 126471
        mmTop = 32279
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object StuffCode7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'StuffCode7'
        AutoSize = False
        Caption = 'l16StuffCode7'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5376
        mmLeft = 104246
        mmTop = 32279
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object StuffCode11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'StuffCode11'
        AutoSize = False
        Caption = 'StuffCode11'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5376
        mmLeft = 59796
        mmTop = 32279
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object StuffCode13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'StuffCode13'
        AutoSize = False
        Caption = 'StuffCode13'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5376
        mmLeft = 37306
        mmTop = 32279
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object StuffCode15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'StuffCode15'
        AutoSize = False
        Caption = 'StuffCode15'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5376
        mmLeft = 15081
        mmTop = 32279
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object StuffCode9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'StuffCode9'
        AutoSize = False
        Caption = 'l16StuffCode9'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5376
        mmLeft = 82021
        mmTop = 32279
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12965
        mmLeft = 36777
        mmTop = 25135
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12965
        mmLeft = 59002
        mmTop = 25135
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12965
        mmLeft = 81492
        mmTop = 24871
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12965
        mmLeft = 103717
        mmTop = 25135
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12965
        mmLeft = 125942
        mmTop = 24871
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12965
        mmLeft = 148167
        mmTop = 25135
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object ppLine18: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12965
        mmLeft = 170392
        mmTop = 25135
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object ppLine19: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12965
        mmLeft = 192617
        mmTop = 24871
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object ppLine20: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12965
        mmLeft = 249767
        mmTop = 24871
        mmWidth = 4233
        BandType = 0
        LayerName = Foreground
      end
      object ppLine21: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line15'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12965
        mmLeft = 272257
        mmTop = 24871
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 31750
        mmWidth = 192617
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        AutoSize = False
        Caption = #1581#1608#1575#1604#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5376
        mmLeft = 529
        mmTop = 26194
        mmWidth = 13758
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        AutoSize = False
        Caption = #1578#1575#1585#1610#1582
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5376
        mmLeft = 529
        mmTop = 30956
        mmWidth = 14023
        BandType = 0
        LayerName = Foreground
      end
      object ppLine30: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line30'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12965
        mmLeft = 14552
        mmTop = 25135
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label28'
        Caption = 'Label28'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 270934
        mmTop = 9790
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label29'
        Caption = 'Label29'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 271463
        mmTop = 16404
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground
      end
      object ppLine141: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line141'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12965
        mmLeft = 231511
        mmTop = 24871
        mmWidth = 4233
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label22'
        AutoSize = False
        Caption = #1711#1575#1608
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 232040
        mmTop = 29369
        mmWidth = 17992
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel40: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label302'
        AutoSize = False
        Caption = #1711#1608#1587#1601#1606#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 212725
        mmTop = 29369
        mmWidth = 17992
        BandType = 0
        LayerName = Foreground
      end
      object ppLine142: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line142'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12965
        mmLeft = 212196
        mmTop = 24871
        mmWidth = 4233
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel41: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label41'
        AutoSize = False
        Caption = #1588#1578#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 193411
        mmTop = 28840
        mmWidth = 17992
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 14288
      mmPrintPosition = 0
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        DataField = 'CustID'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5556
        mmLeft = 272786
        mmTop = 2910
        mmWidth = 11377
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
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
        mmHeight = 5027
        mmLeft = 250296
        mmTop = 3175
        mmWidth = 21696
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTX0: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBTX0'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 170657
        mmTop = 0
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTX2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBTX2'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 148432
        mmTop = 0
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTX4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBTX4'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 126207
        mmTop = 0
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTX6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBTX6'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 103981
        mmTop = 0
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTX8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBTX8'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 81756
        mmTop = 0
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTX14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBTX14'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 14817
        mmTop = 0
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTX12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBTX12'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 37042
        mmTop = 0
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTX10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBTX10'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 59531
        mmTop = 0
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTX1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBTX1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 170657
        mmTop = 7408
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTX3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBTX3'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 148432
        mmTop = 7408
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTX5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBTX5'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 126207
        mmTop = 7408
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTX7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBTX7'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 103981
        mmTop = 7408
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTX9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBTX9'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 81756
        mmTop = 6879
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTX15: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBTX15'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 14817
        mmTop = 7408
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTX13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBTX13'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 37042
        mmTop = 7408
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTX11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBTX11'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 59531
        mmTop = 7408
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 36777
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line16'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 0
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line17'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 59002
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line18'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 81492
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line19'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 103717
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine28: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line20'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 125942
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine29: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line21'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 148167
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine31: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line22'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 170392
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine32: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line23'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 192617
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine33: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line24'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 249767
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine34: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line25'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 272257
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine35: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line26'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 284163
        mmTop = 0
        mmWidth = 529
        BandType = 4
        LayerName = Foreground
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line28'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 265
        mmTop = 6879
        mmWidth = 192617
        BandType = 4
        LayerName = Foreground
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line29'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 14023
        mmWidth = 284428
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        DataField = 'ReciptNumber'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5556
        mmLeft = 529
        mmTop = 0
        mmWidth = 13758
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        DataField = 'ReciptDate'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5556
        mmLeft = 529
        mmTop = 7408
        mmWidth = 13758
        BandType = 4
        LayerName = Foreground
      end
      object ppLine38: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line31'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 14552
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine77: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line77'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 231511
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine143: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line143'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 212196
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 14552
      mmPrintPosition = 0
      object ppShape8: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape8'
        mmHeight = 14552
        mmLeft = 0
        mmTop = 0
        mmWidth = 284428
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCLCF4: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCF4'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 126736
        mmTop = 0
        mmWidth = 21167
        BandType = 8
        LayerName = Foreground
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 81492
        mmTop = 0
        mmWidth = 3704
        BandType = 8
        LayerName = Foreground
      end
      object ppLine111: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line111'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 103717
        mmTop = 0
        mmWidth = 3704
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCLCF3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCF3'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 148696
        mmTop = 7144
        mmWidth = 21431
        BandType = 8
        LayerName = Foreground
      end
      object ppLine129: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line129'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 125942
        mmTop = 0
        mmWidth = 3704
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCLCF2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCF2'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 148696
        mmTop = 0
        mmWidth = 21431
        BandType = 8
        LayerName = Foreground
      end
      object ppLine130: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line130'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 148167
        mmTop = 0
        mmWidth = 3704
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCLCF1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCF1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 170921
        mmTop = 7144
        mmWidth = 21431
        BandType = 8
        LayerName = Foreground
      end
      object ppLine131: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line131'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 170392
        mmTop = 0
        mmWidth = 3704
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCLCF0: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCF0'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 170921
        mmTop = 0
        mmWidth = 21431
        BandType = 8
        LayerName = Foreground
      end
      object ppLine132: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line132'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 192617
        mmTop = 0
        mmWidth = 3704
        BandType = 8
        LayerName = Foreground
      end
      object ppLine133: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line133'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 192617
        mmTop = 0
        mmWidth = 3704
        BandType = 8
        LayerName = Foreground
      end
      object ppLine134: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line134'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 192617
        mmTop = 0
        mmWidth = 3704
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel39: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label39'
        Caption = #1580#1605#1593' '#1603#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 273051
        mmTop = 0
        mmWidth = 9525
        BandType = 8
        LayerName = Foreground
      end
      object ppLine135: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line135'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 192617
        mmTop = 0
        mmWidth = 3704
        BandType = 8
        LayerName = Foreground
      end
      object ppLine136: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line136'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 36777
        mmTop = 0
        mmWidth = 3704
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCLCF12: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCF12'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 37571
        mmTop = 0
        mmWidth = 20902
        BandType = 8
        LayerName = Foreground
      end
      object ppLine137: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line137'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 59002
        mmTop = 0
        mmWidth = 3704
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCLCF10: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCF10'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 59531
        mmTop = 0
        mmWidth = 21431
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCLCF14: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCF14'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 14817
        mmTop = 0
        mmWidth = 21431
        BandType = 8
        LayerName = Foreground
      end
      object ppLine138: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line138'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 13494
        mmLeft = 14552
        mmTop = 0
        mmWidth = 3704
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCLCF15: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCF15'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 14817
        mmTop = 7144
        mmWidth = 21431
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCLCF13: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCF13'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 37571
        mmTop = 7144
        mmWidth = 20902
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCLCF11: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCF11'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 59267
        mmTop = 7144
        mmWidth = 21431
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCLCF5: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCF5'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 126736
        mmTop = 7144
        mmWidth = 21167
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCLCF6: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCF6'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 104511
        mmTop = 0
        mmWidth = 21167
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCLCF7: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCF7'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 104511
        mmTop = 7144
        mmWidth = 21167
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCLCF8: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCF8'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 82021
        mmTop = 0
        mmWidth = 21431
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCLCF9: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCF9'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 82021
        mmTop = 7144
        mmWidth = 21431
        BandType = 8
        LayerName = Foreground
      end
      object ppLine139: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line139'
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 14552
        mmTop = 6879
        mmWidth = 178065
        BandType = 8
        LayerName = Foreground
      end
      object ppLine144: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line144'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 249767
        mmTop = 0
        mmWidth = 3704
        BandType = 8
        LayerName = Foreground
      end
      object ppLine145: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line145'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 231511
        mmTop = 0
        mmWidth = 3704
        BandType = 8
        LayerName = Foreground
      end
      object ppLine146: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line146'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 212196
        mmTop = 0
        mmWidth = 3704
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand3: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 14552
      mmPrintPosition = 0
      object ppShape9: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape9'
        mmHeight = 14552
        mmLeft = 0
        mmTop = 0
        mmWidth = 284428
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCLCS4: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCS4'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 125942
        mmTop = 794
        mmWidth = 21167
        BandType = 7
        LayerName = Foreground
      end
      object ppLine147: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line147'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14552
        mmLeft = 81492
        mmTop = 0
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground
      end
      object ppLine148: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line148'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14552
        mmLeft = 103717
        mmTop = 0
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCLCS3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCS3'
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
        mmLeft = 148696
        mmTop = 7938
        mmWidth = 21431
        BandType = 7
        LayerName = Foreground
      end
      object ppLine149: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line149'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14552
        mmLeft = 125942
        mmTop = 0
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCLCS2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCS2'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 148696
        mmTop = 794
        mmWidth = 21431
        BandType = 7
        LayerName = Foreground
      end
      object ppLine150: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1301'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14552
        mmLeft = 148167
        mmTop = 0
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCLCS1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc301'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 170921
        mmTop = 7938
        mmWidth = 21431
        BandType = 7
        LayerName = Foreground
      end
      object ppLine151: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line151'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14552
        mmLeft = 170392
        mmTop = 0
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCLCS0: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCS0'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 170921
        mmTop = 794
        mmWidth = 21431
        BandType = 7
        LayerName = Foreground
      end
      object ppLine153: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line153'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14552
        mmLeft = 192617
        mmTop = 0
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground
      end
      object ppLine156: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line156'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14552
        mmLeft = 36777
        mmTop = 0
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCLCS12: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCS12'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 37306
        mmTop = 794
        mmWidth = 20902
        BandType = 7
        LayerName = Foreground
      end
      object ppLine157: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line157'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14552
        mmLeft = 59002
        mmTop = 0
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCLCS10: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCS10'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 59267
        mmTop = 794
        mmWidth = 21431
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCLCS14: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCS14'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 14817
        mmTop = 794
        mmWidth = 21431
        BandType = 7
        LayerName = Foreground
      end
      object ppLine158: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line158'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14552
        mmLeft = 14552
        mmTop = 0
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCLCS15: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCS15'
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
        mmLeft = 14817
        mmTop = 7938
        mmWidth = 21431
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCLCS13: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCS13'
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
        mmLeft = 37306
        mmTop = 7938
        mmWidth = 20902
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCLCS11: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCS11'
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
        mmLeft = 59267
        mmTop = 7938
        mmWidth = 21431
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCLCS5: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCS5'
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
        mmLeft = 125942
        mmTop = 7938
        mmWidth = 21167
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCLCS6: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCS6'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 104246
        mmTop = 794
        mmWidth = 21167
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCLCS7: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc401'
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
        mmLeft = 104246
        mmTop = 7938
        mmWidth = 21167
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCLCS8: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCS8'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 81756
        mmTop = 794
        mmWidth = 21431
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCLCS9: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCLCS9'
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
        mmLeft = 81756
        mmTop = 7938
        mmWidth = 21431
        BandType = 7
        LayerName = Foreground
      end
      object ppLine159: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line159'
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 14817
        mmTop = 7408
        mmWidth = 177800
        BandType = 7
        LayerName = Foreground
      end
      object ppLine160: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line160'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14552
        mmLeft = 249767
        mmTop = 0
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground
      end
      object ppLine161: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line161'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14552
        mmLeft = 231511
        mmTop = 0
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground
      end
      object ppLine162: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line162'
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 14552
        mmLeft = 212196
        mmTop = 0
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel42: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label42'
        Caption = #1580#1605#1593' '#1603#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 275167
        mmTop = 794
        mmWidth = 9525
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
    DataSource = srcRecipt
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 704
    Top = 333
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'CustID'
      FieldName = 'CustID'
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
      FieldAlias = 'Address'
      FieldName = 'Address'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'StuffCode0'
      FieldName = 'StuffCode0'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'StuffCode1'
      FieldName = 'StuffCode1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'StuffCode2'
      FieldName = 'StuffCode2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'StuffCode3'
      FieldName = 'StuffCode3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'StuffCode4'
      FieldName = 'StuffCode4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'StuffCode5'
      FieldName = 'StuffCode5'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'StuffCode6'
      FieldName = 'StuffCode6'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'StuffCode7'
      FieldName = 'StuffCode7'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'StuffCode8'
      FieldName = 'StuffCode8'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'StuffCode9'
      FieldName = 'StuffCode9'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'StuffCode10'
      FieldName = 'StuffCode10'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'StuffCode11'
      FieldName = 'StuffCode11'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'StuffCode12'
      FieldName = 'StuffCode12'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'StuffCode13'
      FieldName = 'StuffCode13'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'StuffCode14'
      FieldName = 'StuffCode14'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'StuffCode15'
      FieldName = 'StuffCode15'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'StuffCode16'
      FieldName = 'StuffCode16'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'StuffCode17'
      FieldName = 'StuffCode17'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = 'StuffCode18'
      FieldName = 'StuffCode18'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = 'StuffCode19'
      FieldName = 'StuffCode19'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField24: TppField
      FieldAlias = 'ReciptNumber'
      FieldName = 'ReciptNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField25: TppField
      FieldAlias = 'ReciptDate'
      FieldName = 'ReciptDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
  end
  object PopPrint: TPopupMenu
    AutoHotkeys = maManual
    Left = 560
    Top = 405
    object N51: TMenuItem
      Caption = #1670#1575#1662' 5 '#1587#1578#1608#1606#1610
      OnClick = N51Click
    end
    object N52: TMenuItem
      Caption = #1670#1575#1662' 8'#1587#1578#1608#1606#1610
      OnClick = N52Click
    end
    object N53: TMenuItem
      Caption = #1670#1575#1662' 16'#1587#1578#1608#1606#1610
      OnClick = N53Click
    end
  end
end

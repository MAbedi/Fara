inherited ProductionForecastsF: TProductionForecastsF
  Caption = #1578#1581#1604#1610#1604' '#1605#1610#1586#1575#1606' '#1578#1608#1604#1610#1583' '#1576#1585' '#1581#1587#1576' '#1601#1585#1605#1608#1604' '#1587#1575#1582#1578' '#1608' '#1605#1608#1580#1608#1583#1610
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    DesignSize = (
      790
      41)
    object btnSort: TBitBtn
      Left = 95
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 1
    end
    object btnSort1: TBitBtn
      Left = 172
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 2
    end
    object btnSearch_: TBitBtn
      Left = 250
      Top = 8
      Width = 75
      Height = 25
      Action = actExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607'Excel'
      TabOrder = 3
    end
    object btnPrint: TBitBtn
      Left = 709
      Top = 6
      Width = 75
      Height = 25
      Action = actPrint
      Anchors = [akTop, akRight]
      Caption = #1670#1575#1662
      TabOrder = 4
    end
    object BitBtn2: TBitBtn
      Left = 629
      Top = 7
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
      TabOrder = 5
      OnClick = BitBtn2Click
    end
  end
  inherited Panel3: TPanel
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 786
      Height = 44
      Align = alTop
      TabOrder = 0
      inline frmProduction1: TfrmProduction
        Left = 406
        Top = 1
        Width = 379
        Height = 42
        Align = alRight
        TabOrder = 0
        ExplicitLeft = 406
        ExplicitTop = 1
        ExplicitHeight = 42
        inherited SpeedButton1: TSpeedButton
          Height = 23
          OnClick = frmProduction1SpeedButton1Click
          ExplicitHeight = 20
        end
        inherited Label1: TLabel
          Width = 82
          Height = 20
        end
        inherited Label2: TLabel
          Height = 20
        end
        inherited Label3: TLabel
          Top = 29
          Width = 379
          ExplicitLeft = 376
          ExplicitTop = 29
        end
        inherited MaskEdit1: TMaskEdit
          Height = 23
        end
        inherited MaskEdit2: TMaskEdit
          Height = 23
        end
      end
      inline frmProduction4: TfrmProduction
        Left = 0
        Top = 0
        Width = 379
        Height = 43
        TabOrder = 1
        inherited Label1: TLabel
          Width = 82
          Height = 21
        end
        inherited Label2: TLabel
          Height = 21
        end
        inherited Label3: TLabel
          Width = 379
          ExplicitLeft = 376
        end
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 46
      Width = 786
      Height = 44
      Align = alTop
      TabOrder = 2
      inline frmProduction2: TfrmProduction
        Left = 406
        Top = 1
        Width = 379
        Height = 42
        Align = alRight
        TabOrder = 0
        ExplicitLeft = 406
        ExplicitTop = 1
        ExplicitHeight = 42
        inherited SpeedButton1: TSpeedButton
          Height = 23
          ExplicitHeight = 20
        end
        inherited Label1: TLabel
          Width = 82
          Height = 20
        end
        inherited Label2: TLabel
          Height = 20
        end
        inherited Label3: TLabel
          Top = 29
          Width = 379
          ExplicitLeft = 376
          ExplicitTop = 29
        end
        inherited MaskEdit1: TMaskEdit
          Height = 23
        end
        inherited MaskEdit2: TMaskEdit
          Height = 23
        end
      end
      inline frmProduction5: TfrmProduction
        Left = 0
        Top = 0
        Width = 379
        Height = 43
        TabOrder = 1
        inherited Label1: TLabel
          Width = 82
          Height = 21
        end
        inherited Label2: TLabel
          Height = 21
        end
        inherited Label3: TLabel
          Width = 379
          ExplicitLeft = 376
        end
      end
    end
    object Panel5: TPanel
      Left = 2
      Top = 90
      Width = 786
      Height = 44
      Align = alTop
      TabOrder = 3
      inline frmProduction3: TfrmProduction
        Left = 406
        Top = 1
        Width = 379
        Height = 42
        Align = alRight
        TabOrder = 0
        ExplicitLeft = 406
        ExplicitTop = 1
        ExplicitHeight = 42
        inherited SpeedButton1: TSpeedButton
          Height = 23
          ExplicitHeight = 20
        end
        inherited Label1: TLabel
          Width = 82
          Height = 20
        end
        inherited Label2: TLabel
          Height = 20
        end
        inherited Label3: TLabel
          Top = 29
          Width = 379
          ExplicitLeft = 376
          ExplicitTop = 29
        end
        inherited MaskEdit1: TMaskEdit
          Height = 23
        end
        inherited MaskEdit2: TMaskEdit
          Height = 23
        end
      end
      inline frmProduction6: TfrmProduction
        Left = 0
        Top = 0
        Width = 379
        Height = 43
        TabOrder = 1
        inherited Label1: TLabel
          Width = 82
          Height = 21
        end
        inherited Label2: TLabel
          Height = 21
        end
        inherited Label3: TLabel
          Width = 379
          ExplicitLeft = 376
        end
      end
    end
    object Panel6: TPanel
      Left = 2
      Top = 134
      Width = 786
      Height = 28
      Align = alTop
      TabOrder = 4
      object BitBtn1: TBitBtn
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 75
        Height = 20
        Action = actCalc
        Align = alLeft
        Caption = #1605#1581#1575#1587#1576#1607
        TabOrder = 0
        ExplicitLeft = 25
        ExplicitTop = 2
        ExplicitHeight = 25
      end
      object chkStore: TCheckBox
        AlignWithMargins = True
        Left = 624
        Top = 4
        Width = 158
        Height = 20
        Align = alRight
        Caption = #1606#1605#1575#1740#1588' '#1605#1608#1580#1608#1583#1740' '#1576#1607' '#1578#1601#1705#1740#1705' '#1575#1606#1576#1575#1585
        TabOrder = 1
        ExplicitLeft = 627
        ExplicitTop = 1
        ExplicitHeight = 26
      end
    end
    object grdPrimary: TCedarDbgrid
      Tag = 111
      Left = 2
      Top = 162
      Width = 786
      Height = 260
      Hint = '2'
      Align = alClient
      Color = clCream
      DataSource = srcItem
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
      TabOrder = 1
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  inherited ActionList: TActionList
    Left = 80
    Top = 0
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actCalc: TAction
      Caption = #1605#1581#1575#1587#1576#1607
      OnExecute = actCalcExecute
    end
    object actExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607'Excel'
      OnExecute = actExcelExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object Action1: TAction
      Caption = 'Action1'
      OnExecute = Action1Execute
    end
  end
  inherited ImageList1: TImageList
    Left = 240
    Top = 9
  end
  object qryItem: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'TransFormID1'
        DataType = ftWideString
        Size = 2
        Value = '60'
      end
      item
        Name = 'TransFormID2'
        DataType = ftWideString
        Size = 2
        Value = '60'
      end
      item
        Name = 'TransFormID3'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'TransFormID4'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'TransFormID5'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'TransFormID6'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'Edit1'
        DataType = ftWideString
        Size = 2
        Value = '1'
      end
      item
        Name = 'Edit2'
        DataType = ftWideString
        Size = 2
        Value = '1'
      end
      item
        Name = 'Edit3'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'Edit4'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'Edit5'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'Edit6'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearID'
        DataType = ftWideString
        Size = 2
        Value = '92'
      end>
    SQL.Strings = (
      
        'SELECT        ProductionForecasts_1.StuffCode, ProductionForecas' +
        'ts_1.c_StuffName, ProductionForecasts_1.UnitName, derivedtbl_Moj' +
        'odi.SUMEntity, '
      
        '                         ProductionForecasts_1.Formol1, Producti' +
        'onForecasts_1.Entity1, ProductionForecasts_1.Formol2, Production' +
        'Forecasts_1.Entity2, ProductionForecasts_1.Formol3, '
      
        '                         ProductionForecasts_1.Entity3, Producti' +
        'onForecasts_1.Formol4, ProductionForecasts_1.Entity4, Production' +
        'Forecasts_1.Formol5, ProductionForecasts_1.Entity5, '
      
        '                         ProductionForecasts_1.Formol6, Producti' +
        'onForecasts_1.Entity6     , '
      
        'derivedtbl_Mojodi.SUMEntity-   ProductionForecasts_1.Entity1 -Pr' +
        'oductionForecasts_1.Entity2 '
      
        '- ProductionForecasts_1.Entity3-ProductionForecasts_1.Entity4-Pr' +
        'oductionForecasts_1.Entity5-ProductionForecasts_1.Entity6   AS F' +
        'inalEntity'
      
        'FROM            dbo.ProductionForecasts( :TransFormID1 ,:TransFo' +
        'rmID2  ,:TransFormID3  ,'
      ' :TransFormID4  ,:TransFormID5  ,:TransFormID6 ,'
      ' :Edit1 ,:Edit2  ,:Edit3  ,'
      ' :Edit4  ,:Edit5  ,:Edit6 ) '
      
        '                         AS ProductionForecasts_1 LEFT OUTER JOI' +
        'N'
      
        '                             (SELECT        ReciptItems.StuffCod' +
        'e, ROUND(SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity)' +
        ', 3) AS SUMEntity'
      
        '                                FROM            ReciptItems INNE' +
        'R JOIN'
      
        '                                                         Recipts' +
        ' ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.Serv' +
        'erID = Recipts.ServerID AND '
      
        '                                                         ReciptI' +
        'tems.YearID = Recipts.YearID INNER JOIN'
      
        '                                                         ReciptT' +
        'ypes ON Recipts.ReciptType = ReciptTypes.ReciptType INNER JOIN'
      
        '                                                         Stores ' +
        'ON Recipts.StoreID = Stores.n_StoreID'
      
        '                                WHERE        (ReciptTypes.Effect' +
        'Type IN (2, 4,6,7)) AND (Recipts.ReciptState < 3)'
      
        '                                        AND ( Recipts.YearID =  ' +
        ':YearID )     '
      
        '                                GROUP BY ReciptItems.StuffCode) ' +
        'AS derivedtbl_Mojodi ON ProductionForecasts_1.StuffCode = derive' +
        'dtbl_Mojodi.StuffCode CROSS JOIN'
      '                         Fitful')
    Left = 289
    Top = 271
  end
  object srcItem: TDataSource
    DataSet = qryItem
    Left = 345
    Top = 336
  end
  object qryItemLabel: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'YearID'
        Size = -1
        Value = Null
      end
      item
        Name = 'TransFormID1'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'TransFormID2'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'TransFormID3'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'TransFormID4'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'TransFormID5'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'TransFormID6'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'Edit1'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'Edit2'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'Edit3'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'Edit4'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'Edit5'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'Edit6'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      'SELECT        Label,    ROUND(Formol1,2)  AS Formol1  , :YearID '
      
        'FROM            dbo.ProductionForecasts4Lbl( :TransFormID1 ,:Tra' +
        'nsFormID2  ,:TransFormID3  ,'
      ' :TransFormID4  ,:TransFormID5  ,:TransFormID6 ,'
      ' :Edit1 ,:Edit2  ,:Edit3  ,'
      ' :Edit4  ,:Edit5  ,:Edit6 ) '
      '                         AS ProductionForecasts4Lbl')
    Left = 481
    Top = 263
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcItem
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 475
    Top = 362
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = CountingItemsF.ppDBPipeline2
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.Collation = False
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A5'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 148000
    PrinterSetup.PaperSize = 11
    Template.FileName = 'D:\Projects\Fara\BSell\Exe\Report\ReciptsGrid0.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ShowEmailDialog = True
    EmailSettings.ShowCancelDialog = True
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
    PreviewFormSettings.ZoomSetting = zsPageWidth
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
    Left = 619
    Top = 336
    Version = '19.04'
    mmColumnWidth = 135300
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
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
  object qryRecipts: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select top 0 * from recipts')
    Left = 24
    Top = 361
  end
  object qryReciptItems: TADOQuery
    Connection = DmF.adcBSell
    Parameters = <>
    SQL.Strings = (
      'select top 0 * from ReciptItems')
    Left = 24
    Top = 321
  end
  object qryinit: TADOQuery
    Connection = DmF.adcBSell
    Parameters = <>
    SQL.Strings = (
      'SELECT  *  '
      ' FROM    ReciptTypes'
      'where  ReciptType = 12')
    Left = 24
    Top = 408
  end
end

inherited CalculateOutPutF: TCalculateOutPutF
  Left = 377
  Top = 222
  Width = 803
  Height = 564
  Caption = #1602#1610#1605#1578' '#1711#1584#1575#1585#1610' '#1581#1608#1575#1604#1607' '#1607#1575#1610' '#1575#1606#1576#1575#1585' '
  OldCreateOrder = True
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 489
    Width = 795
    object BitBtn2: TBitBtn
      Left = 552
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Anchors = [akRight, akBottom]
      Caption = #1670#1575#1662' (F7)'
      TabOrder = 1
    end
    object BitBtn7: TBitBtn
      Left = 632
      Top = 8
      Width = 75
      Height = 25
      Action = actFilter
      Anchors = [akRight, akBottom]
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 2
    end
    object BitBtn6: TBitBtn
      Left = 250
      Top = 8
      Width = 75
      Height = 25
      Action = actsendtoexel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      Left = 172
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
    end
    object BitBtn3: TBitBtn
      Left = 94
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 5
    end
    object BitBtn4: TBitBtn
      Left = 712
      Top = 8
      Width = 75
      Height = 25
      Action = actAllCalculate
      Anchors = [akRight, akBottom]
      Caption = #1605#1581#1575#1587#1576#1607' '#1602#1610#1605#1578
      TabOrder = 6
    end
  end
  inherited Panel2: TPanel
    Width = 795
    inherited ImgTemplate: TImage
      Left = 748
    end
    inherited lblCaption: TLabel
      Top = 16
    end
    object Label1: TLabel
      Left = 755
      Top = 32
      Width = 3
      Height = 13
    end
    object Button1: TButton
      Left = 88
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 0
      OnClick = Button1Click
    end
    object btn1: TButton
      Left = 232
      Top = 8
      Width = 75
      Height = 25
      Caption = 'del'
      TabOrder = 1
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 544
      Top = 32
      Width = 75
      Height = 25
      Caption = 'btn2'
      TabOrder = 2
      OnClick = btn2Click
    end
  end
  inherited Panel3: TPanel
    Top = 70
    Width = 795
    Height = 400
    object DBGrid1: TDBGrid
      Left = 2
      Top = 169
      Width = 592
      Height = 212
      Align = alLeft
      Color = clCream
      DataSource = srckol
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Visible = False
    end
    object DBGrid2: TDBGrid
      Left = 594
      Top = 169
      Width = 199
      Height = 212
      Align = alClient
      Color = clCream
      DataSource = SrcStores
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'n_StoreID'
          Title.Alignment = taCenter
          Width = 18
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_StoreName'
          Title.Alignment = taCenter
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'n_ValuationType'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
    object ProgressBar1: TProgressBar
      Left = 2
      Top = 381
      Width = 791
      Height = 17
      Align = alBottom
      Min = 1
      Position = 1
      Step = 1
      TabOrder = 2
    end
    object pnlReciptsRegulates: TPanel
      Left = 2
      Top = 2
      Width = 791
      Height = 167
      Align = alTop
      TabOrder = 3
      object lbl1: TLabel
        Left = 1
        Top = 1
        Width = 789
        Height = 45
        Align = alTop
        AutoSize = False
        Caption = 
          #1576#1585#1585#1608#1610' '#1601#1585#1605#1607#1575#1610' '#1586#1610#1585' '#1587#1606#1583' '#1581#1587#1575#1576#1583#1575#1585#1610' '#1589#1575#1583#1585' '#1588#1583#1607' '#1575#1587#1578#1548' '#1583#1585' '#1589#1608#1585#1578' '#1602#1610#1605#1578' '#1711#1584#1575#1585#1610' '#1608 +
          ' '#1578#1594#1610#1610#1585' '#1583#1585' '#1605#1576#1575#1604#1594' '#1607#1585' '#1610#1603' '#1575#1586' '#1570#1606#1607#1575#1548#1576#1585#1575#1610' '#1570#1606#1607#1575' '#1576#1578#1575#1585#1610#1582'  "'#1578#1575#1585#1610#1582' '#1579#1576#1578' '#1578#1593#1583#1610#1604 +
          #1575#1578'" '#1578#1593#1583#1610#1604#1575#1578' '#1579#1576#1578' '#1582#1608#1575#1607#1583' '#1588#1583'.'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object lblDate: TLabel
        Left = 90
        Top = 28
        Width = 87
        Height = 13
        Alignment = taRightJustify
        Caption = '"'#1578#1575#1585#1610#1582' '#1579#1576#1578' '#1578#1593#1583#1610#1604#1575#1578'"'
      end
      object grd1: TDBGrid
        Left = 1
        Top = 46
        Width = 789
        Height = 120
        Align = alClient
        Color = clCream
        DataSource = SrcCalcControls
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'StoreID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ReciptNumber'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ReciptDate'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ReciptCaption'
            Width = 210
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DocNo'
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DocDate'
            Width = 109
            Visible = True
          end>
      end
      object mskDate: TMaskEdit
        Left = 10
        Top = 24
        Width = 77
        Height = 21
        Color = 13431799
        EditMask = '9999/99/99;1;_'
        MaxLength = 10
        TabOrder = 1
        Text = '  /  /  '
      end
    end
  end
  object StatusBar1: TStatusBar [3]
    Left = 0
    Top = 470
    Width = 795
    Height = 19
    Panels = <
      item
        Text = '0'
        Width = 200
      end
      item
        Text = '1'
        Width = 200
      end>
  end
  object pnlLblLimitPlace: TPanel [4]
    Left = 0
    Top = 53
    Width = 795
    Height = 17
    Align = alTop
    TabOrder = 4
    object LblShowLimitPlace1: TLabel
      Left = 700
      Top = 1
      Width = 94
      Height = 15
      Align = alRight
      Caption = 'LblShow LimitPlace1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  inherited ActionList: TActionList
    Left = 464
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662' (F7)'
      ShortCut = 118
      Visible = False
      OnExecute = actPrintExecute
    end
    object actsendtoexel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actsendtoexelExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actCalcVijeh: TAction
      Caption = #1605#1581#1575#1587#1576#1607' '#1602#1610#1605#1578' '#1588#1606#1575#1587#1575#1610#1610' '#1608#1610#1688#1607' '
      OnExecute = actCalcVijehExecute
    end
    object actAllCalculate: TAction
      Caption = #1605#1581#1575#1587#1576#1607' '#1602#1610#1605#1578
      OnExecute = actAllCalculateExecute
    end
    object actCalcAverage: TAction
      Caption = 'actCalcAverage'
    end
    object actCalcFiFo: TAction
      Caption = 'actCalcFiFo'
      OnExecute = actCalcFiFoExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 352
    Top = 1
  end
  object SrcCalSpecialOutPut: TDataSource
    DataSet = qryCalSpecialOutPut
    Left = 480
    Top = 176
  end
  object qryCalSpecialOutPut: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    AfterOpen = qryCalSpecialOutPutAfterOpen
    Parameters = <
      item
        Name = 'StuffCodeFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'StuffCodeTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 9999
      end
      item
        Name = 'DateFrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '0'
      end
      item
        Name = 'DateTo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'StoreID'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT ReciptItems.ReciptItemID, ReciptItems.StuffCode, StuffCod' +
        'ing.c_StuffName, ReciptTypes.ReciptCaption,'
      
        '       ReciptItems.StuffSize, ReciptItems.StuffDiameter, ReciptI' +
        'tems.StuffAlloy, ReciptItems.OutputEntity, ReciptItems.OutputWei' +
        'ght,'
      
        '       ReciptItems.TotalOutputPrice, ReciptItems.UnitSellPrice, ' +
        'ReciptItems.preReciptItemID, Recipts.ReciptNumber,'
      '       Recipts.ReciptDate'
      'FROM   ReciptItems INNER JOIN'
      
        '       Recipts ON  ReciptItems.ReciptID = Recipts.ReciptID AND R' +
        'eciptItems.ServerID = Recipts.ServerID AND ReciptItems.YearID = ' +
        'Recipts.YearID INNER JOIN'
      
        '       ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptTyp' +
        'e INNER JOIN'
      
        '       StuffCoding ON ReciptItems.StuffCode = StuffCoding.c_Stuf' +
        'fCode'
      'WHERE (ReciptTypes.EffectType = 4)AND(ReciptTypes.SellEffect<>1)'
      
        '      AND (ReciptItems.StuffCode BETWEEN :StuffCodeFrom AND :Stu' +
        'ffCodeTo)'
      '      AND (Recipts.ReciptDate BETWEEN  :DateFrom AND :DateTo )'
      '      AND (Recipts.StoreID=:StoreID)'
      ' AND (Recipts.ReciptState < 3)'
      
        'ORDER BY  ReciptItems.preReciptItemID,Recipts.ReciptDate, Recipt' +
        's.ReciptNumber, ReciptItems.ReciptItemID')
    Left = 584
    Top = 176
    object qryCalSpecialOutPutStuffCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      DisplayWidth = 12
      FieldName = 'StuffCode'
    end
    object qryCalSpecialOutPutc_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1603#1575#1604#1575
      DisplayWidth = 39
      FieldName = 'c_StuffName'
      Size = 70
    end
    object qryCalSpecialOutPutReciptItemID: TIntegerField
      FieldName = 'ReciptItemID'
    end
    object qryCalSpecialOutPutReciptCaption: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1575#1591#1604#1575#1593#1575#1578' '
      FieldName = 'ReciptCaption'
      Size = 70
    end
    object qryCalSpecialOutPutStuffSize: TStringField
      Tag = 3
      DisplayLabel = #1575#1576#1593#1575#1583
      FieldName = 'StuffSize'
      Size = 12
    end
    object qryCalSpecialOutPutStuffDiameter: TFloatField
      Tag = 3
      DisplayLabel = #1590#1582#1575#1605#1578' '
      FieldName = 'StuffDiameter'
    end
    object qryCalSpecialOutPutStuffAlloy: TStringField
      Tag = 3
      DisplayLabel = #1570#1604#1610#1575#1688
      FieldName = 'StuffAlloy'
      Size = 12
    end
    object qryCalSpecialOutPutOutputEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'OutputEntity'
    end
    object qryCalSpecialOutPutOutputWeight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606
      FieldName = 'OutputWeight'
    end
    object qryCalSpecialOutPutTotalOutputPrice: TBCDField
      Tag = 3
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607' '
      FieldName = 'TotalOutputPrice'
      currency = True
      Precision = 19
    end
    object qryCalSpecialOutPutUnitSellPrice: TFMTBCDField
      DisplayLabel = #1576#1607#1575#1569' '#1608#1575#1581#1583
      FieldName = 'UnitSellPrice'
      Precision = 19
    end
    object qryCalSpecialOutPutpreReciptItemID: TIntegerField
      FieldName = 'preReciptItemID'
    end
    object qryCalSpecialOutPutReciptNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'ReciptNumber'
    end
    object qryCalSpecialOutPutReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1601#1585#1605' '
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'D:\Projects\Fara\BSell\Exe\Report\RptEntityStuff.rtm'
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 688
    Top = 400
    Version = '10.06'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 37306
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 29898
        mmWidth = 203200
        BandType = 0
      end
      object ppLblCompanyName: TppLabel
        UserName = 'LblCompanyName'
        OnGetText = ppLblCompanyNameGetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 77788
        mmTop = 0
        mmWidth = 47625
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #1711#1586#1575#1585#1588' '#1605#1608#1580#1608#1583#1610' '#1576#1585' '#1581#1587#1576' '#1603#1583#1610#1606#1711' '#1603#1575#1604#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7144
        mmLeft = 74083
        mmTop = 5292
        mmWidth = 55033
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 0
        mmTop = 16404
        mmWidth = 203200
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #1603#1583#1608' '#1606#1575#1605' '#1575#1606#1576#1575#1585':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6604
        mmLeft = 181880
        mmTop = 21696
        mmWidth = 18034
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #1608#1586#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 38365
        mmTop = 30427
        mmWidth = 24871
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #1605#1602#1583#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 64558
        mmTop = 30427
        mmWidth = 24606
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #1608#1575#1581#1583' '#1588#1605#1575#1585#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 91017
        mmTop = 30427
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #1606#1575#1605' '#1603#1575#1604#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6615
        mmLeft = 137319
        mmTop = 30427
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #1605#1576#1604#1594
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 15610
        mmTop = 30427
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        OnGetText = ppLabel11GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #1575#1586' '#1603#1583' '#1603#1575#1604#1575#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 9790
        mmTop = 24342
        mmWidth = 11906
        BandType = 0
      end
      object ppLblPrintDate: TppLabel
        UserName = 'LblPrintDate'
        OnGetText = ppLblPrintDateGetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #1576#1578#1575#1585#1610#1582':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 9790
        mmTop = 10319
        mmWidth = 12171
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'n_StoreID'
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
        mmLeft = 163777
        mmTop = 21696
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'c_StoreName'
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
        mmHeight = 6604
        mmLeft = 99748
        mmTop = 21696
        mmWidth = 63765
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        OnGetText = ppSystemVariable1GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 9790
        mmTop = 5556
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #1603#1583' '#1603#1575#1604#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 189177
        mmTop = 30427
        mmWidth = 8731
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 109273
        mmTop = 30163
        mmWidth = 1588
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 181769
        mmTop = 30163
        mmWidth = 1588
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 88636
        mmTop = 29898
        mmWidth = 1588
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 62442
        mmTop = 30163
        mmWidth = 1588
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 35983
        mmTop = 30163
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        OnGetText = ppLabel16GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #1575#1586' '#1578#1575#1585#1610#1582
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5419
        mmLeft = 9790
        mmTop = 18785
        mmWidth = 7620
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppLine22: TppLine
        UserName = 'Line22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 182827
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine23: TppLine
        UserName = 'Line23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 109009
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine24: TppLine
        UserName = 'Line24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 62177
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine25: TppLine
        UserName = 'Line25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 35719
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine33: TppLine
        UserName = 'Line33'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 88371
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Weight'
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
        mmLeft = 38365
        mmTop = 0
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Entity'
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
        mmLeft = 64558
        mmTop = 0
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
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
        mmLeft = 91017
        mmTop = 0
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
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
        mmLeft = 111919
        mmTop = 0
        mmWidth = 70379
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Price'
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
        mmLeft = 2117
        mmTop = 0
        mmWidth = 34660
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
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
        mmLeft = 184944
        mmTop = 0
        mmWidth = 16933
        BandType = 4
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 201084
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 0
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 19050
      mmPrintPosition = 0
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 7144
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 8
      end
      object ppLine26: TppLine
        UserName = 'Line26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 62177
        mmTop = 0
        mmWidth = 1852
        BandType = 8
      end
      object ppLine28: TppLine
        UserName = 'Line28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 35719
        mmTop = 0
        mmWidth = 1852
        BandType = 8
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
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
        mmHeight = 6519
        mmLeft = 2117
        mmTop = 0
        mmWidth = 34660
        BandType = 8
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
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
        mmHeight = 6519
        mmLeft = 38365
        mmTop = 0
        mmWidth = 24871
        BandType = 8
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
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
        mmHeight = 6519
        mmLeft = 64558
        mmTop = 0
        mmWidth = 24606
        BandType = 8
      end
      object ppLine34: TppLine
        UserName = 'Line34'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 88371
        mmTop = 0
        mmWidth = 1852
        BandType = 8
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #1578#1593#1583#1575#1583' '#1603#1575#1604#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7112
        mmLeft = 183245
        mmTop = 0
        mmWidth = 13716
        BandType = 8
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'StuffCode'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6519
        mmLeft = 165100
        mmTop = 0
        mmWidth = 17198
        BandType = 8
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #1580#1605#1593' '#1606#1602#1604' '#1576#1607' '#1589#1601#1581#1607' '#1576#1593#1583' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7112
        mmLeft = 101144
        mmTop = 0
        mmWidth = 35645
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 19050
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 7
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #1578#1593#1583#1575#1583' '#1603#1575#1604#1575':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 183092
        mmTop = 529
        mmWidth = 14552
        BandType = 7
      end
      object ppLine27: TppLine
        UserName = 'Line27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 62177
        mmTop = 0
        mmWidth = 1852
        BandType = 7
      end
      object ppLine29: TppLine
        UserName = 'Line29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 35719
        mmTop = 0
        mmWidth = 1852
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
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
        mmHeight = 6519
        mmLeft = 2117
        mmTop = 265
        mmWidth = 34660
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
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
        mmHeight = 6519
        mmLeft = 38365
        mmTop = 265
        mmWidth = 24871
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
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
        mmHeight = 6519
        mmLeft = 64558
        mmTop = 0
        mmWidth = 24606
        BandType = 7
      end
      object ppLine21: TppLine
        UserName = 'Line21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 88371
        mmTop = 0
        mmWidth = 1852
        BandType = 7
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'StuffCode'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6615
        mmLeft = 165100
        mmTop = 529
        mmWidth = 17198
        BandType = 7
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #1580#1605#1593' '#1603#1604':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7112
        mmLeft = 124343
        mmTop = 265
        mmWidth = 12446
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'n_StoreID'
      OutlineSettings.CreateNode = True
      NewPage = True
      ResetPageNo = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
  object ppDBPipeline1: TppDBPipeline
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 768
    Top = 309
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'n_StoreID'
      FieldName = 'n_StoreID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'c_StoreName'
      FieldName = 'c_StoreName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = SrcCalSpecialOutPut
    OpenDataSource = False
    UserName = 'DBPipeline2'
    Left = 680
    Top = 261
    MasterDataPipelineName = 'ppDBPipeline1'
  end
  object qrySpecialInputItems: TADOQuery
    Connection = DMF.adcBSell
    Parameters = <
      item
        Name = 'pryreciptItemId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     ReciptItemID, InputEntity, InputWeight, TotalInputPri' +
        'ce, preReciptItemID'
      'FROM         dbo.ReciptItems'
      'WHERE     (ReciptItemID = :pryreciptItemId)'
      'ORDER BY ReciptItemID')
    Left = 469
    Top = 248
    object qrySpecialInputItemsReciptItemID: TIntegerField
      FieldName = 'ReciptItemID'
    end
    object qrySpecialInputItemsInputEntity: TFloatField
      FieldName = 'InputEntity'
    end
    object qrySpecialInputItemsInputWeight: TFloatField
      FieldName = 'InputWeight'
    end
    object qrySpecialInputItemsTotalInputPrice: TBCDField
      FieldName = 'TotalInputPrice'
      Precision = 19
    end
    object qrySpecialInputItemspreReciptItemID: TIntegerField
      FieldName = 'preReciptItemID'
    end
  end
  object qryStores: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryStoresAfterScroll
    Parameters = <
      item
        Name = 'StoreIDFrom'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'StoreIDTo'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'Select * From Stores'
      'WHERE (n_StoreID BETWEEN :StoreIDFrom AND :StoreIDTo)'
      'Order by N_StoreId'
      ''
      ''
      '')
    Left = 695
    Top = 52
    object qryStoresn_StoreID: TSmallintField
      DisplayLabel = #1603#1583
      FieldName = 'n_StoreID'
    end
    object qryStoresc_StoreName: TStringField
      DisplayLabel = #1606#1575#1605' '#1575#1606#1576#1575#1585
      FieldName = 'c_StoreName'
      Required = True
      Size = 70
    end
    object qryStoresn_ValuationType: TSmallintField
      DisplayLabel = #1606#1581#1608#1607' '#1602#1610#1605#1578' '#1711#1584#1575#1585#1610
      FieldName = 'n_ValuationType'
      OnGetText = qryStoresn_ValuationTypeGetText
    end
  end
  object SrcStores: TDataSource
    DataSet = qryStores
    Left = 624
    Top = 61
  end
  object qryKol: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'StuffcodeFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'StuffcodeTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1111
      end
      item
        Name = 'StoreID'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 1
      end>
    SQL.Strings = (
      'SELECT     ReciptItems.StuffCode'
      'FROM         StuffCoding INNER JOIN'
      '                      Recipts INNER JOIN'
      '                      ReciptItems ON '
      
        'Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = R' +
        'eciptItems.ServerID AND Recipts.YearID = ReciptItems.YearID '
      ''
      'ON StuffCoding.c_StuffCode = ReciptItems.StuffCode INNER JOIN'
      
        '                      ReciptTypes ON Recipts.ReciptType = Recipt' +
        'Types.ReciptType'
      
        'WHERE  (dbo.ReciptItems.StuffCode between :StuffcodeFrom  And :S' +
        'tuffcodeTo) AND'
      '       (dbo.Recipts.StoreID = :StoreID) AND'
      
        '       (dbo.ReciptTypes.EffectType = 4) AND(ReciptTypes.SellEffe' +
        'ct<>1) AND'
      '       (dbo.Recipts.ReciptState < 3)'
      'GROUP BY ReciptItems.StuffCode')
    Left = 184
    Top = 112
  end
  object qryOut: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'StoreID'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 1
      end
      item
        Name = 'StuffCode'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 411163
      end>
    SQL.Strings = (
      
        'SELECT dbo.ReciptItems.ReciptItemID, dbo.Recipts.ReciptDate, dbo' +
        '.StuffCoding.c_StuffCode, dbo.ReciptItems.OutputEntity,'
      '       dbo.ReciptItems.OutputWeight, ReciptItems.ReciptID, '
      '                      ReciptItems.ServerID, ReciptItems.YearID'
      ''
      'FROM   dbo.StuffCoding INNER JOIN'
      '       dbo.Recipts INNER JOIN'
      
        '       dbo.ReciptItems ON dbo.Recipts.ReciptID = dbo.ReciptItems' +
        '.ReciptID ON dbo.StuffCoding.c_StuffCode = dbo.ReciptItems.Stuff' +
        'Code INNER JOIN'
      
        '       dbo.ReciptTypes ON dbo.Recipts.ReciptType = dbo.ReciptTyp' +
        'es.ReciptType'
      'WHERE (dbo.Recipts.StoreID = :StoreID) AND'
      '      (dbo.StuffCoding.c_StuffCode = :StuffCode) AND'
      
        '      (dbo.ReciptTypes.EffectType = 4) AND(ReciptTypes.SellEffec' +
        't<>1) AND (dbo.Recipts.ReciptState < 3)'
      'ORDER BY dbo.Recipts.ReciptDate, dbo.StuffCoding.c_StuffCode'
      '')
    Left = 104
    Top = 128
    object qryOutReciptItemID: TIntegerField
      FieldName = 'ReciptItemID'
    end
    object qryOutReciptDate: TStringField
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryOutc_StuffCode: TIntegerField
      FieldName = 'c_StuffCode'
    end
    object qryOutOutputEntity: TFloatField
      FieldName = 'OutputEntity'
    end
    object qryOutOutputWeight: TFloatField
      FieldName = 'OutputWeight'
    end
    object qryOutReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryOutServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryOutYearID: TIntegerField
      FieldName = 'YearID'
    end
  end
  object qryIN: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'StoreID'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 1
      end
      item
        Name = 'StuffCode'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 411163
      end>
    SQL.Strings = (
      
        'SELECT dbo.Recipts.ReciptDate, dbo.StuffCoding.c_StuffCode, dbo.' +
        'ReciptItems.InputEntity, dbo.ReciptItems.InputWeight,'
      '       dbo.ReciptItems.TotalInputPrice'
      'FROM   dbo.StuffCoding INNER JOIN'
      '       dbo.Recipts INNER JOIN'
      '       dbo.ReciptItems ON  '
      
        'Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = R' +
        'eciptItems.ServerID AND Recipts.YearID = ReciptItems.YearID '
      ''
      
        ' ON dbo.StuffCoding.c_StuffCode = dbo.ReciptItems.StuffCode INNE' +
        'R JOIN'
      
        '       dbo.ReciptTypes ON dbo.Recipts.ReciptType = dbo.ReciptTyp' +
        'es.ReciptType'
      'WHERE  (dbo.Recipts.StoreID = :StoreID) '
      'AND (dbo.StuffCoding.c_StuffCode = :StuffCode) '
      'AND (dbo.ReciptTypes.EffectType = 2)'
      
        #13' AND (dbo.Recipts.ReciptState < 3)AND(ReciptTypes.SellEffect<>1' +
        ')'
      #13'ORDER BY dbo.Recipts.ReciptDate, dbo.StuffCoding.c_StuffCode')
    Left = 32
    Top = 109
    object qryINReciptDate: TStringField
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryINc_StuffCode: TIntegerField
      FieldName = 'c_StuffCode'
    end
    object qryINInputWeight: TFloatField
      FieldName = 'InputWeight'
    end
    object qryINTotalInputPrice: TBCDField
      FieldName = 'TotalInputPrice'
      Precision = 19
    end
    object qryINInputEntity: TFloatField
      FieldName = 'InputEntity'
    end
  end
  object qryAverage: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'StoreID'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'StoreID2'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'StuffCodeFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'StuffCodeTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 111
      end
      item
        Name = 'DateFrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '0'
      end
      item
        Name = 'DateTo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT    ReciptItems_Stock.StoreID, ReciptItems_Stock.StoreID2 ' +
        ',ReciptItems_Stock.ReciptType, ReciptItems_Stock.StuffCode, Stuf' +
        'fCoding.c_StuffName, ReciptItems_Stock.ReciptDate,'
      
        '          ReciptItems_Stock.ReciptNumber, ReciptItems_Stock.Reci' +
        'ptItemID,ReciptItems_Stock.InputEntity,'
      
        '          ReciptItems_Stock.OutputEntity, ReciptItems_Stock.Tota' +
        'lInputPrice, ReciptItems_Stock.TotalOutputPrice,'
      
        '          ReciptItems_Stock.EffectType , ReciptItems_Stock.AutoP' +
        'rice, ReciptItems_Stock.InputWeight,'
      
        '          ReciptItems_Stock.OutputWeight, ReciptItems_Stock.Tota' +
        'llSellPrice, ReciptItems_Stock.ReciptCaption,'
      
        '          ReciptItems_Stock.StuffSize, ReciptItems_Stock.StuffDi' +
        'ameter, ReciptItems_Stock.StuffAlloy ,'
      
        '          0 as ProductModel, 0 as UseUnitID , TotalInputPriceBas' +
        'e , TotalOutputPriceBase,DocNo, ServerID ,YearID,ReciptID'
      'FROM         StuffCoding INNER JOIN'
      '                      ReciptItems_Stock ON '
      
        '                      StuffCoding.c_StuffCode = ReciptItems_Stoc' +
        'k.StuffCode '
      ''
      
        'WHERE     ((ReciptItems_Stock.EffectType = 2) OR  (ReciptItems_S' +
        'tock.EffectType = 4)) AND '
      '          (ReciptItems_Stock.SellEffect<>1) AND'
      '          (dbo.ReciptItems_Stock.ReciptState < 3) AND'
      
        '          ((ReciptItems_Stock.StoreID = :StoreID ) or ((ReciptIt' +
        'ems_Stock.ReciptType=7)  and ( ReciptItems_Stock.StoreID2 = :Sto' +
        'reID2 ))) AND'
      
        '          (ReciptItems_Stock.StuffCode between :StuffCodeFrom an' +
        'd :StuffCodeTo ) AND'
      
        '          (ReciptItems_Stock.ReciptDate between  :DateFrom  and ' +
        ' :DateTo )'
      
        'ORDER BY  ReciptItems_Stock.StuffCode, ReciptItems_Stock.ReciptD' +
        'ate, ReciptItems_Stock.EffectType,'
      
        '          ReciptItems_Stock.ReciptNumber, ReciptItems_Stock.Reci' +
        'ptItemID')
    Left = 80
    Top = 261
  end
  object DataSource1: TDataSource
    DataSet = qryAverage
    Left = 192
    Top = 341
  end
  object qryAverageModel: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'StoreID'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'StoreID2'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'StuffCodeFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'StuffCodeTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 111
      end
      item
        Name = 'DateFrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '0'
      end
      item
        Name = 'DateTo'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     ReciptItems_Stock.StoreID, ReciptItems_Stock.StoreID2' +
        '  , ReciptItems_Stock.StuffCode, StuffCoding.c_StuffName, Recipt' +
        'Items_Stock.ReciptDate, ReciptItems_Stock.ReciptNumber, ReciptIt' +
        'ems_Stock.ReciptItemID, '
      
        '                      ReciptItems_Stock.InputEntity, ReciptItems' +
        '_Stock.OutputEntity, ReciptItems_Stock.TotalInputPrice, ReciptIt' +
        'ems_Stock.TotalOutputPrice, ReciptItems_Stock.EffectType, '
      
        '                      ReciptItems_Stock.AutoPrice, ReciptItems_S' +
        'tock.InputWeight, ReciptItems_Stock.OutputWeight, ReciptItems_St' +
        'ock.TotallSellPrice, ReciptItems_Stock.ReciptCaption, '
      
        '                      ReciptItems_Stock.StuffSize, ReciptItems_S' +
        'tock.StuffDiameter, ReciptItems_Stock.StuffAlloy, ReciptItems_St' +
        'ock.ProductModel, 0 as UseUnitID ,ReciptItems_Stock.ReciptType ,'
      
        ' TotalInputPriceBase , TotalOutputPriceBase,DocNo, ServerID ,Yea' +
        'rID,ReciptID'
      'FROM         StuffCoding INNER JOIN'
      '                      ReciptItems_Stock ON '
      
        '                      StuffCoding.c_StuffCode = ReciptItems_Stoc' +
        'k.StuffCode '
      ''
      
        'WHERE     ((ReciptItems_Stock.EffectType = 2) OR  (ReciptItems_S' +
        'tock.EffectType = 4)) AND(ReciptItems_Stock.SellEffect<>1) AND'
      '          (dbo.ReciptItems_Stock.ReciptState < 3) AND'
      
        '          ((ReciptItems_Stock.StoreID = :StoreID ) or ((ReciptIt' +
        'ems_Stock.ReciptType=7)  and ( ReciptItems_Stock.StoreID2 = :Sto' +
        'reID2 ))) AND'
      
        '          (ReciptItems_Stock.StuffCode between :StuffCodeFrom an' +
        'd :StuffCodeTo ) AND'
      
        '          (ReciptItems_Stock.ReciptDate  :DateFrom  and  :DateTo' +
        '  )'
      
        'ORDER BY  ReciptItems_Stock.StuffCode, ReciptItems_Stock.Product' +
        'Model, ReciptItems_Stock.ReciptDate, ReciptItems_Stock.EffectTyp' +
        'e,'
      
        '                      ReciptItems_Stock.ReciptNumber, ReciptItem' +
        's_Stock.ReciptItemID')
    Left = 80
    Top = 325
  end
  object qryAverageModelUseUnits: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'StoreID'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'StoreID2'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'StuffCodeFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'StuffCodeTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 111
      end
      item
        Name = 'DateFrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '0'
      end
      item
        Name = 'DateTo'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     ReciptItems_Stock.StoreID, ReciptItems_Stock.StoreID2' +
        '  , ReciptItems_Stock.StuffCode, StuffCoding.c_StuffName, Recipt' +
        'Items_Stock.ReciptDate, ReciptItems_Stock.ReciptNumber, ReciptIt' +
        'ems_Stock.ReciptItemID, '
      
        '                      ReciptItems_Stock.InputEntity, ReciptItems' +
        '_Stock.OutputEntity, ReciptItems_Stock.TotalInputPrice, ReciptIt' +
        'ems_Stock.TotalOutputPrice, ReciptItems_Stock.EffectType, '
      
        '                      ReciptItems_Stock.AutoPrice, ReciptItems_S' +
        'tock.InputWeight, ReciptItems_Stock.OutputWeight, ReciptItems_St' +
        'ock.TotallSellPrice, ReciptItems_Stock.ReciptCaption, '
      
        '                      ReciptItems_Stock.StuffSize, ReciptItems_S' +
        'tock.StuffDiameter, ReciptItems_Stock.StuffAlloy, ReciptItems_St' +
        'ock.ProductModel, ReciptItems_Stock.UseUnitID ,ReciptItems_Stock' +
        '.ReciptType  , '
      
        'TotalInputPriceBase , TotalOutputPriceBase,DocNo, ServerID ,Year' +
        'ID,ReciptID'
      'FROM         StuffCoding INNER JOIN'
      '                      ReciptItems_Stock ON '
      
        '                      StuffCoding.c_StuffCode = ReciptItems_Stoc' +
        'k.StuffCode '
      ''
      
        'WHERE     ((ReciptItems_Stock.EffectType = 2) OR  (ReciptItems_S' +
        'tock.EffectType = 4))AND(ReciptItems_Stock.SellEffect<>1) AND'
      '          (dbo.ReciptItems_Stock.ReciptState < 3) AND'
      
        '          ((ReciptItems_Stock.StoreID = :StoreID ) or ((ReciptIt' +
        'ems_Stock.ReciptType=7)  and ( ReciptItems_Stock.StoreID2 = :Sto' +
        'reID2 ))) AND'
      
        '          (ReciptItems_Stock.StuffCode between :StuffCodeFrom an' +
        'd :StuffCodeTo ) AND'
      
        '          (ReciptItems_Stock.ReciptDate  :DateFrom  and  :DateTo' +
        '  )'
      
        'ORDER BY  ReciptItems_Stock.StuffCode, ReciptItems_Stock.Product' +
        'Model, ReciptItems_Stock.UseUnitID, ReciptItems_Stock.ReciptDate' +
        ', ReciptItems_Stock.EffectType,'
      
        '                      ReciptItems_Stock.ReciptNumber, ReciptItem' +
        's_Stock.ReciptItemID')
    Left = 80
    Top = 389
  end
  object ADOQuery1: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'StuffcodeFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'StuffcodeTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1111
      end
      item
        Name = 'StoreID'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 1
      end>
    SQL.Strings = (
      
        'SELECT  dbo.ReciptItems.StuffCode, dbo.StuffCoding.c_StuffName, ' +
        'SUM(dbo.ReciptItems.InputEntity) AS SumOfInputEntity,'
      
        '        SUM(dbo.ReciptItems.InputWeight) AS SumOfInputWeight, SU' +
        'M(dbo.ReciptItems.TotalInputPrice) AS SumOfTotalInputPrice,'
      
        '        SUM(dbo.ReciptItems.OutputEntity) AS SumOfOutputEntity, ' +
        'SUM(dbo.ReciptItems.OutputWeight) AS SumOfOutputWeight,'
      
        '        SUM(dbo.ReciptItems.TotalOutputPrice) AS SumOfTotalOutpu' +
        'tPrice'
      'FROM    dbo.StuffCoding INNER JOIN'
      '        dbo.Recipts INNER JOIN'
      '        dbo.ReciptItems ON '
      ''
      
        'Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = R' +
        'eciptItems.ServerID AND Recipts.YearID = ReciptItems.YearID'
      ''
      
        ' ON dbo.StuffCoding.c_StuffCode = dbo.ReciptItems.StuffCode INNE' +
        'R JOIN'
      
        '        dbo.ReciptTypes ON dbo.Recipts.ReciptType = dbo.ReciptTy' +
        'pes.ReciptType'
      
        'GROUP BY dbo.ReciptItems.StuffCode, dbo.StuffCoding.c_StuffName,' +
        ' dbo.Recipts.StoreID, dbo.ReciptTypes.EffectType,dbo.Recipts.Rec' +
        'iptState'
      
        'HAVING (dbo.ReciptItems.StuffCode between :StuffcodeFrom  And :S' +
        'tuffcodeTo) AND'
      '       (dbo.Recipts.StoreID = :StoreID) AND'
      
        '       (dbo.ReciptTypes.EffectType = 4)AND(ReciptTypes.SellEffec' +
        't<>1) AND'
      '       (dbo.Recipts.ReciptState < 3)'
      ''
      ''
      '')
    Left = 480
    Top = 296
  end
  object srckol: TDataSource
    DataSet = qryKol
    Left = 184
    Top = 168
  end
  object qryAvrageFirstEntity: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'AverageKind'
        Size = -1
        Value = Null
      end
      item
        Name = 'AverageKind'
        Size = -1
        Value = Null
      end
      item
        Name = 'DateFrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'YearID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'StoreID'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'StuffCode'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'AverageKind'
        Size = -1
        Value = Null
      end
      item
        Name = 'AverageKind'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     ReciptItems_Stock.StoreID, ReciptItems_Stock.StuffCod' +
        'e, SUM(ReciptItems_Stock.InputEntity - ReciptItems_Stock.OutputE' +
        'ntity) AS Entity,'
      
        '                      SUM(ReciptItems_Stock.TotalInputPrice - Re' +
        'ciptItems_Stock.TotalOutputPrice) AS TotalPrice, SUM(ReciptItems' +
        '_Stock.InputWeight - ReciptItems_Stock.OutputWeight) AS Weight,'
      
        '                       SUM(CASE WHEN ReciptItems_Stock.EffectTyp' +
        'e = 2 THEN 1 ELSE - 1 END * ReciptItems_Stock.TotallSellPrice) A' +
        'S TotallSellPrice, '
      
        '                      CASE :AverageKind WHEN 0 THEN 0 WHEN 4 THE' +
        'N ReciptItems_Stock.ProductModel WHEN 5 THEN ReciptItems_Stock.P' +
        'roductModel ELSE 0 END AS ProductModel, '
      
        '                      CASE :AverageKind WHEN 0 THEN 0 WHEN 4 THE' +
        'N 0 WHEN 5 THEN ReciptItems_Stock.UseUnitID ELSE 0 END AS UseUni' +
        'tID'
      'FROM         StuffCoding INNER JOIN'
      '                      ReciptItems_Stock ON '
      
        '                      StuffCoding.c_StuffCode = ReciptItems_Stoc' +
        'k.StuffCode '
      'WHERE     (ReciptItems_Stock.EffectType in( 2, 4))  AND'
      '                 (dbo.ReciptItems_Stock.ReciptState < 3)  AND  '
      '                 (ReciptItems_Stock.SellEffect <> 1) AND'
      
        '                 (ReciptItems_Stock.ReciptDate <:DateFrom   ) AN' +
        'D   (ReciptItems_Stock.YearID = :YearID) AND'
      
        ' (ReciptItems_Stock.StoreID = :StoreID  ) AND (ReciptItems_Stock' +
        '.StuffCode= :StuffCode   )'
      ''
      
        'GROUP BY ReciptItems_Stock.StoreID, ReciptItems_Stock.StuffCode,' +
        ' '
      
        '                 CASE :AverageKind  WHEN 0 THEN 0 WHEN 4 THEN 0 ' +
        'WHEN 5 THEN ReciptItems_Stock.UseUnitID ELSE 0 END,'
      
        '                 CASE :AverageKind  WHEN 0 THEN 0 WHEN 4 THEN Re' +
        'ciptItems_Stock.ProductModel WHEN 5 THEN ReciptItems_Stock.Produ' +
        'ctModel ELSE 0 END'
      ' ')
    Left = 64
    Top = 189
  end
  object qryCalcControls: TADOQuery
    Connection = DMF.adcBSell
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'StoreIDFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'StoreIDTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'DateFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'DateTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'StuffCodeFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'StuffCodeTo'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM         dbo.CalcControls(:StoreIDFrom ,:StoreIDTo ,'
      '                                     :DateFrom  ,:DateTo  ,'
      
        '                                     :StuffCodeFrom , :StuffCode' +
        'To ) AS CalcControls_1'
      ' ')
    Left = 250
    Top = 184
    object qryCalcControlsReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryCalcControlsStoreID: TSmallintField
      DisplayLabel = #1603#1583' '#1575#1606#1576#1575#1585
      FieldName = 'StoreID'
    end
    object qryCalcControlsReciptNumber: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607
      FieldName = 'ReciptNumber'
    end
    object qryCalcControlsReciptDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryCalcControlsReciptCaption: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldName = 'ReciptCaption'
      Size = 70
    end
    object qryCalcControlsReciptType: TWordField
      FieldName = 'ReciptType'
    end
    object qryCalcControlsDocNo: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1587#1606#1583
      FieldName = 'DocNo'
    end
    object qryCalcControlsDocDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1587#1606#1583
      FieldName = 'DocDate'
      FixedChar = True
      Size = 10
    end
    object qryCalcControlsKind: TStringField
      FieldName = 'Kind'
      ReadOnly = True
      Size = 10
    end
    object qryCalcControlsAutoPrice: TWordField
      FieldName = 'AutoPrice'
    end
  end
  object SrcCalcControls: TDataSource
    DataSet = qryCalcControls
    Left = 330
    Top = 160
  end
  object qryReciptsRegulates: TADOQuery
    Connection = DMF.adcBSell
    Parameters = <>
    SQL.Strings = (
      'SELECT *  FROM ReciptsRegulates WHERE ServerID = - 1')
    Left = 466
    Top = 384
  end
end

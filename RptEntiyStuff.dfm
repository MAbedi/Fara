inherited RptEntiyStuffF: TRptEntiyStuffF
  Left = 189
  Top = 138
  Width = 803
  Height = 564
  Caption = #1711#1586#1575#1585#1588' '#1605#1608#1580#1608#1583#1610' '#1576#1585#1581#1587#1576' '#1603#1583#1610#1606#1711' '#1603#1575#1604#1575
  OldCreateOrder = True
  PopupMenu = PopMnuForm
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 489
    Width = 795
    object BitBtn2: TBitBtn
      Left = 713
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Anchors = [akRight, akBottom]
      Caption = #1670#1575#1662' (F7)'
      TabOrder = 1
    end
    object BitBtn7: TBitBtn
      Left = 635
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
    object SBtnStoreID: TSpeedButton
      Left = 178
      Top = 3
      Width = 23
      Height = 20
      Caption = '...'
      OnClick = SBtnStoreIDClick
    end
    object LblStore: TLabel
      Left = 276
      Top = 7
      Width = 55
      Height = 13
      Alignment = taRightJustify
      Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1575#1606#1576#1575#1585
      FocusControl = EdtStoreID
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBTextStoreID: TDBText
      Left = 9
      Top = 5
      Width = 167
      Height = 16
      Color = 13948116
      DataField = 'c_StoreName'
      DataSource = SrcStore
      ParentColor = False
      Transparent = False
    end
    object lblDate: TLabel
      Left = 701
      Top = 35
      Width = 24
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582' '
    end
    object EdtStoreID: TDBEdit
      Left = 203
      Top = 3
      Width = 70
      Height = 21
      DataField = 'n_StoreID'
      DataSource = SrcStore
      TabOrder = 0
    end
    object DBNavigator2: TDBNavigator
      Left = 8
      Top = 24
      Width = 168
      Height = 18
      DataSource = SrcStore
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Flat = True
      TabOrder = 1
    end
  end
  inherited Panel3: TPanel
    Width = 795
    Height = 436
    object StatusBar1: TStatusBar
      Left = 2
      Top = 415
      Width = 791
      Height = 19
      BiDiMode = bdRightToLeft
      Panels = <
        item
          Width = 550
        end
        item
          Width = 150
        end>
      ParentBiDiMode = False
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 791
      Height = 413
      Align = alClient
      Color = clCream
      DataSource = SrcEntity
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'StuffCode'
          Title.Alignment = taCenter
          Title.Caption = #1603#1583' '#1603#1575#1604#1575
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_StuffName'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Width = 283
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UnitName'
          Title.Alignment = taCenter
          Width = 78
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Entity'
          Title.Alignment = taCenter
          Width = 63
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Weight'
          Title.Alignment = taCenter
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Price'
          Title.Alignment = taCenter
          Width = 127
          Visible = True
        end>
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
  end
  inherited ImageList1: TImageList
    Left = 352
    Top = 1
  end
  object SrcEntity: TDataSource
    DataSet = qryEntity
    Left = 104
    Top = 176
  end
  object qryStore: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryStoreAfterScroll
    Parameters = <
      item
        Name = 'n_StoreIDForm'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'n_StoreIDTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     n_StoreID, c_StoreName'
      'FROM         Stores'
      'WHERE     (n_StoreID BETWEEN :n_StoreIDForm  AND :n_StoreIDTo)')
    Left = 352
    Top = 88
    object qryStoren_StoreID: TSmallintField
      FieldName = 'n_StoreID'
    end
    object qryStorec_StoreName: TStringField
      FieldName = 'c_StoreName'
      Size = 70
    end
  end
  object qryEntity: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryEntityAfterScroll
    Parameters = <
      item
        Name = 'DateFrom'
        DataType = ftString
        Size = 10
        Value = '81/01/01'
      end
      item
        Name = 'DateTo'
        DataType = ftString
        Size = 10
        Value = '84/12/30'
      end
      item
        Name = 'StoreIDFrom'
        DataType = ftInteger
        Size = 1
        Value = 0
      end
      item
        Name = 'StoreIDTo'
        DataType = ftInteger
        Size = 7
        Value = 9999999
      end
      item
        Name = 'StuffCodeFrom'
        DataType = ftInteger
        Size = 1
        Value = 0
      end
      item
        Name = 'StuffCodeTo'
        DataType = ftInteger
        Size = 10
        Value = 999999
      end>
    SQL.Strings = (
      
        'SELECT     Recipts.StoreID, ReciptItems.StuffCode, StuffCoding.c' +
        '_StuffName, Units.UnitName, '
      
        '                      SUM(ReciptItems.InputEntity - ReciptItems.' +
        'OutputEntity) AS Entity, SUM(ReciptItems.InputWeight - ReciptIte' +
        'ms.OutputWeight) '
      
        '                      AS Weight, SUM(ReciptItems.TotalInputPrice' +
        ' - ReciptItems.TotalOutputPrice) AS Price'
      'FROM         ReciptItems INNER JOIN'
      
        '                      Recipts ON ReciptItems.ReciptID = Recipts.' +
        'ReciptID INNER JOIN'
      
        '                      StuffCoding ON ReciptItems.StuffCode = Stu' +
        'ffCoding.c_StuffCode INNER JOIN'
      
        '                      Units ON StuffCoding.n_UnitCode = Units.Un' +
        'itCode'
      'WHERE     (Recipts.ReciptDate BETWEEN :DateFrom  AND :DateTo)'
      
        'GROUP BY Recipts.StoreID, ReciptItems.StuffCode, StuffCoding.c_S' +
        'tuffName, Units.UnitName'
      
        'HAVING      (Recipts.StoreID BETWEEN :StoreIDFrom AND :StoreIDTo' +
        ' ) AND (ReciptItems.StuffCode BETWEEN :StuffCodeFrom AND :StuffC' +
        'odeTo);')
    Left = 200
    Top = 176
    object qryEntityStoreID: TSmallintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1575#1606#1576#1575#1585
      DisplayWidth = 12
      FieldName = 'StoreID'
    end
    object qryEntityStuffCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603'--'#1583' '#1603#1575#1604#1575
      DisplayWidth = 12
      FieldName = 'StuffCode'
    end
    object qryEntityc_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1603#1575#1604#1575
      DisplayWidth = 39
      FieldName = 'c_StuffName'
      Size = 70
    end
    object qryEntityUnitName: TStringField
      Tag = 3
      DisplayLabel = #1608#1575#1581#1583' '#1588#1605#1575#1585#1588
      DisplayWidth = 47
      FieldName = 'UnitName'
      Size = 50
    end
    object qryEntityEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585
      DisplayWidth = 12
      FieldName = 'Entity'
      ReadOnly = True
    end
    object qryEntityWeight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606
      DisplayWidth = 12
      FieldName = 'Weight'
      ReadOnly = True
    end
    object qryEntityPrice: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594
      DisplayWidth = 24
      FieldName = 'Price'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object SrcStore: TDataSource
    DataSet = qryStore
    Left = 240
    Top = 96
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
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    Left = 560
    Top = 160
    Version = '7.0'
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
      object ppLabel1: TppLabel
        UserName = 'Label1'
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
      object ppLabel3: TppLabel
        UserName = 'Label3'
        OnGetText = ppLabel3GetText
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
    DataSource = SrcStore
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 400
    Top = 157
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
    DataSource = SrcEntity
    OpenDataSource = False
    UserName = 'DBPipeline2'
    Left = 480
    Top = 157
    MasterDataPipelineName = 'ppDBPipeline1'
    object ppDBPipeline2ppField1: TppField
      FieldAlias = 'StoreID'
      FieldName = 'StoreID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField2: TppField
      FieldAlias = 'StuffCode'
      FieldName = 'StuffCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField3: TppField
      FieldAlias = 'c_StuffName'
      FieldName = 'c_StuffName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField4: TppField
      FieldAlias = 'UnitName'
      FieldName = 'UnitName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField5: TppField
      FieldAlias = 'Entity'
      FieldName = 'Entity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField6: TppField
      FieldAlias = 'Weight'
      FieldName = 'Weight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField7: TppField
      FieldAlias = 'Price'
      FieldName = 'Price'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
  end
  object PopMnuForm: TPopupMenu
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    Left = 395
    Top = 216
    object MenuItem4: TMenuItem
      Action = actPrint
    end
    object N5: TMenuItem
      Action = actFilter
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object MenuItem1: TMenuItem
      Action = actsendtoexel
    end
    object Exel1: TMenuItem
      Action = actSearch_
    end
    object N3: TMenuItem
      Action = actSort
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object N2: TMenuItem
      Action = actExit
    end
  end
end

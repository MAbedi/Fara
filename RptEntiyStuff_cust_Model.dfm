inherited RptEntiyStuff_cust_ModelF: TRptEntiyStuff_cust_ModelF
  Left = 194
  Top = 140
  Width = 803
  Height = 564
  Caption = #1711#1586#1575#1585#1588' '#1605#1608#1580#1608#1583#1610' '#1576#1585#1581#1587#1576' '#1587#1601#1575#1585#1588' '#1583#1607#1606#1583#1607' '#1608' '#1605#1583#1604' '#1605#1581#1589#1608#1604
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 489
    Width = 795
    object BitBtn2: TBitBtn
      Left = 633
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Anchors = [akRight, akBottom]
      Caption = #1670#1575#1662' (F7)'
      TabOrder = 1
    end
    object BitBtn7: TBitBtn
      Left = 711
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
          Width = 50
        end>
      ParentBiDiMode = False
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 791
      Height = 394
      Align = alClient
      Color = clCream
      DataSource = SrcEntity
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnMouseUp = DBGrid1MouseUp
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
          Width = 195
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
          Expanded = False
          FieldName = 'PersonID1'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CustName'
          Width = 137
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ProductModel'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ModelName'
          Width = 212
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
    object StatusBar2: TStatusBar
      Left = 2
      Top = 396
      Width = 791
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
          Text = #1580#1605#1593' '#1587#1591#1585#1607#1575#1610' '#1575#1606#1578#1582#1575#1576#1610
          Width = 50
        end>
      ParentBiDiMode = False
    end
  end
  inherited ActionList: TActionList
    Left = 640
    Top = 16
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
    Left = 592
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
        Value = 0
      end
      item
        Name = 'n_StoreIDTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 5
        Size = 2
        Value = 999999
      end>
    SQL.Strings = (
      'SELECT     n_StoreID, c_StoreName'
      'FROM         Stores'
      'WHERE     (n_StoreID BETWEEN :n_StoreIDForm  AND :n_StoreIDTo)')
    Left = 360
    Top = 8
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
    AfterOpen = qryEntityAfterOpen
    OnCalcFields = qryEntityCalcFields
    Parameters = <
      item
        Name = 'DateFrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '0000/00/00'
      end
      item
        Name = 'DateTo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '9999/99/99'
      end
      item
        Name = 'StoreIDFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 0
      end
      item
        Name = 'StoreIDTo'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 9999
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
        Value = 9999999
      end
      item
        Name = 'PersonID1From'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'PersonID1To'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 9999999
      end
      item
        Name = 'ModelFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'ModelTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 9999999
      end>
    SQL.Strings = (
      
        'SELECT     dbo.Recipts.StoreID, dbo.ReciptItems.StuffCode, dbo.U' +
        'nits.UnitName, SUM(dbo.ReciptItems.InputEntity - dbo.ReciptItems' +
        '.OutputEntity) AS Entity,'
      
        '                      Round(SUM(dbo.ReciptItems.InputWeight - db' +
        'o.ReciptItems.OutputWeight),3) AS Weight,'
      
        '                      Round(SUM(dbo.ReciptItems.TotalInputPrice ' +
        '- dbo.ReciptItems.TotalOutputPrice),3) AS Price, dbo.ReciptItems' +
        '.ProductModel, dbo.ReciptItems.PersonID1,'
      
        '                      dbo.Customers.CustName, dbo.LookUps.Name A' +
        'S ModelName, dbo.StuffCoding.c_StuffName'
      'FROM      dbo.Units INNER JOIN'
      
        '          dbo.StuffCoding ON dbo.Units.UnitCode = dbo.StuffCodin' +
        'g.n_UnitCode RIGHT OUTER JOIN'
      '          dbo.ReciptItems INNER JOIN'
      
        '          dbo.Recipts ON dbo.ReciptItems.ReciptID = dbo.Recipts.' +
        'ReciptID ON dbo.StuffCoding.c_StuffCode = dbo.ReciptItems.StuffC' +
        'ode INNER JOIN'
      
        '           dbo.ReciptTypes ON dbo.Recipts.ReciptType = dbo.Recip' +
        'tTypes.ReciptType  LEFT OUTER JOIN'
      
        '          dbo.LookUps ON dbo.ReciptItems.ProductModel = dbo.Look' +
        'Ups.LookUpID LEFT OUTER JOIN'
      
        '          dbo.Customers ON dbo.ReciptItems.PersonID1 = dbo.Custo' +
        'mers.CustID'
      'WHERE    (Recipts.ReciptDate BETWEEN :DateFrom  AND :DateTo)'
      '     AND (Recipts.StoreID BETWEEN :StoreIDFrom AND :StoreIDTo )'
      
        '     AND (ReciptItems.StuffCode BETWEEN :StuffCodeFrom AND :Stuf' +
        'fCodeTo)'
      
        '     AND (ReciptItems.PersonID1 BETWEEN :PersonID1From AND :Pers' +
        'onID1To)'
      
        '     AND (dbo.ReciptItems.ProductModel BETWEEN :ModelFrom and :M' +
        'odelTo)'
      '     AND (ReciptTypes.EffectType IN (2, 4))'
      '     AND (dbo.Recipts.ReciptState < 3)'
      
        'GROUP BY dbo.Recipts.StoreID, dbo.ReciptItems.StuffCode, dbo.Uni' +
        'ts.UnitName, dbo.ReciptItems.ProductModel, dbo.ReciptItems.Perso' +
        'nID1,'
      
        '         dbo.Customers.CustName, dbo.LookUps.Name, dbo.StuffCodi' +
        'ng.c_StuffName'
      
        'HAVING                (SUM(dbo.ReciptItems.InputEntity - dbo.Rec' +
        'iptItems.OutputEntity) >= 0.0001 OR'
      
        '                      SUM(dbo.ReciptItems.InputEntity - dbo.Reci' +
        'ptItems.OutputEntity) <= - 0.0001) OR'
      
        '                      (SUM(dbo.ReciptItems.InputWeight - dbo.Rec' +
        'iptItems.OutputWeight) >= 0.0001) OR'
      
        '                      (SUM(dbo.ReciptItems.InputWeight - dbo.Rec' +
        'iptItems.OutputWeight) <= - 0.0001)OR'
      
        '                      (SUM(dbo.ReciptItems.TotalInputPrice - dbo' +
        '.ReciptItems.TotalOutputPrice) >= 0.1) OR'
      
        '                      (SUM(dbo.ReciptItems.TotalInputPrice - dbo' +
        '.ReciptItems.TotalOutputPrice) <= - 0.1)'
      ''
      '')
    Left = 184
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
    object qryEntityProductModel: TIntegerField
      DisplayLabel = #1603#1583' '#1605#1583#1604
      FieldName = 'ProductModel'
    end
    object qryEntity_ROW: TIntegerField
      FieldKind = fkCalculated
      FieldName = '_ROW'
      Calculated = True
    end
    object qryEntityPersonID1: TIntegerField
      DisplayLabel = #1603#1583' '#1587#1601#1575#1585#1588' '
      FieldName = 'PersonID1'
    end
    object qryEntityCustName: TStringField
      DisplayLabel = #1587#1601#1575#1585#1588' '#1583#1607#1606#1583#1607
      FieldName = 'CustName'
      Size = 120
    end
    object qryEntityModelName: TStringField
      DisplayLabel = #1605#1583#1604' '#1603#1575#1604#1575
      FieldName = 'ModelName'
      Size = 50
    end
  end
  object SrcStore: TDataSource
    DataSet = qryStore
    Left = 408
    Top = 8
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    Template.FileName = 'D:\projects\Fara\BSell\Exe\Report\RptEntityStuff_cust.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    Left = 728
    Top = 112
    Version = '7.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 37306
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 29898
        mmWidth = 266701
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        OnGetText = ppLabel1GetText
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 111125
        mmTop = 1323
        mmWidth = 47625
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = #1711#1586#1575#1585#1588' '#1605#1608#1580#1608#1583#1610' '#1576#1585#1581#1587#1576' '#1587#1601#1575#1585#1588' '#1583#1607#1606#1583#1607' '#1608' '#1605#1583#1604' '#1605#1581#1589#1608#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7197
        mmLeft = 93472
        mmTop = 6615
        mmWidth = 82931
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 0
        mmTop = 16404
        mmWidth = 266701
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
        mmHeight = 6615
        mmLeft = 247650
        mmTop = 20638
        mmWidth = 17992
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
        mmLeft = 25665
        mmTop = 30163
        mmWidth = 16140
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
        mmLeft = 42863
        mmTop = 30163
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = #1608#1575#1581#1583' '#1588#1605#1575#1585#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 168540
        mmTop = 30427
        mmWidth = 16669
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
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 186002
        mmTop = 30427
        mmWidth = 62706
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
        mmLeft = 529
        mmTop = 30427
        mmWidth = 24342
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
        mmLeft = 3969
        mmTop = 23019
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
        mmLeft = 3969
        mmTop = 9790
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
        mmLeft = 229659
        mmTop = 20638
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
        mmHeight = 6615
        mmLeft = 165629
        mmTop = 20638
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
        mmLeft = 3969
        mmTop = 4233
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
        mmLeft = 254794
        mmTop = 30163
        mmWidth = 8731
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 184150
        mmTop = 30163
        mmWidth = 1588
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 247650
        mmTop = 30163
        mmWidth = 1588
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 54504
        mmTop = 29898
        mmWidth = 1588
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 41010
        mmTop = 30163
        mmWidth = 1588
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 23813
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
        mmLeft = 3969
        mmTop = 17463
        mmWidth = 7620
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = #1603#1583' '#1605#1583#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6604
        mmLeft = 95398
        mmTop = 30163
        mmWidth = 9229
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 89959
        mmTop = 30163
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = #1605#1583#1604' '#1603#1575#1604#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 56356
        mmTop = 30163
        mmWidth = 34660
        BandType = 0
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 107156
        mmTop = 30163
        mmWidth = 1588
        BandType = 0
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 166688
        mmTop = 29898
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = #1603#1583' '#1587#1601#1575#1585#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6604
        mmLeft = 152178
        mmTop = 30163
        mmWidth = 14732
        BandType = 0
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 149490
        mmTop = 29898
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = #1587#1601#1575#1585#1588' '#1583#1607#1606#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 109273
        mmTop = 30163
        mmWidth = 41275
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 0
        mmWidth = 266701
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipeline2
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'Letter'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 215900
          PrinterSetup.mmPaperWidth = 279401
          PrinterSetup.PaperSize = 1
          Version = '7.0'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline2'
          object ppDetailBand2: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 6350
            mmPrintPosition = 0
            object ppLine22: TppLine
              UserName = 'Line22'
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6350
              mmLeft = 248709
              mmTop = 0
              mmWidth = 529
              BandType = 4
            end
            object ppLine23: TppLine
              UserName = 'Line23'
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6350
              mmLeft = 183886
              mmTop = 0
              mmWidth = 1852
              BandType = 4
            end
            object ppLine24: TppLine
              UserName = 'Line24'
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6350
              mmLeft = 40746
              mmTop = 0
              mmWidth = 1852
              BandType = 4
            end
            object ppLine25: TppLine
              UserName = 'Line25'
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6350
              mmLeft = 23548
              mmTop = 0
              mmWidth = 1852
              BandType = 4
            end
            object ppLine33: TppLine
              UserName = 'Line33'
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6350
              mmLeft = 54240
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
              mmLeft = 25665
              mmTop = 0
              mmWidth = 16140
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
              mmLeft = 42863
              mmTop = 0
              mmWidth = 12435
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
              mmLeft = 168540
              mmTop = 0
              mmWidth = 16669
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
              mmLeft = 186002
              mmTop = 0
              mmWidth = 62706
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
              mmLeft = 529
              mmTop = 0
              mmWidth = 24342
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
              mmLeft = 249503
              mmTop = 0
              mmWidth = 16404
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
            object ppDBText9: TppDBText
              UserName = 'DBText9'
              DataField = 'ProductModel'
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
              mmLeft = 92075
              mmTop = 0
              mmWidth = 15875
              BandType = 4
            end
            object ppLine10: TppLine
              UserName = 'Line10'
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6350
              mmLeft = 91017
              mmTop = 0
              mmWidth = 529
              BandType = 4
            end
            object ppDBText10: TppDBText
              UserName = 'DBText10'
              DataField = 'ModelName'
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
              mmLeft = 56356
              mmTop = 0
              mmWidth = 34660
              BandType = 4
            end
            object ppLine12: TppLine
              UserName = 'Line12'
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6350
              mmLeft = 106892
              mmTop = 0
              mmWidth = 1852
              BandType = 4
            end
            object ppDBText11: TppDBText
              UserName = 'DBText101'
              DataField = 'CustName'
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
              mmLeft = 109273
              mmTop = 0
              mmWidth = 41275
              BandType = 4
            end
            object ppLine15: TppLine
              UserName = 'Line101'
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6350
              mmLeft = 150548
              mmTop = 0
              mmWidth = 529
              BandType = 4
            end
            object ppDBText12: TppDBText
              UserName = 'DBText12'
              DataField = 'PersonID1'
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
              mmLeft = 151607
              mmTop = 0
              mmWidth = 15875
              BandType = 4
            end
            object ppLine16: TppLine
              UserName = 'Line16'
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6350
              mmLeft = 166423
              mmTop = 0
              mmWidth = 1852
              BandType = 4
            end
            object ppLine2: TppLine
              UserName = 'Line2'
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6350
              mmLeft = 264584
              mmTop = 0
              mmWidth = 2117
              BandType = 4
            end
          end
          object ppSummaryBand2: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
            object ppShape3: TppShape
              UserName = 'Shape3'
              mmHeight = 7144
              mmLeft = 0
              mmTop = 0
              mmWidth = 266701
              BandType = 7
            end
            object ppLine26: TppLine
              UserName = 'Line26'
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 7144
              mmLeft = 40746
              mmTop = 0
              mmWidth = 1852
              BandType = 7
            end
            object ppLine28: TppLine
              UserName = 'Line28'
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 7144
              mmLeft = 23548
              mmTop = 0
              mmWidth = 1852
              BandType = 7
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
              mmHeight = 6615
              mmLeft = 529
              mmTop = 0
              mmWidth = 24342
              BandType = 7
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
              mmHeight = 6615
              mmLeft = 25665
              mmTop = 0
              mmWidth = 16140
              BandType = 7
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
              mmHeight = 6615
              mmLeft = 42863
              mmTop = 0
              mmWidth = 12435
              BandType = 7
            end
            object ppLine34: TppLine
              UserName = 'Line34'
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 7144
              mmLeft = 54240
              mmTop = 0
              mmWidth = 1852
              BandType = 7
            end
            object ppLabel12: TppLabel
              UserName = 'Label12'
              Caption = ' : '#1578#1593#1583#1575#1583' '#1603#1575#1604#1575
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Yagut'
              Font.Size = 11
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 6604
              mmLeft = 232930
              mmTop = 0
              mmWidth = 15155
              BandType = 7
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
              TextAlignment = taRightJustified
              Transparent = True
              DBCalcType = dcCount
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6615
              mmLeft = 215107
              mmTop = 0
              mmWidth = 17198
              BandType = 7
            end
            object ppLabel14: TppLabel
              UserName = 'Label14'
              Caption = #1580#1605#1593' '#1603#1604':'#8207
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Yagut'
              Font.Size = 11
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 6604
              mmLeft = 253768
              mmTop = 0
              mmWidth = 11345
              BandType = 7
            end
          end
        end
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'n_StoreID'
      DataPipeline = ppDBPipeline1
      OutlineSettings.CreateNode = True
      NewPage = True
      ResetPageNo = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
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
    Left = 728
    Top = 237
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
    Left = 728
    Top = 181
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
    object ppDBPipeline2ppField8: TppField
      FieldAlias = 'ProductModel'
      FieldName = 'ProductModel'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField9: TppField
      FieldAlias = '_ROW'
      FieldName = '_ROW'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField10: TppField
      FieldAlias = 'PersonID1'
      FieldName = 'PersonID1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField11: TppField
      FieldAlias = 'CustName'
      FieldName = 'CustName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField12: TppField
      FieldAlias = 'ModelName'
      FieldName = 'ModelName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
  end
  object qryinit: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'ReciptType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT  * FROM    ReciptTypes'
      #13'where ReciptType=:ReciptType'
      #13#13'ORDER BY ReciptType')
    Left = 532
    Top = 7
  end
end

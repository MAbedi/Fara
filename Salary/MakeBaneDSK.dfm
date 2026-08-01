inherited MakeBaneDSKF: TMakeBaneDSKF
  Left = 129
  Top = 106
  Caption = #1578#1607#1610#1607' '#1583#1610#1587#1603#1578' '#1576#1575#1606#1603
  OldCreateOrder = True
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    inherited BtnReject: TBitBtn
      TabOrder = 3
    end
    object BitBtn3: TBitBtn
      Left = 544
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Anchors = [akTop, akRight]
      Caption = #1670#1575#1662
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      Left = 624
      Top = 8
      Width = 75
      Height = 25
      Action = actMake
      Anchors = [akTop, akRight]
      Caption = #1578#1607#1610#1607' '#1583#1610#1587#1603#1578
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      Left = 704
      Top = 8
      Width = 75
      Height = 25
      Action = actLimit
      Anchors = [akTop, akRight]
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 0
    end
  end
  inherited Panel2: TPanel
    object Label1: TLabel
      Left = 81
      Top = 11
      Width = 21
      Height = 13
      Caption = #1578#1575#1585#1610#1582
    end
    object mskDate: TMaskEdit
      Left = 8
      Top = 8
      Width = 66
      Height = 21
      EditMask = '9999/99/99;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /  '
    end
  end
  inherited Panel3: TPanel
    Top = 89
    Height = 404
    object StatusBar1: TStatusBar
      Left = 2
      Top = 383
      Width = 786
      Height = 19
      Panels = <
        item
          Width = 200
        end
        item
          Width = 200
        end
        item
          Width = 200
        end>
    end
    object Memo1: TMemo
      Left = 538
      Top = 2
      Width = 250
      Height = 381
      Align = alRight
      Color = clCream
      Ctl3D = True
      HideSelection = False
      ParentCtl3D = False
      ScrollBars = ssVertical
      TabOrder = 1
      WantReturns = False
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 536
      Height = 381
      Align = alClient
      Color = clCream
      DataSource = srcList
      DefaultDrawing = False
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = '_radif'
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_PersonelNo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pName'
          Width = 146
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'n_value'
          Width = 117
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_AccountNumber'
          Visible = True
        end>
    end
  end
  object ToolBar1: TToolBar [3]
    Left = 0
    Top = 53
    Width = 790
    Height = 36
    BorderWidth = 2
    ButtonHeight = 21
    ButtonWidth = 54
    Caption = 'ToolBar1'
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    EdgeInner = esLowered
    ShowCaptions = True
    TabOrder = 3
    object ToolButton1: TToolButton
      Tag = 1
      Left = 0
      Top = 2
      Caption = #1601#1585#1608#1585#1583#1610#1606
      Grouped = True
      ImageIndex = 0
      Style = tbsCheck
      OnClick = ToolButton12Click
    end
    object ToolButton2: TToolButton
      Tag = 2
      Left = 54
      Top = 2
      Caption = #1575#1585#1583#1610#1576#1607#1588#1578
      Grouped = True
      ImageIndex = 1
      Style = tbsCheck
      OnClick = ToolButton12Click
    end
    object ToolButton3: TToolButton
      Tag = 3
      Left = 108
      Top = 2
      Caption = #1582#1585#1583#1575#1583
      Grouped = True
      ImageIndex = 2
      Style = tbsCheck
      OnClick = ToolButton12Click
    end
    object ToolButton4: TToolButton
      Tag = 4
      Left = 162
      Top = 2
      Caption = #1578#1610#1585
      Grouped = True
      ImageIndex = 3
      Style = tbsCheck
      OnClick = ToolButton12Click
    end
    object ToolButton5: TToolButton
      Tag = 5
      Left = 216
      Top = 2
      Caption = #1605#1585#1583#1575#1583
      Grouped = True
      ImageIndex = 4
      Style = tbsCheck
      OnClick = ToolButton12Click
    end
    object ToolButton6: TToolButton
      Tag = 6
      Left = 270
      Top = 2
      Caption = #1588#1607#1585#1610#1608#1585
      Grouped = True
      ImageIndex = 5
      Style = tbsCheck
      OnClick = ToolButton12Click
    end
    object ToolButton7: TToolButton
      Tag = 7
      Left = 324
      Top = 2
      Caption = #1605#1607#1585
      Grouped = True
      ImageIndex = 6
      Style = tbsCheck
      OnClick = ToolButton12Click
    end
    object ToolButton8: TToolButton
      Tag = 8
      Left = 378
      Top = 2
      Caption = #1570#1576#1575#1606
      Grouped = True
      ImageIndex = 7
      Style = tbsCheck
      OnClick = ToolButton12Click
    end
    object ToolButton9: TToolButton
      Tag = 9
      Left = 432
      Top = 2
      Caption = #1570#1584#1585
      Grouped = True
      ImageIndex = 8
      Style = tbsCheck
      OnClick = ToolButton12Click
    end
    object ToolButton10: TToolButton
      Tag = 10
      Left = 486
      Top = 2
      Caption = #1583#1610
      Grouped = True
      ImageIndex = 9
      Style = tbsCheck
      OnClick = ToolButton12Click
    end
    object ToolButton11: TToolButton
      Tag = 11
      Left = 540
      Top = 2
      Caption = #1576#1607#1605#1606
      Grouped = True
      ImageIndex = 10
      Style = tbsCheck
      OnClick = ToolButton12Click
    end
    object ToolButton12: TToolButton
      Tag = 12
      Left = 594
      Top = 2
      Caption = #1575#1587#1601#1606#1583
      Grouped = True
      ImageIndex = 11
      Style = tbsCheck
      OnClick = ToolButton12Click
    end
  end
  inherited ActionList: TActionList
    Left = 72
    Top = 72
    object actMakeJari: TAction
      Caption = #1581#1587#1575#1576' '#1580#1575#1585#1610
      Hint = ' '
      OnExecute = actMakeJariExecute
    end
    object actMakePasAndaz: TAction
      Caption = #1581#1587#1575#1576' '#1662#1587#8204#1575#1606#1583#1575#1586
      Hint = ' '
      ShortCut = 117
      OnExecute = actMakePasAndazExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      Hint = ' '
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actMake: TAction
      Caption = #1578#1607#1610#1607' '#1583#1610#1587#1603#1578
      ShortCut = 116
      OnExecute = actMakeExecute
    end
    object actLimit: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actLimitExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 152
  end
  object srcList: TDataSource
    DataSet = qryList
    Left = 240
    Top = 209
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcList
    UserName = 'DBPipeline1'
    Left = 216
    Top = 297
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    Left = 296
    Top = 329
    Version = '7.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 17198
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        OnGetText = ppLabel1GetText
        Caption = #1606#1575#1605' '#1588#1585#1603#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 93398
        mmTop = 529
        mmWidth = 16404
        BandType = 1
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        OnGetText = ppLabel2GetText
        Caption = #1604#1610#1587#1578' '#1581#1602#1608#1602
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5969
        mmLeft = 183436
        mmTop = 6350
        mmWidth = 15452
        BandType = 1
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        OnGetText = ppLabel3GetText
        Caption = #1578#1575#1585#1610#1582' '#1670#1575#1662
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 5800
        mmLeft = 1058
        mmTop = 6085
        mmWidth = 10795
        BandType = 1
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 794
        mmTop = 10848
        mmWidth = 201348
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 10583
      mmPrintPosition = 0
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = #1585#1583#1610#1601
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5292
        mmLeft = 192352
        mmTop = 3440
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = #1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5292
        mmLeft = 164571
        mmTop = 3440
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = #1606#1575#1605' '#1662#1585#1587#1606#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5292
        mmLeft = 141023
        mmTop = 3440
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = #1582#1575#1604#1589' '#1583#1585#1610#1575#1601#1578#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5292
        mmLeft = 70115
        mmTop = 3440
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5292
        mmLeft = 28310
        mmTop = 3440
        mmWidth = 15346
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 794
        mmTop = 6350
        mmWidth = 201348
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Caption = '   '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        mmHeight = 5292
        mmLeft = 185209
        mmTop = 5292
        mmWidth = 3440
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Caption = '   '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        mmHeight = 5292
        mmLeft = 157427
        mmTop = 5292
        mmWidth = 3440
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        AutoSize = False
        Caption = '   '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        mmHeight = 5292
        mmLeft = 91281
        mmTop = 5556
        mmWidth = 3440
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label102'
        AutoSize = False
        Caption = '   '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        mmHeight = 5292
        mmLeft = 61648
        mmTop = 5821
        mmWidth = 3440
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 8202
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'c_PersonelNo'
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
        mmHeight = 6435
        mmLeft = 162984
        mmTop = 1058
        mmWidth = 20902
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'pName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 96044
        mmTop = 1058
        mmWidth = 60590
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'n_value'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 65881
        mmTop = 1058
        mmWidth = 26194
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'c_accountNumber'
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
        mmHeight = 6435
        mmLeft = 20902
        mmTop = 1058
        mmWidth = 27517
        BandType = 4
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'c_PersonelNo'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 189707
        mmTop = 1323
        mmWidth = 11906
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 17727
      mmPrintPosition = 0
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = #1578#1593#1583#1575#1583' '#1606#1601#1585#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5292
        mmLeft = 50800
        mmTop = 1588
        mmWidth = 12965
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'c_PersonelNo'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7705
        mmLeft = 35983
        mmTop = 794
        mmWidth = 11906
        BandType = 7
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = #1580#1605#1593' '#1583#1585#1610#1575#1601#1578#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5376
        mmLeft = 50800
        mmTop = 9790
        mmWidth = 14520
        BandType = 7
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 794
        mmTop = 529
        mmWidth = 201348
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'n_value'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7673
        mmLeft = 6615
        mmTop = 9260
        mmWidth = 41275
        BandType = 7
      end
    end
  end
  object qryList: TADOQuery
    Connection = DMF.ADCPayRoll
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = qryListCalcFields
    Parameters = <
      item
        Name = 'StateFrom'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'StateTo'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'monthNo'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'pFrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end
      item
        Name = 'pTo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    SQL.Strings = (
      'SELECT DISTINCT '
      
        '                      FixedCalculated.c_PersonelNo, PersonelInfo' +
        '.c_name + '#39' '#39' + PersonelInfo.c_lastName AS pName, PersonelInfo.c' +
        '_AccountNumber, '
      '                      FixedCalculated.n_value'
      'FROM Pay.FixedCalculated INNER JOIN'
      
        '                      Pay.PersonelInfo ON FixedCalculated.c_Personel' +
        'No = PersonelInfo.c_PersonelNo INNER JOIN'
      
        '                      PersonelFunctions ON PersonelInfo.c_Person' +
        'elNo = PersonelFunctions.c_PersonelNo'
      
        'WHERE     (FixedCalculated.n_SalaryType = 10) AND (FixedCalculat' +
        'ed.n_code = 1) AND (PersonelInfo.n_PersonelState BETWEEN :StateF' +
        'rom AND :StateTo) AND'
      
        '                      (FixedCalculated.n_month = :monthNo)  AND ' +
        '(FixedCalculated.c_PersonelNo BETWEEN :pFrom  AND :pTo) ANd (Fix' +
        'edCalculated.n_value>0 )'
      'ORDER BY FixedCalculated.c_PersonelNo')
    Left = 128
    Top = 241
    object qryList_radif: TIntegerField
      DisplayLabel = #1585#1583#1610#1601
      FieldKind = fkCalculated
      FieldName = '_radif'
      Calculated = True
    end
    object qryListc_PersonelNo: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610
      FieldName = 'c_PersonelNo'
      Size = 12
    end
    object qryListpName: TStringField
      DisplayLabel = #1606#1575#1605' '#1662#1585#1587#1606#1604
      FieldName = 'pName'
      ReadOnly = True
      Size = 56
    end
    object qryListn_value: TBCDField
      DisplayLabel = #1582#1575#1604#1589' '#1662#1585#1583#1575#1582#1578#1610
      FieldName = 'n_value'
      currency = True
      Precision = 19
    end
    object qryListc_AccountNumber: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
      FieldName = 'c_AccountNumber'
    end
  end
end

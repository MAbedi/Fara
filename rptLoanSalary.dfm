inherited rptLoanSalaryF: TrptLoanSalaryF
  Left = 208
  Top = 134
  Caption = #1604#1610#1587#1578' '#1605#1575#1607#1575#1606#1607' '#1608#1575#1605
  OldCreateOrder = True
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    inherited BtnReject: TBitBtn
      Left = 12
    end
    object BitBtn7: TBitBtn
      Left = 701
      Top = 8
      Width = 75
      Height = 25
      Action = actFilter
      Anchors = [akRight, akBottom]
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      Left = 625
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Anchors = [akRight, akBottom]
      Caption = #1670#1575#1662' (F7)'
      TabOrder = 2
    end
    object BitBtn5: TBitBtn
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 3
    end
    object BitBtn4: TBitBtn
      Left = 240
      Top = 8
      Width = 75
      Height = 25
      Action = actSendtoExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 4
    end
    object BitBtn6: TBitBtn
      Left = 164
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 5
    end
  end
  inherited Panel3: TPanel
    Height = 410
    object DBGrid1: TDBGrid
      Left = 2
      Top = 38
      Width = 776
      Height = 370
      Align = alClient
      Color = clCream
      DataSource = srcLoanSalary
      TabOrder = 0
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
          FieldName = 'PersonelNO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PersoneName_L1'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PersoneName_L2'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SalaryName_L1'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SalaryName_L2'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Price'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AidNo1'
          Width = 102
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AidDate1'
          Width = 102
          Visible = True
        end>
    end
    object ToolBar1: TToolBar
      Left = 2
      Top = 2
      Width = 776
      Height = 36
      BorderWidth = 2
      ButtonHeight = 21
      ButtonWidth = 54
      Caption = 'ToolBar1'
      EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
      EdgeInner = esLowered
      ShowCaptions = True
      TabOrder = 1
      object ToolButton1: TToolButton
        Tag = 1
        Left = 0
        Top = 2
        Caption = #1601#1585#1608#1585#1583#1610#1606
        Grouped = True
        ImageIndex = 0
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton2: TToolButton
        Tag = 2
        Left = 54
        Top = 2
        Caption = #1575#1585#1583#1610#1576#1607#1588#1578
        Grouped = True
        ImageIndex = 1
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton3: TToolButton
        Tag = 3
        Left = 108
        Top = 2
        Caption = #1582#1585#1583#1575#1583
        Grouped = True
        ImageIndex = 2
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton4: TToolButton
        Tag = 4
        Left = 162
        Top = 2
        Caption = #1578#1610#1585
        Grouped = True
        ImageIndex = 3
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton5: TToolButton
        Tag = 5
        Left = 216
        Top = 2
        Caption = #1605#1585#1583#1575#1583
        Grouped = True
        ImageIndex = 4
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton6: TToolButton
        Tag = 6
        Left = 270
        Top = 2
        Caption = #1588#1607#1585#1610#1608#1585
        Grouped = True
        ImageIndex = 5
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton7: TToolButton
        Tag = 7
        Left = 324
        Top = 2
        Caption = #1605#1607#1585
        Grouped = True
        ImageIndex = 6
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton8: TToolButton
        Tag = 8
        Left = 378
        Top = 2
        Caption = #1570#1576#1575#1606
        Grouped = True
        ImageIndex = 7
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton9: TToolButton
        Tag = 9
        Left = 432
        Top = 2
        Caption = #1570#1584#1585
        Grouped = True
        ImageIndex = 8
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton10: TToolButton
        Tag = 10
        Left = 486
        Top = 2
        Caption = #1583#1610
        Grouped = True
        ImageIndex = 9
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton11: TToolButton
        Tag = 11
        Left = 540
        Top = 2
        Caption = #1576#1607#1605#1606
        Grouped = True
        ImageIndex = 10
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton12: TToolButton
        Tag = 12
        Left = 594
        Top = 2
        Caption = #1575#1587#1601#1606#1583
        Grouped = True
        ImageIndex = 11
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
    end
  end
  object StatusBar1: TStatusBar [3]
    Left = 0
    Top = 463
    Width = 780
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
      end
      item
        Text = #1580#1605#1593' '#1603#1604' '
        Width = 50
      end>
  end
  inherited ActionList: TActionList
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662' (F7)'
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
  end
  object qryLoanSalary: TADOQuery
    Connection = DMF.adcSalary
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryLoanSalaryAfterOpen
    Parameters = <
      item
        Name = 'FormInfoIDFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'FormInfoIDTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PersonelFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PersonelTo'
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
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT  Pay.PersonelDecExt.PersonelNo, Pay.PersonelInfo.name_L1 ' +
        '+ '#39' '#39' + Pay.PersonelInfo.lastName_L1 AS PersoneName_L1,'
      
        '        Pay.PersonelInfo.name_L2 + '#39' '#39' + Pay.PersonelInfo.lastNa' +
        'me_L2 AS PersoneName_L2, Pay.FormsInfo.InfoName_L1 AS SalaryName' +
        '_L1,'
      
        '        Pay.FormsInfo.InfoName_L2 AS SalaryName_L2, Pay.Personel' +
        'DecExt.AidNo1, Pay.PersonelDecExt.AidDate1, Pay.FixedCalculated.' +
        'Price'
      ''
      'FROM    Pay.FixedCalculated INNER JOIN'
      '        Pay.FormsInfo INNER JOIN'
      
        '        Pay.PersonelDecExt ON Pay.FormsInfo.FormInfoID = Pay.Per' +
        'sonelDecExt.FormInfoID ON'
      
        '        Pay.FixedCalculated.FormInfoID = Pay.PersonelDecExt.Form' +
        'InfoID AND Pay.FixedCalculated.SalaryID = Pay.PersonelDecExt.For' +
        'mInfoID AND'
      
        '        Pay.FixedCalculated.PersonelNO = Pay.PersonelDecExt.Pers' +
        'onelNo AND Pay.FixedCalculated.Price = Pay.PersonelDecExt.Employ' +
        'eeAmount AND'
      
        '        Pay.FixedCalculated.FunctionID = Pay.PersonelDecExt.DecE' +
        'xtID INNER JOIN'
      
        '        Pay.FixedCalActive() FixedCalActive ON Pay.FixedCalculat' +
        'ed.Mounth = FixedCalActive.Mounth AND'
      
        '        Pay.FixedCalculated.ArchiveID = FixedCalActive.F_Archive' +
        'ID AND Pay.FixedCalculated.PersonelNO = FixedCalActive.PersonelN' +
        'O INNER JOIN'
      
        '        Pay.PersonelInfo ON Pay.PersonelDecExt.PersonelNo = Pay.' +
        'PersonelInfo.PersonelNo'
      ''
      'WHERE   (Pay.FormsInfo.FormType = 33) AND'
      
        '        (Pay.FormsInfo.InfoID BETWEEN :FormInfoIDFrom    AND :Fo' +
        'rmInfoIDTo) AND'
      
        '        (Pay.PersonelDecExt.PersonelNo BETWEEN :PersonelFrom    ' +
        'AND :PersonelTo) AND'
      '        (Pay.FixedCalculated.Mounth = :Mounth)'
      'ORDER BY Pay.PersonelDecExt.PersonelNo          ')
    Left = 224
    Top = 152
    object qryLoanSalaryPersonelNO: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610
      FieldName = 'PersonelNO'
    end
    object qryLoanSalaryPrice: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'Price'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryLoanSalaryPersoneName_L1: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1662#1585#1587#1606#1604
      FieldName = 'PersoneName_L1'
      ReadOnly = True
      Size = 56
    end
    object qryLoanSalaryPersoneName_L2: TStringField
      FieldName = 'PersoneName_L2'
      ReadOnly = True
      Size = 56
    end
    object qryLoanSalarySalaryName_L1: TStringField
      Tag = 3
      DisplayLabel = #1608#1575#1605
      FieldName = 'SalaryName_L1'
      Size = 255
    end
    object qryLoanSalarySalaryName_L2: TStringField
      FieldName = 'SalaryName_L2'
      Size = 255
    end
    object qryLoanSalaryAidNo1: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1608#1575#1605
      FieldName = 'AidNo1'
    end
    object qryLoanSalaryAidDate1: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1608#1575#1605
      FieldName = 'AidDate1'
      FixedChar = True
      Size = 10
    end
  end
  object srcLoanSalary: TDataSource
    DataSet = qryLoanSalary
    Left = 416
    Top = 149
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcLoanSalary
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 600
    Top = 152
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
    Template.FileName = 'D:\Projects\Fara\Salary\Exe\Report\rptPayableSalary.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    PreviewFormSettings.WindowState = wsMaximized
    Left = 688
    Top = 152
    Version = '7.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 24871
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        ParentWidth = True
        mmHeight = 7673
        mmLeft = 0
        mmTop = 17198
        mmWidth = 203300
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Caption = #1605#1576#1604#1594
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 1323
        mmTop = 17992
        mmWidth = 45244
        BandType = 0
      end
      object ppLblCompanyName: TppLabel
        UserName = 'LblCompanyName'
        OnGetText = ppLblCompanyNameGetText
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 75936
        mmTop = 0
        mmWidth = 51065
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'LblCaption'
        Caption = #1604#1610#1587#1578' '#1608#1575#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8424
        mmLeft = 92943
        mmTop = 6350
        mmWidth = 17314
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SysVarPageNo1'
        OnGetText = ppSystemVariable2GetText
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 9790
        mmTop = 9260
        mmWidth = 12171
        BandType = 0
      end
      object ppLblPrintDate: TppLabel
        UserName = 'lbprintdate'
        OnGetText = ppLblPrintDateGetText
        Caption = #1578#1575#1585#1610#1582' '#1711#1586#1575#1585#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 9790
        mmTop = 4233
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = #1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6011
        mmLeft = 182827
        mmTop = 17992
        mmWidth = 19579
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 182034
        mmTop = 17198
        mmWidth = 2910
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = #1605#1588#1582#1589#1575#1578' '#1662#1585#1587#1606#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 139700
        mmTop = 17992
        mmWidth = 41804
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 138907
        mmTop = 17463
        mmWidth = 2910
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label101'
        AutoSize = False
        Caption = #1606#1575#1605' '#1608#1575#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 86784
        mmTop = 17992
        mmWidth = 51594
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 47096
        mmTop = 17463
        mmWidth = 2910
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = #1578#1575#1585#1610#1582' '#1608#1575#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 48154
        mmTop = 17992
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = #1588#1605#1575#1585#1607' '#1608#1575#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 64558
        mmTop = 17992
        mmWidth = 20638
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 63765
        mmTop = 17463
        mmWidth = 2910
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 85725
        mmTop = 17463
        mmWidth = 2910
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLine21: TppLine
        UserName = 'Line21'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 0
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText1'
        DataField = 'PersonelNo'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7144
        mmLeft = 182563
        mmTop = 0
        mmWidth = 19579
        BandType = 4
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 138907
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 182034
        mmTop = 0
        mmWidth = 2910
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText2'
        DataField = 'PersoneName_L1'
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
        mmLeft = 139700
        mmTop = 0
        mmWidth = 41804
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText3'
        DataField = 'Price'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0;($#,0)'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7144
        mmLeft = 1323
        mmTop = 0
        mmWidth = 45244
        BandType = 4
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 201084
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 47096
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText4'
        DataField = 'SalaryName_L1'
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
        mmLeft = 86784
        mmTop = 0
        mmWidth = 51594
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'AidNo2'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7144
        mmLeft = 64558
        mmTop = 0
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'AidDate2'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7144
        mmLeft = 48154
        mmTop = 0
        mmWidth = 14817
        BandType = 4
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 85725
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 63765
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 8467
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 8467
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 8
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'Price'
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
        mmLeft = 1323
        mmTop = 265
        mmWidth = 45244
        BandType = 8
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = #1580#1605#1593
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 182563
        mmTop = 794
        mmWidth = 5556
        BandType = 8
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 47096
        mmTop = 0
        mmWidth = 2646
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8467
      mmPrintPosition = 0
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 8202
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'Price'
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
        mmLeft = 1323
        mmTop = 0
        mmWidth = 45244
        BandType = 7
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = #1580#1605#1593' '#1705#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 182563
        mmTop = 794
        mmWidth = 9525
        BandType = 7
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 47096
        mmTop = 0
        mmWidth = 2646
        BandType = 7
      end
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DMF.adcSalary
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryLoanSalaryAfterOpen
    Parameters = <
      item
        Name = 'Mounth'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'FormInfoIDFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'FormInfoIDTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PersonelFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PersonelTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Mounth2'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      ''
      
        'SELECT      Pay.PersonelDecExt.PersonelNo, Pay.PersonelInfo.last' +
        'Name_L1 + '#39' '#39' + Pay.PersonelInfo.name_L1 AS PersoneName_L1,'
      
        '                      Pay.PersonelInfo.lastName_L2 + '#39' '#39' + Pay.P' +
        'ersonelInfo.name_L2 AS PersoneName_L2, FormsInfo_1.InfoName_L1 A' +
        'S SalaryName_L1,'
      
        '                      FormsInfo_1.InfoName_L2 AS SalaryName_L2, ' +
        'Pay.PersonelDecExt.AidNo2, Pay.PersonelDecExt.AidDate2, Pay.Pers' +
        'onelDecExt.FirstMounth,'
      
        '                      Pay.PersonelDecExt.EndMounth, Pay.Personel' +
        'DecExt.EmployeeAmount as price, CAST(Pay.PersonelDecExt.EndMount' +
        'h AS int)'
      
        '                      + CAST(Pay.PersonelDecExt.FirstMounth AS i' +
        'nt) - 1 AS Expr1'
      'FROM         Pay.FormsInfo FormsInfo_1 INNER JOIN'
      
        '                      Pay.PersonelDecExt ON FormsInfo_1.FormInfo' +
        'ID = Pay.PersonelDecExt.FormInfoID LEFT OUTER JOIN'
      
        '                      Pay.PersonelInfo ON Pay.PersonelDecExt.Per' +
        'sonelNo = Pay.PersonelInfo.PersonelNo'
      
        'WHERE     (FormsInfo_1.FormType = 33) AND (CAST(Pay.PersonelDecE' +
        'xt.EndMounth AS int) + CAST(Pay.PersonelDecExt.FirstMounth AS in' +
        't) - 1 >= :Mounth) AND'
      
        '                      (FormsInfo_1.InfoID BETWEEN :FormInfoIDFro' +
        'm    AND :FormInfoIDTo)'
      
        '                      AND (Pay.PersonelDecExt.PersonelNo BETWEEN' +
        ' :PersonelFrom    AND :PersonelTo)'
      
        '                      AND (Pay.PersonelDecExt.FirstMounth <= :Mo' +
        'unth2)'
      'ORDER BY Pay.PersonelDecExt.PersonelNo')
    Left = 336
    Top = 272
    object IntegerField1: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610
      FieldName = 'PersonelNO'
    end
    object IntegerField2: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1576#1575#1610#1711#1575#1606#1610
      FieldName = 'ArchiveID'
    end
    object BCDField1: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'Price'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object StringField1: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1662#1585#1587#1606#1604
      FieldName = 'PersoneName_L1'
      ReadOnly = True
      Size = 56
    end
    object StringField2: TStringField
      FieldName = 'PersoneName_L2'
      ReadOnly = True
      Size = 56
    end
    object StringField3: TStringField
      Tag = 3
      DisplayLabel = #1608#1575#1605
      FieldName = 'SalaryName_L1'
      Size = 255
    end
    object StringField4: TStringField
      FieldName = 'SalaryName_L2'
      Size = 255
    end
    object WordField1: TWordField
      FieldName = 'Mounth'
    end
    object IntegerField3: TIntegerField
      FieldName = 'FormInfoID'
    end
  end
end

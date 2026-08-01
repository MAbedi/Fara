inherited rptFunction4ProjectPersonF: TrptFunction4ProjectPersonF
  Left = 197
  Top = 133
  Caption = #1711#1586#1575#1585#1588' '#1603#1575#1585#1603#1585#1583' '#1576#1607' '#1578#1601#1603#1610#1603' '#1662#1585#1608#1688#1607' '#1607#1575' '#1608#1662#1585#1587#1606#1604
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    inherited BtnReject: TBitBtn
      Left = 15
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
      Left = 623
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Anchors = [akRight, akBottom]
      Caption = #1670#1575#1662' (F7)'
      TabOrder = 2
    end
    object DBNavigator2: TDBNavigator
      Left = 345
      Top = 8
      Width = 272
      Height = 25
      DataSource = SRCFunction
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Anchors = [akLeft, akTop, akRight]
      Flat = True
      TabOrder = 3
    end
    object BitBtn4: TBitBtn
      Left = 248
      Top = 8
      Width = 90
      Height = 25
      Action = actSendtoExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 4
    end
    object BitBtn5: TBitBtn
      Left = 170
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1576#1607' '#1578#1585#1578#1610#1576
      TabOrder = 5
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006A00
        00006A0000006A000000FF00FF006A0000006A0000006A000000FFFFFF00FF00
        FF00FF00FF00FF00FF0000580300FF00FF00FF00FF00FF00FF00FFFFFF006A6A
        6A006A000000FF00FF00FF00FF00FF00FF00980000006A6A6A00FF00FF00FF00
        FF00FF00FF00005803006AFF6A0000580300FF00FF00FF00FF00FF00FF00FF00
        FF006A6A6A006A0000006A0000006A0000006A000000FF00FF00FF00FF00FF00
        FF00FF00FF006AFF6A006AB650000084000000580300FF00FF00FFFFFF00FF00
        FF00FF00FF006A000000FF00FF00980000006A000000FF00FF00FFFFFF00FF00
        FF00FF00FF006AFF6A006AB650000084000000580300FF00FF00FFFFFF00FF00
        FF00FF00FF00980000006A0000006A000000FF00FF00FF00FF00FF00FF000058
        0300005803000058030000580300005803000058030000580300FF00FF00FF00
        FF00FF00FF006A6A6A006A0000006A6A6A00FF00FF00FF00FF00FFFFFF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0098000000FF00FF00FF00FF00FF00FF00FFFFFF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FFFFFF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF000000
        6A0000006A0000006A0000006A0000006A0000006A00FF00FF00FFFFFF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF000000
        6A0000006A00FF00FF00FF00FF00FF00FF000000B600FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF006A6A6A0000006A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000006A0000006A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF006A6A6A0000006A00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF000000
        6A0000006A00FF00FF00FF00FF0000006A0000006A00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF001100
        7B0011007B0011007B0011007B0011007B0011007B00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00}
    end
    object BitBtn6: TBitBtn
      Left = 93
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 6
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00636B
        7300C69C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006394B500218C
        EF002173B500CE9C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF004AB5FF0042A5
        FF00218CEF007B849400CE9C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0052BD
        FF005ABDFF00218CEF002173B500CE9C9400FF00FF00FF00FF00FF00FF00FF00
        FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0031A5
        FF0052BDFF0042A5FF00218CEF0084849400CE9C9400FF00FF00FF00FF00FF00
        FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FFFFFF0052BDFF005ABDFF003184D60052636B00FF00FF009C6B6B00CEA5
        9C00D6B5A500CE9C9C00C6949400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0031A5FF0052BDFF00C6CEDE009C9C9C00AD8C8400E7D6BD00FFFF
        D600FFFFDE00FFFFD600EFDEC600FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00C6ADAD00CEA59400FFE7BD00FFF7CE00FFFF
        D600FFFFD600FFFFDE00FFFFE700FFFFFF00C6A5A500FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00BD8C8C00EFDEB500F7D6AD00FFF7CE00FFFF
        D600FFFFDE00FFFFEF00FFFFF700FFFFFF00F7EFDE00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00E7CEAD00FFEFBD00F7CE9C00FFEFC600FFFF
        D600FFFFDE00FFFFF700FFFFF700FFFFDE00FFFFDE00C6949400FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00EFD6B500FFE7B500F7C68C00F7DEB500FFFF
        D600FFFFDE00FFFFEF00FFFFEF00FFFFDE00FFFFDE00BD9C8C00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00E7CEAD00FFEFBD00EFBD8400F7C69400FFEF
        C600FFFFD600FFFFD600FFFFD600FFFFD600FFFFDE00C6949400FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00D6ADA500FFEFBD00F7DEAD00F7CE9C00F7D6
        A500F7E7BD00FFFFD600FFFFD600FFFFD600FFFFD600FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00C69C8C00FFFFFF00FFFFFF00F7C6
        9400EFBD8400F7C69400F7D6AD00FFEFC600BD9C8C00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00EFEFE700FFFFEF00FFE7
        B500F7DEAD00FFE7B500FFEFBD00C69C9400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C69C
        8C00CEA59C00C69C9400FF00FF00FF00FF00FF00FF00FF00FF00}
    end
  end
  inherited Panel3: TPanel
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 780
      Height = 426
      Align = alClient
      Color = clCream
      DataSource = SRCFunction
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
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
      Caption = #1576#1607' '#1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
  end
  object qryFunction: TADOQuery
    Connection = DMF.adcSalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT   ProjectID,allinfo.InfoName_L1,PersonelNo, name_l1 ,  na' +
        'me_l2 , sum(FunctionDay) as FunctionDay , Sum(FunctionTime) as F' +
        'unctionTime  '
      ' from('
      'SELECT '
      ' Pay.FunctionsAll.ProjectID, FormsInfo_1.InfoName_L1, '
      
        'Pay.FunctionsAll.FunctionId ,Pay.FunctionsAll.PersonelNo,( Pay.P' +
        'ersonelInfo.name_L1+'#39'  '#39'+Pay.PersonelInfo.lastName_L1) as name_l' +
        '1 , (Pay.PersonelInfo.name_L2+'#39'  '#39'+Pay.PersonelInfo.lastName_L2)' +
        ' as name_l2 '
      
        ', MAX(Pay.FunctionsAll.FunctionDay) AS FunctionDay, MAX(Pay.Func' +
        'tionsAll.FunctionTime) AS FunctionTime'
      
        ' FROM Pay.FunctionsAll INNER JOIN Pay.FormsInfo ON Pay.Functions' +
        'All.SalaryID = Pay.FormsInfo.FormInfoID  '
      
        ' INNER JOIN  Pay.PersonelInfo ON Pay.FunctionsAll.PersonelNo = d' +
        'bo.PersonelInfo.PersonelNo '
      
        ' INNER JOIN  Pay.FormTypes ON Pay.FormsInfo.FormType = Pay.FormT' +
        'ypes.FormType INNER JOIN'
      
        '                      Pay.FormsInfo FormsInfo_1 ON Pay.Functions' +
        'All.ProjectID = FormsInfo_1.FormInfoID '
      
        ' WHERE   (Pay.FormTypes.FunctionShow = 1)and (Pay.PersonelInfo.P' +
        'ersonelNo between 0 and 9999) '
      
        ' GROUP BY  FormsInfo_1.InfoName_L1,Pay.FunctionsAll.ProjectID,db' +
        'o.FunctionsAll.FunctionId ,Pay.FunctionsAll.PersonelNo,  Pay.Fun' +
        'ctionsAll.Mounth, Pay.FormTypes.FunctionShow ,'
      
        ' Pay.PersonelInfo.name_L1, Pay.PersonelInfo.name_L2,Pay.Personel' +
        'Info.lastName_L1, Pay.PersonelInfo.lastName_L2 )allinfo'
      
        'Group By ProjectID ,PersonelNo, name_l1 ,  name_l2,allinfo.InfoN' +
        'ame_L1 ')
    Left = 88
    Top = 125
  end
  object SRCFunction: TDataSource
    DataSet = qryFunction
    Left = 176
    Top = 125
  end
  object qryWage: TADOQuery
    Connection = DMF.adcSalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     dbo.FormsInfo.FormInfoID, dbo.FormsInfo.InfoName_L1, ' +
        'dbo.FormsInfo.InfoName_L2, dbo.FormTypes.FunctionShow'
      'FROM         dbo.FormsInfo INNER JOIN'
      
        '                      dbo.FormTypes ON dbo.FormsInfo.FormType = ' +
        'dbo.FormTypes.FormType'
      'WHERE     (dbo.FormTypes.FunctionShow = 1)')
    Left = 544
    Top = 8
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = SRCFunction
    UserName = 'DBPipeline1'
    Left = 392
    Top = 88
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\Projects\Fara\Salary\Exe\Report\RptFunction4_project_A4.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    PreviewFormSettings.WindowState = wsMaximized
    Left = 320
    Top = 88
    Version = '7.0'
    mmColumnWidth = 266300
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 27781
      mmPrintPosition = 0
      object ppShape3: TppShape
        UserName = 'Shape3'
        ParentWidth = True
        mmHeight = 11642
        mmLeft = 0
        mmTop = 16139
        mmWidth = 284427
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 103717
        mmTop = 0
        mmWidth = 51065
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'LblCaption'
        Caption = #1711#1586#1575#1585#1588' '#1603#1575#1585#1603#1585#1583' '#1576#1607' '#1578#1601#1603#1610#1603' '#1662#1585#1608#1688#1607' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8424
        mmLeft = 101482
        mmTop = 6085
        mmWidth = 55584
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'lbprintdate'
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
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SysVarPageNo1'
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 9525
        mmTop = 9525
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = #1587#1575#1593#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 219075
        mmTop = 20902
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = #1585#1608#1586
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 230188
        mmTop = 20373
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = #1603#1575#1585#1603#1585#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 219075
        mmTop = 16669
        mmWidth = 21167
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line1'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 11377
        mmLeft = 237596
        mmTop = 16140
        mmWidth = 3440
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 11377
        mmLeft = 212725
        mmTop = 16140
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = #1603#1583#1608#1593#1606#1608#1575#1606' '#1662#1585#1608#1688#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 261938
        mmTop = 10054
        mmWidth = 21167
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line4'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 11377
        mmLeft = 264055
        mmTop = 16140
        mmWidth = 3440
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = #1605#1588#1582#1589#1575#1578' '#1662#1585#1587#1606#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 241300
        mmTop = 18785
        mmWidth = 25665
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'InfoName_L1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 210609
        mmTop = 10054
        mmWidth = 39688
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText101'
        DataField = 'ProjectID'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 250825
        mmTop = 10054
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label1'
        Caption = #1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 267759
        mmTop = 18521
        mmWidth = 15875
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'FunctionDay'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 230188
        mmTop = 0
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'FunctionTime'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 219075
        mmTop = 0
        mmWidth = 10054
        BandType = 4
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6615
        mmLeft = 215107
        mmTop = 0
        mmWidth = 3440
        BandType = 4
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6615
        mmLeft = 280988
        mmTop = 0
        mmWidth = 3440
        BandType = 4
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6615
        mmLeft = 0
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'name_l1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 241300
        mmTop = 0
        mmWidth = 25665
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'PersonelNo'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 268553
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
      object ppLine14: TppLine
        UserName = 'Line101'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6615
        mmLeft = 264055
        mmTop = 0
        mmWidth = 3440
        BandType = 4
      end
      object ppLine4: TppLine
        UserName = 'Line5'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6615
        mmLeft = 237596
        mmTop = 0
        mmWidth = 3440
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 7673
        mmLeft = 0
        mmTop = 0
        mmWidth = 284427
        BandType = 7
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = #1580#1605#1593' '#1603#1604':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 273844
        mmTop = 529
        mmWidth = 10319
        BandType = 7
      end
      object ppDBCalc16: TppDBCalc
        UserName = 'DBCalc101'
        DataField = 'FunctionTime'
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
        mmHeight = 5556
        mmLeft = 219075
        mmTop = 1058
        mmWidth = 10054
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'FunctionDay'
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
        mmHeight = 5556
        mmLeft = 230188
        mmTop = 1058
        mmWidth = 10054
        BandType = 7
      end
      object ppLine1: TppLine
        UserName = 'Line2'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 215107
        mmTop = 0
        mmWidth = 3440
        BandType = 7
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 237596
        mmTop = 0
        mmWidth = 3440
        BandType = 7
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'ProjectID'
      DataPipeline = ppDBPipeline1
      OutlineSettings.CreateNode = True
      NewPage = True
      ResetPageNo = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 7673
        mmPrintPosition = 0
        object ppShape2: TppShape
          UserName = 'Shape2'
          mmHeight = 7673
          mmLeft = 0
          mmTop = 0
          mmWidth = 284428
          BandType = 5
          GroupNo = 0
        end
        object ppLabel1: TppLabel
          UserName = 'Label101'
          Caption = #1580#1605#1593' '#1603#1604':'#8207
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 5556
          mmLeft = 271992
          mmTop = 0
          mmWidth = 10319
          BandType = 5
          GroupNo = 0
        end
        object ppLine11: TppLine
          UserName = 'Line11'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 7673
          mmLeft = 237596
          mmTop = 0
          mmWidth = 3440
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'FunctionDay'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 5556
          mmLeft = 230188
          mmTop = 794
          mmWidth = 10054
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          DataField = 'FunctionTime'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 5556
          mmLeft = 219075
          mmTop = 794
          mmWidth = 10054
          BandType = 5
          GroupNo = 0
        end
        object ppLine13: TppLine
          UserName = 'Line13'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 7673
          mmLeft = 215107
          mmTop = 0
          mmWidth = 3440
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object raCodeModule2: TraCodeModule
      ProgramStream = {00}
    end
  end
  object PopList4Print: TPopupMenu
    Left = 184
    Top = 8
    object A41: TMenuItem
      Caption = #1670#1575#1662' '#1603#1575#1585#1603#1585#1583' '#1576#1607' '#1578#1601#1603#1610#1603' '#1662#1585#1587#1606#1604'('#1576#1575#1576#1585#1711#1607'A4)'
      OnClick = A41Click
    end
    object A42: TMenuItem
      Caption = #1670#1575#1662' '#1603#1575#1585#1603#1585#1583' '#1576#1607' '#1578#1601#1603#1610#1603' '#1662#1585#1608#1688#1607'('#1576#1575' '#1576#1585#1711#1607'A4)'
      OnClick = A42Click
    end
  end
  object ppReport2: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\Projects\Fara\Salary\Exe\Report\RptFunction4_personel_A4.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    PreviewFormSettings.WindowState = wsMaximized
    Left = 304
    Top = 157
    Version = '7.0'
    mmColumnWidth = 266300
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand2: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 27781
      mmPrintPosition = 0
      object ppShape4: TppShape
        UserName = 'Shape3'
        ParentWidth = True
        mmHeight = 11642
        mmLeft = 0
        mmTop = 16139
        mmWidth = 284427
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label2'
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 103717
        mmTop = 0
        mmWidth = 51065
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'LblCaption'
        Caption = #1711#1586#1575#1585#1588' '#1603#1575#1585#1603#1585#1583' '#1576#1607' '#1578#1601#1603#1610#1603' '#1662#1585#1587#1606#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8424
        mmLeft = 100949
        mmTop = 6085
        mmWidth = 55541
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'lbprintdate'
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
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SysVarPageNo1'
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 9525
        mmTop = 9525
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label19'
        Caption = #1587#1575#1593#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 214313
        mmTop = 20902
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label20'
        Caption = #1585#1608#1586
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 226484
        mmTop = 20373
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label21'
        Caption = #1603#1575#1585#1603#1585#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 214313
        mmTop = 16669
        mmWidth = 22490
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line1'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 11377
        mmLeft = 233363
        mmTop = 16140
        mmWidth = 3440
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line6'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 11377
        mmLeft = 208492
        mmTop = 16140
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label4'
        Caption = #1593#1606#1608#1575#1606' '#1662#1585#1608#1688#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 237067
        mmTop = 19579
        mmWidth = 35983
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label5'
        Caption = #1603#1583' '#1662#1585#1608#1688#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 273580
        mmTop = 19050
        mmWidth = 10319
        BandType = 0
      end
      object ppLine10: TppLine
        UserName = 'Line4'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 11377
        mmLeft = 270140
        mmTop = 16140
        mmWidth = 3440
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label6'
        Caption = #1588#1605#1575#1585#1607' '#1608#1605#1588#1582#1589#1575#1578' '#1662#1585#1587#1606#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5376
        mmLeft = 254593
        mmTop = 9790
        mmWidth = 29506
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText101'
        DataField = 'PersonelNo'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 243682
        mmTop = 9790
        mmWidth = 10054
        BandType = 0
      end
      object ppDBText6: TppDBText
        UserName = 'DBText4'
        DataField = 'name_l1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4763
        mmLeft = 203200
        mmTop = 9790
        mmWidth = 39688
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppDBText7: TppDBText
        UserName = 'DBText10'
        DataField = 'FunctionDay'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 225955
        mmTop = 0
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText11'
        DataField = 'FunctionTime'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 214842
        mmTop = 0
        mmWidth = 10054
        BandType = 4
      end
      object ppLine15: TppLine
        UserName = 'Line16'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6615
        mmLeft = 210873
        mmTop = 0
        mmWidth = 3440
        BandType = 4
      end
      object ppLine17: TppLine
        UserName = 'Line12'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6615
        mmLeft = 280988
        mmTop = 0
        mmWidth = 3440
        BandType = 4
      end
      object ppLine18: TppLine
        UserName = 'Line9'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6615
        mmLeft = 0
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText1'
        DataField = 'InfoName_L1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4699
        mmLeft = 237067
        mmTop = 0
        mmWidth = 35719
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText2'
        DataField = 'ProjectID'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 273580
        mmTop = 0
        mmWidth = 10054
        BandType = 4
      end
      object ppLine19: TppLine
        UserName = 'Line10'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6615
        mmLeft = 233363
        mmTop = 0
        mmWidth = 3440
        BandType = 4
      end
      object ppLine20: TppLine
        UserName = 'Line101'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6615
        mmLeft = 270140
        mmTop = 0
        mmWidth = 3440
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppShape5: TppShape
        UserName = 'Shape1'
        mmHeight = 7673
        mmLeft = 0
        mmTop = 0
        mmWidth = 284427
        BandType = 7
      end
      object ppLabel18: TppLabel
        UserName = 'Label10'
        Caption = #1580#1605#1593' '#1603#1604':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 273315
        mmTop = 794
        mmWidth = 10319
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc101'
        DataField = 'FunctionTime'
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
        mmHeight = 5556
        mmLeft = 214842
        mmTop = 794
        mmWidth = 10054
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'FunctionDay'
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
        mmHeight = 5556
        mmLeft = 225955
        mmTop = 794
        mmWidth = 10054
        BandType = 7
      end
      object ppLine21: TppLine
        UserName = 'Line2'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 210873
        mmTop = 0
        mmWidth = 3440
        BandType = 7
      end
      object ppLine22: TppLine
        UserName = 'Line3'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 233363
        mmTop = 0
        mmWidth = 3440
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'PersonelNo'
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
        mmHeight = 7673
        mmPrintPosition = 0
        object ppShape6: TppShape
          UserName = 'Shape2'
          mmHeight = 7673
          mmLeft = 0
          mmTop = 0
          mmWidth = 284427
          BandType = 5
          GroupNo = 0
        end
        object ppLabel22: TppLabel
          UserName = 'Label101'
          Caption = #1580#1605#1593' '#1603#1604':'#8207
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 5556
          mmLeft = 273315
          mmTop = 529
          mmWidth = 10319
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc6: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'FunctionDay'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 5556
          mmLeft = 225955
          mmTop = 794
          mmWidth = 10054
          BandType = 5
          GroupNo = 0
        end
        object ppLine23: TppLine
          UserName = 'Line11'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 7673
          mmLeft = 233363
          mmTop = 0
          mmWidth = 3440
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc7: TppDBCalc
          UserName = 'DBCalc2'
          DataField = 'FunctionTime'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 5556
          mmLeft = 214842
          mmTop = 794
          mmWidth = 10054
          BandType = 5
          GroupNo = 0
        end
        object ppLine24: TppLine
          UserName = 'Line13'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 7673
          mmLeft = 210873
          mmTop = 0
          mmWidth = 3440
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {00}
    end
  end
end

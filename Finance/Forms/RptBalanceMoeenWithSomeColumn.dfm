inherited RptBalanceMoeenWithSomeColumnF: TRptBalanceMoeenWithSomeColumnF
  Left = 195
  Top = 147
  Height = 535
  Caption = 'RptBalanceMoeenWithSomeColumnF'
  OldCreateOrder = True
  Scaled = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 460
    inherited BtnReject: TBitBtn
      Left = 14
    end
    object BitBtn1: TBitBtn
      Left = 712
      Top = 8
      Width = 75
      Height = 25
      Action = actFilter
      Anchors = [akTop, akRight]
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 1
    end
    object DBNavigator1: TDBNavigator
      Left = 356
      Top = 8
      Width = 264
      Height = 25
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Anchors = [akLeft, akRight]
      TabOrder = 2
    end
    object BitBtn2: TBitBtn
      Left = 265
      Top = 8
      Width = 85
      Height = 25
      Action = actSendToExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 3
    end
    object BitBtn7: TBitBtn
      Left = 178
      Top = 8
      Width = 85
      Height = 25
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
    end
    object BitBtn8: TBitBtn
      Left = 91
      Top = 8
      Width = 85
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 5
    end
    object BitBtn3: TBitBtn
      Left = 624
      Top = 7
      Width = 85
      Height = 25
      Action = actPrint
      Anchors = [akTop, akRight]
      Caption = #1670#1575#1662' (F7)'
      TabOrder = 6
    end
  end
  inherited Panel3: TPanel
    Height = 407
    object DBGrid1: TDBGrid
      Tag = 111
      Left = 2
      Top = 2
      Width = 782
      Height = 366
      Align = alClient
      Color = clCream
      DataSource = srcBalance
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnColEnter = DBGrid1ColEnter
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'TopicCode'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MoeenName'
          Width = 92
          Visible = True
        end
        item
          Color = 14024703
          Expanded = False
          FieldName = 'FirstBed'
          Width = 57
          Visible = True
        end
        item
          Color = 14155735
          Expanded = False
          FieldName = 'FirstBes'
          Width = 61
          Visible = True
        end
        item
          Color = 14024703
          Expanded = False
          FieldName = 'LastBed_OFirst'
          Width = 91
          Visible = True
        end
        item
          Color = 14155735
          Expanded = False
          FieldName = 'LastBes_OFirst'
          Width = 73
          Visible = True
        end
        item
          Color = 14024703
          Expanded = False
          FieldName = 'LastBed_WFirst'
          Width = 87
          Visible = True
        end
        item
          Color = 14155735
          Expanded = False
          FieldName = 'LastBes_WFirst'
          Width = 87
          Visible = True
        end
        item
          Color = 14024703
          Expanded = False
          FieldName = 'LastBalanceBed'
          Width = 82
          Visible = True
        end
        item
          Color = 14155735
          Expanded = False
          FieldName = 'LastBalanceBes'
          Width = 90
          Visible = True
        end
        item
          Color = 14024703
          Expanded = False
          FieldName = 'BedIn'
          Width = 97
          Visible = True
        end
        item
          Color = 14155735
          Expanded = False
          FieldName = 'BesIn'
          Width = 103
          Visible = True
        end
        item
          Color = 14024703
          Expanded = False
          FieldName = 'BedIn_Ofirst'
          Width = 167
          Visible = True
        end
        item
          Color = 14155735
          Expanded = False
          FieldName = 'BesIn_OFirst'
          Width = 182
          Visible = True
        end
        item
          Color = 14024703
          Expanded = False
          FieldName = 'AllBed'
          Width = 72
          Visible = True
        end
        item
          Color = 14155735
          Expanded = False
          FieldName = 'AllBes'
          Width = 70
          Visible = True
        end
        item
          Color = 14024703
          Expanded = False
          FieldName = 'BalanceBed'
          Width = 76
          Visible = True
        end
        item
          Color = 14155735
          Expanded = False
          FieldName = 'BalanceBes'
          Width = 76
          Visible = True
        end>
    end
    object DBGrid2: TDBGrid
      Left = 2
      Top = 368
      Width = 782
      Height = 37
      Align = alBottom
      BorderStyle = bsNone
      Color = clCream
      Ctl3D = False
      DataSource = srcSum
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Options = [dgEditing, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid2DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'MoeenName'
          Visible = True
        end
        item
          Color = 14024703
          Expanded = False
          FieldName = 'SumOfFirstBed'
          Visible = True
        end
        item
          Color = 14155735
          Expanded = False
          FieldName = 'SumOfFirstBes'
          Visible = True
        end
        item
          Color = 14024703
          Expanded = False
          FieldName = 'SumOfLastBed_OFirst'
          Visible = True
        end
        item
          Color = 14155735
          Expanded = False
          FieldName = 'SumOfLastBes_OFirst'
          Visible = True
        end
        item
          Color = 14024703
          Expanded = False
          FieldName = 'SumOfLastBed_WFirst'
          Visible = True
        end
        item
          Color = 14155735
          Expanded = False
          FieldName = 'SumOfLastBes_WFirst'
          Visible = True
        end
        item
          Color = 14024703
          Expanded = False
          FieldName = 'SumOfLastBalanceBed'
          Visible = True
        end
        item
          Color = 14155735
          Expanded = False
          FieldName = 'SumOfLastBalanceBes'
          Visible = True
        end
        item
          Color = 14024703
          Expanded = False
          FieldName = 'SumOfBedIn'
          Visible = True
        end
        item
          Color = 14155735
          Expanded = False
          FieldName = 'SumOfBesIn'
          Visible = True
        end
        item
          Color = 14024703
          Expanded = False
          FieldName = 'SumOfBedIn_Ofirst'
          Visible = True
        end
        item
          Color = 14155735
          Expanded = False
          FieldName = 'SumOfBesIn_OFirst'
          Visible = True
        end
        item
          Color = 14024703
          Expanded = False
          FieldName = 'SumOfAllBed'
          Visible = True
        end
        item
          Color = 14155735
          Expanded = False
          FieldName = 'SumOfAllBes'
          Visible = True
        end
        item
          Color = 14024703
          Expanded = False
          FieldName = 'SumOfBalanceBed'
          Visible = True
        end
        item
          Color = 14155735
          Expanded = False
          FieldName = 'SumOfBalanceBes'
          Visible = True
        end>
    end
  end
  inherited ActionList: TActionList
    Top = 16
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actSendToExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendToExcelExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662' (F7)'
      OnExecute = actPrintExecute
    end
  end
  object qryBalance: TADOQuery
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Categories.CodeKol, Categories.TopicCode, Categories.KolN' +
        'ame, Categories.MoeenName,'
      
        'Sum(IIf([DocTypeCode]=1,[bed],0)) AS FirstBed, Sum(IIf([DocTypeC' +
        'ode]=1,[bes],0)) AS FirstBes,'
      
        'Sum(IIf([doctypecode]<>1 And ([Documents].[SecondaryDocNo]<666 O' +
        'r [DocDate]<'#39'99/12/29'#39'),[bed],0)) AS LastBed_OFirst,'
      
        'Sum(IIf([doctypecode]<>1 And ([Documents].[SecondaryDocNo]<666 O' +
        'r [DocDate]<'#39'99/12/29'#39'),[bes],0)) AS LastBes_OFirst,'
      
        'Sum(IIf(([Documents].[SecondaryDocNo]<666 Or [DocDate]<'#39'99/12/29' +
        #39'),[bed],0)) AS LastBed_WFirst,'
      
        'Sum(IIf(([Documents].[SecondaryDocNo]<666 Or [DocDate]<'#39'99/12/29' +
        #39'),[bes],0)) AS LastBes_WFirst,'
      
        ' IIf(Sum(IIf(([Documents].[SecondaryDocNo]<666 Or [DocDate]<'#39'99/' +
        '12/29'#39'),[bed]-[bes],0))>0,'
      
        'Sum(IIf(([Documents].[SecondaryDocNo]<666 Or [DocDate]<'#39'99/12/29' +
        #39'),[bed]-[bes],0)),0) AS LastBalanceBed,'
      
        'IIf(Sum(IIf(([Documents].[SecondaryDocNo]<666 Or [DocDate]<'#39'99/1' +
        '2/29'#39'),[bes]-[bed],0))>0,'
      
        'Sum(IIf(([Documents].[SecondaryDocNo]<666 Or [DocDate]<'#39'99/12/29' +
        #39'),[bes]-[bed],0)),0) AS LastBalanceBes,'
      
        'Sum(IIf(([Documents].[SecondaryDocNo] Between 666 And 9999 And [' +
        'DocDate] Between '#39'0001/01/01'#39' And '#39'99/12/29'#39'),[bed],0)) AS BedIn,'
      
        'Sum(IIf(([Documents].[SecondaryDocNo] Between 666 And 9999 and [' +
        'DocDate] Between '#39'0001/01/01'#39' And '#39'99/12/29'#39'),[bes],0)) AS BesIn,'
      
        'Sum(IIf([doctypecode]<>1 And ([Documents].[SecondaryDocNo] Betwe' +
        'en 666 And 9999 Or [DocDate] Between '#39'0001/01/01'#39' And '#39'99/12/29'#39'),' +
        '[bed],0)) AS BedIn_Ofirst,'
      
        'Sum(IIf([doctypecode]<>1 And ([Documents].[SecondaryDocNo] Betwe' +
        'en 666 And 9999 Or [DocDate] Between '#39'0001/01/01'#39' And '#39'99/12/29'#39'),' +
        '[bes],0)) AS BesIn_OFirst,'
      
        'Sum(Documents.Bed) AS AllBed, Sum(Documents.Bes) AS AllBes, IIf(' +
        'Sum([bed]-[bes])>0,Sum([bed]-[bes]),0) AS BalanceBed, IIf(Sum([b' +
        'es]-[bed])>0,Sum([bes]-[bed]),0) AS BalanceBes'
      
        'FROM DocGroups INNER JOIN (Categories INNER JOIN Documents ON Ca' +
        'tegories.TopicCode = Documents.TopicCode) ON DocGroups.Secondary' +
        'DocNo = Documents.SecondaryDocNo'
      
        'GROUP BY Categories.CodeKol, Categories.TopicCode, Categories.Ko' +
        'lName, Categories.MoeenName;'
      '')
    Left = 64
    Top = 85
    object qryBalanceCodeKol: TIntegerField
      DisplayLabel = #1603#1583' '#1603#1604
      FieldName = 'CodeKol'
    end
    object qryBalanceTopicCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1593#1740#1606
      FieldName = 'TopicCode'
    end
    object qryBalanceKolName: TWideStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1581#1587#1575#1576' '#1603#1604
      FieldName = 'KolName'
      Size = 50
    end
    object qryBalanceMoeenName: TWideStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1581#1587#1575#1576' '#1581#1587#1575#1576
      FieldName = 'MoeenName'
      Size = 50
    end
    object qryBalanceFirstBed: TBCDField
      CustomConstraint = '1'
      DisplayLabel = #1575#1601#1578#1578#1575#1581#1610#1607' - '#1576#1583
      FieldName = 'FirstBed'
      currency = True
      Precision = 19
    end
    object qryBalanceFirstBes: TBCDField
      CustomConstraint = '1'
      DisplayLabel = #1575#1601#1578#1578#1575#1581#1610#1607' - '#1576#1587
      FieldName = 'FirstBes'
      currency = True
      Precision = 19
    end
    object qryBalanceLastBed_OFirst: TBCDField
      CustomConstraint = '1'
      DisplayLabel = #1711#1585#1583#1588' '#1602#1576#1604' - '#1576#1583
      FieldName = 'LastBed_OFirst'
      currency = True
      Precision = 19
    end
    object qryBalanceLastBes_OFirst: TBCDField
      CustomConstraint = '1'
      DisplayLabel = #1711#1585#1583#1588' '#1602#1576#1604' - '#1576#1587
      FieldName = 'LastBes_OFirst'
      currency = True
      Precision = 19
    end
    object qryBalanceLastBed_WFirst: TBCDField
      CustomConstraint = '1'
      DisplayLabel = #1711#1585#1583#1588' '#1602#1576#1604' - '#1576#1583
      FieldName = 'LastBed_WFirst'
      currency = True
      Precision = 19
    end
    object qryBalanceLastBes_WFirst: TBCDField
      CustomConstraint = '1'
      DisplayLabel = #1711#1585#1583#1588' '#1602#1576#1604' - '#1576#1587
      FieldName = 'LastBes_WFirst'
      currency = True
      Precision = 19
    end
    object qryBalanceLastBalanceBed: TBCDField
      CustomConstraint = '1'
      DisplayLabel = #1605#1575#1606#1583#1607' '#1602#1576#1604'- '#1576#1583
      FieldName = 'LastBalanceBed'
      currency = True
      Precision = 19
    end
    object qryBalanceLastBalanceBes: TBCDField
      CustomConstraint = '1'
      DisplayLabel = #1605#1575#1606#1583#1607' '#1602#1576#1604' -'#1576#1587
      FieldName = 'LastBalanceBes'
      currency = True
      Precision = 19
    end
    object qryBalanceBedIn: TBCDField
      CustomConstraint = '1'
      DisplayLabel = #1711#1585#1583#1588' '#1591#1610' '#1583#1608#1585#1607' -'#1576#1583
      FieldName = 'BedIn'
      currency = True
      Precision = 19
    end
    object qryBalanceBesIn: TBCDField
      CustomConstraint = '1'
      DisplayLabel = #1711#1585#1583#1588' '#1591#1610' '#1583#1608#1585#1607' -'#1576#1587
      FieldName = 'BesIn'
      currency = True
      Precision = 19
    end
    object qryBalanceBedIn_Ofirst: TBCDField
      CustomConstraint = '1'
      DisplayLabel = #1711#1585#1583#1588' '#1591#1610' '#1583#1608#1585#1607' -'#1576#1583
      FieldName = 'BedIn_Ofirst'
      currency = True
      Precision = 19
    end
    object qryBalanceBesIn_OFirst: TBCDField
      CustomConstraint = '1'
      DisplayLabel = #1711#1585#1583#1588' '#1591#1610' '#1583#1608#1585#1607' -'#1576#1587
      FieldName = 'BesIn_OFirst'
      currency = True
      Precision = 19
    end
    object qryBalanceAllBed: TBCDField
      CustomConstraint = '1'
      DisplayLabel = #1711#1585#1583#1588' '#1603#1604' -'#1576#1583
      FieldName = 'AllBed'
      currency = True
      Precision = 19
    end
    object qryBalanceAllBes: TBCDField
      CustomConstraint = '1'
      DisplayLabel = #1711#1585#1583#1588' '#1603#1604' -'#1576#1587
      FieldName = 'AllBes'
      currency = True
      Precision = 19
    end
    object qryBalanceBalanceBed: TBCDField
      DisplayLabel = #1605#1575#1606#1583#1607' '#1606#1607#1575#1610#1610' - '#1576#1583
      FieldName = 'BalanceBed'
      currency = True
      Precision = 19
    end
    object qryBalanceBalanceBes: TBCDField
      DisplayLabel = #1605#1575#1606#1583#1607' '#1606#1607#1575#1610#1610' - '#1576#1587
      FieldName = 'BalanceBes'
      currency = True
      Precision = 19
    end
  end
  object srcBalance: TDataSource
    DataSet = qryBalance
    Left = 64
    Top = 168
  end
  object qrySum: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT  '#39':'#1580#1605#1593' '#1603#1604#39' AS MoeenName,Sum(SumQry.FirstBed) AS SumOfFirs' +
        'tBed, Sum(SumQry.FirstBes) AS SumOfFirstBes, Sum(SumQry.LastBed_' +
        'OFirst) AS SumOfLastBed_OFirst, Sum(SumQry.LastBes_OFirst) AS Su' +
        'mOfLastBes_OFirst, Sum(SumQry.LastBed_WFirst) AS SumOfLastBed_WF' +
        'irst, Sum(SumQry.LastBes_WFirst) AS SumOfLastBes_WFirst, Sum(Sum' +
        'Qry.LastBalanceBed) AS SumOfLastBalanceBed, Sum(SumQry.LastBalan' +
        'ceBes) AS SumOfLastBalanceBes, Sum(SumQry.BedIn) AS SumOfBedIn, ' +
        'Sum(SumQry.BesIn) AS SumOfBesIn, Sum(SumQry.BedIn_Ofirst) AS Sum' +
        'OfBedIn_Ofirst, Sum(SumQry.BesIn_OFirst) AS SumOfBesIn_OFirst, S' +
        'um(SumQry.AllBed) AS SumOfAllBed, Sum(SumQry.AllBes) AS SumOfAll' +
        'Bes, Sum(SumQry.BalanceBed) AS SumOfBalanceBed,Sum(SumQry.Balanc' +
        'eBes) AS SumOfBalanceBes'
      
        'FROM ( SELECT Categories.CodeKol, Categories.TopicCode, Categori' +
        'es.KolName, Categories.MoeenName, Sum(IIf([DocTypeCode]=1,[bed],' +
        '0)) AS FirstBed, Sum(IIf([DocTypeCode]=1,[bes],0)) AS FirstBes, ' +
        'Sum(IIf([doctypecode]<>1 And ([Documents].[SecondaryDocNo]< 84/0' +
        '1/06 Or [DocDate]<'#39'84/01/06'#39'),[bed],0)) AS LastBed_OFirst, Sum(I' +
        'If([doctypecode]<>1 And ([Documents].[SecondaryDocNo]<84/01/06 O' +
        'r [DocDate]<'#39'84/01/06'#39'),[bes],0)) AS LastBes_OFirst, Sum(IIf(([D' +
        'ocuments].[SecondaryDocNo]< 1 Or [DocDate]<'#39'84/01/06'#39'),[bed],0))' +
        ' AS LastBed_WFirst, Sum(IIf(([Documents].[SecondaryDocNo]< 1 Or ' +
        '[DocDate]<'#39'84/01/06'#39'),[bes],0)) AS LastBes_WFirst, IIf(Sum(IIf((' +
        '[Documents].[SecondaryDocNo]<1 Or [DocDate]<'#39'84/01/06'#39'),[bed]-[b' +
        'es],0))>0, Sum(IIf(([Documents].[SecondaryDocNo]< 1 Or [DocDate]' +
        '<'#39'84/01/06'#39'),[bed]-[bes],0)),0) AS LastBalanceBed, IIf(Sum(IIf((' +
        '[Documents].[SecondaryDocNo]< 1 Or [DocDate]<'#39'84/01/06'#39'),[bes]-[' +
        'bed],0))>0, Sum(IIf(([Documents].[SecondaryDocNo]< 1 Or [DocDate' +
        ']<'#39'84/01/06'#39'),[bes]-[bed],0)),0) AS LastBalanceBes, Sum(IIf(([Do' +
        'cuments].[SecondaryDocNo] Between 1 And 222 Or [DocDate] Between' +
        ' '#39'84/01/06'#39' And '#39'84/05/31'#39'),[bed],0)) AS BedIn, Sum(IIf(([Docume' +
        'nts].[SecondaryDocNo] Between 1 And 222 Or [DocDate] Between '#39'84' +
        '/01/06'#39' And '#39'84/05/31'#39'),[bes],0)) AS BesIn, Sum(IIf([doctypecode' +
        ']<>1 And ([Documents].[SecondaryDocNo] Between 1 And 222 Or [Doc' +
        'Date] Between '#39'84/01/06'#39' And '#39'84/05/31'#39' ),[bed],0)) AS BedIn_Ofi' +
        'rst, Sum(IIf([doctypecode]<>1 And ([Documents].[SecondaryDocNo] ' +
        'Between 1 And 222 Or [DocDate] Between '#39'84/05/31'#39' And '#39'84/05/31'#39 +
        ' ),[bes],0)) AS BesIn_OFirst, Sum(Documents.Bed) AS AllBed, Sum(' +
        'Documents.Bes) AS AllBes, IIf(Sum([bed]-[bes])>0,Sum([bed]-[bes]' +
        '),0) AS BalanceBed, IIf(Sum([bes]-[bed])>0,Sum([bes]-[bed]),0) A' +
        'S BalanceBes FROM DocGroups INNER JOIN (Categories INNER JOIN Do' +
        'cuments ON Categories.TopicCode = Documents.TopicCode) ON DocGro' +
        'ups.SecondaryDocNo = Documents.SecondaryDocNo Where (((Categorie' +
        's.TopicCode) Between 1101 And 9201)) GROUP BY Categories.CodeKol' +
        ', Categories.TopicCode, Categories.KolName, Categories.MoeenName'
      ') AS SumQry;')
    Left = 56
    Top = 293
    object qrySumMoeenName: TWideStringField
      FieldName = 'MoeenName'
      ReadOnly = True
      Size = 12
    end
    object qrySumSumOfFirstBed: TBCDField
      FieldName = 'SumOfFirstBed'
      currency = True
      Precision = 19
    end
    object qrySumSumOfFirstBes: TBCDField
      FieldName = 'SumOfFirstBes'
      currency = True
      Precision = 19
    end
    object qrySumSumOfLastBed_OFirst: TBCDField
      FieldName = 'SumOfLastBed_OFirst'
      currency = True
      Precision = 19
    end
    object qrySumSumOfLastBes_OFirst: TBCDField
      FieldName = 'SumOfLastBes_OFirst'
      currency = True
      Precision = 19
    end
    object qrySumSumOfLastBed_WFirst: TBCDField
      FieldName = 'SumOfLastBed_WFirst'
      currency = True
      Precision = 19
    end
    object qrySumSumOfLastBes_WFirst: TBCDField
      FieldName = 'SumOfLastBes_WFirst'
      currency = True
      Precision = 19
    end
    object qrySumSumOfLastBalanceBed: TBCDField
      FieldName = 'SumOfLastBalanceBed'
      currency = True
      Precision = 19
    end
    object qrySumSumOfLastBalanceBes: TBCDField
      FieldName = 'SumOfLastBalanceBes'
      currency = True
      Precision = 19
    end
    object qrySumSumOfBedIn: TBCDField
      FieldName = 'SumOfBedIn'
      currency = True
      Precision = 19
    end
    object qrySumSumOfBesIn: TBCDField
      FieldName = 'SumOfBesIn'
      currency = True
      Precision = 19
    end
    object qrySumSumOfBedIn_Ofirst: TBCDField
      FieldName = 'SumOfBedIn_Ofirst'
      currency = True
      Precision = 19
    end
    object qrySumSumOfBesIn_OFirst: TBCDField
      FieldName = 'SumOfBesIn_OFirst'
      currency = True
      Precision = 19
    end
    object qrySumSumOfAllBed: TBCDField
      FieldName = 'SumOfAllBed'
      currency = True
      Precision = 19
    end
    object qrySumSumOfAllBes: TBCDField
      FieldName = 'SumOfAllBes'
      currency = True
      Precision = 19
    end
    object qrySumSumOfBalanceBed: TBCDField
      FieldName = 'SumOfBalanceBed'
      currency = True
      Precision = 19
    end
    object qrySumSumOfBalanceBes: TBCDField
      FieldName = 'SumOfBalanceBes'
      currency = True
      Precision = 19
    end
  end
  object srcSum: TDataSource
    DataSet = qrySum
    Left = 120
    Top = 325
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\Projects\Fara\Saman\exe\Report\RptBalanceMoeen_OFirst10.rtm'
    Units = utMillimeters
    CachePages = True
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    PreviewFormSettings.WindowState = wsMaximized
    Left = 224
    Top = 173
    Version = '7.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 30956
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 12171
        mmLeft = 0
        mmTop = 18785
        mmWidth = 284428
        BandType = 0
      end
      object ppLBCompanyName: TppLabel
        UserName = 'LBCompanyName'
        OnGetText = ppLBCompanyNameGetText
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 111125
        mmTop = 2117
        mmWidth = 54504
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        OnGetText = ppSystemVariable2GetText
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5821
        mmLeft = 4233
        mmTop = 10583
        mmWidth = 6879
        BandType = 0
      end
      object ppDocDate: TppLabel
        UserName = 'DocDate'
        OnGetText = ppDocDateGetText
        Caption = #1578#1575#1585#1610#1582' '#1670#1575#1662' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5821
        mmLeft = 3969
        mmTop = 4498
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = #1578#1585#1575#1586' '#1583#1607' '#1587#1578#1608#1606#1610' '#1581#1587#1575#1576#1607#1575#1610' '#1581#1587#1575#1576' '#1576#1578#1601#1603#1610#1603' '#1575#1601#1578#1578#1575#1581#1610#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6604
        mmLeft = 105252
        mmTop = 9260
        mmWidth = 64939
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Caption = #1711#1585#1583#1588' '#1591#1610' '#1583#1608#1585#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 104775
        mmTop = 19315
        mmWidth = 43127
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label101'
        AutoSize = False
        Caption = #1711#1585#1583#1588' '#1603#1604' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 52917
        mmTop = 19579
        mmWidth = 51329
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Caption = #1711#1585#1583#1588' '#1575#1601#1578#1578#1575#1581#1610#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 193411
        mmTop = 19315
        mmWidth = 43127
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12171
        mmLeft = 52388
        mmTop = 18785
        mmWidth = 2646
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12171
        mmLeft = 104775
        mmTop = 18785
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = #1593#1606#1608#1575#1606' '#1581#1587#1575#1576' '#1581#1587#1575#1576
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 237332
        mmTop = 22490
        mmWidth = 37306
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = #1603#1583' '#1605#1593#1740#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 275432
        mmTop = 22490
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        AutoSize = False
        Caption = #1605#1575#1606#1583#1607' '#1606#1607#1575#1610#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 529
        mmTop = 19579
        mmWidth = 51594
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12171
        mmLeft = 192617
        mmTop = 18785
        mmWidth = 3704
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12171
        mmLeft = 274903
        mmTop = 18785
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = #1576#1583#1607#1603#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 529
        mmTop = 25135
        mmWidth = 25665
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = #1576#1587#1578#1575#1606#1603#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 27252
        mmTop = 25135
        mmWidth = 25135
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = #1576#1587#1578#1575#1606#1603#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 78846
        mmTop = 25135
        mmWidth = 25665
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = #1576#1583#1607#1603#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 52917
        mmTop = 25135
        mmWidth = 25135
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12171
        mmLeft = 236803
        mmTop = 18785
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = #1576#1583#1607#1603#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 105040
        mmTop = 25135
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = #1576#1587#1578#1575#1606#1603#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 127000
        mmTop = 25135
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = #1576#1583#1607#1603#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 193146
        mmTop = 25135
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = #1576#1587#1578#1575#1606#1603#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 215371
        mmTop = 25135
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label102'
        AutoSize = False
        Caption = '('#1711#1585#1583#1588' '#1578#1575' '#1605#1581#1583#1608#1583#1607' ('#1576#1583#1608#1606' '#1575#1601#1578#1578#1575#1581#1610#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 148432
        mmTop = 19050
        mmWidth = 43656
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = #1576#1587#1578#1575#1606#1603#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 170657
        mmTop = 25135
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = #1576#1583#1607#1603#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 148432
        mmTop = 25135
        mmWidth = 21431
        BandType = 0
      end
      object ppLine26: TppLine
        UserName = 'Line26'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12171
        mmLeft = 147902
        mmTop = 18785
        mmWidth = 2646
        BandType = 0
      end
      object ppLine30: TppLine
        UserName = 'Line30'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 26723
        mmTop = 25135
        mmWidth = 2646
        BandType = 0
      end
      object ppLine31: TppLine
        UserName = 'Line301'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 78317
        mmTop = 25135
        mmWidth = 2381
        BandType = 0
      end
      object ppLine32: TppLine
        UserName = 'Line32'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 126471
        mmTop = 25135
        mmWidth = 2381
        BandType = 0
      end
      object ppLine33: TppLine
        UserName = 'Line33'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 170127
        mmTop = 25135
        mmWidth = 2381
        BandType = 0
      end
      object ppLine34: TppLine
        UserName = 'Line34'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 215107
        mmTop = 25135
        mmWidth = 2381
        BandType = 0
      end
      object ppLine35: TppLine
        UserName = 'Line5'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 25135
        mmWidth = 236803
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'BedIn_Ofirst'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 105304
        mmTop = 0
        mmWidth = 20902
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'AllBed'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 52917
        mmTop = 0
        mmWidth = 25135
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'BalanceBes'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 27252
        mmTop = 0
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'BalanceBed'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 529
        mmTop = 0
        mmWidth = 25929
        BandType = 4
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 26723
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 0
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 104775
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 78317
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'AllBes'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5556
        mmLeft = 78846
        mmTop = 0
        mmWidth = 25665
        BandType = 4
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 52388
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'BesIn_OFirst'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 127000
        mmTop = 0
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'FirstBes'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 215636
        mmTop = 0
        mmWidth = 20902
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'FirstBed'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 193146
        mmTop = 265
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'TopicCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5800
        mmLeft = 275432
        mmTop = 265
        mmWidth = 8467
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'MoeenName'
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
        mmLeft = 237332
        mmTop = 0
        mmWidth = 37306
        BandType = 4
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 126471
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 192617
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 215107
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine19: TppLine
        UserName = 'Line19'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 236803
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine20: TppLine
        UserName = 'Line20'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 274903
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line201'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 284163
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 147902
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'LastBed_WFirst'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 148432
        mmTop = 265
        mmWidth = 21431
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'LastBes_WFirst'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 170657
        mmTop = 265
        mmWidth = 21696
        BandType = 4
      end
      object ppLine29: TppLine
        UserName = 'Line29'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 170127
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 13758
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        Pen.Width = 2
        mmHeight = 7408
        mmLeft = 0
        mmTop = 0
        mmWidth = 284692
        BandType = 8
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'AllBed'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 52917
        mmTop = 794
        mmWidth = 25135
        BandType = 8
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'AllBes'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 78846
        mmTop = 794
        mmWidth = 25665
        BandType = 8
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 52388
        mmTop = 0
        mmWidth = 2646
        BandType = 8
      end
      object ppLine21: TppLine
        UserName = 'Line21'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 78317
        mmTop = 0
        mmWidth = 2646
        BandType = 8
      end
      object ppLine22: TppLine
        UserName = 'Line22'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 104775
        mmTop = 0
        mmWidth = 2646
        BandType = 8
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = #1580#1605#1593' '#1608#1606#1602#1604' '#1576#1607' '#1589#1601#1581#1607' '#1576#1593#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 256646
        mmTop = 794
        mmWidth = 26723
        BandType = 8
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        DataField = 'BalanceBed'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 529
        mmTop = 794
        mmWidth = 25929
        BandType = 8
      end
      object ppDBCalc11: TppDBCalc
        UserName = 'DBCalc11'
        DataField = 'BalanceBes'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 27252
        mmTop = 794
        mmWidth = 24871
        BandType = 8
      end
      object ppLine51: TppLine
        UserName = 'Line51'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 26723
        mmTop = 0
        mmWidth = 2646
        BandType = 8
      end
      object ppDBCalc13: TppDBCalc
        UserName = 'DBCalc13'
        DataField = 'BedIn_Ofirst'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 105304
        mmTop = 794
        mmWidth = 20902
        BandType = 8
      end
      object ppDBCalc14: TppDBCalc
        UserName = 'DBCalc14'
        DataField = 'BesIn_OFirst'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 127000
        mmTop = 794
        mmWidth = 20638
        BandType = 8
      end
      object ppDBCalc17: TppDBCalc
        UserName = 'DBCalc17'
        DataField = 'FirstBed'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 193146
        mmTop = 794
        mmWidth = 21696
        BandType = 8
      end
      object ppLine52: TppLine
        UserName = 'Line52'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 236803
        mmTop = 0
        mmWidth = 2646
        BandType = 8
      end
      object ppLine53: TppLine
        UserName = 'Line53'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 215107
        mmTop = 0
        mmWidth = 2646
        BandType = 8
      end
      object ppLine56: TppLine
        UserName = 'Line56'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 192617
        mmTop = 0
        mmWidth = 4498
        BandType = 8
      end
      object ppLine57: TppLine
        UserName = 'Line57'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 126471
        mmTop = 0
        mmWidth = 2117
        BandType = 8
      end
      object ppDBCalc19: TppDBCalc
        UserName = 'DBCalc19'
        DataField = 'FirstBes'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 215636
        mmTop = 794
        mmWidth = 20902
        BandType = 8
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 147902
        mmTop = 265
        mmWidth = 2117
        BandType = 8
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc7'
        DataField = 'LastBes_WFirst'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 170657
        mmTop = 794
        mmWidth = 21696
        BandType = 8
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc8'
        DataField = 'LastBed_WFirst'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 148432
        mmTop = 794
        mmWidth = 21431
        BandType = 8
      end
      object ppLine28: TppLine
        UserName = 'Line28'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 170127
        mmTop = 265
        mmWidth = 2117
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 10848
      mmPrintPosition = 0
      object ppShape3: TppShape
        UserName = 'Shape3'
        Pen.Width = 2
        mmHeight = 7408
        mmLeft = 0
        mmTop = 0
        mmWidth = 284692
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'AllBes'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 78846
        mmTop = 794
        mmWidth = 25665
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'AllBed'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 52917
        mmTop = 794
        mmWidth = 25135
        BandType = 7
      end
      object ppLine23: TppLine
        UserName = 'Line23'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 52388
        mmTop = 0
        mmWidth = 2646
        BandType = 7
      end
      object ppLine25: TppLine
        UserName = 'Line25'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 78317
        mmTop = 0
        mmWidth = 2646
        BandType = 7
      end
      object ppLine24: TppLine
        UserName = 'Line24'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 104775
        mmTop = 0
        mmWidth = 2646
        BandType = 7
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = #1580#1605#1593' '#1603#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 273844
        mmTop = 529
        mmWidth = 10054
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        DataField = 'BalanceBed'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 529
        mmTop = 794
        mmWidth = 25929
        BandType = 7
      end
      object ppDBCalc12: TppDBCalc
        UserName = 'DBCalc12'
        DataField = 'BalanceBes'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 27252
        mmTop = 794
        mmWidth = 24871
        BandType = 7
      end
      object ppLine50: TppLine
        UserName = 'Line50'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 26723
        mmTop = 0
        mmWidth = 2646
        BandType = 7
      end
      object ppDBCalc18: TppDBCalc
        UserName = 'DBCalc18'
        DataField = 'FirstBes'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 215636
        mmTop = 794
        mmWidth = 20902
        BandType = 7
      end
      object ppDBCalc20: TppDBCalc
        UserName = 'DBCalc20'
        DataField = 'FirstBed'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 193146
        mmTop = 794
        mmWidth = 21696
        BandType = 7
      end
      object ppDBCalc24: TppDBCalc
        UserName = 'DBCalc24'
        DataField = 'BedIn_Ofirst'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 105304
        mmTop = 794
        mmWidth = 20902
        BandType = 7
      end
      object ppDBCalc23: TppDBCalc
        UserName = 'DBCalc23'
        DataField = 'BesIn_OFirst'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 127000
        mmTop = 794
        mmWidth = 20638
        BandType = 7
      end
      object ppLine58: TppLine
        UserName = 'Line58'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 126471
        mmTop = 0
        mmWidth = 2117
        BandType = 7
      end
      object ppLine60: TppLine
        UserName = 'Line60'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6615
        mmLeft = 192617
        mmTop = 265
        mmWidth = 3704
        BandType = 7
      end
      object ppLine63: TppLine
        UserName = 'Line601'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 215107
        mmTop = 0
        mmWidth = 2646
        BandType = 7
      end
      object ppLine64: TppLine
        UserName = 'Line602'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 236803
        mmTop = 0
        mmWidth = 2646
        BandType = 7
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 147902
        mmTop = 0
        mmWidth = 2117
        BandType = 7
      end
      object ppDBCalc9: TppDBCalc
        UserName = 'DBCalc9'
        DataField = 'LastBed_WFirst'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 148432
        mmTop = 794
        mmWidth = 21431
        BandType = 7
      end
      object ppDBCalc10: TppDBCalc
        UserName = 'DBCalc10'
        DataField = 'LastBes_WFirst'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 170657
        mmTop = 794
        mmWidth = 21696
        BandType = 7
      end
      object ppLine27: TppLine
        UserName = 'Line27'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6615
        mmLeft = 170127
        mmTop = 265
        mmWidth = 2117
        BandType = 7
      end
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcBalance
    UserName = 'DBPipeline1'
    Left = 304
    Top = 173
  end
end

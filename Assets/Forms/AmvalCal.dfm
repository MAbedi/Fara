inherited AmvalCalF: TAmvalCalF
  Left = 523
  Top = 199
  Caption = #1605#1581#1575#1587#1576#1607' '#1575#1587#1578#1607#1604#1575#1603' '#1583#1575#1585#1575#1610#1610#1607#1575#1610' '#1579#1575#1576#1578
  ClientHeight = 494
  ClientWidth = 704
  OnResize = FormResize
  ExplicitWidth = 710
  ExplicitHeight = 523
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 437
    Width = 696
    ExplicitTop = 449
    ExplicitWidth = 712
  end
  inherited Panel1: TPanel
    Width = 704
    ExplicitWidth = 712
    inherited Image1: TImage
      Left = 658
      ExplicitLeft = 658
    end
    inherited lblTopic0: TLabel
      Left = 473
      Width = 165
      Caption = #1605#1581#1575#1587#1576#1607' '#1575#1587#1578#1607#1604#1575#1603' '#1583#1575#1585#1575#1610#1610#1607#1575#1610' '#1579#1575#1576#1578
      ExplicitLeft = 473
      ExplicitWidth = 165
    end
    inherited lblTopic1: TLabel
      Left = 565
      Visible = False
      ExplicitLeft = 565
    end
    object Label1: TLabel
      Left = 85
      Top = 53
      Width = 61
      Height = 13
      Alignment = taRightJustify
      Caption = #1578#1575#1585#1610#1582' '#1605#1581#1575#1587#1576#1607
    end
    object Label2: TLabel
      Left = 85
      Top = 8
      Width = 78
      Height = 13
      Alignment = taRightJustify
      Caption = #1588#1585#1608#1593' '#1587#1575#1604' '#1605#1575#1604#1610
    end
    object Label3: TLabel
      Left = 85
      Top = 30
      Width = 69
      Height = 13
      Alignment = taRightJustify
      Caption = #1662#1575#1610#1575#1606' '#1587#1575#1604' '#1605#1575#1604#1610
    end
    object mskBaseDate: TMaskEdit
      Left = 16
      Top = 49
      Width = 65
      Height = 21
      Color = 13431799
      EditMask = '9999/99/99;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '    /  /  '
    end
    object mskStartDate: TMaskEdit
      Left = 16
      Top = 4
      Width = 65
      Height = 21
      TabStop = False
      BiDiMode = bdLeftToRight
      Color = 13431799
      Ctl3D = True
      ParentBiDiMode = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
      Text = ''
    end
    object mskEndDate: TMaskEdit
      Left = 16
      Top = 26
      Width = 65
      Height = 21
      TabStop = False
      BiDiMode = bdLeftToRight
      Color = 13431799
      Ctl3D = True
      ParentBiDiMode = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
      Text = ''
    end
  end
  inherited pnlDown: TPanel
    Top = 457
    Width = 704
    ExplicitTop = 469
    ExplicitWidth = 712
    inherited btnClose: TBitBtn
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      Left = 552
      Top = 6
      Width = 75
      Height = 25
      Action = actCal
      Caption = #1605#1581#1575#1587#1576#1607
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      Left = 630
      Top = 6
      Width = 75
      Height = 25
      Action = actFilter
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 0
    end
    object BitBtn5: TBitBtn
      Left = 88
      Top = 6
      Width = 81
      Height = 25
      Action = actExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 2
    end
  end
  object DBGrid1: TDBGrid [3]
    Left = 0
    Top = 73
    Width = 704
    Height = 364
    Align = alClient
    Color = clCream
    DataSource = srcCalc
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'SerialNum'
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'StuffDesc'
        Width = 137
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DepMode'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DepValue'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'StartUsingDate'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DecDate'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AssetsValue'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SecondFirstDepValue'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SecondDepValueInYear'
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EsqValue'
        Visible = True
      end>
  end
  object SumGrid1: TSumGrid [4]
    Left = 0
    Top = 437
    Width = 704
    Hint = #1575#1585#1586#1588' '#1575#1587#1602#1575#1591
    Active = False
    Enable_Controls = True
    MasterGrid = DBGrid1
    ShowZero = True
    FieldsName = 
      'DepValue;SecondFirstDepValue;SecondDepValueInYear;AssetsValue;Es' +
      'qValue;'
  end
  inherited ActionList1: TActionList
    Left = 384
    Top = 24
    object actCal: TAction
      Caption = #1605#1581#1575#1587#1576#1607
      OnExecute = actCalExecute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
    end
    object actSearch: TAction
      Caption = #1580#1587#1578#1580#1608
    end
    object actExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actExcelExecute
    end
  end
  object qryCalc: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryCalcAfterOpen
    Parameters = <
      item
        Name = 'BaseDate'
        DataType = ftString
        Size = 10
        Value = '88/09/09'
      end
      item
        Name = 'YearId'
        Size = -1
        Value = Null
      end
      item
        Name = 'OwFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'OwTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 999999
      end
      item
        Name = 'SrFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'SrTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 999999
      end
      item
        Name = 'AccFrom'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = '121004'
      end
      item
        Name = 'AccTo'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = '121004'
      end
      item
        Name = 'DecDate'
        Size = -1
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'SELECT     DepProcess.*, Amval.StuffDesc'
      
        'FROM          Assets.DepProcess(:BaseDate,:YearId) DepProcess IN' +
        'NER JOIN'
      
        '                      Assets.Amval as Amval   ON DepProcess.Seri' +
        'alNum = Amval.SerialNum'
      'WHERE     (DepProcess.OwnerType BETWEEN :OwFrom AND :OwTo) AND'
      '          (DepProcess.SerialNum BETWEEN :SrFrom AND :SrTo) AND'
      '          (DepProcess.AccTopicCode BETWEEN :AccFrom AND :AccTo) '
      
        '         And  (NOT (Amval.SerialNum IN (SELECT     SerialNum  FR' +
        'OM   Assets.Decrease where (DecDate <= :DecDate)  GROUP BY Seria' +
        'lNum)))'
      
        'ORDER BY DepProcess.Kind, DepProcess.UniqCode, DepProcess.Serial' +
        'Num, DepProcess.calculatedate, DepProcess.SecondKind')
    Left = 152
    Top = 128
    object qryCalcAccTopicCode: TLargeintField
      DisplayWidth = 8
      FieldName = 'AccTopicCode'
    end
    object qryCalcOwnerType: TIntegerField
      DisplayWidth = 8
      FieldName = 'OwnerType'
    end
    object qryCalcKind: TIntegerField
      DisplayWidth = 6
      FieldName = 'Kind'
    end
    object qryCalcSecondKind: TIntegerField
      DisplayWidth = 9
      FieldName = 'SecondKind'
    end
    object qryCalcId4Info: TIntegerField
      DisplayWidth = 8
      FieldName = 'Id4Info'
    end
    object qryCalcSerialNum: TIntegerField
      Tag = 3
      DisplayLabel = #1587#1585#1610#1575#1604
      DisplayWidth = 12
      FieldName = 'SerialNum'
    end
    object qryCalcDepMode: TWordField
      Tag = 3
      DisplayLabel = #1585#1608#1588' '
      DisplayWidth = 10
      FieldName = 'DepMode'
      OnGetText = qryCalcDepModeGetText
    end
    object qryCalcDepValue: TIntegerField
      Tag = 3
      DisplayLabel = #1606#1585#1582' '
      DisplayWidth = 9
      FieldName = 'DepValue'
    end
    object qryCalcAssetsValue: TBCDField
      Tag = 3
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607' '#1583#1575#1585#1575#1610#1610
      DisplayWidth = 14
      FieldName = 'AssetsValue'
      currency = True
      Precision = 19
    end
    object qryCalcEsqValue: TBCDField
      Tag = 3
      DisplayLabel = #1575#1585#1586#1588' '#1575#1587#1602#1575#1591
      DisplayWidth = 10
      FieldName = 'EsqValue'
      currency = True
      Precision = 19
    end
    object qryCalcFirstDepValue: TBCDField
      DisplayWidth = 17
      FieldName = 'FirstDepValue'
      Precision = 19
    end
    object qryCalcDepvalueInYear: TBCDField
      DisplayWidth = 15
      FieldName = 'DepvalueInYear'
      Precision = 19
    end
    object qryCalcStartUsingDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1576#1607#1585#1607' '#1576#1585#1583#1575#1585#1610
      DisplayWidth = 15
      FieldName = 'StartUsingDate'
      FixedChar = True
      Size = 10
    end
    object qryCalccalculatedate: TStringField
      DisplayWidth = 13
      FieldName = 'calculatedate'
      FixedChar = True
      Size = 10
    end
    object qryCalcNextStartcalculatedate: TStringField
      DisplayWidth = 22
      FieldName = 'NextStartcalculatedate'
      Size = 16
    end
    object qryCalcDecDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1603#1575#1607#1588
      DisplayWidth = 10
      FieldName = 'DecDate'
      FixedChar = True
      Size = 10
    end
    object qryCalcBaseDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1605#1581#1575#1587#1576#1607
      DisplayWidth = 10
      FieldName = 'BaseDate'
      FixedChar = True
      Size = 10
    end
    object qryCalcInvoiceDate: TStringField
      DisplayWidth = 12
      FieldName = 'InvoiceDate'
      FixedChar = True
      Size = 10
    end
    object qryCalcNextStartUsingDate: TStringField
      DisplayWidth = 19
      FieldName = 'NextStartUsingDate'
      Size = 16
    end
    object qryCalcStartNowMaliYear: TStringField
      DisplayWidth = 19
      FieldName = 'StartNowMaliYear'
      Size = 16
    end
    object qryCalcSecondPrice: TBCDField
      DisplayWidth = 24
      FieldName = 'SecondPrice'
      Precision = 19
    end
    object qryCalcSecondFirstDepValue: TBCDField
      Tag = 3
      DisplayLabel = #1575#1587#1578#1607#1604#1575#1603' '#1575#1606#1576#1575#1588#1578#1607
      DisplayWidth = 24
      FieldName = 'SecondFirstDepValue'
      currency = True
      Precision = 19
    end
    object qryCalcSecondDepValueInYear: TBCDField
      Tag = 3
      DisplayLabel = #1575#1587#1578#1607#1604#1575#1603' '#1587#1575#1604' '#1580#1575#1585#1610
      DisplayWidth = 24
      FieldName = 'SecondDepValueInYear'
      currency = True
      Precision = 19
    end
    object qryCalcStuffDesc: TStringField
      Tag = 3
      DisplayLabel = #1588#1585#1581' '#1583#1575#1585#1575#1610#1610
      FieldName = 'StuffDesc'
      Size = 150
    end
    object qryCalcUniqCode: TIntegerField
      FieldName = 'UniqCode'
    end
  end
  object srcCalc: TDataSource
    DataSet = qryCalc
    Left = 144
    Top = 200
  end
  object qryCalcOthers: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'BaseDate'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearId'
        Size = -1
        Value = Null
      end
      item
        Name = 'OwFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'OwTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'SrFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'SrTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'AccFrom'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = '0'
      end
      item
        Name = 'AccTo'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = '0'
      end>
    SQL.Strings = (
      'SELECT     DepProcessOther.*, Amval.StuffDesc'
      
        'FROM          Assets.DepProcessOther(:BaseDate,:YearId) DepProce' +
        'ssOther INNER JOIN'
      
        '                       Assets.Amval as Amval ON DepProcessOther.' +
        'SerialNum = Amval.SerialNum'
      
        'WHERE     (DepProcessOther.OwnerType BETWEEN :OwFrom AND :OwTo) ' +
        'AND'
      
        '          (DepProcessOther.SerialNum BETWEEN :SrFrom AND :SrTo) ' +
        'AND'
      
        '          (DepProcessOther.AccTopicCode BETWEEN :AccFrom AND :Ac' +
        'cTo) '
      
        'ORDER BY DepProcessOther.Kind, DepProcessOther.UniqCode, DepProc' +
        'essOther.SerialNum, DepProcessOther.calculatedate, DepProcessOth' +
        'er.SecondKind')
    Left = 40
    Top = 240
  end
end

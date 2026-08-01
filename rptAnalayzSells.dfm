inherited rptAnalayzSellsF: TrptAnalayzSellsF
  Left = 217
  Top = 157
  Caption = #1711#1586#1575#1585#1588' '#1605#1602#1575#1610#1587#1607' '#1575#1610' '#1593#1605#1604#1603#1585#1583' '#1605#1575#1607#1610#1575#1606#1607' '#1601#1585#1608#1588
  ClientHeight = 517
  OnResize = FormResize
  ExplicitWidth = 794
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 476
    inherited BtnReject: TBitBtn
      Left = 2
      Margins.Left = 1
      Margins.Right = 1
      ExplicitLeft = 2
    end
    object BitBtn7: TBitBtn
      AlignWithMargins = True
      Left = 79
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 1
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 156
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actSearch_
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 2
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 233
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actSendToExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 711
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 4
    end
    object BitBtn8: TBitBtn
      AlignWithMargins = True
      Left = 632
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actPrint
      Align = alRight
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
      TabOrder = 5
    end
  end
  inherited Panel2: TPanel
    inherited lblCaption: TLabel
      Height = 16
      ExplicitLeft = 674
    end
  end
  inherited Panel3: TPanel
    Height = 423
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 786
      Height = 420
      Align = alClient
      Color = clCream
      DataSource = srcAnalyzSells
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'GroupID'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'StuffCode'
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_StuffName'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Entity_LastMonth'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Weight_LastMonth'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Price_LastMonth'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TotallSellPrice_LastMonth'
          Width = 111
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AVeEntite_LastMonth'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AVeWeight_LastMonth'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Entity_LastMonthShare'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Weight_LastMonthShare'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Price_LastMonthShare'
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TotallSellPrice_LastMonthShare'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Entity_Month'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Weight_Month'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Price_Month'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TotallSellPrice_Month'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AVeEntity_Month'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AVeWeight_Month'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Entity_MonthShare'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Weight_MonthShare'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Price_MonthShare'
          Width = 104
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TotallSellPrice_MonthShare'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dif_Entity'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dif_Eeight'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dif_Price'
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dif_TotallSellPrice'
          Width = 111
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dif_AveEntity'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dif_AveWeight'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dif_EntityShare'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dif_WeightShare'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dif_PriceShare'
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dif_TotallSellPriceShare'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOutputEntity'
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOutputWeight'
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TTotalOutputPrice'
          Width = 39
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TTotallSellPrice'
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TAveEntity'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TAveWeight'
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOutputEntityShare'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOutputWeightShare'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TTotalOutputPriceShare'
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TTotallSellPriceShare'
          Width = 103
          Visible = True
        end>
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
    object actSendToExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendToExcelExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
      OnExecute = actPrintExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
  end
  object qryAnalyzSells: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Month'
        DataType = ftWideString
        Size = 1
        Value = '2'
      end
      item
        Name = 'StuffCodeFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'StuffCodeTo'
        DataType = ftWideString
        Size = 7
        Value = '9999999'
      end>
    SQL.Strings = (
      
        'SELECT     *, Entity_Month - Entity_LastMonth AS Dif_Entity, Wei' +
        'ght_Month - Weight_LastMonth AS Dif_Eeight, '
      'Price_Month - Price_LastMonth AS Dif_Price, '
      
        'TotallSellPrice_Month - TotallSellPrice_LastMonth AS Dif_TotallS' +
        'ellPrice, '
      
        '                      AVeEntity_Month - AVeEntite_LastMonth AS D' +
        'if_AveEntity, AVeWeight_Month - AVeWeight_LastMonth AS Dif_AveWe' +
        'ight, '
      
        '                      Entity_MonthShare - Entity_LastMonthShare ' +
        'AS Dif_EntityShare, Weight_MonthShare - Weight_LastMonthShare AS' +
        ' Dif_WeightShare'
      '  , Price_MonthShare - Price_LastMonthShare AS Dif_PriceShare'
      
        '  , TotallSellPrice_MonthShare - TotallSellPrice_LastMonthShare ' +
        'AS Dif_TotallSellPriceShare'
      ''
      ''
      ', dbo.StuffCoding.c_StuffName'
      
        'FROM         dbo.rptanalyzSells(:Month, :StuffCodeFrom, :StuffCo' +
        'deTo) rptanalyzSells INNER JOIN'
      
        '                      dbo.StuffCoding ON rptanalyzSells.StuffCod' +
        'e = dbo.StuffCoding.c_StuffCode')
    Left = 304
    Top = 125
    object qryAnalyzSellsGroupID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1711#1585#1608#1607' '#1603#1575#1604#1575
      FieldName = 'GroupID'
    end
    object qryAnalyzSellsStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qryAnalyzSellsc_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1603#1575#1604#1575
      FieldName = 'c_StuffName'
      Size = 70
    end
    object qryAnalyzSellsn_UnitCode: TWordField
      Tag = 3
      FieldName = 'n_UnitCode'
    end
    object qryAnalyzSellsEntity_LastMonth: TFloatField
      Tag = 3
      DisplayLabel = #1605#1575#1607' '#1602#1576#1604'-'#1605#1602#1583#1575#1585
      FieldName = 'Entity_LastMonth'
    end
    object qryAnalyzSellsWeight_LastMonth: TFloatField
      Tag = 3
      DisplayLabel = #1605#1575#1607' '#1602#1576#1604' - '#1608#1586#1606
      FieldName = 'Weight_LastMonth'
    end
    object qryAnalyzSellsPrice_LastMonth: TBCDField
      Tag = 3
      DisplayLabel = #1605#1575#1607' '#1602#1576#1604'-'#1605#1576#1604#1594
      FieldName = 'Price_LastMonth'
      currency = True
      Precision = 19
    end
    object qryAnalyzSellsTotallSellPrice_LastMonth: TBCDField
      Tag = 3
      DisplayLabel = #1605#1575#1607' '#1602#1576#1604'-'#1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'TotallSellPrice_LastMonth'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryAnalyzSellsAVeEntite_LastMonth: TFloatField
      Tag = 3
      DisplayLabel = #1605#1575#1607' '#1602#1576#1604'- '#1606#1585#1582' '#1605#1602#1583#1575#1585#1610
      FieldName = 'AVeEntite_LastMonth'
    end
    object qryAnalyzSellsAVeWeight_LastMonth: TFloatField
      Tag = 3
      DisplayLabel = #1605#1575#1607' '#1602#1576#1604' -'#1606#1585#1582' '#1608#1586#1606#1610
      FieldName = 'AVeWeight_LastMonth'
    end
    object qryAnalyzSellsEntity_LastMonthShare: TFloatField
      Tag = 3
      DisplayLabel = #1605#1575#1607' '#1602#1576#1604' - '#1587#1607#1605' '#1575#1586' '#1605#1602#1583#1575#1585
      FieldName = 'Entity_LastMonthShare'
      ReadOnly = True
    end
    object qryAnalyzSellsWeight_LastMonthShare: TFloatField
      Tag = 3
      DisplayLabel = #1605#1575#1607' '#1602#1576#1604' - '#1587#1607#1605' '#1608#1586#1606
      FieldName = 'Weight_LastMonthShare'
      ReadOnly = True
    end
    object qryAnalyzSellsPrice_LastMonthShare: TBCDField
      Tag = 3
      DisplayLabel = #1605#1575#1607' '#1602#1576#1604' '#1587#1607#1605' '#1605#1576#1604#1594
      FieldName = 'Price_LastMonthShare'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryAnalyzSellsTotallSellPrice_LastMonthShare: TBCDField
      Tag = 3
      DisplayLabel = #1605#1575#1607' '#1602#1576#1604' '#1587#1607#1605' '#1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'TotallSellPrice_LastMonthShare'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryAnalyzSellsEntity_Month: TFloatField
      Tag = 3
      DisplayLabel = #1605#1575#1607' '#1580#1575#1585#1610' - '#1605#1602#1583#1575#1585
      FieldName = 'Entity_Month'
    end
    object qryAnalyzSellsWeight_Month: TFloatField
      Tag = 3
      DisplayLabel = #1605#1575#1607' '#1580#1575#1585#1610' - '#1608#1586#1606
      FieldName = 'Weight_Month'
    end
    object qryAnalyzSellsPrice_Month: TBCDField
      Tag = 3
      DisplayLabel = #1605#1575#1607' '#1580#1575#1585#1610' -'#1605#1576#1604#1594
      FieldName = 'Price_Month'
      currency = True
      Precision = 19
    end
    object qryAnalyzSellsTotallSellPrice_Month: TBCDField
      Tag = 3
      DisplayLabel = #1605#1575#1607' '#1580#1575#1585#1610' -'#1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'TotallSellPrice_Month'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryAnalyzSellsAVeEntity_Month: TFloatField
      Tag = 3
      DisplayLabel = #1605#1575#1607' '#1580#1575#1585#1610' - '#1606#1585#1582' '#1605#1602#1583#1575#1585#1610
      FieldName = 'AVeEntity_Month'
    end
    object qryAnalyzSellsAVeWeight_Month: TFloatField
      Tag = 3
      DisplayLabel = #1605#1575#1607' '#1580#1575#1585#1610' - '#1606#1585#1582' '#1608#1586#1606#1610
      FieldName = 'AVeWeight_Month'
    end
    object qryAnalyzSellsEntity_MonthShare: TFloatField
      Tag = 3
      DisplayLabel = #1605#1575#1607' '#1580#1575#1585#1610' - '#1587#1607#1605' '#1605#1602#1583#1575#1585
      FieldName = 'Entity_MonthShare'
      ReadOnly = True
    end
    object qryAnalyzSellsWeight_MonthShare: TFloatField
      Tag = 3
      DisplayLabel = #1605#1575#1607' '#1580#1575#1585#1610' - '#1587#1607#1605' '#1608#1586#1606
      FieldName = 'Weight_MonthShare'
      ReadOnly = True
    end
    object qryAnalyzSellsPrice_MonthShare: TBCDField
      Tag = 3
      DisplayLabel = #1605#1575#1607' '#1580#1575#1585#1610' - '#1587#1607#1605' '#1605#1576#1604#1594
      FieldName = 'Price_MonthShare'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryAnalyzSellsTotallSellPrice_MonthShare: TBCDField
      Tag = 3
      DisplayLabel = #1605#1575#1607' '#1580#1575#1585#1610' - '#1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'TotallSellPrice_MonthShare'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryAnalyzSellsDif_Entity: TFloatField
      Tag = 3
      DisplayLabel = #1578#1601#1575#1608#1578' - '#1605#1602#1583#1575#1585
      FieldName = 'Dif_Entity'
      ReadOnly = True
    end
    object qryAnalyzSellsDif_Eeight: TFloatField
      Tag = 3
      DisplayLabel = #1578#1601#1575#1608#1578' - '#1608#1586#1606
      FieldName = 'Dif_Eeight'
      ReadOnly = True
    end
    object qryAnalyzSellsDif_Price: TBCDField
      Tag = 3
      DisplayLabel = #1578#1601#1575#1608#1578' - '#1605#1576#1604#1594
      FieldName = 'Dif_Price'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryAnalyzSellsDif_TotallSellPrice: TBCDField
      Tag = 3
      DisplayLabel = #1578#1601#1575#1608#1578' - '#1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'Dif_TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryAnalyzSellsDif_AveEntity: TFloatField
      Tag = 3
      DisplayLabel = #1578#1601#1575#1608#1578' - '#1606#1585#1582' '#1605#1602#1583#1575#1585#1610
      FieldName = 'Dif_AveEntity'
      ReadOnly = True
    end
    object qryAnalyzSellsDif_AveWeight: TFloatField
      Tag = 3
      DisplayLabel = #1578#1601#1575#1608#1578' - '#1606#1585#1582' '#1608#1586#1606#1610
      FieldName = 'Dif_AveWeight'
      ReadOnly = True
    end
    object qryAnalyzSellsDif_EntityShare: TFloatField
      Tag = 3
      DisplayLabel = #1578#1601#1575#1608#1578' - '#1587#1607#1605' '#1605#1602#1583#1575#1585
      FieldName = 'Dif_EntityShare'
      ReadOnly = True
    end
    object qryAnalyzSellsDif_WeightShare: TFloatField
      Tag = 3
      DisplayLabel = #1578#1601#1575#1608#1578' - '#1587#1607#1605' '#1608#1586#1606#1610
      FieldName = 'Dif_WeightShare'
      ReadOnly = True
    end
    object qryAnalyzSellsDif_PriceShare: TBCDField
      Tag = 3
      DisplayLabel = #1578#1601#1575#1608#1578' - '#1587#1607#1605' '#1585#1610#1575#1604#1610
      FieldName = 'Dif_PriceShare'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryAnalyzSellsDif_TotallSellPriceShare: TBCDField
      Tag = 3
      DisplayLabel = #1578#1601#1575#1608#1578' - '#1587#1607#1605' '#1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'Dif_TotallSellPriceShare'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryAnalyzSellsTOutputEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1603#1604
      FieldName = 'TOutputEntity'
    end
    object qryAnalyzSellsTOutputWeight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606' '#1603#1604
      FieldName = 'TOutputWeight'
    end
    object qryAnalyzSellsTTotalOutputPrice: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1603#1604
      FieldName = 'TTotalOutputPrice'
      currency = True
      Precision = 19
    end
    object qryAnalyzSellsTTotallSellPrice: TBCDField
      Tag = 3
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'TTotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryAnalyzSellsTAveEntity: TFloatField
      Tag = 3
      DisplayLabel = #1606#1585#1582' '#1605#1602#1583#1575#1585#1610
      FieldName = 'TAveEntity'
    end
    object qryAnalyzSellsTAveWeight: TFloatField
      Tag = 3
      DisplayLabel = #1606#1585#1582' '#1608#1586#1606#1610
      FieldName = 'TAveWeight'
    end
    object qryAnalyzSellsTOutputEntityShare: TFloatField
      Tag = 3
      DisplayLabel = #1587#1607#1605' '#1605#1602#1583#1575#1585
      FieldName = 'TOutputEntityShare'
      ReadOnly = True
    end
    object qryAnalyzSellsTOutputWeightShare: TFloatField
      Tag = 3
      DisplayLabel = #1587#1607#1605' '#1608#1586#1606
      FieldName = 'TOutputWeightShare'
      ReadOnly = True
    end
    object qryAnalyzSellsTTotalOutputPriceShare: TBCDField
      Tag = 3
      DisplayLabel = #1587#1607#1605' '#1605#1576#1604#1594' '
      FieldName = 'TTotalOutputPriceShare'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryAnalyzSellsTTotallSellPriceShare: TBCDField
      Tag = 3
      DisplayLabel = #1587#1607#1605' '#1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607' '
      FieldName = 'TTotallSellPriceShare'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object srcAnalyzSells: TDataSource
    DataSet = qryAnalyzSells
    Left = 400
    Top = 133
  end
end

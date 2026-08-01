inherited AllSalaryListF: TAllSalaryListF
  Top = 142
  Caption = #1604#1610#1587#1578' '#1603#1604#1610' '#1581#1602#1608#1602' '#1605#1586#1575#1610#1575' '#1576#1578#1601#1603#1610#1603' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610' '
  OldCreateOrder = True
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    inherited BtnReject: TBitBtn
      Left = 7
    end
    object BitBtn4: TBitBtn
      Left = 238
      Top = 8
      Width = 75
      Height = 25
      Action = actExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 1
    end
    object BitBtn6: TBitBtn
      Left = 161
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 2
    end
    object BitBtn5: TBitBtn
      Left = 84
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 3
    end
    object BitBtn7: TBitBtn
      Left = 698
      Top = 8
      Width = 75
      Height = 25
      Action = actFilter
      Anchors = [akRight, akBottom]
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 4
    end
    object BitBtn2: TBitBtn
      Left = 619
      Top = 8
      Width = 75
      Height = 25
      Action = actShow
      Anchors = [akRight, akBottom]
      Caption = #1585#1610#1586' '#1575#1591#1604#1575#1593#1575#1578
      TabOrder = 5
    end
    object DBNavigator2: TDBNavigator
      Left = 401
      Top = 8
      Width = 132
      Height = 25
      DataSource = srcSalary
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Flat = True
      TabOrder = 6
    end
    object BitBtn1: TBitBtn
      Left = 315
      Top = 8
      Width = 75
      Height = 25
      Action = actChart
      Caption = #1606#1605#1608#1583#1575#1585
      TabOrder = 7
    end
    object BitBtn3: TBitBtn
      Left = 541
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Anchors = [akRight, akBottom]
      Caption = #1670#1575#1662
      TabOrder = 8
    end
  end
  inherited Panel3: TPanel
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 776
      Height = 386
      Align = alClient
      Color = clCream
      DataSource = srcSalary
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
          FieldName = 'InfoID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Name_L1'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'WagePrice'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ExtraWagePrice1'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ExtraWagePrice2'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ExtraWagePrice3'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ExtraWagePrice4'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ExtraWagePrice5'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ExtraWagePrice6'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ExtraWagePrice7'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ExtraWagePrice8'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ExtraWagePrice9'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ExtraWagePrice10'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ExtraWagePrice11'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ExtraWagePrice12'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ExtraWagePrice13'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ExtraWagePrice14'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ExtraWagePrice15'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ExtraWagePrice16'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ExtraWagePrice17'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ExtraWagePrice18'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ExtraWagePrice19'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ExtraWagePrice20'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ExtraWagePrice21'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ExtraWagePrice22'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ExtraWagePrice23'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ExtraWagePrice24'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ExtraWagePrice25'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ExtraWagePrice26'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ExtraWagePrice27'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ExtraWagePrice28'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ExtraWagePrice29'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OtherExtraWagePrice'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SumWagePrice'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DecPrice1'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DecPrice2'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DecPrice3'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DecPrice4'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DecPrice5'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DecPrice6'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DecPrice7'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DecPrice8'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DecPrice9'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DecPrice10'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DecPrice11'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DecPrice12'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DecPrice13'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DecPrice14'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DecPrice15'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DecPrice16'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DecPrice17'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DecPrice18'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DecPrice19'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DecPrice20'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DecPrice21'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DecPrice22'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DecPrice23'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DecPrice24'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DecPrice25'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DecPrice26'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DecPrice27'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DecPrice28'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DecPrice29'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'InsouranceEmployerPrice'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'InsouranceEmployeePrice'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'InsouranceEmployerPrice2'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'InsouranceEmployeePrice2'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OtheremployerPrice'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OtherEmployeePrice'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TaxPrice'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OtherDec'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SumdecPrice'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'payment'
          Visible = True
        end>
    end
    object DBGrid2: TDBGrid
      Left = 2
      Top = 388
      Width = 776
      Height = 39
      Align = alBottom
      DataSource = srcSum
      Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  inherited ActionList: TActionList
    inherited DataSetInsert1: TDataSetInsert [0]
    end
    inherited DataSetEdit1: TDataSetEdit [1]
    end
    inherited DataSetPost1: TDataSetPost [2]
    end
    inherited DataSetCancel1: TDataSetCancel [3]
    end
    object actFilter: TAction [4]
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actExcel: TAction [5]
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' '#1575#1603#1587#1604
      OnExecute = actExcelExecute
    end
    inherited actSearch_: TAction [6]
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete [7]
    end
    object actSort: TAction [8]
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actPrint: TAction [9]
      Caption = #1670#1575#1662
      OnExecute = actPrintExecute
    end
    inherited actExit: TAction [10]
    end
    object actChart: TAction
      Caption = #1606#1605#1608#1583#1575#1585
      OnExecute = actChartExecute
    end
    object actShow: TAction
      Caption = #1585#1610#1586' '#1575#1591#1604#1575#1593#1575#1578
      OnExecute = actShowExecute
    end
  end
  object srcSum: TDataSource
    DataSet = qrySum
    Left = 120
    Top = 365
  end
  object qrySum: TADOQuery
    Connection = DMF.adcSalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select '#39#1580#1605#1593' '#1603#1604#39' as s_u_m'
      '  ,sum(allSum.WagePrice) as sumWagePrice'
      '  ,sum(allSum.ExtraWagePrice1)   as sumExtraWagePrice1'
      '  ,sum(allSum.ExtraWagePrice2)   as sumExtraWagePrice2'
      '  ,sum(allSum.ExtraWagePrice3)   as sumExtraWagePrice3'
      '  ,sum(allSum.ExtraWagePrice4)   as sumExtraWagePrice4'
      '  ,sum(allSum.ExtraWagePrice5)   as sumExtraWagePrice5'
      '  ,sum(allSum.ExtraWagePrice6)   as sumExtraWagePrice6'
      '  ,sum(allSum.ExtraWagePrice7)   as sumExtraWagePrice7'
      '  ,sum(allSum.ExtraWagePrice8)   as sumExtraWagePrice8'
      '  ,sum(allSum.ExtraWagePrice9)   as sumExtraWagePrice9'
      '  ,sum(allSum.ExtraWagePrice10)  as sumExtraWagePrice10'
      '  ,sum(allSum.ExtraWagePrice11)  as sumExtraWagePrice11'
      '  ,sum(allSum.ExtraWagePrice12)  as sumExtraWagePrice12'
      '  ,sum(allSum.ExtraWagePrice13)  as sumExtraWagePrice13'
      '  ,sum(allSum.ExtraWagePrice14)  as sumExtraWagePrice14'
      '  ,sum(allSum.ExtraWagePrice15)  as sumExtraWagePrice15'
      '  ,sum(allSum.ExtraWagePrice16)  as sumExtraWagePrice16'
      '  ,sum(allSum.ExtraWagePrice17)  as sumExtraWagePrice17'
      '  ,sum(allSum.ExtraWagePrice18)  as sumExtraWagePrice18'
      '  ,sum(allSum.ExtraWagePrice19)  as sumExtraWagePrice19'
      '  ,sum(allSum.ExtraWagePrice20)  as sumExtraWagePrice20'
      '  ,sum(allSum.ExtraWagePrice21)  as sumExtraWagePrice21'
      '  ,sum(allSum.ExtraWagePrice22)  as sumExtraWagePrice22'
      '  ,sum(allSum.ExtraWagePrice23)  as sumExtraWagePrice23'
      '  ,sum(allSum.ExtraWagePrice24)  as sumExtraWagePrice24'
      '  ,sum(allSum.ExtraWagePrice25)  as sumExtraWagePrice25'
      '  ,sum(allSum.ExtraWagePrice26)  as sumExtraWagePrice26'
      '  ,sum(allSum.ExtraWagePrice27)  as sumExtraWagePrice27'
      '  ,sum(allSum.ExtraWagePrice28)  as sumExtraWagePrice28'
      '  ,sum(allSum.ExtraWagePrice29)  as sumExtraWagePrice29'
      ''
      '  ,sum(allSum.OtherExtraWagePrice)  as sumOtherExtraWagePrice'
      '  ,sum(allSum.SumWagePrice) as sumSumWagePrice'
      '  ,sum(allSum.DecPrice1) as sumDecPrice1'
      '  ,sum(allSum.DecPrice2) as sumDecPrice2'
      '  ,sum(allSum.DecPrice3) as sumDecPrice3'
      '  ,sum(allSum.DecPrice4) as sumDecPrice4'
      '  ,sum(allSum.DecPrice5) as sumDecPrice5'
      '  ,sum(allSum.DecPrice6) as sumDecPrice6'
      '  ,sum(allSum.DecPrice7) as sumDecPrice7'
      '  ,sum(allSum.DecPrice8) as sumDecPrice8'
      '  ,sum(allSum.DecPrice9) as sumDecPrice9'
      '  ,sum(allSum.DecPrice10) as sumDecPrice10'
      '  ,sum(allSum.DecPrice11) as sumDecPrice11'
      '  ,sum(allSum.DecPrice12) as sumDecPrice12'
      '  ,sum(allSum.DecPrice13) as sumDecPrice13'
      '  ,sum(allSum.DecPrice14) as sumDecPrice14'
      '  ,sum(allSum.DecPrice15) as sumDecPrice15'
      '  ,sum(allSum.DecPrice16) as sumDecPrice16'
      '  ,sum(allSum.DecPrice17) as sumDecPrice17'
      '  ,sum(allSum.DecPrice18) as sumDecPrice18'
      '  ,sum(allSum.DecPrice19) as sumDecPrice19'
      '  ,sum(allSum.DecPrice20) as sumDecPrice20'
      '  ,sum(allSum.DecPrice21) as sumDecPrice21'
      '  ,sum(allSum.DecPrice22) as sumDecPrice22'
      '  ,sum(allSum.DecPrice23) as sumDecPrice23'
      '  ,sum(allSum.DecPrice24) as sumDecPrice24'
      '  ,sum(allSum.DecPrice25) as sumDecPrice25'
      '  ,sum(allSum.DecPrice26) as sumDecPrice26'
      '  ,sum(allSum.DecPrice27) as sumDecPrice27'
      '  ,sum(allSum.DecPrice28) as sumDecPrice28'
      '  ,sum(allSum.DecPrice29) as sumDecPrice29'
      ''
      
        '  ,sum(allSum.InsouranceEmployerPrice) as sumInsouranceEmployerP' +
        'rice'
      
        '  ,sum(allSum.InsouranceEmployeePrice) as sumInsouranceEmployeeP' +
        'rice'
      
        '  ,sum(allSum.InsouranceEmployerPrice2) as sumInsouranceEmployer' +
        'Price2'
      
        '  ,sum(allSum.InsouranceEmployeePrice2) as sumInsouranceEmployee' +
        'Price2'
      ''
      '  ,sum(allSum.OtheremployerPrice) as sumOtheremployerPrice'
      '  ,sum(allSum.OtherEmployeePrice) as sumOtherEmployeePrice'
      
        '  ,sum(allSum.TaxPrice) as sumTaxPrice,sum(allSum.OtherDec) as s' +
        'umOtherDec'
      
        '  ,sum(allSum.SumdecPrice) as sumSumdecPrice,sum(allsum.payment)' +
        ' as sumpayment'
      'from('
      'SELECT  FormsInfo_2.InfoID, FormsInfo_2.InfoName_L1 AS Name_L1'
      
        ',sum(case when FormTypes.SalaryKind in(1,2,5,6) then price else ' +
        '0 end) as WagePrice'
      
        ',sum(case when FormTypes.SalaryKind in(3,13) and FixedCalculated' +
        '.SalaryID=759 then price else 0 end) as ExtraWagePrice1'
      
        ',sum(case when FormTypes.SalaryKind in(3,13) and FixedCalculated' +
        '.SalaryID=782 then price else 0 end) as ExtraWagePrice2'
      
        ',sum(case when FormTypes.SalaryKind in(3,13) and FixedCalculated' +
        '.SalaryID=751 then price else 0 end) as ExtraWagePrice3'
      
        ',sum(case when FormTypes.SalaryKind in(3,13) and FixedCalculated' +
        '.SalaryID=766 then price else 0 end) as ExtraWagePrice4'
      
        ',sum(case when FormTypes.SalaryKind in(3,13) and FixedCalculated' +
        '.SalaryID=749 then price else 0 end) as ExtraWagePrice5'
      
        ',sum(case when FormTypes.SalaryKind in(3,13) and FixedCalculated' +
        '.SalaryID=762 then price else 0 end) as ExtraWagePrice6'
      
        ',sum(case when FormTypes.SalaryKind in(3,13) and FixedCalculated' +
        '.SalaryID=746 then price else 0 end) as ExtraWagePrice7'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice8'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice9'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice10'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice11'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice12'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice13'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice14'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice15'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice16'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice17'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice18'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice19'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice20'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice21'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice22'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice23'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice24'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice25'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice26'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice27'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice28'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice29'
      ''
      ''
      ''
      ''
      
        ', sum(case FixedCalculated.SalaryID when -1  then price else 0 e' +
        'nd) as OtherExtraWagePrice'
      
        ',sum(case when FormTypes.SalaryKind in(1,2,3,5,6,13) then price ' +
        'else 0 end) as SumWagePrice'
      
        ',sum(case when  FixedCalculated.SalaryID=722 then price else 0 e' +
        'nd) as DecPrice1'
      
        ',sum(case when  FixedCalculated.SalaryID=715 then price else 0 e' +
        'nd) as DecPrice2'
      
        ',sum(case when  FixedCalculated.SalaryID=723 then price else 0 e' +
        'nd) as DecPrice3'
      
        ',sum(case when  FixedCalculated.SalaryID=758 then price else 0 e' +
        'nd) as DecPrice4'
      
        ',sum(case when  FixedCalculated.SalaryID=716 then price else 0 e' +
        'nd) as DecPrice5'
      
        ',sum(case when  FixedCalculated.SalaryID=724 then price else 0 e' +
        'nd) as DecPrice6'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice7'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice8'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice9'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice10'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice11'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice12'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice13'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice14'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice15'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice16'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice17'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice18'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice19'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice20'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice21'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice22'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice23'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice24'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice25'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice26'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice27'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice28'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice29'
      ''
      ''
      ''
      ''
      
        ',sum(case when ( FormTypes.SalaryKind =10 and FixedCalculated.Sh' +
        'owListKind=4 and FormsInfo_1.InfoID=1 )'
      'then price else 0 end) as InsouranceEmployerPrice ,'
      
        'sum(case when ( FormTypes.SalaryKind =10 and FixedCalculated.Sho' +
        'wListKind=2 and FormsInfo_1.InfoID=1 )'
      'then price else 0 end) as InsouranceEmployeePrice ,'
      
        'sum(case when ( FormTypes.SalaryKind =10 and FixedCalculated.Sho' +
        'wListKind=4 and FormsInfo_1.InfoID=2 )'
      'then price else 0 end) as InsouranceEmployerPrice2 ,'
      
        'sum(case when ( FormTypes.SalaryKind =10 and FixedCalculated.Sho' +
        'wListKind=2 and FormsInfo_1.InfoID=2 )'
      'then price else 0 end) as InsouranceEmployeePrice2 ,'
      
        'sum(case when ( FormTypes.SalaryKind =10 and FixedCalculated.Sho' +
        'wListKind=4 and FormsInfo_1.InfoID>2 )'
      'then price else 0 end) as OtheremployerPrice ,'
      
        'sum(case when ( FormTypes.SalaryKind =10 and FixedCalculated.Sho' +
        'wListKind=2 and FormsInfo_1.InfoID>2 )'
      'then price else 0 end) as OtherEmployeePrice ,'
      ''
      ''
      
        'sum(case when ( FormTypes.SalaryKind = 11 and FixedCalculated.be' +
        'dbes=2) then price else 0 end ) as TaxPrice,'
      
        'sum(case when  FormTypes.SalaryKind in(9,12) and FixedCalculated' +
        '.SalaryID>757 then price else 0 end) as OtherDec,'
      
        'sum(case when ( FormTypes.SalaryKind in(9,12)  or ( FormTypes.Sa' +
        'laryKind = 11 and FixedCalculated.bedbes=2) or'
      
        '( FormTypes.SalaryKind =10 and FixedCalculated.ShowListKind =2 )' +
        ') then price else 0 end) as SumdecPrice'
      
        ',(sum(case when FormTypes.SalaryKind in(1,2,3,5,6,13) then price' +
        ' else 0 end)-'
      
        'sum(case when ( FormTypes.SalaryKind in(9,12)  or ( FormTypes.Sa' +
        'laryKind = 11 and FixedCalculated.bedbes=2) or'
      
        '( FormTypes.SalaryKind =10 and FixedCalculated.ShowListKind =2 )' +
        ') then price else 0 end)) as payment'
      ''
      'FROM FormTypes INNER JOIN'
      
        'FormsInfo FormsInfo_1 ON FormTypes.FormType = FormsInfo_1.FormTy' +
        'pe RIGHT OUTER JOIN'
      
        'FixedCalculated ON FormsInfo_1.FormInfoID = FixedCalculated.Sala' +
        'ryID LEFT OUTER JOIN'
      
        'FormsInfo FormsInfo_2 ON FixedCalculated.OfficeCode = FormsInfo_' +
        '2.FormInfoID'
      ''
      'Group By FormsInfo_2.InfoID, FormsInfo_2.InfoName_L1)allSum')
    Left = 64
    Top = 365
    object qrySums_u_m: TStringField
      FieldName = 's_u_m'
      ReadOnly = True
      Size = 6
    end
    object qrySumsumWagePrice: TBCDField
      FieldName = 'sumWagePrice'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumExtraWagePrice1: TBCDField
      FieldName = 'sumExtraWagePrice1'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumExtraWagePrice2: TBCDField
      FieldName = 'sumExtraWagePrice2'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumExtraWagePrice3: TBCDField
      FieldName = 'sumExtraWagePrice3'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumExtraWagePrice4: TBCDField
      FieldName = 'sumExtraWagePrice4'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumExtraWagePrice5: TBCDField
      FieldName = 'sumExtraWagePrice5'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumExtraWagePrice6: TBCDField
      FieldName = 'sumExtraWagePrice6'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumExtraWagePrice7: TBCDField
      FieldName = 'sumExtraWagePrice7'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumExtraWagePrice8: TBCDField
      FieldName = 'sumExtraWagePrice8'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumExtraWagePrice9: TBCDField
      FieldName = 'sumExtraWagePrice9'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumExtraWagePrice10: TBCDField
      FieldName = 'sumExtraWagePrice10'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumExtraWagePrice11: TBCDField
      FieldName = 'sumExtraWagePrice11'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumExtraWagePrice12: TBCDField
      FieldName = 'sumExtraWagePrice12'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumExtraWagePrice13: TBCDField
      FieldName = 'sumExtraWagePrice13'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumExtraWagePrice14: TBCDField
      FieldName = 'sumExtraWagePrice14'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumExtraWagePrice15: TBCDField
      FieldName = 'sumExtraWagePrice15'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumExtraWagePrice16: TBCDField
      FieldName = 'sumExtraWagePrice16'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumExtraWagePrice17: TBCDField
      FieldName = 'sumExtraWagePrice17'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumExtraWagePrice18: TBCDField
      FieldName = 'sumExtraWagePrice18'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumExtraWagePrice19: TBCDField
      FieldName = 'sumExtraWagePrice19'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumExtraWagePrice20: TBCDField
      FieldName = 'sumExtraWagePrice20'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumExtraWagePrice21: TBCDField
      FieldName = 'sumExtraWagePrice21'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumExtraWagePrice22: TBCDField
      FieldName = 'sumExtraWagePrice22'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumExtraWagePrice23: TBCDField
      FieldName = 'sumExtraWagePrice23'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumExtraWagePrice24: TBCDField
      FieldName = 'sumExtraWagePrice24'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumExtraWagePrice25: TBCDField
      FieldName = 'sumExtraWagePrice25'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumExtraWagePrice26: TBCDField
      FieldName = 'sumExtraWagePrice26'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumExtraWagePrice27: TBCDField
      FieldName = 'sumExtraWagePrice27'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumExtraWagePrice28: TBCDField
      FieldName = 'sumExtraWagePrice28'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumExtraWagePrice29: TBCDField
      FieldName = 'sumExtraWagePrice29'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumOtherExtraWagePrice: TBCDField
      FieldName = 'sumOtherExtraWagePrice'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumSumWagePrice: TBCDField
      FieldName = 'sumSumWagePrice'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumDecPrice1: TBCDField
      FieldName = 'sumDecPrice1'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumDecPrice2: TBCDField
      FieldName = 'sumDecPrice2'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumDecPrice3: TBCDField
      FieldName = 'sumDecPrice3'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumDecPrice4: TBCDField
      FieldName = 'sumDecPrice4'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumDecPrice5: TBCDField
      FieldName = 'sumDecPrice5'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumDecPrice6: TBCDField
      FieldName = 'sumDecPrice6'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumDecPrice7: TBCDField
      FieldName = 'sumDecPrice7'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumDecPrice8: TBCDField
      FieldName = 'sumDecPrice8'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumDecPrice9: TBCDField
      FieldName = 'sumDecPrice9'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumDecPrice10: TBCDField
      FieldName = 'sumDecPrice10'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumDecPrice11: TBCDField
      FieldName = 'sumDecPrice11'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumDecPrice12: TBCDField
      FieldName = 'sumDecPrice12'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumDecPrice13: TBCDField
      FieldName = 'sumDecPrice13'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumDecPrice14: TBCDField
      FieldName = 'sumDecPrice14'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumDecPrice15: TBCDField
      FieldName = 'sumDecPrice15'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumDecPrice16: TBCDField
      FieldName = 'sumDecPrice16'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumDecPrice17: TBCDField
      FieldName = 'sumDecPrice17'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumDecPrice18: TBCDField
      FieldName = 'sumDecPrice18'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumDecPrice19: TBCDField
      FieldName = 'sumDecPrice19'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumDecPrice20: TBCDField
      FieldName = 'sumDecPrice20'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumDecPrice21: TBCDField
      FieldName = 'sumDecPrice21'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumDecPrice22: TBCDField
      FieldName = 'sumDecPrice22'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumDecPrice23: TBCDField
      FieldName = 'sumDecPrice23'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumDecPrice24: TBCDField
      FieldName = 'sumDecPrice24'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumDecPrice25: TBCDField
      FieldName = 'sumDecPrice25'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumDecPrice26: TBCDField
      FieldName = 'sumDecPrice26'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumDecPrice27: TBCDField
      FieldName = 'sumDecPrice27'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumDecPrice28: TBCDField
      FieldName = 'sumDecPrice28'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumDecPrice29: TBCDField
      FieldName = 'sumDecPrice29'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumInsouranceEmployerPrice: TBCDField
      FieldName = 'sumInsouranceEmployerPrice'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumInsouranceEmployeePrice: TBCDField
      FieldName = 'sumInsouranceEmployeePrice'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumInsouranceEmployerPrice2: TBCDField
      FieldName = 'sumInsouranceEmployerPrice2'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumInsouranceEmployeePrice2: TBCDField
      FieldName = 'sumInsouranceEmployeePrice2'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumOtheremployerPrice: TBCDField
      FieldName = 'sumOtheremployerPrice'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumOtherEmployeePrice: TBCDField
      FieldName = 'sumOtherEmployeePrice'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumTaxPrice: TBCDField
      FieldName = 'sumTaxPrice'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumOtherDec: TBCDField
      FieldName = 'sumOtherDec'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumSumdecPrice: TBCDField
      FieldName = 'sumSumdecPrice'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySumsumpayment: TBCDField
      FieldName = 'sumpayment'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
  end
  object srcSalary: TDataSource
    DataSet = qrySalary
    Left = 104
    Top = 64
  end
  object qrySalary: TADOQuery
    Connection = DMF.adcSalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT  FormsInfo_2.InfoID, FormsInfo_2.InfoName_L1 AS Name_L1'
      
        ',sum(case when FormTypes.SalaryKind in(1,2,5,6) then price else ' +
        '0 end) as WagePrice'
      
        ',sum(case when FormTypes.SalaryKind in(3,13) and FixedCalculated' +
        '.SalaryID=759 then price else 0 end) as ExtraWagePrice1'
      
        ',sum(case when FormTypes.SalaryKind in(3,13) and FixedCalculated' +
        '.SalaryID=782 then price else 0 end) as ExtraWagePrice2'
      
        ',sum(case when FormTypes.SalaryKind in(3,13) and FixedCalculated' +
        '.SalaryID=751 then price else 0 end) as ExtraWagePrice3'
      
        ',sum(case when FormTypes.SalaryKind in(3,13) and FixedCalculated' +
        '.SalaryID=766 then price else 0 end) as ExtraWagePrice4'
      
        ',sum(case when FormTypes.SalaryKind in(3,13) and FixedCalculated' +
        '.SalaryID=749 then price else 0 end) as ExtraWagePrice5'
      
        ',sum(case when FormTypes.SalaryKind in(3,13) and FixedCalculated' +
        '.SalaryID=762 then price else 0 end) as ExtraWagePrice6'
      
        ',sum(case when FormTypes.SalaryKind in(3,13) and FixedCalculated' +
        '.SalaryID=746 then price else 0 end) as ExtraWagePrice7'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice8'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice9'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice10'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice11'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice12'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice13'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice14'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice15'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice16'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice17'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice18'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice19'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice20'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice21'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice22'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice23'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice24'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice25'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice26'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice27'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice28'
      
        ', sum( case FixedCalculated.SalaryID when -1  then price else 0 ' +
        'end ) as ExtraWagePrice29'
      ''
      ''
      ''
      ''
      
        ', sum(case FixedCalculated.SalaryID when -1  then price else 0 e' +
        'nd) as OtherExtraWagePrice'
      
        ',sum(case when FormTypes.SalaryKind in(1,2,3,5,6,13) then price ' +
        'else 0 end) as SumWagePrice'
      
        ',sum(case when  FixedCalculated.SalaryID=722 then price else 0 e' +
        'nd) as DecPrice1'
      
        ',sum(case when  FixedCalculated.SalaryID=715 then price else 0 e' +
        'nd) as DecPrice2'
      
        ',sum(case when  FixedCalculated.SalaryID=723 then price else 0 e' +
        'nd) as DecPrice3'
      
        ',sum(case when  FixedCalculated.SalaryID=758 then price else 0 e' +
        'nd) as DecPrice4'
      
        ',sum(case when  FixedCalculated.SalaryID=716 then price else 0 e' +
        'nd) as DecPrice5'
      
        ',sum(case when  FixedCalculated.SalaryID=724 then price else 0 e' +
        'nd) as DecPrice6'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice7'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice8'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice9'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice10'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice11'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice12'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice13'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice14'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice15'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice16'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice17'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice18'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice19'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice20'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice21'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice22'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice23'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice24'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice25'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice26'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice27'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice28'
      
        ',sum(case when  FixedCalculated.SalaryID=750 then price else 0 e' +
        'nd) as DecPrice29'
      ''
      ''
      ''
      ''
      
        ',sum(case when ( FormTypes.SalaryKind =10 and FixedCalculated.Sh' +
        'owListKind=4 and FormsInfo_1.InfoID=1 )'
      'then price else 0 end) as InsouranceEmployerPrice ,'
      
        'sum(case when ( FormTypes.SalaryKind =10 and FixedCalculated.Sho' +
        'wListKind=2 and FormsInfo_1.InfoID=1 )'
      'then price else 0 end) as InsouranceEmployeePrice ,'
      
        'sum(case when ( FormTypes.SalaryKind =10 and FixedCalculated.Sho' +
        'wListKind=4 and FormsInfo_1.InfoID=2 )'
      'then price else 0 end) as InsouranceEmployerPrice2 ,'
      
        'sum(case when ( FormTypes.SalaryKind =10 and FixedCalculated.Sho' +
        'wListKind=2 and FormsInfo_1.InfoID=2 )'
      'then price else 0 end) as InsouranceEmployeePrice2 ,'
      
        'sum(case when ( FormTypes.SalaryKind =10 and FixedCalculated.Sho' +
        'wListKind=4 and FormsInfo_1.InfoID>2 )'
      'then price else 0 end) as OtheremployerPrice ,'
      
        'sum(case when ( FormTypes.SalaryKind =10 and FixedCalculated.Sho' +
        'wListKind=2 and FormsInfo_1.InfoID>2 )'
      'then price else 0 end) as OtherEmployeePrice ,'
      ''
      ''
      
        'sum(case when ( FormTypes.SalaryKind = 11 and FixedCalculated.be' +
        'dbes=2) then price else 0 end ) as TaxPrice,'
      
        'sum(case when  FormTypes.SalaryKind in(9,12) and FixedCalculated' +
        '.SalaryID>757 then price else 0 end) as OtherDec,'
      
        'sum(case when ( FormTypes.SalaryKind in(9,12)  or ( FormTypes.Sa' +
        'laryKind = 11 and FixedCalculated.bedbes=2) or'
      
        '( FormTypes.SalaryKind =10 and FixedCalculated.ShowListKind =2 )' +
        ') then price else 0 end) as SumdecPrice'
      
        ',(sum(case when FormTypes.SalaryKind in(1,2,3,5,6,13) then price' +
        ' else 0 end)-'
      
        'sum(case when ( FormTypes.SalaryKind in(9,12)  or ( FormTypes.Sa' +
        'laryKind = 11 and FixedCalculated.bedbes=2) or'
      
        '( FormTypes.SalaryKind =10 and FixedCalculated.ShowListKind =2 )' +
        ') then price else 0 end)) as payment'
      ''
      'FROM FormTypes INNER JOIN'
      
        'FormsInfo FormsInfo_1 ON FormTypes.FormType = FormsInfo_1.FormTy' +
        'pe RIGHT OUTER JOIN'
      
        'FixedCalculated ON FormsInfo_1.FormInfoID = FixedCalculated.Sala' +
        'ryID LEFT OUTER JOIN'
      
        'FormsInfo FormsInfo_2 ON FixedCalculated.OfficeCode = FormsInfo_' +
        '2.FormInfoID'
      ''
      'Group By FormsInfo_2.InfoID, FormsInfo_2.InfoName_L1')
    Left = 40
    Top = 64
    object qrySalaryInfoID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583
      FieldName = 'InfoID'
    end
    object qrySalaryName_L1: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldName = 'Name_L1'
      Size = 255
    end
    object qrySalaryWagePrice: TBCDField
      DisplayLabel = #1580#1605#1593' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1610#1575
      FieldName = 'WagePrice'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryExtraWagePrice1: TBCDField
      FieldName = 'ExtraWagePrice1'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryExtraWagePrice2: TBCDField
      FieldName = 'ExtraWagePrice2'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryExtraWagePrice3: TBCDField
      FieldName = 'ExtraWagePrice3'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryExtraWagePrice4: TBCDField
      FieldName = 'ExtraWagePrice4'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryExtraWagePrice5: TBCDField
      FieldName = 'ExtraWagePrice5'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryExtraWagePrice6: TBCDField
      FieldName = 'ExtraWagePrice6'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryExtraWagePrice7: TBCDField
      FieldName = 'ExtraWagePrice7'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryExtraWagePrice8: TBCDField
      FieldName = 'ExtraWagePrice8'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryExtraWagePrice9: TBCDField
      FieldName = 'ExtraWagePrice9'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryExtraWagePrice10: TBCDField
      FieldName = 'ExtraWagePrice10'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryExtraWagePrice11: TBCDField
      FieldName = 'ExtraWagePrice11'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryExtraWagePrice12: TBCDField
      FieldName = 'ExtraWagePrice12'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryExtraWagePrice13: TBCDField
      FieldName = 'ExtraWagePrice13'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryExtraWagePrice14: TBCDField
      FieldName = 'ExtraWagePrice14'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryExtraWagePrice15: TBCDField
      FieldName = 'ExtraWagePrice15'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryExtraWagePrice16: TBCDField
      FieldName = 'ExtraWagePrice16'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryExtraWagePrice17: TBCDField
      FieldName = 'ExtraWagePrice17'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryExtraWagePrice18: TBCDField
      FieldName = 'ExtraWagePrice18'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryExtraWagePrice19: TBCDField
      FieldName = 'ExtraWagePrice19'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryExtraWagePrice20: TBCDField
      FieldName = 'ExtraWagePrice20'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryExtraWagePrice21: TBCDField
      FieldName = 'ExtraWagePrice21'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryExtraWagePrice22: TBCDField
      FieldName = 'ExtraWagePrice22'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryExtraWagePrice23: TBCDField
      FieldName = 'ExtraWagePrice23'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryExtraWagePrice24: TBCDField
      FieldName = 'ExtraWagePrice24'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryExtraWagePrice25: TBCDField
      FieldName = 'ExtraWagePrice25'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryExtraWagePrice26: TBCDField
      FieldName = 'ExtraWagePrice26'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryExtraWagePrice27: TBCDField
      FieldName = 'ExtraWagePrice27'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryExtraWagePrice28: TBCDField
      FieldName = 'ExtraWagePrice28'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryExtraWagePrice29: TBCDField
      FieldName = 'ExtraWagePrice29'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryOtherExtraWagePrice: TBCDField
      DisplayLabel = #1587#1575#1610#1585' '#1605#1586#1575#1610#1575
      FieldName = 'OtherExtraWagePrice'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalarySumWagePrice: TBCDField
      DisplayLabel = #1580#1605#1593' '#1603#1604' '#1575#1590#1575#1601#1575#1578
      FieldName = 'SumWagePrice'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryDecPrice1: TBCDField
      FieldName = 'DecPrice1'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryDecPrice2: TBCDField
      FieldName = 'DecPrice2'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryDecPrice3: TBCDField
      FieldName = 'DecPrice3'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryDecPrice4: TBCDField
      FieldName = 'DecPrice4'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryDecPrice5: TBCDField
      FieldName = 'DecPrice5'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryDecPrice6: TBCDField
      FieldName = 'DecPrice6'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryDecPrice7: TBCDField
      FieldName = 'DecPrice7'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryDecPrice8: TBCDField
      FieldName = 'DecPrice8'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryDecPrice9: TBCDField
      FieldName = 'DecPrice9'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryDecPrice10: TBCDField
      FieldName = 'DecPrice10'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryDecPrice11: TBCDField
      FieldName = 'DecPrice11'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryDecPrice12: TBCDField
      FieldName = 'DecPrice12'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryDecPrice13: TBCDField
      FieldName = 'DecPrice13'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryDecPrice14: TBCDField
      FieldName = 'DecPrice14'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryDecPrice15: TBCDField
      FieldName = 'DecPrice15'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryDecPrice16: TBCDField
      FieldName = 'DecPrice16'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryDecPrice17: TBCDField
      FieldName = 'DecPrice17'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryDecPrice18: TBCDField
      FieldName = 'DecPrice18'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryDecPrice19: TBCDField
      FieldName = 'DecPrice19'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryDecPrice20: TBCDField
      FieldName = 'DecPrice20'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryDecPrice21: TBCDField
      FieldName = 'DecPrice21'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryDecPrice22: TBCDField
      FieldName = 'DecPrice22'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryDecPrice23: TBCDField
      FieldName = 'DecPrice23'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryDecPrice24: TBCDField
      FieldName = 'DecPrice24'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryDecPrice25: TBCDField
      FieldName = 'DecPrice25'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryDecPrice26: TBCDField
      FieldName = 'DecPrice26'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryDecPrice27: TBCDField
      FieldName = 'DecPrice27'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryDecPrice28: TBCDField
      FieldName = 'DecPrice28'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryDecPrice29: TBCDField
      FieldName = 'DecPrice29'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryInsouranceEmployerPrice: TBCDField
      DisplayLabel = #1576#1610#1605#1607' '#1587#1607#1605' '#1603#1575#1585#1601#1585#1605#1575
      FieldName = 'InsouranceEmployerPrice'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryInsouranceEmployeePrice: TBCDField
      DisplayLabel = #1576#1610#1605#1607' '#1587#1607#1605' '#1603#1575#1585#1605#1606#1583
      FieldName = 'InsouranceEmployeePrice'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryInsouranceEmployerPrice2: TBCDField
      DisplayLabel = #1576#1610#1605#1607' '#1587#1607#1605' '#1603#1575#1585#1601#1585#1605#1575'2'
      FieldName = 'InsouranceEmployerPrice2'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryInsouranceEmployeePrice2: TBCDField
      DisplayLabel = #1576#1610#1605#1607' '#1587#1607#1605' '#1603#1575#1585#1605#1606#1583'2'
      FieldName = 'InsouranceEmployeePrice2'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryOtheremployerPrice: TBCDField
      DisplayLabel = #1576#1610#1605#1607' '#1587#1607#1605' '#1603#1575#1585#1601#1585#1605#1575'-'#1587#1575#1610#1585
      FieldName = 'OtheremployerPrice'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryOtherEmployeePrice: TBCDField
      DisplayLabel = #1576#1610#1605#1607' '#1587#1607#1605' '#1603#1575#1585#1605#1606#1583'- '#1587#1575#1610#1585
      FieldName = 'OtherEmployeePrice'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryTaxPrice: TBCDField
      DisplayLabel = #1605#1575#1604#1610#1575#1578
      FieldName = 'TaxPrice'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalaryOtherDec: TBCDField
      DisplayLabel = #1587#1575#1610#1585' '#1603#1587#1608#1585#1575#1578
      FieldName = 'OtherDec'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalarySumdecPrice: TBCDField
      DisplayLabel = #1580#1605#1593' '#1603#1587#1608#1585#1575#1578
      FieldName = 'SumdecPrice'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrySalarypayment: TBCDField
      DisplayLabel = #1602#1575#1576#1604' '#1662#1585#1583#1575#1582#1578
      FieldName = 'payment'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
  end
  object qryWage: TADOQuery
    Connection = DMF.adcSalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'ArchiveID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 2
        Value = 0
      end
      item
        Name = 'Mounth'
        DataType = ftWord
        Precision = 3
        Size = 2
        Value = 2
      end>
    SQL.Strings = (
      
        'SELECT      Pay.FormsInfo.InfoName_L1, Pay.FormsInfo.InfoID, dbo' +
        '.FormTypes.FormType, Pay.FixedCalculated.ArchiveID'
      ', Pay.FormsInfo.FormInfoID'
      'FROM         Pay.FormsInfo INNER JOIN'
      
        '                      Pay.FormTypes ON Pay.FormsInfo.FormType = ' +
        'Pay.FormTypes.FormType INNER JOIN'
      
        '                      Pay.FixedCalculated ON Pay.FormsInfo.FormI' +
        'nfoID = Pay.FixedCalculated.SalaryID'
      'WHERE     '
      ' (Pay.FormTypes.SalaryKind IN (3, 13)) AND '
      ' Pay.FixedCalculated.ArchiveID=:ArchiveID and'
      ' Pay.FixedCalculated.Mounth=:Mounth'
      
        'GROUP BY Pay.FormsInfo.InfoID, Pay.FormsInfo.InfoName_L1, Pay.Fo' +
        'rmTypes.FormType, Pay.FixedCalculated.ArchiveID, Pay.FixedCalcul' +
        'ated.Mounth, '
      
        '                      Pay.FixedCalculated.SalaryID, Pay.FormsInf' +
        'o.FormInfoID')
    Left = 560
    Top = 8
  end
  object qryDec: TADOQuery
    Connection = DMF.adcSalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'ArchiveID'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'Mounth'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 3
        Size = 16
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT    Pay.FormsInfo.InfoName_L1, Pay.FormsInfo.InfoID, Pay.F' +
        'ormTypes.FormType, Pay.FixedCalculated.ArchiveID'
      ', Pay.FormsInfo.FormInfoID'
      'FROM         Pay.FormsInfo INNER JOIN'
      
        '                      Pay.FormTypes ON Pay.FormsInfo.FormType = ' +
        'Pay.FormTypes.FormType INNER JOIN'
      
        '                      Pay.FixedCalculated ON Pay.FormsInfo.FormI' +
        'nfoID = Pay.FixedCalculated.SalaryID'
      ''
      'WHERE     '
      ' (Pay.FormTypes.SalaryKind IN (9, 12)) AND '
      ' Pay.FixedCalculated.ArchiveID=:ArchiveID and '
      'Pay.FixedCalculated.Mounth=:Mounth'
      
        'GROUP BY Pay.FormsInfo.InfoID, Pay.FormsInfo.InfoName_L1, Pay.Fo' +
        'rmTypes.FormType, Pay.FixedCalculated.ArchiveID, Pay.FixedCalcul' +
        'ated.Mounth, '
      
        '                      Pay.FixedCalculated.SalaryID, Pay.FormsInf' +
        'o.FormInfoID'
      '')
    Left = 464
    Top = 8
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
    Template.FileName = 'D:\Projects\Fara\Salary\Exe\Report\AllSalaryList.rtm'
    Units = utMillimeters
    AllowPrintToFile = True
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    PreviewFormSettings.WindowState = wsMaximized
    Left = 688
    Top = 192
    Version = '7.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 34396
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape1'
        ParentWidth = True
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 15081
        mmLeft = 0
        mmTop = 19579
        mmWidth = 284300
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = #1593#1606#1608#1575#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 248180
        mmTop = 27517
        mmWidth = 34925
        BandType = 0
      end
      object w1: TppLabel
        UserName = 'w1'
        SaveOrder = 0
        Save = True
        AutoSize = False
        Caption = #1580#1605#1593' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1610#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4064
        mmLeft = 231246
        mmTop = 21431
        mmWidth = 15346
        BandType = 0
      end
      object w2: TppLabel
        UserName = 'w2'
        SaveOrder = 1
        Save = True
        AutoSize = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4064
        mmLeft = 215636
        mmTop = 21431
        mmWidth = 15346
        BandType = 0
      end
      object w4: TppLabel
        UserName = 'w4'
        AutoSize = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4064
        mmLeft = 184415
        mmTop = 21431
        mmWidth = 15346
        BandType = 0
      end
      object w3: TppLabel
        UserName = 'w3'
        AutoSize = False
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 200025
        mmTop = 21431
        mmWidth = 15346
        BandType = 0
      end
      object w11: TppLabel
        UserName = 'w11'
        AutoSize = False
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 184415
        mmTop = 27252
        mmWidth = 15346
        BandType = 0
      end
      object w10: TppLabel
        UserName = 'w10'
        AutoSize = False
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 200025
        mmTop = 27252
        mmWidth = 15346
        BandType = 0
      end
      object w9: TppLabel
        UserName = 'w9'
        SaveOrder = 2
        Save = True
        AutoSize = False
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 215636
        mmTop = 27252
        mmWidth = 15346
        BandType = 0
      end
      object w8: TppLabel
        UserName = 'w8'
        SaveOrder = 3
        Save = True
        AutoSize = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4064
        mmLeft = 231246
        mmTop = 27252
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label25'
        AutoSize = False
        Caption = #1603#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 247386
        mmTop = 21167
        mmWidth = 35983
        BandType = 0
      end
      object ppLine14: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 20373
        mmTop = 26194
        mmWidth = 263526
        BandType = 0
      end
      object ppLine16: TppLine
        UserName = 'Line6'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 246857
        mmTop = 19579
        mmWidth = 1852
        BandType = 0
      end
      object ppLine18: TppLine
        UserName = 'Line7'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 230982
        mmTop = 19579
        mmWidth = 1852
        BandType = 0
      end
      object ppLine19: TppLine
        UserName = 'Line8'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 215371
        mmTop = 19579
        mmWidth = 1852
        BandType = 0
      end
      object ppLine20: TppLine
        UserName = 'Line9'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 199761
        mmTop = 19579
        mmWidth = 1852
        BandType = 0
      end
      object ppLine21: TppLine
        UserName = 'Line10'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 184150
        mmTop = 19579
        mmWidth = 1852
        BandType = 0
      end
      object ppLine22: TppLine
        UserName = 'Line101'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 168540
        mmTop = 19579
        mmWidth = 1852
        BandType = 0
      end
      object ppLine23: TppLine
        UserName = 'Line12'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 152929
        mmTop = 19579
        mmWidth = 1852
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        OnGetText = ppSystemVariable1GetText
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 2381
        mmTop = 8731
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label13'
        OnGetText = ppLabel45GetText
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7408
        mmLeft = 111390
        mmTop = 3175
        mmWidth = 61383
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label36'
        OnGetText = ppLabel46GetText
        Caption = #1578#1575#1585#1610#1582' '#1670#1575#1662
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 6435
        mmLeft = 2381
        mmTop = 2381
        mmWidth = 11896
        BandType = 0
      end
      object w5: TppLabel
        UserName = 'w5'
        AutoSize = False
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 168805
        mmTop = 21431
        mmWidth = 15346
        BandType = 0
      end
      object w12: TppLabel
        UserName = 'w12'
        AutoSize = False
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 168805
        mmTop = 27252
        mmWidth = 15346
        BandType = 0
      end
      object w6: TppLabel
        UserName = 'w6'
        AutoSize = False
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 153194
        mmTop = 21431
        mmWidth = 15346
        BandType = 0
      end
      object w14: TppLabel
        UserName = 'w14'
        AutoSize = False
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 137584
        mmTop = 27252
        mmWidth = 15346
        BandType = 0
      end
      object w7: TppLabel
        UserName = 'w7'
        AutoSize = False
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 137584
        mmTop = 21431
        mmWidth = 15346
        BandType = 0
      end
      object w13: TppLabel
        UserName = 'w13'
        AutoSize = False
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 153194
        mmTop = 27252
        mmWidth = 15346
        BandType = 0
      end
      object ppLine34: TppLine
        UserName = 'Line34'
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 14023
        mmLeft = 106098
        mmTop = 19579
        mmWidth = 1852
        BandType = 0
      end
      object ppLine35: TppLine
        UserName = 'Line103'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 91811
        mmTop = 19579
        mmWidth = 1852
        BandType = 0
      end
      object ppLine36: TppLine
        UserName = 'Line36'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 77523
        mmTop = 19579
        mmWidth = 1852
        BandType = 0
      end
      object ppLine37: TppLine
        UserName = 'Line37'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 63236
        mmTop = 19579
        mmWidth = 1852
        BandType = 0
      end
      object ppLine33: TppLine
        UserName = 'Line33'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 137319
        mmTop = 19579
        mmWidth = 1852
        BandType = 0
      end
      object ppLine38: TppLine
        UserName = 'Line1'
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 14023
        mmLeft = 121709
        mmTop = 19844
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        AutoSize = False
        Caption = #1587#1575#1610#1585' '#1605#1586#1575#1610#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 121973
        mmTop = 21431
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label16'
        AutoSize = False
        Caption = #1580#1605#1593' '#1581#1602#1608#1602
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4826
        mmLeft = 121973
        mmTop = 27252
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label12'
        OnGetText = ppLabel34GetText
        Caption = #1604#1610#1587#1578' '#1603#1604#1610' '#1581#1602#1608#1602' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6604
        mmLeft = 257778
        mmTop = 10319
        mmWidth = 24003
        BandType = 0
      end
      object d1: TppLabel
        UserName = 'Label17'
        AutoSize = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 106363
        mmTop = 21431
        mmWidth = 15346
        BandType = 0
      end
      object d5: TppLabel
        UserName = 'Label20'
        AutoSize = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 106363
        mmTop = 26988
        mmWidth = 15346
        BandType = 0
      end
      object d2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4826
        mmLeft = 92075
        mmTop = 21167
        mmWidth = 14000
        BandType = 0
      end
      object d6: TppLabel
        UserName = 'Label14'
        AutoSize = False
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4826
        mmLeft = 92075
        mmTop = 26988
        mmWidth = 14000
        BandType = 0
      end
      object d3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4826
        mmLeft = 77788
        mmTop = 21167
        mmWidth = 14000
        BandType = 0
      end
      object d7: TppLabel
        UserName = 'Label15'
        AutoSize = False
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4826
        mmLeft = 77788
        mmTop = 26988
        mmWidth = 14000
        BandType = 0
      end
      object d8: TppLabel
        UserName = 'd8'
        AutoSize = False
        Caption = ' '#1605#1575#1604#1610#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4826
        mmLeft = 63500
        mmTop = 26988
        mmWidth = 14000
        BandType = 0
      end
      object d4: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4826
        mmLeft = 63500
        mmTop = 21167
        mmWidth = 14000
        BandType = 0
      end
      object TppLabel
        UserName = 'Label18'
        AutoSize = False
        Caption = ' '#1576#1610#1605#1607'  '#1603#1575#1585#1601#1585#1605#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4826
        mmLeft = 49213
        mmTop = 21167
        mmWidth = 14000
        BandType = 0
      end
      object d9: TppLabel
        UserName = 'd101'
        AutoSize = False
        Caption = ' '#1576#1610#1605#1607' '#1603#1575#1585#1605#1606#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4826
        mmLeft = 49213
        mmTop = 26988
        mmWidth = 14000
        BandType = 0
      end
      object TppLabel
        UserName = 'Label19'
        AutoSize = False
        Caption = ' '#1576#1610#1605#1607'  '#1603#1575#1585#1601#1585#1605#1575'2'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4826
        mmLeft = 34925
        mmTop = 21167
        mmWidth = 14000
        BandType = 0
      end
      object TppLabel
        UserName = 'Label21'
        AutoSize = False
        Caption = ' '#1576#1610#1605#1607' '#1603#1575#1585#1605#1606#1583'2'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 34925
        mmTop = 26988
        mmWidth = 14288
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line13'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 34660
        mmTop = 19579
        mmWidth = 1852
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line17'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 48948
        mmTop = 19579
        mmWidth = 1852
        BandType = 0
      end
      object TppLabel
        UserName = 'Label22'
        AutoSize = False
        Caption = #1587#1575#1610#1585' '#1603#1587#1608#1585#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 20638
        mmTop = 21167
        mmWidth = 14000
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line18'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 20373
        mmTop = 19579
        mmWidth = 1852
        BandType = 0
      end
      object TppLabel
        UserName = 'Label23'
        AutoSize = False
        Caption = #1580#1605#1593' '#1603#1587#1608#1585#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 20638
        mmTop = 26988
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label24'
        AutoSize = False
        Caption = #1582#1575#1604#1589
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 0
        mmTop = 21167
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label26'
        AutoSize = False
        Caption = #1662#1585#1583#1575#1582#1578#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 0
        mmTop = 26723
        mmWidth = 20108
        BandType = 0
      end
      object ppLine39: TppLine
        UserName = 'Line40'
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 0
        mmTop = 30956
        mmWidth = 284300
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 10848
      mmPrintPosition = 0
      object ppLine45: TppLine
        UserName = 'Line16'
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 0
        mmTop = 7144
        mmWidth = 284300
        BandType = 4
      end
      object dw1: TppDBText
        UserName = 'dw1'
        DataField = 'WagePrice'
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
        mmHeight = 5821
        mmLeft = 231246
        mmTop = 0
        mmWidth = 15346
        BandType = 4
      end
      object dw2: TppDBText
        UserName = 'dw2'
        DataField = 'ExtraWagePrice1'
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
        mmHeight = 5821
        mmLeft = 215636
        mmTop = 0
        mmWidth = 15346
        BandType = 4
      end
      object dw4: TppDBText
        UserName = 'dw4'
        DataField = 'ExtraWagePrice3'
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
        mmHeight = 5821
        mmLeft = 184415
        mmTop = 0
        mmWidth = 15346
        BandType = 4
      end
      object dw3: TppDBText
        UserName = 'dw3'
        DataField = 'ExtraWagePrice2'
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
        mmHeight = 5821
        mmLeft = 200025
        mmTop = 0
        mmWidth = 15346
        BandType = 4
      end
      object dw7: TppDBText
        UserName = 'dw7'
        DataField = 'ExtraWagePrice6'
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
        mmHeight = 5821
        mmLeft = 137584
        mmTop = 0
        mmWidth = 15346
        BandType = 4
      end
      object dw6: TppDBText
        UserName = 'dw6'
        DataField = 'ExtraWagePrice5'
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
        mmHeight = 5821
        mmLeft = 153194
        mmTop = 0
        mmWidth = 15346
        BandType = 4
      end
      object dw5: TppDBText
        UserName = 'dw5'
        DataField = 'ExtraWagePrice4'
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
        mmHeight = 5821
        mmLeft = 168805
        mmTop = 0
        mmWidth = 15346
        BandType = 4
      end
      object dw8: TppDBText
        UserName = 'dw8'
        DataField = 'ExtraWagePrice7'
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
        mmHeight = 5821
        mmLeft = 231246
        mmTop = 5027
        mmWidth = 15346
        BandType = 4
      end
      object dw9: TppDBText
        UserName = 'dw9'
        DataField = 'ExtraWagePrice8'
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
        mmHeight = 5821
        mmLeft = 215636
        mmTop = 5027
        mmWidth = 15346
        BandType = 4
      end
      object dw11: TppDBText
        UserName = 'dw11'
        DataField = 'ExtraWagePrice10'
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
        mmHeight = 5821
        mmLeft = 184415
        mmTop = 5027
        mmWidth = 15346
        BandType = 4
      end
      object dw10: TppDBText
        UserName = 'dw10'
        DataField = 'ExtraWagePrice9'
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
        mmHeight = 5821
        mmLeft = 200025
        mmTop = 5027
        mmWidth = 15346
        BandType = 4
      end
      object dw14: TppDBText
        UserName = 'dw14'
        DataField = 'ExtraWagePrice13'
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
        mmHeight = 5821
        mmLeft = 137584
        mmTop = 5027
        mmWidth = 15346
        BandType = 4
      end
      object dw13: TppDBText
        UserName = 'dw13'
        DataField = 'ExtraWagePrice12'
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
        mmHeight = 5821
        mmLeft = 153194
        mmTop = 5027
        mmWidth = 15346
        BandType = 4
      end
      object dw12: TppDBText
        UserName = 'dw12'
        DataField = 'ExtraWagePrice11'
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
        mmHeight = 5821
        mmLeft = 168805
        mmTop = 5027
        mmWidth = 15346
        BandType = 4
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Pen.Width = 2
        ParentHeight = True
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 10848
        mmLeft = 121709
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line3'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 137319
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine6: TppLine
        UserName = 'Line11'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 152929
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine7: TppLine
        UserName = 'Line14'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 168540
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine8: TppLine
        UserName = 'Line102'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 184150
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine9: TppLine
        UserName = 'Line15'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 199761
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine10: TppLine
        UserName = 'Line19'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 215371
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine11: TppLine
        UserName = 'Line20'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 230982
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine12: TppLine
        UserName = 'Line21'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 246857
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'InfoID'
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
        mmLeft = 247386
        mmTop = 0
        mmWidth = 35983
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'Name_L1'
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
        mmHeight = 5821
        mmLeft = 247915
        mmTop = 5027
        mmWidth = 35454
        BandType = 4
      end
      object ppLine17: TppLine
        UserName = 'Line23'
        Pen.Width = 2
        ParentHeight = True
        Position = lpRight
        Weight = 1.500000000000000000
        mmHeight = 10848
        mmLeft = 282840
        mmTop = 0
        mmWidth = 1588
        BandType = 4
      end
      object ppLine24: TppLine
        UserName = 'Line24'
        Pen.Width = 2
        ParentHeight = True
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 10848
        mmLeft = 0
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'DecPrice1'
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
        mmHeight = 5821
        mmLeft = 106363
        mmTop = 0
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'DecPrice5'
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
        mmHeight = 5821
        mmLeft = 106363
        mmTop = 5027
        mmWidth = 15346
        BandType = 4
      end
      object ppLine25: TppLine
        UserName = 'Line25'
        Pen.Width = 2
        ParentHeight = True
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 10848
        mmLeft = 106098
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object dd1: TppDBText
        UserName = 'dd1'
        DataField = 'DecPrice2'
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
        mmHeight = 5821
        mmLeft = 91811
        mmTop = 0
        mmWidth = 14000
        BandType = 4
      end
      object dd6: TppDBText
        UserName = 'dd6'
        DataField = 'DecPrice6'
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
        mmHeight = 5821
        mmLeft = 91811
        mmTop = 5027
        mmWidth = 14000
        BandType = 4
      end
      object ppLine26: TppLine
        UserName = 'Line26'
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 9790
        mmWidth = 284300
        BandType = 4
      end
      object dd2: TppDBText
        UserName = 'dd2'
        DataField = 'DecPrice3'
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
        mmHeight = 5821
        mmLeft = 77788
        mmTop = 0
        mmWidth = 14000
        BandType = 4
      end
      object dd4: TppDBText
        UserName = 'dd4'
        DataField = 'InsouranceEmployerPrice'
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
        mmHeight = 5821
        mmLeft = 49213
        mmTop = 0
        mmWidth = 14000
        BandType = 4
      end
      object dd3: TppDBText
        UserName = 'dd3'
        DataField = 'DecPrice4'
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
        mmHeight = 5821
        mmLeft = 63500
        mmTop = 0
        mmWidth = 14000
        BandType = 4
      end
      object dd7: TppDBText
        UserName = 'dd7'
        DataField = 'DecPrice7'
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
        mmHeight = 5821
        mmLeft = 77788
        mmTop = 5027
        mmWidth = 14000
        BandType = 4
      end
      object dd10: TppDBText
        UserName = 'dd10'
        DataField = 'OtherEmployeePrice'
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
        mmHeight = 5821
        mmLeft = 34925
        mmTop = 5027
        mmWidth = 14000
        BandType = 4
      end
      object dd9: TppDBText
        UserName = 'dd9'
        DataField = 'InsouranceEmployerPrice'
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
        mmHeight = 5821
        mmLeft = 49213
        mmTop = 5027
        mmWidth = 14000
        BandType = 4
      end
      object dd8: TppDBText
        UserName = 'dd8'
        DataField = 'TaxPrice'
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
        mmHeight = 5821
        mmLeft = 63500
        mmTop = 5027
        mmWidth = 14000
        BandType = 4
      end
      object ppLine27: TppLine
        UserName = 'Line27'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 48948
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine28: TppLine
        UserName = 'Line28'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 63236
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine29: TppLine
        UserName = 'Line29'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 77523
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine30: TppLine
        UserName = 'Line30'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 91811
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object dd5: TppDBText
        UserName = 'dd5'
        DataField = 'OtheremployerPrice'
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
        mmHeight = 5821
        mmLeft = 34925
        mmTop = 0
        mmWidth = 14000
        BandType = 4
      end
      object ppLine31: TppLine
        UserName = 'Line32'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 34660
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine32: TppLine
        UserName = 'Line35'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 20373
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'payment'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 529
        mmTop = 2117
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'OtherExtraWagePrice'
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
        mmHeight = 6350
        mmLeft = 121973
        mmTop = 0
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'SumWagePrice'
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
        mmHeight = 5821
        mmLeft = 122238
        mmTop = 5027
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'SumdecPrice'
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
        mmHeight = 5821
        mmLeft = 20902
        mmTop = 5027
        mmWidth = 14023
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'dd101'
        DataField = 'OtherDec'
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
        mmHeight = 5821
        mmLeft = 20638
        mmTop = 0
        mmWidth = 14023
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 29104
      mmPrintPosition = 0
      object ppShape3: TppShape
        UserName = 'Shape3'
        ParentWidth = True
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 14552
        mmLeft = 0
        mmTop = 0
        mmWidth = 284300
        BandType = 8
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = #1580#1605#1593' '#1603#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 268288
        mmTop = 0
        mmWidth = 15081
        BandType = 8
      end
      object ppLine40: TppLine
        UserName = 'Line41'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 63236
        mmTop = 0
        mmWidth = 1852
        BandType = 8
      end
      object ppLine41: TppLine
        UserName = 'Line42'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 77523
        mmTop = 0
        mmWidth = 1852
        BandType = 8
      end
      object ppLine63: TppLine
        UserName = 'Line63'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 91811
        mmTop = 0
        mmWidth = 1852
        BandType = 8
      end
      object ppLine64: TppLine
        UserName = 'Line64'
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 14023
        mmLeft = 106098
        mmTop = 0
        mmWidth = 1852
        BandType = 8
      end
      object ppLine65: TppLine
        UserName = 'Line65'
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 14023
        mmLeft = 121709
        mmTop = 0
        mmWidth = 1852
        BandType = 8
      end
      object ppLine66: TppLine
        UserName = 'Line66'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 137319
        mmTop = 0
        mmWidth = 1852
        BandType = 8
      end
      object ppLine67: TppLine
        UserName = 'Line67'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 152929
        mmTop = 0
        mmWidth = 1852
        BandType = 8
      end
      object ppLine68: TppLine
        UserName = 'Line68'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 168540
        mmTop = 0
        mmWidth = 1852
        BandType = 8
      end
      object ppLine69: TppLine
        UserName = 'Line69'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 184150
        mmTop = 0
        mmWidth = 1852
        BandType = 8
      end
      object ppLine70: TppLine
        UserName = 'Line70'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 199761
        mmTop = 0
        mmWidth = 1852
        BandType = 8
      end
      object ppLine71: TppLine
        UserName = 'Line71'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 215371
        mmTop = 0
        mmWidth = 1852
        BandType = 8
      end
      object ppLine72: TppLine
        UserName = 'Line72'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 230982
        mmTop = 0
        mmWidth = 1852
        BandType = 8
      end
      object ppLine73: TppLine
        UserName = 'Line73'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 246857
        mmTop = 0
        mmWidth = 1852
        BandType = 8
      end
      object ppLine74: TppLine
        UserName = 'Line74'
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 20638
        mmTop = 6615
        mmWidth = 262996
        BandType = 8
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc8'
        DataField = 'WagePrice'
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
        mmHeight = 5821
        mmLeft = 231246
        mmTop = 794
        mmWidth = 15346
        BandType = 8
      end
      object ppDBCalc9: TppDBCalc
        UserName = 'DBCalc9'
        DataField = 'ExtraWagePrice1'
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
        mmHeight = 5821
        mmLeft = 215636
        mmTop = 794
        mmWidth = 15346
        BandType = 8
      end
      object ppDBCalc10: TppDBCalc
        UserName = 'DBCalc10'
        DataField = 'ExtraWagePrice8'
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
        mmHeight = 5821
        mmLeft = 215636
        mmTop = 7408
        mmWidth = 15346
        BandType = 8
      end
      object ppDBCalc11: TppDBCalc
        UserName = 'DBCalc11'
        DataField = 'ExtraWagePrice7'
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
        mmHeight = 5821
        mmLeft = 231246
        mmTop = 7408
        mmWidth = 15346
        BandType = 8
      end
      object ppDBCalc12: TppDBCalc
        UserName = 'DBCalc12'
        DataField = 'ExtraWagePrice11'
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
        mmHeight = 5821
        mmLeft = 168805
        mmTop = 7408
        mmWidth = 15346
        BandType = 8
      end
      object ppDBCalc13: TppDBCalc
        UserName = 'DBCalc13'
        DataField = 'ExtraWagePrice10'
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
        mmHeight = 5821
        mmLeft = 184415
        mmTop = 7408
        mmWidth = 15346
        BandType = 8
      end
      object ppDBCalc14: TppDBCalc
        UserName = 'sw_col101'
        DataField = 'ExtraWagePrice9'
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
        mmHeight = 5821
        mmLeft = 200025
        mmTop = 7408
        mmWidth = 15346
        BandType = 8
      end
      object ppDBCalc15: TppDBCalc
        UserName = 'DBCalc15'
        DataField = 'ExtraWagePrice4'
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
        mmHeight = 5821
        mmLeft = 168805
        mmTop = 794
        mmWidth = 15346
        BandType = 8
      end
      object ppDBCalc16: TppDBCalc
        UserName = 'DBCalc16'
        DataField = 'ExtraWagePrice3'
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
        mmHeight = 5821
        mmLeft = 184415
        mmTop = 794
        mmWidth = 15346
        BandType = 8
      end
      object ppDBCalc17: TppDBCalc
        UserName = 'DBCalc17'
        DataField = 'ExtraWagePrice2'
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
        mmHeight = 5821
        mmLeft = 200025
        mmTop = 794
        mmWidth = 15346
        BandType = 8
      end
      object ppDBCalc18: TppDBCalc
        UserName = 'DBCalc18'
        DataField = 'DecPrice3'
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
        mmHeight = 5821
        mmLeft = 77788
        mmTop = 794
        mmWidth = 14023
        BandType = 8
      end
      object ppDBCalc19: TppDBCalc
        UserName = 'DBCalc19'
        DataField = 'DecPrice2'
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
        mmHeight = 5821
        mmLeft = 92075
        mmTop = 794
        mmWidth = 14023
        BandType = 8
      end
      object ppDBCalc20: TppDBCalc
        UserName = 'DBCalc20'
        DataField = 'DecPrice7'
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
        mmHeight = 5821
        mmLeft = 77788
        mmTop = 7408
        mmWidth = 14023
        BandType = 8
      end
      object ppDBCalc21: TppDBCalc
        UserName = 'DBCalc21'
        DataField = 'DecPrice6'
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
        mmHeight = 5821
        mmLeft = 92075
        mmTop = 7408
        mmWidth = 14023
        BandType = 8
      end
      object ppDBCalc22: TppDBCalc
        UserName = '_TaxInvolved3'
        DataField = 'DecPrice1'
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
        mmHeight = 5821
        mmLeft = 106363
        mmTop = 794
        mmWidth = 15346
        BandType = 8
      end
      object ppDBCalc23: TppDBCalc
        UserName = 'DBCalc23'
        DataField = 'ExtraWagePrice6'
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
        mmHeight = 5821
        mmLeft = 137584
        mmTop = 794
        mmWidth = 15346
        BandType = 8
      end
      object ppDBCalc24: TppDBCalc
        UserName = 'DBCalc24'
        DataField = 'ExtraWagePrice5'
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
        mmHeight = 5821
        mmLeft = 153194
        mmTop = 794
        mmWidth = 15346
        BandType = 8
      end
      object ppDBCalc25: TppDBCalc
        UserName = '_InsInvolved1'
        DataField = 'DecPrice5'
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
        mmHeight = 5821
        mmLeft = 106363
        mmTop = 7408
        mmWidth = 15346
        BandType = 8
      end
      object ppDBCalc26: TppDBCalc
        UserName = 'DBCalc26'
        DataField = 'ExtraWagePrice13'
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
        mmHeight = 5821
        mmLeft = 137584
        mmTop = 7408
        mmWidth = 15346
        BandType = 8
      end
      object ppDBCalc27: TppDBCalc
        UserName = 'DBCalc27'
        DataField = 'ExtraWagePrice12'
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
        mmHeight = 5821
        mmLeft = 153194
        mmTop = 7408
        mmWidth = 15346
        BandType = 8
      end
      object ppDBCalc28: TppDBCalc
        UserName = 'DBCalc28'
        DataField = 'InsouranceEmployerPrice'
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
        mmHeight = 5821
        mmLeft = 49213
        mmTop = 794
        mmWidth = 14023
        BandType = 8
      end
      object ppDBCalc29: TppDBCalc
        UserName = 'DBCalc29'
        DataField = 'InsouranceEmployeePrice'
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
        mmHeight = 5821
        mmLeft = 49213
        mmTop = 7408
        mmWidth = 14023
        BandType = 8
      end
      object ppDBCalc30: TppDBCalc
        UserName = 'DBCalc30'
        DataField = 'DecPrice4'
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
        mmHeight = 5821
        mmLeft = 63500
        mmTop = 794
        mmWidth = 14023
        BandType = 8
      end
      object ppDBCalc31: TppDBCalc
        UserName = 'DBCalc31'
        DataField = 'TaxPrice'
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
        mmHeight = 5821
        mmLeft = 63500
        mmTop = 7408
        mmWidth = 14023
        BandType = 8
      end
      object ppDBCalc32: TppDBCalc
        UserName = 'DBCalc32'
        DataField = 'SumWagePrice'
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
        mmHeight = 5821
        mmLeft = 122238
        mmTop = 7408
        mmWidth = 15346
        BandType = 8
      end
      object ppDBCalc33: TppDBCalc
        UserName = 'DBCalc33'
        DataField = 'OtherDec'
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
        mmHeight = 5821
        mmLeft = 122238
        mmTop = 794
        mmWidth = 15346
        BandType = 8
      end
      object ppDBCalc34: TppDBCalc
        UserName = 'DBCalc34'
        DataField = 'OtheremployerPrice'
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
        mmHeight = 5821
        mmLeft = 34925
        mmTop = 794
        mmWidth = 14023
        BandType = 8
      end
      object ppDBCalc35: TppDBCalc
        UserName = 'DBCalc35'
        DataField = 'OtherDec'
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
        mmHeight = 5821
        mmLeft = 20638
        mmTop = 794
        mmWidth = 14023
        BandType = 8
      end
      object ppDBCalc36: TppDBCalc
        UserName = 'DBCalc36'
        DataField = 'payment'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 1058
        mmTop = 2910
        mmWidth = 18785
        BandType = 8
      end
      object ppLine75: TppLine
        UserName = 'Line601'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 20373
        mmTop = 0
        mmWidth = 1588
        BandType = 8
      end
      object ppDBCalc37: TppDBCalc
        UserName = 'DBCalc37'
        DataField = 'OtherEmployeePrice'
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
        mmHeight = 5821
        mmLeft = 34925
        mmTop = 7408
        mmWidth = 14023
        BandType = 8
      end
      object ppDBCalc38: TppDBCalc
        UserName = 'DBCalc38'
        DataField = 'SumdecPrice'
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
        mmHeight = 5821
        mmLeft = 20902
        mmTop = 7408
        mmWidth = 14023
        BandType = 8
      end
      object ppLine76: TppLine
        UserName = 'Line76'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 34396
        mmTop = 529
        mmWidth = 1852
        BandType = 8
      end
      object ppLine77: TppLine
        UserName = 'Line77'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 48683
        mmTop = 529
        mmWidth = 1852
        BandType = 8
      end
      object ppRegion1: TppRegion
        UserName = 'Region1'
        Caption = 'Region1'
        mmHeight = 14552
        mmLeft = 0
        mmTop = 14552
        mmWidth = 284428
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppRecFooterLine: TppLine
          UserName = 'Line51'
          ParentWidth = True
          Position = lpBottom
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 0
          mmTop = 13758
          mmWidth = 284428
          BandType = 8
        end
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 30427
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape2'
        ParentWidth = True
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 14552
        mmLeft = 0
        mmTop = 0
        mmWidth = 284300
        BandType = 7
      end
      object ppLine60: TppLine
        UserName = 'Line60'
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 20902
        mmTop = 6615
        mmWidth = 262467
        BandType = 7
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = #1580#1605#1593' '#1603#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 267759
        mmTop = 0
        mmWidth = 15081
        BandType = 7
      end
      object ppLine13: TppLine
        UserName = 'Line5'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 63236
        mmTop = 0
        mmWidth = 1852
        BandType = 7
      end
      object ppLine15: TppLine
        UserName = 'Line22'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 77523
        mmTop = 0
        mmWidth = 1852
        BandType = 7
      end
      object ppLine42: TppLine
        UserName = 'Line43'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 91811
        mmTop = 0
        mmWidth = 1852
        BandType = 7
      end
      object ppLine43: TppLine
        UserName = 'Line44'
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 14023
        mmLeft = 106098
        mmTop = 0
        mmWidth = 1852
        BandType = 7
      end
      object ppLine44: TppLine
        UserName = 'Line45'
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 14023
        mmLeft = 121709
        mmTop = 0
        mmWidth = 1852
        BandType = 7
      end
      object ppLine46: TppLine
        UserName = 'Line46'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 137319
        mmTop = 0
        mmWidth = 1852
        BandType = 7
      end
      object ppLine47: TppLine
        UserName = 'Line47'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 152929
        mmTop = 0
        mmWidth = 1852
        BandType = 7
      end
      object ppLine48: TppLine
        UserName = 'Line48'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 168540
        mmTop = 0
        mmWidth = 1852
        BandType = 7
      end
      object ppLine49: TppLine
        UserName = 'Line49'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 184150
        mmTop = 0
        mmWidth = 1852
        BandType = 7
      end
      object ppLine53: TppLine
        UserName = 'Line701'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 199761
        mmTop = 0
        mmWidth = 1852
        BandType = 7
      end
      object ppLine54: TppLine
        UserName = 'Line54'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 215371
        mmTop = 0
        mmWidth = 1852
        BandType = 7
      end
      object ppLine55: TppLine
        UserName = 'Line55'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 230982
        mmTop = 0
        mmWidth = 1852
        BandType = 7
      end
      object ppLine56: TppLine
        UserName = 'Line56'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 246857
        mmTop = 0
        mmWidth = 1852
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'WagePrice'
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
        mmHeight = 5821
        mmLeft = 231246
        mmTop = 529
        mmWidth = 15346
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'ExtraWagePrice1'
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
        mmHeight = 5821
        mmLeft = 215636
        mmTop = 529
        mmWidth = 15346
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc101'
        DataField = 'ExtraWagePrice8'
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
        mmHeight = 5821
        mmLeft = 215636
        mmTop = 7408
        mmWidth = 15346
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        DataField = 'ExtraWagePrice7'
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
        mmHeight = 5821
        mmLeft = 231246
        mmTop = 7408
        mmWidth = 15346
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        DataField = 'ExtraWagePrice11'
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
        mmHeight = 5821
        mmLeft = 168805
        mmTop = 7408
        mmWidth = 15346
        BandType = 7
      end
      object ppDBCalc39: TppDBCalc
        UserName = 'DBCalc39'
        DataField = 'ExtraWagePrice10'
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
        mmHeight = 5821
        mmLeft = 184415
        mmTop = 7408
        mmWidth = 15346
        BandType = 7
      end
      object ppDBCalc40: TppDBCalc
        UserName = 'DBCalc40'
        DataField = 'ExtraWagePrice9'
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
        mmHeight = 5821
        mmLeft = 200025
        mmTop = 7408
        mmWidth = 15346
        BandType = 7
      end
      object ppDBCalc41: TppDBCalc
        UserName = 'DBCalc41'
        DataField = 'ExtraWagePrice4'
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
        mmHeight = 5821
        mmLeft = 168805
        mmTop = 529
        mmWidth = 15346
        BandType = 7
      end
      object ppDBCalc42: TppDBCalc
        UserName = 'DBCalc42'
        DataField = 'ExtraWagePrice3'
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
        mmHeight = 5821
        mmLeft = 184415
        mmTop = 529
        mmWidth = 15346
        BandType = 7
      end
      object ppDBCalc43: TppDBCalc
        UserName = 'DBCalc43'
        DataField = 'ExtraWagePrice2'
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
        mmHeight = 5821
        mmLeft = 200025
        mmTop = 529
        mmWidth = 15346
        BandType = 7
      end
      object ppDBCalc44: TppDBCalc
        UserName = 'DBCalc44'
        DataField = 'DecPrice3'
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
        mmHeight = 5821
        mmLeft = 77788
        mmTop = 529
        mmWidth = 14023
        BandType = 7
      end
      object ppDBCalc45: TppDBCalc
        UserName = 'DBCalc45'
        DataField = 'DecPrice2'
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
        mmHeight = 5821
        mmLeft = 92075
        mmTop = 529
        mmWidth = 14023
        BandType = 7
      end
      object ppDBCalc46: TppDBCalc
        UserName = 'DBCalc201'
        DataField = 'DecPrice7'
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
        mmHeight = 5821
        mmLeft = 77788
        mmTop = 7408
        mmWidth = 14023
        BandType = 7
      end
      object ppDBCalc47: TppDBCalc
        UserName = 'DBCalc47'
        DataField = 'DecPrice6'
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
        mmHeight = 5821
        mmLeft = 92075
        mmTop = 7408
        mmWidth = 14023
        BandType = 7
      end
      object ppDBCalc48: TppDBCalc
        UserName = 'DBCalc48'
        DataField = 'DecPrice1'
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
        mmHeight = 5821
        mmLeft = 106363
        mmTop = 529
        mmWidth = 15346
        BandType = 7
      end
      object ppDBCalc49: TppDBCalc
        UserName = 'DBCalc49'
        DataField = 'ExtraWagePrice6'
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
        mmHeight = 5821
        mmLeft = 137584
        mmTop = 529
        mmWidth = 15346
        BandType = 7
      end
      object ppDBCalc50: TppDBCalc
        UserName = 'DBCalc50'
        DataField = 'ExtraWagePrice5'
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
        mmHeight = 5821
        mmLeft = 153194
        mmTop = 529
        mmWidth = 15346
        BandType = 7
      end
      object ppDBCalc51: TppDBCalc
        UserName = 'DBCalc51'
        DataField = 'DecPrice5'
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
        mmHeight = 5821
        mmLeft = 106363
        mmTop = 7408
        mmWidth = 15346
        BandType = 7
      end
      object ppDBCalc52: TppDBCalc
        UserName = 'DBCalc52'
        DataField = 'ExtraWagePrice13'
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
        mmHeight = 5821
        mmLeft = 137584
        mmTop = 7408
        mmWidth = 15346
        BandType = 7
      end
      object ppDBCalc53: TppDBCalc
        UserName = 'DBCalc53'
        DataField = 'ExtraWagePrice12'
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
        mmHeight = 5821
        mmLeft = 153194
        mmTop = 7408
        mmWidth = 15346
        BandType = 7
      end
      object ppDBCalc54: TppDBCalc
        UserName = 'DBCalc54'
        DataField = 'InsouranceEmployerPrice'
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
        mmHeight = 5821
        mmLeft = 49213
        mmTop = 529
        mmWidth = 14023
        BandType = 7
      end
      object ppDBCalc55: TppDBCalc
        UserName = 'DBCalc55'
        DataField = 'InsouranceEmployeePrice'
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
        mmHeight = 5821
        mmLeft = 49213
        mmTop = 7408
        mmWidth = 14023
        BandType = 7
      end
      object ppDBCalc56: TppDBCalc
        UserName = 'DBCalc301'
        DataField = 'DecPrice4'
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
        mmHeight = 5821
        mmLeft = 63500
        mmTop = 529
        mmWidth = 14023
        BandType = 7
      end
      object ppDBCalc57: TppDBCalc
        UserName = 'DBCalc57'
        DataField = 'TaxPrice'
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
        mmHeight = 5821
        mmLeft = 63500
        mmTop = 7408
        mmWidth = 14023
        BandType = 7
      end
      object ppDBCalc58: TppDBCalc
        UserName = 'DBCalc58'
        DataField = 'SumWagePrice'
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
        mmHeight = 5821
        mmLeft = 122238
        mmTop = 7408
        mmWidth = 15346
        BandType = 7
      end
      object ppDBCalc59: TppDBCalc
        UserName = 'DBCalc59'
        DataField = 'OtherDec'
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
        mmHeight = 5821
        mmLeft = 122238
        mmTop = 529
        mmWidth = 15346
        BandType = 7
      end
      object ppDBCalc60: TppDBCalc
        UserName = 'DBCalc60'
        DataField = 'OtheremployerPrice'
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
        mmHeight = 5821
        mmLeft = 34925
        mmTop = 529
        mmWidth = 14023
        BandType = 7
      end
      object ppLine57: TppLine
        UserName = 'Line57'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 48683
        mmTop = 265
        mmWidth = 1852
        BandType = 7
      end
      object ppDBCalc61: TppDBCalc
        UserName = 'DBCalc61'
        DataField = 'OtherDec'
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
        mmHeight = 5821
        mmLeft = 20638
        mmTop = 529
        mmWidth = 14023
        BandType = 7
      end
      object ppDBCalc62: TppDBCalc
        UserName = 'DBCalc62'
        DataField = 'OtherEmployeePrice'
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
        mmHeight = 5821
        mmLeft = 34925
        mmTop = 7408
        mmWidth = 14023
        BandType = 7
      end
      object ppLine58: TppLine
        UserName = 'Line58'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 34396
        mmTop = 265
        mmWidth = 1852
        BandType = 7
      end
      object ppLine59: TppLine
        UserName = 'Line59'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 20373
        mmTop = 0
        mmWidth = 1852
        BandType = 7
      end
      object ppDBCalc63: TppDBCalc
        UserName = 'DBCalc63'
        DataField = 'payment'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 794
        mmTop = 3704
        mmWidth = 18785
        BandType = 7
      end
      object ppDBCalc64: TppDBCalc
        UserName = 'DBCalc64'
        DataField = 'SumdecPrice'
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
        mmHeight = 5821
        mmLeft = 20638
        mmTop = 7408
        mmWidth = 14023
        BandType = 7
      end
      object ppRegion2: TppRegion
        UserName = 'Region2'
        Caption = 'Region2'
        mmHeight = 15875
        mmLeft = 0
        mmTop = 14552
        mmWidth = 284428
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppRecFooterLine2: TppLine
          UserName = 'Line31'
          ParentWidth = True
          Position = lpBottom
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 0
          mmTop = 13758
          mmWidth = 284428
          BandType = 7
        end
      end
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {00}
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcSalary
    UserName = 'DBPipeline1'
    Left = 616
    Top = 189
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'InfoID'
      FieldName = 'InfoID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'Name_L1'
      FieldName = 'Name_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'WagePrice'
      FieldName = 'WagePrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'ExtraWagePrice1'
      FieldName = 'ExtraWagePrice1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'ExtraWagePrice2'
      FieldName = 'ExtraWagePrice2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'ExtraWagePrice3'
      FieldName = 'ExtraWagePrice3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'ExtraWagePrice4'
      FieldName = 'ExtraWagePrice4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'ExtraWagePrice5'
      FieldName = 'ExtraWagePrice5'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'ExtraWagePrice6'
      FieldName = 'ExtraWagePrice6'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'ExtraWagePrice7'
      FieldName = 'ExtraWagePrice7'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'ExtraWagePrice8'
      FieldName = 'ExtraWagePrice8'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'ExtraWagePrice9'
      FieldName = 'ExtraWagePrice9'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'ExtraWagePrice10'
      FieldName = 'ExtraWagePrice10'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'ExtraWagePrice11'
      FieldName = 'ExtraWagePrice11'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'ExtraWagePrice12'
      FieldName = 'ExtraWagePrice12'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'ExtraWagePrice13'
      FieldName = 'ExtraWagePrice13'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'OtherExtraWagePrice'
      FieldName = 'OtherExtraWagePrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'SumWagePrice'
      FieldName = 'SumWagePrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'DecPrice1'
      FieldName = 'DecPrice1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'DecPrice2'
      FieldName = 'DecPrice2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'DecPrice3'
      FieldName = 'DecPrice3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = 'DecPrice4'
      FieldName = 'DecPrice4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = 'DecPrice5'
      FieldName = 'DecPrice5'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField24: TppField
      FieldAlias = 'DecPrice6'
      FieldName = 'DecPrice6'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField25: TppField
      FieldAlias = 'DecPrice7'
      FieldName = 'DecPrice7'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField26: TppField
      FieldAlias = 'InsouranceEmployerPrice'
      FieldName = 'InsouranceEmployerPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField27: TppField
      FieldAlias = 'InsouranceEmployeePrice'
      FieldName = 'InsouranceEmployeePrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField28: TppField
      FieldAlias = 'OtheremployerPrice'
      FieldName = 'OtheremployerPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField29: TppField
      FieldAlias = 'OtherEmployeePrice'
      FieldName = 'OtherEmployeePrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField30: TppField
      FieldAlias = 'TaxPrice'
      FieldName = 'TaxPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField31: TppField
      FieldAlias = 'OtherDec'
      FieldName = 'OtherDec'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField32: TppField
      FieldAlias = 'SumdecPrice'
      FieldName = 'SumdecPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField33: TppField
      FieldAlias = 'payment'
      FieldName = 'payment'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
  end
end

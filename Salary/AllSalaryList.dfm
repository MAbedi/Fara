inherited AllSalaryListF: TAllSalaryListF
  Top = 142
  Caption = '5-'#1604#1610#1587#1578' '#1603#1604#1610' '#1581#1602#1608#1602' '#1605#1586#1575#1610#1575' '#1576#1578#1601#1603#1610#1603' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610' '
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 1
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 166
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSearch_
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 2
    end
    object BitBtn5: TBitBtn
      AlignWithMargins = True
      Left = 85
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 3
    end
    object BitBtn7: TBitBtn
      AlignWithMargins = True
      Left = 707
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 4
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 626
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actShow
      Align = alRight
      Caption = #1585#1610#1586' '#1575#1591#1604#1575#1593#1575#1578
      TabOrder = 5
    end
    object DBNavigator2: TDBNavigator
      AlignWithMargins = True
      Left = 409
      Top = 4
      Width = 130
      Height = 33
      DataSource = srcSalary
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alClient
      Flat = True
      TabOrder = 6
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 328
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actChart
      Align = alLeft
      Caption = #1606#1605#1608#1583#1575#1585
      TabOrder = 7
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 545
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actPrint
      Align = alRight
      Caption = #1670#1575#1662
      TabOrder = 8
    end
  end
  inherited Panel2: TPanel
    inherited lblCaption: TLabel
      Height = 16
    end
  end
  inherited Panel3: TPanel
    object DBGrid1: TCedarDbgrid
      Left = 2
      Top = 2
      Width = 782
      Height = 419
      Align = alClient
      Color = clCream
      DataSource = srcSalary
      DynProps = <>
      Flat = True
      FooterParams.FillStyle = cfstSolidEh
      FooterParams.Font.Charset = DEFAULT_CHARSET
      FooterParams.Font.Color = clWindowText
      FooterParams.Font.Height = -12
      FooterParams.Font.Name = 'Tahoma'
      FooterParams.Font.Style = [fsBold]
      FooterParams.ParentFont = False
      FooterParams.VertLines = False
      GridLineParams.VertEmptySpaceStyle = dessNonEh
      HorzScrollBar.ExtraPanel.Visible = True
      IndicatorTitle.ShowDropDownSign = True
      IndicatorTitle.TitleButton = True
      OddRowColor = clWhite
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      RowHeight = 18
      SearchPanel.Enabled = True
      SortLocal = True
      TabOrder = 0
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_Row'
          Footers = <>
          Width = 25
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'InfoID'
          Footers = <>
          Width = 19
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Name_L1'
          Footers = <>
          Width = 31
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'WagePrice'
          Footers = <>
          Width = 88
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ExtraWagePrice1'
          Footers = <>
          Width = 92
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ExtraWagePrice2'
          Footers = <>
          Width = 88
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ExtraWagePrice3'
          Footers = <>
          Width = 87
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ExtraWagePrice4'
          Footers = <>
          Width = 89
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ExtraWagePrice5'
          Footers = <>
          Width = 88
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ExtraWagePrice6'
          Footers = <>
          Width = 90
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ExtraWagePrice7'
          Footers = <>
          Width = 89
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ExtraWagePrice8'
          Footers = <>
          Width = 89
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ExtraWagePrice9'
          Footers = <>
          Width = 90
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ExtraWagePrice10'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ExtraWagePrice11'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ExtraWagePrice12'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ExtraWagePrice13'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ExtraWagePrice14'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ExtraWagePrice15'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ExtraWagePrice16'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ExtraWagePrice17'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ExtraWagePrice18'
          Footers = <>
          Width = 98
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ExtraWagePrice19'
          Footers = <>
          Width = 96
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ExtraWagePrice20'
          Footers = <>
          Width = 96
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ExtraWagePrice21'
          Footers = <>
          Width = 96
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ExtraWagePrice22'
          Footers = <>
          Width = 96
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ExtraWagePrice23'
          Footers = <>
          Width = 96
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ExtraWagePrice24'
          Footers = <>
          Width = 99
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ExtraWagePrice25'
          Footers = <>
          Width = 95
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ExtraWagePrice26'
          Footers = <>
          Width = 98
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ExtraWagePrice27'
          Footers = <>
          Width = 96
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ExtraWagePrice28'
          Footers = <>
          Width = 96
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ExtraWagePrice29'
          Footers = <>
          Width = 95
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'OtherExtraWagePrice'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'SumWagePrice'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DecPrice1'
          Footers = <>
          Width = 54
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DecPrice2'
          Footers = <>
          Width = 57
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DecPrice3'
          Footers = <>
          Width = 54
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DecPrice4'
          Footers = <>
          Width = 55
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DecPrice5'
          Footers = <>
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DecPrice6'
          Footers = <>
          Width = 54
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DecPrice7'
          Footers = <>
          Width = 55
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DecPrice8'
          Footers = <>
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DecPrice9'
          Footers = <>
          Width = 53
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DecPrice10'
          Footers = <>
          Width = 60
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DecPrice11'
          Footers = <>
          Width = 59
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DecPrice12'
          Footers = <>
          Width = 60
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DecPrice13'
          Footers = <>
          Width = 61
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DecPrice14'
          Footers = <>
          Width = 74
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DecPrice15'
          Footers = <>
          Width = 63
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DecPrice16'
          Footers = <>
          Width = 63
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DecPrice17'
          Footers = <>
          Width = 61
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DecPrice18'
          Footers = <>
          Width = 61
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DecPrice19'
          Footers = <>
          Width = 61
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DecPrice20'
          Footers = <>
          Width = 60
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DecPrice21'
          Footers = <>
          Width = 59
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DecPrice22'
          Footers = <>
          Width = 62
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DecPrice23'
          Footers = <>
          Width = 63
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DecPrice24'
          Footers = <>
          Width = 62
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DecPrice25'
          Footers = <>
          Width = 58
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DecPrice26'
          Footers = <>
          Width = 61
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DecPrice27'
          Footers = <>
          Width = 60
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DecPrice28'
          Footers = <>
          Width = 61
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DecPrice29'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'InsouranceEmployerPrice'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'InsouranceEmployeePrice'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'InsouranceEmployerPrice2'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'InsouranceEmployeePrice2'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'OtheremployerPrice'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'OtherEmployeePrice'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TaxPrice'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'OtherDec'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'SumdecPrice'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'payment'
          Footers = <>
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
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
  object srcSalary: TDataSource
    DataSet = qrySalary
    Left = 232
    Top = 144
  end
  object qrySalary: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = qrySalaryCalcFields
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
      'FROM Pay.FormTypes INNER JOIN'
      
        'Pay.FormsInfo FormsInfo_1 ON FormTypes.FormType = FormsInfo_1.Fo' +
        'rmType RIGHT OUTER JOIN'
      
        'Pay.FixedCalculated ON FormsInfo_1.FormInfoID = FixedCalculated.' +
        'SalaryID LEFT OUTER JOIN'
      
        'Pay.FormsInfo FormsInfo_2 ON FixedCalculated.OfficeCode = FormsI' +
        'nfo_2.FormInfoID'
      ''
      'Group By FormsInfo_2.InfoID, FormsInfo_2.InfoName_L1')
    Left = 128
    Top = 160
    object qrySalary_Row: TIntegerField
      DisplayLabel = #1585#1583#1610#1601
      FieldKind = fkCalculated
      FieldName = '_Row'
      Calculated = True
    end
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
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'ArchiveID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'LabelIDFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'LabelIDTo'
        Attributes = [paSigned]
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
        Value = 2
      end>
    SQL.Strings = (
      
        'SELECT      FormsInfo.InfoName_L1, FormsInfo.InfoID, FormTypes.F' +
        'ormType, FixedCalculated.ArchiveID'
      ', FormsInfo.FormInfoID'
      'FROM         Pay.FormsInfo INNER JOIN'
      
        '                      Pay.FormTypes ON FormsInfo.FormType = Form' +
        'Types.FormType INNER JOIN'
      
        '                      Pay.FixedCalculated ON FormsInfo.FormInfoI' +
        'D = FixedCalculated.SalaryID'
      'WHERE     '
      ' (FormTypes.SalaryKind IN (3, 13)) '
      'AND  FixedCalculated.ArchiveID=:ArchiveID '
      
        'And (FixedCalculated.LabelID between :LabelIDFrom  and :LabelIDT' +
        'o )'
      'and FixedCalculated.Mounth=:Mounth'
      
        'GROUP BY FormsInfo.InfoID, FormsInfo.InfoName_L1, FormTypes.Form' +
        'Type, FixedCalculated.ArchiveID, FixedCalculated.Mounth, '
      
        '                      FixedCalculated.SalaryID, FormsInfo.FormIn' +
        'foID')
    Left = 560
    Top = 8
  end
  object qryDec: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'ArchiveID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'LabelIDFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'LabelIDTo'
        Attributes = [paSigned]
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
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT    FormsInfo.InfoName_L1, FormsInfo.InfoID, FormTypes.For' +
        'mType, FixedCalculated.ArchiveID'
      ', FormsInfo.FormInfoID'
      'FROM         Pay.FormsInfo INNER JOIN'
      
        '                      Pay.FormTypes ON FormsInfo.FormType = Form' +
        'Types.FormType INNER JOIN'
      
        '                      Pay.FixedCalculated ON FormsInfo.FormInfoI' +
        'D = FixedCalculated.SalaryID'
      ''
      'WHERE     '
      ' (FormTypes.SalaryKind IN (9, 12)) '
      'AND  FixedCalculated.ArchiveID=:ArchiveID '
      
        'And (FixedCalculated.LabelID between :LabelIDFrom  and :LabelIDT' +
        'o )'
      'and FixedCalculated.Mounth=:Mounth'
      
        'GROUP BY FormsInfo.InfoID, FormsInfo.InfoName_L1, FormTypes.Form' +
        'Type, FixedCalculated.ArchiveID, FixedCalculated.Mounth, '
      
        '                      FixedCalculated.SalaryID, FormsInfo.FormIn' +
        'foID'
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
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
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
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RefreshTokenLifeSpan = 365
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RefreshTokenLifeSpan = 365
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    EmailSettings.ConnectionSettings.ConnectionStatusInfo = [csiStatusBar]
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PDFSettings.Layers = True
    PDFSettings.Outline = True
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.DropBoxSettings.SharedResources = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.GoogleDriveSettings.SharedResources = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    CloudDriveSettings.OneDriveSettings.SharedResources = True
    Left = 688
    Top = 192
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 34396
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        ParentWidth = True
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 15081
        mmLeft = 0
        mmTop = 19579
        mmWidth = 284300
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 248180
        mmTop = 27517
        mmWidth = 34925
        BandType = 0
        LayerName = Foreground
      end
      object w1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'w1'
        Save = True
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1610#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4064
        mmLeft = 231246
        mmTop = 21431
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object w2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'w2'
        Save = True
        AutoSize = False
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4064
        mmLeft = 215636
        mmTop = 21431
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object w4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'w4'
        AutoSize = False
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4064
        mmLeft = 184415
        mmTop = 21431
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object w3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'w3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 200025
        mmTop = 21431
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object w11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'w11'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 184415
        mmTop = 27252
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object w10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'w10'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 200025
        mmTop = 27252
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object w9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'w9'
        Save = True
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 215636
        mmTop = 27252
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object w8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'w8'
        Save = True
        AutoSize = False
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4064
        mmLeft = 231246
        mmTop = 27252
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel43: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label25'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 247386
        mmTop = 21167
        mmWidth = 35983
        BandType = 0
        LayerName = Foreground
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 20373
        mmTop = 26194
        mmWidth = 263526
        BandType = 0
        LayerName = Foreground
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 246857
        mmTop = 19579
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine18: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 230982
        mmTop = 19579
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine19: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 215371
        mmTop = 19579
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine20: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 199761
        mmTop = 19579
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine21: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 184150
        mmTop = 19579
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine22: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line101'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 168540
        mmTop = 19579
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine23: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 152929
        mmTop = 19579
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        OnGetText = ppSystemVariable1GetText
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppLabel45: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        OnGetText = ppLabel45GetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 14
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7408
        mmLeft = 111390
        mmTop = 3175
        mmWidth = 61383
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel46: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label36'
        OnGetText = ppLabel46GetText
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1670#1575#1662
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6435
        mmLeft = 2381
        mmTop = 2381
        mmWidth = 11896
        BandType = 0
        LayerName = Foreground
      end
      object w5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'w5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 168805
        mmTop = 21431
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object w12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'w12'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 168805
        mmTop = 27252
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object w6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'w6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 153194
        mmTop = 21431
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object w14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'w14'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 137584
        mmTop = 27252
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object w7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'w7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 137584
        mmTop = 21431
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object w13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'w13'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 153194
        mmTop = 27252
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object ppLine34: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line34'
        Border.mmPadding = 0
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 14023
        mmLeft = 106098
        mmTop = 19579
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine35: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line103'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 91811
        mmTop = 19579
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine36: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line36'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 77523
        mmTop = 19579
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine37: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line37'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 63236
        mmTop = 19579
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine33: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line33'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 137319
        mmTop = 19579
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine38: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 14023
        mmLeft = 121709
        mmTop = 19844
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label29'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1587#1575#1610#1585' '#1605#1586#1575#1610#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 121973
        mmTop = 21431
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1581#1602#1608#1602
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4826
        mmLeft = 121973
        mmTop = 27252
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        OnGetText = ppLabel34GetText
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578' '#1603#1604#1610' '#1581#1602#1608#1602' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6604
        mmLeft = 257778
        mmTop = 10319
        mmWidth = 24003
        BandType = 0
        LayerName = Foreground
      end
      object d1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        AutoSize = False
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 106363
        mmTop = 21431
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object d5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label20'
        AutoSize = False
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 106363
        mmTop = 26988
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object d2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4826
        mmLeft = 92075
        mmTop = 21167
        mmWidth = 14000
        BandType = 0
        LayerName = Foreground
      end
      object d6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4826
        mmLeft = 92075
        mmTop = 26988
        mmWidth = 14000
        BandType = 0
        LayerName = Foreground
      end
      object d3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4826
        mmLeft = 77788
        mmTop = 21167
        mmWidth = 14000
        BandType = 0
        LayerName = Foreground
      end
      object d7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4826
        mmLeft = 77788
        mmTop = 26988
        mmWidth = 14000
        BandType = 0
        LayerName = Foreground
      end
      object d8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'd8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' '#1605#1575#1604#1610#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4826
        mmLeft = 63500
        mmTop = 26988
        mmWidth = 14000
        BandType = 0
        LayerName = Foreground
      end
      object d4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4826
        mmLeft = 63500
        mmTop = 21167
        mmWidth = 14000
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' '#1576#1610#1605#1607'  '#1603#1575#1585#1601#1585#1605#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4826
        mmLeft = 49213
        mmTop = 21167
        mmWidth = 14000
        BandType = 0
        LayerName = Foreground
      end
      object d9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'd101'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' '#1576#1610#1605#1607' '#1603#1575#1585#1605#1606#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4826
        mmLeft = 49213
        mmTop = 26988
        mmWidth = 14000
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label19'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' '#1576#1610#1605#1607'  '#1603#1575#1585#1601#1585#1605#1575'2'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4826
        mmLeft = 34925
        mmTop = 21167
        mmWidth = 14000
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label21'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' '#1576#1610#1605#1607' '#1603#1575#1585#1605#1606#1583'2'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 34925
        mmTop = 26988
        mmWidth = 14288
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 34660
        mmTop = 19579
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line17'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 48948
        mmTop = 19579
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label22'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1587#1575#1610#1585' '#1603#1587#1608#1585#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 20638
        mmTop = 21167
        mmWidth = 14000
        BandType = 0
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line18'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 20373
        mmTop = 19579
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label23'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1603#1587#1608#1585#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 20638
        mmTop = 26988
        mmWidth = 14023
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label24'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1582#1575#1604#1589
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 0
        mmTop = 21167
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label26'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1662#1585#1583#1575#1582#1578#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 0
        mmTop = 26723
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppLine39: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line40'
        Border.mmPadding = 0
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 0
        mmTop = 30956
        mmWidth = 284300
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand2: TppDetailBand
      Border.mmPadding = 0
      PrintCount = 12
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 10848
      mmPrintPosition = 0
      object ppLine45: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line16'
        Border.mmPadding = 0
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 0
        mmTop = 7144
        mmWidth = 284300
        BandType = 4
        LayerName = Foreground
      end
      object dw1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw1'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object dw2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw2'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object dw4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw4'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object dw3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw3'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object dw7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw7'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object dw6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw6'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object dw5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw5'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object dw8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw8'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object dw9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw9'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object dw11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw11'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object dw10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw10'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object dw14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw14'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object dw13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw13'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object dw12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw12'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Pen.Width = 2
        ParentHeight = True
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 10848
        mmLeft = 121709
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 137319
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 152929
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 168540
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line102'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 184150
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line15'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 199761
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line19'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 215371
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line20'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 230982
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line21'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 246857
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
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
        mmLeft = 254265
        mmTop = 0
        mmWidth = 29104
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppLine17: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line23'
        Border.mmPadding = 0
        Pen.Width = 2
        ParentHeight = True
        Position = lpRight
        Weight = 1.500000000000000000
        mmHeight = 10848
        mmLeft = 282840
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground
      end
      object ppLine24: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line24'
        Border.mmPadding = 0
        Pen.Width = 2
        ParentHeight = True
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 10848
        mmLeft = 0
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppLine25: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line25'
        Border.mmPadding = 0
        Pen.Width = 2
        ParentHeight = True
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 10848
        mmLeft = 106098
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object dd1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dd1'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object dd6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dd6'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppLine26: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line26'
        Border.mmPadding = 0
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 9790
        mmWidth = 284300
        BandType = 4
        LayerName = Foreground
      end
      object dd2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dd2'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object dd4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dd4'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object dd3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dd3'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object dd7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dd7'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object dd10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dd10'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object dd9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dd9'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object dd8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dd8'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppLine27: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line27'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 48948
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine28: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line28'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 63236
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine29: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line29'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 77523
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine30: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line30'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 91811
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object dd5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dd5'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppLine31: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line32'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 34660
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine32: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line35'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 20373
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dd101'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 29104
      mmPrintPosition = 0
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape3'
        ParentWidth = True
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 14552
        mmLeft = 0
        mmTop = 0
        mmWidth = 284300
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1603#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 268288
        mmTop = 0
        mmWidth = 15081
        BandType = 8
        LayerName = Foreground
      end
      object ppLine40: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line41'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 63236
        mmTop = 0
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
      object ppLine41: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line42'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 77523
        mmTop = 0
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
      object ppLine63: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line63'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 91811
        mmTop = 0
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
      object ppLine64: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line64'
        Border.mmPadding = 0
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 14023
        mmLeft = 106098
        mmTop = 0
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
      object ppLine65: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line65'
        Border.mmPadding = 0
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 14023
        mmLeft = 121709
        mmTop = 0
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
      object ppLine66: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line66'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 137319
        mmTop = 0
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
      object ppLine67: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line67'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 152929
        mmTop = 0
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
      object ppLine68: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line68'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 168540
        mmTop = 0
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
      object ppLine69: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line69'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 184150
        mmTop = 0
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
      object ppLine70: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line70'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 199761
        mmTop = 0
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
      object ppLine71: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line71'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 215371
        mmTop = 0
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
      object ppLine72: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line72'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 230982
        mmTop = 0
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
      object ppLine73: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line73'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 246857
        mmTop = 0
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
      object ppLine74: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line74'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 20638
        mmTop = 6615
        mmWidth = 262996
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc8: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc8'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc9: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc9'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc10: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc10'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc11: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc11'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc12: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc12'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc13: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc13'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc14: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col101'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc15: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc15'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc16: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc16'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc17: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc17'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc18: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc18'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc19: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc19'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc20: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc20'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc21: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc21'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc22: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = '_TaxInvolved3'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc23: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc23'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc24: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc24'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc25: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = '_InsInvolved1'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc26: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc26'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc27: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc27'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc28: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc28'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc29: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc29'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc30: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc30'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc31: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc31'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc32: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc32'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc33: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc33'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc34: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc34'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc35: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc35'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc36: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc36'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppLine75: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line601'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 20373
        mmTop = 0
        mmWidth = 1588
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc37: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc37'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc38: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc38'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppLine76: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line76'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 34396
        mmTop = 529
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
      object ppLine77: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line77'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 48683
        mmTop = 529
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
      object ppRegion1: TppRegion
        DesignLayer = ppDesignLayer1
        UserName = 'Region1'
        Caption = 'Region1'
        mmHeight = 14552
        mmLeft = 0
        mmTop = 14552
        mmWidth = 284428
        BandType = 8
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppRecFooterLine: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line51'
          Border.mmPadding = 0
          ParentWidth = True
          Position = lpBottom
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 0
          mmTop = 13758
          mmWidth = 284428
          BandType = 8
          LayerName = Foreground
        end
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 30427
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        ParentWidth = True
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 14552
        mmLeft = 0
        mmTop = 0
        mmWidth = 284300
        BandType = 7
        LayerName = Foreground
      end
      object ppLine60: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line60'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 20902
        mmTop = 6615
        mmWidth = 262467
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1603#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 267759
        mmTop = 0
        mmWidth = 15081
        BandType = 7
        LayerName = Foreground
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 63236
        mmTop = 0
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line22'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 77523
        mmTop = 0
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppLine42: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line43'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 91811
        mmTop = 0
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppLine43: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line44'
        Border.mmPadding = 0
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 14023
        mmLeft = 106098
        mmTop = 0
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppLine44: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line45'
        Border.mmPadding = 0
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 14023
        mmLeft = 121709
        mmTop = 0
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppLine46: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line46'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 137319
        mmTop = 0
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppLine47: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line47'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 152929
        mmTop = 0
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppLine48: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line48'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 168540
        mmTop = 0
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppLine49: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line49'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 184150
        mmTop = 0
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppLine53: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line701'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 199761
        mmTop = 0
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppLine54: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line54'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 215371
        mmTop = 0
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppLine55: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line55'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 230982
        mmTop = 0
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppLine56: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line56'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 246857
        mmTop = 0
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc4: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc101'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc5: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc5'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc6: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc6'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc39: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc39'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc40: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc40'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc41: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc41'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc42: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc42'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc43: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc43'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc44: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc44'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc45: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc45'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc46: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc201'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc47: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc47'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc48: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc48'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc49: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc49'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc50: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc50'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc51: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc51'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc52: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc52'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc53: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc53'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc54: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc54'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc55: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc55'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc56: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc301'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc57: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc57'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc58: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc58'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc59: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc59'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc60: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc60'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppLine57: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line57'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 48683
        mmTop = 265
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc61: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc61'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc62: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc62'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppLine58: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line58'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 34396
        mmTop = 265
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppLine59: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line59'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 20373
        mmTop = 0
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc63: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc63'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppDBCalc64: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc64'
        Border.mmPadding = 0
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
        LayerName = Foreground
      end
      object ppRegion2: TppRegion
        DesignLayer = ppDesignLayer1
        UserName = 'Region2'
        Caption = 'Region2'
        mmHeight = 15875
        mmLeft = 0
        mmTop = 14552
        mmWidth = 284428
        BandType = 7
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppRecFooterLine2: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line31'
          Border.mmPadding = 0
          ParentWidth = True
          Position = lpBottom
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 0
          mmTop = 13758
          mmWidth = 284428
          BandType = 7
          LayerName = Foreground
        end
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
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

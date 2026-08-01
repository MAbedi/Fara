inherited SalaryList_insurance2F: TSalaryList_insurance2F
  Left = 311
  Top = 79
  Caption = '6-'#1604#1610#1587#1578' '#1581#1602#1608#1602' 25 '#1587#1578#1608#1606#1610
  ClientWidth = 787
  ExplicitWidth = 795
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Width = 787
    ExplicitWidth = 787
    DesignSize = (
      787
      41)
    object Button1: TButton
      Left = 633
      Top = 8
      Width = 75
      Height = 25
      Action = actFish
      Anchors = [akTop, akRight, akBottom]
      TabOrder = 1
    end
    object DBNavigator2: TDBNavigator
      Left = 395
      Top = 8
      Width = 80
      Height = 25
      DataSource = srcSalary
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Anchors = [akLeft, akTop, akRight]
      Flat = True
      TabOrder = 2
    end
    object BitBtn4: TBitBtn
      Left = 237
      Top = 8
      Width = 75
      Height = 25
      Action = actSendtoExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 3
    end
    object BitBtn5: TBitBtn
      Left = 160
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
    end
    object BitBtn6: TBitBtn
      Left = 83
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 5
    end
    object BitBtn7: TBitBtn
      Left = 708
      Top = 8
      Width = 75
      Height = 25
      Action = actFilter
      Anchors = [akRight, akBottom]
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 6
    end
    object Button2: TButton
      Left = 558
      Top = 8
      Width = 75
      Height = 25
      Action = actFunctionShow
      Anchors = [akTop, akRight, akBottom]
      TabOrder = 7
    end
    object Button3: TButton
      Left = 481
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Anchors = [akTop, akRight, akBottom]
      TabOrder = 8
    end
    object BitBtn1: TBitBtn
      Left = 315
      Top = 8
      Width = 75
      Height = 25
      Action = actPrintVijeh
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
      TabOrder = 9
    end
  end
  inherited Panel2: TPanel
    Width = 787
    ExplicitWidth = 787
    DesignSize = (
      787
      53)
    inherited ImgTemplate: TImage
      Left = 749
      ExplicitLeft = 749
    end
    inherited lblCaption: TLabel
      Left = 594
      Width = 147
      Caption = #1604#1610#1587#1578' '#1581#1602#1608#1602' 25 '#1587#1578#1608#1606#1610
      ExplicitLeft = 594
      ExplicitWidth = 147
    end
    object CmbArchiveID: TComboBox
      Left = 16
      Top = 8
      Width = 126
      Height = 21
      Color = 13431799
      TabOrder = 0
      Text = 'CmbArchiveID'
      OnChange = CmbArchiveIDChange
    end
    object CheckBox1: TCheckBox
      Left = 16
      Top = 32
      Width = 127
      Height = 17
      Alignment = taLeftJustify
      Caption = #1606#1605#1575#1740#1588' '#1580#1605#1593' '#1587#1578#1608#1606#1607#1575
      TabOrder = 1
      OnClick = CheckBox1Click
    end
  end
  inherited Panel3: TPanel
    Width = 787
    ExplicitWidth = 787
    object ToolBar1: TToolBar
      Left = 2
      Top = 2
      Width = 783
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
        Top = 0
        Caption = #1601#1585#1608#1585#1583#1610#1606
        Grouped = True
        ImageIndex = 0
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton2: TToolButton
        Tag = 2
        Left = 54
        Top = 0
        Caption = #1575#1585#1583#1610#1576#1607#1588#1578
        Grouped = True
        ImageIndex = 1
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton3: TToolButton
        Tag = 3
        Left = 108
        Top = 0
        Caption = #1582#1585#1583#1575#1583
        Grouped = True
        ImageIndex = 2
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton4: TToolButton
        Tag = 4
        Left = 162
        Top = 0
        Caption = #1578#1610#1585
        Grouped = True
        ImageIndex = 3
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton5: TToolButton
        Tag = 5
        Left = 216
        Top = 0
        Caption = #1605#1585#1583#1575#1583
        Grouped = True
        ImageIndex = 4
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton6: TToolButton
        Tag = 6
        Left = 270
        Top = 0
        Caption = #1588#1607#1585#1610#1608#1585
        Grouped = True
        ImageIndex = 5
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton7: TToolButton
        Tag = 7
        Left = 324
        Top = 0
        Caption = #1605#1607#1585
        Grouped = True
        ImageIndex = 6
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton8: TToolButton
        Tag = 8
        Left = 378
        Top = 0
        Caption = #1570#1576#1575#1606
        Grouped = True
        ImageIndex = 7
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton9: TToolButton
        Tag = 9
        Left = 432
        Top = 0
        Caption = #1570#1584#1585
        Grouped = True
        ImageIndex = 8
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton10: TToolButton
        Tag = 10
        Left = 486
        Top = 0
        Caption = #1583#1610
        Grouped = True
        ImageIndex = 9
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton11: TToolButton
        Tag = 11
        Left = 540
        Top = 0
        Caption = #1576#1607#1605#1606
        Grouped = True
        ImageIndex = 10
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton12: TToolButton
        Tag = 12
        Left = 594
        Top = 0
        Caption = #1575#1587#1601#1606#1583
        Grouped = True
        ImageIndex = 11
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
    end
    object DBGrid1: TCedarDbgrid
      Left = 2
      Top = 38
      Width = 783
      Height = 383
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
      HorzScrollBar.ExtraPanel.NavigatorButtons = [nbFirstEh, nbPriorEh, nbNextEh, nbLastEh, nbRefreshEh]
      HorzScrollBar.ExtraPanel.Visible = True
      IndicatorTitle.ShowDropDownSign = True
      IndicatorTitle.TitleButton = True
      OddRowColor = clWhite
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      RowHeight = 18
      SearchPanel.Enabled = True
      SortLocal = True
      TabOrder = 0
      OnKeyPress = DBGrid1KeyPress
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_Row'
          Footers = <>
          Width = 28
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PersonelNO'
          Footers = <>
          Width = 53
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Name'
          Footers = <>
          Width = 28
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'LastName'
          Footers = <>
          Width = 66
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PersonName'
          Footers = <>
          Width = 54
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'fatherName_L1'
          Footers = <>
          Width = 37
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'EmployTypeName'
          Footers = <>
          Width = 96
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'IDNumber'
          Footers = <>
          Width = 39
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'InsuranceNumber'
          Footers = <>
          Width = 61
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_Amount1'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_Amount2'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_Amount3'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_Amount4'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'WageDay'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Wage1'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Wage2'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Wage3'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Wage4'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Wage5'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Wage6'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Wage7'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Wage8'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Wage9'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Wage10'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Wage11'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Wage12'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Wage13'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Wage14'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Wage15'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Wage16'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Wage17'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Wage18'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Wage19'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Wage20'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Wage21'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Wage22'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Wage23'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Wage24'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Wage25'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'WageOther'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'SumWage'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'sum23Dec'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'sum7Dec'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ContainInsourance'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ContainTax'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TaxValue'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Dec1'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Dec2'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Dec3'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Dec4'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Dec5'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Dec6'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Dec7'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Dec8'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Dec9'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Dec10'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Dec11'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Dec12'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Dec13'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Dec14'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Dec15'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Dec16'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Dec17'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'SumDec'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PayableSalary'
          Footers = <>
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  inherited ActionList: TActionList
    Left = 224
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
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
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actFish: TAction
      Caption = #1601#1610#1588' '#1581#1602#1608#1602
      OnExecute = actFishExecute
    end
    object actFunctionShow: TAction
      Caption = #1606#1605#1575#1610#1588' '#1603#1575#1585#1603#1585#1583
      OnExecute = actFunctionShowExecute
    end
    object actPrintVijeh: TAction
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
      OnExecute = actPrintVijehExecute
    end
    object actSMS: TAction
      Caption = #1575#1585#1587#1575#1604' '#1662#1610#1575#1605#1603
      OnExecute = actSMSExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 304
    Top = 241
  end
  object qrysalary: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = qrysalaryCalcFields
    CommandTimeout = 90
    Parameters = <>
    Left = 128
    Top = 152
    object qrysalaryPersonelNO: TIntegerField
      Tag = 3
      DisplayLabel = #1588' '#1662#1585#1587#1606#1604
      DisplayWidth = 14
      FieldName = 'PersonelNO'
    end
    object qrysalaryName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605
      FieldName = 'Name'
      Size = 25
    end
    object qrysalaryLastName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1740
      FieldName = 'LastName'
      Size = 30
    end
    object qrysalaryPersonName: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1662#1585#1587#1606#1604
      DisplayWidth = 22
      FieldName = 'PersonName'
      Size = 56
    end
    object qrysalaryIDNumber: TStringField
      Tag = 3
      DisplayLabel = #1588' '#1588
      FieldName = 'IDNumber'
      Size = 12
    end
    object qrysalaryInsuranceNumber: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1576#1610#1605#1607
      FieldName = 'InsuranceNumber'
      Size = 18
    end
    object qrysalary_Amount4: TIntegerField
      DisplayLabel = #1605'.'#1705#1575#1585#1705#1585#1583'4'
      FieldKind = fkLookup
      FieldName = '_Amount4'
      LookupDataSet = qryFunctions
      LookupKeyFields = 'PersonelNo'
      LookupResultField = 'FunctionDay'
      KeyFields = 'PersonelNO'
      LookupCache = True
      Lookup = True
    end
    object qrysalaryWageDay: TBCDField
      Tag = 3
      DisplayLabel = #1581#1602#1608#1602' '#1585#1608#1586#1575#1606#1607
      FieldName = 'WageDay'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalaryWage1: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Wage1'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryWage2: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Wage2'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryWage3: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Wage3'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryWage4: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Wage4'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryWage5: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Wage5'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 19
    end
    object qrysalaryWage6: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Wage6'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryWage7: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Wage7'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryWage8: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Wage8'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryWage9: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Wage9'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryWage10: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Wage10'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryWage11: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Wage11'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryWage12: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Wage12'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryWage13: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Wage13'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryWage14: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Wage14'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryWage15: TBCDField
      DisplayLabel = '...'
      FieldName = 'Wage15'
      currency = True
      Precision = 19
    end
    object qrysalaryWage16: TBCDField
      DisplayLabel = '...'
      FieldName = 'Wage16'
      currency = True
      Precision = 19
    end
    object qrysalaryWage17: TBCDField
      DisplayLabel = '...'
      FieldName = 'Wage17'
      currency = True
      Precision = 19
    end
    object qrysalaryWage18: TBCDField
      DisplayLabel = '...'
      FieldName = 'Wage18'
      currency = True
      Precision = 19
    end
    object qrysalaryWage19: TBCDField
      DisplayLabel = '...'
      FieldName = 'Wage19'
      currency = True
      Precision = 19
    end
    object qrysalaryWage20: TBCDField
      DisplayLabel = '...'
      FieldName = 'Wage20'
      currency = True
      Precision = 19
    end
    object qrysalaryWage21: TBCDField
      DisplayLabel = '...'
      FieldName = 'Wage21'
      currency = True
      Precision = 19
    end
    object qrysalaryWage22: TBCDField
      DisplayLabel = '...'
      FieldName = 'Wage22'
      currency = True
      Precision = 19
    end
    object qrysalaryWage23: TBCDField
      DisplayLabel = '...'
      FieldName = 'Wage23'
      currency = True
      Precision = 19
    end
    object qrysalaryWage24: TBCDField
      DisplayLabel = '...'
      FieldName = 'Wage24'
      currency = True
      Precision = 19
    end
    object qrysalaryWage25: TBCDField
      DisplayLabel = '...'
      FieldName = 'Wage25'
      currency = True
      Precision = 19
    end
    object qrysalaryWageOther: TBCDField
      DisplayLabel = #1587#1575#1610#1585' '#1605#1586#1575#1610#1575
      FieldName = 'WageOther'
      currency = True
      Precision = 19
    end
    object qrysalarySumWage: TBCDField
      Tag = 3
      DisplayLabel = #1580#1605#1593' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1610#1575
      DisplayWidth = 12
      FieldName = 'SumWage'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalarysum23Dec: TBCDField
      DisplayLabel = #1576#1610#1605#1607' '#1603#1575#1585#1601#1585#1605#1575
      FieldName = 'sum23Dec'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalarysum7Dec: TBCDField
      DisplayLabel = #1576#1610#1605#1607' '
      FieldName = 'sum7Dec'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalaryContainInsourance: TBCDField
      Tag = 3
      DisplayLabel = #1605#1588#1605#1608#1604' '#1576#1610#1605#1607
      DisplayWidth = 12
      FieldName = 'ContainInsourance'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryContainTax: TBCDField
      Tag = 3
      DisplayLabel = 'A'#39' '
      DisplayWidth = 12
      FieldName = 'ContainTax'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryTaxValue: TBCDField
      Tag = 3
      DisplayLabel = #1605#1575#1604#1610#1575#1578' '
      DisplayWidth = 12
      FieldName = 'TaxValue'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryDec1: TBCDField
      Tag = 3
      DisplayLabel = #1581#1602' '#1576#1610#1605#1607
      DisplayWidth = 12
      FieldName = 'Dec1'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryDec2: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Dec2'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryDec3: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Dec3'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryDec4: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Dec4'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryDec5: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Dec5'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryDec6: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Dec6'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryDec7: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Dec7'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryDec8: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Dec8'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryDec9: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Dec9'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryDec10: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Dec10'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryDec11: TBCDField
      DisplayLabel = '...'
      FieldName = 'Dec11'
      currency = True
      Precision = 19
    end
    object qrysalaryDec12: TBCDField
      DisplayLabel = '...'
      FieldName = 'Dec12'
      currency = True
      Precision = 19
    end
    object qrysalaryDec13: TBCDField
      DisplayLabel = '...'
      FieldName = 'Dec13'
      currency = True
      Precision = 19
    end
    object qrysalaryDec14: TBCDField
      DisplayLabel = '...'
      FieldName = 'Dec14'
      currency = True
      Precision = 19
    end
    object qrysalaryDec15: TBCDField
      DisplayLabel = '...'
      FieldName = 'Dec15'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalaryDec16: TBCDField
      DisplayLabel = '...'
      FieldName = 'Dec16'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalaryDec17: TBCDField
      DisplayLabel = #1587#1575#1610#1585' '#1603#1587#1608#1585#1575#1578
      FieldName = 'Dec17'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalarySumDec: TBCDField
      Tag = 3
      DisplayLabel = #1580#1605#1593' '#1603#1587#1608#1585#1575#1578
      DisplayWidth = 12
      FieldName = 'SumDec'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryPayableSalary: TBCDField
      Tag = 3
      DisplayLabel = #1581#1602#1608#1602' '#1602#1575#1576#1604' '#1662#1585#1583#1575#1582#1578
      DisplayWidth = 12
      FieldName = 'PayableSalary'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryfatherName_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1662#1583#1585
      FieldName = 'fatherName_L1'
      Size = 25
    end
    object qrysalary_Amount1: TFloatField
      DisplayLabel = #1605'.'#1705#1575#1585#1705#1585#1583'1'
      FieldKind = fkLookup
      FieldName = '_Amount1'
      LookupDataSet = qryFunctionsItem
      LookupKeyFields = 'PersonelNo'
      LookupResultField = 'FAmount1'
      KeyFields = 'PersonelNO'
      Lookup = True
    end
    object qrysalary_Amount2: TFloatField
      DisplayLabel = #1605'.'#1705#1575#1585#1705#1585#1583'2'
      FieldKind = fkLookup
      FieldName = '_Amount2'
      LookupDataSet = qryFunctionsItem
      LookupKeyFields = 'PersonelNo'
      LookupResultField = 'FAmount2'
      KeyFields = 'PersonelNO'
      Lookup = True
    end
    object qrysalary_Amount3: TFloatField
      DisplayLabel = #1605'.'#1705#1575#1585#1705#1585#1583'3'
      FieldKind = fkLookup
      FieldName = '_Amount3'
      LookupDataSet = qryFunctionsItem
      LookupKeyFields = 'PersonelNo'
      LookupResultField = 'FAmount3'
      KeyFields = 'PersonelNO'
      Lookup = True
    end
    object qrysalary_Row: TIntegerField
      DisplayLabel = #1585#1583#1610#1601
      FieldKind = fkCalculated
      FieldName = '_Row'
      Calculated = True
    end
    object qrysalaryEmployTypeName: TStringField
      DisplayLabel = #1606#1608#1593' '#1581#1603#1605'/'#1575#1587#1578#1582#1583#1575#1605
      FieldName = 'EmployTypeName'
      Size = 500
    end
    object qrysalaryMobile: TStringField
      DisplayLabel = #1607#1605#1585#1575#1607
      FieldName = 'Mobile'
    end
    object qrysalaryNationalID: TStringField
      FieldName = 'NationalID'
      Size = 12
    end
  end
  object srcSalary: TDataSource
    DataSet = qrysalary
    Left = 88
    Top = 232
  end
  object qryWage: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'Mounth'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'ArchiveID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
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
        Name = 'FromPersonelNo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ToPersonelNo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PersonelStateFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PersonelStateTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'EmployTypeIDFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'EmployTypeIDTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     FixedCalculated.SalaryID, '
      
        ' FormsInfo_2.InfoName_L1 + CASE WHEN Mounth <> isnull(MounthReta' +
        'rd,0) '
      
        'THEN  isnull('#39'('#39' + '#39#1605#1593#1608#1602#1607' '#1605#1575#1607' '#39' + LTRIM(STR(MounthRetard))+ '#39')'#39' ' +
        ' ,'#39#39')   ELSE  '#39#39' END AS InfoName_L1'
      ''
      ', FormsInfo_2.FormInfoID, isnull(MounthRetard,0) as MounthRetard'
      ''
      'FROM Pay.FixedCalculated LEFT OUTER JOIN'
      '                      Pay.Interdicts LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfoEmployTypeID ON ' +
        'Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID ON '
      
        '                      FixedCalculated.PersonelNO = Interdicts.Pe' +
        'rsonelNo LEFT OUTER JOIN'
      '                      Pay.PersonelInfo LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfoPersonelState ON' +
        ' PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID ' +
        'ON '
      
        '                      FixedCalculated.PersonelNO = PersonelInfo.' +
        'PersonelNo LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfo_2 ON FixedCalcu' +
        'lated.SalaryID = FormsInfo_2.FormInfoID'
      
        'WHERE     (Interdicts.State < 50) AND (FixedCalculated.ShowListK' +
        'ind = 1)'
      'AND (Pay.FixedCalculated.Mounth = :Mounth)'
      'AND (Pay.FixedCalculated.ArchiveID = :ArchiveID)'
      
        'And (FixedCalculated.LabelID between :LabelIDFrom  and :LabelIDT' +
        'o )'
      
        'AND (Pay.FixedCalculated.PersonelNO BETWEEN :FromPersonelNo AND ' +
        ':ToPersonelNo)'
      
        'AND (FormsInfoPersonelState.InfoID  BETWEEN :PersonelStateFrom A' +
        'ND :PersonelStateTo )'
      
        'AND (FormsInfoEmployTypeID.InfoID   BETWEEN :EmployTypeIDFrom AN' +
        'D :EmployTypeIDTo )'
      
        'GROUP BY FixedCalculated.SalaryID, FormsInfo_2.InfoName_L1, Form' +
        'sInfo_2.FormInfoID,Mounth,MounthRetard'
      'ORDER BY FixedCalculated.SalaryID')
    Left = 401
    Top = 7
  end
  object qryDec: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'Mounth'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'ArchiveID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
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
        Name = 'FromPersonelNo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ToPersonelNo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PersonelStateFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PersonelStateTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'EmployTypeIDFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'EmployTypeIDTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT    Pay.FixedCalculated.SalaryID,'
      'MAX(CASE WHEN Pay.InsuranceCONSTinfo.InsuranceLabel_L1 IS NULL'
      
        '    THEN FormsInfo_2.InfoName_L1 ELSE Pay.InsuranceCONSTinfo.Ins' +
        'uranceLabel_L1 END) AS InfoName_L1,'
      '      FormsInfo_2.FormInfoID'
      'FROM Pay.InsuranceCONSTinfo RIGHT OUTER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfo_2 ON InsuranceC' +
        'ONSTinfo.FormInfoID = FormsInfo_2.FormInfoID RIGHT OUTER JOIN'
      '                      Pay.FixedCalculated LEFT OUTER JOIN'
      '                      Pay.Interdicts LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfoEmployTypeID ON ' +
        'Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID ON'
      
        '                      FixedCalculated.PersonelNO = Interdicts.Pe' +
        'rsonelNo LEFT OUTER JOIN'
      '                      Pay.PersonelInfo LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfoPersonelState ON' +
        ' PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID ' +
        'ON'
      
        '                      FixedCalculated.PersonelNO = PersonelInfo.' +
        'PersonelNo ON FormsInfo_2.FormInfoID = FixedCalculated.SalaryID'
      
        'WHERE     (Interdicts.State < 50) AND (FixedCalculated.ShowListK' +
        'ind = 2)'
      'AND (Pay.FixedCalculated.Mounth = :Mounth)'
      'AND (Pay.FixedCalculated.ArchiveID = :ArchiveID)'
      
        'And (FixedCalculated.LabelID between :LabelIDFrom  and :LabelIDT' +
        'o )'
      
        'AND (Pay.FixedCalculated.PersonelNO BETWEEN :FromPersonelNo AND ' +
        ':ToPersonelNo)'
      
        'AND (FormsInfoPersonelState.InfoID  BETWEEN :PersonelStateFrom A' +
        'ND :PersonelStateTo )'
      
        'AND (FormsInfoEmployTypeID.InfoID   BETWEEN :EmployTypeIDFrom AN' +
        'D :EmployTypeIDTo )'
      'AND  (CalCulateKind<>10)'
      
        'GROUP BY FixedCalculated.SalaryID, FormsInfo_2.InfoName_L1, Form' +
        'sInfo_2.FormInfoID'
      'ORDER BY FixedCalculated.SalaryID')
    Left = 488
    Top = 12
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcSalary
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 456
    Top = 285
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'PersonelNO'
      FieldName = 'PersonelNO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'Name'
      FieldName = 'Name'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'LastName'
      FieldName = 'LastName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'PersonName'
      FieldName = 'PersonName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'IDNumber'
      FieldName = 'IDNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'InsuranceNumber'
      FieldName = 'InsuranceNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = '_Amount4'
      FieldName = '_Amount4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'Wage1'
      FieldName = 'Wage1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'Wage2'
      FieldName = 'Wage2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'Wage3'
      FieldName = 'Wage3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'Wage4'
      FieldName = 'Wage4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'Wage5'
      FieldName = 'Wage5'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'Wage6'
      FieldName = 'Wage6'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'Wage7'
      FieldName = 'Wage7'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'Wage8'
      FieldName = 'Wage8'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'Wage9'
      FieldName = 'Wage9'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'Wage10'
      FieldName = 'Wage10'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'Wage11'
      FieldName = 'Wage11'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'Wage12'
      FieldName = 'Wage12'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'Wage13'
      FieldName = 'Wage13'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'Wage14'
      FieldName = 'Wage14'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = 'Wage15'
      FieldName = 'Wage15'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = 'Wage16'
      FieldName = 'Wage16'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField24: TppField
      FieldAlias = 'Wage17'
      FieldName = 'Wage17'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField25: TppField
      FieldAlias = 'Wage18'
      FieldName = 'Wage18'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField26: TppField
      FieldAlias = 'Wage19'
      FieldName = 'Wage19'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField27: TppField
      FieldAlias = 'Wage20'
      FieldName = 'Wage20'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField28: TppField
      FieldAlias = 'Wage21'
      FieldName = 'Wage21'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField29: TppField
      FieldAlias = 'Wage22'
      FieldName = 'Wage22'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField30: TppField
      FieldAlias = 'Wage23'
      FieldName = 'Wage23'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField31: TppField
      FieldAlias = 'Wage24'
      FieldName = 'Wage24'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField32: TppField
      FieldAlias = 'Wage25'
      FieldName = 'Wage25'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField33: TppField
      FieldAlias = 'WageOther'
      FieldName = 'WageOther'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField34: TppField
      FieldAlias = 'SumWage'
      FieldName = 'SumWage'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField35: TppField
      FieldAlias = 'sum23Dec'
      FieldName = 'sum23Dec'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField36: TppField
      FieldAlias = 'sum7Dec'
      FieldName = 'sum7Dec'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField37: TppField
      FieldAlias = 'ContainInsourance'
      FieldName = 'ContainInsourance'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField38: TppField
      FieldAlias = 'ContainTax'
      FieldName = 'ContainTax'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField39: TppField
      FieldAlias = 'TaxValue'
      FieldName = 'TaxValue'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField40: TppField
      FieldAlias = 'Dec1'
      FieldName = 'Dec1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField41: TppField
      FieldAlias = 'Dec2'
      FieldName = 'Dec2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField42: TppField
      FieldAlias = 'Dec3'
      FieldName = 'Dec3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField43: TppField
      FieldAlias = 'Dec4'
      FieldName = 'Dec4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField44: TppField
      FieldAlias = 'Dec5'
      FieldName = 'Dec5'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField45: TppField
      FieldAlias = 'Dec6'
      FieldName = 'Dec6'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField46: TppField
      FieldAlias = 'Dec7'
      FieldName = 'Dec7'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField47: TppField
      FieldAlias = 'Dec8'
      FieldName = 'Dec8'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField48: TppField
      FieldAlias = 'Dec9'
      FieldName = 'Dec9'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField49: TppField
      FieldAlias = 'Dec10'
      FieldName = 'Dec10'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField50: TppField
      FieldAlias = 'Dec11'
      FieldName = 'Dec11'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 49
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField51: TppField
      FieldAlias = 'Dec12'
      FieldName = 'Dec12'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 50
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField52: TppField
      FieldAlias = 'Dec13'
      FieldName = 'Dec13'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 51
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField53: TppField
      FieldAlias = 'Dec14'
      FieldName = 'Dec14'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 52
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField54: TppField
      FieldAlias = 'Dec15'
      FieldName = 'Dec15'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 53
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField55: TppField
      FieldAlias = 'Dec16'
      FieldName = 'Dec16'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 54
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField56: TppField
      FieldAlias = 'Dec17'
      FieldName = 'Dec17'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 55
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField57: TppField
      FieldAlias = 'SumDec'
      FieldName = 'SumDec'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 56
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField58: TppField
      FieldAlias = 'PayableSalary'
      FieldName = 'PayableSalary'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 57
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField59: TppField
      FieldAlias = 'fatherName_L1'
      FieldName = 'fatherName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 58
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField60: TppField
      FieldAlias = '_Amount1'
      FieldName = '_Amount1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 59
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField61: TppField
      FieldAlias = '_Amount2'
      FieldName = '_Amount2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 60
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField62: TppField
      FieldAlias = '_Amount3'
      FieldName = '_Amount3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 61
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField63: TppField
      FieldAlias = '_Row'
      FieldName = '_Row'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 62
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField64: TppField
      FieldAlias = 'EmployTypeName'
      FieldName = 'EmployTypeName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 63
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField65: TppField
      FieldAlias = 'Mobile'
      FieldName = 'Mobile'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 64
      Searchable = False
      Sortable = False
    end
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
    Template.FileName = 
      'D:\Projects\Fara2010\Salary\Exe\Report\SalaryList_insurance2F1.r' +
      'tm'
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
    Left = 568
    Top = 288
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 36248
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        ParentWidth = True
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 15081
        mmLeft = 0
        mmTop = 21431
        mmWidth = 284300
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588'.'#1662#1585#1587#1606#1604#1610
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
        mmLeft = 266965
        mmTop = 29633
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground
      end
      object w15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1575#1585#1603#1585#1583'/ '#1575#1590#1575#1601#1607' '#1603#1575#1585#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4149
        mmLeft = 246857
        mmTop = 23019
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object w16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'w16'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1593#1591#1610#1604#1603#1575#1585#1610'/'#1588#1576#1603#1575#1585#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 247121
        mmTop = 29633
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel43: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label25'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1662#1585#1587#1606#1604
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
        mmLeft = 262996
        mmTop = 23283
        mmWidth = 20373
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
        mmTop = 28840
        mmWidth = 263526
        BandType = 0
        LayerName = Foreground
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 262467
        mmTop = 21696
        mmWidth = 1852
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
        mmTop = 21696
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
        mmTop = 21696
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
        mmTop = 21696
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
        mmTop = 21696
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
        mmTop = 21696
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
        mmTop = 21696
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
        mmTop = 21696
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
      object w14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'w14'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1576#1610#1605#1607' '#1603#1575#1585#1601#1585#1605#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 122238
        mmTop = 23813
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
        mmTop = 21696
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
        mmTop = 21696
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
        mmTop = 21696
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
        mmTop = 21696
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
        mmTop = 21696
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
        mmTop = 21960
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
        mmLeft = 137584
        mmTop = 29633
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
        mmTop = 29369
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        OnGetText = ppLabel34GetText
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578' '#1581#1602#1608#1602' '
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
        mmLeft = 263832
        mmTop = 10319
        mmWidth = 17949
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1588#1605#1608#1604' '#1605#1575#1604#1610#1575#1578
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
        mmTop = 23548
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel35: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label20'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1588#1605#1608#1604' '#1576#1610#1605#1607
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
        mmTop = 29104
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object d1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'd1'
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
        mmLeft = 92075
        mmTop = 23283
        mmWidth = 14000
        BandType = 0
        LayerName = Foreground
      end
      object d6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'd6'
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
        mmTop = 29104
        mmWidth = 14000
        BandType = 0
        LayerName = Foreground
      end
      object d2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'd2'
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
        mmTop = 23283
        mmWidth = 14000
        BandType = 0
        LayerName = Foreground
      end
      object d7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'd7'
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
        mmTop = 29104
        mmWidth = 14000
        BandType = 0
        LayerName = Foreground
      end
      object d8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'd8'
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
        mmTop = 29104
        mmWidth = 14000
        BandType = 0
        LayerName = Foreground
      end
      object d3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'd3'
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
        mmTop = 23283
        mmWidth = 14000
        BandType = 0
        LayerName = Foreground
      end
      object d4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'd4'
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
        mmLeft = 49213
        mmTop = 23283
        mmWidth = 14000
        BandType = 0
        LayerName = Foreground
      end
      object d9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'd9'
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
        mmLeft = 49213
        mmTop = 29104
        mmWidth = 14000
        BandType = 0
        LayerName = Foreground
      end
      object d5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'd5'
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
        mmLeft = 34925
        mmTop = 23283
        mmWidth = 14000
        BandType = 0
        LayerName = Foreground
      end
      object d10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'd10'
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
        mmLeft = 34925
        mmTop = 29104
        mmWidth = 14000
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
        mmTop = 21696
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
        mmTop = 21696
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
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
        mmTop = 23283
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
        mmTop = 21696
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
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
        mmTop = 28840
        mmWidth = 14000
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
        mmTop = 23283
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
        mmTop = 28840
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
        mmHeight = 3704
        mmLeft = 0
        mmTop = 32544
        mmWidth = 284300
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        OnGetText = AllW_GetText
        Save = True
        AutoSize = False
        Border.mmPadding = 0
        Caption = '1'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 233892
        mmTop = 23813
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        OnGetText = AllW_GetText
        Save = True
        AutoSize = False
        Border.mmPadding = 0
        Caption = '2'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 217223
        mmTop = 23283
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        OnGetText = AllW_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' 3'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 198702
        mmTop = 23019
        mmWidth = 13758
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        OnGetText = AllW_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = '4'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 185738
        mmTop = 23283
        mmWidth = 11377
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label19'
        OnGetText = AllW_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' 5'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 169069
        mmTop = 23548
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label21'
        OnGetText = AllW_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' 6'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 157163
        mmTop = 23019
        mmWidth = 9525
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label27'
        OnGetText = AllW_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' 7'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 139700
        mmTop = 23813
        mmWidth = 13494
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label28'
        OnGetText = AllW_GetText
        Save = True
        AutoSize = False
        Border.mmPadding = 0
        Caption = '8'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 233892
        mmTop = 30427
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label30'
        OnGetText = AllW_GetText
        Save = True
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' 9'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 215371
        mmTop = 29369
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'w101'
        OnGetText = AllW_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' 10'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 200290
        mmTop = 30427
        mmWidth = 13494
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label31'
        OnGetText = AllW_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' 11'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 187590
        mmTop = 30427
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label32'
        OnGetText = AllW_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' 12'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 170657
        mmTop = 30427
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand2: TppDetailBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 16933
      mmPrintPosition = 0
      object dw1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw1'
        Border.mmPadding = 0
        DataField = 'Wage1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
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
        DataField = 'Wage2'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
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
        DataField = 'Wage4'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
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
        DataField = 'Wage3'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
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
        DataField = 'Wage7'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
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
        DataField = 'Wage6'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
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
        DataField = 'Wage5'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
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
        DataField = 'Wage8'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
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
        DataField = 'Wage9'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
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
        DataField = 'Wage11'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
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
        DataField = 'Wage10'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
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
        DataField = 'Wage14'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
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
        DataField = 'Wage13'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
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
        DataField = 'Wage12'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
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
        mmHeight = 16933
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
        mmHeight = 16933
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
        mmHeight = 16933
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
        mmHeight = 16933
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
        mmHeight = 16933
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
        mmHeight = 16933
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
        mmHeight = 16933
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
        mmHeight = 16933
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
        mmHeight = 16933
        mmLeft = 246857
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line22'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 16933
        mmLeft = 262467
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'PersonName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 262732
        mmTop = 0
        mmWidth = 20638
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'PersonelNO'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 262732
        mmTop = 5027
        mmWidth = 20638
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
        mmHeight = 16933
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
        mmHeight = 16933
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
        DataField = 'ContainTax'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
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
        DataField = 'ContainInsourance'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
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
        mmHeight = 16933
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
        DataField = 'TaxValue'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
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
        DataField = 'Dec6'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
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
        mmTop = 16140
        mmWidth = 284300
        BandType = 4
        LayerName = Foreground
      end
      object dd2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dd2'
        Border.mmPadding = 0
        DataField = 'Dec1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
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
        DataField = 'Dec3'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
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
        DataField = 'Dec2'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
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
        DataField = 'Dec7'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
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
        DataField = 'Dec10'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
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
        DataField = 'Dec9'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
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
        DataField = 'Dec8'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
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
        mmHeight = 16933
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
        mmHeight = 16933
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
        mmHeight = 16933
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
        mmHeight = 16933
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
        DataField = 'Dec4'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
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
        mmHeight = 16933
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
        mmHeight = 16933
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
        DataField = 'PayableSalary'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
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
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'SumWage'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
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
        DataField = 'SumDec'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
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
        DataField = 'Dec5'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
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
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = '_Amount1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 247121
        mmTop = 794
        mmWidth = 7408
        BandType = 4
        LayerName = Foreground
      end
      object ppLine81: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line50'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 254265
        mmTop = 0
        mmWidth = 794
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = '_Amount2'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 255059
        mmTop = 5556
        mmWidth = 7673
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = '_Amount3'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 247121
        mmTop = 5821
        mmWidth = 7673
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        Border.mmPadding = 0
        DataField = '_Amount4'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 255059
        mmTop = 794
        mmWidth = 7408
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'sum23Dec'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 122238
        mmTop = 0
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground
      end
      object dw15: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw15'
        Border.mmPadding = 0
        DataField = 'Wage16'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 215636
        mmTop = 11112
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground
      end
      object dw16: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw16'
        Border.mmPadding = 0
        DataField = 'Wage17'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 200025
        mmTop = 11112
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw101'
        Border.mmPadding = 0
        DataField = 'Wage18'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 184415
        mmTop = 11112
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText17'
        Border.mmPadding = 0
        DataField = 'Wage19'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 168805
        mmTop = 11112
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText18'
        Border.mmPadding = 0
        DataField = 'Wage20'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 153194
        mmTop = 11112
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText19'
        Border.mmPadding = 0
        DataField = 'Wage21'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 137584
        mmTop = 11112
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText20'
        Border.mmPadding = 0
        DataField = 'Wage22'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 121973
        mmTop = 11112
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText21'
        Border.mmPadding = 0
        DataField = 'Wage23'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 106627
        mmTop = 11112
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText22'
        Border.mmPadding = 0
        DataField = 'Wage24'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 92340
        mmTop = 11112
        mmWidth = 13758
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText23'
        Border.mmPadding = 0
        DataField = 'Wage25'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 77788
        mmTop = 11112
        mmWidth = 14000
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText24'
        Border.mmPadding = 0
        DataField = 'Wage15'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 231511
        mmTop = 11113
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground
      end
      object ppDBCalc39: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc4'
        Border.mmPadding = 0
        DataField = 'PersonelNO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4064
        mmLeft = 250825
        mmTop = 11377
        mmWidth = 17198
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
        mmLeft = 63500
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
        mmLeft = 77788
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
        mmLeft = 92075
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
        mmLeft = 106363
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
        mmLeft = 121973
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
        mmLeft = 137584
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
        mmLeft = 153194
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
        mmLeft = 168805
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
        mmLeft = 184415
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
        mmLeft = 200025
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
        mmLeft = 215636
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
        mmLeft = 231246
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
        mmLeft = 247121
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
        mmLeft = 20373
        mmTop = 5821
        mmWidth = 262996
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc7: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc7'
        Border.mmPadding = 0
        DataField = 'PersonelNO'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 248709
        mmTop = 6615
        mmWidth = 18256
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc8: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc8'
        Border.mmPadding = 0
        DataField = 'Wage1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 231511
        mmTop = 0
        mmWidth = 15346
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc9: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc9'
        Border.mmPadding = 0
        DataField = 'Wage2'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 215900
        mmTop = 0
        mmWidth = 15346
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc10: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc10'
        Border.mmPadding = 0
        DataField = 'Wage9'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 215900
        mmTop = 6615
        mmWidth = 15346
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc11: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc11'
        Border.mmPadding = 0
        DataField = 'Wage8'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 231511
        mmTop = 6615
        mmWidth = 15346
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc12: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc12'
        Border.mmPadding = 0
        DataField = 'Wage12'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 169069
        mmTop = 6615
        mmWidth = 15346
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc13: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc13'
        Border.mmPadding = 0
        DataField = 'Wage11'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 184680
        mmTop = 6615
        mmWidth = 15346
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc14: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col101'
        Border.mmPadding = 0
        DataField = 'Wage10'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 200290
        mmTop = 6615
        mmWidth = 15346
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc15: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc15'
        Border.mmPadding = 0
        DataField = 'Wage5'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 169069
        mmTop = 0
        mmWidth = 15346
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc16: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc16'
        Border.mmPadding = 0
        DataField = 'Wage4'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 184680
        mmTop = 0
        mmWidth = 15346
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc17: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc17'
        Border.mmPadding = 0
        DataField = 'Wage3'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 200290
        mmTop = 0
        mmWidth = 15346
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc18: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc18'
        Border.mmPadding = 0
        DataField = 'Dec1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 78052
        mmTop = 0
        mmWidth = 14023
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc19: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc19'
        Border.mmPadding = 0
        DataField = 'TaxValue'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 92340
        mmTop = 0
        mmWidth = 14023
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc20: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc20'
        Border.mmPadding = 0
        DataField = 'Dec7'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 78052
        mmTop = 6615
        mmWidth = 14023
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc21: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc21'
        Border.mmPadding = 0
        DataField = 'Dec6'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 92340
        mmTop = 6615
        mmWidth = 14023
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc22: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = '_TaxInvolved3'
        Border.mmPadding = 0
        DataField = 'ContainTax'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 106627
        mmTop = 0
        mmWidth = 15346
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc23: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc23'
        Border.mmPadding = 0
        DataField = 'Wage7'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 137848
        mmTop = 0
        mmWidth = 15346
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc24: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc24'
        Border.mmPadding = 0
        DataField = 'Wage6'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 153459
        mmTop = 0
        mmWidth = 15346
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc25: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = '_InsInvolved1'
        Border.mmPadding = 0
        DataField = 'ContainInsourance'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 106627
        mmTop = 6615
        mmWidth = 15346
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc26: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc26'
        Border.mmPadding = 0
        DataField = 'Wage14'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 137848
        mmTop = 6615
        mmWidth = 15346
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc27: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc27'
        Border.mmPadding = 0
        DataField = 'Wage13'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 153459
        mmTop = 6615
        mmWidth = 15346
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc28: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc28'
        Border.mmPadding = 0
        DataField = 'Dec3'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 49477
        mmTop = 0
        mmWidth = 14023
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc29: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc29'
        Border.mmPadding = 0
        DataField = 'Dec9'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 49477
        mmTop = 6615
        mmWidth = 14023
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc30: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc30'
        Border.mmPadding = 0
        DataField = 'Dec2'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 63765
        mmTop = 0
        mmWidth = 14023
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc31: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc31'
        Border.mmPadding = 0
        DataField = 'Dec8'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 63765
        mmTop = 6615
        mmWidth = 14023
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc32: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc32'
        Border.mmPadding = 0
        DataField = 'SumWage'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 122502
        mmTop = 6615
        mmWidth = 15346
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1593#1583#1575#1583' '#1662#1585#1587#1606#1604
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
        mmTop = 6350
        mmWidth = 15610
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc34: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc34'
        Border.mmPadding = 0
        DataField = 'Dec4'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 35190
        mmTop = 0
        mmWidth = 14023
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc35: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc35'
        Border.mmPadding = 0
        DataField = 'Dec5'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 20902
        mmTop = 0
        mmWidth = 14023
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc36: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc36'
        Border.mmPadding = 0
        DataField = 'PayableSalary'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
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
        mmLeft = 20638
        mmTop = 0
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc37: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc37'
        Border.mmPadding = 0
        DataField = 'Dec10'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 35190
        mmTop = 6615
        mmWidth = 14023
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc38: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc38'
        Border.mmPadding = 0
        DataField = 'SumDec'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 21167
        mmTop = 6350
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
        mmLeft = 34660
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
        mmLeft = 48948
        mmTop = 529
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc6: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc6'
        Border.mmPadding = 0
        DataField = 'sum23Dec'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 122238
        mmTop = 265
        mmWidth = 15346
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
        object TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label1'
          Border.mmPadding = 0
          Caption = #1578#1606#1592#1610#1605' '#1603#1606#1606#1583#1607
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'zar'
          Font.Size = 9
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 5292
          mmLeft = 272379
          mmTop = 15906
          mmWidth = 11049
          BandType = 8
          LayerName = Foreground
        end
        object TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line16'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 13494
          mmLeft = 190428
          mmTop = 15610
          mmWidth = 1000
          BandType = 8
          LayerName = Foreground
        end
        object TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label3'
          Border.mmPadding = 0
          Caption = #1605#1583#1610#1585' '#1575#1605#1608#1585' '#1605#1575#1604#1610
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'zar'
          Font.Size = 9
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 5292
          mmLeft = 175712
          mmTop = 15906
          mmWidth = 13716
          BandType = 8
          LayerName = Foreground
        end
        object TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line38'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 13494
          mmLeft = 96428
          mmTop = 15610
          mmWidth = 1000
          BandType = 8
          LayerName = Foreground
        end
        object TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label8'
          Border.mmPadding = 0
          Caption = #1605#1583#1610#1585' '#1593#1575#1605#1604
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'zar'
          Font.Size = 9
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 5292
          mmLeft = 85691
          mmTop = 15906
          mmWidth = 9737
          BandType = 8
          LayerName = Foreground
        end
        object TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label14'
          Border.mmPadding = 0
          Caption = #1578#1606#1592#1610#1605' '#1603#1606#1606#1583#1607
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'zar'
          Font.Size = 9
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 5292
          mmLeft = 272379
          mmTop = 15906
          mmWidth = 11049
          BandType = 8
          LayerName = Foreground
        end
        object TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line54'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 13494
          mmLeft = 190428
          mmTop = 15610
          mmWidth = 1000
          BandType = 8
          LayerName = Foreground
        end
        object TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label15'
          Border.mmPadding = 0
          Caption = #1605#1583#1610#1585' '#1575#1605#1608#1585' '#1605#1575#1604#1610
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'zar'
          Font.Size = 9
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 5292
          mmLeft = 175712
          mmTop = 15906
          mmWidth = 13716
          BandType = 8
          LayerName = Foreground
        end
        object TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line75'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 13494
          mmLeft = 96428
          mmTop = 15610
          mmWidth = 1000
          BandType = 8
          LayerName = Foreground
        end
        object TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label18'
          Border.mmPadding = 0
          Caption = #1605#1583#1610#1585' '#1593#1575#1605#1604
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'zar'
          Font.Size = 9
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 5292
          mmLeft = 85691
          mmTop = 15906
          mmWidth = 9737
          BandType = 8
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
  object qryFunctionsItem: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'Years'
        DataType = ftWideString
        Size = 2
        Value = '-1'
      end
      item
        Name = 'YearID'
        DataType = ftWideString
        Size = 2
        Value = '-1'
      end
      item
        Name = 'Mounth'
        DataType = ftWideString
        Size = 2
        Value = '-1'
      end
      item
        Name = 'Amount1'
        DataType = ftWideString
        Size = 2
        Value = '-1'
      end
      item
        Name = 'Amount2'
        DataType = ftWideString
        Size = 2
        Value = '-1'
      end
      item
        Name = 'Amount3'
        DataType = ftWideString
        Size = 2
        Value = '-1'
      end>
    SQL.Strings = (
      'SELECT    FunctionList.*'
      
        'FROM         Pay.FunctionList( :Years ,:YearID , :Mounth, :Amoun' +
        't1, :Amount2,  :Amount3)  FunctionList'
      'ORDER BY PersonelNo'
      '')
    Left = 264
    Top = 157
    object qryFunctionsItemPersonelNo: TIntegerField
      FieldName = 'PersonelNo'
    end
    object qryFunctionsItemFAmount1: TFloatField
      FieldName = 'FAmount1'
    end
    object qryFunctionsItemFAmount2: TFloatField
      FieldName = 'FAmount2'
    end
    object qryFunctionsItemFAmount3: TFloatField
      FieldName = 'FAmount3'
    end
  end
  object qryFunctionName: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryFunctionNameAfterOpen
    Parameters = <
      item
        Name = 'Mounth'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'Years'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT    Pay.FunctionsItems.SalaryID, Pay.FormsInfo.InfoName_L1' +
        ', Pay.FormsInfo.InfoName_L2'
      'FROM         Pay.Functions INNER JOIN'
      
        '                      Pay.FunctionsItems ON Pay.Functions.Functi' +
        'onID = Pay.FunctionsItems.FunctionID INNER JOIN'
      
        '                      Pay.FormsInfo ON Pay.FunctionsItems.Salary' +
        'ID = Pay.FormsInfo.FormInfoID'
      'WHERE     (Pay.Functions.Mounth = :Mounth)'
      'AND    ( Pay.Functions.Years = :Years  ) '
      
        'GROUP BY Pay.FunctionsItems.SalaryID, Pay.FormsInfo.InfoName_L1,' +
        ' Pay.FormsInfo.InfoName_L2'
      'ORDER BY Pay.FunctionsItems.SalaryID')
    Left = 392
    Top = 165
  end
  object qryFunctions: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'MonthNo'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'Years'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     PersonelNo, SUM(FunctionDay) AS FunctionDay, SUM(Func' +
        'tionTime) AS FunctionTime'
      'FROM         Pay.Functions'
      'WHERE     (Mounth = :MonthNo) AND    ( Years = :Years  ) '
      'GROUP BY PersonelNo')
    Left = 586
    Top = 189
    object qryFunctionsPersonelNo: TIntegerField
      FieldName = 'PersonelNo'
    end
    object qryFunctionsFunctionDay: TFloatField
      DisplayLabel = #1585#1608#1586#1607#1575#1610' '#1603#1575#1585#1603#1585#1583
      FieldName = 'FunctionDay'
    end
    object qryFunctionsFunctionTime: TFloatField
      DisplayLabel = #1587#1575#1593#1575#1578' '#1603#1575#1585#1603#1585#1583
      FieldName = 'FunctionTime'
    end
  end
  object PopList4Print: TPopupMenu
    Left = 712
    Top = 317
    object AllClick: TMenuItem
      Caption = #1575#1586' Hint '#1608' Name '#1575#1587#1578#1601#1575#1583#1607' '#1588#1583#1607
      Visible = False
      OnClick = AllClickClick
    end
    object SalaryList_insurance2F1: TMenuItem
      Caption = #1670#1575#1662' '#1610#1603' '#1587#1591#1585#1610
      OnClick = AllClickClick
    end
    object SalaryList_insurance2F2: TMenuItem
      Caption = #1670#1575#1662' '#1587#1607' '#1587#1591#1585#1610
      OnClick = AllClickClick
    end
  end
end

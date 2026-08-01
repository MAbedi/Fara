inherited ChangeWageF: TChangeWageF
  Left = 292
  Top = 73
  Caption = #1578#1594#1610#1610#1585' '#1603#1604#1610' '#1605#1586#1575#1610#1575#1610' '#1575#1581#1603#1575#1605' '#1603#1575#1585#1711#1586#1610#1606#1610
  ClientHeight = 581
  ClientWidth = 980
  OnResize = FormResize
  ExplicitWidth = 988
  ExplicitHeight = 612
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 540
    Width = 980
    ExplicitTop = 540
    ExplicitWidth = 980
    inherited BtnReject: TBitBtn
      Left = 2
      Margins.Left = 1
      Margins.Right = 1
      ExplicitLeft = 2
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 903
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 1
    end
    object BitBtn5: TBitBtn
      AlignWithMargins = True
      Left = 749
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actCal
      Align = alRight
      Caption = #1605#1581#1575#1587#1576#1607
      TabOrder = 2
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 826
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actShowForm
      Align = alRight
      Caption = #1606#1605#1575#1610#1588' '#1581#1603#1605
      TabOrder = 3
    end
    object BitBtn6: TBitBtn
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
      TabOrder = 4
    end
    object BitBtn7: TBitBtn
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
      TabOrder = 5
    end
    object BitBtn8: TBitBtn
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
      TabOrder = 6
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 310
      Top = 7
      Width = 94
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actSendToExcelI
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'#1605#1586#1575#1610#1575
      TabOrder = 7
    end
    object BitBtn9: TBitBtn
      AlignWithMargins = True
      Left = 664
      Top = 7
      Width = 83
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actCalcFormula
      Align = alRight
      Caption = #1605#1581#1575#1587#1576#1607' '#1576#1575' '#1601#1585#1605#1608#1604
      TabOrder = 8
    end
    object BitBtn10: TBitBtn
      AlignWithMargins = True
      Left = 579
      Top = 7
      Width = 83
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actAddItem4All
      Align = alRight
      Caption = #1575#1590#1575#1601#1607' '#1705#1585#1583#1606' '
      TabOrder = 9
    end
    object btnSeparationBaseSeniority: TBitBtn
      AlignWithMargins = True
      Left = 377
      Top = 7
      Width = 115
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = ActSeparationBaseSeniority
      Align = alRight
      Caption = #1578#1601#1705#1740#1705' '#1662#1575#1740#1607' '#1587#1606#1608#1575#1578#1740
      TabOrder = 10
    end
    object BitBtn12: TBitBtn
      AlignWithMargins = True
      Left = 494
      Top = 7
      Width = 83
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actInserttem
      Align = alRight
      Caption = #1575#1740#1580#1575#1583' '#1570#1740#1578#1605' '#1581#1705#1605
      TabOrder = 11
    end
  end
  inherited Panel2: TPanel
    Width = 980
    ExplicitWidth = 980
    inherited ImgTemplate: TImage
      Left = 942
      ExplicitLeft = 825
    end
    inherited lblCaption: TLabel
      Left = 872
      ExplicitLeft = 872
    end
    inherited lblBaseDate: TLabel
      Left = 400
      ExplicitLeft = 400
    end
    object BitBtn1: TBitBtn
      Left = 20
      Top = 27
      Width = 97
      Height = 22
      Action = actReCall
      Caption = #1601#1585#1575#1582#1608#1575#1606#1610' '#1593#1606#1575#1608#1610#1606
      TabOrder = 0
    end
  end
  inherited Panel3: TPanel
    Width = 980
    Height = 487
    Caption = '`'
    ExplicitWidth = 980
    ExplicitHeight = 487
    object Splitter1: TSplitter
      AlignWithMargins = True
      Left = 5
      Top = 172
      Width = 970
      Height = 3
      Cursor = crVSplit
      Align = alTop
      ExplicitLeft = 2
      ExplicitTop = 283
      ExplicitWidth = 121
    end
    object GroupBox2: TGroupBox
      Left = 2
      Top = 178
      Width = 976
      Height = 307
      Align = alClient
      Caption = '  '#1604#1610#1587#1578' '#1575#1581#1603#1575#1605' '#1603#1575#1585#1711#1586#1610#1606#1610' '#1603#1607' '#1605#1581#1575#1587#1576#1607' '#1585#1608#1610' '#1570#1606#1607#1575' '#1578#1575#1579#1610#1585#1711#1584#1575#1585' '#1575#1587#1578
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object DBGrid2: TDBGrid
        AlignWithMargins = True
        Left = 5
        Top = 35
        Width = 966
        Height = 267
        Align = alClient
        Color = clCream
        DataSource = srcInterdictList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'PersonelNo'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FullName'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'InterdictNo'
            Width = 41
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'InterdictDate'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'InterdicStartDate'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'InterdicEndDate'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SalaryID'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SalaryName'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Amount'
            Width = 27
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HasRetard'
            Width = 33
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Firstdate'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Enddate'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TaxMounth'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TaxDays'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TotalYearsWork'
            Visible = True
          end>
      end
      object pnlLblLimitPlace: TPanel
        Left = 2
        Top = 15
        Width = 972
        Height = 17
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object LblShowLimitPlace2: TLabel
          Left = 0
          Top = 0
          Width = 94
          Height = 17
          Align = alLeft
          BiDiMode = bdLeftToRight
          Caption = 'LblShow LimitPlace2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          Transparent = True
          ExplicitHeight = 13
        end
        object LblShowLimitPlace1: TLabel
          Left = 878
          Top = 0
          Width = 94
          Height = 17
          Align = alRight
          Caption = 'LblShow LimitPlace1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          ExplicitHeight = 13
        end
      end
    end
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 976
      Height = 167
      Align = alTop
      Caption = 'Panel1'
      TabOrder = 1
      object GroupBox1: TGroupBox
        Left = 1
        Top = 1
        Width = 185
        Height = 165
        Align = alLeft
        Caption = #1578#1594#1740#1740#1585' '#1605#1602#1575#1583#1740#1585' '#1579#1575#1576#1578
        TabOrder = 0
        DesignSize = (
          185
          165)
        object Label1: TLabel
          Left = 112
          Top = 32
          Width = 68
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1593#1583#1575#1583' '#1605#1575#1607' '#1605#1593#1575#1601
        end
        object Label2: TLabel
          Left = 112
          Top = 59
          Width = 67
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1593#1583#1575#1583' '#1585#1608#1586' '#1605#1593#1575#1601
        end
        object edtTaxMounth: TDBEdit
          Left = 18
          Top = 29
          Width = 88
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'TaxMounth'
          DataSource = Src_Interdict
          TabOrder = 0
        end
        object edtTaxDays: TDBEdit
          Left = 18
          Top = 56
          Width = 88
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'TaxDays'
          DataSource = Src_Interdict
          TabOrder = 1
        end
        object BitBtn11: TBitBtn
          AlignWithMargins = True
          Left = 5
          Top = 130
          Width = 75
          Height = 27
          Margins.Top = 115
          Margins.Bottom = 6
          Action = actChangeInterdict
          Align = alLeft
          Caption = ' '#1575#1606#1580#1575#1605' '#1583#1575#1583#1606
          TabOrder = 2
        end
      end
      object Panel4: TPanel
        Left = 186
        Top = 1
        Width = 789
        Height = 165
        Align = alClient
        Caption = 'Panel4'
        TabOrder = 1
        object Edit1: TEdit
          Left = 1
          Top = 106
          Width = 787
          Height = 19
          Align = alBottom
          BiDiMode = bdLeftToRight
          Color = clInactiveCaption
          Ctl3D = False
          ParentBiDiMode = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
          Text = 
            #1605#1579#1575#1604' = CASE WHEN Amount <= 8121660 THEN Amount * 1.145 ELSE Amou' +
            'nt * 1.12 END * TotalYearsWork'
        end
        object DBMemo1: TDBMemo
          Left = 1
          Top = 125
          Width = 787
          Height = 39
          Align = alBottom
          BiDiMode = bdLeftToRight
          DataField = 'ColumnsCalc'
          DataSource = srcChangeWage
          ParentBiDiMode = False
          TabOrder = 1
        end
        object DBGrid1: TDBGrid
          Left = 1
          Top = 1
          Width = 787
          Height = 105
          Align = alClient
          Color = clCream
          DataSource = srcChangeWage
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid1DrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'SalaryID'
              Width = 58
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SalaryIDFormula'
              Width = 49
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_CaptionName'
              Width = 92
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CalculatedKind'
              PickList.Strings = (
                #1583#1585#1589#1583' '
                #1605#1576#1604#1594' '#1579#1575#1576#1578
                #1580#1575#1610#1711#1586#1610#1606
                #1601#1585#1605#1608#1604)
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Amount'
              Width = 92
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ColumnsCalc'
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_ColumnsCalc'
              ReadOnly = True
              Width = 83
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Firstdate'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Enddate'
              Width = 68
              Visible = True
            end>
        end
      end
    end
  end
  inherited ActionList: TActionList
    Left = 656
    Top = 152
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actReCall: TAction
      Caption = #1601#1585#1575#1582#1608#1575#1606#1610' '#1593#1606#1575#1608#1610#1606
      OnExecute = actReCallExecute
    end
    object actCal: TAction
      Caption = #1605#1581#1575#1587#1576#1607
      OnExecute = actCalExecute
    end
    object actvjPrint: TAction
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
      OnExecute = actvjPrintExecute
    end
    object actSendToExcelI: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendToExcelIExecute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actShowForm: TAction
      Caption = #1606#1605#1575#1610#1588' '#1581#1603#1605
      OnExecute = actShowFormExecute
    end
    object actSendToExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendToExcelExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actCalcFormula: TAction
      Caption = #1605#1581#1575#1587#1576#1607' '#1576#1575' '#1601#1585#1605#1608#1604
      OnExecute = actCalcFormulaExecute
    end
    object actAddItem4All: TAction
      Caption = #1575#1590#1575#1601#1607' '#1705#1585#1583#1606' '
      Hint = #1575#1606#1578#1582#1575#1576' '#1593#1606#1608#1575#1606' '#1576#1585#1575#1740' '#1575#1590#1575#1601#1607' '#1705#1585#1583#1606' '#1576#1607' '#1607#1605#1607' '#1575#1581#1705#1575#1605' '#1605#1581#1583#1608#1583#1607
      OnExecute = actAddItem4AllExecute
    end
    object actChangeInterdict: TAction
      Caption = ' '#1575#1606#1580#1575#1605' '#1583#1575#1583#1606
      OnExecute = actChangeInterdictExecute
    end
    object ActSeparationBaseSeniority: TAction
      Caption = #1578#1601#1705#1740#1705' '#1662#1575#1740#1607' '#1587#1606#1608#1575#1578#1740
      OnExecute = ActSeparationBaseSeniorityExecute
    end
    object actInserttem: TAction
      Caption = #1575#1740#1580#1575#1583' '#1570#1740#1578#1605' '#1581#1705#1605
      Hint = 
        #1576#1575' '#1575#1580#1585#1575#1740' '#1575#1740#1606' '#1593#1605#1604#1740#1575#1578#1548' '#1576#1585#1575#1740' '#1578#1605#1575#1605#1740' '#1575#1601#1585#1575#1583#1740' '#1705#1607' '#1581#1705#1605' '#1579#1576#1578#8204#1588#1583#1607' '#1583#1575#1585#1606#1583' '#1575#1605#1575' ' +
        #1601#1575#1602#1583' '#1580#1586#1574#1740#1575#1578' '#1581#1705#1605' '#1607#1587#1578#1606#1583#1548' '#1570#1740#1578#1605#8204#1607#1575#1740' '#1605#1585#1576#1608#1591' '#1576#1607' '#1581#1705#1605' '#1576#1607#8204#1589#1608#1585#1578' '#1582#1608#1583#1705#1575#1585' '#1575#1740#1580#1575 +
        #1583' '#1608' '#1576#1607' '#1585#1705#1608#1585#1583' '#1581#1705#1605' '#1570#1606#8204#1607#1575' '#1575#1601#1586#1608#1583#1607' '#1605#1740#8204#1588#1608#1583
      OnExecute = actInserttemExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 672
    Top = 103
  end
  object qryChangeWage: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    OnCalcFields = qryChangeWageCalcFields
    Parameters = <>
    SQL.Strings = (
      
        'SELECT        SalaryID, CalculatedKind, Amount, Firstdate, Endda' +
        'te, ColumnsCalc, SalaryIDFormula'
      'FROM            Pay.ChangeWage')
    Left = 392
    Top = 77
    object qryChangeWageSalaryID: TIntegerField
      DisplayLabel = #1587#1585#1610#1575#1604' '#1605#1586#1575#1610#1575
      FieldName = 'SalaryID'
    end
    object qryChangeWage_CaptionName: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1610#1575
      FieldKind = fkLookup
      FieldName = '_CaptionName'
      LookupDataSet = qryLookUp
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'SalaryID'
      Size = 100
      Lookup = True
    end
    object qryChangeWageCalculatedKind: TWordField
      DisplayLabel = #1606#1581#1608#1607' '#1575#1601#1586#1575#1610#1588
      FieldName = 'CalculatedKind'
      OnGetText = qryChangeWageCalculatedKindGetText
      OnSetText = qryChangeWageCalculatedKindSetText
    end
    object qryChangeWageAmount: TFloatField
      DisplayLabel = #1583#1585#1589#1583'/'#1605#1576#1604#1594' '#1575#1601#1586#1575#1610#1588
      FieldName = 'Amount'
    end
    object qryChangeWageFirstdate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1605#1593#1608#1602#1607' '#1575#1586
      FieldName = 'Firstdate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryChangeWageEnddate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1605#1593#1608#1602#1607' '#1578#1575
      FieldName = 'Enddate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryChangeWageColumnsCalc: TWideStringField
      DisplayLabel = #1601#1585#1605#1608#1604' '#1605#1581#1575#1587#1576#1575#1578
      FieldName = 'ColumnsCalc'
      Size = 2000
    end
    object qryChangeWageSalaryIDFormula: TStringField
      DisplayLabel = #1603#1583' '#1601#1585#1605#1608#1604
      FieldName = 'SalaryIDFormula'
      ReadOnly = True
      Size = 12
    end
    object qryChangeWage_ColumnsCalc: TStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' '#1601#1585#1605#1608#1604
      FieldKind = fkCalculated
      FieldName = '_ColumnsCalc'
      Size = 2000
      Calculated = True
    end
  end
  object srcChangeWage: TDataSource
    DataSet = qryChangeWage
    Left = 256
    Top = 69
  end
  object qryLookUp: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT  *  FROM   Pay.FormsInfo'
      '')
    Left = 648
    Top = 232
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = DmF.adcsalary
    ProcedureName = 'pay.CalChangeWage;1'
    Parameters = <>
    Left = 360
    Top = 198
  end
  object qryInterdictList: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT        PersonelNo, FullName, InterdictNo, InterdictDate, ' +
        'InterdicStartDate, InterdicEndDate, SalaryName, Amount, HasRetar' +
        'd, Firstdate, Enddate, SalaryID, GroupID, '
      
        '                         EmployType, Grade, childNumber, Sex, Pe' +
        'rsonelState, InterdictItemsID,InterdictID'
      ',TaxMounth,TaxDays,TotalYearsWork'
      'FROM            Pay.QryChangeWage')
    Left = 264
    Top = 272
    object qryInterdictListInterdictItemsID: TIntegerField
      FieldName = 'InterdictItemsID'
    end
    object qryInterdictListPersonelNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588'.'#1662#1585#1587#1606#1604
      FieldName = 'PersonelNo'
    end
    object qryInterdictListFullName: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1582#1589#1575#1578
      FieldName = 'FullName'
      ReadOnly = True
      Size = 56
    end
    object qryInterdictListInterdictNo: TStringField
      Tag = 3
      DisplayLabel = #1588'.'#1581#1603#1605
      FieldName = 'InterdictNo'
      Size = 50
    end
    object qryInterdictListInterdictDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1581#1603#1605
      FieldName = 'InterdictDate'
      FixedChar = True
      Size = 10
    end
    object qryInterdictListInterdicStartDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1575#1580#1585#1575#1610' '#1581#1603#1605
      FieldName = 'InterdicStartDate'
      FixedChar = True
      Size = 10
    end
    object qryInterdictListInterdicEndDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1662#1575#1610#1575#1606' '#1602#1585#1575#1585#1583#1575#1583
      FieldName = 'InterdicEndDate'
      FixedChar = True
      Size = 10
    end
    object qryInterdictListSalaryName: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1605#1586#1575#1610#1575
      FieldName = 'SalaryName'
      Size = 255
    end
    object qryInterdictListAmount: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'Amount'
      currency = True
      Precision = 19
    end
    object qryInterdictListHasRetard: TWordField
      Tag = 3
      DisplayLabel = #1605#1593#1608#1602#1607
      FieldName = 'HasRetard'
      OnGetText = qryInterdictListHasRetardGetText
    end
    object qryInterdictListFirstdate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1605#1593#1608#1602#1607' '#1575#1586
      FieldName = 'Firstdate'
      FixedChar = True
      Size = 10
    end
    object qryInterdictListEnddate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1605#1593#1608#1602#1607' '#1578#1575
      FieldName = 'Enddate'
      FixedChar = True
      Size = 10
    end
    object qryInterdictListSalaryID: TIntegerField
      DisplayLabel = #1587#1585#1610#1575#1604' '#1605#1586#1575#1610#1575
      FieldName = 'SalaryID'
    end
    object qryInterdictListGroupID: TIntegerField
      FieldName = 'GroupID'
    end
    object qryInterdictListEmployType: TIntegerField
      FieldName = 'EmployType'
    end
    object qryInterdictListGrade: TIntegerField
      FieldName = 'Grade'
    end
    object qryInterdictListchildNumber: TIntegerField
      FieldName = 'childNumber'
    end
    object qryInterdictListSex: TIntegerField
      FieldName = 'Sex'
    end
    object qryInterdictListPersonelState: TIntegerField
      FieldName = 'PersonelState'
    end
    object qryInterdictListTaxMounth: TWordField
      DisplayLabel = #1578#1593#1583#1575#1583' '#1605#1575#1607' '#1605#1593#1575#1601
      FieldName = 'TaxMounth'
    end
    object qryInterdictListTaxDays: TSmallintField
      DisplayLabel = #1578#1593#1583#1575#1583' '#1585#1608#1586' '#1605#1593#1575#1601
      FieldName = 'TaxDays'
    end
    object qryInterdictListInterdictID: TIntegerField
      FieldName = 'InterdictID'
    end
    object qryInterdictListTotalYearsWork: TWordField
      DisplayLabel = #1587#1606#1608#1575#1578
      FieldName = 'TotalYearsWork'
    end
  end
  object srcInterdictList: TDataSource
    DataSet = qryInterdictList
    Left = 176
    Top = 192
  end
  object qry_Change_Wage: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT        ChangeWage.SalaryID, ChangeWage.CalculatedKind, Ch' +
        'angeWage.Amount, ChangeWage.Firstdate, ChangeWage.Enddate, Chang' +
        'eWage.ColumnsCalc, '
      
        '                         ChangeWage.SalaryIDFormula, FormsInfo.I' +
        'nfoName_L1 AS CaptionName'
      'FROM            Pay.ChangeWage INNER JOIN'
      
        '                         Pay.FormsInfo ON ChangeWage.SalaryID = ' +
        'FormsInfo.FormInfoID')
    Left = 512
    Top = 309
  end
  object qryItems: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT    *'
      'FROM         Pay.InterdictItems'
      'WHERE     0=1')
    Left = 486
    Top = 83
  end
  object qry_Interdict: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'SELECT     *'
      'FROM         Pay.Interdicts '
      'WHERE  0=1'
      'AND (State = 0)')
    Left = 640
    Top = 9
    object qry_InterdictInterdictID: TIntegerField
      FieldName = 'InterdictID'
    end
    object qry_InterdictInterdictNo: TStringField
      FieldName = 'InterdictNo'
      Size = 50
    end
    object qry_InterdictInterdictDate: TStringField
      FieldName = 'InterdictDate'
      FixedChar = True
      Size = 10
    end
    object qry_InterdictsubcompanyCode: TIntegerField
      FieldName = 'subcompanyCode'
    end
    object qry_InterdictPersonelNo: TIntegerField
      FieldName = 'PersonelNo'
    end
    object qry_InterdictOfficeCode: TIntegerField
      FieldName = 'OfficeCode'
    end
    object qry_InterdictjobCode: TIntegerField
      FieldName = 'jobCode'
    end
    object qry_Interdictgrade: TIntegerField
      FieldName = 'grade'
    end
    object qry_InterdictjobCity: TIntegerField
      FieldName = 'jobCity'
    end
    object qry_InterdictInterdicType: TIntegerField
      FieldName = 'InterdicType'
    end
    object qry_InterdictEmployTypeID: TIntegerField
      FieldName = 'EmployTypeID'
    end
    object qry_InterdictInterdicStartDate: TStringField
      FieldName = 'InterdicStartDate'
      FixedChar = True
      Size = 10
    end
    object qry_InterdictemployDaytime: TWordField
      FieldName = 'employDaytime'
    end
    object qry_InterdictAccTopicCode: TIntegerField
      FieldName = 'AccTopicCode'
    end
    object qry_InterdictAccDetailCode: TIntegerField
      FieldName = 'AccDetailCode'
    end
    object qry_InterdictAccCTopicCode: TIntegerField
      FieldName = 'AccCTopicCode'
    end
    object qry_InterdictAccCTopicCode2: TIntegerField
      FieldName = 'AccCTopicCode2'
    end
    object qry_InterdictKargozinyNote_L1: TMemoField
      FieldName = 'KargozinyNote_L1'
      BlobType = ftMemo
    end
    object qry_InterdictKargozinyNote_L2: TMemoField
      FieldName = 'KargozinyNote_L2'
      BlobType = ftMemo
    end
    object qry_InterdictState: TWordField
      FieldName = 'State'
    end
    object qry_InterdictUserID: TIntegerField
      FieldName = 'UserID'
    end
    object qry_InterdictTotalYearsWork: TWordField
      FieldName = 'TotalYearsWork'
    end
    object qry_InterdictInterdicEndDate: TStringField
      FieldName = 'InterdicEndDate'
      FixedChar = True
      Size = 10
    end
    object qry_InterdictComment: TMemoField
      FieldName = 'Comment'
      BlobType = ftMemo
    end
    object qry_InterdictInterdicStartDateM: TDateTimeField
      FieldName = 'InterdicStartDateM'
    end
    object qry_InterdictTaxCalculationType: TIntegerField
      FieldName = 'TaxCalculationType'
    end
    object qry_InterdictinsuranceID: TWordField
      FieldName = 'insuranceID'
    end
    object qry_InterdictProjectID: TIntegerField
      FieldName = 'ProjectID'
    end
    object qry_InterdictStandardEmployAmount: TBCDField
      FieldName = 'StandardEmployAmount'
      Precision = 19
    end
    object qry_InterdictManegePercent: TFloatField
      FieldName = 'ManegePercent'
    end
    object qry_InterdictOfficeManegePercent: TFloatField
      FieldName = 'OfficeManegePercent'
    end
    object qry_InterdictGroupID: TIntegerField
      FieldName = 'GroupID'
    end
    object qry_InterdictPayehNo: TIntegerField
      FieldName = 'PayehNo'
    end
    object qry_InterdictGrpExpense: TIntegerField
      FieldName = 'GrpExpense'
    end
    object qry_InterdictSubFunctionID: TIntegerField
      FieldName = 'SubFunctionID'
    end
    object qry_InterdictSubInterdictID: TIntegerField
      FieldName = 'SubInterdictID'
    end
    object qry_InterdictLastInterdictID: TIntegerField
      FieldName = 'LastInterdictID'
    end
    object qry_InterdictAccCTopicCode3: TIntegerField
      FieldName = 'AccCTopicCode3'
    end
    object qry_InterdictGradeDate: TStringField
      FieldName = 'GradeDate'
      FixedChar = True
      Size = 10
    end
    object qry_InterdictHasRetard: TWordField
      FieldName = 'HasRetard'
    end
    object qry_InterdictInsuranceStartDate: TStringField
      FieldName = 'InsuranceStartDate'
      FixedChar = True
      Size = 10
    end
    object qry_InterdictInsuranceEndDate: TStringField
      FieldName = 'InsuranceEndDate'
      FixedChar = True
      Size = 10
    end
    object qry_InterdictjobsGroup: TIntegerField
      FieldName = 'jobsGroup'
    end
    object qry_InterdictTaxMounth: TWordField
      FieldName = 'TaxMounth'
    end
    object qry_InterdictTaxDays: TSmallintField
      FieldName = 'TaxDays'
    end
    object qry_InterdictLastUser: TWideStringField
      FieldName = 'LastUser'
    end
    object qry_InterdictFirstUser: TWideStringField
      FieldName = 'FirstUser'
    end
    object qry_InterdictAidNo1: TStringField
      FieldName = 'AidNo1'
    end
    object qry_InterdictAidDate1: TStringField
      FieldName = 'AidDate1'
      FixedChar = True
      Size = 10
    end
    object qry_InterdictTypeOfContract: TIntegerField
      FieldName = 'TypeOfContract'
    end
    object qry_InterdictStandardClock: TBCDField
      FieldName = 'StandardClock'
      Precision = 18
    end
  end
  object Src_Interdict: TDataSource
    DataSet = qry_Interdict
    Left = 562
    Top = 13
  end
end

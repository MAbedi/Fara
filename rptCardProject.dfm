inherited rptCardProjectF: TrptCardProjectF
  Caption = #1705#1575#1585#1578' '#1662#1585#1608#1688#1607
  ClientHeight = 576
  ClientWidth = 802
  OnResize = FormResize
  ExplicitWidth = 818
  ExplicitHeight = 615
  TextHeight = 13
  object spl3: TSplitter [0]
    Left = 0
    Top = 472
    Width = 802
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 437
    ExplicitWidth = 806
  end
  inherited PnlUnderButton: TPanel
    Top = 535
    Width = 802
    ExplicitTop = 536
    ExplicitWidth = 806
    object btn1: TBitBtn
      Left = 725
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 1
      OnClick = btnSearchReciptNumberClick
    end
    object btnBtnPrint: TBitBtn
      Left = 649
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Anchors = [akRight, akBottom]
      Caption = #1670#1575#1662' (F7)'
      TabOrder = 2
    end
    object dbnvgr1: TDBNavigator
      Left = 382
      Top = 10
      Width = 80
      Height = 20
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Anchors = [akLeft, akTop, akRight]
      Flat = True
      TabOrder = 3
    end
  end
  inherited Panel2: TPanel
    Width = 802
    ExplicitWidth = 806
    inherited ImgTemplate: TImage
      Left = 801
      ExplicitLeft = 801
    end
    inherited lblCaption: TLabel
      Left = 698
      Height = 16
      ExplicitLeft = 698
    end
    object lbl1: TLabel
      Left = 107
      Top = 9
      Width = 68
      Height = 13
      Alignment = taRightJustify
      Caption = #1588#1606#1575#1587#1607' '#1602#1585#1575#1585#1583#1575#1583
      FocusControl = edtCaseNo
    end
    object lbl2: TLabel
      Left = 107
      Top = 31
      Width = 21
      Height = 13
      Caption = #1578#1575#1585#1610#1582
      FocusControl = edtFromDate
    end
    object btnSearchReciptNumber: TSpeedButton
      Left = 9
      Top = 4
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = btnSearchReciptNumberClick
    end
    object edtCaseNo: TDBEdit
      Left = 34
      Top = 6
      Width = 68
      Height = 19
      Color = clInactiveCaption
      Ctl3D = False
      DataField = 'CaseNo'
      DataSource = srcContracts
      ParentCtl3D = False
      TabOrder = 0
    end
    object edtFromDate: TDBEdit
      Left = 9
      Top = 26
      Width = 93
      Height = 21
      Color = clInactiveCaption
      DataField = 'FromDate'
      DataSource = srcContracts
      TabOrder = 1
    end
  end
  inherited Panel3: TPanel
    Top = 232
    Width = 802
    Height = 240
    ExplicitTop = 232
    ExplicitWidth = 806
    ExplicitHeight = 240
    object spl1: TSplitter
      Left = 2
      Top = 90
      Width = 802
      Height = 3
      Cursor = crVSplit
      Align = alBottom
      ExplicitLeft = -12
      ExplicitTop = 0
    end
    object spl2: TSplitter
      Left = 2
      Top = 2
      Width = 802
      Height = 3
      Cursor = crVSplit
      Align = alTop
    end
    object dbgrdAccounting: TDBGrid
      Tag = 111
      Left = 2
      Top = 93
      Width = 802
      Height = 145
      Align = alBottom
      DataSource = srcAccounting
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'TopicCode'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MoeenName_L1'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Debt'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Credit'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BalanceDebt'
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BalanceCredit'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bes'
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bed'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MandehBed'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Mandehbes'
          Width = 73
          Visible = True
        end>
    end
    object pnl2: TPanel
      Left = 2
      Top = 5
      Width = 802
      Height = 85
      Align = alClient
      TabOrder = 1
      object lblSalaryBankName: TLabel
        Left = 711
        Top = 71
        Width = 90
        Height = 13
        Align = alBottom
        Caption = 'lblSalaryBankName'
        OnDblClick = actSalaryDBNameExecute
      end
      object dbgrdSalary: TDBGrid
        Tag = 111
        Left = 368
        Top = 1
        Width = 433
        Height = 70
        Align = alRight
        DataSource = srcSalary
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #1588#1605#1575#1585#1607#8204#1662#1585#1587#1606#1604#1610
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1605#1588#1582#1589#1575#1578#8204#1662#1585#1587#1606#1604
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1605#1575#1607
            Width = 23
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1711#1585#1608#1607#8204#1588#1594#1604#1610
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1603#1604#8204#1603#1575#1585#1603#1585#1583
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1605#1576#1604#1594#8204#1603#1604
            Width = 96
            Visible = True
          end>
      end
      object dbgrdOperations: TDBGrid
        Tag = 111
        Left = 1
        Top = 1
        Width = 367
        Height = 70
        Align = alClient
        DataSource = srcOperations
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taLeftJustify
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'OperationId'
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = '_StuffName'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = '_UnitName'
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Amount'
            Width = 97
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BasePrice'
            Width = 96
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OverheadPrice'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TotalPrice'
            ReadOnly = True
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FarmId'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PieceId'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ContractOperationNote'
            Width = 84
            Visible = True
          end>
      end
    end
  end
  object pnl1: TPanel [4]
    Left = 0
    Top = 475
    Width = 802
    Height = 60
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvNone
    TabOrder = 3
    ExplicitWidth = 806
    ExplicitHeight = 61
    object grp1: TGroupBox
      Left = 385
      Top = 0
      Width = 421
      Height = 61
      Align = alClient
      Caption = #1578#1608#1590#1610#1581#1575#1578
      TabOrder = 0
      object dbmmoNote: TDBMemo
        Tag = 111
        Left = 2
        Top = 15
        Width = 417
        Height = 44
        Align = alClient
        DataField = 'Note'
        DataSource = srcContracts
        TabOrder = 0
      end
    end
    object grp2: TGroupBox
      Left = 0
      Top = 0
      Width = 385
      Height = 61
      Align = alLeft
      Caption = #1587#1575#1740#1585' '#1575#1591#1604#1575#1593#1575#1578
      TabOrder = 1
      object dbgrdContractsProperties: TDBGrid
        Tag = 111
        Left = 2
        Top = 15
        Width = 381
        Height = 44
        TabStop = False
        Align = alClient
        Color = clCream
        DataSource = srcContractsProperties
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = '_Name'
            Width = 129
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PropertiesEntity'
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PropertiesNote'
            Width = 45
            Visible = True
          end>
      end
    end
  end
  object pnl3: TPanel [5]
    Left = 0
    Top = 53
    Width = 802
    Height = 179
    Align = alTop
    TabOrder = 4
    ExplicitWidth = 806
    DesignSize = (
      802
      179)
    object lbl4: TLabel
      Left = 704
      Top = 6
      Width = 91
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1605#1608#1590#1608#1593' '#1603#1604#1610' '#1602#1585#1575#1585' '#1583#1575#1583
      FocusControl = edtContractTopic
      ExplicitLeft = 712
    end
    object lbl5: TLabel
      Left = 704
      Top = 28
      Width = 22
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1585#1583#1740#1601
      FocusControl = edtContractRow
      ExplicitLeft = 712
    end
    object lbl6: TLabel
      Left = 704
      Top = 50
      Width = 63
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1588#1605#1575#1585#1607' '#1602#1585#1575#1585#1583#1575#1583
      FocusControl = edtContractNo
      ExplicitLeft = 712
    end
    object lbl7: TLabel
      Left = 413
      Top = 6
      Width = 50
      Height = 13
      Caption = #1578#1575#1585#1610#1582' '#1575#1606#1593#1602#1575#1583
      FocusControl = edtContractDate
    end
    object lbl8: TLabel
      Left = 704
      Top = 72
      Width = 63
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1603#1583#1608#1606#1575#1605' '#1603#1575#1585#1601#1585#1605#1575
      FocusControl = edtEmployerId
      ExplicitLeft = 712
    end
    object lbl9: TLabel
      Left = 140
      Top = 28
      Width = 70
      Height = 13
      Caption = #1603#1583#1603#1575#1585#1711#1575#1607' '#1588#1585#1603#1578
      FocusControl = edtWorkShopId
    end
    object lbl10: TLabel
      Left = 413
      Top = 94
      Width = 52
      Height = 13
      Caption = #1578#1575#1585#1610#1582' '#1588#1585#1608#1593
      FocusControl = edtStartDate
    end
    object lbl11: TLabel
      Left = 413
      Top = 50
      Width = 77
      Height = 13
      Caption = #1578#1575#1585#1610#1582' '#1662#1575#1610#1575#1606' '#1601#1593#1575#1604#1610#1578
      FocusControl = edtEndDate
    end
    object lbl12: TLabel
      Left = 413
      Top = 116
      Width = 39
      Height = 13
      Caption = #1605#1583#1578'-'#1605#1575#1607
      FocusControl = edtExecutionTime
    end
    object lbl13: TLabel
      Left = 551
      Top = 408
      Width = 86
      Height = 13
      Caption = #1578#1575#1585#1610#1582' '#1588#1585#1608#1593' '#1601#1593#1575#1604#1610#1578
      FocusControl = edtActivityStartDate
    end
    object lbl14: TLabel
      Left = 413
      Top = 28
      Width = 86
      Height = 13
      Caption = #1578#1575#1585#1610#1582' '#1588#1585#1608#1593' '#1601#1593#1575#1604#1610#1578
      FocusControl = edtActivityStartDate1
    end
    object lbl15: TLabel
      Left = 413
      Top = 72
      Width = 126
      Height = 13
      Caption = #1578#1575#1585#1610#1582' '#1662#1740#1588' '#1576#1740#1606#1740' '#1662#1575#1610#1575#1606' '#1601#1593#1575#1604#1610#1578
      FocusControl = edtAnticipateDate
    end
    object lbl16: TLabel
      Left = 140
      Top = 6
      Width = 80
      Height = 13
      Caption = #1605#1576#1604#1594' '#1575#1608#1604#1610#1607' '#1602#1585#1575#1585#1583#1575#1583' '
      FocusControl = edtContractBasePrice
    end
    object lbl17: TLabel
      Left = 704
      Top = 94
      Width = 47
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1606#1575#1605' '#1603#1575#1585#1601#1585#1605#1575
      FocusControl = edt_EmployerId
      ExplicitLeft = 712
    end
    object lbl18: TLabel
      Left = 140
      Top = 50
      Width = 59
      Height = 13
      Caption = #1603#1575#1585#1711#1575#1607' '#1588#1585#1603#1578
      FocusControl = edt_WorkShopId
    end
    object lbl19: TLabel
      Left = 704
      Top = 138
      Width = 78
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1588#1605#1575#1585#1607' '#1583#1585#1582#1608#1575#1587#1578
      FocusControl = edtAidNo
      ExplicitLeft = 712
    end
    object lbl20: TLabel
      Left = 413
      Top = 138
      Width = 69
      Height = 13
      Caption = #1578#1575#1585#1610#1582' '#1583#1585#1582#1608#1575#1587#1578
      FocusControl = edtAidDate
    end
    object lbl21: TLabel
      Left = 704
      Top = 116
      Width = 34
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1603#1583' '#1601#1606#1610
      FocusControl = edtTechnicalCode
      ExplicitLeft = 712
    end
    object lbl22: TLabel
      Left = 140
      Top = 72
      Width = 130
      Height = 13
      Caption = #1588#1605#1575#1585#1607' '#1575#1602#1578#1589#1575#1583#1740' '#1591#1585#1601' '#1602#1585#1575#1585#1583#1575#1583
      FocusControl = edtEconomicNumber
    end
    object lbl23: TLabel
      Left = 140
      Top = 94
      Width = 93
      Height = 13
      Caption = #1603#1583' '#1605#1604#1610' '#1591#1585#1601' '#1602#1585#1575#1585#1583#1575#1583
      FocusControl = edtNationalID
    end
    object lbl24: TLabel
      Left = 704
      Top = 160
      Width = 83
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1570#1583#1585#1587' '#1591#1585#1601' '#1602#1585#1575#1585#1583#1575#1583
      FocusControl = edtAddress
      ExplicitLeft = 712
    end
    object lbl25: TLabel
      Left = 140
      Top = 116
      Width = 21
      Height = 13
      Caption = #1578#1604#1601#1606
      FocusControl = edtTel
    end
    object edtContractTopic: TDBEdit
      Left = 545
      Top = 2
      Width = 156
      Height = 19
      Anchors = [akLeft, akTop, akRight]
      Color = clInactiveCaption
      Ctl3D = False
      DataField = 'ContractTopic'
      DataSource = srcContracts
      ParentCtl3D = False
      TabOrder = 0
      ExplicitWidth = 164
    end
    object edtContractRow: TDBEdit
      Left = 545
      Top = 24
      Width = 156
      Height = 19
      Anchors = [akLeft, akTop, akRight]
      Color = clInactiveCaption
      Ctl3D = False
      DataField = 'ContractRow'
      DataSource = srcContracts
      ParentCtl3D = False
      TabOrder = 1
      ExplicitWidth = 164
    end
    object edtContractNo: TDBEdit
      Left = 545
      Top = 46
      Width = 156
      Height = 19
      Anchors = [akLeft, akTop, akRight]
      Color = clInactiveCaption
      Ctl3D = False
      DataField = 'ContractNo'
      DataSource = srcContracts
      ParentCtl3D = False
      TabOrder = 2
      ExplicitWidth = 164
    end
    object edtContractDate: TDBEdit
      Left = 276
      Top = 2
      Width = 134
      Height = 19
      Color = clInactiveCaption
      Ctl3D = False
      DataField = 'ContractDate'
      DataSource = srcContracts
      ParentCtl3D = False
      TabOrder = 3
    end
    object edtEmployerId: TDBEdit
      Left = 545
      Top = 68
      Width = 156
      Height = 19
      Anchors = [akLeft, akTop, akRight]
      Color = clInactiveCaption
      Ctl3D = False
      DataField = 'EmployerId'
      DataSource = srcContracts
      ParentCtl3D = False
      TabOrder = 4
      ExplicitWidth = 164
    end
    object edtWorkShopId: TDBEdit
      Left = 4
      Top = 24
      Width = 134
      Height = 19
      Color = clInactiveCaption
      Ctl3D = False
      DataField = 'WorkShopId'
      DataSource = srcContracts
      ParentCtl3D = False
      TabOrder = 5
    end
    object edtStartDate: TDBEdit
      Left = 276
      Top = 90
      Width = 134
      Height = 19
      Color = clInactiveCaption
      Ctl3D = False
      DataField = 'StartDate'
      DataSource = srcContracts
      ParentCtl3D = False
      TabOrder = 6
    end
    object edtEndDate: TDBEdit
      Left = 276
      Top = 46
      Width = 134
      Height = 19
      Color = clInactiveCaption
      Ctl3D = False
      DataField = 'EndDate'
      DataSource = srcContracts
      ParentCtl3D = False
      TabOrder = 7
    end
    object edtExecutionTime: TDBEdit
      Left = 276
      Top = 112
      Width = 134
      Height = 19
      Color = clInactiveCaption
      Ctl3D = False
      DataField = 'ExecutionTime'
      DataSource = srcContracts
      ParentCtl3D = False
      TabOrder = 8
    end
    object edtActivityStartDate: TDBEdit
      Left = 600
      Top = 424
      Width = 134
      Height = 21
      DataField = 'ActivityStartDate'
      DataSource = srcContracts
      TabOrder = 9
    end
    object edtActivityStartDate1: TDBEdit
      Left = 276
      Top = 24
      Width = 134
      Height = 19
      Color = clInactiveCaption
      Ctl3D = False
      DataField = 'ActivityStartDate'
      DataSource = srcContracts
      ParentCtl3D = False
      TabOrder = 10
    end
    object edtAnticipateDate: TDBEdit
      Left = 276
      Top = 68
      Width = 134
      Height = 19
      Color = clInactiveCaption
      Ctl3D = False
      DataField = 'AnticipateDate'
      DataSource = srcContracts
      ParentCtl3D = False
      TabOrder = 11
    end
    object edtContractBasePrice: TDBEdit
      Left = 4
      Top = 2
      Width = 134
      Height = 19
      Color = clInactiveCaption
      Ctl3D = False
      DataField = 'ContractBasePrice'
      DataSource = srcContracts
      ParentCtl3D = False
      TabOrder = 12
    end
    object edt_EmployerId: TDBEdit
      Left = 545
      Top = 90
      Width = 156
      Height = 19
      Anchors = [akLeft, akTop, akRight]
      Color = clInactiveCaption
      Ctl3D = False
      DataField = '_EmployerId'
      DataSource = srcContracts
      ParentCtl3D = False
      TabOrder = 13
      ExplicitWidth = 164
    end
    object edt_WorkShopId: TDBEdit
      Left = 4
      Top = 46
      Width = 134
      Height = 19
      Color = clInactiveCaption
      Ctl3D = False
      DataField = '_WorkShopId'
      DataSource = srcContracts
      ParentCtl3D = False
      TabOrder = 14
    end
    object edtAidNo: TDBEdit
      Left = 545
      Top = 134
      Width = 156
      Height = 19
      Anchors = [akLeft, akTop, akRight]
      Color = clInactiveCaption
      Ctl3D = False
      DataField = 'AidNo'
      DataSource = srcContracts
      ParentCtl3D = False
      TabOrder = 15
      ExplicitWidth = 164
    end
    object edtAidDate: TDBEdit
      Left = 276
      Top = 134
      Width = 134
      Height = 19
      Color = clInactiveCaption
      Ctl3D = False
      DataField = 'AidDate'
      DataSource = srcContracts
      ParentCtl3D = False
      TabOrder = 16
    end
    object edtTechnicalCode: TDBEdit
      Left = 545
      Top = 112
      Width = 156
      Height = 19
      Anchors = [akLeft, akTop, akRight]
      Color = clInactiveCaption
      Ctl3D = False
      DataField = 'TechnicalCode'
      DataSource = srcContracts
      ParentCtl3D = False
      TabOrder = 17
      ExplicitWidth = 164
    end
    object edtEconomicNumber: TDBEdit
      Left = 4
      Top = 68
      Width = 134
      Height = 19
      Color = clInactiveCaption
      Ctl3D = False
      DataField = 'EconomicNumber'
      DataSource = srcContracts
      ParentCtl3D = False
      TabOrder = 18
    end
    object edtNationalID: TDBEdit
      Left = 4
      Top = 90
      Width = 134
      Height = 19
      Color = clInactiveCaption
      Ctl3D = False
      DataField = 'NationalID'
      DataSource = srcContracts
      ParentCtl3D = False
      TabOrder = 19
    end
    object edtAddress: TDBEdit
      Left = 4
      Top = 156
      Width = 697
      Height = 19
      Anchors = [akLeft, akTop, akRight]
      Color = clInactiveCaption
      Ctl3D = False
      DataField = 'Address'
      DataSource = srcContracts
      ParentCtl3D = False
      TabOrder = 20
      ExplicitWidth = 705
    end
    object edtTel: TDBEdit
      Left = 4
      Top = 112
      Width = 134
      Height = 19
      Color = clInactiveCaption
      Ctl3D = False
      DataField = 'Tel'
      DataSource = srcContracts
      ParentCtl3D = False
      TabOrder = 21
    end
  end
  inherited ActionList: TActionList
    Left = 320
    Top = 0
    object actSalaryDBName: TAction
      Caption = #1578#1594#1740#1740#1585' '#1576#1575#1606#1705' '#1581#1602#1608#1602' '#1583#1587#1578#1605#1586#1583
      OnExecute = actSalaryDBNameExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662' (F7)'
      ShortCut = 118
      OnExecute = actPrintExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 248
    Top = 1
  end
  object qryContracts: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryContractsAfterScroll
    Parameters = <>
    SQL.Strings = (
      
        'SELECT        Cnt.Contracts.CaseNo, Cnt.Contracts.YearID, Cnt.Co' +
        'ntracts.CustomerGrpId, Cnt.Contracts.ContractTopic, Cnt.Contract' +
        's.InsertDate, Cnt.Contracts.ContractRow, Cnt.Contracts.ContractN' +
        'o, Cnt.Contracts.ContractDate, '
      
        '                         Cnt.Contracts.EmployerId, Cnt.Contracts' +
        '.WorkShopId, Cnt.Contracts.StartDate, Cnt.Contracts.EndDate, Cnt' +
        '.Contracts.ExecutionTime, Cnt.Contracts.ActivityStartDate, Cnt.C' +
        'ontracts.AnticipateDate, '
      
        '                         Cnt.Contracts.ContractBasePrice, Cnt.Co' +
        'ntracts.RefInsuranceNo, Cnt.Contracts.RefInsuranceDate, Cnt.Cont' +
        'racts.InsuranceWorkShopId, Cnt.Contracts.InsuranceBranch, Cnt.Co' +
        'ntracts.RefAssetsNo, '
      
        '                         Cnt.Contracts.RefAssetsDate, Cnt.Contra' +
        'cts.AssetsBranch, Cnt.Contracts.ContractType, Cnt.Contracts.Uppe' +
        'rCaseNo, Cnt.Contracts.ContractsStatus, Cnt.Contracts.FromType, ' +
        'Cnt.Contracts.FromDate, '
      
        '                         Cnt.Contracts.AidNo, Cnt.Contracts.AidD' +
        'ate, Cnt.Contracts.Note, Cnt.Contracts.TechnicalCode, Customers.' +
        'CustName AS _EmployerId, Customers_1.CustName AS _WorkShopId, '
      
        '                         Customers_CaseNo.EconomicNumber, Custom' +
        'ers_CaseNo.NationalID, Customers_CaseNo.Address, Customers_CaseN' +
        'o.Tel'
      'FROM            Cnt.Contracts INNER JOIN'
      
        '                         Customers ON Cnt.Contracts.EmployerId =' +
        ' Customers.CustID INNER JOIN'
      
        '                         Customers AS Customers_1 ON Cnt.Contrac' +
        'ts.WorkShopId = Customers_1.CustID INNER JOIN'
      
        '                         Customers AS Customers_CaseNo ON Cnt.Co' +
        'ntracts.CaseNo = Customers_CaseNo.CustID'
      'WHERE        (Cnt.Contracts.CaseNo <> 0) '
      'ORDER BY Cnt.Contracts.CaseNo')
    Left = 525
    Top = 3
    object qryContractsCaseNo: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607'/'#1588#1606#1575#1587#1607' '#1602#1585#1575#1585#1583#1575#1583
      FieldName = 'CaseNo'
    end
    object qryContractsContractTopic: TWideStringField
      DisplayLabel = #1605#1608#1590#1608#1593' '#1603#1604#1610' '#1602#1585#1575#1585' '#1583#1575#1583
      FieldName = 'ContractTopic'
      Size = 100
    end
    object qryContractsContractRow: TIntegerField
      DisplayLabel = #1585#1583#1740#1601
      FieldName = 'ContractRow'
    end
    object qryContractsContractNo: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1602#1585#1575#1585#1583#1575#1583
      FieldName = 'ContractNo'
      Size = 30
    end
    object qryContractsContractDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1575#1606#1593#1602#1575#1583
      FieldName = 'ContractDate'
      FixedChar = True
      Size = 10
    end
    object qryContractsEmployerId: TIntegerField
      DisplayLabel = #1603#1583#1608#1606#1575#1605' '#1603#1575#1585#1601#1585#1605#1575
      FieldName = 'EmployerId'
    end
    object qryContractsWorkShopId: TIntegerField
      DisplayLabel = #1603#1583#1603#1575#1585#1711#1575#1607' '#1588#1585#1603#1578
      FieldName = 'WorkShopId'
    end
    object qryContractsStartDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1588#1585#1608#1593
      FieldName = 'StartDate'
      FixedChar = True
      Size = 10
    end
    object qryContractsEndDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1662#1575#1610#1575#1606' '#1601#1593#1575#1604#1610#1578
      FieldName = 'EndDate'
      FixedChar = True
      Size = 10
    end
    object qryContractsExecutionTime: TIntegerField
      DisplayLabel = #1605#1583#1578'-'#1605#1575#1607
      FieldName = 'ExecutionTime'
    end
    object qryContractsActivityStartDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1588#1585#1608#1593' '#1601#1593#1575#1604#1610#1578
      FieldName = 'ActivityStartDate'
      FixedChar = True
      Size = 10
    end
    object qryContractsAnticipateDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1662#1740#1588' '#1576#1740#1606#1740' '#1662#1575#1610#1575#1606' '#1601#1593#1575#1604#1610#1578
      FieldName = 'AnticipateDate'
      FixedChar = True
      Size = 10
    end
    object qryContractsContractBasePrice: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1575#1608#1604#1610#1607' '#1602#1585#1575#1585#1583#1575#1583' '
      FieldName = 'ContractBasePrice'
      currency = True
      Precision = 19
    end
    object qryContracts_EmployerId: TStringField
      DisplayLabel = #1606#1575#1605' '#1603#1575#1585#1601#1585#1605#1575
      FieldName = '_EmployerId'
      Size = 60
    end
    object qryContracts_WorkShopId: TStringField
      DisplayLabel = #1603#1575#1585#1711#1575#1607' '#1588#1585#1603#1578
      FieldName = '_WorkShopId'
      Size = 60
    end
    object qryContractsAidNo: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1583#1585#1582#1608#1575#1587#1578
      FieldName = 'AidNo'
      Size = 15
    end
    object qryContractsAidDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1583#1585#1582#1608#1575#1587#1578
      FieldName = 'AidDate'
      FixedChar = True
      Size = 10
    end
    object qryContractsTechnicalCode: TStringField
      DisplayLabel = #1603#1583' '#1601#1606#1610
      FieldName = 'TechnicalCode'
      Size = 30
    end
    object qryContractsEconomicNumber: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1575#1602#1578#1589#1575#1583#1740' '#1591#1585#1601' '#1602#1585#1575#1585#1583#1575#1583
      FieldName = 'EconomicNumber'
    end
    object qryContractsNationalID: TStringField
      DisplayLabel = #1603#1583' '#1605#1604#1610' '#1591#1585#1601' '#1602#1585#1575#1585#1583#1575#1583
      FieldName = 'NationalID'
      Size = 12
    end
    object qryContractsAddress: TStringField
      DisplayLabel = #1570#1583#1585#1587' '#1591#1585#1601' '#1602#1585#1575#1585#1583#1575#1583
      FieldName = 'Address'
      Size = 300
    end
    object qryContractsTel: TStringField
      DisplayLabel = #1578#1604#1601#1606
      FieldName = 'Tel'
      Size = 30
    end
    object qryContractsInsuranceWorkShopId: TStringField
      FieldName = 'InsuranceWorkShopId'
      Size = 15
    end
    object qryContractsRefInsuranceNo: TStringField
      FieldName = 'RefInsuranceNo'
    end
    object qryContractsRefAssetsNo: TStringField
      FieldName = 'RefAssetsNo'
    end
    object qryContractsFromType: TIntegerField
      FieldName = 'FromType'
    end
    object qryContractsNote: TStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'Note'
      Size = 1000
    end
    object qryContractsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryContractsCustomerGrpId: TIntegerField
      FieldName = 'CustomerGrpId'
    end
    object qryContractsInsertDate: TDateTimeField
      FieldName = 'InsertDate'
    end
    object qryContractsRefInsuranceDate: TStringField
      FieldName = 'RefInsuranceDate'
      FixedChar = True
      Size = 10
    end
    object qryContractsInsuranceBranch: TWideStringField
      FieldName = 'InsuranceBranch'
      Size = 50
    end
    object qryContractsRefAssetsDate: TStringField
      FieldName = 'RefAssetsDate'
      FixedChar = True
      Size = 10
    end
    object qryContractsContractType: TIntegerField
      FieldName = 'ContractType'
    end
    object qryContractsContractsStatus: TWordField
      FieldName = 'ContractsStatus'
    end
    object qryContractsAssetsBranch: TStringField
      FieldName = 'AssetsBranch'
      Size = 50
    end
    object qryContractsUpperCaseNo: TIntegerField
      FieldName = 'UpperCaseNo'
    end
    object qryContractsFromDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'FromDate'
      FixedChar = True
      Size = 10
    end
  end
  object srcContracts: TDataSource
    AutoEdit = False
    DataSet = qryContracts
    Left = 445
    Top = 2
  end
  object qryContractsProperties: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'CaseNo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT        Cnt.ContractsProperties.LookUpID, LookUps.Name AS ' +
        '_Name, Cnt.ContractsProperties.PropertiesEntity, Cnt.ContractsPr' +
        'operties.PropertiesNote'
      'FROM            Cnt.ContractsProperties INNER JOIN'
      
        '                         LookUps ON Cnt.ContractsProperties.Look' +
        'UpID = LookUps.LookUpID'
      'WHERE        (Cnt.ContractsProperties.CaseNo =  :CaseNo )')
    Left = 200
    Top = 377
    object qryContractsPropertiesLookUpID: TIntegerField
      FieldName = 'LookUpID'
    end
    object qryContractsProperties_Name: TStringField
      DisplayLabel = #1606#1608#1593
      FieldName = '_Name'
      Size = 50
    end
    object qryContractsPropertiesPropertiesEntity: TFMTBCDField
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'PropertiesEntity'
      Precision = 20
      Size = 4
    end
    object qryContractsPropertiesPropertiesNote: TStringField
      DisplayLabel = #1578#1608#1590#1740#1581#1575#1578
      FieldName = 'PropertiesNote'
      Size = 200
    end
  end
  object srcContractsProperties: TDataSource
    DataSet = qryContractsProperties
    Left = 72
    Top = 376
  end
  object qryOperations: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CaseNo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT        StuffCoding.c_StuffName AS _StuffName, Cnt.Contrac' +
        'tOperations.ContractOperationId, Cnt.ContractOperations.Operatio' +
        'nId, Cnt.ContractOperations.Amount, Cnt.ContractOperations.BaseP' +
        'rice, '
      
        '                         Cnt.ContractOperations.TotalPrice, Cnt.' +
        'ContractOperations.FarmId, Cnt.ContractOperations.PieceId, Cnt.C' +
        'ontractOperations.ContractOperationNote, Cnt.ContractOperations.' +
        'OverheadPrice, '
      
        '                         Units.UnitName AS _UnitName, StuffCodin' +
        'g.SellPrice1 AS _SellPrice1'
      'FROM            Cnt.ContractOperations LEFT OUTER JOIN'
      
        '                         StuffCoding ON Cnt.ContractOperations.O' +
        'perationId = StuffCoding.c_StuffCode LEFT OUTER JOIN'
      
        '                         Units ON StuffCoding.n_UnitCode = Units' +
        '.UnitCode'
      'WHERE        (Cnt.ContractOperations.CaseNo = :CaseNo)')
    Left = 485
    Top = 355
    object qryOperationsContractOperationId: TIntegerField
      FieldName = 'ContractOperationId'
    end
    object qryOperationsOperationId: TLargeintField
      DisplayLabel = #1603#1583' '#1593#1605#1604#1610#1575#1578
      FieldName = 'OperationId'
    end
    object qryOperations_StuffName: TStringField
      DisplayLabel = #1588#1585#1581' '#1593#1605#1604#1610#1575#1578
      FieldName = '_StuffName'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qryOperations_UnitName: TStringField
      DisplayLabel = #1605#1576#1606#1575#1610' '#1608#1575#1581#1583
      FieldName = '_UnitName'
      ReadOnly = True
      Size = 100
    end
    object qryOperations_SellPrice1: TCurrencyField
      FieldName = '_SellPrice1'
    end
    object qryOperationsAmount: TBCDField
      DisplayLabel = #1605#1602#1583#1575#1585'/'#1581#1580#1605
      FieldName = 'Amount'
      Precision = 18
    end
    object qryOperationsBasePrice: TBCDField
      DisplayLabel = #1605#1576#1606#1575#1610' '#1602#1610#1605#1578
      FieldName = 'BasePrice'
      currency = True
      Precision = 19
    end
    object qryOperationsOverheadPrice: TBCDField
      DisplayLabel = #1607#1586#1740#1606#1607' '#1587#1585#1576#1575#1585
      FieldName = 'OverheadPrice'
      currency = True
      Precision = 19
    end
    object qryOperationsTotalPrice: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1603#1604
      FieldName = 'TotalPrice'
      currency = True
      Precision = 19
    end
    object qryOperationsFarmId: TIntegerField
      DisplayLabel = #1605#1586#1585#1593#1607
      FieldName = 'FarmId'
    end
    object qryOperationsPieceId: TIntegerField
      DisplayLabel = #1602#1591#1593#1607
      FieldName = 'PieceId'
    end
    object qryOperationsContractOperationNote: TWideStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'ContractOperationNote'
      Size = 500
    end
  end
  object srcOperations: TDataSource
    AutoEdit = False
    DataSet = qryOperations
    Left = 269
    Top = 362
  end
  object qrySalary: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterOpen = qrySalaryAfterOpen
    Parameters = <
      item
        Name = 'MounthNoFrom'
        DataType = ftWideString
        Size = 1
        Value = '1'
      end
      item
        Name = 'MounthNoTo'
        DataType = ftWideString
        Size = 2
        Value = '12'
      end
      item
        Name = 'CaseNo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'OfficeCodeFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'OfficeCodeTo'
        DataType = ftWideString
        Size = 4
        Value = '9999'
      end>
    SQL.Strings = (
      
        'SELECT     Functions.ProjectID,  Functions.PersonelNo as ['#1588#1605#1575#1585#1607#8204 +
        #1662#1585#1587#1606#1604#1610'], EmployeeInfo.PersonelName_L1 as ['#1605#1588#1582#1589#1575#1578#8204#1662#1585#1587#1606#1604'], Functio' +
        'ns.Mounth As ['#1605#1575#1607'], FormsInfo_1.InfoName_L1 as ['#1711#1585#1608#1607#8204#1588#1594#1604#1610']'
      ''
      
        ',  sum(case when  dbo.GetYearMounth(functions.mounth,Functions.Y' +
        'earID)  between substring(interdicstartdate,1, 5) and substring(' +
        'interdicenddate,1, 5)then functions.functiontime  else 0 end) as' +
        ' ['#1603#1604#8204#1603#1575#1585#1603#1585#1583']'
      ''
      
        ',  sum(case when  dbo.GetYearMounth(functions.mounth,Functions.Y' +
        'earID)  between substring(interdicstartdate,1, 5) and substring(' +
        'interdicenddate,1, 5) then PersonelDecExt.EmployerAmount '
      '    else 0  end)    as ['#1605#1576#1604#1594#8204#1603#1604']'
      'FROM         FormsInfo FormsInfo_3 INNER JOIN'
      
        '                      FormsInfo FormsInfo_2 ON FormsInfo_3.FormI' +
        'nfoID = FormsInfo_2.PrvInfoID RIGHT OUTER JOIN'
      '                      EmployeeInfo INNER JOIN'
      
        '                      Functions ON EmployeeInfo.PersonelNo = Fun' +
        'ctions.PersonelNo INNER JOIN'
      
        '                      Interdicts ON Functions.PersonelNo = Inter' +
        'dicts.PersonelNo LEFT OUTER JOIN'
      
        '                      FormsInfo FormsInfo_1 ON Interdicts.jobCod' +
        'e = FormsInfo_1.FormInfoID ON FormsInfo_2.FormInfoID = Functions' +
        '.ProjectID'
      '                      INNER JOIN'
      
        '                    PersonelDecExt ON Interdicts.PersonelNo = Pe' +
        'rsonelDecExt.PersonelNo'
      ''
      'LEFT OUTER JOIN'
      
        '                      FormsInfo AS FormsInfoOffice ON Functions.' +
        'OfficeCode = FormsInfoOffice.FormInfoID'
      ''
      
        'Where    ( Functions.Mounth  BETWEEN :MounthNoFrom  AND :MounthN' +
        'oTo ) AND'
      'FormsInfo_2.InfoID=:CaseNo'
      
        'And   (FormsInfoOffice.InfoID  between :OfficeCodeFrom and :Offi' +
        'ceCodeTo )'
      
        'GROUP BY Functions.ProjectID, Functions.Mounth, Functions.Person' +
        'elNo, EmployeeInfo.PersonelName_L1, FormsInfo_1.InfoName_L1'
      
        'having  sum(case when  dbo.GetYearMounth(functions.mounth,Functi' +
        'ons.YearID)  between substring(interdicstartdate,1, 5) and subst' +
        'ring(interdicenddate,1, 5)then functions.functiontime  else 0 en' +
        'd)>0'
      ''
      ''
      '')
    Left = 461
    Top = 256
    object qrySalaryProjectID: TIntegerField
      FieldName = 'ProjectID'
    end
    object qrySalaryشمارهپرسنلي: TIntegerField
      FieldName = #1588#1605#1575#1585#1607#8204#1662#1585#1587#1606#1604#1610
    end
    object qrySalaryمشخصاتپرسنل: TStringField
      FieldName = #1605#1588#1582#1589#1575#1578#8204#1662#1585#1587#1606#1604
      ReadOnly = True
      Size = 56
    end
    object qrySalaryماه: TWordField
      FieldName = #1605#1575#1607
    end
    object qrySalaryگروهشغلي: TStringField
      FieldName = #1711#1585#1608#1607#8204#1588#1594#1604#1610
      Size = 255
    end
    object qrySalaryكلكاركرد: TFloatField
      FieldName = #1603#1604#8204#1603#1575#1585#1603#1585#1583
      ReadOnly = True
    end
    object qrySalaryمبلغكل: TBCDField
      FieldName = #1605#1576#1604#1594#8204#1603#1604
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object srcSalary: TDataSource
    AutoEdit = False
    DataSet = qrySalary
    Left = 581
    Top = 263
  end
  object srcAccounting: TDataSource
    AutoEdit = False
    DataSet = qryAccounting
    Left = 581
    Top = 354
  end
  object qryAccounting: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CTopicCode2From'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'CTopicCode2To'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearIDFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearIDTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'CurrencyTypeFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'CurrencyTypeTo'
        DataType = ftWideString
        Size = 3
        Value = '999'
      end
      item
        Name = 'CurrencyKind'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      'SELECT  AccTrialCTopicsBalance2.*'
      '    ,Credit as bes,debt as bed,balanceDebt as MandehBed,'
      
        '    balanceCredit as Mandehbes,AccTrialCTopicsBalance2.TopicCode' +
        ' as _row'
      ''
      'FROM    acc.AccTrialCTopicsBalance2('
      '               DEFAULT,DEFAULT,DEFAULT, DEFAULT , DEFAULT ,'
      '               DEFAULT ,DEFAULT,'
      '               DEFAULT ,DEFAULT,'
      '               :CTopicCode2From ,:CTopicCode2To,'
      '               DEFAULT  , DEFAULT ,'
      '               DEFAULT , DEFAULT ,'
      '               DEFAULT , DEFAULT'
      
        '                ,DEFAULT,DEFAULT , :YearIDFrom , :YearIDTo      ' +
        '         , :CurrencyTypeFrom , :CurrencyTypeTo , :CurrencyKind  ' +
        ') AccTrialCTopicsBalance2')
    Left = 661
    Top = 347
    object qryAccountingYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryAccountingTopicCode: TLargeintField
      DisplayLabel = #1705#1583' '#1581#1587#1575#1576
      FieldName = 'TopicCode'
    end
    object qryAccountingCTopicCode: TIntegerField
      FieldName = 'CTopicCode'
    end
    object qryAccountingMoeenName_L1: TStringField
      DisplayLabel = #1581#1587#1575#1576
      FieldName = 'MoeenName_L1'
      Size = 100
    end
    object qryAccountingMoeenName_L2: TStringField
      FieldName = 'MoeenName_L2'
      Size = 100
    end
    object qryAccountingCTopicName_L1: TStringField
      FieldName = 'CTopicName_L1'
      ReadOnly = True
      Size = 120
    end
    object qryAccountingCTopicName_L2: TStringField
      FieldName = 'CTopicName_L2'
      ReadOnly = True
      Size = 120
    end
    object qryAccountingDebt: TFMTBCDField
      DisplayLabel = #1576#1583#1607#1705#1575#1585
      FieldName = 'Debt'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryAccountingCredit: TFMTBCDField
      DisplayLabel = #1576#1587#1578#1575#1606#1705#1575#1585
      FieldName = 'Credit'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryAccountingBalanceDebt: TFMTBCDField
      DisplayLabel = #1605#1575#1606#1583#1607' '#1576#1583#1607#1705#1575#1585
      FieldName = 'BalanceDebt'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryAccountingBalanceCredit: TFMTBCDField
      DisplayLabel = #1605#1575#1606#1583#1607' '#1576#1587#1578#1575#1606#1705#1575#1585
      FieldName = 'BalanceCredit'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryAccountingbes: TBCDField
      FieldName = 'bes'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryAccountingbed: TBCDField
      FieldName = 'bed'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryAccountingMandehBed: TBCDField
      FieldName = 'MandehBed'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryAccountingMandehbes: TBCDField
      FieldName = 'Mandehbes'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryAccounting_row: TLargeintField
      FieldName = '_row'
    end
  end
  object plnContracts: TppDBPipeline
    DataSource = srcContracts
    OpenDataSource = False
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'plnContracts'
    Left = 367
    Top = 411
    object pfldContractsppField1: TppField
      FieldAlias = 'CaseNo'
      FieldName = 'CaseNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object pfldContractsppField2: TppField
      FieldAlias = 'ContractTopic'
      FieldName = 'ContractTopic'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object pfldContractsppField3: TppField
      FieldAlias = 'ContractRow'
      FieldName = 'ContractRow'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object pfldContractsppField4: TppField
      FieldAlias = 'ContractNo'
      FieldName = 'ContractNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object pfldContractsppField5: TppField
      FieldAlias = 'ContractDate'
      FieldName = 'ContractDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object pfldContractsppField6: TppField
      FieldAlias = 'EmployerId'
      FieldName = 'EmployerId'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object pfldContractsppField7: TppField
      FieldAlias = 'WorkShopId'
      FieldName = 'WorkShopId'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object pfldContractsppField8: TppField
      FieldAlias = 'StartDate'
      FieldName = 'StartDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object pfldContractsppField9: TppField
      FieldAlias = 'EndDate'
      FieldName = 'EndDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object pfldContractsppField10: TppField
      FieldAlias = 'ExecutionTime'
      FieldName = 'ExecutionTime'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object pfldContractsppField11: TppField
      FieldAlias = 'ActivityStartDate'
      FieldName = 'ActivityStartDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object pfldContractsppField12: TppField
      FieldAlias = 'AnticipateDate'
      FieldName = 'AnticipateDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object pfldContractsppField13: TppField
      FieldAlias = 'ContractBasePrice'
      FieldName = 'ContractBasePrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object pfldContractsppField14: TppField
      FieldAlias = '_EmployerId'
      FieldName = '_EmployerId'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object pfldContractsppField15: TppField
      FieldAlias = '_WorkShopId'
      FieldName = '_WorkShopId'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object pfldContractsppField16: TppField
      FieldAlias = 'AidNo'
      FieldName = 'AidNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object pfldContractsppField17: TppField
      FieldAlias = 'AidDate'
      FieldName = 'AidDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object pfldContractsppField18: TppField
      FieldAlias = 'TechnicalCode'
      FieldName = 'TechnicalCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object pfldContractsppField19: TppField
      FieldAlias = 'EconomicNumber'
      FieldName = 'EconomicNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object pfldContractsppField20: TppField
      FieldAlias = 'NationalID'
      FieldName = 'NationalID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object pfldContractsppField21: TppField
      FieldAlias = 'Address'
      FieldName = 'Address'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object pfldContractsppField22: TppField
      FieldAlias = 'Tel'
      FieldName = 'Tel'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object pfldContractsppField23: TppField
      FieldAlias = 'InsuranceWorkShopId'
      FieldName = 'InsuranceWorkShopId'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object pfldContractsppField24: TppField
      FieldAlias = 'RefInsuranceNo'
      FieldName = 'RefInsuranceNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object pfldContractsppField25: TppField
      FieldAlias = 'RefAssetsNo'
      FieldName = 'RefAssetsNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object pfldContractsppField26: TppField
      FieldAlias = 'FromType'
      FieldName = 'FromType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object pfldContractsppField27: TppField
      FieldAlias = 'Note'
      FieldName = 'Note'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object pfldContractsppField28: TppField
      FieldAlias = 'YearID'
      FieldName = 'YearID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object pfldContractsppField29: TppField
      FieldAlias = 'CustomerGrpId'
      FieldName = 'CustomerGrpId'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object pfldContractsppField30: TppField
      FieldAlias = 'InsertDate'
      FieldName = 'InsertDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object pfldContractsppField31: TppField
      FieldAlias = 'RefInsuranceDate'
      FieldName = 'RefInsuranceDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object pfldContractsppField32: TppField
      FieldAlias = 'InsuranceBranch'
      FieldName = 'InsuranceBranch'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object pfldContractsppField33: TppField
      FieldAlias = 'RefAssetsDate'
      FieldName = 'RefAssetsDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object pfldContractsppField34: TppField
      FieldAlias = 'ContractType'
      FieldName = 'ContractType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object pfldContractsppField35: TppField
      FieldAlias = 'ContractsStatus'
      FieldName = 'ContractsStatus'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object pfldContractsppField36: TppField
      FieldAlias = 'AssetsBranch'
      FieldName = 'AssetsBranch'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object pfldContractsppField37: TppField
      FieldAlias = 'UpperCaseNo'
      FieldName = 'UpperCaseNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object pfldContractsppField38: TppField
      FieldAlias = 'FromDate'
      FieldName = 'FromDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
  end
  object plnAccounting: TppDBPipeline
    DataSource = srcAccounting
    OpenDataSource = False
    UserName = 'plnAccounting'
    Left = 447
    Top = 403
    MasterDataPipelineName = 'plnContracts'
    object pfldDBPipeline1ppField1: TppField
      FieldAlias = 'MasterCode'
      FieldName = 'MasterCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField2: TppField
      FieldAlias = 'Name'
      FieldName = 'Name'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = plnContracts
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
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
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
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
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 304
    Top = 411
    Version = '22.02'
    mmColumnWidth = 0
    DataPipelineName = 'plnContracts'
    object ppTitleBand1: TppTitleBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 10848
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DBPipeline1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 20
        Font.Style = [fsBold, fsItalic]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 8202
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 39952
        BandType = 1
        LayerName = Foreground
      end
    end
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 14552
      mmPrintPosition = 0
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Color = clNavy
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 3969
        mmLeft = 203200
        mmTop = 0
        mmWidth = 0
        BandType = 0
        LayerName = Foreground
      end
      object ppLblShowLimitPlace2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblShowLimitPlace2'
        Border.mmPadding = 0
        Caption = #1605#1581#1583#1608#1583#1607' '#1583#1608
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5821
        mmLeft = 3175
        mmTop = 1323
        mmWidth = 9260
        BandType = 0
        LayerName = Foreground
      end
      object ppLblShowLimitPlace1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblShowLimitPlace1'
        Border.mmPadding = 0
        Caption = #1605#1581#1583#1608#1583#1607' '#1610#1603
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 190765
        mmTop = 1323
        mmWidth = 9790
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCurrentDate: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCurrentDate'
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1585#1608#1586
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 3440
        mmTop = 8731
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object LblCurrentDate2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCurrentDate2'
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1585#1608#1586' '#1608' '#1607#1601#1578#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5800
        mmLeft = 44376
        mmTop = 5556
        mmWidth = 16214
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable3'
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yekan'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 23283
        mmTop = 2910
        mmWidth = 7938
        BandType = 0
        LayerName = Foreground
      end
      object pplblYearId: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = 'YearId'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5927
        mmLeft = 66146
        mmTop = 5821
        mmWidth = 8805
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 14023
      mmPrintPosition = 0
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 5821
        mmWidth = 200555
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 40217
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        Border.mmPadding = 0
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4487
        mmLeft = 184680
        mmTop = 1323
        mmWidth = 17187
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 65617
      mmPrintPosition = 0
      object ppDBCalcnum2alphabet: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalcnum2alphabet'
        Border.mmPadding = 0
        DataPipeline = plnContracts
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plnContracts'
        mmHeight = 5821
        mmLeft = 81227
        mmTop = 3704
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object pdbtxtDBnum2alphabet: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'pdbtxtDBnum2alphabet'
        Border.mmPadding = 0
        DataPipeline = plnContracts
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plnContracts'
        mmHeight = 5821
        mmLeft = 129117
        mmTop = 4498
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1587#1578#1608#1606' '#1605#1575#1578#1585#1610#1587#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 9059
        mmLeft = 28575
        mmTop = 265
        mmWidth = 29972
        BandType = 7
        LayerName = Foreground
      end
      object plblcrossXnameYCrossXNameY: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'plblcrossXnameYCrossXNameY'
        Border.mmPadding = 0
        Caption = 'cross1name1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6350
        mmLeft = 33338
        mmTop = 10054
        mmWidth = 17463
        BandType = 7
        LayerName = Foreground
      end
      object pdbtxtCrossXNameY: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'pdbtxtCrossXNameY'
        Border.mmPadding = 0
        DataPipeline = plnAccounting
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plnAccounting'
        mmHeight = 6350
        mmLeft = 32544
        mmTop = 18785
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object pdbclcCrossXNameY: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'pdbclcCrossXNameY'
        Border.mmPadding = 0
        DataPipeline = plnAccounting
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plnAccounting'
        mmHeight = 6350
        mmLeft = 31750
        mmTop = 26988
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object pdbclc2CrossXNameY: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'pdbclc2CrossXNameY'
        Border.mmPadding = 0
        DataPipeline = plnAccounting
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plnAccounting'
        mmHeight = 6350
        mmLeft = 33073
        mmTop = 36513
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
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
  object plnContractsProperties: TppDBPipeline
    DataSource = srcContractsProperties
    OpenDataSource = False
    UserName = 'plnAccounting1'
    Left = 559
    Top = 403
    object pfld1: TppField
      FieldAlias = 'MasterCode'
      FieldName = 'MasterCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object pfld2: TppField
      FieldAlias = 'Name'
      FieldName = 'Name'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
  end
  object plnOperations: TppDBPipeline
    DataSource = srcOperations
    OpenDataSource = False
    UserName = 'plnAccounting2'
    Left = 671
    Top = 411
    object pfld3: TppField
      FieldAlias = 'MasterCode'
      FieldName = 'MasterCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object pfld4: TppField
      FieldAlias = 'Name'
      FieldName = 'Name'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
  end
  object plnSalary: TppDBPipeline
    DataSource = srcSalary
    OpenDataSource = False
    UserName = 'plnSalary'
    Left = 743
    Top = 403
    object pfld5: TppField
      FieldAlias = 'MasterCode'
      FieldName = 'MasterCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object pfld6: TppField
      FieldAlias = 'Name'
      FieldName = 'Name'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
  end
end

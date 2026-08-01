inherited CalcAnnuityF: TCalcAnnuityF
  Left = 293
  Top = 100
  ActiveControl = MskDate
  Caption = #1605#1581#1575#1587#1576#1607' '#1593#1740#1583#1740' '#1608' '#1587#1606#1608#1575#1578' '#1582#1583#1605#1578
  ClientHeight = 649
  ClientWidth = 921
  ExplicitWidth = 929
  ExplicitHeight = 680
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 608
    Width = 921
    TabOrder = 2
    ExplicitTop = 608
    ExplicitWidth = 921
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 7
      Width = 76
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSendToExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      TabOrder = 1
    end
    object BitBtn12: TBitBtn
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
    object BitBtn9: TBitBtn
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
    object BitBtn10: TBitBtn
      AlignWithMargins = True
      Left = 329
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alLeft
      Caption = #1587#1575#1610#1585'...'
      TabOrder = 4
      OnClick = BitBtn10Click
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 761
      Top = 7
      Width = 75
      Height = 27
      Hint = #1605#1581#1575#1587#1576#1607' '#1575#1586' '#1603#1575#1585#1603#1585#1583' '#1605#1575#1607#1610#1575#1606#1607
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alRight
      Caption = #1605#1581#1575#1587#1576#1607' '#1593#1610#1583#1610
      TabOrder = 5
      OnClick = BitBtn2Click
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 674
      Top = 7
      Width = 81
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actAnnuityCal
      Align = alRight
      Caption = #1605#1581#1575#1587#1576#1607' '#1587#1606#1608#1575#1578
      TabOrder = 6
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 842
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actFilter
      Align = alRight
      Caption = #1575#1593#1605#1575#1604' '#1601#1610#1604#1578#1585
      TabOrder = 7
    end
    object btnCalcConst: TBitBtn
      AlignWithMargins = True
      Left = 579
      Top = 7
      Width = 89
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alRight
      Caption = #1605#1581#1575#1587#1576#1607#8207#1576#1575#1605#1576#1604#1594#8207#1579#1575#1576#1578
      TabOrder = 8
      OnClick = btnCalcConstClick
    end
    object btnArchive: TBitBtn
      AlignWithMargins = True
      Left = 411
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alRight
      Caption = #1576#1575#1610#1711#1575#1606#1610
      TabOrder = 9
      OnClick = btnArchiveClick
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 492
      Top = 7
      Width = 81
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actleavePrice
      Align = alRight
      Caption = #1605#1581#1575#1587#1576#1607' '#1605#1585#1582#1589#1740
      TabOrder = 10
    end
  end
  inherited Panel2: TPanel
    Width = 921
    Height = 55
    TabOrder = 0
    ExplicitWidth = 921
    ExplicitHeight = 55
    DesignSize = (
      921
      55)
    inherited ImgTemplate: TImage
      Left = 875
      ExplicitLeft = 751
    end
    inherited lblCaption: TLabel
      Left = 813
      Height = 35
      ExplicitLeft = 813
    end
    inherited lblBaseDate: TLabel
      Left = 353
      ExplicitLeft = 359
    end
  end
  inherited Panel3: TPanel
    Top = 55
    Width = 921
    Height = 553
    TabOrder = 1
    ExplicitTop = 55
    ExplicitWidth = 921
    ExplicitHeight = 553
    object Panel4: TPanel
      Left = 700
      Top = 2
      Width = 219
      Height = 530
      Align = alRight
      BevelOuter = bvNone
      BevelWidth = 2
      TabOrder = 1
      object lblYears: TLabel
        Left = 0
        Top = 0
        Width = 219
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = #1587#1575#1604' 1384'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 48
      end
      object LblShowLimitPlace2: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 475
        Width = 213
        Height = 52
        Align = alBottom
        Alignment = taCenter
        BiDiMode = bdRightToLeft
        Caption = 
          #1662#1587' '#1575#1586' '#1605#1581#1575#1587#1576#1607' '#1608' '#1575#1578#1605#1575#1605' '#1603#1575#1585' '#1580#1607#1578' '#1575#1590#1575#1601#1607' '#1588#1583#1606' '#1605#1576#1604#1594' '#1593#1610#1583#1610' '#1583#1585' '#1583#1610#1587#1603#1578' '#1605#1575#1604#1610#1575#1578 +
          ' '#1576#1575' '#1578#1608#1580#1607' '#1576#1607' '#1578#1575#1585#1610#1582' '#1605#1581#1575#1587#1576#1607' '#1570#1606' '#1585#1575' '#1576#1575#1610#1711#1575#1606#1610' '#1606#1605#1575#1610#1583'.'#8207
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExplicitWidth = 195
      end
      object Label7: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 387
        Width = 213
        Height = 26
        Align = alTop
        Alignment = taCenter
        BiDiMode = bdRightToLeft
        Caption = 
          '   '#1580#1607#1578' '#1605#1581#1575#1587#1576#1607' '#1593#1740#1583#1740#1548' '#1575#1576#1578#1583#1575' '#1605#1581#1575#1587#1576#1607' '#1581#1602#1608#1602' '#1583#1585' '#1605#1575#1607' '#1580#1575#1585#1740' '#1585#1575' '#1576#1575#1740#1711#1575#1606#1740' '#1705#1606#1740 +
          #1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 13996823
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExplicitWidth = 184
      end
      object btnDefault: TSpeedButton
        Tag = 2
        Left = 0
        Top = 300
        Width = 219
        Height = 20
        Align = alTop
        Caption = #1662#1740#1588' '#1601#1585#1590
        OnClick = btnDefaultClick
        ExplicitLeft = 6
        ExplicitTop = 275
        ExplicitWidth = 211
      end
      object Label9: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 419
        Width = 213
        Height = 39
        Align = alTop
        Alignment = taCenter
        BiDiMode = bdRightToLeft
        Caption = 
          #1605#1581#1575#1587#1576#1607' '#1593#1740#1583#1740' '#1583#1608#1604#1578#1740' '#1576#1575' '#1578#1608#1580#1607' '#1576#1607' '#1605#1602#1575#1583#1740#1585' '#1579#1576#1578' '#1588#1583#1607' '#1583#1585' '#1578#1606#1590#1740#1605#1575#1578' '#1587#1740#1587#1578#1605' '#1576#1585#1575 +
          #1740' '#1607#1585' '#1587#1575#1604' '#1605#1740' '#1576#1575#1588#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExplicitWidth = 197
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 185
        Width = 219
        Height = 115
        Align = alTop
        Caption = ' '#1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610' '
        TabOrder = 2
        object SpeedButton1: TSpeedButton
          Tag = 1
          Left = 9
          Top = 13
          Width = 22
          Height = 20
          Caption = '...'
          OnClick = SpeedButton1Click
        end
        object Label1: TLabel
          Left = 121
          Top = 17
          Width = 81
          Height = 13
          Alignment = taRightJustify
          Caption = #1575#1586' '#1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610
        end
        object SpeedButton2: TSpeedButton
          Tag = 2
          Left = 9
          Top = 62
          Width = 22
          Height = 20
          Caption = '...'
          OnClick = SpeedButton1Click
        end
        object Label2: TLabel
          Left = 121
          Top = 66
          Width = 80
          Height = 13
          Alignment = taRightJustify
          Caption = #1578#1575' '#1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610
        end
        object mskPrsnlNo1: TMaskEdit
          Tag = 1
          Left = 33
          Top = 13
          Width = 86
          Height = 21
          EditMask = '99999999999;1;_'
          MaxLength = 11
          TabOrder = 0
          Text = '           '
          OnChange = mskPrsnlNo1Change
        end
        object edtPrsnlName1: TEdit
          Tag = 1
          Left = 7
          Top = 38
          Width = 179
          Height = 19
          TabStop = False
          Color = clCream
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object mskPrsnlNo2: TMaskEdit
          Tag = 2
          Left = 33
          Top = 62
          Width = 85
          Height = 21
          EditMask = '99999999999;1;_'
          MaxLength = 11
          TabOrder = 2
          Text = '           '
          OnChange = mskPrsnlNo1Change
        end
        object edtPrsnlName2: TEdit
          Tag = 2
          Left = 7
          Top = 88
          Width = 178
          Height = 19
          TabStop = False
          Color = clCream
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 72
        Width = 219
        Height = 113
        Align = alTop
        Caption = ' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610' '
        TabOrder = 1
        object SBtnOfficeInfoID: TSpeedButton
          Tag = 1
          Left = 9
          Top = 12
          Width = 22
          Height = 20
          Caption = '...'
          OnClick = SBtnOfficeInfoIDClick
        end
        object Label4: TLabel
          Left = 121
          Top = 16
          Width = 75
          Height = 13
          Alignment = taRightJustify
          Caption = #1575#1586' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
        end
        object SpeedButton4: TSpeedButton
          Tag = 2
          Left = 9
          Top = 61
          Width = 22
          Height = 20
          Caption = '...'
          OnClick = SBtnOfficeInfoIDClick
        end
        object Label5: TLabel
          Left = 121
          Top = 65
          Width = 74
          Height = 13
          Alignment = taRightJustify
          Caption = #1578#1575' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
        end
        object MskOfficeInfoID1: TMaskEdit
          Tag = 1
          Left = 33
          Top = 12
          Width = 87
          Height = 21
          Color = 13236955
          EditMask = '99999999999;1;_'
          MaxLength = 11
          TabOrder = 0
          Text = '           '
          OnChange = MskOfficeInfoID1Change
        end
        object edtOfficeInfoID1: TEdit
          Tag = 1
          Left = 7
          Top = 37
          Width = 180
          Height = 19
          TabStop = False
          Color = clCream
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object MskOfficeInfoID2: TMaskEdit
          Tag = 2
          Left = 33
          Top = 61
          Width = 85
          Height = 21
          Color = 13236955
          EditMask = '99999999999;1;_'
          MaxLength = 11
          TabOrder = 2
          Text = '           '
          OnChange = MskOfficeInfoID1Change
        end
        object edtOfficeInfoID2: TEdit
          Tag = 2
          Left = 7
          Top = 87
          Width = 178
          Height = 19
          TabStop = False
          Color = clCream
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 13
        Width = 219
        Height = 59
        Align = alTop
        Caption = '  '#1578#1575#1585#1610#1582' '#1605#1581#1575#1587#1576#1607'  '
        TabOrder = 0
        object SpeedButton3: TSpeedButton
          Tag = 1
          Left = 9
          Top = 12
          Width = 22
          Height = 20
          Caption = '...'
          OnClick = SpeedButton3Click
        end
        object Label8: TLabel
          Left = 122
          Top = 40
          Width = 54
          Height = 13
          Alignment = taRightJustify
          Caption = #1605#1575#1607' '#1605#1581#1575#1587#1576#1607
        end
        object MskDate: TMaskEdit
          Tag = 2
          Left = 37
          Top = 12
          Width = 78
          Height = 21
          AutoSize = False
          Color = 13431799
          EditMask = '9999/99/99'
          MaxLength = 10
          TabOrder = 0
          Text = '    /  /  '
          OnChange = MskDateChange
        end
        object mskMounth: TMaskEdit
          Tag = 2
          Left = 37
          Top = 35
          Width = 78
          Height = 21
          AutoSize = False
          Color = 13431799
          EditMask = '99'
          MaxLength = 2
          TabOrder = 1
          Text = '  '
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 320
        Width = 219
        Height = 64
        Align = alTop
        Caption = ' '#1605#1581#1583#1608#1583#1607' '#1606#1608#1593' '#1581#1603#1605' '#1576#1585#1575#1610' '#1605#1581#1575#1587#1576#1607' '#1605#1576#1604#1594' '#1579#1575#1576#1578
        TabOrder = 3
        object SpeedButton5: TSpeedButton
          Tag = 2
          Left = 5
          Top = 17
          Width = 22
          Height = 20
          Caption = '...'
          OnClick = SpeedButton5Click
        end
        object Label3: TLabel
          Left = 186
          Top = 42
          Width = 7
          Height = 13
          Alignment = taRightJustify
          Caption = #1575#1586
        end
        object Label6: TLabel
          Left = 82
          Top = 42
          Width = 6
          Height = 13
          Alignment = taRightJustify
          Caption = #1578#1575
        end
        object Edit1: TEdit
          Tag = 1
          Left = 112
          Top = 39
          Width = 73
          Height = 19
          TabStop = False
          Color = clCream
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
          OnExit = Edit1Exit
        end
        object Edit2: TEdit
          Tag = 1
          Left = 5
          Top = 39
          Width = 73
          Height = 19
          TabStop = False
          Color = clCream
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
      end
    end
    object StatusBar1: TStatusBar
      Left = 2
      Top = 532
      Width = 917
      Height = 19
      Panels = <
        item
          Width = 220
        end
        item
          Width = 220
        end
        item
          Width = 220
        end
        item
          Width = 220
        end>
    end
    object DBGrid1: TCedarDbgrid
      Tag = 111
      Left = 2
      Top = 2
      Width = 698
      Height = 530
      Align = alClient
      Color = clCream
      DataSource = SrcPersonelDecExt
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
      OddRowColor = clGradientInactiveCaption
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
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
          FieldName = 'PersonelNo'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'name_L1'
          Footers = <>
          Width = 19
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'lastName_L1'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PersonName_L1'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'FormInfoID2'
          Footers = <>
          Width = 40
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Projectname_L1'
          Footers = <>
          Width = 42
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Projectname_L2'
          Footers = <>
          Width = 42
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'OfficeCode'
          Footers = <>
          Width = 42
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'OfficeName_L1'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'OfficeName_L2'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'EmployeeAmount'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DayQuntity'
          Footers = <>
          Width = 46
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'EmployerAmount'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PaymentLoan'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'BonusPayAble'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'leaveCount'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'leavePrice'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'OfficeInfoID'
          Footers = <>
          Width = 38
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ProjectInfoID'
          Footers = <>
          Width = 41
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'EndDate'
          Footers = <>
          Width = 59
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DocNoBonus'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DocDateBonus'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DocNoAnnuity'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DocDateAnnuity'
          Footers = <>
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  inherited ActionList: TActionList
    Left = 432
    object actArchiveSelected: TAction [3]
      Caption = #1576#1575#1610#1711#1575#1606#1610' '#1587#1591#1585#1607#1575#1740' '#1575#1606#1578#1582#1575#1576#1740
      OnExecute = actArchiveSelectedExecute
    end
    object actSelectAll: TAction [4]
      Caption = #1575#1606#1578#1582#1575#1576' '#1607#1605#1607
      OnExecute = actSelectAllExecute
    end
    object actArchive: TAction [6]
      Caption = #1576#1575#1610#1711#1575#1606#1610
      OnExecute = actArchiveExecute
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601' '#1585#1583#1610#1601
    end
    object DataSetInsert2: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
    end
    object DataSetPost2: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost2'
    end
    object DataSetCancel2: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel2'
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      OnExecute = actPrintExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actSendToExcel: TAction
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      OnExecute = actSendToExcelExecute
    end
    object actCalc: TAction
      Caption = #1605#1581#1575#1587#1576#1607' '#1593#1610#1583#1610
      Hint = #1605#1581#1575#1587#1576#1607' '#1575#1586' '#1603#1575#1585#1603#1585#1583' '#1605#1575#1607#1610#1575#1606#1607
      OnExecute = actCalcExecute
    end
    object actAnnuityCal: TAction
      Caption = #1605#1581#1575#1587#1576#1607' '#1587#1606#1608#1575#1578
      OnExecute = actAnnuityCalExecute
    end
    object actFilter: TAction
      Caption = #1575#1593#1605#1575#1604' '#1601#1610#1604#1578#1585
      OnExecute = actFilterExecute
    end
    object actCalcConst: TAction
      Caption = #1605#1581#1575#1587#1576#1607#8207#1576#1575#1605#1576#1604#1594#8207#1579#1575#1576#1578' '#1593#1610#1583#1610
      ImageIndex = 0
      OnExecute = actCalcConstExecute
    end
    object actArchiveDelete: TAction
      Caption = #1662#1575#1603#1587#1575#1586#1610
      OnExecute = actArchiveDeleteExecute
    end
    object actCalcConst2: TAction
      Caption = #1605#1581#1575#1587#1576#1607#8207#1576#1575#1605#1576#1604#1594#8207#1579#1575#1576#1578' '#1587#1606#1608#1575#1578
      OnExecute = actCalcConst2Execute
    end
    object actDocNoBonus: TAction
      Caption = #1662#1575#1705#1587#1575#1586#1740' '#1587#1606#1583' '#1593#1740#1583#1740
      OnExecute = actDocNoBonusExecute
    end
    object actDocNoAnnuity: TAction
      Caption = #1662#1575#1705#1587#1575#1586#1740' '#1587#1606#1583' '#1587#1606#1608#1575#1578
      OnExecute = actDocNoAnnuityExecute
    end
    object actleavePrice: TAction
      Caption = #1605#1581#1575#1587#1576#1607' '#1605#1585#1582#1589#1740
      OnExecute = actleavePriceExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 544
  end
  object qryPersonelDecExt: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterOpen = qryPersonelDecExtAfterOpen
    Parameters = <
      item
        Name = 'FormInfoID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'PersonelNoFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'PersonelNoTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'OfficeInfoIDFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'OfficeInfoIDTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'InterTypeFrom'
        DataType = ftInteger
        Size = 1
        Value = 0
      end
      item
        Name = 'InterTypeTo'
        DataType = ftInteger
        Size = 1
        Value = 0
      end
      item
        Name = 'YearID'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT        PersonelDecExt.DecExtID, PersonelDecExt.PersonelNo' +
        ', PersonelDecExt.EmployeeAmount, PersonelDecExt.FirstMounth, Per' +
        'sonelDecExt.EndMounth, PersonelDecExt.DayQuntity, PersonelDecExt' +
        '.EmployerAmount,'
      
        '                         PersonelDecExt.FormInfoID2, PersonelDec' +
        'Ext.PaymentLoan, PersonelDecExt.OfficeCode, PersonelDecExt.Proje' +
        'ctInfoID, PersonelDecExt.OfficeInfoID, PersonelDecExt.EndDate, P' +
        'ersonelDecExt.DocNoBonus,'
      
        '                         PersonelDecExt.DocDateBonus, PersonelDe' +
        'cExt.DocNoAnnuity, PersonelDecExt.DocDateAnnuity, PersonelDecExt' +
        '.EmployeeAmount - PersonelDecExt.PaymentLoan AS BonusPayAble,'
      
        '                         PersonelInfo.lastName_L1 + '#39'  '#39' + Perso' +
        'nelInfo.name_L1 AS PersonName_L1, PersonelInfo.name_L1, Personel' +
        'Info.lastName_L1, FormsInfo__Project.InfoName_L1 AS ProjectName_' +
        'L1,'
      
        '                         FormsInfo__Project.InfoName_L2 AS Proje' +
        'ctName_L2, FormsInfo__Office.InfoName_L1 AS OfficeName_L1, Forms' +
        'Info__Office.InfoName_L2 AS OfficeName_L2'
      ' ,PersonelDecExt.leaveCount,PersonelDecExt.leavePrice'
      'FROM            Pay.PersonelDecExt INNER JOIN'
      
        '                         Pay.PersonelInfo ON PersonelDecExt.Pers' +
        'onelNo = PersonelInfo.PersonelNo INNER JOIN'
      
        '                         Pay.FormsInfo AS FormsInfo__Project ON ' +
        'PersonelDecExt.FormInfoID2 = FormsInfo__Project.FormInfoID INNER' +
        ' JOIN'
      
        '                         Pay.FormsInfo AS FormsInfo__Office ON P' +
        'ersonelDecExt.OfficeCode = FormsInfo__Office.FormInfoID'
      
        'WHERE        (PersonelDecExt.FormInfoID = :FormInfoID) AND (Pers' +
        'onelDecExt.PersonelNo BETWEEN :PersonelNoFrom AND :PersonelNoTo)' +
        ' AND (PersonelDecExt.OfficeInfoID BETWEEN :OfficeInfoIDFrom AND ' +
        ':OfficeInfoIDTo) AND'
      '                         (PersonelDecExt.PersonelNo IN'
      
        '                             (SELECT        Interdicts.PersonelN' +
        'o'
      
        '                                FROM            Pay.Interdicts L' +
        'EFT OUTER JOIN'
      
        '                                                         Pay.For' +
        'msInfo AS FormsInfo_1 ON Pay.Interdicts.EmployTypeID = FormsInfo' +
        '_1.FormInfoID'
      
        'WHERE        (Interdicts.State < 50) AND (Interdicts.InterdicTyp' +
        'e = 0)'
      
        'AND (FormsInfo_1.InfoID BETWEEN :InterTypeFrom AND :InterTypeTo)' +
        '))'
      'AND (PersonelDecExt.YearID = :YearID )'
      '')
    Left = 138
    Top = 112
    object qryPersonelDecExtDecExtID: TIntegerField
      Tag = 3
      FieldName = 'DecExtID'
    end
    object qryPersonelDecExtPersonelNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588'.'#1662#1585#1587#1606#1604#1610
      FieldName = 'PersonelNo'
    end
    object qryPersonelDecExtFirstMounth: TWordField
      Tag = 3
      FieldName = 'FirstMounth'
    end
    object qryPersonelDecExtEndMounth: TWordField
      Tag = 3
      FieldName = 'EndMounth'
    end
    object qryPersonelDecExtDayQuntity: TFloatField
      Tag = 3
      DisplayLabel = #1603#1575#1585#1603#1585#1583'-'#1585#1608#1586
      FieldName = 'DayQuntity'
    end
    object qryPersonelDecExtFormInfoID2: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1662#1585#1608#1688#1607
      FieldName = 'FormInfoID2'
    end
    object qryPersonelDecExtOfficeCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1608#1575#1581#1583
      FieldName = 'OfficeCode'
    end
    object qryPersonelDecExtEmployeeAmount: TBCDField
      Tag = 3
      DisplayLabel = #1606#1575#1582#1575#1604#1589' '#1593#1610#1583#1610
      FieldName = 'EmployeeAmount'
      currency = True
      Precision = 19
    end
    object qryPersonelDecExtEmployerAmount: TBCDField
      Tag = 3
      DisplayLabel = #1587#1606#1608#1575#1578' '#1582#1583#1605#1578
      FieldName = 'EmployerAmount'
      currency = True
      Precision = 19
    end
    object qryPersonelDecExtPaymentLoan: TBCDField
      Tag = 3
      DisplayLabel = #1605#1575#1604#1610#1575#1578' '#1593#1610#1583#1610
      FieldName = 'PaymentLoan'
      currency = True
      Precision = 19
    end
    object qryPersonelDecExtBonusPayAble: TBCDField
      Tag = 3
      DisplayLabel = #1582#1575#1604#1589' '#1593#1610#1583#1610
      FieldName = 'BonusPayAble'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryPersonelDecExtOfficeInfoID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1608#1575#1581#1583
      FieldName = 'OfficeInfoID'
    end
    object qryPersonelDecExtProjectInfoID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1662#1585#1608#1688#1607
      FieldName = 'ProjectInfoID'
    end
    object qryPersonelDecExtEndDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1576#1575#1610#1711#1575#1606#1610
      FieldName = 'EndDate'
      FixedChar = True
      Size = 10
    end
    object qryPersonelDecExtDocNoBonus: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1587#1606#1583' '#1593#1740#1583#1740
      FieldName = 'DocNoBonus'
    end
    object qryPersonelDecExtDocDateBonus: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1740#1582' '#1587#1606#1583' '#1593#1740#1583#1740
      FieldName = 'DocDateBonus'
      FixedChar = True
      Size = 10
    end
    object qryPersonelDecExtDocNoAnnuity: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1587#1606#1583' '#1587#1606#1608#1575#1578
      FieldName = 'DocNoAnnuity'
    end
    object qryPersonelDecExtDocDateAnnuity: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1740#1582' '#1587#1606#1583' '#1587#1606#1608#1575#1578
      FieldName = 'DocDateAnnuity'
      FixedChar = True
      Size = 10
    end
    object qryPersonelDecExtProjectname_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1662#1585#1608#1688#1607' '
      FieldName = 'Projectname_L1'
      Size = 255
    end
    object qryPersonelDecExtProjectname_L2: TStringField
      Tag = 3
      DisplayLabel = 'Project Name'
      FieldName = 'Projectname_L2'
      Size = 255
    end
    object qryPersonelDecExtOfficeName_L1: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
      FieldName = 'OfficeName_L1'
      Size = 255
    end
    object qryPersonelDecExtOfficeName_L2: TStringField
      Tag = 3
      DisplayLabel = 'Office Name'
      FieldName = 'OfficeName_L2'
      Size = 255
    end
    object qryPersonelDecExtPersonName_L1: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1662#1585#1587#1606#1604#1610
      FieldName = 'PersonName_L1'
      ReadOnly = True
      Size = 57
    end
    object qryPersonelDecExtname_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605
      FieldName = 'name_L1'
      Size = 25
    end
    object qryPersonelDecExtlastName_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1740
      FieldName = 'lastName_L1'
      Size = 30
    end
    object qryPersonelDecExtleaveCount: TFloatField
      Tag = 3
      DisplayLabel = #1578#1593#1583#1575#1583' '#1605#1575#1606#1583#1607' '#1605#1585#1582#1589#1740
      FieldName = 'leaveCount'
    end
    object qryPersonelDecExtleavePrice: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1605#1575#1606#1583#1607' '#1605#1585#1582#1589#1740
      FieldName = 'leavePrice'
      currency = True
      Precision = 19
    end
  end
  object SrcPersonelDecExt: TDataSource
    DataSet = qryPersonelDecExt
    OnStateChange = SrcPersonelDecExtStateChange
    Left = 266
    Top = 111
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = SrcPersonelDecExt
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 344
    Top = 296
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
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
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'D:\Projects\Fara\Salary\Exe\Report\CalcAnnuityF.rtm'
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
    Left = 448
    Top = 296
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 24606
      mmPrintPosition = 0
      object ppLblCompanyName: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCompanyName'
        OnGetText = ppLblCompanyNameGetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 75936
        mmTop = 1058
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCaption: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCaption'
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578' '#1593#1610#1583#1610' '#1608' '#1587#1606#1608#1575#1578' '#1582#1583#1605#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8467
        mmLeft = 76994
        mmTop = 8466
        mmWidth = 49213
        BandType = 0
        LayerName = Foreground
      end
      object ppLblPrintDate: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lbprintdate'
        OnGetText = ppLblPrintDateGetText
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1711#1586#1575#1585#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 9790
        mmTop = 1058
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        OnGetText = ppSysVarPageNoGetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 9790
        mmTop = 8467
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 17198
        mmWidth = 203200
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 183621
        mmTop = 17727
        mmWidth = 19050
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 183092
        mmTop = 17198
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1588#1582#1589#1575#1578' '#1662#1585#1587#1606#1604#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 151607
        mmTop = 17727
        mmWidth = 31221
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 151077
        mmTop = 17198
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583' '#1608#1575#1581#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4763
        mmLeft = 141288
        mmTop = 17727
        mmWidth = 9525
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 140759
        mmTop = 17198
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 107156
        mmTop = 17727
        mmWidth = 33073
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 106627
        mmTop = 17198
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1575#1585#1603#1585#1583'-'#1585#1608#1586
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 90752
        mmTop = 17727
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 90223
        mmTop = 17198
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1575#1582#1575#1604#1589' '#1593#1610#1583#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 69321
        mmTop = 17727
        mmWidth = 20373
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line16'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 68792
        mmTop = 17198
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1575#1604#1610#1575#1578' '#1593#1610#1583#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 48154
        mmTop = 17727
        mmWidth = 20373
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line20'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 47625
        mmTop = 17198
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1582#1575#1604#1589' '#1593#1610#1583#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 26723
        mmTop = 17727
        mmWidth = 20373
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line24'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 26194
        mmTop = 17198
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1587#1606#1608#1575#1578' '#1582#1583#1605#1578
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 529
        mmTop = 17727
        mmWidth = 25400
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      PrintCount = 31
      mmBottomOffset = 0
      mmHeight = 7409
      mmPrintPosition = 0
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 200290
        mmTop = 0
        mmWidth = 2910
        BandType = 4
        LayerName = Foreground
      end
      object ppLin4Position: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Lin4Position'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 0
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'PersonelNo'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7451
        mmLeft = 183647
        mmTop = 0
        mmWidth = 19025
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 183119
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = '_PersonelName_L1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 151607
        mmTop = 0
        mmWidth = 31221
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 151077
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'OfficeInfoID'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 141288
        mmTop = 0
        mmWidth = 9525
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 140671
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = '_OfficeName_L1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7451
        mmLeft = 107122
        mmTop = 0
        mmWidth = 33020
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 106594
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'DayQuntity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7451
        mmLeft = 90825
        mmTop = 0
        mmWidth = 15240
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 90297
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'EmployeeAmount'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7451
        mmLeft = 69449
        mmTop = 0
        mmWidth = 20320
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line17'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 68920
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'PaymentLoan'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7451
        mmLeft = 48072
        mmTop = 0
        mmWidth = 20320
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line21'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 47544
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'BonusPayAble'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7451
        mmLeft = 26695
        mmTop = 0
        mmWidth = 20320
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line25'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 26167
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'EmployerAmount'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 529
        mmTop = 0
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 22225
      mmPrintPosition = 0
      object ppShape4: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape4'
        mmHeight = 14552
        mmLeft = 0
        mmTop = 7673
        mmWidth = 203200
        BandType = 8
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line28'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14552
        mmLeft = 101336
        mmTop = 7673
        mmWidth = 265
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = #1581#1587#1575#1576#1583#1575#1585' '#1588#1585#1603#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5842
        mmLeft = 184056
        mmTop = 9260
        mmWidth = 17187
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        Border.mmPadding = 0
        Caption = #1605#1583#1610#1585' '#1593#1575#1605#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5842
        mmLeft = 89101
        mmTop = 9260
        mmWidth = 11176
        BandType = 8
        LayerName = Foreground
      end
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1606#1602#1604' '#1576#1607'..'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6085
        mmLeft = 186267
        mmTop = 265
        mmWidth = 15610
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'PersonelNo'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 183621
        mmTop = 265
        mmWidth = 19050
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 183092
        mmTop = 0
        mmWidth = 2646
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc4'
        Border.mmPadding = 0
        DataField = 'DayQuntity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 90752
        mmTop = 265
        mmWidth = 15346
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line15'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 90223
        mmTop = 0
        mmWidth = 2646
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc6'
        Border.mmPadding = 0
        DataField = 'EmployeeAmount'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 69321
        mmTop = 265
        mmWidth = 20373
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line19'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 68792
        mmTop = 0
        mmWidth = 2646
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc8'
        Border.mmPadding = 0
        DataField = 'PaymentLoan'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 48154
        mmTop = 265
        mmWidth = 20373
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line23'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 47625
        mmTop = 0
        mmWidth = 2646
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc10'
        Border.mmPadding = 0
        DataField = 'BonusPayAble'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 26723
        mmTop = 265
        mmWidth = 20373
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line27'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 26194
        mmTop = 0
        mmWidth = 2646
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc12'
        Border.mmPadding = 0
        DataField = 'EmployerAmount'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 529
        mmTop = 265
        mmWidth = 25400
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 23548
      mmPrintPosition = 0
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape3'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1580#1605#1593
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6085
        mmLeft = 188913
        mmTop = 529
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'PersonelNo'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 183647
        mmTop = 528
        mmWidth = 19025
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 183119
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        Border.mmPadding = 0
        DataField = 'DayQuntity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 90825
        mmTop = 528
        mmWidth = 15240
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 90297
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc5'
        Border.mmPadding = 0
        DataField = 'EmployeeAmount'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6519
        mmLeft = 69449
        mmTop = 528
        mmWidth = 20320
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line18'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 68920
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc7'
        Border.mmPadding = 0
        DataField = 'PaymentLoan'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6519
        mmLeft = 48072
        mmTop = 528
        mmWidth = 20320
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line22'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 47544
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc9'
        Border.mmPadding = 0
        DataField = 'BonusPayAble'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6519
        mmLeft = 26695
        mmTop = 528
        mmWidth = 20320
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line26'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 26167
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc11'
        Border.mmPadding = 0
        DataField = 'EmployerAmount'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 529
        mmTop = 529
        mmWidth = 25400
        BandType = 7
        LayerName = Foreground
      end
      object ppShape5: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape5'
        mmHeight = 14552
        mmLeft = 0
        mmTop = 8731
        mmWidth = 203200
        BandType = 7
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line29'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14552
        mmLeft = 101336
        mmTop = 8731
        mmWidth = 265
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        Border.mmPadding = 0
        Caption = #1581#1587#1575#1576#1583#1575#1585' '#1588#1585#1603#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5842
        mmLeft = 184162
        mmTop = 10319
        mmWidth = 17187
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        Border.mmPadding = 0
        Caption = #1605#1583#1610#1585' '#1593#1575#1605#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5842
        mmLeft = 89101
        mmTop = 10319
        mmWidth = 11176
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
  object PopList4Print: TPopupMenu
    Left = 490
    Top = 367
    object AllClikPop: TMenuItem
      Caption = #1670#1575#1662#1607#1575#1610' '#1583#1610#1711#1585' '#1585#1575' '#1583#1585' '#1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1575#1591#1604#1575#1593#1575#1578' '#1581#1602#1608#1602' '#1608' '#1583#1587#1578#1605#1586#1583' '#1605#1588#1582#1589' '#1603#1606#1610#1583'..'
      OnClick = AllClikPopClick
    end
  end
  object qry_init: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select  FormInfoID  from Pay.formsinfo where formtype=59')
    Left = 312
    Top = 8
  end
  object qrySearch: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     PersonelNo, name_L1+'#39' '#39'+lastName_L1 as name_L1,name_L' +
        '2+'#39' '#39'+lastName_L2 as name_L2'
      'FROM         Pay.PersonelInfo')
    Left = 488
    Top = 128
  end
  object qrySearchOfficeInfo: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT InfoID, InfoName_L1 '
      '   FROM  Pay.FormsInfo WHERE (FormType = 12)')
    Left = 464
    Top = 224
  end
  object PopupMenu1: TPopupMenu
    Left = 216
    Top = 351
    object N1: TMenuItem
      Action = actPrint
    end
    object actSelectAll1: TMenuItem
      Action = actSelectAll
    end
    object N2: TMenuItem
      Action = actArchiveDelete
    end
    object N15: TMenuItem
      Caption = '-'
    end
    object mnuN3: TMenuItem
      Caption = #1581#1584#1601' '#1605#1581#1575#1587#1576#1607' '#1593#1610#1583#1610
      OnClick = mnuN3Click
    end
    object mnuN4: TMenuItem
      Caption = #1581#1584#1601' '#1605#1581#1575#1587#1576#1607' '#1587#1606#1608#1575#1578
      OnClick = mnuN4Click
    end
    object N14: TMenuItem
      Caption = #1581#1584#1601' '#1605#1581#1575#1587#1576#1607' '#1605#1585#1582#1589#1740
      OnClick = N14Click
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object actDocNoNull1: TMenuItem
      Action = actDocNoBonus
    end
    object N5: TMenuItem
      Action = actDocNoAnnuity
    end
  end
  object popCalcConst: TPopupMenu
    Left = 352
    Top = 375
    object N3: TMenuItem
      Action = actCalcConst
    end
    object N4: TMenuItem
      Action = actCalcConst2
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object mnuFix: TMenuItem
      AutoCheck = True
      Caption = #1605#1581#1575#1587#1576#1607' '#1605#1576#1604#1594' '#1579#1575#1576#1578' '#1576#1583#1608#1606' '#1583#1585' '#1606#1592#1585' '#1711#1585#1601#1578#1606' '#1705#1575#1585#1705#1585#1583' '#1575#1606#1580#1575#1605' '#1588#1608#1583
    end
    object N8: TMenuItem
      Caption = '-'
    end
  end
  object qryFN_CalcleaveCount: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select  FormInfoID  from Pay.formsinfo where formtype=59')
    Left = 136
    Top = 264
  end
  object popCalc: TPopupMenu
    Left = 440
    Top = 463
    object mniN11: TMenuItem
      Caption = '-'
    end
    object N9: TMenuItem
      Action = actCalc
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object mniTax: TMenuItem
      AutoCheck = True
      Caption = #1605#1581#1575#1587#1576#1607' '#1593#1740#1583#1740' '#1576#1575' '#1605#1575#1604#1740#1575#1578
      Checked = True
    end
    object mniN12: TMenuItem
      Caption = '-'
    end
    object N13: TMenuItem
      Caption = #1605#1581#1575#1587#1576#1607' '#1593#1610#1583#1610' '#1583#1608#1604#1578#1740
      OnClick = N13Click
    end
  end
  object popArchive: TPopupMenu
    Left = 216
    Top = 455
    object N11: TMenuItem
      Action = actArchive
    end
    object N12: TMenuItem
      Action = actArchiveSelected
    end
  end
end

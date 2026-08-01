inherited ArchiveInfo2F: TArchiveInfo2F
  Left = 400
  Top = 193
  Caption = #1605#1581#1575#1587#1576#1607' '#1581#1602#1608#1602
  ClientHeight = 724
  ClientWidth = 1004
  Position = poDesigned
  OnDestroy = FormDestroy
  OnResize = FormResize
  ExplicitWidth = 1012
  ExplicitHeight = 755
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel [0]
    Width = 1004
    Height = 65
    BevelOuter = bvNone
    ExplicitWidth = 1004
    ExplicitHeight = 65
    inherited ImgTemplate: TImage
      Left = 974
      Top = 7
      Width = 33
      ExplicitLeft = 974
      ExplicitTop = 7
      ExplicitWidth = 33
    end
    inherited lblCaption: TLabel
      Left = 931
      Top = 0
      Height = 65
      Alignment = taLeftJustify
      Font.Color = clGreen
      ParentBiDiMode = False
      ExplicitLeft = 931
      ExplicitTop = 0
    end
    object grpMaster: TGroupBox
      Left = 195
      Top = 1
      Width = 240
      Height = 61
      Align = alCustom
      Caption = #1603#1583
      TabOrder = 0
      object EdtCode: TDBEdit
        Left = 3
        Top = 9
        Width = 81
        Height = 21
        DataField = 'InfoID'
        DataSource = SrcMaster
        TabOrder = 0
      end
      object DBEdit1: TDBEdit
        Left = 5
        Top = 36
        Width = 228
        Height = 21
        BevelOuter = bvNone
        BevelKind = bkFlat
        Color = clBtnFace
        Ctl3D = True
        DataField = 'InfoName_L1'
        DataSource = SrcMaster
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBNavigator1: TDBNavigator
        Left = 87
        Top = 12
        Width = 144
        Height = 22
        DataSource = SrcMaster
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Flat = True
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 2
      end
    end
  end
  inherited PnlUnderButton: TPanel [1]
    Top = 683
    Width = 1004
    BevelOuter = bvNone
    ExplicitTop = 683
    ExplicitWidth = 1004
    inherited BtnReject: TBitBtn
      AlignWithMargins = True
      Left = 1
      Top = 6
      Height = 29
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Align = alLeft
      ExplicitLeft = 1
      ExplicitTop = 6
      ExplicitHeight = 29
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 543
      Top = 6
      Width = 75
      Height = 29
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actCal
      Align = alRight
      Caption = #1605#1581#1575#1587#1576#1607' '#1581#1602#1608#1602
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 697
      Top = 6
      Width = 75
      Height = 29
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = ActBackWard
      Align = alRight
      Caption = #1605#1581#1575#1587#1576#1607' '#1605#1593#1608#1602
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 851
      Top = 6
      Width = 75
      Height = 29
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = ActArchive
      Align = alRight
      Caption = #1576#1575#1610#1711#1575#1606#1610#8207#1575#1591#1604#1575#1593#1575#1578
      TabOrder = 3
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 78
      Top = 6
      Width = 75
      Height = 29
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = _actSort
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 4
    end
    object BitBtn5: TBitBtn
      AlignWithMargins = True
      Left = 155
      Top = 6
      Width = 75
      Height = 29
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = _actSearch
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 5
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 232
      Top = 6
      Width = 75
      Height = 29
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actSendToExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      TabOrder = 6
    end
    object BitBtn7: TBitBtn
      AlignWithMargins = True
      Left = 928
      Top = 6
      Width = 75
      Height = 29
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = ActFillter
      Align = alRight
      Caption = #1575#1593#1605#1575#1604' '#1601#1610#1604#1578#1585
      TabOrder = 7
    end
    object BitBtn8: TBitBtn
      AlignWithMargins = True
      Left = 774
      Top = 6
      Width = 75
      Height = 29
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actDELETE
      Align = alRight
      Caption = #1581#1584#1601' '#1605#1581#1575#1587#1576#1607
      TabOrder = 8
    end
    object BitBtn9: TBitBtn
      AlignWithMargins = True
      Left = 312
      Top = 6
      Width = 75
      Height = 29
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = ActArchiveDel
      Align = alRight
      Caption = #1581#1584#1601' '#1576#1575#1610#1711#1575#1606#1610
      TabOrder = 9
    end
    object btnOther: TBitBtn
      AlignWithMargins = True
      Left = 620
      Top = 6
      Width = 75
      Height = 29
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Align = alRight
      Caption = #1605#1581#1575#1587#1576#1607#8207'...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = btnOtherClick
    end
    object BitBtn10: TBitBtn
      AlignWithMargins = True
      Left = 389
      Top = 6
      Width = 75
      Height = 29
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actClearingDocument
      Align = alRight
      Caption = #1662#1575#1705#1587#1575#1586#1740' '#1587#1606#1583
      TabOrder = 11
    end
    object btnChecking4AllPersonnel: TBitBtn
      AlignWithMargins = True
      Left = 466
      Top = 6
      Width = 75
      Height = 29
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actChecking4AllPersonnel
      Align = alRight
      Caption = #1576#1585#1585#1587#1740
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
  end
  inherited Panel3: TPanel
    Top = 65
    Width = 1004
    Height = 618
    BevelInner = bvNone
    BevelOuter = bvNone
    ExplicitTop = 65
    ExplicitWidth = 1004
    ExplicitHeight = 618
    object lbl1: TLabel
      Left = 0
      Top = 562
      Width = 1004
      Height = 13
      Align = alBottom
      Caption = '...'
      ExplicitLeft = 992
      ExplicitWidth = 12
    end
    object lbl2: TLabel
      Left = 0
      Top = 549
      Width = 1004
      Height = 13
      Align = alBottom
      Alignment = taRightJustify
      Caption = '....'
      ExplicitWidth = 16
    end
    object Panel1: TPanel
      Left = 788
      Top = 36
      Width = 216
      Height = 444
      Align = alRight
      BevelOuter = bvNone
      BiDiMode = bdRightToLeft
      Ctl3D = True
      ParentBiDiMode = False
      ParentCtl3D = False
      TabOrder = 0
      object GroupBox1: TGroupBox
        Left = 0
        Top = 305
        Width = 216
        Height = 139
        Align = alClient
        Caption = #1604#1610#1587#1578' '#1575#1601#1585#1575#1583' '#1601#1575#1602#1583' '#1605#1581#1575#1587#1576#1607' '#1581#1602#1608#1602
        TabOrder = 0
        object DBGrid2: TDBGrid
          Left = 2
          Top = 15
          Width = 212
          Height = 122
          Align = alClient
          Color = 13431799
          DataSource = SrcOutPersonel
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'PersonelNo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PersonName_L1'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PersonName_L2'
              Visible = True
            end>
        end
      end
      object GrpYears: TGroupBox
        Left = 0
        Top = 0
        Width = 216
        Height = 305
        Align = alTop
        Caption = #1587#1575#1604' 1384'
        TabOrder = 1
        object Label1: TLabel
          Left = 119
          Top = 14
          Width = 81
          Height = 13
          Alignment = taRightJustify
          Caption = #1575#1586' '#1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object SpeedButton1: TSpeedButton
          Tag = 1
          Left = 8
          Top = 10
          Width = 22
          Height = 21
          Caption = '...'
          OnClick = SpeedButton1Click
        end
        object SpeedButton2: TSpeedButton
          Tag = 2
          Left = 8
          Top = 58
          Width = 22
          Height = 21
          Caption = '...'
          OnClick = SpeedButton1Click
        end
        object Label2: TLabel
          Left = 119
          Top = 62
          Width = 80
          Height = 13
          Alignment = taRightJustify
          Caption = #1578#1575' '#1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 119
          Top = 110
          Width = 56
          Height = 13
          Alignment = taRightJustify
          Caption = #1578#1575#1585#1610#1582' '#1576#1575#1610#1711#1575#1606#1610
        end
        object Label5: TLabel
          Left = 119
          Top = 138
          Width = 65
          Height = 13
          Alignment = taRightJustify
          Caption = #1588#1605#1575#1585#1607' '#1576#1575#1610#1711#1575#1606#1610
        end
        object btnLabelIDFrom: TSpeedButton
          Tag = 1
          Left = 8
          Top = 159
          Width = 22
          Height = 21
          Caption = '...'
          OnClick = btnLabelIDFromClick
        end
        object Label6: TLabel
          Left = 119
          Top = 163
          Width = 53
          Height = 13
          Alignment = taRightJustify
          Caption = #1575#1586' '#1605#1581#1575#1587#1576#1575#1578
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object btnLabelIDTo: TSpeedButton
          Tag = 2
          Left = 8
          Top = 207
          Width = 22
          Height = 21
          Caption = '...'
          OnClick = btnLabelIDFromClick
        end
        object Label7: TLabel
          Left = 119
          Top = 211
          Width = 52
          Height = 13
          Alignment = taRightJustify
          Caption = #1578#1575' '#1605#1581#1575#1587#1576#1575#1578
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object SpeedButton3: TSpeedButton
          Tag = 1
          Left = 8
          Top = 180
          Width = 22
          Height = 21
          Action = AddToLabel
          BiDiMode = bdLeftToRight
          Caption = ' '
          ParentBiDiMode = False
        end
        object mskPrsnlNo1: TMaskEdit
          Tag = 1
          Left = 31
          Top = 10
          Width = 89
          Height = 21
          EditMask = '99999999999;1;_'
          MaxLength = 11
          TabOrder = 0
          Text = '           '
          OnChange = mskPrsnlNo1Change
          OnExit = mskPrsnlNo1Exit
        end
        object edtPrsnlName1: TEdit
          Tag = 1
          Left = 7
          Top = 32
          Width = 181
          Height = 21
          TabStop = False
          Color = clCream
          ParentShowHint = False
          ReadOnly = True
          ShowHint = False
          TabOrder = 1
          OnKeyPress = edtPrsnlName1KeyPress
        end
        object mskPrsnlNo2: TMaskEdit
          Tag = 2
          Left = 31
          Top = 58
          Width = 89
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
          Top = 82
          Width = 179
          Height = 21
          TabStop = False
          Color = clCream
          ReadOnly = True
          TabOrder = 3
        end
        object MskDate: TMaskEdit
          Tag = 2
          Left = 31
          Top = 106
          Width = 84
          Height = 21
          AutoSize = False
          Color = 13431799
          EditMask = '9999/99/99'
          MaxLength = 10
          TabOrder = 4
          Text = '    /  /  '
        end
        object mskArchiveID: TMaskEdit
          Tag = 2
          Left = 31
          Top = 131
          Width = 84
          Height = 21
          AutoSize = False
          Color = 13431799
          Ctl3D = False
          EditMask = '99999999'
          MaxLength = 8
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 5
          Text = '        '
        end
        object Panel4: TPanel
          Left = 2
          Top = 279
          Width = 212
          Height = 24
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 6
          object BitBtn11: TBitBtn
            Left = 0
            Top = 0
            Width = 212
            Height = 24
            Margins.Left = 1
            Margins.Top = 6
            Margins.Right = 1
            Margins.Bottom = 6
            Align = alClient
            Caption = #1662#1740#1588' '#1601#1585#1590
            TabOrder = 0
            OnClick = BitBtn11Click
          end
        end
        object mskLabelIDFrom: TMaskEdit
          Tag = 1
          Left = 31
          Top = 159
          Width = 89
          Height = 21
          EditMask = '99999999999;1;_'
          MaxLength = 11
          TabOrder = 7
          Text = '           '
          OnChange = mskLabelIDFromChange
          OnExit = mskLabelIDFromExit
        end
        object edtLabelIDFrom: TEdit
          Tag = 1
          Left = 31
          Top = 181
          Width = 155
          Height = 21
          TabStop = False
          Color = clCream
          ParentShowHint = False
          ReadOnly = True
          ShowHint = False
          TabOrder = 8
        end
        object mskLabelIDTo: TMaskEdit
          Tag = 2
          Left = 31
          Top = 207
          Width = 89
          Height = 21
          EditMask = '99999999999;1;_'
          MaxLength = 11
          TabOrder = 9
          Text = '           '
          OnChange = mskLabelIDFromChange
        end
        object edtLabelIDTo: TEdit
          Tag = 2
          Left = 7
          Top = 231
          Width = 179
          Height = 21
          TabStop = False
          Color = clCream
          ReadOnly = True
          TabOrder = 10
        end
      end
    end
    object StatusBar1: TStatusBar
      Left = 0
      Top = 530
      Width = 1004
      Height = 19
      Panels = <
        item
          Width = 300
        end
        item
          Width = 300
        end
        item
          Text = #1578#1593#1583#1575#1583
          Width = 300
        end>
    end
    object ToolBar1: TToolBar
      Left = 0
      Top = 0
      Width = 1004
      Height = 36
      BorderWidth = 2
      ButtonHeight = 21
      ButtonWidth = 54
      Caption = 'ToolBar1'
      EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
      EdgeInner = esNone
      EdgeOuter = esNone
      ShowCaptions = True
      TabOrder = 2
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
    object pnl1: TPanel
      Left = 0
      Top = 36
      Width = 788
      Height = 444
      Align = alClient
      BevelOuter = bvNone
      Caption = 'pnl1'
      TabOrder = 3
      object spl2: TSplitter
        Left = 0
        Top = 98
        Width = 788
        Height = 3
        Cursor = crVSplit
        Align = alTop
        ExplicitLeft = 1
        ExplicitTop = 266
        ExplicitWidth = 100
      end
      object spl3: TSplitter
        Left = 0
        Top = 268
        Width = 788
        Height = 3
        Cursor = crVSplit
        Align = alTop
        ExplicitLeft = -1
        ExplicitTop = 331
        ExplicitWidth = 665
      end
      object grpChecking: TGroupBox
        Left = 0
        Top = 321
        Width = 788
        Height = 123
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = '  '#1604#1610#1587#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1602#1575#1576#1604' '#1576#1585#1585#1587#1610' '
        TabOrder = 1
        Visible = False
        object spl1: TSplitter
          Left = 2
          Top = 15
          Width = 784
          Height = 3
          Cursor = crVSplit
          Align = alTop
          ExplicitWidth = 122
        end
        object grdChecking: TDBGrid
          Left = 2
          Top = 18
          Width = 784
          Height = 84
          Align = alClient
          Color = 13431799
          DataSource = SrcChecking
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = grdCheckingDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'PersonelNo'
              Width = 58
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'name_L1'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'lastName_L1'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EmployeeAmount'
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Years'
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FirstMounth'
              Width = 28
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EndMounth'
              Width = 29
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'InfoName_L1'
              Width = 87
              Visible = True
            end>
        end
        object stat1: TStatusBar
          Left = 2
          Top = 102
          Width = 784
          Height = 19
          Panels = <
            item
              Width = 110
            end
            item
              Text = #1578#1593#1583#1575#1583
              Width = 50
            end>
        end
      end
      inline frInsouranceCheck1: TfrInsouranceCheck
        Left = 0
        Top = 101
        Width = 788
        Height = 167
        Align = alTop
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        TabOrder = 2
        ExplicitTop = 101
        ExplicitWidth = 788
        inherited GroupBox1: TGroupBox
          Width = 788
          ExplicitWidth = 788
          inherited DBGrid2: TCedarDbgrid
            Width = 784
            OnDblClick = grdCheckingDblClick
            Columns = <
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'SalaryID'
                Footers = <>
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'InfoName_L1'
                Footers = <>
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'TotalInfoID'
                Footers = <>
                Width = 71
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'CntInfoID'
                Footers = <>
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'WarnNote'
                Footers = <>
              end>
          end
        end
        inherited qryInsouranceCheck: TADOQuery
          Left = 66
          Top = 109
        end
        inherited srcInsouranceCheck: TDataSource
          Left = 234
          Top = 106
        end
      end
      inline frTaxCheck1: TfrTaxCheck
        Left = 0
        Top = 0
        Width = 788
        Height = 98
        Align = alTop
        BiDiMode = bdRightToLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 3
        Visible = False
        ExplicitWidth = 788
        inherited grpTaxCheck: TGroupBox
          Width = 788
          ExplicitWidth = 788
          inherited DBGrid2: TDBGrid
            Width = 784
            OnDblClick = grdCheckingDblClick
          end
        end
        inherited srcTaxCheck: TDataSource
          Left = 282
        end
      end
      object grdFitful: TCedarDbgrid
        Left = 71
        Top = 2
        Width = 581
        Height = 260
        Color = clCream
        DataSource = srcFitful
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
        ReadOnly = True
        RowHeight = 18
        SearchPanel.Enabled = True
        SortLocal = True
        TabOrder = 4
        Visible = False
        OnDblClick = grdFitfulDblClick
        ActiveSearchPanel = False
        SelectFooterIndex = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ID'
            Footers = <>
            Title.TitleButton = True
            Width = 116
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FitfulID'
            Footers = <>
            Title.TitleButton = True
            Width = 116
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FitfulNote'
            Footers = <>
            Title.TitleButton = True
            Width = 116
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object grdArchiveInfo: TCedarDbgrid
        Left = 0
        Top = 271
        Width = 788
        Height = 50
        Align = alClient
        Color = clCream
        DataSource = srcArchiveInfo
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
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
            FieldName = 'PersonelNO'
            Footers = <>
            Title.Alignment = taCenter
            Width = 67
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PersoneName_L1'
            Footers = <>
            Title.Alignment = taCenter
            Width = 73
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PersoneName_L2'
            Footers = <>
            Title.Alignment = taCenter
            Width = 67
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FormType'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FormCaption_L1'
            Footers = <>
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SalaryID'
            Footers = <>
            Title.Alignment = taCenter
            Width = 32
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SalaryName_L1'
            Footers = <>
            Title.Alignment = taCenter
            Width = 83
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SalaryName_L2'
            Footers = <>
            Title.Alignment = taCenter
            Width = 61
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ProjectID'
            Footers = <>
            Title.Alignment = taCenter
            Width = 39
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ProjectName_L1'
            Footers = <>
            Title.Alignment = taCenter
            Width = 39
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ProjectName_L2'
            Footers = <>
            Title.Alignment = taCenter
            Width = 60
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Price'
            Footers = <>
            Title.Alignment = taCenter
            Width = 43
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'LabelID'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SubCompanyCode'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ArchiveID'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'MounthRetard'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'YearRetard'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'YearID'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Years'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Descriptions'
            Footers = <>
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'AccTopicCode'
            Footers = <>
            Width = 51
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'AccDetailCode'
            Footers = <>
            Width = 54
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'AccCTopicCode'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'AccCTopicCode2'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'AccCTopicCode3'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DocNo'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DocDate'
            Footers = <>
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object pb1: TProgressBar
      Left = 0
      Top = 575
      Width = 1004
      Height = 17
      Align = alBottom
      TabOrder = 4
    end
    object CheckBox1: TCheckBox
      AlignWithMargins = True
      Left = 3
      Top = 510
      Width = 998
      Height = 17
      Align = alBottom
      Caption = #1606#1605#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1605#1581#1575#1587#1576#1607' '#1588#1583#1607' '#1580#1607#1578' '#1603#1606#1578#1585#1604#1607#1575#1610' '#1601#1606#1610'('#1590#1585#1608#1585#1610' '#1606#1605#1610' '#1576#1575#1588#1583')'
      TabOrder = 5
      OnClick = CheckBox1Click
    end
    inline frmTaxKindCalc1: TfrmTaxKindCalc
      Left = 0
      Top = 480
      Width = 1004
      Height = 27
      Align = alBottom
      TabOrder = 6
      ExplicitTop = 480
      ExplicitWidth = 1004
      ExplicitHeight = 27
      inherited Label1: TLabel
        Width = 944
        Height = 15
        ExplicitLeft = 370
        ExplicitWidth = 580
        ExplicitHeight = 13
      end
      inherited Panel1: TPanel
        Left = 956
        Height = 27
        ExplicitLeft = 956
        ExplicitHeight = 27
        inherited Label2: TLabel
          Height = 21
        end
      end
    end
    object Panel5: TPanel
      Left = 0
      Top = 592
      Width = 1004
      Height = 26
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 7
      object Label4: TLabel
        Left = 0
        Top = 0
        Width = 959
        Height = 26
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Align = alClient
        Caption = 
          '           '#1576#1575' '#1578#1608#1580#1607' '#1576#1607' '#1578#1594#1740#1740#1585#1575#1578' '#1587#1575#1604#1740#1575#1606#1607' '#1605#1575#1604#1740#1575#1578' '#1581#1602#1608#1602' '#1580#1583#1608#1604' '#1605#1575#1604#1740#1575#1578#1740' '#1581 +
          #1578#1605#1575' '#1705#1606#1578#1585#1604' '#1588#1608#1583'.'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clGreen
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        OnClick = Label4Click
        ExplicitLeft = 507
        ExplicitWidth = 452
        ExplicitHeight = 14
      end
      object lblTax: TLabel
        AlignWithMargins = True
        Left = 962
        Top = 3
        Width = 39
        Height = 20
        Align = alRight
        Caption = #1578#1608#1580#1607':'#8207
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExplicitHeight = 18
      end
    end
  end
  object yrcmbx1: TYearComboBox [3]
    Left = 11
    Top = 13
    Width = 112
    Height = 32
    Align = alCustom
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    TabOrder = 3
    YearID = 0
    YearsParam = 0
    ADOConnection = DmF.adcsalary
  end
  object pnlFixedLabels: TPanel [4]
    Left = 40
    Top = 133
    Width = 633
    Height = 318
    TabOrder = 4
    Visible = False
    object btnOk: TSpeedButton
      AlignWithMargins = True
      Left = 271
      Top = 292
      Width = 91
      Height = 22
      Margins.Left = 270
      Margins.Right = 270
      Align = alBottom
      Caption = #1578#1575#1574#1740#1583
      OnClick = btnOkClick
      ExplicitLeft = 264
      ExplicitTop = 232
      ExplicitWidth = 23
    end
    object grdFixedLabels: TCedarDbgrid
      Tag = 111
      Left = 1
      Top = 1
      Width = 631
      Height = 288
      Align = alClient
      Color = clCream
      DataSource = srcFixedLabels
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
      RowHeight = 18
      SearchPanel.Enabled = True
      SortLocal = True
      TabOrder = 0
      OnKeyPress = grdFixedLabelsKeyPress
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'LabelID'
          Footers = <>
          Title.TitleButton = True
          Width = 156
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Descriptions'
          Footers = <>
          Title.TitleButton = True
          Width = 156
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  inherited ActionList: TActionList
    Images = ImageList1
    Left = 544
    Top = 19
    inherited actExit: TAction
      ImageIndex = 1
    end
    inherited _actSearch: TAction
      OnExecute = _actSearchExecute
    end
    inherited _actSort: TAction
      OnExecute = _actSortExecute
    end
    object actCal: TAction
      Caption = #1605#1581#1575#1587#1576#1607' '#1581#1602#1608#1602
      OnExecute = actCalExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      ShortCut = 118
    end
    object ActArchive: TAction
      Caption = #1576#1575#1610#1711#1575#1606#1610#8207#1575#1591#1604#1575#1593#1575#1578
      OnExecute = ActArchiveExecute
    end
    object actSendToExcel: TAction
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      OnExecute = actSendToExcelExecute
    end
    object ActBackWard: TAction
      Caption = #1605#1581#1575#1587#1576#1607' '#1605#1593#1608#1602
      OnExecute = ActBackWardExecute
    end
    object ActFillter: TAction
      Caption = #1575#1593#1605#1575#1604' '#1601#1610#1604#1578#1585
      OnExecute = ActFillterExecute
    end
    object actDELETE: TAction
      Caption = #1581#1584#1601' '#1605#1581#1575#1587#1576#1607
      OnExecute = actDELETEExecute
    end
    object ActArchiveDel: TAction
      Caption = #1581#1584#1601' '#1576#1575#1610#1711#1575#1606#1610
      Visible = False
      OnExecute = ActArchiveDelExecute
    end
    object actSendToExcel2: TAction
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel  '#1604#1610#1587#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1602#1575#1576#1604' '#1576#1585#1585#1587#1610' '
      OnExecute = actSendToExcel2Execute
    end
    object actCalAcc: TAction
      Caption = #1605#1581#1575#1587#1576#1607' '#1603#1583#1610#1606#1711' '#1581#1587#1575#1576#1583#1575#1585#1610
      OnExecute = actCalAccExecute
    end
    object actGETRemainedOffTime: TAction
      Caption = #1605#1581#1575#1587#1576#1607' '#1605#1575#1586#1575#1583' '#1605#1585#1582#1589#1610' '#1583#1585' '#1594#1610#1576#1578
      OnExecute = actGETRemainedOffTimeExecute
    end
    object actCalcFilter: TAction
      Caption = #1605#1581#1575#1587#1576#1607' '#1581#1602#1608#1602' '#1576#1575' '#1605#1581#1583#1608#1583#1607' '#1582#1575#1589
      OnExecute = actCalcFilterExecute
    end
    object actClearingDocument: TAction
      Caption = #1662#1575#1705#1587#1575#1586#1740' '#1587#1606#1583
      OnExecute = actClearingDocumentExecute
    end
    object actChecking4AllPersonnel: TAction
      Caption = #1576#1585#1585#1587#1740
      ImageIndex = 3
      OnExecute = actChecking4AllPersonnelExecute
    end
    object actShowTime: TAction
      Category = 'Dataset'
      Caption = 'actShowTime'
      OnExecute = actShowTimeExecute
    end
    object AddToLabel: TAction
      Caption = 'AddToLabel'
      ImageIndex = 4
      OnExecute = AddToLabelExecute
    end
  end
  object qryArchiveInfo: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    BeforeOpen = qryArchiveInfoBeforeOpen
    AfterOpen = qryArchiveInfoAfterOpen
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'Mounth'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'PersonelNoFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'PersonelNoTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 2147483647
      end
      item
        Name = 'Years'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'YearID'
        Attributes = [paSigned, paNullable]
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
        Name = 'CompanyCodeFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'CompanyCodeTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 999
      end>
    SQL.Strings = (
      
        'SELECT     F.*,FormsInfo_1.FormType, Pay.PersonelInfo.lastName_L' +
        '1 + '#39' '#39' + Pay.PersonelInfo.name_L1 AS PersoneName_L1,'
      
        '                      Pay.PersonelInfo.lastName_L2 + '#39' '#39' + Pay.P' +
        'ersonelInfo.name_L2 AS PersoneName_L2, Pay.FormsInfo.InfoName_L1' +
        ' AS ProjectName_L1,'
      
        '                      Pay.FormsInfo.InfoName_L2 AS ProjectName_L' +
        '2, FormsInfo_1.InfoName_L1 AS SalaryName_L1, FormsInfo_1.InfoNam' +
        'e_L2 AS SalaryName_L2'
      #9#9#9#9#9'  ,FormTypes_1.FormCaption_L1 ,l.Descriptions'
      'FROM         Pay.FixedCalculated AS F LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo ON F.ProjectID = Pay.FormsIn' +
        'fo.FormInfoID LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo FormsInfo_1 ON F.SalaryID = ' +
        'FormsInfo_1.FormInfoID LEFT OUTER JOIN'
      
        '                      Pay.PersonelInfo ON F.PersonelNO = Pay.Per' +
        'sonelInfo.PersonelNo LEFT OUTER JOIN'
      
        '                      Pay.FormTypes FormTypes_1 ON FormsInfo_1.F' +
        'ormType = FormTypes_1.FormType'
      #9#9#9#9#9'  inner join Pay.FixedLabels AS L on L.LabelID = F.LabelID'
      ''
      ''
      ''
      
        'WHERE     (F.Mounth = :Mounth) AND (F.PersonelNO BETWEEN :Person' +
        'elNoFrom AND :PersonelNoTo)'
      'AND  (F.Years = :Years ) AND  (F.YearID = :YearID )'
      'AND (F.LabelID BETWEEN :LabelIDFrom AND :LabelIDTo)'
      ''
      
        'AND  ((F.subcompanyCode = 0)OR(F.subcompanyCode BETWEEN :Company' +
        'CodeFrom AND :CompanyCodeTo ))  '
      ''
      'ORDER BY F.PersonelNO, F.ArchiveID')
    Left = 288
    Top = 257
    object qryArchiveInfoFixedCID: TAutoIncField
      FieldName = 'FixedCID'
      ReadOnly = True
    end
    object qryArchiveInfoSubCompanyCode: TIntegerField
      DisplayLabel = #1705#1583' '#1588#1585#1705#1578'/'#1588#1593#1576#1607
      FieldName = 'SubCompanyCode'
    end
    object qryArchiveInfoFunctionID: TIntegerField
      FieldName = 'FunctionID'
    end
    object qryArchiveInfoFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qryArchiveInfoFormType: TSmallintField
      DisplayLabel = #1578#1575#1740#1662
      FieldName = 'FormType'
    end
    object qryArchiveInfoFormCaption_L1: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldName = 'FormCaption_L1'
      Size = 150
    end
    object qryArchiveInfoPersonelNO: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607#8207#1662#1585#1587#1606#1604#1610
      FieldName = 'PersonelNO'
    end
    object qryArchiveInfoProjectID: TIntegerField
      Tag = 3
      CustomConstraint = 's'
      DisplayLabel = #1603#1583'.'#1662#1585#1608#1688#1607
      FieldName = 'ProjectID'
    end
    object qryArchiveInfoOfficeCode: TIntegerField
      FieldName = 'OfficeCode'
    end
    object qryArchiveInfoJobCede: TIntegerField
      FieldName = 'JobCede'
    end
    object qryArchiveInfoSalaryID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583#1593#1575#1605#1604
      FieldName = 'SalaryID'
    end
    object qryArchiveInfoMounth: TWordField
      FieldName = 'Mounth'
    end
    object qryArchiveInfoPrice: TBCDField
      Tag = 3
      CustomConstraint = 's'
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'Price'
      currency = True
      Precision = 19
    end
    object qryArchiveInfoBedBes: TWordField
      FieldName = 'BedBes'
    end
    object qryArchiveInfoCalCulateKind: TWordField
      FieldName = 'CalCulateKind'
    end
    object qryArchiveInfoAccTopicCode: TLargeintField
      DisplayLabel = #1603#1583#1581#1587#1575#1576
      FieldName = 'AccTopicCode'
    end
    object qryArchiveInfoAccDetailCode: TIntegerField
      DisplayLabel = #1603#1583#1578#1601#1589#1610#1604#1610
      FieldName = 'AccDetailCode'
    end
    object qryArchiveInfoAccCTopicCode: TIntegerField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'
      FieldName = 'AccCTopicCode'
    end
    object qryArchiveInfoAccCTopicCode2: TIntegerField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'3'
      FieldName = 'AccCTopicCode2'
    end
    object qryArchiveInfoArchiveDate: TStringField
      FieldName = 'ArchiveDate'
      FixedChar = True
      Size = 10
    end
    object qryArchiveInfoDocNo: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1587#1606#1583
      FieldName = 'DocNo'
    end
    object qryArchiveInfoDocDate: TStringField
      DisplayLabel = #1578#1575#1585#1740#1582' '#1587#1606#1583
      FieldName = 'DocDate'
      FixedChar = True
      Size = 10
    end
    object qryArchiveInfoShowListKind: TWordField
      FieldName = 'ShowListKind'
    end
    object qryArchiveInfoArchiveID: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1576#1575#1610#1711#1575#1606#1610
      FieldName = 'ArchiveID'
    end
    object qryArchiveInfoLabelID: TIntegerField
      DisplayLabel = #1705#1583' '#1605#1581#1575#1587#1576#1607
      FieldName = 'LabelID'
    end
    object qryArchiveInfoDescriptions: TStringField
      DisplayLabel = #1588#1585#1581' '#1605#1581#1575#1587#1576#1607
      FieldName = 'Descriptions'
      Size = 500
    end
    object qryArchiveInfoPersoneName_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605#8207#1608#1606#1575#1605#8207#1582#1575#1606#1608#1575#1583#1711#1610
      FieldName = 'PersoneName_L1'
      ReadOnly = True
      Size = 56
    end
    object qryArchiveInfoPersoneName_L2: TStringField
      FieldName = 'PersoneName_L2'
      ReadOnly = True
      Size = 56
    end
    object qryArchiveInfoProjectName_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1662#1585#1608#1688#1607
      FieldName = 'ProjectName_L1'
      Size = 255
    end
    object qryArchiveInfoProjectName_L2: TStringField
      FieldName = 'ProjectName_L2'
      Size = 255
    end
    object qryArchiveInfoSalaryName_L1: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606#8207#1593#1575#1605#1604#8207#1581#1602#1608#1602#1610
      FieldName = 'SalaryName_L1'
      Size = 255
    end
    object qryArchiveInfoSalaryName_L2: TStringField
      FieldName = 'SalaryName_L2'
      Size = 255
    end
    object qryArchiveInfoAccCTopicCode3: TIntegerField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'4'
      FieldName = 'AccCTopicCode3'
    end
    object qryArchiveInfoProcCode: TIntegerField
      FieldName = 'ProcCode'
    end
    object qryArchiveInfoMounthRetard: TWordField
      DisplayLabel = #1605#1575#1607' '#1605#1593#1608#1602
      FieldName = 'MounthRetard'
    end
    object qryArchiveInfoYearRetard: TIntegerField
      FieldName = 'YearRetard'
    end
    object qryArchiveInfoYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryArchiveInfoYears: TIntegerField
      FieldName = 'Years'
    end
  end
  object srcArchiveInfo: TDataSource
    DataSet = qryArchiveInfo
    Left = 128
    Top = 257
  end
  object qryCalculateSalary: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'Mounth'
        DataType = ftWideString
        Size = 1
        Value = '1'
      end
      item
        Name = 'Year'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearMounth'
        DataType = ftWideString
        Size = 7
        Value = '1403/01'
      end
      item
        Name = 'PersonelNoFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'PersonelNoTo'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     FixCalculateType1.*'
      
        'FROM         Pay.FixCalculateType1( :Mounth, :Year, :YearMounth,' +
        ' :PersonelNoFrom, :PersonelNoTo) FixCalculateType1'
      '')
    Left = 512
    Top = 281
  end
  object srcFixedCalculated: TDataSource
    Left = 64
    Top = 177
  end
  object qrySearch: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     PersonelNo, name_L1+'#39' '#39'+lastName_L1 as name_L1,name_L' +
        '2+'#39' '#39'+lastName_L2 as name_L2'
      'FROM         Pay.PersonelInfo')
    Left = 432
    Top = 160
    object qrySearchPersonelNo: TIntegerField
      FieldName = 'PersonelNo'
    end
    object qrySearchname_L1: TStringField
      FieldName = 'name_L1'
      ReadOnly = True
      Size = 56
    end
    object qrySearchname_L2: TStringField
      FieldName = 'name_L2'
      ReadOnly = True
      Size = 56
    end
  end
  object qryOutPersonel: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'Mounth'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearID'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'Years'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'CompanyCodeFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'CompanyCodeTo'
        DataType = ftWideString
        Size = 3
        Value = '999'
      end
      item
        Name = 'CompanyCode2From'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'CompanyCode2To'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      
        'SELECT     Pay.PersonelInfo.PersonelNo, Pay.PersonelInfo.lastNam' +
        'e_L1 + '#39'  '#39' + Pay.PersonelInfo.name_L1 AS PersonName_L1,'
      
        '                      Pay.PersonelInfo.lastName_L2 + '#39'  '#39' + Pay.' +
        'PersonelInfo.name_L2 AS PersonName_L2'
      'FROM         Pay.PersonelInfo INNER JOIN'
      
        '                      Pay.Interdicts ON Pay.PersonelInfo.Persone' +
        'lNo = Pay.Interdicts.PersonelNo LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo ON Pay.PersonelInfo.Personel' +
        'State = Pay.FormsInfo.FormInfoID'
      
        'WHERE     (Pay.FormsInfo.InfoID < 50) AND (Pay.PersonelInfo.Pers' +
        'onelNo NOT IN'
      '                          (SELECT     PersonelNO'
      '                             FROM Pay.FixedCalculated'
      '                             WHERE     (Mounth = :Mounth)'
      'AND (YearID = :YearID  ) AND (Years = :Years  )'
      
        'AND  ((SubCompanyCode = 0)OR(SubCompanyCode BETWEEN :CompanyCode' +
        'From AND :CompanyCodeTo )) '
      
        '                             GROUP BY PersonelNO)) AND (Pay.Inte' +
        'rdicts.State < 50)'
      
        #9#9#9#9#9#9#9' AND  ((SubCompanyCode = 0)OR(SubCompanyCode BETWEEN :Com' +
        'panyCode2From AND :CompanyCode2To )) '
      'ORDER BY Pay.PersonelInfo.PersonelNo'
      '')
    Left = 718
    Top = 329
    object qryOutPersonelPersonelNo: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607#8207#1662#1585#1587#1606#1604#1610
      FieldName = 'PersonelNo'
    end
    object qryOutPersonelPersonName_L1: TStringField
      DisplayLabel = #1606#1575#1605#8207#1608#1606#1575#1605#8207#1582#1575#1606#1608#1575#1583#1711#1610
      FieldName = 'PersonName_L1'
      ReadOnly = True
      Size = 57
    end
    object qryOutPersonelPersonName_L2: TStringField
      DisplayLabel = 'PersonName'
      FieldName = 'PersonName_L2'
      ReadOnly = True
      Size = 57
    end
  end
  object SrcOutPersonel: TDataSource
    DataSet = qryOutPersonel
    Left = 790
    Top = 409
  end
  object qryChecking: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryCheckingAfterOpen
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'YearID'
        Size = -1
        Value = Null
      end
      item
        Name = 'Years'
        Size = -1
        Value = Null
      end
      item
        Name = 'Mounth'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Declare @YearID int'
      'Declare @Years int'
      'Declare @Mounth int'
      ''
      ''
      'set @YearID= :YearID'
      'set @Years= :Years'
      'set @Mounth= :Mounth'
      ''
      
        'SELECT'#9'PersonelDecExt.PersonelNo, PersonelInfo.name_L1, Personel' +
        'Info.lastName_L1,'
      #9#9'PersonelDecExt.EmployeeAmount, @Years as Years ,'
      #9#9'PersonelDecExt.FirstMounth, PersonelDecExt.EndMounth,'
      #9#9'FormsInfo.InfoName_L1'
      'FROM'#9'Pay.PersonelDecExt INNER JOIN'
      
        #9#9'Pay.FormsInfo ON PersonelDecExt.FormInfoID = FormsInfo.FormInf' +
        'oID INNER JOIN'
      
        #9#9'Pay.FormTypes ON FormsInfo.FormType = FormTypes.FormType INNER' +
        ' JOIN'
      
        #9#9'Pay.PersonelInfo ON PersonelDecExt.PersonelNo = PersonelInfo.P' +
        'ersonelNo'
      
        #9#9'LEFT OUTER JOIN Pay.Functions ON PersonelDecExt.PersonelNo = F' +
        'unctions.PersonelNo'
      '             and (Functions.Mounth = @Mounth)'
      '             and (Functions.YearID = @YearID)'
      '             and (Functions.Years = @Years)'
      'WHERE'
      '(PersonelDecExt.FirstMounth <= @Mounth) AND'
      #9#9'(PersonelDecExt.EndMounth >= @Mounth) AND'
      #9#9'(FormTypes.SalaryKind IN (12, 13))'
      '    AND (Functions.PersonelNo IS NULL)'
      '             and (Functions.YearID = @YearID)'
      '             and (Functions.Years = @Years)'
      '             and (PersonelDecExt.YearID = @YearID)'
      ''
      'UNION ALL'
      ''
      
        'SELECT'#9'PersonelDecExt.PersonelNo,PersonelInfo.name_L1, PersonelI' +
        'nfo.lastName_L1,'
      #9#9'PersonelDecExt.EmployeeAmount,'
      
        #9#9'PersonelDecExtItem.Years,  PersonelDecExtItem.Months as FirstM' +
        'onth ,'
      #9#9'PersonelDecExtItem.Months ,FormsInfo.InfoName_L1'
      'FROM'#9'Pay.PersonelDecExt INNER JOIN'
      
        #9#9'Pay.FormsInfo ON PersonelDecExt.FormInfoID = FormsInfo.FormInf' +
        'oID INNER JOIN'
      
        #9#9'Pay.FormTypes ON FormsInfo.FormType = FormTypes.FormType INNER' +
        ' JOIN'
      
        #9#9'Pay.PersonelDecExtItem ON PersonelDecExt.DecExtID = PersonelDe' +
        'cExtItem.DecExtID INNER JOIN'
      
        #9#9'Pay.PersonelInfo ON PersonelDecExt.PersonelNo = PersonelInfo.P' +
        'ersonelNo'
      ''
      
        #9#9'LEFT OUTER JOIN Pay.Functions ON PersonelDecExt.PersonelNo = F' +
        'unctions.PersonelNo'
      '             and (Functions.Mounth = @Mounth)'
      '             and (Functions.YearID = @YearID)'
      '             and (Functions.Years = @Years)'
      ''
      'WHERE'#9#9' ('
      #9#9' PersonelDecExtItem.Years = @Years) AND'
      #9#9'(PersonelDecExtItem.Months = @Mounth ) AND'
      #9#9'(FormTypes.SalaryKind IN (9, 14))'
      '    AND  (Functions.PersonelNo IS NULL)'
      '             and (Functions.YearID = @YearID)'
      '             and (Functions.Years = @Years)'
      '             and (PersonelDecExt.YearID = @YearID)'
      '')
    Left = 374
    Top = 313
    object qryCheckingPersonelNo: TIntegerField
      DisplayLabel = #1588'.'#1662#1585#1587#1606#1604
      FieldName = 'PersonelNo'
      ReadOnly = True
    end
    object qryCheckingname_L1: TStringField
      DisplayLabel = #1606#1575#1605
      FieldName = 'name_L1'
      ReadOnly = True
      Size = 25
    end
    object qryCheckinglastName_L1: TStringField
      DisplayLabel = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
      FieldName = 'lastName_L1'
      ReadOnly = True
      Size = 30
    end
    object qryCheckingEmployeeAmount: TBCDField
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'EmployeeAmount'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryCheckingYears: TIntegerField
      DisplayLabel = #1587#1575#1604
      FieldName = 'Years'
      ReadOnly = True
    end
    object qryCheckingFirstMounth: TSmallintField
      DisplayLabel = #1575#1586' '#1605#1575#1607
      FieldName = 'FirstMounth'
      ReadOnly = True
    end
    object qryCheckingEndMounth: TSmallintField
      DisplayLabel = #1578#1575' '#1605#1575#1607
      FieldName = 'EndMounth'
      ReadOnly = True
    end
    object qryCheckingInfoName_L1: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldName = 'InfoName_L1'
      ReadOnly = True
      Size = 255
    end
  end
  object SrcChecking: TDataSource
    DataSet = qryChecking
    Left = 494
    Top = 433
  end
  object qryMaster: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterScroll = qryMasterAfterScroll
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'SELECT     FormInfoID, InfoID, InfoName_L1'
      'FROM         Pay.FormsInfo'
      'WHERE     (FormType = 11)'
      'ORDER BY InfoID')
    Left = 114
    Top = 385
    object qryMasterFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qryMasterInfoID: TIntegerField
      FieldName = 'InfoID'
    end
    object qryMasterInfoName_L1: TStringField
      FieldName = 'InfoName_L1'
      Size = 255
    end
  end
  object SrcMaster: TDataSource
    DataSet = qryMaster
    Left = 50
    Top = 386
  end
  object popOther: TPopupMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    Left = 194
    Top = 359
    object N1: TMenuItem
      Action = actCalAcc
    end
    object N2: TMenuItem
      Action = actGETRemainedOffTime
    end
  end
  object qryWageFormula: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'RunOrder'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     SalaryID'
      'FROM            Pay.WageFormula'
      'WHERE  ( RunOrder = :RunOrder )')
    Left = 368
    Top = 365
    object qryWageFormulaSalaryID: TIntegerField
      FieldName = 'SalaryID'
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 128
    Top = 472
  end
  object qryWageCalc2: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT        FormInfoID, WageCalcKind, InfoID'
      'FROM            Pay.FormsInfo'
      'WHERE        (WageCalcKind IN (1, 3))'
      'ORDER BY InfoID')
    Left = 592
    Top = 293
    object qryWageCalc2FormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
  end
  object qryFitful: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'SELECT        ID, FitfulID, FitfulNote'
      'FROM            Fitful'
      'WHERE        (1 = 0)'
      'ORDER BY FitfulID DESC')
    Left = 298
    Top = 183
    object qryFitfulID: TLargeintField
      DisplayLabel = #1585#1583#1740#1601
      FieldName = 'ID'
    end
    object qryFitfulFitfulID: TFMTBCDField
      DisplayLabel = #1586#1605#1575#1606
      FieldName = 'FitfulID'
      Precision = 20
      Size = 4
    end
    object qryFitfulFitfulNote: TStringField
      DisplayLabel = #1593#1605#1604#1740#1575#1578
      FieldName = 'FitfulNote'
      Size = 1000
    end
  end
  object srcFitful: TDataSource
    DataSet = qryFitful
    Left = 234
    Top = 183
  end
  object qryChecking4AllPersonnel: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 0
    Parameters = <>
    Left = 262
    Top = 481
  end
  object Timer2: TTimer
    OnTimer = Timer2Timer
    Left = 96
    Top = 616
  end
  object qryFixedLabels: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterInsert = qryFixedLabelsAfterInsert
    Parameters = <>
    SQL.Strings = (
      'SELECT        LabelID, LabelDateTime, Descriptions'
      'FROM            Pay.FixedLabels')
    Left = 490
    Top = 223
    object qryFixedLabelsLabelID: TIntegerField
      DisplayLabel = #1705#1583
      FieldName = 'LabelID'
    end
    object qryFixedLabelsLabelDateTime: TDateTimeField
      DisplayLabel = #1578#1575#1585#1740#1582' '#1608' '#1586#1605#1575#1606
      FieldName = 'LabelDateTime'
    end
    object qryFixedLabelsDescriptions: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldName = 'Descriptions'
      Size = 500
    end
  end
  object srcFixedLabels: TDataSource
    DataSet = qryFixedLabels
    Left = 394
    Top = 223
  end
  object ImageList1: TImageList
    Left = 640
    Top = 41
    Bitmap = {
      494C010105000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006BAD840021842900218429006BAD8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006BAD8400218429002184
      290021842900218429002184290094DE8C0039B5520021842900218429002184
      290021842900218429006BAD8400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A5630039B5520039B5
      520039B5520039B5520039B5520039B5520039B5520039B5520039B5520039B5
      520039B5520039B5520021842900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A5630094DE8C0094DE
      8C0094DE8C0094DE8C0094DE8C0094DE8C0039B5520094DE8C0094DE8C0094DE
      8C0094DE8C0094DE8C0021842900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006BAD840063A5630063A5
      630063A5630063A5630063A5630094DE8C0039B5520021842900218429002184
      290021842900218429006BAD8400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006BAD840063A5630063A563006BAD8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031000000420000005200000052000000420000003100000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000052A54A00009408006BB563000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000042
      000000420000007B0800009C0800009C0800009C0800009C0800007B0800004A
      0000004A00000000000000000000000000000000000000000000000000000000
      00000000000018B5290000BD2100009400008CBD7B0000000000000000000000
      0000000000000000000000000000000000000000000029ADD60031B5DE0021AD
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000004A08000063
      080000A5100000A50800009C0800009C0800009C0800009C080000A5080000A5
      0800006B08000031000000000000000000000000000000000000000000000000
      00006BB5630000BD210000C6290000A50000319C310000000000000000000000
      0000000000000000000000000000000000000000000029ADD6009CDEEF0084EF
      FF004AC6E70021ADD60018A5C60018A5C60018A5C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000004A0800006B100008A5
      210008A51800009C0800009C0800009C0800009C0800009C0800009C0800009C
      080000A50800006B0800004A0000000000000000000000000000000000000000
      0000009C100000CE310000C6290000AD100000940000A5C69400000000000000
      0000000000000000000000000000000000000000000029ADD60052BDE7009CFF
      FF0094FFFF0073DEF70073DEF70073DEF70073DEF7004AC6E70021ADD60018A5
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000004A080010AD310008AD
      290008A5180000A510004AC65200E7F7EF00D6F7DE0010AD2100009C0800009C
      0800009C080000A50800004A00000000000000000000000000000000000052A5
      4A0000CE310000C6290000FF630000CE3100009C0000008C0000000000000000
      0000000000000000000000000000000000000000000029ADD60052BDE700ADFF
      FF008CF7FF008CEFFF008CEFFF008CEFFF0073DEF70073DEF70073DEF7004AC6
      EF0021ADD6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000005200000884210010B5420010A5
      3100089C180042BD4A00F7FFF700FFFFFF0084D68C0000A51000009C0800009C
      0800009C080000A50800007B08000042000000000000000000000000000018B5
      290029CE5A0000FF630000FF630000BD210000C62900009400008CBD7B000000
      0000000000000000000000000000000000000000000029ADD60029ADD600ADDE
      EF0094F7FF0094F7FF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DE
      F7004AC6EF00000000000000000000000000000000006B84C6000021A5000021
      A5000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
      A5000021A5000021A5006B84C600000000000052000010A5420018B54A0010AD
      310042BD4A00F7FFF700FFFFFF0073D67B00009C0800009C0800009C0800009C
      0800009C080000A50800009408000042000000000000000000000000000018C6
      420000FF630000FF630052A54A0052A54A0000C6290000A50000319C31000000
      0000000000000000000000000000000000000000000029ADD60073DEF70029AD
      D6009CFFFF008CF7FF008CF7FF008CF7FF008CEFFF008CEFFF008CEFFF0073DE
      F70073DEF70018A5C6000000000000000000000000000021A5009494F7000029
      E7000029E7000029E7000029E7000029E7000029E7000029E7000029E7000029
      E7000029E7000029E7000021A50000000000006B100021B5520021B5520073D6
      9400EFFFEF00FFFFFF00F7FFF700B5EFC600B5E7BD00ADE7B500ADE7B500ADE7
      B500ADE7B500009C0800009C0800004A00000000000000000000000000000000
      000000AD210000AD2100000000000000000000AD180000C6290000940000A5C6
      9400000000000000000000000000000000000000000029ADD60094F7FF0029AD
      D600ADDEEF00A5EFF700A5EFF700A5F7FF008CEFFF008CEFFF008CEFFF0073DE
      F7000073080018A5C6000000000000000000000000000021A500B5C6FF009CBD
      FF009CBDFF009CB5FF009CB5FF009CB5FF00638CF700638CF700638CF700638C
      F700526BF700526BF7000021A500000000000873100039BD6B0029BD5A00BDEF
      CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00009C0800009C0800005200000000000000000000000000000000
      00000000000000000000000000000000000031B5420000C62900009C0000008C
      0000000000000000000000000000000000000000000029ADD6009CFFFF0073DE
      F70029ADD60018A5C60018A5C60018A5C600ADDEEF008CF7FF0084EFFF000073
      08005AE78C000073080018A5C60000000000000000006B84C6000021A5000021
      A5000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
      A5000021A5000021A5006B84C600000000000873100052C67B0042C6730029BD
      5A00A5E7BD00FFFFFF00F7FFF70084DEA50042BD5A0042BD5A0042BD5A0042BD
      5A0042BD5A0008A51800009C0800004200000000000000000000000000000000
      0000000000000000000000000000000000000000000000B5210000C629000094
      00008CBD7B000000000000000000000000000000000029ADD6009CFFFF0094F7
      FF0073DEF70073DEF70073DEF7006BDEF70029ADD600ADDEEF000073080052D6
      7B0042D66B0031C64A0000730800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000087310004ABD6B0084DEA50021B5
      520021B5520094DEB500FFFFFF00E7F7EF0052C6730010AD310010AD310010AD
      310008A5290008A51800008C0800004200000000000000000000000000000000
      0000000000000000000000000000000000000000000052A54A0000C6290029AD
      390031B542000000000000000000000000000000000029ADD6009CFFFF0094F7
      FF0094F7FF0094F7FF0094F7FF0073DEF70073DEF70029ADD60018A5C600108C
      210031C64A00109C210018A5C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021A53100ADE7C6006BCE
      8C0010AD4A0018B54A008CDEAD00FFFFFF00F7FFF70029BD520010A5310008A5
      290008A5210008AD1800006B0800000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000029AD4A005AE7
      A50029AD39008CBD7B0000000000000000000000000029ADD600C6FFFF0094FF
      FF009CFFFF00D6FFFF00D6FFFF008CEFFF0094EFFF0073DEF70073DEF7000884
      100018AD29000884100000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021A5310052C67300BDEF
      D60063CE8C0021B5520018B5520094DEB500ADE7C60021B5520010AD390010AD
      310010AD3100109C2100006B0800000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000031B5420000D6
      42008CBD7B000000000000000000000000000000000021ADD6009CDEEF00C6FF
      FF00C6FFFF009CDEEF0018ADD60018A5C60018A5C60018A5C60018A5C600088C
      100008A518000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000109C21006BCE
      8C00D6F7E7009CE7B50052C67B0039BD630029BD5A0031BD630031BD630021BD
      4A0010A531000063080000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5C6
      940000000000000000000000000000000000000000000000000031B5DE0029AD
      D60018A5C60018A5C60000000000000000000000000000000000088C100008A5
      1800088410000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004ABD
      63004ABD630094DEB500BDEFD600A5E7C6008CDEAD007BDE9C004AC67B00189C
      3900189C39000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000730800087B0800088C1000088C1000087B
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000021A5310039B5520042BD630042BD630029A54A00108C29000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FC3F000000000000
      FC3F000000000000FC3F000000000000FC3F000000000000FC3F000000000000
      8001000000000000800100000000000080010000000000008001000000000000
      FC3F000000000000FC3F000000000000FC3F000000000000FC3F000000000000
      FC3F000000000000FFFF000000000000FFFFF81FF8FFFFFFFFFFE007F87F8FFF
      FFFFC003F07F807FFFFF8001F03F800FFFFF8001E03F8007FFFF0000E01F8007
      80010000E01F800380010000F30F800380010000FF0F800180010000FF878001
      FFFF0000FF878001FFFF8001FFC38003FFFF8001FFC78007FFFFC003FFEFC3C7
      FFFFE007FFFFFE0FFFFFF81FFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
end

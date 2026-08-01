inherited ArchiveInfoF: TArchiveInfoF
  Left = 400
  Top = 193
  Caption = #1605#1581#1575#1587#1576#1607' '#1581#1602#1608#1602
  ClientHeight = 630
  ClientWidth = 914
  Position = poDesigned
  OnDestroy = FormDestroy
  OnResize = FormResize
  ExplicitWidth = 922
  ExplicitHeight = 661
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel [0]
    Width = 914
    Height = 65
    ExplicitWidth = 918
    ExplicitHeight = 65
    inherited ImgTemplate: TImage
      Left = 672
      Top = 9
      Width = 33
      ExplicitLeft = 672
      ExplicitTop = 9
      ExplicitWidth = 33
    end
    inherited lblCaption: TLabel
      Left = 844
      Alignment = taLeftJustify
      Font.Color = clMaroon
      ParentBiDiMode = False
      ExplicitLeft = 844
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
    Top = 589
    Width = 914
    ExplicitTop = 590
    ExplicitWidth = 918
    inherited BtnReject: TBitBtn
      AlignWithMargins = True
      Left = 2
      Top = 7
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Align = alLeft
      ExplicitLeft = 2
      ExplicitTop = 7
      ExplicitHeight = 27
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 456
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actCal
      Align = alRight
      Caption = #1605#1581#1575#1587#1576#1607' '#1581#1602#1608#1602
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 610
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = ActBackWard
      Align = alRight
      Caption = #1605#1581#1575#1587#1576#1607' '#1605#1593#1608#1602
      TabOrder = 2
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 764
      Top = 7
      Width = 75
      Height = 27
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
      Left = 79
      Top = 7
      Width = 75
      Height = 27
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
      Left = 156
      Top = 7
      Width = 75
      Height = 27
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
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      TabOrder = 6
    end
    object BitBtn7: TBitBtn
      AlignWithMargins = True
      Left = 841
      Top = 7
      Width = 75
      Height = 27
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
      Left = 687
      Top = 7
      Width = 75
      Height = 27
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
      Left = 379
      Top = 7
      Width = 75
      Height = 27
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
      Left = 533
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Align = alRight
      Caption = #1605#1581#1575#1587#1576#1607#8207'...'
      TabOrder = 10
      OnClick = btnOtherClick
    end
    object BitBtn10: TBitBtn
      AlignWithMargins = True
      Left = 302
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actClearingDocument
      Align = alRight
      Caption = #1662#1575#1705#1587#1575#1586#1740' '#1587#1606#1583
      TabOrder = 11
    end
  end
  inherited Panel3: TPanel
    Top = 65
    Width = 914
    Height = 524
    ExplicitTop = 65
    ExplicitWidth = 914
    ExplicitHeight = 524
    object lbl1: TLabel
      Left = 2
      Top = 492
      Width = 910
      Height = 13
      Align = alBottom
      Caption = '...'
      ExplicitLeft = 900
      ExplicitWidth = 12
    end
    object lbl2: TLabel
      Left = 2
      Top = 479
      Width = 910
      Height = 13
      Align = alBottom
      Alignment = taRightJustify
      Caption = '....'
      ExplicitWidth = 16
    end
    object Panel1: TPanel
      Left = 696
      Top = 38
      Width = 216
      Height = 372
      Align = alRight
      BevelInner = bvRaised
      BevelOuter = bvNone
      BiDiMode = bdRightToLeft
      Ctl3D = True
      ParentBiDiMode = False
      ParentCtl3D = False
      TabOrder = 0
      ExplicitLeft = 700
      ExplicitHeight = 373
      object GroupBox1: TGroupBox
        Left = 1
        Top = 159
        Width = 214
        Height = 213
        Align = alClient
        Caption = #1604#1610#1587#1578' '#1575#1601#1585#1575#1583' '#1601#1575#1602#1583' '#1605#1581#1575#1587#1576#1607' '#1581#1602#1608#1602
        TabOrder = 0
        object DBGrid2: TDBGrid
          Left = 2
          Top = 15
          Width = 210
          Height = 196
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
        Left = 1
        Top = 1
        Width = 214
        Height = 158
        Align = alTop
        Caption = #1587#1575#1604' 1384'
        TabOrder = 1
        object Label1: TLabel
          Left = 119
          Top = 15
          Width = 81
          Height = 13
          Alignment = taRightJustify
          Caption = #1575#1586' '#1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610
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
          Top = 63
          Width = 80
          Height = 13
          Alignment = taRightJustify
          Caption = #1578#1575' '#1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610
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
        object mskPrsnlNo1: TMaskEdit
          Tag = 1
          Left = 31
          Top = 10
          Width = 88
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
          Width = 86
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
        object MaskEdit1: TMaskEdit
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
      end
    end
    object StatusBar1: TStatusBar
      Left = 2
      Top = 460
      Width = 910
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
      ExplicitTop = 461
      ExplicitWidth = 914
    end
    object ToolBar1: TToolBar
      Left = 2
      Top = 2
      Width = 910
      Height = 36
      BorderWidth = 2
      ButtonHeight = 21
      ButtonWidth = 54
      Caption = 'ToolBar1'
      EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
      EdgeInner = esLowered
      ShowCaptions = True
      TabOrder = 2
      ExplicitWidth = 914
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
      Left = 2
      Top = 38
      Width = 694
      Height = 372
      Align = alClient
      Caption = 'pnl1'
      TabOrder = 3
      object spl2: TSplitter
        Left = 1
        Top = 99
        Width = 692
        Height = 3
        Cursor = crVSplit
        Align = alTop
        ExplicitTop = 266
        ExplicitWidth = 100
      end
      object spl3: TSplitter
        Left = 1
        Top = 269
        Width = 692
        Height = 3
        Cursor = crVSplit
        Align = alTop
        ExplicitLeft = -1
        ExplicitTop = 331
        ExplicitWidth = 665
      end
      object grd1: TDBGrid
        Left = 1
        Top = 272
        Width = 692
        Height = 73
        Align = alClient
        Color = clCream
        DataSource = srcArchiveInfo
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnTitleClick = grd1TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'PersonelNO'
            Title.Alignment = taCenter
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PersoneName_L1'
            Title.Alignment = taCenter
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PersoneName_L2'
            Title.Alignment = taCenter
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SalaryID'
            Title.Alignment = taCenter
            Width = 32
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SalaryName_L1'
            Title.Alignment = taCenter
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SalaryName_L2'
            Title.Alignment = taCenter
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ProjectID'
            Title.Alignment = taCenter
            Width = 39
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ProjectName_L1'
            Title.Alignment = taCenter
            Width = 39
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ProjectName_L2'
            Title.Alignment = taCenter
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Price'
            Title.Alignment = taCenter
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ArchiveID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AccTopicCode'
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AccDetailCode'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AccCTopicCode'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AccCTopicCode3'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DocNo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DocDate'
            Visible = True
          end>
      end
      object grpChecking: TGroupBox
        Left = 1
        Top = 241
        Width = 692
        Height = 130
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = '  '#1604#1610#1587#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1602#1575#1576#1604' '#1576#1585#1585#1587#1610' '
        TabOrder = 1
        Visible = False
        ExplicitWidth = 696
        ExplicitHeight = 131
        object spl1: TSplitter
          Left = 2
          Top = 15
          Width = 692
          Height = 3
          Cursor = crVSplit
          Align = alTop
          ExplicitWidth = 122
        end
        object grd2: TDBGrid
          Left = 2
          Top = 18
          Width = 692
          Height = 92
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
          OnDblClick = grd2DblClick
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
          Top = 110
          Width = 692
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
        Left = 1
        Top = 102
        Width = 692
        Height = 167
        Align = alTop
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        TabOrder = 2
        ExplicitLeft = 1
        ExplicitTop = 102
        ExplicitWidth = 692
        inherited GroupBox1: TGroupBox
          Width = 692
          ExplicitWidth = 696
          inherited DBGrid2: TCedarDbgrid
            Width = 692
            OnDblClick = grd2DblClick
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
        Left = 1
        Top = 1
        Width = 692
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
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 692
        inherited grpTaxCheck: TGroupBox
          Width = 692
          ExplicitWidth = 696
          inherited DBGrid2: TDBGrid
            Width = 692
            OnDblClick = grd2DblClick
          end
        end
        inherited srcTaxCheck: TDataSource
          Left = 298
          Top = 50
        end
      end
    end
    object pb1: TProgressBar
      Left = 2
      Top = 505
      Width = 910
      Height = 17
      Align = alBottom
      TabOrder = 4
      ExplicitTop = 506
      ExplicitWidth = 914
    end
    object CheckBox1: TCheckBox
      AlignWithMargins = True
      Left = 5
      Top = 440
      Width = 904
      Height = 17
      Align = alBottom
      Caption = #1606#1605#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1605#1581#1575#1587#1576#1607' '#1588#1583#1607' '#1580#1607#1578' '#1603#1606#1578#1585#1604#1607#1575#1610' '#1601#1606#1610'('#1590#1585#1608#1585#1610' '#1606#1605#1610' '#1576#1575#1588#1583')'
      TabOrder = 5
      OnClick = CheckBox1Click
      ExplicitTop = 441
      ExplicitWidth = 908
    end
    inline frmTaxKindCalc1: TfrmTaxKindCalc
      Left = 2
      Top = 410
      Width = 910
      Height = 27
      Align = alBottom
      TabOrder = 6
      ExplicitLeft = 2
      ExplicitTop = 410
      ExplicitWidth = 910
      ExplicitHeight = 27
      inherited Label1: TLabel
        Width = 850
        Height = 15
        ExplicitLeft = 276
        ExplicitWidth = 580
        ExplicitHeight = 13
      end
      inherited Panel1: TPanel
        Left = 862
        Height = 27
        ExplicitLeft = 866
        ExplicitHeight = 27
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
  inherited ActionList: TActionList
    Left = 576
    Top = 3
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
      end>
    SQL.Strings = (
      
        'SELECT      Pay.FixedCalculated.*, Pay.PersonelInfo.lastName_L1 ' +
        '+ '#39' '#39' + Pay.PersonelInfo.name_L1 AS PersoneName_L1,'
      
        '                      Pay.PersonelInfo.lastName_L2 + '#39' '#39' + Pay.P' +
        'ersonelInfo.name_L2 AS PersoneName_L2, Pay.FormsInfo.InfoName_L1' +
        ' AS ProjectName_L1,'
      
        '                      Pay.FormsInfo.InfoName_L2 AS ProjectName_L' +
        '2, FormsInfo_1.InfoName_L1 AS SalaryName_L1, FormsInfo_1.InfoNam' +
        'e_L2 AS SalaryName_L2'
      'FROM         Pay.FixedCalculated LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo ON Pay.FixedCalculated.Proje' +
        'ctID = Pay.FormsInfo.FormInfoID LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo FormsInfo_1 ON Pay.FixedCalc' +
        'ulated.SalaryID = FormsInfo_1.FormInfoID LEFT OUTER JOIN'
      
        '                      Pay.PersonelInfo ON Pay.FixedCalculated.Pe' +
        'rsonelNO = Pay.PersonelInfo.PersonelNo'
      
        'WHERE     (Pay.FixedCalculated.Mounth = :Mounth) AND (Pay.FixedC' +
        'alculated.PersonelNO BETWEEN :PersonelNoFrom AND :PersonelNoTo)'
      
        'AND  (Pay.FixedCalculated.Years = :Years ) AND  (Pay.FixedCalcul' +
        'ated.YearID = :YearID ) '
      ''
      
        'ORDER BY Pay.FixedCalculated.PersonelNO, Pay.FixedCalculated.Arc' +
        'hiveID')
    Left = 304
    Top = 257
    object qryArchiveInfoFixedCID: TAutoIncField
      FieldName = 'FixedCID'
      ReadOnly = True
    end
    object qryArchiveInfoFunctionID: TIntegerField
      FieldName = 'FunctionID'
    end
    object qryArchiveInfoFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
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
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1587#1606#1583
      FieldName = 'DocNo'
    end
    object qryArchiveInfoDocDate: TStringField
      Tag = 3
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
        DataType = ftString
        Size = 1
        Value = '9'
      end
      item
        Name = 'Year'
        DataType = ftString
        Size = 2
        Value = '84'
      end
      item
        Name = 'YearMounth'
        DataType = ftString
        Size = 5
        Value = '84/01'
      end
      item
        Name = 'PersonelNoFrom'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PersonelNoTo'
        DataType = ftString
        Size = 10
        Value = '2147483647'
      end>
    SQL.Strings = (
      'SELECT     FixCalculateType1.*'
      
        'FROM         Pay.FixCalculateType1( :Mounth, :Year, :YearMounth,' +
        ' :PersonelNoFrom, :PersonelNoTo) FixCalculateType1')
    Left = 472
    Top = 265
  end
  object qryFixedCalculated: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'SELECT     *'
      'FROM         Pay.FixedCalculated'
      'WHERE     (FixedCID < 0)')
    Left = 184
    Top = 145
    object qryFixedCalculatedFixedCID: TAutoIncField
      FieldName = 'FixedCID'
      ReadOnly = True
    end
    object qryFixedCalculatedFunctionID: TIntegerField
      FieldName = 'FunctionID'
    end
    object qryFixedCalculatedFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qryFixedCalculatedPersonelNO: TIntegerField
      FieldName = 'PersonelNO'
    end
    object qryFixedCalculatedProjectID: TIntegerField
      FieldName = 'ProjectID'
    end
    object qryFixedCalculatedOfficeCode: TIntegerField
      FieldName = 'OfficeCode'
    end
    object qryFixedCalculatedJobCede: TIntegerField
      FieldName = 'JobCede'
    end
    object qryFixedCalculatedSalaryID: TIntegerField
      FieldName = 'SalaryID'
    end
    object qryFixedCalculatedMounth: TWordField
      FieldName = 'Mounth'
    end
    object qryFixedCalculatedPrice: TBCDField
      FieldName = 'Price'
      Required = True
      Precision = 19
    end
    object qryFixedCalculatedBedBes: TWordField
      FieldName = 'BedBes'
    end
    object qryFixedCalculatedCalCulateKind: TWordField
      FieldName = 'CalCulateKind'
    end
    object qryFixedCalculatedAccTopicCode: TLargeintField
      FieldName = 'AccTopicCode'
    end
    object qryFixedCalculatedAccDetailCode: TIntegerField
      FieldName = 'AccDetailCode'
    end
    object qryFixedCalculatedAccCTopicCode: TIntegerField
      FieldName = 'AccCTopicCode'
    end
    object qryFixedCalculatedAccCTopicCode2: TIntegerField
      FieldName = 'AccCTopicCode2'
    end
    object qryFixedCalculatedArchiveDate: TStringField
      FieldName = 'ArchiveDate'
      FixedChar = True
      Size = 10
    end
    object qryFixedCalculatedDocNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1587#1606#1583
      FieldName = 'DocNo'
    end
    object qryFixedCalculatedDocDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1740#1582' '#1587#1606#1583
      FieldName = 'DocDate'
      FixedChar = True
      Size = 10
    end
    object qryFixedCalculatedShowListKind: TWordField
      FieldName = 'ShowListKind'
    end
    object qryFixedCalculatedArchiveID: TIntegerField
      FieldName = 'ArchiveID'
    end
    object qryFixedCalculatedAccCTopicCode3: TIntegerField
      FieldName = 'AccCTopicCode3'
    end
    object qryFixedCalculatedProcCode: TIntegerField
      FieldName = 'ProcCode'
    end
    object qryFixedCalculatedMounthRetard: TWordField
      FieldName = 'MounthRetard'
    end
    object qryFixedCalculatedYearRetard: TIntegerField
      FieldName = 'YearRetard'
    end
    object qryFixedCalculatedYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryFixedCalculatedYears: TIntegerField
      FieldName = 'Years'
    end
  end
  object srcFixedCalculated: TDataSource
    DataSet = qryFixedCalculated
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
    Left = 528
    Top = 152
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
    LockType = ltReadOnly
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'Mounth'
        DataType = ftString
        Size = 1
        Value = '6'
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
      '                             FROM         Pay.FixedCalculated'
      '                             WHERE     (Mounth = :Mounth)'
      
        '                             GROUP BY PersonelNO)) AND (Pay.Inte' +
        'rdicts.State < 50)'
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
      'Declare @Years int '
      'Declare @Mounth int '
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
      'WHERE'
      '(PersonelDecExt.FirstMounth <= @Mounth) AND'
      #9#9'(PersonelDecExt.EndMounth >= @Mounth) AND'
      #9#9'----  move to JOIN'
      #9#9'--(NOT (PersonelDecExt.PersonelNo IN'
      #9#9'--'#9'   (SELECT distinct'#9'PersonelNo'
      #9#9'--'#9#9'FROM'#9'Functions'
      #9#9'--'#9#9'WHERE'#9'(Mounth = @Mounth)))) AND'
      #9#9'(FormTypes.SalaryKind IN (12, 13))'
      '    AND (Functions.PersonelNo IS NULL)'
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
      ''
      'WHERE'
      '---  move to JOIN'
      '--(NOT (PersonelDecExt.PersonelNo IN'
      '--'#9#9'(SELECT   distinct  PersonelNo'
      '--'#9#9' FROM         Pay.Functions'
      '--'#9#9' WHERE     (Mounth = @Mounth )))) AND'
      #9#9' ('
      #9#9' PersonelDecExtItem.Years = @Years) AND'
      #9#9'(PersonelDecExtItem.Months = @Mounth ) AND'
      #9#9'(FormTypes.SalaryKind IN (9, 14))'
      '    AND  (Functions.PersonelNo IS NULL)'
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
    Left = 470
    Top = 393
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
    Left = 202
    Top = 407
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
    Parameters = <>
    SQL.Strings = (
      'SELECT     SalaryID'
      'FROM            Pay.WageFormula')
    Left = 400
    Top = 453
    object qryWageFormulaSalaryID: TIntegerField
      FieldName = 'SalaryID'
    end
  end
end

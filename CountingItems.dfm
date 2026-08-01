inherited CountingItemsF: TCountingItemsF
  Left = 400
  Top = 190
  Caption = #1579#1576#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1588#1605#1575#1585#1588' '#1575#1606#1576#1575#1585' '#1711#1585#1583#1575#1606#1610' _ '
  ClientHeight = 625
  ClientWidth = 953
  Position = poDesigned
  ExplicitWidth = 961
  ExplicitHeight = 656
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 584
    Width = 953
    TabOrder = 2
    ExplicitTop = 584
    ExplicitWidth = 953
    DesignSize = (
      953
      41)
    object DBNavigator1: TDBNavigator [0]
      Left = 470
      Top = 9
      Width = 240
      Height = 25
      DataSource = srcCounting
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Anchors = [akLeft, akTop, akRight, akBottom]
      Flat = True
      TabOrder = 5
    end
    object okPanel: TPanel [1]
      Left = 707
      Top = 1
      Width = 84
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 6
      Visible = False
      object BitBtn7: TBitBtn
        Left = 6
        Top = 8
        Width = 75
        Height = 25
        Caption = #1578#1575#1610#1610#1583
        TabOrder = 0
        OnClick = BitBtn7Click
      end
    end
    inherited BtnReject: TBitBtn
      TabOrder = 4
    end
    object newPanel: TPanel
      Left = 791
      Top = 1
      Width = 161
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        161
        39)
      object BitBtn3: TBitBtn
        Left = 83
        Top = 8
        Width = 75
        Height = 25
        Action = actInsert
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 5
        Top = 8
        Width = 75
        Height = 25
        Action = actEdit
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
    end
    object BitBtn6: TBitBtn
      Left = 316
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Caption = #1670#1600#1600#1600#1575#1662
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      Left = 238
      Top = 8
      Width = 75
      Height = 25
      Action = actSendExel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      Left = 82
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 3
    end
    object BitBtn5: TBitBtn
      Left = 160
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 7
    end
    object BitBtn8: TBitBtn
      Left = 394
      Top = 8
      Width = 75
      Height = 25
      Caption = #1587#1575#1610#1585'...'
      TabOrder = 8
      OnClick = BitBtn8Click
    end
  end
  inherited Panel2: TPanel
    Width = 953
    Height = 55
    TabOrder = 0
    ExplicitWidth = 953
    ExplicitHeight = 55
    DesignSize = (
      953
      55)
    inherited ImgTemplate: TImage
      Left = 952
      ExplicitLeft = 786
    end
    inherited lblCaption: TLabel
      Left = 845
      Height = 35
      ExplicitLeft = 845
    end
    inherited lblBaseDate: TLabel
      Left = 410
      ExplicitLeft = 410
    end
    object LblStore: TLabel
      Left = 5
      Top = 29
      Width = 30
      Height = 23
      Alignment = taRightJustify
      Caption = #1575#1606#1576#1575#1585
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object dbtxtState: TDBText
      Left = 416
      Top = 32
      Width = 123
      Height = 21
      Alignment = taCenter
      Anchors = [akTop]
      DataField = 'State'
      DataSource = srcCounting
      Font.Charset = ARABIC_CHARSET
      Font.Color = 8684799
      Font.Height = -15
      Font.Name = 'Jadid'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      ExplicitLeft = 333
    end
  end
  inherited Panel3: TPanel
    Top = 55
    Width = 953
    Height = 529
    TabOrder = 1
    ExplicitTop = 55
    ExplicitWidth = 953
    ExplicitHeight = 529
    object Panel1: TPanel
      Left = 713
      Top = 2
      Width = 238
      Height = 525
      Align = alRight
      BevelInner = bvRaised
      TabOrder = 0
      object GroupBox2: TGroupBox
        Left = 2
        Top = 56
        Width = 234
        Height = 192
        Align = alTop
        Caption = ' '#1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610' '
        TabOrder = 0
        DesignSize = (
          234
          192)
        object DBMemo1: TDBMemo
          Left = 4
          Top = 18
          Width = 216
          Height = 160
          Anchors = [akLeft, akTop, akRight]
          Color = 15461355
          Ctl3D = False
          DataField = 'Note'
          DataSource = srcCounting
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
      end
      object Panel4: TPanel
        Left = 2
        Top = 2
        Width = 234
        Height = 54
        Align = alTop
        TabOrder = 1
        object Label8: TLabel
          Left = 117
          Top = 9
          Width = 50
          Height = 13
          Caption = #1588#1605#1575#1585#1607' '#1601#1585#1605
        end
        object LblReciptDate: TLabel
          Left = 115
          Top = 33
          Width = 41
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = #1578#1575#1585#1610#1582' '#1601#1585#1605
        end
        object DBEdit3: TDBEdit
          Left = 40
          Top = 5
          Width = 71
          Height = 21
          DataField = 'CountNumber'
          DataSource = srcCounting
          TabOrder = 0
        end
        object btnCountNumber: TBitBtn
          Left = 16
          Top = 5
          Width = 22
          Height = 21
          Action = actInsert
          Caption = '...'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
        object DBEditDate: TDBEdit
          Left = 40
          Top = 30
          Width = 70
          Height = 19
          Color = 15461355
          Ctl3D = False
          DataField = 'CountDate'
          DataSource = srcCounting
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
        end
      end
      object grpNotFound: TGroupBox
        Left = 2
        Top = 410
        Width = 234
        Height = 77
        Align = alClient
        Caption = #1603#1575#1604#1575' '#1607#1575#1610' '#1610#1575#1601#1578' '#1606#1588#1583#1607' '#1583#1585' '#1588#1605#1575#1585#1588'  '#1602#1576#1604
        TabOrder = 2
        Visible = False
        object Memo1: TMemo
          Left = 2
          Top = 15
          Width = 230
          Height = 60
          Align = alClient
          Color = clGradientInactiveCaption
          Lines.Strings = (
            'Memo1')
          TabOrder = 0
        end
      end
      object Panel11: TPanel
        Left = 2
        Top = 332
        Width = 234
        Height = 36
        Align = alTop
        TabOrder = 3
        object Label1: TLabel
          AlignWithMargins = True
          Left = 151
          Top = 4
          Width = 79
          Height = 28
          Align = alRight
          Alignment = taRightJustify
          AutoSize = False
          Caption = #1662#1740#1588' '#1601#1585#1590' '#1588#1605#1575#1585#1607' '#1585#1575#1607#1606#1605#1575
          WordWrap = True
          ExplicitLeft = 108
        end
        object medtControlCode: TMaskEdit
          AlignWithMargins = True
          Left = 4
          Top = 7
          Width = 141
          Height = 22
          Margins.Top = 6
          Margins.Bottom = 6
          Align = alClient
          TabOrder = 0
          Text = '0'
          OnChange = medtControlCodeChange
          ExplicitHeight = 21
        end
      end
      object GroupBox1: TGroupBox
        Left = 2
        Top = 248
        Width = 234
        Height = 42
        Align = alTop
        Caption = ' '#1580#1587#1578#1580#1608#1610' '#1587#1585#1610#1593' '
        TabOrder = 4
        object cmbQuickSearch: TComboBox
          Left = 2
          Top = 15
          Width = 230
          Height = 21
          Align = alClient
          TabOrder = 0
          OnChange = cmbQuickSearchChange
        end
      end
      object GroupBox3: TGroupBox
        Left = 2
        Top = 290
        Width = 234
        Height = 42
        Align = alTop
        Caption = ' '#1580#1587#1578#1580#1608#1610' '#1705#1575#1604#1575
        TabOrder = 5
        object cmbBtn: TComboBox
          Left = 2
          Top = 15
          Width = 230
          Height = 21
          Align = alClient
          TabOrder = 0
          Text = #1606#1583#1575#1585#1583
          OnChange = cmbQuickSearchChange
          Items.Strings = (
            #1606#1583#1575#1585#1583
            #1580#1587#1578#1580#1608' '#1576#1585#1575#1740' '#1579#1576#1578
            #1580#1587#1578#1580#1608' '#1575#1586' '#1579#1576#1578' '#1588#1583#1607' '#1607#1575
            #1580#1587#1578#1580#1608#1740' '#1575#1582#1578#1604#1575#1601' '#1588#1605#1575#1585#1588' '#1575#1608#1604' '#1608' '#1583#1608#1605)
        end
      end
      object Panel12: TPanel
        Left = 2
        Top = 487
        Width = 234
        Height = 36
        Align = alBottom
        TabOrder = 6
        DesignSize = (
          234
          36)
        object Label4: TLabel
          Left = 130
          Top = 12
          Width = 60
          Height = 13
          Alignment = taRightJustify
          Anchors = [akLeft, akBottom]
          AutoSize = False
          Caption = #1601#1575#1610#1604' '#1662#1610#1608#1587#1578#1610
        end
        object DBEdit7: TDBEdit
          Left = 5
          Top = 9
          Width = 123
          Height = 19
          Anchors = [akLeft, akBottom]
          Color = 15461355
          Ctl3D = False
          DataField = 'AttachFileName'
          DataSource = srcCounting
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
      end
      object GroupBox4: TGroupBox
        Left = 2
        Top = 368
        Width = 234
        Height = 42
        Align = alTop
        Caption = #1608#1585#1608#1583' '#1575#1591#1604#1575#1593#1575#1578
        TabOrder = 7
        object cmbGridEnter: TComboBox
          Left = 2
          Top = 15
          Width = 230
          Height = 21
          Align = alClient
          TabOrder = 0
          Text = #1606#1583#1575#1585#1583
          OnChange = cmbQuickSearchChange
          Items.Strings = (
            #1606#1583#1575#1585#1583
            #1581#1575#1604#1578' '#1605#1593#1605#1608#1604'('#1601#1593#1575#1604' '#1576#1608#1583#1606' '#1588#1605#1575#1585#1607' '#1585#1575#1607#1606#1605#1575')'
            #1608#1585#1608#1583' '#1575#1591#1604#1575#1593#1575#1578' '#1583#1585' '#1580#1583#1608#1604'('#1711#1585#1740#1583')')
        end
      end
    end
    object Panel5: TPanel
      Left = 2
      Top = 2
      Width = 711
      Height = 525
      Align = alClient
      TabOrder = 1
      object Panel7: TPanel
        Left = 1
        Top = 1
        Width = 709
        Height = 338
        Align = alClient
        BevelInner = bvLowered
        BevelOuter = bvLowered
        BevelWidth = 2
        TabOrder = 0
        object StatusBar1: TStatusBar
          Left = 4
          Top = 315
          Width = 701
          Height = 19
          Panels = <
            item
              Width = 150
            end
            item
              Width = 150
            end
            item
              Width = 150
            end
            item
              Width = 150
            end>
        end
        object pb1: TProgressBar
          Left = 4
          Top = 298
          Width = 701
          Height = 17
          Align = alBottom
          TabOrder = 2
        end
        object DBGrid1: TCedarDbgrid
          Tag = 111
          Left = 4
          Top = 4
          Width = 701
          Height = 294
          TabStop = False
          Align = alClient
          Color = clCream
          DataSource = srcCountingItems
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
          OnDblClick = actCountingControlCodeFExecute
          OnEnter = DBGrid1Enter
          OnKeyPress = DBGrid1KeyPress
          ActiveSearchPanel = False
          SelectFooterIndex = 0
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'StuffCode'
              Footers = <>
              Title.Alignment = taCenter
              Width = 40
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_StuffName'
              Footers = <>
              Title.Alignment = taCenter
              Width = 23
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_UnitName'
              Footers = <>
              Title.Alignment = taCenter
              Width = 33
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_StuffTecInfo'
              Footers = <>
              Width = 76
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_SellPrice1'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'SheetID'
              Footers = <>
              Title.Alignment = taCenter
              Width = 49
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'StuffSize'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Modern'
              Font.Style = []
              Footers = <>
              Title.Alignment = taCenter
              Width = 23
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'StuffDiameter'
              Footers = <>
              Title.Alignment = taCenter
              Width = 42
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'StuffAlloy'
              Footers = <>
              Title.Alignment = taCenter
              Width = 24
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Count1Entity'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Count1Weight'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Count2Entity'
              Footers = <>
              Title.Alignment = taCenter
              Width = 38
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Count2Weight'
              Footers = <>
              Title.Alignment = taCenter
              Width = 34
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'ControlCode'
              Footers = <>
              Title.Alignment = taCenter
              Width = 41
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'StuffGrade'
              Footers = <>
              Title.Alignment = taCenter
              Width = 49
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Pakhsh'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'PadidAvarandeh'
              Footers = <>
              Width = 54
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_gateKetab'
              Footers = <>
              Width = 26
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_NoeJeld'
              Footers = <>
              Width = 39
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_Carton'
              Footers = <>
              Width = 24
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object EditPanel: TPanel
        Left = 1
        Top = 339
        Width = 709
        Height = 185
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        Visible = False
        object pnlStuffCode: TPanel
          Left = 0
          Top = 36
          Width = 709
          Height = 51
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            709
            51)
          object Label20: TLabel
            Left = 648
            Top = 7
            Width = 29
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1603#1575#1604#1575
            FocusControl = EdtStuffCode
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 565
          end
          object Label23: TLabel
            Left = 135
            Top = 31
            Width = 21
            Height = 13
            Alignment = taRightJustify
            Caption = #1608#1575#1581#1583
          end
          object SBtnStuffCode: TSpeedButton
            Left = 493
            Top = 2
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SBtnStuffCodeClick
            ExplicitLeft = 410
          end
          object Lbl_SellPrice1: TLabel
            Left = 648
            Top = 31
            Width = 53
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1576#1607#1575#1610' '#1601#1585#1608#1588
            ExplicitLeft = 565
          end
          object Label3: TLabel
            Left = 135
            Top = 7
            Width = 31
            Height = 13
            Caption = #1605'.'#1601#1606#1610
          end
          object EdtStuffCode: TDBEdit
            Left = 519
            Top = 4
            Width = 125
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'StuffCode'
            DataSource = srcCountingItems
            TabOrder = 0
            OnKeyDown = EdtStuffCodeKeyDown
            OnKeyPress = EdtStuffCodeKeyPress
          end
          object DBEdit2: TDBEdit
            Left = 168
            Top = 4
            Width = 323
            Height = 19
            TabStop = False
            Anchors = [akLeft, akTop, akRight]
            Color = 15461355
            Ctl3D = False
            DataField = '_StuffName'
            DataSource = srcCountingItems
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 1
            OnKeyDown = EdtStuffCodeKeyDown
          end
          object DBEdit5: TDBEdit
            Left = 6
            Top = 28
            Width = 127
            Height = 19
            TabStop = False
            Color = 15461355
            Ctl3D = False
            DataField = '_UnitName'
            DataSource = srcCountingItems
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 2
            OnKeyDown = EdtStuffCodeKeyDown
          end
          object Edt_SellPrice1: TDBEdit
            Left = 519
            Top = 28
            Width = 125
            Height = 19
            TabStop = False
            Anchors = [akTop, akRight]
            Ctl3D = False
            DataField = '_SellPrice1'
            DataSource = srcCountingItems
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 3
            OnKeyDown = EdtStuffCodeKeyDown
          end
          object DBEdit6: TDBEdit
            Left = 6
            Top = 4
            Width = 127
            Height = 19
            TabStop = False
            Color = 15461355
            Ctl3D = False
            DataField = '_StuffTecInfo'
            DataSource = srcCountingItems
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 4
            OnKeyDown = EdtStuffCodeKeyDown
          end
        end
        object Pnl_GradeToAlloy: TPanel
          Left = 0
          Top = 87
          Width = 709
          Height = 27
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          DesignSize = (
            709
            27)
          object Label15: TLabel
            Left = 652
            Top = 8
            Width = 40
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1583#1585#1580#1607' '#1603#1575#1604#1575
            FocusControl = DBEdit15
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 565
          end
          object Label17: TLabel
            Left = 493
            Top = 8
            Width = 20
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1575#1576#1593#1575#1583
            ExplicitLeft = 406
          end
          object Label18: TLabel
            Left = 135
            Top = 8
            Width = 17
            Height = 13
            Alignment = taRightJustify
            Caption = #1570#1604#1610#1575#1688
            FocusControl = DBEdit18
          end
          object Label19: TLabel
            Left = 265
            Top = 8
            Width = 35
            Height = 13
            Alignment = taRightJustify
            Caption = #1590#1582#1575#1605#1578
            FocusControl = DBEdit19
          end
          object DBEdit15: TDBEdit
            Left = 523
            Top = 4
            Width = 125
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'StuffGrade'
            DataSource = srcCountingItems
            TabOrder = 0
          end
          object DBEdit18: TDBEdit
            Left = 6
            Top = 4
            Width = 127
            Height = 21
            DataField = 'StuffAlloy'
            DataSource = srcCountingItems
            TabOrder = 3
          end
          object DBEdit19: TDBEdit
            Left = 183
            Top = 4
            Width = 80
            Height = 21
            DataField = 'StuffDiameter'
            DataSource = srcCountingItems
            TabOrder = 2
          end
          object DBEdit4: TDBEdit
            Left = 409
            Top = 4
            Width = 80
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'StuffSize'
            DataSource = srcCountingItems
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Modern'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
        end
        object PnlEntityWeightPrice: TPanel
          Left = 0
          Top = 114
          Width = 709
          Height = 27
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 3
          DesignSize = (
            709
            27)
          object LblEntity: TLabel
            Left = 652
            Top = 8
            Width = 25
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1605#1602#1583#1575#1585
            FocusControl = EdtEntity
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 565
          end
          object LblWeight: TLabel
            Left = 493
            Top = 8
            Width = 16
            Height = 13
            Alignment = taRightJustify
            Anchors = [akRight]
            Caption = #1608#1586#1606
            FocusControl = EdtWeight
            ExplicitLeft = 406
          end
          object Label13: TLabel
            Left = 135
            Top = 8
            Width = 46
            Height = 13
            Alignment = taRightJustify
            Caption = #1588'.'#1585#1575#1607#1606#1605#1575
            FocusControl = edtControlCode
          end
          object Label2: TLabel
            Left = 265
            Top = 8
            Width = 52
            Height = 13
            Alignment = taRightJustify
            Caption = #1588#1605#1575#1585#1607' '#1576#1585#1711#1607
            FocusControl = edtSheetID
          end
          object EdtEntity: TDBEdit
            Left = 523
            Top = 4
            Width = 125
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'Count1Entity'
            DataSource = srcCountingItems
            TabOrder = 0
            OnExit = EdtEntityExit
          end
          object EdtWeight: TDBEdit
            Left = 409
            Top = 4
            Width = 80
            Height = 21
            Anchors = [akRight]
            DataField = 'Count1Weight'
            DataSource = srcCountingItems
            TabOrder = 1
          end
          object edtControlCode: TDBEdit
            Left = 6
            Top = 4
            Width = 127
            Height = 21
            DataField = 'ControlCode'
            DataSource = srcCountingItems
            TabOrder = 3
            OnKeyPress = EdtStuffCodeKeyPress
          end
          object edtSheetID: TDBEdit
            Left = 183
            Top = 4
            Width = 80
            Height = 21
            DataField = 'SheetID'
            DataSource = srcCountingItems
            TabOrder = 2
            OnKeyPress = EdtStuffCodeKeyPress
          end
        end
        object Panel6: TPanel
          Left = 0
          Top = 152
          Width = 709
          Height = 33
          Align = alBottom
          TabOrder = 4
          object okPanel2: TPanel
            Left = 217
            Top = 1
            Width = 248
            Height = 31
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            DesignSize = (
              248
              31)
            object BitBtn11: TBitBtn
              Left = 10
              Top = 3
              Width = 75
              Height = 25
              Action = DataSetCancel2
              Anchors = [akTop, akRight]
              Caption = #1575#1606#1589#1585#1575#1601
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00424A
                4A00424A4A00424A4A0000424A00424A4A00424A4A00424A4A00005A4A00424A
                4A00424A4A00424A4A00005A4A00424A4A00424A4A00FF00FF00FF00FF006B73
                6B00FFFFFF00FFFFFF0000E7FF00FFFFFF00FFFFFF00FFFFFF00BDFFFF00FFFF
                FF00FFFFFF00FFFFFF00BDFFFF00FFFFFF006B736B00FF00FF00FF00FF006B73
                6B00FFFFFF000010AD0000844A00FF9C4A00FF9C4A00FF9C4A00BD9C4A00FF9C
                4A00FF9C4A00FF9C4A00BD9C4A000018CE006B736B00FF00FF00FF00FF006B73
                6B00FFFFFF000018CE000000AD00FFFFFF00FF9C4A00FFFFFF0000E7FF00FF9C
                4A00FFFFFF00FFFFFF000000CE00FFFFFF006B736B00FF00FF00FF00FF008484
                7300FFFFFF00FF9C4A000000CE000010AD00FF9C4A00FFFFFF00BDFFFF00FF9C
                4A000010AD000018CE00BD9C4A00FFFFFF0084847300FF00FF00FF00FF008484
                7300FFFFFF00FF9C4A0000844A000018CE000010AD00FF9C4A00BD9C4A000010
                AD000018CE00FF9C4A00BD9C4A00FFFFFF0084847300FF00FF00FF00FF008484
                7300FFFFFF00F78C390000E7FF00FFFFFF000018CE000018DE00BD18AD000018
                DE00FFFFFF00FFFFFF00BD9C3900FFFFFF0084847300FF00FF00FF00FF008C8C
                8C00F7F7F700F78C390000E7FF00FFFFFF00F78C39000018DE00BD18DE000018
                CE000010AD00FFFFFF00BD9C3900F7F7F7008C8C8C00FF00FF00FF00FF008C8C
                8C00F7F7F700E784080000840800E78408000018CE000018E700BD9C0800E784
                08000018F7000010AD00BD9C0800F7F7F7008C8C8C00FF00FF00FF00FF009494
                9400E7E7E700E784080000E7FF000018F7000018E700FFFFFF00BDFFFF00E784
                0800FFFFFF000018F700BD9C0800E7E7E70094949400FF00FF00FF00FF009494
                9400E7E7E700E78408000000FF000018E700E7840800FFFFFF00BDFFFF00E784
                0800FFFFFF00FFFFFF00BD18F700E7E7E70094949400FF00FF00FF00FF009C9C
                9C00CED6CE000018F7000000F700E7840800E7840800E7840800FF9C0800E784
                0800E7840800E7840800008408000018F7009C9C9C00FF00FF00FF00FF009C9C
                9C00CED6CE000018F70000C6CE00CED6CE00CED6CE00CED6CE0000DECE00CED6
                CE00CED6CE00CED6CE0000C6CE00CED6CE009C9C9C00FF00FF00FF00FF009C9C
                9C009C9C9C009C9C9C0000849C009C9C9C009C9C9C009C9C9C0084849C009C9C
                9C009C9C9C009C9C9C0000849C009C9C9C009C9C9C00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              TabOrder = 2
            end
            object BitBtn12: TBitBtn
              Left = 87
              Top = 4
              Width = 75
              Height = 25
              Action = DataSetPost2
              Anchors = [akTop, akRight]
              Caption = #1578#1575#1610#1610#1583
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00318C2900007B00004A9C4200FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00009C100000AD0800007B0000BDBD5A00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF000084420000AD080000B51000008C00007B841800FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF000084000000BD180000B51000009400007B6300008CB5
                7300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00318C290000A5180000B5100000FF420000BD1800BD9C00000073
                0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00009C100000A5390000FF420000FF420000AD080000BD1000007B
                00006BAD5A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0000B5210000E7420000FF4200318C2900318C2900BDBD1000008C
                000018841800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF000084080000940800FF00FF00FF00FF00BD9C000000B5
                1000007B00008CB57300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B84210000B5
                10000084000000730000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00009C
                080000B51000007B000000A55A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00318C
                290000B5100010941800BD9C2100FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF001094290039DE8C00BD9C18006BAD5A00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00189C210000CE210000A55A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF008CB57300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              TabOrder = 1
            end
            object BitBtn13: TBitBtn
              Left = 167
              Top = 4
              Width = 75
              Height = 25
              Action = actPoseInsert
              Caption = #1579#1576#1578' '#1608' '#1576#1593#1583#1740
              TabOrder = 0
            end
          end
          object newPanel2: TPanel
            Left = 465
            Top = 1
            Width = 243
            Height = 31
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 0
            object Panel8: TPanel
              Left = 0
              Top = 0
              Width = 161
              Height = 31
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              DesignSize = (
                161
                31)
              object BitBtn10: TBitBtn
                Left = 4
                Top = 4
                Width = 75
                Height = 25
                Action = DataSetDelete2
                Anchors = [akTop, akRight]
                Caption = #1581#1584#1601' '#1603#1575#1604#1575
                TabOrder = 1
              end
              object BitBtn14: TBitBtn
                Left = 84
                Top = 4
                Width = 75
                Height = 25
                Action = DataSetEdit2
                Anchors = [akTop, akRight]
                Caption = #1608#1610#1585#1575#1610#1588
                TabOrder = 0
              end
            end
            object Panel9: TPanel
              Left = 161
              Top = 0
              Width = 82
              Height = 31
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 0
              object BitBtn9: TBitBtn
                Left = 5
                Top = 4
                Width = 75
                Height = 25
                Action = DataSetInsert2
                Caption = #1603#1575#1604#1575#1610' '#1580#1583#1610#1583
                TabOrder = 0
              end
            end
          end
        end
        object pnlSd1: TPanel
          Left = 0
          Top = 0
          Width = 709
          Height = 36
          Align = alTop
          TabOrder = 0
          Visible = False
          object lblSD1: TLabel
            AlignWithMargins = True
            Left = 626
            Top = 4
            Width = 79
            Height = 28
            Align = alRight
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'sd1'
            WordWrap = True
            ExplicitLeft = 507
            ExplicitTop = 42
          end
          object medtsd1: TMaskEdit
            AlignWithMargins = True
            Left = 91
            Top = 7
            Width = 529
            Height = 22
            Margins.Top = 6
            Margins.Bottom = 6
            Align = alRight
            TabOrder = 0
            Text = '0'
            OnExit = medtsd1Exit
            OnKeyDown = medtsd1KeyDown
            ExplicitHeight = 21
          end
        end
      end
    end
  end
  inherited ActionList: TActionList
    Left = 184
    Top = 4
    inherited DataSetInsert1: TDataSetInsert
      ShortCut = 0
    end
    inherited DataSetPost1: TDataSetPost
      ShortCut = 0
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object DataSetInsert2: TDataSetInsert
      Category = 'Dataset'
      Caption = #1603#1575#1604#1575#1610' '#1580#1583#1610#1583
      Hint = ' '
      ShortCut = 113
      DataSource = srcCountingItems
    end
    object DataSetEdit2: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      Hint = ' '
      DataSource = srcCountingItems
    end
    object DataSetCancel2: TDataSetCancel
      Category = 'Dataset'
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = ' '
      DataSource = srcCountingItems
    end
    object DataSetDelete2: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601' '#1603#1575#1604#1575
      DataSource = srcCountingItems
    end
    object actSendExel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendExelExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actPrint: TAction
      Caption = #1670#1600#1600#1600#1575#1662
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object DataSetPost2: TDataSetPost
      Category = 'Dataset'
      Caption = #1578#1575#1610#1610#1583
      ShortCut = 119
      DataSource = srcCountingItems
    end
    object actInsert: TAction
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      OnExecute = actInsertExecute
    end
    object actNull: TAction
      Category = 'Dataset'
      Caption = #1581#1584#1601' '#1588#1605#1575#1585#1588
      OnExecute = actNullExecute
    end
    object actEdit: TAction
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      OnExecute = actEditExecute
    end
    object actPrintVijeh: TAction
      Caption = #1670#1600#1600#1600#1575#1662' '#1608#1610#1688#1607
      OnExecute = actPrintVijehExecute
    end
    object actGetEntity: TAction
      Caption = #1575#1606#1578#1602#1575#1604' '#1575#1586' '#1605#1608#1580#1608#1583#1610' '#1601#1593#1604#1740
      OnExecute = actGetEntityExecute
    end
    object actGetExcel: TAction
      Caption = #1582#1608#1575#1606#1583#1606'Excel'
      OnExecute = actGetExcelExecute
    end
    object actGetRotatory: TAction
      Caption = #1575#1606#1578#1602#1575#1604' '#1575#1586' '#1711#1585#1583#1588' '#1603#1575#1604#1575
      OnExecute = actGetRotatoryExecute
    end
    object actDelete: TAction
      Caption = #1581#1584#1601' '#1603#1604#1610' '#1588#1605#1575#1585#1588#1575#1578
      OnExecute = actDeleteExecute
    end
    object actReadFile: TAction
      Caption = #1582#1608#1575#1606#1583#1606' '#1575#1586' '#1601#1575#1610#1604
      OnExecute = actReadFileExecute
    end
    object actState: TAction
      Caption = #1602#1591#1593#1610' '#1606#1605#1608#1583#1606' '#1588#1605#1575#1585#1588
      OnExecute = actStateExecute
    end
    object actCountingControlCodeF: TAction
      Caption = #1580#1605#1593' '#1575#1606#1578#1582#1575#1576#1740' '#1576#1585' '#1575#1587#1575#1587' '#1588#1605#1575#1585#1607' '#1585#1575#1607#1606#1605#1575' '
      OnExecute = actCountingControlCodeFExecute
    end
    object actPoseInsert: TAction
      Category = 'Dataset'
      Caption = #1579#1576#1578' '#1608' '#1576#1593#1583#1740
      SecondaryShortCuts.Strings = (
        'F9')
      ShortCut = 45
      OnExecute = actPoseInsertExecute
    end
    object actGetEntityOnCountDate: TAction
      Caption = #1575#1606#1578#1602#1575#1604' '#1575#1586' '#1605#1608#1580#1608#1583#1610' '#1576#1575' '#1578#1608#1580#1607' '#1576#1607' '#1578#1575#1585#1740#1582' '#1605#1602#1591#1593' '#1575#1606#1576#1575#1585' '#1711#1585#1583#1575#1606#1740
      OnExecute = actGetEntityOnCountDateExecute
    end
    object actSumDistinct: TAction
      Caption = #1580#1605#1593' '#1705#1575#1604#1575#1607#1575#1740' '#1578#1705#1585#1575#1585#1740' '#1585#1608#1740' '#1607#1605
      OnExecute = actSumDistinctExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 270
    Top = 4
  end
  object qryCountingItems: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterOpen = qryCountingItemsAfterOpen
    AfterInsert = qryCountingItemsAfterInsert
    BeforeEdit = qryCountingItemsBeforeEdit
    AfterEdit = qryCountingItemsAfterEdit
    BeforePost = qryCountingItemsBeforePost
    AfterPost = qryCountingItemsAfterPost
    BeforeDelete = qryCountingItemsBeforeDelete
    AfterDelete = qryCountingItemsAfterDelete
    DataSource = srcCounting
    Parameters = <>
    Left = 220
    Top = 119
    object qryCountingItemsReciptItemID: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1606#1583#1607
      FieldName = 'ReciptItemID'
    end
    object qryCountingItemsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryCountingItemsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryCountingItems_StuffTecInfo: TStringField
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1601#1606#1610
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = '_StuffTecInfo'
      LookupDataSet = qryStuff_Unit_TecInf
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'c_StuffTecInfo'
      KeyFields = 'StuffCode'
      Size = 100
      Lookup = True
    end
    object qryCountingItemsc_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1588#1585#1581' '#1603#1575#1604#1575
      FieldName = 'c_StuffName'
      ReadOnly = True
      Size = 150
    end
    object qryCountingItemsStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qryCountingItems_StuffName: TStringField
      DisplayLabel = #1588#1600#1600#1600#1600#1600#1600#1585#1581'   '#1603#1600#1600#1600#1600#1575#1604#1575
      FieldKind = fkLookup
      FieldName = '_StuffName'
      LookupDataSet = qryStuff_Unit_TecInf
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'c_StuffName'
      KeyFields = 'StuffCode'
      Required = True
      Size = 100
      Lookup = True
    end
    object qryCountingItems_UnitName: TStringField
      DisplayLabel = #1608#1575#1581#1583
      FieldKind = fkLookup
      FieldName = '_UnitName'
      LookupDataSet = qryStuff_Unit_TecInf
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'UnitName'
      KeyFields = 'StuffCode'
      Size = 100
      Lookup = True
    end
    object qryCountingItems_gateKetab: TStringField
      DisplayLabel = #1602#1591#1593
      FieldKind = fkLookup
      FieldName = '_gateKetab'
      LookupDataSet = qryStuff_Unit_TecInf
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'gateketab'
      KeyFields = 'StuffCode'
      ReadOnly = True
      Size = 50
      Lookup = True
    end
    object qryCountingItems_NoeJeld: TStringField
      DisplayLabel = #1606#1608#1593' '#1580#1604#1583
      FieldKind = fkLookup
      FieldName = '_NoeJeld'
      LookupDataSet = qryStuff_Unit_TecInf
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'noejeldName'
      KeyFields = 'StuffCode'
      ReadOnly = True
      Size = 50
      Lookup = True
    end
    object qryCountingItemsID: TIntegerField
      Tag = 3
      DisplayLabel = #1585#1583#1610#1601
      FieldName = 'ID'
    end
    object qryCountingItemsCountID: TIntegerField
      FieldName = 'CountID'
    end
    object qryCountingItemsSheetID: TIntegerField
      Tag = 3
      DisplayLabel = #1588'.'#1576#1585#1711#1607
      FieldName = 'SheetID'
    end
    object qryCountingItemsStoreID: TSmallintField
      FieldName = 'StoreID'
    end
    object qryCountingItemsStuffSize: TStringField
      Tag = 3
      DisplayLabel = #1575#1576#1593#1575#1583
      FieldName = 'StuffSize'
      Size = 12
    end
    object qryCountingItemsStuffDiameter: TFloatField
      Tag = 3
      DisplayLabel = #1590#1582#1575#1605#1578
      FieldName = 'StuffDiameter'
    end
    object qryCountingItemsStuffAlloy: TStringField
      Tag = 3
      DisplayLabel = #1570#1604#1610#1575#1688
      FieldName = 'StuffAlloy'
      Size = 12
    end
    object qryCountingItemsControlCode: TLargeintField
      Tag = 3
      DisplayLabel = #1585#1575#1607#1606#1605#1575
      FieldName = 'ControlCode'
    end
    object qryCountingItemsCount1Entity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' 1'
      FieldName = 'Count1Entity'
    end
    object qryCountingItemsCount2Entity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585'2'
      FieldName = 'Count2Entity'
    end
    object qryCountingItemsCount3Entity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585'3'
      FieldName = 'Count3Entity'
    end
    object qryCountingItemsCount1Weight: TFloatField
      DisplayLabel = #1608#1586#1606' 1'
      FieldName = 'Count1Weight'
    end
    object qryCountingItemsCount2Weight: TFloatField
      DisplayLabel = #1608#1586#1606'2'
      FieldName = 'Count2Weight'
    end
    object qryCountingItemsCount3Weight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606'3'
      FieldName = 'Count3Weight'
    end
    object qryCountingItemsReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryCountingItemsStuffGrade: TWordField
      Tag = 3
      DisplayLabel = #1583#1585#1580#1607' '#1603#1575#1604#1575
      FieldName = 'StuffGrade'
    end
    object qryCountingItems_SellPrice1: TCurrencyField
      DisplayLabel = #1576#1607#1575#1610' '#1601#1585#1608#1588
      FieldKind = fkLookup
      FieldName = '_SellPrice1'
      LookupDataSet = qryStuff_Unit_TecInf
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'SellPrice1'
      KeyFields = 'StuffCode'
      Lookup = True
    end
    object qryCountingItemsPakhsh: TStringField
      DisplayLabel = #1605#1585#1603#1586' '#1662#1582#1588
      FieldName = 'Pakhsh'
      ReadOnly = True
      Size = 50
    end
    object qryCountingItemsPadidAvarandeh: TStringField
      Tag = 3
      DisplayLabel = #1662#1583#1610#1583' '#1570#1608#1585#1606#1583#1607
      FieldName = 'PadidAvarandeh'
      ReadOnly = True
      Size = 50
    end
    object qryCountingItems_Carton: TFloatField
      DisplayLabel = #1608#1586#1606
      FieldKind = fkLookup
      FieldName = '_Carton'
      LookupDataSet = qryStuff_Unit_TecInf
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'Carton'
      KeyFields = 'StuffCode'
      Lookup = True
    end
    object qryCountingItemsc_StuffTecInfo: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1601#1606#1610
      FieldName = 'c_StuffTecInfo'
      Size = 60
    end
    object qryCountingItems____StuffTecInfo: TStringField
      FieldName = '____StuffTecInfo'
      ReadOnly = True
      OnChange = qryCountingItems____StuffTecInfoChange
      Size = 50
    end
    object qryCountingItemssd1: TStringField
      Tag = 3
      FieldName = 'sd1'
      ReadOnly = True
      Size = 64
    end
  end
  object srcCountingItems: TDataSource
    DataSet = qryCountingItems
    OnStateChange = srcCountingItemsStateChange
    Left = 80
    Top = 111
  end
  object qryCounting: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterScroll = qryCountingAfterScroll
    Parameters = <
      item
        Name = 'CountDateFrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'CountDateTo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      #13'SELECT     *'
      'FROM         Counting'
      'WHERE     (CountDate BETWEEN :CountDateFrom  AND :CountDateTo )'
      'order by CountNumber')
    Left = 424
    Top = 127
    object qryCountingCountID: TIntegerField
      FieldName = 'CountID'
    end
    object qryCountingCountNumber: TIntegerField
      FieldName = 'CountNumber'
    end
    object qryCountingCountDate: TStringField
      FieldName = 'CountDate'
      FixedChar = True
      Size = 10
    end
    object qryCountingNote: TStringField
      FieldName = 'Note'
      Size = 255
    end
    object qryCountingAttachFileName: TStringField
      FieldName = 'AttachFileName'
      Size = 150
    end
    object qryCountingFormSignature: TStringField
      FieldName = 'FormSignature'
      Size = 250
    end
    object qryCountingState: TWordField
      FieldName = 'State'
      OnGetText = qryCountingStateGetText
    end
    object qryCountingCountingCalckind: TWordField
      FieldName = 'CountingCalckind'
    end
  end
  object qryStuff_Unit_TecInf: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT     *'
      'FROM        Aid_StuffCoding2 '
      'WHERE     (State = 0)'
      '')
    Left = 500
    Top = 191
  end
  object srcCounting: TDataSource
    DataSet = qryCounting
    Left = 520
    Top = 112
  end
  object qryStores: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'StoreID'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     n_StoreID, c_StoreName'
      'FROM         Stores'
      'WHERE ( n_StoreID= :StoreID) ')
    Left = 82
    Top = 176
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = srcCountingItems
    OpenDataSource = False
    UserName = 'DBPipeline2'
    Left = 488
    Top = 260
    MasterDataPipelineName = 'ppDBPipeline1'
    object ppDBPipeline2ppField1: TppField
      FieldAlias = 'StuffCode'
      FieldName = 'StuffCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField2: TppField
      FieldAlias = '_StuffName'
      FieldName = '_StuffName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField3: TppField
      FieldAlias = '_UnitName'
      FieldName = '_UnitName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField4: TppField
      FieldAlias = 'ID'
      FieldName = 'ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField5: TppField
      FieldAlias = 'CountID'
      FieldName = 'CountID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField6: TppField
      FieldAlias = 'SheetID'
      FieldName = 'SheetID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField7: TppField
      FieldAlias = 'StoreID'
      FieldName = 'StoreID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField8: TppField
      FieldAlias = 'StuffSize'
      FieldName = 'StuffSize'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField9: TppField
      FieldAlias = 'StuffDiameter'
      FieldName = 'StuffDiameter'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField10: TppField
      FieldAlias = 'StuffAlloy'
      FieldName = 'StuffAlloy'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField11: TppField
      FieldAlias = 'ControlCode'
      FieldName = 'ControlCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField12: TppField
      FieldAlias = 'Count1Entity'
      FieldName = 'Count1Entity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField13: TppField
      FieldAlias = 'Count2Entity'
      FieldName = 'Count2Entity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField14: TppField
      FieldAlias = 'Count3Entity'
      FieldName = 'Count3Entity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField15: TppField
      FieldAlias = 'Count1Weight'
      FieldName = 'Count1Weight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField16: TppField
      FieldAlias = 'Count2Weight'
      FieldName = 'Count2Weight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField17: TppField
      FieldAlias = 'Count3Weight'
      FieldName = 'Count3Weight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField18: TppField
      FieldAlias = 'ReciptID'
      FieldName = 'ReciptID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField19: TppField
      FieldAlias = 'StuffGrade'
      FieldName = 'StuffGrade'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcCounting
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 380
    Top = 268
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'CountID'
      FieldName = 'CountID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'CountNumber'
      FieldName = 'CountNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'CountDate'
      FieldName = 'CountDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'Note'
      FieldName = 'Note'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'AttachFileName'
      FieldName = 'AttachFileName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'FormSignature'
      FieldName = 'FormSignature'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'State'
      FieldName = 'State'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
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
    Template.FileName = 'D:\Projects\Fara\BSell\Exe\Report\CountingItemsEntity.rtm'
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
    Left = 264
    Top = 280
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 25400
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 17992
        mmWidth = 203200
        BandType = 0
        LayerName = Foreground
      end
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
        OnGetText = ppLblCaptionGetText
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578'  '
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
        mmLeft = 95250
        mmTop = 8467
        mmWidth = 12435
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
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5080
        mmLeft = 9790
        mmTop = 1058
        mmWidth = 11091
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583' '#1603#1575#1604#1575
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 192690
        mmTop = 18522
        mmWidth = 9982
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 192162
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1600#1600#1600#1600#1600#1600#1585#1581'   '#1603#1600#1600#1600#1600#1575#1604#1575
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 117744
        mmTop = 18522
        mmWidth = 73889
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 117216
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1608#1575#1581#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 106706
        mmTop = 18522
        mmWidth = 9982
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 106177
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588'.'#1576#1585#1711#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 93406
        mmTop = 18522
        mmWidth = 12243
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 92878
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1602#1583#1575#1585'.'#1588'1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 77523
        mmTop = 18522
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 76994
        mmTop = 17991
        mmWidth = 5556
        BandType = 0
        LayerName = Foreground
      end
      object ppSysPageNumber: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SysPageNumber'
        OnGetText = ppSysPageNumberGetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5821
        mmLeft = 9790
        mmTop = 8467
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1602#1583#1575#1585'.'#1588'2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 61648
        mmTop = 18521
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line17'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 61119
        mmTop = 17992
        mmWidth = 5556
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1602#1583#1575#1585'.'#1588'3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 45773
        mmTop = 18521
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line21'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 45244
        mmTop = 17992
        mmWidth = 5556
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7409
      mmPrintPosition = 0
      object ppLineDetail: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'LineDetail'
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
        DataField = 'StuffCode'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7451
        mmLeft = 192690
        mmTop = 0
        mmWidth = 9982
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
        mmLeft = 192162
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = '_StuffName'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7451
        mmLeft = 117744
        mmTop = 0
        mmWidth = 73889
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
        mmLeft = 117216
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = '_UnitName'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7451
        mmLeft = 106706
        mmTop = 0
        mmWidth = 9982
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
        mmLeft = 106177
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'SheetID'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7451
        mmLeft = 93406
        mmTop = 0
        mmWidth = 12243
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
        mmLeft = 92878
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'Count1Entity'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7451
        mmLeft = 77523
        mmTop = 0
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 76994
        mmTop = 0
        mmWidth = 5556
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'Count2Entity'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7451
        mmLeft = 61648
        mmTop = 0
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line18'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 61119
        mmTop = 0
        mmWidth = 5556
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'Count3Entity'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7451
        mmLeft = 45773
        mmTop = 0
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line22'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 45244
        mmTop = 0
        mmWidth = 5556
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 9497
      mmPrintPosition = 0
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
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 175948
        mmTop = 529
        mmWidth = 15610
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'StuffCode'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 192690
        mmTop = 528
        mmWidth = 9982
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 192162
        mmTop = 0
        mmWidth = 2647
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 92878
        mmTop = 0
        mmWidth = 2647
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc6'
        Border.mmPadding = 0
        DataField = 'Count1Entity'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 77523
        mmTop = 528
        mmWidth = 15081
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line16'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 76994
        mmTop = 0
        mmWidth = 5556
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        Border.mmPadding = 0
        DataField = 'Count2Entity'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 61648
        mmTop = 529
        mmWidth = 15081
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
        mmLeft = 61119
        mmTop = 0
        mmWidth = 5556
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc7'
        Border.mmPadding = 0
        DataField = 'Count3Entity'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 45773
        mmTop = 529
        mmWidth = 15081
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
        mmLeft = 45244
        mmTop = 0
        mmWidth = 5556
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7408
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
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 178330
        mmTop = 529
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'StuffCode'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 192690
        mmTop = 528
        mmWidth = 9982
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
        mmLeft = 192162
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 92878
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc5'
        Border.mmPadding = 0
        DataField = 'Count1Entity'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 77523
        mmTop = 528
        mmWidth = 15081
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line15'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 76994
        mmTop = 0
        mmWidth = 5556
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc4'
        Border.mmPadding = 0
        DataField = 'Count2Entity'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 61648
        mmTop = 529
        mmWidth = 15081
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line20'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 61119
        mmTop = 529
        mmWidth = 5556
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc8'
        Border.mmPadding = 0
        DataField = 'Count3Entity'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 45773
        mmTop = 529
        mmWidth = 15081
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line201'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 45244
        mmTop = 0
        mmWidth = 5556
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
  object PopMnuOther: TPopupMenu
    AutoHotkeys = maManual
    Left = 171
    Top = 258
    object N1: TMenuItem
      Action = actPrintVijeh
    end
    object N2: TMenuItem
      Action = actGetEntity
    end
    object N5: TMenuItem
      Action = actGetEntityOnCountDate
    end
    object N3: TMenuItem
      Action = actGetRotatory
    end
    object Excel1: TMenuItem
      Action = actGetExcel
    end
    object N4: TMenuItem
      Action = actDelete
    end
    object mnuState: TMenuItem
      Action = actState
    end
    object mnuReadFile: TMenuItem
      Caption = #1582#1608#1575#1606#1583#1606' '#1575#1586' '#1601#1575#1610#1604' '#1576#1585#1575#1587#1575#1587' '#1603#1583' '#1603#1575#1604#1575
      OnClick = mnuReadFileClick
    end
    object mnuReadFile_StuffTecInfo: TMenuItem
      Caption = #1582#1608#1575#1606#1583#1606' '#1575#1586' '#1601#1575#1610#1604' '#1576#1585#1575#1587#1575#1587' '#1605#1588#1582#1589#1575#1578' '#1601#1606#1610
      OnClick = mnuReadFile_StuffTecInfoClick
    end
    object actCountingControlCodeF1: TMenuItem
      Action = actCountingControlCodeF
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object Excel2: TMenuItem
      Action = actSumDistinct
    end
  end
  object dlg1: TOpenTextFileDialog
    FileName = 'F:\4Share\Fara.txt'
    Filter = 'Txet Comma Delimited (1,1)|*.Txt|All File|*.*'
    Left = 320
    Top = 160
  end
  object qryinit5: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT        *'
      'FROM            ReciptTypes'
      'WHERE        (ReciptType = 5)')
    Left = 342
    Top = 196
  end
  object qry4Bcakup: TADOQuery
    Parameters = <>
    SQL.Strings = (
      'SELECT     *'
      ' , (SELECT     LookUps.Name'
      '                        FROM         LookUps RIGHT OUTER JOIN'
      
        '                                              StuffCoding ON Loo' +
        'kUps.Code = StuffCoding.st13'
      
        '                        WHERE     (LookUps.Kind = 313) AND (Stuf' +
        'fCoding.c_StuffCode = CountingItems.StuffCode)) AS Pakhsh'
      ', (SELECT     LookUps.Name'
      '                        FROM         LookUps RIGHT OUTER JOIN'
      
        '                                              StuffCoding ON Loo' +
        'kUps.Code = StuffCoding.st2'
      
        '                        WHERE     (LookUps.Kind = 302) AND (Stuf' +
        'fCoding.c_StuffCode = CountingItems.StuffCode)) AS PadidAvarande' +
        'h'
      ', (SELECT StuffCoding.c_StuffName'
      '                        FROM StuffCoding'
      
        '                        WHERE  StuffCoding.c_StuffCode = Countin' +
        'gItems.StuffCode) AS c_StuffName, '#39#39' AS ____StuffTecInfo'
      
        ', (SELECT    sd1  FROM    StuffCoding   WHERE    (StuffCoding.c_' +
        'StuffCode = CountingItems.StuffCode)) AS sd1'
      ''
      ''
      'FROM         CountingItems'
      'WHERE (StoreID = :StoreID) and ( CountID =:CountID)')
    Left = 192
    Top = 216
  end
  object PopupMenu1: TPopupMenu
    Left = 371
    Top = 378
    object AllClick1: TMenuItem
      Caption = 'AllClick'
      Visible = False
      OnClick = AllClick1Click
    end
    object N11: TMenuItem
      Caption = #1670#1575#1662' 1'
      Hint = 'CountingItems'
      OnClick = AllClick1Click
    end
    object N21: TMenuItem
      Caption = #1670#1575#1662' 2'
      Hint = 'CountingItems2'
      OnClick = AllClick1Click
    end
  end
end

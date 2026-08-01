inherited rptPayableSalaryF: TrptPayableSalaryF
  Left = 390
  Top = 110
  Caption = #1604#1610#1587#1578' '#1582#1575#1604#1589' '#1602#1575#1576#1604' '#1662#1585#1583#1575#1582#1578' '#1576#1607' '#1662#1585#1587#1606#1604
  ClientHeight = 582
  ClientWidth = 778
  Position = poDesigned
  ExplicitWidth = 786
  ExplicitHeight = 613
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 541
    Width = 778
    ExplicitTop = 541
    ExplicitWidth = 778
    object BitBtn7: TBitBtn
      AlignWithMargins = True
      Left = 699
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 618
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actFish
      Align = alRight
      Caption = #1601#1610#1588' '#1581#1602#1608#1602
      TabOrder = 2
    end
    object DBNavigator2: TDBNavigator
      AlignWithMargins = True
      Left = 328
      Top = 4
      Width = 122
      Height = 33
      DataSource = srcPayableSalary
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alClient
      Flat = True
      TabOrder = 3
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
      TabOrder = 4
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSendtoExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 5
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
      TabOrder = 6
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 456
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actPrint
      Align = alRight
      Caption = #1670#1575#1662' (F7)'
      TabOrder = 7
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 537
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actFunction
      Align = alRight
      Caption = #1603#1575#1585#1603#1585#1583
      TabOrder = 8
    end
  end
  inherited Panel2: TPanel
    Width = 778
    ExplicitWidth = 778
    DesignSize = (
      778
      53)
    inherited ImgTemplate: TImage
      Left = 765
      ExplicitLeft = 765
    end
    inherited lblCaption: TLabel
      Left = 670
      ExplicitLeft = 670
    end
    inherited lblBaseDate: TLabel
      Left = 343
      ExplicitLeft = 343
    end
    object Image2: TImage
      Left = 416
      Top = 16
      Width = 16
      Height = 16
      AutoSize = True
      Picture.Data = {
        07544269746D617036030000424D360300000000000036000000280000001000
        0000100000000100180000000000000300000000000000000000000000000000
        0000F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFF
        F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1
        E2EFF1E2EFF1E2EFF199A8ACF0FBFFF0FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF646F7199A8ACF0FBFFF0FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF646F7199A8ACF0FBFFF0FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF646F7199A8ACF0FBFFF0FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF646F7199A8ACF0FBFFF0FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1646F71646F71646F71646F71646F71646F71646F71
        646F71646F71646F7199A8ACF0FBFFF0FBFFF0FBFFFFFFFF99A8AC99A8AC99A8
        AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8ACF0FBFFF0
        FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFF
        F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FB
        FFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0
        FBFF}
      Visible = False
    end
    object Image3: TImage
      Left = 440
      Top = 16
      Width = 14
      Height = 15
      AutoSize = True
      Picture.Data = {
        07544269746D6170CA020000424DCA0200000000000036000000280000000E00
        00000F0000000100180000000000940200000000000000000000000000000000
        0000F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFF
        F0FBFFF0FBFFF0FBFFF0FBFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FBFF0000FFFFFFE2EFF1
        E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF199A8
        ACF0FBFF0000FFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF646F7199A8ACF0FBFF0000FFFFFFE2EFF1FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF008000FFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFF0000FFFF
        FFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFF008000008000008000FFFFFFFFFFFF64
        6F7199A8ACF0FBFF0000FFFFFFE2EFF1FFFFFFFFFFFFFFFFFF00800000800000
        8000008000008000FFFFFF646F7199A8ACF0FBFF0000FFFFFFE2EFF1FFFFFFFF
        FFFF008000008000008000FFFFFF008000008000FFFFFF646F7199A8ACF0FBFF
        0000FFFFFFE2EFF1FFFFFF008000008000008000FFFFFFFFFFFFFFFFFF008000
        FFFFFF646F7199A8ACF0FBFF0000FFFFFFE2EFF1FFFFFF008000008000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFF0000FFFFFFE2EFF1
        FFFFFF008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8
        ACF0FBFF0000FFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF646F7199A8ACF0FBFF0000FFFFFFE2EFF1646F71646F71646F
        71646F71646F71646F71646F71646F71646F71646F7199A8ACF0FBFF0000FFFF
        FF99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
        A8AC99A8ACF0FBFF0000F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0
        FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFF0000}
      Visible = False
    end
    object yrcmbx1: TYearComboBox
      Left = 15
      Top = 26
      Width = 158
      Height = 32
      Align = alCustom
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 0
      YearID = 0
      YearsParam = 0
      ADOConnection = DmF.adcsalary
    end
  end
  inherited Panel3: TPanel
    Width = 778
    Height = 488
    ExplicitWidth = 778
    ExplicitHeight = 488
    object ToolBar1: TToolBar
      Left = 2
      Top = 2
      Width = 774
      Height = 33
      BorderWidth = 2
      ButtonHeight = 21
      ButtonWidth = 54
      Caption = 'ToolBar1'
      EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
      ShowCaptions = True
      TabOrder = 0
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
    object GroupBox3: TGroupBox
      Left = 531
      Top = 35
      Width = 245
      Height = 451
      Align = alRight
      BiDiMode = bdRightToLeft
      Caption = ' '#1605#1581#1575#1587#1576#1607' '#1585#1606#1583' '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      object Label4: TLabel
        Left = 2
        Top = 63
        Width = 241
        Height = 143
        Align = alTop
        Caption = 
          '1- '#1604#1591#1601#1575' '#1593#1605#1604#1610#1575#1578' '#1605#1581#1575#1587#1576#1607' '#1585#1606#1583' '#1585#1575' '#1610#1603#1576#1575#1585' '#1608' '#1570#1606' '#1607#1605' '#1583#1585' '#1570#1582#1585' '#1575#1606#1580#1575#1605' '#1605#1581#1575#1587#1576#1575#1578' ' +
          #1581#1602#1608#1602' '#1575#1606#1580#1575#1605' '#1583#1607#1610#1583' '#1603#1607' '#1575#1586' '#1578#1603#1585#1575#1585' '#1603#1585#1583#1606' '#1585#1606#1583#1607#1575#1610' '#1662#1610' '#1583#1585' '#1662#1610' '#1580#1604#1608#1711#1610#1585#1610' '#1588#1608#1583' .'#13#10 +
          '2- '#1575#1591#1604#1575#1593#1575#1578' '#1585#1608#1610' '#1610#1606' '#1601#1585#1605' '#1578#1575' '#1602#1576#1604' '#1575#1586' '#1586#1583#1606' '#1583#1603#1605#1607' '#1607#1575#1610' '#1579#1576#1578' '#1603#1575#1605#1604#1575' '#1606#1605#1575#1610#1588#1610' '#1575#1587 +
          #1578'.'#8207#13#10'3- '#1601#1585#1605' '#1576#1591#1608#1585' '#1662#1610#1588' '#1601#1585#1590' '#1578#1575' '#1587#1607' '#1585#1602#1605' '#1605#1576#1604#1594' '#1585#1575' '#1585#1606#1583' '#1608' '#1583#1585' '#1590#1585#1610#1576' '#1610#1603' '#1590#1585#1576' ' +
          #1605#1610' '#1603#1606#1583' '#1603#1607' '#1602#1575#1576#1604' '#1578#1594#1610#1610#1585' '#1605#1610' '#1576#1575#1588#1583'.'#8207#13#10'4- '#1579#1576#1578' '#1603#1587#1608#1585#1575#1578' '#1605#1575#1607' '#1580#1575#1585#1610' '#1608' '#1605#1586#1575#1610#1575#1610' ' +
          #1605#1575#1607' '#1576#1593#1583' '#1585#1575' '#1607#1605#1586#1605#1575#1606' '#1575#1606#1580#1575#1605' '#1583#1607#1610#1583' '#1608' '#1583#1585' '#1606#1607#1575#1610#1578' '#1575#1586' '#1605#1606#1608#1576#1585#1606#1575#1605#1607' '#1593#1605#1604#1610#1575#1578#8207#1605#1575#1607#1610 +
          #1575#1606#1607' '#1608' '#1605#1581#1575#1587#1576#1607#8207#1581#1602#1608#1602' '#1585#1575' '#1581#1578#1605#1575' '#1575#1606#1580#1575#1605' '#1583#1607#1610#1583' '#1603#1607' '#1585#1606#1583#1607#1575' '#1575#1593#1605#1575#1604' '#1588#1608#1606#1583'.'#8207
        WordWrap = True
        ExplicitLeft = 3
        ExplicitWidth = 240
      end
      object GroupBox2: TGroupBox
        Left = 2
        Top = 206
        Width = 241
        Height = 60
        Align = alTop
        Caption = ' '#1590#1585#1610#1576' '#1576#1585#1575#1610' '#1585#1606#1583' '#1603#1585#1583#1606' '#1605#1576#1604#1594' '#1602#1575#1576#1604' '#1662#1585#1583#1575#1582#1578' '
        TabOrder = 0
        object Label2: TLabel
          Left = 131
          Top = 19
          Width = 25
          Height = 13
          Caption = #1585#1606#1583' '#1576#1607
        end
        object Label3: TLabel
          Left = 131
          Top = 39
          Width = 67
          Height = 13
          Caption = #1590#1585#1610#1576' '#1605#1581#1575#1587#1576#1607
        end
        object mskRound: TMaskEdit
          Left = 12
          Top = 16
          Width = 115
          Height = 19
          Ctl3D = False
          EditMask = '999999999;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 9
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          Text = '1000     '
          OnChange = mskRoundChange
        end
        object mskCoefficient: TMaskEdit
          Left = 12
          Top = 37
          Width = 114
          Height = 19
          BiDiMode = bdLeftToRight
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          Text = '1'
          OnChange = mskRoundChange
        end
      end
      object GroupBox1: TGroupBox
        Left = 2
        Top = 266
        Width = 241
        Height = 63
        Align = alTop
        Caption = #1575#1606#1578#1582#1575#1576' '#1705#1587#1608#1585#1575#1578'/'#1605#1586#1575#1740#1575
        TabOrder = 1
        object Label1: TLabel
          Left = 170
          Top = 42
          Width = 61
          Height = 13
          Caption = #1605#1575#1607' '#1579#1576#1578'/'#1581#1584#1601
        end
        object CmbDecExt: TComboBox
          Left = 12
          Top = 15
          Width = 222
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = #1610#1603' '#1593#1606#1608#1575#1606' '#1575#1606#1578#1582#1575#1576' '#1603#1606#1610#1583
        end
        object cmbDecMounth: TComboBox
          Left = 13
          Top = 38
          Width = 145
          Height = 21
          TabOrder = 1
          Text = #1740#1705' '#1605#1575#1607' '#1585#1575' '#1575#1606#1578#1582#1575#1576' '#1705#1606#1740#1583
          Items.Strings = (
            #1601#1585#1608#1585#1583#1740#1606
            #1575#1585#1583#1740#1576#1607#1588#1578
            #1582#1585#1583#1575#1583
            #1578#1740#1585
            #1605#1585#1583#1575#1583
            #1588#1607#1585#1740#1608#1585
            #1605#1607#1585
            #1570#1576#1575#1606
            #1570#1584#1585
            #1583#1740
            #1576#1607#1605#1606
            #1575#1587#1601#1606#1583)
        end
      end
      object GrpDecExt: TGroupBox
        Left = 2
        Top = 329
        Width = 241
        Height = 88
        Align = alTop
        Caption = #1575#1606#1578#1582#1575#1576' '#1605#1586#1575#1610#1575' /'#1705#1587#1608#1585#1575#1578
        TabOrder = 2
        DesignSize = (
          241
          88)
        object Label5: TLabel
          Left = 170
          Top = 42
          Width = 61
          Height = 13
          Caption = #1605#1575#1607' '#1579#1576#1578'/'#1581#1584#1601
        end
        object CmbWage: TComboBox
          Left = 12
          Top = 14
          Width = 222
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = #1610#1603' '#1593#1606#1608#1575#1606' '#1575#1606#1578#1582#1575#1576' '#1603#1606#1610#1583
        end
        object BtnWage: TBitBtn
          Left = 4
          Top = 61
          Width = 96
          Height = 25
          Anchors = [akTop, akRight]
          Caption = #1579#1576#1578' '#1603#1587#1608#1585#1575#1578'/'#1605#1586#1575#1610#1575
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BtnWageClick
        end
        object BitBtn8: TBitBtn
          Left = 138
          Top = 61
          Width = 96
          Height = 25
          Anchors = [akTop, akRight]
          Caption = #1581#1584#1601' '#1603#1587#1608#1585#1575#1578'/'#1605#1586#1575#1610#1575
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BitBtn8Click
        end
        object cmbWageMounth: TComboBox
          Left = 13
          Top = 39
          Width = 145
          Height = 21
          TabOrder = 3
          Text = #1740#1705' '#1605#1575#1607' '#1585#1575' '#1575#1606#1578#1582#1575#1576' '#1705#1606#1740#1583
          Items.Strings = (
            #1601#1585#1608#1585#1583#1740#1606
            #1575#1585#1583#1740#1576#1607#1588#1578
            #1582#1585#1583#1575#1583
            #1578#1740#1585
            #1605#1585#1583#1575#1583
            #1588#1607#1585#1740#1608#1585
            #1605#1607#1585
            #1570#1576#1575#1606
            #1570#1584#1585
            #1583#1740
            #1576#1607#1605#1606
            #1575#1587#1601#1606#1583)
        end
      end
      object RadioGroup1: TRadioGroup
        Left = 2
        Top = 417
        Width = 241
        Height = 35
        Align = alTop
        Caption = '  '#1579#1576#1578'  '
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          #1605#1602#1583#1575#1585' '#1585#1606#1583
          #1605#1576#1604#1594' '#1585#1606#1583' '#1588#1583#1607)
        TabOrder = 3
      end
      object rgMinusPrice: TRadioGroup
        Left = 2
        Top = 15
        Width = 241
        Height = 48
        Align = alTop
        Caption = ' '#1606#1605#1575#1610#1588' '#1575#1585#1602#1575#1605
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          #1575#1585#1602#1575#1605' '#1605#1579#1576#1578
          #1575#1585#1602#1575#1605' '#1605#1606#1601#1740
          #1607#1585#1583#1608)
        TabOrder = 4
        OnClick = rgMinusPriceClick
      end
    end
    object Panel1: TPanel
      Left = 2
      Top = 35
      Width = 529
      Height = 451
      Align = alClient
      TabOrder = 2
      object DBGrid1: TCedarDbgrid
        Left = 1
        Top = 1
        Width = 527
        Height = 449
        Align = alClient
        Color = clCream
        DataSource = srcPayableSalary
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
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        RowHeight = 18
        SearchPanel.Enabled = True
        SortLocal = True
        TabOrder = 0
        OnDblClick = DBGrid1DblClick
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnKeyPress = DBGrid1KeyPress
        ActiveSearchPanel = False
        SelectFooterIndex = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'selected'
            Footers = <>
            Width = 34
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PersonelNO'
            Footers = <>
            Title.Alignment = taCenter
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PersonelName_L1'
            Footers = <>
            Width = 85
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PersonelName_L2'
            Footers = <>
            Width = 34
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Price'
            Footers = <>
            Width = 61
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CalcPrice'
            Footers = <>
            Width = 67
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'RoundPrice'
            Footers = <>
            Width = 55
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object CmbArchiveID: TComboBox [3]
    Left = 17
    Top = 7
    Width = 126
    Height = 21
    Color = 13431799
    TabOrder = 3
    Text = 'CmbArchiveID'
    OnChange = CmbArchiveIDChange
  end
  inherited ActionList: TActionList
    Left = 208
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
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
    object actFunction: TAction
      Caption = #1603#1575#1585#1603#1585#1583
      OnExecute = actFunctionExecute
    end
    object actFish: TAction
      Caption = #1601#1610#1588' '#1581#1602#1608#1602
      OnExecute = actFishExecute
    end
    object actSelectInverse: TAction
      Caption = #1575#1606#1578#1582#1575#1576' '#1605#1593#1603#1608#1587
      OnExecute = actSelectInverseExecute
    end
    object actSelectAll: TAction
      Caption = #1575#1606#1578#1582#1575#1576' '#1607#1605#1607
      OnExecute = actSelectAllExecute
    end
    object actSMS: TAction
      Caption = #1575#1585#1587#1575#1604' '#1662#1610#1575#1605#1603
      OnExecute = actSMSExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 296
  end
  object qryPayableSalary: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = qryPayableSalaryAfterOpen
    Parameters = <
      item
        Name = 'Coefficient1'
        Size = -1
        Value = Null
      end
      item
        Name = 'Coefficient2'
        Size = -1
        Value = Null
      end
      item
        Name = 'NumRound'
        Size = -1
        Value = Null
      end
      item
        Name = 'Coefficient3'
        Size = -1
        Value = Null
      end
      item
        Name = 'NumRound2'
        Size = -1
        Value = Null
      end
      item
        Name = 'Mounth'
        Size = -1
        Value = Null
      end
      item
        Name = 'PersonelFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'PersonelTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'ArchiveID'
        Size = -1
        Value = Null
      end
      item
        Name = 'BankCodeFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'BankCodeTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'ProjectIDFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'ProjectIDTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'CompanyCodeFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'CompanyCodeTo'
        Size = -1
        Value = Null
      end
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
        Name = 'MinusPriceFrom'
        DataType = ftLargeint
        Size = -1
        Value = Null
      end
      item
        Name = 'MinusPriceTo'
        DataType = ftLargeint
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT    Pay.FixedCalculated.PersonelNO as selected ,  Pay.Fixe' +
        'dCalculated.PersonelNO,EmployeeInfo.Mobile,'
      'round(SUM(CASE WHEN (Pay.FixedCalculated.ShowListKind = 1)'
      
        '                      THEN Pay.FixedCalculated.Price ELSE - Pay.' +
        'FixedCalculated.Price END) ,0)AS Price,'
      
        '                       Pay.EmployeeInfo.PersonelName_L1, Pay.Emp' +
        'loyeeInfo.PersonelName_L2,'
      
        '                       Pay.FixedCalculated.ArchiveDate, Pay.Fixe' +
        'dCalculated.ArchiveID,'
      
        'ABS(round( CAST(( ISNULL(:Coefficient1 * SUM(CASE WHEN (Pay.Fixe' +
        'dCalculated.ShowListKind = 1) THEN'
      
        ' Pay.FixedCalculated.Price ELSE - Pay.FixedCalculated.Price END)' +
        ',0) -'
      
        '(CAST(( ISNULL(:Coefficient2 * SUM(CASE WHEN (Pay.FixedCalculate' +
        'd.ShowListKind = 1) THEN'
      
        ' Pay.FixedCalculated.Price ELSE - Pay.FixedCalculated.Price END)' +
        ',0)) AS Bigint) % :NumRound) )AS money)   ,0)  )AS CalcPrice,'
      ''
      
        'ABS(round(CAST(ISNULL(CAST(( ISNULL(:Coefficient3 * SUM(CASE WHE' +
        'N (Pay.FixedCalculated.ShowListKind = 1) THEN'
      
        ' Pay.FixedCalculated.Price ELSE - Pay.FixedCalculated.Price END)' +
        ',0)) AS Bigint) % :NumRound2,0) AS money) ,0)   )AS RoundPrice'
      ''
      ''
      '       FROM Pay.FixedCalculated LEFT OUTER JOIN'
      
        '                         Pay.EmployeeInfo ON FixedCalculated.Per' +
        'sonelNO = EmployeeInfo.PersonelNo LEFT OUTER JOIN'
      
        '                         Pay.FormsInfo ON EmployeeInfo.BankCode ' +
        '= FormsInfo.FormInfoID'
      ''
      
        'WHERE     ((Pay.FixedCalculated.ShowListKind = 1) OR(Pay.FixedCa' +
        'lculated.ShowListKind = 2) OR'
      
        '          ((Pay.FixedCalculated.ShowListKind = 11) AND (Pay.Fixe' +
        'dCalculated.BedBes = 2))) AND'
      '           (Pay.FixedCalculated.Mounth =:Mounth ) AND'
      
        '           (Pay.FixedCalculated.PersonelNO BETWEEN  :PersonelFro' +
        'm    AND :PersonelTo) AND'
      '           (Pay.FixedCalculated.ArchiveID = :ArchiveID)'
      
        '            AND (Pay.FormsInfo.InfoID  BETWEEN  :BankCodeFrom   ' +
        ' AND :BankCodeTo )'
      
        'AND (  ( FixedCalculated.ProjectID  BETWEEN :ProjectIDFrom AND :' +
        'ProjectIDTo) or FixedCalculated.ProjectID = 0 )'
      'AND (SubCompanyCode BETWEEN :CompanyCodeFrom AND :CompanyCodeTo)'
      'AND (YearID = :YearID  ) AND (Years = :Years  )'
      
        'GROUP BY Pay.FixedCalculated.PersonelNO, EmployeeInfo.Mobile, Em' +
        'ployeeInfo.PersonelName_L1, Pay.EmployeeInfo.PersonelName_L2, Pa' +
        'y.FixedCalculated.ArchiveDate,'
      '                      Pay.FixedCalculated.ArchiveID'
      ''
      
        'having   (SUM(CASE WHEN (Pay.FixedCalculated.ShowListKind = 1) T' +
        'HEN'
      
        '    Pay.FixedCalculated.Price ELSE - Pay.FixedCalculated.Price E' +
        'ND)  BETWEEN  :MinusPriceFrom    AND :MinusPriceTo   )'
      ''
      '')
    Left = 176
    Top = 144
    object qryPayableSalaryselected: TIntegerField
      DisplayLabel = #1575#1606#1578#1582#1575#1576
      FieldName = 'selected'
    end
    object qryPayableSalaryPersonelNO: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610
      FieldName = 'PersonelNO'
    end
    object qryPayableSalaryPersonelName_L1: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1662#1585#1587#1606#1604
      FieldName = 'PersonelName_L1'
      Size = 60
    end
    object qryPayableSalaryPersonelName_L2: TStringField
      DisplayLabel = 'Personel Name'
      FieldName = 'PersonelName_L2'
      Size = 60
    end
    object qryPayableSalaryArchiveDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1576#1575#1610#1711#1575#1606#1610
      FieldName = 'ArchiveDate'
      FixedChar = True
      Size = 10
    end
    object qryPayableSalaryArchiveID: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1576#1575#1610#1711#1575#1606#1610
      FieldName = 'ArchiveID'
    end
    object qryPayableSalaryPrice: TFMTBCDField
      Tag = 3
      DisplayLabel = #1602#1575#1576#1604' '#1662#1585#1583#1575#1582#1578' '
      FieldName = 'Price'
      ReadOnly = True
      currency = True
      Precision = 38
    end
    object qryPayableSalaryCalcPrice: TFMTBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1585#1606#1583' '#1588#1583#1607
      FieldName = 'CalcPrice'
      ReadOnly = True
      currency = True
      Precision = 38
    end
    object qryPayableSalaryRoundPrice: TFMTBCDField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1585#1606#1583
      FieldName = 'RoundPrice'
      ReadOnly = True
      currency = True
      Precision = 38
    end
    object qryPayableSalaryMobile: TStringField
      FieldName = 'Mobile'
    end
  end
  object srcPayableSalary: TDataSource
    DataSet = qryPayableSalary
    Left = 272
    Top = 149
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcPayableSalary
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 336
    Top = 208
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'selected'
      FieldName = 'selected'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'PersonelNO'
      FieldName = 'PersonelNO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'PersonelName_L1'
      FieldName = 'PersonelName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'PersonelName_L2'
      FieldName = 'PersonelName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'ArchiveDate'
      FieldName = 'ArchiveDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'ArchiveID'
      FieldName = 'ArchiveID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'Price'
      FieldName = 'Price'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'CalcPrice'
      FieldName = 'CalcPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'RoundPrice'
      FieldName = 'RoundPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'Mobile'
      FieldName = 'Mobile'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
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
    Template.FileName = 'D:\Projects\Fara\Salary\Exe\Report\rptPayableSalary.rtm'
    Units = utMillimeters
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
    Left = 416
    Top = 256
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 24871
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
        mmTop = 0
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground
      end
      object ppLblMonthCaption: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCaption'
        OnGetText = ppLblMonthCaptionGetText
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578' '#1582#1575#1604#1589' '#1602#1575#1576#1604' '#1662#1585#1583#1575#1582#1578' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8382
        mmLeft = 78442
        mmTop = 6350
        mmWidth = 46313
        BandType = 0
        LayerName = Foreground
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        ParentWidth = True
        mmHeight = 7673
        mmLeft = 0
        mmTop = 17198
        mmWidth = 203300
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SysVarPageNo1'
        OnGetText = ppSystemVariable2GetText
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
        mmTop = 9260
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lbprintdate'
        OnGetText = ppLabel7GetText
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
        mmTop = 4233
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 182827
        mmTop = 17992
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 182034
        mmTop = 17198
        mmWidth = 2910
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = #1605#1588#1582#1589#1575#1578' '#1662#1585#1587#1606#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 127000
        mmTop = 18256
        mmWidth = 54240
        BandType = 0
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 125942
        mmTop = 17463
        mmWidth = 2910
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label101'
        Border.mmPadding = 0
        Caption = #1605#1581#1604' '#1575#1605#1590#1575#1569
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 1058
        mmTop = 17727
        mmWidth = 75142
        BandType = 0
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 77523
        mmTop = 17463
        mmWidth = 2910
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = #1582#1575#1604#1589' '#1602#1575#1576#1604' '#1662#1585#1583#1575#1582#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 79640
        mmTop = 17992
        mmWidth = 45244
        BandType = 0
        LayerName = Foreground
      end
      object ppLblArchiveID: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCaption1'
        OnGetText = ppLblArchiveIDGetText
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1576#1575#1610#1711#1575#1606#1610
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
        mmLeft = 182827
        mmTop = 7408
        mmWidth = 18256
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 15000
      mmPrintPosition = 0
      object ppLine21: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line21'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15000
        mmLeft = 0
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'PersonelNo'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 8202
        mmLeft = 182563
        mmTop = 3440
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15000
        mmLeft = 125942
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15000
        mmLeft = 182034
        mmTop = 0
        mmWidth = 2910
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'PersonelName_L1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 8202
        mmLeft = 127000
        mmTop = 3440
        mmWidth = 54240
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'Price'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0;($#,0)'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 8202
        mmLeft = 79640
        mmTop = 3440
        mmWidth = 45244
        BandType = 4
        LayerName = Foreground
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 15000
        mmLeft = 201084
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object ppLine18: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line18'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15000
        mmLeft = 77523
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.mmPadding = 0
        Pen.Style = psDot
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 0
        mmTop = 12700
        mmWidth = 203300
        BandType = 4
        LayerName = Foreground
      end
      object ppImage1: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = True
        RotationAngle = 0
        Border.mmPadding = 0
        mmHeight = 13229
        mmLeft = 53446
        mmTop = 0
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 14817
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        mmHeight = 8467
        mmLeft = 0
        mmTop = 0
        mmWidth = 203300
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'Price'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 8975
        mmLeft = 79640
        mmTop = 265
        mmWidth = 45244
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1606#1602#1604' '#1576#1607' '#1589#1601#1581#1607' '#1576#1593#1583' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6011
        mmLeft = 127000
        mmTop = 1588
        mmWidth = 29633
        BandType = 8
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 77523
        mmTop = 0
        mmWidth = 3969
        BandType = 8
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 125942
        mmTop = 0
        mmWidth = 3969
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 8467
      mmPrintPosition = 0
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape3'
        mmHeight = 8467
        mmLeft = 0
        mmTop = 0
        mmWidth = 203300
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'Price'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 8975
        mmLeft = 79640
        mmTop = 265
        mmWidth = 45244
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1603#1604' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6011
        mmLeft = 127000
        mmTop = 1588
        mmWidth = 11091
        BandType = 7
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 77523
        mmTop = 0
        mmWidth = 3175
        BandType = 7
        LayerName = Foreground
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 125942
        mmTop = 0
        mmWidth = 3175
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
  object qryPersonelDec: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'SELECT     *'
      'FROM Pay.PersonelDecExt'
      'WHERE     (DecExtID < 0)')
    Left = 408
    Top = 377
  end
end

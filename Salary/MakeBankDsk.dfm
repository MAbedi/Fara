inherited MakeBankDSKF: TMakeBankDSKF
  Left = 686
  Top = 0
  ActiveControl = cmbBank
  Caption = #1604#1610#1587#1578' '#1582#1575#1604#1589' '#1602#1575#1576#1604' '#1662#1585#1583#1575#1582#1578' '#1576#1607' '#1662#1585#1587#1606#1604' '#1576#1607#1605#1585#1575#1607' '#1583#1610#1587#1603#1578' '#1576#1575#1606#1603
  ClientHeight = 690
  ClientWidth = 942
  Position = poDesigned
  ExplicitLeft = -59
  ExplicitTop = -119
  ExplicitWidth = 950
  ExplicitHeight = 721
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 649
    Width = 942
    ExplicitTop = 649
    ExplicitWidth = 942
    inherited BtnReject: TBitBtn
      Left = 2
      Top = 6
      Height = 29
      Margins.Left = 1
      Margins.Top = 5
      Margins.Right = 1
      Margins.Bottom = 5
      TabOrder = 2
      ExplicitLeft = 2
      ExplicitTop = 6
      ExplicitHeight = 29
    end
    object btnMake: TBitBtn
      AlignWithMargins = True
      Left = 788
      Top = 6
      Width = 75
      Height = 29
      Margins.Left = 1
      Margins.Top = 5
      Margins.Right = 1
      Margins.Bottom = 5
      Align = alRight
      Caption = #1578#1607#1610#1607' '#1583#1610#1587#1603#1578
      TabOrder = 1
      OnClick = btnMakeClick
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 865
      Top = 6
      Width = 75
      Height = 29
      Margins.Left = 1
      Margins.Top = 5
      Margins.Right = 1
      Margins.Bottom = 5
      Action = actLimit
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 0
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 79
      Top = 6
      Width = 75
      Height = 29
      Margins.Left = 1
      Margins.Top = 5
      Margins.Right = 1
      Margins.Bottom = 5
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 3
    end
    object BitBtn5: TBitBtn
      AlignWithMargins = True
      Left = 156
      Top = 6
      Width = 75
      Height = 29
      Margins.Left = 1
      Margins.Top = 5
      Margins.Right = 1
      Margins.Bottom = 5
      Action = actSearch_
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 233
      Top = 6
      Width = 75
      Height = 29
      Margins.Left = 1
      Margins.Top = 5
      Margins.Right = 1
      Margins.Bottom = 5
      Action = actSendExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607'Excel'
      TabOrder = 5
    end
    object BitBtn7: TBitBtn
      AlignWithMargins = True
      Left = 310
      Top = 6
      Width = 75
      Height = 29
      Margins.Left = 1
      Margins.Top = 5
      Margins.Right = 1
      Margins.Bottom = 5
      Action = actPrintVijeh
      Align = alLeft
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
      TabOrder = 6
    end
    object BitBtn8: TBitBtn
      AlignWithMargins = True
      Left = 387
      Top = 6
      Width = 75
      Height = 29
      Margins.Left = 1
      Margins.Top = 5
      Margins.Right = 1
      Margins.Bottom = 5
      Align = alLeft
      Caption = #1591#1585#1575#1581#1610' '#1670#1575#1662
      TabOrder = 7
    end
    object btnCD: TBitBtn
      AlignWithMargins = True
      Left = 711
      Top = 6
      Width = 75
      Height = 29
      Margins.Left = 1
      Margins.Top = 5
      Margins.Right = 1
      Margins.Bottom = 5
      Align = alRight
      Caption = #1578#1607#1610#1607' CD'
      TabOrder = 8
      OnClick = btnCDClick
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 634
      Top = 6
      Width = 75
      Height = 29
      Margins.Left = 1
      Margins.Top = 5
      Margins.Right = 1
      Margins.Bottom = 5
      Action = actPrint
      Align = alRight
      Caption = #1670#1575#1662
      TabOrder = 9
    end
    object btnAllBank: TBitBtn
      AlignWithMargins = True
      Left = 557
      Top = 6
      Width = 75
      Height = 29
      Hint = ' '
      Margins.Left = 1
      Margins.Top = 5
      Margins.Right = 1
      Margins.Bottom = 5
      Align = alRight
      Caption = #1607#1605#1607' '#1576#1575#1606#1705' '#1607#1575
      TabOrder = 10
      OnClick = btnAllBankClick
    end
  end
  inherited Panel2: TPanel
    Width = 942
    Height = 58
    ExplicitWidth = 942
    ExplicitHeight = 58
    DesignSize = (
      942
      58)
    inherited ImgTemplate: TImage
      Left = 904
      ExplicitLeft = 793
    end
    inherited lblCaption: TLabel
      Left = 834
      Height = 38
      ExplicitLeft = 834
    end
    object lblBank: TLabel
      Left = 385
      Top = 10
      Width = 36
      Height = 13
      Caption = #1606#1575#1605' '#1576#1575#1606#1705
    end
    object Label3: TLabel
      Left = 80
      Top = 36
      Width = 82
      Height = 13
      Caption = #1578#1575#1585#1610#1582' '#1578#1607#1610#1607' '#1583#1610#1587#1603#1578
    end
    object Label4: TLabel
      Left = 385
      Top = 36
      Width = 83
      Height = 13
      Alignment = taRightJustify
      Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576' '#1670#1603
    end
    object Image3: TImage
      Left = 584
      Top = 17
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
    object Image2: TImage
      Left = 541
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
    object mskDateDisk: TMaskEdit
      Left = 10
      Top = 32
      Width = 66
      Height = 21
      EditMask = '9999/99/99;1;_'
      MaxLength = 10
      TabOrder = 2
      Text = '    /  /  '
    end
    object mskAccountNum: TMaskEdit
      Left = 166
      Top = 32
      Width = 218
      Height = 21
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 1
      Text = ''
    end
    object cmbBank: TComboBox
      Left = 166
      Top = 6
      Width = 218
      Height = 21
      TabOrder = 0
      Text = 'cmbBank'
      OnChange = cmbBankChange
    end
    object CmbArchiveID: TComboBox
      Left = 10
      Top = 6
      Width = 126
      Height = 21
      Color = 13431799
      TabOrder = 3
      Text = 'CmbArchiveID'
      OnChange = CmbArchiveIDChange
    end
  end
  inherited Panel3: TPanel
    Top = 272
    Width = 942
    Height = 377
    ExplicitTop = 272
    ExplicitWidth = 942
    ExplicitHeight = 377
    object Splitter3: TSplitter
      Left = 2
      Top = 33
      Height = 291
      ExplicitTop = 2
      ExplicitHeight = 3
    end
    object StatusBar1: TStatusBar
      Left = 2
      Top = 324
      Width = 938
      Height = 19
      Panels = <
        item
          Width = 300
        end
        item
          Width = 300
        end
        item
          Width = 300
        end
        item
          Width = 300
        end
        item
          Width = 300
        end>
    end
    object Panel1: TPanel
      Left = 696
      Top = 33
      Width = 244
      Height = 291
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      object Splitter2: TSplitter
        Left = 0
        Top = 255
        Width = 244
        Height = 7
        Cursor = crVSplit
        Align = alTop
        ExplicitLeft = 6
        ExplicitTop = 324
        ExplicitWidth = 242
      end
      object Splitter1: TSplitter
        Left = 0
        Top = 262
        Width = 244
        Height = -15
        Cursor = crVSplit
        Align = alTop
        ExplicitLeft = 1
        ExplicitTop = 418
        ExplicitWidth = 242
      end
      object PnlError: TPanel
        Left = 0
        Top = 241
        Width = 244
        Height = 50
        Align = alBottom
        BevelInner = bvRaised
        BevelOuter = bvNone
        BorderStyle = bsSingle
        TabOrder = 0
        Visible = False
        object Label2: TLabel
          Left = 1
          Top = 1
          Width = 238
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = #1604#1610#1587#1578' '#1575#1588#1582#1575#1589#1610' '#1603#1607' '#1583#1575#1585#1575#1610' '#1581#1587#1575#1576' '#1606#1610#1587#1578#1606#1583
          Font.Charset = ARABIC_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsItalic, fsUnderline]
          ParentFont = False
          ExplicitWidth = 211
        end
        object memoError: TMemo
          Left = 1
          Top = 14
          Width = 238
          Height = 31
          Align = alClient
          Color = 16744576
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 39
        Width = 244
        Height = 69
        Align = alTop
        Caption = ' '#1603#1606#1578#1585#1604' '#1607#1575' '
        TabOrder = 1
        object ChkISFunctions: TCheckBox
          Left = 9
          Top = 8
          Width = 164
          Height = 21
          Align = alCustom
          Alignment = taLeftJustify
          Caption = #1575#1601#1585#1575#1583' '#1601#1575#1602#1583' '#1603#1575#1585#1603#1585#1583' '#1606#1605#1575#1610#1588' '#1606#1588#1608#1606#1583'.'#8207
          TabOrder = 0
          OnClick = AllCheckBoxClick
        end
        object ChkAccountNumber: TCheckBox
          Left = 9
          Top = 27
          Width = 164
          Height = 21
          Align = alCustom
          Alignment = taLeftJustify
          Caption = #1575#1601#1585#1575#1583' '#1601#1575#1602#1583' '#1581#1587#1575#1576' '#1606#1605#1575#1610#1588' '#1606#1588#1608#1606#1583#8207'.'#8207
          TabOrder = 1
          OnClick = AllCheckBoxClick
        end
        object chkSelected: TCheckBox
          Left = 9
          Top = 45
          Width = 201
          Height = 21
          Align = alCustom
          Alignment = taLeftJustify
          Caption = #1601#1602#1591' '#1587#1591#1585#1607#1575#1610' '#1575#1606#1578#1582#1575#1576' '#1588#1583#1607' '#1606#1605#1575#1610#1588' '#1588#1608#1583
          TabOrder = 2
          OnClick = AllCheckBoxClick
        end
      end
      object GrpDecExt: TGroupBox
        Left = 0
        Top = 178
        Width = 244
        Height = 22
        Align = alTop
        Caption = ' '#1604#1610#1587#1578' '#1605#1586#1575#1610#1575'/'#1603#1587#1608#1585#1575#1578'  '
        TabOrder = 2
        OnClick = GrpSalaryIdClick
        object chklstDecExt: TCheckListBox
          Left = 2
          Top = 15
          Width = 240
          Height = 5
          OnClickCheck = chklstDecExtClickCheck
          Align = alClient
          Color = clCream
          ItemHeight = 13
          Items.Strings = (
            'c'
            'd')
          TabOrder = 0
        end
      end
      object GrpSalaryId: TGroupBox
        Left = 0
        Top = 156
        Width = 244
        Height = 22
        Align = alTop
        Caption = ' '#1604#1610#1587#1578' '#1593#1606#1575#1608#1610#1606' '#1605#1581#1575#1587#1576#1575#1578#1610' '#1575#1601#1586#1575#1610#1606#1583#1607' '#1581#1602#1608#1602' '
        TabOrder = 3
        OnClick = GrpSalaryIdClick
        object chklstSalaryId: TCheckListBox
          Left = 2
          Top = 15
          Width = 240
          Height = 5
          OnClickCheck = chklstDecExtClickCheck
          Align = alClient
          Color = clCream
          ItemHeight = 13
          Items.Strings = (
            'c'
            'd')
          TabOrder = 0
        end
      end
      object grpLoan: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 111
        Width = 238
        Height = 42
        Align = alTop
        Caption = ' '#1604#1610#1587#1578' '#1608#1575#1605'  '
        TabOrder = 4
        object CmbLoan: TComboBox
          Left = 2
          Top = 15
          Width = 234
          Height = 21
          Align = alClient
          TabOrder = 0
          Text = 'CmbLoan'
          OnChange = CmbLoanChange
        end
      end
      object grpTide: TGroupBox
        Left = 0
        Top = 222
        Width = 244
        Height = 33
        Align = alTop
        Caption = #1583#1610#1587#1603#1578' '#1593#1610#1583#1610'/'#1587#1606#1608#1575#1578
        TabOrder = 5
        OnClick = GrpSalaryIdClick
        object chklstTide: TCheckListBox
          Left = 2
          Top = 42
          Width = 240
          Height = 9
          Align = alClient
          Color = clCream
          ItemHeight = 13
          Items.Strings = (
            '0- '#1593#1610#1583#1610'   *'
            '1-'#1587#1606#1608#1575#1578'   *'
            '2- '#1605#1575#1604#1610#1575#1578' '#1608' '#1593#1604#1610' '#1575#1604#1581#1587#1575#1576' '#1593#1610#1583#1610
            '3-'#1662#1575#1583#1575#1588' '#1605#1587#1578#1602#1604' '#1575#1586' '#1581#1602#1608#1602
            '4-'#1593#1604#1610' '#1575#1604#1581#1587#1575#1576' '#1593#1610#1583#1610
            '5-'#1593#1604#1610' '#1575#1604#1581#1587#1575#1576' '#1587#1606#1608#1575#1578
            '6- '#1582#1575#1604#1589' '#1593#1610#1583#1610'   *'
            '7-'#1605#1585#1582#1589#1740' '#1587#1575#1604#1740#1575#1606#1607)
          TabOrder = 0
          OnClick = ChkTideClick
          ExplicitTop = 15
        end
        object chkTide: TCheckBox
          AlignWithMargins = True
          Left = 5
          Top = 20
          Width = 234
          Height = 17
          Margins.Top = 5
          Margins.Bottom = 5
          Align = alTop
          Caption = #1578#1580#1605#1740#1593' '#1604#1740#1587#1578' '#1605#1575#1607' '#1576#1575' '#1583#1740#1587#1705#1578' '#1593#1740#1583#1740'...   *'
          TabOrder = 1
          OnClick = ChkTideClick
          ExplicitLeft = 176
          ExplicitTop = 8
          ExplicitWidth = 97
        end
      end
      object grpPony: TGroupBox
        Left = 0
        Top = 200
        Width = 244
        Height = 22
        Align = alTop
        Caption = #1578#1587#1608#1610#1607' '#1581#1587#1575#1576
        TabOrder = 6
        OnClick = GrpSalaryIdClick
        object chklstPony: TCheckListBox
          Left = 2
          Top = 15
          Width = 240
          Height = 5
          OnClickCheck = chklstPonyClickCheck
          Align = alClient
          Color = clCream
          ItemHeight = 13
          Items.Strings = (
            'c'
            'd')
          TabOrder = 0
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 247
        Width = 244
        Height = 1
        Align = alClient
        Caption = #1662#1610#1588' '#1606#1605#1575#1610#1588' '#1601#1575#1610#1604
        TabOrder = 7
        OnClick = GrpSalaryIdClick
        ExplicitTop = 240
        object Memo1: TMemo
          AlignWithMargins = True
          Left = 5
          Top = 18
          Width = 234
          Height = 0
          Align = alClient
          BiDiMode = bdLeftToRight
          Color = clCream
          Ctl3D = True
          HideSelection = False
          Lines.Strings = (
            #1578
            #1585
            #1578
            #1610
            #1576' '
            #1604
            #1610
            #1587
            #1578' '
            #1576
            #1575
            #1606
            #1603' '
            #1576
            #1585
            #1575
            #1610' '
            #1575
            #1591
            #1604
            #1575
            #1593
            #1605
            #1604
            #1578
            #1578
            #1580
            #1575
            #1585
            #1578
            #1605
            #1604
            #1610
            #1589
            #1575
            #1583
            #1585
            #1575
            #1578
            #1585
            #1601
            #1575
            #1607
            #1662
            #1575
            #1587
            #1575
            #1585
            #1711
            #1575
            #1583
            ''
            #1578
            #1585
            #1578
            #1610
            #1576' '
            #1606
            #1608
            #1593' '
            #1581
            #1587
            #1575
            #1576
            #1587
            #1610
            #1576
            #1575
            #1580
            #1575
            #1585
            #1610
            #1662
            #1587' '
            #1575
            #1606
            #1583
            #1575
            #1586)
          ParentBiDiMode = False
          ParentCtl3D = False
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 0
          WantReturns = False
        end
      end
      object rgpSalaryID4PartMakeBankDSK: TRadioGroup
        Left = 0
        Top = 0
        Width = 244
        Height = 39
        Align = alTop
        Caption = #1662#1585#1583#1575#1582#1578' '#1583#1608' '#1602#1587#1591#1740
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          #1582#1575#1604#1589
          #1602#1587#1591'1'
          #1602#1587#1591'2')
        TabOrder = 8
        OnClick = rgpSalaryID4PartMakeBankDSKClick
      end
    end
    object Memo2: TMemo
      Left = 2
      Top = 343
      Width = 938
      Height = 32
      Align = alBottom
      Color = clInactiveCaption
      Ctl3D = False
      Lines.Strings = (
        
          #1575#1605#1705#1575#1606' '#1578#1607#1740#1607' '#1583#1740#1587#1705#1578' '#1575#1586' '#1575#1591#1604#1575#1593#1575#1578' '#1605#1608#1602#1578' '#1576#1593#1604#1578' '#1606#1602#1590' '#1705#1606#1578#1585#1604' '#1607#1575#1740' '#1583#1575#1582#1604#1740' '#1605#1580#1575#1586' '#1606 +
          #1605#1740' '#1576#1575#1588#1583' '#1548
        
          ' '#1604#1591#1601#1575' '#1575#1586' '#1605#1606#1608#1740' '#1593#1605#1604#1740#1575#1578' '#1605#1575#1607#1740#1575#1606#1607' '#1548' '#1605#1581#1575#1587#1576#1607' '#1581#1602#1608#1602' '#1548' '#1606#1587#1576#1578' '#1576#1607' '#1576#1575#1740#1711#1575#1606#1740' '#1705#1585#1583 +
          #1606' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1602#1583#1575#1605' '#1606#1605#1575#1574#1740#1583' .')
      ParentCtl3D = False
      TabOrder = 3
      OnClick = Memo2Click
    end
    object Panel4: TPanel
      Left = 2
      Top = 2
      Width = 938
      Height = 31
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
      object ToolBar1: TToolBar
        Left = 0
        Top = 0
        Width = 841
        Height = 31
        Align = alClient
        AutoSize = True
        BorderWidth = 2
        ButtonHeight = 21
        ButtonWidth = 54
        Caption = 'ToolBar1'
        EdgeOuter = esRaised
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
          OnClick = ToolButton12Click
        end
        object ToolButton2: TToolButton
          Tag = 2
          Left = 54
          Top = 0
          Caption = #1575#1585#1583#1610#1576#1607#1588#1578
          Grouped = True
          ImageIndex = 1
          Style = tbsCheck
          OnClick = ToolButton12Click
        end
        object ToolButton3: TToolButton
          Tag = 3
          Left = 108
          Top = 0
          Caption = #1582#1585#1583#1575#1583
          Grouped = True
          ImageIndex = 2
          Style = tbsCheck
          OnClick = ToolButton12Click
        end
        object ToolButton4: TToolButton
          Tag = 4
          Left = 162
          Top = 0
          Caption = #1578#1610#1585
          Grouped = True
          ImageIndex = 3
          Style = tbsCheck
          OnClick = ToolButton12Click
        end
        object ToolButton5: TToolButton
          Tag = 5
          Left = 216
          Top = 0
          Caption = #1605#1585#1583#1575#1583
          Grouped = True
          ImageIndex = 4
          Style = tbsCheck
          OnClick = ToolButton12Click
        end
        object ToolButton6: TToolButton
          Tag = 6
          Left = 270
          Top = 0
          Caption = #1588#1607#1585#1610#1608#1585
          Grouped = True
          ImageIndex = 5
          Style = tbsCheck
          OnClick = ToolButton12Click
        end
        object ToolButton7: TToolButton
          Tag = 7
          Left = 324
          Top = 0
          Caption = #1605#1607#1585
          Grouped = True
          ImageIndex = 6
          Style = tbsCheck
          OnClick = ToolButton12Click
        end
        object ToolButton8: TToolButton
          Tag = 8
          Left = 378
          Top = 0
          Caption = #1570#1576#1575#1606
          Grouped = True
          ImageIndex = 7
          Style = tbsCheck
          OnClick = ToolButton12Click
        end
        object ToolButton9: TToolButton
          Tag = 9
          Left = 432
          Top = 0
          Caption = #1570#1584#1585
          Grouped = True
          ImageIndex = 8
          Style = tbsCheck
          OnClick = ToolButton12Click
        end
        object ToolButton10: TToolButton
          Tag = 10
          Left = 486
          Top = 0
          Caption = #1583#1610
          Grouped = True
          ImageIndex = 9
          Style = tbsCheck
          OnClick = ToolButton12Click
        end
        object ToolButton11: TToolButton
          Tag = 11
          Left = 540
          Top = 0
          Caption = #1576#1607#1605#1606
          Grouped = True
          ImageIndex = 10
          Style = tbsCheck
          OnClick = ToolButton12Click
        end
        object ToolButton12: TToolButton
          Tag = 12
          Left = 594
          Top = 0
          Caption = #1575#1587#1601#1606#1583
          Grouped = True
          ImageIndex = 11
          Style = tbsCheck
          OnClick = ToolButton12Click
        end
      end
      object chkProject: TCheckBox
        Left = 841
        Top = 0
        Width = 97
        Height = 31
        Align = alRight
        Alignment = taLeftJustify
        Caption = #1576#1607' '#1578#1601#1705#1740#1705' '#1662#1585#1608#1688#1607
        TabOrder = 1
        OnClick = chkProjectClick
      end
    end
    object DBGrid1: TCedarDbgrid
      Left = 5
      Top = 33
      Width = 691
      Height = 291
      Align = alClient
      Color = clCream
      DataSource = srcList
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
      OddRowColor = clGradientInactiveCaption
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      RowHeight = 18
      SearchPanel.Enabled = True
      SortLocal = True
      TabOrder = 1
      OnDblClick = DBGrid1DblClick
      OnKeyPress = DBGrid1KeyPress
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      Columns = <
        item
          CellButtons = <>
          Checkboxes = True
          DynProps = <>
          EditButtons = <>
          FieldName = 'selected'
          Footers = <>
          Width = 35
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_radif'
          Footers = <>
          Width = 28
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PersonelNO'
          Footers = <>
          Width = 50
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'FirstName'
          Footers = <>
          Width = 18
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'lastName_L1'
          Footers = <>
          Width = 60
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'name_L1'
          Footers = <>
          Width = 33
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'name_L2'
          Footers = <>
          Width = 15
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'fatherName_L1'
          Footers = <>
          Width = 23
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Price'
          Footers = <>
          Width = 62
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Price1'
          Footers = <>
          Width = 62
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Price2'
          Footers = <>
          Width = 62
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'AccountNumber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Modern'
          Font.Style = []
          Footers = <>
          Width = 71
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'BankName_L1'
          Footers = <>
          Width = 42
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'BankName_L2'
          Footers = <>
          Width = 50
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'BankType_L1'
          Footers = <>
          Width = 52
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'BankType_L2'
          Footers = <>
          Width = 73
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'BranchInfo'
          Footers = <>
          Width = 47
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Mobile'
          Footers = <>
          Width = 40
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ProjectName'
          Footers = <>
          Width = 58
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'SHEBA'
          Footers = <>
          Width = 88
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'NationalID'
          Footers = <>
          Width = 55
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object pnlDiskMeli: TPanel [3]
    Left = 0
    Top = 58
    Width = 942
    Height = 23
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = '    '#1576#1575#1606#1603'  '#1605#1604#1610
    TabOrder = 3
    Visible = False
    object Label5: TLabel
      Left = 563
      Top = 5
      Width = 64
      Height = 13
      Alignment = taRightJustify
      Caption = #1603#1583' '#1587#1585#1662#1585#1587#1578#1610
      Font.Charset = ARABIC_CHARSET
      Font.Color = 10978392
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 315
      Top = 5
      Width = 60
      Height = 13
      Alignment = taRightJustify
      Caption = #1588#1605#1575#1585#1607' '#1588#1593#1576#1607
      Font.Charset = ARABIC_CHARSET
      Font.Color = 10978392
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 103
      Top = 5
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = #1587#1585#1601#1589#1604
      Font.Charset = ARABIC_CHARSET
      Font.Color = 10978392
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object mskSarparasty: TMaskEdit
      Left = 469
      Top = 1
      Width = 90
      Height = 21
      Color = 15329769
      EditMask = '9999;1;_'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 4
      ParentFont = False
      TabOrder = 0
      Text = '    '
    end
    object mskShobeh: TMaskEdit
      Left = 216
      Top = 1
      Width = 90
      Height = 21
      Color = 15329769
      EditMask = '99999;1;_'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 5
      ParentFont = False
      TabOrder = 1
      Text = '     '
    end
    object mskSarfasl: TMaskEdit
      Left = 10
      Top = 1
      Width = 90
      Height = 21
      Color = 15329769
      EditMask = '99999999;1;_'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 8
      ParentFont = False
      TabOrder = 2
      Text = '        '
    end
  end
  object pnlDiskSaderat: TPanel [4]
    Left = 0
    Top = 81
    Width = 942
    Height = 23
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = '    '#1576#1575#1606#1603' '#1589#1575#1583#1585#1575#1578' '
    TabOrder = 4
    Visible = False
    object Label1: TLabel
      Left = 563
      Top = 6
      Width = 86
      Height = 13
      Alignment = taRightJustify
      Caption = #1587#1585#1610' '#1601#1575#1610#1604' '#1575#1585#1587#1575#1604#1610
      Font.Charset = ARABIC_CHARSET
      Font.Color = 10978392
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 315
      Top = 6
      Width = 40
      Height = 13
      Alignment = taRightJustify
      Caption = #1603#1583' '#1583#1587#1578#1607
      Font.Charset = ARABIC_CHARSET
      Font.Color = 10978392
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 103
      Top = 6
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = #1603#1583' '#1588#1593#1576#1607
      Font.Charset = ARABIC_CHARSET
      Font.Color = 10978392
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object msk_SA_FileSerial: TMaskEdit
      Left = 469
      Top = 2
      Width = 90
      Height = 21
      Color = 15329769
      EditMask = '9999;1;_'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 4
      ParentFont = False
      TabOrder = 0
      Text = '    '
    end
    object msk_SA_Groups: TMaskEdit
      Left = 216
      Top = 2
      Width = 90
      Height = 21
      Color = 15329769
      EditMask = '9999;1;_'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 4
      ParentFont = False
      TabOrder = 1
      Text = '    '
    end
    object msk_SA_Branch: TMaskEdit
      Left = 10
      Top = 2
      Width = 90
      Height = 21
      Color = 15329769
      EditMask = '9999;1;_'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 4
      ParentFont = False
      TabOrder = 2
      Text = '    '
    end
  end
  object pnlDiskKeshavarzi: TPanel [5]
    Left = 0
    Top = 156
    Width = 942
    Height = 25
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = '    '#1576#1575#1606#1603' '#1603#1588#1575#1608#1585#1586#1610'/'#1605#1604#1610
    TabOrder = 5
    Visible = False
    object Label12: TLabel
      Left = 315
      Top = 5
      Width = 92
      Height = 13
      Alignment = taRightJustify
      Caption = #1603#1583' '#1587#1575#1586#1605#1575#1606'/'#1605#1608#1587#1587#1607
      Font.Charset = ARABIC_CHARSET
      Font.Color = 10978392
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 563
      Top = 5
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = #1603#1583' '#1588#1593#1576#1607
      Font.Charset = ARABIC_CHARSET
      Font.Color = 10978392
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 103
      Top = 5
      Width = 75
      Height = 13
      Alignment = taRightJustify
      Caption = #1603#1583' '#1605#1585#1581#1604#1607'/'#1604#1610#1587#1578
      Font.Charset = ARABIC_CHARSET
      Font.Color = 10978392
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object msk_ke_CCCC: TMaskEdit
      Left = 216
      Top = 1
      Width = 92
      Height = 21
      Color = 15329769
      EditMask = '999999;1;_'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 6
      ParentFont = False
      TabOrder = 1
      Text = '      '
    end
    object msk_ke_BBBB: TMaskEdit
      Left = 469
      Top = 1
      Width = 90
      Height = 21
      Color = 15329769
      EditMask = '9999;1;_'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 4
      ParentFont = False
      TabOrder = 0
      Text = '    '
    end
    object Msk_ke_Stage: TMaskEdit
      Left = 16
      Top = -1
      Width = 94
      Height = 21
      Color = 15329769
      EditMask = '999999;1;_'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 6
      ParentFont = False
      TabOrder = 2
      Text = '000100'
    end
  end
  object pnlShahr_Pasargad: TPanel [6]
    Left = 0
    Top = 181
    Width = 942
    Height = 23
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = '    '#1576#1575#1606#1603' '#1588#1607#1585'/'#1662#1575#1587#1575#1585#1711#1575#1583
    TabOrder = 6
    Visible = False
    object Label7: TLabel
      Left = 315
      Top = 5
      Width = 94
      Height = 13
      Alignment = taRightJustify
      Caption = #1606#1575#1605' '#1587#1575#1586#1605#1575#1606'/'#1605#1608#1587#1587#1607
      Font.Charset = ARABIC_CHARSET
      Font.Color = 10978392
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 563
      Top = 5
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = #1603#1583' '#1588#1593#1576#1607
      Font.Charset = ARABIC_CHARSET
      Font.Color = 10978392
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object mskShahr_Name: TMaskEdit
      Left = 16
      Top = 1
      Width = 290
      Height = 21
      Color = 15329769
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Text = 'FaraRayaneh'
    end
    object mskShahr_branch: TMaskEdit
      Left = 466
      Top = 1
      Width = 91
      Height = 21
      Color = 15329769
      EditMask = '9999;1;_'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 4
      ParentFont = False
      TabOrder = 0
      Text = '288 '
    end
  end
  object pnlParsiyan: TPanel [7]
    Left = 0
    Top = 104
    Width = 942
    Height = 52
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = '    '#1576#1575#1606#1603' '#1662#1575#1585#1587#1610#1575#1606
    TabOrder = 7
    Visible = False
    object Label15: TLabel
      Left = 563
      Top = 6
      Width = 93
      Height = 13
      Alignment = taRightJustify
      Caption = #1603#1583' '#1588#1593#1576#1607'/'#1606#1608#1593' '#1587#1662#1585#1583#1607
      Font.Charset = ARABIC_CHARSET
      Font.Color = 10978392
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 310
      Top = 6
      Width = 152
      Height = 13
      Alignment = taRightJustify
      Caption = #1603#1583' '#1587#1585#1601#1589#1604' '#1581#1587#1575#1576'/'#1588' '#1587' '#1587#1662#1585#1583#1607
      Font.Charset = ARABIC_CHARSET
      Font.Color = 10978392
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 103
      Top = 6
      Width = 109
      Height = 13
      Alignment = taRightJustify
      Caption = #1588' '#1587' '#1587#1585#1601#1589#1604' '#1581'/'#1603#1606#1578#1585#1604
      Font.Charset = ARABIC_CHARSET
      Font.Color = 10978392
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 563
      Top = 31
      Width = 71
      Height = 13
      Alignment = taRightJustify
      Caption = #1603#1583' '#1601#1575#1610#1604' '#1575#1585#1587#1575#1604#1610
      Font.Charset = ARABIC_CHARSET
      Font.Color = 10978392
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object msk_PA_Branch: TMaskEdit
      Left = 469
      Top = 2
      Width = 92
      Height = 21
      Color = 15329769
      EditMask = '9999;1;_'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 4
      ParentFont = False
      TabOrder = 0
      Text = '    '
    end
    object msk_PA_Sarfasl: TMaskEdit
      Left = 216
      Top = 2
      Width = 90
      Height = 21
      Color = 15329769
      EditMask = '99999999999;1;_'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 11
      ParentFont = False
      TabOrder = 1
      Text = '           '
    end
    object msk_PA_Serial: TMaskEdit
      Left = 10
      Top = 2
      Width = 90
      Height = 21
      Color = 15329769
      EditMask = '99999999999;1;_'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 11
      ParentFont = False
      TabOrder = 2
      Text = '           '
    end
    object msk_PA_FileCode: TMaskEdit
      Left = 469
      Top = 27
      Width = 91
      Height = 21
      Color = 15329769
      EditMask = '99999999999;1;_'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 11
      ParentFont = False
      TabOrder = 3
      Text = '1117       '
    end
  end
  object pnlShahr14: TPanel [8]
    Left = 0
    Top = 204
    Width = 942
    Height = 33
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = '    '#1576#1575#1606#1603' '#1588#1607#1585'/'#1605#1604#1740'/'#1578#1593#1575#1608#1606
    TabOrder = 8
    Visible = False
    object Label19: TLabel
      AlignWithMargins = True
      Left = 145
      Top = 3
      Width = 47
      Height = 27
      Align = alLeft
      Alignment = taRightJustify
      Caption = #1608#1575#1585#1740#1586' '#1705#1606#1606#1583#1607
      Font.Charset = ARABIC_CHARSET
      Font.Color = 10978392
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitHeight = 13
    end
    object Label20: TLabel
      AlignWithMargins = True
      Left = 474
      Top = 3
      Width = 69
      Height = 27
      Align = alLeft
      Alignment = taRightJustify
      Caption = #1588#1600#1600#1585#1581' '#1608#1575#1585#1740#1586#1740' :'#8207
      Font.Charset = ARABIC_CHARSET
      Font.Color = 10978392
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitHeight = 13
    end
    object medtBankShar14: TMaskEdit
      AlignWithMargins = True
      Left = 198
      Top = 1
      Width = 270
      Height = 24
      Margins.Top = 1
      Margins.Bottom = 8
      Align = alLeft
      Color = 15329769
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = #1588#1600#1600#1585#1581' '#1608#1575#1585#1740#1586#1740
      ExplicitHeight = 21
    end
    object medtBankShar142: TMaskEdit
      AlignWithMargins = True
      Left = 3
      Top = 1
      Width = 136
      Height = 24
      Margins.Top = 1
      Margins.Bottom = 8
      Align = alLeft
      Color = 15329769
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Text = ''
      ExplicitHeight = 21
    end
    object rgShahr: TRadioGroup
      Left = 546
      Top = 0
      Width = 299
      Height = 33
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = #1605#1578#1606' '#1608#1575#1585#1740#1586#1740
      Columns = 5
      ItemIndex = 2
      Items.Strings = (
        #1588#1585#1581' '#1608#1575#1585#1740#1586#1740
        #1606#1575#1605' '#1662#1585#1587#1606#1604
        #1607#1585#1583#1608
        #1607#1740#1670' '#1705#1583#1575#1605
        'POSA')
      TabOrder = 2
    end
  end
  object pnlMelat: TPanel [9]
    Left = 0
    Top = 237
    Width = 942
    Height = 35
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = '    '#1576#1575#1606#1603' '#1605#1604#1578
    TabOrder = 9
    Visible = False
    object rgpMelat: TRadioGroup
      Left = 0
      Top = 0
      Width = 490
      Height = 35
      Align = alLeft
      Caption = #1580#1607#1578' '#1608#1575#1585#1740#1586' '#1583#1585
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        #1588#1593#1576#1607
        #1576#1575#1580#1607
        #1575#1740#1606#1578#1585#1606#1578)
      TabOrder = 0
    end
  end
  inherited ActionList: TActionList
    Left = 640
    Top = 144
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      Hint = ' '
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actMake: TAction
      Caption = #1578#1607#1610#1607' '#1583#1610#1587#1603#1578
      ShortCut = 116
      OnExecute = actMakeExecute
    end
    object actLimit: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actLimitExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actSendExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607'Excel'
      OnExecute = actSendExcelExecute
    end
    object actPrintVijeh: TAction
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
      OnExecute = actPrintVijehExecute
    end
    object actSms: TAction
      Caption = #1575#1585#1587#1575#1604' '#1662#1610#1575#1605#1603
      OnExecute = actSmsExecute
    end
    object actSampleExell: TAction
      Caption = 'Sample Exell'
      OnExecute = actSampleExellExecute
    end
    object actMeliExell: TAction
      Caption = 'actMeliExell'
      OnExecute = actMeliExellExecute
    end
    object actTaavonExell: TAction
      Caption = 'Exell '#1576#1575#1606#1705' '#1578#1608#1587#1593#1607' '#1578#1593#1575#1608#1606
      OnExecute = actTaavonExellExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 640
    Top = 41
  end
  object srcList: TDataSource
    DataSet = qryList
    Left = 416
    Top = 121
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcList
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 240
    Top = 329
    object pfldDBPipeline1ppField1: TppField
      FieldAlias = 'selected'
      FieldName = 'selected'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField2: TppField
      FieldAlias = '_radif'
      FieldName = '_radif'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField3: TppField
      FieldAlias = 'PersonelNO'
      FieldName = 'PersonelNO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField4: TppField
      FieldAlias = 'name_L1'
      FieldName = 'name_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField5: TppField
      FieldAlias = 'name_L2'
      FieldName = 'name_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField6: TppField
      FieldAlias = 'Price'
      FieldName = 'Price'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField7: TppField
      FieldAlias = 'BankCode'
      FieldName = 'BankCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField8: TppField
      FieldAlias = 'AccountNumber'
      FieldName = 'AccountNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField9: TppField
      FieldAlias = 'BankName_L1'
      FieldName = 'BankName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField10: TppField
      FieldAlias = 'BankName_L2'
      FieldName = 'BankName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField11: TppField
      FieldAlias = 'AccBankType'
      FieldName = 'AccBankType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField12: TppField
      FieldAlias = 'BankType_L1'
      FieldName = 'BankType_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField13: TppField
      FieldAlias = 'BankType_L2'
      FieldName = 'BankType_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField14: TppField
      FieldAlias = 'ISFunctions'
      FieldName = 'ISFunctions'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField15: TppField
      FieldAlias = 'BranchInfo'
      FieldName = 'BranchInfo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField16: TppField
      FieldAlias = 'Mobile'
      FieldName = 'Mobile'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField17: TppField
      FieldAlias = 'fatherName_L1'
      FieldName = 'fatherName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
  end
  object ppReport4File: TppReport
    AutoStop = False
    Columns = 2
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
    Template.FileName = 'D:\Projects\Fara\Salary\Exe\Report\MakeBankDSKTide.rtm'
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
    Left = 320
    Top = 417
    Version = '23.0'
    mmColumnWidth = 101650
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13494
      mmPrintPosition = 0
      object ppLblCompanyName: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCompanyName'
        OnGetText = ppLblCompanyNameGetText
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1588#1585#1603#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 93398
        mmTop = 0
        mmWidth = 16404
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 0
        mmTop = 10319
        mmWidth = 203300
        BandType = 0
        LayerName = Foreground
      end
      object ppLblPrintDate: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblPrintDate'
        OnGetText = ppLblPrintDateGetText
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1670#1575#1662
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        Visible = False
        mmHeight = 5821
        mmLeft = 1058
        mmTop = 5556
        mmWidth = 10848
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578' '#1593#1610#1583#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5969
        mmLeft = 186267
        mmTop = 6350
        mmWidth = 15028
        BandType = 0
        LayerName = Foreground
      end
      object plblAccountNum: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        OnGetText = plblAccountNumGetText
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576' '#1670#1705
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3598
        mmLeft = 58473
        mmTop = 6879
        mmWidth = 18965
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppColumnHeaderBand1: TppColumnHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        mmHeight = 7673
        mmLeft = 0
        mmTop = 0
        mmWidth = 101650
        BandType = 2
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1662#1585#1587#1606#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6000
        mmLeft = 58473
        mmTop = 0
        mmWidth = 42333
        BandType = 2
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576' '#1576#1575#1606#1603#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6000
        mmLeft = 28310
        mmTop = 0
        mmWidth = 29898
        BandType = 2
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = #1602#1575#1576#1604' '#1662#1585#1583#1575#1582#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6000
        mmLeft = 0
        mmTop = 0
        mmWidth = 28046
        BandType = 2
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        mmHeight = 5292
        mmLeft = 28310
        mmTop = 2117
        mmWidth = 3440
        BandType = 2
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label102'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        mmHeight = 5292
        mmLeft = 58473
        mmTop = 2117
        mmWidth = 3440
        BandType = 2
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape3'
        mmHeight = 6085
        mmLeft = 0
        mmTop = 0
        mmWidth = 101650
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'name_L1'
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
        mmHeight = 6085
        mmLeft = 58473
        mmTop = 0
        mmWidth = 42333
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'Price'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 265
        mmTop = 0
        mmWidth = 27781
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'AccountNumber'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 28310
        mmTop = 0
        mmWidth = 29898
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppColumnFooterBand1: TppColumnFooterBand
      AlignToBottom = True
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 15346
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        Shape = stRoundRect
        mmHeight = 15346
        mmLeft = 0
        mmTop = 0
        mmWidth = 203300
        BandType = 8
        LayerName = Foreground
      end
      object ppLine42: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line31'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15346
        mmLeft = 60590
        mmTop = 0
        mmWidth = 8996
        BandType = 8
        LayerName = Foreground
      end
      object ppLine43: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line43'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15346
        mmLeft = 104775
        mmTop = 0
        mmWidth = 8996
        BandType = 8
        LayerName = Foreground
      end
      object ppLine44: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line44'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15346
        mmLeft = 158486
        mmTop = 0
        mmWidth = 8996
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1575#1610#1610#1583#1603#1606#1606#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 128059
        mmTop = 2117
        mmWidth = 12435
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1583#1610#1585' '#1575#1605#1608#1585' '#1605#1575#1604#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 74877
        mmTop = 1588
        mmWidth = 17198
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label101'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1607#1585#1583#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 27781
        mmTop = 1588
        mmWidth = 12435
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1606#1592#1610#1605' '#1603#1606#1606#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 185209
        mmTop = 2381
        mmWidth = 12171
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 17727
      mmPrintPosition = 0
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = #1578#1593#1583#1575#1583' '#1606#1601#1585#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5292
        mmLeft = 115359
        mmTop = 2117
        mmWidth = 12965
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'PersonelNO'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7673
        mmLeft = 100542
        mmTop = 1058
        mmWidth = 11906
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1583#1585#1610#1575#1601#1578#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5292
        mmLeft = 46302
        mmTop = 1588
        mmWidth = 14552
        BandType = 7
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 203300
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        Border.mmPadding = 0
        DataField = 'Price'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7673
        mmLeft = 2117
        mmTop = 529
        mmWidth = 41275
        BandType = 7
        LayerName = Foreground
      end
      object ppLblDateDisk: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblDateDisk'
        OnGetText = ppLblDateDiskGetText
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1578#1607#1610#1607' '#1583#1610#1587#1603#1578':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 176477
        mmTop = 2117
        mmWidth = 22225
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalcNum2Alpha: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalcNum2Alpha'
        OnGetText = ppDBCalcNum2AlphaGetText
        Border.mmPadding = 0
        DataField = 'Price'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7673
        mmLeft = 64823
        mmTop = 8996
        mmWidth = 137848
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
  object qryList: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = qryListAfterOpen
    OnCalcFields = qryListCalcFields
    Parameters = <
      item
        Name = 'AccountsTypeID'
        DataType = ftString
        Size = 1
        Value = '9'
      end
      item
        Name = 'BranchInfoFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'BranchInfoTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ProjectIDFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ProjectIDTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'Mounth'
        DataType = ftString
        Size = 1
        Value = '9'
      end
      item
        Name = 'ArchiveID'
        DataType = ftString
        Size = 1
        Value = '9'
      end
      item
        Name = 'BankCode'
        DataType = ftString
        Size = 1
        Value = '9'
      end
      item
        Name = 'AccBankTypeFrom'
        DataType = ftString
        Size = 1
        Value = '9'
      end
      item
        Name = 'AccBankTypeTo'
        DataType = ftString
        Size = 6
        Value = '9'
      end
      item
        Name = 'PersonelStateFrom'
        DataType = ftString
        Size = 1
        Value = '9'
      end
      item
        Name = 'PersonelStateTo'
        DataType = ftString
        Size = 6
        Value = '9'
      end
      item
        Name = 'PersonelFrom'
        DataType = ftString
        Size = 1
        Value = '9'
      end
      item
        Name = 'PersonelTo'
        DataType = ftString
        Size = 6
        Value = '9'
      end
      item
        Name = 'OfficeCode'
        Size = -1
        Value = Null
      end
      item
        Name = 'EmployTypeID'
        Size = -1
        Value = Null
      end
      item
        Name = 'GroupID'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *,(SELECT COUNT(*) FROM Pay.Functions'
      
        '       WHERE     ((Mounth = a.Mounth) AND (PersonelNo = a.Person' +
        'elNO))) AS ISFunctions'
      'from ('
      ''
      
        'SELECT    Fitful.FitfulID AS selected , FixedCalculated.Personel' +
        'NO,NationalID,'
      
        '                      PersonelInfo.name_L1 AS FirstName , Person' +
        'elInfo.lastName_L1 ,'
      
        '                      PersonelInfo.name_L1 + '#39' '#39' + PersonelInfo.' +
        'lastName_L1 AS name_L1, PersonelInfo.name_L2 + '#39' '#39' + PersonelInf' +
        'o.lastName_L2 AS name_L2, '
      
        '                      ROUND(SUM(CASE WHEN (FixedCalculated.ShowL' +
        'istKind = 1) THEN FixedCalculated.Price ELSE - FixedCalculated.P' +
        'rice END), 0) AS Price, '
      '                      PersonelInfo.BankCode, FormsInfo.InfoID,'
      
        '                      ISNULL(PersonelAccounts.AccountNumber_Pa, ' +
        'PersonelInfo.AccountNumber) AS AccountNumber,'
      
        '                      ISNULL(FormsInfoBankCode_Pa.InfoName_L1, F' +
        'ormsInfo.InfoName_L1) AS BankName_L1,'
      '                      FormsInfo.InfoName_L2 AS BankName_L2,'
      
        '                      ISNULL(FormsInfo_AccBankType_Pa.InfoName_L' +
        '1, FormsInfo_AccBankType.InfoName_L1) AS BankType_L1,'
      
        '                      FormsInfo_AccBankType.InfoName_L2 AS BankT' +
        'ype_L2,'
      
        '                      FormsInfo_AccBankType.InfoID AS AccBankTyp' +
        'e, FormsInfo_2PersonelState.InfoID AS PersonelState, FixedCalcul' +
        'ated.Mounth,'
      
        '                      FormsInfo_BranchInfo.InfoName_L1 AS Branch' +
        'Info ,PersonelInfo.Mobile, PersonelInfo.fatherName_L1'
      '                        ,PersonelAccounts.SHEBA'
      'FROM Pay.FixedCalculated INNER JOIN'
      
        '                      Pay.PersonelInfo ON FixedCalculated.Person' +
        'elNO = PersonelInfo.PersonelNo LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfo_2PersonelState ' +
        'ON PersonelInfo.PersonelState = FormsInfo_2PersonelState.FormInf' +
        'oID LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo ON PersonelInfo.BankCode = F' +
        'ormsInfo.FormInfoID LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfo_AccBankType ON ' +
        'PersonelInfo.AccBankType = FormsInfo_AccBankType.FormInfoID LEFT' +
        ' OUTER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfo_BranchInfo ON P' +
        'ersonelInfo.BranchInfo = FormsInfo_BranchInfo.FormInfoID LEFT OU' +
        'TER JOIN'
      
        '                      Pay.PersonelAccounts ON PersonelInfo.Perso' +
        'nelNo = PersonelAccounts.PersonelNo LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfo_AccBankType_Pa ' +
        'ON PersonelAccounts.AccBankType_Pa = FormsInfo_AccBankType_Pa.Fo' +
        'rmInfoID LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfo_AccountsType_Pa' +
        ' ON PersonelAccounts.AccountsType = FormsInfo_AccountsType_Pa.Fo' +
        'rmInfoID LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfo_BranchInfo_Pa O' +
        'N PersonelAccounts.BranchInfo_Pa = FormsInfo_BranchInfo_Pa.FormI' +
        'nfoID LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfoBankCode_Pa ON P' +
        'ersonelAccounts.BankCode_Pa = FormsInfoBankCode_Pa.FormInfoID'
      ' CROSS JOIN'
      '                      dbo.Fitful'
      'WHERE'
      ''
      
        ' ((FixedCalculated.ShowListKind = 1) OR (FixedCalculated.ShowLis' +
        'tKind = 2) OR'
      
        '        (  (FixedCalculated.ShowListKind = 11) AND (FixedCalcula' +
        'ted.BedBes = 2)))'
      ''
      
        'AND ( FormsInfo_AccountsType_Pa.InfoID = :AccountsTypeID or Form' +
        'sInfo_AccountsType_Pa.InfoID is null)'
      
        'AND (ISNULL(FormsInfo_BranchInfo_Pa.InfoID, FormsInfo_BranchInfo' +
        '.InfoID) BETWEEN :BranchInfoFrom  AND :BranchInfoTo  or ISNULL(F' +
        'ormsInfo_BranchInfo_Pa.InfoID, FormsInfo_BranchInfo.InfoID) is n' +
        'ull )'
      ''
      
        'AND ( ( FixedCalculated.ProjectID  BETWEEN :ProjectIDFrom AND :P' +
        'rojectIDTo) )'
      ''
      'AND (FixedCalculated.Mounth = :Mounth)'
      'AND (FixedCalculated.ArchiveID = :ArchiveID)'
      
        'AND ( ISNULL(PersonelAccounts.BankCode_Pa ,PersonelInfo.BankCode' +
        ') = :BankCode)'
      ''
      
        'GROUP BY FixedCalculated.PersonelNO,NationalID, PersonelInfo.nam' +
        'e_L1 , PersonelInfo.lastName_L1, PersonelInfo.name_L2 + '#39' '#39' + Pe' +
        'rsonelInfo.lastName_L2,'
      
        '                      PersonelInfo.BankCode, FormsInfo.InfoID, I' +
        'SNULL(PersonelAccounts.AccountNumber_Pa, PersonelInfo.AccountNum' +
        'ber),'
      
        '                      ISNULL(FormsInfoBankCode_Pa.InfoName_L1, F' +
        'ormsInfo.InfoName_L1), FormsInfo.InfoName_L2, ISNULL(FormsInfo_A' +
        'ccBankType_Pa.InfoName_L1,'
      
        '                      FormsInfo_AccBankType.InfoName_L1), FormsI' +
        'nfo_AccBankType.InfoName_L2, FormsInfo_AccBankType.InfoID, Forms' +
        'Info_2PersonelState.InfoID, FixedCalculated.Mounth,'
      '                      FormsInfo_BranchInfo.InfoName_L1'
      
        '                      ,FormsInfo_AccBankType.InfoID,FormsInfo_Ac' +
        'cBankType_Pa.InfoID,PersonelInfo.Mobile, Fitful.FitfulID, Person' +
        'elInfo.fatherName_L1'
      '                       ,PersonelAccounts.SHEBA'
      ''
      ''
      
        'HAVING (ISNULL(FormsInfo_AccBankType_Pa.InfoID, FormsInfo_AccBan' +
        'kType.InfoID) BETWEEN :AccBankTypeFrom  AND :AccBankTypeTo)'
      ''
      'AND'
      ''
      
        '            (FormsInfo_2PersonelState.InfoID BETWEEN :PersonelSt' +
        'ateFrom  AND :PersonelStateTo) AND'
      
        '            (FixedCalculated.PersonelNO BETWEEN  :PersonelFrom  ' +
        '  AND :PersonelTo)'
      
        'And FixedCalculated.PersonelNo in (SELECT Interdicts.PersonelNo ' +
        'FROM Pay.Interdicts LEFT OUTER JOIN'
      
        '    Pay.FormsInfo ON Pay.Interdicts.OfficeCode = FormsInfo.FormI' +
        'nfoID'
      
        '    WHERE (Interdicts.State < 50) AND (Interdicts.InterdicType =' +
        ' 0)'
      ''
      '   :OfficeCode '
      '   :EmployTypeID '
      '   :GroupID  '
      ')'
      ''
      ')a'
      'WHERE   Price > 0'
      'ORDER BY PersonelNO'
      ''
      ' ')
    Left = 136
    Top = 361
    object qryListselected: TFMTBCDField
      Tag = 3
      DisplayLabel = #1575#1606#1578#1582#1575#1576
      FieldName = 'selected'
      Precision = 20
      Size = 4
    end
    object qryList_radif: TIntegerField
      DisplayLabel = #1585#1583#1610#1601
      FieldKind = fkCalculated
      FieldName = '_radif'
      Calculated = True
    end
    object qryListPersonelNO: TIntegerField
      Tag = 3
      DisplayLabel = #1588'.'#1662#1585#1587#1606#1604
      FieldName = 'PersonelNO'
    end
    object qryListname_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1662#1585#1587#1606#1604
      FieldName = 'name_L1'
      Size = 25
    end
    object qryListname_L2: TStringField
      DisplayLabel = 'name'
      FieldName = 'name_L2'
      Size = 25
    end
    object qryListPrice: TBCDField
      Tag = 3
      DisplayLabel = #1602#1575#1576#1604' '#1662#1585#1583#1575#1582#1578
      FieldName = 'Price'
      currency = True
      Precision = 19
    end
    object qryListFirstName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605
      FieldName = 'FirstName'
      Size = 25
    end
    object qryListlastName_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1740
      FieldName = 'lastName_L1'
      Size = 30
    end
    object qryListBankCode: TIntegerField
      DisplayLabel = #1603#1583' '#1576#1575#1606#1603
      FieldName = 'BankCode'
    end
    object qryListAccountNumber: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
      FieldName = 'AccountNumber'
      Size = 30
    end
    object qryListBankName_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1576#1575#1606#1705
      FieldName = 'BankName_L1'
      Size = 255
    end
    object qryListBankName_L2: TStringField
      DisplayLabel = 'BankName'
      FieldName = 'BankName_L2'
      Size = 255
    end
    object qryListAccBankType: TWordField
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576
      FieldName = 'AccBankType'
    end
    object qryListBankType_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1581#1587#1575#1576
      FieldName = 'BankType_L1'
      Size = 255
    end
    object qryListBankType_L2: TStringField
      FieldName = 'BankType_L2'
      Size = 255
    end
    object qryListISFunctions: TIntegerField
      FieldName = 'ISFunctions'
      ReadOnly = True
    end
    object qryListBranchInfo: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1588#1593#1576#1607
      FieldName = 'BranchInfo'
      Size = 255
    end
    object qryListMobile: TStringField
      DisplayLabel = #1607#1605#1585#1575#1607
      FieldName = 'Mobile'
    end
    object qryListfatherName_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1662#1583#1585
      FieldName = 'fatherName_L1'
      Size = 25
    end
    object qryListPrice1: TBCDField
      Tag = 3
      DisplayLabel = #1602#1575#1576#1604' '#1662#1585#1583#1575#1582#1578' '#1602#1587#1591' 1'
      FieldName = 'Price1'
      currency = True
      Precision = 19
    end
    object qryListPrice2: TBCDField
      Tag = 3
      DisplayLabel = #1602#1575#1576#1604' '#1662#1585#1583#1575#1582#1578' '#1602#1587#1591' 2'
      FieldName = 'Price2'
      currency = True
      Precision = 19
    end
    object qryListProjectName: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1662#1585#1608#1688#1607
      FieldName = 'ProjectName'
      Size = 255
    end
    object qryListNationalID: TStringField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1604#1610
      FieldName = 'NationalID'
      Size = 12
    end
    object qryListSHEBA: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576' '#1588#1576#1575
      FieldName = 'SHEBA'
      FixedChar = True
      Size = 30
    end
  end
  object PopList4Print: TPopupMenu
    Left = 434
    Top = 399
    object AllClikPop: TMenuItem
      Caption = #1670#1575#1662#1607#1575#1610' '#1583#1610#1711#1585' '#1585#1575' '#1583#1585' '#1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1575#1591#1604#1575#1593#1575#1578' '#1581#1602#1608#1602' '#1608' '#1583#1587#1578#1605#1586#1583' '#1605#1588#1582#1589' '#1603#1606#1610#1583'..'
      OnClick = AllClikPopClick
    end
  end
  object Dbf1: TDbf
    FilePath = 'D:\Projects\Fara\Salary\Exe\Objects\'
    IndexDefs = <>
    TableName = 'BMIPYROL.DBF'
    TableLevel = 4
    Left = 440
    Top = 336
  end
  object qry_init: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT        FormInfoID'
      'FROM Pay.FormsInfo'
      'WHERE        (FormType IN (59, 111))')
    Left = 688
    Top = 88
  end
  object SaveDialog1: TSaveDialog
    Title = #1605#1587#1610#1585' '#1584#1582#1610#1585#1607' '#1601#1575#1610#1604#1607#1575#1610' '#1576#1575#1606#1603' '
    Left = 344
    Top = 335
  end
  object popPasargad: TPopupMenu
    Left = 266
    Top = 479
    object Txt: TMenuItem
      Caption = 'Txt'
      OnClick = TxtClick
    end
    object Xls: TMenuItem
      Caption = 'Xls'
      OnClick = XlsClick
    end
  end
  object cli1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 256
    Top = 400
    object cli1noehesab: TStringField
      FieldName = 'no'#39'e hesab'
      Size = 100
    end
    object cli1shomarehesab: TStringField
      FieldName = 'shomare hesab'
      Size = 100
    end
    object cli1mablagh: TStringField
      FieldName = 'mablagh'
      Size = 100
    end
    object cli1bedehkar01: TStringField
      FieldName = 'bedehkar (0-1)'
      Size = 100
    end
    object cli1sharheavalie: TStringField
      FieldName = 'sharhe avalie'
      Size = 100
    end
    object cli1sharhesanavie: TStringField
      FieldName = 'sharhe sanavie'
      Size = 100
    end
  end
  object qrySampleExell: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = qryListAfterOpen
    OnCalcFields = qryListCalcFields
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     TOP (0)      FitfulNote AS ['#1588#1605#1575#1585#1607' '#1581#1587#1575#1576'], FitfulNote A' +
        'S '#1579#1575#1576#1578', FitfulIDc AS '#1605#1576#1604#1594', FitfulNote AS '#1579#1575#1576#1578'1'
      
        ', FitfulNote AS '#1579#1575#1576#1578'2, FitfulNote AS '#1579#1575#1576#1578'3, FitfulNote AS '#1588#1585#1581', F' +
        'itfulNote AS ['#1580#1605#1593' '#1606#1607#1575#1740#1740' ]'
      'FROM dbo.Fitful'
      '')
    Left = 120
    Top = 433
    object qrySampleExellشمارهحساب: TStringField
      FieldName = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
      Size = 1000
    end
    object qrySampleExellثابت: TStringField
      FieldName = #1579#1575#1576#1578
      Size = 1000
    end
    object qrySampleExellمبلغ: TBCDField
      FieldName = #1605#1576#1604#1594
      Precision = 19
    end
    object qrySampleExellثابت1: TStringField
      FieldName = #1579#1575#1576#1578'1'
      Size = 1000
    end
    object qrySampleExellثابت2: TStringField
      FieldName = #1579#1575#1576#1578'2'
      Size = 1000
    end
    object qrySampleExellثابت3: TStringField
      FieldName = #1579#1575#1576#1578'3'
      Size = 1000
    end
    object qrySampleExellشرح: TStringField
      FieldName = #1588#1585#1581
      Size = 1000
    end
    object qrySampleExellجمعنهایی: TStringField
      FieldName = #1580#1605#1593' '#1606#1607#1575#1740#1740' '
      Size = 1000
    end
  end
  object qryMeliExell: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = qryListAfterOpen
    OnCalcFields = qryListCalcFields
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     TOP (0)  ID AS '#1605#1576#1604#1594',  FitfulNote AS ['#1606#1575#1605' '#1608' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583 +
        #1711#1610']'
      ',  FitfulNote AS ['#1588#1576#1575'] ,  FitfulNote AS ['#1578#1608#1590#1610#1581#1575#1578']'
      'FROM dbo.Fitful'
      '')
    Left = 208
    Top = 393
    object qryMeliExellمبلغ: TLargeintField
      FieldName = #1605#1576#1604#1594
    end
    object qryMeliExellنامونامخانوادگي: TStringField
      FieldName = #1606#1575#1605' '#1608' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
      Size = 1000
    end
    object qryMeliExellشبا: TStringField
      FieldName = #1588#1576#1575
      Size = 1000
    end
    object qryMeliExellتوضيحات: TStringField
      FieldName = #1578#1608#1590#1610#1581#1575#1578
      Size = 1000
    end
  end
  object popAllBank: TPopupMenu
    Left = 410
    Top = 496
    object AllBank2: TMenuItem
      Caption = 'All Bank Tag'
      Visible = False
      OnClick = AllBank2Click
    end
    object mnuAllPanel: TMenuItem
      Caption = #1601#1593#1575#1604' '#1705#1585#1583#1606' '#1575#1591#1604#1575#1593#1575#1578' '#1578#1705#1605#1740#1604#1740
      OnClick = mnuAllPanelClick
    end
    object N17: TMenuItem
      Caption = '-'
    end
    object AllBank1: TMenuItem
      Tag = 1
      Caption = #1605#1604#1578'('#1606#1608#1593' '#1581#1587#1575#1576' '#1607#1605' '#1605#1607#1605' '#1575#1587#1578')'
      OnClick = AllBank2Click
    end
    object Bank33name1: TMenuItem
      Tag = 2
      Caption = #1578#1580#1575#1585#1578
      OnClick = AllBank2Click
    end
    object Bank3name1: TMenuItem
      Tag = 3
      Caption = #1605#1604#1740
      OnClick = AllBank2Click
    end
    object Bank3name2: TMenuItem
      Tag = 4
      Caption = #1589#1575#1583#1585#1575#1578
      OnClick = AllBank2Click
    end
    object N1: TMenuItem
      Tag = 5
      Caption = #1575#1606#1589#1575#1585'    '#1662#1575#1587#1575#1585#1711#1575#1583'  '#1587#1575#1605#1575#1606' '#1608' '#1587#1610#1606#1575
      OnClick = AllBank2Click
    end
    object N2: TMenuItem
      Tag = 6
      Caption = #1705#1588#1575#1608#1585#1586#1740
      OnClick = AllBank2Click
    end
    object N21: TMenuItem
      Tag = 7
      Caption = #1705#1588#1575#1608#1585#1586#1740' 2'
      OnClick = AllBank2Click
    end
    object N3: TMenuItem
      Tag = 8
      Caption = #1705#1588#1575#1608#1585#1586#1740' '#1605#1607#1585' '#1711#1587#1578#1585'('#1581#1584#1601' '#1585#1602#1605' '#1570#1582#1585' '#1588#1605#1575#1585#1607' '#1581#1587#1575#1576')'
      OnClick = AllBank2Click
    end
    object N4: TMenuItem
      Tag = 9
      Caption = #1587#1662#1607
      OnClick = AllBank2Click
    end
    object N5: TMenuItem
      Tag = 10
      Caption = #1588#1607#1585
      OnClick = AllBank2Click
    end
    object N6: TMenuItem
      Tag = 11
      Caption = #1662#1575#1585#1587#1740#1575#1606
      OnClick = AllBank2Click
    end
    object N7: TMenuItem
      Tag = 12
      Caption = #1585#1601#1575#1607
      OnClick = AllBank2Click
    end
    object N8: TMenuItem
      Tag = 13
      Caption = #1662#1575#1587#1575#1585#1711#1575#1583
      OnClick = AllBank2Click
    end
    object N22: TMenuItem
      Tag = 14
      Caption = #1588#1607#1585' 2'
      OnClick = AllBank2Click
    end
    object N23: TMenuItem
      Tag = 15
      Caption = #1585#1601#1575#1607' 2'
      OnClick = AllBank2Click
    end
    object N9: TMenuItem
      Tag = 16
      Caption = #1585#1601#1575#1607' '#1607#1605#1585#1575#1607' '#1581#1587#1575#1576
      OnClick = AllBank2Click
    end
    object N10: TMenuItem
      Tag = 17
      Caption = #1662#1587#1578' '#1576#1575#1606#1705
      OnClick = AllBank2Click
    end
    object N27: TMenuItem
      Tag = 18
      Caption = #1576#1575#1606#1705' '#1605#1604#1740' '
      OnClick = AllBank2Click
    end
    object N26: TMenuItem
      Tag = 19
      Caption = #1605#1608#1587#1587#1607' '#1605#1575#1604#1610' '#1608' '#1575#1593#1578#1576#1575#1585#1610' '#1587#1610#1606#1575' '
      OnClick = AllBank2Click
    end
    object N25: TMenuItem
      Tag = 20
      Caption = ' '#1576#1575#1606#1705' '#1662#1575#1587#1575#1585#1711#1575#1583' '
      OnClick = AllBank2Click
    end
    object N24: TMenuItem
      Tag = 21
      Caption = #1575#1606#1589#1575#1585
      OnClick = AllBank2Click
    end
    object N11: TMenuItem
      Tag = 22
      Caption = #1587#1575#1605#1575#1606' /'#1605#1607#1585
      OnClick = AllBank2Click
    end
    object N12: TMenuItem
      Tag = 23
      Caption = #1662#1575#1587#1575#1585#1711#1575#1583'/'#1585#1587#1575#1604#1578
      OnClick = AllBank2Click
    end
    object N13: TMenuItem
      Tag = 24
      Caption = #1605#1604#1578
      OnClick = AllBank2Click
    end
    object N251: TMenuItem
      Tag = 25
      Caption = #1605#1604#1578'('#1581#1602#1608#1602' '#1605#1575#1607' ...)'
      OnClick = AllBank2Click
    end
    object N14: TMenuItem
      Tag = 26
      Caption = #1587#1575#1605#1575#1606'/'#1605#1607#1585' '#1575#1740#1585#1575#1606
      OnClick = AllBank2Click
    end
    object N15: TMenuItem
      Tag = 27
      Caption = 'Excel '#1606#1605#1608#1606#1607
      OnClick = AllBank2Click
    end
    object Excel1: TMenuItem
      Tag = 28
      Caption = #1605#1604#1740' Excel'
      OnClick = AllBank2Click
    end
    object N16: TMenuItem
      Tag = 29
      Caption = #1705#1588#1575#1608#1585#1586#1740' '#1605#1607#1585' '#1711#1587#1578#1585
      OnClick = AllBank2Click
    end
    object N18: TMenuItem
      Tag = 30
      Caption = #1576#1575#1606#1705' '#1605#1604#1578' '#1580#1583#1740#1583
      OnClick = AllBank2Click
    end
    object N19: TMenuItem
      Tag = 31
      Caption = #1575#1705#1587#1604' '#1576#1575#1606#1705' '#1578#1593#1575#1608#1606
      OnClick = AllBank2Click
    end
    object N171: TMenuItem
      Tag = 32
      Caption = #1576#1575#1606#1705' '#1605#1604#1578' '#1576#1583#1608#1606' 17 '#1589#1601#1585
      OnClick = AllBank2Click
    end
    object N20: TMenuItem
      Tag = 33
      Caption = #1576#1575#1606#1705' '#1587#1662#1607' '#1580#1583#1740#1583' '#1576#1575' '#1580#1583#1575' '#1705#1606#1606#1583#1607' $'
      OnClick = AllBank2Click
    end
  end
  object qryT_Taavon: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = qryListAfterOpen
    OnCalcFields = qryListCalcFields
    Parameters = <>
    SQL.Strings = (
      
        'SELECT        TOP (0) FitfulNote AS BodyColumn1, FitfulNote AS B' +
        'odyColumn2, FitfulIDc AS BodyColumn3, FitfulNote AS BodyColumn4,' +
        ' FitfulNote AS BodyColumn5, FitfulNote AS BodyColumn6, FitfulNot' +
        'e AS BodyColumn7, '
      
        '                         FitfulNote AS BodyColumn8, FitfulNote A' +
        'S Radif'
      'FROM dbo.Fitful')
    Left = 144
    Top = 505
    object qryT_TaavonBodyColumn1: TStringField
      FieldName = 'BodyColumn1'
      Size = 1000
    end
    object qryT_TaavonBodyColumn2: TStringField
      FieldName = 'BodyColumn2'
      Size = 1000
    end
    object qryT_TaavonBodyColumn3: TBCDField
      FieldName = 'BodyColumn3'
      Precision = 19
    end
    object qryT_TaavonBodyColumn4: TStringField
      FieldName = 'BodyColumn4'
      Size = 1000
    end
    object qryT_TaavonBodyColumn5: TStringField
      FieldName = 'BodyColumn5'
      Size = 1000
    end
    object qryT_TaavonBodyColumn6: TStringField
      FieldName = 'BodyColumn6'
      Size = 1000
    end
    object qryT_TaavonBodyColumn7: TStringField
      FieldName = 'BodyColumn7'
      Size = 1000
    end
    object qryT_TaavonBodyColumn8: TStringField
      FieldName = 'BodyColumn8'
      Size = 1000
    end
    object qryT_TaavonRadif: TStringField
      FieldName = 'Radif'
      Size = 1000
    end
  end
end

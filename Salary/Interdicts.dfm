inherited InterdictsF: TInterdictsF
  Left = 457
  Top = 193
  Caption = #1581#1603#1605' '#1603#1575#1585#1711#1586#1610#1606#1610' '
  ClientHeight = 618
  ClientWidth = 1118
  Position = poDesigned
  OnResize = FormResize
  ExplicitLeft = -235
  ExplicitWidth = 1126
  ExplicitHeight = 649
  PixelsPerInch = 96
  TextHeight = 13
  object mmoREST: TMemo [0]
    Left = 110
    Top = 341
    Width = 393
    Height = 182
    Align = alCustom
    Color = clInactiveCaption
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
    Visible = False
  end
  inherited PnlUnderButton: TPanel
    Top = 577
    Width = 1118
    ExplicitTop = 577
    ExplicitWidth = 1118
    object okPanel: TPanel [0]
      Left = 655
      Top = 1
      Width = 231
      Height = 39
      Align = alRight
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 8
      object BitBtn7: TBitBtn
        AlignWithMargins = True
        Left = 1
        Top = 6
        Width = 75
        Height = 27
        Hint = ' '
        Margins.Left = 1
        Margins.Top = 6
        Margins.Right = 1
        Margins.Bottom = 6
        Align = alRight
        Caption = #1582#1608#1575#1606#1583#1606' Excel'
        TabOrder = 2
        OnClick = BitBtn7Click
      end
      object BitBtn8: TBitBtn
        AlignWithMargins = True
        Left = 155
        Top = 6
        Width = 75
        Height = 27
        Margins.Left = 1
        Margins.Top = 6
        Margins.Right = 1
        Margins.Bottom = 6
        Action = DataSetPost1
        Align = alRight
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
        TabOrder = 0
      end
      object BitBtn18: TBitBtn
        AlignWithMargins = True
        Left = 78
        Top = 6
        Width = 75
        Height = 27
        Margins.Left = 1
        Margins.Top = 6
        Margins.Right = 1
        Margins.Bottom = 6
        Action = DataSetCancel1
        Align = alRight
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
        TabOrder = 1
      end
    end
    object BitBtn9: TBitBtn [1]
      AlignWithMargins = True
      Left = 459
      Top = 7
      Width = 103
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actInterdicts4HistoryF
      Align = alLeft
      Caption = #1587#1608#1575#1576#1602#8207#1575#1581#1705#1575#1605#8207#1705#1575#1585#1711#1586#1740#1606#1740
      TabOrder = 1
    end
    object DBNavigator1: TDBNavigator [2]
      AlignWithMargins = True
      Left = 566
      Top = 7
      Width = 80
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      DataSource = SrcInterdicts
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alClient
      Flat = True
      Hints.Strings = (
        #1575#1608#1604#1610#1606
        #1602#1576#1604#1610
        #1576#1593#1583#1610
        #1570#1582#1585#1610#1606
        'Insert record'
        'Delete record'
        'Edit record'
        'Post edit'
        'Cancel edit'
        'Refresh data')
      TabOrder = 7
    end
    inherited BtnReject: TBitBtn
      Left = 2
      Width = 70
      Margins.Left = 1
      Margins.Right = 1
      TabOrder = 6
      ExplicitLeft = 2
      ExplicitWidth = 70
    end
    object newPanel: TPanel
      Left = 886
      Top = 1
      Width = 231
      Height = 39
      Align = alRight
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 0
      object BitBtn3: TBitBtn
        AlignWithMargins = True
        Left = 155
        Top = 6
        Width = 75
        Height = 27
        Margins.Left = 1
        Margins.Top = 6
        Margins.Right = 1
        Margins.Bottom = 6
        Action = DataSetInsert1
        Align = alRight
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        AlignWithMargins = True
        Left = 78
        Top = 6
        Width = 75
        Height = 27
        Margins.Left = 1
        Margins.Top = 6
        Margins.Right = 1
        Margins.Bottom = 6
        Action = DataSetEdit1
        Align = alRight
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        AlignWithMargins = True
        Left = 1
        Top = 6
        Width = 75
        Height = 27
        Margins.Left = 1
        Margins.Top = 6
        Margins.Right = 1
        Margins.Bottom = 6
        Action = DataSetDelete1_
        Align = alRight
        Caption = #1581#1584#1601
        TabOrder = 2
      end
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 74
      Top = 7
      Width = 75
      Height = 27
      Hint = ' '
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Align = alLeft
      Caption = #1587#1575#1610#1585'...'
      TabOrder = 5
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 151
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
      TabOrder = 4
    end
    object BtnPrint: TBitBtn
      AlignWithMargins = True
      Left = 305
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actEmail
      Align = alLeft
      Caption = 'Email'
      TabOrder = 3
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 579
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Align = alRight
      Caption = #1603#1662#1610' '#1581#1603#1605'...'
      TabOrder = 2
      OnClick = BitBtn6Click
    end
    object BitBtn19: TBitBtn
      AlignWithMargins = True
      Left = 382
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Align = alLeft
      Caption = #1605#1593#1585#1601#1610' '#1662#1585#1587#1606#1604
      TabOrder = 9
      OnClick = BitBtn9Click
    end
    object BitBtn20: TBitBtn
      AlignWithMargins = True
      Left = 228
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actPrint
      Align = alLeft
      Caption = #1670#1575#1662'(F7)'#8207
      TabOrder = 10
    end
  end
  inherited Panel2: TPanel
    Width = 1118
    ExplicitWidth = 1118
    inherited ImgTemplate: TImage
      Left = 1080
      ExplicitLeft = 822
    end
    inherited lblCaption: TLabel
      Left = 1010
      Hint = '45'
      ExplicitLeft = 1010
    end
    inherited lblBaseDate: TLabel
      Left = 602
      Top = 17
      ExplicitLeft = 602
      ExplicitTop = 17
    end
    object sbtnInterdictNo: TSpeedButton
      Left = 12
      Top = 2
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = sbtnInterdictNoClick
    end
    object Label6: TLabel
      Left = 103
      Top = 7
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = #1588#1605#1575#1585#1607
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 102
      Top = 32
      Width = 72
      Height = 13
      Alignment = taRightJustify
      Caption = #1578#1575#1585#1610#1582' '#1589#1583#1608#1585' '#1581#1603#1605
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblEmployTypeID: TLabel
      Left = 327
      Top = 7
      Width = 84
      Height = 13
      Caption = #1606#1608#1593' '#1581#1603#1605'/'#1575#1587#1578#1582#1583#1575#1605
    end
    object Label24: TLabel
      Left = 327
      Top = 31
      Width = 74
      Height = 13
      Alignment = taRightJustify
      Caption = #1608#1590#1593#1610#1578' '#1575#1591#1604#1575#1593#1575#1578
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit8: TDBEdit
      Left = 35
      Top = 3
      Width = 64
      Height = 21
      DataField = 'InterdictNo'
      DataSource = SrcInterdicts
      TabOrder = 1
      OnKeyDown = DBEdit8KeyDown
    end
    object edtInterdictDate: TDBEdit
      Left = 35
      Top = 28
      Width = 64
      Height = 21
      DataField = 'InterdictDate'
      DataSource = SrcInterdicts
      TabOrder = 2
    end
    object ComboEmployTypeID: TDBComboBox
      Left = 179
      Top = 3
      Width = 145
      Height = 21
      DataField = 'EmployTypeID'
      DataSource = SrcInterdicts
      TabOrder = 0
      OnChange = ComboEmployTypeIDChange
    end
    object edtState: TDBEdit
      Left = 179
      Top = 28
      Width = 145
      Height = 19
      TabStop = False
      Color = clBtnFace
      Ctl3D = False
      DataField = 'State'
      DataSource = SrcInterdicts
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      OnKeyPress = edtStateKeyPress
    end
    object EdtInterdicType: TDBEdit
      Left = 179
      Top = 28
      Width = 72
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clBtnFace
      Ctl3D = False
      DataField = 'InterdicTypeTxt'
      DataSource = SrcInterdicts
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
  end
  inherited Panel3: TPanel
    Width = 1118
    Height = 524
    ExplicitWidth = 1118
    ExplicitHeight = 524
    object Panel1: TPanel
      Left = 2
      Top = 33
      Width = 1114
      Height = 222
      Align = alTop
      TabOrder = 1
      DesignSize = (
        1114
        222)
      object Label25: TLabel
        Left = 703
        Top = 10
        Width = 58
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1588'.'#1575#1587#1578#1582#1583#1575#1605
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 507
      end
      object Label4: TLabel
        Left = 1036
        Top = 10
        Width = 71
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 782
      end
      object SBnPersonelNo: TSpeedButton
        Left = 783
        Top = 5
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        OnClick = SBnPersonelNoClick
        ExplicitLeft = 587
      end
      object Label1: TLabel
        Left = 1036
        Top = 34
        Width = 13
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1606#1575#1605
        ExplicitLeft = 782
      end
      object Label3: TLabel
        Left = 703
        Top = 58
        Width = 32
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1606#1575#1605'  '#1662#1583#1585
        ExplicitLeft = 507
      end
      object Label10: TLabel
        Left = 503
        Top = 10
        Width = 59
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1608#1590#1593#1610#1578' '#1578#1575#1607#1604
        ExplicitLeft = 307
      end
      object Label11: TLabel
        Left = 503
        Top = 34
        Width = 46
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1593#1583#1575#1583' '#1575#1608#1604#1575#1583
        ExplicitLeft = 307
      end
      object Label13: TLabel
        Left = 1036
        Top = 59
        Width = 55
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1606#1575#1605#8207#1582#1575#1606#1608#1575#1583#1711#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 782
      end
      object Label19: TLabel
        Left = 703
        Top = 34
        Width = 65
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1605#1583#1585#1603' '#1578#1581#1589#1610#1604#1610
        ExplicitLeft = 507
      end
      object Label32: TLabel
        Left = 1036
        Top = 202
        Width = 46
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1606#1608#1593' '#1605#1575#1604#1610#1575#1578
        ExplicitLeft = 782
      end
      object Label29: TLabel
        Left = 1036
        Top = 130
        Width = 38
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1606#1608#1593' '#1576#1610#1605#1607
        ExplicitLeft = 782
      end
      object Label5: TLabel
        Left = 1036
        Top = 82
        Width = 70
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1610#1582#8207#1575#1580#1585#1575#1610#8207#1581#1603#1605
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 782
      end
      object Label9: TLabel
        Left = 1036
        Top = 106
        Width = 70
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1610#1582#8207#1662#1575#1610#1575#1606#8207#1602#1585#1575#1585#1583#1575#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 782
      end
      object Label12: TLabel
        Left = 703
        Top = 178
        Width = 53
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1605#1581#1604' '#1582#1583#1605#1578
        ExplicitLeft = 507
      end
      object Label22: TLabel
        Left = 503
        Top = 58
        Width = 35
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = ' '#1587#1606#1608#1575#1578
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 307
      end
      object Label15: TLabel
        Left = 175
        Top = 202
        Width = 66
        Height = 13
        Caption = #1662#1587#1578#8207#1587#1575#1586#1605#1575#1606#1610
      end
      object Label16: TLabel
        Left = 175
        Top = 178
        Width = 62
        Height = 13
        Caption = #1608#1575#1581#1583#1587#1575#1586#1605#1575#1606#1610
      end
      object Label23: TLabel
        Left = 499
        Top = 81
        Width = 65
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1610#1582' '#1575#1587#1578#1582#1583#1575#1605
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 404
      end
      object SpeedButton2: TSpeedButton
        Left = 4
        Top = 5
        Width = 23
        Height = 22
        Hint = 'FormType = 40'
        Caption = '...'
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton2Click
      end
      object Label2: TLabel
        Left = 175
        Top = 10
        Width = 80
        Height = 13
        Alignment = taRightJustify
        Caption = #1603#1583#1662#1585#1608#1688#1607'/'#1578#1601#1589#1740#1604#1740'2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 703
        Top = 106
        Width = 57
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1606#1585#1582#8207#1575#1587#1578#1575#1606#1583#1575#1585#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 507
      end
      object Label18: TLabel
        Left = 703
        Top = 82
        Width = 35
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1603#1583' '#1605#1604#1610
        ExplicitLeft = 507
      end
      object Label26: TLabel
        Left = 175
        Top = 106
        Width = 44
        Height = 13
        Alignment = taRightJustify
        Caption = #1711#1585#1608#1607' '#1581#1603#1605
      end
      object LblSubInterdictID: TLabel
        Left = 703
        Top = 202
        Width = 39
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1606#1608#1593' '#1581#1603#1605
        ExplicitLeft = 507
      end
      object Label28: TLabel
        Left = 1036
        Top = 153
        Width = 45
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1606#1608#1593' '#1603#1575#1585#1603#1585#1583
        ExplicitLeft = 782
      end
      object Label30: TLabel
        Left = 1036
        Top = 178
        Width = 49
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1711#1585#1608#1607' '#1607#1586#1610#1606#1607
        ExplicitLeft = 782
      end
      object Label31: TLabel
        Left = 175
        Top = 153
        Width = 39
        Height = 13
        Alignment = taRightJustify
        Caption = #1662#1575#1610#1607' '#1581#1603#1605
      end
      object Label27: TLabel
        Left = 503
        Top = 105
        Width = 41
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1610#1582' '#1585#1578#1576#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 307
      end
      object lbl1: TLabel
        Left = 703
        Top = 130
        Width = 75
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1610#1582' '#1588#1585#1608#1593' '#1576#1610#1605#1607
        FocusControl = edtInsuranceStartDate
        ExplicitLeft = 507
      end
      object lbl2: TLabel
        Left = 503
        Top = 129
        Width = 42
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1662#1575#1610#1575#1606' '#1576#1610#1605#1607
        FocusControl = edtInsuranceEndDate
        ExplicitLeft = 307
      end
      object Label8: TLabel
        Left = 175
        Top = 59
        Width = 70
        Height = 13
        Caption = #1705#1583#1608#1593#1606#1608#1575#1606' '#1588#1594#1604
      end
      object Label33: TLabel
        Left = 175
        Top = 130
        Width = 17
        Height = 13
        Alignment = taRightJustify
        Caption = #1585#1578#1576#1607
      end
      object SpeedButton3: TSpeedButton
        Left = 4
        Top = 54
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SpeedButton3Click
      end
      object Label17: TLabel
        Left = 499
        Top = 153
        Width = 67
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1593#1583#1575#1583' '#1585#1608#1586' '#1605#1593#1575#1601
        ExplicitLeft = 404
      end
      object Label34: TLabel
        Left = 703
        Top = 154
        Width = 68
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1593#1583#1575#1583' '#1605#1575#1607' '#1605#1593#1575#1601
        ExplicitLeft = 507
      end
      object Label37: TLabel
        Left = 604
        Top = 106
        Width = 31
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1587#1575#1593#1578
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 509
      end
      object Label39: TLabel
        Left = 490
        Top = 178
        Width = 75
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1570#1583#1585#1587#8207#1605#1581#1604#8207#1582#1583#1605#1578
      end
      object DBEdit20: TDBEdit
        Left = 567
        Top = 6
        Width = 130
        Height = 21
        TabStop = False
        Anchors = [akTop, akRight]
        Color = clBtnFace
        Ctl3D = True
        DataField = 'EmployID'
        DataSource = SrcPeronalInfo2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 24
      end
      object DBEdit6: TDBEdit
        Left = 809
        Top = 6
        Width = 221
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdRightToLeft
        DataField = 'PersonelNo'
        DataSource = SrcInterdicts
        ParentBiDiMode = False
        TabOrder = 0
        OnExit = DBEdit6Exit
        OnKeyDown = DBEdit6KeyDown
      end
      object DBEdit2: TDBEdit
        Left = 783
        Top = 30
        Width = 247
        Height = 21
        TabStop = False
        Anchors = [akTop, akRight]
        Color = clBtnFace
        Ctl3D = True
        DataField = '_PrsnName'
        DataSource = SrcInterdicts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 25
      end
      object DBEdit4: TDBEdit
        Left = 567
        Top = 55
        Width = 130
        Height = 21
        TabStop = False
        Anchors = [akTop, akRight]
        Color = clBtnFace
        Ctl3D = True
        DataField = 'fatherName_L1'
        DataSource = SrcPeronalInfo2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 26
      end
      object DBEdit7: TDBEdit
        Left = 783
        Top = 54
        Width = 247
        Height = 21
        TabStop = False
        Anchors = [akTop, akRight]
        Color = clBtnFace
        Ctl3D = True
        DataField = '_PrsnlastName'
        DataSource = SrcInterdicts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 27
      end
      object DBEdit12: TDBEdit
        Left = 567
        Top = 30
        Width = 130
        Height = 21
        TabStop = False
        Anchors = [akTop, akRight]
        Color = clBtnFace
        Ctl3D = True
        DataField = 'licence_L1'
        DataSource = SrcPeronalInfo2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 28
      end
      object DBEdit13: TDBEdit
        Left = 367
        Top = 6
        Width = 130
        Height = 21
        TabStop = False
        Anchors = [akTop, akRight]
        Color = clBtnFace
        Ctl3D = True
        DataField = 'marriage_L1'
        DataSource = SrcPeronalInfo2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 29
      end
      object DBEdit14: TDBEdit
        Left = 367
        Top = 30
        Width = 130
        Height = 21
        TabStop = False
        Anchors = [akTop, akRight]
        Color = clBtnFace
        Ctl3D = True
        DataField = 'childnumber_L1'
        DataSource = SrcPeronalInfo2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 30
      end
      object ComboTaxCalculationType: TDBComboBox
        Tag = 21
        Left = 783
        Top = 197
        Width = 247
        Height = 21
        Hint = #1605#1576#1606#1575#1610' '#1605#1581#1575#1587#1576#1607' '#1605#1575#1604#1610#1575#1578
        Anchors = [akTop, akRight]
        DataField = 'TaxCalculationType'
        DataSource = SrcInterdicts
        ParentShowHint = False
        ShowHint = True
        TabOrder = 21
        OnKeyPress = ComboSubFunctionIDKeyPress
      end
      object ComboinsuranceID: TDBComboBox
        Left = 783
        Top = 125
        Width = 247
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'insuranceID'
        DataSource = SrcInterdicts
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
      end
      object EdtStartDate: TDBEdit
        Left = 783
        Top = 78
        Width = 247
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'InterdicStartDate'
        DataSource = SrcInterdicts
        TabOrder = 3
      end
      object edtInterdicEndDate: TDBEdit
        Left = 783
        Top = 102
        Width = 247
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'InterdicEndDate'
        DataSource = SrcInterdicts
        TabOrder = 4
        OnDblClick = edtInterdicEndDateDblClick
      end
      object ComboJobCity: TDBComboBox
        Tag = 1
        Left = 572
        Top = 174
        Width = 125
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'jobCity'
        DataSource = SrcInterdicts
        ParentShowHint = False
        ShowHint = True
        TabOrder = 18
        OnKeyPress = ComboSubFunctionIDKeyPress
      end
      object DBEdit17: TDBEdit
        Left = 367
        Top = 55
        Width = 130
        Height = 21
        TabStop = False
        Anchors = [akTop, akRight]
        Color = clBtnFace
        Ctl3D = True
        DataField = 'TotalYearsWork'
        DataSource = SrcInterdicts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 31
      end
      object ComboJobCode: TDBComboBox
        Tag = 13
        Left = 4
        Top = 198
        Width = 169
        Height = 21
        DataField = 'jobCode'
        DataSource = SrcInterdicts
        ParentShowHint = False
        ShowHint = True
        TabOrder = 23
        OnKeyPress = ComboSubFunctionIDKeyPress
      end
      object ComboOfficeCode: TDBComboBox
        Tag = 12
        Left = 4
        Top = 174
        Width = 169
        Height = 21
        DataField = 'OfficeCode'
        DataSource = SrcInterdicts
        ParentShowHint = False
        ShowHint = True
        TabOrder = 20
        OnChange = ComboOfficeCodeChange
        OnKeyPress = ComboSubFunctionIDKeyPress
      end
      object DBEdit18: TDBEdit
        Left = 367
        Top = 79
        Width = 130
        Height = 21
        TabStop = False
        Anchors = [akTop, akRight]
        Color = clBtnFace
        Ctl3D = True
        DataField = 'employDate'
        DataSource = SrcPeronalInfo2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 32
      end
      object edtProjectID: TDBEdit
        Left = 29
        Top = 6
        Width = 144
        Height = 21
        DataField = 'ProjectID'
        DataSource = SrcInterdicts
        TabOrder = 1
        OnExit = edtProjectIDExit
      end
      object DBEdit9: TDBEdit
        Left = 4
        Top = 30
        Width = 169
        Height = 21
        TabStop = False
        Color = clBtnFace
        Ctl3D = True
        DataField = '_ProjectName_L1'
        DataSource = SrcInterdicts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 33
      end
      object edtStandardEmployAmount: TDBEdit
        Left = 638
        Top = 102
        Width = 59
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'StandardEmployAmount'
        DataSource = SrcInterdicts
        TabOrder = 5
      end
      object DBEdit5: TDBEdit
        Left = 567
        Top = 79
        Width = 130
        Height = 21
        TabStop = False
        Anchors = [akTop, akRight]
        Color = clBtnFace
        Ctl3D = True
        DataField = 'NationalID'
        DataSource = SrcPeronalInfo2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 34
      end
      object ComboGroupID: TDBComboBox
        Tag = 68
        Left = 4
        Top = 102
        Width = 169
        Height = 21
        DataField = 'GroupID'
        DataSource = SrcInterdicts
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnKeyPress = ComboSubFunctionIDKeyPress
      end
      object ComboSubInterdictID: TDBComboBox
        Tag = 77
        Left = 367
        Top = 198
        Width = 330
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'SubInterdictID'
        DataSource = SrcInterdicts
        ParentShowHint = False
        ShowHint = True
        TabOrder = 22
        OnKeyPress = ComboSubFunctionIDKeyPress
      end
      object ComboSubFunctionID: TDBComboBox
        Tag = 70
        Left = 783
        Top = 149
        Width = 247
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'SubFunctionID'
        DataSource = SrcInterdicts
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
        OnKeyPress = ComboSubFunctionIDKeyPress
      end
      object ComboGrpExpense: TDBComboBox
        Tag = 73
        Left = 783
        Top = 173
        Width = 247
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'GrpExpense'
        DataSource = SrcInterdicts
        ParentShowHint = False
        ShowHint = True
        TabOrder = 17
        OnKeyPress = ComboSubFunctionIDKeyPress
      end
      object ComboPayehNo: TDBComboBox
        Tag = 78
        Left = 4
        Top = 149
        Width = 169
        Height = 21
        DataField = 'PayehNo'
        DataSource = SrcInterdicts
        ParentShowHint = False
        ShowHint = True
        TabOrder = 16
        OnKeyPress = ComboSubFunctionIDKeyPress
      end
      object DBEdit24: TDBEdit
        Left = 367
        Top = 102
        Width = 130
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'GradeDate'
        DataSource = SrcInterdicts
        TabOrder = 7
      end
      object edtInsuranceStartDate: TDBEdit
        Left = 567
        Top = 126
        Width = 130
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'InsuranceStartDate'
        DataSource = SrcInterdicts
        TabOrder = 10
      end
      object edtInsuranceEndDate: TDBEdit
        Left = 367
        Top = 126
        Width = 130
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'InsuranceEndDate'
        DataSource = SrcInterdicts
        TabOrder = 11
      end
      object ComboGrade: TDBComboBox
        Tag = 27
        Left = 4
        Top = 126
        Width = 169
        Height = 21
        DataField = 'grade'
        DataSource = SrcInterdicts
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
        OnChange = ComboOfficeCodeChange
        OnKeyPress = ComboSubFunctionIDKeyPress
      end
      object edtjobsGroup: TDBEdit
        Left = 29
        Top = 55
        Width = 144
        Height = 21
        DataField = 'jobsGroup'
        DataSource = SrcInterdicts
        TabOrder = 2
        OnExit = edtProjectIDExit
      end
      object edt_jobsGroupName: TDBEdit
        Left = 4
        Top = 78
        Width = 169
        Height = 21
        TabStop = False
        Color = clBtnFace
        Ctl3D = True
        DataField = '_jobsGroupName'
        DataSource = SrcInterdicts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 35
      end
      object edtTaxDays: TDBEdit
        Left = 367
        Top = 149
        Width = 130
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'TaxDays'
        DataSource = SrcInterdicts
        TabOrder = 15
        OnExit = edtProjectIDExit
      end
      object edtTaxMounth: TDBEdit
        Left = 567
        Top = 149
        Width = 130
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'TaxMounth'
        DataSource = SrcInterdicts
        TabOrder = 14
        OnExit = edtProjectIDExit
      end
      object edtStandardClock: TDBEdit
        Left = 567
        Top = 102
        Width = 34
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'StandardClock'
        DataSource = SrcInterdicts
        TabOrder = 6
      end
      object edtjobCityAddress: TDBEdit
        Left = 367
        Top = 174
        Width = 121
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'jobCityAddress'
        DataSource = SrcInterdicts
        TabOrder = 19
        OnExit = edtProjectIDExit
      end
    end
    object Panel8: TPanel
      Left = 2
      Top = 285
      Width = 1114
      Height = 237
      Align = alClient
      BevelInner = bvLowered
      BevelWidth = 2
      BorderStyle = bsSingle
      TabOrder = 2
      object GroupBox1: TGroupBox
        Left = 598
        Top = 4
        Width = 508
        Height = 206
        Align = alClient
        Caption = ' '#1588#1585#1581' '#1581#1603#1605' '
        TabOrder = 0
        object dbmmoKargozinyNote_L1: TDBMemo
          Tag = 111
          Left = 2
          Top = 35
          Width = 504
          Height = 99
          Align = alClient
          Color = clCream
          DataField = 'KargozinyNote_L1'
          DataSource = SrcInterdicts
          ScrollBars = ssVertical
          TabOrder = 2
        end
        object Panel11: TPanel
          Left = 2
          Top = 134
          Width = 504
          Height = 35
          Align = alBottom
          TabOrder = 1
          DesignSize = (
            504
            35)
          object BtnAccInterdicts: TBitBtn
            Left = 5
            Top = 6
            Width = 91
            Height = 25
            Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1583#1575#1585#1610
            TabOrder = 1
            OnClick = BtnAccInterdictsClick
          end
          object BitBtn10: TBitBtn
            Left = 411
            Top = 6
            Width = 73
            Height = 25
            Action = ActComment
            Anchors = [akTop, akRight]
            Caption = #1605#1608#1590#1608#1593' '#1602#1585#1575#1585#1583#1575#1583
            TabOrder = 0
          end
        end
        object BitBtn14: TBitBtn
          Left = 2
          Top = 15
          Width = 504
          Height = 20
          Action = ActRecall
          Align = alTop
          BiDiMode = bdRightToLeft
          Caption = #1601#1585#1575#1582#1608#1575#1606#1610
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00426BF700426BF700FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00426BF7000021C6000021C600426B
            F700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00426BF7000021C600527BEF005273FF000021
            C600426BF700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00426BF7000021C600426BF7001042E700214AEF00527B
            EF000021C600426BF700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00426BF7000018BD00527BEF000821E7000021E7000029EF000021
            E700527BEF000021C600426BF700FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00426BF7000021C600527BEF001031D6000021D6000821E7000021DE000029
            DE001031E700527BEF000021C600426BF700FF00FF00FF00FF00FF00FF00426B
            F7000018BD000829D6000021D6000021D6000021D6000021CE000021D6000021
            D6000021CE000018D6001031D6000018BD00426BF700FF00FF00426BF7000021
            C6000021CE000818D6000021CE000018CE000018CE000018CE000018CE000018
            CE000018CE000018D6000018CE001029D6000021C600426BF7000810BD000021
            C6000021C6000818BD000018C6000018C6000018C6000018C6000018C6000018
            C6000018BD000010C6001018BD000010C6000018C6000818BD00FF00FF00FF00
            FF00FF00FF00FF00FF000010BD000010BD000010BD000010BD000010BD000010
            C6000010C6000010BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF000810BD000008AD000010B5000008B5000010B5000008
            B5000010B5000010B500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF001021BD000010AD000008AD000008AD000008AD000010
            AD000008A5001021BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00424ABD000808A5000008A5000008A50008089C000000
            A50000089C004A4ABD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00424ABD000800A5000808A5000000A5000800A5000008
            A5000008A500424ABD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00424ABD003939B50000009C0000009C003939B5000000
            9C003939B500424ABD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00736BBD000008AD000008AD000008AD000008AD000008
            AD000008AD006B63C600FF00FF00FF00FF00FF00FF00FF00FF00}
          ParentBiDiMode = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object Panel7: TPanel
          Left = 2
          Top = 169
          Width = 504
          Height = 35
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 3
          object Label36: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 10
            Width = 24
            Height = 22
            Margins.Top = 10
            Align = alLeft
            Caption = 'Email'
            FocusControl = DBEdit16
            ExplicitHeight = 13
          end
          object rdgrpEmail: TRadioGroup
            Left = 128
            Top = 0
            Width = 376
            Height = 35
            Align = alRight
            Caption = #1601#1610#1604#1578#1585' '#1576#1585' '#1581#1587#1576' '#1575#1610#1605#1610#1604' '#1662#1585#1587#1606#1604
            Columns = 3
            ItemIndex = 0
            Items.Strings = (
              #1607#1600#1600#1600#1600#1600#1605#1600#1600#1600#1600#1600#1607' '#1662#1585#1587#1606#1604
              #1662#1585#1587#1606#1604' '#1583#1575#1585#1610' '#1575#1610#1605#1610#1604
              #1662#1585#1587#1606#1604' '#1576#1583#1608#1606' '#1575#1610#1605#1610#1604)
            TabOrder = 0
            OnClick = rdgrpEmailClick
          end
          object DBEdit16: TDBEdit
            AlignWithMargins = True
            Left = 33
            Top = 6
            Width = 92
            Height = 23
            Margins.Top = 6
            Margins.Bottom = 6
            Align = alClient
            BiDiMode = bdLeftToRight
            Color = clMoneyGreen
            Ctl3D = False
            DataField = 'Email'
            DataSource = SrcInterdicts
            ParentBiDiMode = False
            ParentCtl3D = False
            TabOrder = 1
            ExplicitHeight = 19
          end
        end
      end
      object GroupBox2: TGroupBox
        Left = 4
        Top = 4
        Width = 594
        Height = 206
        Align = alLeft
        Caption = ' '#1593#1606#1575#1608#1610#1606' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1610#1575' '
        TabOrder = 1
        object DBGrid1: TDBGrid
          Tag = 111
          Left = 2
          Top = 37
          Width = 590
          Height = 92
          Hint = 
            #1576#1585#1575#1610' '#1575#1606#1578#1602#1575#1604' '#1578#1575#1585#1610#1582' '#1607#1575#1610' '#1587#1591#1585' '#1580#1575#1585#1610' '#1576#1607' '#1587#1591#1585#1607#1575#1610' '#1662#1575#1610#1610#1606' '#1585#1608#1610' '#1583#1603#1605#1607' ... doub' +
            'le click '#1603#1606#1610#1583'.'#8207
          Align = alClient
          Color = clCream
          DataSource = srcItems
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnKeyPress = DBGrid1KeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'SalaryID'
              ReadOnly = True
              Title.Alignment = taCenter
              Width = 37
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_InfoName_L1'
              ReadOnly = True
              Title.Alignment = taCenter
              Width = 101
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_InfoName_L2'
              ReadOnly = True
              Title.Alignment = taCenter
              Width = 54
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Amount'
              Title.Alignment = taCenter
              Width = 82
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'JobScore'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Firstdate'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Enddate'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ItemNote_L1'
              Title.Alignment = taCenter
              Width = 66
              Visible = True
            end>
        end
        object PnlEdit: TPanel
          Left = 2
          Top = 169
          Width = 590
          Height = 35
          Align = alBottom
          TabOrder = 1
          DesignSize = (
            590
            35)
          object BtnAccItems: TBitBtn
            Left = 5
            Top = 5
            Width = 91
            Height = 25
            Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1583#1575#1585#1610
            TabOrder = 5
            OnClick = BtnAccItemsClick
          end
          object BitBtn11: TBitBtn
            Left = 433
            Top = 5
            Width = 75
            Height = 25
            Action = DataSetEdit2
            Anchors = [akTop, akRight]
            Caption = #1608#1610#1585#1575#1610#1588
            TabOrder = 1
          end
          object BitBtn12: TBitBtn
            Left = 511
            Top = 5
            Width = 75
            Height = 25
            Hint = ' '
            Anchors = [akTop, akRight]
            Caption = #1605#1581#1575#1587#1576#1607
            TabOrder = 0
            OnClick = BitBtn12Click
          end
          object BitBtn13: TBitBtn
            Left = 355
            Top = 5
            Width = 75
            Height = 25
            Action = DataSetDelete2
            Anchors = [akTop, akRight]
            Caption = #1581#1584#1601
            TabOrder = 2
          end
          object BitBtn16: TBitBtn
            Left = 277
            Top = 5
            Width = 75
            Height = 25
            Anchors = [akTop, akRight]
            Caption = #1575#1590#1575#1601#1607
            TabOrder = 3
            OnClick = BitBtn16Click
          end
          object BitBtn17: TBitBtn
            Left = 186
            Top = 5
            Width = 89
            Height = 25
            Hint = ' '
            Anchors = [akTop, akRight]
            Caption = #1605#1581#1575#1587#1576#1607#8207#1575#1606#1578#1582#1575#1576#1610
            TabOrder = 4
            OnClick = BitBtn17Click
          end
        end
        object DBGrid2: TDBGrid
          Left = 2
          Top = 129
          Width = 590
          Height = 40
          Align = alBottom
          Color = clCream
          DataSource = srcItemsSum
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Amount1'
              Width = 74
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Amount2'
              Width = 79
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AmountSum'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AmountIn30'
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AmountSumAnd30'
              Width = 79
              Visible = True
            end>
        end
        object pnlHasRetard: TPanel
          Left = 2
          Top = 15
          Width = 590
          Height = 22
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 3
          object btnHasRetard: TSpeedButton
            AlignWithMargins = True
            Left = 564
            Top = 0
            Width = 21
            Height = 22
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alRight
            Caption = '...'
            OnClick = btnHasRetardClick
            ExplicitLeft = 206
            ExplicitTop = -3
            ExplicitHeight = 19
          end
          object dbchkHasRetard: TDBCheckBox
            Left = 0
            Top = 0
            Width = 97
            Height = 22
            Align = alLeft
            Caption = #1570#1610#1575' '#1605#1593#1608#1602#1607' '#1583#1575#1585#1583
            DataField = 'HasRetard'
            DataSource = SrcInterdicts
            TabOrder = 0
            ValueChecked = '1'
            ValueUnchecked = '0'
            OnClick = dbchkHasRetardClick
          end
          object dbchkRetardActive: TDBCheckBox
            Left = 97
            Top = 0
            Width = 219
            Height = 22
            Align = alLeft
            Caption = #1575#1740#1606' '#1581#1705#1605' '#1583#1585' '#1605#1581#1575#1587#1576#1575#1578' '#1605#1593#1608#1602' '#1578#1575#1579#1740#1585' '#1583#1575#1585#1583
            DataField = 'RetardActive'
            DataSource = SrcInterdicts
            TabOrder = 1
            ValueChecked = '1'
            ValueUnchecked = '0'
            OnClick = dbchkHasRetardClick
          end
        end
      end
      object StatusBar1: TStatusBar
        Left = 4
        Top = 210
        Width = 1102
        Height = 19
        BiDiMode = bdRightToLeft
        Panels = <
          item
            Width = 190
          end
          item
            Width = 50
          end
          item
            Width = 50
          end>
        ParentBiDiMode = False
      end
    end
    object pnlCompanyAid: TPanel
      Left = 2
      Top = 2
      Width = 1114
      Height = 31
      Align = alTop
      TabOrder = 0
      object lblAidNo1: TLabel
        AlignWithMargins = True
        Left = 241
        Top = 4
        Width = 71
        Height = 23
        Align = alLeft
        BiDiMode = bdLeftToRight
        Caption = #1588#1605#1575#1585#1607' '#1603#1605#1603#1610' 1'
        ParentBiDiMode = False
        ExplicitHeight = 13
      end
      object LblAidDate1: TLabel
        AlignWithMargins = True
        Left = 103
        Top = 4
        Width = 62
        Height = 23
        Align = alLeft
        BiDiMode = bdLeftToRight
        Caption = #1578#1575#1585#1610#1582' '#1603#1605#1603#1610' 1'
        ParentBiDiMode = False
        ExplicitHeight = 13
      end
      object pnlCompany: TPanel
        Left = 315
        Top = 1
        Width = 798
        Height = 29
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object SpeedButton1: TSpeedButton
          AlignWithMargins = True
          Left = 629
          Top = 3
          Width = 23
          Height = 23
          Align = alRight
          Caption = '...'
          OnClick = SpeedButton1Click
          ExplicitLeft = 574
          ExplicitTop = 2
          ExplicitHeight = 22
        end
        object LblPerson1: TLabel
          AlignWithMargins = True
          Left = 726
          Top = 3
          Width = 69
          Height = 23
          Align = alRight
          Alignment = taRightJustify
          Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1588#1585#1603#1578
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitHeight = 13
        end
        object DBEdit1: TDBEdit
          AlignWithMargins = True
          Left = 658
          Top = 3
          Width = 62
          Height = 23
          Align = alRight
          DataField = 'subcompanyCode'
          DataSource = SrcInterdicts
          TabOrder = 0
          OnKeyDown = DBEdit1KeyDown
          ExplicitHeight = 21
        end
        object DBEdit15: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 620
          Height = 23
          TabStop = False
          Align = alClient
          Color = clBtnFace
          Ctl3D = False
          DataField = '_subcompanyName'
          DataSource = SrcInterdicts
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
          ExplicitHeight = 19
        end
      end
      object EdtAidNo1: TDBEdit
        AlignWithMargins = True
        Left = 171
        Top = 4
        Width = 64
        Height = 23
        Align = alLeft
        DataField = 'AidNo1'
        DataSource = SrcInterdicts
        TabOrder = 1
        ExplicitHeight = 21
      end
      object EdtAidDate1: TDBEdit
        AlignWithMargins = True
        Left = 33
        Top = 4
        Width = 64
        Height = 23
        Align = alLeft
        DataField = 'AidDate1'
        DataSource = SrcInterdicts
        TabOrder = 2
        ExplicitHeight = 21
      end
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 29
        Height = 29
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 3
      end
    end
    object Panel5: TPanel
      Left = 2
      Top = 255
      Width = 1114
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object Label38: TLabel
        AlignWithMargins = True
        Left = 78
        Top = 6
        Width = 82
        Height = 21
        Margins.Top = 6
        Align = alLeft
        Caption = #1578#1575#1585#1740#1582' '#1576#1575#1586#1606#1588#1587#1578#1711#1740
        ExplicitHeight = 13
      end
      object pnlManege: TPanel
        Left = 163
        Top = 0
        Width = 552
        Height = 30
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        Visible = False
        DesignSize = (
          552
          30)
        object Label20: TLabel
          Left = 431
          Top = 7
          Width = 75
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1583#1585#1589#1583' '#1587#1607#1605' '#1605#1583#1610#1585
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 647
        end
        object Label21: TLabel
          Left = 229
          Top = 7
          Width = 99
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1583#1585#1589#1583' '#1587#1607#1605' '#1605#1583#1610#1585#1593#1575#1605#1604
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 445
        end
        object DBEdit3: TDBEdit
          Left = 360
          Top = 3
          Width = 66
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'ManegePercent'
          DataSource = SrcInterdicts
          TabOrder = 0
          OnKeyDown = DBEdit1KeyDown
        end
        object DBEdit11: TDBEdit
          Left = 154
          Top = 3
          Width = 71
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'OfficeManegePercent'
          DataSource = SrcInterdicts
          TabOrder = 1
          OnKeyDown = DBEdit1KeyDown
        end
        object BitBtn15: TBitBtn
          Left = 8
          Top = 1
          Width = 75
          Height = 25
          Caption = #1605#1581#1575#1587#1576#1607
          TabOrder = 2
          OnClick = BitBtn15Click
        end
      end
      object Panel6: TPanel
        Left = 715
        Top = 0
        Width = 399
        Height = 30
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          399
          30)
        object Label35: TLabel
          Left = 326
          Top = 7
          Width = 48
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1606#1608#1593' '#1602#1585#1575#1585#1583#1575#1583
        end
        object ComboTypeOfContract: TDBComboBox
          Tag = 21
          Left = 73
          Top = 4
          Width = 247
          Height = 21
          Hint = #1605#1576#1606#1575#1610' '#1605#1581#1575#1587#1576#1607' '#1605#1575#1604#1610#1575#1578
          Anchors = [akTop, akRight]
          DataField = 'TypeOfContract'
          DataSource = SrcInterdicts
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnKeyPress = ComboSubFunctionIDKeyPress
        end
      end
      object edtRetirementDate: TDBEdit
        AlignWithMargins = True
        Left = 6
        Top = 3
        Width = 66
        Height = 23
        Margins.Left = 6
        Margins.Bottom = 4
        Align = alLeft
        DataField = 'RetirementDate'
        DataSource = SrcInterdicts
        TabOrder = 2
        ExplicitHeight = 21
      end
    end
  end
  inherited ActionList: TActionList
    Left = 102
    Top = 201
    inherited DataSetInsert1: TDataSetInsert
      DataSource = SrcInterdicts
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = SrcInterdicts
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = SrcInterdicts
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = SrcInterdicts
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = SrcInterdicts
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actSendToExcel: TAction
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      OnExecute = actSendToExcelExecute
    end
    object DataSetDelete2: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
      DataSource = srcItems
    end
    object DataSetEdit2: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      Hint = ' '
      ShortCut = 115
      DataSource = srcItems
    end
    object ActRecall: TAction
      Caption = #1601#1585#1575#1582#1608#1575#1606#1610
      Hint = 
        ' '#1576#1585#1575#1610' '#1575#1590#1575#1601#1607' '#1603#1585#1583#1606' '#1588#1585#1581' '#1607#1575' >'#1579#1575#1576#1578#1607#1575' >'#1605#1593#1585#1601#1610' '#1587#1575#1610#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1608' '#1579#1575#1576#1578' ' +
        '>'#1588#1585#1581' '#1607#1575#1610' '#1575#1587#1578#1575#1606#1583#1575#1585#1583' '#1581#1603#1605' '#1603#1575#1585' '#1711#1586#1610#1606#1610
      ImageIndex = 5
      OnExecute = ActRecallExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662'(F7)'#8207
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object ActComment: TAction
      Caption = #1605#1608#1590#1608#1593' '#1602#1585#1575#1585#1583#1575#1583
      OnExecute = ActCommentExecute
    end
    object actNewInterdict: TAction
      Caption = #1603#1662#1610' '#1581#1603#1605
      OnExecute = actNewInterdictExecute
    end
    object actSearchReport: TAction
      Caption = #1580#1587#1578#1580#1608#1610' '#1711#1586#1575#1585#1588#1575#1578
      OnExecute = actSearchReportExecute
    end
    object actSearch: TAction
      Caption = #1580#1587#1578#1580#1608'/'#1601#1610#1604#1578#1585
      OnExecute = actSearchExecute
    end
    object actCopyInterdictPNo: TAction
      Caption = #1603#1662#1610' '#1581#1603#1605' '#1580#1575#1585#1610' '#1576#1607' '#1662#1585#1587#1606#1604'...'
      OnExecute = actCopyInterdictPNoExecute
    end
    object actState: TAction
      Caption = #1578#1594#1610#1610#1585' '#1608#1590#1593#1610#1578
      OnExecute = actStateExecute
    end
    object actStateTo1: TAction
      Caption = #1578#1576#1583#1610#1604' '#1576#1607' '#1606#1607#1575#1610#1610
      OnExecute = actStateTo1Execute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actScan: TAction
      Caption = #1575#1587#1603#1606
      OnExecute = actScanExecute
    end
    object actExcelImportInterdicts: TAction
      Caption = #1583#1585#1740#1575#1601#1578' '#1575#1581#1705#1575#1605' '#1575#1586' Excel'
      OnExecute = actExcelImportInterdictsExecute
    end
    object actInterdicts4HistoryF: TAction
      Caption = #1587#1608#1575#1576#1602#8207#1575#1581#1705#1575#1605#8207#1705#1575#1585#1711#1586#1740#1606#1740
      OnExecute = actInterdicts4HistoryFExecute
    end
    object actEmail: TAction
      Caption = 'Email'
      Enabled = False
      OnExecute = actEmailExecute
    end
    object actSendServer: TAction
      Caption = 'Send Server'
      OnExecute = actSendServerExecute
    end
    object actNewInterdicts: TAction
      Caption = #1705#1662#1740' '#1581#1705#1605' '#1580#1575#1585#1740' '#1576#1585#1575#1740'...'
      OnExecute = actNewInterdictsExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 342
    Top = 405
    Bitmap = {
      494C010106000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000426BF700426BF70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006BAD840021842900218429006BAD8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000426BF7000021C6000021C600426BF700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000426BF7000021C600527BEF005273FF000021C600426BF7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000426BF7000021C600426BF7001042E700214AEF00527BEF000021C600426B
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      000000000000000000000000000000000000000000000000000000000000426B
      F7000018BD00527BEF000821E7000021E7000029EF000021E700527BEF000021
      C600426BF7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000426BF7000021
      C600527BEF001031D6000021D6000821E7000021DE000029DE001031E700527B
      EF000021C600426BF70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006BAD8400218429002184
      290021842900218429002184290094DE8C0039B5520021842900218429002184
      290021842900218429006BAD84000000000000000000426BF7000018BD000829
      D6000021D6000021D6000021D6000021CE000021D6000021D6000021CE000018
      D6001031D6000018BD00426BF700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A5630039B5520039B5
      520039B5520039B5520039B5520039B5520039B5520039B5520039B5520039B5
      520039B5520039B552002184290000000000426BF7000021C6000021CE000818
      D6000021CE000018CE000018CE000018CE000018CE000018CE000018CE000018
      D6000018CE001029D6000021C600426BF7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A5630094DE8C0094DE
      8C0094DE8C0094DE8C0094DE8C0094DE8C0039B5520094DE8C0094DE8C0094DE
      8C0094DE8C0094DE8C0021842900000000000810BD000021C6000021C6000818
      BD000018C6000018C6000018C6000018C6000018C6000018C6000018BD000010
      C6001018BD000010C6000018C6000818BD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006BAD840063A5630063A5
      630063A5630063A5630063A5630094DE8C0039B5520021842900218429002184
      290021842900218429006BAD8400000000000000000000000000000000000000
      00000010BD000010BD000010BD000010BD000010BD000010C6000010C6000010
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000810BD000008AD000010B5000008B5000010B5000008B5000010B5000010
      B500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001021BD000010AD000008AD000008AD000008AD000010AD000008A5001021
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000424ABD000808A5000008A5000008A50008089C000000A50000089C004A4A
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000424ABD000800A5000808A5000000A5000800A5000008A5000008A500424A
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006BAD840063A5630063A563006BAD8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000424ABD003939B50000009C0000009C003939B50000009C003939B500424A
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000736BBD000008AD000008AD000008AD000008AD000008AD000008AD006B63
      C600000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000FFFFFF00FFFFFE7F00000000FC3FFC3F00000000
      FC3FF81F00000000FC3FF00F00000000FC3FE00700000000FC3FC00300000000
      8001800100000000800100000000000080010000000000008001F00F00000000
      FC3FF00F00000000FC3FF00F00000000FC3FF00F00000000FC3FF00F00000000
      FC3FF00F00000000FFFFF00F00000000FFFFF81FF8FFFFFFFFFFE007F87F8FFF
      FFFFC003F07F807FFFFF8001F03F800FFFFF8001E03F8007FFFF0000E01F8007
      80010000E01F800380010000F30F800380010000FF0F800180010000FF878001
      FFFF0000FF878001FFFF8001FFC38003FFFF8001FFC78007FFFFC003FFEFC3C7
      FFFFE007FFFFFE0FFFFFF81FFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object qryItems: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeInsert = qryItemsBeforeInsert
    BeforeEdit = qryItemsBeforeEdit
    BeforePost = qryItemsBeforePost
    BeforeDelete = qryItemsBeforeDelete
    AfterScroll = qryItemsAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT    '
      'CASE WHEN'
      '                          (SELECT     CalCulateType'
      
        '                             FROM         Pay.FormsInfo AS Forms' +
        'Info_1'
      
        '                             WHERE     (FormInfoID = InterdictIt' +
        'ems.SalaryID)) in( 1,2,4,7,8 )  then  0 else '
      '1  end  AS AmountType , '
      ' CASE WHEN'
      '                          (SELECT     CalCulateType'
      
        '                             FROM         Pay.FormsInfo AS Forms' +
        'Info_1'
      
        '                             WHERE     (FormInfoID = InterdictIt' +
        'ems.SalaryID)) in( 1,2,4,7,8 )  then  ROUND(Amount / 30, 0) else' +
        ' '
      'Amount  end  AS Amount30, '
      ' *,'
      '                          (SELECT     InfoID'
      '                             FROM Pay.FormsInfo'
      
        '                             WHERE     FormInfoID = SalaryID) AS' +
        ' SalaryID, CASE WHEN'
      '                          (SELECT     CalCulateType'
      
        '                             FROM         Pay.FormsInfo AS Forms' +
        'Info_1'
      
        '                             WHERE     (FormInfoID = InterdictIt' +
        'ems.SalaryID)) in ( 6,9)  THEN Amount * 30 ELSE Amount END AS Am' +
        'ount2'
      ''
      'FROM Pay.InterdictItems')
    Left = 78
    Top = 331
    object qryItemsInterdictItemsID: TIntegerField
      FieldName = 'InterdictItemsID'
    end
    object qryItemsInterdictID: TIntegerField
      FieldName = 'InterdictID'
    end
    object qryItemsSalaryID: TIntegerField
      DisplayLabel = #1587#1585#1610#1575#1604
      FieldName = 'SalaryID'
    end
    object qryItemsAmount: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '
      FieldName = 'Amount'
      currency = True
      Precision = 19
    end
    object qryItemsFirstMounth: TWordField
      FieldName = 'FirstMounth'
    end
    object qryItemsEndMounth: TWordField
      FieldName = 'EndMounth'
    end
    object qryItems_InfoName_L1: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1581#1602#1608#1602'  '#1608' '#1605#1586#1575#1610#1575
      FieldKind = fkLookup
      FieldName = '_InfoName_L1'
      LookupDataSet = qry_FormsInfo
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'SalaryID'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qryItems_InfoName_L2: TStringField
      DisplayLabel = 'InfoName'
      FieldKind = fkLookup
      FieldName = '_InfoName_L2'
      LookupDataSet = qry_FormsInfo
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoName_L2'
      KeyFields = 'SalaryID'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qryItemsAccTopicCode: TIntegerField
      FieldName = 'AccTopicCode'
    end
    object qryItemsAccDetailCode: TIntegerField
      FieldName = 'AccDetailCode'
    end
    object qryItemsAccCTopicCode: TIntegerField
      FieldName = 'AccCTopicCode'
    end
    object qryItemsAccCTopicCode2: TIntegerField
      FieldName = 'AccCTopicCode2'
    end
    object qryItemsItemNote_L1: TStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'ItemNote_L1'
      LookupDataSet = cliInsert
      Size = 256
    end
    object qryItems_OldAmount: TCurrencyField
      FieldKind = fkLookup
      FieldName = '_OldAmount'
      LookupDataSet = qrySubInterdicts
      LookupKeyFields = 'SalaryID'
      LookupResultField = 'Amount'
      KeyFields = 'SalaryID'
      Lookup = True
    end
    object qryItemsExpenseType: TWordField
      FieldName = 'ExpenseType'
    end
    object qryItemsItemNote_L2: TStringField
      FieldName = 'ItemNote_L2'
      Size = 250
    end
    object qryItemsFirstdate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1605#1593#1608#1602#1607' '#1575#1586
      FieldName = 'Firstdate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryItemsEnddate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1605#1593#1608#1602#1607' '#1578#1575
      FieldName = 'Enddate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryItemsAmount2: TBCDField
      FieldName = 'Amount2'
      ReadOnly = True
      Precision = 19
    end
    object qryItemsAmount30: TBCDField
      FieldName = 'Amount30'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryItemsUserID: TIntegerField
      FieldName = 'UserID'
    end
    object qryItemsJobScore: TFloatField
      DisplayLabel = #1575#1605#1578#1740#1575#1586' '#1588#1594#1604#1740
      FieldName = 'JobScore'
    end
    object qryItemsWageKind: TWordField
      FieldName = 'WageKind'
    end
    object qryItemsAmount30w: TBCDField
      FieldName = 'Amount30w'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object srcItems: TDataSource
    DataSet = qryItems
    OnStateChange = srcItemsStateChange
    Left = 108
    Top = 405
  end
  object qryInterdicts: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    BeforeInsert = qryInterdictsBeforeInsert
    AfterInsert = qryInterdictsAfterInsert
    BeforeEdit = qryInterdictsBeforeEdit
    AfterEdit = qryInterdictsAfterEdit
    BeforePost = qryInterdictsBeforePost
    AfterPost = qryInterdictsAfterPost
    AfterCancel = qryInterdictsAfterCancel
    BeforeDelete = qryInterdictsBeforeDelete
    AfterDelete = qryInterdictsAfterDelete
    AfterScroll = qryInterdictsAfterScroll
    Parameters = <
      item
        Name = 'Email'
        Size = -1
        Value = Null
      end
      item
        Name = 'InterdicType'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'StateFrom'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 0
      end
      item
        Name = 'StateTo'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 49
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
        Size = 10
        Value = '2147483647'
      end
      item
        Name = 'companyCodeFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'companyCodeTo'
        DataType = ftWideString
        Size = 9
        Value = '999999999'
      end
      item
        Name = 'GroupIDFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'GroupIDTo'
        DataType = ftWideString
        Size = 10
        Value = '2147483647'
      end
      item
        Name = 'EmployTypeIDFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'EmployTypeIDTo'
        DataType = ftWideString
        Size = 10
        Value = '2147483647'
      end
      item
        Name = 'PersonelNoFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PersonelNoTo'
        DataType = ftWideString
        Size = 10
        Value = '2147483647'
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
        Size = 10
        Value = '2147483647'
      end
      item
        Name = 'InterdictDateFrom'
        DataType = ftWideString
        Size = 10
        Value = '0000/00/00'
      end
      item
        Name = 'InterdictDateTo'
        DataType = ftWideString
        Size = 10
        Value = '9999/99/99'
      end
      item
        Name = 'PersonelStateFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PersonelStateTo'
        DataType = ftWideString
        Size = 10
        Value = '2147483647'
      end>
    SQL.Strings = (
      'SELECT     * ,'
      
        '  (SELECT     CASE WHEN COUNT(InterdictNo) > 0 THEN '#39#1583#1575#1585#1575#1610' '#1605#1578#1605#1605#39 +
        ' ELSE NULL END'
      '    FROM Pay.Interdicts'
      
        '   WHERE     (PersonelNo = aa.PersonelNo) AND (InterdicType = 1)' +
        ' AND (State = 0)) AS InterdicTypeTxt'
      
        '    ,(SELECT Email FROM Pay.PersonelInfo WHERE(PersonelNo = aa.P' +
        'ersonelNo)) AS Email'
      ''
      'FROM Pay.Interdicts AS aa'
      ''
      
        'WHERE   :Email   (aa.InterdicType = :InterdicType ) AND (aa.Stat' +
        'e between :StateFrom and :StateTo)'
      'AND (aa.OfficeCode between :OfficeCodeFrom and :OfficeCodeTo)'
      
        'AND(aa.subcompanyCode BETWEEN :companyCodeFrom AND :companyCodeT' +
        'o )'
      
        'AND ((aa.GroupID between :GroupIDFrom and :GroupIDTo)OR (GroupID' +
        '=0))'
      
        'AND (aa.EmployTypeID between :EmployTypeIDFrom and :EmployTypeID' +
        'To)'
      'AND (aa.PersonelNo between :PersonelNoFrom and :PersonelNoTo)'
      
        'AND ((aa.ProjectID between :ProjectIDFrom and :ProjectIDTo)OR (P' +
        'rojectID=0))'
      
        'AND (aa.InterdictDate between :InterdictDateFrom and :InterdictD' +
        'ateTo)'
      'AND (PersonelNo IN (SELECT PersonelNo  FROM Pay.EmployeeInfo'
      
        '     WHERE  (PersonStateNo BETWEEN :PersonelStateFrom AND :Perso' +
        'nelStateTo )))'
      ''
      '---------ORDER BY aa.InterdictNO')
    Left = 640
    Top = 9
    object qryInterdictsInterdictID: TIntegerField
      Tag = 3
      FieldName = 'InterdictID'
      Required = True
    end
    object qryInterdictsPersonelNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610
      FieldName = 'PersonelNo'
      Required = True
      OnChange = qryInterdictsPersonelNoChange
    end
    object qryInterdictsEmployTypeID: TIntegerField
      DisplayLabel = #1606#1608#1593' '#1581#1603#1605'/'#1575#1587#1578#1582#1583#1575#1605
      FieldName = 'EmployTypeID'
      Required = True
      OnGetText = qryInterdictsEmployTypeIDGetText
      OnSetText = qryInterdictsEmployTypeIDSetText
    end
    object qryInterdictsInterdictNo: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1581#1603#1605
      FieldName = 'InterdictNo'
      Required = True
      Size = 50
    end
    object qryInterdictsInterdictDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1589#1583#1608#1585' '#1581#1603#1605
      FieldName = 'InterdictDate'
      Required = True
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryInterdictsOfficeCode: TIntegerField
      Tag = 3
      DisplayLabel = #1608#1575#1581#1583#1587#1575#1586#1605#1575#1606#1610
      FieldName = 'OfficeCode'
      Required = True
      OnGetText = qryInterdictsEmployTypeIDGetText
      OnSetText = qryInterdictsEmployTypeIDSetText
    end
    object qryInterdictsjobCode: TIntegerField
      Tag = 3
      DisplayLabel = #1662#1587#1578' '#1587#1575#1586#1605#1575#1606#1610
      FieldName = 'jobCode'
      Required = True
      OnGetText = qryInterdictsEmployTypeIDGetText
      OnSetText = qryInterdictsEmployTypeIDSetText
    end
    object qryInterdictsgrade: TIntegerField
      Tag = 3
      DisplayLabel = #1585#1578#1576#1607
      FieldName = 'grade'
      Required = True
      OnGetText = qryInterdictsEmployTypeIDGetText
      OnSetText = qryInterdictsEmployTypeIDSetText
    end
    object qryInterdictsjobCity: TIntegerField
      DisplayLabel = #1605#1581#1604' '#1582#1583#1605#1578
      FieldName = 'jobCity'
      Required = True
      OnGetText = qryInterdictsEmployTypeIDGetText
      OnSetText = qryInterdictsEmployTypeIDSetText
    end
    object qryInterdictsInterdicType: TIntegerField
      FieldName = 'InterdicType'
    end
    object qryInterdictsInterdicStartDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1575#1580#1585#1575#1610' '#1581#1603#1605
      FieldName = 'InterdicStartDate'
      OnChange = qryInterdictsInterdicStartDateChange
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryInterdictsemployDaytime: TWordField
      DisplayLabel = #1605#1583#1578' '#1575#1593#1578#1576#1575#1585
      FieldName = 'employDaytime'
    end
    object qryInterdictsState: TWordField
      FieldName = 'State'
      OnGetText = qryInterdictsStateGetText
    end
    object qryInterdicts_PrsnNAME: TStringField
      DisplayLabel = #1606#1575#1605
      FieldKind = fkLookup
      FieldName = '_PrsnName'
      LookupDataSet = qryPeronal_Info
      LookupKeyFields = 'PersonelNo'
      LookupResultField = 'name_L1'
      KeyFields = 'PersonelNo'
      LookupCache = True
      Required = True
      Size = 150
      Lookup = True
    end
    object qryInterdicts_PostalCode: TStringField
      FieldKind = fkLookup
      FieldName = '_PostalCode'
      LookupDataSet = qryPeronal_Info
      LookupKeyFields = 'PersonelNo'
      LookupResultField = 'PostalCode'
      KeyFields = 'PersonelNo'
      Size = 15
      Lookup = True
    end
    object qryInterdicts_PrsnlastName: TStringField
      DisplayLabel = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
      FieldKind = fkLookup
      FieldName = '_PrsnlastName'
      LookupDataSet = qryPeronal_Info
      LookupKeyFields = 'PersonelNo'
      LookupResultField = 'lastName_L1'
      KeyFields = 'PersonelNo'
      LookupCache = True
      Required = True
      Size = 150
      Lookup = True
    end
    object qryInterdicts_PrsnFatherName: TStringField
      FieldKind = fkLookup
      FieldName = '_PrsnFatherName'
      LookupDataSet = qryPeronal_Info
      LookupKeyFields = 'PersonelNo'
      LookupResultField = 'fatherName_L1'
      KeyFields = 'PersonelNo'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qryInterdicts_PrsnId: TStringField
      FieldKind = fkLookup
      FieldName = '_PrsnId'
      LookupDataSet = qryPeronal_Info
      LookupKeyFields = 'PersonelNo'
      LookupResultField = 'IDNumber'
      KeyFields = 'PersonelNo'
      LookupCache = True
      Size = 0
      Lookup = True
    end
    object qryInterdicts_PrsnNationalID: TStringField
      FieldKind = fkLookup
      FieldName = '_PrsnNationalID'
      LookupDataSet = qryPeronal_Info
      LookupKeyFields = 'PersonelNo'
      LookupResultField = 'NationalID'
      KeyFields = 'PersonelNo'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qryInterdicts_LicenceName: TStringField
      FieldKind = fkLookup
      FieldName = '_LicenceName'
      LookupDataSet = qryPeronal_Info
      LookupKeyFields = 'PersonelNo'
      LookupResultField = '_LicenceName'
      KeyFields = 'PersonelNo'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qryInterdicts_marriage: TStringField
      FieldKind = fkLookup
      FieldName = '_marriage'
      LookupDataSet = qryPeronal_Info
      LookupKeyFields = 'PersonelNo'
      LookupResultField = '_marriage'
      KeyFields = 'PersonelNo'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qryInterdicts_subcompanyName: TStringField
      FieldKind = fkLookup
      FieldName = '_subcompanyName'
      LookupDataSet = DmF.qry_Company
      LookupKeyFields = 'CompanyCode'
      LookupResultField = 'CompanyName_L1'
      KeyFields = 'subcompanyCode'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qryInterdicts_child_Number: TStringField
      FieldKind = fkLookup
      FieldName = '_childNumber'
      LookupDataSet = qryPeronal_Info
      LookupKeyFields = 'PersonelNo'
      LookupResultField = '_childNumber'
      KeyFields = 'PersonelNo'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryInterdictsAccTopicCode: TIntegerField
      FieldName = 'AccTopicCode'
    end
    object qryInterdictsAccDetailCode: TIntegerField
      FieldName = 'AccDetailCode'
    end
    object qryInterdictsAccCTopicCode: TIntegerField
      FieldName = 'AccCTopicCode'
    end
    object qryInterdictsAccCTopicCode2: TIntegerField
      FieldName = 'AccCTopicCode2'
    end
    object qryInterdictsInterdicEndDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1662#1575#1610#1575#1606' '#1602#1585#1575#1585#1583#1575#1583
      FieldName = 'InterdicEndDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryInterdictsTotalYearsWork: TWordField
      Tag = 3
      DisplayLabel = #1605#1610#1586#1575#1606' '#1587#1606#1608#1575#1578
      FieldName = 'TotalYearsWork'
    end
    object qryInterdictsInterdicStartDateM: TDateTimeField
      FieldName = 'InterdicStartDateM'
    end
    object qryInterdictsTaxCalculationType: TIntegerField
      DisplayLabel = #1606#1608#1593' '#1605#1575#1604#1610#1575#1578
      FieldName = 'TaxCalculationType'
      OnGetText = qryInterdictsEmployTypeIDGetText
      OnSetText = qryInterdictsEmployTypeIDSetText
    end
    object qryInterdictsinsuranceID: TWordField
      DisplayLabel = #1606#1608#1593' '#1576#1610#1605#1607
      FieldName = 'insuranceID'
      OnGetText = qryInterdictsinsuranceIDGetText
      OnSetText = qryInterdictsinsuranceIDSetText
    end
    object qryInterdictsStandardEmployAmount: TBCDField
      FieldName = 'StandardEmployAmount'
      currency = True
      Precision = 19
    end
    object qryInterdictsProjectID: TIntegerField
      DisplayLabel = #1603#1583' '#1662#1585#1608#1688#1607'/ '#1605' '#1607#1586#1610#1606#1607
      FieldName = 'ProjectID'
    end
    object qryInterdicts_PayehNoName: TStringField
      FieldKind = fkLookup
      FieldName = '_PayehNoName'
      LookupDataSet = qry_FormsInfo
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'PayehNo'
      Size = 50
      Lookup = True
    end
    object qryInterdicts_ProjectName_L1: TStringField
      FieldKind = fkLookup
      FieldName = '_ProjectName_L1'
      LookupDataSet = qry_FormsInfo
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'ProjectID'
      LookupCache = True
      Size = 255
      Lookup = True
    end
    object qryInterdictsManegePercent: TFloatField
      FieldName = 'ManegePercent'
    end
    object qryInterdictsOfficeManegePercent: TFloatField
      FieldName = 'OfficeManegePercent'
    end
    object qryInterdictsGroupID: TIntegerField
      DisplayLabel = #1711#1585#1608#1607' '#1581#1603#1605
      FieldName = 'GroupID'
      OnGetText = qryInterdictsEmployTypeIDGetText
      OnSetText = qryInterdictsEmployTypeIDSetText
    end
    object qryInterdictsPayehNo: TIntegerField
      DisplayLabel = #1662#1575#1610#1607' '#1581#1603#1605
      FieldName = 'PayehNo'
      OnGetText = qryInterdictsEmployTypeIDGetText
      OnSetText = qryInterdictsEmployTypeIDSetText
    end
    object qryInterdictsGrpExpense: TIntegerField
      DisplayLabel = #1711#1585#1608#1607' '#1607#1586#1610#1606#1607
      FieldName = 'GrpExpense'
      OnGetText = qryInterdictsEmployTypeIDGetText
      OnSetText = qryInterdictsEmployTypeIDSetText
    end
    object qryInterdictsSubFunctionID: TIntegerField
      DisplayLabel = #1606#1608#1593' '#1603#1575#1585#1603#1585#1583
      FieldName = 'SubFunctionID'
      OnGetText = qryInterdictsEmployTypeIDGetText
      OnSetText = qryInterdictsEmployTypeIDSetText
    end
    object qryInterdictsSubInterdictID: TIntegerField
      DisplayLabel = #1606#1608#1593' '#1581#1603#1605
      FieldName = 'SubInterdictID'
      OnGetText = qryInterdictsEmployTypeIDGetText
      OnSetText = qryInterdictsEmployTypeIDSetText
    end
    object qryInterdictsLastInterdictID: TIntegerField
      FieldName = 'LastInterdictID'
    end
    object qryInterdicts_GroupNoName: TStringField
      FieldKind = fkLookup
      FieldName = '_GroupNoName'
      LookupDataSet = qry_FormsInfo
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'groupID'
      Size = 50
      Lookup = True
    end
    object qryInterdicts_GradeName: TStringField
      FieldKind = fkLookup
      FieldName = '_GradeName'
      LookupDataSet = qry_FormsInfo
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'grade'
      Size = 50
      Lookup = True
    end
    object qryInterdictsAccCTopicCode3: TIntegerField
      FieldName = 'AccCTopicCode3'
    end
    object qryInterdictsInterdicTypeTxt: TStringField
      FieldName = 'InterdicTypeTxt'
      ReadOnly = True
      Size = 10
    end
    object qryInterdictsGradeDate: TStringField
      FieldName = 'GradeDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryInterdictsHasRetard: TWordField
      FieldName = 'HasRetard'
      OnChange = qryInterdictsHasRetardChange
    end
    object qryInterdictsInsuranceStartDate: TStringField
      FieldName = 'InsuranceStartDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryInterdictsInsuranceEndDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582#8207#1662#1575#1610#1575#1606#8207#1602#1585#1575#1585#1583#1575#1583
      FieldName = 'InsuranceEndDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryInterdictsRetirementDate: TStringField
      DisplayLabel = #1578#1575#1585#1740#1582' '#1576#1575#1586#1606#1588#1587#1578#1711#1740
      FieldName = 'RetirementDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryInterdictsjobsGroup: TIntegerField
      DisplayLabel = #1705#1583' '#1588#1594#1604
      FieldName = 'jobsGroup'
      OnChange = qryInterdictsjobsGroupChange
    end
    object qryInterdicts_jobsGroupName: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1588#1594#1604#1740
      FieldKind = fkLookup
      FieldName = '_jobsGroupName'
      LookupDataSet = qryJob
      LookupKeyFields = 'jobCode'
      LookupResultField = 'jobName'
      KeyFields = 'jobsGroup'
      Size = 50
      Lookup = True
    end
    object qryInterdictsTaxMounth: TWordField
      FieldName = 'TaxMounth'
    end
    object qryInterdictsTaxDays: TSmallintField
      FieldName = 'TaxDays'
    end
    object qryInterdictsLastUser: TWideStringField
      FieldName = 'LastUser'
    end
    object qryInterdictsFirstUser: TWideStringField
      FieldName = 'FirstUser'
    end
    object qryInterdictsAidNo1: TStringField
      FieldName = 'AidNo1'
    end
    object qryInterdictsAidDate1: TStringField
      FieldName = 'AidDate1'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryInterdicts_jobName: TStringField
      FieldKind = fkLookup
      FieldName = '_jobName'
      LookupDataSet = qry_FormsInfo
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'jobCode'
      Size = 300
      Lookup = True
    end
    object qryInterdicts_jobCodeInfoID: TIntegerField
      FieldKind = fkLookup
      FieldName = '_jobCodeInfoID'
      LookupDataSet = qry_FormsInfo
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoID'
      KeyFields = 'jobCode'
      Lookup = True
    end
    object qryInterdictsKargozinyNote_L1: TMemoField
      FieldName = 'KargozinyNote_L1'
      BlobType = ftMemo
    end
    object qryInterdictsKargozinyNote_L2: TMemoField
      FieldName = 'KargozinyNote_L2'
      BlobType = ftMemo
    end
    object qryInterdictsComment: TMemoField
      FieldName = 'Comment'
      BlobType = ftMemo
    end
    object qryInterdictssubcompanyCode: TIntegerField
      DisplayLabel = #1603#1583' '#1588#1585#1603#1578
      FieldName = 'subcompanyCode'
    end
    object qryInterdicts_FullName: TStringField
      FieldKind = fkLookup
      FieldName = '_FullName'
      LookupDataSet = qryPeronal_Info
      LookupKeyFields = 'PersonelNo'
      LookupResultField = 'FullName'
      KeyFields = 'PersonelNo'
      Size = 300
      Lookup = True
    end
    object qryInterdictsTypeOfContract: TIntegerField
      FieldName = 'TypeOfContract'
      OnGetText = qryInterdictsEmployTypeIDGetText
      OnSetText = qryInterdictsEmployTypeIDSetText
    end
    object qryInterdictsUserID: TIntegerField
      FieldName = 'UserID'
    end
    object qryInterdictsEmail: TWideStringField
      FieldName = 'Email'
      Size = 100
    end
    object qryInterdictsStandardClock: TBCDField
      FieldName = 'StandardClock'
      Precision = 18
    end
    object qryInterdictsRetardActive: TWordField
      FieldName = 'RetardActive'
    end
    object qryInterdictsjobCityAddress: TStringField
      FieldName = 'jobCityAddress'
      Size = 250
    end
  end
  object SrcInterdicts: TDataSource
    AutoEdit = False
    DataSet = qryInterdicts
    OnStateChange = SrcInterdictsStateChange
    OnDataChange = SrcInterdictsDataChange
    Left = 562
    Top = 13
  end
  object qryPeronal_Info: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT        PersonelInfo.PersonelNo, PersonelInfo.PersonelStat' +
        'e, PersonelInfo.name_L1, PersonelInfo.name_L2, PersonelInfo.last' +
        'Name_L1, PersonelInfo.lastName_L2, PersonelInfo.fatherName_L1, '
      
        '                         PersonelInfo.fatherName_L2, PersonelInf' +
        'o.NationalityCode, PersonelInfo.BirthDate, PersonelInfo.SodurDat' +
        'e, PersonelInfo.BirthPlace, PersonelInfo.SodurPlace, PersonelInf' +
        'o.NationalID, PersonelInfo.IDNumber, '
      
        '                         PersonelInfo.sex, PersonelInfo.marriage' +
        ', PersonelInfo.childNumber, PersonelInfo.SupPepNumber, PersonelI' +
        'nfo.LicenceCode, PersonelInfo.studyField, PersonelInfo.StudyCity' +
        'Code, PersonelInfo.StudyFinishedate,'
      
        '                          PersonelInfo.UnivercityCode, PersonelI' +
        'nfo.StudyAverage, PersonelInfo.employDate, PersonelInfo.finishEm' +
        'ployDate, PersonelInfo.BankCode, PersonelInfo.BranchCode, Person' +
        'elInfo.AccountNumber, '
      
        '                         PersonelInfo.AccBankType, PersonelInfo.' +
        'insuranceID, PersonelInfo.InsuranceNumber, PersonelInfo.TaxZone,' +
        ' PersonelInfo.TaxCalculationType, PersonelInfo.CoTax, PersonelIn' +
        'fo.Tel, PersonelInfo.address_L1, '
      
        '                         PersonelInfo.address_L2, PersonelInfo.N' +
        'ote_L1, PersonelInfo.Note_L2, PersonelInfo.StoreDayTime, Persone' +
        'lInfo.employDatem, PersonelInfo.StoreDayTimeActive, PersonelInfo' +
        '.EmployID, '
      
        '                         PersonelInfo.AccTopicCode, PersonelInfo' +
        '.AccDetailCode, PersonelInfo.AccCTopicCode, PersonelInfo.AccCTop' +
        'icCode2, PersonelInfo.PercentWound, PersonelInfo.SoldierState, P' +
        'ersonelInfo.SpecialJob, '
      
        '                         PersonelInfo.AccCTopicCode3, PersonelIn' +
        'fo.CreditCardNo, PersonelInfo.MaskanKind, PersonelInfo.SpecialSt' +
        'ate, PersonelInfo.PostalCode, PersonelInfo.BranchInfo, PersonelI' +
        'nfo.OffTime, PersonelInfo.DSW_JOB, '
      
        '                         PersonelInfo.EducationType, PersonelInf' +
        'o.EducationDegree, PersonelInfo.EducationGrade, PersonelInfo.Tim' +
        'eCardNumber, PersonelInfo.NumberOfMedicalOffice, PersonelInfo.Is' +
        'suedProvince, '
      
        '                         PersonelInfo.IssuedSection, PersonelInf' +
        'o.IssuedVillage, PersonelInfo.BirthProvince, PersonelInfo.BirthS' +
        'ection, PersonelInfo.BirthVillage, PersonelInfo.EmployTypeID, Pe' +
        'rsonelInfo.Mobile, PersonelInfo.Email, '
      
        '                         PersonelInfo.name_L1 + '#39' '#39' + PersonelIn' +
        'fo.lastName_L1 AS FullName, FormsInfo.InfoName_L1 AS _LicenceNam' +
        'e, FormsInfo_1.InfoName_L1 AS _marriage, FormsInfo_2.InfoName_L1' +
        ' AS _childNumber'
      'FROM Pay.PersonelInfo INNER JOIN'
      
        '                         Pay.FormsInfo ON PersonelInfo.LicenceCo' +
        'de = FormsInfo.FormInfoID INNER JOIN'
      
        '                         Pay.FormsInfo AS FormsInfo_1 ON Persone' +
        'lInfo.marriage = FormsInfo_1.FormInfoID INNER JOIN'
      
        '                         Pay.FormsInfo AS FormsInfo_2 ON Persone' +
        'lInfo.childNumber = FormsInfo_2.FormInfoID'
      'ORDER BY PersonelInfo.PersonelNo')
    Left = 298
    Top = 267
  end
  object qry_FormsInfo: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT FormInfoID,InfoName_L1,InfoName_L2 ,InfoID'
      'FROM Pay.FormsInfo')
    Left = 352
    Top = 113
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AfterPrint = ppReport1AfterPrint
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = ppReport1BeforePrint
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
    PDFSettings.FontEncoding = feUnicode
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
    TextSearchSettings.Enabled = True
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
    Left = 420
    Top = 463
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppTitleBand2: TppTitleBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 52123
      mmPrintPosition = 0
      object ppImgPersonalPic: TppImage
        OnPrint = ppImgPersonalPicPrint
        DesignLayer = ppDesignLayer2
        UserName = 'ImgPersonalPic'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        AutoSize = True
        MaintainAspectRatio = False
        RotationAngle = 0
        Border.mmPadding = 0
        mmHeight = 39952
        mmLeft = 17463
        mmTop = 8731
        mmWidth = 41010
        BandType = 1
        LayerName = Foreground1
      end
      object ppDBRichText1: TppDBRichText
        DesignLayer = ppDesignLayer2
        UserName = 'DBRichText1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'B Yekan'
        Font.Size = 10
        Font.Style = []
        Border.mmPadding = 0
        ExportRTFAsBitmap = False
        DataPipeline = ppDBPipeline1
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 23548
        mmLeft = 33602
        mmTop = 2646
        mmWidth = 48948
        BandType = 1
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
      end
      object pdbtxtDSW_JOB: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'pdbtxtDSW_JOB'
        OnGetText = pdbtxtDSW_JOBGetText
        Border.mmPadding = 0
        DataField = 'DSW_JOB'
        DataPipeline = ppDBPipeline3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 3969
        mmLeft = 0
        mmTop = 2646
        mmWidth = 17198
        BandType = 1
        LayerName = Foreground1
      end
      object ppImage1: TppImage
        DesignLayer = ppDesignLayer2
        UserName = 'Image1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        RotationAngle = 0
        Border.mmPadding = 0
        mmHeight = 13229
        mmLeft = 0
        mmTop = 22754
        mmWidth = 13229
        BandType = 1
        LayerName = Foreground1
      end
      object ppDBText32: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText32'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4498
        mmLeft = 25665
        mmTop = -2646
        mmWidth = 17198
        BandType = 1
        LayerName = Foreground1
      end
      object pdbtxtShamsi2Miladi1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'Shamsi2Miladi1'
        OnGetText = pdbtxtShamsi2Miladi1GetText
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yekan'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 55563
        mmTop = -4233
        mmWidth = 47625
        BandType = 1
        LayerName = Foreground1
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer2
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6879
        mmLeft = 0
        mmTop = -2646
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipeline2
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Units = utMillimeters
          Version = '23.0'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline2'
          object ppTitleBand1: TppTitleBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand2: TppDetailBand
            Border.mmPadding = 0
            PrintCount = 14
            mmBottomOffset = 0
            mmHeight = 9260
            mmPrintPosition = 35000
            object ppDBText26: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText26'
              Border.mmPadding = 0
              DataField = 'Amount'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 14
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 7938
              mmLeft = 3175
              mmTop = 0
              mmWidth = 32015
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText27: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText27'
              Border.mmPadding = 0
              DataField = '_OldAmount'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 14
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 7938
              mmLeft = 36777
              mmTop = 0
              mmWidth = 31485
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText28: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText28'
              Border.mmPadding = 0
              DataField = '_InfoName_L1'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 14
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 7938
              mmLeft = 69056
              mmTop = 0
              mmWidth = 35454
              BandType = 4
              LayerName = Foreground
            end
          end
          object ppSummaryBand1: TppSummaryBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 49213
            mmPrintPosition = 0
            object ppShape4: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape4'
              Brush.Color = clSilver
              mmHeight = 8731
              mmLeft = 265
              mmTop = 6085
              mmWidth = 70908
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc1: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc1'
              Border.mmPadding = 0
              DataField = 'Amount'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 14
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 7408
              mmLeft = 1323
              mmTop = 6615
              mmWidth = 33867
              BandType = 7
              LayerName = Foreground
            end
            object ppLine1: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line1'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 8202
              mmLeft = 35983
              mmTop = 6350
              mmWidth = 3175
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc2: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc2'
              Border.mmPadding = 0
              DataField = '_OldAmount'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 14
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 7408
              mmLeft = 45773
              mmTop = 6615
              mmWidth = 31485
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
        end
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'GroupCode'
        DataPipeline = ppDBPipeline4
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline4'
        mmHeight = 7408
        mmLeft = 166159
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppPageStyle1: TppPageStyle
      Border.mmPadding = 0
      EndPage = 0
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 257705
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape1'
        Pen.Width = 2
        mmHeight = 235480
        mmLeft = 0
        mmTop = 6879
        mmWidth = 193146
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText19'
        Border.mmPadding = 0
        DataField = 'KargozinyNote_L1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 122502
        mmLeft = 117740
        mmTop = 82550
        mmWidth = 72496
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel47: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label33'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 
          #1576#1583#1587#1578' '#1570#1608#1585#1583#1606' '#1603#1583' '#1576#1580#1575#1610' '#1587#1585#1610#1575#1604' '#1576#1585#1575#1610' '#1607#1585' '#1610#1603' '#1575#1586' '#1593#1606#1575#1608#1610#1606' '#1588#1576#1610#1607' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610' ' +
          #1603#1583' '#1588#1594#1604' '#1608' '#1587#1575#1610#1585' '#1576#1575' '#1603#1662#1610' '#1603#1585#1583#1606' '#1575#1610#1606' '#1583#1608' '#1585#1608#1610' '#1670#1575#1662' '#1605#1608#1585#1583' '#1606#1592#1585' '#1575#1605#1603#1575#1606' '#1662#1584#1610#1585' '#1575#1587#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 66675
        mmLeft = 128852
        mmTop = 97896
        mmWidth = 50006
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLblCompanyName: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LblCompanyName'
        OnGetText = ppLblCompanyNameGetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 11
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5556
        mmLeft = 76994
        mmTop = 9260
        mmWidth = 48683
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel5: TppLabel
        Tag = 4
        DesignLayer = ppDesignLayer3
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1662#1583#1585':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7144
        mmLeft = 51858
        mmTop = 23813
        mmWidth = 11377
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel6: TppLabel
        Tag = 3
        DesignLayer = ppDesignLayer3
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7144
        mmLeft = 181505
        mmTop = 23548
        mmWidth = 6350
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel7: TppLabel
        Tag = 5
        DesignLayer = ppDesignLayer3
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1588#1606#1575#1587#1606#1575#1605#1607':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7144
        mmLeft = 120121
        mmTop = 33338
        mmWidth = 26458
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel9: TppLabel
        Tag = 7
        DesignLayer = ppDesignLayer3
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1578#1608#1604#1583':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7408
        mmLeft = 170392
        mmTop = 33073
        mmWidth = 17198
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel13: TppLabel
        Tag = 11
        DesignLayer = ppDesignLayer3
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1575#1587#1578#1582#1583#1575#1605' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7144
        mmLeft = 156634
        mmTop = 49742
        mmWidth = 24077
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel17: TppLabel
        Tag = 17
        DesignLayer = ppDesignLayer3
        UserName = 'Label17'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1576#1610#1605#1607' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7144
        mmLeft = 43656
        mmTop = 49742
        mmWidth = 25135
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel22: TppLabel
        Tag = 20
        DesignLayer = ppDesignLayer3
        UserName = 'Label22'
        Border.mmPadding = 0
        Caption = #1588#1600#1600#1585#1581' '#1581#1603#1600#1600#1600#1600#1600#1605' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7197
        mmLeft = 164021
        mmTop = 74877
        mmWidth = 25950
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 16669
        mmLeft = 153194
        mmTop = 49477
        mmWidth = 2646
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel25: TppLabel
        Tag = 24
        DesignLayer = ppDesignLayer3
        UserName = 'Label202'
        Border.mmPadding = 0
        Caption = ':'#8207' '#1578#1575#1585#1610#1582' '#1589#1583#1608#1585' '#1581#1603#1605' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7197
        mmLeft = 29104
        mmTop = 222515
        mmWidth = 29295
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel26: TppLabel
        Tag = 23
        DesignLayer = ppDesignLayer3
        UserName = 'Label26'
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1575#1580#1585#1575#1610' '#1581#1603#1605' : '#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7144
        mmLeft = 115888
        mmTop = 222515
        mmWidth = 29104
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'InterdicStartDate'
        DataPipeline = ppDBPipeline1
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
        mmLeft = 87577
        mmTop = 222250
        mmWidth = 27781
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel28: TppLabel
        Tag = 26
        DesignLayer = ppDesignLayer3
        UserName = 'Label28'
        Border.mmPadding = 0
        Caption = #1587#1585#1662#1585#1587#1578' '#1603#1575#1585#1711#1586#1610#1606#1610':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7197
        mmLeft = 145257
        mmTop = 230453
        mmWidth = 30438
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label30'
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606' '#1662#1587#1578' '#1587#1575#1586#1605#1575#1606#1610' : '#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7144
        mmLeft = 132557
        mmTop = 238390
        mmWidth = 34396
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel34: TppLabel
        Tag = 28
        DesignLayer = ppDesignLayer3
        UserName = 'Label301'
        Border.mmPadding = 0
        Caption = #1605#1587#1578#1582#1583#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 82021
        mmTop = 230717
        mmWidth = 12510
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel35: TppLabel
        Tag = 29
        DesignLayer = ppDesignLayer3
        UserName = 'Label35'
        Border.mmPadding = 0
        Caption = #1575#1605#1608#1585#1605#1575#1604#1610' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 80433
        mmTop = 243946
        mmWidth = 14330
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel36: TppLabel
        Tag = 30
        DesignLayer = ppDesignLayer3
        UserName = 'Label36'
        Border.mmPadding = 0
        Caption = #1587#1575#1586#1605#1575#1606' '#1575#1605#1608#1585' '#1575#1583#1575#1585#1610' '#1608' '#1575#1587#1578#1582#1583#1575#1605#1610' '#1603#1588#1608#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 37835
        mmTop = 250296
        mmWidth = 56727
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel37: TppLabel
        Tag = 31
        DesignLayer = ppDesignLayer3
        UserName = 'Label37'
        Border.mmPadding = 0
        Caption = #1603#1575#1585#1711#1586#1610#1606#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 80698
        mmTop = 237596
        mmWidth = 14118
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line101'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 794
        mmTop = 221721
        mmWidth = 190500
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line12'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 265
        mmTop = 230188
        mmWidth = 192088
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = '_PrsnName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7144
        mmLeft = 146579
        mmTop = 23548
        mmWidth = 34660
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'IDNumber'
        DataPipeline = ppDBPipeline3
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 6615
        mmLeft = 104511
        mmTop = 33602
        mmWidth = 15081
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText101'
        Border.mmPadding = 0
        DataField = '_PrsnId'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 69586
        mmTop = 23283
        mmWidth = 50006
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText14'
        Border.mmPadding = 0
        DataField = 'licence_L1'
        DataPipeline = ppDBPipeline3
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 6615
        mmLeft = 5292
        mmTop = 41540
        mmWidth = 42598
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line14'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 26458
        mmLeft = 95250
        mmTop = 230188
        mmWidth = 2381
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText15'
        Border.mmPadding = 0
        DataField = 'InterdictDate'
        DataPipeline = ppDBPipeline1
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
        mmLeft = 8202
        mmTop = 222250
        mmWidth = 20373
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLblemployDaytime: TppLabel
        Tag = 19
        DesignLayer = ppDesignLayer3
        UserName = 'Label203'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1608#1593' '#1581#1603#1605':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7144
        mmLeft = 126471
        mmTop = 50006
        mmWidth = 19579
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line16'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 66146
        mmWidth = 193411
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine17: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line17'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 73554
        mmWidth = 192617
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine22: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line22'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 40746
        mmWidth = 192617
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine23: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line23'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8202
        mmLeft = 152136
        mmTop = 32808
        mmWidth = 2646
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LblCompanyName1'
        Border.mmPadding = 0
        Caption = #1608#1586#1575#1585#1578' '#1580#1607#1575#1583' '#1603#1588#1575#1608#1585#1586#1610' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 11
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5757
        mmLeft = 83814
        mmTop = 2646
        mmWidth = 35052
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine25: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line25'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 68263
        mmTop = 22754
        mmWidth = 2646
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel43: TppLabel
        Tag = 4
        DesignLayer = ppDesignLayer3
        UserName = 'Label43'
        Border.mmPadding = 0
        Caption = '5-'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7673
        mmLeft = 146844
        mmTop = 33073
        mmWidth = 4233
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel44: TppLabel
        Tag = 4
        DesignLayer = ppDesignLayer3
        UserName = 'Label44'
        Border.mmPadding = 0
        Caption = '6-'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7673
        mmLeft = 98690
        mmTop = 32808
        mmWidth = 4233
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel45: TppLabel
        Tag = 4
        DesignLayer = ppDesignLayer3
        UserName = 'Label45'
        Border.mmPadding = 0
        Caption = '8-'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7673
        mmLeft = 170921
        mmTop = 41010
        mmWidth = 4233
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine26: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line26'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 159279
        mmTop = 59796
        mmWidth = 2646
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel46: TppLabel
        Tag = 4
        DesignLayer = ppDesignLayer3
        UserName = 'Label46'
        Border.mmPadding = 0
        Caption = '7-'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7673
        mmLeft = 53446
        mmTop = 33073
        mmWidth = 4233
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel49: TppLabel
        Tag = 4
        DesignLayer = ppDesignLayer3
        UserName = 'Label49'
        Border.mmPadding = 0
        Caption = '10-'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7673
        mmLeft = 76729
        mmTop = 41010
        mmWidth = 6350
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel51: TppLabel
        Tag = 4
        DesignLayer = ppDesignLayer3
        UserName = 'Label51'
        Border.mmPadding = 0
        Caption = '11-'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7673
        mmLeft = 181240
        mmTop = 49742
        mmWidth = 6350
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel52: TppLabel
        Tag = 4
        DesignLayer = ppDesignLayer3
        UserName = 'Label52'
        Border.mmPadding = 0
        Caption = '13-'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7673
        mmLeft = 110861
        mmTop = 49477
        mmWidth = 6350
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel11: TppLabel
        Tag = 4
        DesignLayer = ppDesignLayer3
        UserName = 'Label11'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '17'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7705
        mmLeft = 106627
        mmTop = 89165
        mmWidth = 8467
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine20: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line20'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 141288
        mmLeft = 115623
        mmTop = 80698
        mmWidth = 5027
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8202
        mmLeft = 83344
        mmTop = 221986
        mmWidth = 4233
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label29'
        Border.mmPadding = 0
        Caption = #1575#1605#1590#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7144
        mmLeft = 117740
        mmTop = 237596
        mmWidth = 8202
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel50: TppLabel
        Tag = 4
        DesignLayer = ppDesignLayer3
        UserName = 'Label50'
        Border.mmPadding = 0
        Caption = '2-'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7673
        mmLeft = 141552
        mmTop = 23283
        mmWidth = 4233
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel31: TppLabel
        Tag = 3
        DesignLayer = ppDesignLayer3
        UserName = 'Label31'
        Border.mmPadding = 0
        Caption = ' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7144
        mmLeft = 119856
        mmTop = 23283
        mmWidth = 21431
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel4: TppLabel
        Tag = 4
        DesignLayer = ppDesignLayer3
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = '3-'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7673
        mmLeft = 63500
        mmTop = 23813
        mmWidth = 4233
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel42: TppLabel
        Tag = 4
        DesignLayer = ppDesignLayer3
        UserName = 'Label42'
        Border.mmPadding = 0
        Caption = '4-'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7673
        mmLeft = 187855
        mmTop = 33073
        mmWidth = 4233
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel58: TppLabel
        Tag = 5
        DesignLayer = ppDesignLayer3
        UserName = 'Label58'
        Border.mmPadding = 0
        Caption = #1605#1581#1604' '#1589#1583#1608#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7144
        mmLeft = 81492
        mmTop = 33073
        mmWidth = 16933
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'childnumber_L1'
        DataPipeline = ppDBPipeline3
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 7673
        mmLeft = 85725
        mmTop = 41275
        mmWidth = 10054
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line7'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 49213
        mmWidth = 192352
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line13'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 16404
        mmLeft = 117475
        mmTop = 49477
        mmWidth = 794
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel62: TppLabel
        Tag = 4
        DesignLayer = ppDesignLayer3
        UserName = 'Label62'
        Border.mmPadding = 0
        Caption = '9-'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7673
        mmLeft = 113771
        mmTop = 41275
        mmWidth = 4233
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel63: TppLabel
        Tag = 7
        DesignLayer = ppDesignLayer3
        UserName = 'Label63'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' '#1605#1583#1585#1603' '#1578#1581#1589#1610#1604#1610' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7144
        mmLeft = 48154
        mmTop = 41010
        mmWidth = 28310
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText17'
        Border.mmPadding = 0
        DataField = 'employDate'
        DataPipeline = ppDBPipeline3
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 7705
        mmLeft = 159279
        mmTop = 57944
        mmWidth = 22490
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel67: TppLabel
        Tag = 11
        DesignLayer = ppDesignLayer3
        UserName = 'Label67'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7144
        mmLeft = 83608
        mmTop = 49742
        mmWidth = 26988
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel69: TppLabel
        Tag = 17
        DesignLayer = ppDesignLayer3
        UserName = 'Label69'
        Border.mmPadding = 0
        Caption = #1585#1588#1578#1607' '#1578#1581#1589#1610#1604#1610':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7144
        mmLeft = 153459
        mmTop = 66675
        mmWidth = 23283
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel70: TppLabel
        Tag = 4
        DesignLayer = ppDesignLayer3
        UserName = 'Label70'
        Border.mmPadding = 0
        Caption = '12-'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7673
        mmLeft = 146315
        mmTop = 49742
        mmWidth = 6350
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel75: TppLabel
        Tag = 4
        DesignLayer = ppDesignLayer3
        UserName = 'Label75'
        Border.mmPadding = 0
        Caption = '14-'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7673
        mmLeft = 69850
        mmTop = 49742
        mmWidth = 6350
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel77: TppLabel
        Tag = 4
        DesignLayer = ppDesignLayer3
        UserName = 'Label77'
        Border.mmPadding = 0
        Caption = '15-'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7673
        mmLeft = 177007
        mmTop = 66411
        mmWidth = 6350
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel78: TppLabel
        Tag = 17
        DesignLayer = ppDesignLayer3
        UserName = 'Label78'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606' '#1588#1594#1604':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7197
        mmLeft = 79375
        mmTop = 66675
        mmWidth = 27781
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel82: TppLabel
        Tag = 4
        DesignLayer = ppDesignLayer3
        UserName = 'Label82'
        Border.mmPadding = 0
        Caption = '16-'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7673
        mmLeft = 107686
        mmTop = 66411
        mmWidth = 6350
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel83: TppLabel
        Tag = 17
        DesignLayer = ppDesignLayer3
        UserName = 'Label83'
        Border.mmPadding = 0
        Caption = ':'#1608#1590#1593#1610#1578' '#1578#1575#1607#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7197
        mmLeft = 32015
        mmTop = 33338
        mmWidth = 21251
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel86: TppLabel
        Tag = 17
        DesignLayer = ppDesignLayer3
        UserName = 'Label86'
        Border.mmPadding = 0
        Caption = #1578#1593#1583#1575#1583' '#1575#1608#1604#1575#1583' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7144
        mmLeft = 96309
        mmTop = 41540
        mmWidth = 17198
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine18: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line18'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9525
        mmLeft = 146050
        mmTop = 23019
        mmWidth = 2381
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel10: TppLabel
        Tag = 4
        DesignLayer = ppDesignLayer3
        UserName = 'Label501'
        Border.mmPadding = 0
        Caption = '1-'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7673
        mmLeft = 187855
        mmTop = 23283
        mmWidth = 4233
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine27: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line27'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 265
        mmTop = 80698
        mmWidth = 115359
        BandType = 10
        LayerName = PageLayer1
      end
      object ppImage3: TppImage
        DesignLayer = ppDesignLayer3
        UserName = 'Image3'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        RotationAngle = 0
        Stretch = True
        Border.mmPadding = 0
        Picture.Data = {
          0A544A504547496D616765CFCD0000FFD8FFE000104A46494600010201004800
          480000FFE111EF4578696600004D4D002A000000080007011200030000000100
          010000011A00050000000100000062011B0005000000010000006A0128000300
          00000100020000013100020000001C0000007201320002000000140000008E87
          69000400000001000000A4000000D0000AFC8000002710000AFC800000271041
          646F62652050686F746F73686F70204353322057696E646F777300323030373A
          31303A31372031363A35323A31300000000003A00100030000000100010000A0
          0200040000000100000100A00300040000000100000100000000000000000601
          0300030000000100060000011A0005000000010000011E011B00050000000100
          00012601280003000000010002000002010004000000010000012E0202000400
          000001000010B90000000000000048000000010000004800000001FFD8FFE000
          104A46494600010200004800480000FFED000C41646F62655F434D0001FFEE00
          0E41646F626500648000000001FFDB0084000C08080809080C09090C110B0A0B
          11150F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E
          0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000110800A000A003012200
          021101031101FFDD0004000AFFC4013F00000105010101010101000000000000
          00030001020405060708090A0B01000105010101010101000000000000000100
          02030405060708090A0B1000010401030204020507060805030C330100021103
          04211231054151611322718132061491A1B14223241552C16233347282D14307
          259253F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3
          D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6
          37475767778797A7B7C7D7E7F711000202010204040304050607070605350100
          021103213112044151617122130532819114A1B14223C152D1F0332462E17282
          92435315637334F1250616A2B283072635C2D2449354A317644555367465E2F2
          B384C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6
          E6F62737475767778797A7B7C7FFDA000C03010002110311003F00F554924925
          292492494A4924925292492494A4924925292492494A4924925292492494A492
          4925292492494FFFD0F554924925292492494A49249252924942DB6AA6B75B73
          DB5D7582E7BDE435AD035739CE77B5AD494CD258D5759CDEA85DFB1B1C0C61A0
          EA3940B6A77F2B171DBB6FCB67FC2FEAF47FA3B5E88CE8B91649CEEA59590E70
          82DADC31983FA8DC3F4AEFF3EFB1253AA92CDFF9BFD3439AF02E0F6990F1917C
          CFF28FADEE43B3A5F55A44F4EEA6F046A2ACC60BEB3FC9758DF4729BFF00B109
          29D6496457D75D8D7578BD6E918175AE0CA7203B7E2DAE3F4595E496B3D2B9FF
          00998F92CA9FFE8BD65AE9294924924A5249249294924924A7FFD1F554924925
          292492494A49251B1ECAD8EB2C7063180B9CE2600035739C525357AAF55C2E91
          8366766BF6D5582606AE7182EF4EB6FE73DDB7FD6B581D2FA5E6FD61B1BD6BEB
          06E6E2BC87E0F469FD1319FE0EECC6FF00DA9BDFFCE6DB3D9FF9EAAA78D5647D
          6EFAC8ECAC9FF913A6ED35D2468FB4EDB6BAAC9FCEDBE964E537F33F57C5FF00
          4CBB7494B000081A009D24925292436DD53AD7521D363002E6F80288929164E3
          63E550FC7C9A997D168DB655600E6B878398EF6B9738F391F54EE04937740B9C
          D6FAAF24BF0C93B40BDFEE75B82EFA2CBECFD2E37F877FA3EF6750A16D555D53
          E9B982CAAC69658C7005AE6B86D731CD3F49AE6A4A5576D56B77D4F6BDB244B4
          82247234535C8F4DC8BFEAE7553D0AF2EB711FFA5E9F6BCF38C34BEB739DFCE6
          474C9AF77BFF0049D3FF0049FE0975A082010641D41092974924925292492494
          FF00FFD2F554924925292492494A5C8FF8C6EB5F62E98CE9F5C9B3364D8073E9
          336EEAFF00F426D7D547FC5FACBAE5E68EB59F583FC65B58F9762E1586B681A8
          8C40EB3DDF9BB1F9DB92F153DC7D5BE96EE93D1B1F0ED3BB2003664BFF007AEB
          0FAB7BBFEDC7ED6FF2169A4924A5249896CED27570303BE8A9745B9F6F4DA85A
          22DA7751682E2E3BAA73A874BDFEE76EF4F724A7CEBA5F5AEB03EB50C13FA4B5
          DD56DDCD76AE6B4BEC6646DFE47D93FF0003A6A5E9D93915E352EBED9D8D8981
          275219FF007E58B474EE9CDFAE99596DA00CBFB15567A9E6F7DD43EC6FE6FA9E
          963D556FFDC577AE0F528C7C589FB4E552C222416B1FF6AB41FF00ACE3D88F55
          3A49260E6925A0EA391E129D05385F5C7A5DB9FD20DF8807ED0E9CE197864F77
          D7FCE507F799934FA94EC50FA9DD5F1FA874E6574B8EC631B650D719736A7CB4
          52E3F9DF65B996E37FC557459FE15740BCD7A3E50FABDF5CAFE90E78AF1C65B9
          B4B60EB5E6065B552D207F83B5D8BFF82A4A7D292492494A49249253FFD3F554
          92492529249249487332062E25F92448A2B7D841D3E834BFF82F36FF001575FA
          FD67332ED25D6B71E493DDD7BFD4B5FF00E756BB6FAE36BEAFAADD51F5E8EFB3
          5827C9C363BFE8B972FF00E29EA781D4ED91E99753581DF73458FF00F376D8D4
          BA7D54FA0A492A5D6339DD3F01D96D00ECB2A6BA4130C7DB5D56BB4FDDADEF49
          4C3336B3ABF4EB1C092F17D2D708805CD65FEEFCEFA38AE5CCFD6B6FD6EE8FD4
          5FD4BA0175B8395B5D938ECA85DB6E60F4CD8FA63D6F4AFA995EFB319DFE0FF4
          9FBEBA3EBFBABC3AF39825D81733208FF8369F4F2BFCDC4B6F72BD5E4D16B9AD
          A9E2CDECF51AE6FB9A5BFBDBDBEDFCE454F036FD6DC97E4BBA8E161670EB4FC5
          AEAB7A79C72EA435AE7B997BEC2DF5FECFEA5F66CF4D95BEDFE6FF0044B53EA7
          627D68CBCB7758FAC8F78F4D8EAB0B1EC6B6B703616BAFBCD3506FA5FCDB2AAB
          D5FD2FF39FF5CB86D6B7FC6039A5FB40E8E0B813034C83EE3FD45AE3AB601F50
          9B4359533D4758ED1A5B05DBEB73BF9C635BF9ECF621AA9174EB4DBD43A99996
          57757537FB34D563FF00E95AB45677420F7607DAAC116665966491FC9B1C5D40
          FECE37A2D53E8D9CFEA180329E36EEB6E6B4447B2BB6DA6AFF00C0EB6A4A6F2F
          29FF0019D8FF0065FAC95E5D5ED7DF8CCB777FC2D2F735AE1FD568A17AB2F33F
          F1B0C8EA7D39FF00BF45CDFF0035F57FE95494FA2E1648CBC3A3280817D6CB40
          F0DED0FF00FBF23AC4FA9590EC8FAABD32C77D26D02B3FF5A268FF00D16B6D25
          292492494FFFD4F554924925292492494E2FD74AFD4FAA9D55B3118CF7FF0098
          3D4DBFDAD8B8BFF1559659D5B33109F6DF40B00FE554FDBFF537AF45EA38ACCC
          E9F9388F60B1B7D4FACB0E80EE696ED5E41F50F35989F59F02CBC96B6CDD438F
          F2AC6963377FD776247653ED0A875DC7764F47CCA9925E6A73981BC97347A958
          6FF6DAAFA6E742929163DD56662557B61F4E456D78EE0B5EDDDFF49AE5E3BD67
          EAC759FAB1D41D66336F6D153BF53EA18FB8FB3FC1B6D7D5FCDDAD6FB2C65CDF
          4EEFE5AF4FE89955E25193D3F2AC654EE9B73AB05EE0D1E83CFAB82FFCD6FF00
          477B29FF008CA6C5AD5DB5DAC1654F6D8C76AD7B4820FC1CD494F9464F5BEB1D
          4F05F7D1D39E32BD318B977D4CB1EF731DBF28DBB36FE8B1ACBFFED3ECF43FC1
          FD054BA2FD54EAFF0058F3C3F22AB463BDFF00ADE6DE08303F9C657EB7E91F6B
          BF9B66C6ECA9779936E4FF00CFFC78711436A6D4E68E0EFAF2EE1BBFB552E8B3
          BA8626056DB72EC6D55B9C19BDC435A27F39CE796FB512A4963E9C5C673CFB29
          A185C63B35827FEA5AA97D5C606F42C270DC05B536E87FD21EB7EB1B5DFD5F53
          6AA7D73AAE166F4B76174ECBA2FBFA93DB8757A6F6BC7E93FA43BF465DFCCE2F
          AD6ADC631B5B1B5B06D63006B40E001A0082992F30FF001AD901FD63071E67D0
          C77BC8F0F55E1BFF00BACBD3D78CFD7BCC197F5AB39ECD6BC7D98ED3E75347AB
          FF0083BED624A7D17FC5FCFF00CD0E9F3E167DDEADABA1593F5531FECDF56BA5
          D5DC62D4E3F173458EFF00A4E5AC9294924924A7FFD5F554924925292492494A
          5E1DF597A7DDD1FEB0E5E3B01A765C6FC470ECC7BBD7C77B3FE2DDECFF00ADAF
          715E7BFE357A3D8E6E2F5AA9B2DA87D9B263B073B7E33CFF0023D575957FD7AB
          4BC14F5FF573ACD7D6FA3637506407D8DDB7B07E6DADF65CCFF3FE87FC1AD35E
          57FE2E7AFB7A76659816FF003196EDC62490F0368BBDBED6D6D6376647FD6EDF
          F06BD51253C27F8CBFAB193D41B4F57C3A7ED0FC661AF2A968DCF3503EA576D7
          5FF84F41EEB77B3E9ECB3F46BCF3A6F52CEE9B7D797D32F7516573B0B0CB083F
          498FABF9B7D4FF00CF67FE8C5EFCB2737EAAFD5CCEB1D6E574EA1F6BC973EC0D
          0D739C79739F5EC739253C753F5AECFD81D4FACE3B1EDCA0EC6C47B9EE0F731E
          EDFF00A6A8B9BF42AFB57E83D4FEDAE132B272B29CC766DEFC9752DD8C7DCE2F
          DAD1D9BBFE8AF75A3A2F48C7C0774DA70EA6E13E77E3EC058E279758D74FA8ED
          3F3D068FAB1F5771EC65B4F4DC665956AC78A9B20FEF6E8FA5FCA494F0FF00E2
          CFEAD5EECDFDBD9159AA8A98598848DA6C73C6C7DC3FE0595EE633FD27A9FF00
          06BD2D2492534FAC752A7A574CC9EA3791B31AB2F83F9CEE2BAC7F2ADB3656D5
          E1D898D91D4FA8538C7F49919D706BFCDD6BB75EEFFA563D761FE333EB1372F2
          59D1315C1D4E23BD4CB78320DD1FA2A3FF0041DAEF52DFF86F4BF3E942FF0016
          1D20E4F57B7AA3C7E8701A5959F1BAD1B7FF0002C7DFFF006F56929F50635AC6
          86306D6B400D038002924924A524924929FFD6F554924925292492494A55BA86
          063752C1BF0329BBA8C961AEC03983F9CD3F9AF6FD262B2924A7C53AA7D5EEBD
          F56B34DCFADE6BC6707559EC6934B84C35D76CFE67D46FB2FA2EFF00A75FE917
          A1FD56FAE3D17A8E3E2600B0D3D41CD2CFB2BC3DDEE6377BFD3B9C1CD753B5BF
          A1DF67FD35D3595B2C63ABB1A1F5BC16BD8E12083A39AE69FA4D72F20C717FD4
          AFADED6DD497635761631CE693BF1AD3B59750EFF4B4D67DFF00F095594A4A7D
          5F23A9E0635DE85D735B7067AA6AE5FB24B7D5F4DB2FF4F737E9A7C6EA387958
          433B1ACF5715C0B9B635AE321A60B98DDBBDDC2F3EFF0018A599DF5A3A36059B
          4E33D951F501024645DE8DBFA4FDCF4E96FA7FF18AB7F8D0CCBDBD5F17A631C6
          AC2C6C66D8CA584B1BB9EEB2BDDB59B5AEF4EBA195D5FE8FF4A8A9F49A3AA606
          4E5598745C2CC8A5AD7DB5B413B03BE87A8636B1EEFF0046EF7A8BFAB6031DB7
          D5DDEE2C71602E0D73496BDAF2DFA3B5CD583F57BA66563FD44A69E8AEAE9EA1
          978FEAB6F7821BEADDEE75AF86B9DBAA6BBF47EDFF00075AC0FACBD1FEACF40E
          9B8FD271F019D43AF66B436BB1DB9D6EE71D8ECB7C3B7FBEDFE8F57F85B7FE2E
          E414F74FEB9D36BBB16975BFA5CE3B71D806E71746EDAE63373ABDADFA4EB3D8
          B9BFAF3F5D99D3196749E98F9EA8F6816DA38C76B86EFED653D9FCCD7FE0FF00
          9FB7FC1D7766D78B81F513A0D79EFA187EB3E730D75B5CE0E2D24CBF6B5BEDF4
          3199B3D7F4FF009DB3F45EAFE9565FD47FABB57D63CFCBCCEAADB2EC7AC87BEC
          0E2D165EF76FB196387BACDCDFE7363925397D1BEA8F5EEB22BB31719CDC5B1D
          AE5DA435904FBEE1BDDEB647FD69BEF5EBDD0FA3E3744E994F4FC6F736A04BEC
          20073DEEF7596BF6FE739DFF0090576BAEBAAB6D553432B600D631A2006810D6
          B5A3E8B5AA49294924924A524924929FFFD7F554924925292492494A49249252
          9657D62FABB87F58307ECD905D55B5BBD4C6C9AFE9D560E1EDFDE67FA4AFF3FF
          00E33658B552494F98FD60FAA7F5B72198751C5AB2AEC16BABAF3F16C15FA8C2
          EF52BF5B16FD9E96432CFD26FAACB2BFD22D7EB9F57BA87D69E94CC8BB11D81D
          6B02595FAC59B72187E934BA87D8DAFD47377D7FE86CFF0083B576E924A78CFA
          AE3EB5F45E9870B27A55D91E983E80FB4505A3F7581CEB37D4CFE4FE9195FF00
          83FF004685F56FEAB7596F55CAFAC9F586B16F521B9D8B8E2C6905FB481EE05D
          5D75D6CFD5F119BBF47FCED9EF56BEB2FD78B3A175C674F38C2CA3D016BDE490
          E25CE786FA7FC9FD16CFEBD9FF0006B6BEAD758BBAD749ABA85D8E715D6B9E05
          66482D6B9CDADED710DDDBD8929E132FEA77D70EBBD6C66758A994B2E735B63D
          B6B5C29A019F431D8D977B5BBB67EFDFFA6B17A5E3E3D38D4578F43057554D0C
          6307000D022249294924924A5249249294924924A7FFD0F55492492529249249
          4A4924925292492494A4924925343AAF41E8FD60563A962D793E919ADCE04384
          FD2687B36BF63BF3EBFA0AED75D7556DAAA68657580D634680340DAD6B549249
          4A4924925292492494A4924925292492494FFFD9FFED16CC50686F746F73686F
          7020332E30003842494D04250000000000100000000000000000000000000000
          00003842494D03ED000000000010004800000001000100480000000100013842
          494D042600000000000E000000000000000000003F8000003842494D040D0000
          00000004000000783842494D04190000000000040000001E3842494D03F30000
          00000009000000000000000001003842494D040A00000000000100003842494D
          271000000000000A000100000000000000023842494D03F5000000000048002F
          66660001006C66660006000000000001002F6666000100A1999A000600000000
          0001003200000001005A00000006000000000001003500000001002D00000006
          0000000000013842494D03F80000000000700000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E8
          00003842494D040000000000000200013842494D040200000000000400000000
          3842494D043000000000000201013842494D042D000000000006000100000002
          3842494D0408000000000010000000010000024000000240000000003842494D
          041E000000000004000000003842494D041A0000000003490000000600000000
          0000000000000100000001000000000A0055006E007400690074006C00650064
          002D003200000001000000000000000000000000000000000000000100000000
          0000000000000100000001000000000000000000000000000000000001000000
          0000000000000000000000000000000010000000010000000000006E756C6C00
          00000200000006626F756E64734F626A63000000010000000000005263743100
          00000400000000546F70206C6F6E6700000000000000004C6566746C6F6E6700
          0000000000000042746F6D6C6F6E670000010000000000526768746C6F6E6700
          00010000000006736C69636573566C4C73000000014F626A6300000001000000
          000005736C6963650000001200000007736C69636549446C6F6E670000000000
          00000767726F757049446C6F6E6700000000000000066F726967696E656E756D
          0000000C45536C6963654F726967696E0000000D6175746F47656E6572617465
          640000000054797065656E756D0000000A45536C696365547970650000000049
          6D672000000006626F756E64734F626A63000000010000000000005263743100
          00000400000000546F70206C6F6E6700000000000000004C6566746C6F6E6700
          0000000000000042746F6D6C6F6E670000010000000000526768746C6F6E6700
          0001000000000375726C54455854000000010000000000006E756C6C54455854
          000000010000000000004D7367655445585400000001000000000006616C7454
          6167544558540000000100000000000E63656C6C54657874497348544D4C626F
          6F6C010000000863656C6C546578745445585400000001000000000009686F72
          7A416C69676E656E756D0000000F45536C696365486F727A416C69676E000000
          0764656661756C740000000976657274416C69676E656E756D0000000F45536C
          69636556657274416C69676E0000000764656661756C740000000B6267436F6C
          6F7254797065656E756D0000001145536C6963654247436F6C6F725479706500
          0000004E6F6E6500000009746F704F75747365746C6F6E67000000000000000A
          6C6566744F75747365746C6F6E67000000000000000C626F74746F6D4F757473
          65746C6F6E67000000000000000B72696768744F75747365746C6F6E67000000
          00003842494D042800000000000C000000013FF00000000000003842494D0414
          000000000004000000023842494D040C0000000010D500000001000000A00000
          00A0000001E000012C00000010B900180001FFD8FFE000104A46494600010200
          004800480000FFED000C41646F62655F434D0001FFEE000E41646F6265006480
          00000001FFDB0084000C08080809080C09090C110B0A0B11150F0C0C0F151813
          1315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14140E0E0E0E1411
          0C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0CFFC000110800A000A003012200021101031101FFDD00
          04000AFFC4013F00000105010101010101000000000000000300010204050607
          08090A0B0100010501010101010100000000000000010002030405060708090A
          0B1000010401030204020507060805030C330100021103042112310541516113
          22718132061491A1B14223241552C16233347282D14307259253F0E1F1637335
          16A2B283264493546445C2A3743617D255E265F2B384C3D375E3F3462794A485
          B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F637475767778797A7B7
          C7D7E7F711000202010204040304050607070605350100021103213112044151
          617122130532819114A1B14223C152D1F0332462E1728292435315637334F125
          0616A2B283072635C2D2449354A317644555367465E2F2B384C3D375E3F34694
          A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F627374757677787
          97A7B7C7FFDA000C03010002110311003F00F554924925292492494A49249252
          92492494A4924925292492494A4924925292492494A4924925292492494FFFD0
          F554924925292492494A49249252924942DB6AA6B75B73DB5D7582E7BDE435AD
          035739CE77B5AD494CD258D5759CDEA85DFB1B1C0C61A0EA3940B6A77F2B171D
          BB6FCB67FC2FEAF47FA3B5E88CE8B91649CEEA59590E7082DADC31983FA8DC3F
          4AEFF3EFB1253AA92CDFF9BFD3439AF02E0F6990F1917CCFF28FADEE43B3A5F5
          5A44F4EEA6F046A2ACC60BEB3FC9758DF4729BFF00B10929D6496457D75D8D75
          78BD6E918175AE0CA7203B7E2DAE3F4595E496B3D2B9FF00998F92CA9FFE8BD6
          5AE9294924924A5249249294924924A7FFD1F554924925292492494A49251B1E
          CAD8EB2C7063180B9CE2600035739C525357AAF55C2E918366766BF6D5582606
          AE7182EF4EB6FE73DDB7FD6B581D2FA5E6FD61B1BD6BEB06E6E2BC87E0F469FD
          1319FE0EECC6FF00DA9BDFFCE6DB3D9FF9EAAA78D5647D6EFAC8ECAC9FF913A6
          ED35D2468FB4EDB6BAAC9FCEDBE964E537F33F57C5FF004CBB7494B000081A00
          9D24925292436DD53AD7521D363002E6F80288929164E363E550FC7C9A997D16
          8DB655600E6B878398EF6B9738F391F54EE04937740B9CD6FAAF24BF0C93B40B
          DFEE75B82EFA2CBECFD2E37F877FA3EF6750A16D555D53E9B982CAAC69658C70
          05AE6B86D731CD3F49AE6A4A5576D56B77D4F6BDB244B482247234535C8F4DC8
          BFEAE7553D0AF2EB711FFA5E9F6BCF38C34BEB739DFCE6474C9AF77BFF0049D3
          FF0049FE0975A082010641D41092974924925292492494FF00FFD2F554924925
          292492494A5C8FF8C6EB5F62E98CE9F5C9B3364D8073E9336EEAFF00F426D7D5
          47FC5FACBAE5E68EB59F583FC65B58F9762E1586B681A88C40EB3DDF9BB1F9DB
          92F153DC7D5BE96EE93D1B1F0ED3BB2003664BFF007AEB0FAB7BBFEDC7ED6FF2
          169A4924A5249896CED27570303BE8A9745B9F6F4DA85A22DA7751682E2E3BAA
          73A874BDFEE76EF4F724A7CEBA5F5AEB03EB50C13FA4B5DD56DDCD76AE6B4BEC
          6646DFE47D93FF0003A6A5E9D93915E352EBED9D8D8981275219FF007E58B474
          EE9CDFAE99596DA00CBFB15567A9E6F7DD43EC6FE6FA9E963D556FFDC577AE0F
          528C7C589FB4E552C222416B1FF6AB41FF00ACE3D88F553A49260E6925A0EA39
          1E129D05385F5C7A5DB9FD20DF8807ED0E9CE197864F77D7FCE507F799934FA9
          4EC50FA9DD5F1FA874E6574B8EC631B650D719736A7CB452E3F9DF65B996E37F
          C557459FE15740BCD7A3E50FABDF5CAFE90E78AF1C65B9B4B60EB5E6065B552D
          207F83B5D8BFF82A4A7D292492494A49249253FFD3F554924925292492494873
          32062E25F92448A2B7D841D3E834BFF82F36FF001575FAFD67332ED25D6B71E4
          93DDD7BFD4B5FF00E756BB6FAE36BEAFAADD51F5E8EFB35827C9C363BFE8B972
          FF00E29EA781D4ED91E99753581DF73458FF00F376D8D4BA7D54FA0A492A5D63
          39DD3F01D96D00ECB2A6BA4130C7DB5D56BB4FDDADEF494C3336B3ABF4EB1C09
          2F17D2D708805CD65FEEFCEFA38AE5CCFD6B6FD6EE8FD45FD4BA0175B8395B5D
          938ECA85DB6E60F4CD8FA63D6F4AFA995EFB319DFE0FF49FBEBA3EBFBABC3AF3
          9825D81733208FF8369F4F2BFCDC4B6F72BD5E4D16B9ADA9E2CDECF51AE6FB9A
          5BFBDBDBEDFCE454F036FD6DC97E4BBA8E161670EB4FC5AEAB7A79C72EA435AE
          7B997BEC2DF5FECFEA5F66CF4D95BEDFE6FF0044B53EA7627D68CBCB7758FAC8
          F78F4D8EAB0B1EC6B6B703616BAFBCD3506FA5FCDB2AABD5FD2FF39FF5CB86D6
          B7FC6039A5FB40E8E0B813034C83EE3FD45AE3AB601F509B4359533D4758ED1A
          5B05DBEB73BF9C635BF9ECF621AA9174EB4DBD43A9999657757537FB34D563FF
          00E95AB45677420F7607DAAC116665966491FC9B1C5D40FECE37A2D53E8D9CFE
          A180329E36EEB6E6B4447B2BB6DA6AFF00C0EB6A4A6F2F29FF0019D8FF0065FA
          C95E5D5ED7DF8CCB777FC2D2F735AE1FD568A17AB2F33FF1B0C8EA7D39FF00BF
          45CDFF0035F57FE95494FA2E1648CBC3A3280817D6CB40F0DED0FF00FBF23AC4
          FA9590EC8FAABD32C77D26D02B3FF5A268FF00D16B6D25292492494FFFD4F554
          924925292492494E2FD74AFD4FAA9D55B3118CF7FF00983D4DBFDAD8B8BFF155
          9659D5B33109F6DF40B00FE554FDBFF537AF45EA38ACCCE9F9388F60B1B7D4FA
          CB0E80EE696ED5E41F50F35989F59F02CBC96B6CDD438FF2AC6963377FD77624
          7653ED0A875DC7764F47CCA9925E6A73981BC97347A9586FF6DAAFA6E7429291
          63DD56662557B61F4E456D78EE0B5EDDDFF49AE5E3BD67EAC759FAB1D41D6633
          6F6D153BF53EA18FB8FB3FC1B6D7D5FCDDAD6FB2C65CDF4EEFE5AF4FE89955E2
          5193D3F2AC654EE9B73AB05EE0D1E83CFAB82FFCD6FF00477B29FF008CA6C5AD
          5DB5DAC1654F6D8C76AD7B4820FC1CD494F9464F5BEB1D4F05F7D1D39E32BD31
          8B977D4CB1EF731DBF28DBB36FE8B1ACBFFED3ECF43FC1FD054BA2FD54EAFF00
          58F3C3F22AB463BDFF00ADE6DE08303F9C657EB7E91F6BBF9B66C6ECA9779936
          E4FF00CFFC78711436A6D4E68E0EFAF2EE1BBFB552E8B3BA8626056DB72EC6D5
          5B9C19BDC435A27F39CE796FB512A4963E9C5C673CFB29A185C63B35827FEA5A
          A97D5C606F42C270DC05B536E87FD21EB7EB1B5DFD5F536AA7D73AAE166F4B76
          174ECBA2FBFA93DB8757A6F6BC7E93FA43BF465DFCCE2FAD6ADC631B5B1B5B06
          D63006B40E001A0082992F30FF001AD901FD63071E67D0C77BC8F0F55E1BFF00
          BACBD3D78CFD7BCC197F5AB39ECD6BC7D98ED3E75347ABFF0083BED624A7D17F
          C5FCFF00CD0E9F3E167DDEADABA1593F5531FECDF56BA5D5DC62D4E3F173458E
          FF00A4E5AC9294924924A7FFD5F554924925292492494A5E1DF597A7DDD1FEB0
          E5E3B01A765C6FC470ECC7BBD7C77B3FE2DDECFF00ADAF715E7BFE357A3D8E6E
          2F5AA9B2DA87D9B263B073B7E33CFF0023D575957FD7AB4BC14F5FF573ACD7D6
          FA3637506407D8DDB7B07E6DADF65CCFF3FE87FC1AD35E57FE2E7AFB7A766598
          16FF003196EDC62490F0368BBDBED6D6D6376647FD6EDFF06BD51253C27F8CBF
          AB193D41B4F57C3A7ED0FC661AF2A968DCF3503EA576D75FF84F41EEB77B3E9E
          CB3F46BCF3A6F52CEE9B7D797D32F7516573B0B0CB083F498FABF9B7D4FF00CF
          67FE8C5EFCB2737EAAFD5CCEB1D6E574EA1F6BC973EC0D0D739C79739F5EC739
          253C753F5AECFD81D4FACE3B1EDCA0EC6C47B9EE0F731EEDFF00A6A8B9BF42AF
          B57E83D4FEDAE132B272B29CC766DEFC9752DD8C7DCE2FDAD1D9BBFE8AF75A3A
          2F48C7C0774DA70EA6E13E77E3EC058E279758D74FA8ED3F3D068FAB1F5771EC
          65B4F4DC665956AC78A9B20FEF6E8FA5FCA494F0FF00E2CFEAD5EECDFDBD9159
          AA8A98598848DA6C73C6C7DC3FE0595EE633FD27A9FF0006BD2D2492534FAC75
          2A7A574CC9EA3791B31AB2F83F9CEE2BAC7F2ADB3656D5E1D898D91D4FA8538C
          7F49919D706BFCDD6BB75EEFFA563D761FE333EB1372F259D1315C1D4E23BD4C
          B78320DD1FA2A3FF0041DAEF52DFF86F4BF3E942FF00161D20E4F57B7AA3C7E8
          701A5959F1BAD1B7FF0002C7DFFF006F56929F50635AC686306D6B400D038002
          924924A524924929FFD6F554924925292492494A55BA86063752C1BF0329BBA8
          C961AEC03983F9CD3F9AF6FD262B2924A7C53AA7D5EEBDF56B34DCFADE6BC670
          7559EC6934B84C35D76CFE67D46FB2FA2EFF00A75FE917A1FD56FAE3D17A8E3E
          2600B0D3D41CD2CFB2BC3DDEE6377BFD3B9C1CD753B5BFA1DF67FD35D3595B2C
          63ABB1A1F5BC16BD8E12083A39AE69FA4D72F20C717FD4AFADED6DD497635761
          631CE693BF1AD3B59750EFF4B4D67DFF00F095594A4A7D5F23A9E0635DE85D73
          5B7067AA6AE5FB24B7D5F4DB2FF4F737E9A7C6EA387958433B1ACF5715C0B9B6
          35AE321A60B98DDBBDDC2F3EFF0018A599DF5A3A36059B4E33D951F501024645
          DE8DBFA4FDCF4E96FA7FF18AB7F8D0CCBDBD5F17A631C6AC2C6C66D8CA584B1B
          B9EEB2BDDB59B5AEF4EBA195D5FE8FF4A8A9F49A3AA6064E5598745C2CC8A5AD
          7DB5B413B03BE87A8636B1EEFF0046EF7A8BFAB6031DB7D5DDEE2C71602E0D73
          496BDAF2DFA3B5CD583F57BA66563FD44A69E8AEAE9EA1978FEAB6F7821BEADD
          EE75AF86B9DBAA6BBF47EDFF00075AC0FACBD1FEACF40E9B8FD271F019D43AF6
          6B436BB1DB9D6EE71D8ECB7C3B7FBEDFE8F57F85B7FE2EE414F74FEB9D36BBB1
          6975BFA5CE3B71D806E71746EDAE63373ABDADFA4EB3D8B9BFAF3F5D99D31967
          49E98F9EA8F6816DA38C76B86EFED653D9FCCD7FE0FF009FB7FC1D7766D78B81
          F513A0D79EFA187EB3E730D75B5CE0E2D24CBF6B5BEDF43199B3D7F4FF009DB3
          F45EAFE9565FD47FABB57D63CFCBCCEAADB2EC7AC87BEC0E2D165EF76FB19638
          7BACDCDFE7363925397D1BEA8F5EEB22BB31719CDC5B1DAE5DA435904FBEE1BD
          DEB647FD69BEF5EBDD0FA3E3744E994F4FC6F736A04BEC20073DEEF7596BF6FE
          739DFF0090576BAEBAAB6D553432B600D631A2006810D6B5A3E8B5AA49294924
          924A524924929FFFD7F554924925292492494A492492529657D62FABB87F5830
          7ECD905D55B5BBD4C6C9AFE9D560E1EDFDE67FA4AFF3FF00E33658B552494F98
          FD60FAA7F5B72198751C5AB2AEC16BABAF3F16C15FA8C2EF52BF5B16FD9E9643
          2CFD26FAACB2BFD22D7EB9F57BA87D69E94CC8BB11D81D6B02595FAC59B72187
          E934BA87D8DAFD47377D7FE86CFF0083B576E924A78CFAAE3EB5F45E9870B27A
          55D91E983E80FB4505A3F7581CEB37D4CFE4FE9195FF0083FF004685F56FEAB7
          596F55CAFAC9F586B16F521B9D8B8E2C6905FB481EE05D5D75D6CFD5F119BBF4
          7FCED9EF56BEB2FD78B3A175C674F38C2CA3D016BDE490E25CE786FA7FC9FD16
          CFEBD9FF0006B6BEAD758BBAD749ABA85D8E715D6B9E0566482D6B9CDADED710
          DDDBD8929E132FEA77D70EBBD6C66758A994B2E735B63DB6B5C29A019F431D8D
          977B5BBB67EFDFFA6B17A5E3E3D38D4578F43057554D0C6307000D0222492949
          24924A5249249294924924A7FFD0F554924925292492494A4924925292492494
          A4924925343AAF41E8FD60563A962D793E919ADCE04384FD2687B36BF63BF3EB
          FA0AED75D7556DAAA68657580D634680340DAD6B5492494A4924925292492494
          A4924925292492494FFFD9003842494D04210000000000550000000101000000
          0F00410064006F00620065002000500068006F0074006F00730068006F007000
          00001300410064006F00620065002000500068006F0074006F00730068006F00
          70002000430053003200000001003842494D0406000000000007000800000001
          0100FFE13AB1687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E
          302F003C3F787061636B657420626567696E3D22EFBBBF222069643D2257354D
          304D7043656869487A7265537A4E54637A6B633964223F3E0A3C783A786D706D
          65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A78
          6D70746B3D22332E312E312D313131223E0A2020203C7264663A52444620786D
          6C6E733A7264663D22687474703A2F2F7777772E77332E6F72672F313939392F
          30322F32322D7264662D73796E7461782D6E7323223E0A2020202020203C7264
          663A4465736372697074696F6E207264663A61626F75743D22220A2020202020
          20202020202020786D6C6E733A64633D22687474703A2F2F7075726C2E6F7267
          2F64632F656C656D656E74732F312E312F223E0A2020202020202020203C6463
          3A666F726D61743E696D6167652F6A7065673C2F64633A666F726D61743E0A20
          20202020203C2F7264663A4465736372697074696F6E3E0A2020202020203C72
          64663A4465736372697074696F6E207264663A61626F75743D22220A20202020
          2020202020202020786D6C6E733A7861703D22687474703A2F2F6E732E61646F
          62652E636F6D2F7861702F312E302F223E0A2020202020202020203C7861703A
          43726561746F72546F6F6C3E41646F62652050686F746F73686F702043533220
          57696E646F77733C2F7861703A43726561746F72546F6F6C3E0A202020202020
          2020203C7861703A437265617465446174653E323030372D31302D3137543136
          3A35323A31302D30383A30303C2F7861703A437265617465446174653E0A2020
          202020202020203C7861703A4D6F64696679446174653E323030372D31302D31
          375431363A35323A31302D30383A30303C2F7861703A4D6F6469667944617465
          3E0A2020202020202020203C7861703A4D65746164617461446174653E323030
          372D31302D31375431363A35323A31302D30383A30303C2F7861703A4D657461
          64617461446174653E0A2020202020203C2F7264663A4465736372697074696F
          6E3E0A2020202020203C7264663A4465736372697074696F6E207264663A6162
          6F75743D22220A202020202020202020202020786D6C6E733A7861704D4D3D22
          687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F22
          0A202020202020202020202020786D6C6E733A73745265663D22687474703A2F
          2F6E732E61646F62652E636F6D2F7861702F312E302F73547970652F5265736F
          7572636552656623223E0A2020202020202020203C7861704D4D3A446F63756D
          656E7449443E757569643A393846453445304331343744444331313944414441
          45463833363832353438363C2F7861704D4D3A446F63756D656E7449443E0A20
          20202020202020203C7861704D4D3A496E7374616E636549443E757569643A39
          394645344530433134374444433131394441444145463833363832353438363C
          2F7861704D4D3A496E7374616E636549443E0A2020202020202020203C786170
          4D4D3A4465726976656446726F6D207264663A7061727365547970653D225265
          736F75726365223E0A2020202020202020202020203C73745265663A696E7374
          616E636549443E757569643A3937464534453043313437444443313139444144
          4145463833363832353438363C2F73745265663A696E7374616E636549443E0A
          2020202020202020202020203C73745265663A646F63756D656E7449443E7575
          69643A3937464534453043313437444443313139444144414546383336383235
          3438363C2F73745265663A646F63756D656E7449443E0A202020202020202020
          3C2F7861704D4D3A4465726976656446726F6D3E0A2020202020203C2F726466
          3A4465736372697074696F6E3E0A2020202020203C7264663A44657363726970
          74696F6E207264663A61626F75743D22220A202020202020202020202020786D
          6C6E733A746966663D22687474703A2F2F6E732E61646F62652E636F6D2F7469
          66662F312E302F223E0A2020202020202020203C746966663A4F7269656E7461
          74696F6E3E313C2F746966663A4F7269656E746174696F6E3E0A202020202020
          2020203C746966663A585265736F6C7574696F6E3E3732303030302F31303030
          303C2F746966663A585265736F6C7574696F6E3E0A2020202020202020203C74
          6966663A595265736F6C7574696F6E3E3732303030302F31303030303C2F7469
          66663A595265736F6C7574696F6E3E0A2020202020202020203C746966663A52
          65736F6C7574696F6E556E69743E323C2F746966663A5265736F6C7574696F6E
          556E69743E0A2020202020202020203C746966663A4E61746976654469676573
          743E3235362C3235372C3235382C3235392C3236322C3237342C3237372C3238
          342C3533302C3533312C3238322C3238332C3239362C3330312C3331382C3331
          392C3532392C3533322C3330362C3237302C3237312C3237322C3330352C3331
          352C33333433323B414441364544343330384437414141304545314438373539
          35384636443144333C2F746966663A4E61746976654469676573743E0A202020
          2020203C2F7264663A4465736372697074696F6E3E0A2020202020203C726466
          3A4465736372697074696F6E207264663A61626F75743D22220A202020202020
          202020202020786D6C6E733A657869663D22687474703A2F2F6E732E61646F62
          652E636F6D2F657869662F312E302F223E0A2020202020202020203C65786966
          3A506978656C5844696D656E73696F6E3E3235363C2F657869663A506978656C
          5844696D656E73696F6E3E0A2020202020202020203C657869663A506978656C
          5944696D656E73696F6E3E3235363C2F657869663A506978656C5944696D656E
          73696F6E3E0A2020202020202020203C657869663A436F6C6F7253706163653E
          313C2F657869663A436F6C6F7253706163653E0A2020202020202020203C6578
          69663A4E61746976654469676573743E33363836342C34303936302C34303936
          312C33373132312C33373132322C34303936322C34303936332C33373531302C
          34303936342C33363836372C33363836382C33333433342C33333433372C3334
          3835302C33343835322C33343835352C33343835362C33373337372C33373337
          382C33373337392C33373338302C33373338312C33373338322C33373338332C
          33373338342C33373338352C33373338362C33373339362C34313438332C3431
          3438342C34313438362C34313438372C34313438382C34313439322C34313439
          332C34313439352C34313732382C34313732392C34313733302C34313938352C
          34313938362C34313938372C34313938382C34313938392C34313939302C3431
          3939312C34313939322C34313939332C34313939342C34313939352C34313939
          362C34323031362C302C322C342C352C362C372C382C392C31302C31312C3132
          2C31332C31342C31352C31362C31372C31382C32302C32322C32332C32342C32
          352C32362C32372C32382C33303B333330373730383137414234323842383543
          33363644414444373839434339323C2F657869663A4E61746976654469676573
          743E0A2020202020203C2F7264663A4465736372697074696F6E3E0A20202020
          20203C7264663A4465736372697074696F6E207264663A61626F75743D22220A
          202020202020202020202020786D6C6E733A70686F746F73686F703D22687474
          703A2F2F6E732E61646F62652E636F6D2F70686F746F73686F702F312E302F22
          3E0A2020202020202020203C70686F746F73686F703A486973746F72792F3E0A
          2020202020202020203C70686F746F73686F703A436F6C6F724D6F64653E333C
          2F70686F746F73686F703A436F6C6F724D6F64653E0A2020202020202020203C
          70686F746F73686F703A49434350726F66696C653E7352474220494543363139
          36362D322E313C2F70686F746F73686F703A49434350726F66696C653E0A2020
          202020203C2F7264663A4465736372697074696F6E3E0A2020203C2F7264663A
          5244463E0A3C2F783A786D706D6574613E0A2020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020200A202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020200A20202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          0A20202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020200A2020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020200A202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020200A20202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020200A2020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020200A202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020200A20
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020200A20202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020200A2020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020200A202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020200A20202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020200A2020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020200A202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          200A202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020200A20202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020200A2020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020200A202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020200A20202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020200A2020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020202020200A
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020200A202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020200A20202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020200A2020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020200A202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020200A20202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020202020200A2020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20200A2020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020200A202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020200A20202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020200A2020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020200A202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020200A20202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          0A20202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020200A2020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020200A202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020200A20202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020200A2020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020200A202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020200A20
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020200A20202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020200A2020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020200A202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020200A20202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020200A2020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020200A202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          200A202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020200A20202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020200A2020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020200A202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020200A20202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020200A2020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020202020200A
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020200A202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020200A20202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020200A2020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020200A202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020200A20202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020202020200A2020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20200A2020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020200A202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020200A20202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020200A2020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020200A202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020200A20202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          0A20202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020200A2020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020200A202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020200A20202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020200A2020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020200A202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020200A20
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020200A20202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020200A2020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020200A202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020200A20202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020200A2020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020200A202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          200A202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020200A20202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020200A2020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020200A202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020200A20202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020200A2020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020202020200A
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020200A202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020200A20202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020200A2020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020200A202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020200A20202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020202020200A2020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20200A2020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020200A202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020200A20202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020200A2020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020200A202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020200A20202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          0A20202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020200A2020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020200A202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020200A20202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020200A2020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020200A202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020200A20
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020200A20202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020200A2020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020200A202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020200A20202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020200A2020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020200A202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          200A202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020200A20202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020200A2020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020200A202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020200A20202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020200A2020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020202020200A
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020200A202020202020202020202020202020202020202020202020202020
          200A3C3F787061636B657420656E643D2277223F3EFFE20C584943435F50524F
          46494C4500010100000C484C696E6F021000006D6E74725247422058595A2007
          CE00020009000600310000616373704D53465400000000494543207352474200
          00000000000000000000010000F6D6000100000000D32D485020200000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000011637072740000015000000033646573630000018400
          00006C77747074000001F000000014626B707400000204000000147258595A00
          000218000000146758595A0000022C000000146258595A000002400000001464
          6D6E640000025400000070646D6464000002C400000088767565640000034C00
          00008676696577000003D4000000246C756D69000003F8000000146D65617300
          00040C0000002474656368000004300000000C725452430000043C0000080C67
          5452430000043C0000080C625452430000043C0000080C746578740000000043
          6F70797269676874202863292031393938204865776C6574742D5061636B6172
          6420436F6D70616E790000646573630000000000000012735247422049454336
          313936362D322E31000000000000000000000012735247422049454336313936
          362D322E31000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000058595A200000000000
          00F35100010000000116CC58595A200000000000000000000000000000000058
          595A200000000000006FA2000038F50000039058595A20000000000000629900
          00B785000018DA58595A2000000000000024A000000F840000B6CF6465736300
          0000000000001649454320687474703A2F2F7777772E6965632E636800000000
          000000000000001649454320687474703A2F2F7777772E6965632E6368000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000064657363000000000000002E494543203631393636
          2D322E312044656661756C742052474220636F6C6F7572207370616365202D20
          7352474200000000000000000000002E4945432036313936362D322E31204465
          6661756C742052474220636F6C6F7572207370616365202D2073524742000000
          0000000000000000000000000000000000000064657363000000000000002C52
          65666572656E63652056696577696E6720436F6E646974696F6E20696E204945
          4336313936362D322E3100000000000000000000002C5265666572656E636520
          56696577696E6720436F6E646974696F6E20696E2049454336313936362D322E
          3100000000000000000000000000000000000000000000000000007669657700
          0000000013A4FE00145F2E0010CF140003EDCC0004130B00035C9E0000000158
          595A2000000000004C09560050000000571FE76D656173000000000000000100
          0000000000000000000000000000000000028F00000002736967200000000043
          52542063757276000000000000040000000005000A000F00140019001E002300
          28002D00320037003B00400045004A004F00540059005E00630068006D007200
          77007C00810086008B00900095009A009F00A400A900AE00B200B700BC00C100
          C600CB00D000D500DB00E000E500EB00F000F600FB01010107010D0113011901
          1F0125012B01320138013E0145014C0152015901600167016E0175017C018301
          8B0192019A01A101A901B101B901C101C901D101D901E101E901F201FA020302
          0C0214021D0226022F02380241024B0254025D02670271027A0284028E029802
          A202AC02B602C102CB02D502E002EB02F50300030B03160321032D0338034303
          4F035A03660372037E038A039603A203AE03BA03C703D303E003EC03F9040604
          130420042D043B0448045504630471047E048C049A04A804B604C404D304E104
          F004FE050D051C052B053A05490558056705770586059605A605B505C505D505
          E505F6060606160627063706480659066A067B068C069D06AF06C006D106E306
          F507070719072B073D074F076107740786079907AC07BF07D207E507F8080B08
          1F08320846085A086E0882089608AA08BE08D208E708FB09100925093A094F09
          640979098F09A409BA09CF09E509FB0A110A270A3D0A540A6A0A810A980AAE0A
          C50ADC0AF30B0B0B220B390B510B690B800B980BB00BC80BE10BF90C120C2A0C
          430C5C0C750C8E0CA70CC00CD90CF30D0D0D260D400D5A0D740D8E0DA90DC30D
          DE0DF80E130E2E0E490E640E7F0E9B0EB60ED20EEE0F090F250F410F5E0F7A0F
          960FB30FCF0FEC1009102610431061107E109B10B910D710F511131131114F11
          6D118C11AA11C911E81207122612451264128412A312C312E313031323134313
          63138313A413C513E5140614271449146A148B14AD14CE14F015121534155615
          78159B15BD15E0160316261649166C168F16B216D616FA171D17411765178917
          AE17D217F7181B18401865188A18AF18D518FA19201945196B199119B719DD1A
          041A2A1A511A771A9E1AC51AEC1B141B3B1B631B8A1BB21BDA1C021C2A1C521C
          7B1CA31CCC1CF51D1E1D471D701D991DC31DEC1E161E401E6A1E941EBE1EE91F
          131F3E1F691F941FBF1FEA20152041206C209820C420F0211C2148217521A121
          CE21FB22272255228222AF22DD230A23382366239423C223F0241F244D247C24
          AB24DA250925382568259725C725F726272657268726B726E827182749277A27
          AB27DC280D283F287128A228D429062938296B299D29D02A022A352A682A9B2A
          CF2B022B362B692B9D2BD12C052C392C6E2CA22CD72D0C2D412D762DAB2DE12E
          162E4C2E822EB72EEE2F242F5A2F912FC72FFE3035306C30A430DB3112314A31
          8231BA31F2322A3263329B32D4330D3346337F33B833F1342B3465349E34D835
          13354D358735C235FD3637367236AE36E937243760379C37D738143850388C38
          C839053942397F39BC39F93A363A743AB23AEF3B2D3B6B3BAA3BE83C273C653C
          A43CE33D223D613DA13DE03E203E603EA03EE03F213F613FA23FE24023406440
          A640E74129416A41AC41EE4230427242B542F7433A437D43C044034447448A44
          CE45124555459A45DE4622466746AB46F04735477B47C04805484B489148D749
          1D496349A949F04A374A7D4AC44B0C4B534B9A4BE24C2A4C724CBA4D024D4A4D
          934DDC4E254E6E4EB74F004F494F934FDD5027507150BB51065150519B51E652
          31527C52C75313535F53AA53F65442548F54DB5528557555C2560F565C56A956
          F75744579257E0582F587D58CB591A596959B85A075A565AA65AF55B455B955B
          E55C355C865CD65D275D785DC95E1A5E6C5EBD5F0F5F615FB36005605760AA60
          FC614F61A261F56249629C62F06343639763EB6440649464E9653D659265E766
          3D669266E8673D679367E9683F689668EC6943699A69F16A486A9F6AF76B4F6B
          A76BFF6C576CAF6D086D606DB96E126E6B6EC46F1E6F786FD1702B708670E071
          3A719571F0724B72A67301735D73B87414747074CC7528758575E1763E769B76
          F8775677B37811786E78CC792A798979E77A467AA57B047B637BC27C217C817C
          E17D417DA17E017E627EC27F237F847FE5804780A8810A816B81CD8230829282
          F4835783BA841D848084E3854785AB860E867286D7873B879F8804886988CE89
          33899989FE8A648ACA8B308B968BFC8C638CCA8D318D988DFF8E668ECE8F368F
          9E9006906E90D6913F91A89211927A92E3934D93B69420948A94F4955F95C996
          34969F970A977597E0984C98B89924999099FC9A689AD59B429BAF9C1C9C899C
          F79D649DD29E409EAE9F1D9F8B9FFAA069A0D8A147A1B6A226A296A306A376A3
          E6A456A4C7A538A5A9A61AA68BA6FDA76EA7E0A852A8C4A937A9A9AA1CAA8FAB
          02AB75ABE9AC5CACD0AD44ADB8AE2DAEA1AF16AF8BB000B075B0EAB160B1D6B2
          4BB2C2B338B3AEB425B49CB513B58AB601B679B6F0B768B7E0B859B8D1B94AB9
          C2BA3BBAB5BB2EBBA7BC21BC9BBD15BD8FBE0ABE84BEFFBF7ABFF5C070C0ECC1
          67C1E3C25FC2DBC358C3D4C451C4CEC54BC5C8C646C6C3C741C7BFC83DC8BCC9
          3AC9B9CA38CAB7CB36CBB6CC35CCB5CD35CDB5CE36CEB6CF37CFB8D039D0BAD1
          3CD1BED23FD2C1D344D3C6D449D4CBD54ED5D1D655D6D8D75CD7E0D864D8E8D9
          6CD9F1DA76DAFBDB80DC05DC8ADD10DD96DE1CDEA2DF29DFAFE036E0BDE144E1
          CCE253E2DBE363E3EBE473E4FCE584E60DE696E71FE7A9E832E8BCE946E9D0EA
          5BEAE5EB70EBFBEC86ED11ED9CEE28EEB4EF40EFCCF058F0E5F172F1FFF28CF3
          19F3A7F434F4C2F550F5DEF66DF6FBF78AF819F8A8F938F9C7FA57FAE7FB77FC
          07FC98FD29FDBAFE4BFEDCFF6DFFFFFFEE000E41646F626500644000000001FF
          DB00840001010101010101010101010101010101010101010101010101010101
          0101010101010101010101010101010202020202020202020202030303030303
          0303030301010101010101010101010202010202030303030303030303030303
          0303030303030303030303030303030303030303030303030303030303030303
          0303030303FFC00011080100010003011100021101031101FFDD00040020FFC4
          01A20000000602030100000000000000000000070806050409030A0201000B01
          00000603010101000000000000000000060504030702080109000A0B10000201
          0304010303020303030206097501020304110512062107132200083114413223
          1509514216612433175271811862912543A1B1F02634720A19C1D13527E15336
          82F192A24454734546374763285556571AB2C2D2E2F2648374938465A3B3C3D3
          E3293866F3752A393A48494A58595A6768696A767778797A85868788898A9495
          969798999AA4A5A6A7A8A9AAB4B5B6B7B8B9BAC4C5C6C7C8C9CAD4D5D6D7D8D9
          DAE4E5E6E7E8E9EAF4F5F6F7F8F9FA110002010302040403050404040606056D
          010203110421120531060022134151073261147108428123911552A162163309
          B124C1D14372F017E18234259253186344F1A2B226351954364564270A738393
          4674C2D2E2F255657556378485A3B3C3D3E3F3291A94A4B4C4D4E4F495A5B5C5
          D5E5F52847576638768696A6B6C6D6E6F667778797A7B7C7D7E7F74858687888
          98A8B8C8D8E8F839495969798999A9B9C9D9E9F92A3A4A5A6A7A8A9AAABACADA
          EAFAFFDA000C03010002110311003F00DFE3DFBAF75EF7EEBDD7BDFBAF75EF7E
          EBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75
          EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFB
          AF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7
          BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7FFFD0DFE3DFBA
          F75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7B
          DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEB
          DD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF
          7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF
          75EF7EEBDD7FFFD1DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7
          EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF7
          5EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDF
          BAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD
          7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7FFFD2DFE3DFBAF75EF7EEBDD7BDFB
          AF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7
          BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EE
          BDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75E
          F7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7FFFD3
          DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF
          7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF
          74DD5598C4D0A3C95B94C751A445848F555B4D4E9195608C1DA59502157600DF
          E84DBDE890A0962001D6C026941D07B90EF1E9AC5544B4B93ED4EBEA0A9806A9
          E9EAF76E0E9E6801FCCF1CB5AAD08BF1EA039E3EBEEA24888A89929FE997FCFD
          78AB0A551B3F23D2A705BE765EE8A45AFDB9BB36E67689EFA2AB1599C7D753C8
          15B4168E5A7A8911D03822E0917047D41F7B57471A924565F50411FB475B28E0
          D0A1AFD9D2ABDDBAAF5EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BD
          FBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBD
          D7FFD4DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFB
          AF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD639A58E089E699C471
          46A59DDBE8A07FBC927F00724FBD80490071EBDD578768FF00327E93DAFBD67E
          A3EA4C6EE7F919DCD6AD862D8BD3F8F4DCD0E36B31F52F4B5ABBAB71D34C70D8
          0A5C74F1BAD6FEE4F5541A1FEE208F4F2EC716B7551520F123217D351F2AF97A
          F5A664400B38AFA57B8FD83A0DABBAA3F98BFC95956BF7B777E07E22EC1A9A99
          67A6D95D4988A4DE1D87538D12FF0091419BDF1939E3A2C7564D46DA9AA3180A
          16600C0B6605D74B75528F236AF58CD0FED20FE78EABE34A74B411269FF862D7
          F90603ECE97386FE573F1DAA716F43DBB98ED6EFEAC96B06466CAF6AF636E1C8
          D6B5732A8965070B53848825D7D0A146904DEFF8A09A35431ADBA329E25C0727
          EDA8A7F2E98FA762C1DAE65D5E818803EC03FCFD0BB41FCBF7E1B50626A708BF
          1FB60565155218DDF278C6C96463430FDB95A7CBD6CD36569BF6B8052652AD76
          04312C6BE3202A56D2DC01E5E1474FCC1520F57F030419E535F591F1F6671D23
          323FCB57E2A7F0BA5C76CFDA7B87AD26A0AA9EAF1F99D83BDB75617378EA8AA3
          7A99A8720F95A9961926205C36B4FCE9D5660F477491865FA1B7D27C8468B4FB
          28053AAFD3B860CB79386FF9A8C7FC24F411EE8F88FF00363AB96AB27F183E65
          E7372434F1D3438BEBCF91F8BA5DE18F929E0447A95ADEC4A2A2977296A9922B
          2469448DEBBBCF750C6B1C762CA43CB70B211C4B295AFD9A2A07E64FCBA79E5B
          90005489947AA9D47ED3AB27D303A66D9DFCC5FB0BA7F218AD8FF3F7A2B33D07
          9AA9ACA5C453F6E6DC79376F45E76B674D50E9DCB8F9B2D36DBAC9E35D429279
          EB9A3F53D4CF4E1480C9B5BC8950CA125D553AA00EC8A3FA7A8295AF9633427A
          6D2E61926F028F19F5934807E4082413D5A86DADD1B7778E1B1FB8B6AE6F15B8
          B0595A586BB1B97C2D7D264F1B5D4750A5A0AAA3AEA29A7A4ABA69403A648DD9
          1AC6C4DBDB75072AC08F91AF4FD0FA74FDEFDD7BAF7BF75EEBDEFDD7BAF7BF75
          EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAFF
          D5DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75
          EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF7457FE567CBFE8FF0086DD713F657766
          E98F098D92AA3C5E0B11491FDF6E2DD39C990CB0E176EE1E3749F235C6056964
          E5218215324F2451FAFDB8B1D54BB30541E64D3F6578FF00ABD3ABC6865708B4
          FB4F01F69F2F9754FBB13BA3E65FF36A9291FADA9F70FC4EF88D165722B9CDF6
          B24B0F60F6A61E2923A5936E6DBADD11C4B8F693CD0D6CF4AA68E160D1CD356B
          C42964BE9255832B47162872B21FB388CFFABCFA65DC76884867F327207EC35E
          AE47E367C4DE8BF8A1B3A2D9FD35B1F15B79658E039EDC469E39F74EEDAD83C8
          464B736724535B93AAF2CD23C685853D3795D29E386222315797513A542AFA00
          07EDA52BD6922094AB166F526A7A323EDAE9CEBDEFDD7BAF7BF75EEBDEFDD7BA
          F7BF75EE93BBAF68ED7DF580C9ED5DE7B7B0BBAB6D66A925A1CBE0370E328B33
          86CA514D6F2D2647199186A686BA9642A098E58DD095048361EEE923C66A8D4E
          AAC8AE28C2BD5307627C43F931F04B75667BAFF978E52AB7CF50D54CD9BEC5F8
          5DBDB3595CA6219507FB95CAF4B64ABABA6ADC766EA2957CC288BFDD4B511695
          7C8C72438B8D40822BD951A29560BAE1A7090370156544A86F3A8A0AF1A0E2CA
          BC96A34B2B496B9278B483D02966A11E5439A70A9E8D2FC1FF009F3B77E59D3E
          471AE94143BA30D535B479CC3C74F5188CDED9CA435332AEDEDDDB7325512566
          17274F1C4614991E7A5AFA88E5F032E86409C8E2AF0BC53AF1471A5879FC273C
          33F667A5034B2878E40F19F306A3F68C75639EE9D7BAF7BF75EEBDEFDD7BAF7B
          F75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBFFFD6DF
          E3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7E
          EBDD7BDFBAF75EF7EEBDD15CF965F2C7AD7E2375957EFF00DFD53254D6CC9351
          ED2DA58F9205CEEF0DC0696A67A2C36256A4AD3C46534CC67A998AD351C21A49
          4F0A8EA2080CB5763489789FF57FABFC9A24EA550327AD6DFE16F4076F7F392E
          FAADF983F326925FF65CB61E6AAA8FACFAD21391836C662BE090C926D4C31964
          8A5ABDA184A90873B5ACC6A73991FD87631C53474D595FC59148045B2F007837
          9540C83C327F2F9757690187C08680FE26186C1AF107F2FB3ADB570582C36D9C
          463B01B7F194386C2E228E9F1F8CC5632920A1C7D050D1C294F4B4747474B1C5
          4D4B4B4D4F12C71C71AAC71C6A154050006D98B9AB1CF540028A018E9DBDD7AD
          F5EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75D1008208041
          041045C10782083C1047BF70EBDD537FF301F807BBF3DBA53E63FC2E4A3D9BF2
          AB6950D40DD9B6E81A2C5607E436D258B56436C6E98525A4A4A8DDCD4D4E91D0
          56CAF119C471C13CA8D15155D02D464BB4F065709738D121C7A0A3B052C5428A
          2FA70E1D33DD037891AD63F35F2F3C81502B5C9FF3F4B8F803FCC33A77BB7A7F
          69E1F726E6CCEDAED4C6679B60EF2DA1BF660771EDEDF66A322176CD7D54DE1A
          BA9322E3A5349533410FDCA011369AC59A9A34E566795E1962D372806A14238F
          0C1CE450E695F2C74F618788A4143C08E1E98EAD6158300CA432B00CACA410C0
          8B8208E0823DB5D7BAEFDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7
          EEBDD7BDFBAF75EF7EEBDD7FFFD7DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD
          7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF7485ECBEC7DA3D47B1772F6
          36FBCBD3E0F6A6D3C555E633192A92FA20A5A485E6658E38D249EA6AA7D1A218
          224927A895962892495D119D86269A458D789EAACDA413424F5A58677B03BEFF
          009D37CF597A9A9A8B2BB2FAAF055CE733119299E9FAB7A531594A2ACAB9EA64
          826A9A39FB277FD443471CFAB569AD6869413434AFE372F260245B081A882A49
          15A8C03DD42695FC38CD7E64F4A23023875B94321E14CD7D7D2B4F975BA4F56F
          596CDE9CD81B53AD3606128B6F6D2D9D84C7E070989A08C253D25063A0582189
          4E95691B82CD23DE49646691CB48CCC5393E43E11C3A4EAA1453CFA103DEBAB7
          5EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDF
          BAF75D1018156008208208B820F041078208F7EE1D7BAD70BF9A6FC5FCFF00C5
          FECEA4FE635F1EF6D0C8EDA93238DA4F989D6149044F8DDDBB6A5C852243D994
          F40A63F0E628270A327531FAC4C61AF91193F8AC93AA669268BC6829F5F1D29C
          7F5076AD1828D4DA07C39A281E800E9B42227D2C4F80DFF193938A9A0A9E3EA7
          AB45F87DF30765F746DCD8981ABDE985CF6E6DE7B3C6F5D9B5B8DA692861DC1B
          544FF6F223C0D0C34B479DC1CCE29EAA8119AA6231BBBC71A2384F4CB1C8A971
          07C0D5C79E38FAF57F858A907A3F3ED2F5BEBDEFDD7BAF7BF75EEBDEFDD7BAF7
          BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAFFD0DFE3DFBAF75EF7EEBDD7BDFBAF75
          EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75ABAFF003ACF9E
          58CC67622FC75C2E4BC980EA5C56377CF63E3E2769A0DDBD8B9FA3697AB3AF6B
          608C049B1B43055C79FC8A191A29E8E5A76D1E6A7001AAB476368B24AC03495A
          9E05002295C8A6AF98CF971E990AF349DA0F6F0F43EB5C7F83F3EACCBF94A7C2
          AC67C51F8EB41B977150432F77F77341D8BDB79B96088568CAE5A26AAC76DAD7
          67960836AD2D63D3B46AED1FDEC955221D132804E81C979A65A5C3D3571C5300
          0AE78509E39E943153A554762F0FCF8FF3EAD63DDFAAF5EF7EEBDD7BDFBAF75E
          F7EEBDD7BDFBAF75569D99F3EB65547C85EC0E91D8DBEA9E933BD078AA2CAEF4
          C142D411546FFDDB5F4099BA2EADC0E432821A04CCCB8C511540130A9A7AD9C4
          1E3578A42C671DB44A238E4A78AF93FD11820FE7C47911435CF4CB339A3283A7
          34F9D307A3EBD2BDBDB67BCFAE36F764ED48F214D8BCF53C8C6832F4CB4595C6
          57524F2D164B1B91A35967105663B234D2D3C803BA79226D0CEB6625CEA54F02
          01F5143F9F4E29246451BA15BDD7AB75EF7EEBDD7BDFBAF75EF7EEBDD31EE5DB
          782DE3B7B37B53746271D9EDB9B931391C1E770997A486BF1797C465A926A0C9
          633254350AF4F5B415F4550F14D0C80A4B13B2302A48F778DDA375753907AD10
          18107875A7DF5FE3337FCB4BE74EF3F89DB8D32991DB53556E3EE9F837B9EB72
          F53040D5795C3EE2871BB0770D74C17CD87DC98F86B7039131CB4E873940F2C7
          4EDFC411C2A0C91CC2A00B59463C82102AC17805A93F9822BD37AD9D24D40EB5
          39FB2B8A7E5C7F3EB6ACF8E3DE7B77E44752ED7ECCC0034B265694D3E7F0931D
          390DB1B9685DA9739B732B03849E9B2188C845244EB2246CE1448ABE374664F3
          4662764229D5D5830A8351F2E1D0E9EDAEADD7BDFBAF75EF7EEBDD7BDFBAF75E
          F7EEBDD7BDFBAF75EF7EEBDD7FFFD1DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEB
          DD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD17DF955DF7B77E307C79ED8EF7DD
          0A66C5F5CECFCA66E2A15A8FB4973398F09A5DBDB7E9AAB4C9F6D5BB8B3D514D
          43049A1C24D508C54807DABB1805CDD451330095A927D071E38FF3F0E9A99CA4
          6C40EEF2FB7AD163E077526E7FE61FFCC1B67C3BFEA1371434DBCB31F22BBF33
          72C1AA9F3550B9EA4CD3EDDA958D41A4A2ADCBE46971C29F478E969AAE558C04
          50BED9DCE6FACB88E2905158640E00228A6093E9E7E63A551A34106AA8A8E07C
          8D4E7D2BC4F0FCFAFA11D3C11D353C14D10222A786282306D711C48B1A036005
          F4AFE00F6D93524F4D759BDEBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75F
          331F955D8FDA7D4BFCC0FE64D5D366B21B5F3F27C98EE1CEAD33D5C694735754
          6FBDC75584CC5653D524D4B5705261F246A29DACAEA8CAF1B5EDED6EE2ED15F9
          F0CE3427D94F0D695FCB87E5D7AD5BC48113152CDF9771E1FE5EB6CAFF0084EA
          EE7ED0DDDF103B1337BEE4ADA9DBF57DE9BB66D91595F2BCD249453E1F6DCF9C
          8A9E59DE495E862DC92D59166216A9EA031B80017452C9287676AAD4693927CE
          BF2E34E1D3F70AA8E1001A80CD3F2A7E74EAF8777EE9C56C8DAD9FDE19D6A84C
          36DAC556E6728F4B01A9A84A1A085AA2A5E1801532BAC48481717F6A228DA691
          635A6A27A4ECC14163C0759F6C6E2C6EEEDB982DD3867964C46E2C4E3F378C92
          788C13494193A58AB291E58589689DE0994953C8BDBDD08A122BD6FA7CF7AEBD
          D7BDFBAF75EF7EEBDD514FF3E8F8A799EDFF008C38BF91FD671B51F73FC42CB4
          DDA785CB50A226564D8544D4792DF3053CD6044BB7130B4BB82376D6638F1132
          46BAA737531C66EA192D01024241427C8D45739A6A18C0C9A754A8496390FF00
          679D43C88A1A54703439CF0CF4027F299F9A1B4B766E3D9D96190C46DAC3FC88
          A6C86DEDF9B5BEFCD351EDEF943B5A8A3C8E425C651D654B414D4DD97B5A9A6C
          8278E49EA6693ED227BC84FBD9945D422465A4F9D47CBD05335E1EBF975AF0CC
          723281441C3D0D7269FEC75B28FB4BD39D7BDFBAF75EF7EEBDD7BDFBAF75EF7E
          EBDD7BDFBAF75EF7EEBDD7FFD2DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7B
          DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD6AB5FF000A66F95553B2F617467C61DB
          791A65AFDF9B86A3B4B7DD093AE63B5F64490536D4C6D7532BAACF88DC7B9F21
          2D559EFF00BFB7D6CA45EE690B0B5DB6E6720F8B29D294E3DA54B62A0FA64791
          A74C8D325C2A118515C8C54E07422FFC26FF00E32D56CDE94EC7F93DBAF12F4B
          B9FBB7371D06DBABA884C52CDB1F6ED4E4607AB8094555872FBA24AE2EA38294
          9030B83EC921D6EF34F20C311A7E4071A57857CE9F3E96CACC12280F14AFF3CF
          5B307B7FA63AF7BF75EEBDEFDD7BAF7BF75EE8BE55F656E5A0F92F8CEACAAA8D
          BD16CFCEF56C9BA7110CCFA373D56E3C666EB28F302963591BCD87831F252125
          D134CAE4076BE9550C882DA17A7EA3330FD9A7FCF9EAAA497901AD001FCEBC7F
          663A307ED3F56EB532FE787FCAB47697C8BEA0F905D5796C3E0333F223B0365F
          4CF60E2F2E1FEDA7DF3350A6336AEEEA1101F23C351B570AD4B90A55118BE369
          9E36692A6A0859352E6C588005C474AB7AA921454D2A48F2CFCA98CB51968670
          47C06B41E40F9FFABD7EDEB643F89DF1D369FC4EF8FBD69D05B29EA6A305D7D8
          218F5AFAEF17DFE57295D555397DC199AF307EC8ABCDEE0C8D5564891FED44F3
          948FD0ABED0A22C48B1212557D789C93F2FF008AE9E666762EFF0011E83EFE60
          FBDE6D81F0DFBE3374D31A6ABAFD9CFB4A8EA52FE6A5ACDF15F45B3E9AAE9D43
          233CF452E6C4CA0104F8F8B7D42DB1644B94924AE85CE3F97F3EABA3C42B1D69
          AB1FC89FF274623A976DCDB3FABFAFF6B54544D553E0368603152D4543179E57
          A3C6D3C25E627FDD874F23900F02E07B49918273D797E107A10FDFBADF5EF7EE
          BDD7BDFBAF74CFB83058ADD181CD6DACED05365709B831590C2E63195B1ACD45
          91C664E965A2AEA0AC858324D4B574B334722302AE8C4104123DDE3731BA3A9E
          E06BD55943A953C0F5F3D7EB18EBFE14FCB6F94DF1572D595F4B5BD6DD8A9BAB
          A972394FB7F27F783AA77226E4D9595C661EA34472E67B2763BD085A88A58254
          826015991800A648E38AE4C284F83200D53C076EAE38033838EAC58CC96F2540
          65D408F2F4C8FCAA3ADF47E36F6F6DEEF8E8BEB1ED9DADA570DBCB6AE3ABE2A6
          560ED8DAC810D0E5B0B338366ABC1656966A29CD8033C0F61A6DED33D0B161C0
          E7AD0F4F4E86FF0074EB7D7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF7
          5FFFD3DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFB
          AF75D332A2B3BB0545059998855555176666360000393EFC0126838F5EEBE691
          FCE1BBDEB7E447F321F90B99352F260FAFF77FFA14DAD4DE5692968A83AC2597
          6EE664A4935DA2A4CBEF587295F1DF50BD5DFD5707D98EEF218A2B5B2E091A56
          BE7570AC4578638701D3762BA9FC52B56626A3CA809A53ED19CFAF5BF1FF002E
          7EB7CB752FC1FF008CBB0B3B347365B09D49B47EFCC69A045555D8AA7AF9E99D
          AC3CCF4B2D4B47E4B02E1431E49F6516C0ADBC2A6B500F1F9927FC07A5570EB2
          4CF22FC269FE003A3ABEDEE99EBDEFDD7BAF7BF75EE835EC5EDAD95D5936C583
          7957D4D0C9D8FBE70FD73B5053D154568ADDD79E4A9971B4539815851C134747
          2133C9A624D366604A82EC70BCAB2BA91441535FB69D54B00541E27A267F3521
          A7EAFED5F8C3F2AE56A7C7623ACB7AD7F5F762E6E6FB85A7A0D87DB10D3EDB5C
          8E6A48B544B89C167658654690698E79C1E49D2CA205596DE546F8D32A3FD350
          37CF801F90EA8C4ABAD38360FE5522BD5875255D3D7534359493473D35446B2C
          3344E9246E8C3EAAE8CC86C783626C47B4645091D3BD54D7F349CAD662377FF2
          EEA8A2C9D3C6D53F3B7A8B155184974197294D9492A637AA4051E455C7A40CBA
          96C43D42F3F504C2DBFDC1DC468AD4267D28DFE5E9A6D3E2C209CE7FC1FEC756
          DBECBBA77AAEAF9CD9CC6EFF00CF742FC60C55663727B97B1BB83656E5DE5B52
          596965AE3D47B36AAA7706EACC1C74F20925A74931D1245208DAF37A50F916C1
          6C2BA2DAE246A55C516BC4D194B53EC1C7F9F5A15D62404761AE7CEA08C7AF1E
          8F0EF4DE38ED8387C6E46BD5248ABB70EDADAF49149574F46D2D66E2CB5261E9
          446F3D9659226A9F218D4177542145FDA78A3F15986AA0009EB44E9D23D4D3A5
          A7B6BAB75EF7EEBDD7BDFBAF75EF7EEBDD68A1FF000A31DB2FD1DFCC4FABFBC3
          6952C1415DBFBA7B69EE8C9D5CF099A3CA6EED9BB9771ED5AD9A74910D3D401B
          52930F4C63BDF446B7FA8BAC9096B5B67006A0587CCD34F1F5A57AF0186CE3AB
          9DFF0084F37CB2A0EFAF8EBDA5D6468313B7EABA6FB21E4C16DBC5D54AD4D8DD
          93D874736E1C3A43054492B354D46E5A1CF3CE50AA6A5B85B1BFB49A8B860477
          252B4F9E7ADB02A54B52ADFE4EB612F7AEB5D7BDFBAF75EF7EEBDD7BDFBAF75E
          F7EEBDD7BDFBAF75FFD4DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF7
          5EF7EEBDD7BDFBAF741577AF62D3750749F6F76BD653475B4BD69D67BE77E545
          14B278A3AD8B696D9C9E75E8DE5D2FE3154B43E3D5636D57B1F6AACA113DE5B4
          24D033815F4CF1E9A98B2C3214035D0D2BC2BD7CB53A5F6C56F7D7C98EBFDAD9
          9AB15797ED8EDCC062B2F92AB78E196B6BB7AEEAA18B2B5934D2313E69E6C8BB
          82197D6DFE36F68F78B992EBC590D048C4633E541EA7C874AECD1633E7A00FF5
          7F83AFAB26D9C452EDFDBB82C1D0C0296931389C7E3E9E9C5ED045494B142B15
          9B91A025ADF8F76A0181C074C28A281F2E9F3DFBADF5EF7EEBDD7BDFBAF74453
          E77CBB7F13B77A0378EE6CB0C2E33637C98EB5DC3F7AD4DF751CB592D1EE2C15
          063E75055A1A5AAACCC234925EC822B9E390B6D7FB2BC15C6815FF007A5FF2D0
          7E7D36E0178B8D6A787D87A1E7E49F5453F7CFC7CEE1EA3714693F62F5B6EDDB
          388ACAFA58EB69F0F9FCBE0AB29B6EE7CD33C53AC93EDECDC94F5B1154774960
          56405C2FB6AD9D62B989A4FECC3777D9E7C7E5D6E4A946D3F1531D68174DFCC9
          7F9A5FC0EED99BA7B79F666E5A3AFE9ECBC3B7B21D47DA585C46E0C0C78BC6AD
          3FDB50C394FB48370BED9CBE2DE36A1ACC56529D67C74A92534A237425A95E7B
          21E1CA9A837026A51B813A49A5695CFA1E9DB768182A49F179914A8E1D5F8EF5
          F993F117F9A0F507C77ECACDFCA9EB7F889DA7D1BB869FB2F39B3FB377361F0B
          96C3F65604D1498B8B11579CAADBF47B976C35453CD353E4286552D1CD179529
          EA55E9A253657B035ADD404952E57890A050D4F1391D269A32260C082C830788
          351F21FEA3D5457CD3FE765DFD595B51D2BF19FBD7726676A6DCCBD5C592EF79
          7174D8DCFEF6A98226A1F06C0A6C9514B2ED8DAF0B49378AB3C31E5AA51C4624
          8E10DF714BCDCAD6D555205432D3B9B047911A5830FB1ABE7C3A576C808477A1
          F41FE707AB57FE40BD49F257B6F756FCF9D9F28B75EFEDE6F96DAABD61D3598E
          C6ADC9E4F259BC1CB94872DBA770E12A72CD2D441B7E8AB7174B4344D0B2413B
          BD70504062E8639E7B826491CF82A3B3269DC3B88AD479711E7D3B3C91B24491
          C48AD9D5A453D29C3F9D7AB97F9E7B9E6C745F1676850C8056EFEF967D4985A9
          557749A0C1D3CB96AFC957C6E9C21A49A083F5020DCFE4706768088AEE4C6908
          07FC687F9BA44F42F1A9E39FF0747F3DA1E9CEBDEFDD7BAF7BF75EEBDEFDD7BA
          D56FFE1537D4B4596F8FBF1C3BB608D1733B27B6731D712C8AAA1AA70DD87B5A
          B33F2A4EC17C8C296BBAEE2F1007EB3B8FC8F6B61EFB6B81F892847CAA403FB7
          1D68121C0C508FF07557FF00F09AAEE3AAD8FF0039F27D5CCE29F0FDD7D61B93
          18690BDD27DC7B156AB7962AA82B16943C785A7CC2017504CB7B716F65A24FD6
          095356AD7F218E9E295855F8E9F3FB4F5BF27B77A6BAF7BF75EEBDEFDD7BAF7B
          F75EEBDEFDD7BAF7BF75EEBFFFD5DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD
          7BDFBAF75EF7EEBDD7BDFBAF75593FCE43B09FAD3F96AFCAECF47512D34D96EB
          C3B0A078AFA9A5ECBCBE37AFD51AC8FF00B646E425B83602E39B1F669B3B225F
          24B201A1549FE58FE7D317019A30AA7B891D6833FCB1B68E137A7CF7F8C181CE
          64D31548DDBBB6AAD6B43B2A3D5EDFAC6CED1D02CBA6768DB2F5D8A8E8D48B91
          25483F41EC86E68485905149C9FD9E7D1844C3439247D9D7D462289218A38631
          648A348907F448D42A8FF6C3DAB26A493C4F49BAC9EF5D7BAF7BF75EEA2B5750
          A56478F6ACA55AF9A192A21A16A884564B0426359A78E98B899E189A550CC14A
          A96173C8F76D2DA75693A7D7CBAD545695CF44C7F9896CFC86F1F875DD506229
          69AA72FB676F41BFF1FF00711C72F864EBFC9516F1A992057209A992830D2C48
          17D4CD25BE84FB5166A2497C166215C53ED35047AF981D7890A55CF01FE623A3
          3FD65BC297B03AFB66EF5A2F08A6DD1B6F0F9C85207D71C51E4E860AC8E356BD
          CE98E61F50091CD85EDED31353ABC8F5E5E1D17CF93DF03BE267CC6871FF00EC
          C374BED6DFB95C3D3B51E1F7437F10C0EF1C651B34F2FF000FA5DDDB6EB70FB8
          C6244F5324A68CD51A532B9731EB3ABDDFC425046E0320E0080695E34AF0AD05
          69E83AD1404EAF3EB5A4FE707FCB07E157C32EA6F8FDD91D55D7BB830CB9DEFF
          00C375F6F8A21BBB73668EE2DA99ADB5BAB3F59097CE656BC5056C076E2454EF
          018ADE57B866D05199D512C6EE548C6B5D3427E6C07A0F9F578406B98226A51A
          BF66013D5EA75FFF00276FE5B7B3B2B8DDE186F8C5B2B299055C7E42906E99B3
          3BBF1114B12473C534782DD192CB6274C86C591A16423822DC7BD3430EA21A15
          20791008FD94EAAA70082457D3AB36C76371F87A1A5C662686931B8DA1A78692
          8A82869E2A5A3A4A5A78920A7A6A6A681521829E9E08D51114054450A00000F7
          70000000001C00C01F975BEABBFE4DE070FD97F34BE156C67CACEB53D7CDD97D
          D59CC4D232DC53E37198FDB9B26BEBC3236983FBCB593987F0E69E45B83A4FB5
          B1B325AC8A476484FF00C6687FCBE9D3642B3354D1801FCCF563523A448F2C8C
          1238D19DDDB85544059989FC05517F68C02480389E9CE193D41C4E5F179EC752
          E5F0D5F4B93C6574426A3AFA29927A5A988920490CA84AC8848E08E0FBF32953
          4619EB40822A3A71F7AEB7D7BDFBAF7541DFF0A44A5827FE5B398A896860AA9B
          1FDCBD5D5549532852F8BA896AF29426B69F571E6921AC7A7FF824EDC1361ECC
          2C943C57EA4E7C214FB43A74D3D3C5B7AB53B8FE7DADD6A0BFC9DFB37FD157F3
          22F8A39E9AA62852B77FD6ED27799119221D83B3F746C28185A46461F73BA574
          924AEB00DB8E4AD95239A19241C3557E7514E9E1E23412223798FF0008EBE9D7
          EDCEB5D7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75FFD6DFE3DFBAF7
          5EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75455FF0A2D57F
          F86CCDFB3475B2521A6EC8EAB98C7101FE5B7DD34F0A52C859950C492CCB369F
          531789481C5C19EDE2B0EE40D47E88CFA52443FCF87E74F3E98901335AD3C9CF
          FC75BAD4BFF91C756E1FB4BF98EF45623315094B4FB66BF706FCA7B382F5991D
          A783AFC9E2A9C8B4692AC79348A72A0867101040E6E47348925C5BC007636A26
          BC7B46AF9FA7A74BC25619655A7691FCCD3AFA52FB53D27EBDEFDD7BAF7BF75E
          EAB0BB1B76E4B6BFF359E82C3B4558711D91F19B7D6DAA69C33350C795DBBB96
          BB755742D19711A4CD8F82225AC49D518FC70AA50FF4B62431F0CBCD51F62C64
          13F99C57D31D51026B9C91FA945FE64F0FF2FE5D593E7B0F41B870798C0E528E
          0C8637358BAFC564282A46AA7ADA2C852CB49534B3AFE61A886528C3FA1F6CC4
          E62963901A15607F675B75D4ACA4711D5587F2F3EE4D9DD49B2373FC44ECCEC3
          C343D9DF1E7786E3DAED8EC8FDCD065ABB6455E427CE6D2DCE28EB47DD3E02BB
          179110D354286A7861A78D5DD3C9009145C5B089C471B02800A548A90454FA03
          42734E1D6D5BC40640A684FA70A63CB8569D584754F6F62BB5A0DC3538EA038F
          83099DA9C2D2D41CA63B274D9C4A68C3B64B173D048C92521BFE7D405AF6BDBD
          B534222202BEA14CD3CBFC3D694922A569D50AFF00C292F74261FA1FE2E63A4A
          55AA89FE49E373F50A4D88830BB2F752B476B5FF00CA16B18706F60C2CD7B7BD
          4B107D9F73E3ABF4C0FF007B07A72DDD05F5B2BA92486A53CBB4F5799BB3E407
          557586DFD9E33B9F8FF89EE8DBEB5DB3F6A5020ABDD1B8A968305165E65C6E1E
          1632E9831DA5A491F44111740EEBAD35391DACB339A502D4E4FF0093D7F2E98F
          115557EC1FEA3E9D047D57F383ABB7B1DDF0EF7CB6CEEADC9EDFA88E7C56DBCF
          761ED9AADD596C0CB452562652BF00B35256E0AAC08CABD34824542411338371
          B9ADE38E448E39D4B1E352053F9FDBD6D5CB57B4FE59AFD9D01DF0EB70E03E4B
          7C9EF90DF2F36CE5E7CD6C7A3C4603A07AD6A9A459E9E2A5DB331CCEFB8E9645
          9668CD249B86582781E222293EE2400B1536DDCC89A22B742088FCC528C5B24E
          09AD294EAFA0AE92CA439AD41FB71FCBA3D9DFFBA6B763F45F726F2C63B4793D
          ABD5FBF370631D543B2E4B13B63275D41A632AE2463570A5948218F16E7DEAC1
          55EF6D558554B8AFD95CF4DCD5F0A400D0D0F45ABF9639CE3FC13F8E751B8E9E
          A2972F90D92F969A2AA691A66A5CCE672996C5D413296709598AAD8264172152
          400703DA40CCE88EFF00111FE53D3EDA753051DBFEC747C7DFBAAF5EF7EEBDD5
          25FF00C285F0F4F93FE567DE15B2A4AF5182DD3D3591A031AEB58AA6A7B6F66E
          1A49A44242B7F91652641ABD3792DF5208556D218C5C014CA79FDA3A6A450648
          1BCC31FF008E91D7CFB3E3B6E7ACD9DDF5D3FBB31D5261AFDAFD9DB133F4463F
          DDD2F89DC788AC1E3FD0B20D51DAD61624DAE3D975C93E1B1A770E15F991D2D8
          1753055201F9F0FCFAFADF51156A3A4640150D3405557F485312150BF5E00FA7
          B50DF11AF1AF4997E11F67527DEBADF5EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF
          75FFD7DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFB
          AF7543BFF0A39C265B2DFCB3F7755639256A3DBFDADD5198CE3462E131926E06
          C1C2652414546CBE6A9546AB7ACADBD9958661DC90300ED08A57E522134F9D07
          49A7D424B665E01F3F9A91FE5EB493FE5D7DBD55D27F32BE3AF60C55D5743062
          3B736643919B1EE11A6C1E733349B737150D48BA9969ABF0199A98A556172B21
          16B9E082F0F80A971A28CA78D287341FCC7F2E8D60AE978197E2FF00267AFAA2
          D154FDE51D255E8317DD534153E32DA8C7E78925D058050C5355AF617F6B88A1
          22BD2206A01EA4FBD75BEBDEFDD7BAAD8F9774F5FB4BE5C7C09EDE47A65C1E3B
          79767755E6E1A8014D5D7765ECC30ED7869E62923C522E47132DCA2FF69755C0
          0A57411896D6725E8D19A81EBAA80FECA0E9A66D2F403E203F954F564FED0F4E
          F5A5F7FC29AFE236F3C5F6475EFCCADA58F965D85B9B6C627A8FB227C7208E4C
          2EF6C4D667725B5F3998951D64968B75EDEAD7C724ADFB74D2E2628DCDEA2052
          B583CD6B1342019E1D44E3F0B690294C9A1AD6B40011F3E9B49443351EBE137E
          CAE78D4D3ECF9F5AD47C76F95FF223E25EF68B7AF45F666E8D89924AA8E5CC62
          F1F91A89F6A6E6822219F15BAF68D534D88DC5412AAB2A254D3B3465B5C6C920
          57055E3C8EB412BAD3CC1A57EDF5A7460B14522A3161A4D69C2BD6C95BF7E757
          C4DF9ADF1F760E5BB372BB9B7977141BD327DDF9CE93AA8E79B1DB2B71EC6D8F
          B9137063E972F5CB32CBB0B71CF5464A3B55486635286641324D1A1ED95F4179
          0C90CE814B800AD001DA6A28093E433C7F2E8BA6B6304A5C4A7B4F1539C8F5A7
          CFAA7AF965FCC9BB6FB3F7E6E2CE75D6FECF5050EEDD95B6B6E8CE4692E3375E
          D1C2240B94AFEBDC0E5E82A5E4A1C5D1E467026ACA568A7AB68EF21B3BFB4573
          B954AAC582B5F90F2F8687F6F4A61B531A0074B2D315C93F6E334F2EAB936DE1
          774EF9DC58BC26271B94DCDB8B72E66871D8BA0A259ABB3198CBE4EA160A3A7A
          148CC93D5E4B215132A2283E5965716B5AFECA249E49E48F42D5CD785493D2A8
          C408849D206295A629FE0EBE9EDFCB2FE3055FC44F85FD33D3B9C543BCE8B032
          6E1DFB24734B511FF7D375D755EE3DC14714F21B54D2E2321937A382651A66A7
          A78DC704596A4662458D9AAC2B53C6B9F5E3C3A44646958C8D5CFF0083A173E6
          865A8B0FF13BE434D5D93A7C32D7F52EF6C05164AAA4F0C14D98DCB83ABDBF83
          6925E047AB31928141240048E7DABB404DC4546A50D6B5A53F3EAA54B0D2A2A4
          F4A2F8B5B52BF637C6DE87D9B9493CB92DB3D4DB0B095F283A964ABC7EDBC7D3
          D43C6D73AA169509437374B727EBED8750AECABC01EBCAC58063C4F43D7BAF5B
          EBDEFDD7BAA3FF00F850F6EB7DBBFCAFBB6B14B0C330DEFBDFA7B6CDE5664303
          51F656DCDE2B3A9D41187FBF50C6CADF892F71A79556F1AB4774EC7E1407F6BA
          8FF2F5424878B18AE7F61FF2F5F3C5EB69FECFB0766D5C52788D3EEBDBD52A8E
          1FF74D2E529AA589705EC80B91A7F49522C4DEE0BEF291C4DA981E1C3F2E94DB
          AB788B534EBEBDF401850D1065D2C2929C32FF00A96F0A5D78B0E0FB50DF137D
          BD30BF0AFD9D4BF75EB7D7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7FFD0DFE3
          DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75505FCF
          7F0998CF7F2B7F92D4B85A2A9AF9E8E0EBCCDD6414B119A48F1581ECDDA398C9
          D6BA2ABC9F6B8EA4A26A89D941D10C4CC7804FB33DA62F1EE5A11F132103F91F
          9FA74C4EE235491BE10C2BFE0EBE6EDB6AAE7C36E1C7D7C3AA29E8B21495B13C
          6F1C3A67A3A982A51918B0749D66542A582B21B936B8208AF57C58C8058D7803
          9E04711FE0E8C6D25533465EBC0F0E3C3AFACAFC67EC2A4ED9F8F9D31D974354
          2AE9B7D75AECEDD292975691467305459210CE14DA29E015215D2C3430B585AD
          ED424A2645940A061FEC1FE7D25D063EC2723A1C7DDBAF75EF7EEBDD57DFF330
          DA3B9B35F19321BDF62C1513EFCE91DE5B47B9768B53A231A5ACD9F91BE5EBA7
          6756D34D41B62BABA661C6A6451FE0565A2B4A65B7520348A0035A70607F9D29
          D37260C6D4E07FC208E8F06CDDCD8DDE9B4B6D6EEC3CDF7189DCD82C56771B51
          E93E7A1CAD1435B4D30D2CC2D243303F53F5F68EA1B2387571C0578F4D3D97D6
          5B07B8F636E3EB5ECFDA986DEDB137763A5C4EE3DB19FA38EB71795A098AB98A
          78641749619A34961990A4D4F3C69344E92C68EAEC533C2E1D295F98A8FCC1C1
          FB0E0F038EB4E8AE34B0C75ABD7C94FF0084BCF5A6E8DC15D9DF8C7DE594EB6C
          464B20F59FE8FF00B0F052EF6C5615657925FB7C26ED83338DDC1FC368C15869
          E9EBE2C8D478EE64AB76B7BBC8B6570DADD1A37F309409F92E9C7CF3C7A4E16E
          E2D0B14A0C63D6B5FDB5FF00270E888F607F271A5FE5E7B9BAEF7BF76F73E337
          CED7EC2A6EC3D9B99836DEDF9B0753860BD7DB8B362B31DF7596AE6AE764C4BE
          976F0842A1597D6A3DA8B2B2B74A5CA3929171AD2A75547A0AD3F2EB4DF50E8F
          1CAC359E1427CBD6B9E8C5EDDFF84CEF5DF6FF005A6C5ED5E98F9699DC7607B0
          B6960378E1E837A75DD0E7964C7E771D4B91A256CC61B71E21C21A79948634AE
          EB6FEA4E948F06DCD2134980AFAAFF00834FF97A755AF0051E22D00FE97F9FAB
          8DF82BFC937E2A7C2DC860B7E9A2ADED2EE7C3A3CB17616E99A4783179198149
          EB3696DA465C4EDDD54D2C90A48C9555F1C6C74D58D447BAA08200C208F27CD8
          02C38F0200A7FA875EF0D99834921C790274FECEAE4D555155115511142A2280
          AAAAA2CAAAA2C15540B003E9EE9D3DD549FF003874CB6F1E84EABE85DB95B3C5
          9BEFEF913D51B025A2A5A848A79F051E56A371E4AAE589D94CD418FA9C153B4C
          C3889990B90A79596FA960BB91546AD20027C8EA5AFCF857AF2BB472C6EAB50B
          5AFA64119EAD83194F1526371F4B04269A1A6A1A4A7869CAE830450C11C71C25
          3FB262450B6FC5BDA57CBB1F99EAAA28AA3E5D4EF75EADD7BDFBAF75AAA7FC2A
          87B36B30BD09F197A9219A614BBF3B43766FEAAA78DB4C7529D5FB620C3086A4
          587DC466ABB420956326DAE0D5C151ED642556D6E4D3B8951FCC1FF2755D2CCE
          0860147AF1FCBAD367E3F6CC9FB1BBB7AB7615397865DEDD8FB2B67ACA59ED0C
          BB9B7262F0E9386D0EFE9390D5721351040BF162ABB05B0A015FF8AE3D288490
          413E5C4F5F5C0C416389C61773239C75117908B1918D345A9C8B0B163CFB56FF
          001BFDA7A4EBF0AFD9D38FBAF56EBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBF
          FFD1DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF
          74047CA3DB757BC7E35F7F6D5C7D04794C9EE1E99ECDC2E2A826884D155E5329
          B2F3541414F2210418A6AAA8547BFA7431D5E9BFB5FB5B88F71B266344122D7E
          CA8AF1E99B815864EDA9A1EBE4C957E7A3CB48265923A8A4AB112C5393E44D21
          4CC854B7122C8A01B5DBE8085FA8493C6109423F547003FCBE7D3D136928EA0E
          7FD59EBE937FC90FBB769F6F7F2F8E91A1C1D6F9337D77B7E1D83BAB18E02CF8
          CCB6D78A9F18438F23178ABA96386AA3902A23C75034DCAB1F68AD0FF8B46869
          AD2A08F4AB3118E3C3A7AE174CA735073FC80EADDFDA9E99EBDEFDD7BA4EEEFD
          B58BDE7B57726D1CDD39ABC3EE7C1E530395A50E63FB9C7E5A8A6A1ACA7F22B2
          B209A09D94904100FD47B76094C33452AD2AAC0E7AD30AA91D56A7F2AFDFB99C
          674D677E31F656462FF4AFF19F7E6E8EABCAC35550E6AF3384C7642B6BB6B663
          1E6AA459AAF0D260C9A6A12A809A3C7EA200F7E9206B73E0904E80339A10C350
          2303D7D075E04300C071EACF29F2F89AB30AD26531D54D517FB75A7ADA698CFA
          51A53E111CAC65B468CC74DFD209FA0F7428EB5AA914F975BF9F974E3EEBD7BA
          D737F9F86032DBCB33F0EB6562D2A66FEF0557C8479A0A79C465E7A0EBFC2AD0
          D92DEB9CAD74EB193C0BB0E01620DEC286D2F035698E9B34122BB1ED033D591F
          F2A3AFAAC97F2FDF8D135634A65A5D8349860B331678A2DB93CFB7A2835177F4
          C098BD03FA5BFD8925898B430B1AD6878FFA63D3F28512C8148A5470FB0746DB
          B73B8F6AF4D6231597DD1164EA533597A7C3505362A90D5D43D44EE8866946A5
          482929CCAA6491880030B5C900AB82DDE7D7A4E1454F4D160081E67A5850EF7D
          A55F8FA1C9C5B8B0B15364208A683EE32B8F864065884C60911AA4E8A9856E24
          4B928CA41FA7B68A36A2BA4923AB75557BC9E6F93BFCD23AC30B84C9D065BAC3
          E18F5DE7375EED34BE1A985FB4BB3E97F87E3B0335553191167A6C253D064A99
          9D83C6692A55482E2EADD5A1B6802B2F7EA2C2A6BE5A71C066BC475BABAA91A7
          B64E069FC27343F3AD0F1FCBAB7DF687AD75EF7EEBDD7BDFBAF75A13FF00C29E
          3BAD37E7CD0EBEE9EC6569ABC7F4AF4F527DFD1412AC8945BCFB13335798CB43
          56AA59629A6DB587C13A8FD45196F62458C24016CED1350EE2EC7D73A695FD98
          FB4D3AAA807C56D26A6801FB3AAB5FE549B0E9B7CFF310F89183AFA3792920EF
          0D9DB86B606465120DA7552EEE313DD4094433E115DC7FA8B8B1E6C5AD99618C
          5086AF0F9673D3EA74DBCAEC3381F654D07F87AFA917BB74D75EF7EEBDD7BDFB
          AF75EF7EEBDD7BDFBAF75EF7EEBDD7FFD2DFE3DFBAF75EF7EEBDD7BDFBAF75EF
          7EEBDD7BDFBAF75EF7EEBDD7BDFBAF751EAE11534B534E42B09E9E684ABFE861
          2C6C967B06F49D5CF078F7643A5D5BD08EB445411D7CA17E7A749647E39FCB8F
          90FD455915429D99DB5BB2971B3CE4EAAADAD92C83EE0D9D92019DC32E476966
          28AAD0066255C5AFF5061B995FACF10454465520818CA8273EA09A1F9E3AA5B6
          6DA2249A82C0FE4C40FF0063E5D6C0BFF098FF009738AD9DDB7D8BF16F76D72A
          1ECFC1D2EE8EBEAA9A589618F37B3E0A86DC5835F2B46EB3E4F6ED4455CACCDC
          4789A805599D0FB0FC148AEA44D7512E454E6AA0FF0086A69C7CBA5D201242AC
          38A71FCCFF00B1D6EFBED77497AF7BF75EEBDEFDD7BAD423FE14334FDF9F14FB
          73AF7E527C76DFBBD7ABF17DE3B56B3AC3B3B35B26B67C7A54EF0DA9E2AADB2F
          94AB821B52E5731B4279A0A17564923870923C6CAFAC95AFAA4B349D1CAB444E
          B3C2A0E90B91C7351938A803AD412AC373A6455647180D900F9E0F0FCBAD60F6
          47F301F99BD67BDE8F7DEDDF939DCD51B8E8EB3EE59F736FDDCBBB31B92134AD
          F73166F0DB872597C5E569EA402248E782442403C3856F6844EF3709640FF6D3
          F6FF0093A544D3FB48FF004CF0A0C0FB2B8A7576DF01BFE1483DEBD7BD80F88F
          9AF5B5FDC7D67B8AAFC4776E1B1F8AC66EEEBE9A674264871188A3C7E2F746DB
          8AE1A58BC2995803178669D5450BD259DD5ABE1AF81E74075D7CB4E68457E2AF
          96788E98D3A9869343F3C0FCFABB3CFF006257FCD9EFBF857B87746D6C6CBB2B
          15D93D954389C96DCCFD164E837AF5CEFCEB435580DE942F02ABC54991A0F07D
          CC415842EB70CC92A693D8F425A4EF0BA98D85466BC3FD9C7EDE91ABC9AA48A5
          8FBAA05698E3D155FE627FCDE30FFCBBAAFAA3E397C4AD9B1D5EDEDBB90CAD7E
          E6392AE0B8FC76DCA1C84B041B3B0FFC19926C56433B56F2D43FDC07ABC751AD
          3978966AB78614F729F4B1444C71195870030B4A1C80704D7EC26BC707ABA00D
          53A9F4D71F3F5EB595F97FFCD77E627CCADCD5B57BCBB5B716D0D993D4492627
          ACBAFF00295DB576E51D1AA9869E9F232D055D366774D63532AABD46466A8FDC
          D4624862B22A096E484431C85050D429A7F2AF9FCFA556F0A860A41773C35007
          FC9FB3A25BB37B6BB5B6AE52972FB3BB1F7FEDACAD3CFE6872F83DD9B831D90A
          77BB293156D164209A20FADB500FEB2DA6DED879DEB459195BD6B4FE7D5D6327
          41603457FD55EB7F9FF84F674AEF8D99F13B74F78F65C990ACDE3F2537B49BE5
          3359D4964DC39BDA18BA28F13B6F2197AD9FFCA6AA6AFC82E4EBD2490BBD4419
          08E527D576B44D23C62491892DEA4E00C79FAF5BB9943C9A10011270A7CE84FC
          BABF7F77E98EBDEFDD7BA68DC19BC6EDAC166370E66BA971989C1E36B72B92C8
          D7388A8A8286829E4A9AAADAC9999121A4A68632F2BB32AA2296240048BC4865
          91235156269D698E9527AF941FCC8EFAC9FC8CF935DE3DD32555554C3D93D9DB
          AB7361166705E87691C84949B37086FA9A28F0BB5E9E8A8E28C7A5238D41E6FE
          D65DBAC9332A8AA500AFD800C7DA467AF276C610F97A70F9F573DFF09A4E8E4E
          C4F9AF9AECDCAC5056E3FA3BAEF2998A55AA532F8B74EF867DB78974D68EDA61
          DB9FC58F259525318B826FECB466657E1A41E1F314CF4A24EC811180A499FB74
          907F3A7F2EB7F5F77E98EBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BA
          FFD3DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF
          75EF7EEBDD68EFFF000A77F88147B1BB87AFFE5D6DC7AB141DD10AECAEC2A709
          786877C6D3C2A26D9CBACE42AFFB9FDA58E6A6F00D3A1B0E24D4CD29D26CCCD7
          3B6C45635ADB9209A64862BA7EDA678D3CA9D275631CEC9AB1270AF00456BFB7
          AD693A1BB9376F43F6E75D76D6C4AD9F1BBC7AEB75E137660A461AA9AA2AF135
          8B3BD164154A3D462F274ED25255C5AB4CD4D3BA35B51F61BBBB67F0D6689A92
          838F51FCABD185B4A14D1F287D7FCBF67975F554F897F22F65FCABF8FDD65DE1
          B1ABE2ABC4EF7DB18FC9CF49F711CF5D86C9E97A5CB6132816591D72586CAD2C
          F49505AC1E781CAFA6DED54332DC46B322901BC8E083E629FE0F953A60A3C64C
          720EF1D18FF6E75AEBDEFDD7BA2E3F2B3E2C7517CC8E95DD5D15DD58139ADA1B
          9628E582A29661499BDB79DA3264C4EE8DB392F1CAD8ADC187A83AA19823A323
          3C33473534B3C12BF6F3F80E4B22B467E2522A08AD720F1CE7EDCF1CF4DC9189
          1695218702388FB3AF9D5FF315FE535F237E05EF9C8479EDBF95DFFD355B9065
          D99DD9B5F1152DB72BE8E795DF1B8CDE54B49F7ADB2B76AC6CC26A5A893EDE69
          031A49E788061A9ED42113D982F037964BAD00AEBA281424F691C471A10475E8
          2EA5557B69D0922943E54FE8E4E7191FE4CF557CD83A889C928EB244CCECAA18
          48B25F901657840234ADDB48045BE8093ECB9B58450637073C453A59E244CC0E
          9FF075B247FC2796B3B937BFCC8D9788C8546EDDCFD4DD41B1F78D6528A9A9C9
          4FB6B61E4B70D7E36380A07964C7D2366EB2595228174BB49AD80B23FBF5B35D
          24D1AAEBFA52AE08CE95ED2453C854FEDEAD70F0BA3B040242578002B423F3E1
          D55A7F31DEBAEC6D93F337E506DEDFB4D9F84B776F656E6DB4996FBFF057E1F7
          56EFC967F6DEE5C3ACC121A9C566F0D594F3452424C4E8402752D94D7745B837
          65842E6DB4AD080687B56B9E048383E84538F48ED66458D55C0D409FB789FF00
          0F1E888E236267F375F418EC5E372190C857554743438FC7D0555557554F2489
          4F0414F4F0A354D4D4CD3B8448D3D65C8080DC7B2710DD2E1A072DFE94E7A589
          3C26667181E5C00F9F5B0CFF002D5FE425F203BD37F60B79FC9CD879EE99E8CC
          1D7535765B19BA619F01BF37F41178E74DBB85DBF349FC736F632BE2012AB235
          F1539581D9695659BD51BFF4B2B18DA6215335190DF2C114E3D3734A5C002807
          A2E3F6FF0093ADF736B6D8C16CBDBB84DA9B67174385C06DEC5D061F118AC653
          251D05063B1B4B15151525252C7E8A7A6A6A681238D07088A147007B50C6A6B4
          007A0C01F674C01414AF4FFEF5D6FAF7BF75EEA86BFE140DF37283E2FF00C34C
          B75260AB14F68FCA4A7CF758E0E9D25225C4EC27C7451767EE796240C658E9F0
          5958719125D1D6AF2F04EA5960914AFB41E0ABDE353B7E1F99A818E15A56A687
          1D36DDCE8841D15EEA7971A7ED3EBD7CEE64916ACC7FA1CEA6487D69C6A8C063
          A935BBC1790597496BD8DF91ED16AD6AB57A71E07A7A8C5851469EB7D9FF0084
          D37C5D97AB3E2B6F0F9039986D96EFEDCA69F03E48F9A6D93D735F9BDBF8E922
          6688699EBF7254E61E4D2D634E29F8E4D98868434A18957A53F2A83FCFFC1D3D
          72F531C240FD20403FE9A87FD5C3AD94BDBBD27EBDEFDD7BAF7BF75EEBDEFDD7
          BAF7BF75EEBDEFDD7BAFFFD4DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDF
          BAF75EF7EEBDD7BDFBAF75EF7EEBDD54E7F3ACF8B193F95FFCBFFB6B6A6D6C3B
          E6F7F75FFF000EED9D8D4308D5575792D932B56E73198F8914CF5392CEECE932
          3414D0C7EB96A2A5140248F665B615799ED246A47300A4FA10430F5A64532381
          F2E3D27B8AAAACC054A1AFE5C0FF002EBE661534A682AE68C994189E496CA2E7
          5A69700A331D13A93765370DF4B2F1ECBCAB9748E443A856B8FF003F4A750342
          B42A7853875B7C7FC27C7E7953EC0A4A5E80DD229B1BD5DBA3274D4785AF9B2D
          4D5351B7FB5F232989F1F5D0CC2096830DD842647C782582E468E54527EE6574
          62DA031EA4D429E7E83D3D295F3AF57975B9472D563E993D6E72ACAEAAE8C195
          80656521959585C329170410783EDDE9BEBBF7EEBDD7BDFBAF74D996C2E273D4
          7363B358EA3CA50D446629E96B608EA219626647789D24521A391A35D4BF46B5
          8DC7BB2BBA1AAB11D68807A2E3BC3E127C3DEC1AA15DBDBE30F44EE7C804117F
          12CC757ED0ABC9789595D63FE22F8AFBD31AB2820792C3F1F53EEFE33F13A4FD
          AAA7FC20F5EA66BE7D0B1D6BD39D4FD37886C0753F5BEC9EB7C23C8269315B2B
          6D6276DD049385286A24A6C552D345254329B348C0BB0FA93EE85D88A600F900
          3FC1D6E9D4ADD9D51D61BF2AF1D90DEDD79B2B775761E569F1359B936CE1B355
          58B9DD8B3CF8F9F2347512514EECC4978CAB1FC9F77134A142890E9F4EAA5549
          A919EA3E33A77A9B0B988770E1FAD361E2B3D4F21960CCE376A60E87290CACA5
          1A48EBE9A8A2A94778D8AB10D765241B8247BF19A56C1727AF0551C074238000
          000B01C003E807F41EDAEADD7BDFBAF75EF7EEBDD34E7B3989DB384CBEE3CF64
          28F1384C0E36B73197CAE46A23A3C7E37198EA692AEBABEBEAE5221A4A2A3A68
          9A4965721238D4B310013EEF1C6D2C891A0ABB1A0EB4CC154B1E03AF9847F363
          F9DB5FF3CBE5AEFAED1C7CB594FD6F8157EBEE9CC64EDA5A97AE76FE42BDB1D9
          7991A28A4A5CA6EFC94F5396AA8CEB7816AD294BBA5346E165EB9411D9C455A2
          415A8CD4B052D520D388A0C0C52B9EBD1021759196E3F6797ECFF0D7A24DD1BD
          55B9FB9FB5F61F576CDA66C96EADFF00BAF6F6CDC0D3E976D793DC591A5C6D23
          C8F0AC8A28E9679BCD2DF5048E366274A9B934AE5215502ADFD1E3C7A5705085
          D7F00AD7AFAC07C78E9DC07C7EE8FEADE97DAF178F07D6DB276FED2A162A125A
          A5C3E3A0A37AFAA455445AEC8C9119EA2C0069E476E4924A95458D5635F847FC
          5FF87A4B566AB37C47A19BDEFAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75E
          F7EEBDD7FFD5DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBD
          D7BDFBAF75EF7EEBDD71745756470191D4A329FA32B02181FF00020FBD824104
          71EBDC707AF9B8FF003CDF8373FC42F99BBA325B57032633A87BD1B29D95D732
          D352A0C550D6D756AB6FCD9B4421090539DB39EAD5A98A990DE9B1793A152D70
          47B31BB224482F63E2F50C07052A1454E053571F99AF4C5B1D0D25B3600CA9F5
          07C867CBD3AAD3F8DBD9989EA7ED8DA99FDE3859B756C78731449BB36EC15959
          402BB12EC607AFA4780A37F16C07956B288920B4F12A5C29362991CC4A5E3C91
          E4781FF4C071A797A74B442E74E6873F975F4BAFE5FDDFF96EE2EB4871597A3A
          CAD870B8BC665B6A6FB8726BB8F05BE366E66186AF0F938771C40ACF9A8E2A90
          2AE094B4A18890332C9A2259304702789AB19F3AD7FC1D264C00A5483E84529D
          5817B4FD5FAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7
          BF75EEBDEFDD7BAE890A0B1FA0049FA9E00B9E0727DF80A9A75EEB4B8FE7D9FC
          E1A1DE726E9F83BF19B73AC9B4A96A67C07C82EC4C0D4871B97214B5491D5F55
          6D6CA41A93F82504B1919FAC85AF57329A08DFEDD2AC559BA69DBA3F1357F8D1
          1E472A0FCC10413C08F21F3C06E3A4CF95AC63C88C1FB41191E63FD55D462495
          EB664F12C3107923F2595D98B336821588F1908D7D7CFD3FE0DEC98CC28CC6BD
          2B8E1720107B475B72FF00C26E7F97BC99CDD194F9BBD81497C36D4AACEED0EA
          4C6D6D3CCC2BF70C94B1E33746F48CCB1AA1A7C5D055CD8AA2915816AA6AC6E1
          A9D6E8ED75CCEB3B0FD24AE9F4626A33C41D3FC8F4ECEF1AC4914646BFC54FCB
          D3D7E7E5D6E95ED7748FAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEB
          DEFDD7BAFFD6DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBD
          D7BDFBAF75EF7EEBDD7BDFBAF7447BE7E7C12EA8F9FF00D1197EA0EC6F3E1F35
          492FF1EEB8DFF8DA786A737B037A525355418FCCD1D3544B053E4F1755155C94
          D92C7C92451D7D14AE82582A169EAA9955B5C088B248A1A06E2283F68A8343E8
          7FD905A9632D4643490703FEAF2EB409F961FC9CBE72FC509773E777774F6637
          9F5FE03EE6A4764F584526EFDAF2E16862F27F1BC8D15042DB9F6C635296332C
          D2E5682923A62B20662A35FB6A5B1770E2D9C480F002A58F0C500C91E74C7E5D
          5E3B8915034B861C7D3FC3C3A319FCA3BF9C749FCBEAAEBFAC7B3B6C6E1DF7D2
          9B8B3557956FE0592824DC3B22AEBD152B5B078CCCD4438CC9E1F25514D04B51
          147554B2453C6F3A34C659217496CAD089124A88891DA6B55201F81700549EEA
          F1FB7A55232DC812C4063D3CF87A57853ADD57E057F308EA8FE60DB2376EF9EA
          BDB3BD76B50ECFDD353B5EBE8B7AD263A9AB2A25868B1D90A7C8523632BEBE9E
          4A2ADA5CA268F5EB0E922B01652CF068DCBF84CC74D2B50071048A509F4F9749
          E8C29AE9535E06BC3F21D085DEDF357A1BE3CEF5DBDD65D81BA128BB2779616A
          F3DB3368BAFDACFB9E8E86AA0A39A2C764EAFC78AFBF96AA711C34CD289E6901
          D2A54330551DAB32472BBAAC2C48A93C08F5FDBD32D328768954B4A0568054D3
          A0576C7F330E9FDD7DE183F8FD8CD9BD8351D839F5AC9E9A8E8F1F435F4D418E
          C741F755F98CDCD4D58DFC2B15040AE56570C5D96C1791EFD35BA412C3099817
          7AD283D054F9FF0093ABAB332EB28557E78E8EBF6876450F586D6ACDCF5589C9
          6E0FB292146C3E0C43365A559C48124869E4750C81D2C4920006F7E2DEF56D6C
          D70FA41A0A71A63AD4920415A54F44E777FF0032CF8FFB4B7CF5CF57245B9B77
          F67F64D2D34F41D7FB128A9F74EE5C0CB52CE441BA29286A02615A082332CA25
          7591621E4D0620641B96D8423BE5EEAD02FE23F3A57AB292C85E94514E38E269
          8E8DCF66772EC4E9EEB5AFED8EC5CA0DB5B3F15418FAFC956641E9A95E886525
          A5A5A2A7A8FBDA9A5A786A27C857434C03C8A3CF2AA922FEE90DBBCD218D5945
          2B524D00A7A9EBDABE1A0249F4E8A1EE8FE623D798D9F1B26D5DBF1EF0C2E42A
          A345CE516FAD8F153AD0CD0C53C55E29D73351332BC52DF403A8152A6CD60552
          D945A039B906BFC3439FB6BD36D328AF4B6D99F393A8774D26F79F39BBF61F5A
          FF007762A87C3556FBDEFB731B4B954FB5926A7AC657CA53AB52C532E89C24A0
          8D3C11AC696A5B78A364513022A2B9007E46BD6D64A8AB0A0E919F0BBF9816D6
          F99D9EEC9C46C9D939A8309D5B518AC766FB152A28E7D8B99CA64E9ABAA529F6
          E57435153255948A84C92AB9530472C4589F2ADDB99205778E1975B291C2841A
          F0A1073FB3ABD70848E35FCA9EBE9D51B7F3ACFE79B57D6993DF7F0DFE2265D2
          1DEF451D76D6EE5EECC74E4CDB2AB645F0E5361F5CCE9648B7A434CCD0E472E6
          E70B2B490D2AFF001088D451AC548B6F11CB3006E4E429A69518F8B20D4D703F
          CF41A8F4DC1653F00FD87EDA8E1E9D6A19D25D07DC1F25FB1715D6FD3BB2B39B
          F37C6E0339C4E030F12B3C5491856ABABAAA9AB782931D8BA341E4A9AAAB78A9
          E104172ACCBEC9A699EE18212FACFF00ABE7D2A5D31D05507F83F2EB65DF87DF
          F099FEED6DEBB5777FCA7DD1B0B6FEC5A3AA8ABF37D75B4F2B95CD6E9CA2C6C5
          CE0B2195FE1F8FC461E92A1828A8A9A4A8C84823F4C5C9D4946B3634492E0787
          4AF696D5F654AD3AAACCC351C8E141E5F3A8FF00075B9B75D75DECEEA9D99B7B
          606C2DBD87DADB536BE2E930F85C1E071D4F8BC5E3E828A311C14D47454CAB1C
          1046B7B0BB31B92CCCC598A8ED1DA881507003007ECE99029C4927D4F1E96DEF
          DD6FAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAFFD7DFE3
          DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEB
          DD7BDFBAF75EF7EEBDD709234951A39143A30B32B0B83F9FF6E0FD3FA1F7B04A
          9041A1EBC4578F5F35DFE77BF0E715F11BE75EFDA5DA3B7D36DF5976C51C5DC1
          D7B41434F1D1626869B72D5D7506EDC2E2A969E35A6A0A1C4EF4C5645A0A345D
          1498DA8A316D0D19F6B6FE359A2B7BD5206BA86A6285428F4A548209F524F0E1
          D52CF1E25B96A69351E4486269FE51FB3AD84FFE1351F297A8375F4C6EEF8E10
          6361DB3DC1B2AB6A3774DF73342F36F8DA19AABA7A5FE3F4F53214AB96AB1192
          FB7A0ABA77D6B4E1E91E2256A4A445167AC2491C854C95AD47E214F227274E6B
          E9D28990D449A680FF002E1FB2BD167FF8552F6C6DCFE39F193A4E8B174E3795
          2E2F75767E673CF1224F4DB6729554DB5F038982A41494C399CBE12B26A95370
          1B174C46AE429DEA5876A7322EAF11C85C57494D24F1E150DE5F3AF49224D77B
          A970C8A2A78575547E7C3FC1D1DEFF0084EFFC7DD95D4FF09B29F28F2B4D4751
          BA3B2EAF77564FB86BA3FB8AEC36D2D8D94AFC3C784A77918CF4144D5D839ABE
          78E3D2B52F3C45EE69E22A51601EF1E397597695A8B535D392A40AD695A66872
          067A5775208D7C3228B1835F9D687F3A796075A7C7CD8F9E7DEFF327BF3B07B3
          772EFEDEF8EDB5B937257CBB1FAEA3DE3985DB1B1B644524CBB6F6ED16120ADA
          4C3AD653E3111EB6A21A78DEBEBDEA2A662CF33B136BFBB781CC16AEC21503E1
          278D054B50D2B51FB3A4D144A001200CF5E3C4E4F018EB6DDFF84DA7C4CDADB6
          3E38663E4EEE5C3455FD87D9F9DCA6336F65F230B5555E336160721361D69282
          A6A41300CBEE5C456D45518F9A88D69D5D8AC41494C324B297B891F56AA69249
          34A60D2B5A57E47A57705415B709411F1F2AD6873EB4FB3CFA62FE67F1F76FF3
          16F9E7B23F96BECE8F3FB3FA43AD7F81F6076FEECA4A2ABFB3CAD6D6E2A9F290
          656AE575831F558FDBB8BCCD3D0E2A292431499EC8CA65D4B0C7E231BA12C363
          6F0DA860F701B5BD0D14295603529C6AA106A33814C57A6606426791FE34202F
          0E39078FDBE47ACFF2E7F93EFF002BAF869F19B79F69F67E67B2312983C2A51E
          372B2EFB9E6DC7B8376D4D24CB8AC3603191D353E33299ACBD653B1829D6874E
          98DE493C54D14F3436B0855D950B388172CDA8607A9C53FD5F6748258483557A
          C8C700F0AFF9BAD7B7F95EFF002D2A6FE631DCDBCB08BBB6BBAFFAE76153E3F3
          19DCAC549F7FB8E7A7CE5764DB0788C679678A829EB67A7C554BCF50F198E310
          02B0B9915013176B998AC0585BAFC5ABE21E8315009F9F473770451450654B38
          3C29E54FF3F5B207F309F953D23FC987E26ECFF893F1AE9625EDBDF381AB5C24
          14F5F049B8F6EE16AA77A1DC3DABB8F2AD4A1DF315B92A3962C733AAB55E4E36
          F1F8A9A81E053EB18A1B48C5D48A7C307B4353B8FF004B8578FE5819AD7A2C90
          B4AE22038F123CBEC39EB4FCF869F17F72FCEDF92983E9AC1EE18B039DDF55DB
          832CDB8738AD939FCF4D04D97AE7A8D5594AF5B91AB1752CF320777323B81F52
          BB9B86BDB8A3B9D6F5C9AE282BF33C0638F4BC40228A466C014C0E3934F975F4
          07FE597FCAC7AA3F97B6D0ACAEA2A99B7A771EECA18A93796FFCA5351412FD9C
          33254C183DBD434A265C26120A85D6F08A8A96A99D44D2484AC71C3E11C71962
          AECCC69939A71F8700807CFD7A609AE9C607EDFCFAB5AF7BEBDD7BDFBAF75EF7
          EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7FFFD0DF
          E3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7E
          EBDD7BDFBAF75EF7EEBDD7BDFBAF75573FCD37F96A6CBFE637D4184DBD5B9E9B
          65F6775C56E4F33D6DBD21A14C94346D98A5829F706DDCCE335C12E436FEE418
          FA369C472254433D0D3CD113E3920A8596D2C0524B5BA53E03D3229A94820D54
          90695A50FA8E3EA1A7570CB2C47BC79791FB69FCBAD23FE12C9D8FFCBEBF992D
          26137756BED2DDDD69B8374EC7CCE0F2B595189A3DD515650D45247834AE7F1D
          3BD16E313D2D5E2A720C72BAD2CA86FA4FB2C9ADE5B1BFB4595D34004EAA9D04
          32FA903CBF9F4B219D6E6CE50EAC24AF97C5823E671FE4E8F57FC292F3153D97
          DB5F137BAE9F6FE5F018BDE1D2398DB2D4D9887ECEB69F2FB4F76D7657238EBC
          6F50A8F4E379C6480EC59195C5D4AB139B903F76D969A98C492127C8061181AB
          CB3434F5F2E915BB1FAA981C1D2A07ED6AFF00847578DFC89FB0B13DE5FCB029
          BA7E82A71B8FCDEC7A6DFBD77994C6C5AAAE0ABCC556472B155D6D2ACEEA9533
          62770D1B024A991D99BD4430057B248967F47515685EADE9962C3FCBE5D29BF8
          D9CCA0FE35C11C0E00C1F3F2EB41DEEAEA6DEDD21DAFD85D51BEF155389DE1D7
          1BC339B3F3B4B3C5204192DBD5D53492CF4B3B00B574B9080ACF4D2A9649A9A5
          495490EBED4DE466DE70AC4104549F235008AD69C6BE7D6ADCF8EAAE29AC7F84
          7EDEB7FCFF0084F87C83EBBDFF00F06B62F5061F796372BBEFAAD32F1EE7DB2E
          128B3B838331B972D598F69A865F14D57889A9EA224A7AB896584BDE3925137E
          D82FB3D22DA28FF1AD6A3F326A3F6E7A72E3519E46A12B8CFE4389FCB1F2EAEB
          378E6FAE7AAB6FEF1ED5DE155B676660F0184AEDC5BCB78E53ED3174D4987C0D
          0D5D7556432F92281DA1A0A213B5DB5B2AB3E904B104C23F1EE0C702B123801E
          43FC807F2E98A0152AB9F979FE438F5F3FBF9A9F2C7B37F9C87CF0D97D6DD730
          E5A87A6D37853EC0E8DDAB591D443FEE2AAAB445B97B537263E158E35CD66B1B
          4A6B6A15C3498FC55343465D9E292595BDC2FDA24876FDB685CD751C90E704FC
          2C6A169DB80389A024F4A208228EB2DD0FD4F4C547A52A01048E3F975B506629
          3E1D7F226F871B837A6130AE32F91A2A2A2A6A0A8CA4637E774F65FF000E94E2
          310D5356951F6EF513C724B33A53B5161B1F14F3240C2368E77AD2CE3EF15A40
          A6ACC6953FEDB15F90AF9FE6133B4AD40BA99BC86481FE1A70EB43BEF0EE5EE9
          FE61BF26F37D8FBD60A5CDF6876D6E5C7E270F84C20AA189C64751252E1F6C6C
          EDBD495551512458FC5D3B454D0F964795DC99AA1DA492572C6E57E67648A2C5
          BA0A003879669522A789A713D29861F0954B81EA7E75F5FB380EB728FE4D7FC9
          9F70FC2DDD151DF1DE793DB39CEC8C8EDE829B67E376D492D6D0ECDA6C8F8E6C
          9F932755051D457E5EB610909916230474EAEB1B3898B2B51DBAC3DCEFAA6151
          F215143C471E99323C8299D3F3E3FE1EB640F77EB5D7BDFBAF75EF7EEBDD7BDF
          BAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75FFD1DFE3
          DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEB
          DD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD5567F316FE52DF1E3F984E229733
          B8BEEFACFBB3034D253EDAEE5DA9454B559A3487CB2260B77E1EAA5A5A4DE3B7
          63A897C914324F4B5748F7FB5ABA78E4A88E750248A58CDBDDC41E1A50101752
          FF00A5620D3F61F3F335E996491584903E9907AD687ED008AFEDF4EB5CEF9D1F
          CBD3F9B5FF00A13DA9D03D87B636BFCBDD8BD7B9435BD69DB3B4320B5DD99B7E
          8A8E85A962C5D6D06632386DCB938E6C7164A857A2CA3D9955EB64D116872D60
          B816D2DA457513DABFFBF0B97500E3C82F1E14AE3AF1968E92490D251FC2307F
          9D7A61FE58F88FE605FCBB33B922BF0A7E456EDA4DFDBA36BD36E2A3C7EDDCAC
          5884DBB8F4C952D4D6344B86AF11EE0C74D987789A6314124778E59156F74915
          95CDB2CF2D518353035138F5141F97CBA7DEED643144CA74AD734FF67F6F5687
          FCD8FF00944D57CF5D9B8EF949D15819B6CFC894C1D2AE6BAFB3294BB7E2EC2C
          3E3C7D88C76467C94F1D260F77E16928D463EA64734B51431A52486F1D3CE4C4
          AC374BF4D2BAA4EBF0B3614D74FF0069456638AD0F91E3DA4E9463C5865F1E12
          4A1E2BF67F0E401F3F5FB78D54FF002FFF008E3FCC7BE15EF0A5CA663E09EF9D
          D9478D9E79F0F91A2DD188D8FB9F1ED3844C9D24D97A1C9E49B3DB6F27002B25
          0D5533C7AD55D1E322C51C3B75DC539292DB14F5AB5463F09A62BE7EA3A7E5DC
          51E21FE2F32903345A57EDCE7E5D1E4FE6739FFE6A3F3F3AEF6FF47F5CFC39EC
          1EB0EB77A84CEF65432E7304951BCABA8E6A69F078196BEA72B4348FB670F5B4
          C6AE4891EA3EEEB529E47F18A748CAAF0EE2185E28648848F82D56D4B4208D24
          70AF0351C30389AA14BF61224DF493691C069CF0A1D42BF98A1F9F46F7F92DFF
          002A5CF7C2FD99B8BB8BBCF6EE0DFE416F0A430E270E8D4F9397AFB6DC107960
          DBB0E5A18E484E473D54C25C9BD1378D923829C492AA4A18AEDED560909770CE
          4800F1D2381A54609FF5797466F70D70A8C632B4078E09E14AE4D69E5D5547F3
          2EF825FCE03E7BF7B65F7CEE6E88A84D81B466C8E03AA36550F6375CC98EC06D
          79AA6291F291ACDB9E0A5ADDC5B964A3867C8D5324333F8E0802474F4D0C4865
          79ADC2C16B7112DAAFCD816A815D5C41A11DBE9F3249E9245752C4351B693C53
          C7029F967D3A1E7F935FF25AEEDE99EF9FF4FBF2D7AF317B4E9F66D0CE9D7FB4
          32393C46E0CAC9B9EA8981F74CC30D555F8EA1831D8B69E9E00D51F75F715627
          445F02B12C8ED4C6CB2C9223115C03506A282A08CD38FDA3A52B74F2A18FC360
          A789619FCB3FB7ADBC1555155115511142A2280AAAAA2CAAAA2C15540B003E9E
          DDEB7D72F7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEB
          DD7BDFBAF75EF7EEBDD7BDFBAF75FFD2DFE3DFBAF75EF7EEBDD7BDFBAF75EF7E
          EBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75
          EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD05BDBBDCDD71D15B49F7BF
          67EE4A3DB3B745751E2E2ACAB61AAAF27919969E871B43096592B2BEAE660121
          8F548C0335B423B2B91C6D26AA10147124D00F2C9FB7F9E3ADA82CC14713D334
          1F233A425C4FF1C93B2F6B5162D5A8E39AB323918E869E9E6AF68A3A5867A8A9
          F1D3AB4B3CCB1A90E51A4F48627DECC2E06AC69F5A8A7F87AD0AB6029AFD87A1
          9E19A3A88629E1712433469344E2F678E450E8E2E01B32B03EDB208241E23AF7
          1EB27BD75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBD
          EFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBFFD3DFE3DFBAF7
          5EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDF
          BAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD
          6B29FF000A6BD85DB7B83E3B748EFAD8D4F9DAAD85D6BD8595CBF650C1896538
          8ABC96329B19B1F7664A9E02245C5E1679F2346F52DFB54D3E5615720CCB732B
          6825B9B1BE8601AA7ED2100259BB8574800D69C48E3404F00689DE6305C40C68
          2335A93C0798F31C787F2F3EB52BE8DC37C8CF953BB3AE3E33F5ED5565657646
          AEA30F88C5C55B518CA0C93CF5F5596A8CE6ECA8691A9AAA3C37DCCF51F74EAB
          2448084D67D2C4A4DD902D0C6C1BE61853CF3E9FB3A318EE21556B8142062829
          E78C67FCBD7D3D3A6F6D67766F5575F6D4DCF5A727B8B6F6D4C362739936791D
          B2594A2A48E1ADC8969AD35EBAA15A5B380CBAEC402080A4820D0B963EA4D6BF
          9F48D2BA16A287A12FDEBABF5EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EE
          BDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75F
          FFD4DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF
          75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BD
          FBAF75EF7EEBDD37E53158DCDD055E2B2F434D92C6D753CD495B435912CF4D55
          4B530C94F534D510B8292D3D4D34AF1C88C0AC91BB2302AC41BC72490BAC9139
          5901A8230411907F2391F3EB4CAAC0AB0A8E8BD7577C38F8ADD27B9323BC3A97
          A03AABAF374E56AE4ACABCFED3D9985C2E57C934A27960A7ADA2A48AA28E81E6
          50E69A264A7D401D17F6ECB732CD97D3AA9C42A827ED20549F9F4DA4291D7402
          01F2A9A7ECE1D195F69FA77AF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75
          EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7
          BF75EEBFFFD5DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBD
          D7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7
          EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF7
          5EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDF
          BAF75EF7EEBDD7BDFBAF75EF7EEBDD7FFFD6DFE3DFBAF75EF7EEBDD7BDFBAF75
          EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFB
          AF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7
          BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EE
          BDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7FFFD9}
        mmHeight = 19579
        mmLeft = 164042
        mmTop = 1588
        mmWidth = 27252
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1581#1603#1605' '#1603#1575#1585#1711#1586#1610#1606#1610' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7197
        mmLeft = 89673
        mmTop = 15081
        mmWidth = 22267
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText20'
        Border.mmPadding = 0
        DataField = 'BirthDate'
        DataPipeline = ppDBPipeline3
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 7112
        mmLeft = 152929
        mmTop = 33073
        mmWidth = 17198
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine31: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line31'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8202
        mmLeft = 119592
        mmTop = 41010
        mmWidth = 2646
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine32: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line32'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8202
        mmLeft = 103452
        mmTop = 32808
        mmWidth = 2646
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText21'
        Border.mmPadding = 0
        DataField = 'BirthPlace_L1'
        DataPipeline = ppDBPipeline3
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 7144
        mmLeft = 55563
        mmTop = 34396
        mmWidth = 20373
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine33: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line33'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8202
        mmLeft = 58738
        mmTop = 32544
        mmWidth = 2646
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = #1606#1592#1575#1605' '#1608#1592#1610#1601#1607' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7144
        mmLeft = 152400
        mmTop = 41275
        mmWidth = 18256
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = 'SoldierState_L1'
        DataPipeline = ppDBPipeline3
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 7144
        mmLeft = 120650
        mmTop = 41275
        mmWidth = 31221
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine34: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line34'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 84402
        mmTop = 40746
        mmWidth = 2646
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine35: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line35'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 16669
        mmLeft = 77258
        mmTop = 49477
        mmWidth = 2646
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine36: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line36'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 117475
        mmTop = 65881
        mmWidth = 2646
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'PersonelNo'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7673
        mmLeft = 83344
        mmTop = 57679
        mmWidth = 22490
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'InsuranceNumber'
        DataPipeline = ppDBPipeline3
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 7673
        mmLeft = 28840
        mmTop = 57415
        mmWidth = 25929
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText13'
        Border.mmPadding = 0
        DataField = 'studyField_L1'
        DataPipeline = ppDBPipeline3
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 6615
        mmLeft = 118798
        mmTop = 66940
        mmWidth = 34396
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line3'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 794
        mmTop = 88900
        mmWidth = 114829
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 105304
        mmLeft = 71173
        mmTop = 80963
        mmWidth = 1588
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 105569
        mmLeft = 35983
        mmTop = 80963
        mmWidth = 265
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1608#1590#1593#1610#1578' '
        Color = clSilver
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 7938
        mmLeft = 71702
        mmTop = 80963
        mmWidth = 33867
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label12'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1602#1576#1604#1610' '
        Color = clSilver
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 7938
        mmLeft = 36513
        mmTop = 80963
        mmWidth = 34396
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label14'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1601#1593#1604#1610' '
        Color = clSilver
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 7938
        mmLeft = 794
        mmTop = 80963
        mmWidth = 34925
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 105304
        mmLeft = 105834
        mmTop = 80963
        mmWidth = 2117
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line15'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 97102
        mmWidth = 115888
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine19: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line19'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 794
        mmTop = 105834
        mmWidth = 114829
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine21: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line21'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 529
        mmTop = 115094
        mmWidth = 114829
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line9'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 265
        mmTop = 32279
        mmWidth = 191559
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel15: TppLabel
        Tag = 4
        DesignLayer = ppDesignLayer3
        UserName = 'Label15'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '21'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7705
        mmLeft = 106627
        mmTop = 124619
        mmWidth = 8467
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel16: TppLabel
        Tag = 4
        DesignLayer = ppDesignLayer3
        UserName = 'Label16'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '18'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7705
        mmLeft = 106627
        mmTop = 97631
        mmWidth = 8467
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel18: TppLabel
        Tag = 4
        DesignLayer = ppDesignLayer3
        UserName = 'Label18'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '19'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7705
        mmLeft = 106627
        mmTop = 106627
        mmWidth = 8467
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel19: TppLabel
        Tag = 4
        DesignLayer = ppDesignLayer3
        UserName = 'Label19'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '20'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7705
        mmLeft = 106627
        mmTop = 115888
        mmWidth = 8467
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine24: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line24'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 124090
        mmWidth = 115359
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine28: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line28'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 529
        mmTop = 141552
        mmWidth = 114829
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine29: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line29'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 1058
        mmTop = 150284
        mmWidth = 114565
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine30: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line30'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 265
        mmTop = 132821
        mmWidth = 115094
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel20: TppLabel
        Tag = 4
        DesignLayer = ppDesignLayer3
        UserName = 'Label20'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '22'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7705
        mmLeft = 106627
        mmTop = 133350
        mmWidth = 8467
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel21: TppLabel
        Tag = 4
        DesignLayer = ppDesignLayer3
        UserName = 'Label21'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '23'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7705
        mmLeft = 106627
        mmTop = 142082
        mmWidth = 8467
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel23: TppLabel
        Tag = 4
        DesignLayer = ppDesignLayer3
        UserName = 'Label23'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '24'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7705
        mmLeft = 106627
        mmTop = 151342
        mmWidth = 8467
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = #1711#1585#1608#1607' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6615
        mmLeft = 92869
        mmTop = 89959
        mmWidth = 11113
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label27'
        Border.mmPadding = 0
        Caption = #1662#1575#1610#1607' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6615
        mmLeft = 97631
        mmTop = 97896
        mmWidth = 6350
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label32'
        Border.mmPadding = 0
        Caption = #1585#1578#1576#1607' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6615
        mmLeft = 96838
        mmTop = 107156
        mmWidth = 7144
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel53: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label53'
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1608#1581#1602#1608#1602' '#1605#1586#1575#1610#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6615
        mmLeft = 79640
        mmTop = 179123
        mmWidth = 24342
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine37: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line37'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 1058
        mmTop = 159544
        mmWidth = 114565
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel54: TppLabel
        Tag = 4
        DesignLayer = ppDesignLayer3
        UserName = 'Label54'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '25'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7705
        mmLeft = 106627
        mmTop = 160073
        mmWidth = 8467
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel56: TppLabel
        Tag = 4
        DesignLayer = ppDesignLayer3
        UserName = 'Label56'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '26'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7705
        mmLeft = 106627
        mmTop = 168805
        mmWidth = 8467
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine39: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line39'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 177271
        mmWidth = 115094
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel57: TppLabel
        Tag = 4
        DesignLayer = ppDesignLayer3
        UserName = 'Label57'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '27'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7705
        mmLeft = 106627
        mmTop = 178330
        mmWidth = 8467
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine40: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line40'
        Border.mmPadding = 0
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 265
        mmTop = 183621
        mmWidth = 115094
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'marriage_L1'
        DataPipeline = ppDBPipeline3
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 6615
        mmLeft = 0
        mmTop = 34396
        mmWidth = 30427
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = '_PrsnNationalID'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 60854
        mmTop = 74083
        mmWidth = 30956
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel38: TppLabel
        Tag = 17
        DesignLayer = ppDesignLayer3
        UserName = 'Label38'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583' '#1605#1604#1610':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7144
        mmLeft = 92604
        mmTop = 73554
        mmWidth = 14023
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText18'
        Border.mmPadding = 0
        DataField = 'PayehCode'
        DataPipeline = ppDBPipeline4
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline4'
        mmHeight = 7408
        mmLeft = 46831
        mmTop = 97896
        mmWidth = 17198
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText22'
        Border.mmPadding = 0
        DataField = 'gradeCode'
        DataPipeline = ppDBPipeline4
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline4'
        mmHeight = 7673
        mmLeft = 46831
        mmTop = 106627
        mmWidth = 17198
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText23'
        Border.mmPadding = 0
        DataField = '_GradeName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 9525
        mmTop = 89429
        mmWidth = 17198
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText24'
        Border.mmPadding = 0
        DataField = '_PayehNoName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 9525
        mmTop = 97896
        mmWidth = 17198
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText25'
        Border.mmPadding = 0
        DataField = '_GradeName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7673
        mmLeft = 9525
        mmTop = 106627
        mmWidth = 17198
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line2'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 265
        mmTop = 168275
        mmWidth = 115094
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label10'
        OnGetText = ppLblAmount
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 69586
        mmTop = 12700
        mmWidth = 6350
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText11'
        OnGetText = ppLblAmount
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 7673
        mmLeft = 10583
        mmTop = 177007
        mmWidth = 17198
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText29: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText29'
        OnGetText = ppLblAmount2TextGetText
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 7070
        mmLeft = 47625
        mmTop = 178065
        mmWidth = 17198
        BandType = 10
        LayerName = PageLayer1
      end
      object plblSanavat: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label24'
        OnGetText = plblSanavatGetText
        Border.mmPadding = 0
        Caption = #1587#1606#1608#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 10583
        mmTop = 23813
        mmWidth = 6879
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText30: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText30'
        OnGetText = ppLblAmount
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'SumAmount'
        DataPipeline = pdbplnInterdictItemsp
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pdbplnInterdictItemsp'
        mmHeight = 7705
        mmLeft = 137075
        mmTop = 2646
        mmWidth = 21675
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel39: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label25'
        OnGetText = ppLabel39GetText
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594' '#1576#1581#1585#1608#1601
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6435
        mmLeft = 21008
        mmTop = 5556
        mmWidth = 12065
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel40: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label40'
        OnGetText = ppLbl4AllOnlyReplaceGetText
        Border.mmPadding = 0
        Caption = #1606#1608#1593#1581#1603#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 43656
        mmTop = 15875
        mmWidth = 8467
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel41: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label401'
        OnGetText = ppLbl4AllOnlyReplaceGetText
        Border.mmPadding = 0
        Caption = #1606#1608#1593#1583#1608#1581#1603#1605' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6435
        mmLeft = 20923
        mmTop = 15875
        mmWidth = 12150
        BandType = 10
        LayerName = PageLayer1
      end
      object pdbtxtFormInfoID2InfoID: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText16'
        OnGetText = pdbtxtFormInfoID2InfoIDGetText
        Border.mmPadding = 0
        DataField = 'OfficeCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7144
        mmLeft = 146844
        mmTop = 128588
        mmWidth = 17198
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText31: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText31'
        OnGetText = pdbtxtFormInfoID2InfoIDGetText
        Border.mmPadding = 0
        DataField = 'jobCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7144
        mmLeft = 146579
        mmTop = 139436
        mmWidth = 17198
        BandType = 10
        LayerName = PageLayer1
      end
      object plblSanavatBime: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'plblSanavatBime'
        OnGetText = plblSanavatBimeGetText
        Border.mmPadding = 0
        Caption = #1587#1606#1608#1575#1578' '#1576#1610#1605#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6435
        mmLeft = 53806
        mmTop = 8467
        mmWidth = 11811
        BandType = 10
        LayerName = PageLayer1
      end
      object pdbtxtInfoName_L1: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'pdbtxtInfoName_L1'
        OnGetText = pdbtxtInfoName_L1GetText
        Border.mmPadding = 0
        DataField = 'jobCode'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7144
        mmLeft = 146844
        mmTop = 151342
        mmWidth = 17198
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel48: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label34'
        OnGetText = ppLblTimeReplaceGetText
        Border.mmPadding = 0
        Caption = #1605#1583#1578' '#1602#1585#1575#1585#1583#1575#1583'    '#1578#1575#1585#1610#1582#1578#1575#1575#1578#1585#1610#1582'    '#1578#1575#1585#1610#1582#1578#1575#1578#1575#1585#1610#1582
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 3704
        mmTop = -2646
        mmWidth = 110331
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel55: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label39'
        OnGetText = ppLbl4AllOnlyReplaceGetText
        Border.mmPadding = 0
        Caption = #1580#1575#1740#1711#1585#1740#1606' '#1705#1604#1605#1575#1578' '#1587#1585#1607#1605'  '#1578#1593#1583#1575#1583#1605#1575#1607#1608#1585#1608#1586
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 121444
        mmTop = 12700
        mmWidth = 41540
        BandType = 10
        LayerName = PageLayer1
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'InterdictNo'
      DataPipeline = ppDBPipeline1
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      ResetPageNo = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer3: TppDesignLayer
        UserName = 'PageLayer1'
        LayerType = ltPage
        Index = 0
      end
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 1
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = SrcInterdicts
    OpenDataSource = False
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'Interdicts'
    Left = 186
    Top = 463
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'InterdictID'
      FieldName = 'InterdictID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'PersonelNo'
      FieldName = 'PersonelNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'EmployTypeID'
      FieldName = 'EmployTypeID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'InterdictNo'
      FieldName = 'InterdictNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'InterdictDate'
      FieldName = 'InterdictDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'OfficeCode'
      FieldName = 'OfficeCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'jobCode'
      FieldName = 'jobCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'grade'
      FieldName = 'grade'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'jobCity'
      FieldName = 'jobCity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'InterdicType'
      FieldName = 'InterdicType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'InterdicStartDate'
      FieldName = 'InterdicStartDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'employDaytime'
      FieldName = 'employDaytime'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'State'
      FieldName = 'State'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = '_PrsnName'
      FieldName = '_PrsnName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = '_PostalCode'
      FieldName = '_PostalCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = '_PrsnlastName'
      FieldName = '_PrsnlastName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = '_PrsnFatherName'
      FieldName = '_PrsnFatherName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = '_PrsnId'
      FieldName = '_PrsnId'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = '_PrsnNationalID'
      FieldName = '_PrsnNationalID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = '_LicenceName'
      FieldName = '_LicenceName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = '_marriage'
      FieldName = '_marriage'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = '_subcompanyName'
      FieldName = '_subcompanyName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = '_childNumber'
      FieldName = '_childNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField24: TppField
      FieldAlias = 'AccTopicCode'
      FieldName = 'AccTopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField25: TppField
      FieldAlias = 'AccDetailCode'
      FieldName = 'AccDetailCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField26: TppField
      FieldAlias = 'AccCTopicCode'
      FieldName = 'AccCTopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField27: TppField
      FieldAlias = 'AccCTopicCode2'
      FieldName = 'AccCTopicCode2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField28: TppField
      FieldAlias = 'InterdicEndDate'
      FieldName = 'InterdicEndDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField29: TppField
      FieldAlias = 'TotalYearsWork'
      FieldName = 'TotalYearsWork'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField30: TppField
      FieldAlias = 'InterdicStartDateM'
      FieldName = 'InterdicStartDateM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField31: TppField
      FieldAlias = 'TaxCalculationType'
      FieldName = 'TaxCalculationType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField32: TppField
      FieldAlias = 'insuranceID'
      FieldName = 'insuranceID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField33: TppField
      FieldAlias = 'StandardEmployAmount'
      FieldName = 'StandardEmployAmount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField34: TppField
      FieldAlias = 'ProjectID'
      FieldName = 'ProjectID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField35: TppField
      FieldAlias = '_PayehNoName'
      FieldName = '_PayehNoName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField36: TppField
      FieldAlias = '_ProjectName_L1'
      FieldName = '_ProjectName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField37: TppField
      FieldAlias = 'ManegePercent'
      FieldName = 'ManegePercent'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField38: TppField
      FieldAlias = 'OfficeManegePercent'
      FieldName = 'OfficeManegePercent'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField39: TppField
      FieldAlias = 'GroupID'
      FieldName = 'GroupID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField40: TppField
      FieldAlias = 'PayehNo'
      FieldName = 'PayehNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField41: TppField
      FieldAlias = 'GrpExpense'
      FieldName = 'GrpExpense'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField42: TppField
      FieldAlias = 'SubFunctionID'
      FieldName = 'SubFunctionID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField43: TppField
      FieldAlias = 'SubInterdictID'
      FieldName = 'SubInterdictID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField44: TppField
      FieldAlias = 'LastInterdictID'
      FieldName = 'LastInterdictID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField45: TppField
      FieldAlias = '_GroupNoName'
      FieldName = '_GroupNoName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField46: TppField
      FieldAlias = '_GradeName'
      FieldName = '_GradeName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField47: TppField
      FieldAlias = 'AccCTopicCode3'
      FieldName = 'AccCTopicCode3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField48: TppField
      FieldAlias = 'InterdicTypeTxt'
      FieldName = 'InterdicTypeTxt'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField49: TppField
      FieldAlias = 'GradeDate'
      FieldName = 'GradeDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField50: TppField
      FieldAlias = 'HasRetard'
      FieldName = 'HasRetard'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 49
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField51: TppField
      FieldAlias = 'InsuranceStartDate'
      FieldName = 'InsuranceStartDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 50
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField52: TppField
      FieldAlias = 'InsuranceEndDate'
      FieldName = 'InsuranceEndDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 51
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField53: TppField
      FieldAlias = 'RetirementDate'
      FieldName = 'RetirementDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 52
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField54: TppField
      FieldAlias = 'jobsGroup'
      FieldName = 'jobsGroup'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 53
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField55: TppField
      FieldAlias = '_jobsGroupName'
      FieldName = '_jobsGroupName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 54
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField56: TppField
      FieldAlias = 'TaxMounth'
      FieldName = 'TaxMounth'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 55
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField57: TppField
      FieldAlias = 'TaxDays'
      FieldName = 'TaxDays'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 56
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField58: TppField
      FieldAlias = 'LastUser'
      FieldName = 'LastUser'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 57
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField59: TppField
      FieldAlias = 'FirstUser'
      FieldName = 'FirstUser'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 58
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField60: TppField
      FieldAlias = 'AidNo1'
      FieldName = 'AidNo1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 59
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField61: TppField
      FieldAlias = 'AidDate1'
      FieldName = 'AidDate1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 60
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField62: TppField
      FieldAlias = '_jobName'
      FieldName = '_jobName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 61
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField63: TppField
      FieldAlias = '_jobCodeInfoID'
      FieldName = '_jobCodeInfoID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 62
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField64: TppField
      FieldAlias = 'KargozinyNote_L1'
      FieldName = 'KargozinyNote_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 63
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField65: TppField
      FieldAlias = 'KargozinyNote_L2'
      FieldName = 'KargozinyNote_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 64
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField66: TppField
      FieldAlias = 'Comment'
      FieldName = 'Comment'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 65
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField67: TppField
      FieldAlias = 'subcompanyCode'
      FieldName = 'subcompanyCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 66
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField68: TppField
      FieldAlias = '_FullName'
      FieldName = '_FullName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 67
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField69: TppField
      FieldAlias = 'TypeOfContract'
      FieldName = 'TypeOfContract'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 68
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField70: TppField
      FieldAlias = 'UserID'
      FieldName = 'UserID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 69
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField71: TppField
      FieldAlias = 'Email'
      FieldName = 'Email'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 70
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField72: TppField
      FieldAlias = 'StandardClock'
      FieldName = 'StandardClock'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 71
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField73: TppField
      FieldAlias = 'RetardActive'
      FieldName = 'RetardActive'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 72
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField74: TppField
      FieldAlias = 'jobCityAddress'
      FieldName = 'jobCityAddress'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 73
      Searchable = False
      Sortable = False
    end
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = srcItems
    OpenDataSource = False
    UserName = 'InterdictItems'
    Left = 30
    Top = 463
    MasterDataPipelineName = 'ppDBPipeline1'
    object ppDBPipeline2ppField1: TppField
      FieldAlias = 'InterdictItemsID'
      FieldName = 'InterdictItemsID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField2: TppField
      FieldAlias = 'InterdictID'
      FieldName = 'InterdictID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField3: TppField
      FieldAlias = 'SalaryID'
      FieldName = 'SalaryID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField4: TppField
      FieldAlias = 'Amount'
      FieldName = 'Amount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField5: TppField
      FieldAlias = 'FirstMounth'
      FieldName = 'FirstMounth'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField6: TppField
      FieldAlias = 'EndMounth'
      FieldName = 'EndMounth'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField7: TppField
      FieldAlias = '_InfoName_L1'
      FieldName = '_InfoName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField8: TppField
      FieldAlias = '_InfoName_L2'
      FieldName = '_InfoName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField9: TppField
      FieldAlias = 'AccTopicCode'
      FieldName = 'AccTopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField10: TppField
      FieldAlias = 'AccDetailCode'
      FieldName = 'AccDetailCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField11: TppField
      FieldAlias = 'AccCTopicCode'
      FieldName = 'AccCTopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField12: TppField
      FieldAlias = 'AccCTopicCode2'
      FieldName = 'AccCTopicCode2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField13: TppField
      FieldAlias = 'ItemNote_L1'
      FieldName = 'ItemNote_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField14: TppField
      FieldAlias = '_OldAmount'
      FieldName = '_OldAmount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField15: TppField
      FieldAlias = 'ExpenseType'
      FieldName = 'ExpenseType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField16: TppField
      FieldAlias = 'ItemNote_L2'
      FieldName = 'ItemNote_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField17: TppField
      FieldAlias = 'Firstdate'
      FieldName = 'Firstdate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField18: TppField
      FieldAlias = 'Enddate'
      FieldName = 'Enddate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField19: TppField
      FieldAlias = 'Amount2'
      FieldName = 'Amount2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField20: TppField
      FieldAlias = 'Amount30'
      FieldName = 'Amount30'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField21: TppField
      FieldAlias = 'UserID'
      FieldName = 'UserID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField22: TppField
      FieldAlias = 'JobScore'
      FieldName = 'JobScore'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField23: TppField
      FieldAlias = 'WageKind'
      FieldName = 'WageKind'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField24: TppField
      FieldAlias = 'Amount30w'
      FieldName = 'Amount30w'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
  end
  object qryPeronalInfo2: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'PersonelNo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM Pay.EmployeeInfo'
      'WHERE (PersonelNo=:PersonelNo)'
      '')
    Left = 376
    Top = 169
  end
  object ppDBPipeline3: TppDBPipeline
    DataSource = SrcPeronalInfo2
    OpenDataSource = False
    UserName = 'PeronalInfo2'
    Left = 108
    Top = 463
    MasterDataPipelineName = 'ppDBPipeline1'
    object ppDBPipeline3ppField1: TppField
      FieldAlias = 'PersonelNo'
      FieldName = 'PersonelNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField2: TppField
      FieldAlias = 'PersonStateNo'
      FieldName = 'PersonStateNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField3: TppField
      FieldAlias = 'personelstate_L1'
      FieldName = 'personelstate_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField4: TppField
      FieldAlias = 'personelstate_L2'
      FieldName = 'personelstate_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField5: TppField
      FieldAlias = 'PersonelName_L1'
      FieldName = 'PersonelName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField6: TppField
      FieldAlias = 'PersonelName_L2'
      FieldName = 'PersonelName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField7: TppField
      FieldAlias = 'fatherName_L1'
      FieldName = 'fatherName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField8: TppField
      FieldAlias = 'fatherName_L2'
      FieldName = 'fatherName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField9: TppField
      FieldAlias = 'NationalityID'
      FieldName = 'NationalityID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField10: TppField
      FieldAlias = 'Nationality_L1'
      FieldName = 'Nationality_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField11: TppField
      FieldAlias = 'Nationality_L2'
      FieldName = 'Nationality_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField12: TppField
      FieldAlias = 'BirthDate'
      FieldName = 'BirthDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField13: TppField
      FieldAlias = 'SodurDate'
      FieldName = 'SodurDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField14: TppField
      FieldAlias = 'BirthPlace_L1'
      FieldName = 'BirthPlace_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField15: TppField
      FieldAlias = 'BirthPlace_L2'
      FieldName = 'BirthPlace_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField16: TppField
      FieldAlias = 'SodurPlace_L1'
      FieldName = 'SodurPlace_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField17: TppField
      FieldAlias = 'SodurPlace_L2'
      FieldName = 'SodurPlace_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField18: TppField
      FieldAlias = 'NationalID'
      FieldName = 'NationalID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField19: TppField
      FieldAlias = 'IDNumber'
      FieldName = 'IDNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField20: TppField
      FieldAlias = 'Sex_L1'
      FieldName = 'Sex_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField21: TppField
      FieldAlias = 'Sex_L2'
      FieldName = 'Sex_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField22: TppField
      FieldAlias = 'marriage_L1'
      FieldName = 'marriage_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField23: TppField
      FieldAlias = 'marriage_L2'
      FieldName = 'marriage_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField24: TppField
      FieldAlias = 'childnumber_L1'
      FieldName = 'childnumber_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField25: TppField
      FieldAlias = 'childnumber_L2'
      FieldName = 'childnumber_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField26: TppField
      FieldAlias = 'SupPepNumber'
      FieldName = 'SupPepNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField27: TppField
      FieldAlias = 'LicenceCode'
      FieldName = 'LicenceCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField28: TppField
      FieldAlias = 'licence_L1'
      FieldName = 'licence_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField29: TppField
      FieldAlias = 'licence_L2'
      FieldName = 'licence_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField30: TppField
      FieldAlias = 'studyField_L1'
      FieldName = 'studyField_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField31: TppField
      FieldAlias = 'studyField_L2'
      FieldName = 'studyField_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField32: TppField
      FieldAlias = 'StudyCity_L1'
      FieldName = 'StudyCity_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField33: TppField
      FieldAlias = 'StudyCity_L2'
      FieldName = 'StudyCity_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField34: TppField
      FieldAlias = 'UnivercityName_L1'
      FieldName = 'UnivercityName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField35: TppField
      FieldAlias = 'UnivercityName_L2'
      FieldName = 'UnivercityName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField36: TppField
      FieldAlias = 'StudyFinishedate'
      FieldName = 'StudyFinishedate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField37: TppField
      FieldAlias = 'StudyAverage'
      FieldName = 'StudyAverage'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField38: TppField
      FieldAlias = 'employDate'
      FieldName = 'employDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField39: TppField
      FieldAlias = 'finishEmployDate'
      FieldName = 'finishEmployDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField40: TppField
      FieldAlias = 'BankName_L1'
      FieldName = 'BankName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField41: TppField
      FieldAlias = 'BankName_L2'
      FieldName = 'BankName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField42: TppField
      FieldAlias = 'TaxCalculationName_L1'
      FieldName = 'TaxCalculationName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField43: TppField
      FieldAlias = 'TaxCalculationName_L2'
      FieldName = 'TaxCalculationName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField44: TppField
      FieldAlias = 'TaxZoneName_L1'
      FieldName = 'TaxZoneName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField45: TppField
      FieldAlias = 'TaxZoneName_L2'
      FieldName = 'TaxZoneName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField46: TppField
      FieldAlias = 'BranchCode'
      FieldName = 'BranchCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField47: TppField
      FieldAlias = 'AccountNumber'
      FieldName = 'AccountNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField48: TppField
      FieldAlias = 'AccBankType'
      FieldName = 'AccBankType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField49: TppField
      FieldAlias = 'insuranceID'
      FieldName = 'insuranceID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField50: TppField
      FieldAlias = 'insurancename'
      FieldName = 'insurancename'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 49
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField51: TppField
      FieldAlias = 'InsuranceNumber'
      FieldName = 'InsuranceNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 50
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField52: TppField
      FieldAlias = 'TaxZone'
      FieldName = 'TaxZone'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 51
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField53: TppField
      FieldAlias = 'TaxCalculationType'
      FieldName = 'TaxCalculationType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 52
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField54: TppField
      FieldAlias = 'CoTax'
      FieldName = 'CoTax'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 53
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField55: TppField
      FieldAlias = 'address_L1'
      FieldName = 'address_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 54
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField56: TppField
      FieldAlias = 'address_L2'
      FieldName = 'address_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 55
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField57: TppField
      FieldAlias = 'Note_L1'
      FieldName = 'Note_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 56
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField58: TppField
      FieldAlias = 'Note_L2'
      FieldName = 'Note_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 57
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField59: TppField
      FieldAlias = 'Tel'
      FieldName = 'Tel'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 58
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField60: TppField
      FieldAlias = 'BankCode'
      FieldName = 'BankCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 59
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField61: TppField
      FieldAlias = 'name_L1'
      FieldName = 'name_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 60
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField62: TppField
      FieldAlias = 'name_L2'
      FieldName = 'name_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 61
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField63: TppField
      FieldAlias = 'lastName_L1'
      FieldName = 'lastName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 62
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField64: TppField
      FieldAlias = 'lastName_L2'
      FieldName = 'lastName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 63
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField65: TppField
      FieldAlias = 'StoreDayTime'
      FieldName = 'StoreDayTime'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 64
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField66: TppField
      FieldAlias = 'employDatem'
      FieldName = 'employDatem'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 65
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField67: TppField
      FieldAlias = 'StoreDayTimeActive'
      FieldName = 'StoreDayTimeActive'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 66
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField68: TppField
      FieldAlias = 'EmployID'
      FieldName = 'EmployID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 67
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField69: TppField
      FieldAlias = 'AccName_L1'
      FieldName = 'AccName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 68
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField70: TppField
      FieldAlias = 'AccName_L2'
      FieldName = 'AccName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 69
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField71: TppField
      FieldAlias = 'AccTopicCode'
      FieldName = 'AccTopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 70
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField72: TppField
      FieldAlias = 'AccDetailCode'
      FieldName = 'AccDetailCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 71
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField73: TppField
      FieldAlias = 'AccCTopicCode'
      FieldName = 'AccCTopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 72
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField74: TppField
      FieldAlias = 'AccCTopicCode2'
      FieldName = 'AccCTopicCode2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 73
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField75: TppField
      FieldAlias = 'AccCTopicCode3'
      FieldName = 'AccCTopicCode3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 74
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField76: TppField
      FieldAlias = 'PercentWound'
      FieldName = 'PercentWound'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 75
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField77: TppField
      FieldAlias = 'SoldierState'
      FieldName = 'SoldierState'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 76
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField78: TppField
      FieldAlias = 'SoldierState_L1'
      FieldName = 'SoldierState_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 77
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField79: TppField
      FieldAlias = 'SoldierState_L2'
      FieldName = 'SoldierState_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 78
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField80: TppField
      FieldAlias = 'PostalCode'
      FieldName = 'PostalCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 79
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField81: TppField
      FieldAlias = 'DSW_JOB'
      FieldName = 'DSW_JOB'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 80
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField82: TppField
      FieldAlias = 'SpecialStateName'
      FieldName = 'SpecialStateName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 81
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField83: TppField
      FieldAlias = 'LicenceID'
      FieldName = 'LicenceID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 82
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField84: TppField
      FieldAlias = 'EmployTypeID'
      FieldName = 'EmployTypeID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 83
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField85: TppField
      FieldAlias = 'Mobile'
      FieldName = 'Mobile'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 84
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField86: TppField
      FieldAlias = 'BirthProvince_L1'
      FieldName = 'BirthProvince_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 85
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField87: TppField
      FieldAlias = 'IssuedProvince_L1'
      FieldName = 'IssuedProvince_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 86
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField88: TppField
      FieldAlias = 'BranchInfo'
      FieldName = 'BranchInfo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 87
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField89: TppField
      FieldAlias = 'MartyrChild'
      FieldName = 'MartyrChild'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 88
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField90: TppField
      FieldAlias = 'TelegramChatID'
      FieldName = 'TelegramChatID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 89
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField91: TppField
      FieldAlias = 'marriageCode'
      FieldName = 'marriageCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 90
      Searchable = False
      Sortable = False
    end
  end
  object SrcPeronalInfo2: TDataSource
    DataSet = qryPeronalInfo2
    Left = 264
    Top = 365
  end
  object qryInsert: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT FormInfoItems.SalaryID, FormsInfo.InfoName_L1, FormsInfo.' +
        'InfoName_L2,'
      
        'SUM(FormInfoItems.Amount) AS PriceSalary,RetardDate, FormsInfo.A' +
        'ccTopicCode, FormsInfo.AccDetailCode, '
      'FormsInfo.AccCTopicCode, FormsInfo.AccCTopicCode2 '
      '              FROM Pay.FormInfoItems INNER JOIN '
      
        '              Pay.FormsInfo ON FormInfoItems.SalaryID = FormsInf' +
        'o.FormInfoID '
      '              WHERE (FormInfoItems.FormInfoID=1 )'
      ''
      
        '              GROUP BY FormInfoItems.SalaryID, FormsInfo.InfoNam' +
        'e_L1, FormsInfo.InfoName_L2, '
      'FormsInfo.AccTopicCode, FormsInfo.AccDetailCode, '
      '              FormsInfo.AccCTopicCode, FormsInfo.AccCTopicCode2'
      ' ')
    Left = 502
    Top = 105
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = qryInsert
    Left = 498
    Top = 347
  end
  object cliInsert: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 428
    Top = 331
  end
  object PopList4Print: TPopupMenu
    Left = 428
    Top = 405
    object mnuWordDocuments: TMenuItem
      Caption = #1670#1575#1662' '#1607#1575#1610' '
      object A_l_l_Click__: TMenuItem
        Caption = 'A_l_l_Click__'
        OnClick = A_l_l_Click__Click
      end
    end
    object NAllRecords: TMenuItem
      Caption = #1670#1575#1662' '#1607#1605#1607' '#1581#1603#1605#8207#1607#1575
      OnClick = NAllRecordsClick
    end
    object mnuFilter1: TMenuItem
      Action = actFilter
    end
    object mnuPersonalCard: TMenuItem
      Caption = #1670#1575#1662' '#1705#1575#1585#1578' '#1662#1585#1587#1606#1604#1740
      Hint = 'rptPersonalCard'
      OnClick = A_l_l_Click__Click
    end
  end
  object ppDesigner1: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.DatabaseType = dtParadox
    DataSettings.GuidCollationType = gcString
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = ppReport1
    IniStorageType = 'IniFile'
    IniStorageName = '($LocalAppData)\RBuilder\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 342
    Top = 463
  end
  object SproNewInterdict: TADOStoredProc
    Connection = DmF.adcsalary
    ProcedureName = 'pay.NewInterdict;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@OldInterdictID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@InterdicStartDate'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@InterdicEndDate'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@InterdicType'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@PersonelNo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@FirstUser'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 20
        Value = Null
      end
      item
        Name = '@InterdictID'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 710
    Top = 307
  end
  object qrySubInterdicts: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'InterdictId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     OldInterdicts.InterdictID, OldInterdictItems.SalaryID' +
        ', WageInfo.InfoName_L1 AS WageName, NEWInterdictItems.Amount, '
      
        '                      OldInterdictItems.Amount AS OldAmount, Old' +
        'Interdicts.GroupID, GroupInfo.InfoID AS GroupCode, GroupInfo.Inf' +
        'oName_L1 AS GroupName, '
      
        '                      OldInterdicts.grade, GradeInfo.InfoID AS g' +
        'radeCode, GradeInfo.InfoName_L1 AS gradeName, OldInterdicts.Paye' +
        'hNo, PayehInfo.InfoID AS PayehCode, '
      
        '                      PayehInfo.InfoName_L1 AS PayehName, NEWInt' +
        'erdicts.LastInterdictID, WageInfo.InfoID ,'
      
        #9#9#9'case  when WageInfo.InfoID <3 then  OldInterdictItems.Amount ' +
        '*30 else OldInterdictItems.Amount end as OldMonthAmount ,'
      
        #9#9#9'case  when WageInfo.InfoID <3 then  NEWInterdictItems.Amount ' +
        '*30 else NEWInterdictItems.Amount end as MonthAmount '
      'FROM         Pay.FormsInfo GradeInfo RIGHT OUTER JOIN'
      '                      Pay.FormsInfo PayehInfo RIGHT OUTER JOIN'
      
        '                      Pay.InterdictItems OldInterdictItems INNER' +
        ' JOIN'
      
        '                      Pay.Interdicts OldInterdicts ON OldInterdi' +
        'ctItems.InterdictID = OldInterdicts.InterdictID RIGHT OUTER JOIN'
      
        '                      Pay.InterdictItems NEWInterdictItems INNER' +
        ' JOIN'
      
        '                      Pay.Interdicts NEWInterdicts ON NEWInterdi' +
        'ctItems.InterdictID = NEWInterdicts.InterdictID INNER JOIN'
      
        '                      Pay.FormsInfo WageInfo ON NEWInterdictItem' +
        's.SalaryID = WageInfo.FormInfoID ON OldInterdictItems.SalaryID =' +
        ' NEWInterdictItems.SalaryID AND '
      
        '                      OldInterdicts.InterdictID = NEWInterdicts.' +
        'LastInterdictID ON PayehInfo.FormInfoID = OldInterdicts.PayehNo ' +
        'ON '
      
        '                      GradeInfo.FormInfoID = OldInterdicts.grade' +
        ' LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo GroupInfo ON OldInterdicts.G' +
        'roupID = GroupInfo.FormInfoID'
      
        'WHERE     (NEWInterdicts.InterdictID = :InterdictId ) AND (WageI' +
        'nfo.InfoID < 20)'
      ' ORDER BY  OldInterdictItems.SalaryID')
    Left = 380
    Top = 50
  end
  object ppDBPipeline4: TppDBPipeline
    DataSource = srcSubInterdicts
    UserName = 'SubInterdicts'
    Left = 264
    Top = 463
  end
  object srcSubInterdicts: TDataSource
    DataSet = qrySubInterdicts
    Left = 584
    Top = 339
  end
  object PopMnuOthers: TPopupMenu
    Left = 498
    Top = 405
    object N2: TMenuItem
      Action = actSearch_
    end
    object N3: TMenuItem
      Action = actSort
    end
    object N4: TMenuItem
      Action = actSearch
    end
    object N1: TMenuItem
      Action = actCopyInterdictPNo
    end
    object N5: TMenuItem
      Action = actState
    end
    object mniStateTo1: TMenuItem
      Action = actStateTo1
    end
    object mnuFilter: TMenuItem
      Action = actFilter
    end
    object N6: TMenuItem
      Action = actScan
    end
    object N7: TMenuItem
      Action = actInterdicts4HistoryF
    end
  end
  object qryItemsSum: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    Left = 40
    Top = 187
    object qryItemsSumAmount1: TBCDField
      DisplayLabel = #1580#1605#1593' '#1605#1586#1583' '#1605#1576#1606#1575
      FieldName = 'Amount1'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryItemsSumAmount2: TBCDField
      DisplayLabel = #1580#1605#1593' '#1605#1586#1575#1610#1575
      FieldName = 'Amount2'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryItemsSumAmountSum: TBCDField
      DisplayLabel = #1580#1605#1593
      FieldName = 'AmountSum'
      currency = True
    end
    object qryItemsSumAmountIn30: TBCDField
      DisplayLabel = #1580#1605#1593' '#1605#1586#1583' '#1605#1576#1606#1575'/*30'
      FieldName = 'AmountIn30'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryItemsAmountSumAnd30: TBCDField
      DisplayLabel = #1580#1605#1593' '#1603#1604
      FieldName = 'AmountSumAnd30'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object srcItemsSum: TDataSource
    DataSet = qryItemsSum
    Left = 70
    Top = 93
  end
  object ppDBPipeline5: TppDBPipeline
    DataSource = srcItemsSum
    OpenDataSource = False
    UserName = 'ItemsSum'
    Left = 568
    Top = 389
    object ppDBPipeline5ppField1: TppField
      FieldAlias = 'Amount1'
      FieldName = 'Amount1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline5ppField2: TppField
      FieldAlias = 'Amount2'
      FieldName = 'Amount2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline5ppField3: TppField
      FieldAlias = 'AmountSum'
      FieldName = 'AmountSum'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline5ppField4: TppField
      FieldAlias = 'AmountIn30'
      FieldName = 'AmountIn30'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline5ppField5: TppField
      FieldAlias = 'AmountSumAnd30'
      FieldName = 'AmountSumAnd30'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
  end
  object qryInitQry: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT  *  '
      'FROM Pay.FormTypes'
      'WHERE        (FormType = 45)')
    Left = 260
    Top = 147
  end
  object qryInterdictItemsP: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'InterdictID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT SUM(CASE WHEN InterdictItems.SalaryID = 1 THEN InterdictI' +
        'tems.Amount ELSE 0 END) AS Amount01, '
      
        '       SUM(CASE WHEN InterdictItems.SalaryID = 2 THEN InterdictI' +
        'tems.Amount ELSE 0 END) AS Amount02,'
      'SUM(Amount) as SumAmount'
      'FROM Pay.InterdictItems'
      'WHERE     (InterdictID = :InterdictID )')
    Left = 528
    Top = 171
  end
  object pdbplnInterdictItemsp: TppDBPipeline
    DataSource = srcInterdictItemsp
    OpenDataSource = False
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'pdbplnInterdictItemsp'
    Left = 714
    Top = 143
    MasterDataPipelineName = 'ppDBPipeline1'
    object pdbplnInterdictItemspppField1: TppField
      FieldAlias = 'Amount01'
      FieldName = 'Amount01'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object pdbplnInterdictItemspppField2: TppField
      FieldAlias = 'Amount02'
      FieldName = 'Amount02'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object pdbplnInterdictItemspppField3: TppField
      FieldAlias = 'SumAmount'
      FieldName = 'SumAmount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
  end
  object srcInterdictItemsp: TDataSource
    DataSet = qryInterdictItemsP
    Left = 688
    Top = 216
  end
  object qryJob: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT        jobCode, jobName, JobLocation, OrganPos, Organizat' +
        'ional, GroupCode, JobDefinition, CreationDate, GradeID, RankID'
      'FROM Pay.jobs')
    Left = 290
    Top = 59
  end
  object srcjob: TDataSource
    DataSet = qryJob
    Left = 150
    Top = 5
  end
  object qryInterdictItemsOldP: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'InterdictID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT SUM(CASE WHEN InterdictItems.SalaryID = 1 THEN InterdictI' +
        'tems.Amount ELSE 0 END) AS Amount01, '
      
        '       SUM(CASE WHEN InterdictItems.SalaryID = 2 THEN InterdictI' +
        'tems.Amount ELSE 0 END) AS Amount02,'
      'SUM(Amount) as SumAmount'
      'FROM Pay.InterdictItems'
      'WHERE     (InterdictID = :InterdictID )')
    Left = 648
    Top = 107
  end
  object srcqryInterdictItemsOldP: TDataSource
    DataSet = qryInterdictItemsOldP
    Left = 360
    Top = 232
  end
  object pdbplnInterdictItemsOldp: TppDBPipeline
    DataSource = srcqryInterdictItemsOldP
    OpenDataSource = False
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'srcqryInterdictItemsOldP'
    Left = 553
    Top = 223
    MasterDataPipelineName = 'ppDBPipeline1'
    object pdbplnInterdictItemsOldpppField1: TppField
      FieldAlias = 'Amount01'
      FieldName = 'Amount01'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object pdbplnInterdictItemsOldpppField2: TppField
      FieldAlias = 'Amount02'
      FieldName = 'Amount02'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object pdbplnInterdictItemsOldpppField3: TppField
      FieldAlias = 'SumAmount'
      FieldName = 'SumAmount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
  end
  object qryItemsSum2: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    Left = 208
    Top = 51
  end
  object pdbplnItemsSum2: TppDBPipeline
    DataSource = srcItemsSum2
    OpenDataSource = False
    UserName = 'pdbplnItemsSum2'
    Left = 672
    Top = 373
  end
  object srcItemsSum2: TDataSource
    DataSet = qryItemsSum2
    Left = 222
    Top = 101
  end
  object qryItemsSum2Old: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    Left = 264
    Top = 195
  end
  object srcItemsSum2Old: TDataSource
    DataSet = qryItemsSum2Old
    Left = 278
    Top = 101
  end
  object pdbplnItemsSum2Old: TppDBPipeline
    DataSource = srcItemsSum2Old
    OpenDataSource = False
    UserName = 'pdbplnItemsSum2Old'
    Left = 784
    Top = 437
  end
  object srcInsurance: TDataSource
    DataSet = qryInsurance
    Left = 248
    Top = 256
  end
  object qryInsurance: TADOQuery
    AutoCalcFields = False
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'insuranceID'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT        InsuranceCONSTinfo.insurancename, InsuranceCONSTin' +
        'fo.EmployerName, InsuranceCONSTinfo.workShop, InsuranceCONSTinfo' +
        '.InsuranceLabel_L1, InsuranceCONSTinfo.InsuranceLabel_L2, '
      
        '                         InsuranceCONSTinfo.insuranceUp, Insuran' +
        'ceCONSTinfo.dailywage, InsuranceCONSTinfo.tel, InsuranceCONSTinf' +
        'o.address, InsuranceCONSTinfo.OffShootName_L1, InsuranceCONSTinf' +
        'o.PostalCode, '
      '                         InsuranceCONSTinfo.MON_PYM'
      'FROM Pay.InsuranceCONSTinfo INNER JOIN'
      
        '                         Pay.FormsInfo ON InsuranceCONSTinfo.For' +
        'mInfoID = FormsInfo.FormInfoID'
      'WHERE        (InsuranceCONSTinfo.insuranceNo = :insuranceID )')
    Left = 320
    Top = 240
  end
  object plnInsurance: TppDBPipeline
    DataSource = srcInsurance
    UserName = 'plnInsurance'
    Left = 208
    Top = 304
  end
  object qryOfficeCode: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT        FormInfoID, InfoName_L1, InfoName_L2'
      'FROM Pay.FormsInfo'
      'WHERE        (FormType = 12)')
    Left = 464
    Top = 8
  end
  object popEmail: TPopupMenu
    Left = 713
    Top = 427
    object PNG1: TMenuItem
      Caption = 'PNG'
      object mnuEmail: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'PNG'
        OnClick = mnuEmailClick
      end
      object MenuItem3: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'PNG'
        OnClick = mnuEmailClick
      end
    end
    object JPEG1: TMenuItem
      Caption = 'JPEG'
      object N10: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'JPEG'
        OnClick = mnuEmailClick
      end
      object N11: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'JPEG'
        OnClick = mnuEmailClick
      end
    end
    object PDF1: TMenuItem
      Caption = 'PDF'
      object N12: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'PDF'
        OnClick = mnuEmailClick
      end
      object N13: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'PDF'
        OnClick = mnuEmailClick
      end
    end
    object BMP1: TMenuItem
      Caption = 'BMP'
      object N14: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'BMP'
        OnClick = mnuEmailClick
      end
      object N15: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'BMP'
        OnClick = mnuEmailClick
      end
    end
    object GIF1: TMenuItem
      Caption = 'GIF'
      object N16: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'GIF'
        OnClick = mnuEmailClick
      end
      object N17: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'GIF'
        OnClick = mnuEmailClick
      end
    end
    object RTF1: TMenuItem
      Caption = 'RTF'
      object N18: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'RTF'
        OnClick = mnuEmailClick
      end
      object N19: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'RTF'
        OnClick = mnuEmailClick
      end
    end
    object DOC1: TMenuItem
      Caption = 'DOC'
      object N20: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'DOC'
        OnClick = mnuEmailClick
      end
      object N21: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'DOC'
        OnClick = mnuEmailClick
      end
    end
    object extFile1: TMenuItem
      Caption = 'TextFile'
      object N22: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'TextFile'
        OnClick = mnuEmailClick
      end
      object N23: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'TextFile'
        OnClick = mnuEmailClick
      end
    end
  end
  object qryPersonelTypeInfo: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PersonelNo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT        PersonelTypeInfo.FormType, PersonelTypeInfo.FormIn' +
        'foID, FormsInfo.InfoName_L1, FormTypes.FormCaption_L1, FormsInfo' +
        '.InfoID'
      'FROM Pay.PersonelTypeInfo INNER JOIN'
      
        '                         Pay.FormsInfo ON PersonelTypeInfo.FormI' +
        'nfoID = FormsInfo.FormInfoID INNER JOIN'
      
        '                         Pay.FormTypes ON PersonelTypeInfo.FormT' +
        'ype = FormTypes.FormType'
      'WHERE        (PersonelTypeInfo.PersonelNo =  :PersonelNo )'
      'ORDER BY FormsInfo.InfoID'
      ''
      ''
      '')
    Left = 796
    Top = 6
  end
  object srcPersonelTypeInfo: TDataSource
    DataSet = qryPersonelTypeInfo
    Left = 916
    Top = 8
  end
  object plnPersonelTypeInfo: TppDBPipeline
    DataSource = srcPersonelTypeInfo
    OpenDataSource = False
    UserName = 'plnPersonelTypeInfo'
    Left = 856
    Top = 96
    MasterDataPipelineName = 'ppDBPipeline1'
    object plnPersonelTypeInfoppField1: TppField
      FieldAlias = 'PersonelNo'
      FieldName = 'PersonelNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object plnPersonelTypeInfoppField2: TppField
      FieldAlias = 'FormType'
      FieldName = 'FormType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object plnPersonelTypeInfoppField3: TppField
      FieldAlias = 'FormInfoID'
      FieldName = 'FormInfoID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object plnPersonelTypeInfoppField4: TppField
      FieldAlias = '_FormType'
      FieldName = '_FormType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object plnPersonelTypeInfoppField5: TppField
      FieldAlias = '_FormInfoID'
      FieldName = '_FormInfoID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
  end
  object popSendToServer: TPopupMenu
    Left = 273
    Top = 411
    object PNG2: TMenuItem
      Caption = 'PNG'
      object MenuItem1: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'PNG'
        OnClick = mnuSendToFileServerClick
      end
      object MenuItem2: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'PNG'
        OnClick = mnuSendToFileServerClick
      end
    end
    object PDF2: TMenuItem
      Caption = 'PDF'
      object N8: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'PDF'
        OnClick = mnuSendToFileServerClick
      end
      object N9: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'PDF'
        OnClick = mnuSendToFileServerClick
      end
    end
  end
  object qryDSW_JOB: TADOQuery
    AutoCalcFields = False
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\Projects\Fara201' +
      '0\Salary\Exe\Bimeh\Manufactory.mdb;Persist Security Info=False'
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'SELECT Job_Code, Job_Desc FROM Tab_Job')
    Left = 616
    Top = 256
  end
  object qryItemsP2: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    Left = 856
    Top = 467
  end
  object srcItemsP2: TDataSource
    DataSet = qryItemsP2
    Left = 854
    Top = 373
  end
  object plnItemsP2: TppDBPipeline
    DataSource = srcItemsP2
    OpenDataSource = False
    UserName = 'plnItemsP2'
    Left = 864
    Top = 421
    MasterDataPipelineName = 'ppDBPipeline1'
  end
  object qryItemsP1: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    Left = 936
    Top = 459
  end
  object srcItemsP1: TDataSource
    DataSet = qryItemsP1
    Left = 926
    Top = 373
  end
  object plnItemsP1: TppDBPipeline
    DataSource = srcItemsP1
    OpenDataSource = False
    UserName = 'plnItemsP1'
    Left = 928
    Top = 413
    MasterDataPipelineName = 'ppDBPipeline1'
  end
  object sproNewInterdict_S: TADOStoredProc
    Connection = DmF.adcsalary
    ProcedureName = 'pay.NewInterdict_S;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@OldInterdictID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@PersonnelNos'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1073741823
        Value = Null
      end
      item
        Name = '@FirstUser'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 20
        Value = Null
      end
      item
        Name = '@InterdictID'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 806
    Top = 307
  end
  object PopNewInterdict: TPopupMenu
    Left = 641
    Top = 435
    object N24: TMenuItem
      Action = actNewInterdict
    end
    object N27: TMenuItem
      Caption = '-'
    end
    object N26: TMenuItem
      Action = actCopyInterdictPNo
    end
    object N28: TMenuItem
      Caption = '-'
    end
    object N25: TMenuItem
      Action = actNewInterdicts
    end
  end
end

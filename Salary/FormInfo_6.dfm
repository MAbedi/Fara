inherited FormInfo_6F: TFormInfo_6F
  Left = 366
  Top = 120
  Caption = 'FormInfo_6F'
  ClientHeight = 589
  ClientWidth = 830
  OnResize = FormResize
  ExplicitWidth = 846
  ExplicitHeight = 628
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 548
    Width = 830
    ExplicitTop = 549
    ExplicitWidth = 834
    object newPanel: TPanel
      Left = 581
      Top = 0
      Width = 253
      Height = 41
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        253
        39)
      object BitBtn3: TBitBtn
        Left = 168
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 91
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        Left = 14
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetDelete1_
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        TabOrder = 2
      end
    end
    object okPanel: TPanel
      Left = 411
      Top = 1
      Width = 165
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitLeft = 416
      ExplicitTop = 0
      ExplicitHeight = 41
      DesignSize = (
        165
        39)
      object BitBtn7: TBitBtn
        Left = 88
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetPost1
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
        TabOrder = 0
      end
      object BitBtn8: TBitBtn
        Left = 10
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetCancel1
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
        TabOrder = 1
      end
    end
    object BitBtn1: TBitBtn
      Left = 94
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 3
    end
    object BitBtn2: TBitBtn
      Left = 172
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
    end
    object BitBtn6: TBitBtn
      Left = 249
      Top = 8
      Width = 89
      Height = 25
      Action = actSendToExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 5
    end
    object BitBtn11: TBitBtn
      Left = 340
      Top = 8
      Width = 75
      Height = 25
      CustomHint = DmF.BalloonHint1
      Caption = #1670#1575#1662
      TabOrder = 6
      OnClick = BitBtn11Click
    end
  end
  inherited Panel2: TPanel
    Width = 830
    ExplicitWidth = 834
    inherited ImgTemplate: TImage
      Left = 796
      ExplicitLeft = 796
    end
    inherited lblCaption: TLabel
      Left = 726
      Height = 16
      ExplicitLeft = 726
    end
    object Image2: TImage
      Left = 425
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
      Left = 449
      Top = 16
      Width = 16
      Height = 16
      AutoSize = True
      Picture.Data = {
        07544269746D617036030000424D360300000000000036000000280000001000
        0000100000000100180000000000000300000000000000000000000000000000
        0000F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFF
        F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFFEFEFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFEFFFFFFFDFFFFED
        F9FFFFFFFFE7F1F3E1EDF0E3EFF1E3EFF1E3EFF1E3EFF1E2EEF0DEEAECE2EEF0
        E3EFF1E0ECEEF2FDFFCCD9DBAAB7BAF8FEFFFEFEFFE2EEF0F1F7F8F9FBFCF8FA
        FBF9FCFCF7FAFAF6F8F9FFFFFFF6F8F9F3F5F6F8FBFBB5BBBD677679ADBCC1F6
        FFFFFFFFFFE3EFF1F7FAFBFFFFFFFFFFFFFAF9F9FFFFFFFFFEFE373636FFFEFE
        FFFEFEFFFEFEAAAFB0566467B5C4C8F5FEFEFFFFFFE3EFF1F5F9FAFFFFFFF4F4
        F4FFFFFFEEEEEE3B3B3B0000003B3C3CEAEBEBFFFFFFA5AAAB5E6C6FB3C2C6F6
        FFFFFFFFFFE2EEF0F7FBFCF6F4F4FFFFFFD8D8D8424242000000000000000000
        3F4040D0CFCFBDC2C2566467B4C3C7F6FFFFFFFFFFE3EFF1F0F3F4FFFFFFC4C4
        C43F3F3F000000000000929292010101000000B9B8B8CCD1D0536164B4C3C7F6
        FFFFFFFFFFE0ECEEF6F7F8ACABAB323333000000080808919191FFFFFF949494
        000000A7A6A6D0D5D5536164B4C3C7F6FFFFFFFFFFDDE9EBFFFFFF5351510000
        001D1D1D919191FFFFFFF7F7F7FFFFFF797979C6C5C5C1C6C7576568B4C3C7F6
        FFFFFFFFFFDDE9EBFDFDFD474646151515A0A0A0FFFFFFF1F1F1FCFCFCF5F6F6
        FFFFFFFFFFFFA7ACAD5D6B6EB3C2C6F6FFFFFFFFFFDDE9EBFFFFFF7C7A7AA4A3
        A3FFFFFFFEFDFDFFFFFFFFFFFFFFFFFFFEFEFDFFFFFFB4B9BA5A686BB4C3C7F6
        FFFFFEFEFEEAF6F8DAE0E1EDEFF0E8EBEBD7D9D9DCDEDFDBDDDDDBDDDEDBDDDE
        D7D9DADCDEDE999FA05E6C6EB4C2C6F5FEFEFFFFFFDFEBED707E804B56595965
        685A67695A66695A67695A67695A67695A676A5B686A5E696B707D81ABB9BDF6
        FFFFFDFEFFA6B3B89EAEB2A9B8BCA7B5B9A7B6BAA7B6BAA7B6BAA7B6BAA7B6BA
        A7B5BAA7B6BAA8B6BB9BAAAEB0BDC1F7FEFFEFFAFFF4FFFFF4FFFFF3FEFFF3FE
        FFF3FEFFF3FEFFF3FEFFF3FEFFF3FEFFF3FEFFF3FEFFF3FEFFF4FFFFF3FEFFEF
        FAFF}
      Visible = False
    end
    object PnlRecall: TPanel
      Left = 0
      Top = 0
      Width = 393
      Height = 53
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object DBText1: TDBText
        Left = 8
        Top = 8
        Width = 182
        Height = 17
        Color = 13948116
        DataField = 'InfoName_L1'
        DataSource = SrcMaster
        ParentColor = False
        Transparent = False
      end
      object SpeedButton1: TSpeedButton
        Left = 192
        Top = 5
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SpeedButton1Click
      end
      object LblPerson1: TLabel
        Left = 276
        Top = 9
        Width = 105
        Height = 13
        Alignment = taRightJustify
        Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606' '#1587#1591#1581' '#1602#1576#1604#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBNavigator1: TDBNavigator
        Left = 6
        Top = 29
        Width = 180
        Height = 18
        DataSource = SrcMaster
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Flat = True
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBEdit1: TDBEdit
        Left = 216
        Top = 6
        Width = 57
        Height = 21
        DataField = 'FormInfoID'
        DataSource = SrcMaster
        TabOrder = 1
      end
    end
  end
  inherited Panel3: TPanel
    Width = 507
    Height = 495
    ExplicitWidth = 422
    ExplicitHeight = 366
    object Label1: TLabel
      Left = 417
      Top = 10
      Width = 11
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1603#1583
      FocusControl = DBEdit2
      ExplicitLeft = 332
    end
    object LblInfoName_L1: TLabel
      Left = 417
      Top = 38
      Width = 26
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1593#1606#1608#1575#1606
      FocusControl = DBEdit3
      ExplicitLeft = 332
    end
    object LblInfoName_L2: TLabel
      Left = 417
      Top = 67
      Width = 47
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'InfoName'
      FocusControl = DBEdit4
      ExplicitLeft = 332
    end
    object Label4: TLabel
      Left = 417
      Top = 96
      Width = 47
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1605#1602#1583#1575#1585' '#1579#1575#1576#1578
      FocusControl = DBEdit5
      ExplicitLeft = 332
    end
    object Label5: TLabel
      Left = 417
      Top = 125
      Width = 48
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1590#1585#1610#1576'('#1585#1608#1586')'#8207
      FocusControl = DBEdit6
      ExplicitLeft = 332
    end
    object Label6: TLabel
      Left = 417
      Top = 154
      Width = 66
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1590#1585#1610#1576'('#1587#1575#1593#1578')'#8207
      FocusControl = DBEdit7
      ExplicitLeft = 332
    end
    object LblWord: TLabel
      Left = 417
      Top = 183
      Width = 81
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1606#1575#1605' '#1601#1575#1610#1604' '#1576#1585#1575#1610' '#1670#1575#1662
      FocusControl = EdtWord
      ExplicitLeft = 332
    end
    object SBtnWord: TSpeedButton
      Left = 196
      Top = 178
      Width = 23
      Height = 22
      Anchors = [akTop, akRight]
      Caption = '...'
      OnClick = SBtnWordClick
      ExplicitLeft = 111
    end
    object lblTaxCode: TLabel
      Left = 112
      Top = 10
      Width = 42
      Height = 13
      Caption = #1603#1583' '#1605#1575#1604#1610#1575#1578
    end
    object DBEdit2: TDBEdit
      Left = 310
      Top = 6
      Width = 105
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'InfoID'
      DataSource = srcFormInfo
      TabOrder = 0
      ExplicitLeft = 225
    end
    object DBEdit3: TDBEdit
      Left = 17
      Top = 34
      Width = 398
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'InfoName_L1'
      DataSource = srcFormInfo
      TabOrder = 2
      ExplicitWidth = 313
    end
    object DBEdit4: TDBEdit
      Left = 17
      Top = 63
      Width = 398
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'InfoName_L2'
      DataSource = srcFormInfo
      TabOrder = 3
      ExplicitWidth = 313
    end
    object DBEdit5: TDBEdit
      Left = 310
      Top = 92
      Width = 105
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'Amount'
      DataSource = srcFormInfo
      TabOrder = 4
      ExplicitLeft = 225
    end
    object DBEdit6: TDBEdit
      Left = 310
      Top = 121
      Width = 105
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'StandardDays'
      DataSource = srcFormInfo
      TabOrder = 5
      ExplicitLeft = 225
    end
    object DBEdit7: TDBEdit
      Left = 310
      Top = 150
      Width = 105
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'StandardTimes'
      DataSource = srcFormInfo
      TabOrder = 6
      ExplicitLeft = 225
    end
    object EdtWord: TDBEdit
      Left = 221
      Top = 179
      Width = 194
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'WordDocuments'
      DataSource = srcFormInfo
      TabOrder = 7
      ExplicitLeft = 136
    end
    object pnlMaxDayTime: TPanel
      Left = 6
      Top = 90
      Width = 184
      Height = 66
      BevelInner = bvLowered
      BevelWidth = 3
      TabOrder = 9
      object Label15: TLabel
        Left = 110
        Top = 11
        Width = 49
        Height = 13
        Caption = #1581#1583#1575#1603#1579#1585'  '#1585#1608#1586
      end
      object Label16: TLabel
        Left = 110
        Top = 44
        Width = 64
        Height = 13
        Caption = #1581#1583#1575#1603#1579#1585' '#1587#1575#1593#1578
      end
      object DBEdit15: TDBEdit
        Left = 11
        Top = 7
        Width = 95
        Height = 21
        DataField = 'MaxDay'
        DataSource = srcFormInfo
        TabOrder = 0
      end
      object DBEdit16: TDBEdit
        Left = 11
        Top = 38
        Width = 95
        Height = 21
        DataField = 'MaxTime'
        DataSource = srcFormInfo
        TabOrder = 1
      end
    end
    object PnlRecalKindClock: TPanel
      Left = 2
      Top = 285
      Width = 507
      Height = 26
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 10
      ExplicitLeft = 0
      ExplicitTop = 157
      ExplicitWidth = 422
      DesignSize = (
        503
        26)
      object Label17: TLabel
        Left = 411
        Top = 7
        Width = 116
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1606#1608#1593#8207#1601#1585#1575#1582#1608#1575#1606#1610#8207#1575#1586#1603#1575#1585#1578#8207#1587#1575#1593#1578
        ExplicitLeft = 330
      end
      object CmbRecalKindClock: TDBComboBox
        Left = 217
        Top = 5
        Width = 191
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'RecalKindClock'
        DataSource = srcFormInfo
        Items.Strings = (
          #1606#1583#1575#1585#1583
          #1575#1590#1575#1601#1607' '#1603#1575#1585#1610
          #1588#1576' '#1603#1575#1585#1610
          #1606#1608#1576#1578' '#1603#1575#1585#1610
          #1578#1593#1591#1610#1604' '#1603#1575#1585#1610'('#1585#1608#1586')'
          #1578#1593#1591#1610#1604' '#1603#1575#1585#1610'('#1587#1575#1593#1578')'
          #1605#1585#1582#1589#1610' '#1575#1587#1578#1581#1602#1575#1602#1610'('#1585#1608#1586')'
          #1605#1585#1582#1589#1610' '#1575#1587#1578#1581#1602#1575#1602#1610'('#1587#1575#1593#1578')'
          #1605#1585#1582#1589#1610' '#1575#1587#1578#1593#1604#1575#1580#1610
          #1605#1575#1605#1608#1585#1610#1578'('#1585#1608#1586')'
          #1605#1575#1605#1608#1585#1610#1578'('#1587#1575#1593#1578')'
          #1594#1610#1576#1578
          #1605#1585#1582#1589#1610' '#1587#1575#1593#1578#1610
          #1605#1585#1582#1589#1610' '#1576#1583#1608#1606' '#1581#1602#1608#1602
          #1603#1575#1585#1575#1606#1607)
        TabOrder = 0
      end
    end
    object btnAcc: TBitBtn
      Left = 10
      Top = 304
      Width = 91
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1583#1575#1585#1610
      TabOrder = 8
      OnClick = btnAccClick
      ExplicitTop = 175
    end
    object PageControl1: TPageControl
      Left = 2
      Top = 310
      Width = 503
      Height = 183
      ActivePage = tabShowOperators
      Align = alBottom
      TabOrder = 11
      ExplicitLeft = 0
      ExplicitTop = 183
      ExplicitWidth = 422
      object tabShowOperators: TTabSheet
        Caption = #1575#1606#1578#1582#1575#1576' '#1603#1575#1585#1576#1585#1575#1606' '#1605#1580#1575#1586
        object DBGrid3: TDBGrid
          Left = 0
          Top = 0
          Width = 503
          Height = 155
          Align = alClient
          Color = clCream
          DataSource = srcOperators
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid3DrawColumnCell
          OnDblClick = DBGrid3DblClick
          OnKeyDown = DBGrid3KeyDown
          Columns = <
            item
              Expanded = False
              FieldName = '_checked'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UserID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'name'
              Width = 276
              Visible = True
            end>
        end
      end
      object TabSheet2: TTabSheet
        Caption = #1575#1591#1604#1575#1593#1575#1578' '#1605#1585#1578#1576#1591
        ImageIndex = 1
        object TabControl1: TTabControl
          Left = 0
          Top = 0
          Width = 499
          Height = 155
          Align = alClient
          TabOrder = 0
          Tabs.Strings = (
            #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1593#1606#1575#1608#1610#1606' 1'
            #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1593#1606#1575#1608#1610#1606' 2')
          TabIndex = 0
          OnChange = TabControl1Change
          object DBGrid2: TDBGrid
            Tag = 111
            Left = 4
            Top = 24
            Width = 487
            Height = 92
            Align = alClient
            Color = clCream
            DataSource = SrcWage
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'SalaryID'
                Width = 47
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'InfoID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'InfoName_L1'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'InfoName_L2'
                Width = 100
                Visible = True
              end>
          end
          object Panel1: TPanel
            Left = 4
            Top = 116
            Width = 487
            Height = 35
            Align = alBottom
            TabOrder = 1
            ExplicitWidth = 495
            DesignSize = (
              487
              35)
            object BitBtn10: TBitBtn
              Left = 400
              Top = 6
              Width = 104
              Height = 25
              Anchors = [akTop, akRight]
              Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1610#1575
              TabOrder = 0
              OnClick = BitBtn10Click
              ExplicitLeft = 408
            end
          end
        end
      end
    end
    object edtTaxCode: TDBEdit
      Left = 18
      Top = 6
      Width = 89
      Height = 21
      DataField = 'TaxCode'
      DataSource = srcFormInfo
      TabOrder = 1
    end
    object dbchkSalaryIDinDocActive: TDBCheckBox
      Left = 303
      Top = 233
      Width = 108
      Height = 17
      CustomHint = DmF.BalloonHint1
      Alignment = taLeftJustify
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Caption = #1583#1585' '#1587#1606#1583' '#1606#1605#1575#1740#1588' '#1588#1608#1583
      DataField = 'SalaryIDinDocActive'
      DataSource = srcFormInfo
      ParentBiDiMode = False
      TabOrder = 12
      ValueChecked = '1'
      ValueUnchecked = '0'
      ExplicitLeft = 311
    end
  end
  object DBGrid1: TDBGrid [3]
    Tag = 111
    Left = 507
    Top = 53
    Width = 323
    Height = 495
    Align = alRight
    Color = clCream
    DataSource = srcFormInfo
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'FormInfoID'
        Width = 37
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'InfoID'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'InfoName_L1'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'InfoName_L2'
        Width = 100
        Visible = True
      end>
  end
  inherited ActionList: TActionList
    Left = 568
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcFormInfo
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcFormInfo
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcFormInfo
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcFormInfo
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcFormInfo
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actSendToExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendToExcelExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 600
  end
  object qryFormInfo: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterInsert = qryFormInfoAfterInsert
    BeforePost = qryFormInfoBeforePost
    AfterPost = qryFormInfoAfterPost
    BeforeDelete = qryFormInfoBeforeDelete
    AfterDelete = qryFormInfoAfterDelete
    AfterScroll = qryFormInfoAfterScroll
    Parameters = <
      item
        Name = 'FormType'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 7
      end
      item
        Name = 'PrvInfoID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      #13'SELECT     *'
      'FROM Pay.FormsInfo'
      
        'WHERE     (FormType = :FormType ) AND (PrvInfoID = isnull(:PrvIn' +
        'foID ,0))'
      'order by InfoID')
    Left = 200
    Top = 109
    object qryFormInfoFormInfoID: TIntegerField
      Tag = 3
      DisplayLabel = #1587#1585#1610#1575#1604
      FieldName = 'FormInfoID'
    end
    object qryFormInfoInfoName_L1: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object qryFormInfoInfoName_L2: TStringField
      Tag = 3
      DisplayLabel = 'InfoName'
      FieldName = 'InfoName_L2'
      Size = 100
    end
    object qryFormInfoFormType: TIntegerField
      FieldName = 'FormType'
    end
    object qryFormInfoInfoID: TIntegerField
      DisplayLabel = #1603#1583
      FieldName = 'InfoID'
    end
    object qryFormInfoPrvInfoID: TIntegerField
      FieldName = 'PrvInfoID'
    end
    object qryFormInfoAmount: TBCDField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1579#1575#1576#1578
      FieldName = 'Amount'
      Precision = 19
    end
    object qryFormInfoAmount2: TBCDField
      FieldName = 'Amount2'
      Precision = 19
    end
    object qryFormInfoCoefficient: TFloatField
      FieldName = 'Coefficient'
    end
    object qryFormInfoStandardDays: TFloatField
      DisplayLabel = #1590#1585#1610#1576'('#1585#1608#1586')'#8207
      FieldName = 'StandardDays'
    end
    object qryFormInfoStandardTimes: TFloatField
      DisplayLabel = #1590#1585#1610#1576'('#1587#1575#1593#1578')'#8207
      FieldName = 'StandardTimes'
    end
    object qryFormInfoAccTopicCode: TIntegerField
      FieldName = 'AccTopicCode'
    end
    object qryFormInfoAccDetailCode: TIntegerField
      FieldName = 'AccDetailCode'
    end
    object qryFormInfoAccCTopicode: TIntegerField
      FieldName = 'AccCTopiccode'
    end
    object qryFormInfoAccCTopicode2: TIntegerField
      FieldName = 'AccCTopiccode2'
    end
    object qryFormInfoRecallFormInfoID1: TStringField
      FieldName = 'RecallFormInfoID1'
      Size = 150
    end
    object qryFormInfoRecallFormInfoID2: TStringField
      FieldName = 'RecallFormInfoID2'
      Size = 150
    end
    object qryFormInfoWordDocuments: TStringField
      DisplayLabel = #1606#1575#1605' '#1601#1575#1610#1604' '#1670#1575#1662
      FieldName = 'WordDocuments'
      Size = 150
    end
    object qryFormInfoMaxDay: TFloatField
      FieldName = 'MaxDay'
    end
    object qryFormInfoMaxTime: TFloatField
      FieldName = 'MaxTime'
    end
    object qryFormInfoRecalKindClock: TWordField
      FieldName = 'RecalKindClock'
      OnGetText = qryFormInfoRecalKindClockGetText
      OnSetText = qryFormInfoRecalKindClockSetText
    end
    object qryFormInfoTaxCode: TWordField
      FieldName = 'TaxCode'
    end
    object qryFormInfoSalaryIDinDocActive: TWordField
      FieldName = 'SalaryIDinDocActive'
    end
  end
  object srcFormInfo: TDataSource
    DataSet = qryFormInfo
    OnStateChange = srcFormInfoStateChange
    Left = 128
    Top = 93
  end
  object qryInitForm: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'FormType'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM Pay.FormTypes'
      'WHERE     (FormType= :FormType)')
    Left = 544
  end
  object qryMaster: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterScroll = qryMasterAfterScroll
    Parameters = <
      item
        Name = 'FormType'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 7
      end>
    SQL.Strings = (
      
        'SELECT     FormInfoID, FormType, InfoID, InfoName_L1, InfoName_L' +
        '2'
      'FROM Pay.FormsInfo'
      'WHERE   FormType = :FormType')
    Left = 240
    Top = 45
    object qryMasterFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qryMasterFormType: TIntegerField
      FieldName = 'FormType'
    end
    object qryMasterInfoID: TIntegerField
      FieldName = 'InfoID'
    end
    object qryMasterInfoName_L1: TStringField
      FieldName = 'InfoName_L1'
      Size = 100
    end
    object qryMasterInfoName_L2: TStringField
      FieldName = 'InfoName_L2'
      Size = 100
    end
  end
  object SrcMaster: TDataSource
    DataSet = qryMaster
    Left = 168
    Top = 53
  end
  object qryWage: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'FormInfoID'
        DataType = ftString
        Size = 1
        Value = '3'
      end
      item
        Name = 'Kind'
        DataType = ftString
        Size = 1
        Value = '1'
      end>
    SQL.Strings = (
      'SELECT     F_SalaryRange.*'
      'FROM Pay.F_SalaryRange(:FormInfoID, :Kind) F_SalaryRange'
      'Order By InfoID')
    Left = 48
    Top = 357
    object qryWageFormInfoID: TIntegerField
      DisplayLabel = #1587#1585#1610#1575#1604
      FieldName = 'FormInfoID'
    end
    object qryWageSalaryID: TIntegerField
      DisplayLabel = #1587#1585#1610#1575#1604
      FieldName = 'SalaryID'
    end
    object qryWageKind: TWordField
      FieldName = 'Kind'
    end
    object qryWageInfoID: TIntegerField
      DisplayLabel = #1603#1583' '
      FieldName = 'InfoID'
    end
    object qryWageInfoName_L1: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1605#1586#1575#1610#1575' '
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object qryWageInfoName_L2: TStringField
      DisplayLabel = 'WageCaption'
      FieldName = 'InfoName_L2'
      Size = 255
    end
  end
  object SrcWage: TDataSource
    DataSet = qryWage
    OnStateChange = srcFormInfoStateChange
    Left = 120
    Top = 389
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
    Template.FileName = 'D:\projects\Fara\Salary\Report\forminfo5.rtm'
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
    Left = 640
    Top = 176
    Version = '22.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 27517
      mmPrintPosition = 0
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606' '#1575#1591#1604#1575#1593#1575#1578' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5556
        mmLeft = 69850
        mmTop = 21960
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = #1603#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5556
        mmLeft = 181240
        mmTop = 21960
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 265
        mmTop = 21960
        mmWidth = 203200
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 265
        mmTop = 25929
        mmWidth = 203200
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        mmHeight = 5556
        mmLeft = 161661
        mmTop = 22490
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground1
      end
      object ppSysVarPageNo: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SysVarPageNo'
        OnGetText = ppSysVarPageNoGetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 15346
        mmTop = 1058
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground1
      end
      object pplblPrintDate: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lblPrintDate'
        OnGetText = pplblPrintDateGetText
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
        mmHeight = 6350
        mmLeft = 15346
        mmTop = 6350
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 72496
        mmTop = 265
        mmWidth = 52123
        BandType = 0
        LayerName = Foreground1
      end
      object ppLblFromCaption: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LblFromCaption'
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 14
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8202
        mmLeft = 94192
        mmTop = 6615
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer2
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 265
        mmWidth = 203200
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
          Version = '22.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline2'
          object ppDetailBand2: TppDetailBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 5556
            mmPrintPosition = 0
            object ppDBText2: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText2'
              Border.mmPadding = 0
              DataField = 'InfoName_L1'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 5292
              mmLeft = 4763
              mmTop = 0
              mmWidth = 127265
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel3: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label3'
              Border.mmPadding = 0
              Caption = '  '
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Yagut'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              mmHeight = 5556
              mmLeft = 159015
              mmTop = 0
              mmWidth = 1588
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText4: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText4'
              Border.mmPadding = 0
              DataField = 'InfoID'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 5292
              mmLeft = 162190
              mmTop = 0
              mmWidth = 26723
              BandType = 4
              LayerName = Foreground
            end
          end
          object ppSummaryBand2: TppSummaryBand
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
            object ppLine4: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line4'
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 2117
              mmLeft = 0
              mmTop = 2117
              mmWidth = 203200
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc1: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc1'
              Border.mmPadding = 0
              DataField = 'InfoID'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DBCalcType = dcCount
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 5821
              mmLeft = 162719
              mmTop = 3704
              mmWidth = 17198
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel8: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label8'
              Border.mmPadding = 0
              Caption = #1578#1593#1583#1575#1583' :'#8207
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Yagut'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 5556
              mmLeft = 181769
              mmTop = 3969
              mmWidth = 7144
              BandType = 7
              LayerName = Foreground
            end
            object ppLine6: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line6'
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 1852
              mmLeft = 149754
              mmTop = 10583
              mmWidth = 39158
              BandType = 7
              LayerName = Foreground
            end
            object ppLine5: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line5'
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 1852
              mmLeft = 149754
              mmTop = 9790
              mmWidth = 39158
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
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 8
        LayerName = Foreground1
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 20902
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'FormInfoID'
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
        mmHeight = 6085
        mmPrintPosition = 0
        object ppDBText1: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText1'
          Border.mmPadding = 0
          DataField = 'InfoID'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 10
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6085
          mmLeft = 175948
          mmTop = 0
          mmWidth = 26723
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText3: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText3'
          Border.mmPadding = 0
          DataField = 'InfoName_L1'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Zar'
          Font.Size = 10
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 5821
          mmLeft = 3175
          mmTop = 265
          mmWidth = 156898
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel2: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label2'
          Border.mmPadding = 0
          Caption = '  '
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Yagut'
          Font.Size = 9
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          mmHeight = 5556
          mmLeft = 173302
          mmTop = 794
          mmWidth = 1588
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
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
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '..\Report'
    Filter = 'ReportName|*.rtm'
    InitialDir = '..\Report'
    Left = 55
    Top = 95
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcFormInfo
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 552
    Top = 128
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'FormInfoID'
      FieldName = 'FormInfoID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'InfoName_L1'
      FieldName = 'InfoName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'InfoName_L2'
      FieldName = 'InfoName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'FormType'
      FieldName = 'FormType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'InfoID'
      FieldName = 'InfoID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'PrvInfoID'
      FieldName = 'PrvInfoID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'Amount'
      FieldName = 'Amount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'Amount2'
      FieldName = 'Amount2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'Coefficient'
      FieldName = 'Coefficient'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'StandardDays'
      FieldName = 'StandardDays'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'StandardTimes'
      FieldName = 'StandardTimes'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'AccTopicCode'
      FieldName = 'AccTopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'AccDetailCode'
      FieldName = 'AccDetailCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'AccCTopiccode'
      FieldName = 'AccCTopiccode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'AccCTopiccode2'
      FieldName = 'AccCTopiccode2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'RecallFormInfoID1'
      FieldName = 'RecallFormInfoID1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'RecallFormInfoID2'
      FieldName = 'RecallFormInfoID2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'WordDocuments'
      FieldName = 'WordDocuments'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = SrcWage
    OpenDataSource = False
    UserName = 'DBPipeline2'
    Left = 536
    Top = 224
    MasterDataPipelineName = 'ppDBPipeline1'
    object ppDBPipeline2ppField1: TppField
      FieldAlias = 'FormInfoID'
      FieldName = 'FormInfoID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField2: TppField
      FieldAlias = 'SalaryID'
      FieldName = 'SalaryID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField3: TppField
      FieldAlias = 'Kind'
      FieldName = 'Kind'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField4: TppField
      FieldAlias = 'InfoID'
      FieldName = 'InfoID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField5: TppField
      FieldAlias = 'InfoName_L1'
      FieldName = 'InfoName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField6: TppField
      FieldAlias = 'InfoName_L2'
      FieldName = 'InfoName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
  end
  object qryOperators: TADOQuery
    Connection = DmF.adcFaraSystem
    LockType = ltBatchOptimistic
    AfterOpen = qryOperatorsAfterOpen
    Parameters = <>
    SQL.Strings = (
      'SELECT UserID, name, UserID as _checked'
      'FROM FaraSystems.dbo.Operators'
      'WHERE ((SystemID = 25)or (SystemID = 0))')
    Left = 318
    Top = 365
    object qryOperators_checked: TIntegerField
      DisplayLabel = #1575#1606#1578#1582#1575#1576
      FieldName = '_checked'
    end
    object qryOperatorsUserID: TIntegerField
      DisplayLabel = #1603#1583' '#1603#1575#1585#1576#1585
      FieldName = 'UserID'
    end
    object qryOperatorsname: TStringField
      DisplayLabel = #1606#1575#1605' '#1603#1575#1585#1576#1585
      FieldName = 'name'
      Size = 50
    end
  end
  object srcOperators: TDataSource
    DataSet = qryOperators
    Left = 222
    Top = 357
  end
end

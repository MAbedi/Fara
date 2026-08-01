inherited RevalidateF: TRevalidateF
  Left = 296
  Top = 72
  Caption = #1578#1580#1583#1610#1583' '#1575#1585#1586#1610#1575#1576#1610' '#1583#1575#1585#1575#1574#1610#1607#1575
  ClientHeight = 630
  ClientWidth = 1020
  OnResize = FormResize
  ExplicitWidth = 1028
  ExplicitHeight = 661
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 589
    Width = 1020
    TabOrder = 3
    ExplicitTop = 589
    ExplicitWidth = 1020
    object newPanel: TPanel
      Left = 785
      Top = 1
      Width = 234
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      Caption = '`'
      TabOrder = 1
      DesignSize = (
        234
        39)
      object BitBtn2: TBitBtn
        Left = 156
        Top = 7
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 78
        Top = 7
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        Left = 1
        Top = 7
        Width = 75
        Height = 25
        Action = DataSetDelete1
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        TabOrder = 2
      end
    end
    object okPanel: TPanel
      Left = 632
      Top = 1
      Width = 153
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      DesignSize = (
        153
        39)
      object BitBtn1: TBitBtn
        Left = 78
        Top = 7
        Width = 75
        Height = 25
        Action = DataSetPost1
        Anchors = [akTop, akRight]
        Caption = #1578#1571#1610#1610#1600#1600#1600#1583
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
      object BitBtn3: TBitBtn
        Left = 0
        Top = 7
        Width = 75
        Height = 25
        Action = DataSetCancel1
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1589#1600#1600#1600#1585#1575#1601
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
    object BitBtn11: TBitBtn
      Left = 92
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 3
    end
    object BitBtn12: TBitBtn
      Left = 168
      Top = 8
      Width = 75
      Height = 25
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
    end
    object BitBtn13: TBitBtn
      Left = 246
      Top = 8
      Width = 85
      Height = 25
      Action = actExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 5
    end
    object BitBtn14: TBitBtn
      Left = 333
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Caption = #1670#1575#1662
      TabOrder = 6
    end
    object BitBtn18: TBitBtn
      Left = 409
      Top = 8
      Width = 75
      Height = 25
      Action = actAmval
      Caption = #1603#1575#1585#1578' '#1583#1575#1585#1575#1610#1610
      TabOrder = 7
    end
    object DBNavigator1: TDBNavigator
      Left = 486
      Top = 7
      Width = 292
      Height = 25
      DataSource = srcRevalidate
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Anchors = [akLeft, akTop, akRight]
      Flat = True
      TabOrder = 8
    end
  end
  inherited Panel2: TPanel
    Width = 1020
    TabOrder = 0
    ExplicitWidth = 1020
    inherited ImgTemplate: TImage
      Left = 1087
      ExplicitLeft = 872
    end
    inherited lblCaption: TLabel
      Left = 912
      Height = 16
      ExplicitLeft = 912
    end
    inherited lblBaseDate: TLabel
      Left = 453
      ExplicitLeft = 453
    end
    object Label1: TLabel
      Left = 89
      Top = 6
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = #1588#1605#1575#1585#1607
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 89
      Top = 28
      Width = 21
      Height = 13
      Caption = #1578#1575#1585#1610#1582
      FocusControl = DBEdit2
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 24
      Width = 73
      Height = 21
      DataField = 'ValidationDate'
      DataSource = srcRevalidate
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 2
      Width = 73
      Height = 21
      DataField = 'ValidationNum'
      DataSource = srcRevalidate
      TabOrder = 0
    end
  end
  inherited Panel3: TPanel
    Top = 173
    Width = 412
    Height = 416
    TabOrder = 5
    ExplicitTop = 173
    ExplicitWidth = 412
    ExplicitHeight = 416
  end
  object Panel5: TPanel [3]
    Left = 0
    Top = 173
    Width = 412
    Height = 416
    Align = alClient
    TabOrder = 2
    object Label6: TLabel
      Left = 273
      Top = 79
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = #1605#1576#1604#1594' '#1575#1585#1586#1610#1575#1576#1610
      FocusControl = edtValidationValue
    end
    object Label7: TLabel
      Left = 273
      Top = 107
      Width = 86
      Height = 13
      Alignment = taRightJustify
      Caption = #1576#1575#1602#1610#1605#1575#1606#1583#1607' '#1593#1605#1585' '#1605#1601#1610#1583
      FocusControl = edtRemainedAge
    end
    object Bevel3: TBevel
      Left = 24
      Top = 128
      Width = 369
      Height = 9
      Shape = bsTopLine
      Style = bsRaised
    end
    object Label8: TLabel
      Left = 273
      Top = 138
      Width = 56
      Height = 13
      Alignment = taRightJustify
      Caption = #1575#1585#1586#1588' '#1583#1601#1578#1585#1610
      FocusControl = edtOfficialValue
    end
    object Label9: TLabel
      Left = 273
      Top = 163
      Width = 83
      Height = 13
      Alignment = taRightJustify
      Caption = #1605#1575#1586#1575#1583' '#1578#1580#1583#1610#1583' '#1575#1585#1586#1610#1575#1576#1610
      FocusControl = edtMiderateInc
    end
    object Label10: TLabel
      Left = 273
      Top = 187
      Width = 88
      Height = 13
      Alignment = taRightJustify
      Caption = #1578#1593#1583#1610#1604' '#1578#1580#1583#1610#1583' '#1575#1585#1586#1610#1575#1576#1610
      FocusControl = edtMiderateDec
    end
    object edtValidationValue: TDBEdit
      Left = 136
      Top = 75
      Width = 130
      Height = 21
      DataField = 'ValidationValue'
      DataSource = srcReValidateItems
      TabOrder = 1
    end
    object edtRemainedAge: TDBEdit
      Left = 200
      Top = 103
      Width = 66
      Height = 21
      DataField = 'RemainedAge'
      DataSource = srcReValidateItems
      TabOrder = 2
    end
    object edtOfficialValue: TDBEdit
      Left = 136
      Top = 134
      Width = 130
      Height = 21
      DataField = 'OfficialValue'
      DataSource = srcReValidateItems
      TabOrder = 3
    end
    object edtMiderateInc: TDBEdit
      Left = 136
      Top = 159
      Width = 130
      Height = 21
      TabStop = False
      DataField = 'MiderateInc'
      DataSource = srcReValidateItems
      ReadOnly = True
      TabOrder = 4
    end
    object edtMiderateDec: TDBEdit
      Left = 136
      Top = 183
      Width = 130
      Height = 21
      TabStop = False
      DataField = 'MiderateDec'
      DataSource = srcReValidateItems
      ReadOnly = True
      TabOrder = 5
    end
    object GroupBox3: TGroupBox
      Left = 1
      Top = 1
      Width = 410
      Height = 72
      Align = alTop
      Caption = #1575#1591#1604#1575#1593#1575#1578' '#1583#1575#1585#1575#1610#1610
      TabOrder = 0
      object Label3: TLabel
        Left = 350
        Top = 21
        Width = 32
        Height = 13
        Alignment = taRightJustify
        Caption = #1587#1585#1610#1575#1604' '
        FocusControl = DBEdit3
      end
      object Label5: TLabel
        Left = 151
        Top = 20
        Width = 19
        Height = 13
        Alignment = taRightJustify
        Caption = #1662#1604#1575#1603
        FocusControl = DBEdit3
      end
      object SpeedButton1: TSpeedButton
        Left = 256
        Top = 16
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SpeedButton1Click
      end
      object DBEdit3: TDBEdit
        Left = 280
        Top = 17
        Width = 70
        Height = 21
        DataField = 'SerialNum'
        DataSource = srcReValidateItems
        TabOrder = 0
        OnKeyPress = DBEdit3KeyPress
      end
      object DBEdit4: TDBEdit
        Left = 16
        Top = 41
        Width = 366
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = '_StuffDesc'
        DataSource = srcReValidateItems
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit5: TDBEdit
        Left = 16
        Top = 16
        Width = 129
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = '_Pelak'
        DataSource = srcReValidateItems
        ReadOnly = True
        TabOrder = 2
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 287
      Width = 410
      Height = 128
      Align = alBottom
      AutoSize = True
      TabOrder = 6
      object pnlUtil: TPanel
        Left = 1
        Top = 94
        Width = 408
        Height = 33
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        DesignSize = (
          408
          33)
        object BitBtn15: TBitBtn
          Left = 260
          Top = 3
          Width = 75
          Height = 25
          Action = actSearch2
          Anchors = [akTop, akRight]
          Caption = #1580#1587#1578#1580#1608
          TabOrder = 1
        end
        object BitBtn16: TBitBtn
          Left = 336
          Top = 3
          Width = 75
          Height = 25
          Action = actSort2
          Anchors = [akTop, akRight]
          Caption = #1578#1585#1578#1610#1576
          TabOrder = 0
        end
        object BitBtn17: TBitBtn
          Left = 182
          Top = 3
          Width = 77
          Height = 25
          Action = actExcel2
          Anchors = [akTop, akRight]
          Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
          TabOrder = 2
        end
      end
      object pnlItems: TPanel
        Left = 1
        Top = 61
        Width = 408
        Height = 33
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object NewPanelItems: TPanel
          Left = 179
          Top = 0
          Width = 229
          Height = 33
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            229
            33)
          object BitBtn6: TBitBtn
            Left = 154
            Top = 4
            Width = 75
            Height = 25
            Action = DataSetInsert2
            Anchors = [akTop, akRight]
            Caption = #1580#1583#1610#1583
            TabOrder = 0
          end
          object BitBtn7: TBitBtn
            Left = 77
            Top = 4
            Width = 75
            Height = 25
            Action = DataSetEdit2
            Anchors = [akTop, akRight]
            Caption = #1608#1610#1585#1575#1610#1588
            TabOrder = 1
          end
          object BitBtn8: TBitBtn
            Left = 0
            Top = 4
            Width = 75
            Height = 25
            Action = DataSetDelete2
            Anchors = [akTop, akRight]
            Caption = #1581#1584#1601
            TabOrder = 2
          end
        end
        object OkPanelItems: TPanel
          Left = 26
          Top = 0
          Width = 153
          Height = 33
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            153
            33)
          object BitBtn9: TBitBtn
            Left = 78
            Top = 4
            Width = 75
            Height = 25
            Action = DataSetPost2
            Anchors = [akTop, akRight]
            Caption = #1578#1571#1610#1610#1600#1600#1600#1583
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
          object BitBtn10: TBitBtn
            Left = 0
            Top = 4
            Width = 75
            Height = 25
            Action = DataSetCancel2
            Anchors = [akTop, akRight]
            Caption = #1575#1606#1589#1600#1600#1600#1585#1575#1601
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
      end
      object GroupBox2: TGroupBox
        Left = 1
        Top = 1
        Width = 408
        Height = 60
        Align = alTop
        Caption = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
        TabOrder = 0
        object DBMemo2: TDBMemo
          Left = 2
          Top = 15
          Width = 404
          Height = 43
          Align = alClient
          DataField = 'Note'
          DataSource = srcReValidateItems
          TabOrder = 0
        end
      end
    end
    object GroupBox4: TGroupBox
      Left = 120
      Top = 204
      Width = 265
      Height = 77
      Caption = #1575#1587#1578#1607#1604#1575#1603' '#1605#1575#1586#1575#1583' '#1578#1580#1583#1610#1583' '#1575#1585#1586#1610#1575#1576#1610
      TabOrder = 7
      object Label4: TLabel
        Left = 154
        Top = 19
        Width = 77
        Height = 13
        Caption = #1575#1587#1578#1607#1604#1575#1603' '#1575#1606#1576#1575#1588#1578#1607
        FocusControl = edtFirstDepValue
      end
      object Label11: TLabel
        Left = 154
        Top = 42
        Width = 91
        Height = 13
        Caption = #1575#1587#1578#1607#1604#1575#1603' '#1587#1575#1604' '#1580#1575#1585#1610
        FocusControl = edtDepvalueInYear
      end
      object edtFirstDepValue: TDBEdit
        Left = 16
        Top = 15
        Width = 130
        Height = 21
        DataField = 'FirstDepValue'
        DataSource = srcReValidateItems
        TabOrder = 0
      end
      object edtDepvalueInYear: TDBEdit
        Left = 16
        Top = 38
        Width = 130
        Height = 21
        DataField = 'DepvalueInYear'
        DataSource = srcReValidateItems
        TabOrder = 1
      end
    end
  end
  object Panel6: TPanel [4]
    Left = 412
    Top = 173
    Width = 608
    Height = 416
    Align = alRight
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 4
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 606
      Height = 414
      TabStop = False
      Align = alClient
      Color = clCream
      DataSource = srcReValidateItems
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
          FieldName = 'SerialNum'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_StuffDesc'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_Pelak'
          Width = 27
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ValidationValue'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OfficialValue'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MiderateInc'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MiderateDec'
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RemainedAge'
          Width = 87
          Visible = True
        end>
    end
  end
  object GroupBox1: TGroupBox [5]
    Left = 0
    Top = 132
    Width = 1020
    Height = 41
    Align = alTop
    Caption = #1578#1608#1590#1610#1581#1575#1578
    TabOrder = 1
    object DBMemo1: TDBMemo
      Left = 2
      Top = 15
      Width = 1016
      Height = 24
      Align = alClient
      DataField = 'Comment'
      DataSource = srcRevalidate
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object grdRevaliDate: TCedarDbgrid [6]
    Left = 0
    Top = 53
    Width = 1020
    Height = 79
    Align = alTop
    DataSource = srcRevalidate
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
    TabOrder = 6
    ActiveSearchPanel = False
    SelectFooterIndex = 0
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'RID'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ValidationNum'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ValidationDate'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Comment'
        Footers = <>
        Width = 216
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'State'
        Footers = <>
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  inherited ActionList: TActionList
    Left = 144
    inherited DataSetInsert1: TDataSetInsert
      Category = 'Master'
      DataSource = srcRevalidate
    end
    inherited DataSetEdit1: TDataSetEdit
      Category = 'Master'
      DataSource = srcRevalidate
    end
    inherited DataSetPost1: TDataSetPost
      Category = 'Master'
      DataSource = srcRevalidate
    end
    inherited DataSetCancel1: TDataSetCancel
      Category = 'Master'
      DataSource = srcRevalidate
    end
    inherited actSearch_: TAction
      Category = 'Master'
      OnExecute = actSearchExecute
    end
    inherited DataSetDelete1_: TDataSetDelete
      Category = 'Master'
      DataSource = srcRevalidate
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Master'
      Caption = #1581#1584#1601
      DataSource = srcRevalidate
    end
    object actSort2: TAction
      Category = 'Items'
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSort2Execute
    end
    object actSearch2: TAction
      Category = 'Items'
      Caption = #1580#1587#1578#1580#1608
      OnExecute = actSearch2Execute
    end
    object DataSetPost2: TDataSetPost
      Category = 'Items'
      Caption = #1578#1571#1610#1610#1600#1600#1600#1583
      Hint = ' '
      ShortCut = 119
      DataSource = srcReValidateItems
    end
    object DataSetCancel2: TDataSetCancel
      Category = 'Items'
      Caption = #1575#1606#1589#1600#1600#1600#1585#1575#1601
      Hint = ' '
      ShortCut = 27
      DataSource = srcReValidateItems
    end
    object DataSetInsert2: TDataSetInsert
      Category = 'Items'
      Caption = #1580#1583#1610#1583
      DataSource = srcReValidateItems
    end
    object DataSetDelete2: TDataSetDelete
      Category = 'Items'
      Caption = #1581#1584#1601
      DataSource = srcReValidateItems
    end
    object DataSetEdit2: TDataSetEdit
      Category = 'Items'
      Caption = #1608#1610#1585#1575#1610#1588
      DataSource = srcReValidateItems
    end
    object actSort: TAction
      Category = 'Master'
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actExcel: TAction
      Category = 'Master'
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actExcelExecute
    end
    object actPrint: TAction
      Category = 'Master'
      Caption = #1670#1575#1662
      ShortCut = 118
    end
    object actExcel2: TAction
      Category = 'Items'
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actExcel2Execute
    end
    object actAmval: TAction
      Category = 'Master'
      Caption = #1603#1575#1585#1578' '#1583#1575#1585#1575#1610#1610
      OnExecute = actAmvalExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 184
  end
  object qryRevalidate: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryRevalidateAfterInsert
    BeforePost = qryRevalidateBeforePost
    AfterPost = qryRevalidateAfterPost
    BeforeDelete = qryRevalidateBeforeDelete
    AfterScroll = qryRevalidateAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from assets.Revalidate')
    Left = 504
    Top = 152
    object qryRevalidateRID: TIntegerField
      DisplayLabel = #1585#1583#1610#1601
      FieldName = 'RID'
    end
    object qryRevalidateValidationNum: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607
      FieldName = 'ValidationNum'
      Size = 15
    end
    object qryRevalidateValidationDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'ValidationDate'
      OnChange = qryRevalidateValidationDateChange
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryRevalidateComment: TWideStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'Comment'
      Size = 150
    end
    object qryRevalidateState: TWordField
      DisplayLabel = #1608#1590#1593#1610#1578
      FieldName = 'State'
    end
  end
  object srcRevalidate: TDataSource
    DataSet = qryRevalidate
    OnStateChange = srcRevalidateStateChange
    Left = 272
    Top = 8
  end
  object srcReValidateItems: TDataSource
    DataSet = qryReValidateItems
    OnStateChange = srcReValidateItemsStateChange
    Left = 600
    Top = 384
  end
  object qryReValidateItems: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterInsert = qryReValidateItemsAfterInsert
    AfterEdit = qryReValidateItemsAfterEdit
    BeforePost = qryReValidateItemsBeforePost
    AfterScroll = qryReValidateItemsAfterScroll
    Parameters = <
      item
        Name = 'ReID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select * from assets.ReValidateItems'
      'where RID = :ReID')
    Left = 504
    Top = 232
    object qryReValidateItemsFirstUser: TStringField
      Tag = 3
      FieldName = 'FirstUser'
      Size = 50
    end
    object qryReValidateItemsLastUser: TStringField
      Tag = 3
      FieldName = 'LastUser'
      Size = 50
    end
    object qryReValidateItemsID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qryReValidateItemsRID: TIntegerField
      FieldName = 'RID'
    end
    object qryReValidateItemsSerialNum: TIntegerField
      Tag = 3
      DisplayLabel = #1587#1585#1610#1575#1604
      FieldName = 'SerialNum'
      OnChange = qryRevalidateValidationDateChange
    end
    object qryReValidateItemsValidationValue: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1575#1585#1586#1610#1575#1576#1610
      FieldName = 'ValidationValue'
      Required = True
      OnChange = qryReValidateItemsOfficialValueChange
      currency = True
      Precision = 19
    end
    object qryReValidateItemsOfficialValue: TBCDField
      Tag = 3
      DisplayLabel = #1575#1585#1586#1588' '#1583#1601#1578#1585#1610
      FieldName = 'OfficialValue'
      Required = True
      OnChange = qryReValidateItemsOfficialValueChange
      currency = True
      Precision = 19
    end
    object qryReValidateItemsMiderateInc: TBCDField
      Tag = 3
      DisplayLabel = #1605#1575#1586#1575#1583' '#1578#1580#1583#1610#1583' '#1575#1585#1586#1610#1575#1576#1610
      FieldName = 'MiderateInc'
      currency = True
      Precision = 19
    end
    object qryReValidateItemsMiderateDec: TBCDField
      Tag = 3
      DisplayLabel = #1578#1593#1583#1610#1604' '#1578#1580#1583#1610#1583' '#1575#1585#1586#1610#1575#1576#1610
      FieldName = 'MiderateDec'
      currency = True
      Precision = 19
    end
    object qryReValidateItemsRemainedAge: TFloatField
      Tag = 3
      DisplayLabel = #1576#1575#1602#1610#1605#1575#1606#1583#1607' '#1593#1605#1585' '#1605#1601#1610#1583
      FieldName = 'RemainedAge'
      Required = True
    end
    object qryReValidateItemsNote: TWideStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
      FieldName = 'Note'
      Size = 150
    end
    object qryReValidateItems_StuffDesc: TStringField
      DisplayLabel = #1588#1585#1581' '#1583#1575#1585#1575#1610#1610
      FieldKind = fkLookup
      FieldName = '_StuffDesc'
      LookupDataSet = DmF.qryAmval
      LookupKeyFields = 'SerialNum'
      LookupResultField = 'StuffDesc'
      KeyFields = 'SerialNum'
      Size = 150
      Lookup = True
    end
    object qryReValidateItems_Pelak: TStringField
      DisplayLabel = #1662#1604#1575#1603
      FieldKind = fkLookup
      FieldName = '_Pelak'
      LookupDataSet = DmF.qryAmval
      LookupKeyFields = 'SerialNum'
      LookupResultField = 'PelakNum'
      KeyFields = 'SerialNum'
      Size = 30
      Lookup = True
    end
    object qryReValidateItemsFirstDepValue: TBCDField
      DisplayLabel = #1575#1587#1578#1607#1604#1575#1603' '#1575#1606#1576#1575#1588#1578#1607
      FieldName = 'FirstDepValue'
      currency = True
      Precision = 19
    end
    object qryReValidateItemsDepvalueInYear: TBCDField
      DisplayLabel = #1575#1587#1578#1607#1604#1575#1603' '#1587#1575#1604' '#1580#1575#1585#1610
      FieldName = 'DepvalueInYear'
      currency = True
      Precision = 19
    end
  end
  object qryDepDec: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'SnFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'SNTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'BaseDate'
        Size = -1
        Value = Null
      end
      item
        Name = 'yearid'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      
        'FROM         assets.DepForDecress(:SnFrom,:SNTo , :BaseDate ,:ye' +
        'arid ) DepForDecress'
      ''
      '')
    Left = 28
    Top = 286
    object qryDepDecSerialNum: TIntegerField
      FieldName = 'SerialNum'
    end
    object qryDepDecPrice: TBCDField
      DisplayLabel = #1575#1585#1586#1588' '#1583#1575#1585#1575#1610#1610
      FieldName = 'Price'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryDepDecFirstDepValue: TBCDField
      DisplayLabel = #1575#1587#1578#1607#1604#1575#1603' '#1575#1606#1576#1575#1588#1578#1607
      FieldName = 'FirstDepValue'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryDepDecDepvalueInYear: TBCDField
      DisplayLabel = #1575#1587#1578#1607#1604#1575#1603' '#1587#1575#1604' '#1580#1575#1585#1610
      FieldName = 'DepvalueInYear'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryDepDecPurPrice: TBCDField
      DisplayLabel = #1575#1585#1586#1588' '#1583#1601#1578#1585#1610
      FieldName = 'PurPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object srcdepDec: TDataSource
    DataSet = qryDepDec
    Left = 60
    Top = 230
  end
end

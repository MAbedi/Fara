inherited AmvalF: TAmvalF
  Left = 265
  Top = 215
  Caption = #1705#1575#1585#1578' '#1583#1575#1585#1575#1574#1740' '#1579#1575#1576#1578
  ClientHeight = 689
  ClientWidth = 1004
  OnResize = FormResize
  ExplicitWidth = 1012
  ExplicitHeight = 720
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel [0]
    Width = 1004
    Height = 50
    TabOrder = 0
    ExplicitWidth = 1004
    ExplicitHeight = 50
    inherited ImgTemplate: TImage
      Left = 1003
      ExplicitLeft = 814
    end
    inherited lblCaption: TLabel
      Left = 896
      Height = 30
      ExplicitLeft = 896
    end
    object dbtxtAmvalState: TDBText [2]
      Left = 509
      Top = 26
      Width = 76
      Height = 17
      Alignment = taCenter
      Anchors = [akTop]
      DataField = 'AmvalState'
      DataSource = srcAmval
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 9671679
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 390
    end
    inherited lblBaseDate: TLabel
      Left = 489
      ParentBiDiMode = False
      ExplicitLeft = 378
    end
    object pnl5: TPanel
      Left = 1
      Top = 1
      Width = 224
      Height = 48
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object lbl28: TLabel
        Left = 144
        Top = 7
        Width = 33
        Height = 13
        Caption = #1588#1605#1575#1585#1607' '
        FocusControl = edtFormNum
      end
      object lbl29: TLabel
        Left = 144
        Top = 27
        Width = 21
        Height = 13
        Caption = #1578#1575#1585#1610#1582
        FocusControl = edtFormDate
      end
      object btnSearch: TSpeedButton
        Left = 32
        Top = 2
        Width = 25
        Height = 22
        Action = actSearch_2
        Caption = '...'
      end
      object edtFormDate: TDBEdit
        Left = 59
        Top = 25
        Width = 82
        Height = 21
        DataField = 'FormDate'
        DataSource = srcAmval
        TabOrder = 0
      end
      object edtFormNum: TDBEdit
        Left = 59
        Top = 3
        Width = 82
        Height = 21
        DataField = 'FormNum'
        DataSource = srcAmval
        TabOrder = 1
      end
    end
  end
  inherited PnlUnderButton: TPanel [1]
    Top = 648
    Width = 1004
    TabOrder = 2
    ExplicitTop = 648
    ExplicitWidth = 1004
    object pnl6: TPanel [0]
      Left = 497
      Top = 1
      Width = 506
      Height = 39
      Align = alRight
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 5
      object newPanel: TPanel
        Left = 0
        Top = 0
        Width = 243
        Height = 39
        Align = alRight
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 0
        object btn2: TBitBtn
          AlignWithMargins = True
          Left = 165
          Top = 6
          Width = 75
          Height = 27
          Margins.Top = 6
          Margins.Bottom = 6
          Action = DataSetInsert1
          Align = alRight
          Caption = #1580#1583#1610#1583
          TabOrder = 0
        end
        object btn3: TBitBtn
          AlignWithMargins = True
          Left = 84
          Top = 6
          Width = 75
          Height = 27
          Margins.Top = 6
          Margins.Bottom = 6
          Action = DataSetEdit1
          Align = alRight
          Caption = #1608#1610#1585#1575#1610#1588
          TabOrder = 1
        end
        object btn4: TBitBtn
          AlignWithMargins = True
          Left = 3
          Top = 6
          Width = 75
          Height = 27
          Margins.Top = 6
          Margins.Bottom = 6
          Action = DataSetDelete1_
          Align = alRight
          Caption = #1581#1584#1601
          TabOrder = 2
        end
      end
      object okPanel: TPanel
        Left = 243
        Top = 0
        Width = 263
        Height = 39
        Align = alRight
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 1
        object btnDataSetPost1: TBitBtn
          AlignWithMargins = True
          Left = 185
          Top = 6
          Width = 75
          Height = 27
          Margins.Top = 6
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
        object btn5: TBitBtn
          AlignWithMargins = True
          Left = 3
          Top = 6
          Width = 75
          Height = 27
          Margins.Top = 6
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
          TabOrder = 2
        end
        object btnPostMany: TBitBtn
          AlignWithMargins = True
          Left = 84
          Top = 6
          Width = 95
          Height = 27
          Margins.Top = 6
          Margins.Bottom = 6
          Action = actPostMany
          Align = alRight
          Caption = #1579#1576#1578' '#1605#1587#1604#1587#1604
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF0052A54A00009408006BB56300FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF0018B5290000BD2100009400008CBD7B00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00008C
            0000008C0000FF00FF006BB5630000BD210000C6290000A50000319C3100FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00008C
            0000008C0000FF00FF00009C100000CE310000C6290000AD100000940000A5C6
            9400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00008C0000008C
            0000008C000052A54A0000CE310000C6290000FF630000CE3100009C0000008C
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00008C0000008C
            0000008C0000008C000029CE5A0000FF630000FF630000BD210000C629000094
            00008CBD7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00008C0000008C
            0000008C0000008C0000008C000000FF630052A54A0052A54A0000C6290000A5
            0000319C3100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00008C0000008C
            0000FF00FF00008C0000008C0000008C0000FF00FF00FF00FF0000AD180000C6
            290000940000A5C69400FF00FF00FF00FF00FF00FF00FF00FF00008C0000008C
            0000FF00FF00FF00FF00008C0000008C0000FF00FF00FF00FF0031B5420000C6
            2900009C0000008C0000FF00FF00FF00FF00FF00FF00FF00FF00008C0000FF00
            FF00FF00FF00FF00FF00008C0000008C0000008C0000FF00FF00FF00FF0000B5
            210000C62900009400008CBD7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00008C0000008C0000FF00FF00FF00FF0052A5
            4A0000C6290029AD390031B54200FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00008C0000008C0000FF00FF00FF00
            FF0029AD4A005AE7A50029AD39008CBD7B00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00008C0000008C0000FF00FF00FF00
            FF0031B5420000D642008CBD7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00008C0000008C0000FF00
            FF00FF00FF00A5C69400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00008C0000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          TabOrder = 1
        end
      end
    end
    object DBNavigator1: TDBNavigator [1]
      AlignWithMargins = True
      Left = 331
      Top = 4
      Width = 163
      Height = 33
      DataSource = srcAllAmval
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alClient
      Flat = True
      TabOrder = 4
    end
    inherited BtnReject: TBitBtn
      TabOrder = 3
    end
    object BitBtn7: TBitBtn
      AlignWithMargins = True
      Left = 85
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSearch_2
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        0001020202080101010F000000170000001E0000002300000025000000250000
        00210000001C000000150707072A1313132C00000000FF00FF00FF00FF000101
        0102010101090000001100000019000000200000002500000028000000270000
        00240000001E0303033E494949FF4E4E4EFF1010101EFF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0021212129474747FF4B4B4BFF3F3F3FF704040405FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF002020
        2029424242FF484848FF3D3D3DF607070708FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000000E0E0E101919191E0505050600000000202020293F3F
        3FFF444444FF3B3B3BF607070708FF00FF00FF00FF00FF00FF00FF00FF000000
        00002E2E2E42969696F7D0D0D0FFD7D7D7FFC1C1C1FF717171D53B3B3BFE4040
        40FF393939F607070708FF00FF00FF00FF00FF00FF00FF00FF00FF00FF003838
        3856D6D5D4FFF5F4EFFFF3F2F0FFF1F1EFFFF3F2F0FFEFEEEAFFABABAAFF3838
        38F607070708FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000001C4C4
        C3FFF0ECE2FFF0ECE2FFF0ECE2FFF0ECE2FFF0ECE2FFEFEEECFFEBE8E2FF7474
        74C800000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF003838384FE4E0
        D8FFEAE3D4FFEAE3D4FFEAE3D4FFEAE3D4FFEAE3D4FFEAE3D3FFECE8DFFFC7C6
        C4FF00000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0051515183E2DB
        CBFFE8E2D1FFEEE9DCFFEAE4D5FFE3DBC6FFE3DBC6FFE3DBC6FFE3DBC6FFD9D7
        D0FF0C0C0C0EFF00FF00FF00FF00FF00FF00FF00FF00FF00FF004545455FDDD5
        C3FFF2EFE9FFF1ECE2FFF1ECE2FFF1ECE2FFEAE3D4FFE7DFCEFFEDE7DBFFD1CF
        C9FF01010102FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0008080809D5D2
        CBFFE7E1D2FFEAE5D8FFE8E1D1FFE8E2D1FFE8E2D1FFE8E2D1FFDED5BEFF9797
        97E300000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF005858
        588CD4CBB5FFDAD0B7FFDFD7C6FFDED6C3FFDDD4C0FFD7CAADFFD3D0CAFF1818
        181EFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0057575785D3D0C8FFCEC2A4FFCABD9AFFD1C8B0FFBFBEBDF82222222BFF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000303030436363644474747612525252C00000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 2
    end
    object BitBtn8: TBitBtn
      AlignWithMargins = True
      Left = 166
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alLeft
      Caption = #1670#1575#1662
      TabOrder = 1
      OnClick = BitBtn8Click
    end
    object BitBtn10: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 7
      Width = 78
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actOtherInfo
      Align = alLeft
      Caption = #1587#1575#1610#1585' '#1575#1605#1603#1575#1606#1575#1578'...'
      TabOrder = 0
    end
  end
  inherited Panel3: TPanel
    Top = 50
    Width = 1004
    Height = 598
    TabOrder = 1
    ExplicitTop = 50
    ExplicitWidth = 1004
    ExplicitHeight = 598
    object pgc1: TPageControl
      Left = 2
      Top = 2
      Width = 1000
      Height = 594
      ActivePage = ts1
      Align = alClient
      TabOrder = 0
      OnChange = pgc1Change
      object ts1: TTabSheet
        Caption = #1705#1575#1585#1578' '#1583#1575#1585#1575#1740#1740' '#1579#1575#1576#1578
        object pnl1: TPanel
          Left = 0
          Top = 0
          Width = 992
          Height = 566
          Align = alClient
          ParentBackground = False
          TabOrder = 0
          object pnl2: TPanel
            Left = 1
            Top = 1
            Width = 990
            Height = 564
            Align = alClient
            BevelInner = bvLowered
            BevelOuter = bvLowered
            TabOrder = 0
            DesignSize = (
              990
              564)
            object bvl1: TBevel
              Left = 2
              Top = 62
              Width = 986
              Height = 53
              Align = alTop
              Shape = bsFrame
              Style = bsRaised
              ExplicitLeft = 1
              ExplicitTop = 61
              ExplicitWidth = 796
            end
            object bvl2: TBevel
              Left = 2
              Top = 33
              Width = 986
              Height = 29
              Align = alTop
              Shape = bsFrame
              Style = bsRaised
              ExplicitWidth = 810
            end
            object bvl3: TBevel
              Left = 2
              Top = 2
              Width = 986
              Height = 31
              Align = alTop
              Shape = bsFrame
              Style = bsRaised
              ExplicitWidth = 810
            end
            object bvl4: TBevel
              Left = 2
              Top = 115
              Width = 986
              Height = 54
              Align = alTop
              Shape = bsFrame
              Style = bsRaised
              ExplicitLeft = 3
              ExplicitTop = 113
              ExplicitWidth = 810
            end
            object lbl2: TLabel
              Left = 901
              Top = 70
              Width = 56
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1575#1585#1586#1588' '#1583#1575#1585#1575#1574#1610
              FocusControl = edtAssetsValue
              ExplicitLeft = 762
            end
            object lbl3: TLabel
              Left = 901
              Top = 94
              Width = 57
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1575#1585#1586#1588' '#1575#1587#1602#1575#1591
              FocusControl = edtEsqValue
              ExplicitLeft = 762
            end
            object lbl4: TLabel
              Left = 382
              Top = 70
              Width = 63
              Height = 13
              Alignment = taRightJustify
              Caption = #1711#1585#1608#1607' '#1605#1575#1583#1607' 151'
              FocusControl = edtTaxGrpCode
            end
            object lbl5: TLabel
              Left = 382
              Top = 94
              Width = 65
              Height = 13
              Alignment = taRightJustify
              Caption = #1585#1608#1588' '#1575#1587#1578#1607#1604#1575#1603
            end
            object lblUnit: TLabel
              Left = 179
              Top = 94
              Width = 24
              Height = 13
              Caption = #1587#1575#1604
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6579455
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object lbl6: TLabel
              Left = 901
              Top = 41
              Width = 64
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1605#1588#1582#1589#1575#1578' '#1603#1575#1604#1575
              ExplicitLeft = 762
            end
            object lbl7: TLabel
              Left = 148
              Top = 41
              Width = 21
              Height = 13
              Caption = #1608#1575#1581#1583
            end
            object lbl8: TLabel
              Left = 901
              Top = 11
              Width = 29
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1587#1585#1610#1575#1604
              FocusControl = DBEdit10
              ExplicitLeft = 762
            end
            object lbl9: TLabel
              Left = 148
              Top = 10
              Width = 50
              Height = 13
              Alignment = taRightJustify
              Caption = #1606#1608#1593' '#1605#1575#1604#1603#1610#1578
            end
            object btnTaxGrpCode: TSpeedButton
              Left = 286
              Top = 65
              Width = 23
              Height = 22
              Caption = '...'
              OnClick = btnTaxGrpCodeClick
            end
            object btnTaxID: TSpeedButton
              Left = 181
              Top = 65
              Width = 23
              Height = 22
              Caption = '...'
              OnClick = btnTaxIDClick
            end
            object lbl10: TLabel
              Left = 900
              Top = 124
              Width = 52
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1588#1605#1575#1585#1607' '#1662#1604#1575#1603
              FocusControl = edtPelakNum
              ExplicitLeft = 761
            end
            object lbl11: TLabel
              Left = 900
              Top = 148
              Width = 46
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1662#1604#1575#1603' '#1602#1576#1604#1610
              FocusControl = edtLastPelakNum
              ExplicitLeft = 761
            end
            object lbl12: TLabel
              Left = 900
              Top = 265
              Width = 76
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1578#1575#1585#1610#1582' '#1576#1607#1585#1607#8204' '#1576#1585#1583#1575#1585#1610
              FocusControl = edtStartUsingDate
              ExplicitLeft = 761
            end
            object lbl13: TLabel
              Left = 900
              Top = 288
              Width = 54
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1588#1605#1575#1585#1607' '#1587#1606#1583
              FocusControl = edtDocNum
              ExplicitLeft = 761
            end
            object lbl14: TLabel
              Left = 900
              Top = 312
              Width = 48
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1578#1575#1585#1610#1582' '#1587#1606#1583' '
              FocusControl = edtDocDate
              ExplicitLeft = 761
            end
            object lbl15: TLabel
              Left = 383
              Top = 124
              Width = 45
              Height = 13
              Alignment = taRightJustify
              Caption = #1603#1583' '#1581#1587#1575#1576
              FocusControl = edtAccTopicCode
            end
            object btnAccTopicCode: TSpeedButton
              Tag = 1
              Left = 286
              Top = 119
              Width = 23
              Height = 22
              Caption = '...'
              OnClick = btnAccTopicCodeClick
            end
            object lblTax: TLabel
              Left = 5
              Top = 66
              Width = 171
              Height = 47
              AutoSize = False
              ParentShowHint = False
              ShowHint = True
              WordWrap = True
              OnClick = lblTaxClick
            end
            object lbl16: TLabel
              Left = 680
              Top = 10
              Width = 52
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1711#1585#1608#1607' '#1583#1575#1585#1575#1574#1610
              FocusControl = DBEdit12
              OnClick = actAidExecute
              ExplicitLeft = 541
            end
            object btnAsstetsGrpCode: TSpeedButton
              Tag = 12
              Left = 577
              Top = 5
              Width = 23
              Height = 22
              Anchors = [akTop, akRight]
              Caption = '...'
              OnClick = btnAsstetsGrpCodeClick
              ExplicitLeft = 438
            end
            object bvl5: TBevel
              Left = 2
              Top = 256
              Width = 986
              Height = 101
              Align = alTop
              Shape = bsFrame
              Style = bsRaised
              ExplicitWidth = 810
            end
            object btnKeeperCode: TSpeedButton
              Left = 285
              Top = 332
              Width = 23
              Height = 22
              Caption = '...'
              OnClick = btnKeeperCodeClick
            end
            object btnUserCode: TSpeedButton
              Left = 285
              Top = 308
              Width = 23
              Height = 22
              Caption = '...'
              OnClick = btnUserCodeClick
            end
            object btnPlaceCode: TSpeedButton
              Left = 285
              Top = 284
              Width = 23
              Height = 22
              Caption = '...'
              OnClick = btnPlaceCodeClick
            end
            object btnExpCode: TSpeedButton
              Left = 285
              Top = 260
              Width = 23
              Height = 22
              Caption = '...'
              OnClick = btnExpCodeClick
            end
            object lbl17: TLabel
              Left = 383
              Top = 289
              Width = 60
              Height = 13
              Alignment = taRightJustify
              Caption = #1605#1581#1604' '#1575#1587#1578#1602#1585#1575#1585
              FocusControl = edtPlaceCode
            end
            object lbl18: TLabel
              Left = 383
              Top = 265
              Width = 53
              Height = 13
              Alignment = taRightJustify
              Caption = #1605#1585#1603#1586'_'#1607#1586#1610#1606#1607
              FocusControl = edtExpCode
            end
            object lbl19: TLabel
              Left = 383
              Top = 313
              Width = 64
              Height = 13
              Alignment = taRightJustify
              Caption = #1575#1587#1578#1601#1575#1583#1607' '#1603#1606#1606#1583#1607
              FocusControl = edtUserCode
            end
            object lbl20: TLabel
              Left = 383
              Top = 336
              Width = 60
              Height = 13
              Alignment = taRightJustify
              Caption = #1580#1605#1593#1583#1575#1585' '#1575#1605#1608#1575#1604
              FocusControl = edtKeeperCode
            end
            object lbl1: TLabel
              Left = 382
              Top = 41
              Width = 23
              Height = 13
              Caption = #1578#1593#1583#1575#1583
              Visible = False
            end
            object Label1: TLabel
              Left = 382
              Top = 10
              Width = 52
              Height = 13
              Alignment = taRightJustify
              Caption = #1605#1585#1705#1586' '#1601#1585#1608#1588
            end
            object Label3: TLabel
              Left = 300
              Top = 41
              Width = 18
              Height = 13
              Caption = #1585#1606#1711
            end
            object edtAssetsValue: TDBEdit
              Left = 741
              Top = 67
              Width = 154
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'AssetsValue'
              DataSource = srcAmval
              TabOrder = 8
            end
            object edtEsqValue: TDBEdit
              Left = 741
              Top = 91
              Width = 154
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'EsqValue'
              DataSource = srcAmval
              TabOrder = 9
            end
            object edtTaxGrpCode: TDBEdit
              Left = 310
              Top = 66
              Width = 70
              Height = 21
              DataField = 'TaxGrpCode'
              DataSource = srcAmval
              TabOrder = 10
              OnKeyDown = edtTaxGrpCodeKeyDown
              OnKeyPress = edtTaxGrpCodeKeyPress
            end
            object edtTaxID: TDBEdit
              Left = 205
              Top = 66
              Width = 80
              Height = 21
              DataField = 'TaxID'
              DataSource = srcAmval
              TabOrder = 11
              OnKeyPress = edtTaxGrpCodeKeyPress
            end
            object edtDepValue: TDBEdit
              Left = 205
              Top = 91
              Width = 80
              Height = 21
              DataField = 'DepValue'
              DataSource = srcAmval
              TabOrder = 13
            end
            object DBEdit3: TDBEdit
              Left = 426
              Top = 37
              Width = 469
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'StuffDesc'
              DataSource = srcAmval
              TabOrder = 4
              OnExit = DBEdit3Exit
            end
            object DBEdit10: TDBEdit
              Left = 741
              Top = 7
              Width = 154
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'SerialNum'
              DataSource = srcAmval
              TabOrder = 0
            end
            object edtPelakNum: TDBEdit
              Tag = 1
              Left = 741
              Top = 120
              Width = 154
              Height = 21
              Anchors = [akTop, akRight]
              BiDiMode = bdRightToLeft
              DataField = 'PelakNum'
              DataSource = srcAmval
              ParentBiDiMode = False
              TabOrder = 14
            end
            object edtLastPelakNum: TDBEdit
              Tag = 1
              Left = 741
              Top = 144
              Width = 154
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'LastPelakNum'
              DataSource = srcAmval
              TabOrder = 15
            end
            object grp1: TGroupBox
              Left = 2
              Top = 169
              Width = 986
              Height = 87
              Align = alTop
              Caption = #1575#1591#1604#1575#1593#1575#1578' '#1601#1585#1608#1588#1606#1583#1607
              TabOrder = 19
              DesignSize = (
                986
                87)
              object lbl21: TLabel
                Left = 898
                Top = 17
                Width = 59
                Height = 13
                Alignment = taRightJustify
                Anchors = [akTop, akRight]
                Caption = #1588#1605#1575#1585#1607' '#1601#1575#1603#1578#1608#1585
                FocusControl = edtInvoiceNum
                ExplicitLeft = 759
              end
              object lbl22: TLabel
                Left = 380
                Top = 17
                Width = 42
                Height = 13
                Alignment = taRightJustify
                Caption = #1603#1583#1581#1587#1575#1576
                FocusControl = edtSellerTopicCode
              end
              object btnSellerTopicCode: TSpeedButton
                Left = 284
                Top = 12
                Width = 23
                Height = 22
                Caption = '...'
                OnClick = btnSellerTopicCodeClick
              end
              object lbl23: TLabel
                Left = 382
                Top = 42
                Width = 37
                Height = 13
                Alignment = taRightJustify
                Caption = #1578#1601#1589#1610#1604#1610
                FocusControl = edtSellerDetailCode
              end
              object btnSellerDetailCode: TSpeedButton
                Left = 284
                Top = 37
                Width = 23
                Height = 22
                Caption = '...'
                OnClick = btnSellerDetailCodeClick
              end
              object lbl24: TLabel
                Left = 898
                Top = 42
                Width = 45
                Height = 13
                Alignment = taRightJustify
                Anchors = [akTop, akRight]
                Caption = #1578#1575#1585#1610#1582' '#1582#1585#1610#1583
                FocusControl = edtInvoiceDate
                ExplicitLeft = 759
              end
              object lbl25: TLabel
                Left = 382
                Top = 66
                Width = 39
                Height = 13
                Alignment = taRightJustify
                Caption = #1605'_'#1607#1586#1610#1606#1607
                FocusControl = edtSellerCTopicCode
              end
              object btnSellerCTopicCode: TSpeedButton
                Left = 284
                Top = 61
                Width = 23
                Height = 22
                Caption = '...'
                OnClick = btnSellerCTopicCodeClick
              end
              object lbl26: TLabel
                Left = 898
                Top = 66
                Width = 64
                Height = 13
                Alignment = taRightJustify
                Anchors = [akTop, akRight]
                Caption = #1578#1608#1590#1610#1581#1575#1578' '#1582#1585#1610#1583
                FocusControl = edtSellerNote
                ExplicitLeft = 759
              end
              object edtInvoiceNum: TDBEdit
                Left = 739
                Top = 13
                Width = 154
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'InvoiceNum'
                DataSource = srcAmval
                TabOrder = 0
              end
              object edtSellerTopicCode: TDBEdit
                Left = 308
                Top = 13
                Width = 70
                Height = 21
                DataField = 'SellerTopicCode'
                DataSource = srcAmval
                TabOrder = 3
                OnKeyPress = edtTaxGrpCodeKeyPress
              end
              object DBEdit18: TDBEdit
                Left = 46
                Top = 13
                Width = 235
                Height = 21
                TabStop = False
                Color = clBtnFace
                Ctl3D = True
                DataField = '_MoeenName'
                DataSource = srcAmval
                ParentCtl3D = False
                ReadOnly = True
                TabOrder = 6
              end
              object edtSellerDetailCode: TDBEdit
                Left = 308
                Top = 38
                Width = 70
                Height = 21
                DataField = 'SellerDetailCode'
                DataSource = srcAmval
                TabOrder = 4
                OnKeyPress = edtTaxGrpCodeKeyPress
              end
              object edtInvoiceDate: TDBEdit
                Left = 739
                Top = 39
                Width = 154
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'InvoiceDate'
                DataSource = srcAmval
                TabOrder = 1
              end
              object DBEdit21: TDBEdit
                Left = 46
                Top = 38
                Width = 235
                Height = 21
                TabStop = False
                Color = clBtnFace
                Ctl3D = True
                DataField = '_SelDetailName'
                DataSource = srcAmval
                ParentCtl3D = False
                ReadOnly = True
                TabOrder = 7
              end
              object edtSellerCTopicCode: TDBEdit
                Tag = 1
                Left = 308
                Top = 62
                Width = 70
                Height = 21
                DataField = 'SellerCTopicCode'
                DataSource = srcAmval
                TabOrder = 5
                OnKeyPress = edtTaxGrpCodeKeyPress
              end
              object DBEdit23: TDBEdit
                Left = 46
                Top = 62
                Width = 235
                Height = 21
                TabStop = False
                Color = clBtnFace
                Ctl3D = True
                DataField = '_SelCtopicName'
                DataSource = srcAmval
                ParentCtl3D = False
                ReadOnly = True
                TabOrder = 8
              end
              object edtSellerNote: TDBEdit
                Tag = 1
                Left = 566
                Top = 62
                Width = 327
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'SellerNote'
                DataSource = srcAmval
                TabOrder = 2
              end
            end
            object edtStartUsingDate: TDBEdit
              Left = 741
              Top = 261
              Width = 154
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'StartUsingDate'
              DataSource = srcAmval
              TabOrder = 20
            end
            object edtDocNum: TDBEdit
              Left = 741
              Top = 284
              Width = 154
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'DocNum'
              DataSource = srcAmval
              TabOrder = 21
            end
            object edtDocDate: TDBEdit
              Left = 741
              Top = 308
              Width = 154
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'DocDate'
              DataSource = srcAmval
              TabOrder = 22
            end
            object edtAccTopicCode: TDBEdit
              Tag = 1
              Left = 310
              Top = 120
              Width = 70
              Height = 21
              DataField = 'AccTopicCode'
              DataSource = srcAmval
              TabOrder = 16
              OnKeyPress = edtTaxGrpCodeKeyPress
            end
            object DBEdit29: TDBEdit
              Left = 49
              Top = 120
              Width = 235
              Height = 21
              TabStop = False
              Color = clBtnFace
              Ctl3D = True
              DataField = '_AccName'
              DataSource = srcAmval
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 18
            end
            object TPanel
              Left = 5
              Top = 144
              Width = 436
              Height = 22
              BevelOuter = bvNone
              TabOrder = 17
              object lbl27: TLabel
                Left = 378
                Top = 5
                Width = 37
                Height = 13
                Alignment = taRightJustify
                Caption = #1578#1601#1589#1610#1604#1610
                FocusControl = edtAccDetailCode
              end
              object btnAccDetailCode: TSpeedButton
                Left = 281
                Top = 0
                Width = 23
                Height = 22
                Caption = '...'
                OnClick = btnAccDetailCodeClick
              end
              object btn1: TSpeedButton
                Left = 2
                Top = 1
                Width = 38
                Height = 19
                Caption = #1587#1575#1610#1585
                Flat = True
                OnClick = btn1Click
              end
              object edtAccDetailCode: TDBEdit
                Left = 305
                Top = 1
                Width = 70
                Height = 21
                DataField = 'AccDetailCode'
                DataSource = srcAmval
                TabOrder = 1
                OnKeyPress = edtTaxGrpCodeKeyPress
              end
              object DBEdit31: TDBEdit
                Left = 44
                Top = 1
                Width = 236
                Height = 21
                TabStop = False
                Color = clBtnFace
                Ctl3D = True
                DataField = '_DetailName'
                DataSource = srcAmval
                ParentCtl3D = False
                ReadOnly = True
                TabOrder = 0
              end
            end
            object pnl3: TPanel
              Left = 2
              Top = 397
              Width = 183
              Height = 165
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 27
              object scrlbx1: TScrollBox
                Left = 0
                Top = 0
                Width = 183
                Height = 165
                Align = alClient
                BevelInner = bvNone
                BevelOuter = bvNone
                BorderStyle = bsNone
                TabOrder = 0
                object grp2: TGroupBox
                  Left = 0
                  Top = 39
                  Width = 183
                  Height = 40
                  Align = alTop
                  Caption = #1587#1585#1610#1575#1604' '#1603#1575#1585#1578' '#1575#1589#1604#1610
                  TabOrder = 1
                  DesignSize = (
                    183
                    40)
                  object btnMasterSerial: TSpeedButton
                    Left = 31
                    Top = 13
                    Width = 23
                    Height = 22
                    Anchors = [akTop, akRight]
                    Caption = '...'
                    OnClick = btnMasterSerialClick
                    ExplicitLeft = 14
                  end
                  object DBEdit38: TDBEdit
                    Tag = 1
                    Left = 57
                    Top = 14
                    Width = 123
                    Height = 21
                    Anchors = [akTop, akRight]
                    DataField = 'MasterSerial'
                    DataSource = srcAmval
                    TabOrder = 0
                    OnKeyPress = edtTaxGrpCodeKeyPress
                  end
                end
                object grp3: TGroupBox
                  Left = 0
                  Top = 0
                  Width = 183
                  Height = 39
                  Align = alTop
                  Caption = #1575#1587#1578#1607#1604#1575#1603' '#1575#1606#1576#1575#1588#1578#1607
                  TabOrder = 0
                  Visible = False
                  DesignSize = (
                    183
                    39)
                  object edtFirstDepValue: TDBEdit
                    Left = 31
                    Top = 13
                    Width = 147
                    Height = 21
                    Anchors = [akTop, akRight]
                    DataField = 'FirstDepValue'
                    DataSource = srcAmval
                    TabOrder = 0
                  end
                end
                object grp4: TGroupBox
                  Left = 0
                  Top = 120
                  Width = 183
                  Height = 41
                  Align = alTop
                  Caption = #1578#1575#1585#1610#1582' '#1662#1575#1610#1575#1606' '#1711#1575#1585#1575#1606#1578#1610
                  TabOrder = 3
                  object edtWarrantyDate: TDBEdit
                    Left = 29
                    Top = 14
                    Width = 66
                    Height = 21
                    DataField = 'WarrantyDate'
                    DataSource = srcAmval
                    TabOrder = 0
                  end
                end
                object grp5: TGroupBox
                  Left = 0
                  Top = 79
                  Width = 183
                  Height = 41
                  Align = alTop
                  Caption = #1578#1575#1585#1610#1582' '#1588#1585#1608#1593' '#1711#1575#1585#1575#1606#1578#1610
                  TabOrder = 2
                  object edtStartWarrantyDate: TDBEdit
                    Left = 29
                    Top = 14
                    Width = 66
                    Height = 21
                    DataField = 'StartWarrantyDate'
                    DataSource = srcAmval
                    TabOrder = 0
                  end
                end
              end
            end
            object pnl4: TPanel
              Left = 185
              Top = 397
              Width = 803
              Height = 165
              Align = alClient
              TabOrder = 28
              object DBGrid1: TDBGrid
                Left = 1
                Top = 1
                Width = 801
                Height = 143
                TabStop = False
                Align = alClient
                Color = clCream
                DataSource = srcCalc
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'row'
                    Width = 35
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'Name'
                    Width = 39
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'AssetsValue'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FirstDepValue'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DepvalueInYear'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PurePrice'
                    Visible = True
                  end>
              end
              object smgrd1: TSumGrid
                Left = 1
                Top = 144
                Width = 801
                Hint = 'PurePrice'
                Active = False
                Enable_Controls = True
                MasterGrid = DBGrid1
                ShowZero = True
                FieldsName = 'AssetsValue;FirstDepValue;DepvalueInYear;PurePrice;'
              end
            end
            object cmbUnitCode: TDBComboBox
              Left = 7
              Top = 37
              Width = 137
              Height = 21
              Style = csDropDownList
              DataField = 'UnitCode'
              DataSource = srcAmval
              TabOrder = 7
            end
            object cmbOwnerType: TDBComboBox
              Left = 7
              Top = 6
              Width = 137
              Height = 21
              Style = csDropDownList
              DataField = 'OwnerType'
              DataSource = srcAmval
              TabOrder = 3
            end
            object cmbDepMode: TDBComboBox
              Left = 287
              Top = 91
              Width = 92
              Height = 21
              Style = csDropDownList
              DataField = 'DepMode'
              DataSource = srcAmval
              Items.Strings = (
                #1605#1587#1578#1602#1610#1605
                #1606#1586#1608#1604#1610
                #1576#1583#1608#1606' '#1575#1587#1578#1607#1604#1575#1603
                #1605#1589#1585#1601#1740
                #1605#1602#1583#1575#1585' '#1578#1608#1604#1740#1583
                #1605#1583#1578' '#1602#1585#1575#1585#1583#1575#1583
                #1587#1585#1601#1589#1604' '#1705#1604#1740
                #1605#1587#1578#1602#1740#1605'-'#1575#1589#1604#1575#1581#1740)
              TabOrder = 12
              OnChange = cmbDepModeChange
            end
            object DBEdit12: TDBEdit
              Tag = 1
              Left = 602
              Top = 6
              Width = 75
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'AsstetsGrpCode'
              DataSource = srcAmval
              TabOrder = 1
              OnKeyPress = edtTaxGrpCodeKeyPress
            end
            object DBEdit11: TDBEdit
              Left = 440
              Top = 6
              Width = 131
              Height = 21
              TabStop = False
              Anchors = [akLeft, akTop, akRight]
              Color = clBtnFace
              Ctl3D = True
              DataField = '_AssetsGrpName'
              DataSource = srcAmval
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 29
            end
            object DBEdit33: TDBEdit
              Left = 47
              Top = 332
              Width = 235
              Height = 21
              TabStop = False
              Color = clBtnFace
              Ctl3D = True
              DataField = '_KeeperName'
              DataSource = srcAmval
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 30
            end
            object DBEdit43: TDBEdit
              Left = 47
              Top = 309
              Width = 235
              Height = 21
              TabStop = False
              Color = clBtnFace
              Ctl3D = True
              DataField = '_UserName'
              DataSource = srcAmval
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 31
            end
            object DBEdit42: TDBEdit
              Left = 47
              Top = 285
              Width = 235
              Height = 21
              TabStop = False
              Color = clBtnFace
              Ctl3D = True
              DataField = '_PlaceName'
              DataSource = srcAmval
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 32
            end
            object DBEdit39: TDBEdit
              Left = 47
              Top = 261
              Width = 235
              Height = 21
              TabStop = False
              Color = clBtnFace
              Ctl3D = True
              DataField = '_ExpName'
              DataSource = srcAmval
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 33
            end
            object edtExpCode: TDBEdit
              Tag = 1
              Left = 308
              Top = 261
              Width = 70
              Height = 21
              DataField = 'ExpCode'
              DataSource = srcAmval
              TabOrder = 23
              OnKeyPress = edtTaxGrpCodeKeyPress
            end
            object edtKeeperCode: TDBEdit
              Left = 308
              Top = 332
              Width = 70
              Height = 21
              DataField = 'KeeperCode'
              DataSource = srcAmval
              TabOrder = 26
              OnKeyPress = edtTaxGrpCodeKeyPress
            end
            object edtUserCode: TDBEdit
              Left = 308
              Top = 309
              Width = 70
              Height = 21
              DataField = 'UserCode'
              DataSource = srcAmval
              TabOrder = 25
              OnKeyPress = edtTaxGrpCodeKeyPress
            end
            object edtPlaceCode: TDBEdit
              Left = 308
              Top = 285
              Width = 70
              Height = 21
              DataField = 'PlaceCode'
              DataSource = srcAmval
              TabOrder = 24
              OnKeyPress = edtTaxGrpCodeKeyPress
            end
            object edtAmount: TDBEdit
              Left = 321
              Top = 37
              Width = 59
              Height = 21
              DataField = 'Amount'
              DataSource = srcAmval
              TabOrder = 5
              Visible = False
            end
            object grpAidFeild: TGroupBox
              Left = 2
              Top = 357
              Width = 986
              Height = 40
              Align = alTop
              Caption = #1575#1591#1604#1575#1593#1575#1578' '#1578#1705#1605#1740#1604#1740
              TabOrder = 34
              Visible = False
              DesignSize = (
                986
                40)
              object lblAidField1: TLabel
                Left = 910
                Top = 18
                Width = 26
                Height = 13
                Alignment = taRightJustify
                Anchors = [akTop, akRight]
                Caption = #1593#1606#1608#1575#1606
                ExplicitLeft = 700
              end
              object lblAidField2: TLabel
                Left = 513
                Top = 18
                Width = 26
                Height = 13
                Alignment = taRightJustify
                Anchors = [akTop, akRight]
                Caption = #1593#1606#1608#1575#1606
                ExplicitLeft = 303
              end
              object edtAidField1: TDBEdit
                Left = 666
                Top = 15
                Width = 240
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'AidField1'
                DataSource = srcAmval
                TabOrder = 0
              end
              object edtAidField2: TDBEdit
                Left = 267
                Top = 15
                Width = 240
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'AidField2'
                DataSource = srcAmval
                TabOrder = 1
              end
            end
            object cmbSellsEmporium: TDBComboBox
              Left = 204
              Top = 6
              Width = 176
              Height = 21
              Style = csDropDownList
              DataField = 'SellsEmporium'
              DataSource = srcAmval
              TabOrder = 2
            end
            object DBLookupComboBox1: TDBLookupComboBox
              Left = 204
              Top = 37
              Width = 93
              Height = 21
              DataField = '_ColorID'
              DataSource = srcAmval
              TabOrder = 6
            end
          end
        end
      end
      object ts2: TTabSheet
        Caption = #1705#1575#1585#1583#1705#1587' '#1583#1575#1585#1575#1740#1740
        ImageIndex = 1
        object DBGrid2: TDBGrid
          Left = 0
          Top = 25
          Width = 992
          Height = 541
          Align = alClient
          Color = clCream
          DataSource = srcCardex
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Yearid'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Tablename'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FirstDepValue'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DepvalueInyear'
              Visible = True
            end>
        end
        object Panel1: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 0
          Width = 986
          Height = 25
          Margins.Top = 0
          Margins.Bottom = 0
          Align = alTop
          TabOrder = 1
          object Label2: TLabel
            AlignWithMargins = True
            Left = 953
            Top = 1
            Width = 29
            Height = 23
            Margins.Top = 0
            Margins.Bottom = 0
            Align = alRight
            Alignment = taRightJustify
            Caption = #1587#1585#1610#1575#1604
            FocusControl = DBEdit1
            ExplicitHeight = 13
          end
          object DBEdit1: TDBEdit
            AlignWithMargins = True
            Left = 793
            Top = 1
            Width = 154
            Height = 22
            Margins.Top = 0
            Margins.Bottom = 1
            Align = alRight
            DataField = 'SerialNum'
            DataSource = srcAmval
            ReadOnly = True
            TabOrder = 0
            ExplicitHeight = 21
          end
        end
      end
    end
  end
  inherited ActionList: TActionList
    Left = 616
    Top = 0
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcAmval
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcAmval
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcAmval
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcAmval
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcAmval
    end
    inherited actSearch_2: TAction
      OnExecute = actSearch_2Execute
    end
    object actNote: TAction
      Caption = #1578#1608#1590#1610#1581#1575#1578
    end
    object actPostMany: TAction
      Caption = #1579#1576#1578' '#1605#1587#1604#1587#1604
      OnExecute = actPostManyExecute
    end
    object actScan: TAction
      Caption = #1575#1587#1603#1606
      OnExecute = actScanExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actOtherInfo: TAction
      Caption = #1587#1575#1610#1585' '#1575#1605#1603#1575#1606#1575#1578'...'
      OnExecute = actOtherInfoExecute
    end
    object actAid: TAction
      Caption = #1575#1591#1604#1575#1593#1575#1578' '#1603#1605#1603#1610' '#1583#1575#1585#1575#1574#1610#1607#1575
      OnExecute = actAidExecute
    end
    object actPrintCardex: TAction
      Caption = #1670#1575#1662
      ImageIndex = 1
      OnExecute = actPrintCardexExecute
    end
    object actSearch2: TAction
      Caption = #1580#1587#1578#1580#1608
      ImageIndex = 2
      OnExecute = actSearch2Execute
    end
    object actReceiveExcel: TAction
      Caption = #1583#1585#1740#1575#1601#1578' '#1575#1586' '#1575#1705#1587#1604
      OnExecute = actReceiveExcelExecute
    end
    object actSendToExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' '#1575#1705#1587#1604
      OnExecute = actSendToExcelExecute
    end
    object actReciptItems: TAction
      Caption = #1601#1585#1575#1582#1608#1575#1606#1740' '#1575#1586' '#1575#1606#1576#1575#1585'/'#1601#1585#1608#1588
      OnExecute = actReciptItemsExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 704
    Top = 1
    Bitmap = {
      494C010103000500040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031000000420000005200000052000000420000003100000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000001000000060000000200000000000000021A14102E0201
      010D000000030000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000042
      000000420000007B0800009C0800009C0800009C0800009C0800007B0800004A
      0000004A00000000000000000000000000000000000000000000000000000000
      000005050516666666EC717171FF1616166600000030765841D7CCB5A3FFCBB1
      9DFF16120F530000000900000000000000000000000000000001020202080101
      010F000000170000001E000000230000002500000025000000210000001C0000
      00150707072A1313132C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000004A08000063
      080000A5100000A50800009C0800009C0800009C0800009C080000A5080000A5
      0800006B080000310000000000000000000000000000000000000C0C0C246C6C
      6CF8979695FFB7B5B4FFE5E5E5FF7E7671FF967155FFE9D7C8FFF26F49FFF5ED
      E6FFE3D3C8FF372D257900000012000000000000000001010102010101090000
      00110000001900000020000000250000002800000027000000240000001E0303
      033E494949FF4E4E4EFF1010101E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000004A0800006B100008A5
      210008A51800009C0800009C0800009C0800009C0800009C0800009C0800009C
      080000A50800006B0800004A00000000000017171737717171FFA5A4A3FFC4C2
      C0FFC0BEBDFFBDBBB9FFE5E5E5FF39383AFF587532FF0C8300FFEAD9CCFF30F2
      F8FFB7A590FFF2ECE5FF715B4DAF000000200000000000000000000000000000
      0000000000000000000000000000000000000000000000000000212121294747
      47FF4B4B4BFF3F3F3FF704040405000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000004A080010AD310008AD
      290008A5180000A510004AC65200E7F7EF00D6F7DE0010AD2100009C0800009C
      0800009C080000A50800004A0000000000006A6A6AF0D2D1D1FFCFCECCFFCACA
      C9FFC7C6C4FFC3C2C0FFDFDEDEFF4E4D4DFF323133FF6A574AFF4E8573FFEF97
      7BFFF49F85FFD1B9A6FFAB8A74E7100D0B380000000000000000000000000000
      0000000000000000000000000000000000000000000020202029424242FF4848
      48FF3D3D3DF60707070800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000005200000884210010B5420010A5
      3100089C180042BD4A00F7FFF700FFFFFF0084D68C0000A51000009C0800009C
      0800009C080000A50800007B0800004200006A6A6AF0DDDDDCFFD6D5D4FFD1D0
      CFFFCECDCCFFCAC9C8FFDFDEDEFF7F7C7BFF878585FF434243FF5A5552FFA586
      6BFF958578FF06060655000000470000000D0000000000000000000000000000
      00000E0E0E101919191E0505050600000000202020293F3F3FFF444444FF3B3B
      3BF6070707080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000052000010A5420018B54A0010AD
      310042BD4A00F7FFF700FFFFFF0073D67B00009C0800009C0800009C0800009C
      0800009C080000A5080000940800004200006A6A6AF0F8F8F8FFE6E6E6FFD9D8
      D8FFD5D5D3FFCCCCCBFFDFDEDEFF7E7C7BFF8A8786FF989594FF828180FF6462
      62FFBAB9B9FF05050553000000380000000600000000000000002E2E2E429696
      96F7D0D0D0FFD7D7D7FFC1C1C1FF717171D53B3B3BFE404040FF393939F60707
      0708000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000006B100021B5520021B5520073D6
      9400EFFFEF00FFFFFF00F7FFF700B5EFC600B5E7BD00ADE7B500ADE7B500ADE7
      B500ADE7B500009C0800009C0800004A00006A6A6AF0FBFBFBFFFAFAFAFFF8F8
      F8FFF7F7F7FF787878FFA5A4A4FF8C8C8BFF898685FF989794FFA7A5A4FFB5B3
      B1FFBAB9B9FF0000002700000002000000000000000038383856D6D5D4FFF5F4
      EFFFF3F2F0FFF1F1EFFFF3F2F0FFEFEEEAFFABABAAFF383838F6070707080000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000873100039BD6B0029BD5A00BDEF
      CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00009C0800009C080000520000696969ED939393FFE0E0E0FFDFDF
      DFFF717171FF8C8C8CFFD8D8D7FF999794FFBAB8B7FF7F7F7EFFA6A5A4FFB5B3
      B2FFBAB9B8FF00000001000000000000000000000001C4C4C3FFF0ECE2FFF0EC
      E2FFF0ECE2FFF0ECE2FFF0ECE2FFEFEEECFFEBE8E2FF747474C8000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000873100052C67B0042C6730029BD
      5A00A5E7BD00FFFFFF00F7FFF70084DEA50042BD5A0042BD5A0042BD5A0042BD
      5A0042BD5A0008A51800009C080000420000000000009D9C9AFF9B9B9BFFE1E0
      E1FFEAEAEAFFE0DFDFFFB3B1AEFFA7A5A3FF999794FF8E8C8BFFBAB7B7FF9493
      92FFBBB9B8FF0000000000000000000000003838384FE4E0D8FFEAE3D4FFEAE3
      D4FFEAE3D4FFEAE3D4FFEAE3D4FFEAE3D3FFECE8DFFFC7C6C4FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000087310004ABD6B0084DEA50021B5
      520021B5520094DEB500FFFFFF00E7F7EF0052C6730010AD310010AD310010AD
      310008A5290008A51800008C08000042000000000000626161A5916B4EFF7C7C
      7CFFC0BFBEFFA7A5A3FFB2B0AFFFB3B1AEFFA7A5A3FF999794FF8A8887FFC6C5
      C3FF717171FF00000000000000000000000051515183E2DBCBFFE8E2D1FFEEE9
      DCFFEAE4D5FFE3DBC6FFE3DBC6FFE3DBC6FFE3DBC6FFD9D7D0FF0C0C0C0E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021A53100ADE7C6006BCE
      8C0010AD4A0018B54A008CDEAD00FFFFFF00F7FFF70029BD520010A5310008A5
      290008A5210008AD1800006B08000000000000000000000000009C775AFFFFFF
      FFFFC0C0C0FF818181FFACAAA8FFB2B0AFFFB3B0AEFFA7A5A4FFBEBDBCFFADAC
      ACFF3B3B3B870000000000000000000000004545455FDDD5C3FFF2EFE9FFF1EC
      E2FFF1ECE2FFF1ECE2FFEAE3D4FFE7DFCEFFEDE7DBFFD1CFC9FF010101020000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021A5310052C67300BDEF
      D60063CE8C0021B5520018B5520094DEB500ADE7C60021B5520010AD390010AD
      310010AD3100109C2100006B0800000000000000000000000000AB866AFFF1E6
      DDFFF7F0EBFFFBF9F8FE747474FFB2B0AFFFDBDADBFFEBEAEAFFC0C0C0FF5151
      51B70000000000000000000000000000000008080809D5D2CBFFE7E1D2FFEAE5
      D8FFE8E1D1FFE8E2D1FFE8E2D1FFE8E2D1FFDED5BEFF979797E3000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000109C21006BCE
      8C00D6F7E7009CE7B50052C67B0039BD630029BD5A0031BD630031BD630021BD
      4A0010A5310000630800000000000000000000000000000000002D241D3FB2A4
      9BCCEDDFD4FFECDDD1FFFDFBF9FF4D4D4DAE717171FF5A5A5ACC111111270000
      000000000000000000000000000000000000000000005858588CD4CBB5FFDAD0
      B7FFDFD7C6FFDED6C3FFDDD4C0FFD7CAADFFD3D0CAFF1818181E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004ABD
      63004ABD630094DEB500BDEFD600A5E7C6008CDEAD007BDE9C004AC67B00189C
      3900189C39000000000000000000000000000000000000000000000000000000
      00009C806CCBFCF9F7FFFCF9F7FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000057575785D3D0
      C8FFCEC2A4FFCABD9AFFD1C8B0FFBFBEBDF82222222B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000021A5310039B5520042BD630042BD630029A54A00108C29000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000372D2548B0A8A3BD000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000303
      030436363644474747612525252C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00F81FF003F00F0000E007E00180010000
      C00380008001000080010000FFC1000080010000FF83000000000000E0070000
      00000000800F000000000001801F000000000003001F000000008003001F0000
      00008003001F00008001C007001F00008001C007001F0000C003C01F803F0000
      E007F0FFC07F0000F81FF8FFE0FF000000000000000000000000000000000000
      000000000000}
  end
  object qryAmval: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterOpen = qryAmvalAfterOpen
    AfterInsert = qryAmvalAfterInsert
    BeforeEdit = qryAmvalBeforeEdit
    AfterEdit = qryAmvalAfterEdit
    BeforePost = qryAmvalBeforePost
    AfterPost = qryAmvalAfterPost
    BeforeDelete = qryAmvalBeforeDelete
    AfterDelete = qryAmvalAfterDelete
    AfterScroll = qryAmvalAfterScroll
    Parameters = <
      item
        Name = 'sn'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 2
      end>
    SQL.Strings = (
      'select * from  assets.Amval'
      #13'where SerialNum= :sn'#10
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 464
    Top = 216
    object qryAmvalSerialNum: TIntegerField
      Tag = 3
      DisplayLabel = #1587#1585#1610#1575#1604
      FieldName = 'SerialNum'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryAmvalFormNum: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '
      FieldName = 'FormNum'
      Required = True
    end
    object qryAmvalFormDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'FormDate'
      Required = True
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryAmvalOwnerType: TIntegerField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1605#1575#1604#1603#1610#1578
      FieldName = 'OwnerType'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryAmvalStuffDesc: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1603#1575#1604#1575
      FieldName = 'StuffDesc'
      Required = True
      Size = 150
    end
    object qryAmvalUnitCode: TIntegerField
      Tag = 3
      DisplayLabel = #1608#1575#1581#1583
      FieldName = 'UnitCode'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryAmvalAsstetsGrpCode: TIntegerField
      Tag = 3
      DisplayLabel = #1711#1585#1608#1607' '#1583#1575#1585#1575#1574#1610
      FieldName = 'AsstetsGrpCode'
    end
    object qryAmvalAssetsValue: TBCDField
      Tag = 3
      DisplayLabel = #1575#1585#1586#1588' '#1583#1575#1585#1575#1574#1610
      FieldName = 'AssetsValue'
      currency = True
      Precision = 19
    end
    object qryAmvalEsqValue: TBCDField
      Tag = 3
      DisplayLabel = #1575#1585#1586#1588' '#1575#1587#1602#1575#1591
      FieldName = 'EsqValue'
      currency = True
      Precision = 19
    end
    object qryAmvalAmount: TIntegerField
      FieldName = 'Amount'
    end
    object qryAmvalTaxGrpCode: TIntegerField
      Tag = 3
      DisplayLabel = #1711#1585#1608#1607' '#1605#1575#1583#1607' 151'
      FieldName = 'TaxGrpCode'
      OnChange = qryAmvalTaxGrpCodeChange
    end
    object qryAmvalTaxID: TIntegerField
      Tag = 3
      DisplayLabel = #1575#1580#1586#1575#1569
      FieldName = 'TaxID'
      OnChange = qryAmvalTaxGrpCodeChange
    end
    object qryAmvalDepMode: TWordField
      Tag = 3
      DisplayLabel = #1585#1608#1588' '#1575#1587#1578#1607#1604#1575#1603
      FieldName = 'DepMode'
      OnGetText = qryAmvalDepModeGetText
      OnSetText = qryAmvalDepModeSetText
    end
    object qryAmvalDepValue: TIntegerField
      Tag = 3
      DisplayLabel = #1606#1585#1582' '#1575#1587#1578#1607#1604#1575#1603
      FieldName = 'DepValue'
      Required = True
    end
    object qryAmvalPelakNum: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1662#1604#1575#1603
      FieldName = 'PelakNum'
    end
    object qryAmvalLastPelakNum: TStringField
      Tag = 3
      DisplayLabel = #1662#1604#1575#1603' '#1602#1576#1604#1610
      FieldName = 'LastPelakNum'
      LookupDataSet = DmF.qry_Temp
      Size = 30
    end
    object qryAmvalAccTopicCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576
      FieldName = 'AccTopicCode'
      Required = True
    end
    object qryAmvalAccDetailCode: TIntegerField
      Tag = 3
      DisplayLabel = #1578#1601#1589#1610#1604#1610
      FieldName = 'AccDetailCode'
      Required = True
    end
    object qryAmvalAccCTopicCode: TIntegerField
      Tag = 3
      DisplayLabel = #1578#1601#1589#1610#1604#1610'2'
      FieldName = 'AccCTopicCode'
    end
    object qryAmvalAccCTopicCode2: TIntegerField
      Tag = 3
      DisplayLabel = #1578#1601#1589#1610#1604#1610'2'#39' 2'
      FieldName = 'AccCTopicCode2'
    end
    object qryAmvalAccCTopicCode3: TIntegerField
      Tag = 3
      DisplayLabel = #1578#1601#1589#1610#1604#1610'2'#39' 3'
      FieldName = 'AccCTopicCode3'
    end
    object qryAmvalInvoiceNum: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1575#1603#1578#1608#1585
      FieldName = 'InvoiceNum'
    end
    object qryAmvalInvoiceDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1582#1585#1610#1583
      FieldName = 'InvoiceDate'
      Required = True
      OnChange = qryAmvalInvoiceDateChange
      EditMask = '9999/99/99;1;_'
      FixedChar = True
      Size = 10
    end
    object qryAmvalSellerNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' '#1582#1585#1610#1583
      FieldName = 'SellerNote'
      Size = 100
    end
    object qryAmvalSellerDetailCode: TIntegerField
      Tag = 3
      DisplayLabel = #1578#1601#1589#1610#1604#1610
      FieldName = 'SellerDetailCode'
    end
    object qryAmvalSellerCTopicCode: TIntegerField
      Tag = 3
      DisplayLabel = #1605'_'#1607#1586#1610#1606#1607
      FieldName = 'SellerCTopicCode'
    end
    object qryAmvalStartUsingDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1576#1607#1585#1607#8204' '#1576#1585#1583#1575#1585#1610
      FieldName = 'StartUsingDate'
      Required = True
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryAmvalSellerTopicCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583#1581#1587#1575#1576
      FieldName = 'SellerTopicCode'
    end
    object qryAmvalDocNum: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1587#1606#1583
      FieldName = 'DocNum'
    end
    object qryAmvalDocDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1587#1606#1583' '
      FieldName = 'DocDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryAmvalExpCode: TIntegerField
      Tag = 3
      DisplayLabel = #1605#1585#1603#1586'_'#1607#1586#1610#1606#1607
      FieldName = 'ExpCode'
    end
    object qryAmvalPlaceCode: TIntegerField
      Tag = 3
      DisplayLabel = #1605#1581#1604' '#1575#1587#1578#1602#1585#1575#1585
      FieldName = 'PlaceCode'
    end
    object qryAmvalUserCode: TIntegerField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1575#1587#1578#1601#1575#1583#1607' '#1603#1606#1606#1583#1607
      FieldName = 'UserCode'
    end
    object qryAmvalAmvalState: TWordField
      Tag = 3
      DisplayLabel = #1608#1590#1593#1610#1578
      FieldName = 'AmvalState'
      OnGetText = qryAmvalAmvalStateGetText
    end
    object qryAmvalFirstDepValue: TBCDField
      Tag = 3
      DisplayLabel = #1575#1587#1578#1607#1604#1575#1603' '#1575#1606#1576#1575#1588#1578#1607
      FieldName = 'FirstDepValue'
      currency = True
      Precision = 19
    end
    object qryAmvalDepvalueInYear: TBCDField
      FieldName = 'DepvalueInYear'
      Precision = 19
    end
    object qryAmval_UserName: TStringField
      FieldKind = fkLookup
      FieldName = '_UserName'
      LookupDataSet = qryUser
      LookupKeyFields = 'UserID'
      LookupResultField = 'UserName'
      KeyFields = 'UserCode'
      Size = 150
      Lookup = True
    end
    object qryAmval_PlaceName: TStringField
      FieldKind = fkLookup
      FieldName = '_PlaceName'
      LookupDataSet = qryPlace
      LookupKeyFields = 'PlaceCode'
      LookupResultField = 'PlaceName'
      KeyFields = 'placeCode'
      Size = 150
      Lookup = True
    end
    object qryAmval_ExpName: TStringField
      FieldKind = fkLookup
      FieldName = '_ExpName'
      LookupDataSet = qryAccCtopics
      LookupKeyFields = 'ExpCode'
      LookupResultField = 'ExpDesc'
      KeyFields = 'expCode'
      Size = 150
      Lookup = True
    end
    object qryAmval_MoeenName: TStringField
      FieldKind = fkLookup
      FieldName = '_MoeenName'
      LookupDataSet = DmF.qryCategories
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'MoeenName_L1'
      KeyFields = 'SellerTopicCode'
      Size = 150
      Lookup = True
    end
    object qryAmval_DetailName: TStringField
      FieldKind = fkLookup
      FieldName = '_SelDetailName'
      LookupDataSet = DmF.qryDetail
      LookupKeyFields = 'DetailCode'
      LookupResultField = 'DetailName_L1'
      KeyFields = 'SellerDetailCode'
      Size = 150
      Lookup = True
    end
    object qryAmval_CtopicName: TStringField
      FieldKind = fkLookup
      FieldName = '_SelCtopicName'
      LookupDataSet = DmF.qryCtopicCode
      LookupKeyFields = 'CTopicCode'
      LookupResultField = 'CTopicName_L1'
      KeyFields = 'SellerCTopicCode'
      Size = 150
      Lookup = True
    end
    object qryAmval_AssetsName: TStringField
      FieldKind = fkLookup
      FieldName = '_AssetsGrpName'
      LookupDataSet = qryAssetsGroups
      LookupKeyFields = 'AsstetsGrpCode'
      LookupResultField = 'GrpName'
      KeyFields = 'AsstetsGrpCode'
      Size = 150
      Lookup = True
    end
    object qryAmval_AccCodeName: TStringField
      FieldKind = fkLookup
      FieldName = '_AccName'
      LookupDataSet = qryAccTopics
      LookupKeyFields = 'AccTopicCode'
      LookupResultField = 'AccDesc'
      KeyFields = 'AccTopicCode'
      Size = 150
      Lookup = True
    end
    object qryAmval_DetailName2: TStringField
      FieldKind = fkLookup
      FieldName = '_DetailName'
      LookupDataSet = DmF.qryDetail
      LookupKeyFields = 'DetailCode'
      LookupResultField = 'DetailName_L1'
      KeyFields = 'AccDetailCode'
      Size = 150
      Lookup = True
    end
    object qryAmval_CTopic2Name: TStringField
      FieldKind = fkLookup
      FieldName = '_CTopic2Name'
      LookupDataSet = DmF.qryCtopicCode2
      LookupKeyFields = 'CTopicCode2'
      LookupResultField = 'CTopicName2_L1'
      KeyFields = 'AccCTopicCode2'
      Size = 150
      Lookup = True
    end
    object qryAmval_Ctopic3Name: TStringField
      FieldKind = fkLookup
      FieldName = '_Ctopic3Name'
      LookupDataSet = DmF.qryCtopicCode3
      LookupKeyFields = 'CTopicCode3'
      LookupResultField = 'CTopicName3_L1'
      KeyFields = 'AccCTopicCode3'
      Size = 150
      Lookup = True
    end
    object qryAmval_CtopicName2: TStringField
      FieldKind = fkLookup
      FieldName = '_CtopicName'
      LookupDataSet = DmF.qryCtopicCode
      LookupKeyFields = 'CTopicCode'
      LookupResultField = 'CTopicName_L1'
      KeyFields = 'AccCTopicCode'
      Size = 150
      Lookup = True
    end
    object qryAmvalWarrantyDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1662#1575#1610#1575#1606' '#1711#1575#1585#1575#1606#1578#1610
      FieldName = 'WarrantyDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryAmvalMasterSerial: TIntegerField
      Tag = 3
      DisplayLabel = #1587#1585#1610#1575#1604' '#1603#1575#1585#1578' '#1575#1589#1604#1610
      FieldName = 'MasterSerial'
    end
    object qryAmvalKeeperCode: TIntegerField
      Tag = 3
      DisplayLabel = #1580#1605#1593#1583#1575#1585' '#1575#1605#1608#1575#1604
      FieldName = 'KeeperCode'
    end
    object qryAmval_KeeperName: TStringField
      FieldKind = fkLookup
      FieldName = '_KeeperName'
      LookupDataSet = qryAssetsKeeper
      LookupKeyFields = 'KeeperCode'
      LookupResultField = 'KeeperName'
      KeyFields = 'KeeperCode'
      Size = 150
      Lookup = True
    end
    object qryAmval_KeeperMobile: TStringField
      FieldKind = fkLookup
      FieldName = '_KeeperMobile'
      LookupDataSet = qryAssetsKeeper
      LookupKeyFields = 'KeeperCode'
      LookupResultField = 'Mobile'
      KeyFields = 'KeeperCode'
      Lookup = True
    end
    object qryIncSpecial_UsersMobile: TStringField
      DisplayLabel = #1605#1608#1576#1575#1610#1604' '#1575#1587#1578#1601#1575#1583#1607' '#1705#1606#1606#1583#1607
      FieldKind = fkLookup
      FieldName = '_UsersMobile'
      LookupDataSet = qryUser
      LookupKeyFields = 'UserID'
      LookupResultField = 'Mobile'
      KeyFields = 'UserCode'
      Lookup = True
    end
    object qryAmvalStartWarrantyDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1588#1585#1608#1593' '#1711#1575#1585#1575#1606#1578#1610
      FieldName = 'StartWarrantyDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object strngfldAmvalComments: TStringField
      FieldName = 'Comments'
      Size = 6000
    end
    object qryAmvalAidField1: TWideStringField
      FieldName = 'AidField1'
      Size = 100
    end
    object qryAmvalAidField2: TWideStringField
      FieldName = 'AidField2'
      Size = 100
    end
    object qryAmvalReciptItemsID: TLargeintField
      FieldName = 'ReciptItemsID'
    end
    object qryAmvalSellsEmporium: TIntegerField
      DisplayLabel = #1605#1585#1705#1586' '#1601#1585#1608#1588
      FieldName = 'SellsEmporium'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryAmvalColorID: TIntegerField
      FieldName = 'ColorID'
    end
    object qryAmvalFirstUser: TStringField
      Tag = 3
      FieldName = 'FirstUser'
      Size = 50
    end
    object qryAmvalLastUser: TStringField
      Tag = 3
      FieldName = 'LastUser'
      Size = 50
    end
    object qryAmval_ColorID: TStringField
      FieldKind = fkLookup
      FieldName = '_ColorID'
      LookupDataSet = qryColors
      LookupKeyFields = 'ColorID'
      LookupResultField = 'ColorName'
      KeyFields = 'ColorID'
      Size = 50
      Lookup = True
    end
  end
  object srcAmval: TDataSource
    DataSet = qryAmval
    OnStateChange = srcAmvalStateChange
    Left = 512
    Top = 101
  end
  object qryCalc: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'Sn'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'yearid'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      
        'FROM        assets. DepForAssetsForm(:Sn,:yearid) DepForAssetsFo' +
        'rm'
      'ORDER BY Row')
    Left = 408
    Top = 5
    object qryCalcrow: TIntegerField
      DisplayLabel = #1585#1583#1610#1601
      FieldName = 'row'
    end
    object qryCalcName: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      DisplayWidth = 25
      FieldName = 'Name'
      Size = 45
    end
    object qryCalcAssetsValue: TBCDField
      DisplayLabel = #1602#1610#1605#1578' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'AssetsValue'
      currency = True
      Precision = 19
    end
    object qryCalcFirstDepValue: TBCDField
      DisplayLabel = #1575#1587#1578#1607#1604#1575#1603' '#1575#1606#1576#1575#1588#1578#1607
      FieldName = 'FirstDepValue'
      currency = True
      Precision = 19
    end
    object qryCalcDepvalueInYear: TBCDField
      DisplayLabel = #1575#1587#1578#1607#1604#1575#1603' '#1587#1575#1604' '#1580#1575#1585#1610
      FieldName = 'DepvalueInYear'
      currency = True
      Precision = 19
    end
    object qryCalcPurePrice: TBCDField
      DisplayLabel = #1575#1585#1586#1588' '#1583#1601#1578#1585#1610
      FieldName = 'PurePrice'
      currency = True
      Precision = 19
    end
  end
  object srcCalc: TDataSource
    DataSet = qryCalc
    Left = 480
    Top = 45
  end
  object qryUser: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT        UserID, UserName, Mobile'
      'FROM            Assets.Users')
    Left = 464
    Top = 512
  end
  object qryPlace: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     *  FROM      assets. Places')
    Left = 400
    Top = 520
  end
  object qryAccCtopics: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select * from assets.AccCtopics')
    Left = 344
    Top = 512
  end
  object qryAssetsGroups: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT        Assets.AssetsGroups.AsstetsGrpCode, ISNULL(Assets.' +
        'AssetsGroups.GrpName, '#39#39') + '#39' - '#39' + ISNULL(AssetsGroups_1.GrpNam' +
        'e, '#39#39') '
      
        '                         + '#39' - '#39' + ISNULL(AssetsGroups_2.GrpName' +
        ', '#39#39') AS GrpName'
      
        'FROM            Assets.AssetsGroups AS AssetsGroups_2 RIGHT OUTE' +
        'R JOIN'
      
        '                         Assets.AssetsGroups AS AssetsGroups_1 O' +
        'N AssetsGroups_2.AsstetsGrpCode = AssetsGroups_1.PrvGrpCode RIGH' +
        'T OUTER JOIN'
      
        '                         Assets.AssetsGroups ON AssetsGroups_1.A' +
        'sstetsGrpCode = Assets.AssetsGroups.PrvGrpCode')
    Left = 607
    Top = 512
  end
  object qryAccTopics: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT   AccTopicCode, AccDesc FROM    assets.AccTopics')
    Left = 216
    Top = 488
  end
  object qryTax: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'TaxGrp'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'TaxID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     assets.TaxGroup.TaxGrpCode, assets.TaxItems.TaxID, as' +
        'sets.TaxGroup.TaxTitle,'
      
        '            assets.TaxItems.TaxCalculateName, assets.TaxItems.De' +
        'pValue, assets.TaxItems.DepMode'
      'FROM         assets.TaxGroup LEFT OUTER JOIN'
      
        '                      assets.TaxItems ON assets.TaxGroup.TaxGrpC' +
        'ode = assets.TaxItems.TaxGrpCode'
      
        'WHERE     (assets.TaxGroup.TaxGrpCode = :TaxGrp) AND (assets.Tax' +
        'Items.TaxID = :TaxID)')
    Left = 521
    Top = 520
    object qryTaxTaxGrpCode: TIntegerField
      FieldName = 'TaxGrpCode'
    end
    object qryTaxTaxID: TIntegerField
      FieldName = 'TaxID'
    end
    object qryTaxTaxTitle: TStringField
      FieldName = 'TaxTitle'
      Size = 100
    end
    object qryTaxTaxCalculateName: TStringField
      FieldName = 'TaxCalculateName'
      Size = 100
    end
    object qryTaxDepValue: TIntegerField
      FieldName = 'DepValue'
    end
    object qryTaxDepMode: TWordField
      FieldName = 'DepMode'
    end
  end
  object qryAllAmval: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryAllAmvalAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select SerialNum from assets.amval')
    Left = 200
    Top = 8
  end
  object srcAllAmval: TDataSource
    DataSet = qryAllAmval
    Left = 272
    Top = 8
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBAmval
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
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\Projects\Fara\BSell\Exe\Report\RptReports_6052_1.rtm'
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
    Left = 644
    Top = 242
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBAmval'
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
        mmWidth = 197379
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCompanyName: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCompanyName'
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
        mmLeft = 73025
        mmTop = 1058
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCaption: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCaption'
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578'  '#1662#1585#1587#1606#1604
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
        mmLeft = 86519
        mmTop = 8467
        mmWidth = 24342
        BandType = 0
        LayerName = Foreground
      end
      object ppSysVarPageNo: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SysVarPageNo1'
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
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object ppLblPrintDate: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lbprintdate'
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
      object ppDBCalcdcCount_TextAlign: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalcdcCount_TextAlign'
        Border.mmPadding = 0
        DataPipeline = ppDBAmval
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DBCalcType = dcCount
        DataPipelineName = 'ppDBAmval'
        mmHeight = 3969
        mmLeft = 153988
        mmTop = 4233
        mmWidth = 21960
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583#8204#1605#1588#1578#1585#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 182880
        mmTop = 18522
        mmWidth = 13970
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
        mmLeft = 182352
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
        Caption = #1606#1575#1605#8204#1605#1588#1578#1585#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 120864
        mmTop = 18522
        mmWidth = 60960
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
        mmLeft = 120335
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
        Caption = #1588#1605#1575#1585#1607#8204#1601#1575#1603#1578#1608#1585
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 103297
        mmTop = 18522
        mmWidth = 16510
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
        mmLeft = 102769
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
        Caption = #1578#1575#1585#1610#1582#8204#1601#1575#1603#1578#1608#1585
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 85730
        mmTop = 18522
        mmWidth = 16510
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
        mmLeft = 85202
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
        Caption = #1606#1575#1582#1575#1604#1589#8204#1601#1585#1608#1588
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 63084
        mmTop = 18522
        mmWidth = 21590
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 62555
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1582#1575#1604#1589#8204#1601#1585#1608#1588
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 40437
        mmTop = 18522
        mmWidth = 21590
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line15'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 39909
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583#8204#1606#1608#1593#8204#1601#1585#1608#1588
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 24140
        mmTop = 18522
        mmWidth = 15240
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line19'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 23612
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1608#1593#8204#1601#1585#1608#1588
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 0
        mmTop = 18522
        mmWidth = 23368
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line21'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 0
        mmTop = 17991
        mmWidth = 2647
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
        mmHeight = 5821
        mmLeft = 166952
        mmTop = 10319
        mmWidth = 16140
        BandType = 0
        LayerName = Foreground
      end
      object pplblYearId: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        OnGetText = pplblYearIdGetText
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
        mmLeft = 48683
        mmTop = 8467
        mmWidth = 8805
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
        mmHeight = 7408
        mmLeft = 194469
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
        DataField = #1603#1583#8204#1605#1588#1578#1585#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        mmHeight = 7408
        mmLeft = 182880
        mmTop = 0
        mmWidth = 13970
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
        mmLeft = 182352
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = #1606#1575#1605#8204#1605#1588#1578#1585#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        mmHeight = 7408
        mmLeft = 120864
        mmTop = 0
        mmWidth = 60960
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
        mmLeft = 120335
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = #1588#1605#1575#1585#1607#8204#1601#1575#1603#1578#1608#1585
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        mmHeight = 7408
        mmLeft = 103297
        mmTop = 0
        mmWidth = 16510
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
        mmLeft = 102769
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = #1578#1575#1585#1610#1582#8204#1601#1575#1603#1578#1608#1585
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        mmHeight = 7408
        mmLeft = 85730
        mmTop = 0
        mmWidth = 16510
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
        mmLeft = 85202
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = #1606#1575#1582#1575#1604#1589#8204#1601#1585#1608#1588
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        mmHeight = 7408
        mmLeft = 63084
        mmTop = 0
        mmWidth = 21590
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 62555
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = #1582#1575#1604#1589#8204#1601#1585#1608#1588
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        mmHeight = 7408
        mmLeft = 40437
        mmTop = 0
        mmWidth = 21590
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line16'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 39909
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = #1603#1583#8204#1606#1608#1593#8204#1601#1585#1608#1588
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        mmHeight = 7408
        mmLeft = 24140
        mmTop = 0
        mmWidth = 15240
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line20'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 23612
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = #1606#1608#1593#8204#1601#1585#1608#1588
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        mmHeight = 7408
        mmLeft = 0
        mmTop = 0
        mmWidth = 23368
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
        mmLeft = 0
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 9525
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 0
        mmWidth = 197379
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
        mmHeight = 6011
        mmLeft = 181240
        mmTop = 529
        mmWidth = 15579
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = #1603#1583#8204#1605#1588#1578#1585#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DBCalcType = dcCount
        mmHeight = 6350
        mmLeft = 182880
        mmTop = 528
        mmWidth = 13970
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
        mmLeft = 182352
        mmTop = 0
        mmWidth = 2647
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc4'
        Border.mmPadding = 0
        DataField = #1606#1575#1582#1575#1604#1589#8204#1601#1585#1608#1588
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        mmHeight = 6435
        mmLeft = 63084
        mmTop = 528
        mmWidth = 21590
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 62555
        mmTop = 0
        mmWidth = 2647
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc6'
        Border.mmPadding = 0
        DataField = #1582#1575#1604#1589#8204#1601#1585#1608#1588
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        mmHeight = 6435
        mmLeft = 40437
        mmTop = 528
        mmWidth = 21590
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line18'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 39909
        mmTop = 0
        mmWidth = 2647
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 27517
      mmPrintPosition = 0
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape3'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 0
        mmWidth = 197379
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
        mmLeft = 183886
        mmTop = 529
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = #1603#1583#8204#1605#1588#1578#1585#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DBCalcType = dcCount
        mmHeight = 6350
        mmLeft = 182880
        mmTop = 528
        mmWidth = 13970
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
        mmLeft = 182352
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        Border.mmPadding = 0
        DataField = #1606#1575#1582#1575#1604#1589#8204#1601#1585#1608#1588
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        mmHeight = 6435
        mmLeft = 63084
        mmTop = 528
        mmWidth = 21590
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 62555
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc5'
        Border.mmPadding = 0
        DataField = #1582#1575#1604#1589#8204#1601#1585#1608#1588
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        mmHeight = 6435
        mmLeft = 40437
        mmTop = 528
        mmWidth = 21590
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line17'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 39909
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = #1589#1606#1583#1608#1602#1583#1575#1585'      '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 147902
        mmTop = 16669
        mmWidth = 31485
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        Border.mmPadding = 0
        Caption = #1605#1587#1574#1608#1604' '#1576#1575#1586#1585#1711#1575#1606#1610' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 25400
        mmTop = 15346
        mmWidth = 37571
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
  object ppDBAmval: TppDBPipeline
    DataSource = srcAmval
    OpenDataSource = False
    UserName = 'DBAmval'
    Left = 632
    Top = 170
  end
  object popOther: TPopupMenu
    Left = 290
    Top = 476
    object N2: TMenuItem
      Action = actAid
    end
    object N1: TMenuItem
      Action = actScan
    end
    object N3: TMenuItem
      Caption = #1578#1608#1590#1610#1581#1575#1578
      OnClick = N3Click
    end
    object N4: TMenuItem
      Action = actReceiveExcel
    end
    object Excel1: TMenuItem
      Action = actSendToExcel
    end
    object mnudepvalue1: TMenuItem
      Caption = #1578#1594#1740#1740#1585' '#1575#1587#1578#1607#1604#1575#1705' '#1575#1606#1576#1575#1588#1578#1607
      OnClick = mnudepvalueClick
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object N5: TMenuItem
      Action = actReciptItems
    end
  end
  object qryAssetsKeeper: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT        KeeperCode, KeeperName, KeeperDetailCode, Mobile, ' +
        'Email'
      'FROM            Assets.AssetsKeeper')
    Left = 695
    Top = 512
  end
  object srcCardex: TDataSource
    DataSet = qryCardex
    Left = 800
    Top = 136
  end
  object qryCardex: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'serial'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      'select  Yearid , '
      #9'case '
      #9#9'when Tablename='#39'amval'#39' then '#39#1705#1575#1585#1578' '#1583#1575#1585#1575#1740#1740' '#1579#1575#1576#1578' '#39' '
      #9#9'when Tablename='#39'BerakAmval'#39' then '#39#1578#1608#1602#1601#1575#1578' '#1583#1575#1585#1575#1740#1740' '#1579#1575#1576#1578'  '#39' '
      #9#9'when Tablename='#39'Movement'#39' then '#39#1580#1575#1576#1580#1575#1740#1740' '#1583#1575#1585#1575#1574#1740#1607#1575'  '#39' '
      #9#9'when Tablename='#39'AlterAssets'#39' then '#39#1578#1593#1583#1740#1604#1575#1578'  '#39' '
      #9#9'when Tablename='#39'Expenses'#39' then '#39#1578#1593#1605#1740#1585#1575#1578' '#1575#1587#1575#1587#1740' '#39' '
      ' '
      #9'else '#39#1587#1575#1740#1585' '#39' end as Tablename ,  '
      'FirstDepValue,DepvalueInyear'
      #9#9'from ('
      
        #9#9'select DepTable.Serial,DepTable.Tablename , DepTable.Id4table ' +
        ', DepTable.FirstDepValue,DepTable.DepvalueInyear,'
      #9#9#9#9'DepTable.Yearid '
      #9#9'from Assets.DepTable as DepTable inner join'
      #9#9#9#9'Assets.Amval as Amval On DepTable.Serial = Amval.SerialNum'
      ''
      #9#9'union all '
      ''
      
        #9#9'select [Serial] , '#39#1578#1593#1583#1740#1604#1575#1578' '#1583#1575#1585#1575#1740#1740' '#1607#1575#39',[ID],[AlterDepValue],[Al' +
        'terDepValueInYear], [Util].[MaliYear].YearID'
      #9#9'from [Assets].[AlterAssets] inner join Util.MaliYear on '
      
        #9#9#9#9'AlterDate >= [Util].[MaliYear].StartYear and AlterDate<=[Uti' +
        'l].[MaliYear].endyear'
      ') Deptable '
      ''
      'where serial = :serial'
      'order by Yearid')
    Left = 768
    Top = 24
    object qryCardexYearid: TIntegerField
      FieldName = 'Yearid'
      ReadOnly = True
    end
    object qryCardexTablename: TStringField
      FieldName = 'Tablename'
      ReadOnly = True
    end
    object qryCardexFirstDepValue: TBCDField
      FieldName = 'FirstDepValue'
      ReadOnly = True
      Precision = 19
    end
    object qryCardexDepvalueInyear: TBCDField
      FieldName = 'DepvalueInyear'
      ReadOnly = True
      Precision = 19
    end
  end
  object popPrint: TPopupMenu
    Left = 264
    Top = 554
    object N7: TMenuItem
      Action = actPrint
    end
    object N8: TMenuItem
      Action = actPrintCardex
    end
    object N21: TMenuItem
      Caption = #1670#1575#1662' 2'
      Hint = 'Amval2.rtm'
      OnClick = AllClick
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object N31: TMenuItem
      Caption = #1670#1575#1662' 3'
      Hint = 'Amval3.rtm'
      OnClick = AllClick
    end
    object N41: TMenuItem
      Caption = #1670#1575#1662' 4'
      Hint = 'Amval4.rtm'
      OnClick = AllClick
    end
    object N51: TMenuItem
      Caption = #1670#1575#1662' 5'
      Hint = 'Amval5.rtm'
      OnClick = AllClick
    end
  end
  object plnCalc: TppDBPipeline
    DataSource = srcCalc
    OpenDataSource = False
    UserName = 'Calc'
    Left = 520
    Top = 194
    MasterDataPipelineName = 'ppDBAmval'
  end
  object qryColors: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT         ColorID, ColorName'
      'FROM            Assets.Colors')
    Left = 528
    Top = 344
  end
end

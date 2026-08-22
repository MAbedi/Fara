inherited GetAllFormFromExlF: TGetAllFormFromExlF
  BorderStyle = bsSizeToolWin
  Caption = #1583#1585#1740#1575#1601#1578' '#1601#1585#1605' '#1607#1575#1740' '#1582#1586#1575#1606#1607' '#1583#1575#1585#1740' '#1575#1586' Excel'
  ClientHeight = 655
  ClientWidth = 739
  OnResize = FormResize
  ExplicitWidth = 755
  ExplicitHeight = 694
  DesignSize = (
    739
    655)
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 598
    Width = 739
    ExplicitTop = 532
    ExplicitWidth = 721
  end
  inherited Panel1: TPanel
    Width = 739
    Height = 65
    BevelKind = bkFlat
    Color = clSkyBlue
    ParentBackground = False
    ExplicitWidth = 739
    ExplicitHeight = 65
    DesignSize = (
      735
      61)
    inherited Image1: TImage
      Left = 681
      ExplicitLeft = 699
    end
    inherited lblTopic0: TLabel
      Left = 471
      Top = 9
      Width = 190
      Caption = #1583#1585#1740#1575#1601#1578' '#1601#1585#1605' '#1607#1575#1740' '#1582#1586#1575#1606#1607' '#1583#1575#1585#1740' '#1575#1586' Excel'
      ExplicitLeft = 489
      ExplicitTop = 9
      ExplicitWidth = 190
    end
    inherited lblTopic1: TLabel
      Left = 408
      Top = 26
      Width = 253
      Height = 26
      Caption = 
        #1602#1576#1604' '#1575#1586' '#1601#1585#1575#1582#1608#1575#1606#1740#1548' '#1601#1575#1740#1604' '#1575#1705#1587#1604' '#1585#1608#1740' '#1601#1585#1605#1607#1575' '#1605#1585#1578#1576' '#1588#1608#1583#13#10#1588#1605#1575#1585#1607' '#1601#1585#1605' '#1608' '#1705#1583' '#1605#1588 +
        #1578#1585#1740'/'#1589#1606#1583#1608#1602#1583#1575#1585' '#1608' '#1578#1575#1585#1740#1582' '#1590#1585#1608#1585#1740' '#1575#1587#1578
      Font.Color = clMaroon
      ParentFont = False
      ExplicitLeft = 416
      ExplicitTop = 26
      ExplicitWidth = 253
      ExplicitHeight = 26
    end
    object Label6: TLabel
      AlignWithMargins = True
      Left = 235
      Top = 36
      Width = 70
      Height = 24
      Margins.Top = 35
      Margins.Bottom = 0
      Align = alLeft
      Caption = #1575#1606#1578#1582#1575#1576' Sheet'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitHeight = 13
    end
    object cmbSheet: TComboBox
      AlignWithMargins = True
      Left = 4
      Top = 33
      Width = 225
      Height = 21
      Margins.Top = 32
      Align = alLeft
      Style = csDropDownList
      TabOrder = 0
      OnChange = cmbSheetChange
    end
  end
  inherited pnlDown: TPanel
    Top = 618
    Width = 739
    ExplicitTop = 574
    ExplicitWidth = 739
    object btnImportExcel: TSpeedButton [0]
      AlignWithMargins = True
      Left = 633
      Top = 4
      Width = 102
      Height = 29
      Action = actOpen
      Align = alRight
      ExplicitLeft = 364
    end
    object btnModify: TSpeedButton [1]
      AlignWithMargins = True
      Left = 525
      Top = 4
      Width = 102
      Height = 29
      Action = actMove
      Align = alRight
      ExplicitLeft = 364
    end
    object lblCount: TLabel [2]
      AlignWithMargins = True
      Left = 511
      Top = 9
      Width = 8
      Height = 24
      Margins.Top = 8
      Align = alRight
      Caption = '0'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitHeight = 16
    end
    inherited btnClose: TBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 4
      Height = 29
      Align = alLeft
      ExplicitLeft = 4
      ExplicitTop = 4
      ExplicitHeight = 29
    end
  end
  object ProgressBar1: TProgressBar [3]
    Left = 0
    Top = 601
    Width = 739
    Height = 17
    Align = alBottom
    Max = 1
    Step = 1
    TabOrder = 2
    ExplicitTop = 557
  end
  object PageControl1: TPageControl [4]
    Left = 0
    Top = 65
    Width = 739
    Height = 487
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 3
    ExplicitHeight = 492
    object TabSheet1: TTabSheet
      Caption = #1578#1606#1592#1740#1605#1575#1578' '#1583#1585#1740#1575#1601#1578
      ExplicitHeight = 464
      object Splitter1: TSplitter
        Left = 0
        Top = 304
        Width = 731
        Height = 3
        Cursor = crVSplit
        Align = alTop
        ExplicitLeft = -13
        ExplicitTop = 295
      end
      object Splitter2: TSplitter
        Left = 0
        Top = 456
        Width = 731
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        ExplicitTop = 445
      end
      object grpMaster: TGroupBox
        Left = 0
        Top = 0
        Width = 731
        Height = 304
        Align = alTop
        Caption = #1575#1591#1604#1575#1593#1575#1578' '#1705#1604#1740' '#1601#1585#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Panel4: TPanel
          Left = 223
          Top = 65
          Width = 275
          Height = 237
          Align = alClient
          BevelInner = bvLowered
          BevelKind = bkFlat
          TabOrder = 0
          object Label9: TLabel
            Left = 2
            Top = 2
            Width = 267
            Height = 13
            Align = alTop
            Alignment = taCenter
            Caption = #1587#1578#1608#1606#1607#1575#1610' '#1601#1575#1610#1604' Excel'
            Color = 12615680
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
            ExplicitWidth = 105
          end
          object lstExcel: TListBox
            Left = 2
            Top = 15
            Width = 267
            Height = 216
            Align = alClient
            Color = 15856624
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemHeight = 13
            ParentFont = False
            TabOrder = 0
          end
        end
        object Panel6: TPanel
          Left = 2
          Top = 48
          Width = 727
          Height = 17
          Margins.Top = 0
          Margins.Bottom = 0
          Align = alTop
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 1
          object chkSlash: TCheckBox
            Left = 591
            Top = 0
            Width = 136
            Height = 17
            Align = alRight
            Caption = #1575#1590#1575#1601#1607' '#1705#1585#1583#1606' '#171'/'#187' '#1576#1607' '#1578#1575#1585#1740#1582
            Font.Charset = ARABIC_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
        end
        object pnlItems: TPanel
          Left = 2
          Top = 65
          Width = 221
          Height = 237
          Align = alLeft
          BevelInner = bvLowered
          BevelKind = bkFlat
          TabOrder = 2
          object Label4: TLabel
            Left = 2
            Top = 2
            Width = 213
            Height = 13
            Align = alTop
            Alignment = taCenter
            Caption = #1587#1578#1608#1606#1607#1575#1610' '#1585#1740#1586' '#1601#1585#1605
            Color = 12615680
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
            ExplicitWidth = 87
          end
          object lstQryDetails: TListBox
            Left = 2
            Top = 15
            Width = 213
            Height = 216
            Align = alClient
            Color = 13431799
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemHeight = 13
            ParentFont = False
            TabOrder = 0
          end
        end
        object pnlForm: TPanel
          Left = 498
          Top = 65
          Width = 231
          Height = 237
          Align = alRight
          BevelInner = bvLowered
          BevelKind = bkFlat
          TabOrder = 3
          object Label10: TLabel
            Left = 2
            Top = 2
            Width = 223
            Height = 13
            Align = alTop
            Alignment = taCenter
            Caption = #1587#1578#1608#1606#1607#1575#1610' '#1601#1585#1605
            Color = 12615680
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
            ExplicitWidth = 69
          end
          object lstQryMaster: TListBox
            Left = 2
            Top = 15
            Width = 223
            Height = 216
            Align = alClient
            Color = 13431799
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemHeight = 13
            ParentFont = False
            TabOrder = 0
          end
        end
        object Panel2: TPanel
          Left = 2
          Top = 16
          Width = 727
          Height = 32
          Margins.Top = 0
          Margins.Bottom = 0
          Align = alTop
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 4
          object Label1: TLabel
            AlignWithMargins = True
            Left = 684
            Top = 3
            Width = 40
            Height = 26
            Align = alRight
            Caption = #1606#1608#1593' '#1601#1585#1605
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitHeight = 13
          end
          object Label2: TLabel
            AlignWithMargins = True
            Left = 216
            Top = 3
            Width = 130
            Height = 26
            Align = alLeft
            Caption = #1705#1583' '#1605#1588#1578#1585#1740' 1 /'#1589#1606#1583#1608#1602' '#1583#1575#1585
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitHeight = 13
          end
          object cmbCustomer: TComboBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 207
            Height = 22
            Align = alLeft
            Style = csDropDownList
            TabOrder = 0
          end
          object cmbFormType: TComboBox
            AlignWithMargins = True
            Left = 352
            Top = 3
            Width = 326
            Height = 22
            Align = alClient
            Style = csDropDownList
            TabOrder = 1
            OnChange = cmbFormTypeChange
          end
        end
      end
      object pnlResut: TPanel
        Left = 0
        Top = 307
        Width = 731
        Height = 149
        Align = alClient
        TabOrder = 1
        ExplicitHeight = 157
        object pnlMasterResult: TPanel
          Left = 373
          Top = 25
          Width = 357
          Height = 123
          Align = alClient
          TabOrder = 0
          ExplicitHeight = 131
          object Label11: TLabel
            Left = 1
            Top = 1
            Width = 355
            Height = 13
            Margins.Bottom = 0
            Align = alTop
            Alignment = taCenter
            Caption = #1587#1578#1608#1606' '#1607#1575#1740' '#1575#1606#1578#1582#1575#1576' '#1588#1583#1607' '#1705#1604
            Color = 12615680
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
            ExplicitWidth = 140
          end
          object lstResultMaster: TListBox
            Left = 1
            Top = 14
            Width = 355
            Height = 108
            Align = alClient
            BevelInner = bvLowered
            BevelKind = bkFlat
            BevelOuter = bvRaised
            Ctl3D = False
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemHeight = 13
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            ExplicitHeight = 116
          end
        end
        object pnlDetailsResult: TPanel
          Left = 1
          Top = 25
          Width = 372
          Height = 123
          Align = alLeft
          TabOrder = 1
          ExplicitHeight = 131
          object Label5: TLabel
            Left = 1
            Top = 1
            Width = 370
            Height = 13
            Margins.Bottom = 0
            Align = alTop
            Alignment = taCenter
            Caption = #1570#1740#1578#1605' '#1607#1575#1740' '#1575#1606#1578#1582#1575#1576' '#1588#1583#1607
            Color = 12615680
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
            ExplicitWidth = 111
          end
          object lstResultDetails: TListBox
            Left = 1
            Top = 14
            Width = 370
            Height = 108
            Align = alClient
            BevelInner = bvLowered
            BevelKind = bkFlat
            BevelOuter = bvRaised
            Ctl3D = False
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemHeight = 13
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            ExplicitHeight = 116
          end
        end
        object Panel7: TPanel
          AlignWithMargins = True
          Left = 4
          Top = 1
          Width = 723
          Height = 24
          Margins.Top = 0
          Margins.Bottom = 0
          Align = alTop
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 2
          object btnAddDetail: TBitBtn
            Left = 46
            Top = 0
            Width = 23
            Height = 24
            Align = alLeft
            Caption = ' '
            Glyph.Data = {
              36050000424D3605000000000000360400002800000010000000100000000100
              08000000000000010000E30E0000E30E0000000100000001000010630000006B
              0000086B00000073000008730000007B0000107B000000840000088400001084
              0000008C0000088C00000094000008940000009C0000089C000000A5000008A5
              000000AD000000B5000000BD000000C6000008C6000000CE000000D6000008D6
              000008630800087B0800107B080010840800008C0800088C0800009408001094
              0800009C080000A5080000AD080000B5080010BD080010C60800087B1000107B
              1000187B10001084100018841000088C1000188C1000109410001894100010D6
              100018D61000107B1800187B18001884180029841800108C1800188C1800218C
              18001094180018941800189C1800219C180010C6180018C6180018D61800187B
              210018842100189421002194210029A521001873290029AD290031DE290029E7
              290029843100298C3100398C310029D6310031D6310039AD390042A5420039DE
              420042DE42004AAD520052AD520052E752005AE75A0063AD630063E763006BEF
              63006B946B0073B56B006BDE6B0063E76B006BE76B0063EF6B007BB5730073B5
              7B007BDE7B007BB5840084BD84008CC69400A5E7A500CEEFBD00BDEFC600C6EF
              C600C6EFCE00CEEFCE00D6F7CE00D6E7D600DEE7D600D6EFD600DEEFD600CEE7
              DE00D6EFDE00DEEFDE00DEEFE700EFF7EF00F7F7F700FF00FF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00777777777777
              774F4F777777777777777777777777774F41464F77777777777777777777774F
              345757414F7777777777777777774F34574B4C57334F777777777777774F2957
              4105033657294F77777777774F2D57390507051B37572D4F7777774F35084407
              07070707074308384F774F393D0B0A1E1E1E1E0C0A0C0A3B3B4F2F120E0E1F0A
              0E0C200C0D0C0E210E4477777777131012121210241277777777777777772513
              13131313132577777777777777773F1414141414143F77777777777777775216
              1516161616527777777777777777554017171717405677777777777777775C58
              585D5E5859627777777777777777122221100F0E201277777777}
            Layout = blGlyphTop
            Margin = 1
            ParentShowHint = False
            ShowHint = True
            Spacing = 0
            TabOrder = 0
            OnClick = btnAddDetailClick
          end
          object btnAddLinkDetail: TBitBtn
            Left = 23
            Top = 0
            Width = 23
            Height = 24
            Align = alLeft
            Caption = ' '
            Glyph.Data = {
              36050000424D3605000000000000360400002800000010000000100000000100
              08000000000000010000230B0000230B00000001000000010000BF480000FF66
              0100FFB25F00FFAE6200FF00FF00000000000000000000000000000000000000
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
              0000000000000000000000000000000000000000000000000000040404040404
              0404040404040404040404040404040404000004040404040404040404040404
              0003010004040404040404040404040003030101000404040404040404040101
              0101000000000404040404040404040404010004040404040404040404040404
              0401000404040404040404040404040404010004040404040404040404040404
              0401000404040404040404040404040404010004040404040404040404040404
              0401000404000404040404040404040404010004000100040404040404040404
              0401000404000404040404040404040404040404040404040404040404040404
              0404040404040404040404040404040404040404040404040404}
            Layout = blGlyphTop
            Margin = 1
            ParentShowHint = False
            ShowHint = True
            Spacing = 0
            TabOrder = 1
            OnClick = btnAddLinkDetailClick
          end
          object btnRemoveDetail: TBitBtn
            Left = 0
            Top = 0
            Width = 23
            Height = 24
            Align = alLeft
            Caption = ' '
            Glyph.Data = {
              36050000424D3605000000000000360400002800000010000000100000000100
              08000000000000010000E30E0000E30E0000000100000001000010630000006B
              0000086B00000073000008730000007B0000107B000000840000088400001084
              0000008C0000088C00000094000008940000009C0000089C000000A5000008A5
              000000AD000000B5000000BD000000C6000008C6000000CE000000D6000008D6
              000008630800087B0800107B080010840800008C0800088C0800009408001094
              0800009C080000A5080000AD080000B5080010BD080010C60800087B1000107B
              1000187B10001084100018841000088C1000188C1000109410001894100010D6
              100018D61000107B1800187B18001884180029841800108C1800188C1800218C
              18001094180018941800189C1800219C180010C6180018C6180018D61800187B
              210018842100189421002194210029A521001873290029AD290031DE290029E7
              290029843100298C3100398C310029D6310031D6310039AD390042A5420039DE
              420042DE42004AAD520052AD520052E752005AE75A0063AD630063E763006BEF
              63006B946B0073B56B006BDE6B0063E76B006BE76B0063EF6B007BB5730073B5
              7B007BDE7B007BB5840084BD84008CC69400A5E7A500CEEFBD00BDEFC600C6EF
              C600C6EFCE00CEEFCE00D6F7CE00D6E7D600DEE7D600D6EFD600DEEFD600CEE7
              DE00D6EFDE00DEEFDE00DEEFE700EFF7EF00F7F7F700FF00FF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00777777771220
              0E0F1021221277777777777777776259585E5D58585C77777777777777775640
              1717171740557777777777777777521616161615165277777777777777773F14
              14141414143F7777777777777777251313131313132577777777777777771224
              10121212101377777777440E210E0C0D0C200C0E0A1F0E0E122F4F3B3B0A0C0A
              0C1E1E1E1E0A0B3D394F774F3808430707070707074408354F7777774F2D5737
              1B05070539572D4F77777777774F29573603054157294F777777777777774F33
              574C4B57344F7777777777777777774F415757344F7777777777777777777777
              4F46414F777777777777777777777777774F4F77777777777777}
            Layout = blGlyphTop
            Margin = 1
            ParentShowHint = False
            ShowHint = True
            Spacing = 0
            TabOrder = 2
            OnClick = btnRemoveDetailClick
          end
          object btnAddMaster: TBitBtn
            Left = 700
            Top = 0
            Width = 23
            Height = 24
            Align = alRight
            Caption = ' '
            Glyph.Data = {
              36050000424D3605000000000000360400002800000010000000100000000100
              08000000000000010000E30E0000E30E0000000100000001000010630000006B
              0000086B00000073000008730000007B0000107B000000840000088400001084
              0000008C0000088C00000094000008940000009C0000089C000000A5000008A5
              000000AD000000B5000000BD000000C6000008C6000000CE000000D6000008D6
              000008630800087B0800107B080010840800008C0800088C0800009408001094
              0800009C080000A5080000AD080000B5080010BD080010C60800087B1000107B
              1000187B10001084100018841000088C1000188C1000109410001894100010D6
              100018D61000107B1800187B18001884180029841800108C1800188C1800218C
              18001094180018941800189C1800219C180010C6180018C6180018D61800187B
              210018842100189421002194210029A521001873290029AD290031DE290029E7
              290029843100298C3100398C310029D6310031D6310039AD390042A5420039DE
              420042DE42004AAD520052AD520052E752005AE75A0063AD630063E763006BEF
              63006B946B0073B56B006BDE6B0063E76B006BE76B0063EF6B007BB5730073B5
              7B007BDE7B007BB5840084BD84008CC69400A5E7A500CEEFBD00BDEFC600C6EF
              C600C6EFCE00CEEFCE00D6F7CE00D6E7D600DEE7D600D6EFD600DEEFD600CEE7
              DE00D6EFDE00DEEFDE00DEEFE700EFF7EF00F7F7F700FF00FF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00777777777777
              774F4F777777777777777777777777774F41464F77777777777777777777774F
              345757414F7777777777777777774F34574B4C57334F777777777777774F2957
              4105033657294F77777777774F2D57390507051B37572D4F7777774F35084407
              07070707074308384F774F393D0B0A1E1E1E1E0C0A0C0A3B3B4F2F120E0E1F0A
              0E0C200C0D0C0E210E4477777777131012121210241277777777777777772513
              13131313132577777777777777773F1414141414143F77777777777777775216
              1516161616527777777777777777554017171717405677777777777777775C58
              585D5E5859627777777777777777122221100F0E201277777777}
            Layout = blGlyphTop
            Margin = 1
            ParentShowHint = False
            ShowHint = True
            Spacing = 0
            TabOrder = 3
            OnClick = btnAddMasterClick
          end
          object btnAddLinkMaster: TBitBtn
            Left = 677
            Top = 0
            Width = 23
            Height = 24
            Align = alRight
            Caption = ' '
            Glyph.Data = {
              36050000424D3605000000000000360400002800000010000000100000000100
              08000000000000010000230B0000230B00000001000000010000BF480000FF66
              0100FFB25F00FFAE6200FF00FF00000000000000000000000000000000000000
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
              0000000000000000000000000000000000000000000000000000040404040404
              0404040404040404040404040404040404000004040404040404040404040404
              0003010004040404040404040404040003030101000404040404040404040101
              0101000000000404040404040404040404010004040404040404040404040404
              0401000404040404040404040404040404010004040404040404040404040404
              0401000404040404040404040404040404010004040404040404040404040404
              0401000404000404040404040404040404010004000100040404040404040404
              0401000404000404040404040404040404040404040404040404040404040404
              0404040404040404040404040404040404040404040404040404}
            Layout = blGlyphTop
            Margin = 1
            ParentShowHint = False
            ShowHint = True
            Spacing = 0
            TabOrder = 4
            OnClick = btnAddLinkMasterClick
          end
          object btnRemoveMaster: TBitBtn
            Left = 654
            Top = 0
            Width = 23
            Height = 24
            Align = alRight
            Caption = ' '
            Glyph.Data = {
              36050000424D3605000000000000360400002800000010000000100000000100
              08000000000000010000E30E0000E30E0000000100000001000010630000006B
              0000086B00000073000008730000007B0000107B000000840000088400001084
              0000008C0000088C00000094000008940000009C0000089C000000A5000008A5
              000000AD000000B5000000BD000000C6000008C6000000CE000000D6000008D6
              000008630800087B0800107B080010840800008C0800088C0800009408001094
              0800009C080000A5080000AD080000B5080010BD080010C60800087B1000107B
              1000187B10001084100018841000088C1000188C1000109410001894100010D6
              100018D61000107B1800187B18001884180029841800108C1800188C1800218C
              18001094180018941800189C1800219C180010C6180018C6180018D61800187B
              210018842100189421002194210029A521001873290029AD290031DE290029E7
              290029843100298C3100398C310029D6310031D6310039AD390042A5420039DE
              420042DE42004AAD520052AD520052E752005AE75A0063AD630063E763006BEF
              63006B946B0073B56B006BDE6B0063E76B006BE76B0063EF6B007BB5730073B5
              7B007BDE7B007BB5840084BD84008CC69400A5E7A500CEEFBD00BDEFC600C6EF
              C600C6EFCE00CEEFCE00D6F7CE00D6E7D600DEE7D600D6EFD600DEEFD600CEE7
              DE00D6EFDE00DEEFDE00DEEFE700EFF7EF00F7F7F700FF00FF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00777777771220
              0E0F1021221277777777777777776259585E5D58585C77777777777777775640
              1717171740557777777777777777521616161615165277777777777777773F14
              14141414143F7777777777777777251313131313132577777777777777771224
              10121212101377777777440E210E0C0D0C200C0E0A1F0E0E122F4F3B3B0A0C0A
              0C1E1E1E1E0A0B3D394F774F3808430707070707074408354F7777774F2D5737
              1B05070539572D4F77777777774F29573603054157294F777777777777774F33
              574C4B57344F7777777777777777774F415757344F7777777777777777777777
              4F46414F777777777777777777777777774F4F77777777777777}
            Layout = blGlyphTop
            Margin = 1
            ParentShowHint = False
            ShowHint = True
            Spacing = 0
            TabOrder = 5
            OnClick = btnRemoveMasterClick
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Excel'
      ImageIndex = 1
      ExplicitHeight = 485
      object grdExcel: TCedarDbgrid
        Left = 0
        Top = 0
        Width = 731
        Height = 459
        Align = alClient
        Color = clCream
        DataSource = srcExcel
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
        ActiveSearchPanel = False
        SelectFooterIndex = 0
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object Memo1: TMemo [5]
    Left = 0
    Top = 552
    Width = 739
    Height = 49
    Align = alBottom
    Color = clInactiveCaption
    Lines.Strings = (
      'Memo1')
    TabOrder = 4
    ExplicitLeft = -110
    ExplicitTop = 480
    ExplicitWidth = 849
  end
  inherited ActionList1: TActionList
    Left = 384
    object actOpen: TAction
      Caption = #1582#1608#1575#1606#1583#1606' '#1601#1575#1740#1604' Excel'
      OnExecute = actOpenExecute
    end
    object actMove: TAction
      Caption = #1575#1606#1578#1602#1575#1604' '#1575#1591#1604#1575#1593#1575#1578
      OnExecute = actMoveExecute
    end
  end
  object qryExcel: TADOQuery
    CursorType = ctStatic
    AfterOpen = qryExcelAfterOpen
    Parameters = <>
    SQL.Strings = (
      'select * from [a$]')
    Left = 400
    Top = 185
  end
  object qryForms: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT  *'
      'FROM Forms'
      'where  0=1')
    Left = 264
    Top = 192
    object qryFormsFormID: TIntegerField
      FieldName = 'FormID'
    end
    object qryFormsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryFormsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryFormsFormType: TWordField
      FieldName = 'FormType'
    end
    object qryFormsFormNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'FormNumber'
    end
    object qryFormsFormDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1601#1585#1605
      FieldName = 'FormDate'
      EditMask = '!9999/99/99;1;_'
      FixedChar = True
      Size = 10
    end
    object qryFormsCustomerID1: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583#1605#1588#1578#1585#1610' 1'
      FieldName = 'CustomerID1'
    end
    object qryFormsCustomerID2: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583#1605#1588#1578#1585#1610' 2'
      FieldName = 'CustomerID2'
    end
    object qryFormsAmount: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1603#1604
      FieldName = 'Amount'
      currency = True
      Precision = 19
    end
    object qryFormsBudgetCode: TIntegerField
      DisplayLabel = #1603#1583' '#1576#1608#1583#1580#1607
      FieldName = 'BudgetCode'
    end
    object qryFormsAidInfoDate: TStringField
      FieldName = 'AidInfoDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryFormsAidInfoNo: TStringField
      FieldName = 'AidInfoNo'
      Size = 40
    end
    object qryFormsFomNote: TStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' '#1601#1585#1605
      FieldName = 'FomNote'
      Size = 255
    end
    object qryFormsFormState: TWordField
      FieldName = 'FormState'
    end
    object qryFormsFirstUser: TStringField
      FieldName = 'FirstUser'
      Size = 50
    end
    object qryFormsLastUser: TStringField
      FieldName = 'LastUser'
      Size = 50
    end
    object qryFormsModifyDate: TDateTimeField
      FieldName = 'ModifyDate'
    end
    object qryFormsPayTypes: TIntegerField
      FieldName = 'PayTypes'
    end
    object qryFormsTopicTypes: TIntegerField
      FieldName = 'TopicTypes'
    end
    object qryFormsSellsMethod: TIntegerField
      FieldName = 'SellsMethod'
    end
    object qryFormsSellsEmporium: TIntegerField
      FieldName = 'SellsEmporium'
    end
    object qryFormsDocNo: TIntegerField
      FieldName = 'DocNo'
    end
    object qryFormsDefaultDate: TStringField
      FieldName = 'DefaultDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryFormsCustomerID3: TIntegerField
      FieldName = 'CustomerID3'
    end
    object qryFormsCustomerID4: TIntegerField
      FieldName = 'CustomerID4'
    end
    object qryFormsAidFormType: TWordField
      FieldName = 'AidFormType'
    end
    object qryFormsRelatedRecipts: TStringField
      FieldName = 'RelatedRecipts'
      FixedChar = True
      Size = 27
    end
    object qryFormsCashCheckFormID: TIntegerField
      FieldName = 'CashCheckFormID'
    end
    object qryFormsGuaranteesFormID: TIntegerField
      FieldName = 'GuaranteesFormID'
    end
    object qryFormsTopicCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576#1583#1575#1585#1610' '
      FieldName = 'TopicCode'
    end
    object qryFormsDetailCode: TStringField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610' '#1581#1587#1575#1576#1583#1575#1585#1610
      FieldName = 'DetailCode'
      EditMask = '999999999999'
      Size = 12
    end
    object qryFormsCTopicCode: TStringField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'#39' '#1581#1587#1575#1576#1583#1575#1585#1610'  '
      FieldName = 'CTopicCode'
      EditMask = '999999999999'
      Size = 12
    end
    object qryFormsCTopicCode2: TStringField
      FieldName = 'CTopicCode2'
      EditMask = '999999999999'
      Size = 12
    end
    object qryFormsCTopicCode3: TStringField
      FieldName = 'CTopicCode3'
      EditMask = '999999999999'
      Size = 12
    end
    object qryFormsDefaultDuration: TSmallintField
      FieldName = 'DefaultDuration'
    end
    object qryFormsOperatorID: TIntegerField
      FieldName = 'OperatorID'
    end
    object qryFormsDocDate: TStringField
      FieldName = 'DocDate'
      FixedChar = True
      Size = 10
    end
    object qryFormsReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryFormsPO: TStringField
      FieldName = 'PO'
      Size = 30
    end
  end
  object qryFormItems: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT  * '
      'FROM FormItems'
      'where  0=1')
    Left = 352
    Top = 256
    object qryFormItemsFormItemID: TIntegerField
      Tag = 3
      FieldName = 'FormItemID'
      ImportedConstraint = '0'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryFormItemsFormID: TIntegerField
      Tag = 3
      DisplayLabel = 'ID '#1605#1585#1576#1608#1591' '#1576#1607' Master'
      FieldName = 'FormID'
      ImportedConstraint = '0'
    end
    object qryFormItemsCheckNumber: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1670#1603
      FieldName = 'CheckNumber'
      ImportedConstraint = '0'
      EditMask = '99999999999999999999'
      Size = 20
    end
    object qryFormItemsRow: TIntegerField
      Tag = 3
      DisplayLabel = #1585#1583#1610#1601
      FieldName = 'Row'
      ImportedConstraint = '0'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryFormItemsCheckDate: TStringField
      Tag = 3
      DisplayLabel = #1587#1585#1585#1587#1610#1583' '#1670#1603
      FieldName = 'CheckDate'
      ImportedConstraint = '0'
      Required = True
      EditMask = '9999/99/99'
      Size = 10
    end
    object qryFormItemsCheckType: TWordField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1670#1603
      FieldName = 'CheckType'
      ImportedConstraint = '0'
    end
    object qryFormItemsServerID: TIntegerField
      Tag = 3
      FieldName = 'ServerID'
    end
    object qryFormItemsYearID: TIntegerField
      Tag = 3
      FieldName = 'YearID'
    end
    object qryFormItemsItemAmount: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'ItemAmount'
      ImportedConstraint = '0'
      currency = True
      Precision = 19
    end
    object qryFormItemsItemNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'ItemNote'
      ImportedConstraint = '0'
      Size = 255
    end
    object qryFormItemsBankName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1576#1575#1606#1603
      FieldName = 'BankName'
      ImportedConstraint = '0'
    end
    object qryFormItemsCity: TStringField
      Tag = 3
      DisplayLabel = #1588#1607#1585
      FieldName = 'City'
      ImportedConstraint = '0'
      FixedChar = True
    end
    object qryFormItemspreFormItemID: TIntegerField
      Tag = 3
      DisplayLabel = 'ID '#1587#1591#1581' '#1602#1576#1604#1610
      FieldName = 'preFormItemID'
      ImportedConstraint = '0'
    end
    object qryFormItemsCustomerID2: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1588#1578#1585#1610' '#1580#1586#1569
      FieldName = 'CustomerID2'
      ImportedConstraint = '0'
    end
    object qryFormItemsBudgetCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1576#1608#1583#1580#1607' '#1575#1610
      FieldName = 'BudgetCode'
      ImportedConstraint = '0'
    end
    object qryFormItemsAccountNumber: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1588#1593#1576#1607
      FieldName = 'AccountNumber'
      ImportedConstraint = '0'
      Size = 25
    end
    object qryFormItemsAccountNumberNew: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607#8207#1581#1587#1575#1576
      FieldName = 'AccountNumberNew'
      Size = 60
    end
    object qryFormItemsProjectID: TIntegerField
      Tag = 3
      FieldName = 'ProjectID'
    end
    object qryFormItemsAidInfoNo: TStringField
      Tag = 3
      FieldName = 'AidInfoNo'
      Size = 40
    end
    object qryFormItemsAidInfoDate: TStringField
      Tag = 3
      FieldName = 'AidInfoDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryFormItemsFirstUser: TStringField
      Tag = 3
      FieldName = 'FirstUser'
      Size = 50
    end
    object qryFormItemsLastUser: TStringField
      Tag = 3
      FieldName = 'LastUser'
      Size = 50
    end
    object qryFormItemsCheckFor: TStringField
      Tag = 3
      DisplayLabel = #1583#1585' '#1608#1580#1607
      FieldName = 'CheckFor'
      Size = 255
    end
    object qryFormItemsAmountArz: TFloatField
      Tag = 3
      DisplayLabel = #1578#1593#1583#1575#1583' '#1575#1585#1586
      FieldName = 'AmountArz'
    end
    object qryFormItemsCashWage: TBCDField
      Tag = 3
      FieldName = 'CashWage'
      currency = True
      Precision = 19
    end
    object qryFormItemsTopicTypesI: TIntegerField
      FieldName = 'TopicTypesI'
    end
    object qryFormItemsArzTypeID: TIntegerField
      FieldName = 'ArzTypeID'
    end
    object qryFormItemsArzAmount: TBCDField
      FieldName = 'ArzAmount'
      Precision = 19
    end
    object qryFormItemsArzRate: TFloatField
      FieldName = 'ArzRate'
    end
    object qryFormItemsCheckState: TWordField
      FieldName = 'CheckState'
    end
    object qryFormItemsAccState: TWordField
      FieldName = 'AccState'
    end
    object qryFormItemsItemState: TWordField
      FieldName = 'ItemState'
    end
    object qryFormItemsItemStateComment: TWideStringField
      FieldName = 'ItemStateComment'
      Size = 200
    end
    object qryFormItemsSeverableAmount: TWordField
      FieldName = 'SeverableAmount'
    end
    object qryFormItemsRelatedID: TIntegerField
      FieldName = 'RelatedID'
    end
    object qryFormItemsVAT: TBCDField
      FieldName = 'VAT'
      Precision = 19
    end
    object qryFormItemsAccountNumberNew1: TStringField
      FieldName = 'AccountNumberNew1'
      Size = 60
    end
    object qryFormItemsTopicCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576#1583#1575#1585#1610' '
      FieldName = 'TopicCode'
    end
    object qryFormItemsDetailCode: TStringField
      Tag = 3
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610' '#1581#1587#1575#1576#1583#1575#1585#1610
      FieldName = 'DetailCode'
      ImportedConstraint = '0'
      EditMask = '999999999999'
      Size = 12
    end
    object qryFormItemsCTopicCode: TStringField
      Tag = 3
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'#39' '#1581#1587#1575#1576#1583#1575#1585#1610
      FieldName = 'CTopicCode'
      ImportedConstraint = '0'
      EditMask = '999999999999'
      Size = 12
    end
    object qryFormItemsCTopicCode2: TStringField
      Tag = 3
      FieldName = 'CTopicCode2'
      EditMask = '999999999999'
      Size = 12
    end
    object qryFormItemsCTopicCode3: TStringField
      FieldName = 'CTopicCode3'
      EditMask = '999999999999'
      Size = 12
    end
    object qryFormItemsCheckCounter: TIntegerField
      Tag = 3
      DisplayLabel = #1662#1588#1578' '#1606#1605#1585#1607
      FieldName = 'CheckCounter'
    end
    object qryFormItemsLineCorrosion: TBooleanField
      FieldName = 'LineCorrosion'
    end
    object qryFormItemsPO: TStringField
      FieldName = 'PO'
      Size = 30
    end
  end
  object qryExcelDetails: TADOQuery
    AfterOpen = qryExcelDetailsAfterOpen
    Parameters = <>
    Left = 552
    Top = 192
  end
  object srcExcel: TDataSource
    DataSet = qryExcel
    Left = 156
    Top = 265
  end
end

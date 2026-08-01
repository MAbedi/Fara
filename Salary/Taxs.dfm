inherited TaxsF: TTaxsF
  Caption = 'TaxsF'
  ClientHeight = 524
  ClientWidth = 1075
  ExplicitWidth = 1081
  ExplicitHeight = 553
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 467
    Width = 1075
    ExplicitTop = 467
    ExplicitWidth = 1075
  end
  inherited Panel1: TPanel
    Width = 1075
    ExplicitWidth = 1075
    inherited Image1: TImage
      Left = 1021
      ExplicitLeft = 1021
    end
    inherited lblTopic0: TLabel
      Left = 949
      ExplicitLeft = 949
    end
    inherited lblTopic1: TLabel
      Left = 928
      ExplicitLeft = 928
    end
  end
  inherited pnlDown: TPanel
    Top = 487
    Width = 1075
    ExplicitTop = 487
    ExplicitWidth = 1075
    inherited btnClose: TBitBtn
      AlignWithMargins = True
      Left = 2
      Top = 7
      Height = 23
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Align = alLeft
      ExplicitLeft = 2
      ExplicitTop = 7
      ExplicitHeight = 23
    end
    object newPanel: TPanel
      Left = 766
      Top = 1
      Width = 308
      Height = 35
      Align = alRight
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 1
      object BitBtn3: TBitBtn
        AlignWithMargins = True
        Left = 232
        Top = 6
        Width = 75
        Height = 23
        Margins.Left = 1
        Margins.Top = 6
        Margins.Right = 1
        Margins.Bottom = 6
        Action = DataSetInsert1
        Align = alRight
        Caption = #1580#1583#1610#1583
        TabOrder = 2
      end
      object BitBtn4: TBitBtn
        AlignWithMargins = True
        Left = 155
        Top = 6
        Width = 75
        Height = 23
        Margins.Left = 1
        Margins.Top = 6
        Margins.Right = 1
        Margins.Bottom = 6
        Action = DataSetEdit1
        Align = alRight
        Caption = #1608#1740#1585#1575#1740#1588
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        AlignWithMargins = True
        Left = 78
        Top = 6
        Width = 75
        Height = 23
        Margins.Left = 1
        Margins.Top = 6
        Margins.Right = 1
        Margins.Bottom = 6
        Action = DataSetDelete1_
        Align = alRight
        Caption = #1581#1584#1601
        TabOrder = 0
      end
      object BitBtn2: TBitBtn
        AlignWithMargins = True
        Left = 1
        Top = 6
        Width = 75
        Height = 23
        Margins.Left = 1
        Margins.Top = 6
        Margins.Right = 1
        Margins.Bottom = 6
        Action = actCopyTax
        Align = alRight
        Caption = #1705#1662#1740' '#1580#1583#1608#1604
        TabOrder = 3
      end
    end
    object okPanel: TPanel
      Left = 535
      Top = 1
      Width = 231
      Height = 35
      Align = alRight
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 2
      object BitBtn7: TBitBtn
        AlignWithMargins = True
        Left = 155
        Top = 6
        Width = 75
        Height = 23
        Margins.Left = 1
        Margins.Top = 6
        Margins.Right = 1
        Margins.Bottom = 6
        Action = DataSetPost1
        Align = alRight
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
      object btnExcel: TBitBtn
        AlignWithMargins = True
        Left = 1
        Top = 6
        Width = 75
        Height = 23
        Margins.Left = 1
        Margins.Top = 6
        Margins.Right = 1
        Margins.Bottom = 6
        Action = actGetExcel
        Align = alRight
        Caption = #1582#1608#1575#1606#1583#1606' '#1575#1586' Excel '
        TabOrder = 1
      end
      object BitBtn8: TBitBtn
        AlignWithMargins = True
        Left = 78
        Top = 6
        Width = 75
        Height = 23
        Margins.Left = 1
        Margins.Top = 6
        Margins.Right = 1
        Margins.Bottom = 6
        Action = DataSetCancel1
        Align = alRight
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
        TabOrder = 2
      end
    end
    object DBNavigator1: TDBNavigator
      AlignWithMargins = True
      Left = 389
      Top = 4
      Width = 143
      Height = 29
      DataSource = srcTaxs
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alClient
      Flat = True
      TabOrder = 3
    end
    object BitBtn10: TBitBtn
      AlignWithMargins = True
      Left = 310
      Top = 7
      Width = 75
      Height = 23
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actPrint
      Align = alLeft
      Caption = #1670#1575#1662
      TabOrder = 4
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 233
      Top = 7
      Width = 75
      Height = 23
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actSendToExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      TabOrder = 5
    end
    object BitBtn12: TBitBtn
      AlignWithMargins = True
      Left = 156
      Top = 7
      Width = 75
      Height = 23
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actSearch_
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 6
    end
    object BitBtn9: TBitBtn
      AlignWithMargins = True
      Left = 79
      Top = 7
      Width = 75
      Height = 23
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006A00
        00006A0000006A000000FF00FF006A0000006A0000006A000000FF00FF00FF00
        FF00FF00FF00FF00FF0000580300FF00FF00FF00FF00FF00FF00FF00FF006A6A
        6A006A000000FF00FF00FF00FF00FF00FF00980000006A6A6A00FF00FF00FF00
        FF00FF00FF00005803006AFF6A0000580300FF00FF00FF00FF00FF00FF00FF00
        FF006A6A6A006A0000006A0000006A0000006A000000FF00FF00FF00FF00FF00
        FF00FF00FF006AFF6A006AB650000084000000580300FF00FF00FF00FF00FF00
        FF00FF00FF006A000000FF00FF00980000006A000000FF00FF00FF00FF00FF00
        FF00FF00FF006AFF6A006AB650000084000000580300FF00FF00FF00FF00FF00
        FF00FF00FF00980000006A0000006A000000FF00FF00FF00FF00FF00FF000058
        0300005803000058030000580300005803000058030000580300FF00FF00FF00
        FF00FF00FF006A6A6A006A0000006A6A6A00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0098000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF000000
        6A0000006A0000006A0000006A0000006A0000006A00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF000000
        6A0000006A00FF00FF00FF00FF00FF00FF000000B600FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF006A6A6A0000006A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000006A0000006A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF006A6A6A0000006A00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF000000
        6A0000006A00FF00FF00FF00FF0000006A0000006A00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF001100
        7B0011007B0011007B0011007B0011007B0011007B00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00}
      TabOrder = 7
    end
  end
  object PageControl1: TPageControl [3]
    Left = 0
    Top = 73
    Width = 1075
    Height = 414
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 2
    OnChanging = PageControl1Changing
    object TabSheet1: TTabSheet
      Caption = #1580#1583#1608#1604' '#1605#1575#1604#1740#1575#1578#1740
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1067
        Height = 27
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object SpeedButton5: TSpeedButton
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 23
          Height = 21
          Align = alLeft
          Caption = '...'
          ExplicitTop = 0
        end
        object Label1: TLabel
          AlignWithMargins = True
          Left = 172
          Top = 3
          Width = 77
          Height = 13
          Align = alLeft
          Alignment = taRightJustify
          Caption = #1580#1587#1578#1580#1608#1740' '#1587#1585#1740#1575#1604
        end
        object edtTaxID: TDBEdit
          AlignWithMargins = True
          Left = 32
          Top = 3
          Width = 134
          Height = 19
          Align = alLeft
          Ctl3D = False
          DataField = 'TaxID'
          DataSource = srcTaxs
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
      end
      object DBGrid1: TCedarDbgrid
        Tag = 111
        Left = 0
        Top = 177
        Width = 1067
        Height = 186
        Align = alClient
        Color = clCream
        DataSource = srcTaxsItems
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
        TabOrder = 1
        OnEnter = DBGrid1Enter
        OnKeyPress = DBGrid1KeyPress
        ActiveSearchPanel = False
        SelectFooterIndex = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'RowNo'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'RevenuePrice'
            Footers = <>
            Width = 147
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FixedPrice'
            Footers = <>
            Width = 244
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Cofficient'
            Footers = <>
            Width = 155
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 27
        Width = 1067
        Height = 55
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        DesignSize = (
          1067
          55)
        object Label2: TLabel
          Left = 953
          Top = 33
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1587#1575#1604' '#1575#1580#1585#1575
          ExplicitLeft = 778
        end
        object Label3: TLabel
          Left = 172
          Top = 34
          Width = 47
          Height = 13
          Alignment = taRightJustify
          Caption = #1705#1583' '#1605#1575#1604#1740#1575#1578#1740
        end
        object Label4: TLabel
          Left = 777
          Top = 35
          Width = 35
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1605#1575#1607' '#1575#1580#1585#1575
          ExplicitLeft = 602
        end
        object Label32: TLabel
          Left = 953
          Top = 5
          Width = 46
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1606#1608#1593' '#1605#1575#1604#1610#1575#1578
          ExplicitLeft = 778
        end
        object Label7: TLabel
          Left = 178
          Top = 6
          Width = 34
          Height = 13
          Alignment = taRightJustify
          Caption = #1608#1590#1593#1740#1578
        end
        object dbtxtStatuss: TDBText
          Left = 77
          Top = 6
          Width = 89
          Height = 18
          AutoSize = True
          DataField = 'Statuss'
          DataSource = srcTaxs
          Font.Charset = ARABIC_CHARSET
          Font.Color = 8684799
          Font.Height = -15
          Font.Name = 'Jadid'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object edtYearRun: TDBEdit
          Left = 817
          Top = 30
          Width = 134
          Height = 19
          Anchors = [akTop, akRight]
          Color = 13431799
          Ctl3D = False
          DataField = 'YearRun'
          DataSource = srcTaxs
          ParentCtl3D = False
          TabOrder = 0
        end
        object edtTFN_CODE: TDBEdit
          Left = 32
          Top = 30
          Width = 134
          Height = 21
          AutoSize = False
          DataField = 'TFN_CODE'
          DataSource = srcTaxs
          TabOrder = 1
        end
        object edtMonthRun: TDBEdit
          Left = 640
          Top = 31
          Width = 134
          Height = 19
          Anchors = [akTop, akRight]
          Color = 13431799
          Ctl3D = False
          DataField = 'MonthRun'
          DataSource = srcTaxs
          ParentCtl3D = False
          TabOrder = 2
        end
        object ComboFormInfoID: TDBComboBox
          Tag = 21
          Left = 640
          Top = 2
          Width = 311
          Height = 21
          Hint = #1605#1576#1606#1575#1610' '#1605#1581#1575#1587#1576#1607' '#1605#1575#1604#1610#1575#1578
          Anchors = [akTop, akRight]
          DataField = 'FormInfoID'
          DataSource = srcTaxs
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
        end
      end
      object grpNote: TGroupBox
        Left = 0
        Top = 110
        Width = 1067
        Height = 67
        Align = alTop
        Caption = '   '#1578#1608#1590#1610#1581#1575#1578'   '
        TabOrder = 3
        object dbmmoDescriptions: TDBMemo
          Left = 2
          Top = 15
          Width = 1063
          Height = 50
          Align = alClient
          DataField = 'Descriptions'
          DataSource = srcTaxs
          TabOrder = 0
        end
      end
      object pnl1: TPanel
        Left = 0
        Top = 82
        Width = 1067
        Height = 28
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 4
        DesignSize = (
          1067
          28)
        object Label5: TLabel
          Left = 953
          Top = 9
          Width = 100
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1605#1593#1575#1601#1740#1578' '#1605#1575#1604#1740#1575#1578#1740' '#1593#1740#1583#1740
          ExplicitLeft = 754
        end
        object Label6: TLabel
          Left = 550
          Top = 9
          Width = 86
          Height = 13
          Caption = #1580#1583#1608#1604' '#1605#1575#1604#1740#1575#1578' '#1593#1740#1583#1740
          FocusControl = DBLookupComboBox1
        end
        object DBEdit1: TDBEdit
          Left = 817
          Top = 6
          Width = 134
          Height = 19
          Anchors = [akTop, akRight]
          Ctl3D = False
          DataField = 'BonusFreeTax'
          DataSource = srcTaxs
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 13
          Top = 5
          Width = 532
          Height = 21
          DataField = '_Taxs_Bonus_TaxID'
          DataSource = srcTaxs
          TabOrder = 1
        end
      end
      object pnlDelete: TPanel
        Left = 0
        Top = 363
        Width = 1067
        Height = 23
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 5
        object SpeedButton16: TSpeedButton
          Left = 13
          Top = 1
          Width = 79
          Height = 22
          Action = DataSetDelete1
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000220B0000220B000000010000000100000031DE000031
            E7000031EF000031F700FF00FF000031FF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00040404040404
            0404040404040404000004000004040404040404040404000004040000000404
            0404040404040000040404000000000404040404040000040404040402000000
            0404040400000404040404040404000000040000000404040404040404040400
            0101010004040404040404040404040401010204040404040404040404040400
            0201020304040404040404040404030201040403030404040404040404050203
            0404040405030404040404040303050404040404040303040404040303030404
            0404040404040403040403030304040404040404040404040404030304040404
            0404040404040404040404040404040404040404040404040404}
          ParentShowHint = False
          ShowHint = True
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1604#1740#1587#1578' '#1580#1583#1608#1604' '#1605#1575#1604#1740#1575#1578#1740
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdTaxsList: TCedarDbgrid
        Left = 0
        Top = 0
        Width = 1067
        Height = 386
        Align = alClient
        Color = clCream
        DataSource = srcTaxsList
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
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TaxID'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FormInfoID'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'InfoName_L1'
            Footers = <>
            Width = 60
          end
          item
            CellButtons = <>
            Color = 13431799
            DynProps = <>
            EditButtons = <>
            FieldName = 'YearRun'
            Footers = <>
          end
          item
            CellButtons = <>
            Color = 13431799
            DynProps = <>
            EditButtons = <>
            FieldName = 'MonthRun'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Descriptions'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'BonusFreeTax'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TFN_CODE'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Statuss'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Taxs_Bonus_TaxID'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'RowNo'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'RevenuePrice'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FixedPrice'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Cofficient'
            Footers = <>
          end
          item
            CellButtons = <>
            Color = 13431799
            DynProps = <>
            EditButtons = <>
            FieldName = 'FromYearMonth'
            Footers = <>
          end
          item
            CellButtons = <>
            Color = 13431799
            DynProps = <>
            EditButtons = <>
            FieldName = 'ToYearMonth'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'firstamount'
            Footers = <>
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 80
    inherited DataSetPost1: TDataSetPost
      DataSource = srcTaxs
    end
    inherited DataSetCancel1: TDataSetCancel
      ShortCut = 0
      DataSource = srcTaxs
    end
    object actSearch_: TAction
      Caption = #1580#1587#1578#1580#1608
      OnExecute = actSearch_Execute
    end
    object DataSetCancel2: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel2'
      ShortCut = 27
      DataSource = srcTaxsItems
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      OnExecute = actPrintExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actSendToExcel: TAction
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      OnExecute = actSendToExcelExecute
    end
    object actStatuss: TAction
      Caption = #1602#1591#1593#1610' '#1606#1605#1608#1583#1606' '#1575#1593#1604#1575#1605#1610#1607
      OnExecute = actStatussExecute
    end
    object actGetExcel: TAction
      Caption = #1582#1608#1575#1606#1583#1606' '#1575#1586' Excel '
      OnExecute = actGetExcelExecute
    end
    object actCalc: TAction
      Caption = #1605#1581#1575#1587#1576#1607
    end
    object DataSetEdit1: TDataSetEdit
      Caption = #1608#1740#1585#1575#1740#1588
      DataSource = srcTaxs
    end
    object DataSetInsert1: TDataSetInsert
      Caption = #1580#1583#1610#1583
      DataSource = srcTaxs
    end
    object DataSetDelete1_: TDataSetDelete
      Caption = #1581#1584#1601
      DataSource = srcTaxs
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601' '#1585#1583#1610#1601
      DataSource = srcTaxs
    end
    object DataSetInsert2: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      ShortCut = 16497
      DataSource = srcTaxsItems
    end
    object DataSetPost2: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost2'
      ShortCut = 16503
      DataSource = srcTaxsItems
    end
    object actCopyTax: TAction
      Caption = #1705#1662#1740' '#1580#1583#1608#1604
      Hint = #1705#1662#1740' '#1608' '#1575#1740#1580#1575#1583' '#1580#1583#1608#1604
      OnExecute = actCopyTaxExecute
    end
  end
  object qryTaxs: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterInsert = qryTaxsAfterInsert
    BeforeEdit = qryTaxsBeforeEdit
    BeforePost = qryTaxsBeforePost
    AfterPost = qryTaxsAfterPost
    BeforeCancel = qryTaxsBeforeCancel
    BeforeDelete = qryTaxsBeforeDelete
    AfterDelete = qryTaxsAfterDelete
    BeforeScroll = qryTaxsBeforeScroll
    AfterScroll = qryTaxsAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM        Pay.Taxs'
      '')
    Left = 285
    Top = 28
    object qryTaxsTaxID: TIntegerField
      FieldName = 'TaxID'
    end
    object qryTaxsFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
      OnGetText = All1GetText
      OnSetText = All1SetText
    end
    object qryTaxsYearRun: TIntegerField
      FieldName = 'YearRun'
    end
    object qryTaxsMonthRun: TIntegerField
      FieldName = 'MonthRun'
    end
    object qryTaxsDescriptions: TStringField
      FieldName = 'Descriptions'
      Size = 150
    end
    object qryTaxsBonusFreeTax: TBCDField
      FieldName = 'BonusFreeTax'
      currency = True
      Precision = 19
    end
    object qryTaxsTFN_CODE: TIntegerField
      FieldName = 'TFN_CODE'
    end
    object qryTaxsStatuss: TWordField
      FieldName = 'Statuss'
    end
    object qryTaxsTaxs_Bonus_TaxID: TIntegerField
      FieldName = 'Taxs_Bonus_TaxID'
    end
    object qryTaxs_Taxs_Bonus_TaxID: TStringField
      FieldKind = fkLookup
      FieldName = '_Taxs_Bonus_TaxID'
      LookupDataSet = qryTaxsBonus
      LookupKeyFields = 'TaxID'
      LookupResultField = 'AllDescriptions'
      KeyFields = 'Taxs_Bonus_TaxID'
      Size = 200
      Lookup = True
    end
  end
  object qryTaxsBonus: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT        Pay.Taxs.TaxID, Pay.FormsInfo.InfoName_L1 + '#39' '#1587#1575#1604#39 +
        ' + LTRIM(Pay.Taxs.YearRun) + '#39' '#1605#1575#1607#39' + LTRIM(Pay.Taxs.MonthRun) +' +
        ' '#39' '#39' + Pay.Taxs.Descriptions AS AllDescriptions'
      'FROM            Pay.Taxs INNER JOIN'
      
        '                         Pay.FormsInfo ON Pay.Taxs.FormInfoID = ' +
        'Pay.FormsInfo.FormInfoID')
    Left = 416
    Top = 17
  end
  object qry_FormsInfo: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT FormInfoID,InfoName_L1,InfoName_L2 ,InfoID'
      'FROM Pay.FormsInfo')
    Left = 528
    Top = 49
  end
  object qryTaxsList: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT        T.TaxID, T.FormInfoID, F.InfoName_L1, T.YearRun, T' +
        '.MonthRun, T.Descriptions, T.BonusFreeTax, T.TFN_CODE, T.Statuss' +
        ', T.Taxs_Bonus_TaxID, Ti.RowNo, Ti.RevenuePrice, Ti.FixedPrice, ' +
        'Ti.Cofficient'
      ''
      ', '
      #9#9#9#9't.YearRun *100+ t.MonthRun FromYearMonth ,'
      
        '            '#9'ISNULL(LEAD (t.YearRun *100+ t.MonthRun-1 ) over(pa' +
        'rtition by t.FormInfoID , t.YearRun,ti.RowNo order by  t.MonthRu' +
        'n,ti.taxid  ),999999)   ToYearMonth , '
      
        #9#9#9#9'ISNULL(LAG (ti.RevenuePrice ) over(partition by ti.TaxID ord' +
        'er by ti.RevenuePrice ,ti.RowNo,ti.ID ),0) + 1 firstamount'
      ''
      'FROM            Pay.Taxs AS T INNER JOIN'
      
        '                         Pay.TaxsItems AS Ti ON T.TaxID = Ti.Tax' +
        'ID INNER JOIN'
      
        '                         Pay.FormsInfo AS F ON T.FormInfoID = F.' +
        'FormInfoID')
    Left = 243
    Top = 193
    object qryTaxsListTaxID: TIntegerField
      DisplayLabel = #1587#1585#1740#1575#1604
      FieldName = 'TaxID'
    end
    object qryTaxsListFormInfoID: TIntegerField
      DisplayLabel = #1587#1585#1740#1575#1604' '#1605#1575#1604#1740#1575#1578
      FieldName = 'FormInfoID'
    end
    object qryTaxsListInfoName_L1: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1605#1575#1604#1740#1575#1578
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object qryTaxsListYearRun: TIntegerField
      Tag = 3
      DisplayLabel = #1587#1575#1604' '#1575#1580#1585#1575
      FieldName = 'YearRun'
    end
    object qryTaxsListMonthRun: TIntegerField
      Tag = 3
      DisplayLabel = #1605#1575#1607' '#1575#1580#1585#1575
      FieldName = 'MonthRun'
    end
    object qryTaxsListDescriptions: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1740#1581#1575#1578
      FieldName = 'Descriptions'
      Size = 150
    end
    object qryTaxsListBonusFreeTax: TBCDField
      Tag = 3
      DisplayLabel = #1605#1593#1575#1601#1740#1578' '#1605#1575#1604#1740#1575#1578#1740' '#1593#1740#1583#1740
      FieldName = 'BonusFreeTax'
      currency = True
      Precision = 19
    end
    object qryTaxsListTFN_CODE: TIntegerField
      Tag = 3
      DisplayLabel = #1705#1583' '#1605#1575#1604#1740#1575#1578#1740
      FieldName = 'TFN_CODE'
    end
    object qryTaxsListStatuss: TWordField
      Tag = 3
      DisplayLabel = #1608#1590#1593#1740#1578
      FieldName = 'Statuss'
    end
    object qryTaxsListTaxs_Bonus_TaxID: TIntegerField
      Tag = 3
      DisplayLabel = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1593#1740#1583#1740
      FieldName = 'Taxs_Bonus_TaxID'
    end
    object qryTaxsListRowNo: TIntegerField
      Tag = 3
      DisplayLabel = #1585#1583#1740#1601
      FieldName = 'RowNo'
    end
    object qryTaxsListRevenuePrice: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1662#1575#1740#1607
      FieldName = 'RevenuePrice'
      currency = True
      Precision = 19
    end
    object qryTaxsListFixedPrice: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1579#1575#1576#1578
      FieldName = 'FixedPrice'
      currency = True
      Precision = 19
    end
    object qryTaxsListCofficient: TFloatField
      Tag = 3
      DisplayLabel = #1590#1585#1740#1576' '#1605#1575#1604#1740#1575#1578
      FieldName = 'Cofficient'
    end
    object qryTaxsListFromYearMonth: TIntegerField
      Tag = 3
      DisplayLabel = #1575#1586' '#1587#1575#1604' '#1608#1605#1575#1607
      FieldName = 'FromYearMonth'
      ReadOnly = True
    end
    object qryTaxsListToYearMonth: TIntegerField
      Tag = 3
      DisplayLabel = #1578#1575' '#1587#1575#1604' '#1608' '#1605#1575#1607
      FieldName = 'ToYearMonth'
      ReadOnly = True
    end
    object qryTaxsListfirstamount: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1575#1608#1604#1740#1607
      FieldName = 'firstamount'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object qryTaxsItems: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeInsert = qryTaxsItemsBeforeInsert
    AfterInsert = qryTaxsItemsAfterInsert
    BeforeEdit = qryTaxsItemsBeforeEdit
    BeforePost = qryTaxsItemsBeforePost
    BeforeDelete = qryTaxsItemsBeforeDelete
    AfterDelete = qryTaxsItemsAfterDelete
    Parameters = <
      item
        Name = 'TaxID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM         pay.TaxsItems'
      'WHERE (TaxID = :TaxID )')
    Left = 80
    Top = 360
    object qryTaxsItemsID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qryTaxsItemsTaxID: TIntegerField
      FieldName = 'TaxID'
      Required = True
    end
    object qryTaxsItemsRowNo: TIntegerField
      Tag = 3
      DisplayLabel = #1585#1583#1740#1601
      FieldName = 'RowNo'
      Required = True
    end
    object qryTaxsItemsRevenuePrice: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1662#1575#1740#1607
      FieldName = 'RevenuePrice'
      currency = True
      Precision = 19
    end
    object qryTaxsItemsFixedPrice: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1579#1575#1576#1578
      FieldName = 'FixedPrice'
      Required = True
      currency = True
      Precision = 19
    end
    object qryTaxsItemsCofficient: TFloatField
      Tag = 3
      DisplayLabel = #1590#1585#1740#1576' '#1605#1575#1604#1740#1575#1578#1740
      FieldName = 'Cofficient'
      Required = True
    end
  end
  object qry4SearchCode: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT        Ri.ID, Ri.StuffCode, SC.c_StuffName, Ri.UnitSellPr' +
        'ice, R.ReciptNumber, R.ReciptDate, s.c_StoreName, C2.CustName'
      'FROM            Recipts AS R INNER JOIN'
      
        '                         Stores AS s ON R.StoreID = s.n_StoreID ' +
        'INNER JOIN'
      
        '                         ReciptItems AS Ri ON R.ReciptID = Ri.Re' +
        'ciptID AND R.ServerID = Ri.ServerID AND R.YearID = Ri.YearID INN' +
        'ER JOIN'
      
        '                         StuffCoding AS SC ON Ri.StuffCode = SC.' +
        'c_StuffCode LEFT OUTER JOIN'
      
        '                         Customers AS C2 ON R.PersonID2 = C2.Cus' +
        'tID'
      'WHERE        (R.ReciptType = 20)')
    Left = 307
    Top = 321
  end
  object srcTaxs: TDataSource
    AutoEdit = False
    DataSet = qryTaxs
    OnStateChange = srcTaxsStateChange
    Left = 363
    Top = 84
  end
  object srcTaxsItems: TDataSource
    DataSet = qryTaxsItems
    Left = 200
    Top = 359
  end
  object srcTaxsList: TDataSource
    DataSet = qryTaxsList
    Left = 445
    Top = 224
  end
  object popPrint: TPopupMenu
    AutoHotkeys = maManual
    Left = 472
    Top = 359
    object TaxsF1: TMenuItem
      Caption = #1670#1575#1662' 1 '
      object N1: TMenuItem
        Caption = #1580#1583#1608#1604' '#1580#1575#1585#1610
        Hint = 'Taxs1'
      end
      object N4: TMenuItem
        Tag = 1
        Caption = #1607#1605#1607'  '#1580#1583#1608#1604' '#1607#1575
        Hint = 'Taxs1'
      end
    end
    object TaxsF2: TMenuItem
      Caption = #1670#1575#1662' 2 '
      object N5: TMenuItem
        Caption = #1580#1583#1608#1604' '#1580#1575#1585#1610
        Hint = 'Taxs2'
      end
      object N6: TMenuItem
        Tag = 1
        Caption = #1607#1605#1607' '#1580#1583#1608#1604' '#1607#1575
        Hint = 'Taxs2'
      end
      object TMenuItem
      end
    end
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = srcTaxsItems
    OpenDataSource = False
    UserName = 'DBPipeline2'
    Left = 560
    Top = 367
    MasterDataPipelineName = 'ppDBPipeline1'
    object ppDBPipeline2ppField1: TppField
      FieldAlias = 'ID'
      FieldName = 'ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField2: TppField
      FieldAlias = 'TaxID'
      FieldName = 'TaxID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField3: TppField
      FieldAlias = 'RowNo'
      FieldName = 'RowNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField4: TppField
      FieldAlias = 'RevenuePrice'
      FieldName = 'RevenuePrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField5: TppField
      FieldAlias = 'FixedPrice'
      FieldName = 'FixedPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField6: TppField
      FieldAlias = 'Cofficient'
      FieldName = 'Cofficient'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
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
    Template.FileName = 'D:\Projects\Fara2010\BSell\Exe\Report\Taxs1.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RefreshTokenLifeSpan = 365
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
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
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.DropBoxSettings.SharedResources = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.GoogleDriveSettings.SharedResources = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    CloudDriveSettings.OneDriveSettings.SharedResources = True
    Left = 640
    Top = 367
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
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
        mmLeft = 73025
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
        Caption = '....'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 96309
        mmTop = 8467
        mmWidth = 5291
        BandType = 0
        LayerName = Foreground
      end
      object ppSysVarPageNo: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SysVarPageNo1'
        OnGetText = ppSysVarPageNoGetText
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
        OnGetText = ppLblPrintDateGetText
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
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 5969
        mmLeft = 176530
        mmTop = 18522
        mmWidth = 20320
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
        mmLeft = 176002
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
        Caption = '.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6085
        mmLeft = 12965
        mmTop = 18521
        mmWidth = 40746
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
        mmLeft = 134305
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
        Caption = '.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 5969
        mmLeft = 126157
        mmTop = 18522
        mmWidth = 7620
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
        mmLeft = 125629
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
        Caption = '.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 5969
        mmLeft = 104780
        mmTop = 18522
        mmWidth = 20320
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
        mmLeft = 104252
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
        Caption = '.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 5969
        mmLeft = 73244
        mmTop = 18522
        mmWidth = 30480
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
        mmLeft = 72715
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
        Caption = '.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 5969
        mmLeft = 54712
        mmTop = 18522
        mmWidth = 17475
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
        mmLeft = 54183
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
        Caption = '.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 5969
        mmLeft = 36180
        mmTop = 18522
        mmWidth = 17475
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
        mmLeft = 35652
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
        Caption = '.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 5969
        mmLeft = 17648
        mmTop = 18522
        mmWidth = 17475
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line23'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 17120
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 5969
        mmLeft = 0
        mmTop = 18522
        mmWidth = 17475
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line27'
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
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 176002
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line28'
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
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 176002
        mmTop = 0
        mmWidth = 2647
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line30'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 0
        mmTop = 0
        mmWidth = 2647
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
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
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 176002
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line29'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 0
        mmTop = 0
        mmWidth = 2647
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
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcTaxs
    OpenDataSource = False
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'DBPipeline1'
    Left = 720
    Top = 319
  end
end

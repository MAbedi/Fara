inherited ProfitOrLosssF: TProfitOrLosssF
  Caption = 'Project Card'
  ClientHeight = 595
  ClientWidth = 884
  OnResize = FormResize
  ExplicitWidth = 900
  ExplicitHeight = 634
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 554
    Width = 884
    ExplicitTop = 554
    ExplicitWidth = 884
    object newPanel: TPanel
      Left = 652
      Top = 1
      Width = 231
      Height = 39
      Align = alRight
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 1
      object BitBtn3: TBitBtn
        AlignWithMargins = True
        Left = 155
        Top = 5
        Width = 75
        Height = 29
        Margins.Left = 1
        Margins.Top = 5
        Margins.Right = 1
        Margins.Bottom = 5
        Action = DataSetInsert1
        Align = alRight
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        AlignWithMargins = True
        Left = 78
        Top = 5
        Width = 75
        Height = 29
        Margins.Left = 1
        Margins.Top = 5
        Margins.Right = 1
        Margins.Bottom = 5
        Action = DataSetEdit1
        Align = alRight
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object btnDataSetDelete1_: TBitBtn
        AlignWithMargins = True
        Left = 1
        Top = 5
        Width = 75
        Height = 29
        Margins.Left = 1
        Margins.Top = 5
        Margins.Right = 1
        Margins.Bottom = 5
        Action = DataSetDelete1_
        Align = alRight
        Caption = #1581#1584#1601
        TabOrder = 2
      end
    end
    object okPanel: TPanel
      Left = 498
      Top = 1
      Width = 154
      Height = 39
      Align = alRight
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 2
      object BitBtn7: TBitBtn
        AlignWithMargins = True
        Left = 78
        Top = 5
        Width = 75
        Height = 29
        Margins.Left = 1
        Margins.Top = 5
        Margins.Right = 1
        Margins.Bottom = 5
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
      object BitBtn8: TBitBtn
        AlignWithMargins = True
        Left = 1
        Top = 5
        Width = 75
        Height = 29
        Margins.Left = 1
        Margins.Top = 5
        Margins.Right = 1
        Margins.Bottom = 5
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
    object DBNavigator1: TDBNavigator
      AlignWithMargins = True
      Left = 85
      Top = 7
      Width = 410
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      DataSource = srcProfitOrLosss
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alClient
      Flat = True
      TabOrder = 3
    end
  end
  inherited Panel2: TPanel
    Width = 884
    ExplicitWidth = 884
    inherited ImgTemplate: TImage
      Left = 856
      ExplicitLeft = 856
    end
    inherited lblCaption: TLabel
      Left = 776
      ExplicitLeft = 776
    end
  end
  inherited Panel3: TPanel
    Width = 884
    Height = 501
    ExplicitWidth = 884
    ExplicitHeight = 501
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 880
      Height = 497
      Align = alClient
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 0
      object spl1: TSplitter
        Left = 2
        Top = 283
        Width = 876
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        ExplicitLeft = -12
        ExplicitTop = 0
        ExplicitWidth = 802
      end
      object spl2: TSplitter
        Left = 2
        Top = 250
        Width = 876
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        ExplicitTop = 355
      end
      object Label1: TLabel
        Left = 2
        Top = 57
        Width = 876
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'P 8 L'
        Color = clScrollBar
        Font.Charset = OEM_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Modern'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        ExplicitWidth = 23
      end
      object pnl2: TPanel
        Left = 2
        Top = 70
        Width = 876
        Height = 180
        Align = alClient
        TabOrder = 0
        object lblSalaryBankName: TLabel
          Left = 1
          Top = 166
          Width = 874
          Height = 13
          Align = alBottom
          Caption = '.....'
          ExplicitLeft = 855
          ExplicitWidth = 20
        end
        object pnl3_4_5: TPanel
          Left = 462
          Top = 1
          Width = 413
          Height = 165
          Align = alRight
          TabOrder = 0
          object Label2: TLabel
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 405
            Height = 13
            Align = alTop
            Alignment = taCenter
            Caption = #1607#1586#1740#1606#1607' '#1607#1575
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitWidth = 40
          end
          object pnl4: TPanel
            Left = 216
            Top = 20
            Width = 196
            Height = 144
            Align = alRight
            TabOrder = 0
            object CedarDbgrid2: TCedarDbgrid
              Left = 1
              Top = 1
              Width = 194
              Height = 142
              Align = alClient
              BorderStyle = bsNone
              DataSource = srcItems4
              DynProps = <>
              Flat = True
              FooterRowCount = 1
              FooterParams.FillStyle = cfstGradientEh
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
              OddRowColor = 12615808
              RowDetailPanel.MaxHeight = 1
              RowHeight = 18
              SearchPanel.Enabled = True
              SearchPanel.FilterEnabled = False
              SearchPanel.Location = splHorzScrollBarExtraPanelEh
              SelectionDrawParams.SelectionStyle = gsdsClassicEh
              SortLocal = True
              SumList.Active = True
              TabOrder = 0
              ActiveSearchPanel = False
              SelectFooterIndex = 0
              Columns = <
                item
                  CellButtons = <>
                  Color = 15532031
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'Comment'
                  Footer.Color = 15532031
                  Footer.ValueType = fvtCount
                  Footers = <>
                  Width = 50
                end
                item
                  ButtonStyle = cbsDropDown
                  CellButtons = <>
                  Color = 13236955
                  DynProps = <>
                  EditButton.Visible = True
                  EditButtons = <>
                  FieldName = 'Price'
                  Footer.Color = 13236955
                  Footer.FieldName = 'Price'
                  Footer.ValueType = fvtSum
                  Footers = <>
                  Width = 83
                end
                item
                  ButtonStyle = cbsDropDown
                  CellButtons = <>
                  Color = 13236955
                  DynProps = <>
                  EditButton.Visible = True
                  EditButtons = <>
                  FieldName = 'InfoPercent'
                  Footer.Color = 13236955
                  Footer.FieldName = 'InfoPercent'
                  Footer.ValueType = fvtSum
                  Footers = <>
                  Width = 41
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
          object Panel6: TPanel
            Left = 1
            Top = 20
            Width = 215
            Height = 144
            Align = alClient
            TabOrder = 1
            object Panel7: TPanel
              Left = 1
              Top = 81
              Width = 213
              Height = 16
              Align = alTop
              Color = clScrollBar
              ParentBackground = False
              TabOrder = 0
            end
            object grdItems3: TCedarDbgrid
              Left = 1
              Top = 1
              Width = 213
              Height = 80
              Align = alTop
              BorderStyle = bsNone
              DataSource = srcItems3
              DynProps = <>
              Flat = True
              FooterParams.FillStyle = cfstGradientEh
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
              OddRowColor = 12615808
              RowDetailPanel.MaxHeight = 1
              RowHeight = 18
              SearchPanel.Enabled = True
              SearchPanel.FilterOnTyping = True
              SearchPanel.Location = splHorzScrollBarExtraPanelEh
              SelectionDrawParams.SelectionStyle = gsdsClassicEh
              SortLocal = True
              SumList.Active = True
              TabOrder = 1
              ActiveSearchPanel = False
              SelectFooterIndex = 0
              Columns = <
                item
                  CellButtons = <>
                  Color = 15532031
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'Comment'
                  Footer.Color = 15532031
                  Footers = <>
                  Width = 69
                end
                item
                  ButtonStyle = cbsDropDown
                  CellButtons = <>
                  Color = 13236955
                  DynProps = <>
                  EditButton.Visible = True
                  EditButtons = <>
                  FieldName = 'Price'
                  Footer.Color = 13236955
                  Footer.ValueType = fvtSum
                  Footers = <>
                  Width = 77
                end
                item
                  ButtonStyle = cbsDropDown
                  CellButtons = <>
                  Color = 13236955
                  DynProps = <>
                  EditButton.Visible = True
                  EditButtons = <>
                  FieldName = 'InfoPercent'
                  Footer.Color = 13236955
                  Footer.ValueType = fvtSum
                  Footers = <>
                  Width = 40
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
            object grdItems5: TCedarDbgrid
              Left = 1
              Top = 97
              Width = 213
              Height = 46
              Align = alClient
              BorderStyle = bsNone
              DataSource = srcItems5
              DynProps = <>
              Flat = True
              FooterParams.FillStyle = cfstGradientEh
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
              OddRowColor = 12615808
              RowDetailPanel.MaxHeight = 1
              RowHeight = 18
              SearchPanel.Enabled = True
              SearchPanel.FilterOnTyping = True
              SearchPanel.Location = splHorzScrollBarExtraPanelEh
              SelectionDrawParams.SelectionStyle = gsdsClassicEh
              SortLocal = True
              SumList.Active = True
              TabOrder = 2
              ActiveSearchPanel = True
              SelectFooterIndex = 0
              Columns = <
                item
                  CellButtons = <>
                  Color = 15532031
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'Comment'
                  Footer.Color = 15532031
                  Footers = <>
                  Width = 50
                end
                item
                  ButtonStyle = cbsDropDown
                  CellButtons = <>
                  Color = 13236955
                  DynProps = <>
                  EditButton.Visible = True
                  EditButtons = <>
                  FieldName = 'Price'
                  Footer.Color = 13236955
                  Footer.ValueType = fvtSum
                  Footers = <>
                  Width = 44
                end
                item
                  ButtonStyle = cbsDropDown
                  CellButtons = <>
                  Color = 13236955
                  DynProps = <>
                  EditButton.Visible = True
                  EditButtons = <>
                  FieldName = 'InfoPercent'
                  Footer.Color = 13236955
                  Footer.ValueType = fvtSum
                  Footers = <>
                  Width = 58
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
        end
        object pnl1_2: TPanel
          Left = 1
          Top = 1
          Width = 461
          Height = 165
          Align = alClient
          TabOrder = 1
          object Label6: TLabel
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 453
            Height = 13
            Align = alTop
            Alignment = taCenter
            Caption = #1583#1585#1570#1605#1583#1607#1575
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitWidth = 35
          end
          object pnlItem2: TPanel
            Left = 275
            Top = 20
            Width = 185
            Height = 144
            Align = alRight
            TabOrder = 0
            object grdItems2: TCedarDbgrid
              Left = 1
              Top = 1
              Width = 183
              Height = 142
              Align = alClient
              BorderStyle = bsNone
              DataSource = srcItems2
              DynProps = <>
              Flat = True
              FooterRowCount = 1
              FooterParams.FillStyle = cfstGradientEh
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
              OddRowColor = 12615808
              RowDetailPanel.MaxHeight = 1
              RowHeight = 18
              SearchPanel.Enabled = True
              SearchPanel.FilterOnTyping = True
              SearchPanel.Location = splHorzScrollBarExtraPanelEh
              SelectionDrawParams.SelectionStyle = gsdsClassicEh
              SortLocal = True
              SumList.Active = True
              TabOrder = 0
              ActiveSearchPanel = True
              SelectFooterIndex = 0
              Columns = <
                item
                  CellButtons = <>
                  Color = 15532031
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'Comment'
                  Footer.Color = 15532031
                  Footers = <>
                  Width = 62
                end
                item
                  ButtonStyle = cbsDropDown
                  CellButtons = <>
                  Color = 13236955
                  DynProps = <>
                  EditButton.Visible = True
                  EditButtons = <>
                  FieldName = 'Price'
                  Footer.Color = 13236955
                  Footer.ValueType = fvtSum
                  Footers = <>
                  Width = 65
                end
                item
                  ButtonStyle = cbsDropDown
                  CellButtons = <>
                  Color = 13236955
                  DynProps = <>
                  EditButton.Visible = True
                  EditButtons = <>
                  FieldName = 'InfoPercent'
                  Footer.Color = 13236955
                  Footer.ValueType = fvtSum
                  Footers = <>
                  Width = 36
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
          object Panel10: TPanel
            Left = 1
            Top = 20
            Width = 274
            Height = 144
            Align = alClient
            TabOrder = 1
            object grdItems1: TCedarDbgrid
              Left = 1
              Top = 1
              Width = 272
              Height = 142
              Align = alClient
              BorderStyle = bsNone
              DataSource = srcItems1
              DynProps = <>
              Flat = True
              FooterRowCount = 1
              FooterParams.FillStyle = cfstGradientEh
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
              OddRowColor = 12615808
              RowDetailPanel.MaxHeight = 1
              RowHeight = 18
              SearchPanel.Enabled = True
              SearchPanel.FilterOnTyping = True
              SearchPanel.Location = splHorzScrollBarExtraPanelEh
              SelectionDrawParams.SelectionStyle = gsdsClassicEh
              SortLocal = True
              SumList.Active = True
              TabOrder = 0
              ActiveSearchPanel = False
              SelectFooterIndex = 0
              Columns = <
                item
                  CellButtons = <>
                  Color = 15532031
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'Comment'
                  Footer.Color = 15532031
                  Footers = <>
                  Width = 106
                end
                item
                  ButtonStyle = cbsDropDown
                  CellButtons = <>
                  Color = 13236955
                  DynProps = <>
                  EditButton.Visible = True
                  EditButtons = <>
                  FieldName = 'Price'
                  Footer.Color = 13236955
                  Footer.ValueType = fvtSum
                  Footers = <>
                  Width = 122
                end
                item
                  ButtonStyle = cbsDropDown
                  CellButtons = <>
                  Color = 13236955
                  DynProps = <>
                  EditButton.Visible = True
                  EditButtons = <>
                  FieldName = 'InfoPercent'
                  Footer.Color = 13236955
                  Footer.ValueType = fvtSum
                  Footers = <>
                  Width = 38
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
        end
      end
      object Panel11: TPanel
        Left = 2
        Top = 253
        Width = 876
        Height = 30
        Align = alBottom
        TabOrder = 1
        object Label3: TLabel
          AlignWithMargins = True
          Left = 663
          Top = 4
          Width = 209
          Height = 22
          Align = alRight
          Alignment = taRightJustify
          AutoSize = False
          Caption = #1587#1608#1583' '#1606#1575#1582#1575#1604#1589
          FocusControl = edtGrossProfit
          ExplicitLeft = 816
          ExplicitHeight = 24
        end
        object edtGrossProfit: TDBEdit
          AlignWithMargins = True
          Left = 507
          Top = 4
          Width = 150
          Height = 22
          Align = alRight
          DataField = 'GrossProfit'
          DataSource = srcProfitOrLosss
          TabOrder = 0
          ExplicitHeight = 21
        end
      end
      object Panel12: TPanel
        Left = 2
        Top = 436
        Width = 876
        Height = 30
        Align = alBottom
        TabOrder = 2
        object Label4: TLabel
          AlignWithMargins = True
          Left = 663
          Top = 4
          Width = 209
          Height = 22
          Align = alRight
          Alignment = taRightJustify
          AutoSize = False
          Caption = #1578#1571#1579#1740#1585#1583#1740#1585#1705#1585#1583' '#1662#1585#1583#1575#1582#1578' '#1662#1608#1604' '#1576#1607' '#1662#1740#1605#1575#1606#1705#1575#1585#1575#1606' ('#1607#1586#1740#1606#1607' '#1607#1575')'
          FocusControl = edtLatePaymentsToContractors
          ExplicitHeight = 13
        end
        object Label5: TLabel
          AlignWithMargins = True
          Left = 292
          Top = 4
          Width = 209
          Height = 22
          Align = alRight
          AutoSize = False
          Caption = #1578#1571#1579#1740#1585' '#1583#1740#1585#1705#1585#1583' '#1583#1585#1740#1575#1601#1578' '#1662#1608#1604' '#1575#1586' '#1705#1575#1585#1601#1585#1605#1575#1740#1575#1606' ('#1583#1585#1570#1605#1583#1607#1575') '
          FocusControl = edtLatePaymentsToClients
          ExplicitLeft = 295
          ExplicitHeight = 29
        end
        object edtLatePaymentsToContractors: TDBEdit
          AlignWithMargins = True
          Left = 507
          Top = 4
          Width = 150
          Height = 22
          Align = alRight
          DataField = 'LatePaymentsToContractors'
          DataSource = srcProfitOrLosss
          TabOrder = 0
          ExplicitHeight = 21
        end
        object edtLatePaymentsToClients: TDBEdit
          AlignWithMargins = True
          Left = 136
          Top = 4
          Width = 150
          Height = 22
          Align = alRight
          DataField = 'LatePaymentsToClients'
          DataSource = srcProfitOrLosss
          TabOrder = 1
          ExplicitHeight = 21
        end
      end
      object Panel13: TPanel
        Left = 2
        Top = 406
        Width = 876
        Height = 30
        Align = alBottom
        TabOrder = 3
        object Label7: TLabel
          AlignWithMargins = True
          Left = 663
          Top = 4
          Width = 209
          Height = 22
          Align = alRight
          Alignment = taRightJustify
          AutoSize = False
          Caption = #1587#1608#1583' '#1582#1575#1604#1589
          FocusControl = edtNetProfit
          ExplicitLeft = 822
          ExplicitHeight = 24
        end
        object edtNetProfit: TDBEdit
          AlignWithMargins = True
          Left = 507
          Top = 4
          Width = 150
          Height = 22
          Align = alRight
          DataField = 'NetProfit'
          DataSource = srcProfitOrLosss
          TabOrder = 0
          ExplicitHeight = 21
        end
      end
      object Panel14: TPanel
        Left = 2
        Top = 466
        Width = 876
        Height = 29
        Align = alBottom
        TabOrder = 4
        object Label8: TLabel
          AlignWithMargins = True
          Left = 663
          Top = 4
          Width = 209
          Height = 21
          Align = alRight
          Alignment = taRightJustify
          AutoSize = False
          Caption = #1587#1608#1583' '#1705#1604
          FocusControl = edtFinallProfit
          ExplicitLeft = 835
          ExplicitHeight = 24
        end
        object edtFinallProfit: TDBEdit
          AlignWithMargins = True
          Left = 507
          Top = 4
          Width = 150
          Height = 21
          Align = alRight
          DataField = 'FinallProfit'
          DataSource = srcProfitOrLosss
          TabOrder = 0
        end
      end
      object CedarDbgrid1: TCedarDbgrid
        Left = 2
        Top = 286
        Width = 876
        Height = 120
        Align = alBottom
        BorderStyle = bsNone
        DataSource = srcItems6
        DynProps = <>
        Flat = True
        FooterRowCount = 1
        FooterParams.FillStyle = cfstGradientEh
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
        OddRowColor = 12615808
        RowDetailPanel.MaxHeight = 1
        RowHeight = 18
        SearchPanel.Enabled = True
        SearchPanel.FilterOnTyping = True
        SearchPanel.Location = splHorzScrollBarExtraPanelEh
        SelectionDrawParams.SelectionStyle = gsdsClassicEh
        SortLocal = True
        SumList.Active = True
        TabOrder = 5
        ActiveSearchPanel = True
        SelectFooterIndex = 0
        Columns = <
          item
            CellButtons = <>
            Color = 15532031
            DynProps = <>
            EditButtons = <>
            FieldName = 'Comment'
            Footer.Color = 15532031
            Footers = <>
            Width = 398
          end
          item
            ButtonStyle = cbsDropDown
            CellButtons = <>
            Color = 13236955
            DynProps = <>
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'Price'
            Footer.Color = 13236955
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 400
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object Panel4: TPanel
        Left = 2
        Top = 30
        Width = 876
        Height = 27
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 6
        object Label9: TLabel
          AlignWithMargins = True
          Left = 625
          Top = 3
          Width = 92
          Height = 21
          Align = alRight
          AutoSize = False
          Caption = 'Average DSO'
          FocusControl = edtAverageDSO
          ExplicitLeft = 624
          ExplicitTop = 4
          ExplicitHeight = 22
        end
        object Label13: TLabel
          AlignWithMargins = True
          Left = 333
          Top = 3
          Width = 130
          Height = 21
          Align = alRight
          AutoSize = False
          Caption = 'Client Name'
          FocusControl = edtClientName
          ExplicitLeft = 356
          ExplicitTop = 2
          ExplicitHeight = 22
        end
        object Label14: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 75
          Height = 21
          Align = alLeft
          AutoSize = False
          Caption = 'Project Date'
          FocusControl = edtProjectDate
          ExplicitLeft = 4
          ExplicitTop = 4
          ExplicitHeight = 22
        end
        object edtAverageDSO: TDBEdit
          AlignWithMargins = True
          Left = 723
          Top = 3
          Width = 150
          Height = 21
          Align = alRight
          DataField = 'AverageDSO'
          DataSource = srcProfitOrLosss
          TabOrder = 0
        end
        object edtClientName: TDBEdit
          AlignWithMargins = True
          Left = 469
          Top = 3
          Width = 150
          Height = 21
          Align = alRight
          DataField = 'ClientName'
          DataSource = srcProfitOrLosss
          TabOrder = 1
        end
        object edtProjectDate: TDBEdit
          AlignWithMargins = True
          Left = 84
          Top = 3
          Width = 150
          Height = 21
          Align = alLeft
          DataField = 'ProjectDate'
          DataSource = srcProfitOrLosss
          TabOrder = 2
        end
      end
      object Panel5: TPanel
        Left = 2
        Top = 2
        Width = 876
        Height = 28
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 7
        object Label10: TLabel
          AlignWithMargins = True
          Left = 625
          Top = 3
          Width = 92
          Height = 22
          Align = alRight
          AutoSize = False
          Caption = 'Average DIR'
          FocusControl = edtAverageDIR
          ExplicitLeft = 604
          ExplicitTop = 4
        end
        object Label11: TLabel
          AlignWithMargins = True
          Left = 333
          Top = 3
          Width = 130
          Height = 22
          Align = alRight
          AutoSize = False
          Caption = 'Client Code'
          FocusControl = edtClientCode
          ExplicitLeft = 356
          ExplicitTop = 2
        end
        object Label12: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 75
          Height = 22
          Align = alLeft
          AutoSize = False
          Caption = 'Project Code'
          FocusControl = edtProjectCode
          ExplicitLeft = 4
          ExplicitTop = 4
        end
        object btnProjectCode: TSpeedButton
          AlignWithMargins = True
          Left = 240
          Top = 3
          Width = 23
          Height = 22
          Align = alLeft
          Caption = '...'
          OnClick = btnProjectCodeClick
          ExplicitLeft = 763
          ExplicitTop = 1
        end
        object edtAverageDIR: TDBEdit
          AlignWithMargins = True
          Left = 723
          Top = 3
          Width = 150
          Height = 22
          Align = alRight
          DataField = 'AverageDIR'
          DataSource = srcProfitOrLosss
          TabOrder = 0
          ExplicitHeight = 21
        end
        object edtClientCode: TDBEdit
          AlignWithMargins = True
          Left = 469
          Top = 3
          Width = 150
          Height = 22
          Align = alRight
          DataField = 'ClientCode'
          DataSource = srcProfitOrLosss
          TabOrder = 1
          ExplicitHeight = 21
        end
        object edtProjectCode: TDBEdit
          AlignWithMargins = True
          Left = 84
          Top = 3
          Width = 150
          Height = 22
          Align = alLeft
          DataField = 'ProjectCode'
          DataSource = srcProfitOrLosss
          ReadOnly = True
          TabOrder = 2
          ExplicitHeight = 21
        end
      end
    end
  end
  inherited ActionList: TActionList
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcProfitOrLosss
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcProfitOrLosss
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcProfitOrLosss
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcProfitOrLosss
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcProfitOrLosss
    end
  end
  inherited ImageList1: TImageList
    Left = 176
    Top = 9
  end
  object qryItems4: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'ProfitOrLossID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM            Cnt.ProfitOrLosssItems'
      'WHERE        (Kind = 4) AND (ProfitOrLossID = :ProfitOrLossID)')
    Left = 722
    Top = 120
    object qryItems4Comment: TWideStringField
      DisplayLabel = #1576#1607' '#1578#1601#1705#1740#1705' '#1587#1585#1601#1589#1604'|'#1588#1585#1581
      FieldName = 'Comment'
      Size = 300
    end
    object qryItems4Price: TBCDField
      DisplayLabel = #1576#1607' '#1578#1601#1705#1740#1705' '#1587#1585#1601#1589#1604'|'#1605#1576#1604#1594
      FieldName = 'Price'
      currency = True
      Precision = 19
    end
    object qryItems4InfoPercent: TFloatField
      DisplayLabel = #1576#1607' '#1578#1601#1705#1740#1705' '#1587#1585#1601#1589#1604'|'#1583#1585#1589#1583
      FieldName = 'InfoPercent'
    end
    object qryItems4Descriptions: TWideStringField
      FieldName = 'Descriptions'
      Size = 1000
    end
    object qryItems4ItemID: TIntegerField
      FieldName = 'ItemID'
    end
    object qryItems4ProfitOrLossID: TIntegerField
      FieldName = 'ProfitOrLossID'
    end
    object qryItems4InfoID: TIntegerField
      FieldName = 'InfoID'
    end
    object qryItems4Kind: TWordField
      FieldName = 'Kind'
    end
    object qryItems4SourceInfo: TWideStringField
      FieldName = 'SourceInfo'
      Size = 100
    end
  end
  object srcItems4: TDataSource
    DataSet = qryItems4
    Left = 804
    Top = 119
  end
  object qryItems3: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'ProfitOrLossID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM            Cnt.ProfitOrLosssItems'
      'WHERE        (Kind = 3) AND (ProfitOrLossID = :ProfitOrLossID )')
    Left = 482
    Top = 128
    object WideStringField1: TWideStringField
      DisplayLabel = #1576#1607' '#1578#1601#1705#1740#1705' '#1606#1608#1593' '#1607#1586#1740#1606#1607'|'#1588#1585#1581
      FieldName = 'Comment'
      Size = 300
    end
    object BCDField1: TBCDField
      DisplayLabel = #1576#1607' '#1578#1601#1705#1740#1705' '#1606#1608#1593' '#1607#1586#1740#1606#1607'|'#1605#1576#1604#1594
      FieldName = 'Price'
      currency = True
      Precision = 19
    end
    object FloatField1: TFloatField
      DisplayLabel = #1576#1607' '#1578#1601#1705#1740#1705' '#1606#1608#1593' '#1607#1586#1740#1606#1607'|'#1583#1585#1589#1583
      FieldName = 'InfoPercent'
    end
    object WideStringField2: TWideStringField
      FieldName = 'Descriptions'
      Size = 1000
    end
    object qryItems3ItemID: TIntegerField
      FieldName = 'ItemID'
    end
    object qryItems3ProfitOrLossID: TIntegerField
      FieldName = 'ProfitOrLossID'
    end
    object qryItems3InfoID: TIntegerField
      FieldName = 'InfoID'
    end
    object qryItems3Kind: TWordField
      FieldName = 'Kind'
    end
    object qryItems3SourceInfo: TWideStringField
      FieldName = 'SourceInfo'
      Size = 100
    end
  end
  object srcItems3: TDataSource
    DataSet = qryItems3
    Left = 540
    Top = 143
  end
  object qryItems5: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'ProfitOrLossID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT      *'
      'FROM            Cnt.ProfitOrLosssItems'
      'WHERE        (Kind = 5) AND (ProfitOrLossID = :ProfitOrLossID)')
    Left = 546
    Top = 216
    object WideStringField3: TWideStringField
      DisplayLabel = #1579#1575#1576#1578'/'#1605#1578#1594#1740#1585'|'#1588#1585#1581
      FieldName = 'Comment'
      Size = 300
    end
    object BCDField2: TBCDField
      DisplayLabel = #1579#1575#1576#1578'/'#1605#1578#1594#1740#1585'|'#1605#1576#1604#1594
      FieldName = 'Price'
      currency = True
      Precision = 19
    end
    object FloatField2: TFloatField
      DisplayLabel = #1579#1575#1576#1578'/'#1605#1578#1594#1740#1585'|'#1583#1585#1589#1583
      FieldName = 'InfoPercent'
    end
    object WideStringField4: TWideStringField
      FieldName = 'Descriptions'
      Size = 1000
    end
    object qryItems5ItemID: TIntegerField
      FieldName = 'ItemID'
    end
    object qryItems5ProfitOrLossID: TIntegerField
      FieldName = 'ProfitOrLossID'
    end
    object qryItems5InfoID: TIntegerField
      FieldName = 'InfoID'
    end
    object qryItems5Kind: TWordField
      FieldName = 'Kind'
    end
    object qryItems5SourceInfo: TWideStringField
      FieldName = 'SourceInfo'
      Size = 100
    end
  end
  object srcItems5: TDataSource
    DataSet = qryItems5
    Left = 484
    Top = 215
  end
  object qryItems2: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'ProfitOrLossID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT        *'
      'FROM            Cnt.ProfitOrLosssItems'
      'WHERE        (Kind = 2) AND (ProfitOrLossID = :ProfitOrLossID)')
    Left = 322
    Top = 136
    object qryItems2Comment: TWideStringField
      DisplayLabel = #1576#1607' '#1578#1601#1705#1740#1705' '#1606#1608#1593' '#1601#1593#1575#1604#1740#1578'|'#1588#1585#1581
      FieldName = 'Comment'
      Size = 300
    end
    object qryItems2Price: TBCDField
      DisplayLabel = #1576#1607' '#1578#1601#1705#1740#1705' '#1606#1608#1593' '#1601#1593#1575#1604#1740#1578'|'#1605#1576#1604#1594
      FieldName = 'Price'
      currency = True
      Precision = 19
    end
    object qryItems2InfoPercent: TFloatField
      DisplayLabel = #1576#1607' '#1578#1601#1705#1740#1705' '#1606#1608#1593' '#1601#1593#1575#1604#1740#1578'|'#1583#1585#1589#1583
      FieldName = 'InfoPercent'
    end
    object qryItems2Descriptions: TWideStringField
      FieldName = 'Descriptions'
      Size = 1000
    end
    object qryItems2ItemID: TIntegerField
      FieldName = 'ItemID'
    end
    object qryItems2ProfitOrLossID: TIntegerField
      FieldName = 'ProfitOrLossID'
    end
    object qryItems2InfoID: TIntegerField
      FieldName = 'InfoID'
    end
    object qryItems2Kind: TWordField
      FieldName = 'Kind'
    end
    object qryItems2SourceInfo: TWideStringField
      FieldName = 'SourceInfo'
      Size = 100
    end
  end
  object srcItems2: TDataSource
    DataSet = qryItems2
    Left = 388
    Top = 135
  end
  object qryItems1: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'ProfitOrLossID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT       *'
      'FROM            Cnt.ProfitOrLosssItems'
      'WHERE        (Kind = 1) AND (ProfitOrLossID = :ProfitOrLossID)')
    Left = 82
    Top = 112
    object WideStringField7: TWideStringField
      DisplayLabel = #1576#1607' '#1578#1601#1705#1740#1705' Invoice|'#1588#1585#1581
      FieldName = 'Comment'
      Size = 300
    end
    object BCDField4: TBCDField
      DisplayLabel = #1576#1607' '#1578#1601#1705#1740#1705' Invoice|'#1605#1576#1604#1594
      FieldName = 'Price'
      currency = True
      Precision = 19
    end
    object FloatField4: TFloatField
      DisplayLabel = #1576#1607' '#1578#1601#1705#1740#1705' Invoice|'#1583#1585#1589#1583
      FieldName = 'InfoPercent'
    end
    object WideStringField8: TWideStringField
      FieldName = 'Descriptions'
      Size = 1000
    end
    object qryItems1ItemID: TIntegerField
      FieldName = 'ItemID'
    end
    object qryItems1ProfitOrLossID: TIntegerField
      FieldName = 'ProfitOrLossID'
    end
    object qryItems1InfoID: TIntegerField
      FieldName = 'InfoID'
    end
    object qryItems1Kind: TWordField
      FieldName = 'Kind'
    end
    object qryItems1SourceInfo: TWideStringField
      FieldName = 'SourceInfo'
      Size = 100
    end
  end
  object srcItems1: TDataSource
    DataSet = qryItems1
    Left = 164
    Top = 119
  end
  object qryProfitOrLosss: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryProfitOrLosssAfterInsert
    AfterPost = qryProfitOrLosssAfterPost
    AfterScroll = qryProfitOrLosssAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT      *'
      'FROM            cnt.ProfitOrLosss'
      '')
    Left = 298
    Top = 8
    object qryProfitOrLosssProfitOrLossID: TIntegerField
      FieldName = 'ProfitOrLossID'
    end
    object qryProfitOrLosssProjectCode: TIntegerField
      FieldName = 'ProjectCode'
    end
    object qryProfitOrLosssProjectDate: TStringField
      FieldName = 'ProjectDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryProfitOrLosssClientCode: TIntegerField
      FieldName = 'ClientCode'
    end
    object qryProfitOrLosssClientName: TWideStringField
      FieldName = 'ClientName'
      Size = 200
    end
    object qryProfitOrLosssAverageDIR: TFloatField
      FieldName = 'AverageDIR'
    end
    object qryProfitOrLosssAverageDSO: TFloatField
      FieldName = 'AverageDSO'
    end
    object qryProfitOrLosssRevenueSum: TBCDField
      DisplayLabel = #1580#1605#1593' '#1583#1585#1570#1605#1583
      FieldName = 'RevenueSum'
      currency = True
      Precision = 19
    end
    object qryProfitOrLosssCostSum: TBCDField
      DisplayLabel = #1580#1605#1593' '#1607#1586#1740#1606#1607
      FieldName = 'CostSum'
      currency = True
      Precision = 19
    end
    object qryProfitOrLosssGrossProfit: TBCDField
      DisplayLabel = #1587#1608#1583' '#1606#1575#1582#1575#1604#1589
      FieldName = 'GrossProfit'
      currency = True
      Precision = 19
    end
    object qryProfitOrLosssNetProfit: TBCDField
      DisplayLabel = #1587#1608#1583' '#1582#1575#1604#1589
      FieldName = 'NetProfit'
      currency = True
      Precision = 19
    end
    object qryProfitOrLosssLatePaymentsToContractors: TBCDField
      DisplayLabel = #1578#1571#1579#1740#1585#1583#1740#1585#1705#1585#1583' '#1662#1585#1583#1575#1582#1578' '#1662#1608#1604' '#1576#1607' '#1662#1740#1605#1575#1606#1705#1575#1585#1575#1606' ('#1607#1586#1740#1606#1607' '#1607#1575')'
      FieldName = 'LatePaymentsToContractors'
      OnChange = qryProfitOrLosssLatePaymentsToContractorsChange
      currency = True
      Precision = 19
    end
    object qryProfitOrLosssLatePaymentsToClients: TBCDField
      DisplayLabel = #1578#1571#1579#1740#1585' '#1583#1740#1585#1705#1585#1583' '#1583#1585#1740#1575#1601#1578' '#1662#1608#1604' '#1575#1586' '#1705#1575#1585#1601#1585#1605#1575#1740#1575#1606' ('#1583#1585#1570#1605#1583#1607#1575') '
      FieldName = 'LatePaymentsToClients'
      OnChange = qryProfitOrLosssLatePaymentsToContractorsChange
      currency = True
      Precision = 19
    end
    object qryProfitOrLosssFinallProfit: TBCDField
      DisplayLabel = #1587#1608#1583' '#1705#1604
      FieldName = 'FinallProfit'
      currency = True
      Precision = 19
    end
  end
  object srcProfitOrLosss: TDataSource
    DataSet = qryProfitOrLosss
    OnStateChange = srcProfitOrLosssStateChange
    Left = 420
    Top = 7
  end
  object qryItems6: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'ProfitOrLossID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT       *'
      'FROM            Cnt.ProfitOrLosssItems'
      'WHERE        (Kind = 6) AND (ProfitOrLossID = :ProfitOrLossID)')
    Left = 330
    Top = 328
    object qryItems6Comment: TWideStringField
      DisplayLabel = #1705#1587#1608#1585#1575#1578' '#1602#1575#1606#1608#1606#1740'|'#1588#1585#1581
      FieldName = 'Comment'
      Size = 300
    end
    object qryItems6Price: TBCDField
      DisplayLabel = #1705#1587#1608#1585#1575#1578' '#1602#1575#1606#1608#1606#1740'|'#1605#1576#1604#1594
      FieldName = 'Price'
      currency = True
      Precision = 19
    end
    object qryItems6ItemID: TIntegerField
      FieldName = 'ItemID'
    end
    object qryItems6ProfitOrLossID: TIntegerField
      FieldName = 'ProfitOrLossID'
    end
    object qryItems6InfoID: TIntegerField
      FieldName = 'InfoID'
    end
    object qryItems6Kind: TWordField
      FieldName = 'Kind'
    end
    object qryItems6InfoPercent: TFloatField
      FieldName = 'InfoPercent'
    end
    object qryItems6SourceInfo: TWideStringField
      FieldName = 'SourceInfo'
      Size = 100
    end
    object qryItems6Descriptions: TWideStringField
      FieldName = 'Descriptions'
      Size = 1000
    end
  end
  object srcItems6: TDataSource
    DataSet = qryItems6
    Left = 460
    Top = 343
  end
  object qryFn_ProfitOrLoss: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryFn_ProfitOrLossAfterOpen
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'ProjectCode'
        DataType = ftWideString
        Size = 1
        Value = '1'
      end>
    SQL.Strings = (
      
        'SELECT        InfoID, ProjectCode, Kind, Comment, Price, InfoPer' +
        'cent, SourceInfo, Descriptions'
      
        'FROM            Cnt.Fn_ProfitOrLoss( :ProjectCode ) AS Fn_Profit' +
        'OrLoss_1'
      '')
    Left = 178
    Top = 304
    object qryFn_ProfitOrLossInfoID: TIntegerField
      FieldName = 'InfoID'
      ReadOnly = True
    end
    object qryFn_ProfitOrLossProjectCode: TIntegerField
      FieldName = 'ProjectCode'
    end
    object qryFn_ProfitOrLossKind: TWordField
      FieldName = 'Kind'
    end
    object qryFn_ProfitOrLossComment: TWideStringField
      FieldName = 'Comment'
      Size = 300
    end
    object qryFn_ProfitOrLossPrice: TBCDField
      FieldName = 'Price'
      Precision = 19
    end
    object qryFn_ProfitOrLossInfoPercent: TFloatField
      FieldName = 'InfoPercent'
    end
    object qryFn_ProfitOrLossSourceInfo: TWideStringField
      FieldName = 'SourceInfo'
      Size = 100
    end
    object qryFn_ProfitOrLossDescriptions: TWideStringField
      FieldName = 'Descriptions'
      Size = 1000
    end
  end
  object qryFn_ProfitOrLossValue: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryFn_ProfitOrLossAfterOpen
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'ProjectCode'
        DataType = ftWideString
        Size = 1
        Value = '1'
      end>
    SQL.Strings = (
      'SELECT        ProjectCode, AverageDIR, AverageDSO'
      
        'FROM            Cnt.Fn_ProfitOrLossValue( :ProjectCode) AS Fn_Pr' +
        'ofitOrLossValue_1')
    Left = 218
    Top = 368
    object qryFn_ProfitOrLossValueProjectCode: TIntegerField
      FieldName = 'ProjectCode'
    end
    object qryFn_ProfitOrLossValueAverageDIR: TFloatField
      FieldName = 'AverageDIR'
    end
    object qryFn_ProfitOrLossValueAverageDSO: TFloatField
      FieldName = 'AverageDSO'
    end
  end
end

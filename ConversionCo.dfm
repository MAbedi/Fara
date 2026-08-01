inherited ConversionCoF: TConversionCoF
  Left = 381
  Top = 221
  Caption = #1605#1593#1585#1601#1610' '#1590#1585#1575#1610#1576' '#1578#1576#1583#1610#1604
  ClientHeight = 600
  ClientWidth = 1024
  OldCreateOrder = True
  ExplicitWidth = 1040
  ExplicitHeight = 639
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 559
    Width = 1024
    TabOrder = 1
    ExplicitTop = 559
    ExplicitWidth = 1024
    DesignSize = (
      1024
      41)
    object DBNavigator1: TDBNavigator [0]
      Left = 398
      Top = 8
      Width = 312
      Height = 25
      DataSource = Src_TransForms
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Anchors = [akLeft, akTop, akRight, akBottom]
      Flat = True
      TabOrder = 3
    end
    object newPanel: TPanel
      Left = 715
      Top = 1
      Width = 308
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        308
        39)
      object BitBtn3: TBitBtn
        Left = 231
        Top = 7
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 155
        Top = 7
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        Left = 79
        Top = 7
        Width = 75
        Height = 25
        Action = DataSetDelete1_
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        TabOrder = 2
      end
      object BitBtn10: TBitBtn
        Left = 3
        Top = 8
        Width = 75
        Height = 25
        Action = actCopy
        Anchors = [akTop, akRight]
        Caption = #1603#1662#1610' '#1601#1585#1605#1608#1604
        TabOrder = 3
      end
    end
    object okPanel: TPanel
      Left = 550
      Top = 1
      Width = 165
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
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
        Left = 8
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
    object BitBtn6: TBitBtn
      Left = 240
      Top = 8
      Width = 75
      Height = 25
      Action = actSendExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 4
    end
    object BitBtn2: TBitBtn
      Left = 161
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 5
    end
    object BitBtn1: TBitBtn
      Left = 83
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 6
    end
    object BitBtn9: TBitBtn
      Left = 319
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Caption = #1670#1600#1600#1600#1575#1662
      TabOrder = 7
    end
  end
  inherited Panel2: TPanel
    Width = 1024
    TabOrder = 2
    ExplicitWidth = 1024
    DesignSize = (
      1024
      53)
    inherited ImgTemplate: TImage
      Left = 1019
      ExplicitLeft = 1019
    end
    inherited lblCaption: TLabel
      Left = 916
      ExplicitLeft = 916
    end
    inherited lblBaseDate: TLabel
      Left = 465
      ExplicitLeft = 465
    end
    object Label1: TLabel
      Left = 113
      Top = 8
      Width = 30
      Height = 13
      Caption = #1588#1605#1575#1585#1607
      FocusControl = EdtFormNo
    end
    object Label2: TLabel
      Left = 113
      Top = 31
      Width = 21
      Height = 13
      Caption = #1578#1575#1585#1610#1582
      FocusControl = EdtDate
    end
    object btnSearchReciptNumber: TSpeedButton
      Left = 14
      Top = 2
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = btnSearchReciptNumberClick
    end
    object chkPortionPercent: TCheckBox
      Left = 164
      Top = 29
      Width = 99
      Height = 17
      BiDiMode = bdRightToLeft
      Caption = #1583#1585' '#1589#1583' '#1601#1593#1575#1604' '#1576#1575#1588#1583
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      OnClick = chkPortionPercentClick
    end
    object EdtFormNo: TDBEdit
      Left = 40
      Top = 4
      Width = 71
      Height = 21
      DataField = 'TransFormNo'
      DataSource = Src_TransForms
      TabOrder = 0
    end
    object EdtDate: TDBEdit
      Left = 14
      Top = 27
      Width = 97
      Height = 21
      DataField = 'TransFormDate'
      DataSource = Src_TransForms
      TabOrder = 1
    end
    object dbchkTransFormState: TDBCheckBox
      Left = 202
      Top = 6
      Width = 61
      Height = 17
      Alignment = taLeftJustify
      BiDiMode = bdLeftToRight
      Caption = #1594#1610#1585' '#1601#1593#1575#1604
      DataField = 'TransFormState'
      DataSource = Src_TransForms
      ParentBiDiMode = False
      TabOrder = 3
      ValueChecked = '1'
      ValueUnchecked = '0'
      WordWrap = True
    end
  end
  inherited Panel3: TPanel
    Top = 246
    Width = 1024
    Height = 313
    TabOrder = 0
    ExplicitTop = 246
    ExplicitWidth = 1024
    ExplicitHeight = 313
    object PageControl1: TPageControl
      Left = 2
      Top = 2
      Width = 725
      Height = 309
      ActivePage = TabSheetOutFit
      Align = alClient
      TabOrder = 1
      OnChange = PageControl1Change
      object TabSheetPrimary: TTabSheet
        Caption = #1605#1608#1575#1583' '#1575#1608#1604#1610#1607
        ImageIndex = 1
        object PnlAll: TPanel
          Left = 0
          Top = 257
          Width = 717
          Height = 24
          Align = alBottom
          TabOrder = 1
          object PnlDeleteAll: TPanel
            Left = 544
            Top = 1
            Width = 172
            Height = 22
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 0
            object SpeedButton16: TSpeedButton
              Left = 94
              Top = 0
              Width = 78
              Height = 22
              Action = actGetExcelPrimary
              Align = alRight
              BiDiMode = bdLeftToRight
              Caption = 'Excel'#1582#1608#1575#1606#1583#1606' '
              ParentShowHint = False
              ParentBiDiMode = False
              ShowHint = True
              ExplicitLeft = 136
              ExplicitTop = 1
            end
            object SpeedButton5: TSpeedButton
              Left = 16
              Top = 0
              Width = 78
              Height = 22
              Action = actDeleteAll
              Align = alRight
              BiDiMode = bdLeftToRight
              ParentShowHint = False
              ParentBiDiMode = False
              ShowHint = True
              ExplicitLeft = 6
              ExplicitTop = 1
            end
          end
        end
        object grdPrimary: TCedarDbgrid
          Tag = 111
          Left = 0
          Top = 0
          Width = 717
          Height = 257
          Hint = '2'
          Align = alClient
          Color = clCream
          DataSource = srcPrimary
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
          OnEditButtonClick = grdPrimaryEditButtonClick
          OnEnter = grdPrimaryEnter
          OnKeyPress = grdPrimaryKeyPress
          ActiveSearchPanel = False
          SelectFooterIndex = 0
          Columns = <
            item
              ButtonStyle = cbsEllipsis
              CellButtons = <>
              DynProps = <>
              EditButton.Style = ebsEllipsisEh
              EditButton.Visible = True
              EditButtons = <>
              FieldName = 'StuffCode'
              Footers = <>
              Title.Alignment = taCenter
              Width = 37
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_StuffName'
              Footers = <>
              Title.Alignment = taCenter
              Width = 66
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_StuffUnit'
              Footers = <>
              Title.Alignment = taCenter
              Width = 37
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'PortionPercent'
              Footers = <>
              Title.Alignment = taCenter
              Width = 66
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Entity'
              Footers = <>
              Title.Alignment = taCenter
              Width = 33
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Weight'
              Footers = <>
              Title.Alignment = taCenter
              Width = 31
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'StanRate'
              Footers = <>
              Width = 58
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'StuffPersent'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'StuffPersentRate'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'CycleMonth'
              Footers = <>
              Width = 48
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object TabSheetWage: TTabSheet
        Caption = #1583#1587#1578#1605#1586#1583' '#1608' '#1662#1585#1587#1606#1604#1610
        ImageIndex = 3
        object grdWage: TCedarDbgrid
          Tag = 111
          Left = 0
          Top = 0
          Width = 717
          Height = 281
          Hint = '4'
          Align = alClient
          Color = clCream
          DataSource = srcWage
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
          OnEditButtonClick = grdWageEditButtonClick
          OnEnter = grdPrimaryEnter
          OnKeyPress = grdPrimaryKeyPress
          ActiveSearchPanel = False
          SelectFooterIndex = 0
          Columns = <
            item
              ButtonStyle = cbsEllipsis
              CellButtons = <>
              DynProps = <>
              EditButton.Style = ebsEllipsisEh
              EditButton.Visible = True
              EditButtons = <>
              FieldName = 'Code'
              Footers = <>
              Width = 25
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_CodeName'
              Footers = <>
              Width = 35
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Amount1'
              Footers = <>
              Width = 39
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Amount2'
              Footers = <>
              Width = 54
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'StanRate'
              Footers = <>
              Width = 80
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '__StanRateAmount'
              Footers = <>
              Width = 80
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'CycleMonth'
              Footers = <>
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object TabSheetSuperadd: TTabSheet
        Caption = #1587#1585#1576#1575#1585' '#1578#1608#1604#1610#1583
        ImageIndex = 4
        object grdSuperadd: TCedarDbgrid
          Tag = 111
          Left = 0
          Top = 0
          Width = 717
          Height = 281
          Hint = '5'
          Align = alClient
          Color = clCream
          DataSource = srcSuperadd
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
          OnEditButtonClick = grdSuperaddEditButtonClick
          OnEnter = grdPrimaryEnter
          OnKeyPress = grdPrimaryKeyPress
          ActiveSearchPanel = False
          SelectFooterIndex = 0
          Columns = <
            item
              ButtonStyle = cbsEllipsis
              CellButtons = <>
              DynProps = <>
              EditButton.Style = ebsEllipsisEh
              EditButton.Visible = True
              EditButtons = <>
              FieldName = 'Code'
              Footers = <>
              Width = 37
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_CodeName'
              Footers = <>
              Width = 36
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Amount1'
              Footers = <>
              Width = 54
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'StanRate'
              Footers = <>
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '__StanRateAmount'
              Footers = <>
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'CycleMonth'
              Footers = <>
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object TabSheetOutFit: TTabSheet
        Caption = #1578#1580#1607#1610#1586#1575#1578' '#1608' '#1575#1605#1603#1575#1606#1575#1578
        ImageIndex = 2
        object grdOutFit: TCedarDbgrid
          Tag = 111
          Left = 0
          Top = 0
          Width = 717
          Height = 281
          Hint = '3'
          Align = alClient
          Color = clCream
          DataSource = srcOutFit
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
          OnEditButtonClick = grdOutFitEditButtonClick
          OnEnter = grdPrimaryEnter
          OnKeyPress = grdPrimaryKeyPress
          ActiveSearchPanel = False
          SelectFooterIndex = 0
          Columns = <
            item
              ButtonStyle = cbsEllipsis
              CellButtons = <>
              DynProps = <>
              EditButton.Style = ebsEllipsisEh
              EditButton.Visible = True
              EditButtons = <>
              FieldName = 'Code'
              Footers = <>
              Width = 56
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_CodeName'
              Footers = <>
              Width = 71
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Amount1'
              Footers = <>
              Width = 66
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'StanRate'
              Footers = <>
              Width = 93
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '__StanRateAmount'
              Footers = <>
              Width = 98
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'CycleMonth'
              Footers = <>
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object TabSheetAccessory: TTabSheet
        Caption = #1605#1581#1589#1608#1604#1575#1578' '#1601#1585#1593#1610
        ImageIndex = 5
        object grdAccessory: TCedarDbgrid
          Tag = 111
          Left = 0
          Top = 0
          Width = 717
          Height = 281
          Hint = '6'
          Align = alClient
          Color = clCream
          DataSource = srcAccessory
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
          OnEditButtonClick = grdPrimaryEditButtonClick
          OnEnter = grdPrimaryEnter
          OnKeyPress = grdPrimaryKeyPress
          ActiveSearchPanel = False
          SelectFooterIndex = 0
          Columns = <
            item
              ButtonStyle = cbsEllipsis
              CellButtons = <>
              DynProps = <>
              EditButton.Style = ebsEllipsisEh
              EditButton.Visible = True
              EditButtons = <>
              FieldName = 'StuffCode'
              Footers = <>
              Title.Alignment = taCenter
              Width = 57
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_StuffName'
              Footers = <>
              Title.Alignment = taCenter
              Width = 67
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_StuffUnit'
              Footers = <>
              Title.Alignment = taCenter
              Width = 75
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Entity'
              Footers = <>
              Title.Alignment = taCenter
              Width = 51
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Weight'
              Footers = <>
              Title.Alignment = taCenter
              Width = 55
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'CycleMonth'
              Footers = <>
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
    object Panel4: TPanel
      Left = 727
      Top = 2
      Width = 295
      Height = 309
      Align = alRight
      Caption = 'Panel4'
      TabOrder = 0
      object pnlProcessProduce: TPanel
        Left = 1
        Top = 284
        Width = 293
        Height = 24
        Align = alBottom
        TabOrder = 1
        object Panel6: TPanel
          Left = 203
          Top = 1
          Width = 89
          Height = 22
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            89
            22)
          object SpeedButton4: TSpeedButton
            Left = 6
            Top = 0
            Width = 78
            Height = 22
            Action = DataSetDelete2
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006B84
              C6000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
              A5000021A5000021A5000021A5000021A5006B84C600FF00FF00FF00FF000021
              A5009494F7000029E7000029E7000029E7000029E7000029E7000029E7000029
              E7000029E7000029E7000029E7000029E7000021A500FF00FF00FF00FF000021
              A500B5C6FF009CBDFF009CBDFF009CB5FF009CB5FF009CB5FF00638CF700638C
              F700638CF700638CF700526BF700526BF7000021A500FF00FF00FF00FF006B84
              C6000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
              A5000021A5000021A5000021A5000021A5006B84C600FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            ParentShowHint = False
            ParentBiDiMode = False
            ShowHint = True
          end
        end
      end
      object grdProcessProduce: TCedarDbgrid
        Tag = 111
        Left = 1
        Top = 1
        Width = 293
        Height = 283
        Hint = '1'
        Align = alClient
        Color = clCream
        DataSource = srcProcessProduce
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
        OnEditButtonClick = grdProcessProduceEditButtonClick
        OnEnter = grdPrimaryEnter
        OnKeyPress = grdPrimaryKeyPress
        ActiveSearchPanel = False
        SelectFooterIndex = 0
        Columns = <
          item
            ButtonStyle = cbsEllipsis
            CellButtons = <>
            DynProps = <>
            EditButton.Style = ebsEllipsisEh
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'ProcessID'
            Footers = <>
            Width = 46
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_ProcessName'
            Footers = <>
            Width = 60
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ProcessRow'
            Footers = <>
            Width = 28
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PrvCode'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CycleMonth'
            Footers = <>
            Width = 46
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object Panel1: TPanel [3]
    Left = 0
    Top = 146
    Width = 1024
    Height = 31
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    DesignSize = (
      1024
      31)
    object LblEntity: TLabel
      Left = 963
      Top = 9
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1605#1602#1583#1575#1585
      FocusControl = EdtEntity
      ExplicitLeft = 729
    end
    object LblWeight: TLabel
      Left = 835
      Top = 9
      Width = 16
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1608#1586#1606
      FocusControl = EdtWeight
      ExplicitLeft = 601
    end
    object Label8: TLabel
      Left = 111
      Top = 9
      Width = 68
      Height = 13
      Alignment = taRightJustify
      Caption = #1583#1608#1585#1607' '#1578#1608#1604#1610#1583' ('#1605#1575#1607')'#8207
      FocusControl = DBEdit4
    end
    object EdtEntity: TDBEdit
      Left = 860
      Top = 5
      Width = 101
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'Entity'
      DataSource = Src_TransForms
      TabOrder = 0
    end
    object EdtWeight: TDBEdit
      Left = 731
      Top = 5
      Width = 101
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'Weight'
      DataSource = Src_TransForms
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 12
      Top = 5
      Width = 97
      Height = 21
      DataField = 'CycleMonth'
      DataSource = Src_TransForms
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox [4]
    Left = 0
    Top = 177
    Width = 1024
    Height = 69
    Align = alTop
    Caption = ' '#1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610' '
    TabOrder = 5
    DesignSize = (
      1024
      69)
    object DBMemo1: TDBMemo
      Left = 8
      Top = 16
      Width = 999
      Height = 41
      Anchors = [akLeft, akTop, akRight]
      DataField = 'Note'
      DataSource = Src_TransForms
      TabOrder = 0
    end
  end
  object pnlEarth: TPanel [5]
    Left = 0
    Top = 53
    Width = 1024
    Height = 31
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    DesignSize = (
      1024
      31)
    object DBText2: TDBText
      Left = 615
      Top = 7
      Width = 217
      Height = 18
      Anchors = [akTop, akRight]
      Color = 13948116
      DataField = '_EarthGrpName'
      DataSource = Src_TransForms
      ParentColor = False
      Transparent = False
      ExplicitLeft = 381
    end
    object SpeedButton3: TSpeedButton
      Left = 835
      Top = 5
      Width = 23
      Height = 22
      Anchors = [akTop, akRight]
      Caption = '...'
      OnClick = SpeedButton3Click
      ExplicitLeft = 601
    end
    object Label5: TLabel
      Left = 964
      Top = 10
      Width = 44
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1603#1583' '#1605#1606#1591#1602#1607
      FocusControl = edtEarthGrpID
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 730
    end
    object lblEarthCost: TLabel
      Left = 113
      Top = 10
      Width = 72
      Height = 13
      Alignment = taRightJustify
      Caption = #1587#1591#1581' '#1586#1610#1585' '#1603#1588#1578
      FocusControl = edtEarthCost
    end
    object edtEarthGrpID: TDBEdit
      Left = 860
      Top = 6
      Width = 101
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'EarthGrpID'
      DataSource = Src_TransForms
      TabOrder = 0
      OnKeyDown = edtStuffModelKeyDown
    end
    object edtEarthCost: TDBEdit
      Left = 14
      Top = 6
      Width = 97
      Height = 21
      DataField = 'EarthCost'
      DataSource = Src_TransForms
      TabOrder = 1
    end
  end
  object pnl1: TPanel [6]
    Left = 0
    Top = 84
    Width = 1024
    Height = 31
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 6
    DesignSize = (
      1024
      31)
    object Label20: TLabel
      Left = 964
      Top = 9
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1603#1583' '#1605#1581#1589#1608#1604
      FocusControl = EdtStuffCode
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 730
    end
    object SpeedButton1: TSpeedButton
      Left = 835
      Top = 4
      Width = 23
      Height = 22
      Anchors = [akTop, akRight]
      Caption = '...'
      OnClick = SpeedButton1Click
      ExplicitLeft = 601
    end
    object DBTextStuffCode: TDBText
      Left = 612
      Top = 6
      Width = 217
      Height = 18
      Anchors = [akTop, akRight]
      Color = 13948116
      DataField = '_StuffName'
      DataSource = Src_TransForms
      ParentColor = False
      Transparent = False
      ExplicitLeft = 378
    end
    object Label7: TLabel
      Left = 113
      Top = 9
      Width = 62
      Height = 13
      Alignment = taRightJustify
      Caption = #1608#1575#1581#1583' '#1588#1605#1575#1585#1588
    end
    object DBText3: TDBText
      Left = 14
      Top = 6
      Width = 97
      Height = 18
      Color = 13948116
      DataField = '_UntilName'
      DataSource = Src_TransForms
      ParentColor = False
      Transparent = False
    end
    object EdtStuffCode: TDBEdit
      Left = 860
      Top = 5
      Width = 101
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'StuffCode'
      DataSource = Src_TransForms
      TabOrder = 0
      OnKeyDown = EdtStuffCodeKeyDown
    end
  end
  object pnlStuffCode: TPanel [7]
    Left = 0
    Top = 115
    Width = 1024
    Height = 31
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 7
    DesignSize = (
      1024
      31)
    object Label4: TLabel
      Left = 964
      Top = 10
      Width = 43
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1605#1583#1604' '#1603#1600#1600#1575#1604#1575
      FocusControl = edtStuffModel
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 730
    end
    object SpeedButton2: TSpeedButton
      Left = 835
      Top = 5
      Width = 23
      Height = 22
      Anchors = [akTop, akRight]
      Caption = '...'
      OnClick = SpeedButton2Click
      ExplicitLeft = 601
    end
    object DBText1: TDBText
      Left = 615
      Top = 7
      Width = 217
      Height = 18
      Anchors = [akTop, akRight]
      Color = 13948116
      DataField = '_StuffModelName'
      DataSource = Src_TransForms
      ParentColor = False
      Transparent = False
      ExplicitLeft = 381
    end
    object Label3: TLabel
      Left = 113
      Top = 10
      Width = 62
      Height = 13
      Alignment = taRightJustify
      Caption = #1588#1605#1575#1585#1607' '#1585#1575#1607#1606#1605#1575
      FocusControl = DBEdit1
    end
    object edtStuffModel: TDBEdit
      Left = 860
      Top = 6
      Width = 101
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'StuffModel'
      DataSource = Src_TransForms
      TabOrder = 0
      OnKeyDown = edtStuffModelKeyDown
    end
    object DBEdit1: TDBEdit
      Left = 14
      Top = 6
      Width = 97
      Height = 21
      DataField = 'ControlCode'
      DataSource = Src_TransForms
      TabOrder = 1
    end
  end
  inherited ActionList: TActionList
    Left = 440
    inherited DataSetInsert1: TDataSetInsert
      DataSource = Src_TransForms
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = Src_TransForms
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = Src_TransForms
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = Src_TransForms
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = Src_TransForms
    end
    object DataSetDelete2: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601' '#1601#1585#1570#1610#1606#1583
      DataSource = srcProcessProduce
    end
    object actSendExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendExcelExecute
    end
    object actPrint: TAction
      Caption = #1670#1600#1600#1600#1575#1662
      OnExecute = actPrintExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actDeleteAll: TAction
      Caption = #1581#1584#1601' '#1585#1583#1610#1601
      ImageIndex = 0
      OnExecute = actDeleteAllExecute
    end
    object actCopy: TAction
      Caption = #1603#1662#1610' '#1601#1585#1605#1608#1604' '#1587#1575#1582#1578
      OnExecute = actCopyExecute
    end
    object actGetExcelPrimary: TAction
      Caption = #1582#1608#1575#1606#1583#1606' Excel'
      OnExecute = actGetExcelPrimaryExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 512
    Top = 1
  end
  object qryPrimary: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeInsert = qryPrimaryBeforeInsert
    AfterInsert = qryPrimaryAfterInsert
    BeforeEdit = qryPrimaryBeforeEdit
    BeforePost = qryPrimaryBeforePost
    BeforeDelete = qryPrimaryBeforeDelete
    Parameters = <
      item
        Name = 'FormID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end
      item
        Name = 'ProcessID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM         TransFormItems'
      'WHERE     (TransFormID = :FormID)and( InfoType=0)'
      'and  ProcessID = :ProcessID'
      'ORDER BY ID')
    Left = 33
    Top = 319
    object qryPrimaryID: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1606#1583#1607
      FieldName = 'ID'
      Required = True
    end
    object qryPrimaryTransFormID: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607
      FieldName = 'TransFormID'
      Required = True
    end
    object qryPrimaryStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qryPrimaryEntity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'Entity'
      DisplayFormat = '#########0.0##########'
    end
    object qryPrimaryWeight: TFloatField
      DisplayLabel = #1608#1586#1606
      FieldName = 'Weight'
      DisplayFormat = '#########0.0##########'
    end
    object qryPrimaryPortionPercent: TFloatField
      DisplayLabel = #1587#1607#1605' ( '#1583#1585#1589#1583' )'#8207
      FieldName = 'PortionPercent'
      OnChange = qryPrimaryPortionPercentChange
    end
    object qryPrimary_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1603#1575#1604#1575'/'#1582#1583#1605#1575#1578
      FieldKind = fkLookup
      FieldName = '_StuffName'
      LookupDataSet = qryStuff_Unit_TecInf
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'c_StuffName'
      KeyFields = 'StuffCode'
      LookupCache = True
      ReadOnly = True
      Required = True
      Size = 150
      Lookup = True
    end
    object qryPrimary_StuffUnit: TStringField
      Tag = 3
      DisplayLabel = #1608#1575#1581#1583' '#1588#1605#1575#1585#1588
      FieldKind = fkLookup
      FieldName = '_StuffUnit'
      LookupDataSet = qryStuff_Unit_TecInf
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'UnitName'
      KeyFields = 'StuffCode'
      LookupCache = True
      ReadOnly = True
      Required = True
      Size = 100
      Lookup = True
    end
    object qryPrimaryStanRate: TBCDField
      DisplayLabel = #1606#1585#1582' '#1575#1587#1578#1575#1606#1583#1575#1585#1583
      FieldName = 'StanRate'
      Precision = 19
    end
    object qryPrimaryScheduleID: TIntegerField
      DisplayLabel = #1603#1583#1605#1585#1581#1604#1607' '#1578#1608#1604#1610#1583#1610
      FieldName = 'ScheduleID'
    end
    object qryPrimaryStuffPersent: TFloatField
      DisplayLabel = #1583#1585#1589#1583#1582#1604#1608#1589' '#1605#1608#1575#1583
      FieldName = 'StuffPersent'
    end
    object qryPrimaryStuffPersentRate: TBCDField
      DisplayLabel = #1606#1585#1582#8207#1583#1585#1589#1583#1582#1604#1608#1589' '#1605#1608#1575#1583
      FieldName = 'StuffPersentRate'
      Precision = 19
    end
    object qryPrimaryInfoType: TWordField
      FieldName = 'InfoType'
    end
    object qryPrimaryProcessID: TIntegerField
      FieldName = 'ProcessID'
    end
    object qryPrimaryCycleMonth: TFloatField
      DisplayLabel = #1605#1575#1607' '#1578#1581#1602#1602
      FieldName = 'CycleMonth'
    end
  end
  object srcPrimary: TDataSource
    DataSet = qryPrimary
    Left = 33
    Top = 360
  end
  object qry_TransForms: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qry_TransFormsAfterInsert
    BeforePost = qry_TransFormsBeforePost
    AfterPost = qry_TransFormsAfterPost
    BeforeCancel = qry_TransFormsBeforeCancel
    BeforeDelete = qry_TransFormsBeforeDelete
    AfterScroll = qry_TransFormsAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT     *'
      'FROM         TransForms'
      'ORDER BY TransFormNo')
    Left = 184
    Top = 161
    object qry_TransFormsTransFormID: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1606#1583#1607
      FieldName = 'TransFormID'
      Required = True
    end
    object qry_TransFormsTransFormNo: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607
      FieldName = 'TransFormNo'
      Required = True
    end
    object qry_TransFormsTransFormDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'TransFormDate'
      Required = True
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qry_TransFormsStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qry_TransForms_StuffName: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1603#1575#1604#1575'/'#1582#1583#1605#1575#1578
      FieldKind = fkLookup
      FieldName = '_StuffName'
      LookupDataSet = qryStuff_Unit_TecInf
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'c_StuffName'
      KeyFields = 'StuffCode'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qry_TransFormsEntity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'Entity'
    end
    object qry_TransFormsWeight: TFloatField
      DisplayLabel = #1608#1586#1606
      FieldName = 'Weight'
    end
    object qry_TransFormsNote: TStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
      FieldName = 'Note'
      Size = 250
    end
    object qry_TransFormsControlCode: TLargeintField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1585#1575#1607#1606#1605#1575
      FieldName = 'ControlCode'
    end
    object qry_TransFormsStuffModel: TIntegerField
      FieldName = 'StuffModel'
    end
    object qry_TransForms_StuffModelName: TStringField
      FieldKind = fkLookup
      FieldName = '_StuffModelName'
      LookupDataSet = qry_Lookup
      LookupKeyFields = 'LookUpID'
      LookupResultField = 'Name'
      KeyFields = 'StuffModel'
      LookupCache = True
      Size = 255
      Lookup = True
    end
    object qry_TransFormsEarthGrpID: TIntegerField
      DisplayLabel = #1603#1583' '#1605#1606#1591#1602#1607
      FieldName = 'EarthGrpID'
      Required = True
    end
    object qry_TransFormsEarthCost: TFloatField
      FieldName = 'EarthCost'
    end
    object qry_TransFormsCycleMonth: TFloatField
      DisplayLabel = #1583#1608#1585#1607' '#1578#1608#1604#1610#1583' ('#1605#1575#1607')'#8207
      FieldName = 'CycleMonth'
      Required = True
    end
    object qry_TransForms_UntilName: TStringField
      DisplayLabel = #1608#1575#1581#1583' '#1588#1605#1575#1585#1588
      FieldKind = fkLookup
      FieldName = '_UntilName'
      LookupDataSet = qryStuff_Unit_TecInf
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'UnitName'
      KeyFields = 'StuffCode'
      LookupCache = True
      Lookup = True
    end
    object qry_TransForms_EarthGrpName: TStringField
      FieldKind = fkLookup
      FieldName = '_EarthGrpName'
      LookupDataSet = qryEarthGroups
      LookupKeyFields = 'EarthGrpID'
      LookupResultField = 'EarthGrpName'
      KeyFields = 'EarthGrpID'
      Size = 100
      Lookup = True
    end
    object qry_TransFormsTransFormState: TWordField
      FieldName = 'TransFormState'
    end
  end
  object qryStuff_Unit_TecInf: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     StuffCoding.c_StuffCode, StuffCoding.c_StuffName,Unit' +
        's.UnitName,StuffCoding.c_StuffTecInfo'
      'FROM        Units INNER JOIN'
      
        '                  StuffCoding ON Units.UnitCode = StuffCoding.n_' +
        'UnitCode')
    Left = 524
    Top = 277
  end
  object Src_TransForms: TDataSource
    DataSet = qry_TransForms
    OnStateChange = Src_TransFormsStateChange
    Left = 288
    Top = 168
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
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
    Template.FileName = 'D:\Projects\Fara\BSell\Exe\Report\rptStuffCodingF3.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
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
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 448
    Top = 184
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 16669
      mmPrintPosition = 0
      object ppSysVarPageNo: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SysVarPageNo'
        OnGetText = ppSysVarPageNoGetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 6350
        mmLeft = 2117
        mmTop = 8996
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground1
      end
      object ppLblCompanyName: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LblCompanyName'
        OnGetText = ppLblCompanyNameGetText
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
        mmHeight = 6350
        mmLeft = 75406
        mmTop = 0
        mmWidth = 52123
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1605#1593#1585#1601#1610' '#1590#1585#1575#1610#1576' '#1578#1576#1583#1610#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8128
        mmLeft = 85852
        mmTop = 6879
        mmWidth = 31496
        BandType = 0
        LayerName = Foreground1
      end
      object ppLblPrintDate: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label11'
        OnGetText = ppLblPrintDateGetText
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
        mmLeft = 2117
        mmTop = 794
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 15081
        mmWidth = 197300
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5027
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
        mmTop = 0
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
          Version = '19.04'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline2'
          object ppTitleBand1: TppTitleBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 22490
            mmPrintPosition = 0
            object ppLabel10: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label10'
              Border.mmPadding = 0
              Caption = #1603#1583' '#1603#1575#1604#1575' '
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4763
              mmLeft = 178065
              mmTop = 16140
              mmWidth = 19050
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel12: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label12'
              AutoSize = False
              Border.mmPadding = 0
              Caption = #1588#1585#1581' '#1603#1575#1604#1575
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4657
              mmLeft = 119856
              mmTop = 16140
              mmWidth = 55827
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel15: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label15'
              AutoSize = False
              Border.mmPadding = 0
              Caption = #1608#1575#1581#1583' '#1588#1605#1575#1585#1588
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4657
              mmLeft = 98161
              mmTop = 16140
              mmWidth = 19315
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel17: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label17'
              AutoSize = False
              Border.mmPadding = 0
              Caption = #1608#1586#1606
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4657
              mmLeft = 1058
              mmTop = 16140
              mmWidth = 29898
              BandType = 1
              LayerName = Foreground
            end
            object ppLine2: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line2'
              Border.mmPadding = 0
              Position = lpBottom
              Weight = 0.750000000000000000
              mmHeight = 2381
              mmLeft = 0
              mmTop = 19315
              mmWidth = 197300
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel19: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label19'
              Border.mmPadding = 0
              Caption = '  '
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Yagut'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              mmHeight = 6085
              mmLeft = 175948
              mmTop = 16404
              mmWidth = 1588
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel20: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label20'
              Border.mmPadding = 0
              Caption = '  '
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Yagut'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              mmHeight = 6085
              mmLeft = 117740
              mmTop = 16404
              mmWidth = 1588
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel21: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label21'
              Border.mmPadding = 0
              Caption = '  '
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Yagut'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              mmHeight = 6085
              mmLeft = 96044
              mmTop = 16404
              mmWidth = 1588
              BandType = 1
              LayerName = Foreground
            end
            object ppLine5: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line5'
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 2117
              mmLeft = 0
              mmTop = 11906
              mmWidth = 197300
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel22: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label22'
              AutoSize = False
              Border.mmPadding = 0
              Caption = #1587#1607#1605
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4657
              mmLeft = 65617
              mmTop = 16140
              mmWidth = 29898
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel23: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label23'
              AutoSize = False
              Border.mmPadding = 0
              Caption = #1605#1602#1583#1575#1585
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4657
              mmLeft = 33338
              mmTop = 16140
              mmWidth = 29898
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel24: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label24'
              Border.mmPadding = 0
              Caption = '  '
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Yagut'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              mmHeight = 6085
              mmLeft = 63500
              mmTop = 16404
              mmWidth = 1588
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel25: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label25'
              Border.mmPadding = 0
              Caption = '  '
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Yagut'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              mmHeight = 6085
              mmLeft = 31221
              mmTop = 16404
              mmWidth = 1588
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel4: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label101'
              AutoSize = False
              Border.mmPadding = 0
              Caption = #1588#1605#1575#1585#1607
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 5292
              mmLeft = 187590
              mmTop = 0
              mmWidth = 9790
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel5: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label5'
              AutoSize = False
              Border.mmPadding = 0
              Caption = #1588#1585#1581' '#1603#1575#1604#1575
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 5419
              mmLeft = 118798
              mmTop = 0
              mmWidth = 32544
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel8: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label8'
              AutoSize = False
              Border.mmPadding = 0
              Caption = #1608#1586#1606
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 5419
              mmLeft = 16404
              mmTop = 0
              mmWidth = 29898
              BandType = 1
              LayerName = Foreground
            end
            object ppLine1: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line1'
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 2117
              mmLeft = 265
              mmTop = 5292
              mmWidth = 197380
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel14: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label14'
              AutoSize = False
              Border.mmPadding = 0
              Caption = #1588#1605#1575#1585#1607' '#1585#1575#1607#1606#1605#1575
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 5419
              mmLeft = 529
              mmTop = 0
              mmWidth = 14288
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel16: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label16'
              AutoSize = False
              Border.mmPadding = 0
              Caption = #1605#1602#1583#1575#1585
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 5419
              mmLeft = 47890
              mmTop = 0
              mmWidth = 29898
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel18: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label18'
              Border.mmPadding = 0
              Caption = '  '
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Yagut'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              mmHeight = 6085
              mmLeft = 77788
              mmTop = 529
              mmWidth = 1588
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel26: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label26'
              Border.mmPadding = 0
              Caption = '  '
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Yagut'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              mmHeight = 6085
              mmLeft = 46302
              mmTop = 529
              mmWidth = 1588
              BandType = 1
              LayerName = Foreground
            end
            object ppDBText1: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText1'
              Border.mmPadding = 0
              DataField = 'StuffCode'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 9
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 5927
              mmLeft = 153194
              mmTop = 5821
              mmWidth = 19315
              BandType = 1
              LayerName = Foreground
            end
            object ppDBText2: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText2'
              Border.mmPadding = 0
              DataField = '_StuffName'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 9
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 5419
              mmLeft = 118798
              mmTop = 5821
              mmWidth = 32544
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel3: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label3'
              AutoSize = False
              Border.mmPadding = 0
              Caption = #1603#1583' '#1603#1575#1604#1575' '
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 5419
              mmLeft = 153194
              mmTop = 0
              mmWidth = 19315
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel6: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label6'
              AutoSize = False
              Border.mmPadding = 0
              Caption = #1578#1575#1585#1610#1582
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 5419
              mmLeft = 174625
              mmTop = 0
              mmWidth = 11113
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel27: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label27'
              Border.mmPadding = 0
              Caption = '  '
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Yagut'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              mmHeight = 6085
              mmLeft = 172773
              mmTop = 529
              mmWidth = 1588
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel7: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label7'
              AutoSize = False
              Border.mmPadding = 0
              Caption = #1588#1585#1581' '#1605#1583#1604
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 5419
              mmLeft = 79375
              mmTop = 0
              mmWidth = 21431
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel28: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label28'
              AutoSize = False
              Border.mmPadding = 0
              Caption = #1603#1583' '#1605#1583#1604
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 5419
              mmLeft = 102923
              mmTop = 0
              mmWidth = 13758
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel29: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label29'
              Border.mmPadding = 0
              Caption = '  '
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Yagut'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              mmHeight = 6085
              mmLeft = 14817
              mmTop = 529
              mmWidth = 1588
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel30: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label30'
              Border.mmPadding = 0
              Caption = '  '
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Yagut'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              mmHeight = 6085
              mmLeft = 151342
              mmTop = 529
              mmWidth = 1588
              BandType = 1
              LayerName = Foreground
            end
            object ppDBText3: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText3'
              Border.mmPadding = 0
              DataField = 'TransFormDate'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 9
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 5927
              mmLeft = 174625
              mmTop = 5821
              mmWidth = 11113
              BandType = 1
              LayerName = Foreground
            end
            object ppDBText6: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText6'
              Border.mmPadding = 0
              DataField = 'TransFormNo'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 9
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 5927
              mmLeft = 187590
              mmTop = 5821
              mmWidth = 9790
              BandType = 1
              LayerName = Foreground
            end
            object ppDBText7: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText7'
              Border.mmPadding = 0
              DataField = 'StuffModel'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 9
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 5927
              mmLeft = 102923
              mmTop = 5821
              mmWidth = 13758
              BandType = 1
              LayerName = Foreground
            end
            object ppDBText8: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText8'
              Border.mmPadding = 0
              DataField = '_StuffModelName'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 9
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 5419
              mmLeft = 79375
              mmTop = 5821
              mmWidth = 21431
              BandType = 1
              LayerName = Foreground
            end
            object ppDBText13: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText13'
              Border.mmPadding = 0
              DataField = 'Entity'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 9
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 5927
              mmLeft = 47890
              mmTop = 5821
              mmWidth = 29898
              BandType = 1
              LayerName = Foreground
            end
            object ppDBText14: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText14'
              Border.mmPadding = 0
              DataField = 'Weight'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 9
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 5927
              mmLeft = 16404
              mmTop = 5821
              mmWidth = 29898
              BandType = 1
              LayerName = Foreground
            end
            object ppDBText15: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText15'
              Border.mmPadding = 0
              DataField = 'ControlCode'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 9
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 5927
              mmLeft = 529
              mmTop = 5821
              mmWidth = 14288
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel13: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label13'
              Border.mmPadding = 0
              Caption = '  '
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Yagut'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              mmHeight = 6085
              mmLeft = 101071
              mmTop = 529
              mmWidth = 1588
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel11: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label201'
              Border.mmPadding = 0
              Caption = '  '
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Yagut'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              mmHeight = 6085
              mmLeft = 116946
              mmTop = 529
              mmWidth = 1588
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel9: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label9'
              Border.mmPadding = 0
              Caption = '  '
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Yagut'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              mmHeight = 6085
              mmLeft = 185738
              mmTop = 529
              mmWidth = 1588
              BandType = 1
              LayerName = Foreground
            end
          end
          object ppDetailBand2: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 6350
            mmPrintPosition = 0
            object ppDBText4: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText4'
              Border.mmPadding = 0
              DataField = 'StuffCode'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 5821
              mmLeft = 176477
              mmTop = 0
              mmWidth = 19315
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText5: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText5'
              Border.mmPadding = 0
              DataField = '_StuffName'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6350
              mmLeft = 119856
              mmTop = 0
              mmWidth = 55827
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText9: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText9'
              Border.mmPadding = 0
              DataField = '_StuffUnit'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6350
              mmLeft = 98161
              mmTop = 0
              mmWidth = 19315
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText10: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText10'
              Border.mmPadding = 0
              DataField = 'PortionPercent'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6350
              mmLeft = 65617
              mmTop = 0
              mmWidth = 29898
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText11: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText11'
              Border.mmPadding = 0
              DataField = 'Entity'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6350
              mmLeft = 33338
              mmTop = 0
              mmWidth = 29898
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText12: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText12'
              Border.mmPadding = 0
              DataField = 'Weight'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6350
              mmLeft = 1058
              mmTop = 0
              mmWidth = 29898
              BandType = 4
              LayerName = Foreground
            end
          end
          object ppSummaryBand2: TppSummaryBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 11113
            mmPrintPosition = 0
            object ppLabel1: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label1'
              AutoSize = False
              Border.mmPadding = 0
              Caption = #1578#1593#1583#1575#1583' '#1590#1585#1575#1610#1576':'#8207
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 9
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 5292
              mmLeft = 176477
              mmTop = 1323
              mmWidth = 13229
              BandType = 7
              LayerName = Foreground
            end
            object ppLine6: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line6'
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 2117
              mmLeft = 0
              mmTop = 0
              mmWidth = 197300
              BandType = 7
              LayerName = Foreground
            end
            object ppLine7: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line7'
              Border.mmPadding = 0
              ParentWidth = True
              Style = lsDouble
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 0
              mmTop = 7938
              mmWidth = 197300
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc1: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc1'
              Border.mmPadding = 0
              DataField = 'StuffCode'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 11
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DBCalcType = dcCount
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 7144
              mmLeft = 158486
              mmTop = 529
              mmWidth = 17198
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc2: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc2'
              Border.mmPadding = 0
              DataField = 'Entity'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 11
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 7144
              mmLeft = 33338
              mmTop = 529
              mmWidth = 29898
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc3: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc3'
              Border.mmPadding = 0
              DataField = 'Weight'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 11
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 7144
              mmLeft = 1058
              mmTop = 529
              mmWidth = 29898
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc4: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc4'
              Border.mmPadding = 0
              DataField = 'PortionPercent'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 11
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 7144
              mmLeft = 65617
              mmTop = 529
              mmWidth = 29898
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel31: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label31'
              Border.mmPadding = 0
              Caption = #1580#1605#1593':'#8207
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 9
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 5292
              mmLeft = 98161
              mmTop = 1323
              mmWidth = 5027
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
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 2117
      mmPrintPosition = 0
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line4'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
        BandType = 8
        LayerName = Foreground1
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
  object ppDBPipeline1: TppDBPipeline
    DataSource = Src_TransForms
    OpenDataSource = False
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'DBPipeline1'
    Left = 528
    Top = 183
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'TransFormID'
      FieldName = 'TransFormID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'TransFormNo'
      FieldName = 'TransFormNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'TransFormDate'
      FieldName = 'TransFormDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'StuffCode'
      FieldName = 'StuffCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = '_StuffName'
      FieldName = '_StuffName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'Entity'
      FieldName = 'Entity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'Weight'
      FieldName = 'Weight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'Note'
      FieldName = 'Note'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'ControlCode'
      FieldName = 'ControlCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'StuffModel'
      FieldName = 'StuffModel'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = '_StuffModelName'
      FieldName = '_StuffModelName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'EarthGrpID'
      FieldName = 'EarthGrpID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'EarthCost'
      FieldName = 'EarthCost'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'CycleMonth'
      FieldName = 'CycleMonth'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = '_UntilName'
      FieldName = '_UntilName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = '_EarthGrpName'
      FieldName = '_EarthGrpName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'TransFormState'
      FieldName = 'TransFormState'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = srcPrimary
    OpenDataSource = False
    UserName = 'DBPipeline2'
    Left = 616
    Top = 183
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
      FieldAlias = 'TransFormID'
      FieldName = 'TransFormID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField3: TppField
      FieldAlias = 'StuffCode'
      FieldName = 'StuffCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField4: TppField
      FieldAlias = 'Entity'
      FieldName = 'Entity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField5: TppField
      FieldAlias = 'Weight'
      FieldName = 'Weight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField6: TppField
      FieldAlias = 'PortionPercent'
      FieldName = 'PortionPercent'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField7: TppField
      FieldAlias = '_StuffName'
      FieldName = '_StuffName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField8: TppField
      FieldAlias = '_StuffUnit'
      FieldName = '_StuffUnit'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
  end
  object qry_Lookup: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT     LookUpID,Name'
      'FROM         LookUps'
      'WHERE(Kind=15)')
    Left = 232
    Top = 81
  end
  object qryProcessProduce: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeInsert = qryProcessProduceBeforeInsert
    AfterInsert = qryProcessProduceAfterInsert
    BeforePost = qryPrimaryBeforePost
    BeforeDelete = qryPrimaryBeforeDelete
    AfterScroll = qryProcessProduceAfterScroll
    Parameters = <
      item
        Name = 'TransFormID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM         ProcessProduce'
      'WHERE     (TransFormID = :TransFormID)'
      '')
    Left = 702
    Top = 279
    object qryProcessProduceProcessProduceID: TIntegerField
      FieldName = 'ProcessProduceID'
      Required = True
    end
    object qryProcessProduceTransFormID: TIntegerField
      FieldName = 'TransFormID'
      Required = True
    end
    object qryProcessProduceProcessID: TIntegerField
      DisplayLabel = #1603#1583' '#1601#1585#1570#1610#1606#1583
      FieldName = 'ProcessID'
      Required = True
    end
    object qryProcessProduce_ProcessName: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1601#1585#1570#1610#1606#1583
      FieldKind = fkLookup
      FieldName = '_ProcessName'
      LookupDataSet = qry_ProcessInfo
      LookupKeyFields = 'ProcessID'
      LookupResultField = 'ProcessName'
      KeyFields = 'ProcessID'
      Size = 100
      Lookup = True
    end
    object qryProcessProduceProcessRow: TIntegerField
      DisplayLabel = #1585#1583#1610#1601
      FieldName = 'ProcessRow'
      Required = True
    end
    object qryProcessProducePrvCode: TIntegerField
      DisplayLabel = #1603#1583' '#1662#1610#1588' '#1606#1610#1575#1586
      FieldName = 'PrvCode'
      Required = True
    end
    object qryProcessProduceCycleMonth: TFloatField
      DisplayLabel = #1605#1575#1607' '#1578#1581#1602#1602
      FieldName = 'CycleMonth'
      Required = True
    end
  end
  object srcProcessProduce: TDataSource
    DataSet = qryProcessProduce
    Left = 702
    Top = 336
  end
  object qrySuperadd: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeInsert = qryPrimaryBeforeInsert
    AfterInsert = qrySuperaddAfterInsert
    BeforePost = qryPrimaryBeforePost
    BeforeDelete = qryPrimaryBeforeDelete
    OnCalcFields = qryOutFitCalcFields
    Parameters = <
      item
        Name = 'TransFormID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ProcessID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM         TransFormInfo'
      'WHERE     (InfoType = 3) AND(TransFormID = :TransFormID)'
      'and  ProcessID = :ProcessID'
      'ORDER BY ID')
    Left = 176
    Top = 327
    object qrySuperaddCycleMonth: TFloatField
      DisplayLabel = #1605#1575#1607' '#1578#1581#1602#1602
      FieldName = 'CycleMonth'
    end
    object qrySuperaddID: TIntegerField
      FieldName = 'ID'
    end
    object qrySuperaddTransFormID: TIntegerField
      FieldName = 'TransFormID'
    end
    object qrySuperaddInfoType: TWordField
      FieldName = 'InfoType'
    end
    object qrySuperaddCode: TIntegerField
      DisplayLabel = #1603#1583' '
      FieldName = 'Code'
      Required = True
    end
    object qrySuperadd_CodeName: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '
      FieldKind = fkLookup
      FieldName = '_CodeName'
      LookupDataSet = qryScheduleInfo
      LookupKeyFields = 'ScheduleId'
      LookupResultField = 'InfoName'
      KeyFields = 'Code'
      LookupCache = True
      Required = True
      Size = 150
      Lookup = True
    end
    object qrySuperaddAmount1: TFloatField
      DisplayLabel = #1578#1593#1583#1575#1583
      FieldName = 'Amount1'
      Required = True
    end
    object qrySuperaddStanRate: TBCDField
      DisplayLabel = #1606#1585#1582' '#1575#1587#1578#1575#1606#1583#1575#1585#1583
      FieldName = 'StanRate'
      Precision = 19
    end
    object qrySuperadd__StanRateAmount: TCurrencyField
      DisplayLabel = #1605#1576#1604#1594' '#1575#1587#1578#1575#1606#1583#1575#1585#1583
      FieldKind = fkCalculated
      FieldName = '__StanRateAmount'
      Calculated = True
    end
    object qrySuperaddProcessID: TIntegerField
      FieldName = 'ProcessID'
    end
  end
  object srcSuperadd: TDataSource
    DataSet = qrySuperadd
    Left = 184
    Top = 384
  end
  object qryAccessory: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeInsert = qryPrimaryBeforeInsert
    AfterInsert = qryAccessoryAfterInsert
    BeforePost = qryPrimaryBeforePost
    BeforeDelete = qryPrimaryBeforeDelete
    Parameters = <
      item
        Name = 'FormID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ProcessID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM         TransFormItems'
      'WHERE     (TransFormID = :FormID)and( InfoType=1)'
      'and  ProcessID = :ProcessID'
      'ORDER BY ID'
      '')
    Left = 360
    Top = 303
    object qryAccessoryCycleMonth: TFloatField
      DisplayLabel = #1605#1575#1607' '#1578#1581#1602#1602
      FieldName = 'CycleMonth'
    end
    object qryAccessoryID: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1606#1583#1607
      FieldName = 'ID'
      Required = True
    end
    object qryAccessoryTransFormID: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607
      FieldName = 'TransFormID'
      Required = True
    end
    object qryAccessoryStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qryAccessoryEntity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'Entity'
      DisplayFormat = '#########0.0##########'
    end
    object qryAccessoryWeight: TFloatField
      DisplayLabel = #1608#1586#1606
      FieldName = 'Weight'
      DisplayFormat = '#########0.0##########'
    end
    object qryAccessoryPortionPercent: TFloatField
      DisplayLabel = #1587#1607#1605' ( '#1583#1585#1589#1583' )'#8207
      FieldName = 'PortionPercent'
      OnChange = qryPrimaryPortionPercentChange
    end
    object qryAccessory_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1588#1585#1581' '#1603#1575#1604#1575
      FieldKind = fkLookup
      FieldName = '_StuffName'
      LookupDataSet = qryStuff_Unit_TecInf
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'c_StuffName'
      KeyFields = 'StuffCode'
      LookupCache = True
      ReadOnly = True
      Required = True
      Size = 150
      Lookup = True
    end
    object qryAccessory_StuffUnit: TStringField
      Tag = 3
      DisplayLabel = #1608#1575#1581#1583' '#1588#1605#1575#1585#1588
      FieldKind = fkLookup
      FieldName = '_StuffUnit'
      LookupDataSet = qryStuff_Unit_TecInf
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'UnitName'
      KeyFields = 'StuffCode'
      LookupCache = True
      ReadOnly = True
      Required = True
      Size = 100
      Lookup = True
    end
    object qryAccessoryStanRate: TBCDField
      DisplayLabel = #1606#1585#1582' '#1575#1587#1578#1575#1606#1583#1575#1585#1583
      FieldName = 'StanRate'
      Precision = 19
    end
    object qryAccessoryScheduleID: TIntegerField
      DisplayLabel = #1603#1583#1605#1585#1581#1604#1607' '#1578#1608#1604#1610#1583#1610
      FieldName = 'ScheduleID'
    end
    object qryAccessoryStuffPersent: TFloatField
      DisplayLabel = #1583#1585#1589#1583#1582#1604#1608#1589' '#1605#1608#1575#1583
      FieldName = 'StuffPersent'
    end
    object qryAccessoryStuffPersentRate: TBCDField
      DisplayLabel = #1606#1585#1582#8207#1583#1585#1589#1583#1582#1604#1608#1589' '#1605#1608#1575#1583
      FieldName = 'StuffPersentRate'
      Precision = 19
    end
    object qryAccessoryInfoType: TWordField
      FieldName = 'InfoType'
    end
    object qryAccessoryProcessID: TIntegerField
      FieldName = 'ProcessID'
    end
  end
  object srcAccessory: TDataSource
    DataSet = qryAccessory
    Left = 384
    Top = 376
  end
  object qryWage: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeInsert = qryPrimaryBeforeInsert
    AfterInsert = qryWageAfterInsert
    BeforePost = qryPrimaryBeforePost
    BeforeDelete = qryPrimaryBeforeDelete
    OnCalcFields = qryOutFitCalcFields
    Parameters = <
      item
        Name = 'TransFormID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ProcessID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM         TransFormInfo'
      'WHERE     (InfoType = 2) AND(TransFormID = :TransFormID)'
      'and  ProcessID = :ProcessID'
      'ORDER BY ID')
    Left = 104
    Top = 319
    object qryWageID: TIntegerField
      FieldName = 'ID'
    end
    object qryWageTransFormID: TIntegerField
      FieldName = 'TransFormID'
    end
    object qryWageInfoType: TWordField
      FieldName = 'InfoType'
    end
    object qryWageCode: TIntegerField
      DisplayLabel = #1603#1583
      FieldName = 'Code'
      Required = True
    end
    object qryWage_CodeName: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldKind = fkLookup
      FieldName = '_CodeName'
      LookupDataSet = qryScheduleInfo
      LookupKeyFields = 'ScheduleId'
      LookupResultField = 'InfoName'
      KeyFields = 'Code'
      LookupCache = True
      Required = True
      Size = 150
      Lookup = True
    end
    object qryWageAmount1: TFloatField
      DisplayLabel = #1605#1583#1578
      FieldName = 'Amount1'
      Required = True
    end
    object qryWageAmount2: TFloatField
      DisplayLabel = #1578#1593#1583#1575#1583
      FieldName = 'Amount2'
    end
    object qryWageStanRate: TBCDField
      DisplayLabel = #1606#1585#1582' '#1575#1587#1578#1575#1606#1583#1575#1585#1583
      FieldName = 'StanRate'
      Precision = 19
    end
    object qryWage__StanRateAmount: TCurrencyField
      DisplayLabel = #1605#1576#1604#1594' '#1575#1587#1578#1575#1606#1583#1575#1585#1583
      FieldKind = fkCalculated
      FieldName = '__StanRateAmount'
      Calculated = True
    end
    object qryWageCycleMonth: TFloatField
      DisplayLabel = #1605#1575#1607' '#1578#1581#1602#1602
      FieldName = 'CycleMonth'
    end
    object qryWageProcessID: TIntegerField
      FieldName = 'ProcessID'
    end
  end
  object srcWage: TDataSource
    DataSet = qryWage
    Left = 104
    Top = 358
  end
  object qryOutFit: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeInsert = qryPrimaryBeforeInsert
    AfterInsert = qryOutFitAfterInsert
    BeforePost = qryPrimaryBeforePost
    BeforeDelete = qryPrimaryBeforeDelete
    OnCalcFields = qryOutFitCalcFields
    Parameters = <
      item
        Name = 'TransFormID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ProcessID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM         TransFormInfo'
      'WHERE     (InfoType = 1) AND  (TransFormID = :TransFormID)'
      'and  ProcessID = :ProcessID'
      'ORDER BY ID')
    Left = 280
    Top = 350
    object qryOutFitCycleMonth: TFloatField
      DisplayLabel = #1605#1575#1607' '#1578#1581#1602#1602
      FieldName = 'CycleMonth'
    end
    object qryOutFitID: TIntegerField
      FieldName = 'ID'
    end
    object qryOutFitTransFormID: TIntegerField
      FieldName = 'TransFormID'
    end
    object qryOutFitInfoType: TWordField
      FieldName = 'InfoType'
    end
    object qryOutFitCode: TIntegerField
      DisplayLabel = #1603#1583' '#1605#1575#1588#1610#1606
      FieldName = 'Code'
      Required = True
    end
    object qryOutFit_CodeName: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1605#1575#1588#1610#1606
      FieldKind = fkLookup
      FieldName = '_CodeName'
      LookupDataSet = qryScheduleInfo
      LookupKeyFields = 'ScheduleId'
      LookupResultField = 'InfoName'
      KeyFields = 'Code'
      LookupCache = True
      Required = True
      Size = 150
      Lookup = True
    end
    object qryOutFitAmount1: TFloatField
      DisplayLabel = #1586#1605#1575#1606' '#1605#1608#1585#1583' '#1606#1610#1575#1586
      FieldName = 'Amount1'
      Required = True
    end
    object qryOutFitStanRate: TBCDField
      DisplayLabel = #1606#1585#1582' '#1575#1587#1578#1575#1606#1583#1575#1585#1583
      FieldName = 'StanRate'
      Precision = 19
    end
    object qryOutFitPrvCode: TIntegerField
      FieldName = 'PrvCode'
    end
    object qryOutFit__StanRateAmount: TCurrencyField
      DisplayLabel = #1605#1576#1604#1594' '#1575#1587#1578#1575#1606#1583#1575#1585#1583
      FieldKind = fkCalculated
      FieldName = '__StanRateAmount'
      Calculated = True
    end
    object qryOutFitProcessID: TIntegerField
      FieldName = 'ProcessID'
    end
  end
  object srcOutFit: TDataSource
    DataSet = qryOutFit
    Left = 272
    Top = 383
  end
  object qryScheduleInfo: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      #13'SELECT ScheduleId, InfoName '
      'FROM ScheduleInfo '
      'WHERE (Code >=0)')
    Left = 528
    Top = 333
  end
  object qryTransFormInfo: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'SELECT     *'
      'FROM         TransFormInfo')
    Left = 528
    Top = 391
    object IntegerField6: TIntegerField
      FieldName = 'ID'
    end
    object IntegerField7: TIntegerField
      FieldName = 'TransFormID'
    end
    object WordField2: TWordField
      FieldName = 'InfoType'
    end
    object IntegerField8: TIntegerField
      DisplayLabel = #1603#1583' '#1601#1585#1570#1610#1606#1583
      FieldName = 'Code'
      Required = True
    end
    object StringField2: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1601#1585#1570#1610#1606#1583
      FieldName = 'Name'
      Required = True
      Size = 100
    end
    object IntegerField9: TIntegerField
      DisplayLabel = #1603#1583#1711#1585#1608#1607' '#1603#1604#1610
      FieldName = 'SheetID'
    end
    object IntegerField10: TIntegerField
      DisplayLabel = #1601#1585#1570#1610#1606#1583' '#1662#1610#1588' '#1606#1610#1575#1586
      FieldName = 'PrvCode'
      Required = True
    end
    object StringField4: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1711#1585#1608#1607' '#1603#1604#1610
      FieldKind = fkLookup
      FieldName = '_SheetName'
      LookupDataSet = qryScheduleInfo
      LookupKeyFields = 'ScheduleId'
      LookupResultField = 'InfoName'
      KeyFields = 'SheetID'
      LookupCache = True
      Required = True
      Size = 150
      Lookup = True
    end
  end
  object qryEarthGroups: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     EarthGrpID, EarthGrpName, Amount'
      'FROM         EarthGroups')
    Left = 348
    Top = 69
  end
  object qry_ProcessInfo: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     ProcessID, ProcessName'
      'FROM         ProcessInfo')
    Left = 700
    Top = 397
  end
end

inherited FunctionItems2F: TFunctionItems2F
  Left = 396
  Top = 155
  Caption = #1579#1576#1578' '#1705#1575#1585#1705#1585#1583' 2'
  ClientHeight = 629
  ClientWidth = 916
  ExplicitWidth = 924
  ExplicitHeight = 660
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 588
    Width = 916
    ExplicitTop = 588
    ExplicitWidth = 916
    inherited BtnReject: TBitBtn
      Top = 8
      Height = 25
      Margins.Top = 7
      Margins.Bottom = 7
      ExplicitTop = 8
      ExplicitHeight = 25
    end
    object newPanel: TPanel
      Left = 668
      Top = 1
      Width = 247
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        247
        39)
      object BitBtn3: TBitBtn
        Left = 162
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 85
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        Left = 8
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
      Left = 503
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
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 85
      Top = 8
      Width = 75
      Height = 25
      Margins.Top = 7
      Margins.Bottom = 7
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 3
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 166
      Top = 8
      Width = 75
      Height = 25
      Margins.Top = 7
      Margins.Bottom = 7
      Action = actSearch_
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
    end
    object BitBtn9: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 8
      Width = 75
      Height = 25
      Margins.Top = 7
      Margins.Bottom = 7
      Action = actSendToExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 5
    end
    object BitBtn17: TBitBtn
      AlignWithMargins = True
      Left = 328
      Top = 8
      Width = 75
      Height = 25
      Margins.Top = 7
      Margins.Bottom = 7
      Align = alLeft
      Caption = #1587#1575#1610#1585'...'
      TabOrder = 6
      OnClick = BitBtn17Click
    end
  end
  inherited Panel2: TPanel
    Width = 916
    Height = 52
    ExplicitWidth = 916
    ExplicitHeight = 52
    DesignSize = (
      916
      52)
    inherited ImgTemplate: TImage
      Left = 878
      ExplicitLeft = 767
    end
    inherited lblCaption: TLabel
      Left = 808
      Height = 32
      ExplicitLeft = 808
    end
    object PnlRecall: TPanel
      Left = 1
      Top = 1
      Width = 256
      Height = 50
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 113
        Top = 6
        Width = 48
        Height = 13
        Caption = #1603#1583' '#1608#1593#1606#1608#1575#1606' '
      end
      object SpeedButton1: TSpeedButton
        Left = 14
        Top = 1
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SpeedButton1Click
      end
      object DBEdit1: TDBEdit
        Left = 39
        Top = 2
        Width = 68
        Height = 21
        DataField = 'InfoID'
        DataSource = SrcMaster
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 14
        Top = 26
        Width = 235
        Height = 19
        Color = 14540253
        Ctl3D = False
        DataField = 'InfoName_L1'
        DataSource = SrcMaster
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object DBNavigator1: TDBNavigator
        Left = 167
        Top = 2
        Width = 80
        Height = 23
        DataSource = SrcMaster
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Flat = True
        TabOrder = 2
      end
    end
    object yrcmbx1: TYearComboBox
      Left = 291
      Top = 14
      Width = 112
      Height = 32
      Align = alCustom
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 1
      YearID = 0
      YearsParam = 0
      ADOConnection = DmF.adcsalary
    end
  end
  inherited Panel3: TPanel
    Top = 52
    Width = 916
    Height = 536
    ExplicitTop = 52
    ExplicitWidth = 916
    ExplicitHeight = 536
    object ToolBar1: TToolBar
      Left = 2
      Top = 2
      Width = 912
      Height = 36
      BorderWidth = 2
      ButtonHeight = 21
      ButtonWidth = 54
      Caption = 'ToolBar1'
      EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
      EdgeInner = esLowered
      ShowCaptions = True
      TabOrder = 0
      OnClick = ToolBar1Click
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
    object Panel1: TPanel
      Left = 2
      Top = 38
      Width = 500
      Height = 496
      Align = alClient
      TabOrder = 1
      object Panel5: TPanel
        Left = 1
        Top = 350
        Width = 498
        Height = 34
        Align = alBottom
        TabOrder = 0
        object newPanel2: TPanel
          Left = 257
          Top = 1
          Width = 240
          Height = 32
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 1
          object BitBtn11: TBitBtn
            Left = 160
            Top = 5
            Width = 75
            Height = 25
            Action = DataSetInsert2
            Caption = #1580#1583#1610#1583
            TabOrder = 0
          end
          object BitBtn14: TBitBtn
            Left = 83
            Top = 5
            Width = 75
            Height = 25
            Action = DataSetEdit2
            Caption = #1608#1610#1585#1575#1610#1588
            TabOrder = 1
          end
          object BitBtn13: TBitBtn
            Left = 5
            Top = 5
            Width = 75
            Height = 25
            Action = DataSetDelete1_
            Caption = #1581#1584#1601
            TabOrder = 2
          end
        end
        object BitBtn12: TBitBtn
          Left = 4
          Top = 4
          Width = 93
          Height = 25
          Action = actAcc
          Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1583#1575#1585#1610
          TabOrder = 0
        end
        object okPanel2: TPanel
          Left = 95
          Top = 1
          Width = 162
          Height = 32
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 2
          DesignSize = (
            162
            32)
          object BitBtn15: TBitBtn
            Left = 7
            Top = 4
            Width = 75
            Height = 25
            Action = DataSetCancel2
            Anchors = [akTop, akRight]
            Caption = #1575#1606#1589#1585#1575#1601
            TabOrder = 1
          end
          object BitBtn16: TBitBtn
            Left = 84
            Top = 4
            Width = 75
            Height = 25
            Action = DataSetPost2
            Anchors = [akTop, akRight]
            Caption = #1578#1575#1610#1610#1583
            TabOrder = 0
          end
        end
        object btnGetExcel: TBitBtn
          Left = 101
          Top = 5
          Width = 75
          Height = 24
          Action = actGetExcel
          Caption = #1583#1585#1610#1575#1601#1578#8207'Excel'
          TabOrder = 3
        end
        object btncalc: TBitBtn
          Left = 180
          Top = 5
          Width = 75
          Height = 24
          Action = actcalc
          Caption = #1605#1581#1575#1587#1576#1607' '#1585#1608#1586
          TabOrder = 4
        end
      end
      object DBGrid3: TCedarDbgrid
        Tag = 111
        Left = 1
        Top = 1
        Width = 498
        Height = 349
        Align = alClient
        Color = clCream
        DataSource = SrcFunctions
        DynProps = <>
        Flat = True
        FooterParams.FillStyle = cfstSolidEh
        FooterParams.Font.Charset = DEFAULT_CHARSET
        FooterParams.Font.Color = clWindowText
        FooterParams.Font.Height = -11
        FooterParams.Font.Name = 'Tahoma'
        FooterParams.Font.Style = [fsBold]
        FooterParams.ParentFont = False
        FooterParams.VertLines = False
        GridLineParams.VertEmptySpaceStyle = dessNonEh
        HorzScrollBar.ExtraPanel.Visible = True
        IndicatorTitle.ShowDropDownSign = True
        IndicatorTitle.TitleButton = True
        OddRowColor = clGradientInactiveCaption
        RowHeight = 18
        SearchPanel.Enabled = True
        SearchPanel.FilterOnTyping = True
        SortLocal = True
        TabOrder = 2
        OnEditButtonClick = DBGrid3EditButtonClick
        OnExit = DBGrid3Exit
        OnKeyPress = DBGrid3KeyPress
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
            FieldName = 'ProjectRow'
            Footers = <>
            Width = 39
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_projectname_L1'
            Footers = <>
            Width = 48
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_projectname_L2'
            Footers = <>
            Width = 40
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FunctionDay'
            Footers = <>
            Width = 40
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FunctionTime'
            Footers = <>
            Width = 34
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SickDay'
            Footers = <>
            Width = 58
          end
          item
            ButtonStyle = cbsEllipsis
            CellButtons = <>
            DynProps = <>
            EditButton.Style = ebsEllipsisEh
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'OfficeCode'
            Footers = <>
            Width = 46
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_OfficeName_L1'
            Footers = <>
            Width = 59
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_OfficeName_L2'
            Footers = <>
            Width = 25
          end
          item
            ButtonStyle = cbsEllipsis
            CellButtons = <>
            DynProps = <>
            EditButton.Style = ebsEllipsisEh
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'ProcCode'
            Footers = <>
            ReadOnly = False
            Width = 49
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_ProcCode'
            Footers = <>
            Width = 35
          end
          item
            ButtonStyle = cbsEllipsis
            CellButtons = <>
            DynProps = <>
            EditButton.Style = ebsEllipsisEh
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'CTopic3'
            Footers = <>
            ReadOnly = False
            Width = 42
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_CTopic3'
            Footers = <>
            Width = 29
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_StandardEmployAmount'
            Footers = <>
            Width = 73
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object DBGrid2: TCedarDbgrid
        Tag = 111
        Left = 1
        Top = 384
        Width = 498
        Height = 111
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = clCream
        DataSource = srcFormsInfo
        DynProps = <>
        Flat = True
        FooterParams.FillStyle = cfstSolidEh
        FooterParams.Font.Charset = DEFAULT_CHARSET
        FooterParams.Font.Color = clWindowText
        FooterParams.Font.Height = -11
        FooterParams.Font.Name = 'Tahoma'
        FooterParams.Font.Style = [fsBold]
        FooterParams.ParentFont = False
        FooterParams.VertLines = False
        GridLineParams.VertEmptySpaceStyle = dessNonEh
        HorzScrollBar.ExtraPanel.Visible = True
        IndicatorTitle.ShowDropDownSign = True
        IndicatorTitle.TitleButton = True
        OddRowColor = clGradientInactiveCaption
        RowHeight = 18
        SearchPanel.Enabled = True
        SearchPanel.FilterOnTyping = True
        SortLocal = True
        TabOrder = 1
        OnKeyPress = DBGrid2KeyPress
        ActiveSearchPanel = False
        SelectFooterIndex = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'InfoName_L1'
            Footers = <>
            Width = 161
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'InfoName_L2'
            Footers = <>
            Width = 68
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Fday'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FTime'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FTimeH'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FTimeM'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_Day'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_Time'
            Footers = <>
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object Panel9: TPanel
      Left = 502
      Top = 38
      Width = 412
      Height = 496
      Align = alRight
      TabOrder = 2
      object Panel10: TPanel
        Left = 1
        Top = 456
        Width = 410
        Height = 39
        Align = alBottom
        BevelOuter = bvLowered
        TabOrder = 1
        DesignSize = (
          410
          39)
        object lblColor1: TLabel
          Left = 335
          Top = 22
          Width = 13
          Height = 13
          Anchors = [akRight, akBottom]
          AutoSize = False
          Caption = '                '
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
          ExplicitLeft = 174
          ExplicitTop = 6
        end
        object Label17: TLabel
          Left = 350
          Top = 22
          Width = 57
          Height = 13
          Anchors = [akRight, akBottom]
          Caption = #1575#1591#1604#1575#1593#1575#1578' '#1583#1575#1585#1583
          ExplicitLeft = 189
          ExplicitTop = 6
        end
        object lblColor2: TLabel
          Left = 80
          Top = 21
          Width = 13
          Height = 13
          Anchors = [akLeft, akBottom]
          AutoSize = False
          Caption = '                '
          Color = 8388863
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
          ExplicitTop = 5
        end
        object Label16: TLabel
          Left = 96
          Top = 21
          Width = 61
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = #1575#1591#1604#1575#1593#1575#1578' '#1606#1583#1575#1585#1583
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8388863
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitTop = 5
        end
        object Label7: TLabel
          Left = 24
          Top = 21
          Width = 52
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = #1662#1575#1610#1575#1606' '#1602#1585#1575#1585#1583#1575#1583
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ExplicitTop = 5
        end
        object LblEndDate: TLabel
          Left = 7
          Top = 21
          Width = 13
          Height = 13
          Anchors = [akLeft, akBottom]
          AutoSize = False
          Caption = '                '
          Color = clGreen
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5151488
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
          ExplicitTop = 5
        end
        object ChkEndDate: TCheckBox
          Left = 1
          Top = 1
          Width = 408
          Height = 17
          Align = alTop
          Alignment = taLeftJustify
          Caption = #1662#1585#1587#1606#1604#8207#1607#1575#1610#1610' '#1603#1607' '#1602#1585#1575#1585#1583#1575#1583#1588#1575#1606' '#1662#1575#1610#1575#1606' '#1585#1587#1610#1583#1607#1548' '#1606#1605#1575#1610#1588' '#1606#1588#1608#1606#1583'.'#8207
          TabOrder = 0
          OnClick = ChkEndDateClick
        end
      end
      object DBGrid1: TCedarDbgrid
        Tag = 111
        Left = 1
        Top = 1
        Width = 410
        Height = 455
        Hint = #1576#1585#1575#1610' '#1580#1587#1578#1580#1608#1610' '#1587#1585#1610#1593' '#1585#1608#1610' '#1601#1585#1605' '#1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610' '#1585#1575' '#1578#1575#1610#1662' '#1603#1606#1610#1583'.'#8207
        Align = alClient
        Color = clCream
        DataSource = SrcPersonel
        DynProps = <>
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        FooterParams.FillStyle = cfstGradientEh
        FooterParams.Font.Charset = DEFAULT_CHARSET
        FooterParams.Font.Color = clWindowText
        FooterParams.Font.Height = -13
        FooterParams.Font.Name = 'Tahoma'
        FooterParams.Font.Style = [fsBold]
        FooterParams.ParentFont = False
        FooterParams.VertLines = False
        GridLineParams.VertEmptySpaceStyle = dessNonEh
        HorzScrollBar.ExtraPanel.Visible = True
        IndicatorTitle.ShowDropDownSign = True
        IndicatorTitle.TitleButton = True
        OddRowColor = clGradientInactiveCaption
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ParentShowHint = False
        RowHeight = 21
        SearchPanel.Enabled = True
        SearchPanel.FilterOnTyping = True
        SearchPanel.OnSearchEditKeyPress = DBGrid1SearchPanelSearchEditKeyPress
        ShowHint = False
        SortLocal = True
        TabOrder = 0
        OnCellClick = DBGrid1CellClick
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnEnter = DBGrid1Enter
        OnKeyPress = DBGrid1KeyPress
        ActiveSearchPanel = False
        SelectFooterIndex = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PersonelNo'
            Footers = <>
            Width = 67
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PersonName_L1'
            Footers = <>
            Width = 98
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PersonName_L2'
            Footers = <>
            Width = 14
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FunCount'
            Footers = <>
            Width = 32
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'InterdicEndDate'
            Footers = <>
            Width = 76
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'InterdicStartDate'
            Footers = <>
            Width = 87
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  inherited ActionList: TActionList
    Left = 520
    inherited DataSetInsert1: TDataSetInsert
      DataSource = SrcFunctions
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = SrcFunctions
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = SrcFunctions
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = SrcFunctions
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = SrcFunctions
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actSendToExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendToExcelExecute
    end
    object actCalcAll: TAction
      Caption = #1579#1576#1578' '#1705#1604#1610
      OnExecute = actCalcAllExecute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actAcc: TAction
      Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1583#1575#1585#1610
      OnExecute = actAccExecute
    end
    object DataSetInsert2: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      DataSource = SrcFunctions
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
      DataSource = SrcFunctions
    end
    object DataSetEdit2: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      DataSource = SrcFunctions
    end
    object DataSetPost2: TDataSetPost
      Category = 'Dataset'
      Caption = #1578#1575#1610#1610#1583
      DataSource = SrcFunctions
    end
    object DataSetCancel2: TDataSetCancel
      Category = 'Dataset'
      Caption = #1575#1606#1589#1585#1575#1601
      DataSource = SrcFunctions
    end
    object ActShowInterdict: TAction
      Caption = ' '#1581#1603#1605' '#1603#1575#1585#1711#1586#1610#1606#1610' '
      OnExecute = ActShowInterdictExecute
    end
    object ActPersonelInfoF: TAction
      Caption = #1605#1593#1585#1601#1610' '#1662#1585#1587#1606#1604
      OnExecute = ActPersonelInfoFExecute
    end
    object actcalc: TAction
      Caption = #1605#1581#1575#1587#1576#1607' '#1585#1608#1586
      OnExecute = actcalcExecute
    end
    object actGetExcel: TAction
      Caption = #1583#1585#1610#1575#1601#1578#8207'Excel'
      OnExecute = actGetExcelExecute
    end
    object actCalcAllDay: TAction
      Caption = #1605#1581#1575#1587#1576#1607' '#1585#1608#1586' '#1576#1585#1575#1610' '#1607#1605#1607
      OnExecute = actCalcAllDayExecute
    end
    object actSetSelectedSituation0: TAction
      Caption = #1605#1608#1602#1578' '#1603#1585#1583#1606
      OnExecute = actSetSelectedSituation0Execute
    end
    object actSetSelectedSituation1: TAction
      Caption = #1602#1591#1593#1610' '#1603#1585#1583#1606
      OnExecute = actSetSelectedSituation1Execute
    end
    object actSetSelectedSituationAll0: TAction
      Caption = #1605#1608#1602#1578' '#1603#1585#1583#1606' '#1607#1605#1607' '
      OnExecute = actSetSelectedSituationAll0Execute
    end
    object actSetSelectedSituationAll1: TAction
      Caption = #1602#1591#1593#1610' '#1603#1585#1583#1606' '#1607#1605#1607
      OnExecute = actSetSelectedSituationAll1Execute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      OnExecute = actPrintExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 435
    Top = 7
  end
  object qryMaster: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterScroll = qryMasterAfterScroll
    Parameters = <
      item
        Name = 'RecallFormTypes'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT     FormInfoID, FormType, InfoID, InfoName_L1, InfoName_L' +
        '2'
      'FROM         Pay.FormsInfo'
      'WHERE     (FormType = :RecallFormTypes)'
      '')
    Left = 360
    Top = 136
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
      Size = 255
    end
    object qryMasterInfoName_L2: TStringField
      FieldName = 'InfoName_L2'
      Size = 255
    end
  end
  object SrcMaster: TDataSource
    DataSet = qryMaster
    Left = 256
    Top = 133
  end
  object qryPersonel: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    BeforeScroll = qryPersonelBeforeScroll
    AfterScroll = qryPersonelAfterScroll
    Parameters = <
      item
        Name = 'Mounth'
        DataType = ftString
        Size = 1
        Value = '8'
      end
      item
        Name = 'Years'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearID'
        Size = -1
        Value = Null
      end
      item
        Name = 'Date'
        Size = -1
        Value = Null
      end
      item
        Name = 'OfficeCodeFrom'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'OfficeCodeTo'
        DataType = ftString
        Size = 10
        Value = '2147483647'
      end
      item
        Name = 'PersonelNoFrom'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PersonelNoTo'
        DataType = ftString
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
        Name = 'EmployTypeIDFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'EmployTypeIDTo'
        DataType = ftWideString
        Size = 9
        Value = '999999999'
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
        Size = 8
        Value = '99999999'
      end>
    SQL.Strings = (
      
        'SELECT     PersonelInfo.PersonelNo, PersonelInfo.lastName_L1 + '#39 +
        '  '#39' + PersonelInfo.name_L1 AS PersonName_L1, '
      
        '                      PersonelInfo.lastName_L2 + '#39'  '#39' + Personel' +
        'Info.name_L2 AS PersonName_L2, FormsInfo.InfoID, FormsInfo.InfoN' +
        'ame_L1, FormsInfo.InfoName_L2, '
      
        '                      Interdicts.jobCode, ISNULL(FunctionUsed.Pe' +
        'rsonelNo, 0) AS HasFunction, Interdicts.OfficeCode, Interdicts.E' +
        'mployTypeID, '
      
        '                      Interdicts.StandardEmployAmount, ISNULL(Fu' +
        'nctionUsed.FunCount, 0) AS FunCount , Interdicts.InterdicEndDate' +
        ', FormsInfo_EmployType.CalCulateType,'
      
        '                      FormTypes.CoefficientActive, Pay.Interdict' +
        's.InterdicEndDate , Pay.Interdicts.InterdicStartDate'
      'FROM Pay.FormTypes INNER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfo_EmployType ON F' +
        'ormTypes.FormType = FormsInfo_EmployType.FormType RIGHT OUTER JO' +
        'IN'
      '                      Pay.PersonelInfo INNER JOIN'
      
        '                      Pay.FormsInfo ON PersonelInfo.PersonelStat' +
        'e = FormsInfo.FormInfoID INNER JOIN'
      
        '                      Pay.Interdicts ON PersonelInfo.PersonelNo ' +
        '= Interdicts.PersonelNo ON FormsInfo_EmployType.FormInfoID = Int' +
        'erdicts.EmployTypeID LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfo_1 ON Pay.Interd' +
        'icts.OfficeCode = FormsInfo_1.FormInfoID LEFT OUTER JOIN'
      
        '                          (SELECT     PersonelNo, COUNT(Personel' +
        'No) AS FunCount'
      '                             FROM Pay.Functions'
      
        '                             WHERE     (Mounth = :Mounth ) AND  ' +
        '  ( Years = :Years  )  AND    ( YearID   = :YearID  ) '
      ''
      
        '                             GROUP BY PersonelNo) AS FunctionUse' +
        'd ON PersonelInfo.PersonelNo = FunctionUsed.PersonelNo'
      ' LEFT OUTER JOIN'
      
        '                         Pay.FormsInfo AS FormsInfoEmployTypeID ' +
        'ON Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID'
      ''
      
        'WHERE  ((Pay.FormsInfo.InfoID < 50)  OR  :Date BETWEEN SUBSTRING' +
        '(Interdicts.InterdicStartDate, 1, 7)'
      'AND  SUBSTRING(Interdicts.InterdicEndDate, 1, 7))'
      '   AND (Interdicts.State < 11) AND (Interdicts.InterdicType = 0)'
      
        '  AND (FormsInfo_1.InfoID BETWEEN :OfficeCodeFrom AND :OfficeCod' +
        'eTo)'
      
        '  AND (Pay.PersonelInfo.PersonelNo BETWEEN :PersonelNoFrom AND :' +
        'PersonelNoTo)'
      
        'AND ( Interdicts.ProjectID  BETWEEN :ProjectIDFrom  AND :Project' +
        'IDTo )'
      
        'AND (FormsInfoEmployTypeID.InfoID  BETWEEN :EmployTypeIDFrom  AN' +
        'D :EmployTypeIDTo )'
      
        'AND((Interdicts.subcompanyCode = 0)OR(Interdicts.subcompanyCode ' +
        'BETWEEN :companyCodeFrom AND :companyCodeTo ))'
      'ORDER BY PersonelInfo.PersonelNo'
      '')
    Left = 635
    Top = 152
    object qryPersonelPersonelNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588'.'#1662#1585#1587#1606#1604
      FieldName = 'PersonelNo'
    end
    object qryPersonelPersonName_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1608' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
      FieldName = 'PersonName_L1'
      ReadOnly = True
      Size = 59
    end
    object qryPersonelPersonName_L2: TStringField
      DisplayLabel = 'PersonName'
      FieldName = 'PersonName_L2'
      ReadOnly = True
      Size = 59
    end
    object qryPersonelFunCount: TIntegerField
      Tag = 3
      DisplayLabel = #1578#1593#1583#1575#1583
      FieldName = 'FunCount'
    end
    object qryPersonelInterdicEndDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1662#1575#1610#1575#1606' '#1602#1585#1575#1585#1583#1575#1583
      FieldName = 'InterdicEndDate'
      FixedChar = True
      Size = 10
    end
    object qryPersonelInterdicStartDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1588#1585#1608#1593' '#1570#1582#1585#1610#1606' '#1581#1603#1605
      FieldName = 'InterdicStartDate'
      FixedChar = True
      Size = 10
    end
    object qryPersoneljobCode: TIntegerField
      FieldName = 'jobCode'
    end
    object qryPersonelInfoID: TIntegerField
      FieldName = 'InfoID'
    end
    object qryPersonelInfoName_L1: TStringField
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object qryPersonelInfoName_L2: TStringField
      FieldName = 'InfoName_L2'
      Size = 255
    end
    object qryPersonelHasFunction: TIntegerField
      FieldName = 'HasFunction'
      ReadOnly = True
    end
    object qryPersonelOfficeCode: TIntegerField
      FieldName = 'OfficeCode'
    end
    object qryPersonelEmployTypeID: TIntegerField
      FieldName = 'EmployTypeID'
    end
    object qryPersonelStandardEmployAmount: TBCDField
      FieldName = 'StandardEmployAmount'
      Precision = 19
    end
    object qryPersonelCalCulateType: TWordField
      FieldName = 'CalCulateType'
    end
    object qryPersonelCoefficientActive: TWordField
      FieldName = 'CoefficientActive'
    end
  end
  object SrcPersonel: TDataSource
    DataSet = qryPersonel
    Left = 570
    Top = 151
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
        Value = 6
      end>
    SQL.Strings = (
      'select * FROM Pay.FormTypes'
      'where  FormType=:FormType')
    Left = 600
    Top = 5
  end
  object qryFunctions: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterOpen = qryFunctionsAfterOpen
    BeforeInsert = qryFunctionsBeforeInsert
    AfterInsert = qryFunctionsAfterInsert
    BeforeEdit = qryFunctionsBeforeEdit
    BeforePost = qryFunctionsBeforePost
    AfterPost = qryFunctionsAfterPost
    AfterCancel = qryFunctionsAfterCancel
    BeforeDelete = qryFunctionsBeforeDelete
    AfterDelete = qryFunctionsAfterDelete
    AfterScroll = qryFunctionsAfterScroll
    OnCalcFields = qryFunctionsCalcFields
    Parameters = <
      item
        Name = 'EmployeeNo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'Mo'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 0
      end
      item
        Name = 'FormId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'Years'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'YearID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT    *'
      'FROM         Pay.Functions'
      
        'WHERE     (PersonelNo =:EmployeeNo) AND (Mounth =:Mo) AND (FormI' +
        'nfoID =:FormId)'
      'AND    ( Years = :Years  ) AND    ( YearID = :YearID  ) ')
    Left = 46
    Top = 178
    object qryFunctionsFunctionID: TIntegerField
      FieldName = 'FunctionID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryFunctionsFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qryFunctionsMounth: TWordField
      Tag = 3
      DisplayLabel = #1605#1575#1607
      FieldName = 'Mounth'
    end
    object qryFunctionsPersonelNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610
      FieldName = 'PersonelNo'
    end
    object qryFunctionsFunctionTime: TFloatField
      DisplayLabel = #1587#1575#1593#1578
      FieldName = 'FunctionTime'
      OnChange = qryFunctionsFunctionTimeChange
    end
    object qryFunctionsProjectID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1575#1589#1604#1610' '#1662#1585#1608#1688#1607
      FieldName = 'ProjectID'
      Required = True
    end
    object qryFunctionsJobCode: TIntegerField
      FieldName = 'JobCode'
    end
    object qryFunctions_projectname_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1662#1585#1608#1688#1607' '
      FieldKind = fkLookup
      FieldName = '_projectname_L1'
      LookupDataSet = qryProject
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'ProjectID'
      LookupCache = True
      Required = True
      Size = 255
      Lookup = True
    end
    object qryFunctions_projectname_L2: TStringField
      Tag = 3
      DisplayLabel = 'ProjectName'
      FieldKind = fkLookup
      FieldName = '_projectname_L2'
      LookupDataSet = qryProject
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoName_L2'
      KeyFields = 'ProjectID'
      LookupCache = True
      Size = 255
      Lookup = True
    end
    object qryFunctionsOfficeCode: TIntegerField
      DisplayLabel = #1603#1583' '#1608#1575#1581#1583
      FieldName = 'OfficeCode'
    end
    object qryFunctions_OfficeName_L1: TStringField
      DisplayLabel = #1608#1575#1581#1583#1587#1575#1586#1605#1575#1606#1610
      FieldKind = fkLookup
      FieldName = '_OfficeName_L1'
      LookupDataSet = qryOfficeCode
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'OfficeCode'
      LookupCache = True
      Size = 255
      Lookup = True
    end
    object qryFunctions_OfficeName_L2: TStringField
      DisplayLabel = 'OfficeName'
      FieldKind = fkLookup
      FieldName = '_OfficeName_L2'
      LookupDataSet = qryOfficeCode
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoName_L2'
      KeyFields = 'OfficeCode'
      LookupCache = True
      Size = 255
      Lookup = True
    end
    object qryFunctionsProjectRow: TIntegerField
      DisplayLabel = #1603#1583' '#1662#1585#1608#1688#1607
      FieldName = 'ProjectRow'
      Required = True
    end
    object qryFunctions_StandardEmployAmount: TCurrencyField
      DisplayLabel = #1607#1586#1610#1606#1607' '#1575#1587#1578#1575#1606#1583#1575#1585#1583
      FieldKind = fkCalculated
      FieldName = '_StandardEmployAmount'
      Calculated = True
    end
    object qryFunctionsProcCode: TIntegerField
      DisplayLabel = #1603#1583#1605#1581#1589#1608#1604
      FieldName = 'ProcCode'
      ReadOnly = True
      OnGetText = qryFunctionsProcCodeGetText
    end
    object qryFunctions_ProcCode: TStringField
      DisplayLabel = #1605#1581#1589#1608#1604
      FieldKind = fkLookup
      FieldName = '_ProcCode'
      LookupDataSet = qryProcCode
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'ProcCode'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qryFunctionsCTopic3: TIntegerField
      DisplayLabel = #1603#1583#1586#1605#1610#1606
      FieldName = 'CTopic3'
      ReadOnly = True
      OnGetText = qryFunctionsProcCodeGetText
    end
    object qryFunctions_CTopic3: TStringField
      DisplayLabel = #1586#1605#1610#1606
      FieldKind = fkLookup
      FieldName = '_CTopic3'
      LookupDataSet = qryCTopic3
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'CTopic3'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qryFunctionsSickDay: TIntegerField
      DisplayLabel = #1575#1610#1575#1605' '#1576#1610#1605#1575#1585#1610
      FieldName = 'SickDay'
    end
    object qryFunctionsFunctionDay: TFloatField
      Tag = 3
      DisplayLabel = #1585#1608#1586
      FieldName = 'FunctionDay'
    end
    object qryFunctionsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryFunctionsYears: TIntegerField
      FieldName = 'Years'
    end
    object qryFunctionsSituation: TWordField
      FieldName = 'Situation'
    end
  end
  object SrcFunctions: TDataSource
    DataSet = qryFunctions
    OnStateChange = SrcFunctionsStateChange
    Left = 130
    Top = 183
  end
  object srcFormsInfo: TDataSource
    DataSet = qryFormsInfo
    Left = 402
    Top = 408
  end
  object qryFunctionItems: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'FunID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 2
      end>
    SQL.Strings = (
      'SELECT    *'
      'FROM Pay.FunctionsItems'
      'where FunctionID=:FunID')
    Left = 91
    Top = 269
    object qryFunctionItemsFunctionsItemsID: TIntegerField
      FieldName = 'FunctionsItemsID'
    end
    object qryFunctionItemsFunctionID: TIntegerField
      FieldName = 'FunctionID'
    end
    object qryFunctionItemsSalaryID: TIntegerField
      FieldName = 'SalaryID'
    end
    object qryFunctionItemsFDaily: TFloatField
      FieldName = 'FDaily'
    end
    object qryFunctionItemsFHours: TFloatField
      FieldName = 'FHours'
    end
    object qryFunctionItemsAmount: TBCDField
      FieldName = 'Amount'
      Precision = 19
    end
    object qryFunctionItemsAccTopicCode: TIntegerField
      FieldName = 'AccTopicCode'
    end
    object qryFunctionItemsAccDetailCode: TIntegerField
      FieldName = 'AccDetailCode'
    end
    object qryFunctionItemsAccCTopicCode: TIntegerField
      FieldName = 'AccCTopicCode'
    end
    object qryFunctionItemsAccCTopicCode2: TIntegerField
      FieldName = 'AccCTopicCode2'
    end
  end
  object qryFormsInfo: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = qryFormsInfoAfterOpen
    AfterInsert = qryFormsInfoAfterInsert
    BeforePost = qryFormsInfoBeforePost
    Parameters = <
      item
        Name = 'FormInfoID'
        DataType = ftString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      
        'SELECT     FormsInfo.FormInfoID, FormsInfo.InfoID, FormsInfo.Inf' +
        'oName_L1, FormsInfo.InfoName_L2, FormsInfo.Coefficient AS Fday,'
      
        '                      FormsInfo.Coefficient AS FTime, FormsInfo.' +
        'AccTopicCode, FormsInfo.AccDetailCode, FormsInfo.AccCTopicCode, '
      
        '                      FormsInfo.AccCTopicCode2, FormsInfo.MaxDay' +
        ', FormsInfo.MaxTime , FormsInfo.RecalKindClock'
      
        ', Pay.FormsInfo.Coefficient AS FTimeH, Pay.FormsInfo.Coefficient' +
        ' AS FTimeM'
      ''
      'FROM Pay.FormsInfo INNER JOIN'
      
        '                      Pay.FormTypes ON FormsInfo.FormType = Form' +
        'Types.FormType'
      'WHERE     (FormTypes.FunctionShow= 1)'
      'and FormsInfo.FormInfoID in ('
      'SELECT     SalaryID'
      'FROM         Pay.F_SalaryRange(:FormInfoID, 0) F_SalaryRange'
      ')'
      ''
      ''
      '')
    Left = 287
    Top = 384
    object qryFormsInfoFormInfoID: TIntegerField
      DisplayLabel = #1587#1585#1610#1575#1604' '#1581#1602#1608#1602
      FieldName = 'FormInfoID'
    end
    object qryFormsInfoInfoID: TIntegerField
      DisplayLabel = #1603#1583' '#1581#1602#1608#1602' '
      FieldName = 'InfoID'
    end
    object qryFormsInfoInfoName_L1: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object qryFormsInfoInfoName_L2: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' - 2'
      FieldName = 'InfoName_L2'
      Size = 255
    end
    object qryFormsInfoFday: TFloatField
      DisplayLabel = #1578#1593#1583#1575#1583
      FieldName = 'Fday'
    end
    object qryFormsInfoFTime: TFloatField
      DisplayLabel = #1587#1575#1593#1578' '
      FieldName = 'FTime'
    end
    object qryFormsInfo_Day: TFloatField
      DisplayLabel = #1578#1593#1583#1575#1583
      FieldKind = fkLookup
      FieldName = '_Day'
      LookupDataSet = qryFunctionItems
      LookupKeyFields = 'SalaryID'
      LookupResultField = 'FDaily'
      KeyFields = 'FormInfoID'
      Lookup = True
    end
    object qryFormsInfo_Time: TFloatField
      DisplayLabel = #1587#1575#1593#1578' '
      FieldKind = fkLookup
      FieldName = '_Time'
      LookupDataSet = qryFunctionItems
      LookupKeyFields = 'SalaryID'
      LookupResultField = 'FHours'
      KeyFields = 'FormInfoID'
      Lookup = True
    end
    object qryFormsInfoAccTopicCode: TIntegerField
      FieldName = 'AccTopicCode'
    end
    object qryFormsInfoAccDetailCode: TIntegerField
      FieldName = 'AccDetailCode'
    end
    object qryFormsInfoAccCTopicCode: TIntegerField
      FieldName = 'AccCTopicCode'
    end
    object qryFormsInfoAccCTopicCode2: TIntegerField
      FieldName = 'AccCTopicCode2'
    end
    object qryFormsInfoMaxDay: TFloatField
      FieldName = 'MaxDay'
    end
    object qryFormsInfoMaxTime: TFloatField
      FieldName = 'MaxTime'
    end
    object qryFormsInfo_AccTopicCode: TIntegerField
      FieldKind = fkLookup
      FieldName = '_AccTopicCode'
      LookupDataSet = qryFunctionItems
      LookupKeyFields = 'SalaryID'
      LookupResultField = 'AccTopicCode'
      KeyFields = 'FormInfoID'
      Lookup = True
    end
    object qryFormsInfo_AccDetailCode: TIntegerField
      FieldKind = fkLookup
      FieldName = '_AccDetailCode'
      LookupDataSet = qryFunctionItems
      LookupKeyFields = 'SalaryID'
      LookupResultField = 'AccDetailCode'
      KeyFields = 'FormInfoID'
      Lookup = True
    end
    object qryFormsInfo_AccCTopicCode: TIntegerField
      FieldKind = fkLookup
      FieldName = '_AccCTopicCode'
      LookupDataSet = qryFunctionItems
      LookupKeyFields = 'SalaryID'
      LookupResultField = 'AccCTopicCode'
      KeyFields = 'FormInfoID'
      Lookup = True
    end
    object qryFormsInfo_AccCTopicCode2: TIntegerField
      FieldKind = fkLookup
      FieldName = '_AccCTopicCode2'
      LookupDataSet = qryFunctionItems
      LookupKeyFields = 'SalaryID'
      LookupResultField = 'AccCTopicCode2'
      KeyFields = 'FormInfoID'
      Lookup = True
    end
    object qryFormsInfoRecalKindClock: TWordField
      FieldName = 'RecalKindClock'
    end
    object qryFormsInfoFTimeH: TFloatField
      DisplayLabel = #1587#1575#1593#1578':'
      FieldName = 'FTimeH'
      OnChange = qryFormsInfoFTimeHChange
    end
    object qryFormsInfoFTimeM: TFloatField
      DisplayLabel = #1583#1602#1610#1602#1607
      FieldName = 'FTimeM'
      OnChange = qryFormsInfoFTimeHChange
    end
  end
  object qryOfficeCode: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT FormInfoID, InfoID, InfoName_L1, InfoName_L2 FROM Pay.For' +
        'msInfo '
      '     WHERE  FormType =12'
      '')
    Left = 646
    Top = 270
  end
  object qryProject: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'FormType'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     FormsInfo.InfoID, FormsInfo.FormInfoID, ISNULL(FormsI' +
        'nfo_1.InfoName_L1 + '#39' - '#39', '#39#39') + FormsInfo.InfoName_L1 AS InfoNa' +
        'me_L1, '
      '                      FormsInfo.InfoName_L2'
      'FROM Pay.FormsInfo LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfo_1 ON FormsInfo.' +
        'PrvInfoID = FormsInfo_1.FormInfoID'
      '    WHERE  FormsInfo.FormType =:FormType ')
    Left = 450
    Top = 154
    object qryProjectFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qryProjectInfoID: TIntegerField
      FieldName = 'InfoID'
    end
    object qryProjectInfoName_L1: TStringField
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object qryProjectInfoName_L2: TStringField
      FieldName = 'InfoName_L2'
      Size = 255
    end
  end
  object qryProcCode: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT FormInfoID, InfoID, InfoName_L1, InfoName_L2 FROM Pay.For' +
        'msInfo '
      '     WHERE  FormType =67')
    Left = 460
    Top = 216
  end
  object qryCTopic3: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT FormInfoID, InfoID, InfoName_L1, InfoName_L2 FROM Pay.For' +
        'msInfo '
      '     WHERE  FormType =69'
      '')
    Left = 194
    Top = 254
  end
  object PopMnuOthers: TPopupMenu
    Left = 177
    Top = 414
    object ActShowInterdict1: TMenuItem
      Action = ActShowInterdict
    end
    object N1: TMenuItem
      Action = ActPersonelInfoF
    end
    object N2: TMenuItem
      Action = actcalc
    end
    object N3: TMenuItem
      Action = actFilter
    end
    object MnuCalcAllDay: TMenuItem
      Action = actCalcAllDay
    end
    object mnuN4: TMenuItem
      Caption = '-'
    end
    object mnuSetSelectedSituation0: TMenuItem
      Action = actSetSelectedSituation0
    end
    object mnuSetSelectedSituationAll0: TMenuItem
      Action = actSetSelectedSituationAll0
    end
    object mnuSetSelectedSituation1: TMenuItem
      Action = actSetSelectedSituation1
    end
    object mnuSetSelectedSituationAll1: TMenuItem
      Action = actSetSelectedSituationAll1
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object N5: TMenuItem
      Action = actPrint
    end
  end
  object DataSource1: TDataSource
    DataSet = qryFunctionItems
    Left = 347
    Top = 280
  end
  object qryInitQry: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT  *  FROM Pay.FormTypes'
      'where FormType= 28')
    Left = 580
    Top = 216
  end
  object ppReport1: TppReport
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
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
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
    Left = 312
    Top = 176
    Version = '23.0'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
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
  object pplnPersonel: TppDBPipeline
    DataSource = SrcPersonel
    UserName = 'pplnPersonel'
    Left = 384
    Top = 216
    object pplnPersonelppField1: TppField
      FieldAlias = 'PersonelNo'
      FieldName = 'PersonelNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object pplnPersonelppField2: TppField
      FieldAlias = 'PersonName_L1'
      FieldName = 'PersonName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object pplnPersonelppField3: TppField
      FieldAlias = 'PersonName_L2'
      FieldName = 'PersonName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object pplnPersonelppField4: TppField
      FieldAlias = 'jobCode'
      FieldName = 'jobCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object pplnPersonelppField5: TppField
      FieldAlias = 'InfoID'
      FieldName = 'InfoID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object pplnPersonelppField6: TppField
      FieldAlias = 'InfoName_L1'
      FieldName = 'InfoName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object pplnPersonelppField7: TppField
      FieldAlias = 'InfoName_L2'
      FieldName = 'InfoName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object pplnPersonelppField8: TppField
      FieldAlias = 'HasFunction'
      FieldName = 'HasFunction'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object pplnPersonelppField9: TppField
      FieldAlias = 'OfficeCode'
      FieldName = 'OfficeCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object pplnPersonelppField10: TppField
      FieldAlias = 'EmployTypeID'
      FieldName = 'EmployTypeID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object pplnPersonelppField11: TppField
      FieldAlias = 'StandardEmployAmount'
      FieldName = 'StandardEmployAmount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object pplnPersonelppField12: TppField
      FieldAlias = 'FunCount'
      FieldName = 'FunCount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object pplnPersonelppField13: TppField
      FieldAlias = 'CalCulateType'
      FieldName = 'CalCulateType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object pplnPersonelppField14: TppField
      FieldAlias = 'CoefficientActive'
      FieldName = 'CoefficientActive'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object pplnPersonelppField15: TppField
      FieldAlias = 'InterdicStartDate'
      FieldName = 'InterdicStartDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object pplnPersonelppField16: TppField
      FieldAlias = 'InterdicEndDate'
      FieldName = 'InterdicEndDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
  end
  object pplnFunction: TppDBPipeline
    DataSource = SrcFunctions
    UserName = 'pplnFunction'
    Left = 272
    Top = 232
  end
end

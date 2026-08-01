inherited CustomersProjectF: TCustomersProjectF
  Left = 355
  Top = 225
  ActiveControl = cmbGroups
  Caption = #1605#1593#1585#1601#1610' '#1662#1585#1608#1688#1607
  ClientHeight = 678
  ClientWidth = 1016
  OnResize = FormResize
  ExplicitWidth = 1024
  ExplicitHeight = 709
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 637
    Width = 1016
    ExplicitTop = 637
    ExplicitWidth = 1016
    inherited BtnReject: TBitBtn
      Left = 2
      Margins.Left = 1
      Margins.Right = 1
      TabOrder = 3
      ExplicitLeft = 2
    end
    object newPanel: TPanel
      Left = 630
      Top = 1
      Width = 385
      Height = 39
      Align = alRight
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 0
      object BitBtn3: TBitBtn
        AlignWithMargins = True
        Left = 309
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
        Left = 232
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
        Left = 155
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
      object BitBtn10: TBitBtn
        AlignWithMargins = True
        Left = 78
        Top = 6
        Width = 75
        Height = 27
        Margins.Left = 1
        Margins.Top = 6
        Margins.Right = 1
        Margins.Bottom = 6
        Action = actGetExel
        Align = alRight
        Caption = #1582#1608#1575#1606#1583#1606' Excel'
        TabOrder = 3
      end
      object BitBtn15: TBitBtn
        AlignWithMargins = True
        Left = 1
        Top = 6
        Width = 75
        Height = 27
        Margins.Left = 1
        Margins.Top = 6
        Margins.Right = 1
        Margins.Bottom = 6
        Align = alRight
        Caption = #1575#1591#1604#1575#1593#1575#1578' '#1605#1575#1604#1610#1575#1578
        TabOrder = 4
        OnClick = BitBtn15Click
      end
    end
    object okPanel: TPanel
      Left = 465
      Top = 1
      Width = 165
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
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
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 156
      Top = 7
      Width = 75
      Height = 27
      Hint = ' '
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 2
      OnClick = BitBtn2Click
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 233
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actSendExel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 4
    end
    object BitBtn9: TBitBtn
      AlignWithMargins = True
      Left = 79
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 5
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 310
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actPrint
      Align = alLeft
      Caption = #1670#1600#1600#1600#1575#1662'(F7)'
      TabOrder = 6
    end
    object btnRow: TBitBtn
      AlignWithMargins = True
      Left = 387
      Top = 7
      Width = 75
      Height = 27
      Hint = ' '
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Align = alLeft
      Caption = #1585#1583#1610#1601' '#1711#1584#1575#1585#1610
      TabOrder = 7
      OnClick = btnRowClick
    end
  end
  inherited Panel2: TPanel
    Width = 1016
    ExplicitWidth = 1016
    DesignSize = (
      1016
      53)
    inherited ImgTemplate: TImage
      Left = 979
      Top = 7
      ExplicitLeft = 761
      ExplicitTop = 7
    end
    inherited lblCaption: TLabel
      Left = 908
      ExplicitLeft = 908
    end
    inherited lblBaseDate: TLabel
      Left = 402
      ExplicitLeft = 386
    end
    object dbchkCustomerActive: TDBCheckBox
      Left = 11
      Top = 9
      Width = 62
      Height = 17
      Alignment = taLeftJustify
      Caption = #1594#1610#1585' '#1601#1593#1575#1604
      DataField = 'CustomerActive'
      DataSource = srcCustomers
      TabOrder = 0
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object dbchkCustomerState: TDBCheckBox
      Left = 11
      Top = 32
      Width = 174
      Height = 17
      Alignment = taLeftJustify
      BiDiMode = bdLeftToRight
      Caption = #1605#1588#1578#1585#1740' '#1576#1585#1575#1740' '#1579#1576#1578' '#1594#1610#1585' '#1601#1593#1575#1604' '#1588#1608#1583'.'#8207
      DataField = 'CustomerState'
      DataSource = srcCustomers
      ParentBiDiMode = False
      TabOrder = 1
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
  end
  inherited Panel3: TPanel
    Width = 1016
    Height = 584
    ExplicitWidth = 1016
    ExplicitHeight = 584
    object Panel1: TPanel
      Left = 704
      Top = 2
      Width = 310
      Height = 580
      Align = alRight
      BorderWidth = 5
      BorderStyle = bsSingle
      TabOrder = 0
      object GroupBox2: TGroupBox
        Left = 6
        Top = 6
        Width = 294
        Height = 74
        Align = alTop
        Caption = '  '#1575#1606#1578#1582#1575#1576' '#1711#1585#1608#1607' '#1662#1585#1608#1688#1607' '#1607#1575'   '
        TabOrder = 0
        object cmbGroups: TComboBox
          AlignWithMargins = True
          Left = 5
          Top = 48
          Width = 284
          Height = 21
          Align = alBottom
          AutoDropDown = True
          Style = csDropDownList
          Color = 14024703
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnChange = cmbGroupsChange
          OnEnter = cmbGroupsEnter
        end
        object Panel10: TPanel
          Left = 2
          Top = 15
          Width = 290
          Height = 30
          Align = alTop
          TabOrder = 1
          object SpeedButton1: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 23
            Height = 22
            Align = alLeft
            Caption = '...'
            OnClick = SpeedButton1Click
            ExplicitLeft = 3
            ExplicitTop = 1
          end
          object btnSelect: TSpeedButton
            AlignWithMargins = True
            Left = 33
            Top = 4
            Width = 23
            Height = 22
            Align = alLeft
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00636B
              7300C69C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006394B500218C
              EF002173B500CE9C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF004AB5FF0042A5
              FF00218CEF007B849400CE9C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0052BD
              FF005ABDFF00218CEF002173B500CE9C9400FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0031A5
              FF0052BDFF0042A5FF00218CEF0084849400CE9C9400FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0052BDFF005ABDFF003184D60052636B00FF00FF009C6B6B00CEA5
              9C00D6B5A500CE9C9C00C6949400FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0031A5FF0052BDFF00C6CEDE009C9C9C00AD8C8400E7D6BD00FFFF
              D600FFFFDE00FFFFD600EFDEC600FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00C6ADAD00CEA59400FFE7BD00FFF7CE00FFFF
              D600FFFFD600FFFFDE00FFFFE700FFFFFF00C6A5A500FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00BD8C8C00EFDEB500F7D6AD00FFF7CE00EFDE
              A500B55A1800FFFFEF00FFFFF700FFFFFF00F7EFDE00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00E7CEAD00FFEFBD00F7CE9C00EFC68400EFC6
              8400B55A1800E7D6C600E7D6C600FFFFDE00FFFFDE00C6949400FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00EFD6B500FFE7B500F7C68C00B55A1800B55A
              1800B55A1800B55A1800B55A1800FFFFDE00FFFFDE00BD9C8C00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00E7CEAD00FFEFBD00EFBD8400F7C69400FFEF
              C600B55A1800FFFFD600FFFFD600FFFFD600FFFFDE00C6949400FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00D6ADA500FFEFBD00F7DEAD00F7CE9C00F7D6
              A500B55A1800FFFFD600FFFFD600FFFFD600FFFFD600FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00C69C8C00FFFFFF00FFFFFF00F7C6
              9400EFBD8400F7C69400F7D6AD00FFEFC600BD9C8C00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00EFEFE700FFFFEF00FFE7
              B500F7DEAD00FFE7B500FFEFBD00C69C9400FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C69C
              8C00CEA59C00C69C9400FF00FF00FF00FF00FF00FF00FF00FF00}
            OnClick = btnSelectClick
            ExplicitLeft = 80
            ExplicitTop = 0
          end
          object chkAllCusts: TCheckBox
            Left = 199
            Top = 1
            Width = 90
            Height = 28
            Align = alRight
            Alignment = taLeftJustify
            BiDiMode = bdRightToLeft
            Caption = '&'#1607#1605#1607' '#1662#1585#1608#1688#1607' '#1607#1575
            ParentBiDiMode = False
            TabOrder = 0
            OnClick = chkAllCustsClick
          end
        end
      end
      object dbgrdCustomers: TCedarDbgrid
        Left = 6
        Top = 80
        Width = 294
        Height = 490
        Align = alClient
        Color = clCream
        DataSource = srcCustomers
        DynProps = <>
        EvenRowColor = clCream
        Flat = True
        FooterParams.FillStyle = cfstGradientEh
        FooterParams.Font.Charset = DEFAULT_CHARSET
        FooterParams.Font.Color = clWindowText
        FooterParams.Font.Height = -13
        FooterParams.Font.Name = 'Tahoma'
        FooterParams.Font.Style = [fsBold]
        FooterParams.ParentFont = False
        FooterParams.VertLines = False
        GridLineParams.VertEmptySpaceStyle = dessNonEh
        HorzScrollBar.ExtraPanel.NavigatorButtons = [nbFirstEh, nbPriorEh, nbNextEh, nbLastEh, nbRefreshEh]
        HorzScrollBar.ExtraPanel.Visible = True
        IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
        IndicatorParams.RecNoShowStep = 5
        IndicatorTitle.ShowDropDownSign = True
        IndicatorTitle.TitleButton = True
        OddRowColor = clGradientInactiveCaption
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDblClickOptimizeColWidth, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove]
        PopupMenu = sd
        ReadOnly = True
        RowHeight = 20
        SearchPanel.Enabled = True
        SearchPanel.FilterOnTyping = True
        SortLocal = True
        TabOrder = 1
        OnDblClick = actCustomersInterViewExecute
        OnKeyPress = dbgrdCustomersKeyPress
        ActiveSearchPanel = False
        SelectFooterIndex = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CustID'
            Footers = <>
            Title.TitleButton = True
            Width = 32
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CustName'
            Footers = <>
            Title.TitleButton = True
            Width = 32
          end
          item
            CellButtons = <>
            Color = 13431799
            DynProps = <>
            EditButtons = <>
            FieldName = 'InfoDate'
            Footers = <>
            Title.TitleButton = True
            Width = 32
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PersonID1'
            Footers = <>
            Title.TitleButton = True
            Width = 32
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_PersonID1'
            Footers = <>
            Title.TitleButton = True
            Width = 32
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PersonID3'
            Footers = <>
            Title.TitleButton = True
            Width = 32
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_PersonID3'
            Footers = <>
            Title.TitleButton = True
            Width = 32
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 2
      Width = 702
      Height = 580
      Align = alClient
      BevelInner = bvRaised
      BorderWidth = 3
      FullRepaint = False
      TabOrder = 1
      DesignSize = (
        702
        580)
      object Label2: TLabel
        Left = 624
        Top = 17
        Width = 50
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1588#1605#1575#1585#1607' '#1601#1585#1605
        FocusControl = edtCustID
        ExplicitLeft = 640
      end
      object Label3: TLabel
        Left = 624
        Top = 45
        Width = 38
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1606#1575#1605' '#1662#1585#1608#1688#1607
        FocusControl = edtCustName
        ExplicitLeft = 640
      end
      object Label14: TLabel
        Left = 624
        Top = 72
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1610#1582
        ExplicitLeft = 640
      end
      object dbtxt_PersonID1: TDBText
        Left = 359
        Top = 123
        Width = 263
        Height = 16
        Anchors = [akTop, akRight]
        Color = 13948116
        DataField = '_PersonID1'
        DataSource = srcCustomers
        ParentColor = False
        Transparent = True
        ExplicitLeft = 375
      end
      object SpeedButton3: TSpeedButton
        Left = 359
        Top = 95
        Width = 23
        Height = 22
        Hint = 'PersonID1'
        Anchors = [akTop, akRight]
        Caption = '...'
        OnClick = SpeedButton3Click
        ExplicitLeft = 375
      end
      object Label16: TLabel
        Left = 624
        Top = 99
        Width = 51
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1705#1583' '#1605#1588#1578#1585#1740
        ExplicitLeft = 640
      end
      object edtInfoDate: TDBEdit
        Left = 359
        Top = 68
        Width = 263
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'InfoDate'
        DataSource = srcCustomers
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object edtCustID: TDBEdit
        Left = 359
        Top = 13
        Width = 263
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'CustID'
        DataSource = srcCustomers
        TabOrder = 0
      end
      object edtCustName: TDBEdit
        Left = 359
        Top = 41
        Width = 263
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'CustName'
        DataSource = srcCustomers
        TabOrder = 2
      end
      object PageControl1: TPageControl
        Left = 5
        Top = 216
        Width = 692
        Height = 359
        ActivePage = TabSheet3
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 3
        object TabSheet3: TTabSheet
          Caption = #1601#1585#1608#1588
          ImageIndex = 10
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          DesignSize = (
            684
            331)
          object Label9: TLabel
            Left = 550
            Top = 7
            Width = 50
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1570#1583#1585#1587' '#1662#1585#1608#1688#1607
            Transparent = True
            ExplicitLeft = 566
          end
          object Label70: TLabel
            Left = 550
            Top = 32
            Width = 63
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1588#1605#1575#1585#1607' '#1602#1585#1575#1585#1583#1575#1583
            ExplicitLeft = 566
          end
          object Label56: TLabel
            Left = 550
            Top = 58
            Width = 114
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1578#1575#1585#1740#1582' '#1578#1608#1575#1601#1602#1740' '#1578#1581#1608#1740#1604' '#1662#1585#1608#1688#1607' '
            FocusControl = edtVatValidityDate
            ExplicitLeft = 566
          end
          object Label69: TLabel
            Left = 0
            Top = 259
            Width = 684
            Height = 13
            Align = alBottom
            Caption = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
            ExplicitLeft = 608
            ExplicitWidth = 76
          end
          object Label34: TLabel
            Left = 550
            Top = 83
            Width = 111
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1578#1575#1585#1740#1582' '#1602#1591#1593#1740' '#1578#1581#1608#1740#1604' '#1662#1585#1608#1688#1607' '
            FocusControl = edtBusinesslicenseValidityDate
            ExplicitLeft = 566
          end
          object Label35: TLabel
            Left = 312
            Top = 32
            Width = 28
            Height = 13
            Caption = #1575#1587#1578#1575#1606
            FocusControl = DBLookupComboBox1
          end
          object Label42: TLabel
            Left = 312
            Top = 58
            Width = 22
            Height = 13
            Caption = #1588#1607#1585
            FocusControl = DBLookupComboBox2
          end
          object Label6: TLabel
            Left = 312
            Top = 84
            Width = 21
            Height = 13
            Alignment = taRightJustify
            Caption = #1578#1604#1601#1606
            Transparent = True
          end
          object dbmmoAddress: TDBMemo
            Tag = 111
            Left = 30
            Top = 1
            Width = 518
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            DataField = 'Address'
            DataSource = srcCustomers
            TabOrder = 0
          end
          object edtPaymentCode: TDBEdit
            Left = 430
            Top = 28
            Width = 118
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            DataField = 'PaymentCode'
            DataSource = srcCustomers
            TabOrder = 1
          end
          object edtVatValidityDate: TDBEdit
            Left = 414
            Top = 54
            Width = 134
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'VatValidityDate'
            DataSource = srcCustomers
            TabOrder = 2
          end
          object dbmmoCustomerNote1: TDBMemo
            Tag = 111
            Left = 0
            Top = 272
            Width = 684
            Height = 59
            Align = alBottom
            Anchors = [akLeft, akTop, akRight, akBottom]
            DataField = 'CustomerNote'
            DataSource = srcCustomers
            TabOrder = 3
          end
          object GroupBox4: TGroupBox
            Left = 0
            Top = 208
            Width = 684
            Height = 51
            Align = alBottom
            Caption = #1705#1575#1585#1711#1585#1740' '#1608' '#1578#1582#1604#1740#1607' '#1576#1575#1585
            TabOrder = 4
            object Label15: TLabel
              Left = 394
              Top = 15
              Width = 40
              Height = 13
              Align = alRight
              Caption = #1578#1608#1590#1610#1581#1575#1578
            end
            object dbrgrpUnloading: TDBRadioGroup
              Left = 587
              Top = 15
              Width = 95
              Height = 34
              Align = alRight
              Columns = 2
              DataField = 'Unloading'
              DataSource = srcCustomers
              Items.Strings = (
                #1583#1575#1585#1583
                #1606#1583#1575#1585#1583)
              TabOrder = 0
              Values.Strings = (
                'True'
                'False')
            end
            object dbrgrpUnloadingFree: TDBRadioGroup
              Left = 434
              Top = 15
              Width = 153
              Height = 34
              Align = alRight
              Columns = 2
              DataField = 'UnloadingFree'
              DataSource = srcCustomers
              Items.Strings = (
                #1585#1575#1740#1711#1575#1606
                #1594#1740#1585' '#1585#1575#1740#1711#1575#1606)
              TabOrder = 1
              Values.Strings = (
                'True'
                'False')
            end
            object dbmmoSubmitNote: TDBMemo
              Tag = 111
              Left = 2
              Top = 15
              Width = 392
              Height = 34
              Align = alClient
              DataField = 'SubmitNote'
              DataSource = srcCustomers
              TabOrder = 2
            end
          end
          object GroupBox5: TGroupBox
            Left = 0
            Top = 106
            Width = 684
            Height = 51
            Align = alBottom
            Caption = #1606#1589#1576#1548#1570#1605#1608#1586#1588' '#1608' '#1585#1575#1607' '#1575#1606#1583#1575#1586#1740
            TabOrder = 5
            object Label23: TLabel
              Left = 394
              Top = 15
              Width = 40
              Height = 13
              Align = alRight
              Caption = #1578#1608#1590#1610#1581#1575#1578
            end
            object dbrgrpInstallation: TDBRadioGroup
              Left = 587
              Top = 15
              Width = 95
              Height = 34
              Align = alRight
              Columns = 2
              DataField = 'Installation'
              DataSource = srcCustomers
              Items.Strings = (
                #1583#1575#1585#1583
                #1606#1583#1575#1585#1583)
              TabOrder = 0
              Values.Strings = (
                'True'
                'False')
            end
            object dbrgrpInstallationFree: TDBRadioGroup
              Left = 434
              Top = 15
              Width = 153
              Height = 34
              Align = alRight
              Columns = 2
              DataField = 'InstallationFree'
              DataSource = srcCustomers
              Items.Strings = (
                #1585#1575#1740#1711#1575#1606
                #1594#1740#1585' '#1585#1575#1740#1711#1575#1606)
              TabOrder = 1
              Values.Strings = (
                'True'
                'False')
            end
            object dbmmoInstallationNote: TDBMemo
              Tag = 111
              Left = 2
              Top = 15
              Width = 392
              Height = 34
              Align = alClient
              DataField = 'InstallationNote'
              DataSource = srcCustomers
              TabOrder = 2
            end
          end
          object GroupBox6: TGroupBox
            Left = 0
            Top = 157
            Width = 684
            Height = 51
            Align = alBottom
            Caption = #1575#1585#1587#1575#1604
            TabOrder = 6
            object dbrgrpSubmit: TDBRadioGroup
              Left = 587
              Top = 15
              Width = 95
              Height = 34
              Align = alRight
              Columns = 2
              DataField = 'Submit'
              DataSource = srcCustomers
              Items.Strings = (
                #1583#1575#1585#1583
                #1606#1583#1575#1585#1583)
              TabOrder = 0
              Values.Strings = (
                'True'
                'False')
            end
            object dbrgrpSubmitFree: TDBRadioGroup
              Left = 434
              Top = 15
              Width = 153
              Height = 34
              Align = alRight
              Columns = 2
              DataField = 'SubmitFree'
              DataSource = srcCustomers
              Items.Strings = (
                #1585#1575#1740#1711#1575#1606
                #1594#1740#1585' '#1585#1575#1740#1711#1575#1606)
              TabOrder = 1
              Values.Strings = (
                'True'
                'False')
            end
          end
          object edtBusinesslicenseValidityDate: TDBEdit
            Left = 414
            Top = 79
            Width = 134
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'BusinesslicenseValidityDate'
            DataSource = srcCustomers
            TabOrder = 7
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 30
            Top = 28
            Width = 276
            Height = 21
            DataField = '_Ostan'
            DataSource = srcCustomers
            TabOrder = 8
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 30
            Top = 54
            Width = 276
            Height = 21
            DataField = '_Shahr'
            DataSource = srcCustomers
            TabOrder = 9
          end
          object edtTel: TDBEdit
            Left = 30
            Top = 81
            Width = 276
            Height = 21
            DataField = 'Tel'
            DataSource = srcCustomers
            TabOrder = 10
          end
        end
        object tsAcc: TTabSheet
          Caption = #1581#1587#1575#1576#1583#1575#1585#1610
          object Panel13: TScrollBox
            Left = 0
            Top = 0
            Width = 684
            Height = 331
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvRaised
            BorderStyle = bsNone
            Color = clBtnFace
            ParentBackground = True
            ParentColor = False
            TabOrder = 0
            DesignSize = (
              684
              331)
            object Label11: TLabel
              Left = 559
              Top = 51
              Width = 51
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610
              Transparent = True
              ExplicitLeft = 526
            end
            object SpeedButton2: TSpeedButton
              Left = 461
              Top = 46
              Width = 23
              Height = 22
              Anchors = [akTop, akRight]
              Caption = '...'
              OnClick = SpeedButton2Click
              ExplicitLeft = 428
            end
            object DBText1: TDBText
              Left = 5
              Top = 49
              Width = 454
              Height = 16
              Anchors = [akLeft, akTop, akRight]
              Color = 13948116
              DataField = '__DetailCode'
              DataSource = srcCustomers
              ParentColor = False
              Transparent = True
              ExplicitWidth = 421
            end
            object Label22: TLabel
              Left = 559
              Top = 88
              Width = 57
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'
              Transparent = True
              ExplicitLeft = 579
            end
            object SpeedButton5: TSpeedButton
              Left = 461
              Top = 83
              Width = 23
              Height = 22
              Anchors = [akTop, akRight]
              Caption = '...'
              OnClick = SpeedButton5Click
              ExplicitLeft = 428
            end
            object DBText5: TDBText
              Left = 5
              Top = 86
              Width = 454
              Height = 16
              Anchors = [akLeft, akTop, akRight]
              Color = 13948116
              DataField = '__CTopicCodeName'
              DataSource = srcCustomers
              ParentColor = False
              Transparent = True
              ExplicitWidth = 421
            end
            object Label24: TLabel
              Left = 559
              Top = 125
              Width = 57
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'3'
              Transparent = True
              ExplicitLeft = 579
            end
            object SpeedButton6: TSpeedButton
              Left = 461
              Top = 120
              Width = 23
              Height = 22
              Anchors = [akTop, akRight]
              Caption = '...'
              OnClick = SpeedButton6Click
              ExplicitLeft = 428
            end
            object DBText6: TDBText
              Left = 5
              Top = 123
              Width = 453
              Height = 16
              Anchors = [akLeft, akTop, akRight]
              Color = 13948116
              DataField = '__CTopicCodeName2'
              DataSource = srcCustomers
              ParentColor = False
              Transparent = True
              ExplicitWidth = 420
            end
            object SpeedButton10: TSpeedButton
              Left = 461
              Top = 156
              Width = 23
              Height = 22
              Anchors = [akTop, akRight]
              Caption = '...'
              OnClick = SpeedButton10Click
              ExplicitLeft = 428
            end
            object DBText4: TDBText
              Left = 3
              Top = 13
              Width = 454
              Height = 16
              Anchors = [akLeft, akTop, akRight]
              Color = 13948116
              DataField = '__TopicCodeName'
              DataSource = srcCustomers
              ParentColor = False
              Transparent = True
              ExplicitWidth = 421
            end
            object DBText3: TDBText
              Left = 5
              Top = 159
              Width = 454
              Height = 16
              Anchors = [akLeft, akTop, akRight]
              Color = 13948116
              DataField = '__CTopicCodeName3'
              DataSource = srcCustomers
              ParentColor = False
              Transparent = True
              ExplicitWidth = 421
            end
            object Label49: TLabel
              Left = 561
              Top = 15
              Width = 45
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1603#1583' '#1581#1587#1575#1576
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExplicitLeft = 581
            end
            object SpeedButton11: TSpeedButton
              Left = 461
              Top = 10
              Width = 23
              Height = 22
              Anchors = [akTop, akRight]
              Caption = '...'
              OnClick = SpeedButton11Click
              ExplicitLeft = 428
            end
            object Label48: TLabel
              Left = 559
              Top = 161
              Width = 57
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'4'
              Transparent = True
              ExplicitLeft = 579
            end
            object DBEdit18: TDBEdit
              Left = 487
              Top = 84
              Width = 70
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'acc_CTopicCode'
              DataSource = srcCustomers
              TabOrder = 0
              OnKeyDown = DBEdit18KeyDown
            end
            object DBEdit10: TDBEdit
              Left = 487
              Top = 157
              Width = 70
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'acc_CTopicCode3'
              DataSource = srcCustomers
              TabOrder = 1
              OnKeyDown = DBEdit19KeyDown
            end
            object DBEdit30: TDBEdit
              Left = 487
              Top = 11
              Width = 70
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'acc_TopicCode'
              DataSource = srcCustomers
              TabOrder = 2
            end
            object DBEdit19: TDBEdit
              Left = 487
              Top = 121
              Width = 70
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'acc_CTopicCode2'
              DataSource = srcCustomers
              TabOrder = 3
              OnKeyDown = DBEdit19KeyDown
            end
            object DBEdit15: TDBEdit
              Left = 487
              Top = 47
              Width = 70
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'acc_DetailCode'
              DataSource = srcCustomers
              TabOrder = 4
              OnKeyDown = DBEdit15KeyDown
            end
          end
        end
        object TabSheet10: TTabSheet
          Caption = #1578#1608#1590#1610#1581#1575#1578
          ImageIndex = 9
          object scrlbxPanel14: TScrollBox
            Left = 0
            Top = 0
            Width = 684
            Height = 331
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvRaised
            BorderStyle = bsNone
            Color = clBtnFace
            ParentBackground = True
            ParentColor = False
            TabOrder = 0
            DesignSize = (
              684
              331)
            object Label17: TLabel
              Left = 567
              Top = 5
              Width = 76
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
              Transparent = True
              ExplicitLeft = 534
            end
            object dbmmoCustomerNote: TDBMemo
              Tag = 111
              Left = 218
              Top = 25
              Width = 393
              Height = 80
              Anchors = [akTop, akRight]
              DataField = 'CustomerNote'
              DataSource = srcCustomers
              TabOrder = 0
            end
          end
        end
      end
      object edtPersonID1: TDBEdit
        Left = 389
        Top = 95
        Width = 233
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'PersonID1'
        DataSource = srcCustomers
        TabOrder = 4
        OnKeyDown = DBEdit15KeyDown
      end
      object GroupBox1: TGroupBox
        Left = 5
        Top = 5
        Width = 348
        Height = 211
        Align = alLeft
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = #1606#1601#1585#1575#1578' '#1605#1585#1578#1576#1591' '#1576#1575' '#1662#1585#1608#1688#1607
        TabOrder = 5
        object dbgrdCustomersBroker: TDBGrid
          Tag = 111
          Left = 2
          Top = 15
          Width = 344
          Height = 162
          Align = alClient
          Color = clCream
          DataSource = dsCustomersBroker
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnEditButtonClick = dbgrdCustomersBrokerEditButtonClick
          OnKeyPress = dbgrdCustomersBrokerKeyPress
          Columns = <
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'PersonID2'
              Width = 107
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_PersonID2'
              Width = 246
              Visible = True
            end>
        end
        object Panel6: TPanel
          Left = 2
          Top = 177
          Width = 344
          Height = 32
          Align = alBottom
          TabOrder = 1
          DesignSize = (
            344
            32)
          object btnBroker: TBitBtn
            Left = 239
            Top = 4
            Width = 75
            Height = 25
            Anchors = [akTop, akRight]
            Caption = #1575#1606#1578#1582#1575#1576'...'
            TabOrder = 0
            OnClick = btnBrokerClick
          end
          object BitBtn12: TBitBtn
            Left = 6
            Top = 4
            Width = 75
            Height = 25
            Anchors = [akLeft, akBottom]
            Caption = #1581#1584#1601' '#1585#1583#1610#1601
            TabOrder = 1
            OnClick = btnAlldelClick
          end
        end
      end
    end
  end
  inherited ActionList: TActionList
    Left = 584
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcCustomers
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcCustomers
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcCustomers
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcCustomers
    end
    inherited actSearch_: TAction
      ShortCut = 114
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcCustomers
    end
    object actPrint: TAction [8]
      Caption = #1670#1600#1600#1600#1575#1662'(F7)'
      Hint = ' '
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actSendExel: TAction [9]
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendExelExecute
    end
    object actSort: TAction [10]
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actViewFile: TAction [11]
      Tag = -2
      Caption = #1662#1610#1608#1587#1578' '#1608' '#1575#1587#1603#1606' ...'
      OnExecute = actViewFileExecute
    end
    object actChangeCustID: TAction [12]
      Caption = #1578#1594#1610#1610#1585' '#1603#1583' '#1605#1588#1578#1585#1610' '
      OnExecute = actChangeCustIDExecute
    end
    object actGetExel: TAction [13]
      Caption = #1582#1608#1575#1606#1583#1606' Excel'
      OnExecute = actGetExelExecute
    end
    object actCustomersInterView: TAction [14]
      Caption = #1579#1576#1578' '#1605#1584#1575#1603#1585#1575#1578' '#1576#1575' '#1605#1588#1578#1585#1610
      OnExecute = actCustomersInterViewExecute
    end
    inherited actSmsSend: TAction
      OnExecute = actSmsSendExecute
    end
    object actInfoSMSF: TAction
      Caption = 'Info SMS'
      OnExecute = actInfoSMSFExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 328
    Top = 6
  end
  object srcCustomers: TDataSource
    AutoEdit = False
    DataSet = qryCustomers
    OnStateChange = srcCustomersStateChange
    Left = 760
    Top = 264
  end
  object zbal: TzAPIBalloon
    AutoCloseMode = acAutoCalc
    Title = 'aaaaddddd'
    Prompt.Strings = (
      'FINANCES Ltd'
      'TzAPIBalloon ver. 1')
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 248
    Top = 8
  end
  object qryCustomers: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterOpen = qryCustomersAfterOpen
    AfterInsert = qryCustomersAfterInsert
    BeforeEdit = qryCustomersBeforeEdit
    AfterEdit = qryCustomersAfterEdit
    BeforePost = qryCustomersBeforePost
    AfterPost = qryCustomersAfterPost
    BeforeDelete = qryCustomersBeforeDelete
    AfterDelete = qryCustomersAfterDelete
    AfterScroll = qryCustomersAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT     *'
      'FROM         Customers')
    Left = 684
    Top = 7
    object qryCustomersTechnicalCode: TStringField
      FieldName = 'TechnicalCode'
      Size = 30
    end
    object qryCustomersCustID: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'CustID'
      Required = True
      OnChange = qryCustomersCustIDChange
    end
    object qryCustomersCustomerGrpID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1711#1585#1608#1607
      FieldName = 'CustomerGrpID'
      Required = True
    end
    object qryCustomersCustName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1662#1585#1608#1688#1607
      FieldName = 'CustName'
      Required = True
      Size = 120
    end
    object qryCustomersCustName_L2: TStringField
      Tag = 3
      DisplayLabel = 'CustName'
      FieldName = 'CustName_L2'
      Size = 150
    end
    object qryCustomersBalance: TBCDField
      Tag = 3
      FieldName = 'Balance'
      Precision = 19
    end
    object qryCustomersCountry: TStringField
      Tag = 3
      DisplayLabel = #1603#1588#1608#1585
      FieldName = 'Country'
    end
    object qryCustomersCity: TStringField
      Tag = 3
      DisplayLabel = #1588#1607#1585
      FieldName = 'City'
    end
    object qryCustomersWebSite: TStringField
      Tag = 3
      FieldName = 'WebSite'
      Size = 40
    end
    object qryCustomersRegion: TStringField
      Tag = 3
      DisplayLabel = #1605#1606#1591#1602#1607
      FieldName = 'Region'
      Size = 30
    end
    object qryCustomersAddress: TStringField
      Tag = 3
      DisplayLabel = #1570#1583#1585#1587
      FieldName = 'Address'
      Size = 300
    end
    object qryCustomersMobile: TStringField
      Tag = 3
      DisplayLabel = #1578#1604#1601#1606' '#1607#1605#1585#1575#1607
      FieldName = 'Mobile'
    end
    object qryCustomersTel: TStringField
      Tag = 3
      DisplayLabel = #1578#1604#1601#1606
      FieldName = 'Tel'
      Size = 30
    end
    object qryCustomersFax: TStringField
      Tag = 3
      DisplayLabel = #1601#1575#1603#1587
      FieldName = 'Fax'
      Size = 30
    end
    object qryCustomersemail: TStringField
      Tag = 3
      FieldName = 'email'
      Size = 30
    end
    object qryCustomerspobox: TStringField
      Tag = 3
      DisplayLabel = #1589#1606#1583#1608#1602' '#1662#1587#1578#1610
      FieldName = 'pobox'
      Size = 15
    end
    object qryCustomersacc_DetailCode: TStringField
      Tag = 3
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610' '#1581#1587#1575#1576#1583#1575#1585#1610
      FieldName = 'acc_DetailCode'
      Size = 12
    end
    object qryCustomers__DetailCode: TStringField
      DisplayLabel = #1588#1585#1581' '#1578#1601#1589#1610#1604#1610' '#1581#1587#1575#1576#1583#1575#1585#1610
      FieldKind = fkLookup
      FieldName = '__DetailCode'
      LookupDataSet = DmF.qryAccDetailCode
      LookupKeyFields = 'DetailCode'
      LookupResultField = 'DetailName'
      KeyFields = 'acc_DetailCode'
      Size = 250
      Lookup = True
    end
    object qryCustomersMaxCredit: TFMTBCDField
      Tag = 3
      DisplayLabel = #1587#1602#1601' '#1575#1593#1578#1576#1575#1585
      FieldName = 'MaxCredit'
      currency = True
      Precision = 19
    end
    object qryCustomersServiceCalcType: TWordField
      Tag = 3
      DisplayLabel = #1606#1581#1608#1607' '#1605#1581#1575#1587#1576#1607' '#1582#1583#1605#1575#1578
      FieldName = 'ServiceCalcType'
      OnChange = qryCustomersServiceCalcTypeChange
    end
    object qryCustomersServicePrice: TBCDField
      Tag = 3
      DisplayLabel = #1606#1585#1582' '#1582#1583#1605#1575#1578
      FieldName = 'ServicePrice'
      Precision = 19
    end
    object qryCustomersEconomicNumber: TStringField
      Tag = 3
      DisplayLabel = #1603#1583' '#1575#1602#1578#1589#1575#1583#1610
      FieldName = 'EconomicNumber'
    end
    object qryCustomersNationalID: TStringField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1604#1610
      FieldName = 'NationalID'
      Size = 12
    end
    object qryCustomersPostalCode: TStringField
      Tag = 3
      DisplayLabel = #1603#1583' '#1662#1587#1578#1610
      FieldName = 'PostalCode'
      Size = 12
    end
    object qryCustomersModifyDate: TDateTimeField
      Tag = 3
      FieldName = 'ModifyDate'
      EditMask = '9999/99/99'
    end
    object qryCustomersCustomerNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
      FieldName = 'CustomerNote'
      Size = 250
    end
    object qryCustomersValuationType: TWordField
      Tag = 3
      DisplayLabel = #1606#1581#1608#1607' '#1602#1610#1605#1578' '#1711#1584#1575#1585#1610' '#1601#1575#1603#1578#1608#1585#1607#1575
      FieldName = 'ValuationType'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryCustomersInfoWeight: TFloatField
      Tag = 3
      FieldName = 'InfoWeight'
    end
    object qryCustomersInfoDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1740#1582
      FieldName = 'InfoDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryCustomersGrpActionCustomer: TWordField
      Tag = 3
      FieldName = 'GrpActionCustomer'
      OnGetText = ALLLookUpGetText
      OnSetText = ALLLookUpSetText
    end
    object qryCustomersacc_CTopicCode: TStringField
      Tag = 3
      FieldName = 'acc_CTopicCode'
      Size = 12
    end
    object qryCustomersacc_CTopicCode2: TStringField
      Tag = 3
      FieldName = 'acc_CTopicCode2'
      Size = 12
    end
    object qryCustomers__CTopicCodeName: TStringField
      FieldKind = fkLookup
      FieldName = '__CTopicCodeName'
      LookupDataSet = DmF.qryAccCenterTopics
      LookupKeyFields = 'CTopicCode'
      LookupResultField = 'CTopicName'
      KeyFields = 'acc_CTopicCode'
      Size = 250
      Lookup = True
    end
    object qryCustomers__CTopicCodeName2: TStringField
      FieldKind = fkLookup
      FieldName = '__CTopicCodeName2'
      LookupDataSet = DmF.qryAccCenterTopics2
      LookupKeyFields = 'CTopicCode2'
      LookupResultField = 'CTopicName2'
      KeyFields = 'acc_CTopicCode2'
      Size = 250
      Lookup = True
    end
    object qryCustomersContactRate: TBCDField
      Tag = 3
      FieldName = 'ContactRate'
      currency = True
      Precision = 19
    end
    object qryCustomersManageName: TStringField
      Tag = 3
      FieldName = 'ManageName'
      Size = 60
    end
    object qryCustomersManagerSells: TStringField
      Tag = 3
      FieldName = 'ManagerSells'
      Size = 60
    end
    object qryCustomersContactNo: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1602#1585#1575#1585#1583#1575#1583
      FieldName = 'ContactNo'
    end
    object qryCustomersDiscountNote: TStringField
      Tag = 3
      FieldName = 'DiscountNote'
      Size = 30
    end
    object qryCustomersDiscount: TFloatField
      Tag = 3
      FieldName = 'Discount'
    end
    object qryCustomersDiscountOne: TFloatField
      FieldName = 'DiscountOne'
    end
    object qryCustomersDayTime: TIntegerField
      Tag = 3
      FieldName = 'DayTime'
    end
    object qryCustomersConveyKind: TWordField
      Tag = 3
      FieldName = 'ConveyKind'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryCustomersArzTypeID: TIntegerField
      Tag = 3
      FieldName = 'ArzTypeID'
      OnGetText = ALLLookUpGetText
      OnSetText = ALLLookUpSetText
    end
    object qryCustomersaccStateDefault: TWordField
      Tag = 3
      FieldName = 'accStateDefault'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryCustomersCustomersRow: TIntegerField
      Tag = 3
      DisplayLabel = #1585#1583#1610#1601' '#1605#1588#1578#1585#1610
      FieldName = 'CustomersRow'
    end
    object qryCustomersPersonID1: TIntegerField
      DisplayLabel = #1705#1583' '#1605#1588#1578#1585#1740
      FieldName = 'PersonID1'
    end
    object qryCustomers_PersonID1: TStringField
      DisplayLabel = #1605#1588#1578#1585#1740
      FieldKind = fkLookup
      FieldName = '_PersonID1'
      LookupDataSet = qryLookUpCust
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'PersonID1'
      ReadOnly = True
      Size = 150
      Lookup = True
    end
    object qryCustomersEstablishDate: TStringField
      FieldName = 'EstablishDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryCustomersSellsMethod: TIntegerField
      FieldName = 'SellsMethod'
      OnGetText = ALLLookUpGetText
      OnSetText = ALLLookUpSetText
    end
    object qryCustomersSellsEmporium: TIntegerField
      FieldName = 'SellsEmporium'
      OnGetText = ALLLookUpGetText
      OnSetText = ALLLookUpSetText
    end
    object qryCustomersSellsDefaultState: TWordField
      FieldName = 'SellsDefaultState'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryCustomersMasirID: TIntegerField
      FieldName = 'MasirID'
    end
    object qryCustomersMaxCreditCurrentForm: TBCDField
      FieldName = 'MaxCreditCurrentForm'
      currency = True
      Precision = 19
    end
    object qryCustomersReagentName: TWideStringField
      FieldName = 'ReagentName'
      Size = 60
    end
    object qryCustomersTel2: TWideStringField
      FieldName = 'Tel2'
      Size = 30
    end
    object qryCustomersTel3: TWideStringField
      FieldName = 'Tel3'
      Size = 30
    end
    object qryCustomersPersonID3: TIntegerField
      DisplayLabel = #1705#1583#1705#1575#1585#1601#1585#1605#1575
      FieldName = 'PersonID3'
    end
    object strngfldCustomers_PersonID3: TStringField
      DisplayLabel = #1705#1575#1585#1601#1585#1605#1575
      FieldKind = fkLookup
      FieldName = '_PersonID3'
      LookupDataSet = qryLookUpCust
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'PersonID3'
      Size = 200
      Lookup = True
    end
    object qryCustomersUseUnitID: TIntegerField
      FieldName = 'UseUnitID'
    end
    object qryCustomers_UseUnitName: TStringField
      FieldKind = fkLookup
      FieldName = '_UseUnitName'
      LookupDataSet = qryUseUnits
      LookupKeyFields = 'UseUnitID'
      LookupResultField = 'UseUnitName'
      KeyFields = 'UseUnitID'
      Size = 100
      Lookup = True
    end
    object qryCustomersCustomerGrpID2: TIntegerField
      FieldName = 'CustomerGrpID2'
    end
    object qryCustomers_CustomerGrpID2: TStringField
      FieldKind = fkLookup
      FieldName = '_CustomerGrpID2'
      LookupDataSet = qryCustomersGroup
      LookupKeyFields = 'CustomerGrpID'
      LookupResultField = 'CustomerGrpName'
      KeyFields = 'CustomerGrpID2'
      Size = 200
      Lookup = True
    end
    object qryCustomersacc_CTopicCode3: TStringField
      FieldName = 'acc_CTopicCode3'
      Size = 12
    end
    object qryCustomers__CTopicCodeName3: TStringField
      FieldKind = fkLookup
      FieldName = '__CTopicCodeName3'
      LookupDataSet = DmF.qryAccCenterTopics3
      LookupKeyFields = 'CTopicCode3'
      LookupResultField = 'CTopicName3'
      KeyFields = 'acc_CTopicCode3'
      Size = 250
      Lookup = True
    end
    object qryCustomersacc_TopicCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576
      FieldName = 'acc_TopicCode'
    end
    object qryCustomers__TopicCodeName: TStringField
      DisplayLabel = #1588#1585#1581' '#1581#1587#1575#1576' '#1581#1587#1575#1576
      FieldKind = fkLookup
      FieldName = '__TopicCodeName'
      LookupDataSet = DmF.qryAccTopicCode
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'MoeenName'
      KeyFields = 'acc_TopicCode'
      Size = 100
      Lookup = True
    end
    object qryCustomersCustAccountNumber: TStringField
      FieldName = 'CustAccountNumber'
      Size = 60
    end
    object qryCustomersRegisterNumber: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1579#1576#1578
      FieldName = 'RegisterNumber'
      Size = 30
    end
    object qryCustomersLastUser: TWideStringField
      FieldName = 'LastUser'
    end
    object qryCustomersFirstUser: TWideStringField
      FieldName = 'FirstUser'
    end
    object qryCustomersCustomerState: TWordField
      FieldName = 'CustomerState'
    end
    object qryCustomersCustFirstName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605
      FieldName = 'CustFirstName'
      Size = 30
    end
    object qryCustomersCustomerActive: TWordField
      Tag = 3
      DisplayLabel = #1608#1590#1593#1740#1578
      FieldName = 'CustomerActive'
    end
    object qryCustomersAccountKind: TIntegerField
      DisplayLabel = #1606#1608#1593' '#1581#1587#1575#1576' '#1576#1575#1606#1603#1610
      FieldName = 'AccountKind'
    end
    object qryCustomers_AccountKind: TStringField
      FieldKind = fkLookup
      FieldName = '_AccountKind'
      LookupDataSet = DmF.qryCurrencies
      LookupKeyFields = 'CurrenciesID'
      LookupResultField = 'CurrenciesName'
      KeyFields = 'AccountKind'
      Size = 50
      Lookup = True
    end
    object qryCustomersCustomerCheckNote: TStringField
      FieldName = 'CustomerCheckNote'
      Size = 255
    end
    object qryCustomersAlternativeCustID: TLargeintField
      FieldName = 'AlternativeCustID'
    end
    object qryCustomersVatValidityDate: TStringField
      FieldName = 'VatValidityDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryCustomersBusinesslicenseValidityDate: TStringField
      FieldName = 'BusinesslicenseValidityDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryCustomersAccountNumber: TStringField
      FieldName = 'AccountNumber'
      FixedChar = True
      Size = 25
    end
    object qryCustomersLeaseValidityDate: TStringField
      FieldName = 'LeaseValidityDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryCustomersArea: TFloatField
      FieldName = 'Area'
    end
    object qryCustomersDegree: TStringField
      FieldName = 'Degree'
      FixedChar = True
      Size = 1
    end
    object qryCustomersScore: TFloatField
      FieldName = 'Score'
    end
    object qryCustomersNumberCreditInstallments: TIntegerField
      FieldName = 'NumberCreditInstallments'
    end
    object qryCustomersMaxWeeklyShoppingCredit: TFMTBCDField
      FieldName = 'MaxWeeklyShoppingCredit'
      currency = True
      Precision = 19
    end
    object qryCustomersMinWeeklyShoppingAmount: TBCDField
      FieldName = 'MinWeeklyShoppingAmount'
      currency = True
      Precision = 19
    end
    object qryCustomersDayOrder: TWordField
      FieldName = 'DayOrder'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryCustomersHCKharidarTypeCode: TWordField
      FieldName = 'HCKharidarTypeCode'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryCustomersAlternativeCustID2: TLargeintField
      FieldName = 'AlternativeCustID2'
    end
    object qryCustomersPaymentCode: TLargeintField
      FieldName = 'PaymentCode'
    end
    object qryCustomersTelegramChatID: TStringField
      DisplayLabel = 'Telegram Chat ID'
      FieldName = 'TelegramChatID'
      FixedChar = True
      Size = 30
    end
    object qryCustomersNationalCode: TStringField
      DisplayLabel = #1588#1606#1575#1587#1607' '#1605#1604#1740
      FieldName = 'NationalCode'
      Size = 30
    end
    object qryCustomersExternalId: TStringField
      FieldName = 'ExternalId'
      Size = 100
    end
    object qryCustomersInstallation: TBooleanField
      FieldName = 'Installation'
    end
    object qryCustomersInstallationFree: TBooleanField
      FieldName = 'InstallationFree'
    end
    object qryCustomersInstallationNote: TStringField
      FieldName = 'InstallationNote'
      Size = 150
    end
    object qryCustomersSubmit: TBooleanField
      FieldName = 'Submit'
    end
    object qryCustomersSubmitFree: TBooleanField
      FieldName = 'SubmitFree'
    end
    object qryCustomersSubmitNote: TStringField
      FieldName = 'SubmitNote'
      Size = 150
    end
    object qryCustomersUnloading: TBooleanField
      FieldName = 'Unloading'
    end
    object qryCustomersStateCode: TIntegerField
      FieldName = 'StateCode'
    end
    object qryCustomers_Ostan: TStringField
      FieldKind = fkLookup
      FieldName = '_Ostan'
      LookupDataSet = DmF.qryOstan
      LookupKeyFields = 'OstanCode'
      LookupResultField = 'Ostan'
      KeyFields = 'StateCode'
      OnChange = qryCustomers_OstanChange
      Size = 255
      Lookup = True
    end
    object qryCustomersCityCode: TIntegerField
      FieldName = 'CityCode'
    end
    object qryCustomers_Shahr: TStringField
      FieldKind = fkLookup
      FieldName = '_Shahr'
      LookupDataSet = DmF.qryShahr
      LookupKeyFields = 'ShahrCode'
      LookupResultField = 'Shahr'
      KeyFields = 'CityCode'
      Size = 255
      Lookup = True
    end
    object qryCustomersEditDateTime: TDateTimeField
      FieldName = 'EditDateTime'
    end
    object qryCustomersBaleChatID: TStringField
      Tag = 3
      DisplayLabel = #1662#1585#1587#1606#1604'|Bale ChatID'
      FieldName = 'BaleChatID'
      FixedChar = True
      Size = 30
    end
    object qryCustomersUnloadingFree: TBooleanField
      FieldName = 'UnloadingFree'
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    Template.FileName = 'F:\4share\repCustomers5.rtm'
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
    Left = 952
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
        Brush.Color = clSilver
        mmHeight = 7408
        mmLeft = 0
        mmTop = 17992
        mmWidth = 284427
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCompanyName: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCompanyName'
        OnGetText = ppLabel1GetText
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
        mmLeft = 0
        mmTop = 1058
        mmWidth = 284427
        BandType = 0
        LayerName = Foreground
      end
      object ppSysVarPageNo: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SysVarPageNo1'
        OnGetText = ppSystemVariable1GetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 1852
        mmTop = 8996
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 273315
        mmTop = 17992
        mmWidth = 794
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578' '#1606#1575#1588#1585#1610#1606' '#1591#1585#1601' '#1602#1585#1575#1585#1583#1575#1583' (('#1582#1585#1610#1583' '#1602#1591#1593#1610')) '#1578#1575' '#1578#1575#1585#1610#1582' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 16
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 9525
        mmLeft = 94456
        mmTop = 7408
        mmWidth = 105410
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 234686
        mmTop = 17992
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = #1605#1583#1610#1585#1610#1578
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 215636
        mmTop = 19050
        mmWidth = 9525
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 206111
        mmTop = 17992
        mmWidth = 529
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = #1605#1583#1610#1585' '#1601#1585#1608#1588' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 187061
        mmTop = 19050
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 183621
        mmTop = 17992
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 161661
        mmTop = 17992
        mmWidth = 529
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1593#1602#1583' '#1602#1585#1575#1585#1583#1575#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5927
        mmLeft = 162190
        mmTop = 19050
        mmWidth = 20902
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 140494
        mmTop = 17992
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 99219
        mmTop = 17992
        mmWidth = 794
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6491
        mmLeft = 146844
        mmTop = 18785
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 55827
        mmTop = 17992
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = #1578#1604#1601#1606' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 114565
        mmTop = 18785
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line16'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 30427
        mmTop = 17992
        mmWidth = 529
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = #1578#1582#1601#1610#1601' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6491
        mmLeft = 74484
        mmTop = 18785
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        Border.mmPadding = 0
        Caption = #1605#1583#1578' '#1670#1603
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6491
        mmLeft = 37739
        mmTop = 18521
        mmWidth = 10513
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = #1607#1586#1610#1606#1607' '#1581#1605#1604' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6491
        mmLeft = 8423
        mmTop = 18785
        mmWidth = 11994
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = #1575#1606#1578#1588#1575#1585#1575#1578' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5927
        mmLeft = 247650
        mmTop = 19050
        mmWidth = 12418
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1585#1583#1610#1601' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 275184
        mmTop = 19315
        mmWidth = 7902
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'InfoDate'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 75936
        mmTop = 8996
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object ppLineDetail: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'LineDetail'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 281516
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
        mmLeft = 234686
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 273315
        mmTop = 0
        mmWidth = 529
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'ManageName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5927
        mmLeft = 206905
        mmTop = 265
        mmWidth = 27252
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 206111
        mmTop = 0
        mmWidth = 529
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 183621
        mmTop = 0
        mmWidth = 529
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'ManagerSells'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 184415
        mmTop = 529
        mmWidth = 20638
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 161661
        mmTop = 0
        mmWidth = 529
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'InfoDate'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6491
        mmLeft = 163513
        mmTop = 529
        mmWidth = 19844
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line101'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 140494
        mmTop = 0
        mmWidth = 529
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 99219
        mmTop = 0
        mmWidth = 529
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'ContactNo'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 141288
        mmTop = 529
        mmWidth = 20108
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line15'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 55827
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'Tel'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 100277
        mmTop = 529
        mmWidth = 39952
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line17'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 30427
        mmTop = 0
        mmWidth = 529
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'DiscountNote'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 56621
        mmTop = 529
        mmWidth = 42598
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'DayTime'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 31221
        mmTop = 529
        mmWidth = 24342
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 8731
        mmTop = 529
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line18'
        Border.mmPadding = 0
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 529
        mmTop = 3439
        mmWidth = 283634
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'CustName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5927
        mmLeft = 235744
        mmTop = 794
        mmWidth = 37306
        BandType = 4
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'CustID'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 275696
        mmTop = 265
        mmWidth = 6879
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
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7408
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
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcCustomers
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 904
    Top = 279
  end
  object PopMPrint: TPopupMenu
    AutoHotkeys = maManual
    Left = 855
    Top = 456
    object AllClick: TMenuItem
      Caption = 'Use Name'
      Visible = False
      OnClick = AllClickClick
    end
    object RepCustomersProject5: TMenuItem
      Caption = #1670#1575#1662' '#1662#1585#1608#1688#1607' '
      OnClick = AllClickClick
    end
    object RepCustomersProject: TMenuItem
      Caption = #1578#1604#1601#1606' '#1608' '#1601#1575#1603#1587
      OnClick = AllClickClick
    end
    object RepCustomersProject3: TMenuItem
      Caption = #1711#1585#1608#1607' '#1601#1593#1575#1604#1610#1578
      OnClick = AllClickClick
    end
    object RepCustomersProject4: TMenuItem
      Caption = #1582#1583#1605#1575#1578
      OnClick = AllClickClick
    end
    object RepCustomersProject7: TMenuItem
      Caption = #1605#1583#1740#1585#1575#1606
      OnClick = AllClickClick
    end
    object RepCustomersProject6: TMenuItem
      Caption = #1575#1591#1604#1575#1593#1575#1578' '#1605#1588#1578#1585#1610'('#1587#1591#1585' '#1580#1575#1585#1740')'
      OnClick = AllClickClick
    end
    object RepCustomersProject1: TMenuItem
      Caption = #1605#1575#1606#1583#1607' '#1575#1576#1578#1583#1575#1610' '#1587#1575#1604
      OnClick = AllClickClick
    end
    object N11: TMenuItem
      Caption = '-'
    end
    object N10: TMenuItem
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
      OnClick = N10Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object MnuCheckAll: TMenuItem
      AutoCheck = True
      Caption = #1670#1575#1662' '#1607#1605#1607' '#1587#1591#1585#1607#1575' '#1601#1593#1575#1604' '#1576#1575#1588#1583
    end
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 411
    Top = 4
    object N3: TMenuItem
      Action = actSearch_
    end
    object N4: TMenuItem
      Caption = #1580#1587#1578#1580#1608'/'#1601#1610#1604#1578#1585
      OnClick = N4Click
    end
  end
  object sd: TPopupMenu
    AutoHotkeys = maManual
    OnPopup = sdPopup
    Left = 760
    Top = 379
    object Mnu_AllClick: TMenuItem
      Caption = #1578#1594#1610#1610#1585' '#1711#1585#1608#1607' '#1605#1588#1578#1585#1610' '#1580#1575#1585#1610
      Hint = #1583#1585' '#1589#1608#1585#1578' '#1575#1585#1587#1575#1604' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1586' '#1575#1740#1606' '#1575#1605#1705#1575#1606' '#1606#1605#1740' '#1578#1608#1575#1606#1740#1583' '#1575#1587#1578#1601#1575#1583#1607' '#1705#1606#1740#1583
      object MenuItem1: TMenuItem
        Caption = #1604#1610#1587#1578' '#1711#1585#1608#1607' '#1607#1575#1610' '#1605#1588#1578#1585#1610
        Visible = False
        OnClick = Mnu_AllClickClick
      end
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object actChangeCustID1: TMenuItem
      Action = actChangeCustID
      Hint = #1583#1585' '#1589#1608#1585#1578' '#1575#1585#1587#1575#1604' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1586' '#1575#1740#1606' '#1575#1605#1705#1575#1606' '#1606#1605#1740' '#1578#1608#1575#1606#1740#1583' '#1575#1587#1578#1601#1575#1583#1607' '#1705#1606#1740#1583
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object N6: TMenuItem
      Action = actViewFile
    end
  end
  object qryCustomersBroker: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeInsert = qryCustomersBrokerBeforeEdit
    AfterInsert = qryCustomersBrokerAfterInsert
    BeforeEdit = qryCustomersBrokerBeforeEdit
    BeforePost = qryCustomersBrokerBeforePost
    Parameters = <
      item
        Name = 'CustID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM         CustomersBroker'
      'WHERE     (PersonID1 = :CustID )')
    Left = 302
    Top = 189
    object qryCustomersBrokerPersonID1: TIntegerField
      FieldName = 'PersonID1'
    end
    object qryCustomersBrokerPersonID2: TIntegerField
      DisplayLabel = #1603#1583
      FieldName = 'PersonID2'
    end
    object qryCustomersBroker_PersonID2: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldKind = fkLookup
      FieldName = '_PersonID2'
      LookupDataSet = qryLookUpCust
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'PersonID2'
      ReadOnly = True
      Required = True
      Size = 200
      Lookup = True
    end
  end
  object dsCustomersBroker: TDataSource
    DataSet = qryCustomersBroker
    Left = 96
    Top = 191
  end
  object qryLookUpCust: TADOQuery
    Active = True
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT CustID,CustName FROM Customers')
    Left = 811
    Top = 319
  end
  object qrySellsTypes: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     *'
      'FROM         SellsTypes')
    Left = 227
    Top = 127
  end
  object qrySellsInfo: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     *'
      'FROM         SellsInfo')
    Left = 739
    Top = 455
  end
  object dsCustomersManag: TDataSource
    Left = 222
    Top = 216
  end
  object qrySellsInfo52Job: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     *'
      'FROM         SellsInfo'
      'WHERE     (SellsType = 52)')
    Left = 811
    Top = 375
  end
  object qrySellsInfo46SendKind: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     *'
      'FROM         SellsInfo'
      'WHERE     SellsType = 46')
    Left = 115
    Top = 119
  end
  object dsCustomersMasir: TDataSource
    Left = 958
    Top = 252
  end
  object qryUseUnits: TADOQuery
    Active = True
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     UseUnitID, UseUnitName'
      'FROM         UseUnits')
    Left = 927
    Top = 200
  end
  object qryCustomersGroup: TADOQuery
    Active = True
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT    *'
      'FROM         CustomersGroup')
    Left = 806
    Top = 201
  end
  object pdbplnmanage: TppDBPipeline
    DataSource = dsCustomersManag
    OpenDataSource = False
    UserName = 'pdbplnmanage'
    Left = 496
    Top = 544
    MasterDataPipelineName = 'ppDBPipeline1'
  end
  object qryCustomersOtherGroups: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CustId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *  FROM CustomersOtherGroups'
      'WHERE CustID= :CustId')
    Left = 136
    Top = 16
    object qryCustomersOtherGroupsCustID: TIntegerField
      FieldName = 'CustID'
    end
    object qryCustomersOtherGroupsCustomerGrpID: TIntegerField
      FieldName = 'CustomerGrpID'
    end
  end
  object plnBroker: TppDBPipeline
    DataSource = dsCustomersBroker
    OpenDataSource = False
    UserName = 'pdbplnmanage1'
    Left = 880
    Top = 408
  end
end

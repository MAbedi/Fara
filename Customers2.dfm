inherited Customers2F: TCustomers2F
  Left = 355
  Top = 225
  ActiveControl = cmbGroups
  Caption = #1605#1593#1585#1601#1610' '#1605#1588#1578#1585#1610#1575#1606
  ClientHeight = 727
  ClientWidth = 1020
  OnActivate = FormActivate
  OnResize = FormResize
  ExplicitTop = -285
  ExplicitWidth = 1028
  ExplicitHeight = 758
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 686
    Width = 1020
    ExplicitTop = 686
    ExplicitWidth = 1020
    inherited BtnReject: TBitBtn
      Left = 2
      Margins.Left = 1
      Margins.Right = 1
      TabOrder = 3
      ExplicitLeft = 2
    end
    object newPanel: TPanel
      Left = 634
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
      Left = 469
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
    Width = 1020
    ExplicitWidth = 1020
    DesignSize = (
      1020
      53)
    inherited ImgTemplate: TImage
      Left = 983
      Top = 7
      ExplicitLeft = 761
      ExplicitTop = 7
    end
    inherited lblCaption: TLabel
      Left = 912
      ExplicitLeft = 912
    end
    inherited lblBaseDate: TLabel
      Left = 404
      ExplicitLeft = 386
    end
    object dbchkCustomerActive: TDBCheckBox
      Left = 11
      Top = 0
      Width = 174
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
      Top = 16
      Width = 174
      Height = 17
      Alignment = taLeftJustify
      BiDiMode = bdRightToLeft
      Caption = #1605#1588#1578#1585#1740' '#1576#1585#1575#1740' '#1579#1576#1578' '#1594#1610#1585' '#1601#1593#1575#1604' '#1588#1608#1583'.'#8207
      DataField = 'CustomerState'
      DataSource = srcCustomers
      ParentBiDiMode = False
      TabOrder = 1
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object DBCheckBox1: TDBCheckBox
      Left = 11
      Top = 32
      Width = 174
      Height = 18
      Alignment = taLeftJustify
      Caption = #1604#1740#1587#1578' '#1587#1740#1575#1607
      DataField = 'BlackList'
      DataSource = srcCustomers
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  inherited Panel3: TPanel
    Width = 1020
    Height = 633
    ExplicitWidth = 1020
    ExplicitHeight = 633
    object Panel1: TPanel
      Left = 708
      Top = 2
      Width = 310
      Height = 629
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
        Caption = '  '#1575#1606#1578#1582#1575#1576' '#1711#1585#1608#1607' '#1605#1588#1578#1585#1610#1575#1606'   '
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
            Caption = '&'#1607#1605#1607' '#1605#1588#1578#1585#1610#1575#1606
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
        Height = 539
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
            Width = 26
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CustName'
            Footers = <>
            Title.TitleButton = True
            Width = 26
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CustFirstName'
            Footers = <>
            Title.TitleButton = True
            Width = 26
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'EconomicNumber'
            Footers = <>
            Title.TitleButton = True
            Width = 26
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NationalID'
            Footers = <>
            Title.TitleButton = True
            Width = 26
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Mobile'
            Footers = <>
            Title.TitleButton = True
            Width = 26
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NationalCode'
            Footers = <>
            Title.TitleButton = True
            Width = 26
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ExternalId'
            Footers = <>
            Title.TitleButton = True
            Width = 26
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CitizenCode'
            Footers = <>
            Title.TitleButton = True
            Width = 26
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'HCKharidarTypeCode'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'BlackList'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DiscountOne'
            Footers = <>
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 2
      Width = 706
      Height = 629
      Align = alClient
      BevelInner = bvRaised
      BorderWidth = 3
      FullRepaint = False
      TabOrder = 1
      DesignSize = (
        706
        629)
      object Label2: TLabel
        Left = 602
        Top = 16
        Width = 51
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1603#1583' '#1605#1588#1578#1585#1610
        FocusControl = edtCustID
        ExplicitLeft = 437
      end
      object Label3: TLabel
        Left = 602
        Top = 44
        Width = 90
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1588#1585#1603#1578'/'#1606#1575#1605#8207#1582#1575#1606#1608#1575#1583#1711#1610
        FocusControl = edtCustName
        ExplicitLeft = 437
      end
      object Label15: TLabel
        Left = 602
        Top = 71
        Width = 55
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1587#1602#1601' '#1575#1593#1578#1576#1575#1585
        ExplicitLeft = 437
      end
      object Label14: TLabel
        Left = 223
        Top = 16
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = #1578#1575#1585#1610#1582
      end
      object Label35: TLabel
        Left = 602
        Top = 98
        Width = 35
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1603#1583' '#1605#1604#1610
        ExplicitLeft = 437
      end
      object Label23: TLabel
        Left = 602
        Top = 124
        Width = 72
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1588#1605#1575#1585#1607' '#1575#1602#1578#1589#1575#1583#1610
        ExplicitLeft = 561
      end
      object Label34: TLabel
        Left = 223
        Top = 98
        Width = 59
        Height = 13
        Alignment = taRightJustify
        Caption = #1578#1575#1585#1610#1582' '#1578#1575#1587#1610#1587
      end
      object Label42: TLabel
        Left = 223
        Top = 71
        Width = 109
        Height = 13
        Alignment = taRightJustify
        Caption = #1581#1583#1575#1603#1579#1585' '#1605#1576#1604#1594' '#1601#1575#1603#1578#1608#1585' '#1580#1575#1585#1610
        FocusControl = edtMaxCreditCurrentForm
      end
      object Label51: TLabel
        Left = 223
        Top = 207
        Width = 22
        Height = 13
        Alignment = taRightJustify
        Caption = #1588#1607#1585
      end
      object Label52: TLabel
        Left = 602
        Top = 151
        Width = 50
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1588#1605#1575#1585#1607' '#1579#1576#1578
      end
      object Label55: TLabel
        Left = 223
        Top = 44
        Width = 13
        Height = 13
        Alignment = taRightJustify
        Caption = #1606#1575#1605
      end
      object Label67: TLabel
        Left = 397
        Top = 16
        Width = 49
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1606#1608#1593' '#1588#1582#1589
        ExplicitLeft = 356
      end
      object Label71: TLabel
        Left = 223
        Top = 124
        Width = 49
        Height = 13
        Alignment = taRightJustify
        Caption = 'CustName'
      end
      object Label74: TLabel
        Left = 223
        Top = 179
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = #1705#1588#1608#1585
      end
      object Label78: TLabel
        Left = 223
        Top = 151
        Width = 58
        Height = 13
        Alignment = taRightJustify
        Caption = #1705#1583' '#1605#1604#1740' '#1575#1578#1576#1575#1593
      end
      object Label10: TLabel
        Left = 602
        Top = 179
        Width = 28
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1575#1587#1578#1575#1606
        FocusControl = DBLookupComboBox1
      end
      object Label79: TLabel
        Left = 602
        Top = 207
        Width = 22
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1588#1607#1585
        FocusControl = DBLookupComboBox2
      end
      object edtInfoDate: TDBEdit
        Left = 9
        Top = 12
        Width = 209
        Height = 21
        DataField = 'InfoDate'
        DataSource = srcCustomers
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object edtCustID: TDBEdit
        Left = 452
        Top = 12
        Width = 149
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'CustID'
        DataSource = srcCustomers
        TabOrder = 0
      end
      object edtCustName: TDBEdit
        Left = 249
        Top = 40
        Width = 352
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'CustName'
        DataSource = srcCustomers
        TabOrder = 3
      end
      object edtMaxCredit: TDBEdit
        Left = 452
        Top = 67
        Width = 149
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'MaxCredit'
        DataSource = srcCustomers
        TabOrder = 5
      end
      object PageControl1: TPageControl
        Left = 5
        Top = 232
        Width = 696
        Height = 392
        ActivePage = TabSheet5
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 17
        OnChange = PageControl1Change
        object TabSheet5: TTabSheet
          Caption = '...'
          ImageIndex = 4
          object scrlbx1: TScrollBox
            Left = 0
            Top = 0
            Width = 688
            Height = 364
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = clBtnFace
            ParentBackground = True
            ParentColor = False
            TabOrder = 0
            ExplicitLeft = 3
            ExplicitTop = 5
            DesignSize = (
              688
              364)
            object Label38: TLabel
              Left = 137
              Top = 36
              Width = 58
              Height = 13
              Alignment = taRightJustify
              Caption = #1575#1608#1604#1608#1610#1578' '#1578#1581#1608#1610#1604
              Transparent = True
            end
            object Label6: TLabel
              Left = 589
              Top = 11
              Width = 21
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1578#1604#1601#1606
              FocusControl = edtMaxCredit
              Transparent = True
              ExplicitLeft = 544
            end
            object Label37: TLabel
              Left = 137
              Top = 11
              Width = 52
              Height = 13
              Alignment = taRightJustify
              Caption = #1578#1604#1601#1606' '#1607#1605#1585#1575#1607
              FocusControl = edtMaxCredit
              Transparent = True
            end
            object Label7: TLabel
              Left = 591
              Top = 37
              Width = 27
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1601#1575#1603#1587
              Transparent = True
              ExplicitLeft = 546
            end
            object Label21: TLabel
              Left = 591
              Top = 193
              Width = 67
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1589#1606#1583#1608#1602' '#1662#1587#1578#1610
              Transparent = True
              ExplicitLeft = 546
            end
            object Label19: TLabel
              Left = 137
              Top = 65
              Width = 15
              Height = 13
              Alignment = taRightJustify
              Caption = #1606#1585#1582
              Transparent = True
            end
            object Label4: TLabel
              Left = 197
              Top = 167
              Width = 24
              Height = 13
              Alignment = taRightJustify
              Caption = 'Email'
              Transparent = True
            end
            object Label5: TLabel
              Left = 201
              Top = 190
              Width = 18
              Height = 13
              Alignment = taRightJustify
              Caption = 'Site'
              Transparent = True
            end
            object Label20: TLabel
              Left = 591
              Top = 167
              Width = 44
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1603#1583' '#1662#1587#1578#1610
              Transparent = True
              ExplicitLeft = 546
            end
            object Label9: TLabel
              Left = 592
              Top = 143
              Width = 25
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1570#1583#1585#1587
              FocusControl = edtMaxCredit
              Transparent = True
              ExplicitLeft = 547
            end
            object Label8: TLabel
              Left = 592
              Top = 113
              Width = 51
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1711#1585#1608#1607' '#1570#1583#1585#1587' '
              FocusControl = edtMaxCredit
              Transparent = True
              ExplicitLeft = 547
            end
            object SpeedButton4: TSpeedButton
              Left = 426
              Top = 109
              Width = 23
              Height = 22
              Anchors = [akTop, akRight]
              Caption = '...'
              OnClick = SpeedButton4Click
              ExplicitLeft = 381
            end
            object dbtxt_MasirID: TDBText
              Left = 1
              Top = 112
              Width = 423
              Height = 16
              Anchors = [akLeft, akTop, akRight]
              Color = 13948116
              DataField = '_MasirID'
              DataSource = srcCustomers
              ParentColor = False
              Transparent = True
              ExplicitWidth = 378
            end
            object Label41: TLabel
              Left = 137
              Top = 89
              Width = 27
              Height = 13
              Alignment = taRightJustify
              Caption = #1578#1604#1601#1606'3'
              Transparent = True
            end
            object Label43: TLabel
              Left = 586
              Top = 63
              Width = 94
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1606#1575#1605' '#1605#1593#1585#1601'/'#1705#1583#1705#1575#1585#1583#1705#1587
              FocusControl = edtMaxCredit
              Transparent = True
              ExplicitLeft = 541
            end
            object Label44: TLabel
              Left = 591
              Top = 88
              Width = 27
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1578#1604#1601#1606'2'
              Transparent = True
              ExplicitLeft = 546
            end
            object dbtxtUserName: TDBText
              Left = 0
              Top = 219
              Width = 133
              Height = 16
              Color = 13948116
              DataField = 'LastUser'
              DataSource = srcCustomers
              ParentColor = False
              Transparent = True
            end
            object lbluserName: TLabel
              Left = 139
              Top = 220
              Width = 60
              Height = 13
              Alignment = taRightJustify
              Caption = #1608#1740#1585#1575#1740#1588' '#1705#1606#1606#1583#1607
              Transparent = True
            end
            object dbtxtFirstUser: TDBText
              Left = 451
              Top = 219
              Width = 133
              Height = 16
              Anchors = [akTop, akRight]
              Color = 13948116
              DataField = 'FirstUser'
              DataSource = srcCustomers
              ParentColor = False
              Transparent = True
              ExplicitLeft = 406
            end
            object lblFirstUser: TLabel
              Left = 589
              Top = 219
              Width = 44
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1579#1576#1578' '#1705#1606#1606#1583#1607
              Transparent = True
              ExplicitLeft = 544
            end
            object Label81: TLabel
              Left = 589
              Top = 256
              Width = 90
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1588#1606#1575#1587#1607' '#1740#1705#1578#1575' '#1605#1575#1604#1740#1575#1578#1740
            end
            object Label82: TLabel
              Left = 589
              Top = 286
              Width = 30
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1705#1583' '#1740#1705#1578#1575
            end
            object edtCustomersRow: TDBEdit
              Left = 1
              Top = 33
              Width = 134
              Height = 21
              DataField = 'CustomersRow'
              DataSource = srcCustomers
              TabOrder = 0
            end
            object edtTel: TDBEdit
              Left = 449
              Top = 8
              Width = 134
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'Tel'
              DataSource = srcCustomers
              TabOrder = 1
            end
            object edtMobile: TDBEdit
              Left = 1
              Top = 8
              Width = 134
              Height = 21
              DataField = 'Mobile'
              DataSource = srcCustomers
              TabOrder = 2
            end
            object edtFax: TDBEdit
              Left = 449
              Top = 33
              Width = 134
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'Fax'
              DataSource = srcCustomers
              TabOrder = 3
            end
            object edtpobox: TDBEdit
              Left = 449
              Top = 189
              Width = 134
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'pobox'
              DataSource = srcCustomers
              TabOrder = 4
            end
            object edtContactRate: TDBEdit
              Left = 1
              Top = 62
              Width = 134
              Height = 21
              DataField = 'ContactRate'
              DataSource = srcCustomers
              TabOrder = 5
            end
            object edtWebSite: TDBEdit
              Left = 0
              Top = 189
              Width = 195
              Height = 21
              TabStop = False
              BiDiMode = bdLeftToRight
              DataField = 'WebSite'
              DataSource = srcCustomers
              ParentBiDiMode = False
              TabOrder = 6
            end
            object edtemail: TDBEdit
              Left = 0
              Top = 163
              Width = 195
              Height = 21
              TabStop = False
              BiDiMode = bdLeftToRight
              DataField = 'email'
              DataSource = srcCustomers
              ParentBiDiMode = False
              TabOrder = 7
            end
            object edtPostalCode: TDBEdit
              Left = 449
              Top = 163
              Width = 134
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'PostalCode'
              DataSource = srcCustomers
              TabOrder = 8
            end
            object dbmmoAddress: TDBMemo
              Tag = 111
              Left = 1
              Top = 137
              Width = 582
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              DataField = 'Address'
              DataSource = srcCustomers
              TabOrder = 9
            end
            object dbedtMasirID: TDBEdit
              Left = 450
              Top = 109
              Width = 134
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'MasirID'
              DataSource = srcCustomers
              TabOrder = 10
              OnKeyDown = DBEdit19KeyDown
            end
            object edtTel3: TDBEdit
              Left = 1
              Top = 86
              Width = 134
              Height = 21
              DataField = 'Tel3'
              DataSource = srcCustomers
              TabOrder = 11
            end
            object dbedtReagentName: TDBEdit
              Left = 449
              Top = 59
              Width = 134
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'ReagentName'
              DataSource = srcCustomers
              TabOrder = 12
            end
            object dbedtTel2: TDBEdit
              Left = 449
              Top = 84
              Width = 134
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'Tel2'
              DataSource = srcCustomers
              TabOrder = 13
            end
            object edtTaxMemoryUniqueId: TDBEdit
              Left = 449
              Top = 252
              Width = 134
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'TaxMemoryUniqueId'
              DataSource = srcCustomers
              TabOrder = 14
            end
            object edtFarmerUniqueCode: TDBEdit
              Left = 449
              Top = 282
              Width = 134
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'FarmerUniqueCode'
              DataSource = srcCustomers
              TabOrder = 15
            end
          end
        end
        object TabSheet6: TTabSheet
          Caption = #1608#1575#1587#1591' '#1601#1585#1608#1588
          ImageIndex = 5
          DesignSize = (
            688
            364)
          object Label16: TLabel
            Left = 580
            Top = 7
            Width = 91
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1608#1575#1587#1591' '#1575#1589#1604#1610' '#1601#1585#1608#1588' '
            ExplicitLeft = 358
          end
          object SpeedButton3: TSpeedButton
            Left = 488
            Top = 3
            Width = 23
            Height = 22
            Hint = 'PersonID1'
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton3Click
            ExplicitLeft = 266
          end
          object DBText2: TDBText
            Left = 284
            Top = 5
            Width = 199
            Height = 16
            Anchors = [akTop, akRight]
            Color = 13948116
            DataField = '_PersonID1'
            DataSource = srcCustomers
            ParentColor = False
            Transparent = True
            ExplicitLeft = 62
          end
          object edtPersonID1: TDBEdit
            Left = 512
            Top = 3
            Width = 70
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'PersonID1'
            DataSource = srcCustomers
            TabOrder = 0
            OnKeyDown = DBEdit15KeyDown
          end
          object GroupBox1: TGroupBox
            Left = 0
            Top = 29
            Width = 688
            Height = 335
            Align = alBottom
            Anchors = [akLeft, akTop, akRight, akBottom]
            Caption = ' '#1587#1575#1610#1585' '#1608#1575#1587#1591' '#1607#1575' '
            TabOrder = 1
            object dbgrdCustomersBroker: TDBGrid
              Tag = 111
              Left = 2
              Top = 15
              Width = 684
              Height = 286
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
              Top = 301
              Width = 684
              Height = 32
              Align = alBottom
              TabOrder = 1
              object BitBtn11: TBitBtn
                Left = 608
                Top = 1
                Width = 75
                Height = 30
                Align = alRight
                Caption = #1575#1606#1578#1582#1575#1576'...'
                TabOrder = 0
                OnClick = BitBtn11Click
              end
              object BitBtn12: TBitBtn
                Left = 1
                Top = 1
                Width = 75
                Height = 30
                Align = alLeft
                Caption = #1581#1584#1601' '#1585#1583#1610#1601
                TabOrder = 1
                OnClick = btnAlldelClick
              end
            end
          end
        end
        object tsActivety: TTabSheet
          Caption = #1601#1593#1575#1604#1610#1578
          ImageIndex = 6
          object dbgrdCustomersActivity: TDBGrid
            Tag = 111
            Left = 0
            Top = 32
            Width = 688
            Height = 300
            Align = alClient
            Color = clCream
            DataSource = dsCustomersActivity
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnEditButtonClick = dbgrdCustomersActivityEditButtonClick
            OnKeyPress = dbgrdCustomersActivityKeyPress
            Columns = <
              item
                Expanded = False
                FieldName = '_SellsType'
                Width = 107
                Visible = True
              end
              item
                ButtonStyle = cbsEllipsis
                Expanded = False
                FieldName = 'SellsCode'
                ReadOnly = True
                Width = 69
                Visible = True
              end
              item
                Expanded = False
                FieldName = '_SellsCode'
                Width = 98
                Visible = True
              end>
          end
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 688
            Height = 32
            Align = alTop
            TabOrder = 1
            DesignSize = (
              688
              32)
            object Label18: TLabel
              Left = 615
              Top = 10
              Width = 51
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1606#1581#1608#1607' '#1601#1585#1608#1588
              ExplicitLeft = 389
            end
            object Label39: TLabel
              Left = 170
              Top = 10
              Width = 55
              Height = 13
              Alignment = taRightJustify
              Caption = #1605#1585#1575#1603#1586' '#1601#1585#1608#1588
            end
            object cmbSellsMethod: TDBComboBox
              Left = 450
              Top = 6
              Width = 160
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'SellsMethod'
              DataSource = srcCustomers
              TabOrder = 0
            end
            object cmbSellsEmporium: TDBComboBox
              Left = 8
              Top = 6
              Width = 160
              Height = 21
              DataField = 'SellsEmporium'
              DataSource = srcCustomers
              TabOrder = 1
            end
          end
          object Panel7: TPanel
            Left = 0
            Top = 332
            Width = 688
            Height = 32
            Align = alBottom
            TabOrder = 2
            DesignSize = (
              688
              32)
            object btnAlldel: TBitBtn
              Left = 12
              Top = 4
              Width = 75
              Height = 25
              Anchors = [akLeft, akBottom]
              Caption = #1581#1584#1601' '#1585#1583#1610#1601
              TabOrder = 0
              OnClick = btnAlldelClick
            end
          end
        end
        object tsMasir: TTabSheet
          Caption = #1605#1587#1610#1585#1607#1575
          ImageIndex = 7
          object dbgrdCustomersMasir: TDBGrid
            Tag = 111
            Left = 0
            Top = 0
            Width = 688
            Height = 332
            Align = alClient
            Color = clCream
            DataSource = dsCustomersMasir
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnEditButtonClick = dbgrdCustomersMasirEditButtonClick
            OnKeyPress = dbgrdCustomersMasirKeyPress
            Columns = <
              item
                ButtonStyle = cbsEllipsis
                Expanded = False
                FieldName = 'MasirID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = '_MasirID'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MasirNote'
                Width = 282
                Visible = True
              end>
          end
          object Panel8: TPanel
            Left = 0
            Top = 332
            Width = 688
            Height = 32
            Align = alBottom
            TabOrder = 1
            DesignSize = (
              688
              32)
            object BitBtn13: TBitBtn
              Left = 12
              Top = 4
              Width = 75
              Height = 25
              Anchors = [akLeft, akBottom]
              Caption = #1581#1584#1601' '#1585#1583#1610#1601
              TabOrder = 0
              OnClick = btnAlldelClick
            end
          end
        end
        object TabSheet9: TTabSheet
          Caption = #1605#1583#1610#1585#1575#1606
          ImageIndex = 8
          object dbgrdCustomersManag: TDBGrid
            Tag = 111
            Left = 0
            Top = 0
            Width = 688
            Height = 332
            Align = alClient
            Color = clCream
            DataSource = dsCustomersManag
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnKeyPress = dbgrdCustomersManagKeyPress
            Columns = <
              item
                Expanded = False
                FieldName = '_JobCode'
                Width = 36
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ManagName'
                Width = 22
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Mobile'
                Width = 57
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Tel'
                Width = 47
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Fax'
                Width = 29
                Visible = True
              end
              item
                Expanded = False
                Width = 30
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BirthDate'
                Width = 46
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MarriageDate'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LegalReal'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NationalID'
                Width = 41
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OfShares'
                Width = 61
                Visible = True
              end>
          end
          object Panel9: TPanel
            Left = 0
            Top = 332
            Width = 688
            Height = 32
            Align = alBottom
            TabOrder = 1
            object BitBtn14: TBitBtn
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 75
              Height = 24
              Align = alLeft
              Caption = #1581#1584#1601' '#1585#1583#1610#1601
              TabOrder = 0
              OnClick = btnAlldelClick
            end
            object btn1: TBitBtn
              AlignWithMargins = True
              Left = 581
              Top = 4
              Width = 103
              Height = 24
              Align = alRight
              Caption = #1711#1585#1608#1607' '#1576#1606#1583#1610' '#1601#1593#1575#1604#1610#1578' '#1607#1575
              TabOrder = 1
              OnClick = btn1Click
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = #1603#1606#1578#1585#1604
          ImageIndex = 1
          object Panel15: TScrollBox
            Left = 0
            Top = 0
            Width = 688
            Height = 364
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvRaised
            BorderStyle = bsNone
            Color = clBtnFace
            ParentBackground = True
            ParentColor = False
            TabOrder = 0
            DesignSize = (
              688
              364)
            object dbtxt_CustomerGrpID2: TDBText
              Left = 252
              Top = 178
              Width = 199
              Height = 16
              Anchors = [akTop, akRight]
              Color = 13948116
              DataField = '_CustomerGrpID2'
              DataSource = srcCustomers
              ParentColor = False
              Transparent = True
              ExplicitLeft = 211
            end
            object Label47: TLabel
              Left = 556
              Top = 180
              Width = 94
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1711#1585#1608#1607' '#1605#1588#1578#1585#1610#1575#1606' '#1601#1585#1593#1610
              Transparent = True
              ExplicitLeft = 515
            end
            object SpeedButton9: TSpeedButton
              Left = 456
              Top = 175
              Width = 23
              Height = 22
              Hint = 'PersonID1'
              Anchors = [akTop, akRight]
              Caption = '...'
              OnClick = SpeedButton9Click
              ExplicitLeft = 415
            end
            object dbtxt_UseUnitName: TDBText
              Left = 252
              Top = 148
              Width = 199
              Height = 16
              Anchors = [akTop, akRight]
              Color = 13948116
              DataField = '_UseUnitName'
              DataSource = srcCustomers
              ParentColor = False
              Transparent = True
              ExplicitLeft = 211
            end
            object Label33: TLabel
              Left = 555
              Top = 47
              Width = 39
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1578#1588#1582#1610#1589
              Transparent = True
              ExplicitLeft = 514
            end
            object Label40: TLabel
              Left = 555
              Top = 82
              Width = 115
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1608#1590#1593#1610#1578' '#1662#1610#1588' '#1601#1585#1590' '#1601#1585#1608#1588
              Transparent = True
              ExplicitLeft = 514
            end
            object SpeedButton7: TSpeedButton
              Left = 457
              Top = 112
              Width = 23
              Height = 22
              Hint = 'PersonID3'
              Anchors = [akTop, akRight]
              Caption = '...'
              OnClick = SpeedButton3Click
              ExplicitLeft = 416
            end
            object SpeedButton8: TSpeedButton
              Left = 456
              Top = 145
              Width = 23
              Height = 22
              Hint = 'PersonID1'
              Anchors = [akTop, akRight]
              Caption = '...'
              OnClick = SpeedButton8Click
              ExplicitLeft = 415
            end
            object dbtxt_PersonID3: TDBText
              Left = 252
              Top = 115
              Width = 199
              Height = 16
              Anchors = [akTop, akRight]
              Color = 13948116
              DataField = '_PersonID3'
              DataSource = srcCustomers
              ParentColor = False
              Transparent = True
              ExplicitLeft = 211
            end
            object Label46: TLabel
              Left = 556
              Top = 150
              Width = 104
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1662#1610#1588' '#1601#1585#1590' '#1605#1581#1604' '#1605#1589#1585#1601
              Transparent = True
              ExplicitLeft = 515
            end
            object Label12: TLabel
              Left = 555
              Top = 13
              Width = 73
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1606#1608#1593' '#1602#1610#1605#1578' '#1601#1575#1603#1578#1608#1585
              Transparent = True
              ExplicitLeft = 514
            end
            object Label45: TLabel
              Left = 556
              Top = 116
              Width = 93
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1662#1610#1588' '#1601#1585#1590' '#1605#1588#1578#1585#1610'3'
              Transparent = True
              ExplicitLeft = 515
            end
            object CmbValuationType: TDBComboBox
              Left = 393
              Top = 9
              Width = 160
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'ValuationType'
              DataSource = srcCustomers
              TabOrder = 0
            end
            object CmbaccStateDefault: TDBComboBox
              Left = 393
              Top = 43
              Width = 160
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'accStateDefault'
              DataSource = srcCustomers
              Items.Strings = (
                #1606#1583#1575#1585#1583
                #1576#1583#1607#1603#1575#1585
                #1576#1587#1578#1575#1606#1603#1575#1585)
              TabOrder = 1
            end
            object dbedtUseUnitID: TDBEdit
              Left = 480
              Top = 146
              Width = 70
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'UseUnitID'
              DataSource = srcCustomers
              TabOrder = 2
              OnKeyDown = DBEdit15KeyDown
            end
            object dbedtCustomerGrpID2: TDBEdit
              Left = 480
              Top = 176
              Width = 70
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'CustomerGrpID2'
              DataSource = srcCustomers
              TabOrder = 3
              OnKeyDown = DBEdit15KeyDown
            end
            object cmbSellsDefaultState: TDBComboBox
              Left = 230
              Top = 78
              Width = 323
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'SellsDefaultState'
              DataSource = srcCustomers
              Items.Strings = (
                #1576#1607' '#1581#1587#1575#1576' '#1605#1588#1578#1585#1610
                #1576#1607' '#1581#1587#1575#1576' '#1608#1575#1587#1591' '#1576#1585#1575#1587#1575#1587' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1583#1610#1606#1711' '#1605#1588#1578#1585#1610
                #1576#1607' '#1581#1587#1575#1576' '#1608#1575#1587#1591' '#1576#1585#1575#1587#1575#1587' '#1578#1588#1582#1610#1589' '#1583#1585' '#1601#1575#1603#1578#1608#1585
                #1576#1607' '#1581#1587#1575#1576' '#1605#1588#1578#1585#1610' '#1576#1585#1575#1587#1575#1587' '#1578#1588#1582#1610#1589' '#1583#1585' '#1601#1575#1603#1578#1608#1585)
              TabOrder = 4
            end
            object dbedtPersonID3: TDBEdit
              Left = 480
              Top = 112
              Width = 70
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'PersonID3'
              DataSource = srcCustomers
              TabOrder = 5
              OnKeyDown = DBEdit15KeyDown
            end
          end
        end
        object tsOther: TTabSheet
          Caption = #1587#1575#1610#1585
          ImageIndex = 2
          object Panel12: TScrollBox
            Left = 0
            Top = 0
            Width = 688
            Height = 364
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvRaised
            BorderStyle = bsNone
            Color = clBtnFace
            ParentBackground = True
            ParentColor = False
            TabOrder = 0
            DesignSize = (
              688
              364)
            object Label25: TLabel
              Left = 607
              Top = 8
              Width = 33
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              Caption = #1605#1583#1610#1585#1610#1578
              ParentBiDiMode = False
              Transparent = True
              ExplicitLeft = 566
            end
            object Label26: TLabel
              Left = 607
              Top = 35
              Width = 51
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              Caption = #1605#1583#1610#1585' '#1601#1585#1608#1588
              ParentBiDiMode = False
              Transparent = True
              ExplicitLeft = 566
            end
            object Label27: TLabel
              Left = 607
              Top = 62
              Width = 63
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              Caption = #1588#1605#1575#1585#1607' '#1602#1585#1575#1585#1583#1575#1583
              ParentBiDiMode = False
              Transparent = True
              ExplicitLeft = 566
            end
            object Label30: TLabel
              Left = 171
              Top = 94
              Width = 73
              Height = 13
              Alignment = taRightJustify
              Caption = #1605#1583#1578' '#1662#1585#1575#1582#1578'('#1585#1608#1586')'#8207
              Transparent = True
            end
            object Label54: TLabel
              Left = 173
              Top = 183
              Width = 89
              Height = 13
              Alignment = taRightJustify
              BiDiMode = bdLeftToRight
              Caption = #1705#1583' '#1605#1588#1578#1585#1740' '#1580#1575#1740#1711#1586#1740#1606
              ParentBiDiMode = False
              Transparent = True
            end
            object Label28: TLabel
              Left = 171
              Top = 8
              Width = 73
              Height = 13
              Alignment = taRightJustify
              Caption = #1578#1608#1590#1610#1581#1575#1578' '#1578#1582#1601#1610#1601
              Transparent = True
            end
            object Label29: TLabel
              Left = 167
              Top = 35
              Width = 86
              Height = 13
              Alignment = taRightJustify
              Caption = #1583#1585#1589#1583#1578#1582#1601#1610#1601'/'#1601#1585#1605#1608#1604
              Transparent = True
            end
            object Label32: TLabel
              Left = 607
              Top = 90
              Width = 29
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              Caption = #1606#1608#1593' '#1575#1585#1586
              ParentBiDiMode = False
              Transparent = True
              ExplicitLeft = 566
            end
            object SBtnInfoWeight1: TSpeedButton
              Tag = 1
              Left = 451
              Top = 121
              Width = 23
              Height = 22
              Anchors = [akTop, akRight]
              Caption = '...'
              OnClick = SBtnInfoWeight1Click
              ExplicitLeft = 410
            end
            object SBtnInfoWeight2: TSpeedButton
              Tag = 1
              Left = 423
              Top = 121
              Width = 23
              Height = 22
              Anchors = [akTop, akRight]
              Caption = '...2'
              OnClick = SBtnInfoWeight2Click
              ExplicitLeft = 382
            end
            object Label1: TLabel
              Left = 607
              Top = 183
              Width = 46
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              Caption = #1608#1575#1581#1583' '#1662#1608#1604#1610
              ParentBiDiMode = False
              Transparent = True
              ExplicitLeft = 566
            end
            object Label31: TLabel
              Left = 173
              Top = 121
              Width = 45
              Height = 13
              Alignment = taRightJustify
              Caption = #1606#1581#1608#1607' '#1581#1605#1604
              Transparent = True
            end
            object Label36: TLabel
              Left = 607
              Top = 125
              Width = 16
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              Caption = #1608#1586#1606
              ParentBiDiMode = False
              Transparent = True
              ExplicitLeft = 566
            end
            object Label50: TLabel
              Left = 607
              Top = 156
              Width = 68
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              Caption = #1588' '#1581#1587#1575#1576' '#1588#1576#1575
              ParentBiDiMode = False
              Transparent = True
              ExplicitLeft = 566
            end
            object Label68: TLabel
              Left = 167
              Top = 210
              Width = 95
              Height = 13
              Alignment = taRightJustify
              BiDiMode = bdLeftToRight
              Caption = #1705#1583' '#1605#1588#1578#1585#1740' '#1580#1575#1740#1711#1586#1740#1606'2'
              ParentBiDiMode = False
              Transparent = True
            end
            object Label72: TLabel
              Left = 607
              Top = 210
              Width = 84
              Height = 13
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              Caption = 'Telegram Chat ID'
              ParentBiDiMode = False
              Transparent = True
              WordWrap = True
              ExplicitLeft = 566
            end
            object Label73: TLabel
              Left = 194
              Top = 153
              Width = 92
              Height = 13
              Alignment = taRightJustify
              Caption = #1603#1583' '#1601#1606#1610'/'#1588#1605#1575#1585#1607' '#1662#1604#1575#1705
            end
            object Label75: TLabel
              Left = 167
              Top = 62
              Width = 60
              Height = 13
              Alignment = taRightJustify
              Caption = #1583#1585#1589#1583#1578#1582#1601#1610#1601'1'
              FocusControl = edtDiscountOne
            end
            object Label76: TLabel
              Left = 608
              Top = 266
              Width = 50
              Height = 13
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              Caption = 'ExternalId'
              ParentBiDiMode = False
              Transparent = True
              WordWrap = True
            end
            object btn2: TSpeedButton
              Tag = 1
              Left = 1
              Top = 206
              Width = 23
              Height = 21
              Caption = '...'
              OnClick = btn2Click
            end
            object btn3: TSpeedButton
              Tag = 1
              Left = 1
              Top = 179
              Width = 23
              Height = 21
              Caption = '...'
              OnClick = btn2Click
            end
            object Label77: TLabel
              Left = 610
              Top = 293
              Width = 64
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
              ParentBiDiMode = False
              Transparent = True
            end
            object Label80: TLabel
              Left = 612
              Top = 237
              Width = 53
              Height = 13
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              Caption = #1576#1604#1607' Chat ID'
              ParentBiDiMode = False
              Transparent = True
              WordWrap = True
            end
            object edtManageName: TDBEdit
              Left = 476
              Top = 4
              Width = 128
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'ManageName'
              DataSource = srcCustomers
              TabOrder = 0
            end
            object edtManagerSells: TDBEdit
              Left = 476
              Top = 31
              Width = 128
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'ManagerSells'
              DataSource = srcCustomers
              TabOrder = 1
            end
            object edtContactNo: TDBEdit
              Left = 476
              Top = 58
              Width = 128
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'ContactNo'
              DataSource = srcCustomers
              TabOrder = 2
            end
            object edtDayTime: TDBEdit
              Left = 1
              Top = 90
              Width = 166
              Height = 21
              DataField = 'DayTime'
              DataSource = srcCustomers
              TabOrder = 14
            end
            object edtDiscountNote: TDBEdit
              Left = 1
              Top = 4
              Width = 166
              Height = 21
              DataField = 'DiscountNote'
              DataSource = srcCustomers
              TabOrder = 11
            end
            object edtDiscount: TDBEdit
              Left = 1
              Top = 31
              Width = 166
              Height = 21
              DataField = 'Discount'
              DataSource = srcCustomers
              TabOrder = 12
            end
            object CmbConveyKind: TDBComboBox
              Left = 1
              Top = 118
              Width = 166
              Height = 21
              DataField = 'ConveyKind'
              DataSource = srcCustomers
              Items.Strings = (
                #1575#1606#1578#1588#1575#1585#1575#1578#1610
                #1603#1578#1575#1576#1588#1607#1585
                #1588#1585#1603#1578)
              TabOrder = 15
            end
            object dblkcbb_AccountKind: TDBLookupComboBox
              Left = 394
              Top = 179
              Width = 211
              Height = 21
              Anchors = [akTop, akRight]
              DataField = '_AccountKind'
              DataSource = srcCustomers
              TabOrder = 6
            end
            object edtAlternativeCustID: TDBEdit
              Left = 24
              Top = 179
              Width = 143
              Height = 21
              DataField = 'AlternativeCustID'
              DataSource = srcCustomers
              TabOrder = 17
            end
            object CmbArzTypeID: TDBComboBox
              Left = 476
              Top = 86
              Width = 128
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'ArzTypeID'
              DataSource = srcCustomers
              Items.Strings = (
                #1583#1585' '#1578#1606#1592#1610#1605#1575#1578' '#1587#1585#1610#1575#1604' '#1608#1575#1585#1583' '#1588#1608#1583)
              TabOrder = 3
            end
            object edtInfoWeight: TDBEdit
              Left = 476
              Top = 122
              Width = 130
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'InfoWeight'
              DataSource = srcCustomers
              TabOrder = 4
            end
            object edtCustAccountNumber: TDBEdit
              Left = 394
              Top = 152
              Width = 211
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'CustAccountNumber'
              DataSource = srcCustomers
              TabOrder = 5
            end
            object edtAlternativeCustID2: TDBEdit
              Left = 24
              Top = 206
              Width = 143
              Height = 21
              DataField = 'AlternativeCustID2'
              DataSource = srcCustomers
              TabOrder = 18
            end
            object edtTelegramChatID: TDBEdit
              Left = 394
              Top = 206
              Width = 211
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'TelegramChatID'
              DataSource = srcCustomers
              TabOrder = 7
            end
            inline frPelakF1: TfrPelakF
              Left = 1
              Top = 145
              Width = 191
              Height = 29
              DoubleBuffered = True
              ParentDoubleBuffered = False
              TabOrder = 16
              ExplicitLeft = 1
              ExplicitTop = 145
            end
            object edtTechnicalCode: TDBEdit
              Left = 1
              Top = 233
              Width = 166
              Height = 21
              DataField = 'TechnicalCode'
              DataSource = srcCustomers
              TabOrder = 19
              Visible = False
            end
            object edtDiscountOne: TDBEdit
              Left = 1
              Top = 58
              Width = 166
              Height = 21
              DataField = 'DiscountOne'
              DataSource = srcCustomers
              TabOrder = 13
            end
            object edtExternalId: TDBEdit
              Left = 395
              Top = 262
              Width = 211
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'ExternalId'
              DataSource = srcCustomers
              TabOrder = 9
            end
            object edtAccountNumber: TDBEdit
              Left = 396
              Top = 289
              Width = 211
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'AccountNumber'
              DataSource = srcCustomers
              TabOrder = 10
            end
            object edtBaleChatID: TDBEdit
              Left = 395
              Top = 235
              Width = 211
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'BaleChatID'
              DataSource = srcCustomers
              TabOrder = 8
            end
          end
        end
        object tsAcc: TTabSheet
          Caption = #1581#1587#1575#1576#1583#1575#1585#1610
          object Panel13: TScrollBox
            Left = 0
            Top = 0
            Width = 688
            Height = 364
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvRaised
            BorderStyle = bsNone
            Color = clBtnFace
            ParentBackground = True
            ParentColor = False
            TabOrder = 0
            DesignSize = (
              688
              364)
            object Label11: TLabel
              Left = 571
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
              Left = 473
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
              Width = 466
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
              Left = 571
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
              Left = 473
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
              Width = 466
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
              Left = 571
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
              Left = 473
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
              Width = 465
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
              Left = 473
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
              Width = 466
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
              Width = 466
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
              Left = 573
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
              Left = 473
              Top = 10
              Width = 23
              Height = 22
              Anchors = [akTop, akRight]
              Caption = '...'
              OnClick = SpeedButton11Click
              ExplicitLeft = 428
            end
            object Label48: TLabel
              Left = 571
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
              Left = 499
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
              Left = 499
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
              Left = 499
              Top = 11
              Width = 70
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'acc_TopicCode'
              DataSource = srcCustomers
              TabOrder = 2
            end
            object DBEdit19: TDBEdit
              Left = 499
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
              Left = 499
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
            Width = 688
            Height = 364
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvRaised
            BorderStyle = bsNone
            Color = clBtnFace
            ParentBackground = True
            ParentColor = False
            TabOrder = 0
            DesignSize = (
              688
              364)
            object Label53: TLabel
              Left = 433
              Top = 159
              Width = 218
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1605#1578#1606' '#1579#1575#1576#1578' '#1583#1585' '#1608#1580#1607' ('#1605#1608#1585#1583' '#1575#1587#1578#1601#1575#1583#1607' '#1583#1585' '#1586#1605#1575#1606' '#1579#1576#1578' '#1670#1603')'
              Transparent = True
              ExplicitLeft = 392
            end
            object Label13: TLabel
              Left = 544
              Top = 122
              Width = 93
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1587#1575#1610#1585' '#1711#1585#1608#1607' '#1601#1593#1575#1604#1610#1578' '#1607#1575
              Transparent = True
              ExplicitLeft = 503
            end
            object Label17: TLabel
              Left = 575
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
              Left = 226
              Top = 25
              Width = 393
              Height = 80
              Anchors = [akTop, akRight]
              DataField = 'CustomerNote'
              DataSource = srcCustomers
              TabOrder = 0
            end
            object CmbGrpActionCustomer: TDBComboBox
              Left = 226
              Top = 118
              Width = 310
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'GrpActionCustomer'
              DataSource = srcCustomers
              Items.Strings = (
                #1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1608' '#1579#1575#1576#1578' '#1606#1608#1593' 250')
              TabOrder = 1
            end
            object dbmmoCustomerCheckNote: TDBMemo
              Tag = 111
              Left = 226
              Top = 182
              Width = 393
              Height = 42
              Anchors = [akTop, akRight]
              DataField = 'CustomerCheckNote'
              DataSource = srcCustomers
              TabOrder = 2
            end
          end
        end
        object tsOtherGroup: TTabSheet
          Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1587#1575#1740#1585' '#1711#1585#1608#1607#1607#1575#1740' '#1605#1588#1578#1585#1740
          ImageIndex = 9
          object GroupBox3: TGroupBox
            Left = 0
            Top = 0
            Width = 688
            Height = 364
            Align = alClient
            Caption = #1587#1575#1740#1585' '#1711#1585#1608#1607#1607#1575#1740' '#1605#1588#1578#1585#1740
            TabOrder = 0
            object chklstOtherGroup: TCheckListBox
              Left = 2
              Top = 15
              Width = 684
              Height = 347
              Align = alClient
              Color = clCream
              Columns = 2
              ItemHeight = 13
              TabOrder = 0
              OnClick = chklstOtherGroupClick
              OnDblClick = chklstOtherGroupClick
            end
          end
        end
        object TabSheet1: TTabSheet
          Caption = #1705#1606#1578#1585#1604' '#1607#1575
          ImageIndex = 10
          object ScrollBox1: TScrollBox
            Left = 0
            Top = 0
            Width = 688
            Height = 364
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            TabOrder = 0
            DesignSize = (
              684
              360)
            object Label70: TLabel
              Left = 157
              Top = 181
              Width = 71
              Height = 13
              Alignment = taRightJustify
              Caption = #1588#1606#1575#1587#1607' '#1662#1585#1583#1575#1582#1578
            end
            object Label58: TLabel
              Left = 414
              Top = 82
              Width = 95
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1578#1575#1585#1740#1582' '#1575#1593#1578#1576#1575#1585' '#1575#1580#1575#1585#1607' '#1606#1575#1605#1607
              FocusControl = edtLeaseValidityDate
              ExplicitLeft = 510
            end
            object Label59: TLabel
              Left = 414
              Top = 115
              Width = 22
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1605#1578#1585#1575#1688
              FocusControl = edtArea
              ExplicitLeft = 510
            end
            object Label60: TLabel
              Left = 414
              Top = 148
              Width = 22
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1583#1585#1580#1607
              FocusControl = edtDegree
              ExplicitLeft = 510
            end
            object Label56: TLabel
              Left = 414
              Top = 16
              Width = 107
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1578#1575#1585#1740#1582' '#1575#1593#1578#1576#1575#1585' '#1575#1585#1586#1588' '#1575#1601#1586#1608#1583#1607
              FocusControl = edtVatValidityDate
              ExplicitLeft = 510
            end
            object Label57: TLabel
              Left = 414
              Top = 49
              Width = 101
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1578#1575#1585#1740#1582' '#1575#1593#1578#1576#1575#1585' '#1580#1608#1575#1586' '#1705#1587#1576
              FocusControl = edtBusinesslicenseValidityDate
              ExplicitLeft = 510
            end
            object Label61: TLabel
              Left = 414
              Top = 181
              Width = 24
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1575#1605#1578#1740#1575#1586
              FocusControl = edtScore
              ExplicitLeft = 510
            end
            object Label62: TLabel
              Left = 160
              Top = 49
              Width = 120
              Height = 13
              Alignment = taRightJustify
              Caption = #1581#1583#1575#1705#1579#1585' '#1575#1593#1578#1576#1575#1585' '#1582#1585#1740#1583' '#1607#1601#1578#1711#1740
            end
            object Label63: TLabel
              Left = 160
              Top = 16
              Width = 94
              Height = 13
              Alignment = taRightJustify
              Caption = #1578#1593#1583#1575#1583' '#1575#1602#1587#1575#1591' '#1575#1593#1578#1576#1575#1585#1740
            end
            object Label64: TLabel
              Left = 160
              Top = 82
              Width = 119
              Height = 13
              Alignment = taRightJustify
              Caption = #1581#1583#1575#1602#1604' '#1605#1740#1586#1575#1606' '#1582#1585#1740#1583' '#1607#1601#1578#1711#1740
            end
            object Label65: TLabel
              Left = 160
              Top = 115
              Width = 98
              Height = 13
              Alignment = taRightJustify
              Caption = #1587#1602#1601' '#1575#1593#1578#1576#1575#1585' '#1601#1585#1608#1588#1711#1575#1607
            end
            object Label66: TLabel
              Left = 160
              Top = 148
              Width = 73
              Height = 13
              Alignment = taRightJustify
              Caption = #1585#1608#1586' '#1579#1576#1578' '#1587#1601#1575#1585#1588
            end
            object Label69: TLabel
              Left = 448
              Top = 192
              Width = 76
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
              ExplicitLeft = 544
            end
            object edtArea: TDBEdit
              Left = 278
              Top = 111
              Width = 134
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'Area'
              DataSource = srcCustomers
              TabOrder = 0
            end
            object edtDegree: TDBEdit
              Left = 278
              Top = 144
              Width = 134
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'Degree'
              DataSource = srcCustomers
              TabOrder = 1
            end
            object edtScore: TDBEdit
              Left = 278
              Top = 177
              Width = 134
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'Score'
              DataSource = srcCustomers
              TabOrder = 2
            end
            object edtVatValidityDate: TDBEdit
              Left = 278
              Top = 12
              Width = 134
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'VatValidityDate'
              DataSource = srcCustomers
              TabOrder = 3
            end
            object edtBusinesslicenseValidityDate: TDBEdit
              Left = 278
              Top = 45
              Width = 134
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'BusinesslicenseValidityDate'
              DataSource = srcCustomers
              TabOrder = 4
            end
            object edtLeaseValidityDate: TDBEdit
              Left = 278
              Top = 78
              Width = 134
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'LeaseValidityDate'
              DataSource = srcCustomers
              TabOrder = 5
            end
            object edtNumberCreditInstallments: TDBEdit
              Left = 21
              Top = 12
              Width = 134
              Height = 21
              DataField = 'NumberCreditInstallments'
              DataSource = srcCustomers
              TabOrder = 6
            end
            object cmbDayOrder: TDBComboBox
              Left = 21
              Top = 144
              Width = 134
              Height = 21
              DataField = 'DayOrder'
              DataSource = srcCustomers
              TabOrder = 7
            end
            object dbmmoCustomerNote1: TDBMemo
              Tag = 111
              Left = 0
              Top = 207
              Width = 684
              Height = 153
              Align = alBottom
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataField = 'CustomerNote'
              DataSource = srcCustomers
              TabOrder = 8
            end
            object edtPaymentCode: TDBEdit
              Left = 21
              Top = 177
              Width = 134
              Height = 21
              DataField = 'PaymentCode'
              DataSource = srcCustomers
              TabOrder = 9
            end
            object edtMaxWeeklyShoppingCredit: TDBEdit
              Left = 21
              Top = 45
              Width = 134
              Height = 21
              DataField = 'MaxWeeklyShoppingCredit'
              DataSource = srcCustomers
              TabOrder = 10
            end
            object edtMinWeeklyShoppingAmount: TDBEdit
              Left = 21
              Top = 78
              Width = 134
              Height = 21
              DataField = 'MinWeeklyShoppingAmount'
              DataSource = srcCustomers
              TabOrder = 11
            end
            object edtMaxCredit1: TDBEdit
              Left = 21
              Top = 111
              Width = 134
              Height = 21
              DataField = 'MaxCredit'
              DataSource = srcCustomers
              TabOrder = 12
            end
          end
        end
      end
      object edtNationalID: TDBEdit
        Left = 452
        Top = 94
        Width = 149
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'NationalID'
        DataSource = srcCustomers
        TabOrder = 7
      end
      object edtEconomicNumber: TDBEdit
        Left = 452
        Top = 120
        Width = 149
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'EconomicNumber'
        DataSource = srcCustomers
        TabOrder = 9
      end
      object edtEstablishDate: TDBEdit
        Left = 9
        Top = 94
        Width = 209
        Height = 21
        DataField = 'EstablishDate'
        DataSource = srcCustomers
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
      end
      object edtMaxCreditCurrentForm: TDBEdit
        Left = 9
        Top = 67
        Width = 209
        Height = 21
        DataField = 'MaxCreditCurrentForm'
        DataSource = srcCustomers
        TabOrder = 6
      end
      object edtCity: TDBEdit
        Left = 9
        Top = 203
        Width = 209
        Height = 21
        DataField = 'City'
        DataSource = srcCustomers
        ParentShowHint = False
        ShowHint = True
        TabOrder = 16
      end
      object edtRegisterNumber: TDBEdit
        Left = 452
        Top = 147
        Width = 149
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'RegisterNumber'
        DataSource = srcCustomers
        TabOrder = 11
      end
      object edtCustFirstName: TDBEdit
        Left = 9
        Top = 40
        Width = 209
        Height = 21
        DataField = 'CustFirstName'
        DataSource = srcCustomers
        TabOrder = 4
      end
      object cmbHCKharidarTypeCode: TDBComboBox
        Left = 290
        Top = 12
        Width = 102
        Height = 21
        Anchors = [akTop, akRight]
        AutoDropDown = True
        Color = clWhite
        DataField = 'HCKharidarTypeCode'
        DataSource = srcCustomers
        TabOrder = 1
      end
      object edtCustName_L2: TDBEdit
        Left = 9
        Top = 120
        Width = 209
        Height = 21
        BiDiMode = bdLeftToRight
        DataField = 'CustName_L2'
        DataSource = srcCustomers
        ParentBiDiMode = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
      end
      object edtCountry: TDBEdit
        Left = 9
        Top = 175
        Width = 209
        Height = 21
        DataField = 'Country'
        DataSource = srcCustomers
        TabOrder = 15
      end
      object edtCitizenCode: TDBEdit
        Left = 9
        Top = 147
        Width = 209
        Height = 21
        DataField = 'CitizenCode'
        DataSource = srcCustomers
        TabOrder = 12
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 452
        Top = 175
        Width = 149
        Height = 21
        Anchors = [akTop, akRight]
        DataField = '_Ostan'
        DataSource = srcCustomers
        TabOrder = 13
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 452
        Top = 203
        Width = 149
        Height = 21
        Anchors = [akTop, akRight]
        DataField = '_Shahr'
        DataSource = srcCustomers
        TabOrder = 14
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
    Left = 680
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
      DisplayLabel = #1603#1583#1605#1588#1578#1585#1610
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
      DisplayLabel = #1606#1575#1605' '#1605#1588#1578#1585#1610
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
    object qryCustomersStateCode: TIntegerField
      Tag = 3
      DisplayLabel = #1705#1583#1575#1587#1578#1575#1606
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
      Tag = 3
      DisplayLabel = #1705#1583#1588#1607#1585
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
      Required = True
      Size = 300
    end
    object qryCustomersMobile: TStringField
      Tag = 3
      DisplayLabel = #1578#1604#1601#1606' '#1607#1605#1585#1575#1607
      FieldName = 'Mobile'
      Required = True
    end
    object qryCustomersTel: TStringField
      Tag = 3
      DisplayLabel = #1578#1604#1601#1606
      FieldName = 'Tel'
      Required = True
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
      Required = True
    end
    object qryCustomersNationalID: TStringField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1604#1610
      FieldName = 'NationalID'
      Required = True
      Size = 12
    end
    object qryCustomersPostalCode: TStringField
      Tag = 3
      DisplayLabel = #1603#1583' '#1662#1587#1578#1610
      FieldName = 'PostalCode'
      Required = True
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
      DisplayLabel = #1583#1585#1589#1583#1578#1582#1601#1610#1601'1'
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
      FieldName = 'PersonID1'
    end
    object qryCustomers_PersonID1: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
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
    object qryCustomers_MasirID: TStringField
      DisplayLabel = #1711#1585#1608#1607' '#1570#1583#1585#1587' '
      FieldKind = fkLookup
      FieldName = '_MasirID'
      LookupDataSet = qryAddressInMasir
      LookupKeyFields = 'MasirID'
      LookupResultField = 'MasirText'
      KeyFields = 'MasirID'
      Size = 250
      Lookup = True
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
      FieldName = 'PersonID3'
    end
    object strngfldCustomers_PersonID3: TStringField
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
      Required = True
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
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1588#1582#1589
      FieldName = 'HCKharidarTypeCode'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryCustomersHCTarafGaradadTypeCode: TWordField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1582#1585#1610#1583#1575#1585
      FieldName = 'HCTarafGaradadTypeCode'
    end
    object qryCustomersHCForoushandeType1Code: TWordField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1601#1585#1608#1588#1606#1583#1607
      FieldName = 'HCForoushandeType1Code'
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
    object qryCustomersCitizenCode: TStringField
      Tag = 3
      DisplayLabel = #1705#1583' '#1605#1604#1740' '#1575#1578#1576#1575#1593
      FieldName = 'CitizenCode'
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
    object qryCustomersBlackList: TBooleanField
      FieldName = 'BlackList'
    end
    object qryCustomersTaxMemoryUniqueId: TStringField
      Tag = 3
      DisplayLabel = #1588#1606#1575#1587#1607' '#1740#1705#1578#1575' '#1605#1575#1604#1740#1575#1578#1740
      FieldName = 'TaxMemoryUniqueId'
      FixedChar = True
      Size = 6
    end
    object qryCustomersFarmerUniqueCode: TStringField
      Tag = 3
      DisplayLabel = #1705#1583' '#1740#1705#1578#1575' '
      FieldName = 'FarmerUniqueCode'
      Size = 30
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
    Left = 816
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
    Left = 808
    Top = 287
  end
  object PopMPrint: TPopupMenu
    AutoHotkeys = maManual
    Left = 751
    Top = 416
    object AllClick: TMenuItem
      Caption = 'Use Name'
      Visible = False
      OnClick = AllClickClick
    end
    object RepCustomers1: TMenuItem
      Caption = #1605#1575#1606#1583#1607' '#1575#1576#1578#1583#1575#1610' '#1587#1575#1604
      OnClick = AllClickClick
    end
    object RepCustomers2: TMenuItem
      Caption = #1578#1604#1601#1606' '#1608' '#1601#1575#1603#1587
      OnClick = AllClickClick
    end
    object RepCustomers3: TMenuItem
      Caption = #1711#1585#1608#1607' '#1601#1593#1575#1604#1610#1578
      OnClick = AllClickClick
    end
    object RepCustomers4: TMenuItem
      Caption = #1582#1583#1605#1575#1578
      OnClick = AllClickClick
    end
    object RepCustomers5: TMenuItem
      Caption = #1587#1575#1610#1585' '#1575#1591#1604#1575#1593#1575#1578
      OnClick = AllClickClick
    end
    object RepCustomers7: TMenuItem
      Caption = #1605#1583#1740#1585#1575#1606
      OnClick = AllClickClick
    end
    object RepCustomers6: TMenuItem
      Caption = #1575#1591#1604#1575#1593#1575#1578' '#1605#1588#1578#1585#1610
      OnClick = AllClickClick
    end
    object N11: TMenuItem
      Caption = '-'
    end
    object N10: TMenuItem
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
      OnClick = N10Click
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
    Left = 952
    Top = 339
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
    Left = 318
    Top = 165
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
    Left = 144
    Top = 119
  end
  object qryLookUpCust: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT CustID,CustName FROM Customers')
    Left = 707
    Top = 327
  end
  object qryCustomersActivity: TADOQuery
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
        Value = 90000
      end>
    SQL.Strings = (
      'SELECT    *'
      'FROM         CustomersActivity'
      'WHERE     (PersonID1 = :CustID )')
    Left = 304
    Top = 332
    object qryCustomersActivityPersonID1: TIntegerField
      FieldName = 'PersonID1'
      Required = True
    end
    object qryCustomersActivitySellsType: TIntegerField
      FieldName = 'SellsType'
    end
    object qryCustomersActivity_SellsType: TStringField
      DisplayLabel = #1711#1585#1608#1607
      FieldKind = fkLookup
      FieldName = '_SellsType'
      LookupDataSet = qrySellsTypes
      LookupKeyFields = 'SellsType'
      LookupResultField = 'SellsTypeName'
      KeyFields = 'SellsType'
      Required = True
      Size = 200
      Lookup = True
    end
    object qryCustomersActivitySellsCode: TIntegerField
      DisplayLabel = #1603#1583
      FieldName = 'SellsCode'
      OnGetText = qryCustomersActivitySellsCodeGetText
    end
    object qryCustomersActivity_SellsCode: TStringField
      DisplayLabel = #1575#1591#1604#1575#1593#1575#1578
      FieldKind = fkLookup
      FieldName = '_SellsCode'
      LookupDataSet = qrySellsInfo
      LookupKeyFields = 'SellsCode'
      LookupResultField = 'SellsName'
      KeyFields = 'SellsCode'
      LookupCache = True
      Size = 200
      Lookup = True
    end
  end
  object dsCustomersActivity: TDataSource
    DataSet = qryCustomersActivity
    Left = 280
    Top = 384
  end
  object qrySellsTypes: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     *'
      'FROM         SellsTypes')
    Left = 691
    Top = 175
  end
  object qrySellsInfo: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     *'
      'FROM         SellsInfo')
    Left = 283
    Top = 511
  end
  object qryCustomersManag: TADOQuery
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
      'SELECT    *'
      'FROM         CustomersManag'
      'WHERE     (PersonID1 = :CustID )')
    Left = 288
    Top = 427
    object qryCustomersManagPersonID1: TIntegerField
      FieldName = 'PersonID1'
      Required = True
    end
    object qryCustomersManagJobCode: TIntegerField
      FieldName = 'JobCode'
    end
    object qryCustomersManag_JobCode: TStringField
      DisplayLabel = #1587#1605#1578
      FieldKind = fkLookup
      FieldName = '_JobCode'
      LookupDataSet = qrySellsInfo52Job
      LookupKeyFields = 'SellsCode'
      LookupResultField = 'SellsName'
      KeyFields = 'JobCode'
      Required = True
      Size = 200
      Lookup = True
    end
    object qryCustomersManagManagName: TWideStringField
      DisplayLabel = #1606#1575#1605
      FieldName = 'ManagName'
      Required = True
      Size = 100
    end
    object qryCustomersManagMobile: TStringField
      DisplayLabel = #1578#1604#1601#1606' '#1607#1605#1585#1575#1607
      FieldName = 'Mobile'
    end
    object qryCustomersManagTel: TStringField
      DisplayLabel = #1578#1604#1601#1606' '#1579#1575#1576#1578
      FieldName = 'Tel'
      Size = 30
    end
    object qryCustomersManagFax: TStringField
      DisplayLabel = #1601#1575#1603#1587
      FieldName = 'Fax'
      Size = 30
    end
    object qryCustomersManagEmail: TStringField
      FieldName = 'Email'
      Size = 30
    end
    object qryCustomersManagBirthDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1578#1608#1604#1583
      FieldName = 'BirthDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryCustomersManagMarriageDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1575#1586#1583#1608#1575#1580
      FieldName = 'MarriageDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryCustomersManagState: TWordField
      DisplayLabel = #1608#1590#1593#1610#1578
      FieldName = 'State'
      OnGetText = qryCustomersManagAllPickGetText
      OnSetText = qryCustomersManagAllPickSetText
    end
    object qryCustomersManagSendKind: TIntegerField
      FieldName = 'SendKind'
    end
    object qryCustomersManag_SendKind: TStringField
      DisplayLabel = #1606#1581#1608#1607' '#1575#1585#1587#1575#1604
      FieldKind = fkLookup
      FieldName = '_SendKind'
      LookupDataSet = qrySellsInfo46SendKind
      LookupKeyFields = 'SellsCode'
      LookupResultField = 'SellsName'
      KeyFields = 'SendKind'
      Size = 200
      Lookup = True
    end
    object qryCustomersManagLegalReal: TWordField
      DisplayLabel = #1606#1608#1593' '#1588#1582#1589
      FieldName = 'LegalReal'
      OnGetText = qryCustomersManagAllPickGetText
      OnSetText = qryCustomersManagAllPickSetText
    end
    object qryCustomersManagNationalID: TStringField
      DisplayLabel = #1705#1583' '#1605#1604#1740
      FieldName = 'NationalID'
      Size = 12
    end
    object qryCustomersManagOfShares: TFloatField
      DisplayLabel = #1583#1585#1589#1583' '#1587#1607#1575#1605
      FieldName = 'OfShares'
    end
  end
  object dsCustomersManag: TDataSource
    DataSet = qryCustomersManag
    Left = 382
    Top = 232
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
    Left = 483
    Top = 383
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
    Left = 387
    Top = 119
  end
  object dsCustomersMasir: TDataSource
    DataSet = qryCustomersMasir
    Left = 518
    Top = 76
  end
  object qryCustomersMasir: TADOQuery
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
      'SELECT    *'
      'FROM         CustomersMasir'
      'WHERE     (PersonID1 = :CustID )')
    Left = 505
    Top = 7
    object qryCustomersMasirPersonID1: TIntegerField
      FieldName = 'PersonID1'
      Required = True
    end
    object qryCustomersMasirMasirID: TIntegerField
      DisplayLabel = #1603#1583' '#1605#1587#1610#1585
      FieldName = 'MasirID'
    end
    object qryCustomersMasir_MasirID: TStringField
      DisplayLabel = #1605#1587#1610#1585
      FieldKind = fkLookup
      FieldName = '_MasirID'
      LookupDataSet = qryAddressInMasir
      LookupKeyFields = 'MasirID'
      LookupResultField = 'MasirText'
      KeyFields = 'MasirID'
      Required = True
      Size = 500
      Lookup = True
    end
    object qryCustomersMasirMasirNote: TWideStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'MasirNote'
      Size = 100
    end
  end
  object qryAddressInMasir: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     *'
      'FROM         AddressInMasir'
      '')
    Left = 739
    Top = 495
  end
  object qryUseUnits: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     UseUnitID, UseUnitName'
      'FROM         UseUnits')
    Left = 887
    Top = 240
  end
  object qryCustomersGroup: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT    *'
      'FROM         CustomersGroup')
    Left = 758
    Top = 201
  end
  object pdbplnmanage: TppDBPipeline
    DataSource = dsCustomersManag
    OpenDataSource = False
    UserName = 'pdbplnmanage'
    Left = 656
    Top = 392
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
    Left = 232
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
    Left = 344
    Top = 448
  end
  object plnActivity: TppDBPipeline
    DataSource = dsCustomersActivity
    OpenDataSource = False
    UserName = 'plnActivity'
    Left = 392
    Top = 400
  end
end

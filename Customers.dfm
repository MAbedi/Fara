inherited CustomersF: TCustomersF
  Left = 408
  Top = 230
  ActiveControl = cmbGroups
  Caption = #1605#1593#1585#1601#1610' ...'
  ClientHeight = 739
  ClientWidth = 1095
  ExplicitTop = -297
  ExplicitWidth = 1103
  ExplicitHeight = 770
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 698
    Width = 1095
    ExplicitTop = 698
    ExplicitWidth = 1087
    DesignSize = (
      1095
      41)
    object newPanel: TPanel [0]
      Left = 701
      Top = 1
      Width = 393
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 693
      DesignSize = (
        393
        39)
      object BitBtn3: TBitBtn
        Left = 315
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 237
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        Left = 160
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetDelete1_
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        TabOrder = 2
      end
      object BitBtn10: TBitBtn
        Left = 82
        Top = 8
        Width = 75
        Height = 25
        Action = actGetExel
        Anchors = [akTop, akRight]
        Caption = #1582#1608#1575#1606#1583#1606' Excel'
        TabOrder = 3
      end
      object BitBtn15: TBitBtn
        Left = 6
        Top = 8
        Width = 75
        Height = 25
        Caption = #1575#1591#1604#1575#1593#1575#1578' '#1605#1575#1604#1610#1575#1578
        TabOrder = 4
        OnClick = BitBtn15Click
      end
    end
    object okPanel: TPanel [1]
      Left = 536
      Top = 1
      Width = 165
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitLeft = 528
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
    inherited BtnReject: TBitBtn
      TabOrder = 3
    end
    object BitBtn2: TBitBtn
      Left = 161
      Top = 9
      Width = 75
      Height = 25
      Hint = ' '
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 2
      OnClick = BitBtn2Click
    end
    object BitBtn6: TBitBtn
      Left = 239
      Top = 9
      Width = 75
      Height = 25
      Action = actSendExel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 4
    end
    object BitBtn9: TBitBtn
      Left = 84
      Top = 9
      Width = 75
      Height = 25
      Action = actSort
      Anchors = [akLeft, akBottom]
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 5
    end
    object BitBtn1: TBitBtn
      Left = 316
      Top = 9
      Width = 75
      Height = 25
      Action = actPrint
      Caption = #1670#1600#1600#1600#1575#1662'(F7)'
      TabOrder = 6
    end
    object btnRow: TBitBtn
      Left = 393
      Top = 9
      Width = 75
      Height = 25
      Hint = ' '
      Caption = #1585#1583#1610#1601' '#1711#1584#1575#1585#1610
      TabOrder = 7
      OnClick = btnRowClick
    end
  end
  inherited Panel2: TPanel
    Width = 1095
    ExplicitWidth = 1087
    DesignSize = (
      1095
      53)
    inherited ImgTemplate: TImage
      Left = 1066
      Top = 7
      ExplicitLeft = 761
      ExplicitTop = 7
    end
    inherited lblCaption: TLabel
      Left = 987
      ExplicitLeft = 979
    end
    inherited lblBaseDate: TLabel
      Left = 453
      ExplicitLeft = 374
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
    Width = 1095
    Height = 645
    ExplicitWidth = 1087
    ExplicitHeight = 645
    object Panel1: TPanel
      Left = 552
      Top = 2
      Width = 541
      Height = 641
      Align = alRight
      Anchors = [akLeft, akTop, akRight, akBottom]
      BorderWidth = 5
      BorderStyle = bsSingle
      TabOrder = 0
      object GroupBox2: TGroupBox
        Left = 6
        Top = 6
        Width = 525
        Height = 76
        Align = alTop
        Caption = '   '#1575#1606#1578#1582#1575#1576' '#1711#1585#1608#1607' '#1605#1588#1578#1585#1610#8207#1607#1575'   '
        TabOrder = 1
        ExplicitWidth = 553
        object cmbGroups: TComboBox
          AlignWithMargins = True
          Left = 5
          Top = 50
          Width = 515
          Height = 21
          Align = alBottom
          AutoDropDown = True
          Style = csDropDownList
          Color = 14024703
          TabOrder = 0
          OnChange = cmbGroupsChange
          OnEnter = cmbGroupsEnter
          ExplicitWidth = 543
        end
        object Panel5: TPanel
          Left = 2
          Top = 15
          Width = 521
          Height = 31
          Align = alTop
          TabOrder = 1
          ExplicitWidth = 549
          object SpeedButton1: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 23
            Height = 23
            Align = alLeft
            Caption = '...'
            OnClick = SpeedButton1Click
            ExplicitLeft = 6
            ExplicitTop = 19
            ExplicitHeight = 22
          end
          object btnSelect: TSpeedButton
            AlignWithMargins = True
            Left = 33
            Top = 4
            Width = 23
            Height = 23
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
            ExplicitLeft = 109
            ExplicitTop = 2
            ExplicitHeight = 22
          end
          object chkAllCusts: TCheckBox
            Left = 423
            Top = 1
            Width = 97
            Height = 29
            Align = alRight
            BiDiMode = bdRightToLeftNoAlign
            Caption = #1607#1605#1607' '#1605#1588#1578#1585#1610#8207#1607#1575
            ParentBiDiMode = False
            TabOrder = 0
            OnClick = chkAllCustsClick
            ExplicitLeft = 451
          end
        end
      end
      object DBGrid1: TCedarDbgrid
        Tag = 111
        Left = 6
        Top = 82
        Width = 525
        Height = 549
        Align = alClient
        Color = clCream
        DataSource = srcCustomers
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
        HorzScrollBar.ExtraPanel.NavigatorButtons = [nbFirstEh, nbPriorEh, nbNextEh, nbLastEh, nbRefreshEh]
        HorzScrollBar.ExtraPanel.Visible = True
        IndicatorTitle.ShowDropDownSign = True
        IndicatorTitle.TitleButton = True
        OddRowColor = clGradientInactiveCaption
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        PopupMenu = sd
        ReadOnly = True
        RowHeight = 18
        SearchPanel.Enabled = True
        SearchPanel.FilterOnTyping = True
        SortLocal = True
        TabOrder = 0
        OnDblClick = actCustomersInterViewExecute
        OnKeyPress = DBGrid1KeyPress
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
            Width = 53
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CustName'
            Footers = <>
            Title.TitleButton = True
            Width = 58
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CustFirstName'
            Footers = <>
            Title.TitleButton = True
            Width = 18
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Mobile'
            Footers = <>
            Title.TitleButton = True
            Width = 57
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'BlackList'
            Footers = <>
            Width = 64
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 2
      Width = 550
      Height = 641
      Align = alClient
      BevelInner = bvLowered
      BevelOuter = bvLowered
      BorderWidth = 3
      BorderStyle = bsSingle
      TabOrder = 1
      ExplicitWidth = 514
      DesignSize = (
        546
        637)
      object Label34: TLabel
        Left = 418
        Top = 365
        Width = 76
        Height = 13
        Caption = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
      end
      object Label2: TLabel
        Left = 422
        Top = 12
        Width = 51
        Height = 13
        Alignment = taRightJustify
        Caption = #1603#1583' '#1605#1588#1578#1585#1610
        FocusControl = edtCustID
      end
      object Label3: TLabel
        Left = 422
        Top = 36
        Width = 53
        Height = 13
        Alignment = taRightJustify
        Caption = #1606#1575#1605' '#1605#1588#1578#1585#1610
        FocusControl = DBEdit2
      end
      object Label6: TLabel
        Left = 422
        Top = 84
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = #1578#1604#1601#1606
        FocusControl = edtMaxCredit
      end
      object Label7: TLabel
        Left = 422
        Top = 109
        Width = 27
        Height = 13
        Alignment = taRightJustify
        Caption = #1601#1575#1603#1587
        FocusControl = DBEdit6
      end
      object Label8: TLabel
        Left = 255
        Top = 195
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = #1603#1588#1608#1585
        FocusControl = DBEdit7
      end
      object Label9: TLabel
        Left = 422
        Top = 245
        Width = 25
        Height = 13
        Alignment = taRightJustify
        Caption = #1570#1583#1585#1587
        FocusControl = edtMaxCredit
      end
      object Label15: TLabel
        Left = 422
        Top = 60
        Width = 55
        Height = 13
        Alignment = taRightJustify
        Caption = #1587#1602#1601' '#1575#1593#1578#1576#1575#1585
        FocusControl = DBEdit13
      end
      object Label16: TLabel
        Left = 152
        Top = 195
        Width = 22
        Height = 13
        Alignment = taRightJustify
        Caption = #1588#1607#1585
        FocusControl = DBEdit7
      end
      object Label18: TLabel
        Left = 152
        Top = 219
        Width = 30
        Height = 13
        Alignment = taRightJustify
        Caption = #1605#1606#1591#1602#1607
        FocusControl = DBEdit7
      end
      object Label20: TLabel
        Left = 422
        Top = 219
        Width = 44
        Height = 13
        Alignment = taRightJustify
        Caption = #1603#1583' '#1662#1587#1578#1610
        FocusControl = DBEdit7
      end
      object Label21: TLabel
        Left = 422
        Top = 197
        Width = 67
        Height = 13
        Alignment = taRightJustify
        Caption = #1589#1606#1583#1608#1602' '#1662#1587#1578#1610
        FocusControl = DBEdit7
      end
      object Label23: TLabel
        Left = 422
        Top = 135
        Width = 72
        Height = 13
        Alignment = taRightJustify
        Caption = #1588#1605#1575#1585#1607' '#1575#1602#1578#1589#1575#1583#1610
        FocusControl = DBEdit7
      end
      object Label14: TLabel
        Left = 152
        Top = 12
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = #1578#1575#1585#1610#1582
        FocusControl = DBEdit7
      end
      object Label13: TLabel
        Left = 458
        Top = 273
        Width = 54
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1711#1585#1608#1607' '#1601#1593#1575#1604#1610#1578
        ExplicitLeft = 422
      end
      object Label35: TLabel
        Left = 152
        Top = 133
        Width = 35
        Height = 13
        Caption = #1603#1583' '#1605#1604#1610
      end
      object Label19: TLabel
        Left = 152
        Top = 271
        Width = 15
        Height = 13
        Caption = #1606#1585#1582
      end
      object Label37: TLabel
        Left = 152
        Top = 84
        Width = 52
        Height = 13
        Alignment = taRightJustify
        Caption = #1578#1604#1601#1606' '#1607#1605#1585#1575#1607
        FocusControl = edtMaxCredit
      end
      object Label38: TLabel
        Left = 152
        Top = 109
        Width = 62
        Height = 13
        Caption = #1585#1583#1610#1601' '#1605#1588#1578#1585#1610
      end
      object Label39: TLabel
        Left = 415
        Top = 295
        Width = 92
        Height = 13
        Alignment = taRightJustify
        Caption = #1603#1583' '#1601#1606#1610'/'#1588#1605#1575#1585#1607' '#1662#1604#1575#1705
        FocusControl = DBEdit7
        Visible = False
      end
      object Label42: TLabel
        Left = 415
        Top = 321
        Width = 92
        Height = 13
        Alignment = taRightJustify
        Caption = #1603#1583' '#1601#1606#1610'/'#1588#1605#1575#1585#1607' '#1662#1604#1575#1705
        FocusControl = DBEdit7
      end
      object Label43: TLabel
        Left = 152
        Top = 321
        Width = 49
        Height = 13
        Alignment = taRightJustify
        Caption = 'CustName'
      end
      object Label44: TLabel
        Left = 152
        Top = 290
        Width = 47
        Height = 26
        BiDiMode = bdLeftToRight
        Caption = 'Telegram Chat ID'
        FocusControl = edtTelegramChatID
        ParentBiDiMode = False
        WordWrap = True
      end
      object Label51: TLabel
        Left = 417
        Top = 343
        Width = 44
        Height = 13
        Alignment = taRightJustify
        Caption = #1606#1608#1593' '#1582#1608#1583#1585#1608
        FocusControl = DBEdit7
      end
      object Label78: TLabel
        Left = 152
        Top = 345
        Width = 58
        Height = 13
        Alignment = taRightJustify
        Caption = #1705#1583' '#1605#1604#1740' '#1575#1578#1576#1575#1593
      end
      object Label52: TLabel
        Left = 422
        Top = 165
        Width = 28
        Height = 13
        Caption = #1575#1587#1578#1575#1606
        FocusControl = DBLookupComboBox1
      end
      object Label53: TLabel
        Left = 152
        Top = 165
        Width = 22
        Height = 13
        Caption = #1588#1607#1585
        FocusControl = DBLookupComboBox2
      end
      object Label55: TLabel
        Left = 154
        Top = 60
        Width = 53
        Height = 13
        Alignment = taRightJustify
        Caption = #1576#1604#1607' Chat ID'
        FocusControl = edtMaxCredit
      end
      object dbmmoCustomerNote1: TDBMemo
        Tag = 111
        Left = 14
        Top = 365
        Width = 399
        Height = 32
        DataField = 'CustomerNote'
        DataSource = srcCustomers
        TabOrder = 27
      end
      object edtCustID: TDBEdit
        Left = 232
        Top = 8
        Width = 182
        Height = 21
        DataField = 'CustID'
        DataSource = srcCustomers
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 154
        Top = 32
        Width = 260
        Height = 21
        DataField = 'CustName'
        DataSource = srcCustomers
        TabOrder = 2
      end
      object edtMaxCredit: TDBEdit
        Left = 284
        Top = 56
        Width = 130
        Height = 21
        DataField = 'MaxCredit'
        DataSource = srcCustomers
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 284
        Top = 80
        Width = 130
        Height = 21
        DataField = 'Tel'
        DataSource = srcCustomers
        TabOrder = 6
      end
      object DBEdit7: TDBEdit
        Left = 284
        Top = 105
        Width = 130
        Height = 21
        DataField = 'Fax'
        DataSource = srcCustomers
        TabOrder = 8
      end
      object dbmmoAddress: TDBMemo
        Tag = 111
        Left = 14
        Top = 239
        Width = 400
        Height = 25
        DataField = 'Address'
        DataSource = srcCustomers
        TabOrder = 19
      end
      object DBEdit13: TDBEdit
        Left = 284
        Top = 191
        Width = 130
        Height = 21
        DataField = 'pobox'
        DataSource = srcCustomers
        TabOrder = 14
      end
      object DBEdit8: TDBEdit
        Left = 180
        Top = 191
        Width = 70
        Height = 21
        DataField = 'Country'
        DataSource = srcCustomers
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
      end
      object DBEdit9: TDBEdit
        Left = 14
        Top = 191
        Width = 134
        Height = 21
        DataField = 'City'
        DataSource = srcCustomers
        ParentShowHint = False
        ShowHint = True
        TabOrder = 16
      end
      object DBEdit12: TDBEdit
        Left = 284
        Top = 215
        Width = 130
        Height = 21
        DataField = 'PostalCode'
        DataSource = srcCustomers
        TabOrder = 17
      end
      object DBEdit11: TDBEdit
        Left = 284
        Top = 130
        Width = 130
        Height = 21
        DataField = 'EconomicNumber'
        DataSource = srcCustomers
        TabOrder = 10
      end
      object DBEdit10: TDBEdit
        Left = 14
        Top = 215
        Width = 134
        Height = 21
        DataField = 'Region'
        DataSource = srcCustomers
        ParentShowHint = False
        ShowHint = True
        TabOrder = 18
      end
      object DBEdit17: TDBEdit
        Left = 14
        Top = 8
        Width = 134
        Height = 21
        DataField = 'InfoDate'
        DataSource = srcCustomers
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object CmbGrpActionCustomer: TDBComboBox
        Left = 268
        Top = 267
        Width = 182
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'GrpActionCustomer'
        DataSource = srcCustomers
        Items.Strings = (
          #1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1608' '#1579#1575#1576#1578' '#1606#1608#1593' 250')
        TabOrder = 20
        ExplicitLeft = 232
      end
      object PageControl1: TPageControl
        Left = 5
        Top = 416
        Width = 536
        Height = 216
        ActivePage = TabSheet3
        Align = alBottom
        TabOrder = 28
        ExplicitWidth = 500
        object TabSheet1: TTabSheet
          Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1583#1575#1585#1610
          ExplicitWidth = 492
          DesignSize = (
            528
            188)
          object Label11: TLabel
            Left = 379
            Top = 32
            Width = 102
            Height = 13
            Alignment = taRightJustify
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610' '#1581#1587#1575#1576#1583#1575#1585#1610
          end
          object SpeedButton2: TSpeedButton
            Left = 281
            Top = 28
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton2Click
          end
          object DBText1: TDBText
            Left = 115
            Top = 31
            Width = 199
            Height = 16
            Anchors = [akTop, akRight]
            Color = 13948116
            DataField = '__DetailCode'
            DataSource = srcCustomers
            ParentColor = False
            Transparent = True
            ExplicitLeft = 79
          end
          object Label22: TLabel
            Left = 415
            Top = 57
            Width = 57
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'
            FocusControl = DBEdit18
            ExplicitLeft = 379
          end
          object SpeedButton5: TSpeedButton
            Left = 317
            Top = 52
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton5Click
            ExplicitLeft = 281
          end
          object DBText5: TDBText
            Left = 115
            Top = 56
            Width = 199
            Height = 16
            Anchors = [akTop, akRight]
            Color = 13948116
            DataField = '__CTopicCodeName'
            DataSource = srcCustomers
            ParentColor = False
            Transparent = True
            ExplicitLeft = 79
          end
          object Label24: TLabel
            Left = 415
            Top = 82
            Width = 57
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'3'
            FocusControl = DBEdit19
            ExplicitLeft = 379
          end
          object SpeedButton6: TSpeedButton
            Left = 317
            Top = 76
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton6Click
            ExplicitLeft = 281
          end
          object DBText6: TDBText
            Left = 115
            Top = 80
            Width = 199
            Height = 16
            Anchors = [akTop, akRight]
            Color = 13948116
            DataField = '__CTopicCodeName2'
            DataSource = srcCustomers
            ParentColor = False
            Transparent = True
            ExplicitLeft = 79
          end
          object Label48: TLabel
            Left = 415
            Top = 106
            Width = 57
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'4'
            FocusControl = DBEdit29
            ExplicitLeft = 379
          end
          object SpeedButton10: TSpeedButton
            Left = 317
            Top = 101
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton10Click
            ExplicitLeft = 281
          end
          object DBText3: TDBText
            Left = 79
            Top = 105
            Width = 235
            Height = 16
            Anchors = [akLeft, akTop, akRight]
            Color = 13948116
            DataField = '__CTopicCodeName3'
            DataSource = srcCustomers
            ParentColor = False
            Transparent = True
            ExplicitWidth = 199
          end
          object Label49: TLabel
            Left = 416
            Top = 8
            Width = 45
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1581#1587#1575#1576
            FocusControl = DBEdit30
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 380
          end
          object SpeedButton11: TSpeedButton
            Left = 316
            Top = 3
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton11Click
            ExplicitLeft = 280
          end
          object DBText4: TDBText
            Left = 79
            Top = 6
            Width = 235
            Height = 16
            Anchors = [akLeft, akTop, akRight]
            Color = 13948116
            DataField = '__TopicCodeName'
            DataSource = srcCustomers
            ParentColor = False
            Transparent = True
            ExplicitWidth = 199
          end
          object DBEdit15: TDBEdit
            Left = 306
            Top = 67
            Width = 70
            Height = 21
            Anchors = [akLeft, akBottom]
            DataField = 'acc_DetailCode'
            DataSource = srcCustomers
            TabOrder = 1
            OnKeyDown = DBEdit15KeyDown
          end
          object DBEdit18: TDBEdit
            Left = 342
            Top = 53
            Width = 70
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'acc_CTopicCode'
            DataSource = srcCustomers
            TabOrder = 2
            OnKeyDown = DBEdit18KeyDown
            ExplicitLeft = 306
          end
          object DBEdit19: TDBEdit
            Left = 342
            Top = 78
            Width = 70
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'acc_CTopicCode2'
            DataSource = srcCustomers
            TabOrder = 3
            OnKeyDown = DBEdit19KeyDown
            ExplicitLeft = 306
          end
          object DBEdit29: TDBEdit
            Left = 342
            Top = 102
            Width = 70
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'acc_CTopicCode3'
            DataSource = srcCustomers
            TabOrder = 4
            OnKeyDown = DBEdit19KeyDown
            ExplicitLeft = 306
          end
          object GroupBox1: TGroupBox
            Left = -2
            Top = 52
            Width = 79
            Height = 46
            Caption = '    '#1578#1588#1582#1610#1589'    '
            TabOrder = 5
            object CmbaccStateDefault: TDBComboBox
              Left = 7
              Top = 18
              Width = 66
              Height = 21
              DataField = 'accStateDefault'
              DataSource = srcCustomers
              Items.Strings = (
                #1606#1583#1575#1585#1583
                #1576#1583#1607#1603#1575#1585
                #1576#1587#1578#1575#1606#1603#1575#1585)
              TabOrder = 0
            end
          end
          object DBEdit30: TDBEdit
            Left = 342
            Top = 4
            Width = 70
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'acc_TopicCode'
            DataSource = srcCustomers
            TabOrder = 0
            ExplicitLeft = 306
          end
        end
        object TabSheet2: TTabSheet
          Caption = #1603#1606#1578#1585#1604' '#1607#1575
          ImageIndex = 1
          ExplicitWidth = 492
          object Label12: TLabel
            Left = 374
            Top = 13
            Width = 73
            Height = 13
            Alignment = taRightJustify
            Caption = #1606#1608#1593' '#1602#1610#1605#1578' '#1601#1575#1603#1578#1608#1585
          end
          object LblServiceCalcType: TLabel
            Left = 151
            Top = 13
            Width = 94
            Height = 13
            Alignment = taRightJustify
            Caption = #1606#1581#1608#1607' '#1605#1581#1575#1587#1576#1607' '#1582#1583#1605#1575#1578
            Enabled = False
          end
          object LblServicePrice: TLabel
            Left = 151
            Top = 36
            Width = 49
            Height = 13
            Alignment = taRightJustify
            Caption = #1606#1585#1582' '#1582#1583#1605#1575#1578
            Enabled = False
          end
          object Label17: TLabel
            Left = 374
            Top = 66
            Width = 76
            Height = 13
            Caption = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
          end
          object Label45: TLabel
            Left = 374
            Top = 109
            Width = 65
            Height = 13
            Alignment = taRightJustify
            Caption = #1705#1606#1578#1585#1604' '#1579#1576#1578' '#1601#1585#1605
          end
          object CmbValuationType: TDBComboBox
            Left = 265
            Top = 9
            Width = 102
            Height = 21
            DataField = 'ValuationType'
            DataSource = srcCustomers
            Items.Strings = (
              #1576#1607#1575#1610' '#1601#1585#1608#1588' 1'
              #1576#1607#1575#1610' '#1601#1585#1608#1588' 2'
              #1576#1607#1575#1610' '#1601#1585#1608#1588' 3'
              #1576#1607#1575#1610' '#1601#1585#1608#1588' 4'
              #1575#1606#1578#1582#1575#1576#8207#1583#1585#1601#1575#1603#1578#1608#1585)
            TabOrder = 0
          end
          object CmbServiceCalcType: TDBComboBox
            Left = 28
            Top = 9
            Width = 114
            Height = 21
            DataField = 'ServiceCalcType'
            DataSource = srcCustomers
            Items.Strings = (
              #1606#1583#1575#1585#1583
              #1576#1585#1581#1587#1576' '#1605#1602#1583#1575#1585
              #1606#1585#1582' '#1579#1575#1576#1578
              #1590#1585#1610#1576' '#1605#1576#1604#1594' '#1601#1585#1608#1588)
            TabOrder = 1
          end
          object EdtServicePrice: TDBEdit
            Left = 28
            Top = 32
            Width = 114
            Height = 21
            Color = 13236955
            DataField = 'ServicePrice'
            DataSource = srcCustomers
            TabOrder = 2
          end
          object dbmmoCustomerNote: TDBMemo
            Tag = 111
            Left = 28
            Top = 57
            Width = 339
            Height = 32
            DataField = 'CustomerNote'
            DataSource = srcCustomers
            TabOrder = 3
          end
          object cmbPostControl: TDBComboBox
            Left = 28
            Top = 105
            Width = 339
            Height = 21
            DataField = 'PostControl'
            DataSource = srcCustomers
            Items.Strings = (
              #1576#1583#1608#1606' '#1705#1606#1578#1585#1604
              #1662#1740#1594#1575#1605' '#1608' '#1579#1576#1578'('#1578#1608#1586#1740#1606')'
              #1662#1740#1594#1575#1605' '#1608' '#1580#1604#1608#1711#1740#1585#1740' '#1575#1586' '#1579#1576#1578'('#1578#1608#1586#1740#1606')')
            TabOrder = 4
          end
        end
        object TabSheet3: TTabSheet
          Caption = #1587#1575#1610#1585
          ImageIndex = 2
          ExplicitWidth = 492
          DesignSize = (
            528
            188)
          object Label25: TLabel
            Left = 435
            Top = 6
            Width = 33
            Height = 13
            Caption = #1605#1583#1610#1585#1610#1578
            FocusControl = DBEdit20
          end
          object Label26: TLabel
            Left = 435
            Top = 33
            Width = 51
            Height = 13
            Caption = #1605#1583#1610#1585' '#1601#1585#1608#1588
            FocusControl = DBEdit21
          end
          object Label27: TLabel
            Left = 435
            Top = 60
            Width = 63
            Height = 13
            Caption = #1588#1605#1575#1585#1607' '#1602#1585#1575#1585#1583#1575#1583
            FocusControl = DBEdit22
          end
          object Label28: TLabel
            Left = 194
            Top = 6
            Width = 73
            Height = 13
            Caption = #1578#1608#1590#1610#1581#1575#1578' '#1578#1582#1601#1610#1601
            FocusControl = DBEdit23
          end
          object Label29: TLabel
            Left = 194
            Top = 33
            Width = 86
            Height = 13
            Caption = #1583#1585#1589#1583#1578#1582#1601#1610#1601'/'#1601#1585#1605#1608#1604
            FocusControl = edtDiscount
          end
          object Label30: TLabel
            Left = 194
            Top = 60
            Width = 73
            Height = 13
            Caption = #1605#1583#1578' '#1662#1585#1575#1582#1578'('#1585#1608#1586')'#8207
            FocusControl = DBEdit25
          end
          object Label31: TLabel
            Left = 194
            Top = 87
            Width = 45
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1606#1581#1608#1607' '#1581#1605#1604
          end
          object Label32: TLabel
            Left = 435
            Top = 87
            Width = 29
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1606#1608#1593' '#1575#1585#1586
          end
          object Label54: TLabel
            Left = 198
            Top = 114
            Width = 89
            Height = 13
            Alignment = taRightJustify
            BiDiMode = bdLeftToRight
            Caption = #1705#1583' '#1605#1588#1578#1585#1740' '#1580#1575#1740#1711#1586#1740#1606
            FocusControl = edtAlternativeCustID
            ParentBiDiMode = False
          end
          object Label68: TLabel
            Left = 198
            Top = 141
            Width = 95
            Height = 13
            Alignment = taRightJustify
            BiDiMode = bdLeftToRight
            Caption = #1705#1583' '#1605#1588#1578#1585#1740' '#1580#1575#1740#1711#1586#1740#1606'2'
            FocusControl = edtAlternativeCustID2
            ParentBiDiMode = False
          end
          object Label47: TLabel
            Left = 435
            Top = 114
            Width = 60
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1583#1585#1589#1583#1578#1582#1601#1610#1601'1'
            FocusControl = edtDiscountOne
          end
          object Label81: TLabel
            Left = 435
            Top = 141
            Width = 90
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1588#1606#1575#1587#1607' '#1740#1705#1578#1575' '#1605#1575#1604#1740#1575#1578#1740
          end
          object Label82: TLabel
            Left = 435
            Top = 168
            Width = 30
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1705#1583' '#1740#1705#1578#1575
          end
          object DBEdit20: TDBEdit
            Left = 295
            Top = 2
            Width = 134
            Height = 21
            DataField = 'ManageName'
            DataSource = srcCustomers
            TabOrder = 0
          end
          object DBEdit21: TDBEdit
            Left = 295
            Top = 29
            Width = 134
            Height = 21
            DataField = 'ManagerSells'
            DataSource = srcCustomers
            TabOrder = 1
          end
          object DBEdit22: TDBEdit
            Left = 295
            Top = 56
            Width = 134
            Height = 21
            DataField = 'ContactNo'
            DataSource = srcCustomers
            TabOrder = 2
          end
          object DBEdit23: TDBEdit
            Left = 1
            Top = 2
            Width = 194
            Height = 21
            DataField = 'DiscountNote'
            DataSource = srcCustomers
            TabOrder = 4
          end
          object edtDiscount: TDBEdit
            Left = 1
            Top = 29
            Width = 194
            Height = 21
            DataField = 'Discount'
            DataSource = srcCustomers
            TabOrder = 5
          end
          object DBEdit25: TDBEdit
            Left = 1
            Top = 56
            Width = 194
            Height = 21
            DataField = 'DayTime'
            DataSource = srcCustomers
            TabOrder = 6
          end
          object CmbConveyKind: TDBComboBox
            Left = 1
            Top = 83
            Width = 194
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'ConveyKind'
            DataSource = srcCustomers
            Items.Strings = (
              #1575#1606#1578#1588#1575#1585#1575#1578#1610
              #1603#1578#1575#1576#1588#1607#1585
              #1588#1585#1603#1578)
            TabOrder = 7
          end
          object CmbArzTypeID: TDBComboBox
            Left = 295
            Top = 83
            Width = 134
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'ArzTypeID'
            DataSource = srcCustomers
            Items.Strings = (
              #1583#1585' '#1578#1606#1592#1610#1605#1575#1578' '#1587#1585#1610#1575#1604' '#1608#1575#1585#1583' '#1588#1608#1583)
            TabOrder = 3
          end
          object edtAlternativeCustID: TDBEdit
            Left = 1
            Top = 110
            Width = 194
            Height = 21
            DataField = 'AlternativeCustID'
            DataSource = srcCustomers
            TabOrder = 8
          end
          object edtAlternativeCustID2: TDBEdit
            Left = 1
            Top = 137
            Width = 194
            Height = 21
            DataField = 'AlternativeCustID2'
            DataSource = srcCustomers
            TabOrder = 9
          end
          object edtDiscountOne: TDBEdit
            Left = 295
            Top = 110
            Width = 134
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'DiscountOne'
            DataSource = srcCustomers
            TabOrder = 10
          end
          object edtTaxMemoryUniqueId: TDBEdit
            Left = 295
            Top = 137
            Width = 134
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'TaxMemoryUniqueId'
            DataSource = srcCustomers
            TabOrder = 11
          end
          object edtFarmerUniqueCode: TDBEdit
            Left = 295
            Top = 164
            Width = 134
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'FarmerUniqueCode'
            DataSource = srcCustomers
            TabOrder = 12
          end
        end
        object TabSheet4: TTabSheet
          Caption = #1575#1591#1604#1575#1593#1575#1578' '#1603#1605#1603#1610
          ImageIndex = 3
          ExplicitWidth = 492
          DesignSize = (
            528
            188)
          object Label36: TLabel
            Left = 420
            Top = 11
            Width = 16
            Height = 13
            Caption = #1608#1586#1606
            FocusControl = edtInfoWeight
          end
          object SBtnInfoWeight1: TSpeedButton
            Tag = 1
            Left = 296
            Top = 7
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SBtnInfoWeight1Click
            ExplicitLeft = 260
          end
          object SBtnInfoWeight2: TSpeedButton
            Tag = 1
            Left = 266
            Top = 7
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...2'
            OnClick = SBtnInfoWeight2Click
            ExplicitLeft = 230
          end
          object Label4: TLabel
            Left = 21
            Top = 52
            Width = 24
            Height = 13
            Caption = 'Email'
            FocusControl = DBEdit3
          end
          object Label5: TLabel
            Left = 21
            Top = 77
            Width = 18
            Height = 13
            Caption = 'Site'
            FocusControl = DBEdit4
          end
          object edtInfoWeight: TDBEdit
            Left = 284
            Top = 8
            Width = 130
            Height = 21
            DataField = 'InfoWeight'
            DataSource = srcCustomers
            TabOrder = 0
          end
          object DBEdit3: TDBEdit
            Left = 48
            Top = 48
            Width = 169
            Height = 21
            TabStop = False
            BiDiMode = bdLeftToRight
            DataField = 'email'
            DataSource = srcCustomers
            ParentBiDiMode = False
            TabOrder = 1
          end
          object DBEdit4: TDBEdit
            Left = 48
            Top = 73
            Width = 169
            Height = 21
            TabStop = False
            BiDiMode = bdLeftToRight
            DataField = 'WebSite'
            DataSource = srcCustomers
            ParentBiDiMode = False
            TabOrder = 2
          end
        end
        object TabSheet5: TTabSheet
          Caption = #1581#1587#1575#1576' '#1576#1575#1606#1705#1740
          ImageIndex = 4
          ExplicitWidth = 492
          DesignSize = (
            528
            188)
          object Label50: TLabel
            Left = 447
            Top = 107
            Width = 68
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1588' '#1581#1587#1575#1576' '#1588#1576#1575
            FocusControl = edtCustAccountNumber
            ExplicitLeft = 411
          end
          object Label1: TLabel
            Left = 411
            Top = 7
            Width = 64
            Height = 13
            Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
            FocusControl = edtAccountNumber
          end
          object Label33: TLabel
            Left = 411
            Top = 32
            Width = 41
            Height = 13
            Caption = #1603#1583' '#1588#1593#1576#1607
            FocusControl = edtBankId
          end
          object Label40: TLabel
            Left = 411
            Top = 57
            Width = 43
            Height = 13
            Caption = #1606#1575#1605' '#1588#1593#1576#1607
            FocusControl = edtBankName
          end
          object Label41: TLabel
            Left = 411
            Top = 82
            Width = 46
            Height = 13
            Alignment = taRightJustify
            Caption = #1608#1575#1581#1583' '#1662#1608#1604#1610
            FocusControl = DBEdit6
          end
          object Label46: TLabel
            Left = 276
            Top = 130
            Width = 242
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1588#1606#1575#1587#1607' '#1576#1575#1606#1705' '#1591#1576#1602' '#1580#1583#1608#1604' '#1591#1585#1581' '#1662#1585#1583#1575#1582#1578' '#1607#1605#1575#1607#1606#1711' '#1602#1576#1608#1590
            FocusControl = edtBankIDc
            WordWrap = True
            ExplicitLeft = 240
          end
          object edtCustAccountNumber: TDBEdit
            Left = 196
            Top = 103
            Width = 245
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'CustAccountNumber'
            DataSource = srcCustomers
            TabOrder = 4
            ExplicitLeft = 160
          end
          object edtAccountNumber: TDBEdit
            Left = 160
            Top = 3
            Width = 245
            Height = 21
            DataField = 'AccountNumber'
            DataSource = srcCustomers
            TabOrder = 0
          end
          object edtBankId: TDBEdit
            Left = 160
            Top = 28
            Width = 245
            Height = 21
            DataField = 'BankId'
            DataSource = srcCustomers
            TabOrder = 1
          end
          object edtBankName: TDBEdit
            Left = 160
            Top = 53
            Width = 245
            Height = 21
            DataField = 'BankName'
            DataSource = srcCustomers
            TabOrder = 2
          end
          object dblkcbb_AccountKind: TDBLookupComboBox
            Left = 160
            Top = 78
            Width = 245
            Height = 21
            DataField = '_AccountKind'
            DataSource = srcCustomers
            TabOrder = 3
          end
          object edtBankIDc: TDBEdit
            Left = 196
            Top = 127
            Width = 76
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'BankIDc'
            DataSource = srcCustomers
            TabOrder = 5
            ExplicitLeft = 160
          end
        end
        object tsOtherCustomer: TTabSheet
          Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1587#1575#1740#1585' '#1711#1585#1608#1607#1607#1575#1740' '#1605#1588#1578#1585#1740
          ImageIndex = 5
          ExplicitWidth = 492
          object GroupBox3: TGroupBox
            Left = 0
            Top = 0
            Width = 528
            Height = 188
            Align = alClient
            Caption = #1711#1585#1608#1607#1607#1575#1740' '#1605#1588#1578#1585#1740
            TabOrder = 0
            ExplicitWidth = 492
            object chklstOtherGroup: TCheckListBox
              Left = 2
              Top = 15
              Width = 524
              Height = 171
              Align = alClient
              Color = clCream
              Columns = 2
              ItemHeight = 13
              TabOrder = 0
              OnClick = chklstOtherGroupClick
              OnDblClick = chklstOtherGroupClick
              ExplicitWidth = 488
            end
          end
        end
        object TabSheet6: TTabSheet
          Caption = #1608#1575#1587#1591' '#1601#1585#1608#1588
          ImageIndex = 6
          ExplicitWidth = 492
          DesignSize = (
            528
            188)
          object dbtxt_PersonID1: TDBText
            Left = 134
            Top = 6
            Width = 199
            Height = 16
            Anchors = [akTop, akRight]
            Color = 13948116
            DataField = '_PersonID1'
            DataSource = srcCustomers
            ParentColor = False
            Transparent = True
            ExplicitLeft = 98
          end
          object SpeedButton3: TSpeedButton
            Left = 339
            Top = 3
            Width = 23
            Height = 22
            Hint = 'PersonID1'
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton3Click
            ExplicitLeft = 303
          end
          object Label10: TLabel
            Left = 434
            Top = 7
            Width = 91
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1608#1575#1587#1591' '#1575#1589#1604#1610' '#1601#1585#1608#1588' '
            ExplicitLeft = 398
          end
          object edtPersonID1: TDBEdit
            Left = 365
            Top = 3
            Width = 70
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'PersonID1'
            DataSource = srcCustomers
            TabOrder = 0
            OnKeyDown = DBEdit15KeyDown
            ExplicitLeft = 329
          end
          object GroupBox4: TGroupBox
            Left = 0
            Top = 26
            Width = 528
            Height = 162
            Align = alBottom
            Anchors = [akLeft, akTop, akRight, akBottom]
            Caption = ' '#1587#1575#1610#1585' '#1608#1575#1587#1591' '#1607#1575' '
            TabOrder = 1
            ExplicitWidth = 492
            object dbgrdCustomersBroker: TDBGrid
              Tag = 111
              Left = 2
              Top = 15
              Width = 524
              Height = 120
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
                  FieldName = 'PersonID1'
                  Width = 107
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = '_PersonID1'
                  Width = 246
                  Visible = True
                end>
            end
            object DBNavigator1: TDBNavigator
              Left = 2
              Top = 135
              Width = 524
              Height = 25
              DataSource = dsCustomersBroker
              Align = alBottom
              TabOrder = 1
              ExplicitWidth = 488
            end
          end
        end
      end
      object DBEdit26: TDBEdit
        Left = 14
        Top = 130
        Width = 134
        Height = 21
        DataField = 'NationalID'
        DataSource = srcCustomers
        TabOrder = 11
      end
      object DBEdit14: TDBEdit
        Left = 14
        Top = 267
        Width = 134
        Height = 21
        DataField = 'ContactRate'
        DataSource = srcCustomers
        TabOrder = 21
      end
      object DBEdit27: TDBEdit
        Left = 14
        Top = 80
        Width = 134
        Height = 21
        DataField = 'Mobile'
        DataSource = srcCustomers
        TabOrder = 7
      end
      object DBEdit28: TDBEdit
        Left = 14
        Top = 105
        Width = 134
        Height = 21
        DataField = 'CustomersRow'
        DataSource = srcCustomers
        TabOrder = 9
      end
      object edtTechnicalCode: TDBEdit
        Left = 232
        Top = 293
        Width = 182
        Height = 21
        DataField = 'TechnicalCode'
        DataSource = srcCustomers
        TabOrder = 22
        Visible = False
      end
      object edtCustFirstName: TDBEdit
        Left = 14
        Top = 32
        Width = 134
        Height = 21
        DataField = 'CustFirstName'
        DataSource = srcCustomers
        TabOrder = 3
      end
      inline frPelakF1: TfrPelakF
        Left = 224
        Top = 314
        Width = 191
        Height = 29
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 24
        ExplicitLeft = 224
        ExplicitTop = 314
      end
      object edtCustName_L2: TDBEdit
        Left = 14
        Top = 317
        Width = 134
        Height = 21
        BiDiMode = bdLeftToRight
        DataField = 'CustName_L2'
        DataSource = srcCustomers
        ParentBiDiMode = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 25
      end
      object edtTelegramChatID: TDBEdit
        Left = 14
        Top = 293
        Width = 134
        Height = 21
        DataField = 'TelegramChatID'
        DataSource = srcCustomers
        TabOrder = 23
      end
      object cmbCarType: TDBComboBox
        Left = 232
        Top = 341
        Width = 182
        Height = 21
        DataField = 'CarType'
        DataSource = srcCustomers
        TabOrder = 26
      end
      object edtCitizenCode: TDBEdit
        Left = 14
        Top = 341
        Width = 134
        Height = 21
        DataField = 'CitizenCode'
        DataSource = srcCustomers
        TabOrder = 29
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 284
        Top = 161
        Width = 130
        Height = 21
        DataField = '_Ostan'
        DataSource = srcCustomers
        TabOrder = 12
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 14
        Top = 161
        Width = 134
        Height = 21
        DataField = '_Shahr'
        DataSource = srcCustomers
        TabOrder = 13
      end
      object edtBaleChatID: TDBEdit
        Left = 14
        Top = 56
        Width = 134
        Height = 21
        DataField = 'BaleChatID'
        DataSource = srcCustomers
        TabOrder = 5
      end
    end
  end
  inherited ActionList: TActionList
    Left = 200
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
    inherited actSmsSend: TAction
      OnExecute = actSmsSendExecute
    end
    object actPrint: TAction
      Caption = #1670#1600#1600#1600#1575#1662'(F7)'
      Hint = ' '
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actSendExel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendExelExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actViewFile: TAction
      Tag = -2
      Caption = #1662#1610#1608#1587#1578' '#1608' '#1575#1587#1603#1606' ...'
      OnExecute = actViewFileExecute
    end
    object actChangeCustID: TAction
      Caption = 'actChangeCustID'
      OnExecute = actChangeCustIDExecute
    end
    object actGetExel: TAction
      Caption = #1582#1608#1575#1606#1583#1606' Excel'
      OnExecute = actGetExelExecute
    end
    object actCustomersInterView: TAction
      Caption = #1579#1576#1578' '#1605#1584#1575#1603#1585#1575#1578' '#1576#1575' '#1605#1588#1578#1585#1610
      OnExecute = actCustomersInterViewExecute
    end
    object actInfoSMSF: TAction
      Caption = 'Info SMS'
      OnExecute = actInfoSMSFExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 296
    Top = 9
  end
  object srcCustomers: TDataSource
    DataSet = qryCustomers
    OnStateChange = srcCustomersStateChange
    Left = 563
    Top = 257
  end
  object zbal: TzAPIBalloon
    AutoCloseMode = acAutoCalc
    Prompt.Strings = (
      'FINANCES Ltd'
      'TzAPIBalloon ver. 1')
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 368
    Top = 16
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
    Parameters = <
      item
        Name = 'GroupType'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'CustomerGrpIDForm'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'CustomerGrpIDTO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT     *, LEFT(TechnicalCode, 2) AS Pelak1, SUBSTRING(Techni' +
        'calCode, 4, 1) AS Pelak2'
      
        ', SUBSTRING(TechnicalCode, 6, 3) AS Pelak3, RIGHT(TechnicalCode,' +
        ' 2) AS Pelak4'
      'FROM         Customers'
      
        'WHERE     (CustomerGrpID in (SELECT CustomerGrpID FROM Customers' +
        'Group WHERE GroupType = :GroupType'
      
        'and (CustomerGrpID between :CustomerGrpIDForm and :CustomerGrpID' +
        'TO) ))'
      'and(CustID<>0)'
      'ORDER BY CustID')
    Left = 585
    Top = 200
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
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryCustomersMaxCredit: TFMTBCDField
      Tag = 3
      DisplayLabel = #1587#1602#1601' '#1575#1593#1578#1576#1575#1585
      FieldName = 'MaxCredit'
      currency = True
      Precision = 38
    end
    object qryCustomersServiceCalcType: TWordField
      Tag = 3
      DisplayLabel = #1606#1581#1608#1607' '#1605#1581#1575#1587#1576#1607' '#1582#1583#1605#1575#1578
      FieldName = 'ServiceCalcType'
      OnChange = qryCustomersServiceCalcTypeChange
      OnGetText = ALLGetText
      OnSetText = ALLSetText
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
      DisplayLabel = #1603#1583#1605#1604#1610
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
      Size = 100
      Lookup = True
    end
    object qryCustomers__CTopicCodeName2: TStringField
      FieldKind = fkLookup
      FieldName = '__CTopicCodeName2'
      LookupDataSet = DmF.qryAccCenterTopics2
      LookupKeyFields = 'CTopicCode2'
      LookupResultField = 'CTopicName2'
      KeyFields = 'acc_CTopicCode2'
      Size = 100
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
    object qryCustomersMobile: TStringField
      Tag = 3
      DisplayLabel = #1578#1604#1601#1606' '#1607#1605#1585#1575#1607
      FieldName = 'Mobile'
    end
    object qryCustomersCustomersRow: TIntegerField
      Tag = 3
      DisplayLabel = #1585#1583#1610#1601' '#1605#1588#1578#1585#1610
      FieldName = 'CustomersRow'
    end
    object qryCustomersCustomerActive: TWordField
      FieldName = 'CustomerActive'
    end
    object qryCustomersacc_TopicCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576
      FieldName = 'acc_TopicCode'
    end
    object qryCustomersTechnicalCode: TStringField
      FieldName = 'TechnicalCode'
      Size = 30
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
    object qryCustomersCustFirstName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605
      FieldName = 'CustFirstName'
      Size = 30
    end
    object qryCustomersCustAccountNumber: TStringField
      FieldName = 'CustAccountNumber'
      Size = 60
    end
    object qryCustomersBankId: TFloatField
      DisplayLabel = #1603#1583' '#1588#1593#1576#1607
      FieldName = 'BankId'
    end
    object qryCustomersBankName: TStringField
      DisplayLabel = #1606#1575#1605' '#1588#1593#1576#1607
      FieldName = 'BankName'
      Size = 60
    end
    object qryCustomersAccountNumber: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
      FieldName = 'AccountNumber'
      FixedChar = True
      Size = 25
    end
    object qryCustomersBankReports: TStringField
      FieldName = 'BankReports'
      Size = 250
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
    object qryCustomersAlternativeCustID: TLargeintField
      FieldName = 'AlternativeCustID'
    end
    object qryCustomersAlternativeCustID2: TLargeintField
      FieldName = 'AlternativeCustID2'
    end
    object qryCustomersPelak1: TStringField
      FieldName = 'Pelak1'
      ReadOnly = True
      Size = 2
    end
    object qryCustomersPelak2: TStringField
      FieldName = 'Pelak2'
      ReadOnly = True
      Size = 1
    end
    object qryCustomersPelak3: TStringField
      FieldName = 'Pelak3'
      ReadOnly = True
      Size = 3
    end
    object qryCustomersPelak4: TStringField
      FieldName = 'Pelak4'
      ReadOnly = True
      Size = 2
    end
    object qryCustomersTelegramChatID: TStringField
      DisplayLabel = 'Telegram Chat ID'
      FieldName = 'TelegramChatID'
      FixedChar = True
      Size = 30
    end
    object qryCustomersPostControl: TWordField
      FieldName = 'PostControl'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
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
    object qryCustomersBankIDc: TStringField
      FieldName = 'BankIDc'
      FixedChar = True
      Size = 3
    end
    object qryCustomersCarType: TStringField
      FieldName = 'CarType'
      Size = 30
    end
    object qryCustomersCitizenCode: TStringField
      Tag = 3
      DisplayLabel = #1705#1583' '#1605#1604#1740' '#1575#1578#1576#1575#1593
      FieldName = 'CitizenCode'
    end
    object qryCustomersEditDateTime: TDateTimeField
      FieldName = 'EditDateTime'
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
    Left = 632
    Top = 295
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
    Left = 704
    Top = 287
  end
  object PopMPrint: TPopupMenu
    AutoHotkeys = maManual
    Left = 655
    Top = 360
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
    Left = 571
    Top = 604
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
    Left = 706
    Top = 217
    object Mnu_AllClick: TMenuItem
      Caption = #1578#1594#1610#1610#1585' '#1711#1585#1608#1607' '#1605#1588#1578#1585#1610' '#1580#1575#1585#1610
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
      Caption = #1578#1594#1610#1610#1585' '#1603#1583' '#1605#1588#1578#1585#1610' '
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object N6: TMenuItem
      Action = actViewFile
    end
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
    Left = 112
    Top = 520
    object qryCustomersOtherGroupsCustID: TIntegerField
      FieldName = 'CustID'
    end
    object qryCustomersOtherGroupsCustomerGrpID: TIntegerField
      FieldName = 'CustomerGrpID'
    end
  end
  object qryLookUpCust: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT CustID,CustName FROM Customers')
    Left = 915
    Top = 431
  end
  object qryCustomersBroker: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeInsert = qryCustomersBrokerBeforeInsert
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
      'WHERE     (PersonID2 = :CustID )')
    Left = 678
    Top = 557
    object qryCustomersBrokerPersonID2: TIntegerField
      DisplayLabel = #1603#1583'2'
      FieldName = 'PersonID2'
    end
    object qryCustomersBrokerPersonID1: TIntegerField
      DisplayLabel = #1603#1583'1'
      FieldName = 'PersonID1'
    end
    object qryCustomersBroker_PersonID1: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldKind = fkLookup
      FieldName = '_PersonID1'
      LookupDataSet = qryLookUpCust
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'PersonID1'
      ReadOnly = True
      Required = True
      Size = 200
      Lookup = True
    end
  end
  object dsCustomersBroker: TDataSource
    DataSet = qryCustomersBroker
    Left = 664
    Top = 471
  end
end

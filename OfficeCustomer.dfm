inherited OfficeCustomerF: TOfficeCustomerF
  Left = 318
  Top = 113
  ActiveControl = cmbGroups
  Caption = #1605#1593#1585#1601#1610' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
  ClientHeight = 556
  ClientWidth = 838
  ExplicitWidth = 846
  ExplicitHeight = 587
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 515
    Width = 838
    TabOrder = 1
    ExplicitTop = 515
    ExplicitWidth = 838
    object newPanel: TPanel [0]
      Left = 522
      Top = 1
      Width = 315
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        315
        39)
      object BitBtn3: TBitBtn
        Left = 237
        Top = 8
        Width = 77
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 159
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        Left = 82
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetDelete1_
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        TabOrder = 2
      end
      object btnGetExel: TBitBtn
        Left = 4
        Top = 8
        Width = 75
        Height = 25
        Action = actGetExel
        Anchors = [akTop, akRight]
        Caption = #1582#1608#1575#1606#1583#1606' Excel'
        TabOrder = 3
      end
    end
    object okPanel: TPanel [1]
      Left = 364
      Top = 1
      Width = 158
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        158
        39)
      object BitBtn7: TBitBtn
        Left = 81
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
        Left = 3
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
    object DBNavigator1: TDBNavigator [2]
      AlignWithMargins = True
      Left = 469
      Top = 4
      Width = 80
      Height = 33
      Margins.Left = 6
      Margins.Right = 6
      DataSource = srcOther
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alLeft
      Flat = True
      TabOrder = 7
    end
    inherited BtnReject: TBitBtn
      Left = 2
      Margins.Left = 1
      Margins.Right = 1
      TabOrder = 6
      ExplicitLeft = 2
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
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Exel'
      TabOrder = 3
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 156
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
      TabOrder = 4
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
      Caption = #1670#1575#1662
      TabOrder = 5
    end
    object BitBtn9: TBitBtn
      AlignWithMargins = True
      Left = 79
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
      OnClick = BitBtn9Click
    end
    object BitBtn15: TBitBtn
      AlignWithMargins = True
      Left = 387
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Align = alLeft
      Caption = #1575#1591#1604#1575#1593#1575#1578' '#1605#1575#1604#1610#1575#1578
      TabOrder = 8
      OnClick = BitBtn15Click
    end
  end
  inherited Panel2: TPanel
    Width = 838
    TabOrder = 2
    ExplicitWidth = 838
    DesignSize = (
      838
      53)
    inherited ImgTemplate: TImage
      Left = 833
      ExplicitLeft = 833
    end
    inherited lblCaption: TLabel
      Left = 730
      ExplicitLeft = 730
    end
    object dbchkCustomerActive: TDBCheckBox
      Left = 11
      Top = 11
      Width = 62
      Height = 17
      Alignment = taLeftJustify
      Caption = #1594#1610#1585' '#1601#1593#1575#1604
      DataField = 'CustomerActive'
      DataSource = srcOther
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
      DataSource = srcOther
      ParentBiDiMode = False
      TabOrder = 1
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
  end
  inherited Panel3: TPanel
    Width = 838
    Height = 462
    TabOrder = 0
    ExplicitWidth = 838
    ExplicitHeight = 462
    object Panel1: TPanel
      Left = 464
      Top = 2
      Width = 372
      Height = 458
      Align = alRight
      Anchors = [akLeft, akTop, akRight, akBottom]
      BorderWidth = 5
      BorderStyle = bsSingle
      TabOrder = 0
      object GroupBox1: TGroupBox
        Left = 6
        Top = 6
        Width = 356
        Height = 66
        Align = alTop
        Caption = '   '#1575#1606#1578#1582#1575#1576' '#1711#1585#1608#1607' '#1576#1606#1583#1610'  '
        TabOrder = 1
        DesignSize = (
          356
          66)
        object SpeedButton1: TSpeedButton
          Left = 6
          Top = 11
          Width = 23
          Height = 22
          Caption = '...'
          OnClick = SpeedButton1Click
        end
        object btnSelect: TSpeedButton
          Left = 33
          Top = 11
          Width = 23
          Height = 22
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
        end
        object cmbGroups: TComboBox
          AlignWithMargins = True
          Left = 5
          Top = 40
          Width = 346
          Height = 21
          Align = alBottom
          Style = csDropDownList
          Color = 14024703
          TabOrder = 0
          OnChange = cmbGroupsChange
          OnEnter = cmbGroupsEnter
        end
        object chkAllCusts: TCheckBox
          Left = 248
          Top = 16
          Width = 90
          Height = 17
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeftNoAlign
          Caption = #1575#1606#1578#1582#1575#1576' '#1607#1605#1607' '
          ParentBiDiMode = False
          TabOrder = 1
          OnClick = chkAllCustsClick
        end
      end
      object DBGrid1: TCedarDbgrid
        Left = 6
        Top = 72
        Width = 356
        Height = 376
        Align = alClient
        Color = clCream
        DataSource = srcOther
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
            Width = 59
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CustName'
            Footers = <>
            Title.TitleButton = True
            Width = 59
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NationalID'
            Footers = <>
            Title.TitleButton = True
            Width = 59
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CitizenCode'
            Footers = <>
            Title.TitleButton = True
            Width = 59
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 2
      Width = 462
      Height = 458
      Align = alClient
      BevelInner = bvLowered
      BevelOuter = bvLowered
      BorderWidth = 3
      BorderStyle = bsSingle
      TabOrder = 1
      DesignSize = (
        458
        454)
      object lblCustID: TLabel
        Left = 388
        Top = 15
        Width = 11
        Height = 13
        Alignment = taRightJustify
        Caption = #1603#1583
        FocusControl = DBEdit1
      end
      object lblCustName: TLabel
        Left = 388
        Top = 41
        Width = 46
        Height = 13
        Alignment = taRightJustify
        Caption = #1605#1588#1582#1589#1575#1578
        FocusControl = DBEdit2
      end
      object Label17: TLabel
        Left = 388
        Top = 116
        Width = 40
        Height = 13
        Caption = #1578#1608#1590#1610#1581#1575#1578
      end
      object lblNationalID: TLabel
        Left = 388
        Top = 69
        Width = 35
        Height = 13
        Alignment = taRightJustify
        Caption = #1603#1583' '#1605#1604#1610
        FocusControl = edtNationalID
      end
      object lblMax4WaterCo: TLabel
        Left = 119
        Top = 70
        Width = 90
        Height = 13
        Caption = #1587#1602#1601' '#1583#1585#1589#1583' '#1578#1582#1601#1610#1601' '
        FocusControl = edtMax4WaterCo
      end
      object lblMobile: TLabel
        Left = 388
        Top = 168
        Width = 52
        Height = 13
        Alignment = taRightJustify
        Caption = #1578#1604#1601#1606' '#1607#1605#1585#1575#1607
      end
      object lblCitizenCode: TLabel
        Left = 388
        Top = 93
        Width = 58
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1705#1583' '#1605#1604#1740' '#1575#1578#1576#1575#1593
      end
      object DBEdit1: TDBEdit
        Left = 306
        Top = 11
        Width = 78
        Height = 21
        DataField = 'CustID'
        DataSource = srcOther
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 9
        Top = 37
        Width = 375
        Height = 21
        DataField = 'CustName'
        DataSource = srcOther
        TabOrder = 1
      end
      object DBMemo2: TDBMemo
        Left = 9
        Top = 113
        Width = 375
        Height = 49
        DataField = 'CustomerNote'
        DataSource = srcOther
        TabOrder = 4
      end
      object edtNationalID: TDBEdit
        Left = 235
        Top = 66
        Width = 149
        Height = 21
        DataField = 'NationalID'
        DataSource = srcOther
        TabOrder = 2
      end
      object PageControl1: TPageControl
        Left = 5
        Top = 190
        Width = 448
        Height = 259
        ActivePage = TabOperation
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 6
        object TabAcc: TTabSheet
          Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1583#1575#1585#1610
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 440
            Height = 231
            Align = alClient
            BevelInner = bvLowered
            BevelOuter = bvLowered
            TabOrder = 0
            DesignSize = (
              440
              231)
            object Label4: TLabel
              Left = 2
              Top = 2
              Width = 436
              Height = 13
              Align = alTop
              Alignment = taCenter
              Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1583#1575#1585#1610
              Color = clWindow
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = True
              ExplicitWidth = 84
            end
            object Label11: TLabel
              Left = 316
              Top = 61
              Width = 51
              Height = 13
              Alignment = taRightJustify
              Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610
            end
            object SpeedButton2: TSpeedButton
              Left = 217
              Top = 56
              Width = 23
              Height = 22
              Caption = '...'
              OnClick = SpeedButton2Click
            end
            object DBText1: TDBText
              Left = 8
              Top = 60
              Width = 208
              Height = 16
              Anchors = [akTop, akRight]
              Color = 13948116
              DataField = '__DetailCode'
              DataSource = srcOther
              ParentColor = False
              Transparent = True
            end
            object Label22: TLabel
              Left = 316
              Top = 91
              Width = 57
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'
              FocusControl = DBEdit18
            end
            object SpeedButton5: TSpeedButton
              Left = 217
              Top = 86
              Width = 23
              Height = 22
              Anchors = [akTop, akRight]
              Caption = '...'
              OnClick = SpeedButton5Click
            end
            object DBText5: TDBText
              Left = 8
              Top = 89
              Width = 208
              Height = 16
              Anchors = [akTop, akRight]
              Color = 13948116
              DataField = '__CTopicCodeName'
              DataSource = srcOther
              ParentColor = False
              Transparent = True
            end
            object Label24: TLabel
              Left = 316
              Top = 120
              Width = 57
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'3'
              FocusControl = DBEdit19
            end
            object SpeedButton6: TSpeedButton
              Left = 217
              Top = 115
              Width = 23
              Height = 22
              Anchors = [akTop, akRight]
              Caption = '...'
              OnClick = SpeedButton6Click
            end
            object DBText6: TDBText
              Left = 8
              Top = 118
              Width = 208
              Height = 16
              Anchors = [akTop, akRight]
              Color = 13948116
              DataField = '__CTopicCodeName2'
              DataSource = srcOther
              ParentColor = False
              Transparent = True
            end
            object Label48: TLabel
              Left = 316
              Top = 149
              Width = 57
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'4'
              FocusControl = DBEdit29
            end
            object SpeedButton10: TSpeedButton
              Left = 217
              Top = 144
              Width = 23
              Height = 22
              Anchors = [akTop, akRight]
              Caption = '...'
              OnClick = SpeedButton10Click
            end
            object DBText7: TDBText
              Left = 8
              Top = 148
              Width = 208
              Height = 16
              Anchors = [akLeft, akTop, akRight]
              Color = 13948116
              DataField = '__CTopicCodeName3'
              DataSource = srcOther
              ParentColor = False
              Transparent = True
            end
            object Label49: TLabel
              Left = 316
              Top = 32
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
            end
            object SpeedButton11: TSpeedButton
              Left = 217
              Top = 27
              Width = 23
              Height = 22
              Anchors = [akTop, akRight]
              Caption = '...'
              OnClick = SpeedButton11Click
            end
            object DBText8: TDBText
              Left = 8
              Top = 30
              Width = 208
              Height = 16
              Anchors = [akLeft, akTop, akRight]
              Color = 13948116
              DataField = '__TopicCodeName'
              DataSource = srcOther
              ParentColor = False
              Transparent = True
            end
            object DBEdit15: TDBEdit
              Left = 242
              Top = 57
              Width = 70
              Height = 21
              DataField = 'acc_DetailCode'
              DataSource = srcOther
              TabOrder = 0
              OnKeyDown = DBEdit15KeyDown
            end
            object DBEdit18: TDBEdit
              Left = 242
              Top = 87
              Width = 70
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'acc_CTopicCode'
              DataSource = srcOther
              TabOrder = 1
            end
            object DBEdit19: TDBEdit
              Left = 242
              Top = 116
              Width = 70
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'acc_CTopicCode2'
              DataSource = srcOther
              TabOrder = 2
            end
            object DBEdit29: TDBEdit
              Left = 242
              Top = 145
              Width = 70
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'acc_CTopicCode3'
              DataSource = srcOther
              TabOrder = 3
            end
            object DBEdit30: TDBEdit
              Left = 242
              Top = 28
              Width = 70
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'acc_TopicCode'
              DataSource = srcOther
              TabOrder = 4
            end
          end
        end
        object TabBudget: TTabSheet
          Caption = #1576#1608#1583#1580#1607
          ImageIndex = 1
          DesignSize = (
            440
            231)
          object DBText4: TDBText
            Left = 16
            Top = 24
            Width = 208
            Height = 16
            Anchors = [akTop, akRight]
            Color = 13948116
            DataField = '_PersonID1'
            DataSource = srcOther
            ParentColor = False
            Transparent = True
          end
          object SpeedButton7: TSpeedButton
            Left = 226
            Top = 21
            Width = 23
            Height = 22
            Hint = 'PersonID1'
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton7Click
          end
          object Label16: TLabel
            Left = 325
            Top = 25
            Width = 65
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
          end
          object DBText3: TDBText
            Left = 16
            Top = 188
            Width = 208
            Height = 16
            Anchors = [akRight, akBottom]
            Color = 13948116
            DataField = '_ProjectName'
            DataSource = srcOther
            ParentColor = False
            Transparent = True
            ExplicitTop = 116
          end
          object SpeedButton4: TSpeedButton
            Left = 226
            Top = 185
            Width = 23
            Height = 22
            Anchors = [akRight, akBottom]
            Caption = '...'
            OnClick = SpeedButton4Click
            ExplicitTop = 113
          end
          object Label9: TLabel
            Left = 325
            Top = 190
            Width = 66
            Height = 13
            Alignment = taRightJustify
            Anchors = [akRight, akBottom]
            Caption = #1603#1583' '#1591#1585#1581' '#1608' '#1662#1585#1608#1688#1607
            FocusControl = DBEdit8
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitTop = 118
          end
          object DBText2: TDBText
            Left = 16
            Top = 161
            Width = 208
            Height = 16
            Anchors = [akRight, akBottom]
            Color = 13948116
            DataField = '_BudgetName'
            DataSource = srcOther
            ParentColor = False
            Transparent = True
            ExplicitTop = 89
          end
          object SpeedButton3: TSpeedButton
            Left = 226
            Top = 158
            Width = 23
            Height = 22
            Anchors = [akRight, akBottom]
            Caption = '...'
            OnClick = SpeedButton3Click
            ExplicitTop = 86
          end
          object Label8: TLabel
            Left = 325
            Top = 162
            Width = 40
            Height = 13
            Alignment = taRightJustify
            Anchors = [akRight, akBottom]
            Caption = #1603#1583' '#1576#1608#1583#1580#1607
            FocusControl = DBEdit5
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitTop = 90
          end
          object DBEdit9: TDBEdit
            Left = 248
            Top = 21
            Width = 71
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'PersonID1'
            DataSource = srcOther
            TabOrder = 0
            OnKeyDown = DBEdit9KeyDown
          end
          object DBEdit8: TDBEdit
            Left = 250
            Top = 186
            Width = 71
            Height = 21
            Anchors = [akRight, akBottom]
            DataField = 'ProjectID'
            DataSource = srcOther
            TabOrder = 1
          end
          object DBEdit5: TDBEdit
            Left = 250
            Top = 158
            Width = 71
            Height = 21
            Anchors = [akRight, akBottom]
            DataField = 'BudgetID'
            DataSource = srcOther
            TabOrder = 2
          end
        end
        object TabOperation: TTabSheet
          Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575'  '#1603#1575#1585#1576#1585#1575#1606' ('#1606#1575#1605' '#1603#1575#1585#1576#1585' '#1605#1580#1575#1586')'
          ImageIndex = 2
          object Label13: TLabel
            Left = 0
            Top = 0
            Width = 440
            Height = 13
            Align = alTop
            Alignment = taCenter
            Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575'  '#1603#1575#1585#1576#1585#1575#1606' '
            Color = clMenuHighlight
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
            ExplicitWidth = 72
          end
          object chklstOperator: TCheckListBox
            Left = 0
            Top = 13
            Width = 440
            Height = 184
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ItemHeight = 13
            ParentFont = False
            TabOrder = 0
            OnClick = chklstOperatorClick
          end
          object TPanel
            AlignWithMargins = True
            Left = 3
            Top = 200
            Width = 434
            Height = 28
            Align = alBottom
            TabOrder = 1
            object BitBtn10: TBitBtn
              Left = 246
              Top = 1
              Width = 187
              Height = 26
              Action = actSetOprator2All
              Align = alRight
              Caption = #1578#1593#1605#1740#1605' '#1705#1575#1585#1576#1585' '#1580#1575#1585#1740' '#1576#1607' '#1607#1605#1607' '#1587#1591#1585#1607#1575
              TabOrder = 0
            end
            object BitBtn11: TBitBtn
              Left = 18
              Top = 1
              Width = 228
              Height = 26
              Action = actSetAllOprator2AllRow
              Align = alRight
              Caption = #1578#1593#1605#1740#1605' '#1575#1585#1578#1576#1575#1591' '#1576#1575' '#1705#1575#1585#1576#1585#1575#1606' '#1580#1575#1585#1740' '#1576#1607' '#1607#1605#1607' '#1587#1591#1585#1607#1575
              TabOrder = 1
            end
          end
        end
        object tsOtherCustomers: TTabSheet
          Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1587#1575#1740#1585' '#1711#1585#1608#1607#1607#1575#1740' '#1605#1588#1578#1585#1740
          ImageIndex = 3
          object GroupBox3: TGroupBox
            Left = 0
            Top = 0
            Width = 440
            Height = 231
            Align = alClient
            Caption = #1711#1585#1608#1607#1607#1575#1740' '#1605#1588#1578#1585#1740
            TabOrder = 0
            object chklstOtherGroup: TCheckListBox
              Left = 2
              Top = 15
              Width = 436
              Height = 214
              Align = alClient
              Color = clCream
              Columns = 2
              ItemHeight = 13
              TabOrder = 0
              OnClick = chklstOtherGroupClick
            end
          end
        end
        object tsBank: TTabSheet
          Caption = #1581#1587#1575#1576' '#1576#1575#1606#1705#1740
          ImageIndex = 4
          DesignSize = (
            440
            231)
          object Label3: TLabel
            Left = 325
            Top = 111
            Width = 68
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1588' '#1581#1587#1575#1576' '#1588#1576#1575
            FocusControl = edtCustAccountNumber
          end
          object Label2: TLabel
            Left = 325
            Top = 20
            Width = 64
            Height = 13
            Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
            FocusControl = edtAccountNumber
          end
          object Label5: TLabel
            Left = 325
            Top = 50
            Width = 41
            Height = 13
            Caption = #1603#1583' '#1588#1593#1576#1607
            FocusControl = edtBankId
          end
          object Label6: TLabel
            Left = 325
            Top = 81
            Width = 43
            Height = 13
            Caption = #1606#1575#1605' '#1588#1593#1576#1607
            FocusControl = edtBankName
          end
          object Label7: TLabel
            Left = 325
            Top = 135
            Width = 47
            Height = 26
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Caption = 'Telegram Chat ID'
            FocusControl = edtTelegramChatID
            ParentBiDiMode = False
            WordWrap = True
          end
          object Label10: TLabel
            Left = 325
            Top = 172
            Width = 89
            Height = 13
            Alignment = taRightJustify
            BiDiMode = bdLeftToRight
            Caption = #1705#1583' '#1605#1588#1578#1585#1740' '#1580#1575#1740#1711#1586#1740#1606
            FocusControl = edtAlternativeCustID
            ParentBiDiMode = False
          end
          object edtCustAccountNumber: TDBEdit
            Left = 110
            Top = 107
            Width = 209
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'CustAccountNumber'
            DataSource = srcOther
            TabOrder = 0
          end
          object edtAccountNumber: TDBEdit
            Left = 110
            Top = 16
            Width = 209
            Height = 21
            DataField = 'AccountNumber'
            DataSource = srcOther
            TabOrder = 1
          end
          object edtBankId: TDBEdit
            Left = 110
            Top = 46
            Width = 209
            Height = 21
            DataField = 'BankId'
            DataSource = srcOther
            TabOrder = 2
          end
          object edtBankName: TDBEdit
            Left = 110
            Top = 77
            Width = 209
            Height = 21
            DataField = 'BankName'
            DataSource = srcOther
            TabOrder = 3
          end
          object edtTelegramChatID: TDBEdit
            Left = 110
            Top = 137
            Width = 211
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'TelegramChatID'
            DataSource = srcOther
            TabOrder = 4
          end
          object edtAlternativeCustID: TDBEdit
            Left = 110
            Top = 168
            Width = 211
            Height = 21
            DataField = 'AlternativeCustID'
            DataSource = srcOther
            TabOrder = 5
          end
        end
      end
      object edtMax4WaterCo: TDBEdit
        Left = 9
        Top = 66
        Width = 99
        Height = 21
        DataField = 'Max4WaterCo'
        DataSource = srcOther
        TabOrder = 3
      end
      object dbchkSupervisorAllocation: TDBCheckBox
        Left = 9
        Top = 165
        Width = 128
        Height = 17
        Alignment = taLeftJustify
        Caption = #1578#1582#1589#1740#1589' '#1581#1602' '#1587#1585#1662#1585#1587#1578
        DataField = 'SupervisorAllocation'
        DataSource = srcOther
        TabOrder = 7
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object edtMobile: TDBEdit
        Left = 235
        Top = 165
        Width = 149
        Height = 21
        DataField = 'Mobile'
        DataSource = srcOther
        TabOrder = 5
      end
      object edtCitizenCode: TDBEdit
        Left = 235
        Top = 89
        Width = 149
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'CitizenCode'
        DataSource = srcOther
        TabOrder = 8
      end
    end
  end
  inherited ActionList: TActionList
    Left = 456
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actSendExel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Exel'
      OnExecute = actSendExelExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actGetExel: TAction
      Caption = #1582#1608#1575#1606#1583#1606' Excel'
      OnExecute = actGetExelExecute
    end
    object actChangeCustID: TAction
      Caption = 'actChangeCustID'
      OnExecute = actChangeCustIDExecute
    end
    object actSetOprator2All: TAction
      Caption = #1578#1593#1605#1740#1605' '#1705#1575#1585#1576#1585' '#1580#1575#1585#1740' '#1576#1607' '#1607#1605#1607' '#1587#1591#1585#1607#1575
      OnExecute = actSetOprator2AllExecute
    end
    object actSetAllOprator2AllRow: TAction
      Caption = #1578#1593#1605#1740#1605' '#1575#1585#1578#1576#1575#1591' '#1576#1575' '#1705#1575#1585#1576#1585#1575#1606' '#1580#1575#1585#1740' '#1576#1607' '#1607#1605#1607' '#1587#1591#1585#1607#1575
      OnExecute = actSetAllOprator2AllRowExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 553
    Top = 5
  end
  object qryOther: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterOpen = qryOtherAfterOpen
    AfterInsert = qryOtherAfterInsert
    AfterEdit = qryOtherAfterEdit
    BeforePost = qryOtherBeforePost
    AfterPost = qryOtherAfterPost
    BeforeDelete = qryOtherBeforeDelete
    AfterDelete = qryOtherAfterDelete
    AfterScroll = qryOtherAfterScroll
    Parameters = <
      item
        Name = 'GrpIDFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'GrpIDTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      ''
      'SELECT     *  FROM        Customers '
      
        'WHERE   (  CustomerGrpID BETWEEN :GrpIDFrom and :GrpIDTo )and(Cu' +
        'stID<>0)'
      'ORDER BY CustID')
    Left = 571
    Top = 233
    object qryOtherCustID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '
      FieldName = 'CustID'
      OnChange = qryOtherCustIDChange
    end
    object qryOtherCustName: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '
      FieldName = 'CustName'
      Required = True
      Size = 120
    end
    object qryOtherCustomerNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
      FieldName = 'CustomerNote'
      Size = 250
    end
    object qryOtheracc_DetailCode: TStringField
      Tag = 3
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610' '#1581#1587#1575#1576#1583#1575#1585#1610
      FieldName = 'acc_DetailCode'
      Required = True
      Size = 12
    end
    object qryOther__DetailCode: TStringField
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
    object qryOtherCustomerGrpID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1711#1585#1608#1607
      FieldName = 'CustomerGrpID'
    end
    object qryOtherModifyDate: TDateTimeField
      FieldName = 'ModifyDate'
      EditMask = '9999/99/99'
    end
    object qryOtherPersonID1: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1608#1575#1581#1583
      FieldName = 'PersonID1'
    end
    object qryOther_PersonID1: TStringField
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
    object qryOtherProjectID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1591#1585#1581' '#1608' '#1662#1585#1608#1688#1607
      FieldName = 'ProjectID'
    end
    object qryOther_BudgetName: TStringField
      FieldKind = fkLookup
      FieldName = '_BudgetName'
      LookupDataSet = DmF.qryAccBudget
      LookupKeyFields = 'BudgetTopicID'
      LookupResultField = 'BudgetCaption_L1'
      KeyFields = 'BudgetID'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qryOther_ProjectName: TStringField
      FieldKind = fkLookup
      FieldName = '_ProjectName'
      LookupDataSet = DmF.qryAccProject
      LookupKeyFields = 'ProjectID'
      LookupResultField = 'ProjectCaption_L1'
      KeyFields = 'ProjectID'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qryOtherBudgetID: TIntegerField
      DisplayLabel = #1603#1583' '#1576#1608#1583#1580#1607
      FieldName = 'BudgetID'
    end
    object qryOtheracc_CTopicCode: TStringField
      FieldName = 'acc_CTopicCode'
      Size = 12
    end
    object qryOtheracc_CTopicCode2: TStringField
      FieldName = 'acc_CTopicCode2'
      Size = 12
    end
    object qryOther__CTopicCodeName: TStringField
      FieldKind = fkLookup
      FieldName = '__CTopicCodeName'
      LookupDataSet = DmF.qryAccCenterTopics
      LookupKeyFields = 'CTopicCode'
      LookupResultField = 'CTopicName'
      KeyFields = 'acc_CTopicCode'
      Size = 100
      Lookup = True
    end
    object qryOther__CTopicCodeName2: TStringField
      FieldKind = fkLookup
      FieldName = '__CTopicCodeName2'
      LookupDataSet = DmF.qryAccCenterTopics2
      LookupKeyFields = 'CTopicCode2'
      LookupResultField = 'CTopicName2'
      KeyFields = 'acc_CTopicCode2'
      Size = 100
      Lookup = True
    end
    object qryOtheracc_TopicCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576
      FieldName = 'acc_TopicCode'
    end
    object qryOtherNationalID: TStringField
      DisplayLabel = #1603#1583' '#1605#1604#1610
      FieldName = 'NationalID'
      Size = 12
    end
    object qryOther__TopicCodeName: TStringField
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
    object qryOtherOperatorID: TWideStringField
      Tag = 3
      DisplayLabel = #1705#1583#1607#1575#1740' '#1705#1575#1585#1576#1585
      FieldName = 'OperatorID'
      Size = 4000
    end
    object qryOtheracc_CTopicCode3: TStringField
      FieldName = 'acc_CTopicCode3'
      Size = 12
    end
    object qryOther__CTopicCodeName3: TStringField
      FieldKind = fkLookup
      FieldName = '__CTopicCodeName3'
      LookupDataSet = DmF.qryAccCenterTopics3
      LookupKeyFields = 'CTopicCode3'
      LookupResultField = 'CTopicName3'
      KeyFields = 'acc_CTopicCode3'
      Size = 250
      Lookup = True
    end
    object qryOtherCustomerActive: TWordField
      Tag = 3
      DisplayLabel = #1601#1593#1575#1604
      FieldName = 'CustomerActive'
    end
    object qryOtherMax4WaterCo: TBCDField
      Tag = 3
      DisplayLabel = #1587#1602#1601' '#1583#1585#1589#1583' '#1578#1582#1601#1610#1601' '
      FieldName = 'Max4WaterCo'
      Precision = 18
    end
    object qryOtherSupervisorAllocation: TWordField
      Tag = 3
      DisplayLabel = #1578#1582#1589#1740#1589' '#1581#1602' '#1587#1585#1662#1585#1587#1578
      FieldName = 'SupervisorAllocation'
    end
    object qryOtherMobile: TStringField
      Tag = 3
      DisplayLabel = #1578#1604#1601#1606' '#1607#1605#1585#1575#1607
      FieldName = 'Mobile'
      Required = True
    end
    object qryOtherBankId: TFloatField
      FieldName = 'BankId'
    end
    object qryOtherBankName: TStringField
      FieldName = 'BankName'
      Size = 60
    end
    object qryOtherAccountNumber: TStringField
      FieldName = 'AccountNumber'
      FixedChar = True
      Size = 25
    end
    object qryOtherAccountKind: TIntegerField
      FieldName = 'AccountKind'
    end
    object qryOtherCustAccountNumber: TStringField
      FieldName = 'CustAccountNumber'
      Size = 60
    end
    object qryOtherCustFirstName: TStringField
      FieldName = 'CustFirstName'
      Size = 30
    end
    object qryOtherAlternativeCustID: TLargeintField
      FieldName = 'AlternativeCustID'
    end
    object qryOtherCustomerState: TWordField
      FieldName = 'CustomerState'
    end
    object qryOtherTelegramChatID: TStringField
      DisplayLabel = 'Telegram Chat ID'
      FieldName = 'TelegramChatID'
      FixedChar = True
      Size = 30
    end
    object qryOtherCitizenCode: TStringField
      Tag = 3
      DisplayLabel = #1705#1583' '#1605#1604#1740' '#1575#1578#1576#1575#1593
      FieldName = 'CitizenCode'
    end
    object qryOtherLastUser: TWideStringField
      FieldName = 'LastUser'
    end
    object qryOtherFirstUser: TWideStringField
      FieldName = 'FirstUser'
    end
    object qryOtherBaleChatID: TStringField
      Tag = 3
      DisplayLabel = #1662#1585#1587#1606#1604'|Bale ChatID'
      FieldName = 'BaleChatID'
      FixedChar = True
      Size = 30
    end
    object qryOtherEditDateTime: TDateTimeField
      FieldName = 'EditDateTime'
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcOther
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 744
    Top = 287
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
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
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Units = utMillimeters
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
    Left = 704
    Top = 383
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 25135
      mmPrintPosition = 0
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 265
        mmTop = 19579
        mmWidth = 203200
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = #1605#1588#1582#1589#1575#1578' '#1587#1585#1601#1589#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 150284
        mmTop = 17727
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 265
        mmTop = 13758
        mmWidth = 203200
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '   '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        mmHeight = 5292
        mmLeft = 184415
        mmTop = 19315
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583' '#1587#1585#1601#1589#1604' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 186796
        mmTop = 17727
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1585#1581' '#1578#1601#1589#1610#1604#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 11906
        mmTop = 17727
        mmWidth = 13758
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label20'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '   '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        mmHeight = 5292
        mmLeft = 38894
        mmTop = 19315
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        OnGetText = ppSystemVariable1GetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5821
        mmLeft = 1058
        mmTop = 6615
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label19'
        OnGetText = ppLabel19GetText
        Border.mmPadding = 0
        Caption = ' '#1711#1585#1608#1607' '#1587#1585#1601#1589#1604' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5292
        mmLeft = 184150
        mmTop = 11642
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 42333
        mmTop = 17727
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 86254
        mmTop = 17727
        mmWidth = 21960
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '   '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        mmHeight = 5292
        mmLeft = 137319
        mmTop = 19315
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label201'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '   '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        mmHeight = 5292
        mmLeft = 56886
        mmTop = 19843
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        OnGetText = ppLabel1GetText
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
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        OnGetText = ppLabel10GetText
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
        mmLeft = 1058
        mmTop = 0
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578' '#1605#1588#1582#1589#1575#1578' '#1587#1585#1601#1589#1604' '#1607#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8202
        mmLeft = 80963
        mmTop = 6615
        mmWidth = 41275
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'CustID'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6000
        mmLeft = 185473
        mmTop = 0
        mmWidth = 18000
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'CustName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6000
        mmLeft = 138377
        mmTop = 0
        mmWidth = 47096
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'acc_DetailCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6000
        mmLeft = 39952
        mmTop = 0
        mmWidth = 18000
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'CustomerNote'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6000
        mmLeft = 57944
        mmTop = 0
        mmWidth = 80433
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = '__DetailCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6000
        mmLeft = 0
        mmTop = 0
        mmWidth = 40000
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 203300
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 9790
      mmPrintPosition = 0
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = #1578#1593#1583#1575#1583' '#1587#1585#1601#1589#1604' '#1607#1575': '#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5376
        mmLeft = 182563
        mmTop = 1588
        mmWidth = 20320
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'CustID'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5800
        mmLeft = 166159
        mmTop = 1588
        mmWidth = 16140
        BandType = 7
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpBottom
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 165365
        mmTop = 4763
        mmWidth = 37835
        BandType = 7
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 0
        mmTop = 0
        mmWidth = 203300
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
  object srcOther: TDataSource
    DataSet = qryOther
    OnStateChange = srcOtherStateChange
    Left = 512
    Top = 280
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
    Left = 642
    Top = 3
  end
  object qryLookUpCust: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT CustID,CustName FROM Customers')
    Left = 667
    Top = 271
  end
  object PopupMenu1: TPopupMenu
    Left = 512
    Top = 360
    object N11: TMenuItem
      Action = actSearch_
    end
    object N21: TMenuItem
      Caption = #1580#1587#1578#1580#1608' '#1601#1610#1604#1578#1585
      OnClick = N21Click
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
    Left = 560
    Top = 304
    object qryCustomersOtherGroupsCustID: TIntegerField
      FieldName = 'CustID'
    end
    object qryCustomersOtherGroupsCustomerGrpID: TIntegerField
      FieldName = 'CustomerGrpID'
    end
  end
  object sd: TPopupMenu
    AutoHotkeys = maManual
    Left = 616
    Top = 171
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
      Caption = #1578#1594#1610#1610#1585' '#1603#1583' '#1605#1588#1578#1585#1610' '
      Hint = #1583#1585' '#1589#1608#1585#1578' '#1575#1585#1587#1575#1604' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1586' '#1575#1740#1606' '#1575#1605#1705#1575#1606' '#1606#1605#1740' '#1578#1608#1575#1606#1740#1583' '#1575#1587#1578#1601#1575#1583#1607' '#1705#1606#1740#1583
      OnClick = actChangeCustID1Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object actChangeCustID2: TMenuItem
      Action = actChangeCustID
    end
  end
  object qryCustomersGroup: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT    *'
      'FROM         CustomersGroup')
    Left = 726
    Top = 193
  end
end

inherited otherCustomerF: TotherCustomerF
  Left = 300
  Top = 129
  Caption = #1605#1593#1585#1601#1610' '#1587#1575#1610#1585' '#1587#1585#1601#1589#1604#1607#1575
  ClientHeight = 638
  ClientWidth = 835
  ExplicitWidth = 843
  ExplicitHeight = 669
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 597
    Width = 835
    TabOrder = 1
    ExplicitTop = 597
    ExplicitWidth = 835
    DesignSize = (
      835
      41)
    object DBNavigator1: TDBNavigator [0]
      Left = 399
      Top = 8
      Width = 188
      Height = 25
      DataSource = srcOther
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Anchors = [akLeft, akTop, akRight, akBottom]
      Flat = True
      TabOrder = 7
    end
    inherited BtnReject: TBitBtn
      TabOrder = 6
    end
    object okPanel: TPanel
      Left = 273
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
    object newPanel: TPanel
      Left = 431
      Top = 1
      Width = 403
      Height = 39
      Align = alRight
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 0
      object BitBtn3: TBitBtn
        AlignWithMargins = True
        Left = 323
        Top = 6
        Width = 77
        Height = 27
        Margins.Top = 6
        Margins.Bottom = 6
        Action = DataSetInsert1
        Align = alRight
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        AlignWithMargins = True
        Left = 242
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
      object BitBtn5: TBitBtn
        AlignWithMargins = True
        Left = 161
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
      object BitBtn15: TBitBtn
        AlignWithMargins = True
        Left = 80
        Top = 6
        Width = 75
        Height = 27
        Margins.Top = 6
        Margins.Bottom = 6
        Align = alRight
        Caption = #1575#1591#1604#1575#1593#1575#1578' '#1605#1575#1604#1610#1575#1578
        TabOrder = 3
        OnClick = BitBtn15Click
      end
      object BitBtn10: TBitBtn
        AlignWithMargins = True
        Left = 1
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
        TabOrder = 4
      end
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSendExel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Exel'
      TabOrder = 3
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 166
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 4
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 328
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actPrint
      Align = alLeft
      Caption = #1670#1575#1662
      TabOrder = 5
    end
    object BitBtn9: TBitBtn
      AlignWithMargins = True
      Left = 85
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSearch_
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 2
    end
  end
  inherited Panel2: TPanel
    Width = 835
    TabOrder = 2
    ExplicitWidth = 835
    inherited ImgTemplate: TImage
      Left = 830
      ExplicitLeft = 830
    end
    inherited lblCaption: TLabel
      Left = 727
      Height = 16
      ExplicitLeft = 727
    end
    inherited lblBaseDate: TLabel
      Left = 375
      ExplicitLeft = 375
    end
    object dbchkCustomerActive: TDBCheckBox
      Left = 11
      Top = 9
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
      Width = 102
      Height = 17
      Alignment = taLeftJustify
      BiDiMode = bdLeftToRight
      Caption = #1594#1610#1585' '#1601#1593#1575#1604' '#1576#1585#1575#1740' '#1579#1576#1578
      DataField = 'CustomerState'
      DataSource = srcOther
      ParentBiDiMode = False
      TabOrder = 1
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
  end
  inherited Panel3: TPanel
    Width = 835
    Height = 544
    TabOrder = 0
    ExplicitWidth = 835
    ExplicitHeight = 544
    object Panel1: TPanel
      Left = 488
      Top = 2
      Width = 345
      Height = 540
      Align = alRight
      Anchors = [akLeft, akTop, akRight, akBottom]
      BorderWidth = 5
      BorderStyle = bsSingle
      TabOrder = 0
      object GroupBox1: TGroupBox
        Left = 6
        Top = 6
        Width = 329
        Height = 57
        Align = alTop
        Caption = #1575#1606#1578#1582#1575#1576' '#1711#1585#1608#1607' '
        TabOrder = 1
        object SpeedButton1: TSpeedButton
          Left = 2
          Top = 32
          Width = 23
          Height = 23
          Align = alLeft
          Caption = '...'
          OnClick = SpeedButton1Click
          ExplicitLeft = 6
          ExplicitTop = 28
          ExplicitHeight = 22
        end
        object chkAllCusts: TCheckBox
          Left = 2
          Top = 15
          Width = 325
          Height = 17
          Align = alTop
          BiDiMode = bdRightToLeftNoAlign
          Caption = '&'#1607#1605#1607' '#1711#1585#1608#1607#1607#1575
          ParentBiDiMode = False
          TabOrder = 0
          OnClick = chkAllCustsClick
        end
        object cmbGroups: TComboBox
          Left = 25
          Top = 32
          Width = 302
          Height = 21
          Align = alClient
          Style = csDropDownList
          Color = 14024703
          TabOrder = 1
          OnChange = cmbGroupsChange
          OnEnter = cmbGroupsEnter
        end
      end
      object DBGrid1: TCedarDbgrid
        Left = 6
        Top = 63
        Width = 329
        Height = 467
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
            Width = 82
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CustName'
            Footers = <>
            Title.TitleButton = True
            Width = 82
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 2
      Width = 486
      Height = 540
      Align = alClient
      BevelInner = bvLowered
      BevelOuter = bvLowered
      BorderWidth = 3
      BorderStyle = bsSingle
      TabOrder = 1
      DesignSize = (
        482
        536)
      object Label2: TLabel
        Left = 352
        Top = 12
        Width = 14
        Height = 13
        Alignment = taRightJustify
        Caption = #1603#1583' '
        FocusControl = DBEdit1
      end
      object Label3: TLabel
        Left = 352
        Top = 37
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = #1593#1606#1608#1575#1606
        FocusControl = DBEdit2
      end
      object Label17: TLabel
        Left = 352
        Top = 57
        Width = 76
        Height = 13
        Caption = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
      end
      object Label8: TLabel
        Left = 352
        Top = 159
        Width = 40
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1603#1583' '#1576#1608#1583#1580#1607
        FocusControl = DBEdit5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object SpeedButton3: TSpeedButton
        Left = 253
        Top = 154
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        Visible = False
        OnClick = SpeedButton3Click
      end
      object DBText2: TDBText
        Left = 17
        Top = 157
        Width = 234
        Height = 16
        Anchors = [akTop, akRight]
        Color = 13948116
        DataField = '_BudgetName'
        DataSource = srcOther
        ParentColor = False
        Transparent = False
        Visible = False
      end
      object Label9: TLabel
        Left = 352
        Top = 187
        Width = 66
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1603#1583' '#1591#1585#1581' '#1608' '#1662#1585#1608#1688#1607
        FocusControl = DBEdit8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object SpeedButton4: TSpeedButton
        Left = 253
        Top = 182
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        Visible = False
        OnClick = SpeedButton4Click
      end
      object DBText3: TDBText
        Left = 17
        Top = 185
        Width = 234
        Height = 16
        Anchors = [akTop, akRight]
        Color = 13948116
        DataField = '_ProjectName'
        DataSource = srcOther
        ParentColor = False
        Transparent = False
        Visible = False
      end
      object lblInfoWeight: TLabel
        Left = 352
        Top = 134
        Width = 16
        Height = 13
        Caption = #1608#1586#1606
        FocusControl = edtInfoWeight
      end
      object Label4: TLabel
        Left = 352
        Top = 212
        Width = 85
        Height = 13
        Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576' '#1588#1576#1575
        FocusControl = edtCustAccountNumber
        Visible = False
      end
      object Label10: TLabel
        Left = 352
        Top = 237
        Width = 46
        Height = 13
        Caption = #1608#1575#1581#1583' '#1662#1608#1604#1610
        FocusControl = DBLookupComboBox1
      end
      object DBEdit1: TDBEdit
        Left = 237
        Top = 8
        Width = 110
        Height = 21
        DataField = 'CustID'
        DataSource = srcOther
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 17
        Top = 33
        Width = 330
        Height = 21
        DataField = 'CustName'
        DataSource = srcOther
        TabOrder = 1
      end
      object DBMemo2: TDBMemo
        Left = 17
        Top = 60
        Width = 330
        Height = 65
        DataField = 'CustomerNote'
        DataSource = srcOther
        TabOrder = 2
      end
      object DBEdit5: TDBEdit
        Left = 276
        Top = 155
        Width = 71
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'BudgetID'
        DataSource = srcOther
        TabOrder = 4
        Visible = False
      end
      object DBEdit8: TDBEdit
        Left = 276
        Top = 182
        Width = 71
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'ProjectID'
        DataSource = srcOther
        TabOrder = 5
        Visible = False
      end
      object edtInfoWeight: TDBEdit
        Left = 257
        Top = 130
        Width = 90
        Height = 21
        DataField = 'InfoWeight'
        DataSource = srcOther
        TabOrder = 3
      end
      object edtCustAccountNumber: TDBEdit
        Left = 17
        Top = 208
        Width = 330
        Height = 21
        DataField = 'CustAccountNumber'
        DataSource = srcOther
        TabOrder = 6
        Visible = False
      end
      object PageControl1: TPageControl
        Left = 5
        Top = 264
        Width = 472
        Height = 267
        ActivePage = ts1
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 8
        object ts1: TTabSheet
          Caption = '000'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          DesignSize = (
            464
            239)
          object Label7: TLabel
            Left = 400
            Top = 37
            Width = 27
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1601#1575#1603#1587
            FocusControl = DBEdit6
            ExplicitLeft = 376
          end
          object Label6: TLabel
            Left = 400
            Top = 8
            Width = 21
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1578#1604#1601#1606
            FocusControl = DBEdit5
          end
          object Label37: TLabel
            Left = 147
            Top = 8
            Width = 52
            Height = 13
            Alignment = taRightJustify
            Caption = #1578#1604#1601#1606' '#1607#1605#1585#1575#1607
            FocusControl = DBEdit5
          end
          object Label41: TLabel
            Left = 147
            Top = 37
            Width = 27
            Height = 13
            Caption = #1578#1604#1601#1606'3'
          end
          object Label44: TLabel
            Left = 400
            Top = 66
            Width = 27
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1578#1604#1601#1606'2'
            ExplicitLeft = 376
          end
          object Label5: TLabel
            Left = 400
            Top = 144
            Width = 25
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1570#1583#1585#1587
            FocusControl = DBEdit5
            ExplicitLeft = 376
          end
          object Label54: TLabel
            Left = 147
            Top = 64
            Width = 89
            Height = 13
            Alignment = taRightJustify
            BiDiMode = bdLeftToRight
            Caption = #1705#1583' '#1605#1588#1578#1585#1740' '#1580#1575#1740#1711#1586#1740#1606
            FocusControl = edtAlternativeCustID
            ParentBiDiMode = False
          end
          object Label29: TLabel
            Left = 400
            Top = 91
            Width = 54
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1583#1585#1589#1583#1578#1582#1601#1610#1601
            FocusControl = edtDiscount
          end
          object Label1: TLabel
            Left = 147
            Top = 90
            Width = 95
            Height = 13
            Alignment = taRightJustify
            BiDiMode = bdLeftToRight
            Caption = #1705#1583' '#1605#1588#1578#1585#1740' '#1580#1575#1740#1711#1586#1740#1606'2'
            FocusControl = edtAlternativeCustID2
            ParentBiDiMode = False
          end
          object Label12: TLabel
            Left = 147
            Top = 113
            Width = 47
            Height = 26
            BiDiMode = bdLeftToRight
            Caption = 'Telegram Chat ID'
            FocusControl = edtTelegramChatID
            ParentBiDiMode = False
            WordWrap = True
          end
          object Label13: TLabel
            Left = 400
            Top = 119
            Width = 60
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1583#1585#1589#1583#1578#1582#1601#1610#1601'1'
            FocusControl = edtDiscountOne
          end
          object DBEdit6: TDBEdit
            Left = 259
            Top = 4
            Width = 134
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'Tel'
            DataSource = srcOther
            TabOrder = 0
          end
          object DBEdit7: TDBEdit
            Left = 259
            Top = 33
            Width = 134
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'Fax'
            DataSource = srcOther
            TabOrder = 1
          end
          object DBEdit27: TDBEdit
            Left = 10
            Top = 4
            Width = 134
            Height = 21
            DataField = 'Mobile'
            DataSource = srcOther
            TabOrder = 2
          end
          object dbedtTel3: TDBEdit
            Left = 10
            Top = 33
            Width = 134
            Height = 21
            DataField = 'Tel3'
            DataSource = srcOther
            TabOrder = 3
          end
          object dbedtTel2: TDBEdit
            Left = 260
            Top = 60
            Width = 134
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'Tel2'
            DataSource = srcOther
            TabOrder = 4
          end
          object DBMemo1: TDBMemo
            Left = 10
            Top = 145
            Width = 384
            Height = 44
            Anchors = [akTop, akRight]
            DataField = 'Address'
            DataSource = srcOther
            TabOrder = 5
          end
          object edtAlternativeCustID: TDBEdit
            Left = 10
            Top = 60
            Width = 134
            Height = 21
            DataField = 'AlternativeCustID'
            DataSource = srcOther
            TabOrder = 6
          end
          object edtDiscount: TDBEdit
            Left = 260
            Top = 87
            Width = 134
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'Discount'
            DataSource = srcOther
            TabOrder = 7
          end
          object edtAlternativeCustID2: TDBEdit
            Left = 10
            Top = 86
            Width = 134
            Height = 21
            DataField = 'AlternativeCustID2'
            DataSource = srcOther
            TabOrder = 8
          end
          object edtTelegramChatID: TDBEdit
            Left = 10
            Top = 115
            Width = 134
            Height = 21
            DataField = 'TelegramChatID'
            DataSource = srcOther
            TabOrder = 9
          end
          object edtDiscountOne: TDBEdit
            Left = 260
            Top = 115
            Width = 134
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'DiscountOne'
            DataSource = srcOther
            TabOrder = 10
          end
        end
        object TabSheet3: TTabSheet
          Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1583#1575#1585#1610
          ImageIndex = 2
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          DesignSize = (
            464
            239)
          object Label11: TLabel
            Left = 343
            Top = 30
            Width = 102
            Height = 13
            Alignment = taRightJustify
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610' '#1581#1587#1575#1576#1583#1575#1585#1610
          end
          object SpeedButton2: TSpeedButton
            Left = 244
            Top = 25
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton2Click
          end
          object DBText1: TDBText
            Left = -24
            Top = 28
            Width = 264
            Height = 16
            Anchors = [akTop, akRight]
            Color = 13948116
            DataField = '__DetailCode'
            DataSource = srcOther
            ParentColor = False
            Transparent = False
          end
          object Label22: TLabel
            Left = 343
            Top = 56
            Width = 57
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'
            FocusControl = DBEdit18
          end
          object SpeedButton5: TSpeedButton
            Left = 244
            Top = 51
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton5Click
            ExplicitLeft = 220
          end
          object DBText5: TDBText
            Left = -24
            Top = 54
            Width = 264
            Height = 16
            Anchors = [akTop, akRight]
            Color = 13948116
            DataField = '__CTopicCodeName'
            DataSource = srcOther
            ParentColor = False
            Transparent = False
          end
          object Label24: TLabel
            Left = 343
            Top = 82
            Width = 57
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'3'
            FocusControl = DBEdit19
          end
          object SpeedButton6: TSpeedButton
            Left = 244
            Top = 77
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton6Click
            ExplicitLeft = 220
          end
          object DBText6: TDBText
            Left = -24
            Top = 80
            Width = 264
            Height = 16
            Anchors = [akTop, akRight]
            Color = 13948116
            DataField = '__CTopicCodeName2'
            DataSource = srcOther
            ParentColor = False
            Transparent = False
          end
          object Label33: TLabel
            Left = 343
            Top = 134
            Width = 39
            Height = 13
            Alignment = taRightJustify
            Caption = #1578#1588#1582#1610#1589
          end
          object DBText4: TDBText
            Left = -24
            Top = 106
            Width = 264
            Height = 16
            Anchors = [akLeft, akTop, akRight]
            Color = 13948116
            DataField = '__CTopicCodeName3'
            DataSource = srcOther
            ParentColor = False
            Transparent = False
          end
          object SpeedButton10: TSpeedButton
            Left = 244
            Top = 103
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton10Click
            ExplicitLeft = 220
          end
          object Label48: TLabel
            Left = 343
            Top = 105
            Width = 57
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'4'
            FocusControl = DBEdit29
          end
          object Label49: TLabel
            Left = 343
            Top = 4
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
            Left = 244
            Top = -1
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton11Click
            ExplicitLeft = 220
          end
          object DBText7: TDBText
            Left = -24
            Top = 2
            Width = 264
            Height = 16
            Anchors = [akLeft, akTop, akRight]
            Color = 13948116
            DataField = '__TopicCodeName'
            DataSource = srcOther
            ParentColor = False
            Transparent = False
            ExplicitWidth = 240
          end
          object DBEdit15: TDBEdit
            Left = 268
            Top = 26
            Width = 70
            Height = 21
            DataField = 'acc_DetailCode'
            DataSource = srcOther
            TabOrder = 0
            OnKeyDown = DBEdit15KeyDown
          end
          object DBEdit18: TDBEdit
            Left = 268
            Top = 52
            Width = 70
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'acc_CTopicCode'
            DataSource = srcOther
            TabOrder = 1
          end
          object DBEdit19: TDBEdit
            Left = 268
            Top = 78
            Width = 70
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'acc_CTopicCode2'
            DataSource = srcOther
            TabOrder = 2
          end
          object CmbaccStateDefault: TDBComboBox
            Left = 243
            Top = 130
            Width = 95
            Height = 21
            DataField = 'accStateDefault'
            DataSource = srcOther
            Items.Strings = (
              #1606#1583#1575#1585#1583
              #1576#1583#1607#1603#1575#1585
              #1576#1587#1578#1575#1606#1603#1575#1585)
            TabOrder = 3
          end
          object DBEdit29: TDBEdit
            Left = 268
            Top = 104
            Width = 70
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'acc_CTopicCode3'
            DataSource = srcOther
            TabOrder = 4
          end
          object DBEdit30: TDBEdit
            Left = 268
            Top = 0
            Width = 70
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'acc_TopicCode'
            DataSource = srcOther
            TabOrder = 5
          end
        end
        object tsOtherCustomers: TTabSheet
          Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1587#1575#1740#1585' '#1711#1585#1608#1607#1607#1575#1740' '#1605#1588#1578#1585#1740
          ImageIndex = 2
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object GroupBox3: TGroupBox
            Left = 0
            Top = 0
            Width = 464
            Height = 239
            Align = alClient
            Caption = #1587#1575#1740#1585' '#1711#1585#1608#1607#1607#1575#1740' '#1605#1588#1578#1585#1740
            TabOrder = 0
            object chklstOtherGroup: TCheckListBox
              Left = 2
              Top = 15
              Width = 460
              Height = 222
              Align = alClient
              Color = clCream
              Columns = 2
              Enabled = False
              ItemHeight = 13
              TabOrder = 0
              OnDblClick = chklstOtherGroupDblClick
            end
          end
        end
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 17
        Top = 233
        Width = 330
        Height = 21
        DataField = '_AccountKind'
        DataSource = srcOther
        TabOrder = 7
      end
    end
  end
  inherited ActionList: TActionList
    Left = 536
    Top = 160
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
  end
  inherited ImageList1: TImageList
    Left = 568
    Top = 6
  end
  object qryOther: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
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
      'SELECT     * FROM        Customers '
      
        'WHERE   ( CustomerGrpID BETWEEN :GrpIDFrom and :GrpIDTo  )and(Cu' +
        'stID<>0)'
      'ORDER BY CustID')
    Left = 663
    Top = 287
    object qryOtherCustID: TIntegerField
      DisplayLabel = #1603#1583
      FieldName = 'CustID'
      OnChange = qryOtherCustIDChange
    end
    object qryOtherCustName: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldName = 'CustName'
      Required = True
      Size = 120
    end
    object qryOtherCustomerNote: TStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
      FieldName = 'CustomerNote'
      Size = 250
    end
    object qryOtheracc_DetailCode: TStringField
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
      DisplayLabel = #1603#1583' '#1711#1585#1608#1607
      FieldName = 'CustomerGrpID'
    end
    object qryOtherModifyDate: TDateTimeField
      FieldName = 'ModifyDate'
      EditMask = '9999/99/99'
    end
    object qryOtherProjectID: TIntegerField
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
    object qryOtheraccStateDefault: TWordField
      FieldName = 'accStateDefault'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
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
    object qryOtherInfoWeight: TFloatField
      FieldName = 'InfoWeight'
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
    object qryOtheracc_TopicCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576
      FieldName = 'acc_TopicCode'
    end
    object qryOtherCustAccountNumber: TStringField
      FieldName = 'CustAccountNumber'
      Size = 60
    end
    object qryOtherAddress: TStringField
      FieldName = 'Address'
      Size = 300
    end
    object qryOtherTel: TStringField
      FieldName = 'Tel'
      Size = 30
    end
    object qryOtherFax: TStringField
      FieldName = 'Fax'
      Size = 30
    end
    object qryOtherTel2: TWideStringField
      FieldName = 'Tel2'
      Size = 30
    end
    object qryOtherTel3: TWideStringField
      FieldName = 'Tel3'
      Size = 30
    end
    object qryOtherMobile: TStringField
      FieldName = 'Mobile'
    end
    object qryOtherAlternativeCustID: TLargeintField
      FieldName = 'AlternativeCustID'
    end
    object qryOtherDiscount: TFloatField
      FieldName = 'Discount'
    end
    object qryOtherDiscountOne: TFloatField
      FieldName = 'DiscountOne'
    end
    object qryOtherAlternativeCustID2: TLargeintField
      FieldName = 'AlternativeCustID2'
    end
    object qryOtherCustomerActive: TWordField
      FieldName = 'CustomerActive'
    end
    object qryOtherCustFirstName: TStringField
      FieldName = 'CustFirstName'
      Size = 30
    end
    object qryOtherTelegramChatID: TStringField
      DisplayLabel = 'Telegram Chat ID'
      FieldName = 'TelegramChatID'
      FixedChar = True
      Size = 30
    end
    object qryOtherLastUser: TWideStringField
      FieldName = 'LastUser'
    end
    object qryOtherFirstUser: TWideStringField
      FieldName = 'FirstUser'
    end
    object qryOtherEditDateTime: TDateTimeField
      FieldName = 'EditDateTime'
    end
    object qryOtherCustomerState: TWordField
      FieldName = 'CustomerState'
    end
    object qryOtherAccountKind: TIntegerField
      FieldName = 'AccountKind'
    end
    object qryOther_AccountKind: TStringField
      DisplayLabel = #1608#1575#1581#1583' '#1662#1608#1604#1610
      FieldKind = fkLookup
      FieldName = '_AccountKind'
      LookupDataSet = DmF.qryCurrencies
      LookupKeyFields = 'CurrenciesID'
      LookupResultField = 'CurrenciesName'
      KeyFields = 'AccountKind'
      Size = 50
      Lookup = True
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcOther
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 704
    Top = 327
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
    Left = 704
    Top = 399
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
    Left = 544
    Top = 304
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
    Left = 292
    Top = 2
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
    Top = 224
    object qryCustomersOtherGroupsCustID: TIntegerField
      FieldName = 'CustID'
    end
    object qryCustomersOtherGroupsCustomerGrpID: TIntegerField
      FieldName = 'CustomerGrpID'
    end
  end
  object sd: TPopupMenu
    AutoHotkeys = maManual
    Left = 640
    Top = 195
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
  end
  object qryCustomersGroup: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT    *'
      'FROM         CustomersGroup')
    Left = 742
    Top = 209
  end
end

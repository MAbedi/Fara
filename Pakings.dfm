inherited PakingsF: TPakingsF
  Left = 311
  Top = 150
  ActiveControl = cmbGroups
  Caption = #1605#1593#1585#1601#1610' '#1662#1705#1740#1606#1711
  ClientHeight = 574
  OnResize = FormResize
  ExplicitHeight = 605
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 533
    ExplicitTop = 533
    DesignSize = (
      786
      41)
    inherited BtnReject: TBitBtn
      TabOrder = 4
    end
    object newPanel: TPanel
      Left = 551
      Top = 1
      Width = 234
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        234
        39)
      object BitBtn3: TBitBtn
        Left = 156
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 78
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        Left = 1
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
      Left = 386
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
    object BitBtn1: TBitBtn
      Left = 308
      Top = 9
      Width = 75
      Height = 25
      Action = actPrint
      Caption = #1670#1600#1600#1600#1575#1662
      TabOrder = 3
    end
    object BitBtn2: TBitBtn
      Left = 157
      Top = 9
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 2
    end
    object BitBtn6: TBitBtn
      Left = 232
      Top = 9
      Width = 75
      Height = 25
      Action = actSendExel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 5
    end
    object BitBtn9: TBitBtn
      Left = 82
      Top = 9
      Width = 75
      Height = 25
      Action = actSearch_
      Anchors = [akLeft, akBottom]
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 6
    end
    object BitBtn10: TBitBtn
      Left = 470
      Top = 9
      Width = 75
      Height = 25
      Action = actgetExcel
      Anchors = [akTop, akRight]
      Caption = #1582#1608#1575#1606#1583#1606' Excel'
      TabOrder = 7
    end
    object BitBtn15: TBitBtn
      Left = 386
      Top = 9
      Width = 75
      Height = 25
      Caption = #1575#1591#1604#1575#1593#1575#1578' '#1605#1575#1604#1610#1575#1578
      TabOrder = 8
      OnClick = BitBtn15Click
    end
  end
  inherited Panel2: TPanel
    BevelOuter = bvNone
    inherited lblCaption: TLabel
      Left = 679
      Top = 15
      Height = 35
      ExplicitLeft = 683
      ExplicitTop = 15
    end
    object dbchkCustomerActive: TDBCheckBox
      Left = 13
      Top = 7
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
      Left = 13
      Top = 30
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
  end
  inherited Panel3: TPanel
    Height = 480
    BevelInner = bvNone
    BevelOuter = bvNone
    ExplicitHeight = 480
    object Panel1: TPanel
      Left = 514
      Top = 0
      Width = 272
      Height = 480
      Align = alRight
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelOuter = bvNone
      BorderWidth = 5
      BorderStyle = bsSingle
      TabOrder = 0
      object GroupBox1: TGroupBox
        Left = 5
        Top = 5
        Width = 258
        Height = 73
        Align = alTop
        Caption = '  '#1575#1606#1578#1582#1575#1576' '#1711#1585#1608#1607' '
        TabOrder = 1
        object cmbGroups: TComboBox
          AlignWithMargins = True
          Left = 5
          Top = 47
          Width = 248
          Height = 21
          Align = alBottom
          AutoDropDown = True
          Style = csDropDownList
          Color = 14024703
          TabOrder = 0
          OnChange = cmbGroupsChange
          OnEnter = cmbGroupsEnter
        end
        object Panel6: TPanel
          Left = 2
          Top = 15
          Width = 254
          Height = 29
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object SpeedButton1: TSpeedButton
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 23
            Height = 23
            Align = alLeft
            Caption = '...'
            OnClick = SpeedButton1Click
            ExplicitLeft = 6
            ExplicitTop = 4
            ExplicitHeight = 22
          end
          object chkAllCusts: TCheckBox
            Left = 157
            Top = 0
            Width = 97
            Height = 29
            Align = alRight
            BiDiMode = bdRightToLeftNoAlign
            Caption = #1575#1606#1578#1582#1575#1576' '#1607#1605#1607
            ParentBiDiMode = False
            TabOrder = 0
            OnClick = chkAllCustsClick
          end
        end
      end
      object DBGrid1: TCedarDbgrid
        Left = 5
        Top = 78
        Width = 258
        Height = 393
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
        PopupMenu = popMnuGroups
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
            Width = 23
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CustName'
            Footers = <>
            Title.TitleButton = True
            Width = 23
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CustFirstName'
            Footers = <>
            Title.TitleButton = True
            Width = 23
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Country'
            Footers = <>
            Title.TitleButton = True
            Width = 23
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'InfoWeight'
            Footers = <>
            Title.TitleButton = True
            Width = 23
          end
          item
            CellButtons = <>
            Color = 13431799
            DynProps = <>
            EditButtons = <>
            FieldName = 'InfoDate'
            Footers = <>
            Title.TitleButton = True
            Width = 23
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PersonID1'
            Footers = <>
            Title.TitleButton = True
            Width = 23
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'AlternativeCustID'
            Footers = <>
            Title.TitleButton = True
            Width = 23
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'AlternativeCustID2'
            Footers = <>
            Title.TitleButton = True
            Width = 23
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 514
      Height = 480
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 3
      BorderStyle = bsSingle
      TabOrder = 1
      DesignSize = (
        510
        476)
      object lblCode: TLabel
        Left = 416
        Top = 12
        Width = 11
        Height = 13
        Alignment = taRightJustify
        Caption = #1603#1583
        FocusControl = DBEdit1
      end
      object lblName: TLabel
        Left = 416
        Top = 36
        Width = 16
        Height = 13
        Alignment = taRightJustify
        Caption = #1606#1575#1605' '
        FocusControl = DBEdit2
      end
      object Label8: TLabel
        Left = 213
        Top = 161
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = #1603#1588#1608#1585
      end
      object Label9: TLabel
        Left = 416
        Top = 213
        Width = 25
        Height = 13
        Alignment = taRightJustify
        Caption = #1570#1583#1585#1587
      end
      object Label16: TLabel
        Left = 87
        Top = 161
        Width = 22
        Height = 13
        Alignment = taRightJustify
        Caption = #1588#1607#1585
      end
      object Label18: TLabel
        Left = 87
        Top = 186
        Width = 30
        Height = 13
        Alignment = taRightJustify
        Caption = #1605#1606#1591#1602#1607
      end
      object Label20: TLabel
        Left = 416
        Top = 186
        Width = 44
        Height = 13
        Alignment = taRightJustify
        Caption = #1603#1583' '#1662#1587#1578#1610
      end
      object Label21: TLabel
        Left = 416
        Top = 161
        Width = 67
        Height = 13
        Alignment = taRightJustify
        Caption = #1589#1606#1583#1608#1602' '#1662#1587#1578#1610
      end
      object Label23: TLabel
        Left = 416
        Top = 137
        Width = 72
        Height = 13
        Alignment = taRightJustify
        Caption = #1588#1605#1575#1585#1607' '#1575#1602#1578#1589#1575#1583#1610
      end
      object Label13: TLabel
        Left = 416
        Top = 239
        Width = 16
        Height = 13
        Alignment = taRightJustify
        Caption = #1608#1586#1606
      end
      object Label14: TLabel
        Left = 87
        Top = 239
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = #1578#1575#1585#1610#1582
      end
      object Label32: TLabel
        Left = 213
        Top = 137
        Width = 64
        Height = 13
        Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
        FocusControl = DBEdit26
      end
      object Label37: TLabel
        Left = 217
        Top = 186
        Width = 35
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1603#1583' '#1605#1604#1610
        ExplicitLeft = 213
      end
      object Label38: TLabel
        Left = 217
        Top = 239
        Width = 50
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1588#1605#1575#1585#1607' '#1579#1576#1578
        ExplicitLeft = 213
      end
      object Label44: TLabel
        Left = 151
        Top = 36
        Width = 13
        Height = 13
        Alignment = taRightJustify
        Caption = #1606#1575#1605
      end
      object Label35: TLabel
        Left = 420
        Top = 112
        Width = 80
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1603#1583' '#1705#1575#1585#1582#1575#1606#1607' '#1587#1575#1586#1606#1583#1607
        FocusControl = edtAlternativeCustID2
        ExplicitLeft = 416
      end
      object SpeedButton3: TSpeedButton
        Left = 288
        Top = 105
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        OnClick = SpeedButton3Click
        ExplicitLeft = 284
      end
      object txt_AlternativeCustID2: TDBText
        Left = 19
        Top = 110
        Width = 267
        Height = 16
        Anchors = [akTop, akRight]
        Color = 13948116
        DataField = '_AlternativeCustID2'
        DataSource = srcCustomers
        ParentColor = False
        Transparent = False
        ExplicitLeft = 15
      end
      object Label36: TLabel
        Left = 416
        Top = 86
        Width = 41
        Height = 13
        Alignment = taRightJustify
        Caption = #1603#1583' '#1662#1585#1608#1606#1583#1607
      end
      object SpeedButton4: TSpeedButton
        Left = 288
        Top = 81
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SpeedButton4Click
      end
      object txt_AlternativeCustID: TDBText
        Left = 19
        Top = 85
        Width = 267
        Height = 16
        Anchors = [akTop, akRight]
        Color = 13948116
        DataField = '_AlternativeCustID'
        DataSource = srcCustomers
        ParentColor = False
        Transparent = False
        ExplicitLeft = 15
      end
      object txt_PersonID1: TDBText
        Left = 15
        Top = 60
        Width = 271
        Height = 16
        Anchors = [akLeft, akTop, akRight]
        Color = 13948116
        DataField = '_PersonID1'
        DataSource = srcCustomers
        ParentColor = False
        Transparent = False
        ExplicitWidth = 267
      end
      object SpeedButton7: TSpeedButton
        Left = 288
        Top = 57
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        OnClick = SpeedButton7Click
        ExplicitLeft = 284
      end
      object Label51: TLabel
        Left = 420
        Top = 61
        Width = 55
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1603#1583' '#1601#1585#1608#1588#1606#1583#1607
        FocusControl = edtPersonID1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 416
      end
      object DBEdit1: TDBEdit
        Left = 336
        Top = 8
        Width = 78
        Height = 21
        DataField = 'CustID'
        DataSource = srcCustomers
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 170
        Top = 32
        Width = 244
        Height = 21
        DataField = 'CustName'
        DataSource = srcCustomers
        TabOrder = 1
      end
      object DBMemo1: TDBMemo
        Left = 15
        Top = 207
        Width = 399
        Height = 25
        DataField = 'Address'
        DataSource = srcCustomers
        TabOrder = 10
      end
      object DBEdit13: TDBEdit
        Left = 284
        Top = 157
        Width = 130
        Height = 21
        DataField = 'pobox'
        DataSource = srcCustomers
        TabOrder = 3
      end
      object DBEdit8: TDBEdit
        Left = 121
        Top = 157
        Width = 90
        Height = 21
        DataField = 'Country'
        DataSource = srcCustomers
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
      end
      object DBEdit9: TDBEdit
        Left = 15
        Top = 157
        Width = 70
        Height = 21
        DataField = 'City'
        DataSource = srcCustomers
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
      end
      object DBEdit12: TDBEdit
        Left = 284
        Top = 182
        Width = 130
        Height = 21
        DataField = 'PostalCode'
        DataSource = srcCustomers
        TabOrder = 4
      end
      object DBEdit11: TDBEdit
        Left = 284
        Top = 133
        Width = 130
        Height = 21
        DataField = 'EconomicNumber'
        DataSource = srcCustomers
        TabOrder = 2
      end
      object DBEdit10: TDBEdit
        Left = 15
        Top = 182
        Width = 70
        Height = 21
        DataField = 'Region'
        DataSource = srcCustomers
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
      end
      object DBEdit14: TDBEdit
        Left = 284
        Top = 235
        Width = 130
        Height = 21
        DataField = 'InfoWeight'
        DataSource = srcCustomers
        TabOrder = 11
      end
      object DBEdit17: TDBEdit
        Left = 15
        Top = 235
        Width = 70
        Height = 21
        DataField = 'InfoDate'
        DataSource = srcCustomers
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
      end
      object PageControl1: TPageControl
        Left = 3
        Top = 261
        Width = 504
        Height = 212
        ActivePage = TabSheet9
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 14
        object TabSheet9: TTabSheet
          Caption = '...'
          ImageIndex = 9
          DesignSize = (
            496
            184)
          object Label2: TLabel
            Left = 151
            Top = 16
            Width = 27
            Height = 13
            Alignment = taRightJustify
            Caption = #1578#1604#1601#1606'2'
          end
          object Label3: TLabel
            Left = 151
            Top = 48
            Width = 52
            Height = 13
            Alignment = taRightJustify
            Caption = #1578#1604#1601#1606' '#1607#1605#1585#1575#1607
          end
          object Label7: TLabel
            Left = 416
            Top = 48
            Width = 27
            Height = 13
            Alignment = taRightJustify
            Caption = #1601#1575#1603#1587
          end
          object Label15: TLabel
            Left = 153
            Top = 81
            Width = 15
            Height = 13
            Caption = #1606#1585#1582
            FocusControl = DBEdit5
          end
          object Label12: TLabel
            Left = 412
            Top = 81
            Width = 54
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1711#1585#1608#1607' '#1601#1593#1575#1604#1610#1578
            ExplicitLeft = 416
          end
          object Label6: TLabel
            Left = 416
            Top = 16
            Width = 21
            Height = 13
            Alignment = taRightJustify
            Caption = #1578#1604#1601#1606
          end
          object DBEdit15: TDBEdit
            Left = 15
            Top = 12
            Width = 134
            Height = 21
            DataField = 'Tel2'
            DataSource = srcCustomers
            TabOrder = 0
          end
          object DBEdit28: TDBEdit
            Left = 15
            Top = 44
            Width = 134
            Height = 21
            DataField = 'Mobile'
            DataSource = srcCustomers
            TabOrder = 1
          end
          object DBEdit7: TDBEdit
            Left = 284
            Top = 44
            Width = 130
            Height = 21
            DataField = 'Fax'
            DataSource = srcCustomers
            TabOrder = 2
          end
          object DBEdit5: TDBEdit
            Left = 15
            Top = 77
            Width = 134
            Height = 21
            DataField = 'ContactRate'
            DataSource = srcCustomers
            TabOrder = 3
          end
          object CmbGrpActionCustomer: TDBComboBox
            Left = 280
            Top = 77
            Width = 130
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'GrpActionCustomer'
            DataSource = srcCustomers
            Items.Strings = (
              #1606#1602#1583
              #1593#1585#1601' '#1601#1585#1608#1588#1610)
            TabOrder = 4
          end
          object DBEdit6: TDBEdit
            Left = 284
            Top = 12
            Width = 130
            Height = 21
            DataField = 'Tel'
            DataSource = srcCustomers
            TabOrder = 5
          end
        end
        object TabSheet1: TTabSheet
          Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1583#1575#1585#1610
          DesignSize = (
            496
            184)
          object Label22: TLabel
            Left = 383
            Top = 51
            Width = 57
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'
            FocusControl = DBEdit19
            ExplicitLeft = 387
          end
          object SpeedButton5: TSpeedButton
            Left = 285
            Top = 46
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton5Click
            ExplicitLeft = 281
          end
          object DBText5: TDBText
            Left = 83
            Top = 49
            Width = 199
            Height = 16
            Anchors = [akTop, akRight]
            Color = 13948116
            DataField = '__CTopicCodeName'
            DataSource = srcCustomers
            ParentColor = False
            Transparent = False
            ExplicitLeft = 79
          end
          object Label24: TLabel
            Left = 383
            Top = 73
            Width = 57
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'3'
            FocusControl = DBEdit20
            ExplicitLeft = 387
          end
          object SpeedButton6: TSpeedButton
            Left = 285
            Top = 69
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton6Click
            ExplicitLeft = 281
          end
          object DBText6: TDBText
            Left = 83
            Top = 71
            Width = 199
            Height = 16
            Anchors = [akTop, akRight]
            Color = 13948116
            DataField = '__CTopicCodeName2'
            DataSource = srcCustomers
            ParentColor = False
            Transparent = False
            ExplicitLeft = 79
          end
          object Label11: TLabel
            Left = 379
            Top = 28
            Width = 102
            Height = 13
            Alignment = taRightJustify
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610' '#1581#1587#1575#1576#1583#1575#1585#1610
          end
          object SpeedButton2: TSpeedButton
            Left = 281
            Top = 23
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton2Click
          end
          object DBText1: TDBText
            Left = 83
            Top = 27
            Width = 199
            Height = 16
            Anchors = [akTop, akRight]
            Color = 13948116
            DataField = '__DetailCode'
            DataSource = srcCustomers
            ParentColor = False
            Transparent = False
            ExplicitLeft = 79
          end
          object DBText3: TDBText
            Left = 79
            Top = 94
            Width = 203
            Height = 16
            Anchors = [akLeft, akTop, akRight]
            Color = 13948116
            DataField = '__CTopicCodeName3'
            DataSource = srcCustomers
            ParentColor = False
            Transparent = False
            ExplicitWidth = 199
          end
          object SpeedButton10: TSpeedButton
            Left = 285
            Top = 91
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton10Click
            ExplicitLeft = 281
          end
          object Label48: TLabel
            Left = 383
            Top = 95
            Width = 57
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'4'
            FocusControl = DBEdit29
            ExplicitLeft = 387
          end
          object DBText4: TDBText
            Left = 79
            Top = 4
            Width = 203
            Height = 16
            Anchors = [akLeft, akTop, akRight]
            Color = 13948116
            DataField = '__TopicCodeName'
            DataSource = srcCustomers
            ParentColor = False
            Transparent = False
            ExplicitWidth = 199
          end
          object SpeedButton11: TSpeedButton
            Left = 285
            Top = 1
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton11Click
            ExplicitLeft = 281
          end
          object Label49: TLabel
            Left = 383
            Top = 6
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
            ExplicitLeft = 387
          end
          object DBEdit19: TDBEdit
            Left = 310
            Top = 47
            Width = 70
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'acc_CTopicCode'
            DataSource = srcCustomers
            TabOrder = 2
          end
          object DBEdit20: TDBEdit
            Left = 310
            Top = 69
            Width = 70
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'acc_CTopicCode2'
            DataSource = srcCustomers
            TabOrder = 3
          end
          object edtacc_DetailCode: TDBEdit
            Left = 310
            Top = 24
            Width = 70
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'acc_DetailCode'
            DataSource = srcCustomers
            TabOrder = 1
          end
          object DBEdit29: TDBEdit
            Left = 310
            Top = 91
            Width = 70
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'acc_CTopicCode3'
            DataSource = srcCustomers
            TabOrder = 4
          end
          object DBEdit30: TDBEdit
            Left = 310
            Top = 2
            Width = 70
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'acc_TopicCode'
            DataSource = srcCustomers
            TabOrder = 0
          end
        end
        object TabSheet2: TTabSheet
          Caption = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
          ImageIndex = 1
          object DBMemo2: TDBMemo
            Left = 0
            Top = 0
            Width = 496
            Height = 184
            Align = alClient
            DataField = 'CustomerNote'
            DataSource = srcCustomers
            TabOrder = 0
          end
        end
        object TabSheet3: TTabSheet
          Caption = #1587#1575#1610#1585
          ImageIndex = 2
          DesignSize = (
            496
            184)
          object Label25: TLabel
            Left = 421
            Top = 4
            Width = 33
            Height = 13
            Caption = #1605#1583#1610#1585#1610#1578
            FocusControl = DBEdit18
          end
          object Label26: TLabel
            Left = 420
            Top = 26
            Width = 51
            Height = 13
            Caption = #1605#1583#1610#1585' '#1601#1585#1608#1588
            FocusControl = DBEdit21
          end
          object Label27: TLabel
            Left = 424
            Top = 49
            Width = 63
            Height = 13
            Caption = #1588#1605#1575#1585#1607' '#1602#1585#1575#1585#1583#1575#1583
            FocusControl = DBEdit22
          end
          object Label28: TLabel
            Left = 201
            Top = 4
            Width = 73
            Height = 13
            Caption = #1578#1608#1590#1610#1581#1575#1578' '#1578#1582#1601#1610#1601
            FocusControl = DBEdit23
          end
          object Label29: TLabel
            Left = 201
            Top = 26
            Width = 86
            Height = 13
            Caption = #1583#1585#1589#1583#1578#1582#1601#1610#1601'/'#1601#1585#1605#1608#1604
            FocusControl = DBEdit24
          end
          object Label30: TLabel
            Left = 201
            Top = 49
            Width = 73
            Height = 13
            Caption = #1605#1583#1578' '#1662#1585#1575#1582#1578'('#1585#1608#1586')'#8207
            FocusControl = DBEdit25
          end
          object Label31: TLabel
            Left = 205
            Top = 72
            Width = 45
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1606#1581#1608#1607' '#1581#1605#1604
            ExplicitLeft = 201
          end
          object Label33: TLabel
            Left = 424
            Top = 72
            Width = 24
            Height = 13
            Alignment = taRightJustify
            Caption = #1583#1585#1589#1583
            FocusControl = DBEdit27
          end
          object Label34: TLabel
            Left = 424
            Top = 96
            Width = 62
            Height = 13
            Alignment = taRightJustify
            Caption = #1588#8207#1581#1587#1575#1576#8207#1588#1576#1575
            FocusControl = edtCustAccountNumber
          end
          object Label39: TLabel
            Left = 425
            Top = 126
            Width = 29
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1606#1608#1593' '#1575#1585#1586
            ExplicitLeft = 421
          end
          object Label45: TLabel
            Left = 201
            Top = 126
            Width = 49
            Height = 13
            Alignment = taRightJustify
            Caption = 'CustName'
          end
          object DBEdit18: TDBEdit
            Left = 290
            Top = 0
            Width = 128
            Height = 21
            DataField = 'ManageName'
            DataSource = srcCustomers
            TabOrder = 0
          end
          object DBEdit21: TDBEdit
            Left = 290
            Top = 22
            Width = 128
            Height = 21
            DataField = 'ManagerSells'
            DataSource = srcCustomers
            TabOrder = 1
          end
          object DBEdit22: TDBEdit
            Left = 290
            Top = 45
            Width = 128
            Height = 21
            DataField = 'ContactNo'
            DataSource = srcCustomers
            TabOrder = 2
          end
          object DBEdit23: TDBEdit
            Left = 0
            Top = 0
            Width = 198
            Height = 21
            DataField = 'DiscountNote'
            DataSource = srcCustomers
            TabOrder = 5
          end
          object DBEdit24: TDBEdit
            Left = 0
            Top = 22
            Width = 198
            Height = 21
            DataField = 'Discount'
            DataSource = srcCustomers
            TabOrder = 6
          end
          object DBEdit25: TDBEdit
            Left = 0
            Top = 45
            Width = 198
            Height = 21
            DataField = 'DayTime'
            DataSource = srcCustomers
            TabOrder = 7
          end
          object CmbConveyKind: TDBComboBox
            Left = 4
            Top = 68
            Width = 198
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'ConveyKind'
            DataSource = srcCustomers
            Items.Strings = (
              #1575#1606#1578#1588#1575#1585#1575#1578#1610
              #1603#1578#1575#1576#1588#1607#1585
              #1588#1585#1603#1578)
            TabOrder = 8
          end
          object DBEdit27: TDBEdit
            Left = 290
            Top = 68
            Width = 128
            Height = 21
            DataField = 'PurchasePercent'
            DataSource = srcCustomers
            TabOrder = 3
          end
          object edtCustAccountNumber: TDBEdit
            Left = 201
            Top = 92
            Width = 217
            Height = 21
            DataField = 'CustAccountNumber'
            DataSource = srcCustomers
            TabOrder = 4
          end
          object CmbArzTypeID: TDBComboBox
            Left = 294
            Top = 122
            Width = 128
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'ArzTypeID'
            DataSource = srcCustomers
            Items.Strings = (
              #1583#1585' '#1578#1606#1592#1610#1605#1575#1578' '#1587#1585#1610#1575#1604' '#1608#1575#1585#1583' '#1588#1608#1583)
            TabOrder = 9
          end
          object edtCustName_L2: TDBEdit
            Left = 0
            Top = 122
            Width = 198
            Height = 21
            BiDiMode = bdLeftToRight
            DataField = 'CustName_L2'
            DataSource = srcCustomers
            ParentBiDiMode = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 10
          end
        end
        object TabSheet4: TTabSheet
          Caption = #1603#1606#1578#1585#1604
          ImageIndex = 3
          DesignSize = (
            496
            184)
          object Label47: TLabel
            Left = 335
            Top = 63
            Width = 94
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1711#1585#1608#1607' '#1605#1588#1578#1585#1610#1575#1606' '#1601#1585#1593#1610
          end
          object btnCustomerGrpID2: TSpeedButton
            Left = 240
            Top = 59
            Width = 23
            Height = 22
            Hint = 'CustomerGrpID2'
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = btnCustomerGrpID2Click
          end
          object dbtxt_CustomerGrpID2: TDBText
            Left = 36
            Top = 62
            Width = 199
            Height = 16
            Anchors = [akTop, akRight]
            Color = 13948116
            DataField = '_CustomerGrpID2'
            DataSource = srcCustomers
            ParentColor = False
            Transparent = False
          end
          object Label17: TLabel
            Left = 335
            Top = 6
            Width = 145
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1579#1576#1578' '#1575#1578#1608#1605#1575#1578#1610#1603' '#1593#1608#1575#1605#1604' '#1605#1608#1579#1585' '#1576#1585' '#1582#1585#1610#1583
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object btnInsertAutoEffectID: TSpeedButton
            Left = 240
            Top = 2
            Width = 23
            Height = 22
            Hint = 'InsertAutoEffectID'
            Anchors = [akTop, akRight]
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButtonClick
          end
          object dbtxt_InsertAutoEffectID: TDBText
            Left = 36
            Top = 5
            Width = 199
            Height = 16
            Anchors = [akTop, akRight]
            Color = 13948116
            DataField = '_InsertAutoEffectID'
            DataSource = srcCustomers
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object Label19: TLabel
            Left = 335
            Top = 34
            Width = 41
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1576#1585' '#1575#1587#1575#1587
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object btnEffectID: TSpeedButton
            Left = 240
            Top = 29
            Width = 23
            Height = 22
            Hint = 'EffectID'
            Anchors = [akTop, akRight]
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButtonClick
          end
          object dbtxt_EffectID: TDBText
            Left = 36
            Top = 33
            Width = 199
            Height = 16
            Anchors = [akTop, akRight]
            Color = 13948116
            DataField = '_EffectID'
            DataSource = srcCustomers
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object Label43: TLabel
            Left = 337
            Top = 101
            Width = 73
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1606#1608#1593' '#1602#1610#1605#1578' '#1601#1575#1603#1578#1608#1585
          end
          object dbedtCustomerGrpID2: TDBEdit
            Left = 264
            Top = 59
            Width = 70
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'CustomerGrpID2'
            DataSource = srcCustomers
            TabOrder = 0
          end
          object dbedtInsertAutoEffectID: TDBEdit
            Left = 265
            Top = 2
            Width = 70
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'InsertAutoEffectID'
            DataSource = srcCustomers
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnKeyDown = DBEditKeyDown
          end
          object dbedtEffectID: TDBEdit
            Left = 264
            Top = 29
            Width = 70
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'EffectID'
            DataSource = srcCustomers
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object CmbValuationType: TDBComboBox
            Left = 175
            Top = 97
            Width = 160
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'ValuationType'
            DataSource = srcCustomers
            TabOrder = 3
          end
        end
        object TabSheet5: TTabSheet
          Caption = #1605#1583#1610#1585#1575#1606
          ImageIndex = 4
          object grdCustomersManag: TDBGrid
            Tag = 111
            Left = 0
            Top = 0
            Width = 496
            Height = 152
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
            OnKeyPress = grdCustomersManagKeyPress
            Columns = <
              item
                Expanded = False
                FieldName = '_JobCode'
                Width = 31
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ManagName'
                Width = 18
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Mobile'
                Width = 56
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Tel'
                Width = 43
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Fax'
                Width = 32
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Email'
                Width = 29
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BirthDate'
                Width = 45
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MarriageDate'
                Width = 56
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'State'
                PickList.Strings = (
                  #1601#1593#1575#1604
                  #1594#1610#1585#1601#1593#1575#1604)
                Width = 35
                Visible = True
              end
              item
                Expanded = False
                FieldName = '_SendKind'
                Width = 54
                Visible = True
              end>
          end
          object Panel9: TPanel
            Left = 0
            Top = 152
            Width = 496
            Height = 32
            Align = alBottom
            TabOrder = 1
            DesignSize = (
              496
              32)
            object BitBtn14: TBitBtn
              Left = 12
              Top = 4
              Width = 75
              Height = 25
              Anchors = [akLeft, akBottom]
              Caption = #1581#1584#1601' '#1585#1583#1610#1601
              TabOrder = 0
              OnClick = BitBtn14Click
            end
          end
        end
        object TabSheet6: TTabSheet
          Caption = #1592#1585#1601#1610#1578' '#1603#1575#1585
          ImageIndex = 5
          object DBGridCustomersCapacity: TDBGrid
            Tag = 111
            Left = 0
            Top = 0
            Width = 496
            Height = 152
            Align = alClient
            Color = clCream
            DataSource = srcCustomersCapacity
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnEditButtonClick = DBGridCustomersCapacityEditButtonClick
            OnKeyPress = grdCustomersManagKeyPress
            Columns = <
              item
                Alignment = taLeftJustify
                ButtonStyle = cbsEllipsis
                Expanded = False
                FieldName = 'StuffCode'
                Width = 56
                Visible = True
              end
              item
                Expanded = False
                FieldName = '_StuffCode'
                Width = 83
                Visible = True
              end
              item
                Expanded = False
                FieldName = '_UnitName'
                Width = 27
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Amount'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Price'
                Width = 72
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RunDate'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'States'
                PickList.Strings = (
                  #1601#1593#1575#1604
                  #1594#1610#1585' '#1601#1593#1575#1604)
                Visible = True
              end>
          end
          object Panel5: TPanel
            Left = 0
            Top = 152
            Width = 496
            Height = 32
            Align = alBottom
            TabOrder = 1
            DesignSize = (
              496
              32)
            object BitBtn11: TBitBtn
              Left = 12
              Top = 4
              Width = 75
              Height = 25
              Anchors = [akLeft, akBottom]
              Caption = #1581#1584#1601' '#1585#1583#1610#1601
              TabOrder = 0
              OnClick = BitBtn11Click
            end
            object BitBtn12: TBitBtn
              Left = 411
              Top = 6
              Width = 75
              Height = 25
              Action = actSelected
              Anchors = [akTop, akRight]
              Caption = #1575#1606#1578#1582#1575#1576
              TabOrder = 1
            end
          end
        end
        object TabSheet7: TTabSheet
          Caption = 'Email/Site'
          ImageIndex = 6
          object Label4: TLabel
            Left = 177
            Top = 29
            Width = 24
            Height = 13
            Caption = 'Email'
            FocusControl = DBEdit3
          end
          object Label5: TLabel
            Left = 177
            Top = 54
            Width = 18
            Height = 13
            Caption = 'Site'
            FocusControl = DBEdit4
          end
          object DBEdit3: TDBEdit
            Left = 204
            Top = 25
            Width = 166
            Height = 21
            TabStop = False
            BiDiMode = bdLeftToRight
            DataField = 'email'
            DataSource = srcCustomers
            ParentBiDiMode = False
            TabOrder = 0
          end
          object DBEdit4: TDBEdit
            Left = 204
            Top = 50
            Width = 166
            Height = 21
            TabStop = False
            BiDiMode = bdLeftToRight
            DataField = 'WebSite'
            DataSource = srcCustomers
            ParentBiDiMode = False
            TabOrder = 1
          end
        end
        object TabSheet8: TTabSheet
          Caption = #1581#1587#1575#1576' '#1576#1575#1606#1705#1740
          ImageIndex = 7
          DesignSize = (
            496
            184)
          object Label50: TLabel
            Left = 415
            Top = 135
            Width = 68
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1588' '#1581#1587#1575#1576' '#1588#1576#1575
            FocusControl = DBEdit33
            ExplicitLeft = 411
          end
          object Label1: TLabel
            Left = 411
            Top = 15
            Width = 64
            Height = 13
            Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
            FocusControl = edtAccountNumber
          end
          object Label40: TLabel
            Left = 411
            Top = 45
            Width = 41
            Height = 13
            Caption = #1603#1583' '#1588#1593#1576#1607
            FocusControl = edtBankId
          end
          object Label41: TLabel
            Left = 411
            Top = 75
            Width = 43
            Height = 13
            Caption = #1606#1575#1605' '#1588#1593#1576#1607
            FocusControl = edtBankName
          end
          object Label42: TLabel
            Left = 411
            Top = 105
            Width = 78
            Height = 13
            Alignment = taRightJustify
            Caption = #1606#1608#1593' '#1581#1587#1575#1576' '#1576#1575#1606#1603#1610
          end
          object DBEdit33: TDBEdit
            Left = 200
            Top = 131
            Width = 209
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'CustAccountNumber'
            DataSource = srcCustomers
            TabOrder = 4
          end
          object edtAccountNumber: TDBEdit
            Left = 196
            Top = 11
            Width = 209
            Height = 21
            DataField = 'AccountNumber'
            DataSource = srcCustomers
            TabOrder = 0
          end
          object edtBankId: TDBEdit
            Left = 196
            Top = 41
            Width = 209
            Height = 21
            DataField = 'BankId'
            DataSource = srcCustomers
            TabOrder = 1
          end
          object edtBankName: TDBEdit
            Left = 196
            Top = 71
            Width = 209
            Height = 21
            DataField = 'BankName'
            DataSource = srcCustomers
            TabOrder = 2
          end
          object dblkcbb_AccountKind: TDBLookupComboBox
            Left = 196
            Top = 101
            Width = 209
            Height = 21
            DataField = '_AccountKind'
            DataSource = srcCustomers
            TabOrder = 3
          end
        end
        object tsOtherGroups: TTabSheet
          Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1587#1575#1740#1585' '#1711#1585#1608#1607#1607#1575#1740' '#1605#1588#1578#1585#1740
          ImageIndex = 8
          object GroupBox3: TGroupBox
            Left = 0
            Top = 0
            Width = 496
            Height = 184
            Align = alClient
            Caption = #1711#1585#1608#1607#1607#1575#1740' '#1605#1588#1578#1585#1740
            TabOrder = 0
            object chklstOtherGroup: TCheckListBox
              Left = 2
              Top = 15
              Width = 492
              Height = 167
              Align = alClient
              Color = clCream
              Columns = 2
              ItemHeight = 13
              TabOrder = 0
              OnDblClick = chklstOtherGroupDblClick
            end
          end
        end
      end
      object DBEdit26: TDBEdit
        Left = 15
        Top = 133
        Width = 196
        Height = 21
        DataField = 'AccountNumber'
        DataSource = srcCustomers
        TabOrder = 6
      end
      object DBEdit32: TDBEdit
        Left = 125
        Top = 182
        Width = 90
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'NationalID'
        DataSource = srcCustomers
        TabOrder = 15
      end
      object edtRegisterNumber: TDBEdit
        Left = 125
        Top = 235
        Width = 90
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'RegisterNumber'
        DataSource = srcCustomers
        TabOrder = 12
      end
      object edtCustFirstName: TDBEdit
        Left = 15
        Top = 32
        Width = 130
        Height = 21
        DataField = 'CustFirstName'
        DataSource = srcCustomers
        TabOrder = 5
      end
      object edtAlternativeCustID2: TDBEdit
        Left = 313
        Top = 108
        Width = 105
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'AlternativeCustID2'
        DataSource = srcCustomers
        TabOrder = 16
      end
      object edtAlternativeCustID: TDBEdit
        Left = 313
        Top = 81
        Width = 105
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'AlternativeCustID'
        DataSource = srcCustomers
        TabOrder = 17
      end
      object edtPersonID1: TDBEdit
        Left = 313
        Top = 57
        Width = 105
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'PersonID1'
        DataSource = srcCustomers
        TabOrder = 18
      end
    end
  end
  inherited ActionList: TActionList
    Left = 488
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
      Caption = #1670#1600#1600#1600#1575#1662
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
    object actgetExcel: TAction
      Caption = #1582#1608#1575#1606#1583#1606' Excel'
      OnExecute = actgetExcelExecute
    end
    object actSelected: TAction
      Caption = #1575#1606#1578#1582#1575#1576
      OnExecute = actSelectedExecute
    end
    object actChangeCustID: TAction
      Caption = #1578#1594#1610#1610#1585' '#1603#1583' '#1605#1588#1578#1585#1610' '
      OnExecute = actChangeCustIDExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 40
    Top = 129
  end
  object srcCustomers: TDataSource
    DataSet = qryCustomers
    OnStateChange = srcCustomersStateChange
    OnDataChange = srcCustomersDataChange
    Left = 656
    Top = 336
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
    Left = 224
    Top = 8
  end
  object qryCustomers: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryCustomersAfterInsert
    AfterEdit = qryCustomersAfterEdit
    BeforePost = qryCustomersBeforePost
    AfterPost = qryCustomersAfterPost
    BeforeDelete = qryCustomersBeforeDelete
    AfterDelete = qryCustomersAfterDelete
    AfterScroll = qryCustomersAfterScroll
    Parameters = <
      item
        Name = 'GroupType'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'CustomerGrpIDForm'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'CustomerGrpIDTO'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM       Customers'
      
        'WHERE    (CustomerGrpID in (SELECT CustomerGrpID FROM CustomersG' +
        'roup WHERE GroupType= :GroupType ))'
      
        '     and (CustomerGrpID between :CustomerGrpIDForm and :Customer' +
        'GrpIDTO)'
      'and(CustID<>0)'
      'ORDER BY CustID'
      '')
    Left = 624
    Top = 168
    object qryCustomersCustomerState: TWordField
      FieldName = 'CustomerState'
    end
    object qryCustomersAccountNumber: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
      FieldName = 'AccountNumber'
      FixedChar = True
      Size = 25
    end
    object qryCustomersCustID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583#1662#1603#1610#1606#1711'/'#1601#1585#1608#1588#1606#1583#1607' '
      FieldName = 'CustID'
      OnChange = qryCustomersCustIDChange
    end
    object qryCustomersCustomerGrpID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1711#1585#1608#1607
      FieldName = 'CustomerGrpID'
    end
    object qryCustomersCustName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1662#1603#1610#1606#1711'/'#1601#1585#1608#1588#1606#1583#1607' '
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
      Required = True
      Size = 12
    end
    object qryCustomers__DetailCode: TStringField
      Tag = 3
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
      Precision = 19
    end
    object qryCustomersServiceCalcType: TWordField
      Tag = 3
      DisplayLabel = #1606#1581#1608#1607' '#1605#1581#1575#1587#1576#1607' '#1582#1583#1605#1575#1578
      FieldName = 'ServiceCalcType'
      OnGetText = qryCustomersServiceCalcTeGetText
    end
    object qryCustomersServicePrice: TBCDField
      Tag = 3
      DisplayLabel = #1606#1585#1582' '#1582#1583#1605#1575#1578
      FieldName = 'ServicePrice'
      currency = True
      Precision = 19
    end
    object qryCustomersEconomicNumber: TStringField
      Tag = 3
      DisplayLabel = #1603#1583' '#1575#1602#1578#1589#1575#1583#1610
      FieldName = 'EconomicNumber'
      Required = True
    end
    object qryCustomersNationalID: TStringField
      DisplayLabel = #1603#1583' '#1605#1604#1610
      FieldName = 'NationalID'
      Required = True
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
      DisplayLabel = #1608#1586#1606
      FieldName = 'InfoWeight'
    end
    object qryCustomersInfoDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'InfoDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryCustomersGrpActionCustomer: TWordField
      Tag = 3
      DisplayLabel = #1711#1585#1608#1607' '#1601#1593#1575#1604#1610#1578
      FieldName = 'GrpActionCustomer'
      OnGetText = qryCustomersGrpActionCustomerGetText
      OnSetText = qryCustomersGrpActionCustomerSetText
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
      DisplayLabel = #1606#1585#1582
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
    object qryCustomersInsertAutoEffectID: TIntegerField
      FieldName = 'InsertAutoEffectID'
    end
    object qryCustomers_InsertAutoEffectID: TStringField
      FieldKind = fkLookup
      FieldName = '_InsertAutoEffectID'
      LookupDataSet = qryPurchaseEffect
      LookupKeyFields = 'EffectID'
      LookupResultField = 'EffectName'
      KeyFields = 'InsertAutoEffectID'
      Size = 200
      Lookup = True
    end
    object qryCustomersEffectID: TIntegerField
      FieldName = 'EffectID'
    end
    object qryCustomers_EffectID: TStringField
      FieldKind = fkLookup
      FieldName = '_EffectID'
      LookupDataSet = qryPurchaseEffect
      LookupKeyFields = 'EffectID'
      LookupResultField = 'EffectName'
      KeyFields = 'EffectID'
      Size = 200
      Lookup = True
    end
    object qryCustomersPurchasePercent: TFloatField
      FieldName = 'PurchasePercent'
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
    object qryCustomersMobile: TStringField
      DisplayLabel = #1607#1605#1585#1575#1607
      FieldName = 'Mobile'
    end
    object qryCustomersTel2: TWideStringField
      FieldName = 'Tel2'
      Size = 30
    end
    object qryCustomersRegisterNumber: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1575#1602#1578#1589#1575#1583#1610
      FieldName = 'RegisterNumber'
      Required = True
      Size = 30
    end
    object qryCustomersArzTypeID: TIntegerField
      FieldName = 'ArzTypeID'
      OnGetText = ALLLookUpGetText
      OnSetText = ALLLookUpSetText
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
    object qryCustomersAccountKind: TIntegerField
      DisplayLabel = #1606#1608#1593' '#1581#1587#1575#1576' '#1576#1575#1606#1603#1610
      FieldName = 'AccountKind'
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
    object qryCustomersCustomerActive: TWordField
      FieldName = 'CustomerActive'
    end
    object qryCustomersCustFirstName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605
      FieldName = 'CustFirstName'
      Size = 30
    end
    object qryCustomersAlternativeCustID: TLargeintField
      DisplayLabel = #1603#1583' '#1662#1585#1608#1606#1583#1607
      FieldName = 'AlternativeCustID'
    end
    object qryCustomersLastUser: TWideStringField
      FieldName = 'LastUser'
    end
    object qryCustomersFirstUser: TWideStringField
      FieldName = 'FirstUser'
    end
    object qryCustomersAlternativeCustID2: TLargeintField
      DisplayLabel = #1603#1583' '#1705#1575#1585#1582#1575#1606#1607' '#1587#1575#1586#1606#1583#1607
      FieldName = 'AlternativeCustID2'
    end
    object qryCustomersPersonID1: TIntegerField
      DisplayLabel = #1603#1583' '#1601#1585#1608#1588#1606#1583#1607
      FieldName = 'PersonID1'
    end
    object qryCustomers_PersonID1: TStringField
      FieldKind = fkLookup
      FieldName = '_PersonID1'
      LookupDataSet = qryLCustomers1
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'PersonID1'
      Size = 200
      Lookup = True
    end
    object qryCustomers_AlternativeCustID: TStringField
      FieldKind = fkLookup
      FieldName = '_AlternativeCustID'
      LookupDataSet = qryLCustomers1
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'AlternativeCustID'
      Size = 200
      Lookup = True
    end
    object qryCustomers_AlternativeCustID2: TStringField
      FieldKind = fkLookup
      FieldName = '_AlternativeCustID2'
      LookupDataSet = qryLCustomers1
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'AlternativeCustID2'
      Size = 200
      Lookup = True
    end
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
    Left = 728
    Top = 239
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 24342
      mmPrintPosition = 0
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 16404
        mmWidth = 203300
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1662#1603#1610#1606#1711'/'#1601#1585#1608#1588#1606#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5376
        mmLeft = 145122
        mmTop = 14552
        mmWidth = 22225
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 0
        mmTop = 14552
        mmWidth = 203300
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
        mmLeft = 186002
        mmTop = 16140
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = #1603#1583' '#1601#1585#1608#1588#1606#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5376
        mmLeft = 187846
        mmTop = 14552
        mmWidth = 13504
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1610#1586#1575#1606' '#1575#1593#1578#1576#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5376
        mmLeft = 105834
        mmTop = 15081
        mmWidth = 20902
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1576#1583#1607#1610' '#1575#1576#1578#1583#1575#1610' '#1587#1575#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5376
        mmLeft = 84667
        mmTop = 15081
        mmWidth = 20902
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1604#1601#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4826
        mmLeft = 63500
        mmTop = 15081
        mmWidth = 20902
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1601#1575#1603#1587
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4826
        mmLeft = 42333
        mmTop = 15081
        mmWidth = 20902
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Email'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4826
        mmLeft = 0
        mmTop = 15081
        mmWidth = 42069
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
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
        mmLeft = 41540
        mmTop = 16140
        mmWidth = 1323
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
        mmLeft = 62706
        mmTop = 16140
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
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
        mmLeft = 83873
        mmTop = 16140
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label22'
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
        mmLeft = 105040
        mmTop = 16140
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label101'
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
        mmLeft = 125942
        mmTop = 16140
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
        mmLeft = 3175
        mmTop = 6350
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label19'
        OnGetText = ppLabel19GetText
        Border.mmPadding = 0
        Caption = ' '#1711#1585#1608#1607' '#1581#1587#1575#1576
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
        mmLeft = 187855
        mmTop = 8996
        mmWidth = 14552
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
        mmLeft = 3175
        mmTop = 0
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578' '#1662#1603#1610#1606#1711'/'#1601#1585#1608#1588#1606#1583#1607
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
        mmLeft = 84402
        mmTop = 6350
        mmWidth = 34131
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
        mmLeft = 186002
        mmTop = 0
        mmWidth = 17463
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
        mmLeft = 127000
        mmTop = 0
        mmWidth = 58738
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'MaxCredit'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6000
        mmLeft = 105834
        mmTop = 0
        mmWidth = 21000
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'FirstBalance'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6000
        mmLeft = 84667
        mmTop = 0
        mmWidth = 21000
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'Fax'
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
        mmLeft = 42333
        mmTop = 0
        mmWidth = 20902
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'Tel'
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
        mmLeft = 63500
        mmTop = 0
        mmWidth = 20902
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'email'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6096
        mmLeft = 265
        mmTop = 0
        mmWidth = 41804
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
        ParentWidth = True
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
        Caption = #1578#1593#1583#1575#1583' '#1662#1603#1610#1606#1711'/'#1601#1585#1608#1588#1606#1583#1607' : '#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5376
        mmLeft = 175948
        mmTop = 1588
        mmWidth = 26585
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
        mmLeft = 158221
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
        mmLeft = 156369
        mmTop = 4763
        mmWidth = 47096
        BandType = 7
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        ParentWidth = True
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
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcCustomers
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 723
    Top = 183
  end
  object ppReport2: TppReport
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
    Left = 736
    Top = 367
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand2: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 24077
      mmPrintPosition = 0
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.mmPadding = 0
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 19050
        mmWidth = 203300
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1662#1603#1610#1606#1711'/'#1601#1585#1608#1588#1606#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 144992
        mmTop = 17198
        mmWidth = 22225
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 0
        mmTop = 17198
        mmWidth = 203300
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer2
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
        mmLeft = 186002
        mmTop = 18785
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = #1603#1583' '#1601#1585#1608#1588#1606#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 187855
        mmTop = 17198
        mmWidth = 13494
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label15'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1604#1601#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 105834
        mmTop = 17727
        mmWidth = 20902
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label16'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1601#1575#1603#1587
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 84667
        mmTop = 17727
        mmWidth = 20902
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label17'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1570#1583#1585#1587
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 0
        mmTop = 17727
        mmWidth = 84402
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer2
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
        mmLeft = 83873
        mmTop = 18785
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label22'
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
        mmLeft = 105040
        mmTop = 18785
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label101'
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
        mmLeft = 125942
        mmTop = 18785
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer2
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
        mmLeft = 2117
        mmTop = 6615
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel35: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label19'
        OnGetText = ppLabel19GetText
        Border.mmPadding = 0
        Caption = ' '#1711#1585#1608#1607' '#1581#1587#1575#1576
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
        mmLeft = 187855
        mmTop = 11642
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
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
        LayerName = Foreground1
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578' '#1662#1603#1610#1606#1711'/'#1601#1585#1608#1588#1606#1583#1607
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
        mmLeft = 84402
        mmTop = 6615
        mmWidth = 34131
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer2
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
        mmLeft = 2117
        mmTop = 0
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand2: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer2
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
        mmLeft = 186002
        mmTop = 0
        mmWidth = 17463
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer2
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
        mmLeft = 127000
        mmTop = 0
        mmWidth = 58738
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'Tel'
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
        mmLeft = 105834
        mmTop = 0
        mmWidth = 21000
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'Fax'
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
        mmLeft = 84667
        mmTop = 0
        mmWidth = 21000
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'Address'
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
        mmHeight = 6096
        mmLeft = 265
        mmTop = 0
        mmWidth = 84138
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppFooterBand2: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line4'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 203300
        BandType = 8
        LayerName = Foreground1
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 9790
      mmPrintPosition = 0
      object ppLabel36: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = #1578#1593#1583#1575#1583' '#1662#1603#1610#1606#1711'/'#1601#1585#1608#1588#1606#1583#1607' : '#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5376
        mmLeft = 175419
        mmTop = 1588
        mmWidth = 26585
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer2
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
        mmHeight = 5821
        mmLeft = 158486
        mmTop = 1323
        mmWidth = 16140
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpBottom
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 157427
        mmTop = 5027
        mmWidth = 46567
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line6'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 203300
        BandType = 7
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
    object ppParameterList2: TppParameterList
    end
  end
  object PopMPrint: TPopupMenu
    AutoHotkeys = maManual
    OnPopup = PopMPrintPopup
    Left = 725
    Top = 119
    object MenuItem1: TMenuItem
      Caption = #1670#1575#1662' 1'
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Caption = #1670#1575#1662' 2'
      OnClick = MenuItem2Click
    end
  end
  object popMnuGroups: TPopupMenu
    AutoHotkeys = maManual
    Left = 729
    Top = 300
    object Mnu_AllClick: TMenuItem
      Caption = #1578#1594#1610#1610#1585' '#1711#1585#1608#1607' '#1585#1583#1610#1601' '#1580#1575#1585#1610
      object MenuItem3: TMenuItem
        Caption = #1604#1610#1587#1578' '#1711#1585#1608#1607' '#1607#1575
        Visible = False
      end
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object N1: TMenuItem
      Action = actChangeCustID
    end
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
    Left = 644
    Top = 224
  end
  object qryPurchaseEffect: TADOQuery
    Active = True
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     EffectID, EffectName'
      'FROM         PurchaseEffect')
    Left = 646
    Top = 279
  end
  object qryCustomersManag: TADOQuery
    Connection = DmF.adcBSell
    AfterInsert = qryCustomersManagAfterInsert
    AfterEdit = qryCustomersManagAfterEdit
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
    Left = 616
    Top = 67
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
      OnGetText = qryCustomersManagStateGetText
      OnSetText = qryCustomersManagStateSetText
    end
    object qryCustomersManagSendKind: TIntegerField
      FieldName = 'SendKind'
    end
    object qryCustomersManagEditDateTime: TDateTimeField
      FieldName = 'EditDateTime'
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
  end
  object dsCustomersManag: TDataSource
    DataSet = qryCustomersManag
    Left = 286
    Top = 18
  end
  object qrySellsInfo46SendKind: TADOQuery
    Connection = DmF.adcBSell
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     *'
      'FROM         SellsInfo'
      'WHERE     SellsType = 46')
    Left = 651
    Top = 391
  end
  object qrySellsInfo52Job: TADOQuery
    Connection = DmF.adcBSell
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     *'
      'FROM         SellsInfo'
      'WHERE     (SellsType = 52)')
    Left = 539
    Top = 191
  end
  object qryCustomersCapacity: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryCustomersCapacityAfterInsert
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
      'FROM         CustomersCapacity'
      'WHERE     (CustID = :CustID )')
    Left = 536
    Top = 251
    object qryCustomersCapacityCustID: TIntegerField
      FieldName = 'CustID'
    end
    object qryCustomersCapacityStuffCode: TLargeintField
      DisplayLabel = #1603#1583
      FieldName = 'StuffCode'
    end
    object qryCustomersCapacity_StuffCode: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1603#1575#1604#1575'/'#1582#1583#1605#1575#1578
      FieldKind = fkLookup
      FieldName = '_StuffCode'
      LookupDataSet = qryStuffCode
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'c_StuffName'
      KeyFields = 'StuffCode'
      Size = 200
      Lookup = True
    end
    object qryCustomersCapacity_UnitName: TStringField
      DisplayLabel = #1608#1575#1581#1583
      FieldKind = fkLookup
      FieldName = '_UnitName'
      LookupDataSet = qryStuffCode
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'UnitName'
      KeyFields = 'StuffCode'
      Lookup = True
    end
    object qryCustomersCapacityAmount: TFloatField
      DisplayLabel = #1578#1593#1583#1575#1583
      FieldName = 'Amount'
    end
    object qryCustomersCapacityPrice: TBCDField
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'Price'
      currency = True
      Precision = 19
    end
    object qryCustomersCapacityRunDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'RunDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryCustomersCapacityStates: TWordField
      DisplayLabel = #1608#1590#1593#1610#1578
      FieldName = 'States'
      OnGetText = qryCustomersCapacityStatesGetText
      OnSetText = qryCustomersCapacityStatesSetText
    end
  end
  object qryStuffCode: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     StuffCoding.c_StuffCode, StuffCoding.c_StuffName, Uni' +
        'ts.UnitName'
      'FROM         StuffCoding INNER JOIN'
      
        '                      StuffGroups ON StuffCoding.GroupID = Stuff' +
        'Groups.GroupID INNER JOIN'
      
        '                      Units ON StuffCoding.n_UnitCode = Units.Un' +
        'itCode'
      'WHERE     (StuffGroups.GroupType IN (1,2,4,5,6,9))')
    Left = 552
    Top = 368
  end
  object srcCustomersCapacity: TDataSource
    DataSet = qryCustomersCapacity
    OnStateChange = srcCustomersCapacityStateChange
    Left = 544
    Top = 304
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
    Left = 544
    Top = 416
    object qryCustomersOtherGroupsCustID: TIntegerField
      FieldName = 'CustID'
    end
    object qryCustomersOtherGroupsCustomerGrpID: TIntegerField
      FieldName = 'CustomerGrpID'
    end
  end
  object qryLCustomers1: TADOQuery
    Active = True
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT        CustID, CustName + ISNULL(CustFirstName, '#39#39') AS Cu' +
        'stName'
      'FROM            Customers')
    Left = 120
    Top = 160
  end
end

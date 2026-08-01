inherited MakeDesignFormsF: TMakeDesignFormsF
  Top = 195
  Caption = 'Make Design Forms'
  ClientHeight = 563
  ClientWidth = 778
  OnResize = FormResize
  ExplicitWidth = 794
  ExplicitHeight = 602
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 522
    Width = 778
    TabOrder = 1
    ExplicitTop = 523
    inherited BtnReject: TBitBtn
      TabOrder = 1
    end
    object DBNavigator1: TDBNavigator
      Left = 230
      Top = 1
      Width = 86
      Height = 39
      DataSource = srcDesignForms
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alClient
      Flat = True
      TabOrder = 2
    end
    object newPanel: TPanel
      Left = 474
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
        Width = 75
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
        Left = 81
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
      Left = 304
      Top = 1
      Width = 158
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 3
      ExplicitLeft = 316
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
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 83
      Top = 7
      Width = 72
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
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 157
      Top = 7
      Width = 72
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actSearch_
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 5
    end
  end
  inherited Panel2: TPanel
    Width = 778
    TabOrder = 2
    inherited lblCaption: TLabel
      Height = 16
      ExplicitLeft = 674
    end
  end
  inherited Panel3: TPanel
    Top = 174
    Width = 778
    Height = 348
    TabOrder = 0
    ExplicitTop = 174
    ExplicitHeight = 349
    object Panel4: TPanel
      Left = 2
      Top = 2
      Width = 778
      Height = 345
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 786
      object PnlGetRptColumns: TPanel
        Left = 1
        Top = 310
        Width = 776
        Height = 34
        Align = alBottom
        TabOrder = 1
        ExplicitWidth = 784
        object okPanel2: TPanel
          Left = 220
          Top = 1
          Width = 158
          Height = 32
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            158
            32)
          object BitBtn12: TBitBtn
            Left = 3
            Top = 4
            Width = 75
            Height = 25
            Action = DataSetCancel2
            Anchors = [akTop, akRight]
            Caption = #1575#1606#1589#1585#1575#1601
            TabOrder = 1
          end
          object BitBtn13: TBitBtn
            Left = 80
            Top = 4
            Width = 75
            Height = 25
            Action = DataSetPost2
            Anchors = [akTop, akRight]
            Caption = #1578#1575#1610#1610#1583
            TabOrder = 0
          end
        end
        object newPanel2: TPanel
          Left = 366
          Top = 1
          Width = 405
          Height = 32
          Align = alRight
          AutoSize = True
          BevelOuter = bvNone
          TabOrder = 1
          Visible = False
          ExplicitLeft = 378
          object BitBtn10: TBitBtn
            AlignWithMargins = True
            Left = 327
            Top = 3
            Width = 75
            Height = 26
            Action = DataSetInsert2
            Align = alRight
            Caption = #1580#1583#1610#1583
            TabOrder = 0
          end
          object BitBtn14: TBitBtn
            AlignWithMargins = True
            Left = 246
            Top = 3
            Width = 75
            Height = 26
            Action = DataSetEdit2
            Align = alRight
            Caption = #1608#1610#1585#1575#1610#1588
            TabOrder = 1
          end
          object btnDelete: TBitBtn
            AlignWithMargins = True
            Left = 165
            Top = 3
            Width = 75
            Height = 26
            Action = actDelete
            Align = alRight
            Caption = #1581#1584#1601
            TabOrder = 2
          end
          object BitBtn11: TBitBtn
            AlignWithMargins = True
            Left = 84
            Top = 3
            Width = 75
            Height = 26
            Action = actRowNo
            Align = alRight
            Caption = #1608#1740#1585#1575#1740#1588' '#1585#1583#1740#1601' '
            TabOrder = 3
          end
          object BitBtn15: TBitBtn
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 75
            Height = 26
            Action = actCopyPaste
            Align = alRight
            Caption = #1705#1662#1740' '#1587#1591#1585
            TabOrder = 4
          end
        end
        object BitBtn6: TBitBtn
          AlignWithMargins = True
          Left = 2
          Top = 7
          Width = 72
          Height = 20
          Margins.Left = 1
          Margins.Top = 6
          Margins.Right = 1
          Margins.Bottom = 6
          Action = actSort2
          Align = alLeft
          Caption = #1578#1585#1578#1610#1576
          TabOrder = 2
        end
        object BitBtn9: TBitBtn
          AlignWithMargins = True
          Left = 76
          Top = 7
          Width = 72
          Height = 20
          Margins.Left = 1
          Margins.Top = 6
          Margins.Right = 1
          Margins.Bottom = 6
          Action = actSearch_2
          Align = alLeft
          Caption = #1580#1587#1578#1580#1608
          TabOrder = 3
        end
      end
      object pnlDown: TPanel
        Left = 1
        Top = 191
        Width = 772
        Height = 118
        Align = alBottom
        TabOrder = 2
        ExplicitTop = 192
        ExplicitWidth = 784
        object GroupBox2: TGroupBox
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 236
          Height = 110
          Align = alLeft
          Caption = 'ItemsValue / ValueUnchecked'
          TabOrder = 0
          object dbmmoItemsValue: TDBMemo
            Tag = 111
            AlignWithMargins = True
            Left = 5
            Top = 18
            Width = 226
            Height = 87
            Align = alClient
            BiDiMode = bdLeftToRight
            Color = clSkyBlue
            DataField = 'ItemsValue'
            DataSource = srcDesignFormsItems
            ParentBiDiMode = False
            TabOrder = 0
          end
        end
        object GroupBox1: TGroupBox
          AlignWithMargins = True
          Left = 246
          Top = 4
          Width = 221
          Height = 110
          Align = alLeft
          Caption = 'ItemsString  /  SQL 4 LookUp / ValueChecked'
          TabOrder = 1
          object dbmmoItemsString: TDBMemo
            Tag = 111
            AlignWithMargins = True
            Left = 5
            Top = 18
            Width = 211
            Height = 87
            Align = alClient
            BiDiMode = bdLeftToRight
            Color = clMoneyGreen
            DataField = 'ItemsString'
            DataSource = srcDesignFormsItems
            ParentBiDiMode = False
            TabOrder = 0
          end
        end
        object Memo1: TMemo
          Left = 470
          Top = 1
          Width = 305
          Height = 116
          Align = alClient
          Alignment = taRightJustify
          Color = clInactiveCaption
          Ctl3D = False
          Lines.Strings = (
            'FieldName(ColumnName) = '#39'FormNo'#39'        then '
            'GetANewCode'
            'FieldName(ColumnName) = %*'#39'Date'#39'*%  then CurrentDate')
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
        end
      end
      object Panel5: TPanel
        Left = 1
        Top = 1
        Width = 112
        Height = 190
        Align = alLeft
        TabOrder = 3
        ExplicitHeight = 191
        object chklstCheckList: TCheckListBox
          Left = 1
          Top = 1
          Width = 110
          Height = 189
          Align = alClient
          ItemHeight = 13
          Items.Strings = (
            #1606#1605#1575#1740#1588' '#1583#1585' '#1604#1740#1587#1578
            #1606#1605#1575#1740#1588' '#1583#1585' '#1605#1581#1583#1608#1583#1607)
          TabOrder = 0
          OnClick = chklstCheckListClick
        end
      end
      object grdItems: TCedarDbgrid
        Left = 113
        Top = 1
        Width = 660
        Height = 190
        Align = alClient
        Color = clCream
        DataSource = srcDesignFormsItems
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
        OddRowColor = clInfoBk
        RowHeight = 18
        SearchPanel.Enabled = True
        SearchPanel.FilterOnTyping = True
        SortLocal = True
        STFilter.Local = True
        TabOrder = 0
        OnDrawColumnCell = grdItemsDrawColumnCell
        OnEnter = DBGrid1Enter
        ActiveSearchPanel = False
        SelectFooterIndex = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'RowNo'
            Footers = <>
            Width = 37
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ColumnName'
            Footers = <>
            Width = 64
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ColumnDisplayName'
            Footers = <>
            Width = 64
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ColumnDataType'
            Footers = <>
            Width = 64
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DBType'
            Footers = <>
            Width = 43
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ItemsString'
            Footers = <>
            Width = 64
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ItemsValue'
            Footers = <>
            Width = 64
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ParentName'
            Footers = <>
            Width = 64
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Topx'
            Footers = <>
            Width = 31
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Leftx'
            Footers = <>
            Width = 33
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Width'
            Footers = <>
            Width = 34
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Height'
            Footers = <>
            Width = 34
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Tag'
            Footers = <>
            Width = 27
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TabOrder'
            Footers = <>
            Width = 53
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'IsRequired'
            Footers = <>
            Width = 64
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Align'
            Footers = <>
            Width = 26
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ID'
            Footers = <>
            Width = 15
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DesignFormsID'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DefaultValue'
            Footers = <>
            Width = 64
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CheckList'
            Footers = <>
            Width = 51
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object Panel1: TPanel [3]
    Left = 0
    Top = 53
    Width = 778
    Height = 121
    Align = alTop
    TabOrder = 3
    ExplicitWidth = 790
    object Label2: TLabel
      Left = 300
      Top = 7
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Caption = #1603#1583' '#1601#1585#1605
      FocusControl = DBEdit1
    end
    object Label3: TLabel
      Left = 300
      Top = 33
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = #1606#1575#1605' '#1601#1585#1605
      FocusControl = DBEdit2
    end
    object DBEdit1: TDBEdit
      Left = 220
      Top = 3
      Width = 78
      Height = 21
      DataField = 'FormNo'
      DataSource = srcDesignForms
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 28
      Top = 29
      Width = 270
      Height = 21
      DataField = 'FormCaption'
      DataSource = srcDesignForms
      TabOrder = 2
    end
    object DBEdit62: TDBEdit
      Left = 28
      Top = 55
      Width = 270
      Height = 19
      Ctl3D = False
      DataField = 'FromDate'
      DataSource = srcDesignForms
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
    object DBGrid1: TCedarDbgrid
      Left = 339
      Top = 1
      Width = 450
      Height = 119
      Align = alRight
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = clCream
      DataSource = srcDesignForms
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
      HorzScrollBar.ExtraPanel.NavigatorButtons = [nbFirstEh, nbPriorEh, nbNextEh, nbLastEh, nbRefreshEh]
      HorzScrollBar.ExtraPanel.Visible = True
      IndicatorTitle.ShowDropDownSign = True
      IndicatorTitle.TitleButton = True
      OddRowColor = clInfoBk
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      RowHeight = 18
      SearchPanel.Enabled = True
      SearchPanel.FilterOnTyping = True
      SortLocal = True
      STFilter.Local = True
      TabOrder = 0
      OnEnter = DBGrid1Enter
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ID'
          Footers = <>
          Width = 19
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'FormNo'
          Footers = <>
          Width = 40
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'FormCaption'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'FromDate'
          Footers = <>
          Width = 53
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'FromType'
          Footers = <>
          Width = 53
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TableName'
          Footers = <>
          Width = 60
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'MenuName'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Note'
          Footers = <>
          Width = 29
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'WorkflowID'
          Footers = <>
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  inherited ActionList: TActionList
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcDesignForms
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcDesignForms
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcDesignForms
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcDesignForms
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcDesignForms
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
    end
    object actSendExel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object DataSetInsert2: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      DataSource = srcDesignFormsItems
    end
    object DataSetDelete2: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
      DataSource = srcDesignFormsItems
    end
    object DataSetEdit2: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      DataSource = srcDesignFormsItems
    end
    object DataSetPost2: TDataSetPost
      Category = 'Dataset'
      Caption = #1578#1575#1610#1610#1583
      DataSource = srcDesignFormsItems
    end
    object DataSetCancel2: TDataSetCancel
      Category = 'Dataset'
      Caption = #1575#1606#1589#1585#1575#1601
      DataSource = srcDesignFormsItems
    end
    object actSort2: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSort2Execute
    end
    object actCopy: TAction
      Caption = #1603#1662#1610' '#1601#1585#1605
      OnExecute = actCopyExecute
    end
    object actDelete: TAction
      Caption = #1581#1584#1601
      OnExecute = actDeleteExecute
    end
    object actRowNo: TAction
      Caption = #1608#1740#1585#1575#1740#1588' '#1585#1583#1740#1601' '
      OnExecute = actRowNoExecute
    end
    object actCopyPaste: TAction
      Caption = #1705#1662#1740' '#1587#1591#1585
      OnExecute = actCopyPasteExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 216
    Top = 1
    Bitmap = {
      494C010105000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006BAD840021842900218429006BAD8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006BAD8400218429002184
      290021842900218429002184290094DE8C0039B5520021842900218429002184
      290021842900218429006BAD8400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A5630039B5520039B5
      520039B5520039B5520039B5520039B5520039B5520039B5520039B5520039B5
      520039B5520039B5520021842900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A5630094DE8C0094DE
      8C0094DE8C0094DE8C0094DE8C0094DE8C0039B5520094DE8C0094DE8C0094DE
      8C0094DE8C0094DE8C0021842900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006BAD840063A5630063A5
      630063A5630063A5630063A5630094DE8C0039B5520021842900218429002184
      290021842900218429006BAD8400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006BAD840063A5630063A563006BAD8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031000000420000005200000052000000420000003100000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000052A54A00009408006BB563000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000042
      000000420000007B0800009C0800009C0800009C0800009C0800007B0800004A
      0000004A00000000000000000000000000000000000000000000000000000000
      00000000000018B5290000BD2100009400008CBD7B0000000000000000000000
      0000000000000000000000000000000000000000000029ADD60031B5DE0021AD
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000004A08000063
      080000A5100000A50800009C0800009C0800009C0800009C080000A5080000A5
      0800006B08000031000000000000000000000000000000000000000000000000
      00006BB5630000BD210000C6290000A50000319C310000000000000000000000
      0000000000000000000000000000000000000000000029ADD6009CDEEF0084EF
      FF004AC6E70021ADD60018A5C60018A5C60018A5C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000004A0800006B100008A5
      210008A51800009C0800009C0800009C0800009C0800009C0800009C0800009C
      080000A50800006B0800004A0000000000000000000000000000000000000000
      0000009C100000CE310000C6290000AD100000940000A5C69400000000000000
      0000000000000000000000000000000000000000000029ADD60052BDE7009CFF
      FF0094FFFF0073DEF70073DEF70073DEF70073DEF7004AC6E70021ADD60018A5
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000004A080010AD310008AD
      290008A5180000A510004AC65200E7F7EF00D6F7DE0010AD2100009C0800009C
      0800009C080000A50800004A00000000000000000000000000000000000052A5
      4A0000CE310000C6290000FF630000CE3100009C0000008C0000000000000000
      0000000000000000000000000000000000000000000029ADD60052BDE700ADFF
      FF008CF7FF008CEFFF008CEFFF008CEFFF0073DEF70073DEF70073DEF7004AC6
      EF0021ADD6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000005200000884210010B5420010A5
      3100089C180042BD4A00F7FFF700FFFFFF0084D68C0000A51000009C0800009C
      0800009C080000A50800007B08000042000000000000000000000000000018B5
      290029CE5A0000FF630000FF630000BD210000C62900009400008CBD7B000000
      0000000000000000000000000000000000000000000029ADD60029ADD600ADDE
      EF0094F7FF0094F7FF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DE
      F7004AC6EF00000000000000000000000000000000006B84C6000021A5000021
      A5000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
      A5000021A5000021A5006B84C600000000000052000010A5420018B54A0010AD
      310042BD4A00F7FFF700FFFFFF0073D67B00009C0800009C0800009C0800009C
      0800009C080000A50800009408000042000000000000000000000000000018C6
      420000FF630000FF630052A54A0052A54A0000C6290000A50000319C31000000
      0000000000000000000000000000000000000000000029ADD60073DEF70029AD
      D6009CFFFF008CF7FF008CF7FF008CF7FF008CEFFF008CEFFF008CEFFF0073DE
      F70073DEF70018A5C6000000000000000000000000000021A5009494F7000029
      E7000029E7000029E7000029E7000029E7000029E7000029E7000029E7000029
      E7000029E7000029E7000021A50000000000006B100021B5520021B5520073D6
      9400EFFFEF00FFFFFF00F7FFF700B5EFC600B5E7BD00ADE7B500ADE7B500ADE7
      B500ADE7B500009C0800009C0800004A00000000000000000000000000000000
      000000AD210000AD2100000000000000000000AD180000C6290000940000A5C6
      9400000000000000000000000000000000000000000029ADD60094F7FF0029AD
      D600ADDEEF00A5EFF700A5EFF700A5F7FF008CEFFF008CEFFF008CEFFF0073DE
      F7000073080018A5C6000000000000000000000000000021A500B5C6FF009CBD
      FF009CBDFF009CB5FF009CB5FF009CB5FF00638CF700638CF700638CF700638C
      F700526BF700526BF7000021A500000000000873100039BD6B0029BD5A00BDEF
      CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00009C0800009C0800005200000000000000000000000000000000
      00000000000000000000000000000000000031B5420000C62900009C0000008C
      0000000000000000000000000000000000000000000029ADD6009CFFFF0073DE
      F70029ADD60018A5C60018A5C60018A5C600ADDEEF008CF7FF0084EFFF000073
      08005AE78C000073080018A5C60000000000000000006B84C6000021A5000021
      A5000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
      A5000021A5000021A5006B84C600000000000873100052C67B0042C6730029BD
      5A00A5E7BD00FFFFFF00F7FFF70084DEA50042BD5A0042BD5A0042BD5A0042BD
      5A0042BD5A0008A51800009C0800004200000000000000000000000000000000
      0000000000000000000000000000000000000000000000B5210000C629000094
      00008CBD7B000000000000000000000000000000000029ADD6009CFFFF0094F7
      FF0073DEF70073DEF70073DEF7006BDEF70029ADD600ADDEEF000073080052D6
      7B0042D66B0031C64A0000730800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000087310004ABD6B0084DEA50021B5
      520021B5520094DEB500FFFFFF00E7F7EF0052C6730010AD310010AD310010AD
      310008A5290008A51800008C0800004200000000000000000000000000000000
      0000000000000000000000000000000000000000000052A54A0000C6290029AD
      390031B542000000000000000000000000000000000029ADD6009CFFFF0094F7
      FF0094F7FF0094F7FF0094F7FF0073DEF70073DEF70029ADD60018A5C600108C
      210031C64A00109C210018A5C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021A53100ADE7C6006BCE
      8C0010AD4A0018B54A008CDEAD00FFFFFF00F7FFF70029BD520010A5310008A5
      290008A5210008AD1800006B0800000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000029AD4A005AE7
      A50029AD39008CBD7B0000000000000000000000000029ADD600C6FFFF0094FF
      FF009CFFFF00D6FFFF00D6FFFF008CEFFF0094EFFF0073DEF70073DEF7000884
      100018AD29000884100000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021A5310052C67300BDEF
      D60063CE8C0021B5520018B5520094DEB500ADE7C60021B5520010AD390010AD
      310010AD3100109C2100006B0800000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000031B5420000D6
      42008CBD7B000000000000000000000000000000000021ADD6009CDEEF00C6FF
      FF00C6FFFF009CDEEF0018ADD60018A5C60018A5C60018A5C60018A5C600088C
      100008A518000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000109C21006BCE
      8C00D6F7E7009CE7B50052C67B0039BD630029BD5A0031BD630031BD630021BD
      4A0010A531000063080000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5C6
      940000000000000000000000000000000000000000000000000031B5DE0029AD
      D60018A5C60018A5C60000000000000000000000000000000000088C100008A5
      1800088410000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004ABD
      63004ABD630094DEB500BDEFD600A5E7C6008CDEAD007BDE9C004AC67B00189C
      3900189C39000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000730800087B0800088C1000088C1000087B
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000021A5310039B5520042BD630042BD630029A54A00108C29000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FC3F000000000000
      FC3F000000000000FC3F000000000000FC3F000000000000FC3F000000000000
      8001000000000000800100000000000080010000000000008001000000000000
      FC3F000000000000FC3F000000000000FC3F000000000000FC3F000000000000
      FC3F000000000000FFFF000000000000FFFFF81FF8FFFFFFFFFFE007F87F8FFF
      FFFFC003F07F807FFFFF8001F03F800FFFFF8001E03F8007FFFF0000E01F8007
      80010000E01F800380010000F30F800380010000FF0F800180010000FF878001
      FFFF0000FF878001FFFF8001FFC38003FFFF8001FFC78007FFFFC003FFEFC3C7
      FFFFE007FFFFFE0FFFFFF81FFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object qryDesignForms: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryDesignFormsAfterInsert
    BeforePost = qryDesignFormsBeforePost
    AfterPost = qryDesignFormsAfterPost
    BeforeDelete = qryDesignFormsBeforeDelete
    AfterDelete = qryDesignFormsAfterDelete
    AfterScroll = qryDesignFormsAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT     *'
      'FROM            Dsn.DesignForms'
      ''
      '')
    Left = 644
    Top = 95
    object qryDesignFormsID: TAutoIncField
      Tag = 3
      FieldName = 'ID'
      ReadOnly = True
    end
    object qryDesignFormsFormNo: TIntegerField
      Tag = 3
      FieldName = 'FormNo'
    end
    object qryDesignFormsFormCaption: TWideStringField
      Tag = 3
      FieldName = 'FormCaption'
      Size = 100
    end
    object qryDesignFormsFromDate: TStringField
      Tag = 3
      FieldName = 'FromDate'
      FixedChar = True
      Size = 10
    end
    object qryDesignFormsFromType: TIntegerField
      Tag = 3
      FieldName = 'FromType'
    end
    object qryDesignFormsTableName: TWideStringField
      Tag = 3
      FieldName = 'TableName'
      Size = 30
    end
    object qryDesignFormsMenuName: TWideStringField
      Tag = 3
      FieldName = 'MenuName'
      Size = 30
    end
    object qryDesignFormsNote: TWideStringField
      Tag = 3
      FieldName = 'Note'
      Size = 1000
    end
    object qryDesignFormsWorkflowID: TIntegerField
      Tag = 3
      FieldName = 'WorkflowID'
    end
  end
  object srcDesignForms: TDataSource
    DataSet = qryDesignForms
    OnStateChange = srcDesignFormsStateChange
    Left = 504
    Top = 112
  end
  object qryDesignFormsItems: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterInsert = qryDesignFormsItemsAfterInsert
    BeforeEdit = qryDesignFormsItemsBeforeEdit
    BeforePost = qryDesignFormsItemsBeforePost
    BeforeDelete = qryDesignFormsItemsBeforeDelete
    AfterScroll = qryDesignFormsItemsAfterScroll
    Parameters = <
      item
        Name = 'ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'SELECT       *'
      'FROM            Dsn.DesignFormsItems'
      'WHERE        (DesignFormsID = :ID )'
      'ORDER BY RowNo')
    Left = 510
    Top = 255
    object qryDesignFormsItemsRowNo: TIntegerField
      Tag = 3
      FieldName = 'RowNo'
    end
    object qryDesignFormsItemsColumnName: TWideStringField
      Tag = 3
      FieldName = 'ColumnName'
      Size = 30
    end
    object qryDesignFormsItemsColumnDisplayName: TWideStringField
      Tag = 3
      FieldName = 'ColumnDisplayName'
      Size = 30
    end
    object qryDesignFormsItemsColumnDataType: TWideStringField
      Tag = 3
      FieldName = 'ColumnDataType'
      Size = 30
    end
    object qryDesignFormsItemsDBType: TWordField
      Tag = 3
      FieldName = 'DBType'
      OnGetText = qryDesignFormsItemsDBTypeGetText
    end
    object qryDesignFormsItemsItemsString: TWideStringField
      Tag = 3
      DisplayLabel = 'ItemsString/ValueChecked'
      FieldName = 'ItemsString'
      Size = 1000
    end
    object qryDesignFormsItemsItemsValue: TWideStringField
      Tag = 3
      DisplayLabel = 'ItemsValue/ValueUnchecked'
      FieldName = 'ItemsValue'
      Size = 1000
    end
    object qryDesignFormsItemsParentName: TWideStringField
      Tag = 3
      FieldName = 'ParentName'
      Size = 30
    end
    object qryDesignFormsItemsTopx: TSmallintField
      Tag = 3
      FieldName = 'Topx'
    end
    object qryDesignFormsItemsLeftx: TSmallintField
      Tag = 3
      FieldName = 'Leftx'
    end
    object qryDesignFormsItemsWidth: TSmallintField
      Tag = 3
      FieldName = 'Width'
    end
    object qryDesignFormsItemsHeight: TSmallintField
      Tag = 3
      FieldName = 'Height'
    end
    object qryDesignFormsItemsTag: TIntegerField
      Tag = 3
      FieldName = 'Tag'
    end
    object qryDesignFormsItemsTabOrder: TSmallintField
      Tag = 3
      FieldName = 'TabOrder'
    end
    object qryDesignFormsItemsIsRequired: TBooleanField
      Tag = 3
      FieldName = 'IsRequired'
    end
    object qryDesignFormsItemsAlign: TWordField
      Tag = 3
      FieldName = 'Align'
      OnGetText = qryDesignFormsItemsAlignGetText
    end
    object qryDesignFormsItemsID: TAutoIncField
      Tag = 3
      FieldName = 'ID'
      ReadOnly = True
    end
    object qryDesignFormsItemsDesignFormsID: TIntegerField
      Tag = 3
      FieldName = 'DesignFormsID'
    end
    object qryDesignFormsItemsDefaultValue: TWideStringField
      FieldName = 'DefaultValue'
      Size = 200
    end
    object qryDesignFormsItemsCheckList: TLargeintField
      FieldName = 'CheckList'
    end
  end
  object srcDesignFormsItems: TDataSource
    DataSet = qryDesignFormsItems
    OnStateChange = srcDesignFormsItemsStateChange
    Left = 670
    Top = 255
  end
end

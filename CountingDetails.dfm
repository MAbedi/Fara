inherited CountingDetailsF: TCountingDetailsF
  Left = 400
  Top = 190
  Caption = #1579#1576#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1588#1605#1575#1585#1588' '#1575#1606#1576#1575#1585' '#1711#1585#1583#1575#1606#1610' '#1582#1575#1589
  ClientHeight = 626
  ClientWidth = 824
  OldCreateOrder = True
  Position = poDesigned
  ExplicitWidth = 840
  ExplicitHeight = 665
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 585
    Width = 824
    TabOrder = 2
    ExplicitTop = 585
    ExplicitWidth = 824
    DesignSize = (
      824
      41)
    object DBNavigator1: TDBNavigator [0]
      Left = 470
      Top = 9
      Width = 108
      Height = 25
      DataSource = srcCounting
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Anchors = [akLeft, akTop, akRight, akBottom]
      Flat = True
      TabOrder = 5
    end
    object okPanel: TPanel [1]
      Left = 578
      Top = 1
      Width = 84
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 6
      Visible = False
      object BitBtn7: TBitBtn
        Left = 6
        Top = 8
        Width = 75
        Height = 25
        Caption = #1578#1575#1610#1610#1583
        TabOrder = 0
        OnClick = BitBtn7Click
      end
    end
    inherited BtnReject: TBitBtn
      TabOrder = 4
    end
    object newPanel: TPanel
      Left = 662
      Top = 1
      Width = 161
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        161
        39)
      object BitBtn3: TBitBtn
        Left = 83
        Top = 8
        Width = 75
        Height = 25
        Action = actInsert
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 5
        Top = 8
        Width = 75
        Height = 25
        Action = actEdit
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
    end
    object BitBtn6: TBitBtn
      Left = 316
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Caption = #1670#1600#1600#1600#1575#1662
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      Left = 238
      Top = 8
      Width = 75
      Height = 25
      Action = actSendExel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      Left = 82
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 3
    end
    object BitBtn5: TBitBtn
      Left = 160
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 7
    end
    object BitBtn8: TBitBtn
      Left = 394
      Top = 8
      Width = 75
      Height = 25
      Caption = #1587#1575#1610#1585'...'
      TabOrder = 8
      OnClick = BitBtn8Click
    end
  end
  inherited Panel2: TPanel
    Width = 824
    Height = 55
    TabOrder = 0
    ExplicitWidth = 824
    ExplicitHeight = 55
    DesignSize = (
      824
      55)
    inherited ImgTemplate: TImage
      Left = 819
      ExplicitLeft = 786
    end
    inherited lblCaption: TLabel
      Left = 716
      Height = 35
      ExplicitLeft = 716
    end
    object LblStore: TLabel
      Left = 5
      Top = 29
      Width = 30
      Height = 23
      Alignment = taRightJustify
      Caption = #1575#1606#1576#1575#1585
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object dbtxtState: TDBText
      Left = 349
      Top = 32
      Width = 123
      Height = 21
      Alignment = taCenter
      Anchors = [akTop]
      DataField = 'State'
      DataSource = srcCounting
      Font.Charset = ARABIC_CHARSET
      Font.Color = 8684799
      Font.Height = -15
      Font.Name = 'Jadid'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      ExplicitLeft = 333
    end
  end
  inherited Panel3: TPanel
    Top = 55
    Width = 824
    Height = 530
    TabOrder = 1
    ExplicitTop = 55
    ExplicitWidth = 824
    ExplicitHeight = 530
    object Panel1: TPanel
      Left = 626
      Top = 2
      Width = 196
      Height = 526
      Align = alRight
      BevelInner = bvRaised
      TabOrder = 0
      object GroupBox2: TGroupBox
        Left = 2
        Top = 56
        Width = 192
        Height = 192
        Align = alTop
        Caption = ' '#1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610' '
        TabOrder = 0
        DesignSize = (
          192
          192)
        object DBMemo1: TDBMemo
          Left = 4
          Top = 18
          Width = 174
          Height = 160
          Anchors = [akLeft, akTop, akRight]
          Color = 15461355
          Ctl3D = False
          DataField = 'Note'
          DataSource = srcCounting
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
      end
      object Panel4: TPanel
        Left = 2
        Top = 2
        Width = 192
        Height = 54
        Align = alTop
        TabOrder = 1
        object Label8: TLabel
          Left = 117
          Top = 9
          Width = 50
          Height = 13
          Caption = #1588#1605#1575#1585#1607' '#1601#1585#1605
        end
        object LblReciptDate: TLabel
          Left = 115
          Top = 33
          Width = 41
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = #1578#1575#1585#1610#1582' '#1601#1585#1605
        end
        object DBEdit3: TDBEdit
          Left = 40
          Top = 5
          Width = 71
          Height = 21
          DataField = 'CountNumber'
          DataSource = srcCounting
          TabOrder = 0
        end
        object btnCountNumber: TBitBtn
          Left = 16
          Top = 5
          Width = 22
          Height = 21
          Action = actInsert
          Caption = '...'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
        object DBEditDate: TDBEdit
          Left = 40
          Top = 30
          Width = 70
          Height = 19
          Color = 15461355
          Ctl3D = False
          DataField = 'CountDate'
          DataSource = srcCounting
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
        end
      end
      object grpNotFound: TGroupBox
        Left = 2
        Top = 368
        Width = 192
        Height = 120
        Align = alClient
        Caption = #1603#1575#1604#1575' '#1607#1575#1610' '#1610#1575#1601#1578' '#1606#1588#1583#1607' '#1583#1585' '#1588#1605#1575#1585#1588'  '#1602#1576#1604
        TabOrder = 2
        Visible = False
        object Memo1: TMemo
          Left = 2
          Top = 15
          Width = 188
          Height = 103
          Align = alClient
          Color = clGradientInactiveCaption
          Lines.Strings = (
            'Memo1')
          TabOrder = 0
        end
      end
      object Panel11: TPanel
        Left = 2
        Top = 332
        Width = 192
        Height = 36
        Align = alTop
        TabOrder = 3
        object Label1: TLabel
          AlignWithMargins = True
          Left = 109
          Top = 4
          Width = 79
          Height = 28
          Align = alRight
          Alignment = taRightJustify
          AutoSize = False
          Caption = #1662#1740#1588' '#1601#1585#1590' '#1588#1605#1575#1585#1607' '#1585#1575#1607#1606#1605#1575
          WordWrap = True
          ExplicitLeft = 108
        end
        object medtControlCode: TMaskEdit
          AlignWithMargins = True
          Left = 4
          Top = 7
          Width = 99
          Height = 22
          Margins.Top = 6
          Margins.Bottom = 6
          Align = alClient
          TabOrder = 0
          Text = '0'
          ExplicitHeight = 21
        end
      end
      object GroupBox1: TGroupBox
        Left = 2
        Top = 248
        Width = 192
        Height = 42
        Align = alTop
        Caption = ' '#1580#1587#1578#1580#1608#1610' '#1587#1585#1610#1593' '
        TabOrder = 4
        object cmbQuickSearch: TComboBox
          Left = 2
          Top = 15
          Width = 188
          Height = 21
          Align = alClient
          TabOrder = 0
          OnChange = cmbQuickSearchChange
        end
      end
      object GroupBox3: TGroupBox
        Left = 2
        Top = 290
        Width = 192
        Height = 42
        Align = alTop
        Caption = ' '#1580#1587#1578#1580#1608#1610' '#1705#1575#1604#1575
        TabOrder = 5
        object cmbBtn: TComboBox
          Left = 2
          Top = 15
          Width = 188
          Height = 21
          Align = alClient
          TabOrder = 0
          Text = #1606#1583#1575#1585#1583
          OnChange = cmbQuickSearchChange
          Items.Strings = (
            #1606#1583#1575#1585#1583
            #1580#1587#1578#1580#1608' '#1576#1585#1575#1740' '#1579#1576#1578
            #1580#1587#1578#1580#1608' '#1575#1586' '#1579#1576#1578' '#1588#1583#1607' '#1607#1575
            #1580#1587#1578#1580#1608#1740' '#1575#1582#1578#1604#1575#1601' '#1588#1605#1575#1585#1588' '#1575#1608#1604' '#1608' '#1583#1608#1605)
        end
      end
      object Panel12: TPanel
        Left = 2
        Top = 488
        Width = 192
        Height = 36
        Align = alBottom
        TabOrder = 6
        DesignSize = (
          192
          36)
        object Label4: TLabel
          Left = 130
          Top = 12
          Width = 60
          Height = 13
          Alignment = taRightJustify
          Anchors = [akLeft, akBottom]
          AutoSize = False
          Caption = #1601#1575#1610#1604' '#1662#1610#1608#1587#1578#1610
        end
        object DBEdit7: TDBEdit
          Left = 5
          Top = 9
          Width = 123
          Height = 19
          Anchors = [akLeft, akBottom]
          Color = 15461355
          Ctl3D = False
          DataField = 'AttachFileName'
          DataSource = srcCounting
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
    object Panel5: TPanel
      Left = 2
      Top = 2
      Width = 624
      Height = 526
      Align = alClient
      TabOrder = 1
      object Panel7: TPanel
        Left = 1
        Top = 1
        Width = 622
        Height = 479
        Align = alClient
        BevelInner = bvLowered
        BevelOuter = bvLowered
        BevelWidth = 2
        TabOrder = 0
        object StatusBar1: TStatusBar
          Left = 4
          Top = 456
          Width = 614
          Height = 19
          Panels = <
            item
              Width = 150
            end
            item
              Width = 150
            end
            item
              Width = 150
            end
            item
              Width = 150
            end>
        end
        object pb1: TProgressBar
          Left = 4
          Top = 439
          Width = 614
          Height = 17
          Align = alBottom
          TabOrder = 2
        end
        object DBGrid1: TCedarDbgrid
          Tag = 111
          Left = 4
          Top = 4
          Width = 614
          Height = 435
          Align = alClient
          Color = clCream
          DataSource = srcCountingDetails
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
          IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
          IndicatorTitle.ShowDropDownSign = True
          IndicatorTitle.TitleButton = True
          OddRowColor = clWhite
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDblClickOptimizeColWidth, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove]
          RowHeight = 18
          SearchPanel.Enabled = True
          SortLocal = True
          TabOrder = 0
          OnEnter = DBGrid1Enter
          OnKeyPress = DBGrid1KeyPress
          ActiveSearchPanel = False
          SelectFooterIndex = 0
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DetailCaption'
              Footers = <>
              Width = 203
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'StuffCode'
              Footers = <>
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'c_StuffName'
              Footers = <>
              Width = 252
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object EditPanel: TPanel
        Left = 1
        Top = 480
        Width = 622
        Height = 45
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        Visible = False
        object Panel6: TPanel
          Left = 0
          Top = 12
          Width = 622
          Height = 33
          Align = alBottom
          TabOrder = 0
          object okPanel2: TPanel
            Left = 228
            Top = 1
            Width = 150
            Height = 31
            Align = alRight
            AutoSize = True
            BevelOuter = bvNone
            TabOrder = 1
            object BitBtn11: TBitBtn
              Left = 0
              Top = 0
              Width = 75
              Height = 31
              Action = DataSetCancel2
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
            object BitBtn12: TBitBtn
              Left = 75
              Top = 0
              Width = 75
              Height = 31
              Action = DataSetPost2
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
          end
          object newPanel2: TPanel
            Left = 378
            Top = 1
            Width = 243
            Height = 31
            Align = alRight
            AutoSize = True
            BevelOuter = bvNone
            TabOrder = 0
            object Panel8: TPanel
              Left = 0
              Top = 0
              Width = 161
              Height = 31
              Align = alClient
              AutoSize = True
              BevelOuter = bvNone
              TabOrder = 1
              object BitBtn10: TBitBtn
                Left = 11
                Top = 0
                Width = 75
                Height = 31
                Action = DataSetDelete2
                Align = alRight
                Caption = #1581#1584#1601' '#1603#1575#1604#1575
                TabOrder = 1
              end
              object BitBtn14: TBitBtn
                Left = 86
                Top = 0
                Width = 75
                Height = 31
                Action = DataSetEdit2
                Align = alRight
                Caption = #1608#1610#1585#1575#1610#1588
                TabOrder = 0
              end
            end
            object Panel9: TPanel
              Left = 161
              Top = 0
              Width = 82
              Height = 31
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 0
              object BitBtn9: TBitBtn
                Left = 7
                Top = 0
                Width = 75
                Height = 31
                Action = DataSetInsert2
                Align = alRight
                Caption = #1603#1575#1604#1575#1610' '#1580#1583#1610#1583
                TabOrder = 0
              end
            end
          end
        end
      end
    end
  end
  inherited ActionList: TActionList
    Left = 184
    Top = 4
    inherited DataSetInsert1: TDataSetInsert
      ShortCut = 0
    end
    inherited DataSetPost1: TDataSetPost
      ShortCut = 0
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object DataSetInsert2: TDataSetInsert
      Category = 'Dataset'
      Caption = #1603#1575#1604#1575#1610' '#1580#1583#1610#1583
      Hint = ' '
      ShortCut = 113
      DataSource = srcCountingDetails
    end
    object DataSetEdit2: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      Hint = ' '
      DataSource = srcCountingDetails
    end
    object DataSetCancel2: TDataSetCancel
      Category = 'Dataset'
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = ' '
      DataSource = srcCountingDetails
    end
    object DataSetDelete2: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601' '#1603#1575#1604#1575
      DataSource = srcCountingDetails
    end
    object actSendExel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendExelExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actPrint: TAction
      Caption = #1670#1600#1600#1600#1575#1662
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object DataSetPost2: TDataSetPost
      Category = 'Dataset'
      Caption = #1578#1575#1610#1610#1583
      ShortCut = 119
      DataSource = srcCountingDetails
    end
    object actInsert: TAction
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      OnExecute = actInsertExecute
    end
    object actNull: TAction
      Category = 'Dataset'
      Caption = #1581#1584#1601' '#1588#1605#1575#1585#1588
      OnExecute = actNullExecute
    end
    object actEdit: TAction
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      OnExecute = actEditExecute
    end
    object actPrintVijeh: TAction
      Caption = #1670#1600#1600#1600#1575#1662' '#1608#1610#1688#1607
      OnExecute = actPrintVijehExecute
    end
    object actGetEntity: TAction
      Caption = #1575#1606#1578#1602#1575#1604' '#1575#1586' '#1605#1608#1580#1608#1583#1610' '#1601#1593#1604#1740
      OnExecute = actGetEntityExecute
    end
    object actGetExcel: TAction
      Caption = #1582#1608#1575#1606#1583#1606'Excel'
      OnExecute = actGetExcelExecute
    end
    object actGetRotatory: TAction
      Caption = #1575#1606#1578#1602#1575#1604' '#1575#1586' '#1711#1585#1583#1588' '#1603#1575#1604#1575
      OnExecute = actGetRotatoryExecute
    end
    object actDelete: TAction
      Caption = #1581#1584#1601' '#1603#1604#1610' '#1588#1605#1575#1585#1588#1575#1578
      OnExecute = actDeleteExecute
    end
    object actReadFile: TAction
      Caption = #1582#1608#1575#1606#1583#1606' '#1575#1586' '#1601#1575#1610#1604
      OnExecute = actReadFileExecute
    end
    object actState: TAction
      Caption = #1602#1591#1593#1610' '#1606#1605#1608#1583#1606' '#1588#1605#1575#1585#1588
      OnExecute = actStateExecute
    end
    object actCountingControlCodeF: TAction
      Caption = #1580#1605#1593' '#1575#1606#1578#1582#1575#1576#1740' '#1576#1585' '#1575#1587#1575#1587' '#1588#1605#1575#1585#1607' '#1585#1575#1607#1606#1605#1575' '
    end
    object actPoseInsert: TAction
      Category = 'Dataset'
      Caption = #1579#1576#1578' '#1608' '#1576#1593#1583#1740
      SecondaryShortCuts.Strings = (
        'F9')
      ShortCut = 45
      OnExecute = actPoseInsertExecute
    end
    object actGetEntityOnCountDate: TAction
      Caption = #1575#1606#1578#1602#1575#1604' '#1575#1586' '#1605#1608#1580#1608#1583#1610' '#1576#1575' '#1578#1608#1580#1607' '#1576#1607' '#1578#1575#1585#1740#1582' '#1605#1602#1591#1593' '#1575#1606#1576#1575#1585' '#1711#1585#1583#1575#1606#1740
      OnExecute = actGetEntityOnCountDateExecute
    end
    object actSumDistinct: TAction
      Caption = #1580#1605#1593' '#1705#1575#1604#1575#1607#1575#1740' '#1578#1705#1585#1575#1585#1740' '#1585#1608#1740' '#1607#1605
      OnExecute = actSumDistinctExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 270
    Top = 4
  end
  object qryCountingDetails: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryCountingDetailsAfterInsert
    BeforeEdit = qryCountingDetailsBeforeEdit
    BeforePost = qryCountingDetailsBeforePost
    AfterPost = qryCountingDetailsAfterPost
    BeforeDelete = qryCountingDetailsBeforeDelete
    AfterDelete = qryCountingDetailsAfterDelete
    DataSource = srcCounting
    Parameters = <>
    Left = 220
    Top = 127
    object qryCountingDetailsDetailsID: TAutoIncField
      FieldName = 'DetailsID'
      ReadOnly = True
    end
    object qryCountingDetailsCountID: TIntegerField
      FieldName = 'CountID'
    end
    object qryCountingDetailsStoreID: TSmallintField
      FieldName = 'StoreID'
    end
    object qryCountingDetailsDetailCaption: TStringField
      DisplayLabel = 'IMEI'
      FieldName = 'DetailCaption'
      Size = 40
    end
    object qryCountingDetailsStuffCode: TLargeintField
      DisplayLabel = #1705#1583' '#1705#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qryCountingDetailsc_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1588#1585#1581' '#1603#1575#1604#1575
      FieldName = 'c_StuffName'
      ReadOnly = True
      Size = 150
    end
  end
  object srcCountingDetails: TDataSource
    DataSet = qryCountingDetails
    OnStateChange = srcCountingDetailsStateChange
    Left = 80
    Top = 135
  end
  object qryCounting: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterScroll = qryCountingAfterScroll
    Parameters = <
      item
        Name = 'CountDateFrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'CountDateTo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      ''
      'SELECT     *'
      'FROM         Counting'
      'WHERE     (CountDate BETWEEN :CountDateFrom  AND :CountDateTo )'
      'order by CountNumber')
    Left = 424
    Top = 127
    object qryCountingCountID: TIntegerField
      FieldName = 'CountID'
    end
    object qryCountingCountNumber: TIntegerField
      FieldName = 'CountNumber'
    end
    object qryCountingCountDate: TStringField
      FieldName = 'CountDate'
      FixedChar = True
      Size = 10
    end
    object qryCountingNote: TStringField
      FieldName = 'Note'
      Size = 255
    end
    object qryCountingAttachFileName: TStringField
      FieldName = 'AttachFileName'
      Size = 150
    end
    object qryCountingFormSignature: TStringField
      FieldName = 'FormSignature'
      Size = 250
    end
    object qryCountingState: TWordField
      FieldName = 'State'
      OnGetText = qryCountingStateGetText
    end
    object qryCountingCountingCalckind: TWordField
      FieldName = 'CountingCalckind'
    end
  end
  object qryStuff_Unit_TecInf: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT     *'
      'FROM        Aid_StuffCoding2 '
      'WHERE     (State = 0)'
      '')
    Left = 516
    Top = 207
  end
  object srcCounting: TDataSource
    DataSet = qryCounting
    Left = 528
    Top = 144
  end
  object qryStores: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'StoreID'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     n_StoreID, c_StoreName'
      'FROM         Stores'
      'WHERE ( n_StoreID= :StoreID) ')
    Left = 90
    Top = 208
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = srcCountingDetails
    OpenDataSource = False
    UserName = 'DBPipeline2'
    Left = 488
    Top = 276
    MasterDataPipelineName = 'ppDBPipeline1'
    object ppDBPipeline2ppField1: TppField
      FieldAlias = 'StuffCode'
      FieldName = 'StuffCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField2: TppField
      FieldAlias = '_StuffName'
      FieldName = '_StuffName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField3: TppField
      FieldAlias = '_UnitName'
      FieldName = '_UnitName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField4: TppField
      FieldAlias = 'ID'
      FieldName = 'ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField5: TppField
      FieldAlias = 'CountID'
      FieldName = 'CountID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField6: TppField
      FieldAlias = 'SheetID'
      FieldName = 'SheetID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField7: TppField
      FieldAlias = 'StoreID'
      FieldName = 'StoreID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField8: TppField
      FieldAlias = 'StuffSize'
      FieldName = 'StuffSize'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField9: TppField
      FieldAlias = 'StuffDiameter'
      FieldName = 'StuffDiameter'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField10: TppField
      FieldAlias = 'StuffAlloy'
      FieldName = 'StuffAlloy'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField11: TppField
      FieldAlias = 'ControlCode'
      FieldName = 'ControlCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField12: TppField
      FieldAlias = 'Count1Entity'
      FieldName = 'Count1Entity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField13: TppField
      FieldAlias = 'Count2Entity'
      FieldName = 'Count2Entity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField14: TppField
      FieldAlias = 'Count3Entity'
      FieldName = 'Count3Entity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField15: TppField
      FieldAlias = 'Count1Weight'
      FieldName = 'Count1Weight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField16: TppField
      FieldAlias = 'Count2Weight'
      FieldName = 'Count2Weight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField17: TppField
      FieldAlias = 'Count3Weight'
      FieldName = 'Count3Weight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField18: TppField
      FieldAlias = 'ReciptID'
      FieldName = 'ReciptID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField19: TppField
      FieldAlias = 'StuffGrade'
      FieldName = 'StuffGrade'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcCounting
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 380
    Top = 268
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
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
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'D:\Projects\Fara\BSell\Exe\Report\CountingDetailsEntity.rtm'
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
    Left = 264
    Top = 280
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 25400
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 17992
        mmWidth = 203200
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCompanyName: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCompanyName'
        OnGetText = ppLblCompanyNameGetText
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
        mmLeft = 75936
        mmTop = 1058
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCaption: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCaption'
        OnGetText = ppLblCaptionGetText
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578'  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8467
        mmLeft = 95250
        mmTop = 8467
        mmWidth = 12435
        BandType = 0
        LayerName = Foreground
      end
      object ppLblPrintDate: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lbprintdate'
        OnGetText = ppLblPrintDateGetText
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1711#1586#1575#1585#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5080
        mmLeft = 9790
        mmTop = 1058
        mmWidth = 11091
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583' '#1603#1575#1604#1575
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 192690
        mmTop = 18522
        mmWidth = 9982
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 192162
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1600#1600#1600#1600#1600#1600#1585#1581'   '#1603#1600#1600#1600#1600#1575#1604#1575
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 117744
        mmTop = 18522
        mmWidth = 73889
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 117216
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1608#1575#1581#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 106706
        mmTop = 18522
        mmWidth = 9982
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 106177
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588'.'#1576#1585#1711#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 93406
        mmTop = 18522
        mmWidth = 12243
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 92878
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1602#1583#1575#1585'.'#1588'1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 77523
        mmTop = 18522
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 76994
        mmTop = 17991
        mmWidth = 5556
        BandType = 0
        LayerName = Foreground
      end
      object ppSysPageNumber: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SysPageNumber'
        OnGetText = ppSysPageNumberGetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5821
        mmLeft = 9790
        mmTop = 8467
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1602#1583#1575#1585'.'#1588'2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 61648
        mmTop = 18521
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line17'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 61119
        mmTop = 17992
        mmWidth = 5556
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1602#1583#1575#1585'.'#1588'3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 45773
        mmTop = 18521
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line21'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 45244
        mmTop = 17992
        mmWidth = 5556
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7409
      mmPrintPosition = 0
      object ppLineDetail: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'LineDetail'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 200290
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
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'StuffCode'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7451
        mmLeft = 192690
        mmTop = 0
        mmWidth = 9982
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
        mmLeft = 192162
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = '_StuffName'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7451
        mmLeft = 117744
        mmTop = 0
        mmWidth = 73889
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 117216
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = '_UnitName'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7451
        mmLeft = 106706
        mmTop = 0
        mmWidth = 9982
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 106177
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'SheetID'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7451
        mmLeft = 93406
        mmTop = 0
        mmWidth = 12243
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 92878
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'Count1Entity'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7451
        mmLeft = 77523
        mmTop = 0
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 76994
        mmTop = 0
        mmWidth = 5556
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'Count2Entity'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7451
        mmLeft = 61648
        mmTop = 0
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line18'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 61119
        mmTop = 0
        mmWidth = 5556
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'Count3Entity'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7451
        mmLeft = 45773
        mmTop = 0
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line22'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 45244
        mmTop = 0
        mmWidth = 5556
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 9497
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1606#1602#1604' '#1576#1607'..'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 175948
        mmTop = 529
        mmWidth = 15610
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'StuffCode'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 192690
        mmTop = 528
        mmWidth = 9982
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 192162
        mmTop = 0
        mmWidth = 2647
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 92878
        mmTop = 0
        mmWidth = 2647
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc6'
        Border.mmPadding = 0
        DataField = 'Count1Entity'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 77523
        mmTop = 528
        mmWidth = 15081
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line16'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 76994
        mmTop = 0
        mmWidth = 5556
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        Border.mmPadding = 0
        DataField = 'Count2Entity'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 61648
        mmTop = 529
        mmWidth = 15081
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line19'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 61119
        mmTop = 0
        mmWidth = 5556
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc7'
        Border.mmPadding = 0
        DataField = 'Count3Entity'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 45773
        mmTop = 529
        mmWidth = 15081
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line23'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 45244
        mmTop = 0
        mmWidth = 5556
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape3'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1580#1605#1593
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 178330
        mmTop = 529
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'StuffCode'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 192690
        mmTop = 528
        mmWidth = 9982
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 192162
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 92878
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc5'
        Border.mmPadding = 0
        DataField = 'Count1Entity'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 77523
        mmTop = 528
        mmWidth = 15081
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line15'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 76994
        mmTop = 0
        mmWidth = 5556
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc4'
        Border.mmPadding = 0
        DataField = 'Count2Entity'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 61648
        mmTop = 529
        mmWidth = 15081
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line20'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 61119
        mmTop = 529
        mmWidth = 5556
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc8'
        Border.mmPadding = 0
        DataField = 'Count3Entity'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 45773
        mmTop = 529
        mmWidth = 15081
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line201'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 45244
        mmTop = 0
        mmWidth = 5556
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
  object PopMnuOther: TPopupMenu
    AutoHotkeys = maManual
    Left = 171
    Top = 258
    object N1: TMenuItem
      Action = actPrintVijeh
    end
    object N2: TMenuItem
      Action = actGetEntity
    end
    object N5: TMenuItem
      Action = actGetEntityOnCountDate
    end
    object N3: TMenuItem
      Action = actGetRotatory
    end
    object Excel1: TMenuItem
      Action = actGetExcel
    end
    object N4: TMenuItem
      Action = actDelete
    end
    object mnuState: TMenuItem
      Action = actState
    end
    object mnuReadFile: TMenuItem
      Caption = #1582#1608#1575#1606#1583#1606' '#1575#1586' '#1601#1575#1610#1604' '#1576#1585#1575#1587#1575#1587' '#1603#1583' '#1603#1575#1604#1575
      OnClick = mnuReadFileClick
    end
    object mnuReadFile_StuffTecInfo: TMenuItem
      Caption = #1582#1608#1575#1606#1583#1606' '#1575#1586' '#1601#1575#1610#1604' '#1576#1585#1575#1587#1575#1587' '#1605#1588#1582#1589#1575#1578' '#1601#1606#1610
      OnClick = mnuReadFile_StuffTecInfoClick
    end
    object actCountingControlCodeF1: TMenuItem
      Action = actCountingControlCodeF
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object Excel2: TMenuItem
      Action = actSumDistinct
    end
  end
  object dlg1: TOpenTextFileDialog
    FileName = 'F:\4Share\Fara.txt'
    Filter = 'Txet Comma Delimited (1,1)|*.Txt|All File|*.*'
    Left = 344
    Top = 136
  end
  object qryinit5: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT        *'
      'FROM            ReciptTypes'
      'WHERE        (ReciptType = 5)')
    Left = 342
    Top = 196
  end
  object qry4Bcakup: TADOQuery
    Parameters = <>
    SQL.Strings = (
      'SELECT     *'
      ' , (SELECT     LookUps.Name'
      '                        FROM         LookUps RIGHT OUTER JOIN'
      
        '                                              StuffCoding ON Loo' +
        'kUps.Code = StuffCoding.st13'
      
        '                        WHERE     (LookUps.Kind = 313) AND (Stuf' +
        'fCoding.c_StuffCode = CountingDetails.StuffCode)) AS Pakhsh'
      ', (SELECT     LookUps.Name'
      '                        FROM         LookUps RIGHT OUTER JOIN'
      
        '                                              StuffCoding ON Loo' +
        'kUps.Code = StuffCoding.st2'
      
        '                        WHERE     (LookUps.Kind = 302) AND (Stuf' +
        'fCoding.c_StuffCode = CountingDetails.StuffCode)) AS PadidAvaran' +
        'deh'
      ', (SELECT StuffCoding.c_StuffName'
      '                        FROM StuffCoding'
      
        '                        WHERE  StuffCoding.c_StuffCode = Countin' +
        'gItems.StuffCode) AS c_StuffName, '#39#39' AS ____StuffTecInfo'
      
        ', (SELECT    sd1  FROM    StuffCoding   WHERE    (StuffCoding.c_' +
        'StuffCode = CountingDetails.StuffCode)) AS sd1'
      ''
      ''
      'FROM         CountingDetails'
      'WHERE (StoreID = :StoreID) and ( CountID =:CountID)')
    Left = 224
    Top = 208
  end
  object PopupMenu1: TPopupMenu
    Left = 371
    Top = 378
    object AllClick1: TMenuItem
      Caption = 'AllClick'
      Visible = False
      OnClick = AllClick1Click
    end
    object N11: TMenuItem
      Caption = #1670#1575#1662' 1'
      Hint = 'CountingDetails'
      OnClick = AllClick1Click
    end
    object N21: TMenuItem
      Caption = #1670#1575#1662' 2'
      Hint = 'CountingDetails2'
      OnClick = AllClick1Click
    end
  end
end

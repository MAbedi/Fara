inherited FormInfo_5FormulaF: TFormInfo_5FormulaF
  Left = 371
  Top = 252
  CustomHint = DmF.BalloonHint1
  Caption = #1605#1581#1575#1587#1576#1607' '#1601#1585#1605#1608#1604#1740
  ClientHeight = 756
  ClientWidth = 990
  ExplicitWidth = 998
  ExplicitHeight = 787
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter [0]
    Left = 0
    Top = 433
    Width = 990
    Height = 3
    Cursor = crVSplit
    CustomHint = DmF.BalloonHint1
    Align = alBottom
    ExplicitTop = 53
    ExplicitWidth = 220
  end
  inherited PnlUnderButton: TPanel
    Top = 715
    Width = 990
    CustomHint = DmF.BalloonHint1
    ExplicitTop = 715
    ExplicitWidth = 990
    inherited BtnReject: TBitBtn
      CustomHint = DmF.BalloonHint1
    end
    object newPanel: TPanel
      Left = 736
      Top = 1
      Width = 253
      Height = 39
      CustomHint = DmF.BalloonHint1
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        253
        39)
      object BitBtn3: TBitBtn
        Left = 168
        Top = 8
        Width = 75
        Height = 25
        ParentCustomHint = False
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 91
        Top = 8
        Width = 75
        Height = 25
        ParentCustomHint = False
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        Left = 14
        Top = 8
        Width = 75
        Height = 25
        ParentCustomHint = False
        Action = DataSetDelete1_
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        TabOrder = 2
      end
    end
    object okPanel: TPanel
      Left = 571
      Top = 1
      Width = 165
      Height = 39
      CustomHint = DmF.BalloonHint1
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
        ParentCustomHint = False
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
        ParentCustomHint = False
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
      Left = 94
      Top = 8
      Width = 75
      Height = 25
      CustomHint = DmF.BalloonHint1
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 3
    end
    object BitBtn2: TBitBtn
      Left = 172
      Top = 8
      Width = 75
      Height = 25
      CustomHint = DmF.BalloonHint1
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
    end
    object BitBtn6: TBitBtn
      Left = 249
      Top = 8
      Width = 89
      Height = 25
      CustomHint = DmF.BalloonHint1
      Action = actSendToExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 5
    end
    object BitBtn11: TBitBtn
      Left = 340
      Top = 8
      Width = 75
      Height = 25
      CustomHint = DmF.BalloonHint1
      Caption = #1670#1575#1662
      TabOrder = 6
      OnClick = BitBtn11Click
    end
  end
  inherited Panel2: TPanel
    Width = 990
    CustomHint = DmF.BalloonHint1
    ParentShowHint = False
    ShowHint = True
    ExplicitWidth = 990
    DesignSize = (
      990
      53)
    inherited ImgTemplate: TImage
      Left = 980
      Top = 30
      Width = 5
      Height = 12
      CustomHint = DmF.BalloonHint1
      ExplicitLeft = 760
      ExplicitTop = 30
      ExplicitWidth = 5
      ExplicitHeight = 12
    end
    inherited lblCaption: TLabel
      Left = 882
      ParentCustomHint = False
      ExplicitLeft = 882
    end
    inherited lblBaseDate: TLabel
      Left = 410
      CustomHint = DmF.BalloonHint1
      ExplicitLeft = 410
    end
    object PnlRecall: TPanel
      Left = 1
      Top = 1
      Width = 393
      Height = 51
      CustomHint = DmF.BalloonHint1
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object DBText1: TDBText
        Left = 8
        Top = 8
        Width = 182
        Height = 17
        CustomHint = DmF.BalloonHint1
        Color = 13948116
        DataField = 'InfoName_L1'
        DataSource = SrcMaster
        ParentColor = False
        Transparent = False
      end
      object SpeedButton1: TSpeedButton
        Left = 192
        Top = 5
        Width = 23
        Height = 22
        CustomHint = DmF.BalloonHint1
        Caption = '...'
        OnClick = SpeedButton1Click
      end
      object LblPerson1: TLabel
        Left = 276
        Top = 9
        Width = 105
        Height = 13
        CustomHint = DmF.BalloonHint1
        Alignment = taRightJustify
        Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606' '#1587#1591#1581' '#1602#1576#1604#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBNavigator1: TDBNavigator
        Left = 6
        Top = 29
        Width = 180
        Height = 18
        CustomHint = DmF.BalloonHint1
        DataSource = SrcMaster
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Flat = True
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBEdit1: TDBEdit
        Left = 216
        Top = 6
        Width = 57
        Height = 21
        CustomHint = DmF.BalloonHint1
        DataField = 'FormInfoID'
        DataSource = SrcMaster
        TabOrder = 1
      end
    end
  end
  inherited Panel3: TPanel
    Width = 668
    Height = 348
    CustomHint = DmF.BalloonHint1
    ExplicitWidth = 668
    ExplicitHeight = 348
    DesignSize = (
      668
      348)
    object Label1: TLabel
      Left = 553
      Top = 7
      Width = 11
      Height = 13
      CustomHint = DmF.BalloonHint1
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1603#1583
      FocusControl = DBEdit2
      ExplicitLeft = 332
    end
    object LblInfoName_L1: TLabel
      Left = 553
      Top = 29
      Width = 26
      Height = 13
      CustomHint = DmF.BalloonHint1
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1593#1606#1608#1575#1606
      FocusControl = DBEdit3
      ExplicitLeft = 332
    end
    object LblAmount: TLabel
      Left = 557
      Top = 54
      Width = 47
      Height = 13
      CustomHint = DmF.BalloonHint1
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1605#1602#1583#1575#1585' '#1579#1575#1576#1578
      FocusControl = DBEdit5
      ExplicitLeft = 386
    end
    object LblStandardDays: TLabel
      Left = 553
      Top = 78
      Width = 48
      Height = 13
      CustomHint = DmF.BalloonHint1
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1590#1585#1610#1576'('#1585#1608#1586')'#8207
      FocusControl = DBEdit6
      ExplicitLeft = 382
    end
    object LblStandardTimes: TLabel
      Left = 553
      Top = 103
      Width = 66
      Height = 13
      CustomHint = DmF.BalloonHint1
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1590#1585#1610#1576'('#1587#1575#1593#1578')'#8207
      FocusControl = DBEdit7
      ExplicitLeft = 382
    end
    object lblTaxCode: TLabel
      Left = 112
      Top = 7
      Width = 42
      Height = 13
      CustomHint = DmF.BalloonHint1
      Caption = #1603#1583' '#1605#1575#1604#1610#1575#1578
    end
    object DBEdit2: TDBEdit
      Left = 446
      Top = 3
      Width = 105
      Height = 21
      CustomHint = DmF.BalloonHint1
      Anchors = [akTop, akRight]
      DataField = 'InfoID'
      DataSource = srcFormInfo
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 17
      Top = 25
      Width = 534
      Height = 21
      CustomHint = DmF.BalloonHint1
      Anchors = [akLeft, akTop, akRight]
      DataField = 'InfoName_L1'
      DataSource = srcFormInfo
      TabOrder = 2
    end
    object DBEdit5: TDBEdit
      Left = 446
      Top = 50
      Width = 105
      Height = 21
      CustomHint = DmF.BalloonHint1
      Anchors = [akTop, akRight]
      DataField = 'Amount'
      DataSource = srcFormInfo
      TabOrder = 3
    end
    object DBEdit6: TDBEdit
      Left = 446
      Top = 76
      Width = 105
      Height = 21
      CustomHint = DmF.BalloonHint1
      Anchors = [akTop, akRight]
      DataField = 'StandardDays'
      DataSource = srcFormInfo
      TabOrder = 4
    end
    object DBEdit7: TDBEdit
      Left = 446
      Top = 99
      Width = 105
      Height = 21
      CustomHint = DmF.BalloonHint1
      Anchors = [akTop, akRight]
      DataField = 'StandardTimes'
      DataSource = srcFormInfo
      TabOrder = 5
    end
    object pnlMaxDayTime: TPanel
      Left = 17
      Top = 50
      Width = 184
      Height = 58
      CustomHint = DmF.BalloonHint1
      BevelInner = bvLowered
      BevelWidth = 3
      TabOrder = 6
      object Label15: TLabel
        Left = 110
        Top = 10
        Width = 49
        Height = 13
        CustomHint = DmF.BalloonHint1
        Caption = #1581#1583#1575#1603#1579#1585'  '#1585#1608#1586
      end
      object Label16: TLabel
        Left = 110
        Top = 33
        Width = 64
        Height = 13
        CustomHint = DmF.BalloonHint1
        Caption = #1581#1583#1575#1603#1579#1585' '#1587#1575#1593#1578
      end
      object DBEdit15: TDBEdit
        Left = 11
        Top = 6
        Width = 95
        Height = 21
        CustomHint = DmF.BalloonHint1
        DataField = 'MaxDay'
        DataSource = srcFormInfo
        TabOrder = 0
      end
      object DBEdit16: TDBEdit
        Left = 11
        Top = 29
        Width = 95
        Height = 21
        CustomHint = DmF.BalloonHint1
        DataField = 'MaxTime'
        DataSource = srcFormInfo
        TabOrder = 1
      end
    end
    object PnlRecalKindClock: TPanel
      Left = 2
      Top = 206
      Width = 672
      Height = 26
      CustomHint = DmF.BalloonHint1
      Align = alCustom
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 7
    end
    object edtTaxCode: TDBEdit
      Left = 18
      Top = 3
      Width = 89
      Height = 21
      CustomHint = DmF.BalloonHint1
      DataField = 'TaxCode'
      DataSource = srcFormInfo
      TabOrder = 1
    end
    object Panel5: TPanel
      Left = 2
      Top = 152
      Width = 664
      Height = 32
      CustomHint = DmF.BalloonHint1
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 8
      DesignSize = (
        664
        32)
      object Label4: TLabel
        Left = 553
        Top = 11
        Width = 86
        Height = 13
        CustomHint = DmF.BalloonHint1
        Anchors = [akTop, akRight]
        Caption = #1578#1585#1578#1740#1576' '#1575#1580#1585#1575' '#1605#1581#1575#1587#1576#1607
        ExplicitLeft = 415
      end
      object btnAcc: TBitBtn
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 91
        Height = 26
        CustomHint = DmF.BalloonHint1
        Align = alLeft
        Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1583#1575#1585#1610
        TabOrder = 0
        OnClick = btnAccClick
      end
      object cmbRunOrder: TDBComboBox
        Left = 238
        Top = 7
        Width = 313
        Height = 21
        CustomHint = DmF.BalloonHint1
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        DataField = 'RunOrder'
        DataSource = srcWageFormula
        Items.Strings = (
          '0-'#1575#1608#1604#1740#1606' '#1605#1581#1575#1587#1576#1607' '#1575#1740#1606' '#1601#1585#1605#1608#1604' '#1576#1575#1588#1583
          '1-'#1576#1593#1583' '#1575#1586' '#1605#1581#1575#1587#1576#1607' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1610#1575' '#1608' '#1603#1587#1608#1585#1575#1578
          '2- '#1576#1593#1583' '#1575#1586' '#1605#1581#1575#1587#1576#1607' '#1576#1740#1605#1607
          '3-'#1576#1593#1583' '#1575#1586' '#1605#1581#1575#1587#1576#1607' '#1605#1575#1604#1740#1575#1578
          '4-'#1570#1582#1585#1740#1606' '#1605#1581#1575#1587#1576#1607' '#1575#1740#1606' '#1601#1585#1605#1608#1604' '#1576#1575#1588#1583)
        ParentBiDiMode = False
        TabOrder = 1
      end
    end
    object DBGrid2: TCedarDbgrid
      Tag = 111
      Left = 2
      Top = 184
      Width = 664
      Height = 162
      CustomHint = DmF.BalloonHint1
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = clCream
      DataSource = srcWageFormula
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
      OddRowColor = clGradientInactiveCaption
      RowHeight = 18
      SearchPanel.Enabled = True
      SearchPanel.FilterOnTyping = True
      SortLocal = True
      TabOrder = 9
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'YearFrom'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'MounthFrom'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'YearTo'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'MounthTo'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Note'
          Footers = <>
          Width = 207
        end>
      object RowDetailData: TRowDetailPanelControlEh
        CustomHint = DmF.BalloonHint1
      end
    end
    object pnlWageKind: TPanel
      Left = 2
      Top = 126
      Width = 664
      Height = 26
      CustomHint = DmF.BalloonHint1
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 10
      DesignSize = (
        664
        26)
      object Label11: TLabel
        Left = 551
        Top = 7
        Width = 77
        Height = 13
        CustomHint = DmF.BalloonHint1
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1606#1608#1593' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1740#1575
      end
      object cmb_WageKind: TDBLookupComboBox
        Left = 177
        Top = 4
        Width = 368
        Height = 21
        CustomHint = DmF.BalloonHint1
        Anchors = [akTop, akRight]
        DataField = '_WageKind'
        DataSource = srcFormInfo
        DropDownRows = 14
        TabOrder = 0
      end
    end
  end
  object Panel4: TPanel [4]
    Left = 668
    Top = 53
    Width = 322
    Height = 348
    CustomHint = DmF.BalloonHint1
    Align = alRight
    TabOrder = 3
    object DBGrid1: TCedarDbgrid
      Tag = 111
      Left = 1
      Top = 1
      Width = 320
      Height = 346
      CustomHint = DmF.BalloonHint1
      Align = alClient
      Color = clCream
      DataSource = srcFormInfo
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
      OddRowColor = clGradientInactiveCaption
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
          FieldName = 'FormInfoID'
          Footers = <>
          Width = 55
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'InfoID'
          Footers = <>
          Width = 25
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'InfoName_L1'
          Footers = <>
          Width = 121
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'InfoName_L2'
          Footers = <>
          Width = 56
        end>
      object RowDetailData: TRowDetailPanelControlEh
        CustomHint = DmF.BalloonHint1
      end
    end
  end
  object PageControl2: TPageControl [5]
    Left = 0
    Top = 436
    Width = 990
    Height = 279
    CustomHint = DmF.BalloonHint1
    ActivePage = TabSheet2
    Align = alBottom
    TabOrder = 4
    object TabSheet2: TTabSheet
      CustomHint = DmF.BalloonHint1
      Caption = #1601#1585#1605#1608#1604
      object Splitter3: TSplitter
        Left = 642
        Top = 0
        Height = 219
        CustomHint = DmF.BalloonHint1
        Align = alRight
        ExplicitLeft = 416
        ExplicitTop = 152
        ExplicitHeight = 100
      end
      object Panel1: TPanel
        Left = 0
        Top = 219
        Width = 982
        Height = 32
        CustomHint = DmF.BalloonHint1
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object BitBtn9: TBitBtn
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 75
          Height = 26
          Hint = ' '
          CustomHint = DmF.BalloonHint1
          Align = alLeft
          Caption = #1575#1606#1578#1582#1575#1576' '#1601#1740#1604#1583' '#1607#1575
          TabOrder = 0
          OnClick = BitBtn9Click
        end
        object BitBtn12: TBitBtn
          AlignWithMargins = True
          Left = 904
          Top = 3
          Width = 75
          Height = 26
          Hint = ' '
          CustomHint = DmF.BalloonHint1
          Align = alRight
          Caption = #1575#1606#1578#1582#1575#1576' '#1601#1740#1604#1583' '#1607#1575
          TabOrder = 1
          OnClick = BitBtn9Click
        end
      end
      object pnl1: TPanel
        Left = 645
        Top = 0
        Width = 337
        Height = 219
        CustomHint = DmF.BalloonHint1
        Align = alRight
        Caption = 'pnl1'
        TabOrder = 1
        object Splitter2: TSplitter
          Left = 1
          Top = 99
          Width = 335
          Height = 3
          Cursor = crVSplit
          CustomHint = DmF.BalloonHint1
          Align = alBottom
          ExplicitTop = 53
          ExplicitWidth = 220
        end
        object dbmmoWhereSQLCalc: TDBMemo
          Tag = 111
          Left = 1
          Top = 20
          Width = 335
          Height = 79
          CustomHint = DmF.BalloonHint1
          Align = alClient
          BiDiMode = bdLeftToRight
          DataField = 'WhereSQLCalc'
          DataSource = srcWageFormula
          ParentBiDiMode = False
          TabOrder = 0
          OnDragDrop = dbmmoSQLCalcDragDrop
          OnDragOver = dbmmoSQLCalcDragOver
        end
        object mmoWhereSQLCalc: TMemo
          Tag = 111
          Left = 1
          Top = 102
          Width = 335
          Height = 116
          CustomHint = DmF.BalloonHint1
          Align = alBottom
          Alignment = taCenter
          BiDiMode = bdLeftToRight
          Color = 16245970
          Lines.Strings = (
            'mmoSQLCalc')
          ParentBiDiMode = False
          TabOrder = 1
          OnChange = mmoSQLCalcChange
          OnDragDrop = mmoSQLCalcDragDrop
          OnDragOver = dbmmoSQLCalcDragOver
          OnEnter = mmoSQLCalcEnter
          OnExit = mmoSQLCalcExit
          OnMouseEnter = mmoSQLCalcEnter
          OnMouseLeave = mmoSQLCalcExit
        end
        object Edit1: TEdit
          Left = 1
          Top = 1
          Width = 335
          Height = 19
          CustomHint = DmF.BalloonHint1
          Align = alTop
          Alignment = taCenter
          BiDiMode = bdRightToLeft
          Color = clGradientInactiveCaption
          Ctl3D = False
          ParentBiDiMode = False
          ParentCtl3D = False
          TabOrder = 2
          Text = #1575#1587#1578#1601#1575#1583#1607' '#1575#1586' MYCALC '#1580#1607#1578' '#1588#1585#1608#1591' '#1582#1575#1589
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 642
        Height = 219
        CustomHint = DmF.BalloonHint1
        Align = alClient
        TabOrder = 2
        object Splitter4: TSplitter
          Left = 311
          Top = 20
          Height = 198
          CustomHint = DmF.BalloonHint1
          Align = alRight
          ExplicitLeft = 416
          ExplicitTop = 152
          ExplicitHeight = 100
        end
        object mmoSQLCalc: TMemo
          Tag = 111
          Left = 314
          Top = 20
          Width = 327
          Height = 198
          CustomHint = DmF.BalloonHint1
          Align = alRight
          Alignment = taCenter
          BiDiMode = bdLeftToRight
          Color = 16245970
          Lines.Strings = (
            'mmoSQLCalc')
          ParentBiDiMode = False
          TabOrder = 0
          OnChange = mmoSQLCalcChange
          OnDragDrop = mmoSQLCalcDragDrop
          OnDragOver = dbmmoSQLCalcDragOver
          OnEnter = mmoSQLCalcEnter
          OnExit = mmoSQLCalcExit
          OnMouseEnter = mmoSQLCalcEnter
          OnMouseLeave = mmoSQLCalcExit
        end
        object dbmmoSQLCalc: TDBMemo
          Tag = 111
          Left = 1
          Top = 20
          Width = 310
          Height = 198
          CustomHint = DmF.BalloonHint1
          Align = alClient
          BiDiMode = bdLeftToRight
          DataField = 'SQLCalc'
          DataSource = srcWageFormula
          ParentBiDiMode = False
          TabOrder = 1
          OnDragDrop = dbmmoSQLCalcDragDrop
          OnDragOver = dbmmoSQLCalcDragOver
        end
        object edtMYCalc: TEdit
          Left = 1
          Top = 1
          Width = 640
          Height = 19
          CustomHint = DmF.BalloonHint1
          Align = alTop
          Alignment = taCenter
          BiDiMode = bdLeftToRight
          Color = clGradientInactiveCaption
          Ctl3D = False
          ParentBiDiMode = False
          ParentCtl3D = False
          TabOrder = 2
          Text = #1601#1585#1605#1608#1604' = MYCALC'
        end
      end
    end
    object TabSheet3: TTabSheet
      CustomHint = DmF.BalloonHint1
      Caption = #1578#1587#1578
      ImageIndex = 1
      object grdSp_WageFormula: TCedarDbgrid
        Tag = 111
        Left = 0
        Top = 0
        Width = 982
        Height = 251
        CustomHint = DmF.BalloonHint1
        Align = alClient
        Color = clCream
        DataSource = srcSp_WageFormula
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
        OddRowColor = clGradientInactiveCaption
        RowHeight = 18
        SearchPanel.Enabled = True
        SearchPanel.FilterOnTyping = True
        SortLocal = True
        TabOrder = 0
        OnKeyPress = grdSp_WageFormulaKeyPress
        ActiveSearchPanel = False
        SelectFooterIndex = 0
        object RowDetailData: TRowDetailPanelControlEh
          CustomHint = DmF.BalloonHint1
        end
      end
    end
    object TabSheet1: TTabSheet
      CustomHint = DmF.BalloonHint1
      Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1605#1576#1575#1604#1594' '#1581#1705#1605
      ImageIndex = 2
      object Panel8: TPanel
        Left = 0
        Top = 216
        Width = 982
        Height = 35
        CustomHint = DmF.BalloonHint1
        Align = alBottom
        TabOrder = 0
        object BitBtn13: TBitBtn
          AlignWithMargins = True
          Left = 874
          Top = 4
          Width = 104
          Height = 27
          CustomHint = DmF.BalloonHint1
          Align = alRight
          Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1610#1575
          TabOrder = 0
          OnClick = BitBtn13Click
        end
      end
      object DBGrid3: TCedarDbgrid
        Tag = 111
        Left = 0
        Top = 0
        Width = 982
        Height = 216
        CustomHint = DmF.BalloonHint1
        Align = alClient
        Color = clCream
        DataSource = SrcWage
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
        OddRowColor = clGradientInactiveCaption
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        RowHeight = 18
        SearchPanel.Enabled = True
        SearchPanel.FilterOnTyping = True
        SortLocal = True
        TabOrder = 1
        ActiveSearchPanel = False
        SelectFooterIndex = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SalaryID'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'InfoID'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'InfoName_L1'
            Footers = <>
            Width = 202
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'InfoName_L2'
            Footers = <>
            Width = 229
          end>
        object RowDetailData: TRowDetailPanelControlEh
          CustomHint = DmF.BalloonHint1
        end
      end
    end
  end
  object Panel6: TPanel [6]
    Left = 0
    Top = 401
    Width = 990
    Height = 32
    CustomHint = DmF.BalloonHint1
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 5
    object Label2: TLabel
      AlignWithMargins = True
      Left = 892
      Top = 6
      Width = 14
      Height = 20
      Margins.Top = 6
      Margins.Bottom = 6
      CustomHint = DmF.BalloonHint1
      Align = alRight
      Alignment = taRightJustify
      Caption = #1605#1575#1607
      FocusControl = DBEdit5
      ExplicitHeight = 13
    end
    object Label3: TLabel
      AlignWithMargins = True
      Left = 779
      Top = 6
      Width = 21
      Height = 20
      Margins.Top = 6
      Margins.Bottom = 6
      CustomHint = DmF.BalloonHint1
      Align = alRight
      Alignment = taRightJustify
      Caption = #1587#1575#1604
      FocusControl = DBEdit5
      ExplicitHeight = 13
    end
    object BitBtn10: TBitBtn
      AlignWithMargins = True
      Left = 912
      Top = 3
      Width = 75
      Height = 26
      Hint = ' '
      CustomHint = DmF.BalloonHint1
      Align = alRight
      Caption = #1578#1587#1578
      TabOrder = 0
      OnClick = BitBtn10Click
    end
    object edtMounth: TEdit
      AlignWithMargins = True
      Left = 806
      Top = 6
      Width = 80
      Height = 20
      Margins.Top = 6
      Margins.Bottom = 6
      CustomHint = DmF.BalloonHint1
      Align = alRight
      TabOrder = 1
      ExplicitHeight = 21
    end
    object edtyear: TEdit
      AlignWithMargins = True
      Left = 693
      Top = 6
      Width = 80
      Height = 20
      Margins.Top = 6
      Margins.Bottom = 6
      CustomHint = DmF.BalloonHint1
      Align = alRight
      TabOrder = 2
      ExplicitHeight = 21
    end
  end
  inherited ActionList: TActionList
    Left = 520
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcFormInfo
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcFormInfo
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcFormInfo
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcFormInfo
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      Hint = ' '
      DataSource = srcFormInfo
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actSendToExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendToExcelExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 592
    Top = 233
  end
  object qryFormInfo: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterInsert = qryFormInfoAfterInsert
    BeforePost = qryFormInfoBeforePost
    AfterPost = qryFormInfoAfterPost
    BeforeDelete = qryFormInfoBeforeDelete
    AfterDelete = qryFormInfoAfterDelete
    AfterScroll = qryFormInfoAfterScroll
    Parameters = <
      item
        Name = 'FormType'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 7
      end
      item
        Name = 'PrvInfoID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      ''
      'SELECT     *'
      'FROM Pay.FormsInfo'
      
        'WHERE     (FormType = :FormType ) AND (PrvInfoID = isnull(:PrvIn' +
        'foID ,0))'
      'order by InfoID')
    Left = 744
    Top = 397
    object qryFormInfoFormInfoID: TIntegerField
      Tag = 3
      DisplayLabel = #1587#1585#1610#1575#1604
      FieldName = 'FormInfoID'
    end
    object qryFormInfoInfoName_L1: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object qryFormInfoInfoName_L2: TStringField
      Tag = 3
      DisplayLabel = 'InfoName'
      FieldName = 'InfoName_L2'
      Size = 100
    end
    object qryFormInfoFormType: TIntegerField
      FieldName = 'FormType'
    end
    object qryFormInfoInfoID: TIntegerField
      DisplayLabel = #1603#1583
      FieldName = 'InfoID'
    end
    object qryFormInfoPrvInfoID: TIntegerField
      FieldName = 'PrvInfoID'
    end
    object qryFormInfoAmount: TBCDField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1579#1575#1576#1578
      FieldName = 'Amount'
      currency = True
      Precision = 19
    end
    object qryFormInfoAmount2: TBCDField
      FieldName = 'Amount2'
      currency = True
      Precision = 19
    end
    object qryFormInfoCoefficient: TFloatField
      FieldName = 'Coefficient'
    end
    object qryFormInfoStandardDays: TFloatField
      DisplayLabel = #1590#1585#1610#1576'('#1585#1608#1586')'#8207
      FieldName = 'StandardDays'
    end
    object qryFormInfoStandardTimes: TFloatField
      DisplayLabel = #1590#1585#1610#1576'('#1587#1575#1593#1578')'#8207
      FieldName = 'StandardTimes'
    end
    object qryFormInfoAccTopicCode: TIntegerField
      FieldName = 'AccTopicCode'
    end
    object qryFormInfoAccDetailCode: TIntegerField
      FieldName = 'AccDetailCode'
    end
    object qryFormInfoAccCTopicode: TIntegerField
      FieldName = 'AccCTopiccode'
    end
    object qryFormInfoAccCTopicode2: TIntegerField
      FieldName = 'AccCTopiccode2'
    end
    object qryFormInfoRecallFormInfoID1: TStringField
      FieldName = 'RecallFormInfoID1'
      Size = 150
    end
    object qryFormInfoRecallFormInfoID2: TStringField
      FieldName = 'RecallFormInfoID2'
      Size = 150
    end
    object qryFormInfoWordDocuments: TStringField
      DisplayLabel = #1606#1575#1605' '#1601#1575#1610#1604' '#1670#1575#1662
      FieldName = 'WordDocuments'
      Size = 150
    end
    object qryFormInfoMaxDay: TFloatField
      FieldName = 'MaxDay'
    end
    object qryFormInfoMaxTime: TFloatField
      FieldName = 'MaxTime'
    end
    object qryFormInfoRecalKindClock: TWordField
      FieldName = 'RecalKindClock'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryFormInfoCalCulateType: TWordField
      FieldName = 'CalCulateType'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryFormInfoTaxCode: TWordField
      FieldName = 'TaxCode'
    end
    object qryFormInfoWageCalcKind: TWordField
      FieldName = 'WageCalcKind'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryFormInfoFirstAmount: TBCDField
      FieldName = 'FirstAmount'
      currency = True
      Precision = 19
    end
    object qryFormInfoPayMentActive: TWordField
      FieldName = 'PayMentActive'
    end
    object qryFormInfoAccCTopiccode3: TIntegerField
      FieldName = 'AccCTopiccode3'
    end
    object qryFormInfo_WageKind: TStringField
      DisplayLabel = #1606#1608#1593' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1740#1575
      FieldKind = fkLookup
      FieldName = '_WageKind'
      LookupDataSet = qryWageKinds
      LookupKeyFields = 'WageKind'
      LookupResultField = 'WageKindName'
      KeyFields = 'WageKind'
      Size = 100
      Lookup = True
    end
    object qryFormInfoWageKind: TWordField
      FieldName = 'WageKind'
    end
  end
  object srcFormInfo: TDataSource
    DataSet = qryFormInfo
    OnStateChange = srcFormInfoStateChange
    Left = 400
    Top = 349
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
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM Pay.FormTypes'
      'WHERE     (FormType= :FormType)')
    Left = 448
    Top = 8
  end
  object qryMaster: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterScroll = qryMasterAfterScroll
    Parameters = <
      item
        Name = 'FormType'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 7
      end>
    SQL.Strings = (
      
        'SELECT     FormInfoID, FormType, InfoID, InfoName_L1, InfoName_L' +
        '2'
      'FROM Pay.FormsInfo'
      'WHERE   FormType = :FormType')
    Left = 704
    Top = 213
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
      Size = 100
    end
    object qryMasterInfoName_L2: TStringField
      FieldName = 'InfoName_L2'
      Size = 100
    end
  end
  object SrcMaster: TDataSource
    DataSet = qryMaster
    Left = 624
    Top = 205
  end
  object qryWageFormula: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeInsert = qryWageFormulaBeforeInsert
    AfterInsert = qryWageFormulaAfterInsert
    BeforeEdit = qryWageFormulaBeforeEdit
    BeforeDelete = qryWageFormulaBeforeDelete
    AfterScroll = qryWageFormulaAfterScroll
    Parameters = <
      item
        Name = 'SalaryID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM            Pay.WageFormula'
      'WHERE        (SalaryID= :SalaryID)')
    Left = 160
    Top = 405
    object qryWageFormulaSalaryID: TIntegerField
      FieldName = 'SalaryID'
    end
    object qryWageFormulaMounthFrom: TWordField
      DisplayLabel = #1575#1586#1605#1575#1607
      FieldName = 'MounthFrom'
    end
    object qryWageFormulaMounthTo: TWordField
      DisplayLabel = #1578#1575#1605#1575#1607
      FieldName = 'MounthTo'
    end
    object qryWageFormulaSQLCalc: TWideStringField
      DisplayLabel = #1601#1585#1605#1608#1604
      FieldName = 'SQLCalc'
      OnChange = qryWageFormulaSQLCalcChange
      Size = 4000
    end
    object qryWageFormulaWhereSQLCalc: TStringField
      FieldName = 'WhereSQLCalc'
      OnChange = qryWageFormulaSQLCalcChange
      Size = 8000
    end
    object qryWageFormulaNote: TWideStringField
      DisplayLabel = #1578#1608#1590#1740#1581#1575#1578
      FieldName = 'Note'
      Size = 2000
    end
    object qryWageFormulaYearFrom: TIntegerField
      DisplayLabel = #1575#1586#1587#1575#1604
      FieldName = 'YearFrom'
    end
    object qryWageFormulaYearTo: TIntegerField
      DisplayLabel = #1578#1575#1587#1575#1604
      FieldName = 'YearTo'
    end
    object qryWageFormulaRunOrder: TWordField
      FieldName = 'RunOrder'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
  end
  object srcWageFormula: TDataSource
    DataSet = qryWageFormula
    OnStateChange = srcFormInfoStateChange
    Left = 256
    Top = 205
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
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'D:\projects\Fara\Salary\Report\forminfo5.rtm'
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
    Left = 720
    Top = 112
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 27517
      mmPrintPosition = 0
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606' '#1575#1591#1604#1575#1593#1575#1578' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5556
        mmLeft = 69850
        mmTop = 21960
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = #1603#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5556
        mmLeft = 181240
        mmTop = 21960
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 265
        mmTop = 21960
        mmWidth = 203200
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 265
        mmTop = 25929
        mmWidth = 203200
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        mmHeight = 5556
        mmLeft = 161661
        mmTop = 22490
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground1
      end
      object ppSysVarPageNo: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SysVarPageNo'
        OnGetText = ppSysVarPageNoGetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 15346
        mmTop = 1058
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground1
      end
      object pplblPrintDate: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lblPrintDate'
        OnGetText = pplblPrintDateGetText
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
        mmLeft = 15346
        mmTop = 6350
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
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
        mmHeight = 6085
        mmLeft = 72496
        mmTop = 265
        mmWidth = 52123
        BandType = 0
        LayerName = Foreground1
      end
      object ppLblFromCaption: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LblFromCaption'
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 14
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8202
        mmLeft = 94192
        mmTop = 6615
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5292
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
        mmTop = 265
        mmWidth = 203200
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
          Version = '23.0'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline2'
          object ppDetailBand2: TppDetailBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 5556
            mmPrintPosition = 0
            object ppDBText2: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText2'
              Border.mmPadding = 0
              DataField = 'InfoName_L1'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 5292
              mmLeft = 4763
              mmTop = 0
              mmWidth = 127265
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel3: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label3'
              Border.mmPadding = 0
              Caption = '  '
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Yagut'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              mmHeight = 5556
              mmLeft = 159015
              mmTop = 0
              mmWidth = 1588
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText4: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText4'
              Border.mmPadding = 0
              DataField = 'InfoID'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 5292
              mmLeft = 162190
              mmTop = 0
              mmWidth = 26723
              BandType = 4
              LayerName = Foreground
            end
          end
          object ppSummaryBand2: TppSummaryBand
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
            object ppLine4: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line4'
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 2117
              mmLeft = 0
              mmTop = 2117
              mmWidth = 203200
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc1: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc1'
              Border.mmPadding = 0
              DataField = 'InfoID'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DBCalcType = dcCount
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 5821
              mmLeft = 162719
              mmTop = 3704
              mmWidth = 17198
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel8: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label8'
              Border.mmPadding = 0
              Caption = #1578#1593#1583#1575#1583' :'#8207
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Yagut'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 5556
              mmLeft = 181769
              mmTop = 3969
              mmWidth = 7144
              BandType = 7
              LayerName = Foreground
            end
            object ppLine6: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line6'
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 1852
              mmLeft = 149754
              mmTop = 10583
              mmWidth = 39158
              BandType = 7
              LayerName = Foreground
            end
            object ppLine5: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line5'
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 1852
              mmLeft = 149754
              mmTop = 9790
              mmWidth = 39158
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
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 8
        LayerName = Foreground1
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 20902
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'FormInfoID'
      DataPipeline = ppDBPipeline1
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      ResetPageNo = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 6085
        mmPrintPosition = 0
        object ppDBText1: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText1'
          Border.mmPadding = 0
          DataField = 'InfoID'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 10
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6085
          mmLeft = 175948
          mmTop = 0
          mmWidth = 26723
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText3: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText3'
          Border.mmPadding = 0
          DataField = 'InfoName_L1'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Zar'
          Font.Size = 10
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 5821
          mmLeft = 3175
          mmTop = 265
          mmWidth = 156898
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel2: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label2'
          Border.mmPadding = 0
          Caption = '  '
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Yagut'
          Font.Size = 9
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          mmHeight = 5556
          mmLeft = 173302
          mmTop = 794
          mmWidth = 1588
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
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
    DataSource = srcFormInfo
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 624
    Top = 104
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'FormInfoID'
      FieldName = 'FormInfoID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'InfoName_L1'
      FieldName = 'InfoName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'InfoName_L2'
      FieldName = 'InfoName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'FormType'
      FieldName = 'FormType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'InfoID'
      FieldName = 'InfoID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'PrvInfoID'
      FieldName = 'PrvInfoID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'Amount'
      FieldName = 'Amount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'Amount2'
      FieldName = 'Amount2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'Coefficient'
      FieldName = 'Coefficient'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'StandardDays'
      FieldName = 'StandardDays'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'StandardTimes'
      FieldName = 'StandardTimes'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'AccTopicCode'
      FieldName = 'AccTopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'AccDetailCode'
      FieldName = 'AccDetailCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'AccCTopiccode'
      FieldName = 'AccCTopiccode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'AccCTopiccode2'
      FieldName = 'AccCTopiccode2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'RecallFormInfoID1'
      FieldName = 'RecallFormInfoID1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'RecallFormInfoID2'
      FieldName = 'RecallFormInfoID2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'WordDocuments'
      FieldName = 'WordDocuments'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'MaxDay'
      FieldName = 'MaxDay'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'MaxTime'
      FieldName = 'MaxTime'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'RecalKindClock'
      FieldName = 'RecalKindClock'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = 'CalCulateType'
      FieldName = 'CalCulateType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = 'TaxCode'
      FieldName = 'TaxCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField24: TppField
      FieldAlias = 'WageCalcKind'
      FieldName = 'WageCalcKind'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField25: TppField
      FieldAlias = 'FirstAmount'
      FieldName = 'FirstAmount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField26: TppField
      FieldAlias = 'PayMentActive'
      FieldName = 'PayMentActive'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = srcWageFormula
    OpenDataSource = False
    UserName = 'DBPipeline2'
    Left = 544
    Top = 112
    MasterDataPipelineName = 'ppDBPipeline1'
  end
  object qrySp_WageFormula: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qrySp_WageFormulaAfterOpen
    Parameters = <
      item
        Name = 'Mounth'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end
      item
        Name = 'year'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 94
      end
      item
        Name = 'YearMounth'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = '94/01'
      end
      item
        Name = 'PersonelNoFROM'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'PersonelNoTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end
      item
        Name = 'SalaryID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 14
      end>
    SQL.Strings = (
      
        'Pay.Sp_WageFormula :Mounth, :year ,:YearMounth ,:PersonelNoFROM ' +
        ',:PersonelNoTo ,:SalaryID')
    Left = 448
    Top = 416
  end
  object srcSp_WageFormula: TDataSource
    DataSet = qrySp_WageFormula
    OnStateChange = srcFormInfoStateChange
    Left = 584
    Top = 429
  end
  object qryVu_WageFormula: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     Kind, ID, Name'
      'FROM            Pay.Vu_WageFormula')
    Left = 256
    Top = 456
  end
  object qryWage: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'FormInfoID'
        DataType = ftString
        Size = 1
        Value = '3'
      end
      item
        Name = 'Kind'
        DataType = ftString
        Size = 1
        Value = '1'
      end>
    SQL.Strings = (
      'SELECT     F_SalaryRange.*'
      'FROM Pay.F_SalaryRange(:FormInfoID, :Kind) F_SalaryRange'
      'Order By InfoID')
    Left = 152
    Top = 293
    object qryWageFormInfoID: TIntegerField
      DisplayLabel = #1587#1585#1610#1575#1604
      FieldName = 'FormInfoID'
    end
    object qryWageSalaryID: TIntegerField
      DisplayLabel = #1587#1585#1610#1575#1604
      FieldName = 'SalaryID'
    end
    object qryWageKind: TWordField
      FieldName = 'Kind'
    end
    object qryWageInfoID: TIntegerField
      DisplayLabel = #1603#1583' '
      FieldName = 'InfoID'
    end
    object qryWageInfoName_L1: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1605#1586#1575#1610#1575' '
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object qryWageInfoName_L2: TStringField
      DisplayLabel = 'WageCaption'
      FieldName = 'InfoName_L2'
      Size = 255
    end
  end
  object SrcWage: TDataSource
    DataSet = qryWage
    OnStateChange = srcFormInfoStateChange
    Left = 264
    Top = 301
  end
  object qryWageKinds: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * FROM Pay.WageKinds'
      '')
    Left = 872
    Top = 501
  end
end

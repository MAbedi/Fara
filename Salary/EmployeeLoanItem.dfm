inherited EmployeeLoanItemF: TEmployeeLoanItemF
  Left = 286
  Top = 129
  ActiveControl = CmbLoans
  Caption = #1579#1576#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1608#1575#1605#1607#1575' '#1576#1575' '#1580#1586#1574#1610#1575#1578
  ClientHeight = 604
  ClientWidth = 955
  Position = poDesigned
  ExplicitWidth = 963
  ExplicitHeight = 635
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 563
    Width = 955
    ExplicitTop = 563
    ExplicitWidth = 955
    object newPanel: TPanel
      Left = 637
      Top = 1
      Width = 317
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object BitBtn3: TBitBtn
        AlignWithMargins = True
        Left = 239
        Top = 6
        Width = 75
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
        Left = 158
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
        Left = 77
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
      object btnGetExcel: TBitBtn
        AlignWithMargins = True
        Left = -4
        Top = 6
        Width = 75
        Height = 27
        Margins.Top = 6
        Margins.Bottom = 6
        Align = alRight
        Caption = #1583#1585#1610#1575#1601#1578'Excel'
        TabOrder = 3
        OnClick = btnGetExcelClick
      end
    end
    object okPanel: TPanel
      Left = 472
      Top = 1
      Width = 165
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      Visible = False
      object BitBtn7: TBitBtn
        AlignWithMargins = True
        Left = 87
        Top = 6
        Width = 75
        Height = 27
        Margins.Top = 6
        Margins.Bottom = 6
        Action = DataSetPost1
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
      object BitBtn8: TBitBtn
        AlignWithMargins = True
        Left = 6
        Top = 6
        Width = 75
        Height = 27
        Margins.Top = 6
        Margins.Bottom = 6
        Action = DataSetCancel1
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
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 85
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 3
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 166
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSearch_
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
    end
    object BitBtn9: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSendToExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 5
    end
    object BitBtn11: TBitBtn
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
      TabOrder = 6
    end
  end
  inherited Panel2: TPanel
    Width = 955
    TabOrder = 2
    ExplicitWidth = 955
    DesignSize = (
      955
      53)
    inherited ImgTemplate: TImage
      Left = 917
      ExplicitLeft = 735
    end
    inherited lblCaption: TLabel
      Left = 847
      ExplicitLeft = 847
    end
    object LblName: TLabel
      Left = 383
      Top = 30
      Width = 44
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = #1593#1606#1608#1575#1606' '#1608#1575#1605
      ParentBiDiMode = False
    end
    object btn1: TSpeedButton
      Left = 4
      Top = 25
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = btn1Click
    end
    object CmbLoans: TComboBox
      Left = 28
      Top = 26
      Width = 351
      Height = 21
      Style = csDropDownList
      Color = 13828095
      TabOrder = 0
      OnChange = CmbLoansChange
      OnEnter = CmbLoansEnter
    end
    object CheckBox1: TCheckBox
      Left = 456
      Top = 30
      Width = 84
      Height = 17
      Caption = #1607#1605#1607' '#1608#1575#1605' '#1607#1575
      TabOrder = 1
      OnClick = CmbLoansChange
    end
  end
  inherited Panel3: TPanel
    Width = 955
    Height = 510
    TabOrder = 1
    ExplicitWidth = 955
    ExplicitHeight = 510
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 305
      Height = 506
      Align = alLeft
      TabOrder = 1
      object Panel5: TPanel
        Left = 1
        Top = 441
        Width = 303
        Height = 64
        Align = alBottom
        TabOrder = 1
        DesignSize = (
          303
          64)
        object PnlItems: TPanel
          Left = 1
          Top = 32
          Width = 301
          Height = 31
          Align = alBottom
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Visible = False
          object newPanel2: TPanel
            Left = 105
            Top = 1
            Width = 195
            Height = 29
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 0
            DesignSize = (
              195
              29)
            object BitBtn12: TBitBtn
              Left = 147
              Top = 6
              Width = 45
              Height = 18
              Action = DataSetInsert2
              Anchors = [akTop, akRight]
              Caption = #1580#1583#1610#1583
              TabOrder = 0
            end
            object BitBtn13: TBitBtn
              Left = 100
              Top = 6
              Width = 45
              Height = 18
              Action = DataSetEdit2
              Anchors = [akTop, akRight]
              Caption = #1608#1610#1585#1575#1610#1588
              TabOrder = 1
            end
            object BitBtn14: TBitBtn
              Left = 53
              Top = 6
              Width = 45
              Height = 18
              Action = DataSetDelete2
              Anchors = [akTop, akRight]
              Caption = #1581#1584#1601
              TabOrder = 2
            end
            object BitBtn10: TBitBtn
              Left = 5
              Top = 6
              Width = 45
              Height = 18
              Action = actCalc
              Anchors = [akTop, akRight]
              Caption = #1605#1581#1575#1587#1576#1607
              TabOrder = 3
            end
          end
          object okPanel2: TPanel
            Left = 7
            Top = 1
            Width = 98
            Height = 29
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            DesignSize = (
              98
              29)
            object BitBtn15: TBitBtn
              Left = 52
              Top = 8
              Width = 45
              Height = 18
              Action = DataSetPost2
              Anchors = [akTop, akRight]
              Caption = #1578#1575#1610#1610#1583
              TabOrder = 0
            end
            object BitBtn16: TBitBtn
              Left = 3
              Top = 9
              Width = 45
              Height = 18
              Action = DataSetCancel2
              Anchors = [akTop, akRight]
              Caption = #1575#1606#1589#1585#1575#1601
              TabOrder = 1
            end
          end
        end
        object BitBtn18: TBitBtn
          Left = 5
          Top = 5
          Width = 75
          Height = 25
          Action = actSendToExcel2
          Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
          TabOrder = 1
        end
        object BitBtn19: TBitBtn
          Left = 224
          Top = 3
          Width = 75
          Height = 25
          Action = actDeleteAll
          Anchors = [akTop, akRight]
          Caption = #1581#1584#1601#8207#1603#1604#1610#8207#1575#1602#1587#1575#1591
          TabOrder = 2
        end
        object btnReInstallment: TBitBtn
          Left = 88
          Top = 3
          Width = 134
          Height = 25
          Anchors = [akTop, akRight]
          Caption = #1578#1602#1587#1740#1591' '#1605#1580#1583#1583' '#1575#1586' '#1587#1591#1585' '#1580#1575#1585#1740
          TabOrder = 3
          Visible = False
          OnClick = NAmountCalcClick
        end
      end
      object grd2: TCedarDbgrid
        Tag = 111
        Left = 1
        Top = 1
        Width = 303
        Height = 440
        Align = alClient
        Color = clCream
        DataSource = SrcItem
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
        ParentFont = False
        PopupMenu = pMnuDBGrid2
        RowHeight = 18
        SearchPanel.Enabled = True
        SearchPanel.FilterOnTyping = True
        SortLocal = True
        TabOrder = 0
        OnKeyPress = grd2KeyPress
        ActiveSearchPanel = False
        SelectFooterIndex = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Years'
            Footers = <>
            Title.TitleButton = True
            Width = 50
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Months'
            Footers = <>
            Title.TitleButton = True
            Width = 50
          end
          item
            ButtonStyle = cbsDropDown
            CellButtons = <>
            Color = 13236955
            DynProps = <>
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'Amount'
            Footer.FieldName = 'Amount'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.TitleButton = True
            Width = 50
          end
          item
            ButtonStyle = cbsDropDown
            CellButtons = <>
            Color = 13236955
            DynProps = <>
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'Remain'
            Footers = <>
            Title.TitleButton = True
            Width = 50
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object Panel4: TPanel
      Left = 307
      Top = 2
      Width = 646
      Height = 506
      Align = alClient
      TabOrder = 0
      object Panel6: TPanel
        Left = 1
        Top = 297
        Width = 644
        Height = 208
        Align = alBottom
        TabOrder = 0
        DesignSize = (
          644
          208)
        object Label2: TLabel
          Left = 581
          Top = 37
          Width = 44
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1605#1576#1604#1594' '#1575#1608#1604#1610#1607
          ExplicitLeft = 471
        end
        object Label8: TLabel
          Left = 438
          Top = 37
          Width = 45
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1605#1576#1604#1594#8207#1602#1587#1591
          ExplicitLeft = 442
        end
        object Label1: TLabel
          Left = 606
          Top = 147
          Width = 29
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1587#1608#1610#1607
          FocusControl = edtSettlement
          ExplicitLeft = 545
        end
        object Label3: TLabel
          Left = 581
          Top = 121
          Width = 62
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1602#1575#1576#1604#8207#1603#1587#1585#1575#1586#1605#1575#1607
          ExplicitLeft = 520
        end
        object LblAidDate1: TLabel
          Left = 438
          Top = 64
          Width = 39
          Height = 13
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Caption = #1578#1575#1585#1610#1582' '#1608#1575#1605
          ParentBiDiMode = False
          ExplicitLeft = 442
        end
        object lblAidNo1: TLabel
          Left = 581
          Top = 63
          Width = 48
          Height = 13
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Caption = #1588#1605#1575#1585#1607' '#1608#1575#1605
          ParentBiDiMode = False
          ExplicitLeft = 471
        end
        object LblAidDate2: TLabel
          Left = 94
          Top = 64
          Width = 42
          Height = 13
          BiDiMode = bdLeftToRight
          Caption = #1578#1575#1585#1610#1582#8207#1587#1606#1583
          ParentBiDiMode = False
        end
        object lblAidNo2: TLabel
          Left = 195
          Top = 63
          Width = 51
          Height = 13
          BiDiMode = bdLeftToRight
          Caption = #1588#1605#1575#1585#1607#8207#1587#1606#1583
          ParentBiDiMode = False
        end
        object SBnPersonelNo: TSpeedButton
          Left = 470
          Top = 5
          Width = 23
          Height = 22
          Anchors = [akTop, akRight]
          Caption = '...'
          OnClick = SBnPersonelNoClick
          ExplicitLeft = 360
        end
        object Label4: TLabel
          Left = 581
          Top = 10
          Width = 64
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 471
        end
        object Label5: TLabel
          Left = 414
          Top = 119
          Width = 69
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1602#1575#1576#1604#8207#1603#1587#1585#1575#1586#1587#1575#1604
          FocusControl = edtDayTime
          ExplicitLeft = 418
        end
        object lbl1: TLabel
          Left = 195
          Top = 91
          Width = 40
          Height = 13
          Caption = #1578#1608#1590#1610#1581#1575#1578
          FocusControl = dbmmoNote_L1
        end
        object lbl2: TLabel
          Left = 96
          Top = 37
          Width = 87
          Height = 13
          Caption = #1662#1585#1583#1575#1582#1578#1610#8207#1587#1606#1608#1575#1578#8207#1602#1576#1604
          FocusControl = edtPaymentLoan
        end
        object SpeedButton1: TSpeedButton
          Left = 581
          Top = 142
          Width = 23
          Height = 22
          Anchors = [akTop, akRight]
          Caption = '...'
          OnClick = SpeedButton1Click
          ExplicitLeft = 520
        end
        object Label6: TLabel
          Left = 414
          Top = 146
          Width = 53
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1575#1585#1610#1582' '#1578#1587#1608#1610#1607
          FocusControl = edtSettlementDate
          ExplicitLeft = 418
        end
        object Label7: TLabel
          Left = 288
          Top = 37
          Width = 53
          Height = 13
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Caption = #1578#1593#1583#1575#1583#1575#1602#1587#1575#1591
          ParentBiDiMode = False
          ExplicitLeft = 292
        end
        object Label9: TLabel
          Left = 462
          Top = 91
          Width = 171
          Height = 13
          Anchors = [akTop, akRight]
          Caption = ' '#1602#1575#1576#1604' '#1662#1585#1583#1575#1582#1578' '#1591#1740' '#1601#1740#1588' '#1581#1602#1608#1602#1740' '#1583#1585' '#1605#1575#1607
          ExplicitLeft = 466
        end
        object Label10: TLabel
          Left = 288
          Top = 91
          Width = 21
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1587#1575#1604
          FocusControl = edtStartYear
          ExplicitLeft = 292
        end
        object edtEmployerAmount: TDBEdit
          Left = 493
          Top = 33
          Width = 86
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'EmployerAmount'
          DataSource = SrcPersonelDecExt
          TabOrder = 1
        end
        object edtEmployeeAmount: TDBEdit
          Left = 348
          Top = 33
          Width = 86
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'EmployeeAmount'
          DataSource = SrcPersonelDecExt
          TabOrder = 2
        end
        object edtSettlement: TDBEdit
          Left = 493
          Top = 144
          Width = 86
          Height = 21
          Anchors = [akTop, akRight]
          Ctl3D = True
          DataField = 'Settlement'
          DataSource = SrcPersonelDecExt
          ParentCtl3D = False
          TabOrder = 11
        end
        object edtFirstMounth: TDBEdit
          Left = 493
          Top = 117
          Width = 86
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'FirstMounth'
          DataSource = SrcPersonelDecExt
          TabOrder = 9
        end
        object EdtAidNo2: TDBEdit
          Left = 493
          Top = 60
          Width = 86
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'AidNo2'
          DataSource = SrcPersonelDecExt
          TabOrder = 5
        end
        object EdtAidDate2: TDBEdit
          Left = 348
          Top = 60
          Width = 86
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'AidDate2'
          DataSource = SrcPersonelDecExt
          TabOrder = 6
        end
        object EdtAidDate1: TDBEdit
          Left = 6
          Top = 59
          Width = 86
          Height = 21
          DataField = 'AidDate1'
          DataSource = SrcPersonelDecExt
          TabOrder = 8
        end
        object EdtAidNo1: TDBEdit
          Left = 139
          Top = 59
          Width = 56
          Height = 21
          DataField = 'AidNo1'
          DataSource = SrcPersonelDecExt
          TabOrder = 7
        end
        object DBEdit6: TDBEdit
          Left = 5
          Top = 7
          Width = 463
          Height = 19
          TabStop = False
          Anchors = [akLeft, akTop, akRight]
          Color = clInactiveBorder
          Ctl3D = False
          DataField = '_Name'
          DataSource = SrcPersonelDecExt
          ParentCtl3D = False
          TabOrder = 14
        end
        object edtPersonelNo: TDBEdit
          Left = 496
          Top = 5
          Width = 86
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          DataField = 'PersonelNo'
          DataSource = SrcPersonelDecExt
          ParentBiDiMode = False
          TabOrder = 0
          OnKeyDown = edtPersonelNoKeyDown
        end
        object edtDayTime: TDBEdit
          Left = 348
          Top = 115
          Width = 64
          Height = 21
          Anchors = [akTop, akRight]
          Ctl3D = True
          DataField = 'DayTime'
          DataSource = SrcPersonelDecExt
          ParentCtl3D = False
          TabOrder = 10
        end
        object dbmmoNote_L1: TDBMemo
          Left = 6
          Top = 88
          Width = 189
          Height = 83
          DataField = 'Note_L1'
          DataSource = SrcPersonelDecExt
          TabOrder = 13
        end
        object edtPaymentLoan: TDBEdit
          Left = 7
          Top = 33
          Width = 86
          Height = 21
          DataField = 'PaymentLoan'
          DataSource = SrcPersonelDecExt
          TabOrder = 4
        end
        object edtSettlementDate: TDBEdit
          Left = 348
          Top = 142
          Width = 64
          Height = 21
          Anchors = [akTop, akRight]
          Ctl3D = True
          DataField = 'SettlementDate'
          DataSource = SrcPersonelDecExt
          ParentCtl3D = False
          TabOrder = 12
        end
        object edtEndMounth: TDBEdit
          Left = 238
          Top = 32
          Width = 46
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'EndMounth'
          DataSource = SrcPersonelDecExt
          TabOrder = 3
        end
        object cmbPayableDuringMonth: TDBComboBox
          Left = 348
          Top = 87
          Width = 111
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          DataField = 'PayableDuringMonth'
          DataSource = SrcPersonelDecExt
          Items.Strings = (
            #1606#1583#1575#1585#1583
            #1601#1585#1608#1585#1583#1610#1606' '
            #1575#1585#1583#1610#1576#1607#1588#1578' '
            #1582#1585#1583#1575#1583
            #1578#1610#1585
            #1605#1585#1583#1575#1583
            #1588#1607#1585#1610#1608#1585
            #1605#1607#1585
            #1570#1576#1575#1606
            #1570#1584#1585
            #1583#1610
            #1576#1607#1605#1606
            #1575#1587#1601#1606#1583)
          ParentBiDiMode = False
          TabOrder = 15
        end
        object edtStartYear: TDBEdit
          Left = 238
          Top = 87
          Width = 46
          Height = 21
          Anchors = [akTop, akRight]
          Ctl3D = True
          DataField = 'StartYear'
          DataSource = SrcPersonelDecExt
          ParentCtl3D = False
          TabOrder = 16
        end
        object Panel7: TPanel
          Left = 1
          Top = 177
          Width = 642
          Height = 30
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 17
          object txtLastUser: TDBText
            AlignWithMargins = True
            Left = 95
            Top = 3
            Width = 56
            Height = 24
            Align = alLeft
            AutoSize = True
            DataField = 'LastUser'
            DataSource = SrcPersonelDecExt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitHeight = 13
          end
          object txtFirstUser: TDBText
            AlignWithMargins = True
            Left = 157
            Top = 3
            Width = 57
            Height = 24
            CustomHint = DmF.BalloonHint1
            Align = alLeft
            AutoSize = True
            DataField = 'FirstUser'
            DataSource = SrcPersonelDecExt
            ExplicitHeight = 13
          end
          object btnRelAcc: TBitBtn
            Left = 0
            Top = 0
            Width = 92
            Height = 30
            Action = actRelAcc
            Align = alLeft
            Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1583#1575#1585#1610
            TabOrder = 0
          end
          object btnCalc: TBitBtn
            Left = 567
            Top = 0
            Width = 75
            Height = 30
            Action = actCalc
            Align = alRight
            Caption = #1605#1581#1575#1587#1576#1607
            TabOrder = 1
          end
        end
      end
      object grd1: TCedarDbgrid
        Left = 1
        Top = 1
        Width = 644
        Height = 296
        Align = alClient
        Color = clCream
        DataSource = SrcPersonelDecExt
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
        RowHeight = 18
        SearchPanel.Enabled = True
        SearchPanel.FilterOnTyping = True
        SortLocal = True
        TabOrder = 1
        OnKeyPress = DBGrid1KeyPress
        ActiveSearchPanel = False
        SelectFooterIndex = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_FormInfoID'
            Footers = <>
            Width = 57
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PersonelNo'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_Name'
            Footers = <>
            Width = 64
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'EmployeeAmount'
            Footers = <>
            Width = 64
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FirstMounth'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'EndMounth'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'AidNo2'
            Footers = <>
            Width = 64
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'AidDate2'
            Footers = <>
            Width = 64
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'AidNo1'
            Footers = <>
            Width = 64
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'AidDate1'
            Footers = <>
            Width = 64
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'EmployerAmount'
            Footers = <>
            Width = 64
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PaymentLoan'
            Footers = <>
            Width = 64
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Settlement'
            Footers = <>
            Width = 46
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SettlementDate'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PayableDuringMonth'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'StartYear'
            Footers = <>
            Width = 34
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PayableDuringMonth'
            Footers = <>
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  inherited ActionList: TActionList
    Left = 760
    Top = 128
    inherited DataSetInsert1: TDataSetInsert
      DataSource = SrcPersonelDecExt
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = SrcPersonelDecExt
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = SrcPersonelDecExt
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = SrcPersonelDecExt
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = SrcPersonelDecExt
    end
    object actSendToExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actRelAcc: TAction
      Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1583#1575#1585#1610
      OnExecute = actRelAccExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      OnExecute = actPrintExecute
    end
    object actCalc: TAction
      Caption = #1605#1581#1575#1587#1576#1607
      OnExecute = actCalcExecute
    end
    object DataSetInsert2: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      Hint = ' '
      DataSource = SrcItem
    end
    object DataSetEdit2: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      Hint = ' '
      DataSource = SrcItem
    end
    object DataSetPost2: TDataSetPost
      Category = 'Dataset'
      Caption = #1578#1575#1610#1610#1583
      Hint = ' '
      DataSource = SrcItem
    end
    object DataSetCancel2: TDataSetCancel
      Category = 'Dataset'
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = ' '
      DataSource = SrcItem
    end
    object DataSetDelete2: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
      DataSource = SrcItem
    end
    object actSendToExcel2: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel '#1575#1602#1587#1575#1591
      Visible = False
      OnExecute = actSendToExcel2Execute
    end
    object actDeleteAll: TAction
      Caption = #1581#1584#1601#8207#1603#1604#1610#8207#1575#1602#1587#1575#1591
      Visible = False
      OnExecute = actDeleteAllExecute
    end
    object actGetExcel: TAction
      Caption = #1583#1585#1610#1575#1601#1578'Excel'#1608#1575#1605
      OnExecute = actGetExcelExecute
    end
    object actGetExcelMS: TAction
      Caption = #1583#1585#1610#1575#1601#1578'Excel'#1608#1575#1605' '#1608' '#1580#1586#1574#1610#1575#1578
      OnExecute = actGetExcelMSExecute
    end
    object actCalcAll: TAction
      Caption = #1605#1581#1575#1587#1576#1607' '#1603#1604#1610
      OnExecute = actCalcAllExecute
    end
    object actCalcAllCurentRow: TAction
      Caption = #1605#1581#1575#1587#1576#1607' '#1603#1604#1610' '#1575#1602#1587#1575#1591' '#1607#1605#1607' '#1608#1575#1605' '#1607#1575' '#1575#1586'  '#1587#1591#1585' '#1570#1582#1585' '#1607#1585' '#1608#1575#1605
      OnExecute = actCalcAllCurentRowExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 248
    Top = 145
  end
  object qryInitForm: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'FormType'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 3
        Size = 1
        Value = 0
      end>
    SQL.Strings = (
      'select * FROM Pay.FormTypes'
      'where  SalaryKind=:FormType')
    Left = 874
    Top = 140
  end
  object qryPersonelDecExt: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterOpen = qryPersonelDecExtAfterOpen
    AfterInsert = qryPersonelDecExtAfterInsert
    AfterEdit = qryPersonelDecExtAfterEdit
    BeforePost = qryPersonelDecExtBeforePost
    AfterPost = qryPersonelDecExtAfterPost
    BeforeCancel = qryPersonelDecExtBeforeCancel
    AfterCancel = qryPersonelDecExtAfterCancel
    BeforeDelete = qryPersonelDecExtBeforeDelete
    BeforeScroll = qryPersonelDecExtBeforeScroll
    AfterScroll = qryPersonelDecExtAfterScroll
    Parameters = <>
    Left = 408
    Top = 168
    object qryPersonelDecExtDecExtID: TIntegerField
      FieldName = 'DecExtID'
    end
    object qryPersonelDecExtFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qryPersonelDecExtPersonelNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588'.'#1662#1585#1587#1606#1604
      FieldName = 'PersonelNo'
      OnChange = qryPersonelDecExtPersonelNoChange
    end
    object qryPersonelDecExt_Name: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1662#1585#1587#1606#1604
      FieldKind = fkLookup
      FieldName = '_Name'
      LookupDataSet = qryPeronalInfo
      LookupKeyFields = 'PersonelNo'
      LookupResultField = 'Name'
      KeyFields = 'PersonelNo'
      Size = 150
      Lookup = True
    end
    object qryPersonelDecExtEmployeeAmount: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1602#1587#1591
      FieldName = 'EmployeeAmount'
      OnChange = qryPersonelDecExtEmployeeAmountChange
      currency = True
      Precision = 19
    end
    object qryPersonelDecExtAidNo1: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1587#1606#1583
      FieldName = 'AidNo1'
      Size = 30
    end
    object qryPersonelDecExtAidDate1_L1: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1587#1606#1583
      FieldName = 'AidDate1'
      OnChange = qryPersonelDecExtAidDate1_L1Change
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryPersonelDecExtAidNo2: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1608#1575#1605
      FieldName = 'AidNo2'
      Size = 30
    end
    object qryPersonelDecExtAidDate2_L1: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1608#1575#1605
      FieldName = 'AidDate2'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryPersonelDecExtDayTime: TFloatField
      Tag = 3
      FieldName = 'DayTime'
    end
    object qryPersonelDecExtEmployerAmount: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1575#1608#1604#1610#1607
      FieldName = 'EmployerAmount'
      OnChange = qryPersonelDecExtEmployeeAmountChange
      currency = True
      Precision = 19
    end
    object qryPersonelDecExtFormInfoID2: TIntegerField
      Tag = 3
      FieldName = 'FormInfoID2'
    end
    object qryPersonelDecExtAccTopicCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576#1583#1575#1585#1610
      FieldName = 'AccTopicCode'
    end
    object qryPersonelDecExtAccDetailCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610
      FieldName = 'AccDetailCode'
    end
    object qryPersonelDecExtAccCTopicCode: TIntegerField
      Tag = 3
      FieldName = 'AccCTopicCode'
    end
    object qryPersonelDecExtAccCTopicCode2: TIntegerField
      Tag = 3
      FieldName = 'AccCTopicCode2'
    end
    object qryPersonelDecExtDayQuntity: TFloatField
      Tag = 3
      FieldName = 'DayQuntity'
    end
    object qryPersonelDecExtPaymentLoan: TBCDField
      Tag = 3
      DisplayLabel = #1662#1585#1583#1575#1582#1578#1610' '#1587#1606#1608#1575#1578' '#1602#1576#1604
      FieldName = 'PaymentLoan'
      currency = True
      Precision = 19
    end
    object qryPersonelDecExtState: TWordField
      Tag = 3
      FieldName = 'State'
    end
    object qryPersonelDecExtAccCTopicCode3: TIntegerField
      Tag = 3
      FieldName = 'AccCTopicCode3'
    end
    object qryPersonelDecExtSettlement: TBCDField
      Tag = 3
      DisplayLabel = #1578#1587#1608#1610#1607
      FieldName = 'Settlement'
      currency = True
      Precision = 19
    end
    object qryPersonelDecExtFirstMounth: TIntegerField
      Tag = 3
      DisplayLabel = #1602#1575#1576#1604#8207#1603#1587#1585#1575#1586#1605#1575#1607
      FieldName = 'FirstMounth'
      Required = True
    end
    object qryPersonelDecExtEndMounth: TIntegerField
      Tag = 3
      DisplayLabel = #1578#1593#1583#1575#1583' '#1575#1602#1587#1575#1591
      FieldName = 'EndMounth'
      Required = True
      OnChange = qryPersonelDecExtEndMounthChange
    end
    object qryPersonelDecExtSettlementDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1578#1587#1608#1610#1607
      FieldName = 'SettlementDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryPersonelDecExtPayableDuringMonth: TWordField
      Tag = 3
      DisplayLabel = ' '#1602#1575#1576#1604' '#1662#1585#1583#1575#1582#1578' '#1591#1740' '#1601#1740#1588' '#1581#1602#1608#1602#1740' '#1583#1585' '#1605#1575#1607
      FieldName = 'PayableDuringMonth'
      OnChange = qryPersonelDecExtPayableDuringMonthChange
      OnGetText = ALLGetText
      OnSetText = AllSetText
    end
    object qryPersonelDecExtStartYear: TIntegerField
      Tag = 3
      DisplayLabel = #1587#1575#1604
      FieldName = 'StartYear'
    end
    object qryPersonelDecExtLastUser: TWideStringField
      Tag = 3
      FieldName = 'LastUser'
    end
    object qryPersonelDecExtFirstUser: TWideStringField
      Tag = 3
      FieldName = 'FirstUser'
    end
    object qryPersonelDecExtNote_L1: TWideStringField
      Tag = 3
      FieldName = 'Note_L1'
      Size = 4000
    end
    object qryPersonelDecExtNote_L2: TWideStringField
      Tag = 3
      FieldName = 'Note_L2'
      Size = 4000
    end
    object qryPersonelDecExt_FormInfoID: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1606#1575#1605
      FieldKind = fkLookup
      FieldName = '_FormInfoID'
      LookupDataSet = qryLoans
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'FormInfoID'
      LookupCache = True
      Size = 200
      Lookup = True
    end
    object qryPersonelDecExtYearID: TIntegerField
      FieldName = 'YearID'
    end
  end
  object SrcPersonelDecExt: TDataSource
    AutoEdit = False
    DataSet = qryPersonelDecExt
    OnStateChange = SrcPersonelDecExtStateChange
    Left = 435
    Top = 264
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
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
    Template.FileName = 'D:\Projects\Fara\Salary\Exe\Report\EmployeeLoanItem.rtm'
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
    Left = 649
    Top = 224
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 40746
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
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
        mmTop = 0
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LblCaption'
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578' '#1608#1575#1605' '#1662#1585#1587#1606#1604' '#1576#1578#1601#1603#1610#1603' '#1662#1585#1587#1606#1604
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
        mmLeft = 72231
        mmTop = 6350
        mmWidth = 58738
        BandType = 0
        LayerName = Foreground1
      end
      object SysvarPageNum: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SysVarPageNo1'
        OnGetText = SysvarPageNumGetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 4763
        mmTop = 18521
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Width = 2
        Weight = 1.250000000000000000
        mmHeight = 1588
        mmLeft = 1058
        mmTop = 26194
        mmWidth = 200290
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594' '#1608#1575#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 50536
        mmTop = 30427
        mmWidth = 31750
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = #1602#1587#1591' '#1608#1575#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 25929
        mmTop = 30427
        mmWidth = 23813
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = #1588#1585#1608#1593' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 15610
        mmTop = 26988
        mmWidth = 9790
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 1852
        mmLeft = 1058
        mmTop = 38894
        mmWidth = 200290
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1662#1585#1587#1606#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 129646
        mmTop = 30427
        mmWidth = 67998
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = #1575#1602#1587#1575#1591
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 15875
        mmTop = 32808
        mmWidth = 9525
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = #1578#1593#1583#1575#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 3440
        mmTop = 27252
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = #1575#1602#1587#1575#1591
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 2910
        mmTop = 33073
        mmWidth = 9525
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = #1605#1575#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 86784
        mmTop = 31221
        mmWidth = 16669
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label14'
        Border.mmPadding = 0
        Caption = #1587#1575#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 109802
        mmTop = 31221
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 7938
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
        mmTop = 1058
        mmWidth = 203300
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
          PrinterSetup.mmPaperHeight = 279000
          PrinterSetup.mmPaperWidth = 216000
          PrinterSetup.PaperSize = 1
          Units = utMillimeters
          Version = '23.0'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline2'
          object ppTitleBand1: TppTitleBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
            object ppLine6: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line6'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 2
              Weight = 1.250000000000000000
              mmHeight = 2117
              mmLeft = 3175
              mmTop = 0
              mmWidth = 200290
              BandType = 1
              LayerName = Foreground
            end
            object ppLine7: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line7'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 2
              Weight = 1.500000000000000000
              mmHeight = 2117
              mmLeft = 3175
              mmTop = 0
              mmWidth = 200290
              BandType = 1
              LayerName = Foreground
            end
            object ppLine8: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line8'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 2
              Weight = 1.250000000000000000
              mmHeight = 2117
              mmLeft = 3175
              mmTop = 0
              mmWidth = 200290
              BandType = 1
              LayerName = Foreground
            end
            object ppLine9: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line9'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 2
              Weight = 1.500000000000000000
              mmHeight = 2117
              mmLeft = 3175
              mmTop = 0
              mmWidth = 200290
              BandType = 1
              LayerName = Foreground
            end
            object ppLine10: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line10'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 2
              Weight = 1.250000000000000000
              mmHeight = 2117
              mmLeft = 3175
              mmTop = 0
              mmWidth = 200290
              BandType = 1
              LayerName = Foreground
            end
            object ppLine11: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line11'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 2
              Weight = 1.500000000000000000
              mmHeight = 2117
              mmLeft = 3175
              mmTop = 0
              mmWidth = 200290
              BandType = 1
              LayerName = Foreground
            end
            object ppLine12: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line12'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 2
              Weight = 1.250000000000000000
              mmHeight = 2117
              mmLeft = 3175
              mmTop = 0
              mmWidth = 200290
              BandType = 1
              LayerName = Foreground
            end
            object ppLine13: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line13'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 2
              Weight = 1.500000000000000000
              mmHeight = 2117
              mmLeft = 3175
              mmTop = 0
              mmWidth = 200290
              BandType = 1
              LayerName = Foreground
            end
          end
          object ppDetailBand2: TppDetailBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 7144
            mmPrintPosition = 0
            object ppDBText3: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText7'
              Border.mmPadding = 0
              DataField = 'EndMounth'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6085
              mmLeft = 5292
              mmTop = 794
              mmWidth = 9525
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText7: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText6'
              Border.mmPadding = 0
              DataField = 'FirstMounth'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6350
              mmLeft = 17198
              mmTop = 794
              mmWidth = 10583
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText8: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText8'
              Border.mmPadding = 0
              DataField = 'Amount'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0;-#,0'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6350
              mmLeft = 28310
              mmTop = 794
              mmWidth = 23813
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText6: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText5'
              Border.mmPadding = 0
              DataField = 'EmployerAmount'
              DataPipeline = ppDBPipeline1
              DisplayFormat = '#,0;-#,0'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6350
              mmLeft = 53711
              mmTop = 794
              mmWidth = 30692
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText1: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText2'
              Border.mmPadding = 0
              DataField = 'Years'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 5821
              mmLeft = 108215
              mmTop = 794
              mmWidth = 13758
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText5: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText1'
              Border.mmPadding = 0
              DataField = 'Months'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 5821
              mmLeft = 87313
              mmTop = 529
              mmWidth = 13758
              BandType = 4
              LayerName = Foreground
            end
          end
          object ppSummaryBand2: TppSummaryBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 7408
            mmPrintPosition = 0
            object ppDBCalc2: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc2'
              Border.mmPadding = 0
              DataField = 'Amount'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0;-#,0'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6350
              mmLeft = 53711
              mmTop = 529
              mmWidth = 30692
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel12: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label12'
              Border.mmPadding = 0
              Caption = #1580#1605#1593
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Yagut'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 5821
              mmLeft = 84931
              mmTop = 529
              mmWidth = 5292
              BandType = 7
              LayerName = Foreground
            end
            object ppLine14: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line14'
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 2381
              mmLeft = 0
              mmTop = 0
              mmWidth = 203200
              BandType = 7
              LayerName = Foreground
            end
            object ppLine15: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line15'
              Border.mmPadding = 0
              Position = lpBottom
              Weight = 0.750000000000000000
              mmHeight = 1588
              mmLeft = 265
              mmTop = 5820
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
        end
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'PersonelNo'
      DataPipeline = ppDBPipeline1
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 8467
        mmPrintPosition = 0
        object ppLine2: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line2'
          Border.mmPadding = 0
          Weight = 1.000000000000000000
          mmHeight = 1323
          mmLeft = 128588
          mmTop = 7144
          mmWidth = 72761
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText2: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText1'
          Border.mmPadding = 0
          DataField = 'PersonelNo'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6350
          mmLeft = 182827
          mmTop = 0
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText4: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText4'
          Border.mmPadding = 0
          DataField = '_Name'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6350
          mmLeft = 130704
          mmTop = 0
          mmWidth = 51594
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Visible = False
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 13494
        mmPrintPosition = 0
        object ppLine4: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line4'
          Border.mmPadding = 0
          Pen.Color = clGray
          Pen.Width = 2
          Weight = 1.250000000000000000
          mmHeight = 2117
          mmLeft = 1058
          mmTop = 1852
          mmWidth = 200290
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel2: TppLabel
          DesignLayer = ppDesignLayer2
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
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 5821
          mmLeft = 82815
          mmTop = 2910
          mmWidth = 5292
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc1: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBCalc1'
          Border.mmPadding = 0
          DataField = 'Amount'
          DataPipeline = ppDBPipeline2
          DisplayFormat = '#,0;-#,0'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 6350
          mmLeft = 50536
          mmTop = 3175
          mmWidth = 31750
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine5: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line5'
          Border.mmPadding = 0
          Pen.Color = clGray
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 2117
          mmLeft = 1058
          mmTop = 9790
          mmWidth = 200290
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
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
    DataSource = SrcPersonelDecExt
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 697
    Top = 136
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'DecExtID'
      FieldName = 'DecExtID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'FormInfoID'
      FieldName = 'FormInfoID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'PersonelNo'
      FieldName = 'PersonelNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = '_Name'
      FieldName = '_Name'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'EmployeeAmount'
      FieldName = 'EmployeeAmount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'FirstMounth'
      FieldName = 'FirstMounth'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'EndMounth'
      FieldName = 'EndMounth'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'AidNo1'
      FieldName = 'AidNo1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'AidDate1'
      FieldName = 'AidDate1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'AidNo2'
      FieldName = 'AidNo2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'AidDate2'
      FieldName = 'AidDate2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'DayTime'
      FieldName = 'DayTime'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'EmployerAmount'
      FieldName = 'EmployerAmount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'FormInfoID2'
      FieldName = 'FormInfoID2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'Note_L1'
      FieldName = 'Note_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'Note_L2'
      FieldName = 'Note_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'AccTopicCode'
      FieldName = 'AccTopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'AccDetailCode'
      FieldName = 'AccDetailCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'AccCTopicCode'
      FieldName = 'AccCTopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'AccCTopicCode2'
      FieldName = 'AccCTopicCode2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'DayQuntity'
      FieldName = 'DayQuntity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = 'PaymentLoan'
      FieldName = 'PaymentLoan'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = 'State'
      FieldName = 'State'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField24: TppField
      FieldAlias = 'AccCTopicCode3'
      FieldName = 'AccCTopicCode3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = SrcItem
    OpenDataSource = False
    UserName = 'DBPipeline2'
    Left = 561
    Top = 144
    MasterDataPipelineName = 'ppDBPipeline1'
  end
  object qryItems: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = qryItemsAfterOpen
    BeforeInsert = qryItemsBeforeInsert
    AfterInsert = qryItemsAfterInsert
    BeforeEdit = qryItemsBeforeEdit
    BeforePost = qryItemsBeforePost
    BeforeDelete = qryItemsBeforeDelete
    Parameters = <
      item
        Name = 'DecExtID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT        PersonelDecExtItem.DecExtID, PersonelDecExtItem.Ye' +
        'ars, PersonelDecExtItem.Months, PersonelDecExtItem.Amount, Perso' +
        'nelDecExtItem.ID, Fitful.FitfulIDc AS Remain'
      'FROM Pay.PersonelDecExtItem LEFT OUTER JOIN'
      
        '                         Fitful ON PersonelDecExtItem.DecExtID =' +
        ' Fitful.FitfulID'
      'WHERE        (PersonelDecExtItem.DecExtID = :DecExtID)'
      'ORDER BY PersonelDecExtItem.Years, PersonelDecExtItem.Months')
    Left = 107
    Top = 200
    object qryItemsDecExtID: TIntegerField
      FieldName = 'DecExtID'
      Required = True
    end
    object qryItemsYears: TSmallintField
      DisplayLabel = #1587#1575#1604
      FieldName = 'Years'
    end
    object qryItemsMonths: TSmallintField
      DisplayLabel = #1605#1575#1607
      FieldName = 'Months'
    end
    object qryItemsAmount: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1602#1575#1576#1604' '#1603#1587#1585
      FieldName = 'Amount'
      Required = True
      currency = True
      Precision = 19
    end
    object qryItemsID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qryItemsRemain: TBCDField
      DisplayLabel = #1576#1575#1602#1740#1605#1575#1606#1583#1607
      FieldName = 'Remain'
      currency = True
      Precision = 19
    end
  end
  object SrcItem: TDataSource
    DataSet = qryItems
    OnStateChange = SrcItemStateChange
    Left = 115
    Top = 272
  end
  object qryPeronalInfo: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     PersonelInfo.PersonelNo, PersonelInfo.name_L1 + '#39' '#39' +' +
        ' PersonelInfo.lastName_L1 AS Name'
      'FROM Pay.PersonelInfo INNER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfoPersonelState ON' +
        ' PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID'
      'WHERE     (FormsInfoPersonelState.InfoID < 100)')
    Left = 234
    Top = 224
  end
  object pMnuDBGrid2: TPopupMenu
    Left = 66
    Top = 135
    object NAmountCalc: TMenuItem
      Caption = #1608#1610#1585#1575#1610#1588' '#1575#1602#1587#1575#1591' '#1576#1593#1583#1610' '#1576#1575' '#1605#1576#1604#1594' '#1587#1591#1585' '#1580#1575#1585#1610
      OnClick = NAmountCalcClick
    end
  end
  object popGetExcel: TPopupMenu
    Left = 538
    Top = 479
    object MenuItem1: TMenuItem
      Action = actGetExcel
    end
    object Excel1: TMenuItem
      Action = actGetExcelMS
    end
    object N1: TMenuItem
      Caption = '-'
      Enabled = False
    end
    object Loanxls1: TMenuItem
      Caption = #1601#1575#1610#1604' '#1606#1605#1608#1606#1607' Get Excel\Loan.xls'
      Enabled = False
    end
  end
  object qryLoans: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT        FormsInfo.FormInfoID, FormsInfo.InfoName_L1'
      'FROM Pay.FormsInfo INNER JOIN'
      
        '                         Pay.FormTypes ON FormsInfo.FormType = F' +
        'ormTypes.FormType'
      'WHERE        (FormTypes.SalaryKind IN (14))')
    Left = 746
    Top = 244
  end
  object qryTmp: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PersonelNO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'FunctionID'
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
        Value = 0
      end>
    SQL.Strings = (
      'SELECT ISNull(MAX(Mounth),0) as Mounth'
      'FROM Pay.FixedCalculated'
      'WHERE (PersonelNO = :PersonelNO )'
      'AND (FunctionID = :FunctionID )'
      'AND (Years = :Years )')
    Left = 491
    Top = 215
    object qryTmpMounth: TWordField
      FieldName = 'Mounth'
      ReadOnly = True
    end
  end
end

inherited ExcelConflictF: TExcelConflictF
  Caption = 'ExcelConflictF'
  ClientHeight = 538
  ClientWidth = 1171
  ExplicitWidth = 1187
  ExplicitHeight = 577
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 497
    Width = 1171
    BevelOuter = bvNone
    ExplicitTop = 497
    ExplicitWidth = 1171
    inherited BtnReject: TBitBtn
      Left = 3
      Top = 6
      Height = 29
      ExplicitLeft = 3
      ExplicitTop = 6
      ExplicitHeight = 29
    end
  end
  inherited Panel2: TPanel
    Width = 1171
    BevelOuter = bvNone
    ExplicitWidth = 1171
    inherited ImgTemplate: TImage
      Left = 1166
      ExplicitLeft = 1166
    end
    inherited lblCaption: TLabel
      Left = 1064
      Top = 15
      Height = 35
      ExplicitLeft = 1064
      ExplicitTop = 15
    end
    inherited lblBaseDate: TLabel
      Left = 535
      ExplicitLeft = 535
    end
  end
  inherited Panel3: TPanel
    Width = 1171
    Height = 415
    ExplicitWidth = 1171
    ExplicitHeight = 415
  end
  object Panel1: TPanel [3]
    Left = 0
    Top = 468
    Width = 1171
    Height = 29
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object btnDelete: TBitBtn
      Tag = 1
      Left = 1063
      Top = 0
      Width = 108
      Height = 29
      Align = alRight
      Caption = #1581#1584#1601' '#1587#1591#1585#1607#1575#1740' '#1582#1575#1604#1740
      TabOrder = 0
      OnClick = btnDeleteClick
    end
    object btnCreateTable: TBitBtn
      Tag = 1
      Left = 987
      Top = 0
      Width = 76
      Height = 29
      Align = alRight
      Caption = #1587#1575#1582#1578' '#1580#1583#1608#1604
      TabOrder = 1
      OnClick = btnCreateTableClick
    end
  end
  object PageControl1: TPageControl [4]
    Left = 0
    Top = 53
    Width = 1171
    Height = 415
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 4
    object TabSheet1: TTabSheet
      Caption = #1605#1602#1575#1740#1587#1607' '#1601#1575#1740#1604' Excel1,2'
      object pnlSheet: TPanel
        Left = 0
        Top = 0
        Width = 1163
        Height = 29
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Tag = 1
          AlignWithMargins = True
          Left = 935
          Top = 5
          Width = 43
          Height = 21
          Margins.Top = 5
          Align = alRight
          Caption = #1606#1575#1605' sheet'
          ExplicitHeight = 13
        end
        object Label3: TLabel
          Tag = 2
          AlignWithMargins = True
          Left = 487
          Top = 5
          Width = 43
          Height = 21
          Margins.Top = 5
          Align = alRight
          Caption = #1606#1575#1605' sheet'
          ExplicitHeight = 13
        end
        object cmbSheetName1: TComboBox
          Tag = 1
          AlignWithMargins = True
          Left = 672
          Top = 3
          Width = 257
          Height = 21
          Align = alRight
          Style = csDropDownList
          TabOrder = 0
          Items.Strings = (
            '0')
        end
        object BitBtn1: TBitBtn
          Tag = 1
          Left = 981
          Top = 0
          Width = 182
          Height = 29
          Align = alRight
          Caption = #1576#1575#1586' '#1705#1585#1583#1606' '#1601#1575#1610#1604' '#1578#1585#1575#1705#1606#1588#1607#1575#1740' '#1705#1575#1585#1582#1575#1606#1607
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000420B0000420B0000000100000001000000730800087B
            080008841000088C100008A51800108C2100109C210018AD290031C64A0042D6
            6B0052D67B005AE78C0018A5C60018ADD60021ADD60029ADD60031B5DE0052BD
            E7004AC6E7004AC6EF009CDEEF00ADDEEF006BDEF70073DEF700A5EFF700FF00
            FF0084EFFF008CEFFF0094EFFF008CF7FF0094F7FF00A5F7FF0094FFFF009CFF
            FF00ADFFFF00C6FFFF00D6FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00191919191919
            19191919191919191919190F100E191919191919191919191919190F141A120E
            0C0C0C19191919191919190F11212017171717120E0C19191919190F11221D1B
            1B1B171717130E191919190F0F151E1E1B1B1B1B171713191919190F170F211D
            1D1D1B1B1B17170C1919190F1E0F1518181F1B1B1B17000C1919190F21170F0C
            0C0C151D1A000B000C19190F211E171717160F15000A09080019190F211E1E1E
            1E17170F0C0508060C19190F23202124241B1C17170207021919190E14232314
            0D0C0C0C0C03041919191919100F0C0C19191919030402191919191919191919
            1900010303011919191919191919191919191919191919191919}
          TabOrder = 1
          OnClick = BitBtn1Click
        end
        object btnBank: TBitBtn
          Tag = 2
          Left = 533
          Top = 0
          Width = 136
          Height = 29
          Align = alRight
          Caption = #1576#1575#1586' '#1705#1585#1583#1606' '#1601#1575#1610#1604' '#1576#1600#1600#1600#1600#1600#1575#1606#1600#1600#1600#1600#1705
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000420B0000420B0000000100000001000000730800087B
            080008841000088C100008A51800108C2100109C210018AD290031C64A0042D6
            6B0052D67B005AE78C0018A5C60018ADD60021ADD60029ADD60031B5DE0052BD
            E7004AC6E7004AC6EF009CDEEF00ADDEEF006BDEF70073DEF700A5EFF700FF00
            FF0084EFFF008CEFFF0094EFFF008CF7FF0094F7FF00A5F7FF0094FFFF009CFF
            FF00ADFFFF00C6FFFF00D6FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00191919191919
            19191919191919191919190F100E191919191919191919191919190F141A120E
            0C0C0C19191919191919190F11212017171717120E0C19191919190F11221D1B
            1B1B171717130E191919190F0F151E1E1B1B1B1B171713191919190F170F211D
            1D1D1B1B1B17170C1919190F1E0F1518181F1B1B1B17000C1919190F21170F0C
            0C0C151D1A000B000C19190F211E171717160F15000A09080019190F211E1E1E
            1E17170F0C0508060C19190F23202124241B1C17170207021919190E14232314
            0D0C0C0C0C03041919191919100F0C0C19191919030402191919191919191919
            1900010303011919191919191919191919191919191919191919}
          TabOrder = 2
          OnClick = btnBankClick
        end
        object cmbSheetName2: TComboBox
          Tag = 2
          AlignWithMargins = True
          Left = 224
          Top = 3
          Width = 257
          Height = 21
          Align = alRight
          Style = csDropDownList
          TabOrder = 3
          Items.Strings = (
            '0')
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 29
        Width = 625
        Height = 358
        Align = alLeft
        BevelOuter = bvNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        TabOrder = 1
        object GroupBox1: TGroupBox
          Left = 0
          Top = 0
          Width = 625
          Height = 57
          Align = alTop
          Caption = 'Condition'
          TabOrder = 0
          object mmoCondition1_2: TMemo
            Tag = 111
            Left = 2
            Top = 15
            Width = 621
            Height = 40
            Align = alClient
            BiDiMode = bdLeftToRight
            Color = clInactiveCaption
            Lines.Strings = (
              'qryExcel1.E13 = qryExcel2.F15 AND qryExcel1.E2 = qryExcel2.F12')
            ParentBiDiMode = False
            TabOrder = 0
          end
        end
        object grdCondition: TCedarDbgrid
          Left = 0
          Top = 152
          Width = 625
          Height = 206
          Align = alClient
          BiDiMode = bdLeftToRight
          Color = clCream
          DataSource = srcCondition
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
          IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
          IndicatorTitle.ShowDropDownSign = True
          IndicatorTitle.TitleButton = True
          OddRowColor = clWhite
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDblClickOptimizeColWidth, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove]
          ParentBiDiMode = False
          ReadOnly = True
          RowHeight = 18
          SearchPanel.Enabled = True
          SearchPanel.Location = splHorzScrollBarExtraPanelEh
          SortLocal = True
          TabOrder = 1
          ActiveSearchPanel = True
          SelectFooterIndex = 0
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object Panel7: TPanel
          Left = 0
          Top = 57
          Width = 625
          Height = 95
          Align = alTop
          TabOrder = 2
          object RadioGroup1: TRadioGroup
            Left = 345
            Top = 1
            Width = 279
            Height = 93
            Align = alRight
            BiDiMode = bdRightToLeft
            Caption = 'RadioGroup1'
            Items.Strings = (
              #1579#1576#1578' '#1582#1586#1575#1606#1607' '#1583#1575#1585#1740' '#1575#1606#1580#1575#1605' '#1588#1583#1607
              '2 '#1582#1586#1575#1606#1607' '#1583#1575#1585#1740
              '3 '#1575#1606#1576#1575#1585' '#1608' '#1601#1585#1608#1588)
            ParentBiDiMode = False
            TabOrder = 0
            OnClick = RadioGroup1Click
          end
          object btnUpdate: TBitBtn
            Tag = 1
            Left = 12
            Top = 64
            Width = 76
            Height = 25
            Caption = #1575#1593#1605#1575#1604' '#1578#1594#1740#1740#1585#1575#1578
            TabOrder = 1
            OnClick = btnUpdateClick
          end
        end
      end
      object Panel6: TPanel
        Left = 625
        Top = 29
        Width = 538
        Height = 358
        Align = alClient
        Caption = 'Panel6'
        TabOrder = 2
        object lblEcxel2: TLabel
          Left = 1
          Top = 217
          Width = 536
          Height = 12
          Align = alBottom
          Alignment = taCenter
          AutoSize = False
          BiDiMode = bdLeftToRight
          Caption = #1587#1578#1608#1606#1607#1575#1610' '#1601#1575#1610#1604' Excel2'
          Color = 12615680
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentColor = False
          ParentFont = False
          Transparent = False
          ExplicitLeft = 0
          ExplicitTop = 135
          ExplicitWidth = 664
        end
        object Splitter1: TSplitter
          Left = 1
          Top = 206
          Width = 536
          Height = 11
          Cursor = crVSplit
          Align = alBottom
          ExplicitTop = 193
          ExplicitWidth = 664
        end
        object lblEcxel1: TLabel
          Left = 1
          Top = 1
          Width = 536
          Height = 13
          Align = alTop
          Alignment = taCenter
          BiDiMode = bdLeftToRight
          Caption = #1587#1578#1608#1606#1607#1575#1610' '#1601#1575#1610#1604' Excel1'
          Color = 12615680
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentColor = False
          ParentFont = False
          Transparent = False
          ExplicitWidth = 112
        end
        object grd2: TCedarDbgrid
          Left = 1
          Top = 229
          Width = 536
          Height = 128
          Align = alBottom
          BiDiMode = bdLeftToRight
          Color = clCream
          DataSource = srcNewExcel2
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
          IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
          IndicatorTitle.ShowDropDownSign = True
          IndicatorTitle.TitleButton = True
          OddRowColor = clWhite
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDblClickOptimizeColWidth, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove]
          ParentBiDiMode = False
          ReadOnly = True
          RowHeight = 18
          SearchPanel.Enabled = True
          SearchPanel.Location = splHorzScrollBarExtraPanelEh
          SortLocal = True
          TabOrder = 0
          ActiveSearchPanel = True
          SelectFooterIndex = 0
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object grd1: TCedarDbgrid
          Left = 1
          Top = 14
          Width = 536
          Height = 192
          Align = alClient
          BiDiMode = bdLeftToRight
          Color = clCream
          DataSource = srcNewExcel1
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
          IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
          IndicatorTitle.ShowDropDownSign = True
          IndicatorTitle.TitleButton = True
          OddRowColor = clCream
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDblClickOptimizeColWidth, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove]
          ParentBiDiMode = False
          ReadOnly = True
          RowHeight = 18
          SearchPanel.Enabled = True
          SearchPanel.Location = splHorzScrollBarExtraPanelEh
          SortLocal = True
          TabOrder = 1
          OnEnter = grd1Enter
          OnExit = grd1Exit
          ActiveSearchPanel = True
          SelectFooterIndex = 0
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1605#1602#1575#1740#1587#1607' Excel 3'
      ImageIndex = 1
      object Label2: TLabel
        Left = 0
        Top = 29
        Width = 1163
        Height = 13
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        BiDiMode = bdLeftToRight
        Caption = #1587#1578#1608#1606#1607#1575#1610' '#1601#1575#1610#1604' Excel3'
        Color = 12615680
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentColor = False
        ParentFont = False
        Transparent = False
        ExplicitLeft = 6
        ExplicitTop = 24
        ExplicitWidth = 982
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1163
        Height = 29
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object lblBank: TLabel
          Tag = 2
          AlignWithMargins = True
          Left = 981
          Top = 5
          Width = 43
          Height = 21
          Margins.Top = 5
          Align = alRight
          Caption = #1606#1575#1605' sheet'
          ExplicitHeight = 13
        end
        object cmbSheetName3: TComboBox
          Tag = 2
          AlignWithMargins = True
          Left = 654
          Top = 3
          Width = 321
          Height = 21
          Align = alRight
          Style = csDropDownList
          TabOrder = 0
          Items.Strings = (
            '0')
        end
        object BitBtn2: TBitBtn
          Tag = 2
          Left = 1027
          Top = 0
          Width = 136
          Height = 29
          Align = alRight
          Caption = #1576#1575#1586' '#1705#1585#1583#1606' '#1601#1575#1610#1604' 3'
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000420B0000420B0000000100000001000000730800087B
            080008841000088C100008A51800108C2100109C210018AD290031C64A0042D6
            6B0052D67B005AE78C0018A5C60018ADD60021ADD60029ADD60031B5DE0052BD
            E7004AC6E7004AC6EF009CDEEF00ADDEEF006BDEF70073DEF700A5EFF700FF00
            FF0084EFFF008CEFFF0094EFFF008CF7FF0094F7FF00A5F7FF0094FFFF009CFF
            FF00ADFFFF00C6FFFF00D6FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00191919191919
            19191919191919191919190F100E191919191919191919191919190F141A120E
            0C0C0C19191919191919190F11212017171717120E0C19191919190F11221D1B
            1B1B171717130E191919190F0F151E1E1B1B1B1B171713191919190F170F211D
            1D1D1B1B1B17170C1919190F1E0F1518181F1B1B1B17000C1919190F21170F0C
            0C0C151D1A000B000C19190F211E171717160F15000A09080019190F211E1E1E
            1E17170F0C0508060C19190F23202124241B1C17170207021919190E14232314
            0D0C0C0C0C03041919191919100F0C0C19191919030402191919191919191919
            1900010303011919191919191919191919191919191919191919}
          TabOrder = 1
          OnClick = BitBtn2Click
        end
      end
      object grd3: TCedarDbgrid
        Left = 625
        Top = 42
        Width = 538
        Height = 345
        Align = alClient
        BiDiMode = bdLeftToRight
        Color = clCream
        DataSource = srcExcel3
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
        IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
        IndicatorTitle.ShowDropDownSign = True
        IndicatorTitle.TitleButton = True
        OddRowColor = clWhite
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDblClickOptimizeColWidth, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove]
        ParentBiDiMode = False
        ReadOnly = True
        RowHeight = 18
        SearchPanel.Enabled = True
        SearchPanel.Location = splHorzScrollBarExtraPanelEh
        SortLocal = True
        TabOrder = 1
        OnEnter = grd1Enter
        OnExit = grd1Exit
        ActiveSearchPanel = True
        SelectFooterIndex = 0
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object Panel8: TPanel
        Left = 0
        Top = 42
        Width = 625
        Height = 345
        Align = alLeft
        BevelOuter = bvNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        TabOrder = 2
        object CedarDbgrid1: TCedarDbgrid
          Left = 0
          Top = 95
          Width = 625
          Height = 250
          Align = alClient
          BiDiMode = bdLeftToRight
          Color = clCream
          DataSource = srcCondition
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
          IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
          IndicatorTitle.ShowDropDownSign = True
          IndicatorTitle.TitleButton = True
          OddRowColor = clWhite
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDblClickOptimizeColWidth, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove]
          ParentBiDiMode = False
          ReadOnly = True
          RowHeight = 18
          SearchPanel.Enabled = True
          SearchPanel.Location = splHorzScrollBarExtraPanelEh
          SortLocal = True
          TabOrder = 0
          ActiveSearchPanel = True
          SelectFooterIndex = 0
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object Panel9: TPanel
          Left = 0
          Top = 0
          Width = 625
          Height = 95
          Align = alTop
          TabOrder = 1
          object RadioGroup2: TRadioGroup
            Left = 345
            Top = 1
            Width = 279
            Height = 93
            Align = alRight
            BiDiMode = bdRightToLeft
            Caption = 'RadioGroup1'
            Items.Strings = (
              #1579#1576#1578' '#1582#1586#1575#1606#1607' '#1583#1575#1585#1740' '#1575#1606#1580#1575#1605' '#1588#1583#1607
              '2 '#1582#1586#1575#1606#1607' '#1583#1575#1585#1740
              '3 '#1575#1606#1576#1575#1585' '#1608' '#1601#1585#1608#1588)
            ParentBiDiMode = False
            TabOrder = 0
            OnClick = RadioGroup1Click
          end
          object BitBtn3: TBitBtn
            Tag = 1
            Left = 12
            Top = 64
            Width = 76
            Height = 25
            Caption = #1575#1593#1605#1575#1604' '#1578#1594#1740#1740#1585#1575#1578
            TabOrder = 1
            OnClick = btnUpdateClick
          end
        end
      end
    end
  end
  object mmoSQL: TMemo [5]
    Left = 658
    Top = 129
    Width = 505
    Height = 233
    Alignment = taRightJustify
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'mmoSQL')
    ParentFont = False
    TabOrder = 5
  end
  inherited ImageList1: TImageList
    Left = 496
    Top = 257
  end
  object qryExcel1: TADOQuery
    CursorType = ctOpenForwardOnly
    LockType = ltBatchOptimistic
    AfterOpen = qryExcel1AfterOpen
    Parameters = <>
    SQL.Strings = (
      'select * from [a$]')
    Left = 744
    Top = 152
  end
  object srcNewExcel1: TDataSource
    DataSet = qryExcel1
    Left = 584
    Top = 40
  end
  object srcNewExcel2: TDataSource
    DataSet = qryExcel2
    Left = 424
    Top = 272
  end
  object qryExcel2: TADOQuery
    CursorType = ctOpenForwardOnly
    LockType = ltBatchOptimistic
    AfterOpen = qryExcel2AfterOpen
    Parameters = <>
    SQL.Strings = (
      'select * from [a$]')
    Left = 560
    Top = 280
  end
  object qryExcel3: TADOQuery
    CursorType = ctOpenForwardOnly
    LockType = ltBatchOptimistic
    AfterOpen = qryExcel3AfterOpen
    Parameters = <>
    SQL.Strings = (
      'select * from [a$]')
    Left = 880
    Top = 176
  end
  object srcExcel3: TDataSource
    DataSet = qryExcel3
    Left = 696
    Top = 216
  end
  object srcCondition: TDataSource
    DataSet = qryCondition
    Left = 232
    Top = 320
  end
  object qryCondition: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctOpenForwardOnly
    LockType = ltBatchOptimistic
    AfterOpen = qryExcel3AfterOpen
    Parameters = <>
    SQL.Strings = (
      'select * from [a$]')
    Left = 152
    Top = 320
  end
end

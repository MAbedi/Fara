inherited StuffCoding_EditNewF: TStuffCoding_EditNewF
  Left = 405
  Top = 91
  Caption = #1579#1576#1578' '#1608' '#1608#1610#1585#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1575#1604#1575
  ClientHeight = 588
  ClientWidth = 747
  ExplicitWidth = 753
  ExplicitHeight = 617
  DesignSize = (
    747
    588)
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 297
    Width = 473
    Visible = False
    ExplicitTop = 219
    ExplicitWidth = 473
  end
  inherited Panel1: TPanel
    Width = 747
    ExplicitWidth = 747
    DesignSize = (
      747
      73)
    inherited Image1: TImage
      Left = 694
      ExplicitLeft = 626
    end
    inherited lblTopic0: TLabel
      Left = 537
      Width = 137
      Caption = #1579#1576#1578' '#1608' '#1608#1610#1585#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1575#1604#1575
      ExplicitLeft = 469
      ExplicitWidth = 137
    end
    inherited lblTopic1: TLabel
      Left = 332
      Top = 36
      Width = 329
      Height = 17
      AutoSize = False
      Caption = 
        #1576#1585#1575#1610' '#1575#1606#1578#1582#1575#1576' '#1576#1606#1711#1575#1607' '#1575#1586' '#1583#1603#1605#1607' Space '#1610#1575' Double Click '#1605#1608#1587' '#1575#1587#1578#1601#1575#1583#1607' '#1603#1606#1610#1583 +
        '.'
      ExplicitLeft = 264
      ExplicitTop = 36
      ExplicitWidth = 329
      ExplicitHeight = 17
    end
  end
  object pnlTop: TPanel [2]
    Left = 0
    Top = 73
    Width = 747
    Height = 294
    Align = alClient
    TabOrder = 2
    object lblc_StuffTecInfo: TLabel
      Left = 660
      Top = 60
      Width = 69
      Height = 13
      Caption = #1605#1588#1582#1589#1575#1578' '#1601#1606#1610
      FocusControl = edtc_StuffTecInfo
    end
    object lbl_UntilName: TLabel
      Left = 660
      Top = 86
      Width = 62
      Height = 13
      Alignment = taRightJustify
      Caption = #1608#1575#1581#1583' '#1588#1605#1575#1585#1588
    end
    object Label14: TLabel
      Left = 660
      Top = 7
      Width = 29
      Height = 13
      Caption = #1603#1583' '#1603#1575#1604#1575
    end
    object Label15: TLabel
      Left = 660
      Top = 33
      Width = 41
      Height = 13
      Caption = #1588#1585#1581' '#1603#1575#1604#1575
    end
    object lblVendorBarcode: TLabel
      Left = 455
      Top = 86
      Width = 65
      Height = 13
      Caption = #1576#1575#1585#1603#1583' '#1601#1585#1608#1588#1606#1583#1607
      FocusControl = edtVendorBarcode
    end
    object Label7: TLabel
      Left = 659
      Top = 204
      Width = 82
      Height = 13
      Alignment = taRightJustify
      BiDiMode = bdLeftToRight
      Caption = #1586#1605#1575#1606' '#1606#1711#1607#1583#1575#1585#1740'('#1585#1608#1586')'
      FocusControl = edtDayOfStorage
      ParentBiDiMode = False
    end
    object Label31: TLabel
      Left = 455
      Top = 59
      Width = 54
      Height = 13
      Caption = 'Stuff Name'
      FocusControl = edtc_StuffName_L2
    end
    object Label34: TLabel
      Left = 660
      Top = 109
      Width = 53
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = #1705#1583' '#1605#1604#1740' '#1705#1575#1604#1575
      ParentBiDiMode = False
    end
    object Label3: TLabel
      Left = 660
      Top = 140
      Width = 40
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = #1581#1580#1605' '#1705#1575#1604#1575
      ParentBiDiMode = False
    end
    object Label1: TLabel
      Left = 660
      Top = 172
      Width = 34
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = #1608#1586#1606' '#1705#1575#1604#1575
      ParentBiDiMode = False
    end
    object edtc_StuffName: TDBEdit
      Left = 297
      Top = 29
      Width = 357
      Height = 21
      DataField = 'c_StuffName'
      DataSource = srcStuffcoding
      TabOrder = 1
    end
    object edtc_StuffCode: TDBEdit
      Left = 484
      Top = 3
      Width = 170
      Height = 21
      DataField = 'c_StuffCode'
      DataSource = srcStuffcoding
      TabOrder = 0
    end
    object edtc_StuffTecInfo: TDBEdit
      Left = 522
      Top = 56
      Width = 132
      Height = 21
      DataField = 'c_StuffTecInfo'
      DataSource = srcStuffcoding
      TabOrder = 2
    end
    object dblkcbb_UntilName: TDBLookupComboBox
      Left = 523
      Top = 82
      Width = 131
      Height = 21
      DataField = '_UntilName'
      DataSource = srcStuffcoding
      TabOrder = 4
    end
    object chkHasRecall: TDBCheckBox
      Left = 297
      Top = 5
      Width = 144
      Height = 17
      BiDiMode = bdLeftToRight
      Caption = #1603#1575#1604#1575' '#1594#1610#1585' '#1601#1593#1575#1604' '#1588#1608#1583'.'#8207
      DataField = 'State'
      DataSource = srcStuffcoding
      ParentBiDiMode = False
      TabOrder = 12
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object edtVendorBarcode: TDBEdit
      Left = 297
      Top = 82
      Width = 156
      Height = 21
      DataField = 'VendorBarcode'
      DataSource = srcStuffcoding
      TabOrder = 5
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 287
      Height = 274
      Align = alLeft
      TabOrder = 13
      object Panel4: TPanel
        Left = 1
        Top = 242
        Width = 285
        Height = 31
        Align = alBottom
        TabOrder = 1
        DesignSize = (
          285
          31)
        object BitBtn3: TBitBtn
          Left = 203
          Top = 2
          Width = 77
          Height = 25
          Anchors = [akLeft, akBottom]
          Caption = #1575#1606#1578#1582#1575#1576' '#1607#1605#1607
          TabOrder = 0
          OnClick = BitBtn3Click
        end
        object BitBtn4: TBitBtn
          Left = 122
          Top = 3
          Width = 77
          Height = 25
          Anchors = [akLeft, akBottom]
          Caption = #1575#1606#1578#1582#1575#1576' '#1605#1593#1603#1608#1587
          TabOrder = 1
          OnClick = BitBtn4Click
        end
      end
      object DBGrid2: TCedarDbgrid
        Left = 1
        Top = 1
        Width = 285
        Height = 241
        Align = alClient
        Color = clCream
        DataSource = srcStores
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
        ReadOnly = True
        RowHeight = 18
        SearchPanel.Enabled = True
        SearchPanel.FilterOnTyping = True
        SortLocal = True
        TabOrder = 0
        OnDblClick = DBGrid2DblClick
        OnMouseDown = DBGrid2MouseDown
        ActiveSearchPanel = False
        SelectFooterIndex = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_Checked'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'n_StoreID'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'c_StoreName'
            Footers = <>
            Width = 139
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object edtDayOfStorage: TDBEdit
      Left = 468
      Top = 200
      Width = 185
      Height = 21
      DataField = 'DayOfStorage'
      DataSource = srcStuffcoding
      TabOrder = 9
    end
    object dbchkBlockOutput: TDBCheckBox
      Left = 468
      Top = 229
      Width = 185
      Height = 17
      BiDiMode = bdLeftToRight
      Caption = #1605#1587#1583#1608#1583' '#1705#1585#1583#1606' '#1582#1585#1608#1580#1740
      DataField = 'BlockOutput'
      DataSource = srcStuffcoding
      ParentBiDiMode = False
      TabOrder = 10
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object edtc_StuffName_L2: TDBEdit
      Left = 297
      Top = 55
      Width = 156
      Height = 21
      BiDiMode = bdLeftToRight
      DataField = 'c_StuffName_L2'
      DataSource = srcStuffcoding
      ParentBiDiMode = False
      TabOrder = 3
    end
    object edtNationalStuffCode: TDBEdit
      Left = 297
      Top = 109
      Width = 357
      Height = 21
      DataField = 'NationalStuffCode'
      DataSource = srcStuffcoding
      TabOrder = 6
    end
    object DBCheckBox17: TDBCheckBox
      Left = 1
      Top = 275
      Width = 745
      Height = 18
      Align = alBottom
      Caption = #1603#1606#1578#1585#1604' '#1606#1602#1591#1607' '#1587#1601#1575#1585#1588' '#1608' '#1605#1608#1580#1608#1583#1610' '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'#8207
      DataField = 'Control_orderPoint_Entity'
      DataSource = srcStuffcoding
      TabOrder = 11
      ValueChecked = '1'
      ValueUnchecked = '0'
      WordWrap = True
    end
    object edtStuffVolume: TDBEdit
      Left = 468
      Top = 136
      Width = 185
      Height = 21
      DataField = 'StuffVolume'
      DataSource = srcStuffcoding
      TabOrder = 7
    end
    object edtStuffWeight: TDBEdit
      Left = 468
      Top = 168
      Width = 185
      Height = 21
      DataField = 'StuffWeight'
      DataSource = srcStuffcoding
      TabOrder = 8
    end
  end
  inherited pnlDown: TPanel
    Top = 551
    Width = 747
    ExplicitTop = 551
    ExplicitWidth = 747
    object BitBtn1: TBitBtn
      Left = 665
      Top = 6
      Width = 75
      Height = 25
      Action = DataSetPost1
      Caption = #1578#1571#1610#1610#1600#1600#1600#1583
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      Left = 585
      Top = 6
      Width = 75
      Height = 25
      Action = DataSetCancel1
      Caption = #1575#1606#1589#1600#1600#1600#1585#1575#1601
      TabOrder = 2
    end
  end
  object PageControl1: TPageControl [4]
    Left = 0
    Top = 367
    Width = 747
    Height = 184
    ActivePage = TabSheet8
    Align = alBottom
    BiDiMode = bdRightToLeft
    MultiLine = True
    ParentBiDiMode = False
    TabOrder = 3
    object TabSheet8: TTabSheet
      Caption = #1608#1575#1581#1583#1607#1575#1740' '#1575#1606#1583#1575#1586#1607' '#1711#1740#1585#1740
      ImageIndex = 7
      object DBGrid1: TCedarDbgrid
        Tag = 111
        Left = 241
        Top = 0
        Width = 498
        Height = 156
        Align = alClient
        Color = clCream
        DataSource = srcUnit2Stuffs
        DragCursor = crCross
        DynProps = <>
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
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
        ParentFont = False
        RowHeight = 18
        SearchPanel.Enabled = True
        SearchPanel.FilterOnTyping = True
        SearchPanel.Location = splHorzScrollBarExtraPanelEh
        SortLocal = True
        SumList.Active = True
        TabOrder = 0
        OnColEnter = DBGrid1ColEnter
        ActiveSearchPanel = False
        SaveAutoColumns = False
        SelectedSum = True
        SelectFooterIndex = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_UntilName'
            Footers = <>
            Width = 264
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'UnitCo'
            Footers = <>
            Width = 205
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 241
        Height = 156
        Align = alLeft
        TabOrder = 1
        object Label18: TLabel
          Left = 152
          Top = 46
          Width = 60
          Height = 13
          Hint = #1578#1593#1583#1575#1583' '#1583#1585' '#1603#1575#1585#1578#1606
          Alignment = taRightJustify
          Caption = #1590#1585#1740#1576' '#1608#1575#1581#1583' 2'
          FocusControl = edtCarton
          ParentShowHint = False
          ShowHint = True
        end
        object lbl_UntilName2: TLabel
          Left = 152
          Top = 19
          Width = 68
          Height = 13
          Alignment = taRightJustify
          Caption = #1608#1575#1581#1583' '#1588#1605#1575#1585#1588'2'
        end
        object Label25: TLabel
          Left = 152
          Top = 99
          Width = 56
          Height = 13
          Caption = #1583#1585#1589#1583' '#1582#1604#1608#1589
          FocusControl = edtStuffpurePercent
        end
        object Label26: TLabel
          Left = 152
          Top = 72
          Width = 86
          Height = 13
          Caption = #1590#1585#1610#1576' '#1608#1575#1581#1583#1605#1588#1578#1585#1603
          FocusControl = edtStuffpublicPercent
        end
        object Label4: TLabel
          Left = 152
          Top = 127
          Width = 67
          Height = 13
          Caption = #1590#1585#1740#1576' '#1605#1608#1575#1583#1576#1585#1740
          FocusControl = edtMaterialUsageCo
        end
        object edtCarton: TDBEdit
          Left = 3
          Top = 42
          Width = 146
          Height = 21
          DataField = 'Carton'
          DataSource = srcStuffcoding
          TabOrder = 1
        end
        object dblkcbb_UntilName2: TDBLookupComboBox
          Left = 3
          Top = 15
          Width = 146
          Height = 21
          DataField = '_UntilName2'
          DataSource = srcStuffcoding
          TabOrder = 0
        end
        object edtStuffpurePercent: TDBEdit
          Left = 3
          Top = 95
          Width = 146
          Height = 21
          DataField = 'StuffpurePercent'
          DataSource = srcStuffcoding
          TabOrder = 3
        end
        object edtStuffpublicPercent: TDBEdit
          Left = 3
          Top = 68
          Width = 146
          Height = 21
          DataField = 'StuffpublicPercent'
          DataSource = srcStuffcoding
          TabOrder = 2
        end
        object edtMaterialUsageCo: TDBEdit
          Left = 4
          Top = 123
          Width = 146
          Height = 21
          DataField = 'MaterialUsageCo'
          DataSource = srcStuffcoding
          TabOrder = 4
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1603#1606#1578#1585#1604' '#1607#1575
      ImageIndex = 2
      object Label49: TLabel
        Left = 624
        Top = 12
        Width = 105
        Height = 13
        Caption = #1606#1581#1608#1607' '#1578#1588#1582#1610#1589#8207#1576#1607#1575#1610#8207#1608#1575#1581#1583
      end
      object Label21: TLabel
        Left = 380
        Top = 12
        Width = 80
        Height = 13
        Alignment = taRightJustify
        Caption = #1603#1583' '#1603#1575#1604#1575#1610' '#1580#1575#1610#1711#1586#1610#1606' '
        FocusControl = edtStanCode
      end
      object LblStuffExpireDate: TLabel
        Left = 624
        Top = 71
        Width = 52
        Height = 13
        Alignment = taRightJustify
        Caption = #1578#1575#1585#1610#1582' '#1575#1606#1602#1590#1575#1569
      end
      object Label27: TLabel
        Left = 624
        Top = 41
        Width = 95
        Height = 13
        BiDiMode = bdLeftToRight
        Caption = #1576#1607#1575#1610' '#1608#1575#1581#1583' '#1578#1588#1582#1610#1589#1610
        ParentBiDiMode = False
      end
      object Label30: TLabel
        Left = 380
        Top = 71
        Width = 58
        Height = 13
        BiDiMode = bdLeftToRight
        Caption = #1588#1605#1575#1585#1607' '#1578#1593#1585#1601#1607
        ParentBiDiMode = False
      end
      object Label33: TLabel
        Left = 380
        Top = 44
        Width = 75
        Height = 13
        BiDiMode = bdLeftToRight
        Caption = #1605#1602#1583#1575#1585' '#1662#1740#1588' '#1601#1585#1590
        FocusControl = edtDefaultValue
        ParentBiDiMode = False
      end
      object Label2: TLabel
        Left = 624
        Top = 101
        Width = 99
        Height = 13
        BiDiMode = bdLeftToRight
        Caption = #1583#1585#1589#1583' '#1605#1575#1604#1740#1575#1578' '#1582#1575#1589' '#1705#1575#1604#1575
        ParentBiDiMode = False
      end
      object RdGOwnerShipKind: TDBRadioGroup
        Left = 1
        Top = 3
        Width = 217
        Height = 41
        Caption = ' '#1606#1608#1593' '#1578#1605#1604#1603' '
        Columns = 2
        DataField = 'OwnerShipKind'
        DataSource = srcStuffcoding
        Items.Strings = (
          #1602#1591#1593#1610
          #1581#1602' '#1575#1604#1593#1605#1604' '#1603#1575#1585#1610)
        TabOrder = 8
        Values.Strings = (
          '0'
          '1')
        OnClick = RdGOwnerShipKindClick
      end
      object CmbUnitPriceUseKind: TDBComboBox
        Left = 469
        Top = 8
        Width = 153
        Height = 21
        DataField = 'UnitPriceUseKind'
        DataSource = srcStuffcoding
        Items.Strings = (
          #1578#1606#1592#1610#1605#1575#1578' '#1587#1610#1587#1578#1605' '#1601#1610'1'
          #1579#1600#1600#1600#1600#1575#1576#1600#1600#1600#1600#1600#1578'  '#1608#1575#1581#1600#1600#1600#1600#1583' 1'
          #1579#1600#1600#1600#1600#1575#1576#1600#1600#1600#1600#1600#1578'  '#1608#1575#1581#1600#1600#1600#1600#1583' 2'
          #1578#1606#1592#1610#1605#1575#1578' '#1587#1610#1587#1578#1605' '#1601#1610'2'
          #1603#1600#1600#1583#1610#1600#1600#1606#1600#1600#1711' '#1603#1600#1600#1575#1604#1575' - '#1601#1610
          #1583#1585#1589#1583#1610' '#1575#1586' '#1602#1585#1575#1585#1583#1575#1583
          #1603#1604' '#1605#1576#1604#1594' '#1602#1585#1575#1585#1583#1575#1583)
        TabOrder = 0
      end
      object edtStanCode: TDBEdit
        Left = 224
        Top = 8
        Width = 153
        Height = 21
        DataField = 'StanCode'
        DataSource = srcStuffcoding
        TabOrder = 4
      end
      object grpCommission: TGroupBox
        Left = 1
        Top = 44
        Width = 217
        Height = 47
        Caption = ' '#1583#1585#1589#1583' '#1581#1602' '#1575#1604#1593#1605#1604' '
        TabOrder = 9
        object edtCommission: TDBEdit
          AlignWithMargins = True
          Left = 5
          Top = 18
          Width = 207
          Height = 24
          Align = alClient
          DataField = 'Commission'
          DataSource = srcStuffcoding
          TabOrder = 0
          ExplicitHeight = 21
        end
      end
      object EdtStuffExpireDate: TDBEdit
        Left = 469
        Top = 67
        Width = 153
        Height = 21
        DataField = 'StuffExpireDate'
        DataSource = srcStuffcoding
        TabOrder = 2
      end
      object edtSellPrice_S: TDBEdit
        Left = 469
        Top = 40
        Width = 153
        Height = 21
        DataField = 'SellPrice_S'
        DataSource = srcStuffcoding
        TabOrder = 1
      end
      object dbchkVatExempt: TDBCheckBox
        Left = 246
        Top = 99
        Width = 137
        Height = 17
        BiDiMode = bdLeftToRight
        Caption = #1603#1575#1604#1575' '#1605#1593#1575#1601' '#1575#1586' '#1605#1575#1604#1610#1575#1578' '#1576#1575#1588#1583
        DataField = 'VatExempt'
        DataSource = srcStuffcoding
        ParentBiDiMode = False
        TabOrder = 7
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object edtTariffsID: TDBEdit
        Left = 224
        Top = 67
        Width = 153
        Height = 21
        DataField = 'TariffsID'
        DataSource = srcStuffcoding
        TabOrder = 6
      end
      object edtDefaultValue: TDBEdit
        Left = 224
        Top = 40
        Width = 153
        Height = 21
        DataField = 'DefaultValue'
        DataSource = srcStuffcoding
        TabOrder = 5
      end
      object edtVatExemptCo: TDBEdit
        Left = 469
        Top = 97
        Width = 153
        Height = 21
        DataField = 'VatExemptCo'
        DataSource = srcStuffcoding
        TabOrder = 3
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1575#1591#1604#1575#1593#1575#1578' '#1603#1605#1603#1610
      ImageIndex = 3
      object Lblsd2: TLabel
        Left = 584
        Top = 44
        Width = 6
        Height = 13
        Alignment = taRightJustify
        Caption = '2'
        FocusControl = Edtsd2
      end
      object Lblsd3: TLabel
        Left = 584
        Top = 72
        Width = 9
        Height = 13
        Alignment = taRightJustify
        Caption = ' 3'
        FocusControl = Edtsd3
      end
      object Lblsd1: TLabel
        Left = 584
        Top = 16
        Width = 9
        Height = 13
        Alignment = taRightJustify
        Caption = ' 1'
        FocusControl = Edtsd2
      end
      object Lblsd5: TLabel
        Left = 370
        Top = 44
        Width = 6
        Height = 13
        Alignment = taRightJustify
        Caption = '5'
        FocusControl = Edtsd5
      end
      object Lblsd6: TLabel
        Left = 370
        Top = 72
        Width = 6
        Height = 13
        Alignment = taRightJustify
        Caption = '6'
        FocusControl = Edtsd6
      end
      object Lblsd4: TLabel
        Left = 370
        Top = 16
        Width = 6
        Height = 13
        Alignment = taRightJustify
        Caption = '4'
        FocusControl = Edtsd5
      end
      object Lblsd8: TLabel
        Left = 117
        Top = 44
        Width = 6
        Height = 13
        Alignment = taRightJustify
        Caption = '8'
        FocusControl = Edtsd8
      end
      object Lblsd9: TLabel
        Left = 117
        Top = 72
        Width = 6
        Height = 13
        Alignment = taRightJustify
        Caption = '9'
        FocusControl = Edtsd9
      end
      object Lblsd7: TLabel
        Left = 117
        Top = 16
        Width = 6
        Height = 13
        Alignment = taRightJustify
        Caption = '7'
        FocusControl = Edtsd8
      end
      object lblSD1Weight: TLabel
        Left = 584
        Top = 101
        Width = 53
        Height = 13
        Alignment = taRightJustify
        Caption = 'SD1Weight'
        FocusControl = edtSD1Weight
      end
      object Edtsd2: TDBEdit
        Left = 478
        Top = 40
        Width = 100
        Height = 21
        DataField = 'sd2'
        DataSource = srcStuffcoding
        TabOrder = 1
      end
      object Edtsd3: TDBEdit
        Left = 478
        Top = 68
        Width = 100
        Height = 21
        DataField = 'sd3'
        DataSource = srcStuffcoding
        TabOrder = 2
      end
      object Edtsd1: TDBEdit
        Left = 478
        Top = 12
        Width = 100
        Height = 21
        DataField = 'sd1'
        DataSource = srcStuffcoding
        TabOrder = 0
      end
      object Edtsd5: TDBEdit
        Left = 264
        Top = 40
        Width = 100
        Height = 21
        DataField = 'sd5'
        DataSource = srcStuffcoding
        TabOrder = 4
      end
      object Edtsd6: TDBEdit
        Left = 264
        Top = 68
        Width = 100
        Height = 21
        DataField = 'sd6'
        DataSource = srcStuffcoding
        TabOrder = 5
      end
      object Edtsd4: TDBEdit
        Left = 264
        Top = 12
        Width = 100
        Height = 21
        DataField = 'sd4'
        DataSource = srcStuffcoding
        TabOrder = 3
      end
      object Edtsd8: TDBEdit
        Left = 11
        Top = 40
        Width = 100
        Height = 21
        DataField = 'sd8'
        DataSource = srcStuffcoding
        TabOrder = 7
      end
      object Edtsd9: TDBEdit
        Left = 11
        Top = 68
        Width = 100
        Height = 21
        DataField = 'sd9'
        DataSource = srcStuffcoding
        TabOrder = 8
      end
      object Edtsd7: TDBEdit
        Left = 11
        Top = 12
        Width = 100
        Height = 21
        DataField = 'sd7'
        DataSource = srcStuffcoding
        TabOrder = 6
      end
      object edtSD1Weight: TDBEdit
        Left = 478
        Top = 97
        Width = 100
        Height = 21
        DataField = 'SD1Weight'
        DataSource = srcStuffcoding
        TabOrder = 9
      end
    end
    object TabSheet6: TTabSheet
      Caption = #1575#1591#1604#1575#1593#1575#1578' '#1580#1575#1606#1576#1610
      ImageIndex = 5
    end
    object TabSheet5: TTabSheet
      Caption = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object dbmmoStuffNote: TDBMemo
        Left = 0
        Top = 0
        Width = 739
        Height = 156
        Align = alClient
        DataField = 'StuffNote'
        DataSource = srcStuffcoding
        TabOrder = 0
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1583#1575#1585#1610
      ImageIndex = 1
      object Label11: TLabel
        Left = 641
        Top = 10
        Width = 51
        Height = 13
        Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610
        FocusControl = EdtAllKeyDown
      end
      object SpeedButton1: TSpeedButton
        Left = 547
        Top = 5
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SpeedButton1Click
      end
      object DBText1: TDBText
        Left = 375
        Top = 8
        Width = 171
        Height = 16
        Color = 13948116
        DataField = '_DetailName'
        DataSource = srcStuffcoding
        ParentColor = False
        Transparent = True
      end
      object DBText2: TDBText
        Left = 375
        Top = 36
        Width = 171
        Height = 17
        Color = 13948116
        DataField = '_CTopicName'
        DataSource = srcStuffcoding
        ParentColor = False
        Transparent = True
      end
      object Label12: TLabel
        Left = 641
        Top = 38
        Width = 57
        Height = 13
        Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'
        FocusControl = DBEdit5
      end
      object SpeedButton2: TSpeedButton
        Left = 546
        Top = 33
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SpeedButton2Click
      end
      object Label16: TLabel
        Left = 301
        Top = 95
        Width = 56
        Height = 13
        Caption = #1603#1583' '#1576#1608#1583#1580#1607' '#1575#1610
        FocusControl = edtBudgetID
      end
      object SpeedButton3: TSpeedButton
        Left = 210
        Top = 90
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SpeedButton3Click
      end
      object DBText3: TDBText
        Left = 38
        Top = 93
        Width = 171
        Height = 17
        Color = 13948116
        DataField = '_BudgetIName'
        DataSource = srcStuffcoding
        ParentColor = False
        Transparent = True
      end
      object DBText4: TDBText
        Left = 375
        Top = 64
        Width = 171
        Height = 17
        Color = 13948116
        DataField = '_CTopicName2'
        DataSource = srcStuffcoding
        ParentColor = False
        Transparent = True
      end
      object Label19: TLabel
        Left = 641
        Top = 66
        Width = 57
        Height = 13
        Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'3'
        FocusControl = DBEdit18
      end
      object SpeedButton4: TSpeedButton
        Left = 547
        Top = 61
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SpeedButton4Click
      end
      object Label22: TLabel
        Left = 301
        Top = 10
        Width = 38
        Height = 13
        Alignment = taRightJustify
        Caption = #1603#1583' '#1583#1585#1570#1605#1583
        FocusControl = edtacc_IncomeTopicCode
      end
      object Label23: TLabel
        Left = 304
        Top = 38
        Width = 28
        Height = 13
        Alignment = taRightJustify
        Caption = #1603#1583' '#1570#1605#1585
        FocusControl = edtacc_BidTopicCode
      end
      object SpeedButton5: TSpeedButton
        Left = 210
        Top = 5
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SpeedButton5Click
      end
      object SpeedButton6: TSpeedButton
        Left = 210
        Top = 33
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SpeedButton6Click
      end
      object DBText5: TDBText
        Left = 38
        Top = 8
        Width = 173
        Height = 16
        Color = 13948116
        DataField = '_IncomeTopicCode'
        DataSource = srcStuffcoding
        ParentColor = False
        Transparent = True
      end
      object DBText6: TDBText
        Left = 38
        Top = 36
        Width = 171
        Height = 16
        Color = 13948116
        DataField = '_BidTopicCode'
        DataSource = srcStuffcoding
        ParentColor = False
        Transparent = True
      end
      object Label24: TLabel
        Left = 301
        Top = 66
        Width = 61
        Height = 13
        Alignment = taRightJustify
        Caption = #1603#1583' '#1581#1602' '#1575#1604#1593#1605#1604
        FocusControl = edtAcc_CommissionTopicCode
      end
      object SpeedButton7: TSpeedButton
        Left = 210
        Top = 61
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SpeedButton7Click
      end
      object DBText7: TDBText
        Left = 38
        Top = 64
        Width = 171
        Height = 16
        Color = 13948116
        DataField = '_CommissionTopicCode'
        DataSource = srcStuffcoding
        ParentColor = False
        Transparent = True
      end
      object DBText8: TDBText
        Left = 373
        Top = 92
        Width = 171
        Height = 17
        Color = 13948116
        DataField = '_CTopicName3'
        DataSource = srcStuffcoding
        ParentColor = False
        Transparent = True
      end
      object SpeedButton8: TSpeedButton
        Left = 547
        Top = 90
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SpeedButton8Click
      end
      object Label32: TLabel
        Left = 641
        Top = 95
        Width = 57
        Height = 13
        Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'4'
        FocusControl = DBEdit27
      end
      object EdtAllKeyDown: TDBEdit
        Tag = 1
        Left = 571
        Top = 6
        Width = 65
        Height = 21
        DataField = 'acc_DetaiCode'
        DataSource = srcStuffcoding
        TabOrder = 0
        OnKeyDown = EdtAllKeyDownKeyDown
      end
      object DBEdit5: TDBEdit
        Tag = 2
        Left = 571
        Top = 34
        Width = 65
        Height = 21
        DataField = 'acc_CTopicCode'
        DataSource = srcStuffcoding
        TabOrder = 1
        OnKeyDown = EdtAllKeyDownKeyDown
      end
      object edtBudgetID: TDBEdit
        Tag = 3
        Left = 234
        Top = 91
        Width = 65
        Height = 21
        DataField = 'BudgetID'
        DataSource = srcStuffcoding
        TabOrder = 3
        OnKeyDown = EdtAllKeyDownKeyDown
      end
      object DBEdit18: TDBEdit
        Tag = 4
        Left = 571
        Top = 63
        Width = 65
        Height = 21
        DataField = 'acc_CTopicCode2'
        DataSource = srcStuffcoding
        TabOrder = 2
        OnKeyDown = EdtAllKeyDownKeyDown
      end
      object edtacc_IncomeTopicCode: TDBEdit
        Tag = 5
        Left = 234
        Top = 6
        Width = 65
        Height = 21
        DataField = 'acc_IncomeTopicCode'
        DataSource = srcStuffcoding
        TabOrder = 4
        OnKeyDown = EdtAllKeyDownKeyDown
      end
      object edtacc_BidTopicCode: TDBEdit
        Tag = 6
        Left = 234
        Top = 34
        Width = 65
        Height = 21
        DataField = 'acc_BidTopicCode'
        DataSource = srcStuffcoding
        TabOrder = 5
        OnKeyDown = EdtAllKeyDownKeyDown
      end
      object edtAcc_CommissionTopicCode: TDBEdit
        Tag = 7
        Left = 234
        Top = 62
        Width = 65
        Height = 21
        DataField = 'Acc_CommissionTopicCode'
        DataSource = srcStuffcoding
        TabOrder = 6
        OnKeyDown = EdtAllKeyDownKeyDown
      end
      object DBEdit27: TDBEdit
        Tag = 4
        Left = 571
        Top = 91
        Width = 65
        Height = 21
        DataField = 'acc_CTopicCode3'
        DataSource = srcStuffcoding
        TabOrder = 7
        OnKeyDown = EdtAllKeyDownKeyDown
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 280
    Top = 24
    inherited DataSetPost1: TDataSetPost
      DataSource = srcStuffcoding
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcStuffcoding
    end
  end
  object qryStores: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'SELECT     n_StoreID, c_StoreName'
      'from stores'
      ''
      #13'Order by N_StoreId'#10
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 55
    Top = 52
    object qryStoresn_StoreID: TSmallintField
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'n_StoreID'
    end
    object qryStoresc_StoreName: TStringField
      DisplayLabel = #1606#1575#1605' '#1603#1575#1604#1575
      FieldName = 'c_StoreName'
      Size = 70
    end
  end
  object srcStores: TDataSource
    DataSet = cliStores
    Left = 40
    Top = 237
  end
  object cliStores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 40
    Top = 185
    object cliStoresn_StoreID: TSmallintField
      DisplayLabel = #1603#1583' '#1576#1606#1711#1575#1607
      FieldName = 'n_StoreID'
    end
    object cliStoresc_StoreName: TStringField
      DisplayLabel = #1606#1575#1605' '#1576#1606#1711#1575#1607
      FieldName = 'c_StoreName'
      Size = 70
    end
    object cliStores_Checked: TBooleanField
      DisplayLabel = #1575#1606#1578#1582#1575#1576
      FieldKind = fkInternalCalc
      FieldName = '_Checked'
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = qryStores
    Left = 32
    Top = 129
  end
  object qryStoreStuffs: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'c_StuffCode'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     c_StuffCode, n_StoreID'
      'FROM         StoreStuffs'
      'WHERE     (c_StuffCode = :c_StuffCode)')
    Left = 208
    Top = 129
    object qryStoreStuffsn_StoreID: TSmallintField
      FieldName = 'n_StoreID'
    end
    object qryStoreStuffsc_StuffCode: TLargeintField
      FieldName = 'c_StuffCode'
    end
  end
  object srcStuffcoding: TDataSource
    DataSet = StuffCodingF.qryStuffcoding
    Left = 232
    Top = 173
  end
  object qryStuffGroups: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'GroupID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     TOP 100 PERCENT acc_CTopicCode, acc_DetailCode, acc_I' +
        'ncomeTopicCode, GroupID'
      'FROM         dbo.StuffGroups'
      'WHERE     (GroupID = :GroupID)'
      'ORDER BY GroupID')
    Left = 152
    Top = 168
    object qryStuffGroupsacc_CTopicCode: TStringField
      FieldName = 'acc_CTopicCode'
      Size = 12
    end
    object qryStuffGroupsacc_DetailCode: TStringField
      FieldName = 'acc_DetailCode'
      Size = 12
    end
    object qryStuffGroupsGroupID: TIntegerField
      FieldName = 'GroupID'
    end
    object qryStuffGroupsacc_IncomeTopicCode: TLargeintField
      FieldName = 'acc_IncomeTopicCode'
    end
  end
  object srcStoreStuffs: TDataSource
    DataSet = qryStoreStuffs
    Left = 336
    Top = 288
  end
  object srcUnit2Stuffs: TDataSource
    DataSet = StuffCodingF.qryUnit2Stuffs
    Left = 336
    Top = 189
  end
end

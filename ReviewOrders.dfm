inherited ReviewOrdersF: TReviewOrdersF
  Caption = #1576#1585#1585#1587#1740' '#1608' '#1606#1607#1575#1740#1740' '#1705#1585#1583#1606' '#1587#1601#1575#1585#1588#1575#1578
  ClientHeight = 533
  ClientWidth = 833
  OnResize = FormResize
  ExplicitWidth = 841
  ExplicitHeight = 564
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 492
    Width = 833
    ExplicitTop = 493
    ExplicitWidth = 837
  end
  inherited Panel2: TPanel
    Width = 833
    ExplicitWidth = 837
    inherited ImgTemplate: TImage
      Left = 832
      ExplicitLeft = 832
    end
    inherited lblCaption: TLabel
      Left = 729
      Height = 16
      ExplicitLeft = 729
    end
  end
  inherited Panel3: TPanel
    Width = 833
    Height = 439
    ExplicitWidth = 837
    ExplicitHeight = 440
    object PageControl1: TPageControl
      Left = 2
      Top = 2
      Width = 829
      Height = 435
      ActivePage = TabSheet1
      Align = alClient
      BiDiMode = bdRightToLeft
      MultiLine = True
      ParentBiDiMode = False
      TabOrder = 0
      OnChange = PageControl1Change
      ExplicitWidth = 833
      ExplicitHeight = 436
      object TabSheet1: TTabSheet
        Caption = #1606#1607#1575#1740#1740' '#1705#1585#1583#1606
        ExplicitWidth = 300
        ExplicitHeight = 83
        object Splitter2: TSplitter
          Left = 0
          Top = 159
          Width = 821
          Height = 3
          Cursor = crVSplit
          Align = alBottom
          ExplicitLeft = 3
          ExplicitTop = 138
          ExplicitWidth = 778
        end
        object DBGrid1: TDBGrid
          Tag = 111
          Left = 0
          Top = 162
          Width = 821
          Height = 184
          CustomHint = DmF.BalloonHint1
          Align = alBottom
          Color = clCream
          DataSource = srcReciptsItems
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnKeyPress = DBGrid1KeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'ReciptNumber'
              ReadOnly = True
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ReciptDate'
              ReadOnly = True
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PersonID1'
              ReadOnly = True
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CustName'
              ReadOnly = True
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'StuffCode'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'c_StuffName'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RequestedEntity'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RequestedWeight'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RequestedEntityFinal'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RequestedWeightFinal'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AcceptEntity'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AcceptWeight'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OutputEntity'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OutputWeight'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UnitSellPrice'
              ReadOnly = True
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TotalOutputPrice'
              ReadOnly = True
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TaxValue'
              ReadOnly = True
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TotallSellPrice'
              ReadOnly = True
              Width = 60
              Visible = True
            end>
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 821
          Height = 32
          Align = alTop
          TabOrder = 1
          ExplicitWidth = 300
          inline FrmReciptType1: TFrmReciptType
            Left = 415
            Top = 1
            Width = 405
            Height = 30
            Align = alRight
            TabOrder = 0
            ExplicitLeft = -106
            ExplicitTop = 1
            ExplicitHeight = 30
            inherited cmbReciptType: TComboBox
              OnChange = FrmReciptType1cmbReciptTypeChange
              OnEnter = FrmReciptType1cmbReciptTypeEnter
            end
            inherited qryinit: TADOQuery
              Left = 201
              Top = 65520
            end
          end
          object chkNegative: TCheckBox
            Left = 1
            Top = 1
            Width = 169
            Height = 30
            Align = alLeft
            Alignment = taLeftJustify
            Caption = #1601#1602#1591' '#1705#1575#1604#1575#1607#1575#1740' '#1605#1606#1601#1740' '#1606#1605#1575#1740#1588' '#1588#1608#1583
            TabOrder = 1
            OnClick = chkNegativeClick
          end
          object chkFilter: TCheckBox
            Left = 170
            Top = 1
            Width = 191
            Height = 30
            Align = alLeft
            Alignment = taLeftJustify
            Caption = #1601#1602#1591' '#1606#1605#1575#1740#1588' '#1705#1575#1604#1575#1607#1575#1740' '#1583#1575#1585#1575#1740' '#1587#1601#1575#1585#1588
            TabOrder = 2
            OnClick = chkFilterClick
          end
        end
        object SumGrid1: TSumGrid
          Left = 0
          Top = 346
          Width = 821
          Active = False
          Enable_Controls = True
          MasterGrid = DBGrid1
          FieldsName = 
            'RequestedEntity;RequestedWeight;RequestedEntityFinal;RequestedWe' +
            'ightFinal;AcceptEntity;AcceptWeight;OutputEntity;OutputWeight;To' +
            'talOutputPrice;TaxValue;TotallSellPrice;'
        end
        object Panel7: TPanel
          Left = 0
          Top = 366
          Width = 821
          Height = 41
          Align = alBottom
          TabOrder = 3
          ExplicitTop = 367
          ExplicitWidth = 825
          object Panel4: TPanel
            Left = 329
            Top = 1
            Width = 154
            Height = 39
            Align = alRight
            AutoSize = True
            BevelOuter = bvNone
            TabOrder = 0
            object btnOk: TBitBtn
              AlignWithMargins = True
              Left = 1
              Top = 6
              Width = 75
              Height = 27
              Margins.Left = 1
              Margins.Top = 6
              Margins.Right = 1
              Margins.Bottom = 6
              Action = DataSetPost2
              Align = alRight
              Caption = #1578#1575#1610#1610#1583
              TabOrder = 0
            end
            object btnEdit: TBitBtn
              AlignWithMargins = True
              Left = 78
              Top = 6
              Width = 75
              Height = 27
              Margins.Left = 1
              Margins.Top = 6
              Margins.Right = 1
              Margins.Bottom = 6
              Action = DataSetEdit2
              Align = alRight
              Caption = #1608#1610#1585#1575#1610#1588
              TabOrder = 1
            end
          end
          object Panel5: TPanel
            Left = 483
            Top = 1
            Width = 341
            Height = 39
            Align = alRight
            AutoSize = True
            BevelOuter = bvNone
            TabOrder = 1
            object BitBtn2: TBitBtn
              AlignWithMargins = True
              Left = 78
              Top = 6
              Width = 108
              Height = 27
              Margins.Left = 1
              Margins.Top = 6
              Margins.Right = 1
              Margins.Bottom = 6
              Action = actAutoEditAll
              Align = alRight
              Caption = #1578#1582#1589#1740#1589' '#1575#1578#1608#1605#1575#1578#1740#1705
              TabOrder = 0
            end
            object BitBtn1: TBitBtn
              AlignWithMargins = True
              Left = 265
              Top = 6
              Width = 75
              Height = 27
              Margins.Left = 1
              Margins.Top = 6
              Margins.Right = 1
              Margins.Bottom = 6
              Action = actFilter
              Align = alRight
              Caption = #1605#1581#1583#1608#1583#1607
              TabOrder = 1
            end
            object BitBtn9: TBitBtn
              AlignWithMargins = True
              Left = 188
              Top = 6
              Width = 75
              Height = 27
              Margins.Left = 1
              Margins.Top = 6
              Margins.Right = 1
              Margins.Bottom = 6
              Action = actShowForm
              Align = alRight
              Caption = #1606#1605#1575#1740#1588' '#1601#1585#1605
              TabOrder = 2
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
              Action = actSt1Confirming
              Align = alRight
              Caption = #1602#1591#1593#1740' '#1705#1585#1583#1606
              TabOrder = 3
              Visible = False
            end
          end
          object BitBtn3: TBitBtn
            AlignWithMargins = True
            Left = 2
            Top = 7
            Width = 75
            Height = 27
            Margins.Left = 1
            Margins.Top = 6
            Margins.Right = 1
            Margins.Bottom = 6
            Action = actReQry
            Align = alLeft
            Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1740
            TabOrder = 2
          end
          object BitBtn12: TBitBtn
            AlignWithMargins = True
            Left = 156
            Top = 7
            Width = 76
            Height = 27
            Margins.Left = 1
            Margins.Top = 6
            Margins.Right = 1
            Margins.Bottom = 6
            Align = alLeft
            Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
            TabOrder = 3
            OnClick = BitBtn12Click
          end
          object BitBtn13: TBitBtn
            AlignWithMargins = True
            Left = 234
            Top = 7
            Width = 75
            Height = 27
            Margins.Left = 1
            Margins.Top = 6
            Margins.Right = 1
            Margins.Bottom = 6
            Action = actSearch_
            Align = alLeft
            Caption = #1580#1587#1578#1580#1608
            TabOrder = 4
            OnClick = BitBtn13Click
          end
          object BitBtn14: TBitBtn
            AlignWithMargins = True
            Left = 79
            Top = 7
            Width = 75
            Height = 27
            Margins.Left = 1
            Margins.Top = 6
            Margins.Right = 1
            Margins.Bottom = 6
            Align = alLeft
            Caption = #1578#1585#1578#1610#1576
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006A00
              00006A0000006A000000FF00FF006A0000006A0000006A000000FF00FF00FF00
              FF00FF00FF00FF00FF0000580300FF00FF00FF00FF00FF00FF00FF00FF006A6A
              6A006A000000FF00FF00FF00FF00FF00FF00980000006A6A6A00FF00FF00FF00
              FF00FF00FF00005803006AFF6A0000580300FF00FF00FF00FF00FF00FF00FF00
              FF006A6A6A006A0000006A0000006A0000006A000000FF00FF00FF00FF00FF00
              FF00FF00FF006AFF6A006AB650000084000000580300FF00FF00FF00FF00FF00
              FF00FF00FF006A000000FF00FF00980000006A000000FF00FF00FF00FF00FF00
              FF00FF00FF006AFF6A006AB650000084000000580300FF00FF00FF00FF00FF00
              FF00FF00FF00980000006A0000006A000000FF00FF00FF00FF00FF00FF000058
              0300005803000058030000580300005803000058030000580300FF00FF00FF00
              FF00FF00FF006A6A6A006A0000006A6A6A00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF0098000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF000000
              6A0000006A0000006A0000006A0000006A0000006A00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF000000
              6A0000006A00FF00FF00FF00FF00FF00FF000000B600FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF006A6A6A0000006A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000006A0000006A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF006A6A6A0000006A00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF000000
              6A0000006A00FF00FF00FF00FF0000006A0000006A00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF001100
              7B0011007B0011007B0011007B0011007B0011007B00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00}
            TabOrder = 5
            OnClick = BitBtn14Click
          end
        end
        object CedarDbgrid2: TCedarDbgrid
          Left = 0
          Top = 32
          Width = 821
          Height = 127
          Align = alClient
          BorderStyle = bsNone
          Color = clInactiveCaption
          DataSource = srcInv4Sell
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
          OddRowColor = 12615808
          RowDetailPanel.MaxHeight = 1
          RowHeight = 18
          SearchPanel.Enabled = True
          SearchPanel.Location = splHorzScrollBarExtraPanelEh
          SelectionDrawParams.SelectionStyle = gsdsClassicEh
          SortLocal = True
          TabOrder = 4
          TitleParams.MultiTitle = True
          ActiveSearchPanel = True
          SelectFooterIndex = 0
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'StuffCode'
              Footers = <>
              Width = 64
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'c_StuffName'
              Footers = <>
              Width = 64
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'UnitName'
              Footers = <>
              Width = 64
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'InvEntity'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'InvWeight'
              Footers = <>
              Width = 38
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'EntityTheWay'
              Footers = <>
              Width = 70
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'WeightTheWay'
              Footers = <>
              Width = 35
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'EntityTheWay2'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'WeightTheWay2'
              Footers = <>
              Width = 40
            end
            item
              CellButtons = <>
              Color = 12040191
              DynProps = <>
              EditButtons = <>
              FieldName = 'EntityTheWay_dec'
              Footers = <>
            end
            item
              CellButtons = <>
              Color = 5855743
              DynProps = <>
              EditButtons = <>
              FieldName = 'WeightTheWay_dec'
              Footers = <>
              Width = 43
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'EntityAvilable4Sells'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'WeightAvilable4Sells'
              Footers = <>
              Width = 43
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = #1578#1602#1587#1740#1591
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Splitter1: TSplitter
          Left = 0
          Top = 288
          Width = 821
          Height = 3
          Cursor = crVSplit
          Align = alTop
          ExplicitLeft = -16
          ExplicitTop = 121
          ExplicitWidth = 778
        end
        object pnlLoanTitel: TPanel
          Left = 0
          Top = 0
          Width = 821
          Height = 33
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          ExplicitWidth = 825
          object rgpOrder: TRadioGroup
            Left = 0
            Top = 0
            Width = 825
            Height = 33
            Align = alClient
            Columns = 3
            Ctl3D = True
            ItemIndex = 0
            Items.Strings = (
              #1587#1601#1575#1585#1588#1575#1578' '#1578#1602#1587#1740#1591' '#1606#1588#1583#1607
              #1587#1601#1575#1585#1588#1575#1578' '#1578#1602#1587#1740#1591' '#1588#1583#1607
              #1607#1605#1607' '#1587#1601#1575#1585#1588#1575#1578)
            ParentCtl3D = False
            TabOrder = 0
            OnClick = rgpOrderClick
          end
        end
        object grdOrders: TCedarDbgrid
          Left = 0
          Top = 33
          Width = 821
          Height = 218
          Align = alTop
          DataSource = srcOrders
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
          OddRowColor = clGradientInactiveCaption
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          RowHeight = 18
          SearchPanel.Enabled = True
          SearchPanel.Location = splHorzScrollBarExtraPanelEh
          SortLocal = True
          TabOrder = 1
          OnDblClick = grdOrdersDblClick
          ActiveSearchPanel = False
          SelectFooterIndex = 0
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'ReciptNumber'
              Footers = <>
              Width = 75
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'ReciptDate'
              Footers = <>
              Width = 69
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'PersonID1'
              Footers = <>
              Width = 42
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'CustName'
              Footers = <>
              Width = 48
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'ReciptNote'
              Footers = <>
              Width = 47
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'OutputEntity'
              Footers = <>
              Width = 31
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'OutputWeight'
              Footers = <>
              Width = 22
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'TotallSellPrice'
              Footers = <>
              Width = 53
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'LoanDate'
              Footers = <>
              Width = 129
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DayOrder'
              Footers = <>
              Width = 78
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'LoanAmount'
              Footers = <>
              Width = 64
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'PayAmount'
              Footers = <>
              Width = 67
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'TotalAmount'
              Footers = <>
              Width = 61
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DifferenceAmount'
              Footers = <>
              Width = 37
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'reMainLoan'
              Footers = <>
              Width = 70
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object PageControl2: TPageControl
          Left = 0
          Top = 291
          Width = 821
          Height = 116
          ActivePage = tsLoan
          Align = alClient
          TabOrder = 2
          ExplicitWidth = 825
          ExplicitHeight = 117
          object tsLoan: TTabSheet
            Caption = #1608#1575#1605
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Panel6: TPanel
              Left = 0
              Top = 52
              Width = 817
              Height = 37
              Align = alBottom
              BevelOuter = bvNone
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              object newPanel: TPanel
                Left = 574
                Top = 0
                Width = 243
                Height = 37
                Align = alRight
                AutoSize = True
                BevelOuter = bvNone
                TabOrder = 0
                object BitBtn4: TBitBtn
                  AlignWithMargins = True
                  Left = 165
                  Top = 6
                  Width = 75
                  Height = 25
                  Margins.Top = 6
                  Margins.Bottom = 6
                  Action = DataSetInsert1
                  Align = alRight
                  Caption = #1580#1583#1610#1583
                  TabOrder = 0
                end
                object BitBtn5: TBitBtn
                  AlignWithMargins = True
                  Left = 84
                  Top = 6
                  Width = 75
                  Height = 25
                  Margins.Top = 6
                  Margins.Bottom = 6
                  Action = DataSetEdit1
                  Align = alRight
                  Caption = #1608#1610#1585#1575#1610#1588
                  TabOrder = 1
                end
                object BitBtn6: TBitBtn
                  AlignWithMargins = True
                  Left = 3
                  Top = 6
                  Width = 75
                  Height = 25
                  Margins.Top = 6
                  Margins.Bottom = 6
                  Action = DataSetDelete1_
                  Align = alRight
                  Caption = #1581#1584#1601
                  TabOrder = 2
                end
              end
              object okPanel: TPanel
                Left = 412
                Top = 0
                Width = 162
                Height = 37
                Align = alRight
                AutoSize = True
                BevelOuter = bvNone
                TabOrder = 1
                object BitBtn7: TBitBtn
                  AlignWithMargins = True
                  Left = 84
                  Top = 6
                  Width = 75
                  Height = 25
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
                  Left = 3
                  Top = 6
                  Width = 75
                  Height = 25
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
              object DBNavigator1: TDBNavigator
                AlignWithMargins = True
                Left = 3
                Top = 6
                Width = 406
                Height = 25
                Margins.Top = 6
                Margins.Bottom = 6
                DataSource = srcForms
                VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
                Align = alClient
                Flat = True
                TabOrder = 2
              end
            end
            object DBGrid2: TDBGrid
              Tag = 111
              Left = 0
              Top = 27
              Width = 817
              Height = 25
              Align = alClient
              Color = clCream
              DataSource = srcFormItems
              DrawingStyle = gdsClassic
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Row'
                  ReadOnly = True
                  Width = 60
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CheckNumber'
                  Width = 98
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CheckDate'
                  Width = 107
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CheckDateWeek'
                  ReadOnly = True
                  Width = 45
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ItemNote'
                  Width = 121
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ItemAmount'
                  Width = 99
                  Visible = True
                end>
            end
            object PnlLoan: TPanel
              Left = 0
              Top = 0
              Width = 817
              Height = 27
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 2
              object Label3: TLabel
                AlignWithMargins = True
                Left = 766
                Top = 3
                Width = 48
                Height = 13
                Align = alRight
                Alignment = taRightJustify
                Caption = #1588#1605#1575#1585#1607' '#1608#1575#1605
                Font.Charset = ARABIC_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label4: TLabel
                AlignWithMargins = True
                Left = 396
                Top = 3
                Width = 94
                Height = 13
                Align = alRight
                Alignment = taRightJustify
                Caption = #1578#1593#1583#1575#1583' '#1575#1602#1587#1575#1591' '#1575#1593#1578#1576#1575#1585#1740
                Font.Charset = ARABIC_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object btnCalcAll: TSpeedButton
                Left = 0
                Top = 0
                Width = 217
                Height = 27
                Margins.Top = 6
                Margins.Right = 56
                Margins.Bottom = 6
                Align = alLeft
                Caption = #1605#1581#1575#1587#1576#1607' '#1575#1602#1587#1575#1591' '#1705#1604' '#1587#1591#1585#1607#1575#1740' '#1575#1606#1578#1582#1575#1576' '#1588#1583#1607
                Glyph.Data = {
                  F6000000424DF600000000000000760000002800000010000000100000000100
                  0400000000008000000000000000000000001000000010000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                  7777777777777777777777777777777777777777777777777777777777707777
                  7777777777000777777777777007007777777777707770777777777777707777
                  7777777777000777777777777007007777777777707770777777777777777777
                  7777777777777777777777777777777777777777777777777777}
                ParentShowHint = False
                ShowHint = True
                OnClick = btnCalcAllClick
              end
              object Label1: TLabel
                AlignWithMargins = True
                Left = 641
                Top = 3
                Width = 38
                Height = 13
                Align = alRight
                Alignment = taRightJustify
                Caption = #1575#1589#1604' '#1608#1575#1605
                Font.Charset = ARABIC_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object edtAmount: TDBEdit
                AlignWithMargins = True
                Left = 496
                Top = 3
                Width = 139
                Height = 21
                Align = alRight
                DataField = 'Amount'
                DataSource = srcForms
                TabOrder = 0
              end
              object edtAidInfoNo2: TDBEdit
                AlignWithMargins = True
                Left = 344
                Top = 3
                Width = 46
                Height = 21
                Align = alRight
                DataField = 'AidInfoNo2'
                DataSource = srcForms
                TabOrder = 1
              end
              object edtFormNumber: TDBEdit
                AlignWithMargins = True
                Left = 685
                Top = 3
                Width = 75
                Height = 21
                Align = alRight
                DataField = 'FormNumber'
                DataSource = srcForms
                TabOrder = 2
              end
            end
          end
          object TabSheet5: TTabSheet
            Caption = #1608#1580#1607' '#1606#1602#1583
            ImageIndex = 1
            inline frmrdVajhenaghd: TfrmRadioDisplayFormType
              Left = 0
              Top = 0
              Width = 813
              Height = 36
              Align = alTop
              BiDiMode = bdRightToLeft
              ParentBiDiMode = False
              TabOrder = 0
              ExplicitWidth = 817
              inherited rgpFormType: TRadioGroup
                Width = 817
                OnClick = frmrdVajhenaghdrgpFormTypeClick
                ExplicitWidth = 817
                ExplicitHeight = 36
              end
            end
            inline frmGrdvjhnghd1: TfrmVajheNaghd
              Left = 0
              Top = 36
              Width = 813
              Height = 52
              Align = alClient
              BiDiMode = bdRightToLeft
              ParentBiDiMode = False
              TabOrder = 1
              ExplicitTop = 36
              ExplicitWidth = 813
              ExplicitHeight = 52
              inherited GrdVajheNaghd: TDBGrid
                Width = 813
                Height = 23
              end
              inherited PnlVajheNaghd: TPanel
                Top = 23
                Width = 813
                ExplicitTop = 24
                ExplicitWidth = 817
                inherited newPanelVajheNaghd: TPanel
                  Left = 577
                  ExplicitLeft = 577
                end
                inherited okPanelVajheNaghd: TPanel
                  Left = 408
                  ExplicitLeft = 408
                end
              end
            end
          end
        end
        object Panel8: TPanel
          Left = 0
          Top = 251
          Width = 821
          Height = 37
          Align = alTop
          TabOrder = 3
          ExplicitWidth = 825
          object BitBtn11: TBitBtn
            AlignWithMargins = True
            Left = 2
            Top = 7
            Width = 103
            Height = 23
            Margins.Left = 1
            Margins.Top = 6
            Margins.Right = 1
            Margins.Bottom = 6
            Action = actFilter2
            Align = alLeft
            Caption = #1605#1581#1583#1608#1583#1607' '#1587#1601#1575#1585#1588#1575#1578
            TabOrder = 0
          end
          object BitBtn15: TBitBtn
            AlignWithMargins = True
            Left = 748
            Top = 7
            Width = 75
            Height = 23
            Margins.Left = 1
            Margins.Top = 6
            Margins.Right = 1
            Margins.Bottom = 6
            Action = actSt2Perpetuate
            Align = alRight
            Caption = #1583#1575#1574#1605' '#1705#1585#1583#1606
            TabOrder = 1
            Visible = False
          end
        end
      end
    end
  end
  inherited ActionList: TActionList
    Left = 416
    object DataSetEdit2: TDataSetEdit [1]
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      Hint = ' '
      ShortCut = 115
      DataSource = srcReciptsItems
    end
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcForms
    end
    object DataSetPost2: TDataSetPost [3]
      Category = 'Dataset'
      Caption = #1578#1575#1610#1610#1583
      Hint = ' '
      ShortCut = 119
      DataSource = srcReciptsItems
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcForms
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcForms
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcForms
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcForms
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actAutoEdit: TAction
      Caption = #1578#1582#1589#1740#1589' '#1575#1578#1608#1605#1575#1578#1740#1705' '#1587#1591#1585' '#1580#1575#1585#1740
      OnExecute = actAutoEditExecute
    end
    object actReQry: TAction
      Category = 'Dataset'
      Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1740
      OnExecute = actReQryExecute
    end
    object actShowForm: TAction
      Category = 'Dataset'
      Caption = #1606#1605#1575#1740#1588' '#1601#1585#1605
      OnExecute = actShowFormExecute
    end
    object actAutoEditAll: TAction
      Caption = #1578#1582#1589#1740#1589' '#1575#1578#1608#1605#1575#1578#1740#1705
      OnExecute = actAutoEditAllExecute
    end
    object actSt1Confirming: TAction
      Caption = #1602#1591#1593#1740' '#1705#1585#1583#1606
      OnExecute = actSt1ConfirmingExecute
    end
    object actFilter2: TAction
      Caption = #1605#1581#1583#1608#1583#1607' '#1587#1601#1575#1585#1588#1575#1578
      OnExecute = actFilter2Execute
    end
    object actSt2Perpetuate: TAction
      Caption = #1583#1575#1574#1605' '#1705#1585#1583#1606
      OnExecute = actSt2PerpetuateExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 544
    Top = 9
  end
  object srcInv4Sell: TDataSource
    DataSet = qryInv4Sell
    Left = 221
    Top = 341
  end
  object qryInv4Sell: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryInv4SellAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT       *'
      
        'FROM     dbo.InventoryAvilable4Sells(DEFAULT, DEFAULT, DEFAULT, ' +
        'DEFAULT, DEFAULT, DEFAULT) AS InventoryAvilable4Sells_1')
    Left = 130
    Top = 160
    object qryInv4SellServerID: TIntegerField
      FieldName = 'ServerID'
      ReadOnly = True
    end
    object qryInv4SellYearID: TIntegerField
      FieldName = 'YearID'
      ReadOnly = True
    end
    object qryInv4SellStoreID: TIntegerField
      Tag = 3
      FieldName = 'StoreID'
      ReadOnly = True
    end
    object qryInv4SellStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1705#1583' '#1705#1575#1604#1575
      FieldName = 'StuffCode'
      ReadOnly = True
    end
    object qryInv4Sellc_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1588#1585#1581' '#1705#1575#1604#1575
      FieldName = 'c_StuffName'
      Size = 150
    end
    object qryInv4SellUnitName: TStringField
      Tag = 3
      DisplayLabel = #1608#1575#1581#1583
      FieldName = 'UnitName'
      Size = 50
    end
    object qryInv4SellInvEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1608#1580#1608#1583#1740' '#1608#1575#1602#1593#1740'|'#1605#1602#1583#1575#1585
      FieldName = 'InvEntity'
      ReadOnly = True
    end
    object qryInv4SellInvWeight: TFloatField
      Tag = 3
      DisplayLabel = #1605#1608#1580#1608#1583#1740' '#1608#1575#1602#1593#1740'|'#1608#1586#1606
      FieldName = 'InvWeight'
      ReadOnly = True
    end
    object qryInv4SellEntityTheWay: TFloatField
      Tag = 3
      DisplayLabel = #1705#1575#1604#1575#1740' '#1583#1585' '#1585#1575#1607'|'#1605#1602#1583#1575#1585
      FieldName = 'EntityTheWay'
      ReadOnly = True
    end
    object qryInv4SellWeightTheWay: TFloatField
      Tag = 3
      DisplayLabel = #1705#1575#1604#1575#1740' '#1583#1585' '#1585#1575#1607'|'#1608#1586#1606
      FieldName = 'WeightTheWay'
      ReadOnly = True
    end
    object qryInv4SellEntityTheWay2: TFloatField
      Tag = 3
      DisplayLabel = #1587#1601#1575#1585#1588#1575#1578' '#1582#1585#1740#1583'|'#1605#1602#1583#1575#1585
      FieldName = 'EntityTheWay2'
      ReadOnly = True
    end
    object qryInv4SellWeightTheWay2: TFloatField
      Tag = 3
      DisplayLabel = #1587#1601#1575#1585#1588#1575#1578' '#1582#1585#1740#1583'|'#1608#1586#1606
      FieldName = 'WeightTheWay2'
      ReadOnly = True
    end
    object qryInv4SellEntityTheWay_dec: TFloatField
      Tag = 3
      DisplayLabel = #1587#1601#1575#1585#1588#1575#1578' '#1601#1585#1608#1588'|'#1605#1602#1583#1575#1585
      FieldName = 'EntityTheWay_dec'
    end
    object qryInv4SellWeightTheWay_dec: TFloatField
      Tag = 3
      DisplayLabel = #1587#1601#1575#1585#1588#1575#1578' '#1601#1585#1608#1588'|'#1608#1586#1606
      FieldName = 'WeightTheWay_dec'
    end
    object qryInv4SellEntityAvilable4Sells: TFloatField
      Tag = 3
      DisplayLabel = #1605#1575#1606#1583#1607' '#1606#1607#1575#1740#1740'|'#1605#1602#1583#1575#1585
      FieldName = 'EntityAvilable4Sells'
      ReadOnly = True
    end
    object qryInv4SellWeightAvilable4Sells: TFloatField
      Tag = 3
      DisplayLabel = #1605#1575#1606#1583#1607' '#1606#1607#1575#1740#1740'|'#1608#1586#1606
      FieldName = 'WeightAvilable4Sells'
      ReadOnly = True
    end
    object qryInv4SellAvilableEntity: TFloatField
      FieldName = 'AvilableEntity'
    end
    object qryInv4SellAvilableWeight: TFloatField
      FieldName = 'AvilableWeight'
    end
  end
  object srcReciptsItems: TDataSource
    DataSet = qryReciptItems
    OnStateChange = srcReciptsItemsStateChange
    Left = 52
    Top = 263
  end
  object qryReciptItems: TADOQuery
    AutoCalcFields = False
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterPost = qryReciptItemsAfterPost
    BeforeDelete = qryReciptItemsBeforeDelete
    Parameters = <
      item
        Name = 'ReciptType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'StuffCode'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = Null
      end
      item
        Name = 'DateFrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'DateTo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT       Vu_ReciptItems4Edit.*'
      ''
      'FROM            Vu_ReciptItems4Edit'
      ''
      ''
      
        'WHERE        (Vu_ReciptItems4Edit.ReciptType = :ReciptType) AND ' +
        '(StuffCode = :StuffCode)'
      
        '                      AND (ReciptDate between :DateFrom and :Dat' +
        'eTo )'
      ''
      '')
    Left = 189
    Top = 259
    object qryReciptItemsReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryReciptItemsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryReciptItemsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryReciptItemsReciptType: TWordField
      FieldName = 'ReciptType'
    end
    object qryReciptItemsReciptNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1587#1601#1575#1585#1588
      FieldName = 'ReciptNumber'
    end
    object qryReciptItemsReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1740#1582
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryReciptItemsPersonID1: TIntegerField
      Tag = 3
      DisplayLabel = #1705#1583' '#1582#1585#1740#1583#1575#1585
      FieldName = 'PersonID1'
    end
    object qryReciptItemsCustName: TStringField
      Tag = 3
      DisplayLabel = #1582#1585#1740#1583#1575#1585
      FieldName = 'CustName'
      Size = 60
    end
    object qryReciptItemsStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1705#1583' '#1705#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qryReciptItemsc_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1588#1585#1581' '#1705#1575#1604#1575
      FieldName = 'c_StuffName'
      Size = 150
    end
    object qryReciptItemsCarton: TFloatField
      Tag = 3
      FieldName = 'Carton'
    end
    object qryReciptItemsRequestedEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1583#1585#1582#1608#1575#1587#1578#1740
      FieldName = 'RequestedEntity'
    end
    object qryReciptItemsRequestedWeight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606' '#1583#1585#1582#1608#1575#1587#1578#1740
      FieldName = 'RequestedWeight'
    end
    object qryReciptItemsAcceptEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1578#1575#1740#1740#1583' '#1588#1583#1607
      FieldName = 'AcceptEntity'
    end
    object qryReciptItemsAcceptWeight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606' '#1578#1575#1740#1740#1583' '#1588#1583#1607
      FieldName = 'AcceptWeight'
    end
    object qryReciptItemsOutputEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'OutputEntity'
      OnChange = qryReciptItemsOutputEntityChange
    end
    object qryReciptItemsOutputWeight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606
      FieldName = 'OutputWeight'
      OnChange = qryReciptItemsOutputWeightChange
    end
    object qryReciptItemsUnitSellPrice: TFMTBCDField
      Tag = 3
      DisplayLabel = #1601#1740
      FieldName = 'UnitSellPrice'
      currency = True
      Precision = 19
    end
    object qryReciptItemsTotalOutputPrice: TBCDField
      Tag = 3
      DisplayLabel = #1576#1607#1575#1740' '#1705#1604
      FieldName = 'TotalOutputPrice'
      currency = True
      Precision = 19
    end
    object qryReciptItemsTaxCo: TFloatField
      Tag = 3
      FieldName = 'TaxCo'
    end
    object qryReciptItemsTaxValue: TBCDField
      Tag = 3
      DisplayLabel = #1605#1575#1604#1740#1575#1578
      FieldName = 'TaxValue'
      currency = True
      Precision = 19
    end
    object qryReciptItemsTotallSellPrice: TBCDField
      Tag = 3
      DisplayLabel = #1582#1575#1604#1589
      FieldName = 'TotallSellPrice'
      currency = True
      Precision = 19
    end
    object qryReciptItemsProductCode: TLargeintField
      FieldName = 'ProductCode'
    end
    object qryReciptItemsRequestedEntityFinal: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1583#1585#1582#1608#1575#1587#1578#1740' '#1602#1591#1593#1740
      FieldName = 'RequestedEntityFinal'
      ReadOnly = True
    end
    object qryReciptItemsRequestedWeightFinal: TFloatField
      DisplayLabel = #1608#1586#1606' '#1583#1585#1582#1608#1575#1587#1578#1740' '#1602#1591#1593#1740
      FieldName = 'RequestedWeightFinal'
      ReadOnly = True
    end
  end
  object qryItems: TADOQuery
    AutoCalcFields = False
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ReciptID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ServerID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'YearID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT        *'
      'FROM            ReciptItems'
      'WHERE        (ReciptID = :ReciptID) AND (ServerID = :ServerID) '
      'AND (YearID = :YearID)')
    Left = 221
    Top = 395
  end
  object srcForms: TDataSource
    DataSet = qryForms
    OnStateChange = srcFormsStateChange
    Left = 664
    Top = 367
  end
  object srcFormItems: TDataSource
    DataSet = qryFormItems
    Left = 464
    Top = 351
  end
  object qryCustomer: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      #13'SELECT    dbo.Customers.CustID, dbo.Customers.CustName,Mobile'
      'FROM       dbo.Customers LEFT OUTER JOIN'
      
        '                  dbo.CustomersGroup ON dbo.Customers.CustomerGr' +
        'pID = '
      '                  dbo.CustomersGroup.CustomerGrpID')
    Left = 536
    Top = 368
  end
  object qryForms: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    BeforeInsert = qryFormsBeforeInsert
    AfterInsert = qryFormsAfterInsert
    AfterEdit = qryFormsAfterEdit
    BeforePost = qryFormsBeforePost
    AfterPost = qryFormsAfterPost
    BeforeDelete = qryFormsBeforeDelete
    AfterScroll = qryFormsAfterScroll
    Parameters = <
      item
        Name = 'FormType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'YearID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ServerID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'CustomerID2'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM         Forms'
      'where (FormType=:FormType)'
      'AND ( YearID = :YearID ) AND ( ServerID = :ServerID )'
      'AND (CustomerID2 = :CustomerID2)')
    Left = 632
    Top = 271
    object qryFormsOperatorID: TIntegerField
      FieldName = 'OperatorID'
    end
    object qryFormsFormID: TIntegerField
      FieldName = 'FormID'
    end
    object qryFormsFormType: TWordField
      FieldName = 'FormType'
    end
    object qryFormsFormNumber: TIntegerField
      FieldName = 'FormNumber'
    end
    object qryFormsFormDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'FormDate'
      EditMask = '!9999/99/00;1;_'
      FixedChar = True
      Size = 10
    end
    object qryFormsCustomerID1: TIntegerField
      FieldName = 'CustomerID1'
    end
    object qryFormsCustomerID2: TIntegerField
      FieldName = 'CustomerID2'
    end
    object qryFormsAmount: TBCDField
      FieldName = 'Amount'
      currency = True
      Precision = 19
    end
    object qryFormsBudgetCode: TIntegerField
      FieldName = 'BudgetCode'
    end
    object qryFormsProjectID: TIntegerField
      FieldName = 'ProjectID'
    end
    object qryFormsTopicCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576#1583#1575#1585#1610' '
      FieldName = 'TopicCode'
    end
    object qryFormsDetailCode: TStringField
      FieldName = 'DetailCode'
      Size = 12
    end
    object qryForms_Mobile: TStringField
      FieldKind = fkLookup
      FieldName = '_Mobile'
      LookupDataSet = qryCustomer
      LookupKeyFields = 'CustID'
      LookupResultField = 'Mobile'
      KeyFields = 'CustomerID1'
      Size = 12
      Lookup = True
    end
    object qryFormsCTopicCode: TStringField
      FieldName = 'CTopicCode'
      Size = 12
    end
    object qryFormsFomNote: TStringField
      FieldName = 'FomNote'
      Size = 255
    end
    object qryFormsAidInfoNo: TStringField
      FieldName = 'AidInfoNo'
      Size = 40
    end
    object qryFormsAidInfoDate: TStringField
      FieldName = 'AidInfoDate'
      EditMask = '!9999/99/00;1;_'
      FixedChar = True
      Size = 10
    end
    object qryFormsCustomerName2: TStringField
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1583#1585#1610#1575#1601#1578' '#1603#1606#1606#1583#1607
      FieldName = 'CustomerName2'
      Size = 100
    end
    object qryForms_CustomerName: TStringField
      FieldKind = fkLookup
      FieldName = '_CustomerName'
      LookupDataSet = qryCustomer
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'CustomerID1'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qryFormsPayTypes: TWordField
      FieldName = 'PayTypes'
    end
    object qryFormsDocNo: TIntegerField
      FieldName = 'DocNo'
    end
    object qryFormsDocDate: TStringField
      FieldName = 'DocDate'
      FixedChar = True
      Size = 10
    end
    object qryFormsCTopicCode2: TStringField
      FieldName = 'CTopicCode2'
      Size = 12
    end
    object qryFormsModifyDate: TDateTimeField
      FieldName = 'ModifyDate'
    end
    object qryForms_CustomerName2: TStringField
      FieldKind = fkLookup
      FieldName = '_CustomerName2'
      LookupDataSet = qryCustomer
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'CustomerID2'
      Size = 150
      Lookup = True
    end
    object qryFormsFormState: TWordField
      FieldName = 'FormState'
    end
    object qryFormsFirstUser: TStringField
      FieldName = 'FirstUser'
      Size = 50
    end
    object qryFormsLastUser: TStringField
      FieldName = 'LastUser'
      Size = 50
    end
    object qryFormsManegerNote: TStringField
      FieldName = 'ManegerNote'
      Size = 500
    end
    object qryFormsSubAmount: TBCDField
      FieldName = 'SubAmount'
      currency = True
      Precision = 19
    end
    object qryFormsRate: TFloatField
      FieldName = 'Rate'
    end
    object qryFormsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryFormsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryFormsLoansFormID: TIntegerField
      FieldName = 'LoansFormID'
    end
    object qryFormsAidInfoNo2: TFloatField
      FieldName = 'AidInfoNo2'
    end
    object qryMaster_FormsSellsMethod: TIntegerField
      FieldName = 'SellsMethod'
    end
    object qryFormsSellsEmporium: TIntegerField
      FieldName = 'SellsEmporium'
    end
    object qryFormsReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
  end
  object qryFormItems: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeInsert = qryFormItemsBeforeInsert
    AfterInsert = qryFormItemsAfterInsert
    BeforeEdit = qryFormItemsBeforeEdit
    AfterEdit = qryFormsAfterEdit
    BeforePost = qryFormItemsBeforePost
    BeforeDelete = qryFormItemsBeforeDelete
    Parameters = <
      item
        Name = 'FormID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'YearID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'ServerID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT        FormItemID, FormID, Row, CheckNumber, CheckDate, C' +
        'heckType, ItemNote, BankName, AccountNumber, City, CustomerID2, ' +
        'TopicCode, DetailCode, '
      
        '                         CTopicCode, CTopicCode2, BudgetCode, Pr' +
        'ojectID, preFormItemID, AidInfoNo, AidInfoDate, FirstUser, LastU' +
        'ser, AccountNumberNew, AmountArz, CheckState, '
      
        '                         CheckFor, AccState, ItemState, ItemStat' +
        'eComment, SeverableAmount, RelatedID, ServerID, YearID, VAT, Top' +
        'icTypesI, AccountNumberNew1, '
      
        '                         CTopicCode3, ArzTypeID, ArzAmount, ArzR' +
        'ate, DayDelay,AmountDelay'
      ','#39'        '#39' AS CheckDateWeek'
      ', ItemAmount, CashWage'
      'FROM            FormItems'
      'where (FormID=:FormID)'
      'AND ( YearID = :YearID ) AND ( ServerID = :ServerID )')
    Left = 336
    Top = 344
    object qryFormItemsFormItemID: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1606#1583#1607
      FieldName = 'FormItemID'
    end
    object qryFormItemsFormID: TIntegerField
      FieldName = 'FormID'
    end
    object qryFormItemsRow: TIntegerField
      Tag = 3
      DisplayLabel = #1585#1583#1610#1601
      FieldName = 'Row'
    end
    object qryFormItemsCheckNumber: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1602#1587#1591
      FieldName = 'CheckNumber'
      FixedChar = True
      Size = 15
    end
    object qryFormItemsCheckDate: TStringField
      Tag = 3
      DisplayLabel = #1587#1585#1585#1587#1610#1583' '#1602#1587#1591
      FieldName = 'CheckDate'
      ImportedConstraint = '0'
      EditMask = '!9999/99/00;1;_'
      Size = 10
    end
    object qryFormItemsCheckType: TWordField
      FieldName = 'CheckType'
    end
    object qryFormItemsItemAmount: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1602#1587#1591
      FieldName = 'ItemAmount'
      Required = True
      currency = True
      Precision = 19
    end
    object qryFormItemsItemNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
      FieldName = 'ItemNote'
      Size = 255
    end
    object qryFormItemsBankName: TStringField
      FieldName = 'BankName'
    end
    object qryFormItemsAccountNumber: TStringField
      FieldName = 'AccountNumber'
      FixedChar = True
      Size = 25
    end
    object qryFormItemsCity: TStringField
      FieldName = 'City'
      FixedChar = True
    end
    object qryFormItemsCustomerID2: TIntegerField
      FieldName = 'CustomerID2'
    end
    object qryFormItems_Cudtomername2: TStringField
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1583#1585#1610#1575#1601#1578' '#1603#1606#1606#1583#1607
      FieldKind = fkLookup
      FieldName = '_Cudtomername2'
      LookupDataSet = qryCustomer
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'CustomerID2'
      Size = 60
      Lookup = True
    end
    object qryFormItemspreFormItemID: TIntegerField
      FieldName = 'preFormItemID'
    end
    object qryFormItemsAidInfoNo: TStringField
      FieldName = 'AidInfoNo'
      Size = 40
    end
    object qryFormItemsAidInfoDate: TStringField
      FieldName = 'AidInfoDate'
      FixedChar = True
      Size = 10
    end
    object qryFormItemsFirstUser: TStringField
      FieldName = 'FirstUser'
      Size = 50
    end
    object qryFormItemsLastUser: TStringField
      FieldName = 'LastUser'
      Size = 50
    end
    object qryFormItemsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryFormItemsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryFormItemsSeverableAmount: TWordField
      FieldName = 'SeverableAmount'
    end
    object qryFormItemsDayDelay: TIntegerField
      DisplayLabel = #1585#1608#1586#1607#1575#1610' '#1583#1610#1585#1603#1585#1583
      FieldName = 'DayDelay'
    end
    object qryFormItemsAmountDelay: TBCDField
      DisplayLabel = #1580#1585#1610#1605#1607' '#1583#1610#1585#1603#1585#1583
      FieldName = 'AmountDelay'
      currency = True
      Precision = 18
    end
    object qryFormItems_CheckDate: TStringField
      FieldKind = fkLookup
      FieldName = '_CheckDate'
      LookupKeyFields = 'FormItemID'
      LookupResultField = 'CheckDate'
      KeyFields = 'preFormItemID'
      LookupCache = True
      Size = 10
      Lookup = True
    end
    object qryFormItems_FormNumber: TIntegerField
      DisplayLabel = #1588' '#1608#1575#1605
      FieldKind = fkLookup
      FieldName = '_FormNumber'
      LookupKeyFields = 'FormItemID'
      LookupResultField = 'FormNumber'
      KeyFields = 'preFormItemID'
      LookupCache = True
      Lookup = True
    end
    object qryFormItemsTopicCode: TLargeintField
      FieldName = 'TopicCode'
    end
    object qryFormItemsDetailCode: TStringField
      FieldName = 'DetailCode'
      Size = 12
    end
    object qryFormItemsCTopicCode: TStringField
      FieldName = 'CTopicCode'
      Size = 12
    end
    object qryFormItemsCTopicCode2: TStringField
      FieldName = 'CTopicCode2'
      Size = 12
    end
    object qryFormItemsCTopicCode3: TStringField
      FieldName = 'CTopicCode3'
      Size = 12
    end
    object qryFormItemsBudgetCode: TIntegerField
      FieldName = 'BudgetCode'
    end
    object qryFormItemsProjectID: TIntegerField
      FieldName = 'ProjectID'
    end
    object qryFormItemsAccountNumberNew: TStringField
      FieldName = 'AccountNumberNew'
      Size = 60
    end
    object qryFormItemsAmountArz: TFloatField
      FieldName = 'AmountArz'
    end
    object qryFormItemsCheckState: TWordField
      FieldName = 'CheckState'
    end
    object qryFormItemsCheckFor: TStringField
      FieldName = 'CheckFor'
      Size = 255
    end
    object qryFormItemsAccState: TWordField
      FieldName = 'AccState'
    end
    object qryFormItemsItemState: TWordField
      FieldName = 'ItemState'
    end
    object qryFormItemsItemStateComment: TWideStringField
      FieldName = 'ItemStateComment'
      Size = 200
    end
    object qryFormItemsRelatedID: TIntegerField
      FieldName = 'RelatedID'
    end
    object qryFormItemsVAT: TBCDField
      FieldName = 'VAT'
      Precision = 19
    end
    object qryFormItemsTopicTypesI: TIntegerField
      FieldName = 'TopicTypesI'
    end
    object qryFormItemsAccountNumberNew1: TStringField
      FieldName = 'AccountNumberNew1'
      Size = 60
    end
    object qryFormItemsArzTypeID: TIntegerField
      FieldName = 'ArzTypeID'
    end
    object qryFormItemsArzAmount: TBCDField
      FieldName = 'ArzAmount'
      Precision = 19
    end
    object qryFormItemsArzRate: TFloatField
      FieldName = 'ArzRate'
    end
    object qryFormItemsCashWage: TBCDField
      FieldName = 'CashWage'
      Precision = 19
    end
    object qryFormItemsCheckDateWeek: TStringField
      DisplayLabel = #1585#1608#1586' '#1607#1601#1578#1607
      FieldName = 'CheckDateWeek'
      OnGetText = qryFormItemsCheckDateWeekGetText
      FixedChar = True
      Size = 10
    end
  end
  object qryInitForm: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'Type'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT    *'
      'FROM         dbo.FormTypes'
      'where FormType=:Type')
    Left = 704
    Top = 151
  end
  object qryOrders: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryOrdersAfterScroll
    Parameters = <
      item
        Name = 'ReciptType'
        DataType = ftWideString
        Size = 2
        Value = '10'
      end
      item
        Name = 'YearIDFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearIDTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PersonID1From'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PersonID1To'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'DateFrom'
        DataType = ftWideString
        Size = 10
        Value = '9999/99/99'
      end
      item
        Name = 'DateTo'
        DataType = ftWideString
        Size = 10
        Value = '9999/99/99'
      end
      item
        Name = 'ReciptNumberFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ReciptNumberTo'
        DataType = ftWideString
        Size = 7
        Value = '9999999'
      end
      item
        Name = 'CheckDateTo'
        DataType = ftWideString
        Size = 10
        Value = '9999/99/99'
      end>
    SQL.Strings = (
      
        'SELECT        RI.ReciptID, RI.ServerID, RI.YearID, RI.ReciptNumb' +
        'er, RI.ReciptDate,Customers.LeaseValidityDate'
      
        ', RI.PersonID1, Customers.CustFirstName + '#39' '#39' + Customers.CustNa' +
        'me AS CustName, RI.ReciptNote, RI.OutputEntity, RI.OutputWeight,'
      
        '                         RI.TotallSellPrice, Customers.NumberCre' +
        'ditInstallments'
      
        '                         , dbo.GetWeekDayInNextWeek(RI.ReciptDat' +
        'e, Customers.DayOrder) AS LoanDate'
      
        '                         , Customers.DayOrder, Customers.MaxWeek' +
        'lyShoppingCredit,'
      
        '                         Customers.MinWeeklyShoppingAmount, SUM(' +
        'CASE WHEN Forms.FormType = 105 THEN Forms.Amount ELSE 0 END) AS ' +
        'LoanAmount,'
      
        '                         SUM(CASE WHEN Forms.FormType <> 105 THE' +
        'N Forms.Amount ELSE 0 END) AS PayAmount, SUM(Forms.Amount) AS To' +
        'talAmount,'
      
        '                         Isnull( RI.TotallSellPrice,0)  - Isnull' +
        '(SUM(Forms.Amount),0) AS DifferenceAmount,'
      '                         GhsetePardakhtNashode.reMainLoan'
      
        'FROM            (SELECT        Recipts.ReciptType, Recipts.Recip' +
        'tID, Recipts.ServerID, Recipts.YearID, Recipts.ReciptNumber, Rec' +
        'ipts.ReciptDate, Recipts.PersonID1, Recipts.ReciptNote, SUM(Reci' +
        'ptItems.OutputEntity)'
      
        '                                                    AS OutputEnt' +
        'ity, SUM(ReciptItems.OutputWeight) AS OutputWeight, SUM(ReciptIt' +
        'ems.TotallSellPrice) AS TotallSellPrice'
      '                           FROM            Recipts INNER JOIN'
      
        '                                                    ReciptItems ' +
        'ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID ' +
        '= ReciptItems.ServerID AND Recipts.YearID = ReciptItems.YearID'
      
        '                           WHERE        (Recipts.ReciptType = :R' +
        'eciptType) AND (Recipts.YearID BETWEEN :YearIDFrom AND :YearIDTo' +
        ') AND (Recipts.PersonID1 BETWEEN :PersonID1From AND :PersonID1To' +
        ') AND'
      
        '                                                    (CASE WHEN R' +
        'ecipts.DefaultDate IS NULL OR'
      
        '                                                    ltrim(Recipt' +
        's.DefaultDate) = '#39#39' THEN Recipts.ReciptDate ELSE Recipts.Default' +
        'Date END BETWEEN :DateFrom AND :DateTo) AND (Recipts.ReciptNumbe' +
        'r BETWEEN :ReciptNumberFrom AND'
      
        '                                                    :ReciptNumbe' +
        'rTo) AND (Recipts.ReciptState = 1)'
      
        '                           GROUP BY Recipts.ReciptType, Recipts.' +
        'ReciptID, Recipts.ServerID, Recipts.YearID, Recipts.ReciptNumber' +
        ', Recipts.ReciptDate, Recipts.PersonID1, Recipts.ReciptNote) AS ' +
        'RI INNER JOIN'
      
        '                         Customers ON RI.PersonID1 = Customers.C' +
        'ustID LEFT OUTER JOIN'
      
        '                             (SELECT        Forms_1.CustomerID1,' +
        'LTRIM(count(*))+ '#39#1602#1587#1591' '#1575#1586' '#1602#1587#1591' '#39' + rTRIM(MIN(FormItems.CheckNumber' +
        ')) + '#39' '#1578#1575#1585#1740#1582': '#39' + LTRIM(MIN(FormItems.CheckDate))'
      
        '                                                         + '#39' '#1576#1607' ' +
        #1605#1576#1604#1594' '#39' + LTRIM(SUM(FormItems.ItemAmount - ISNULL(FormItems_1.Ite' +
        'mAmount, 0))) AS reMainLoan'
      
        '                                FROM            FormItems INNER ' +
        'JOIN'
      
        '                                                         Forms A' +
        'S Forms_1 ON FormItems.YearID = Forms_1.YearID AND FormItems.Ser' +
        'verID = Forms_1.ServerID AND FormItems.FormID = Forms_1.FormID L' +
        'EFT OUTER JOIN'
      
        '                                                         FormIte' +
        'ms AS FormItems_1 ON FormItems.FormItemID = FormItems_1.preFormI' +
        'temID AND FormItems.YearID = FormItems_1.YearID AND FormItems.Se' +
        'rverID = FormItems_1.PerServerID'
      
        '                                WHERE        (Forms_1.FormState ' +
        '< 10) AND (Forms_1.FormType IN (105)) AND (FormItems_1.preFormIt' +
        'emID IS NULL) AND (FormItems.CheckDate < :CheckDateTo)'
      
        '                                GROUP BY Forms_1.CustomerID1) AS' +
        ' GhsetePardakhtNashode ON RI.PersonID1 = GhsetePardakhtNashode.C' +
        'ustomerID1 LEFT OUTER JOIN'
      
        '                         Forms ON RI.ReciptID = Forms.ReciptID A' +
        'ND RI.ServerID = Forms.ServerID AND RI.YearID = Forms.YearID'
      
        'GROUP BY RI.ReciptID, RI.ServerID, RI.YearID, RI.ReciptNumber, R' +
        'I.ReciptDate,Customers.LeaseValidityDate'
      
        ', RI.PersonID1, RI.OutputEntity, RI.OutputWeight, RI.TotallSellP' +
        'rice, RI.ReciptNote, Customers.CustName, Customers.CustFirstName' +
        ','
      
        '                         Customers.NumberCreditInstallments, Cus' +
        'tomers.DayOrder, Customers.MaxWeeklyShoppingCredit, Customers.Mi' +
        'nWeeklyShoppingAmount, GhsetePardakhtNashode.reMainLoan')
    Left = 464
    Top = 135
    object qryOrdersReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryOrdersServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryOrdersYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryOrdersReciptNumber: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1587#1601#1575#1585#1588
      FieldName = 'ReciptNumber'
    end
    object qryOrdersReciptDate: TStringField
      DisplayLabel = #1578#1575#1585#1740#1582' '#1587#1601#1575#1585#1588
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryOrdersPersonID1: TIntegerField
      DisplayLabel = #1705#1583#1582#1585#1740#1583#1575#1585
      FieldName = 'PersonID1'
    end
    object qryOrdersCustName: TStringField
      DisplayLabel = #1606#1575#1605' '#1582#1585#1740#1583#1575#1585
      FieldName = 'CustName'
      ReadOnly = True
      Size = 91
    end
    object qryOrdersReciptNote: TStringField
      DisplayLabel = #1578#1608#1590#1740#1581#1575#1578
      FieldName = 'ReciptNote'
      Size = 400
    end
    object qryOrdersOutputEntity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'OutputEntity'
      ReadOnly = True
    end
    object qryOrdersOutputWeight: TFloatField
      DisplayLabel = #1608#1586#1606
      FieldName = 'OutputWeight'
      ReadOnly = True
    end
    object qryOrdersTotallSellPrice: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1582#1575#1604#1589
      FieldName = 'TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryOrdersNumberCreditInstallments: TIntegerField
      FieldName = 'NumberCreditInstallments'
    end
    object qryOrdersLoanDate: TStringField
      DisplayLabel = #1578#1575#1585#1740#1582' '#1587#1585#1585#1587#1740#1583' '#1575#1608#1604#1740#1606' '#1602#1587#1591
      FieldName = 'LoanDate'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object qryOrdersDayOrder: TWordField
      DisplayLabel = #1585#1608#1586' '#1579#1576#1578' '#1587#1601#1575#1585#1588
      FieldName = 'DayOrder'
      OnGetText = qryOrdersDayOrderGetText
    end
    object qryOrdersMaxWeeklyShoppingCredit: TFMTBCDField
      FieldName = 'MaxWeeklyShoppingCredit'
      Precision = 19
    end
    object qryOrdersMinWeeklyShoppingAmount: TBCDField
      FieldName = 'MinWeeklyShoppingAmount'
      Precision = 19
    end
    object qryOrdersLoanAmount: TBCDField
      Tag = 3
      DisplayLabel = #1578#1602#1587#1740#1591' '#1588#1583#1607
      FieldName = 'LoanAmount'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryOrdersPayAmount: TBCDField
      Tag = 3
      DisplayLabel = #1608#1580#1607' '#1606#1602#1583'/'#1587#1575#1740#1585
      FieldName = 'PayAmount'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryOrdersTotalAmount: TBCDField
      Tag = 3
      DisplayLabel = #1580#1605#1593' '#1662#1585#1583#1575#1582#1578
      FieldName = 'TotalAmount'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryOrdersDifferenceAmount: TBCDField
      DisplayLabel = #1575#1582#1578#1604#1575#1601
      FieldName = 'DifferenceAmount'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryOrdersreMainLoan: TStringField
      DisplayLabel = #1662#1585#1583#1575#1582#1578' '#1575#1602#1587#1575#1591
      FieldName = 'reMainLoan'
      ReadOnly = True
      Size = 107
    end
    object qryOrdersLeaseValidityDate: TStringField
      FieldName = 'LeaseValidityDate'
      FixedChar = True
      Size = 10
    end
  end
  object srcOrders: TDataSource
    DataSet = qryOrders
    Left = 624
    Top = 15
  end
end

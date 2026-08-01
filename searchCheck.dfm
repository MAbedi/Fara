inherited searchCheckF: TsearchCheckF
  Left = 369
  Top = 193
  Caption = #1580#1587#1578#1580#1608' '#1608' '#1585#1583#1610#1575#1576#1610' '#1670#1603' '#1607#1575
  ClientHeight = 770
  ClientWidth = 1024
  ExplicitWidth = 1032
  ExplicitHeight = 801
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 729
    Width = 1024
    ExplicitTop = 729
    ExplicitWidth = 1024
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 864
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actShow
      Align = alRight
      Caption = #1606#1605#1575#1610#1588
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 702
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actPrint
      Align = alRight
      Caption = #1670#1575#1662
      TabOrder = 2
    end
    object BitBtn7: TBitBtn
      AlignWithMargins = True
      Left = 783
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actPrint_import
      Align = alRight
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
      TabOrder = 3
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 4
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
      TabOrder = 5
    end
    object BitBtn5: TBitBtn
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
      TabOrder = 6
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 945
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actFilter
      Align = alRight
      Caption = #1575#1593#1605#1575#1604' '#1601#1610#1604#1578#1585
      TabOrder = 7
    end
    object btnDef: TBitBtn
      AlignWithMargins = True
      Left = 621
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alRight
      Caption = #1662#1610#1588' '#1601#1585#1590' '#1607#1575
      TabOrder = 8
      OnClick = btnDefClick
    end
  end
  inherited Panel2: TPanel
    Width = 1024
    ExplicitWidth = 1024
    DesignSize = (
      1024
      53)
    inherited ImgTemplate: TImage
      Left = 1019
      ExplicitLeft = 847
    end
    inherited lblCaption: TLabel
      Left = 832
      Width = 146
      Caption = #1580#1587#1578#1580#1608' '#1608' '#1585#1583#1610#1575#1576#1610' '#1670#1603' '#1607#1575
      ExplicitLeft = 832
      ExplicitWidth = 146
    end
    inherited lblBaseDate: TLabel
      Left = 429
      ExplicitLeft = 422
    end
    object RadioGroup1: TRadioGroup
      Left = 1
      Top = 1
      Width = 104
      Height = 51
      Align = alLeft
      ItemIndex = 0
      Items.Strings = (
        #1576#1575#1606#1705' '#1580#1575#1585#1610
        #1607#1605#1607' '#1576#1575#1606#1705#1607#1575)
      TabOrder = 0
      OnClick = RadioGroup1Click
    end
  end
  inherited Panel3: TPanel
    Width = 1024
    Height = 676
    ExplicitWidth = 1024
    ExplicitHeight = 676
    object Panel1: TPanel
      Left = 888
      Top = 2
      Width = 134
      Height = 672
      Align = alRight
      TabOrder = 0
      object Label8: TLabel
        Left = 1
        Top = 1
        Width = 132
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = #1575#1606#1578#1582#1575#1576' '#1605#1581#1583#1608#1583#1607' '#1580#1587#1578#1580#1608
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitWidth = 104
      end
      object GroupBox1: TGroupBox
        Left = 1
        Top = 14
        Width = 132
        Height = 64
        Align = alTop
        Caption = #1588#1605#1575#1585#1607' '#1670#1603
        TabOrder = 0
        object Label2: TLabel
          Left = 118
          Top = 17
          Width = 7
          Height = 13
          Caption = #1575#1586
        end
        object Label3: TLabel
          Left = 118
          Top = 42
          Width = 6
          Height = 13
          Caption = #1578#1575
        end
        object numberfrom: TMaskEdit
          Left = 5
          Top = 16
          Width = 110
          Height = 21
          TabOrder = 0
          Text = ''
          OnChange = numberfromChange
        end
        object numberto: TMaskEdit
          Left = 5
          Top = 38
          Width = 110
          Height = 21
          TabOrder = 1
          Text = ''
        end
      end
      object GroupBox2: TGroupBox
        Left = 1
        Top = 145
        Width = 132
        Height = 67
        Align = alTop
        Caption = #1605#1576#1604#1594' '#1670#1603
        TabOrder = 2
        object Label4: TLabel
          Left = 118
          Top = 19
          Width = 7
          Height = 13
          Caption = #1575#1586
        end
        object Label5: TLabel
          Left = 118
          Top = 43
          Width = 6
          Height = 13
          Caption = #1578#1575
        end
        object amountFrom: TMaskEdit
          Left = 5
          Top = 16
          Width = 110
          Height = 21
          Color = 13236955
          TabOrder = 0
          Text = ''
          OnChange = amountFromChange
        end
        object amountTo: TMaskEdit
          Left = 5
          Top = 40
          Width = 110
          Height = 21
          Color = 13236955
          TabOrder = 1
          Text = ''
        end
      end
      object GroupBox3: TGroupBox
        Left = 1
        Top = 212
        Width = 132
        Height = 67
        Align = alTop
        Caption = #1587#1585' '#1585#1587#1610#1583' '#1670#1603
        TabOrder = 3
        object Label6: TLabel
          Left = 118
          Top = 19
          Width = 7
          Height = 13
          Caption = #1575#1586
        end
        object Label7: TLabel
          Left = 118
          Top = 42
          Width = 6
          Height = 13
          Caption = #1578#1575
        end
        object dateFrom: TMaskEdit
          Left = 30
          Top = 16
          Width = 82
          Height = 21
          Color = 13431799
          EditMask = '9999/99/99'
          MaxLength = 10
          TabOrder = 0
          Text = '    /  /  '
          OnChange = dateFromChange
        end
        object dateTo: TMaskEdit
          Left = 30
          Top = 40
          Width = 82
          Height = 21
          Color = 13431799
          EditMask = '9999/99/99'
          MaxLength = 10
          TabOrder = 1
          Text = '    /  /  '
        end
      end
      object grp5: TGroupBox
        Left = 1
        Top = 345
        Width = 132
        Height = 66
        Align = alTop
        Caption = #1583#1585#1610#1575#1601#1578' '#1603#1606#1606#1583#1607'/'#1576#1575#1606#1603
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
        object lbl14: TLabel
          Left = 118
          Top = 21
          Width = 7
          Height = 13
          Caption = #1575#1586
        end
        object lbl15: TLabel
          Left = 118
          Top = 46
          Width = 6
          Height = 13
          Caption = #1578#1575
        end
        object btnCustomerID1From: TSpeedButton
          Left = 8
          Top = 15
          Width = 23
          Height = 22
          Hint = 'Forms.CustomerID1'
          Caption = '...'
          OnClick = btnAllClick
        end
        object btnCustomerID1To: TSpeedButton
          Tag = 1
          Left = 8
          Top = 41
          Width = 23
          Height = 22
          Hint = 'Forms.CustomerID1'
          Caption = '...'
          OnClick = btnAllClick
        end
        object medtCustomerID1From: TMaskEdit
          Left = 33
          Top = 18
          Width = 81
          Height = 19
          EditMask = '999999999999999999;1;_'
          MaxLength = 18
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Text = '                  '
          OnChange = medtCustomerID1FromChange
        end
        object medtCustomerID1To: TMaskEdit
          Left = 33
          Top = 43
          Width = 81
          Height = 19
          EditMask = '999999999999999999;1;_'
          MaxLength = 18
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Text = '                  '
        end
        object cmbPersonID1: TComboBox
          Left = 171
          Top = 17
          Width = 33
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Style = csDropDownList
          Ctl3D = False
          ItemIndex = 0
          ParentCtl3D = False
          TabOrder = 2
          Text = #1608
          Items.Strings = (
            #1608
            #1610#1575)
        end
      end
      object grp1: TGroupBox
        Left = 1
        Top = 477
        Width = 132
        Height = 66
        Align = alTop
        Caption = #1578#1581#1608#1610#1604' '#1583#1607#1606#1583#1607'/'#1711#1610#1585#1606#1583#1607
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
        object lbl1: TLabel
          Left = 118
          Top = 21
          Width = 7
          Height = 13
          Caption = #1575#1586
        end
        object lbl2: TLabel
          Left = 118
          Top = 46
          Width = 6
          Height = 13
          Caption = #1578#1575
        end
        object btnformsCustomerID2From: TSpeedButton
          Left = 8
          Top = 17
          Width = 23
          Height = 22
          Hint = 'Forms.CustomerID2'
          Caption = '...'
          OnClick = btnAllClick
        end
        object btnformsCustomerID2To: TSpeedButton
          Tag = 1
          Left = 8
          Top = 41
          Width = 23
          Height = 22
          Hint = 'Forms.CustomerID2'
          Caption = '...'
          OnClick = btnAllClick
        end
        object medtformsCustomerID2From: TMaskEdit
          Left = 33
          Top = 18
          Width = 81
          Height = 19
          EditMask = '999999999999999999;1;_'
          MaxLength = 18
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Text = '                  '
          OnChange = medtformsCustomerID2FromChange
        end
        object medtformsCustomerID2To: TMaskEdit
          Left = 33
          Top = 43
          Width = 81
          Height = 19
          EditMask = '999999999999999999;1;_'
          MaxLength = 18
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Text = '                  '
        end
        object cmb1: TComboBox
          Left = 171
          Top = 17
          Width = 33
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Style = csDropDownList
          Ctl3D = False
          ItemIndex = 0
          ParentCtl3D = False
          TabOrder = 2
          Text = #1608
          Items.Strings = (
            #1608
            #1610#1575)
        end
      end
      object grp2: TGroupBox
        Left = 1
        Top = 279
        Width = 132
        Height = 66
        Align = alTop
        Caption = #1605#1578#1593#1607#1583'/'#1583#1585#1610#1575#1601#1578' '#1603#1606#1606#1583#1607
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
        object lbl3: TLabel
          Left = 118
          Top = 21
          Width = 7
          Height = 13
          Caption = #1575#1586
        end
        object lbl4: TLabel
          Left = 118
          Top = 46
          Width = 6
          Height = 13
          Caption = #1578#1575
        end
        object btnCustomerID2From: TSpeedButton
          Left = 8
          Top = 17
          Width = 23
          Height = 22
          Hint = 'FormItems.CustomerID2'
          Caption = '...'
          OnClick = btnAllClick
        end
        object btnCustomerID2To: TSpeedButton
          Tag = 1
          Left = 8
          Top = 41
          Width = 23
          Height = 22
          Hint = 'FormItems.CustomerID2'
          Caption = '...'
          OnClick = btnAllClick
        end
        object medtCustomerID2From: TMaskEdit
          Left = 33
          Top = 18
          Width = 81
          Height = 19
          EditMask = '999999999999999999;1;_'
          MaxLength = 18
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Text = '                  '
          OnChange = medtCustomerID2FromChange
        end
        object medtCustomerID2To: TMaskEdit
          Left = 33
          Top = 43
          Width = 81
          Height = 19
          EditMask = '999999999999999999;1;_'
          MaxLength = 18
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Text = '                  '
        end
        object cmb2: TComboBox
          Left = 171
          Top = 17
          Width = 33
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Style = csDropDownList
          Ctl3D = False
          ItemIndex = 0
          ParentCtl3D = False
          TabOrder = 2
          Text = #1608
          Items.Strings = (
            #1608
            #1610#1575)
        end
      end
      object grp3: TGroupBox
        Left = 1
        Top = 585
        Width = 132
        Height = 66
        Align = alTop
        Caption = #1662#1588#1578' '#1606#1605#1585#1607
        TabOrder = 7
        object lbl5: TLabel
          Left = 118
          Top = 17
          Width = 7
          Height = 13
          Caption = #1575#1586
        end
        object lbl6: TLabel
          Left = 118
          Top = 43
          Width = 6
          Height = 13
          Caption = #1578#1575
        end
        object medtCheckCounterFrom: TMaskEdit
          Left = 5
          Top = 16
          Width = 110
          Height = 21
          TabOrder = 0
          Text = ''
          OnChange = medtCheckCounterFromChange
        end
        object medtCheckCounterTo: TMaskEdit
          Left = 5
          Top = 39
          Width = 110
          Height = 21
          TabOrder = 1
          Text = ''
        end
      end
      object GroupBox4: TGroupBox
        Left = 1
        Top = 78
        Width = 132
        Height = 67
        Align = alTop
        Caption = #1705#1583' '#1589#1740#1575#1583
        TabOrder = 1
        object Label9: TLabel
          Left = 118
          Top = 16
          Width = 7
          Height = 13
          Caption = #1575#1586
        end
        object Label10: TLabel
          Left = 118
          Top = 43
          Width = 6
          Height = 13
          Caption = #1578#1575
        end
        object HunterCodeFrom: TMaskEdit
          Left = 5
          Top = 15
          Width = 110
          Height = 21
          TabOrder = 0
          Text = ''
          OnChange = HunterCodeFromChange
        end
        object HunterCodeTo: TMaskEdit
          Left = 5
          Top = 39
          Width = 110
          Height = 21
          TabOrder = 1
          Text = ''
        end
      end
      object GroupBox5: TGroupBox
        Left = 1
        Top = 411
        Width = 132
        Height = 66
        Align = alTop
        Caption = #1601#1585#1605'/'#1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 8
        object Label11: TLabel
          Left = 118
          Top = 21
          Width = 7
          Height = 13
          Caption = #1575#1586
        end
        object Label12: TLabel
          Left = 118
          Top = 46
          Width = 6
          Height = 13
          Caption = #1578#1575
        end
        object btnTypeFrom: TSpeedButton
          Left = 8
          Top = 17
          Width = 23
          Height = 22
          Caption = '...'
          OnClick = btnTypeFromClick
        end
        object btnTypeTo: TSpeedButton
          Tag = 1
          Left = 8
          Top = 41
          Width = 23
          Height = 22
          Caption = '...'
          OnClick = btnTypeFromClick
        end
        object MskTypeFrom: TMaskEdit
          Left = 33
          Top = 18
          Width = 81
          Height = 19
          EditMask = '999999999999999999;1;_'
          MaxLength = 18
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Text = '                  '
          OnChange = medtformsCustomerID2FromChange
        end
        object MskTypeTo: TMaskEdit
          Left = 33
          Top = 43
          Width = 81
          Height = 19
          EditMask = '999999999999999999;1;_'
          MaxLength = 18
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Text = '                  '
        end
        object ComboBox1: TComboBox
          Left = 171
          Top = 17
          Width = 33
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Style = csDropDownList
          Ctl3D = False
          ItemIndex = 0
          ParentCtl3D = False
          TabOrder = 2
          Text = #1608
          Items.Strings = (
            #1608
            #1610#1575)
        end
      end
      object GroupBox6: TGroupBox
        Left = 1
        Top = 543
        Width = 132
        Height = 42
        Align = alTop
        Caption = #1606#1575#1605' '#1576#1575#1606#1705
        TabOrder = 9
        object MskBank: TMaskEdit
          Left = 5
          Top = 16
          Width = 110
          Height = 21
          TabOrder = 0
          Text = ''
          OnChange = medtCheckCounterFromChange
        end
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 2
      Width = 886
      Height = 672
      Align = alClient
      Caption = 'Panel4'
      TabOrder = 1
      object DBGrid1: TCedarDbgrid
        Left = 239
        Top = 1
        Width = 646
        Height = 670
        Align = alClient
        Color = clCream
        DataSource = srcCheck
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
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        RowHeight = 18
        SearchPanel.Enabled = True
        SortLocal = True
        TabOrder = 0
        OnDblClick = actShowExecute
        OnKeyPress = DBGrid1KeyPress
        ActiveSearchPanel = False
        SelectedSum = True
        SelectFooterIndex = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CheckNumber'
            Footers = <>
            Width = 53
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CheckDate'
            Footers = <>
            Width = 58
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'HunterCode'
            Footers = <>
            Width = 64
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SyadSystem'
            Footers = <>
            Width = 80
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'OtherNationalCode'
            Footers = <>
            Width = 65
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FormCaption'
            Footers = <>
            Width = 55
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'BankName'
            Footers = <>
            Width = 36
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'AccountNumber'
            Footers = <>
            Width = 32
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ItemAmount'
            Footers = <>
            Width = 125
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CustomerID2'
            Footers = <>
            Width = 23
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CustName_D'
            Footers = <>
            Width = 105
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'formsCustomerID2'
            Footers = <>
            Width = 17
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CustName_2'
            Footers = <>
            Width = 94
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CustomerID1'
            Footers = <>
            Width = 19
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CustName_1'
            Footers = <>
            Width = 81
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FormNumber'
            Footers = <>
            Width = 47
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FormDate'
            Footers = <>
            Width = 39
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ItemNote'
            Footers = <>
            Width = 45
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FirstUser'
            Footers = <>
            Width = 49
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'LastUser'
            Footers = <>
            Width = 65
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'AidInfoNo'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'YearID'
            Footers = <>
            Width = 37
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DataBankName'
            Footers = <>
            Width = 68
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CheckCounter'
            Footers = <>
            Width = 52
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FormState'
            Footers = <>
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object PanelMain: TPanel
        Left = 1
        Top = 1
        Width = 238
        Height = 670
        Align = alLeft
        TabOrder = 1
        object PaintBox1: TPaintBox
          Left = 212
          Top = 1
          Width = 25
          Height = 643
          Align = alRight
          OnClick = PaintBox1Click
          OnPaint = PaintBox1Paint
          ExplicitLeft = 166
          ExplicitHeight = 668
        end
        object CedarDbgrid1: TCedarDbgrid
          Left = 1
          Top = 1
          Width = 211
          Height = 643
          Align = alClient
          Color = clCream
          DataSource = srcChk
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
          OddRowColor = clWhite
          RowHeight = 18
          SearchPanel.Enabled = True
          SortLocal = True
          TabOrder = 0
          OnDblClick = CedarDbgrid1DblClick
          ActiveSearchPanel = False
          SelectFooterIndex = 0
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'CheckNumber'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'BankName'
              Footers = <>
              Width = 46
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'YearID'
              Footers = <>
              Width = 35
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object btnMakeIX: TBitBtn
          Left = 1
          Top = 644
          Width = 236
          Height = 25
          Align = alBottom
          Caption = #1575#1740#1580#1575#1583' '#1705#1606#1578#1585#1604' '#1580#1607#1578' '#1662#1740#1588#1711#1740#1585#1740
          TabOrder = 1
          OnClick = btnMakeIXClick
        end
      end
    end
  end
  inherited ActionList: TActionList
    Left = 480
    object actFilter: TAction [0]
      Caption = #1575#1593#1605#1575#1604' '#1601#1610#1604#1578#1585
      OnExecute = actFilterExecute
    end
    inherited DataSetInsert1: TDataSetInsert [1]
    end
    inherited DataSetEdit1: TDataSetEdit [2]
    end
    inherited DataSetPost1: TDataSetPost [3]
    end
    inherited DataSetCancel1: TDataSetCancel [4]
    end
    inherited DataSetDelete1_: TDataSetDelete [5]
    end
    object actShow: TAction [6]
      Caption = #1606#1605#1575#1610#1588
      OnExecute = actShowExecute
    end
    object actPrint_import: TAction [7]
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
      OnExecute = actPrint_importExecute
    end
    object actPrint: TAction [8]
      Caption = #1670#1575#1662
      OnExecute = actPrintExecute
    end
    inherited actshowChart: TAction [9]
    end
    object actExcel: TAction [10]
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actExcelExecute
    end
    inherited actSearch_: TAction [11]
      OnExecute = actSearch_Execute
    end
    object actSort: TAction [12]
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    inherited actExit: TAction [13]
    end
  end
  inherited ImageList1: TImageList
    Left = 616
    Top = 1
  end
  object qryCheck: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      ''
      
        'SELECT FormItems.CheckNumber,FormItems.HunterCode, FormItems.Che' +
        'ckDate, FormTypes.FormCaption, '
      'FormItems.BankName,FormItems.ItemAmount,FormItems.CustomerID2,'
      
        'Forms.CustomerID1, Forms.CustomerID2 AS formsCustomerID2, Forms.' +
        'FormNumber,'
      'Forms.FormDate,'
      ' case Forms.FormState'
      '    when 0  then '#39#1605#1608#1602#1578#39
      '    when 1  then '#39#1602#1591#1593#1610#39
      '    when 10 then '#39#1576#1575#1591#1604#1607#39
      '    when 11 then '#39#1585#1586#1585#1608#39
      '    when 12 then '#39#1662#1740#1588' '#1606#1608#1740#1587#39'  end AS FormState'
      '    ,FormItems.ItemNote,'
      
        'FormItems.AccountNumber, Customers_2.CustName, Customers_1.CustN' +
        'ame AS'
      
        'CustName_1,Customers.CustName AS CustName_2,FormTypes.FormType,F' +
        'orms.FormID,'
      'Forms.ServerID, Forms.YearID,'
      
        'FormItems.ItemAmount as Amount,Forms.FirstUser,Forms.LastUser ,F' +
        'ormItems.AidInfoNo,FormItems.CheckCounter'
      
        ','#39'BPMS_FaraRayaneh'#39' AS DataBankName ,SyadSystem ,HunterCode ,Oth' +
        'erNationalCode'
      ''
      'FROM BPMS_FaraRayaneh.dbo.FormItems FormItems LEFT OUTER JOIN'
      
        'BPMS_FaraRayaneh.dbo.Forms Forms ON FormItems.YearID = Forms.Yea' +
        'rID AND FormItems.ServerID = Forms.ServerID AND FormItems.FormID' +
        ' ='
      'Forms.FormID LEFT OUTER JOIN'
      
        'BPMS_FaraRayaneh.dbo.FormTypes FormTypes ON Forms.FormType = For' +
        'mTypes.FormType LEFT OUTER JOIN'
      
        'BPMS_FaraRayaneh.dbo.Customers Customers ON FormItems.CustomerID' +
        '2 = Customers.CustID LEFT OUTER JOIN'
      
        'BPMS_FaraRayaneh.dbo.Customers Customers_1 ON Forms.CustomerID1 ' +
        '= Customers_1.CustID LEFT OUTER JOIN'
      
        'BPMS_FaraRayaneh.dbo.Customers Customers_2 ON Forms.CustomerID2 ' +
        '= Customers_2.CustID'
      
        'WHERE (((FormItems.CheckNumber between '#39'               '#39' and '#39'99' +
        '9470         '#39')'
      'AND (FormItems.ItemAmount between 2000 and 2589375600)) and'
      '((FormItems.CheckDate is null) OR ( FormItems.CheckDate = '#39#39' )OR'
      '(FormItems.CheckDate between '#39'  /  /  '#39' and '#39'94/09/15'#39')))'
      'and (FormTypes.FormType <> 103)'
      'AND (ISNULL(FormItems.CheckCounter,0) between 0 AND 0)')
    Left = 250
    Top = 174
    object qryCheckCheckNumber: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1670#1603
      FieldName = 'CheckNumber'
      FixedChar = True
      Size = 15
    end
    object qryCheckHunterCode: TStringField
      Tag = 3
      DisplayLabel = #1705#1583' '#1589#1740#1575#1583
      FieldName = 'HunterCode'
      ImportedConstraint = '0'
    end
    object qryCheckCheckDate: TStringField
      Tag = 3
      DisplayLabel = #1587#1585#1585#1587#1610#1583' '#1670#1603
      FieldName = 'CheckDate'
      FixedChar = True
      Size = 10
    end
    object qryCheckFormCaption: TStringField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1601#1585#1605'/'#1575#1591#1604#1575#1593#1575#1578
      FieldName = 'FormCaption'
      Size = 50
    end
    object qryCheckBankName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1576#1575#1606#1603
      FieldName = 'BankName'
    end
    object qryCheckItemAmount: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1670#1603
      FieldName = 'ItemAmount'
      currency = True
      Precision = 19
    end
    object qryCheckCustomerID2: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583
      FieldName = 'CustomerID2'
    end
    object qryCheckCustomerID1: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583
      FieldName = 'CustomerID1'
    end
    object qryCheckformsCustomerID2: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583
      FieldName = 'formsCustomerID2'
    end
    object qryCheckFormNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'FormNumber'
    end
    object qryCheckFormDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1601#1585#1605
      FieldName = 'FormDate'
      EditMask = '!9999/99/00;1;_'
      FixedChar = True
      Size = 10
    end
    object qryCheckItemNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' '#1670#1603
      FieldName = 'ItemNote'
      Size = 255
    end
    object qryCheckAccountNumber: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1581#1587#1575#1576
      FieldName = 'AccountNumber'
      FixedChar = True
      Size = 25
    end
    object qryCheckCustName_2: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1605#1578#1593#1607#1583'/'#1583#1585#1610#1575#1601#1578' '#1603#1606#1606#1583#1607
      FieldName = 'CustName_2'
      Size = 120
    end
    object qryCheckCustName_1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1583#1585#1610#1575#1601#1578' '#1603#1606#1606#1583#1607'/'#1576#1575#1606#1603
      FieldName = 'CustName_1'
      Size = 60
    end
    object qryCheckCustName_D: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1578#1581#1608#1610#1604' '#1583#1607#1606#1583#1607'/'#1711#1610#1585#1606#1583#1607
      FieldName = 'CustName_D'
      Size = 60
    end
    object qryCheckAmount: TBCDField
      Tag = 3
      FieldName = 'Amount'
      Precision = 19
    end
    object qryCheckFormType: TWordField
      FieldName = 'FormType'
    end
    object qryCheckFirstUser: TStringField
      DisplayLabel = #1579#1576#1578' '#1603#1606#1606#1583#1607
      FieldName = 'FirstUser'
      Size = 50
    end
    object qryCheckLastUser: TStringField
      DisplayLabel = #1608#1610#1585#1575#1610#1588' '#1603#1606#1606#1583#1607
      FieldName = 'LastUser'
      Size = 50
    end
    object qryCheckFormID: TIntegerField
      FieldName = 'FormID'
    end
    object qryCheckAidInfoNo: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1603#1605#1603#1610
      FieldName = 'AidInfoNo'
      Size = 40
    end
    object qryCheckServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryCheckYearID: TIntegerField
      DisplayLabel = #1587#1575#1604
      FieldName = 'YearID'
    end
    object qryCheckDataBankName: TStringField
      DisplayLabel = #1606#1575#1605' '#1587#1575#1604' '#1605#1575#1604#1610
      FieldName = 'DataBankName'
      Size = 50
    end
    object qryCheckCheckCounter: TIntegerField
      Tag = 3
      DisplayLabel = #1662#1588#1578' '#1606#1605#1585#1607
      FieldName = 'CheckCounter'
    end
    object qryCheckFormState: TStringField
      DisplayLabel = #1608#1590#1593#1610#1578
      FieldName = 'FormState'
      ReadOnly = True
      Size = 10
    end
    object qryCheckOtherNationalCode: TStringField
      Tag = 3
      DisplayLabel = #1587#1575#1740#1585' '#1705#1583#1605#1604#1740
      FieldName = 'OtherNationalCode'
      Size = 12
    end
    object qryCheckSyadSystem: TBooleanField
      Tag = 3
      DisplayLabel = #1579#1576#1578#8207#1587#1575#1605#1575#1606#1607#8207#1589#1740#1575#1583' '
      FieldName = 'SyadSystem'
    end
  end
  object srcCheck: TDataSource
    DataSet = qryCheck
    Left = 322
    Top = 175
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcCheck
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 282
    Top = 327
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 216000
    PrinterSetup.mmPaperWidth = 279000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'D:\Projects\Fara\BSell\Exe\Report\searchCheck.rtm'
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
    Left = 498
    Top = 303
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 26458
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        mmHeight = 7144
        mmLeft = 0
        mmTop = 19314
        mmWidth = 266171
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCompanyName: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCompanyName'
        OnGetText = ppLblCompanyNameGetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 109273
        mmTop = 0
        mmWidth = 47625
        BandType = 0
        LayerName = Foreground
      end
      object ppLblFormName: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblFormName'
        Border.mmPadding = 0
        Caption = #1711#1586#1575#1585#1588' '#1670#1603#1607#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7197
        mmLeft = 123879
        mmTop = 5292
        mmWidth = 18415
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 265
        mmTop = 12435
        mmWidth = 266171
        BandType = 0
        LayerName = Foreground
      end
      object ppLblPrintDate: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblPrintDate'
        OnGetText = ppLblPrintDateGetText
        Border.mmPadding = 0
        Caption = #1576#1578#1575#1585#1610#1582':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5292
        mmLeft = 794
        mmTop = 7144
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object ppSysVarPageNumber: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SysVarPageNumber'
        OnGetText = ppSysVarPageNumberGetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 794
        mmTop = 1852
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 202142
        mmTop = 19315
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 176213
        mmTop = 19315
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLine50: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line50'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 234950
        mmTop = 19315
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLine51: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line501'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 248709
        mmTop = 19315
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLine17: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line17'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 97367
        mmTop = 19315
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 79640
        mmTop = 19579
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCustname2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCustname2'
        Border.mmPadding = 0
        Caption = #1578#1608#1590#1610#1581#1575#1578
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
        mmLeft = 112184
        mmTop = 19844
        mmWidth = 40217
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCustomerID2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label102'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594
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
        mmLeft = 529
        mmTop = 19844
        mmWidth = 24342
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1578#1581#1608#1610#1604' '#1583#1607#1606#1583#1607
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
        mmLeft = 25665
        mmTop = 19844
        mmWidth = 55033
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCustomerID1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCustomerID1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583' '
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
        mmLeft = 81492
        mmTop = 20108
        mmWidth = 16933
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label32'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1576#1575#1606#1603' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 178065
        mmTop = 19844
        mmWidth = 25135
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578'/'#1601#1585#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 203994
        mmTop = 19844
        mmWidth = 31485
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1587#1585#1585#1587#1610#1583#1670#1603
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4826
        mmLeft = 236009
        mmTop = 20373
        mmWidth = 13758
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1670#1603
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 250561
        mmTop = 19844
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = #1605#1588#1582#1589#1575#1578' '#1581#1587#1575#1576
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 153723
        mmTop = 19579
        mmWidth = 23283
        BandType = 0
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 151607
        mmTop = 19579
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1608#1590#1593#1610#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 99219
        mmTop = 19579
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 23813
        mmTop = 19579
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 110067
        mmTop = 19579
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        OnGetText = ppLabel6GetText
        Border.mmPadding = 0
        Caption = 'Label6'
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
        mmLeft = 210873
        mmTop = 12965
        mmWidth = 53446
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        OnGetText = ppLabel7GetText
        Border.mmPadding = 0
        Caption = 'Label7'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6085
        mmLeft = 1058
        mmTop = 12965
        mmWidth = 51858
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      PrintCount = 30
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'FormNumber'
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
        mmHeight = 6435
        mmLeft = 250561
        mmTop = 0
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'CheckDate'
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
        mmLeft = 237067
        mmTop = 0
        mmWidth = 12700
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'BankName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 178065
        mmTop = 0
        mmWidth = 25135
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'ItemAmount'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0 ;(#,0)'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 529
        mmTop = 0
        mmWidth = 24342
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText19'
        Border.mmPadding = 0
        DataField = 'CustName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5842
        mmLeft = 25665
        mmTop = 0
        mmWidth = 55033
        BandType = 4
        LayerName = Foreground
      end
      object ppLine22: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line22'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 249767
        mmTop = 0
        mmWidth = 529
        BandType = 4
        LayerName = Foreground
      end
      object ppLine33: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line33'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 175948
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 264055
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 234157
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object ppLine43: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line43'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 97102
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine46: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line46'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 201877
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line16'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 0
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppLine30: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line30'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 151342
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'FormCaption'
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
        mmHeight = 5800
        mmLeft = 203994
        mmTop = 0
        mmWidth = 31485
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'CustomerID2'
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
        mmHeight = 6435
        mmLeft = 81492
        mmTop = 0
        mmWidth = 16933
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'ItemNote'
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
        mmHeight = 6085
        mmLeft = 111919
        mmTop = 0
        mmWidth = 40746
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'AccountNumber'
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
        mmLeft = 153459
        mmTop = 0
        mmWidth = 23548
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'FormState'
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
        mmHeight = 5292
        mmLeft = 99219
        mmTop = 0
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 23813
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 79375
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line301'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 109802
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 11642
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        mmHeight = 6085
        mmLeft = 0
        mmTop = 0
        mmWidth = 266171
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        Border.mmPadding = 0
        Caption = #1578#1593#1583#1575#1583' '#1578#1575' '#1575#1610#1606#1580#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 221986
        mmTop = 794
        mmWidth = 13229
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc17: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc17'
        Border.mmPadding = 0
        DataField = 'FormNumber'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 203200
        mmTop = 529
        mmWidth = 17198
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1606#1602#1604' '#1576#1607' '#1589#1601#1581#1607' '#1576#1593#1583':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5292
        mmLeft = 239184
        mmTop = 265
        mmWidth = 25665
        BandType = 8
        LayerName = Foreground
      end
      object ppLine38: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line38'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 234421
        mmTop = 0
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc19: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc19'
        Border.mmPadding = 0
        DataField = 'ItemAmount'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0 ;(#,0)'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 529
        mmTop = 0
        mmWidth = 24077
        BandType = 8
        LayerName = Foreground
      end
      object ppLine36: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line36'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 0
        mmTop = 0
        mmWidth = 265
        BandType = 8
        LayerName = Foreground
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line15'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 23548
        mmTop = 0
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape3'
        mmHeight = 6085
        mmLeft = 0
        mmTop = 0
        mmWidth = 266171
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = #1578#1593#1583#1575#1583#1601#1585#1605#1607#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 223838
        mmTop = 529
        mmWidth = 10319
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'FormNumber'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 204523
        mmTop = 529
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1603#1604':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5376
        mmLeft = 256192
        mmTop = 0
        mmWidth = 9186
        BandType = 7
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 234421
        mmTop = 0
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'ItemAmount'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0 ;(#,0)'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 529
        mmTop = 0
        mmWidth = 24342
        BandType = 7
        LayerName = Foreground
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 0
        mmTop = 0
        mmWidth = 265
        BandType = 7
        LayerName = Foreground
      end
      object ppLine18: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line18'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 23548
        mmTop = 0
        mmWidth = 1852
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
  object qryChk: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT '
      'YearID,'
      'ServerID,'
      'CheckNumber,'
      'BankName,'
      'COUNT(*) cnt'
      'FROM FormItems'
      'WHERE preFormItemID IS NULL'
      'AND LEN(CheckNumber) > 4'
      'GROUP BY'
      'YearID,'
      'ServerID,'
      'CheckNumber,'
      'BankName'
      'HAVING COUNT(*) > 1'
      'ORDER BY YEARID DESC')
    Left = 82
    Top = 230
    object qryChkCheckNumber: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1670#1603
      FieldName = 'CheckNumber'
      FixedChar = True
      Size = 15
    end
    object qryChkBankName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1576#1575#1606#1603
      FieldName = 'BankName'
    end
    object qryChkYearID: TIntegerField
      DisplayLabel = #1587#1575#1604
      FieldName = 'YearID'
    end
  end
  object srcChk: TDataSource
    DataSet = qryChk
    Left = 114
    Top = 303
  end
end

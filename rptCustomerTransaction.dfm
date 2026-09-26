inherited rptCustomerTransactionF: TrptCustomerTransactionF
  Left = 352
  Top = 355
  Caption = #1711#1586#1575#1585#1588' '#1593#1605#1604#1705#1585#1583
  PixelsPerInch = 96
  TextHeight = 13
  object LblLimit: TLabel [0]
    Left = 0
    Top = 53
    Width = 786
    Height = 13
    Align = alTop
    Caption = '...'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitLeft = 774
    ExplicitWidth = 12
  end
  inherited PnlUnderButton: TPanel
    Top = 454
    BevelOuter = bvNone
    ExplicitTop = 454
    inherited BtnReject: TBitBtn
      Left = 2
      Top = 6
      Height = 29
      Margins.Left = 2
      Margins.Right = 2
      ExplicitLeft = 2
      ExplicitTop = 6
      ExplicitHeight = 29
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 551
      Top = 6
      Width = 75
      Height = 29
      Margins.Left = 2
      Margins.Top = 6
      Margins.Right = 2
      Margins.Bottom = 6
      Action = actPrint
      Align = alRight
      Caption = #1670#1575#1662' (F7)'
      TabOrder = 1
    end
    object BitBtn7: TBitBtn
      AlignWithMargins = True
      Left = 630
      Top = 6
      Width = 75
      Height = 29
      Margins.Left = 2
      Margins.Top = 6
      Margins.Right = 2
      Margins.Bottom = 6
      Action = actFormShow
      Align = alRight
      Caption = #1606#1605#1575#1610#1588' '#1601#1585#1605
      TabOrder = 2
    end
    object DBNavigator2: TDBNavigator
      AlignWithMargins = True
      Left = 327
      Top = 3
      Width = 219
      Height = 35
      DataSource = SrcCustTranc
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alClient
      Flat = True
      TabOrder = 3
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 239
      Top = 6
      Width = 83
      Height = 29
      Margins.Left = 2
      Margins.Top = 6
      Margins.Right = 2
      Margins.Bottom = 6
      Action = actSendExel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 4
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 160
      Top = 6
      Width = 75
      Height = 29
      Margins.Left = 2
      Margins.Top = 6
      Margins.Right = 2
      Margins.Bottom = 6
      Action = actSearch_
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00636B
        7300C69C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006394B500218C
        EF002173B500CE9C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF004AB5FF0042A5
        FF00218CEF007B849400CE9C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0052BD
        FF005ABDFF00218CEF002173B500CE9C9400FF00FF00FF00FF00FF00FF00FF00
        FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0031A5
        FF0052BDFF0042A5FF00218CEF0084849400CE9C9400FF00FF00FF00FF00FF00
        FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FFFFFF0052BDFF005ABDFF003184D60052636B00FF00FF009C6B6B00CEA5
        9C00D6B5A500CE9C9C00C6949400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0031A5FF0052BDFF00C6CEDE009C9C9C00AD8C8400E7D6BD00FFFF
        D600FFFFDE00FFFFD600EFDEC600FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00C6ADAD00CEA59400FFE7BD00FFF7CE00FFFF
        D600FFFFD600FFFFDE00FFFFE700FFFFFF00C6A5A500FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00BD8C8C00EFDEB500F7D6AD00FFF7CE00FFFF
        D600FFFFDE00FFFFEF00FFFFF700FFFFFF00F7EFDE00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00E7CEAD00FFEFBD00F7CE9C00FFEFC600FFFF
        D600FFFFDE00FFFFF700FFFFF700FFFFDE00FFFFDE00C6949400FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00EFD6B500FFE7B500F7C68C00F7DEB500FFFF
        D600FFFFDE00FFFFEF00FFFFEF00FFFFDE00FFFFDE00BD9C8C00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00E7CEAD00FFEFBD00EFBD8400F7C69400FFEF
        C600FFFFD600FFFFD600FFFFD600FFFFD600FFFFDE00C6949400FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00D6ADA500FFEFBD00F7DEAD00F7CE9C00F7D6
        A500F7E7BD00FFFFD600FFFFD600FFFFD600FFFFD600FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00C69C8C00FFFFFF00FFFFFF00F7C6
        9400EFBD8400F7C69400F7D6AD00FFEFC600BD9C8C00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00EFEFE700FFFFEF00FFE7
        B500F7DEAD00FFE7B500FFEFBD00C69C9400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C69C
        8C00CEA59C00C69C9400FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 5
    end
    object BitBtn5: TBitBtn
      AlignWithMargins = True
      Left = 81
      Top = 6
      Width = 75
      Height = 29
      Margins.Left = 2
      Margins.Top = 6
      Margins.Right = 2
      Margins.Bottom = 6
      Action = actSort
      Align = alLeft
      Caption = #1576#1607' '#1578#1585#1578#1610#1576
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006A00
        00006A0000006A000000FF00FF006A0000006A0000006A000000FFFFFF00FF00
        FF00FF00FF00FF00FF0000580300FF00FF00FF00FF00FF00FF00FFFFFF006A6A
        6A006A000000FF00FF00FF00FF00FF00FF00980000006A6A6A00FF00FF00FF00
        FF00FF00FF00005803006AFF6A0000580300FF00FF00FF00FF00FF00FF00FF00
        FF006A6A6A006A0000006A0000006A0000006A000000FF00FF00FF00FF00FF00
        FF00FF00FF006AFF6A006AB650000084000000580300FF00FF00FFFFFF00FF00
        FF00FF00FF006A000000FF00FF00980000006A000000FF00FF00FFFFFF00FF00
        FF00FF00FF006AFF6A006AB650000084000000580300FF00FF00FFFFFF00FF00
        FF00FF00FF00980000006A0000006A000000FF00FF00FF00FF00FF00FF000058
        0300005803000058030000580300005803000058030000580300FF00FF00FF00
        FF00FF00FF006A6A6A006A0000006A6A6A00FF00FF00FF00FF00FFFFFF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0098000000FF00FF00FF00FF00FF00FF00FFFFFF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FFFFFF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF000000
        6A0000006A0000006A0000006A0000006A0000006A00FF00FF00FFFFFF00FF00
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
      TabOrder = 6
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 709
      Top = 6
      Width = 75
      Height = 29
      Margins.Left = 2
      Margins.Top = 6
      Margins.Right = 2
      Margins.Bottom = 6
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 7
    end
  end
  inherited Panel2: TPanel
    BevelOuter = bvNone
    inherited lblCaption: TLabel
      Left = 679
      Top = 15
      Height = 35
      ExplicitLeft = 679
      ExplicitTop = 15
    end
    inherited lblBaseDate: TLabel
      Left = 369
      Top = 19
      ExplicitLeft = 369
      ExplicitTop = 19
    end
    object LblPerson1: TLabel
      Left = 300
      Top = 10
      Width = 51
      Height = 13
      Alignment = taRightJustify
      Caption = #1603#1583' '#1605#1588#1578#1585#1610
      FocusControl = EdtPersonID1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 189
      Top = 5
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = SpeedButton1Click
    end
    object DBTextPersonID1: TDBText
      Left = 8
      Top = 8
      Width = 180
      Height = 17
      Color = 13948116
      DataField = 'CustName'
      DataSource = SrcCustomers
      ParentColor = False
      Transparent = True
    end
    object EdtPersonID1: TDBEdit
      Left = 214
      Top = 6
      Width = 83
      Height = 21
      DataField = 'CustID'
      DataSource = SrcCustomers
      TabOrder = 0
      OnKeyDown = EdtPersonID1KeyDown
    end
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 27
      Width = 180
      Height = 18
      DataSource = SrcCustomers
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Flat = True
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 1
    end
  end
  inherited Panel3: TPanel
    Top = 105
    Height = 349
    BevelOuter = bvNone
    ExplicitTop = 105
    ExplicitHeight = 349
    object DBGrid1: TCedarDbgrid
      Tag = 111
      Left = 1
      Top = 1
      Width = 784
      Height = 347
      Align = alClient
      Color = clCream
      DataSource = SrcCustTranc
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
      FooterParams.Font.Height = -11
      FooterParams.Font.Name = 'Tahoma'
      FooterParams.Font.Style = [fsBold]
      FooterParams.ParentFont = False
      FooterParams.VertLines = False
      GridLineParams.VertEmptySpaceStyle = dessNonEh
      HorzScrollBar.ExtraPanel.Visible = True
      IndicatorTitle.ShowDropDownSign = True
      IndicatorTitle.TitleButton = True
      OddRowColor = clMenuBar
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ParentFont = False
      RowHeight = 18
      SearchPanel.Enabled = True
      SearchPanel.FilterOnTyping = True
      SortLocal = True
      TabOrder = 0
      OnDblClick = DBGrid1DblClick
      OnKeyPress = DBGrid1KeyPress
      ActiveSearchPanel = False
      SelectedSum = True
      SelectFooterIndex = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ReciptNumber'
          Footers = <>
          Title.Alignment = taCenter
          Width = 59
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ReciptDate'
          Footers = <>
          Title.Alignment = taCenter
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DefaultDate'
          Footers = <>
          Width = 60
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ReciptCaption'
          Footers = <>
          Title.Alignment = taCenter
          Width = 59
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'SellsEmporiumName'
          Footers = <>
          Width = 68
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PersonID2'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CustName2'
          Footers = <>
          Width = 66
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'SecondTypeName'
          Footers = <>
          Width = 79
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ReciptNote'
          Footers = <>
          Title.Alignment = taCenter
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TruckNumber'
          Footers = <>
          Width = 72
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CurrenciesName'
          Footers = <>
          Width = 21
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ArzRate'
          Footers = <>
          Width = 36
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Arzbed'
          Footers = <>
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Arzbes'
          Footers = <>
          Width = 61
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'calcuArzBalance'
          Footers = <>
          Width = 48
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'bed'
          Footers = <>
          Title.Alignment = taCenter
          Width = 48
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'bes'
          Footers = <>
          Title.Alignment = taCenter
          Width = 57
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'calcuBalance'
          Footers = <>
          Width = 29
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'AnalizeType'
          Footers = <>
          Width = 23
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'RelatedID'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'AidInfoNo'
          Footers = <>
          Width = 72
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'AidInfoDate'
          Footers = <>
          Width = 64
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object pnlRelated: TPanel [4]
    Left = 0
    Top = 66
    Width = 786
    Height = 39
    Align = alTop
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 3
    Visible = False
    object SpeedButton2: TSpeedButton
      Left = 243
      Top = 6
      Width = 75
      Height = 25
      AllowAllUp = True
      BiDiMode = bdRightToLeft
      GroupIndex = 1
      Caption = #1575#1602#1604#1575#1605' '#1605#1585#1578#1576#1591
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ParentBiDiMode = False
      ShowHint = False
      Transparent = False
      OnClick = SpeedButton2Click
    end
    object BitBtn10: TBitBtn
      Left = 86
      Top = 6
      Width = 75
      Height = 25
      Caption = #1575#1585#1578#1576#1575#1591
      TabOrder = 0
      OnClick = BitBtn10Click
    end
    object btnDelRelated: TBitBtn
      Left = 8
      Top = 6
      Width = 75
      Height = 25
      Action = actDelRelated
      Caption = #1581#1584#1601' '#1575#1585#1578#1576#1575#1591
      TabOrder = 1
    end
    object BitBtn12: TBitBtn
      Left = 164
      Top = 6
      Width = 75
      Height = 25
      Caption = #1570#1606#1575#1604#1610#1586' '#1605#1576#1604#1594
      TabOrder = 2
      OnClick = BitBtn12Click
    end
    object RadioGroup1: TRadioGroup
      Left = 453
      Top = 0
      Width = 333
      Height = 39
      Align = alRight
      Caption = #1578#1591#1576#1610#1602' '#1581#1587#1575#1576
      Columns = 3
      ItemIndex = 2
      Items.Strings = (
        #1662#1575#1587' '#1588#1583#1607
        #1662#1575#1587' '#1606#1588#1583#1607
        #1607#1605#1607)
      TabOrder = 3
      OnClick = RadioGroup1Click
    end
  end
  object pnl1: TPanel [5]
    Left = 0
    Top = 495
    Width = 786
    Height = 22
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 4
    object chk1: TCheckBox
      AlignWithMargins = True
      Left = 657
      Top = 3
      Width = 123
      Height = 16
      Margins.Right = 6
      Align = alRight
      Caption = #1581#1584#1601' '#1587#1591#1585#1607#1575#1740' '#1589#1601#1585
      TabOrder = 0
      OnClick = chk1Click
    end
    object stat1: TStatusBar
      Left = 0
      Top = 0
      Width = 654
      Height = 22
      CustomHint = DmF.BalloonHint1
      Align = alClient
      BiDiMode = bdRightToLeft
      Panels = <
        item
          Width = 300
        end
        item
          Width = 300
        end
        item
          Width = 300
        end
        item
          Width = 50
        end>
      ParentBiDiMode = False
    end
  end
  inherited ActionList: TActionList
    Left = 536
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662' (F7)'
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actSendExel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendExelExecute
    end
    object actFormShow: TAction
      Caption = #1606#1605#1575#1610#1588' '#1601#1585#1605
      OnExecute = actFormShowExecute
    end
    object actSort: TAction
      Caption = #1576#1607' '#1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actReleted: TAction
      Caption = #1570#1606#1575#1604#1610#1586' '#1605#1575#1606#1583#1607' '#1581#1587#1575#1576
      OnExecute = actReletedExecute
    end
    object actDoReleted: TAction
      Caption = #1575#1585#1578#1576#1575#1591
    end
    object actDelRelated: TAction
      Caption = #1581#1584#1601' '#1575#1585#1578#1576#1575#1591
      OnExecute = actDelRelatedExecute
    end
    object actCustomers2F: TAction
      Caption = #1605#1593#1585#1601#1610' '#1605#1588#1578#1585#1610#1575#1606
      OnExecute = actCustomers2FExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 624
    Top = 9
  end
  object qryCustTranc: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeOpen = qryCustTrancBeforeOpen
    AfterOpen = qryCustTrancAfterOpen
    AfterScroll = qryCustTrancAfterScroll
    CommandTimeout = 60
    Parameters = <
      item
        Name = 'PersonIDFrom'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PersonIDTo'
        DataType = ftString
        Size = 7
        Value = '9999999'
      end
      item
        Name = 'DateFrom'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'DateTo'
        DataType = ftString
        Size = 10
        Value = '9999/99/99'
      end
      item
        Name = 'DateFromRemain'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearIDFrom'
        DataType = ftString
        Size = 4
        Value = '1396'
      end
      item
        Name = 'YearIDTo'
        DataType = ftString
        Size = 4
        Value = '1396'
      end
      item
        Name = 'SellsMethodFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'SellsMethodTo'
        DataType = ftWideString
        Size = 4
        Value = '9999'
      end
      item
        Name = 'SellsEmporiumFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'SellsEmporiumTo'
        DataType = ftWideString
        Size = 4
        Value = '9999'
      end
      item
        Name = 'ArzTypeIDFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ArzTypeIDTo'
        DataType = ftWideString
        Size = 6
        Value = '999999'
      end
      item
        Name = 'PersonID2From'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PersonID2To'
        DataType = ftWideString
        Size = 8
        Value = '99999999'
      end>
    SQL.Strings = (
      
        'SELECT RelatedID, AnalizeType, RelaID  ,ServerID, YearID, Custom' +
        'erID1 AS PersonID1, FormID AS ReciptID, FormType AS reciptType, ' +
        'FormNumber AS ReciptNumber, FormDate AS ReciptDate,'
      
        '                      FormCaption AS ReciptCaption, FomNote AS R' +
        'eciptNote, bed, bes, kind, bed - bes AS balance, bes AS calcuBal' +
        'ance,'
      
        '                      CustIDForShow AS StoreCustIDForShow,Defaul' +
        'tDate  ,  FormItemID'
      ',RelatedKind'
      
        '            ,ArzRate ,Arzbed , Arzbes ,Arzbed- Arzbes AS Arzbala' +
        'nce, Currencies.CurrenciesName'
      
        '            ,Name AS SecondTypeName,TruckNumber , CustomerID2 AS' +
        ' PersonID2,C2.CustName as CustName2'
      ', AidInfoNo, AidInfoDate'
      ''
      ''
      'FROM         dbo.AllAccount('
      
        '10 ,-1 ,-1 ,-1 , :PersonIDFrom  , :PersonIDTo   , :DateFrom , :D' +
        'ateTo ,'
      
        ' :DateFromRemain   , :YearIDFrom   , :YearIDTo   , :SellsMethodF' +
        'rom , :SellsMethodTo , :SellsEmporiumFrom ,  :SellsEmporiumTo , ' +
        'DEFAULT  ) AS AllAcc'
      ''
      
        'LEFT OUTER JOIN Currencies  ON AllAcc.ArzTypeID = Currencies.Cur' +
        'renciesID  LEFT JOIN Customers C2 ON C2.CUSTID = CustomerID2'
      
        'where  ( ISNULL(AllAcc.ArzTypeID,0) BetWeen :ArzTypeIDFrom AND :' +
        'ArzTypeIDTo)'
      'and  ( CustomerID2  BetWeen :PersonID2From AND :PersonID2To)')
    Left = 135
    Top = 212
    object qryCustTrancPersonID1: TIntegerField
      DisplayLabel = #1603#1583' '#1605#1588#1578#1585#1610
      FieldName = 'PersonID1'
    end
    object qryCustTrancPersonID2: TIntegerField
      Tag = 3
      DisplayLabel = #1705#1583#1605#1588#1578#1585#1740'/'#1576#1575#1606#1705
      FieldName = 'PersonID2'
      ReadOnly = True
    end
    object qryCustTrancCustName2: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1578#1585#1740'/'#1576#1575#1606#1705
      FieldName = 'CustName2'
      Size = 150
    end
    object qryCustTrancReciptID: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1606#1583#1607
      FieldName = 'ReciptID'
    end
    object qryCustTrancReciptNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'ReciptNumber'
    end
    object qryCustTrancReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryCustTrancReciptCaption: TStringField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
      FieldName = 'ReciptCaption'
      Size = 70
    end
    object qryCustTrancReciptNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'ReciptNote'
      Size = 255
    end
    object qryCustTrancCurrenciesName: TStringField
      Tag = 3
      DisplayLabel = #1575#1585#1586
      FieldName = 'CurrenciesName'
      Size = 250
    end
    object qryCustTrancArzRate: TFloatField
      Tag = 3
      DisplayLabel = #1606#1585#1582' '#1575#1585#1586
      FieldName = 'ArzRate'
      ReadOnly = True
    end
    object qryCustTrancArzbed: TFloatField
      Tag = 3
      DisplayLabel = #1576#1583#1607#1603#1575#1585' '#1575#1585#1586
      FieldName = 'Arzbed'
      ReadOnly = True
    end
    object qryCustTrancArzbes: TFloatField
      Tag = 3
      DisplayLabel = #1576#1587#1578#1575#1606#1705#1575#1585'  '#1575#1585#1586
      FieldName = 'Arzbes'
      ReadOnly = True
    end
    object qryCustTrancArzbalance: TFloatField
      Tag = 3
      DisplayLabel = #1576#1583'.'#1576#1587'.'#1575#1585#1586
      FieldName = 'Arzbalance'
      ReadOnly = True
    end
    object qryCustTranccalcuArzBalance: TFMTBCDField
      Tag = 3
      DisplayLabel = #1605#1575#1606#1583#1607'  '#1575#1585#1586
      FieldName = 'calcuArzBalance'
      Precision = 20
      Size = 4
    end
    object qryCustTrancbed: TBCDField
      Tag = 3
      DisplayLabel = #1576#1583#1607#1603#1575#1585
      FieldName = 'bed'
      currency = True
      Precision = 19
    end
    object qryCustTrancbes: TBCDField
      Tag = 3
      DisplayLabel = #1576#1587#1578#1575#1606#1603#1575#1585
      FieldName = 'bes'
      currency = True
      Precision = 19
    end
    object qryCustTranckind: TIntegerField
      DisplayLabel = #1606#1608#1593
      FieldName = 'kind'
    end
    object qryCustTrancBalance: TBCDField
      DisplayLabel = #1605#1575#1606#1583#1607
      FieldName = 'Balance'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryCustTrancreciptType: TIntegerField
      FieldName = 'reciptType'
    end
    object qryCustTranccalcuBalance: TBCDField
      Tag = 3
      DisplayLabel = #1605#1575#1606#1583#1607' '
      FieldName = 'calcuBalance'
      currency = True
      Precision = 19
    end
    object qryCustTrancStoreCustIDForShow: TIntegerField
      FieldName = 'StoreCustIDForShow'
    end
    object qryCustTrancServerID: TIntegerField
      FieldName = 'ServerID'
      ReadOnly = True
    end
    object qryCustTrancYearID: TIntegerField
      FieldName = 'YearID'
      ReadOnly = True
    end
    object qryCustTrancAnalizeType: TIntegerField
      DisplayLabel = #1606#1608#1593' '
      FieldName = 'AnalizeType'
      ReadOnly = True
      OnGetText = qryCustTrancAnalizeTypeGetText
    end
    object qryCustTrancRelaID: TIntegerField
      FieldName = 'RelaID'
      ReadOnly = True
    end
    object qryCustTrancRelatedID: TIntegerField
      DisplayLabel = #1593#1591#1601' '#1575#1585#1578#1576#1575#1591
      FieldName = 'RelatedID'
      ReadOnly = True
    end
    object qryCustTrancDefaultDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1580#1575#1606#1576#1610
      FieldName = 'DefaultDate'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object qryCustTrancFormItemID: TIntegerField
      FieldName = 'FormItemID'
      ReadOnly = True
    end
    object qryCustTrancRelatedKind: TIntegerField
      FieldName = 'RelatedKind'
      ReadOnly = True
    end
    object qryCustTrancSecondTypeName: TStringField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1575#1591#1600#1604#1575#1593#1600#1575#1578' '#1601#1585#1605
      FieldName = 'SecondTypeName'
      ReadOnly = True
      Size = 50
    end
    object qryCustTrancTruckNumber: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1576#1575#1585#1606#1575#1605#1607
      FieldName = 'TruckNumber'
      Size = 100
    end
    object qryCustTrancSellsEmporiumName: TWideStringField
      Tag = 3
      DisplayLabel = #1605#1585#1705#1586' '#1601#1585#1608#1588
      FieldName = 'SellsEmporiumName'
      Size = 100
    end
    object qryCustTrancAidInfoNo: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1705#1605#1705#1740
      FieldName = 'AidInfoNo'
      ReadOnly = True
      Size = 40
    end
    object qryCustTrancAidInfoDate: TStringField
      DisplayLabel = #1578#1575#1585#1740#1582' '#1705#1605#1705#1740
      FieldName = 'AidInfoDate'
      ReadOnly = True
      Size = 10
    end
  end
  object SrcCustTranc: TDataSource
    DataSet = qryCustTranc
    Left = 400
    Top = 237
  end
  object qryCustomers: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryCustomersAfterScroll
    Parameters = <>
    Left = 464
    Top = 8
    object qryCustomersCustID: TIntegerField
      FieldName = 'CustID'
    end
    object qryCustomersCustName: TStringField
      FieldName = 'CustName'
      Size = 120
    end
    object qryCustomersAccountNumber: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
      FieldName = 'AccountNumber'
      FixedChar = True
      Size = 25
    end
  end
  object SrcCustomers: TDataSource
    DataSet = qryCustomers
    Left = 296
    Top = 32
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = SrcCustomers
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 524
    Top = 204
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'CustID'
      FieldName = 'CustID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'CustName'
      FieldName = 'CustName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
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
    Template.FileName = 'D:\Projects\Fara\BSell\Exe\Report\rptCustomerTransaction1.rtm'
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
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
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
    PreviewFormSettings.SinglePageOnly = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
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
    Left = 512
    Top = 276
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 14817
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        OnGetText = ppLabel1GetText
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
        mmLeft = 77788
        mmTop = 0
        mmWidth = 47625
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1711#1586#1575#1585#1588' '#1593#1605#1604#1603#1585#1583' '#1605#1588#1578#1585#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7144
        mmLeft = 84402
        mmTop = 5292
        mmWidth = 34396
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 0
        mmTop = 12435
        mmWidth = 203300
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        OnGetText = ppLabel3GetText
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
        mmLeft = 9525
        mmTop = 7144
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable1'
        OnGetText = ppSystemVariable1GetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 9525
        mmTop = 1852
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable2'
        OnGetText = ppSystemVariable1GetText
        Border.mmPadding = 0
        VarType = vtTime
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 39688
        mmTop = 1852
        mmWidth = 18373
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5027
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
        mmTop = 0
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
          object ppTitleBand2: TppTitleBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 6615
            mmPrintPosition = 0
            object ppShape8: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape8'
              mmHeight = 6615
              mmLeft = 0
              mmTop = 0
              mmWidth = 203200
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel4: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label4'
              Border.mmPadding = 0
              Caption = #1603#1583#1608' '#1606#1575#1605' '#1605#1588#1578#1585#1610':'#8207
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Yagut'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 5556
              mmLeft = 177007
              mmTop = 529
              mmWidth = 20108
              BandType = 1
              LayerName = Foreground
            end
            object ppDBText3: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText8'
              Border.mmPadding = 0
              DataField = 'CustID'
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
              mmHeight = 5556
              mmLeft = 159809
              mmTop = 529
              mmWidth = 17198
              BandType = 1
              LayerName = Foreground
            end
            object ppDBText4: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText9'
              Border.mmPadding = 0
              DataField = 'CustName'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Yagut'
              Font.Size = 10
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 5556
              mmLeft = 96044
              mmTop = 529
              mmWidth = 63765
              BandType = 1
              LayerName = Foreground
            end
          end
          object ppDetailBand3: TppDetailBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 6085
            mmPrintPosition = 0
            object ppLine22: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line1'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6000
              mmLeft = 186532
              mmTop = 0
              mmWidth = 529
              BandType = 4
              LayerName = Foreground
            end
            object ppLine23: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line23'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6000
              mmLeft = 143404
              mmTop = 0
              mmWidth = 2117
              BandType = 4
              LayerName = Foreground
            end
            object ppLine24: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line2'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6000
              mmLeft = 52123
              mmTop = 0
              mmWidth = 1323
              BandType = 4
              LayerName = Foreground
            end
            object ppLine25: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line3'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6000
              mmLeft = 25400
              mmTop = 0
              mmWidth = 1323
              BandType = 4
              LayerName = Foreground
            end
            object ppLine33: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line4'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6000
              mmLeft = 78317
              mmTop = 0
              mmWidth = 1852
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText7: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText1'
              Border.mmPadding = 0
              DataField = 'bes'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6000
              mmLeft = 27517
              mmTop = 0
              mmWidth = 24606
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText6: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText2'
              Border.mmPadding = 0
              DataField = 'bed'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6000
              mmLeft = 54240
              mmTop = 0
              mmWidth = 24606
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText5: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText3'
              Border.mmPadding = 0
              DataField = 'ReciptNote'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6000
              mmLeft = 80963
              mmTop = 0
              mmWidth = 63236
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText2: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText4'
              Border.mmPadding = 0
              DataField = 'ReciptCaption'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6000
              mmLeft = 146315
              mmTop = 0
              mmWidth = 23548
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText1: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText5'
              Border.mmPadding = 0
              DataField = 'ReciptNumber'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6000
              mmLeft = 187855
              mmTop = 0
              mmWidth = 14552
              BandType = 4
              LayerName = Foreground
            end
            object ppLine3: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line5'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6000
              mmLeft = 0
              mmTop = 0
              mmWidth = 1323
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText9: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText6'
              Border.mmPadding = 0
              DataField = 'ReciptDate'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6000
              mmLeft = 171980
              mmTop = 0
              mmWidth = 14552
              BandType = 4
              LayerName = Foreground
            end
            object ppLine10: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line101'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6000
              mmLeft = 169069
              mmTop = 0
              mmWidth = 2117
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText8: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText7'
              Border.mmPadding = 0
              DataField = 'calcuBalance'
              DataPipeline = ppDBPipeline2
              DisplayFormat = #1576#1583'#,0 ;('#1576#1587'#,0)'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              ResetGroup = ppGroup2
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6000
              mmLeft = 794
              mmTop = 0
              mmWidth = 24606
              BandType = 4
              LayerName = Foreground
            end
            object ppLine2: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line6'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 201084
              mmTop = 0
              mmWidth = 2117
              BandType = 4
              LayerName = Foreground
            end
          end
          object ppSummaryBand1: TppSummaryBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 6085
            mmPrintPosition = 0
            object ppShape1: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape1'
              mmHeight = 6085
              mmLeft = 0
              mmTop = 0
              mmWidth = 203200
              BandType = 7
              LayerName = Foreground
            end
            object ppLine27: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line7'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 51594
              mmTop = 0
              mmWidth = 1852
              BandType = 7
              LayerName = Foreground
            end
            object ppLine28: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line28'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 24871
              mmTop = 0
              mmWidth = 1852
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc1: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc1'
              Border.mmPadding = 0
              DataField = 'Balance'
              DataPipeline = ppDBPipeline2
              DisplayFormat = #1576#1583'#,0 ;('#1576#1587'#,0)'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6085
              mmLeft = 794
              mmTop = 0
              mmWidth = 24342
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc2: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc2'
              Border.mmPadding = 0
              DataField = 'bes'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6085
              mmLeft = 27517
              mmTop = 0
              mmWidth = 24342
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc3: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc3'
              Border.mmPadding = 0
              DataField = 'bed'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6085
              mmLeft = 54240
              mmTop = 0
              mmWidth = 24606
              BandType = 7
              LayerName = Foreground
            end
            object ppLine29: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line8'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 78317
              mmTop = 0
              mmWidth = 1852
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel12: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label12'
              Border.mmPadding = 0
              Caption = #1578#1593#1583#1575#1583' '#1585#1603#1608#1585#1583':'#8207
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 4763
              mmLeft = 186796
              mmTop = 529
              mmWidth = 14288
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc4: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc201'
              Border.mmPadding = 0
              DataField = 'ReciptNumber'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DBCalcType = dcCount
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 5027
              mmLeft = 168805
              mmTop = 529
              mmWidth = 17198
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel13: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label1'
              Border.mmPadding = 0
              Caption = #1580#1605#1593' '#1603#1604':'#8207
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
              mmLeft = 81227
              mmTop = 0
              mmWidth = 10319
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
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 9525
      mmPrintPosition = 0
      object ppLine21: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line4'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 0
        mmTop = 0
        mmWidth = 203300
        BandType = 8
        LayerName = Foreground1
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'CustID'
      DataPipeline = ppDBPipeline1
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      ResetPageNo = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 14552
        mmPrintPosition = 0
        object ppShape2: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape2'
          mmHeight = 7408
          mmLeft = 0
          mmTop = 7144
          mmWidth = 203200
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel6: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label6'
          Border.mmPadding = 0
          Caption = #1576#1587#1578#1575#1606#1603#1575#1585
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
          mmLeft = 34396
          mmTop = 7673
          mmWidth = 11377
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel7: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label7'
          Border.mmPadding = 0
          Caption = #1576#1583#1607#1603#1575#1585
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
          mmLeft = 62442
          mmTop = 7673
          mmWidth = 8467
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel8: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label8'
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
          mmHeight = 6085
          mmLeft = 106098
          mmTop = 7673
          mmWidth = 13229
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel9: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label9'
          Border.mmPadding = 0
          Caption = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
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
          mmLeft = 151077
          mmTop = 7673
          mmWidth = 15875
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel10: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label10'
          Border.mmPadding = 0
          Caption = #1605#1575#1606#1583#1607
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
          mmLeft = 9790
          mmTop = 7673
          mmWidth = 6615
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel5: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label5'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1588#1605#1575#1585#1607' '#1601#1585#1605
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
          mmLeft = 187325
          mmTop = 7673
          mmWidth = 15081
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine6: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line6'
          Border.mmPadding = 0
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 7408
          mmLeft = 78581
          mmTop = 7144
          mmWidth = 1588
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine8: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line8'
          Border.mmPadding = 0
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 6879
          mmLeft = 51858
          mmTop = 7408
          mmWidth = 1588
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine9: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line9'
          Border.mmPadding = 0
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 6879
          mmLeft = 25135
          mmTop = 7408
          mmWidth = 1588
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel16: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label16'
          OnGetText = ppLabel16GetText
          Border.mmPadding = 0
          Caption = #1575#1586' '#1578#1575#1585#1610#1582
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Zar'
          Font.Size = 9
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 5292
          mmLeft = 9260
          mmTop = 794
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel17: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label17'
          Border.mmPadding = 0
          Caption = #1578#1575#1585#1610#1582
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
          mmLeft = 175684
          mmTop = 7673
          mmWidth = 7408
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine7: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line7'
          Border.mmPadding = 0
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 6879
          mmLeft = 185473
          mmTop = 7408
          mmWidth = 1588
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine11: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line11'
          Border.mmPadding = 0
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 6879
          mmLeft = 169598
          mmTop = 7408
          mmWidth = 1588
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine12: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line12'
          Border.mmPadding = 0
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 6879
          mmLeft = 143934
          mmTop = 7408
          mmWidth = 1588
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Visible = False
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 11113
        mmPrintPosition = 0
        object ppShape7: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape7'
          mmHeight = 6085
          mmLeft = 0
          mmTop = 0
          mmWidth = 203200
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine17: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line17'
          Border.mmPadding = 0
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 6085
          mmLeft = 51858
          mmTop = 0
          mmWidth = 1852
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine19: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line19'
          Border.mmPadding = 0
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 6085
          mmLeft = 25135
          mmTop = 0
          mmWidth = 1852
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc17: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBCalc17'
          Border.mmPadding = 0
          DataField = 'Balance'
          DataPipeline = ppDBPipeline2
          DisplayFormat = #1576#1583'#,0 ;('#1576#1587'#,0)'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 6085
          mmLeft = 529
          mmTop = 0
          mmWidth = 25929
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc18: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBCalc18'
          Border.mmPadding = 0
          DataField = 'bes'
          DataPipeline = ppDBPipeline2
          DisplayFormat = '#,0'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 6085
          mmLeft = 27252
          mmTop = 0
          mmWidth = 25929
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc19: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBCalc19'
          Border.mmPadding = 0
          DataField = 'bed'
          DataPipeline = ppDBPipeline2
          DisplayFormat = '#,0'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 6085
          mmLeft = 53975
          mmTop = 0
          mmWidth = 25929
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine43: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line43'
          Border.mmPadding = 0
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 6085
          mmLeft = 78581
          mmTop = 0
          mmWidth = 1852
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel23: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label23'
          Border.mmPadding = 0
          Caption = #1578#1593#1583#1575#1583' '#1585#1603#1608#1585#1583':'#8207
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Zar'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4763
          mmLeft = 187590
          mmTop = 0
          mmWidth = 14288
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc20: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBCalc20'
          Border.mmPadding = 0
          DataField = 'ReciptNumber'
          DataPipeline = ppDBPipeline2
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 5027
          mmLeft = 169598
          mmTop = 0
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel33: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label33'
          Border.mmPadding = 0
          Caption = #1580#1605#1593' '#1603#1604':'#8207
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
          mmLeft = 80698
          mmTop = 0
          mmWidth = 10319
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
  object ppDBPipeline2: TppDBPipeline
    DataSource = SrcCustTranc
    OpenDataSource = False
    UserName = 'DBPipeline2'
    Left = 640
    Top = 212
    MasterDataPipelineName = 'ppDBPipeline1'
  end
  object PopMenu: TPopupMenu
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    Left = 251
    Top = 232
    object N1: TMenuItem
      Caption = #1670#1575#1662' '#1576#1583#1608#1606' '#1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
      object AllC_l_i_c_k_: TMenuItem
        Caption = #1605#1588#1578#1585#1610' '#1580#1575#1585#1610
        Hint = '2'
        OnClick = AllC_l_i_c_k_Click
      end
      object N7: TMenuItem
        Tag = 1
        Caption = #1607#1605#1607' '#1605#1588#1578#1585#1610#1575#1606
        Hint = '2'
        OnClick = AllC_l_i_c_k_Click
      end
    end
    object DetailNote: TMenuItem
      Caption = #1670#1575#1662' '#1576#1575' '#1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
      object N6: TMenuItem
        Caption = #1605#1588#1578#1585#1610' '#1580#1575#1585#1610
        Hint = '1'
        OnClick = AllC_l_i_c_k_Click
      end
      object N8: TMenuItem
        Tag = 1
        Caption = #1607#1605#1607' '#1605#1588#1578#1585#1610#1575#1606
        Hint = '1'
        OnClick = AllC_l_i_c_k_Click
      end
    end
  end
  object ppDBPipelineSumGrid1: TppDBPipeline
    UserName = 'DBPipelineSumGrid1'
    Left = 384
    Top = 336
  end
end

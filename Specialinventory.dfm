inherited SpecialinventoryF: TSpecialinventoryF
  Left = 332
  Top = 223
  Caption = #1711#1586#1575#1585#1588' '#1605#1608#1580#1608#1583#1610' - '#1585#1608#1588' '#1588#1606#1575#1587#1575#1610#1610' '#1608#1610#1688#1607' '
  ClientWidth = 862
  ExplicitWidth = 870
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Width = 862
    ExplicitWidth = 862
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 783
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
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
    object BitBtn3: TBitBtn
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
    object BitBtn4: TBitBtn
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
    object BitBtn5: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alLeft
      Caption = #1587#1575#1610#1585'...'
      TabOrder = 5
      OnClick = BitBtn5Click
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 616
      Top = 7
      Width = 80
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actShowpreReciptItemIDs
      Align = alRight
      Caption = #1605#1588#1575#1607#1583#1607' '#1711#1585#1583#1588
      TabOrder = 6
    end
    object btnRptCardex2: TBitBtn
      AlignWithMargins = True
      Left = 459
      Top = 7
      Width = 89
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actRptCardex2
      Align = alRight
      Caption = #1603#1575#1585#1583#1603#1587#8207#1588#1606#1575#1587#1575#1610#1610
      TabOrder = 7
    end
    object BitBtn8: TBitBtn
      AlignWithMargins = True
      Left = 378
      Top = 7
      Width = 75
      Height = 27
      Hint = #1576#1575' '#1662#1575#1574#1610#1606' '#1606#1711#1607' '#1583#1575#1588#1578#1606' '#1603#1604#1610#1583' '#1603#1606#1578#1585#1604' '#1670#1606#1583' '#1575#1606#1578#1582#1575#1576' '#1583#1575#1588#1578#1607' '#1576#1575#1588#1610#1583#8207
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alRight
      Caption = #1589#1583#1608#1585'...'
      TabOrder = 8
      OnClick = BitBtn8Click
    end
    object BitBtn9: TBitBtn
      AlignWithMargins = True
      Left = 328
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actCalc
      Align = alLeft
      Caption = #1605#1602#1583#1575#1585'/'#1608#1586#1606
      TabOrder = 9
    end
    object BitBtn10: TBitBtn
      AlignWithMargins = True
      Left = 554
      Top = 7
      Width = 56
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actRptCardex
      Align = alRight
      Caption = #1603#1575#1585#1583#1603#1587
      TabOrder = 10
    end
  end
  inherited Panel2: TPanel
    Width = 862
    Height = 50
    BevelOuter = bvNone
    ExplicitWidth = 862
    ExplicitHeight = 50
    DesignSize = (
      862
      50)
    inherited ImgTemplate: TImage
      Left = 839
      ExplicitLeft = 843
    end
    inherited lblCaption: TLabel
      Left = 755
      Top = 15
      Height = 32
      ExplicitLeft = 755
      ExplicitTop = 15
    end
    inherited lblBaseDate: TLabel
      Left = 343
      ExplicitLeft = 343
    end
  end
  inherited Panel3: TPanel
    Top = 67
    Width = 862
    Height = 409
    BevelInner = bvNone
    BevelOuter = bvNone
    ExplicitTop = 67
    ExplicitWidth = 862
    ExplicitHeight = 410
    object DBGrid1: TCedarDbgrid
      Left = 0
      Top = 0
      Width = 862
      Height = 410
      Align = alClient
      Color = clCream
      DataSource = srcRecalSpecial
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
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ParentFont = False
      RowHeight = 21
      SearchPanel.Enabled = True
      SearchPanel.FilterOnTyping = True
      SortLocal = True
      TabOrder = 0
      OnDblClick = actRelease11Execute
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnKeyPress = DBGrid1KeyPress
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
          FieldName = 'ControlCode'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'c_StuffName'
          Footers = <>
          Width = 38
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'c_StuffTecInfo'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'StuffAlloy'
          Footers = <>
          Width = 27
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'StuffDiameter'
          Footers = <>
          Width = 40
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'StuffSize'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Entity'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'WeightOnEntity'
          Footers = <>
          Width = 42
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Weight'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'UnitSellPrice'
          Footers = <>
          Width = 54
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ItemNote'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'c_StoreName'
          Footers = <>
          Width = 36
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PersonID1'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CustName'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ReciptCaption'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ReciptDate'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ReciptNumber'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'UnitName'
          Footers = <>
          Width = 26
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'StuffGrade'
          Footers = <>
          Width = 44
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'StoreID'
          Footers = <>
          Width = 34
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Price'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CountNo'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Country'
          Footers = <>
          Width = 40
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'SelerName'
          Footers = <>
          Width = 57
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DossierName'
          Footers = <>
          Width = 38
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'FactoryName'
          Footers = <>
          Width = 43
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object pnlLblLimitPlace: TPanel [3]
    Left = 0
    Top = 50
    Width = 862
    Height = 17
    Align = alTop
    BevelOuter = bvNone
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    object LblShowLimitPlace2: TLabel
      Left = 0
      Top = 0
      Width = 94
      Height = 13
      Align = alLeft
      BiDiMode = bdLeftToRight
      Caption = 'LblShow LimitPlace2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      Transparent = True
    end
    object LblShowLimitPlace1: TLabel
      Left = 768
      Top = 0
      Width = 94
      Height = 13
      Align = alRight
      Caption = 'LblShow LimitPlace1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  inherited ActionList: TActionList
    Left = 248
    Top = 136
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actSendToExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendToExcelExecute
    end
    object actRelease11: TAction
      Caption = #1589#1583#1608#1585' '#1581#1608#1575#1604#1607#8207
      OnExecute = actRelease11Execute
    end
    object actShowpreReciptItemIDs: TAction
      Caption = #1605#1588#1575#1607#1583#1607' '#1711#1585#1583#1588
      ShortCut = 123
      OnExecute = actShowpreReciptItemIDsExecute
    end
    object actRptCardex: TAction
      Caption = #1603#1575#1585#1583#1603#1587
      OnExecute = actRptCardexExecute
    end
    object actCalc: TAction
      Caption = #1605#1602#1583#1575#1585'/'#1608#1586#1606
      Hint = ' '
      ShortCut = 120
      OnExecute = actCalcExecute
    end
    object actInsertNote: TAction
      Caption = #1583#1585#1580' '#1578#1608#1590#1610#1581#1575#1578' '#1603#1575#1604#1575
      OnExecute = actInsertNoteExecute
    end
    object actRptCardex2: TAction
      Caption = #1603#1575#1585#1583#1603#1587#8207#1588#1606#1575#1587#1575#1610#1610
      OnExecute = actRptCardex2Execute
    end
    object actRelease12: TAction
      Caption = #1589#1583#1608#1585' '#1601#1575#1705#1578#1608#1585
      OnExecute = actRelease12Execute
    end
  end
  inherited ImageList1: TImageList
    Left = 272
    Top = 201
    Bitmap = {
      494C010100000500040010001000FFFFFFFFFF00FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000}
  end
  object qryRecalSpecial: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryRecalSpecialAfterOpen
    Parameters = <
      item
        Name = 'AidDate'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'Date2From'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'Date2To'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'Date3From'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'Date3To'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'StuffCodeFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'StuffCodeTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'StoreIDFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'StoreIDTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ControlcodeFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ControlcodeTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'DiameterFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'DiameterTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ItemPersonIDFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ItemPersonIDTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'DateFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'DateTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'WeightFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'WeightTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'SellsEmporiumFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'SellsEmporiumTo'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     Ri.ReciptItemID, Ri.StuffCode, StuffCoding.c_StuffNam' +
        'e, Ri.ControlCode, Ri.StuffSize, Ri.StuffDiameter,'
      '                      Ri.StuffAlloy, Ri.PersonID1, P.CustName,'
      
        '                      ROUND(Ri.InputEntity - Ri.OutputEntity + I' +
        'SNULL(RS.Entity, 0), 3) AS Entity,'
      
        '                      ROUND(Ri.InputWeight - Ri.OutputWeight + I' +
        'SNULL(RS.Weight, 0), 3) AS Weight,'
      ''
      
        '                      case when  ROUND(Ri.InputEntity - Ri.Outpu' +
        'tEntity + ISNULL(RS.Entity, 0), 3)<>0'
      
        '                      then  ROUND( (Ri.InputWeight - Ri.OutputWe' +
        'ight + ISNULL(RS.Weight, 0))/'
      
        '                                              (Ri.InputEntity - ' +
        'Ri.OutputEntity + ISNULL(RS.Entity, 0))'
      '                           ,3) else 0 end as  WeightOnEntity ,'
      ''
      
        '                      ROUND(Ri.TotalInputPrice - Ri.TotalOutputP' +
        'rice + ISNULL(RS.Price, 0), 3) AS Price,'
      
        '                      Ri.TotallSellPrice - RS.TotallSellPrice AS' +
        ' TotallSellPrice, Ri.StuffGrade, R.StoreID, Stores.c_StoreName,'
      
        '                      Units.UnitName, R.ReciptNumber, R.ReciptDa' +
        'te, ReciptTypes.ReciptCaption, Ri.ItemNote, derivedtbl_1.CountNo'
      '                      ,'
      
        '                      Ri.UnitSellPrice AS InUnitSellPrice, Ri_Pr' +
        'v.UnitSellPrice AS PrvUnitSellPrice,'
      
        '                      CASE WHEN isnull(Ri_Prv.UnitSellPrice,0)=0' +
        ' ---Ri_Prv.UnitSellPrice IS NULL'
      
        '                           THEN Ri.UnitSellPrice ELSE Ri_Prv.Uni' +
        'tSellPrice'
      
        '                           END AS UnitSellPrice,StuffCoding.c_St' +
        'uffTecInfo'
      
        '                           , R.PersonID3,Customers3.CustName AS ' +
        'CustName3'
      
        #9#9#9#9#9#9'   ,P.Country,P.PersonID1 AS SelerID ,CustSelers.CustName ' +
        'AS SelerName'
      
        '               ,P.AlternativeCustID AS DossierID,CustDossier.Cus' +
        'tName AS DossierName'
      '               ,CustFactory.CustName AS FactoryName'
      'FROM         Units INNER JOIN'
      
        '                      StuffCoding ON Units.UnitCode = StuffCodin' +
        'g.n_UnitCode INNER JOIN'
      '                      ReciptItems AS Ri INNER JOIN'
      
        '                      Recipts AS R ON R.ReciptID = Ri.ReciptID A' +
        'ND R.ServerID = Ri.ServerID AND'
      '                      R.YearID = Ri.YearID INNER JOIN'
      
        '                      ReciptTypes ON R.ReciptType = ReciptTypes.' +
        'ReciptType LEFT OUTER JOIN'
      
        '                      Customers AS P ON Ri.PersonID1 = P.CustID ' +
        'INNER JOIN'
      
        '                      Stores ON R.StoreID = Stores.n_StoreID ON ' +
        'StuffCoding.c_StuffCode = Ri.StuffCode LEFT OUTER JOIN'
      
        '                      ReciptItems AS Ri_Prv ON Ri.YearID = Ri_Pr' +
        'v.YearID AND Ri.ServerID = Ri_Prv.ServerID AND'
      
        '                      Ri.preReciptItemID = Ri_Prv.ReciptItemID L' +
        'EFT OUTER JOIN'
      
        '                          (SELECT     Ri_1.StuffCode, Ri_1.Stuff' +
        'Size, Ri_1.StuffDiameter, Ri_1.StuffAlloy, COUNT(*) AS CountNo'
      
        '                             FROM         Recipts AS R_1 INNER J' +
        'OIN'
      
        '                                                   ReciptItems A' +
        'S Ri_1 ON R_1.ReciptID = Ri_1.ReciptID AND R_1.ServerID = Ri_1.S' +
        'erverID AND'
      
        '                                                   R_1.YearID = ' +
        'Ri_1.YearID'
      ''
      
        '   WHERE     (R_1.ReciptType = 10) AND (R_1.AidDate >=  :AidDate' +
        ' )'
      '       AND (R_1.ReciptState < 3)'
      '       AND (R_1.ReciptDate BETWEEN :Date2From AND :Date2To)'
      
        '                             GROUP BY Ri_1.StuffCode, Ri_1.Stuff' +
        'Size, Ri_1.StuffDiameter, Ri_1.StuffAlloy) AS derivedtbl_1 ON'
      
        '                      Ri.StuffCode = derivedtbl_1.StuffCode AND ' +
        'Ri.StuffSize = derivedtbl_1.StuffSize AND'
      
        '                      Ri.StuffDiameter = derivedtbl_1.StuffDiame' +
        'ter AND Ri.StuffAlloy = derivedtbl_1.StuffAlloy LEFT OUTER JOIN'
      
        '                       dbo.FnRecallSpecial(  :Date3From , :Date3' +
        'To ) as RS  ON Ri.ReciptItemID = RS.preReciptItemID'
      ''
      
        'LEFT OUTER JOIN Customers Customers3 ON R.PersonID3 = Customers3' +
        '.CustID'
      
        'LEFT OUTER JOIN Customers CustSelers ON P.PersonID1 = CustSelers' +
        '.CustID'
      
        'LEFT OUTER JOIN Customers CustDossier ON P.AlternativeCustID = C' +
        'ustDossier.CustID'
      
        'LEFT OUTER JOIN Customers CustFactory ON P.AlternativeCustID2 = ' +
        'CustFactory.CustID'
      ''
      ''
      ''
      'WHERE     (ReciptTypes.EffectType in (2 ,6 ) )'
      '  AND (Ri.StuffCode BETWEEN :StuffCodeFrom AND :StuffCodeTo)'
      '  AND (R.StoreID BETWEEN :StoreIDFrom AND :StoreIDTo)'
      
        '  AND (Ri.ControlCode BETWEEN :ControlcodeFrom AND :ControlcodeT' +
        'o)'
      '  AND (Ri.StuffDiameter BETWEEN :DiameterFrom AND :DiameterTo)'
      
        '  AND (Ri.PersonID1 BETWEEN :ItemPersonIDFrom AND :ItemPersonIDT' +
        'o)'
      '  AND (R.ReciptDate BETWEEN :DateFrom AND :DateTo)'
      
        '  AND ((Ri.InputWeight - Ri.OutputWeight + ISNULL(RS.Weight, 0))' +
        ' BETWEEN :WeightFrom AND :WeightTo)'
      ''
      ''
      'AND('
      
        '((Ri.InputEntity - Ri.OutputEntity + ISNULL(RS.Entity, 0)) >= 0.' +
        '0001 )OR'
      
        '((Ri.InputEntity - Ri.OutputEntity + ISNULL(RS.Entity, 0)) <= -0' +
        '.0001) OR'
      
        '((Ri.InputWeight - Ri.OutputWeight + ISNULL(RS.Weight, 0)) >= 0.' +
        '0001) OR'
      
        '((Ri.InputWeight - Ri.OutputWeight + ISNULL(RS.Weight, 0)) <= -0' +
        '.0001))'
      'AND  (R.ReciptState < 3)'
      'AND (StuffCoding.OwnerShipKind  in (0,1))'
      ''
      
        'AND ( R.SellsEmporium BETWEEN :SellsEmporiumFrom AND :SellsEmpor' +
        'iumTo ) '
      ''
      'ORDER BY Ri.StuffCode, Ri.StuffDiameter, Ri.StuffSize')
    Left = 79
    Top = 144
    object qryRecalSpecialStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qryRecalSpecialControlCode: TLargeintField
      Tag = 3
      DisplayLabel = #1585#1575#1607#1606#1605#1575
      FieldName = 'ControlCode'
    end
    object qryRecalSpecialc_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1603#1575#1604#1575
      FieldName = 'c_StuffName'
      Size = 70
    end
    object qryRecalSpecialc_StuffTecInfo: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1601#1606#1610
      FieldName = 'c_StuffTecInfo'
      Size = 30
    end
    object qryRecalSpecialStuffAlloy: TStringField
      Tag = 3
      DisplayLabel = #1570#1604#1610#1575#1688
      FieldName = 'StuffAlloy'
      Size = 12
    end
    object qryRecalSpecialStuffDiameter: TFloatField
      Tag = 3
      DisplayLabel = #1590#1582#1575#1605#1578
      FieldName = 'StuffDiameter'
    end
    object qryRecalSpecialStuffSize: TStringField
      Tag = 3
      DisplayLabel = #1575#1576#1593#1575#1583' '
      FieldName = 'StuffSize'
      Size = 12
    end
    object qryRecalSpecialEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'Entity'
      ReadOnly = True
    end
    object qryRecalSpecialWeightOnEntity: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606' '#1608#1575#1581#1583
      FieldName = 'WeightOnEntity'
    end
    object qryRecalSpecialWeight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606' '
      FieldName = 'Weight'
      ReadOnly = True
    end
    object qryRecalSpecialUnitSellPrice: TFMTBCDField
      DisplayLabel = #1601#1610
      FieldName = 'UnitSellPrice'
      currency = True
      Precision = 19
    end
    object qryRecalSpecialItemNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' '#1603#1575#1604#1575
      FieldName = 'ItemNote'
      Size = 100
    end
    object qryRecalSpecialc_StoreName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1575#1606#1576#1575#1585
      FieldName = 'c_StoreName'
      Size = 70
    end
    object qryRecalSpecialCustName: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1662#1603#1610#1606#1711' '
      FieldName = 'CustName'
      Size = 120
    end
    object qryRecalSpecialReciptCaption: TStringField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1608#1575#1585#1583#1607' '
      FieldName = 'ReciptCaption'
      Size = 70
    end
    object qryRecalSpecialReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1608#1575#1585#1583#1607' '
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryRecalSpecialReciptNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588'.'#1601#1585#1605' '#1608#1575#1585#1583#1607
      FieldName = 'ReciptNumber'
    end
    object qryRecalSpecialPersonID1: TIntegerField
      Tag = 3
      DisplayLabel = #1588'.'#1662#1603#1610#1606#1711
      FieldName = 'PersonID1'
    end
    object qryRecalSpecialUnitName: TStringField
      DisplayLabel = #1608#1575#1581#1583
      FieldName = 'UnitName'
      Size = 50
    end
    object qryRecalSpecialStuffGrade: TWordField
      Tag = 3
      DisplayLabel = #1583#1585#1580#1607' '#1603#1575#1604#1575
      FieldName = 'StuffGrade'
    end
    object qryRecalSpecialStoreID: TSmallintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1575#1606#1576#1575#1585
      FieldName = 'StoreID'
    end
    object qryRecalSpecialPrice: TBCDField
      Tag = 3
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607' '
      FieldName = 'Price'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryRecalSpecialCountNo: TIntegerField
      DisplayLabel = #1578#1593#1583#1575#1583#1587#1601#1575#1585#1588
      FieldName = 'CountNo'
      ReadOnly = True
    end
    object qryRecalSpecialTotallSellPrice: TBCDField
      Tag = 3
      DisplayLabel = #1576#1607#1575#1610' '#1601#1585#1608#1588
      FieldName = 'TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryRecalSpecialReciptItemID: TIntegerField
      FieldName = 'ReciptItemID'
    end
    object qryRecalSpecialCountry: TStringField
      Tag = 3
      DisplayLabel = #1705#1588#1608#1585
      FieldName = 'Country'
    end
    object qryRecalSpecialSelerID: TIntegerField
      Tag = 3
      DisplayLabel = #1705#1583' '#1601#1585#1608#1588#1606#1583#1607
      FieldName = 'SelerID'
    end
    object qryRecalSpecialSelerName: TStringField
      Tag = 3
      DisplayLabel = #1601#1585#1608#1588#1606#1583#1607
      FieldName = 'SelerName'
      Size = 150
    end
    object qryRecalSpecialDossierID: TLargeintField
      Tag = 3
      DisplayLabel = #1705#1583' '#1662#1585#1608#1606#1583#1607
      FieldName = 'DossierID'
    end
    object qryRecalSpecialDossierName: TStringField
      Tag = 3
      DisplayLabel = #1662#1585#1608#1606#1583#1607
      FieldName = 'DossierName'
      Size = 150
    end
    object qryRecalSpecialFactoryName: TStringField
      Tag = 3
      DisplayLabel = #1705#1575#1585#1582#1575#1606#1607
      FieldName = 'FactoryName'
      Size = 150
    end
  end
  object srcRecalSpecial: TDataSource
    DataSet = qryRecalSpecial
    Left = 152
    Top = 221
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcRecalSpecial
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 456
    Top = 281
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'ReciptItemID'
      FieldName = 'ReciptItemID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'StuffCode'
      FieldName = 'StuffCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'c_StuffName'
      FieldName = 'c_StuffName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'ControlCode'
      FieldName = 'ControlCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'StuffSize'
      FieldName = 'StuffSize'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'StuffDiameter'
      FieldName = 'StuffDiameter'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'StuffAlloy'
      FieldName = 'StuffAlloy'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'PersonID1'
      FieldName = 'PersonID1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'CustName'
      FieldName = 'CustName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'Entity'
      FieldName = 'Entity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'Weight'
      FieldName = 'Weight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'Price'
      FieldName = 'Price'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'TotallSellPrice'
      FieldName = 'TotallSellPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'StuffGrade'
      FieldName = 'StuffGrade'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'StoreID'
      FieldName = 'StoreID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'c_StoreName'
      FieldName = 'c_StoreName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'UnitName'
      FieldName = 'UnitName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'ReciptNumber'
      FieldName = 'ReciptNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'ReciptDate'
      FieldName = 'ReciptDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'ReciptCaption'
      FieldName = 'ReciptCaption'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'ItemNote'
      FieldName = 'ItemNote'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = 'CountNo'
      FieldName = 'CountNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = 'UnitSellPrice'
      FieldName = 'UnitSellPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField24: TppField
      FieldAlias = 'WeightOnEntity'
      FieldName = 'WeightOnEntity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField25: TppField
      FieldAlias = 'c_StuffTecInfo'
      FieldName = 'c_StuffTecInfo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
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
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
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
    Left = 344
    Top = 297
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 28310
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        ParentWidth = True
        mmHeight = 6879
        mmLeft = 0
        mmTop = 21431
        mmWidth = 266701
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        OnGetText = ppLabel1GetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575#1585#1575#1610#1575#1606#1607' '
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
        mmLeft = 106627
        mmTop = 1058
        mmWidth = 53181
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1711#1586#1575#1585#1588' '#1605#1608#1580#1608#1583#1610' - '#1585#1608#1588' '#1588#1606#1575#1587#1575#1610#1610' '#1608#1610#1688#1607' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7027
        mmLeft = 103881
        mmTop = 8202
        mmWidth = 58674
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 15081
        mmWidth = 266701
        BandType = 0
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 196586
        mmTop = 21696
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 256117
        mmTop = 21696
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        OnGetText = ppSystemVariable1GetText
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 4233
        mmTop = 10319
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        OnGetText = ppSystemVariable2GetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 4233
        mmTop = 5027
        mmWidth = 8202
        BandType = 0
        LayerName = Foreground
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 218546
        mmTop = 21696
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        Border.mmPadding = 0
        Caption = #1603#1583' '#1575#1606#1576#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 58208
        mmTop = 21960
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1575#1606#1576#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 46831
        mmTop = 21960
        mmWidth = 10319
        BandType = 0
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 208757
        mmTop = 21696
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line15'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 188119
        mmTop = 21696
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line16'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 176213
        mmTop = 21696
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppLine17: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line17'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 165629
        mmTop = 21696
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppLine18: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line18'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 151871
        mmTop = 21696
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppLine19: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line19'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 139965
        mmTop = 21696
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppLine20: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line20'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 121973
        mmTop = 21696
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppLine21: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line201'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 102394
        mmTop = 21696
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppLine22: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line22'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 81756
        mmTop = 21696
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppLine23: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line23'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 67733
        mmTop = 21696
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppLine24: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line24'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 57679
        mmTop = 21696
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppLine26: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line26'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 35454
        mmTop = 21696
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppLine27: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line27'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 24077
        mmTop = 21696
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label20'
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1608#1575#1585#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 152400
        mmTop = 21960
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label201'
        Border.mmPadding = 0
        Caption = #1606#1608#1593' '#1608#1575#1585#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 140494
        mmTop = 21960
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        Border.mmPadding = 0
        Caption = #1605#1588#1582#1589#1575#1578' '#1662#1603#1610#1606#1711
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 82550
        mmTop = 21960
        mmWidth = 19315
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        Border.mmPadding = 0
        Caption = #1583#1585#1580#1607' '#1603#1575#1604#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 68527
        mmTop = 21960
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1662#1603#1610#1606#1711
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 102923
        mmTop = 21960
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 794
        mmTop = 21960
        mmWidth = 22754
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        Border.mmPadding = 0
        Caption = #1608#1586#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 24871
        mmTop = 21960
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = #1605#1602#1583#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 36248
        mmTop = 21960
        mmWidth = 9260
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1570#1604#1610#1575#1688
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 166423
        mmTop = 21960
        mmWidth = 9525
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = #1590#1582#1575#1605#1578' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 176742
        mmTop = 21960
        mmWidth = 10848
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = #1575#1576#1593#1575#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 188648
        mmTop = 21960
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = #1585#1575#1607#1606#1605#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 197115
        mmTop = 21960
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = #1608#1575#1581#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 209550
        mmTop = 21960
        mmWidth = 8731
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1603#1575#1604#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 219075
        mmTop = 21960
        mmWidth = 36777
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = #1603#1583' '#1603#1575#1604#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 256646
        mmTop = 21960
        mmWidth = 9525
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label19'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1601#1585#1605' '#1608#1575#1585#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 122767
        mmTop = 21960
        mmWidth = 16669
        BandType = 0
        LayerName = Foreground
      end
      object ppLine40: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line40'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 46038
        mmTop = 21696
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'Weight'
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
        mmLeft = 24871
        mmTop = 265
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'Price'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 794
        mmTop = 265
        mmWidth = 22754
        BandType = 4
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 24077
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 35454
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 208757
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 256117
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 0
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 218546
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppLine28: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line28'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 196586
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppLine29: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line29'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 188119
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppLine30: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line30'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 176213
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppLine31: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line31'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 165629
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppLine32: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line32'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 151871
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppLine33: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line33'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 140229
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppLine34: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line202'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 121973
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppLine35: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line35'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 102394
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppLine36: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line36'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 81756
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppLine37: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line37'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 57679
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppLine38: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line38'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 67733
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppLine39: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line39'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 46038
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppLine25: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line25'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 46038
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        Border.mmPadding = 0
        DataField = 'CustName'
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
        mmLeft = 82550
        mmTop = 265
        mmWidth = 19315
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText15'
        Border.mmPadding = 0
        DataField = 'Entity'
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
        mmLeft = 36248
        mmTop = 265
        mmWidth = 9260
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        Border.mmPadding = 0
        DataField = 'PersonID1'
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
        mmLeft = 102923
        mmTop = 265
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = 'ReciptNumber'
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
        mmLeft = 122767
        mmTop = 265
        mmWidth = 16669
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText101'
        Border.mmPadding = 0
        DataField = 'ControlCode'
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
        mmLeft = 140759
        mmTop = 265
        mmWidth = 10583
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'ReciptCaption'
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
        mmLeft = 152400
        mmTop = 265
        mmWidth = 12965
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'StuffAlloy'
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
        mmLeft = 166423
        mmTop = 265
        mmWidth = 9525
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'StuffDiameter'
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
        mmLeft = 176742
        mmTop = 265
        mmWidth = 10848
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'StuffSize'
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
        mmLeft = 188648
        mmTop = 265
        mmWidth = 7408
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'ControlCode'
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
        mmLeft = 197380
        mmTop = 265
        mmWidth = 10848
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'UnitName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 209550
        mmTop = 794
        mmWidth = 8731
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'c_StuffName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 219075
        mmTop = 794
        mmWidth = 36777
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'StuffCode'
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
        mmLeft = 256646
        mmTop = 265
        mmWidth = 9525
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText16'
        Border.mmPadding = 0
        DataField = 'c_StoreName'
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
        mmLeft = 46831
        mmTop = 265
        mmWidth = 10319
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText17'
        Border.mmPadding = 0
        DataField = 'StoreID'
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
        mmLeft = 58208
        mmTop = 265
        mmWidth = 8996
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText18'
        Border.mmPadding = 0
        DataField = 'StuffGrade'
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
        mmLeft = 68527
        mmTop = 265
        mmWidth = 12700
        BandType = 4
        LayerName = Foreground
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 266436
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        mmHeight = 6879
        mmLeft = 265
        mmTop = 0
        mmWidth = 266701
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = #1580#1600#1600#1600#1605#1593' '#1603#1600#1600#1604':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5556
        mmLeft = 245798
        mmTop = 529
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'Price'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 529
        mmTop = 529
        mmWidth = 23548
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'Weight'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 25135
        mmTop = 529
        mmWidth = 10319
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        Border.mmPadding = 0
        DataField = 'Entity'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 36513
        mmTop = 529
        mmWidth = 9790
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
  object qryinit: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'ReciptType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT        ReciptType, ReciptCaption'
      'FROM            ReciptTypes1'
      'where ReciptType=:ReciptType')
    Left = 476
    Top = 143
  end
  object PopOther: TPopupMenu
    AutoHotkeys = maManual
    Left = 208
    Top = 386
    object Excel1: TMenuItem
      Action = actSendToExcel
    end
    object N1: TMenuItem
      Action = actInsertNote
    end
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 704
    Top = 378
    object Specialinventory: TMenuItem
      Caption = #1670#1575#1662' 1'
      OnClick = SpecialinventoryClick
    end
    object Specialinventory2: TMenuItem
      Caption = #1670#1575#1662' 2'
      OnClick = SpecialinventoryClick
    end
  end
  object qryBackup: TADOQuery
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     ReciptItems.ReciptItemID, ReciptItems.StuffCode, Stuf' +
        'fCoding.c_StuffName, ReciptItems.ControlCode, ReciptItems.StuffS' +
        'ize, ReciptItems.StuffDiameter,'
      
        '                      ReciptItems.StuffAlloy, ReciptItems.Person' +
        'ID1, Customers.CustName,'
      
        '                      ROUND(ReciptItems.InputEntity - ReciptItem' +
        's.OutputEntity + ISNULL(RecallSpecial.Entity, 0), 3) AS Entity,'
      
        '                      ROUND(ReciptItems.InputWeight - ReciptItem' +
        's.OutputWeight + ISNULL(RecallSpecial.Weight, 0), 3) AS Weight,'
      ''
      
        '                      case when  ROUND(ReciptItems.InputEntity -' +
        ' ReciptItems.OutputEntity + ISNULL(RecallSpecial.Entity, 0), 3)<' +
        '>0'
      
        '                      then  ROUND( (ReciptItems.InputWeight - Re' +
        'ciptItems.OutputWeight + ISNULL(RecallSpecial.Weight, 0))/'
      
        '                                              (ReciptItems.Input' +
        'Entity - ReciptItems.OutputEntity + ISNULL(RecallSpecial.Entity,' +
        ' 0))'
      '                           ,3) else 0 end as  WeightOnEntity ,'
      ''
      
        '                      ROUND(ReciptItems.TotalInputPrice - Recipt' +
        'Items.TotalOutputPrice + ISNULL(RecallSpecial.Price, 0), 3) AS P' +
        'rice,'
      
        '                      ReciptItems.TotallSellPrice - RecallSpecia' +
        'l.TotallSellPrice AS TotallSellPrice, ReciptItems.StuffGrade, Re' +
        'cipts.StoreID, Stores.c_StoreName,'
      
        '                      Units.UnitName, Recipts.ReciptNumber, Reci' +
        'pts.ReciptDate, ReciptTypes.ReciptCaption, ReciptItems.ItemNote,' +
        ' derivedtbl_1.CountNo'
      '                      ,ReciptItems.UnitSellPrice'
      'FROM         Units INNER JOIN'
      
        '                      StuffCoding ON Units.UnitCode = StuffCodin' +
        'g.n_UnitCode INNER JOIN'
      '                      ReciptItems INNER JOIN'
      
        '                      Recipts ON Recipts.ReciptID = ReciptItems.' +
        'ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND Recipts' +
        '.YearID = ReciptItems.YearID'
      '                        INNER JOIN'
      
        '                      ReciptTypes ON Recipts.ReciptType = Recipt' +
        'Types.ReciptType LEFT OUTER JOIN'
      
        '                      Customers ON ReciptItems.PersonID1 = Custo' +
        'mers.CustID INNER JOIN'
      
        '                      Stores ON Recipts.StoreID = Stores.n_Store' +
        'ID ON StuffCoding.c_StuffCode = ReciptItems.StuffCode LEFT OUTER' +
        ' JOIN'
      
        '                          (SELECT     ReciptItems_1.StuffCode, R' +
        'eciptItems_1.StuffSize, ReciptItems_1.StuffDiameter, ReciptItems' +
        '_1.StuffAlloy, COUNT(*) AS CountNo'
      
        '                             FROM         Recipts AS Recipts_1 I' +
        'NNER JOIN'
      
        '                                                   ReciptItems A' +
        'S ReciptItems_1 ON'
      ''
      '                Recipts_1.ReciptID = ReciptItems_1.ReciptID'
      
        '                    AND Recipts_1.ServerID = ReciptItems_1.Serve' +
        'rID'
      '                   AND Recipts_1.YearID = ReciptItems_1.YearID'
      ''
      ''
      
        '                             WHERE     (Recipts_1.ReciptType = 1' +
        '0) AND (Recipts_1.AidDate >=  :AidDate ) AND (Recipts_1.ReciptSt' +
        'ate < 3)'
      '  AND (Recipts_1.ReciptDate BETWEEN :Date2From AND :Date2To)'
      ''
      
        '                             GROUP BY ReciptItems_1.StuffCode, R' +
        'eciptItems_1.StuffSize, ReciptItems_1.StuffDiameter, ReciptItems' +
        '_1.StuffAlloy) AS derivedtbl_1 ON'
      
        '                      ReciptItems.StuffCode = derivedtbl_1.Stuff' +
        'Code AND ReciptItems.StuffSize = derivedtbl_1.StuffSize AND'
      
        '                      ReciptItems.StuffDiameter = derivedtbl_1.S' +
        'tuffDiameter AND ReciptItems.StuffAlloy = derivedtbl_1.StuffAllo' +
        'y LEFT OUTER JOIN'
      
        '                      RecallSpecial ON ReciptItems.ReciptItemID ' +
        '= RecallSpecial.preReciptItemID'
      'WHERE     (ReciptTypes.EffectType = 2)'
      
        '  AND (ReciptItems.StuffCode BETWEEN :StuffCodeFrom AND :StuffCo' +
        'deTo)'
      '  AND (Recipts.StoreID BETWEEN :StoreIDFrom AND :StoreIDTo)'
      
        '  AND (ReciptItems.ControlCode BETWEEN :ControlcodeFrom AND :Con' +
        'trolcodeTo)'
      
        '  AND (ReciptItems.StuffDiameter BETWEEN :DiameterFrom AND :Diam' +
        'eterTo)'
      
        '  AND (ReciptItems.PersonID1 BETWEEN :ItemPersonIDFrom AND :Item' +
        'PersonIDTo)'
      '  AND (Recipts.ReciptDate BETWEEN :DateFrom AND :DateTo)'
      ''
      'AND('
      
        '((ReciptItems.InputEntity - ReciptItems.OutputEntity + ISNULL(Re' +
        'callSpecial.Entity, 0)) >= 0.0001 )OR'
      
        '((ReciptItems.InputEntity - ReciptItems.OutputEntity + ISNULL(Re' +
        'callSpecial.Entity, 0)) <= -0.0001) OR'
      
        '((ReciptItems.InputWeight - ReciptItems.OutputWeight + ISNULL(Re' +
        'callSpecial.Weight, 0)) >= 0.0001) OR'
      
        '((ReciptItems.InputWeight - ReciptItems.OutputWeight + ISNULL(Re' +
        'callSpecial.Weight, 0)) <= -0.0001))'
      'AND  (Recipts.ReciptState < 3)'
      'AND (StuffCoding.OwnerShipKind  in (:StuffKindActive))'
      
        'ORDER BY ReciptItems.StuffCode, ReciptItems.StuffDiameter, Recip' +
        'tItems.StuffSize'
      ' '
      ' ')
    Left = 64
    Top = 266
  end
  object popRelease: TPopupMenu
    AutoHotkeys = maManual
    Left = 424
    Top = 378
    object MenuItem1: TMenuItem
      Action = actRelease11
    end
    object MenuItem2: TMenuItem
      Action = actRelease12
    end
  end
end

inherited RemainEarlyF: TRemainEarlyF
  Left = 276
  Top = 233
  ActiveControl = cmbGroup
  Caption = #1605#1575#1606#1583#1607' '#1575#1576#1578#1583#1575#1610' '#1587#1575#1604
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    TabOrder = 2
    object pnlNew: TPanel
      Left = 472
      Top = 1
      Width = 313
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        313
        39)
      object btn1: TBitBtn
        Left = 235
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object btn2: TBitBtn
        Left = 157
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object btn3: TBitBtn
        Left = 81
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetDelete1_
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        TabOrder = 2
      end
      object BitBtn1: TBitBtn
        Left = 4
        Top = 8
        Width = 75
        Height = 24
        Action = actAllDelete
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601' '#1705#1604#1740
        TabOrder = 3
      end
    end
    object pnlok: TPanel
      Left = 307
      Top = 1
      Width = 165
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      DesignSize = (
        165
        39)
      object btn5: TBitBtn
        Left = 89
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
      object btn6: TBitBtn
        Left = 8
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
    object btnSort: TBitBtn
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
    object btnSort1: TBitBtn
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
    object btnSearch_: TBitBtn
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
      TabOrder = 5
    end
    object btnExcel: TBitBtn
      AlignWithMargins = True
      Left = 328
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actOther
      Align = alLeft
      Caption = #1587#1575#1610#1585' '#1575#1605#1603#1575#1606#1575#1578
      TabOrder = 6
    end
  end
  inherited Panel2: TPanel
    Height = 64
    TabOrder = 0
    ExplicitHeight = 64
    DesignSize = (
      786
      64)
    inherited ImgTemplate: TImage
      ExplicitLeft = 777
    end
    inherited lblCaption: TLabel
      Height = 44
    end
    object lblYears: TLabel
      Left = 141
      Top = 12
      Width = 47
      Height = 13
      Alignment = taRightJustify
      Caption = #1587#1575#1604' '#1605#1575#1604#1610
    end
    object lblGroup: TLabel
      Left = 422
      Top = 36
      Width = 63
      Height = 13
      Alignment = taRightJustify
      Caption = #1711#1585#1608#1607' '#1605#1588#1578#1585#1610#1575#1606
    end
    object cmbYears: TComboBox
      Left = 8
      Top = 8
      Width = 129
      Height = 21
      Style = csDropDownList
      Color = 14024703
      TabOrder = 0
      OnChange = cmbYearsChange
    end
    object cmbGroup: TComboBox
      Left = 8
      Top = 32
      Width = 407
      Height = 21
      Style = csDropDownList
      Color = 14024703
      TabOrder = 1
      OnChange = cmbGroupChange
    end
  end
  inherited Panel3: TPanel
    Top = 64
    Height = 412
    TabOrder = 1
    ExplicitTop = 64
    ExplicitHeight = 412
    object grdCustomer: TCedarDbgrid
      Tag = 111
      Left = 2
      Top = 2
      Width = 782
      Height = 408
      Align = alClient
      Color = clCream
      DataSource = srcRemainsEarly
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
      SortLocal = True
      TabOrder = 0
      OnEditButtonClick = grdCustomerEditButtonClick
      OnKeyPress = grdCustomerKeyPress
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PersonID1'
          Footers = <>
          Width = 58
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_CustName'
          Footers = <>
          Width = 100
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Rate'
          Footers = <>
          Width = 100
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ArzTypeID'
          Footers = <>
          Width = 67
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ArzRemain'
          Footers = <>
          Width = 78
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'InfoKind'
          Footers = <>
          PickList.Strings = (
            #1576#1583#1607#1610'/'#1591#1604#1576
            #1662#1610#1588' '#1583#1585#1610#1575#1601#1578
            #1662#1610#1588' '#1662#1585#1583#1575#1582#1578
            #1587#1662#1585#1583#1607' '#1608' '#1583#1610#1593#1607
            #1608#1575#1605' '#1608' '#1576#1607#1585#1607)
          Width = 92
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_SellsEmporium'
          Footers = <>
          Width = 81
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Note'
          Footers = <>
          Width = 100
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  inherited ActionList: TActionList
    Left = 528
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actExcelExecute
    end
    object actOther: TAction
      Caption = #1587#1575#1610#1585' '#1575#1605#1603#1575#1606#1575#1578
      OnExecute = actOtherExecute
    end
    object actRemainsEarly: TAction
      Caption = #1575#1606#1578#1602#1575#1604' '#1605#1608#1580#1608#1583#1610' '#1575#1576#1578#1583#1575#1610' '#1587#1575#1604
      OnExecute = actRemainsEarlyExecute
    end
    object actAllDelete: TAction
      Caption = #1581#1584#1601' '#1705#1604#1740
      OnExecute = actAllDeleteExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 624
    Top = 9
  end
  object qryRemainEarly: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryRemainEarlyAfterInsert
    BeforePost = qryRemainEarlyBeforePost
    BeforeDelete = qryRemainEarlyBeforeDelete
    Parameters = <
      item
        Name = 'YearID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'CustFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'CustTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select * From RemainsEarly'
      
        'where YearId = :YearID And PersonID1 between :CustFrom and :Cust' +
        'To'
      'order by PersonID1')
    Left = 128
    Top = 128
    object qryRemainEarlyPersonID1: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1588#1578#1585#1610
      DisplayWidth = 12
      FieldName = 'PersonID1'
      Required = True
    end
    object qryRemainEarly_CustName: TStringField
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1605#1588#1578#1585#1610
      FieldKind = fkLookup
      FieldName = '_CustName'
      LookupDataSet = qryCustomer
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'PersonID1'
      Size = 150
      Lookup = True
    end
    object qryRemainEarlyRate: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' - '#1585#1610#1575#1604
      DisplayWidth = 24
      FieldName = 'Rate'
      currency = True
      Precision = 19
    end
    object qryRemainEarlyArzTypeID: TIntegerField
      DisplayLabel = #1606#1608#1593' '#1575#1585#1586
      FieldName = 'ArzTypeID'
      OnGetText = qryRemainEarlyArzTypeIDGetText
      OnSetText = qryRemainEarlyArzTypeIDSetText
    end
    object qryRemainEarlyArzRemain: TBCDField
      DisplayLabel = #1605#1575#1606#1583#1607' '#1575#1585#1586#1740
      FieldName = 'ArzRemain'
      Precision = 19
    end
    object qryRemainEarlyInfoKind: TWordField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
      DisplayWidth = 12
      FieldName = 'InfoKind'
      OnGetText = qryRemainEarlyInfoKindGetText
      OnSetText = qryRemainEarlyInfoKindSetText
    end
    object qryRemainEarlySellsEmporium: TIntegerField
      Tag = 3
      DisplayLabel = #1705#1583#1605#1585#1603#1586' '#1601#1585#1608#1588
      FieldName = 'SellsEmporium'
    end
    object qryRemainEarly_SellsEmporium: TStringField
      DisplayLabel = #1605#1585#1603#1586' '#1601#1585#1608#1588
      FieldKind = fkLookup
      FieldName = '_SellsEmporium'
      LookupDataSet = qrySellsEmporium
      LookupKeyFields = 'SellsEmporium'
      LookupResultField = 'SellsEmporiumName'
      KeyFields = 'SellsEmporium'
      Size = 100
      Lookup = True
    end
    object qryRemainEarlyNote: TWideStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      DisplayWidth = 54
      FieldName = 'Note'
      Size = 300
    end
    object qryRemainEarlyRemainsEarlyID: TAutoIncField
      DisplayWidth = 15
      FieldName = 'RemainsEarlyID'
      ReadOnly = True
    end
    object qryRemainEarlyYearID: TIntegerField
      DisplayLabel = #1587#1575#1604' '#1605#1575#1604#1610
      DisplayWidth = 12
      FieldName = 'YearID'
    end
  end
  object srcRemainsEarly: TDataSource
    DataSet = qryRemainEarly
    OnStateChange = srcRemainsEarlyStateChange
    Left = 128
    Top = 208
  end
  object qryGroup: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryGroupAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT CustomerGrpID, CustomerGrpName +'
      #39' '#1575#1586' '#1603#1583' '#39' + LTRIM(STR(StartCode)) +'
      
        #39' '#1578#1575' '#1603#1583'  '#39' + LTRIM(STR(FinishCode)) AS Name ,StartCode,FinishCod' +
        'e'
      'FROM CustomersGroup')
    Left = 280
    Top = 8
  end
  object qryCustomer: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     CustID, CustName'
      'FROM         Customers')
    Left = 664
    Top = 152
  end
  object popOther: TPopupMenu
    AutoHotkeys = maManual
    Left = 232
    Top = 144
    object N1: TMenuItem
      Caption = #1576#1585#1608#1586#1585#1587#1575#1606#1610
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1591#1585#1575#1581#1610' '#1670#1575#1662
      OnClick = N2Click
    end
    object Excel1: TMenuItem
      Caption = #1583#1585#1610#1575#1601#1578' '#1575#1586' Excel '
      OnClick = Excel1Click
    end
    object mnuRemainsEarly: TMenuItem
      Action = actRemainsEarly
      Caption = #1601#1585#1575#1582#1608#1575#1606#1740' '#1605#1575#1606#1583#1607' '#1575#1586' '#1605#1593#1585#1601#1740' '#1605#1588#1578#1585#1740#1575#1606' '
    end
    object N3: TMenuItem
      Caption = #1601#1585#1575#1582#1608#1575#1606#1740' '#1605#1575#1606#1583#1607' '#1575#1586' '#1587#1575#1604' '#1602#1576#1604
      OnClick = N3Click
    end
    object MnuRemainsEarlyY: TMenuItem
      Caption = #1601#1585#1575#1582#1608#1575#1606#1740' '#1605#1575#1606#1583#1607' '#1575#1576#1578#1583#1575#1740' '#1587#1575#1604' '#1575#1586' '#1587#1575#1740#1585' '#1576#1575#1606#1705' '#1607#1575
      OnClick = MnuRemainsEarlyYClick
    end
  end
  object qrySellsEmporium: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     *'
      'FROM        SellsEmporiums'
      '')
    Left = 467
    Top = 177
  end
  object qry: TADOQuery
    Connection = DmF.adcBSell
    CommandTimeout = 0
    Parameters = <>
    Left = 374
    Top = 160
  end
end

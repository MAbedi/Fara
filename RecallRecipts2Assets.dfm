inherited RecallRecipts2AssetsF: TRecallRecipts2AssetsF
  Left = 326
  Top = 113
  Align = alLeft
  BorderStyle = bsSizeable
  Caption = #1601#1585#1575#1582#1608#1575#1606#1610' '#1575#1586' ...'
  ClientHeight = 512
  ClientWidth = 954
  OldCreateOrder = True
  ExplicitWidth = 970
  ExplicitHeight = 551
  DesignSize = (
    954
    512)
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Left = 8
    Top = 245
    Width = 962
    ExplicitLeft = 8
    ExplicitTop = 222
    ExplicitWidth = 791
  end
  object lbllist: TLabel [1]
    Left = 0
    Top = 188
    Width = 954
    Height = 17
    Align = alBottom
    Alignment = taCenter
    AutoSize = False
    Caption = #1604#1587#1610#1578' '#1603#1575#1604#1575#1607#1575
    Color = clMoneyGreen
    Font.Charset = ARABIC_CHARSET
    Font.Color = 33023
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
    ExplicitTop = 167
    ExplicitWidth = 791
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 471
    Width = 954
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 5
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 795
      Top = 6
      Width = 75
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSearch
      Align = alRight
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 1
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 3
      Top = 6
      Width = 75
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 3
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      AlignWithMargins = True
      Left = 84
      Top = 6
      Width = 75
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608' '
      TabOrder = 2
      OnClick = BitBtn5Click
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 876
      Top = 6
      Width = 75
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alRight
      Caption = #1578#1575#1740#1740#1583
      TabOrder = 0
      OnClick = DBGrid1DblClick
    end
  end
  inherited Panel1: TPanel
    Width = 954
    BevelOuter = bvNone
    ExplicitWidth = 954
    DesignSize = (
      954
      73)
    inherited Image1: TImage
      Left = 904
      Top = 0
      Width = 50
      Height = 73
      Align = alRight
      Center = True
      Stretch = True
      ExplicitLeft = 904
      ExplicitTop = 0
      ExplicitWidth = 50
      ExplicitHeight = 73
    end
    inherited lblTopic0: TLabel
      Left = 813
      Width = 75
      Caption = #1601#1585#1575#1582#1608#1575#1606#1610' '#1575#1586' ...'
      ExplicitLeft = 642
      ExplicitWidth = 75
    end
    inherited lblTopic1: TLabel
      Left = 872
      Width = 3
      Caption = ''
      ExplicitLeft = 701
      ExplicitWidth = 3
    end
  end
  inherited pnlDown: TPanel
    Top = 205
    Width = 954
    Height = 29
    BevelOuter = bvNone
    ExplicitTop = 205
    ExplicitWidth = 954
    ExplicitHeight = 29
    inherited btnClose: TBitBtn
      Top = 462
      ModalResult = 2
      ExplicitTop = 462
    end
    object BitBtn1: TBitBtn
      Left = 10
      Top = 1
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      Left = 92
      Top = 1
      Width = 75
      Height = 25
      Action = actSearch2
      Caption = #1580#1587#1578#1580#1608' '
      TabOrder = 2
    end
  end
  object StatusBar1: TStatusBar [5]
    Left = 0
    Top = 452
    Width = 954
    Height = 19
    Panels = <
      item
        Width = 400
      end
      item
        Text = #1576#1585#1575#1610' '#1580#1587#1578#1580#1608' '#1601#1585#1605' '#1610#1575' '#1603#1575#1604#1575#1610' '#1605#1608#1585#1583' '#1606#1592#1585' '#1585#1608#1610' '#1604#1610#1587#1578' '#1603#1583' '#1585#1575' '#1578#1575#1610#1662' '#1603#1606#1610#1583'.'
        Width = 50
      end>
  end
  object DBGrid1: TCedarDbgrid [6]
    Left = 0
    Top = 73
    Width = 954
    Height = 115
    Align = alClient
    Color = clCream
    DataSource = srcMater_Recipt
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
    OddRowColor = clGradientInactiveCaption
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    RowHeight = 21
    SearchPanel.Enabled = True
    SortLocal = True
    TabOrder = 2
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    OnTitleClick = DBGrid1TitleClick
    ActiveSearchPanel = False
    SelectFooterIndex = 0
    Columns = <
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
        FieldName = 'ReciptDate'
        Footers = <>
        Width = 64
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
        FieldName = 'DocNo'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DocDate'
        Footers = <>
        Width = 64
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ReciptCaption'
        Footers = <>
        Width = 96
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ReciptState'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PersonID2'
        Footers = <>
        Width = 92
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CustName2'
        Footers = <>
        Width = 113
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PersonID3'
        Footers = <>
        Width = 56
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PersonID4'
        Footers = <>
        Width = 47
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DBGrid2: TCedarDbgrid [7]
    Left = 0
    Top = 234
    Width = 954
    Height = 218
    Align = alBottom
    Color = clCream
    Ctl3D = False
    DataSource = srcDetail_Item
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
    OddRowColor = clGradientInactiveCaption
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    RowHeight = 21
    SearchPanel.Enabled = True
    SortLocal = True
    TabOrder = 3
    OnDblClick = DBGrid2DblClick
    OnKeyDown = DBGrid2KeyDown
    OnKeyPress = DBGrid2KeyPress
    ActiveSearchPanel = False
    SelectFooterIndex = 0
    Columns = <
      item
        CellButtons = <>
        Checkboxes = True
        DynProps = <>
        EditButtons = <>
        FieldName = '_checked'
        Footers = <>
        Width = 42
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'StuffCode'
        Footers = <>
        Width = 42
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'c_StuffName'
        Footers = <>
        Width = 54
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'UnitCode'
        Footers = <>
        Width = 29
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'UnitName'
        Footers = <>
        Width = 30
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Entity'
        Footers = <>
        Width = 39
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Weight'
        Footers = <>
        Width = 29
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Price'
        Footers = <>
        Width = 31
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ItemNote'
        Footers = <>
        Width = 56
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TotallSellPrice'
        Footers = <>
        Width = 124
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PrefixPelak'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'acc_CTopicCode'
        Footers = <>
        Width = 106
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TopicCode'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DetailCode'
        Footers = <>
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  inherited ActionList1: TActionList
    Left = 240
    object actSearch: TAction
      Caption = #1580#1587#1578#1580#1608
      OnExecute = actSearchExecute
    end
    object actSearch2: TAction
      Caption = #1580#1587#1578#1580#1608' '
      OnExecute = actSearch2Execute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
  end
  object srcMater_Recipt: TDataSource
    DataSet = qryMater_Recipt
    Left = 616
    Top = 293
  end
  object qryMater_Recipt: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryMater_ReciptAfterScroll
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 481
    Top = 277
    object qryMater_ReciptReciptNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'ReciptNumber'
    end
    object qryMater_ReciptReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1601#1585#1605
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryMater_ReciptPersonID1: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583
      FieldName = 'PersonID1'
    end
    object qryMater_ReciptCustName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605
      FieldName = 'CustName'
      Size = 120
    end
    object qryMater_ReciptStoreID: TSmallintField
      Tag = 3
      DisplayLabel = #1603#1583
      FieldName = 'StoreID'
    end
    object qryMater_Reciptc_StoreName2: TStringField
      DisplayLabel = #1606#1575#1605' '#1576#1606#1711#1575#1607
      FieldName = 'c_StoreName'
      Size = 70
    end
    object qryMater_ReciptReciptCaption: TStringField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
      FieldName = 'ReciptCaption'
      Size = 70
    end
    object qryMater_ReciptReciptState: TWordField
      Tag = 3
      DisplayLabel = #1608#1590#1593#1740#1578
      FieldName = 'ReciptState'
      OnGetText = qryMater_ReciptReciptStateGetText
    end
    object qryMater_ReciptReciptType: TWordField
      FieldName = 'ReciptType'
    end
    object qryMater_ReciptParentReciptID: TIntegerField
      FieldName = 'ParentReciptID'
    end
    object qryMater_ReciptPersonID2: TIntegerField
      DisplayLabel = #1705#1583'2'
      FieldName = 'PersonID2'
    end
    object qryMater_ReciptCustName2: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605'2'
      FieldName = 'CustName2'
      Size = 120
    end
    object qryMater_ReciptServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryMater_ReciptReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryMater_ReciptYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryMater_ReciptPersonID3: TIntegerField
      DisplayLabel = #1705#1583'3'
      FieldName = 'PersonID3'
    end
    object qryMater_ReciptDocNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588'.'#1587#1606#1583
      FieldName = 'DocNo'
    end
    object qryMater_ReciptDocDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582'.'#1587#1606#1583
      FieldName = 'DocDate'
      FixedChar = True
      Size = 10
    end
    object qryMater_ReciptPersonID4: TIntegerField
      DisplayLabel = #1705#1583'4'
      FieldName = 'PersonID4'
    end
  end
  object qryDetail_Item: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = qryDetail_ItemAfterOpen
    DataSource = srcMater_Recipt
    Parameters = <>
    SQL.Strings = (
      
        'SELECT        Fitful.FitfulID AS _checked, Ri.ID, Ri.StuffCode, ' +
        'StuffCoding.c_StuffName, StuffCoding.GroupID, Ri.ItemNote, Units' +
        '.UnitName, Ri.InputEntity + Ri.OutputEntity AS Entity, Ri.InputW' +
        'eight + Ri.OutputWeight AS Weight, '
      
        '                         Ri.TotalInputPrice + Ri.TotalOutputPric' +
        'e AS Price, Ri.TotallSellPrice, StuffGroups.PrefixPelak, R.Recip' +
        'tNumber, R.ReciptDate, C1.acc_CTopicCode'
      'FROM            ReciptItems AS Ri INNER JOIN'
      
        '                         StuffCoding ON Ri.StuffCode = StuffCodi' +
        'ng.c_StuffCode INNER JOIN'
      
        '                         Units ON StuffCoding.n_UnitCode = Units' +
        '.UnitCode INNER JOIN'
      
        '                         StuffGroups ON StuffCoding.GroupID = St' +
        'uffGroups.GroupID INNER JOIN'
      
        '                         Recipts AS R ON Ri.ReciptID = R.ReciptI' +
        'D AND Ri.ServerID = R.ServerID AND Ri.YearID = R.YearID INNER JO' +
        'IN'
      
        '                         Customers AS C1 ON R.PersonID1 = C1.Cus' +
        'tID INNER JOIN'
      
        '                         Customers AS CD ON Ri.PersonID1 = CD.Cu' +
        'stID CROSS JOIN'
      '                         Fitful'
      'WHERE        (Ri.ReciptID = 0)')
    Left = 32
    Top = 325
    object qryDetail_Item_checked: TFMTBCDField
      Tag = 3
      DisplayLabel = #1575#1606#1578#1582#1575#1576
      FieldName = '_checked'
      Precision = 20
      Size = 4
    end
    object qryDetail_ItemStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qryDetail_Itemc_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1603#1575#1604#1575
      FieldName = 'c_StuffName'
      Size = 70
    end
    object qryDetail_ItemUnitCode: TIntegerField
      Tag = 3
      DisplayLabel = #1608#1575#1581#1583
      FieldName = 'UnitCode'
    end
    object qryDetail_ItemUnitName: TStringField
      Tag = 3
      DisplayLabel = #1608#1575#1581#1583
      FieldName = 'UnitName'
      Size = 50
    end
    object qryDetail_ItemEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'Entity'
      ReadOnly = True
    end
    object qryDetail_ItemWeight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606
      FieldName = 'Weight'
      ReadOnly = True
    end
    object qryDetail_ItemPrice: TBCDField
      Tag = 3
      DisplayLabel = #1602#1610#1605#1578
      FieldName = 'Price'
      ReadOnly = True
      Precision = 19
    end
    object qryDetail_ItemItemNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'ItemNote'
      Size = 100
    end
    object qryDetail_ItemID: TFMTBCDField
      FieldName = 'ID'
      ReadOnly = True
      Precision = 26
      Size = 0
    end
    object qryDetail_ItemGroupID: TIntegerField
      FieldName = 'GroupID'
    end
    object qryDetail_ItemTotallSellPrice: TBCDField
      DisplayLabel = #1582#1575#1604#1589
      FieldName = 'TotallSellPrice'
      currency = True
      Precision = 19
    end
    object qryDetail_ItemPrefixPelak: TStringField
      DisplayLabel = #1662#1740#1588#1608#1606#1583' '#1662#1604#1575#1705
      FieldName = 'PrefixPelak'
      Size = 15
    end
    object qryDetail_ItemReciptNumber: TIntegerField
      FieldName = 'ReciptNumber'
    end
    object qryDetail_ItemReciptDate: TStringField
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryDetail_Itemacc_CTopicCode: TStringField
      DisplayLabel = #1605#1585#1705#1586#1607#1586#1740#1606#1607' '#1605#1588#1578#1585#1740' 1'
      FieldName = 'acc_CTopicCode'
      Size = 12
    end
    object qryDetail_ItemTopicCode: TLargeintField
      DisplayLabel = #1705#1583#1605#1593#1740#1606' '#1576#1583#1607#1705#1575#1585
      FieldName = 'TopicCode'
    end
    object qryDetail_ItemDetailCode: TIntegerField
      DisplayLabel = #1705#1583#1578#1601#1589#1740#1604' '#1576#1583#1607#1705#1575#1585
      FieldName = 'DetailCode'
    end
  end
  object srcDetail_Item: TDataSource
    DataSet = qryDetail_Item
    Left = 200
    Top = 341
  end
  object qryRTypes: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT  * FROM    ReciptTypes')
    Left = 444
    Top = 23
    object qryRTypesReciptType: TWordField
      DisplayLabel = #1603#1583' '#1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
      FieldName = 'ReciptType'
    end
    object qryRTypesReciptCaption: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1575#1591#1604#1575#1593#1575#1578
      FieldName = 'ReciptCaption'
      Required = True
      Size = 70
    end
  end
end

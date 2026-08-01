inherited RecallIndentF: TRecallIndentF
  Left = 360
  Top = 228
  Align = alClient
  Caption = #1601#1585#1575#1582#1608#1575#1606#1610' '#1575#1586' '#1587#1601#1575#1585#1588#1575#1578
  ClientHeight = 546
  ClientWidth = 955
  OldCreateOrder = True
  OnDestroy = FormDestroy
  ExplicitLeft = -70
  ExplicitTop = -145
  ExplicitWidth = 961
  ExplicitHeight = 575
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 955
    TabOrder = 1
    ExplicitWidth = 955
    DesignSize = (
      955
      73)
    inherited Image1: TImage
      Left = 901
      ExplicitLeft = 691
    end
    inherited lblTopic0: TLabel
      Left = 825
      Top = 6
      Width = 56
      Caption = #1575#1606#1578#1582#1575#1576' '#1601#1585#1605
      ExplicitLeft = 615
      ExplicitTop = 6
      ExplicitWidth = 56
    end
    inherited lblTopic1: TLabel
      Left = 526
      Top = 27
      Width = 355
      AutoSize = False
      Caption = 
        #1583#1585' '#1607#1585' '#1587#1591#1585' '#1603#1607' '#1605#1602#1583#1575#1585' '#1579#1576#1578' '#1588#1608#1583' '#1576#1593#1583' '#1575#1586' '#1586#1583#1606' '#1578#1575#1610#1610#1583' '#1570#1606' '#1587#1591#1585' '#1576#1607' '#1601#1585#1605' '#1575#1606#1578#1602#1575#1604 +
        ' '#1605#1610' '#1610#1575#1576#1583
      ExplicitLeft = 316
      ExplicitTop = 27
      ExplicitWidth = 355
    end
  end
  inherited pnlDown: TPanel
    Top = 509
    Width = 955
    TabOrder = 2
    ExplicitTop = 509
    ExplicitWidth = 955
    inherited btnClose: TBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 4
      Height = 29
      Align = alLeft
      Glyph.Data = {00000000}
      ModalResult = 2
      TabOrder = 5
      ExplicitLeft = 4
      ExplicitTop = 4
      ExplicitHeight = 29
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 876
      Top = 4
      Width = 75
      Height = 29
      Align = alRight
      Caption = #1578#1571#1610#1610#1600#1600#1600#1583
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 166
      Top = 4
      Width = 75
      Height = 29
      Action = actSearch
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 3
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 85
      Top = 4
      Width = 75
      Height = 29
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 4
    end
    object BitBtn5: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 4
      Width = 75
      Height = 29
      Action = actExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 2
    end
    object btnFilter: TBitBtn
      AlignWithMargins = True
      Left = 795
      Top = 4
      Width = 75
      Height = 29
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 1
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 714
      Top = 4
      Width = 75
      Height = 29
      Action = actPrint
      Align = alRight
      Caption = #1670#1575#1662'(F7)'
      TabOrder = 6
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 608
      Top = 4
      Width = 100
      Height = 29
      Action = actDBGridSelectAll
      Align = alRight
      Caption = #1575#1606#1578#1582#1575#1576' '#1607#1605#1607' '#1587#1591#1585#1607#1575
      TabOrder = 7
    end
  end
  object DBGrid1: TCedarDbgrid [2]
    Tag = 111
    Left = 0
    Top = 73
    Width = 955
    Height = 436
    Align = alClient
    Color = clCream
    DataSource = dsIndent
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
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    RowHeight = 18
    SearchPanel.Enabled = True
    SortLocal = True
    TabOrder = 0
    OnEnter = DBGrid1Enter
    OnKeyPress = DBGrid1KeyPress
    ActiveSearchPanel = False
    SelectFooterIndex = 0
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ReciptNumber'
        Footers = <>
        Width = 60
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ReciptDate'
        Footers = <>
        Width = 27
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PersonID1'
        Footers = <>
        Width = 45
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CustName'
        Footers = <>
        Width = 60
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
        Width = 53
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'StuffCode'
        Footers = <>
        Width = 32
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'c_StuffName'
        Footers = <>
        Width = 47
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'c_StuffTecInfo'
        Footers = <>
        Width = 60
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'UnitName'
        Footers = <>
        Width = 27
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Entity'
        Footers = <>
        Width = 32
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Weight'
        Footers = <>
        Width = 25
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Price'
        Footers = <>
        Width = 26
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'RemainEntity'
        Footers = <>
        Width = 58
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'RemainWeight'
        Footers = <>
        Width = 47
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'RemainPrice'
        Footers = <>
        Width = 51
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'EnterEntity'
        Footers = <>
        Width = 57
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'EnterWeight'
        Footers = <>
        Width = 47
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'EnterPrice'
        Footers = <>
        Width = 51
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ItemNote'
        Footers = <>
        Width = 52
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  inherited ActionList1: TActionList
    object actSearch: TAction
      Caption = #1580#1587#1578#1580#1608
      Hint = ' '
      ShortCut = 114
      OnExecute = actSearchExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      Hint = ' '
      ShortCut = 117
      OnExecute = actSortExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662'(F7)'
      Hint = ' '
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      Hint = ' '
      ShortCut = 8310
      OnExecute = actExcelExecute
    end
    object actSelectAll: TAction
      Caption = #1575#1606#1578#1582#1575#1576' '#1607#1605#1607
      Hint = ' '
      ShortCut = 16449
    end
    object actSlelectInverse: TAction
      Caption = #1575#1606#1578#1582#1575#1576' '#1605#1593#1603#1608#1587
      Hint = ' '
      ShortCut = 16457
    end
    object actRptCardex: TAction
      Caption = #1603#1575#1585#1583#1603#1587
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actShowpreRecipt: TAction
      Caption = #1605#1588#1575#1607#1583#1607' '#1711#1585#1583#1588
      ShortCut = 123
    end
    object actDBGridSelectAll: TAction
      Caption = #1575#1606#1578#1582#1575#1576' '#1607#1605#1607' '#1587#1591#1585#1607#1575
      ShortCut = 16449
      OnExecute = actDBGridSelectAllExecute
    end
  end
  object qryIndent: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = qryIndentAfterOpen
    BeforePost = qryIndentBeforePost
    Parameters = <
      item
        Name = 'RecallReciptType'
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = 'StuffCodeFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'StuffCodeTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'StoreIDFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'StoreIDTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'RcpNumberFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'RcpNumberTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'DateFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'DateTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearIDFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearIDTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'ReciptType'
        DataType = ftString
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'SELECT  Sefaresh.* ,'
      
        #9'  ROUND('#9'Sefaresh.Entity - isnull(Havaleh.Entity,0),5) as Remai' +
        'nEntity ,'
      
        #9' ROUND('#9'Sefaresh.Weight- isnull(Havaleh.Weight,0 ) , 5 )as Rema' +
        'inWeight ,'
      #9#9'Sefaresh.Price- isnull(Havaleh.Price,0)as RemainPrice'
      
        ', Fitful.FitfulID AS _Checked  , Fitful.FitfulID AS  EnterEntity' +
        ' , Fitful.FitfulID AS  EnterWeight  , Fitful.FitfulID AS  EnterP' +
        'rice'
      ',Sefaresh.ItemNote ,Sefaresh.SecondType'
      'From '
      #9'('
      
        #9'SELECT'#9'ReciptItems.ReciptItemID, ReciptItems.ReciptID, Recipts.' +
        'StoreID, Recipts.ReciptNumber, Recipts.ReciptDate, Recipts.Perso' +
        'nID1, '
      
        #9#9#9'Customers.CustName, ReciptItems.StuffCode, StuffCoding.c_Stuf' +
        'fName, StuffCoding.c_StuffTecInfo, '
      
        #9#9#9'Units.UnitName, SUM(ReciptItems.InputEntity + ReciptItems.Out' +
        'putEntity)AS Entity, '
      
        #9#9#9'SUM(ReciptItems.InputWeight + ReciptItems.OutputWeight) AS We' +
        'ight, '
      
        #9#9#9'SUM(ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPric' +
        'e) AS Price, ReciptTypes.ReciptCaption'
      ''
      ', Recipts.PersonID2, Customers_2.CustName AS CustName2'
      
        ', ReciptItems.WaterCo, ReciptItems.DeficitValue, ReciptItems.Tax' +
        'Co, ReciptItems.TaxValue,ReciptItems.ItemNote'
      ',ReciptItems.YearID  ,Recipts.SecondType'
      'FROM         ReciptItems INNER JOIN'
      
        '                      Recipts ON Recipts.ReciptID = ReciptItems.' +
        'ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND Recipts' +
        '.YearID = ReciptItems.YearID  INNER JOIN'
      
        '                      Customers ON Recipts.PersonID1 = Customers' +
        '.CustID INNER JOIN'
      
        '                      StuffCoding ON ReciptItems.StuffCode = Stu' +
        'ffCoding.c_StuffCode INNER JOIN'
      
        '                      Units ON StuffCoding.n_UnitCode = Units.Un' +
        'itCode INNER JOIN'
      
        '                      ReciptTypes ON Recipts.ReciptType = Recipt' +
        'Types.ReciptType'
      ''
      ' LEFT OUTER JOIN'
      
        '                      Customers AS Customers_2 ON Recipts.Person' +
        'ID2 = Customers_2.CustID'
      ''
      ''
      
        '  WHERE'#9'(Recipts.ReciptType in( :RecallReciptType ) ) AND (Recip' +
        'ts.ReciptState < 3)'
      
        '        AND (ReciptItems.StuffCode BETWEEN :StuffCodeFrom AND :S' +
        'tuffCodeTo)'
      
        '        AND (Recipts.StoreID BETWEEN :StoreIDFrom AND :StoreIDTo' +
        ')'
      
        '        AND (Recipts.ReciptNumber BETWEEN :RcpNumberFrom AND :Rc' +
        'pNumberTo)'
      '        AND (Recipts.ReciptDate BETWEEN :DateFrom AND :DateTo )'
      ''
      '        AND(Recipts.YearID BETWEEN :YearIDFrom AND :YearIDTo)'
      ''
      
        #9'GROUP BY ReciptItems.ReciptItemID,ReciptItems.ReciptID, Recipts' +
        '.StoreID, Recipts.ReciptNumber, Recipts.ReciptDate, Recipts.Pers' +
        'onID1, '
      
        #9#9#9'ReciptItems.StuffCode, Customers.CustName, StuffCoding.c_Stuf' +
        'fName, StuffCoding.c_StuffTecInfo, '
      
        #9#9#9'Units.UnitName, ReciptTypes.ReciptCaption ,ReciptItems.YearID' +
        '  ,Recipts.SecondType'
      ''
      ', Recipts.PersonID2, Customers_2.CustName '
      
        ', ReciptItems.WaterCo, ReciptItems.DeficitValue, ReciptItems.Tax' +
        'Co, ReciptItems.TaxValue,ReciptItems.ItemNote'
      ''
      #9') as Sefaresh'
      #9#9#9
      #9'left outer join'
      '            '
      #9'('
      
        #9'SELECT'#9'ReciptItems.preReciptItemID/*,Recipts.ParentReciptID*/, ' +
        'ReciptItems.StuffCode,'
      
        #9#9#9'SUM(ReciptItems.InputEntity + ReciptItems.OutputEntity) AS En' +
        'tity, '
      
        #9#9#9'SUM(ReciptItems.InputWeight + ReciptItems.OutputWeight) AS We' +
        'ight, '
      
        #9#9#9'SUM(ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPric' +
        'e) AS Price'
      '      ,ReciptItems.YearID'
      #9'FROM'#9'ReciptItems INNER JOIN'
      
        #9#9#9'Recipts ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipt' +
        's.ServerID = ReciptItems.ServerID AND Recipts.YearID = ReciptIte' +
        'ms.YearID'
      
        #9'WHERE'#9'(Recipts.ReciptType = :ReciptType )  AND (Recipts.ReciptS' +
        'tate < 3)'
      
        #9'GROUP BY ReciptItems.StuffCode/*,Recipts.ParentReciptID*/,Recip' +
        'tItems.preReciptItemID,ReciptItems.YearID'
      #9') as Havaleh'
      
        #9'on Sefaresh.ReciptItemID=Havaleh.preReciptItemID and Sefaresh.S' +
        'tuffCode=Havaleh.StuffCode and Havaleh.YearID=Sefaresh.YearID'
      ''
      ''
      ' CROSS JOIN  Fitful'
      
        'Where (Sefaresh.Entity - isnull(Havaleh.Entity,0)<>0 or Sefaresh' +
        '.Weight- isnull(Havaleh.Weight,0) <>0)'
      ''
      ''
      '')
    Left = 320
    Top = 192
    object qryIndentReciptNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1587#1601#1575#1585#1588
      FieldName = 'ReciptNumber'
      ReadOnly = True
    end
    object qryIndentReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'ReciptDate'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object qryIndentPersonID1: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1582#1585#1610#1583#1575#1585
      FieldName = 'PersonID1'
      ReadOnly = True
    end
    object qryIndentCustName: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1582#1585#1610#1583#1575#1585
      FieldName = 'CustName'
      ReadOnly = True
      Size = 120
    end
    object qryIndentStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qryIndentc_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1588#1585#1581' '#1603#1575#1604#1575
      FieldName = 'c_StuffName'
      ReadOnly = True
      Size = 150
    end
    object qryIndentc_StuffTecInfo: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1601#1606#1610
      FieldName = 'c_StuffTecInfo'
      ReadOnly = True
      Size = 30
    end
    object qryIndentUnitName: TStringField
      Tag = 3
      DisplayLabel = #1608#1575#1581#1583' '
      FieldName = 'UnitName'
      ReadOnly = True
      Size = 50
    end
    object qryIndentEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'Entity'
      ReadOnly = True
    end
    object qryIndentWeight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606
      FieldName = 'Weight'
      ReadOnly = True
    end
    object qryIndentPrice: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'Price'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryIndentRemainEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1605#1575#1606#1583#1607
      FieldName = 'RemainEntity'
      ReadOnly = True
    end
    object qryIndentRemainWeight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606' '#1605#1575#1606#1583#1607
      FieldName = 'RemainWeight'
      ReadOnly = True
    end
    object qryIndentRemainPrice: TBCDField
      Tag = 3
      DisplayLabel = #1605#1575#1606#1583#1607' '#1605#1576#1604#1594
      FieldName = 'RemainPrice'
      ReadOnly = True
      Precision = 19
    end
    object qryIndentEnterEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '
      FieldName = 'EnterEntity'
    end
    object qryIndentEnterWeight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606' '
      FieldName = 'EnterWeight'
    end
    object qryIndentEnterPrice: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'EnterPrice'
      currency = True
      Precision = 19
    end
    object qryIndentStoreID: TSmallintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1575#1606#1576#1575#1585
      FieldName = 'StoreID'
    end
    object qryIndentReciptID: TIntegerField
      Tag = 3
      FieldName = 'ReciptID'
    end
    object qryIndentReciptItemID: TIntegerField
      Tag = 3
      FieldName = 'ReciptItemID'
    end
    object qryIndentReciptCaption: TStringField
      Tag = 3
      FieldName = 'ReciptCaption'
      Size = 70
    end
    object qryIndentPersonID2: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1588#1578#1585#1610' 2'
      FieldName = 'PersonID2'
    end
    object qryIndentCustName2: TStringField
      Tag = 3
      DisplayLabel = ' '#1605#1588#1578#1585#1610' 2'
      FieldName = 'CustName2'
      Size = 60
    end
    object qryIndentWaterCo: TFloatField
      FieldName = 'WaterCo'
    end
    object qryIndentDeficitValue: TBCDField
      FieldName = 'DeficitValue'
      Precision = 19
    end
    object qryIndentTaxCo: TFloatField
      FieldName = 'TaxCo'
    end
    object qryIndentTaxValue: TBCDField
      FieldName = 'TaxValue'
      Precision = 19
    end
    object qryIndentItemNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'ItemNote'
      Size = 1500
    end
    object qryIndentSecondType: TIntegerField
      Tag = 3
      FieldName = 'SecondType'
    end
  end
  object dsIndent: TDataSource
    DataSet = qryIndent
    Left = 216
    Top = 264
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsIndent
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 584
    Top = 168
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'ReciptNumber'
      FieldName = 'ReciptNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'ReciptDate'
      FieldName = 'ReciptDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'PersonID1'
      FieldName = 'PersonID1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'CustName'
      FieldName = 'CustName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'StuffCode'
      FieldName = 'StuffCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'c_StuffName'
      FieldName = 'c_StuffName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'c_StuffTecInfo'
      FieldName = 'c_StuffTecInfo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'UnitName'
      FieldName = 'UnitName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'Entity'
      FieldName = 'Entity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'Weight'
      FieldName = 'Weight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'Price'
      FieldName = 'Price'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'RemainEntity'
      FieldName = 'RemainEntity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'RemainWeight'
      FieldName = 'RemainWeight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'RemainPrice'
      FieldName = 'RemainPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'EnterEntity'
      FieldName = 'EnterEntity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'EnterWeight'
      FieldName = 'EnterWeight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'EnterPrice'
      FieldName = 'EnterPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'StoreID'
      FieldName = 'StoreID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'ReciptID'
      FieldName = 'ReciptID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'ReciptItemID'
      FieldName = 'ReciptItemID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'ReciptCaption'
      FieldName = 'ReciptCaption'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = 'PersonID2'
      FieldName = 'PersonID2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = 'CustName2'
      FieldName = 'CustName2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField24: TppField
      FieldAlias = 'WaterCo'
      FieldName = 'WaterCo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField25: TppField
      FieldAlias = 'DeficitValue'
      FieldName = 'DeficitValue'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField26: TppField
      FieldAlias = 'TaxCo'
      FieldName = 'TaxCo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField27: TppField
      FieldAlias = 'TaxValue'
      FieldName = 'TaxValue'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
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
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\Projects\Fara\Salary\Exe\Report\rptEmployeeInfolist_Bank2.rtm'
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
    Left = 552
    Top = 288
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 25400
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 17992
        mmWidth = 197379
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCompanyName: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCompanyName'
        OnGetText = ppLblCompanyNameGetText
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
        mmLeft = 73025
        mmTop = 1058
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCaption: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCaption'
        OnGetText = ppLblCaptionGetText
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578'  '#1662#1585#1587#1606#1604
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
        mmLeft = 86519
        mmTop = 8467
        mmWidth = 24342
        BandType = 0
        LayerName = Foreground
      end
      object ppSysVarPageNo: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SysVarPageNo1'
        OnGetText = ppSysVarPageNoGetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 9790
        mmTop = 8467
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object ppLblPrintDate: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lbprintdate'
        OnGetText = ppLblPrintDateGetText
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1711#1586#1575#1585#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 9790
        mmTop = 1058
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object ppDBCalcdcCount_TextAlign: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalcdcCount_TextAlign'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 153988
        mmTop = 4233
        mmWidth = 21960
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7409
      mmPrintPosition = 0
      object ppLineDetail: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'LineDetail'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 194469
        mmTop = 0
        mmWidth = 2910
        BandType = 4
        LayerName = Foreground
      end
      object ppLin4Position: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Lin4Position'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 0
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 9525
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 0
        mmWidth = 197379
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1606#1602#1604' '#1576#1607'..'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6011
        mmLeft = 181240
        mmTop = 529
        mmWidth = 15579
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape3'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 0
        mmWidth = 197379
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
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
        Transparent = True
        mmHeight = 6085
        mmLeft = 183886
        mmTop = 529
        mmWidth = 13229
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
end

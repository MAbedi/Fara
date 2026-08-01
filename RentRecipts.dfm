inherited RentReciptsF: TRentReciptsF
  Left = 413
  Top = 208
  Caption = #1579#1576#1578' '#1603#1585#1575#1610#1607' '#1581#1605#1604' '#1608' '#1607#1586#1610#1606#1607' '#1607#1575#1610' '#1578#1587#1607#1610#1605#1610
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    inherited BtnReject: TBitBtn
      TabOrder = 3
    end
    object btnSearch_: TBitBtn
      AlignWithMargins = True
      Left = 85
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSearch_
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
      ExplicitLeft = 96
      ExplicitTop = 9
      ExplicitHeight = 25
    end
    object btnSort: TBitBtn
      AlignWithMargins = True
      Left = 166
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 5
      ExplicitLeft = 175
      ExplicitTop = 9
      ExplicitHeight = 25
    end
    object btnSendExel: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSendExel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 6
      ExplicitLeft = 254
      ExplicitTop = 9
      ExplicitHeight = 25
    end
    object btnShow: TBitBtn
      AlignWithMargins = True
      Left = 630
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actShow
      Align = alRight
      Caption = #1606#1605#1575#1610#1588
      TabOrder = 2
      ExplicitLeft = 617
      ExplicitHeight = 25
    end
    object btnRoll: TBitBtn
      AlignWithMargins = True
      Left = 549
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actRoll
      Align = alRight
      Caption = #1579#1576#1578
      TabOrder = 1
      ExplicitLeft = 538
      ExplicitHeight = 25
    end
    object btnFilter: TBitBtn
      AlignWithMargins = True
      Left = 711
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 0
      ExplicitLeft = 696
      ExplicitTop = 6
      ExplicitHeight = 25
    end
  end
  inherited Panel2: TPanel
    inherited lblCaption: TLabel
      Height = 16
      ExplicitLeft = 674
    end
    object cmbReciptType: TComboBox
      Left = 10
      Top = 22
      Width = 249
      Height = 21
      Style = csDropDownList
      Color = 13434879
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnChange = cmbReciptTypeChange
      OnEnter = cmbReciptTypeEnter
    end
  end
  inherited Panel3: TPanel
    object lblReport: TLabel
      Left = 2
      Top = 2
      Width = 782
      Height = 13
      Align = alTop
      Alignment = taCenter
      BiDiMode = bdRightToLeft
      Caption = #1604#1610#1587#1578' '#1575#1591#1604#1575#1593#1575#1578
      Color = clGradientInactiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      Transparent = False
      ExplicitWidth = 77
    end
    object Panel1: TPanel
      Left = 2
      Top = 158
      Width = 782
      Height = 53
      Align = alTop
      TabOrder = 1
      ExplicitWidth = 786
      DesignSize = (
        782
        53)
      object Label1: TLabel
        Left = 261
        Top = 8
        Width = 56
        Height = 13
        Alignment = taRightJustify
        Caption = #1606#1581#1608#1607' '#1578#1587#1607#1610#1605
      end
      object Label2: TLabel
        Left = 714
        Top = 7
        Width = 20
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1605#1576#1604#1594
        ExplicitLeft = 718
      end
      object Label3: TLabel
        Left = 714
        Top = 32
        Width = 40
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1578#1608#1590#1610#1581#1575#1578
        ExplicitLeft = 718
      end
      object Label4: TLabel
        Left = 261
        Top = 32
        Width = 40
        Height = 13
        Alignment = taRightJustify
        Caption = #1575#1585#1587#1575#1604' '#1576#1607
      end
      object edtPrice: TEdit
        Left = 561
        Top = 3
        Width = 143
        Height = 21
        Anchors = [akTop, akRight]
        Color = 13236955
        TabOrder = 0
        Text = '1'
        OnExit = edtPriceExit
        ExplicitLeft = 565
      end
      object cmbAllotment: TComboBox
        Left = 8
        Top = 4
        Width = 246
        Height = 21
        Style = csDropDownList
        Color = 14680063
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 0
        ParentFont = False
        TabOrder = 1
        Text = #1605#1576#1604#1594
        OnChange = cmbAllotmentChange
        Items.Strings = (
          #1605#1576#1604#1594
          #1605#1602#1583#1575#1585
          #1605#1602#1583#1575#1585'2'
          #1578#1587#1607#1610#1605' '#1576#1585' '#1575#1587#1575#1587' '#1590#1585#1610#1576' '#1608#1575#1581#1583' '#1605#1588#1578#1585#1603' '#1590#1585#1576#1583#1585' '#1605#1602#1583#1575#1585
          #1578#1587#1607#1610#1605' '#1576#1585' '#1575#1587#1575#1587' '#1590#1585#1610#1576' '#1608#1575#1581#1583' '#1605#1588#1578#1585#1603' '#1590#1585#1576#1583#1585' '#1605#1602#1583#1575#1585'2')
      end
      object edtNote: TEdit
        Left = 339
        Top = 28
        Width = 366
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 3
        ExplicitWidth = 370
      end
      object cmbReciptType2: TComboBox
        Left = 8
        Top = 28
        Width = 246
        Height = 21
        Style = csDropDownList
        Color = 14680063
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnChange = cmbReciptTypeChange
        OnEnter = cmbReciptTypeEnter
      end
    end
    object DBGrid1: TCedarDbgrid
      Left = 2
      Top = 211
      Width = 782
      Height = 210
      Align = alClient
      Color = clCream
      DataSource = srcReciptsItems
      DynProps = <>
      Flat = True
      FooterRowCount = 1
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
      IndicatorTitle.ShowDropDownSign = True
      IndicatorTitle.TitleButton = True
      OddRowColor = clWhite
      Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      RowHeight = 18
      SearchPanel.Enabled = True
      SortLocal = True
      SumList.Active = True
      TabOrder = 2
      OnDblClick = DBGrid1DblClick
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'StuffCode'
          Footers = <>
          Width = 88
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'c_StuffName'
          Footers = <>
          Width = 94
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'UnitName'
          Footers = <>
          Width = 53
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'StuffpublicPercent'
          Footers = <>
          Width = 69
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'InputEntity'
          Footer.FieldName = 'InputEntity'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 63
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'OutputEntity'
          Footer.FieldName = 'OutputEntity'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 94
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TotalInputPrice'
          Footer.FieldName = 'TotalInputPrice'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 94
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_CalPrice'
          Footer.FieldName = '_CalPrice'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 94
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object DBGrid2: TCedarDbgrid
      Left = 2
      Top = 15
      Width = 782
      Height = 143
      Align = alTop
      Color = clCream
      DataSource = srcRecipts
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
      IndicatorTitle.ShowDropDownSign = True
      IndicatorTitle.TitleButton = True
      OddRowColor = clWhite
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      RowHeight = 18
      SearchPanel.Enabled = True
      SortLocal = True
      TabOrder = 0
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
          FieldName = 'ReciptState'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'StoreID'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'c_StoreName'
          Footers = <>
          Width = 64
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  inherited ActionList: TActionList
    Left = 333
    Top = 122
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actSendExel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendExelExecute
    end
    object actShow: TAction
      Caption = #1606#1605#1575#1610#1588
      OnExecute = actShowExecute
    end
    object actRoll: TAction
      Caption = #1579#1576#1578
      OnExecute = actRollExecute
    end
    object actFilter: TAction
      Caption = #1601#1610#1604#1578#1585
      OnExecute = actFilterExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 430
    Top = 10
  end
  object qryRecipts: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterScroll = qryReciptsAfterScroll
    Parameters = <
      item
        Name = 'type'
        DataType = ftWord
        Precision = 3
        Size = 1
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
      end
      item
        Name = 'NoFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'NoTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'StoreFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'StoreTo'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'Custfrom'
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
      end
      item
        Name = 'YearIDFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'YearIDTo'
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
      end>
    SQL.Strings = (
      
        'SELECT     Recipts.ReciptNumber, Recipts.AidDate, Recipts.AidNum' +
        'ber, Recipts.ParentReciptID, Recipts.ReciptDate, Recipts.PersonI' +
        'D1, Customers.CustName, '
      
        '                      Recipts.ReciptState, Recipts.StoreID, Stor' +
        'es.c_StoreName, Recipts.ReciptID,Recipts.ServerID , Recipts.Year' +
        'ID'
      'FROM         Recipts INNER JOIN'
      
        '                      Customers ON Recipts.PersonID1 = Customers' +
        '.CustID INNER JOIN'
      
        '                      Stores ON Recipts.StoreID = Stores.n_Store' +
        'ID'
      'WHERE     (NOT (Recipts.ReciptID IN'
      '                          (SELECT     ReciptID'
      '                             FROM         Recipts AS Recipts_1'
      
        '                             WHERE     (ReciptType = 42)AND ( Se' +
        'rverID = Recipts.ServerID )AND ( YearID = Recipts.YearID )'
      ''
      ''
      
        '))) AND (Recipts.ReciptState <> 3) AND (Recipts.ReciptType = :ty' +
        'pe) AND (Recipts.ReciptDate BETWEEN :DateFrom AND :DateTo) AND '
      
        '                      (Recipts.ReciptNumber BETWEEN :NoFrom AND ' +
        ':NoTo) AND (Recipts.StoreID BETWEEN :StoreFrom AND :StoreTo)'
      ' AND (Recipts.PersonID1 BETWEEN :Custfrom AND :CustTo)'
      'AND Recipts.YearID between :YearIDFrom and :YearIDTo'
      'AND ( Recipts.ServerID = :ServerID )')
    Left = 108
    Top = 109
    object qryReciptsReciptNumber: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607
      FieldName = 'ReciptNumber'
    end
    object qryReciptsReciptDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryReciptsPersonID1: TIntegerField
      DisplayLabel = #1603#1583' '#1601#1585#1608#1588#1606#1583#1607
      FieldName = 'PersonID1'
    end
    object qryReciptsCustName: TStringField
      DisplayLabel = #1606#1575#1605' '#1601#1585#1608#1588#1606#1583#1607
      FieldName = 'CustName'
      Size = 120
    end
    object qryReciptsReciptState: TWordField
      DisplayLabel = #1608#1590#1593#1610#1578
      FieldName = 'ReciptState'
      OnGetText = qryReciptsReciptStateGetText
    end
    object qryReciptsStoreID: TSmallintField
      DisplayLabel = #1603#1583' '#1575#1606#1576#1575#1585
      FieldName = 'StoreID'
    end
    object qryReciptsc_StoreName: TStringField
      DisplayLabel = #1606#1575#1605' '#1575#1606#1576#1575#1585
      FieldName = 'c_StoreName'
      Size = 70
    end
    object qryReciptsReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryReciptsAidNumber: TStringField
      FieldName = 'AidNumber'
      Size = 40
    end
    object qryReciptsAidDate: TStringField
      FieldName = 'AidDate'
      FixedChar = True
      Size = 10
    end
    object qryReciptsParentReciptID: TIntegerField
      FieldName = 'ParentReciptID'
    end
    object qryReciptsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryReciptsYearID: TIntegerField
      FieldName = 'YearID'
    end
  end
  object srcRecipts: TDataSource
    DataSet = qryRecipts
    Left = 191
    Top = 145
  end
  object qryReciptItems: TADOQuery
    AutoCalcFields = False
    Connection = DmF.adcBSell
    CursorType = ctStatic
    OnCalcFields = qryReciptItemsCalcFields
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
      end>
    SQL.Strings = (
      
        'SELECT     ReciptItems.StuffCode, StuffCoding.c_StuffName, Units' +
        '.UnitName, ReciptItems.InputEntity, ReciptItems.OutputEntity, Re' +
        'ciptItems.TotalInputPrice,'
      
        'StuffCoding.StuffpublicPercent,(StuffCoding.StuffpublicPercent*R' +
        'eciptItems.InputEntity) as multiInput,(StuffCoding.StuffpublicPe' +
        'rcent*ReciptItems.OutPutEntity) as multiOutput'
      'FROM         ReciptItems INNER JOIN'
      
        '                      StuffCoding ON ReciptItems.StuffCode = Stu' +
        'ffCoding.c_StuffCode INNER JOIN'
      
        '                      Units ON StuffCoding.n_UnitCode = Units.Un' +
        'itCode'
      'WHERE     (ReciptItems.ReciptID = :ReciptID)'
      'AND YearID = :YearID'
      'AND ( ServerID = :ServerID )')
    Left = 237
    Top = 323
    object qryReciptItemsStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qryReciptItemsc_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1603#1575#1604#1575
      FieldName = 'c_StuffName'
      Size = 150
    end
    object qryReciptItemsUnitName: TStringField
      Tag = 3
      DisplayLabel = #1608#1575#1581#1583
      FieldName = 'UnitName'
      Size = 50
    end
    object qryReciptItemsStuffpublicPercent: TFloatField
      DisplayLabel = #1590#1585#1610#1576
      FieldName = 'StuffpublicPercent'
    end
    object qryReciptItemsInputEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'InputEntity'
      currency = True
    end
    object qryReciptItemsOutputEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1600#1602#1583#1575#1585'2'
      FieldName = 'OutputEntity'
      currency = True
    end
    object qryReciptItemsTotalInputPrice: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594'- '#1585#1610#1575#1604
      FieldName = 'TotalInputPrice'
      currency = True
      Precision = 19
    end
    object qryReciptItems_CalField: TCurrencyField
      DisplayLabel = #1605#1576#1604#1594' '#1578#1587#1607#1610#1605
      FieldKind = fkCalculated
      FieldName = '_CalPrice'
      Calculated = True
    end
    object qryReciptItemsmultiInput: TFloatField
      FieldName = 'multiInput'
      ReadOnly = True
    end
    object qryReciptItemsmultiOutput: TFloatField
      FieldName = 'multiOutput'
      ReadOnly = True
    end
  end
  object srcReciptsItems: TDataSource
    DataSet = qryReciptItems
    Left = 124
    Top = 319
  end
end

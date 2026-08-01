inherited RecallBranchChecksF: TRecallBranchChecksF
  Left = 411
  Top = 127
  ActiveControl = frServerName1.cmbServerName
  Caption = #1601#1585#1575#1582#1608#1575#1606#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1582#1586#1575#1606#1607' '#1583#1575#1585#1610' '#1575#1586' '#1588#1593#1576' '#1608' '#1606#1605#1575#1610#1606#1583#1711#1610' '#1607#1575
  ClientWidth = 809
  ExplicitWidth = 817
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 314
    Width = 809
    ExplicitTop = 314
    ExplicitWidth = 809
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
      TabOrder = 1
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
      TabOrder = 2
    end
    object BitBtn4: TBitBtn
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
      TabOrder = 3
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 487
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSelectAll
      Align = alRight
      Caption = #1575#1606#1578#1582#1575#1576' '#1607#1605#1607
      TabOrder = 4
    end
    object BitBtn7: TBitBtn
      AlignWithMargins = True
      Left = 649
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actMoveBaseInfo
      Align = alRight
      Caption = #1606#1602#1604#8207#8207#1575#1591#1604#1575#1593#1575#1578#8207#1662#1575#1610#1607
      TabOrder = 5
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 730
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 6
    end
    object BitBtn8: TBitBtn
      AlignWithMargins = True
      Left = 406
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSlelectInverse
      Align = alRight
      Caption = #1575#1606#1578#1582#1575#1576' '#1605#1593#1603#1608#1587
      TabOrder = 7
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 568
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actMove
      Align = alRight
      Caption = #1575#1606#1578#1602#1575#1604
      TabOrder = 8
    end
    object BitBtn9: TBitBtn
      AlignWithMargins = True
      Left = 328
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actShift
      Align = alLeft
      Caption = #1570#1605#1575#1583#1607#8207#1587#1575#1586#1610#8207#1576#1575#1606#1603
      TabOrder = 9
    end
  end
  inherited Panel2: TPanel
    Width = 809
    Height = 59
    ExplicitWidth = 809
    ExplicitHeight = 59
    DesignSize = (
      809
      59)
    inherited ImgTemplate: TImage
      Left = 804
      ExplicitLeft = 804
    end
    inherited lblCaption: TLabel
      Left = 701
      Height = 39
      ExplicitLeft = 701
    end
    inline frServerName1: TfrServerName
      Left = 1
      Top = 1
      Width = 664
      Height = 57
      Align = alLeft
      TabOrder = 0
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 664
      ExplicitHeight = 57
      inherited Panel1: TPanel
        Width = 664
        ExplicitWidth = 664
        inherited SpeedButton1: TSpeedButton
          Left = 638
          ExplicitLeft = 471
        end
        inherited cmbServerName: TComboBox
          Width = 561
          ExplicitWidth = 561
        end
      end
      inherited Panel2: TPanel
        Width = 664
        Height = 27
        ExplicitWidth = 664
        ExplicitHeight = 27
        inherited Label2: TLabel
          Left = 565
          Height = 18
          ExplicitLeft = 566
          ExplicitHeight = 18
        end
        inherited SpeedButton2: TSpeedButton
          Height = 21
        end
        inherited cmbBankName: TComboBox
          Width = 527
          OnChange = frServerName1cmbBankNameChange
          ExplicitLeft = 4
          ExplicitWidth = 556
        end
      end
    end
  end
  inherited Panel3: TPanel
    Top = 59
    Width = 809
    Height = 255
    ExplicitTop = 59
    ExplicitWidth = 809
    ExplicitHeight = 255
    object pnlLblL: TPanel
      Left = 2
      Top = 2
      Width = 805
      Height = 15
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        #1583#1585' '#1589#1608#1585#1578#1610#1603#1607' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1578#1594#1610#1610#1585' '#1603#1585#1583#1607' '#1576#1575#1588#1583' '#1548' '#1604#1575#1586#1605' '#1575#1587#1578' '#1602#1576#1604' '#1575#1586' '#1575#1606#1578#1602#1575#1604 +
        ' '#1548' '#1575#1606#1578#1602#1575#1604' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1585#1575' '#1576#1586#1606#1610#1583' .'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object LblLimit: TLabel
        Left = 1
        Top = 1
        Width = 803
        Height = 13
        Align = alTop
        BiDiMode = bdLeftToRight
        Caption = #1593#1606#1608#1575#1606' '#1601#1585#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        ExplicitWidth = 46
      end
    end
    object DBGrid2: TCedarDbgrid
      Left = 2
      Top = 17
      Width = 505
      Height = 236
      Align = alClient
      Color = clCream
      DataSource = SrcTypesItems
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
      HorzScrollBar.ExtraPanel.Visible = True
      IndicatorTitle.ShowDropDownSign = True
      IndicatorTitle.TitleButton = True
      OddRowColor = clGradientInactiveCaption
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      RowHeight = 18
      SearchPanel.Enabled = True
      SearchPanel.FilterOnTyping = True
      SortLocal = True
      TabOrder = 1
      OnDblClick = DBGrid2DblClick
      OnKeyDown = DBGrid2KeyDown
      OnMouseDown = DBGrid2MouseDown
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_checked'
          Footers = <>
          Width = 57
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = #1588#1605#1575#1585#1607#8207#1601#1585#1605
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = #1606#1608#1593#8207#1670#1603
          Footers = <>
          Width = 85
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = #1578#1575#1585#1610#1582#8207#1601#1585#1605
          Footers = <>
          Width = 62
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = #1603#1583#1589#1606#1583#1608#1602#1583#1575#1585
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = #1589#1606#1583#1608#1602#1583#1575#1585
          Footers = <>
          Width = 119
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object DBGrid1: TCedarDbgrid
      Left = 507
      Top = 17
      Width = 300
      Height = 236
      Align = alRight
      Color = clCream
      DataSource = SrcTypes
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
      HorzScrollBar.ExtraPanel.Visible = True
      IndicatorTitle.ShowDropDownSign = True
      IndicatorTitle.TitleButton = True
      OddRowColor = clGradientInactiveCaption
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      RowHeight = 18
      SearchPanel.Enabled = True
      SearchPanel.FilterOnTyping = True
      SortLocal = True
      TabOrder = 0
      OnKeyPress = DBGrid1KeyPress
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'FormCaption'
          Footers = <>
          Width = 274
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object StatusBar1: TStatusBar [3]
    Left = 0
    Top = 498
    Width = 809
    Height = 19
    BiDiMode = bdRightToLeft
    Panels = <
      item
        Width = 150
      end
      item
        Width = 150
      end
      item
        Width = 150
      end
      item
        Width = 100
      end
      item
        Width = 100
      end
      item
        Width = 50
      end>
    ParentBiDiMode = False
  end
  object Panel1: TPanel [4]
    Left = 0
    Top = 355
    Width = 809
    Height = 143
    Align = alBottom
    TabOrder = 4
    object LblMoveBaseInfo: TLabel
      Left = 1
      Top = 1
      Width = 807
      Height = 13
      Align = alTop
      Caption = #1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1602#1575#1576#1604' '#1575#1606#1578#1602#1575#1604' '#1575#1586
      ExplicitLeft = 692
      ExplicitWidth = 116
    end
    object lslTableName: TListBox
      Left = 508
      Top = 14
      Width = 300
      Height = 128
      Align = alRight
      Color = 13236955
      ItemHeight = 13
      TabOrder = 0
      OnClick = lslTableNameClick
    end
    object DBGrid3: TCedarDbgrid
      Left = 1
      Top = 14
      Width = 507
      Height = 128
      Align = alClient
      Color = clCream
      DataSource = srcShow
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
      HorzScrollBar.ExtraPanel.Visible = True
      IndicatorTitle.ShowDropDownSign = True
      IndicatorTitle.TitleButton = True
      OddRowColor = clGradientInactiveCaption
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      RowHeight = 18
      SearchPanel.Enabled = True
      SearchPanel.FilterOnTyping = True
      SortLocal = True
      TabOrder = 1
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  inherited ActionList: TActionList
    Left = 368
    Top = 144
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actSendExel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendExelExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actSelectAll: TAction
      Caption = #1575#1606#1578#1582#1575#1576' '#1607#1605#1607
      OnExecute = actSelectAllExecute
    end
    object actSlelectInverse: TAction
      Caption = #1575#1606#1578#1582#1575#1576' '#1605#1593#1603#1608#1587
      OnExecute = actSlelectInverseExecute
    end
    object actMove: TAction
      Caption = #1575#1606#1578#1602#1575#1604
      OnExecute = actMoveExecute
    end
    object actMoveBaseInfo: TAction
      Caption = #1606#1602#1604#8207#8207#1575#1591#1604#1575#1593#1575#1578#8207#1662#1575#1610#1607
      OnExecute = actMoveBaseInfoExecute
    end
    object actShift: TAction
      Caption = #1570#1605#1575#1583#1607#8207#1587#1575#1586#1610#8207#1576#1575#1606#1603
      OnExecute = actShiftExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 552
    Top = 161
  end
  object SrcTypes: TDataSource
    DataSet = qryTypes
    Left = 664
    Top = 220
  end
  object qryTypes: TADOQuery
    Connection = adcSrc
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryTypesAfterScroll
    Parameters = <
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
        Name = 'NumberFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'NumberTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'SellsMethodFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'SellsMethodTo'
        Size = -1
        Value = Null
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
      end
      item
        Name = 'FormTypeFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'FormTypeTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'PersonID1From'
        Size = -1
        Value = Null
      end
      item
        Name = 'PersonID1To'
        Size = -1
        Value = Null
      end
      item
        Name = 'PersonID2From'
        Size = -1
        Value = Null
      end
      item
        Name = 'PersonID2To'
        Size = -1
        Value = Null
      end
      item
        Name = 'PayTypesFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'PayTypesTo'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     FormTypes.FormType, FormTypes.FormCaption, 0 AS Kind,' +
        ' FormTypes.Customer1Label, FormTypes.Customer2Lable'
      'FROM         Forms INNER JOIN'
      
        '                      FormTypes ON Forms.FormType = FormTypes.Fo' +
        'rmType'
      'WHERE     (Forms.FormDate BETWEEN  :DateFrom AND :DateTo )'
      ''
      'AND (Forms.FormNumber BETWEEN :NumberFrom AND :NumberTo)'
      
        'AND (Forms.SellsMethod  BETWEEN :SellsMethodFrom AND :SellsMetho' +
        'dTo)'
      
        'AND (Forms.SellsEmporium  BETWEEN :SellsEmporiumFrom AND :SellsE' +
        'mporiumTo)'
      'AND (Forms.FormType BETWEEN :FormTypeFrom AND :FormTypeTo)'
      ''
      'AND (Forms.CustomerID1 BETWEEN :PersonID1From AND :PersonID1To)'
      'AND (Forms.CustomerID2 BETWEEN :PersonID2From AND :PersonID2To)'
      'AND (Forms.PayTypes BETWEEN :PayTypesFrom AND :PayTypesTo)'
      ''
      ''
      ''
      
        'GROUP BY FormTypes.FormType, FormTypes.FormCaption, FormTypes.Cu' +
        'stomer1Label, FormTypes.Customer2Lable'
      'ORDER BY FormTypes.FormType')
    Left = 752
    Top = 188
    object qryTypesFormType: TWordField
      FieldName = 'FormType'
    end
    object qryTypesFormCaption: TStringField
      DisplayLabel = #1606#1575#1605' '#1601#1585#1605
      FieldName = 'FormCaption'
      Size = 50
    end
    object qryTypesKind: TIntegerField
      FieldName = 'Kind'
      ReadOnly = True
    end
    object qryTypesCustomer1Label: TStringField
      FieldName = 'Customer1Label'
      Size = 50
    end
    object qryTypesCustomer2Lable: TStringField
      FieldName = 'Customer2Lable'
      Size = 50
    end
  end
  object qryTypesItems: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = qryTypesItemsAfterOpen
    Parameters = <
      item
        Name = 'Bsell.dbo.Forms'
        Size = -1
        Value = Null
      end
      item
        Name = 'Bsell.dbo.FormTypes'
        Size = -1
        Value = Null
      end
      item
        Name = 'Bsell.dbo.Customers'
        Size = -1
        Value = Null
      end
      item
        Name = 'Type'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 0
      end
      item
        Name = 'DateFrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '0'
      end
      item
        Name = 'DateTo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '0'
      end
      item
        Name = 'NumberFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'NumberTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'SellsMethodFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'SellsMethodTo'
        Size = -1
        Value = Null
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
      end
      item
        Name = 'PersonID1From'
        Size = -1
        Value = Null
      end
      item
        Name = 'PersonID1To'
        Size = -1
        Value = Null
      end
      item
        Name = 'PersonID2From'
        Size = -1
        Value = Null
      end
      item
        Name = 'PersonID2To'
        Size = -1
        Value = Null
      end
      item
        Name = 'PayTypesFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'PayTypesTo'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     Forms.FormNumber AS ['#1588#1605#1575#1585#1607#8207#1601#1585#1605'], FormTypes.FormCaptio' +
        'n AS ['#1606#1608#1593#8207#1670#1603'], Forms.FormDate AS ['#1578#1575#1585#1610#1582#8207#1601#1585#1605'], Forms.CustomerID1 ' +
        'AS '#1603#1583#1589#1606#1583#1608#1602#1583#1575#1585', '
      
        '                      Customers_1.CustName AS '#1589#1606#1583#1608#1602#1583#1575#1585', Forms.Fo' +
        'rmID, Forms.ServerID, Forms.YearID'
      'FROM         :Bsell.dbo.Forms AS Forms INNER JOIN'
      
        '                      :Bsell.dbo.FormTypes AS FormTypes ON Forms' +
        '.FormType = FormTypes.FormType LEFT OUTER JOIN'
      
        '                      Forms AS Forms_1 ON Forms.FormID = Forms_1' +
        '.FormID AND Forms.ServerID = Forms_1.ServerID AND '
      
        '                      Forms.YearID = Forms_1.YearID LEFT OUTER J' +
        'OIN'
      
        '                      :Bsell.dbo.Customers AS Customers_1 ON For' +
        'ms.CustomerID1 = Customers_1.CustID'
      
        'WHERE     (Forms.FormType IN ( :Type  )) AND (Forms_1.FormID IS ' +
        'NULL)'
      ''
      'AND (Forms.FormDate BETWEEN :DateFrom  AND :DateTo)'
      ''
      'AND  (Forms.FormNumber BETWEEN :NumberFrom AND :NumberTo)'
      
        'AND (Forms.SellsMethod  BETWEEN :SellsMethodFrom AND :SellsMetho' +
        'dTo)'
      
        'AND (Forms.SellsEmporium  BETWEEN :SellsEmporiumFrom AND :SellsE' +
        'mporiumTo)'
      'AND (Forms.CustomerID1 BETWEEN :PersonID1From AND :PersonID1To)'
      'AND (Forms.CustomerID2 BETWEEN :PersonID2From AND :PersonID2To)'
      'AND (Forms.PayTypes BETWEEN :PayTypesFrom AND :PayTypesTo)')
    Left = 208
    Top = 145
  end
  object SrcTypesItems: TDataSource
    DataSet = cliTypesItems
    Left = 224
    Top = 209
  end
  object cliTypesItems: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 72
    Top = 208
    object cliTypesItems_checked: TBooleanField
      DisplayLabel = #1575#1606#1578#1582#1575#1576
      FieldKind = fkInternalCalc
      FieldName = '_checked'
    end
    object cliTypesItemsCDSDesigner: TIntegerField
      Tag = 3
      FieldName = #1588#1605#1575#1585#1607#8207#1601#1585#1605
    end
    object cliTypesItemsCDSDesigner2: TStringField
      Tag = 3
      FieldName = #1606#1608#1593#8207#1670#1603
      Size = 50
    end
    object cliTypesItemsCDSDesigner3: TStringField
      Tag = 3
      FieldName = #1578#1575#1585#1610#1582#8207#1601#1585#1605
      FixedChar = True
      Size = 10
    end
    object cliTypesItemsCDSDesigner4: TIntegerField
      Tag = 3
      FieldName = #1603#1583#1589#1606#1583#1608#1602#1583#1575#1585
    end
    object cliTypesItemsCDSDesigner5: TStringField
      Tag = 3
      FieldName = #1589#1606#1583#1608#1602#1583#1575#1585
      Size = 60
    end
    object cliTypesItemsFormID: TIntegerField
      FieldName = 'FormID'
    end
    object cliTypesItemsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object cliTypesItemsYearID: TIntegerField
      FieldName = 'YearID'
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = qryTypesItems
    Left = 104
    Top = 152
  end
  object qryMove: TADOQuery
    Connection = DmF.adcBSell
    Parameters = <>
    Left = 648
    Top = 157
  end
  object qryItems: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT  * FROM      FormItems'
      'WHERE     ( FormItemID= 0)')
    Left = 333
    Top = 225
  end
  object qryForms: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *  FROM     Forms'
      'WHERE     ( FormID = 0)')
    Left = 438
    Top = 161
  end
  object adcSrc: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=tycedar;Persist Security Info=True;' +
      'User ID=FaraUser;Initial Catalog=Bsell_Bidestan88;Data Source=AB' +
      'EDI'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    AfterConnect = adcSrcAfterConnect
    Left = 291
    Top = 162
  end
  object qrySrc: TADOQuery
    Connection = adcSrc
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *  FROM     Forms'
      'WHERE     ( FormiD = 0)')
    Left = 406
    Top = 233
  end
  object srcShow: TDataSource
    DataSet = qryShow
    Left = 184
    Top = 409
  end
  object qryShow: TADOQuery
    Connection = DmF.adcBSell
    Parameters = <>
    Left = 288
    Top = 413
  end
  object qrySeverable: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT  * FROM      Severable'
      'WHERE     ( FormItemID= 0)')
    Left = 381
    Top = 409
  end
end

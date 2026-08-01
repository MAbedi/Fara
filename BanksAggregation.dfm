inherited BanksAggregationF: TBanksAggregationF
  Left = 445
  Top = 214
  Caption = 'BanksAggregation'
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    inherited BtnReject: TBitBtn
      Left = 5
    end
    object BitBtn5: TBitBtn
      Left = 82
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 1
    end
    object BitBtn6: TBitBtn
      Left = 160
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 2
    end
    object BitBtn4: TBitBtn
      Left = 237
      Top = 8
      Width = 75
      Height = 25
      Action = actSendExel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 3
    end
    object BitBtn2: TBitBtn
      Left = 470
      Top = 8
      Width = 75
      Height = 25
      Action = actSelectAll
      Anchors = [akRight, akBottom]
      Caption = #1575#1606#1578#1582#1575#1576' '#1607#1605#1607
      TabOrder = 4
    end
    object BitBtn7: TBitBtn
      Left = 625
      Top = 8
      Width = 75
      Height = 25
      Action = actMoveBaseInfo
      Anchors = [akRight, akBottom]
      Caption = #1606#1602#1604#8207#8207#1575#1591#1604#1575#1593#1575#1578#8207#1662#1575#1610#1607
      TabOrder = 5
    end
    object BitBtn3: TBitBtn
      Left = 703
      Top = 8
      Width = 75
      Height = 25
      Action = actFilter
      Anchors = [akRight, akBottom]
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 6
    end
    object BitBtn8: TBitBtn
      Left = 392
      Top = 8
      Width = 75
      Height = 25
      Action = actSlelectInverse
      Anchors = [akRight, akBottom]
      Caption = #1575#1606#1578#1582#1575#1576' '#1605#1593#1603#1608#1587
      TabOrder = 7
    end
    object BitBtn1: TBitBtn
      Left = 547
      Top = 8
      Width = 75
      Height = 25
      Action = actMove
      Anchors = [akRight, akBottom]
      Caption = #1575#1606#1578#1602#1575#1604
      TabOrder = 8
    end
    object BitBtn9: TBitBtn
      Left = 315
      Top = 8
      Width = 75
      Height = 25
      Action = actShift
      Caption = #1570#1605#1575#1583#1607#8207#1587#1575#1586#1610#8207#1576#1575#1606#1603
      TabOrder = 9
    end
  end
  inherited Panel2: TPanel
    inherited lblCaption: TLabel
      Top = 10
    end
    object LblLimit: TLabel
      Left = 680
      Top = 30
      Width = 46
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1593#1606#1608#1575#1606' '#1601#1585#1605
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Image2: TImage
      Left = 352
      Top = 8
      Width = 16
      Height = 16
      AutoSize = True
      Picture.Data = {
        07544269746D617036030000424D360300000000000036000000280000001000
        0000100000000100180000000000000300000000000000000000000000000000
        0000F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFF
        F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1
        E2EFF1E2EFF1E2EFF199A8ACF0FBFFF0FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF646F7199A8ACF0FBFFF0FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF646F7199A8ACF0FBFFF0FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF646F7199A8ACF0FBFFF0FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF646F7199A8ACF0FBFFF0FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1646F71646F71646F71646F71646F71646F71646F71
        646F71646F71646F7199A8ACF0FBFFF0FBFFF0FBFFFFFFFF99A8AC99A8AC99A8
        AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8ACF0FBFFF0
        FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFF
        F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FB
        FFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0
        FBFF}
      Visible = False
    end
    object Image3: TImage
      Left = 384
      Top = 8
      Width = 14
      Height = 15
      AutoSize = True
      Picture.Data = {
        07544269746D6170CA020000424DCA0200000000000036000000280000000E00
        00000F0000000100180000000000940200000000000000000000000000000000
        0000F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFF
        F0FBFFF0FBFFF0FBFFF0FBFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FBFF0000FFFFFFE2EFF1
        E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF199A8
        ACF0FBFF0000FFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF646F7199A8ACF0FBFF0000FFFFFFE2EFF1FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF008000FFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFF0000FFFF
        FFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFF008000008000008000FFFFFFFFFFFF64
        6F7199A8ACF0FBFF0000FFFFFFE2EFF1FFFFFFFFFFFFFFFFFF00800000800000
        8000008000008000FFFFFF646F7199A8ACF0FBFF0000FFFFFFE2EFF1FFFFFFFF
        FFFF008000008000008000FFFFFF008000008000FFFFFF646F7199A8ACF0FBFF
        0000FFFFFFE2EFF1FFFFFF008000008000008000FFFFFFFFFFFFFFFFFF008000
        FFFFFF646F7199A8ACF0FBFF0000FFFFFFE2EFF1FFFFFF008000008000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFF0000FFFFFFE2EFF1
        FFFFFF008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8
        ACF0FBFF0000FFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF646F7199A8ACF0FBFF0000FFFFFFE2EFF1646F71646F71646F
        71646F71646F71646F71646F71646F71646F71646F7199A8ACF0FBFF0000FFFF
        FF99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
        A8AC99A8ACF0FBFF0000F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0
        FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFF0000}
      Visible = False
    end
  end
  inherited Panel3: TPanel
    Left = 185
    Width = 597
    Height = 409
    object DBGrid1: TDBGrid
      Left = 407
      Top = 19
      Width = 188
      Height = 245
      Align = alRight
      Color = clCream
      DataSource = SrcTypes
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Caption'
          Width = 152
          Visible = True
        end>
    end
    object DBGrid2: TDBGrid
      Left = 2
      Top = 19
      Width = 405
      Height = 245
      Align = alClient
      Color = clCream
      DataSource = SrcTypesItems
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid2DrawColumnCell
      OnDblClick = DBGrid2DblClick
      OnKeyDown = DBGrid2KeyDown
      Columns = <
        item
          Expanded = False
          FieldName = '_checked'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReciptNumber'
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReciptDate'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'StoreID'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_StoreName'
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PersonID1'
          Width = 23
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CustName'
          Width = 23
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Entity'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Weight'
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TotalPrice'
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReciptNote'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReciptState'
          Width = 33
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Name'
          Width = 59
          Visible = True
        end>
    end
    object pnlLblL: TPanel
      Left = 2
      Top = 2
      Width = 593
      Height = 17
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
    end
    object Panel1: TPanel
      Left = 2
      Top = 264
      Width = 593
      Height = 143
      Align = alBottom
      TabOrder = 3
      object LblMoveBaseInfo: TLabel
        Left = 1
        Top = 1
        Width = 591
        Height = 13
        Align = alTop
        Caption = #1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1602#1575#1576#1604' '#1575#1606#1578#1602#1575#1604' '#1575#1586
      end
      object lslTableName: TListBox
        Left = 405
        Top = 14
        Width = 187
        Height = 128
        Align = alRight
        Color = 13236955
        ItemHeight = 13
        TabOrder = 0
        OnClick = lslTableNameClick
      end
      object DBGrid3: TDBGrid
        Left = 1
        Top = 14
        Width = 404
        Height = 128
        Align = alClient
        Color = clCream
        DataSource = srcShow
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
  object StatusBar1: TStatusBar [3]
    Left = 0
    Top = 462
    Width = 782
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
  object ChkBankName: TCheckListBox [4]
    Left = 0
    Top = 53
    Width = 185
    Height = 409
    Hint = #1575#1606#1578#1582#1575#1576' '#1605#1593#1603#1608#1587
    Align = alLeft
    Color = 13236955
    ItemHeight = 13
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnDblClick = ChkBankNameDblClick
  end
  inherited ActionList: TActionList
    Left = 432
    Top = 96
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
    Left = 560
    Top = 97
  end
  object SrcTypes: TDataSource
    DataSet = qryTypes
    Left = 680
    Top = 268
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
      end>
    SQL.Strings = (
      
        'SELECT      dbo.ReciptTypes.ReciptType AS Type, dbo.ReciptTypes.' +
        'ReciptCaption AS Caption, 0 AS Kind, '
      
        '                      dbo.ReciptTypes.Person1Caption AS Person1C' +
        'aption, dbo.ReciptTypes.Person2Caption AS Person2Caption'
      'FROM         dbo.ReciptTypes INNER JOIN'
      
        '                      dbo.Recipts ON dbo.ReciptTypes.ReciptType ' +
        '= dbo.Recipts.ReciptType'
      
        'WHERE     (dbo.Recipts.ReciptDate BETWEEN  :DateFrom AND :DateTo' +
        ')'
      
        'GROUP BY dbo.ReciptTypes.ReciptType, dbo.ReciptTypes.ReciptCapti' +
        'on, dbo.ReciptTypes.Person1Caption, dbo.ReciptTypes.Person2Capti' +
        'on'
      'ORDER BY dbo.ReciptTypes.ReciptType')
    Left = 680
    Top = 196
    object qryTypesType: TWordField
      FieldName = 'Type'
    end
    object qryTypesCaption: TStringField
      DisplayLabel = #1601#1585#1605#1607#1575' '#1608' '#1575#1591#1604#1575#1593#1575#1578
      FieldName = 'Caption'
      Size = 70
    end
    object qryTypesKind: TIntegerField
      FieldName = 'Kind'
      ReadOnly = True
    end
    object qryTypesPerson1Caption: TStringField
      FieldName = 'Person1Caption'
      Size = 50
    end
    object qryTypesPerson2Caption: TStringField
      FieldName = 'Person2Caption'
      Size = 50
    end
  end
  object qryTypesItems: TADOQuery
    Connection = adcSrc
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = qryTypesItemsAfterOpen
    Parameters = <
      item
        Name = 'SecondTypeFrom'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'SecondTypeTo'
        DataType = ftString
        Size = 1
        Value = '0'
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
      end>
    SQL.Strings = (
      
        'SELECT      Recipts.ReciptNumber, Recipts.ReciptDate, Recipts.St' +
        'oreID, Stores.c_StoreName, Recipts.PersonID1,'
      
        '                      Customers.CustName, SUM(ReciptItems.InputE' +
        'ntity + ReciptItems.OutputEntity) AS Entity,'
      
        '                      SUM(ReciptItems.InputWeight + ReciptItems.' +
        'OutputWeight) AS Weight,'
      
        '                      SUM(ReciptItems.TotalInputPrice + ReciptIt' +
        'ems.TotalOutputPrice) AS TotalPrice, Recipts.ReciptNote, Recipts' +
        '.ReciptState,'
      
        '                      Recipts.ReciptID, Recipts.ReciptType ,Look' +
        'Ups_SecondType.Name'
      'FROM         Recipts INNER JOIN'
      
        '                      ReciptItems ON Recipts.ReciptID = ReciptIt' +
        'ems.ReciptID LEFT OUTER JOIN'
      
        '                      Customers ON Recipts.PersonID1 = Customers' +
        '.CustID LEFT OUTER JOIN'
      
        '                      Stores ON Recipts.StoreID = Stores.n_Store' +
        'ID'
      'LEFT OUTER JOIN'
      
        '                      LookUps LookUps_SecondType ON Recipts.Seco' +
        'ndType = LookUps_SecondType.LookUpID'
      ''
      ''
      
        'where  (LookUps_SecondType.Code BETWEEN :SecondTypeFrom  AND :Se' +
        'condTypeTo )'
      ' AND (Recipts.StoreID BETWEEN :StoreIDFrom AND :StoreIDTo)'
      
        '  AND (Recipts.ReciptNumber BETWEEN :RcpNumberFrom AND :RcpNumbe' +
        'rTo)'
      '  AND  (Recipts.ReciptType = :Type)'
      '  AND (Recipts.ReciptDate BETWEEN :DateFrom AND :DateTo)'
      ''
      
        'GROUP BY Recipts.ReciptNumber, Recipts.ReciptDate, Recipts.Perso' +
        'nID1, Customers.CustName, Recipts.StoreID,'
      
        '                      Stores.c_StoreName, Recipts.ReciptID, Reci' +
        'pts.ReciptType, Recipts.ReciptNote, Recipts.ReciptState'
      '                      ,LookUps_SecondType.Name'
      'ORDER BY Recipts.ReciptNumber')
    Left = 176
    Top = 105
  end
  object SrcTypesItems: TDataSource
    DataSet = cliTypesItems
    Left = 176
    Top = 161
  end
  object cliTypesItems: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 56
    Top = 184
    object cliTypesItems_checked: TBooleanField
      DisplayLabel = #1575#1606#1578#1582#1575#1576
      FieldKind = fkInternalCalc
      FieldName = '_checked'
    end
    object cliTypesItemsReciptNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'ReciptNumber'
    end
    object cliTypesItemsReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1601#1585#1605
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object cliTypesItemsStoreID: TSmallintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1575#1606#1576#1575#1585
      FieldName = 'StoreID'
    end
    object cliTypesItemsc_StoreName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1575#1606#1576#1575#1585
      FieldName = 'c_StoreName'
      Size = 70
    end
    object cliTypesItemsPersonID1: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583
      FieldName = 'PersonID1'
    end
    object cliTypesItemsCustName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605
      FieldName = 'CustName'
      Size = 120
    end
    object cliTypesItemsEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'Entity'
      ReadOnly = True
    end
    object cliTypesItemsWeight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606
      FieldName = 'Weight'
      ReadOnly = True
    end
    object cliTypesItemsTotalPrice: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'TotalPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object cliTypesItemsReciptNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'ReciptNote'
      Size = 250
    end
    object cliTypesItemsReciptState: TSmallintField
      Tag = 3
      DisplayLabel = #1608#1590#1593#1610#1578
      FieldName = 'ReciptState'
      OnGetText = cliTypesItemsReciptStateGetText
    end
    object cliTypesItemsReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object cliTypesItemsReciptType: TSmallintField
      FieldName = 'ReciptType'
    end
    object cliTypesItemsName: TStringField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
      FieldName = 'Name'
      Size = 50
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = qryTypesItems
    Left = 56
    Top = 104
  end
  object qryMove: TADOQuery
    Connection = DMF.adcBSell
    Parameters = <>
    Left = 528
    Top = 157
  end
  object qryTableFieldNames: TADOQuery
    Connection = adcSrc
    Parameters = <>
    Left = 536
    Top = 221
  end
  object qryItems: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT  * FROM      ReciptItems'
      'WHERE     (ReciptItemID = 0)')
    Left = 341
    Top = 281
  end
  object qryRecipts: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *  FROM    Recipts'
      'WHERE     (ReciptID = 0)')
    Left = 238
    Top = 289
  end
  object adcSrc: TADOConnection
    LoginPrompt = False
    Left = 52
    Top = 289
  end
  object qrySrc: TADOQuery
    Connection = adcSrc
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *  FROM    Recipts'
      'WHERE     (ReciptID = 0)')
    Left = 142
    Top = 289
  end
  object qryShow: TADOQuery
    Connection = DMF.adcBSell
    Parameters = <>
    Left = 296
    Top = 373
  end
  object srcShow: TDataSource
    DataSet = qryShow
    Left = 200
    Top = 369
  end
  object qryDeficits: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT  * FROM      ReciptsDeficits'
      'WHERE     (ReciptDeficitID= 0)')
    Left = 413
    Top = 281
  end
  object qrySections: TADOQuery
    Connection = DMF.adcFaraSystem
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'sysid'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'Select BankName from Sections'
      'where sysid=:sysid'
      'order by createdate')
    Left = 320
    Top = 136
  end
end

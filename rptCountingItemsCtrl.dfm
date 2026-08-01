inherited rptCountingItemsCtrlF: TrptCountingItemsCtrlF
  Left = 334
  Top = 97
  Caption = #1604#1740#1587#1578' '#1575#1606#1576#1575#1585#1711#1585#1583#1575#1606#1740' '#1608' '#1705#1606#1578#1585#1604#1740' '
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 457
    ExplicitTop = 457
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
    object DBNavigator2: TDBNavigator
      Left = 342
      Top = 8
      Width = 192
      Height = 25
      DataSource = SrcCountingItems
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Anchors = [akLeft, akTop, akRight]
      Flat = True
      TabOrder = 4
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 707
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 5
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 545
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actPrint
      Align = alRight
      Caption = #1670#1575#1662' (F7)'
      TabOrder = 6
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 626
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actPrintVijeh
      Align = alRight
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
      TabOrder = 7
    end
  end
  inherited Panel2: TPanel
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
  end
  inherited Panel3: TPanel
    Height = 404
    ExplicitHeight = 404
    object DBGrid1: TDBGrid
      Left = 2
      Top = 56
      Width = 782
      Height = 326
      Align = alClient
      Color = clCream
      DataSource = SrcCountingItems
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
          FieldName = 'StuffCode'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_StuffName'
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UnitName'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sd1'
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'StuffSize'
          Width = 31
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'StuffDiameter'
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'StuffAlloy'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'StuffGrade'
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ControlCode'
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_KeepPlace'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Count1Entity'
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Count1Weight'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Count2Entity'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Count2Weight'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Count3Entity'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Count3Weight'
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Entity'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dif_1_Entity'
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dif_1_Weight'
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OtherEntity'
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OtherWeight'
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DifferEntity'
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DifferWeight'
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 782
      Height = 54
      Align = alTop
      BevelInner = bvRaised
      TabOrder = 1
      DesignSize = (
        782
        54)
      object Label1: TLabel
        Left = 131
        Top = 58
        Width = 60
        Height = 13
        Alignment = taRightJustify
        Anchors = [akLeft, akBottom]
        AutoSize = False
        Caption = #1601#1575#1610#1604' '#1662#1610#1608#1587#1578#1610
      end
      object Label2: TLabel
        Left = 486
        Top = 9
        Width = 60
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        AutoSize = False
        Caption = #1601#1575#1610#1604' '#1662#1610#1608#1587#1578#1610
        ExplicitLeft = 498
      end
      object Label8: TLabel
        Left = 695
        Top = 9
        Width = 50
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1588#1605#1575#1585#1607' '#1601#1585#1605
        ExplicitLeft = 707
      end
      object LblReciptDate: TLabel
        Left = 695
        Top = 32
        Width = 41
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        AutoSize = False
        Caption = #1578#1575#1585#1610#1582' '#1601#1585#1605
        ExplicitLeft = 707
      end
      object GroupBox2: TGroupBox
        Left = 2
        Top = 2
        Width = 339
        Height = 50
        Align = alLeft
        Caption = ' '#1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610' '
        TabOrder = 0
        object DBMemo1: TDBMemo
          Left = 2
          Top = 15
          Width = 335
          Height = 33
          Align = alClient
          Color = 15461355
          Ctl3D = False
          DataField = 'Note'
          DataSource = SrcCounting
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
      end
      object DBEdit1: TDBEdit
        Left = 6
        Top = 55
        Width = 123
        Height = 19
        Anchors = [akLeft, akBottom]
        Color = 15461355
        Ctl3D = False
        DataField = 'AttachFileName'
        DataSource = SrcCounting
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 360
        Top = 6
        Width = 123
        Height = 19
        Anchors = [akTop, akRight]
        Color = 15461355
        Ctl3D = False
        DataField = 'AttachFileName'
        DataSource = SrcCounting
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 621
        Top = 5
        Width = 71
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'CountNumber'
        DataSource = SrcCounting
        TabOrder = 3
      end
      object btnCountNumber: TBitBtn
        Left = 598
        Top = 5
        Width = 22
        Height = 21
        Anchors = [akTop, akRight]
        Caption = '...'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = btnCountNumberClick
      end
      object DBEditDate: TDBEdit
        Left = 622
        Top = 29
        Width = 70
        Height = 19
        Anchors = [akTop, akRight]
        Color = 15461355
        Ctl3D = False
        DataField = 'CountDate'
        DataSource = SrcCounting
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 5
      end
      object DBNavigator1: TDBNavigator
        Left = 360
        Top = 29
        Width = 180
        Height = 18
        DataSource = SrcCounting
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Anchors = [akTop, akRight]
        Flat = True
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 6
      end
    end
    object SumGrid1: TSumGrid
      Top = 382
      Width = 782
      Active = False
      Enable_Controls = True
      MasterGrid = DBGrid1
      FieldsName = 
        'Count1Entity;Count1Weight;Count2Entity;Count2Weight;Count3Entity' +
        ';Count3Weight;DifferEntity;DifferWeight;'
    end
  end
  object StatusBar1: TStatusBar [3]
    Left = 0
    Top = 498
    Width = 786
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
  inherited ActionList: TActionList
    Left = 472
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actSendExel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendExelExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662' (F7)'
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actPrintVijeh: TAction
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
      OnExecute = actPrintVijehExecute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 544
    Top = 8
  end
  object SrcCounting: TDataSource
    DataSet = qryCounting
    Left = 216
    Top = 4
  end
  object qryCounting: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryCountingAfterScroll
    Parameters = <
      item
        Name = 'CountDateFrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'CountDateTo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      ''
      'SELECT     *'
      'FROM         Counting'
      'WHERE     (CountDate BETWEEN :CountDateFrom  AND :CountDateTo )'
      'order by CountNumber'
      '')
    Left = 352
    Top = 12
    object qryCountingCountID: TIntegerField
      FieldName = 'CountID'
    end
    object qryCountingCountNumber: TIntegerField
      FieldName = 'CountNumber'
    end
    object qryCountingCountDate: TStringField
      FieldName = 'CountDate'
      FixedChar = True
      Size = 10
    end
    object qryCountingNote: TStringField
      FieldName = 'Note'
      Size = 255
    end
    object qryCountingAttachFileName: TStringField
      FieldName = 'AttachFileName'
      Size = 150
    end
    object qryCountingFormSignature: TStringField
      FieldName = 'FormSignature'
      Size = 250
    end
    object qryCountingState: TWordField
      FieldName = 'State'
    end
  end
  object qryCountingItems: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'CountID0'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearIDFrom'
        DataType = ftWideString
        Size = 2
        Value = '94'
      end
      item
        Name = 'YearIDTo'
        DataType = ftWideString
        Size = 2
        Value = '94'
      end
      item
        Name = 'Date'
        DataType = ftWideString
        Size = 10
        Value = '94/03/25'
      end
      item
        Name = 'YearID2From'
        DataType = ftWideString
        Size = 2
        Value = '94'
      end
      item
        Name = 'YearID2To'
        DataType = ftWideString
        Size = 2
        Value = '94'
      end
      item
        Name = 'Date2'
        DataType = ftWideString
        Size = 10
        Value = '94/03/25'
      end
      item
        Name = 'YearID3From'
        DataType = ftWideString
        Size = 2
        Value = '94'
      end
      item
        Name = 'YearID3To'
        DataType = ftWideString
        Size = 2
        Value = '94'
      end
      item
        Name = 'Date3'
        DataType = ftWideString
        Size = 10
        Value = '94/03/25'
      end
      item
        Name = 'StoreID'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 1
      end
      item
        Name = 'CountID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end
      item
        Name = 'ReciptIDFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ReciptIDTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ControlCodeFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ControlCodeTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      'SELECT StuffCodeCountingItems.CountID ,'
      'AllStuffCode.StoreID, Stores.c_StoreName ,'
      
        'AllStuffCode.StuffCode, StuffCoding.c_StuffName,StuffCoding.c_St' +
        'uffTecInfo, Units.UnitName,'
      'StuffCoding.sd1,'
      
        'StuffCodeCountingItems.StuffSize, StuffCodeCountingItems.StuffDi' +
        'ameter, StuffCodeCountingItems.StuffAlloy,'
      
        'StuffCodeCountingItems.StuffGrade, StuffCodeCountingItems.Contro' +
        'lCode,'
      
        'StuffCodeCountingItems.Count1Entity, StuffCodeCountingItems.Coun' +
        't1Weight,'
      
        'StuffCodeCountingItems.Count2Entity, StuffCodeCountingItems.Coun' +
        't2Weight,'
      
        'StuffCodeCountingItems.Count3Entity, StuffCodeCountingItems.Coun' +
        't3Weight,'
      'StuffCodeEntity.Entity, StuffCodeEntity.Weight,'
      ''
      
        'StuffCodeCountingItems.DifferEntity, StuffCodeCountingItems.Diff' +
        'erWeight,'
      ''
      
        'ROUND( ISNULL(StuffCodeCountingItems.Count1Entity, 0) - isnull(S' +
        'tuffCodeEntity.Entity,0),2) AS Dif_1_Entity,'
      
        'ROUND( ISNULL(StuffCodeCountingItems.Count1Weight, 0) - isnull(S' +
        'tuffCodeEntity.Weight,0),2) AS Dif_1_Weight ,'
      ''
      
        'ROUND( ISNULL(StuffCodeCountingItems.DifferEntity, 0) - isnull(S' +
        'tuffCodeEntity.Entity,0),2) AS OtherEntity,'
      
        'ROUND( ISNULL(StuffCodeCountingItems.DifferWeight, 0) - isnull(S' +
        'tuffCodeEntity.Weight,0),2) AS OtherWeight'
      ',StuffCoding.c_KeepPlace'
      ''
      'FROM Units INNER JOIN'
      
        'StuffCoding ON Units.UnitCode = StuffCoding.n_UnitCode RIGHT OUT' +
        'ER JOIN'
      '(SELECT     StoreID, StuffCode'
      'FROM         CountingItems'
      'where (countid =  :CountID0)'
      'UNION'
      'SELECT     StoreID, StuffCode'
      
        'FROM         dbo.StuffCodeEntity(:YearIDFrom , :YearIDTo , :Date' +
        ') AS StuffCodeEntity) AS AllStuffCode LEFT OUTER JOIN'
      
        'dbo.StuffCodeCountingItems(:YearID2From , :YearID2To , :Date2 ) ' +
        'AS StuffCodeCountingItems ON AllStuffCode.StoreID = StuffCodeCou' +
        'ntingItems.StoreID AND'
      
        'AllStuffCode.StuffCode = StuffCodeCountingItems.StuffCode ON Stu' +
        'ffCoding.c_StuffCode = AllStuffCode.StuffCode LEFT OUTER JOIN'
      
        'dbo.StuffCodeEntity( :YearID3From , :YearID3To , :Date3 ) AS Stu' +
        'ffCodeEntity ON AllStuffCode.StoreID = StuffCodeEntity.StoreID A' +
        'ND'
      'AllStuffCode.StuffCode = StuffCodeEntity.StuffCode INNER JOIN'
      'Stores ON AllStuffCode.StoreID = Stores.n_StoreID'
      ''
      'WHERE (AllStuffCode.StoreID = :StoreID) AND'
      
        '(StuffCodeCountingItems.CountID = :CountID OR StuffCodeCountingI' +
        'tems.CountID IS NULL)'
      ''
      
        'AND(StuffCodeCountingItems.ReciptID       BETWEEN  :ReciptIDFrom' +
        '    AND :ReciptIDTo      OR StuffCodeCountingItems.ReciptID IS N' +
        'ULL)'
      
        'AND(StuffCodeCountingItems.ControlCode BETWEEN  :ControlCodeFrom' +
        ' AND :ControlCodeTo   OR StuffCodeCountingItems.ControlCode IS N' +
        'ULL)'
      ''
      ''
      ''
      'ORDER BY AllStuffCode.StuffCode'
      ''
      ''
      '')
    Left = 256
    Top = 201
    object qryCountingItemsStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qryCountingItemsc_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1603#1575#1604#1575
      FieldName = 'c_StuffName'
      Size = 70
    end
    object qryCountingItemsStuffSize: TStringField
      Tag = 3
      DisplayLabel = #1575#1576#1593#1575#1583
      FieldName = 'StuffSize'
      Size = 12
    end
    object qryCountingItemsStuffDiameter: TFloatField
      Tag = 3
      DisplayLabel = #1590#1582#1575#1605#1578
      FieldName = 'StuffDiameter'
    end
    object qryCountingItemsStuffAlloy: TStringField
      Tag = 3
      DisplayLabel = #1570#1604#1610#1575#1688
      FieldName = 'StuffAlloy'
      Size = 12
    end
    object qryCountingItemsStuffGrade: TWordField
      Tag = 3
      DisplayLabel = #1583#1585#1580#1607
      FieldName = 'StuffGrade'
    end
    object qryCountingItemsControlCode: TLargeintField
      Tag = 3
      DisplayLabel = #1585#1575#1607#1606#1605#1575
      FieldName = 'ControlCode'
    end
    object qryCountingItemsc_KeepPlace: TStringField
      Tag = 3
      DisplayLabel = #1605#1581#1604' '#1606#1711#1607#1583#1575#1585#1740
      FieldName = 'c_KeepPlace'
      Size = 50
    end
    object qryCountingItemsCount1Entity: TFMTBCDField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585'1'
      FieldName = 'Count1Entity'
      Precision = 38
    end
    object qryCountingItemsCount1Weight: TFMTBCDField
      Tag = 3
      DisplayLabel = #1608#1586#1606'1'
      FieldName = 'Count1Weight'
      Precision = 38
    end
    object qryCountingItemsCount2Entity: TFMTBCDField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585'2'
      FieldName = 'Count2Entity'
      Precision = 38
    end
    object qryCountingItemsCount2Weight: TFMTBCDField
      Tag = 3
      DisplayLabel = #1608#1586#1606'2'
      FieldName = 'Count2Weight'
      Precision = 38
    end
    object qryCountingItemsCount3Entity: TFMTBCDField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585'3'
      FieldName = 'Count3Entity'
      Precision = 38
    end
    object qryCountingItemsCount3Weight: TFMTBCDField
      Tag = 3
      DisplayLabel = #1608#1586#1606'3'
      FieldName = 'Count3Weight'
      Precision = 38
    end
    object qryCountingItemsEntity: TFMTBCDField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1705#1575#1585#1583#1705#1587
      FieldName = 'Entity'
      Precision = 38
    end
    object qryCountingItemsWeight: TFMTBCDField
      Tag = 3
      DisplayLabel = #1608#1586#1606' '#1705#1575#1585#1583#1705#1587
      FieldName = 'Weight'
      ReadOnly = True
      Precision = 38
    end
    object qryCountingItemsDif_1_Entity: TFMTBCDField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1578#1601#1575#1608#1578' '#1588#1605#1575#1585#1588' '#1575#1608#1604' '#1576#1575' '#1605#1608#1580#1608#1583#1740
      FieldName = 'Dif_1_Entity'
      ReadOnly = True
      Precision = 38
    end
    object qryCountingItemsDif_1_Weight: TFMTBCDField
      Tag = 3
      DisplayLabel = #1608#1586#1606' '#1578#1601#1575#1608#1578' '#1588#1605#1575#1585#1588' '#1575#1608#1604' '#1576#1575' '#1605#1608#1580#1608#1583#1740
      FieldName = 'Dif_1_Weight'
      ReadOnly = True
      Precision = 38
    end
    object qryCountingItemsOtherEntity: TFMTBCDField
      Tag = 3
      DisplayLabel = #1705#1587#1585'/'#1575#1590#1575#1601#1607' '#1575#1606#1576#1575#1585'-'#1605#1602#1583#1575#1585
      FieldName = 'OtherEntity'
      ReadOnly = True
      Precision = 38
    end
    object qryCountingItemsOtherWeight: TFMTBCDField
      Tag = 3
      DisplayLabel = #1705#1587#1585'/'#1575#1590#1575#1601#1607' '#1575#1606#1576#1575#1585'-'#1608#1586#1606
      FieldName = 'OtherWeight'
      ReadOnly = True
      Precision = 38
    end
    object qryCountingItemsDifferWeight: TFMTBCDField
      Tag = 3
      DisplayLabel = #1605#1608#1580#1608#1583#1740' '#1606#1607#1575#1740#1740' -'#1608#1586#1606
      FieldName = 'DifferWeight'
      ReadOnly = True
      Precision = 38
    end
    object qryCountingItemsDifferEntity: TFMTBCDField
      Tag = 3
      DisplayLabel = #1605#1608#1580#1608#1583#1740' '#1606#1607#1575#1740#1740' - '#1605#1602#1583#1575#1585
      FieldName = 'DifferEntity'
      ReadOnly = True
      Precision = 38
    end
    object qryCountingItemsStoreID: TIntegerField
      Tag = 3
      FieldName = 'StoreID'
      ReadOnly = True
    end
    object qryCountingItemsc_StoreName: TStringField
      Tag = 3
      FieldName = 'c_StoreName'
      Size = 70
    end
    object qryCountingItemsCountID: TIntegerField
      Tag = 3
      FieldName = 'CountID'
    end
    object qryCountingItemsc_StuffTecInfo: TStringField
      Tag = 3
      FieldName = 'c_StuffTecInfo'
      Size = 30
    end
    object qryCountingItemsUnitName: TStringField
      Tag = 3
      DisplayLabel = #1608#1575#1581#1583' '#1588#1605#1575#1585#1588
      FieldName = 'UnitName'
      Size = 50
    end
    object qryCountingItemssd1: TStringField
      DisplayLabel = #1588#1606#1575#1587#1607
      FieldName = 'sd1'
      Size = 64
    end
  end
  object SrcCountingItems: TDataSource
    DataSet = qryCountingItems
    Left = 408
    Top = 201
  end
  object PopMenu: TPopupMenu
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    Left = 579
    Top = 336
    object rptCountingItemsCtrl1: TMenuItem
      Caption = #1604#1740#1587#1578' '#1606#1607#1575#1740#1740' '#1575#1606#1576#1575#1585' '#1711#1585#1583#1575#1606#1740
      OnClick = rptCountingItemsCtrl1Click
    end
    object rptCountingItemsCtrl2: TMenuItem
      Tag = 1
      Caption = #1605#1602#1575#1740#1585#1578' '#1588#1605#1575#1585#1588' '#1575#1608#1604
      OnClick = rptCountingItemsCtrl1Click
    end
    object rptCountingItemsCtrl3: TMenuItem
      Tag = 2
      Caption = #1605#1602#1575#1740#1585#1578' '#1588#1605#1575#1585#1588' '#1583#1608#1605
      OnClick = rptCountingItemsCtrl1Click
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = SrcCountingItems
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 620
    Top = 260
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
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
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'D:\Projects\Fara\BSell\Exe\Report\rptCountingItemsEntity.rtm'
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
    Left = 472
    Top = 272
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
        mmWidth = 203200
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
        mmLeft = 75936
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
        Caption = #1604#1610#1587#1578'  '#1575#1606#1576#1575#1585#1711#1585#1583#1575#1606#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8424
        mmLeft = 85111
        mmTop = 8467
        mmWidth = 32978
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
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583' '#1603#1575#1604#1575
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 192512
        mmTop = 18522
        mmWidth = 10160
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 191984
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1603#1575#1604#1575
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 118269
        mmTop = 18521
        mmWidth = 73554
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line16'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 117496
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1602#1583#1575#1585'1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 95515
        mmTop = 18521
        mmWidth = 21696
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line22'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 95011
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1602#1583#1575#1585'2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 72496
        mmTop = 18521
        mmWidth = 22225
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line30'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 71943
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1602#1583#1575#1585'3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 50006
        mmTop = 18521
        mmWidth = 21696
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line38'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 49459
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1602#1583#1575#1585' '#1605#1608#1580#1608#1583#1610' '#1606#1607#1575#1610#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 5292
        mmLeft = 794
        mmTop = 18521
        mmWidth = 48154
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line46'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 0
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object ppSysVarPageNo: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SysVarPageNo'
        OnGetText = ppSysVarPageNoGetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5821
        mmLeft = 9790
        mmTop = 10583
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7409
      mmPrintPosition = 0
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 200290
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
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'StuffCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 192512
        mmTop = 0
        mmWidth = 10160
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 191984
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'c_StuffName'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 118269
        mmTop = 0
        mmWidth = 73554
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line17'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 117496
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'Count1Entity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 95515
        mmTop = 0
        mmWidth = 21696
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line23'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 95011
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'Count2Entity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 72496
        mmTop = 0
        mmWidth = 22225
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line31'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 71943
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = 'Count3Entity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 50006
        mmTop = 0
        mmWidth = 21696
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line39'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 49459
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        Border.mmPadding = 0
        DataField = 'DifferEntity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 794
        mmTop = 0
        mmWidth = 48154
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line47'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 0
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 9497
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
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
        mmHeight = 6085
        mmLeft = 118004
        mmTop = 794
        mmWidth = 15610
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'StuffCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 192617
        mmTop = 529
        mmWidth = 10054
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 117475
        mmTop = 0
        mmWidth = 2646
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc4'
        Border.mmPadding = 0
        DataField = 'Count1Entity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 95515
        mmTop = 529
        mmWidth = 21696
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line25'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 95011
        mmTop = 0
        mmWidth = 2647
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc8'
        Border.mmPadding = 0
        DataField = 'Count2Entity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 72496
        mmTop = 529
        mmWidth = 22225
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line33'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 71943
        mmTop = 0
        mmWidth = 2647
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc12'
        Border.mmPadding = 0
        DataField = 'Count3Entity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 50006
        mmTop = 529
        mmWidth = 21696
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line41'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 49459
        mmTop = 0
        mmWidth = 2647
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc16'
        Border.mmPadding = 0
        DataField = 'DifferEntity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 794
        mmTop = 529
        mmWidth = 48154
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line49'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 0
        mmTop = 0
        mmWidth = 2647
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
        mmWidth = 203200
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
        mmLeft = 118004
        mmTop = 794
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'StuffCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 192617
        mmTop = 529
        mmWidth = 10054
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 117475
        mmTop = 0
        mmWidth = 2646
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        Border.mmPadding = 0
        DataField = 'Count1Entity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 95515
        mmTop = 529
        mmWidth = 21696
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line24'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 95011
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc7'
        Border.mmPadding = 0
        DataField = 'Count2Entity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 72496
        mmTop = 529
        mmWidth = 22225
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line32'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 71943
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc11'
        Border.mmPadding = 0
        DataField = 'Count3Entity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 50006
        mmTop = 529
        mmWidth = 21696
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line40'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 49459
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc15'
        Border.mmPadding = 0
        DataField = 'DifferEntity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 794
        mmTop = 529
        mmWidth = 48154
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line48'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 0
        mmTop = 0
        mmWidth = 2647
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

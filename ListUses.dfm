inherited ListUsesF: TListUsesF
  Left = 302
  Top = 157
  ActiveControl = cmbUseOthers
  Caption = #1711#1586#1575#1585#1588' '#1605#1589#1585#1601
  OldCreateOrder = True
  ExplicitTop = -13
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    BevelOuter = bvNone
    ExplicitLeft = 1
    ExplicitTop = 481
    inherited BtnReject: TBitBtn
      Left = 3
      Top = 6
      Height = 29
      TabOrder = 4
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 325
      Top = 6
      Width = 75
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alLeft
      Caption = #1670#1575#1662'...'
      TabOrder = 2
      OnClick = BitBtn2Click
      ExplicitLeft = 324
      ExplicitTop = 8
      ExplicitHeight = 25
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 244
      Top = 6
      Width = 75
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 3
      ExplicitLeft = 245
      ExplicitTop = 8
      ExplicitHeight = 25
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 631
      Top = 6
      Width = 75
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actShowRelease
      Align = alRight
      Caption = #1606#1605#1575#1610#1588' '#1601#1585#1605
      TabOrder = 1
      ExplicitLeft = 627
      ExplicitTop = 8
      ExplicitHeight = 25
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 712
      Top = 6
      Width = 75
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actLimit
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 0
      ExplicitLeft = 704
      ExplicitTop = 8
      ExplicitHeight = 25
    end
    object BitBtn5: TBitBtn
      AlignWithMargins = True
      Left = 164
      Top = 6
      Width = 74
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSearch_
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 5
      ExplicitLeft = 166
      ExplicitTop = 8
      ExplicitHeight = 25
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 84
      Top = 6
      Width = 74
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 6
      ExplicitLeft = 87
      ExplicitTop = 8
      ExplicitHeight = 25
    end
  end
  inherited Panel2: TPanel
    BevelOuter = bvNone
    inherited lblCaption: TLabel
      Left = 683
      Top = 15
      Height = 35
    end
    object SpeedButton3: TSpeedButton
      Left = 13
      Top = 29
      Width = 21
      Height = 20
      Caption = '...'
      OnClick = SpeedButton3Click
    end
    object Label2: TLabel
      Left = 35
      Top = 33
      Width = 70
      Height = 13
      Alignment = taRightJustify
      Caption = #1575#1606#1578#1582#1575#1576' '#1581#1608#1575#1604#1607' '#1607#1575
    end
  end
  inherited Panel3: TPanel
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 786
      Height = 31
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        786
        31)
      object lblList: TLabel
        Left = 730
        Top = 9
        Width = 40
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1606#1575#1605' '#1580#1575#1606#1576#1575#1586
      end
      object SpeedButton1: TSpeedButton
        Left = 396
        Top = 5
        Width = 21
        Height = 20
        Anchors = [akTop, akRight]
        Caption = '...'
        OnClick = SpeedButton1Click
      end
      object Label1: TLabel
        Left = 346
        Top = 9
        Width = 40
        Height = 13
        Alignment = taRightJustify
        Caption = #1606#1575#1605' '#1603#1600#1600#1600#1575#1604#1575
      end
      object SpeedButton2: TSpeedButton
        Left = 9
        Top = 5
        Width = 21
        Height = 20
        Caption = '...'
        OnClick = SpeedButton2Click
      end
      object cmbUseOthers: TComboBox
        Left = 418
        Top = 5
        Width = 310
        Height = 21
        Style = csDropDownList
        Anchors = [akTop, akRight]
        DropDownCount = 32
        TabOrder = 0
        OnChange = cmbUseOthersChange
      end
      object cmbStuffs: TComboBox
        Left = 31
        Top = 5
        Width = 310
        Height = 21
        Style = csDropDownList
        DropDownCount = 32
        TabOrder = 1
        OnChange = cmbUseOthersChange
      end
    end
    object DBGrid2: TCedarDbgrid
      Left = 2
      Top = 33
      Width = 786
      Height = 389
      Align = alClient
      BorderStyle = bsNone
      Color = clCream
      DataSource = srcUses
      DefaultDrawing = False
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
      HorzScrollBar.ExtraPanel.NavigatorButtons = [nbFirstEh, nbPriorEh, nbNextEh, nbLastEh, nbRefreshEh]
      HorzScrollBar.ExtraPanel.Visible = True
      IndicatorTitle.ShowDropDownSign = True
      IndicatorTitle.TitleButton = True
      OddRowColor = clWhite
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
          FieldName = '_radif'
          Footers = <>
          Width = 27
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = #1603#1583#1580#1575#1606#1576#1575#1586#1610
          Footers = <>
          Width = 49
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = #1606#1575#1605#8207#1582#1575#1606#1608#1575#1583#1711#1610
          Footers = <>
          Width = 60
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = #1606#1608#1593#8207#1580#1575#1606#1576#1575#1586#1610
          Footers = <>
          Width = 53
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = #1583#1585#1589#1583
          Footers = <>
          Width = 30
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = #1606#1575#1605#8207#1605#1606#1591#1602#1607#8207#1587#1585#1662#1585#1587#1578#1610
          Footers = <>
          Width = 75
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = #1578#1575#1585#1610#1582#8207#1606#1575#1605#1607
          Footers = <>
          Width = 44
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = #1588#1605#1575#1585#1607#8207#1606#1575#1605#1607
          Footers = <>
          Width = 54
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = #1578#1575#1585#1610#1582#8207#1581#1608#1575#1604#1607
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = #1588#1605#1575#1585#1607#8207#1581#1608#1575#1604#1607
          Footers = <>
          Width = 59
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = #1603#1583#1603#1575#1604#1575
          Footers = <>
          Width = 32
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = #1588#1585#1581#8207#1603#1575#1604#1575
          Footers = <>
          Width = 42
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = #1608#1575#1581#1583#1588#1605#1575#1585#1588
          Footers = <>
          Width = 62
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = #1578#1593#1583#1575#1583
          Footers = <>
          Width = 28
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = #1578#1593#1583#1575#1583#1605#1585#1580#1608#1593#1610
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = #1578#1601#1575#1608#1578
          Footers = <>
          Width = 30
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
          FieldName = 'CustName'
          Footers = <>
          Width = 63
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  inherited ActionList: TActionList
    Left = 384
    inherited DataSetInsert1: TDataSetInsert [0]
    end
    inherited DataSetEdit1: TDataSetEdit [1]
    end
    inherited DataSetPost1: TDataSetPost [2]
    end
    inherited DataSetCancel1: TDataSetCancel [3]
    end
    inherited DataSetDelete1_: TDataSetDelete [4]
    end
    object actLimit: TAction [5]
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actLimitExecute
    end
    object actShowRelease: TAction [6]
      Caption = #1606#1605#1575#1610#1588' '#1601#1585#1605
      Hint = ' '
      ShortCut = 116
      OnExecute = actShowReleaseExecute
    end
    object actPrint: TAction [7]
      Caption = #1670#1575#1662
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actExcel: TAction [8]
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      ShortCut = 16502
      OnExecute = actExcelExecute
    end
    object actSearchUnit: TAction [9]
      Caption = #1580#1587#1578#1580#1608
      ShortCut = 114
    end
    object actSort: TAction [10]
      Caption = #1578#1585#1578#1610#1576
      ShortCut = 117
      OnExecute = actSortExecute
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited actExit: TAction [12]
    end
    object actPrint2: TAction
      Caption = #1670#1575#1662'2'
      ShortCut = 16502
      OnExecute = actPrint2Execute
    end
    object actPrintV: TAction
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
      OnExecute = actPrintVExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 464
    Top = 1
  end
  object qryUses: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = qryUsesCalcFields
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     Recipts.ReciptID, ReciptItems.StuffCode, UseOthers.Us' +
        'eOtherID AS '#1603#1583#1580#1575#1606#1576#1575#1586#1610', UseOthers.UseOtherName AS ['#1606#1575#1605#8207#1582#1575#1606#1608#1575#1583#1711#1610'],' +
        ' '
      
        '                      LookUps_1.Name AS ['#1606#1608#1593#8207#1580#1575#1606#1576#1575#1586#1610'], UseOthers' +
        '.Rate AS '#1583#1585#1589#1583', LookUps.Name AS ['#1606#1575#1605#8207#1605#1606#1591#1602#1607#8207#1587#1585#1662#1585#1587#1578#1610'], Recipts.AidD' +
        'ate AS ['#1578#1575#1585#1610#1582#8207#1606#1575#1605#1607'], '
      
        '                      Recipts.AidNumber AS ['#1588#1605#1575#1585#1607#8207#1606#1575#1605#1607'], Recipts' +
        '.ReciptDate AS ['#1578#1575#1585#1610#1582#8207#1581#1608#1575#1604#1607'], Recipts.ReciptNumber AS ['#1588#1605#1575#1585#1607#8207#1581#1608#1575 +
        #1604#1607'], ReciptItems.StuffCode AS '#1603#1583#1603#1575#1604#1575', '
      
        '                      StuffCoding.c_StuffName AS ['#1588#1585#1581#8207#1603#1575#1604#1575'], Uni' +
        'ts.UnitName AS '#1608#1575#1581#1583#1588#1605#1575#1585#1588', ReciptItems.OutputEntity AS '#1578#1593#1583#1575#1583', Rec' +
        'iptItems.InputEntity AS '#1578#1593#1583#1575#1583#1605#1585#1580#1608#1593#1610', '
      
        '                      ReciptItems.InputEntity - ReciptItems.Outp' +
        'utEntity AS '#1578#1601#1575#1608#1578', Recipts.StoreID AS '#1603#1583#1575#1606#1576#1575#1585', Stores.c_StoreNam' +
        'e AS '#1575#1606#1576#1575#1585', Recipts.UseUnitID AS ['#1603#1583#1605#1581#1604#8207#1605#1589#1585#1601'], '
      
        '                      UseUnits.UseUnitName AS ['#1605#1581#1604#8207#1605#1589#1585#1601'], Recipt' +
        'Items.ServerID, ReciptItems.YearID'
      ', Recipts.PersonID2, '
      '                      Customers.CustName'
      ''
      'FROM         Recipts INNER JOIN'
      
        '                      UseOthers ON Recipts.UseOtherID = UseOther' +
        's.UseOtherID INNER JOIN'
      
        '                      ReciptItems ON Recipts.ReciptID = ReciptIt' +
        'ems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND Rec' +
        'ipts.YearID = ReciptItems.YearID  INNER JOIN'
      
        '                      StuffCoding ON ReciptItems.StuffCode = Stu' +
        'ffCoding.c_StuffCode INNER JOIN'
      
        '                      Units ON StuffCoding.n_UnitCode = Units.Un' +
        'itCode INNER JOIN'
      
        '                      Stores ON Recipts.StoreID = Stores.n_Store' +
        'ID LEFT OUTER JOIN'
      
        '                      UseUnits ON Recipts.UseUnitID = UseUnits.U' +
        'seUnitID LEFT OUTER JOIN'
      
        '                      LookUps AS LookUps_1 ON UseOthers.TypeCode' +
        ' = LookUps_1.LookUpID LEFT OUTER JOIN'
      
        '                      LookUps ON UseOthers.LookUpID = LookUps.Lo' +
        'okUpID'
      ' LEFT OUTER JOIN'
      
        '                      Customers ON Recipts.PersonID2 = Customers' +
        '.CustID'
      ' ')
    Left = 240
    Top = 180
    object qryUses_radif: TIntegerField
      Tag = 3
      DisplayLabel = #1585#1583#1610#1601
      FieldKind = fkCalculated
      FieldName = '_radif'
      Calculated = True
    end
    object qryUsesReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryUsesStuffCode: TLargeintField
      FieldName = 'StuffCode'
    end
    object qryUsesDSDesigner: TWideStringField
      Tag = 3
      FieldName = #1603#1583#1580#1575#1606#1576#1575#1586#1610
      Size = 15
    end
    object qryUsesDSDesigner2: TWideStringField
      Tag = 3
      FieldName = #1606#1575#1605#8207#1582#1575#1606#1608#1575#1583#1711#1610
      Size = 50
    end
    object qryUsesDSDesigner3: TStringField
      Tag = 3
      FieldName = #1606#1608#1593#8207#1580#1575#1606#1576#1575#1586#1610
      Size = 50
    end
    object qryUsesDSDesigner4: TFloatField
      Tag = 3
      FieldName = #1583#1585#1589#1583
    end
    object qryUsesDSDesigner5: TStringField
      Tag = 3
      FieldName = #1606#1575#1605#8207#1605#1606#1591#1602#1607#8207#1587#1585#1662#1585#1587#1578#1610
      Size = 50
    end
    object qryUsesDSDesigner6: TStringField
      Tag = 3
      FieldName = #1578#1575#1585#1610#1582#8207#1606#1575#1605#1607
      FixedChar = True
      Size = 10
    end
    object qryUsesDSDesigner7: TFloatField
      Tag = 3
      FieldName = #1588#1605#1575#1585#1607#8207#1606#1575#1605#1607
    end
    object qryUsesDSDesigner8: TStringField
      Tag = 3
      FieldName = #1578#1575#1585#1610#1582#8207#1581#1608#1575#1604#1607
      FixedChar = True
      Size = 10
    end
    object qryUsesDSDesigner9: TIntegerField
      Tag = 3
      FieldName = #1588#1605#1575#1585#1607#8207#1581#1608#1575#1604#1607
    end
    object qryUsesDSDesigner10: TLargeintField
      Tag = 3
      FieldName = #1603#1583#1603#1575#1604#1575
    end
    object qryUsesDSDesigner11: TStringField
      Tag = 3
      FieldName = #1588#1585#1581#8207#1603#1575#1604#1575
      Size = 150
    end
    object qryUsesDSDesigner12: TStringField
      Tag = 3
      FieldName = #1608#1575#1581#1583#1588#1605#1575#1585#1588
      Size = 50
    end
    object qryUsesDSDesigner13: TFloatField
      Tag = 3
      FieldName = #1578#1593#1583#1575#1583
    end
    object qryUsesDSDesigner14: TSmallintField
      Tag = 3
      FieldName = #1603#1583#1575#1606#1576#1575#1585
    end
    object qryUsesDSDesigner15: TStringField
      Tag = 3
      FieldName = #1575#1606#1576#1575#1585
      Size = 70
    end
    object qryUsesDSDesigner16: TStringField
      Tag = 3
      FieldName = #1605#1581#1604#8207#1605#1589#1585#1601
      Size = 70
    end
    object qryUsesDSDesigner17: TFloatField
      Tag = 3
      FieldName = #1578#1593#1583#1575#1583#1605#1585#1580#1608#1593#1610
    end
    object qryUsesDSDesigner18: TFloatField
      Tag = 3
      FieldName = #1578#1601#1575#1608#1578
      ReadOnly = True
      DisplayFormat = '#,0;(#,0)'
    end
    object qryUsesDSDesigner19: TIntegerField
      Tag = 3
      FieldName = #1603#1583#1605#1581#1604#8207#1605#1589#1585#1601
    end
    object qryUsesServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryUsesYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryUsesPersonID2: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583#1578#1581#1608#1610#1604' '#1711#1610#1585#1606#1583#1607
      FieldName = 'PersonID2'
    end
    object qryUsesCustName: TStringField
      Tag = 3
      DisplayLabel = #1578#1581#1608#1610#1604' '#1711#1610#1585#1606#1583#1607
      FieldName = 'CustName'
      Size = 120
    end
  end
  object srcUses: TDataSource
    DataSet = qryUses
    Left = 232
    Top = 261
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcUses
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 672
    Top = 341
    object ppDBPipeline1ppField1: TppField
      FieldAlias = '_radif'
      FieldName = '_radif'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'ReciptID'
      FieldName = 'ReciptID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'StuffCode'
      FieldName = 'StuffCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = #1603#1583#1580#1575#1606#1576#1575#1586#1610
      FieldName = #1603#1583#1580#1575#1606#1576#1575#1586#1610
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = #1606#1575#1605#8207#1582#1575#1606#1608#1575#1583#1711#1610
      FieldName = #1606#1575#1605#8207#1582#1575#1606#1608#1575#1583#1711#1610
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = #1606#1608#1593#8207#1580#1575#1606#1576#1575#1586#1610
      FieldName = #1606#1608#1593#8207#1580#1575#1606#1576#1575#1586#1610
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = #1583#1585#1589#1583
      FieldName = #1583#1585#1589#1583
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = #1606#1575#1605#8207#1605#1606#1591#1602#1607#8207#1587#1585#1662#1585#1587#1578#1610
      FieldName = #1606#1575#1605#8207#1605#1606#1591#1602#1607#8207#1587#1585#1662#1585#1587#1578#1610
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = #1578#1575#1585#1610#1582#8207#1606#1575#1605#1607
      FieldName = #1578#1575#1585#1610#1582#8207#1606#1575#1605#1607
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = #1588#1605#1575#1585#1607#8207#1606#1575#1605#1607
      FieldName = #1588#1605#1575#1585#1607#8207#1606#1575#1605#1607
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = #1578#1575#1585#1610#1582#8207#1581#1608#1575#1604#1607
      FieldName = #1578#1575#1585#1610#1582#8207#1581#1608#1575#1604#1607
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = #1588#1605#1575#1585#1607#8207#1581#1608#1575#1604#1607
      FieldName = #1588#1605#1575#1585#1607#8207#1581#1608#1575#1604#1607
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = #1603#1583#1603#1575#1604#1575
      FieldName = #1603#1583#1603#1575#1604#1575
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = #1588#1585#1581#8207#1603#1575#1604#1575
      FieldName = #1588#1585#1581#8207#1603#1575#1604#1575
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = #1608#1575#1581#1583#1588#1605#1575#1585#1588
      FieldName = #1608#1575#1581#1583#1588#1605#1575#1585#1588
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = #1578#1593#1583#1575#1583
      FieldName = #1578#1593#1583#1575#1583
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = #1603#1583#1575#1606#1576#1575#1585
      FieldName = #1603#1583#1575#1606#1576#1575#1585
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = #1575#1606#1576#1575#1585
      FieldName = #1575#1606#1576#1575#1585
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = #1605#1581#1604#8207#1605#1589#1585#1601
      FieldName = #1605#1581#1604#8207#1605#1589#1585#1601
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = #1578#1593#1583#1575#1583#1605#1585#1580#1608#1593#1610
      FieldName = #1578#1593#1583#1575#1583#1605#1585#1580#1608#1593#1610
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = #1578#1601#1575#1608#1578
      FieldName = #1578#1601#1575#1608#1578
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = #1603#1583#1605#1581#1604#8207#1605#1589#1585#1601
      FieldName = #1603#1583#1605#1581#1604#8207#1605#1589#1585#1601
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
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
    PrinterSetup.mmPaperHeight = 216000
    PrinterSetup.mmPaperWidth = 279000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'D:\Projects\Fara\BSell\Exe\Report\ListUses.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
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
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 672
    Top = 285
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 26988
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        OnGetText = ppLblCompanyNameGetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
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
        mmLeft = 107950
        mmTop = 0
        mmWidth = 50271
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1711#1600#1600#1600#1586#1575#1585#1588' '#1605#1589#1600#1600#1600#1585#1601
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7070
        mmLeft = 120069
        mmTop = 6085
        mmWidth = 26035
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        OnGetText = ppLblPrintDateGetText
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1670#1575#1662
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6435
        mmLeft = 265
        mmTop = 529
        mmWidth = 11896
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 10054
        mmWidth = 266300
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1585#1583#1610#1601
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 259028
        mmTop = 20902
        mmWidth = 5821
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1601#1585#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 246857
        mmTop = 20902
        mmWidth = 10848
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1601#1585#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 234157
        mmTop = 20902
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583' '#1580#1575#1606#1576#1575#1586
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 211667
        mmTop = 20902
        mmWidth = 21696
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1580#1575#1606#1576#1575#1586
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4798
        mmLeft = 189663
        mmTop = 20902
        mmWidth = 9878
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = #1603#1583' '#1603#1575#1604#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 159279
        mmTop = 20902
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1603#1575#1604#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 104775
        mmTop = 20902
        mmWidth = 52388
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label101'
        Border.mmPadding = 0
        Caption = #1589#1575#1583#1585#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 87842
        mmTop = 20902
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1585#1580#1608#1593#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 71173
        mmTop = 20902
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1575#1587#1578#1575#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 794
        mmTop = 20902
        mmWidth = 27517
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 25135
        mmWidth = 266300
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4763
        mmLeft = 68792
        mmTop = 22754
        mmWidth = 2117
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4763
        mmLeft = 85990
        mmTop = 22754
        mmWidth = 2117
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4763
        mmLeft = 102394
        mmTop = 22754
        mmWidth = 2117
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4763
        mmLeft = 157692
        mmTop = 22225
        mmWidth = 2117
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4763
        mmLeft = 177536
        mmTop = 22754
        mmWidth = 2117
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label19'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4763
        mmLeft = 209815
        mmTop = 23283
        mmWidth = 2117
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label20'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4763
        mmLeft = 232569
        mmTop = 23019
        mmWidth = 2117
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label201'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4763
        mmLeft = 245005
        mmTop = 24077
        mmWidth = 2117
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label22'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 3704
        mmLeft = 256911
        mmTop = 24871
        mmWidth = 2117
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        OnGetText = ppSysVarPageNoGetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5800
        mmLeft = 265
        mmTop = 7144
        mmWidth = 6900
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label23'
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
        mmHeight = 4763
        mmLeft = 29369
        mmTop = 20902
        mmWidth = 20638
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label24'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4763
        mmLeft = 27517
        mmTop = 22225
        mmWidth = 2117
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label26'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1601#1575#1608#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 53181
        mmTop = 20902
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label27'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4763
        mmLeft = 50536
        mmTop = 23019
        mmWidth = 2117
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = '_radif'
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
        mmHeight = 6350
        mmLeft = 258498
        mmTop = 265
        mmWidth = 7408
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = #1588#1605#1575#1585#1607#8207#1581#1608#1575#1604#1607
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
        mmHeight = 6350
        mmLeft = 246328
        mmTop = 265
        mmWidth = 11642
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = #1578#1575#1585#1610#1582#8207#1581#1608#1575#1604#1607
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
        mmHeight = 6350
        mmLeft = 234421
        mmTop = 265
        mmWidth = 11642
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = #1603#1583#1580#1575#1606#1576#1575#1586#1610
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
        mmHeight = 6350
        mmLeft = 211932
        mmTop = 265
        mmWidth = 21960
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = #1606#1575#1605#8207#1582#1575#1606#1608#1575#1583#1711#1610
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 179917
        mmTop = 265
        mmWidth = 29369
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = #1603#1583#1603#1575#1604#1575
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
        mmHeight = 6350
        mmLeft = 159544
        mmTop = 265
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = #1588#1585#1581#8207#1603#1575#1604#1575
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 104775
        mmTop = 265
        mmWidth = 52388
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = #1578#1593#1583#1575#1583
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
        mmHeight = 6350
        mmLeft = 87577
        mmTop = 265
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = #1578#1593#1583#1575#1583#1605#1585#1580#1608#1593#1610
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
        mmHeight = 6350
        mmLeft = 71438
        mmTop = 265
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = #1606#1575#1605#8207#1605#1606#1591#1602#1607#8207#1587#1585#1662#1585#1587#1578#1610
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 0
        mmTop = 265
        mmWidth = 28310
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 29369
        mmTop = 265
        mmWidth = 20638
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = #1578#1601#1575#1608#1578
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 53181
        mmTop = 265
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 9260
      mmPrintPosition = 0
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 794
        mmWidth = 266300
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label25'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1580#1605#1600#1600#1593' '#1605#1576#1604#1600#1600#1594
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5362
        mmLeft = 113771
        mmTop = 2646
        mmWidth = 20638
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7144
        mmLeft = 29104
        mmTop = 1852
        mmWidth = 20638
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = #1578#1593#1583#1575#1583#1605#1585#1580#1608#1593#1610
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7144
        mmLeft = 65881
        mmTop = 1852
        mmWidth = 14817
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        Border.mmPadding = 0
        DataField = #1578#1593#1583#1575#1583
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7144
        mmLeft = 83344
        mmTop = 1852
        mmWidth = 12965
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc4: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc4'
        Border.mmPadding = 0
        DataField = #1578#1601#1575#1608#1578
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7144
        mmLeft = 50006
        mmTop = 1852
        mmWidth = 14288
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
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 352
    Top = 349
    object N1: TMenuItem
      Action = actPrint
    end
    object N21: TMenuItem
      Action = actPrint2
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object N2: TMenuItem
      Action = actPrintV
    end
  end
end

inherited StuffDetailsF: TStuffDetailsF
  Left = 392
  Top = 196
  Caption = #1575#1591#1604#1575#1593#1575#1578' '#1580#1586#1574#1740' '#1705#1604#1575
  ClientHeight = 428
  ClientWidth = 633
  ExplicitWidth = 649
  ExplicitHeight = 467
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 376
    Width = 633
    Height = 15
    Align = alBottom
    ExplicitTop = 308
    ExplicitWidth = 741
    ExplicitHeight = 15
  end
  object Label8: TLabel [1]
    Left = 0
    Top = 363
    Width = 633
    Height = 13
    Align = alBottom
    BiDiMode = bdLeftToRight
    Caption = '...'
    Color = clMaroon
    Font.Charset = ARABIC_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentColor = False
    ParentFont = False
    WordWrap = True
    ExplicitTop = 375
    ExplicitWidth = 12
  end
  inherited Panel1: TPanel
    Width = 633
    TabOrder = 1
    ExplicitWidth = 641
    inherited Image1: TImage
      Left = 587
      ExplicitLeft = 687
    end
    inherited lblTopic0: TLabel
      Left = 475
      Top = 9
      Width = 92
      Caption = #1575#1591#1604#1575#1593#1575#1578' '#1580#1586#1574#1740' '#1705#1604#1575
      ExplicitLeft = 575
      ExplicitTop = 9
      ExplicitWidth = 92
    end
    inherited lblTopic1: TLabel
      Left = 494
      Top = 28
      Visible = False
      ExplicitLeft = 594
      ExplicitTop = 28
    end
    object DBEdit1: TDBEdit
      Left = 1
      Top = 53
      Width = 639
      Height = 19
      Align = alBottom
      BevelInner = bvNone
      BevelOuter = bvNone
      BiDiMode = bdRightToLeft
      BorderStyle = bsNone
      Color = clInactiveCaption
      Ctl3D = False
      DataField = 'c_StuffName'
      DataSource = srcRIDEntity
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
  end
  inherited pnlDown: TPanel
    Top = 391
    Width = 633
    TabOrder = 0
    ExplicitTop = 403
    ExplicitWidth = 641
    inherited btnClose: TBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 4
      Height = 29
      Align = alLeft
      ExplicitLeft = 4
      ExplicitTop = 4
      ExplicitHeight = 29
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 562
      Top = 4
      Width = 75
      Height = 29
      Action = actSearch
      Align = alRight
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 1
    end
  end
  object DBGrid1: TCedarDbgrid [4]
    Left = 0
    Top = 73
    Width = 633
    Height = 290
    Align = alClient
    Color = clCream
    DataSource = srcRIDEntity
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
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
    IndicatorTitle.ShowDropDownSign = True
    IndicatorTitle.TitleButton = True
    OddRowColor = clInactiveCaption
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDblClickOptimizeColWidth, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove]
    RowHeight = 18
    RowPanel.Active = True
    SearchPanel.Enabled = True
    SortLocal = True
    TabOrder = 2
    ActiveSearchPanel = False
    SelectFooterIndex = 0
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DetailCaption'
        Footers = <>
        Width = 278
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'StoreID'
        Footers = <>
        Width = 138
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Entity'
        Footers = <>
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  inherited ActionList1: TActionList
    Left = 111
    Top = 142
    inherited DataSetPost1: TDataSetPost
      DataSource = srcRIDEntity
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      DataSource = srcRIDEntity
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
    end
    object actSearch: TAction
      Caption = #1580#1587#1578#1580#1608
      ShortCut = 114
      OnExecute = actSearchExecute
    end
    object actExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      ShortCut = 118
    end
    object actOther: TAction
      Caption = #1587#1575#1610#1585
    end
  end
  object srcRIDEntity: TDataSource
    DataSet = qryRIDEntity
    Left = 526
    Top = 143
  end
  object qryRIDEntity: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 296
    Top = 180
    object qryRIDEntityDetailCaption: TStringField
      DisplayLabel = #1605#1588#1582#1589#1575#1578
      FieldName = 'DetailCaption'
      Size = 40
    end
    object qryRIDEntityStoreID: TIntegerField
      DisplayLabel = #1575#1606#1576#1575#1585
      FieldName = 'StoreID'
    end
    object qryRIDEntityEntity: TIntegerField
      DisplayLabel = #1578#1593#1583#1575#1583
      FieldName = 'Entity'
      ReadOnly = True
    end
    object qryRIDEntityStuffCode: TLargeintField
      DisplayLabel = #1705#1583' '#1705#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qryRIDEntityc_StuffName: TStringField
      DisplayLabel = #1705#1575#1604#1575
      FieldName = 'c_StuffName'
      Size = 150
    end
  end
end

inherited RecallAlterAssetsF: TRecallAlterAssetsF
  Left = 326
  Top = 113
  Align = alLeft
  BorderStyle = bsSizeable
  Caption = #1601#1585#1575#1582#1608#1575#1606#1610' '#1575#1586' '#1578#1593#1583#1610#1604' '#1603#1575#1585#1578' '#1583#1575#1585#1575#1610#1610' '#1579#1575#1576#1578
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
  inherited Panel1: TPanel
    Width = 954
    Height = 49
    BevelOuter = bvNone
    ExplicitWidth = 954
    ExplicitHeight = 49
    DesignSize = (
      954
      49)
    inherited Image1: TImage
      Left = 904
      Top = 0
      Width = 50
      Height = 49
      Align = alRight
      Center = True
      Stretch = True
      ExplicitLeft = 904
      ExplicitTop = 0
      ExplicitWidth = 50
      ExplicitHeight = 73
    end
    inherited lblTopic0: TLabel
      Left = 700
      Width = 188
      Caption = #1601#1585#1575#1582#1608#1575#1606#1610' '#1575#1586' '#1578#1593#1583#1610#1604' '#1603#1575#1585#1578' '#1583#1575#1585#1575#1610#1610' '#1579#1575#1576#1578
      ExplicitLeft = 700
      ExplicitWidth = 188
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
    Top = 483
    Width = 954
    Height = 29
    BevelOuter = bvNone
    ExplicitLeft = -40
    ExplicitTop = 477
    ExplicitWidth = 954
    ExplicitHeight = 29
    inherited btnClose: TBitBtn
      Top = 462
      ModalResult = 2
      ExplicitTop = 462
    end
    object BitBtn1: TBitBtn
      Left = 0
      Top = 0
      Width = 75
      Height = 29
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 1
      ExplicitLeft = 10
      ExplicitTop = 1
      ExplicitHeight = 25
    end
    object BitBtn2: TBitBtn
      Left = 75
      Top = 0
      Width = 75
      Height = 29
      Action = actSearch2
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608' '
      TabOrder = 2
      ExplicitLeft = 92
      ExplicitTop = 1
      ExplicitHeight = 25
    end
    object BitBtn3: TBitBtn
      Left = 879
      Top = 0
      Width = 75
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSearch
      Align = alRight
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 3
      ExplicitLeft = 795
      ExplicitTop = 6
    end
    object BitBtn6: TBitBtn
      Left = 804
      Top = 0
      Width = 75
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alRight
      Caption = #1578#1575#1740#1740#1583
      TabOrder = 4
      OnClick = DBGrid1DblClick
      ExplicitLeft = 876
      ExplicitTop = 6
    end
  end
  object DBGrid2: TCedarDbgrid [3]
    Left = 0
    Top = 49
    Width = 954
    Height = 434
    Align = alClient
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
    TabOrder = 2
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
        Width = 63
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Serial'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AlterDate'
        Footers = <>
        Width = 77
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AlterPrice'
        Footers = <>
        Width = 151
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AlterDepValue'
        Footers = <>
        Width = 140
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AlterDepValueInYear'
        Footers = <>
        Width = 194
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AlterNote'
        Footers = <>
        Width = 94
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  inherited ActionList1: TActionList
    Left = 240
    object actSearch: TAction
      Caption = #1580#1587#1578#1580#1608
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
  object qryDetail_Item: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = qryDetail_ItemAfterOpen
    Parameters = <
      item
        Name = 'ReciptItemsID'
        Attributes = [paSigned, paNullable]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT        Fitful.FitfulID AS _checked, Assets.AlterAssets.Se' +
        'rial, Assets.AlterAssets.AlterDate, Assets.AlterAssets.AlterPric' +
        'e, Assets.AlterAssets.AlterDepValue, Assets.AlterAssets.AlterDep' +
        'ValueInYear, '
      '                         Assets.AlterAssets.AlterNote'
      'FROM            Assets.AlterAssets INNER JOIN'
      
        '                         Assets.Amval ON Assets.AlterAssets.Seri' +
        'al = Assets.Amval.SerialNum CROSS JOIN'
      '                         Fitful'
      'WHERE        (Assets.Amval.ReciptItemsID = :ReciptItemsID  )')
    Left = 368
    Top = 181
    object qryDetail_Item_checked: TFMTBCDField
      Tag = 3
      DisplayLabel = #1575#1606#1578#1582#1575#1576
      FieldName = '_checked'
      Precision = 20
      Size = 4
    end
    object qryDetail_ItemSerial: TIntegerField
      Tag = 3
      DisplayLabel = #1587#1585#1610#1575#1604
      FieldName = 'Serial'
    end
    object qryDetail_ItemAlterDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1578#1593#1583#1610#1604
      FieldName = 'AlterDate'
      Required = True
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryDetail_ItemAlterPrice: TBCDField
      Tag = 3
      DisplayLabel = #1578#1593#1583#1610#1604' '#1575#1585#1586#1588' '#1583#1575#1585#1575#1610#1610
      FieldName = 'AlterPrice'
      Required = True
      currency = True
      Precision = 19
    end
    object qryDetail_ItemAlterDepValue: TBCDField
      Tag = 3
      DisplayLabel = #1578#1593#1583#1610#1604' '#1575#1587#1578#1607#1604#1575#1603' '#1575#1606#1576#1575#1588#1578#1607
      FieldName = 'AlterDepValue'
      Required = True
      currency = True
      Precision = 19
    end
    object qryDetail_ItemAlterDepValueInYear: TBCDField
      Tag = 3
      DisplayLabel = #1578#1593#1583#1610#1604' '#1575#1587#1578#1607#1604#1575#1603' '#1587#1575#1604' '#1580#1575#1585#1610' '
      FieldName = 'AlterDepValueInYear'
      Required = True
      currency = True
      Precision = 19
    end
    object qryDetail_ItemAlterNote: TMemoField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'AlterNote'
      BlobType = ftMemo
    end
  end
  object srcDetail_Item: TDataSource
    DataSet = qryDetail_Item
    Left = 576
    Top = 165
  end
end

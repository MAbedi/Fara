inherited ReciptPostOnCustomerF: TReciptPostOnCustomerF
  Left = 392
  Top = 196
  Caption = #1576#1585#1585#1587#1740' '#1575#1591#1604#1575#1593#1575#1578' '#1605#1588#1578#1585#1610
  ClientHeight = 437
  ClientWidth = 1048
  ExplicitWidth = 1064
  ExplicitHeight = 476
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 385
    Width = 1048
    Height = 15
    Align = alBottom
    ExplicitTop = 308
    ExplicitWidth = 741
    ExplicitHeight = 15
  end
  object Label8: TLabel [1]
    Left = 0
    Top = 372
    Width = 1048
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
    ExplicitTop = 384
    ExplicitWidth = 12
  end
  inherited Panel1: TPanel
    Width = 1048
    Height = 59
    TabOrder = 1
    ExplicitWidth = 1056
    ExplicitHeight = 59
    inherited Image1: TImage
      Left = 1002
      ExplicitLeft = 687
    end
    inherited lblTopic0: TLabel
      Left = 854
      Top = 9
      Width = 128
      Caption = #1576#1585#1585#1587#1740' '#1575#1591#1604#1575#1593#1575#1578' '#1605#1588#1578#1585#1610
      ExplicitLeft = 539
      ExplicitTop = 9
      ExplicitWidth = 128
    end
    inherited lblTopic1: TLabel
      Left = 909
      Top = 28
      Visible = False
      ExplicitLeft = 594
      ExplicitTop = 28
    end
    object Label1: TLabel
      Left = 111
      Top = 9
      Width = 31
      Height = 13
      BiDiMode = bdRightToLeft
      Caption = #1575#1586' '#1578#1575#1585#1740#1582
      ParentBiDiMode = False
    end
    object Label2: TLabel
      Left = 112
      Top = 36
      Width = 30
      Height = 13
      Caption = #1578#1575' '#1578#1575#1585#1740#1582
    end
    object mskFrom: TMaskEdit
      Left = 24
      Top = 6
      Width = 84
      Height = 21
      EditMask = '9999/99/99;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '0000/00/00'
    end
    object mskTo: TMaskEdit
      Left = 24
      Top = 33
      Width = 84
      Height = 21
      EditMask = '9999/99/99;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '9999/99/99'
    end
  end
  inherited pnlDown: TPanel
    Top = 400
    Width = 1048
    TabOrder = 0
    ExplicitTop = 324
    ExplicitWidth = 741
    object SpeedButton1: TSpeedButton [0]
      AlignWithMargins = True
      Left = 965
      Top = 4
      Width = 87
      Height = 29
      Action = actFilterOn
      Align = alRight
      ExplicitLeft = 968
      ExplicitTop = 1
      ExplicitHeight = 35
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 884
      Top = 4
      Width = 75
      Height = 29
      Align = alRight
      Caption = #1579#1576#1578
      ModalResult = 1
      TabOrder = 1
      OnClick = BitBtn1Click
      ExplicitLeft = 785
      ExplicitTop = 6
    end
  end
  object grdPostOnCustomer1: TCedarDbgrid [4]
    Left = 748
    Top = 59
    Width = 300
    Height = 313
    Align = alRight
    DataSource = srcPostOnCustomer1
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
    TabOrder = 2
    ActiveSearchPanel = False
    SelectFooterIndex = 0
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PersonID1'
        Footers = <>
        Width = 66
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CustName'
        Footers = <>
        Width = 158
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CountOf'
        Footers = <>
        Width = 31
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object grdPostOnCustomer2: TCedarDbgrid [5]
    Left = 0
    Top = 59
    Width = 748
    Height = 313
    Align = alClient
    DataSource = srcPostOnCustomer2
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
    TabOrder = 3
    ActiveSearchPanel = False
    SelectFooterIndex = 0
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TozinNumber'
        Footers = <>
        Width = 70
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TozinDate'
        Footers = <>
        Width = 76
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'c_StuffName'
        Footers = <>
        Width = 86
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NumberOfBags'
        Footers = <>
        Width = 111
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'UseUnitName'
        Footers = <>
        Width = 79
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SecondType'
        Footers = <>
        Width = 85
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'masir'
        Footers = <>
        Width = 183
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  inherited ActionList1: TActionList
    Left = 335
    Top = 174
    inherited DataSetPost1: TDataSetPost
      DataSource = srcPostOnCustomer1
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
      DataSource = srcPostOnCustomer1
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
    end
    object actSearch: TAction
      Caption = #1580#1587#1578#1580#1608
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
    object actFilterOn: TAction
      Caption = #1575#1593#1605#1575#1604' '#1601#1740#1604#1578#1585
      OnExecute = actFilterOnExecute
    end
  end
  object qryPostOnCustomer1: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryPostOnCustomer1AfterScroll
    Parameters = <
      item
        Name = 'PersonID1From'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PersonID1To'
        DataType = ftWideString
        Size = 9
        Value = '999999999'
      end
      item
        Name = 'ReciptDateFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ReciptDateTo'
        DataType = ftWideString
        Size = 10
        Value = '9999/99/99'
      end>
    SQL.Strings = (
      'select * from '
      
        'Fn_ReciptPostOnCustomer1( :PersonID1From , :PersonID1To , :Recip' +
        'tDateFrom , :ReciptDateTo)'
      '')
    Left = 690
    Top = 145
    object qryPostOnCustomer1PersonID1: TIntegerField
      DisplayLabel = #1705#1583
      FieldName = 'PersonID1'
    end
    object qryPostOnCustomer1CustName: TStringField
      DisplayLabel = #1606#1575#1605
      FieldName = 'CustName'
      Size = 150
    end
    object qryPostOnCustomer1CountOf: TIntegerField
      DisplayLabel = #1578#1593#1583#1575#1583
      FieldName = 'CountOf'
    end
    object qryPostOnCustomer1RelatedRecipts: TStringField
      FieldName = 'RelatedRecipts'
      Size = 300
    end
  end
  object srcPostOnCustomer1: TDataSource
    DataSet = qryPostOnCustomer1
    Left = 526
    Top = 183
  end
  object srcPostOnCustomer2: TDataSource
    DataSet = qryPostOnCustomer2
    Left = 126
    Top = 135
  end
  object qryPostOnCustomer2: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'PersonID1'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ReciptDateFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ReciptDateTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'RelatedRecipts'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      'SELECT    *'
      'FROM         '
      
        'Fn_ReciptPostOnCustomer2( :PersonID1 ,  :ReciptDateFrom , :Recip' +
        'tDateTo , :RelatedRecipts )'
      ''
      '')
    Left = 258
    Top = 129
    object qryPostOnCustomer2TozinNumber: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607#8207#1576#1575#1585#1606#1575#1605#1607
      FieldName = 'TozinNumber'
    end
    object qryPostOnCustomer2TozinDate: TStringField
      DisplayLabel = #1578#1575#1585#1740#1582
      FieldName = 'TozinDate'
      FixedChar = True
      Size = 10
    end
    object qryPostOnCustomer2c_StuffName: TStringField
      DisplayLabel = #1606#1575#1605#8207#1705#1575#1604#1575
      FieldName = 'c_StuffName'
      Size = 150
    end
    object qryPostOnCustomer2NumberOfBags: TBCDField
      DisplayLabel = #1605#1602#1583#1575#1585#1575#1585#1587#1575#1604#1740
      FieldName = 'NumberOfBags'
      Precision = 18
      Size = 2
    end
    object qryPostOnCustomer2UseUnitName: TStringField
      DisplayLabel = #1606#1608#1593#8207#1662#1605#1662
      FieldName = 'UseUnitName'
      Size = 674
    end
    object qryPostOnCustomer2SecondType: TStringField
      DisplayLabel = #1585#1608#1588#8207#1578#1582#1604#1740#1607
      FieldName = 'SecondType'
      Size = 50
    end
    object qryPostOnCustomer2masir: TWideStringField
      DisplayLabel = #1605#1602#1589#1583
      FieldName = 'masir'
      Size = 100
    end
  end
end

inherited CustomersNotUseF: TCustomersNotUseF
  Left = 392
  Top = 196
  Caption = #1575#1588#1582#1575#1589' '#1608' '#1605#1585#1575#1705#1586' ( '#1605#1588#1578#1585#1740#1575#1606' '#1548' '#1601#1585#1608#1588#1606#1583#1711#1575#1606' '#1548' '#1662#1585#1587#1606#1604' '#1608' ...) '#1576#1583#1608#1606' '#1711#1585#1583#1588
  ClientHeight = 446
  ClientWidth = 733
  ExplicitWidth = 739
  ExplicitHeight = 475
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 394
    Width = 733
    Height = 15
    Align = alBottom
    ExplicitTop = 308
    ExplicitWidth = 741
    ExplicitHeight = 15
  end
  inherited Panel1: TPanel
    Width = 733
    TabOrder = 1
    ExplicitWidth = 733
    DesignSize = (
      733
      73)
    inherited Image1: TImage
      Left = 663
      ExplicitLeft = 687
    end
    inherited lblTopic0: TLabel
      Left = 296
      Top = 9
      Width = 347
      Caption = #1575#1588#1582#1575#1589' '#1608' '#1605#1585#1575#1705#1586' ( '#1605#1588#1578#1585#1740#1575#1606' '#1548' '#1601#1585#1608#1588#1606#1583#1711#1575#1606' '#1548' '#1662#1585#1587#1606#1604' '#1608' ...) '#1576#1583#1608#1606' '#1711#1585#1583#1588
      ExplicitLeft = 296
      ExplicitTop = 9
      ExplicitWidth = 347
    end
    inherited lblTopic1: TLabel
      Left = 570
      Top = 28
      Visible = False
      ExplicitLeft = 594
      ExplicitTop = 28
    end
    object edtCustID: TDBEdit
      Left = 416
      Top = 50
      Width = 217
      Height = 19
      Color = clBtnFace
      Ctl3D = False
      DataField = 'CustID'
      DataSource = srcCustomers
      Enabled = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  inherited pnlDown: TPanel
    Top = 409
    Width = 733
    TabOrder = 0
    ExplicitTop = 409
    ExplicitWidth = 733
    inherited btnClose: TBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 4
      Height = 29
      Align = alLeft
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 654
      Top = 4
      Width = 75
      Height = 29
      Action = DataSetDelete1
      Align = alRight
      Caption = #1581#1584#1601
      TabOrder = 1
      ExplicitLeft = -74
      ExplicitTop = 3
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 520
      Top = 4
      Width = 128
      Height = 29
      Action = actDeleteAll
      Align = alRight
      Caption = #1581#1584#1601' '#1587#1591#1585#1607#1575#1740' '#1575#1606#1578#1582#1575#1576#1740
      TabOrder = 2
    end
  end
  object grd1: TCedarDbgrid [3]
    Left = 0
    Top = 73
    Width = 733
    Height = 321
    Align = alClient
    Color = clCream
    DataSource = srcCustomers
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
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
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
        FieldName = 'CustID'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CustName'
        Footers = <>
        Width = 190
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ModifyDate'
        Footers = <>
        Width = 98
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'LastUser'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'FirstUser'
        Footers = <>
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  inherited ActionList1: TActionList
    Left = 135
    Top = 22
    inherited DataSetPost1: TDataSetPost
      DataSource = srcCustomers
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
      DataSource = srcCustomers
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
    object actDeleteAll: TAction
      Caption = #1581#1584#1601' '#1587#1591#1585#1607#1575#1740' '#1575#1606#1578#1582#1575#1576#1740
      OnExecute = actDeleteAllExecute
    end
  end
  object srcCustomers: TDataSource
    DataSet = qryCustomers
    Left = 230
    Top = 167
  end
  object qryCustomers: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterEdit = qryCustomers1AfterEdit
    BeforeDelete = qryCustomers1BeforeDelete
    Parameters = <>
    SQL.Strings = (
      'SELECT        CustID,  CustName, ModifyDate, LastUser, FirstUser'
      'FROM            Customers C ')
    Left = 352
    Top = 216
    object qryCustomersCustID: TIntegerField
      DisplayLabel = #1705#1583
      FieldName = 'CustID'
      ReadOnly = True
    end
    object qryCustomersCustName: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldName = 'CustName'
      ReadOnly = True
      Size = 120
    end
    object qryCustomersLastUser: TWideStringField
      DisplayLabel = #1705#1575#1585#1576#1585' '#1575#1740#1580#1575#1583' '#1705#1606#1606#1583#1607
      FieldName = 'LastUser'
      ReadOnly = True
    end
    object qryCustomersFirstUser: TWideStringField
      DisplayLabel = #1705#1575#1585#1576#1585' '#1608#1740#1585#1575#1740#1588' '#1705#1606#1606#1583#1607
      FieldName = 'FirstUser'
      ReadOnly = True
    end
    object qryCustomersModifyDate: TDateTimeField
      DisplayLabel = #1578#1575#1585#1740#1582' '#1575#1740#1580#1575#1583
      FieldName = 'ModifyDate'
    end
  end
end

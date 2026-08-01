inherited InsuranceF: TInsuranceF
  Left = 560
  Top = 222
  ActiveControl = comboInsuranceNo
  Caption = #1576#1740#1605#1607
  ClientHeight = 421
  ClientWidth = 736
  OldCreateOrder = True
  ExplicitWidth = 742
  ExplicitHeight = 450
  DesignSize = (
    736
    421)
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 364
    Width = 736
    ExplicitTop = 364
    ExplicitWidth = 621
  end
  inherited Panel1: TPanel
    Width = 736
    ExplicitWidth = 736
    DesignSize = (
      736
      73)
    inherited Image1: TImage
      Left = 682
      ExplicitLeft = 567
    end
    inherited lblTopic0: TLabel
      Left = 640
      Width = 22
      Caption = #1576#1740#1605#1607
      ExplicitLeft = 525
      ExplicitWidth = 22
    end
    inherited lblTopic1: TLabel
      Left = 589
      Visible = False
      ExplicitLeft = 474
    end
    object Label1: TLabel
      Left = 183
      Top = 50
      Width = 68
      Height = 13
      Caption = #1603#1583' '#1608#1593#1606#1608#1575#1606' '#1576#1610#1605#1607
    end
    object comboInsuranceNo: TComboBox
      Left = 3
      Top = 46
      Width = 177
      Height = 21
      TabOrder = 0
      Text = 'comboInsuranceNo'
      OnChange = comboInsuranceNoChange
    end
  end
  inherited pnlDown: TPanel
    Top = 384
    Width = 736
    ExplicitTop = 384
    ExplicitWidth = 736
    inherited btnClose: TBitBtn
      Left = 3
      ExplicitLeft = 3
    end
    object okPanel: TPanel
      Left = 350
      Top = 1
      Width = 155
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        155
        35)
      object BitBtn7: TBitBtn
        Left = 77
        Top = 4
        Width = 75
        Height = 25
        Action = DataSetPost1
        Anchors = [akTop, akRight]
        Caption = #1578#1571#1610#1610#1600#1600#1600#1583
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00318C2900007B00004A9C4200FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00009C100000AD0800007B0000BDBD5A00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000084420000AD080000B51000008C00007B841800FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000084000000BD180000B51000009400007B6300008CB5
          7300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00318C290000A5180000B5100000FF420000BD1800BD9C00000073
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00009C100000A5390000FF420000FF420000AD080000BD1000007B
          00006BAD5A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000B5210000E7420000FF4200318C2900318C2900BDBD1000008C
          000018841800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000084080000940800FF00FF00FF00FF00BD9C000000B5
          1000007B00008CB57300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B84210000B5
          10000084000000730000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00009C
          080000B51000007B000000A55A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00318C
          290000B5100010941800BD9C2100FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF001094290039DE8C00BD9C18006BAD5A00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00189C210000CE210000A55A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF008CB57300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 0
      end
      object BitBtn8: TBitBtn
        Left = 0
        Top = 4
        Width = 75
        Height = 25
        Action = DataSetCancel1
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1589#1600#1600#1600#1585#1575#1601
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00424A
          4A00424A4A00424A4A0000424A00424A4A00424A4A00424A4A00005A4A00424A
          4A00424A4A00424A4A00005A4A00424A4A00424A4A00FF00FF00FF00FF006B73
          6B00FFFFFF00FFFFFF0000E7FF00FFFFFF00FFFFFF00FFFFFF00BDFFFF00FFFF
          FF00FFFFFF00FFFFFF00BDFFFF00FFFFFF006B736B00FF00FF00FF00FF006B73
          6B00FFFFFF000010AD0000844A00FF9C4A00FF9C4A00FF9C4A00BD9C4A00FF9C
          4A00FF9C4A00FF9C4A00BD9C4A000018CE006B736B00FF00FF00FF00FF006B73
          6B00FFFFFF000018CE000000AD00FFFFFF00FF9C4A00FFFFFF0000E7FF00FF9C
          4A00FFFFFF00FFFFFF000000CE00FFFFFF006B736B00FF00FF00FF00FF008484
          7300FFFFFF00FF9C4A000000CE000010AD00FF9C4A00FFFFFF00BDFFFF00FF9C
          4A000010AD000018CE00BD9C4A00FFFFFF0084847300FF00FF00FF00FF008484
          7300FFFFFF00FF9C4A0000844A000018CE000010AD00FF9C4A00BD9C4A000010
          AD000018CE00FF9C4A00BD9C4A00FFFFFF0084847300FF00FF00FF00FF008484
          7300FFFFFF00F78C390000E7FF00FFFFFF000018CE000018DE00BD18AD000018
          DE00FFFFFF00FFFFFF00BD9C3900FFFFFF0084847300FF00FF00FF00FF008C8C
          8C00F7F7F700F78C390000E7FF00FFFFFF00F78C39000018DE00BD18DE000018
          CE000010AD00FFFFFF00BD9C3900F7F7F7008C8C8C00FF00FF00FF00FF008C8C
          8C00F7F7F700E784080000840800E78408000018CE000018E700BD9C0800E784
          08000018F7000010AD00BD9C0800F7F7F7008C8C8C00FF00FF00FF00FF009494
          9400E7E7E700E784080000E7FF000018F7000018E700FFFFFF00BDFFFF00E784
          0800FFFFFF000018F700BD9C0800E7E7E70094949400FF00FF00FF00FF009494
          9400E7E7E700E78408000000FF000018E700E7840800FFFFFF00BDFFFF00E784
          0800FFFFFF00FFFFFF00BD18F700E7E7E70094949400FF00FF00FF00FF009C9C
          9C00CED6CE000018F7000000F700E7840800E7840800E7840800FF9C0800E784
          0800E7840800E7840800008408000018F7009C9C9C00FF00FF00FF00FF009C9C
          9C00CED6CE000018F70000C6CE00CED6CE00CED6CE00CED6CE0000DECE00CED6
          CE00CED6CE00CED6CE0000C6CE00CED6CE009C9C9C00FF00FF00FF00FF009C9C
          9C009C9C9C009C9C9C0000849C009C9C9C009C9C9C009C9C9C0084849C009C9C
          9C009C9C9C009C9C9C0000849C009C9C9C009C9C9C00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 1
      end
    end
    object newPanel: TPanel
      Left = 505
      Top = 1
      Width = 230
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      DesignSize = (
        230
        35)
      object BitBtn3: TBitBtn
        Left = 155
        Top = 4
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 77
        Top = 4
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        Left = 0
        Top = 4
        Width = 75
        Height = 25
        Action = DataSetDelete1
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        TabOrder = 2
      end
    end
    object btnSort: TBitBtn
      Left = 80
      Top = 6
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 3
    end
    object btnsearch: TBitBtn
      Left = 158
      Top = 6
      Width = 75
      Height = 25
      Action = actsearch
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
    end
    object btnSendExcel: TBitBtn
      Left = 235
      Top = 6
      Width = 75
      Height = 25
      Action = actSendExcel
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      TabOrder = 5
    end
    object btn4: TBitBtn
      Left = 312
      Top = 6
      Width = 75
      Height = 25
      Action = actGetExcel
      Caption = #1583#1585#1610#1575#1601#1578'Excel'
      TabOrder = 6
    end
  end
  object DBGrid1: TCedarDbgrid [3]
    Tag = 111
    Left = 0
    Top = 73
    Width = 736
    Height = 311
    Align = alClient
    Color = clCream
    DataSource = srcInsurance
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
    HorzScrollBar.ExtraPanel.Visible = True
    IndicatorTitle.ShowDropDownSign = True
    IndicatorTitle.TitleButton = True
    OddRowColor = clGradientInactiveCaption
    RowHeight = 18
    SearchPanel.Enabled = True
    SearchPanel.FilterOnTyping = True
    SortLocal = True
    TabOrder = 2
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    ActiveSearchPanel = False
    SelectFooterIndex = 0
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'InsuranceID'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'MinDailySalary'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'MaxDailySalary'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'YearRun'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'MonthRun'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'InsertDate'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Descriptions'
        Footers = <>
        Width = 176
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  inherited ActionList1: TActionList
    Left = 400
    inherited DataSetPost1: TDataSetPost
      DataSource = srcInsurance
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcInsurance
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      Hint = ' '
      ShortCut = 113
      DataSource = srcInsurance
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
      DataSource = srcInsurance
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      ShortCut = 115
      DataSource = srcInsurance
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
    end
    object actsearch: TAction
      Caption = #1580#1587#1578#1580#1608
    end
    object actSendExcel: TAction
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      OnExecute = actSendExcelExecute
    end
    object actGetExcel: TAction
      Caption = #1583#1585#1610#1575#1601#1578'Excel'
      OnExecute = actGetExcelExecute
    end
    object actPrintVijeh: TAction
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
    end
    object actPrint: TAction
      Caption = #1670#1575#1662' '
      ShortCut = 118
    end
  end
  object srcInsurance: TDataSource
    DataSet = qryInsurance
    OnStateChange = srcInsuranceStateChange
    Left = 96
    Top = 184
  end
  object qryInsurance: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterInsert = qryInsuranceAfterInsert
    BeforePost = qryInsuranceBeforePost
    AfterPost = qryInsuranceAfterPost
    BeforeDelete = qryInsuranceBeforeDelete
    Parameters = <
      item
        Name = 'FormInfoID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT      *'
      'FROM Pay.Insurance'
      'WHERE     (FormInfoID = :FormInfoID)')
    Left = 272
    Top = 192
    object qryInsuranceInsuranceID: TIntegerField
      DisplayLabel = #1585#1583#1740#1601
      FieldName = 'InsuranceID'
    end
    object qryInsuranceFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qryInsuranceMinDailySalary: TBCDField
      DisplayLabel = #1581#1583#1575#1602#1604' '#1581#1602#1608#1602' '#1585#1608#1586#1575#1606#1607
      FieldName = 'MinDailySalary'
      currency = True
      Precision = 19
    end
    object qryInsuranceMaxDailySalary: TBCDField
      DisplayLabel = #1587#1602#1601' '#1576#1740#1605#1607' '#1585#1608#1586#1575#1606#1607
      FieldName = 'MaxDailySalary'
      currency = True
      Precision = 19
    end
    object qryInsuranceYearRun: TIntegerField
      DisplayLabel = #1587#1575#1604' '#1575#1580#1585#1575
      FieldName = 'YearRun'
    end
    object qryInsuranceMonthRun: TIntegerField
      DisplayLabel = #1605#1575#1607' '#1575#1580#1585#1575
      FieldName = 'MonthRun'
    end
    object qryInsuranceInsertDate: TStringField
      DisplayLabel = #1578#1575#1585#1740#1582' '#1575#1740#1580#1575#1583
      FieldName = 'InsertDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryInsuranceDescriptions: TStringField
      DisplayLabel = #1588#1585#1581
      FieldName = 'Descriptions'
      Size = 150
    end
  end
end

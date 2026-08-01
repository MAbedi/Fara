inherited DocRelatedF: TDocRelatedF
  Left = 335
  Top = 267
  Caption = #1570#1606#1575#1604#1610#1586' '#1605#1576#1604#1594
  ClientHeight = 350
  ClientWidth = 547
  OnResize = FormResize
  ExplicitWidth = 563
  ExplicitHeight = 389
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 293
    Width = 539
    ExplicitTop = 305
    ExplicitWidth = 555
  end
  inherited Panel1: TPanel
    Width = 547
    ExplicitWidth = 555
    inherited Image1: TImage
      Left = 509
      Top = 24
      ExplicitLeft = 509
      ExplicitTop = 24
    end
    inherited lblTopic0: TLabel
      Left = 430
      Top = 10
      Width = 51
      Caption = #1570#1606#1575#1604#1610#1586' '#1605#1576#1604#1594
      ExplicitLeft = 430
      ExplicitTop = 10
      ExplicitWidth = 51
    end
    inherited lblTopic1: TLabel
      Left = 481
      Top = 26
      Width = 3
      Caption = ''
      ExplicitLeft = 481
      ExplicitTop = 26
      ExplicitWidth = 3
    end
    object lblBedBes: TLabel
      Left = 3
      Top = 56
      Width = 51
      Height = 13
      Alignment = taRightJustify
      Anchors = [akLeft]
      Caption = #1570#1606#1575#1604#1610#1586' '#1605#1576#1604#1594
      Font.Charset = ARABIC_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  inherited pnlDown: TPanel
    Top = 313
    Width = 547
    ExplicitTop = 325
    ExplicitWidth = 555
    inherited btnClose: TBitBtn
      TabOrder = 5
    end
    object newPanel: TPanel
      Left = 319
      Top = 1
      Width = 235
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        235
        35)
      object btnInsert: TBitBtn
        Left = 158
        Top = 5
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 81
        Top = 5
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object btnDel: TBitBtn
        Left = 4
        Top = 5
        Width = 75
        Height = 25
        Action = DataSetDelete1
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        TabOrder = 2
      end
    end
    object okPanel: TPanel
      Left = 155
      Top = 1
      Width = 156
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitLeft = 163
      DesignSize = (
        156
        35)
      object BitBtn7: TBitBtn
        Left = 80
        Top = 5
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
        Left = 3
        Top = 5
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
    object BitBtn1: TBitBtn
      Left = 86
      Top = 6
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 4
    end
    object BitBtn2: TBitBtn
      Left = 164
      Top = 6
      Width = 75
      Height = 25
      Action = actSearch
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 3
    end
    object BitBtn3: TBitBtn
      Left = 242
      Top = 6
      Width = 75
      Height = 25
      Action = actExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 2
    end
  end
  object DBGrid1: TDBGrid [3]
    Left = 0
    Top = 73
    Width = 547
    Height = 220
    Align = alClient
    DataSource = srcDocReleted
    TabOrder = 2
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Note'
        Width = 169
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Bed'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Bes'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RelatedID'
        Visible = True
      end>
  end
  object SumGrid1: TSumGrid [4]
    Left = 0
    Top = 293
    Width = 547
    Hint = #1576#1587#1578#1575#1606#1603#1575#1585
    Active = False
    Enable_Controls = True
    MasterGrid = DBGrid1
    ShowZero = True
    FieldsName = 'Bed;Bes;'
  end
  inherited ActionList1: TActionList
    Left = 128
    Top = 248
    inherited DataSetPost1: TDataSetPost
      DataSource = srcDocReleted
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcDocReleted
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      DataSource = srcDocReleted
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
      DataSource = srcDocReleted
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      DataSource = srcDocReleted
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actSearch: TAction
      Caption = #1580#1587#1578#1580#1608
      OnExecute = actSearchExecute
    end
    object actExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actExcelExecute
    end
  end
  object qryDocReleted: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryDocReletedAfterInsert
    BeforeEdit = qryDocReletedBeforeEdit
    BeforePost = qryDocReletedBeforePost
    AfterPost = qryDocReletedAfterPost
    Parameters = <
      item
        Name = 'Note'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ServerID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'YearID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'ParentID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'Kind'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'GroupType'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'FormItemID'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * ,:Note as Note  From Related'
      'where  (ServerId = :ServerID) And (YearID = :YearID) '
      'And (ParentID = :ParentID) and (Kind = :Kind ) '
      'and (GroupType=:GroupType)'
      'AND ( ISNULL(FormItemID ,0) = :FormItemID  )')
    Left = 312
    Top = 136
    object qryDocReletedID: TIntegerField
      FieldName = 'ID'
    end
    object qryDocReletedRelatedID: TIntegerField
      DisplayLabel = #1570#1606#1575#1604#1610#1586' '#1605#1576#1604#1594
      FieldName = 'RelatedID'
    end
    object qryDocReletedBed: TBCDField
      DisplayLabel = #1576#1583#1607#1603#1575#1585' '
      FieldName = 'Bed'
      currency = True
      Precision = 19
    end
    object qryDocReletedBes: TBCDField
      DisplayLabel = #1576#1587#1578#1575#1606#1603#1575#1585
      FieldName = 'Bes'
      currency = True
      Precision = 19
    end
    object qryDocReletedRow: TIntegerField
      FieldName = 'Row'
    end
    object qryDocReletedYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryDocReletedServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryDocReletedParentID: TIntegerField
      FieldName = 'ParentID'
    end
    object qryDocReletedKind: TWordField
      FieldName = 'Kind'
    end
    object qryDocReletedGroupType: TWordField
      FieldName = 'GroupType'
    end
    object qryDocReletedNote: TStringField
      DisplayLabel = #1588#1585#1581
      FieldName = 'Note'
      ReadOnly = True
      Size = 300
    end
    object qryDocReletedFormItemID: TIntegerField
      FieldName = 'FormItemID'
    end
  end
  object srcDocReleted: TDataSource
    DataSet = qryDocReleted
    OnStateChange = srcDocReletedStateChange
    Left = 136
    Top = 144
  end
end

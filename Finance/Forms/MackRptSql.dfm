inherited MackRptSqlF: TMackRptSqlF
  Left = 153
  Top = 115
  Caption = 'MackRptSqlF'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    object newPanel: TPanel
      Left = 461
      Top = 1
      Width = 324
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        324
        39)
      object BitBtn3: TBitBtn
        Left = 246
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 169
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        Left = 92
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetDelete1_
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        TabOrder = 2
      end
      object ButtonNewLevel: TBitBtn
        Left = 15
        Top = 8
        Width = 75
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = #1711#1586#1575#1585#1588
        TabOrder = 3
      end
    end
    object okPanel: TPanel
      Left = 296
      Top = 1
      Width = 165
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      DesignSize = (
        165
        39)
      object BitBtn7: TBitBtn
        Left = 88
        Top = 6
        Width = 75
        Height = 25
        Action = DataSetPost1
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1610#1610#1583
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
        Left = 8
        Top = 6
        Width = 75
        Height = 25
        Action = DataSetCancel1
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1589#1585#1575#1601
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
  end
  inherited Panel2: TPanel
    Height = 67
    ExplicitHeight = 67
    inherited lblCaption: TLabel
      Height = 16
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 1
      Width = 249
      Height = 64
      Caption = #1606#1575#1605' '#1601#1575#1610#1604' '#1711#1586#1575#1585#1588
      TabOrder = 0
      DesignSize = (
        249
        64)
      object DBEdit1: TDBEdit
        Left = 8
        Top = 16
        Width = 233
        Height = 21
        Anchors = [akTop, akRight]
        Color = clBtnFace
        DataField = 'RptName'
        DataSource = srcRptUsers
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object chkGroup: TDBCheckBox
        Left = 7
        Top = 42
        Width = 97
        Height = 17
        Alignment = taLeftJustify
        Caption = #1711#1585#1608#1607' '#1576#1606#1583#1610' '#1588#1608#1583
        DataField = 'HasGrp'
        DataSource = srcRptUsers
        TabOrder = 1
        ValueChecked = '1'
        ValueUnchecked = '0'
        OnClick = chkGroupClick
      end
      object DBNavigator1: TDBNavigator
        Left = 97
        Top = 40
        Width = 144
        Height = 20
        DataSource = srcRptUsers
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Flat = True
        TabOrder = 2
      end
    end
  end
  inherited Panel3: TPanel
    Top = 67
    Height = 409
    ExplicitTop = 67
    ExplicitHeight = 418
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 782
      Height = 414
      Align = alClient
      Color = clCream
      DataSource = srcUserItems
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = '_Row'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FieldName'
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FieldCaption'
          Width = 129
          Visible = True
        end
        item
          ButtonStyle = cbsNone
          Expanded = False
          FieldName = 'ShowInRpt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImeMode = imChinese
          PickList.Strings = (
            #1606#1605#1575#1610#1588' '#1588#1608#1583
            #1606#1605#1575#1610#1588' '#1606#1588#1608#1583)
          Width = 99
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SortType'
          PickList.Strings = (
            #1606#1583#1575#1585#1583
            #1589#1593#1608#1583#1610
            #1606#1586#1608#1604#1610)
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SortOrder'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GroupBy'
          PickList.Strings = (
            #1606#1583#1575#1585#1583
            #1711#1585#1608#1607#1610
            #1580#1605#1593
            #1605#1588#1585#1608#1591
            #1578#1593#1583#1575#1583
            #1581#1583#1575#1603#1579#1585
            #1581#1583#1575#1602#1604)
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Criteria'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Criteria2'
          Width = 119
          Visible = True
        end>
    end
  end
  inherited ActionList: TActionList
    Left = 352
    Top = 120
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcRptUsers
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcRptUsers
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcRptUsers
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcRptUsers
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcRptUsers
    end
  end
  inherited ImageList1: TImageList
    Left = 336
    Top = 33
  end
  object qryRptUsers: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    AfterInsert = qryRptUsersAfterInsert
    BeforePost = qryRptUsersBeforePost
    AfterScroll = qryRptUsersAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from RptUsers')
    Left = 256
    Top = 109
    object qryRptUsersRptId: TIntegerField
      FieldName = 'RptId'
    end
    object qryRptUsersRptName: TStringField
      DisplayLabel = #1606#1575#1605' '#1601#1575#1610#1604' '#1711#1586#1575#1585#1588
      FieldName = 'RptName'
      Size = 120
    end
    object qryRptUsersHasGrp: TBooleanField
      CustomConstraint = #1711#1585#1608#1607' '#1576#1606#1583#1610' '#1588#1608#1583
      FieldName = 'HasGrp'
    end
    object qryRptUsersSqlText: TMemoField
      FieldName = 'SqlText'
      BlobType = ftMemo
    end
  end
  object srcRptUsers: TDataSource
    DataSet = qryRptUsers
    OnStateChange = srcRptUsersStateChange
    Left = 336
  end
  object qryRptUserItems: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    AfterInsert = qryRptUserItemsAfterInsert
    BeforeEdit = qryRptUserItemsBeforeEdit
    BeforePost = qryRptUserItemsBeforePost
    AfterPost = qryRptUserItemsAfterPost
    OnCalcFields = qryRptUserItemsCalcFields
    Parameters = <
      item
        Name = 'Rpt'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM         dbo.RptUserItems'
      'WHERE     (RptID = :Rpt)')
    Left = 440
    Top = 8
    object qryRptUserItemsID: TAutoIncField
      DisplayWidth = 12
      FieldName = 'ID'
    end
    object qryRptUserItemsRptID: TIntegerField
      DisplayWidth = 12
      FieldName = 'RptID'
    end
    object qryRptUserItemsRow: TIntegerField
      DisplayLabel = #1585#1583#1610#1601
      DisplayWidth = 12
      FieldName = 'Row'
    end
    object qryRptUserItemsFieldName: TStringField
      DisplayLabel = #1606#1575#1605' '#1601#1610#1604#1583
      DisplayWidth = 18
      FieldName = 'FieldName'
      Size = 50
    end
    object qryRptUserItemsFieldCaption: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1583#1585' '#1711#1586#1575#1585#1588
      DisplayWidth = 30
      FieldName = 'FieldCaption'
      Size = 60
    end
    object qryRptUserItemsCriteria: TStringField
      DisplayLabel = #1588#1585#1591
      DisplayWidth = 120
      FieldName = 'Criteria'
      Size = 100
    end
    object qryRptUserItemsCriteria2: TStringField
      DisplayLabel = #1610#1575' '#1588#1585#1608#1591
      DisplayWidth = 120
      FieldName = 'Criteria2'
      Size = 100
    end
    object qryRptUserItemsGroupBy: TWordField
      DisplayLabel = #1711#1585#1608#1607#1610' '
      FieldName = 'GroupBy'
      OnGetText = qryRptUserItemsGroupByGetText
      OnSetText = qryRptUserItemsGroupBySetText
    end
    object qryRptUserItemsSortType: TWordField
      DisplayLabel = #1606#1608#1593' '#1578#1585#1578#1610#1576
      FieldName = 'SortType'
      OnGetText = qryRptUserItemsSortTypeGetText
      OnSetText = qryRptUserItemsSortTypeSetText
    end
    object qryRptUserItemsSortOrder: TWordField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1578#1585#1578#1610#1576
      FieldName = 'SortOrder'
    end
    object qryRptUserItems_Row: TIntegerField
      DisplayLabel = #1585#1583#1610#1601
      FieldKind = fkCalculated
      FieldName = '_Row'
      Calculated = True
    end
    object qryRptUserItemsShowInRpt: TBooleanField
      DisplayLabel = #1583#1585#1711#1586#1575#1585#1588' '#1606#1605#1575#1610#1588' '#1588#1608#1583
      FieldName = 'ShowInRpt'
      OnGetText = qryRptUserItemsShowInRptGetText
      OnSetText = qryRptUserItemsShowInRptSetText
    end
  end
  object srcUserItems: TDataSource
    DataSet = qryRptUserItems
    OnStateChange = srcUserItemsStateChange
    Left = 552
    Top = 8
  end
  object qrySource: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Documents')
    Left = 32
    Top = 165
    object qrySourceID: TIntegerField
      Tag = 3
      FieldName = 'ID'
    end
    object qrySourceSerial: TIntegerField
      Tag = 3
      FieldName = 'Serial'
    end
    object qrySourceTopicCode: TLargeintField
      Tag = 3
      FieldName = 'TopicCode'
    end
    object qrySourceDetailCode: TIntegerField
      Tag = 3
      FieldName = 'DetailCode'
    end
    object qrySourceCTopicCode: TIntegerField
      Tag = 3
      FieldName = 'CTopicCode'
    end
    object qrySourceCTopicCode2: TIntegerField
      Tag = 3
      FieldName = 'CTopicCode2'
    end
    object qrySourceRow: TIntegerField
      Tag = 3
      FieldName = 'Row'
    end
    object qrySourceDebt: TFMTBCDField
      Tag = 3
      FieldName = 'Debt'
      Precision = 38
    end
    object qrySourceCredit: TFMTBCDField
      Tag = 3
      FieldName = 'Credit'
      Precision = 38
    end
    object qrySourceAidDocNo: TIntegerField
      Tag = 3
      FieldName = 'AidDocNo'
    end
    object qrySourceAidDocdate: TStringField
      Tag = 3
      FieldName = 'AidDocdate'
      FixedChar = True
      Size = 10
    end
    object qrySourceAidAmount: TFloatField
      Tag = 3
      FieldName = 'AidAmount'
    end
    object qrySourceBudgetTopicID: TIntegerField
      Tag = 3
      FieldName = 'BudgetTopicID'
    end
    object qrySourceBudgetID: TIntegerField
      Tag = 3
      FieldName = 'BudgetID'
    end
    object qrySourceReferenceNo: TIntegerField
      Tag = 3
      FieldName = 'ReferenceNo'
    end
    object qrySourceReferenceTxt: TStringField
      Tag = 3
      FieldName = 'ReferenceTxt'
      Size = 15
    end
    object qrySourceReferenceDate: TStringField
      Tag = 3
      FieldName = 'ReferenceDate'
      FixedChar = True
      Size = 10
    end
    object qrySourceProjectID: TIntegerField
      Tag = 3
      FieldName = 'ProjectID'
    end
    object qrySourceReferenceCheck: TWordField
      Tag = 3
      FieldName = 'ReferenceCheck'
    end
  end
end

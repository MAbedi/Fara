object DefineReportItemsF: TDefineReportItemsF
  Left = 212
  Top = 200
  ActiveControl = DBGrid1
  BiDiMode = bdRightToLeft
  BorderStyle = bsToolWindow
  Caption = #1578#1593#1585#1610#1601' '#1603#1583' '#1581#1587#1575#1576#1583#1575#1585#1610
  ClientHeight = 266
  ClientWidth = 600
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentBiDiMode = False
  Position = poScreenCenter
  OnClose = FormClose
  TextHeight = 13
  object PnlUnderButton: TPanel
    Left = 0
    Top = 225
    Width = 600
    Height = 41
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 237
    ExplicitWidth = 608
    DesignSize = (
      600
      41)
    object BtnReject: TBitBtn
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1576#1575#1586#1711#1588#1578
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000220B0000220B00000001000000010000003100000042
        0000004A000000520000006B0000004A080000630800006B0800007B0800008C
        080000940800009C080000A50800006B10000873100000A51000089C180000A5
        180008A5180008AD180008842100109C210008A5210010AD2100108C290008A5
        290008AD290008B5290010A5310018A5310021A5310008AD310010AD3100189C
        390010AD390010A5420010B5420029A54A0010AD4A0018B54A0021BD4A0042BD
        4A0018B5520021B5520039B5520029BD520042BD52004AC6520029BD5A0039BD
        5A0042BD5A0042C65A0031BD630039BD630042BD63004ABD630039BD6B004ABD
        6B0042C673004AC6730052C673004AC67B0052C67B0073D67B0063CE8C006BCE
        8C006BD68C0084D68C0073D694007BDE9C0084DEA5008CDEAD0094DEB50094E7
        B5009CE7B500ADE7B500B5E7B500A5E7BD00B5E7BD00A5E7C600ADE7C600B5EF
        C600BDEFCE00BDEFD600C6F7DE00D6F7DE00D6F7E700E7F7EF00EFFFEF00F7FF
        F700FF00FF00F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005A5A5A5A5A00
        01030301005A5A5A5A5A5A5A5A0101080B0B0B0B0802025A5A5A5A5A05060F0C
        0B0B0B0B0C0C07005A5A5A050D16120B0B0B0B0B0B0B0C07025A5A05201A120F
        2F5755170B0B0B0C025A0314241C1029595C430F0B0B0B0C0801032327202959
        5C3F0B0B0B0B0B0C0A010D2B2B44585C59514E4B4B4B4B0B0B020E3830525C5C
        5C5C5C5C5C5C5C0B0B030E3E3A304D5C59463232323232120B010E39462B2B48
        5C573C202020191209015A1E50412627475C592D1C191613075A5A1E3C53402B
        2A48502B22202015075A5A5A1541564A3E35303434281C065A5A5A5A5A373748
        534F47453D21215A5A5A5A5A5A5A5A1E2C363625185A5A5A5A5A}
      ModalResult = 1
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 508
      Top = 8
      Width = 75
      Height = 25
      Action = DataSetDelete1_
      Anchors = [akTop, akRight]
      Caption = #1581#1584#1601
      TabOrder = 1
      ExplicitLeft = 524
    end
  end
  object DBGrid1: TDBGrid
    Tag = 111
    Left = 0
    Top = 25
    Width = 600
    Height = 200
    Align = alClient
    Color = clCream
    DataSource = srcRowItems
    TabOrder = 1
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnEditButtonClick = DBGrid1EditButtonClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'G_TopicCode'
        Width = 70
        Visible = True
      end
      item
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'G_DetailCode'
        Width = 79
        Visible = True
      end
      item
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'G_CTopicCode'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = '_MoeenName'
        ReadOnly = True
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = '_DetailName'
        ReadOnly = True
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = '_CTopicName'
        Width = 95
        Visible = True
      end>
  end
  object topicPanel: TPanel
    Left = 0
    Top = 0
    Width = 600
    Height = 25
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 608
  end
  object srcRowItems: TDataSource
    DataSet = qryRowItems
    Left = 328
    Top = 64
  end
  object qryCTopicCodes: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT CenterTopics.CTopicCode, CenterTopics.Desc'
      'FROM CenterTopics;')
    Left = 544
    Top = 128
    object qryCTopicCodesCTopicCode: TIntegerField
      FieldName = 'CTopicCode'
    end
    object qryCTopicCodesDesc: TWideStringField
      FieldName = 'Desc'
      Size = 80
    end
  end
  object qryDetailCodes: TADOQuery
    Connection = DmF.adcAccounting
    Parameters = <>
    SQL.Strings = (
      'SELECT Details.DetailCode, Details.Desc'
      'FROM Details;')
    Left = 496
    Top = 72
  end
  object qryTopicCodes: TADOQuery
    Connection = DmF.adcAccounting
    Parameters = <>
    SQL.Strings = (
      'SELECT Categories.TopicCode, Categories.MoeenName'
      'FROM Categories'
      'WHERE (((Categories.MoeenID)<>0));')
    Left = 408
    Top = 128
  end
  object qryRowItems: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    AfterInsert = qryRowItemsAfterInsert
    BeforePost = qryRowItemsBeforePost
    BeforeDelete = qryRowItemsBeforeDelete
    Parameters = <
      item
        Name = 'rowID'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '1'
      end
      item
        Name = 'repCode'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '1'
      end
      item
        Name = 'colNum'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '1'
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM _ReportRowsOnDocs'
      
        'WHERE ((rowID= :rowID) AND (repCode= :repCode) AND (colNum= :col' +
        'Num));')
    Left = 176
    Top = 72
    object qryRowItemsrowID: TIntegerField
      DisplayLabel = #1585#1583#1610#1601
      FieldName = 'rowID'
    end
    object qryRowItemsrepCode: TWordField
      FieldName = 'repCode'
    end
    object qryRowItemsColNum: TWordField
      FieldName = 'ColNum'
    end
    object qryRowItemsG_TopicCode: TIntegerField
      DisplayLabel = #1603#1583' '#1605#1593#1740#1606
      FieldName = 'G_TopicCode'
    end
    object qryRowItemsG_DetailCode: TIntegerField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610
      FieldName = 'G_DetailCode'
    end
    object qryRowItemsG_CTopicCode: TIntegerField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'
      FieldName = 'G_CTopicCode'
    end
    object qryRowItems_MoeenName: TStringField
      DisplayLabel = #1581#1587#1575#1576
      FieldKind = fkLookup
      FieldName = '_MoeenName'
      LookupDataSet = qryTopicCodes
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'MoeenName'
      KeyFields = 'G_TopicCode'
      Size = 100
      Lookup = True
    end
    object qryRowItems_DetailName: TStringField
      DisplayLabel = #1578#1601#1589#1610#1604#1610
      FieldKind = fkLookup
      FieldName = '_DetailName'
      LookupDataSet = qryDetailCodes
      LookupKeyFields = 'DetailCode'
      LookupResultField = 'Desc'
      KeyFields = 'G_DetailCode'
      Size = 100
      Lookup = True
    end
    object qryRowItems_CTopicName: TStringField
      DisplayLabel = #1606#1575#1605' '#1578#1601#1589#1610#1604#1610'2'
      FieldKind = fkLookup
      FieldName = '_CTopicName'
      LookupDataSet = qryCTopicCodes
      LookupKeyFields = 'CTopicCode'
      LookupResultField = 'Desc'
      KeyFields = 'G_CTopicCode'
      Size = 100
      Lookup = True
    end
  end
  object ActionList: TActionList
    Left = 24
    object actExit: TAction
      Caption = #1576#1575#1586#1711#1588#1578
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      Hint = ' '
      ShortCut = 113
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      Hint = ' '
      ShortCut = 115
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = #1578#1575#1610#1610#1583
      Hint = ' '
      ShortCut = 119
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = ' '
      ShortCut = 27
    end
    object _actSearch: TAction
      Caption = #1580#1587#1578#1580#1608
      Hint = ' '
      ShortCut = 116
    end
    object DataSetDelete1_: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
    end
    object actExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
    end
  end
end

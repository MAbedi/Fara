inherited ReleaseF: TReleaseF
  Left = 424
  Top = 219
  Caption = 'ReleaseF'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object LblPerson1: TLabel [1]
    Left = 333
    Top = 80
    Width = 51
    Height = 13
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = #1603#1583' '#1605#1588#1578#1585#1610
    FocusControl = EdtPersonID1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton [2]
    Left = 235
    Top = 75
    Width = 23
    Height = 22
    Anchors = [akTop, akRight]
    Caption = '...'
    OnClick = SpeedButton1Click
  end
  object DBTextPersonID1: TDBText [3]
    Left = 235
    Top = 106
    Width = 167
    Height = 16
    Anchors = [akTop, akRight]
    Color = clCream
    DataField = '_PersonName1'
    ParentColor = False
    Transparent = False
  end
  inherited Panel1: TPanel
    Height = 68
  end
  inherited pnlDown: TPanel
    object BitBtn12: TBitBtn
      Left = 325
      Top = 6
      Width = 75
      Height = 25
      Caption = #1578#1571#1610#1610#1600#1600#1600#1583
      ModalResult = 1
      TabOrder = 1
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
    end
    object BitBtn11: TBitBtn
      Left = 248
      Top = 6
      Width = 75
      Height = 25
      Caption = #1575#1606#1589#1600#1600#1600#1585#1575#1601
      ModalResult = 2
      TabOrder = 2
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
    end
  end
  object EdtPersonID1: TDBEdit [6]
    Left = 260
    Top = 76
    Width = 70
    Height = 21
    Anchors = [akTop, akRight]
    DataField = 'PersonID1'
    TabOrder = 2
  end
  inherited ActionList1: TActionList
    Left = 16
    Top = 8
  end
  object srcSource: TDataSource
    DataSet = qrySource
    Left = 240
    Top = 15
  end
  object qrySource: TADOQuery
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopic' +
        'Code2'
      'FROM         FormsInfo')
    Left = 168
    Top = 8
    object qrySourceAccTopicCode: TIntegerField
      FieldName = 'AccTopicCode'
    end
    object qrySourceAccDetailCode: TIntegerField
      FieldName = 'AccDetailCode'
    end
    object qrySourceAccCTopicCode: TIntegerField
      FieldName = 'AccCTopicCode'
    end
    object qrySourceAccCTopicCode2: TIntegerField
      FieldName = 'AccCTopicCode2'
    end
    object qrySource_AccTopicCode: TStringField
      FieldKind = fkLookup
      FieldName = '_AccTopicName'
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'MoeenName'
      KeyFields = 'AccTopicCode'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qrySource_AccDetailName: TStringField
      FieldKind = fkLookup
      FieldName = '_AccDetailName'
      LookupKeyFields = 'DetailCode'
      LookupResultField = 'DetailName'
      KeyFields = 'AccDetailCode'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qrySource_AccCTopicName: TStringField
      FieldKind = fkLookup
      FieldName = '_AccCTopicName'
      LookupKeyFields = 'CTopicCode'
      LookupResultField = 'CTopicName'
      KeyFields = 'AccCTopicCode'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qrySource_AccCTopicName2: TStringField
      FieldKind = fkLookup
      FieldName = '_AccCTopicName2'
      LookupKeyFields = 'CTopicCode'
      LookupResultField = 'CTopicName'
      KeyFields = 'AccCTopicCode2'
      LookupCache = True
      Size = 150
      Lookup = True
    end
  end
  object qryinit: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'ReciptType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT  * FROM    ReciptTypes'
      #13'where ReciptType=:ReciptType'
      #13#13'ORDER BY ReciptType')
    Left = 84
    Top = 7
    object qryinitReciptType: TWordField
      DisplayLabel = #1603#1583' '#1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
      FieldName = 'ReciptType'
    end
    object qryinitReciptCaption: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1575#1591#1604#1575#1593#1575#1578
      FieldName = 'ReciptCaption'
      Required = True
      Size = 70
    end
    object qryinitEffectType: TWordField
      DisplayLabel = #1606#1608#1593' '#1578#1575#1579#1610#1585' '#1576#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1606#1576#1575#1585
      FieldName = 'EffectType'
    end
    object qryinitUseType: TWordField
      DisplayLabel = #1605#1581#1604' '#1575#1587#1578#1601#1575#1583#1607' ( '#1608#1575#1585#1583#1607' / '#1589#1575#1583#1585#1607' )'
      FieldName = 'UseType'
    end
    object qryinitRecallType: TWordField
      DisplayLabel = #1606#1581#1608#1607' '#1601#1585#1575#1582#1608#1575#1606#1610' '#1575#1591#1604#1575#1593#1575#1578
      FieldName = 'RecallType'
    end
    object qryinitRecallReciptTypes: TStringField
      DisplayLabel = #1603#1583#1607#1575#1610' '#1602#1575#1576#1604' '#1601#1585#1575#1582#1608#1575#1606#1610
      FieldName = 'RecallReciptTypes'
      Size = 30
    end
    object qryinitStoreActive: TWordField
      DisplayLabel = #1603#1583#1608#1606#1575#1605' '#1576#1606#1711#1575#1607' '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'
      FieldName = 'StoreActive'
    end
    object qryinitStoreCaption: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1576#1580#1575#1610' '#1603#1604#1605#1607' '#1576#1606#1711#1575#1607
      FieldName = 'StoreCaption'
      Size = 50
    end
    object qryinitRestartFormNumberOnStore: TWordField
      DisplayLabel = #1570#1610#1575' '#1588#1605#1575#1585#1607' '#1601#1585#1605' '#1576#1585' '#1581#1587#1576' '#1575#1606#1576#1575#1585' Restart '#1588#1608#1583
      FieldName = 'RestartFormNumberOnStore'
    end
    object qryinitPerson1Active: TWordField
      DisplayLabel = #1603#1583' '#1608' '#1606#1575#1605' '#1605#1588#1578#1585#1610' 1 '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'
      FieldName = 'Person1Active'
    end
    object qryinitPerson1Caption: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1576#1580#1575#1610' '#1603#1604#1605#1607' '#1605#1588#1578#1585#1610
      FieldName = 'Person1Caption'
      Size = 50
    end
    object qryinitPerson1Groups: TStringField
      DisplayLabel = #1603#1583' '#1711#1585#1608#1607' '#1605#1588#1578#1585#1610#1575#1606' 1'
      FieldName = 'Person1Groups'
      Size = 250
    end
    object qryinitPerson2Active: TWordField
      DisplayLabel = #1603#1583' '#1608' '#1606#1575#1605' '#1605#1588#1578#1585#1610' 2 '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'
      FieldName = 'Person2Active'
    end
    object qryinitPerson2Caption: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1576#1580#1575#1610' '#1603#1604#1605#1607' '#1605#1588#1578#1585#1610' 2'
      FieldName = 'Person2Caption'
      Size = 50
    end
    object qryinitPerson2Groups: TStringField
      DisplayLabel = #1603#1583' '#1711#1585#1608#1607' '#1605#1588#1578#1585#1610#1575#1606' 2'
      FieldName = 'Person2Groups'
      Size = 250
    end
    object qryinitSection2Visible: TWordField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1608' '#1608#1586#1606' '#1583#1585' '#1582#1608#1575#1587#1578#1610' '#1601#1593#1575#1604' '#1576#1575#1588#1583
      FieldName = 'Section2Visible'
    end
    object qryinitSection2Caption: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1576#1580#1575#1610' '#1603#1604#1605#1607' '#1583#1585#1582#1608#1575#1587#1578#1610
      FieldName = 'Section2Caption'
      Size = 50
    end
    object qryinitSection1Visible: TWordField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1548' '#1608#1586#1606' '#1608' '#1576#1607#1575#1610' '#1603#1604' '#1575#1589#1604#1610' '#1606#1605#1575#1610#1588' '#1588#1608#1583
      FieldName = 'Section1Visible'
    end
    object qryinitSecondTypeActive: TWordField
      DisplayLabel = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578' '#1583#1585' Master '#1606#1605#1575#1610#1588' '#1588#1608#1583
      FieldName = 'SecondTypeActive'
    end
    object qryinitMakeDoc: TWordField
      DisplayLabel = #1587#1606#1583' '#1581#1587#1575#1576#1583#1575#1585#1610' '#1576#1585' '#1585#1608#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1610#1606' '#1601#1585#1605' '#1589#1575#1583#1585' '#1588#1608#1583
      FieldName = 'MakeDoc'
    end
    object qryinitBedType: TWordField
      DisplayLabel = #1606#1608#1593' '#1576#1583#1607#1603#1575#1585
      FieldName = 'BedType'
    end
    object qryinitBesType: TWordField
      DisplayLabel = #1606#1608#1593' '#1576#1587#1578#1575#1606#1603#1575#1585
      FieldName = 'BesType'
    end
    object qryinitDetailNoteActive: TWordField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' Detail '#1601#1593#1575#1604' '#1576#1575#1588#1583
      FieldName = 'DetailNoteActive'
    end
    object qryinitControlEntityActive: TWordField
      DisplayLabel = #1570#1610#1575' '#1586#1605#1575#1606' '#1579#1576#1578' '#1605#1608#1580#1608#1583#1610' '#1603#1606#1578#1585#1604' '#1588#1608#1583'.'
      FieldName = 'ControlEntityActive'
    end
    object qryinitExpireDateActive: TWordField
      DisplayLabel = #1570#1610#1575' '#1578#1575#1585#1610#1582' '#1606#1605#1575#1610#1588' '#1588#1608#1583'.'
      FieldName = 'ExpireDateActive'
    end
    object qryinitExpireDateCaption: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1576#1585#1575#1610' '#1578#1575#1585#1610#1582
      FieldName = 'ExpireDateCaption'
      Size = 50
    end
    object qryinitFormSignature: TStringField
      DisplayLabel = #1593#1606#1575#1608#1610#1606' '#1576#1585#1575#1610' '#1605#1581#1604' '#1575#1605#1590#1575#1569'('#1578#1607' '#1601#1585#1605')'
      FieldName = 'FormSignature'
      Size = 250
    end
    object qryinitPerformFileName: TStringField
      DisplayLabel = #1606#1575#1605' '#1711#1586#1575#1585#1588' '#1662#1610#1588' '#1601#1575#1603#1578#1608#1585'('#1711#1586#1575#1585#1588' 1)'
      FieldName = 'PerformFileName'
      Size = 50
    end
    object qryinitReportFileName: TStringField
      DisplayLabel = #1606#1575#1605' '#1711#1586#1575#1585#1588' ('#1711#1586#1575#1585#1588' 2)'
      FieldName = 'ReportFileName'
      Size = 50
    end
    object qryinitReciptDescription: TMemoField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' '#1605#1585#1576#1608#1591' '#1576#1607' '#1575#1610#1606' '#1601#1585#1605
      FieldName = 'ReciptDescription'
      BlobType = ftMemo
    end
    object qryinitTemplateCode: TWordField
      DisplayLabel = #1606#1575#1605' '#1601#1585#1605' '#1602#1575#1576#1604' '#1606#1605#1575#1610#1588
      FieldName = 'TemplateCode'
    end
    object qryinitControlCodeCaption: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1576#1580#1575#1610' '#1588#1605#1575#1585#1607' '#1585#1575#1607#1606#1605#1575
      FieldName = 'ControlCodeCaption'
      Size = 50
    end
    object qryinitUseUnitCase: TWordField
      DisplayLabel = #1605#1581#1604' '#1575#1587#1578#1601#1575#1583#1607' '#1603#1583' '#1605#1581#1604' '#1605#1589#1585#1601' '#1583#1585' Master '#1606#1605#1575#1610#1588' '#1588#1608#1583
      FieldName = 'UseUnitCase'
    end
    object qryinitUseUnitCaseCaption: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1576#1585#1575#1610' '#1603#1583' '#1605#1581#1604' '#1605#1589#1585#1601' '#1603#1575#1604#1575
      FieldName = 'UseUnitCaseCaption'
      Size = 50
    end
    object qryinitFormHeader: TStringField
      DisplayLabel = #1605#1578#1606' '#1576#1575#1604#1575#1610' '#1711#1586#1575#1585#1588
      FieldName = 'FormHeader'
      Size = 250
    end
    object qryinitFormFooter: TStringField
      DisplayLabel = #1605#1578#1606' '#1662#1575#1610#1610#1606' '#1711#1586#1575#1585#1588
      FieldName = 'FormFooter'
      Size = 250
    end
    object qryinitUserSecurityCheckActive: TWordField
      DisplayLabel = #1570#1610#1575' '#1586#1605#1575#1606' '#1608#1610#1585#1575#1610#1588' '#1603#1583' '#1603#1575#1585#1576#1585' '#1603#1606#1578#1585#1604' '#1588#1608#1583'.'
      FieldName = 'UserSecurityCheckActive'
    end
    object qryinitUseStoreIDOnRecall: TWordField
      DisplayLabel = #1570#1610#1575' '#1603#1583' '#1575#1606#1576#1575#1585' '#1583#1585' '#1601#1585#1575#1582#1608#1575#1606#1610' '#1605#1608#1579#1585' '#1575#1587#1578
      FieldName = 'UseStoreIDOnRecall'
    end
    object qryinitDeficitsActive: TWordField
      DisplayLabel = #1575#1591#1604#1575#1593#1575#1578' '#1603#1587#1608#1585#1575#1578' '#1608' '#1575#1590#1575#1601#1575#1578' '#1606#1605#1575#1610#1588' '#1588#1608#1583'.'
      FieldName = 'DeficitsActive'
    end
    object qryinitHelpID: TIntegerField
      FieldName = 'HelpID'
    end
    object qryinitUnitPriceReadOnly: TWordField
      FieldName = 'UnitPriceReadOnly'
    end
    object qryinitMaxRowsPerForm: TIntegerField
      FieldName = 'MaxRowsPerForm'
    end
    object qryinitPrintCount: TWordField
      FieldName = 'PrintCount'
    end
    object qryinitRecallReciptDeficitsType: TStringField
      FieldName = 'RecallReciptDeficitsType'
      Size = 100
    end
    object qryinitCorrelateReciptType: TWordField
      FieldName = 'CorrelateReciptType'
    end
    object qryinitCorrelateKind: TWordField
      FieldName = 'CorrelateKind'
    end
    object qryinitAidInfoActive: TWordField
      FieldName = 'AidInfoActive'
    end
    object qryinitAidInfoCaption: TStringField
      FieldName = 'AidInfoCaption'
      Size = 50
    end
    object qryinitAutoPrice: TWordField
      FieldName = 'AutoPrice'
    end
  end
  object qryRecipts: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ReciptType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 5
      end>
    SQL.Strings = (
      'SELECT *  FROM    Recipts'
      #13'WHERE     (ReciptType = :ReciptType)'
      'ORDER BY ReciptNumber')
    Left = 132
    Top = 72
    object qryReciptsStoreID: TSmallintField
      FieldName = 'StoreID'
      Required = True
    end
    object qryRecipts_StoresName: TStringField
      FieldKind = fkLookup
      FieldName = '_StoresName'
      LookupKeyFields = 'n_StoreID'
      LookupResultField = 'c_StoreName'
      KeyFields = 'StoreID'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryReciptsReciptNumber: TIntegerField
      FieldName = 'ReciptNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryReciptsReciptDate: TStringField
      FieldName = 'ReciptDate'
      Required = True
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryReciptsPersonID1: TIntegerField
      FieldName = 'PersonID1'
    end
    object qryRecipts_PersonName: TStringField
      FieldKind = fkLookup
      FieldName = '_PersonAddress'
      LookupKeyFields = 'CustID'
      LookupResultField = 'Address'
      KeyFields = 'PersonID1'
      LookupCache = True
      Size = 120
      Lookup = True
    end
    object qryRecipts_PersonName3: TStringField
      FieldKind = fkLookup
      FieldName = '_PersonTel'
      LookupKeyFields = 'CustID'
      LookupResultField = 'Tel'
      KeyFields = 'PersonID1'
      LookupCache = True
      Size = 120
      Lookup = True
    end
    object qryRecipts_PersonName4: TStringField
      FieldKind = fkLookup
      FieldName = '_PersonPostalCode'
      LookupKeyFields = 'CustID'
      LookupResultField = 'PostalCode'
      KeyFields = 'PersonID1'
      LookupCache = True
      Size = 120
      Lookup = True
    end
    object qryRecipts_PersonName5: TStringField
      FieldKind = fkLookup
      FieldName = '_PersonEconomicNumber'
      LookupKeyFields = 'CustID'
      LookupResultField = 'EconomicNumber'
      KeyFields = 'PersonID1'
      LookupCache = True
      Size = 120
      Lookup = True
    end
    object qryRecipts_PersonName1: TStringField
      FieldKind = fkLookup
      FieldName = '_PersonName1'
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'PersonID1'
      LookupCache = True
      Size = 120
      Lookup = True
    end
    object qryReciptsPersonID2: TIntegerField
      FieldName = 'PersonID2'
    end
    object qryRecipts_PersonName2: TStringField
      FieldKind = fkLookup
      FieldName = '_PersonName2'
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'PersonID2'
      LookupCache = True
      Size = 120
      Lookup = True
    end
    object qryReciptsReciptType: TWordField
      FieldName = 'ReciptType'
    end
    object qryReciptsServiceValue: TBCDField
      FieldName = 'ServiceValue'
      currency = True
      Precision = 19
    end
    object qryReciptsReciptValue: TBCDField
      FieldName = 'ReciptValue'
      currency = True
      Precision = 19
    end
    object qryReciptsTotalValue: TBCDField
      FieldName = 'TotalValue'
      currency = True
      Precision = 19
    end
    object qryReciptsAddDecValue: TBCDField
      FieldName = 'AddDecValue'
      currency = True
      Precision = 19
    end
    object qryReciptsDocNo: TIntegerField
      FieldName = 'DocNo'
    end
    object qryReciptsDocDate: TStringField
      FieldName = 'DocDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryReciptsReciptNote: TStringField
      FieldName = 'ReciptNote'
      Size = 200
    end
    object qryReciptsParentReciptID: TIntegerField
      FieldName = 'ParentReciptID'
    end
    object qryReciptsModifyDate: TDateTimeField
      FieldName = 'ModifyDate'
      Required = True
      EditMask = '9999/99/99'
    end
    object qryReciptsReciptState: TWordField
      FieldName = 'ReciptState'
      Required = True
    end
    object qryReciptsUseUnitID: TIntegerField
      DisplayLabel = #1603#1583' '#1605#1581#1604' '#1605#1589#1585#1601
      FieldName = 'UseUnitID'
    end
    object qryRecipts_UseUnitName: TStringField
      DisplayLabel = #1606#1575#1605' '#1605#1581#1604' '#1605#1589#1585#1601
      FieldKind = fkLookup
      FieldName = '_UseUnitName'
      LookupKeyFields = 'UseUnitID'
      LookupResultField = 'UseUnitName'
      KeyFields = 'UseUnitID'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryReciptsExpireDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '
      FieldName = 'ExpireDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryReciptsSecondType: TWordField
      FieldName = 'SecondType'
      Required = True
    end
    object qryRecipts_ValuationType: TIntegerField
      FieldKind = fkLookup
      FieldName = '_ValuationType'
      LookupKeyFields = 'n_StoreID'
      LookupResultField = 'n_ValuationType'
      KeyFields = 'StoreID'
      LookupCache = True
      Lookup = True
    end
    object qryReciptsReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryReciptsOperatorID: TIntegerField
      FieldName = 'OperatorID'
    end
    object qryRecipts_OperatorName: TStringField
      FieldKind = fkLookup
      FieldName = '_OperatorName'
      LookupKeyFields = 'UserID'
      LookupResultField = 'name'
      KeyFields = 'OperatorID'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryRecipts_PersonFax: TStringField
      FieldKind = fkLookup
      FieldName = '_PersonFax'
      LookupKeyFields = 'CustID'
      LookupResultField = 'Fax'
      KeyFields = 'PersonID1'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryReciptsAidDate: TStringField
      FieldName = 'AidDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryRecipts_CustValuationType: TIntegerField
      FieldKind = fkLookup
      FieldName = '_CustValuationType'
      LookupKeyFields = 'CustID'
      LookupResultField = 'ValuationType'
      KeyFields = 'PersonID1'
      LookupCache = True
      Lookup = True
    end
    object qryReciptsAidNumber: TFloatField
      FieldName = 'AidNumber'
    end
  end
  object qryItems: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'ReciptID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 29
      end>
    SQL.Strings = (
      'SELECT  * FROM      ReciptItems'
      'WHERE  ReciptID = :ReciptID'
      'ORDER BY    ReciptItemID')
    Left = 64
    Top = 81
    object qryItemsReciptItemID: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1606#1583#1607
      FieldName = 'ReciptItemID'
    end
    object qryItemsReciptID: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'ReciptID'
    end
    object qryItemsStuffCode: TIntegerField
      DisplayLabel = #1603#1600#1600#1583' '#1603#1600#1600#1575#1604#1575
      FieldName = 'StuffCode'
      Required = True
    end
    object qryItems_StuffName: TStringField
      DisplayLabel = #1588#1600#1600#1600#1600#1600#1600#1585#1581'   '#1603#1600#1600#1600#1600#1575#1604#1575
      FieldKind = fkLookup
      FieldName = '_StuffName'
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'c_StuffName'
      KeyFields = 'StuffCode'
      LookupCache = True
      Required = True
      Size = 100
      Lookup = True
    end
    object qryItems_UnitName: TStringField
      DisplayLabel = #1608#1575#1581#1583' '#1588#1605#1575#1585#1588
      FieldKind = fkLookup
      FieldName = '_UnitName'
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'UnitName'
      KeyFields = 'StuffCode'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryItems_StuffTecInfo: TStringField
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1601#1606#1610
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = '_StuffTecInfo'
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'c_StuffTecInfo'
      KeyFields = 'StuffCode'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryItemsStuffSize: TStringField
      DisplayLabel = #1575#1576#1600#1600#1593#1575#1583
      FieldName = 'StuffSize'
      FixedChar = True
      Size = 12
    end
    object qryItemsStuffAlloy: TStringField
      DisplayLabel = #1570#1604#1610#1575#1688
      FieldName = 'StuffAlloy'
      Size = 12
    end
    object qryItemsInputEntity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'InputEntity'
    end
    object qryItemsOutputEntity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'OutputEntity'
    end
    object qryItemsInputWeight: TFloatField
      DisplayLabel = #1608#1586#1606
      FieldName = 'InputWeight'
    end
    object qryItemsOutputWeight: TFloatField
      DisplayLabel = #1608#1586#1606
      FieldName = 'OutputWeight'
    end
    object qryItemsRequestedEntity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1583#1585#1582#1608#1575#1587#1578#1610
      FieldName = 'RequestedEntity'
    end
    object qryItemsRequestedWeight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1583#1585' '#1582#1608#1575#1587#1578#1610
      FieldName = 'RequestedWeight'
    end
    object qryItemsStuffGrade: TWordField
      DisplayLabel = #1583#1585#1580#1607' '#1603#1575#1604#1575
      FieldName = 'StuffGrade'
    end
    object qryItemsTotalInputPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1603#1604' '#1608#1575#1585#1583#1607
      FieldName = 'TotalInputPrice'
      currency = True
      Precision = 19
    end
    object qryItemsTotalOutputPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1603#1604' '#1589#1575#1583#1585#1607
      FieldName = 'TotalOutputPrice'
      currency = True
      Precision = 19
    end
    object qryItemsTotallSellPrice: TBCDField
      FieldName = 'TotallSellPrice'
      currency = True
      Precision = 19
    end
    object qryItemsUnitSellPrice: TFMTBCDField
      FieldName = 'UnitSellPrice'
      currency = True
      Precision = 19
    end
    object qryItemsItemNote: TStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'ItemNote'
      Size = 100
    end
    object qryItemsacc_TopicCode: TStringField
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576
      FieldName = 'acc_TopicCode'
      Size = 12
    end
    object qryItems_TopicCodeName: TStringField
      DisplayLabel = #1588#1585#1581' '#1581#1587#1575#1576
      FieldKind = fkLookup
      FieldName = '_TopicCodeName'
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'MoeenName'
      KeyFields = 'acc_TopicCode'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryItemsacc_DetailCode: TStringField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610
      FieldName = 'acc_DetailCode'
      Size = 12
    end
    object qryItems_DetailCode: TStringField
      DisplayLabel = #1588#1585#1581' '#1578#1601#1589#1610#1604#1610
      FieldKind = fkLookup
      FieldName = '_DetailCode'
      LookupKeyFields = 'DetailCode'
      LookupResultField = 'DetailName'
      KeyFields = 'acc_DetailCode'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryItemsacc_CTopicCode: TStringField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'
      FieldName = 'acc_CTopicCode'
      Size = 12
    end
    object qryItems_CTopicCode2: TStringField
      DisplayLabel = #1588#1585#1581' '#1578#1601#1589#1610#1604#1610'2'
      FieldKind = fkLookup
      FieldName = '_CTopicCode2'
      LookupKeyFields = 'CTopicCode'
      LookupResultField = 'CTopicName'
      KeyFields = 'acc_CTopicCode2'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryItemsUseUnitID: TIntegerField
      DisplayLabel = #1603#1583' '#1605#1581#1604' '#1605#1589#1585#1601
      FieldName = 'UseUnitID'
    end
    object qryItems_UseUnitName: TStringField
      DisplayLabel = #1606#1575#1605' '#1605#1581#1604' '#1605#1589#1585#1601
      FieldKind = fkLookup
      FieldName = '_UseUnitName'
      LookupKeyFields = 'UseUnitID'
      LookupResultField = 'UseUnitName'
      KeyFields = 'UseUnitID'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryItemspreReciptItemID: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1575#1582#1608#1575#1606#1610
      FieldName = 'preReciptItemID'
    end
    object qryItems_SumEntity: TIntegerField
      DisplayLabel = #1580#1605#1593' '#1605#1602#1583#1575#1585
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = '_SumEntity'
      LookupCache = True
      Calculated = True
    end
    object qryItems_CTopicCode: TStringField
      DisplayLabel = #1588#1585#1581' '#1578#1601#1589#1610#1604#1610'2'
      FieldKind = fkLookup
      FieldName = '_CTopicCode'
      LookupKeyFields = 'CTopicCode'
      LookupResultField = 'CTopicName'
      KeyFields = 'acc_CTopicCode'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryItems_SumWeight: TIntegerField
      DisplayLabel = #1580#1605#1593' '#1608#1586#1606
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = '_SumWeight'
      LookupCache = True
      Calculated = True
    end
    object qryItemsStuffDiameter: TFloatField
      DisplayLabel = #1590#1582#1575#1605#1578
      FieldName = 'StuffDiameter'
    end
    object qryItemsControlCode: TLargeintField
      DisplayLabel = #1587#1585#1610#1575#1604' '#1603#1606#1578#1585#1604
      FieldName = 'ControlCode'
    end
    object qryItemsacc_CTopicCode2: TStringField
      FieldName = 'acc_CTopicCode2'
      Size = 12
    end
    object qryItemsPersonID1: TIntegerField
      FieldName = 'PersonID1'
    end
    object qryItems_radif: TIntegerField
      FieldKind = fkCalculated
      FieldName = '_radif'
      LookupCache = True
      Calculated = True
    end
    object qryItemsAidNumber: TIntegerField
      FieldName = 'AidNumber'
    end
    object qryItemsAidDate: TStringField
      FieldName = 'AidDate'
      FixedChar = True
      Size = 10
    end
    object qryItemsDiscount: TIntegerField
      FieldName = 'Discount'
    end
    object qryItems_Carton: TIntegerField
      FieldKind = fkLookup
      FieldName = '_Carton'
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'Carton'
      KeyFields = 'StuffCode'
      LookupCache = True
      Lookup = True
    end
  end
  object qryInsert: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'ReciptID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 29
      end>
    SQL.Strings = (
      'SELECT  * FROM      ReciptItems'
      'WHERE  ReciptID = :ReciptID'
      'ORDER BY    ReciptItemID')
    Left = 136
    Top = 145
    object IntegerField1: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1606#1583#1607
      FieldName = 'ReciptItemID'
    end
    object IntegerField2: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'ReciptID'
    end
    object IntegerField3: TIntegerField
      DisplayLabel = #1603#1600#1600#1583' '#1603#1600#1600#1575#1604#1575
      FieldName = 'StuffCode'
      Required = True
    end
    object StringField1: TStringField
      DisplayLabel = #1588#1600#1600#1600#1600#1600#1600#1585#1581'   '#1603#1600#1600#1600#1600#1575#1604#1575
      FieldKind = fkLookup
      FieldName = '_StuffName'
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'c_StuffName'
      KeyFields = 'StuffCode'
      LookupCache = True
      Required = True
      Size = 100
      Lookup = True
    end
    object StringField2: TStringField
      DisplayLabel = #1608#1575#1581#1583' '#1588#1605#1575#1585#1588
      FieldKind = fkLookup
      FieldName = '_UnitName'
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'UnitName'
      KeyFields = 'StuffCode'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object StringField3: TStringField
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1601#1606#1610
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = '_StuffTecInfo'
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'c_StuffTecInfo'
      KeyFields = 'StuffCode'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object StringField4: TStringField
      DisplayLabel = #1575#1576#1600#1600#1593#1575#1583
      FieldName = 'StuffSize'
      FixedChar = True
      Size = 12
    end
    object StringField5: TStringField
      DisplayLabel = #1570#1604#1610#1575#1688
      FieldName = 'StuffAlloy'
      Size = 12
    end
    object FloatField1: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'InputEntity'
    end
    object FloatField2: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'OutputEntity'
    end
    object FloatField3: TFloatField
      DisplayLabel = #1608#1586#1606
      FieldName = 'InputWeight'
    end
    object FloatField4: TFloatField
      DisplayLabel = #1608#1586#1606
      FieldName = 'OutputWeight'
    end
    object FloatField5: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1583#1585#1582#1608#1575#1587#1578#1610
      FieldName = 'RequestedEntity'
    end
    object FloatField6: TFloatField
      DisplayLabel = #1608#1586#1606' '#1583#1585' '#1582#1608#1575#1587#1578#1610
      FieldName = 'RequestedWeight'
    end
    object WordField1: TWordField
      DisplayLabel = #1583#1585#1580#1607' '#1603#1575#1604#1575
      FieldName = 'StuffGrade'
    end
    object BCDField1: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1603#1604' '#1608#1575#1585#1583#1607
      FieldName = 'TotalInputPrice'
      currency = True
      Precision = 19
    end
    object BCDField2: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1603#1604' '#1589#1575#1583#1585#1607
      FieldName = 'TotalOutputPrice'
      currency = True
      Precision = 19
    end
    object BCDField3: TBCDField
      FieldName = 'TotallSellPrice'
      currency = True
      Precision = 19
    end
    object BCDField4: TBCDField
      FieldName = 'UnitSellPrice'
      currency = True
      Precision = 19
    end
    object StringField6: TStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'ItemNote'
      Size = 100
    end
    object StringField7: TStringField
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576
      FieldName = 'acc_TopicCode'
      Size = 12
    end
    object StringField8: TStringField
      DisplayLabel = #1588#1585#1581' '#1581#1587#1575#1576
      FieldKind = fkLookup
      FieldName = '_TopicCodeName'
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'MoeenName'
      KeyFields = 'acc_TopicCode'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object StringField9: TStringField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610
      FieldName = 'acc_DetailCode'
      Size = 12
    end
    object StringField10: TStringField
      DisplayLabel = #1588#1585#1581' '#1578#1601#1589#1610#1604#1610
      FieldKind = fkLookup
      FieldName = '_DetailCode'
      LookupKeyFields = 'DetailCode'
      LookupResultField = 'DetailName'
      KeyFields = 'acc_DetailCode'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object StringField11: TStringField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'
      FieldName = 'acc_CTopicCode'
      Size = 12
    end
    object StringField12: TStringField
      DisplayLabel = #1588#1585#1581' '#1578#1601#1589#1610#1604#1610'2'
      FieldKind = fkLookup
      FieldName = '_CTopicCode2'
      LookupKeyFields = 'CTopicCode'
      LookupResultField = 'CTopicName'
      KeyFields = 'acc_CTopicCode2'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object IntegerField4: TIntegerField
      DisplayLabel = #1603#1583' '#1605#1581#1604' '#1605#1589#1585#1601
      FieldName = 'UseUnitID'
    end
    object StringField13: TStringField
      DisplayLabel = #1606#1575#1605' '#1605#1581#1604' '#1605#1589#1585#1601
      FieldKind = fkLookup
      FieldName = '_UseUnitName'
      LookupKeyFields = 'UseUnitID'
      LookupResultField = 'UseUnitName'
      KeyFields = 'UseUnitID'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object IntegerField5: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1575#1582#1608#1575#1606#1610
      FieldName = 'preReciptItemID'
    end
    object IntegerField6: TIntegerField
      DisplayLabel = #1580#1605#1593' '#1605#1602#1583#1575#1585
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = '_SumEntity'
      LookupCache = True
      Calculated = True
    end
    object StringField14: TStringField
      DisplayLabel = #1588#1585#1581' '#1578#1601#1589#1610#1604#1610'2'
      FieldKind = fkLookup
      FieldName = '_CTopicCode'
      LookupKeyFields = 'CTopicCode'
      LookupResultField = 'CTopicName'
      KeyFields = 'acc_CTopicCode'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object IntegerField7: TIntegerField
      DisplayLabel = #1580#1605#1593' '#1608#1586#1606
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = '_SumWeight'
      LookupCache = True
      Calculated = True
    end
    object FloatField7: TFloatField
      DisplayLabel = #1590#1582#1575#1605#1578
      FieldName = 'StuffDiameter'
    end
    object IntegerField8: TIntegerField
      DisplayLabel = #1587#1585#1610#1575#1604' '#1603#1606#1578#1585#1604
      FieldName = 'ControlCode'
    end
    object StringField15: TStringField
      FieldName = 'acc_CTopicCode2'
      Size = 12
    end
    object IntegerField9: TIntegerField
      FieldName = 'PersonID1'
    end
    object IntegerField10: TIntegerField
      FieldKind = fkCalculated
      FieldName = '_radif'
      LookupCache = True
      Calculated = True
    end
    object IntegerField11: TIntegerField
      FieldName = 'AidNumber'
    end
    object StringField16: TStringField
      FieldName = 'AidDate'
      FixedChar = True
      Size = 10
    end
    object IntegerField12: TIntegerField
      FieldName = 'Discount'
    end
    object IntegerField13: TIntegerField
      FieldKind = fkLookup
      FieldName = '_Carton'
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'Carton'
      KeyFields = 'StuffCode'
      LookupCache = True
      Lookup = True
    end
  end
end

inherited CategoresNoteF: TCategoresNoteF
  Left = 282
  Top = 174
  ActiveControl = DBEdit3
  Caption = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
  ClientHeight = 314
  ClientWidth = 416
  ExplicitWidth = 422
  ExplicitHeight = 343
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 257
    Width = 416
    ExplicitTop = 257
    ExplicitWidth = 416
  end
  object Label1: TLabel [1]
    Left = 322
    Top = 49
    Width = 69
    Height = 13
    Align = alCustom
    Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1581#1587#1575#1576
  end
  object Label2: TLabel [2]
    Left = 276
    Top = 95
    Width = 115
    Height = 13
    Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1581#1587#1575#1576' '#1578#1601#1589#1610#1604#1610'2'
  end
  object DBText1: TDBText [3]
    Left = 24
    Top = 65
    Width = 301
    Height = 17
    Color = 15000804
    DataField = '_NameTopic'
    DataSource = srcCtopicNote
    ParentColor = False
    Transparent = False
  end
  object DBText2: TDBText [4]
    Left = 24
    Top = 114
    Width = 301
    Height = 17
    Color = 15000804
    DataField = '_NameCtopic'
    DataSource = srcCtopicNote
    ParentColor = False
    Transparent = False
  end
  object Bevel2: TBevel [5]
    Left = 0
    Top = 89
    Width = 415
    Height = 3
    Shape = bsTopLine
  end
  object Label3: TLabel [6]
    Left = 368
    Top = 148
    Width = 21
    Height = 13
    Caption = #1578#1575#1585#1610#1582
    FocusControl = DBEdit3
  end
  object Label4: TLabel [7]
    Left = 185
    Top = 148
    Width = 76
    Height = 13
    Caption = #1606#1575#1605' '#1601#1575#1610#1604' '#1662#1610#1608#1587#1578#1610
    FocusControl = DBEdit4
  end
  object SpeedButton1: TSpeedButton [8]
    Left = 54
    Top = 143
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = SpeedButton1Click
  end
  object Label5: TLabel [9]
    Left = 0
    Top = 170
    Width = 416
    Height = 14
    Align = alBottom
    Alignment = taCenter
    AutoSize = False
    Caption = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
    Color = clBtnFace
    Font.Charset = ARABIC_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object DBText3: TDBText [10]
    Left = 326
    Top = 65
    Width = 65
    Height = 17
    Color = clCream
    DataField = 'TopicCode'
    DataSource = srcCtopicNote
    ParentColor = False
    Transparent = False
  end
  object DBText4: TDBText [11]
    Left = 326
    Top = 114
    Width = 65
    Height = 17
    Color = clCream
    DataField = 'CTopicCode'
    DataSource = srcCtopicNote
    ParentColor = False
    Transparent = False
  end
  object Bevel3: TBevel [12]
    Left = 1
    Top = 135
    Width = 415
    Height = 3
    Shape = bsTopLine
  end
  inherited Panel1: TPanel
    Width = 416
    Height = 47
    TabOrder = 3
    ExplicitWidth = 416
    ExplicitHeight = 47
    inherited Image1: TImage
      Left = 362
      ExplicitLeft = 362
    end
    inherited lblTopic0: TLabel
      Left = 255
      Top = 10
      Width = 87
      Caption = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
      ExplicitLeft = 255
      ExplicitTop = 10
      ExplicitWidth = 87
    end
    inherited lblTopic1: TLabel
      Left = 269
      Top = 27
      Visible = False
      ExplicitLeft = 269
      ExplicitTop = 27
    end
  end
  inherited pnlDown: TPanel
    Top = 276
    Width = 416
    Height = 38
    TabOrder = 4
    ExplicitTop = 276
    ExplicitWidth = 416
    ExplicitHeight = 38
    object BitBtn1: TBitBtn [0]
      Left = 88
      Top = 6
      Width = 81
      Height = 25
      Action = actSendToExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 3
    end
    object newPanel: TPanel
      Left = 184
      Top = 1
      Width = 231
      Height = 36
      Align = alRight
      BevelOuter = bvNone
      Caption = '`'
      TabOrder = 1
      DesignSize = (
        231
        36)
      object BitBtn6: TBitBtn
        Left = 155
        Top = 5
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1600#1600#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn9: TBitBtn
        Left = 79
        Top = 5
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1600#1600#1600#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn10: TBitBtn
        Left = 2
        Top = 5
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        TabOrder = 2
      end
    end
    object okPanel: TPanel
      Left = 28
      Top = 1
      Width = 156
      Height = 36
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      DesignSize = (
        156
        36)
      object BitBtn5: TBitBtn
        Left = 80
        Top = 6
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
      object BitBtn7: TBitBtn
        Left = 3
        Top = 6
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
  end
  object DBMemo1: TDBMemo [15]
    Left = 0
    Top = 184
    Width = 416
    Height = 71
    Align = alBottom
    BevelInner = bvNone
    BevelOuter = bvRaised
    BevelKind = bkSoft
    Ctl3D = False
    DataField = 'Note'
    DataSource = srcCtopicNote
    ParentCtl3D = False
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [16]
    Left = 294
    Top = 144
    Width = 66
    Height = 21
    Ctl3D = True
    DataField = 'NoteDate'
    DataSource = srcCtopicNote
    ParentCtl3D = False
    TabOrder = 0
  end
  object DBEdit4: TDBEdit [17]
    Left = 78
    Top = 144
    Width = 100
    Height = 21
    DataField = 'AttachFileName'
    DataSource = srcCtopicNote
    TabOrder = 1
    OnKeyDown = DBEdit4KeyDown
  end
  object DBNavigator1: TDBNavigator [18]
    Left = 0
    Top = 255
    Width = 416
    Height = 21
    DataSource = srcCtopicNote
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Align = alBottom
    Flat = True
    TabOrder = 5
  end
  inherited ActionList1: TActionList
    Left = 16
    Top = 65528
    inherited DataSetPost1: TDataSetPost
      DataSource = srcCtopicNote
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcCtopicNote
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1600#1600#1584#1601
      DataSource = srcCtopicNote
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1600#1600#1600#1585#1575#1610#1588
      DataSource = srcCtopicNote
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1600#1600#1583#1610#1583
      DataSource = srcCtopicNote
    end
    object actSendToExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendToExcelExecute
    end
  end
  object qryCTopicNote: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    AfterInsert = qryCTopicNoteAfterInsert
    BeforePost = qryCTopicNoteBeforePost
    AfterPost = qryCTopicNoteAfterPost
    BeforeDelete = qryCTopicNoteBeforeDelete
    Parameters = <
      item
        Name = 'TopicCode'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = '1'
      end
      item
        Name = 'CTopicCode'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    SQL.Strings = (
      'SELECT     * FROM CtopicNotes'
      'Where TopicCode = :TopicCode  And CTopicCode = :CTopicCode  '
      'Order by NoteDate')
    Left = 24
    Top = 40
    object qryCTopicNoteID: TIntegerField
      FieldName = 'ID'
    end
    object qryCTopicNoteTopicCode: TLargeintField
      DisplayLabel = #1603#1583' '#1605#1593#1740#1606
      FieldName = 'TopicCode'
      Required = True
    end
    object qryCTopicNoteCTopicCode: TIntegerField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'
      FieldName = 'CTopicCode'
      Required = True
    end
    object qryCTopicNoteNote: TMemoField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'Note'
      Required = True
      BlobType = ftMemo
    end
    object qryCTopicNoteNoteDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'NoteDate'
      Required = True
      EditMask = '!9999/99/99;1;_'
      FixedChar = True
      Size = 10
    end
    object qryCTopicNoteAttachFileName: TStringField
      DisplayLabel = #1606#1575#1605' '#1601#1575#1610#1604' '#1662#1610#1608#1587#1578#1610
      FieldName = 'AttachFileName'
      Required = True
      Size = 120
    end
    object qryCTopicNoteMakeDate: TDateTimeField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1575#1610#1580#1575#1583
      FieldName = 'MakeDate'
      Required = True
      EditMask = '!9999/99/00;1;_'
    end
    object qryCTopicNote_NameCtopic: TStringField
      DisplayLabel = #1606#1575#1605' '#1578#1601#1589#1610#1604#1610'2'#39' '
      FieldKind = fkLookup
      FieldName = '_NameCtopic'
      LookupDataSet = qryCenterTopic
      LookupKeyFields = 'CTopicCode'
      LookupResultField = 'CTopicName_L1'
      KeyFields = 'CTopicCode'
      LookupCache = True
      Lookup = True
    end
    object qryCTopicNote_NameTopic: TStringField
      DisplayLabel = #1606#1575#1605' '#1581#1587#1575#1576
      FieldKind = fkLookup
      FieldName = '_NameTopic'
      LookupDataSet = qryCategories
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'MoeenName_L1'
      KeyFields = 'TopicCode'
      LookupCache = True
      Size = 100
      Lookup = True
    end
  end
  object srcCtopicNote: TDataSource
    DataSet = qryCTopicNote
    OnStateChange = srcCtopicNoteStateChange
    Left = 16
    Top = 96
  end
  object qryCategories: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT  * FROM   Categories')
    Left = 184
  end
  object OpenDialog1: TOpenDialog
    Title = #1606#1575#1605' '#1601#1575#1610#1604' '#1662#1610#1608#1587#1578
    Left = 160
    Top = 78
  end
  object qryCenterTopic: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Centertopics')
    Left = 128
  end
end

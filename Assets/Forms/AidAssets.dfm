inherited AidAssetsF: TAidAssetsF
  Left = 199
  Top = 74
  ActiveControl = DBGrid2
  Caption = ' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1605#1603#1610' '#1583#1575#1585#1575#1574#1610#1607#1575
  ClientHeight = 425
  ClientWidth = 637
  OnResize = FormResize
  ExplicitWidth = 643
  ExplicitHeight = 454
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 368
    Width = 629
    ExplicitTop = 380
    ExplicitWidth = 645
  end
  inherited Panel1: TPanel
    Width = 637
    ExplicitWidth = 637
    inherited Image1: TImage
      Left = 591
      ExplicitLeft = 591
    end
    inherited lblTopic0: TLabel
      Left = 450
      Width = 121
      Caption = ' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1605#1603#1610' '#1583#1575#1585#1575#1574#1610#1607#1575
      ExplicitLeft = 450
      ExplicitWidth = 121
    end
    inherited lblTopic1: TLabel
      Left = 498
      Visible = False
      ExplicitLeft = 498
    end
  end
  inherited pnlDown: TPanel
    Top = 388
    Width = 637
    ExplicitTop = 388
    ExplicitWidth = 637
    object newPanel: TPanel
      Left = 403
      Top = 1
      Width = 233
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        233
        35)
      object BitBtn2: TBitBtn
        Left = 156
        Top = 5
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn3: TBitBtn
        Left = 80
        Top = 5
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn4: TBitBtn
        Left = 3
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
      Left = 244
      Top = 1
      Width = 159
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      DesignSize = (
        159
        35)
      object BitBtn5: TBitBtn
        Left = 81
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
      object BitBtn6: TBitBtn
        Left = 3
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
    object BitBtn1: TBitBtn
      Left = 88
      Top = 6
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 3
    end
    object BitBtn7: TBitBtn
      Left = 168
      Top = 6
      Width = 75
      Height = 25
      Action = actSearch
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
    end
  end
  object DBGrid1: TDBGrid [3]
    Left = 0
    Top = 73
    Width = 637
    Height = 136
    Align = alTop
    Ctl3D = False
    DataSource = srcAmval
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'SerialNum'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'StuffDesc'
        Width = 131
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PelakNum'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AssetsValue'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DocNum'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DocDate'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AsstetsGrpCode'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GrpName'
        Width = 89
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid [4]
    Tag = 111
    Left = 0
    Top = 209
    Width = 637
    Height = 179
    Align = alClient
    Color = clCream
    DataSource = srcAidAssets
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnEditButtonClick = DBGrid2EditButtonClick
    OnKeyPress = DBGrid2KeyPress
    Columns = <
      item
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'AidInfoID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = '_AidInfoName'
        Width = 154
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AidAssetsName'
        Width = 373
        Visible = True
      end>
  end
  inherited ActionList1: TActionList
    Left = 24
    inherited DataSetPost1: TDataSetPost
      DataSource = srcAidAssets
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcAidAssets
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      Hint = ' '
      ShortCut = 113
      DataSource = srcAidAssets
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      Hint = ' '
      ShortCut = 115
      DataSource = srcAidAssets
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
      DataSource = srcAidAssets
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actSearch: TAction
      Caption = #1580#1587#1578#1580#1608
      OnExecute = actSearchExecute
    end
  end
  object srcAmval: TDataSource
    DataSet = qryAmval
    Left = 80
    Top = 109
  end
  object qryAmval: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryAmvalAfterScroll
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     Amval.SerialNum, Amval.StuffDesc, Amval.PelakNum, Amv' +
        'al.AssetsValue, Amval.DocNum, Amval.DocDate, Amval.AsstetsGrpCod' +
        'e, '
      '                      AssetsGroups.GrpName'
      'FROM         Assets.Amval as Amval INNER JOIN'
      
        '                       Assets.AssetsGroups as AssetsGroups ON Am' +
        'val.AsstetsGrpCode = AssetsGroups.AsstetsGrpCode')
    Left = 32
    Top = 125
    object qryAmvalSerialNum: TIntegerField
      DisplayLabel = #1587#1585#1610#1575#1604
      FieldName = 'SerialNum'
    end
    object qryAmvalStuffDesc: TStringField
      DisplayLabel = #1588#1585#1581' '#1583#1575#1585#1575#1610#1610
      FieldName = 'StuffDesc'
      Size = 150
    end
    object qryAmvalPelakNum: TStringField
      DisplayLabel = #1662#1604#1575#1603
      FieldName = 'PelakNum'
    end
    object qryAmvalAssetsValue: TBCDField
      DisplayLabel = #1575#1585#1586#1588
      FieldName = 'AssetsValue'
      currency = True
      Precision = 19
    end
    object qryAmvalDocNum: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1587#1606#1583
      FieldName = 'DocNum'
    end
    object qryAmvalDocDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'DocDate'
      FixedChar = True
      Size = 10
    end
    object qryAmvalAsstetsGrpCode: TIntegerField
      DisplayLabel = #1603#1583' '#1711#1585#1608#1607
      FieldName = 'AsstetsGrpCode'
    end
    object qryAmvalGrpName: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1711#1585#1608#1607
      FieldName = 'GrpName'
      Size = 80
    end
  end
  object qryAidAssets: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryAidAssetsAfterInsert
    AfterEdit = qryAidAssetsAfterEdit
    AfterPost = qryAidAssetsAfterPost
    BeforeDelete = qryAidAssetsBeforeDelete
    Parameters = <
      item
        Name = 'SN'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT  * FROM   assets.AidAssets'
      'where Serial = :SN')
    Left = 48
    Top = 240
    object qryAidAssetsSerial: TIntegerField
      DisplayLabel = #1587#1585#1610#1575#1604
      FieldName = 'Serial'
    end
    object qryAidAssetsGrpCode: TIntegerField
      DisplayLabel = #1603#1583
      FieldName = 'GrpCode'
    end
    object qryAidAssetsAidInfoID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583
      FieldName = 'AidInfoID'
    end
    object qryAidAssetsAidAssetsName: TStringField
      Tag = 3
      DisplayLabel = #1575#1591#1604#1575#1593#1575#1578' '#1603#1605#1603#1610
      FieldName = 'AidAssetsName'
      Size = 150
    end
    object qryAidAssetsFirstUser: TStringField
      Tag = 3
      FieldName = 'FirstUser'
      Size = 50
    end
    object qryAidAssetsLastUser: TStringField
      Tag = 3
      FieldName = 'LastUser'
      Size = 50
    end
    object qryAidAssets_AidInfoName: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1605#1603#1610
      FieldKind = fkLookup
      FieldName = '_AidInfoName'
      LookupDataSet = qryAidInfo
      LookupKeyFields = 'AidInfoID'
      LookupResultField = 'AidInfoName'
      KeyFields = 'AidInfoID'
      ReadOnly = True
      Size = 150
      Lookup = True
    end
  end
  object srcAidAssets: TDataSource
    DataSet = qryAidAssets
    OnStateChange = srcAidAssetsStateChange
    Left = 48
    Top = 320
  end
  object qryAidInfo: TADOQuery
    Active = True
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'Grp'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT  *  FROM     assets.AidInfo'
      'WHERE     (GrpCode = :Grp)')
    Left = 440
    Top = 264
  end
end

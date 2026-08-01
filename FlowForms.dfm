inherited FlowFormsF: TFlowFormsF
  Caption = #1711#1585#1583#1588' '#1601#1585#1605#1607#1575
  ClientHeight = 517
  ClientWidth = 779
  OnResize = FormResize
  ExplicitWidth = 791
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 476
    Width = 779
    TabOrder = 3
    ExplicitWidth = 779
    inherited BtnReject: TBitBtn
      TabOrder = 6
    end
    object okPanel: TPanel
      Left = 383
      Top = 1
      Width = 158
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        158
        39)
      object BitBtn1: TBitBtn
        Left = 81
        Top = 8
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
      object BitBtn2: TBitBtn
        Left = 3
        Top = 8
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
    object newPanel: TPanel
      Left = 541
      Top = 1
      Width = 237
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        237
        39)
      object BitBtn3: TBitBtn
        Left = 159
        Top = 8
        Width = 77
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 81
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        Left = 3
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetDelete1_
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        TabOrder = 2
      end
    end
    object BitBtn6: TBitBtn
      Left = 86
      Top = 8
      Width = 75
      Height = 25
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 5
    end
    object BitBtn7: TBitBtn
      Left = 164
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
    end
    object BitBtn8: TBitBtn
      Left = 243
      Top = 8
      Width = 75
      Height = 25
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 3
    end
    object BitBtn9: TBitBtn
      Left = 322
      Top = 8
      Width = 75
      Height = 25
      Caption = #1670#1600#1600#1600#1575#1662
      TabOrder = 2
    end
  end
  inherited Panel2: TPanel
    Width = 779
    TabOrder = 0
    ExplicitWidth = 779
    inherited ImgTemplate: TImage
      Left = 774
      ExplicitLeft = 774
    end
    inherited lblCaption: TLabel
      Left = 657
      Height = 16
      ExplicitLeft = 657
    end
  end
  inherited Panel3: TPanel
    Left = 506
    Width = 273
    Height = 423
    TabOrder = 1
    ExplicitLeft = 506
    ExplicitWidth = 273
    object Panel1: TPanel
      Left = -1
      Top = 2
      Width = 268
      Height = 420
      Align = alRight
      Caption = 'Panel1'
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 266
        Height = 418
        Align = alClient
        DataSource = srcViewFlow
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'kindName'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FormType'
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FormCaption'
            Width = 56
            Visible = True
          end>
      end
    end
  end
  object Panel4: TPanel [3]
    Left = 0
    Top = 53
    Width = 506
    Height = 423
    Align = alLeft
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    ExplicitWidth = 510
    ExplicitHeight = 424
    object DBGrid2: TDBGrid
      Tag = 111
      Left = 1
      Top = 1
      Width = 508
      Height = 335
      Align = alClient
      DataSource = srcFlowFormsFara
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnEditButtonClick = DBGrid2EditButtonClick
      OnKeyPress = DBGrid2KeyPress
      Columns = <
        item
          Alignment = taCenter
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'PositionCode'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_PositionName'
          ReadOnly = True
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SortAccept'
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TitleControl'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'StateAfterPost'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CancelSortAccept'
          PickList.Strings = (
            #1585#1593#1575#1740#1578' '#1588#1608#1583
            #1585#1593#1575#1740#1578' '#1606#1588#1608#1583)
          Width = 80
          Visible = True
        end>
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 336
      Width = 508
      Height = 87
      Align = alBottom
      Caption = #1578#1608#1590#1740#1581#1575#1578' '#1590#1585#1608#1585#1740
      TabOrder = 1
      object DBMemo1: TDBMemo
        Left = 2
        Top = 15
        Width = 504
        Height = 70
        Align = alClient
        DataField = 'Note'
        DataSource = srcFlowFormsFara
        TabOrder = 0
      end
    end
  end
  inherited ActionList: TActionList
    inherited DataSetEdit1: TDataSetEdit [1]
      DataSource = srcFlowFormsFara
    end
    inherited DataSetInsert1: TDataSetInsert [2]
      DataSource = srcFlowFormsFara
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcFlowFormsFara
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcFlowFormsFara
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcFlowFormsFara
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1740#1576
      OnExecute = actSortExecute
    end
    object actSendToExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendToExcelExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 240
    Top = 9
  end
  object srcFlowFormsFara: TDataSource
    DataSet = qryFlowFormsFara
    OnStateChange = srcFlowFormsFaraStateChange
    Left = 224
    Top = 208
  end
  object qryFlowFormsFara: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryFlowFormsFaraAfterInsert
    BeforeEdit = qryFlowFormsFaraBeforeEdit
    BeforePost = qryFlowFormsFaraBeforePost
    AfterPost = qryFlowFormsFaraAfterPost
    BeforeDelete = qryFlowFormsFaraBeforeDelete
    Parameters = <
      item
        Name = 'Kind'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'FormType'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *   FROM         WF_FlowFroms'
      'WHERE     (Kind =:Kind) AND (FormTypeNum =:FormType)')
    Left = 428
    Top = 103
    object qryFlowFormsFaraID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qryFlowFormsFaraKind: TWordField
      DisplayLabel = #1606#1608#1593' '#1601#1585#1605
      FieldName = 'Kind'
    end
    object qryFlowFormsFaraFormTypeNum: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605' '
      FieldName = 'FormTypeNum'
    end
    object qryFlowFormsFaraSortAccept: TWordField
      DisplayLabel = #1578#1585#1578#1740#1576' '#1578#1575#1574#1740#1583
      FieldName = 'SortAccept'
    end
    object qryFlowFormsFaraTitleControl: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1705#1606#1578#1585#1604
      FieldName = 'TitleControl'
      FixedChar = True
      Size = 200
    end
    object qryFlowFormsFaraStateAfterPost: TWordField
      Tag = 3
      DisplayLabel = #1608#1590#1593#1740#1578' '#1662#1587' '#1575#1586' '#1578#1575#1574#1740#1583
      FieldName = 'StateAfterPost'
    end
    object qryFlowFormsFaraNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1740#1581#1575#1578' '#1590#1585#1608#1585#1740
      FieldName = 'Note'
      FixedChar = True
      Size = 500
    end
    object qryFlowFormsFaraPositionCode: TIntegerField
      DisplayLabel = #1705#1583' '#1662#1587#1578' '#1705#1575#1585#1576#1585#1740
      FieldName = 'PositionCode'
    end
    object qryFlowFormsFara_PositionName: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1662#1587#1578' '#1705#1575#1585#1576#1585#1740
      FieldKind = fkLookup
      FieldName = '_PositionName'
      LookupDataSet = qryPositon
      LookupKeyFields = 'PositionCode'
      LookupResultField = 'PositionTitle'
      KeyFields = 'PositionCode'
      Size = 150
      Lookup = True
    end
    object qryFlowFormsFaraCancelSortAccept: TWordField
      DisplayLabel = #1578#1585#1578#1740#1576' '#1578#1608#1575#1604#1740' '#1578#1575#1740#1740#1583
      FieldName = 'CancelSortAccept'
      OnGetText = ALLPikGetText
      OnSetText = ALLPikSetText
    end
  end
  object qryViewFlow: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryViewFlowAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT   * FROM         ViewFlow')
    Left = 572
    Top = 119
    object qryViewFlowkindName: TStringField
      DisplayLabel = #1606#1608#1593' '#1601#1585#1605
      FieldName = 'kindName'
      ReadOnly = True
      Size = 12
    end
    object qryViewFlowFormType: TWordField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'FormType'
      ReadOnly = True
    end
    object qryViewFlowFormCaption: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1601#1585#1605
      FieldName = 'FormCaption'
      ReadOnly = True
      Size = 70
    end
    object qryViewFlowKind: TIntegerField
      FieldName = 'Kind'
    end
  end
  object srcViewFlow: TDataSource
    DataSet = qryViewFlow
    Left = 568
    Top = 184
  end
  object qryPositon: TADOQuery
    Connection = DmF.adcFaraSystem
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT     *  FROM         Position')
    Left = 28
    Top = 103
  end
end

inherited AuditIdF: TAuditIdF
  Left = 190
  Top = 128
  Caption = #1605#1593#1585#1601#1610' '#1593#1606#1575#1608#1610#1606' '#1603#1604#1610' '#1603#1606#1578#1585#1604#1607#1575#1610' '#1581#1587#1575#1576#1585#1587#1610
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    object okPanel: TPanel
      Left = 386
      Top = 1
      Width = 165
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        165
        39)
      object BitBtn1: TBitBtn
        Left = 88
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetPost1
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1610#1610#1583
        TabOrder = 0
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
      object BitBtn2: TBitBtn
        Left = 8
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetCancel1
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1589#1585#1575#1601
        TabOrder = 1
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
    object newPanel: TPanel
      Left = 551
      Top = 1
      Width = 234
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      Caption = '`'
      TabOrder = 2
      DesignSize = (
        234
        39)
      object BitBtn6: TBitBtn
        Left = 156
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn9: TBitBtn
        Left = 78
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn10: TBitBtn
        Left = 1
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetDelete1_
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        TabOrder = 2
      end
    end
    object BitBtn3: TBitBtn
      Left = 326
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Caption = #1670#1575#1662
      TabOrder = 3
    end
    object BitBtn4: TBitBtn
      Left = 248
      Top = 8
      Width = 75
      Height = 25
      Action = actSendExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607'Excel'
      TabOrder = 4
    end
    object BitBtn5: TBitBtn
      Left = 171
      Top = 8
      Width = 75
      Height = 25
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 5
    end
    object BitBtn7: TBitBtn
      Left = 93
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Anchors = [akLeft, akBottom]
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 6
    end
  end
  inherited Panel3: TPanel
    object Panel1: TPanel
      Left = 320
      Top = 2
      Width = 464
      Height = 428
      Align = alRight
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 462
        Height = 426
        Align = alClient
        DataSource = SrcAuditTopics
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'AuditCode'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AuditName'
            Title.Alignment = taCenter
            Visible = True
          end>
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 2
      Width = 318
      Height = 428
      Align = alClient
      TabOrder = 1
      DesignSize = (
        318
        428)
      object Label1: TLabel
        Left = 206
        Top = 35
        Width = 11
        Height = 16
        Anchors = [akLeft, akTop, akRight]
        Caption = #1603#1583
      end
      object Label2: TLabel
        Left = 206
        Top = 72
        Width = 109
        Height = 13
        Anchors = [akLeft, akTop, akRight]
        Caption = #1593#1606#1608#1575#1606' '#1603#1606#1578#1585#1604' '#1581#1587#1575#1576#1585#1587#1610
      end
      object Panel5: TPanel
        Left = 1
        Top = 163
        Width = 316
        Height = 264
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        object Panel6: TPanel
          Left = 1
          Top = 1
          Width = 314
          Height = 41
          Align = alTop
          BevelInner = bvLowered
          BorderStyle = bsSingle
          Caption = #1604#1610#1587#1578' '#1603#1583#1610#1606#1711' '#1581#1587#1575#1576#1607#1575#1610' '#1605#1585#1578#1576#1591' '#1576#1575' '#1603#1606#1578#1585#1604' '#1607#1575#1610' '#1581#1587#1575#1576#1585#1587#1610
          TabOrder = 0
        end
        object DBGrid2: TDBGrid
          Left = 1
          Top = 42
          Width = 314
          Height = 221
          Align = alClient
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
      object DBEdit1: TDBEdit
        Left = 78
        Top = 33
        Width = 121
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'AuditCode'
        DataSource = SrcAuditTopics
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 6
        Top = 68
        Width = 193
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'AuditName'
        DataSource = SrcAuditTopics
        TabOrder = 2
      end
    end
  end
  inherited ActionList: TActionList
    inherited DataSetInsert1: TDataSetInsert
      DataSource = SrcAuditTopics
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = SrcAuditTopics
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = SrcAuditTopics
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = SrcAuditTopics
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = SrcAuditTopics
    end
    object actSendExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607'Excel'
      OnExecute = actSendExcelExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
    end
  end
  object qryAuditTopics: TADOQuery
    Active = True
    Connection = Dmf.adcAccounting
    CursorType = ctStatic
    AfterInsert = qryAuditTopicsAfterInsert
    AfterPost = qryAuditTopicsAfterPost
    BeforeDelete = qryAuditTopicsBeforeDelete
    AfterDelete = qryAuditTopicsAfterDelete
    Parameters = <>
    SQL.Strings = (
      'Select * from AuditTopics')
    Left = 472
    Top = 87
    object qryAuditTopicsAuditCode: TIntegerField
      DisplayLabel = #1603#1583
      FieldName = 'AuditCode'
    end
    object qryAuditTopicsAuditName: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1603#1606#1578#1585#1604' '#1581#1587#1575#1576#1585#1587#1610
      FieldName = 'AuditName'
      Size = 150
    end
    object qryAuditTopicsLevelID: TIntegerField
      FieldName = 'LevelID'
    end
    object qryAuditTopicsMakeDate: TStringField
      FieldName = 'MakeDate'
      FixedChar = True
      Size = 10
    end
  end
  object SrcAuditTopics: TDataSource
    DataSet = qryAuditTopics
    OnStateChange = SrcAuditTopicsStateChange
    Left = 552
    Top = 87
  end
end

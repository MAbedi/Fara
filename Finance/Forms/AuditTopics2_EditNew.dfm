inherited AuditTopics2_EditNewF: TAuditTopics2_EditNewF
  Left = 314
  Top = 135
  AutoSize = True
  Caption = #1579#1576#1578' '#1608' '#1608#1610#1585#1575#1610#1588' '#1575#1580#1586#1575#1569' '#1603#1606#1578#1585#1604' '#1607#1575#1610' '#1581#1587#1575#1576#1585#1587#1610
  ClientHeight = 335
  ClientWidth = 480
  ParentFont = True
  ParentBiDiMode = True
  ExplicitWidth = 486
  ExplicitHeight = 364
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 330
    Width = 480
    Height = 5
    Align = alTop
    ExplicitTop = 330
    ExplicitWidth = 480
    ExplicitHeight = 5
  end
  object Bevel2: TBevel [1]
    Left = 0
    Top = 70
    Width = 480
    Height = 3
    Align = alTop
    Shape = bsBottomLine
  end
  object prvlabel: TLabel [2]
    Left = 0
    Top = 57
    Width = 480
    Height = 13
    Align = alTop
    Alignment = taCenter
    Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606' '#1587#1591#1581' '#1602#1576#1604#1610
    Color = 11522776
    Font.Charset = ARABIC_CHARSET
    Font.Color = 4259970
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
    ExplicitWidth = 105
  end
  object Label3: TLabel [3]
    Left = 0
    Top = 169
    Width = 480
    Height = 13
    Align = alTop
    Alignment = taCenter
    Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606' '#1603#1606#1578#1585#1604#1607#1575#1610' '#1581#1587#1575#1576#1585#1587#1610
    Color = 11522776
    Font.Charset = ARABIC_CHARSET
    Font.Color = 4259970
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
    ExplicitWidth = 146
  end
  object Bevel3: TBevel [4]
    Left = 0
    Top = 166
    Width = 480
    Height = 3
    Align = alTop
    Shape = bsBottomLine
  end
  object Bevel4: TBevel [5]
    Left = 0
    Top = 182
    Width = 480
    Height = 3
    Align = alTop
    Shape = bsBottomLine
  end
  inherited Panel1: TPanel
    Width = 480
    Height = 57
    TabOrder = 4
    ExplicitWidth = 480
    ExplicitHeight = 57
    inherited Image1: TImage
      Left = 426
      ExplicitLeft = 426
    end
    inherited lblTopic0: TLabel
      Left = 354
      Alignment = taRightJustify
      ExplicitLeft = 354
    end
    inherited lblTopic1: TLabel
      Left = 333
      Visible = False
      ExplicitLeft = 333
    end
  end
  inherited pnlDown: TPanel
    Top = 293
    Width = 480
    Align = alTop
    TabOrder = 3
    ExplicitTop = 293
    ExplicitWidth = 480
    inherited btnClose: TBitBtn
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      Left = 384
      Top = 8
      Width = 75
      Height = 25
      Action = DataSetPost1
      Caption = #1578#1571#1610#1610#1600#1600#1600#1583
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 307
      Top = 8
      Width = 75
      Height = 25
      Action = DataSetCancel1
      Caption = #1575#1606#1589#1600#1600#1600#1585#1575#1601
      TabOrder = 1
    end
  end
  object pnlAudit_L1: TPanel [8]
    Left = 0
    Top = 216
    Width = 480
    Height = 38
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object LablCaption_L1: TLabel
      Left = 422
      Top = 13
      Width = 29
      Height = 13
      Alignment = taRightJustify
      Caption = #1593#1606#1608#1575#1606' '
    end
    object DBMeAuditName_L1: TDBMemo
      Left = 6
      Top = 9
      Width = 412
      Height = 21
      Ctl3D = True
      DataField = 'AuditName_L1'
      DataSource = src_AuditTopics
      ParentCtl3D = False
      TabOrder = 0
    end
  end
  object pnlName_L2: TPanel [9]
    Left = 0
    Top = 134
    Width = 480
    Height = 32
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 5
    object Label6: TLabel
      Left = 12
      Top = 8
      Width = 65
      Height = 13
      Caption = 'Audit Caption'
    end
    object DBEdit4: TDBEdit
      Left = 83
      Top = 6
      Width = 381
      Height = 19
      TabStop = False
      Color = 14014934
      Ctl3D = False
      DataField = 'AuditName_L2'
      ParentCtl3D = False
      TabOrder = 0
    end
  end
  object Panel4: TPanel [10]
    Left = 0
    Top = 103
    Width = 480
    Height = 31
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 6
    object Label5: TLabel
      Left = 424
      Top = 9
      Width = 29
      Height = 13
      Alignment = taRightJustify
      Caption = #1593#1606#1608#1575#1606' '
    end
    object DBEdit3: TDBEdit
      Left = 11
      Top = 6
      Width = 410
      Height = 19
      TabStop = False
      Color = 14014934
      Ctl3D = False
      DataField = 'AuditName_L1'
      ParentCtl3D = False
      TabOrder = 0
    end
  end
  object Panel3: TPanel [11]
    Left = 0
    Top = 73
    Width = 480
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 7
    object Label1: TLabel
      Left = 424
      Top = 7
      Width = 14
      Height = 13
      Alignment = taRightJustify
      Caption = #1603#1583' '
    end
    object DBEdit2: TDBEdit
      Left = 339
      Top = 4
      Width = 81
      Height = 19
      TabStop = False
      Color = 14014934
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
    end
  end
  object pnl_Audit_L2: TPanel [12]
    Left = 0
    Top = 254
    Width = 480
    Height = 39
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object LablCaption_L2: TLabel
      Left = 3
      Top = 12
      Width = 95
      Height = 13
      Caption = 'Audit Detail Caption'
    end
    object DBMeAuditName_L2: TDBMemo
      Left = 104
      Top = 10
      Width = 369
      Height = 21
      Ctl3D = True
      DataField = 'AuditName_L2'
      DataSource = src_AuditTopics
      ParentCtl3D = False
      TabOrder = 0
    end
  end
  object Panel5: TPanel [13]
    Left = 0
    Top = 185
    Width = 480
    Height = 31
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label2: TLabel
      Left = 422
      Top = 5
      Width = 11
      Height = 13
      Alignment = taRightJustify
      Caption = #1603#1583
      FocusControl = DBEdit1
    end
    object DBEdit1: TDBEdit
      Left = 339
      Top = 4
      Width = 78
      Height = 21
      Ctl3D = True
      DataField = 'AuditCode'
      DataSource = src_AuditTopics
      ParentCtl3D = False
      TabOrder = 0
    end
  end
  inherited ActionList1: TActionList
    inherited DataSetPost1: TDataSetPost
      DataSource = src_AuditTopics
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = src_AuditTopics
    end
  end
  object qry_AuditTopics: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    AfterInsert = qry_AuditTopicsAfterInsert
    BeforePost = qry_AuditTopicsBeforePost
    AfterPost = qry_AuditTopicsAfterPost
    AfterCancel = qry_AuditTopicsAfterCancel
    Parameters = <
      item
        Name = 'AuditCode'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select * from acc.AuditTopics'
      'where AuditCode=:AuditCode')
    Left = 120
    Top = 32
    object qry_AuditTopicsAuditCode: TIntegerField
      DisplayLabel = #1603#1583' '#1575#1580#1586#1575#1569' '#1603#1606#1578#1585#1604
      FieldName = 'AuditCode'
      Required = True
    end
    object qry_AuditTopicsAuditName_L1: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1603#1606#1578#1585#1604' '#1581#1587#1575#1576#1585#1587#1610
      FieldName = 'AuditName_L1'
      Required = True
      Size = 150
    end
    object qry_AuditTopicsLevelID: TIntegerField
      FieldName = 'LevelID'
    end
    object qry_AuditTopicsMakeDate: TDateTimeField
      FieldName = 'MakeDate'
      Required = True
    end
    object qry_AuditTopics_CodeLength: TIntegerField
      FieldKind = fkLookup
      FieldName = '_CodeLength'
      LookupKeyFields = 'LevelID'
      LookupResultField = 'CodeLength'
      KeyFields = 'LevelID'
      LookupCache = True
      Lookup = True
    end
    object qry_AuditTopicsAuditName_L2: TStringField
      DisplayLabel = 'AuditName'
      FieldName = 'AuditName_L2'
      Size = 150
    end
  end
  object src_AuditTopics: TDataSource
    DataSet = qry_AuditTopics
    OnStateChange = src_AuditTopicsStateChange
    Left = 176
    Top = 32
  end
end

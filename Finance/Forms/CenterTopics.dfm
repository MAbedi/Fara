inherited centerTopics1F: TcenterTopics1F
  Left = 145
  Top = 122
  Width = 808
  Height = 565
  Caption = 'centerTopics1F'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 490
    Width = 800
  end
  inherited Panel2: TPanel
    Width = 800
    inherited ImgTemplate: TImage
      Left = 754
    end
    inherited lblCaption: TLabel
      Left = 690
    end
  end
  inherited Panel3: TPanel
    Width = 800
    Height = 437
    object DBGrid1: TDBGrid
      Left = 494
      Top = 2
      Width = 304
      Height = 433
      Align = alRight
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = clCream
      DataSource = srcCenterTopics
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CTopicCode'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CTopicName'
          Width = 204
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 492
      Height = 433
      Align = alClient
      BevelInner = bvRaised
      BorderWidth = 5
      BorderStyle = bsSingle
      TabOrder = 1
      object Label1: TLabel
        Left = 382
        Top = 40
        Width = 11
        Height = 13
        Caption = #1603#1583
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 382
        Top = 72
        Width = 63
        Height = 13
        Caption = #1593#1606#1608#1575#1606' '#1581#1587#1575#1576' '
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 382
        Top = 104
        Width = 62
        Height = 13
        Caption = #1588#1605#1575#1585#1607' '#1603#1605#1603#1610
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 247
        Top = 104
        Width = 53
        Height = 13
        Caption = #1578#1575#1585#1610#1582' '#1603#1605#1603#1610
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 382
        Top = 136
        Width = 45
        Height = 13
        Caption = #1578#1575#1585#1610#1582' '#1575#1610#1580#1575#1583
        FocusControl = DBEdit5
      end
      object DBEdit1: TDBEdit
        Left = 288
        Top = 36
        Width = 88
        Height = 21
        DataField = 'CTopicCode'
        DataSource = srcCenterTopics
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 162
        Top = 69
        Width = 214
        Height = 21
        DataField = 'CTopicName'
        DataSource = srcCenterTopics
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 308
        Top = 100
        Width = 68
        Height = 21
        DataField = 'AidNumber'
        DataSource = srcCenterTopics
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 162
        Top = 100
        Width = 80
        Height = 21
        DataField = 'AidDate'
        DataSource = srcCenterTopics
        MaxLength = 10
        TabOrder = 3
      end
      object PageControl1: TPageControl
        Left = 7
        Top = 157
        Width = 474
        Height = 265
        ActivePage = TabSheet1
        Align = alBottom
        TabOrder = 4
        object TabSheet1: TTabSheet
          Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1603#1583#1610#1606#1711' '#1581#1587#1575#1576#1607#1575
          object DBGrid2: TDBGrid
            Left = 0
            Top = 0
            Width = 466
            Height = 201
            Align = alClient
            DataSource = srcCenterRange
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'TopicCode'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MoeenName'
                Width = 331
                Visible = True
              end>
          end
          object Panel4: TPanel
            Left = 0
            Top = 201
            Width = 466
            Height = 36
            Align = alBottom
            BevelInner = bvLowered
            BorderWidth = 3
            TabOrder = 1
            object BitBtn1: TBitBtn
              Left = 344
              Top = 8
              Width = 113
              Height = 20
              Action = actReltionDetail
              Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1603#1583#1610#1606#1711' '#1581#1587#1575#1576#1607#1575
              TabOrder = 0
            end
            object DBNavigator1: TDBNavigator
              Left = 121
              Top = 8
              Width = 220
              Height = 20
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              Flat = True
              TabOrder = 1
            end
            object BitBtn2: TBitBtn
              Left = 7
              Top = 8
              Width = 111
              Height = 20
              Action = actNoteDetail
              Caption = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
              TabOrder = 2
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1578#1601#1589#1610#1604#1610'2'' 2'
          ImageIndex = 1
          object DBGrid3: TDBGrid
            Left = 0
            Top = 0
            Width = 466
            Height = 201
            Align = alClient
            DataSource = srcCTopic2
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'CTopicCode2'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CTopicName2'
                Visible = True
              end>
          end
          object Panel5: TPanel
            Left = 0
            Top = 201
            Width = 466
            Height = 36
            Align = alBottom
            BevelInner = bvLowered
            BorderWidth = 3
            TabOrder = 1
            object BitBtn3: TBitBtn
              Left = 345
              Top = 8
              Width = 113
              Height = 20
              Action = actReltionCtopic
              Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1578#1601#1589#1610#1604#1610'2'
              TabOrder = 0
            end
            object DBNavigator2: TDBNavigator
              Left = 121
              Top = 8
              Width = 220
              Height = 20
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              Flat = True
              TabOrder = 1
            end
            object BitBtn4: TBitBtn
              Left = 7
              Top = 8
              Width = 111
              Height = 20
              Action = actNoteCtopic
              Caption = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
              TabOrder = 2
            end
          end
        end
      end
      object DBEdit5: TDBEdit
        Left = 308
        Top = 133
        Width = 68
        Height = 19
        Ctl3D = False
        DataField = 'MakeDate'
        DataSource = srcCenterTopics
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 5
      end
    end
  end
  inherited ActionList: TActionList
    object actReltionDetail: TAction
      Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1603#1583#1610#1606#1711' '#1581#1587#1575#1576#1607#1575
    end
    object actNoteDetail: TAction
      Caption = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
      OnExecute = actNoteDetailExecute
    end
    object actReltionCtopic: TAction
      Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1578#1601#1589#1610#1604#1610'2'
    end
    object actNoteCtopic: TAction
      Caption = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
    end
  end
  object qryCenterTopics: TADOQuery
    Active = True
    Connection = Dmf.adcAccounting
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'FormType'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select * from CenterTopics'
      'where LevelId=:FormType')
    Left = 528
    Top = 69
    object qryCenterTopicsCTopicCode: TIntegerField
      DisplayLabel = #1603#1583
      DisplayWidth = 12
      FieldName = 'CTopicCode'
    end
    object qryCenterTopicsCTopicName: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1587#1585' '#1601#1589#1604' '
      DisplayWidth = 47
      FieldName = 'CTopicName'
      Size = 120
    end
    object qryCenterTopicsLevelID: TIntegerField
      DisplayWidth = 12
      FieldName = 'LevelID'
    end
    object qryCenterTopicsAidNumber: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1603#1605#1603#1610
      DisplayWidth = 13
      FieldName = 'AidNumber'
    end
    object qryCenterTopicsAidDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1603#1605#1603#1610
      DisplayWidth = 11
      FieldName = 'AidDate'
      EditMask = '!9999/99/99;1;_'
      FixedChar = True
      Size = 10
    end
    object qryCenterTopicsMakeDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1575#1610#1580#1575#1583
      DisplayWidth = 10
      FieldName = 'MakeDate'
      EditMask = '!9999/99/99;1;_'
      FixedChar = True
      Size = 10
    end
  end
  object srcCenterTopics: TDataSource
    DataSet = qryCenterTopics
    Left = 528
    Top = 125
  end
  object qryCenterRange: TADOQuery
    Connection = Dmf.adcAccounting
    CursorType = ctStatic
    LockType = ltReadOnly
    DataSource = srcCenterTopics
    Parameters = <
      item
        Name = 'CTopicCode'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     dbo.CenterTopicRange.TopicCode, dbo.CenterTopicRange.' +
        'CTopicCode, dbo.Categories.MoeenName'
      'FROM         dbo.Categories INNER JOIN'
      
        '                      dbo.CenterTopicRange ON dbo.Categories.Top' +
        'icCode = dbo.CenterTopicRange.TopicCode'
      'WHERE     (dbo.CenterTopicRange.CTopicCode =:CTopicCode )')
    Left = 45
    Top = 260
    object qryCenterRangeTopicCode: TLargeintField
      DisplayLabel = #1603#1583' '#1605#1593#1740#1606
      FieldName = 'TopicCode'
    end
    object qryCenterRangeCTopicCode: TIntegerField
      FieldName = 'CTopicCode'
    end
    object qryCenterRangeMoeenName: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1581#1587#1575#1576
      FieldName = 'MoeenName'
      Size = 100
    end
  end
  object srcCenterRange: TDataSource
    DataSet = qryCenterRange
    Left = 45
    Top = 316
  end
  object qryCTopic2: TADOQuery
    Connection = Dmf.adcAccounting
    CursorType = ctStatic
    LockType = ltReadOnly
    DataSource = srcCenterTopics
    Parameters = <
      item
        Name = 'CTopicCode'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     dbo.CTopicRangeTogether.CTopicCode2, dbo.CenterTopics' +
        '2.CTopicName2'
      'FROM         dbo.CTopicRangeTogether INNER JOIN'
      
        '                      dbo.CenterTopics2 ON dbo.CTopicRangeTogeth' +
        'er.CTopicCode2 = dbo.CenterTopics2.CTopicCode2'
      'WHERE     (dbo.CTopicRangeTogether.CTopicCode = :CTopicCode )')
    Left = 429
    Top = 276
    object qryCTopic2CTopicCode2: TIntegerField
      DisplayLabel = #1603#1583' '#1605#1593#1740#1606
      FieldName = 'CTopicCode2'
    end
    object qryCTopic2CTopicName2: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1581#1587#1575#1576
      FieldName = 'CTopicName2'
      Size = 120
    end
  end
  object srcCTopic2: TDataSource
    DataSet = qryCTopic2
    Left = 429
    Top = 324
  end
end

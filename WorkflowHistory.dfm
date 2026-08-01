inherited WorkflowHistoryF: TWorkflowHistoryF
  Caption = #1578#1575#1585#1740#1582#1670#1607' '#1711#1585#1583#1588' '#1705#1575#1585
  ClientHeight = 317
  ClientWidth = 594
  ExplicitWidth = 610
  ExplicitHeight = 356
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 260
    Width = 586
    ExplicitTop = 272
    ExplicitWidth = 602
  end
  inherited Panel1: TPanel
    Width = 594
    ExplicitWidth = 602
    inherited Image1: TImage
      Left = 548
      ExplicitLeft = 548
    end
    inherited lblTopic0: TLabel
      Left = 434
      Width = 94
      Caption = #1578#1575#1585#1740#1582#1670#1607' '#1711#1585#1583#1588' '#1705#1575#1585
      ExplicitLeft = 434
      ExplicitWidth = 94
    end
    inherited lblTopic1: TLabel
      Left = 503
      Width = 12
      Caption = '...'
      ExplicitLeft = 503
      ExplicitWidth = 12
    end
  end
  inherited pnlDown: TPanel
    Top = 280
    Width = 594
    ExplicitTop = 292
    ExplicitWidth = 602
  end
  object DBGrid1: TDBGrid [3]
    Tag = 111
    Left = 0
    Top = 73
    Width = 594
    Height = 207
    Align = alClient
    Color = clCream
    DataSource = srcWF_TransWorkFlow
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'name'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PositionTitle'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Note'
        Width = 222
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ModifyDate'
        Width = 140
        Visible = True
      end>
  end
  object qryWF_TransWorkFlow: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'FormType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'FormID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
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
        Name = 'ServerID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT        FaraSystems.dbo.Operators.name, FaraSystems.dbo.Po' +
        'sition.PositionTitle, WF_TransWorkFlow.Note, WF_TransWorkFlow.Mo' +
        'difyDate'
      'FROM            WF_TransWorkFlow LEFT OUTER JOIN'
      
        '                         FaraSystems.dbo.Operators ON WF_TransWo' +
        'rkFlow.UserID = FaraSystems.dbo.Operators.UserID LEFT OUTER JOIN'
      
        '                         FaraSystems.dbo.Position ON WF_TransWor' +
        'kFlow.PositionCode = FaraSystems.dbo.Position.PositionCode'
      
        'WHERE     (WF_TransWorkFlow.FormType = :FormType ) AND   (WF_Tra' +
        'nsWorkFlow.FormID = :FormID ) '
      
        'AND  (WF_TransWorkFlow.YearID = :YearID ) AND (WF_TransWorkFlow.' +
        'ServerID = :ServerID ) or (1=1)')
    Left = 176
    Top = 160
    object qryWF_TransWorkFlowname: TStringField
      DisplayLabel = #1705#1575#1585#1576#1585
      FieldName = 'name'
      Size = 50
    end
    object qryWF_TransWorkFlowPositionTitle: TStringField
      DisplayLabel = #1662#1587#1578
      FieldName = 'PositionTitle'
      Size = 100
    end
    object qryWF_TransWorkFlowNote: TWideStringField
      DisplayLabel = #1578#1608#1590#1740#1581#1575#1578
      FieldName = 'Note'
      Size = 100
    end
    object qryWF_TransWorkFlowModifyDate: TDateTimeField
      DisplayLabel = #1578#1575#1585#1740#1582
      FieldName = 'ModifyDate'
      OnGetText = qryWF_TransWorkFlowModifyDateGetText
    end
  end
  object srcWF_TransWorkFlow: TDataSource
    AutoEdit = False
    DataSet = qryWF_TransWorkFlow
    Left = 312
    Top = 128
  end
end

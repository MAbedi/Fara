inherited BudgetTopics2F: TBudgetTopics2F
  Left = 212
  Top = 139
  Caption = #1605#1593#1585#1601#1610' '#1587#1585' '#1601#1589#1604#1607#1575#1610' '#1576#1608#1583#1580#1607
  ClientHeight = 517
  OnResize = FormResize
  ExplicitWidth = 794
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 476
    inherited BtnReject: TBitBtn
      TabOrder = 4
    end
    object newPanel: TPanel
      Left = 465
      Top = 1
      Width = 324
      Height = 39
      Align = alRight
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 0
      object BitBtn3: TBitBtn
        AlignWithMargins = True
        Left = 246
        Top = 6
        Width = 75
        Height = 27
        Margins.Top = 6
        Margins.Bottom = 6
        Action = actNew
        Align = alRight
        Caption = #1580#1583#1740#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        AlignWithMargins = True
        Left = 84
        Top = 6
        Width = 75
        Height = 27
        Margins.Top = 6
        Margins.Bottom = 6
        Action = actEdit
        Align = alRight
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 2
      end
      object BitBtn5: TBitBtn
        AlignWithMargins = True
        Left = 3
        Top = 6
        Width = 75
        Height = 27
        Margins.Top = 6
        Margins.Bottom = 6
        Action = DataSetDelete1_
        Align = alRight
        Caption = #1581#1584#1601
        TabOrder = 3
      end
      object BitBtn10: TBitBtn
        AlignWithMargins = True
        Left = 165
        Top = 6
        Width = 75
        Height = 27
        Margins.Top = 6
        Margins.Bottom = 6
        Action = actChidNew
        Align = alRight
        Caption = #1586#1610#1585' '#1587#1591#1581' '#1580#1583#1610#1583
        TabOrder = 1
      end
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSendToExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 85
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 166
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSearch_
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 2
    end
  end
  inherited Panel2: TPanel
    inherited lblCaption: TLabel
      Height = 16
      ExplicitLeft = 674
    end
  end
  inherited Panel3: TPanel
    Height = 423
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 786
      Height = 420
      Align = alClient
      DataSource = SrcBudgetTopics
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnDblClick = DBGrid1DblClick
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'BudgetTopicID'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BudgetCaption_L1'
          Title.Alignment = taCenter
          Width = 278
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BudgetCaption_L2'
          Title.Alignment = taCenter
          Width = 275
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Essence'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
  end
  inherited ActionList: TActionList
    Left = 136
    inherited DataSetInsert1: TDataSetInsert [0]
    end
    inherited DataSetEdit1: TDataSetEdit [1]
    end
    inherited DataSetPost1: TDataSetPost [2]
    end
    inherited DataSetCancel1: TDataSetCancel [3]
    end
    object actNew: TAction [4]
      Caption = #1580#1583#1740#1583
      OnExecute = actNewExecute
    end
    object actChidNew: TAction [5]
      Caption = #1586#1610#1585' '#1587#1591#1581' '#1580#1583#1610#1583
      OnExecute = actChidNewExecute
    end
    object actEdit: TAction [6]
      Caption = #1608#1610#1585#1575#1610#1588
      OnExecute = actEditExecute
    end
    object actSendToExcel: TAction [7]
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendToExcelExecute
    end
    inherited actSearch_: TAction [8]
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete [9]
      DataSource = SrcBudgetTopics
    end
    object actSort: TAction [10]
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    inherited actExit: TAction [11]
    end
  end
  inherited ImageList1: TImageList
    Left = 88
    Top = 177
  end
  object qryBudgetTopics: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    BeforeDelete = qryBudgetTopicsBeforeDelete
    Parameters = <>
    SQL.Strings = (
      'SELECT    *'
      'FROM         acc.BudgetTopics'
      'ORDER BY LTRIM(STR(BudgetTopicID))')
    Left = 488
    Top = 144
    object qryBudgetTopicsBudgetTopicID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '
      FieldName = 'BudgetTopicID'
      Required = True
    end
    object qryBudgetTopicsBudgetCaption: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '
      FieldName = 'BudgetCaption_L1'
      Required = True
      Size = 100
    end
    object qryBudgetTopicsAccCode: TIntegerField
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576#1583#1575#1585#1610
      FieldName = 'AccCode'
    end
    object qryBudgetTopicsDetailCode: TIntegerField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610
      FieldName = 'DetailCode'
    end
    object qryBudgetTopicsCTopic1: TIntegerField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'
      FieldName = 'CTopic1'
    end
    object qryBudgetTopicsLevelID: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1587#1591#1581
      FieldName = 'LevelID'
      Required = True
    end
    object qryBudgetTopicsNote: TStringField
      FieldName = 'Note_L1'
      Size = 200
    end
    object qryBudgetTopicsNextYearCalType: TWordField
      DisplayLabel = #1606#1581#1608#1607' '#1605#1581#1575#1587#1576#1607' '#1576#1608#1583#1580#1607' '#1587#1575#1604' '#1576#1593#1583
      FieldName = 'NextYearCalType'
    end
    object qryBudgetTopicsEssence: TWordField
      DisplayLabel = #1605#1575#1607#1610#1578' '#1581#1587#1575#1576
      FieldName = 'Essence'
      OnGetText = qryBudgetTopicsEssenceGetText
    end
    object qryBudgetTopicsDecExtPerecent: TIntegerField
      DisplayLabel = #1583#1585#1589#1583#1578#1594#1610#1610#1585
      FieldName = 'DecExtPerecent'
    end
    object qryBudgetTopicsGroupTopic: TIntegerField
      DisplayLabel = #1711#1585#1608#1607' '#1576#1606#1583#1610' '#1582#1575#1589' '#1587#1585' '#1601#1589#1604' '
      FieldName = 'GroupTopic'
    end
    object qryBudgetTopicsPortionPerecentReclamation: TIntegerField
      DisplayLabel = #1583#1585#1589#1583#1587#1607#1605' '#1593#1605#1585#1575#1606#1610
      FieldName = 'PortionPerecentReclamation'
    end
    object qryBudgetTopicsPortionPerecentExp: TIntegerField
      DisplayLabel = #1583#1585#1589#1583' '#1587#1607#1605' '#1580#1575#1585#1610
      FieldName = 'PortionPerecentExp'
    end
    object qryBudgetTopicsBudgetCaption_L2: TStringField
      Tag = 3
      DisplayLabel = 'Caption'
      FieldName = 'BudgetCaption_L2'
      Size = 100
    end
    object qryBudgetTopicsNote_L2: TStringField
      FieldName = 'Note_L2'
      Size = 200
    end
  end
  object SrcBudgetTopics: TDataSource
    DataSet = qryBudgetTopics
    OnDataChange = SrcBudgetTopicsDataChange
    Left = 392
    Top = 152
  end
  object qryInit: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'LevelID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT    *'
      'FROM         acc.BudgetTopicLevels'
      'WHERE     (LevelID = :LevelID)')
    Left = 232
    Top = 8
    object qryInitLevelID: TIntegerField
      FieldName = 'LevelID'
    end
    object qryInitLevelCaption_L1: TStringField
      FieldName = 'LevelCaption_L1'
      Size = 50
    end
    object qryInitLevelCaption_L2: TStringField
      FieldName = 'LevelCaption_L2'
      Size = 50
    end
    object qryInitprvLevelID: TIntegerField
      FieldName = 'prvLevelID'
    end
    object qryInitCodeLength: TWordField
      FieldName = 'CodeLength'
    end
    object qryInitEssenseSelectable: TWordField
      FieldName = 'EssenseSelectable'
    end
    object qryInitAccRelationType: TWordField
      FieldName = 'AccRelationType'
    end
    object qryInitTopicType: TWordField
      FieldName = 'TopicType'
    end
    object qryInitAssignedForm: TIntegerField
      FieldName = 'AssignedForm'
    end
    object qryInitReportFileName: TStringField
      FieldName = 'ReportFileName'
      Size = 100
    end
    object qryInitNextYearSelectType: TWordField
      FieldName = 'NextYearSelectType'
    end
    object qryInitGroupOnTopicsVisible: TWordField
      FieldName = 'GroupOnTopicsVisible'
    end
    object qryInitSelectPercentType: TWordField
      FieldName = 'SelectPercentType'
    end
    object qryInitHasRelateOnProjects: TWordField
      FieldName = 'HasRelateOnProjects'
    end
  end
  object qryFormsInfo: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT     FormInfoID, InfoName_L1, InfoName_L2,InfoID'
      'FROM         acc.FormsInfo'
      '')
    Left = 296
    Top = 296
    object qryFormsInfoFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qryFormsInfoInfoName_L1: TStringField
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object qryFormsInfoInfoName_L2: TStringField
      FieldName = 'InfoName_L2'
      Size = 255
    end
    object qryFormsInfoInfoID: TWordField
      FieldName = 'InfoID'
    end
  end
end

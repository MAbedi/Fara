inherited SpecialSearchDocF: TSpecialSearchDocF
  Left = 277
  Top = 131
  ActiveControl = edtSearch
  Align = alLeft
  Caption = #1580#1587#1578#1580#1608' '
  ClientHeight = 465
  ClientWidth = 321
  ParentFont = False
  Font.Charset = ARABIC_CHARSET
  KeyPreview = True
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnResize = FormResize
  ExplicitWidth = 337
  ExplicitHeight = 504
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 321
    Height = 63
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 325
    DesignSize = (
      321
      63)
    object BitBtn2: TBitBtn
      Left = 8
      Top = 32
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1575#1606#1589#1585#1575#1601
      ModalResult = 2
      TabOrder = 0
    end
    object cmbTopic: TComboBox
      Left = 174
      Top = 8
      Width = 143
      Height = 21
      AutoDropDown = True
      AutoCloseUp = True
      BevelEdges = []
      BevelInner = bvNone
      BevelOuter = bvNone
      Style = csDropDownList
      Anchors = [akTop, akRight]
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
    end
    object edtSearch: TEdit
      Left = 115
      Top = 32
      Width = 204
      Height = 21
      Anchors = [akTop, akRight]
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvRaised
      TabOrder = 2
      OnChange = edtSearchChange
      OnKeyDown = edtSearchKeyDown
      ExplicitLeft = 123
    end
    object BitBtn1: TBitBtn
      Left = 8
      Top = 3
      Width = 75
      Height = 25
      Caption = #1578#1575#1574#1610#1583
      TabOrder = 3
      OnClick = BitBtn1Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 63
    Width = 321
    Height = 361
    Align = alClient
    Color = clCream
    DataSource = scrSearch
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = actLevelExecute
    Columns = <
      item
        Expanded = False
        FieldName = 'TopicCode'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MoeenName_L1'
        Width = 200
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 424
    Width = 321
    Height = 41
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 425
    ExplicitWidth = 325
    object BitBtn3: TBitBtn
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 0
    end
    object BitBtn4: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 1
    end
    object BitBtn5: TBitBtn
      Left = 168
      Top = 8
      Width = 75
      Height = 25
      Action = actBackLevel
      Caption = #1587#1591#1581' '#1602#1576#1604#1610
      TabOrder = 2
    end
  end
  object ActionList1: TActionList
    Left = 104
    Top = 24
    object actLevel: TAction
      Caption = 'actLevel'
      OnExecute = actLevelExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actSearch: TAction
      Caption = #1580#1587#1578#1580#1608
      OnExecute = actSearchExecute
    end
    object actBackLevel: TAction
      Caption = #1587#1591#1581' '#1602#1576#1604#1610
      Enabled = False
      OnExecute = actBackLevelExecute
    end
  end
  object qrySearch: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'LvlID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 3
      end
      item
        Name = 'AccFrom'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8000
        Value = Null
      end
      item
        Name = 'AccTo'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8000
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     cast(TopicCode as char) as TopicCode, MoeenName_L1,Pr' +
        'vTopicCode'
      'FROM         Acc.CategoriesForUse'
      
        'WHERE     (LevelID = :LvlID)  AND (PrvTopicCode BETWEEN :AccFrom' +
        ' AND :AccTo)')
    Left = 48
    Top = 96
    object qrySearchTopicCode: TStringField
      Tag = 3
      DisplayLabel = #1603#1583
      FieldName = 'TopicCode'
      FixedChar = True
      Size = 30
    end
    object qrySearchMoeenName_L1: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldName = 'MoeenName_L1'
      Size = 100
    end
    object qrySearchPrvTopicCode: TStringField
      FieldName = 'PrvTopicCode'
      ReadOnly = True
      Size = 8000
    end
  end
  object scrSearch: TDataSource
    DataSet = qrySearch
    Left = 72
    Top = 176
  end
end

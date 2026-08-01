inherited MailboxdatacontrolF: TMailboxdatacontrolF
  Caption = #1589#1606#1583#1608#1602' '#1662#1587#1578#1740' '#1705#1606#1578#1585#1604' '#1608' '#1575#1591#1604#1575#1593#1575#1578
  ClientHeight = 517
  OnResize = FormResize
  ExplicitWidth = 794
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 476
    object BitBtn6: TBitBtn
      Left = 86
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1740#1576
      TabOrder = 1
    end
    object BitBtn7: TBitBtn
      Left = 162
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 2
    end
    object BitBtn8: TBitBtn
      Left = 239
      Top = 8
      Width = 75
      Height = 25
      Action = actSendToExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 3
    end
    object BitBtn9: TBitBtn
      Left = 706
      Top = 8
      Width = 75
      Height = 25
      Action = actShow
      Anchors = [akRight, akBottom]
      Caption = #1606#1605#1575#1740#1588' '#1601#1585#1605
      TabOrder = 4
    end
    object BitBtn1: TBitBtn
      Left = 628
      Top = 8
      Width = 75
      Height = 25
      Action = actCheck
      Anchors = [akRight, akBottom]
      Caption = #1576#1585#1585#1587#1740' '#1575#1587#1606#1575#1583
      TabOrder = 5
    end
  end
  inherited Panel2: TPanel
    Height = 89
    ExplicitWidth = 786
    ExplicitHeight = 89
    inherited lblCaption: TLabel
      Height = 16
      ExplicitLeft = 674
    end
    object Label1: TLabel
      Left = 193
      Top = 8
      Width = 65
      Height = 13
      Caption = #1705#1583' '#1608' '#1606#1575#1605' '#1705#1575#1585#1576#1585' :'#8207
    end
    object Label2: TLabel
      Left = 193
      Top = 32
      Width = 116
      Height = 13
      Caption = #1705#1583' '#1608' '#1593#1606#1608#1575#1606' '#1662#1587#1578' '#1705#1575#1585#1576#1585#1740' :'#8207
    end
    object RadioGroup1: TRadioGroup
      Left = 11
      Top = 51
      Width = 269
      Height = 33
      Caption = '    '#1575#1591#1604#1575#1593#1575#1578'    '
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        #1578#1575#1574#1740#1583' '#1606#1588#1583#1607
        #1578#1575#1574#1740#1583' '#1588#1583#1607
        #1575#1585#1580#1575#1593' '#1588#1583#1607)
      TabOrder = 0
      OnClick = RadioGroup1Click
    end
    object Edit1: TEdit
      Left = 11
      Top = 5
      Width = 172
      Height = 21
      Enabled = False
      ReadOnly = True
      TabOrder = 1
      Text = 'Edit1'
    end
    object Edit2: TEdit
      Left = 11
      Top = 29
      Width = 172
      Height = 21
      Enabled = False
      ReadOnly = True
      TabOrder = 2
      Text = 'Edit1'
    end
  end
  inherited Panel3: TPanel
    Top = 89
    Height = 387
    ExplicitTop = 89
    ExplicitHeight = 388
    object Panel1: TPanel
      Left = 520
      Top = 2
      Width = 268
      Height = 384
      Align = alRight
      Caption = 'Panel1'
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 266
        Height = 295
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
            FieldName = 'FormCaption'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SortAccept'
            Visible = True
          end>
      end
      object GroupBox1: TGroupBox
        Left = 1
        Top = 296
        Width = 266
        Height = 87
        Align = alBottom
        Caption = #1578#1608#1590#1740#1581#1575#1578' '#1590#1585#1608#1585#1740
        TabOrder = 1
        object DBMemo1: TDBMemo
          Left = 2
          Top = 15
          Width = 262
          Height = 70
          Align = alClient
          DataField = 'Note'
          DataSource = srcViewFlow
          TabOrder = 0
        end
      end
    end
    object TPanel
      Left = 2
      Top = 2
      Width = 518
      Height = 384
      Align = alClient
      TabOrder = 1
      object dbgrd1: TDBGrid
        Tag = 111
        Left = 1
        Top = 1
        Width = 516
        Height = 362
        Align = alClient
        DataSource = srcWorkFlow
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnEditButtonClick = dbgrd1EditButtonClick
        OnKeyPress = dbgrd1KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'ForSum'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FormNumber'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FormDate'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'StateName'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FomNote'
            Width = 116
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Des'
            Width = 71
            Visible = True
          end>
      end
      object SumGrid1: TSumGrid
        Left = 1
        Top = 363
        Width = 516
        Active = False
        Enable_Controls = True
        MasterGrid = dbgrd1
        FieldsName = 'ForSum;'
      end
    end
  end
  inherited ActionList: TActionList
    Left = 584
    Top = 24
    inherited DataSetEdit1: TDataSetEdit [1]
      DataSource = srcWorkFlow
    end
    inherited DataSetInsert1: TDataSetInsert [2]
      DataSource = srcWorkFlow
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcWorkFlow
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcWorkFlow
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcWorkFlow
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1740#1576
      OnExecute = actSortExecute
    end
    object actSendToExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendToExcelExecute
    end
    object actShow: TAction
      Caption = #1606#1605#1575#1740#1588' '#1601#1585#1605
      OnExecute = actShowExecute
    end
    object actCheck: TAction
      Caption = #1576#1585#1585#1587#1740' '#1575#1587#1606#1575#1583
      OnExecute = actCheckExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 496
    Top = 25
  end
  object srcWorkFlow: TDataSource
    DataSet = qryWorkFlow
    OnStateChange = srcWorkFlowStateChange
    Left = 296
    Top = 152
  end
  object qryWorkFlow: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryWorkFlowAfterInsert
    BeforePost = qryWorkFlowBeforePost
    AfterPost = qryWorkFlowAfterPost
    BeforeDelete = qryWorkFlowBeforeDelete
    AfterScroll = qryWorkFlowAfterScroll
    Parameters = <
      item
        Name = 'YearID'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'FormType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 0
      end
      item
        Name = 'kind'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 0
      end>
    SQL.Strings = (
      'SELECT    *,1 AS ForSum'
      'FROM        dbo.Fn_WorkFlow ( :YearID  , :FormType  , :kind  )'
      '')
    Left = 396
    Top = 135
    object qryWorkFlowID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qryWorkFlowkind: TWordField
      FieldName = 'kind'
    end
    object qryWorkFlowServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryWorkFlowYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryWorkFlowFormID: TIntegerField
      FieldName = 'FormID'
    end
    object qryWorkFlowFormType: TWordField
      FieldName = 'FormType'
    end
    object qryWorkFlowModifyDate: TDateTimeField
      FieldName = 'ModifyDate'
    end
    object qryWorkFlowUserID: TIntegerField
      FieldName = 'UserID'
    end
    object qryWorkFlowPositionCode: TIntegerField
      FieldName = 'PositionCode'
    end
    object qryWorkFlowSortAccept: TWordField
      FieldName = 'SortAccept'
    end
    object qryWorkFlowState: TWordField
      FieldName = 'State'
    end
    object qryWorkFlowNote: TWideStringField
      FieldName = 'Note'
      Size = 100
    end
    object qryWorkFlowMaxSortAccept: TWordField
      FieldName = 'MaxSortAccept'
      ReadOnly = True
    end
    object qryWorkFlowFormNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'FormNumber'
      ReadOnly = True
    end
    object qryWorkFlowFormDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1740#1582' '#1601#1585#1605
      FieldName = 'FormDate'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object qryWorkFlowFomNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1740#1581#1575#1578' '#1601#1585#1605
      FieldName = 'FomNote'
      ReadOnly = True
      Size = 400
    end
    object qryWorkFlowDes: TStringField
      Tag = 3
      DisplayLabel = #1587#1575#1740#1585' '#1575#1591#1604#1575#1593#1575#1578
      FieldName = 'Des'
      ReadOnly = True
      Size = 191
    end
    object qryWorkFlowStateName: TStringField
      Tag = 3
      DisplayLabel = #1608#1590#1593#1740#1578
      FieldName = 'StateName'
      ReadOnly = True
      Size = 4
    end
    object qryWorkFlowForSum: TIntegerField
      FieldName = 'ForSum'
      ReadOnly = True
    end
  end
  object qryViewFlow: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryViewFlowAfterScroll
    Parameters = <
      item
        Name = 'PositionCode'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     WF_FlowFroms.ID, WF_FlowFroms.Kind, WF_FlowFroms.Form' +
        'TypeNum, ViewFlow.FormCaption, WF_FlowFroms.PositionCode, WF_Flo' +
        'wFroms.SortAccept, '
      
        '                      WF_FlowFroms.TitleControl, WF_FlowFroms.St' +
        'ateAfterPost, WF_FlowFroms.Note,CancelSortAccept'
      'FROM         WF_FlowFroms INNER JOIN'
      
        '                      ViewFlow ON WF_FlowFroms.Kind = ViewFlow.K' +
        'ind AND WF_FlowFroms.FormTypeNum = ViewFlow.FormType'
      'WHERE     (WF_FlowFroms.PositionCode =:PositionCode)')
    Left = 572
    Top = 183
    object qryViewFlowFormCaption: TStringField
      DisplayLabel = ' '#1606#1575#1605' '#1601#1585#1605
      FieldName = 'FormCaption'
      Size = 70
    end
    object qryViewFlowSortAccept: TWordField
      DisplayLabel = #1578#1585#1578#1740#1576'  '#1578#1575#1574#1740#1583
      FieldName = 'SortAccept'
    end
    object qryViewFlowkind: TWordField
      FieldName = 'kind'
    end
    object qryViewFlowNote: TWideStringField
      FieldName = 'Note'
      Size = 500
    end
    object qryViewFlowFormTypeNum: TIntegerField
      FieldName = 'FormTypeNum'
    end
    object qryViewFlowCancelSortAccept: TWordField
      FieldName = 'CancelSortAccept'
    end
    object qryViewFlowStateAfterPost: TWordField
      FieldName = 'StateAfterPost'
    end
  end
  object srcViewFlow: TDataSource
    DataSet = qryViewFlow
    Left = 672
    Top = 168
  end
  object qryPositon: TADOQuery
    Connection = DmF.adcFaraSystem
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT     *  FROM         Position')
    Left = 404
    Top = 31
  end
end

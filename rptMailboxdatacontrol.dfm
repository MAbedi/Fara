inherited rptMailboxdatacontrolF: TrptMailboxdatacontrolF
  Caption = #1711#1586#1575#1585#1588' '#1589#1606#1583#1608#1602' '#1662#1587#1578#1740
  ClientHeight = 517
  OnResize = FormResize
  ExplicitWidth = 794
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 476
    object BitBtn6: TBitBtn
      Left = 82
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1740#1576
      TabOrder = 1
    end
    object BitBtn7: TBitBtn
      Left = 161
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
    object btnFilter: TBitBtn
      Left = 708
      Top = 8
      Width = 75
      Height = 25
      Action = actFilter
      Anchors = [akRight, akBottom]
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 4
    end
    object btnShow: TBitBtn
      Left = 627
      Top = 8
      Width = 75
      Height = 25
      Action = actShow
      Anchors = [akRight, akBottom]
      Caption = #1606#1605#1575#1740#1588' '#1601#1585#1605
      TabOrder = 5
    end
  end
  inherited Panel2: TPanel
    Height = 58
    ExplicitHeight = 58
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
    object Edit1: TEdit
      Left = 11
      Top = 5
      Width = 172
      Height = 21
      Enabled = False
      ReadOnly = True
      TabOrder = 0
      Text = 'Edit1'
    end
    object Edit2: TEdit
      Left = 11
      Top = 29
      Width = 172
      Height = 21
      Enabled = False
      ReadOnly = True
      TabOrder = 1
      Text = 'Edit1'
    end
  end
  inherited Panel3: TPanel
    Top = 58
    Height = 418
    ExplicitTop = 58
    ExplicitHeight = 419
    object Panel1: TPanel
      Left = 520
      Top = 2
      Width = 268
      Height = 415
      Align = alRight
      Caption = 'Panel1'
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 266
        Height = 326
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
        Top = 327
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
    object pnl1: TPanel
      Left = 2
      Top = 2
      Width = 518
      Height = 415
      Align = alClient
      TabOrder = 1
      object spl1: TSplitter
        AlignWithMargins = True
        Left = 4
        Top = 150
        Width = 510
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        ExplicitTop = 148
      end
      object dbgrdWorkFlow: TDBGrid
        Tag = 111
        Left = 1
        Top = 1
        Width = 516
        Height = 146
        Align = alClient
        DataSource = srcWorkFlow
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
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
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Des'
            Width = 71
            Visible = True
          end>
      end
      object dbgrdWorkFlowItem: TDBGrid
        Left = 1
        Top = 156
        Width = 516
        Height = 258
        Align = alBottom
        DataSource = srcWorkFlowItem
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'name'
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PositionTitle'
            Width = 94
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Date'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'StateName'
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Note'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CitationNote'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ReferringNote'
            Width = 80
            Visible = True
          end>
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
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 504
    Top = 9
  end
  object srcWorkFlow: TDataSource
    DataSet = qryWorkFlow
    Left = 176
    Top = 152
  end
  object qryWorkFlow: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterScroll = qryWorkFlowAfterScroll
    Parameters = <
      item
        Name = 'YearID'
        Size = -1
        Value = Null
      end
      item
        Name = 'FormType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'kind'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT    *'
      'FROM        dbo.Fn_WorkFlow ( :YearID  , :FormType  , :kind  )')
    Left = 292
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
  end
  object srcViewFlow: TDataSource
    DataSet = qryViewFlow
    Left = 672
    Top = 168
  end
  object qryWorkFlowItem: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'YearID2'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'FormType2'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'kind2'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'kind'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 0
      end
      item
        Name = 'ServerID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
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
        Name = 'FormType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 0
      end
      item
        Name = 'FormID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT     WF_TransWorkFlow.ID, WF_TransWorkFlow.kind, WF_TransW' +
        'orkFlow.ServerID, WF_TransWorkFlow.YearID, WF_TransWorkFlow.Form' +
        'ID, '
      
        '                      WF_TransWorkFlow.FormType, WF_TransWorkFlo' +
        'w.ModifyDate, RIGHT(dbo.MiladiTOShamsi(WF_TransWorkFlow.ModifyDa' +
        'te), 8) AS Date, '
      
        '                      WF_TransWorkFlow.UserID, WF_TransWorkFlow.' +
        'PositionCode, WF_TransWorkFlow.SortAccept, WF_TransWorkFlow.Stat' +
        'e, WF_TransWorkFlow.Note, '
      
        '                      FaraSystems.dbo.Operators.name, FaraSystem' +
        's.dbo.Position.PositionTitle, CONVERT(VARCHAR(5), WF_TransWorkFl' +
        'ow.ModifyDate, 108) AS HourMinuteSecond, '
      
        '                         CASE  WF_TransWorkFlow.State  WHEN 0 TH' +
        'EN '#39#1601#1593#1575#1604#39' WHEN 1 THEN '#39#1576#1575#1740#1711#1575#1606#1740#39'  END AS StateName,'
      
        '                      View_FormsDes.Des, View_FormsDes.FormNumbe' +
        'r, View_FormsDes.FormDate, View_FormsDes.FomNote,WF_TransWorkFlo' +
        'w.CitationNote'
      '                      , WF_TransWorkFlow.ReferringNote'
      
        'FROM          View_WF_TransWorkFlow AS WF_TransWorkFlow  INNER J' +
        'OIN'
      
        '                      FaraSystems.dbo.Operators ON WF_TransWorkF' +
        'low.UserID = FaraSystems.dbo.Operators.UserID INNER JOIN'
      
        '                      FaraSystems.dbo.Position ON WF_TransWorkFl' +
        'ow.PositionCode = FaraSystems.dbo.Position.PositionCode INNER JO' +
        'IN'
      
        '                      Fn_FormsDes ( :YearID2 ,:FormType2   , :ki' +
        'nd2 ) AS View_FormsDes  ON WF_TransWorkFlow.kind = View_FormsDes' +
        '.Kind AND WF_TransWorkFlow.FormID = View_FormsDes.FormID AND '
      
        '                      WF_TransWorkFlow.ServerID = View_FormsDes.' +
        'ServerID AND WF_TransWorkFlow.YearID = View_FormsDes.YearID AND '
      
        '                      WF_TransWorkFlow.FormType = View_FormsDes.' +
        'FormType'
      
        'WHERE     (WF_TransWorkFlow.kind =:kind) AND (WF_TransWorkFlow.S' +
        'erverID = :ServerID) AND (WF_TransWorkFlow.YearID =:YearID) AND ' +
        '(WF_TransWorkFlow.FormType =:FormType) AND '
      '                      (WF_TransWorkFlow.FormID =:FormID)'
      '')
    Left = 188
    Top = 375
    object AutoIncField1: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object WordField1: TWordField
      FieldName = 'kind'
    end
    object IntegerField1: TIntegerField
      FieldName = 'ServerID'
    end
    object IntegerField2: TIntegerField
      FieldName = 'YearID'
    end
    object IntegerField3: TIntegerField
      FieldName = 'FormID'
    end
    object WordField2: TWordField
      FieldName = 'FormType'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'ModifyDate'
    end
    object qryWorkFlowDate: TStringField
      DisplayLabel = #1578#1575#1585#1740#1582' '#1575#1606#1580#1575#1605
      FieldName = 'Date'
      ReadOnly = True
      Size = 10
    end
    object IntegerField4: TIntegerField
      FieldName = 'UserID'
    end
    object IntegerField5: TIntegerField
      FieldName = 'PositionCode'
    end
    object WordField3: TWordField
      FieldName = 'SortAccept'
    end
    object WideStringField1: TWideStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'Note'
      Size = 100
    end
    object qryWorkFlowname: TStringField
      DisplayLabel = #1606#1575#1605' '#1705#1575#1585#1576#1585
      FieldName = 'name'
      Size = 50
    end
    object qryWorkFlowPositionTitle: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1662#1587#1578' '#1705#1575#1585#1576#1585#1740
      FieldName = 'PositionTitle'
      Size = 100
    end
    object qryWorkFlowHourMinuteSecond: TStringField
      FieldName = 'HourMinuteSecond'
      ReadOnly = True
      Size = 5
    end
    object StringField1: TStringField
      FieldName = 'Des'
      ReadOnly = True
      Size = 191
    end
    object IntegerField6: TIntegerField
      FieldName = 'FormNumber'
      ReadOnly = True
    end
    object StringField2: TStringField
      FieldName = 'FormDate'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object WordField4: TWordField
      FieldName = 'State'
    end
    object StringField3: TStringField
      DisplayLabel = #1608#1590#1593#1740#1578
      FieldName = 'StateName'
      ReadOnly = True
      Size = 4
    end
    object StringField4: TStringField
      FieldName = 'FomNote'
      ReadOnly = True
      Size = 400
    end
    object qryWorkFlowCitationNote: TStringField
      DisplayLabel = #1606#1608#1593' '#1711#1585#1583#1588
      FieldName = 'CitationNote'
      ReadOnly = True
      Size = 110
    end
    object qryWorkFlowItemReferringNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1740#1581#1575#1578' '#1575#1585#1580#1575#1593
      FieldName = 'ReferringNote'
      ReadOnly = True
      Size = 500
    end
  end
  object srcWorkFlowItem: TDataSource
    DataSet = qryWorkFlowItem
    Left = 360
    Top = 376
  end
end

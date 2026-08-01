inherited CheckDocumentsF2: TCheckDocumentsF2
  Caption = #1576#1585#1585#1587#1740' '#1575#1587#1606#1575#1583
  ClientHeight = 473
  ClientWidth = 747
  OnDestroy = FormDestroy
  OnResize = FormResize
  ExplicitWidth = 763
  ExplicitHeight = 512
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 747
    Height = 63
    ExplicitWidth = 755
    ExplicitHeight = 63
    inherited Image1: TImage
      Left = 701
      ExplicitLeft = 701
    end
    inherited lblTopic0: TLabel
      Left = 629
      ExplicitLeft = 629
    end
    inherited lblTopic1: TLabel
      Left = 608
      ExplicitLeft = 608
    end
  end
  inherited pnlDown: TPanel
    Top = 436
    Width = 747
    ExplicitTop = 448
    ExplicitWidth = 755
    inherited btnClose: TBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 4
      Height = 29
      Align = alLeft
      ModalResult = 2
      ExplicitLeft = 4
      ExplicitTop = 4
      ExplicitHeight = 29
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 85
      Top = 4
      Width = 75
      Height = 29
      Action = actShow
      Align = alLeft
      Caption = #1606#1605#1575#1740#1588' '#1601#1585#1605
      TabOrder = 1
    end
    object btnVoid: TBitBtn
      AlignWithMargins = True
      Left = 514
      Top = 4
      Width = 75
      Height = 29
      Action = actVoid
      Align = alRight
      Caption = #1576#1575#1591#1604' '#1705#1585#1583#1606
      ModalResult = 1
      TabOrder = 2
    end
    object btnPost: TBitBtn
      AlignWithMargins = True
      Left = 676
      Top = 4
      Width = 75
      Height = 29
      Action = actPost
      Align = alRight
      Caption = #1578#1575#1574#1740#1583
      ModalResult = 1
      TabOrder = 3
    end
    object btnPost1: TBitBtn
      AlignWithMargins = True
      Left = 595
      Top = 4
      Width = 75
      Height = 29
      Action = actCitation
      Align = alRight
      Caption = #1575#1585#1580#1575#1593' '#1576#1607' ...'
      TabOrder = 4
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 63
    Width = 747
    Height = 126
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 755
    object Label1: TLabel
      Left = 673
      Top = 10
      Width = 57
      Height = 13
      Caption = #1588#1605#1575#1585#1607' '#1601#1585#1605' :'#8207
    end
    object Label2: TLabel
      Left = 499
      Top = 10
      Width = 48
      Height = 13
      Caption = #1578#1575#1585#1740#1582' '#1601#1585#1605' :'#8207
    end
    object Label3: TLabel
      Left = 674
      Top = 50
      Width = 69
      Height = 13
      Caption = #1587#1575#1740#1585' '#1575#1591#1604#1575#1593#1575#1578' :'#8207
    end
    object Label4: TLabel
      Left = 123
      Top = 10
      Width = 61
      Height = 13
      Caption = #1608#1590#1593#1740#1578' '#1601#1585#1605' :'#8207
    end
    object Label9: TLabel
      Left = 629
      Top = 74
      Width = 122
      Height = 13
      Caption = #1575#1591#1604#1575#1593#1575#1578'  '#1575#1740#1606' '#1601#1585#1605' '#1576#1607' '#1605#1606#1592#1608#1585' '
    end
    object Label10: TLabel
      Left = 38
      Top = 98
      Width = 97
      Height = 13
      Caption = #1605#1608#1585#1583' '#1578#1575#1574#1740#1583' '#1602#1585#1575#1585' '#1711#1585#1601#1578' .'#8207
    end
    object DBEdit2: TDBEdit
      Left = 414
      Top = 6
      Width = 83
      Height = 21
      BevelOuter = bvNone
      BevelKind = bkFlat
      Color = clBtnFace
      Ctl3D = True
      DataField = 'FormDate'
      DataSource = srcWorkFlow
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit4: TDBEdit
      Left = 38
      Top = 6
      Width = 83
      Height = 21
      BevelOuter = bvNone
      BevelKind = bkFlat
      Color = clBtnFace
      Ctl3D = True
      DataField = 'StateName'
      DataSource = srcWorkFlow
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBMemo2: TDBMemo
      Left = 38
      Top = 36
      Width = 630
      Height = 32
      DataField = 'Des'
      DataSource = srcWorkFlow
      TabOrder = 2
    end
    object DBEdit1: TDBEdit
      Left = 584
      Top = 6
      Width = 83
      Height = 21
      BevelOuter = bvNone
      BevelKind = bkFlat
      Color = clBtnFace
      Ctl3D = True
      DataField = 'FormNumber'
      DataSource = srcWorkFlow
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
    object Edit1: TEdit
      Left = 141
      Top = 94
      Width = 526
      Height = 21
      TabOrder = 4
    end
  end
  object DBGrid1: TDBGrid [3]
    Left = 0
    Top = 189
    Width = 747
    Height = 247
    Align = alClient
    DataSource = srcWorkFlow
    TabOrder = 3
    TitleFont.Charset = ARABIC_CHARSET
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
        Width = 159
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CitationNote'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ReferringNote'
        Width = 84
        Visible = True
      end>
  end
  inherited ActionList1: TActionList
    object actShow: TAction
      Caption = #1606#1605#1575#1740#1588' '#1601#1585#1605
      OnExecute = actShowExecute
    end
    object actVoid: TAction
      Caption = #1576#1575#1591#1604' '#1705#1585#1583#1606
      OnExecute = actVoidExecute
    end
    object actPost: TAction
      Caption = #1578#1575#1574#1740#1583
      OnExecute = actPostExecute
    end
    object Action1: TAction
      Caption = 'Action1'
    end
    object actCitation: TAction
      Caption = #1575#1585#1580#1575#1593' '#1576#1607' ...'
      OnExecute = actCitationExecute
    end
  end
  object qryWorkFlow: TADOQuery
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
    Left = 236
    Top = 263
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
    object qryWorkFlowDate: TStringField
      DisplayLabel = #1578#1575#1585#1740#1582' '#1575#1606#1580#1575#1605
      FieldName = 'Date'
      ReadOnly = True
      Size = 10
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
    object qryWorkFlowNote: TWideStringField
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
    object qryWorkFlowDes: TStringField
      FieldName = 'Des'
      ReadOnly = True
      Size = 191
    end
    object qryWorkFlowFormNumber: TIntegerField
      FieldName = 'FormNumber'
      ReadOnly = True
    end
    object qryWorkFlowFormDate: TStringField
      FieldName = 'FormDate'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object qryWorkFlowState: TWordField
      FieldName = 'State'
    end
    object qryWorkFlowStateName: TStringField
      DisplayLabel = #1608#1590#1593#1740#1578
      FieldName = 'StateName'
      ReadOnly = True
      Size = 4
    end
    object qryWorkFlowFomNote: TStringField
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
    object qryWorkFlowReferringNote: TStringField
      DisplayLabel = #1578#1608#1590#1740#1581#1575#1578' '#1575#1585#1580#1575#1593
      FieldName = 'ReferringNote'
      ReadOnly = True
      Size = 500
    end
  end
  object srcWorkFlow: TDataSource
    DataSet = qryWorkFlow
    Left = 544
    Top = 264
  end
  object pop1: TPopupMenu
    Left = 368
    Top = 328
    object mnuAllCitation: TMenuItem
      Caption = 'AllCitation'
      OnClick = mnuAllCitationClick
    end
  end
end

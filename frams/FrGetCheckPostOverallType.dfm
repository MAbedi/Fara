object frmGetCheckPostOverallType: TfrmGetCheckPostOverallType
  Left = 0
  Top = 0
  Width = 354
  Height = 120
  TabOrder = 0
  object lblCaption: TLabel
    Left = 0
    Top = 0
    Width = 354
    Height = 13
    Align = alTop
    Alignment = taCenter
    Caption = #1601#1585#1575#1582#1608#1575#1606#1740' '#1605#1580#1608#1586
    ExplicitWidth = 67
  end
  object Panel1: TPanel
    Left = 0
    Top = 13
    Width = 354
    Height = 28
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label2: TLabel
      AlignWithMargins = True
      Left = 301
      Top = 3
      Width = 50
      Height = 22
      Align = alRight
      Caption = #1588#1605#1575#1585#1607' '#1601#1585#1605
      ExplicitHeight = 13
    end
    object SpeedButton1: TSpeedButton
      Tag = 19
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 23
      Height = 22
      Align = alLeft
      Caption = '...'
      OnClick = SpeedButton1Click
      ExplicitLeft = 137
      ExplicitTop = 6
    end
    object edtFormNumber: TEdit
      AlignWithMargins = True
      Left = 108
      Top = 3
      Width = 187
      Height = 22
      Align = alClient
      TabOrder = 0
      OnEnter = edtFormNumberEnter
      OnExit = edtFormNumberExit
      OnKeyDown = edtFormNumberKeyDown
      ExplicitHeight = 21
    end
    object cmbYear: TYearComboBox
      Left = 29
      Top = 0
      Width = 76
      Height = 28
      Align = alLeft
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 1
      OnClick = cmbYearClick
      YearID = 0
      YearsParam = 0
      ADOConnection = DmF.adcBSell
    end
  end
  object rdoType: TRadioGroup
    AlignWithMargins = True
    Left = 3
    Top = 44
    Width = 348
    Height = 40
    Align = alClient
    Caption = #1606#1581#1608#1607' '#1589#1583#1608#1585
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      #1578#1580#1605#1740#1593#1740
      #1578#1601#1705#1740#1705#1740)
    TabOrder = 1
  end
  object pnlDown: TPanel
    Left = 0
    Top = 87
    Width = 354
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    object btnok: TBitBtn
      AlignWithMargins = True
      Left = 276
      Top = 3
      Width = 75
      Height = 27
      Action = actOk
      Align = alRight
      Caption = #1601#1585#1575#1582#1608#1575#1606
      TabOrder = 0
    end
  end
  object qry4Locate: TADOQuery
    Connection = DmF.adcBSell
    Parameters = <>
    Left = 296
    Top = 24
  end
  object actlst1: TActionList
    Left = 96
    Top = 40
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = #1578#1571#1610#1610#1600#1600#1600#1583
      Hint = ' '
      ShortCut = 119
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = #1575#1606#1589#1600#1600#1600#1585#1575#1601
      Hint = ' '
      ShortCut = 27
    end
    object actSmsSend: TAction
      Tag = -25
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' SmsManager '
    end
    object actOk: TAction
      Caption = #1601#1585#1575#1582#1608#1575#1606
      ShortCut = 119
      OnExecute = actOkExecute
    end
  end
  object qry4Sum: TADOQuery
    Connection = DmF.adcBSell
    Parameters = <>
    Left = 208
    Top = 32
  end
  object qry_Severable: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Severable'
      'where 1=0')
    Left = 142
    Top = 60
    object qry_SeverableID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qry_SeverableFormItemID: TIntegerField
      FieldName = 'FormItemID'
    end
    object qry_SeverableCustID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583#1605#1588#1578#1585#1610
      FieldName = 'CustID'
    end
    object qry_SeverableTopicCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576
      FieldName = 'TopicCode'
    end
    object qry_SeverableDetailCode: TStringField
      Tag = 3
      DisplayLabel = #1603#1583#1578#1601#1589#1610#1604#1610
      FieldName = 'DetailCode'
      Size = 12
    end
    object qry_SeverableCTopicCode: TStringField
      Tag = 3
      DisplayLabel = #1603#1583#1605#1585#1603#1586#1607#1586#1610#1606#1607
      FieldName = 'CTopicCode'
      Size = 12
    end
    object qry_SeverableCTopicCode2: TStringField
      Tag = 3
      DisplayLabel = #1603#1583#1578#1601#1589#1740#1604#1740'3'
      FieldName = 'CTopicCode2'
      Size = 12
    end
    object qry_SeverableBudgetCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583#1576#1608#1583#1580#1607
      FieldName = 'BudgetCode'
    end
    object qry_SeverableAmount: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'Amount'
      currency = True
      Precision = 19
    end
    object qry_SeverableServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qry_SeverableYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qry_SeverableFormID: TIntegerField
      FieldName = 'FormID'
    end
    object qry_SeverableSeverableNote: TWideStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'SeverableNote'
      Size = 255
    end
    object qry_SeverableDeficitAmount: TBCDField
      DisplayLabel = #1603#1587#1608#1585#1575#1578
      FieldName = 'DeficitAmount'
      currency = True
      Precision = 19
    end
    object qry_SeverableArzAmount: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1575#1585#1586
      FieldName = 'ArzAmount'
      Precision = 18
    end
    object qry_SeverableCTopicCode3: TStringField
      FieldName = 'CTopicCode3'
      Size = 12
    end
  end
end

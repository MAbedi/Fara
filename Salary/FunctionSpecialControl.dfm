inherited FunctionSpecialControlF: TFunctionSpecialControlF
  Left = 410
  Top = 254
  ActiveControl = btnSearch
  Caption = #1603#1606#1578#1585#1604' '#1603#1575#1585#1603#1585#1583' '#1582#1575#1589
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    inherited BtnReject: TBitBtn
      TabOrder = 3
    end
    object btnSort: TBitBtn
      Left = 96
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 2
    end
    object btnSearch_: TBitBtn
      Left = 176
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 1
    end
    object btnExcel: TBitBtn
      Left = 256
      Top = 8
      Width = 75
      Height = 25
      Action = actExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 0
    end
    object pnlNew: TPanel
      Left = 528
      Top = 1
      Width = 257
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 4
      DesignSize = (
        257
        39)
      object btnInsertForm: TBitBtn
        Left = 175
        Top = 8
        Width = 75
        Height = 25
        Action = actInsertForm
        Anchors = [akTop, akRight]
        Caption = #1601#1585#1605' '#1580#1583#1610#1583
        TabOrder = 0
      end
      object btnDeleForm: TBitBtn
        Left = 15
        Top = 8
        Width = 75
        Height = 25
        Action = actDeleForm
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601' '#1603#1604#1610
        TabOrder = 2
      end
      object btn1: TBitBtn
        Left = 95
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetDelete1_
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601' '#1585#1583#1610#1601
        TabOrder = 1
      end
    end
  end
  inherited Panel2: TPanel
    Height = 57
    ExplicitHeight = 57
    inherited lblCaption: TLabel
      Height = 16
    end
    object btnSearch: TBitBtn
      Left = 5
      Top = 27
      Width = 75
      Height = 25
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 0
      OnClick = btnSearchClick
    end
  end
  inherited Panel3: TPanel
    Top = 57
    Height = 419
    ExplicitTop = 57
    ExplicitHeight = 419
    object pnl1: TPanel
      Left = 296
      Top = 96
      Width = 241
      Height = 209
      TabOrder = 2
    end
    object DBGrid1: TDBGrid
      Tag = 111
      Left = 2
      Top = 32
      Width = 782
      Height = 385
      Align = alClient
      Color = clCream
      DataSource = srcFunction
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnEditButtonClick = DBGrid1EditButtonClick
      OnEnter = DBGrid1Enter
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'PersonelNo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_PersonName'
          Width = 149
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FunctionTime'
          Visible = True
        end
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'ProjectID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_ProjectCaption'
          Width = 87
          Visible = True
        end
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'CarCode'
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_CarCaption'
          Width = 100
          Visible = True
        end
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'ProcCode'
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_ProductCaption'
          Width = 110
          Visible = True
        end
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'ActivityCode'
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_activityCaption'
          Width = 67
          Visible = True
        end
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'FunctionKind'
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_FunctionCaption'
          Width = 108
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FunAmount'
          Visible = True
        end>
    end
    object pnlMaster: TPanel
      Left = 2
      Top = 2
      Width = 782
      Height = 30
      Align = alTop
      TabOrder = 0
      DesignSize = (
        782
        30)
      object Label1: TLabel
        Left = 687
        Top = 8
        Width = 103
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
        ExplicitLeft = 659
      end
      object spdOffice: TSpeedButton
        Left = 583
        Top = 3
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        OnClick = spdOfficeClick
        ExplicitLeft = 555
      end
      object Label2: TLabel
        Left = 111
        Top = 8
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = #1578#1575#1585#1610#1582
      end
      object mskDate: TMaskEdit
        Left = 34
        Top = 4
        Width = 73
        Height = 21
        Color = 13431799
        EditMask = '9999/99/99;1;_'
        MaxLength = 10
        TabOrder = 1
        Text = '    /  /  '
        OnExit = mskDateExit
      end
      object mskOfficeCode: TMaskEdit
        Left = 608
        Top = 4
        Width = 73
        Height = 21
        Anchors = [akTop, akRight]
        EditMask = '999999999;1;_'
        MaxLength = 9
        TabOrder = 0
        Text = '         '
        OnChange = mskOfficeCodeChange
        OnExit = mskOfficeCodeExit
      end
      object edtInfoName_L1: TEdit
        Left = 350
        Top = 4
        Width = 228
        Height = 21
        TabStop = False
        Anchors = [akTop, akRight]
        Color = clBtnFace
        TabOrder = 2
      end
    end
  end
  inherited ActionList: TActionList
    Left = 192
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcFunction
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcFunction
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcFunction
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcFunction
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      Caption = #1581#1584#1601' '#1585#1583#1610#1601
      DataSource = srcFunction
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actExcelExecute
    end
    object actInsertForm: TAction
      Category = 'Dataset'
      Caption = #1601#1585#1605' '#1580#1583#1610#1583
      OnExecute = actInsertFormExecute
    end
    object actDeleForm: TAction
      Category = 'Dataset'
      Caption = #1581#1584#1601' '#1603#1604#1610
      OnExecute = actDeleFormExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 312
    Top = 17
  end
  object qryFunction: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    BeforePost = qryFunctionBeforePost
    BeforeDelete = qryFunctionBeforeDelete
    Parameters = <
      item
        Name = 'OCode'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Date'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'Select * FROM Pay.FunctionspecialControl'
      'Where OfficeCode = :OCode and ControlDate = :Date')
    Left = 72
    Top = 133
    object qryFunctionID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qryFunctionYearID: TIntegerField
      DisplayLabel = #1587#1575#1604' '#1605#1575#1604#1610
      FieldName = 'YearID'
    end
    object qryFunctionControlDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'ControlDate'
      FixedChar = True
      Size = 10
    end
    object qryFunctionPersonelNo: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1662#1585#1587#1606#1604
      FieldName = 'PersonelNo'
      Required = True
    end
    object qryFunctionOfficeCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1587#1575#1586#1605#1575#1606#1610
      FieldName = 'OfficeCode'
    end
    object qryFunctionProjectID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1662#1585#1608#1688#1607
      FieldName = 'ProjectID'
    end
    object qryFunctionCarCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1582#1608#1583#1585#1608
      FieldName = 'CarCode'
    end
    object qryFunctionActivityCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1601#1593#1575#1604#1610#1578
      FieldName = 'ActivityCode'
    end
    object qryFunctionProcCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1581#1589#1608#1604
      FieldName = 'ProcCode'
    end
    object qryFunctionFunctionKind: TIntegerField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1603#1575#1585#1603#1585#1583
      FieldName = 'FunctionKind'
    end
    object qryFunctionFunctionTime: TFloatField
      Tag = 3
      DisplayLabel = #1603#1575#1585#1603#1585#1583
      FieldName = 'FunctionTime'
      Required = True
    end
    object qryFunctionFunAmount: TFloatField
      Tag = 3
      DisplayLabel = #1578#1593#1583#1575#1583' '#1587#1585#1608#1610#1587' '#1581#1580#1605
      FieldName = 'FunAmount'
    end
    object qryFunction_PersonName: TStringField
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1662#1585#1587#1606#1604
      FieldKind = fkLookup
      FieldName = '_PersonName'
      LookupDataSet = qryPersonelInfo
      LookupKeyFields = 'PersonelNo'
      LookupResultField = 'name'
      KeyFields = 'PersonelNo'
      ReadOnly = True
      Size = 150
      Lookup = True
    end
    object qryFunction_ProjectCaption: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1662#1585#1608#1688#1607
      FieldKind = fkLookup
      FieldName = '_ProjectCaption'
      LookupDataSet = qryProject
      LookupKeyFields = 'InfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'ProjectID'
      ReadOnly = True
      Size = 150
      Lookup = True
    end
    object qryFunction_CarCaption: TStringField
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1582#1608#1583#1585#1608
      FieldKind = fkLookup
      FieldName = '_CarCaption'
      LookupDataSet = qryCar
      LookupKeyFields = 'InfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'CarCode'
      ReadOnly = True
      Size = 150
      Lookup = True
    end
    object qryFunction_ProductCaption: TStringField
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1605#1581#1589#1608#1604
      FieldKind = fkLookup
      FieldName = '_ProductCaption'
      LookupDataSet = qryProduct
      LookupKeyFields = 'InfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'ProcCode'
      ReadOnly = True
      Size = 150
      Lookup = True
    end
    object qryFunction_activityCaption: TStringField
      DisplayLabel = #1606#1608#1593' '#1601#1593#1575#1604#1610#1578
      FieldKind = fkLookup
      FieldName = '_activityCaption'
      LookupDataSet = qryActivity
      LookupKeyFields = 'InfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'ActivityCode'
      ReadOnly = True
      Size = 150
      Lookup = True
    end
    object qryFunction_FunctionCaption: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1603#1575#1585#1603#1585#1583
      FieldKind = fkLookup
      FieldName = '_FunctionCaption'
      LookupDataSet = qryFunctionKind
      LookupKeyFields = 'InfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'FunctionKind'
      ReadOnly = True
      Size = 150
      Lookup = True
    end
  end
  object srcFunction: TDataSource
    AutoEdit = False
    DataSet = qryFunction
    Left = 80
    Top = 221
  end
  object qryProject: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     InfoID, InfoName_L1'
      'FROM Pay.FormsInfo'
      'WHERE     (FormType = 40)'
      '')
    Left = 688
    Top = 137
  end
  object qryCar: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     InfoID, InfoName_L1'
      'FROM Pay.FormsInfo'
      'WHERE     (FormType = 96 )')
    Left = 696
    Top = 193
  end
  object qryActivity: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     InfoID, InfoName_L1'
      'FROM Pay.FormsInfo'
      'WHERE     (FormType = 40)')
    Left = 696
    Top = 249
  end
  object qryProduct: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     InfoID, InfoName_L1'
      'FROM Pay.FormsInfo'
      'WHERE     (FormType = 67 )'
      '')
    Left = 696
    Top = 313
  end
  object qryFunctionKind: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     InfoID, InfoName_L1'
      'FROM Pay.FormsInfo'
      'WHERE     (FormType = 70)'
      '')
    Left = 696
    Top = 385
  end
  object qryPersonelInfo: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     PersonelNo, ISNULL(name_L1, '#39#39') + '#39' '#39' + ISNULL(lastNa' +
        'me_L1, '#39#39') AS name'
      'FROM Pay.PersonelInfo')
    Left = 600
    Top = 137
  end
  object qryOffice: TADOQuery
    Connection = DmF.adcsalary
    LockType = ltReadOnly
    AfterScroll = qryOfficeAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT     InfoID as OfficeCode, InfoName_L1'
      'FROM Pay.FormsInfo'
      'WHERE     (FormType = 12)')
    Left = 602
    Top = 216
  end
end

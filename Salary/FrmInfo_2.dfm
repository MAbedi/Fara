inherited FrmInfo_2F: TFrmInfo_2F
  Left = 193
  Top = 180
  Caption = 'FrmInfo_2F'
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    object newPanel: TPanel
      Left = 530
      Top = 1
      Width = 253
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        253
        39)
      object BitBtn3: TBitBtn
        Left = 168
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 88
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        Left = 8
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetDelete1_
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        TabOrder = 2
      end
    end
    object BitBtn6: TBitBtn
      Left = 256
      Top = 8
      Width = 89
      Height = 25
      Action = actSendToExcel
      Caption = ' '#1575#1585#1587#1575#1604' '#1576#1607' Excel '
      TabOrder = 2
    end
    object BitBtn2: TBitBtn
      Left = 176
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      Left = 96
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 4
    end
    object BitBtn7: TBitBtn
      Left = 461
      Top = 9
      Width = 72
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #1670#1575#1662
      TabOrder = 5
    end
  end
  inherited Panel2: TPanel
    Height = 69
    object SpeedButton1: TSpeedButton
      Left = 14
      Top = 1
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = SpeedButton1Click
    end
    object Label1: TLabel
      Left = 112
      Top = 6
      Width = 105
      Height = 13
      Caption = #1603#1583' '#1608' '#1587#1591#1581' '#1593#1606#1608#1575#1606' '#1602#1610#1604#1610
    end
    object DBEdit1: TDBEdit
      Left = 39
      Top = 2
      Width = 68
      Height = 21
      DataField = 'InfoID'
      DataSource = SrcMaster
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 14
      Top = 26
      Width = 202
      Height = 19
      Color = 14540253
      Ctl3D = False
      DataField = 'InfoName_L1'
      DataSource = SrcMaster
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object DBNavigator1: TDBNavigator
      Left = 12
      Top = 46
      Width = 204
      Height = 18
      DataSource = SrcMaster
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Flat = True
      TabOrder = 2
    end
  end
  inherited Panel3: TPanel
    Top = 69
    Height = 414
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 780
      Height = 410
      Align = alClient
      DataSource = SrcItem
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'InfoID'
          Title.Alignment = taCenter
          Width = 41
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'InfoName_L1'
          Title.Alignment = taCenter
          Width = 128
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'InfoName_L2'
          Title.Alignment = taCenter
          Width = 145
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'Amount2'
          Title.Alignment = taCenter
          Width = 94
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'Amount'
          Title.Alignment = taCenter
          Width = 85
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'Coefficient'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'StandardDays'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'StandardTimes'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'WordDocuments'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CalCulateType'
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'AccTopicCode'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'AccDetailCode'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'AccCTopicode'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'AccCTopicode2'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RecalKindClock'
          Visible = True
        end>
    end
  end
  inherited ActionList: TActionList
    Left = 328
    inherited DataSetInsert1: TDataSetInsert
      DataSource = SrcItem
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = SrcItem
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = SrcItem
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = SrcItem
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = SrcItem
    end
    object actSendToExcel: TAction
      Caption = ' '#1575#1585#1587#1575#1604' '#1576#1607' Excel '
      OnExecute = actSendToExcelExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 336
    Top = 65529
  end
  object qryItem: TADOQuery
    Connection = DMF.adcSalary
    CursorType = ctStatic
    AfterInsert = qryItemAfterInsert
    AfterEdit = qryItemAfterEdit
    Parameters = <
      item
        Name = 'FormType'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'FormInfoID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     Pay.FormsInfo.*'
      'FROM         Pay.FormsInfo'
      'WHERE     (FormType = :FormType ) AND (PrvInfoID = :FormInfoID)')
    Left = 576
    Top = 136
    object qryItemFormInfoID: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1606#1583#1607' '
      FieldName = 'FormInfoID'
      Required = True
    end
    object qryItemFormType: TIntegerField
      DisplayLabel = #1603#1583' '#1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578' '
      FieldName = 'FormType'
      Required = True
    end
    object qryItemInfoID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583
      FieldName = 'InfoID'
    end
    object qryItemInfoName_L1: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' - '#1586#1576#1575#1606' 1 '#1576#1585#1606#1575#1605#1607' '
      FieldName = 'InfoName_L1'
      Required = True
      Size = 255
    end
    object qryItemInfoName_L2: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1586#1610#1575#1606' 2 - '#1576#1585#1606#1575#1605#1607' '
      FieldName = 'InfoName_L2'
      Size = 255
    end
    object qryItemPrvInfoID: TIntegerField
      DisplayLabel = #1603#1583' '#1587#1591#1581' '#1602#1576#1604#1610
      FieldName = 'PrvInfoID'
    end
    object qryItemAmount: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1579#1575#1576#1578' '
      FieldName = 'Amount'
      Precision = 19
    end
    object qryItemAmount2: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1575#1608#1604#1610#1607' /'#1575#1601#1585#1575#1583' '#1605#1593#1575#1601
      FieldName = 'Amount2'
      Precision = 19
    end
    object qryItemCoefficient: TFloatField
      DisplayLabel = #1590#1585#1610#1576
      FieldName = 'Coefficient'
    end
    object qryItemStandardDays: TFloatField
      DisplayLabel = #1585#1608#1586' ( '#1575#1587#1578#1575#1606#1583#1575#1585#1583')'
      FieldName = 'StandardDays'
    end
    object qryItemStandardTimes: TFloatField
      DisplayLabel = #1587#1575#1593#1578' '#1575#1587#1578#1575#1606#1583#1575#1585#1583' '
      FieldName = 'StandardTimes'
    end
    object qryItemAccTopicCode: TIntegerField
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576
      FieldName = 'AccTopicCode'
    end
    object qryItemAccDetailCode: TIntegerField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610
      FieldName = 'AccDetailCode'
    end
    object qryItemAccCTopicode: TIntegerField
      DisplayLabel = #1603#1583' '#1605'. '#1607#1586#1610#1606#1607' 1'
      FieldName = 'AccCTopicode'
    end
    object qryItemAccCTopicode2: TIntegerField
      DisplayLabel = #1603#1583' '#1605'. '#1607#1586#1610#1606#1607' 2'
      FieldName = 'AccCTopicode2'
    end
    object qryItemCalCulateType: TWordField
      DisplayLabel = #1606#1608#1593' '#1605#1581#1575#1587#1576#1607' '#1581#1602#1608#1602' '#1608' '#1583#1587#1578#1605#1586#1583
      FieldName = 'CalCulateType'
      OnGetText = qryItemCalCulateTypeGetText
      OnSetText = qryItemCalCulateTypeSetText
    end
    object qryItemRecallFormInfoID1: TStringField
      DisplayLabel = #1603#1583#1607#1575#1610' '#1602#1575#1576#1604' '#1575#1581#1578#1587#1575#1576' '#1606#1608#1593' 1'
      FieldName = 'RecallFormInfoID1'
      Size = 150
    end
    object qryItemRecallFormInfoID2: TStringField
      DisplayLabel = #1603#1583#1607#1575#1610' '#1602#1575#1576#1604' '#1575#1581#1578#1587#1575#1576' '#1606#1608#1593' 2'
      FieldName = 'RecallFormInfoID2'
      Size = 150
    end
    object qryItemRecalKindClock: TWordField
      DisplayLabel = #1606#1608#1593' '#1601#1585#1575#1582#1608#1575#1606#1610' '#1575#1586' '#1603#1575#1585#1578' '#1587#1575#1593#1578
      FieldName = 'RecalKindClock'
      OnGetText = qryItemRecalKindClockGetText
    end
    object qryItemWordDocuments: TStringField
      DisplayLabel = #1606#1575#1605' '#1601#1575#1610#1604' Word'
      FieldName = 'WordDocuments'
      Size = 150
    end
  end
  object qryMaster: TADOQuery
    Connection = DMF.adcSalary
    CursorType = ctStatic
    AfterScroll = qryMasterAfterScroll
    Parameters = <
      item
        Name = 'RecallFormTypes'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     FormInfoID, FormType, InfoID, InfoName_L1, InfoName_L' +
        '2'
      'FROM         Pay.FormsInfo'
      'WHERE     (FormType = :RecallFormTypes)')
    Left = 472
    Top = 5
    object qryMasterFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qryMasterFormType: TIntegerField
      FieldName = 'FormType'
    end
    object qryMasterInfoID: TIntegerField
      FieldName = 'InfoID'
    end
    object qryMasterInfoName_L1: TStringField
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object qryMasterInfoName_L2: TStringField
      FieldName = 'InfoName_L2'
      Size = 255
    end
  end
  object SrcMaster: TDataSource
    DataSet = qryMaster
    Left = 432
    Top = 5
  end
  object SrcItem: TDataSource
    DataSet = qryItem
    Left = 528
    Top = 133
  end
  object qryInitForm: TADOQuery
    Connection = DMF.adcSalary
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'FormType'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 6
      end>
    SQL.Strings = (
      'select * FROM Pay.FormTypes'
      'where  FormType=:FormType')
    Left = 616
    Top = 13
    object qryInitFormFormType: TSmallintField
      FieldName = 'FormType'
    end
    object qryInitFormFormCaption_L1: TStringField
      FieldName = 'FormCaption_L1'
      Size = 150
    end
    object qryInitFormFormCaption_L2: TStringField
      FieldName = 'FormCaption_L2'
      Size = 150
    end
    object qryInitFormDurationDayActive: TWordField
      FieldName = 'DurationDayActive'
    end
    object qryInitFormDurationTimeActive: TWordField
      FieldName = 'DurationTimeActive'
    end
    object qryInitFormExemptPersonActive: TWordField
      FieldName = 'ExemptPersonActive'
    end
    object qryInitFormSalaryEffectKind: TWordField
      FieldName = 'SalaryEffectKind'
    end
    object qryInitFormKargozinyEffectKind: TWordField
      FieldName = 'KargozinyEffectKind'
    end
    object qryInitFormRecalSalaryTypes: TStringField
      FieldName = 'RecalSalaryTypes'
      Size = 250
    end
    object qryInitFormSalaryKind: TWordField
      FieldName = 'SalaryKind'
    end
    object qryInitFormCoefficientActive: TWordField
      FieldName = 'CoefficientActive'
    end
    object qryInitFormAmountActive: TWordField
      FieldName = 'AmountActive'
    end
    object qryInitFormAmount2Active: TWordField
      FieldName = 'Amount2Active'
    end
    object qryInitFormRecallFormTypes: TSmallintField
      FieldName = 'RecallFormTypes'
    end
    object qryInitFormUseEndMounthKind: TWordField
      FieldName = 'UseEndMounthKind'
    end
    object qryInitFormAidInfoNo1Active: TWordField
      FieldName = 'AidInfoNo1Active'
    end
    object qryInitFormAidInfoDate1Active: TWordField
      FieldName = 'AidInfoDate1Active'
    end
    object qryInitFormAidInfo1Caption: TStringField
      FieldName = 'AidInfo1Caption'
      Size = 50
    end
    object qryInitFormAidInfoNo2Active: TWordField
      FieldName = 'AidInfoNo2Active'
    end
    object qryInitFormAidInfoDate2Active: TWordField
      FieldName = 'AidInfoDate2Active'
    end
    object qryInitFormAidInfo2Caption: TStringField
      FieldName = 'AidInfo2Caption'
      Size = 50
    end
    object qryInitFormTopicCodeKind: TWordField
      FieldName = 'TopicCodeKind'
    end
    object qryInitFormDetailCodeKind: TWordField
      FieldName = 'DetailCodeKind'
    end
    object qryInitFormCTopicCodeKind: TWordField
      FieldName = 'CTopicCodeKind'
    end
    object qryInitFormCTopicCode2Kind: TWordField
      FieldName = 'CTopicCode2Kind'
    end
    object qryInitFormDisplayFormType: TWordField
      FieldName = 'DisplayFormType'
    end
    object qryInitFormReportFileName1: TStringField
      FieldName = 'ReportFileName1'
      Size = 50
    end
    object qryInitFormReportFileName2: TStringField
      FieldName = 'ReportFileName2'
      Size = 50
    end
    object qryInitFormReportFileName3: TStringField
      FieldName = 'ReportFileName3'
      Size = 50
    end
    object qryInitFormReportFileName4: TStringField
      FieldName = 'ReportFileName4'
      Size = 50
    end
    object qryInitFormNote_L1: TMemoField
      FieldName = 'Note_L1'
      BlobType = ftMemo
    end
    object qryInitFormNote_L2: TMemoField
      FieldName = 'Note_L2'
      BlobType = ftMemo
    end
    object qryInitFormWordDocumentsActive: TWordField
      FieldName = 'WordDocumentsActive'
    end
    object qryInitFormFunctionShow: TWordField
      FieldName = 'FunctionShow'
    end
    object qryInitFormRecalKindClock: TWordField
      FieldName = 'RecalKindClock'
    end
  end
end

inherited FormName_FormInfo_1F: TFormName_FormInfo_1F
  Left = 180
  Top = 101
  Caption = 'FormName_FormInfo_1F'
  OldCreateOrder = True
  OnCreate = FormCreate
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
    object okPanel: TPanel
      Left = 365
      Top = 1
      Width = 165
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      DesignSize = (
        165
        39)
      object BitBtn7: TBitBtn
        Left = 88
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetPost1
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1610#1610#1583
        TabOrder = 0
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00318C2900007B00004A9C4200FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00009C100000AD0800007B0000BDBD5A00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000084420000AD080000B51000008C00007B841800FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000084000000BD180000B51000009400007B6300008CB5
          7300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00318C290000A5180000B5100000FF420000BD1800BD9C00000073
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00009C100000A5390000FF420000FF420000AD080000BD1000007B
          00006BAD5A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000B5210000E7420000FF4200318C2900318C2900BDBD1000008C
          000018841800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000084080000940800FF00FF00FF00FF00BD9C000000B5
          1000007B00008CB57300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B84210000B5
          10000084000000730000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00009C
          080000B51000007B000000A55A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00318C
          290000B5100010941800BD9C2100FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF001094290039DE8C00BD9C18006BAD5A00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00189C210000CE210000A55A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF008CB57300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      end
      object BitBtn8: TBitBtn
        Left = 8
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetCancel1
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1589#1585#1575#1601
        TabOrder = 1
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00424A
          4A00424A4A00424A4A0000424A00424A4A00424A4A00424A4A00005A4A00424A
          4A00424A4A00424A4A00005A4A00424A4A00424A4A00FF00FF00FF00FF006B73
          6B00FFFFFF00FFFFFF0000E7FF00FFFFFF00FFFFFF00FFFFFF00BDFFFF00FFFF
          FF00FFFFFF00FFFFFF00BDFFFF00FFFFFF006B736B00FF00FF00FF00FF006B73
          6B00FFFFFF000010AD0000844A00FF9C4A00FF9C4A00FF9C4A00BD9C4A00FF9C
          4A00FF9C4A00FF9C4A00BD9C4A000018CE006B736B00FF00FF00FF00FF006B73
          6B00FFFFFF000018CE000000AD00FFFFFF00FF9C4A00FFFFFF0000E7FF00FF9C
          4A00FFFFFF00FFFFFF000000CE00FFFFFF006B736B00FF00FF00FF00FF008484
          7300FFFFFF00FF9C4A000000CE000010AD00FF9C4A00FFFFFF00BDFFFF00FF9C
          4A000010AD000018CE00BD9C4A00FFFFFF0084847300FF00FF00FF00FF008484
          7300FFFFFF00FF9C4A0000844A000018CE000010AD00FF9C4A00BD9C4A000010
          AD000018CE00FF9C4A00BD9C4A00FFFFFF0084847300FF00FF00FF00FF008484
          7300FFFFFF00F78C390000E7FF00FFFFFF000018CE000018DE00BD18AD000018
          DE00FFFFFF00FFFFFF00BD9C3900FFFFFF0084847300FF00FF00FF00FF008C8C
          8C00F7F7F700F78C390000E7FF00FFFFFF00F78C39000018DE00BD18DE000018
          CE000010AD00FFFFFF00BD9C3900F7F7F7008C8C8C00FF00FF00FF00FF008C8C
          8C00F7F7F700E784080000840800E78408000018CE000018E700BD9C0800E784
          08000018F7000010AD00BD9C0800F7F7F7008C8C8C00FF00FF00FF00FF009494
          9400E7E7E700E784080000E7FF000018F7000018E700FFFFFF00BDFFFF00E784
          0800FFFFFF000018F700BD9C0800E7E7E70094949400FF00FF00FF00FF009494
          9400E7E7E700E78408000000FF000018E700E7840800FFFFFF00BDFFFF00E784
          0800FFFFFF00FFFFFF00BD18F700E7E7E70094949400FF00FF00FF00FF009C9C
          9C00CED6CE000018F7000000F700E7840800E7840800E7840800FF9C0800E784
          0800E7840800E7840800008408000018F7009C9C9C00FF00FF00FF00FF009C9C
          9C00CED6CE000018F70000C6CE00CED6CE00CED6CE00CED6CE0000DECE00CED6
          CE00CED6CE00CED6CE0000C6CE00CED6CE009C9C9C00FF00FF00FF00FF009C9C
          9C009C9C9C009C9C9C0000849C009C9C9C009C9C9C009C9C9C0084849C009C9C
          9C009C9C9C009C9C9C0000849C009C9C9C009C9C9C00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      end
    end
    object BitBtn1: TBitBtn
      Left = 96
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 3
    end
    object BitBtn2: TBitBtn
      Left = 176
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
    end
    object BitBtn6: TBitBtn
      Left = 256
      Top = 8
      Width = 89
      Height = 25
      Action = actSendToExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 5
    end
  end
  inherited Panel2: TPanel
    object Label1: TLabel
      Left = 261
      Top = 24
      Width = 66
      Height = 13
      Caption = #1593#1606#1608#1575#1606' '#1575#1591#1604#1575#1593#1575#1578
    end
    object cmbType: TComboBox
      Left = 24
      Top = 20
      Width = 225
      Height = 21
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 0
      Text = '0'
      OnChange = cmbTypeChange
      Items.Strings = (
        '0'
        '0')
    end
  end
  inherited Panel3: TPanel
    object DBGrid1: TDBGrid
      Tag = 111
      Left = 2
      Top = 2
      Width = 780
      Height = 426
      Align = alClient
      Color = clCream
      DataSource = srcFormInfo
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'InfoID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'InfoName_L1'
          Width = 293
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'InfoName_L2'
          Width = 299
          Visible = True
        end>
    end
  end
  inherited ActionList: TActionList
    Left = 568
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actSendToExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendToExcelExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 600
  end
  object qryFormInfo: TADOQuery
    Connection = DMF.adcSalary
    CursorType = ctStatic
    AfterInsert = qryFormInfoAfterInsert
    AfterPost = qryFormInfoAfterPost
    BeforeDelete = qryFormInfoBeforeDelete
    AfterDelete = qryFormInfoAfterDelete
    Parameters = <
      item
        Name = 'type'
        DataType = ftString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM Pay.FormsInfo'
      'WHERE     (FormType = :Type)'
      'ORDER BY InfoID')
    Left = 56
    Top = 69
    object qryFormInfoID: TIntegerField
      FieldName = 'ID'
    end
    object qryFormInfoFormType: TIntegerField
      FieldName = 'FormType'
      Required = True
    end
    object qryFormInfoInfoID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583
      FieldName = 'InfoID'
      Required = True
    end
    object qryFormInfoInfoName_L1: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1576#1607' ('#1586#1576#1575#1606' 1 '#1576#1585#1606#1575#1605#1607')'
      FieldName = 'InfoName_L1'
      Required = True
      Size = 100
    end
    object qryFormInfoInfoName_L2: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1576#1607' ('#1586#1576#1575#1606' 2 '#1576#1585#1606#1575#1605#1607')'
      FieldName = 'InfoName_L2'
      Size = 100
    end
    object qryFormInfoPrvInfoID: TIntegerField
      FieldName = 'PrvInfoID'
    end
    object qryFormInfoAmount: TBCDField
      FieldName = 'Amount'
      Precision = 19
    end
    object qryFormInfoAmount2: TBCDField
      FieldName = 'Amount2'
      Precision = 19
    end
    object qryFormInfoCoefficient: TFloatField
      FieldName = 'Coefficient'
    end
    object qryFormInfoStandardDays: TFloatField
      FieldName = 'StandardDays'
    end
    object qryFormInfoStandardTimes: TFloatField
      FieldName = 'StandardTimes'
    end
    object qryFormInfoAccTopicCode: TIntegerField
      FieldName = 'AccTopicCode'
    end
    object qryFormInfoAccDetailCode: TIntegerField
      FieldName = 'AccDetailCode'
    end
    object qryFormInfoAccCTopicode: TIntegerField
      FieldName = 'AccCTopicode'
    end
    object qryFormInfoAccCTopicode2: TIntegerField
      FieldName = 'AccCTopicode2'
    end
  end
  object srcFormInfo: TDataSource
    DataSet = qryFormInfo
    OnStateChange = srcFormInfoStateChange
    Left = 48
    Top = 133
  end
  object qryFormType: TADOQuery
    Connection = DMF.adcSalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT     *'
      'FROM Pay.FormTypes'
      'WHERE     (DisplayFormType = 1)')
    Left = 296
    object qryFormTypeFormType: TSmallintField
      FieldName = 'FormType'
    end
    object qryFormTypeFormCaption_L1: TStringField
      FieldName = 'FormCaption_L1'
      Size = 150
    end
    object qryFormTypeFormCaption_L2: TStringField
      FieldName = 'FormCaption_L2'
      Size = 150
    end
    object qryFormTypeDurationDayActive: TWordField
      FieldName = 'DurationDayActive'
    end
    object qryFormTypeDurationTimeActive: TWordField
      FieldName = 'DurationTimeActive'
    end
    object qryFormTypeExemptPersonActive: TWordField
      FieldName = 'ExemptPersonActive'
    end
    object qryFormTypeSalaryEffectKind: TWordField
      FieldName = 'SalaryEffectKind'
    end
    object qryFormTypeKargozinyEffectKind: TWordField
      FieldName = 'KargozinyEffectKind'
    end
    object qryFormTypeRecalSalaryTypes: TStringField
      FieldName = 'RecalSalaryTypes'
      Size = 250
    end
    object qryFormTypeSalaryKind: TWordField
      FieldName = 'SalaryKind'
    end
    object qryFormTypeCoefficientActive: TWordField
      FieldName = 'CoefficientActive'
    end
    object qryFormTypeAmountActive: TWordField
      FieldName = 'AmountActive'
    end
    object qryFormTypeAmount2Active: TWordField
      FieldName = 'Amount2Active'
    end
    object qryFormTypeRecallFormTypes: TSmallintField
      FieldName = 'RecallFormTypes'
    end
    object qryFormTypeUseEndMounthKind: TWordField
      FieldName = 'UseEndMounthKind'
    end
    object qryFormTypeAidInfoNo1Active: TWordField
      FieldName = 'AidInfoNo1Active'
    end
    object qryFormTypeAidInfoDate1Active: TWordField
      FieldName = 'AidInfoDate1Active'
    end
    object qryFormTypeAidInfo1Caption: TStringField
      FieldName = 'AidInfo1Caption'
      Size = 50
    end
    object qryFormTypeAidInfoNo2Active: TWordField
      FieldName = 'AidInfoNo2Active'
    end
    object qryFormTypeAidInfoDate2Active: TWordField
      FieldName = 'AidInfoDate2Active'
    end
    object qryFormTypeAidInfo2Caption: TStringField
      FieldName = 'AidInfo2Caption'
      Size = 50
    end
    object qryFormTypeTopicCodeKind: TWordField
      FieldName = 'TopicCodeKind'
    end
    object qryFormTypeDetailCodeKind: TWordField
      FieldName = 'DetailCodeKind'
    end
    object qryFormTypeCTopicCodeKind: TWordField
      FieldName = 'CTopicCodeKind'
    end
    object qryFormTypeCTopicCode2Kind: TWordField
      FieldName = 'CTopicCode2Kind'
    end
    object qryFormTypeDisplayFormType: TWordField
      FieldName = 'DisplayFormType'
    end
    object qryFormTypeReportFileName1: TStringField
      FieldName = 'ReportFileName1'
      Size = 50
    end
    object qryFormTypeReportFileName2: TStringField
      FieldName = 'ReportFileName2'
      Size = 50
    end
    object qryFormTypeReportFileName3: TStringField
      FieldName = 'ReportFileName3'
      Size = 50
    end
    object qryFormTypeReportFileName4: TStringField
      FieldName = 'ReportFileName4'
      Size = 50
    end
    object qryFormTypeNote_L1: TMemoField
      FieldName = 'Note_L1'
      BlobType = ftMemo
    end
    object qryFormTypeNote_L2: TMemoField
      FieldName = 'Note_L2'
      BlobType = ftMemo
    end
    object qryFormTypeWordDocumentsActive: TWordField
      FieldName = 'WordDocumentsActive'
    end
    object qryFormTypeFunctionShow: TWordField
      FieldName = 'FunctionShow'
    end
    object qryFormTypeRecalKindClock: TWordField
      FieldName = 'RecalKindClock'
    end
  end
end

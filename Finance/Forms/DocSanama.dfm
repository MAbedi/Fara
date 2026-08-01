inherited DocSanamaF: TDocSanamaF
  Caption = 'Sanama Document'
  ClientHeight = 400
  ClientWidth = 686
  ExplicitWidth = 702
  ExplicitHeight = 439
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 343
    Width = 678
    ExplicitTop = 219
    ExplicitWidth = 333
  end
  object lblTopicCode: TLabel [1]
    Left = 640
    Top = 61
    Width = 38
    Height = 13
    Caption = #1705#1583' '#1605#1593#1740#1606
  end
  object lblTopicName: TLabel [2]
    Left = 515
    Top = 61
    Width = 24
    Height = 13
    Caption = #1605#1593#1740#1606
  end
  inherited Panel1: TPanel
    Width = 686
    Height = 49
    ExplicitWidth = 694
    ExplicitHeight = 49
    inherited Image1: TImage
      Left = 640
      ExplicitLeft = 279
    end
    inherited lblTopic0: TLabel
      Left = 592
      ExplicitLeft = 231
    end
    inherited lblTopic1: TLabel
      Left = 571
      ExplicitLeft = 210
    end
  end
  inherited pnlDown: TPanel
    Top = 363
    Width = 686
    ExplicitTop = 375
    ExplicitWidth = 694
    inherited btnClose: TBitBtn
      ModalResult = 2
    end
    object BitBtn1: TBitBtn
      Left = 603
      Top = 6
      Width = 75
      Height = 25
      Caption = #1578#1575#1740#1740#1583
      ModalResult = 1
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      Left = 523
      Top = 6
      Width = 75
      Height = 25
      Caption = #1575#1606#1589#1585#1575#1601
      ModalResult = 2
      TabOrder = 2
    end
  end
  object edtTopic: TEdit [5]
    Left = 545
    Top = 58
    Width = 89
    Height = 21
    Color = clInfoBk
    ReadOnly = True
    TabOrder = 2
  end
  object grdSanama: TDBGrid [6]
    Left = 8
    Top = 85
    Width = 680
    Height = 263
    Color = clCream
    DataSource = srcSanama
    TabOrder = 3
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'FormCaption'
        ReadOnly = True
        Width = 326
        Visible = True
      end
      item
        Expanded = False
        FieldName = '_FormInfoName'
        Width = 314
        Visible = True
      end>
  end
  inherited ActionList1: TActionList
    Top = 0
    inherited DataSetPost1: TDataSetPost
      ShortCut = 0
    end
  end
  object qrySanama: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctOpenForwardOnly
    LockType = ltBatchOptimistic
    AfterScroll = qrySanamaAfterScroll
    Parameters = <
      item
        Name = 'TopicCode'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT        sanama.TopicCode, sanama.FormType, FormTypes.FormC' +
        'aption, sanama.Kind, sanama.DefaultValue'
      'FROM            Acc.TopicSanama AS sanama INNER JOIN'
      
        '                         Acc.FormTypes AS FormTypes ON sanama.Fo' +
        'rmType = FormTypes.FormType'
      
        'WHERE        (sanama.Kind = 2)  and  (sanama.TopicCode = :TopicC' +
        'ode)')
    Left = 112
    object qrySanamaTopicCode: TLargeintField
      FieldName = 'TopicCode'
    end
    object qrySanamaFormType: TIntegerField
      FieldName = 'FormType'
    end
    object qrySanamaFormCaption: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1575#1591#1604#1575#1593#1575#1578
      FieldName = 'FormCaption'
      Size = 80
    end
    object qrySanamaKind: TWordField
      FieldName = 'Kind'
    end
    object qrySanamaDefaultValue: TIntegerField
      FieldName = 'DefaultValue'
    end
    object qrySanama_FormInfoName: TStringField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1662#1740#1588' '#1601#1585#1590
      FieldKind = fkLookup
      FieldName = '_FormInfoName'
      LookupDataSet = qryFormsInfo
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'DefaultValue'
      Size = 50
      Lookup = True
    end
  end
  object srcSanama: TDataSource
    DataSet = qrySanama
    Left = 176
  end
  object qryFormsInfo: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT     FormInfoID, InfoName_L1, FormType'
      'FROM         acc.FormsInfo'
      '')
    Left = 277
    Top = 12
    object qryFormsInfoFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qryFormsInfoInfoName_L1: TStringField
      FieldName = 'InfoName_L1'
      Size = 150
    end
    object qryFormsInfoFormType: TWordField
      FieldName = 'FormType'
    end
  end
end

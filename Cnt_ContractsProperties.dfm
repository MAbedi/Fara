inherited Cnt_ContractsPropertiesF: TCnt_ContractsPropertiesF
  Left = 388
  Top = 225
  ActiveControl = DBGrid1
  Caption = 'Cnt_ContractsProperties'
  ClientHeight = 458
  ClientWidth = 693
  OnResize = FormResize
  ExplicitWidth = 709
  ExplicitHeight = 497
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 401
    Width = 685
    Visible = False
    ExplicitTop = 413
    ExplicitWidth = 701
  end
  inherited Panel1: TPanel
    Width = 693
    TabOrder = 1
    ExplicitWidth = 701
    inherited Image1: TImage
      Left = 647
      ExplicitLeft = 647
    end
    inherited lblTopic0: TLabel
      Left = 575
      ExplicitLeft = 575
    end
    inherited lblTopic1: TLabel
      Left = 554
      ExplicitLeft = 554
    end
  end
  inherited pnlDown: TPanel
    Top = 421
    Width = 693
    TabOrder = 2
    ExplicitTop = 433
    ExplicitWidth = 701
    inherited btnClose: TBitBtn
      ModalResult = 11
    end
    object BitBtn7: TBitBtn
      Left = 616
      Top = 6
      Width = 75
      Height = 25
      Action = actOk
      Anchors = [akTop, akRight]
      Caption = #1578#1571#1610#1610#1600#1600#1600#1583
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
      ModalResult = 1
      TabOrder = 1
    end
  end
  object Panel3: TPanel [3]
    Left = 0
    Top = 73
    Width = 693
    Height = 348
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitWidth = 701
    ExplicitHeight = 360
    object DBGrid1: TDBGrid
      Tag = 111
      Left = 2
      Top = 2
      Width = 697
      Height = 260
      Align = alClient
      Color = clCream
      DataSource = srcContractsProperties
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnEditButtonClick = DBGrid1EditButtonClick
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = '_Name'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PropertiesEntity'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PropertiesNote'
          Width = 147
          Visible = True
        end>
    end
    object SumGrid1: TSumGrid
      Left = 0
      Top = 338
      Width = 697
      TabStop = False
      Active = False
      Enable_Controls = True
      MasterGrid = DBGrid1
      AutoRefresh = False
      FieldsName = 'PropertiesEntity;'
    end
    object grp1: TGroupBox
      Left = 2
      Top = 262
      Width = 697
      Height = 76
      Align = alBottom
      Caption = ' '#1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610' '
      TabOrder = 2
      object dbmmoPropertiesNote: TDBMemo
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 687
        Height = 53
        Align = alClient
        DataField = 'PropertiesNote'
        DataSource = srcContractsProperties
        TabOrder = 0
        ExplicitHeight = 36
      end
    end
  end
  inherited ActionList1: TActionList
    inherited DataSetPost1: TDataSetPost
      ShortCut = 0
      DataSource = srcContractsProperties
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcContractsProperties
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      ShortCut = 113
      DataSource = srcContractsProperties
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
      DataSource = srcContractsProperties
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      ShortCut = 115
      DataSource = srcContractsProperties
    end
    object actPrint: TAction
      Category = 'Dataset'
      Caption = #1670#1575#1662
      ShortCut = 118
    end
    object DataSetDelete: TAction
      Category = 'Dataset'
      Caption = #1581#1584#1601
      OnExecute = DataSetDeleteExecute
    end
    object actOk: TAction
      Category = 'Dataset'
      Caption = #1578#1571#1610#1610#1600#1600#1600#1583
      ShortCut = 119
      OnExecute = actOkExecute
    end
  end
  object qryLookUps: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'FormItemKindSerial'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT        LookUpID, Code, Name'
      'FROM            LookUps'
      'WHERE        (Kind = :FormItemKindSerial )')
    Left = 600
    Top = 140
  end
  object srcLookUps: TDataSource
    Left = 616
    Top = 224
  end
  object qryContractsProperties: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryContractsPropertiesAfterInsert
    BeforePost = qryContractsPropertiesBeforePost
    AfterPost = qryContractsPropertiesAfterPost
    AfterCancel = qryContractsPropertiesAfterCancel
    Parameters = <
      item
        Name = 'CaseNo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      
        'SELECT        PropertiesID, CaseNo, LookUpID, PropertiesEntity, ' +
        'PropertiesNote'
      'FROM            Cnt.ContractsProperties'
      'WHERE        (CaseNo = :CaseNo)')
    Left = 216
    Top = 129
    object qryContractsPropertiesPropertiesID: TAutoIncField
      FieldName = 'PropertiesID'
      ReadOnly = True
    end
    object qryContractsPropertiesCaseNo: TIntegerField
      FieldName = 'CaseNo'
    end
    object qryContractsPropertiesLookUpID: TIntegerField
      FieldName = 'LookUpID'
    end
    object qryContractsProperties_Name: TStringField
      DisplayLabel = #1606#1608#1593
      FieldKind = fkLookup
      FieldName = '_Name'
      LookupDataSet = qryLookUps
      LookupKeyFields = 'LookUpID'
      LookupResultField = 'Name'
      KeyFields = 'LookUpID'
      Lookup = True
    end
    object qryContractsPropertiesPropertiesEntity: TFMTBCDField
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'PropertiesEntity'
      Precision = 20
      Size = 4
    end
    object qryContractsPropertiesPropertiesNote: TStringField
      DisplayLabel = #1578#1608#1590#1740#1581#1575#1578
      FieldName = 'PropertiesNote'
      Size = 200
    end
  end
  object srcContractsProperties: TDataSource
    DataSet = qryContractsProperties
    OnStateChange = srcContractsPropertiesStateChange
    Left = 192
    Top = 224
  end
end

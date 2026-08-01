inherited PortionInDocF: TPortionInDocF
  Left = 164
  Top = 176
  Caption = #1578#1587#1607#1610#1605' '#1607#1586#1610#1606#1607
  ClientHeight = 523
  ClientWidth = 782
  OnResize = FormResize
  ExplicitWidth = 798
  ExplicitHeight = 562
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 466
    Width = 774
    ExplicitTop = 478
    ExplicitWidth = 790
  end
  object Label6: TLabel [1]
    Left = 270
    Top = 249
    Width = 57
    Height = 13
    Caption = 'CTopicCode'
  end
  inherited Panel1: TPanel
    Width = 782
    ExplicitWidth = 790
    inherited Image1: TImage
      Left = 736
      ExplicitLeft = 736
    end
    inherited lblTopic0: TLabel
      Left = 648
      Width = 68
      Caption = #1578#1587#1607#1610#1605' '#1607#1586#1610#1606#1607
      ExplicitLeft = 648
      ExplicitWidth = 68
    end
    inherited lblTopic1: TLabel
      Left = 643
      Visible = False
      ExplicitLeft = 643
    end
    object RadioGroup1: TRadioGroup
      Left = 14
      Top = 28
      Width = 185
      Height = 42
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #1575#1604#1711#1608#1610' 1'
        #1575#1604#1711#1608#1610' 2')
      TabOrder = 0
    end
  end
  inherited pnlDown: TPanel
    Top = 486
    Width = 782
    ExplicitTop = 498
    ExplicitWidth = 790
    object btnCal: TBitBtn
      Left = 708
      Top = 6
      Width = 75
      Height = 25
      Action = actCal
      Caption = #1605#1581#1575#1587#1576#1607
      TabOrder = 1
    end
    object btnSoudor: TBitBtn
      Left = 628
      Top = 6
      Width = 75
      Height = 25
      Action = actSoudor
      Caption = #1589#1583#1608#1585' '#1587#1606#1583
      TabOrder = 2
    end
  end
  object Panel2: TPanel [4]
    Left = 0
    Top = 73
    Width = 782
    Height = 75
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 790
    object Label1: TLabel
      Left = 671
      Top = 6
      Width = 92
      Height = 13
      Alignment = taRightJustify
      Caption = #1605#1576#1575#1606#1610' '#1578#1587#1607#1610#1605' '#1607#1586#1610#1606#1607
    end
    object Label2: TLabel
      Left = 672
      Top = 28
      Width = 78
      Height = 13
      Alignment = taRightJustify
      Caption = #1605#1576#1604#1594' '#1602#1575#1576#1604' '#1578#1587#1607#1610#1605
    end
    object Label3: TLabel
      Left = 672
      Top = 53
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = #1603#1583' '#1605#1593#1740#1606
    end
    object SpeedButton1: TSpeedButton
      Left = 558
      Top = 48
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = SpeedButton1Click
    end
    object Label4: TLabel
      Left = 498
      Top = 53
      Width = 51
      Height = 13
      Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610
    end
    object Label5: TLabel
      Left = 231
      Top = 6
      Width = 62
      Height = 13
      Alignment = taRightJustify
      Caption = #1605#1602#1591#1593' '#1578#1587#1607#1610#1605
    end
    object SpeedButton2: TSpeedButton
      Left = 385
      Top = 48
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = SpeedButton2Click
    end
    object cmbBasic: TComboBox
      Left = 329
      Top = 2
      Width = 336
      Height = 21
      Style = csDropDownList
      TabOrder = 0
    end
    object edtValue: TEdit
      Left = 490
      Top = 24
      Width = 175
      Height = 21
      Color = 13236955
      TabOrder = 2
    end
    object edtTopicCode: TEdit
      Left = 583
      Top = 49
      Width = 83
      Height = 21
      TabOrder = 3
      OnKeyPress = edtTopicCodeKeyPress
    end
    object edtDetail: TEdit
      Left = 409
      Top = 49
      Width = 83
      Height = 21
      TabOrder = 4
      OnKeyPress = edtDetailKeyPress
    end
    object cmbLevelPortion: TComboBox
      Left = 35
      Top = 2
      Width = 189
      Height = 21
      Style = csDropDownList
      TabOrder = 1
    end
    object edtCaption: TEdit
      Left = 35
      Top = 49
      Width = 346
      Height = 21
      Color = clBtnFace
      TabOrder = 5
    end
  end
  object DBGrid2: TDBGrid [5]
    Left = 0
    Top = 148
    Width = 782
    Height = 318
    Align = alClient
    Color = clCream
    DataSource = srcDetailPortion
    ImeMode = imChinese
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CenterTopics2'
        Width = 29
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CTopicCode'
        Width = 122
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'detailCode'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = '_TopicCode'
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ExpName_L1'
        Width = 114
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CofficientItem'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'amount'
        Visible = True
      end>
  end
  object SumGrid1: TSumGrid [6]
    Left = 0
    Top = 466
    Width = 782
    Active = False
    Enable_Controls = True
    MasterGrid = DBGrid2
    FieldsName = 'amount;'
  end
  inherited ActionList1: TActionList
    Left = 384
    Top = 8
    object actCal: TAction
      Caption = #1605#1581#1575#1587#1576#1607
      OnExecute = actCalExecute
    end
    object actSoudor: TAction
      Caption = #1589#1583#1608#1585' '#1587#1606#1583
      Enabled = False
      OnExecute = actSoudorExecute
    end
  end
  object qryDetailPortion: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'detail'
        DataType = ftString
        Size = 1
        Value = '1'
      end
      item
        Name = 'remain'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'subFormInfoID'
        DataType = ftString
        Size = 1
        Value = '1'
      end
      item
        Name = 'subPortionCunt'
        DataType = ftString
        Size = 1
        Value = '1'
      end
      item
        Name = 'FormInfoID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'PortionCunt'
        DataType = ftString
        Size = 1
        Value = '1'
      end>
    SQL.Strings = (
      'SELECT  :detail as detailCode,'
      
        'dbo.PortionTable.FormInfoID, dbo.PortionTable.CTopicCode, ISNULL' +
        '(dbo.CenterTopics2.CTopicCode2, 0) AS CenterTopics2,'
      
        '        ISNULL(dbo.PortionTableItems.CofficientItem, dbo.Portion' +
        'Table.Cofficient) AS CofficientItem, dbo.CenterTopics.CTopicName' +
        '_L1,'
      
        '        dbo.CenterTopics2.CTopicName2_L1, dbo.CenterTopics.CTopi' +
        'cName_L1 + '#39' _ '#39' + ISNULL(dbo.CenterTopics2.CTopicName2_L1, '#39#39') ' +
        'AS ExpName_L1'
      
        '        , round ( :remain * ISNULL(dbo.PortionTableItems.Coffici' +
        'entItem, dbo.PortionTable.Cofficient)/fun.sumCoff ,0 )as amount'
      'FROM  dbo.CenterTopics RIGHT OUTER JOIN'
      '      dbo.PortionTable LEFT OUTER JOIN'
      '     ( select dbo.PortionTable.FormInfoID ,'
      
        '              SUM(CASE WHEN (dbo.PortionTable.FormInfoID =:subFo' +
        'rmInfoID ) THEN'
      
        '              ISNULL(CofficientItem, ISNULL(Cofficient,1)) ELSE ' +
        '- 1 END) as sumCoff'
      '       FROM   dbo.PortionTable left JOIN'
      
        '              dbo.PortionTableItems ON dbo.PortionTable.Cofficie' +
        'ntID = dbo.PortionTableItems.CofficientID INNER JOIN'
      
        '              dbo.FormsInfo ON dbo.PortionTable.FormInfoID = dbo' +
        '.FormsInfo.FormInfoID'
      '      where  dbo.PortionTable.PortionCunt=:subPortionCunt'
      '       group by dbo.PortionTable.FormInfoID'
      '     ) fun ON dbo.PortionTable.FormInfoID = fun.FormInfoID ON'
      
        '         dbo.CenterTopics.CTopicCode = dbo.PortionTable.CTopicCo' +
        'de LEFT OUTER JOIN'
      '         dbo.CenterTopics2 RIGHT OUTER JOIN'
      
        '         dbo.PortionTableItems ON dbo.CenterTopics2.CTopicCode2 ' +
        '= dbo.PortionTableItems.CTopicCode2 ON'
      
        '         dbo.PortionTable.CofficientID = dbo.PortionTableItems.C' +
        'officientID'
      ''
      'WHERE    (dbo.PortionTable.FormInfoID = :FormInfoID) and'
      '          dbo.PortionTable.PortionCunt= :PortionCunt'
      ''
      
        'GROUP BY dbo.PortionTable.FormInfoID, dbo.PortionTable.CTopicCod' +
        'e, ISNULL(dbo.CenterTopics2.CTopicCode2, 0),'
      
        '         dbo.PortionTableItems.CofficientItem, dbo.PortionTable.' +
        'Cofficient, dbo.CenterTopics.CTopicName_L1, dbo.CenterTopics2.CT' +
        'opicName2_L1,'
      
        '         dbo.CenterTopics.CTopicName_L1 + '#39' _ '#39' + ISNULL(dbo.Cen' +
        'terTopics2.CTopicName2_L1, '#39#39'),fun.sumCoff,dbo.PortionTable.Port' +
        'ionCunt'
      '')
    Left = 131
    Top = 244
    object qryDetailPortionFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qryDetailPortionCTopicCode: TIntegerField
      Tag = 3
      DisplayLabel = #1605'.'#1607'1'
      FieldName = 'CTopicCode'
    end
    object qryDetailPortion_TopicCode: TIntegerField
      Tag = 3
      DisplayLabel = #1581#1587#1575#1576
      FieldKind = fkLookup
      FieldName = '_TopicCode'
      LookupDataSet = qryFindTopicCode
      LookupKeyFields = 'CTopicCode'
      LookupResultField = 'PortionTopicCode'
      KeyFields = 'CTopicCode'
      Lookup = True
    end
    object qryDetailPortionCenterTopics2: TIntegerField
      Tag = 3
      DisplayLabel = #1605'.'#1607'2'
      FieldName = 'CenterTopics2'
      ReadOnly = True
    end
    object qryDetailPortion_TopicName: TStringField
      Tag = 3
      FieldKind = fkLookup
      FieldName = '_TopicName'
      LookupDataSet = qryFindTopicCode
      LookupKeyFields = 'CTopicCode'
      LookupResultField = 'MoeenName_L1'
      KeyFields = 'CTopicCode'
      Size = 100
      Lookup = True
    end
    object qryDetailPortionCTopicName_L1: TStringField
      Tag = 3
      FieldName = 'CTopicName_L1'
      Size = 120
    end
    object qryDetailPortionCTopicName2_L1: TStringField
      Tag = 3
      FieldName = 'CTopicName2_L1'
      Size = 120
    end
    object qryDetailPortionExpName_L1: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1605#1585#1603#1586#1607#1586#1610#1606#1607' (1'#1608'2)'
      FieldName = 'ExpName_L1'
      ReadOnly = True
      Size = 242
    end
    object qryDetailPortionCofficientItem: TFloatField
      Tag = 3
      DisplayLabel = #1590#1585#1610#1576'/'#1605#1602#1583#1575#1585
      FieldName = 'CofficientItem'
    end
    object qryDetailPortionamount: TFloatField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'amount'
      currency = True
    end
    object qryDetailPortiondetailCode: TStringField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610
      FieldName = 'detailCode'
      ReadOnly = True
      Size = 15
    end
  end
  object srcDetailPortion: TDataSource
    DataSet = qryDetailPortion
    Left = 34
    Top = 231
  end
  object qryDoc: TADOQuery
    Tag = 15
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from documents'
      ''
      '')
    Left = 235
    Top = 18
  end
  object qryFindTopicCode: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'TopicCode'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT    dbo.CenterTopicRange.CTopicCode, dbo.PortionTopicCode.' +
        'PortionTopicCode, dbo.Categories.MoeenName_L1'
      'FROM      CenterTopicRange INNER JOIN'
      
        '          PortionTopicCode ON CenterTopicRange.TopicCode = Porti' +
        'onTopicCode.PortionTopicCode LEFT OUTER JOIN'
      
        '          Categories ON PortionTopicCode.PortionTopicCode = Cate' +
        'gories.TopicCode'
      'WHERE     (dbo.PortionTopicCode.TopicCode = :TopicCode )')
    Left = 160
    Top = 160
  end
end

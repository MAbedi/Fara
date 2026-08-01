object frmVajheNaghd: TfrmVajheNaghd
  Left = 0
  Top = 0
  Width = 688
  Height = 308
  BiDiMode = bdRightToLeft
  ParentBiDiMode = False
  TabOrder = 0
  object GrdVajheNaghd: TDBGrid
    Tag = 111
    Left = 0
    Top = 0
    Width = 688
    Height = 279
    Align = alClient
    Color = clCream
    DataSource = srcFormsFr
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnEditButtonClick = GrdVajheNaghdEditButtonClick
    OnKeyPress = GrdVajheNaghdKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'FormNumber'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FormDate'
        Width = 75
        Visible = True
      end
      item
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'CustomerID1'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = '_CustomerName'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Amount'
        Width = 107
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FomNote'
        Width = 103
        Visible = True
      end>
  end
  object PnlVajheNaghd: TPanel
    Left = 0
    Top = 279
    Width = 688
    Height = 29
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object newPanelVajheNaghd: TPanel
      Left = 448
      Top = 0
      Width = 240
      Height = 29
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object BitBtn15: TBitBtn
        Left = 160
        Top = 3
        Width = 75
        Height = 25
        Action = DatasetInsert1
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn16: TBitBtn
        Left = 83
        Top = 3
        Width = 75
        Height = 25
        Action = DatasetEdit1
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn17: TBitBtn
        Left = 5
        Top = 3
        Width = 75
        Height = 25
        Action = DatasetDelete1
        Caption = #1581#1584#1601
        TabOrder = 2
      end
    end
    object okPanelVajheNaghd: TPanel
      Left = 279
      Top = 0
      Width = 169
      Height = 29
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        169
        29)
      object BitBtn18: TBitBtn
        Left = 10
        Top = 4
        Width = 75
        Height = 25
        Action = DatasetCancel1
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1589#1585#1575#1601
        TabOrder = 1
      end
      object BitBtn19: TBitBtn
        Left = 87
        Top = 4
        Width = 75
        Height = 25
        Action = DatasetPost1
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1610#1610#1583
        TabOrder = 0
      end
    end
    object BtnAccVajh: TBitBtn
      Left = 226
      Top = 0
      Width = 92
      Height = 29
      Align = alLeft
      Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1583#1575#1585#1610
      TabOrder = 2
      OnClick = BtnAccVajhClick
    end
    object BitBtn1: TBitBtn
      Left = 150
      Top = 0
      Width = 76
      Height = 29
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      TabOrder = 3
      OnClick = BitBtn1Click
    end
    object BitBtn12: TBitBtn
      Left = 75
      Top = 0
      Width = 75
      Height = 29
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
      OnClick = BitBtn12Click
    end
    object BitBtn9: TBitBtn
      Left = 0
      Top = 0
      Width = 75
      Height = 29
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006A00
        00006A0000006A000000FF00FF006A0000006A0000006A000000FF00FF00FF00
        FF00FF00FF00FF00FF0000580300FF00FF00FF00FF00FF00FF00FF00FF006A6A
        6A006A000000FF00FF00FF00FF00FF00FF00980000006A6A6A00FF00FF00FF00
        FF00FF00FF00005803006AFF6A0000580300FF00FF00FF00FF00FF00FF00FF00
        FF006A6A6A006A0000006A0000006A0000006A000000FF00FF00FF00FF00FF00
        FF00FF00FF006AFF6A006AB650000084000000580300FF00FF00FF00FF00FF00
        FF00FF00FF006A000000FF00FF00980000006A000000FF00FF00FF00FF00FF00
        FF00FF00FF006AFF6A006AB650000084000000580300FF00FF00FF00FF00FF00
        FF00FF00FF00980000006A0000006A000000FF00FF00FF00FF00FF00FF000058
        0300005803000058030000580300005803000058030000580300FF00FF00FF00
        FF00FF00FF006A6A6A006A0000006A6A6A00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0098000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF000000
        6A0000006A0000006A0000006A0000006A0000006A00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF000000
        6A0000006A00FF00FF00FF00FF00FF00FF000000B600FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF006A6A6A0000006A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000006A0000006A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF006A6A6A0000006A00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF000000
        6A0000006A00FF00FF00FF00FF0000006A0000006A00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF001100
        7B0011007B0011007B0011007B0011007B0011007B00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00}
      TabOrder = 5
      OnClick = BitBtn9Click
    end
  end
  object srcFormsFr: TDataSource
    DataSet = qryFormsFr
    OnStateChange = srcFormsFrStateChange
    Left = 464
    Top = 72
  end
  object qryCustomer: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      #13'SELECT    dbo.Customers.CustID, dbo.Customers.CustName'
      'FROM       dbo.Customers LEFT OUTER JOIN'
      
        '                  dbo.CustomersGroup ON dbo.Customers.CustomerGr' +
        'pID = '
      '                  dbo.CustomersGroup.CustomerGrpID')
    Left = 488
    Top = 144
  end
  object qryFormsFr: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    BeforeInsert = qryFormsFrBeforeInsert
    AfterInsert = qryFormsFrAfterInsert
    BeforeEdit = qryFormsFrBeforeEdit
    AfterEdit = qryFormsFrAfterEdit
    BeforePost = qryFormsFrBeforePost
    BeforeDelete = qryFormsFrBeforeDelete
    AfterDelete = qryFormsFrAfterDelete
    Parameters = <
      item
        Name = 'FormType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'ReciptID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'YearID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ServerID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM         Forms'
      'where  (FormType= :FormType ) '
      'and(ReciptID= :ReciptID)'
      'and ( YearID = :YearID )'
      'and ( ServerID = :ServerID )')
    Left = 368
    Top = 160
    object qryForms_CustomerName: TStringField
      DisplayLabel = #1606#1575#1605' '#1583#1585#1610#1575#1601#1578' '#1603#1606#1606#1583#1607
      FieldKind = fkLookup
      FieldName = '_CustomerName'
      LookupDataSet = qryCustomer
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'CustomerID1'
      Required = True
      Size = 150
      Lookup = True
    end
    object qryFormsFormID: TIntegerField
      FieldName = 'FormID'
    end
    object qryFormsFormType: TWordField
      FieldName = 'FormType'
    end
    object qryFormsFormNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'FormNumber'
    end
    object qryFormsFormDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1601#1585#1605
      FieldName = 'FormDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryFormsCustomerID1: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1583#1585#1610#1575#1601#1578' '#1603#1606#1606#1583#1607
      FieldName = 'CustomerID1'
    end
    object qryFormsCustomerID2: TIntegerField
      FieldName = 'CustomerID2'
    end
    object qryFormsAmount: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'Amount'
      currency = True
      Precision = 19
    end
    object qryFormsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryFormsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryFormsBudgetCode: TIntegerField
      FieldName = 'BudgetCode'
    end
    object qryFormsProjectID: TIntegerField
      FieldName = 'ProjectID'
    end
    object qryFormsTopicCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576#1583#1575#1585#1610' '
      FieldName = 'TopicCode'
    end
    object qryFormsDetailCode: TStringField
      FieldName = 'DetailCode'
      Size = 12
    end
    object qryFormsCTopicCode: TStringField
      FieldName = 'CTopicCode'
      Size = 12
    end
    object qryFormsFomNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
      FieldName = 'FomNote'
      Size = 255
    end
    object qryFormsAidInfoNo: TStringField
      FieldName = 'AidInfoNo'
      Size = 40
    end
    object qryFormsAidInfoDate: TStringField
      FieldName = 'AidInfoDate'
      FixedChar = True
      Size = 10
    end
    object qryFormsCTopicCode2: TStringField
      FieldName = 'CTopicCode2'
      Size = 12
    end
    object qryFormsCustomerName2: TStringField
      FieldName = 'CustomerName2'
      Size = 100
    end
    object qryFormsPayTypes: TWordField
      FieldName = 'PayTypes'
    end
    object qryFormsTopicTypes: TWordField
      FieldName = 'TopicTypes'
    end
    object qryFormsDocNo: TIntegerField
      FieldName = 'DocNo'
    end
    object qryFormsDocDate: TStringField
      FieldName = 'DocDate'
      FixedChar = True
      Size = 10
    end
    object qryFormsFormState: TWordField
      FieldName = 'FormState'
    end
    object qryFormsFirstUser: TStringField
      FieldName = 'FirstUser'
      Size = 50
    end
    object qryFormsLastUser: TStringField
      FieldName = 'LastUser'
      Size = 50
    end
    object qryFormsModifyDate: TDateTimeField
      FieldName = 'ModifyDate'
    end
    object qryFormsReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
  end
  object qryInitForm: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Type'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT    *'
      'FROM         FormTypes'
      'where FormType=:Type')
    Left = 576
    Top = 55
  end
  object ActionList1: TActionList
    Left = 216
    Top = 88
    object DatasetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = srcFormsFr
    end
    object DatasetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = srcFormsFr
    end
    object DatasetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      Hint = 'Edit'
      ImageIndex = 6
      DataSource = srcFormsFr
    end
    object DatasetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = #1578#1575#1610#1610#1583
      Hint = 'Post'
      ImageIndex = 7
      DataSource = srcFormsFr
    end
    object DatasetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = srcFormsFr
    end
  end
end

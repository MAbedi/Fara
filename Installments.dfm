inherited InstallmentsF: TInstallmentsF
  Caption = 'InstallmentsF'
  ClientHeight = 452
  ClientWidth = 790
  ExplicitWidth = 796
  ExplicitHeight = 481
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 395
    Width = 790
    ExplicitTop = 395
    ExplicitWidth = 790
  end
  inherited Panel1: TPanel
    Width = 790
    ExplicitWidth = 790
    inherited Image1: TImage
      Left = 736
      ExplicitLeft = 736
    end
    inherited lblTopic0: TLabel
      Left = 664
      ExplicitLeft = 664
    end
    inherited lblTopic1: TLabel
      Left = 643
      ExplicitLeft = 643
    end
  end
  inherited pnlDown: TPanel
    Top = 415
    Width = 790
    ExplicitTop = 415
    ExplicitWidth = 790
  end
  object Panel2: TPanel [3]
    Left = 0
    Top = 73
    Width = 790
    Height = 112
    Align = alTop
    TabOrder = 2
    DesignSize = (
      790
      112)
    object Label1: TLabel
      Left = 664
      Top = 51
      Width = 75
      Height = 13
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Caption = #1578#1575#1585#1740#1582' '#1575#1608#1604#1740#1606' '#1602#1587#1591
      ParentBiDiMode = False
    end
    object Label2: TLabel
      Left = 548
      Top = 88
      Width = 78
      Height = 13
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Caption = 'Due installments'
      ParentBiDiMode = False
    end
    object Label3: TLabel
      Left = 654
      Top = 6
      Width = 51
      Height = 13
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Caption = #1578#1593#1583#1575#1583' '#1602#1587#1591
      ParentBiDiMode = False
    end
    object Label4: TLabel
      Left = 396
      Top = 9
      Width = 42
      Height = 13
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Caption = #1583#1585#1589#1583' '#1606#1585#1582
      ParentBiDiMode = False
    end
    object Label5: TLabel
      Left = 287
      Top = 37
      Width = 44
      Height = 13
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Caption = #1606#1585#1582' '#1607#1586#1740#1606#1607
      ParentBiDiMode = False
    end
    object MaskEdit1: TMaskEdit
      Left = 575
      Top = 46
      Width = 83
      Height = 21
      Anchors = [akTop, akRight]
      EditMask = '9999/99/99'
      MaxLength = 10
      TabOrder = 0
      Text = '    /  /  '
    end
    object ComboBox1: TComboBox
      Left = 460
      Top = 85
      Width = 80
      Height = 21
      Style = csDropDownList
      Anchors = [akTop, akRight]
      ItemIndex = 0
      TabOrder = 1
      Text = #1605#1575#1607#1740#1575#1606#1607
      Items.Strings = (
        #1605#1575#1607#1740#1575#1606#1607
        #1583#1608' '#1605#1575#1607#1607
        #1601#1589#1604#1740)
    end
    object DBEdit1: TDBEdit
      Left = 568
      Top = 6
      Width = 80
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'PaymentCount'
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 308
      Top = 6
      Width = 80
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'RatePercent'
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      Left = 22
      Top = 9
      Width = 134
      Height = 31
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actCalRatePrice
      Caption = 'actCalRatePrice'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 4
    end
    object BitBtn2: TBitBtn
      Left = 22
      Top = 72
      Width = 134
      Height = 31
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actInstallmentsBooklet
      Caption = 'actInstallmentsBooklet'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 5
    end
    object DBEdit3: TDBEdit
      Left = 201
      Top = 34
      Width = 80
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'RatePrice'
      TabOrder = 6
    end
  end
  object DBGrid1: TDBGrid [4]
    Left = 0
    Top = 185
    Width = 790
    Height = 230
    Align = alClient
    Color = clCream
    DataSource = srcInstallments
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
        FieldName = 'ReciptID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'InstallmentID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'InstallmentNumber'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dueDate'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PayPrice'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RatePrice'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TotalPrice'
        Visible = True
      end>
  end
  inherited ActionList1: TActionList
    object actCalRatePrice: TAction
      Caption = 'actCalRatePrice'
      OnExecute = actCalRatePriceExecute
    end
    object actInstallmentsBooklet: TAction
      Caption = 'actInstallmentsBooklet'
      OnExecute = actInstallmentsBookletExecute
    end
  end
  object qryInstallment: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ReciptID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select * from dbo.Installments'
      'where (ReciptID= :ReciptID)')
    Left = 520
    Top = 265
    object qryInstallmentReciptID: TLargeintField
      FieldName = 'ReciptID'
    end
    object qryInstallmentInstallmentID: TIntegerField
      FieldName = 'InstallmentID'
    end
    object qryInstallmentInstallmentNumber: TIntegerField
      FieldName = 'InstallmentNumber'
    end
    object qryInstallmentdueDate: TDateTimeField
      FieldName = 'dueDate'
    end
    object qryInstallmentPayPrice: TBCDField
      FieldName = 'PayPrice'
      Precision = 19
    end
    object qryInstallmentRatePrice: TBCDField
      FieldName = 'RatePrice'
      Precision = 19
    end
    object qryInstallmentTotalPrice: TBCDField
      FieldName = 'TotalPrice'
      ReadOnly = True
      Precision = 19
    end
  end
  object srcInstallments: TDataSource
    DataSet = qryInstallment
    Left = 312
    Top = 256
  end
  object qryRecipts: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ReciptID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 2
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
        Name = 'ServerID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT  Recipts.ServerID,Recipts.YearID,   Recipts.ReciptID, Rec' +
        'ipts.ReciptNumber, Recipts.StoreID, Stores.c_StoreName, Recipts.' +
        'ReciptDate, '
      
        '                      SUM(ReciptItems.InputEntity + ReciptItems.' +
        'OutputEntity) AS Entity, SUM(ReciptItems.InputWeight + ReciptIte' +
        'ms.OutputWeight) '
      
        '                      AS Weight, SUM(ReciptItems.TotalInputPrice' +
        ' + ReciptItems.TotalOutputPrice) AS Price,DocNo,RialsEqual'
      'FROM         Recipts INNER JOIN'
      
        '                      Stores ON Recipts.StoreID = Stores.n_Store' +
        'ID INNER JOIN'
      
        '                      ReciptItems ON dbo.Recipts.ReciptID = dbo.' +
        'ReciptItems.ReciptID AND '
      
        '                      dbo.Recipts.ServerID = dbo.ReciptItems.Ser' +
        'verID AND dbo.Recipts.YearID = dbo.ReciptItems.YearID'
      ''
      'where (Recipts.ReciptID = :ReciptID)'
      'and ( Recipts.YearID = :YearID )'
      'and ( Recipts.ServerID = :ServerID )'
      ''
      
        'GROUP BY Recipts.ServerID,Recipts.YearID, Recipts.ReciptID, Reci' +
        'pts.StoreID, Stores.c_StoreName,'
      
        '          Recipts.ReciptDate, Recipts.ReciptNumber,DocNo,RialsEq' +
        'ual')
    Left = 432
    Top = 8
    object qryReciptsReciptID: TLargeintField
      FieldName = 'ReciptID'
    end
    object qryReciptsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryReciptsStoreID: TSmallintField
      Tag = 3
      FieldName = 'StoreID'
    end
    object qryReciptsStoreID2: TSmallintField
      Tag = 3
      FieldName = 'StoreID2'
    end
    object qryReciptsReciptNumber: TIntegerField
      Tag = 3
      FieldName = 'ReciptNumber'
    end
    object qryReciptsReciptDate: TDateTimeField
      FieldName = 'ReciptDate'
      EditMask = '9999/99/99;1;_'
    end
    object qryReciptsAidCustomerName2: TWideStringField
      FieldName = 'AidCustomerName2'
      Size = 100
    end
    object qryReciptsTopicCode: TIntegerField
      Tag = 3
      FieldName = 'TopicCode'
    end
    object qryReciptsDC2: TIntegerField
      Tag = 3
      FieldName = 'DC2'
    end
    object qryReciptsPersonID2: TIntegerField
      Tag = 3
      FieldName = 'PersonID2'
    end
    object qryReciptsPersonID1: TIntegerField
      Tag = 3
      FieldName = 'PersonID1'
    end
    object qryReciptsPersonID3: TIntegerField
      Tag = 3
      DisplayLabel = 'Cashier'
      FieldName = 'PersonID3'
    end
    object qryReciptsReciptType: TWordField
      FieldName = 'ReciptType'
    end
    object qryReciptsSecondType: TIntegerField
      FieldName = 'SecondType'
    end
    object qryReciptsArzTypeID: TIntegerField
      FieldName = 'ArzTypeID'
    end
    object qryReciptsDocSerial: TIntegerField
      FieldName = 'DocSerial'
    end
    object qryReciptsReciptState: TWordField
      FieldName = 'ReciptState'
    end
    object qryReciptsExpireDate: TDateTimeField
      FieldName = 'ExpireDate'
      EditMask = '9999/99/99'
    end
    object qryReciptsAidNumber: TStringField
      FieldName = 'AidNumber'
      Size = 40
    end
    object qryReciptsAidDate: TDateTimeField
      FieldName = 'AidDate'
      EditMask = '9999/99/99'
    end
    object qryReciptsModifyDate: TDateTimeField
      FieldName = 'ModifyDate'
    end
    object qryReciptsCashArzAmount: TBCDField
      FieldName = 'CashArzAmount'
      Precision = 18
      Size = 2
    end
    object qryReciptsCashPrice: TBCDField
      FieldName = 'CashPrice'
      currency = True
      Precision = 19
    end
    object qryReciptsReciptNote: TWideStringField
      FieldName = 'ReciptNote'
      Size = 400
    end
    object qryReciptsCurenciesEqual: TFMTBCDField
      FieldName = 'CurenciesEqual'
      Precision = 18
    end
    object qryReciptsCurrencyEqual_Div: TFMTBCDField
      FieldName = 'CurrencyEqual_Div'
      Precision = 18
    end
    object qryReciptsPaymentCount: TWordField
      FieldName = 'PaymentCount'
    end
    object qryReciptsRatePercent: TBCDField
      FieldName = 'RatePercent'
      Precision = 4
      Size = 2
    end
    object qryReciptsRatePrice: TBCDField
      FieldName = 'RatePrice'
      currency = True
      Precision = 19
    end
  end
  object qryChequeINRecipts: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'ReciptID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 2
      end>
    SQL.Strings = (
      'SELECT        *'
      'FROM            Forms'
      'WHERE        (ReciptID = :ReciptID )')
    Left = 160
    Top = 288
    object qryChequeINReciptsChequeID: TLargeintField
      FieldName = 'ChequeID'
    end
    object qryChequeINReciptsCheckNumber: TWideStringField
      FieldName = 'CheckNumber'
      Required = True
    end
    object qryChequeINReciptsCheckDate: TDateTimeField
      FieldName = 'CheckDate'
      Required = True
      EditMask = '9999/99/99'
    end
    object qryChequeINReciptsArzTypeID: TIntegerField
      FieldName = 'ArzTypeID'
    end
    object qryChequeINReciptsArzAmount: TBCDField
      FieldName = 'ArzAmount'
      currency = True
      Precision = 18
    end
    object qryChequeINReciptsCheckAmount: TBCDField
      FieldName = 'CheckAmount'
      Required = True
      currency = True
      Precision = 19
    end
    object qryChequeINReciptsCheckNote: TWideStringField
      FieldName = 'CheckNote'
      Size = 200
    end
    object qryChequeINReciptsBankCode: TIntegerField
      FieldName = 'BankCode'
      Required = True
    end
    object qryChequeINReciptsAccountNumber: TWideStringField
      FieldName = 'AccountNumber'
      FixedChar = True
      Size = 25
    end
    object qryChequeINReciptsCurenciesEqual: TBCDField
      FieldName = 'CurenciesEqual'
      Precision = 19
    end
    object qryChequeINReciptsCurenciesEqual_Div: TFMTBCDField
      FieldName = 'CurenciesEqual_Div'
      Precision = 18
    end
    object qryChequeINReciptsReciptID: TLargeintField
      FieldName = 'ReciptID'
    end
  end
  object qryForms: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ReciptID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 2
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
        Name = 'ServerID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'SELECT  *'
      'FROM         Forms'
      'where ( ReciptID = :ReciptID)'
      'and ( YearID = :YearID )'
      'and (ServerID = :ServerID )')
    Left = 384
    Top = 128
    object qryFormsFormID: TIntegerField
      FieldName = 'FormID'
    end
    object qryFormsFormType: TWordField
      FieldName = 'FormType'
    end
    object qryFormsFormNumber: TIntegerField
      FieldName = 'FormNumber'
    end
    object qryFormsFormDate: TStringField
      FieldName = 'FormDate'
      FixedChar = True
      Size = 10
    end
    object qryFormsCustomerID1: TIntegerField
      FieldName = 'CustomerID1'
    end
    object qryFormsCustomerID2: TIntegerField
      FieldName = 'CustomerID2'
    end
    object qryFormsAmount: TBCDField
      FieldName = 'Amount'
      Precision = 19
    end
    object qryFormsBudgetCode: TIntegerField
      FieldName = 'BudgetCode'
    end
    object qryFormsProjectID: TIntegerField
      FieldName = 'ProjectID'
    end
    object qryFormsTopicCode: TLargeintField
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
    object qryFormsPayTypes: TIntegerField
      FieldName = 'PayTypes'
    end
    object qryFormsTopicTypes: TIntegerField
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
    object qryFormsManegerNote: TStringField
      FieldName = 'ManegerNote'
      Size = 500
    end
    object qryFormsCashCheckFormID: TIntegerField
      FieldName = 'CashCheckFormID'
    end
    object qryFormsSubAmount: TBCDField
      FieldName = 'SubAmount'
      Precision = 19
    end
    object qryFormsRate: TFloatField
      FieldName = 'Rate'
    end
    object qryFormsRelatedID: TIntegerField
      FieldName = 'RelatedID'
    end
    object qryFormsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryFormsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryFormsSellsMethod: TIntegerField
      FieldName = 'SellsMethod'
    end
    object qryFormsSellsEmporium: TIntegerField
      FieldName = 'SellsEmporium'
    end
    object qryFormsDefaultDate: TStringField
      FieldName = 'DefaultDate'
      FixedChar = True
      Size = 10
    end
    object qryFormsCustomerID3: TIntegerField
      FieldName = 'CustomerID3'
    end
    object qryFormsTransmittal: TIntegerField
      FieldName = 'Transmittal'
    end
    object qryFormsRelatedRecipts: TStringField
      FieldName = 'RelatedRecipts'
      Size = 27
    end
    object qryFormsAidFormType: TWordField
      FieldName = 'AidFormType'
    end
    object qryFormsCTopicCode3: TStringField
      FieldName = 'CTopicCode3'
      Size = 12
    end
    object qryFormsArzTypeID: TIntegerField
      FieldName = 'ArzTypeID'
    end
    object qryFormsArzAmount: TBCDField
      FieldName = 'ArzAmount'
      Precision = 19
    end
    object qryFormsArzRate: TFloatField
      FieldName = 'ArzRate'
    end
    object qryFormsLoansFormID: TIntegerField
      FieldName = 'LoansFormID'
    end
    object qryFormsGuaranteesFormID: TIntegerField
      FieldName = 'GuaranteesFormID'
    end
    object qryFormsAidInfoNo2: TFloatField
      FieldName = 'AidInfoNo2'
    end
    object qryFormsAidInfoDate2: TStringField
      FieldName = 'AidInfoDate2'
      FixedChar = True
      Size = 10
    end
    object qryFormsParentFormID: TIntegerField
      FieldName = 'ParentFormID'
    end
    object qryFormsCostFactorsType: TWordField
      FieldName = 'CostFactorsType'
    end
    object qryFormsCostFactorsCode: TStringField
      FieldName = 'CostFactorsCode'
      Size = 60
    end
    object qryFormsUserRegistrationDoc: TStringField
      FieldName = 'UserRegistrationDoc'
      Size = 50
    end
    object qryFormsDefaultDuration: TSmallintField
      FieldName = 'DefaultDuration'
    end
    object qryFormsOperatorID: TIntegerField
      FieldName = 'OperatorID'
    end
  end
end

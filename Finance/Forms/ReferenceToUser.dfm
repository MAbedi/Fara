inherited ReferenceToUserF: TReferenceToUserF
  Caption = #1601#1585#1605' '#1575#1585#1580#1575#1593' '#1587#1606#1583
  ClientHeight = 452
  ClientWidth = 723
  ExplicitWidth = 729
  ExplicitHeight = 481
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel [0]
    Left = 642
    Top = 200
    Width = 28
    Height = 13
    Caption = #1711#1740#1585#1606#1583#1607
  end
  object SpeedButton1: TSpeedButton [1]
    Left = 536
    Top = 197
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = SpeedButton1Click
  end
  object DBText1: TDBText [2]
    Left = 302
    Top = 197
    Width = 228
    Height = 21
    Color = clBtnShadow
    DataField = '_UserName'
    DataSource = srcSend
    ParentColor = False
    Transparent = False
  end
  object Label7: TLabel [3]
    Left = 173
    Top = 200
    Width = 44
    Height = 13
    Caption = #1578#1593#1583#1575#1583' '#1576#1585#1711
  end
  object Label8: TLabel [4]
    Left = 642
    Top = 254
    Width = 40
    Height = 13
    Caption = #1578#1608#1590#1740#1581#1575#1578
  end
  object Label9: TLabel [5]
    Left = 642
    Top = 363
    Width = 62
    Height = 13
    Caption = #1588#1605#1575#1585#1607' '#1705#1605#1705#1740
  end
  object Label10: TLabel [6]
    Left = 408
    Top = 363
    Width = 53
    Height = 13
    Caption = #1578#1575#1585#1740#1582' '#1705#1605#1705#1740
  end
  object Label11: TLabel [7]
    Left = 216
    Top = 363
    Width = 20
    Height = 13
    Caption = #1586#1605#1575#1606
  end
  inherited Panel1: TPanel
    Width = 723
    Height = 49
    Color = clBtnFace
    ParentBackground = False
    TabOrder = 8
    ExplicitTop = -1
    ExplicitWidth = 723
    ExplicitHeight = 49
    DesignSize = (
      723
      49)
    inherited Image1: TImage
      Left = 669
    end
    inherited lblTopic0: TLabel
      Left = 597
    end
    inherited lblTopic1: TLabel
      Left = 576
    end
  end
  inherited pnlDown: TPanel
    Top = 415
    Width = 723
    ParentBackground = False
    TabOrder = 6
    inherited btnClose: TBitBtn
      ModalResult = 2
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      Left = 630
      Top = 6
      Width = 75
      Height = 25
      Caption = #1578#1575#1740#1740#1583
      ModalResult = 1
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 548
      Top = 6
      Width = 75
      Height = 25
      Caption = #1575#1606#1589#1585#1575#1601
      ModalResult = 2
      TabOrder = 1
    end
  end
  object DBEdit6: TDBEdit [10]
    Left = 560
    Top = 197
    Width = 76
    Height = 21
    DataField = 'ReceiverUserID'
    DataSource = srcSend
    TabOrder = 0
  end
  object DBEdit7: TDBEdit [11]
    Left = 67
    Top = 197
    Width = 100
    Height = 21
    DataField = 'CountPage'
    DataSource = srcSend
    TabOrder = 1
  end
  object DBMemo1: TDBMemo [12]
    Left = 67
    Top = 251
    Width = 569
    Height = 78
    DataField = 'Note_L1'
    DataSource = srcSend
    TabOrder = 2
  end
  object DBEdit8: TDBEdit [13]
    Left = 536
    Top = 360
    Width = 100
    Height = 21
    DataField = 'AidNumber'
    DataSource = srcSend
    TabOrder = 3
  end
  object DBEdit9: TDBEdit [14]
    Left = 302
    Top = 360
    Width = 100
    Height = 21
    DataField = 'AidDate'
    DataSource = srcSend
    TabOrder = 4
  end
  object DBEdit10: TDBEdit [15]
    Left = 67
    Top = 360
    Width = 143
    Height = 21
    DataField = 'InsertDateTime'
    DataSource = srcSend
    ReadOnly = True
    TabOrder = 5
  end
  object Bevel1: TPanel [16]
    Left = 0
    Top = 49
    Width = 723
    Height = 112
    Align = alTop
    Color = clInfoBk
    ParentBackground = False
    TabOrder = 7
    ExplicitLeft = -128
    ExplicitTop = 51
    object Label1: TLabel
      Left = 642
      Top = 26
      Width = 53
      Height = 13
      Caption = #1587#1585#1740#1575#1604' '#1587#1606#1583
    end
    object Label2: TLabel
      Left = 408
      Top = 26
      Width = 59
      Height = 13
      Caption = #1588#1605#1575#1585#1607' '#1605#1608#1602#1578
    end
    object Label3: TLabel
      Left = 642
      Top = 70
      Width = 20
      Height = 13
      Caption = #1605#1576#1604#1594
    end
    object Label4: TLabel
      Left = 173
      Top = 26
      Width = 45
      Height = 13
      Caption = #1578#1575#1585#1740#1582' '#1587#1606#1583
    end
    object Label5: TLabel
      Left = 408
      Top = 70
      Width = 67
      Height = 13
      Caption = #1705#1575#1585#1576#1585' '#1579#1576#1578' '#1705#1606#1606#1583#1607
    end
    object DBEdit1: TDBEdit
      Left = 536
      Top = 23
      Width = 100
      Height = 21
      DataField = 'Serial'
      DataSource = DocReferenceF.srcReference
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 302
      Top = 23
      Width = 100
      Height = 21
      DataField = 'SecondaryDocNo'
      DataSource = DocReferenceF.srcReference
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 302
      Top = 67
      Width = 100
      Height = 21
      DataField = 'FirstUser'
      DataSource = DocReferenceF.srcReference
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 67
      Top = 23
      Width = 100
      Height = 21
      DataField = 'DocDate'
      DataSource = DocReferenceF.srcReference
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 536
      Top = 67
      Width = 100
      Height = 21
      DataField = 'Amount'
      DataSource = DocReferenceF.srcReference
      TabOrder = 4
    end
  end
  inherited ActionList1: TActionList
    Left = 40
    Top = 65528
  end
  object qrySend: TADOQuery
    Connection = Dmf.adcAccounting
    CursorType = ctStatic
    AfterInsert = qrySendAfterInsert
    BeforePost = qrySendBeforePost
    Parameters = <>
    SQL.Strings = (
      'select top 0 * from Acc.DocReference')
    Left = 24
    Top = 224
    object qrySendReferenceID: TLargeintField
      FieldName = 'ReferenceID'
      ReadOnly = True
    end
    object qrySendYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qrySendSerial: TIntegerField
      FieldName = 'Serial'
    end
    object qrySendCompanyCode: TIntegerField
      FieldName = 'CompanyCode'
    end
    object qrySendCountPage: TIntegerField
      FieldName = 'CountPage'
    end
    object qrySendNote_L1: TStringField
      FieldName = 'Note_L1'
      Size = 5000
    end
    object qrySendNote_L2: TStringField
      FieldName = 'Note_L2'
      Size = 5000
    end
    object qrySendInsertDateTime: TDateTimeField
      FieldName = 'InsertDateTime'
    end
    object qrySendAidNumber: TStringField
      FieldName = 'AidNumber'
      Size = 40
    end
    object qrySendAidDate: TStringField
      FieldName = 'AidDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qrySendInsertUserID: TIntegerField
      FieldName = 'InsertUserID'
    end
    object qrySendReceiverUserID: TIntegerField
      FieldName = 'ReceiverUserID'
    end
    object qrySendPermitUserID: TIntegerField
      FieldName = 'PermitUserID'
    end
    object qrySendReceiverDateTime: TDateTimeField
      FieldName = 'ReceiverDateTime'
    end
    object qrySendComputerName: TStringField
      FieldName = 'ComputerName'
      Size = 50
    end
    object qrySend_UserName: TStringField
      FieldKind = fkLookup
      FieldName = '_UserName'
      LookupDataSet = qryUsers
      LookupKeyFields = 'UserID'
      LookupResultField = 'name'
      KeyFields = 'ReceiverUserID'
      Size = 150
      Lookup = True
    end
  end
  object srcSend: TDataSource
    DataSet = qrySend
    Left = 24
    Top = 176
  end
  object qryUsers: TADOQuery
    Connection = Dmf.adcFaraSystem
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'SysID'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT DISTINCT Operators.UserID, Operators.name, Operators.Mobi' +
        'le, Operators.Email, OperatorItems.SystemID'
      'FROM            Operators INNER JOIN'
      
        '                         OperatorItems ON Operators.UserID = Ope' +
        'ratorItems.UserID'
      'WHERE        (OperatorItems.SystemID = :SysID)')
    Left = 88
    Top = 128
  end
  object srcUsers: TDataSource
    DataSet = qryUsers
    Left = 144
    Top = 129
  end
end

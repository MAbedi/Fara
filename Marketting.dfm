inherited MarkettingF: TMarkettingF
  Caption = #1576#1585#1606#1575#1605#1607' '#1585#1740#1586#1740' '#1608' '#1576#1575#1586#1575#1585#1740#1575#1576#1740' '#1578#1604#1601#1606#1740
  ClientHeight = 517
  OnResize = FormResize
  ExplicitWidth = 794
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 476
    object btnFilter: TBitBtn
      AlignWithMargins = True
      Left = 711
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 1
    end
    object btnSearch: TBitBtn
      AlignWithMargins = True
      Left = 85
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSearch_
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 2
    end
    object btnWorkPlaning: TBitBtn
      AlignWithMargins = True
      Left = 387
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actWorkPlaning
      Align = alRight
      Caption = #1576#1585#1606#1575#1605#1607' '#1585#1740#1586#1740' '#1705#1575#1585
      TabOrder = 3
    end
    object btnShow: TBitBtn
      AlignWithMargins = True
      Left = 630
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actShow
      Align = alRight
      Caption = #1606#1605#1575#1740#1588
      TabOrder = 4
      ExplicitTop = 9
    end
    object btnSelectAll: TBitBtn
      AlignWithMargins = True
      Left = 549
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSelectAll
      Align = alRight
      Caption = #1575#1606#1578#1582#1575#1576' '#1607#1605#1607
      TabOrder = 5
    end
    object btnRevertAll: TBitBtn
      AlignWithMargins = True
      Left = 468
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alRight
      Caption = #1575#1606#1578#1582#1575#1576' '#1605#1593#1705#1608#1587
      TabOrder = 6
      OnClick = btnRevertAllClick
    end
  end
  inherited Panel2: TPanel
    inherited lblCaption: TLabel
      Height = 16
    end
    object Image2: TImage
      Left = 184
      Top = 16
      Width = 16
      Height = 16
      AutoSize = True
      Picture.Data = {
        07544269746D617036030000424D360300000000000036000000280000001000
        0000100000000100180000000000000300000000000000000000000000000000
        0000F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFF
        F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1
        E2EFF1E2EFF1E2EFF199A8ACF0FBFFF0FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF646F7199A8ACF0FBFFF0FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF646F7199A8ACF0FBFFF0FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF646F7199A8ACF0FBFFF0FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF646F7199A8ACF0FBFFF0FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1646F71646F71646F71646F71646F71646F71646F71
        646F71646F71646F7199A8ACF0FBFFF0FBFFF0FBFFFFFFFF99A8AC99A8AC99A8
        AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8ACF0FBFFF0
        FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFF
        F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FB
        FFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0
        FBFF}
      Visible = False
    end
    object Image3: TImage
      Left = 208
      Top = 16
      Width = 16
      Height = 16
      AutoSize = True
      Picture.Data = {
        07544269746D617036030000424D360300000000000036000000280000001000
        0000100000000100180000000000000300000000000000000000000000000000
        0000F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFF
        F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFFEFEFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFEFFFFFFFDFFFFED
        F9FFFFFFFFE7F1F3E1EDF0E3EFF1E3EFF1E3EFF1E3EFF1E2EEF0DEEAECE2EEF0
        E3EFF1E0ECEEF2FDFFCCD9DBAAB7BAF8FEFFFEFEFFE2EEF0F1F7F8F9FBFCF8FA
        FBF9FCFCF7FAFAF6F8F9FFFFFFF6F8F9F3F5F6F8FBFBB5BBBD677679ADBCC1F6
        FFFFFFFFFFE3EFF1F7FAFBFFFFFFFFFFFFFAF9F9FFFFFFFFFEFE373636FFFEFE
        FFFEFEFFFEFEAAAFB0566467B5C4C8F5FEFEFFFFFFE3EFF1F5F9FAFFFFFFF4F4
        F4FFFFFFEEEEEE3B3B3B0000003B3C3CEAEBEBFFFFFFA5AAAB5E6C6FB3C2C6F6
        FFFFFFFFFFE2EEF0F7FBFCF6F4F4FFFFFFD8D8D8424242000000000000000000
        3F4040D0CFCFBDC2C2566467B4C3C7F6FFFFFFFFFFE3EFF1F0F3F4FFFFFFC4C4
        C43F3F3F000000000000929292010101000000B9B8B8CCD1D0536164B4C3C7F6
        FFFFFFFFFFE0ECEEF6F7F8ACABAB323333000000080808919191FFFFFF949494
        000000A7A6A6D0D5D5536164B4C3C7F6FFFFFFFFFFDDE9EBFFFFFF5351510000
        001D1D1D919191FFFFFFF7F7F7FFFFFF797979C6C5C5C1C6C7576568B4C3C7F6
        FFFFFFFFFFDDE9EBFDFDFD474646151515A0A0A0FFFFFFF1F1F1FCFCFCF5F6F6
        FFFFFFFFFFFFA7ACAD5D6B6EB3C2C6F6FFFFFFFFFFDDE9EBFFFFFF7C7A7AA4A3
        A3FFFFFFFEFDFDFFFFFFFFFFFFFFFFFFFEFEFDFFFFFFB4B9BA5A686BB4C3C7F6
        FFFFFEFEFEEAF6F8DAE0E1EDEFF0E8EBEBD7D9D9DCDEDFDBDDDDDBDDDEDBDDDE
        D7D9DADCDEDE999FA05E6C6EB4C2C6F5FEFEFFFFFFDFEBED707E804B56595965
        685A67695A66695A67695A67695A67695A676A5B686A5E696B707D81ABB9BDF6
        FFFFFDFEFFA6B3B89EAEB2A9B8BCA7B5B9A7B6BAA7B6BAA7B6BAA7B6BAA7B6BA
        A7B5BAA7B6BAA8B6BB9BAAAEB0BDC1F7FEFFEFFAFFF4FFFFF4FFFFF3FEFFF3FE
        FFF3FEFFF3FEFFF3FEFFF3FEFFF3FEFFF3FEFFF3FEFFF3FEFFF4FFFFF3FEFFEF
        FAFF}
      Visible = False
    end
  end
  inherited Panel3: TPanel
    Height = 423
    object grdCustomers: TDBGrid
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 780
      Height = 414
      Align = alClient
      Color = clCream
      DataSource = srcCustomers
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = grdCustomersDrawColumnCell
      OnDblClick = grdCustomersDblClick
      Columns = <
        item
          Expanded = False
          FieldName = '_Checked'
          Width = 36
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CustID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CustName'
          Width = 102
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TEl'
          Width = 119
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Fax'
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Mobile'
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Email'
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Address'
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MaxDate'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TelInterView'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SMSInterView'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MailInterView'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FaxInterview'
          Visible = True
        end>
    end
  end
  inherited ActionList: TActionList
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actWorkPlaning: TAction
      Caption = #1576#1585#1606#1575#1605#1607' '#1585#1740#1586#1740' '#1705#1575#1585
      OnExecute = actWorkPlaningExecute
    end
    object actShow: TAction
      Caption = #1606#1605#1575#1740#1588
      Hint = 'F2'
      ShortCut = 113
      OnExecute = actShowExecute
    end
    object actSelectAll: TAction
      Caption = #1575#1606#1578#1582#1575#1576' '#1607#1605#1607
      OnExecute = actSelectAllExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 120
    Top = 25
  end
  object qryCustomers: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'CustIDFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'CustIDTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'GrpIDFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'UserAdmin'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'UserID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT       CustomerGrpName, Customers.CustID, Customers.CustNa' +
        'me, Customers.Tel, Customers.Fax, Customers.Mobile, Customers.em' +
        'ail, Customers.Address, Fitful.FitfulID AS _Checked,'
      
        '                    MaxDate,TelInterView,SMSInterView,MailInterV' +
        'iew,FaxInterview  '
      'FROM            Customers INNER JOIN'
      
        '                         CustomersGroup ON CustomersGroup.Custom' +
        'erGrpID = Customers.CustomerGrpID LEFT OUTER JOIN '
      
        '                      (SELECT  CustID, MAX(InterViewDate) AS Max' +
        'Date'
      
        '                                     FROM            CustomersIn' +
        'terView'
      
        '                                     GROUP BY CustID)   MaxCustD' +
        'ate ON  MaxCustDate.CustID =  Customers.CustID LEFT OUTER JOIN'
      
        '                      (SELECT        CustID, COUNT(CASE InterVie' +
        'wKind WHEN 0 THEN 1 END) AS TelInterView, COUNT(CASE InterViewKi' +
        'nd WHEN 1 THEN 1 END) AS SMSInterView'
      
        '                                         , COUNT(CASE InterViewK' +
        'ind WHEN 2 THEN 1 END)   AS MailInterView, COUNT(CASE InterViewK' +
        'ind WHEN 3 THEN 1 END) AS FaxInterview'
      '                       FROM            CustomersInterView'
      
        '                       GROUP BY CustID) AS InterViewKind ON Inte' +
        'rViewKind.CustID = Customers.CustID'
      '  CROSS JOIN'
      '                         Fitful'
      ''
      'WHERE      (GroupType IN (0,19))'
      
        '          AND (Customers.CustID BETWEEN :CustIDFrom AND :CustIDT' +
        'o)'
      '          AND (CustomersGroup.CustomerGrpID IN (:GrpIDFrom))'
      
        'AND (dbo.ChkUsersCustomersGroups( :UserAdmin , :UserID , Custome' +
        'rs.CustID) = 1)')
    Left = 584
    Top = 152
    object qryCustomersCustID: TIntegerField
      Tag = 3
      DisplayLabel = #1705#1583#1605#1588#1578#1585#1740
      FieldName = 'CustID'
    end
    object qryCustomersCustName: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1605#1588#1578#1585#1740
      FieldName = 'CustName'
      Size = 150
    end
    object qryCustomersTEl: TStringField
      Tag = 3
      DisplayLabel = #1578#1604#1601#1606
      FieldName = 'TEl'
      Size = 30
    end
    object qryCustomersFax: TStringField
      Tag = 3
      DisplayLabel = #1601#1705#1587
      FieldName = 'Fax'
      Size = 30
    end
    object qryCustomersMobile: TStringField
      FieldName = 'Mobile'
    end
    object qryCustomersEmail: TStringField
      Tag = 3
      DisplayLabel = #1575#1740#1605#1740#1604
      FieldName = 'Email'
      Size = 30
    end
    object qryCustomersAddress: TStringField
      Tag = 3
      DisplayLabel = #1570#1583#1585#1587
      FieldName = 'Address'
      Size = 300
    end
    object qryCustomers_Checked: TFMTBCDField
      DisplayLabel = #1575#1606#1578#1582#1575#1576
      FieldName = '_Checked'
      Precision = 20
      Size = 4
    end
    object qryCustomersMaxDate: TStringField
      DisplayLabel = #1578#1575#1585#1740#1582' '#1570#1582#1585#1740#1606' '#1605#1584#1575#1705#1585#1607
      FieldName = 'MaxDate'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object qryCustomersTelInterView: TIntegerField
      DisplayLabel = #1578#1593#1583#1575#1583' '#1578#1605#1575#1587
      FieldName = 'TelInterView'
      ReadOnly = True
    end
    object qryCustomersSMSInterView: TIntegerField
      DisplayLabel = #1578#1593#1583#1575#1583' '#1662#1740#1575#1605#1705
      FieldName = 'SMSInterView'
      ReadOnly = True
    end
    object qryCustomersMailInterView: TIntegerField
      DisplayLabel = #1578#1593#1583#1575#1583' '#1575#1740#1605#1740#1604
      FieldName = 'MailInterView'
      ReadOnly = True
    end
    object qryCustomersFaxInterview: TIntegerField
      DisplayLabel = #1578#1593#1583#1575#1583' '#1601#1705#1587' '
      FieldName = 'FaxInterview'
      ReadOnly = True
    end
    object qryCustomersCustomerGrpName: TStringField
      FieldName = 'CustomerGrpName'
      Size = 100
    end
  end
  object srcCustomers: TDataSource
    DataSet = qryCustomers
    Left = 392
    Top = 264
  end
end

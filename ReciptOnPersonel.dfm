inherited ReciptOnPersonelF: TReciptOnPersonelF
  Left = 356
  Top = 208
  ActiveControl = cmbYearBank
  Caption = #1575#1606#1578#1602#1575#1604' '#1581#1587#1575#1576' '#1582#1585#1610#1583' '#1608' '#1601#1585#1608#1588' '#1662#1585#1587#1606#1604' '#1576#1607' '#1587#1610#1587#1578#1605' '#1581#1602#1608#1602
  ClientHeight = 517
  OnResize = FormResize
  ExplicitWidth = 794
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 476
    object btnFilter: TBitBtn
      AlignWithMargins = True
      Left = 574
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
    object btnFilter1: TBitBtn
      AlignWithMargins = True
      Left = 655
      Top = 7
      Width = 131
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actMoveToSalary
      Align = alRight
      Caption = #1575#1606#1578#1602#1575#1604' '#1576#1607' '#1581#1602#1608#1602' '#1583#1587#1578#1605#1586#1583
      TabOrder = 2
    end
    object btnSort: TBitBtn
      AlignWithMargins = True
      Left = 85
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 3
    end
    object btnSort1: TBitBtn
      AlignWithMargins = True
      Left = 166
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSearch_
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
    end
    object btnSearch_: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 5
    end
    object btnExcel: TBitBtn
      AlignWithMargins = True
      Left = 328
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actOther
      Align = alLeft
      Caption = #1587#1575#1610#1585' '#1575#1605#1603#1575#1606#1575#1578
      TabOrder = 6
    end
  end
  inherited Panel2: TPanel
    Height = 57
    ExplicitHeight = 57
    inherited lblCaption: TLabel
      Height = 16
    end
    object imgOk: TImage
      Left = 616
      Top = 24
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
    object imgNotOk: TImage
      Left = 592
      Top = 24
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
  end
  inherited Panel3: TPanel
    Top = 57
    Height = 419
    ExplicitTop = 57
    ExplicitHeight = 420
    object lbl1: TLabel
      Left = 776
      Top = 405
      Width = 12
      Height = 13
      Align = alBottom
      Caption = '...'
    end
    object dbgrd1: TDBGrid
      Left = 2
      Top = 83
      Width = 786
      Height = 322
      Align = alClient
      Color = clCream
      DataSource = srcRecoptAccount
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = dbgrd1DrawColumnCell
      OnDblClick = dbgrd1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = '_Selected'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PersonID1'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'acc_DetailCode'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PersonelNo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CustName'
          Width = 127
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CustomerNote'
          Width = 165
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'balance'
          Visible = True
        end>
    end
    object pnl1: TPanel
      Left = 2
      Top = 2
      Width = 786
      Height = 81
      Align = alTop
      TabOrder = 1
      object grpGroup: TGroupBox
        Left = 172
        Top = 1
        Width = 185
        Height = 42
        Align = alCustom
        Caption = #1575#1606#1608#1575#1593' '#1603#1587#1608#1585#1575#1578' '#1605#1575#1607#1610#1575#1606#1607
        TabOrder = 0
        object cmbGroup: TComboBox
          Left = 7
          Top = 17
          Width = 167
          Height = 21
          Style = csDropDownList
          Color = 14680063
          TabOrder = 0
        end
      end
      object grpKind: TRadioGroup
        Left = 5
        Top = 0
        Width = 152
        Height = 47
        Align = alCustom
        ItemIndex = 0
        Items.Strings = (
          #1575#1606#1578#1602#1575#1604' '#1605#1575#1606#1583#1607
          #1575#1606#1578#1602#1575#1604' '#1581#1587#1575#1576' '#1582#1585#1610#1583' '#1608' '#1601#1585#1608#1588)
        TabOrder = 1
        OnClick = grpKindClick
      end
      object grpYear: TGroupBox
        Left = 359
        Top = 1
        Width = 418
        Height = 42
        Align = alCustom
        Caption = #1606#1575#1605' '#1576#1575#1606#1603' '#1581#1602#1608#1602' '#1608' '#1583#1587#1578#1605#1586#1583
        TabOrder = 2
        object cmbYearBank: TComboBox
          AlignWithMargins = True
          Left = 54
          Top = 18
          Width = 359
          Height = 21
          Align = alClient
          Style = csDropDownList
          Color = 14680063
          TabOrder = 0
          OnChange = cmbYearBankChange
          OnEnter = cmbYearBankEnter
        end
        object cmbYearID: TComboBox
          AlignWithMargins = True
          Left = 5
          Top = 18
          Width = 43
          Height = 19
          Align = alLeft
          TabOrder = 1
          Text = 'cmbYearID'
        end
      end
      object MyToolBar: TToolBar
        Left = 1
        Top = 47
        Width = 776
        Height = 33
        Align = alBottom
        BorderWidth = 2
        ButtonHeight = 21
        ButtonWidth = 54
        Caption = 'MyToolBar'
        EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
        EdgeInner = esNone
        EdgeOuter = esNone
        ShowCaptions = True
        TabOrder = 3
        ExplicitWidth = 784
        object btn1: TToolButton
          Tag = 1
          Left = 0
          Top = 0
          Caption = #1601#1585#1608#1585#1583#1610#1606
          Grouped = True
          Style = tbsCheck
          OnClick = btn1Click
        end
        object btn2: TToolButton
          Tag = 2
          Left = 54
          Top = 0
          Caption = #1575#1585#1583#1610#1576#1607#1588#1578
          Grouped = True
          Style = tbsCheck
          OnClick = btn1Click
        end
        object btn3: TToolButton
          Tag = 3
          Left = 108
          Top = 0
          Caption = #1582#1585#1583#1575#1583
          Grouped = True
          Style = tbsCheck
          OnClick = btn1Click
        end
        object btn4: TToolButton
          Tag = 4
          Left = 162
          Top = 0
          Caption = #1578#1610#1585
          Grouped = True
          Style = tbsCheck
          OnClick = btn1Click
        end
        object btn5: TToolButton
          Tag = 5
          Left = 216
          Top = 0
          Caption = #1605#1585#1583#1575#1583
          Grouped = True
          Style = tbsCheck
          OnClick = btn1Click
        end
        object btn6: TToolButton
          Tag = 6
          Left = 270
          Top = 0
          Caption = #1588#1607#1585#1610#1608#1585
          Grouped = True
          Style = tbsCheck
          OnClick = btn1Click
        end
        object btn7: TToolButton
          Tag = 7
          Left = 324
          Top = 0
          Caption = #1605#1607#1585
          Grouped = True
          Style = tbsCheck
          OnClick = btn1Click
        end
        object btn8: TToolButton
          Tag = 8
          Left = 378
          Top = 0
          Caption = #1570#1576#1575#1606
          Grouped = True
          Style = tbsCheck
          OnClick = btn1Click
        end
        object btn9: TToolButton
          Tag = 9
          Left = 432
          Top = 0
          Caption = #1570#1584#1585
          Grouped = True
          Style = tbsCheck
          OnClick = btn1Click
        end
        object btn10: TToolButton
          Tag = 10
          Left = 486
          Top = 0
          Caption = #1583#1610
          Grouped = True
          Style = tbsCheck
          OnClick = btn1Click
        end
        object btn11: TToolButton
          Tag = 11
          Left = 540
          Top = 0
          Caption = #1576#1607#1605#1606
          Grouped = True
          Style = tbsCheck
          OnClick = btn1Click
        end
        object btn12: TToolButton
          Tag = 12
          Left = 594
          Top = 0
          Caption = #1575#1587#1601#1606#1583
          Grouped = True
          Style = tbsCheck
          OnClick = btn1Click
        end
      end
    end
  end
  inherited ActionList: TActionList
    Left = 488
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actMoveToSalary: TAction
      Caption = #1575#1606#1578#1602#1575#1604' '#1576#1607' '#1581#1602#1608#1602' '#1583#1587#1578#1605#1586#1583
      OnExecute = actMoveToSalaryExecute
    end
    object actSort: TAction
      Tag = -1
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actSelectAll: TAction
      Caption = #1575#1606#1578#1582#1575#1576' '#1607#1605#1607
      OnExecute = actSelectAllExecute
    end
    object actReverseAll: TAction
      Caption = #1575#1606#1578#1582#1575#1576' '#1605#1593#1603#1608#1587
      OnExecute = actReverseAllExecute
    end
    object actExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actExcelExecute
    end
    object actOther: TAction
      Caption = #1587#1575#1610#1585' '#1575#1605#1603#1575#1606#1575#1578
      OnExecute = actOtherExecute
    end
    object actUpdate: TAction
      Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1610
    end
  end
  inherited ImageList1: TImageList
    Left = 432
    Top = 9
  end
  object qryReciprtAccount: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryReciprtAccountAfterOpen
    Parameters = <
      item
        Name = 'YearIDFrom'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearIDTo'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'SellsMethodFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'SellsMethodTo'
        DataType = ftWideString
        Size = 2
        Value = '99'
      end
      item
        Name = 'SellsEmporiumFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'SellsEmporiumTo'
        DataType = ftWideString
        Size = 2
        Value = '99'
      end
      item
        Name = 'Month'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 10
        Value = 0.000000000000000000
      end>
    SQL.Strings = (
      
        'SELECT     AllAcc.CustomerID1 AS PersonID1, Customers.CustName, ' +
        'Customers.CustomerNote, SUM(AllAcc.bed - AllAcc.bes) AS balance,' +
        ' Customers.acc_DetailCode, '
      
        '                      Salary_naft_1393.Pay.PersonelInfo.Personel' +
        'No'
      
        'FROM         dbo.AllAccount(10, - 1, - 1, - 1, 0, 9999999, '#39#39', 9' +
        '99999999, '#39#39',  :YearIDFrom  , :YearIDTo '
      
        '   , :SellsMethodFrom , :SellsMethodTo , :SellsEmporiumFrom ,  :' +
        'SellsEmporiumTo , DEFAULT ) AS AllAcc INNER JOIN'
      
        '                      Customers ON AllAcc.CustomerID1 = Customer' +
        's.CustID INNER JOIN'
      
        '                      CustomersGroup ON Customers.CustomerGrpID ' +
        '= CustomersGroup.CustomerGrpID LEFT OUTER JOIN'
      
        '                      Salary_naft_1393.Pay.PersonelInfo ON Custo' +
        'mers.acc_DetailCode = Salary_naft_1393.Pay.PersonelInfo.AccDetai' +
        'lCode'
      'WHERE     (ABS(SUBSTRING(AllAcc.FormDate, 6, 2)) =  :Month )'
      
        'GROUP BY AllAcc.CustomerID1, Customers.CustName, Customers.Custo' +
        'merNote, Customers.acc_DetailCode, Salary_naft_1393.pay.Personel' +
        'Info.PersonelNo'
      ''
      ''
      '')
    Left = 120
    Top = 173
  end
  object prvReciptAccount: TDataSetProvider
    DataSet = qryReciprtAccount
    Left = 96
    Top = 245
  end
  object srcRecoptAccount: TDataSource
    DataSet = cliReciptAccount
    Left = 80
    Top = 381
  end
  object popOther: TPopupMenu
    AutoHotkeys = maManual
    Left = 280
    Top = 391
    object N1: TMenuItem
      Action = actSelectAll
    end
    object N2: TMenuItem
      Action = actReverseAll
    end
    object N3: TMenuItem
      Action = actUpdate
    end
  end
  object cliReciptAccount: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReciptAccount'
    Left = 80
    Top = 309
    object cliReciptAccount_Selected: TBooleanField
      DisplayLabel = #1575#1606#1578#1582#1575#1576
      FieldKind = fkInternalCalc
      FieldName = '_Selected'
    end
    object cliReciptAccountPersonID1: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '
      FieldName = 'PersonID1'
    end
    object cliReciptAccountCustName: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1582#1589#1575#1578
      FieldName = 'CustName'
      Size = 120
    end
    object cliReciptAccountCustomerNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'CustomerNote'
      Size = 250
    end
    object cliReciptAccountacc_DetailCode: TStringField
      Tag = 3
      DisplayLabel = #1603#1583#1578#1601#1589#1610#1604#1610
      FieldName = 'acc_DetailCode'
      Size = 12
    end
    object cliReciptAccountPersonelNo: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1662#1585#1587#1606#1604'('#1581#1602#1608#1602' '#1583#1587#1578#1605#1586#1583')'
      FieldName = 'PersonelNo'
    end
    object cliReciptAccountbalance: TFloatField
      DisplayLabel = #1605#1575#1606#1583#1607
      FieldName = 'balance'
      ReadOnly = True
      currency = True
    end
  end
  object adcSalary: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=tycedar;Persist Security Info=True;' +
      'User ID=FaraUser;Initial Catalog=Salary_daneshgarsemnab_1388;Dat' +
      'a Source=arabi'
    KeepConnection = False
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'SQLOLEDB.1'
    Left = 670
    Top = 182
  end
  object qryPersonelDecExt: TADOQuery
    Connection = adcSalary
    AfterInsert = qryPersonelDecExtAfterInsert
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     EndMounth, FirstMounth, FormInfoID,EmployeeAmount, De' +
        'cExtID,PersonelNo,YearID, StartYear'
      'FROM         PersonelDecExt')
    Left = 672
    Top = 247
  end
end

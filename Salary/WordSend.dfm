inherited WordSendF: TWordSendF
  Left = 250
  Top = 91
  Caption = #1605#1603#1575#1578#1576#1575#1578' '#1583#1585' Word'
  ClientHeight = 517
  OnResize = FormResize
  ExplicitWidth = 794
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 476
    object BitBtn1: TBitBtn
      Left = 95
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      Left = 175
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 2
    end
    object BitBtn3: TBitBtn
      Left = 543
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Word'#8207
      TabOrder = 3
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 699
      Top = 8
      Width = 75
      Height = 25
      Action = actSelectAll
      Anchors = [akTop, akRight]
      Caption = #1575#1606#1578#1582#1575#1576' '#1607#1605#1607
      TabOrder = 4
    end
    object BitBtn5: TBitBtn
      Left = 621
      Top = 8
      Width = 75
      Height = 25
      Action = actSlelectInverse
      Anchors = [akTop, akRight]
      Caption = #1575#1606#1578#1582#1575#1576' '#1605#1593#1603#1608#1587
      TabOrder = 5
    end
    object BitBtn6: TBitBtn
      Left = 255
      Top = 8
      Width = 75
      Height = 25
      Action = actExcel
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      TabOrder = 6
    end
  end
  inherited Panel2: TPanel
    inherited lblCaption: TLabel
      Height = 16
      ExplicitLeft = 674
    end
    object Image1: TImage
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
  end
  inherited Panel3: TPanel
    Height = 423
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 766
      Height = 419
      Align = alClient
      Color = clCream
      DataSource = srcList
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnDblClick = DBGrid1DblClick
      OnKeyDown = DBGrid1KeyDown
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = '_checked'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PersonelNo'
          Title.Alignment = taCenter
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PersonelName_L1'
          Title.Alignment = taCenter
          Width = 21
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PersonelName_L2'
          Title.Alignment = taCenter
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fatherName_L1'
          Title.Alignment = taCenter
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fatherName_L2'
          Title.Alignment = taCenter
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nationality_L1'
          Title.Alignment = taCenter
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nationality_L2'
          Title.Alignment = taCenter
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BirthDate'
          Title.Alignment = taCenter
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SodurDate'
          Title.Alignment = taCenter
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BirthPlace_L1'
          Title.Alignment = taCenter
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BirthPlace_L2'
          Title.Alignment = taCenter
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SodurPlace_L1'
          Title.Alignment = taCenter
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SodurPlace_L2'
          Title.Alignment = taCenter
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NationalID'
          Title.Alignment = taCenter
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IDNumber'
          Title.Alignment = taCenter
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'licence_L1'
          Title.Alignment = taCenter
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'licence_L2'
          Title.Alignment = taCenter
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'employDate'
          Title.Alignment = taCenter
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AccountNumber'
          Title.Alignment = taCenter
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'address_L1'
          Title.Alignment = taCenter
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'address_L2'
          Title.Alignment = taCenter
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Tel'
          Title.Alignment = taCenter
          Width = 28
          Visible = True
        end>
    end
  end
  inherited ActionList: TActionList
    Left = 520
    Top = 120
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actSelectAll: TAction
      Caption = #1575#1606#1578#1582#1575#1576' '#1607#1605#1607
      OnExecute = actSelectAllExecute
    end
    object actSlelectInverse: TAction
      Caption = #1575#1606#1578#1582#1575#1576' '#1605#1593#1603#1608#1587
      OnExecute = actSlelectInverseExecute
    end
    object ActSendToWord: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Word'#8207
      OnExecute = ActSendToWordExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actExcel: TAction
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      OnExecute = actExcelExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 624
  end
  object srcList: TDataSource
    DataSet = CliList
    Left = 114
    Top = 187
  end
  object qryList: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     PersonelNo, name_L1, name_L2, lastName_L1, lastName_L' +
        '2,PersonelName_L1, PersonelName_L2, fatherName_L1, fatherName_L2' +
        ', Nationality_L1, Nationality_L2, BirthDate, SodurDate, '
      
        '                      BirthPlace_L1, BirthPlace_L2, SodurPlace_L' +
        '1, SodurPlace_L2, NationalID, IDNumber, licence_L1, licence_L2, ' +
        'employDate, AccountNumber, '
      '                      address_L1, address_L2, Tel'
      'FROM Pay.EmployeeInfo'
      'WHERE     (PersonStateNo < 100)')
    Left = 194
    Top = 139
  end
  object CliList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 360
    Top = 189
    object CliList_checked: TBooleanField
      DisplayLabel = #1575#1606#1578#1582#1575#1576
      FieldKind = fkInternalCalc
      FieldName = '_checked'
    end
    object CliListPersonelNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588'.'#1662#1585#1587#1606#1604
      FieldName = 'PersonelNo'
    end
    object CliListPersonelName_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605
      FieldName = 'PersonelName_L1'
      ReadOnly = True
      Size = 60
    end
    object CliListPersonelName_L2: TStringField
      FieldName = 'PersonelName_L2'
      ReadOnly = True
      Size = 60
    end
    object CliListfatherName_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1662#1583#1585
      FieldName = 'fatherName_L1'
      Size = 25
    end
    object CliListfatherName_L2: TStringField
      FieldName = 'fatherName_L2'
      Size = 25
    end
    object CliListNationality_L1: TStringField
      Tag = 3
      DisplayLabel = #1605#1604#1610#1578
      FieldName = 'Nationality_L1'
      Size = 255
    end
    object CliListNationality_L2: TStringField
      FieldName = 'Nationality_L2'
      Size = 255
    end
    object CliListBirthDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1578#1608#1604#1583
      FieldName = 'BirthDate'
      FixedChar = True
      Size = 10
    end
    object CliListSodurDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1589#1583#1608#1585
      FieldName = 'SodurDate'
      FixedChar = True
      Size = 10
    end
    object CliListBirthPlace_L1: TStringField
      Tag = 3
      DisplayLabel = #1605#1581#1604' '#1578#1608#1604#1583
      FieldName = 'BirthPlace_L1'
      Size = 255
    end
    object CliListBirthPlace_L2: TStringField
      FieldName = 'BirthPlace_L2'
      Size = 255
    end
    object CliListSodurPlace_L1: TStringField
      Tag = 3
      DisplayLabel = #1605#1581#1604' '#1589#1583#1608#1585
      FieldName = 'SodurPlace_L1'
      Size = 255
    end
    object CliListSodurPlace_L2: TStringField
      FieldName = 'SodurPlace_L2'
      Size = 255
    end
    object CliListNationalID: TStringField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1604#1610
      FieldName = 'NationalID'
      Size = 12
    end
    object CliListIDNumber: TStringField
      Tag = 3
      DisplayLabel = #1588'.'#1588#1606#1575#1587#1606#1575#1605#1607
      FieldName = 'IDNumber'
      Size = 12
    end
    object CliListlicence_L1: TStringField
      Tag = 3
      DisplayLabel = #1605#1583#1585#1603' '#1578#1581#1589#1610#1604#1610
      FieldName = 'licence_L1'
      Size = 255
    end
    object CliListlicence_L2: TStringField
      FieldName = 'licence_L2'
      Size = 255
    end
    object CliListemployDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1575#1587#1578#1582#1583#1575#1605
      FieldName = 'employDate'
      FixedChar = True
      Size = 10
    end
    object CliListAccountNumber: TStringField
      Tag = 3
      DisplayLabel = #1588' .'#1581#1587#1575#1576
      FieldName = 'AccountNumber'
      Size = 30
    end
    object CliListaddress_L1: TStringField
      Tag = 3
      DisplayLabel = #1570#1583#1585#1587
      FieldName = 'address_L1'
      Size = 255
    end
    object CliListaddress_L2: TStringField
      FieldName = 'address_L2'
      Size = 255
    end
    object CliListTel: TStringField
      Tag = 3
      DisplayLabel = #1578#1604#1601#1606
      FieldName = 'Tel'
      Size = 15
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = qryList
    Left = 248
    Top = 293
  end
  object qryList4Print: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT     InfoID, InfoName_L1, InfoName_L2, WordDocuments'
      'FROM Pay.FormsInfo'
      'WHERE     (FormType = 34)')
    Left = 728
    Top = 296
    object qryList4PrintInfoID: TIntegerField
      FieldName = 'InfoID'
    end
    object qryList4PrintInfoName_L1: TStringField
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object qryList4PrintInfoName_L2: TStringField
      FieldName = 'InfoName_L2'
      Size = 255
    end
    object qryList4PrintWordDocuments: TStringField
      FieldName = 'WordDocuments'
      Size = 150
    end
  end
  object PopList4Print: TPopupMenu
    Left = 728
    Top = 373
    object AllClikPop: TMenuItem
      Caption = 'AllClikPop'
      OnClick = AllClikPopClick
    end
  end
end

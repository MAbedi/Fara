inherited PaymentLoanWithRemainF: TPaymentLoanWithRemainF
  Left = 192
  Top = 193
  Caption = #1589#1608#1585#1578' '#1608#1590#1593#1610#1578' '#1608#1575#1605#1607#1575#1610' '#1662#1585#1583#1575#1582#1578' '#1588#1583#1607' '#1576#1607#1605#1585#1575#1607'  '#1576#1575#1602#1610#1605#1575#1606#1583#1607' '#1570#1606#1607#1575
  OldCreateOrder = True
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    object BitBtn7: TBitBtn
      Left = 701
      Top = 8
      Width = 75
      Height = 25
      Action = actFilter
      Anchors = [akRight, akBottom]
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      Left = 623
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Anchors = [akRight, akBottom]
      Caption = #1670#1575#1662' (F7)'
      TabOrder = 2
    end
    object DBNavigator2: TDBNavigator
      Left = 345
      Top = 8
      Width = 272
      Height = 25
      DataSource = srcDetailes
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Anchors = [akLeft, akTop, akRight]
      Flat = True
      TabOrder = 3
    end
    object BitBtn4: TBitBtn
      Left = 248
      Top = 8
      Width = 90
      Height = 25
      Action = actSendtoExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 4
    end
    object BitBtn5: TBitBtn
      Left = 170
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1576#1607' '#1578#1585#1578#1610#1576
      TabOrder = 5
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006A00
        00006A0000006A000000FF00FF006A0000006A0000006A000000FFFFFF00FF00
        FF00FF00FF00FF00FF0000580300FF00FF00FF00FF00FF00FF00FFFFFF006A6A
        6A006A000000FF00FF00FF00FF00FF00FF00980000006A6A6A00FF00FF00FF00
        FF00FF00FF00005803006AFF6A0000580300FF00FF00FF00FF00FF00FF00FF00
        FF006A6A6A006A0000006A0000006A0000006A000000FF00FF00FF00FF00FF00
        FF00FF00FF006AFF6A006AB650000084000000580300FF00FF00FFFFFF00FF00
        FF00FF00FF006A000000FF00FF00980000006A000000FF00FF00FFFFFF00FF00
        FF00FF00FF006AFF6A006AB650000084000000580300FF00FF00FFFFFF00FF00
        FF00FF00FF00980000006A0000006A000000FF00FF00FF00FF00FF00FF000058
        0300005803000058030000580300005803000058030000580300FF00FF00FF00
        FF00FF00FF006A6A6A006A0000006A6A6A00FF00FF00FF00FF00FFFFFF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0098000000FF00FF00FF00FF00FF00FF00FFFFFF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FFFFFF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF000000
        6A0000006A0000006A0000006A0000006A0000006A00FF00FF00FFFFFF00FF00
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
    end
    object BitBtn6: TBitBtn
      Left = 93
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 6
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00636B
        7300C69C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006394B500218C
        EF002173B500CE9C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF004AB5FF0042A5
        FF00218CEF007B849400CE9C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0052BD
        FF005ABDFF00218CEF002173B500CE9C9400FF00FF00FF00FF00FF00FF00FF00
        FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0031A5
        FF0052BDFF0042A5FF00218CEF0084849400CE9C9400FF00FF00FF00FF00FF00
        FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FFFFFF0052BDFF005ABDFF003184D60052636B00FF00FF009C6B6B00CEA5
        9C00D6B5A500CE9C9C00C6949400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0031A5FF0052BDFF00C6CEDE009C9C9C00AD8C8400E7D6BD00FFFF
        D600FFFFDE00FFFFD600EFDEC600FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00C6ADAD00CEA59400FFE7BD00FFF7CE00FFFF
        D600FFFFD600FFFFDE00FFFFE700FFFFFF00C6A5A500FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00BD8C8C00EFDEB500F7D6AD00FFF7CE00FFFF
        D600FFFFDE00FFFFEF00FFFFF700FFFFFF00F7EFDE00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00E7CEAD00FFEFBD00F7CE9C00FFEFC600FFFF
        D600FFFFDE00FFFFF700FFFFF700FFFFDE00FFFFDE00C6949400FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00EFD6B500FFE7B500F7C68C00F7DEB500FFFF
        D600FFFFDE00FFFFEF00FFFFEF00FFFFDE00FFFFDE00BD9C8C00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00E7CEAD00FFEFBD00EFBD8400F7C69400FFEF
        C600FFFFD600FFFFD600FFFFD600FFFFD600FFFFDE00C6949400FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00D6ADA500FFEFBD00F7DEAD00F7CE9C00F7D6
        A500F7E7BD00FFFFD600FFFFD600FFFFD600FFFFD600FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00C69C8C00FFFFFF00FFFFFF00F7C6
        9400EFBD8400F7C69400F7D6AD00FFEFC600BD9C8C00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00EFEFE700FFFFEF00FFE7
        B500F7DEAD00FFE7B500FFEFBD00C69C9400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C69C
        8C00CEA59C00C69C9400FF00FF00FF00FF00FF00FF00FF00FF00}
    end
  end
  inherited Panel3: TPanel
    object Label1: TLabel
      Left = 55
      Top = 8
      Width = 122
      Height = 13
      Caption = #1662#1585#1583#1575#1582#1578' '#1591#1610' '#1587#1575#1604' '#1580#1575#1585#1610
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 221
      Top = 2
      Width = 559
      Height = 426
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = clCream
      DataSource = srcDetailes
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'PersonelNo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'name_l1'
          Width = 111
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EmployeeAmount'
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PaymentLoan'
          Width = 108
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LoanName_l1'
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LoanName_l2'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AidNo1'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AidNo2'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AidDate1_L1'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AidDate1_L2'
          Visible = True
        end>
    end
    object DBGrid2: TDBGrid
      Left = 3
      Top = 24
      Width = 217
      Height = 404
      Anchors = [akLeft, akTop, akBottom]
      Color = clCream
      DataSource = srcItems
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'InfoName_L1'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sumPrice'
          Width = 100
          Visible = True
        end>
    end
  end
  inherited ActionList: TActionList
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662' (F7)'
      OnExecute = actPrintExecute
    end
    object actSendtoExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendtoExcelExecute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actSort: TAction
      Caption = #1576#1607' '#1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
  end
  object qryDetailes: TADOQuery
    Connection = DMF.adcSalary
    CursorType = ctStatic
    AfterScroll = qryDetailesAfterScroll
    Parameters = <
      item
        Name = 'FormType'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 0
      end
      item
        Name = 'FromPersonelNo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'ToPersonelNo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 99999
      end>
    SQL.Strings = (
      
        'SELECT     Pay.PersonelDecExt.* ,Pay.PersonelInfo.name_L1 +'#39' '#39'+ ' +
        'Pay.PersonelInfo.lastName_L1 AS name_l1,Pay.PersonelInfo.name_L2' +
        ' +'#39' '#39'+ Pay.PersonelInfo.lastName_L2  AS name_l2,'
      ' Pay.FormsInfo.InfoName_L1 AS LoanName_l1,'
      
        ' Pay.FormsInfo.InfoName_L2 AS LoanName_l2,Pay.PersonelDecExt.For' +
        'mInfoID'
      'FROM         Pay.PersonelDecExt INNER JOIN'
      
        '                      Pay.FormsInfo ON Pay.PersonelDecExt.FormIn' +
        'foID = Pay.FormsInfo.FormInfoID INNER JOIN'
      
        '                      Pay.PersonelInfo ON Pay.PersonelDecExt.Per' +
        'sonelNo = Pay.PersonelInfo.PersonelNo'
      'where  (FormType = :FormType )'#10
      ''
      
        'and (Pay.PersonelDecExt.PersonelNo between :FromPersonelNo and :' +
        'ToPersonelNo)'
      'ORDER BY Pay.PersonelDecExt.PersonelNo')
    Left = 416
    Top = 168
    object qryDetailesDecExtID: TIntegerField
      FieldName = 'DecExtID'
    end
    object qryDetailesFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qryDetailesPersonelNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610
      FieldName = 'PersonelNo'
    end
    object qryDetailesEmployeeAmount: TBCDField
      DisplayLabel = #1575#1589#1604' '#1608#1575#1605
      FieldName = 'EmployeeAmount'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qryDetailesFirstMounth: TWordField
      FieldName = 'FirstMounth'
    end
    object qryDetailesEndMounth: TWordField
      FieldName = 'EndMounth'
    end
    object qryDetailesAidNo1: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607
      FieldName = 'AidNo1'
    end
    object qryDetailesAidDate1_L1: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'AidDate1_L1'
      FixedChar = True
      Size = 10
    end
    object qryDetailesAidDate1_L2: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'AidDate1_L2'
      FixedChar = True
      Size = 10
    end
    object qryDetailesAidNo2: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607
      DisplayWidth = 20
      FieldName = 'AidNo2'
    end
    object qryDetailesAidDate2_L1: TStringField
      FieldName = 'AidDate2_L1'
      FixedChar = True
      Size = 10
    end
    object qryDetailesAidDate2_L2: TStringField
      FieldName = 'AidDate2_L2'
      FixedChar = True
      Size = 10
    end
    object qryDetailesDayQuntity: TFloatField
      FieldName = 'DayQuntity'
    end
    object qryDetailesDayTime: TFloatField
      FieldName = 'DayTime'
    end
    object qryDetailesEmployerAmount: TBCDField
      FieldName = 'EmployerAmount'
      Precision = 19
    end
    object qryDetailesFormInfoID2: TIntegerField
      FieldName = 'FormInfoID2'
    end
    object qryDetailesNote_L1: TMemoField
      FieldName = 'Note_L1'
      BlobType = ftMemo
    end
    object qryDetailesNote_L2: TMemoField
      FieldName = 'Note_L2'
      BlobType = ftMemo
    end
    object qryDetailesAccTopicCode: TIntegerField
      FieldName = 'AccTopicCode'
    end
    object qryDetailesAccDetailCode: TIntegerField
      FieldName = 'AccDetailCode'
    end
    object qryDetailesAccCTopicCode: TIntegerField
      FieldName = 'AccCTopicCode'
    end
    object qryDetailesAccCTopicCode2: TIntegerField
      FieldName = 'AccCTopicCode2'
    end
    object qryDetailesPaymentLoan: TBCDField
      DisplayLabel = #1662#1585#1583#1575#1582#1578#1610' '#1587#1606#1608#1575#1578' '#1602#1576#1604
      FieldName = 'PaymentLoan'
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qryDetailesname_l1: TStringField
      DisplayLabel = #1606#1575#1605' '#1662#1585#1587#1606#1604
      FieldName = 'name_l1'
      ReadOnly = True
      Size = 55
    end
    object qryDetailesLoanName_l1: TStringField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1608#1575#1605
      FieldName = 'LoanName_l1'
      Size = 255
    end
    object qryDetailesLoanName_l2: TStringField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1608#1575#1605
      FieldName = 'LoanName_l2'
      Size = 255
    end
    object qryDetailesname_l2: TStringField
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1662#1585#1587#1606#1604
      FieldName = 'name_l2'
      ReadOnly = True
      Size = 55
    end
  end
  object srcDetailes: TDataSource
    DataSet = qryDetailes
    Left = 480
    Top = 168
  end
  object qryItems: TADOQuery
    Connection = DMF.adcSalary
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'person'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'salary'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT     Pay.FixedCalculated.Mounth, Pay.StandardTimes.InfoNam' +
        'e_L1, Pay.StandardTimes.InfoName_L2, SUM(Pay.FixedCalculated.Pri' +
        'ce) AS sumPrice'
      'FROM         Pay.FixedCalculated INNER JOIN'
      
        '                      Pay.StandardTimes ON Pay.FixedCalculated.M' +
        'ounth = Pay.StandardTimes.InfoID'
      
        'WHERE     (Pay.FixedCalculated.PersonelNO = :person) AND (Pay.Fi' +
        'xedCalculated.SalaryID = :salary)'
      
        'GROUP BY Pay.FixedCalculated.Mounth, Pay.StandardTimes.InfoName_' +
        'L1, Pay.StandardTimes.InfoName_L2')
    Left = 40
    Top = 256
    object qryItemsMounth: TWordField
      FieldName = 'Mounth'
    end
    object qryItemsInfoName_L1: TStringField
      Tag = 3
      DisplayLabel = #1605#1575#1607
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object qryItemsInfoName_L2: TStringField
      DisplayLabel = #1605#1575#1607
      FieldName = 'InfoName_L2'
      Size = 255
    end
    object qryItemssumPrice: TBCDField
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'sumPrice'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
  end
  object srcItems: TDataSource
    DataSet = qryItems
    Left = 96
    Top = 253
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcDetailes
    UserName = 'DBPipeline1'
    Left = 712
    Top = 149
    object ppDBPipeline1ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'DecExtID'
      FieldName = 'DecExtID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'FormInfoID'
      FieldName = 'FormInfoID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'PersonelNo'
      FieldName = 'PersonelNo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'EmployeeAmount'
      FieldName = 'EmployeeAmount'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'FirstMounth'
      FieldName = 'FirstMounth'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'EndMounth'
      FieldName = 'EndMounth'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 5
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'AidNo1'
      FieldName = 'AidNo1'
      FieldLength = 20
      DisplayWidth = 20
      Position = 6
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'AidDate1_L1'
      FieldName = 'AidDate1_L1'
      FieldLength = 8
      DisplayWidth = 8
      Position = 7
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'AidDate1_L2'
      FieldName = 'AidDate1_L2'
      FieldLength = 10
      DisplayWidth = 10
      Position = 8
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'AidNo2'
      FieldName = 'AidNo2'
      FieldLength = 20
      DisplayWidth = 20
      Position = 9
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'AidDate2_L1'
      FieldName = 'AidDate2_L1'
      FieldLength = 8
      DisplayWidth = 8
      Position = 10
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'AidDate2_L2'
      FieldName = 'AidDate2_L2'
      FieldLength = 10
      DisplayWidth = 10
      Position = 11
    end
    object ppDBPipeline1ppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'DayQuntity'
      FieldName = 'DayQuntity'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
    object ppDBPipeline1ppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'DayTime'
      FieldName = 'DayTime'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 13
    end
    object ppDBPipeline1ppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'EmployerAmount'
      FieldName = 'EmployerAmount'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 14
    end
    object ppDBPipeline1ppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'FormInfoID2'
      FieldName = 'FormInfoID2'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 15
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'Note_L1'
      FieldName = 'Note_L1'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'Note_L2'
      FieldName = 'Note_L2'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'AccTopicCode'
      FieldName = 'AccTopicCode'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 18
    end
    object ppDBPipeline1ppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'AccDetailCode'
      FieldName = 'AccDetailCode'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object ppDBPipeline1ppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'AccCTopicCode'
      FieldName = 'AccCTopicCode'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 20
    end
    object ppDBPipeline1ppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'AccCTopicCode2'
      FieldName = 'AccCTopicCode2'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 21
    end
    object ppDBPipeline1ppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'PaymentLoan'
      FieldName = 'PaymentLoan'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 22
    end
    object ppDBPipeline1ppField24: TppField
      FieldAlias = 'name_l1'
      FieldName = 'name_l1'
      FieldLength = 55
      DisplayWidth = 55
      Position = 23
    end
    object ppDBPipeline1ppField25: TppField
      FieldAlias = 'LoanName_l1'
      FieldName = 'LoanName_l1'
      FieldLength = 255
      DisplayWidth = 255
      Position = 24
    end
    object ppDBPipeline1ppField26: TppField
      FieldAlias = 'LoanName_l2'
      FieldName = 'LoanName_l2'
      FieldLength = 255
      DisplayWidth = 255
      Position = 25
    end
    object ppDBPipeline1ppField27: TppField
      FieldAlias = 'name_l2'
      FieldName = 'name_l2'
      FieldLength = 55
      DisplayWidth = 55
      Position = 26
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'D:\Report\rptPaymentLoanWithRemain.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 712
    Top = 269
    Version = '10.06'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 40746
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        OnGetText = ppLabel1GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 75936
        mmTop = 0
        mmWidth = 51065
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'LblCaption'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #1604#1610#1587#1578' '#1608#1575#1605' '#1662#1585#1587#1606#1604' '#1576#1578#1601#1603#1610#1603' '#1662#1585#1587#1606#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8467
        mmLeft = 72496
        mmTop = 6350
        mmWidth = 58738
        BandType = 0
      end
      object SysvarPageNum: TppSystemVariable
        UserName = 'SysVarPageNo1'
        OnGetText = SysvarPageNumGetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 4763
        mmTop = 11377
        mmWidth = 12171
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Color = clGray
        Pen.Width = 2
        Weight = 1.250000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 26194
        mmWidth = 202936
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #1575#1589#1604' '#1608#1575#1605' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 116946
        mmTop = 31485
        mmWidth = 25135
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #1606#1608#1593' '#1608#1575#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 58208
        mmTop = 31485
        mmWidth = 30956
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #1578#1575#1585#1610#1582
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 35454
        mmTop = 31485
        mmWidth = 11906
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Color = clGray
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 38894
        mmWidth = 202936
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' '#1606#1575#1605' '#1662#1585#1587#1606#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 142611
        mmTop = 31485
        mmWidth = 42863
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #1605#1575#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 21431
        mmTop = 31485
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #1605#1576#1604#1594
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 265
        mmTop = 31485
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #1662#1585#1583#1575#1582#1578#1610' '#1587#1606#1608#1575#1578' '#1602#1576#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 89429
        mmTop = 31485
        mmWidth = 26723
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #1588#1605#1575#1585#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 48154
        mmTop = 31485
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #1662#1585#1583#1575#1582#1578' '#1591#1610' '#1587#1575#1604' '#1580#1575#1585#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 2381
        mmTop = 26194
        mmWidth = 33338
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #1603#1583' '#1662#1585#1587#1606#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 186796
        mmTop = 31485
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label8'
        OnGetText = ppLabel14GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #1578#1575#1585#1610#1582' '#1670#1575#1662
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 4763
        mmTop = 4763
        mmWidth = 10583
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 7938
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 1058
        mmWidth = 203300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipeline2
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Letter'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279000
          PrinterSetup.mmPaperWidth = 216000
          PrinterSetup.PaperSize = 1
          Units = utMillimeters
          Version = '10.06'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline2'
          object ppDetailBand2: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 6350
            mmPrintPosition = 0
            object ppDBText9: TppDBText
              UserName = 'DBText9'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'sumPrice'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6350
              mmLeft = 529
              mmTop = 0
              mmWidth = 20902
              BandType = 4
            end
            object ppDBText1: TppDBText
              UserName = 'DBText2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'InfoName_L1'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6350
              mmLeft = 21696
              mmTop = 0
              mmWidth = 13758
              BandType = 4
            end
          end
          object raCodeModule1: TraCodeModule
            ProgramStream = {00}
          end
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'FormInfoID'
      DataPipeline = ppDBPipeline1
      OutlineSettings.CreateNode = True
      NewPage = True
      ResetPageNo = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'PersonelNo'
      DataPipeline = ppDBPipeline1
      OutlineSettings.CreateNode = True
      NewPage = True
      ResetPageNo = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 8467
        mmPrintPosition = 0
        object ppLine2: TppLine
          UserName = 'Line2'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 1.000000000000000000
          mmHeight = 1323
          mmLeft = 35454
          mmTop = 6879
          mmWidth = 166952
          BandType = 3
          GroupNo = 0
        end
        object ppDBText2: TppDBText
          UserName = 'DBText1'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'PersonelNo'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6350
          mmLeft = 186796
          mmTop = 0
          mmWidth = 14552
          BandType = 3
          GroupNo = 0
        end
        object ppDBText4: TppDBText
          UserName = 'DBText4'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'name_l1'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Zar'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6350
          mmLeft = 142611
          mmTop = 0
          mmWidth = 42863
          BandType = 3
          GroupNo = 0
        end
        object ppDBText3: TppDBText
          UserName = 'DBText3'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'AidDate1_L1'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6350
          mmLeft = 35454
          mmTop = 0
          mmWidth = 11906
          BandType = 3
          GroupNo = 0
        end
        object ppDBText5: TppDBText
          UserName = 'DBText5'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'AidNo1'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6350
          mmLeft = 48154
          mmTop = 0
          mmWidth = 9525
          BandType = 3
          GroupNo = 0
        end
        object ppDBText6: TppDBText
          UserName = 'DBText6'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'LoanName_l1'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Zar'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 5821
          mmLeft = 58208
          mmTop = 0
          mmWidth = 30956
          BandType = 3
          GroupNo = 0
        end
        object ppDBText7: TppDBText
          UserName = 'DBText7'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'PaymentLoan'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6350
          mmLeft = 89429
          mmTop = 0
          mmWidth = 26723
          BandType = 3
          GroupNo = 0
        end
        object ppDBText8: TppDBText
          UserName = 'DBText8'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'EmployeeAmount'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6350
          mmLeft = 116946
          mmTop = 0
          mmWidth = 25135
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 13494
        mmPrintPosition = 0
        object ppLine4: TppLine
          UserName = 'Line4'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Pen.Color = clGray
          Pen.Width = 2
          Weight = 1.250000000000000000
          mmHeight = 2117
          mmLeft = 0
          mmTop = 1852
          mmWidth = 202936
          BandType = 5
          GroupNo = 0
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = ':'#1580#1605#1593' '#1605#1576#1604#1594
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 6085
          mmLeft = 187325
          mmTop = 2910
          mmWidth = 13494
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'sumPrice'
          DataPipeline = ppDBPipeline2
          DisplayFormat = '#,0;-#,0'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 6350
          mmLeft = 123296
          mmTop = 2646
          mmWidth = 62177
          BandType = 5
          GroupNo = 0
        end
        object ppLine5: TppLine
          UserName = 'Line5'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Pen.Color = clGray
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 2117
          mmLeft = 0
          mmTop = 9790
          mmWidth = 202936
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = srcItems
    UserName = 'DBPipeline2'
    Left = 712
    Top = 213
    MasterDataPipelineName = 'ppDBPipeline1'
  end
end

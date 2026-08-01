inherited SalaryList4Office3YearF: TSalaryList4Office3YearF
  Left = 345
  Top = 87
  Caption = #1604#1610#1587#1578' '#1605#1580#1605#1608#1593' '#1583#1585#1570#1605#1583' '#1581#1602#1608#1602' '#1603#1575#1585#1603#1606#1575#1606
  ClientWidth = 846
  OnResize = FormResize
  ExplicitWidth = 862
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Width = 846
    ExplicitTop = 419
    ExplicitWidth = 850
    inherited BtnReject: TBitBtn
      Left = 3
      Top = 6
      Height = 29
      ExplicitLeft = 3
      ExplicitTop = 6
      ExplicitHeight = 29
    end
    object DBNavigator2: TDBNavigator
      AlignWithMargins = True
      Left = 327
      Top = 3
      Width = 358
      Height = 35
      DataSource = srcSalary
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alClient
      Flat = True
      TabOrder = 1
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 246
      Top = 6
      Width = 75
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSendtoExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 2
    end
    object BitBtn5: TBitBtn
      AlignWithMargins = True
      Left = 84
      Top = 6
      Width = 75
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 3
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 165
      Top = 6
      Width = 75
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSearch_
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
    end
    object BitBtn7: TBitBtn
      AlignWithMargins = True
      Left = 772
      Top = 6
      Width = 75
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 5
    end
    object Button3: TButton
      AlignWithMargins = True
      Left = 691
      Top = 6
      Width = 75
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actPrint
      Align = alRight
      TabOrder = 6
    end
  end
  inherited Panel2: TPanel
    Width = 846
    ExplicitWidth = 850
    inherited ImgTemplate: TImage
      Left = 812
      ExplicitLeft = 812
    end
    inherited lblCaption: TLabel
      Left = 619
      Width = 208
      Height = 16
      Caption = #1604#1610#1587#1578' '#1605#1580#1605#1608#1593' '#1583#1585#1570#1605#1583' '#1581#1602#1608#1602' '#1603#1575#1585#1603#1606#1575#1606
      ExplicitLeft = 619
      ExplicitWidth = 208
    end
    object CmbArchiveID: TComboBox
      Left = 11
      Top = 17
      Width = 126
      Height = 21
      Color = 13431799
      TabOrder = 0
      Text = 'CmbArchiveID'
      OnChange = CmbArchiveIDChange
    end
  end
  inherited Panel3: TPanel
    Width = 846
    ExplicitWidth = 850
    ExplicitHeight = 366
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 850
      Height = 346
      Align = alClient
      Color = clCream
      DataSource = srcSalary
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = '_Row'
          Width = 28
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'InfoID'
          Width = 21
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OfficeName'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PersonelNO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Mobile'
          Width = 33
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PersonName'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fatherName_L1'
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'jobCode'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'jobName'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FunctionDay'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DayQuntity'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FunctionTime'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SumWage'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BonusPrise'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ContainTax'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TaxValue'
          Width = 33
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TaxPrice'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SumDec'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PayableSalary'
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BonusPayAble'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ContainInsourance'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sum23Dec'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PaymentBonus'
          Width = 75
          Visible = True
        end>
    end
    object SumGrid1: TSumGrid
      Left = 0
      Top = 346
      Width = 850
      Hint = #1582#1575#1604#1589' '#1593#1610#1583#1610
      Active = False
      Enable_Controls = True
      MasterGrid = DBGrid1
      FieldsName = 
        'FunctionDay;FunctionTime;SumWage;sum23Dec;ContainInsourance;Cont' +
        'ainTax;TaxValue;SumDec;PayableSalary;DayQuntity;BonusPrise;TaxPr' +
        'ice;PaymentBonus;BonusPayAble;'
    end
  end
  inherited ActionList: TActionList
    Left = 328
    Top = 112
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
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1610#1578
      OnExecute = actFilterExecute
    end
    object actFunctionShow: TAction
      Caption = #1603#1575#1585#1603#1585#1583
    end
    object actFish: TAction
      Caption = #1601#1610#1588' '#1581#1602#1608#1602
    end
    object actSMS: TAction
      Caption = #1575#1585#1587#1575#1604' '#1662#1610#1575#1605#1603
      OnExecute = actSMSExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 488
    Top = 113
  end
  object qrysalary: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'ArchiveID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'MounthFrom'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'MounthTo'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'PersonelStateFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PersonelStateTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'EmployTypeIDFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'EmployTypeIDTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'FromInfoID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ToInfoID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'FromPersonelNo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ToPersonelNo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'jobCodeFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'jobCodeTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT        FormsInfoOffice.InfoID, FormsInfoOffice.InfoName_L' +
        '1 AS OfficeName, FixedCalculated.PersonelNO, PersonelInfo.Mobile' +
        ', '
      
        '                         PersonelInfo.name_L1 + '#39' '#39' + PersonelIn' +
        'fo.lastName_L1 AS PersonName, PersonelInfo.fatherName_L1, FormsI' +
        'nfo_jobCode.InfoID AS jobCode, '
      
        '                         FormsInfo_jobCode.InfoName_L1 AS jobNam' +
        'e, Functions.FunctionDay, Functions.FunctionTime, SUM(CASE Showl' +
        'istKind WHEN 1 THEN price ELSE 0 END) '
      
        '                         AS SumWage, SUM(CASE WHEN (ShowlistKind' +
        ' IN (2, 4, 15, 14) AND bedbes = 1) THEN price ELSE 0 END) AS sum' +
        '23Dec, '
      
        '                         SUM(CASE ShowlistKind WHEN 3 THEN price' +
        ' ELSE 0 END) AS ContainInsourance, SUM(CASE WHEN (ShowlistKind =' +
        ' 11 AND bedbes = 0 AND CalCulateKind = 12) '
      
        '                         THEN price ELSE 0 END) AS ContainTax, S' +
        'UM(CASE WHEN (ShowlistKind = 11 AND bedbes = 2) THEN price ELSE ' +
        '0 END) AS TaxValue, '
      
        '                         SUM(CASE ShowlistKind WHEN 2 THEN price' +
        ' ELSE 0 END) + SUM(CASE WHEN ShowlistKind = 11 AND bedbes = 2 TH' +
        'EN price ELSE 0 END) AS SumDec, '
      
        '                         SUM(CASE ShowlistKind WHEN 1 THEN price' +
        ' ELSE 0 END) - (SUM(CASE ShowlistKind WHEN 2 THEN price ELSE 0 E' +
        'ND) + SUM(CASE WHEN ShowlistKind = 11 AND'
      
        '                          bedbes = 2 THEN price ELSE 0 END)) AS ' +
        'PayableSalary, List_eydi.DayQuntity, List_eydi.BonusPrise, List_' +
        'eydi.TaxPrice, List_eydi.PaymentBonus, '
      '                         List_eydi.BonusPayAble'
      'FROM            Pay.Interdicts LEFT OUTER JOIN'
      
        '                         Pay.FormsInfo AS FormsInfoEmployTypeID ' +
        'ON Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID RI' +
        'GHT OUTER JOIN'
      
        '                             (SELECT        PersonelNo, SUM(Func' +
        'tionTime) AS FunctionTime, SUM(FunctionDay) AS FunctionDay'
      
        '                                FROM Pay.Functions AS Functions_' +
        '1'
      
        '                                GROUP BY PersonelNo) AS Function' +
        's INNER JOIN'
      
        '                         Pay.PersonelInfo ON Functions.PersonelN' +
        'o = PersonelInfo.PersonelNo RIGHT OUTER JOIN'
      '                         Pay.FixedCalculated LEFT OUTER JOIN'
      
        '                             (SELECT        Bonus.PersonelNo, Bo' +
        'nus.DayQuntity, Bonus.BonusPrise, Bonus.TaxPrice, ISNULL(PayBonu' +
        's.EmployeeAmount, 0) '
      
        '                                                         AS Paym' +
        'entBonus, Bonus.BonusPayAble - ISNULL(PayBonus.EmployeeAmount, 0' +
        ') AS BonusPayAble'
      
        '                                FROM            (SELECT        P' +
        'ersonelDecExt_1.PersonelNo, SUM(PersonelDecExt_1.EmployeeAmount)' +
        ' AS EmployeeAmount'
      
        '                                                           FROM ' +
        '           Pay.PersonelDecExt AS PersonelDecExt_1 INNER JOIN'
      
        '                                                                ' +
        '                    Pay.FormsInfo AS FormsInfo_1 ON PersonelDecE' +
        'xt_1.FormInfoID = FormsInfo_1.FormInfoID'
      
        '                                                           WHERE' +
        '        (FormsInfo_1.FormType = 58)'
      
        '                                                           GROUP' +
        ' BY PersonelDecExt_1.PersonelNo) AS PayBonus RIGHT OUTER JOIN'
      
        '                                                             (SE' +
        'LECT        PersonelNo, SUM(DayQuntity) AS DayQuntity, ROUND(SUM' +
        '(ISNULL(EmployeeAmount, 0)), 0) AS BonusPrise, '
      
        '                                                                ' +
        '                         ROUND(SUM(PaymentLoan), 0) AS TaxPrice,' +
        ' ROUND(SUM(EmployeeAmount - PaymentLoan), 0) AS BonusPayAble'
      
        '                                                                ' +
        'FROM Pay.PersonelDecExt'
      
        '                                                                ' +
        'WHERE        (FormInfoID IN'
      
        '                                                                ' +
        '                             (SELECT        FormInfoID'
      
        '                                                                ' +
        '                                FROM Pay.FormsInfo'
      
        '                                                                ' +
        '                                WHERE        (FormType = 59))) A' +
        'ND (EndDate IS NULL OR'
      
        '                                                                ' +
        '                         EndDate = '#39'        '#39' OR'
      
        '                                                                ' +
        '                         EndDate BETWEEN '#39#39' AND '#39'1999/12/29'#39')'
      
        '                                                                ' +
        'GROUP BY PersonelNo) AS Bonus ON PayBonus.PersonelNo = Bonus.Per' +
        'sonelNo'
      
        '                                ) AS List_eydi ON FixedCalculate' +
        'd.PersonelNO = List_eydi.PersonelNo ON '
      
        '                         PersonelInfo.PersonelNo = FixedCalculat' +
        'ed.PersonelNO ON Pay.Interdicts.PersonelNo = FixedCalculated.Per' +
        'sonelNO LEFT OUTER JOIN'
      
        '                         Pay.FormsInfo AS FormsInfoPersonelState' +
        ' ON PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfo' +
        'ID LEFT OUTER JOIN'
      
        '                         Pay.FormsInfo AS FormsInfo_2 ON FixedCa' +
        'lculated.SalaryID = FormsInfo_2.FormInfoID LEFT OUTER JOIN'
      
        '                         Pay.FormsInfo AS FormsInfoOffice ON Int' +
        'erdicts.OfficeCode = FormsInfoOffice.FormInfoID AND Interdicts.P' +
        'ersonelNo = FixedCalculated.PersonelNO LEFT OUTER JOIN'
      
        '                         Pay.FormsInfo AS FormsInfo_jobCode ON I' +
        'nterdicts.jobCode = FormsInfo_jobCode.FormInfoID'
      
        'WHERE        (FixedCalculated.ArchiveID = :ArchiveID) AND (Fixed' +
        'Calculated.Mounth BETWEEN :MounthFrom AND :MounthTo) AND (FormsI' +
        'nfoPersonelState.InfoID BETWEEN'
      
        '                          :PersonelStateFrom AND :PersonelStateT' +
        'o) AND (FormsInfoEmployTypeID.InfoID BETWEEN :EmployTypeIDFrom A' +
        'ND :EmployTypeIDTo) AND '
      
        '                         (Interdicts.InterdicType = 0) AND (Inte' +
        'rdicts.State < 50) AND (FormsInfoOffice.InfoID BETWEEN :FromInfo' +
        'ID AND :ToInfoID) AND '
      
        '                         (FixedCalculated.PersonelNO BETWEEN :Fr' +
        'omPersonelNo AND :ToPersonelNo) AND (FormsInfo_jobCode.InfoID BE' +
        'TWEEN :jobCodeFrom AND :jobCodeTo)'
      
        'GROUP BY FormsInfoOffice.InfoID, FixedCalculated.PersonelNO, Per' +
        'sonelInfo.Mobile, FormsInfoOffice.InfoName_L1, PersonelInfo.name' +
        '_L1 + '#39' '#39' + PersonelInfo.lastName_L1, '
      
        '                         PersonelInfo.fatherName_L1, FormsInfo_j' +
        'obCode.InfoID, FormsInfo_jobCode.InfoName_L1, Functions.Function' +
        'Day, Functions.FunctionTime, List_eydi.DayQuntity, '
      
        '                         List_eydi.BonusPrise, List_eydi.TaxPric' +
        'e, List_eydi.PaymentBonus, List_eydi.BonusPayAble'
      ''
      'ORDER BY FixedCalculated.PersonelNO')
    Left = 80
    Top = 232
    object qrysalary_Row: TIntegerField
      DisplayLabel = #1585#1583#1610#1601
      FieldKind = fkCalculated
      FieldName = '_Row'
      Calculated = True
    end
    object qrysalaryInfoID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583
      FieldName = 'InfoID'
    end
    object qrysalaryOfficeName: TStringField
      Tag = 3
      DisplayLabel = #1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
      FieldName = 'OfficeName'
      Size = 255
    end
    object qrysalaryPersonelNO: TIntegerField
      Tag = 3
      DisplayLabel = #1588'. '#1662#1585#1587#1606#1604
      FieldName = 'PersonelNO'
    end
    object qrysalaryMobile: TStringField
      Tag = 3
      DisplayLabel = #1607#1605#1585#1575#1607
      FieldName = 'Mobile'
    end
    object qrysalaryPersonName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1662#1585#1587#1606#1604
      FieldName = 'PersonName'
      ReadOnly = True
      Size = 56
    end
    object qrysalaryfatherName_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1662#1583#1585
      FieldName = 'fatherName_L1'
      Size = 25
    end
    object qrysalaryjobCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583#1662#1587#1578' '#1587#1575#1586#1605#1575#1606#1610
      FieldName = 'jobCode'
    end
    object qrysalaryjobName: TStringField
      Tag = 3
      DisplayLabel = #1662#1587#1578' '#1587#1575#1586#1605#1575#1606#1610
      FieldName = 'jobName'
      Size = 255
    end
    object qrysalaryFunctionDay: TFloatField
      Tag = 3
      DisplayLabel = #1585#1608#1586#1607#1575#1610' '#1603#1575#1585#1603#1585#1583
      FieldName = 'FunctionDay'
      ReadOnly = True
    end
    object qrysalaryDayQuntity: TFloatField
      Tag = 3
      DisplayLabel = #1603#1575#1585#1603#1585#1583' '#1593#1610#1583#1610
      FieldName = 'DayQuntity'
      ReadOnly = True
    end
    object qrysalaryFunctionTime: TFloatField
      Tag = 3
      DisplayLabel = #1587#1575#1593#1575#1578' '#1603#1575#1585#1603#1585#1583
      FieldName = 'FunctionTime'
      ReadOnly = True
    end
    object qrysalarySumWage: TBCDField
      Tag = 3
      DisplayLabel = #1580#1605#1593' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1610#1575
      FieldName = 'SumWage'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalaryBonusPrise: TBCDField
      Tag = 3
      DisplayLabel = #1606#1575#1582#1575#1604#1589' '#1593#1610#1583#1610
      FieldName = 'BonusPrise'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalaryContainTax: TBCDField
      Tag = 3
      DisplayLabel = 'A'
      FieldName = 'ContainTax'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalaryTaxValue: TBCDField
      Tag = 3
      DisplayLabel = #1605#1575#1604#1610#1575#1578
      FieldName = 'TaxValue'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalaryTaxPrice: TBCDField
      Tag = 3
      DisplayLabel = #1605#1575#1604#1610#1575#1578' '#1593#1610#1583#1610
      FieldName = 'TaxPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalarySumDec: TBCDField
      Tag = 3
      DisplayLabel = #1580#1605#1593' '#1603#1587#1608#1585#1575#1578
      FieldName = 'SumDec'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalaryPayableSalary: TBCDField
      Tag = 3
      DisplayLabel = #1581#1602#1608#1602' '#1602#1575#1576#1604' '#1662#1585#1583#1575#1582#1578
      FieldName = 'PayableSalary'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalaryBonusPayAble: TBCDField
      Tag = 3
      DisplayLabel = #1582#1575#1604#1589' '#1593#1610#1583#1610
      FieldName = 'BonusPayAble'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalaryContainInsourance: TBCDField
      Tag = 3
      DisplayLabel = #1605#1588#1605#1608#1604' '#1576#1610#1605#1607
      FieldName = 'ContainInsourance'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalarysum23Dec: TBCDField
      Tag = 3
      DisplayLabel = #1576#1610#1605#1607' '#1603#1575#1585#1601#1585#1605#1575
      FieldName = 'sum23Dec'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalaryPaymentBonus: TBCDField
      Tag = 3
      DisplayLabel = #1593#1604#1610' '#1575#1604#1581#1587#1575#1576' '#1593#1610#1583#1610
      FieldName = 'PaymentBonus'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object srcSalary: TDataSource
    DataSet = qrysalary
    Left = 120
    Top = 152
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcSalary
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 704
    Top = 181
    object ppDBPipeline1ppField1: TppField
      FieldAlias = '_Row'
      FieldName = '_Row'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'InfoID'
      FieldName = 'InfoID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'OfficeName'
      FieldName = 'OfficeName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'PersonelNO'
      FieldName = 'PersonelNO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'Mobile'
      FieldName = 'Mobile'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'PersonName'
      FieldName = 'PersonName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'fatherName_L1'
      FieldName = 'fatherName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'jobCode'
      FieldName = 'jobCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'jobName'
      FieldName = 'jobName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'FunctionDay'
      FieldName = 'FunctionDay'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'FunctionTime'
      FieldName = 'FunctionTime'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'SumWage'
      FieldName = 'SumWage'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'sum23Dec'
      FieldName = 'sum23Dec'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'ContainInsourance'
      FieldName = 'ContainInsourance'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'ContainTax'
      FieldName = 'ContainTax'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'TaxValue'
      FieldName = 'TaxValue'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'SumDec'
      FieldName = 'SumDec'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'PayableSalary'
      FieldName = 'PayableSalary'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'DayQuntity'
      FieldName = 'DayQuntity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'BonusPrise'
      FieldName = 'BonusPrise'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'TaxPrice'
      FieldName = 'TaxPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = 'PaymentBonus'
      FieldName = 'PaymentBonus'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = 'BonusPayAble'
      FieldName = 'BonusPayAble'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'D:\Projects\Fara2010\Salary\Exe\Report\SalaryList4Office3YearF.r' +
      'tm'
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 704
    Top = 256
    Version = '22.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 27252
      mmPrintPosition = 0
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        OnGetText = ppSystemVariable1GetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 2381
        mmTop = 8731
        mmWidth = 6350
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel46: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label36'
        OnGetText = ppLabel46GetText
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1670#1575#1662
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6435
        mmLeft = 2381
        mmTop = 2381
        mmWidth = 11896
        BandType = 0
        LayerName = Foreground
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 264584
        mmTop = 17992
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        ParentWidth = True
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 10054
        mmLeft = 0
        mmTop = 16933
        mmWidth = 284300
        BandType = 0
        LayerName = Foreground
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11113
        mmLeft = 252413
        mmTop = 17198
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine22: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line56'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 20902
        mmLeft = 241830
        mmTop = 16933
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine27: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line601'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10054
        mmLeft = 228071
        mmTop = 17198
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine18: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10319
        mmLeft = 209286
        mmTop = 16933
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine19: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10319
        mmLeft = 195527
        mmTop = 16933
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line55'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10319
        mmLeft = 182827
        mmTop = 16933
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line18'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10319
        mmLeft = 169069
        mmTop = 16933
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine20: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10319
        mmLeft = 153723
        mmTop = 16933
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine21: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line102'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10319
        mmLeft = 137584
        mmTop = 16933
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object ppLine23: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11377
        mmLeft = 123031
        mmTop = 17198
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine33: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line33'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10319
        mmLeft = 104246
        mmTop = 16933
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine35: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line103'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10319
        mmLeft = 62442
        mmTop = 16933
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine36: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line36'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10319
        mmLeft = 49213
        mmTop = 16933
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine37: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line37'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 35190
        mmTop = 17198
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line15'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10319
        mmLeft = 21431
        mmTop = 17198
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label22'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1593#1604#1740' '#1575#1604#1581#1587#1575#1576' '#1593#1610#1583#1740
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 2910
        mmTop = 19579
        mmWidth = 16140
        BandType = 0
        LayerName = Foreground
      end
      object d4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'd4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1575#1604#1610#1575#1578' '#1593#1610#1583#1740
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 21167
        mmTop = 19579
        mmWidth = 13758
        BandType = 0
        LayerName = Foreground
      end
      object d3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'd3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1575#1582#1575#1604#1589' '#1593#1610#1583#1740
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 35190
        mmTop = 19579
        mmWidth = 14023
        BandType = 0
        LayerName = Foreground
      end
      object d2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'd2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1705#1575#1585#1705#1585#1583' '#1593#1610#1583#1740
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 49477
        mmTop = 19579
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground
      end
      object d1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'd1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' '#1580#1605#1593' '#1705#1587#1608#1585#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4699
        mmLeft = 62971
        mmTop = 19844
        mmWidth = 14023
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1588#1605#1608#1604' '#1576#1610#1605#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4699
        mmLeft = 77258
        mmTop = 19579
        mmWidth = 13494
        BandType = 0
        LayerName = Foreground
      end
      object w14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'w14'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1576#1610#1605#1607' '#1603#1575#1585#1601#1585#1605#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 92075
        mmTop = 19844
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label21'
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1610#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 104511
        mmTop = 19579
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground
      end
      object w5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'w5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1582#1575#1604#1589' '#1593#1610#1583#1740
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 124354
        mmTop = 19844
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground
      end
      object w3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'w3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1575#1604#1610#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 156369
        mmTop = 19844
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground
      end
      object w10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'w10'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1588#1605#1608#1604' '#1605#1575#1604#1610#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4498
        mmLeft = 169598
        mmTop = 19579
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground
      end
      object w9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'w9'
        Save = True
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' '#1587#1575#1593#1575#1578' '#1705#1575#1585#1705#1585#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 183621
        mmTop = 19579
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label23'
        Border.mmPadding = 0
        Caption = #1585#1608#1586#1607#1575#1740' '#1705#1575#1585#1705#1585#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 195792
        mmTop = 19844
        mmWidth = 13494
        BandType = 0
        LayerName = Foreground
      end
      object w4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'w4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1581#1602#1608#1602' '#1602#1575#1576#1604' '#1662#1585#1583#1575#1582#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 137584
        mmTop = 19844
        mmWidth = 16404
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label42'
        Border.mmPadding = 0
        Caption = #1662#1587#1578' '#1587#1575#1586#1605#1575#1606#1740
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4699
        mmLeft = 210344
        mmTop = 20108
        mmWidth = 16669
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label37'
        Border.mmPadding = 0
        Caption = #1705#1583#1662#1587#1578' '#1587#1575#1586#1605#1575#1606#1740
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 228336
        mmTop = 20108
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label35'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1662#1583#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4826
        mmLeft = 243153
        mmTop = 19844
        mmWidth = 7154
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588'.'#1662#1585#1587#1606#1604#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4064
        mmLeft = 252678
        mmTop = 19844
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel43: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label25'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1662#1585#1587#1606#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 264319
        mmTop = 20108
        mmWidth = 19050
        BandType = 0
        LayerName = Foreground
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line16'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 261938
        mmTop = 16933
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine38: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line38'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10319
        mmLeft = 91281
        mmTop = 16933
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine34: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line34'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10319
        mmLeft = 77258
        mmTop = 16933
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel45: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        OnGetText = ppLabel45GetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 14
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7408
        mmLeft = 110861
        mmTop = 3175
        mmWidth = 61913
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583' '#1608#1593#1606#1608#1575#1606' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 254001
        mmTop = 10848
        mmWidth = 29104
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578' '#1581#1602#1608#1602' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6604
        mmLeft = 264848
        mmTop = 2910
        mmWidth = 17949
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'InfoID'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 241036
        mmTop = 10848
        mmWidth = 12435
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText21'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'OfficeName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 222514
        mmTop = 10848
        mmWidth = 18373
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand2: TppDetailBand
      Border.mmPadding = 0
      PrintCount = 20
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line21'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 91281
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line22'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 195527
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine31: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line32'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 77258
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine32: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line35'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 62442
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 104246
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line101'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 182827
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'PersonName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4064
        mmLeft = 263261
        mmTop = 529
        mmWidth = 19844
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'PersonelNO'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4487
        mmLeft = 252413
        mmTop = 529
        mmWidth = 9260
        BandType = 4
        LayerName = Foreground
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line17'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 261938
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line19'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 252413
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine26: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line26'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 228071
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine28: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line28'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 209286
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine29: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line29'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 169069
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine30: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line30'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 153723
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine39: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line301'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 137584
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine40: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line40'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 123031
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine41: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line41'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 21431
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine42: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line42'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 35190
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine43: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line43'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 49213
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine44: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line39'
        Border.mmPadding = 0
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 794
        mmTop = 6350
        mmWidth = 282311
        BandType = 4
        LayerName = Foreground
      end
      object ppLine24: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line24'
        Border.mmPadding = 0
        Pen.Width = 2
        ParentHeight = True
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 7144
        mmLeft = 0
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine17: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line23'
        Border.mmPadding = 0
        Pen.Width = 2
        ParentHeight = True
        Position = lpRight
        Weight = 1.500000000000000000
        mmHeight = 7144
        mmLeft = 281782
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'fatherName_L1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4487
        mmLeft = 241830
        mmTop = 1058
        mmWidth = 9790
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'jobCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4487
        mmLeft = 228336
        mmTop = 1323
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'jobName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4487
        mmLeft = 210344
        mmTop = 1058
        mmWidth = 17463
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'FunctionDay'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4487
        mmLeft = 196586
        mmTop = 1058
        mmWidth = 12700
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'FunctionTime'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4487
        mmLeft = 183621
        mmTop = 794
        mmWidth = 11377
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'ContainTax'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4487
        mmLeft = 169598
        mmTop = 1058
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'TaxValue'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4487
        mmLeft = 154517
        mmTop = 1058
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText101'
        Border.mmPadding = 0
        DataField = 'PayableSalary'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4487
        mmLeft = 138113
        mmTop = 1323
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = 'BonusPayAble'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4487
        mmLeft = 123296
        mmTop = 1058
        mmWidth = 14288
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        Border.mmPadding = 0
        DataField = 'SumWage'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4487
        mmLeft = 104511
        mmTop = 1058
        mmWidth = 18256
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText102'
        Border.mmPadding = 0
        DataField = 'sum23Dec'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4487
        mmLeft = 91546
        mmTop = 1058
        mmWidth = 12171
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText15'
        Border.mmPadding = 0
        DataField = 'ContainInsourance'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4487
        mmLeft = 78052
        mmTop = 1058
        mmWidth = 12700
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText16'
        Border.mmPadding = 0
        DataField = 'SumDec'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4487
        mmLeft = 62971
        mmTop = 1323
        mmWidth = 14023
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText17'
        Border.mmPadding = 0
        DataField = 'DayQuntity'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4487
        mmLeft = 50271
        mmTop = 794
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText18'
        Border.mmPadding = 0
        DataField = 'BonusPrise'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4487
        mmLeft = 35719
        mmTop = 1058
        mmWidth = 12965
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText19'
        Border.mmPadding = 0
        DataField = 'TaxPrice'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4487
        mmLeft = 22225
        mmTop = 794
        mmWidth = 12171
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText20'
        Border.mmPadding = 0
        DataField = 'PaymentBonus'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4487
        mmLeft = 1058
        mmTop = 1323
        mmWidth = 19315
        BandType = 4
        LayerName = Foreground
      end
      object ppLine25: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line25'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 241830
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 26723
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        Shape = stRoundRect
        mmHeight = 7938
        mmLeft = 0
        mmTop = 0
        mmWidth = 283369
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1603#1604':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7144
        mmLeft = 266965
        mmTop = 0
        mmWidth = 15081
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc32: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc32'
        Border.mmPadding = 0
        DataField = 'BonusPrise'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4487
        mmLeft = 35719
        mmTop = 1852
        mmWidth = 13494
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc36: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc36'
        Border.mmPadding = 0
        DataField = 'PaymentBonus'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4487
        mmLeft = 794
        mmTop = 1852
        mmWidth = 19579
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc38: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc38'
        Border.mmPadding = 0
        DataField = 'TaxPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4487
        mmLeft = 22225
        mmTop = 1852
        mmWidth = 12700
        BandType = 8
        LayerName = Foreground
      end
      object ppLine76: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line76'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 21167
        mmTop = 0
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 35190
        mmTop = 0
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 49477
        mmTop = 529
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc9: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc9'
        Border.mmPadding = 0
        DataField = 'SumWage'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4487
        mmLeft = 104511
        mmTop = 1852
        mmWidth = 18256
        BandType = 8
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 62442
        mmTop = 0
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc10: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc10'
        Border.mmPadding = 0
        DataField = 'DayQuntity'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4487
        mmLeft = 49213
        mmTop = 1852
        mmWidth = 13494
        BandType = 8
        LayerName = Foreground
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line27'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 77258
        mmTop = 0
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc11: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc101'
        Border.mmPadding = 0
        DataField = 'SumDec'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4487
        mmLeft = 63236
        mmTop = 1852
        mmWidth = 13494
        BandType = 8
        LayerName = Foreground
      end
      object ppLine45: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line48'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 123031
        mmTop = 0
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
      object ppLine46: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line49'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 137584
        mmTop = 0
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
      object ppLine47: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line50'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 153723
        mmTop = 0
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
      object ppLine48: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line501'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 169069
        mmTop = 0
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
      object ppRegion1: TppRegion
        DesignLayer = ppDesignLayer1
        UserName = 'Region1'
        Caption = 'Region1'
        mmHeight = 14552
        mmLeft = 0
        mmTop = 8202
        mmWidth = 283105
        BandType = 8
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label5'
          Border.mmPadding = 0
          Caption = #1578#1606#1592#1610#1605' '#1603#1606#1606#1583#1607
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'zar'
          Font.Size = 9
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          Visible = False
          mmHeight = 5292
          mmLeft = 269346
          mmTop = 9260
          mmWidth = 10848
          BandType = 8
          LayerName = Foreground
        end
        object TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line3'
          Border.mmPadding = 0
          Position = lpLeft
          Visible = False
          Weight = 0.750000000000000000
          mmHeight = 14817
          mmLeft = 123031
          mmTop = 8202
          mmWidth = 1058
          BandType = 8
          LayerName = Foreground
        end
        object TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label9'
          Border.mmPadding = 0
          Caption = #1578#1575#1610#1610#1583' '#1603#1606#1606#1583#1607
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'zar'
          Font.Size = 9
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          Visible = False
          mmHeight = 5292
          mmLeft = 109802
          mmTop = 9260
          mmWidth = 10319
          BandType = 8
          LayerName = Foreground
        end
        object TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line13'
          Border.mmPadding = 0
          Position = lpLeft
          Visible = False
          Weight = 0.750000000000000000
          mmHeight = 13758
          mmLeft = 212105
          mmTop = 8996
          mmWidth = 1000
          BandType = 8
          LayerName = Foreground
        end
        object TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line45'
          Border.mmPadding = 0
          Position = lpLeft
          Visible = False
          Weight = 0.750000000000000000
          mmHeight = 13758
          mmLeft = 212105
          mmTop = 8996
          mmWidth = 1000
          BandType = 8
          LayerName = Foreground
        end
        object TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line47'
          Border.mmPadding = 0
          Position = lpLeft
          Visible = False
          Weight = 0.750000000000000000
          mmHeight = 13758
          mmLeft = 212105
          mmTop = 8996
          mmWidth = 1000
          BandType = 8
          LayerName = Foreground
        end
        object TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line52'
          Border.mmPadding = 0
          Position = lpLeft
          Visible = False
          Weight = 0.750000000000000000
          mmHeight = 13758
          mmLeft = 212105
          mmTop = 8996
          mmWidth = 1000
          BandType = 8
          LayerName = Foreground
        end
        object TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label10'
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'zar'
          Font.Size = 9
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 5292
          mmLeft = 16351
          mmTop = 0
          mmWidth = 847
          BandType = 8
          LayerName = Foreground
        end
        object TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label8'
          Border.mmPadding = 0
          Caption = #1578#1606#1592#1610#1605' '#1603#1606#1606#1583#1607
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'zar'
          Font.Size = 9
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          Visible = False
          mmHeight = 5292
          mmLeft = 271056
          mmTop = 9292
          mmWidth = 11049
          BandType = 8
          LayerName = Foreground
        end
        object TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line62'
          Border.mmPadding = 0
          Position = lpLeft
          Visible = False
          Weight = 0.750000000000000000
          mmHeight = 13758
          mmLeft = 212105
          mmTop = 8996
          mmWidth = 1000
          BandType = 8
          LayerName = Foreground
        end
        object TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label11'
          Border.mmPadding = 0
          Caption = #1578#1575#1610#1610#1583' '#1603#1606#1606#1583#1607
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'zar'
          Font.Size = 9
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          Visible = False
          mmHeight = 5292
          mmLeft = 200860
          mmTop = 9292
          mmWidth = 10245
          BandType = 8
          LayerName = Foreground
        end
        object TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line63'
          Border.mmPadding = 0
          Position = lpLeft
          Visible = False
          Weight = 0.750000000000000000
          mmHeight = 13758
          mmLeft = 141105
          mmTop = 8996
          mmWidth = 1000
          BandType = 8
          LayerName = Foreground
        end
        object TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label14'
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'zar'
          Font.Size = 9
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          Visible = False
          mmHeight = 5292
          mmLeft = 139258
          mmTop = 9292
          mmWidth = 847
          BandType = 8
          LayerName = Foreground
        end
        object TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line66'
          Border.mmPadding = 0
          Position = lpLeft
          Visible = False
          Weight = 0.750000000000000000
          mmHeight = 13758
          mmLeft = 70105
          mmTop = 8996
          mmWidth = 1000
          BandType = 8
          LayerName = Foreground
        end
        object TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label15'
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'zar'
          Font.Size = 9
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 5292
          mmLeft = 16351
          mmTop = 0
          mmWidth = 847
          BandType = 8
          LayerName = Foreground
        end
        object TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label16'
          Border.mmPadding = 0
          Caption = #1578#1606#1592#1610#1605' '#1603#1606#1606#1583#1607
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'zar'
          Font.Size = 9
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 5292
          mmLeft = 271056
          mmTop = 9292
          mmWidth = 11049
          BandType = 8
          LayerName = Foreground
        end
        object TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line67'
          Border.mmPadding = 0
          Position = lpLeft
          Visible = False
          Weight = 0.750000000000000000
          mmHeight = 13758
          mmLeft = 212105
          mmTop = 8996
          mmWidth = 1000
          BandType = 8
          LayerName = Foreground
        end
        object TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label18'
          Border.mmPadding = 0
          Caption = #1578#1575#1610#1610#1583' '#1603#1606#1606#1583#1607
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'zar'
          Font.Size = 9
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 5292
          mmLeft = 129117
          mmTop = 9260
          mmWidth = 10319
          BandType = 8
          LayerName = Foreground
        end
        object TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line68'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 13758
          mmLeft = 141105
          mmTop = 8996
          mmWidth = 1000
          BandType = 8
          LayerName = Foreground
        end
        object TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label19'
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'zar'
          Font.Size = 9
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 5292
          mmLeft = 139258
          mmTop = 9292
          mmWidth = 847
          BandType = 8
          LayerName = Foreground
        end
        object TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line69'
          Border.mmPadding = 0
          Position = lpLeft
          Visible = False
          Weight = 0.750000000000000000
          mmHeight = 13758
          mmLeft = 70105
          mmTop = 8996
          mmWidth = 1000
          BandType = 8
          LayerName = Foreground
        end
        object TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label20'
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'zar'
          Font.Size = 9
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 5292
          mmLeft = 16351
          mmTop = 0
          mmWidth = 847
          BandType = 8
          LayerName = Foreground
        end
        object TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label24'
          Border.mmPadding = 0
          Caption = #1578#1606#1592#1610#1605' '#1603#1606#1606#1583#1607
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'zar'
          Font.Size = 9
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 5292
          mmLeft = 6149
          mmTop = 0
          mmWidth = 11049
          BandType = 8
          LayerName = Foreground
        end
        object TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label26'
          Border.mmPadding = 0
          Caption = #1578#1606#1592#1610#1605' '#1603#1606#1606#1583#1607
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'zar'
          Font.Size = 9
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 5292
          mmLeft = 6149
          mmTop = 0
          mmWidth = 11049
          BandType = 8
          LayerName = Foreground
        end
        object ppRecFooterLine: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line72'
          Border.mmPadding = 0
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 0
          mmTop = 8202
          mmWidth = 283105
          BandType = 8
          LayerName = Foreground
        end
      end
      object ppLine49: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 104246
        mmTop = 265
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
      object ppLine50: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 182827
        mmTop = 0
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc19: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc19'
        Border.mmPadding = 0
        DataField = 'ContainInsourance'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4487
        mmLeft = 77258
        mmTop = 1852
        mmWidth = 13494
        BandType = 8
        LayerName = Foreground
      end
      object ppLine62: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line65'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 91281
        mmTop = 0
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc20: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc20'
        Border.mmPadding = 0
        DataField = 'sum23Dec'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4487
        mmLeft = 92075
        mmTop = 1852
        mmWidth = 11642
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc8: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc4'
        Border.mmPadding = 0
        DataField = 'BonusPayAble'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4498
        mmLeft = 124354
        mmTop = 1852
        mmWidth = 12965
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        Border.mmPadding = 0
        DataField = 'PayableSalary'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4498
        mmLeft = 138113
        mmTop = 1588
        mmWidth = 15346
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc6: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc6'
        Border.mmPadding = 0
        DataField = 'TaxValue'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4498
        mmLeft = 154252
        mmTop = 1323
        mmWidth = 13758
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc7: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc7'
        Border.mmPadding = 0
        DataField = 'ContainTax'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4498
        mmLeft = 170127
        mmTop = 1588
        mmWidth = 12435
        BandType = 8
        LayerName = Foreground
      end
      object ppLine64: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line31'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 209286
        mmTop = 265
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc23: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc23'
        Border.mmPadding = 0
        DataField = 'FunctionDay'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4498
        mmLeft = 196057
        mmTop = 1323
        mmWidth = 12965
        BandType = 8
        LayerName = Foreground
      end
      object ppLine65: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line51'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 195527
        mmTop = 265
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 24077
      mmPrintPosition = 0
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape3'
        Shape = stRoundRect
        mmHeight = 7938
        mmLeft = 0
        mmTop = 0
        mmWidth = 283105
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel49: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label27'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1603#1604':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6350
        mmLeft = 212196
        mmTop = 1058
        mmWidth = 11377
        BandType = 7
        LayerName = Foreground
      end
      object ppLine58: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line58'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8996
        mmLeft = 47361
        mmTop = 0
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppLine60: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line60'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8996
        mmLeft = 21167
        mmTop = 0
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppLine61: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line61'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8996
        mmLeft = 35190
        mmTop = 0
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'PaymentBonus'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4487
        mmLeft = 794
        mmTop = 1588
        mmWidth = 20373
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'PersonelNO'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 252413
        mmTop = 1058
        mmWidth = 11377
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc5: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc5'
        Border.mmPadding = 0
        DataField = 'TaxPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4487
        mmLeft = 21696
        mmTop = 1588
        mmWidth = 12700
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc4: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = '_TaxInvolved1'
        Border.mmPadding = 0
        DataField = 'BonusPrise'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4487
        mmLeft = 35719
        mmTop = 1588
        mmWidth = 11113
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1593#1583#1575#1583' '#1662#1585#1587#1606#1604': '#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5969
        mmLeft = 264584
        mmTop = 1058
        mmWidth = 17463
        BandType = 7
        LayerName = Foreground
      end
      object ppRegion2: TppRegion
        DesignLayer = ppDesignLayer1
        UserName = 'Region2'
        Caption = 'Region2'
        mmHeight = 15875
        mmLeft = 0
        mmTop = 8202
        mmWidth = 283105
        BandType = 7
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line64'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 15081
          mmLeft = 123296
          mmTop = 8202
          mmWidth = 1058
          BandType = 7
          LayerName = Foreground
        end
        object TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label3'
          Border.mmPadding = 0
          Caption = #1578#1575#1610#1610#1583' '#1603#1606#1606#1583#1607
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'zar'
          Font.Size = 9
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 5292
          mmLeft = 109802
          mmTop = 9260
          mmWidth = 10319
          BandType = 7
          LayerName = Foreground
        end
        object TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label7'
          Border.mmPadding = 0
          Caption = #1578#1606#1592#1610#1605' '#1603#1606#1606#1583#1607
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'zar'
          Font.Size = 9
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 5292
          mmLeft = 269346
          mmTop = 9260
          mmWidth = 10848
          BandType = 7
          LayerName = Foreground
        end
        object ppRecFooterLine2: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line73'
          Border.mmPadding = 0
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 0
          mmTop = 8731
          mmWidth = 283105
          BandType = 7
          LayerName = Foreground
        end
      end
      object ppLine51: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line20'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8996
        mmLeft = 60854
        mmTop = 0
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc12: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc12'
        Border.mmPadding = 0
        DataField = 'DayQuntity'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4487
        mmLeft = 47890
        mmTop = 1588
        mmWidth = 12435
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc13: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc13'
        Border.mmPadding = 0
        DataField = 'SumDec'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4487
        mmLeft = 61648
        mmTop = 1588
        mmWidth = 15081
        BandType = 7
        LayerName = Foreground
      end
      object ppLine52: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line201'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 77258
        mmTop = 0
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppLine53: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line53'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 123296
        mmTop = 0
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc14: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc14'
        Border.mmPadding = 0
        DataField = 'SumWage'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4487
        mmLeft = 104511
        mmTop = 1588
        mmWidth = 18256
        BandType = 7
        LayerName = Foreground
      end
      object ppLine54: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line54'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 104511
        mmTop = 0
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppLine55: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line44'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 138113
        mmTop = 529
        mmWidth = 1323
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc16: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc16'
        Border.mmPadding = 0
        DataField = 'PayableSalary'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4487
        mmLeft = 139171
        mmTop = 1588
        mmWidth = 14288
        BandType = 7
        LayerName = Foreground
      end
      object ppLine56: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line46'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 153988
        mmTop = 529
        mmWidth = 1323
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc17: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc17'
        Border.mmPadding = 0
        DataField = 'TaxValue'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4487
        mmLeft = 153988
        mmTop = 1588
        mmWidth = 14288
        BandType = 7
        LayerName = Foreground
      end
      object ppLine57: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line57'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 168805
        mmTop = 529
        mmWidth = 1323
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc18: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc18'
        Border.mmPadding = 0
        DataField = 'ContainTax'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4487
        mmLeft = 169069
        mmTop = 1588
        mmWidth = 13758
        BandType = 7
        LayerName = Foreground
      end
      object ppLine59: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line59'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 183357
        mmTop = 0
        mmWidth = 1323
        BandType = 7
        LayerName = Foreground
      end
      object ppLine63: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line202'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 90488
        mmTop = 0
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc21: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc21'
        Border.mmPadding = 0
        DataField = 'ContainInsourance'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4487
        mmLeft = 77523
        mmTop = 1323
        mmWidth = 12435
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc22: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc22'
        Border.mmPadding = 0
        DataField = 'sum23Dec'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4487
        mmLeft = 91281
        mmTop = 1323
        mmWidth = 12435
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc15: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc15'
        Border.mmPadding = 0
        DataField = 'BonusPayAble'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4498
        mmLeft = 123825
        mmTop = 1588
        mmWidth = 13758
        BandType = 7
        LayerName = Foreground
      end
      object ppLine66: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line70'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 209286
        mmTop = 0
        mmWidth = 1323
        BandType = 7
        LayerName = Foreground
      end
      object ppLine67: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line71'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 194734
        mmTop = 529
        mmWidth = 1323
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc24: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc24'
        Border.mmPadding = 0
        DataField = 'FunctionDay'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4487
        mmLeft = 194998
        mmTop = 1588
        mmWidth = 13758
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBPipeline2: TppDBPipeline
    OpenDataSource = False
    UserName = 'DBPipeline2'
    Left = 552
    Top = 245
  end
end

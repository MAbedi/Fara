object frTaxCheck: TfrTaxCheck
  Left = 0
  Top = 0
  Width = 451
  Height = 98
  Align = alTop
  BiDiMode = bdRightToLeft
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clMaroon
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentBiDiMode = False
  ParentFont = False
  TabOrder = 0
  OnResize = FrameResize
  object grpTaxCheck: TGroupBox
    Left = 0
    Top = 0
    Width = 451
    Height = 98
    Align = alClient
    Caption = '   '#1604#1610#1587#1578' '#1575#1610#1585#1575#1583#1575#1578' '#1583#1610#1587#1603#1578' '#1605#1575#1604#1610#1575#1578
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object DBGrid2: TDBGrid
      Left = 2
      Top = 15
      Width = 447
      Height = 81
      Align = alClient
      Color = 16768991
      DataSource = srcTaxCheck
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clMaroon
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'SalaryID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'infoname_l1'
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ErrorTxt'
          Width = 271
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ErrorNoumber'
          Visible = True
        end>
    end
  end
  object qryCheckTax: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryCheckTaxAfterOpen
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'Mounth'
        Size = -1
        Value = Null
      end
      item
        Name = 'Year'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearMounth'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'declare @Mounth int,@Year int'
      'declare @YearMounth char(7)'
      'set   @Mounth = :Mounth'
      'set   @Year = :Year'
      'set   @YearMounth = :YearMounth'
      ''
      
        'SELECT        SalaryRange.SalaryID, FormsInfo_3.InfoName_L1, For' +
        'msInfo_3.InfoName_L1 + '#39'  '#1583#1585' '#1583#1610#1587#1603#1578' '#1605#1575#1604#1610#1575#1578#1610' '#1583#1585' '#1587#1578#1608#1606#1607#1575#1610' '#39' + STR(MI' +
        'N(FormsInfo.InfoID))'
      
        '                         + '#39'  '#1608'   '#39' + LTRIM(STR(MAX(FormsInfo.In' +
        'foID))) + '#39'    '#1578#1603#1585#1575#1585#1610' '#1575#1587#1578#39' AS ErrorTxt, 1 AS ErrorNoumber'
      'FROM            pay.SalaryRange INNER JOIN'
      
        '                         Pay.FormsInfo ON SalaryRange.FormInfoID' +
        ' = FormsInfo.FormInfoID INNER JOIN'
      
        '                         Pay.FormsInfo AS FormsInfo_3 ON SalaryR' +
        'ange.SalaryID = FormsInfo_3.FormInfoID'
      
        'WHERE        (FormsInfo.FormType = 94) AND (FormsInfo.InfoID <> ' +
        '21)'
      'GROUP BY SalaryRange.SalaryID, FormsInfo_3.InfoName_L1'
      'HAVING        (COUNT(*) <> 1)'
      ''
      'UNION ALL'
      
        'SELECT        Erorlist.salaryid_Fiexed, FormsInfo_2.InfoName_L1,' +
        ' FormsInfo_2.InfoName_L1 + '#39'--  '#1576#1585#1575#1610'  -- '#39' + FormsInfo_1.InfoNam' +
        'e_L1 + '#39'-- '#1576#1575' '#1583#1610#1587#1603#1578' '#1605#1575#1604#1610#1575#1578#1610' '#1605#1591#1575#1576#1602#1578' '#1606#1583#1575#1585#1583' '#39' AS ErrorTxt,'
      '                          1 AS ErrorNoumber'
      
        'FROM            (SELECT DISTINCT PersonelInfo.TaxCalculationType' +
        ', FixedCalculated.SalaryID AS salaryid_Fiexed, CASE WHEN FixedCa' +
        'lculated.salaryid IN'
      
        '                                                        (SELECT ' +
        '       SalaryRange.SalaryID'
      
        '                                                           FROM ' +
        '           Pay.SalaryRange INNER JOIN'
      
        '                                                                ' +
        '                    Pay.FormsInfo ON SalaryRange.FormInfoID = Fo' +
        'rmsInfo.FormInfoID'
      
        '                                                           WHERE' +
        '        (FormsInfo.FormType = 94) AND FormsInfo.infoID IN (17, 1' +
        '8, 19, 23, 24, 25)) THEN FixedCalculated.salaryid ELSE 0 END AS ' +
        'Type94Tax, '
      
        '                                                    CASE WHEN Fi' +
        'xedCalculated.salaryid IN'
      
        '                                                        (SELECT ' +
        '       SalaryRange.SalaryID'
      
        '                                                           FROM ' +
        '           Pay.SalaryRange INNER JOIN'
      
        '                                                                ' +
        '                    Pay.FormsInfo ON SalaryRange.FormInfoID = Fo' +
        'rmsInfo.FormInfoID'
      
        '                                                           WHERE' +
        '        (FormsInfo.FormType = 94) AND NOT FormsInfo.infoID IN (1' +
        '7, 18, 19, 23, 24, 25)) '
      
        '                                                    THEN FixedCa' +
        'lculated.salaryid ELSE 0 END AS Type94_WithOutTax, ISNULL(Salary' +
        'Range_2.SalaryID, 0) AS Type21Tax'
      
        '                           FROM            Pay.FormTypes AS Form' +
        'Types_sEffectKind INNER JOIN'
      
        '                                                    Pay.FormsInf' +
        'o AS FormsInfo_5 ON FormTypes_sEffectKind.FormType = FormsInfo_5' +
        '.FormType INNER JOIN'
      
        '                                                    Pay.FixedCal' +
        'culated ON FormsInfo_5.FormInfoID = FixedCalculated.SalaryID INN' +
        'ER JOIN'
      
        '                                                    Pay.FinalArc' +
        'hiveWithPersonelNO ON FixedCalculated.Mounth = FinalArchiveWithP' +
        'ersonelNO.Mounth AND '
      
        '                                                    FixedCalcula' +
        'ted.PersonelNO = FinalArchiveWithPersonelNO.PersonelNO AND '
      
        '                                                    FixedCalcula' +
        'ted.ArchiveID = FinalArchiveWithPersonelNO.ArchiveID INNER JOIN'
      
        '                                                        (SELECT ' +
        '       Interdicts.PersonelNo, MAX(Interdicts.TaxCalculationType)' +
        ' AS TaxCalculationType'
      
        '                                                           FROM ' +
        '           Pay.Interdicts INNER JOIN'
      
        '                                                                ' +
        '                    Pay.PersonelInfo AS PersonelInfo_1 ON Interd' +
        'icts.PersonelNo = PersonelInfo_1.PersonelNo'
      
        '                                                           WHERE' +
        '        (@YearMounth BETWEEN LEFT(Interdicts.InterdicStartDate, ' +
        '7) AND LEFT(Interdicts.InterdicEndDate, 7))'
      
        '                                                           GROUP' +
        ' BY Interdicts.PersonelNo) AS PersonelInfo ON PersonelInfo.Perso' +
        'nelNo = FixedCalculated.PersonelNO LEFT OUTER JOIN'
      
        '                                                    Pay.SalaryRa' +
        'nge AS SalaryRange_2 ON PersonelInfo.TaxCalculationType = Salary' +
        'Range_2.FormInfoID AND '
      
        '                                                    FixedCalcula' +
        'ted.SalaryID = SalaryRange_2.SalaryID'
      
        '                           WHERE        (FixedCalculated.Mounth ' +
        '= @Mounth) AND (FixedCalculated.Years = @Year) AND (FormTypes_sE' +
        'ffectKind.SalaryEffectKind = 1)) '
      '                         AS Erorlist INNER JOIN'
      
        '                         Pay.FormsInfo AS FormsInfo_1 ON Erorlis' +
        't.TaxCalculationType = FormsInfo_1.FormInfoID INNER JOIN'
      
        '                         Pay.FormsInfo AS FormsInfo_2 ON Erorlis' +
        't.salaryid_Fiexed = FormsInfo_2.FormInfoID'
      
        'WHERE        (Erorlist.Type94Tax - Erorlist.Type94_WithOutTax <>' +
        ' Erorlist.Type21Tax)'
      ''
      'UNION ALL'
      ''
      
        'SELECT        Erorlist_1.salaryid_Fiexed, FormsInfo_2.InfoName_L' +
        '1, FormsInfo_2.InfoName_L1 + '#39'  -- '#1583#1585' '#1583#1610#1587#1603#1578' '#1605#1575#1604#1610#1575#1578#1610' '#1578#1606#1592#1610#1605' '#1606#1588#1583#1607' '#1575 +
        #1587#1578'  '#39' AS ErrorTxt, 0 AS ErrorNoumber'
      
        'FROM            (SELECT DISTINCT PersonelInfo_2.TaxCalculationTy' +
        'pe, FixedCalculated_1.SalaryID AS salaryid_Fiexed, CASE WHEN Fix' +
        'edCalculated_1.salaryid IN'
      
        '                                                        (SELECT ' +
        '       SalaryRange.SalaryID'
      
        '                                                           FROM ' +
        '           Pay.SalaryRange INNER JOIN'
      
        '                                                                ' +
        '                    Pay.FormsInfo ON SalaryRange.FormInfoID = Fo' +
        'rmsInfo.FormInfoID'
      
        '                                                           WHERE' +
        '        (FormsInfo.FormType = 94) AND FormsInfo.infoID IN (17, 1' +
        '8, 19, 23, 24, 25)) THEN FixedCalculated_1.salaryid ELSE 0 END A' +
        'S Type94Tax,'
      
        '                                                     CASE WHEN F' +
        'ixedCalculated_1.salaryid IN'
      
        '                                                        (SELECT ' +
        '       SalaryRange.SalaryID'
      
        '                                                           FROM ' +
        '           Pay.SalaryRange INNER JOIN'
      
        '                                                                ' +
        '                    Pay.FormsInfo ON SalaryRange.FormInfoID = Fo' +
        'rmsInfo.FormInfoID'
      
        '                                                           WHERE' +
        '        (FormsInfo.FormType = 94) AND NOT FormsInfo.infoID IN (1' +
        '7, 18, 19, 23, 24, 25)) '
      
        '                                                    THEN FixedCa' +
        'lculated_1.salaryid ELSE 0 END AS Type94_WithOutTax, ISNULL(Sala' +
        'ryRange_1.SalaryID, 0) AS Type21Tax'
      
        '                           FROM            Pay.FormTypes AS Form' +
        'Types_sEffectKind INNER JOIN'
      
        '                                                    Pay.FormsInf' +
        'o AS FormsInfo_4 ON FormTypes_sEffectKind.FormType = FormsInfo_4' +
        '.FormType INNER JOIN'
      
        '                                                    Pay.FixedCal' +
        'culated AS FixedCalculated_1 ON FormsInfo_4.FormInfoID = FixedCa' +
        'lculated_1.SalaryID INNER JOIN'
      
        '                                                    Pay.FinalArc' +
        'hiveWithPersonelNO AS FinalArchiveWithPersonelNO_1 ON FixedCalcu' +
        'lated_1.Mounth = FinalArchiveWithPersonelNO_1.Mounth AND '
      
        '                                                    FixedCalcula' +
        'ted_1.PersonelNO = FinalArchiveWithPersonelNO_1.PersonelNO AND '
      
        '                                                    FixedCalcula' +
        'ted_1.ArchiveID = FinalArchiveWithPersonelNO_1.ArchiveID INNER J' +
        'OIN'
      
        '                                                        (SELECT ' +
        '       Interdicts_1.PersonelNo, MAX(Interdicts_1.TaxCalculationT' +
        'ype) AS TaxCalculationType'
      
        '                                                           FROM ' +
        '           Pay.Interdicts AS Interdicts_1 INNER JOIN'
      
        '                                                                ' +
        '                    Pay.PersonelInfo AS PersonelInfo_1 ON Interd' +
        'icts_1.PersonelNo = PersonelInfo_1.PersonelNo'
      
        '                                                           WHERE' +
        '        (@YearMounth BETWEEN LEFT(Interdicts_1.InterdicStartDate' +
        ', 7) AND LEFT(Interdicts_1.InterdicEndDate, 7))'
      
        '                                                           GROUP' +
        ' BY Interdicts_1.PersonelNo) AS PersonelInfo_2 ON PersonelInfo_2' +
        '.PersonelNo = FixedCalculated_1.PersonelNO LEFT OUTER JOIN'
      
        '                                                    Pay.SalaryRa' +
        'nge AS SalaryRange_1 ON PersonelInfo_2.TaxCalculationType = Sala' +
        'ryRange_1.FormInfoID AND '
      
        '                                                    FixedCalcula' +
        'ted_1.SalaryID = SalaryRange_1.SalaryID'
      
        '                           WHERE        (FixedCalculated_1.Mount' +
        'h = @Mounth) AND (FixedCalculated_1.Years = @Year) AND (FormType' +
        's_sEffectKind.SalaryEffectKind = 1)) '
      '                         AS Erorlist_1 INNER JOIN'
      
        '                         Pay.FormsInfo AS FormsInfo_1 ON Erorlis' +
        't_1.TaxCalculationType = FormsInfo_1.FormInfoID INNER JOIN'
      
        '                         Pay.FormsInfo AS FormsInfo_2 ON Erorlis' +
        't_1.salaryid_Fiexed = FormsInfo_2.FormInfoID'
      
        'WHERE        (Erorlist_1.Type94Tax <> Erorlist_1.salaryid_Fiexed' +
        ')'
      ''
      ''
      ''
      '')
    Left = 80
    Top = 16
    object qryCheckTaxSalaryID: TIntegerField
      DisplayLabel = #1587#1585#1610#1575#1604
      FieldName = 'SalaryID'
      ReadOnly = True
    end
    object qryCheckTaxinfoname_l1: TStringField
      DisplayLabel = #1575#1591#1604#1575#1593#1575#1578
      FieldName = 'infoname_l1'
      ReadOnly = True
      Size = 255
    end
    object qryCheckTaxErrorTxt: TStringField
      DisplayLabel = #1605#1578#1606' '#1582#1591#1575
      FieldName = 'ErrorTxt'
      ReadOnly = True
      Size = 556
    end
    object qryCheckTaxErrorNoumber: TIntegerField
      DisplayLabel = #1608#1590#1593#1610#1578' '#1582#1591#1575
      FieldName = 'ErrorNoumber'
      ReadOnly = True
    end
  end
  object srcTaxCheck: TDataSource
    DataSet = qryCheckTax
    Left = 226
    Top = 34
  end
end

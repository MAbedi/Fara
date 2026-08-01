inherited rptInsouranceOther2F: TrptInsouranceOther2F
  Left = 376
  Top = 242
  Caption = #1604#1610#1587#1578' '#1576#1610#1605#1607' '#1578#1603#1605#1610#1604#1610' '#1608' '#1582#1583#1605#1575#1578' '#1583#1585#1605#1575#1606#1610'2'
  ClientWidth = 861
  ExplicitWidth = 877
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Width = 861
    ExplicitWidth = 861
    DesignSize = (
      861
      41)
    object Button1: TButton
      Left = 702
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Anchors = [akTop, akRight, akBottom]
      TabOrder = 1
    end
    object BitBtn4: TBitBtn
      Left = 243
      Top = 8
      Width = 75
      Height = 25
      Action = actSendtoExcel
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      TabOrder = 2
    end
    object BitBtn5: TBitBtn
      Left = 165
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 3
    end
    object BitBtn6: TBitBtn
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 4
    end
    object BitBtn7: TBitBtn
      Left = 781
      Top = 8
      Width = 75
      Height = 25
      Action = actFilter
      Anchors = [akRight, akBottom]
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 5
    end
    object btnMakeDisk_Tbl_List: TButton
      Left = 622
      Top = 8
      Width = 76
      Height = 25
      Anchors = [akTop, akRight, akBottom]
      Caption = #1578#1607#1610#1607' '#1583#1610#1587#1603#1578
      TabOrder = 6
      OnClick = btnMakeDisk_Tbl_ListClick
    end
  end
  inherited Panel2: TPanel
    Width = 861
    Height = 67
    ExplicitWidth = 861
    ExplicitHeight = 67
    DesignSize = (
      861
      67)
    inherited ImgTemplate: TImage
      Left = 823
      ExplicitLeft = 823
    end
    inherited lblCaption: TLabel
      Left = 643
      Width = 172
      Height = 47
      Caption = #1604#1610#1587#1578' '#1581#1602'  '#1587#1585#1575#1606#1607' '#1662#1585#1583#1575#1582#1578#1606#1610
      ExplicitLeft = 643
      ExplicitWidth = 172
    end
    object CmbArchiveID: TComboBox
      Left = 15
      Top = 24
      Width = 126
      Height = 21
      Color = 13431799
      TabOrder = 0
      Text = 'CmbArchiveID'
      OnChange = CmbArchiveIDChange
    end
  end
  inherited Panel3: TPanel
    Top = 67
    Width = 861
    Height = 409
    ExplicitTop = 67
    ExplicitWidth = 861
    ExplicitHeight = 410
    object ToolBar1: TToolBar
      Left = 2
      Top = 2
      Width = 857
      Height = 36
      BorderWidth = 2
      ButtonHeight = 21
      ButtonWidth = 54
      Caption = 'ToolBar1'
      EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
      EdgeInner = esLowered
      ShowCaptions = True
      TabOrder = 1
      object ToolButton1: TToolButton
        Tag = 1
        Left = 0
        Top = 0
        Caption = #1601#1585#1608#1585#1583#1610#1606
        Grouped = True
        ImageIndex = 0
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton2: TToolButton
        Tag = 2
        Left = 54
        Top = 0
        Caption = #1575#1585#1583#1610#1576#1607#1588#1578
        Grouped = True
        ImageIndex = 1
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton3: TToolButton
        Tag = 3
        Left = 108
        Top = 0
        Caption = #1582#1585#1583#1575#1583
        Grouped = True
        ImageIndex = 2
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton4: TToolButton
        Tag = 4
        Left = 162
        Top = 0
        Caption = #1578#1610#1585
        Grouped = True
        ImageIndex = 3
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton5: TToolButton
        Tag = 5
        Left = 216
        Top = 0
        Caption = #1605#1585#1583#1575#1583
        Grouped = True
        ImageIndex = 4
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton6: TToolButton
        Tag = 6
        Left = 270
        Top = 0
        Caption = #1588#1607#1585#1610#1608#1585
        Grouped = True
        ImageIndex = 5
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton7: TToolButton
        Tag = 7
        Left = 324
        Top = 0
        Caption = #1605#1607#1585
        Grouped = True
        ImageIndex = 6
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton8: TToolButton
        Tag = 8
        Left = 378
        Top = 0
        Caption = #1570#1576#1575#1606
        Grouped = True
        ImageIndex = 7
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton9: TToolButton
        Tag = 9
        Left = 432
        Top = 0
        Caption = #1570#1584#1585
        Grouped = True
        ImageIndex = 8
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton10: TToolButton
        Tag = 10
        Left = 486
        Top = 0
        Caption = #1583#1610
        Grouped = True
        ImageIndex = 9
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton11: TToolButton
        Tag = 11
        Left = 540
        Top = 0
        Caption = #1576#1607#1605#1606
        Grouped = True
        ImageIndex = 10
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton12: TToolButton
        Tag = 12
        Left = 594
        Top = 0
        Caption = #1575#1587#1601#1606#1583
        Grouped = True
        ImageIndex = 11
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
    end
    object DBGrid1: TCedarDbgrid
      Left = 2
      Top = 38
      Width = 857
      Height = 370
      Align = alClient
      Color = clCream
      DataSource = srcInsouranceOther
      DynProps = <>
      Flat = True
      FooterParams.FillStyle = cfstSolidEh
      FooterParams.Font.Charset = DEFAULT_CHARSET
      FooterParams.Font.Color = clWindowText
      FooterParams.Font.Height = -12
      FooterParams.Font.Name = 'Tahoma'
      FooterParams.Font.Style = [fsBold]
      FooterParams.ParentFont = False
      FooterParams.VertLines = False
      GridLineParams.VertEmptySpaceStyle = dessNonEh
      HorzScrollBar.ExtraPanel.Visible = True
      IndicatorTitle.ShowDropDownSign = True
      IndicatorTitle.TitleButton = True
      OddRowColor = clWhite
      RowHeight = 18
      SearchPanel.Enabled = True
      SortLocal = True
      TabOrder = 0
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PersonelNo'
          Footers = <>
          Title.Alignment = taCenter
          Width = 33
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'name_L1'
          Footers = <>
          Title.Alignment = taCenter
          Width = 23
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'lastName_L1'
          Footers = <>
          Title.Alignment = taCenter
          Width = 63
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'NationalID'
          Footers = <>
          Title.Alignment = taCenter
          Width = 37
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'AidNo1'
          Footers = <>
          Width = 62
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Amount1'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Price1'
          Footers = <>
          Width = 65
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Amount2'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Price2'
          Footers = <>
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Amount3'
          Footers = <>
          Title.Alignment = taCenter
          Width = 83
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Price3'
          Footers = <>
          Title.Alignment = taCenter
          Width = 84
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Amount4'
          Footers = <>
          Width = 52
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Price4'
          Footers = <>
          Width = 54
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'SumAmount'
          Footers = <>
          Title.Alignment = taCenter
          Width = 54
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'sumPrice'
          Footers = <>
          Title.Alignment = taCenter
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Employe1'
          Footers = <>
          Title.Alignment = taCenter
          Width = 63
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'sumPriceEmploye1'
          Footers = <>
          Width = 54
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'SumWage'
          Footers = <>
          Width = 80
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  inherited ActionList: TActionList
    Left = 296
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662' (F7)'
      OnExecute = actPrintExecute
    end
    object actSendtoExcel: TAction
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      OnExecute = actSendtoExcelExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actMakeDisk_Tbl_List: TAction
      Caption = #1578#1607#1610#1607' '#1583#1610#1587#1603#1578'(Tbl_List)'
      OnExecute = actMakeDisk_Tbl_ListExecute
    end
    object actMakeDisk: TAction
      Caption = #1578#1607#1610#1607' '#1583#1610#1587#1603#1578
      OnExecute = actMakeDiskExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 456
  end
  object qryInsouranceOther: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'FormInfoID1'
        Size = -1
        Value = Null
      end
      item
        Name = 'FormInfoID2'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'FormInfoID3'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'FormInfoID4'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'SalaryID1'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'SalaryID2'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'SalaryID3'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'SalaryID4'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearID3'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ArchiveID'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearID1'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'mounth'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'FormInfoIDDarsad'
        Size = -1
        Value = Null
      end
      item
        Name = 'FormType'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ArchiveID1'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'mounth2'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'MonthFrom'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'MonthTo'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearID'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearID2'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'OfficeCodeFromTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PersonelNoFrom'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PersonelNoTo'
        DataType = ftString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      
        'SELECT     PersonelDecExt.PersonelNo, PersonelInfo_1.name_L1, Pe' +
        'rsonelInfo_1.lastName_L1, PersonelInfo_1.NationalID, PersonelDec' +
        'Ext.AidNo1, PersonelDecExt.AidDate1,'
      
        '                      PersonelDecExt.FirstMounth, PersonelDecExt' +
        '.EndMounth,'
      ''
      ' derivedtbl_1.Amount1,'
      
        'SUM(CASE WHEN CalCulateKind = 12 AND FixedCalculated_1.FormInfoI' +
        'D = :FormInfoID1 THEN price ELSE 0 END) AS Price1old,'
      'ROUND( derivedtbl_2.SumWage * Darsad.StandardDays/100,0) Price1,'
      ' derivedtbl_1.Amount2,'
      
        ' SUM(CASE WHEN CalCulateKind = 12 AND FixedCalculated_1.FormInfo' +
        'ID = :FormInfoID2 THEN price ELSE 0 END) AS Price2,'
      ''
      ' derivedtbl_1.Amount3,'
      
        ' SUM(CASE WHEN CalCulateKind = 12 AND FixedCalculated_1.FormInfo' +
        'ID = :FormInfoID3 THEN price ELSE 0 END) AS Price3,'
      ''
      ' derivedtbl_1.Amount4,'
      
        ' SUM(CASE WHEN CalCulateKind = 12 AND FixedCalculated_1.FormInfo' +
        'ID = :FormInfoID4 THEN price ELSE 0 END) AS Price4,'
      ''
      
        '-- SUM(CASE WHEN CalCulateKind = 12  THEN price ELSE 0 END) AS S' +
        'umPrice,'
      
        '--SUM(CASE WHEN ShowlistKind = 20 THEN price ELSE 0 END) AS Empl' +
        'oye1,'
      
        'ROUND( derivedtbl_2.SumWage * Darsad.StandardDays/100,0) SumPric' +
        'e,'
      
        'ROUND( derivedtbl_2.SumWage * Darsad.StandardTimes/100,0) Employ' +
        'e1,'
      ''
      
        '  SUM(CASE WHEN CalCulateKind = 12 THEN price ELSE 0 END) AS Pri' +
        'ce12'
      '--, SUM(FixedCalculated_1.Price) AS sumPriceEmploye1,'
      
        ',ROUND( derivedtbl_2.SumWage * Darsad.StandardDays/100,0) + ROUN' +
        'D( derivedtbl_2.SumWage * Darsad.StandardTimes/100,0) sumPriceEm' +
        'ploye1,'
      ''
      '                      derivedtbl_2.SumWage'
      '                            ,SumAmount '
      'FROM Pay.PersonelDecExt INNER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfo_1 ON PersonelDe' +
        'cExt.FormInfoID = FormsInfo_1.FormInfoID INNER JOIN'
      
        '                      Pay.PersonelInfo AS PersonelInfo_1 ON Pers' +
        'onelDecExt.PersonelNo = PersonelInfo_1.PersonelNo INNER JOIN'
      
        '                      Pay.FixedCalculated AS FixedCalculated_1 O' +
        'N PersonelDecExt.PersonelNo = FixedCalculated_1.PersonelNO AND'
      
        '                      FormsInfo_1.FormInfoID = FixedCalculated_1' +
        '.SalaryID INNER JOIN'
      
        '                          (SELECT     Di.DecExtID, SUM(CASE WHEN' +
        ' Di.SalaryID = :SalaryID1 THEN Di.DayQuntity ELSE 0 END) AS Amou' +
        'nt1,'
      
        '                                                SUM(CASE WHEN Di' +
        '.SalaryID = :SalaryID2 THEN Di.DayQuntity ELSE 0 END) AS Amount2' +
        ','
      
        '                                                SUM(CASE WHEN Di' +
        '.SalaryID = :SalaryID3 THEN Di.DayQuntity ELSE 0 END) AS Amount3' +
        ','
      
        '                                                SUM(CASE WHEN Di' +
        '.SalaryID = :SalaryID4 THEN Di.DayQuntity ELSE 0 END) AS Amount4'
      
        '                                             , SUM(Di.DayQuntity' +
        ') AS SumAmount'
      ''
      '                             FROM Pay.DecExtItems Di'
      ''
      
        '            INNER JOIN Pay.PersonelDecExt ON Di.DecExtID = Pay.P' +
        'ersonelDecExt.DecExtID'
      'WHERE        (Pay.PersonelDecExt.YearID = :YearID3)'
      ''
      
        #9#9#9#9#9#9'  GROUP BY Di.DecExtID) AS derivedtbl_1 ON PersonelDecExt.' +
        'DecExtID = derivedtbl_1.DecExtID'
      ''
      ' INNER JOIN'
      
        '      (      SELECT        PersonelNO, SUM(CASE ShowlistKind WHE' +
        'N 1 THEN price ELSE 0 END) AS SumWage'
      '                                FROM Pay.FixedCalculated'
      
        '                                WHERE        (ArchiveID = :Archi' +
        'veID) AND (YearID = :YearID1  ) AND (Mounth = :mounth) AND (Sala' +
        'ryID IN'
      
        '                                                             (SE' +
        'LECT DISTINCT SalaryRange.SalaryID'
      
        '                                                                ' +
        'FROM Pay.FormsInfo INNER JOIN'
      
        '                                                                ' +
        '                         Pay.SalaryRange ON FormsInfo.FormInfoID' +
        ' = SalaryRange.FormInfoID'
      
        '                                                                ' +
        'WHERE        (FormsInfo.FormType = 63)))'
      
        '                                GROUP BY PersonelNO) AS derivedt' +
        'bl_2 '
      
        '              ON PersonelDecExt.PersonelNo = derivedtbl_2.Person' +
        'elNO'
      ''
      ''
      ''
      
        'LEFT OUTER JOIN   Pay.Interdicts ON PersonelDecExt.PersonelNo = ' +
        'Interdicts.PersonelNo'
      ''
      
        'CROSS JOIN (SELECT f.StandardDays,f.StandardTimes FROM Pay.Forms' +
        'Info f WHERE (f.FormType = 63) and (f.FormInfoID = :FormInfoIDDa' +
        'rsad  )) Darsad'
      ''
      ''
      
        '                      WHERE     (FormsInfo_1.FormType = :FormTyp' +
        'e ) AND (Interdicts.State < 50)'
      
        '                       AND (FixedCalculated_1.ArchiveID = :Archi' +
        'veID1 ) AND (FixedCalculated_1.Mounth =  :mounth2 ) AND'
      
        '                      (FixedCalculated_1.BedBes = 2) AND (Person' +
        'elDecExt.FirstMounth <= :MonthFrom)'
      
        '                      AND (PersonelDecExt.EndMounth >= :MonthTo ' +
        ')'
      'AND (PersonelDecExt.YearID = :YearID  )'
      'AND (FixedCalculated_1.YearID = :YearID2 )'
      ''
      ':OfficeCodeFromTo'
      ''
      ''
      ''
      
        'AND (PersonelDecExt.PersonelNo between  :PersonelNoFrom and    :' +
        'PersonelNoTo )'
      ''
      
        '                      GROUP BY PersonelDecExt.PersonelNo, Person' +
        'elInfo_1.name_L1, PersonelInfo_1.lastName_L1, PersonelInfo_1.Nat' +
        'ionalID, PersonelDecExt.AidNo1, PersonelDecExt.AidDate1,'
      
        '                      PersonelDecExt.FirstMounth, PersonelDecExt' +
        '.EndMounth, derivedtbl_1.Amount1, derivedtbl_1.Amount2, derivedt' +
        'bl_1.Amount3, derivedtbl_1.Amount4,SumAmount'
      ', derivedtbl_2.SumWage,Darsad.StandardTimes,Darsad.StandardDays'
      'ORDER BY PersonelDecExt.PersonelNo'
      ''
      ' '
      ' '
      ' '
      ' '
      ' ')
    Left = 328
    Top = 208
    object qryInsouranceOtherPersonelNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1603#1575#1585#1605#1606#1583#1610
      FieldName = 'PersonelNo'
    end
    object qryInsouranceOthername_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '
      FieldName = 'name_L1'
      Size = 25
    end
    object qryInsouranceOtherlastName_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583' '#1711#1610
      FieldName = 'lastName_L1'
      Size = 40
    end
    object qryInsouranceOtherNationalID: TStringField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1604#1610
      FieldName = 'NationalID'
      Size = 12
    end
    object qryInsouranceOtherEmploye1: TBCDField
      Tag = 3
      DisplayLabel = #1587#1607#1605' '#1603#1575#1585#1601#1585#1605#1575
      FieldName = 'Employe1'
      currency = True
      Precision = 19
    end
    object qryInsouranceOtherAmount1: TFloatField
      FieldName = 'Amount1'
      ReadOnly = True
    end
    object qryInsouranceOtherPrice1: TBCDField
      FieldName = 'Price1'
      currency = True
      Precision = 19
    end
    object qryInsouranceOtherPrice2: TBCDField
      FieldName = 'Price2'
      currency = True
      Precision = 19
    end
    object qryInsouranceOtherPrice3: TBCDField
      Tag = 3
      DisplayLabel = #1578#1576#1593#1610' 2 '#1583#1585#1580#1607' 1 ( '#1605#1576#1604#1594' )'#8207
      FieldName = 'Price3'
      currency = True
      Precision = 19
    end
    object qryInsouranceOthersumPrice: TBCDField
      Tag = 3
      DisplayLabel = #1580#1605#1593'  '#1605#1576#1604#1594
      FieldName = 'sumPrice'
      currency = True
      Precision = 19
    end
    object qryInsouranceOtherFirstMounth: TWordField
      FieldName = 'FirstMounth'
    end
    object qryInsouranceOtherEndMounth: TWordField
      FieldName = 'EndMounth'
    end
    object qryInsouranceOtherAidNo1: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1576#1610#1605#1607
      FieldName = 'AidNo1'
    end
    object qryInsouranceOtherAidDate1: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1608#1585#1608#1583
      FieldName = 'AidDate1'
      FixedChar = True
      Size = 10
    end
    object qryInsouranceOthersumPriceEmploye1: TBCDField
      Tag = 3
      DisplayLabel = #1580#1605#1593' '#1603#1604
      FieldName = 'sumPriceEmploye1'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryInsouranceOtherSumWage: TBCDField
      Tag = 3
      DisplayLabel = #1580#1605#1593' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1610#1575' '#1605#1588#1605#1608#1604
      FieldName = 'SumWage'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryInsouranceOtherPrice4: TBCDField
      FieldName = 'Price4'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryInsouranceOtherAmount2: TFloatField
      FieldName = 'Amount2'
      ReadOnly = True
    end
    object qryInsouranceOtherAmount3: TFloatField
      Tag = 3
      DisplayLabel = #1578#1576#1593#1610' 2 '#1583#1585#1580#1607' 1 ( '#1578#1593#1583#1575#1583' )'#8207
      FieldName = 'Amount3'
      ReadOnly = True
    end
    object qryInsouranceOtherAmount4: TFloatField
      FieldName = 'Amount4'
      ReadOnly = True
    end
    object qryInsouranceOtherSumAmount: TFloatField
      Tag = 3
      DisplayLabel = #1580#1605#1593'   '#1578#1593#1583#1575#1583' '
      FieldName = 'SumAmount'
      ReadOnly = True
      currency = True
    end
  end
  object srcInsouranceOther: TDataSource
    DataSet = qryInsouranceOther
    Left = 168
    Top = 160
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcInsouranceOther
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 336
    Top = 301
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 216000
    PrinterSetup.mmPaperWidth = 279000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'D:\Projects\Fara\Salary\Exe\Report\rptInsouranceOther2F1.rtm'
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RefreshTokenLifeSpan = 365
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RefreshTokenLifeSpan = 365
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    EmailSettings.ConnectionSettings.ConnectionStatusInfo = [csiStatusBar]
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
    PDFSettings.Layers = True
    PDFSettings.Outline = True
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
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.DropBoxSettings.SharedResources = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.GoogleDriveSettings.SharedResources = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    CloudDriveSettings.OneDriveSettings.SharedResources = True
    Left = 480
    Top = 312
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 31485
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 15610
        mmLeft = 265
        mmTop = 15875
        mmWidth = 266171
        BandType = 0
        LayerName = Foreground
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15346
        mmLeft = 248709
        mmTop = 16139
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
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
      object ppLblCompanyName: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        OnGetText = ppLblCompanyNameGetText
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
        mmLeft = 102394
        mmTop = 1323
        mmWidth = 61383
        BandType = 0
        LayerName = Foreground
      end
      object ppLblPrintDate: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label36'
        OnGetText = ppLblPrintDateGetText
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
        mmHeight = 6350
        mmLeft = 2381
        mmTop = 1058
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 94986
        mmTop = 16404
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line18'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15346
        mmLeft = 33867
        mmTop = 16139
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel43: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label25'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1608' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 203730
        mmTop = 19579
        mmWidth = 44450
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCaption: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578'  '#1581#1602' '#1587#1585#1575#1606#1607' '#1662#1585#1583#1575#1582#1578#1606#1610' '#1662#1585#1587#1606#1604'    '#1583#1585' '#1605#1575#1607' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 122767
        mmTop = 8467
        mmWidth = 60854
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
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 249238
        mmTop = 19579
        mmWidth = 16140
        BandType = 0
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14552
        mmLeft = 203200
        mmTop = 16404
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14552
        mmLeft = 64294
        mmTop = 16140
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        OnGetText = ppDBText5GetText
        Border.mmPadding = 0
        DataField = 'FirstMounth'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 105040
        mmTop = 8467
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583' '#1605#1604#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 181240
        mmTop = 19579
        mmWidth = 21696
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14552
        mmLeft = 180711
        mmTop = 16404
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = #1587#1575#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6615
        mmLeft = 98690
        mmTop = 8467
        mmWidth = 5821
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        OnGetText = ppDBText1GetText
        Border.mmPadding = 0
        DataField = 'FirstMounth'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 80698
        mmTop = 8467
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1576#1593#1610' 1'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 95515
        mmTop = 17198
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 265
        mmTop = 23813
        mmWidth = 125413
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1593#1583#1575#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 117740
        mmTop = 24342
        mmWidth = 7200
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 95515
        mmTop = 24342
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 117211
        mmTop = 24077
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1576#1593#1610' 2 '#1583#1585#1580#1607' 1'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 64823
        mmTop = 16933
        mmWidth = 29898
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label101'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 65088
        mmTop = 24606
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1593#1583#1575#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 87577
        mmTop = 24606
        mmWidth = 7200
        BandType = 0
        LayerName = Foreground
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 87048
        mmTop = 24077
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1576#1593#1610' 2 '#1583#1585#1580#1607' 1'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 34660
        mmTop = 16933
        mmWidth = 29369
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1593#1583#1575#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 56886
        mmTop = 24342
        mmWidth = 7200
        BandType = 0
        LayerName = Foreground
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 56356
        mmTop = 23813
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 34660
        mmTop = 24342
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1580#1600#1600#1605#1600#1600#1593
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 1588
        mmTop = 17198
        mmWidth = 31750
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        Border.mmPadding = 0
        Caption = #1578#1593#1583#1575#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6604
        mmLeft = 26458
        mmTop = 24606
        mmWidth = 7200
        BandType = 0
        LayerName = Foreground
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 25929
        mmTop = 23813
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 1323
        mmTop = 24606
        mmWidth = 23813
        BandType = 0
        LayerName = Foreground
      end
      object ppLine39: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line39'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14552
        mmLeft = 125413
        mmTop = 16404
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1587#1607#1605' '#1603#1575#1585#1601#1585#1605#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 125942
        mmTop = 19844
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel37: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label37'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1581#1602#1608#1602' '#1605#1575#1607#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 148167
        mmTop = 19844
        mmWidth = 24077
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel38: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label38'
        Border.mmPadding = 0
        Caption = #1585#1608#1586#1607#1575#1610' '#1603#1575#1585#1603#1585#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 5
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9260
        mmLeft = 173038
        mmTop = 18256
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14552
        mmLeft = 147638
        mmTop = 16404
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine82: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line82'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14552
        mmLeft = 172509
        mmTop = 16404
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand2: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
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
        mmLeft = 249238
        mmTop = 529
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line15'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 248709
        mmTop = 0
        mmWidth = 1323
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'name_L1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5842
        mmLeft = 232569
        mmTop = 1058
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'lastName_L1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 203730
        mmTop = 1058
        mmWidth = 27781
        BandType = 4
        LayerName = Foreground
      end
      object ppLine17: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line17'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 203200
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine18: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line16'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 264584
        mmTop = 0
        mmWidth = 1323
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'NationalID'
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
        mmLeft = 181240
        mmTop = 794
        mmWidth = 21696
        BandType = 4
        LayerName = Foreground
      end
      object ppLine19: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line19'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 180711
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine20: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line20'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 94986
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'Price1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 95515
        mmTop = 794
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'Amount1'
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
        mmLeft = 117740
        mmTop = 794
        mmWidth = 7200
        BandType = 4
        LayerName = Foreground
      end
      object ppLine21: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line21'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 117211
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'Amount2'
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
        mmLeft = 87577
        mmTop = 794
        mmWidth = 7200
        BandType = 4
        LayerName = Foreground
      end
      object ppLine22: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line22'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 87048
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'Price2'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 65088
        mmTop = 794
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppLine23: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line201'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 64294
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        Border.mmPadding = 0
        DataField = 'Amount3'
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
        mmLeft = 56886
        mmTop = 794
        mmWidth = 7200
        BandType = 4
        LayerName = Foreground
      end
      object ppLine24: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line24'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 56356
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText101'
        Border.mmPadding = 0
        DataField = 'Price3'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 34660
        mmTop = 794
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppLine25: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line25'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 33867
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        Border.mmPadding = 0
        DataField = 'SumAmount'
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
        mmLeft = 26458
        mmTop = 1058
        mmWidth = 7144
        BandType = 4
        LayerName = Foreground
      end
      object ppLine26: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line26'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 25929
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        Border.mmPadding = 0
        DataField = 'sumPriceEmploye1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 1323
        mmTop = 1058
        mmWidth = 23813
        BandType = 4
        LayerName = Foreground
      end
      object ppLine27: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line27'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 0
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine38: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line38'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 231775
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine40: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line40'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 125413
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText15'
        Border.mmPadding = 0
        DataField = 'Employe1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 125942
        mmTop = 529
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText30: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText30'
        Border.mmPadding = 0
        DataField = 'SumWage'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 148167
        mmTop = 529
        mmWidth = 24077
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel39: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        Border.mmPadding = 0
        Caption = '30'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 173038
        mmTop = 265
        mmWidth = 7408
        BandType = 4
        LayerName = Foreground
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line401'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 147638
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine83: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line402'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 172509
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 8731
      mmPrintPosition = 0
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        mmHeight = 8731
        mmLeft = 0
        mmTop = 0
        mmWidth = 266300
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel49: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label27'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1580#1605#1593
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 221721
        mmTop = 1323
        mmWidth = 40481
        BandType = 7
        LayerName = Foreground
      end
      object ppLine62: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line62'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 125413
        mmTop = 0
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object sd_col5: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sd_col5'
        Border.mmPadding = 0
        DataField = 'Amount1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7144
        mmLeft = 117740
        mmTop = 1058
        mmWidth = 7200
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc5: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc5'
        Border.mmPadding = 0
        DataField = 'Price1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7144
        mmLeft = 95515
        mmTop = 1058
        mmWidth = 21431
        BandType = 7
        LayerName = Foreground
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 94986
        mmTop = 0
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppLine29: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line29'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 117211
        mmTop = 0
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'Amount2'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7144
        mmLeft = 87577
        mmTop = 1058
        mmWidth = 7200
        BandType = 7
        LayerName = Foreground
      end
      object ppLine30: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line30'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 87048
        mmTop = 0
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'Price2'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7144
        mmLeft = 65088
        mmTop = 1058
        mmWidth = 21431
        BandType = 7
        LayerName = Foreground
      end
      object ppLine31: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line31'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 64294
        mmTop = 0
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        Border.mmPadding = 0
        DataField = 'Amount3'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7144
        mmLeft = 56886
        mmTop = 1058
        mmWidth = 7200
        BandType = 7
        LayerName = Foreground
      end
      object ppLine32: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line301'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 56356
        mmTop = 0
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc4: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc4'
        Border.mmPadding = 0
        DataField = 'Price3'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7144
        mmLeft = 34660
        mmTop = 1058
        mmWidth = 21431
        BandType = 7
        LayerName = Foreground
      end
      object ppLine33: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line33'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 33867
        mmTop = 0
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc6: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc6'
        Border.mmPadding = 0
        DataField = 'SumAmount'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7144
        mmLeft = 26458
        mmTop = 1058
        mmWidth = 7144
        BandType = 7
        LayerName = Foreground
      end
      object ppLine34: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line302'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 25929
        mmTop = 0
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc7: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc7'
        Border.mmPadding = 0
        DataField = 'sumPriceEmploye1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7144
        mmLeft = 794
        mmTop = 1058
        mmWidth = 23813
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc8: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc8'
        Border.mmPadding = 0
        DataField = 'Employe1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7144
        mmLeft = 125942
        mmTop = 1058
        mmWidth = 21431
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc17: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc17'
        Border.mmPadding = 0
        DataField = 'SumWage'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7144
        mmLeft = 148167
        mmTop = 1058
        mmWidth = 24077
        BandType = 7
        LayerName = Foreground
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 147638
        mmTop = 0
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppLine84: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line84'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 172509
        mmTop = 0
        mmWidth = 1852
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
  object qrydisket: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    Left = 704
    Top = 157
  end
  object PopList4Print: TPopupMenu
    Left = 712
    Top = 264
    object NameHint1: TMenuItem
      Tag = 1
      Caption = #1576#1575' '#1587#1607#1605' '#1603#1575#1585#1601#1585#1605#1575
      Hint = 'rptInsouranceOther2F1'
      OnClick = AllClickClick
    end
    object A41: TMenuItem
      Tag = 2
      Caption = #1576#1583#1608#1606' '#1587#1607#1605' '#1603#1575#1585#1601#1585#1605#1575
      Hint = 'rptInsouranceOther2F2'
      OnClick = AllClickClick
    end
    object AllClick: TMenuItem
      Caption = 'AllClick'
      Visible = False
      OnClick = AllClickClick
    end
    object N2: TMenuItem
      Tag = 3
      Caption = #1670#1575#1662' 3'
      Hint = 'rptInsouranceOther2F3'
      OnClick = AllClickClick
    end
  end
  object qryInitForm: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'FormType'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 6
      end>
    SQL.Strings = (
      'select * FROM Pay.FormTypes'
      'where  FormType=:FormType')
    Left = 536
    Top = 13
  end
  object qryCaption: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'FormType'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     FormsInfo.FormInfoID, FormsInfo.InfoName_L1'
      'FROM         Pay.FormsInfo AS FormsInfo_1 INNER JOIN'
      
        '                      Pay.FormsInfo ON FormsInfo_1.FormInfoID = ' +
        'FormsInfo.PrvInfoID'
      
        'WHERE     (FormsInfo_1.FormType = :FormType ) AND (FormsInfo_1.I' +
        'nfoID = 2)'
      'ORDER BY FormsInfo.InfoID')
    Left = 576
    Top = 149
  end
  object popMakeDisk: TPopupMenu
    Left = 648
    Top = 360
    object N1: TMenuItem
      Action = actMakeDisk
    end
    object blList1: TMenuItem
      Action = actMakeDisk_Tbl_List
    end
  end
  object ADOQuery1: TADOQuery
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     PersonelDecExt.PersonelNo, PersonelInfo_1.name_L1, Pe' +
        'rsonelInfo_1.lastName_L1, PersonelInfo_1.NationalID, PersonelDec' +
        'Ext.AidNo1, PersonelDecExt.AidDate1,'
      
        '                      PersonelDecExt.FirstMounth, PersonelDecExt' +
        '.EndMounth,'
      ''
      ' derivedtbl_1.Amount1,'
      
        ' SUM(CASE WHEN CalCulateKind = 12 AND FixedCalculated_1.FormInfo' +
        'ID = :FormInfoID1 THEN price ELSE 0 END) AS Price1,'
      ''
      ' derivedtbl_1.Amount2,'
      
        ' SUM(CASE WHEN CalCulateKind = 12 AND FixedCalculated_1.FormInfo' +
        'ID = :FormInfoID2 THEN price ELSE 0 END) AS Price2,'
      ''
      ' derivedtbl_1.Amount3,'
      
        ' SUM(CASE WHEN CalCulateKind = 12 AND FixedCalculated_1.FormInfo' +
        'ID = :FormInfoID3 THEN price ELSE 0 END) AS Price3,'
      ''
      ' derivedtbl_1.Amount4,'
      
        ' SUM(CASE WHEN CalCulateKind = 12 AND FixedCalculated_1.FormInfo' +
        'ID = :FormInfoID4 THEN price ELSE 0 END) AS Price4,'
      ''
      
        ' SUM(CASE WHEN CalCulateKind = 12  THEN price ELSE 0 END) AS Sum' +
        'Price,'
      ''
      
        'SUM(CASE WHEN ShowlistKind = 20 THEN price ELSE 0 END) AS Employ' +
        'e1,'
      
        '                      SUM(CASE WHEN CalCulateKind = 12 THEN pric' +
        'e ELSE 0 END) AS Price12, SUM(FixedCalculated_1.Price) AS sumPri' +
        'ceEmploye1,'
      
        '                          (SELECT     SUM(CASE ShowlistKind WHEN' +
        ' 1 THEN price ELSE 0 END) AS Expr1'
      ''
      'FROM Pay.FixedCalculated INNER JOIN'
      '                      Pay.FormsInfo AS FormsInfo_1 INNER JOIN'
      '                      FormTypes INNER JOIN'
      
        '                      Pay.FormsInfo ON FormTypes.FormType = Form' +
        'sInfo.FormType ON FormsInfo_1.PrvInfoID = FormsInfo.FormInfoID I' +
        'NNER JOIN'
      
        '                      Pay.SalaryRange ON FormsInfo_1.FormInfoID ' +
        '= SalaryRange.FormInfoID ON FixedCalculated.SalaryID = SalaryRan' +
        'ge.SalaryID'
      
        '          WHERE     (FixedCalculated.ArchiveID = :ArchiveID ) AN' +
        'D (FixedCalculated.Mounth = :mounth )'
      
        '                             AND (FixedCalculated.PersonelNO = P' +
        'ersonelDecExt.PersonelNo)'
      'AND (FormTypes.FormType = 61)'
      '                            ) AS SumWage,SumAmount'
      'FROM Pay.PersonelDecExt INNER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfo_1 ON PersonelDe' +
        'cExt.FormInfoID = FormsInfo_1.FormInfoID INNER JOIN'
      
        '                      Pay.PersonelInfo AS PersonelInfo_1 ON Pers' +
        'onelDecExt.PersonelNo = PersonelInfo_1.PersonelNo INNER JOIN'
      
        '                      Pay.FixedCalculated AS FixedCalculated_1 O' +
        'N PersonelDecExt.PersonelNo = FixedCalculated_1.PersonelNO AND'
      
        '                      FormsInfo_1.FormInfoID = FixedCalculated_1' +
        '.SalaryID INNER JOIN'
      
        '                          (SELECT     DecExtID, SUM(CASE WHEN De' +
        'cExtItems.SalaryID = :SalaryID1 THEN DecExtItems.DayQuntity ELSE' +
        ' 0 END) AS Amount1,'
      
        '                                                SUM(CASE WHEN De' +
        'cExtItems.SalaryID = :SalaryID2 THEN DecExtItems.DayQuntity ELSE' +
        ' 0 END) AS Amount2,'
      
        '                                                SUM(CASE WHEN De' +
        'cExtItems.SalaryID = :SalaryID3 THEN DecExtItems.DayQuntity ELSE' +
        ' 0 END) AS Amount3,'
      
        '                                                SUM(CASE WHEN De' +
        'cExtItems.SalaryID = :SalaryID4 THEN DecExtItems.DayQuntity ELSE' +
        ' 0 END) AS Amount4'
      
        '                                             , SUM(DayQuntity) A' +
        'S SumAmount'
      ''
      '                             FROM Pay.DecExtItems'
      
        '                             GROUP BY DecExtID) AS derivedtbl_1 ' +
        'ON PersonelDecExt.DecExtID = derivedtbl_1.DecExtID LEFT OUTER JO' +
        'IN'
      
        '                      Pay.Interdicts ON PersonelDecExt.PersonelN' +
        'o = Interdicts.PersonelNo'
      
        'WHERE     (FormsInfo_1.FormType = :FormType ) AND (Interdicts.St' +
        'ate < 50) AND (FixedCalculated_1.ArchiveID = :ArchiveID1 ) AND (' +
        'FixedCalculated_1.Mounth =  :mounth2 ) AND'
      
        '                      (FixedCalculated_1.BedBes = 2) AND (Person' +
        'elDecExt.FirstMounth <= :MonthFrom)'
      
        '                      AND (PersonelDecExt.EndMounth >= :MonthTo ' +
        ')'
      ''
      ':OfficeCodeFromTo'
      ''
      
        'AND (PersonelDecExt.PersonelNo between  :PersonelNoFrom and    :' +
        'PersonelNoTo )'
      ''
      
        '                      GROUP BY PersonelDecExt.PersonelNo, Person' +
        'elInfo_1.name_L1, PersonelInfo_1.lastName_L1, PersonelInfo_1.Nat' +
        'ionalID, PersonelDecExt.AidNo1, PersonelDecExt.AidDate1,'
      
        '                      PersonelDecExt.FirstMounth, PersonelDecExt' +
        '.EndMounth, derivedtbl_1.Amount1, derivedtbl_1.Amount2, derivedt' +
        'bl_1.Amount3, derivedtbl_1.Amount4,SumAmount'
      'ORDER BY PersonelDecExt.PersonelNo'
      ''
      ' '
      ' '
      ' '
      ' ')
    Left = 88
    Top = 307
  end
end

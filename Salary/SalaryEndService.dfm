inherited SalaryEndServiceF: TSalaryEndServiceF
  Left = 322
  Caption = #1587#1606#1608#1575#1578' '#1582#1583#1605#1578' '#1603#1575#1585#1603#1606#1575#1606
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 477
    Height = 40
    ExplicitTop = 477
    ExplicitHeight = 40
    inherited BtnReject: TBitBtn
      Height = 26
      ExplicitHeight = 26
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 85
      Top = 7
      Width = 75
      Height = 26
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 1
    end
    object BitBtn5: TBitBtn
      AlignWithMargins = True
      Left = 166
      Top = 7
      Width = 75
      Height = 26
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSearch_
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 2
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 7
      Width = 75
      Height = 26
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSendToExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      TabOrder = 3
    end
    object BitBtn7: TBitBtn
      AlignWithMargins = True
      Left = 707
      Top = 7
      Width = 75
      Height = 26
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 4
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 626
      Top = 7
      Width = 75
      Height = 26
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alRight
      Caption = #1670#1575#1662
      TabOrder = 5
      OnClick = BitBtn1Click
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 545
      Top = 7
      Width = 75
      Height = 26
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actVejehPrint
      Align = alRight
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
      TabOrder = 6
    end
    object BitBtn8: TBitBtn
      AlignWithMargins = True
      Left = 328
      Top = 7
      Width = 75
      Height = 26
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alLeft
      Caption = #1591#1585#1575#1581#1610' '#1670#1575#1662
      TabOrder = 7
    end
    object btnEmail: TBitBtn
      AlignWithMargins = True
      Left = 409
      Top = 7
      Width = 75
      Height = 26
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actEmail
      Align = alLeft
      Caption = 'Email'
      TabOrder = 8
    end
  end
  inherited Panel3: TPanel
    Height = 424
    ExplicitHeight = 424
    object PageControl1: TPageControl
      Left = 2
      Top = 2
      Width = 782
      Height = 420
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      OnChange = PageControl1Change
      object TabSheet1: TTabSheet
        Caption = #1604#1610#1587#1578' '#1607#1586#1610#1606#1607
        object DBGrid1: TCedarDbgrid
          Left = 0
          Top = 0
          Width = 774
          Height = 392
          Align = alClient
          Color = clCream
          DataSource = Srctide
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
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          RowHeight = 18
          SearchPanel.Enabled = True
          SortLocal = True
          TabOrder = 0
          OnKeyPress = DBGrid1KeyPress
          ActiveSearchPanel = False
          SelectFooterIndex = 0
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'PersonelNo'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'PersonelName'
              Footers = <>
              Width = 64
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'name_L1'
              Footers = <>
              Width = 64
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'lastName_L1'
              Footers = <>
              Width = 64
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'OfficeCode'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'OfficeName'
              Footers = <>
              Width = 64
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'ProjectCode'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'ProjectName'
              Footers = <>
              Width = 64
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DayQuntity'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'EmployerAmount'
              Footers = <>
              Width = 64
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'ProcCode'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'InfoName_L1'
              Footers = <>
              Width = 64
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Email'
              Footers = <>
              Width = 64
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Mobile'
              Footers = <>
              Width = 64
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'amount'
              Footers = <>
              Width = 64
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = #1604#1610#1587#1578' '#1603#1604#1610
        ImageIndex = 1
        object DBGrid2: TCedarDbgrid
          Left = 0
          Top = 0
          Width = 774
          Height = 392
          Align = alClient
          DataSource = SrcTidePersonel
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
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          RowHeight = 18
          SearchPanel.Enabled = True
          SortLocal = True
          TabOrder = 0
          OnKeyPress = DBGrid2KeyPress
          ActiveSearchPanel = False
          SelectFooterIndex = 0
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'PersonelNo'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'PersonelName'
              Footers = <>
              Width = 64
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'lastName_L1'
              Footers = <>
              Width = 64
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'name_L1'
              Footers = <>
              Width = 64
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'LastDayQuntity'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'NowDayQuntity'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'SumDayQuntity'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'LastAnnuityPrice'
              Footers = <>
              Width = 64
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'NowAnnuityPrice'
              Footers = <>
              Width = 64
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'SumAnnuityPrice'
              Footers = <>
              Width = 64
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Email'
              Footers = <>
              Width = 64
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Mobile'
              Footers = <>
              Width = 64
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'amount'
              Footers = <>
              Width = 64
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'PaymentBonus2'
              Footers = <>
              Width = 64
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'BonusPayAble'
              Footers = <>
              Width = 64
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
  end
  inherited ActionList: TActionList
    Left = 448
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      OnExecute = actPrintExecute
    end
    object actSendToExcel: TAction
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      OnExecute = actSendToExcelExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actVejehPrint: TAction
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
      OnExecute = actVejehPrintExecute
    end
    object actCopyNext: TAction
      Caption = #1575#1606#1578#1602#1575#1604' '#1576#1607' '#1587#1575#1604' '#1576#1593#1583
    end
    object actPrint2: TAction
      Caption = #1670#1575#1662' 2'
      OnExecute = actPrint2Execute
    end
    object actSMS: TAction
      Caption = #1575#1585#1587#1575#1604' '#1662#1610#1575#1605#1603' '#1604#1610#1587#1578' '#1607#1586#1610#1606#1607
      OnExecute = actSMSExecute
    end
    object actSMS2: TAction
      Caption = #1575#1585#1587#1575#1604' '#1662#1610#1575#1605#1603' '#1604#1610#1587#1578' '#1603#1604#1610
      OnExecute = actSMS2Execute
    end
    object actEmail: TAction
      Caption = 'Email'
      OnExecute = actEmailExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 456
    Top = 153
  end
  object qrytide: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'YearMounth'
        Size = -1
        Value = Null
      end
      item
        Name = 'PersonelNo2From'
        Size = -1
        Value = Null
      end
      item
        Name = 'PersonelNo2To'
        Size = -1
        Value = Null
      end
      item
        Name = 'FormInfoID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 840
      end
      item
        Name = 'PersonelNoFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'PersonelNoTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 2147483647
      end
      item
        Name = 'OfficeCodeFromTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PersonelStateFromTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'EndDateFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'EndDateTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearIDFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearIDTo'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT      Pay.PersonelDecExt.PersonelNo, PersonelInfo.name_L1 ' +
        ', PersonelInfo.lastName_L1, Pay.PersonelInfo.name_L1 + '#39'     '#39' +' +
        ' Pay.PersonelInfo.lastName_L1 AS PersonelName,'
      
        '                      Pay.FormsInfo.InfoID AS OfficeCode, Pay.Fo' +
        'rmsInfo.InfoName_L1 AS OfficeName, FormsInfo_1.InfoID AS Project' +
        'Code,'
      
        '                      FormsInfo_1.InfoName_L1 AS ProjectName, SU' +
        'M(Pay.PersonelDecExt.DayQuntity) AS DayQuntity, SUM(Pay.Personel' +
        'DecExt.EmployerAmount) '
      '                      AS EmployerAmount,'
      
        '                      FormsInfo_ProcCode.InfoID AS ProcCode, For' +
        'msInfo_ProcCode.InfoName_L1,PersonelInfo.Mobile'
      
        ', PersonelInfo.Email   ,SUM(ContainSalaryAnnuity.amount) AS Amou' +
        'nt'
      ''
      'FROM Pay.PersonelDecExt INNER JOIN'
      
        '                      Pay.PersonelInfo ON PersonelDecExt.Persone' +
        'lNo = PersonelInfo.PersonelNo INNER JOIN'
      
        '                      Pay.FormsInfo ON PersonelDecExt.OfficeCode' +
        ' = FormsInfo.FormInfoID INNER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfo_1 ON PersonelDe' +
        'cExt.FormInfoID2 = FormsInfo_1.FormInfoID LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfo_ProcCode ON Per' +
        'sonelDecExt.ProcCode = FormsInfo_ProcCode.FormInfoID  LEFT OUTER' +
        ' JOIN'
      
        '                      Pay.FormsInfo AS FormsInfo_PersonelState O' +
        'N PersonelInfo.PersonelState = FormsInfo_PersonelState.FormInfoI' +
        'D'
      'LEFT OUTER JOIN'
      
        #9'Pay.ContainSalaryAnnuity(:YearMounth, 1, 2, :PersonelNo2From, :' +
        'PersonelNo2To, 2 ,0) ContainSalaryAnnuity ON'
      
        '                      PersonelDecExt.PersonelNo = ContainSalaryA' +
        'nnuity.PersonelNo'
      ''
      ''
      
        'WHERE     (Pay.PersonelDecExt.FormInfoID =:FormInfoID)  and (Per' +
        'sonelDecExt.PersonelNo between :PersonelNoFrom and :PersonelNoTo' +
        ')'
      ' :OfficeCodeFromTo'
      ' :PersonelStateFromTo'
      ''
      'AND  ((PersonelDecExt.EndDate IS NULL) OR'
      
        '                         (PersonelDecExt.EndDate = '#39'        '#39') O' +
        'R'
      
        '                         (PersonelDecExt.EndDate BETWEEN  :EndDa' +
        'teFrom  AND :EndDateTo ))'
      'AND ( PersonelDecExt.YearID  between :YearIDFrom and :YearIDTo )'
      ''
      
        'GROUP BY Pay.PersonelDecExt.PersonelNo, PersonelInfo.name_L1 , P' +
        'ersonelInfo.lastName_L1, Pay.PersonelInfo.name_L1 + '#39'     '#39' + Pe' +
        'rsonelInfo.lastName_L1, Pay.FormsInfo.InfoID,'
      
        '                      Pay.FormsInfo.InfoName_L1, FormsInfo_1.Inf' +
        'oID, FormsInfo_1.InfoName_L1,'
      
        '                      FormsInfo_ProcCode.InfoID , FormsInfo_Proc' +
        'Code.InfoName_L1,PersonelInfo.Mobile'
      ', PersonelInfo.Email'
      'ORDER BY Pay.PersonelDecExt.PersonelNo')
    Left = 206
    Top = 207
    object qrytidePersonelNo: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1662#1585#1587#1606#1604
      FieldName = 'PersonelNo'
    end
    object qrytidePersonelName: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1662#1585#1587#1606#1604
      FieldName = 'PersonelName'
      ReadOnly = True
      Size = 60
    end
    object qrytidename_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605
      FieldName = 'name_L1'
      Size = 25
    end
    object qrytidelastName_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1740
      FieldName = 'lastName_L1'
      Size = 30
    end
    object qrytideOfficeCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1608#1575#1581#1583
      FieldName = 'OfficeCode'
    end
    object qrytideOfficeName: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
      FieldName = 'OfficeName'
      Size = 255
    end
    object qrytideProjectCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1662#1585#1608#1688#1607
      FieldName = 'ProjectCode'
    end
    object qrytideProjectName: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1662#1585#1608#1688#1607
      FieldName = 'ProjectName'
      Size = 255
    end
    object qrytideDayQuntity: TFloatField
      Tag = 3
      DisplayLabel = #1603#1575#1585#1603#1585#1583
      FieldName = 'DayQuntity'
    end
    object qrytideEmployerAmount: TBCDField
      Tag = 3
      DisplayLabel = #1587#1606#1608#1575#1578' '#1582#1583#1605#1578
      FieldName = 'EmployerAmount'
      currency = True
      Precision = 19
    end
    object qrytideProcCode: TIntegerField
      DisplayLabel = #1603#1583' '#1605#1581#1589#1608#1604
      FieldName = 'ProcCode'
    end
    object qrytideInfoName_L1: TStringField
      DisplayLabel = #1606#1575#1605' '#1605#1581#1589#1608#1604
      FieldName = 'InfoName_L1'
      Size = 500
    end
    object qrytideEmail: TWideStringField
      Tag = 3
      FieldName = 'Email'
      Size = 100
    end
    object qrytideMobile: TStringField
      FieldName = 'Mobile'
    end
    object qrytideamount: TBCDField
      Tag = 3
      DisplayLabel = #1593#1606#1575#1608#1740#1606' '#1581#1705#1605
      FieldName = 'amount'
      currency = True
      Precision = 19
    end
  end
  object Srctide: TDataSource
    DataSet = qrytide
    Left = 134
    Top = 271
  end
  object qryTidePersonel: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'YearMounth'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PersonelNo2From'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PersonelNo2To'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearID1'
        Size = -1
        Value = Null
      end
      item
        Name = 'FormInfoID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 840
      end
      item
        Name = 'PersonelNoFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'PersonelNoTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 2147483647
      end
      item
        Name = 'OfficeCodeFromTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'EndDateFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'EndDateTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearID2'
        Size = -1
        Value = Null
      end
      item
        Name = 'EndDate2From'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'EndDate2To'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearIDFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearIDTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'PersonelStateFromTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      
        'SELECT    NowYearAnnuity.PersonelNo, PersonelInfo.name_L1 , Pers' +
        'onelInfo.lastName_L1, PersonelInfo.name_L1 + '#39'     '#39' + PersonelI' +
        'nfo.lastName_L1 AS PersonelName,'
      '          ISNULL(NowYearAnnuity.DayQuntity, 0) AS NowDayQuntity,'
      '          ISNULL(FirstAnnuity.DayQuntity, 0) AS LastDayQuntity,'
      
        '          ISNULL(NowYearAnnuity.DayQuntity, 0) + ISNULL(FirstAnn' +
        'uity.DayQuntity, 0) AS SumDayQuntity,'
      
        '          ISNULL(NowYearAnnuity.EmployerAmount, 0)  AS NowAnnuit' +
        'yPrice,'
      
        '          ISNULL(FirstAnnuity.EmployeeAmount, 0) AS LastAnnuityP' +
        'rice,'
      
        '          ISNULL(NowYearAnnuity.EmployerAmount, 0) + ISNULL(Firs' +
        'tAnnuity.EmployeeAmount, 0) AS          SumAnnuityPrice,Personel' +
        'Info.Mobile'
      
        ', PersonelInfo.Email     ,NowYearAnnuity.amount   ,PaymentBonus2' +
        ', BonusPayAble'
      ''
      'FROM         ('
      
        'SELECT     PersonelDecExt.PersonelNo, SUM(DayQuntity) AS DayQunt' +
        'ity, SUM(EmployerAmount) AS EmployerAmount'
      '       ,SUM(ContainSalaryAnnuity.amount) AS amount'
      ''
      
        #9'   ,  SUM(EmployerAmount) - SUM(ISNULL(PayBonus.EmployeeAmount,' +
        ' 0)) AS BonusPayAble,'
      
        '                       ISNULL(SUM(PayBonus.EmployeeAmount1), 0) ' +
        'AS PaymentBonus1'
      
        #9#9#9#9#9'  ,ISNULL(SUM(PayBonus.EmployeeAmount2), 0) AS PaymentBonus' +
        '2'
      ''
      ''
      '                        FROM Pay.PersonelDecExt INNER JOIN'
      
        '                                              Pay.FormsInfo AS F' +
        'ormsInfoOffice ON PersonelDecExt.OfficeCode = FormsInfoOffice.Fo' +
        'rmInfoID'
      'LEFT OUTER JOIN'
      
        #9'Pay.ContainSalaryAnnuity(:YearMounth, 1, 2, :PersonelNo2From, :' +
        'PersonelNo2To, 2 ,0) ContainSalaryAnnuity ON'
      
        '                      PersonelDecExt.PersonelNo = ContainSalaryA' +
        'nnuity.PersonelNo'
      ''
      'LEFT OUTER JOIN'
      
        ' (SELECT     PersonelDecExt_1.PersonelNo, SUM(CASE  WHEN FormsIn' +
        'fo_1.InfoID =2 THEN PersonelDecExt_1.EmployeeAmount ELSE 0 END) ' +
        'AS EmployeeAmount'
      
        '                        ,SUM(CASE  WHEN FormsInfo_1.InfoID =1 TH' +
        'EN PersonelDecExt_1.EmployeeAmount ELSE 0 END) AS EmployeeAmount' +
        '1'
      
        '                        ,SUM(CASE  WHEN FormsInfo_1.InfoID =2 TH' +
        'EN PersonelDecExt_1.EmployeeAmount ELSE 0 END) AS EmployeeAmount' +
        '2'
      ''
      ''
      
        '                        FROM Pay.PersonelDecExt AS PersonelDecEx' +
        't_1 INNER JOIN'
      
        '                                              Pay.FormsInfo AS F' +
        'ormsInfo_1 ON PersonelDecExt_1.FormInfoID = FormsInfo_1.FormInfo' +
        'ID'
      '                        WHERE     (FormsInfo_1.FormType = 58)'
      
        '                        AND (PersonelDecExt_1.YearID = :YearID1 ' +
        ')'
      
        '                        GROUP BY PersonelDecExt_1.PersonelNo) AS' +
        ' PayBonus on PayBonus.PersonelNo = PersonelDecExt.PersonelNo'
      ''
      
        'where  (PersonelDecExt.FormInfoID =:FormInfoID) and (PersonelDec' +
        'Ext.PersonelNo between :PersonelNoFrom and :PersonelNoTo)'
      ' :OfficeCodeFromTo'
      ''
      'AND  ((PersonelDecExt.EndDate IS NULL) OR'
      
        '                         (PersonelDecExt.EndDate = '#39'        '#39') O' +
        'R'
      
        '                         (PersonelDecExt.EndDate BETWEEN  :EndDa' +
        'teFrom  AND :EndDateTo ))'
      'AND (Pay.PersonelDecExt.YearID = :YearID2 )'
      ''
      'GROUP BY PersonelDecExt.PersonelNo) NowYearAnnuity'
      '             INNER JOIN'
      
        '             Pay.PersonelInfo ON NowYearAnnuity.PersonelNo = Per' +
        'sonelInfo.PersonelNo LEFT OUTER JOIN'
      '             ('
      
        '             SELECT     PersonelDecExt.PersonelNo, SUM(PersonelD' +
        'ecExt.DayQuntity) AS DayQuntity, '
      '         SUM(PersonelDecExt.EmployeeAmount) AS EmployeeAmount'
      ' FROM Pay.PersonelDecExt AS PersonelDecExt INNER JOIN'
      
        ' Pay.FormsInfo ON PersonelDecExt.FormInfoID = FormsInfo.FormInfo' +
        'ID INNER JOIN'
      
        ' Pay.FormsInfo AS FormsInfoOffice ON PersonelDecExt.OfficeCode =' +
        ' FormsInfoOffice.FormInfoID'
      '             WHERE     (FormsInfo.FormType = 32) '
      'AND  ((PersonelDecExt.EndDate IS NULL) OR'
      '        (PersonelDecExt.EndDate = '#39'        '#39') OR'
      
        '        (PersonelDecExt.EndDate BETWEEN  :EndDate2From  AND :End' +
        'Date2To ))'
      'AND ( PersonelDecExt.YearID  between :YearIDFrom and :YearIDTo )'
      ''
      ''
      '            GROUP BY PersonelDecExt.PersonelNo) FirstAnnuity'
      
        '              ON NowYearAnnuity.PersonelNo = FirstAnnuity.Person' +
        'elNo  LEFT OUTER JOIN'
      
        '      Pay.FormsInfo AS FormsInfo_PersonelState ON PersonelInfo.P' +
        'ersonelState = FormsInfo_PersonelState.FormInfoID'
      ' :PersonelStateFromTo'
      ''
      ''
      ''
      ''
      ''
      'ORDER BY NowYearAnnuity.PersonelNo')
    Left = 574
    Top = 152
    object qryTidePersonelPersonelNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588'.'#1662#1585#1587#1606#1604
      FieldName = 'PersonelNo'
    end
    object qryTidePersonelPersonelName: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1662#1585#1587#1606#1604#1610
      FieldName = 'PersonelName'
      Size = 60
    end
    object qryTidePersonellastName_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1740
      FieldName = 'lastName_L1'
      Size = 30
    end
    object qryTidePersonelname_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605
      FieldName = 'name_L1'
      Size = 25
    end
    object qryTidePersonelLastDayQuntity: TFloatField
      Tag = 3
      DisplayLabel = #1603#1575#1585#1603#1585#1583' '#1587#1606#1608#1575#1578' '#1602#1576#1604
      FieldName = 'LastDayQuntity'
      ReadOnly = True
    end
    object qryTidePersonelNowDayQuntity: TFloatField
      Tag = 3
      DisplayLabel = #1603#1575#1585#1603#1585#1583' '#1587#1575#1604' '#1580#1575#1585#1610
      FieldName = 'NowDayQuntity'
      ReadOnly = True
    end
    object qryTidePersonelSumDayQuntity: TFloatField
      Tag = 3
      DisplayLabel = #1580#1605#1593' '#1603#1575#1585#1603#1585#1583
      FieldName = 'SumDayQuntity'
      ReadOnly = True
    end
    object qryTidePersonelLastAnnuityPrice: TBCDField
      Tag = 3
      DisplayLabel = #1587#1606#1608#1575#1578' '#1582#1583#1605#1578' '#1575#1576#1578#1583#1575#1610' '#1587#1575#1604
      FieldName = 'LastAnnuityPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryTidePersonelNowAnnuityPrice: TBCDField
      Tag = 3
      DisplayLabel = #1587#1606#1608#1575#1578' '#1582#1583#1605#1578' '#1587#1575#1604#1580#1575#1585#1610
      FieldName = 'NowAnnuityPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryTidePersonelSumAnnuityPrice: TBCDField
      Tag = 3
      DisplayLabel = #1580#1605#1593' '#1603#1604' '#1587#1606#1608#1575#1578' '#1582#1583#1605#1578
      FieldName = 'SumAnnuityPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryTidePersonelEmail: TWideStringField
      Tag = 3
      FieldName = 'Email'
      Size = 100
    end
    object qryTidePersonelMobile: TStringField
      FieldName = 'Mobile'
    end
    object qryTidePersonelamount: TBCDField
      Tag = 3
      DisplayLabel = #1593#1606#1575#1608#1740#1606' '#1581#1705#1605
      FieldName = 'amount'
      currency = True
      Precision = 19
    end
    object qryTidePersonelPaymentBonus2: TBCDField
      DisplayLabel = #1593#1604#1610' '#1575#1604#1581#1587#1575#1576' '#1587#1606#1608#1575#1578
      FieldName = 'PaymentBonus2'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryTidePersonelBonusPayAble: TBCDField
      Tag = 3
      DisplayLabel = #1582#1575#1604#1589' '#1587#1606#1608#1575#1578
      FieldName = 'BonusPayAble'
      currency = True
      Precision = 19
    end
  end
  object SrcTidePersonel: TDataSource
    DataSet = qryTidePersonel
    Left = 574
    Top = 239
  end
  object qry_init: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * FROM Pay.FormsInfo where formtype=59')
    Left = 208
    Top = 8
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = Srctide
    UserName = 'DBPipeline1'
    Left = 366
    Top = 175
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'PersonelNo'
      FieldName = 'PersonelNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'PersonelName'
      FieldName = 'PersonelName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'name_L1'
      FieldName = 'name_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'lastName_L1'
      FieldName = 'lastName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'OfficeCode'
      FieldName = 'OfficeCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'OfficeName'
      FieldName = 'OfficeName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'ProjectCode'
      FieldName = 'ProjectCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'ProjectName'
      FieldName = 'ProjectName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'DayQuntity'
      FieldName = 'DayQuntity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'EmployerAmount'
      FieldName = 'EmployerAmount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'ProcCode'
      FieldName = 'ProcCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'InfoName_L1'
      FieldName = 'InfoName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'Email'
      FieldName = 'Email'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'Mobile'
      FieldName = 'Mobile'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'amount'
      FieldName = 'amount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
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
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'D:\Projects\Fara2010\Salary\Exe\Report\SalaryEndService1.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PNG'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RefreshTokenLifeSpan = 365
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RefreshTokenLifeSpan = 365
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    EmailSettings.ConnectionSettings.ConnectionStatusInfo = [csiStatusBar]
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
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
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.DropBoxSettings.SharedResources = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.GoogleDriveSettings.SharedResources = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    CloudDriveSettings.OneDriveSettings.SharedResources = True
    Left = 230
    Top = 143
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 30427
      mmPrintPosition = 0
      object ppLblCompanyName: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCompanyName'
        OnGetText = ppLblCompanyNameGetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 75936
        mmTop = 265
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCaption: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCaption'
        Border.mmPadding = 0
        Caption = #1587#1606#1608#1575#1578' '#1582#1583#1605#1578#8207' ('#1604#1610#1587#1578' '#1607#1586#1610#1606#1607' '#1607#1575')'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7197
        mmLeft = 78211
        mmTop = 6879
        mmWidth = 46778
        BandType = 0
        LayerName = Foreground
      end
      object ppLblPrintDate: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lbprintdate'
        OnGetText = ppLblPrintDateGetText
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1711#1586#1575#1585#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 9790
        mmTop = 1058
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583' '#1662#1585#1587#1606#1604
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 189820
        mmTop = 22490
        mmWidth = 12852
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1588#1582#1589#1575#1578' '#1662#1585#1587#1606#1604
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 153025
        mmTop = 22490
        mmWidth = 35738
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 93076
        mmTop = 22490
        mmWidth = 44983
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583' '#1662#1585#1608#1688#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 79167
        mmTop = 22490
        mmWidth = 12852
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606' '#1662#1585#1608#1688#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 40366
        mmTop = 22490
        mmWidth = 37744
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1575#1585#1603#1585#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 26457
        mmTop = 22490
        mmWidth = 12852
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1587#1606#1608#1575#1578' '#1582#1583#1605#1578'('#1585#1610#1575#1604')'#8207
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 508
        mmTop = 22490
        mmWidth = 24892
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583' '#1608#1575#1581#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 139171
        mmTop = 22490
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 21431
        mmWidth = 203200
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 29633
        mmWidth = 203200
        BandType = 0
        LayerName = Foreground
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 15346
        mmWidth = 203200
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lbprintdate1'
        OnGetText = ppLabel8GetText
        Border.mmPadding = 0
        Caption = #1605#1581#1583#1608#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5842
        mmLeft = 193009
        mmTop = 16140
        mmWidth = 8340
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        OnGetText = ppSysVarPageNoGetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 9790
        mmTop = 7673
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'PersonelNo'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 189820
        mmTop = 0
        mmWidth = 12852
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'PersonelName'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 152929
        mmTop = 0
        mmWidth = 35719
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'OfficeCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 139171
        mmTop = 0
        mmWidth = 12965
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'OfficeName'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 93134
        mmTop = 0
        mmWidth = 44979
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'ProjectCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 79111
        mmTop = 0
        mmWidth = 12965
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'ProjectName'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 40481
        mmTop = 0
        mmWidth = 37835
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'DayQuntity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 26458
        mmTop = 0
        mmWidth = 12965
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'EmployerAmount'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6879
        mmLeft = 794
        mmTop = 0
        mmWidth = 24606
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 10054
      mmPrintPosition = 0
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1606#1602#1604' '#1576#1607'..'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6085
        mmLeft = 187855
        mmTop = 1058
        mmWidth = 15610
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc8'
        Border.mmPadding = 0
        DataField = 'DayQuntity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 26457
        mmTop = 1058
        mmWidth = 12852
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc10'
        Border.mmPadding = 0
        DataField = 'EmployerAmount'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 529
        mmTop = 1058
        mmWidth = 24871
        BandType = 8
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 8
        LayerName = Foreground
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 265
        mmTop = 8202
        mmWidth = 203200
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 10054
      mmPrintPosition = 0
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1580#1605#1593
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6085
        mmLeft = 188913
        mmTop = 1588
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc7'
        Border.mmPadding = 0
        DataField = 'DayQuntity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 26458
        mmTop = 1588
        mmWidth = 12965
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc9'
        Border.mmPadding = 0
        DataField = 'EmployerAmount'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 529
        mmTop = 1588
        mmWidth = 24871
        BandType = 7
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 529
        mmWidth = 203200
        BandType = 7
        LayerName = Foreground
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.mmPadding = 0
        ParentWidth = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 8202
        mmWidth = 203200
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
    DataSource = SrcTidePersonel
    UserName = 'DBPipeline2'
    Left = 422
    Top = 239
  end
  object ppReport2: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'D:\Projects\Fara2010\Salary\Exe\Report\SalaryEndService2.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PNG'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RefreshTokenLifeSpan = 365
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RefreshTokenLifeSpan = 365
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    EmailSettings.ConnectionSettings.ConnectionStatusInfo = [csiStatusBar]
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
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
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.DropBoxSettings.SharedResources = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.GoogleDriveSettings.SharedResources = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    CloudDriveSettings.OneDriveSettings.SharedResources = True
    Left = 326
    Top = 287
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand2: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 29104
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LblCompanyName'
        OnGetText = ppLblCompanyNameGetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 75936
        mmTop = 529
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LblCaption'
        Border.mmPadding = 0
        Caption = ' '#1587#1606#1608#1575#1578' '#1582#1583#1605#1578' '#1603#1575#1585#1603#1606#1575#1606#8207'('#1604#1610#1587#1578' '#1603#1604#1610')'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7144
        mmLeft = 67469
        mmTop = 6879
        mmWidth = 67998
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lbprintdate'
        OnGetText = ppLblPrintDateGetText
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1711#1586#1575#1585#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 9790
        mmTop = 1058
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground1
      end
      object TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583' '#1662#1585#1587#1606#1604
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 189820
        mmTop = 21167
        mmWidth = 12852
        BandType = 0
        LayerName = Foreground1
      end
      object TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1588#1582#1589#1575#1578' '#1662#1585#1587#1606#1604
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 146844
        mmTop = 21167
        mmWidth = 41804
        BandType = 0
        LayerName = Foreground1
      end
      object TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1575#1585#1603#1585#1583#1587#1606#1608#1575#1578' '#1602#1576#1604
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 122238
        mmTop = 21167
        mmWidth = 23813
        BandType = 0
        LayerName = Foreground1
      end
      object TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1587#1606#1608#1575#1578' '#1575#1576#1578#1583#1575#1610' '#1587#1575#1604
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 48683
        mmTop = 21167
        mmWidth = 23548
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 20373
        mmWidth = 203200
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 28310
        mmWidth = 203200
        BandType = 0
        LayerName = Foreground1
      end
      object TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label101'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1587#1606#1608#1575#1578' '#1587#1575#1604#1580#1575#1585#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 24342
        mmTop = 21167
        mmWidth = 23548
        BandType = 0
        LayerName = Foreground1
      end
      object TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label102'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1603#1604' '#1587#1606#1608#1575#1578
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 265
        mmTop = 21167
        mmWidth = 23548
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable1'
        OnGetText = ppSysVarPageNoGetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 9790
        mmTop = 7673
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line12'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 14817
        mmWidth = 203200
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lbprintdate2'
        OnGetText = ppLabel9GetText
        Border.mmPadding = 0
        Caption = #1605#1581#1583#1608#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5842
        mmLeft = 190892
        mmTop = 14817
        mmWidth = 8340
        BandType = 0
        LayerName = Foreground1
      end
      object TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1575#1585#1603#1585#1583' '#1587#1575#1604#1580#1575#1585#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 97631
        mmTop = 21167
        mmWidth = 23813
        BandType = 0
        LayerName = Foreground1
      end
      object TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' '#1580#1605#1593' '#1603#1575#1585#1603#1585#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 73025
        mmTop = 21167
        mmWidth = 23813
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand2: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'PersonelNo'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7408
        mmLeft = 189820
        mmTop = 0
        mmWidth = 12852
        BandType = 4
        LayerName = Foreground1
      end
      object TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'PersonelName'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7408
        mmLeft = 146844
        mmTop = 0
        mmWidth = 41804
        BandType = 4
        LayerName = Foreground1
      end
      object TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'LastDayQuntity'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7408
        mmLeft = 122238
        mmTop = 0
        mmWidth = 23813
        BandType = 4
        LayerName = Foreground1
      end
      object TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'NowAnnuityPrice'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6879
        mmLeft = 24342
        mmTop = 0
        mmWidth = 23548
        BandType = 4
        LayerName = Foreground1
      end
      object TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'LastAnnuityPrice'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6879
        mmLeft = 48683
        mmTop = 0
        mmWidth = 23548
        BandType = 4
        LayerName = Foreground1
      end
      object TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'SumAnnuityPrice'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6879
        mmLeft = 265
        mmTop = 0
        mmWidth = 23548
        BandType = 4
        LayerName = Foreground1
      end
      object TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'NowDayQuntity'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7408
        mmLeft = 97631
        mmTop = 0
        mmWidth = 23813
        BandType = 4
        LayerName = Foreground1
      end
      object TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'SumDayQuntity'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7408
        mmLeft = 73025
        mmTop = 0
        mmWidth = 23813
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppFooterBand2: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 10054
      mmPrintPosition = 0
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1606#1602#1604' '#1576#1607'..'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6085
        mmLeft = 187855
        mmTop = 794
        mmWidth = 15610
        BandType = 8
        LayerName = Foreground1
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc8'
        Border.mmPadding = 0
        DataField = 'LastDayQuntity'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 122238
        mmTop = 794
        mmWidth = 23813
        BandType = 8
        LayerName = Foreground1
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc10'
        Border.mmPadding = 0
        DataField = 'LastAnnuityPrice'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 48683
        mmTop = 794
        mmWidth = 23548
        BandType = 8
        LayerName = Foreground1
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.mmPadding = 0
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 8202
        mmWidth = 203200
        BandType = 8
        LayerName = Foreground1
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc101'
        Border.mmPadding = 0
        DataField = 'SumAnnuityPrice'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 265
        mmTop = 794
        mmWidth = 23548
        BandType = 8
        LayerName = Foreground1
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc102'
        Border.mmPadding = 0
        DataField = 'NowAnnuityPrice'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 24342
        mmTop = 794
        mmWidth = 23548
        BandType = 8
        LayerName = Foreground1
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line14'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 265
        mmTop = 0
        mmWidth = 203200
        BandType = 8
        LayerName = Foreground1
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc3'
        Border.mmPadding = 0
        DataField = 'NowDayQuntity'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 97631
        mmTop = 794
        mmWidth = 23813
        BandType = 8
        LayerName = Foreground1
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc5'
        Border.mmPadding = 0
        DataField = 'SumDayQuntity'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 73025
        mmTop = 794
        mmWidth = 23813
        BandType = 8
        LayerName = Foreground1
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 11113
      mmPrintPosition = 0
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1580#1605#1593
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6085
        mmLeft = 188913
        mmTop = 1323
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground1
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc7'
        Border.mmPadding = 0
        DataField = 'LastAnnuityPrice'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 122238
        mmTop = 1323
        mmWidth = 23813
        BandType = 7
        LayerName = Foreground1
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc9'
        Border.mmPadding = 0
        DataField = 'LastAnnuityPrice'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 48683
        mmTop = 1323
        mmWidth = 23548
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line4'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 529
        mmWidth = 203200
        BandType = 7
        LayerName = Foreground1
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'NowAnnuityPrice'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 24342
        mmTop = 1323
        mmWidth = 23548
        BandType = 7
        LayerName = Foreground1
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'SumAnnuityPrice'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 265
        mmTop = 1323
        mmWidth = 23548
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line13'
        Border.mmPadding = 0
        ParentWidth = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 0
        mmTop = 8731
        mmWidth = 203200
        BandType = 7
        LayerName = Foreground1
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc4'
        Border.mmPadding = 0
        DataField = 'NowDayQuntity'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 97631
        mmTop = 1323
        mmWidth = 23813
        BandType = 7
        LayerName = Foreground1
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc6'
        Border.mmPadding = 0
        DataField = 'SumDayQuntity'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 73025
        mmTop = 1323
        mmWidth = 23813
        BandType = 7
        LayerName = Foreground1
      end
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object PopPrint: TPopupMenu
    Left = 584
    Top = 345
    object mnuPrint: TMenuItem
      Action = actPrint
    end
    object N21: TMenuItem
      Action = actPrint2
    end
  end
  object popEmail: TPopupMenu
    Left = 217
    Top = 355
    object mnuPNG1: TMenuItem
      Caption = 'PNG'
      object mnuEmail: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'PNG'
        OnClick = mnuEmailClick
      end
      object mnu1: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'PNG'
        OnClick = mnuEmailClick
      end
    end
    object mnuJPEG1: TMenuItem
      Caption = 'JPEG'
      object mnuN10: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'JPEG'
        OnClick = mnuEmailClick
      end
      object mnuN11: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'JPEG'
        OnClick = mnuEmailClick
      end
    end
    object mnuPDF1: TMenuItem
      Caption = 'PDF'
      object mnuN12: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'PDF'
        OnClick = mnuEmailClick
      end
      object mnuN13: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'PDF'
        OnClick = mnuEmailClick
      end
    end
    object mnuBMP1: TMenuItem
      Caption = 'BMP'
      object mnuN14: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'BMP'
        OnClick = mnuEmailClick
      end
      object mnuN15: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'BMP'
        OnClick = mnuEmailClick
      end
    end
    object mnuGIF1: TMenuItem
      Caption = 'GIF'
      object mnuN16: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'GIF'
        OnClick = mnuEmailClick
      end
      object mnuN17: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'GIF'
        OnClick = mnuEmailClick
      end
    end
    object mnuRTF1: TMenuItem
      Caption = 'RTF'
      object mnuN18: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'RTF'
        OnClick = mnuEmailClick
      end
      object mnuN19: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'RTF'
        OnClick = mnuEmailClick
      end
    end
    object mnuDOC1: TMenuItem
      Caption = 'DOC'
      object mnuN20: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'DOC'
        OnClick = mnuEmailClick
      end
      object mnu2: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'DOC'
        OnClick = mnuEmailClick
      end
    end
    object mnuFile1: TMenuItem
      Caption = 'TextFile'
      object mnuN22: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'TextFile'
        OnClick = mnuEmailClick
      end
      object mnuN23: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'TextFile'
        OnClick = mnuEmailClick
      end
    end
  end
end

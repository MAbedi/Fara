inherited PersonalTideF: TPersonalTideF
  Left = 297
  Top = 111
  Caption = #1593#1610#1583#1610' '#1608' '#1662#1575#1583#1575#1588
  ClientHeight = 508
  ClientWidth = 803
  OnResize = FormResize
  ExplicitWidth = 811
  ExplicitHeight = 539
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 468
    Width = 803
    Height = 40
    ExplicitTop = 468
    ExplicitWidth = 803
    ExplicitHeight = 40
    inherited BtnReject: TBitBtn
      Height = 26
      ExplicitHeight = 26
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 643
      Top = 4
      Width = 75
      Height = 29
      Margins.Bottom = 6
      Action = actPrint
      Align = alRight
      Caption = #1670#1575#1662
      TabOrder = 1
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 85
      Top = 4
      Width = 75
      Height = 29
      Margins.Bottom = 6
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 2
    end
    object BitBtn5: TBitBtn
      AlignWithMargins = True
      Left = 166
      Top = 4
      Width = 75
      Height = 29
      Margins.Bottom = 6
      Action = actSearch_
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 3
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 4
      Width = 75
      Height = 29
      Margins.Bottom = 6
      Action = actSendToExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'...'
      TabOrder = 4
    end
    object BitBtn7: TBitBtn
      AlignWithMargins = True
      Left = 724
      Top = 4
      Width = 75
      Height = 29
      Margins.Bottom = 6
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 5
    end
    object BitBtn8: TBitBtn
      AlignWithMargins = True
      Left = 328
      Top = 4
      Width = 75
      Height = 29
      Margins.Bottom = 6
      Action = actEmail
      Align = alLeft
      Caption = 'Email'
      TabOrder = 6
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 409
      Top = 4
      Width = 75
      Height = 29
      Margins.Bottom = 6
      Align = alLeft
      Caption = #1587#1575#1610#1585' '#1670#1575#1662#1607#1575
      TabOrder = 7
      OnClick = BitBtn8Click
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 490
      Top = 4
      Width = 99
      Height = 29
      Margins.Bottom = 6
      Action = actsSendEmailDirect
      Align = alLeft
      Caption = 'Send Email Direct'
      TabOrder = 8
    end
  end
  inherited Panel2: TPanel
    Width = 803
    ExplicitWidth = 803
    inherited ImgTemplate: TImage
      ExplicitLeft = 769
    end
    inherited lblCaption: TLabel
      Left = 695
      ExplicitLeft = 695
    end
    object rdgrpEmail: TRadioGroup
      Left = 1
      Top = 1
      Width = 313
      Height = 51
      Align = alLeft
      Caption = #1601#1610#1604#1578#1585' '#1576#1585' '#1581#1587#1576' '#1575#1610#1605#1610#1604' '#1662#1585#1587#1606#1604
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #1607#1600#1600#1600#1600#1600#1605#1600#1600#1600#1600#1600#1607' '#1662#1585#1587#1606#1604
        #1662#1585#1587#1606#1604' '#1583#1575#1585#1610' '#1575#1610#1605#1610#1604
        #1662#1585#1587#1606#1604' '#1576#1583#1608#1606' '#1575#1610#1605#1610#1604)
      TabOrder = 0
      OnClick = rdgrpEmailClick
    end
  end
  inherited Panel3: TPanel
    Width = 803
    Height = 415
    ExplicitWidth = 803
    ExplicitHeight = 415
    object PageControl1: TPageControl
      Left = 2
      Top = 2
      Width = 799
      Height = 411
      ActivePage = TabSheet2
      Align = alClient
      TabOrder = 0
      OnChange = PageControl1Change
      object TabSheet1: TTabSheet
        Caption = #1604#1610#1587#1578' '#1607#1586#1610#1606#1607
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 791
          Height = 345
          Align = alClient
          DataSource = Srctide
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid1DrawColumnCell
          OnKeyPress = DBGrid1KeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'PersonelNo'
              Title.Alignment = taCenter
              Width = 52
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PersonelName'
              Title.Alignment = taCenter
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'name_L1'
              Width = 21
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'lastName_L1'
              Width = 68
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'InfoID'
              Title.Alignment = taCenter
              Width = 41
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OfficeName'
              Title.Alignment = taCenter
              Width = 96
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Expr1'
              Title.Alignment = taCenter
              Width = 43
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ProjectName'
              Title.Alignment = taCenter
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ProcCode'
              Width = 51
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'InfoName_L1'
              Width = 51
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DayQuntity'
              Title.Alignment = taCenter
              Width = 46
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'amount'
              Width = 58
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EmployeeAmount'
              Title.Alignment = taCenter
              Visible = True
            end>
        end
        object StatusBar1: TStatusBar
          Left = 0
          Top = 364
          Width = 791
          Height = 19
          Panels = <
            item
              Width = 300
            end
            item
              Width = 200
            end
            item
              Text = #1580#1605#1593' '#1603#1604' :'
              Width = 50
            end>
        end
        object StatusBar2: TStatusBar
          Left = 0
          Top = 345
          Width = 791
          Height = 19
          Panels = <
            item
              Width = 150
            end
            item
              Width = 150
            end
            item
              Width = 50
            end>
        end
      end
      object TabSheet2: TTabSheet
        Caption = #1582#1575#1604#1589' '#1593#1610#1583#1610
        ImageIndex = 1
        object DBGrid2: TDBGrid
          Left = 0
          Top = 0
          Width = 791
          Height = 345
          Align = alClient
          Color = clCream
          DataSource = SrcTidePersonel
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid2DrawColumnCell
          OnKeyPress = DBGrid2KeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'EmployTypeID'
              Width = 47
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EmployTypeName'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OfficeID'
              Width = 37
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OfficeName'
              Width = 66
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PersonelNo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PersonelName'
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'name_L1'
              Width = 24
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'lastName_L1'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DayQuntity'
              Width = 32
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'amount'
              Width = 59
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BonusPrise'
              Width = 69
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TaxPrice'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PaymentBonus'
              Width = 97
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BonusPayAble'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AccountNumber'
              Width = 68
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Email'
              Width = 56
              Visible = True
            end>
        end
        object StatusBar3: TStatusBar
          Left = 0
          Top = 364
          Width = 791
          Height = 19
          Panels = <
            item
              Width = 200
            end
            item
              Width = 200
            end
            item
              Width = 200
            end
            item
              Width = 150
            end
            item
              Text = #1580#1605#1593' '#1603#1604' '
              Width = 50
            end>
        end
        object StatusBar4: TStatusBar
          Left = 0
          Top = 345
          Width = 791
          Height = 19
          Panels = <
            item
              Width = 150
            end
            item
              Width = 150
            end
            item
              Width = 50
            end>
        end
      end
      object TabSheet3: TTabSheet
        Caption = '..'
        ImageIndex = 2
        object Memo1: TMemo
          Left = 0
          Top = 0
          Width = 791
          Height = 383
          Align = alClient
          Color = clInactiveCaption
          Lines.Strings = (
            'Memo1')
          TabOrder = 0
          Visible = False
        end
      end
    end
  end
  inherited ActionList: TActionList
    Left = 408
    Top = 5
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      OnExecute = actPrintExecute
    end
    object actSendToExcel: TAction
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'...'
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
    object actFish: TAction
      Caption = #1670#1575#1662' '#1601#1610#1588
    end
    object actSMS: TAction
      Caption = #1575#1585#1587#1575#1604' '#1662#1610#1575#1605#1603' '#1604#1610#1587#1578' '#1607#1586#1610#1606#1607
      OnExecute = actSMSExecute
    end
    object actSMS2: TAction
      Caption = #1575#1585#1587#1575#1604' '#1662#1610#1575#1605#1603' '#1582#1575#1604#1589' '#1593#1610#1583#1610
      OnExecute = actSMS2Execute
    end
    object actEmail: TAction
      Caption = 'Email'
      OnExecute = actEmailExecute
    end
    object actsSendEmailDirect: TAction
      Caption = 'Send Email Direct'
      OnExecute = actsSendEmailDirectExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 88
    Top = 125
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
        Value = 0
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
        Value = 0
      end
      item
        Name = 'PersonelStateFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'PersonelStateTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'OfficeCodeFromTo'
        Size = -1
        Value = Null
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
        Name = 'YearID'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT      PersonelDecExt.PersonelNo,PersonelInfo.name_L1, Pers' +
        'onelInfo.lastName_L1, PersonelInfo.name_L1 + '#39'     '#39' + PersonelI' +
        'nfo.lastName_L1 AS PersonelName,'
      
        '                      FormsInfo.InfoID, FormsInfo.InfoName_L1 AS' +
        ' OfficeName, FormsInfo_1.InfoID AS Expr1, FormsInfo_1.InfoName_L' +
        '1 AS ProjectName, '
      
        '                      PersonelDecExt.DayQuntity, PersonelDecExt.' +
        'EmployeeAmount'
      
        ', FormsInfo_ProcCode.InfoID AS ProcCode , FormsInfo_ProcCode.Inf' +
        'oName_L1,PersonelInfo.Mobile'
      ' ,ContainSalaryAnnuity.amount  , PersonelDecExt.EmployerAmount'
      'FROM Pay.PersonelDecExt INNER JOIN'
      
        '                      Pay.PersonelInfo ON PersonelDecExt.Persone' +
        'lNo = PersonelInfo.PersonelNo INNER JOIN'
      
        '                      Pay.FormsInfo ON PersonelDecExt.OfficeCode' +
        ' = FormsInfo.FormInfoID INNER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfo_1 ON PersonelDe' +
        'cExt.FormInfoID2 = FormsInfo_1.FormInfoID LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfo_ProcCode ON Per' +
        'sonelDecExt.ProcCode = FormsInfo_ProcCode.FormInfoID'
      'LEFT OUTER JOIN  Pay.FormsInfo AS FormsInfo_2PersonelState ON'
      'PersonelInfo.PersonelState = FormsInfo_2PersonelState.FormInfoID'
      'LEFT OUTER JOIN'
      
        #9'Pay.ContainSalaryAnnuity(:YearMounth, 1, 2, :PersonelNo2From, :' +
        'PersonelNo2To, 1 ,0) ContainSalaryAnnuity ON'
      
        '                      PersonelDecExt.PersonelNo = ContainSalaryA' +
        'nnuity.PersonelNo'
      ''
      'WHERE     (PersonelDecExt.FormInfoID =:FormInfoID)'
      
        'and (PersonelDecExt.PersonelNo between :PersonelNoFrom and :Pers' +
        'onelNoTo)'
      
        'AND  (FormsInfo_2PersonelState.InfoID BETWEEN :PersonelStateFrom' +
        '  AND :PersonelStateTo)'
      ''
      '  :OfficeCodeFromTo'
      ''
      'AND  ((PersonelDecExt.EndDate IS NULL) OR'
      
        '                         (PersonelDecExt.EndDate = '#39'        '#39') O' +
        'R'
      
        '                         (PersonelDecExt.EndDate BETWEEN  :EndDa' +
        'teFrom  AND :EndDateTo ))'
      'AND (PersonelDecExt.YearID = :YearID )'
      ''
      'ORDER BY PersonelDecExt.PersonelNo')
    Left = 134
    Top = 191
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
    object qrytideInfoID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1608#1575#1581#1583
      FieldName = 'InfoID'
    end
    object qrytideOfficeName: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
      FieldName = 'OfficeName'
      Size = 255
    end
    object qrytideExpr1: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1662#1585#1608#1688#1607
      FieldName = 'Expr1'
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
    object qrytideEmployeeAmount: TBCDField
      Tag = 3
      DisplayLabel = #1606#1575#1582#1575#1604#1589' '#1593#1610#1583#1610
      FieldName = 'EmployeeAmount'
      currency = True
      Precision = 19
    end
    object qrytideProcCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1581#1589#1608#1604
      FieldName = 'ProcCode'
    end
    object qrytideInfoName_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1605#1581#1589#1608#1604
      FieldName = 'InfoName_L1'
      Size = 500
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
    object qrytideEmployerAmount: TBCDField
      Tag = 3
      FieldName = 'EmployerAmount'
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
    AfterOpen = qryTidePersonelAfterOpen
    Parameters = <
      item
        Name = 'FormInfoID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'PersonelNoFrom'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'PersonelNoTo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'PersonelStateFrom'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PersonelStateTo'
        DataType = ftString
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
        Name = 'YearID'
        Size = -1
        Value = Null
      end
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
        Name = 'InterTypeFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'InterTypeTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ProjectIDFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ProjectIDTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'OfficeCodeFromTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      
        'SELECT     FormsInfo_EmployType.InfoID AS EmployTypeID, FormsInf' +
        'o_EmployType.InfoName_L1 AS EmployTypeName, FormsInfo.InfoID AS ' +
        'OfficeID, '
      
        '                      FormsInfo.InfoName_L1 AS OfficeName, Bonus' +
        '.PersonelNo,Bonus.name_L1, Bonus.lastName_L1, Bonus.PersonelName' +
        ', Bonus.DayQuntity, Bonus.BonusPrise,'
      '                      Bonus.TaxPrice,'
      
        '                      ISNULL(PayBonus.EmployeeAmount, 0) AS Paym' +
        'entBonus, Bonus.BonusPayAble - ISNULL(PayBonus.EmployeeAmount, 0' +
        ') AS BonusPayAble, '
      
        '                      Bonus.AccountNumber, Bonus.Mobile, Bonus.E' +
        'mail'
      #9#9#9#9#9'  ,ISNULL(PayBonus.EmployeeAmount1, 0) AS PaymentBonus1'
      #9#9#9#9#9'  ,ISNULL(PayBonus.EmployeeAmount2, 0) AS PaymentBonus2'
      '            ,ContainSalaryAnnuity.amount ,EmployerAmount'
      
        'FROM         (SELECT     PersonelDecExt_1.YearID,PersonelDecExt_' +
        '1.PersonelNo, SUM(CASE  WHEN FormsInfo_1.InfoID =1 THEN Personel' +
        'DecExt_1.EmployeeAmount ELSE 0 END) AS EmployeeAmount'
      
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
      
        '                        GROUP BY PersonelDecExt_1.YearID,Persone' +
        'lDecExt_1.PersonelNo) AS PayBonus RIGHT OUTER JOIN'
      '                      Pay.Interdicts LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfo_EmployType ON I' +
        'nterdicts.EmployTypeID = FormsInfo_EmployType.FormInfoID RIGHT O' +
        'UTER JOIN'
      
        '                          (SELECT     PersonelDecExt.YearID,Pers' +
        'onelDecExt.PersonelNo,PersonelInfo.Mobile,PersonelInfo.name_L1, ' +
        'PersonelInfo.lastName_L1, PersonelInfo.name_L1 + '#39'     '#39' + Perso' +
        'nelInfo.lastName_L1 AS PersonelName,'
      
        '                                                   SUM(PersonelD' +
        'ecExt.DayQuntity) AS DayQuntity, ROUND(SUM(ISNULL(PersonelDecExt' +
        '.EmployeeAmount, 0)), 0) AS BonusPrise, '
      
        '                                                   ROUND(SUM(Per' +
        'sonelDecExt.PaymentLoan), 0) AS TaxPrice, '
      
        '                                                   ROUND(SUM(Per' +
        'sonelDecExt.EmployeeAmount - PersonelDecExt.PaymentLoan), 0) AS ' +
        'BonusPayAble, '
      
        '                                                   PersonelInfo.' +
        'AccountNumber, PersonelInfo.Email'
      
        '                                                   , SUM(Persone' +
        'lDecExt.EmployerAmount) AS EmployerAmount'
      '                             FROM Pay.PersonelDecExt INNER JOIN'
      
        '                                                   Pay.PersonelI' +
        'nfo ON PersonelDecExt.PersonelNo = PersonelInfo.PersonelNo LEFT ' +
        'OUTER JOIN'
      
        '                                                   Pay.FormsInfo' +
        ' AS FormsInfo_2PersonelState ON PersonelInfo.PersonelState = For' +
        'msInfo_2PersonelState.FormInfoID'
      ''
      'WHERE   (Pay.PersonelDecExt.FormInfoID =:FormInfoID)'
      
        '  AND  (PersonelDecExt.PersonelNo between :PersonelNoFrom and :P' +
        'ersonelNoTo)'
      
        '  AND  (FormsInfo_2PersonelState.InfoID BETWEEN :PersonelStateFr' +
        'om  AND :PersonelStateTo)'
      '  AND  ((PersonelDecExt.EndDate IS NULL) OR '
      
        '                         (PersonelDecExt.EndDate = '#39'        '#39') O' +
        'R'
      
        '                         (PersonelDecExt.EndDate BETWEEN  :EndDa' +
        'teFrom  AND :EndDateTo ))'
      'AND  (PersonelDecExt.YearID =  :YearID )'
      ''
      
        '                             GROUP BY PersonelDecExt.YearID,Pers' +
        'onelDecExt.PersonelNo,PersonelInfo.Mobile'
      
        '                             , PersonelInfo.name_L1 , PersonelIn' +
        'fo.lastName_L1, PersonelInfo.name_L1 + '#39'     '#39' + PersonelInfo.la' +
        'stName_L1, PersonelInfo.AccountNumber'
      ', PersonelInfo.Email'
      ') AS Bonus ON '
      
        '                      Interdicts.PersonelNo = Bonus.PersonelNo O' +
        'N PayBonus.PersonelNo = Bonus.PersonelNo'
      
        '                       AND  PayBonus.YearID = Bonus.YearID LEFT ' +
        'OUTER JOIN'
      
        '                      Pay.FormsInfo ON Pay.Interdicts.OfficeCode' +
        ' = FormsInfo.FormInfoID'
      
        '               LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_Projec' +
        't ON Interdicts.ProjectID = FormsInfo_Project.FormInfoID'
      ''
      'LEFT OUTER JOIN'
      
        #9'Pay.ContainSalaryAnnuity(:YearMounth, 1, 2, :PersonelNo2From, :' +
        'PersonelNo2To, 1 ,0) ContainSalaryAnnuity ON'
      
        '                      Interdicts.PersonelNo = ContainSalaryAnnui' +
        'ty.PersonelNo'
      ''
      ''
      ''
      'WHERE     (Interdicts.State < 50)'
      
        'AND ( FormsInfo_EmployType.InfoID BETWEEN :InterTypeFrom AND :In' +
        'terTypeTo )'
      
        'AND ( (  FormsInfo_Project.InfoID BETWEEN :ProjectIDFrom AND :Pr' +
        'ojectIDTo) OR Interdicts.ProjectID = 0 ) '
      ''
      ''
      ' :OfficeCodeFromTo'
      ''
      ''
      'ORDER BY Bonus.PersonelNo')
    Left = 278
    Top = 128
    object qryTidePersonelEmployTypeID: TIntegerField
      DisplayLabel = #1603#1583#1606#1608#1593' '#1581#1603#1605
      FieldName = 'EmployTypeID'
    end
    object qryTidePersonelEmployTypeName: TStringField
      DisplayLabel = #1606#1608#1593' '#1581#1603#1605
      FieldName = 'EmployTypeName'
      Size = 255
    end
    object qryTidePersonelOfficeID: TIntegerField
      DisplayLabel = #1603#1583#1608#1575#1581#1583
      FieldName = 'OfficeID'
    end
    object qryTidePersonelOfficeName: TStringField
      DisplayLabel = #1608#1575#1581#1583#1587#1575#1586#1605#1575#1606#1610
      FieldName = 'OfficeName'
      Size = 255
    end
    object qryTidePersonelPersonelNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610
      FieldName = 'PersonelNo'
    end
    object qryTidePersonelPersonelName: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1662#1585#1587#1606#1604#1610
      FieldName = 'PersonelName'
      Size = 60
    end
    object qryTidePersonelname_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605
      FieldName = 'name_L1'
      Size = 25
    end
    object qryTidePersonellastName_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1740
      FieldName = 'lastName_L1'
      Size = 30
    end
    object qryTidePersonelDayQuntity: TFloatField
      Tag = 3
      DisplayLabel = #1603#1575#1585#1603#1585#1583
      FieldName = 'DayQuntity'
    end
    object qryTidePersonelamount: TBCDField
      Tag = 3
      DisplayLabel = #1593#1606#1575#1608#1740#1606' '#1581#1705#1605
      FieldName = 'amount'
      currency = True
      Precision = 19
    end
    object qryTidePersonelBonusPrise: TBCDField
      Tag = 3
      DisplayLabel = #1606#1575#1582#1575#1604#1589' '#1593#1610#1583#1610
      FieldName = 'BonusPrise'
      currency = True
      Precision = 19
    end
    object qryTidePersonelTaxPrice: TBCDField
      Tag = 3
      DisplayLabel = #1605#1575#1604#1610#1575#1578' '#1593#1610#1583#1610
      FieldName = 'TaxPrice'
      currency = True
      Precision = 19
    end
    object qryTidePersonelPaymentBonus: TBCDField
      DisplayLabel = #1593#1604#1610' '#1575#1604#1581#1587#1575#1576' '#1593#1610#1583#1610
      FieldName = 'PaymentBonus'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryTidePersonelBonusPayAble: TBCDField
      Tag = 3
      DisplayLabel = #1582#1575#1604#1589' '#1593#1610#1583#1610
      FieldName = 'BonusPayAble'
      currency = True
      Precision = 19
    end
    object qryTidePersonelPaymentBonus1: TBCDField
      DisplayLabel = #1593#1604#1610' '#1575#1604#1581#1587#1575#1576' '#1593#1610#1583#1610'1'
      FieldName = 'PaymentBonus1'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryTidePersonelPaymentBonus2: TBCDField
      DisplayLabel = #1593#1604#1610' '#1575#1604#1581#1587#1575#1576' '#1593#1610#1583#1610'2'
      FieldName = 'PaymentBonus2'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryTidePersonelAccountNumber: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
      FieldName = 'AccountNumber'
      Size = 30
    end
    object qryTidePersonelEmail: TWideStringField
      Tag = 3
      FieldName = 'Email'
      Size = 100
    end
    object qryTidePersonelMobile: TStringField
      Tag = 3
      FieldName = 'Mobile'
    end
    object qryTidePersonelEmployerAmount: TBCDField
      Tag = 3
      FieldName = 'EmployerAmount'
      currency = True
      Precision = 19
    end
  end
  object SrcTidePersonel: TDataSource
    DataSet = qryTidePersonel
    Left = 566
    Top = 199
  end
  object qry_init: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * FROM Pay.FormsInfo where formtype=59')
    Left = 200
    Top = 126
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = Srctide
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 374
    Top = 159
    object ppDBPipeline1ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'PersonelNo'
      FieldName = 'PersonelNo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'PersonelName'
      FieldName = 'PersonelName'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'InfoID'
      FieldName = 'InfoID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'OfficeName'
      FieldName = 'OfficeName'
      FieldLength = 255
      DisplayWidth = 255
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Expr1'
      FieldName = 'Expr1'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'ProjectName'
      FieldName = 'ProjectName'
      FieldLength = 255
      DisplayWidth = 255
      Position = 5
    end
    object ppDBPipeline1ppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'DayQuntity'
      FieldName = 'DayQuntity'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object ppDBPipeline1ppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'EmployeeAmount'
      FieldName = 'EmployeeAmount'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 7
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
    Template.FileName = 'D:\Projects\Fara\Salary\Exe\Report\PersonalTideF1.rtm'
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
    Left = 302
    Top = 239
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
        Caption = #1604#1610#1587#1578' '#1607#1586#1610#1606#1607' '#1607#1575
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
        mmLeft = 90131
        mmTop = 6879
        mmWidth = 22945
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
        Caption = #1606#1575#1582#1575#1604#1589' '#1593#1610#1583#1610
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
        DataField = 'InfoID'
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
        DataField = 'Expr1'
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
        DataField = 'EmployeeAmount'
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
        DataField = 'EmployeeAmount'
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
        DataField = 'EmployeeAmount'
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
    OpenDataSource = False
    UserName = 'DBPipeline2'
    Left = 438
    Top = 239
    object ppDBPipeline2ppField1: TppField
      FieldAlias = 'PersonelNo'
      FieldName = 'PersonelNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField2: TppField
      FieldAlias = 'PersonelName'
      FieldName = 'PersonelName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField3: TppField
      FieldAlias = 'DayQuntity'
      FieldName = 'DayQuntity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField4: TppField
      FieldAlias = 'BonusPrise'
      FieldName = 'BonusPrise'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField5: TppField
      FieldAlias = 'TaxPrice'
      FieldName = 'TaxPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField6: TppField
      FieldAlias = 'BonusPayAble'
      FieldName = 'BonusPayAble'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField7: TppField
      FieldAlias = 'PaymentBonus'
      FieldName = 'PaymentBonus'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField8: TppField
      FieldAlias = 'AccountNumber'
      FieldName = 'AccountNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
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
    Template.FileName = 'D:\Projects\Fara\Salary\Exe\Report\PersonalTideF2.rtm'
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
    Left = 382
    Top = 295
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
        Caption = #1604#1610#1587#1578' '#1593#1610#1583#1610
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
        mmLeft = 92588
        mmTop = 6879
        mmWidth = 18034
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
        mmLeft = 128059
        mmTop = 21167
        mmWidth = 60590
        BandType = 0
        LayerName = Foreground1
      end
      object TppLabel
        DesignLayer = ppDesignLayer2
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
        mmLeft = 107686
        mmTop = 21167
        mmWidth = 19315
        BandType = 0
        LayerName = Foreground1
      end
      object TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1575#1582#1575#1604#1589' '#1593#1610#1583#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 78052
        mmTop = 21167
        mmWidth = 28046
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
        Caption = #1605#1575#1604#1610#1575#1578' '#1593#1610#1583#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 53975
        mmTop = 21167
        mmWidth = 22754
        BandType = 0
        LayerName = Foreground1
      end
      object TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label102'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1582#1575#1604#1589' '#1593#1610#1583#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 1588
        mmTop = 21167
        mmWidth = 24342
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
        Caption = #1593#1604#1610' '#1575#1604#1581#1587#1575#1576' '#1593#1610#1583#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 27781
        mmTop = 21167
        mmWidth = 25135
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
        mmLeft = 128059
        mmTop = 0
        mmWidth = 60590
        BandType = 4
        LayerName = Foreground1
      end
      object TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'DayQuntity'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7408
        mmLeft = 107686
        mmTop = 0
        mmWidth = 19315
        BandType = 4
        LayerName = Foreground1
      end
      object TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'TaxPrice'
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
        mmLeft = 53975
        mmTop = 0
        mmWidth = 25135
        BandType = 4
        LayerName = Foreground1
      end
      object TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'BonusPrise'
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
        mmLeft = 78052
        mmTop = 0
        mmWidth = 22754
        BandType = 4
        LayerName = Foreground1
      end
      object TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'BonusPayAble'
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
        mmLeft = 1588
        mmTop = 0
        mmWidth = 24342
        BandType = 4
        LayerName = Foreground1
      end
      object TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'PaymentBonus'
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
        mmLeft = 27781
        mmTop = 0
        mmWidth = 25135
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
        DataField = 'DayQuntity'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 107686
        mmTop = 794
        mmWidth = 19315
        BandType = 8
        LayerName = Foreground1
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc10'
        Border.mmPadding = 0
        DataField = 'BonusPrise'
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
        mmLeft = 78052
        mmTop = 794
        mmWidth = 22754
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
        DataField = 'BonusPayAble'
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
        mmLeft = 1588
        mmTop = 794
        mmWidth = 24342
        BandType = 8
        LayerName = Foreground1
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc102'
        Border.mmPadding = 0
        DataField = 'TaxPrice'
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
        mmLeft = 53975
        mmTop = 794
        mmWidth = 25135
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
        DataField = 'PaymentBonus'
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
        mmLeft = 27781
        mmTop = 794
        mmWidth = 25135
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
        DataField = 'DayQuntity'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 107686
        mmTop = 1323
        mmWidth = 19315
        BandType = 7
        LayerName = Foreground1
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc9'
        Border.mmPadding = 0
        DataField = 'BonusPrise'
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
        mmLeft = 78052
        mmTop = 1323
        mmWidth = 22754
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line4'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 3969
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
        DataField = 'TaxPrice'
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
        mmLeft = 53975
        mmTop = 1323
        mmWidth = 25135
        BandType = 7
        LayerName = Foreground1
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'BonusPayAble'
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
        mmLeft = 1588
        mmTop = 1323
        mmWidth = 24342
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
        DataField = 'PaymentBonus'
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
        mmLeft = 27781
        mmTop = 1323
        mmWidth = 25135
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
  object ppRprFish: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'D:\Projects\Fara\Salary\Exe\Report\payfishTide.rtm'
    Units = utMillimeters
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
    PreviewFormSettings.ZoomSetting = zsPageWidth
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
    Left = 624
    Top = 297
    Version = '23.0'
    mmColumnWidth = 101650
    DataPipelineName = 'ppDBPipeline2'
    object ppColumnHeaderBand1: TppColumnHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand3: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 61648
      mmPrintPosition = 0
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape3'
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 38894
        mmLeft = 13758
        mmTop = 11377
        mmWidth = 175684
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1587#1575#1604' '#1606#1608' '#1605#1576#1575#1585#1603
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBtnFace
        Font.Name = 'Nazanin'
        Font.Size = 72
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 37571
        mmLeft = 13758
        mmTop = 11906
        mmWidth = 175684
        BandType = 4
        LayerName = Foreground2
      end
      object ppShape4: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape4'
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 8202
        mmLeft = 13758
        mmTop = 50006
        mmWidth = 175684
        BandType = 4
        LayerName = Foreground2
      end
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape7'
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 8202
        mmLeft = 13758
        mmTop = 2381
        mmWidth = 175684
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1601#1610#1588' '#1593#1610#1583#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6085
        mmLeft = 94721
        mmTop = 3440
        mmWidth = 13494
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1662#1585#1587#1606#1604':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 8202
        mmLeft = 152400
        mmTop = 12965
        mmWidth = 17992
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText1'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'PersonelName'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 8202
        mmLeft = 120650
        mmTop = 12965
        mmWidth = 29369
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel68: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label25'
        Border.mmPadding = 0
        Caption = #1582#1575#1604#1589' '#1662#1585#1583#1575#1582#1578#1610':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 8467
        mmLeft = 150548
        mmTop = 48948
        mmWidth = 28310
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel90: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 8202
        mmLeft = 152400
        mmTop = 21696
        mmWidth = 25665
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel91: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = #1606#1575#1582#1575#1604#1589' '#1593#1610#1583#1610':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 8202
        mmLeft = 64823
        mmTop = 12965
        mmWidth = 24606
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel93: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label30'
        Border.mmPadding = 0
        Caption = #1605#1575#1604#1610#1575#1578' '#1593#1610#1583#1610':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 8202
        mmLeft = 64823
        mmTop = 21696
        mmWidth = 21960
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText2'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'BonusPrise'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 8202
        mmLeft = 40481
        mmTop = 12965
        mmWidth = 21696
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText3'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'PersonelNo'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 8996
        mmLeft = 126736
        mmTop = 21167
        mmWidth = 23283
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line11'
        Border.mmPadding = 0
        Pen.Style = psDot
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 13758
        mmTop = 59267
        mmWidth = 175684
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText4'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'BonusPayAble'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 8202
        mmLeft = 33602
        mmTop = 40481
        mmWidth = 28575
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText5'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'TaxPrice'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 8202
        mmLeft = 44450
        mmTop = 21696
        mmWidth = 17727
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText6'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'BonusPayAble'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 9059
        mmLeft = 120894
        mmTop = 48948
        mmWidth = 29125
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel92: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = #1582#1575#1604#1589' '#1593#1610#1583#1610':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 8202
        mmLeft = 64823
        mmTop = 40481
        mmWidth = 22225
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine17: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line17'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 38894
        mmLeft = 100277
        mmTop = 11377
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = #1603#1575#1585#1603#1585#1583':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 8202
        mmLeft = 152400
        mmTop = 30427
        mmWidth = 12700
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText7'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'DayQuntity'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 8996
        mmLeft = 124884
        mmTop = 29898
        mmWidth = 23813
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText8'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'PaymentBonus'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 9059
        mmLeft = 32628
        mmTop = 30427
        mmWidth = 29549
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label12'
        Border.mmPadding = 0
        Caption = #1593#1604#1610' '#1575#1604#1581#1587#1575#1576' '#1593#1610#1583#1610':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 8202
        mmLeft = 64823
        mmTop = 30427
        mmWidth = 32015
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 8128
        mmLeft = 152400
        mmTop = 40481
        mmWidth = 23791
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText9'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'AccountNumber'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 8975
        mmLeft = 114406
        mmTop = 39952
        mmWidth = 34290
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LblCompanyName1'
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
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 137319
        mmTop = 2910
        mmWidth = 51065
        BandType = 4
        LayerName = Foreground2
      end
    end
    object ppColumnFooterBand1: TppColumnFooterBand
      AlignToBottom = True
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDesignLayers3: TppDesignLayers
      object ppDesignLayer3: TppDesignLayer
        UserName = 'Foreground2'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object PupPrint: TPopupMenu
    Left = 536
    Top = 303
    object payfishTide: TMenuItem
      Caption = #1670#1575#1662' '#1601#1610#1588
      OnClick = ALLClickClick
    end
    object N1: TMenuItem
      Action = actVejehPrint
    end
    object ALLClick: TMenuItem
      Caption = 'ALLClick'
      Visible = False
      OnClick = ALLClickClick
    end
  end
  object popEmail: TPopupMenu
    Left = 217
    Top = 299
    object PNG1: TMenuItem
      Caption = 'PNG'
      object mnuEmail: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'PNG'
        OnClick = mnuEmailClick
      end
      object MenuItem3: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'PNG'
        OnClick = mnuEmailClick
      end
    end
    object JPEG1: TMenuItem
      Caption = 'JPEG'
      object N10: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'JPEG'
        OnClick = mnuEmailClick
      end
      object N11: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'JPEG'
        OnClick = mnuEmailClick
      end
    end
    object PDF1: TMenuItem
      Caption = 'PDF'
      object N12: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'PDF'
        OnClick = mnuEmailClick
      end
      object N13: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'PDF'
        OnClick = mnuEmailClick
      end
    end
    object BMP1: TMenuItem
      Caption = 'BMP'
      object N14: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'BMP'
        OnClick = mnuEmailClick
      end
      object N15: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'BMP'
        OnClick = mnuEmailClick
      end
    end
    object GIF1: TMenuItem
      Caption = 'GIF'
      object N16: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'GIF'
        OnClick = mnuEmailClick
      end
      object N17: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'GIF'
        OnClick = mnuEmailClick
      end
    end
    object RTF1: TMenuItem
      Caption = 'RTF'
      object N18: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'RTF'
        OnClick = mnuEmailClick
      end
      object N19: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'RTF'
        OnClick = mnuEmailClick
      end
    end
    object DOC1: TMenuItem
      Caption = 'DOC'
      object N20: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'DOC'
        OnClick = mnuEmailClick
      end
      object N21: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'DOC'
        OnClick = mnuEmailClick
      end
    end
    object extFile1: TMenuItem
      Caption = 'TextFile'
      object N22: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'TextFile'
        OnClick = mnuEmailClick
      end
      object N23: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'TextFile'
        OnClick = mnuEmailClick
      end
    end
  end
  object qryformsinfo: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * FROM Pay.FormsInfo '
      'WHERE     (FormType = 58 ) ')
    Left = 560
    Top = 126
  end
  object popSendToServer: TPopupMenu
    Left = 145
    Top = 403
    object PNG2: TMenuItem
      Caption = 'PNG'
      object MenuItem1: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'PNG'
        OnClick = mnuSendToFileServerClick
      end
      object MenuItem2: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'PNG'
        OnClick = mnuSendToFileServerClick
      end
    end
    object PNG3: TMenuItem
      Caption = 'PDF'
      object N28: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'PDF'
        OnClick = mnuSendToFileServerClick
      end
      object N24: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'PDF'
        OnClick = mnuSendToFileServerClick
      end
    end
  end
end

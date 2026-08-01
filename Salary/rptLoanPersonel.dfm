inherited rptLoanPersonelF: TrptLoanPersonelF
  Left = 325
  Top = 102
  Caption = #1589#1608#1585#1578' '#1608#1590#1593#1610#1578' '#1608#1575#1605#1607#1575#1610' '#1662#1585#1583#1575#1582#1578' '#1588#1583#1607' '#1576#1607#1605#1585#1575#1607'  '#1576#1575#1602#1610#1605#1575#1606#1583#1607' '#1570#1606#1607#1575
  ClientHeight = 517
  ClientWidth = 836
  OnResize = FormResize
  ExplicitWidth = 848
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 457
    Width = 836
    ExplicitTop = 458
    ExplicitWidth = 836
    object BitBtn7: TBitBtn
      Left = 767
      Top = 8
      Width = 75
      Height = 25
      Action = actFilter
      Anchors = [akRight, akBottom]
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      Left = 689
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
      Width = 336
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
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      TabOrder = 4
    end
    object BitBtn5: TBitBtn
      Left = 170
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 5
    end
    object BitBtn6: TBitBtn
      Left = 93
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 6
    end
  end
  inherited Panel2: TPanel
    Width = 836
    ExplicitWidth = 836
    inherited ImgTemplate: TImage
      Left = 798
      ExplicitLeft = 798
    end
    inherited lblCaption: TLabel
      Left = 728
      Height = 16
      ExplicitLeft = 728
    end
  end
  inherited Panel3: TPanel
    Width = 217
    Height = 404
    Align = alLeft
    ExplicitWidth = 217
    ExplicitHeight = 405
    object Label1: TLabel
      Left = 2
      Top = 2
      Width = 122
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = #1662#1585#1583#1575#1582#1578' '#1591#1610' '#1587#1575#1604' '#1580#1575#1585#1610
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid2: TDBGrid
      Left = 2
      Top = 15
      Width = 213
      Height = 350
      Align = alClient
      Color = clCream
      DataSource = srcItems
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
    object StBRemain: TStatusBar
      Left = 2
      Top = 384
      Width = 213
      Height = 19
      Panels = <
        item
          Width = 160
        end
        item
          Text = #1605#1575#1606#1583#1607
          Width = 50
        end>
    end
    object StBSumItems: TStatusBar
      Left = 2
      Top = 365
      Width = 213
      Height = 19
      Panels = <
        item
          Width = 160
        end
        item
          Text = #1662#1585#1583#1575#1582#1578#1610
          Width = 50
        end>
    end
  end
  object StatusBar1: TStatusBar [3]
    Left = 0
    Top = 498
    Width = 836
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
        Width = 200
      end
      item
        Text = #1580#1605#1593' '#1603#1604' '
        Width = 50
      end>
    ExplicitTop = 499
  end
  object DBGrid1: TDBGrid [4]
    Left = 217
    Top = 53
    Width = 619
    Height = 404
    Align = alClient
    Color = clCream
    DataSource = srcDetailes
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'PersonelNo'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name_l1'
        Width = 24
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name_l2'
        Width = 31
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EmployerAmount'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PaymentLoan'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Settlement'
        Width = 37
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LoanName_l1'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LoanName_l2'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AidNo2'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AidDate2'
        Width = 28
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AidNo1'
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AidDate1'
        Width = 30
        Visible = True
      end>
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
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      OnExecute = actSendtoExcelExecute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
  end
  object qryDetailes: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterOpen = qryDetailesAfterOpen
    AfterScroll = qryDetailesAfterScroll
    Parameters = <
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
      end
      item
        Name = 'FormInfoIDForm'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'FormInfoIDTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT  PersonelDecExt.* ,PersonelInfo.name_L1 +'#39' '#39'+ PersonelInf' +
        'o.lastName_L1 AS name_l1,'
      
        '        PersonelInfo.name_L2 +'#39' '#39'+ PersonelInfo.lastName_L2  AS ' +
        'name_l2,'
      '        FormsInfo.InfoName_L1 AS LoanName_l1,'
      
        '        FormsInfo.InfoName_L2 AS LoanName_l2,PersonelDecExt.Form' +
        'InfoID'
      'FROM Pay.PersonelDecExt INNER JOIN'
      
        '                      Pay.FormsInfo ON PersonelDecExt.FormInfoID' +
        ' = FormsInfo.FormInfoID INNER JOIN'
      
        '                      Pay.PersonelInfo ON PersonelDecExt.Persone' +
        'lNo = PersonelInfo.PersonelNo INNER JOIN'
      
        '                      Pay.FormTypes ON FormsInfo.FormType = Form' +
        'Types.FormType'
      'WHERE   (FormTypes.SalaryKind IN (9, 14))'
      
        'and (PersonelDecExt.PersonelNo between :FromPersonelNo and :ToPe' +
        'rsonelNo)'
      
        'AND (FormsInfo.InfoID BETWEEN    :FormInfoIDForm AND :FormInfoID' +
        'To)'
      'ORDER BY PersonelDecExt.PersonelNo')
    Left = 408
    Top = 176
    object qryDetailesDecExtID: TIntegerField
      FieldName = 'DecExtID'
    end
    object qryDetailesFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qryDetailesPersonelNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588'.'#1662#1585#1587#1606#1604
      FieldName = 'PersonelNo'
    end
    object qryDetailesname_l1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1662#1585#1587#1606#1604
      FieldName = 'name_l1'
      ReadOnly = True
      Size = 55
    end
    object qryDetailesname_l2: TStringField
      DisplayLabel = 'name'
      FieldName = 'name_l2'
      ReadOnly = True
      Size = 55
    end
    object qryDetailesEmployeeAmount: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1602#1587#1591
      FieldName = 'EmployeeAmount'
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
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607
      FieldName = 'AidNo1'
      Size = 30
    end
    object qryDetailesAidDate1_L1: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'AidDate1'
      FixedChar = True
      Size = 10
    end
    object qryDetailesAidDate1_L2: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'AidDate2'
      FixedChar = True
      Size = 10
    end
    object qryDetailesAidNo2: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607
      DisplayWidth = 20
      FieldName = 'AidNo2'
      Size = 30
    end
    object qryDetailesDayQuntity: TFloatField
      FieldName = 'DayQuntity'
    end
    object qryDetailesDayTime: TFloatField
      FieldName = 'DayTime'
    end
    object qryDetailesEmployerAmount: TBCDField
      Tag = 3
      DisplayLabel = #1575#1589#1604' '#1608#1575#1605' '
      FieldName = 'EmployerAmount'
      currency = True
      Precision = 19
    end
    object qryDetailesFormInfoID2: TIntegerField
      FieldName = 'FormInfoID2'
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
      Tag = 3
      DisplayLabel = #1662#1585#1583#1575#1582#1578#1610' '#1587#1606#1608#1575#1578' '#1602#1576#1604
      FieldName = 'PaymentLoan'
      currency = True
      Precision = 19
    end
    object qryDetailesLoanName_l1: TStringField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1608#1575#1605
      FieldName = 'LoanName_l1'
      Size = 255
    end
    object qryDetailesLoanName_l2: TStringField
      DisplayLabel = 'LoanName'
      FieldName = 'LoanName_l2'
      Size = 255
    end
    object qryDetailesSettlement: TBCDField
      Tag = 3
      DisplayLabel = #1578#1587#1608#1610#1607
      FieldName = 'Settlement'
      currency = True
      Precision = 19
    end
    object qryDetailesNote_L1: TWideStringField
      FieldName = 'Note_L1'
      Size = 4000
    end
    object qryDetailesNote_L2: TWideStringField
      FieldName = 'Note_L2'
      Size = 4000
    end
  end
  object srcDetailes: TDataSource
    DataSet = qryDetailes
    Left = 488
    Top = 168
  end
  object qryItems: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterOpen = qryItemsAfterOpen
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
      end
      item
        Name = 'FunctionID'
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
      end>
    SQL.Strings = (
      
        'SELECT   FixedCalculated.Mounth, StandardTimes.InfoName_L1, Stan' +
        'dardTimes.InfoName_L2,'
      '         FixedCalculated.Price AS sumPrice'
      'FROM Pay.FixedCalculated INNER JOIN'
      
        '         Pay.FixedCalActive() FixedCalActive ON FixedCalculated.' +
        'Mounth = FixedCalActive.Mounth AND'
      
        '         FixedCalculated.ArchiveID = FixedCalActive.F_ArchiveID ' +
        'AND '
      
        '         FixedCalculated.PersonelNO = FixedCalActive.PersonelNO ' +
        'LEFT OUTER JOIN'
      
        '         Pay.StandardTimes ON FixedCalculated.Mounth = StandardT' +
        'imes.InfoID'
      'WHERE   (FixedCalculated.PersonelNO = :person)'
      '    AND (FixedCalculated.SalaryID = :salary)'
      '    AND (FixedCalculated.FunctionID = :FunctionID)'
      
        '    AND (FixedCalculated.Mounth BETWEEN :MounthFrom AND :MounthT' +
        'o)'
      ' AND (FixedCalculated.BedBes = 2)'
      ''
      '')
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
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 688
    Top = 141
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'DecExtID'
      FieldName = 'DecExtID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'FormInfoID'
      FieldName = 'FormInfoID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'PersonelNo'
      FieldName = 'PersonelNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'EmployeeAmount'
      FieldName = 'EmployeeAmount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'FirstMounth'
      FieldName = 'FirstMounth'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'EndMounth'
      FieldName = 'EndMounth'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'AidNo1'
      FieldName = 'AidNo1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'AidDate1'
      FieldName = 'AidDate1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'AidDate2'
      FieldName = 'AidDate2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'AidNo2'
      FieldName = 'AidNo2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'DayQuntity'
      FieldName = 'DayQuntity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'DayTime'
      FieldName = 'DayTime'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'EmployerAmount'
      FieldName = 'EmployerAmount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'FormInfoID2'
      FieldName = 'FormInfoID2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'Note_L1'
      FieldName = 'Note_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'Note_L2'
      FieldName = 'Note_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'AccTopicCode'
      FieldName = 'AccTopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'AccDetailCode'
      FieldName = 'AccDetailCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'AccCTopicCode'
      FieldName = 'AccCTopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'AccCTopicCode2'
      FieldName = 'AccCTopicCode2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'PaymentLoan'
      FieldName = 'PaymentLoan'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = 'name_l1'
      FieldName = 'name_l1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = 'LoanName_l1'
      FieldName = 'LoanName_l1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField24: TppField
      FieldAlias = 'LoanName_l2'
      FieldName = 'LoanName_l2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField25: TppField
      FieldAlias = 'name_l2'
      FieldName = 'name_l2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
  end
  object ppReport4File: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
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
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'D:\Projects\Fara\Salary\Exe\Report\rptPaymentLoanWithRemain.rtm'
    Units = utMillimeters
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
    Left = 696
    Top = 293
    Version = '22.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 27781
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        OnGetText = ppLabel1GetText
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
        mmTop = 0
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LblCaption'
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578' '#1608#1575#1605' '#1662#1585#1587#1606#1604' '#1576#1578#1601#1603#1610#1603' '#1662#1585#1587#1606#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8467
        mmLeft = 72496
        mmTop = 6350
        mmWidth = 58738
        BandType = 0
        LayerName = Foreground1
      end
      object SysvarPageNum: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SysVarPageNo1'
        OnGetText = SysvarPageNumGetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 4763
        mmTop = 9525
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Width = 2
        Weight = 1.250000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 15346
        mmWidth = 202936
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1575#1589#1604' '#1608#1575#1605' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 116681
        mmTop = 20638
        mmWidth = 30427
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = #1606#1608#1593' '#1608#1575#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 58208
        mmTop = 20638
        mmWidth = 30956
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 35454
        mmTop = 20638
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Width = 2
        Position = lpBottom
        Weight = 1.500000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 25929
        mmWidth = 202936
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = ' '#1606#1575#1605' '#1662#1585#1587#1606#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 147373
        mmTop = 20638
        mmWidth = 38894
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = #1605#1575#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 21431
        mmTop = 20638
        mmWidth = 13758
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 265
        mmTop = 20638
        mmWidth = 20902
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label12'
        Border.mmPadding = 0
        Caption = #1662#1585#1583#1575#1582#1578#1610' '#1587#1606#1608#1575#1578' '#1602#1576#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 89429
        mmTop = 20638
        mmWidth = 26723
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 48154
        mmTop = 20638
        mmWidth = 9525
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = #1662#1585#1583#1575#1582#1578' '#1591#1610' '#1587#1575#1604' '#1580#1575#1585#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 2381
        mmTop = 15346
        mmWidth = 33338
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = #1603#1583' '#1662#1585#1587#1606#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 186796
        mmTop = 20638
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label8'
        OnGetText = ppLabel14GetText
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1670#1575#1662
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5292
        mmLeft = 4763
        mmTop = 3969
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer2
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 0
        mmWidth = 203300
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipeline2
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
          PrinterSetup.mmPaperHeight = 279000
          PrinterSetup.mmPaperWidth = 216000
          PrinterSetup.PaperSize = 1
          Units = utMillimeters
          Version = '22.02'
          mmColumnWidth = 203300
          DataPipelineName = 'ppDBPipeline2'
          object ppDetailBand2: TppDetailBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 6350
            mmPrintPosition = 0
            object ppDBText9: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText9'
              Border.mmPadding = 0
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
              mmWidth = 18521
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText1: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText2'
              Border.mmPadding = 0
              DataField = 'InfoName_L1'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6350
              mmLeft = 19315
              mmTop = 0
              mmWidth = 13758
              BandType = 4
              LayerName = Foreground
            end
            object ppLine9: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line9'
              Border.mmPadding = 0
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6350
              mmLeft = 34925
              mmTop = 0
              mmWidth = 6350
              BandType = 4
              LayerName = Foreground
            end
            object ppLine11: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line11'
              Border.mmPadding = 0
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6350
              mmLeft = 0
              mmTop = 0
              mmWidth = 6350
              BandType = 4
              LayerName = Foreground
            end
          end
          object ppSummaryBand1: TppSummaryBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 7408
            mmPrintPosition = 0
            object ppDBCalc2: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc2'
              Border.mmPadding = 0
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
              mmHeight = 6615
              mmLeft = 529
              mmTop = 0
              mmWidth = 18521
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel15: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label15'
              AutoSize = False
              Border.mmPadding = 0
              Caption = #1580#1605#1593' '#1662#1585#1583#1575#1582#1578#1610':'#8207
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 5821
              mmLeft = 19315
              mmTop = 0
              mmWidth = 15875
              BandType = 7
              LayerName = Foreground
            end
            object ppLblRemain: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label14'
              OnGetText = ppLblRemainGetText
              Border.mmPadding = 0
              Caption = #1605#1575#1606#1583#1607' ='#8207
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 14
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 8975
              mmLeft = 184796
              mmTop = 0
              mmWidth = 11261
              BandType = 7
              LayerName = Foreground
            end
            object ppLine6: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line6'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 2
              Position = lpBottom
              Weight = 1.500000000000000000
              mmHeight = 2117
              mmLeft = 0
              mmTop = 5291
              mmWidth = 202936
              BandType = 7
              LayerName = Foreground
            end
            object ppLine10: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line10'
              Border.mmPadding = 0
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 7408
              mmLeft = 34925
              mmTop = 0
              mmWidth = 6350
              BandType = 7
              LayerName = Foreground
            end
            object ppLine12: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line101'
              Border.mmPadding = 0
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 7408
              mmLeft = 0
              mmTop = 0
              mmWidth = 6350
              BandType = 7
              LayerName = Foreground
            end
            object ppLine14: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line14'
              Border.mmPadding = 0
              Style = lsDouble
              Weight = 0.750000000000000000
              mmHeight = 1588
              mmLeft = 0
              mmTop = 0
              mmWidth = 35190
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
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'FormInfoID'
      DataPipeline = ppDBPipeline1
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'PersonelNo'
      DataPipeline = ppDBPipeline1
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 8202
        mmPrintPosition = 0
        object ppLine2: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line2'
          Border.mmPadding = 0
          Position = lpBottom
          Weight = 1.000000000000000000
          mmHeight = 1323
          mmLeft = 34925
          mmTop = 6879
          mmWidth = 168540
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object ppDBText2: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText1'
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
          mmLeft = 187325
          mmTop = 1323
          mmWidth = 14552
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object ppDBText4: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText4'
          Border.mmPadding = 0
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
          mmLeft = 147902
          mmTop = 1323
          mmWidth = 38894
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object ppDBText3: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText3'
          Border.mmPadding = 0
          DataField = 'AidDate1'
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
          mmLeft = 35983
          mmTop = 1323
          mmWidth = 11906
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object ppDBText5: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText5'
          Border.mmPadding = 0
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
          mmLeft = 48683
          mmTop = 1323
          mmWidth = 9525
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object ppDBText6: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText6'
          Border.mmPadding = 0
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
          mmLeft = 58738
          mmTop = 1323
          mmWidth = 30956
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object ppDBText7: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText7'
          Border.mmPadding = 0
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
          mmLeft = 89959
          mmTop = 1323
          mmWidth = 26723
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object ppDBText8: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText8'
          Border.mmPadding = 0
          DataField = 'EmployerAmount'
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
          mmLeft = 117211
          mmTop = 1323
          mmWidth = 30427
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object ppLine7: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line7'
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 0
          mmTop = 1323
          mmWidth = 203300
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object ppLine8: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line8'
          Border.mmPadding = 0
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 6615
          mmLeft = 199496
          mmTop = 1323
          mmWidth = 3969
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object ppLine13: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line13'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 6879
          mmLeft = 0
          mmTop = 1323
          mmWidth = 13229
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Visible = False
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 13494
        mmPrintPosition = 0
        object ppLine4: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line4'
          Border.mmPadding = 0
          Pen.Color = clGray
          Pen.Width = 2
          Weight = 1.250000000000000000
          mmHeight = 2117
          mmLeft = 0
          mmTop = 0
          mmWidth = 202936
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel2: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label2'
          Border.mmPadding = 0
          Caption = ':'#1580#1605#1593' '#1605#1576#1604#1594
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 6085
          mmLeft = 187325
          mmTop = 1058
          mmWidth = 13494
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc1: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBCalc1'
          Border.mmPadding = 0
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
          mmTop = 794
          mmWidth = 62177
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine5: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line5'
          Border.mmPadding = 0
          Pen.Color = clGray
          Pen.Width = 2
          Visible = False
          Weight = 1.500000000000000000
          mmHeight = 2117
          mmLeft = 0
          mmTop = 7938
          mmWidth = 202936
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
      end
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = srcItems
    OpenDataSource = False
    UserName = 'DBPipeline2'
    Left = 688
    Top = 213
    MasterDataPipelineName = 'ppDBPipeline1'
    object ppDBPipeline2ppField1: TppField
      FieldAlias = 'Mounth'
      FieldName = 'Mounth'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField2: TppField
      FieldAlias = 'InfoName_L1'
      FieldName = 'InfoName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField3: TppField
      FieldAlias = 'InfoName_L2'
      FieldName = 'InfoName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField4: TppField
      FieldAlias = 'sumPrice'
      FieldName = 'sumPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
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
        Value = Null
      end>
    SQL.Strings = (
      'select * FROM Pay.FormTypes'
      'where  FormType=:FormType')
    Left = 474
    Top = 7
  end
  object PopList4Print: TPopupMenu
    Left = 474
    Top = 391
    object AllClikPop: TMenuItem
      Caption = #1670#1575#1662#1607#1575#1610' '#1583#1610#1711#1585' '#1585#1575' '#1583#1585' '#1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1575#1591#1604#1575#1593#1575#1578' '#1581#1602#1608#1602' '#1608' '#1583#1587#1578#1605#1586#1583' '#1605#1588#1582#1589' '#1603#1606#1610#1583'..'
      OnClick = AllClikPopClick
    end
  end
end

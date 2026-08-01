inherited FunctionDayListF: TFunctionDayListF
  Left = 336
  Top = 102
  ActiveControl = CmbMonth
  Caption = #1604#1610#1587#1578' '#1603#1604#1610' '#1603#1575#1585#1603#1585#1583' '#1585#1608#1586#1575#1606#1607' '#1608' '#1575#1606#1578#1602#1575#1604' '#1576#1607' '#1603#1575#1585#1603#1585#1583' '#1662#1585#1587#1606#1604
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    object BitBtn5: TBitBtn
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
      TabOrder = 1
    end
    object BitBtn6: TBitBtn
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
      TabOrder = 2
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actsendExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      TabOrder = 3
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 626
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actPrint
      Align = alRight
      Caption = #1670#1575#1662
      TabOrder = 4
    end
    object BitBtn7: TBitBtn
      AlignWithMargins = True
      Left = 707
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 5
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 328
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alLeft
      Caption = #1587#1575#1610#1585' '#1575#1605#1603#1575#1606#1575#1578
      TabOrder = 6
      OnClick = BitBtn1Click
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 545
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSend
      Align = alRight
      Caption = #1575#1606#1578#1602#1575#1604
      TabOrder = 7
    end
  end
  inherited Panel2: TPanel
    inherited ImgTemplate: TImage
      Left = 765
      ExplicitLeft = 765
    end
    inherited lblBaseDate: TLabel
      Left = 343
      ExplicitLeft = 343
    end
    object Label1: TLabel
      Left = 147
      Top = 21
      Width = 46
      Height = 13
      Caption = #1575#1606#1578#1582#1575#1576' '#1605#1575#1607
    end
    object CmbMonth: TComboBox
      Left = 16
      Top = 17
      Width = 126
      Height = 21
      AutoDropDown = True
      Color = 15786446
      TabOrder = 0
      Text = 'CmbMonth'
      OnChange = CmbMonthChange
    end
    object yrcmbx1: TYearComboBox
      Left = 199
      Top = 17
      Width = 112
      Height = 32
      Align = alCustom
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 1
      YearID = 0
      YearsParam = 0
      ADOConnection = DmF.adcsalary
    end
  end
  inherited Panel3: TPanel
    object DBGrid1: TDBGrid
      Tag = 1
      Left = 2
      Top = 2
      Width = 782
      Height = 202
      Align = alClient
      Color = clCream
      DataSource = srcFunctionDayItems
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = ALL_DBGridDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = '_row'
          Width = 27
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PersonelNo'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PersonelName'
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OfficeCode'
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OfficeName'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'WorkID'
          Width = 28
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'WorkName'
          Width = 36
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ProcCode'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ProcName'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'StandardRate'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FunTime'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ExtTime'
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'day'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FunExtTime'
          Width = 56
          Visible = True
        end>
    end
    object SumGrid1: TSumGrid
      Top = 204
      Width = 782
      Height = 40
      Active = False
      Enable_Controls = True
      SelectedRow = True
      MasterGrid = DBGrid1
      ShowZero = True
      FieldsName = 'StandardRate;FunTime;ExtTime;day;FunExtTime;'
      SumCurrentRecord = True
    end
    object GroupBox2: TGroupBox
      Left = 2
      Top = 244
      Width = 782
      Height = 177
      Align = alBottom
      Caption = '  '#1576#1585#1585#1587#1610' '#1575#1591#1604#1575#1593#1575#1578'   '
      TabOrder = 2
      object GroupBox3: TGroupBox
        Left = 392
        Top = 15
        Width = 388
        Height = 160
        Align = alClient
        Caption = ' '#1604#1610#1587#1578' '#1662#1585#1587#1606#1604#1610' '#1603#1607'  '#1603#1575#1585#1603#1585#1583' '#1593#1575#1583#1610' '#1576#1586#1585#1711#1578#1585' '#1575#1586' 8 '#1587#1575#1593#1578' '#1583#1585' '#1585#1608#1586' '#1583#1575#1585#1606#1583' '
        TabOrder = 0
        object DBGrid3: TDBGrid
          Left = 2
          Top = 15
          Width = 384
          Height = 143
          Align = alClient
          Color = clCream
          DataSource = srcsumFunctionDayItems
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = ALL_DBGridDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = '_Row'
              Width = 26
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PersonelNo'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PersonelName'
              Width = 42
              Visible = True
            end
            item
              Color = 13431799
              Expanded = False
              FieldName = 'day'
              Width = 43
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FunTime'
              Width = 59
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ExtTime'
              Width = 54
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FunExtTime'
              Width = 56
              Visible = True
            end>
        end
      end
      object GroupBox1: TGroupBox
        Left = 2
        Top = 15
        Width = 390
        Height = 160
        Align = alLeft
        Caption = ' '#1604#1610#1587#1578' '#1662#1585#1587#1606#1604#1610' '#1603#1607' '#1585#1608#1586#1607#1575#1610' '#1603#1575#1585#1603#1585#1583#1588#1575#1606' '#1605#1582#1575#1604#1601' '#1585#1608#1586#1607#1575#1610' '#1575#1587#1578#1575#1606#1583#1575#1585#1583' '#1575#1587#1578' '
        TabOrder = 1
        object DBGrid2: TDBGrid
          Left = 2
          Top = 15
          Width = 386
          Height = 143
          Align = alClient
          Color = clCream
          DataSource = srcStandardDays
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = ALL_DBGridDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = '_Row'
              Width = 28
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PersonelNo'
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PersonelName'
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FunTime'
              Width = 108
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PostCount'
              Width = 73
              Visible = True
            end>
        end
      end
    end
  end
  inherited ActionList: TActionList
    Left = 384
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited actshowChart: TAction
      OnExecute = actShowChartExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actsendExcel: TAction
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      OnExecute = actsendExcelExecute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actSend: TAction
      Caption = #1575#1606#1578#1602#1575#1604
      Enabled = False
      OnExecute = actSendExecute
    end
    object actPrintVijeh: TAction
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
      OnExecute = actPrintVijehExecute
    end
    object actUpdate: TAction
      Caption = #1576#1585#1608#1586#1585#1587#1575#1606#1610
      OnExecute = actUpdateExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 472
    Top = 25
  end
  object qryFunctionDayItems: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryFunctionDayItemsAfterOpen
    OnCalcFields = qryFunctionDayItemsCalcFields
    Parameters = <
      item
        Name = 'PersonelNoFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PersonelNoTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'OfficeCodeFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'OfficeCodeTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'MounthNo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'YearID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     FunctionDayItems.PersonelNo, PersonelInfo.name_L1 + '#39 +
        ' '#39' + PersonelInfo.lastName_L1 AS PersonelName, FunctionDay.Offic' +
        'eCode,'
      
        '                      FormsInfo_1.InfoName_L1 AS OfficeName,  Fo' +
        'rmsInfoWorkID.FormInfoID AS WorkID, FormsInfoWorkID.InfoName_L1 ' +
        'AS WorkName, FunctionDayItems.ProcCode,'
      '                      FormsInfoProcCode.InfoName_L1 AS ProcName,'
      
        '                      FunctionDayItems.StandardRate, SUM(Functio' +
        'nDayItems.FunTime) AS FunTime, SUM(FunctionDayItems.ExtTime) AS ' +
        'ExtTime,'
      
        '                      count(FunctionDayItems.FunTime ) AS day, S' +
        'UM(FunctionDayItems.FunTime + FunctionDayItems.ExtTime) AS FunEx' +
        'tTime,'
      
        '                      Interdicts.jobCode, FormsInfoWorkID.InfoID' +
        ' AS ProjectRow'
      'FROM Pay.FunctionDayItems INNER JOIN'
      
        '                      Pay.PersonelInfo ON FunctionDayItems.Perso' +
        'nelNo = PersonelInfo.PersonelNo INNER JOIN'
      
        '                      Pay.FunctionDay ON FunctionDayItems.FunID ' +
        '= FunctionDay.FunID INNER JOIN'
      
        '                      Pay.Interdicts ON PersonelInfo.PersonelNo ' +
        '= Interdicts.PersonelNo LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfo_1 ON FunctionDa' +
        'y.OfficeCode = FormsInfo_1.FormInfoID LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfoWorkID ON Functi' +
        'onDayItems.WorkID = FormsInfoWorkID.InfoID LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfoProcCode ON Func' +
        'tionDayItems.ProcCode = FormsInfoProcCode.InfoID'
      ''
      'WHERE     (Interdicts.State < 50)and'
      
        ' (FunctionDayItems.PersonelNo BETWEEN :PersonelNoFrom AND :Perso' +
        'nelNoTo)'
      
        '      AND (FormsInfo_1.InfoID BETWEEN :OfficeCodeFrom AND :Offic' +
        'eCodeTo)'
      
        '      and CAST(SUBSTRING(FunctionDay.FunDate, 6, 2) AS int)= :Mo' +
        'unthNo'
      'AND (FunctionDay.YearID = :YearID )'
      
        'GROUP BY FunctionDayItems.PersonelNo, PersonelInfo.name_L1 + '#39' '#39 +
        ' + PersonelInfo.lastName_L1, FunctionDay.OfficeCode, FormsInfo_1' +
        '.InfoName_L1,'
      
        '                      FunctionDayItems.WorkID, FormsInfoWorkID.I' +
        'nfoName_L1, FunctionDayItems.ProcCode,'
      
        '                      FormsInfoProcCode.InfoName_L1,  FunctionDa' +
        'yItems.StandardRate,'
      
        '                      Interdicts.jobCode, FormsInfoWorkID.InfoID' +
        ', FormsInfoProcCode.FormType, FormsInfoWorkID.FormType,FormsInfo' +
        'WorkID.FormInfoID'
      ''
      
        'HAVING      (FormsInfoProcCode.FormType = 67) AND (FormsInfoWork' +
        'ID.FormType = 40)')
    Left = 74
    Top = 103
    object qryFunctionDayItems_row: TIntegerField
      DisplayLabel = #1585#1583#1610#1601
      FieldKind = fkCalculated
      FieldName = '_row'
      Calculated = True
    end
    object qryFunctionDayItemsPersonelNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588'.'#1662#1585#1587#1606#1604
      FieldName = 'PersonelNo'
      Required = True
    end
    object qryFunctionDayItemsPersonelName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1608' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
      FieldName = 'PersonelName'
      ReadOnly = True
      Size = 56
    end
    object qryFunctionDayItemsOfficeCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583#1608#1575#1581#1583
      FieldName = 'OfficeCode'
    end
    object qryFunctionDayItemsOfficeName: TStringField
      Tag = 3
      DisplayLabel = #1608#1575#1581#1583#1587#1575#1586#1605#1575#1606#1610
      FieldName = 'OfficeName'
      Size = 255
    end
    object qryFunctionDayItemsWorkID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583#1603#1575#1585
      FieldName = 'WorkID'
    end
    object qryFunctionDayItemsWorkName: TStringField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1603#1575#1585
      FieldName = 'WorkName'
      Size = 255
    end
    object qryFunctionDayItemsProcCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1581#1589#1608#1604
      FieldName = 'ProcCode'
    end
    object qryFunctionDayItemsProcName: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1605#1581#1589#1608#1604
      FieldName = 'ProcName'
      Size = 255
    end
    object qryFunctionDayItemsStandardRate: TBCDField
      Tag = 3
      DisplayLabel = #1606#1585#1582' '#1575#1587#1578#1575#1606#1583#1575#1585#1583
      FieldName = 'StandardRate'
      currency = True
      Precision = 19
    end
    object qryFunctionDayItemsFunTime: TFloatField
      Tag = 3
      DisplayLabel = #1603#1575#1585#1603#1585#1583' '#1593#1575#1583#1610
      FieldName = 'FunTime'
    end
    object qryFunctionDayItemsExtTime: TFloatField
      Tag = 3
      DisplayLabel = #1575#1590#1575#1601#1607' '#1603#1575#1585#1610
      FieldName = 'ExtTime'
    end
    object qryFunctionDayItemsFunExtTime: TFloatField
      Tag = 3
      DisplayLabel = #1580#1605#1593' '#1603#1575#1585#1603#1585#1583
      FieldName = 'FunExtTime'
      ReadOnly = True
    end
    object qryFunctionDayItemsjobCode: TIntegerField
      FieldName = 'jobCode'
    end
    object qryFunctionDayItemsProjectRow: TIntegerField
      FieldName = 'ProjectRow'
    end
    object qryFunctionDayItemsday: TIntegerField
      DisplayLabel = #1585#1608#1586#1607#1575#1610' '#1603#1575#1585#1603#1585#1583
      FieldName = 'day'
      ReadOnly = True
    end
  end
  object srcFunctionDayItems: TDataSource
    DataSet = qryFunctionDayItems
    Left = 234
    Top = 103
  end
  object PopupMenu1: TPopupMenu
    Left = 344
    Top = 365
    object N1: TMenuItem
      Action = actshowChart
    end
    object N2: TMenuItem
      Action = actPrintVijeh
    end
    object N3: TMenuItem
      Action = actUpdate
    end
  end
  object qry_Functions: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'MounthNo'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'Years'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT    *'
      'FROM Pay.Functions'
      'WHERE     (Mounth =:MounthNo) '
      'AND    ( Years = :Years  ) '
      '')
    Left = 666
    Top = 112
    object qry_FunctionsFunctionID: TIntegerField
      FieldName = 'FunctionID'
    end
    object qry_FunctionsFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qry_FunctionsMounth: TWordField
      Tag = 3
      DisplayLabel = #1605#1575#1607
      FieldName = 'Mounth'
    end
    object qry_FunctionsPersonelNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610
      FieldName = 'PersonelNo'
    end
    object qry_FunctionsFunctionDay: TFloatField
      Tag = 3
      DisplayLabel = #1585#1608#1586
      FieldName = 'FunctionDay'
    end
    object qry_FunctionsFunctionTime: TFloatField
      DisplayLabel = #1587#1575#1593#1578
      FieldName = 'FunctionTime'
    end
    object qry_FunctionsProjectID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1662#1585#1608#1688#1607
      FieldName = 'ProjectID'
    end
    object qry_FunctionsJobCode: TIntegerField
      FieldName = 'JobCode'
    end
    object qry_FunctionsOfficeCode: TIntegerField
      DisplayLabel = #1603#1583' '#1608#1575#1581#1583
      FieldName = 'OfficeCode'
    end
    object qry_FunctionsProjectRow: TIntegerField
      DisplayLabel = #1603#1583' '#1662#1585#1608#1688#1607
      FieldName = 'ProjectRow'
    end
    object qry_FunctionsProcCode: TIntegerField
      DisplayLabel = #1603#1583#1605#1581#1589#1608#1604
      FieldName = 'ProcCode'
    end
    object qry_FunctionsCTopic3: TIntegerField
      DisplayLabel = #1603#1583#1586#1605#1610#1606
      FieldName = 'CTopic3'
    end
    object qry_FunctionsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qry_FunctionsYears: TIntegerField
      FieldName = 'Years'
    end
  end
  object qry_FunItems: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT    *'
      'FROM Pay.FunctionsItems'
      'where FunctionID<0')
    Left = 674
    Top = 183
    object qry_FunItemsFunctionsItemsID: TIntegerField
      FieldName = 'FunctionsItemsID'
    end
    object qry_FunItemsFunctionID: TIntegerField
      FieldName = 'FunctionID'
    end
    object qry_FunItemsSalaryID: TIntegerField
      FieldName = 'SalaryID'
    end
    object qry_FunItemsFDaily: TFloatField
      FieldName = 'FDaily'
    end
    object qry_FunItemsFHours: TFloatField
      FieldName = 'FHours'
    end
    object qry_FunItemsAmount: TBCDField
      FieldName = 'Amount'
      Precision = 19
    end
    object qry_FunItemsAccTopicCode: TIntegerField
      FieldName = 'AccTopicCode'
    end
    object qry_FunItemsAccDetailCode: TIntegerField
      FieldName = 'AccDetailCode'
    end
    object qry_FunItemsAccCTopicCode: TIntegerField
      FieldName = 'AccCTopicCode'
    end
    object qry_FunItemsAccCTopicCode2: TIntegerField
      FieldName = 'AccCTopicCode2'
    end
  end
  object qry_FormsInfo: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     FormsInfo.FormInfoID, FormsInfo.InfoName_L1, FormsInf' +
        'o.MaxDay, FormsInfo.MaxTime'
      'FROM Pay.FormsInfo INNER JOIN'
      
        '                      Pay.FormTypes ON FormsInfo.FormType = Form' +
        'Types.FormType'
      
        'WHERE     (FormTypes.FunctionShow = 1) AND (FormsInfo.RecalKindC' +
        'lock = 1)')
    Left = 602
    Top = 159
  end
  object qrysumFunctionDayItems: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = qryFunctionDayItemsCalcFields
    Parameters = <
      item
        Name = 'MounthNo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'OfficeCodeFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'OfficeCodeTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'YearID'
        Size = -1
        Value = Null
      end
      item
        Name = 'PersonelNoFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PersonelNoTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     FunctionDayItems.PersonelNo, PersonelInfo.name_L1 + '#39 +
        ' '#39' + PersonelInfo.lastName_L1 AS PersonelName,'
      
        '     CAST(SUBSTRING(FunctionDay.FunDate, 9, 2) AS int) AS day, S' +
        'UM(FunctionDayItems.FunTime) AS FunTime, SUM(FunctionDayItems.Ex' +
        'tTime) AS ExtTime,'
      
        '                      SUM(FunctionDayItems.FunTime + FunctionDay' +
        'Items.ExtTime) AS FunExtTime'
      'FROM Pay.FunctionDayItems INNER JOIN'
      
        '                      Pay.PersonelInfo ON FunctionDayItems.Perso' +
        'nelNo = PersonelInfo.PersonelNo INNER JOIN'
      
        '                      Pay.FunctionDay ON FunctionDayItems.FunID ' +
        '= FunctionDay.FunID LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo ON FunctionDay.OfficeCode = ' +
        'FormsInfo.FormInfoID'
      
        '                      WHERE     (CAST(SUBSTRING(FunctionDay.FunD' +
        'ate, 6, 2) AS int) = :MounthNo)'
      
        '                            AND (FormsInfo.InfoID BETWEEN :Offic' +
        'eCodeFrom AND :OfficeCodeTo)'
      'AND (FunctionDay.YearID = :YearID )'
      
        'GROUP BY FunctionDayItems.PersonelNo, PersonelInfo.name_L1 + '#39' '#39 +
        ' + PersonelInfo.lastName_L1,'
      'CAST(SUBSTRING(FunctionDay.FunDate, 9, 2) AS int)'
      
        'HAVING      (FunctionDayItems.PersonelNo BETWEEN :PersonelNoFrom' +
        ' AND :PersonelNoTo) AND'
      ' (SUM(FunctionDayItems.FunTime) > 8 OR'
      '                      SUM(FunctionDayItems.ExtTime) > 16 OR'
      
        '                      SUM(FunctionDayItems.FunTime + FunctionDay' +
        'Items.ExtTime) > 24)')
    Left = 466
    Top = 327
    object qrysumFunctionDayItems_Row: TIntegerField
      DisplayLabel = #1585#1583#1610#1601
      FieldKind = fkCalculated
      FieldName = '_Row'
      Calculated = True
    end
    object IntegerField1: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1662#1585#1587#1606#1604#1610
      FieldName = 'PersonelNo'
      Required = True
    end
    object StringField1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1608' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
      FieldName = 'PersonelName'
      ReadOnly = True
      Size = 56
    end
    object FloatField1: TFloatField
      Tag = 3
      DisplayLabel = #1603#1575#1585#1603#1585#1583' '#1593#1575#1583#1610
      FieldName = 'FunTime'
    end
    object FloatField2: TFloatField
      Tag = 3
      DisplayLabel = #1575#1590#1575#1601#1607' '#1603#1575#1585#1610
      FieldName = 'ExtTime'
    end
    object FloatField4: TFloatField
      Tag = 3
      DisplayLabel = #1580#1605#1593' '#1603#1575#1585#1603#1585#1583
      FieldName = 'FunExtTime'
      ReadOnly = True
    end
    object qrysumFunctionDayItemsday: TIntegerField
      DisplayLabel = #1585#1608#1586#1603#1575#1585#1603#1585#1583
      FieldName = 'day'
    end
  end
  object srcsumFunctionDayItems: TDataSource
    DataSet = qrysumFunctionDayItems
    Left = 610
    Top = 311
  end
  object qryStandardDays: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = qryFunctionDayItemsCalcFields
    Parameters = <
      item
        Name = 'MounthNo2'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'OfficeCodeFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'OfficeCodeTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'PersonelNoFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'PersonelNoTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT     FunctionDayItems.PersonelNo, PersonelInfo.name_L1 + '#39 +
        ' '#39' + PersonelInfo.lastName_L1 AS PersonelName,'
      
        '            sum(FunctionDayItems.FunTime)/8 AS FunTime, COUNT(CA' +
        'ST(SUBSTRING(FunctionDay.FunDate, 6, 2) AS int)) AS PostCount'
      'FROM Pay.FunctionDayItems INNER JOIN'
      
        '                      Pay.PersonelInfo ON FunctionDayItems.Perso' +
        'nelNo = PersonelInfo.PersonelNo INNER JOIN'
      
        '                      Pay.FunctionDay ON FunctionDayItems.FunID ' +
        '= FunctionDay.FunID INNER JOIN'
      
        '                      Pay.FormsInfo FormsInfo_Mounths ON CAST(SU' +
        'BSTRING(FunctionDay.FunDate, 6, 2) AS int) = FormsInfo_Mounths.I' +
        'nfoID LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo FormsInfo_1 ON FunctionDay.O' +
        'fficeCode = FormsInfo_1.FormInfoID'
      
        'WHERE     (CAST(SUBSTRING(FunctionDay.FunDate, 6, 2) AS int) = :' +
        'MounthNo2)'
      
        'AND (FormsInfo_1.InfoID BETWEEN :OfficeCodeFrom AND :OfficeCodeT' +
        'o)'
      
        'GROUP BY FunctionDayItems.PersonelNo, PersonelInfo.name_L1 + '#39' '#39 +
        ' + PersonelInfo.lastName_L1, CAST(SUBSTRING(FunctionDay.FunDate,' +
        ' 6, 2) AS int), '
      
        '                      FormsInfo_Mounths.FormType, FormsInfo_Moun' +
        'ths.StandardDays'
      
        'HAVING      (FunctionDayItems.PersonelNo BETWEEN :PersonelNoFrom' +
        ' AND :PersonelNoTo) AND (FormsInfo_Mounths.FormType = 17) AND (S' +
        'UM(FunctionDayItems.FunTime)'
      '                      / 8 <> FormsInfo_Mounths.StandardDays)'
      'ORDER BY FunctionDayItems.PersonelNo')
    Left = 66
    Top = 335
    object qryStandardDays_Row: TIntegerField
      DisplayLabel = #1585#1583#1610#1601
      FieldKind = fkCalculated
      FieldName = '_Row'
      Calculated = True
    end
    object qryStandardDaysPersonelNo: TIntegerField
      DisplayLabel = #1603#1583' '#1662#1585#1587#1606#1604#1610
      FieldName = 'PersonelNo'
    end
    object qryStandardDaysPersonelName: TStringField
      DisplayLabel = #1606#1575#1605' '#1608' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
      FieldName = 'PersonelName'
      Size = 56
    end
    object qryStandardDaysPostCount: TIntegerField
      DisplayLabel = #1578#1593#1583#1575#1583#1583#1601#1593#1575#1578#8207#1579#1576#1578
      FieldName = 'PostCount'
      ReadOnly = True
    end
    object qryStandardDaysFunTime: TFloatField
      DisplayLabel = #1580#1605#1593#8207#1587#1575#1593#1578#8207#1576#1585#1581#1587#1576#8207#1585#1608#1586
      FieldName = 'FunTime'
      ReadOnly = True
    end
  end
  object srcStandardDays: TDataSource
    DataSet = qryStandardDays
    Left = 186
    Top = 327
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
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\Projects\Fara\Salary\Exe\Report\FunctionDayList.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
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
    Left = 408
    Top = 192
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 25400
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 17992
        mmWidth = 284427
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCompanyName: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCompanyName'
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
        mmLeft = 116681
        mmTop = 1058
        mmWidth = 50800
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCaption: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCaption'
        OnGetText = ppLblCaptionGetText
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578'  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8382
        mmLeft = 135859
        mmTop = 8467
        mmWidth = 12446
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
        Caption = #1603#1583' '#1662#1585#1587#1606#1604#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 266119
        mmTop = 18522
        mmWidth = 17780
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 265591
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1608' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 234582
        mmTop = 18522
        mmWidth = 30480
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 234054
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583#1608#1575#1581#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 220826
        mmTop = 18522
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 220297
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1608#1575#1581#1583#1587#1575#1586#1605#1575#1606#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 191829
        mmTop = 18522
        mmWidth = 27940
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 191300
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583#1603#1575#1585
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 180612
        mmTop = 18522
        mmWidth = 10160
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 180084
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1608#1593' '#1603#1575#1585
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 159235
        mmTop = 18522
        mmWidth = 20320
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 158707
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583' '#1605#1581#1589#1608#1604
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 142939
        mmTop = 18522
        mmWidth = 15240
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line15'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 142410
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606' '#1605#1581#1589#1608#1604
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 121562
        mmTop = 18522
        mmWidth = 20320
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line17'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 121034
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583' '#1586#1605#1610#1606
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 107805
        mmTop = 18522
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line19'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 107277
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1586#1605#1610#1606
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 83889
        mmTop = 18522
        mmWidth = 22860
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line21'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 83360
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1585#1582' '#1575#1587#1578#1575#1606#1583#1575#1585#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 65052
        mmTop = 18522
        mmWidth = 17780
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line23'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 64524
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1575#1585#1603#1585#1583' '#1593#1575#1583#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 48755
        mmTop = 18522
        mmWidth = 15240
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line27'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 48227
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1575#1590#1575#1601#1607' '#1603#1575#1585#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 32459
        mmTop = 18522
        mmWidth = 15240
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line31'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 31930
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1585#1608#1586#1603#1575#1585#1603#1585#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 16162
        mmTop = 18522
        mmWidth = 15240
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line35'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 15634
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1603#1575#1585#1603#1585#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 0
        mmTop = 18522
        mmWidth = 15240
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line39'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 0
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object ppSysVarPageNo: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SysVarPageNo'
        OnGetText = ppSysVarPageNoGetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5419
        mmLeft = 10054
        mmTop = 7408
        mmWidth = 7366
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7409
      mmPrintPosition = 0
      object ppLineDetail: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'LineDetail'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 281516
        mmTop = 0
        mmWidth = 2910
        BandType = 4
        LayerName = Foreground
      end
      object ppLin4Position: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Lin4Position'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 0
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
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
        mmHeight = 7451
        mmLeft = 266119
        mmTop = 0
        mmWidth = 17780
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 265591
        mmTop = 0
        mmWidth = 2647
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
        mmHeight = 7451
        mmLeft = 234582
        mmTop = 0
        mmWidth = 30480
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 234054
        mmTop = 0
        mmWidth = 2647
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
        mmHeight = 7451
        mmLeft = 220826
        mmTop = 0
        mmWidth = 12700
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 220297
        mmTop = 0
        mmWidth = 2647
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
        mmHeight = 7451
        mmLeft = 191829
        mmTop = 0
        mmWidth = 27940
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 191300
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'WorkID'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7451
        mmLeft = 180612
        mmTop = 0
        mmWidth = 10160
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 180084
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'WorkName'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7451
        mmLeft = 159235
        mmTop = 0
        mmWidth = 20320
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 158707
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'ProcCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7451
        mmLeft = 142939
        mmTop = 0
        mmWidth = 15240
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line16'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 142410
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'ProcName'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7451
        mmLeft = 121562
        mmTop = 0
        mmWidth = 20320
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line18'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 121034
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'EarthCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7451
        mmLeft = 107805
        mmTop = 0
        mmWidth = 12700
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line20'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 107277
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'EarthName'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7451
        mmLeft = 83889
        mmTop = 0
        mmWidth = 22860
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line22'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 83360
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        Border.mmPadding = 0
        DataField = 'StandardRate'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7451
        mmLeft = 65052
        mmTop = 0
        mmWidth = 17780
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line24'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 64524
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = 'FunTime'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7451
        mmLeft = 48755
        mmTop = 0
        mmWidth = 15240
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line28'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 48227
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        Border.mmPadding = 0
        DataField = 'ExtTime'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7451
        mmLeft = 32459
        mmTop = 0
        mmWidth = 15240
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line32'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 31930
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        Border.mmPadding = 0
        DataField = 'day'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7451
        mmLeft = 16162
        mmTop = 0
        mmWidth = 15240
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line36'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 15634
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText15'
        Border.mmPadding = 0
        DataField = 'FunExtTime'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7451
        mmLeft = 0
        mmTop = 0
        mmWidth = 15240
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line40'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 0
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 9525
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 0
        mmWidth = 284427
        BandType = 8
        LayerName = Foreground
      end
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
        mmLeft = 249503
        mmTop = 529
        mmWidth = 15610
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'PersonelNo'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 266119
        mmTop = 528
        mmWidth = 17780
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 265591
        mmTop = 0
        mmWidth = 2647
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc4'
        Border.mmPadding = 0
        DataField = 'StandardRate'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6519
        mmLeft = 65052
        mmTop = 528
        mmWidth = 17780
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line26'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 64524
        mmTop = 0
        mmWidth = 2647
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc6'
        Border.mmPadding = 0
        DataField = 'FunTime'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 48755
        mmTop = 528
        mmWidth = 15240
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line30'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 48227
        mmTop = 0
        mmWidth = 2647
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc8'
        Border.mmPadding = 0
        DataField = 'ExtTime'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 32459
        mmTop = 528
        mmWidth = 15240
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line34'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 31930
        mmTop = 0
        mmWidth = 2647
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc10'
        Border.mmPadding = 0
        DataField = 'day'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 16162
        mmTop = 528
        mmWidth = 15240
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line38'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 15634
        mmTop = 0
        mmWidth = 2647
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc12'
        Border.mmPadding = 0
        DataField = 'FunExtTime'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 0
        mmTop = 528
        mmWidth = 15240
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line42'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 0
        mmTop = 0
        mmWidth = 2647
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line43'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 83344
        mmTop = 0
        mmWidth = 2646
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape3'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 0
        mmWidth = 284427
        BandType = 7
        LayerName = Foreground
      end
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
        mmLeft = 251884
        mmTop = 529
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'PersonelNo'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 266119
        mmTop = 528
        mmWidth = 17780
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 265591
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        Border.mmPadding = 0
        DataField = 'StandardRate'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6519
        mmLeft = 65052
        mmTop = 528
        mmWidth = 17780
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line25'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 64524
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc5'
        Border.mmPadding = 0
        DataField = 'FunTime'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 48755
        mmTop = 528
        mmWidth = 15240
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line29'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 48227
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc7'
        Border.mmPadding = 0
        DataField = 'ExtTime'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 32459
        mmTop = 528
        mmWidth = 15240
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line33'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 31930
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc9'
        Border.mmPadding = 0
        DataField = 'day'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 16162
        mmTop = 528
        mmWidth = 15240
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line37'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 15634
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc11'
        Border.mmPadding = 0
        DataField = 'FunExtTime'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 0
        mmTop = 528
        mmWidth = 15240
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line41'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 0
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line44'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 83344
        mmTop = 0
        mmWidth = 2646
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
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcFunctionDayItems
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 504
    Top = 173
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
      FieldAlias = 'OfficeCode'
      FieldName = 'OfficeCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'OfficeName'
      FieldName = 'OfficeName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'WorkID'
      FieldName = 'WorkID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'WorkName'
      FieldName = 'WorkName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'ProcCode'
      FieldName = 'ProcCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'ProcName'
      FieldName = 'ProcName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'EarthCode'
      FieldName = 'EarthCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'EarthName'
      FieldName = 'EarthName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'StandardRate'
      FieldName = 'StandardRate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'FunTime'
      FieldName = 'FunTime'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'ExtTime'
      FieldName = 'ExtTime'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'day'
      FieldName = 'day'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'FunExtTime'
      FieldName = 'FunExtTime'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'jobCode'
      FieldName = 'jobCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'ProjectRow'
      FieldName = 'ProjectRow'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
  end
  object stpExportSpecialFunction: TADOStoredProc
    Connection = DmF.adcsalary
    ProcedureName = 'pay.ExportSpecialFunction;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Month'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@PersonelNoFROM'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@PersonelNoTo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@YearID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Years'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 192
    Top = 181
  end
end

inherited KartSaat_donyaF: TKartSaat_donyaF
  Left = 355
  Top = 188
  Caption = #1583#1585#1610#1575#1601#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1575#1585#1603#1585#1583' '#1575#1586' '#1603#1575#1585#1578' '#1587#1575#1593#1578' '#1583#1606#1610#1575#1610' '#1662#1585#1583#1575#1586#1588
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    inherited BtnReject: TBitBtn
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 699
      Top = 8
      Width = 75
      Height = 25
      Action = actTransfer
      Anchors = [akTop, akRight]
      Caption = #1575#1606#1578#1602#1575#1604
      TabOrder = 0
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
    object yrcmbx1: TYearComboBox
      Left = 16
      Top = 15
      Width = 112
      Height = 32
      Align = alCustom
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 0
      YearID = 0
      YearsParam = 0
      ADOConnection = DmF.adcsalary
    end
  end
  inherited Panel3: TPanel
    Top = 337
    Height = 139
    ExplicitTop = 337
    ExplicitHeight = 139
    object memWarning: TMemo
      Tag = 111
      Left = 2
      Top = 59
      Width = 782
      Height = 78
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBGrid1: TDBGrid
      Left = 562
      Top = 2
      Width = 222
      Height = 57
      Align = alClient
      Color = clCream
      DataSource = srcFunctions
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
          FieldName = 'Mounth'
          Width = 25
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PersonelNo'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FunctionDay'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FunctionTime'
          Width = 68
          Visible = True
        end>
    end
    object DBGrid2: TDBGrid
      Left = 2
      Top = 2
      Width = 399
      Height = 57
      Align = alLeft
      DataSource = srcTime
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'DateID'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PersonelNo'
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'InTime'
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OutTime'
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DayTime'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OverTime'
          Visible = True
        end>
    end
    object DBGrid3: TDBGrid
      Left = 401
      Top = 2
      Width = 161
      Height = 57
      Align = alLeft
      DataSource = srcqryFunctionItems
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'SalaryID'
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FDaily'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FHours'
          Width = 46
          Visible = True
        end>
    end
  end
  object ToolBar1: TToolBar [3]
    Left = 0
    Top = 53
    Width = 786
    Height = 36
    BorderWidth = 2
    ButtonHeight = 21
    ButtonWidth = 54
    Caption = 'ToolBar1'
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    EdgeInner = esLowered
    ShowCaptions = True
    TabOrder = 3
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
  object Panel1: TPanel [4]
    Left = 0
    Top = 89
    Width = 786
    Height = 248
    Align = alTop
    TabOrder = 4
    object Label1: TLabel
      Left = 146
      Top = 5
      Width = 125
      Height = 13
      Caption = #1605#1587#1610#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1575#1585#1578' '#1587#1575#1593#1578
    end
    object SpeedButton1: TSpeedButton
      Left = 248
      Top = 21
      Width = 23
      Height = 22
      Hint = #1575#1606#1578#1582#1575#1576' '#1605#1587#1610#1585' '#1575#1591#1604#1575#1593#1575#1578
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000420B0000420B0000000100000001000000730800087B
        080008841000088C100008A51800108C2100109C210018AD290031C64A0042D6
        6B0052D67B005AE78C0018A5C60018ADD60021ADD60029ADD60031B5DE0052BD
        E7004AC6E7004AC6EF009CDEEF00ADDEEF006BDEF70073DEF700A5EFF700FF00
        FF0084EFFF008CEFFF0094EFFF008CF7FF0094F7FF00A5F7FF0094FFFF009CFF
        FF00ADFFFF00C6FFFF00D6FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00191919191919
        19191919191919191919190F100E191919191919191919191919190F141A120E
        0C0C0C19191919191919190F11212017171717120E0C19191919190F11221D1B
        1B1B171717130E191919190F0F151E1E1B1B1B1B171713191919190F170F211D
        1D1D1B1B1B17170C1919190F1E0F1518181F1B1B1B17000C1919190F21170F0C
        0C0C151D1A000B000C19190F211E171717160F15000A09080019190F211E1E1E
        1E17170F0C0508060C19190F23202124241B1C17170207021919190E14232314
        0D0C0C0C0C03041919191919100F0C0C19191919030402191919191919191919
        1900010303011919191919191919191919191919191919191919}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object Label2: TLabel
      Left = 147
      Top = 45
      Width = 124
      Height = 13
      Caption = #1604#1610#1587#1578' '#1603#1575#1585#1603#1585#1583#1607#1575#1610' '#1662#1610#1583#1575' '#1588#1583#1607
    end
    object Label3: TLabel
      Left = 234
      Top = 176
      Width = 62
      Height = 13
      Alignment = taRightJustify
      Caption = #1603#1583#1575#1590#1575#1601#1607' '#1603#1575#1585#1610
    end
    object SpeedButton2: TSpeedButton
      Tag = 1
      Left = 120
      Top = 172
      Width = 22
      Height = 21
      Caption = '...'
      OnClick = SpeedButton2Click
    end
    object edtPath: TEdit
      Tag = 111
      Left = 24
      Top = 21
      Width = 221
      Height = 21
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 0
      OnKeyDown = edtPathKeyDown
    end
    object lstListFiles: TListBox
      Left = 22
      Top = 61
      Width = 249
      Height = 85
      Color = 13431799
      ItemHeight = 13
      Items.Strings = (
        'kara.txt'
        #13'kara.txt'
        '')
      TabOrder = 1
      OnClick = lstListFilesClick
    end
    object chkDelPreviousFunctions: TCheckBox
      Left = 113
      Top = 152
      Width = 158
      Height = 17
      Caption = #1603#1575#1585#1603#1585#1583#1607#1575#1610' '#1602#1576#1604#1610' &'#1581#1584#1601' '#1588#1608#1606#1583'.'
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object Memo1: TMemo
      Left = 312
      Top = 1
      Width = 473
      Height = 246
      TabStop = False
      Align = alRight
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        #1605#1585#1575#1581#1604' '#1575#1606#1578#1602#1575#1604' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1575#1585#1603#1585#1583' '#1575#1586' '#1603#1575#1585#1578' '#1587#1575#1593#1578' '#1576#1607' '#1606#1585#1605#8204#1575#1601#1586#1575#1585':'
        ''
        '        1. '#1605#1587#1610#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1575#1585#1578' '#1587#1575#1593#1578' '#1585#1575' '#1605#1588#1582#1589' '#1603#1606#1610#1583'.'
        
          '        2. '#1604#1610#1587#1578' '#1605#1608#1585#1583' '#1606#1592#1585' '#1585#1575' '#1575#1586' '#1602#1587#1605#1578' "'#1604#1610#1587#1578' '#1603#1575#1585#1603#1585#1583#1607#1575#1610' '#1662#1610#1583#1575' '#1588#1583#1607'" '#1575#1606 +
          #1578#1582#1575#1576' '#1603#1606#1610#1583'.'
        
          '        3. '#1583#1585' '#1589#1608#1585#1578' '#1606#1610#1575#1586' '#1576#1607' '#1581#1584#1601' '#1603#1575#1585#1603#1585#1583#1607#1575#1610' '#1605#1585#1576#1608#1591' '#1576#1607' '#1605#1575#1607' '#1605#1608#1585#1583' '#1606#1592#1585' '#1603 +
          #1607' '#1602#1576#1604#1575#1611' '#1583#1585' '#1587#1610#1587#1578#1605' '#1579#1576#1578' '#1588#1583#1607
        '        '#1711#1586#1610#1606#1607' '#1605#1585#1576#1608#1591#1607' '#1585#1575' '#1578#1610#1603' '#1603#1606#1610#1583'.'
        '        4. '#1583#1603#1605#1607' '#1575#1606#1578#1602#1575#1604' '#1585#1575' '#1576#1586#1606#1610#1583'.')
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object mskFormInfoID: TMaskEdit
      Tag = 1
      Left = 143
      Top = 172
      Width = 88
      Height = 21
      EditMask = '99999999999;1;_'
      MaxLength = 11
      TabOrder = 4
      Text = '           '
    end
  end
  inherited ActionList: TActionList
    object actTransfer: TAction
      Caption = #1575#1606#1578#1602#1575#1604
      Hint = ' '
      ShortCut = 117
      OnExecute = actTransferExecute
    end
  end
  object qryPersonels: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     *'
      'FROM Pay.PersonelInfo')
    Left = 432
    Top = 176
  end
  object qryFunctions: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterScroll = qryFunctionsAfterScroll
    Parameters = <
      item
        Name = 'Mounth'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'YearID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
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
      'select * FROM Pay.Functions'
      ' where Mounth= :Mounth'
      'AND (YearID = :YearID)'
      'AND (Years = :Years)')
    Left = 712
    Top = 277
    object qryFunctionsFunctionID: TIntegerField
      FieldName = 'FunctionID'
    end
    object qryFunctionsFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qryFunctionsMounth: TWordField
      DisplayLabel = #1605#1575#1607
      FieldName = 'Mounth'
    end
    object qryFunctionsPersonelNo: TIntegerField
      DisplayLabel = #1588'.'#1662#1585#1587#1606#1604
      FieldName = 'PersonelNo'
    end
    object qryFunctionsProjectID: TIntegerField
      FieldName = 'ProjectID'
    end
    object qryFunctionsJobCode: TIntegerField
      FieldName = 'JobCode'
    end
    object qryFunctionsFunctionTime: TFloatField
      DisplayLabel = #1587#1575#1593#1575#1578' '#1603#1575#1585#1603#1585#1583
      FieldName = 'FunctionTime'
    end
    object qryFunctionsOfficeCode: TIntegerField
      FieldName = 'OfficeCode'
    end
    object qryFunctionsFunctionDay: TFloatField
      DisplayLabel = #1585#1608#1586#1607#1575#1610' '#1603#1575#1585#1603#1585#1583
      FieldName = 'FunctionDay'
    end
    object qryFunctionsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryFunctionsYears: TIntegerField
      FieldName = 'Years'
    end
  end
  object srcFunctions: TDataSource
    DataSet = qryFunctions
    Left = 640
    Top = 277
  end
  object qryFunctionItems: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'FunID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 2
      end>
    SQL.Strings = (
      'SELECT    *'
      'FROM Pay.FunctionsItems'
      'where FunctionID=:FunID')
    Left = 410
    Top = 263
    object qryFunctionItemsFunctionsItemsID: TIntegerField
      FieldName = 'FunctionsItemsID'
    end
    object qryFunctionItemsFunctionID: TIntegerField
      FieldName = 'FunctionID'
    end
    object qryFunctionItemsSalaryID: TIntegerField
      DisplayLabel = #1603#1583
      FieldName = 'SalaryID'
    end
    object qryFunctionItemsFDaily: TFloatField
      DisplayLabel = #1585#1608#1586
      FieldName = 'FDaily'
    end
    object qryFunctionItemsFHours: TFloatField
      DisplayLabel = #1587#1575#1593#1578
      FieldName = 'FHours'
    end
  end
  object qry_FormsInfoClock: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'FormInfoID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     RecalKindClock, FormInfoID, 40 + (RecalKindClock) * 6' +
        ' AS AStart, (CASE WHEN MaxDay > 0 THEN 1 ELSE 0 END) ActiveDay, '
      
        '                      (CASE WHEN MaxTime > 0 THEN 1 ELSE 0 END) ' +
        'ActiveTime'
      'FROM Pay.FormsInfo'
      'WHERE     (FormType = 29) AND (RecalKindClock > 0)'
      '       AND   FormInfoID = :FormInfoID'
      'ORDER BY RecalKindClock')
    Left = 536
    Top = 176
    object qry_FormsInfoClockRecalKindClock: TWordField
      FieldName = 'RecalKindClock'
    end
    object qry_FormsInfoClockFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qry_FormsInfoClockAStart: TIntegerField
      FieldName = 'AStart'
      ReadOnly = True
    end
    object qry_FormsInfoClockActiveDay: TIntegerField
      FieldName = 'ActiveDay'
      ReadOnly = True
    end
    object qry_FormsInfoClockActiveTime: TIntegerField
      FieldName = 'ActiveTime'
      ReadOnly = True
    end
  end
  object cliTime: TClientDataSet
    Aggregates = <>
    Params = <>
    OnCalcFields = cliTimeCalcFields
    Left = 66
    Top = 291
    object cliTimeDateID: TIntegerField
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'DateID'
    end
    object cliTimePersonelNo: TIntegerField
      DisplayLabel = #1588'.'#1662#1585#1587#1606#1604
      FieldName = 'PersonelNo'
    end
    object cliTimeInTime: TFloatField
      DisplayLabel = #1608#1585#1608#1583
      FieldName = 'InTime'
    end
    object cliTimeOutTime: TFloatField
      DisplayLabel = #1582#1585#1608#1580
      FieldName = 'OutTime'
    end
    object cliTimeDayTime: TFloatField
      DisplayLabel = #1605#1583#1578
      FieldKind = fkInternalCalc
      FieldName = 'DayTime'
    end
    object cliTimeOverTime: TFloatField
      DisplayLabel = #1575#1590#1575#1601#1607' '#1603#1575#1585#1610
      FieldKind = fkInternalCalc
      FieldName = 'OverTime'
    end
  end
  object srcTime: TDataSource
    DataSet = cliTime
    Left = 128
    Top = 290
  end
  object srcqryFunctionItems: TDataSource
    DataSet = qryFunctionItems
    Left = 512
    Top = 269
  end
end

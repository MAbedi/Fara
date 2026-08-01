inherited SalaryList4SumOfficeUnLimitF: TSalaryList4SumOfficeUnLimitF
  Left = 385
  Top = 136
  Caption = '9-'#1604#1610#1587#1578' '#1581#1602#1608#1602' '#1576#1578#1601#1603#1610#1603' '#1587#1585#1580#1605#1593' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610' '#1576#1575' '#1593#1606#1575#1608#1610#1606' '#1603#1575#1585#1603#1585#1583
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    object DBNavigator2: TDBNavigator
      AlignWithMargins = True
      Left = 409
      Top = 4
      Width = 130
      Height = 33
      DataSource = srcSalary
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alClient
      Flat = True
      TabOrder = 1
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSendtoExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 2
    end
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
      TabOrder = 3
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
    object Button2: TButton
      AlignWithMargins = True
      Left = 626
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actFunctionShow
      Align = alRight
      TabOrder = 6
    end
    object Button3: TButton
      AlignWithMargins = True
      Left = 545
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actPrint
      Align = alRight
      TabOrder = 7
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 328
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actPrintVijeh
      Align = alLeft
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
      TabOrder = 8
    end
  end
  inherited Panel2: TPanel
    inherited lblCaption: TLabel
      Left = 732
      Width = 8
      Height = 16
      Caption = '9'
      ExplicitLeft = 732
      ExplicitWidth = 8
    end
    object CmbArchiveID: TComboBox
      Left = 16
      Top = 16
      Width = 126
      Height = 21
      Color = 13431799
      TabOrder = 0
      Text = 'CmbArchiveID'
      OnChange = CmbArchiveIDChange
    end
  end
  inherited Panel3: TPanel
    object ToolBar1: TToolBar
      Left = 2
      Top = 2
      Width = 782
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
      Width = 782
      Height = 383
      Align = alClient
      Color = clCream
      DataSource = srcSalary
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
      HorzScrollBar.ExtraPanel.NavigatorButtons = [nbFirstEh, nbPriorEh, nbNextEh, nbLastEh, nbRefreshEh]
      HorzScrollBar.ExtraPanel.Visible = True
      IndicatorTitle.ShowDropDownSign = True
      IndicatorTitle.TitleButton = True
      OddRowColor = clWhite
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      RowHeight = 18
      SearchPanel.Enabled = True
      SortLocal = True
      TabOrder = 0
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  inherited ActionList: TActionList
    Left = 376
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
      OnExecute = actFunctionShowExecute
    end
    object actFish: TAction
      Caption = #1601#1610#1588' '#1581#1602#1608#1602
    end
    object actPrintVijeh: TAction
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
      OnExecute = actPrintVijehExecute
    end
    object actSMS: TAction
      Caption = #1575#1585#1587#1575#1604' '#1662#1610#1575#1605#1603
      OnExecute = actSMSExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 376
    Top = 169
  end
  object srcSalary: TDataSource
    DataSet = qrysalary
    Left = 112
    Top = 224
  end
  object qryWage: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'YearID'
        Size = -1
        Value = Null
      end
      item
        Name = 'Years'
        Size = -1
        Value = Null
      end
      item
        Name = 'Mounth'
        DataType = ftString
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
        Name = 'LabelIDFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'LabelIDTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'FromPersonelNo'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ToPersonelNo'
        DataType = ftString
        Size = 1
        Value = '0'
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
        Name = 'EmployTypeIDFrom'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'EmployTypeIDTo'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'OfficeCodeFromTo'
        DataType = ftString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      
        'SELECT     FixedCalculated.SalaryID, FormsInfo_2.InfoName_L1, Fo' +
        'rmsInfo_2.FormInfoID'
      'FROM Pay.FixedCalculated LEFT OUTER JOIN'
      '                      Pay.Interdicts LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfoEmployTypeID ON ' +
        'Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID ON '
      
        '                      FixedCalculated.PersonelNO = Interdicts.Pe' +
        'rsonelNo LEFT OUTER JOIN'
      '                      Pay.PersonelInfo LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfoPersonelState ON' +
        ' PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID ' +
        'ON '
      
        '                      FixedCalculated.PersonelNO = PersonelInfo.' +
        'PersonelNo LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfo_2 ON FixedCalcu' +
        'lated.SalaryID = FormsInfo_2.FormInfoID'
      ' LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfoOffice ON Interd' +
        'icts.OfficeCode = FormsInfoOffice.FormInfoID AND Interdicts.Pers' +
        'onelNo = FixedCalculated.PersonelNO'
      ''
      
        'WHERE     (Interdicts.State < 50) AND (FixedCalculated.ShowListK' +
        'ind = 1)'
      'AND (FixedCalculated.YearID = :YearID)'
      'AND (FixedCalculated.Years = :Years)'
      
        'AND (FixedCalculated.Mounth = :Mounth)AND (FixedCalculated.Archi' +
        'veID = :ArchiveID)'
      
        'And (FixedCalculated.LabelID between :LabelIDFrom  and :LabelIDT' +
        'o )'
      
        'AND (FixedCalculated.PersonelNO BETWEEN :FromPersonelNo AND :ToP' +
        'ersonelNo)'
      
        'AND (FormsInfoPersonelState.InfoID  BETWEEN :PersonelStateFrom A' +
        'ND :PersonelStateTo )'
      
        'AND (FormsInfoEmployTypeID.InfoID   BETWEEN :EmployTypeIDFrom AN' +
        'D :EmployTypeIDTo )'
      ' :OfficeCodeFromTo'
      'AND (NOT (FixedCalculated.SalaryID BETWEEN 600 AND 602))'
      
        'GROUP BY FixedCalculated.SalaryID, FormsInfo_2.InfoName_L1, Form' +
        'sInfo_2.FormInfoID'
      'ORDER BY FixedCalculated.SalaryID'
      '')
    Left = 73
    Top = 103
  end
  object qryDec: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'YearID'
        Size = -1
        Value = Null
      end
      item
        Name = 'Years'
        Size = -1
        Value = Null
      end
      item
        Name = 'Mounth'
        Size = -1
        Value = Null
      end
      item
        Name = 'ArchiveID'
        Size = -1
        Value = Null
      end
      item
        Name = 'LabelIDFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'LabelIDTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'FromPersonelNo'
        Size = -1
        Value = Null
      end
      item
        Name = 'ToPersonelNo'
        Size = -1
        Value = Null
      end
      item
        Name = 'PersonelStateFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'PersonelStateTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'EmployTypeIDFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'EmployTypeIDTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'OfficeCodeFromTo'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT    FixedCalculated.SalaryID,'
      'MAX(CASE WHEN InsuranceCONSTinfo.InsuranceLabel_L1 IS NULL'
      
        '    THEN FormsInfo_2.InfoName_L1 ELSE InsuranceCONSTinfo.Insuran' +
        'ceLabel_L1 END) AS InfoName_L1,'
      '      FormsInfo_2.FormInfoID'
      'FROM Pay.InsuranceCONSTinfo RIGHT OUTER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfo_2 ON InsuranceC' +
        'ONSTinfo.FormInfoID = FormsInfo_2.FormInfoID RIGHT OUTER JOIN'
      '                      Pay.FixedCalculated LEFT OUTER JOIN'
      '                      Pay.Interdicts LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfoEmployTypeID ON ' +
        'Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID ON'
      
        '                      FixedCalculated.PersonelNO = Interdicts.Pe' +
        'rsonelNo LEFT OUTER JOIN'
      '                      Pay.PersonelInfo LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfoPersonelState ON' +
        ' PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID ' +
        'ON'
      
        '                      FixedCalculated.PersonelNO = PersonelInfo.' +
        'PersonelNo ON FormsInfo_2.FormInfoID = FixedCalculated.SalaryID'
      ' LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfoOffice ON Interd' +
        'icts.OfficeCode = FormsInfoOffice.FormInfoID AND Interdicts.Pers' +
        'onelNo = FixedCalculated.PersonelNO'
      
        'WHERE     (Interdicts.State < 50) AND (FixedCalculated.ShowListK' +
        'ind = 2)'
      'AND (FixedCalculated.YearID = :YearID)'
      'AND (FixedCalculated.Years = :Years)'
      
        'AND (FixedCalculated.Mounth = :Mounth)AND (FixedCalculated.Archi' +
        'veID = :ArchiveID)'
      
        'And (FixedCalculated.LabelID between :LabelIDFrom  and :LabelIDT' +
        'o )'
      
        'AND (FixedCalculated.PersonelNO BETWEEN :FromPersonelNo AND :ToP' +
        'ersonelNo)'
      
        'AND (FormsInfoPersonelState.InfoID  BETWEEN :PersonelStateFrom A' +
        'ND :PersonelStateTo )'
      
        'AND (FormsInfoEmployTypeID.InfoID   BETWEEN :EmployTypeIDFrom AN' +
        'D :EmployTypeIDTo )'
      ':OfficeCodeFromTo'
      ''
      
        'GROUP BY FixedCalculated.SalaryID, FormsInfo_2.InfoName_L1, Form' +
        'sInfo_2.FormInfoID'
      'ORDER BY FixedCalculated.SalaryID')
    Left = 80
    Top = 164
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
      FieldAlias = 'WageBase'
      FieldName = 'WageBase'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'Wage1'
      FieldName = 'Wage1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'Wage2'
      FieldName = 'Wage2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'Wage3'
      FieldName = 'Wage3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'Wage4'
      FieldName = 'Wage4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'Wage5'
      FieldName = 'Wage5'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'Wage6'
      FieldName = 'Wage6'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'Wage7'
      FieldName = 'Wage7'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'Wage8'
      FieldName = 'Wage8'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'Wage9'
      FieldName = 'Wage9'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'Wage10'
      FieldName = 'Wage10'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'Wage11'
      FieldName = 'Wage11'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'Wage12'
      FieldName = 'Wage12'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'Wage13'
      FieldName = 'Wage13'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'Wage14'
      FieldName = 'Wage14'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'Wage15'
      FieldName = 'Wage15'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'Wage16'
      FieldName = 'Wage16'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'Wage17'
      FieldName = 'Wage17'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = 'Wage18'
      FieldName = 'Wage18'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = 'Wage19'
      FieldName = 'Wage19'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField24: TppField
      FieldAlias = 'Wage20'
      FieldName = 'Wage20'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField25: TppField
      FieldAlias = 'Wage21'
      FieldName = 'Wage21'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField26: TppField
      FieldAlias = 'Wage22'
      FieldName = 'Wage22'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField27: TppField
      FieldAlias = 'Wage23'
      FieldName = 'Wage23'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField28: TppField
      FieldAlias = 'Wage24'
      FieldName = 'Wage24'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField29: TppField
      FieldAlias = 'Wage25'
      FieldName = 'Wage25'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField30: TppField
      FieldAlias = 'Employer'
      FieldName = 'Employer'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField31: TppField
      FieldAlias = 'Employee'
      FieldName = 'Employee'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField32: TppField
      FieldAlias = 'sumPriceEmploye1'
      FieldName = 'sumPriceEmploye1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField33: TppField
      FieldAlias = 'Dec_2_5'
      FieldName = 'Dec_2_5'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField34: TppField
      FieldAlias = 'Dec_2_4'
      FieldName = 'Dec_2_4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField35: TppField
      FieldAlias = 'sum23DecEmploye'
      FieldName = 'sum23DecEmploye'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField36: TppField
      FieldAlias = 'sum23Dec'
      FieldName = 'sum23Dec'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField37: TppField
      FieldAlias = 'SumWage'
      FieldName = 'SumWage'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField38: TppField
      FieldAlias = 'ContainInsourance'
      FieldName = 'ContainInsourance'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField39: TppField
      FieldAlias = 'ContainTax'
      FieldName = 'ContainTax'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField40: TppField
      FieldAlias = 'TaxValue'
      FieldName = 'TaxValue'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField41: TppField
      FieldAlias = 'Dec1'
      FieldName = 'Dec1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField42: TppField
      FieldAlias = 'Dec2'
      FieldName = 'Dec2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField43: TppField
      FieldAlias = 'Dec3'
      FieldName = 'Dec3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField44: TppField
      FieldAlias = 'Dec4'
      FieldName = 'Dec4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField45: TppField
      FieldAlias = 'Dec5'
      FieldName = 'Dec5'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField46: TppField
      FieldAlias = 'Dec6'
      FieldName = 'Dec6'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField47: TppField
      FieldAlias = 'Dec7'
      FieldName = 'Dec7'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField48: TppField
      FieldAlias = 'Dec8'
      FieldName = 'Dec8'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField49: TppField
      FieldAlias = 'Dec9'
      FieldName = 'Dec9'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField50: TppField
      FieldAlias = 'Dec10'
      FieldName = 'Dec10'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 49
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField51: TppField
      FieldAlias = 'Dec11'
      FieldName = 'Dec11'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 50
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField52: TppField
      FieldAlias = 'Dec12'
      FieldName = 'Dec12'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 51
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField53: TppField
      FieldAlias = 'Dec13'
      FieldName = 'Dec13'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 52
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField54: TppField
      FieldAlias = 'Dec14'
      FieldName = 'Dec14'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 53
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField55: TppField
      FieldAlias = 'Dec15'
      FieldName = 'Dec15'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 54
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField56: TppField
      FieldAlias = 'Dec16'
      FieldName = 'Dec16'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 55
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField57: TppField
      FieldAlias = 'Dec17'
      FieldName = 'Dec17'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 56
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField58: TppField
      FieldAlias = 'Dec18'
      FieldName = 'Dec18'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 57
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField59: TppField
      FieldAlias = 'Dec19'
      FieldName = 'Dec19'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 58
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField60: TppField
      FieldAlias = 'Dec20'
      FieldName = 'Dec20'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 59
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField61: TppField
      FieldAlias = 'SumDec'
      FieldName = 'SumDec'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 60
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField62: TppField
      FieldAlias = 'PayableSalary'
      FieldName = 'PayableSalary'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 61
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
    PrinterSetup.PaperName = 'A3'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 420000
    PrinterSetup.PaperSize = 8
    Template.FileName = 
      'D:\Projects\Fara\Salary\Exe\Report\SalaryList4SumOfficeUnLimit.r' +
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
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RefreshTokenLifeSpan = 365
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
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
    Left = 704
    Top = 336
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 43656
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        ParentWidth = True
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 21431
        mmLeft = 0
        mmTop = 21696
        mmWidth = 407300
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
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
        mmLeft = 350838
        mmTop = 22225
        mmWidth = 14817
        BandType = 0
        LayerName = Foreground
      end
      object pplblNighty: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblNighty'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583' '#1608#1575#1581#1583
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
        mmLeft = 351367
        mmTop = 30163
        mmWidth = 12435
        BandType = 0
        LayerName = Foreground
      end
      object w1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'w1'
        OnGetText = AllW_GetText
        Save = True
        AutoSize = False
        Border.mmPadding = 0
        Caption = '1'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 327819
        mmTop = 22225
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object w2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'w2'
        OnGetText = AllW_GetText
        Save = True
        AutoSize = False
        Border.mmPadding = 0
        Caption = '2'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 327819
        mmTop = 29369
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object w4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'w4'
        OnGetText = AllW_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = '4'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 306917
        mmTop = 22490
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object w3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'w3'
        OnGetText = AllW_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' 3'
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
        mmLeft = 327819
        mmTop = 37571
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object w11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'w11'
        OnGetText = AllW_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' 11'
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
        mmLeft = 265378
        mmTop = 29633
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object w10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'w10'
        OnGetText = AllW_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' 10'
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
        mmLeft = 265378
        mmTop = 22490
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object w9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'w9'
        OnGetText = AllW_GetText
        Save = True
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' 9'
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
        mmLeft = 286015
        mmTop = 37571
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object w8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'w8'
        OnGetText = AllW_GetText
        Save = True
        AutoSize = False
        Border.mmPadding = 0
        Caption = '8'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 286015
        mmTop = 29898
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 153459
        mmTop = 27781
        mmWidth = 252942
        BandType = 0
        LayerName = Foreground
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 20638
        mmLeft = 365655
        mmTop = 21696
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 20108
        mmLeft = 347928
        mmTop = 21960
        mmWidth = 2381
        BandType = 0
        LayerName = Foreground
      end
      object ppLine18: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 20108
        mmLeft = 306124
        mmTop = 21696
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
        mmHeight = 20638
        mmLeft = 285221
        mmTop = 21431
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
        mmHeight = 20373
        mmLeft = 264584
        mmTop = 21960
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine21: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 20108
        mmLeft = 243946
        mmTop = 21696
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine22: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line101'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 20373
        mmLeft = 223044
        mmTop = 21696
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine23: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 20108
        mmLeft = 202142
        mmTop = 21960
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
      object ppLabel45: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        OnGetText = ppLabel45GetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 17
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8848
        mmLeft = 168519
        mmTop = 8202
        mmWidth = 74126
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
      object w5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'w5'
        OnGetText = AllW_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' 5'
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
        mmLeft = 306917
        mmTop = 29633
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object w12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'w12'
        OnGetText = AllW_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' 12'
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
        mmLeft = 265378
        mmTop = 37571
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object w6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'w6'
        OnGetText = AllW_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' 6'
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
        mmLeft = 306917
        mmTop = 37571
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object w7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'w7'
        OnGetText = AllW_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' 7'
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
        mmLeft = 286015
        mmTop = 22490
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object w13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'w13'
        OnGetText = AllW_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' 13'
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
        mmLeft = 244740
        mmTop = 22490
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object ppLine34: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line34'
        Border.mmPadding = 0
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 20373
        mmLeft = 105834
        mmTop = 21696
        mmWidth = 2117
        BandType = 0
        LayerName = Foreground
      end
      object ppLine35: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line103'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 20638
        mmLeft = 83873
        mmTop = 21696
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
        mmHeight = 20373
        mmLeft = 62971
        mmTop = 21696
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
        mmHeight = 20373
        mmLeft = 180446
        mmTop = 21696
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine38: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 20373
        mmLeft = 128323
        mmTop = 21960
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label29'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1581#1602#1608#1602' '#1608#1605#1586#1575#1610#1575' '
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
        mmLeft = 158750
        mmTop = 29633
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1582'.'#1583'.'#1587'.'#1603#1575#1585#1601#1585#1605#1575
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
        mmLeft = 129117
        mmTop = 26988
        mmWidth = 23813
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        OnGetText = ppLabel34GetText
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578' '#1581#1602#1608#1602' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 13
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7789
        mmLeft = 381350
        mmTop = 12171
        mmWidth = 21082
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1588#1605#1608#1604' '#1605#1575#1604#1610#1575#1578
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
        mmLeft = 106627
        mmTop = 32015
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel35: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label20'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1588#1605#1608#1604' '#1576#1610#1605#1607
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
        mmLeft = 106627
        mmTop = 37042
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object d1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'd1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' '#1605#1575#1604#1610#1575#1578
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
        mmLeft = 85196
        mmTop = 22754
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object d6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'd6'
        OnGetText = AllD_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' 5'
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
        mmLeft = 63500
        mmTop = 36777
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object d7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'd7'
        OnGetText = AllD_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' 6'
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
        mmLeft = 42598
        mmTop = 22754
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object d8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'd8'
        OnGetText = AllD_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' 7'
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
        mmLeft = 42598
        mmTop = 29369
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object d3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'd3'
        OnGetText = AllD_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' 2'
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
        mmLeft = 84931
        mmTop = 36248
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object d4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'd4'
        OnGetText = AllD_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' 3'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 63765
        mmTop = 22754
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object d9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'd9'
        OnGetText = AllD_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' 8'
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
        mmLeft = 42598
        mmTop = 36777
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object d5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'd5'
        OnGetText = AllD_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' 4'
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
        mmLeft = 63500
        mmTop = 29369
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object d10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'd10'
        OnGetText = AllD_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' 9'
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
        mmLeft = 23019
        mmTop = 22225
        mmWidth = 18256
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 20373
        mmLeft = 41804
        mmTop = 21696
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label22'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1587#1575#1610#1585' '#1603#1587#1608#1585#1575#1578
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
        mmLeft = 23019
        mmTop = 29369
        mmWidth = 18256
        BandType = 0
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line18'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 20373
        mmLeft = 21960
        mmTop = 21696
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label23'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1603#1587#1608#1585#1575#1578
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
        mmLeft = 23813
        mmTop = 36777
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label24'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1582#1575#1604#1589
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
        mmLeft = 0
        mmTop = 23283
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label26'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1662#1585#1583#1575#1582#1578#1610
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
        mmLeft = 0
        mmTop = 28840
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppLine39: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line40'
        Border.mmPadding = 0
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 0
        mmTop = 39952
        mmWidth = 407300
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
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
        mmHeight = 4233
        mmLeft = 156634
        mmTop = 36248
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label19'
        OnGetText = AllW_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' 14'
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
        mmLeft = 244740
        mmTop = 29633
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label21'
        OnGetText = AllW_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' 15'
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
        mmLeft = 244740
        mmTop = 37571
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label28'
        OnGetText = AllW_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' 16'
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
        mmLeft = 224103
        mmTop = 22225
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label30'
        OnGetText = AllW_GetText
        Save = True
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' 17'
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
        mmLeft = 224103
        mmTop = 29104
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'w101'
        OnGetText = AllW_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' 18'
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
        mmLeft = 224103
        mmTop = 37571
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label31'
        OnGetText = AllW_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' 19'
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
        mmLeft = 203200
        mmTop = 22490
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label32'
        OnGetText = AllW_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' 20'
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
        mmLeft = 203200
        mmTop = 29369
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label33'
        OnGetText = AllW_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' 21'
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
        mmLeft = 203200
        mmTop = 37571
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label34'
        OnGetText = AllW_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' 22'
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
        mmLeft = 182034
        mmTop = 22225
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label35'
        OnGetText = AllW_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' 23'
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
        mmLeft = 182034
        mmTop = 29369
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label37'
        OnGetText = AllW_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' 24'
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
        mmLeft = 182034
        mmTop = 37571
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label38'
        OnGetText = AllW_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' 25'
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
        mmLeft = 159544
        mmTop = 22225
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line95'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 21960
        mmTop = 34925
        mmWidth = 83873
        BandType = 0
        LayerName = Foreground
      end
      object ppLine81: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line105'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 20108
        mmLeft = 327026
        mmTop = 21960
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line115'
        Border.mmPadding = 0
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 20108
        mmLeft = 153194
        mmTop = 21960
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label79'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1576#1610#1605#1607' '
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
        mmLeft = 85196
        mmTop = 29104
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1608#1575#1581#1583' '
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
        mmLeft = 381530
        mmTop = 20638
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1582'.'#1583'.'#1587'.'#1603#1575#1585#1605#1606#1583
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
        mmLeft = 129117
        mmTop = 21960
        mmWidth = 23813
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel36: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1582'.'#1583#1585#1605#1575#1606#1610
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
        mmLeft = 106627
        mmTop = 21696
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel37: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label25'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1603#1604' '#1576#1610#1605#1607
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
        mmLeft = 106627
        mmTop = 26723
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel38: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblNighty1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1662#1575#1610#1607
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
        mmLeft = 351897
        mmTop = 36777
        mmWidth = 12435
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel39: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label39'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1576#1575#1586#1606#1588#1587#1578#1711#1610' '#1603#1575#1585#1605#1606#1583
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
        mmLeft = 129117
        mmTop = 37042
        mmWidth = 23813
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel40: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label40'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1576#1575#1586#1606#1588#1587#1578#1711#1610' '#1603#1575#1585#1601#1585#1605#1575
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
        mmLeft = 129117
        mmTop = 32015
        mmWidth = 23813
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line41'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 21960
        mmTop = 27781
        mmWidth = 83873
        BandType = 0
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line42'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 153723
        mmTop = 35454
        mmWidth = 252678
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand2: TppDetailBand
      Border.mmPadding = 0
      PrintCount = 10
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 19844
      mmPrintPosition = 0
      object dw1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw1'
        Border.mmPadding = 0
        DataField = 'Wage1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4763
        mmLeft = 328084
        mmTop = 794
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object dw2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw2'
        Border.mmPadding = 0
        DataField = 'Wage2'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5556
        mmLeft = 328084
        mmTop = 6879
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object dw4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw4'
        Border.mmPadding = 0
        DataField = 'Wage4'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5556
        mmLeft = 307182
        mmTop = 265
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object dw3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw3'
        Border.mmPadding = 0
        DataField = 'Wage3'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4763
        mmLeft = 328084
        mmTop = 13494
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object dw7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw7'
        Border.mmPadding = 0
        DataField = 'Wage7'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 285751
        mmTop = 794
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object dw6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw6'
        Border.mmPadding = 0
        DataField = 'Wage6'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 307182
        mmTop = 13229
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object dw5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw5'
        Border.mmPadding = 0
        DataField = 'Wage5'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 307182
        mmTop = 6879
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object dw8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw8'
        Border.mmPadding = 0
        DataField = 'Wage8'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 285751
        mmTop = 7144
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object dw9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw9'
        Border.mmPadding = 0
        DataField = 'Wage9'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 285751
        mmTop = 13229
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object dw11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw11'
        Border.mmPadding = 0
        DataField = 'Wage11'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 265113
        mmTop = 7144
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object dw10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw10'
        Border.mmPadding = 0
        DataField = 'Wage10'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 265378
        mmTop = 265
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object dw13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw13'
        Border.mmPadding = 0
        DataField = 'Wage13'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 244475
        mmTop = 529
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object dw12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw12'
        Border.mmPadding = 0
        DataField = 'Wage12'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 265113
        mmTop = 13229
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 19844
        mmLeft = 153194
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line15'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 19844
        mmLeft = 180446
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line19'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 19844
        mmLeft = 202407
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line20'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 19844
        mmLeft = 223044
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
        mmHeight = 19844
        mmLeft = 365390
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
        mmHeight = 19844
        mmLeft = 405607
        mmTop = 0
        mmWidth = 1588
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
        mmHeight = 19844
        mmLeft = 0
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'OfficeName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 353219
        mmTop = 0
        mmWidth = 11377
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'InfoID'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 352955
        mmTop = 6615
        mmWidth = 11642
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'ContainTax'
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
        mmHeight = 5556
        mmLeft = 106627
        mmTop = 9525
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'ContainInsourance'
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
        mmHeight = 5027
        mmLeft = 106627
        mmTop = 14817
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object dd1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dd1'
        Border.mmPadding = 0
        DataField = 'TaxValue'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 85725
        mmTop = 794
        mmWidth = 20108
        BandType = 4
        LayerName = Foreground
      end
      object dd6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dd6'
        Border.mmPadding = 0
        DataField = 'Dec5'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4498
        mmLeft = 63765
        mmTop = 13758
        mmWidth = 20108
        BandType = 4
        LayerName = Foreground
      end
      object ppLine26: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line26'
        Border.mmPadding = 0
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 18785
        mmWidth = 407300
        BandType = 4
        LayerName = Foreground
      end
      object dd4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dd4'
        Border.mmPadding = 0
        DataField = 'Dec3'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4498
        mmLeft = 64029
        mmTop = 1058
        mmWidth = 20108
        BandType = 4
        LayerName = Foreground
      end
      object dd3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dd3'
        Border.mmPadding = 0
        DataField = 'Dec20'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4763
        mmLeft = 85990
        mmTop = 13758
        mmWidth = 20108
        BandType = 4
        LayerName = Foreground
      end
      object dd7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dd7'
        Border.mmPadding = 0
        DataField = 'Dec6'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4763
        mmLeft = 42598
        mmTop = 1058
        mmWidth = 20108
        BandType = 4
        LayerName = Foreground
      end
      object dd10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dd10'
        Border.mmPadding = 0
        DataField = 'Dec9'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4763
        mmLeft = 23019
        mmTop = 794
        mmWidth = 18256
        BandType = 4
        LayerName = Foreground
      end
      object dd9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dd9'
        Border.mmPadding = 0
        DataField = 'Dec8'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4498
        mmLeft = 42598
        mmTop = 13494
        mmWidth = 20108
        BandType = 4
        LayerName = Foreground
      end
      object dd8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dd8'
        Border.mmPadding = 0
        DataField = 'Dec7'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4498
        mmLeft = 42598
        mmTop = 7408
        mmWidth = 20108
        BandType = 4
        LayerName = Foreground
      end
      object ppLine27: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line27'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 19844
        mmLeft = 62971
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
        mmHeight = 19844
        mmLeft = 83873
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
        mmHeight = 19844
        mmLeft = 105834
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
        mmHeight = 19844
        mmLeft = 128323
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object dd5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dd5'
        Border.mmPadding = 0
        DataField = 'Dec4'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4498
        mmLeft = 64029
        mmTop = 7673
        mmWidth = 20108
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
        mmHeight = 19844
        mmLeft = 41540
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
        mmHeight = 19844
        mmLeft = 21960
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'PayableSalary'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 13
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 8340
        mmLeft = 2381
        mmTop = 6350
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'sum23Dec'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 161396
        mmTop = 12965
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'Employer'
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
        mmLeft = 129117
        mmTop = 4498
        mmWidth = 23813
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'SumDec'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 23019
        mmTop = 13758
        mmWidth = 18256
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = 'Wage14'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4763
        mmLeft = 244475
        mmTop = 7408
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object ppLine50: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line83'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 19050
        mmLeft = 347928
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine51: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line96'
        Border.mmPadding = 0
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 18785
        mmWidth = 407300
        BandType = 4
        LayerName = Foreground
      end
      object ppLine52: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line97'
        Border.mmPadding = 0
        ParentWidth = True
        Position = lpBottom
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 18785
        mmWidth = 407300
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        Border.mmPadding = 0
        DataField = 'Wage15'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 244475
        mmTop = 13229
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        Border.mmPadding = 0
        DataField = 'Wage21'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 202936
        mmTop = 13229
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText15'
        Border.mmPadding = 0
        DataField = 'Wage16'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4763
        mmLeft = 223838
        mmTop = 794
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText16'
        Border.mmPadding = 0
        DataField = 'Wage17'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 223838
        mmTop = 7144
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText17'
        Border.mmPadding = 0
        DataField = 'Wage22'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 180975
        mmTop = 529
        mmWidth = 20638
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText18'
        Border.mmPadding = 0
        DataField = 'Wage19'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 202936
        mmTop = 265
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText19'
        Border.mmPadding = 0
        DataField = 'Wage18'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 223838
        mmTop = 13229
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText21'
        Border.mmPadding = 0
        DataField = 'Wage20'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 202936
        mmTop = 7144
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object ppLine79: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line99'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 19844
        mmLeft = 327026
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine82: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line106'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 19050
        mmLeft = 306124
        mmTop = 0
        mmWidth = 3969
        BandType = 4
        LayerName = Foreground
      end
      object ppLine84: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line108'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 19050
        mmLeft = 285221
        mmTop = 529
        mmWidth = 3969
        BandType = 4
        LayerName = Foreground
      end
      object ppLine85: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line109'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 19050
        mmLeft = 264584
        mmTop = 0
        mmWidth = 3969
        BandType = 4
        LayerName = Foreground
      end
      object ppLine86: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line110'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 19050
        mmLeft = 243946
        mmTop = 0
        mmWidth = 3969
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText20'
        Border.mmPadding = 0
        DataField = 'Wage23'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 181240
        mmTop = 7144
        mmWidth = 20638
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText22'
        Border.mmPadding = 0
        DataField = 'Wage24'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 181240
        mmTop = 13229
        mmWidth = 20638
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText23'
        Border.mmPadding = 0
        DataField = 'Wage25'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 158486
        mmTop = 794
        mmWidth = 20638
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText24'
        Border.mmPadding = 0
        DataField = 'SumWage'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 158221
        mmTop = 6879
        mmWidth = 20638
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText25'
        Border.mmPadding = 0
        DataField = 'Dec1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 85461
        mmTop = 7408
        mmWidth = 20373
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        Border.mmPadding = 0
        DataField = 'OfficeName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7144
        mmLeft = 365919
        mmTop = 10054
        mmWidth = 40481
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'sumPriceEmploye1'
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
        mmLeft = 106627
        mmTop = 0
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'sum23DecEmploye'
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
        mmLeft = 106627
        mmTop = 4763
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText26: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText26'
        Border.mmPadding = 0
        DataField = 'Employee'
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
        mmLeft = 129117
        mmTop = 0
        mmWidth = 23813
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText27'
        Border.mmPadding = 0
        DataField = 'WageBase'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 348457
        mmTop = 12700
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText28'
        Border.mmPadding = 0
        DataField = 'Dec_2_4'
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
        mmLeft = 129117
        mmTop = 13758
        mmWidth = 23813
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText29: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText29'
        Border.mmPadding = 0
        DataField = 'Dec_2_5'
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
        mmLeft = 129117
        mmTop = 8467
        mmWidth = 23813
        BandType = 4
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line46'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 153459
        mmTop = 5821
        mmWidth = 211932
        BandType = 4
        LayerName = Foreground
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line52'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 153459
        mmTop = 13494
        mmWidth = 211932
        BandType = 4
        LayerName = Foreground
      end
      object ppLine36: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line54'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 21960
        mmTop = 6085
        mmWidth = 83873
        BandType = 4
        LayerName = Foreground
      end
      object ppLine40: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line63'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 21960
        mmTop = 13229
        mmWidth = 83873
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 30427
      mmPrintPosition = 0
      object ppRegion1: TppRegion
        DesignLayer = ppDesignLayer1
        UserName = 'Region1'
        Caption = 'Region1'
        Visible = False
        mmHeight = 15346
        mmLeft = 0
        mmTop = 1323
        mmWidth = 25400
        BandType = 8
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppRecFooterLine: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line50'
          Border.mmPadding = 0
          ParentWidth = True
          Position = lpBottom
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 0
          mmTop = 1058
          mmWidth = 25400
          BandType = 8
          LayerName = Foreground
        end
        object TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line31'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14817
          mmLeft = 213428
          mmTop = 2381
          mmWidth = 1000
          BandType = 8
          LayerName = Foreground
        end
        object TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line75'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14817
          mmLeft = 213428
          mmTop = 2381
          mmWidth = 1000
          BandType = 8
          LayerName = Foreground
        end
        object TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line21'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14817
          mmLeft = 213428
          mmTop = 2381
          mmWidth = 1000
          BandType = 8
          LayerName = Foreground
        end
        object TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line89'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14817
          mmLeft = 213428
          mmTop = 2381
          mmWidth = 1000
          BandType = 8
          LayerName = Foreground
        end
        object TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line14'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14817
          mmLeft = 213428
          mmTop = 2381
          mmWidth = 1000
          BandType = 8
          LayerName = Foreground
        end
        object TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line3'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14817
          mmLeft = 213428
          mmTop = 2381
          mmWidth = 1000
          BandType = 8
          LayerName = Foreground
        end
        object TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line122'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14817
          mmLeft = 205195
          mmTop = 2381
          mmWidth = 1000
          BandType = 8
          LayerName = Foreground
        end
        object TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line128'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14817
          mmLeft = 205195
          mmTop = 2381
          mmWidth = 1000
          BandType = 8
          LayerName = Foreground
        end
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = #1605#1587#1574#1608#1604' '#1662#1585#1583#1575#1582#1578' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7144
        mmLeft = 268553
        mmTop = 7144
        mmWidth = 24871
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = #1605#1583#1610#1600#1600#1600#1600#1600#1600#1585' '#1605#1575#1604#1600#1600#1600#1600#1610' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7144
        mmLeft = 162719
        mmTop = 7144
        mmWidth = 30956
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = #1605#1600#1600#1583#1610#1600#1600#1600#1585' '#1593#1575' '#1605#1600#1600#1600#1600#1604' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7197
        mmLeft = 68231
        mmTop = 7144
        mmWidth = 30988
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = #1585#1574#1610#1587' '#1575#1605#1608#1585' '#1575#1583#1575#1585#1610' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7144
        mmLeft = 366184
        mmTop = 7144
        mmWidth = 27517
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 46302
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 26194
        mmLeft = 0
        mmTop = 0
        mmWidth = 407195
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel49: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label27'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1603#1604
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
        mmLeft = 388145
        mmTop = 1323
        mmWidth = 15081
        BandType = 7
        LayerName = Foreground
      end
      object ppLine42: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line43'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 25400
        mmLeft = 83873
        mmTop = 529
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppLine43: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line44'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 25135
        mmLeft = 105834
        mmTop = 529
        mmWidth = 1323
        BandType = 7
        LayerName = Foreground
      end
      object ppLine44: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line45'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 24606
        mmLeft = 128323
        mmTop = 794
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppLine47: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line47'
        Border.mmPadding = 0
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 25135
        mmLeft = 153194
        mmTop = 0
        mmWidth = 794
        BandType = 7
        LayerName = Foreground
      end
      object ppLine48: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line48'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 24606
        mmLeft = 180446
        mmTop = 529
        mmWidth = 1588
        BandType = 7
        LayerName = Foreground
      end
      object ppLine49: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line49'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 25135
        mmLeft = 202407
        mmTop = 265
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
        mmHeight = 24606
        mmLeft = 223044
        mmTop = 794
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppLine54: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line104'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 24606
        mmLeft = 243946
        mmTop = 794
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppLine55: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line55'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 25135
        mmLeft = 264584
        mmTop = 265
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppLine56: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line56'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 24871
        mmLeft = 285221
        mmTop = 529
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppLine57: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line57'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 25135
        mmLeft = 306124
        mmTop = 529
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppLine58: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line58'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 24871
        mmLeft = 327819
        mmTop = 265
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
        mmHeight = 25665
        mmLeft = 21960
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
        mmHeight = 25929
        mmLeft = 41540
        mmTop = 529
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppLine62: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line62'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 24871
        mmLeft = 62971
        mmTop = 529
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'PayableSalary'
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
        mmHeight = 6435
        mmLeft = 0
        mmTop = 10583
        mmWidth = 22490
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'InfoID'
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
        mmHeight = 5821
        mmLeft = 348722
        mmTop = 8996
        mmWidth = 16404
        BandType = 7
        LayerName = Foreground
      end
      object sw_col1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col1'
        Border.mmPadding = 0
        DataField = 'Wage1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 327819
        mmTop = 794
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground
      end
      object sw_col2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col2'
        Border.mmPadding = 0
        DataField = 'Wage2'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 327819
        mmTop = 8731
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground
      end
      object sw_col9: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col9'
        Border.mmPadding = 0
        DataField = 'Wage9'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 286015
        mmTop = 18785
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground
      end
      object sw_col8: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col8'
        Border.mmPadding = 0
        DataField = 'Wage8'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 286015
        mmTop = 8731
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground
      end
      object sw_col12: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col12'
        Border.mmPadding = 0
        DataField = 'Wage12'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 265378
        mmTop = 18785
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground
      end
      object sw_col11: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col11'
        Border.mmPadding = 0
        DataField = 'Wage11'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 265378
        mmTop = 8731
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground
      end
      object sw_col10: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col10'
        Border.mmPadding = 0
        DataField = 'Wage10'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 265378
        mmTop = 1058
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground
      end
      object sw_col5: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col5'
        Border.mmPadding = 0
        DataField = 'Wage5'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 306917
        mmTop = 8731
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground
      end
      object sw_col4: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col4'
        Border.mmPadding = 0
        DataField = 'Wage4'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 306917
        mmTop = 794
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground
      end
      object sw_col3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col3'
        Border.mmPadding = 0
        DataField = 'Wage3'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 327819
        mmTop = 18785
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground
      end
      object sw_col7: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col7'
        Border.mmPadding = 0
        DataField = 'Wage7'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 286015
        mmTop = 1058
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground
      end
      object sw_col6: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col6'
        Border.mmPadding = 0
        DataField = 'Wage6'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 306917
        mmTop = 18785
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground
      end
      object sw_col14: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col14'
        Border.mmPadding = 0
        DataField = 'Wage14'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 244740
        mmTop = 8731
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground
      end
      object sw_col13: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col13'
        Border.mmPadding = 0
        DataField = 'Wage13'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 244740
        mmTop = 1323
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc4: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = '_TaxInvolved1'
        Border.mmPadding = 0
        DataField = 'SumWage'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 156634
        mmTop = 8467
        mmWidth = 22225
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1593#1583#1575#1583' '#1662#1585#1587#1606#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 388145
        mmTop = 8202
        mmWidth = 15610
        BandType = 7
        LayerName = Foreground
      end
      object ppRegion2: TppRegion
        DesignLayer = ppDesignLayer1
        UserName = 'Region2'
        Caption = 'Region2'
        Visible = False
        mmHeight = 15875
        mmLeft = 794
        mmTop = 26194
        mmWidth = 63236
        BandType = 7
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppRecFooterLine2: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line501'
          Border.mmPadding = 0
          ParentWidth = True
          Position = lpBottom
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 794
          mmTop = 25136
          mmWidth = 63236
          BandType = 7
          LayerName = Foreground
        end
        object TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line51'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 15081
          mmLeft = 214222
          mmTop = 26988
          mmWidth = 1000
          BandType = 7
          LayerName = Foreground
        end
        object TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line80'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 15081
          mmLeft = 214222
          mmTop = 26988
          mmWidth = 1000
          BandType = 7
          LayerName = Foreground
        end
        object TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line86'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 15081
          mmLeft = 214222
          mmTop = 26988
          mmWidth = 1000
          BandType = 7
          LayerName = Foreground
        end
        object TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line92'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 15081
          mmLeft = 214222
          mmTop = 26988
          mmWidth = 1000
          BandType = 7
          LayerName = Foreground
        end
        object TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line112'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 15081
          mmLeft = 214222
          mmTop = 26988
          mmWidth = 1000
          BandType = 7
          LayerName = Foreground
        end
        object TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line116'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 15081
          mmLeft = 214222
          mmTop = 26988
          mmWidth = 1000
          BandType = 7
          LayerName = Foreground
        end
        object TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line125'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 15081
          mmLeft = 205724
          mmTop = 26988
          mmWidth = 1000
          BandType = 7
          LayerName = Foreground
        end
        object TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line131'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 15081
          mmLeft = 205724
          mmTop = 26988
          mmWidth = 1000
          BandType = 7
          LayerName = Foreground
        end
      end
      object sd_col9: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sd_col9'
        Border.mmPadding = 0
        DataField = 'Dec8'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 42333
        mmTop = 18785
        mmWidth = 20108
        BandType = 7
        LayerName = Foreground
      end
      object sd_col8: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sd_col8'
        Border.mmPadding = 0
        DataField = 'Dec7'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 42069
        mmTop = 8996
        mmWidth = 20373
        BandType = 7
        LayerName = Foreground
      end
      object sd_col7: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sd_col7'
        Border.mmPadding = 0
        DataField = 'Dec6'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 42333
        mmTop = 1588
        mmWidth = 20108
        BandType = 7
        LayerName = Foreground
      end
      object sd_col6: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc101'
        Border.mmPadding = 0
        DataField = 'Dec5'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 63500
        mmTop = 18785
        mmWidth = 21431
        BandType = 7
        LayerName = Foreground
      end
      object sd_col1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sd_col1'
        Border.mmPadding = 0
        DataField = 'TaxValue'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 85461
        mmTop = 1852
        mmWidth = 20108
        BandType = 7
        LayerName = Foreground
      end
      object sd_col3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sd_col3'
        Border.mmPadding = 0
        DataField = 'Dec2'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 85990
        mmTop = 19050
        mmWidth = 18785
        BandType = 7
        LayerName = Foreground
      end
      object sd_col4: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sd_col4'
        Border.mmPadding = 0
        DataField = 'Dec3'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 64029
        mmTop = 1588
        mmWidth = 20638
        BandType = 7
        LayerName = Foreground
      end
      object sd_col2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sd_col2'
        Border.mmPadding = 0
        DataField = 'Dec1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 85196
        mmTop = 8467
        mmWidth = 19844
        BandType = 7
        LayerName = Foreground
      end
      object sd_col5: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sd_col5'
        Border.mmPadding = 0
        DataField = 'Dec4'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 63765
        mmTop = 8996
        mmWidth = 20902
        BandType = 7
        LayerName = Foreground
      end
      object _TaxInvolved: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = '_TaxInvolved'
        Border.mmPadding = 0
        DataField = 'ContainTax'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 106627
        mmTop = 12700
        mmWidth = 21431
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc5: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc5'
        Border.mmPadding = 0
        DataField = 'SumDec'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 24077
        mmTop = 18785
        mmWidth = 15346
        BandType = 7
        LayerName = Foreground
      end
      object _InsInvolved: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = '_InsInvolved'
        Border.mmPadding = 0
        DataField = 'ContainInsourance'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 106627
        mmTop = 19579
        mmWidth = 21431
        BandType = 7
        LayerName = Foreground
      end
      object sd_col10: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc301'
        Border.mmPadding = 0
        DataField = 'Dec9'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 23283
        mmTop = 1588
        mmWidth = 17463
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc7: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc7'
        Border.mmPadding = 0
        DataField = 'Wage15'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 244740
        mmTop = 18785
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc8: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc8'
        Border.mmPadding = 0
        DataField = 'Wage20'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 202407
        mmTop = 9260
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc9: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc9'
        Border.mmPadding = 0
        DataField = 'Wage16'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 224103
        mmTop = 1323
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc10: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc10'
        Border.mmPadding = 0
        DataField = 'Wage18'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 224103
        mmTop = 18785
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc11: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc11'
        Border.mmPadding = 0
        DataField = 'Wage19'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 202936
        mmTop = 1058
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc12: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc12'
        Border.mmPadding = 0
        DataField = 'Wage17'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 224103
        mmTop = 8731
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc13: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc13'
        Border.mmPadding = 0
        DataField = 'Wage21'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 202671
        mmTop = 18256
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc6: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc6'
        Border.mmPadding = 0
        DataField = 'Wage19'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 182563
        mmTop = 1058
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc14: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc14'
        Border.mmPadding = 0
        DataField = 'Wage20'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 182298
        mmTop = 8996
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc15: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc15'
        Border.mmPadding = 0
        DataField = 'Wage21'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 182298
        mmTop = 17992
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc16: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc16'
        Border.mmPadding = 0
        DataField = 'Wage25'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 158486
        mmTop = 1058
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        Border.mmPadding = 0
        DataField = 'sum23Dec'
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
        mmLeft = 156369
        mmTop = 16933
        mmWidth = 22490
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc17: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc17'
        Border.mmPadding = 0
        DataField = 'sumPriceEmploye1'
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
        mmLeft = 106627
        mmTop = 0
        mmWidth = 21431
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = #1605#1583#1610#1600#1600#1600#1600#1600#1600#1585' '#1605#1575#1604#1600#1600#1600#1600#1610' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7144
        mmLeft = 166423
        mmTop = 33338
        mmWidth = 30956
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = #1605#1600#1600#1583#1610#1600#1600#1600#1585' '#1593#1575' '#1605#1600#1600#1600#1600#1604' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 70379
        mmTop = 34396
        mmWidth = 30956
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = #1605#1587#1574#1608#1604' '#1662#1585#1583#1575#1582#1578' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7144
        mmLeft = 268553
        mmTop = 33338
        mmWidth = 24871
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        Border.mmPadding = 0
        Caption = #1585#1574#1610#1587' '#1575#1605#1608#1585' '#1575#1583#1575#1585#1610' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7144
        mmLeft = 367507
        mmTop = 33338
        mmWidth = 27517
        BandType = 7
        LayerName = Foreground
      end
      object ppLine66: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line66'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 25135
        mmLeft = 347928
        mmTop = 529
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc18: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc18'
        Border.mmPadding = 0
        DataField = 'Employee'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 129117
        mmTop = 0
        mmWidth = 23813
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc19: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc19'
        Border.mmPadding = 0
        DataField = 'Employer'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 129117
        mmTop = 6350
        mmWidth = 23813
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc20: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc20'
        Border.mmPadding = 0
        DataField = 'sum23DecEmploye'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 106627
        mmTop = 6350
        mmWidth = 21431
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc21: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc21'
        Border.mmPadding = 0
        DataField = 'WageBase'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 348722
        mmTop = 19050
        mmWidth = 16404
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc22: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc22'
        Border.mmPadding = 0
        DataField = 'Dec_2_5'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 129117
        mmTop = 12700
        mmWidth = 23813
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc23: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc23'
        Border.mmPadding = 0
        DataField = 'Dec_2_4'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 129117
        mmTop = 19579
        mmWidth = 23813
        BandType = 7
        LayerName = Foreground
      end
      object ppLine25: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line25'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 153459
        mmTop = 7408
        mmWidth = 211932
        BandType = 7
        LayerName = Foreground
      end
      object ppLine41: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line59'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 153459
        mmTop = 15081
        mmWidth = 211932
        BandType = 7
        LayerName = Foreground
      end
      object ppLine45: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line64'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 21960
        mmTop = 8467
        mmWidth = 83873
        BandType = 7
        LayerName = Foreground
      end
      object ppLine46: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line65'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 21960
        mmTop = 15610
        mmWidth = 83873
        BandType = 7
        LayerName = Foreground
      end
      object ppLine59: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 25135
        mmLeft = 365390
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
  object PopList4Print: TPopupMenu
    Left = 632
    Top = 341
    object AllClick: TMenuItem
      Caption = #1575#1586' Hint '#1608' Name '#1575#1587#1578#1601#1575#1583#1607' '#1588#1583#1607
      Visible = False
      OnClick = AllClickClick
    end
    object SalaryList4SumOfficeUnLimit: TMenuItem
      Caption = #1670#1575#1662' '
      OnClick = AllClickClick
    end
  end
  object ppDBPipeline2: TppDBPipeline
    OpenDataSource = False
    UserName = 'DBPipeline2'
    Left = 704
    Top = 253
  end
  object qrysalary: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qrysalaryAfterOpen
    OnCalcFields = qrysalaryCalcFields
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     FormsInfoOffice.InfoID, FormsInfoOffice.InfoName_L1 A' +
        'S OfficeName, SUM(Functions_Sum.FunctionDay) AS FunctionDay, '
      
        '                      SUM(Functions_Sum.FunctionTime) AS Functio' +
        'nTime, SUM(FunctionItemsList_1._Amount1) AS _Amount1, SUM(Functi' +
        'onItemsList_1._Amount2) '
      
        '                      AS _Amount2, SUM(FunctionItemsList_1._Amou' +
        'nt3) AS _Amount3, SUM(FunctionItemsList_1._Amount4) AS _Amount4,' +
        ' '
      
        '                      SUM(FunctionItemsList_1._Amount5) AS _Amou' +
        'nt5, SUM(CASE salaryid WHEN 359 THEN price ELSE 0 END) AS Wage1,' +
        ' '
      
        '                      SUM(CASE salaryid WHEN 600 THEN price ELSE' +
        ' 0 END) AS Wage2, SUM(CASE salaryid WHEN 601 THEN price ELSE 0 E' +
        'ND) AS Wage3, '
      
        '                      SUM(CASE salaryid WHEN 602 THEN price ELSE' +
        ' 0 END) AS Wage4, SUM(CASE salaryid WHEN 603 THEN price ELSE 0 E' +
        'ND) AS Wage5, '
      
        '                      SUM(CASE salaryid WHEN 604 THEN price ELSE' +
        ' 0 END) AS Wage6, SUM(CASE salaryid WHEN 606 THEN price ELSE 0 E' +
        'ND) AS Wage7, '
      
        '                      SUM(CASE salaryid WHEN 607 THEN price ELSE' +
        ' 0 END) AS Wage8, SUM(CASE salaryid WHEN 626 THEN price ELSE 0 E' +
        'ND) AS Wage9, '
      
        '                      SUM(CASE salaryid WHEN 627 THEN price ELSE' +
        ' 0 END) AS Wage10, SUM(CASE salaryid WHEN 629 THEN price ELSE 0 ' +
        'END) AS Wage11, '
      
        '                      SUM(CASE salaryid WHEN 632 THEN price ELSE' +
        ' 0 END) AS Wage12, SUM(CASE salaryid WHEN 634 THEN price ELSE 0 ' +
        'END) AS Wage13, '
      
        '                      SUM(CASE salaryid WHEN 635 THEN price ELSE' +
        ' 0 END) AS Wage14, SUM(CASE salaryid WHEN 637 THEN price ELSE 0 ' +
        'END) AS Wage15, '
      
        '                      SUM(CASE salaryid WHEN 638 THEN price ELSE' +
        ' 0 END) AS Wage16, SUM(CASE salaryid WHEN 639 THEN price ELSE 0 ' +
        'END) AS Wage17, '
      
        '                      SUM(CASE salaryid WHEN 640 THEN price ELSE' +
        ' 0 END) AS Wage18, SUM(CASE salaryid WHEN 642 THEN price ELSE 0 ' +
        'END) AS Wage19, '
      
        '                      SUM(CASE salaryid WHEN 699 THEN price ELSE' +
        ' 0 END) AS Wage20, SUM(CASE salaryid WHEN 702 THEN price ELSE 0 ' +
        'END) AS Wage21, '
      
        '                      SUM(CASE salaryid WHEN 703 THEN price ELSE' +
        ' 0 END) AS Wage22, SUM(CASE salaryid WHEN 705 THEN price ELSE 0 ' +
        'END) AS Wage23, '
      
        '                      SUM(CASE salaryid WHEN 706 THEN price ELSE' +
        ' 0 END) AS Wage24, '
      
        '                      SUM(CASE WHEN salaryid >= 763 THEN CASE Sh' +
        'owlistKind WHEN 1 THEN price ELSE 0 END ELSE 0 END) AS Wage25, '
      
        '                      SUM(CASE ShowlistKind WHEN 1 THEN price EL' +
        'SE 0 END) AS SumWage, SUM(CASE WHEN (ShowlistKind IN (2) AND bed' +
        'bes = 1) '
      
        '                      THEN price ELSE 0 END) AS sum23Dec2, SUM(C' +
        'ASE WHEN (ShowlistKind IN (4) AND bedbes = 1) THEN price ELSE 0 ' +
        'END) AS sum23Dec44, '
      
        '                      SUM(CASE WHEN (ShowlistKind IN (15) AND be' +
        'dbes = 1) THEN price ELSE 0 END) AS sum23Dec15, SUM(CASE WHEN (S' +
        'howlistKind IN (14) AND '
      
        '                      bedbes = 1) THEN price ELSE 0 END) AS sum2' +
        '3Dec14, SUM(CASE WHEN (ShowlistKind IN (2, 4, 15, 14) AND bedbes' +
        ' = 1) THEN price ELSE 0 END) '
      
        '                      AS sum23Dec, ISNULL(SUM(derivedtbl_1.Emplo' +
        'ye1), 0) AS Employe1, ISNULL(SUM(derivedtbl_1.Employe1), 0) '
      
        '                      + SUM(CASE WHEN (ShowlistKind IN (2, 4, 15' +
        ', 14) AND bedbes = 1) THEN price ELSE 0 END) AS Employe1sum23Dec' +
        ', '
      
        '                      SUM(CASE ShowlistKind WHEN 3 THEN price EL' +
        'SE 0 END) AS ContainInsourance, SUM(CASE WHEN (ShowlistKind = 11' +
        ' AND bedbes = 0) '
      
        '                      THEN price ELSE 0 END) AS ContainTax, SUM(' +
        'CASE WHEN (ShowlistKind = 11 AND bedbes = 2) THEN price ELSE 0 E' +
        'ND) AS TaxValue, '
      
        '                      SUM(CASE WHEN salaryid = 44 AND ShowlistKi' +
        'nd = 2 THEN price ELSE 0 END) AS dec1, SUM(CASE WHEN salaryid = ' +
        '46 AND '
      
        '                      ShowlistKind = 2 THEN price ELSE 0 END) AS' +
        ' dec2, SUM(CASE WHEN salaryid = 715 AND ShowlistKind = 2 THEN pr' +
        'ice ELSE 0 END) AS dec3, '
      
        '                      SUM(CASE WHEN salaryid = 716 AND ShowlistK' +
        'ind = 2 THEN price ELSE 0 END) AS dec4, SUM(CASE WHEN salaryid =' +
        ' 873 AND '
      
        '                      ShowlistKind = 2 THEN price ELSE 0 END) AS' +
        ' dec5, SUM(CASE WHEN salaryid = 983 AND ShowlistKind = 2 THEN pr' +
        'ice ELSE 0 END) AS dec6, '
      
        '                      SUM(CASE WHEN salaryid = 984 AND ShowlistK' +
        'ind = 2 THEN price ELSE 0 END) AS dec7, SUM(CASE WHEN salaryid =' +
        ' 985 AND '
      
        '                      ShowlistKind = 2 THEN price ELSE 0 END) AS' +
        ' dec8, SUM(CASE WHEN salaryid = 986 AND ShowlistKind = 2 THEN pr' +
        'ice ELSE 0 END) AS dec9, '
      
        '                      SUM(CASE WHEN salaryid = 989 AND ShowlistK' +
        'ind = 2 THEN price ELSE 0 END) AS dec10, SUM(CASE WHEN salaryid ' +
        '= 990 AND '
      
        '                      ShowlistKind = 2 THEN price ELSE 0 END) AS' +
        ' dec11, SUM(CASE WHEN salaryid = 991 AND ShowlistKind = 2 THEN p' +
        'rice ELSE 0 END) AS dec12, '
      
        '                      SUM(CASE WHEN salaryid = 992 AND ShowlistK' +
        'ind = 2 THEN price ELSE 0 END) AS dec13, SUM(CASE WHEN salaryid ' +
        '= 993 AND '
      
        '                      ShowlistKind = 2 THEN price ELSE 0 END) AS' +
        ' dec14, SUM(CASE WHEN salaryid = 997 AND ShowlistKind = 2 THEN p' +
        'rice ELSE 0 END) AS dec15, '
      
        '                      SUM(CASE WHEN salaryid = 1115 AND Showlist' +
        'Kind = 2 THEN price ELSE 0 END) AS dec16, SUM(CASE WHEN salaryid' +
        ' = 1116 AND '
      
        '                      ShowlistKind = 2 THEN price ELSE 0 END) AS' +
        ' dec17, SUM(CASE salaryid WHEN - 1 THEN price ELSE 0 END) AS dec' +
        '18, '
      
        '                      SUM(CASE salaryid WHEN - 1 THEN price ELSE' +
        ' 0 END) AS dec19, '
      
        '                      SUM(CASE WHEN salaryid > 1116 THEN CASE Sh' +
        'owlistKind WHEN 2 THEN price ELSE 0 END ELSE 0 END) AS Dec20, '
      
        '                      SUM(CASE ShowlistKind WHEN 2 THEN price EL' +
        'SE 0 END) + SUM(CASE WHEN ShowlistKind = 11 AND bedbes = 2 THEN ' +
        'price ELSE 0 END) '
      
        '                      AS SumDec, SUM(CASE ShowlistKind WHEN 1 TH' +
        'EN price ELSE 0 END) - (SUM(CASE ShowlistKind WHEN 2 THEN price ' +
        'ELSE 0 END) '
      
        '                      + SUM(CASE WHEN ShowlistKind = 11 AND bedb' +
        'es = 2 THEN price ELSE 0 END)) AS PayableSalary,PersonelInfo.Mob' +
        'ile'
      'FROM Pay.FixedCalculated LEFT OUTER JOIN'
      
        '                      Pay.FunctionItemsList() AS FunctionItemsLi' +
        'st_1 ON FixedCalculated.PersonelNO = FunctionItemsList_1.Persone' +
        'lNo'
      
        '                      AND FixedCalculated.YearID = FunctionItems' +
        'List_1.YearID AND FixedCalculated.Mounth = FunctionItemsList_1.M' +
        'ounth LEFT OUTER JOIN'
      
        '                          (SELECT     PersonelDecExt.PersonelNo,' +
        ' InsouranceItems.Employe1'
      '                             FROM Pay.PersonelDecExt INNER JOIN'
      
        '                                                   Pay.Insouranc' +
        'eItems(DEFAULT) AS InsouranceItems ON PersonelDecExt.DecExtID = ' +
        'InsouranceItems.DecExtID INNER JOIN'
      
        '                                                   Pay.FormsInfo' +
        ' AS FormsInfo_1 ON PersonelDecExt.FormInfoID = FormsInfo_1.FormI' +
        'nfoID'
      
        '                             WHERE     (FormsInfo_1.FormType = 6' +
        '1)) AS derivedtbl_1 RIGHT OUTER JOIN'
      '                      Pay.Functions_Sum INNER JOIN'
      
        '                      Pay.PersonelInfo ON Functions_Sum.Personel' +
        'No = PersonelInfo.PersonelNo INNER JOIN'
      
        '                      Pay.InsuranceCONSTinfo ON PersonelInfo.ins' +
        'uranceID = InsuranceCONSTinfo.insuranceNo ON derivedtbl_1.Person' +
        'elNo = PersonelInfo.PersonelNo ON '
      
        '                      FixedCalculated.Mounth = Functions_Sum.Mou' +
        'nth AND FixedCalculated.PersonelNO = PersonelInfo.PersonelNo LEF' +
        'T OUTER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfoPersonelState ON' +
        ' PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID ' +
        'RIGHT OUTER JOIN'
      '                      Pay.Interdicts RIGHT OUTER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfoEmployTypeID ON ' +
        'Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID ON '
      
        '                      FixedCalculated.PersonelNO = Interdicts.Pe' +
        'rsonelNo LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfo_2 ON FixedCalcu' +
        'lated.SalaryID = FormsInfo_2.FormInfoID LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfoOffice ON Interd' +
        'icts.OfficeCode = FormsInfoOffice.FormInfoID AND Interdicts.Pers' +
        'onelNo = FixedCalculated.PersonelNO'
      
        'WHERE     (Interdicts.InterdicType = 0) AND (LEFT(Interdicts.Int' +
        'erdicStartDate, 5) <= '#39'87/05'#39') AND (LEFT(Interdicts.InterdicEndD' +
        'ate, 5) >= '#39'87/05'#39') AND '
      
        '                      (FormsInfoOffice.InfoID IN (26, 17, 4, 7, ' +
        '23, 27, 3, 6, 5, 13, 2, 18))'
      'GROUP BY FormsInfoOffice.InfoID, FormsInfoOffice.InfoName_L1')
    Left = 104
    Top = 296
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
      DisplayWidth = 20
      FieldName = 'OfficeName'
      Size = 255
    end
    object qrysalaryWageBase: TBCDField
      Tag = 3
      DisplayLabel = #1580#1605#1593' '#1662#1575#1610#1607
      DisplayWidth = 12
      FieldName = 'WageBase'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryWage1: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Wage1'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryWage2: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Wage2'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryWage3: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Wage3'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryWage4: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Wage4'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryWage5: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Wage5'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 19
    end
    object qrysalaryWage6: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Wage6'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryWage7: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Wage7'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryWage8: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Wage8'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryWage9: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Wage9'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryWage10: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Wage10'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryWage11: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Wage11'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryWage12: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Wage12'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryWage13: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Wage13'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryWage14: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Wage14'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryWage15: TBCDField
      Tag = 3
      DisplayLabel = '...'
      FieldName = 'Wage15'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalaryWage16: TBCDField
      Tag = 3
      DisplayLabel = '...'
      FieldName = 'Wage16'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalaryWage17: TBCDField
      Tag = 3
      DisplayLabel = '...'
      FieldName = 'Wage17'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalaryWage18: TBCDField
      Tag = 3
      DisplayLabel = '...'
      FieldName = 'Wage18'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalaryWage19: TBCDField
      Tag = 3
      DisplayLabel = '...'
      FieldName = 'Wage19'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalaryWage20: TBCDField
      Tag = 3
      DisplayLabel = '...'
      FieldName = 'Wage20'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalaryWage21: TBCDField
      Tag = 3
      DisplayLabel = '...'
      FieldName = 'Wage21'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalaryWage22: TBCDField
      Tag = 3
      DisplayLabel = '...'
      FieldName = 'Wage22'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalaryWage23: TBCDField
      Tag = 3
      DisplayLabel = '...'
      FieldName = 'Wage23'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalaryWage24: TBCDField
      Tag = 3
      DisplayLabel = '...'
      FieldName = 'Wage24'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalaryWage25: TBCDField
      Tag = 3
      DisplayLabel = #1587#1575#1610#1585' '#1605#1586#1575#1610#1575
      FieldName = 'Wage25'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalaryEmployer: TBCDField
      DisplayLabel = #1582#1583#1605#1575#1578' '#1583#1585#1605#1575#1606#1610' '#1587#1607#1605' '#1603#1575#1601#1585#1605#1575
      FieldName = 'Employer'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalaryEmployee: TBCDField
      DisplayLabel = #1582#1583#1605#1575#1578' '#1583#1585#1605#1575#1606#1610' '#1587#1607#1605' '#1603#1575#1585#1605#1606#1583
      FieldName = 'Employee'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalarysumPriceEmploye1: TBCDField
      DisplayLabel = #1580#1605#1593' '#1582#1583#1605#1575#1578' '#1583#1585#1605#1575#1606#1610
      FieldName = 'sumPriceEmploye1'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalaryDec_2_5: TBCDField
      DisplayLabel = #1576#1575#1586#1606#1588#1587#1578#1711#1610' '#1603#1575#1585#1601#1585#1605#1575
      FieldName = 'Dec_2_5'
      currency = True
    end
    object qrysalaryDec_2_4: TBCDField
      DisplayLabel = #1576#1575#1586#1606#1588#1587#1578#1711#1610' '#1603#1575#1585#1605#1606#1583
      FieldName = 'Dec_2_4'
      currency = True
    end
    object qrysalarysum23DecEmploye: TBCDField
      DisplayLabel = #1580#1605#1593' '#1603#1604' '#1576#1610#1605#1607
      FieldName = 'sum23DecEmploye'
      currency = True
    end
    object qrysalarysum23Dec: TBCDField
      DisplayLabel = #1576#1610#1605#1607' '#1603#1575#1585#1601#1585#1605#1575
      FieldName = 'sum23Dec'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalarySumWage: TBCDField
      Tag = 3
      DisplayLabel = #1580#1605#1593' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1610#1575
      DisplayWidth = 12
      FieldName = 'SumWage'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryContainInsourance: TBCDField
      Tag = 3
      DisplayLabel = #1605#1588#1605#1608#1604' '#1576#1610#1605#1607
      DisplayWidth = 12
      FieldName = 'ContainInsourance'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryContainTax: TBCDField
      Tag = 3
      DisplayLabel = 'A'#39' '
      DisplayWidth = 12
      FieldName = 'ContainTax'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryTaxValue: TBCDField
      Tag = 3
      DisplayLabel = #1605#1575#1604#1610#1575#1578' '
      DisplayWidth = 12
      FieldName = 'TaxValue'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryDec1: TBCDField
      Tag = 3
      DisplayLabel = #1581#1602' '#1576#1610#1605#1607
      DisplayWidth = 12
      FieldName = 'Dec1'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryDec2: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Dec2'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryDec3: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Dec3'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryDec4: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Dec4'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryDec5: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Dec5'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryDec6: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Dec6'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryDec7: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Dec7'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryDec8: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Dec8'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryDec9: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Dec9'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryDec10: TBCDField
      Tag = 3
      DisplayLabel = '...'
      DisplayWidth = 12
      FieldName = 'Dec10'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalaryDec11: TBCDField
      Tag = 3
      DisplayLabel = '...'
      FieldName = 'Dec11'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalaryDec12: TBCDField
      Tag = 3
      DisplayLabel = '...'
      FieldName = 'Dec12'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalaryDec13: TBCDField
      Tag = 3
      DisplayLabel = '...'
      FieldName = 'Dec13'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalaryDec14: TBCDField
      Tag = 3
      DisplayLabel = '...'
      FieldName = 'Dec14'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalaryDec15: TBCDField
      Tag = 3
      DisplayLabel = '...'
      FieldName = 'Dec15'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalaryDec16: TBCDField
      Tag = 3
      DisplayLabel = '...'
      FieldName = 'Dec16'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalaryDec17: TBCDField
      Tag = 3
      DisplayLabel = '...'
      FieldName = 'Dec17'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalaryDec18: TBCDField
      Tag = 3
      DisplayLabel = '...'
      FieldName = 'Dec18'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalaryDec19: TBCDField
      Tag = 3
      DisplayLabel = '...'
      FieldName = 'Dec19'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalaryDec20: TBCDField
      Tag = 3
      DisplayLabel = '...'
      FieldName = 'Dec20'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrysalarySumDec: TBCDField
      Tag = 3
      DisplayLabel = #1580#1605#1593' '#1603#1587#1608#1585#1575#1578
      DisplayWidth = 12
      FieldName = 'SumDec'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryPayableSalary: TBCDField
      Tag = 3
      DisplayLabel = #1581#1602#1608#1602' '#1602#1575#1576#1604' '#1662#1585#1583#1575#1582#1578
      DisplayWidth = 12
      FieldName = 'PayableSalary'
      ReadOnly = True
      DisplayFormat = '#,0;(#,0)'
      currency = True
      Precision = 19
    end
  end
end

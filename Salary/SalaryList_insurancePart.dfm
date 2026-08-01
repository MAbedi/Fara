inherited SalaryList_insurancePartF: TSalaryList_insurancePartF
  Left = 362
  Top = 113
  Caption = #1604#1610#1587#1578' '#1581#1602#1608#1602
  ClientWidth = 916
  ExplicitWidth = 924
  PixelsPerInch = 96
  TextHeight = 13
  object lblFilterStringCaption: TLabel [0]
    AlignWithMargins = True
    Left = 3
    Top = 56
    Width = 910
    Height = 13
    Align = alTop
    AutoSize = False
    BiDiMode = bdRightToLeft
    Caption = 'FilterStringCaption'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    Transparent = True
    WordWrap = True
    OnClick = lblFilterStringCaptionClick
    ExplicitLeft = 678
    ExplicitWidth = 89
  end
  inherited PnlUnderButton: TPanel
    Width = 916
    ExplicitWidth = 916
    object Button1: TButton
      AlignWithMargins = True
      Left = 756
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actFish
      Align = alRight
      TabOrder = 1
    end
    object DBNavigator2: TDBNavigator
      Left = 406
      Top = 1
      Width = 185
      Height = 39
      DataSource = srcSalary
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alClient
      Flat = True
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
      Action = actSendtoExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 3
    end
    object BitBtn5: TBitBtn
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
    object BitBtn6: TBitBtn
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
      TabOrder = 5
    end
    object BitBtn7: TBitBtn
      AlignWithMargins = True
      Left = 837
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 6
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 675
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actFunctionShow
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
    object Button4: TButton
      AlignWithMargins = True
      Left = 594
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actPrint2
      Align = alRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
  end
  inherited Panel2: TPanel
    Width = 916
    ExplicitWidth = 916
    inherited ImgTemplate: TImage
      Left = 878
      ExplicitLeft = 878
    end
    inherited lblCaption: TLabel
      Left = 792
      Width = 78
      Height = 16
      Caption = #1604#1610#1587#1578' '#1581#1602#1608#1602
      ExplicitLeft = 792
      ExplicitWidth = 78
    end
    object CmbArchiveID: TComboBox
      Left = 16
      Top = 8
      Width = 126
      Height = 21
      Color = 13431799
      TabOrder = 0
      Text = 'CmbArchiveID'
      OnChange = CmbArchiveIDChange
    end
    object chkMounth: TCheckBox
      Left = 16
      Top = 33
      Width = 127
      Height = 17
      Alignment = taLeftJustify
      Caption = #1606#1605#1575#1740#1588' '#1576#1607' '#1578#1601#1705#1740#1705' '#1605#1575#1607
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = chkMounthClick
    end
  end
  inherited Panel3: TPanel
    Top = 72
    Width = 916
    Height = 404
    ExplicitTop = 72
    ExplicitWidth = 916
    ExplicitHeight = 404
    object Label1: TLabel
      Left = 235
      Top = 160
      Width = 12
      Height = 13
      Caption = '...'
    end
    object ToolBar1: TToolBar
      Left = 2
      Top = 2
      Width = 912
      Height = 36
      BorderWidth = 2
      ButtonHeight = 21
      ButtonWidth = 54
      Caption = 'ToolBar1'
      EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
      EdgeInner = esLowered
      ShowCaptions = True
      TabOrder = 0
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
    object DBGrid2: TCedarDbgrid
      Left = 2
      Top = 342
      Width = 912
      Height = 60
      Align = alBottom
      Color = clCream
      DataSource = srcItemsSum
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
      OddRowColor = clGradientInactiveCaption
      RowHeight = 18
      SearchPanel.Enabled = True
      SearchPanel.FilterOnTyping = True
      SortLocal = True
      TabOrder = 1
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      Columns = <
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
          FieldName = 'Amount2'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'AmountSum'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'AmountIn30'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'AmountSumAnd30'
          Footers = <>
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object Dbgrid1: TCedarDbgrid
      Left = 2
      Top = 38
      Width = 912
      Height = 304
      Align = alClient
      Ctl3D = False
      DataSource = srcSalary
      DynProps = <>
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      FooterRowCount = 1
      FooterParams.FillStyle = cfstGradientEh
      FooterParams.Font.Charset = DEFAULT_CHARSET
      FooterParams.Font.Color = clWindowText
      FooterParams.Font.Height = -12
      FooterParams.Font.Name = 'Tahoma'
      FooterParams.Font.Style = [fsBold]
      FooterParams.ParentFont = False
      FooterParams.VertLines = False
      GridLineParams.VertEmptySpaceStyle = dessNonEh
      HorzScrollBar.ExtraPanel.Visible = True
      IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
      IndicatorTitle.ShowDropDownSign = True
      IndicatorTitle.TitleButton = True
      OddRowColor = clGradientInactiveCaption
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDblClickOptimizeColWidth, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove]
      ParentCtl3D = False
      ParentFont = False
      RowHeight = 21
      SearchPanel.Enabled = True
      SearchPanel.FilterOnTyping = True
      SearchPanel.SearchScope = gssCurrentColumnEh
      SortLocal = True
      TabOrder = 2
      OnKeyPress = Dbgrid1KeyPress
      ActiveSearchPanel = True
      SelectedSum = True
      SelectFooterIndex = 1
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object CheckBox1: TCheckBox [4]
    Left = 16
    Top = 51
    Width = 127
    Height = 17
    Alignment = taLeftJustify
    Caption = #1606#1605#1575#1740#1588' '#1580#1605#1593' '#1587#1578#1608#1606#1607#1575
    TabOrder = 3
    OnClick = CheckBox1Click
  end
  inherited ActionList: TActionList
    Left = 224
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662' '
      Enabled = False
      Visible = False
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
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actFish: TAction
      Caption = #1601#1610#1588' '#1581#1602#1608#1602
      OnExecute = actFishExecute
    end
    object actFunctionShow: TAction
      Caption = #1606#1605#1575#1610#1588' '#1603#1575#1585#1603#1585#1583
      OnExecute = actFunctionShowExecute
    end
    object actPrintVijeh: TAction
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
      OnExecute = actPrintVijehExecute
    end
    object actSMS: TAction
      Caption = #1575#1585#1587#1575#1604' '#1662#1610#1575#1605#1603
      OnExecute = actSMSExecute
    end
    object actPrint2: TAction
      Caption = #1670#1575#1662'(F7)'
      ShortCut = 118
      OnExecute = actPrint2Execute
    end
  end
  inherited ImageList1: TImageList
    Left = 336
    Top = 7
  end
  object qrysalary: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qrysalaryAfterScroll
    CommandTimeout = 90
    Parameters = <
      item
        Name = 'MounthFrom'
        DataType = ftWideString
        Size = 1
        Value = '1'
      end
      item
        Name = 'MounthTo'
        DataType = ftWideString
        Size = 2
        Value = '12'
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
      end>
    SQL.Strings = (
      
        'SELECT   Pay.PersonelInfo.NationalID,  Pay.PersonelInfo.IDNumber' +
        ', Pay.PersonelInfo.InsuranceNumber, Pay.FixedCalculated.Personel' +
        'NO,'
      
        '                      Pay.PersonelInfo.name_L1 + '#39' '#39' + Pay.Perso' +
        'nelInfo.lastName_L1 AS PersonName,PersonelInfo.name_L1,PersonelI' +
        'nfo.lastName_L1, FormsInfoPersonelState.InfoName_L1 AS StateName' +
        '_L1,PersonelInfo.fatherName_L1,'
      
        '                      sum(CASE salaryid WHEN - 1 THEN price ELSE' +
        ' 0 END) AS Wage1, sum(CASE salaryid WHEN - 1 THEN price ELSE 0 E' +
        'ND) AS Wage2, '
      
        '                      sum(CASE salaryid WHEN - 1 THEN price ELSE' +
        ' 0 END) AS Wage3, sum(CASE salaryid WHEN - 1 THEN price ELSE 0 E' +
        'ND) AS Wage4, '
      
        '                      sum(CASE salaryid WHEN - 1 THEN price ELSE' +
        ' 0 END) AS Wage5, sum(CASE salaryid WHEN - 1 THEN price ELSE 0 E' +
        'ND) AS Wage6, '
      
        '                      sum(CASE salaryid WHEN - 1 THEN price ELSE' +
        ' 0 END) AS Wage7, sum(CASE salaryid WHEN - 1 THEN price ELSE 0 E' +
        'ND) AS Wage8, '
      
        '                      sum(CASE salaryid WHEN - 1 THEN price ELSE' +
        ' 0 END) AS Wage9, sum(CASE salaryid WHEN - 1 THEN price ELSE 0 E' +
        'ND) AS Wage10, '
      
        '                      sum(CASE salaryid WHEN - 1 THEN price ELSE' +
        ' 0 END) AS Wage11, sum(CASE salaryid WHEN - 1 THEN price ELSE 0 ' +
        'END) AS Wage12, '
      
        '                      sum(CASE salaryid WHEN - 1 THEN price ELSE' +
        ' 0 END) AS Wage13,'
      
        '                      sum(CASE WHEN salaryid < - 1 THEN CASE Sho' +
        'wlistKind WHEN 1 THEN price ELSE 0 END ELSE 0 END) AS Wage14, '
      
        '                      Sum(CASE ShowlistKind WHEN 1 THEN price EL' +
        'SE 0 END) AS SumWage, sum(CASE WHEN (ShowlistKind IN (2, 4, 15, ' +
        '14) AND bedbes = 1) '
      
        '                      THEN price ELSE 0 END) AS sum23Dec, sum(CA' +
        'SE ShowlistKind WHEN 3 THEN price ELSE 0 END) AS ContainInsouran' +
        'ce,'
      
        '                      sum(CASE WHEN (ShowlistKind = 11 AND bedbe' +
        's = 0) THEN price ELSE 0 END) AS ContainTax, sum(CASE WHEN (Show' +
        'listKind = 11 AND bedbes = 2)'
      
        '                      THEN price ELSE 0 END) AS TaxValue, sum(CA' +
        'SE salaryid WHEN - 1 THEN price ELSE 0 END) AS dec1,'
      
        '                      sum(CASE salaryid WHEN - 1 THEN price ELSE' +
        ' 0 END) AS dec2, sum(CASE salaryid WHEN - 1 THEN price ELSE 0 EN' +
        'D) AS dec3,'
      
        '                      sum(CASE salaryid WHEN - 1 THEN price ELSE' +
        ' 0 END) AS dec4, sum(CASE salaryid WHEN - 1 THEN price ELSE 0 EN' +
        'D) AS dec5,'
      
        '                      sum(CASE salaryid WHEN - 1 THEN price ELSE' +
        ' 0 END) AS dec6, sum(CASE salaryid WHEN - 1 THEN price ELSE 0 EN' +
        'D) AS dec7,'
      
        '                      sum(CASE salaryid WHEN - 1 THEN price ELSE' +
        ' 0 END) AS dec8, sum(CASE salaryid WHEN - 1 THEN price ELSE 0 EN' +
        'D) AS dec9,'
      
        '                      sum(CASE WHEN salaryid < - 1 THEN CASE Sho' +
        'wlistKind WHEN 2 THEN price ELSE 0 END ELSE 0 END) AS Dec10,'
      
        '                      sum(CASE ShowlistKind WHEN 2 THEN price EL' +
        'SE 0 END) + Sum(CASE WHEN ShowlistKind = 11 AND bedbes = 2 THEN ' +
        'price ELSE 0 END)'
      
        '                      AS SumDec, Sum(CASE ShowlistKind WHEN 1 TH' +
        'EN price ELSE 0 END) - (sum(CASE ShowlistKind WHEN 2 THEN price ' +
        'ELSE 0 END)'
      
        '                      + Sum(CASE WHEN ShowlistKind = 11 AND bedb' +
        'es = 2 THEN price ELSE 0 END)) AS PayableSalary, (SELECT AmountS' +
        'umAnd30 FROM Pay.v_InterdictItemSumSalary ISS WHERE ( ISS.Interd' +
        'ictID = Interdicts.InterdictID)) AS WageDay'
      
        '                     ,sum(CASE salaryid WHEN - 1 THEN price ELSE' +
        ' 0 END) AS Amount ,PersonelInfo.Mobile,Interdicts.InterdictID'
      'FROM Pay.FixedCalculated LEFT OUTER JOIN'
      '                      Pay.Interdicts LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfoEmployTypeID ON ' +
        'Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID ON'
      
        '                      FixedCalculated.PersonelNO = Interdicts.Pe' +
        'rsonelNo LEFT OUTER JOIN'
      '                      Pay.Functions_Sum INNER JOIN'
      
        '                      Pay.PersonelInfo ON Functions_Sum.Personel' +
        'No = PersonelInfo.PersonelNo LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfoPersonelState ON' +
        ' PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID ' +
        'ON'
      
        '                      FixedCalculated.Mounth = Functions_Sum.Mou' +
        'nth AND FixedCalculated.PersonelNO = PersonelInfo.PersonelNo LEF' +
        'T OUTER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfo_2 ON FixedCalcu' +
        'lated.SalaryID = FormsInfo_2.FormInfoID'
      
        'WHERE     (Pay.FixedCalculated.Mounth BETWEEN :MounthFrom AND :M' +
        'ounthTo)'
      
        ' AND (Pay.FixedCalculated.PersonelNO BETWEEN :FromPersonelNo AND' +
        ' :ToPersonelNo)'
      
        'GROUP BY Pay.PersonelInfo.NationalID,Pay.FixedCalculated.Persone' +
        'lNO, Pay.PersonelInfo.IDNumber, Pay.PersonelInfo.InsuranceNumber' +
        ','
      
        '                      FormsInfoPersonelState.InfoName_L1,Persone' +
        'lInfo.name_L1,PersonelInfo.lastName_L1,PersonelInfo.fatherName_L' +
        '1, Functions_Sum.FunctionDay'
      ',PersonelInfo.Mobile,Interdicts.InterdictID')
    Left = 392
    Top = 200
  end
  object srcSalary: TDataSource
    DataSet = qrysalary
    Left = 152
    Top = 160
  end
  object qryWage: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 417
    Top = 12
  end
  object qryDec: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 504
    Top = 6
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcSalary
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 488
    Top = 229
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'NationalID'
      FieldName = 'NationalID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'IDNumber'
      FieldName = 'IDNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'InsuranceNumber'
      FieldName = 'InsuranceNumber'
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
      FieldAlias = 'PersonName'
      FieldName = 'PersonName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'name_L1'
      FieldName = 'name_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'lastName_L1'
      FieldName = 'lastName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'StateName_L1'
      FieldName = 'StateName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'fatherName_L1'
      FieldName = 'fatherName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'Wage1'
      FieldName = 'Wage1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'Wage2'
      FieldName = 'Wage2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'Wage3'
      FieldName = 'Wage3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'Wage4'
      FieldName = 'Wage4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'Wage5'
      FieldName = 'Wage5'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'Wage6'
      FieldName = 'Wage6'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'Wage7'
      FieldName = 'Wage7'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'Wage8'
      FieldName = 'Wage8'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'Wage9'
      FieldName = 'Wage9'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'Wage10'
      FieldName = 'Wage10'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'Wage11'
      FieldName = 'Wage11'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'Wage12'
      FieldName = 'Wage12'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = 'Wage13'
      FieldName = 'Wage13'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = 'Wage14'
      FieldName = 'Wage14'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField24: TppField
      FieldAlias = 'SumWage'
      FieldName = 'SumWage'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField25: TppField
      FieldAlias = 'sum23Dec'
      FieldName = 'sum23Dec'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField26: TppField
      FieldAlias = 'ContainInsourance'
      FieldName = 'ContainInsourance'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField27: TppField
      FieldAlias = 'ContainTax'
      FieldName = 'ContainTax'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField28: TppField
      FieldAlias = 'TaxValue'
      FieldName = 'TaxValue'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField29: TppField
      FieldAlias = 'dec1'
      FieldName = 'dec1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField30: TppField
      FieldAlias = 'dec2'
      FieldName = 'dec2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField31: TppField
      FieldAlias = 'dec3'
      FieldName = 'dec3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField32: TppField
      FieldAlias = 'dec4'
      FieldName = 'dec4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField33: TppField
      FieldAlias = 'dec5'
      FieldName = 'dec5'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField34: TppField
      FieldAlias = 'dec6'
      FieldName = 'dec6'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField35: TppField
      FieldAlias = 'dec7'
      FieldName = 'dec7'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField36: TppField
      FieldAlias = 'dec8'
      FieldName = 'dec8'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField37: TppField
      FieldAlias = 'dec9'
      FieldName = 'dec9'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField38: TppField
      FieldAlias = 'Dec10'
      FieldName = 'Dec10'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField39: TppField
      FieldAlias = 'SumDec'
      FieldName = 'SumDec'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField40: TppField
      FieldAlias = 'PayableSalary'
      FieldName = 'PayableSalary'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField41: TppField
      FieldAlias = 'WageDay'
      FieldName = 'WageDay'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField42: TppField
      FieldAlias = 'Amount'
      FieldName = 'Amount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField43: TppField
      FieldAlias = 'Mobile'
      FieldName = 'Mobile'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField44: TppField
      FieldAlias = 'InterdictID'
      FieldName = 'InterdictID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
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
    PrinterSetup.mmMarginBottom = 4000
    PrinterSetup.mmMarginLeft = 8000
    PrinterSetup.mmMarginRight = 4000
    PrinterSetup.mmMarginTop = 4000
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'D:\Projects\FaraXE8\Salary\Exe\Report\SalaryList_DayTime_New1.rt' +
      'm'
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
    EmailSettings.Enabled = True
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = False
    ThumbnailSettings.Visible = False
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
    PDFSettings.FontEncoding = feUnicode
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PDFSettings.Layers = True
    PDFSettings.Outline = True
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.SinglePageOnly = True
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
    Left = 576
    Top = 304
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 35983
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 15879
        mmLeft = 0
        mmTop = 20061
        mmWidth = 285532
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
        mmHeight = 4190
        mmLeft = 192845
        mmTop = 22224
        mmWidth = 15875
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
        mmLeft = 192845
        mmTop = 29633
        mmWidth = 15875
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
        mmHeight = 4190
        mmLeft = 176344
        mmTop = 29633
        mmWidth = 15610
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
        mmLeft = 176344
        mmTop = 22224
        mmWidth = 15610
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
        mmLeft = 108744
        mmTop = 22224
        mmWidth = 15610
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
        mmLeft = 125547
        mmTop = 29633
        mmWidth = 15875
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
        mmLeft = 125369
        mmTop = 22224
        mmWidth = 15875
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
        mmHeight = 4190
        mmLeft = 142283
        mmTop = 29633
        mmWidth = 15610
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 220
        mmTop = 27781
        mmWidth = 250695
        BandType = 0
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 15153
        mmLeft = 250522
        mmTop = 20373
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15153
        mmLeft = 236802
        mmTop = 20373
        mmWidth = 2381
        BandType = 0
        LayerName = Foreground
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15153
        mmLeft = 175652
        mmTop = 20373
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15153
        mmLeft = 158495
        mmTop = 20373
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15153
        mmLeft = 141838
        mmTop = 20373
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15153
        mmLeft = 124950
        mmTop = 20373
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
        mmTop = 10057
        mmWidth = 6350
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
        mmLeft = 158953
        mmTop = 22224
        mmWidth = 16140
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
        mmLeft = 158953
        mmTop = 29633
        mmWidth = 16140
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
        mmLeft = 142283
        mmTop = 22224
        mmWidth = 15610
        BandType = 0
        LayerName = Foreground
      end
      object ppLine18: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line21'
        Border.mmPadding = 0
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 15153
        mmLeft = 70321
        mmTop = 20373
        mmWidth = 2117
        BandType = 0
        LayerName = Foreground
      end
      object ppLine19: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line103'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15153
        mmLeft = 53438
        mmTop = 20373
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine20: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15153
        mmLeft = 36768
        mmTop = 20373
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine21: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 15197
        mmLeft = 89192
        mmTop = 20285
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'SW'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1581#1602#1608#1602' '#1608#1605#1586#1575#1610#1575' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4100
        mmLeft = 108744
        mmTop = 29633
        mmWidth = 15610
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 't1'
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
        mmHeight = 4100
        mmLeft = 89944
        mmTop = 22300
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'b1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1588#1605#1608#1604' '#1576#1610#1605#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4100
        mmLeft = 71158
        mmTop = 22300
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground
      end
      object d1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 't2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' '#1605#1575#1604#1610#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4100
        mmLeft = 89944
        mmTop = 29633
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground
      end
      object d6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'd6'
        OnGetText = AllD_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = '6'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4100
        mmLeft = 20994
        mmTop = 29590
        mmWidth = 15433
        BandType = 0
        LayerName = Foreground
      end
      object d3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'd3'
        OnGetText = AllD_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = '3'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4100
        mmLeft = 37297
        mmTop = 22224
        mmWidth = 15610
        BandType = 0
        LayerName = Foreground
      end
      object d4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'd4'
        OnGetText = AllD_GetText
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
        mmHeight = 4233
        mmLeft = 37297
        mmTop = 29590
        mmWidth = 15610
        BandType = 0
        LayerName = Foreground
      end
      object d5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'd5'
        OnGetText = AllD_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = '5'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4100
        mmLeft = 20994
        mmTop = 22224
        mmWidth = 15433
        BandType = 0
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line18'
        Border.mmPadding = 0
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 15153
        mmLeft = 20105
        mmTop = 20373
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'L_Pay'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1582#1575#1604#1589' '#1662#1585#1583#1575#1582#1578#1740
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 5510
        mmLeft = 882
        mmTop = 28658
        mmWidth = 18741
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'b2'
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
        mmLeft = 71158
        mmTop = 29707
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground
      end
      object ppLine22: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line105'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15153
        mmLeft = 192322
        mmTop = 20373
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
        mmHeight = 15153
        mmLeft = 108020
        mmTop = 20373
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'PInfo'
        Border.mmPadding = 0
        Caption = #1605#1588#1582#1589#1575#1578' '#1662#1585#1587#1606#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 257262
        mmTop = 25094
        mmWidth = 21961
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'd2'
        OnGetText = AllD_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' 2'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4100
        mmLeft = 53966
        mmTop = 29590
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'd1'
        OnGetText = AllD_GetText
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
        mmHeight = 4100
        mmLeft = 53966
        mmTop = 22224
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Am1'
        OnGetText = All_Amount_GetText
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
        mmLeft = 237373
        mmTop = 29633
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Am2'
        OnGetText = All_Amount_GetText
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
        mmLeft = 223677
        mmTop = 22225
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Am3'
        OnGetText = All_Amount_GetText
        Save = True
        AutoSize = False
        Border.mmPadding = 0
        Caption = '3'
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
        mmLeft = 223580
        mmTop = 29633
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'L_PRJ'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1662#1585#1608#1688#1607' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5292
        mmLeft = 271992
        mmTop = 13360
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'D_PRJ'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'ProjectName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Zar'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 227542
        mmTop = 13494
        mmWidth = 40746
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Am4'
        OnGetText = All_Amount_GetText
        Save = True
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
        mmLeft = 209815
        mmTop = 22225
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Am5'
        OnGetText = All_Amount_GetText
        Save = True
        AutoSize = False
        Border.mmPadding = 0
        Caption = '5'
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
        mmLeft = 209815
        mmTop = 29633
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line15'
        Border.mmPadding = 0
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 15153
        mmLeft = 209208
        mmTop = 20372
        mmWidth = 2381
        BandType = 0
        LayerName = Foreground
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15153
        mmLeft = 223002
        mmTop = 20372
        mmWidth = 2381
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'L_FDay'
        Border.mmPadding = 0
        Caption = #1585#1608#1586' '#1705#1575#1585#1705#1585#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4012
        mmLeft = 237373
        mmTop = 22225
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'L_SD'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1603#1587#1608#1585#1575#1578
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
        mmLeft = 2381
        mmTop = 22181
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'CompanyName'
        OnGetText = ppLabel1GetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 14
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8731
        mmLeft = 114300
        mmTop = 5027
        mmWidth = 56356
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'MounthList'
        OnGetText = ppLabel10GetText
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
        mmHeight = 6614
        mmLeft = 264848
        mmTop = 3969
        mmWidth = 18256
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'DatePrint'
        OnGetText = ppLabel4GetText
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
        mmTop = 3704
        mmWidth = 11896
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      PrintCount = 12
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 12965
      mmPrintPosition = 0
      object dw1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw1'
        OnGetText = ALLSetDataFieldGetText
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
        mmHeight = 5293
        mmLeft = 192845
        mmTop = 0
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground
      end
      object dw2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw2'
        OnGetText = ALLSetDataFieldGetText
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
        mmHeight = 4761
        mmLeft = 192845
        mmTop = 6879
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground
      end
      object dw4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw4'
        OnGetText = ALLSetDataFieldGetText
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
        mmHeight = 5291
        mmLeft = 176344
        mmTop = 6879
        mmWidth = 15610
        BandType = 4
        LayerName = Foreground
      end
      object dw3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw3'
        OnGetText = ALLSetDataFieldGetText
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
        mmHeight = 5205
        mmLeft = 176344
        mmTop = 87
        mmWidth = 15610
        BandType = 4
        LayerName = Foreground
      end
      object dw7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw7'
        OnGetText = ALLSetDataFieldGetText
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
        mmHeight = 5248
        mmLeft = 142283
        mmTop = 0
        mmWidth = 15610
        BandType = 4
        LayerName = Foreground
      end
      object dw6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw6'
        OnGetText = ALLSetDataFieldGetText
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
        mmLeft = 158953
        mmTop = 6879
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
      object dw5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw5'
        OnGetText = ALLSetDataFieldGetText
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
        mmHeight = 5248
        mmLeft = 158953
        mmTop = 30
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
      object dw8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw8'
        OnGetText = ALLSetDataFieldGetText
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
        mmLeft = 142283
        mmTop = 6879
        mmWidth = 15610
        BandType = 4
        LayerName = Foreground
      end
      object dw9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw9'
        OnGetText = ALLSetDataFieldGetText
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
        mmHeight = 5248
        mmLeft = 125369
        mmTop = 0
        mmWidth = 15919
        BandType = 4
        LayerName = Foreground
      end
      object dw11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw11'
        OnGetText = ALLSetDataFieldGetText
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
        mmLeft = 108744
        mmTop = 87
        mmWidth = 15610
        BandType = 4
        LayerName = Foreground
      end
      object dw10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw10'
        OnGetText = ALLSetDataFieldGetText
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
        mmHeight = 5292
        mmLeft = 125369
        mmTop = 6879
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.mmPadding = 0
        Pen.Width = 2
        ParentHeight = True
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 12965
        mmLeft = 108020
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line22'
        Border.mmPadding = 0
        Pen.Width = 2
        ParentHeight = True
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 12965
        mmLeft = 250522
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
        mmHeight = 12965
        mmLeft = 283626
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
        mmHeight = 12965
        mmLeft = 265
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DTI'
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
        mmHeight = 5026
        mmLeft = 89944
        mmTop = 29
        mmWidth = 17463
        BandType = 4
        LayerName = Foreground
      end
      object dd1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dd1'
        OnGetText = ALLSetDataFieldGetText
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
        mmHeight = 5292
        mmLeft = 53966
        mmTop = 0
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground
      end
      object dd6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dd6'
        OnGetText = ALLSetDataFieldGetText
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
        mmHeight = 5161
        mmLeft = 20773
        mmTop = 6660
        mmWidth = 15654
        BandType = 4
        LayerName = Foreground
      end
      object ppLine26: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line26'
        Border.mmPadding = 0
        Position = lpBottom
        Weight = 1.000000000000000000
        mmHeight = 794
        mmLeft = 265
        mmTop = 12199
        mmWidth = 284870
        BandType = 4
        LayerName = Foreground
      end
      object dd4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dd4'
        OnGetText = ALLSetDataFieldGetText
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
        mmHeight = 5293
        mmLeft = 37297
        mmTop = 6657
        mmWidth = 15610
        BandType = 4
        LayerName = Foreground
      end
      object dd3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dd3'
        OnGetText = ALLSetDataFieldGetText
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
        mmHeight = 5249
        mmLeft = 37297
        mmTop = 87
        mmWidth = 15610
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
        mmHeight = 12965
        mmLeft = 36768
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
        mmHeight = 12965
        mmLeft = 53438
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine29: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line29'
        Border.mmPadding = 0
        Pen.Width = 2
        ParentHeight = True
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 12965
        mmLeft = 70321
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine30: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line30'
        Border.mmPadding = 0
        Pen.Width = 2
        ParentHeight = True
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 12965
        mmLeft = 89192
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object dd5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dd5'
        OnGetText = ALLSetDataFieldGetText
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
        mmHeight = 5161
        mmLeft = 20773
        mmTop = 73
        mmWidth = 15654
        BandType = 4
        LayerName = Foreground
      end
      object ppLine31: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line35'
        Border.mmPadding = 0
        Pen.Width = 2
        ParentHeight = True
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 12965
        mmLeft = 20105
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'D_Pay'
        Border.mmPadding = 0
        DataField = 'PayableSalary'
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
        mmHeight = 5511
        mmLeft = 794
        mmTop = 6660
        mmWidth = 18782
        BandType = 4
        LayerName = Foreground
      end
      object ppLine32: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line83'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12965
        mmLeft = 236798
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine34: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line99'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12965
        mmLeft = 192322
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine35: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line106'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12965
        mmLeft = 175652
        mmTop = 0
        mmWidth = 2644
        BandType = 4
        LayerName = Foreground
      end
      object ppLine36: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line108'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12965
        mmLeft = 158495
        mmTop = 0
        mmWidth = 2644
        BandType = 4
        LayerName = Foreground
      end
      object ppLine37: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line109'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12965
        mmLeft = 141838
        mmTop = 0
        mmWidth = 2644
        BandType = 4
        LayerName = Foreground
      end
      object ppLine38: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line110'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12965
        mmLeft = 124950
        mmTop = 0
        mmWidth = 2644
        BandType = 4
        LayerName = Foreground
      end
      object dd2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dd2'
        OnGetText = ALLSetDataFieldGetText
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
        mmHeight = 5292
        mmLeft = 53966
        mmTop = 6657
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'D_PInfo'
        Border.mmPadding = 0
        DataField = 'PersonName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5819
        mmLeft = 251357
        mmTop = 6351
        mmWidth = 32624
        BandType = 4
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line46'
        Border.mmPadding = 0
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 442
        mmTop = 6086
        mmWidth = 250253
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'D_PN'
        Border.mmPadding = 0
        DataField = 'PersonelNO'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7673
        mmLeft = 251355
        mmTop = 0
        mmWidth = 32624
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DWage'
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
        mmHeight = 5248
        mmLeft = 108744
        mmTop = 6879
        mmWidth = 15610
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DT'
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
        mmHeight = 5248
        mmLeft = 89944
        mmTop = 6824
        mmWidth = 17463
        BandType = 4
        LayerName = Foreground
      end
      object _Am1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = '_Am1'
        OnGetText = ALL_AmountSetDataFieldGetText
        Border.mmPadding = 0
        DataField = '_Amount1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4763
        mmLeft = 237373
        mmTop = 6876
        mmWidth = 12965
        BandType = 4
        LayerName = Foreground
      end
      object _Am2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = '_Am2'
        OnGetText = ALL_AmountSetDataFieldGetText
        Border.mmPadding = 0
        DataField = '_Amount2'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4763
        mmLeft = 223580
        mmTop = 0
        mmWidth = 12965
        BandType = 4
        LayerName = Foreground
      end
      object _Am3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = '_Am3'
        OnGetText = ALL_AmountSetDataFieldGetText
        Border.mmPadding = 0
        DataField = '_Amount3'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4763
        mmLeft = 223580
        mmTop = 6876
        mmWidth = 12965
        BandType = 4
        LayerName = Foreground
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line16'
        Border.mmPadding = 0
        Pen.Width = 2
        ParentHeight = True
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 12965
        mmLeft = 209204
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = '_Am4'
        OnGetText = ALL_AmountSetDataFieldGetText
        Border.mmPadding = 0
        DataField = '_Amount4'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4984
        mmLeft = 209815
        mmTop = 26
        mmWidth = 12965
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = '_Am5'
        OnGetText = ALL_AmountSetDataFieldGetText
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4763
        mmLeft = 209815
        mmTop = 6876
        mmWidth = 12965
        BandType = 4
        LayerName = Foreground
      end
      object ppLine23: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line19'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12965
        mmLeft = 223002
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'D_FDay'
        Border.mmPadding = 0
        DataField = '_FunctionDay'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4940
        mmLeft = 237373
        mmTop = 43
        mmWidth = 12965
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DII'
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
        mmHeight = 5248
        mmLeft = 71158
        mmTop = 0
        mmWidth = 17463
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DI'
        Border.mmPadding = 0
        DataField = 'sum23Dec'
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
        mmHeight = 5248
        mmLeft = 71158
        mmTop = 6824
        mmWidth = 17463
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'D_SD'
        Border.mmPadding = 0
        DataField = 'SumDec'
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
        mmHeight = 5117
        mmLeft = 1766
        mmTop = 87
        mmWidth = 17415
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 21000
      mmPrintPosition = 0
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Sign2'
        Border.mmPadding = 0
        Caption = #1578#1575#1610#1610#1583' '#1705#1606#1606#1583#1607' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 170921
        mmTop = 7144
        mmWidth = 15346
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Sign3'
        Border.mmPadding = 0
        Caption = #1605#1600#1583#1610#1600#1585' '#1605#1575#1604#1600#1610' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 97976
        mmTop = 7144
        mmWidth = 17198
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Sign4'
        Border.mmPadding = 0
        Caption = #1605#1600#1583#1610#1600#1585' '#1593#1575' '#1605#1600#1604' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 29276
        mmTop = 7144
        mmWidth = 18521
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Sign1'
        Border.mmPadding = 0
        Caption = #1578#1606#1592#1610#1605' '#1705#1606#1606#1583#1607' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 238390
        mmTop = 7144
        mmWidth = 16933
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 36513
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 16034
        mmLeft = 0
        mmTop = 379
        mmWidth = 285533
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'SumT'
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
        mmLeft = 261278
        mmTop = 1918
        mmWidth = 15081
        BandType = 7
        LayerName = Foreground
      end
      object ppLine39: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line43'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15548
        mmLeft = 53438
        mmTop = 600
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppLine40: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line44'
        Border.mmPadding = 0
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 15548
        mmLeft = 70321
        mmTop = 600
        mmWidth = 1323
        BandType = 7
        LayerName = Foreground
      end
      object ppLine41: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line45'
        Border.mmPadding = 0
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 15416
        mmLeft = 89192
        mmTop = 751
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppLine42: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.mmPadding = 0
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 15548
        mmLeft = 108020
        mmTop = 600
        mmWidth = 1589
        BandType = 7
        LayerName = Foreground
      end
      object ppLine43: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line104'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15548
        mmLeft = 124950
        mmTop = 600
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppLine44: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line38'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15548
        mmLeft = 141838
        mmTop = 600
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppLine45: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line20'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15548
        mmLeft = 158495
        mmTop = 600
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppLine46: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line31'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15548
        mmLeft = 175652
        mmTop = 600
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppLine47: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line47'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15548
        mmLeft = 192322
        mmTop = 600
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppLine48: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line48'
        Border.mmPadding = 0
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 15548
        mmLeft = 20105
        mmTop = 600
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppLine49: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15548
        mmLeft = 36768
        mmTop = 600
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'S_Pay'
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
        mmHeight = 5908
        mmLeft = 794
        mmTop = 9067
        mmWidth = 18782
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'S_SP'
        Border.mmPadding = 0
        DataField = 'PersonelNO'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 252773
        mmTop = 9013
        mmWidth = 11542
        BandType = 7
        LayerName = Foreground
      end
      object sw_col1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col1'
        OnGetText = ALLSetDataFieldGetText
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
        mmLeft = 192845
        mmTop = 1394
        mmWidth = 15875
        BandType = 7
        LayerName = Foreground
      end
      object sw_col2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col2'
        OnGetText = ALLSetDataFieldGetText
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
        mmLeft = 192845
        mmTop = 9067
        mmWidth = 15875
        BandType = 7
        LayerName = Foreground
      end
      object sw_col9: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col9'
        OnGetText = ALLSetDataFieldGetText
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
        mmLeft = 125369
        mmTop = 1394
        mmWidth = 15875
        BandType = 7
        LayerName = Foreground
      end
      object sw_col8: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col8'
        OnGetText = ALLSetDataFieldGetText
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
        mmLeft = 142283
        mmTop = 9067
        mmWidth = 15610
        BandType = 7
        LayerName = Foreground
      end
      object sw_col11: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col11'
        OnGetText = ALLSetDataFieldGetText
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
        mmLeft = 108744
        mmTop = 1394
        mmWidth = 15610
        BandType = 7
        LayerName = Foreground
      end
      object sw_col10: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col10'
        OnGetText = ALLSetDataFieldGetText
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
        mmHeight = 5777
        mmLeft = 125369
        mmTop = 9067
        mmWidth = 15875
        BandType = 7
        LayerName = Foreground
      end
      object sw_col5: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col5'
        OnGetText = ALLSetDataFieldGetText
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
        mmLeft = 158953
        mmTop = 1394
        mmWidth = 16140
        BandType = 7
        LayerName = Foreground
      end
      object sw_col4: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col4'
        OnGetText = ALLSetDataFieldGetText
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
        mmLeft = 176344
        mmTop = 9067
        mmWidth = 15610
        BandType = 7
        LayerName = Foreground
      end
      object sw_col3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col3'
        OnGetText = ALLSetDataFieldGetText
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
        mmLeft = 176344
        mmTop = 1394
        mmWidth = 15610
        BandType = 7
        LayerName = Foreground
      end
      object sw_col7: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col7'
        OnGetText = ALLSetDataFieldGetText
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
        mmLeft = 142283
        mmTop = 1394
        mmWidth = 15610
        BandType = 7
        LayerName = Foreground
      end
      object sw_col6: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col6'
        OnGetText = ALLSetDataFieldGetText
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
        mmLeft = 158953
        mmTop = 9067
        mmWidth = 16140
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'L_SP'
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
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 268192
        mmTop = 9056
        mmWidth = 14726
        BandType = 7
        LayerName = Foreground
      end
      object sd_col6: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sd_col6'
        OnGetText = ALLSetDataFieldGetText
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
        mmLeft = 20773
        mmTop = 9067
        mmWidth = 15654
        BandType = 7
        LayerName = Foreground
      end
      object sd_col1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sd_col1'
        OnGetText = ALLSetDataFieldGetText
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
        mmLeft = 53966
        mmTop = 1658
        mmWidth = 15875
        BandType = 7
        LayerName = Foreground
      end
      object sd_col3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sd_col3'
        OnGetText = ALLSetDataFieldGetText
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
        mmLeft = 37297
        mmTop = 1658
        mmWidth = 15610
        BandType = 7
        LayerName = Foreground
      end
      object sd_col4: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sd_col4'
        OnGetText = ALLSetDataFieldGetText
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
        mmLeft = 37297
        mmTop = 9067
        mmWidth = 15610
        BandType = 7
        LayerName = Foreground
      end
      object sd_col2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sd_col2'
        OnGetText = ALLSetDataFieldGetText
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
        mmHeight = 6042
        mmLeft = 53966
        mmTop = 9067
        mmWidth = 15875
        BandType = 7
        LayerName = Foreground
      end
      object sd_col5: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sd_col5'
        OnGetText = ALLSetDataFieldGetText
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
        mmLeft = 20773
        mmTop = 1658
        mmWidth = 15654
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
        mmLeft = 89944
        mmTop = 1394
        mmWidth = 17463
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
        mmLeft = 71158
        mmTop = 1481
        mmWidth = 17463
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'SI'
        Border.mmPadding = 0
        DataField = 'sum23Dec'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 71158
        mmTop = 9067
        mmWidth = 17463
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Sign7'
        Border.mmPadding = 0
        Caption = #1605#1600#1583#1610#1600#1585' '#1605#1575#1604#1600#1610' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 97976
        mmTop = 27812
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Sign8'
        Border.mmPadding = 0
        Caption = #1605#1600#1583#1610#1600#1585' '#1593#1575' '#1605#1600#1604' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 29276
        mmTop = 27810
        mmWidth = 18521
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Sign6'
        Border.mmPadding = 0
        Caption = #1578#1575#1610#1610#1583' '#1705#1606#1606#1583#1607' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 170921
        mmTop = 27781
        mmWidth = 15346
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Sign5'
        Border.mmPadding = 0
        Caption = #1578#1606#1592#1610#1605' '#1705#1606#1606#1583#1607' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 238390
        mmTop = 27781
        mmWidth = 16933
        BandType = 7
        LayerName = Foreground
      end
      object ppLine50: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line50'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15548
        mmLeft = 236798
        mmTop = 600
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppLine25: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line25'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 220
        mmTop = 8008
        mmWidth = 250474
        BandType = 7
        LayerName = Foreground
      end
      object ppLine51: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 15548
        mmLeft = 250522
        mmTop = 600
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc6: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'ST'
        OnGetText = ALLSetDataFieldGetText
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
        mmHeight = 5777
        mmLeft = 89944
        mmTop = 9067
        mmWidth = 17463
        BandType = 7
        LayerName = Foreground
      end
      object s_Am1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 's_Am1'
        OnGetText = ALL_AmountSetDataFieldGetText
        Border.mmPadding = 0
        DataField = '_Amount1'
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
        mmLeft = 237373
        mmTop = 8801
        mmWidth = 12965
        BandType = 7
        LayerName = Foreground
      end
      object s_Am2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 's_Am2'
        OnGetText = ALL_AmountSetDataFieldGetText
        Border.mmPadding = 0
        DataField = '_Amount2'
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
        mmLeft = 223580
        mmTop = 1410
        mmWidth = 12965
        BandType = 7
        LayerName = Foreground
      end
      object s_Am3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 's_Am3'
        OnGetText = ALL_AmountSetDataFieldGetText
        Border.mmPadding = 0
        DataField = '_Amount3'
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
        mmLeft = 223580
        mmTop = 8801
        mmWidth = 12965
        BandType = 7
        LayerName = Foreground
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line17'
        Border.mmPadding = 0
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 15327
        mmLeft = 209204
        mmTop = 751
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc7: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 's_Am4'
        OnGetText = ALL_AmountSetDataFieldGetText
        Border.mmPadding = 0
        DataField = '_Amount4'
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
        mmLeft = 209815
        mmTop = 1410
        mmWidth = 12965
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc8: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 's_Am5'
        OnGetText = ALL_AmountSetDataFieldGetText
        Border.mmPadding = 0
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
        mmLeft = 209815
        mmTop = 8801
        mmWidth = 12965
        BandType = 7
        LayerName = Foreground
      end
      object ppLine33: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line33'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15548
        mmLeft = 223002
        mmTop = 486
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc9: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 's_FDay'
        Border.mmPadding = 0
        DataField = '_FunctionDay'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5691
        mmLeft = 237373
        mmTop = 1410
        mmWidth = 12965
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
        mmHeight = 5512
        mmLeft = 108744
        mmTop = 9067
        mmWidth = 15610
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc5: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'S_SD'
        Border.mmPadding = 0
        DataField = 'SumDec'
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
        mmHeight = 5821
        mmLeft = 1718
        mmTop = 1658
        mmWidth = 17422
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
  object srcItemsSum: TDataSource
    DataSet = qryItemsSum
    Left = 270
    Top = 245
  end
  object qryItemsSum: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 192
    Top = 243
    object qryItemsSumAmount1: TBCDField
      DisplayLabel = #1580#1605#1593' '#1605#1586#1583' '#1605#1576#1606#1575
      FieldName = 'Amount1'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryItemsSumAmount2: TBCDField
      DisplayLabel = #1580#1605#1593' '#1605#1586#1575#1610#1575
      FieldName = 'Amount2'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryItemsSumAmountSum: TBCDField
      DisplayLabel = #1580#1605#1593
      FieldName = 'AmountSum'
      currency = True
    end
    object qryItemsSumAmountIn30: TBCDField
      DisplayLabel = #1580#1605#1593' '#1605#1586#1583' '#1605#1576#1606#1575'/*30'
      FieldName = 'AmountIn30'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryItemsAmountSumAnd30: TBCDField
      DisplayLabel = #1580#1605#1593' '#1603#1604
      FieldName = 'AmountSumAnd30'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object ppItemsSum: TppDBPipeline
    DataSource = srcItemsSum
    OpenDataSource = False
    UserName = 'ppItemsSum'
    Left = 608
    Top = 221
    MasterDataPipelineName = 'ppDBPipeline1'
    object ppField1: TppField
      FieldAlias = 'InterdictItemsID'
      FieldName = 'InterdictItemsID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppField2: TppField
      FieldAlias = 'InterdictID'
      FieldName = 'InterdictID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppField3: TppField
      FieldAlias = 'SalaryID'
      FieldName = 'SalaryID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppField4: TppField
      FieldAlias = 'Amount'
      FieldName = 'Amount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppField5: TppField
      FieldAlias = 'FirstMounth'
      FieldName = 'FirstMounth'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppField6: TppField
      FieldAlias = 'EndMounth'
      FieldName = 'EndMounth'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppField7: TppField
      FieldAlias = 'ExpenseType'
      FieldName = 'ExpenseType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppField8: TppField
      FieldAlias = 'UserID'
      FieldName = 'UserID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppField9: TppField
      FieldAlias = '_InfoName_L1'
      FieldName = '_InfoName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppField10: TppField
      FieldAlias = '_InfoName_L2'
      FieldName = '_InfoName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppField11: TppField
      FieldAlias = 'AccTopicCode'
      FieldName = 'AccTopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppField12: TppField
      FieldAlias = 'AccDetailCode'
      FieldName = 'AccDetailCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppField13: TppField
      FieldAlias = 'AccCTopicCode'
      FieldName = 'AccCTopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppField14: TppField
      FieldAlias = 'AccCTopicCode2'
      FieldName = 'AccCTopicCode2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppField15: TppField
      FieldAlias = 'ItemNote_L1'
      FieldName = 'ItemNote_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
  end
  object popPrint: TPopupMenu
    Left = 696
    Top = 328
    object AllClick1: TMenuItem
      Caption = 'AllClick Hint'
      Visible = False
      OnClick = AllClick1Click
    end
    object N11: TMenuItem
      Caption = #1670#1575#1662' '#1583#1608' '#1587#1591#1585#1740' A4'
      Hint = 'SalaryList_DayTime_New1.rtm'
      OnClick = AllClick1Click
    end
    object N22: TMenuItem
      Caption = #1670#1575#1662' '#1587#1607' '#1587#1591#1585#1740' A4'
      Hint = 'SalaryList_DayTime_New2.rtm'
      OnClick = AllClick1Click
    end
    object A41: TMenuItem
      Caption = #1670#1575#1662' '#1670#1607#1575#1585' '#1587#1591#1585#1740' A4'
      Hint = 'SalaryList_DayTime_New3.rtm'
      OnClick = AllClick1Click
    end
    object N21: TMenuItem
      Caption = #1670#1575#1662' '#1587#1607' '#1587#1591#1585#1740' A3'
      Hint = 'SalaryList_DayTime_New4.rtm'
      OnClick = AllClick1Click
    end
  end
end

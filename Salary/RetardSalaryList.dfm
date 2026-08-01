inherited RetardSalaryListF: TRetardSalaryListF
  Left = 395
  Top = 175
  Caption = #1604#1610#1587#1578' '#1605#1593#1608#1602' '#1581#1602#1608#1602' '#1576#1578#1601#1603#1610#1603' '#1605#1581#1604' '#1582#1583#1605#1578
  ClientWidth = 775
  ExplicitWidth = 791
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Width = 775
    ExplicitWidth = 775
    object Button1: TButton
      AlignWithMargins = True
      Left = 615
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actPrint
      Align = alRight
      TabOrder = 1
    end
    object DBNavigator2: TDBNavigator
      AlignWithMargins = True
      Left = 329
      Top = 4
      Width = 280
      Height = 33
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
      Width = 76
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
      Left = 85
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSort
      Align = alLeft
      Caption = #1576#1607' '#1578#1585#1578#1610#1576
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006A00
        00006A0000006A000000FF00FF006A0000006A0000006A000000FFFFFF00FF00
        FF00FF00FF00FF00FF0000580300FF00FF00FF00FF00FF00FF00FFFFFF006A6A
        6A006A000000FF00FF00FF00FF00FF00FF00980000006A6A6A00FF00FF00FF00
        FF00FF00FF00005803006AFF6A0000580300FF00FF00FF00FF00FF00FF00FF00
        FF006A6A6A006A0000006A0000006A0000006A000000FF00FF00FF00FF00FF00
        FF00FF00FF006AFF6A006AB650000084000000580300FF00FF00FFFFFF00FF00
        FF00FF00FF006A000000FF00FF00980000006A000000FF00FF00FFFFFF00FF00
        FF00FF00FF006AFF6A006AB650000084000000580300FF00FF00FFFFFF00FF00
        FF00FF00FF00980000006A0000006A000000FF00FF00FF00FF00FF00FF000058
        0300005803000058030000580300005803000058030000580300FF00FF00FF00
        FF00FF00FF006A6A6A006A0000006A6A6A00FF00FF00FF00FF00FFFFFF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0098000000FF00FF00FF00FF00FF00FF00FFFFFF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FFFFFF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF000000
        6A0000006A0000006A0000006A0000006A0000006A00FF00FF00FFFFFF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF000000
        6A0000006A00FF00FF00FF00FF00FF00FF000000B600FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF006A6A6A0000006A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000006A0000006A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF006A6A6A0000006A00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF000000
        6A0000006A00FF00FF00FF00FF0000006A0000006A00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF001100
        7B0011007B0011007B0011007B0011007B0011007B00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00}
      TabOrder = 4
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
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00636B
        7300C69C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006394B500218C
        EF002173B500CE9C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF004AB5FF0042A5
        FF00218CEF007B849400CE9C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0052BD
        FF005ABDFF00218CEF002173B500CE9C9400FF00FF00FF00FF00FF00FF00FF00
        FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0031A5
        FF0052BDFF0042A5FF00218CEF0084849400CE9C9400FF00FF00FF00FF00FF00
        FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FFFFFF0052BDFF005ABDFF003184D60052636B00FF00FF009C6B6B00CEA5
        9C00D6B5A500CE9C9C00C6949400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0031A5FF0052BDFF00C6CEDE009C9C9C00AD8C8400E7D6BD00FFFF
        D600FFFFDE00FFFFD600EFDEC600FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00C6ADAD00CEA59400FFE7BD00FFF7CE00FFFF
        D600FFFFD600FFFFDE00FFFFE700FFFFFF00C6A5A500FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00BD8C8C00EFDEB500F7D6AD00FFF7CE00FFFF
        D600FFFFDE00FFFFEF00FFFFF700FFFFFF00F7EFDE00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00E7CEAD00FFEFBD00F7CE9C00FFEFC600FFFF
        D600FFFFDE00FFFFF700FFFFF700FFFFDE00FFFFDE00C6949400FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00EFD6B500FFE7B500F7C68C00F7DEB500FFFF
        D600FFFFDE00FFFFEF00FFFFEF00FFFFDE00FFFFDE00BD9C8C00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00E7CEAD00FFEFBD00EFBD8400F7C69400FFEF
        C600FFFFD600FFFFD600FFFFD600FFFFD600FFFFDE00C6949400FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00D6ADA500FFEFBD00F7DEAD00F7CE9C00F7D6
        A500F7E7BD00FFFFD600FFFFD600FFFFD600FFFFD600FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00C69C8C00FFFFFF00FFFFFF00F7C6
        9400EFBD8400F7C69400F7D6AD00FFEFC600BD9C8C00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00EFEFE700FFFFEF00FFE7
        B500F7DEAD00FFE7B500FFEFBD00C69C9400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C69C
        8C00CEA59C00C69C9400FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 5
    end
    object BitBtn7: TBitBtn
      AlignWithMargins = True
      Left = 696
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
  end
  inherited Panel2: TPanel
    Width = 775
    ExplicitWidth = 304
    inherited ImgTemplate: TImage
      Left = 733
      ExplicitLeft = 737
    end
    inherited lblCaption: TLabel
      Left = 491
      Width = 238
      Caption = #1604#1610#1587#1578' '#1605#1593#1608#1602' '#1581#1602#1608#1602' '#1576#1578#1601#1603#1610#1603' '#1605#1581#1604' '#1582#1583#1605#1578
      ExplicitLeft = 491
      ExplicitWidth = 238
    end
    inherited lblBaseDate: TLabel
      Left = 343
      ExplicitLeft = 343
    end
    inline frArchive: TfrArchiveID
      Left = 8
      Top = 8
      Width = 460
      Height = 25
      TabOrder = 0
      ExplicitLeft = 8
      ExplicitTop = 8
      inherited cmbLastArchiveID: TComboBox
        OnChange = frArchivecmbFirstArchiveIDChange
      end
      inherited cmbFirstArchiveID: TComboBox
        OnChange = frArchivecmbFirstArchiveIDChange
      end
    end
  end
  inherited Panel3: TPanel
    Width = 775
    ExplicitWidth = 775
    object ToolBar1: TToolBar
      Left = 2
      Top = 2
      Width = 771
      Height = 36
      BorderWidth = 2
      ButtonHeight = 21
      ButtonWidth = 54
      Caption = 'ToolBar1'
      EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
      EdgeInner = esNone
      EdgeOuter = esNone
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
      Width = 771
      Height = 383
      Align = alClient
      Color = clCream
      DataSource = srcSalary
      DynProps = <>
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
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
      HorzScrollBar.ExtraPanel.NavigatorButtons = [nbFirstEh, nbPriorEh, nbNextEh, nbLastEh, nbRefreshEh]
      HorzScrollBar.ExtraPanel.Visible = True
      IndicatorTitle.ShowDropDownSign = True
      IndicatorTitle.TitleButton = True
      OddRowColor = clGradientInactiveCaption
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ParentFont = False
      ReadOnly = True
      RowHeight = 21
      SearchPanel.Enabled = True
      SearchPanel.FilterOnTyping = True
      SortLocal = True
      SumList.Active = True
      TabOrder = 0
      ActiveSearchPanel = False
      SelectedSum = True
      SelectFooterIndex = 0
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
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
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendtoExcelExecute
    end
    object actSort: TAction
      Caption = #1576#1607' '#1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1610#1578
      OnExecute = actFilterExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 144
  end
  object qrysalary: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterOpen = qrysalaryAfterOpen
    Parameters = <>
    Left = 64
    Top = 200
  end
  object srcSalary: TDataSource
    DataSet = qrysalary
    Left = 176
    Top = 288
  end
  object qryWage: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'FirstArchiveID'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'LastArchiveID'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'LabelIDFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'LabelIDTo'
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
        Name = 'MounthFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'MounthTo'
        DataType = ftWideString
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
        Name = 'FromPersonelNo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ToPersonelNo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'EmployTypeIDFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'EmployTypeIDTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      
        'SELECT     RetardFixedCalculated.SalaryID, FormsInfo_1.InfoName_' +
        'L1, FormsInfo_1.FormInfoID'
      ''
      
        'FROM Pay.RetardFixedCalculated( :FirstArchiveID , :LastArchiveID' +
        ' , DEFAULT  ,:LabelIDFrom  , :LabelIDTo , :YearIDFrom , :YearIDT' +
        'o ) AS RetardFixedCalculated LEFT OUTER JOIN'
      'Pay.FunctionItemsList() AS FunctionItemsList_1 ON'
      'RetardFixedCalculated.YearID = FunctionItemsList_1.YearID AND'
      'RetardFixedCalculated.Mounth = FunctionItemsList_1.Mounth AND'
      
        'RetardFixedCalculated.PersonelNO = FunctionItemsList_1.PersonelN' +
        'o LEFT OUTER JOIN'
      
        'Pay.Interdicts ON RetardFixedCalculated.PersonelNO = Interdicts.' +
        'PersonelNo LEFT OUTER JOIN'
      
        'Pay.PersonelInfo ON RetardFixedCalculated.PersonelNO = PersonelI' +
        'nfo.PersonelNo LEFT OUTER JOIN'
      
        'Pay.FormsInfo AS FormsInfoOfficeCode ON RetardFixedCalculated.Of' +
        'ficeCode = FormsInfoOfficeCode.FormInfoID'
      
        'LEFT OUTER JOIN Pay.FormsInfo AS FormsInfoEmployTypeID ON Interd' +
        'icts.EmployTypeID =FormsInfoEmployTypeID.FormInfoID'
      ''
      
        'LEFT OUTER JOIN Pay.FormsInfo FormsInfo_1 ON RetardFixedCalculat' +
        'ed.SalaryID = FormsInfo_1.FormInfoID'
      ''
      
        'WHERE(RetardFixedCalculated.Mounth BETWEEN :MounthFrom AND :Moun' +
        'thTo )'
      
        'AND (FormsInfoOfficeCode.InfoID BETWEEN :OfficeCodeFrom AND :Off' +
        'iceCodeTo)'
      
        'AND (RetardFixedCalculated.PersonelNO BETWEEN :FromPersonelNo AN' +
        'D :ToPersonelNo)'
      'AND (InterdicType = 0 )'
      
        'AND (FormsInfoEmployTypeID.InfoID BETWEEN :EmployTypeIDFrom AND ' +
        ':EmployTypeIDTo )'
      ''
      ''
      ''
      '  AND   (RetardFixedCalculated.ShowListKind = 1)'
      
        'GROUP BY RetardFixedCalculated.SalaryID, FormsInfo_1.InfoName_L1' +
        ', FormsInfo_1.FormInfoID'
      'HAVING      (SUM(RetardFixedCalculated.price) > 10) OR'
      '                      (SUM(RetardFixedCalculated.price) < - 10)'
      ' '
      'ORDER BY RetardFixedCalculated.SalaryID'
      ''
      ''
      ''
      ''
      ''
      ' '
      ' '
      ' ')
    Left = 249
    Top = 143
  end
  object qryDec: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'FirstArchiveID'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'LastArchiveID'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'LabelIDFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'LabelIDTo'
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
        Name = 'MounthFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'MounthTo'
        DataType = ftWideString
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
        Name = 'FromPersonelNo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ToPersonelNo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'EmployTypeIDFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'EmployTypeIDTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      
        'SELECT   RetardFixedCalculated.SalaryID, MAX(CASE WHEN Insurance' +
        'CONSTinfo.InsuranceLabel_L1 IS NULL'
      
        '              THEN FormsInfo.InfoName_L1 ELSE InsuranceCONSTinfo' +
        '.InsuranceLabel_L1 END) AS InfoName_L1,FormsInfo.FormInfoID'
      ''
      ''
      ''
      
        'FROM Pay.RetardFixedCalculated( :FirstArchiveID , :LastArchiveID' +
        ' , DEFAULT  ,:LabelIDFrom  , :LabelIDTo , :YearIDFrom , :YearIDT' +
        'o ) AS RetardFixedCalculated LEFT OUTER JOIN'
      'Pay.FunctionItemsList() AS FunctionItemsList_1 ON'
      'RetardFixedCalculated.Mounth = FunctionItemsList_1.Mounth AND'
      'RetardFixedCalculated.YearID = FunctionItemsList_1.YearID AND'
      
        'RetardFixedCalculated.PersonelNO = FunctionItemsList_1.PersonelN' +
        'o LEFT OUTER JOIN'
      
        'Pay.Interdicts ON RetardFixedCalculated.PersonelNO = Interdicts.' +
        'PersonelNo LEFT OUTER JOIN'
      
        'Pay.PersonelInfo ON RetardFixedCalculated.PersonelNO = PersonelI' +
        'nfo.PersonelNo LEFT OUTER JOIN'
      
        'Pay.FormsInfo AS FormsInfoOfficeCode ON RetardFixedCalculated.Of' +
        'ficeCode = FormsInfoOfficeCode.FormInfoID'
      
        'LEFT OUTER JOIN Pay.FormsInfo AS FormsInfoEmployTypeID ON Interd' +
        'icts.EmployTypeID =FormsInfoEmployTypeID.FormInfoID'
      ''
      
        'LEFT OUTER JOIN Pay.FormsInfo FormsInfo_1 ON RetardFixedCalculat' +
        'ed.SalaryID = FormsInfo_1.FormInfoID'
      ''
      
        '                      LEFT OUTER JOIN Pay.InsuranceCONSTinfo RIG' +
        'HT OUTER JOIN'
      
        '                     Pay.FormsInfo ON InsuranceCONSTinfo.FormInf' +
        'oID =FormsInfo.FormInfoID ON'
      
        '                     RetardFixedCalculated.SalaryID =FormsInfo.F' +
        'ormInfoID'
      ''
      ''
      
        'WHERE(RetardFixedCalculated.Mounth  BETWEEN :MounthFrom AND :Mou' +
        'nthTo )'
      
        'AND (FormsInfoOfficeCode.InfoID BETWEEN :OfficeCodeFrom AND :Off' +
        'iceCodeTo)'
      
        'AND (RetardFixedCalculated.PersonelNO BETWEEN :FromPersonelNo AN' +
        'D :ToPersonelNo)'
      'AND (InterdicType = 0 )'
      
        'AND (FormsInfoEmployTypeID.InfoID BETWEEN :EmployTypeIDFrom AND ' +
        ':EmployTypeIDTo )'
      ''
      ''
      ''
      
        'GROUP BY RetardFixedCalculated.SalaryID,FormsInfo.InfoName_L1,Fo' +
        'rmsInfo.FormInfoID'
      ''
      'HAVING      (SUM(RetardFixedCalculated.price) > 10) OR'
      '                      (SUM(RetardFixedCalculated.price) < - 10)'
      ''
      'ORDER BY RetardFixedCalculated.SalaryID'
      ' '
      ' ')
    Left = 392
    Top = 132
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcSalary
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 696
    Top = 165
  end
  object PopList4Print: TPopupMenu
    Left = 584
    Top = 349
    object N11: TMenuItem
      Caption = #1670#1575#1662' '#1576#1578#1601#1603#1610#1603' '#1608#1575#1581#1583' '#1607#1575
      Hint = 'RetardSalaryList_office.rtm'
      OnClick = ALLClick
    end
    object N21: TMenuItem
      Caption = #1670#1575#1662' '#1576#1575' '#1603#1604#1610#1607' '#1608#1575#1581#1583#1607#1575
      Hint = 'RetardSalaryList.rtm'
      OnClick = ALLClick
    end
    object ALL: TMenuItem
      Caption = 'ALL'
      Visible = False
      OnClick = ALLClick
    end
    object N1: TMenuItem
      Caption = #1670#1575#1662' '#1607#1605#1607' '#1587#1578#1608#1606' '#1607#1575
      Hint = 'RetardSalaryListUnLimit.rtm'
      OnClick = ALLClick
    end
    object RetardSalaryList2: TMenuItem
      Caption = #1670#1575#1662'2'
      Hint = 'RetardSalaryList2.rtm'
      OnClick = ALLClick
    end
  end
  object ppDBPipeline2: TppDBPipeline
    OpenDataSource = False
    UserName = 'DBPipeline2'
    Left = 544
    Top = 213
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
    Template.FileName = 'D:\Projects\Fara2010\Salary\Exe\Report\RetardSalaryList2.rtm'
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
    Left = 664
    Top = 256
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
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 374651
        mmTop = 36777
        mmWidth = 31221
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
        Transparent = True
        mmHeight = 4233
        mmLeft = 366449
        mmTop = 36513
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
        mmTop = 22754
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
        mmTop = 22754
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
        mmTop = 22754
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
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 22225
        mmTop = 27781
        mmWidth = 384176
        BandType = 0
        LayerName = Foreground
      end
      object ppLine12: TppLine
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
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 20373
        mmLeft = 347928
        mmTop = 21960
        mmWidth = 2381
        BandType = 0
        LayerName = Foreground
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 20638
        mmLeft = 306124
        mmTop = 21696
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 20638
        mmLeft = 285221
        mmTop = 21696
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine18: TppLine
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
      object ppLine19: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 20638
        mmLeft = 243946
        mmTop = 21696
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine20: TppLine
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
      object ppLine21: TppLine
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
      object ppLabel37: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        OnGetText = ppLblCompanyNameGetText
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
      object ppLabel38: TppLabel
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
        mmTop = 22754
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
        mmTop = 22754
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object ppLine22: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line16'
        Border.mmPadding = 0
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 20638
        mmLeft = 105834
        mmTop = 21696
        mmWidth = 2117
        BandType = 0
        LayerName = Foreground
      end
      object ppLine23: TppLine
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
      object ppLine34: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line34'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 20638
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
        mmHeight = 20638
        mmLeft = 180446
        mmTop = 21696
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine35: TppLine
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
        mmLeft = 129117
        mmTop = 22754
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
        mmTop = 22754
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
        mmTop = 36777
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
        mmLeft = 106627
        mmTop = 29369
        mmWidth = 21431
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
        Caption = '7'
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
        Caption = '8'
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
        Caption = '3'
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
        mmLeft = 84402
        mmTop = 36248
        mmWidth = 20902
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
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 63500
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
        Caption = '9'
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
        Caption = '5'
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
        Caption = '10'
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
        mmLeft = 22490
        mmTop = 22754
        mmWidth = 19050
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 20638
        mmLeft = 41804
        mmTop = 21696
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line18'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 20638
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
        mmLeft = 22490
        mmTop = 36777
        mmWidth = 19050
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
        mmLeft = 794
        mmTop = 23283
        mmWidth = 20902
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
        mmLeft = 794
        mmTop = 28840
        mmWidth = 20902
        BandType = 0
        LayerName = Foreground
      end
      object ppLine36: TppLine
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
        mmLeft = 129117
        mmTop = 36777
        mmWidth = 23813
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
        mmTop = 22754
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
        mmTop = 22754
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
        mmLeft = 180975
        mmTop = 22754
        mmWidth = 21167
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
        mmLeft = 180975
        mmTop = 29369
        mmWidth = 21167
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
        mmLeft = 180975
        mmTop = 37571
        mmWidth = 21167
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
        mmLeft = 154252
        mmTop = 22754
        mmWidth = 25665
        BandType = 0
        LayerName = Foreground
      end
      object ppLine37: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line105'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 20373
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
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        Border.mmPadding = 0
        Caption = #1605#1588#1582#1589#1575#1578' '#1662#1585#1587#1606#1604
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
        mmLeft = 373222
        mmTop = 21431
        mmWidth = 26670
        BandType = 0
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line42'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 22225
        mmTop = 35454
        mmWidth = 384176
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
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
        mmLeft = 84402
        mmTop = 29369
        mmWidth = 20902
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        OnGetText = AllD_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = '1'
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
        mmLeft = 84402
        mmTop = 22754
        mmWidth = 20902
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        OnGetText = AllW_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = '26'
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
        mmLeft = 154252
        mmTop = 30163
        mmWidth = 25665
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel36: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label25'
        OnGetText = AllW_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = '27'
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
        mmLeft = 154252
        mmTop = 37571
        mmWidth = 25665
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'd101'
        OnGetText = AllD_GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = '11'
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
        mmLeft = 22490
        mmTop = 29369
        mmWidth = 19050
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel40: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label40'
        OnGetText = plblAmountGetText
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
        mmHeight = 4233
        mmLeft = 349251
        mmTop = 22754
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel41: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label401'
        OnGetText = plblAmountGetText
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
        mmHeight = 4233
        mmLeft = 349251
        mmTop = 29898
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel42: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label42'
        OnGetText = plblAmountGetText
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
        mmHeight = 4233
        mmLeft = 349251
        mmTop = 36777
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      PrintCount = 10
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 19844
      mmPrintPosition = 0
      object dw1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw1'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmLeft = 327819
        mmTop = 0
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object dw2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw2'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmLeft = 327819
        mmTop = 6879
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object dw4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw4'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmLeft = 306917
        mmTop = 0
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object dw3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw3'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmLeft = 327819
        mmTop = 13494
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object dw7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw7'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmTop = 0
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object dw6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw6'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmLeft = 306917
        mmTop = 13229
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object dw5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw5'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmLeft = 306917
        mmTop = 6879
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object dw8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw8'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmTop = 0
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object dw13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw13'
        Border.mmPadding = 0
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
        mmTop = 0
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object dw12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw12'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 365919
        mmTop = 12700
        mmWidth = 40481
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'OfficeCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 366184
        mmTop = 12965
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
        mmTop = 0
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
        mmTop = 13494
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object dd1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dd1'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmLeft = 84402
        mmTop = 0
        mmWidth = 20902
        BandType = 4
        LayerName = Foreground
      end
      object dd6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dd6'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmLeft = 63500
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
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmLeft = 63500
        mmTop = 0
        mmWidth = 20108
        BandType = 4
        LayerName = Foreground
      end
      object dd3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dd3'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmLeft = 84402
        mmTop = 13758
        mmWidth = 20902
        BandType = 4
        LayerName = Foreground
      end
      object dd7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dd7'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmTop = 0
        mmWidth = 20108
        BandType = 4
        LayerName = Foreground
      end
      object dd10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dd10'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmLeft = 22490
        mmTop = 0
        mmWidth = 19050
        BandType = 4
        LayerName = Foreground
      end
      object dd9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dd9'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmLeft = 63500
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
        mmHeight = 8467
        mmLeft = 794
        mmTop = 6350
        mmWidth = 20902
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
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 129117
        mmTop = 14023
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
        mmLeft = 22490
        mmTop = 13758
        mmWidth = 19050
        BandType = 4
        LayerName = Foreground
      end
      object dw14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw14'
        Border.mmPadding = 0
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
      object ppLine38: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line83'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 19844
        mmLeft = 347928
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine39: TppLine
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
      object ppLine40: TppLine
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
      object dw15: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw15'
        Border.mmPadding = 0
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
      object dw21: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw21'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
      object dw16: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw16'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmTop = 0
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object dw17: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw17'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
      object dw22: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw22'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmTop = 0
        mmWidth = 21167
        BandType = 4
        LayerName = Foreground
      end
      object dw19: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw19'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmTop = 0
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object dw18: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw18'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
      object dw20: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw20'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
      object ppLine45: TppLine
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
      object ppLine46: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line106'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 19844
        mmLeft = 306124
        mmTop = 0
        mmWidth = 3969
        BandType = 4
        LayerName = Foreground
      end
      object ppLine50: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line108'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 19844
        mmLeft = 285221
        mmTop = 0
        mmWidth = 3969
        BandType = 4
        LayerName = Foreground
      end
      object ppLine51: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line109'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 19844
        mmLeft = 264584
        mmTop = 0
        mmWidth = 3969
        BandType = 4
        LayerName = Foreground
      end
      object ppLine52: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line110'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 19844
        mmLeft = 243946
        mmTop = 0
        mmWidth = 3969
        BandType = 4
        LayerName = Foreground
      end
      object dw23: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw23'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmTop = 7144
        mmWidth = 21167
        BandType = 4
        LayerName = Foreground
      end
      object dw24: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw24'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmTop = 13229
        mmWidth = 21167
        BandType = 4
        LayerName = Foreground
      end
      object dw25: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw25'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmLeft = 154252
        mmTop = 0
        mmWidth = 25665
        BandType = 4
        LayerName = Foreground
      end
      object dw26: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw26'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmLeft = 154252
        mmTop = 6879
        mmWidth = 25665
        BandType = 4
        LayerName = Foreground
      end
      object dd2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dd2'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmLeft = 84402
        mmTop = 7408
        mmWidth = 20902
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        Border.mmPadding = 0
        DataField = 'PersonName'
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
        mmTop = 5821
        mmWidth = 40481
        BandType = 4
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line46'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 22225
        mmTop = 5821
        mmWidth = 343430
        BandType = 4
        LayerName = Foreground
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line52'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 23283
        mmTop = 12435
        mmWidth = 384176
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'PersonelNO'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7673
        mmLeft = 365919
        mmTop = 0
        mmWidth = 40481
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
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
        mmLeft = 129117
        mmTop = 0
        mmWidth = 23813
        BandType = 4
        LayerName = Foreground
      end
      object dw27: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dw27'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmLeft = 154252
        mmTop = 13758
        mmWidth = 25665
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
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
        mmLeft = 106627
        mmTop = 7673
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object dd11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dd101'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmLeft = 22490
        mmTop = 7673
        mmWidth = 19050
        BandType = 4
        LayerName = Foreground
      end
      object Amount1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'Amount1'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmLeft = 349251
        mmTop = 265
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground
      end
      object Amount2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'Amount2'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmLeft = 349251
        mmTop = 6879
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground
      end
      object Amount3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'Amount3'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmLeft = 349251
        mmTop = 12965
        mmWidth = 15346
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
      mmHeight = 43127
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 23548
        mmLeft = 0
        mmTop = 0
        mmWidth = 407195
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel39: TppLabel
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
        mmHeight = 23283
        mmLeft = 83873
        mmTop = 0
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
        mmHeight = 23283
        mmLeft = 105834
        mmTop = 0
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
        mmHeight = 23283
        mmLeft = 128323
        mmTop = 0
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
        mmHeight = 23283
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
        mmHeight = 23283
        mmLeft = 180446
        mmTop = 0
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
        mmHeight = 23283
        mmLeft = 202407
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
        mmHeight = 23283
        mmLeft = 223044
        mmTop = 0
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
        mmHeight = 23283
        mmLeft = 243946
        mmTop = 0
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
        mmHeight = 23283
        mmLeft = 264584
        mmTop = 0
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
        mmHeight = 23283
        mmLeft = 285221
        mmTop = 0
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
        mmHeight = 23283
        mmLeft = 306124
        mmTop = 0
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
        mmHeight = 23283
        mmLeft = 327026
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
        mmHeight = 23283
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
        mmHeight = 23283
        mmLeft = 41540
        mmTop = 0
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
        mmHeight = 23283
        mmLeft = 62971
        mmTop = 0
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
        mmHeight = 6350
        mmLeft = 794
        mmTop = 10583
        mmWidth = 20902
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
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 366184
        mmTop = 16140
        mmWidth = 16404
        BandType = 7
        LayerName = Foreground
      end
      object sw_col1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col1'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmTop = 16140
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground
      end
      object sw_col8: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col8'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmTop = 16140
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground
      end
      object sw_col11: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col11'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmTop = 16140
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground
      end
      object sw_col7: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col7'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmTop = 16140
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground
      end
      object sw_col14: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col14'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmLeft = 129117
        mmTop = 1058
        mmWidth = 23813
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
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 389467
        mmTop = 16404
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
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmTop = 16140
        mmWidth = 20108
        BandType = 7
        LayerName = Foreground
      end
      object sd_col8: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sd_col8'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmTop = 16140
        mmWidth = 20108
        BandType = 7
        LayerName = Foreground
      end
      object sd_col1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sd_col1'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmLeft = 84402
        mmTop = 1058
        mmWidth = 20902
        BandType = 7
        LayerName = Foreground
      end
      object sd_col3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sd_col3'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmLeft = 193146
        mmTop = 16140
        mmWidth = 20902
        BandType = 7
        LayerName = Foreground
      end
      object sd_col4: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sd_col4'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmTop = 1588
        mmWidth = 20108
        BandType = 7
        LayerName = Foreground
      end
      object sd_col2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sd_col2'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmLeft = 84402
        mmTop = 8467
        mmWidth = 20902
        BandType = 7
        LayerName = Foreground
      end
      object sd_col5: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sd_col5'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmTop = 8996
        mmWidth = 20108
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
        mmTop = 1058
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
        mmLeft = 22490
        mmTop = 16140
        mmWidth = 19050
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
        mmTop = 16140
        mmWidth = 21431
        BandType = 7
        LayerName = Foreground
      end
      object sd_col10: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc301'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmLeft = 22490
        mmTop = 1588
        mmWidth = 19050
        BandType = 7
        LayerName = Foreground
      end
      object sw_col15: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col15'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmTop = 16140
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground
      end
      object sw_col20: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col20'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
      object sw_col16: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col16'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
      object sw_col18: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col18'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmTop = 16140
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground
      end
      object sw_col19: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col19'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
      object sw_col17: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col17'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
      object sw_col21: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col21'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmTop = 16140
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground
      end
      object sw_col22: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col22'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmLeft = 180975
        mmTop = 1058
        mmWidth = 21167
        BandType = 7
        LayerName = Foreground
      end
      object sw_col23: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col23'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmLeft = 180975
        mmTop = 8996
        mmWidth = 21167
        BandType = 7
        LayerName = Foreground
      end
      object sw_col24: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col24'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmLeft = 180975
        mmTop = 16140
        mmWidth = 21167
        BandType = 7
        LayerName = Foreground
      end
      object sw_col25: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col25'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmLeft = 154252
        mmTop = 1058
        mmWidth = 25665
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
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 129117
        mmTop = 16140
        mmWidth = 23813
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
      object ppLine63: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line63'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 23283
        mmLeft = 347928
        mmTop = 0
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
        mmLeft = 22225
        mmTop = 7408
        mmWidth = 384176
        BandType = 7
        LayerName = Foreground
      end
      object ppLine41: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line59'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 22225
        mmTop = 15081
        mmWidth = 384176
        BandType = 7
        LayerName = Foreground
      end
      object ppLine59: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 23283
        mmLeft = 365390
        mmTop = 0
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object sw_col26: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col26'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmLeft = 154252
        mmTop = 8467
        mmWidth = 25665
        BandType = 7
        LayerName = Foreground
      end
      object sw_col27: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sw_col27'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmLeft = 154252
        mmTop = 16140
        mmWidth = 25665
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc6: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc6'
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
        mmLeft = 106627
        mmTop = 8731
        mmWidth = 21431
        BandType = 7
        LayerName = Foreground
      end
      object sd_col11: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'sd_col11'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmLeft = 22490
        mmTop = 8731
        mmWidth = 19050
        BandType = 7
        LayerName = Foreground
      end
      object Calc_Amant1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'Calc_Amant1'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmLeft = 349251
        mmTop = 1323
        mmWidth = 14817
        BandType = 7
        LayerName = Foreground
      end
      object Calc_Amant2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'Calc_Amant2'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmLeft = 349251
        mmTop = 8996
        mmWidth = 14817
        BandType = 7
        LayerName = Foreground
      end
      object Calc_Amant3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'Calc_Amant3'
        OnGetText = ALLSetDataFieldGetText
        Border.mmPadding = 0
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
        mmLeft = 349251
        mmTop = 16404
        mmWidth = 14817
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
end

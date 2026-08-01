inherited DecExtOnMounthF: TDecExtOnMounthF
  Left = 335
  Top = 126
  Caption = #1604#1610#1587#1578' '#1605#1585#1582#1589#1610' ( '#1605#1575#1607#1610#1575#1606#1607'  )'#8207
  ClientHeight = 443
  ClientWidth = 853
  ExplicitWidth = 861
  ExplicitHeight = 474
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 402
    Width = 853
    ExplicitTop = 402
    ExplicitWidth = 853
    object Button1: TButton
      AlignWithMargins = True
      Left = 693
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
      Left = 490
      Top = 4
      Width = 197
      Height = 33
      DataSource = srcDecExtOnMounth
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
      Left = 774
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
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 328
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actChart
      Align = alLeft
      Caption = #1606#1605#1608#1583#1575#1585
      TabOrder = 7
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 409
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
    Width = 853
    Height = 65
    ExplicitWidth = 853
    ExplicitHeight = 65
    DesignSize = (
      853
      65)
    inherited ImgTemplate: TImage
      Left = 819
      ExplicitLeft = 870
    end
    inherited lblCaption: TLabel
      Left = 641
      Width = 166
      Height = 45
      Caption = #1604#1610#1587#1578' '#1605#1585#1582#1589#1610' ( '#1605#1575#1607#1610#1575#1606#1607'  )'#8207
      ExplicitLeft = 641
      ExplicitWidth = 166
    end
    object RadioGroup1: TRadioGroup
      Left = 1
      Top = 1
      Width = 142
      Height = 63
      Align = alLeft
      ItemIndex = 0
      Items.Strings = (
        #1576#1600#1600#1600#1600#1600#1575' '#1605#1575#1606#1583#1607' '#1575#1576#1578#1583#1575#1610' '#1587#1575#1604
        #1576#1583#1608#1606' '#1605#1575#1606#1583#1607' '#1575#1576#1578#1583#1575#1610' '#1587#1575#1604)
      TabOrder = 0
      OnClick = RadioGroup1Click
    end
  end
  inherited Panel3: TPanel
    Top = 65
    Width = 853
    Height = 337
    ExplicitTop = 65
    ExplicitWidth = 853
    ExplicitHeight = 337
    object ToolBar1: TToolBar
      Left = 2
      Top = 2
      Width = 849
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
      Width = 849
      Height = 297
      Align = alClient
      Color = clCream
      DataSource = srcDecExtOnMounth
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
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
          FieldName = 'OfficeCode'
          Footers = <>
          Width = 39
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'OfficeName'
          Footers = <>
          Width = 72
        end
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
          FieldName = 'name_L1'
          Footers = <>
          Width = 21
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'name_L2'
          Footers = <>
          Width = 32
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'lastName_L1'
          Footers = <>
          Width = 75
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'lastName_L2'
          Footers = <>
          Width = 51
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'SumFunctionDay'
          Footers = <>
          Width = 33
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'InfoName_L1'
          Footers = <>
          Width = 59
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'InfoName_L2'
          Footers = <>
          Width = 52
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'AllDay00'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Day'
          Footers = <>
          Width = 18
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Time'
          Footers = <>
          Width = 38
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Minute_'
          Footers = <>
          Width = 30
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'AllTime'
          Footers = <>
          Width = 134
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'AllDay'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'RemainDay'
          Footers = <>
          Width = 75
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Talab'
          Footers = <>
          Width = 65
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TalabPrice'
          Footers = <>
          Width = 91
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Bedehi'
          Footers = <>
          Width = 75
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'BedehiPrice'
          Footers = <>
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  inherited ActionList: TActionList
    Left = 416
    Top = 6
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
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actPrintVijeh: TAction
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
      OnExecute = actPrintVijehExecute
    end
    object actChart: TAction
      Caption = #1606#1605#1608#1583#1575#1585
      OnExecute = actChartExecute
    end
    object actSMS: TAction
      Caption = #1575#1585#1587#1575#1604' '#1662#1610#1575#1605#1603
      OnExecute = actSMSExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 472
    Top = 4
  end
  object qryDecExtOnMounth: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'OfficeCodes'
        Size = -1
        Value = Null
      end
      item
        Name = 'EmployTypeFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'EmployTypeTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'MounthFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'MounthTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'PersonelNoFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'PersonelNoTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'InfoIDFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'InfoIDTo'
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
        Name = 'ProjectIDFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'ProjectIDTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'FormType'
        Size = -1
        Value = Null
      end
      item
        Name = 'InsuranceIDs'
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
      end
      item
        Name = 'InfoID1From'
        Size = -1
        Value = Null
      end
      item
        Name = 'InfoID1To'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearID1From'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearID1To'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT        OfficeCode, OfficeName, Fn_DecExtOnMounth.Personel' +
        'No, name_L1, name_L2, Mobile, lastName_L1, lastName_L2,AllDay00,' +
        ' InfoName_L1, InfoName_L2, Day, Time, Minute_, AllTime, AllDay, ' +
        'RemainDay, Talab, TalabPrice, Bedehi,'
      '                         BedehiPrice, SumFunctionDay'
      
        'FROM            Pay.Fn_DecExtOnMounth( :OfficeCodes , :EmployTyp' +
        'eFrom  , :EmployTypeTo , :MounthFrom  , :MounthTo ,'
      
        ':PersonelNoFrom , :PersonelNoTo , :InfoIDFrom , :InfoIDTo , :Per' +
        'sonelStateFrom , :PersonelStateTo , :ProjectIDFrom , :ProjectIDT' +
        'o  ,:FormType , :InsuranceIDs , :YearIDFrom , :YearIDTo  ) AS Fn' +
        '_DecExtOnMounth'
      'left join  ('#9#9#9'SELECT PersonelDecExt.PersonelNo'
      #9#9#9#9',ROUND(ROUND(SUM(('
      #9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9'WHEN 0'
      #9#9#9#9#9#9#9#9#9#9'THEN IsNull(PersonelDecExt.DayQuntity, 0)'
      #9#9#9#9#9#9#9#9#9'ELSE 0'
      #9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9')) + ROUND(SUM(('
      #9#9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9#9'WHEN 0'
      #9#9#9#9#9#9#9#9#9#9#9'THEN PersonelDecExt.DayTime'
      #9#9#9#9#9#9#9#9#9#9'ELSE 0'
      #9#9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9#9')) + SUM(('
      #9#9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9#9'WHEN 0'
      #9#9#9#9#9#9#9#9#9#9#9'THEN PersonelDecExt.Minute_'
      #9#9#9#9#9#9#9#9#9#9'ELSE 0'
      #9#9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9#9')) / 60, 2) / FormsInfo_1.Amount, 2), 2) AS AllDay00'
      ''
      #9#9#9'FROM Pay.PersonelDecExt'
      
        #9#9#9'LEFT JOIN Pay.FormsInfo AS FormsInfo_1 ON PersonelDecExt.Form' +
        'InfoID = FormsInfo_1.FormInfoID'
      #9#9#9'WHERE'
      #9#9#9#9#9' (FirstMounth = 0) AND (EndMounth = 0)'
      ''
      #9#9#9#9'AND (FormsInfo_1.FormType = 16)'
      #9#9#9#9'AND ('
      #9#9#9#9#9'FormsInfo_1.InfoID BETWEEN :InfoID1From'
      #9#9#9#9#9#9'AND :InfoID1To'
      #9#9#9#9#9')'
      #9#9#9#9'AND ('
      #9#9#9#9#9'PersonelDecExt.YearID BETWEEN :YearID1From'
      #9#9#9#9#9#9'AND :YearID1To'
      #9#9#9#9#9')'
      ''
      #9#9#9'GROUP BY PersonelDecExt.PersonelNo'
      #9#9#9#9',FormsInfo_1.StandardDays'
      #9#9#9#9',FormsInfo_1.StandardTimes'
      #9#9#9#9',FormsInfo_1.Amount'
      
        #9#9#9')FirstYear ON FirstYear.PersonelNo = Fn_DecExtOnMounth.Person' +
        'elNo'
      '')
    Left = 176
    Top = 184
    object qryDecExtOnMounthOfficeCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1608#1575#1581#1583
      FieldName = 'OfficeCode'
    end
    object qryDecExtOnMounthOfficeName: TStringField
      Tag = 3
      DisplayLabel = #1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
      FieldName = 'OfficeName'
      Size = 255
    end
    object qryDecExtOnMounthPersonelNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610
      FieldName = 'PersonelNo'
    end
    object qryDecExtOnMounthname_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605
      FieldName = 'name_L1'
      Size = 25
    end
    object qryDecExtOnMounthname_L2: TStringField
      DisplayLabel = 'name'
      FieldName = 'name_L2'
      Size = 25
    end
    object qryDecExtOnMounthlastName_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
      FieldName = 'lastName_L1'
      Size = 30
    end
    object qryDecExtOnMounthlastName_L2: TStringField
      DisplayLabel = 'lastName'
      FieldName = 'lastName_L2'
      Size = 30
    end
    object qryDecExtOnMounthInfoName_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1605#1585#1582#1589#1610
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object qryDecExtOnMounthInfoName_L2: TStringField
      DisplayLabel = 'InfoName'
      FieldName = 'InfoName_L2'
      Size = 255
    end
    object qryDecExtOnMounthAllDay00: TFloatField
      Tag = 3
      DisplayLabel = #1605#1575#1606#1583#1607' '#1575#1576#1578#1583#1575#1740' '#1587#1575#1604
      FieldName = 'AllDay00'
      ReadOnly = True
      OnGetText = AllFloatToTimeGetText
    end
    object qryDecExtOnMounthDay: TFloatField
      Tag = 3
      DisplayLabel = #1585#1608#1586
      FieldName = 'Day'
    end
    object qryDecExtOnMounthTime: TFloatField
      Tag = 3
      DisplayLabel = #1587#1575#1593#1578
      FieldName = 'Time'
    end
    object qryDecExtOnMounthMinute_: TFloatField
      Tag = 3
      DisplayLabel = #1583#1602#1610#1602#1607
      FieldName = 'Minute_'
    end
    object qryDecExtOnMounthAllTime: TFloatField
      Tag = 3
      DisplayLabel = #1580#1605#1593' ('#1587#1575#1593#1578'+'#1583#1602#1610#1602#1607')'#8207#1587#1575#1593#1578
      FieldName = 'AllTime'
      ReadOnly = True
      OnGetText = AllFloatToTimeGetText
    end
    object qryDecExtOnMounthAllDay: TFloatField
      Tag = 3
      DisplayLabel = #1580#1605#1593' '#1603#1604'('#1585#1608#1586'+'#1587#1575#1593#1578'+'#1583#1602#1610#1602#1607')'#8207#1585#1608#1586
      FieldName = 'AllDay'
      ReadOnly = True
      OnGetText = AllFloatToTimeGetText
    end
    object qryDecExtOnMounthRemainDay: TFloatField
      DisplayLabel = #1576#1575#1602#1610#1605#1575#1606#1583#1607' ('#1585#1608#1586')'#8207
      FieldName = 'RemainDay'
      ReadOnly = True
      OnGetText = AllFloatToTimeGetText
      DisplayFormat = '0.00;(0.00)'
    end
    object qryDecExtOnMounthTalab: TFloatField
      DisplayLabel = #1591#1604#1576' '#1605#1585#1582#1589#1610
      FieldName = 'Talab'
      ReadOnly = True
      OnGetText = AllFloatToTimeGetText
    end
    object qryDecExtOnMounthTalabPrice: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1591#1604#1576' '#1605#1585#1582#1589#1610
      FieldName = 'TalabPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryDecExtOnMounthBedehi: TFloatField
      DisplayLabel = #1576#1583#1607#1610' '#1605#1585#1582#1589#1610
      FieldName = 'Bedehi'
      ReadOnly = True
      OnGetText = AllFloatToTimeGetText
    end
    object qryDecExtOnMounthBedehiPrice: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1576#1583#1607#1610' '#1605#1585#1582#1589#1610
      FieldName = 'BedehiPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryDecExtOnMounthSumFunctionDay: TFloatField
      DisplayLabel = #1603#1575#1585#1603#1585#1583
      FieldName = 'SumFunctionDay'
      ReadOnly = True
    end
    object qryDecExtOnMounthMobile: TStringField
      FieldName = 'Mobile'
    end
  end
  object srcDecExtOnMounth: TDataSource
    DataSet = qryDecExtOnMounth
    Left = 240
    Top = 264
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcDecExtOnMounth
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 456
    Top = 285
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'OfficeCode'
      FieldName = 'OfficeCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'OfficeName'
      FieldName = 'OfficeName'
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
      FieldAlias = 'name_L1'
      FieldName = 'name_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'name_L2'
      FieldName = 'name_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'lastName_L1'
      FieldName = 'lastName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'lastName_L2'
      FieldName = 'lastName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'InfoName_L1'
      FieldName = 'InfoName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'InfoName_L2'
      FieldName = 'InfoName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'Day'
      FieldName = 'Day'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'Time'
      FieldName = 'Time'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'Minute_'
      FieldName = 'Minute_'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'AllTime'
      FieldName = 'AllTime'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'AllDay'
      FieldName = 'AllDay'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'RemainDay'
      FieldName = 'RemainDay'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'Talab'
      FieldName = 'Talab'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'TalabPrice'
      FieldName = 'TalabPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'Bedehi'
      FieldName = 'Bedehi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'BedehiPrice'
      FieldName = 'BedehiPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'SumFunctionDay'
      FieldName = 'SumFunctionDay'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'Mobile'
      FieldName = 'Mobile'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
  end
  object ppReport1: TppReport
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
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'D:\Projects\Fara\Salary\Exe\Report\DecExtOnMounth.rtm'
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
    Left = 568
    Top = 288
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
        mmWidth = 203200
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 183622
        mmTop = 18522
        mmWidth = 19050
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
        mmLeft = 183094
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
        Caption = #1606#1575#1605
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 163236
        mmTop = 18522
        mmWidth = 19329
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
        mmLeft = 162708
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
        Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 129159
        mmTop = 18522
        mmWidth = 33020
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
        mmLeft = 128631
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
        Caption = #1606#1608#1593' '#1605#1585#1582#1589#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 110323
        mmTop = 18522
        mmWidth = 17780
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
        mmLeft = 109794
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
        Caption = #1585#1608#1586
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 101290
        mmTop = 18522
        mmWidth = 7976
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
        mmLeft = 100762
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
        Caption = #1587#1575#1593#1578
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 89870
        mmTop = 18522
        mmWidth = 10363
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
        mmLeft = 89342
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
        Caption = #1583#1602#1610#1602#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 79644
        mmTop = 18522
        mmWidth = 9169
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
        mmLeft = 79116
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
        Caption = #1580#1605#1593' ('#1587#1575#1593#1578'/'#1583#1602#1610#1602#1607')'#8207
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 54458
        mmTop = 18522
        mmWidth = 24130
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
        mmLeft = 53929
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
        Caption = #1580#1605#1593' '#1603#1604'('#1585#1608#1586'/'#1587#1575#1593#1578'/'#1583#1602#1610#1602#1607')'#8207
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 20381
        mmTop = 18522
        mmWidth = 33020
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
        mmLeft = 19853
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
        Caption = #1576#1575#1602#1610#1605#1575#1606#1583#1607' ('#1585#1608#1586')'#8207
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 529
        mmTop = 18522
        mmWidth = 19050
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
        mmLeft = 0
        mmTop = 17991
        mmWidth = 2647
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
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 10583
        mmTop = 794
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground
      end
      object ppSysPageNo: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SysPageNo'
        OnGetText = ppSysPageNoGetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5821
        mmLeft = 10583
        mmTop = 8467
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground
      end
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
        mmTop = 0
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCaption: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCaption'
        OnGetText = ppLblCaptionGetText
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578' '#1605#1585#1582#1589#1610' ( '#1605#1575#1607#1610#1575#1606#1607'  )'#8207
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
        mmLeft = 78581
        mmTop = 7144
        mmWidth = 46038
        BandType = 0
        LayerName = Foreground
      end
      object ppLblMounth: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        OnGetText = ppLblMounthGetText
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7112
        mmLeft = 192088
        mmTop = 9525
        mmWidth = 9906
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        Border.mmPadding = 0
        DataField = 'BeginningOfYear'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4498
        mmLeft = 32808
        mmTop = 7144
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        Border.mmPadding = 0
        Caption = #1578#1576#1583#1740#1604' '#1575#1593#1588#1575#1585' '#1576#1607' '#1583#1602#1740#1602#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        mmHeight = 12700
        mmLeft = 24871
        mmTop = 0
        mmWidth = 34131
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
        mmHeight = 7409
        mmLeft = 200290
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
        mmLeft = 183622
        mmTop = 0
        mmWidth = 19050
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
        mmLeft = 183094
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'name_L1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7451
        mmLeft = 163236
        mmTop = 0
        mmWidth = 19329
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
        mmLeft = 162708
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'lastName_L1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7451
        mmLeft = 129159
        mmTop = 0
        mmWidth = 33020
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
        mmLeft = 128631
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'InfoName_L1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7451
        mmLeft = 110323
        mmTop = 0
        mmWidth = 17780
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
        mmLeft = 109794
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'Day'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7451
        mmLeft = 101290
        mmTop = 0
        mmWidth = 7976
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
        mmLeft = 100762
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'Time'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7451
        mmLeft = 89870
        mmTop = 0
        mmWidth = 10363
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
        mmLeft = 89342
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'Minute_'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7451
        mmLeft = 79644
        mmTop = 0
        mmWidth = 9169
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
        mmLeft = 79116
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'AllTime'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7451
        mmLeft = 54458
        mmTop = 0
        mmWidth = 24130
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
        mmLeft = 53929
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'AllDay'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7451
        mmLeft = 20381
        mmTop = 0
        mmWidth = 33020
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
        mmLeft = 19853
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'RemainDay'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 529
        mmTop = 0
        mmWidth = 19050
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
      mmHeight = 9497
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
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
        mmHeight = 6011
        mmLeft = 186267
        mmTop = 529
        mmWidth = 15579
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
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 183622
        mmTop = 528
        mmWidth = 19050
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 109802
        mmTop = 0
        mmWidth = 2646
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc4'
        Border.mmPadding = 0
        DataField = 'Day'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 101290
        mmTop = 528
        mmWidth = 7976
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 100762
        mmTop = 0
        mmWidth = 2647
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc6'
        Border.mmPadding = 0
        DataField = 'Time'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 89870
        mmTop = 528
        mmWidth = 10363
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line18'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 89342
        mmTop = 0
        mmWidth = 2647
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc8'
        Border.mmPadding = 0
        DataField = 'Minute_'
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
        mmLeft = 79644
        mmTop = 528
        mmWidth = 9169
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line22'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 79116
        mmTop = 0
        mmWidth = 2647
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc10'
        Border.mmPadding = 0
        DataField = 'AllTime'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 54458
        mmTop = 528
        mmWidth = 24130
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
        mmLeft = 53929
        mmTop = 0
        mmWidth = 2647
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc12'
        Border.mmPadding = 0
        DataField = 'AllDay'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 20381
        mmTop = 528
        mmWidth = 33020
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
        mmLeft = 19853
        mmTop = 0
        mmWidth = 2647
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc14'
        Border.mmPadding = 0
        DataField = 'RemainDay'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 529
        mmTop = 529
        mmWidth = 19050
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
        mmLeft = 0
        mmTop = 0
        mmWidth = 2647
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
        mmWidth = 203200
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
        mmLeft = 188913
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
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 183622
        mmTop = 528
        mmWidth = 19050
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 109802
        mmTop = 0
        mmWidth = 2646
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        Border.mmPadding = 0
        DataField = 'Day'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 101290
        mmTop = 528
        mmWidth = 7976
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 100762
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc5'
        Border.mmPadding = 0
        DataField = 'Time'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 89870
        mmTop = 528
        mmWidth = 10363
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line17'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 89342
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc7'
        Border.mmPadding = 0
        DataField = 'Minute_'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 79644
        mmTop = 528
        mmWidth = 9169
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line21'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 79116
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc9'
        Border.mmPadding = 0
        DataField = 'AllTime'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 54458
        mmTop = 528
        mmWidth = 24130
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
        mmLeft = 53929
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc11'
        Border.mmPadding = 0
        DataField = 'AllDay'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 20381
        mmTop = 528
        mmWidth = 33020
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
        mmLeft = 19853
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc13'
        Border.mmPadding = 0
        DataField = 'RemainDay'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 529
        mmTop = 529
        mmWidth = 19050
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
        mmLeft = 0
        mmTop = 0
        mmWidth = 2647
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
  object ADOQuery1: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'Mounth2From'
        Size = -1
        Value = Null
      end
      item
        Name = 'Mounth2To'
        Size = -1
        Value = Null
      end
      item
        Name = 'PersonelNo1From'
        Size = -1
        Value = Null
      end
      item
        Name = 'PersonelNo1To'
        Size = -1
        Value = Null
      end
      item
        Name = 'MounthFrom'
        DataType = ftWord
        Size = -1
        Value = Null
      end
      item
        Name = 'MounthTo'
        DataType = ftWord
        Size = -1
        Value = Null
      end
      item
        Name = 'InfoIDFrom'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'InfoIDTo'
        DataType = ftInteger
        Size = -1
        Value = Null
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
        Name = 'OfficeCodeFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'OfficeCodeTo'
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
        Name = 'ProjectIDFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'ProjectIDTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearMounth'
        Size = -1
        Value = Null
      end
      item
        Name = 'PersonelNo1From'
        Size = -1
        Value = Null
      end
      item
        Name = 'PersonelNo1To'
        Size = -1
        Value = Null
      end
      item
        Name = 'Mounth2From'
        Size = -1
        Value = Null
      end
      item
        Name = 'Mounth2To'
        Size = -1
        Value = Null
      end
      item
        Name = 'AllDay'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'MounthFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'MounthTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'InfoIDFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'InfoIDTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'PersonelNoFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'PersonelNoTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearMounth1'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearMounth2'
        Size = -1
        Value = Null
      end
      item
        Name = 'OfficeCodeFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'OfficeCodeTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearMounth'
        Size = -1
        Value = Null
      end
      item
        Name = 'PersonelNo1From'
        Size = -1
        Value = Null
      end
      item
        Name = 'PersonelNo1To'
        Size = -1
        Value = Null
      end
      item
        Name = 'Mounth2From'
        Size = -1
        Value = Null
      end
      item
        Name = 'Mounth2To'
        Size = -1
        Value = Null
      end
      item
        Name = 'MounthFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'MounthTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'InfoIDFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'InfoIDTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'PersonelNoFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'PersonelNoTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'OfficeCodeFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'OfficeCodeTo'
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
      end>
    SQL.Strings = (
      '=----------------------------------new'
      
        'SELECT     FormsInfo_OfficeCode.InfoID AS OfficeCode, FormsInfo_' +
        'OfficeCode.InfoName_L1 AS OfficeName, PersonelInfo.PersonelNo, P' +
        'ersonelInfo.name_L1, '
      
        '                      PersonelInfo.name_L2, PersonelInfo.Mobile,' +
        ' PersonelInfo.lastName_L1, PersonelInfo.lastName_L2, derivedtbl_' +
        'OffTime.InfoName_L1, '
      
        '                      derivedtbl_OffTime.InfoName_L2, derivedtbl' +
        '_OffTime.Day, derivedtbl_OffTime.Time, derivedtbl_OffTime.Minute' +
        '_, derivedtbl_OffTime.AllTime, '
      
        '                      derivedtbl_OffTime.AllDay, derivedtbl_OffT' +
        'ime.RemainDay, derivedtbl_OffTime.Talab, derivedtbl_OffTime.Tala' +
        'bPrice, derivedtbl_OffTime.Bedehi, '
      
        '                      derivedtbl_OffTime.BedehiPrice,   derivedt' +
        'bl_Func.SumFunctionDay '
      ''
      'FROM Pay.PersonelInfo INNER JOIN'
      
        '                      Pay.Interdicts ON PersonelInfo.PersonelNo ' +
        '= Interdicts.PersonelNo INNER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfo_OfficeCode ON I' +
        'nterdicts.OfficeCode = FormsInfo_OfficeCode.FormInfoID '
      ''
      'INNER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfoPersonelState ON' +
        ' PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID'
      ''
      'INNER JOIN'
      
        'Pay.FunctionsSum( :Mounth2From , :Mounth2To, :YearIDFrom , :Year' +
        'IDTo ) AS derivedtbl_Func ON PersonelInfo.PersonelNo = derivedtb' +
        'l_Func.PersonelNo'
      ''
      ''
      'LEFT OUTER JOIN'
      
        '                          (SELECT     InterdictForUse.PersonelNo' +
        ', derivedtbl_1.InfoName_L1, derivedtbl_1.InfoName_L2, derivedtbl' +
        '_1.Day, derivedtbl_1.Time, derivedtbl_1.Minute_, '
      
        '                                                   derivedtbl_1.' +
        'AllTime, derivedtbl_1.AllDay, derivedtbl_1.RemainDay, derivedtbl' +
        '_1.Talab, CAST(SUM(ROUND((InterdictForUse.Amount / FormsInfo.Amo' +
        'unt)'
      
        '                                                    * (FormsInfo' +
        '.StandardDays * derivedtbl_1.Talab) + (InterdictForUse.Amount / ' +
        'FormsInfo.Amount) * (FormsInfo.StandardTimes * derivedtbl_1.Tala' +
        'b), 0)) '
      
        '                                                   AS Money) AS ' +
        'TalabPrice, derivedtbl_1.Bedehi, CAST(SUM(ROUND((InterdictForUse' +
        '.Amount / FormsInfo.Amount) '
      
        '                                                   * (FormsInfo.' +
        'StandardDays * derivedtbl_1.Bedehi) + (InterdictForUse.Amount / ' +
        'FormsInfo.Amount) * (FormsInfo.StandardTimes * derivedtbl_1.Bede' +
        'hi), 0))'
      
        '                                                    AS Money) AS' +
        ' BedehiPrice'
      '                             FROM Pay.FormsInfo INNER JOIN'
      
        '                                                   Pay.Interdict' +
        'ForUseLast(1, 1, :PersonelNo1From, :PersonelNo1To) AS InterdictF' +
        'orUse INNER JOIN'
      
        '                                                       (SELECT  ' +
        '   FormInfoID, SalaryID, Kind'
      
        '                                                          FROM  ' +
        '       Pay.SalaryRange'
      
        '                                                          WHERE ' +
        '    (Kind = 0)) AS salaryRange4Use ON InterdictForUse.SalaryID =' +
        ' salaryRange4Use.SalaryID ON '
      
        '                                                   FormsInfo.For' +
        'mInfoID = salaryRange4Use.FormInfoID INNER JOIN'
      
        '                                                       (SELECT  ' +
        '   PersonelNo, InfoName_L1, InfoName_L2, Day, Time, Minute_, All' +
        'Time, AllDay, RemainDay, '
      
        '                                                                ' +
        '                (CASE WHEN OffTime.RemainDay > 0 THEN OffTime.Re' +
        'mainDay ELSE 0 END) AS Talab, '
      
        '                                                                ' +
        '                (CASE WHEN OffTime.RemainDay < 0 THEN abs(OffTim' +
        'e.RemainDay) ELSE 0 END) AS Bedehi'
      ''
      
        '                                                          FROM  ' +
        '       (SELECT     PersonelDecExt.PersonelNo, FormsInfo_1.InfoNa' +
        'me_L1, FormsInfo_1.InfoName_L2, '
      
        '                                                                ' +
        '                                     SUM((CASE PersonelDecExt.Fi' +
        'rstMounth WHEN 0 THEN IsNull(PersonelDecExt.DayQuntity,0) ELSE  ' +
        '1 * IsNull(PersonelDecExt.DayQuntity,0) END)) AS Day, '
      
        '                                                                ' +
        '                                        SUM((CASE PersonelDecExt' +
        '.FirstMounth WHEN 0 THEN PersonelDecExt.DayTime ELSE  1 * Person' +
        'elDecExt.DayTime END)) AS Time, '
      
        '                                                                ' +
        '                                        SUM((CASE PersonelDecExt' +
        '.FirstMounth WHEN 0 THEN PersonelDecExt.Minute_ ELSE  1 * Person' +
        'elDecExt.Minute_ END)) AS Minute_, '
      
        '                                                                ' +
        '                                        ROUND(SUM((CASE Personel' +
        'DecExt.FirstMounth WHEN 0 THEN 0 ELSE 1 * PersonelDecExt.DayTime' +
        ' END)) '
      
        '                                                                ' +
        '                                        + SUM((CASE PersonelDecE' +
        'xt.FirstMounth WHEN 0 THEN PersonelDecExt.Minute_ ELSE 1 * Perso' +
        'nelDecExt.Minute_ END)) '
      
        '                                                                ' +
        '                                        / 60, 2) AS AllTime, '
      
        '                                                                ' +
        '                                        ROUND(ROUND(SUM((CASE Pe' +
        'rsonelDecExt.FirstMounth WHEN 0 THEN IsNull(PersonelDecExt.DayQu' +
        'ntity,0) ELSE  1 * IsNull(PersonelDecExt.DayQuntity,0) END)) '
      
        '                                                                ' +
        '                                        + ROUND(SUM((CASE Person' +
        'elDecExt.FirstMounth WHEN 0 THEN PersonelDecExt.DayTime ELSE  1 ' +
        '* PersonelDecExt.DayTime END))'
      
        '                                                                ' +
        '                                         + SUM((CASE PersonelDec' +
        'Ext.FirstMounth WHEN 0 THEN PersonelDecExt.Minute_ ELSE  1 * Per' +
        'sonelDecExt.Minute_ END)) '
      
        '                                                                ' +
        '                                        / 60, 2) / 8, 2), 2) AS ' +
        'AllDay, '
      
        '                                                                ' +
        '                                        ROUND'
      
        '                                                                ' +
        '                                            ( (SELECT FormsInfo_' +
        '1.StandardDays*SUM(FunctionDay)/365 AS FunctionDay FROM Pay.Func' +
        'tions  WHERE (PersonelNo = PersonelDecExt.PersonelNo))'
      
        '                                                                ' +
        '                                        + ROUND(SUM((CASE Person' +
        'elDecExt.FirstMounth WHEN 0 THEN PersonelDecExt.DayQuntity ELSE ' +
        '- 1 * PersonelDecExt.DayQuntity'
      
        '                                                                ' +
        '                                         END)) '
      
        '                                                                ' +
        '                                        + ROUND(SUM((CASE Person' +
        'elDecExt.FirstMounth WHEN 0 THEN PersonelDecExt.DayTime ELSE - 1' +
        ' * PersonelDecExt.DayTime'
      
        '                                                                ' +
        '                                         END)) '
      
        '                                                                ' +
        '                                        + SUM((CASE PersonelDecE' +
        'xt.FirstMounth WHEN 0 THEN PersonelDecExt.Minute_ ELSE - 1 * Per' +
        'sonelDecExt.Minute_ END)) '
      
        '                                                                ' +
        '                                        / 60, 2) / 8, 2), 2) AS ' +
        'RemainDay'
      
        '                                                                ' +
        '                  FROM Pay.PersonelDecExt LEFT OUTER JOIN'
      
        '                                                                ' +
        '                                        Pay.FormsInfo AS FormsIn' +
        'fo_1 ON PersonelDecExt.FormInfoID = FormsInfo_1.FormInfoID'
      
        '                                                                ' +
        '                  WHERE     (PersonelDecExt.FirstMounth BETWEEN ' +
        ':MounthFrom AND :MounthTo) AND (FormsInfo_1.FormType = 16) AND '
      
        '                                                                ' +
        '                                        (FormsInfo_1.InfoID BETW' +
        'EEN :InfoIDFrom AND :InfoIDTo)'
      
        '                                                                ' +
        '                  GROUP BY PersonelDecExt.PersonelNo, FormsInfo_' +
        '1.InfoName_L1, FormsInfo_1.InfoName_L2, FormsInfo_1.StandardDays' +
        ', '
      
        '                                                                ' +
        '                                        FormsInfo_1.StandardTime' +
        's) AS OffTime) AS derivedtbl_1 ON InterdictForUse.PersonelNo = d' +
        'erivedtbl_1.PersonelNo'
      
        '                             WHERE     (FormsInfo.FormType = 47)' +
        ' AND (FormsInfo.InfoID = 3)'
      
        '                             GROUP BY InterdictForUse.PersonelNo' +
        ', derivedtbl_1.InfoName_L1, derivedtbl_1.InfoName_L2, derivedtbl' +
        '_1.Day, derivedtbl_1.Time, derivedtbl_1.Minute_, '
      
        '                                                   derivedtbl_1.' +
        'AllTime, derivedtbl_1.AllDay, derivedtbl_1.RemainDay, derivedtbl' +
        '_1.Talab, derivedtbl_1.Bedehi) '
      
        '                      AS derivedtbl_OffTime ON PersonelInfo.Pers' +
        'onelNo = derivedtbl_OffTime.PersonelNo'
      ''
      'WHERE '
      '(State<50)'
      
        'AND (PersonelInfo.PersonelNo BETWEEN  :PersonelNoFrom AND :Perso' +
        'nelNoTo) '
      
        'AND (FormsInfo_OfficeCode.InfoID BETWEEN :OfficeCodeFrom AND :Of' +
        'ficeCodeTo)'
      
        'AND (FormsInfoPersonelState.InfoID BETWEEN :PersonelStateFrom AN' +
        'D :PersonelStateTo)'
      
        'AND ((Interdicts.ProjectID between :ProjectIDFrom and :ProjectID' +
        'To)OR (ProjectID=0))'
      ''
      ''
      '--------------------old'
      ''
      ''
      'SELECT    derivedtbl_1.OfficeCode,  derivedtbl_1.OfficeName,'
      
        '   InterdictForUse.PersonelNo, derivedtbl_1.name_L1, derivedtbl_' +
        '1.name_L2, derivedtbl_1.Mobile, derivedtbl_1.lastName_L1, derive' +
        'dtbl_1.lastName_L2, '
      
        '                      derivedtbl_1.InfoName_L1, derivedtbl_1.Inf' +
        'oName_L2, derivedtbl_1.Day, derivedtbl_1.Time, derivedtbl_1.Minu' +
        'te_, derivedtbl_1.AllTime, derivedtbl_1.AllDay, '
      
        '                      derivedtbl_1.RemainDay, derivedtbl_1.Talab' +
        ', '
      
        '  CAST(SUM(ROUND((InterdictForUse.Amount / FormsInfo.Amount) * (' +
        'FormsInfo.StandardDays * derivedtbl_1.Talab) '
      
        '                + (InterdictForUse.Amount / FormsInfo.Amount) * ' +
        '(FormsInfo.StandardTimes * derivedtbl_1.Talab), 0))AS Money) AS ' +
        'TalabPrice'
      '                , derivedtbl_1.Bedehi, '
      
        '  CAST(SUM(ROUND((InterdictForUse.Amount / FormsInfo.Amount) * (' +
        'FormsInfo.StandardDays * derivedtbl_1.Bedehi) '
      '                + (InterdictForUse.Amount / FormsInfo.Amount) '
      
        '                      * (FormsInfo.StandardTimes * derivedtbl_1.' +
        'Bedehi), 0)) AS Money) AS BedehiPrice'
      '                      , derivedtbl_1.SumFunctionDay'
      ''
      'FROM Pay.FormsInfo INNER JOIN'
      
        '                      Pay.InterdictForUse(:YearMounth, 1, 1, :Pe' +
        'rsonelNo1From, :PersonelNo1To) AS InterdictForUse INNER JOIN'
      '                          (SELECT     FormInfoID, SalaryID, Kind'
      '                             FROM Pay.SalaryRange'
      
        '                             WHERE     (Kind = 0)) AS salaryRang' +
        'e4Use ON InterdictForUse.SalaryID = salaryRange4Use.SalaryID ON '
      
        '                      FormsInfo.FormInfoID = salaryRange4Use.For' +
        'mInfoID INNER JOIN'
      '                          (SELECT  OfficeCode, OfficeName,'
      
        '                                                        Personel' +
        'No, name_L1, name_L2, Mobile, lastName_L1, lastName_L2, InfoName' +
        '_L1, InfoName_L2, Day, Time, Minute_, AllTime, AllDay, RemainDay' +
        ', '
      
        '                                                   (CASE WHEN Of' +
        'fTime.RemainDay > 0 THEN OffTime.RemainDay ELSE 0 END) AS Talab,' +
        ' '
      
        '                                                   (CASE WHEN Of' +
        'fTime.RemainDay < 0 THEN abs(OffTime.RemainDay) ELSE 0 END) AS B' +
        'edehi,'
      
        '                                                       (SELECT  ' +
        '   SUM(FunctionDay) AS Expr1'
      
        '                                                          FROM  ' +
        '       Pay.Functions'
      
        '                                                          WHERE ' +
        '    (PersonelNo = OffTime.PersonelNo) AND (Mounth BETWEEN :Mount' +
        'h2From AND :Mounth2To)) AS SumFunctionDay'
      
        '                             FROM         (SELECT    FormsInfo_O' +
        'fficeCode.InfoID AS OfficeCode, FormsInfo_OfficeCode.InfoName_L1' +
        ' AS OfficeName,'
      
        '                                                      PersonelIn' +
        'fo.PersonelNo, PersonelInfo.name_L1, PersonelInfo.name_L2, Perso' +
        'nelInfo.Mobile, PersonelInfo.lastName_L1, '
      
        '                                                                ' +
        '           PersonelInfo.lastName_L2, FormsInfo_1.InfoName_L1, Fo' +
        'rmsInfo_1.InfoName_L2, '
      
        '                                                                ' +
        '           SUM((CASE PersonelDecExt.FirstMounth WHEN 0 THEN 0 EL' +
        'SE PersonelDecExt.DayQuntity END)) AS Day, '
      
        '                                                                ' +
        '           SUM((CASE PersonelDecExt.FirstMounth WHEN 0 THEN 0 EL' +
        'SE PersonelDecExt.DayTime END)) AS Time, '
      
        '                                                                ' +
        '           SUM((CASE PersonelDecExt.FirstMounth WHEN 0 THEN 0 EL' +
        'SE PersonelDecExt.Minute_ END)) AS Minute_, '
      
        '                                                                ' +
        '           ROUND(SUM((CASE PersonelDecExt.FirstMounth WHEN 0 THE' +
        'N 0 ELSE 1 * PersonelDecExt.DayTime END)) '
      
        '                                                                ' +
        '           + SUM((CASE PersonelDecExt.FirstMounth WHEN 0 THEN Pe' +
        'rsonelDecExt.Minute_ ELSE 1 * PersonelDecExt.Minute_ END)) / 60,' +
        ' 2) '
      
        '                                                                ' +
        '           AS AllTime, ROUND(ROUND(SUM((CASE PersonelDecExt.Firs' +
        'tMounth WHEN 0 THEN 0 ELSE 1 * PersonelDecExt.DayQuntity END)) '
      
        '                                                                ' +
        '           + ROUND(SUM((CASE PersonelDecExt.FirstMounth WHEN 0 T' +
        'HEN PersonelDecExt.DayTime ELSE 1 * PersonelDecExt.DayTime END))' +
        ' '
      
        '                                                                ' +
        '           + SUM((CASE PersonelDecExt.FirstMounth WHEN 0 THEN Pe' +
        'rsonelDecExt.Minute_ ELSE 1 * PersonelDecExt.Minute_ END)) / 60,' +
        ' 2) / 8, 2), 2) '
      
        '                                                                ' +
        '           AS AllDay, ROUND'
      
        '                                                                ' +
        '               ( :AllDay + ROUND(SUM((CASE PersonelDecExt.FirstM' +
        'ounth WHEN 0 THEN PersonelDecExt.DayQuntity ELSE - 1 * PersonelD' +
        'ecExt.DayQuntity END)) '
      
        '                                                                ' +
        '           + ROUND(SUM((CASE PersonelDecExt.FirstMounth WHEN 0 T' +
        'HEN PersonelDecExt.DayTime ELSE - 1 * PersonelDecExt.DayTime END' +
        ')) '
      
        '                                                                ' +
        '           + SUM((CASE PersonelDecExt.FirstMounth WHEN 0 THEN Pe' +
        'rsonelDecExt.Minute_ ELSE - 1 * PersonelDecExt.Minute_ END)) / 6' +
        '0, 2) / 8, 2), '
      
        '                                                                ' +
        '           2) AS RemainDay'
      
        '                                                     FROM       ' +
        '  Pay.FormsInfo AS FormsInfo_OfficeCode INNER JOIN'
      
        '                                                                ' +
        '           Pay.Interdicts ON FormsInfo_OfficeCode.FormInfoID = I' +
        'nterdicts.OfficeCode RIGHT OUTER JOIN'
      
        '                                                                ' +
        '           Pay.PersonelInfo RIGHT OUTER JOIN'
      
        '                                                                ' +
        '           Pay.PersonelDecExt INNER JOIN'
      
        '                                                                ' +
        '           Pay.FormsInfo AS FormsInfo_1 ON PersonelDecExt.FormIn' +
        'foID = FormsInfo_1.FormInfoID ON '
      
        '                                                                ' +
        '           PersonelInfo.PersonelNo = PersonelDecExt.PersonelNo O' +
        'N Interdicts.PersonelNo = PersonelInfo.PersonelNo'
      
        '                                                     WHERE     (' +
        'PersonelDecExt.FirstMounth BETWEEN :MounthFrom AND :MounthTo) AN' +
        'D (FormsInfo_1.FormType = 16) AND '
      
        '                                                                ' +
        '           (FormsInfo_1.InfoID BETWEEN :InfoIDFrom AND :InfoIDTo' +
        ') AND (PersonelInfo.PersonelNo BETWEEN :PersonelNoFrom AND '
      
        '                                                                ' +
        '           :PersonelNoTo) AND (LEFT(Interdicts.InterdicStartDate' +
        ', 7) <= :YearMounth1) AND (LEFT(Interdicts.InterdicEndDate, 7) >' +
        '= :YearMounth2) '
      
        '                                                                ' +
        '           AND (FormsInfo_OfficeCode.InfoID BETWEEN :OfficeCodeF' +
        'rom AND :OfficeCodeTo)'
      
        '                                                     GROUP BY  F' +
        'ormsInfo_OfficeCode.InfoID , FormsInfo_OfficeCode.InfoName_L1 ,'
      
        '                                                                ' +
        '   PersonelInfo.PersonelNo, PersonelInfo.name_L1, PersonelInfo.n' +
        'ame_L2, PersonelInfo.lastName_L1, PersonelInfo.lastName_L2, '
      
        '                                                                ' +
        '           PersonelInfo.Mobile, FormsInfo_1.InfoName_L1, FormsIn' +
        'fo_1.InfoName_L2, FormsInfo_1.StandardDays, FormsInfo_1.Standard' +
        'Times) '
      
        '                                                   AS OffTime) A' +
        'S derivedtbl_1 ON InterdictForUse.PersonelNo = derivedtbl_1.Pers' +
        'onelNo'
      'WHERE     (FormsInfo.FormType = 47) AND (FormsInfo.InfoID = 3)'
      
        'GROUP BY  derivedtbl_1.OfficeCode,  derivedtbl_1.OfficeName, Int' +
        'erdictForUse.PersonelNo, derivedtbl_1.name_L1, derivedtbl_1.name' +
        '_L2, derivedtbl_1.Mobile, derivedtbl_1.lastName_L1, derivedtbl_1' +
        '.lastName_L2, '
      
        '                      derivedtbl_1.InfoName_L1, derivedtbl_1.Inf' +
        'oName_L2, derivedtbl_1.Day, derivedtbl_1.Time, derivedtbl_1.Minu' +
        'te_, derivedtbl_1.AllTime, derivedtbl_1.AllDay, '
      
        '                      derivedtbl_1.RemainDay, derivedtbl_1.Talab' +
        ', derivedtbl_1.Bedehi, derivedtbl_1.SumFunctionDay'
      ''
      ''
      
        'SELECT     FormsInfo_OfficeCode.InfoID AS OfficeCode, FormsInfo_' +
        'OfficeCode.InfoName_L1 AS OfficeName, PersonelInfo.PersonelNo, P' +
        'ersonelInfo.name_L1, '
      
        '                      PersonelInfo.name_L2, PersonelInfo.Mobile,' +
        ' PersonelInfo.lastName_L1, PersonelInfo.lastName_L2, derivedtbl_' +
        'OffTime.InfoName_L1, '
      
        '                      derivedtbl_OffTime.InfoName_L2, derivedtbl' +
        '_OffTime.Day, derivedtbl_OffTime.Time, derivedtbl_OffTime.Minute' +
        '_, derivedtbl_OffTime.AllTime, '
      
        '                      derivedtbl_OffTime.AllDay, derivedtbl_OffT' +
        'ime.RemainDay, derivedtbl_OffTime.Talab, derivedtbl_OffTime.Tala' +
        'bPrice, derivedtbl_OffTime.Bedehi, '
      
        '                      derivedtbl_OffTime.BedehiPrice, derivedtbl' +
        '_OffTime.SumFunctionDay'
      ''
      'FROM Pay.PersonelInfo INNER JOIN'
      
        '                      Pay.Interdicts ON PersonelInfo.PersonelNo ' +
        '= Interdicts.PersonelNo INNER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfo_OfficeCode ON I' +
        'nterdicts.OfficeCode = FormsInfo_OfficeCode.FormInfoID '
      ''
      'INNER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfoPersonelState ON' +
        ' PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID'
      ''
      ''
      'LEFT OUTER JOIN'
      
        '                          (SELECT     InterdictForUse.PersonelNo' +
        ', derivedtbl_1.InfoName_L1, derivedtbl_1.InfoName_L2, derivedtbl' +
        '_1.Day, derivedtbl_1.Time, derivedtbl_1.Minute_, '
      
        '                                                   derivedtbl_1.' +
        'AllTime, derivedtbl_1.AllDay, derivedtbl_1.RemainDay, derivedtbl' +
        '_1.Talab, CAST(SUM(ROUND((InterdictForUse.Amount / FormsInfo.Amo' +
        'unt)'
      
        '                                                    * (FormsInfo' +
        '.StandardDays * derivedtbl_1.Talab) + (InterdictForUse.Amount / ' +
        'FormsInfo.Amount) * (FormsInfo.StandardTimes * derivedtbl_1.Tala' +
        'b), 0)) '
      
        '                                                   AS Money) AS ' +
        'TalabPrice, derivedtbl_1.Bedehi, CAST(SUM(ROUND((InterdictForUse' +
        '.Amount / FormsInfo.Amount) '
      
        '                                                   * (FormsInfo.' +
        'StandardDays * derivedtbl_1.Bedehi) + (InterdictForUse.Amount / ' +
        'FormsInfo.Amount) * (FormsInfo.StandardTimes * derivedtbl_1.Bede' +
        'hi), 0))'
      
        '                                                    AS Money) AS' +
        ' BedehiPrice, derivedtbl_1.SumFunctionDay'
      '                             FROM Pay.FormsInfo INNER JOIN'
      
        '                                                   Pay.Interdict' +
        'ForUse(:YearMounth, 1, 1, :PersonelNo1From, :PersonelNo1To) AS I' +
        'nterdictForUse INNER JOIN'
      
        '                                                       (SELECT  ' +
        '   FormInfoID, SalaryID, Kind'
      
        '                                                          FROM  ' +
        '       Pay.SalaryRange'
      
        '                                                          WHERE ' +
        '    (Kind = 0)) AS salaryRange4Use ON InterdictForUse.SalaryID =' +
        ' salaryRange4Use.SalaryID ON '
      
        '                                                   FormsInfo.For' +
        'mInfoID = salaryRange4Use.FormInfoID INNER JOIN'
      
        '                                                       (SELECT  ' +
        '   PersonelNo, InfoName_L1, InfoName_L2, Day, Time, Minute_, All' +
        'Time, AllDay, RemainDay, '
      
        '                                                                ' +
        '                (CASE WHEN OffTime.RemainDay > 0 THEN OffTime.Re' +
        'mainDay ELSE 0 END) AS Talab, '
      
        '                                                                ' +
        '                (CASE WHEN OffTime.RemainDay < 0 THEN abs(OffTim' +
        'e.RemainDay) ELSE 0 END) AS Bedehi,'
      
        '                                                                ' +
        '                    (SELECT     SUM(FunctionDay) AS Expr1'
      
        '                                                                ' +
        '                       FROM Pay.Functions'
      
        '                                                                ' +
        '                       WHERE     (PersonelNo = OffTime.PersonelN' +
        'o) AND (Mounth BETWEEN :Mounth2From AND :Mounth2To)) AS SumFunct' +
        'ionDay'
      
        '                                                          FROM  ' +
        '       (SELECT     PersonelDecExt.PersonelNo, FormsInfo_1.InfoNa' +
        'me_L1, FormsInfo_1.InfoName_L2, '
      
        '                                                                ' +
        '                                     SUM((CASE PersonelDecExt.Fi' +
        'rstMounth WHEN 0 THEN IsNull(PersonelDecExt.DayQuntity,0) ELSE  ' +
        '1 * IsNull(PersonelDecExt.DayQuntity,0) END)) AS Day, '
      
        '                                                                ' +
        '                                        SUM((CASE PersonelDecExt' +
        '.FirstMounth WHEN 0 THEN PersonelDecExt.DayTime ELSE  1 * Person' +
        'elDecExt.DayTime END)) AS Time, '
      
        '                                                                ' +
        '                                        SUM((CASE PersonelDecExt' +
        '.FirstMounth WHEN 0 THEN PersonelDecExt.Minute_ ELSE  1 * Person' +
        'elDecExt.Minute_ END)) AS Minute_, '
      
        '                                                                ' +
        '                                        ROUND(SUM((CASE Personel' +
        'DecExt.FirstMounth WHEN 0 THEN 0 ELSE 1 * PersonelDecExt.DayTime' +
        ' END)) '
      
        '                                                                ' +
        '                                        + SUM((CASE PersonelDecE' +
        'xt.FirstMounth WHEN 0 THEN PersonelDecExt.Minute_ ELSE 1 * Perso' +
        'nelDecExt.Minute_ END)) '
      
        '                                                                ' +
        '                                        / 60, 2) AS AllTime, '
      
        '                                                                ' +
        '                                        ROUND(ROUND(SUM((CASE Pe' +
        'rsonelDecExt.FirstMounth WHEN 0 THEN IsNull(PersonelDecExt.DayQu' +
        'ntity,0) ELSE  1 * IsNull(PersonelDecExt.DayQuntity,0) END)) '
      
        '                                                                ' +
        '                                        + ROUND(SUM((CASE Person' +
        'elDecExt.FirstMounth WHEN 0 THEN PersonelDecExt.DayTime ELSE  1 ' +
        '* PersonelDecExt.DayTime END))'
      
        '                                                                ' +
        '                                         + SUM((CASE PersonelDec' +
        'Ext.FirstMounth WHEN 0 THEN PersonelDecExt.Minute_ ELSE  1 * Per' +
        'sonelDecExt.Minute_ END)) '
      
        '                                                                ' +
        '                                        / 60, 2) / 8, 2), 2) AS ' +
        'AllDay, '
      
        '                                                                ' +
        '                                        ROUND'
      
        '                                                                ' +
        '                                            ( (SELECT FormsInfo_' +
        '1.StandardDays*SUM(FunctionDay)/365 AS FunctionDay FROM Pay.Func' +
        'tions  WHERE (PersonelNo = PersonelDecExt.PersonelNo))'
      
        '                                                                ' +
        '                                        + ROUND(SUM((CASE Person' +
        'elDecExt.FirstMounth WHEN 0 THEN PersonelDecExt.DayQuntity ELSE ' +
        '- 1 * PersonelDecExt.DayQuntity'
      
        '                                                                ' +
        '                                         END)) '
      
        '                                                                ' +
        '                                        + ROUND(SUM((CASE Person' +
        'elDecExt.FirstMounth WHEN 0 THEN PersonelDecExt.DayTime ELSE - 1' +
        ' * PersonelDecExt.DayTime'
      
        '                                                                ' +
        '                                         END)) '
      
        '                                                                ' +
        '                                        + SUM((CASE PersonelDecE' +
        'xt.FirstMounth WHEN 0 THEN PersonelDecExt.Minute_ ELSE - 1 * Per' +
        'sonelDecExt.Minute_ END)) '
      
        '                                                                ' +
        '                                        / 60, 2) / 8, 2), 2) AS ' +
        'RemainDay'
      
        '                                                                ' +
        '                  FROM Pay.PersonelDecExt LEFT OUTER JOIN'
      
        '                                                                ' +
        '                                        Pay.FormsInfo AS FormsIn' +
        'fo_1 ON PersonelDecExt.FormInfoID = FormsInfo_1.FormInfoID'
      
        '                                                                ' +
        '                  WHERE     (PersonelDecExt.FirstMounth BETWEEN ' +
        ':MounthFrom AND :MounthTo) AND (FormsInfo_1.FormType = 16) AND '
      
        '                                                                ' +
        '                                        (FormsInfo_1.InfoID BETW' +
        'EEN :InfoIDFrom AND :InfoIDTo)'
      
        '                                                                ' +
        '                  GROUP BY PersonelDecExt.PersonelNo, FormsInfo_' +
        '1.InfoName_L1, FormsInfo_1.InfoName_L2, FormsInfo_1.StandardDays' +
        ', '
      
        '                                                                ' +
        '                                        FormsInfo_1.StandardTime' +
        's) AS OffTime) AS derivedtbl_1 ON InterdictForUse.PersonelNo = d' +
        'erivedtbl_1.PersonelNo'
      
        '                             WHERE     (FormsInfo.FormType = 47)' +
        ' AND (FormsInfo.InfoID = 3)'
      
        '                             GROUP BY InterdictForUse.PersonelNo' +
        ', derivedtbl_1.InfoName_L1, derivedtbl_1.InfoName_L2, derivedtbl' +
        '_1.Day, derivedtbl_1.Time, derivedtbl_1.Minute_, '
      
        '                                                   derivedtbl_1.' +
        'AllTime, derivedtbl_1.AllDay, derivedtbl_1.RemainDay, derivedtbl' +
        '_1.Talab, derivedtbl_1.Bedehi, derivedtbl_1.SumFunctionDay) '
      
        '                      AS derivedtbl_OffTime ON PersonelInfo.Pers' +
        'onelNo = derivedtbl_OffTime.PersonelNo'
      ''
      'WHERE '
      '(State<50)'
      '--    (LEFT(Interdicts.InterdicStartDate, 7) <= @YearMounth1) '
      '--AND (LEFT(Interdicts.InterdicEndDate, 7) >= @YearMounth2) '
      ''
      
        'AND (PersonelInfo.PersonelNo BETWEEN  :PersonelNoFrom AND :Perso' +
        'nelNoTo) '
      
        'AND (FormsInfo_OfficeCode.InfoID BETWEEN :OfficeCodeFrom AND :Of' +
        'ficeCodeTo)'
      
        'AND (FormsInfoPersonelState.InfoID BETWEEN :PersonelStateFrom AN' +
        'D :PersonelStateTo)'
      '')
    Left = 400
    Top = 192
  end
end

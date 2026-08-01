inherited DecExtOnMounthSeparationF: TDecExtOnMounthSeparationF
  Left = 335
  Top = 126
  Caption = #1604#1610#1587#1578' '#1605#1585#1582#1589#1610' ( '#1576#1607' '#1578#1601#1603#1610#1603' '#1605#1575#1607'  )'#8207
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    object Button1: TButton
      AlignWithMargins = True
      Left = 626
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
      Width = 130
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
      Left = 707
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
    inherited lblCaption: TLabel
      Left = 541
      Width = 199
      Caption = #1604#1610#1587#1578' '#1605#1585#1582#1589#1610' ( '#1576#1607' '#1578#1601#1603#1610#1603' '#1605#1575#1607'  )'#8207
      ExplicitLeft = 541
      ExplicitWidth = 199
    end
    object RadioGroup1: TRadioGroup
      Left = 1
      Top = 1
      Width = 142
      Height = 51
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
    object DBGrid1: TCedarDbgrid
      Left = 2
      Top = 2
      Width = 782
      Height = 419
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
          Title.TitleButton = True
          Width = 40
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'OfficeName'
          Footers = <>
          Title.TitleButton = True
          Width = 70
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PersonelNo'
          Footers = <>
          Title.TitleButton = True
          Width = 76
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'name_L1'
          Footers = <>
          Title.TitleButton = True
          Width = 18
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'name_L2'
          Footers = <>
          Title.TitleButton = True
          Width = 31
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'lastName_L1'
          Footers = <>
          Title.TitleButton = True
          Width = 63
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'lastName_L2'
          Footers = <>
          Title.TitleButton = True
          Width = 49
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'SumFunctionDay'
          Footers = <>
          Title.TitleButton = True
          Width = 32
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'InfoName_L1'
          Footers = <>
          Title.TitleButton = True
          Width = 61
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'InfoName_L2'
          Footers = <>
          Title.TitleButton = True
          Width = 52
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'AllDay00'
          Footers = <>
          Title.TitleButton = True
          Width = 58
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'AllDay01'
          Footers = <>
          Title.TitleButton = True
          Width = 40
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'AllDay02'
          Footers = <>
          Title.TitleButton = True
          Width = 52
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'AllDay03'
          Footers = <>
          Title.TitleButton = True
          Width = 30
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'AllDay04'
          Footers = <>
          Title.TitleButton = True
          Width = 17
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'AllDay05'
          Footers = <>
          Title.TitleButton = True
          Width = 29
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'AllDay06'
          Footers = <>
          Title.TitleButton = True
          Width = 39
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'AllDay07'
          Footers = <>
          Title.TitleButton = True
          Width = 22
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'AllDay08'
          Footers = <>
          Title.TitleButton = True
          Width = 21
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'AllDay09'
          Footers = <>
          Title.TitleButton = True
          Width = 17
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'AllDay10'
          Footers = <>
          Title.TitleButton = True
          Width = 20
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'AllDay11'
          Footers = <>
          Title.TitleButton = True
          Width = 29
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'AllDay12'
          Footers = <>
          Title.TitleButton = True
          Width = 35
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'Day'
          Footers = <>
          Title.TitleButton = True
          Width = 18
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'Time'
          Footers = <>
          Title.TitleButton = True
          Width = 36
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'Minute_'
          Footers = <>
          Title.TitleButton = True
          Width = 31
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'AllTime'
          Footers = <>
          Title.TitleButton = True
          Width = 132
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'AllDay'
          Footers = <>
          Title.TitleButton = True
          Width = 148
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'RemainDay'
          Footers = <>
          Title.TitleButton = True
          Width = 68
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'Talab'
          Footers = <>
          Title.TitleButton = True
          Width = 67
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'TalabPrice'
          Footers = <>
          Title.TitleButton = True
          Width = 90
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'Bedehi'
          Footers = <>
          Title.TitleButton = True
          Width = 74
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'BedehiPrice'
          Footers = <>
          Title.TitleButton = True
          Width = 97
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
    Parameters = <
      item
        Name = 'Mounth2From'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'Mounth2To'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearIDFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearIDTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PersonelNo1From'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PersonelNo1To'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearID2From'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearID2To'
        DataType = ftWideString
        Size = 1
        Value = '0'
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
        Name = 'InfoIDFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'InfoIDTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearID1From'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearID1To'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PersonelNoFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PersonelNoTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'OfficeCodeFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'OfficeCodeTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PersonelStateFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PersonelStateTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      'SELECT FormsInfo_OfficeCode.InfoID AS OfficeCode'
      #9',FormsInfo_OfficeCode.InfoName_L1 AS OfficeName'
      #9',PersonelInfo.PersonelNo'
      #9',PersonelInfo.name_L1'
      #9',PersonelInfo.name_L2'
      #9',PersonelInfo.Mobile'
      #9',PersonelInfo.lastName_L1'
      #9',PersonelInfo.lastName_L2'
      #9',derivedtbl_OffTime.InfoName_L1'
      #9',derivedtbl_OffTime.InfoName_L2'
      #9',derivedtbl_OffTime.Day'
      #9',derivedtbl_OffTime.TIME'
      #9',derivedtbl_OffTime.Minute_'
      #9',AllDay00'
      #9',AllDay01'
      #9',AllDay02'
      #9',AllDay03'
      #9',AllDay04'
      #9',AllDay05'
      #9',AllDay06'
      #9',AllDay07'
      #9',AllDay08'
      #9',AllDay09'
      #9',AllDay10'
      #9',AllDay11'
      #9',AllDay12'
      #9',derivedtbl_OffTime.AllTime'
      #9',derivedtbl_OffTime.AllDay'
      #9',derivedtbl_OffTime.RemainDay'
      #9',derivedtbl_OffTime.Talab'
      #9',derivedtbl_OffTime.TalabPrice'
      #9',derivedtbl_OffTime.Bedehi'
      #9',derivedtbl_OffTime.BedehiPrice'
      #9',derivedtbl_Func.SumFunctionDay'
      'FROM Pay.PersonelInfo'
      
        'INNER JOIN Pay.Interdicts ON PersonelInfo.PersonelNo = Interdict' +
        's.PersonelNo'
      
        'INNER JOIN Pay.FormsInfo AS FormsInfo_OfficeCode ON Interdicts.O' +
        'fficeCode = FormsInfo_OfficeCode.FormInfoID'
      
        'INNER JOIN Pay.FormsInfo AS FormsInfoPersonelState ON PersonelIn' +
        'fo.PersonelState = FormsInfoPersonelState.FormInfoID'
      
        'INNER JOIN Pay.FunctionsSum(:Mounth2From, :Mounth2To, :YearIDFro' +
        'm, :YearIDTo) AS derivedtbl_Func ON PersonelInfo.PersonelNo = de' +
        'rivedtbl_Func.PersonelNo'
      'LEFT JOIN ('
      #9'SELECT InterdictForUse.PersonelNo'
      #9#9',derivedtbl_1.InfoName_L1'
      #9#9',derivedtbl_1.InfoName_L2'
      #9#9',derivedtbl_1.Day'
      #9#9',derivedtbl_1.TIME'
      #9#9',derivedtbl_1.Minute_'
      #9#9',AllDay00'
      #9#9',AllDay01'
      #9#9',AllDay02'
      #9#9',AllDay03'
      #9#9',AllDay04'
      #9#9',AllDay05'
      #9#9',AllDay06'
      #9#9',AllDay07'
      #9#9',AllDay08'
      #9#9',AllDay09'
      #9#9',AllDay10'
      #9#9',AllDay11'
      #9#9',AllDay12'
      #9#9',derivedtbl_1.AllTime'
      #9#9',derivedtbl_1.AllDay'
      #9#9',derivedtbl_1.RemainDay'
      #9#9',derivedtbl_1.Talab'
      
        #9#9',CAST(SUM(ROUND((InterdictForUse.Amount / FormsInfo.Amount) * ' +
        '(FormsInfo.StandardDays * derivedtbl_1.Talab) + (InterdictForUse' +
        '.Amount / FormsInfo.Amount) * (FormsInfo.StandardTimes * derived' +
        'tbl_1.Talab), 0)) AS MONEY) AS TalabPrice'
      #9#9',derivedtbl_1.Bedehi'
      
        #9#9',CAST(SUM(ROUND((InterdictForUse.Amount / FormsInfo.Amount) * ' +
        '(FormsInfo.StandardDays * derivedtbl_1.Bedehi) + (InterdictForUs' +
        'e.Amount / FormsInfo.Amount) * (FormsInfo.StandardTimes * derive' +
        'dtbl_1.Bedehi), 0)) AS MONEY) AS BedehiPrice'
      #9'FROM Pay.FormsInfo'
      
        #9'INNER JOIN Pay.InterdictForUseLast(1, 1, :PersonelNo1From, :Per' +
        'sonelNo1To) AS InterdictForUse'
      #9'INNER JOIN ('
      #9#9'SELECT FormInfoID'
      #9#9#9',SalaryID'
      #9#9#9',Kind'
      #9#9'FROM Pay.SalaryRange'
      #9#9'WHERE (Kind = 0)'
      
        #9#9') AS salaryRange4Use ON InterdictForUse.SalaryID = salaryRange' +
        '4Use.SalaryID ON FormsInfo.FormInfoID = salaryRange4Use.FormInfo' +
        'ID INNER JOIN ('
      #9#9'SELECT PersonelNo'
      #9#9#9',InfoName_L1'
      #9#9#9',InfoName_L2'
      #9#9#9',Day'
      #9#9#9',TIME'
      #9#9#9',Minute_'
      #9#9#9',AllTime'
      #9#9#9',AllDay'
      #9#9#9',RemainDay'
      #9#9#9',('
      #9#9#9#9'CASE'
      #9#9#9#9#9'WHEN OffTime.RemainDay > 0'
      #9#9#9#9#9#9'THEN OffTime.RemainDay'
      #9#9#9#9#9'ELSE 0'
      #9#9#9#9#9'END'
      #9#9#9#9') AS Talab'
      #9#9#9',('
      #9#9#9#9'CASE'
      #9#9#9#9#9'WHEN OffTime.RemainDay < 0'
      #9#9#9#9#9#9'THEN abs(OffTime.RemainDay)'
      #9#9#9#9#9'ELSE 0'
      #9#9#9#9#9'END'
      #9#9#9#9') AS Bedehi'
      #9#9#9',AllDay00'
      #9#9#9',AllDay01'
      #9#9#9',AllDay02'
      #9#9#9',AllDay03'
      #9#9#9',AllDay04'
      #9#9#9',AllDay05'
      #9#9#9',AllDay06'
      #9#9#9',AllDay07'
      #9#9#9',AllDay08'
      #9#9#9',AllDay09'
      #9#9#9',AllDay10'
      #9#9#9',AllDay11'
      #9#9#9',AllDay12'
      #9#9'FROM ('
      #9#9#9'SELECT PersonelDecExt.PersonelNo'
      #9#9#9#9',FormsInfo_1.InfoName_L1'
      #9#9#9#9',FormsInfo_1.InfoName_L2'
      #9#9#9#9',SUM(('
      #9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9'WHEN 0'
      #9#9#9#9#9#9#9#9'THEN IsNull(PersonelDecExt.DayQuntity, 0)'
      #9#9#9#9#9#9#9'ELSE 1 * IsNull(PersonelDecExt.DayQuntity, 0)'
      #9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9')) AS Day'
      #9#9#9#9',SUM(('
      #9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9'WHEN 0'
      #9#9#9#9#9#9#9#9'THEN PersonelDecExt.DayTime'
      #9#9#9#9#9#9#9'ELSE 1 * PersonelDecExt.DayTime'
      #9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9')) AS TIME'
      #9#9#9#9',SUM(('
      #9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9'WHEN 0'
      #9#9#9#9#9#9#9#9'THEN PersonelDecExt.Minute_'
      #9#9#9#9#9#9#9'ELSE 1 * PersonelDecExt.Minute_'
      #9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9')) AS Minute_'
      #9#9#9#9',ROUND(SUM(('
      #9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9'WHEN 0'
      #9#9#9#9#9#9#9#9#9'THEN 0'
      #9#9#9#9#9#9#9#9'ELSE 1 * PersonelDecExt.DayTime'
      #9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9')) + SUM(('
      #9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9'WHEN 0'
      #9#9#9#9#9#9#9#9#9'THEN PersonelDecExt.Minute_'
      #9#9#9#9#9#9#9#9'ELSE 1 * PersonelDecExt.Minute_'
      #9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9')) / 60, 2) AS AllTime'
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
      #9#9#9#9',ROUND(ROUND(SUM(('
      #9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9'WHEN 1'
      #9#9#9#9#9#9#9#9#9#9'THEN IsNull(PersonelDecExt.DayQuntity, 0)'
      #9#9#9#9#9#9#9#9#9'ELSE 0'
      #9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9')) + ROUND(SUM(('
      #9#9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9#9'WHEN 1'
      #9#9#9#9#9#9#9#9#9#9#9'THEN PersonelDecExt.DayTime'
      #9#9#9#9#9#9#9#9#9#9'ELSE 0'
      #9#9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9#9')) + SUM(('
      #9#9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9#9'WHEN 1'
      #9#9#9#9#9#9#9#9#9#9#9'THEN PersonelDecExt.Minute_'
      #9#9#9#9#9#9#9#9#9#9'ELSE 0'
      #9#9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9#9')) / 60, 2) / FormsInfo_1.Amount, 2), 2) AS AllDay01'
      #9#9#9#9',ROUND(ROUND(SUM(('
      #9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9'WHEN 2'
      #9#9#9#9#9#9#9#9#9#9'THEN IsNull(PersonelDecExt.DayQuntity, 0)'
      #9#9#9#9#9#9#9#9#9'ELSE 0'
      #9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9')) + ROUND(SUM(('
      #9#9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9#9'WHEN 2'
      #9#9#9#9#9#9#9#9#9#9#9'THEN PersonelDecExt.DayTime'
      #9#9#9#9#9#9#9#9#9#9'ELSE 0'
      #9#9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9#9')) + SUM(('
      #9#9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9#9'WHEN 2'
      #9#9#9#9#9#9#9#9#9#9#9'THEN PersonelDecExt.Minute_'
      #9#9#9#9#9#9#9#9#9#9'ELSE 0'
      #9#9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9#9')) / 60, 2) / FormsInfo_1.Amount, 2), 2) AS AllDay02'
      #9#9#9#9',ROUND(ROUND(SUM(('
      #9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9'WHEN 3'
      #9#9#9#9#9#9#9#9#9#9'THEN IsNull(PersonelDecExt.DayQuntity, 0)'
      #9#9#9#9#9#9#9#9#9'ELSE 0'
      #9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9')) + ROUND(SUM(('
      #9#9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9#9'WHEN 3'
      #9#9#9#9#9#9#9#9#9#9#9'THEN PersonelDecExt.DayTime'
      #9#9#9#9#9#9#9#9#9#9'ELSE 0'
      #9#9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9#9')) + SUM(('
      #9#9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9#9'WHEN 3'
      #9#9#9#9#9#9#9#9#9#9#9'THEN PersonelDecExt.Minute_'
      #9#9#9#9#9#9#9#9#9#9'ELSE 0'
      #9#9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9#9')) / 60, 2) / FormsInfo_1.Amount, 2), 2) AS AllDay03'
      #9#9#9#9',ROUND(ROUND(SUM(('
      #9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9'WHEN 4'
      #9#9#9#9#9#9#9#9#9#9'THEN IsNull(PersonelDecExt.DayQuntity, 0)'
      #9#9#9#9#9#9#9#9#9'ELSE 0'
      #9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9')) + ROUND(SUM(('
      #9#9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9#9'WHEN 4'
      #9#9#9#9#9#9#9#9#9#9#9'THEN PersonelDecExt.DayTime'
      #9#9#9#9#9#9#9#9#9#9'ELSE 0'
      #9#9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9#9')) + SUM(('
      #9#9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9#9'WHEN 4'
      #9#9#9#9#9#9#9#9#9#9#9'THEN PersonelDecExt.Minute_'
      #9#9#9#9#9#9#9#9#9#9'ELSE 0'
      #9#9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9#9')) / 60, 2) / FormsInfo_1.Amount, 2), 2) AS AllDay04'
      #9#9#9#9',ROUND(ROUND(SUM(('
      #9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9'WHEN 5'
      #9#9#9#9#9#9#9#9#9#9'THEN IsNull(PersonelDecExt.DayQuntity, 0)'
      #9#9#9#9#9#9#9#9#9'ELSE 0'
      #9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9')) + ROUND(SUM(('
      #9#9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9#9'WHEN 5'
      #9#9#9#9#9#9#9#9#9#9#9'THEN PersonelDecExt.DayTime'
      #9#9#9#9#9#9#9#9#9#9'ELSE 0'
      #9#9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9#9')) + SUM(('
      #9#9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9#9'WHEN 5'
      #9#9#9#9#9#9#9#9#9#9#9'THEN PersonelDecExt.Minute_'
      #9#9#9#9#9#9#9#9#9#9'ELSE 0'
      #9#9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9#9')) / 60, 2) / FormsInfo_1.Amount, 2), 2) AS AllDay05'
      #9#9#9#9',ROUND(ROUND(SUM(('
      #9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9'WHEN 6'
      #9#9#9#9#9#9#9#9#9#9'THEN IsNull(PersonelDecExt.DayQuntity, 0)'
      #9#9#9#9#9#9#9#9#9'ELSE 0'
      #9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9')) + ROUND(SUM(('
      #9#9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9#9'WHEN 6'
      #9#9#9#9#9#9#9#9#9#9#9'THEN PersonelDecExt.DayTime'
      #9#9#9#9#9#9#9#9#9#9'ELSE 0'
      #9#9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9#9')) + SUM(('
      #9#9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9#9'WHEN 6'
      #9#9#9#9#9#9#9#9#9#9#9'THEN PersonelDecExt.Minute_'
      #9#9#9#9#9#9#9#9#9#9'ELSE 0'
      #9#9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9#9')) / 60, 2) / FormsInfo_1.Amount, 2), 2) AS AllDay06'
      #9#9#9#9',ROUND(ROUND(SUM(('
      #9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9'WHEN 7'
      #9#9#9#9#9#9#9#9#9#9'THEN IsNull(PersonelDecExt.DayQuntity, 0)'
      #9#9#9#9#9#9#9#9#9'ELSE 0'
      #9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9')) + ROUND(SUM(('
      #9#9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9#9'WHEN 7'
      #9#9#9#9#9#9#9#9#9#9#9'THEN PersonelDecExt.DayTime'
      #9#9#9#9#9#9#9#9#9#9'ELSE 0'
      #9#9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9#9')) + SUM(('
      #9#9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9#9'WHEN 7'
      #9#9#9#9#9#9#9#9#9#9#9'THEN PersonelDecExt.Minute_'
      #9#9#9#9#9#9#9#9#9#9'ELSE 0'
      #9#9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9#9')) / 60, 2) / FormsInfo_1.Amount, 2), 2) AS AllDay07'
      #9#9#9#9',ROUND(ROUND(SUM(('
      #9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9'WHEN 8'
      #9#9#9#9#9#9#9#9#9#9'THEN IsNull(PersonelDecExt.DayQuntity, 0)'
      #9#9#9#9#9#9#9#9#9'ELSE 0'
      #9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9')) + ROUND(SUM(('
      #9#9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9#9'WHEN 8'
      #9#9#9#9#9#9#9#9#9#9#9'THEN PersonelDecExt.DayTime'
      #9#9#9#9#9#9#9#9#9#9'ELSE 0'
      #9#9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9#9')) + SUM(('
      #9#9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9#9'WHEN 8'
      #9#9#9#9#9#9#9#9#9#9#9'THEN PersonelDecExt.Minute_'
      #9#9#9#9#9#9#9#9#9#9'ELSE 0'
      #9#9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9#9')) / 60, 2) / FormsInfo_1.Amount, 2), 2) AS AllDay08'
      #9#9#9#9',ROUND(ROUND(SUM(('
      #9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9'WHEN 9'
      #9#9#9#9#9#9#9#9#9#9'THEN IsNull(PersonelDecExt.DayQuntity, 0)'
      #9#9#9#9#9#9#9#9#9'ELSE 0'
      #9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9')) + ROUND(SUM(('
      #9#9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9#9'WHEN 9'
      #9#9#9#9#9#9#9#9#9#9#9'THEN PersonelDecExt.DayTime'
      #9#9#9#9#9#9#9#9#9#9'ELSE 0'
      #9#9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9#9')) + SUM(('
      #9#9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9#9'WHEN 9'
      #9#9#9#9#9#9#9#9#9#9#9'THEN PersonelDecExt.Minute_'
      #9#9#9#9#9#9#9#9#9#9'ELSE 0'
      #9#9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9#9')) / 60, 2) / FormsInfo_1.Amount, 2), 2) AS AllDay09'
      #9#9#9#9',ROUND(ROUND(SUM(('
      #9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9'WHEN 10'
      #9#9#9#9#9#9#9#9#9#9'THEN IsNull(PersonelDecExt.DayQuntity, 0)'
      #9#9#9#9#9#9#9#9#9'ELSE 0'
      #9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9')) + ROUND(SUM(('
      #9#9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9#9'WHEN 10'
      #9#9#9#9#9#9#9#9#9#9#9'THEN PersonelDecExt.DayTime'
      #9#9#9#9#9#9#9#9#9#9'ELSE 0'
      #9#9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9#9')) + SUM(('
      #9#9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9#9'WHEN 10'
      #9#9#9#9#9#9#9#9#9#9#9'THEN PersonelDecExt.Minute_'
      #9#9#9#9#9#9#9#9#9#9'ELSE 0'
      #9#9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9#9')) / 60, 2) / FormsInfo_1.Amount, 2), 2) AS AllDay10'
      #9#9#9#9',ROUND(ROUND(SUM(('
      #9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9'WHEN 11'
      #9#9#9#9#9#9#9#9#9#9'THEN IsNull(PersonelDecExt.DayQuntity, 0)'
      #9#9#9#9#9#9#9#9#9'ELSE 0'
      #9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9')) + ROUND(SUM(('
      #9#9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9#9'WHEN 11'
      #9#9#9#9#9#9#9#9#9#9#9'THEN PersonelDecExt.DayTime'
      #9#9#9#9#9#9#9#9#9#9'ELSE 0'
      #9#9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9#9')) + SUM(('
      #9#9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9#9'WHEN 11'
      #9#9#9#9#9#9#9#9#9#9#9'THEN PersonelDecExt.Minute_'
      #9#9#9#9#9#9#9#9#9#9'ELSE 0'
      #9#9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9#9')) / 60, 2) / FormsInfo_1.Amount, 2), 2) AS AllDay11'
      #9#9#9#9',ROUND(ROUND(SUM(('
      #9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9'WHEN 12'
      #9#9#9#9#9#9#9#9#9#9'THEN IsNull(PersonelDecExt.DayQuntity, 0)'
      #9#9#9#9#9#9#9#9#9'ELSE 0'
      #9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9')) + ROUND(SUM(('
      #9#9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9#9'WHEN 12'
      #9#9#9#9#9#9#9#9#9#9#9'THEN PersonelDecExt.DayTime'
      #9#9#9#9#9#9#9#9#9#9'ELSE 0'
      #9#9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9#9')) + SUM(('
      #9#9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9#9'WHEN 12'
      #9#9#9#9#9#9#9#9#9#9#9'THEN PersonelDecExt.Minute_'
      #9#9#9#9#9#9#9#9#9#9'ELSE 0'
      #9#9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9#9')) / 60, 2) / FormsInfo_1.Amount, 2), 2) AS AllDay12'
      #9#9#9#9',ROUND(ROUND(SUM(('
      #9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9'WHEN 0'
      #9#9#9#9#9#9#9#9#9#9'THEN IsNull(PersonelDecExt.DayQuntity, 0)'
      #9#9#9#9#9#9#9#9#9'ELSE 1 * IsNull(PersonelDecExt.DayQuntity, 0)'
      #9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9')) + ROUND(SUM(('
      #9#9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9#9'WHEN 0'
      #9#9#9#9#9#9#9#9#9#9#9'THEN PersonelDecExt.DayTime'
      #9#9#9#9#9#9#9#9#9#9'ELSE 1 * PersonelDecExt.DayTime'
      #9#9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9#9')) + SUM(('
      #9#9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9#9'WHEN 0'
      #9#9#9#9#9#9#9#9#9#9#9'THEN PersonelDecExt.Minute_'
      #9#9#9#9#9#9#9#9#9#9'ELSE 1 * PersonelDecExt.Minute_'
      #9#9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9#9')) / 60, 2) / FormsInfo_1.Amount, 2), 2) AS AllDay'
      #9#9#9#9',ROUND(('
      
        #9#9#9#9#9#9'SELECT FormsInfo_1.StandardDays * SUM(FunctionDay) / 365 A' +
        'S FunctionDay'
      #9#9#9#9#9#9'FROM Pay.Functions'
      #9#9#9#9#9#9'WHERE  ( YearID BETWEEN :YearID2From AND :YearID2To )'
      '              AND'
      #9#9#9#9#9#9'  (PersonelNo = PersonelDecExt.PersonelNo)'
      #9#9#9#9#9#9') + ROUND(SUM(('
      #9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9'WHEN 0'
      #9#9#9#9#9#9#9#9#9#9'THEN PersonelDecExt.DayQuntity'
      #9#9#9#9#9#9#9#9#9'ELSE - 1 * PersonelDecExt.DayQuntity'
      #9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9')) + ROUND(SUM(('
      #9#9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9#9'WHEN 0'
      #9#9#9#9#9#9#9#9#9#9#9'THEN PersonelDecExt.DayTime'
      #9#9#9#9#9#9#9#9#9#9'ELSE - 1 * PersonelDecExt.DayTime'
      #9#9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9#9')) + SUM(('
      #9#9#9#9#9#9#9#9#9'CASE PersonelDecExt.FirstMounth'
      #9#9#9#9#9#9#9#9#9#9'WHEN 0'
      #9#9#9#9#9#9#9#9#9#9#9'THEN PersonelDecExt.Minute_'
      #9#9#9#9#9#9#9#9#9#9'ELSE - 1 * PersonelDecExt.Minute_'
      #9#9#9#9#9#9#9#9#9#9'END'
      #9#9#9#9#9#9#9#9#9')) / 60, 2) / FormsInfo_1.Amount, 2), 2) AS RemainDay'
      #9#9#9'FROM Pay.PersonelDecExt'
      
        #9#9#9'LEFT JOIN Pay.FormsInfo AS FormsInfo_1 ON PersonelDecExt.Form' +
        'InfoID = FormsInfo_1.FormInfoID'
      #9#9#9'WHERE ('
      #9#9#9#9#9'PersonelDecExt.FirstMounth BETWEEN :MounthFrom'
      #9#9#9#9#9#9'AND :MounthTo'
      #9#9#9#9#9')'
      #9#9#9#9'AND (FormsInfo_1.FormType = 16)'
      #9#9#9#9'AND ('
      #9#9#9#9#9'FormsInfo_1.InfoID BETWEEN :InfoIDFrom'
      #9#9#9#9#9#9'AND :InfoIDTo'
      #9#9#9#9#9')'
      #9#9#9#9'AND ('
      #9#9#9#9#9'PersonelDecExt.YearID BETWEEN :YearID1From'
      #9#9#9#9#9#9'AND :YearID1To'
      #9#9#9#9#9')'
      #9#9#9'GROUP BY PersonelDecExt.PersonelNo'
      #9#9#9#9',FormsInfo_1.InfoName_L1'
      #9#9#9#9',FormsInfo_1.InfoName_L2'
      #9#9#9#9',FormsInfo_1.StandardDays'
      #9#9#9#9',FormsInfo_1.StandardTimes'
      #9#9#9#9',FormsInfo_1.Amount'
      #9#9#9') AS OffTime'
      
        #9#9') AS derivedtbl_1 ON InterdictForUse.PersonelNo = derivedtbl_1' +
        '.PersonelNo WHERE (FormsInfo.FormType = 47)'
      #9#9'AND (FormsInfo.InfoID = 3)'
      #9'GROUP BY InterdictForUse.PersonelNo'
      #9#9',derivedtbl_1.InfoName_L1'
      #9#9',derivedtbl_1.InfoName_L2'
      #9#9',derivedtbl_1.Day'
      #9#9',derivedtbl_1.TIME'
      #9#9',derivedtbl_1.Minute_'
      #9#9',derivedtbl_1.AllTime'
      #9#9',derivedtbl_1.AllDay'
      #9#9',derivedtbl_1.RemainDay'
      #9#9',derivedtbl_1.Talab'
      #9#9',derivedtbl_1.Bedehi'
      #9#9',AllDay00'
      #9#9',AllDay01'
      #9#9',AllDay02'
      #9#9',AllDay03'
      #9#9',AllDay04'
      #9#9',AllDay05'
      #9#9',AllDay06'
      #9#9',AllDay07'
      #9#9',AllDay08'
      #9#9',AllDay09'
      #9#9',AllDay10'
      #9#9',AllDay11'
      #9#9',AllDay12'
      
        #9') AS derivedtbl_OffTime ON PersonelInfo.PersonelNo = derivedtbl' +
        '_OffTime.PersonelNo'
      'WHERE (STATE < 50)'
      #9'AND ('
      #9#9'PersonelInfo.PersonelNo BETWEEN :PersonelNoFrom'
      #9#9#9'AND :PersonelNoTo'
      #9#9')'
      #9'AND ('
      #9#9'FormsInfo_OfficeCode.InfoID BETWEEN :OfficeCodeFrom'
      #9#9#9'AND :OfficeCodeTo'
      #9#9')'
      #9'AND ('
      #9#9'FormsInfoPersonelState.InfoID BETWEEN :PersonelStateFrom'
      #9#9#9'AND :PersonelStateTo'
      #9#9')'
      '')
    Left = 168
    Top = 160
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
    object qryDecExtOnMounthDay: TFloatField
      Tag = 3
      DisplayLabel = #1585#1608#1586
      FieldName = 'Day'
    end
    object qryDecExtOnMounthTime: TFloatField
      Tag = 3
      DisplayLabel = #1587#1575#1593#1578
      FieldName = 'Time'
      OnGetText = AllFloatToTimeGetText
    end
    object qryDecExtOnMounthMinute_: TFloatField
      Tag = 3
      DisplayLabel = #1583#1602#1610#1602#1607
      FieldName = 'Minute_'
      OnGetText = AllFloatToTimeGetText
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
      OnGetText = AllFloatToTimeGetText
    end
    object qryDecExtOnMounthMobile: TStringField
      FieldName = 'Mobile'
    end
    object qryDecExtOnMounthAllDay00: TFloatField
      DisplayLabel = #1575#1576#1578#1583#1575#1610' '#1587#1575#1604
      FieldName = 'AllDay00'
      ReadOnly = True
      OnGetText = AllFloatToTimeGetText
    end
    object qryDecExtOnMounthAllDay01: TFloatField
      DisplayLabel = #1601#1585#1608#1585#1583#1610#1606
      FieldName = 'AllDay01'
      ReadOnly = True
      OnGetText = AllFloatToTimeGetText
    end
    object qryDecExtOnMounthAllDay02: TFloatField
      DisplayLabel = #1575#1585#1583#1610#1576#1607#1588#1578
      FieldName = 'AllDay02'
      ReadOnly = True
      OnGetText = AllFloatToTimeGetText
    end
    object qryDecExtOnMounthAllDay03: TFloatField
      DisplayLabel = #1582#1585#1583#1575#1583
      FieldName = 'AllDay03'
      ReadOnly = True
      OnGetText = AllFloatToTimeGetText
    end
    object qryDecExtOnMounthAllDay04: TFloatField
      DisplayLabel = #1578#1610#1585
      FieldName = 'AllDay04'
      ReadOnly = True
      OnGetText = AllFloatToTimeGetText
    end
    object qryDecExtOnMounthAllDay05: TFloatField
      DisplayLabel = #1605#1585#1583#1575#1583
      FieldName = 'AllDay05'
      ReadOnly = True
      OnGetText = AllFloatToTimeGetText
    end
    object qryDecExtOnMounthAllDay06: TFloatField
      DisplayLabel = #1588#1607#1585#1610#1608#1585
      FieldName = 'AllDay06'
      ReadOnly = True
      OnGetText = AllFloatToTimeGetText
    end
    object qryDecExtOnMounthAllDay07: TFloatField
      DisplayLabel = #1605#1607#1585
      FieldName = 'AllDay07'
      ReadOnly = True
      OnGetText = AllFloatToTimeGetText
    end
    object qryDecExtOnMounthAllDay08: TFloatField
      DisplayLabel = #1570#1576#1575#1606
      FieldName = 'AllDay08'
      ReadOnly = True
      OnGetText = AllFloatToTimeGetText
    end
    object qryDecExtOnMounthAllDay09: TFloatField
      DisplayLabel = #1570#1584#1585
      FieldName = 'AllDay09'
      ReadOnly = True
      OnGetText = AllFloatToTimeGetText
    end
    object qryDecExtOnMounthAllDay10: TFloatField
      DisplayLabel = #1583#1610
      FieldName = 'AllDay10'
      ReadOnly = True
      OnGetText = AllFloatToTimeGetText
    end
    object qryDecExtOnMounthAllDay11: TFloatField
      DisplayLabel = #1576#1607#1605#1606
      FieldName = 'AllDay11'
      ReadOnly = True
      OnGetText = AllFloatToTimeGetText
    end
    object qryDecExtOnMounthAllDay12: TFloatField
      DisplayLabel = #1575#1587#1601#1606#1583
      FieldName = 'AllDay12'
      ReadOnly = True
      OnGetText = AllFloatToTimeGetText
    end
  end
  object srcDecExtOnMounth: TDataSource
    DataSet = qryDecExtOnMounth
    Left = 376
    Top = 208
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcDecExtOnMounth
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 456
    Top = 285
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
end

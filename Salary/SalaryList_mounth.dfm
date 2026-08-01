inherited SalaryList_mounthF: TSalaryList_mounthF
  Left = 211
  Top = 132
  Caption = #1604#1610#1587#1578' '#1581#1602#1608#1602
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    inherited BtnReject: TBitBtn
      Left = 11
    end
    object Button1: TButton
      Left = 624
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Anchors = [akTop, akRight, akBottom]
      TabOrder = 1
    end
    object DBNavigator2: TDBNavigator
      Left = 345
      Top = 8
      Width = 272
      Height = 25
      DataSource = srcSalary
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Anchors = [akLeft, akTop, akRight]
      Flat = True
      TabOrder = 2
    end
    object BitBtn4: TBitBtn
      Left = 243
      Top = 8
      Width = 90
      Height = 25
      Action = actSendtoExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 3
    end
    object BitBtn5: TBitBtn
      Left = 166
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1576#1607' '#1578#1585#1578#1610#1576
      TabOrder = 4
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
    end
    object BitBtn6: TBitBtn
      Left = 89
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 5
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
    end
    object BitBtn7: TBitBtn
      Left = 702
      Top = 8
      Width = 75
      Height = 25
      Action = actFilter
      Anchors = [akRight, akBottom]
      Caption = #1605#1581#1583#1608#1583#1610#1578
      TabOrder = 6
    end
  end
  inherited Panel2: TPanel
    inherited lblCaption: TLabel
      Left = 656
      Width = 66
      Caption = #1604#1610#1587#1578' '#1581#1602#1608#1602
    end
  end
  inherited Panel3: TPanel
    object DBGrid1: TDBGrid
      Left = 2
      Top = 39
      Width = 780
      Height = 348
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = clCream
      DataSource = srcSalary
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnColEnter = DBGrid1ColEnter
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'InfoID'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PersonelNO'
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OfficeName'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PersonName'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Wage1'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Wage2'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Wage3'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Wage4'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Wage5'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Wage6'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Wage7'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Wage8'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Wage9'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Wage10'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Wage11'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Wage12'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Wage13'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Wage14'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Wage15'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SumWage'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ContainInsourance'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ContainTax'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TaxValue'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dec1'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dec2'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dec3'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dec4'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dec5'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dec6'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dec7'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dec8'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dec9'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dec10'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SumDec'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PayableSalary'
          Width = 112
          Visible = True
        end>
    end
    object ToolBar1: TToolBar
      Left = 2
      Top = 2
      Width = 776
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
        Top = 2
        Caption = #1601#1585#1608#1585#1583#1610#1606
        Grouped = True
        ImageIndex = 0
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton2: TToolButton
        Tag = 2
        Left = 54
        Top = 2
        Caption = #1575#1585#1583#1610#1576#1607#1588#1578
        Grouped = True
        ImageIndex = 1
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton3: TToolButton
        Tag = 3
        Left = 108
        Top = 2
        Caption = #1582#1585#1583#1575#1583
        Grouped = True
        ImageIndex = 2
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton4: TToolButton
        Tag = 4
        Left = 162
        Top = 2
        Caption = #1578#1610#1585
        Grouped = True
        ImageIndex = 3
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton5: TToolButton
        Tag = 5
        Left = 216
        Top = 2
        Caption = #1605#1585#1583#1575#1583
        Grouped = True
        ImageIndex = 4
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton6: TToolButton
        Tag = 6
        Left = 270
        Top = 2
        Caption = #1588#1607#1585#1610#1608#1585
        Grouped = True
        ImageIndex = 5
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton7: TToolButton
        Tag = 7
        Left = 324
        Top = 2
        Caption = #1605#1607#1585
        Grouped = True
        ImageIndex = 6
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton8: TToolButton
        Tag = 8
        Left = 378
        Top = 2
        Caption = #1570#1576#1575#1606
        Grouped = True
        ImageIndex = 7
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton9: TToolButton
        Tag = 9
        Left = 432
        Top = 2
        Caption = #1570#1584#1585
        Grouped = True
        ImageIndex = 8
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton10: TToolButton
        Tag = 10
        Left = 486
        Top = 2
        Caption = #1583#1610
        Grouped = True
        ImageIndex = 9
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton11: TToolButton
        Tag = 11
        Left = 540
        Top = 2
        Caption = #1576#1607#1605#1606
        Grouped = True
        ImageIndex = 10
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton12: TToolButton
        Tag = 12
        Left = 594
        Top = 2
        Caption = #1575#1587#1601#1606#1583
        Grouped = True
        ImageIndex = 11
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
    end
    object DBGrid2: TDBGrid
      Left = 2
      Top = 384
      Width = 782
      Height = 44
      Anchors = [akLeft, akRight, akBottom]
      DataSource = srcSum
      Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'sumword'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SumWage1'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SumWage2'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SumWage3'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SumWage4'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SumWage5'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SumWage6'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SumWage7'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SumWage8'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SumWage9'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SumWage10'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SumWage11'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SumWage12'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SumWage13'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SumWage14'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SumWage15'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'allSumWage'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sumContainInsourance'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sumContainTax'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sumTaxValue'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sumDec1'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sumDec2'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sumDec3'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sumDec4'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sumDec5'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sumDec6'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sumDec7'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sumDec8'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sumDec9'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sumDec10'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'allSumDec'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'allsumPayableSalary'
          Visible = True
        end>
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
  object qrysalary: TADOQuery
    Connection = DMF.adcSalary
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Mounth'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'FromInfoID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ToInfoID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
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
      
        'SELECT     Pay.FixedCalculated.OfficeCode, Pay.FixedCalculated.P' +
        'ersonelNO, Pay.FormsInfo.InfoName_L1 AS OfficeName,Pay.FormsInfo' +
        '.InfoID,'
      
        '                      Pay.PersonelInfo.name_L1 + '#39' '#39' + Pay.Perso' +
        'nelInfo.lastName_L1 AS PersonName ,'
      
        #9#9#9'sum( case salaryid when 31  then price else 0 end ) as Wage1 ' +
        ','
      
        #9#9#9'sum( case salaryid when 117  then price else 0 end ) as Wage2' +
        ' ,'
      
        #9#9#9'sum( case salaryid when 32  then price else 0 end ) as Wage3 ' +
        ','
      
        #9#9#9'sum( case salaryid when 32  then price else 0 end ) as Wage4 ' +
        ','
      
        #9#9#9'sum( case salaryid when 32  then price else 0 end ) as Wage5 ' +
        ','
      
        #9#9#9'sum( case salaryid when 32  then price else 0 end ) as Wage6 ' +
        ','
      
        #9#9#9'sum( case salaryid when 170  then price else 0 end ) as Wage7' +
        ' ,'
      
        #9#9#9'sum( case salaryid when -1  then price else 0 end ) as Wage8 ' +
        ','
      
        #9#9#9'sum( case salaryid when -1  then price else 0 end ) as Wage9 ' +
        ','
      
        #9#9#9'sum( case salaryid when 121  then price else 0 end ) as Wage1' +
        '0 ,'
      
        #9#9#9'sum( case salaryid when 32  then price else 0 end ) as Wage11' +
        ' ,'
      
        #9#9#9'sum( case salaryid when 32  then price else 0 end ) as Wage12' +
        ' ,'
      
        #9#9#9'sum( case salaryid when 32  then price else 0 end ) as Wage13' +
        ' ,'
      
        #9#9#9'sum( case salaryid when 121  then price else 0 end ) as Wage1' +
        '4 ,'
      #9#9#9'sum( case  when salaryid >121'
      #9#9#9#9#9'then case ShowlistKind when 1 then price else 0 end'
      #9#9#9#9#9'else 0 end ) as Wage15 ,'
      
        #9#9#9'Sum(case ShowlistKind when 1 then price else 0 end ) as SumWa' +
        'ge ,'
      
        #9#9#9'sum( case ShowlistKind when 3  then price else 0 end ) as Con' +
        'tainInsourance ,'
      
        #9#9#9'sum( case ShowlistKind when 12  then price else 0 end ) as Co' +
        'ntainTax ,'
      
        #9#9#9'sum( case ShowlistKind when 11  then price else 0 end ) as Ta' +
        'xValue ,'
      #9#9#9'sum( case salaryid when 32  then price else 0 end ) as Dec1 ,'
      #9#9#9'sum( case salaryid when 32  then price else 0 end ) as Dec2 ,'
      #9#9#9'sum( case salaryid when 32  then price else 0 end ) as Dec3 ,'
      #9#9#9'sum( case salaryid when 32  then price else 0 end ) as Dec4 ,'
      #9#9#9'sum( case salaryid when 32  then price else 0 end ) as Dec5 ,'
      #9#9#9'sum( case salaryid when 32  then price else 0 end ) as Dec6 ,'
      #9#9#9'sum( case salaryid when 32  then price else 0 end ) as Dec7 ,'
      #9#9#9'sum( case salaryid when 32  then price else 0 end ) as Dec8 ,'
      #9#9#9'sum( case salaryid when 32  then price else 0 end ) as Dec9 ,'
      #9#9#9'sum( case  when salaryid >121'
      #9#9#9#9#9'then case ShowlistKind when 2 then price else 0 end'
      #9#9#9#9#9'else 0 end ) as Dec10 ,'
      #9#9#9'sum( case ShowlistKind when 2  then price else 0 end ) +'
      
        #9#9#9'Sum( case ShowlistKind when 11 then price else 0 end ) as Sum' +
        'Dec ,'
      
        #9#9#9'(Sum(case ShowlistKind when 1 then price else 0 end )-Sum( ca' +
        'se ShowlistKind when 11 then price else 0 end )) as PayableSalar' +
        'y'
      'FROM         Pay.FixedCalculated LEFT OUTER JOIN'
      
        '                      Pay.PersonelInfo ON Pay.FixedCalculated.Pe' +
        'rsonelNO = Pay.PersonelInfo.PersonelNo LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo ON Pay.FixedCalculated.Offic' +
        'eCode = Pay.FormsInfo.FormInfoID'
      'WHERE     (Pay.FixedCalculated.Mounth = :Mounth)'
      
        'and  (Pay.FormsInfo.InfoID  BETWEEN :FromInfoID AND :ToInfoID) A' +
        'ND (Pay.FixedCalculated.PersonelNO BETWEEN :FromPersonelNo AND :' +
        'ToPersonelNo)'
      
        'GROUP BY Pay.FixedCalculated.OfficeCode,Pay.FormsInfo.InfoID, Pay' +
        '.FixedCalculated.PersonelNO, Pay.FormsInfo.InfoName_L1,'
      
        '                      Pay.PersonelInfo.name_L1 + '#39' '#39' + Pay.Perso' +
        'nelInfo.lastName_L1')
    Left = 64
    Top = 200
    object qrysalaryInfoID: TIntegerField
      DisplayLabel = #1603#1583
      FieldName = 'InfoID'
    end
    object qrysalaryPersonelNO: TIntegerField
      Tag = 3
      DisplayLabel = #1588' '#1662#1585#1587#1606#1604
      DisplayWidth = 14
      FieldName = 'PersonelNO'
    end
    object qrysalaryOfficeName: TStringField
      Tag = 3
      DisplayLabel = #1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
      DisplayWidth = 20
      FieldName = 'OfficeName'
      Size = 255
    end
    object qrysalaryPersonName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1662#1585#1587#1606#1604
      DisplayWidth = 22
      FieldName = 'PersonName'
      Size = 56
    end
    object qrysalaryWage1: TBCDField
      DisplayWidth = 12
      FieldName = 'Wage1'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryWage2: TBCDField
      DisplayWidth = 12
      FieldName = 'Wage2'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryWage3: TBCDField
      DisplayWidth = 12
      FieldName = 'Wage3'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryWage4: TBCDField
      DisplayWidth = 12
      FieldName = 'Wage4'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryWage5: TBCDField
      DisplayWidth = 12
      FieldName = 'Wage5'
      ReadOnly = True
      DisplayFormat = '#,0'
      Precision = 19
    end
    object qrysalaryWage6: TBCDField
      DisplayWidth = 12
      FieldName = 'Wage6'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryWage7: TBCDField
      DisplayWidth = 12
      FieldName = 'Wage7'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryWage8: TBCDField
      DisplayWidth = 12
      FieldName = 'Wage8'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryWage9: TBCDField
      DisplayWidth = 12
      FieldName = 'Wage9'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryWage10: TBCDField
      DisplayWidth = 12
      FieldName = 'Wage10'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryWage11: TBCDField
      DisplayWidth = 12
      FieldName = 'Wage11'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryWage12: TBCDField
      DisplayWidth = 12
      FieldName = 'Wage12'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryWage13: TBCDField
      DisplayWidth = 12
      FieldName = 'Wage13'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryWage14: TBCDField
      DisplayWidth = 12
      FieldName = 'Wage14'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryWage15: TBCDField
      DisplayLabel = #1587#1575#1610#1585' '#1605#1586#1575#1610#1575
      DisplayWidth = 12
      FieldName = 'Wage15'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalarySumWage: TBCDField
      DisplayLabel = #1580#1605#1593' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1610#1575
      DisplayWidth = 12
      FieldName = 'SumWage'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryContainInsourance: TBCDField
      DisplayLabel = #1605#1588#1605#1608#1604' '#1576#1610#1605#1607
      DisplayWidth = 12
      FieldName = 'ContainInsourance'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryContainTax: TBCDField
      DisplayLabel = 'A'' '
      DisplayWidth = 12
      FieldName = 'ContainTax'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryTaxValue: TBCDField
      DisplayLabel = #1605#1575#1604#1610#1575#1578' '
      DisplayWidth = 12
      FieldName = 'TaxValue'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryDec1: TBCDField
      DisplayLabel = #1581#1602' '#1576#1610#1605#1607
      DisplayWidth = 12
      FieldName = 'Dec1'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryDec2: TBCDField
      DisplayWidth = 12
      FieldName = 'Dec2'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryDec3: TBCDField
      DisplayWidth = 12
      FieldName = 'Dec3'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryDec4: TBCDField
      DisplayWidth = 12
      FieldName = 'Dec4'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryDec5: TBCDField
      DisplayWidth = 12
      FieldName = 'Dec5'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryDec6: TBCDField
      DisplayWidth = 12
      FieldName = 'Dec6'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryDec7: TBCDField
      DisplayWidth = 12
      FieldName = 'Dec7'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryDec8: TBCDField
      DisplayWidth = 12
      FieldName = 'Dec8'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryDec9: TBCDField
      DisplayWidth = 12
      FieldName = 'Dec9'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryDec10: TBCDField
      DisplayLabel = #1587#1575#1610#1585' '#1603#1587#1608#1585#1575#1578
      DisplayWidth = 12
      FieldName = 'Dec10'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalarySumDec: TBCDField
      DisplayLabel = #1580#1605#1593' '#1603#1587#1608#1585#1575#1578
      DisplayWidth = 12
      FieldName = 'SumDec'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
    object qrysalaryPayableSalary: TBCDField
      DisplayLabel = #1581#1602#1608#1602' '#1602#1575#1576#1604' '#1662#1585#1583#1575#1582#1578
      DisplayWidth = 12
      FieldName = 'PayableSalary'
      ReadOnly = True
      DisplayFormat = '#,0'
      currency = True
      Precision = 19
    end
  end
  object srcSalary: TDataSource
    DataSet = qrysalary
    Left = 112
    Top = 184
  end
  object qryWage: TADOQuery
    Connection = DMF.adcSalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     Pay.FixedCalculated.SalaryID, Pay.FormsInfo.InfoName_' +
        'L1, Pay.FormsInfo.FormInfoID'
      'FROM         Pay.FixedCalculated LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo ON Pay.FixedCalculated.Salar' +
        'yID = Pay.FormsInfo.FormInfoID'
      'WHERE      (Pay.FixedCalculated.ShowListKind = 1)'
      
        'GROUP BY Pay.FixedCalculated.SalaryID, Pay.FormsInfo.InfoName_L1' +
        ', Pay.FormsInfo.FormInfoID'
      'ORDER BY Pay.FixedCalculated.SalaryID')
    Left = 233
    Top = 7
  end
  object qryDec: TADOQuery
    Connection = DMF.adcSalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     TOP 100 PERCENT Pay.FixedCalculated.SalaryID, MAX(CAS' +
        'E WHEN Pay.InsuranceCONSTinfo.InsuranceLabel_L1 IS NULL '
      
        '                      THEN Pay.FormsInfo.InfoName_L1 ELSE Pay.In' +
        'suranceCONSTinfo.InsuranceLabel_L1 END) AS InfoName_L1, Pay.Form' +
        'sInfo.FormInfoID'
      'FROM         Pay.InsuranceCONSTinfo RIGHT OUTER JOIN'
      
        '                      Pay.FormsInfo ON Pay.InsuranceCONSTinfo.Fo' +
        'rmInfoID = Pay.FormsInfo.FormInfoID RIGHT OUTER JOIN'
      
        '                      Pay.FixedCalculated ON Pay.FormsInfo.FormI' +
        'nfoID = Pay.FixedCalculated.SalaryID'
      'WHERE     (Pay.FixedCalculated.ShowListKind = 2)'
      
        'GROUP BY Pay.FixedCalculated.SalaryID, Pay.FormsInfo.InfoName_L1' +
        ', Pay.FormsInfo.FormInfoID'
      'ORDER BY Pay.FixedCalculated.SalaryID')
    Left = 304
    Top = 4
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcSalary
    UserName = 'DBPipeline1'
    Left = 704
    Top = 181
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'InfoID'
      FieldName = 'InfoID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'PersonelNO'
      FieldName = 'PersonelNO'
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
      FieldAlias = 'PersonName'
      FieldName = 'PersonName'
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
      FieldAlias = 'SumWage'
      FieldName = 'SumWage'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'ContainInsourance'
      FieldName = 'ContainInsourance'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = 'ContainTax'
      FieldName = 'ContainTax'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = 'TaxValue'
      FieldName = 'TaxValue'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField24: TppField
      FieldAlias = 'Dec1'
      FieldName = 'Dec1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField25: TppField
      FieldAlias = 'Dec2'
      FieldName = 'Dec2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField26: TppField
      FieldAlias = 'Dec3'
      FieldName = 'Dec3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField27: TppField
      FieldAlias = 'Dec4'
      FieldName = 'Dec4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField28: TppField
      FieldAlias = 'Dec5'
      FieldName = 'Dec5'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField29: TppField
      FieldAlias = 'Dec6'
      FieldName = 'Dec6'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField30: TppField
      FieldAlias = 'Dec7'
      FieldName = 'Dec7'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField31: TppField
      FieldAlias = 'Dec8'
      FieldName = 'Dec8'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField32: TppField
      FieldAlias = 'Dec9'
      FieldName = 'Dec9'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField33: TppField
      FieldAlias = 'Dec10'
      FieldName = 'Dec10'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField34: TppField
      FieldAlias = 'SumDec'
      FieldName = 'SumDec'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField35: TppField
      FieldAlias = 'PayableSalary'
      FieldName = 'PayableSalary'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
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
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\Projects\Fara\Salary\Exe\Report\SalaryList.rtm'
    Units = utMillimeters
    AllowPrintToFile = True
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    PreviewFormSettings.WindowState = wsMaximized
    Left = 704
    Top = 256
    Version = '7.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 36248
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape1'
        ParentWidth = True
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 15081
        mmLeft = 0
        mmTop = 21431
        mmWidth = 284300
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = #1588'.'#1662#1585#1587#1606#1604#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 266965
        mmTop = 29633
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = #1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 247386
        mmTop = 23019
        mmWidth = 15346
        BandType = 0
      end
      object pplblNighty: TppLabel
        UserName = 'lblNighty'
        AutoSize = False
        Caption = #1603#1583' '#1608#1575#1581#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 247386
        mmTop = 29633
        mmWidth = 15346
        BandType = 0
      end
      object w1: TppLabel
        UserName = 'w1'
        SaveOrder = 0
        Save = True
        AutoSize = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4064
        mmLeft = 231246
        mmTop = 23548
        mmWidth = 15346
        BandType = 0
      end
      object w2: TppLabel
        UserName = 'w2'
        SaveOrder = 1
        Save = True
        AutoSize = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4064
        mmLeft = 215636
        mmTop = 23548
        mmWidth = 15346
        BandType = 0
      end
      object w4: TppLabel
        UserName = 'w4'
        AutoSize = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4064
        mmLeft = 184415
        mmTop = 23548
        mmWidth = 15346
        BandType = 0
      end
      object w3: TppLabel
        UserName = 'w3'
        AutoSize = False
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 200025
        mmTop = 23548
        mmWidth = 15346
        BandType = 0
      end
      object w11: TppLabel
        UserName = 'w11'
        AutoSize = False
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 184415
        mmTop = 29369
        mmWidth = 15346
        BandType = 0
      end
      object w10: TppLabel
        UserName = 'w10'
        AutoSize = False
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 200025
        mmTop = 29369
        mmWidth = 15346
        BandType = 0
      end
      object w9: TppLabel
        UserName = 'w9'
        SaveOrder = 2
        Save = True
        AutoSize = False
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 215636
        mmTop = 29369
        mmWidth = 15346
        BandType = 0
      end
      object w8: TppLabel
        UserName = 'w8'
        SaveOrder = 3
        Save = True
        AutoSize = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4064
        mmLeft = 231246
        mmTop = 29369
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label25'
        AutoSize = False
        Caption = #1606#1575#1605' '#1662#1585#1587#1606#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 262996
        mmTop = 23283
        mmWidth = 20373
        BandType = 0
      end
      object ppLine14: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 20373
        mmTop = 28840
        mmWidth = 263526
        BandType = 0
      end
      object ppLine15: TppLine
        UserName = 'Line5'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 262467
        mmTop = 21696
        mmWidth = 1852
        BandType = 0
      end
      object ppLine16: TppLine
        UserName = 'Line6'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 246857
        mmTop = 21696
        mmWidth = 1852
        BandType = 0
      end
      object ppLine18: TppLine
        UserName = 'Line7'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 230982
        mmTop = 21696
        mmWidth = 1852
        BandType = 0
      end
      object ppLine19: TppLine
        UserName = 'Line8'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 215371
        mmTop = 21696
        mmWidth = 1852
        BandType = 0
      end
      object ppLine20: TppLine
        UserName = 'Line9'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 199761
        mmTop = 21696
        mmWidth = 1852
        BandType = 0
      end
      object ppLine21: TppLine
        UserName = 'Line10'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 184150
        mmTop = 21696
        mmWidth = 1852
        BandType = 0
      end
      object ppLine22: TppLine
        UserName = 'Line101'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 168540
        mmTop = 21696
        mmWidth = 1852
        BandType = 0
      end
      object ppLine23: TppLine
        UserName = 'Line12'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 152929
        mmTop = 21696
        mmWidth = 1852
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        OnGetText = ppSystemVariable1GetText
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
      end
      object ppLabel45: TppLabel
        UserName = 'Label13'
        OnGetText = ppLabel45GetText
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7408
        mmLeft = 111390
        mmTop = 3175
        mmWidth = 61383
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label36'
        OnGetText = ppLabel46GetText
        Caption = #1578#1575#1585#1610#1582' '#1670#1575#1662
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 6435
        mmLeft = 2381
        mmTop = 2381
        mmWidth = 11896
        BandType = 0
      end
      object w5: TppLabel
        UserName = 'w5'
        AutoSize = False
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 168805
        mmTop = 23548
        mmWidth = 15346
        BandType = 0
      end
      object w12: TppLabel
        UserName = 'w12'
        AutoSize = False
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 168805
        mmTop = 29369
        mmWidth = 15346
        BandType = 0
      end
      object w6: TppLabel
        UserName = 'w6'
        AutoSize = False
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 153194
        mmTop = 23548
        mmWidth = 15346
        BandType = 0
      end
      object w14: TppLabel
        UserName = 'w14'
        AutoSize = False
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 137584
        mmTop = 29369
        mmWidth = 15346
        BandType = 0
      end
      object w7: TppLabel
        UserName = 'w7'
        AutoSize = False
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 137584
        mmTop = 23548
        mmWidth = 15346
        BandType = 0
      end
      object w13: TppLabel
        UserName = 'w13'
        AutoSize = False
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 153194
        mmTop = 29369
        mmWidth = 15346
        BandType = 0
      end
      object ppLine34: TppLine
        UserName = 'Line34'
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 14023
        mmLeft = 106098
        mmTop = 21696
        mmWidth = 1852
        BandType = 0
      end
      object ppLine35: TppLine
        UserName = 'Line103'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 91811
        mmTop = 21696
        mmWidth = 1852
        BandType = 0
      end
      object ppLine36: TppLine
        UserName = 'Line36'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 77523
        mmTop = 21696
        mmWidth = 1852
        BandType = 0
      end
      object ppLine37: TppLine
        UserName = 'Line37'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 63236
        mmTop = 21696
        mmWidth = 1852
        BandType = 0
      end
      object ppLine33: TppLine
        UserName = 'Line33'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 137319
        mmTop = 21696
        mmWidth = 1852
        BandType = 0
      end
      object ppLine38: TppLine
        UserName = 'Line1'
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 14023
        mmLeft = 121709
        mmTop = 21960
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        AutoSize = False
        Caption = #1587#1575#1610#1585' '#1605#1586#1575#1610#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 121973
        mmTop = 23548
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label16'
        AutoSize = False
        Caption = #1580#1605#1593' '#1581#1602#1608#1602
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4826
        mmLeft = 121973
        mmTop = 29369
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label12'
        OnGetText = ppLabel34GetText
        Caption = #1604#1610#1587#1578' '#1581#1602#1608#1602' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6604
        mmLeft = 263832
        mmTop = 10319
        mmWidth = 17949
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label17'
        AutoSize = False
        Caption = #1605#1588#1605#1608#1604' '#1605#1575#1604#1610#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 106363
        mmTop = 23548
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label20'
        AutoSize = False
        Caption = #1605#1588#1605#1608#1604' '#1576#1610#1605#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 106363
        mmTop = 29104
        mmWidth = 15346
        BandType = 0
      end
      object d1: TppLabel
        UserName = 'd1'
        AutoSize = False
        Caption = ' '#1605#1575#1604#1610#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4826
        mmLeft = 92075
        mmTop = 23283
        mmWidth = 14000
        BandType = 0
      end
      object d6: TppLabel
        UserName = 'd6'
        AutoSize = False
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4826
        mmLeft = 92075
        mmTop = 29104
        mmWidth = 14000
        BandType = 0
      end
      object d2: TppLabel
        UserName = 'd2'
        AutoSize = False
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4826
        mmLeft = 77788
        mmTop = 23283
        mmWidth = 14000
        BandType = 0
      end
      object d7: TppLabel
        UserName = 'd7'
        AutoSize = False
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4826
        mmLeft = 77788
        mmTop = 29104
        mmWidth = 14000
        BandType = 0
      end
      object d8: TppLabel
        UserName = 'd8'
        AutoSize = False
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4826
        mmLeft = 63500
        mmTop = 29104
        mmWidth = 14000
        BandType = 0
      end
      object d3: TppLabel
        UserName = 'd3'
        AutoSize = False
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4826
        mmLeft = 63500
        mmTop = 23283
        mmWidth = 14000
        BandType = 0
      end
      object d4: TppLabel
        UserName = 'd4'
        AutoSize = False
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4826
        mmLeft = 49213
        mmTop = 23283
        mmWidth = 14000
        BandType = 0
      end
      object d9: TppLabel
        UserName = 'd9'
        AutoSize = False
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4826
        mmLeft = 49213
        mmTop = 29104
        mmWidth = 14000
        BandType = 0
      end
      object d5: TppLabel
        UserName = 'd5'
        AutoSize = False
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4826
        mmLeft = 34925
        mmTop = 23283
        mmWidth = 14000
        BandType = 0
      end
      object d10: TppLabel
        UserName = 'd10'
        AutoSize = False
        Caption = ' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4826
        mmLeft = 34925
        mmTop = 29104
        mmWidth = 14000
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line13'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 34660
        mmTop = 21696
        mmWidth = 1852
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line17'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 48948
        mmTop = 21696
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label22'
        AutoSize = False
        Caption = #1587#1575#1610#1585' '#1603#1587#1608#1585#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 20638
        mmTop = 23283
        mmWidth = 14000
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line18'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 20373
        mmTop = 21696
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label23'
        AutoSize = False
        Caption = #1580#1605#1593' '#1603#1587#1608#1585#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 20638
        mmTop = 28840
        mmWidth = 14000
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label24'
        AutoSize = False
        Caption = #1582#1575#1604#1589
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 0
        mmTop = 23283
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label26'
        AutoSize = False
        Caption = #1662#1585#1583#1575#1582#1578#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 0
        mmTop = 28840
        mmWidth = 20108
        BandType = 0
      end
      object ppLine39: TppLine
        UserName = 'Line40'
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 0
        mmTop = 32544
        mmWidth = 284300
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 10848
      mmPrintPosition = 0
      object ppLine45: TppLine
        UserName = 'Line16'
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 0
        mmTop = 7144
        mmWidth = 284300
        BandType = 4
      end
      object dw1: TppDBText
        UserName = 'dw1'
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
        mmLeft = 231246
        mmTop = 0
        mmWidth = 15346
        BandType = 4
      end
      object dw2: TppDBText
        UserName = 'dw2'
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
        mmLeft = 215636
        mmTop = 0
        mmWidth = 15346
        BandType = 4
      end
      object dw4: TppDBText
        UserName = 'dw4'
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
        mmLeft = 184415
        mmTop = 0
        mmWidth = 15346
        BandType = 4
      end
      object dw3: TppDBText
        UserName = 'dw3'
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
        mmLeft = 200025
        mmTop = 0
        mmWidth = 15346
        BandType = 4
      end
      object dw7: TppDBText
        UserName = 'dw7'
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
        mmLeft = 137584
        mmTop = 0
        mmWidth = 15346
        BandType = 4
      end
      object dw6: TppDBText
        UserName = 'dw6'
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
        mmLeft = 153194
        mmTop = 0
        mmWidth = 15346
        BandType = 4
      end
      object dw5: TppDBText
        UserName = 'dw5'
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
        mmLeft = 168805
        mmTop = 0
        mmWidth = 15346
        BandType = 4
      end
      object dw8: TppDBText
        UserName = 'dw8'
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
        mmLeft = 231246
        mmTop = 5027
        mmWidth = 15346
        BandType = 4
      end
      object dw9: TppDBText
        UserName = 'dw9'
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
        mmLeft = 215636
        mmTop = 5027
        mmWidth = 15346
        BandType = 4
      end
      object dw11: TppDBText
        UserName = 'dw11'
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
        mmLeft = 184415
        mmTop = 5027
        mmWidth = 15346
        BandType = 4
      end
      object dw10: TppDBText
        UserName = 'dw10'
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
        mmLeft = 200025
        mmTop = 5027
        mmWidth = 15346
        BandType = 4
      end
      object dw14: TppDBText
        UserName = 'dw14'
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
        mmLeft = 137584
        mmTop = 5027
        mmWidth = 15346
        BandType = 4
      end
      object dw13: TppDBText
        UserName = 'dw13'
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
        mmLeft = 153194
        mmTop = 5027
        mmWidth = 15346
        BandType = 4
      end
      object dw12: TppDBText
        UserName = 'dw12'
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
        mmLeft = 168805
        mmTop = 5027
        mmWidth = 15346
        BandType = 4
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Pen.Width = 2
        ParentHeight = True
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 10848
        mmLeft = 121709
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line3'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 137319
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine6: TppLine
        UserName = 'Line11'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 152929
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine7: TppLine
        UserName = 'Line14'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 168540
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine8: TppLine
        UserName = 'Line102'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 184150
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine9: TppLine
        UserName = 'Line15'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 199761
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine10: TppLine
        UserName = 'Line19'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 215371
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine11: TppLine
        UserName = 'Line20'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 230982
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine12: TppLine
        UserName = 'Line21'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 246857
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine13: TppLine
        UserName = 'Line22'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 262467
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'PersonName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 262732
        mmTop = 0
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'PersonelNO'
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
        mmLeft = 262732
        mmTop = 5027
        mmWidth = 20638
        BandType = 4
      end
      object ppLine17: TppLine
        UserName = 'Line23'
        Pen.Width = 2
        ParentHeight = True
        Position = lpRight
        Weight = 1.500000000000000000
        mmHeight = 10848
        mmLeft = 282840
        mmTop = 0
        mmWidth = 1588
        BandType = 4
      end
      object ppLine24: TppLine
        UserName = 'Line24'
        Pen.Width = 2
        ParentHeight = True
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 10848
        mmLeft = 0
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
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
        mmLeft = 247386
        mmTop = 0
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
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
        mmHeight = 5821
        mmLeft = 247386
        mmTop = 5027
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
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
        mmLeft = 106363
        mmTop = 0
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
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
        mmLeft = 106363
        mmTop = 5027
        mmWidth = 15346
        BandType = 4
      end
      object ppLine25: TppLine
        UserName = 'Line25'
        Pen.Width = 2
        ParentHeight = True
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 10848
        mmLeft = 106098
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object dd1: TppDBText
        UserName = 'dd1'
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
        mmLeft = 91811
        mmTop = 0
        mmWidth = 14000
        BandType = 4
      end
      object dd6: TppDBText
        UserName = 'dd6'
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
        mmLeft = 91811
        mmTop = 5027
        mmWidth = 14000
        BandType = 4
      end
      object ppLine26: TppLine
        UserName = 'Line26'
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 10054
        mmWidth = 284300
        BandType = 4
      end
      object dd2: TppDBText
        UserName = 'dd2'
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
        mmLeft = 77788
        mmTop = 0
        mmWidth = 14000
        BandType = 4
      end
      object dd4: TppDBText
        UserName = 'dd4'
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
        mmLeft = 49213
        mmTop = 0
        mmWidth = 14000
        BandType = 4
      end
      object dd3: TppDBText
        UserName = 'dd3'
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
        mmLeft = 63500
        mmTop = 0
        mmWidth = 14000
        BandType = 4
      end
      object dd7: TppDBText
        UserName = 'dd7'
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
        mmLeft = 77788
        mmTop = 5027
        mmWidth = 14000
        BandType = 4
      end
      object dd10: TppDBText
        UserName = 'dd10'
        DataField = 'Dec10'
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
        mmLeft = 34925
        mmTop = 5027
        mmWidth = 14000
        BandType = 4
      end
      object dd9: TppDBText
        UserName = 'dd9'
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
        mmLeft = 49213
        mmTop = 5027
        mmWidth = 14000
        BandType = 4
      end
      object dd8: TppDBText
        UserName = 'dd8'
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
        mmLeft = 63500
        mmTop = 5027
        mmWidth = 14000
        BandType = 4
      end
      object ppLine27: TppLine
        UserName = 'Line27'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 48948
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine28: TppLine
        UserName = 'Line28'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 63236
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine29: TppLine
        UserName = 'Line29'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 77523
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine30: TppLine
        UserName = 'Line30'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 91811
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object dd5: TppDBText
        UserName = 'dd5'
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
        mmLeft = 34925
        mmTop = 0
        mmWidth = 14000
        BandType = 4
      end
      object ppLine31: TppLine
        UserName = 'Line32'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 34660
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine32: TppLine
        UserName = 'Line35'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10848
        mmLeft = 20373
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'PayableSalary'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 529
        mmTop = 2117
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
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
        mmHeight = 6350
        mmLeft = 121973
        mmTop = 0
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
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
        mmLeft = 122238
        mmTop = 5027
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
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
        mmLeft = 20902
        mmTop = 5027
        mmWidth = 14023
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'dd101'
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
        mmLeft = 20638
        mmTop = 0
        mmWidth = 14023
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 30427
      mmPrintPosition = 0
      object ppShape5: TppShape
        UserName = 'Shape5'
        ParentWidth = True
        Shape = stRoundRect
        mmHeight = 15875
        mmLeft = 0
        mmTop = 14552
        mmWidth = 284300
        BandType = 8
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        ParentWidth = True
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 14552
        mmLeft = 0
        mmTop = 0
        mmWidth = 284300
        BandType = 8
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = #1580#1605#1593' '#1603#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 268288
        mmTop = 0
        mmWidth = 15081
        BandType = 8
      end
      object ppLine40: TppLine
        UserName = 'Line41'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 63500
        mmTop = 0
        mmWidth = 1852
        BandType = 8
      end
      object ppLine41: TppLine
        UserName = 'Line42'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 77788
        mmTop = 0
        mmWidth = 1852
        BandType = 8
      end
      object ppLine63: TppLine
        UserName = 'Line63'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 92075
        mmTop = 0
        mmWidth = 1852
        BandType = 8
      end
      object ppLine64: TppLine
        UserName = 'Line64'
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 14023
        mmLeft = 106363
        mmTop = 0
        mmWidth = 1852
        BandType = 8
      end
      object ppLine65: TppLine
        UserName = 'Line65'
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 14023
        mmLeft = 121973
        mmTop = 0
        mmWidth = 1852
        BandType = 8
      end
      object ppLine66: TppLine
        UserName = 'Line66'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 137584
        mmTop = 0
        mmWidth = 1852
        BandType = 8
      end
      object ppLine67: TppLine
        UserName = 'Line67'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 153194
        mmTop = 0
        mmWidth = 1852
        BandType = 8
      end
      object ppLine68: TppLine
        UserName = 'Line68'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 168805
        mmTop = 0
        mmWidth = 1852
        BandType = 8
      end
      object ppLine69: TppLine
        UserName = 'Line69'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 184415
        mmTop = 0
        mmWidth = 1852
        BandType = 8
      end
      object ppLine70: TppLine
        UserName = 'Line70'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 200025
        mmTop = 0
        mmWidth = 1852
        BandType = 8
      end
      object ppLine71: TppLine
        UserName = 'Line71'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 215636
        mmTop = 0
        mmWidth = 1852
        BandType = 8
      end
      object ppLine72: TppLine
        UserName = 'Line72'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 231246
        mmTop = 0
        mmWidth = 1852
        BandType = 8
      end
      object ppLine73: TppLine
        UserName = 'Line73'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 247121
        mmTop = 0
        mmWidth = 1852
        BandType = 8
      end
      object ppLine74: TppLine
        UserName = 'Line74'
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 20373
        mmTop = 5821
        mmWidth = 262996
        BandType = 8
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc7'
        DataField = 'PersonelNO'
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
        mmLeft = 248709
        mmTop = 6615
        mmWidth = 18256
        BandType = 8
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc8'
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
        mmLeft = 231511
        mmTop = 0
        mmWidth = 15346
        BandType = 8
      end
      object ppDBCalc9: TppDBCalc
        UserName = 'DBCalc9'
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
        mmLeft = 215900
        mmTop = 0
        mmWidth = 15346
        BandType = 8
      end
      object ppDBCalc10: TppDBCalc
        UserName = 'DBCalc10'
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
        mmLeft = 215900
        mmTop = 6615
        mmWidth = 15346
        BandType = 8
      end
      object ppDBCalc11: TppDBCalc
        UserName = 'DBCalc11'
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
        mmLeft = 231511
        mmTop = 6615
        mmWidth = 15346
        BandType = 8
      end
      object ppDBCalc12: TppDBCalc
        UserName = 'DBCalc12'
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
        mmLeft = 169069
        mmTop = 6615
        mmWidth = 15346
        BandType = 8
      end
      object ppDBCalc13: TppDBCalc
        UserName = 'DBCalc13'
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
        mmLeft = 184680
        mmTop = 6615
        mmWidth = 15346
        BandType = 8
      end
      object ppDBCalc14: TppDBCalc
        UserName = 'sw_col101'
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
        mmLeft = 200290
        mmTop = 6615
        mmWidth = 15346
        BandType = 8
      end
      object ppDBCalc15: TppDBCalc
        UserName = 'DBCalc15'
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
        mmLeft = 169069
        mmTop = 0
        mmWidth = 15346
        BandType = 8
      end
      object ppDBCalc16: TppDBCalc
        UserName = 'DBCalc16'
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
        mmLeft = 184680
        mmTop = 0
        mmWidth = 15346
        BandType = 8
      end
      object ppDBCalc17: TppDBCalc
        UserName = 'DBCalc17'
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
        mmLeft = 200290
        mmTop = 0
        mmWidth = 15346
        BandType = 8
      end
      object ppDBCalc18: TppDBCalc
        UserName = 'DBCalc18'
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
        mmLeft = 78052
        mmTop = 0
        mmWidth = 14023
        BandType = 8
      end
      object ppDBCalc19: TppDBCalc
        UserName = 'DBCalc19'
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
        mmLeft = 92340
        mmTop = 0
        mmWidth = 14023
        BandType = 8
      end
      object ppDBCalc20: TppDBCalc
        UserName = 'DBCalc20'
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
        mmLeft = 78052
        mmTop = 6615
        mmWidth = 14023
        BandType = 8
      end
      object ppDBCalc21: TppDBCalc
        UserName = 'DBCalc21'
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
        mmLeft = 92340
        mmTop = 6615
        mmWidth = 14023
        BandType = 8
      end
      object ppDBCalc22: TppDBCalc
        UserName = '_TaxInvolved3'
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
        mmTop = 0
        mmWidth = 15346
        BandType = 8
      end
      object ppDBCalc23: TppDBCalc
        UserName = 'DBCalc23'
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
        mmLeft = 137848
        mmTop = 0
        mmWidth = 15346
        BandType = 8
      end
      object ppDBCalc24: TppDBCalc
        UserName = 'DBCalc24'
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
        mmLeft = 153459
        mmTop = 0
        mmWidth = 15346
        BandType = 8
      end
      object ppDBCalc25: TppDBCalc
        UserName = '_InsInvolved1'
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
        mmTop = 6615
        mmWidth = 15346
        BandType = 8
      end
      object ppDBCalc26: TppDBCalc
        UserName = 'DBCalc26'
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
        mmLeft = 137848
        mmTop = 6615
        mmWidth = 15346
        BandType = 8
      end
      object ppDBCalc27: TppDBCalc
        UserName = 'DBCalc27'
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
        mmLeft = 153459
        mmTop = 6615
        mmWidth = 15346
        BandType = 8
      end
      object ppDBCalc28: TppDBCalc
        UserName = 'DBCalc28'
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
        mmLeft = 49477
        mmTop = 0
        mmWidth = 14023
        BandType = 8
      end
      object ppDBCalc29: TppDBCalc
        UserName = 'DBCalc29'
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
        mmLeft = 49477
        mmTop = 6615
        mmWidth = 14023
        BandType = 8
      end
      object ppDBCalc30: TppDBCalc
        UserName = 'DBCalc30'
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
        mmLeft = 63765
        mmTop = 0
        mmWidth = 14023
        BandType = 8
      end
      object ppDBCalc31: TppDBCalc
        UserName = 'DBCalc31'
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
        mmLeft = 63765
        mmTop = 6615
        mmWidth = 14023
        BandType = 8
      end
      object ppDBCalc32: TppDBCalc
        UserName = 'DBCalc32'
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
        mmLeft = 122502
        mmTop = 6615
        mmWidth = 15346
        BandType = 8
      end
      object ppDBCalc33: TppDBCalc
        UserName = 'DBCalc33'
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
        mmLeft = 122502
        mmTop = 0
        mmWidth = 15346
        BandType = 8
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = #1578#1593#1583#1575#1583' '#1662#1585#1587#1606#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 267759
        mmTop = 6350
        mmWidth = 15610
        BandType = 8
      end
      object ppDBCalc34: TppDBCalc
        UserName = 'DBCalc34'
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
        mmLeft = 35190
        mmTop = 0
        mmWidth = 14023
        BandType = 8
      end
      object ppDBCalc35: TppDBCalc
        UserName = 'DBCalc35'
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
        mmLeft = 20902
        mmTop = 0
        mmWidth = 14023
        BandType = 8
      end
      object ppDBCalc36: TppDBCalc
        UserName = 'DBCalc36'
        DataField = 'PayableSalary'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 1058
        mmTop = 2910
        mmWidth = 18785
        BandType = 8
      end
      object ppLine75: TppLine
        UserName = 'Line601'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 20638
        mmTop = 0
        mmWidth = 1852
        BandType = 8
      end
      object ppDBCalc37: TppDBCalc
        UserName = 'DBCalc37'
        DataField = 'Dec10'
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
        mmLeft = 35190
        mmTop = 6615
        mmWidth = 14023
        BandType = 8
      end
      object ppDBCalc38: TppDBCalc
        UserName = 'DBCalc38'
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
        mmLeft = 21167
        mmTop = 6350
        mmWidth = 14023
        BandType = 8
      end
      object ppLine76: TppLine
        UserName = 'Line76'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 34660
        mmTop = 529
        mmWidth = 1852
        BandType = 8
      end
      object ppLine77: TppLine
        UserName = 'Line77'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 48948
        mmTop = 529
        mmWidth = 1852
        BandType = 8
      end
      object ppLine78: TppLine
        UserName = 'Line78'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 70908
        mmTop = 14817
        mmWidth = 8996
        BandType = 8
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = #1605#1583#1610#1585' '#1593#1575#1605#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 56356
        mmTop = 17992
        mmWidth = 11906
        BandType = 8
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Caption = #1605#1583#1610#1585' '#1575#1605#1608#1585' '#1605#1575#1604#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 117740
        mmTop = 17992
        mmWidth = 16669
        BandType = 8
      end
      object ppLine79: TppLine
        UserName = 'Line79'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 137584
        mmTop = 14817
        mmWidth = 8996
        BandType = 8
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Caption = #1578#1575#1610#1610#1583#1603#1606#1606#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 195792
        mmTop = 17992
        mmWidth = 11906
        BandType = 8
      end
      object ppLine80: TppLine
        UserName = 'Line80'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 211138
        mmTop = 14817
        mmWidth = 8996
        BandType = 8
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Caption = #1578#1606#1592#1610#1605' '#1603#1606#1606#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 269876
        mmTop = 17992
        mmWidth = 11906
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 30427
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape2'
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 14552
        mmLeft = 0
        mmTop = 0
        mmWidth = 284300
        BandType = 7
      end
      object ppLabel49: TppLabel
        UserName = 'Label27'
        AutoSize = False
        Caption = #1580#1605#1593' '#1603#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 268817
        mmTop = 1323
        mmWidth = 15081
        BandType = 7
      end
      object ppLine42: TppLine
        UserName = 'Line43'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 63236
        mmTop = 0
        mmWidth = 1852
        BandType = 7
      end
      object ppLine43: TppLine
        UserName = 'Line44'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 77523
        mmTop = 0
        mmWidth = 1852
        BandType = 7
      end
      object ppLine44: TppLine
        UserName = 'Line45'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 91811
        mmTop = 0
        mmWidth = 1852
        BandType = 7
      end
      object ppLine46: TppLine
        UserName = 'Line46'
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 14023
        mmLeft = 106098
        mmTop = 0
        mmWidth = 1852
        BandType = 7
      end
      object ppLine47: TppLine
        UserName = 'Line47'
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 14023
        mmLeft = 121709
        mmTop = 0
        mmWidth = 1852
        BandType = 7
      end
      object ppLine48: TppLine
        UserName = 'Line48'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 137319
        mmTop = 0
        mmWidth = 1852
        BandType = 7
      end
      object ppLine49: TppLine
        UserName = 'Line49'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 152929
        mmTop = 0
        mmWidth = 1852
        BandType = 7
      end
      object ppLine53: TppLine
        UserName = 'Line53'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 168540
        mmTop = 0
        mmWidth = 1852
        BandType = 7
      end
      object ppLine54: TppLine
        UserName = 'Line104'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 184150
        mmTop = 0
        mmWidth = 1852
        BandType = 7
      end
      object ppLine55: TppLine
        UserName = 'Line55'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 199761
        mmTop = 0
        mmWidth = 1852
        BandType = 7
      end
      object ppLine56: TppLine
        UserName = 'Line56'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 215371
        mmTop = 0
        mmWidth = 1852
        BandType = 7
      end
      object ppLine57: TppLine
        UserName = 'Line57'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 230982
        mmTop = 0
        mmWidth = 1852
        BandType = 7
      end
      object ppLine58: TppLine
        UserName = 'Line58'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 246857
        mmTop = 0
        mmWidth = 1852
        BandType = 7
      end
      object ppLine59: TppLine
        UserName = 'Line59'
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 20638
        mmTop = 7408
        mmWidth = 262996
        BandType = 7
      end
      object ppLine60: TppLine
        UserName = 'Line60'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 20373
        mmTop = 0
        mmWidth = 1852
        BandType = 7
      end
      object ppLine61: TppLine
        UserName = 'Line61'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 34660
        mmTop = 0
        mmWidth = 1852
        BandType = 7
      end
      object ppLine62: TppLine
        UserName = 'Line62'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 48948
        mmTop = 0
        mmWidth = 1852
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'PayableSalary'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 1058
        mmTop = 4233
        mmWidth = 18785
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'PersonelNO'
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
        mmLeft = 247915
        mmTop = 7938
        mmWidth = 19579
        BandType = 7
      end
      object sw_col1: TppDBCalc
        UserName = 'sw_col1'
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
        mmLeft = 231246
        mmTop = 1058
        mmWidth = 15346
        BandType = 7
      end
      object sw_col2: TppDBCalc
        UserName = 'sw_col2'
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
        mmLeft = 215636
        mmTop = 1058
        mmWidth = 15346
        BandType = 7
      end
      object sw_col9: TppDBCalc
        UserName = 'sw_col9'
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
        mmLeft = 215636
        mmTop = 7938
        mmWidth = 15346
        BandType = 7
      end
      object sw_col8: TppDBCalc
        UserName = 'sw_col8'
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
        mmLeft = 231246
        mmTop = 7938
        mmWidth = 15346
        BandType = 7
      end
      object sw_col12: TppDBCalc
        UserName = 'sw_col12'
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
        mmLeft = 168805
        mmTop = 7938
        mmWidth = 15346
        BandType = 7
      end
      object sw_col11: TppDBCalc
        UserName = 'sw_col11'
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
        mmLeft = 184415
        mmTop = 7938
        mmWidth = 15346
        BandType = 7
      end
      object sw_col10: TppDBCalc
        UserName = 'sw_col10'
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
        mmLeft = 200025
        mmTop = 7938
        mmWidth = 15346
        BandType = 7
      end
      object sw_col5: TppDBCalc
        UserName = 'sw_col5'
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
        mmLeft = 168805
        mmTop = 1058
        mmWidth = 15346
        BandType = 7
      end
      object sw_col4: TppDBCalc
        UserName = 'sw_col4'
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
        mmLeft = 184415
        mmTop = 1058
        mmWidth = 15346
        BandType = 7
      end
      object sw_col3: TppDBCalc
        UserName = 'sw_col3'
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
        mmLeft = 200025
        mmTop = 1058
        mmWidth = 15346
        BandType = 7
      end
      object sd_col2: TppDBCalc
        UserName = 'sd_col2'
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
        mmLeft = 77788
        mmTop = 1058
        mmWidth = 14023
        BandType = 7
      end
      object sd_col1: TppDBCalc
        UserName = 'sd_col1'
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
        mmLeft = 92075
        mmTop = 1058
        mmWidth = 14023
        BandType = 7
      end
      object sd_col7: TppDBCalc
        UserName = 'sd_col7'
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
        mmLeft = 77788
        mmTop = 7938
        mmWidth = 14023
        BandType = 7
      end
      object sd_col6: TppDBCalc
        UserName = 'DBCalc101'
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
        mmLeft = 92075
        mmTop = 7938
        mmWidth = 14000
        BandType = 7
      end
      object _TaxInvolved: TppDBCalc
        UserName = '_TaxInvolved'
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
        mmLeft = 106363
        mmTop = 1058
        mmWidth = 15346
        BandType = 7
      end
      object sw_col7: TppDBCalc
        UserName = 'sw_col7'
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
        mmLeft = 137584
        mmTop = 1058
        mmWidth = 15346
        BandType = 7
      end
      object sw_col6: TppDBCalc
        UserName = 'sw_col6'
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
        mmLeft = 153194
        mmTop = 1058
        mmWidth = 15346
        BandType = 7
      end
      object _InsInvolved: TppDBCalc
        UserName = '_InsInvolved'
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
        mmLeft = 106363
        mmTop = 7938
        mmWidth = 15346
        BandType = 7
      end
      object sw_col14: TppDBCalc
        UserName = 'sw_col14'
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
        mmLeft = 137584
        mmTop = 7938
        mmWidth = 15346
        BandType = 7
      end
      object sw_col13: TppDBCalc
        UserName = 'sw_col13'
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
        mmLeft = 153194
        mmTop = 7938
        mmWidth = 15346
        BandType = 7
      end
      object sd_col4: TppDBCalc
        UserName = 'sd_col4'
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
        mmLeft = 49213
        mmTop = 1058
        mmWidth = 14023
        BandType = 7
      end
      object sd_col9: TppDBCalc
        UserName = 'sd_col9'
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
        mmLeft = 49213
        mmTop = 7938
        mmWidth = 14023
        BandType = 7
      end
      object sd_col3: TppDBCalc
        UserName = 'sd_col3'
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
        mmLeft = 63500
        mmTop = 1058
        mmWidth = 14023
        BandType = 7
      end
      object sd_col8: TppDBCalc
        UserName = 'sd_col8'
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
        mmLeft = 63500
        mmTop = 7938
        mmWidth = 14023
        BandType = 7
      end
      object sd_col5: TppDBCalc
        UserName = 'sd_col5'
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
        mmLeft = 34925
        mmTop = 1058
        mmWidth = 14023
        BandType = 7
      end
      object sd_col10: TppDBCalc
        UserName = 'DBCalc301'
        DataField = 'Dec10'
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
        mmLeft = 34925
        mmTop = 7938
        mmWidth = 14023
        BandType = 7
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        ParentWidth = True
        Shape = stRoundRect
        mmHeight = 15875
        mmLeft = 0
        mmTop = 14552
        mmWidth = 284300
        BandType = 7
      end
      object ppLine50: TppLine
        UserName = 'Line31'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 68792
        mmTop = 14552
        mmWidth = 8996
        BandType = 7
      end
      object ppLine51: TppLine
        UserName = 'Line38'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 135467
        mmTop = 14552
        mmWidth = 8996
        BandType = 7
      end
      object ppLine52: TppLine
        UserName = 'Line39'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 209021
        mmTop = 14552
        mmWidth = 8996
        BandType = 7
      end
      object ppLabel53: TppLabel
        UserName = 'Label33'
        AutoSize = False
        Caption = #1578#1575#1610#1610#1583#1603#1606#1606#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 193675
        mmTop = 16933
        mmWidth = 11906
        BandType = 7
      end
      object ppLabel54: TppLabel
        UserName = 'Label34'
        AutoSize = False
        Caption = #1605#1583#1610#1585' '#1575#1605#1608#1585' '#1605#1575#1604#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 115623
        mmTop = 16933
        mmWidth = 16669
        BandType = 7
      end
      object ppLabel55: TppLabel
        UserName = 'Label35'
        AutoSize = False
        Caption = #1605#1583#1610#1585' '#1593#1575#1605#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 54240
        mmTop = 16933
        mmWidth = 11906
        BandType = 7
      end
      object ppLabel56: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = #1578#1606#1592#1610#1605' '#1603#1606#1606#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 267759
        mmTop = 16933
        mmWidth = 11906
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
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
        mmLeft = 20902
        mmTop = 7673
        mmWidth = 14023
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = '_TaxInvolved1'
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
        mmLeft = 122238
        mmTop = 7938
        mmWidth = 15346
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = '_TaxInvolved2'
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
        mmLeft = 122238
        mmTop = 1058
        mmWidth = 15346
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
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
        mmLeft = 20638
        mmTop = 1058
        mmWidth = 14023
        BandType = 7
      end
      object ppLabel5: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = #1578#1593#1583#1575#1583' '#1662#1585#1587#1606#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 268288
        mmTop = 7673
        mmWidth = 15610
        BandType = 7
      end
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {00}
    end
  end
  object PopList4Print: TPopupMenu
    Left = 712
    Top = 317
    object N11: TMenuItem
      Caption = #1670#1575#1662'1'
      OnClick = N11Click
    end
    object N21: TMenuItem
      Caption = #1670#1575#1662'2'
      OnClick = N21Click
    end
  end
  object qrySum: TADOQuery
    Connection = DMF.adcSalary
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'FromPerson'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ToPerson'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Mounth'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'FromInfoID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ToInfoID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT   '#39'??? ??'#39' as  sumword'
      
        ' , sum(case  SalaryID   when 31 then price else 0 end ) as SumWa' +
        'ge1'
      
        ' , sum(case  SalaryID   when 117 then price else 0 end ) as SumW' +
        'age2'
      
        ' , sum(case  SalaryID   when 118 then price else 0 end ) as SumW' +
        'age3'
      
        ' , sum(case  SalaryID   when 119 then price else 0 end ) as SumW' +
        'age4'
      
        ' , sum(case  SalaryID   when 121 then price else 0 end ) as SumW' +
        'age5'
      
        ' , sum(case  SalaryID   when 170 then price else 0 end ) as SumW' +
        'age6'
      
        ' , sum(case  SalaryID   when -1 then price else 0 end ) as SumWa' +
        'ge7'
      
        ' , sum(case  SalaryID   when -1 then price else 0 end ) as SumWa' +
        'ge8'
      
        ' , sum(case  SalaryID   when -1 then price else 0 end ) as SumWa' +
        'ge9'
      
        ' , sum(case  SalaryID   when -1 then price else 0 end ) as SumWa' +
        'ge10'
      
        ' , sum(case  SalaryID   when -1 then price else 0 end ) as SumWa' +
        'ge11'
      
        ' , sum(case  SalaryID   when -1 then price else 0 end ) as SumWa' +
        'ge12'
      
        ' , sum(case  SalaryID   when -1 then price else 0 end ) as SumWa' +
        'ge13'
      
        ' , sum(case  SalaryID   when -1 then price else 0 end ) as SumWa' +
        'ge14'
      ''
      ' ,sum( case  when salaryid >121'
      #9#9#9#9#9'then case ShowlistKind when 1 then price else 0 end'
      #9#9#9#9#9'else 0 end ) as SumWage15 ,'
      
        #9#9#9'Sum(case ShowlistKind when 1 then price else 0 end ) as allSu' +
        'mWage ,'
      
        #9#9#9'sum( case ShowlistKind when 3  then price else 0 end ) as sum' +
        'ContainInsourance ,'
      
        #9#9#9'sum( case ShowlistKind when 12  then price else 0 end ) as su' +
        'mContainTax ,'
      
        #9#9#9'sum( case ShowlistKind when 11  then price else 0 end ) as su' +
        'mTaxValue ,'
      
        #9#9#9'sum( case salaryid when 32  then price else 0 end ) as sumDec' +
        '1 ,'
      
        #9#9#9'sum( case salaryid when 32  then price else 0 end ) as sumDec' +
        '2 ,'
      
        #9#9#9'sum( case salaryid when 32  then price else 0 end ) as sumDec' +
        '3 ,'
      
        #9#9#9'sum( case salaryid when 32  then price else 0 end ) as sumDec' +
        '4 ,'
      
        #9#9#9'sum( case salaryid when 32  then price else 0 end ) as sumDec' +
        '5 ,'
      
        #9#9#9'sum( case salaryid when 32  then price else 0 end ) as sumDec' +
        '6 ,'
      
        #9#9#9'sum( case salaryid when 32  then price else 0 end ) as sumDec' +
        '7 ,'
      
        #9#9#9'sum( case salaryid when 32  then price else 0 end ) as sumDec' +
        '8 ,'
      
        #9#9#9'sum( case salaryid when 32  then price else 0 end ) as sumDec' +
        '9 ,'
      #9#9#9'sum( case  when salaryid >121'
      #9#9#9#9#9'then case ShowlistKind when 2 then price else 0 end'
      #9#9#9#9#9'else 0 end ) as sumDec10 ,'
      #9#9#9'sum( case ShowlistKind when 2  then price else 0 end ) +'
      
        #9#9#9'Sum( case ShowlistKind when 11 then price else 0 end ) as all' +
        'SumDec ,'
      
        #9#9#9'Sum(case ShowlistKind when 1 then price else 0 end )-Sum( cas' +
        'e ShowlistKind when 11 then price else 0 end ) as allsumPayableS' +
        'alary'
      ' from Pay.FormsInfo INNER JOIN'
      
        '                      Pay.FixedCalculated ON Pay.FormsInfo.FormI' +
        'nfoID = Pay.FixedCalculated.OfficeCode'
      
        ' where ( PersonelNO between :FromPerson and :ToPerson) and (Moun' +
        'th=:Mounth) and'
      ' (Pay.FormsInfo.InfoID  between :FromInfoID and :ToInfoID)')
    Left = 64
    Top = 365
    object qrySumsumword: TStringField
      FieldName = 'sumword'
      ReadOnly = True
      Size = 6
    end
    object qrySumSumWage1: TBCDField
      DisplayWidth = 12
      FieldName = 'SumWage1'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySumSumWage2: TBCDField
      DisplayWidth = 12
      FieldName = 'SumWage2'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySumSumWage3: TBCDField
      DisplayWidth = 12
      FieldName = 'SumWage3'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySumSumWage4: TBCDField
      DisplayWidth = 12
      FieldName = 'SumWage4'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySumSumWage5: TBCDField
      DisplayWidth = 12
      FieldName = 'SumWage5'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySumSumWage6: TBCDField
      DisplayWidth = 12
      FieldName = 'SumWage6'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySumSumWage7: TBCDField
      DisplayWidth = 12
      FieldName = 'SumWage7'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySumSumWage8: TBCDField
      DisplayWidth = 12
      FieldName = 'SumWage8'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySumSumWage9: TBCDField
      DisplayWidth = 12
      FieldName = 'SumWage9'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySumSumWage10: TBCDField
      DisplayWidth = 12
      FieldName = 'SumWage10'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySumSumWage11: TBCDField
      DisplayWidth = 12
      FieldName = 'SumWage11'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySumSumWage12: TBCDField
      DisplayWidth = 12
      FieldName = 'SumWage12'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySumSumWage13: TBCDField
      DisplayWidth = 12
      FieldName = 'SumWage13'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySumSumWage14: TBCDField
      DisplayWidth = 12
      FieldName = 'SumWage14'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySumSumWage15: TBCDField
      DisplayWidth = 12
      FieldName = 'SumWage15'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySumallSumWage: TBCDField
      DisplayWidth = 12
      FieldName = 'allSumWage'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySumsumContainInsourance: TBCDField
      DisplayWidth = 12
      FieldName = 'sumContainInsourance'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySumsumContainTax: TBCDField
      DisplayWidth = 12
      FieldName = 'sumContainTax'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySumsumTaxValue: TBCDField
      DisplayWidth = 12
      FieldName = 'sumTaxValue'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySumsumDec1: TBCDField
      DisplayWidth = 12
      FieldName = 'sumDec1'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySumsumDec2: TBCDField
      DisplayWidth = 12
      FieldName = 'sumDec2'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySumsumDec3: TBCDField
      DisplayWidth = 12
      FieldName = 'sumDec3'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySumsumDec4: TBCDField
      DisplayWidth = 12
      FieldName = 'sumDec4'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySumsumDec5: TBCDField
      DisplayWidth = 12
      FieldName = 'sumDec5'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySumsumDec6: TBCDField
      DisplayWidth = 12
      FieldName = 'sumDec6'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySumsumDec7: TBCDField
      DisplayWidth = 12
      FieldName = 'sumDec7'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySumsumDec8: TBCDField
      DisplayWidth = 12
      FieldName = 'sumDec8'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySumsumDec9: TBCDField
      DisplayWidth = 12
      FieldName = 'sumDec9'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySumsumDec10: TBCDField
      DisplayWidth = 12
      FieldName = 'sumDec10'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySumallSumDec: TBCDField
      DisplayWidth = 12
      FieldName = 'allSumDec'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySumallsumPayableSalary: TBCDField
      DisplayWidth = 12
      FieldName = 'allsumPayableSalary'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object srcSum: TDataSource
    DataSet = qrySum
    Left = 136
    Top = 365
  end
  object ppDBPipeline2: TppDBPipeline
    UserName = 'DBPipeline2'
    Left = 552
    Top = 245
  end
end

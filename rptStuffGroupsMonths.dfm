inherited rptStuffGroupsMonthsF: TrptStuffGroupsMonthsF
  Left = 278
  Top = 86
  Caption = 'rptStuffGroupsMonthsF'
  ClientHeight = 517
  OnResize = FormResize
  ExplicitWidth = 794
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 476
    inherited BtnReject: TBitBtn
      Left = 2
      Margins.Left = 1
      Margins.Right = 1
      ExplicitLeft = 2
    end
    object BitBtn7: TBitBtn
      AlignWithMargins = True
      Left = 636
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actShowForm
      Align = alRight
      Caption = #1606#1605#1575#1610#1588' '#1601#1585#1605
      TabOrder = 1
    end
    object DBNavigator1: TDBNavigator
      Left = 331
      Top = 8
      Width = 128
      Height = 25
      DataSource = SrcStuffGroups
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Anchors = [akLeft, akTop, akRight]
      Flat = True
      TabOrder = 2
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 233
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actSendExel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 3
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 156
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
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
      TabOrder = 4
    end
    object BitBtn5: TBitBtn
      AlignWithMargins = True
      Left = 79
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
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
      TabOrder = 5
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 713
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 6
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 559
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actPrint
      Align = alRight
      Caption = #1670#1575#1662' (F7)'
      TabOrder = 7
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 482
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Align = alRight
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
      TabOrder = 8
      OnClick = BitBtn1Click
    end
  end
  inherited Panel2: TPanel
    inherited lblCaption: TLabel
      Height = 16
      ExplicitLeft = 674
    end
  end
  inherited Panel3: TPanel
    Height = 423
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 786
      Height = 400
      Align = alClient
      Color = clCream
      DataSource = SrcStuffGroups
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'GroupID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GroupName'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M1Entity'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M1Weight'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M1Price'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M1TotallSellPrice'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M2Entity'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M2Weight'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M2Price'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M2TotallSellPrice'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M3Entity'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M3Weight'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M3Price'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M3TotallSellPrice'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M4Entity'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M4Weight'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M4Price'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M4TotallSellPrice'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M5Entity'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M5Weight'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M5Price'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M5TotallSellPrice'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M6Entity'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M6Weight'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M6Price'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M6TotallSellPrice'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M7Entity'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M7Weight'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M7Price'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M7TotallSellPrice'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M8Entity'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M8Weight'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M8Price'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M8TotallSellPrice'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M9Entity'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M9Weight'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M9Price'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M9TotallSellPrice'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M10Entity'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M10Weight'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M10Price'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M10TotallSellPrice'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M11Entity'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M11Weight'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M11Price'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M11TotallSellPrice'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M12Entity'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M12Weight'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M12Price'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M12TotallSellPrice'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReciptCaption'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Entity'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Weight'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Price'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TotallSellPrice'
          Visible = True
        end>
    end
    object SumGrid1: TSumGrid
      Left = 0
      Top = 402
      Width = 786
      Active = False
      Enable_Controls = True
      MasterGrid = DBGrid1
      ShowZero = True
      FieldsName = 
        'M1Entity;M1Weight;M1Price;M1TotallSellPrice;M2Entity;M2Weight;M2' +
        'Price;M2TotallSellPrice;M3Entity;M3Weight;M3Price;M3TotallSellPr' +
        'ice;M4Entity;M4Weight;M4Price;M4TotallSellPrice;M5Entity;M5Weigh' +
        't;M5Price;M5TotallSellPrice;M6Entity;M6Weight;M6Price;M6TotallSe' +
        'llPrice;M7Entity;M7Weight;M7Price;M7TotallSellPrice;M8Entity;M8W' +
        'eight;M8Price;M8TotallSellPrice;M9Entity;M9Weight;M9Price;M9Tota' +
        'llSellPrice;M10Entity;M10Weight;M10Price;M10TotallSellPrice;M11E' +
        'ntity;M11Weight;M11Price;M11TotallSellPrice;M12Entity;M12Weight;' +
        'M12Price;M12TotallSellPrice;Entity;Weight;Price;TotallSellPrice;'
    end
  end
  inherited ActionList: TActionList
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actSendExel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendExelExecute
    end
    object actShowForm: TAction
      Caption = #1606#1605#1575#1610#1588' '#1601#1585#1605
      OnExecute = actShowFormExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662' (F7)'
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actSort: TAction
      Caption = #1576#1607' '#1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
  end
  object SrcStuffGroups: TDataSource
    DataSet = qryStuffGroups
    Left = 328
    Top = 113
  end
  object qryStuffGroups: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'SecondTypeCodeFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'SecondTypeCodeTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'StoreIDFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'StoreIDTo'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'ReciptNumberFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ReciptNumberTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ReciptDateFrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'ReciptDateTo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'custIdfrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'custIdto'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Recipt__Type'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'GroupIDFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'GroupIDTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'YearIDFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'YearIDTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'SellsEmporiumFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'SellsEmporiumTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'StuffCodeFrom'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = Null
      end
      item
        Name = 'StuffCodeTo'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = Null
      end
      item
        Name = 'SellsMethodFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'SellsMethodTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'NotStoreID'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     StuffGroups.GroupID, StuffGroups.GroupName, R.ReciptT' +
        'ype, ReciptTypes.ReciptCaption,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 1 then ReciptI' +
        'tems.InputEntity + ReciptItems.OutputEntity else 0 end ) as M1En' +
        'tity ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 1 then ReciptI' +
        'tems.InputWeight + ReciptItems.OutputWeight else 0 end ) as M1We' +
        'ight ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 1 then ReciptI' +
        'tems.TotalInputPrice + ReciptItems.TotalOutputPrice else 0 end )' +
        ' as M1Price ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 1 then TotallS' +
        'ellPrice else 0 end ) as M1TotallSellPrice ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 2 then ReciptI' +
        'tems.InputEntity + ReciptItems.OutputEntity else 0 end ) as M2En' +
        'tity ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 2 then ReciptI' +
        'tems.InputWeight + ReciptItems.OutputWeight else 0 end ) as M2We' +
        'ight ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 2 then ReciptI' +
        'tems.TotalInputPrice + ReciptItems.TotalOutputPrice else 0 end )' +
        ' as M2Price ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 2 then TotallS' +
        'ellPrice else 0 end ) as M2TotallSellPrice ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 3 then ReciptI' +
        'tems.InputEntity + ReciptItems.OutputEntity else 0 end ) as M3En' +
        'tity ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 3 then ReciptI' +
        'tems.InputWeight + ReciptItems.OutputWeight else 0 end ) as M3We' +
        'ight ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 3 then ReciptI' +
        'tems.TotalInputPrice + ReciptItems.TotalOutputPrice else 0 end )' +
        ' as M3Price ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 3 then TotallS' +
        'ellPrice else 0 end ) as M3TotallSellPrice ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 4 then ReciptI' +
        'tems.InputEntity + ReciptItems.OutputEntity else 0 end ) as M4En' +
        'tity ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 4 then ReciptI' +
        'tems.InputWeight + ReciptItems.OutputWeight else 0 end ) as M4We' +
        'ight ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 4 then ReciptI' +
        'tems.TotalInputPrice + ReciptItems.TotalOutputPrice else 0 end )' +
        ' as M4Price ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 4 then TotallS' +
        'ellPrice else 0 end ) as M4TotallSellPrice ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 5 then ReciptI' +
        'tems.InputEntity + ReciptItems.OutputEntity else 0 end ) as M5En' +
        'tity ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 5 then ReciptI' +
        'tems.InputWeight + ReciptItems.OutputWeight else 0 end ) as M5We' +
        'ight ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 5 then ReciptI' +
        'tems.TotalInputPrice + ReciptItems.TotalOutputPrice else 0 end )' +
        ' as M5Price ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 5 then TotallS' +
        'ellPrice else 0 end ) as M5TotallSellPrice ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 6 then ReciptI' +
        'tems.InputEntity + ReciptItems.OutputEntity else 0 end ) as M6En' +
        'tity ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 6 then ReciptI' +
        'tems.InputWeight + ReciptItems.OutputWeight else 0 end ) as M6We' +
        'ight ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 6 then ReciptI' +
        'tems.TotalInputPrice + ReciptItems.TotalOutputPrice else 0 end )' +
        ' as M6Price ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 6 then TotallS' +
        'ellPrice else 0 end ) as M6TotallSellPrice ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 7 then ReciptI' +
        'tems.InputEntity + ReciptItems.OutputEntity else 0 end ) as M7En' +
        'tity ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 7 then ReciptI' +
        'tems.InputWeight + ReciptItems.OutputWeight else 0 end ) as M7We' +
        'ight ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 7 then ReciptI' +
        'tems.TotalInputPrice + ReciptItems.TotalOutputPrice else 0 end )' +
        ' as M7Price ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 7 then TotallS' +
        'ellPrice else 0 end ) as M7TotallSellPrice ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 8 then ReciptI' +
        'tems.InputEntity + ReciptItems.OutputEntity else 0 end ) as M8En' +
        'tity ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 8 then ReciptI' +
        'tems.InputWeight + ReciptItems.OutputWeight else 0 end ) as M8We' +
        'ight ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 8 then ReciptI' +
        'tems.TotalInputPrice + ReciptItems.TotalOutputPrice else 0 end )' +
        ' as M8Price ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 8 then TotallS' +
        'ellPrice else 0 end ) as M8TotallSellPrice ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 9 then ReciptI' +
        'tems.InputEntity + ReciptItems.OutputEntity else 0 end ) as M9En' +
        'tity ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 9 then ReciptI' +
        'tems.InputWeight + ReciptItems.OutputWeight else 0 end ) as M9We' +
        'ight ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 9 then ReciptI' +
        'tems.TotalInputPrice + ReciptItems.TotalOutputPrice else 0 end )' +
        ' as M9Price ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 9 then TotallS' +
        'ellPrice else 0 end ) as M9TotallSellPrice ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 10 then Recipt' +
        'Items.InputEntity + ReciptItems.OutputEntity else 0 end ) as M10' +
        'Entity ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 10 then Recipt' +
        'Items.InputWeight + ReciptItems.OutputWeight else 0 end ) as M10' +
        'Weight ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 10 then Recipt' +
        'Items.TotalInputPrice + ReciptItems.TotalOutputPrice else 0 end ' +
        ') as M10Price ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 10 then Totall' +
        'SellPrice else 0 end ) as M10TotallSellPrice ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 11 then Recipt' +
        'Items.InputEntity + ReciptItems.OutputEntity else 0 end ) as M11' +
        'Entity ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 11 then Recipt' +
        'Items.InputWeight + ReciptItems.OutputWeight else 0 end ) as M11' +
        'Weight ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 11 then Recipt' +
        'Items.TotalInputPrice + ReciptItems.TotalOutputPrice else 0 end ' +
        ') as M11Price ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 11 then Totall' +
        'SellPrice else 0 end ) as M11TotallSellPrice ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 12 then Recipt' +
        'Items.InputEntity + ReciptItems.OutputEntity else 0 end ) as M12' +
        'Entity ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 12 then Recipt' +
        'Items.InputWeight + ReciptItems.OutputWeight else 0 end ) as M12' +
        'Weight ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 12 then Recipt' +
        'Items.TotalInputPrice + ReciptItems.TotalOutputPrice else 0 end ' +
        ') as M12Price,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 12 then Totall' +
        'SellPrice else 0 end ) as M12TotallSellPrice ,'
      
        #9#9'     Sum( ReciptItems.InputEntity + ReciptItems.OutputEntity )' +
        ' as Entity ,'
      
        #9#9'     Sum( ReciptItems.InputWeight + ReciptItems.OutputWeight )' +
        ' as Weight ,'
      
        #9#9'     Sum( ReciptItems.TotalInputPrice + ReciptItems.TotalOutpu' +
        'tPrice ) as Price,'
      #9#9'     Sum( TotallSellPrice ) as TotallSellPrice'
      ''
      'FROM         StuffCoding INNER JOIN'
      
        '                      StuffGroups ON StuffCoding.GroupID = Stuff' +
        'Groups.GroupID INNER JOIN'
      '                      ReciptItems INNER JOIN'
      
        '                                            Recipts AS R ON R.Re' +
        'ciptID = ReciptItems.ReciptID AND'
      
        '                      R.ServerID = ReciptItems.ServerID AND R.Ye' +
        'arID = ReciptItems.YearID INNER JOIN'
      
        '                      ReciptTypes ON R.ReciptType = ReciptTypes.' +
        'ReciptType ON StuffCoding.c_StuffCode = ReciptItems.StuffCode'
      ''
      ' INNER JOIN'
      '                      LookUps ON R.SecondType = LookUps.LookUpID'
      
        'WHERE     (LookUps.Code BETWEEN :SecondTypeCodeFrom AND :SecondT' +
        'ypeCodeTo ) AND '
      ''
      '     (R.StoreID BETWEEN :StoreIDFrom AND :StoreIDTo)'
      
        ' AND (R.ReciptNumber BETWEEN :ReciptNumberFrom AND :ReciptNumber' +
        'To)'
      
        ' AND (R.ReciptDate BETWEEN       :ReciptDateFrom AND :ReciptDate' +
        'To)'
      'AND (R.PersonID1 BETWEEN :custIdfrom AND :custIdto)'
      'AND (R.ReciptState < 3)'
      'AND (R.ReciptType IN (  :Recipt__Type ) )'
      'AND (StuffGroups.GroupID BETWEEN :GroupIDFrom AND :GroupIDTo)'
      'AND (R.YearID BETWEEN   :YearIDFrom AND :YearIDTo)'
      
        '     AND (R.SellsEmporium BETWEEN :SellsEmporiumFrom AND :SellsE' +
        'mporiumTo)'
      
        ' AND (ReciptItems.StuffCode BETWEEN :StuffCodeFrom AND :StuffCod' +
        'eTo)'
      'AND (R.SellsMethod BETWEEN :SellsMethodFrom AND :SellsMethodTo)'
      
        'And (R.StoreID not in (Select part From SplitString(:NotStoreID,' +
        #39','#39')))'
      ''
      
        'GROUP BY R.ReciptType, ReciptTypes.ReciptCaption, StuffGroups.Gr' +
        'oupID, StuffGroups.GroupName')
    Left = 184
    Top = 137
    object qryStuffGroupsGroupID: TIntegerField
      Tag = 3
      DisplayLabel = #1711#1585#1608#1607' '#1603#1575#1604#1575
      FieldName = 'GroupID'
    end
    object qryStuffGroupsGroupName: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1711#1585#1608#1607
      FieldName = 'GroupName'
      Size = 50
    end
    object qryStuffGroupsReciptType: TWordField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1711#1586#1575#1585#1588
      FieldName = 'ReciptType'
    end
    object qryStuffGroupsM1Entity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1601#1585#1608#1585#1583#1610#1606
      FieldName = 'M1Entity'
    end
    object qryStuffGroupsM1Weight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606' '#1601#1585#1608#1585#1583#1610#1606
      FieldName = 'M1Weight'
    end
    object qryStuffGroupsM1Price: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1601#1585#1608#1585#1583#1610#1606
      FieldName = 'M1Price'
      currency = True
      Precision = 19
    end
    object qryStuffGroupsM1TotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M1TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryStuffGroupsM2Entity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1575#1585#1583#1610#1576#1607#1588#1578
      FieldName = 'M2Entity'
    end
    object qryStuffGroupsM2Weight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606' '#1575#1585#1583#1610#1576#1607#1588#1578
      FieldName = 'M2Weight'
    end
    object qryStuffGroupsM2Price: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1575#1585#1583#1610#1576#1607#1588#1578
      FieldName = 'M2Price'
      currency = True
      Precision = 19
    end
    object qryStuffGroupsM2TotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M2TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryStuffGroupsM3Entity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1582#1585#1583#1575#1583
      FieldName = 'M3Entity'
    end
    object qryStuffGroupsM3Weight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606' '#1582#1585#1583#1575#1583
      FieldName = 'M3Weight'
    end
    object qryStuffGroupsM3Price: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1582#1585#1583#1575#1583
      FieldName = 'M3Price'
      currency = True
      Precision = 19
    end
    object qryStuffGroupsM3TotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M3TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryStuffGroupsM4Entity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1578#1610#1585
      FieldName = 'M4Entity'
    end
    object qryStuffGroupsM4Weight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606' '#1578#1610#1585
      FieldName = 'M4Weight'
    end
    object qryStuffGroupsM4Price: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1578#1610#1585
      FieldName = 'M4Price'
      currency = True
      Precision = 19
    end
    object qryStuffGroupsM4TotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M4TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryStuffGroupsM5Entity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1605#1585#1583#1575#1583
      FieldName = 'M5Entity'
    end
    object qryStuffGroupsM5Weight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606' '#1605#1585#1583#1575#1583
      FieldName = 'M5Weight'
    end
    object qryStuffGroupsM5Price: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1605#1585#1583#1575#1583
      FieldName = 'M5Price'
      currency = True
      Precision = 19
    end
    object qryStuffGroupsM5TotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M5TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryStuffGroupsM6Entity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1588#1607#1585#1610#1608#1585
      FieldName = 'M6Entity'
    end
    object qryStuffGroupsM6Weight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606' '#1588#1607#1585#1610#1608#1585
      FieldName = 'M6Weight'
    end
    object qryStuffGroupsM6Price: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1588#1607#1585#1610#1608#1585
      FieldName = 'M6Price'
      currency = True
      Precision = 19
    end
    object qryStuffGroupsM6TotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M6TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryStuffGroupsM7Entity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1605#1607#1585
      FieldName = 'M7Entity'
    end
    object qryStuffGroupsM7Weight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606' '#1605#1607#1585
      FieldName = 'M7Weight'
    end
    object qryStuffGroupsM7Price: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1605#1607#1585
      FieldName = 'M7Price'
      currency = True
      Precision = 19
    end
    object qryStuffGroupsM7TotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M7TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryStuffGroupsM8Entity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1570#1576#1575#1606
      FieldName = 'M8Entity'
    end
    object qryStuffGroupsM8Weight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606' '#1570#1576#1575#1606
      FieldName = 'M8Weight'
    end
    object qryStuffGroupsM8Price: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1570#1576#1575#1606
      FieldName = 'M8Price'
      currency = True
      Precision = 19
    end
    object qryStuffGroupsM8TotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M8TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryStuffGroupsM9Entity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1570#1584#1585
      FieldName = 'M9Entity'
    end
    object qryStuffGroupsM9Weight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606' '#1570#1584#1585
      FieldName = 'M9Weight'
    end
    object qryStuffGroupsM9Price: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1570#1584#1585
      FieldName = 'M9Price'
      currency = True
      Precision = 19
    end
    object qryStuffGroupsM9TotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M9TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryStuffGroupsM10Entity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1583#1610
      FieldName = 'M10Entity'
    end
    object qryStuffGroupsM10Weight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606' '#1583#1610
      FieldName = 'M10Weight'
    end
    object qryStuffGroupsM10Price: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1583#1610
      FieldName = 'M10Price'
      currency = True
      Precision = 19
    end
    object qryStuffGroupsM10TotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M10TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryStuffGroupsM11Entity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1576#1607#1605#1606
      FieldName = 'M11Entity'
    end
    object qryStuffGroupsM11Weight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606' '#1576#1607#1605#1606
      FieldName = 'M11Weight'
    end
    object qryStuffGroupsM11Price: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1576#1607#1605#1606
      FieldName = 'M11Price'
      currency = True
      Precision = 19
    end
    object qryStuffGroupsM11TotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M11TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryStuffGroupsM12Entity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1575#1587#1601#1606#1583
      FieldName = 'M12Entity'
    end
    object qryStuffGroupsM12Weight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606' '#1575#1587#1601#1606#1583
      FieldName = 'M12Weight'
    end
    object qryStuffGroupsM12Price: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1575#1587#1601#1606#1583
      FieldName = 'M12Price'
      currency = True
      Precision = 19
    end
    object qryStuffGroupsM12TotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M12TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryStuffGroupsReciptCaption: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1711#1586#1575#1585#1588
      FieldName = 'ReciptCaption'
      Size = 70
    end
    object qryStuffGroupsEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'Entity'
      ReadOnly = True
    end
    object qryStuffGroupsWeight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606
      FieldName = 'Weight'
      ReadOnly = True
    end
    object qryStuffGroupsPrice: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'Price'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryStuffGroupsTotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object qryInitQry: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Type'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT      *  from  ReciptTypes'
      'WHERE     ReciptType = :Type'
      'ORDER BY ReciptType')
    Left = 682
    Top = 167
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
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
    Template.FileName = 'D:\Projects\Fara\BSell\Exe\Report\rptStuffGroupsMonths.rtm'
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
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 416
    Top = 288
    Version = '22.02'
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
        mmHeight = 6265
        mmLeft = 116813
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
        Caption = 'Caption'
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
        mmLeft = 134297
        mmTop = 8467
        mmWidth = 15833
        BandType = 0
        LayerName = Foreground
      end
      object ppSysVarPageNo: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SysVarPageNo1'
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
        mmTop = 8467
        mmWidth = 12171
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
        Caption = #1711#1585#1608#1607' '#1603#1575#1604#1575
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 273739
        mmTop = 18522
        mmWidth = 10160
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
        mmLeft = 273211
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
        Caption = #1593#1606#1608#1575#1606' '#1711#1585#1608#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 238392
        mmTop = 18522
        mmWidth = 34290
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
        mmLeft = 237864
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
        Caption = #1605#1602#1583#1575#1585' '#1601#1585#1608#1585#1583#1610#1606
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 211935
        mmTop = 18522
        mmWidth = 25400
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
        mmLeft = 211407
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
        Caption = #1608#1586#1606' '#1601#1585#1608#1585#1583#1610#1606
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 185479
        mmTop = 18522
        mmWidth = 25400
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
        mmLeft = 184950
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
        Caption = #1605#1576#1604#1594' '#1601#1585#1608#1585#1583#1610#1606
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 159022
        mmTop = 18522
        mmWidth = 25400
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
        mmLeft = 158494
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
        Caption = #1605#1602#1583#1575#1585' '#1575#1585#1583#1610#1576#1607#1588#1578
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 132565
        mmTop = 18522
        mmWidth = 25400
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
        mmLeft = 132037
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
        Caption = #1608#1586#1606' '#1575#1585#1583#1610#1576#1607#1588#1578
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 106109
        mmTop = 18522
        mmWidth = 25400
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
        mmLeft = 105580
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
        Caption = #1605#1576#1604#1594' '#1575#1585#1583#1610#1576#1607#1588#1578
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 79652
        mmTop = 18522
        mmWidth = 25400
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
        mmLeft = 79124
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
        Caption = #1605#1602#1583#1575#1585' '#1582#1585#1583#1575#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 53195
        mmTop = 18522
        mmWidth = 25400
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
        mmLeft = 52667
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
        Caption = #1608#1586#1606' '#1582#1585#1583#1575#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 26739
        mmTop = 18522
        mmWidth = 25400
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
        mmLeft = 26210
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
        Caption = #1605#1576#1604#1594' '#1582#1585#1583#1575#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 282
        mmTop = 18522
        mmWidth = 25400
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
        DataField = 'GroupID'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7451
        mmLeft = 273739
        mmTop = 0
        mmWidth = 10160
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
        mmLeft = 273211
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'GroupName'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7451
        mmLeft = 238392
        mmTop = 0
        mmWidth = 34290
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
        mmLeft = 237864
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'M1Entity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7451
        mmLeft = 211935
        mmTop = 0
        mmWidth = 25400
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
        mmLeft = 211407
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'M1Weight'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7451
        mmLeft = 185479
        mmTop = 0
        mmWidth = 25400
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
        mmLeft = 184950
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'M1Price'
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
        mmLeft = 159022
        mmTop = 0
        mmWidth = 25400
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
        mmLeft = 158494
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'M2Entity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7451
        mmLeft = 132565
        mmTop = 0
        mmWidth = 25400
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
        mmLeft = 132037
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'M2Weight'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7451
        mmLeft = 106109
        mmTop = 0
        mmWidth = 25400
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
        mmLeft = 105580
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'M2Price'
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
        mmLeft = 79652
        mmTop = 0
        mmWidth = 25400
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
        mmLeft = 79124
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'M3Entity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7451
        mmLeft = 53195
        mmTop = 0
        mmWidth = 25400
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
        mmLeft = 52667
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'M3Weight'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7451
        mmLeft = 26739
        mmTop = 0
        mmWidth = 25400
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
        mmLeft = 26210
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        Border.mmPadding = 0
        DataField = 'M3Price'
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
        mmLeft = 282
        mmTop = 0
        mmWidth = 25400
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
        mmHeight = 6011
        mmLeft = 181240
        mmTop = 529
        mmWidth = 15579
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'GroupID'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 273739
        mmTop = 528
        mmWidth = 10160
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
        mmLeft = 273211
        mmTop = 0
        mmWidth = 2647
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc4'
        Border.mmPadding = 0
        DataField = 'M1Entity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 211935
        mmTop = 528
        mmWidth = 25400
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 211407
        mmTop = 0
        mmWidth = 2647
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc6'
        Border.mmPadding = 0
        DataField = 'M1Weight'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 185479
        mmTop = 528
        mmWidth = 25400
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
        mmLeft = 184950
        mmTop = 0
        mmWidth = 2647
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc8'
        Border.mmPadding = 0
        DataField = 'M1Price'
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
        mmLeft = 159022
        mmTop = 528
        mmWidth = 25400
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
        mmLeft = 158494
        mmTop = 0
        mmWidth = 2647
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc10'
        Border.mmPadding = 0
        DataField = 'M2Entity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 132565
        mmTop = 528
        mmWidth = 25400
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
        mmLeft = 132037
        mmTop = 0
        mmWidth = 2647
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc12'
        Border.mmPadding = 0
        DataField = 'M2Weight'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 106109
        mmTop = 528
        mmWidth = 25400
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
        mmLeft = 105580
        mmTop = 0
        mmWidth = 2647
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc14'
        Border.mmPadding = 0
        DataField = 'M2Price'
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
        mmLeft = 79652
        mmTop = 528
        mmWidth = 25400
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
        mmLeft = 79124
        mmTop = 0
        mmWidth = 2647
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc16'
        Border.mmPadding = 0
        DataField = 'M3Entity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 53195
        mmTop = 528
        mmWidth = 25400
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
        mmLeft = 52667
        mmTop = 0
        mmWidth = 2647
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc18'
        Border.mmPadding = 0
        DataField = 'M3Weight'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 26739
        mmTop = 528
        mmWidth = 25400
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
        mmLeft = 26210
        mmTop = 0
        mmWidth = 2647
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc20'
        Border.mmPadding = 0
        DataField = 'M3Price'
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
        mmLeft = 282
        mmTop = 528
        mmWidth = 25400
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
        mmLeft = 183886
        mmTop = 529
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'GroupID'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 273739
        mmTop = 528
        mmWidth = 10160
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
        mmLeft = 273211
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        Border.mmPadding = 0
        DataField = 'M1Entity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 211935
        mmTop = 528
        mmWidth = 25400
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 211407
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc5'
        Border.mmPadding = 0
        DataField = 'M1Weight'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 185479
        mmTop = 528
        mmWidth = 25400
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
        mmLeft = 184950
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc7'
        Border.mmPadding = 0
        DataField = 'M1Price'
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
        mmLeft = 159022
        mmTop = 528
        mmWidth = 25400
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
        mmLeft = 158494
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc9'
        Border.mmPadding = 0
        DataField = 'M2Entity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 132565
        mmTop = 528
        mmWidth = 25400
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
        mmLeft = 132037
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc11'
        Border.mmPadding = 0
        DataField = 'M2Weight'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 106109
        mmTop = 528
        mmWidth = 25400
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
        mmLeft = 105580
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc13'
        Border.mmPadding = 0
        DataField = 'M2Price'
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
        mmLeft = 79652
        mmTop = 528
        mmWidth = 25400
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
        mmLeft = 79124
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc15'
        Border.mmPadding = 0
        DataField = 'M3Entity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 53195
        mmTop = 528
        mmWidth = 25400
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
        mmLeft = 52667
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc17'
        Border.mmPadding = 0
        DataField = 'M3Weight'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 26739
        mmTop = 528
        mmWidth = 25400
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
        mmLeft = 26210
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc19'
        Border.mmPadding = 0
        DataField = 'M3Price'
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
        mmLeft = 282
        mmTop = 528
        mmWidth = 25400
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
    DataSource = SrcStuffGroups
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 508
    Top = 260
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'GroupID'
      FieldName = 'GroupID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'GroupName'
      FieldName = 'GroupName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'ReciptType'
      FieldName = 'ReciptType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'M1Entity'
      FieldName = 'M1Entity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'M1Weight'
      FieldName = 'M1Weight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'M1Price'
      FieldName = 'M1Price'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'M2Entity'
      FieldName = 'M2Entity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'M2Weight'
      FieldName = 'M2Weight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'M2Price'
      FieldName = 'M2Price'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'M3Entity'
      FieldName = 'M3Entity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'M3Weight'
      FieldName = 'M3Weight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'M3Price'
      FieldName = 'M3Price'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'M4Entity'
      FieldName = 'M4Entity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'M4Weight'
      FieldName = 'M4Weight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'M4Price'
      FieldName = 'M4Price'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'M5Entity'
      FieldName = 'M5Entity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'M5Weight'
      FieldName = 'M5Weight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'M5Price'
      FieldName = 'M5Price'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'M6Entity'
      FieldName = 'M6Entity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'M6Weight'
      FieldName = 'M6Weight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'M6Price'
      FieldName = 'M6Price'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = 'M7Entity'
      FieldName = 'M7Entity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = 'M7Weight'
      FieldName = 'M7Weight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField24: TppField
      FieldAlias = 'M7Price'
      FieldName = 'M7Price'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField25: TppField
      FieldAlias = 'M8Entity'
      FieldName = 'M8Entity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField26: TppField
      FieldAlias = 'M8Weight'
      FieldName = 'M8Weight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField27: TppField
      FieldAlias = 'M8Price'
      FieldName = 'M8Price'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField28: TppField
      FieldAlias = 'M9Entity'
      FieldName = 'M9Entity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField29: TppField
      FieldAlias = 'M9Weight'
      FieldName = 'M9Weight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField30: TppField
      FieldAlias = 'M9Price'
      FieldName = 'M9Price'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField31: TppField
      FieldAlias = 'M10Entity'
      FieldName = 'M10Entity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField32: TppField
      FieldAlias = 'M10Weight'
      FieldName = 'M10Weight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField33: TppField
      FieldAlias = 'M10Price'
      FieldName = 'M10Price'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField34: TppField
      FieldAlias = 'M11Entity'
      FieldName = 'M11Entity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField35: TppField
      FieldAlias = 'M11Weight'
      FieldName = 'M11Weight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField36: TppField
      FieldAlias = 'M11Price'
      FieldName = 'M11Price'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField37: TppField
      FieldAlias = 'M12Entity'
      FieldName = 'M12Entity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField38: TppField
      FieldAlias = 'M12Weight'
      FieldName = 'M12Weight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField39: TppField
      FieldAlias = 'M12Price'
      FieldName = 'M12Price'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField40: TppField
      FieldAlias = 'ReciptCaption'
      FieldName = 'ReciptCaption'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
  end
end

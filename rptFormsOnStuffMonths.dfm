inherited rptFormsOnStuffMonthsF: TrptFormsOnStuffMonthsF
  Top = 160
  Caption = 'rptFormsOnStuffMonthsF'
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
      Left = 711
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 1
    end
    object DBNavigator1: TDBNavigator
      Left = 345
      Top = 9
      Width = 272
      Height = 25
      DataSource = SrcForms
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Anchors = [akLeft, akTop, akRight]
      Flat = True
      TabOrder = 2
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 233
      Top = 7
      Width = 90
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
  end
  inherited Panel2: TPanel
    inherited lblCaption: TLabel
      Height = 16
      ExplicitLeft = 674
    end
    object Label1: TLabel
      Left = 616
      Top = 30
      Width = 116
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1575#1586' '#1588#1605#1575#1585#1607'..'#1578#1575#1585#1610#1582'...'#1590#1582#1575#1605#1578
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 24
      Top = 30
      Width = 78
      Height = 13
      Alignment = taRightJustify
      Caption = #1575#1586' '#1603#1583' '#1575#1606#1576#1575#1585'..'#1603#1583' '#1603#1575#1604#1575
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
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
      DataSource = SrcForms
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'StuffCode'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_StuffName'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_StuffTecInfo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UnitName'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'StuffSize'
          Font.Charset = OEM_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Modern'
          Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'StuffAlloy'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'StuffDiameter'
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
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M1TotallSellPrice'
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
      ShowZeroMaster = False
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
    Left = 272
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
    object actPrint: TAction
      Caption = #1670#1575#1662' (F7)'
      ShortCut = 118
    end
    object actSort: TAction
      Caption = #1576#1607' '#1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 336
  end
  object qryForms: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'StoreIDForm'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 0
      end
      item
        Name = 'StoreIDTo'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 0
      end
      item
        Name = 'ReciptNumberForm'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'ReciptNumberTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'DateFrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '0'
      end
      item
        Name = 'DateTo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '0'
      end
      item
        Name = 'StuffCodeFrom'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = '0'
      end
      item
        Name = 'StuffCodeTo'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = '0'
      end
      item
        Name = 'StuffDiameterFrom'
        Attributes = [paSigned]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = 0.000000000000000000
      end
      item
        Name = 'StuffDiameterTo'
        Attributes = [paSigned]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = 0.000000000000000000
      end
      item
        Name = 'Recipt__Type'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     ReciptItems.StuffCode, StuffCoding.c_StuffName, Units' +
        '.UnitName, ReciptItems.StuffSize, ReciptItems.StuffDiameter, '
      
        '                      ReciptItems.StuffAlloy, R.ReciptType, Reci' +
        'ptTypes.ReciptCaption,'
      
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
      #9#9'     Sum( TotallSellPrice ) as TotallSellPrice,'
      #9#9#9' StuffCoding.c_StuffTecInfo'
      'FROM         StuffCoding INNER JOIN'
      
        '                      Units ON StuffCoding.n_UnitCode = Units.Un' +
        'itCode INNER JOIN'
      '                      ReciptItems INNER JOIN'
      
        '                                            Recipts AS R ON R.Re' +
        'ciptID = ReciptItems.ReciptID AND'
      
        '                      R.ServerID = ReciptItems.ServerID AND R.Ye' +
        'arID = ReciptItems.YearID INNER JOIN'
      
        '                      ReciptTypes ON R.ReciptType = ReciptTypes.' +
        'ReciptType ON StuffCoding.c_StuffCode = ReciptItems.StuffCode'
      
        'WHERE     (R.StoreID BETWEEN :StoreIDForm AND :StoreIDTo) AND (R' +
        '.ReciptNumber BETWEEN :ReciptNumberForm AND :ReciptNumberTo)'
      'AND (R.ReciptDate BETWEEN  :DateFrom AND :DateTo)'
      'AND (R.ReciptState < 3)'
      
        'AND  (ReciptItems.StuffCode BETWEEN :StuffCodeFrom AND :StuffCod' +
        'eTo) '
      
        'AND (ReciptItems.StuffDiameter BETWEEN :StuffDiameterFrom AND :S' +
        'tuffDiameterTo) '
      'AND  (R.ReciptType IN (  :Recipt__Type ))'
      ''
      
        'GROUP BY R.ReciptType, ReciptTypes.ReciptCaption, ReciptItems.St' +
        'uffCode, StuffCoding.c_StuffName, Units.UnitName,'
      
        '                      ReciptItems.StuffSize, ReciptItems.StuffDi' +
        'ameter, ReciptItems.StuffAlloy,StuffCoding.c_StuffTecInfo')
    Left = 184
    Top = 137
    object qryFormsStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qryFormsc_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1588#1585#1581' '#1603#1575#1604#1575
      FieldName = 'c_StuffName'
      Size = 70
    end
    object qryFormsUnitName: TStringField
      Tag = 3
      DisplayLabel = #1608#1575#1581#1583' '#1588#1605#1575#1585#1588
      FieldName = 'UnitName'
      Size = 50
    end
    object qryFormsStuffSize: TStringField
      Tag = 3
      DisplayLabel = #1575#1576#1593#1575#1583
      FieldName = 'StuffSize'
      Size = 12
    end
    object qryFormsStuffAlloy: TStringField
      Tag = 3
      DisplayLabel = #1570#1604#1610#1575#1688
      FieldName = 'StuffAlloy'
      Size = 12
    end
    object qryFormsReciptType: TWordField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'ReciptType'
    end
    object qryFormsReciptCaption: TStringField
      DisplayLabel = #1606#1575#1605' '#1601#1585#1605
      FieldName = 'ReciptCaption'
      Size = 70
    end
    object qryFormsM1Entity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1601#1585#1608#1585#1583#1610#1606
      FieldName = 'M1Entity'
    end
    object qryFormsM1Weight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1601#1585#1608#1585#1583#1610#1606
      FieldName = 'M1Weight'
    end
    object qryFormsM1Price: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1601#1585#1608#1585#1583#1610#1606
      FieldName = 'M1Price'
      currency = True
      Precision = 19
    end
    object qryFormsM1TotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M1TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryFormsM2Entity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1575#1585#1583#1610#1576#1607#1588#1578
      FieldName = 'M2Entity'
    end
    object qryFormsM2Weight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1575#1585#1583#1610#1576#1607#1588#1578
      FieldName = 'M2Weight'
    end
    object qryFormsM2Price: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1575#1585#1583#1610#1576#1607#1588#1578
      FieldName = 'M2Price'
      currency = True
      Precision = 19
    end
    object qryFormsM2TotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M2TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryFormsM3Entity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1582#1585#1583#1575#1583
      FieldName = 'M3Entity'
    end
    object qryFormsM3Weight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1582#1585#1583#1575#1583
      FieldName = 'M3Weight'
    end
    object qryFormsM3Price: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1582#1585#1583#1575#1583
      FieldName = 'M3Price'
      currency = True
      Precision = 19
    end
    object qryFormsM3TotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M3TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryFormsM4Entity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1578#1610#1585
      FieldName = 'M4Entity'
    end
    object qryFormsM4Weight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1578#1610#1585
      FieldName = 'M4Weight'
    end
    object qryFormsM4Price: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1578#1610#1585
      FieldName = 'M4Price'
      currency = True
      Precision = 19
    end
    object qryFormsM4TotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M4TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryFormsM5Entity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1605#1585#1583#1575#1583
      FieldName = 'M5Entity'
    end
    object qryFormsM5Weight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1605#1585#1583#1575#1583
      FieldName = 'M5Weight'
    end
    object qryFormsM5Price: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1605#1585#1583#1575#1583
      FieldName = 'M5Price'
      currency = True
      Precision = 19
    end
    object qryFormsM5TotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M5TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryFormsM6Entity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1588#1607#1585#1610#1608#1585
      FieldName = 'M6Entity'
    end
    object qryFormsM6Weight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1588#1607#1585#1610#1608#1585
      FieldName = 'M6Weight'
    end
    object qryFormsM6Price: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1588#1607#1585#1610#1608#1585
      FieldName = 'M6Price'
      currency = True
      Precision = 19
    end
    object qryFormsM6TotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M6TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryFormsM7Entity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1605#1607#1585
      FieldName = 'M7Entity'
    end
    object qryFormsM7Weight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1605#1607#1585
      FieldName = 'M7Weight'
    end
    object qryFormsM7Price: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1605#1607#1585
      FieldName = 'M7Price'
      currency = True
      Precision = 19
    end
    object qryFormsM7TotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M7TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryFormsM8Entity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1570#1576#1575#1606
      FieldName = 'M8Entity'
    end
    object qryFormsM8Weight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1570#1576#1575#1606
      FieldName = 'M8Weight'
    end
    object qryFormsM8Price: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1570#1576#1575#1606
      FieldName = 'M8Price'
      currency = True
      Precision = 19
    end
    object qryFormsM8TotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M8TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryFormsM9Entity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1570#1584#1585
      FieldName = 'M9Entity'
    end
    object qryFormsM9Weight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1570#1584#1585
      FieldName = 'M9Weight'
    end
    object qryFormsM9Price: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1570#1584#1585
      FieldName = 'M9Price'
      currency = True
      Precision = 19
    end
    object qryFormsM9TotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M9TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryFormsM10Entity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1583#1610
      FieldName = 'M10Entity'
    end
    object qryFormsM10Weight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1583#1610
      FieldName = 'M10Weight'
    end
    object qryFormsM10Price: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1583#1610
      FieldName = 'M10Price'
      currency = True
      Precision = 19
    end
    object qryFormsM10TotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M10TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryFormsM11Entity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1576#1607#1605#1606
      FieldName = 'M11Entity'
    end
    object qryFormsM11Weight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1576#1607#1605#1606
      FieldName = 'M11Weight'
    end
    object qryFormsM11Price: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1576#1607#1605#1606
      FieldName = 'M11Price'
      currency = True
      Precision = 19
    end
    object qryFormsM11TotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M11TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryFormsM12Entity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1575#1587#1601#1606#1583
      FieldName = 'M12Entity'
    end
    object qryFormsM12Weight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1575#1587#1601#1606#1583
      FieldName = 'M12Weight'
    end
    object qryFormsM12Price: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1575#1587#1601#1606#1583
      FieldName = 'M12Price'
      currency = True
      Precision = 19
    end
    object qryFormsM12TotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M12TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryFormsStuffDiameter: TFloatField
      Tag = 3
      DisplayLabel = #1590#1582#1575#1605#1578
      FieldName = 'StuffDiameter'
    end
    object qryFormsEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'Entity'
      ReadOnly = True
    end
    object qryFormsWeight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606
      FieldName = 'Weight'
      ReadOnly = True
    end
    object qryFormsPrice: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'Price'
      ReadOnly = True
      Precision = 19
    end
    object qryFormsTotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryFormsc_StuffTecInfo: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1601#1606#1610
      FieldName = 'c_StuffTecInfo'
      Size = 30
    end
  end
  object SrcForms: TDataSource
    DataSet = qryForms
    Left = 328
    Top = 113
  end
  object qryInitQry: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
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
end

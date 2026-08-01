inherited RptReciptWithGrpCustMonthsF: TRptReciptWithGrpCustMonthsF
  Left = 300
  Top = 240
  Caption = #1606#1575#1605' '#1601#1585#1605' '
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
    object BitBtn6: TBitBtn
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
      Caption = #1578#1585#1578#1610#1576' '
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
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
      TabOrder = 2
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 233
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actSentExclel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 3
    end
    object BitBtn4: TBitBtn
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
      Caption = #1605#1581#1583#1608#1583#1607' '
      TabOrder = 4
    end
  end
  inherited Panel2: TPanel
    Height = 58
    ExplicitHeight = 58
    inherited ImgTemplate: TImage
      Top = 4
      ExplicitTop = 4
    end
    inherited lblCaption: TLabel
      Height = 16
      ExplicitLeft = 674
    end
    object Label1: TLabel
      Left = 661
      Top = 37
      Width = 71
      Height = 13
      Anchors = [akRight, akBottom]
      Caption = #1605#1581#1583#1608#1583#1607' '#1578#1575#1585#1610#1582#1610' '
    end
    object Label2: TLabel
      Left = 26
      Top = 37
      Width = 67
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = #1605#1581#1583#1608#1583#1607' '#1588#1605#1575#1585#1607
      ParentBiDiMode = False
    end
  end
  inherited Panel3: TPanel
    Top = 58
    Height = 418
    ExplicitTop = 58
    ExplicitHeight = 419
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 786
      Height = 395
      Align = alClient
      Color = clCream
      DataSource = srcitems
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
          FieldName = 'CustomerGrpID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CustomerGrpName'
          Width = 155
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
      Top = 397
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
    Left = 112
    Top = 216
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662' '
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607' '
      OnExecute = actFilterExecute
    end
    object actSentExclel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSentExclelExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576' '
      OnExecute = actSortExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 248
    Top = 209
  end
  object srcitems: TDataSource
    DataSet = Qryitems
    Left = 256
    Top = 109
  end
  object Qryitems: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'StoreIDForm'
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
        Name = 'ReciptNumberForm'
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
        Name = 'DateFrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'DateTo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
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
        Name = 'CustomerGrpIDFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'CustomerGrpIDTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     CustomersGroup.CustomerGrpID, CustomersGroup.Customer' +
        'GrpName, R.ReciptType, ReciptTypes.ReciptCaption,'
      
        #9#9'     '#9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 1 then ' +
        'ReciptItems.InputEntity + ReciptItems.OutputEntity else 0 end ) ' +
        'as M1Entity ,'
      
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
      #9#9'     Sum( TotallSellPrice ) as TotallSellPrice '
      ''
      'FROM         Customers INNER JOIN'
      
        '                      CustomersGroup ON Customers.CustomerGrpID ' +
        '= CustomersGroup.CustomerGrpID'
      '                      RIGHT OUTER JOIN'
      '                      ReciptItems INNER JOIN'
      
        '                                            Recipts AS R  ON R.R' +
        'eciptID = ReciptItems.ReciptID AND'
      
        '                      R.ServerID = ReciptItems.ServerID AND R.Ye' +
        'arID = ReciptItems.YearID INNER JOIN'
      
        '                      ReciptTypes ON R.ReciptType = ReciptTypes.' +
        'ReciptType ON Customers.CustID = R.PersonID1'
      
        'WHERE     (R.StoreID BETWEEN :StoreIDForm AND :StoreIDTo) AND (R' +
        '.ReciptNumber BETWEEN :ReciptNumberForm AND :ReciptNumberTo) AND' +
        ' (R.ReciptDate BETWEEN'
      '                      :DateFrom AND :DateTo)'
      'AND (R.ReciptState < 3)'
      'AND (R.ReciptType IN (  :Recipt__Type )  )'
      
        'AND (CustomersGroup.CustomerGrpID BETWEEN :CustomerGrpIDFrom AND' +
        ' :CustomerGrpIDTo)'
      ''
      
        'GROUP BY R.ReciptType, ReciptTypes.ReciptCaption, CustomersGroup' +
        '.CustomerGrpName, CustomersGroup.CustomerGrpID'
      '')
    Left = 88
    Top = 117
    object QryitemsCustomerGrpID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1711#1585#1608#1607' '
      DisplayWidth = 15
      FieldName = 'CustomerGrpID'
    end
    object QryitemsCustomerGrpName: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1711#1585#1608#1607' '#1605#1588#1578#1585#1610#1575#1606' '
      DisplayWidth = 59
      FieldName = 'CustomerGrpName'
      Size = 100
    end
    object QryitemsReciptType: TWordField
      FieldName = 'ReciptType'
    end
    object QryitemsM1Entity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1601#1585#1608#1585#1583#1610#1606
      FieldName = 'M1Entity'
    end
    object QryitemsM1Weight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1601#1585#1608#1585#1583#1610#1606
      FieldName = 'M1Weight'
    end
    object QryitemsM1Price: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1601#1585#1608#1585#1583#1610#1606
      FieldName = 'M1Price'
      currency = True
      Precision = 19
    end
    object QryitemsM1TotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M1TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object QryitemsM2Entity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1575#1585#1583#1610#1576#1607#1588#1578
      FieldName = 'M2Entity'
    end
    object QryitemsM2Weight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1575#1585#1583#1610#1576#1607#1588#1578
      FieldName = 'M2Weight'
    end
    object QryitemsM2Price: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1575#1585#1583#1610#1576#1607#1588#1578
      FieldName = 'M2Price'
      currency = True
      Precision = 19
    end
    object QryitemsM2TotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M2TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object QryitemsM3Entity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1582#1585#1583#1575#1583
      FieldName = 'M3Entity'
    end
    object QryitemsM3Weight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1582#1585#1583#1575#1583
      FieldName = 'M3Weight'
    end
    object QryitemsM3Price: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1582#1585#1583#1575#1583
      FieldName = 'M3Price'
      currency = True
      Precision = 19
    end
    object QryitemsM3TotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M3TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object QryitemsM4Entity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1578#1610#1585
      FieldName = 'M4Entity'
    end
    object QryitemsM4Weight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1578#1610#1585
      FieldName = 'M4Weight'
    end
    object QryitemsM4Price: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1578#1610#1585
      FieldName = 'M4Price'
      currency = True
      Precision = 19
    end
    object QryitemsM4TotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M4TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object QryitemsM5Entity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1605#1585#1583#1575#1583
      FieldName = 'M5Entity'
    end
    object QryitemsM5Weight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1605#1585#1583#1575#1583
      FieldName = 'M5Weight'
    end
    object QryitemsM5Price: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1605#1585#1583#1575#1583
      FieldName = 'M5Price'
      currency = True
      Precision = 19
    end
    object QryitemsM5TotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M5TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object QryitemsM6Entity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1588#1607#1585#1610#1608#1585
      FieldName = 'M6Entity'
    end
    object QryitemsM6Weight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1588#1607#1585#1610#1608#1585
      FieldName = 'M6Weight'
    end
    object QryitemsM6Price: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1588#1607#1585#1610#1608#1585
      FieldName = 'M6Price'
      currency = True
      Precision = 19
    end
    object QryitemsM6TotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M6TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object QryitemsM7Entity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1605#1607#1585
      FieldName = 'M7Entity'
    end
    object QryitemsM7Weight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1605#1607#1585
      FieldName = 'M7Weight'
    end
    object QryitemsM7Price: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1605#1607#1585
      FieldName = 'M7Price'
      currency = True
      Precision = 19
    end
    object QryitemsM7TotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M7TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object QryitemsM8Entity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1570#1576#1575#1606
      FieldName = 'M8Entity'
    end
    object QryitemsM8Weight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1570#1576#1575#1606
      FieldName = 'M8Weight'
    end
    object QryitemsM8Price: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1570#1576#1575#1606
      FieldName = 'M8Price'
      currency = True
      Precision = 19
    end
    object QryitemsM8TotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M8TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object QryitemsM9Entity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1570#1584#1585
      FieldName = 'M9Entity'
    end
    object QryitemsM9Weight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1570#1584#1585
      FieldName = 'M9Weight'
    end
    object QryitemsM9Price: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1570#1584#1585
      FieldName = 'M9Price'
      currency = True
      Precision = 19
    end
    object QryitemsM9TotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M9TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object QryitemsM10Entity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1583#1610
      FieldName = 'M10Entity'
    end
    object QryitemsM10Weight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1583#1610
      FieldName = 'M10Weight'
    end
    object QryitemsM10Price: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1583#1610
      FieldName = 'M10Price'
      currency = True
      Precision = 19
    end
    object QryitemsM10TotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M10TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object QryitemsM11Entity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1576#1607#1605#1606
      FieldName = 'M11Entity'
    end
    object QryitemsM11Weight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1576#1607#1605#1606
      FieldName = 'M11Weight'
    end
    object QryitemsM11Price: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1576#1607#1605#1606
      FieldName = 'M11Price'
      currency = True
      Precision = 19
    end
    object QryitemsM11TotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M11TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object QryitemsM12Entity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1575#1587#1601#1606#1583
      FieldName = 'M12Entity'
    end
    object QryitemsM12Weight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1575#1587#1601#1606#1583
      FieldName = 'M12Weight'
    end
    object QryitemsM12Price: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1575#1587#1601#1606#1583
      FieldName = 'M12Price'
      currency = True
      Precision = 19
    end
    object QryitemsM12TotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M12TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object QryitemsEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'Entity'
      ReadOnly = True
    end
    object QryitemsWeight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606
      FieldName = 'Weight'
      ReadOnly = True
    end
    object QryitemsPrice: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'Price'
      ReadOnly = True
      Precision = 19
    end
    object QryitemsTotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object QryitemsReciptCaption: TStringField
      FieldName = 'ReciptCaption'
      Size = 70
    end
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

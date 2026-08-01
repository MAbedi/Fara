inherited RecallSpecialRecipts4F: TRecallSpecialRecipts4F
  Caption = #1575#1606#1578#1582#1575#1576' '#1601#1585#1605' '#1601#1585#1575#1582#1608#1575#1606#1740
  ClientHeight = 500
  ClientWidth = 882
  ExplicitWidth = 888
  ExplicitHeight = 529
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 882
    ExplicitWidth = 882
    inherited Image1: TImage
      Left = 828
      ExplicitLeft = 828
    end
    inherited lblTopic0: TLabel
      Left = 756
      ExplicitLeft = 756
    end
    inherited lblTopic1: TLabel
      Left = 505
      Top = 29
      Width = 303
      Caption = #1576#1585#1575#1610' '#1575#1606#1578#1582#1575#1576' '#1601#1585#1605' '#1575#1586' '#1583#1603#1605#1607' Space '#1610#1575' Double Click '#1605#1608#1587' '#1575#1587#1578#1601#1575#1583#1607' '#1603#1606#1610#1583'.'
      ExplicitLeft = 505
      ExplicitTop = 29
      ExplicitWidth = 303
    end
  end
  inherited pnlDown: TPanel
    Top = 463
    Width = 882
    ExplicitTop = 463
    ExplicitWidth = 882
  end
  object CedarDbgrid1: TCedarDbgrid [2]
    Left = 0
    Top = 256
    Width = 882
    Height = 207
    Align = alBottom
    DataSource = srcSpecialRecall4
    DynProps = <>
    FooterParams.FillStyle = cfstGradientEh
    GridLineParams.VertEmptySpaceStyle = dessNonEh
    HorzScrollBar.ExtraPanel.Visible = True
    SearchPanel.Enabled = True
    SortLocal = True
    TabOrder = 2
    ActiveSearchPanel = False
    SelectFooterIndex = 0
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'YearID'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'StuffCode'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'c_StuffName'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PersonID1'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CustName'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PersonID2'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CustName_2'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Entity'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Weight'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'UnitSellPrice'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TotalPrice'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'WaterCo'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DeficitValue'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TaxCo'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TaxValue'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ItemNote'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ItemPersonID1'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NewReciptItemID'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AidNumber'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AidDate'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ReciptCaption'
        Footers = <>
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object qrySpecialRecall4: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ReciptType'
        DataType = ftWideString
        Size = 2
        Value = '12'
      end
      item
        Name = 'YearIDFrom'
        DataType = ftWideString
        Size = 4
        Value = '1396'
      end
      item
        Name = 'YearIDTo'
        DataType = ftWideString
        Size = 4
        Value = '1396'
      end
      item
        Name = 'YearID2From'
        DataType = ftWideString
        Size = 4
        Value = '1396'
      end
      item
        Name = 'YearID2To'
        DataType = ftWideString
        Size = 4
        Value = '1396'
      end
      item
        Name = 'YearID3From'
        DataType = ftWideString
        Size = 4
        Value = '1396'
      end
      item
        Name = 'YearID3To'
        DataType = ftWideString
        Size = 4
        Value = '1396'
      end
      item
        Name = 'ReciptType2'
        DataType = ftWideString
        Size = 2
        Value = '12'
      end
      item
        Name = 'ItemPersonIDFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ItemPersonIDTo'
        DataType = ftWideString
        Size = 5
        Value = '99999'
      end>
    SQL.Strings = (
      
        'SELECT  ReciptItems.YearID, ReciptItems.StuffCode, StuffCoding.c' +
        '_StuffName,'
      
        #9#9'ReciptItems.PersonID1 as PersonID1, Customers.CustName, Recipt' +
        's.PersonID2 , Customers_2.CustName as CustName_2,'
      
        #9#9'ROUND(ReciptItems.InputEntity + ReciptItems.OutputEntity - ISN' +
        'ULL(AidRecallSpecial.Entity, 0), 3) AS Entity,'
      
        #9#9'ROUND(ReciptItems.InputWeight + ReciptItems.OutputWeight - ISN' +
        'ULL(AidRecallSpecial.Weight, 0), 3) AS Weight,'
      #9#9' Recall_price.UnitSellPrice ,'
      
        #9#9'round (Recall_price.UnitPrice_C * ROUND(ReciptItems.InputWeigh' +
        't + ReciptItems.OutputWeight - ISNULL(AidRecallSpecial.Weight, 0' +
        '), 3) ,0) as TotalPrice  , '
      #9#9'Recall_price.WaterCo,'
      
        #9#9#9'round (Recall_price.UniteDeficitValue * ROUND(ReciptItems.Inp' +
        'utWeight + ReciptItems.OutputWeight - ISNULL(AidRecallSpecial.We' +
        'ight, 0), 3) ,0) as DeficitValue , '
      #9#9'Recall_price.TaxCo, '
      
        #9#9#9'round (Recall_price.UniteTaxValue * ROUND(ReciptItems.InputWe' +
        'ight + ReciptItems.OutputWeight - ISNULL(AidRecallSpecial.Weight' +
        ', 0), 3) ,0) as TaxValue , '
      
        #9#9'Recall_price.ReciptCaption + '#39'  : '#39' + ltrim(str(Recall_price.R' +
        'eciptNumber))  + '#39' '#1578#1575#1585#1740#1582' : '#39' +Recall_price.ReciptDate + '#39' '#39' +'
      
        #9#9'ReciptTypes.ReciptCaption + '#39'  : '#39' + ltrim(str(Recipts.ReciptN' +
        'umber))  + '#39' '#1578#1575#1585#1740#1582' : '#39' +Recipts.ReciptDate  as ItemNote,'
      ''
      
        #9#9'ReciptItems.PersonID1 as ItemPersonID1,ReciptItems.ReciptItemI' +
        'D as NewReciptItemID  ,'
      
        #9#9'Recipts.ReciptNumber as AidNumber , Recipts.ReciptDate as AidD' +
        'ate , ReciptTypes.ReciptCaption'
      ''
      'FROM'#9'ReciptItems INNER JOIN'
      #9#9'Recipts ON'#9'ReciptItems.ReciptID = Recipts.ReciptID '
      #9#9#9#9#9'AND ReciptItems.ServerID = Recipts.ServerID '
      #9#9#9#9#9'AND ReciptItems.YearID = Recipts.YearID INNER JOIN'
      
        #9#9'ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType  LE' +
        'FT OUTER JOIN'
      #9#9'('
      
        #9#9#9'SELECT'#9'ReciptItems.serverid  ,ReciptItems.PrvYearID , ReciptI' +
        'tems.preReciptItemID,  '
      
        #9#9#9#9'SUM(ReciptItems.InputEntity + ReciptItems.OutputEntity) AS E' +
        'ntity, '
      
        #9#9#9#9'SUM(ReciptItems.InputWeight + ReciptItems.OutputWeight) AS W' +
        'eight, '
      #9#9#9#9'count(*) as  CountNo'
      #9#9#9'FROM'#9'ReciptItems INNER JOIN'
      #9#9#9#9#9'Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND '
      #9#9#9#9#9'ReciptItems.ServerID = Recipts.ServerID AND '
      #9#9#9#9#9'ReciptItems.YearID = Recipts.YearID   INNER JOIN'
      #9#9#9#9#9'ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType'
      #9#9#9'WHERE'#9'(Recipts.ReciptState < 3) '
      #9#9#9#9#9'AND (Recipts.ReciptType = :ReciptType )'
      #9#9#9#9#9'AND (Recipts.yearid between :YearIDFrom  and :YearIDTo )'
      #9#9#9#9#9'AND ReciptItems.preReciptItemID is not null'
      
        ' '#9#9#9'GROUP BY  ReciptItems.serverid , ReciptItems.PrvYearID , Rec' +
        'iptItems.preReciptItemID '
      #9#9') AS AidRecallSpecial ON'
      
        #9#9#9#9#9'ReciptItems.ReciptItemID = AidRecallSpecial.preReciptItemID' +
        ' '
      #9#9#9#9#9'AND ReciptItems.YearID = AidRecallSpecial.PrvYearid   '
      
        #9#9#9#9#9'AND ReciptItems.ServerID = AidRecallSpecial.ServerID   left' +
        ' outer JOIN'
      #9#9'('
      
        #9#9#9'SELECT'#9'ReciptItems.serverid  ,ReciptItems.YearID , ReciptItem' +
        's.ReciptItemID,  '
      
        #9#9#9#9#9'(ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice' +
        ') /'
      
        #9#9#9#9#9'(ReciptItems.InputWeight + ReciptItems.OutputWeight) AS Uni' +
        'tPrice_C ,'
      #9#9#9#9#9'ReciptItems.UnitSellPrice ,'
      
        #9#9#9#9#9'ReciptItems.WaterCo, ReciptItems.DeficitValue / (ReciptItem' +
        's.InputWeight + ReciptItems.OutputWeight) as UniteDeficitValue ,' +
        ' '
      
        #9#9#9#9#9'ReciptItems.TaxCo,ReciptItems.TaxValue / (ReciptItems.Input' +
        'Weight + ReciptItems.OutputWeight) as UniteTaxValue ,'
      
        #9#9#9#9#9'Recipts.ReciptNumber , Recipts.ReciptDate , ReciptTypes.Rec' +
        'iptCaption'
      #9#9#9'FROM'#9'ReciptItems INNER JOIN'
      #9#9#9#9#9'Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND '
      #9#9#9#9#9'ReciptItems.ServerID = Recipts.ServerID AND '
      #9#9#9#9#9'ReciptItems.YearID = Recipts.YearID   INNER JOIN'
      #9#9#9#9#9'ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType'
      #9#9#9'WHERE'#9'(Recipts.ReciptState < 3) '
      #9#9#9#9#9'AND (Recipts.yearid between :YearID2From and :YearID2To )'
      ' '#9#9#9') AS Recall_price ON'
      #9#9#9#9#9'ReciptItems.preReciptItemID = Recall_price.ReciptItemID '
      #9#9#9#9#9'AND ReciptItems.PrvYearid = Recall_price.Yearid   '
      
        #9#9#9#9#9'AND ReciptItems.ServerID = Recall_price.ServerID  LEFT OUTE' +
        'R JOIN'
      
        #9#9#9'StuffCoding ON StuffCoding.c_StuffCode = ReciptItems.StuffCod' +
        'e LEFT OUTER JOIN'
      
        #9#9#9'Customers ON  Customers.CustID = ReciptItems.PersonID1 LEFT O' +
        'UTER JOIN'
      
        #9#9#9'Customers as Customers_2 ON  Customers_2.CustID = Recipts.Per' +
        'sonID2'
      ''
      'WHERE'#9'(Recipts.ReciptState <2 )'
      #9#9'AND (Recipts.YearID BETWEEN :YearID3From AND :YearID3To)'
      
        #9#9'AND (Recipts.ReciptType in (select part from  dbo.SplitString(' +
        '(select RecallReciptTypes from ReciptTypes1 where recipttype =:R' +
        'eciptType2) ,'#39','#39')))'
      
        #9#9'AND (Recipts.PersonID1 BETWEEN :ItemPersonIDFrom AND :ItemPers' +
        'onIDTo )'
      #9#9'AND AidRecallSpecial.preReciptItemID is null '
      'Order By Recipts.ReciptDate ,ReciptItems.preReciptItemID')
    Left = 224
    Top = 304
    object qrySpecialRecall4YearID: TIntegerField
      FieldName = 'YearID'
    end
    object qrySpecialRecall4StuffCode: TLargeintField
      FieldName = 'StuffCode'
    end
    object qrySpecialRecall4c_StuffName: TStringField
      FieldName = 'c_StuffName'
      Size = 150
    end
    object qrySpecialRecall4PersonID1: TIntegerField
      FieldName = 'PersonID1'
    end
    object qrySpecialRecall4CustName: TStringField
      FieldName = 'CustName'
      Size = 150
    end
    object qrySpecialRecall4PersonID2: TIntegerField
      FieldName = 'PersonID2'
    end
    object qrySpecialRecall4CustName_2: TStringField
      FieldName = 'CustName_2'
      Size = 150
    end
    object qrySpecialRecall4Entity: TFloatField
      FieldName = 'Entity'
      ReadOnly = True
    end
    object qrySpecialRecall4Weight: TFloatField
      FieldName = 'Weight'
      ReadOnly = True
    end
    object qrySpecialRecall4UnitSellPrice: TFMTBCDField
      FieldName = 'UnitSellPrice'
      Precision = 19
    end
    object qrySpecialRecall4TotalPrice: TFloatField
      FieldName = 'TotalPrice'
      ReadOnly = True
    end
    object qrySpecialRecall4WaterCo: TFloatField
      FieldName = 'WaterCo'
    end
    object qrySpecialRecall4DeficitValue: TFloatField
      FieldName = 'DeficitValue'
      ReadOnly = True
    end
    object qrySpecialRecall4TaxCo: TFloatField
      FieldName = 'TaxCo'
    end
    object qrySpecialRecall4TaxValue: TFloatField
      FieldName = 'TaxValue'
      ReadOnly = True
    end
    object qrySpecialRecall4ItemNote: TStringField
      FieldName = 'ItemNote'
      ReadOnly = True
      Size = 203
    end
    object qrySpecialRecall4ItemPersonID1: TIntegerField
      FieldName = 'ItemPersonID1'
    end
    object qrySpecialRecall4NewReciptItemID: TIntegerField
      FieldName = 'NewReciptItemID'
    end
    object qrySpecialRecall4AidNumber: TIntegerField
      FieldName = 'AidNumber'
    end
    object qrySpecialRecall4AidDate: TStringField
      FieldName = 'AidDate'
      FixedChar = True
      Size = 10
    end
    object qrySpecialRecall4ReciptCaption: TStringField
      FieldName = 'ReciptCaption'
      Size = 70
    end
  end
  object srcSpecialRecall4: TDataSource
    DataSet = qrySpecialRecall4
    Left = 144
    Top = 312
  end
end

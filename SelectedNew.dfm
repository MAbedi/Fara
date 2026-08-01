inherited SelectedNewF: TSelectedNewF
  Left = 388
  Top = 225
  Caption = #1575#1606#1578#1582#1575#1576' '#1589#1608#1585#1578' '#1582#1604#1575#1589#1607' '#1578#1606#1582#1608#1575#1607' '#1582#1585#1740#1583
  ClientHeight = 494
  ClientWidth = 685
  ExplicitWidth = 701
  ExplicitHeight = 533
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 437
    Width = 669
    Visible = False
    ExplicitTop = 413
    ExplicitWidth = 701
  end
  inherited Panel1: TPanel
    Width = 685
    Height = 67
    ExplicitWidth = 701
    ExplicitHeight = 67
    inherited Image1: TImage
      Left = 647
      ExplicitLeft = 647
    end
    inherited lblTopic0: TLabel
      Left = 575
      ExplicitLeft = 575
    end
    inherited lblTopic1: TLabel
      Left = 554
      ExplicitLeft = 554
    end
  end
  inherited pnlDown: TPanel
    Top = 457
    Width = 685
    ExplicitTop = 433
    ExplicitWidth = 701
    inherited btnClose: TBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 4
      Height = 29
      Align = alLeft
      ModalResult = 2
      ExplicitLeft = 4
      ExplicitTop = 4
      ExplicitHeight = 29
    end
    object btn1: TBitBtn
      AlignWithMargins = True
      Left = 622
      Top = 4
      Width = 75
      Height = 29
      Hint = ' '
      Align = alRight
      Caption = #1578#1571#1610#1610#1600#1600#1600#1583
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00318C2900007B00004A9C4200FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00009C100000AD0800007B0000BDBD5A00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000084420000AD080000B51000008C00007B841800FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000084000000BD180000B51000009400007B6300008CB5
        7300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00318C290000A5180000B5100000FF420000BD1800BD9C00000073
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00009C100000A5390000FF420000FF420000AD080000BD1000007B
        00006BAD5A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000B5210000E7420000FF4200318C2900318C2900BDBD1000008C
        000018841800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000084080000940800FF00FF00FF00FF00BD9C000000B5
        1000007B00008CB57300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B84210000B5
        10000084000000730000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00009C
        080000B51000007B000000A55A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00318C
        290000B5100010941800BD9C2100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF001094290039DE8C00BD9C18006BAD5A00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00189C210000CE210000A55A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF008CB57300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ModalResult = 1
      TabOrder = 1
      ExplicitLeft = 88
      ExplicitTop = 8
      ExplicitHeight = 25
    end
  end
  object Panel3: TPanel [3]
    Left = 0
    Top = 67
    Width = 685
    Height = 390
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 2
    ExplicitTop = 73
    ExplicitWidth = 701
    ExplicitHeight = 360
    object DBGridEh1: TDBGridEh
      Left = 2
      Top = 2
      Width = 697
      Height = 410
      Align = alClient
      AutoFitColWidths = True
      Color = clCream
      DataSource = srcRecipts
      DynProps = <>
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      SearchPanel.Enabled = True
      SortLocal = True
      SumList.Active = True
      TabOrder = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ReciptCaption'
          Footers = <>
          Width = 89
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ReciptNumber'
          Footers = <>
        end
        item
          CellButtons = <>
          Color = 13431799
          DynProps = <>
          EditButtons = <>
          FieldName = 'ReciptDate'
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
          Width = 97
        end
        item
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButtons = <>
          FieldName = 'TotalPrice'
          Footers = <>
          Width = 79
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ReciptsRow'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ReciptNote'
          Footers = <>
          Width = 109
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 360
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      ShortCut = 113
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      ShortCut = 115
    end
    object actPrint: TAction
      Category = 'Dataset'
      Caption = #1670#1575#1662
      ShortCut = 118
    end
    object DataSetDelete: TAction
      Category = 'Dataset'
      Caption = #1581#1584#1601
    end
  end
  object qryRecipts: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'PersonID2'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT ReciptTypes.ReciptCaption, Recipts.ReciptNumber, '
      
        'Recipts.ReciptDate, Recipts.PersonID1,Customers_1.CustName, Reci' +
        'pts.ReciptNote, '
      
        'SUM(ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice)A' +
        'S TotalPrice'
      
        ', Recipts.ReciptID, Recipts.ServerID, Recipts.YearID, Recipts.Re' +
        'ciptsRow'
      'FROM Recipts INNER JOIN'
      
        'ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType INNER' +
        ' JOIN'
      
        'Customers AS Customers_1 ON Recipts.PersonID1 = Customers_1.Cust' +
        'ID INNER JOIN'
      
        'ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recip' +
        'ts.ServerID = ReciptItems.ServerID '
      'AND Recipts.YearID = ReciptItems.YearID'
      ''
      'WHERE (Recipts.ReciptType in(4,5,31,140))'
      'AND (Recipts.PersonID2 = :PersonID2 )'
      'AND  (isnull(Recipts.ReciptsRow,0)=0)'
      ''
      
        'GROUP BY ReciptTypes.ReciptCaption, Recipts.ReciptNumber, Recipt' +
        's.ReciptDate, Recipts.PersonID1,'
      'Customers_1.CustName,'
      
        'Recipts.ReciptNote, Recipts.ReciptID, Recipts.ServerID, Recipts.' +
        'YearID, Recipts.ReciptsRow')
    Left = 408
    Top = 168
    object qryReciptsReciptCaption: TStringField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1601#1585#1605
      FieldName = 'ReciptCaption'
      Size = 70
    end
    object qryReciptsReciptNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607
      FieldName = 'ReciptNumber'
    end
    object qryReciptsReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1740#1582
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryReciptsPersonID1: TIntegerField
      Tag = 3
      DisplayLabel = #1705#1583' '#1601#1585#1608#1588#1606#1583#1607
      FieldName = 'PersonID1'
    end
    object qryReciptsCustName: TStringField
      Tag = 3
      DisplayLabel = #1601#1585#1608#1588#1606#1583#1607
      FieldName = 'CustName'
      Size = 150
    end
    object qryReciptsTotalPrice: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'TotalPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryReciptsReciptNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1740#1581#1575#1578
      FieldName = 'ReciptNote'
      Size = 400
    end
    object qryReciptsReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryReciptsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryReciptsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryReciptsReciptsRow: TIntegerField
      DisplayLabel = #1585#1583#1740#1601'/'#1588#1605#1575#1585#1607
      FieldName = 'ReciptsRow'
    end
  end
  object srcRecipts: TDataSource
    DataSet = qryRecipts
    Left = 552
    Top = 160
  end
end

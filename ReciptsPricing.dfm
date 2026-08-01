inherited ReciptsPricingF: TReciptsPricingF
  Left = 388
  Top = 225
  ActiveControl = DBGrid1
  Caption = #1602#1740#1605#1578' '#1711#1584#1575#1585#1740' '#1582#1585#1740#1583
  ClientHeight = 458
  ClientWidth = 693
  OnResize = FormResize
  ExplicitWidth = 709
  ExplicitHeight = 497
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 401
    Width = 685
    Visible = False
    ExplicitTop = 413
    ExplicitWidth = 701
  end
  inherited Panel1: TPanel
    Width = 693
    ExplicitWidth = 701
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
    object lbl1: TLabel
      Left = 97
      Top = 36
      Width = 21
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582
      FocusControl = edtReciptDate
    end
    object lbl2: TLabel
      Left = 97
      Top = 14
      Width = 30
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1588#1605#1575#1585#1607
      FocusControl = edtReciptNumber
    end
    object edtReciptNumber: TDBEdit
      Left = 14
      Top = 11
      Width = 81
      Height = 19
      TabStop = False
      Anchors = [akTop, akRight]
      Color = 13948116
      Ctl3D = False
      DataField = 'ReciptNumber'
      DataSource = srcRecipts
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
    object edtReciptDate: TDBEdit
      Left = 14
      Top = 33
      Width = 81
      Height = 19
      TabStop = False
      Anchors = [akTop, akRight]
      Color = 13948116
      Ctl3D = False
      DataField = 'ReciptDate'
      DataSource = srcRecipts
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
  end
  inherited pnlDown: TPanel
    Top = 421
    Width = 693
    ExplicitTop = 433
    ExplicitWidth = 701
    object okPanel: TPanel
      Left = 535
      Top = 1
      Width = 165
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        165
        35)
      object BitBtn7: TBitBtn
        Left = 88
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetPost1
        Anchors = [akTop, akRight]
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
        TabOrder = 0
      end
      object BitBtn8: TBitBtn
        Left = 8
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetCancel1
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1589#1600#1600#1600#1585#1575#1601
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00424A
          4A00424A4A00424A4A0000424A00424A4A00424A4A00424A4A00005A4A00424A
          4A00424A4A00424A4A00005A4A00424A4A00424A4A00FF00FF00FF00FF006B73
          6B00FFFFFF00FFFFFF0000E7FF00FFFFFF00FFFFFF00FFFFFF00BDFFFF00FFFF
          FF00FFFFFF00FFFFFF00BDFFFF00FFFFFF006B736B00FF00FF00FF00FF006B73
          6B00FFFFFF000010AD0000844A00FF9C4A00FF9C4A00FF9C4A00BD9C4A00FF9C
          4A00FF9C4A00FF9C4A00BD9C4A000018CE006B736B00FF00FF00FF00FF006B73
          6B00FFFFFF000018CE000000AD00FFFFFF00FF9C4A00FFFFFF0000E7FF00FF9C
          4A00FFFFFF00FFFFFF000000CE00FFFFFF006B736B00FF00FF00FF00FF008484
          7300FFFFFF00FF9C4A000000CE000010AD00FF9C4A00FFFFFF00BDFFFF00FF9C
          4A000010AD000018CE00BD9C4A00FFFFFF0084847300FF00FF00FF00FF008484
          7300FFFFFF00FF9C4A0000844A000018CE000010AD00FF9C4A00BD9C4A000010
          AD000018CE00FF9C4A00BD9C4A00FFFFFF0084847300FF00FF00FF00FF008484
          7300FFFFFF00F78C390000E7FF00FFFFFF000018CE000018DE00BD18AD000018
          DE00FFFFFF00FFFFFF00BD9C3900FFFFFF0084847300FF00FF00FF00FF008C8C
          8C00F7F7F700F78C390000E7FF00FFFFFF00F78C39000018DE00BD18DE000018
          CE000010AD00FFFFFF00BD9C3900F7F7F7008C8C8C00FF00FF00FF00FF008C8C
          8C00F7F7F700E784080000840800E78408000018CE000018E700BD9C0800E784
          08000018F7000010AD00BD9C0800F7F7F7008C8C8C00FF00FF00FF00FF009494
          9400E7E7E700E784080000E7FF000018F7000018E700FFFFFF00BDFFFF00E784
          0800FFFFFF000018F700BD9C0800E7E7E70094949400FF00FF00FF00FF009494
          9400E7E7E700E78408000000FF000018E700E7840800FFFFFF00BDFFFF00E784
          0800FFFFFF00FFFFFF00BD18F700E7E7E70094949400FF00FF00FF00FF009C9C
          9C00CED6CE000018F7000000F700E7840800E7840800E7840800FF9C0800E784
          0800E7840800E7840800008408000018F7009C9C9C00FF00FF00FF00FF009C9C
          9C00CED6CE000018F70000C6CE00CED6CE00CED6CE00CED6CE0000DECE00CED6
          CE00CED6CE00CED6CE0000C6CE00CED6CE009C9C9C00FF00FF00FF00FF009C9C
          9C009C9C9C009C9C9C0000849C009C9C9C009C9C9C009C9C9C0084849C009C9C
          9C009C9C9C009C9C9C0000849C009C9C9C009C9C9C00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 1
      end
    end
  end
  object Panel3: TPanel [3]
    Left = 0
    Top = 73
    Width = 693
    Height = 348
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 2
    ExplicitWidth = 701
    ExplicitHeight = 360
    object DBGrid1: TDBGrid
      Tag = 111
      Left = 2
      Top = 2
      Width = 697
      Height = 356
      Align = alClient
      Color = clCream
      DataSource = srcReciptItems
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'StuffCode'
          ReadOnly = True
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'StuffName'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'InputEntity'
          ReadOnly = True
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OutputEntity'
          ReadOnly = True
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UnitSellPrice'
          ReadOnly = True
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TotalInputPrice'
          Width = 122
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TotalOutputPrice'
          Width = 111
          Visible = True
        end>
    end
  end
  inherited ActionList1: TActionList
    Left = 360
    inherited DataSetPost1: TDataSetPost
      DataSource = srcReciptItems
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcReciptItems
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      ShortCut = 113
      DataSource = srcReciptItems
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
      DataSource = srcReciptItems
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      ShortCut = 115
      DataSource = srcReciptItems
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
        Name = 'ReciptID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 2
      end
      item
        Name = 'YearID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'ServerID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT  Recipts.ServerID,Recipts.YearID,   Recipts.ReciptID, Rec' +
        'ipts.ReciptNumber, Recipts.StoreID, Stores.c_StoreName, Recipts.' +
        'ReciptDate, '
      
        '                      SUM(ReciptItems.InputEntity + ReciptItems.' +
        'OutputEntity) AS Entity, SUM(ReciptItems.InputWeight + ReciptIte' +
        'ms.OutputWeight) '
      
        '                      AS Weight, SUM(ReciptItems.TotalInputPrice' +
        ' + ReciptItems.TotalOutputPrice) AS Price,DocNo,RialsEqual'
      'FROM         Recipts INNER JOIN'
      
        '                      Stores ON Recipts.StoreID = Stores.n_Store' +
        'ID INNER JOIN'
      
        '                      ReciptItems ON dbo.Recipts.ReciptID = dbo.' +
        'ReciptItems.ReciptID AND '
      
        '                      dbo.Recipts.ServerID = dbo.ReciptItems.Ser' +
        'verID AND dbo.Recipts.YearID = dbo.ReciptItems.YearID'
      ''
      'where (Recipts.ReciptID = :ReciptID)'
      'and ( Recipts.YearID = :YearID )'
      'and ( Recipts.ServerID = :ServerID )'
      ''
      
        'GROUP BY Recipts.ServerID,Recipts.YearID, Recipts.ReciptID, Reci' +
        'pts.StoreID, Stores.c_StoreName,'
      
        '          Recipts.ReciptDate, Recipts.ReciptNumber,DocNo,RialsEq' +
        'ual')
    Left = 376
    Top = 120
    object qryReciptsReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryReciptsStoreID: TSmallintField
      FieldName = 'StoreID'
    end
    object qryReciptsc_StoreName: TStringField
      FieldName = 'c_StoreName'
      Size = 70
    end
    object qryReciptsReciptDate: TStringField
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryReciptsEntity: TFloatField
      FieldName = 'Entity'
      ReadOnly = True
    end
    object qryReciptsWeight: TFloatField
      FieldName = 'Weight'
      ReadOnly = True
    end
    object qryReciptsPrice: TBCDField
      FieldName = 'Price'
      ReadOnly = True
      Precision = 19
    end
    object qryReciptsReciptNumber: TIntegerField
      FieldName = 'ReciptNumber'
    end
    object qryReciptsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryReciptsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryReciptsDocNo: TIntegerField
      FieldName = 'DocNo'
    end
    object qryReciptsRialsEqual: TBCDField
      FieldName = 'RialsEqual'
      Precision = 19
    end
  end
  object qryReciptItems: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ReciptID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'YearID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ServerID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT        StuffCode,'
      '                             (SELECT        c_StuffName'
      '                                FROM            StuffCoding'
      
        '                                WHERE        (c_StuffCode = Reci' +
        'ptItems.StuffCode)) AS StuffName, InputEntity, OutputEntity, Uni' +
        'tSellPrice, TotalInputPrice, TotalOutputPrice'
      'FROM            ReciptItems'
      'WHERE        (ReciptID = :ReciptID )'
      'AND  ( YearID = :YearID )'
      'AND  ( ServerID = :ServerID )')
    Left = 424
    Top = 233
    object qryReciptItemsStuffCode: TLargeintField
      DisplayLabel = #1705#1583' '#1705#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qryReciptItemsStuffName: TStringField
      DisplayLabel = #1588#1585#1581' '#1705#1575#1604#1575
      FieldName = 'StuffName'
      ReadOnly = True
      Size = 150
    end
    object qryReciptItemsInputEntity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'InputEntity'
    end
    object qryReciptItemsOutputEntity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'OutputEntity'
    end
    object qryReciptItemsUnitSellPrice: TFMTBCDField
      DisplayLabel = #1601#1740
      FieldName = 'UnitSellPrice'
      Precision = 19
    end
    object qryReciptItemsTotalInputPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1740' '#1705#1604
      FieldName = 'TotalInputPrice'
      OnChange = qryReciptItemsTotalInputPriceChange
      currency = True
      Precision = 19
    end
    object qryReciptItemsTotalOutputPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1740' '#1705#1604
      FieldName = 'TotalOutputPrice'
      currency = True
      Precision = 19
    end
  end
  object srcReciptItems: TDataSource
    DataSet = qryReciptItems
    Left = 256
    Top = 232
  end
  object srcRecipts: TDataSource
    DataSet = qryRecipts
    Left = 480
    Top = 128
  end
  object qryinit: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'ReciptID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'YearID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ServerID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT        ReciptTypes.EffectType'
      'FROM            Recipts INNER JOIN'
      
        '                         ReciptTypes ON Recipts.ReciptType = Rec' +
        'iptTypes.ReciptType'
      
        'WHERE        (Recipts.ReciptID = :ReciptID ) AND (Recipts.YearID' +
        ' = :YearID ) AND (Recipts.ServerID = :ServerID )')
    Left = 614
    Top = 124
  end
end

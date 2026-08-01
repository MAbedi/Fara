inherited StuffToStore2F: TStuffToStore2F
  Left = 208
  Top = 153
  Caption = 'StuffToStore2F'
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    inherited BtnReject: TBitBtn
      Left = 3
    end
    object newPanel: TPanel
      Left = 537
      Top = 1
      Width = 244
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        244
        39)
      object BitBtn3: TBitBtn
        Left = 161
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 84
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        Left = 7
        Top = 8
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        TabOrder = 2
        OnClick = BitBtn5Click
      end
    end
    object okPanel: TPanel
      Left = 372
      Top = 1
      Width = 165
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      DesignSize = (
        165
        39)
      object BitBtn7: TBitBtn
        Left = 86
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetPost1
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1610#1610#1583
        TabOrder = 0
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
      end
      object BitBtn8: TBitBtn
        Left = 9
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetCancel1
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1589#1585#1575#1601
        TabOrder = 1
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
      end
    end
    object BitBtn1: TBitBtn
      Left = 224
      Top = 9
      Width = 73
      Height = 25
      Action = actExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' '#1575#1603#1587#1604
      TabOrder = 3
    end
    object BitBtn6: TBitBtn
      Left = 152
      Top = 9
      Width = 70
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
    end
    object BitBtn9: TBitBtn
      Left = 80
      Top = 9
      Width = 70
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 5
    end
    object DBNavigator1: TDBNavigator
      Left = 300
      Top = 9
      Width = 92
      Height = 25
      DataSource = srcRecipts
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 6
    end
  end
  inherited Panel2: TPanel
    Height = 59
    object Label12: TLabel
      Left = 112
      Top = 11
      Width = 30
      Height = 13
      Caption = #1588#1605#1575#1585#1607
      FocusControl = DBEdit12
    end
    object Label13: TLabel
      Left = 113
      Top = 34
      Width = 21
      Height = 13
      Caption = #1578#1575#1585#1610#1582
      FocusControl = DBEdit13
    end
    object DBEdit12: TDBEdit
      Left = 20
      Top = 7
      Width = 86
      Height = 21
      DataField = 'ReciptNumber'
      DataSource = srcRecipts
      TabOrder = 0
    end
    object DBEdit13: TDBEdit
      Left = 20
      Top = 33
      Width = 86
      Height = 21
      DataField = 'ReciptDate'
      DataSource = srcRecipts
      TabOrder = 1
    end
  end
  inherited Panel3: TPanel
    Top = 59
    Height = 422
    object Label1: TLabel
      Left = 689
      Top = 19
      Width = 55
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1575#1606#1576#1575#1585
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 689
      Top = 56
      Width = 55
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1603#1583' '#1601#1585#1608#1588#1606#1583#1607
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 689
      Top = 93
      Width = 49
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1601#1610' '#1602#1585#1575#1585#1583#1575#1583
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 689
      Top = 130
      Width = 89
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1603#1583#1608#1606#1575#1605' '#1578#1581#1608#1610#1604' '#1711#1610#1585#1606#1583#1607
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 689
      Top = 168
      Width = 53
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1603#1575#1604#1575
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 689
      Top = 205
      Width = 25
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1605#1602#1583#1575#1585
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 689
      Top = 242
      Width = 36
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1583#1585#1589#1583#1570#1576
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 689
      Top = 280
      Width = 54
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1605#1602#1583#1575#1585' '#1606#1607#1575#1610#1610
      FocusControl = DBEdit8
    end
    object Label9: TLabel
      Left = 689
      Top = 317
      Width = 45
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1601#1610' '#1606#1607#1575#1610#1610
      FocusControl = DBEdit9
    end
    object Label10: TLabel
      Left = 689
      Top = 354
      Width = 36
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1605#1576#1604#1594' '#1603#1604
      FocusControl = DBEdit10
    end
    object Label11: TLabel
      Left = 694
      Top = 392
      Width = 40
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1608#1590#1610#1581#1575#1578
      FocusControl = DBEdit11
    end
    object SpeedButton1: TSpeedButton
      Left = 594
      Top = 16
      Width = 23
      Height = 21
      Anchors = [akTop, akRight]
      Caption = '...'
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 594
      Top = 53
      Width = 23
      Height = 22
      Anchors = [akTop, akRight]
      Caption = '...'
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 594
      Top = 127
      Width = 23
      Height = 22
      Anchors = [akTop, akRight]
      Caption = '...'
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 594
      Top = 165
      Width = 23
      Height = 22
      Anchors = [akTop, akRight]
      Caption = '...'
      OnClick = SpeedButton4Click
    end
    object DBEdit1: TDBEdit
      Left = 618
      Top = 16
      Width = 67
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'StoreID'
      DataSource = srcRecipts
      TabOrder = 0
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit2: TDBEdit
      Left = 618
      Top = 53
      Width = 67
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'PersonID1'
      DataSource = srcRecipts
      TabOrder = 1
      OnKeyPress = DBEdit2KeyPress
    end
    object DBEdit3: TDBEdit
      Left = 618
      Top = 91
      Width = 66
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'ContactRate'
      DataSource = srcRecipts
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 618
      Top = 128
      Width = 67
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'PersonID2'
      DataSource = srcRecipts
      TabOrder = 3
      OnKeyPress = DBEdit4KeyPress
    end
    object DBEdit5: TDBEdit
      Left = 618
      Top = 166
      Width = 67
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'StuffCode'
      DataSource = srcRecipts
      TabOrder = 4
      OnKeyPress = DBEdit5KeyPress
    end
    object DBEdit6: TDBEdit
      Left = 618
      Top = 204
      Width = 67
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'RequestedEntity'
      DataSource = srcRecipts
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 618
      Top = 241
      Width = 67
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'WaterCo'
      DataSource = srcRecipts
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 618
      Top = 279
      Width = 67
      Height = 21
      Anchors = [akTop, akRight]
      Color = 14803425
      DataField = 'InputEntity'
      DataSource = srcRecipts
      ReadOnly = True
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 618
      Top = 316
      Width = 67
      Height = 21
      Anchors = [akTop, akRight]
      Color = 14803425
      DataField = 'UnitSellPrice'
      DataSource = srcRecipts
      ReadOnly = True
      TabOrder = 8
    end
    object DBEdit10: TDBEdit
      Left = 565
      Top = 354
      Width = 120
      Height = 21
      Anchors = [akTop, akRight]
      Color = 14803425
      DataField = 'TotalInputPrice'
      DataSource = srcRecipts
      ReadOnly = True
      TabOrder = 9
    end
    object DBEdit11: TDBEdit
      Left = 16
      Top = 392
      Width = 669
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'ItemNote'
      TabOrder = 10
    end
    object Panel1: TPanel
      Left = 6
      Top = 24
      Width = 369
      Height = 297
      TabOrder = 11
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 367
        Height = 276
        Align = alClient
        DataSource = srcEffect
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Color = 14803425
            Expanded = False
            FieldName = '_effectName'
            ReadOnly = True
            Width = 193
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Amount'
            Visible = True
          end
          item
            Color = 14803425
            Expanded = False
            FieldName = 'ReplaceRate'
            ReadOnly = True
            Visible = True
          end>
      end
      object StatusBar1: TStatusBar
        Left = 1
        Top = 277
        Width = 367
        Height = 19
        Panels = <
          item
            Text = '0'
            Width = 50
          end
          item
            Text = #1580#1605#1593' '#1603#1604' '#1578#1594#1610#1610#1585' '#1601#1610
            Width = 50
          end>
      end
    end
    object DBEdit14: TDBEdit
      Left = 383
      Top = 53
      Width = 210
      Height = 21
      Anchors = [akTop, akRight]
      Color = 14803425
      DataField = '_person1Name'
      DataSource = srcRecipts
      TabOrder = 12
    end
    object DBEdit15: TDBEdit
      Left = 383
      Top = 129
      Width = 210
      Height = 21
      Anchors = [akTop, akRight]
      Color = 14803425
      DataField = '_person2Name'
      DataSource = srcRecipts
      TabOrder = 13
    end
    object DBEdit16: TDBEdit
      Left = 383
      Top = 166
      Width = 210
      Height = 21
      Anchors = [akTop, akRight]
      Color = 14803425
      DataField = '_stuffName'
      DataSource = srcRecipts
      TabOrder = 14
    end
    object DBEdit17: TDBEdit
      Left = 383
      Top = 17
      Width = 210
      Height = 21
      Anchors = [akTop, akRight]
      Color = 14803425
      DataField = '_storeName'
      DataSource = srcRecipts
      TabOrder = 15
    end
  end
  inherited ActionList: TActionList
    Left = 608
    inherited DataSetInsert1: TDataSetInsert [0]
      DataSource = srcRecipts
    end
    inherited DataSetEdit1: TDataSetEdit [1]
      DataSource = srcRecipts
    end
    inherited DataSetPost1: TDataSetPost [2]
      DataSource = srcRecipts
    end
    inherited DataSetCancel1: TDataSetCancel [3]
      DataSource = srcRecipts
    end
    inherited actshowChart: TAction [4]
    end
    object actExcel: TAction [5]
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' '#1575#1603#1587#1604
    end
    object actSort: TAction [6]
      Caption = #1578#1585#1578#1610#1576
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcRecipts
    end
    inherited actExit: TAction [9]
    end
  end
  inherited ImageList1: TImageList
    Left = 704
  end
  object qry_LookPurchaseEffect: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT  dbo.PurchaseEffect.*  FROM  dbo.PurchaseEffect')
    Left = 224
    Top = 11
    object qry_LookPurchaseEffectEffectID: TIntegerField
      FieldName = 'EffectID'
    end
    object qry_LookPurchaseEffectEffectName: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldName = 'EffectName'
      Size = 50
    end
    object qry_LookPurchaseEffectCoefficient: TFloatField
      FieldName = 'Coefficient'
    end
    object qry_LookPurchaseEffectAmountRate: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'AmountRate'
    end
  end
  object qry_LookStore: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT     n_StoreID, c_StoreName'
      'FROM         dbo.Stores')
    Left = 496
    Top = 11
  end
  object qry_LookPerson: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT     CustID, CustName, CustomerGrpID'
      'FROM         dbo.Customers')
    Left = 328
    Top = 11
  end
  object qry_LookStuff: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT     c_StuffCode, GroupID, c_StuffName'
      'FROM         dbo.StuffCoding')
    Left = 416
    Top = 11
  end
  object qryEffect: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforePost = qryEffectBeforePost
    AfterPost = qryEffectAfterPost
    AfterScroll = qryEffectAfterScroll
    DataSource = srcRecipts
    Parameters = <
      item
        Name = 'ReciptItemID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 55579
      end>
    SQL.Strings = (
      'SELECT     dbo.ReciptPurchaseEffect.*'
      'FROM        dbo.ReciptPurchaseEffect '
      'where  ReciptItemID=:ReciptItemID')
    Left = 272
    Top = 195
    object qryEffectEffectID: TIntegerField
      FieldName = 'EffectID'
    end
    object qryEffectAmount: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'Amount'
      Required = True
      OnChange = qryEffectAmountChange
    end
    object qryEffectReplaceRate: TFloatField
      DisplayLabel = #1578#1594#1610#1610#1585' '#1601#1610
      FieldName = 'ReplaceRate'
    end
    object qryEffectReciptItemID: TIntegerField
      FieldName = 'ReciptItemID'
    end
    object qryEffect_effectName: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldKind = fkLookup
      FieldName = '_effectName'
      LookupDataSet = qry_LookPurchaseEffect
      LookupKeyFields = 'EffectID'
      LookupResultField = 'EffectName'
      KeyFields = 'EffectID'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryEffectPurchaseID: TIntegerField
      FieldName = 'PurchaseID'
    end
  end
  object srcEffect: TDataSource
    DataSet = qryEffect
    Left = 240
    Top = 256
  end
  object qryRecipts: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryReciptsAfterInsert
    BeforePost = qryReciptsBeforePost
    AfterPost = qryReciptsAfterPost
    BeforeDelete = qryReciptsBeforeDelete
    AfterScroll = qryReciptsAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT  dbo.ReciptItems.*, dbo.Recipts.*'
      'FROM    dbo.Recipts INNER JOIN'
      
        '        dbo.ReciptItems ON dbo.Recipts.ReciptID = dbo.ReciptItem' +
        's.ReciptID')
    Left = 432
    Top = 264
    object qryReciptsReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryReciptsStoreID: TSmallintField
      Tag = 3
      FieldName = 'StoreID'
      Required = True
    end
    object qryReciptsReciptNumber: TIntegerField
      Tag = 3
      FieldName = 'ReciptNumber'
      Required = True
    end
    object qryReciptsReciptDate: TStringField
      Tag = 3
      FieldName = 'ReciptDate'
      Required = True
      FixedChar = True
      Size = 10
    end
    object qryReciptsPersonID1: TIntegerField
      Tag = 3
      FieldName = 'PersonID1'
      Required = True
    end
    object qryReciptsPersonID2: TIntegerField
      Tag = 3
      FieldName = 'PersonID2'
      Required = True
    end
    object qryReciptsReciptType: TWordField
      FieldName = 'ReciptType'
    end
    object qryReciptsSecondType: TWordField
      FieldName = 'SecondType'
    end
    object qryReciptsTotalValue: TBCDField
      FieldName = 'TotalValue'
      Precision = 19
    end
    object qryReciptsReciptNote: TStringField
      FieldName = 'ReciptNote'
      Size = 200
    end
    object qryReciptsParentReciptID: TIntegerField
      FieldName = 'ParentReciptID'
    end
    object qryReciptsOperatorID: TIntegerField
      FieldName = 'OperatorID'
    end
    object qryReciptsModifyDate: TDateTimeField
      FieldName = 'ModifyDate'
    end
    object qryReciptsReciptState: TWordField
      FieldName = 'ReciptState'
    end
    object qryReciptsUseUnitID: TIntegerField
      FieldName = 'UseUnitID'
    end
    object qryRecipts_storeName: TStringField
      FieldKind = fkLookup
      FieldName = '_storeName'
      LookupDataSet = qry_LookStore
      LookupKeyFields = 'n_StoreID'
      LookupResultField = 'c_StoreName'
      KeyFields = 'StoreID'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qryRecipts_person1Name: TStringField
      FieldKind = fkLookup
      FieldName = '_person1Name'
      LookupDataSet = qry_LookPerson
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'PersonID1'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryRecipts_person2Name: TStringField
      FieldKind = fkLookup
      FieldName = '_person2Name'
      LookupDataSet = qry_LookPerson
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'PersonID2'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryReciptsReciptItemID: TIntegerField
      FieldName = 'ReciptItemID'
    end
    object qryReciptsStuffCode: TIntegerField
      FieldName = 'StuffCode'
    end
    object qryReciptsRequestedEntity: TFloatField
      FieldName = 'RequestedEntity'
    end
    object qryReciptsRequestedWeight: TFloatField
      FieldName = 'RequestedWeight'
    end
    object qryReciptsControlCode: TLargeintField
      FieldName = 'ControlCode'
    end
    object qryReciptsTotalInputPrice: TBCDField
      FieldName = 'TotalInputPrice'
      Precision = 19
    end
    object qryReciptsTotalOutputPrice: TBCDField
      FieldName = 'TotalOutputPrice'
      Precision = 19
    end
    object qryReciptsUnitSellPrice: TFMTBCDField
      FieldName = 'UnitSellPrice'
      Precision = 19
    end
    object qryReciptsTotallSellPrice: TBCDField
      FieldName = 'TotallSellPrice'
      Precision = 19
    end
    object qryReciptsItemNote: TStringField
      FieldName = 'ItemNote'
      Size = 100
    end
    object qryReciptsOrderState: TWordField
      FieldName = 'OrderState'
    end
    object qryReciptsContactRate: TFloatField
      FieldName = 'ContactRate'
    end
    object qryReciptsWaterCo: TFloatField
      FieldName = 'WaterCo'
    end
    object qryReciptsReciptID_1: TIntegerField
      FieldName = 'ReciptID_1'
    end
    object qryReciptsPersonID1_1: TIntegerField
      FieldName = 'PersonID1_1'
    end
    object qryReciptsUseUnitID_1: TIntegerField
      FieldName = 'UseUnitID_1'
    end
    object qryReciptsInputEntity: TFloatField
      FieldName = 'InputEntity'
    end
    object qryRecipts_stuffName: TStringField
      FieldKind = fkLookup
      FieldName = '_stuffName'
      LookupDataSet = qry_LookStuff
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'c_StuffName'
      KeyFields = 'StuffCode'
      LookupCache = True
      Size = 100
      Lookup = True
    end
  end
  object srcRecipts: TDataSource
    DataSet = qryRecipts
    OnStateChange = srcReciptsStateChange
    Left = 520
    Top = 264
  end
  object qryReplaceRate: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'EffectID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      ''
      'SELECT  dbo.PurchaseEffect.*  FROM  dbo.PurchaseEffect'
      'where EffectID=:EffectID')
    Left = 118
    Top = 275
  end
end

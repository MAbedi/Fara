inherited StuffToStoreF: TStuffToStoreF
  Left = 434
  Top = 222
  Caption = #1608#1585#1608#1583' '#1603#1575#1604#1575' '#1576#1607' '#1575#1606#1576#1575#1585'  ('#1582#1585#1610#1583' '#1582#1575#1589')'
  ClientHeight = 613
  ClientWidth = 778
  ExplicitWidth = 794
  ExplicitHeight = 652
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 572
    Width = 778
    TabOrder = 2
    ExplicitTop = 573
    inherited BtnReject: TBitBtn
      TabOrder = 5
    end
    object newPanel: TPanel
      Left = 460
      Top = 1
      Width = 329
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        329
        39)
      object BitBtn3: TBitBtn
        Left = 246
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 169
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        Left = 92
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetDelete1_
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        TabOrder = 2
      end
      object BtnDeficits: TBitBtn
        Left = 9
        Top = 8
        Width = 79
        Height = 25
        Action = actDeficits
        Anchors = [akLeft, akBottom]
        Caption = #1603#1587#1608#1585#1575#1578'/'#1575#1590#1575#1601#1575#1578
        TabOrder = 3
      end
    end
    object okPanel: TPanel
      Left = 283
      Top = 1
      Width = 165
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitLeft = 295
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
        Left = 9
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetCancel1
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1589#1585#1575#1601
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
    object BitBtn6: TBitBtn
      Left = 84
      Top = 9
      Width = 70
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
    end
    object DBNavigator1: TDBNavigator
      Left = 229
      Top = 9
      Width = 108
      Height = 25
      DataSource = srcRecipts
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Flat = True
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      Left = 156
      Top = 9
      Width = 70
      Height = 25
      Action = actPrint
      Caption = #1670#1575#1662
      TabOrder = 3
    end
  end
  inherited Panel2: TPanel
    Width = 778
    Height = 59
    TabOrder = 0
    ExplicitHeight = 59
    inherited ImgTemplate: TImage
      Left = 776
      ExplicitLeft = 776
    end
    inherited lblCaption: TLabel
      Height = 16
    end
    object Label12: TLabel
      Left = 140
      Top = 11
      Width = 30
      Height = 13
      Caption = #1588#1605#1575#1585#1607
      FocusControl = edtReciptNumber
    end
    object Label13: TLabel
      Left = 141
      Top = 34
      Width = 21
      Height = 13
      Caption = #1578#1575#1585#1610#1582
      FocusControl = DBEdit13
    end
    object SBtnReciptNumber: TSpeedButton
      Left = 24
      Top = 7
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = SBtnReciptNumberClick
    end
    object edtReciptNumber: TDBEdit
      Left = 48
      Top = 7
      Width = 86
      Height = 21
      DataField = 'ReciptNumber'
      DataSource = srcRecipts
      TabOrder = 0
    end
    object DBEdit13: TDBEdit
      Left = 48
      Top = 33
      Width = 86
      Height = 21
      DataField = 'ReciptDate'
      DataSource = srcRecipts
      TabOrder = 1
    end
  end
  inherited Panel3: TPanel
    Left = 369
    Top = 59
    Width = 409
    Height = 494
    TabOrder = 1
    ExplicitLeft = 369
    ExplicitTop = 59
    ExplicitWidth = 421
    ExplicitHeight = 495
    object Label8: TLabel
      Left = 325
      Top = 369
      Width = 54
      Height = 13
      Anchors = [akRight, akBottom]
      Caption = #1605#1602#1583#1575#1585' '#1606#1607#1575#1610#1610
      FocusControl = edtInputEntity
      ExplicitLeft = 329
      ExplicitTop = 333
    end
    object Label9: TLabel
      Left = 325
      Top = 393
      Width = 45
      Height = 13
      Anchors = [akRight, akBottom]
      Caption = #1601#1610' '#1606#1607#1575#1610#1610
      FocusControl = edtUnitSellPrice
      ExplicitLeft = 329
      ExplicitTop = 357
    end
    object Label10: TLabel
      Left = 325
      Top = 417
      Width = 36
      Height = 13
      Anchors = [akRight, akBottom]
      Caption = #1605#1576#1604#1594' '#1603#1604
      FocusControl = edtTotalInputPrice
      ExplicitLeft = 329
      ExplicitTop = 381
    end
    object lbl1: TLabel
      Left = 325
      Top = 341
      Width = 69
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1601#1740' '#1608#1575#1581#1583' '#1670#1585#1576#1740
      ExplicitLeft = 329
    end
    object edtInputEntity: TDBEdit
      Left = 205
      Top = 366
      Width = 114
      Height = 21
      Anchors = [akRight, akBottom]
      Color = 14803425
      DataField = 'InputEntity'
      DataSource = srcreciptItems
      ReadOnly = True
      TabOrder = 8
      ExplicitLeft = 209
    end
    object edtUnitSellPrice: TDBEdit
      Left = 204
      Top = 393
      Width = 114
      Height = 21
      Anchors = [akRight, akBottom]
      Color = 14803425
      DataField = 'UnitSellPrice'
      DataSource = srcreciptItems
      ReadOnly = True
      TabOrder = 9
      ExplicitLeft = 208
    end
    object edtTotalInputPrice: TDBEdit
      Left = 204
      Top = 417
      Width = 114
      Height = 21
      Anchors = [akRight, akBottom]
      Color = 14803425
      DataField = 'TotalInputPrice'
      DataSource = srcreciptItems
      ReadOnly = True
      TabOrder = 10
      ExplicitLeft = 208
    end
    object PnlPerson1: TPanel
      Left = 2
      Top = 60
      Width = 409
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitWidth = 417
      DesignSize = (
        405
        30)
      object SpeedButton2: TSpeedButton
        Left = 224
        Top = 2
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        OnClick = SpeedButton2Click
        ExplicitLeft = 232
      end
      object LblPerson1: TLabel
        Left = 319
        Top = 8
        Width = 55
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1603#1583' '#1601#1585#1608#1588#1606#1583#1607
        ExplicitLeft = 327
      end
      object DBEdit14: TDBEdit
        Left = 7
        Top = 4
        Width = 214
        Height = 21
        TabStop = False
        Anchors = [akTop, akRight]
        Color = 14803425
        DataField = '_person1Name'
        DataSource = srcRecipts
        TabOrder = 0
        ExplicitLeft = 15
      end
      object DBEdit2: TDBEdit
        Left = 248
        Top = 4
        Width = 64
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'PersonID1'
        DataSource = srcRecipts
        TabOrder = 1
        OnKeyPress = DBEdit2KeyPress
        ExplicitLeft = 256
      end
    end
    object PnlPerson2: TPanel
      Left = 2
      Top = 119
      Width = 405
      Height = 37
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
      ExplicitWidth = 417
      DesignSize = (
        405
        37)
      object SpeedButton3: TSpeedButton
        Left = 224
        Top = 5
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        OnClick = SpeedButton3Click
        ExplicitLeft = 232
      end
      object LblPerson2: TLabel
        Left = 319
        Top = 10
        Width = 89
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1603#1583#1608#1606#1575#1605' '#1578#1581#1608#1610#1604' '#1711#1610#1585#1606#1583#1607
        FocusControl = DBEdit4
        ExplicitLeft = 327
      end
      object DBEdit15: TDBEdit
        Left = 7
        Top = 7
        Width = 214
        Height = 21
        TabStop = False
        Anchors = [akTop, akRight]
        Color = 14803425
        DataField = '_person2Name'
        DataSource = srcRecipts
        TabOrder = 0
        ExplicitLeft = 15
      end
      object DBEdit4: TDBEdit
        Left = 248
        Top = 6
        Width = 64
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'PersonID2'
        DataSource = srcRecipts
        TabOrder = 1
        OnKeyPress = DBEdit4KeyPress
        ExplicitLeft = 256
      end
    end
    object PnlMachine: TPanel
      Left = 2
      Top = 266
      Width = 405
      Height = 76
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 6
      ExplicitWidth = 417
      DesignSize = (
        405
        76)
      object Label2: TLabel
        Left = 319
        Top = 6
        Width = 68
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1588#1605#1575#1585#1607' '#1605#1575#1588#1610#1606' '
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 327
      end
      object Label4: TLabel
        Left = 158
        Top = 6
        Width = 41
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1606#1575#1605' '#1585#1575#1606#1606#1583#1607
        ExplicitLeft = 166
      end
      object Label15: TLabel
        Left = 319
        Top = 33
        Width = 27
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1608#1586#1606' '#1662#1585
        ExplicitLeft = 327
      end
      object Label18: TLabel
        Left = 158
        Top = 30
        Width = 43
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1608#1586#1606' '#1582#1575#1604#1610
        FocusControl = EdtMachineWeight
        ExplicitLeft = 166
      end
      object Label16: TLabel
        Left = 158
        Top = 55
        Width = 45
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1608#1586#1606' '#1582#1575#1604#1589
        FocusControl = DBEdit9
        ExplicitLeft = 166
      end
      object DBEdit1: TDBEdit
        Left = 232
        Top = 2
        Width = 80
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'MachineNo'
        DataSource = srcreciptItems
        TabOrder = 0
        ExplicitLeft = 240
      end
      object DBEdit3: TDBEdit
        Left = 75
        Top = 2
        Width = 80
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'MachineName'
        DataSource = srcreciptItems
        TabOrder = 1
        ExplicitLeft = 83
      end
      object DBEdit5: TDBEdit
        Left = 232
        Top = 26
        Width = 80
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdRightToLeft
        DataField = 'MachineFullWeight'
        DataSource = srcreciptItems
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 2
        ExplicitLeft = 240
      end
      object EdtMachineWeight: TDBEdit
        Left = 75
        Top = 26
        Width = 80
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'MachineWeight'
        DataSource = srcreciptItems
        TabOrder = 3
        ExplicitLeft = 83
      end
      object DBEdit9: TDBEdit
        Left = 75
        Top = 52
        Width = 80
        Height = 19
        Anchors = [akTop, akRight]
        Color = clGradientInactiveCaption
        Ctl3D = False
        DataField = '__MachineFullWeight_Weight'
        DataSource = srcreciptItems
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 4
        ExplicitLeft = 83
      end
    end
    object Panel5: TPanel
      Left = 2
      Top = 30
      Width = 405
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 417
      DesignSize = (
        405
        30)
      object Label1: TLabel
        Left = 319
        Top = 7
        Width = 55
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1575#1606#1576#1575#1585
        FocusControl = dbedtStoreID
        ExplicitLeft = 327
      end
      object SpeedButton1: TSpeedButton
        Left = 224
        Top = 4
        Width = 23
        Height = 21
        Anchors = [akTop, akRight]
        Caption = '...'
        OnClick = SpeedButton1Click
        ExplicitLeft = 232
      end
      object dbedtStoreID: TDBEdit
        Left = 249
        Top = 5
        Width = 64
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'StoreID'
        DataSource = srcRecipts
        TabOrder = 0
        OnKeyPress = dbedtStoreIDKeyPress
        ExplicitLeft = 257
      end
      object DBEdit17: TDBEdit
        Left = 7
        Top = 5
        Width = 214
        Height = 21
        TabStop = False
        Anchors = [akTop, akRight]
        Color = 14803425
        DataField = '_storeName'
        DataSource = srcRecipts
        TabOrder = 1
        ExplicitLeft = 15
      end
    end
    object Panel6: TPanel
      Left = 2
      Top = 90
      Width = 405
      Height = 29
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      ExplicitWidth = 417
      DesignSize = (
        405
        29)
      object Label3: TLabel
        Left = 319
        Top = 8
        Width = 49
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1601#1610' '#1602#1585#1575#1585#1583#1575#1583
        FocusControl = edtContactRate
        ExplicitLeft = 327
      end
      object edtContactRate: TDBEdit
        Left = 224
        Top = 4
        Width = 88
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'ContactRate'
        DataSource = srcreciptItems
        TabOrder = 0
        ExplicitLeft = 232
      end
    end
    object Panel7: TPanel
      Left = 2
      Top = 156
      Width = 405
      Height = 110
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 5
      ExplicitWidth = 417
      DesignSize = (
        405
        110)
      object SpeedButton4: TSpeedButton
        Left = 224
        Top = 5
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        OnClick = SpeedButton4Click
        ExplicitLeft = 232
      end
      object Label5: TLabel
        Left = 319
        Top = 8
        Width = 53
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1603#1575#1604#1575
        FocusControl = dbedtStuffCode
        ExplicitLeft = 327
      end
      object Label6: TLabel
        Left = 319
        Top = 34
        Width = 25
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1605#1602#1583#1575#1585
        FocusControl = edtRequestedEntity
        ExplicitLeft = 327
      end
      object lblWaterCo: TLabel
        Left = 319
        Top = 60
        Width = 36
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1583#1585#1589#1583#1570#1576
        ExplicitLeft = 327
      end
      object Label14: TLabel
        Left = 319
        Top = 88
        Width = 60
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1588#1610#1601#1578' '#1578#1581#1608#1610#1604
        ExplicitLeft = 327
      end
      object DBEdit16: TDBEdit
        Left = 7
        Top = 6
        Width = 214
        Height = 21
        TabStop = False
        Anchors = [akTop, akRight]
        Color = 14803425
        DataField = '_stuffName'
        DataSource = srcreciptItems
        TabOrder = 0
        ExplicitLeft = 15
      end
      object dbedtStuffCode: TDBEdit
        Left = 248
        Top = 6
        Width = 64
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'StuffCode'
        DataSource = srcreciptItems
        TabOrder = 1
        OnKeyPress = dbedtStuffCodeKeyPress
        ExplicitLeft = 256
      end
      object edtRequestedEntity: TDBEdit
        Left = 224
        Top = 33
        Width = 88
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'RequestedEntity'
        DataSource = srcreciptItems
        TabOrder = 2
        ExplicitLeft = 232
      end
      object ComboShift: TDBComboBox
        Left = 199
        Top = 85
        Width = 114
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'Shift'
        DataSource = srcreciptItems
        Items.Strings = (
          '.'
          '..')
        TabOrder = 4
      end
      object edtWaterCo: TDBEdit
        Left = 225
        Top = 58
        Width = 88
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdRightToLeft
        DataField = 'WaterCo'
        DataSource = srcreciptItems
        ParentBiDiMode = False
        TabOrder = 3
        ExplicitLeft = 233
      end
      object DBEdit6: TDBEdit
        Left = 7
        Top = 83
        Width = 91
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'WaterCo'
        DataSource = srcreciptItems
        TabOrder = 5
        ExplicitLeft = 15
      end
    end
    object GroupBox1: TGroupBox
      Left = 2
      Top = 438
      Width = 405
      Height = 54
      Align = alBottom
      Caption = '  '#1578#1608#1590#1610#1581#1575#1578'  '
      TabOrder = 11
      ExplicitTop = 439
      ExplicitWidth = 417
      object dbmmoItemNote: TDBMemo
        Left = 2
        Top = 15
        Width = 413
        Height = 37
        Align = alClient
        DataField = 'ItemNote'
        DataSource = srcreciptItems
        TabOrder = 0
      end
    end
    object pnlDefaultDate: TPanel
      Left = 2
      Top = 2
      Width = 405
      Height = 28
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 417
      DesignSize = (
        405
        28)
      object Label7: TLabel
        Left = 319
        Top = 5
        Width = 52
        Height = 13
        Margins.Top = 6
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        Caption = #1578#1575#1585#1610#1582' '#1580#1575#1606#1576#1610
        ParentBiDiMode = False
        ExplicitLeft = 327
      end
      object Label11: TLabel
        Left = 104
        Top = 8
        Width = 21
        Height = 13
        Margins.Top = 6
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        Caption = #1605#1583#1578
        ParentBiDiMode = False
        ExplicitLeft = 112
      end
      object dbedtDefaultDate: TDBEdit
        Tag = 14
        Left = 242
        Top = 4
        Width = 70
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'DefaultDate'
        DataSource = srcRecipts
        TabOrder = 0
        ExplicitLeft = 250
      end
      object edtDefaultDuration: TDBEdit
        Left = 7
        Top = 4
        Width = 91
        Height = 21
        Margins.Top = 4
        Margins.Bottom = 4
        Anchors = [akTop, akRight]
        DataField = 'DefaultDuration'
        DataSource = srcRecipts
        MaxLength = 9
        TabOrder = 1
        ExplicitLeft = 15
      end
    end
    object edtUnitSellPrice2: TDBEdit
      Left = 201
      Top = 339
      Width = 114
      Height = 21
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      DataField = 'UnitSellPrice2'
      DataSource = srcreciptItems
      ParentBiDiMode = False
      TabOrder = 7
      ExplicitLeft = 209
    end
  end
  object Panel1: TPanel [3]
    Left = 0
    Top = 59
    Width = 369
    Height = 494
    Align = alLeft
    TabOrder = 3
    ExplicitHeight = 495
    object DBGrid1: TDBGrid
      Tag = 111
      Left = 1
      Top = 1
      Width = 367
      Height = 412
      Align = alClient
      Color = clCream
      DataSource = srcEffect
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Color = 14803425
          Expanded = False
          FieldName = '_EffectName'
          ReadOnly = True
          Width = 123
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
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EffectNote'
          Width = 45
          Visible = True
        end>
    end
    object StatusBar1: TStatusBar
      Left = 1
      Top = 413
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
    object RdGrpReciptState: TDBRadioGroup
      Left = 1
      Top = 432
      Width = 367
      Height = 36
      Align = alBottom
      Caption = #1608#1590#1593#1610#1578' '#1575#1591#1604#1575#1593#1575#1578' '
      Columns = 4
      DataField = 'ReciptState'
      DataSource = srcRecipts
      Enabled = False
      Items.Strings = (
        #1605#1608#1602#1578
        #1602#1591#1593#1610
        #1583#1575#1574#1605
        #1576#1575#1591#1604#1607)
      ReadOnly = True
      TabOrder = 2
      Values.Strings = (
        '0'
        '1'
        '2'
        '3')
    end
    object Panel4: TPanel
      Left = 1
      Top = 468
      Width = 367
      Height = 26
      Align = alBottom
      TabOrder = 3
      DesignSize = (
        367
        26)
      object btnAdd: TSpeedButton
        Left = 10
        Top = 1
        Width = 31
        Height = 22
        Action = actAdd
        Anchors = [akLeft, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton6: TSpeedButton
        Left = 44
        Top = 1
        Width = 31
        Height = 22
        Action = DataSetDelete1
        Anchors = [akLeft, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object StatusBar2: TStatusBar [4]
    Left = 0
    Top = 553
    Width = 778
    Height = 19
    BiDiMode = bdRightToLeft
    BorderWidth = 1
    Panels = <
      item
        Width = 100
      end
      item
        Width = 100
      end
      item
        Width = 100
      end
      item
        Width = 100
      end
      item
        Width = 100
      end>
    ParentBiDiMode = False
    ExplicitTop = 554
    ExplicitWidth = 790
  end
  inherited ActionList: TActionList
    Left = 422
    Top = 11
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
    object actPrint: TAction [5]
      Caption = #1670#1575#1662
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcRecipts
    end
    inherited actExit: TAction [8]
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
      DataSource = srcEffect
    end
    object actAdd: TAction
      Category = 'Dataset'
      Caption = #1575#1590#1575#1601#1607
      OnExecute = actAddExecute
    end
    object actDeficits: TAction
      Caption = #1603#1587#1608#1585#1575#1578'/'#1575#1590#1575#1601#1575#1578
      OnExecute = actDeficitsExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 510
    Top = 15
    Bitmap = {
      494C010107000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006BAD840021842900218429006BAD8400000000000000
      00000000000000000000000000000000000000000000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      00000000000000000000000000000000000000000000CE630000FFFFFF00FFFF
      F700948C8C00948C8C00948C8C00948C8C00FFD6AD00FFD6AD00FFD6AD00FFD6
      AD00FFD6AD00FFD6AD00FFD6AD00CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      00000000000000000000000000000000000000000000CE630000FFFFFF00FFFF
      FF00313129006B7394001029A50021213900FFE7C600FFDEB500FFD6AD00FFD6
      AD00FFD6AD00FFD6AD00FFD6AD00CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      00000000000000000000000000000000000000000000CE630000FFFFFF00FFFF
      FF0031313900637BE700FFFFF70010219C00FFEFD600FFE7C600FFDEB500FFD6
      AD00FFD6AD00FFD6AD00FFD6AD00CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      00000000000000000000000000000000000000000000CE630000FFFFFF00FFFF
      FF0042424200524A4A005A524A00182994006373D600FFEFD600FFE7C600FFDE
      B500FFD6AD00FFD6AD00FFD6AD00CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006BAD8400218429002184
      290021842900218429002184290094DE8C0039B5520021842900218429002184
      290021842900218429006BAD84000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00637BE700425AE700FFEFD600FFE7
      C600FFDEB500FFD6AD00FFD6AD00CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A5630039B5520039B5
      520039B5520039B5520039B5520039B5520039B5520039B5520039B5520039B5
      520039B5520039B55200218429000000000000000000CE630000FFFFFF00FFFF
      FF00948C8C00948C8C00948C8C00948C8C00FFFFFF00FFFFFF00FFF7E700FFEF
      D600FFE7C600FFDEB500FFD6AD00CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A5630094DE8C0094DE
      8C0094DE8C0094DE8C0094DE8C0094DE8C0039B5520094DE8C0094DE8C0094DE
      8C0094DE8C0094DE8C00218429000000000000000000CE630000FFFFFF00FFFF
      FF00313129006B7394001029A50021213900FFFFFF00FFFFFF00FFFFF700FFF7
      E700FFEFD600FFE7C600FFDEB500CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006BAD840063A5630063A5
      630063A5630063A5630063A5630094DE8C0039B5520021842900218429002184
      290021842900218429006BAD84000000000000000000CE630000FFFFFF00FFFF
      FF0031313900637BE700FFFFFF0010219C00FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFF7E700FFEFD600FFE7C600CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      00000000000000000000000000000000000000000000CE630000FFFFFF00FFFF
      FF0042424200524A4A005A524A00182994006373D600FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7E700FFEFD600CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      00000000000000000000000000000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00637BE700425AE700FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFF7E700CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      00000000000000000000000000000000000000000000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006BAD840063A5630063A563006BAD8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031000000420000005200000052000000420000003100000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000052A54A00009408006BB563000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000042
      000000420000007B0800009C0800009C0800009C0800009C0800007B0800004A
      0000004A00000000000000000000000000000000000000000000000000000000
      00000000000018B5290000BD2100009400008CBD7B0000000000000000000000
      0000000000000000000000000000000000000000000029ADD60031B5DE0021AD
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000004A08000063
      080000A5100000A50800009C0800009C0800009C0800009C080000A5080000A5
      0800006B08000031000000000000000000000000000000000000000000000000
      00006BB5630000BD210000C6290000A50000319C310000000000000000000000
      0000000000000000000000000000000000000000000029ADD6009CDEEF0084EF
      FF004AC6E70021ADD60018A5C60018A5C60018A5C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000004A0800006B100008A5
      210008A51800009C0800009C0800009C0800009C0800009C0800009C0800009C
      080000A50800006B0800004A0000000000000000000000000000000000000000
      0000009C100000CE310000C6290000AD100000940000A5C69400000000000000
      0000000000000000000000000000000000000000000029ADD60052BDE7009CFF
      FF0094FFFF0073DEF70073DEF70073DEF70073DEF7004AC6E70021ADD60018A5
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000004A080010AD310008AD
      290008A5180000A510004AC65200E7F7EF00D6F7DE0010AD2100009C0800009C
      0800009C080000A50800004A00000000000000000000000000000000000052A5
      4A0000CE310000C6290000FF630000CE3100009C0000008C0000000000000000
      0000000000000000000000000000000000000000000029ADD60052BDE700ADFF
      FF008CF7FF008CEFFF008CEFFF008CEFFF0073DEF70073DEF70073DEF7004AC6
      EF0021ADD6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000005200000884210010B5420010A5
      3100089C180042BD4A00F7FFF700FFFFFF0084D68C0000A51000009C0800009C
      0800009C080000A50800007B08000042000000000000000000000000000018B5
      290029CE5A0000FF630000FF630000BD210000C62900009400008CBD7B000000
      0000000000000000000000000000000000000000000029ADD60029ADD600ADDE
      EF0094F7FF0094F7FF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DE
      F7004AC6EF00000000000000000000000000000000006B84C6000021A5000021
      A5000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
      A5000021A5000021A5006B84C600000000000052000010A5420018B54A0010AD
      310042BD4A00F7FFF700FFFFFF0073D67B00009C0800009C0800009C0800009C
      0800009C080000A50800009408000042000000000000000000000000000018C6
      420000FF630000FF630052A54A0052A54A0000C6290000A50000319C31000000
      0000000000000000000000000000000000000000000029ADD60073DEF70029AD
      D6009CFFFF008CF7FF008CF7FF008CF7FF008CEFFF008CEFFF008CEFFF0073DE
      F70073DEF70018A5C6000000000000000000000000000021A5009494F7000029
      E7000029E7000029E7000029E7000029E7000029E7000029E7000029E7000029
      E7000029E7000029E7000021A50000000000006B100021B5520021B5520073D6
      9400EFFFEF00FFFFFF00F7FFF700B5EFC600B5E7BD00ADE7B500ADE7B500ADE7
      B500ADE7B500009C0800009C0800004A00000000000000000000000000000000
      000000AD210000AD2100000000000000000000AD180000C6290000940000A5C6
      9400000000000000000000000000000000000000000029ADD60094F7FF0029AD
      D600ADDEEF00A5EFF700A5EFF700A5F7FF008CEFFF008CEFFF008CEFFF0073DE
      F7000073080018A5C6000000000000000000000000000021A500B5C6FF009CBD
      FF009CBDFF009CB5FF009CB5FF009CB5FF00638CF700638CF700638CF700638C
      F700526BF700526BF7000021A500000000000873100039BD6B0029BD5A00BDEF
      CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00009C0800009C0800005200000000000000000000000000000000
      00000000000000000000000000000000000031B5420000C62900009C0000008C
      0000000000000000000000000000000000000000000029ADD6009CFFFF0073DE
      F70029ADD60018A5C60018A5C60018A5C600ADDEEF008CF7FF0084EFFF000073
      08005AE78C000073080018A5C60000000000000000006B84C6000021A5000021
      A5000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
      A5000021A5000021A5006B84C600000000000873100052C67B0042C6730029BD
      5A00A5E7BD00FFFFFF00F7FFF70084DEA50042BD5A0042BD5A0042BD5A0042BD
      5A0042BD5A0008A51800009C0800004200000000000000000000000000000000
      0000000000000000000000000000000000000000000000B5210000C629000094
      00008CBD7B000000000000000000000000000000000029ADD6009CFFFF0094F7
      FF0073DEF70073DEF70073DEF7006BDEF70029ADD600ADDEEF000073080052D6
      7B0042D66B0031C64A0000730800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000087310004ABD6B0084DEA50021B5
      520021B5520094DEB500FFFFFF00E7F7EF0052C6730010AD310010AD310010AD
      310008A5290008A51800008C0800004200000000000000000000000000000000
      0000000000000000000000000000000000000000000052A54A0000C6290029AD
      390031B542000000000000000000000000000000000029ADD6009CFFFF0094F7
      FF0094F7FF0094F7FF0094F7FF0073DEF70073DEF70029ADD60018A5C600108C
      210031C64A00109C210018A5C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021A53100ADE7C6006BCE
      8C0010AD4A0018B54A008CDEAD00FFFFFF00F7FFF70029BD520010A5310008A5
      290008A5210008AD1800006B0800000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000029AD4A005AE7
      A50029AD39008CBD7B0000000000000000000000000029ADD600C6FFFF0094FF
      FF009CFFFF00D6FFFF00D6FFFF008CEFFF0094EFFF0073DEF70073DEF7000884
      100018AD29000884100000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021A5310052C67300BDEF
      D60063CE8C0021B5520018B5520094DEB500ADE7C60021B5520010AD390010AD
      310010AD3100109C2100006B0800000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000031B5420000D6
      42008CBD7B000000000000000000000000000000000021ADD6009CDEEF00C6FF
      FF00C6FFFF009CDEEF0018ADD60018A5C60018A5C60018A5C60018A5C600088C
      100008A518000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000109C21006BCE
      8C00D6F7E7009CE7B50052C67B0039BD630029BD5A0031BD630031BD630021BD
      4A0010A531000063080000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5C6
      940000000000000000000000000000000000000000000000000031B5DE0029AD
      D60018A5C60018A5C60000000000000000000000000000000000088C100008A5
      1800088410000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004ABD
      63004ABD630094DEB500BDEFD600A5E7C6008CDEAD007BDE9C004AC67B00189C
      3900189C39000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000730800087B0800088C1000088C1000087B
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000021A5310039B5520042BD630042BD630029A54A00108C29000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000FC3F8000FFFF0000
      FC3F8000EFFD0000FC3F8000C7FF0000FC3F8000C3FB0000FC3F8000E3F70000
      80018000F1E7000080018000F8CF000080018000FC1F000080018000FE3F0000
      FC3F8000FC1F0000FC3F8000F8CF0000FC3F8000E1E70000FC3FC001C3F30000
      FC3FFFFFC7FD0000FFFFFFFFFFFF0000FFFFF81FF8FFFFFFFFFFE007F87F8FFF
      FFFFC003F07F807FFFFF8001F03F800FFFFF8001E03F8007FFFF0000E01F8007
      80010000E01F800380010000F30F800380010000FF0F800180010000FF878001
      FFFF0000FF878001FFFF8001FFC38003FFFF8001FFC78007FFFFC003FFEFC3C7
      FFFFE007FFFFFE0FFFFFF81FFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object srcreciptItems: TDataSource
    DataSet = qryReciptItems
    Left = 108
    Top = 239
  end
  object qry_LookPurchaseEffect: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'StuffCode'
        Attributes = [paSigned, paNullable]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT  *  FROM  PurchaseEffect'
      'WHERE StuffCode = :StuffCode')
    Left = 272
    Top = 221
  end
  object qry_LookStore: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT     n_StoreID, c_StoreName'
      'FROM         Stores')
    Left = 186
    Top = 181
  end
  object qry_LookStuff: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT     c_StuffCode, GroupID, c_StuffName'
      'FROM         dbo.StuffCoding')
    Left = 310
    Top = 173
  end
  object qryEffect: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = qryEffectAfterOpen
    BeforeEdit = qryEffectBeforeEdit
    BeforePost = qryEffectBeforePost
    AfterPost = qryEffectAfterPost
    AfterScroll = qryEffectAfterScroll
    Parameters = <
      item
        Name = 'ReciptItemID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 55579
      end
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
      'SELECT     *'
      'FROM        ReciptPurchaseEffect '
      'WHERE   ( ReciptItemID = :ReciptItemID ) AND'
      '              ( ReciptID=:ReciptID )'
      ' AND '
      '              ( YearID = :YearID ) AND '
      '              ( ServerID = :ServerID )')
    Left = 29
    Top = 241
    object qryEffectPurchaseID: TIntegerField
      FieldName = 'PurchaseID'
    end
    object qryEffectEffectID: TIntegerField
      FieldName = 'EffectID'
    end
    object qryEffectAmount: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'Amount'
      Required = True
      OnChange = qryEffectAmountChange
    end
    object qryEffectReciptItemID: TIntegerField
      FieldName = 'ReciptItemID'
    end
    object qryEffectReplaceRate: TBCDField
      DisplayLabel = #1578#1594#1610#1610#1585' '#1601#1610
      FieldName = 'ReplaceRate'
      Precision = 19
    end
    object qryEffectServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryEffectYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryEffectReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryEffectEffectNote: TStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'EffectNote'
    end
    object qryEffect_EffectName: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldKind = fkLookup
      FieldName = '_EffectName'
      LookupDataSet = qry_LookPurchaseEffect
      LookupKeyFields = 'EffectID'
      LookupResultField = 'EffectName'
      KeyFields = 'EffectID'
      Size = 100
      Lookup = True
    end
    object qryEffect_CoefficientMin: TFloatField
      FieldKind = fkLookup
      FieldName = '_CoefficientMin'
      LookupDataSet = qry_LookPurchaseEffect
      LookupKeyFields = 'EffectID'
      LookupResultField = 'CoefficientMin'
      KeyFields = 'EffectID'
      Lookup = True
    end
    object qryEffect_CoefficientMax: TFloatField
      FieldKind = fkLookup
      FieldName = '_CoefficientMax'
      LookupDataSet = qry_LookPurchaseEffect
      LookupKeyFields = 'EffectID'
      LookupResultField = 'CoefficientMax'
      KeyFields = 'EffectID'
      Lookup = True
    end
  end
  object srcEffect: TDataSource
    DataSet = qryEffect
    Left = 186
    Top = 239
  end
  object qryRecipts: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    BeforeInsert = qryReciptsBeforeInsert
    AfterInsert = qryReciptsAfterInsert
    BeforeEdit = qryReciptsBeforeEdit
    AfterEdit = qryReciptsAfterEdit
    BeforePost = qryReciptsBeforePost
    AfterPost = qryReciptsAfterPost
    AfterCancel = qryReciptsAfterCancel
    BeforeDelete = qryReciptsBeforeDelete
    AfterDelete = qryReciptsAfterDelete
    AfterScroll = qryReciptsAfterScroll
    Parameters = <
      item
        Name = 'ReciptType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'YearID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT  *'
      'FROM    Recipts'
      'where ReciptType= :ReciptType'
      'and ( YearID = :YearID )'
      ''
      '')
    Left = 264
    Top = 121
    object qryRecipts_CustomersDiscount: TFloatField
      FieldKind = fkLookup
      FieldName = '_CustomersDiscount'
      LookupDataSet = qryCustomers1
      LookupKeyFields = 'CustID'
      LookupResultField = 'Discount'
      KeyFields = 'PersonID1'
      Lookup = True
    end
    object qryRecipts_CustomersDiscountNote: TStringField
      FieldKind = fkLookup
      FieldName = '_CustomersDiscountNote'
      LookupDataSet = qryCustomers1
      LookupKeyFields = 'CustID'
      LookupResultField = 'DiscountNote'
      KeyFields = 'PersonID1'
      Size = 150
      Lookup = True
    end
    object qryRecipts_CustomersDayTime: TIntegerField
      FieldKind = fkLookup
      FieldName = '_CustomersDayTime'
      LookupDataSet = qryCustomers1
      LookupKeyFields = 'CustID'
      LookupResultField = 'DayTime'
      KeyFields = 'PersonID1'
      Lookup = True
    end
    object qryRecipts_HasDeficit: TIntegerField
      FieldKind = fkLookup
      FieldName = '_HasDeficit'
      LookupDataSet = qryStores
      LookupKeyFields = 'n_StoreID'
      LookupResultField = 'HasDeficit'
      KeyFields = 'StoreID'
      Lookup = True
    end
    object qryReciptsReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryReciptsStoreID: TSmallintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1575#1606#1576#1575#1585
      FieldName = 'StoreID'
      Required = True
      OnChange = qryReciptsStoreIDChange
    end
    object qryReciptsReciptNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607
      FieldName = 'ReciptNumber'
      Required = True
    end
    object qryReciptsReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'ReciptDate'
      Required = True
      EditMask = '!9999/99/00;1;_'
      FixedChar = True
      Size = 10
    end
    object qryReciptsPersonID1: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1601#1585#1608#1588#1606#1583#1607
      FieldName = 'PersonID1'
      Required = True
      OnChange = qryReciptsPersonID1Change
    end
    object qryReciptsPersonID2: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1578#1581#1608#1610#1604' '#1711#1610#1585#1606#1583#1607
      FieldName = 'PersonID2'
      Required = True
    end
    object qryReciptsOperatorID: TIntegerField
      FieldName = 'OperatorID'
    end
    object qryReciptsModifyDate: TDateTimeField
      FieldName = 'ModifyDate'
    end
    object qryReciptsReciptType: TWordField
      FieldName = 'ReciptType'
    end
    object qryReciptsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryReciptsServerID: TIntegerField
      FieldName = 'ServerID'
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
      LookupDataSet = qryCustomers1
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
      LookupDataSet = qryCustomers2
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'PersonID2'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryRecipts_ContactRate: TCurrencyField
      FieldKind = fkLookup
      FieldName = '_ContactRate'
      LookupDataSet = qryCustomers1
      LookupKeyFields = 'CustID'
      LookupResultField = 'ContactRate'
      KeyFields = 'PersonID1'
      LookupCache = True
      Lookup = True
    end
    object qryReciptsReciptState: TWordField
      FieldName = 'ReciptState'
    end
    object qryReciptsUseOtherID: TWideStringField
      FieldName = 'UseOtherID'
      Size = 15
    end
    object qryRecipts_InsertAutoEffectID: TIntegerField
      FieldKind = fkLookup
      FieldName = '_InsertAutoEffectID'
      LookupDataSet = qryCustomers1
      LookupKeyFields = 'CustID'
      LookupResultField = 'InsertAutoEffectID'
      KeyFields = 'PersonID1'
      Lookup = True
    end
    object qryRecipts_EffectID: TIntegerField
      FieldKind = fkLookup
      FieldName = '_EffectID'
      LookupDataSet = qryCustomers1
      LookupKeyFields = 'CustID'
      LookupResultField = 'EffectID'
      KeyFields = 'PersonID1'
      Lookup = True
    end
    object qryRecipts_Discount: TFloatField
      FieldKind = fkLookup
      FieldName = '_Discount'
      LookupDataSet = qryCustomers1
      LookupKeyFields = 'CustID'
      LookupResultField = 'Discount'
      KeyFields = 'PersonID1'
      Lookup = True
    end
    object qryReciptsFirstUser: TStringField
      FieldName = 'FirstUser'
      Size = 50
    end
    object qryReciptsLastUser: TStringField
      FieldName = 'LastUser'
      Size = 50
    end
    object qryReciptsAidDate: TStringField
      FieldName = 'AidDate'
      FixedChar = True
      Size = 10
    end
    object qryRecipts_PurchasePercent: TFloatField
      FieldKind = fkLookup
      FieldName = '_PurchasePercent'
      LookupDataSet = qryCustomers1
      LookupKeyFields = 'CustID'
      LookupResultField = 'PurchasePercent'
      KeyFields = 'PersonID1'
      Lookup = True
    end
    object qryReciptsDocNo: TIntegerField
      FieldName = 'DocNo'
    end
    object qryReciptsDefaultDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1580#1575#1606#1576#1610
      FieldName = 'DefaultDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryReciptsDefaultDuration: TSmallintField
      FieldName = 'DefaultDuration'
      OnChange = qryReciptsDefaultDurationChange
    end
  end
  object qryReciptItems: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterInsert = qryReciptItemsAfterInsert
    BeforeEdit = qryReciptItemsBeforeEdit
    AfterEdit = qryReciptItemsAfterEdit
    BeforePost = qryReciptItemsBeforePost
    AfterScroll = qryReciptItemsAfterScroll
    OnCalcFields = qryReciptItemsCalcFields
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
      'SELECT *'
      #13'FROM    ReciptItems '
      #13'where ReciptID=:ReciptID'#10
      'and ( YearID = :YearID )'
      'and ( ServerID = :ServerID )'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 187
    Top = 99
    object qryReciptItemsReciptItemID: TIntegerField
      FieldName = 'ReciptItemID'
    end
    object qryReciptItemsReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryReciptItemsStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'StuffCode'
      OnChange = qryReciptItemsStuffCodeChange
    end
    object qryReciptItemsRequestedEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'RequestedEntity'
      Required = True
      OnChange = qryReciptItemsRequestedEntityChange
    end
    object qryReciptItemsControlCode: TLargeintField
      FieldName = 'ControlCode'
    end
    object qryReciptItemsTotalInputPrice: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1603#1604
      FieldName = 'TotalInputPrice'
      currency = True
      Precision = 19
    end
    object qryReciptItemsTotalOutputPrice: TBCDField
      FieldName = 'TotalOutputPrice'
      Precision = 19
    end
    object qryReciptItemsUnitSellPrice: TFMTBCDField
      DisplayLabel = #1601#1610' '#1606#1607#1575#1610#1610
      FieldName = 'UnitSellPrice'
      OnChange = qryReciptItemsUnitSellPriceChange
      Precision = 19
    end
    object qryReciptItemsTotallSellPrice: TBCDField
      FieldName = 'TotallSellPrice'
      Precision = 19
    end
    object qryReciptItemsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryReciptItemsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryReciptItemsItemNote: TStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'ItemNote'
      Size = 100
    end
    object qryReciptItemsUseUnitID: TIntegerField
      FieldName = 'UseUnitID'
    end
    object qryReciptItemsPersonID1: TIntegerField
      FieldName = 'PersonID1'
    end
    object qryReciptItemsWaterCo: TFloatField
      Tag = 3
      DisplayLabel = #1583#1585#1589#1583#1570#1576
      FieldName = 'WaterCo'
      Required = True
      OnChange = qryReciptItemsWaterCoChange
    end
    object qryReciptItems_stuffName: TStringField
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
    object qryReciptItemsInputEntity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1606#1607#1575#1610#1610
      FieldName = 'InputEntity'
      OnChange = qryReciptItemsInputEntityChange
    end
    object qryReciptItemsContactRate: TBCDField
      Tag = 3
      DisplayLabel = #1601#1610' '#1602#1585#1575#1585#1583#1575#1583
      FieldName = 'ContactRate'
      Required = True
      currency = True
      Precision = 19
    end
    object qryReciptItemsShift: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1610#1601#1578' '#1578#1581#1608#1610#1604
      FieldName = 'Shift'
      Required = True
      OnGetText = qryReciptItemsShiftGetText
      OnSetText = qryReciptItemsShiftSetText
    end
    object qryReciptItemsInputWeight: TFloatField
      FieldName = 'InputWeight'
    end
    object qryReciptItemsFirstUser: TStringField
      FieldName = 'FirstUser'
      Size = 50
    end
    object qryReciptItemsLastUser: TStringField
      FieldName = 'LastUser'
      Size = 50
    end
    object qryReciptItemsAidDate: TStringField
      FieldName = 'AidDate'
      FixedChar = True
      Size = 10
    end
    object qryReciptItemsMachineWeight: TFloatField
      FieldName = 'MachineWeight'
    end
    object qryReciptItemsMachineNo: TStringField
      FieldName = 'MachineNo'
      Size = 25
    end
    object qryReciptItemsMachineName: TStringField
      FieldName = 'MachineName'
      Size = 50
    end
    object qryReciptItemsMachineFullWeight: TFloatField
      FieldName = 'MachineFullWeight'
    end
    object qryReciptItems__MachineFullWeight_Weight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1582#1575#1604#1589
      FieldKind = fkCalculated
      FieldName = '__MachineFullWeight_Weight'
      Calculated = True
    end
    object qryReciptItemsOutputEntity: TFloatField
      FieldName = 'OutputEntity'
      OnChange = qryReciptItemsOutputEntityChange
    end
    object qryReciptItemsOutputWeight: TFloatField
      FieldName = 'OutputWeight'
    end
    object qryReciptItemsUnitSellPrice2: TBCDField
      DisplayLabel = #1601#1740' '#1608#1575#1581#1583' '#1670#1585#1576#1740
      FieldName = 'UnitSellPrice2'
      Precision = 19
    end
  end
  object srcRecipts: TDataSource
    DataSet = qryRecipts
    OnStateChange = srcReciptsStateChange
    Left = 264
    Top = 279
  end
  object qryReplaceRate: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'EffectID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'StuffCode'
        Attributes = [paSigned, paNullable]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT  *  FROM  PurchaseEffect'
      'where EffectID=:EffectID'
      'AND StuffCode = :StuffCode')
    Left = 109
    Top = 123
    object qryReplaceRateEffectID: TIntegerField
      FieldName = 'EffectID'
    end
    object qryReplaceRateEffectName: TStringField
      FieldName = 'EffectName'
      Size = 50
    end
    object qryReplaceRateCoefficient: TFloatField
      FieldName = 'Coefficient'
    end
    object qryReplaceRateAmountRate: TFloatField
      FieldName = 'AmountRate'
    end
    object qryReplaceRateCoefficientMin: TFloatField
      FieldName = 'CoefficientMin'
    end
    object qryReplaceRateCoefficientMax: TFloatField
      FieldName = 'CoefficientMax'
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = TPipeRecipts
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
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
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
    Left = 122
    Top = 360
    Version = '22.02'
    mmColumnWidth = 0
    DataPipelineName = 'TPipeRecipts'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object plblPrintPayablePrice: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'plblPrintPayablePrice'
        OnGetText = plblPrintPayablePriceGetText
        Border.mmPadding = 0
        Caption = 'plblPrintPayablePrice'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 10319
        mmTop = 4233
        mmWidth = 43656
        BandType = 4
        LayerName = Foreground
      end
      object plblPrintnum2alphabetPayebel: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'plblPrintnum2alphabetPayebel'
        OnGetText = plblPrintnum2alphabetPayebelGetText
        Border.mmPadding = 0
        Caption = 'plblPrintnum2alphabetPayebel'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 61648
        mmTop = 2646
        mmWidth = 61913
        BandType = 4
        LayerName = Foreground
      end
      object plblShift: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'plblShift'
        OnGetText = plblShiftGetText
        Border.mmPadding = 0
        Caption = 'plblShift'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6477
        mmLeft = 144992
        mmTop = 4763
        mmWidth = 13504
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
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
  object TPipeRecipts: TppDBPipeline
    DataSource = srcRecipts
    UserName = 'TPipeRecipts'
    Left = 42
    Top = 302
    object TPipeReciptsppField1: TppField
      FieldAlias = '_CustomersDiscount'
      FieldName = '_CustomersDiscount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object TPipeReciptsppField2: TppField
      FieldAlias = '_CustomersDiscountNote'
      FieldName = '_CustomersDiscountNote'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object TPipeReciptsppField3: TppField
      FieldAlias = '_CustomersDayTime'
      FieldName = '_CustomersDayTime'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object TPipeReciptsppField4: TppField
      FieldAlias = '_HasDeficit'
      FieldName = '_HasDeficit'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object TPipeReciptsppField5: TppField
      FieldAlias = 'ReciptID'
      FieldName = 'ReciptID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object TPipeReciptsppField6: TppField
      FieldAlias = 'StoreID'
      FieldName = 'StoreID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object TPipeReciptsppField7: TppField
      FieldAlias = 'ReciptNumber'
      FieldName = 'ReciptNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object TPipeReciptsppField8: TppField
      FieldAlias = 'ReciptDate'
      FieldName = 'ReciptDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object TPipeReciptsppField9: TppField
      FieldAlias = 'PersonID1'
      FieldName = 'PersonID1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object TPipeReciptsppField10: TppField
      FieldAlias = 'PersonID2'
      FieldName = 'PersonID2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object TPipeReciptsppField11: TppField
      FieldAlias = 'OperatorID'
      FieldName = 'OperatorID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object TPipeReciptsppField12: TppField
      FieldAlias = 'ModifyDate'
      FieldName = 'ModifyDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object TPipeReciptsppField13: TppField
      FieldAlias = 'ReciptType'
      FieldName = 'ReciptType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object TPipeReciptsppField14: TppField
      FieldAlias = 'YearID'
      FieldName = 'YearID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object TPipeReciptsppField15: TppField
      FieldAlias = 'ServerID'
      FieldName = 'ServerID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object TPipeReciptsppField16: TppField
      FieldAlias = 'UseUnitID'
      FieldName = 'UseUnitID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object TPipeReciptsppField17: TppField
      FieldAlias = '_storeName'
      FieldName = '_storeName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object TPipeReciptsppField18: TppField
      FieldAlias = '_person1Name'
      FieldName = '_person1Name'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object TPipeReciptsppField19: TppField
      FieldAlias = '_person2Name'
      FieldName = '_person2Name'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object TPipeReciptsppField20: TppField
      FieldAlias = '_ContactRate'
      FieldName = '_ContactRate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object TPipeReciptsppField21: TppField
      FieldAlias = 'ReciptState'
      FieldName = 'ReciptState'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object TPipeReciptsppField22: TppField
      FieldAlias = 'UseOtherID'
      FieldName = 'UseOtherID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object TPipeReciptsppField23: TppField
      FieldAlias = '_InsertAutoEffectID'
      FieldName = '_InsertAutoEffectID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object TPipeReciptsppField24: TppField
      FieldAlias = '_EffectID'
      FieldName = '_EffectID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object TPipeReciptsppField25: TppField
      FieldAlias = '_Discount'
      FieldName = '_Discount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object TPipeReciptsppField26: TppField
      FieldAlias = 'FirstUser'
      FieldName = 'FirstUser'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object TPipeReciptsppField27: TppField
      FieldAlias = 'LastUser'
      FieldName = 'LastUser'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object TPipeReciptsppField28: TppField
      FieldAlias = 'AidDate'
      FieldName = 'AidDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object TPipeReciptsppField29: TppField
      FieldAlias = '_PurchasePercent'
      FieldName = '_PurchasePercent'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object TPipeReciptsppField30: TppField
      FieldAlias = 'DocNo'
      FieldName = 'DocNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
  end
  object qryCustomers1: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Customers.CustID, Customers.CustName, isnull(AddressInMas' +
        'ir.MasirText,'#39#39') + '#39' '#39' + Customers.Address AS Address , Customer' +
        's.Tel,'
      
        '       Customers.PostalCode, Customers.EconomicNumber, Customers' +
        '.Fax,Customers.DayTime,'
      '       Customers.ValuationType, Customers.Discount ,'
      
        '        Customers.DiscountNote + '#39' '#1583#1585#1589#1583': '#39' + LTRIM(STR(Customers' +
        '.Discount))  AS DiscountNote  ,Customers.NationalID ,'
      
        '        Customers.InfoWeight ,Customers.SellsDefaultState  ,Cust' +
        'omers.MasirID ,Customers.PersonID1'
      ''
      ', dbo.Customers.CustomerGrpID,'
      
        '            dbo.Customers.ContactRate, Customers.InsertAutoEffec' +
        'tID, Customers.EffectID,Discount , PurchasePercent'
      'FROM         Customers INNER JOIN'
      
        '                      CustomersGroup ON Customers.CustomerGrpID ' +
        '= CustomersGroup.CustomerGrpID LEFT OUTER JOIN'
      
        '                    AddressInMasir ON Customers.MasirID = Addres' +
        'sInMasir.MasirID '
      ''
      '')
    Left = 109
    Top = 181
  end
  object qryCustomers2: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     Customers.CustID, Customers.CustName, Customers.Custo' +
        'merGrpID,'
      '            Customers.ContactRate, Customers.Discount'
      'FROM         Customers INNER JOIN'
      
        '                      CustomersGroup ON Customers.CustomerGrpID ' +
        '= CustomersGroup.CustomerGrpID')
    Left = 30
    Top = 181
  end
  object qryinit: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'ReciptType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT  * FROM    ReciptTypes'
      #13'where ReciptType=:ReciptType'
      '')
    Left = 326
    Top = 115
  end
  object TPipeEffect: TppDBPipeline
    DataSource = srcEffect
    UserName = 'TPipeEffect'
    Left = 213
    Top = 333
    MasterDataPipelineName = 'TPipeReciptItems'
  end
  object TPipeEffectCTab: TppDBPipeline
    DataSource = dsEffectCTab
    UserName = 'TPipeEffectCTab'
    Left = 309
    Top = 323
    MasterDataPipelineName = 'TPipeReciptItems'
  end
  object qryEffectCTab: TADOQuery
    Connection = DmF.adcBSell
    Parameters = <>
    Left = 412
    Top = 376
  end
  object dsEffectCTab: TDataSource
    DataSet = qryEffectCTab
    Left = 751
    Top = 191
  end
  object TPipeReciptItems: TppDBPipeline
    DataSource = srcreciptItems
    UserName = 'TPipeEffectCTab1'
    Left = 139
    Top = 299
    MasterDataPipelineName = 'TPipeRecipts'
  end
  object qry_Deficits4Print: TADOQuery
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
      
        'SELECT     dbo.Deficits.DeficitName, dbo.ReciptsDeficits.Deficit' +
        'Add - dbo.ReciptsDeficits.DeficitDec AS Deficit_Add_Dec'
      'FROM         dbo.Deficits INNER JOIN'
      
        '                      dbo.ReciptsDeficits ON dbo.Deficits.Defici' +
        'tID = dbo.ReciptsDeficits.DeficitID'
      'WHERE     (dbo.ReciptsDeficits.ReciptID = :ReciptID )'
      'and ( YearID = :YearID )'
      'and ( ServerID = :ServerID )')
    Left = 462
    Top = 225
  end
  object srcDeficits4Print: TDataSource
    DataSet = qry_Deficits4Print
    Left = 484
    Top = 113
  end
  object ppDBPipeline3: TppDBPipeline
    DataSource = srcDeficits4Print
    OpenDataSource = False
    UserName = 'DBPipeline3'
    Left = 555
    Top = 220
    MasterDataPipelineName = 'TPipeRecipts'
    object ppDBPipeline3ppField1: TppField
      FieldAlias = 'DeficitName'
      FieldName = 'DeficitName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField2: TppField
      FieldAlias = 'Deficit_Add_Dec'
      FieldName = 'Deficit_Add_Dec'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
  end
  object qryStores: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'UserID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'UserIDAdmin'
        Size = -1
        Value = Null
      end
      item
        Name = 'StoreKindList'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     Stores.n_StoreID, Stores.c_StoreName, Stores.n_Valuat' +
        'ionType ,'
      
        '           Stores.StoreKind, Stores.HasDeficit, UsersStore.Store' +
        'Type'
      'FROM         Stores INNER JOIN'
      
        '                      UsersStore ON Stores.n_StoreID = UsersStor' +
        'e.n_StoreID'
      
        'WHERE     (UsersStore.n_UserID = :UserID) OR (127 = :UserIDAdmin' +
        ')'
      #13'AND (Stores.n_StoreID > 0)'
      ' :StoreKindList'
      
        'GROUP BY Stores.n_StoreID, Stores.c_StoreName, Stores.n_Valuatio' +
        'nType ,'
      
        '           Stores.StoreKind, Stores.HasDeficit, UsersStore.Store' +
        'Type')
    Left = 394
    Top = 218
  end
  object PopMuPrint: TPopupMenu
    Left = 395
    Top = 307
    object N1: TMenuItem
      Caption = #1670#1575#1662
      OnClick = N1Click
    end
    object N21: TMenuItem
      Caption = #1670#1575#1662'2'
      OnClick = N21Click
    end
  end
end

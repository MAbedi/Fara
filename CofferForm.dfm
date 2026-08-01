inherited CofferFormsF: TCofferFormsF
  Caption = 'CofferFormsF'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    object newPanel: TPanel
      Left = 555
      Top = 1
      Width = 234
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        234
        39)
      object BitBtn3: TBitBtn
        Left = 156
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 78
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        Left = 1
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetDelete1_
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        TabOrder = 2
      end
    end
    object okPanel: TPanel
      Left = 390
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
        Left = 88
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
        Left = 8
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
    object DBNavigator1: TDBNavigator
      Left = 319
      Top = 8
      Width = 232
      Height = 25
      DataSource = srcRecipts
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Anchors = [akLeft, akTop, akRight, akBottom]
      Flat = True
      TabOrder = 3
    end
    object BitBtn6: TBitBtn
      Left = 240
      Top = 8
      Width = 75
      Height = 25
      Caption = #1670#1600#1600#1600#1575#1662
      TabOrder = 4
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00ADADAD00F7F7F700F7F7F700ADADAD005A5A5A008484
        8400ADADAD00E7DEDE00E7E7E700B5B5B500FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00BDB5B500E7E7E700FFFFFF00EFEFEF00B5ADAD004A4A4A003131
        31004242420084848400ADADAD00E7E7E700DEDEDE00FF00FF00FF00FF00CECE
        CE00F7F7F700F7F7F700F7F7F700C6C6C600ADADAD00A5A5A500ADADAD00B5AD
        AD009C9C9C005A5A5A003939390042424200A59C9C00FF00FF00FF00FF00EFEF
        EF00F7F7F700DEDEDE00BDBDBD00B5B5B500D6D6D600A5A5A500A59C9C00A59C
        9C00ADA5A500B5B5B500A5A5A5006B6B6B00A59C9C00FF00FF00FF00FF00B5AD
        AD00A5A5A500D6D6D600DEDEDE00D6D6D600EFE7E700F7F7F700EFEFEF00D6D6
        D600CECECE00B5B5B500ADA5A500A59C9C009C9C9C00FF00FF00FF00FF00BDBD
        BD00D6D6D600D6D6D600D6D6D600E7E7E700F7F7F700C6BDC600CECECE00E7E7
        E700E7E7E700D6D6D600CECECE00BDBDBD00A5A5A500FF00FF00FF00FF00BDBD
        BD00DEDEDE00D6D6D600E7E7E700B5B5B500BDBDBD00D6F7D600EFEFEF00F7BD
        B500BDBDBD00ADA5A500ADADAD00BDBDBD00B5B5B500FF00FF00FF00FF00FF00
        FF00B5B5B500D6D6D600C6C6C600CEC6C600F7F7F700F7F7F700EFEFEF00E7E7
        E700E7E7E700D6D6D600CECECE00A5A5A500FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00ADADAD00F7F7F700DEDEDE00BDBDBD00C6C6C600D6D6D600D6D6
        D600D6D6D600ADADAD00BDB5B500FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00EFDEDE00FFE7D600FFDED600F7DED600F7DED600E7DE
        DE00DEDEDE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00E7C6BD00FFDED600FFDECE00FFCEBD00FFC6B500F7B5
        A500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00E7CEC600FFDED600FFDECE00FFCEBD00FFC6B500F7B5
        A500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00E7CEC600FFDED600FFDECE00FFCEBD00FFC6B500F7BD
        B500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00E7C6C600FFEFE700FFDED600FFDECE00FFCEBD00FFCEB500FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00E7CEC600E7C6C600E7C6BD00E7BDB500E7B5AD00F7BDB500FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object BitBtn2: TBitBtn
      Left = 162
      Top = 8
      Width = 75
      Height = 25
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Exel'
      TabOrder = 5
    end
    object BitBtn1: TBitBtn
      Left = 84
      Top = 8
      Width = 75
      Height = 25
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 6
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006A00
        00006A0000006A000000FF00FF006A0000006A0000006A000000FF00FF00FF00
        FF00FF00FF00FF00FF0000580300FF00FF00FF00FF00FF00FF00FF00FF006A6A
        6A006A000000FF00FF00FF00FF00FF00FF00980000006A6A6A00FF00FF00FF00
        FF00FF00FF00005803006AFF6A0000580300FF00FF00FF00FF00FF00FF00FF00
        FF006A6A6A006A0000006A0000006A0000006A000000FF00FF00FF00FF00FF00
        FF00FF00FF006AFF6A006AB650000084000000580300FF00FF00FF00FF00FF00
        FF00FF00FF006A000000FF00FF00980000006A000000FF00FF00FF00FF00FF00
        FF00FF00FF006AFF6A006AB650000084000000580300FF00FF00FF00FF00FF00
        FF00FF00FF00980000006A0000006A000000FF00FF00FF00FF00FF00FF000058
        0300005803000058030000580300005803000058030000580300FF00FF00FF00
        FF00FF00FF006A6A6A006A0000006A6A6A00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0098000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF000000
        6A0000006A0000006A0000006A0000006A0000006A00FF00FF00FF00FF00FF00
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
  end
  inherited Panel3: TPanel
    object PnlPerson: TPanel
      Left = 2
      Top = 2
      Width = 786
      Height = 95
      Align = alTop
      TabOrder = 0
      DesignSize = (
        786
        95)
      object LblPerson1: TLabel
        Left = 704
        Top = 6
        Width = 51
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1603#1583' '#1605#1588#1578#1585#1610
        FocusControl = EdtCustomerID1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton1: TSpeedButton
        Left = 606
        Top = 1
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
      end
      object TxtCustomerID1: TDBText
        Left = 430
        Top = 8
        Width = 167
        Height = 16
        Anchors = [akTop, akRight]
        Color = 13948116
        DataField = '_CustomerID1'
        DataSource = srcRecipts
        ParentColor = False
        Transparent = False
      end
      object LblPerson2: TLabel
        Left = 704
        Top = 37
        Width = 57
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1603#1583' '#1605#1588#1578#1585#1610'2'
        FocusControl = EdtCustomerID2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton6: TSpeedButton
        Left = 606
        Top = 32
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
      end
      object TxtCustomerID2: TDBText
        Left = 430
        Top = 38
        Width = 167
        Height = 16
        Anchors = [akTop, akRight]
        Color = 13948116
        DataField = '_CustomerID2'
        DataSource = srcRecipts
        ParentColor = False
        Transparent = False
      end
      object Label8: TLabel
        Left = 117
        Top = 7
        Width = 50
        Height = 13
        Caption = #1588#1605#1575#1585#1607' '#1601#1585#1605
      end
      object SpeedButton2: TSpeedButton
        Left = 14
        Top = 2
        Width = 23
        Height = 22
        Caption = '...'
      end
      object LblReciptDate: TLabel
        Left = 115
        Top = 32
        Width = 41
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #1578#1575#1585#1610#1582' '#1601#1585#1605
      end
      object EdtCustomerID1: TDBEdit
        Left = 631
        Top = 2
        Width = 70
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'CustomerID1'
        DataSource = srcRecipts
        TabOrder = 0
      end
      object EdtCustomerID2: TDBEdit
        Left = 631
        Top = 33
        Width = 70
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'CustomerID2'
        DataSource = srcRecipts
        TabOrder = 1
      end
      object EdtFNum: TDBEdit
        Left = 40
        Top = 3
        Width = 71
        Height = 21
        DataField = 'FormNumber'
        DataSource = srcRecipts
        TabOrder = 2
      end
      object EdtFormDate: TDBEdit
        Left = 40
        Top = 28
        Width = 70
        Height = 21
        DataField = 'FormDate'
        DataSource = srcRecipts
        TabOrder = 3
      end
    end
    object Panel1: TPanel
      Left = 2
      Top = 97
      Width = 786
      Height = 80
      Align = alTop
      Caption = ' '
      TabOrder = 1
      DesignSize = (
        786
        80)
      object Label3: TLabel
        Left = 704
        Top = 21
        Width = 57
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1605#1576#1604#1594' ( '#1576#1593#1583#1583' )'
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 430
        Top = 22
        Width = 167
        Height = 16
        Anchors = [akTop, akRight]
        Color = 13948116
        DataField = '_CustomerID2'
        DataSource = srcRecipts
        ParentColor = False
        Transparent = False
      end
      object Label4: TLabel
        Left = 696
        Top = 45
        Width = 67
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1605#1576#1604#1594' ( '#1576#1581#1585#1608#1601' )'
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 432
        Top = 53
        Width = 177
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = 'Label5'
        Color = 13948116
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object DBEdit2: TDBEdit
        Left = 608
        Top = 17
        Width = 93
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'CustomerID2'
        DataSource = srcRecipts
        TabOrder = 0
      end
    end
    object PnlNote: TPanel
      Left = 2
      Top = 177
      Width = 786
      Height = 186
      Align = alClient
      Caption = ' '
      TabOrder = 2
      object Panel5: TPanel
        Left = 1
        Top = 1
        Width = 784
        Height = 41
        Align = alTop
        Caption = ' '
        TabOrder = 0
        DesignSize = (
          784
          41)
        object Label2: TLabel
          Left = 728
          Top = 12
          Width = 40
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1578#1608#1590#1610#1581#1575#1578
          FocusControl = EdtCustomerID2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
      end
      object DBMemo1: TDBMemo
        Left = 1
        Top = 42
        Width = 784
        Height = 143
        Align = alClient
        TabOrder = 1
      end
    end
    object GrpBoxAccount: TGroupBox
      Left = 2
      Top = 363
      Width = 786
      Height = 75
      Align = alBottom
      Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1583#1575#1585#1610' '
      TabOrder = 3
      DesignSize = (
        786
        75)
      object Label7: TLabel
        Left = 333
        Top = 26
        Width = 51
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610
        FocusControl = DBEdit7
      end
      object SpeedButton3: TSpeedButton
        Left = 225
        Top = 21
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
      end
      object DBText3: TDBText
        Left = 225
        Top = 48
        Width = 169
        Height = 16
        Anchors = [akTop, akRight]
        Color = 13948116
        DataField = '_DetailCode'
        ParentColor = False
        Transparent = False
      end
      object Label9: TLabel
        Left = 135
        Top = 26
        Width = 64
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'
        FocusControl = DBEdit9
      end
      object SpeedButton5: TSpeedButton
        Left = 30
        Top = 21
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
      end
      object DBText5: TDBText
        Left = 30
        Top = 48
        Width = 169
        Height = 16
        Anchors = [akTop, akRight]
        Color = 13948116
        DataField = '_CTopicCode'
        ParentColor = False
        Transparent = False
      end
      object Label1: TLabel
        Left = 534
        Top = 26
        Width = 38
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1603#1583' '#1581#1587#1575#1576
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton4: TSpeedButton
        Left = 421
        Top = 21
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
      end
      object DBText4: TDBText
        Left = 421
        Top = 48
        Width = 169
        Height = 16
        Anchors = [akTop, akRight]
        Color = 13948116
        DataField = '_TopicCodeName'
        ParentColor = False
        Transparent = False
      end
      object DBEdit7: TDBEdit
        Left = 250
        Top = 22
        Width = 78
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'acc_DetailCode'
        TabOrder = 1
      end
      object DBEdit9: TDBEdit
        Left = 55
        Top = 22
        Width = 78
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'acc_CTopicCode'
        TabOrder = 2
      end
      object DBEdit1: TDBEdit
        Left = 448
        Top = 22
        Width = 78
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'acc_TopicCode'
        TabOrder = 0
      end
    end
  end
  inherited ActionList: TActionList
    Left = 256
  end
  inherited ImageList1: TImageList
    Left = 296
  end
  object qryRecipts: TADOQuery
    Connection = DMF.adcCoffer
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT   *  FROM         Forms'
      'ORDER BY FormNumber')
    Left = 224
    Top = 240
    object qryReciptsFormID: TIntegerField
      FieldName = 'FormID'
    end
    object qryReciptsFormType: TWordField
      FieldName = 'FormType'
    end
    object qryReciptsFormNumber: TIntegerField
      FieldName = 'FormNumber'
    end
    object qryReciptsFormDate: TStringField
      FieldName = 'FormDate'
      FixedChar = True
      Size = 10
    end
    object qryReciptsCustomerID1: TIntegerField
      FieldName = 'CustomerID1'
    end
    object qryRecipts_PersonName1: TStringField
      FieldKind = fkLookup
      FieldName = '_CustomerID1'
      LookupDataSet = qryCustomers
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'CustomerID1'
      LookupCache = True
      Size = 120
      Lookup = True
    end
    object qryReciptsCustomerID2: TIntegerField
      FieldName = 'CustomerID2'
    end
    object qryRecipts_PersonName2: TStringField
      FieldKind = fkLookup
      FieldName = '_CustomerID2'
      LookupDataSet = qryCustomers
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'CustomerID2'
      LookupCache = True
      Size = 120
      Lookup = True
    end
    object qryReciptsAmount: TBCDField
      FieldName = 'Amount'
      Precision = 19
    end
    object qryReciptsBudgetCode: TIntegerField
      FieldName = 'BudgetCode'
    end
    object qryReciptsTopicCode: TStringField
      FieldName = 'TopicCode'
      Size = 12
    end
    object qryReciptsDetailCode: TStringField
      FieldName = 'DetailCode'
      Size = 12
    end
    object qryReciptsCTopicCode: TStringField
      FieldName = 'CTopicCode'
      Size = 12
    end
    object qryReciptsFomNote: TStringField
      FieldName = 'FomNote'
      Size = 255
    end
  end
  object srcRecipts: TDataSource
    DataSet = qryRecipts
    Left = 456
    Top = 248
  end
  object qryCustomers: TADOQuery
    Active = True
    Connection = DMF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT     CustID, CustName'
      'FROM   Customers')
    Left = 100
    Top = 237
  end
end

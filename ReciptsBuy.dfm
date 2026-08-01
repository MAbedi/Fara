inherited ReciptsBuyF: TReciptsBuyF
  Left = 400
  Top = 0
  Caption = 'ReciptsBuyF'
  ClientHeight = 880
  ClientWidth = 930
  KeyPreview = True
  Position = poDesigned
  ShowHint = True
  OnResize = FormResize
  ExplicitWidth = 938
  ExplicitHeight = 911
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 839
    Width = 930
    TabOrder = 2
    ExplicitTop = 839
    ExplicitWidth = 930
    DesignSize = (
      930
      41)
    object newPanel: TPanel
      Left = 537
      Top = 1
      Width = 392
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        392
        39)
      object BitBtn3: TBitBtn
        Left = 315
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 237
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        Left = 159
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetDelete1_
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        TabOrder = 2
      end
      object BtnCorrelateConversionCo: TBitBtn
        Left = 3
        Top = 8
        Width = 77
        Height = 25
        Action = actCorrelateConversionCo
        Caption = #1579#1576#1578' '#1601#1585#1605' '#1590#1585#1575#1610#1576
        TabOrder = 3
      end
      object BtnCorrelateRecipt: TBitBtn
        Left = 81
        Top = 8
        Width = 77
        Height = 25
        Action = actCorrelateRecipt
        Caption = #1579#1576#1578' '#1601#1585#1605' '#1605#1585#1578#1576#1591
        TabOrder = 4
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
        Left = 88
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
        Left = 8
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
    object DBNavigator1: TDBNavigator
      Left = 347
      Top = 9
      Width = 184
      Height = 25
      DataSource = srcRecipts
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Anchors = [akLeft, akTop, akRight, akBottom]
      Flat = True
      TabOrder = 5
    end
    object BitBtn2: TBitBtn
      Left = 188
      Top = 8
      Width = 75
      Height = 25
      Action = actSendExel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      Left = 111
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
    end
    object BitBtn6: TBitBtn
      Left = 265
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Caption = #1670#1600#1600#1600#1575#1662
      TabOrder = 6
    end
    object btnOtherMenu: TBitBtn
      Left = 84
      Top = 8
      Width = 25
      Height = 25
      Hint = #1587#1575#1610#1585' '#1575#1605#1603#1575#1606#1575#1578
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000BEBEBEBEBEBE
        BEBEBEBABDBDBDBDBDBCBDBDC9C1C12E8D900065660466650072729EB4B4CCC3
        C3B9BCBCBEBEBEBEBEBEBEBEBEBEBEBEBBBDBDC6C1C1C0BEBEBABCBCC9C2C32E
        8770005948024646015758217C7CA4B5B5C7C1C1BBBDBDBEBEBEBEBEBEBCBDBD
        D0C4C44D97979AB2B2C7C1C0C5C1C4308661169145094F27002E2C005152207C
        7CA5B6B6C9C2C2BCBDBDBABCBCC6C0C0569C9C0074731D8080A4B6B5D2C6C729
        847427B25C47C9660F532B012F2C0057582081809DB3B3C6C0C0B9BCBCCAC2C2
        258481004E4D0055541F7A7AB1BABA368B8C199F525EF38643C8690A4624023A
        390067678BAEADCAC1C1BABDBAC7C0C63B9253004A1E033232004949227E7E0E
        6E5E2AAD5858ED8562FE96208538003123015E628FB0AFC9C1C1BABDBBC7C1C6
        409D4D169D390A5723012D26004045086D3341CF6B57F08A5DF69338BE560841
        2900575D8FB1AFC9C1C1BABDBAC8C1C73F9D5023BD5029B35107541C024B152C
        AD4F4AE37B50E88257EF8B3BC65A0B492F00585E8FB0AFC9C1C1BABDBAC8C1C7
        3D9A4B1EB64636D06824AA4924A8453CD26C45DF7A49E17C52EB8634BA520954
        3C01616690B0AEC9C1C1BABDBAC8C1C73C994818B03C2FC65D31C96235CD6839
        D16C40D77244DB764CE6811C8934025B4B006F738BAEADCAC1C1BABDBAC8C1C7
        3A974413AB3129C0502CC35931C96334CC6738D16B41DB7631BE5309673E0069
        686AA2A2B9BCBCBFBEBEBABDBAC8C1C837953F0DA62723BB4426BD4B2BC45730
        C86134CC6731C45B0E602901443F0068699EB3B3CEC3C3BABCBCB9BDBAC8C2C8
        35923A08A11B1CB4371FB73E25BD4A2BC35531C86130C65F0E6627002C250148
        4A217776A4B5B5C9C2C2B9BDBAC8C2C8329037029B1017AE2B19B0331FB63F25
        BC4A2BC25530C8612BB9570C6327002F2900474A227B7A9DB3B3B9BCB9C9C2C8
        308F2F00980211AB1C14AE261AB53220BA3F27C04A2DC75634D0642FC05A0F73
        3303514800656785ABABB9BCBAC9C2C52F8757007629057E33047E35057F3807
        803B09823E0A84410B84440E8A4907793B006D5F6B9DA0BABDBC}
      Layout = blGlyphRight
      Style = bsWin31
      TabOrder = 7
      OnClick = btnOtherMenuClick
    end
  end
  inherited Panel2: TPanel
    Width = 930
    Height = 55
    TabOrder = 0
    ExplicitWidth = 930
    ExplicitHeight = 55
    DesignSize = (
      930
      55)
    inherited ImgTemplate: TImage
      Left = 888
      ExplicitLeft = 781
    end
    inherited lblCaption: TLabel
      Left = 822
      Height = 35
      ExplicitLeft = 822
    end
    inherited lblBaseDate: TLabel
      Left = 387
      ExplicitLeft = 391
    end
    object LblReciptDate: TLabel
      Left = 115
      Top = 32
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = #1578#1575#1585#1610#1582' '#1601#1585#1605
    end
    object LblRecNo: TLabel
      Left = 117
      Top = 7
      Width = 50
      Height = 13
      Alignment = taRightJustify
      Caption = #1588#1605#1575#1585#1607' '#1601#1585#1605
    end
    object btnSearchReciptNumber: TSpeedButton
      Left = 14
      Top = 2
      Width = 23
      Height = 22
      Action = actSearchReciptNumber
    end
    object BtnRecall: TBitBtn
      Left = 14
      Top = 26
      Width = 23
      Height = 22
      Action = actRecall
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00426BF700426BF700FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00426BF7000021C6000021C600426B
        F700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00426BF7000021C600527BEF005273FF000021
        C600426BF700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00426BF7000021C600426BF7001042E700214AEF00527B
        EF000021C600426BF700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00426BF7000018BD00527BEF000821E7000021E7000029EF000021
        E700527BEF000021C600426BF700FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00426BF7000021C600527BEF001031D6000021D6000821E7000021DE000029
        DE001031E700527BEF000021C600426BF700FF00FF00FF00FF00FF00FF00426B
        F7000018BD000829D6000021D6000021D6000021D6000021CE000021D6000021
        D6000021CE000018D6001031D6000018BD00426BF700FF00FF00426BF7000021
        C6000021CE000818D6000021CE000018CE000018CE000018CE000018CE000018
        CE000018CE000018D6000018CE001029D6000021C600426BF7000810BD000021
        C6000021C6000818BD000018C6000018C6000018C6000018C6000018C6000018
        C6000018BD000010C6001018BD000010C6000018C6000818BD00FF00FF00FF00
        FF00FF00FF00FF00FF000010BD000010BD000010BD000010BD000010BD000010
        C6000010C6000010BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000810BD000008AD000010B5000008B5000010B5000008
        B5000010B5000010B500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF001021BD000010AD000008AD000008AD000008AD000010
        AD000008A5001021BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00424ABD000808A5000008A5000008A50008089C000000
        A50000089C004A4ABD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00424ABD000800A5000808A5000000A5000800A5000008
        A5000008A500424ABD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00424ABD003939B50000009C0000009C003939B5000000
        9C003939B500424ABD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00736BBD000008AD000008AD000008AD000008AD000008
        AD000008AD006B63C600FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 0
    end
    object BtnRecallSpecial: TBitBtn
      Left = 14
      Top = 26
      Width = 23
      Height = 22
      Action = actRecallSpecial
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00426BF700426BF700FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00426BF7004080FF004080FF00426B
        F700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00426BF7004080FF004080FF004080FF004080
        FF00426BF700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00426BF7004080FF004080FF004080FF004080FF004080
        FF004080FF00426BF700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00426BF7004080FF004080FF004080FF004080FF004080FF004080
        FF004080FF004080FF00426BF700FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00426BF7004080FF004080FF004080FF004080FF004080FF004080FF004080
        FF004080FF004080FF004080FF00426BF700FF00FF00FF00FF00FF00FF00426B
        F7004080FF004080FF004080FF004080FF004080FF004080FF004080FF004080
        FF004080FF004080FF004080FF004080FF00426BF700FF00FF00426BF7004080
        FF004080FF004080FF004080FF004080FF004080FF004080FF004080FF004080
        FF004080FF004080FF004080FF004080FF004080FF00426BF7004080FF004080
        FF004080FF004080FF004080FF004080FF004080FF004080FF004080FF004080
        FF004080FF004080FF004080FF004080FF004080FF004080FF00FF00FF00FF00
        FF00FF00FF00FF00FF004080FF004080FF004080FF004080FF004080FF004080
        FF004080FF004080FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF004080FF004080FF004080FF004080FF004080FF004080
        FF004080FF004080FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF004080FF004080FF004080FF004080FF004080FF004080
        FF004080FF004080FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF004080FF004080FF004080FF004080FF004080FF004080
        FF004080FF004080FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF004080FF004080FF004080FF004080FF004080FF004080
        FF004080FF004080FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF004080FF004080FF004080FF004080FF004080FF004080
        FF004080FF004080FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF004080FF004080FF004080FF004080FF004080FF004080
        FF004080FF004080FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 1
    end
    object EdtReciptDate: TDBEdit
      Left = 40
      Top = 28
      Width = 70
      Height = 21
      DataField = 'ReciptDate'
      DataSource = srcRecipts
      TabOrder = 3
    end
    object EdtRNum: TDBEdit
      Left = 40
      Top = 3
      Width = 71
      Height = 21
      DataField = 'ReciptNumber'
      DataSource = srcRecipts
      TabOrder = 2
      OnKeyDown = EdtRNumKeyDown
    end
  end
  inherited Panel3: TPanel
    Top = 55
    Width = 930
    Height = 784
    TabOrder = 1
    ExplicitTop = 55
    ExplicitWidth = 930
    ExplicitHeight = 784
    object PageControl1: TPageControl
      Left = 2
      Top = 2
      Width = 926
      Height = 780
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        object pnlDefaultDateSecondType: TPanel
          Left = 0
          Top = 0
          Width = 918
          Height = 29
          Align = alTop
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 0
          object PnlSecondType: TPanel
            Left = 0
            Top = 0
            Width = 354
            Height = 29
            Align = alLeft
            BevelOuter = bvNone
            BevelWidth = 2
            TabOrder = 0
            TabStop = True
            object Label25: TLabel
              Left = 271
              Top = 8
              Width = 58
              Height = 13
              Caption = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578' '
            end
            object CmbSecondType: TDBComboBox
              Left = 14
              Top = 4
              Width = 254
              Height = 21
              BiDiMode = bdLeftToRight
              DataField = 'SecondType'
              DataSource = srcRecipts
              Items.Strings = (
                #1606#1602#1583
                #1593#1585#1601' '#1601#1585#1608#1588#1610)
              ParentBiDiMode = False
              TabOrder = 0
            end
          end
        end
        object pnlSells: TPanel
          Left = 0
          Top = 29
          Width = 918
          Height = 29
          Align = alTop
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 1
          TabStop = True
          object pnlSellsEmporium: TPanel
            Left = 502
            Top = 0
            Width = 416
            Height = 29
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 0
            TabStop = True
            DesignSize = (
              416
              29)
            object Label26: TLabel
              Left = 340
              Top = 6
              Width = 52
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1605#1585#1603#1586' '#1601#1585#1608#1588
              FocusControl = dblkcbb_SellsEmporium
            end
            object dblkcbb_SellsEmporium: TDBLookupComboBox
              Tag = 1
              Left = 143
              Top = 2
              Width = 193
              Height = 21
              Anchors = [akTop, akRight]
              DataSource = srcRecipts
              TabOrder = 0
            end
          end
          object pnlSellsMethod: TPanel
            Left = 0
            Top = 0
            Width = 360
            Height = 29
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            TabStop = True
            object Label27: TLabel
              Left = 271
              Top = 6
              Width = 51
              Height = 13
              Caption = #1606#1581#1608#1607' '#1601#1585#1608#1588
              FocusControl = dblkcbb_SellsMethod
            end
            object dblkcbb_SellsMethod: TDBLookupComboBox
              Tag = 1
              Left = 14
              Top = 2
              Width = 254
              Height = 21
              DataSource = srcRecipts
              TabOrder = 0
            end
          end
        end
        object PnlPerson1: TPanel
          Left = 0
          Top = 58
          Width = 918
          Height = 26
          Align = alTop
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 2
          DesignSize = (
            918
            26)
          object LblPerson1: TLabel
            Left = 838
            Top = 6
            Width = 51
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1605#1588#1578#1585#1610
            FocusControl = EdtPersonID1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 761
          end
          object SBtnPersonID1: TSpeedButton
            Left = 741
            Top = 1
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SBtnPersonID1Click
            ExplicitLeft = 642
          end
          object DBTextPersonID1: TDBText
            Left = 569
            Top = 8
            Width = 167
            Height = 16
            Anchors = [akTop, akRight]
            Color = clCream
            DataField = '_PersonName1'
            DataSource = srcRecipts
            ParentColor = False
            Transparent = False
            ExplicitLeft = 470
          end
          object EdtPersonID1: TDBEdit
            Left = 764
            Top = 2
            Width = 70
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'PersonID1'
            DataSource = srcRecipts
            TabOrder = 0
            OnKeyDown = EdtPersonID1KeyDown
          end
        end
        object PnlPerson2: TPanel
          Left = 0
          Top = 84
          Width = 918
          Height = 27
          Align = alTop
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 3
          DesignSize = (
            918
            27)
          object LblPerson2: TLabel
            Left = 838
            Top = 8
            Width = 57
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1605#1588#1578#1585#1610'2'
            FocusControl = EdtPersonID2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 761
          end
          object SpeedButton6: TSpeedButton
            Left = 741
            Top = 3
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton6Click
            ExplicitLeft = 642
          end
          object DBTextPersonID2: TDBText
            Left = 569
            Top = 5
            Width = 167
            Height = 16
            Anchors = [akTop, akRight]
            Color = clCream
            DataField = '_PersonName2'
            DataSource = srcRecipts
            ParentColor = False
            Transparent = False
            ExplicitLeft = 470
          end
          object EdtPersonID2: TDBEdit
            Left = 764
            Top = 4
            Width = 70
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'PersonID2'
            DataSource = srcRecipts
            TabOrder = 0
            OnKeyDown = EdtPersonID2KeyDown
          end
        end
        object pnlPerson3: TPanel
          Left = 0
          Top = 111
          Width = 918
          Height = 27
          Align = alTop
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 4
          DesignSize = (
            918
            27)
          object btnPersonID3: TSpeedButton
            Left = 741
            Top = 3
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = btnPersonID3Click
            ExplicitLeft = 642
          end
          object dbtxtPersonID3: TDBText
            Left = 569
            Top = 6
            Width = 167
            Height = 16
            Anchors = [akTop, akRight]
            Color = clCream
            DataSource = srcRecipts
            ParentColor = False
            Transparent = False
            ExplicitLeft = 470
          end
          object LblPerson3: TLabel
            Left = 838
            Top = 8
            Width = 57
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1605#1588#1578#1585#1610'3'
            FocusControl = dbedtPersonID3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 761
          end
          object dbedtPersonID3: TDBEdit
            Left = 764
            Top = 4
            Width = 70
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'PersonID3'
            DataSource = srcRecipts
            TabOrder = 0
          end
        end
        object PnlStore: TPanel
          Left = 0
          Top = 138
          Width = 918
          Height = 26
          Align = alTop
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 5
          DesignSize = (
            918
            26)
          object LblStore: TLabel
            Left = 838
            Top = 7
            Width = 31
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1575#1606#1576#1575#1585
            FocusControl = EdtStoreID
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 761
          end
          object SBtnStoreID: TSpeedButton
            Tag = 1
            Left = 741
            Top = 2
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SBtnStoreIDClick
            ExplicitLeft = 642
          end
          object DBTextStoreID: TDBText
            Left = 569
            Top = 3
            Width = 167
            Height = 16
            Anchors = [akTop, akRight]
            Color = clCream
            DataField = '_StoresName'
            DataSource = srcRecipts
            ParentColor = False
            Transparent = False
            ExplicitLeft = 470
          end
          object EdtStoreID: TDBEdit
            Tag = 1
            Left = 764
            Top = 3
            Width = 70
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'StoreID'
            DataSource = srcRecipts
            TabOrder = 0
            OnKeyDown = EdtStoreIDKeyDown
          end
        end
        object Panel10: TPanel
          Left = 0
          Top = 164
          Width = 918
          Height = 48
          Align = alTop
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 6
          DesignSize = (
            918
            48)
          object Label20: TLabel
            Left = 838
            Top = 6
            Width = 41
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1600#1600#1583' '#1603#1600#1600#1575#1604#1575
            FocusControl = EdtStuffCode
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 761
          end
          object Label22: TLabel
            Left = 838
            Top = 28
            Width = 69
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1605#1588#1582#1589#1575#1578' '#1601#1606#1610
            ExplicitLeft = 761
          end
          object LblUnit: TLabel
            Left = 133
            Top = 6
            Width = 21
            Height = 13
            Alignment = taRightJustify
            Caption = #1608#1575#1581#1583
          end
          object SpeedButton7: TSpeedButton
            Left = 741
            Top = 1
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton7Click
            ExplicitLeft = 642
          end
          object EdtStuffCode: TDBEdit
            Left = 764
            Top = 2
            Width = 70
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'StuffCode'
            DataSource = srcItems
            TabOrder = 0
            OnChange = EdtStuffCodeChange
            OnKeyDown = EdtStuffCodeeyDown
            OnKeyPress = EdtStuffCodeKeyPress
          end
          object DBEdit2: TDBEdit
            Left = 254
            Top = 24
            Width = 580
            Height = 19
            TabStop = False
            Anchors = [akLeft, akTop, akRight]
            Color = 15461355
            Ctl3D = False
            DataField = '_StuffTecInfo'
            DataSource = srcItems
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 1
          end
          object EdtUnit: TDBEdit
            Left = 4
            Top = 3
            Width = 127
            Height = 19
            TabStop = False
            Color = 15461355
            Ctl3D = False
            DataField = '_UnitName'
            DataSource = srcItems
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 2
          end
          object EdtStuffName: TDBEdit
            Left = 254
            Top = 3
            Width = 486
            Height = 19
            TabStop = False
            Anchors = [akLeft, akTop, akRight]
            Color = 15461355
            Ctl3D = False
            DataField = '_StuffName'
            DataSource = srcItems
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 3
          end
        end
        object PnlEarth: TPanel
          Left = 0
          Top = 212
          Width = 918
          Height = 52
          Align = alTop
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 7
          DesignSize = (
            918
            52)
          object SBtnProductCode: TSpeedButton
            Left = 741
            Top = 2
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SBtnProductCodeClick
            ExplicitLeft = 642
          end
          object DBText7: TDBText
            Left = 582
            Top = 5
            Width = 156
            Height = 16
            Anchors = [akTop, akRight]
            Color = clCream
            DataField = '_ProductName'
            DataSource = srcItems
            ParentColor = False
            Transparent = False
            ExplicitLeft = 483
          end
          object Label14: TLabel
            Left = 838
            Top = 7
            Width = 36
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1586#1605#1610#1606
            FocusControl = DBEdit13
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 761
          end
          object Label10: TLabel
            Left = 244
            Top = 7
            Width = 25
            Height = 13
            Alignment = taRightJustify
            Caption = #1583#1585#1610#1670#1607
            FocusControl = edtStuffDiameter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label19: TLabel
            Left = 86
            Top = 7
            Width = 19
            Height = 13
            Alignment = taRightJustify
            Caption = #1601#1610#1604#1583
          end
          object DBEdit13: TDBEdit
            Left = 764
            Top = 3
            Width = 69
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'ProductCode'
            DataSource = srcItems
            TabOrder = 0
            OnKeyDown = DBEdit13KeyDown
          end
          object edtStuffDiameter: TDBEdit
            Left = 161
            Top = 3
            Width = 80
            Height = 21
            DataField = 'StuffDiameter'
            DataSource = srcItems
            TabOrder = 1
          end
          object edtControlCode: TDBEdit
            Left = 3
            Top = 3
            Width = 80
            Height = 21
            BiDiMode = bdLeftToRight
            DataField = 'ControlCode'
            DataSource = srcItems
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 2
          end
          object Panel4: TPanel
            Left = 0
            Top = 24
            Width = 918
            Height = 28
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 3
            DesignSize = (
              918
              28)
            object Label23: TLabel
              Left = 842
              Top = 9
              Width = 30
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1605#1606#1591#1602#1607
              ExplicitLeft = 739
            end
            object DBEdit19: TDBEdit
              Left = 758
              Top = 2
              Width = 80
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'Discount'
              DataSource = srcItems
              TabOrder = 0
            end
          end
        end
        object PnlMachine: TPanel
          Left = 0
          Top = 378
          Width = 918
          Height = 28
          Align = alTop
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 8
          DesignSize = (
            918
            28)
          object Label2: TLabel
            Left = 837
            Top = 6
            Width = 68
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1588#1605#1575#1585#1607' '#1605#1575#1588#1610#1606' '
            FocusControl = edtMachineNo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 738
          end
          object Label3: TLabel
            Left = 677
            Top = 6
            Width = 41
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1606#1575#1605' '#1585#1575#1606#1606#1583#1607
            ExplicitLeft = 578
          end
          object Label4: TLabel
            Left = 262
            Top = 9
            Width = 27
            Height = 13
            Alignment = taRightJustify
            Caption = #1608#1586#1606' '#1662#1585
          end
          object Label18: TLabel
            Left = 86
            Top = 6
            Width = 43
            Height = 13
            Alignment = taRightJustify
            Caption = #1608#1586#1606' '#1582#1575#1604#1610
            FocusControl = EdtMachineWeight
          end
          object edtMachineNo: TDBEdit
            Left = 754
            Top = 2
            Width = 80
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'MachineNo'
            DataSource = srcItems
            TabOrder = 0
          end
          object edtMachineName: TDBEdit
            Left = 594
            Top = 2
            Width = 80
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'MachineName'
            DataSource = srcItems
            TabOrder = 1
          end
          object edtMachineFullWeight: TDBEdit
            Left = 176
            Top = 2
            Width = 80
            Height = 21
            BiDiMode = bdRightToLeft
            DataField = 'MachineFullWeight'
            DataSource = srcItems
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 2
          end
          object EdtMachineWeight: TDBEdit
            Left = 3
            Top = 2
            Width = 80
            Height = 21
            DataField = 'MachineWeight'
            DataSource = srcItems
            TabOrder = 3
          end
        end
        object panel19: TPanel
          Left = 0
          Top = 406
          Width = 918
          Height = 26
          Align = alTop
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 9
          DesignSize = (
            918
            26)
          object LblRequestedEntity: TLabel
            Left = 262
            Top = 5
            Width = 65
            Height = 13
            Alignment = taRightJustify
            Caption = #1583#1585#1589#1583' '#1605#1608#1575#1583' '#1586#1575#1574#1583
            FocusControl = edtRequestedEntity
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object LblRequestedWeight: TLabel
            Left = 835
            Top = 6
            Width = 51
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1608#1586#1606' '#1606#1575#1582#1575#1604#1589
            FocusControl = edtRequestedWeight
            ExplicitLeft = 736
          end
          object Label15: TLabel
            Left = 86
            Top = 6
            Width = 57
            Height = 13
            Alignment = taRightJustify
            Caption = #1608#1586#1606' '#1605#1608#1575#1583' '#1586#1575#1610#1583
            FocusControl = edtContactRate
          end
          object Label12: TLabel
            Left = 677
            Top = 4
            Width = 70
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1583#1585#1589#1583' '#1575#1601#1578' '#1605#1601#1610#1583
            FocusControl = edtInvEntity
            ExplicitLeft = 578
          end
          object edtRequestedEntity: TDBEdit
            Left = 176
            Top = 2
            Width = 80
            Height = 21
            DataField = 'RequestedEntity'
            DataSource = srcItems
            TabOrder = 2
          end
          object edtRequestedWeight: TDBEdit
            Left = 755
            Top = 2
            Width = 78
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'RequestedWeight'
            DataSource = srcItems
            TabOrder = 0
          end
          object edtContactRate: TDBEdit
            Left = 4
            Top = 3
            Width = 78
            Height = 21
            DataField = 'ContactRate'
            DataSource = srcItems
            TabOrder = 3
          end
          object edtInvEntity: TDBEdit
            Left = 594
            Top = 1
            Width = 80
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'InvEntity'
            DataSource = srcItems
            TabOrder = 1
          end
        end
        object PnlWet: TPanel
          Left = 0
          Top = 432
          Width = 918
          Height = 26
          Align = alTop
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 10
          DesignSize = (
            918
            26)
          object Label16: TLabel
            Left = 837
            Top = 6
            Width = 59
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1583#1585' '#1589#1583' '#1585#1591#1608#1576#1578
            FocusControl = edtWaterCo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 738
          end
          object Label21: TLabel
            Left = 677
            Top = 6
            Width = 57
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1605#1602#1583#1575#1585' '#1585#1591#1608#1576#1578
            FocusControl = edtAuxiliary
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 578
          end
          object Label37: TLabel
            Left = 262
            Top = 6
            Width = 89
            Height = 13
            Caption = #1583#1585#1589#1583' '#1575#1601#1578' '#1594#1740#1585' '#1605#1601#1740#1583
          end
          object Label38: TLabel
            Left = 86
            Top = 6
            Width = 73
            Height = 13
            Caption = #1583#1585#1589#1583' '#1570#1601#1578' '#1586#1583#1711#1740
          end
          object edtWaterCo: TDBEdit
            Left = 754
            Top = 2
            Width = 80
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'WaterCo'
            DataSource = srcItems
            TabOrder = 0
          end
          object edtAuxiliary: TDBEdit
            Left = 594
            Top = 2
            Width = 80
            Height = 19
            TabStop = False
            Anchors = [akTop, akRight]
            Ctl3D = False
            DataField = 'Auxiliary'
            DataSource = srcItems
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 1
          end
          object edtWaste1: TDBEdit
            Left = 176
            Top = 2
            Width = 80
            Height = 21
            DataField = 'Waste1'
            DataSource = srcItems
            TabOrder = 2
          end
          object edtWaste2: TDBEdit
            Left = 4
            Top = 2
            Width = 79
            Height = 21
            DataField = 'Waste2'
            DataSource = srcItems
            TabOrder = 3
          end
        end
        object PnlSugar: TPanel
          Left = 0
          Top = 458
          Width = 918
          Height = 26
          Align = alTop
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 11
          DesignSize = (
            918
            26)
          object Label8: TLabel
            Left = 837
            Top = 6
            Width = 45
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1583#1585' '#1589#1583' '#1602#1606#1583
            FocusControl = edtSugarCo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 738
          end
          object Label17: TLabel
            Left = 677
            Top = 6
            Width = 43
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1605#1602#1583#1575#1585' '#1602#1606#1583
            FocusControl = edtSugarEntity
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 578
          end
          object edtSugarCo: TDBEdit
            Left = 754
            Top = 2
            Width = 80
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'SugarCo'
            DataSource = srcItems
            TabOrder = 0
          end
          object edtSugarEntity: TDBEdit
            Left = 594
            Top = 2
            Width = 80
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'SugarEntity'
            DataSource = srcItems
            TabOrder = 1
          end
        end
        object PnlEntityWeightPrice: TPanel
          Left = 0
          Top = 484
          Width = 918
          Height = 29
          Align = alTop
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 12
          DesignSize = (
            918
            29)
          object LblEntity: TLabel
            Left = 837
            Top = 7
            Width = 45
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1608#1586#1606' '#1582#1575#1604#1589
            FocusControl = EdtIOEntity
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 738
          end
          object Label13: TLabel
            Left = 133
            Top = 7
            Width = 38
            Height = 13
            Alignment = taRightJustify
            Caption = #1576#1607#1575#1610' '#1603#1604
            FocusControl = EdtTotalIOPrice
          end
          object Label5: TLabel
            Left = 262
            Top = 7
            Width = 16
            Height = 13
            Alignment = taRightJustify
            Caption = #1601#1610
          end
          object LblWeight: TLabel
            Left = 677
            Top = 7
            Width = 16
            Height = 13
            Alignment = taRightJustify
            Anchors = [akRight]
            Caption = #1608#1586#1606
            FocusControl = EdtIOWeight
            ExplicitLeft = 600
          end
          object EdtIOEntity: TDBEdit
            Left = 754
            Top = 3
            Width = 80
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'InputEntity'
            DataSource = srcItems
            TabOrder = 0
          end
          object EdtTotalIOPrice: TDBEdit
            Left = 4
            Top = 4
            Width = 127
            Height = 19
            Ctl3D = False
            DataField = 'TotalInputPrice'
            DataSource = srcItems
            ParentCtl3D = False
            TabOrder = 2
          end
          object EdtUnitSellPrice: TDBEdit
            Left = 176
            Top = 4
            Width = 80
            Height = 21
            Ctl3D = True
            DataField = 'UnitSellPrice'
            DataSource = srcItems
            ParentCtl3D = False
            TabOrder = 1
          end
          object EdtIOWeight: TDBEdit
            Left = 594
            Top = 3
            Width = 80
            Height = 21
            Anchors = [akRight]
            DataField = 'InputWeight'
            DataSource = srcItems
            TabOrder = 3
          end
        end
        object pnlDeficitValueUnitSellPrice2: TPanel
          Left = 0
          Top = 513
          Width = 918
          Height = 26
          Align = alTop
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 13
          DesignSize = (
            918
            26)
          object LblAidInfoNo2: TLabel
            Left = 677
            Top = 6
            Width = 30
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1588#1605#1575#1585#1607
            FocusControl = edtAidNumber
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 600
          end
          object Label24: TLabel
            Left = 837
            Top = 6
            Width = 70
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1605#1576#1604#1594' '#1603#1585#1575#1610#1607' '#1581#1605#1604
            FocusControl = edtPortage
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 760
          end
          object lblUnitSellPrice2: TLabel
            Left = 262
            Top = 6
            Width = 59
            Height = 13
            Alignment = taRightJustify
            Caption = #1607#1586#1610#1606#1607' '#1603#1605#1576#1575#1610#1606
          end
          object Label11: TLabel
            Left = 133
            Top = 6
            Width = 22
            Height = 13
            Alignment = taRightJustify
            Caption = #1585#1583#1740#1601
          end
          object lblDeficitValue: TLabel
            Left = 501
            Top = 6
            Width = 30
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1578#1582#1601#1740#1601
            FocusControl = edtDeficitValue
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 424
          end
          object edtAidNumber: TDBEdit
            Left = 594
            Top = 2
            Width = 80
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'AidNumber'
            DataSource = srcItems
            TabOrder = 1
          end
          object edtPortage: TDBEdit
            Left = 754
            Top = 2
            Width = 80
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'Portage'
            DataSource = srcItems
            TabOrder = 0
          end
          object edtShift: TDBEdit
            Left = 4
            Top = 2
            Width = 127
            Height = 21
            Ctl3D = True
            DataField = 'Shift'
            DataSource = srcItems
            ParentCtl3D = False
            TabOrder = 4
          end
          object edtDeficitValue: TDBEdit
            Left = 418
            Top = 2
            Width = 80
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'DeficitValue'
            DataSource = srcItems
            TabOrder = 2
          end
          object edtUnitSellPrice2: TDBEdit
            Left = 176
            Top = 2
            Width = 80
            Height = 21
            Ctl3D = True
            DataField = 'UnitSellPrice2'
            DataSource = srcItems
            ParentCtl3D = False
            TabOrder = 3
          end
        end
        object grpItemNote: TGroupBox
          Left = 0
          Top = 544
          Width = 918
          Height = 63
          Align = alBottom
          Caption = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
          TabOrder = 14
          object dbmmoItemNote: TDBMemo
            Left = 2
            Top = 15
            Width = 914
            Height = 46
            Align = alClient
            BevelInner = bvLowered
            BevelOuter = bvSpace
            BevelKind = bkTile
            DataField = 'ItemNote'
            DataSource = srcItems
            TabOrder = 0
          end
        end
        object GrpBoxAccount: TGroupBox
          Left = 0
          Top = 607
          Width = 918
          Height = 57
          Align = alBottom
          Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1583#1575#1585#1610' '
          TabOrder = 15
          DesignSize = (
            918
            57)
          object Label7: TLabel
            Left = 724
            Top = 19
            Width = 51
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610
            FocusControl = DBEdit7
            ExplicitLeft = 625
          end
          object SpeedButton3: TSpeedButton
            Left = 635
            Top = 14
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton3Click
            ExplicitLeft = 536
          end
          object DBText3: TDBText
            Left = 635
            Top = 37
            Width = 140
            Height = 16
            Anchors = [akTop, akRight]
            Color = 13948116
            DataField = '_DetailCode'
            DataSource = srcItems
            ParentColor = False
            Transparent = False
            ExplicitLeft = 536
          end
          object Label9: TLabel
            Left = 79
            Top = 19
            Width = 54
            Height = 13
            Alignment = taRightJustify
            Caption = #1603#1583#1578#1601#1589#1740#1604#1740'3'
            FocusControl = DBEdit9
          end
          object SpeedButton5: TSpeedButton
            Left = 3
            Top = 14
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton5Click
          end
          object DBText5: TDBText
            Left = 3
            Top = 37
            Width = 140
            Height = 16
            Color = 13948116
            DataField = '_CTopicCode2'
            DataSource = srcItems
            ParentColor = False
            Transparent = False
          end
          object Label1: TLabel
            Left = 874
            Top = 19
            Width = 45
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
            ExplicitLeft = 797
          end
          object SpeedButton4: TSpeedButton
            Left = 777
            Top = 14
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton4Click
            ExplicitLeft = 678
          end
          object DBText4: TDBText
            Left = 777
            Top = 37
            Width = 140
            Height = 16
            Anchors = [akTop, akRight]
            Color = 13948116
            DataField = '_TopicCodeName'
            DataSource = srcItems
            ParentColor = False
            Transparent = False
            ExplicitLeft = 678
          end
          object DBText1: TDBText
            Left = 145
            Top = 37
            Width = 140
            Height = 16
            Color = 13948116
            DataField = '_CTopicCode'
            DataSource = srcItems
            ParentColor = False
            Transparent = False
          end
          object Label6: TLabel
            Left = 221
            Top = 19
            Width = 64
            Height = 13
            Alignment = taRightJustify
            Caption = #1603#1583#1605#1585#1603#1586#1607#1586#1610#1606#1607'1'
            FocusControl = DBEdit5
          end
          object SpeedButton2: TSpeedButton
            Left = 145
            Top = 14
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton2Click
          end
          object DBEdit7: TDBEdit
            Left = 658
            Top = 15
            Width = 51
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'acc_DetailCode'
            DataSource = srcItems
            TabOrder = 1
            OnKeyDown = DBEdit7KeyDown
          end
          object DBEdit9: TDBEdit
            Left = 26
            Top = 15
            Width = 51
            Height = 21
            DataField = 'acc_CTopicCode2'
            DataSource = srcItems
            TabOrder = 3
            OnKeyDown = DBEdit9KeyDown
          end
          object DBEdit1: TDBEdit
            Left = 800
            Top = 15
            Width = 51
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'acc_TopicCode'
            DataSource = srcItems
            TabOrder = 0
            OnKeyDown = DBEdit1KeyDown
          end
          object DBEdit5: TDBEdit
            Left = 168
            Top = 15
            Width = 51
            Height = 21
            DataField = 'acc_CTopicCode'
            DataSource = srcItems
            TabOrder = 2
            OnKeyDown = DBEdit5KeyDown
          end
        end
        object pnlTozin: TPanel
          Left = 0
          Top = 264
          Width = 918
          Height = 114
          Align = alTop
          BevelOuter = bvNone
          Color = clActiveBorder
          ParentBackground = False
          TabOrder = 16
          DesignSize = (
            918
            114)
          object Label28: TLabel
            Left = 838
            Top = 9
            Width = 23
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1578#1608#1586#1740#1606
            ExplicitLeft = 761
          end
          object Label29: TLabel
            Left = 838
            Top = 36
            Width = 50
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1662#1604#1575#1705' '#1582#1608#1583#1585#1608
            ExplicitLeft = 761
          end
          object Label30: TLabel
            Left = 838
            Top = 63
            Width = 27
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1608#1586#1606' '#1662#1585
            ExplicitLeft = 761
          end
          object Label31: TLabel
            Left = 838
            Top = 90
            Width = 49
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1608#1585#1586#1606' '#1582#1575#1604#1589
            ExplicitLeft = 761
          end
          object Label32: TLabel
            Left = 262
            Top = 9
            Width = 46
            Height = 13
            Caption = #1586#1605#1575#1606' '#1578#1608#1586#1740#1606
          end
          object Label33: TLabel
            Left = 262
            Top = 36
            Width = 41
            Height = 13
            Caption = #1606#1575#1605' '#1585#1575#1606#1606#1583#1607
          end
          object Label34: TLabel
            Left = 262
            Top = 63
            Width = 43
            Height = 13
            Caption = #1608#1586#1606' '#1582#1575#1604#1740
          end
          object Label35: TLabel
            Left = 262
            Top = 91
            Width = 57
            Height = 13
            Caption = #1705#1587#1585#1740' '#1711#1606#1583#1605
          end
          object Label36: TLabel
            Left = 86
            Top = 63
            Width = 38
            Height = 13
            Caption = #1608#1586#1606' '#1605#1608#1579#1585
          end
          object SpeedButton1: TSpeedButton
            Left = 655
            Top = 5
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton1Click
            ExplicitLeft = 578
          end
          object lblWheatDeficit: TLabel
            Left = 244
            Top = 90
            Width = 12
            Height = 14
            Caption = '...'
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object edtTozinID: TDBEdit
            Left = 677
            Top = 6
            Width = 121
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'TozinID'
            DataSource = srcRecipts
            TabOrder = 0
          end
          object edtMachineFullWeight1: TDBEdit
            Left = 718
            Top = 60
            Width = 80
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'MachineFullWeight'
            DataSource = srcTozin
            TabOrder = 1
          end
          object edtMandeh: TDBEdit
            Left = 718
            Top = 87
            Width = 80
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'Mandeh'
            DataSource = srcTozin
            TabOrder = 2
          end
          object edtTozinDate: TDBEdit
            Left = 135
            Top = 6
            Width = 121
            Height = 21
            DataField = 'TozinDate'
            DataSource = srcTozin
            TabOrder = 3
          end
          object edtMachineName1: TDBEdit
            Left = 4
            Top = 33
            Width = 252
            Height = 21
            DataField = 'MachineName'
            DataSource = srcTozin
            TabOrder = 4
          end
          object edtMachineWeight1: TDBEdit
            Left = 176
            Top = 60
            Width = 80
            Height = 21
            DataField = 'MachineWeight'
            DataSource = srcTozin
            TabOrder = 5
          end
          object edtInputWeight1: TDBEdit
            Left = 3
            Top = 60
            Width = 80
            Height = 21
            DataField = 'InputWeight'
            DataSource = srcItems
            TabOrder = 6
          end
          inline frPelakF1: TfrPelakF
            Left = 655
            Top = 26
            Width = 191
            Height = 29
            Anchors = [akTop, akRight]
            TabOrder = 7
            ExplicitLeft = 655
            ExplicitTop = 26
            inherited Label10: TLabel
              Top = 10
              ExplicitTop = 10
            end
            inherited mskPelak4: TMaskEdit
              Top = 4
              ExplicitTop = 4
            end
          end
        end
        object pnlTozin2: TPanel
          Left = 0
          Top = 539
          Width = 918
          Height = 26
          Align = alTop
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 17
          DesignSize = (
            918
            26)
          object Label39: TLabel
            Left = 677
            Top = 6
            Width = 57
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1588#1605#1575#1585#1607' '#1581#1608#1575#1604#1607
            FocusControl = edtAidNumber1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 600
          end
          object Label40: TLabel
            Left = 837
            Top = 6
            Width = 53
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1608#1586#1606' '#1575#1593#1604#1575#1605#1740#1607
            FocusControl = edtInputWeight
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 760
          end
          object Label42: TLabel
            Left = 501
            Top = 6
            Width = 48
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1578#1575#1585#1740#1582' '#1581#1608#1575#1604#1607
            FocusControl = edtAidDate
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 424
          end
          object Label41: TLabel
            Left = 133
            Top = 6
            Width = 38
            Height = 13
            Alignment = taRightJustify
            Caption = #1576#1607#1575#1610' '#1603#1604
            FocusControl = edtTotalInputPrice
          end
          object Label43: TLabel
            Left = 262
            Top = 6
            Width = 16
            Height = 13
            Alignment = taRightJustify
            Caption = #1601#1610
          end
          object edtAidNumber1: TDBEdit
            Left = 594
            Top = 2
            Width = 80
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'AidNumber'
            DataSource = srcItems
            TabOrder = 1
          end
          object edtInputWeight: TDBEdit
            Left = 754
            Top = 5
            Width = 80
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'InputWeight'
            DataSource = srcItems
            TabOrder = 0
          end
          object edtAidDate: TDBEdit
            Left = 418
            Top = 2
            Width = 80
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'AidDate'
            DataSource = srcItems
            TabOrder = 2
          end
          object edtTotalInputPrice: TDBEdit
            Left = 4
            Top = 3
            Width = 127
            Height = 19
            Ctl3D = False
            DataField = 'TotalInputPrice'
            DataSource = srcItems
            ParentCtl3D = False
            TabOrder = 3
          end
          object edtUnitSellPrice1: TDBEdit
            Left = 176
            Top = 2
            Width = 80
            Height = 21
            Ctl3D = True
            DataField = 'UnitSellPrice'
            DataSource = srcItems
            ParentCtl3D = False
            TabOrder = 4
          end
        end
        object DBNavigator2: TDBNavigator
          Left = 0
          Top = 727
          Width = 918
          Height = 25
          DataSource = srcItems
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete]
          Align = alBottom
          Flat = True
          TabOrder = 18
        end
        object GroupBox1: TGroupBox
          Left = 0
          Top = 664
          Width = 918
          Height = 63
          Align = alBottom
          Caption = #1578#1608#1590#1610#1581#1575#1578' '#1601#1585#1605
          TabOrder = 19
          object dbmmoReciptNote: TDBMemo
            Left = 2
            Top = 15
            Width = 914
            Height = 46
            Align = alClient
            BevelInner = bvLowered
            BevelOuter = bvSpace
            BevelKind = bkTile
            DataField = 'ReciptNote'
            DataSource = srcRecipts
            TabOrder = 0
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = #1604#1740#1587#1578
        ImageIndex = 1
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 918
          Height = 752
          Align = alClient
          DataSource = srcRecipts
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ReciptNumber'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ReciptDate'
              Width = 68
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'StoreID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_StoresName'
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PersonID1'
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_PersonName1'
              Width = 250
              Visible = True
            end>
        end
      end
    end
  end
  inherited ActionList: TActionList
    Left = 291
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcRecipts
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcRecipts
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcRecipts
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcRecipts
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcRecipts
    end
    object DataSetInsert2: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      Hint = ' '
      ShortCut = 16497
      DataSource = srcItems
    end
    object DataSetEdit2: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      Hint = ' '
      ShortCut = 16499
      DataSource = srcItems
    end
    object DataSetCancel2: TDataSetCancel
      Category = 'Dataset'
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = ' '
      DataSource = srcItems
    end
    object DataSetDelete2: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
      DataSource = srcItems
    end
    object actSendExel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendExelExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actPrint: TAction
      Caption = #1670#1600#1600#1600#1575#1662
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object DataSetPost2: TDataSetPost
      Category = 'Dataset'
      Caption = #1578#1575#1610#1610#1583
      ShortCut = 16503
      DataSource = srcItems
    end
    object actSearch: TAction
      Caption = #1580#1587#1578#1580#1608
      ShortCut = 114
      OnExecute = actSearchExecute
    end
    object actRecall: TAction
      Hint = #1601#1585#1575#1582#1608#1575#1606#1610' '#1575#1586' ...'
      ImageIndex = 8
      OnExecute = actRecallExecute
    end
    object actRecallSpecial: TAction
      Hint = #1601#1585#1575#1582#1608#1575#1606#1610' '#1608#1610#1688#1607
      ImageIndex = 9
      OnExecute = actRecallSpecialExecute
    end
    object actPrint1: TAction
      Caption = #1670#1600#1600#1600#1575#1662' 1'
      OnExecute = actPrint1Execute
    end
    object actPrint2: TAction
      Caption = #1670#1600#1600#1600#1575#1662' 2'
      OnExecute = actPrint2Execute
    end
    object actNoteMaster: TAction
      Caption = #1578#1608#1590#1610#1581#1575#1578' '#1601#1585#1605
      OnExecute = actNoteMasterExecute
    end
    object actSearchReciptNumber: TAction
      Caption = '...'
      OnExecute = actSearchReciptNumberExecute
    end
    object actCorrelateRecipt: TAction
      Caption = #1579#1576#1578' '#1601#1585#1605' '#1605#1585#1578#1576#1591
      OnExecute = actCorrelateReciptExecute
    end
    object actDeficits: TAction
      Caption = #1603#1587#1608#1585#1575#1578' / '#1575#1590#1575#1601#1575#1578
      OnExecute = actDeficitsExecute
    end
    object actCorrelateConversionCo: TAction
      Caption = #1579#1576#1578' '#1601#1585#1605' '#1590#1585#1575#1610#1576
      OnExecute = actCorrelateConversionCoExecute
    end
    object actReciptStateTo0: TAction
      Caption = #1576#1575#1591#1604' '#1603#1585#1583#1606
      OnExecute = actReciptStateTo0Execute
    end
    object actReportSearch: TAction
      Caption = #1580#1587#1578#1580#1608#1610' '#1711#1586#1575#1585#1588#1575#1578
      OnExecute = actReportSearchExecute
    end
    object actReciptOnFormsRange: TAction
      Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1582#1586#1575#1606#1607#8207#1583#1575#1585#1610
      OnExecute = actReciptOnFormsRangeExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 363
    Top = 4
    Bitmap = {
      494C01010A000D00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000426BF700426BF70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000426BF700426BF70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000426BF7000021C6000021C600426BF700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000426BF7004080FF004080FF00426BF700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000426BF7000021C600527BEF005273FF000021C600426BF7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000426BF7004080FF004080FF004080FF004080FF00426BF7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000426BF7000021C600426BF7001042E700214AEF00527BEF000021C600426B
      F700000000000000000000000000000000000000000000000000000000000000
      0000426BF7004080FF004080FF004080FF004080FF004080FF004080FF00426B
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000426B
      F7000018BD00527BEF000821E7000021E7000029EF000021E700527BEF000021
      C600426BF700000000000000000000000000000000000000000000000000426B
      F7004080FF004080FF004080FF004080FF004080FF004080FF004080FF004080
      FF00426BF7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000426BF7000021
      C600527BEF001031D6000021D6000821E7000021DE000029DE001031E700527B
      EF000021C600426BF70000000000000000000000000000000000426BF7004080
      FF004080FF004080FF004080FF004080FF004080FF004080FF004080FF004080
      FF004080FF00426BF70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000426BF7000018BD000829
      D6000021D6000021D6000021D6000021CE000021D6000021D6000021CE000018
      D6001031D6000018BD00426BF7000000000000000000426BF7004080FF004080
      FF004080FF004080FF004080FF004080FF004080FF004080FF004080FF004080
      FF004080FF004080FF00426BF700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000426BF7000021C6000021CE000818
      D6000021CE000018CE000018CE000018CE000018CE000018CE000018CE000018
      D6000018CE001029D6000021C600426BF700426BF7004080FF004080FF004080
      FF004080FF004080FF004080FF004080FF004080FF004080FF004080FF004080
      FF004080FF004080FF004080FF00426BF7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000810BD000021C6000021C6000818
      BD000018C6000018C6000018C6000018C6000018C6000018C6000018BD000010
      C6001018BD000010C6000018C6000818BD004080FF004080FF004080FF004080
      FF004080FF004080FF004080FF004080FF004080FF004080FF004080FF004080
      FF004080FF004080FF004080FF004080FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000010BD000010BD000010BD000010BD000010BD000010C6000010C6000010
      BD00000000000000000000000000000000000000000000000000000000000000
      00004080FF004080FF004080FF004080FF004080FF004080FF004080FF004080
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000810BD000008AD000010B5000008B5000010B5000008B5000010B5000010
      B500000000000000000000000000000000000000000000000000000000000000
      00004080FF004080FF004080FF004080FF004080FF004080FF004080FF004080
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001021BD000010AD000008AD000008AD000008AD000010AD000008A5001021
      BD00000000000000000000000000000000000000000000000000000000000000
      00004080FF004080FF004080FF004080FF004080FF004080FF004080FF004080
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000424ABD000808A5000008A5000008A50008089C000000A50000089C004A4A
      BD00000000000000000000000000000000000000000000000000000000000000
      00004080FF004080FF004080FF004080FF004080FF004080FF004080FF004080
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000424ABD000800A5000808A5000000A5000800A5000008A5000008A500424A
      BD00000000000000000000000000000000000000000000000000000000000000
      00004080FF004080FF004080FF004080FF004080FF004080FF004080FF004080
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000424ABD003939B50000009C0000009C003939B50000009C003939B500424A
      BD00000000000000000000000000000000000000000000000000000000000000
      00004080FF004080FF004080FF004080FF004080FF004080FF004080FF004080
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000736BBD000008AD000008AD000008AD000008AD000008AD000008AD006B63
      C600000000000000000000000000000000000000000000000000000000000000
      00004080FF004080FF004080FF004080FF004080FF004080FF004080FF004080
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000636B7300C69C94000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006BAD840021842900218429006BAD8400000000000000
      0000000000000000000000000000000000006394B500218CEF002173B500CE9C
      9400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006A0000006A0000006A00
      0000000000006A0000006A0000006A0000000000000000000000000000000000
      0000005803000000000000000000000000000000000000000000000000000000
      0000ADADAD00F7F7F700F7F7F700ADADAD005A5A5A0084848400ADADAD00E7DE
      DE00E7E7E700B5B5B50000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000004AB5FF0042A5FF00218CEF007B84
      9400CE9C94000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006A6A6A006A0000000000
      00000000000000000000980000006A6A6A000000000000000000000000000058
      03006AFF6A00005803000000000000000000000000000000000000000000BDB5
      B500E7E7E700FFFFFF00EFEFEF00B5ADAD004A4A4A0031313100424242008484
      8400ADADAD00E7E7E700DEDEDE00000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000052BDFF005ABDFF00218C
      EF002173B500CE9C940000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006A6A6A006A00
      00006A0000006A0000006A000000000000000000000000000000000000006AFF
      6A006AB6500000840000005803000000000000000000CECECE00F7F7F700F7F7
      F700F7F7F700C6C6C600ADADAD00A5A5A500ADADAD00B5ADAD009C9C9C005A5A
      5A003939390042424200A59C9C00000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000031A5FF0052BDFF0042A5
      FF00218CEF0084849400CE9C9400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006A00
      000000000000980000006A000000000000000000000000000000000000006AFF
      6A006AB6500000840000005803000000000000000000EFEFEF00F7F7F700DEDE
      DE00BDBDBD00B5B5B500D6D6D600A5A5A500A59C9C00A59C9C00ADA5A500B5B5
      B500A5A5A5006B6B6B00A59C9C00000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      00000000000000000000000000000000000000000000000000000000000052BD
      FF005ABDFF003184D60052636B00000000009C6B6B00CEA59C00D6B5A500CE9C
      9C00C69494000000000000000000000000000000000000000000000000009800
      00006A0000006A00000000000000000000000000000000580300005803000058
      03000058030000580300005803000058030000000000B5ADAD00A5A5A500D6D6
      D600DEDEDE00D6D6D600EFE7E700F7F7F700EFEFEF00D6D6D600CECECE00B5B5
      B500ADA5A500A59C9C009C9C9C0000000000000000006BAD8400218429002184
      290021842900218429002184290094DE8C0039B5520021842900218429002184
      290021842900218429006BAD84000000000000000000000000000000000031A5
      FF0052BDFF00C6CEDE009C9C9C00AD8C8400E7D6BD00FFFFD600FFFFDE00FFFF
      D600EFDEC6000000000000000000000000000000000000000000000000006A6A
      6A006A0000006A6A6A0000000000000000000000000000000000000000000000
      0000067B110000000000000000000000000000000000BDBDBD00D6D6D600D6D6
      D600D6D6D600E7E7E700F7F7F700C6BDC600CECECE00E7E7E700E7E7E700D6D6
      D600CECECE00BDBDBD00A5A5A500000000000000000063A5630039B5520039B5
      520039B5520039B5520039B5520039B5520039B5520039B5520039B5520039B5
      520039B5520039B5520021842900000000000000000000000000000000000000
      000000000000C6ADAD00CEA59400FFE7BD00FFF7CE00FFFFD600FFFFD600FFFF
      DE00FFFFE700FFFFFF00C6A5A500000000000000000000000000000000000000
      0000980000000000000000000000000000000000000000000000000000000000
      0000067B110000000000000000000000000000000000BDBDBD00DEDEDE00D6D6
      D600E7E7E700B5B5B500BDBDBD00D6F7D600EFEFEF00F7BDB500BDBDBD00ADA5
      A500ADADAD00BDBDBD00B5B5B500000000000000000063A5630094DE8C0094DE
      8C0094DE8C0094DE8C0094DE8C0094DE8C0039B5520094DE8C0094DE8C0094DE
      8C0094DE8C0094DE8C0021842900000000000000000000000000000000000000
      000000000000BD8C8C00EFDEB500F7D6AD00FFF7CE00FFFFD600FFFFDE00FFFF
      EF00FFFFF700FFFFFF00F7EFDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000067B11000000000000000000000000000000000000000000B5B5B500D6D6
      D600C6C6C600CEC6C600F7F7F700F7F7F700EFEFEF00E7E7E700E7E7E700D6D6
      D600CECECE00A5A5A5000000000000000000000000006BAD840063A5630063A5
      630063A5630063A5630063A5630094DE8C0039B5520021842900218429002184
      290021842900218429006BAD8400000000000000000000000000000000000000
      000000000000E7CEAD00FFEFBD00F7CE9C00FFEFC600FFFFD600FFFFDE00FFFF
      F700FFFFF700FFFFDE00FFFFDE00C69494000000000000006A0000006A000000
      6A0000006A0000006A0000006A00000000000000000000000000000000000000
      0000067B1100000000000000000000000000000000000000000000000000ADAD
      AD00F7F7F700DEDEDE00BDBDBD00C6C6C600D6D6D600D6D6D600D6D6D600ADAD
      AD00BDB5B5000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFD6B500FFE7B500F7C68C00F7DEB500FFFFD600FFFFDE00FFFF
      EF00FFFFEF00FFFFDE00FFFFDE00BD9C8C000000000000006A0000006A000000
      000000000000000000000000B600000000000000000000000000000000000000
      0000067B11000000000000000000000000000000000000000000000000000000
      0000EFDEDE00FFE7D600FFDED600F7DED600F7DED600E7DEDE00DEDEDE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7CEAD00FFEFBD00EFBD8400F7C69400FFEFC600FFFFD600FFFF
      D600FFFFD600FFFFD600FFFFDE00C694940000000000000000006A6A6A000000
      6A00000000000000000000000000000000000000000000000000000000000000
      0000067B11000000000000000000000000000000000000000000000000000000
      0000E7C6BD00FFDED600FFDECE00FFCEBD00FFC6B500F7B5A500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6ADA500FFEFBD00F7DEAD00F7CE9C00F7D6A500F7E7BD00FFFF
      D600FFFFD600FFFFD600FFFFD600000000000000000000000000000000000000
      6A0000006A000000000000000000000000000000000000000000000000000000
      0000067B11000000000000000000000000000000000000000000000000000000
      0000E7CEC600FFDED600FFDECE00FFCEBD00FFC6B500F7B5A500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C69C8C00FFFFFF00FFFFFF00F7C69400EFBD8400F7C6
      9400F7D6AD00FFEFC600BD9C8C00000000000000000000000000000000000000
      00006A6A6A0000006A0000000000000000000000000000000000000000000000
      0000067B11000000000000000000000000000000000000000000000000000000
      0000E7CEC600FFDED600FFDECE00FFCEBD00FFC6B500F7BDB500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006BAD840063A5630063A563006BAD8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFEFE700FFFFEF00FFE7B500F7DEAD00FFE7
      B500FFEFBD00C69C940000000000000000000000000000006A0000006A000000
      00000000000000006A0000006A00000000000000000000000000000000000000
      0000067B1100000000000000000000000000000000000000000000000000E7C6
      C600FFEFE700FFDED600FFDECE00FFCEBD00FFCEB50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C69C8C00CEA59C00C69C
      9400000000000000000000000000000000000000000011007B0011007B001100
      7B0011007B0011007B0011007B00000000000000000000000000000000000000
      0000067B1100000000000000000000000000000000000000000000000000E7CE
      C600E7C6C600E7C6BD00E7BDB500E7B5AD00F7BDB50000000000000000000000
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
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00FE7FFE7F00000000FC3FFC3F00000000
      F81FF81F00000000F00FF00F00000000E007E00700000000C003C00300000000
      800180010000000000000000000000000000000000000000F00FF00F00000000
      F00FF00F00000000F00FF00F00000000F00FF00F00000000F00FF00F00000000
      F00FF00F00000000F00FF00F00000000FFFF9FFFFFFFFFFFFC3F0FFF88F7F003
      FC3F07FF9CE3E001FC3F83FFC1E18001FC3F81FFE9E18001FC3FE107E3808001
      8001E007E3F780018001F801F7F780018001F801FFF7C0038001F80081F7E007
      FC3FF8009DF7F01FFC3FF800CFF7F03FFC3FF801E7F7F03FFC3FFC01F3F7F03F
      FC3FFE0399F7E07FFFFFFF8F81F7E07FFFFFF81FF8FFFFFFFFFFE007F87F8FFF
      FFFFC003F07F807FFFFF8001F03F800FFFFF8001E03F8007FFFF0000E01F8007
      80010000E01F800380010000F30F800380010000FF0F800180010000FF878001
      FFFF0000FF878001FFFF8001FFC38003FFFF8001FFC78007FFFFC003FFEFC3C7
      FFFFE007FFFFFE0FFFFFF81FFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcRecipts
    OpenDataSource = False
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'DBPipeline1'
    Left = 599
    Top = 4
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'StoreID'
      FieldName = 'StoreID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = '_StoresName'
      FieldName = '_StoresName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'ReciptNumber'
      FieldName = 'ReciptNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'ReciptDate'
      FieldName = 'ReciptDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'PersonID1'
      FieldName = 'PersonID1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = '_PersonAddress'
      FieldName = '_PersonAddress'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = '_PersonTel'
      FieldName = '_PersonTel'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = '_PersonPostalCode'
      FieldName = '_PersonPostalCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = '_PersonEconomicNumber'
      FieldName = '_PersonEconomicNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = '_PersonName1'
      FieldName = '_PersonName1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'PersonID2'
      FieldName = 'PersonID2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = '_PersonName2'
      FieldName = '_PersonName2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'ReciptType'
      FieldName = 'ReciptType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'ServiceValue'
      FieldName = 'ServiceValue'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'ReciptValue'
      FieldName = 'ReciptValue'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'TotalValue'
      FieldName = 'TotalValue'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'AddDecValue'
      FieldName = 'AddDecValue'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'DocNo'
      FieldName = 'DocNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'DocDate'
      FieldName = 'DocDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'ReciptNote'
      FieldName = 'ReciptNote'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'ParentReciptID'
      FieldName = 'ParentReciptID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = 'ModifyDate'
      FieldName = 'ModifyDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = 'ReciptState'
      FieldName = 'ReciptState'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField24: TppField
      FieldAlias = 'UseUnitID'
      FieldName = 'UseUnitID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField25: TppField
      FieldAlias = '_UseUnitName'
      FieldName = '_UseUnitName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField26: TppField
      FieldAlias = 'ExpireDate'
      FieldName = 'ExpireDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField27: TppField
      FieldAlias = 'SecondType'
      FieldName = 'SecondType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField28: TppField
      FieldAlias = '_ValuationType'
      FieldName = '_ValuationType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField29: TppField
      FieldAlias = 'ReciptID'
      FieldName = 'ReciptID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField30: TppField
      FieldAlias = 'OperatorID'
      FieldName = 'OperatorID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField31: TppField
      FieldAlias = '_PersonFax'
      FieldName = '_PersonFax'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField32: TppField
      FieldAlias = 'AidDate'
      FieldName = 'AidDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField33: TppField
      FieldAlias = '_CustValuationType'
      FieldName = '_CustValuationType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField34: TppField
      FieldAlias = '_StoreKind'
      FieldName = '_StoreKind'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField35: TppField
      FieldAlias = 'FirstUser'
      FieldName = 'FirstUser'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField36: TppField
      FieldAlias = 'LastUser'
      FieldName = 'LastUser'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField37: TppField
      FieldAlias = 'ReciptStartDate'
      FieldName = 'ReciptStartDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField38: TppField
      FieldAlias = 'ReciptEndDate'
      FieldName = 'ReciptEndDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField39: TppField
      FieldAlias = '_HasDeficit'
      FieldName = '_HasDeficit'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField40: TppField
      FieldAlias = 'StoreID2'
      FieldName = 'StoreID2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField41: TppField
      FieldAlias = '_StoresName2'
      FieldName = '_StoresName2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField42: TppField
      FieldAlias = 'UseOtherID'
      FieldName = 'UseOtherID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField43: TppField
      FieldAlias = 'YearID'
      FieldName = 'YearID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField44: TppField
      FieldAlias = 'ServerID'
      FieldName = 'ServerID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField45: TppField
      FieldAlias = 'InsertDate'
      FieldName = 'InsertDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField46: TppField
      FieldAlias = 'AidNumber'
      FieldName = 'AidNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField47: TppField
      FieldAlias = 'PersonID3'
      FieldName = 'PersonID3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField48: TppField
      FieldAlias = 'PrvYearID'
      FieldName = 'PrvYearID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField49: TppField
      FieldAlias = 'SellsMethod'
      FieldName = 'SellsMethod'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField50: TppField
      FieldAlias = 'SellsEmporium'
      FieldName = 'SellsEmporium'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 49
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField51: TppField
      FieldAlias = 'TozinID'
      FieldName = 'TozinID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 50
      Searchable = False
      Sortable = False
    end
  end
  object qryItems: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeInsert = qryItemsBeforeInsert
    AfterInsert = qryItemsAfterInsert
    AfterEdit = qryItemsAfterEdit
    BeforePost = qryItemsBeforePost
    BeforeDelete = qryItemsBeforeDelete
    AfterDelete = qryItemsAfterDelete
    AfterScroll = qryItemsAfterScroll
    Parameters = <
      item
        Name = 'ReciptID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 100
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
      'SELECT  * FROM      ReciptItems'
      'WHERE  ReciptID = :ReciptID'
      'and ( YearID = :YearID )'
      'and ( ServerID= :ServerID  )'
      ''
      'ORDER BY     ReciptItemID')
    Left = 437
    Top = 217
    object qryItemsReciptItemID: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1606#1583#1607
      FieldName = 'ReciptItemID'
    end
    object qryItemsReciptID: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'ReciptID'
    end
    object qryItemsStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'StuffCode'
      OnChange = qryItemsStuffCodeChange
    end
    object qryItemsStuffSize: TStringField
      DisplayLabel = #1575#1576#1600#1600#1593#1575#1583
      FieldName = 'StuffSize'
      FixedChar = True
      Size = 12
    end
    object qryItemsStuffAlloy: TStringField
      DisplayLabel = #1570#1604#1610#1575#1688
      FieldName = 'StuffAlloy'
      Size = 12
    end
    object qryItemsInputEntity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'InputEntity'
      OnChange = qryItemsInputEntityChange
    end
    object qryItemsOutputEntity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'OutputEntity'
    end
    object qryItemsInputWeight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1608#1585#1608#1583#1610
      FieldName = 'InputWeight'
      OnChange = qryItemsInputWeightChange
      OnGetText = qryItemsInputWeightGetText
    end
    object qryItemsOutputWeight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1582#1585#1608#1580#1610
      FieldName = 'OutputWeight'
      OnGetText = qryItemsInputWeightGetText
    end
    object qryItemsRequestedEntity: TFloatField
      DisplayLabel = #1583#1585#1589#1583' '#1605#1608#1575#1583' '#1586#1575#1574#1583
      FieldName = 'RequestedEntity'
      OnChange = qryItemsRequestedWeightChange
    end
    object qryItemsRequestedWeight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1606#1575#1582#1575#1604#1589
      FieldName = 'RequestedWeight'
      OnChange = qryItemsRequestedWeightChange
    end
    object qryItemsStuffGrade: TWordField
      DisplayLabel = #1583#1585#1580#1607' '#1603#1575#1604#1575
      FieldName = 'StuffGrade'
    end
    object qryItemsTotalInputPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1603#1604' '#1608#1575#1585#1583#1607
      FieldName = 'TotalInputPrice'
      currency = True
      Precision = 19
    end
    object qryItemsTotalOutputPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1603#1604' '#1589#1575#1583#1585#1607
      FieldName = 'TotalOutputPrice'
      currency = True
      Precision = 19
    end
    object qryItemsTotallSellPrice: TBCDField
      FieldName = 'TotallSellPrice'
      currency = True
      Precision = 19
    end
    object qryItemsUnitSellPrice: TFMTBCDField
      DisplayLabel = #1601#1610
      FieldName = 'UnitSellPrice'
      OnChange = qryItemsUnitSellPriceChange
      currency = True
      Precision = 19
    end
    object qryItemsItemNote: TStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' '#1603#1575#1604#1575
      FieldName = 'ItemNote'
      Size = 100
    end
    object qryItems_StuffName: TStringField
      DisplayLabel = #1588#1600#1600#1600#1600#1600#1600#1585#1581'   '#1603#1600#1600#1600#1600#1575#1604#1575
      FieldKind = fkLookup
      FieldName = '_StuffName'
      LookupDataSet = qryStuff_Unit_TecInf
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'c_StuffName'
      KeyFields = 'StuffCode'
      Required = True
      Size = 100
      Lookup = True
    end
    object qryItems_UnitName: TStringField
      DisplayLabel = #1608#1575#1581#1583
      FieldKind = fkLookup
      FieldName = '_UnitName'
      LookupDataSet = qryStuff_Unit_TecInf
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'UnitName'
      KeyFields = 'StuffCode'
      Size = 100
      Lookup = True
    end
    object qryItems_StuffTecInfo: TStringField
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1601#1606#1610
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = '_StuffTecInfo'
      LookupDataSet = qryStuff_Unit_TecInf
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'c_StuffTecInfo'
      KeyFields = 'StuffCode'
      Size = 100
      Lookup = True
    end
    object qryItemsacc_TopicCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576
      FieldName = 'acc_TopicCode'
    end
    object qryItems_TopicCodeName: TStringField
      DisplayLabel = #1588#1585#1581' '#1581#1587#1575#1576
      FieldKind = fkLookup
      FieldName = '_TopicCodeName'
      LookupDataSet = DmF.qryAccTopicCode
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'MoeenName'
      KeyFields = 'acc_TopicCode'
      Size = 100
      Lookup = True
    end
    object qryItemsacc_DetailCode: TStringField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610
      FieldName = 'acc_DetailCode'
      EditMask = '999999999999999999'
      Size = 12
    end
    object qryItems_DetailCode: TStringField
      DisplayLabel = #1588#1585#1581' '#1578#1601#1589#1610#1604#1610
      FieldKind = fkLookup
      FieldName = '_DetailCode'
      LookupDataSet = DmF.qryAccDetailCode
      LookupKeyFields = 'DetailCode'
      LookupResultField = 'DetailName'
      KeyFields = 'acc_DetailCode'
      Size = 100
      Lookup = True
    end
    object qryItemsacc_CTopicCode: TStringField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'
      FieldName = 'acc_CTopicCode'
      EditMask = '999999999999999999'
      Size = 12
    end
    object qryItemsUseUnitID: TIntegerField
      DisplayLabel = #1603#1583' '#1605#1581#1604' '#1605#1589#1585#1601
      FieldName = 'UseUnitID'
    end
    object qryItems_UseUnitName: TStringField
      DisplayLabel = #1606#1575#1605' '#1605#1581#1604' '#1605#1589#1585#1601
      FieldKind = fkLookup
      FieldName = '_UseUnitName'
      LookupDataSet = qryUseUnits
      LookupKeyFields = 'UseUnitID'
      LookupResultField = 'UseUnitName'
      KeyFields = 'UseUnitID'
      Size = 100
      Lookup = True
    end
    object qryItemspreReciptItemID: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1575#1582#1608#1575#1606#1610
      FieldName = 'preReciptItemID'
    end
    object qryItems_CTopicCode: TStringField
      DisplayLabel = #1588#1585#1581' '#1578#1601#1589#1610#1604#1610'2'
      FieldKind = fkLookup
      FieldName = '_CTopicCode'
      LookupDataSet = DmF.qryAccCenterTopics
      LookupKeyFields = 'CTopicCode'
      LookupResultField = 'CTopicName'
      KeyFields = 'acc_CTopicCode'
      Size = 100
      Lookup = True
    end
    object qryItemsStuffDiameter: TFloatField
      DisplayLabel = #1590#1582#1575#1605#1578
      FieldName = 'StuffDiameter'
    end
    object qryItemsControlCode: TLargeintField
      Tag = 3
      DisplayLabel = #1587#1585#1610#1575#1604' '#1603#1606#1578#1585#1604
      FieldName = 'ControlCode'
    end
    object qryItemsacc_CTopicCode2: TStringField
      FieldName = 'acc_CTopicCode2'
      EditMask = '999999999999999999'
      Size = 12
    end
    object qryItemsAidDate: TStringField
      FieldName = 'AidDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryItemsDiscount: TIntegerField
      FieldName = 'Discount'
    end
    object qryItems_Carton: TIntegerField
      FieldKind = fkLookup
      FieldName = '_Carton'
      LookupDataSet = qryStuff_Unit_TecInf
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'Carton'
      KeyFields = 'StuffCode'
      Lookup = True
    end
    object qryItemsPersonID1: TIntegerField
      FieldName = 'PersonID1'
    end
    object qryItems_PersonName1: TStringField
      FieldKind = fkLookup
      FieldName = '_PersonName1'
      LookupDataSet = qryCustomers1
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'PersonID1'
      Size = 250
      Lookup = True
    end
    object qryItemsProductCode: TLargeintField
      DisplayLabel = #1603#1583' '#1605#1581#1589#1608#1604
      FieldName = 'ProductCode'
    end
    object qryItemsProductModel: TIntegerField
      DisplayLabel = #1605#1583#1604' '#1605#1581#1589#1608#1604
      FieldName = 'ProductModel'
    end
    object qryItems_ProductModelName: TStringField
      FieldKind = fkLookup
      FieldName = '_ProductModelName'
      LookupDataSet = qry_Lookup
      LookupKeyFields = 'LookUpID'
      LookupResultField = 'Name'
      KeyFields = 'ProductModel'
      Size = 255
      Lookup = True
    end
    object qryItems_ProductName: TStringField
      FieldKind = fkLookup
      FieldName = '_ProductName'
      LookupDataSet = qryStuff_Unit_TecInf
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'c_StuffName'
      KeyFields = 'ProductCode'
      Size = 255
      Lookup = True
    end
    object qryItemsItemDate: TStringField
      FieldName = 'ItemDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryItemsFirstUser: TStringField
      FieldName = 'FirstUser'
      Size = 50
    end
    object qryItemsLastUser: TStringField
      FieldName = 'LastUser'
      Size = 50
    end
    object qryItems_CTopicCode22: TStringField
      FieldKind = fkLookup
      FieldName = '_CTopicCode2'
      LookupDataSet = DmF.qryAccCenterTopics2
      LookupKeyFields = 'CTopicCode2'
      LookupResultField = 'CTopicName2'
      KeyFields = 'acc_CTopicCode2'
      Size = 150
      Lookup = True
    end
    object qryItemsWaterCo: TFloatField
      FieldName = 'WaterCo'
      OnChange = qryItemsRequestedWeightChange
    end
    object qryItemsDeficitValue: TBCDField
      FieldName = 'DeficitValue'
      currency = True
      Precision = 19
    end
    object qryItemsAuxiliary: TFloatField
      FieldName = 'Auxiliary'
    end
    object qryItemsOrderState: TWordField
      FieldName = 'OrderState'
    end
    object qryItemsContactRate: TFloatField
      FieldName = 'ContactRate'
    end
    object qryItemsShift: TIntegerField
      FieldName = 'Shift'
    end
    object qryItemsUnitSellPrice2: TBCDField
      FieldName = 'UnitSellPrice2'
      currency = True
      Precision = 19
    end
    object qryItemsMachineWeight: TFloatField
      FieldName = 'MachineWeight'
      OnChange = qryItemsMachineWeightChange
    end
    object qryItemsTotalWeight: TFloatField
      FieldName = 'TotalWeight'
    end
    object qryItemsMachineNo: TStringField
      FieldName = 'MachineNo'
      Size = 25
    end
    object qryItemsMachineName: TStringField
      FieldName = 'MachineName'
      Size = 50
    end
    object qryItemsMachineFullWeight: TFloatField
      FieldName = 'MachineFullWeight'
      OnChange = qryItemsMachineWeightChange
    end
    object qryItemsSugarCo: TFloatField
      FieldName = 'SugarCo'
      OnChange = qryItemsInputEntityChange
    end
    object qryItemsSugarEntity: TFloatField
      FieldName = 'SugarEntity'
    end
    object qryItemsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryItemsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryItemsAidNumber: TStringField
      FieldName = 'AidNumber'
      Size = 40
    end
    object qryItemsInvEntity: TFloatField
      FieldName = 'InvEntity'
      OnChange = qryItemsRequestedWeightChange
    end
    object qryItemsacc_CTopicCode3: TStringField
      FieldName = 'acc_CTopicCode3'
      EditMask = '999999999999999999'
      Size = 12
    end
    object qryItemsPrvYearID: TIntegerField
      FieldName = 'PrvYearID'
    end
    object qryItemsWaste1: TBCDField
      FieldName = 'Waste1'
      Precision = 18
      Size = 3
    end
    object qryItemsWaste2: TBCDField
      FieldName = 'Waste2'
      Precision = 18
      Size = 3
    end
    object qryItemsPortage: TBCDField
      FieldName = 'Portage'
      OnChange = qryItemsPortageChange
      Precision = 19
    end
  end
  object srcItems: TDataSource
    DataSet = qryItems
    Left = 44
    Top = 89
  end
  object qryRecipts: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    BeforeOpen = qryReciptsBeforeOpen
    BeforeInsert = qryReciptsBeforeInsert
    AfterInsert = qryReciptsAfterInsert
    BeforeEdit = qryReciptsBeforeEdit
    AfterEdit = qryReciptsAfterEdit
    BeforePost = qryReciptsBeforePost
    AfterPost = qryReciptsAfterPost
    BeforeCancel = qryReciptsBeforeCancel
    BeforeDelete = qryReciptsBeforeDelete
    AfterDelete = qryReciptsAfterDelete
    AfterScroll = qryReciptsAfterScroll
    Parameters = <
      item
        Name = 'ReciptType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 12
      end
      item
        Name = 'YearID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'SELECT *  FROM    Recipts'
      ''
      'WHERE     (ReciptType = :ReciptType)'
      'and ( YearID = :YearID )'
      ''
      'ORDER BY ReciptNumber')
    Left = 446
    Top = 9
    object qryReciptsStoreID: TSmallintField
      FieldName = 'StoreID'
      Required = True
      OnChange = qryReciptsStoreIDChange
    end
    object qryRecipts_StoresName: TStringField
      FieldKind = fkLookup
      FieldName = '_StoresName'
      LookupDataSet = qryStores
      LookupKeyFields = 'n_StoreID'
      LookupResultField = 'c_StoreName'
      KeyFields = 'StoreID'
      Required = True
      Size = 100
      Lookup = True
    end
    object qryReciptsReciptNumber: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'ReciptNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryReciptsReciptDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1601#1585#1605
      FieldName = 'ReciptDate'
      Required = True
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryReciptsPersonID1: TIntegerField
      FieldName = 'PersonID1'
      OnChange = qryReciptsPersonID1Change
    end
    object qryRecipts_PersonName: TStringField
      FieldKind = fkLookup
      FieldName = '_PersonAddress'
      LookupDataSet = qryCustomers1
      LookupKeyFields = 'CustID'
      LookupResultField = 'Address'
      KeyFields = 'PersonID1'
      Size = 120
      Lookup = True
    end
    object qryRecipts_PersonName3: TStringField
      FieldKind = fkLookup
      FieldName = '_PersonTel'
      LookupDataSet = qryCustomers1
      LookupKeyFields = 'CustID'
      LookupResultField = 'Tel'
      KeyFields = 'PersonID1'
      Size = 120
      Lookup = True
    end
    object qryRecipts_PersonName4: TStringField
      FieldKind = fkLookup
      FieldName = '_PersonPostalCode'
      LookupDataSet = qryCustomers1
      LookupKeyFields = 'CustID'
      LookupResultField = 'PostalCode'
      KeyFields = 'PersonID1'
      Size = 120
      Lookup = True
    end
    object qryRecipts_PersonNationalID: TStringField
      FieldKind = fkLookup
      FieldName = '_PersonNationalID'
      LookupDataSet = qryCustomers1
      LookupKeyFields = 'CustID'
      LookupResultField = 'NationalID'
      KeyFields = 'PersonID1'
      Size = 30
      Lookup = True
    end
    object qryRecipts_PersonName5: TStringField
      FieldKind = fkLookup
      FieldName = '_PersonEconomicNumber'
      LookupDataSet = qryCustomers1
      LookupKeyFields = 'CustID'
      LookupResultField = 'EconomicNumber'
      KeyFields = 'PersonID1'
      Size = 120
      Lookup = True
    end
    object qryRecipts_PersonName1: TStringField
      FieldKind = fkLookup
      FieldName = '_PersonName1'
      LookupDataSet = qryCustomers1
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'PersonID1'
      Required = True
      Size = 120
      Lookup = True
    end
    object qryReciptsPersonID2: TIntegerField
      FieldName = 'PersonID2'
      OnChange = qryReciptsPersonID2Change
    end
    object qryRecipts_PersonName2: TStringField
      FieldKind = fkLookup
      FieldName = '_PersonName2'
      LookupDataSet = qryCustomers2
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'PersonID2'
      Size = 120
      Lookup = True
    end
    object qryReciptsReciptType: TWordField
      FieldName = 'ReciptType'
    end
    object qryReciptsServiceValue: TBCDField
      FieldName = 'ServiceValue'
      currency = True
      Precision = 19
    end
    object qryReciptsReciptValue: TBCDField
      FieldName = 'ReciptValue'
      currency = True
      Precision = 19
    end
    object qryReciptsTotalValue: TBCDField
      FieldName = 'TotalValue'
      currency = True
      Precision = 19
    end
    object qryReciptsAddDecValue: TBCDField
      FieldName = 'AddDecValue'
      currency = True
      Precision = 19
    end
    object qryReciptsDocNo: TIntegerField
      FieldName = 'DocNo'
    end
    object qryReciptsDocDate: TStringField
      FieldName = 'DocDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryReciptsReciptNote: TStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' '#1601#1585#1605
      FieldName = 'ReciptNote'
      Size = 1500
    end
    object qryReciptsParentReciptID: TIntegerField
      FieldName = 'ParentReciptID'
    end
    object qryReciptsModifyDate: TDateTimeField
      FieldName = 'ModifyDate'
      EditMask = '9999/99/99'
    end
    object qryReciptsReciptState: TWordField
      FieldName = 'ReciptState'
      Required = True
    end
    object qryReciptsUseUnitID: TIntegerField
      DisplayLabel = #1603#1583' '#1605#1581#1604' '#1605#1589#1585#1601
      FieldName = 'UseUnitID'
    end
    object qryRecipts_UseUnitName: TStringField
      DisplayLabel = #1606#1575#1605' '#1605#1581#1604' '#1605#1589#1585#1601
      FieldKind = fkLookup
      FieldName = '_UseUnitName'
      LookupDataSet = qryUseUnits
      LookupKeyFields = 'UseUnitID'
      LookupResultField = 'UseUnitName'
      KeyFields = 'UseUnitID'
      Size = 100
      Lookup = True
    end
    object qryReciptsExpireDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1575#1606#1602#1590#1575#1569
      FieldName = 'ExpireDate'
      FixedChar = True
      Size = 10
    end
    object qryReciptsSecondType: TWordField
      FieldName = 'SecondType'
      Required = True
      OnChange = qryReciptsSecondTypeChange
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryRecipts_ValuationType: TIntegerField
      FieldKind = fkLookup
      FieldName = '_ValuationType'
      LookupDataSet = qryStores
      LookupKeyFields = 'n_StoreID'
      LookupResultField = 'n_ValuationType'
      KeyFields = 'StoreID'
      Lookup = True
    end
    object qryReciptsReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryReciptsOperatorID: TIntegerField
      FieldName = 'OperatorID'
    end
    object qryRecipts_PersonFax: TStringField
      FieldKind = fkLookup
      FieldName = '_PersonFax'
      LookupDataSet = qryCustomers1
      LookupKeyFields = 'CustID'
      LookupResultField = 'Fax'
      KeyFields = 'PersonID1'
      Size = 100
      Lookup = True
    end
    object qryReciptsAidDate: TStringField
      FieldName = 'AidDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryRecipts_CustValuationType: TIntegerField
      FieldKind = fkLookup
      FieldName = '_CustValuationType'
      LookupDataSet = qryCustomers1
      LookupKeyFields = 'CustID'
      LookupResultField = 'ValuationType'
      KeyFields = 'PersonID1'
      Lookup = True
    end
    object qryRecipts_StoreKind: TIntegerField
      FieldKind = fkLookup
      FieldName = '_StoreKind'
      LookupDataSet = qryStores
      LookupKeyFields = 'n_StoreID'
      LookupResultField = 'StoreKind'
      KeyFields = 'StoreID'
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
    object qryReciptsReciptStartDate: TStringField
      FieldName = 'ReciptStartDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryReciptsReciptEndDate: TStringField
      FieldName = 'ReciptEndDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
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
    object qryReciptsStoreID2: TSmallintField
      FieldName = 'StoreID2'
    end
    object qryRecipts_StoresName2: TStringField
      FieldKind = fkLookup
      FieldName = '_StoresName2'
      LookupDataSet = qryStores
      LookupKeyFields = 'n_StoreID'
      LookupResultField = 'c_StoreName'
      KeyFields = 'StoreID2'
      Size = 100
      Lookup = True
    end
    object qryReciptsUseOtherID: TWideStringField
      FieldName = 'UseOtherID'
      Size = 15
    end
    object qryReciptsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryReciptsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryReciptsInsertDate: TDateTimeField
      FieldName = 'InsertDate'
    end
    object qryReciptsAidNumber: TStringField
      FieldName = 'AidNumber'
      Size = 40
    end
    object qryReciptsPersonID3: TIntegerField
      FieldName = 'PersonID3'
    end
    object qryReciptsPrvYearID: TIntegerField
      FieldName = 'PrvYearID'
    end
    object qryReciptsSellsMethod: TIntegerField
      FieldName = 'SellsMethod'
    end
    object qryReciptsSellsEmporium: TIntegerField
      FieldName = 'SellsEmporium'
    end
    object qryReciptsTozinID: TIntegerField
      FieldName = 'TozinID'
      OnChange = qryReciptsTozinIDChange
    end
  end
  object qryStuff_Unit_TecInf: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     StuffCoding.c_StuffCode, StuffCoding.c_StuffName,Unit' +
        's.UnitName,StuffCoding.c_StuffTecInfo,Carton'
      
        '                 ,SellPrice1,SellPrice2,SellPrice3,SellPrice4,St' +
        'andardRate,BuyPrice'
      'FROM        Units INNER JOIN'
      
        '                  StuffCoding ON Units.UnitCode = StuffCoding.n_' +
        'UnitCode'
      'WHERE     (State = 0)')
    Left = 320
    Top = 161
  end
  object srcRecipts: TDataSource
    AutoEdit = False
    DataSet = qryRecipts
    OnStateChange = srcReciptsStateChange
    Left = 480
    Top = 73
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
      ' :StoreKindList'
      
        'GROUP BY Stores.n_StoreID, Stores.c_StoreName, Stores.n_Valuatio' +
        'nType ,'
      
        '           Stores.StoreKind, Stores.HasDeficit, UsersStore.Store' +
        'Type'
      ''
      'HAVING      (Stores.n_StoreID > 0)')
    Left = 146
    Top = 145
  end
  object qryUseUnits: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     *  FROM  UseUnits')
    Left = 72
    Top = 137
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
      #13#13'ORDER BY ReciptType')
    Left = 388
    Top = 63
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = srcItems
    OpenDataSource = False
    UserName = 'DBPipeline2'
    Left = 683
    Top = 4
    MasterDataPipelineName = 'ppDBPipeline1'
  end
  object PopOtherMenu: TPopupMenu
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    Left = 80
    Top = 209
    object N1: TMenuItem
      Action = actSearch
    end
    object N15: TMenuItem
      Caption = #1591#1585#1575#1581#1610' '#1670#1575#1662
    end
    object N16: TMenuItem
      Action = actSort
    end
    object N17: TMenuItem
      Action = actReciptStateTo0
    end
    object mniActGetCheckF10: TMenuItem
      Action = mdiMainF.ActGetCheckF10
    end
    object mniActGetOtherMoneyF1: TMenuItem
      Action = mdiMainF.ActGetOtherMoneyF1
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A5'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 2000
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 2000
    PrinterSetup.mmPaperHeight = 148000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 11
    Template.FileName = 'D:\Projects\Fara\BSell\Exe\Report\Rpt_Invoice_BORSS4_1_A5_l.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RefreshTokenLifeSpan = 365
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RefreshTokenLifeSpan = 365
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    EmailSettings.ConnectionSettings.ConnectionStatusInfo = [csiStatusBar]
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
    PDFSettings.Layers = True
    PDFSettings.Outline = True
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
    CloudDriveSettings.DropBoxSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.DropBoxSettings.SharedResources = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.GoogleDriveSettings.SharedResources = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    CloudDriveSettings.OneDriveSettings.SharedResources = True
    Left = 128
    Top = 88
    Version = '23.0'
    mmColumnWidth = 197300
    DataPipelineName = 'ppDBPipeline2'
    object ppDetailBand4: TppDetailBand
      Border.mmPadding = 0
      PrintCount = 7
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 54000
      object ppDBText33: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = '_radif'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 188384
        mmTop = 0
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText36: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = '_StuffName'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 154782
        mmTop = 0
        mmWidth = 32015
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText34: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'StuffAlloy'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 134938
        mmTop = 0
        mmWidth = 19050
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText38: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'StuffDiameter'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Mitra'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 120386
        mmTop = 0
        mmWidth = 14023
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBTextStuffSize: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        OnGetText = ppDBTextStuffSizeGetText
        Border.mmPadding = 0
        DataField = 'StuffSize'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 94192
        mmTop = 0
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'OutputEntity'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 76729
        mmTop = 0
        mmWidth = 16669
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBTextIOEntity: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'OutputWeight'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 52652
        mmTop = 0
        mmWidth = 23283
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBTextIOWeight: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'UnitSellPrice'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 32544
        mmTop = 0
        mmWidth = 19315
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText42: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText102'
        Border.mmPadding = 0
        DataField = 'TotalOutputPrice'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7705
        mmLeft = 794
        mmTop = 0
        mmWidth = 30956
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 60325
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer2
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentWidth = False
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 33073
        mmLeft = 0
        mmTop = 4498
        mmWidth = 197380
        BandType = 8
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipeline3
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A5'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 2000
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 2000
          PrinterSetup.mmPaperHeight = 148000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 11
          Units = utMillimeters
          Version = '23.0'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline3'
          object ppDetailBand1: TppDetailBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 5027
            mmPrintPosition = 0
            object ppShape4: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape4'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 0
              mmWidth = 53975
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText6: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText2'
              AutoSize = True
              Border.mmPadding = 0
              DataField = 'DeficitName'
              DataPipeline = ppDBPipeline3
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 9
              Font.Style = [fsBold]
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 5027
              mmLeft = 33073
              mmTop = 0
              mmWidth = 17727
              BandType = 4
              LayerName = Foreground
            end
            object ppLine1: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line1'
              Border.mmPadding = 0
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5027
              mmLeft = 32015
              mmTop = 0
              mmWidth = 2117
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText5: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText1'
              Border.mmPadding = 0
              DataField = 'Deficit_Add_Dec'
              DataPipeline = ppDBPipeline3
              DisplayFormat = '#,0;(#,0)'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 11
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 5027
              mmLeft = 529
              mmTop = 0
              mmWidth = 30956
              BandType = 4
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
        end
      end
      object plblCalcWheatDeficit: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'plblCalcWheatDeficit'
        OnGetText = plblCalcWheatDeficitGetText
        Border.mmPadding = 0
        Caption = '  CalcWheatDeficit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = '2  Yagut'
        Font.Size = 14
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5820
        mmLeft = 15081
        mmTop = 39688
        mmWidth = 41540
        BandType = 8
        LayerName = Foreground1
      end
      object pdbtxtMiladi2Shamsi: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'Miladi2Shamsi'
        OnGetText = pdbtxtMiladi2ShamsiGetText
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yekan'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4498
        mmLeft = 4233
        mmTop = 48683
        mmWidth = 24342
        BandType = 8
        LayerName = Foreground1
      end
    end
    object ppPageStyle1: TppPageStyle
      Border.mmPadding = 0
      EndPage = 0
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 123825
      mmPrintPosition = 0
      object ppShape6: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape6'
        Pen.Color = clGray
        Shape = stRoundRect
        mmHeight = 30692
        mmLeft = 99219
        mmTop = 85725
        mmWidth = 96309
        BandType = 10
        LayerName = PageLayer1
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape2'
        Shape = stRoundRect
        mmHeight = 10583
        mmLeft = 0
        mmTop = 40217
        mmWidth = 195263
        BandType = 10
        LayerName = PageLayer1
      end
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape3'
        Shape = stRoundRect
        StretchWithParent = True
        mmHeight = 36777
        mmLeft = 0
        mmTop = 2381
        mmWidth = 195527
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel47: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = #1603#1583' '#1582#1585#1610#1583#1575#1585': '#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6011
        mmLeft = 95472
        mmTop = 24871
        mmWidth = 13801
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel42: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = #1601#1585#1608#1588#1711#1575#1607' '#1576#1608#1585#1587' '#1575#1587#1578#1610#1604' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6879
        mmLeft = 128323
        mmTop = 6615
        mmWidth = 40217
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel45: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label19'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1582#1585#1610#1583#1575#1585': '#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6615
        mmLeft = 166952
        mmTop = 25135
        mmWidth = 21167
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText7'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'PersonID1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5334
        mmLeft = 85778
        mmTop = 25400
        mmWidth = 7620
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText31: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText101'
        Border.mmPadding = 0
        DataField = 'ReciptNumber'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 8996
        mmLeft = 2646
        mmTop = 1852
        mmWidth = 21696
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText32: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText18'
        Border.mmPadding = 0
        DataField = 'ReciptDate'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7144
        mmLeft = 1323
        mmTop = 9790
        mmWidth = 23019
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel48: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1601#1575#1603#1578#1608#1585': '#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6615
        mmLeft = 25135
        mmTop = 3175
        mmWidth = 20373
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel49: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label12'
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' : '#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6085
        mmLeft = 25135
        mmTop = 10319
        mmWidth = 10583
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel51: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1600#1600#1600#1600#1600#1585#1581' '#1603#1600#1600#1600#1600#1600#1600#1600#1575#1604#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 154782
        mmTop = 42333
        mmWidth = 33338
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel52: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1593#1583#1575#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 76729
        mmTop = 42333
        mmWidth = 16669
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel53: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1575#1576#1600#1600#1593#1575#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 94192
        mmTop = 42333
        mmWidth = 25400
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel54: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label16'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1590#1582#1575#1605#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 120386
        mmTop = 42333
        mmWidth = 14023
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel55: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label14'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1570#1604#1600#1600#1610#1575#1688
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 135202
        mmTop = 42333
        mmWidth = 18785
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel56: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label15'
        Border.mmPadding = 0
        Caption = #1603#1583' '#1662#1587#1578#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 94986
        mmTop = 17727
        mmWidth = 12171
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel57: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label17'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1608#1586#1606' '#1582#1575#1604#1589
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 52652
        mmTop = 42333
        mmWidth = 23283
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel58: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label18'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1575#1585#1586#1588' '#1603#1604'('#1585#1610#1575#1604') '#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 794
        mmTop = 42333
        mmWidth = 30956
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel59: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label21'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1575#1585#1586#1588' '#1608#1575#1581#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 32544
        mmTop = 42333
        mmWidth = 19315
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine38: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line14'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 40481
        mmLeft = 188384
        mmTop = 40481
        mmWidth = 794
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine40: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line101'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 40746
        mmLeft = 134673
        mmTop = 40481
        mmWidth = 2117
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine41: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 41010
        mmLeft = 119856
        mmTop = 40481
        mmWidth = 1852
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine42: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 40746
        mmLeft = 93663
        mmTop = 40481
        mmWidth = 1852
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine43: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 41010
        mmLeft = 76200
        mmTop = 40217
        mmWidth = 2646
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine44: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 41010
        mmLeft = 52123
        mmTop = 40481
        mmWidth = 1852
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine47: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line15'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 60854
        mmLeft = 0
        mmTop = 48154
        mmWidth = 1588
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine48: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line36'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 51594
        mmLeft = 194469
        mmTop = 29633
        mmWidth = 794
        BandType = 10
        LayerName = PageLayer1
      end
      object ppRegion1: TppRegion
        DesignLayer = ppDesignLayer3
        UserName = 'Region1'
        Caption = 'Region1'
        Visible = False
        mmHeight = 1588
        mmLeft = 0
        mmTop = 83873
        mmWidth = 195792
        BandType = 10
        LayerName = PageLayer1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
      end
      object ppRecFooterLine: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line1'
        Border.mmPadding = 0
        Position = lpBottom
        Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 75671
        mmWidth = 197300
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = #1578#1604#1601#1603#1587' :5-66810074'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5969
        mmLeft = 159734
        mmTop = 18785
        mmWidth = 28914
        BandType = 10
        LayerName = PageLayer1
      end
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape1'
        Shape = stRoundRect
        mmHeight = 12965
        mmLeft = 0
        mmTop = 103188
        mmWidth = 93663
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabelTotalOutputPrice: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LabelTotalOutputPrice'
        OnGetText = ppDBTxtPayablePriceGetText
        Border.mmPadding = 0
        Caption = #1580#1600#1600#1605#1593
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 23813
        mmTop = 106627
        mmWidth = 7938
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LabelTotalOutputPrice1'
        Border.mmPadding = 0
        Caption = #1580#1600#1600#1605#1593
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7673
        mmLeft = 16404
        mmTop = 81756
        mmWidth = 15346
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabelnum2alphabet: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LblEntity1'
        OnGetText = ppLabelnum2alphabetPayebelGetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1580#1600#1600#1605#1593' '#1603#1600#1600#1604': '#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 6350
        mmLeft = 33338
        mmTop = 106892
        mmWidth = 59796
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = #1578#1607#1585#1575#1606' - '#1580#1575#1583#1607' '#1602#1583#1610#1605' '#1603#1585#1580' - '#1605#1580#1578#1605#1593' '#1578#1580#1575#1585#1610' '#1662#1575#1585#1587' '#1594#1583#1610#1585' - '#1588#1605#1575#1585#1607'24'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6604
        mmLeft = 77512
        mmTop = 13229
        mmWidth = 86530
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label20'
        Border.mmPadding = 0
        Caption = #1575#1605#1590#1575' '#1601#1585#1608#1588#1606#1583#1607' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clSilver
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7144
        mmLeft = 118534
        mmTop = 98161
        mmWidth = 23019
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText9'
        AutoSize = True
        Border.mmPadding = 0
        DataField = '_PersonName1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6604
        mmLeft = 151967
        mmTop = 25135
        mmWidth = 19219
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label24'
        Border.mmPadding = 0
        Caption = #1606#1588#1575#1606#1610' '#1582#1585#1610#1583#1575#1585': '#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6615
        mmLeft = 167482
        mmTop = 32015
        mmWidth = 21167
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText11'
        AutoSize = True
        Border.mmPadding = 0
        DataField = '_PersonAddress'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7027
        mmLeft = 136070
        mmTop = 31750
        mmWidth = 27178
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label25'
        Border.mmPadding = 0
        Caption = #1578#1604#1601#1606': '#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6615
        mmLeft = 30427
        mmTop = 24871
        mmWidth = 7673
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText13'
        AutoSize = True
        Border.mmPadding = 0
        DataField = '_PersonTel'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7789
        mmLeft = 10679
        mmTop = 24871
        mmWidth = 19219
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label26'
        Border.mmPadding = 0
        Caption = #1601#1603#1587': '#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6350
        mmLeft = 30427
        mmTop = 31750
        mmWidth = 8202
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText14'
        AutoSize = True
        Border.mmPadding = 0
        DataField = '_PersonFax'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7789
        mmLeft = 10425
        mmTop = 31750
        mmWidth = 19473
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label201'
        Border.mmPadding = 0
        Caption = #1575#1605#1590#1575' '#1582#1585#1610#1583#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clSilver
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7144
        mmLeft = 165629
        mmTop = 97367
        mmWidth = 18785
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine39: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line13'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 40746
        mmLeft = 153988
        mmTop = 40481
        mmWidth = 529
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 21431
        mmLeft = 49742
        mmTop = 2381
        mmWidth = 529
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = ':'#1606#1588#1575#1606#1610' '#1601#1585#1608#1588#1606#1583#1607' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6604
        mmLeft = 164296
        mmTop = 13229
        mmWidth = 24088
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label27'
        Border.mmPadding = 0
        Caption = #1662#1610#1608#1587#1578':.....................................'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6615
        mmLeft = 6085
        mmTop = 16140
        mmWidth = 39423
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 80169
        mmWidth = 195263
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line12'
        Border.mmPadding = 0
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 265
        mmTop = 89694
        mmWidth = 32015
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line2'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 0
        mmTop = 23813
        mmWidth = 195263
        BandType = 10
        LayerName = PageLayer1
      end
      object ppImage1: TppImage
        DesignLayer = ppDesignLayer3
        UserName = 'Image1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        RotationAngle = 0
        Border.mmPadding = 0
        Picture.Data = {
          07544269746D6170F20F0000424DF20F00000000000036000000280000001900
          0000350000000100180000000000BC0F00000000000000000000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFF74BF
          FF0074BF74BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF9CDFFF9C749CFFBF74000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF9CBFFF0000489CDFDFFFFFFF000000000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF9C00000000
          0048BFFFFF000000BF7400FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFDF9C48000000000074740000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF9C48BF7400FFFFBF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFDF4874BF0074BFDFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          DFFFDF9C00000000489CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF9CDFFFFFFFFFFFFFFFFFFFFF000000DF9C48FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF9C9CDF0000480074BF9CDFFF489CDF000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFDF9C489C
          4800740048000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFDFFFFFFFFFFFFFFFFFFFFFDFFFFFBF000000000000FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF9CBFFF0074BFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFF000000
          000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF9C000000FFFFFFFFFFFF
          FFFFFFBFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFBF74FFFFFFFFFFFF74BFFF00007474BFFF000000000000FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF9C487400000000
          00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFBFFFBF74000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF74
          BFFF0074BF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFBF7400FFBF74000000000000FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
          000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFF
          FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          BFFFFFBFBFFF0074BFFFDFDFFFFFFFBFFFFF74BFFF0000009C4800FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000074489C9C000000BFBFDFFFFFFF7400749C48
          0000000000749CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF749C48000000
          00FFFFDFFFFFFFFFFFBFFFFFDF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFDF000000DFDFDFFFFFFF489CDF9CDFFF000000000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF74FFFFFFDFDFDF9C
          4800740048740000740000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFBFFFFFBFFFFFBFFFFFFFFFFFFF74BFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000074BFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFF74BFFF489CDFDFFFFFFFFFFFFFFF
          FF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF489CDF000074DF9C
          4800000000489CFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF000000000000BFFFFF000000000000DFFFFF0074BF000000DF9C48FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF9C4848000000007400000000000000
          489C740000DF9C48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          DF9CDF9C48DF9C48DF9C48FFBF74FFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF74BFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF0000009CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000048FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFF9CDF
          FF489CDFFFFFFFFFFFFFBFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFDFDF00004800000074BFFF74BFFF000074740000FFBF74FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF74000000000000BF
          7400FFBF74FFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFBF
          FFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF
          FFFFFFFFFF9CDFFF9C749C0000749CDFFF000000000000FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0074BF000074BFFFFF000048FFFFDF000000000048000000
          000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7400480000FFBFBF000000
          74BFFFDFBF74000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFDF9CFFFFFFFFBF749C480074489C7400007400009C4800FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFBFFFFF
          BFFFFFBFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
        mmHeight = 14023
        mmLeft = 188913
        mmTop = 7673
        mmWidth = 5292
        BandType = 10
        LayerName = PageLayer1
      end
      object ppImage2: TppImage
        DesignLayer = ppDesignLayer3
        UserName = 'Image2'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        RotationAngle = 0
        Border.mmPadding = 0
        Picture.Data = {
          07544269746D6170460D0000424D460D00000000000036000000280000001900
          00002C0000000100180000000000100D00000000000000000000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF74BFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF0000009CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000048FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
          000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFF9CDFFF489CDF
          FFFFFFFFFFFFBFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFDFDF00004800000074BFFF74BFFF000074740000FFBF74FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF74BF74009C4800BF7400FFBF
          74FFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFF0074BF0074
          BF489CDF489CDF74BFFF74BFFF74BFFF9CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFBF74749C48009C48009C48009C48007400007400009C4800FFDF9CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFFFFFDFFFFFDFFF
          FFBFFFFFBFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFDF4874BF0074BFDFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFDF9C
          00000000489CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          9CDFFFFFFFFFFFFFFFFFFFFF000000DF9C48FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF9C9CDF0000480074BF9CDFFF489CDF000000FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFDF9C489C48007400
          48000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFDFFFFFBF000000000000FFFFFFFFFFFFFFFFFF9CDFFFDF
          DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FF
          FFFFFFFFFFFFFFFF0000489C9CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF
          FFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFF000000FFFFBFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF74BFFF00007474BFFF000000000000FFFFFFFFFFFFFFFFFF
          000000BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF9C48740000000000000000
          000000FFFFFFFFFFFFFFFFFFDF9C48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFBFFFBF74FFBF74FFBF74FFFFFFFFFFFF74BFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF0000009CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF000000000048FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFF9CDFFF489CDFFFFFFFFF
          FFFFBFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          DFDF00004800000074BFFF74BFFF000074740000FFBF74FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF74000000000000BF7400FFBF74FFFFBF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
          000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF489CDFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBFFFFFDFDFFFFFFFFF0074BFFFBF74FFFFFF000000000000FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFBFBFBF000074FFFFDFFFFFFF000000BFFFFFFFFF
          FF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF480000DFDF
          DFFFFFFF000000000074FFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFDF9CFFFFFFFFFFFFDF9C480000000074BF000000000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF
          7400000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7400000000000000FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C4800
          9C4800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFDFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
        mmHeight = 11642
        mmLeft = 188913
        mmTop = 25400
        mmWidth = 5292
        BandType = 10
        LayerName = PageLayer1
      end
      object ppImage3: TppImage
        DesignLayer = ppDesignLayer3
        UserName = 'Image3'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        RotationAngle = 0
        Border.mmPadding = 0
        Picture.Data = {
          07544269746D61702E080000424D2E0800000000000036000000280000001400
          0000220000000100180000000000F80700000000000000000000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFFF4874BF0074BF74BFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFDF9C000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF740000000074BFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000740000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFF
          FFFFFF000000FFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFBFFFFF7474BF00007474BFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF0074BF000074FFFFFF000074FFFFBF74000000000074BFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF
          7400740000FFFFFF00000074BFFFBFFFBF000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          BFFFFFFFFFBF749C4800740074480000000000000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFDFFFFFBFFFDF9C000000000000FFFFFFFFFFFFFFFFFF9CDFFFDFDF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFF0000489C9CBFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFF
          FFFFFFFF000000000000FFFFFFFFFFFFFFFFFF000000FFFFBFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF74BFFF00007474BFFF
          000000000000FFFFFFFFFFFFFFFFFF000000BFBFBFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF9C4874000000000000000000
          0000FFFFFFFFFFFFFFFFFFDF9C48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFBF74FFBF74FFBF74FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFDF4874BF0074BFDFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFDF9C00000000489CFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF9CDFFFFFFFFFFFFFFFFFFFFF000000DF9C48FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9CDF00
          00480074BF9CDFFF489CDF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFDF9C489C48
          00740048740000740000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFBF
          FFFFBFFFFFBFFFFFFFFFFFFF74BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000009CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF000000000048FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFDFFFFF9CDFFF489CDFFFFFFFFFFFFFBFFFFF00000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFDFDF00004800000074BFFF74BFFF000074740000FFBF74FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFBF74BF74009C4800BF7400FFBF74FFFFBFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        mmHeight = 8996
        mmLeft = 188648
        mmTop = 41010
        mmWidth = 6085
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line16'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 36513
        mmLeft = 188384
        mmTop = 2381
        mmWidth = 1852
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line20'
        Border.mmPadding = 0
        Pen.Color = clGray
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 30427
        mmLeft = 150019
        mmTop = 85725
        mmWidth = 1852
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1601#1575#1603#1578#1608#1585' '#1601#1585#1608#1588' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 16
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8297
        mmLeft = 94213
        mmTop = 2646
        mmWidth = 30649
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = ': '#1606#1575#1605' '#1601#1585#1608#1588#1606#1583#1607' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5969
        mmLeft = 168275
        mmTop = 6615
        mmWidth = 18161
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine45: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 75671
        mmLeft = 32015
        mmTop = 40481
        mmWidth = 1323
        BandType = 10
        LayerName = PageLayer1
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'ReciptID'
      DataPipeline = ppDBPipeline2
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      ResetPageNo = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline2'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Border.mmPadding = 0
        PrintHeight = phDynamic
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer3: TppDesignLayer
        UserName = 'PageLayer1'
        LayerType = ltPage
        Index = 0
      end
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 1
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object qryCustomers2: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT DISTINCT CustID, CustName, Discount '
      'FROM Vu_CustomersGroups'
      '')
    Left = 309
    Top = 89
  end
  object qryCustomers1: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT DISTINCT CustID, CustName, Address, Tel, PostalCode,'
      
        '                      EconomicNumber, Fax, ValuationType, MaxCre' +
        'dit,NationalID'
      'FROM Vu_CustomersGroups')
    Left = 227
    Top = 145
  end
  object zbal: TzAPIBalloon
    AutoCloseMode = acTimeOut
    TimeOut = 1000
    Prompt.Strings = (
      'FINANCES Ltd'
      'TzAPIBalloon ver. 1')
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 507
    Top = 8
  end
  object PopMuPrint: TPopupMenu
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    Left = 331
    Top = 304
    object MenuItem1: TMenuItem
      Action = actPrint1
    end
    object MenuItem2: TMenuItem
      Action = actPrint2
    end
  end
  object qry_Deficits: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
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
      'FROM         ReciptsDeficits'
      'WHERE ReciptID=:ReciptID'
      'and ( YearID = :YearID )'
      'and ( ServerID = :ServerID )')
    Left = 456
    Top = 264
    object qry_DeficitsReciptDeficitID: TIntegerField
      FieldName = 'ReciptDeficitID'
    end
    object qry_DeficitsReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qry_DeficitsDeficitID: TSmallintField
      DisplayLabel = #1603#1583
      FieldName = 'DeficitID'
    end
    object qry_DeficitsDeficitAdd: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1575#1590#1575#1601#1575#1578
      FieldName = 'DeficitAdd'
      currency = True
      Precision = 19
    end
    object qry_DeficitsDeficitDec: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1603#1587#1608#1585#1575#1578
      FieldName = 'DeficitDec'
      currency = True
      Precision = 19
    end
    object qry_DeficitsDeficitNote: TStringField
      FieldName = 'DeficitNote'
      Size = 50
    end
    object qry_Deficits_DeficitName: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1603#1587#1608#1585#1575#1578' / '#1575#1590#1575#1601#1575#1578
      FieldKind = fkLookup
      FieldName = '_DeficitName'
      LookupKeyFields = 'DeficitID'
      LookupResultField = 'DeficitName'
      KeyFields = 'DeficitID'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qry_Deficits_CalculationType: TIntegerField
      FieldKind = fkLookup
      FieldName = '_CalculationType'
      LookupKeyFields = 'DeficitID'
      LookupResultField = 'CalculationType'
      KeyFields = 'DeficitID'
      LookupCache = True
      Lookup = True
    end
    object qry_Deficits_DeficitCo: TFloatField
      FieldKind = fkLookup
      FieldName = '_DeficitCo'
      LookupKeyFields = 'DeficitID'
      LookupResultField = 'DeficitCo'
      KeyFields = 'DeficitID'
      LookupCache = True
      Lookup = True
    end
    object qry_Deficits_ExportType: TIntegerField
      FieldKind = fkLookup
      FieldName = '_ExportType'
      LookupKeyFields = 'DeficitID'
      LookupResultField = 'ExportType'
      KeyFields = 'ReciptID'
      LookupCache = True
      Lookup = True
    end
  end
  object qry_Deficits4Print: TADOQuery
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
      
        'SELECT     dbo.Deficits.DeficitName, dbo.ReciptsDeficits.Deficit' +
        'Add - dbo.ReciptsDeficits.DeficitDec AS Deficit_Add_Dec'
      'FROM         dbo.Deficits INNER JOIN'
      
        '                      dbo.ReciptsDeficits ON dbo.Deficits.Defici' +
        'tID = dbo.ReciptsDeficits.DeficitID'
      'WHERE     (dbo.ReciptsDeficits.ReciptID = :ReciptID )'
      'and ( YearID = :YearID )'
      'and ( ServerID= :ServerID  )')
    Left = 408
    Top = 137
    object qry_Deficits4PrintDeficitName: TStringField
      FieldName = 'DeficitName'
      Size = 50
    end
    object qry_Deficits4PrintDeficit_Add_Dec: TBCDField
      FieldName = 'Deficit_Add_Dec'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object ppDBPipeline3: TppDBPipeline
    DataSource = srcDeficits4Print
    OpenDataSource = False
    UserName = 'DBPipeline3'
    Left = 379
    Top = 252
    MasterDataPipelineName = 'ppDBPipeline1'
  end
  object srcDeficits4Print: TDataSource
    DataSet = qry_Deficits4Print
    Left = 493
    Top = 152
  end
  object qry_Lookup: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT     LookUpID,Name'
      'FROM         LookUps'
      'WHERE(Kind=15)')
    Left = 295
    Top = 269
  end
  object DBPipFormsRange: TppDBPipeline
    OpenDataSource = False
    UserName = 'DBPipFormsRange'
    Left = 395
    Top = 316
    MasterDataPipelineName = 'ppDBPipeline1'
    object DBPipFormsRangeppField1: TppField
      FieldAlias = 'FormCaption'
      FieldName = 'FormCaption'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object DBPipFormsRangeppField2: TppField
      FieldAlias = 'FormItemsAmount'
      FieldName = 'FormItemsAmount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object DBPipFormsRangeppField3: TppField
      FieldAlias = 'CheckNumber'
      FieldName = 'CheckNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object DBPipFormsRangeppField4: TppField
      FieldAlias = 'CheckDate'
      FieldName = 'CheckDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object DBPipFormsRangeppField5: TppField
      FieldAlias = 'BankName'
      FieldName = 'BankName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object DBPipFormsRangeppField6: TppField
      FieldAlias = 'AccountNumber'
      FieldName = 'AccountNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object DBPipFormsRangeppField7: TppField
      FieldAlias = 'AccountNumberNew'
      FieldName = 'AccountNumberNew'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
  end
  object qryTozin: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryTozinAfterScroll
    Parameters = <
      item
        Name = 'tozinid'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select  *,  MachineFullWeight - MachineWeight - CASE WHEN Moistu' +
        'reContent + RisingUseful + RisingNonUseFul <> 0 '
      
        'THEN (100 - (MoistureContent + RisingUseful + RisingNonUseFul)) ' +
        'ELSE 0 END AS Mandeh ,'#39#39' as note'
      
        ', LEFT(MachineNo, 2) AS Pelak1, SUBSTRING(MachineNo, 4, 1) AS Pe' +
        'lak2, SUBSTRING(MachineNo, 6, 3) AS Pelak3, RIGHT(MachineNo, 2) ' +
        'AS Pelak4'
      ''
      ' from Tozin'
      'where tozinid = :tozinid ')
    Left = 361
    Top = 352
    object qryTozinTozinID: TIntegerField
      FieldName = 'TozinID'
    end
    object qryTozinTozinNumber: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607
      FieldName = 'TozinNumber'
    end
    object qryTozinReciptType: TWordField
      DisplayLabel = #1606#1608#1593
      FieldName = 'ReciptType'
      Required = True
    end
    object qryTozinMachineNo: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1605#1575#1588#1610#1606
      FieldName = 'MachineNo'
      Required = True
      Size = 25
    end
    object qryTozinStoreID: TSmallintField
      DisplayLabel = #1603#1583' '#1575#1606#1576#1575#1585
      FieldName = 'StoreID'
      Required = True
    end
    object qryTozinStuffCode: TLargeintField
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qryTozinPersonID1: TIntegerField
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'PersonID1'
      Required = True
    end
    object qryTozinMachineName: TStringField
      DisplayLabel = #1606#1575#1605' '#1605#1575#1588#1610#1606
      FieldName = 'MachineName'
      Size = 50
    end
    object qryTozinMachineWeight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1582#1575#1604#1610
      FieldName = 'MachineWeight'
    end
    object qryTozinMachineFullWeight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1662#1585
      FieldName = 'MachineFullWeight'
    end
    object qryTozinTozinNote: TStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'TozinNote'
      Size = 400
    end
    object qryTozinEnterDate: TDateTimeField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1608#1587#1575#1593#1578' '#1608#1585#1608#1583
      FieldName = 'EnterDate'
    end
    object qryTozinFirstUser: TStringField
      DisplayLabel = #1606#1575#1605' '#1575#1662#1585#1575#1578#1608#1585
      FieldName = 'FirstUser'
      Size = 50
    end
    object qryTozinLastUser: TStringField
      FieldName = 'LastUser'
      Size = 50
    end
    object qryTozinTozinDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'TozinDate'
      Required = True
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryTozinReciptNumber: TIntegerField
      FieldName = 'ReciptNumber'
    end
    object qryTozinMoistureContent: TFloatField
      DisplayLabel = #1583#1585#1589#1583' '#1585#1591#1608#1576#1578
      FieldName = 'MoistureContent'
    end
    object qryTozinRisingUseful: TFloatField
      DisplayLabel = #1575#1601#1578' '#1605#1601#1610#1583
      FieldName = 'RisingUseful'
    end
    object qryTozinRisingNonUseFul: TFloatField
      DisplayLabel = #1575#1601#1578' '#1594#1610#1585' '#1605#1601#1610#1583
      FieldName = 'RisingNonUseFul'
    end
    object qryTozinPersonID2: TIntegerField
      FieldName = 'PersonID2'
    end
    object qryTozinIsSystem: TBooleanField
      FieldName = 'IsSystem'
    end
    object qryTozinRelatedRecipts: TStringField
      FieldName = 'RelatedRecipts'
      Size = 27
    end
    object qryTozinReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryTozinMandeh: TFloatField
      FieldName = 'Mandeh'
      ReadOnly = True
    end
    object qryTozinExitDate: TDateTimeField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1608' '#1587#1575#1593#1578' '#1582#1585#1608#1580
      FieldName = 'ExitDate'
    end
    object qryTozinTozinState: TWordField
      FieldName = 'TozinState'
    end
    object qryTozinnote: TStringField
      FieldName = 'note'
      ReadOnly = True
      Size = 1
    end
    object qryTozinNumberOfBags: TBCDField
      FieldName = 'NumberOfBags'
      Precision = 18
      Size = 2
    end
    object qryTozinPelak1: TStringField
      FieldName = 'Pelak1'
      ReadOnly = True
      Size = 2
    end
    object qryTozinPelak2: TStringField
      FieldName = 'Pelak2'
      ReadOnly = True
      Size = 1
    end
    object qryTozinPelak3: TStringField
      FieldName = 'Pelak3'
      ReadOnly = True
      Size = 3
    end
    object qryTozinPelak4: TStringField
      FieldName = 'Pelak4'
      ReadOnly = True
      Size = 2
    end
  end
  object srcTozin: TDataSource
    DataSet = qryTozin
    Left = 350
    Top = 408
  end
  object plnTozin: TppDBPipeline
    DataSource = srcTozin
    OpenDataSource = False
    UserName = 'plnTozin'
    Left = 555
    Top = 308
    MasterDataPipelineName = 'ppDBPipeline1'
    object ppField1: TppField
      FieldAlias = 'FormCaption'
      FieldName = 'FormCaption'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppField2: TppField
      FieldAlias = 'FormItemsAmount'
      FieldName = 'FormItemsAmount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppField3: TppField
      FieldAlias = 'CheckNumber'
      FieldName = 'CheckNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppField4: TppField
      FieldAlias = 'CheckDate'
      FieldName = 'CheckDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppField5: TppField
      FieldAlias = 'BankName'
      FieldName = 'BankName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppField6: TppField
      FieldAlias = 'AccountNumber'
      FieldName = 'AccountNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppField7: TppField
      FieldAlias = 'AccountNumberNew'
      FieldName = 'AccountNumberNew'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
  end
  object qryRecall: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'ReciptItemID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT      *'
      '                    '
      'FROM            ReciptItems INNER JOIN'
      
        '                         Recipts ON ReciptItems.ReciptID = Recip' +
        'ts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND Reci' +
        'ptItems.YearID = Recipts.YearID'
      'WHERE        (ReciptItems.ReciptItemID = :ReciptItemID )')
    Left = 224
    Top = 201
  end
  object plnRecall: TppDBPipeline
    DataSource = srcRecall
    OpenDataSource = False
    UserName = 'plnRecall'
    Left = 171
    Top = 252
    MasterDataPipelineName = 'ppDBPipeline1'
  end
  object srcRecall: TDataSource
    DataSet = qryRecall
    Left = 165
    Top = 200
  end
end

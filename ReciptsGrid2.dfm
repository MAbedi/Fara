inherited ReciptsGrid2F: TReciptsGrid2F
  Left = 335
  Top = 170
  Caption = #1580#1583#1608#1604
  ClientHeight = 779
  ClientWidth = 1148
  KeyPreview = True
  OldCreateOrder = True
  ShowHint = True
  OnActivate = FormActivate
  OnResize = FormResize
  ExplicitWidth = 1164
  ExplicitHeight = 818
  PixelsPerInch = 96
  TextHeight = 13
  object GrpBoxAccount: TGroupBox [0]
    Left = 0
    Top = 659
    Width = 1148
    Height = 50
    Align = alBottom
    Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1583#1575#1585#1610' '
    TabOrder = 4
    DesignSize = (
      1148
      50)
    object Label7: TLabel
      Left = 1104
      Top = 32
      Width = 37
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1578#1601#1589#1610#1604#1610
      ExplicitLeft = 859
    end
    object dbtxt_DetailCode: TDBText
      Left = 819
      Top = 30
      Width = 284
      Height = 16
      Anchors = [akTop, akRight]
      Color = 13948116
      DataField = '_DetailCode'
      DataSource = srcItems
      ParentColor = False
      Transparent = False
      ExplicitLeft = 574
    end
    object Lblacc_CTopicCode2: TLabel
      Left = 518
      Top = 32
      Width = 53
      Height = 13
      Alignment = taRightJustify
      Caption = #1578#1601#1589#1740#1604#1740'3'
    end
    object dbtxt_CTopicCode2: TDBText
      Left = 233
      Top = 30
      Width = 284
      Height = 16
      Color = 13948116
      DataField = '_CTopicCode2'
      DataSource = srcItems
      ParentColor = False
      Transparent = False
    end
    object Label1: TLabel
      Left = 1104
      Top = 15
      Width = 24
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1581#1587#1575#1576
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 859
    end
    object dbtxt_TopicCodeName: TDBText
      Left = 819
      Top = 13
      Width = 284
      Height = 16
      Anchors = [akTop, akRight]
      Color = 13948116
      DataField = '_TopicCodeName'
      DataSource = srcItems
      ParentColor = False
      Transparent = False
      ExplicitLeft = 574
    end
    object dbtxt_CTopicCode: TDBText
      Left = 233
      Top = 13
      Width = 284
      Height = 16
      Color = 13948116
      DataField = '_CTopicCode'
      DataSource = srcItems
      ParentColor = False
      Transparent = False
    end
    object Label6: TLabel
      Left = 518
      Top = 15
      Width = 50
      Height = 13
      Alignment = taRightJustify
      Caption = #1578#1601#1589#1610#1604#1610'2'
    end
    object dbtxt_CTopicCode3: TDBText
      Left = 5
      Top = 30
      Width = 222
      Height = 15
      Color = 13948116
      DataField = '_CTopicCode3'
      DataSource = srcItems
      ParentColor = False
      Transparent = False
    end
    object Lblacc_CTopicCode3: TLabel
      Left = 174
      Top = 11
      Width = 53
      Height = 13
      Alignment = taRightJustify
      Caption = #1605#1585#1603#1586#1607#1586#1610#1606#1607'3'
    end
  end
  inherited PnlUnderButton: TPanel
    Top = 738
    Width = 1148
    TabOrder = 5
    ExplicitTop = 738
    ExplicitWidth = 1148
    object DBNavigator1: TDBNavigator [0]
      AlignWithMargins = True
      Left = 339
      Top = 7
      Width = 80
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      DataSource = dsAllRecipts
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alClient
      Flat = True
      TabOrder = 6
    end
    object newPanel: TPanel [1]
      Left = 681
      Top = 1
      Width = 466
      Height = 39
      Align = alRight
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 0
      object BitBtn3: TBitBtn
        AlignWithMargins = True
        Left = 390
        Top = 5
        Width = 75
        Height = 29
        Margins.Left = 1
        Margins.Top = 5
        Margins.Right = 1
        Margins.Bottom = 5
        Action = DataSetInsert1
        Align = alRight
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        AlignWithMargins = True
        Left = 313
        Top = 5
        Width = 75
        Height = 29
        Margins.Left = 1
        Margins.Top = 5
        Margins.Right = 1
        Margins.Bottom = 5
        Action = DataSetEdit1
        Align = alRight
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object btnDataSetDelete1_: TBitBtn
        AlignWithMargins = True
        Left = 236
        Top = 5
        Width = 75
        Height = 29
        Margins.Left = 1
        Margins.Top = 5
        Margins.Right = 1
        Margins.Bottom = 5
        Action = DataSetDelete1_
        Align = alRight
        Caption = #1581#1584#1601' '#1601#1585#1605
        TabOrder = 2
      end
      object BtnCorrelateConversionCo: TBitBtn
        AlignWithMargins = True
        Left = 1
        Top = 5
        Width = 77
        Height = 29
        Margins.Left = 1
        Margins.Top = 5
        Margins.Right = 1
        Margins.Bottom = 5
        Action = actCorrelateConversionCo
        Align = alRight
        Caption = #1579#1576#1578' '#1601#1585#1605' '#1590#1585#1575#1610#1576
        TabOrder = 4
      end
      object BtnCorrelateRecipt: TBitBtn
        AlignWithMargins = True
        Left = 80
        Top = 5
        Width = 77
        Height = 29
        Margins.Left = 1
        Margins.Top = 5
        Margins.Right = 1
        Margins.Bottom = 5
        Action = actCorrelateRecipt
        Align = alRight
        Caption = #1579#1576#1578' '#1601#1585#1605' '#1605#1585#1578#1576#1591
        TabOrder = 3
      end
      object BtnExcel: TBitBtn
        AlignWithMargins = True
        Left = 159
        Top = 5
        Width = 75
        Height = 29
        Hint = ' '
        Margins.Left = 1
        Margins.Top = 5
        Margins.Right = 1
        Margins.Bottom = 5
        Align = alRight
        Caption = #1582#1608#1575#1606#1583#1606' Excel'
        TabOrder = 5
        OnClick = BtnExcelClick
      end
    end
    inherited BtnReject: TBitBtn
      Left = 2
      Margins.Left = 1
      Margins.Right = 1
      TabOrder = 5
      ExplicitLeft = 2
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 183
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
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 106
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actSearch
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 3
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 260
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actPrint
      Align = alLeft
      Caption = #1670#1600#1600#1600#1575#1662
      TabOrder = 1
    end
    object btnOtherMenu: TBitBtn
      AlignWithMargins = True
      Left = 79
      Top = 7
      Width = 25
      Height = 27
      Hint = #1587#1575#1610#1585' '#1575#1605#1603#1575#1606#1575#1578
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Align = alLeft
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
      TabOrder = 4
      OnClick = btnOtherMenuClick
    end
    object okPanel: TPanel
      Left = 361
      Top = 1
      Width = 320
      Height = 39
      Align = alRight
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 7
      object BitBtn7: TBitBtn
        AlignWithMargins = True
        Left = 244
        Top = 5
        Width = 75
        Height = 29
        Margins.Left = 1
        Margins.Top = 5
        Margins.Right = 1
        Margins.Bottom = 5
        Action = DataSetPost1
        Align = alRight
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
        AlignWithMargins = True
        Left = 167
        Top = 5
        Width = 75
        Height = 29
        Margins.Left = 1
        Margins.Top = 5
        Margins.Right = 1
        Margins.Bottom = 5
        Action = DataSetCancel1
        Align = alRight
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
      object BitBtn10: TBitBtn
        AlignWithMargins = True
        Left = 78
        Top = 5
        Width = 87
        Height = 29
        Margins.Left = 1
        Margins.Top = 5
        Margins.Right = 1
        Margins.Bottom = 5
        Action = actAutoPrice
        Align = alRight
        Caption = #1605#1581#1575#1587#1576#1607' '#1575#1588#1575#1606#1578#1740#1608#1606
        TabOrder = 2
      end
      object BitBtn13: TBitBtn
        AlignWithMargins = True
        Left = 1
        Top = 5
        Width = 75
        Height = 29
        Margins.Left = 1
        Margins.Top = 5
        Margins.Right = 1
        Margins.Bottom = 5
        Action = actChangStuff
        Align = alRight
        Caption = #1602#1740#1605#1578' '#1711#1584#1575#1585#1740
        TabOrder = 3
      end
    end
  end
  inherited Panel2: TPanel
    Width = 1148
    Height = 54
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 1148
    ExplicitHeight = 54
    DesignSize = (
      1148
      54)
    inherited ImgTemplate: TImage
      Left = 1118
      ExplicitLeft = 873
    end
    inherited lblCaption: TLabel
      Left = 1054
      ExplicitLeft = 809
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
    object lblWarn: TLabel
      Left = 1102
      Top = 35
      Width = 4
      Height = 16
      Anchors = [akTop]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 866
    end
    object BtnRecallSpecial: TBitBtn
      Left = 12
      Top = 26
      Width = 23
      Height = 22
      Hint = #1601#1585#1575#1582#1608#1575#1606#1610' '#1608#1610#1688#1607
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
      TabOrder = 3
      OnClick = BtnRecallSpecialClick
    end
    object BtnRecall: TBitBtn
      Left = 13
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
      TabOrder = 1
    end
    object EdtRNum: TDBEdit
      Left = 40
      Top = 3
      Width = 71
      Height = 21
      DataField = 'ReciptNumber'
      DataSource = srcRecipts
      TabOrder = 0
    end
    object Panel5: TPanel
      Left = 40
      Top = 26
      Width = 306
      Height = 21
      BevelOuter = bvNone
      TabOrder = 2
      object LblReciptDate: TLabel
        AlignWithMargins = True
        Left = 175
        Top = 3
        Width = 128
        Height = 15
        Margins.Left = 5
        Align = alClient
        Alignment = taRightJustify
        Caption = #1578#1575#1585#1610#1582' '#1601#1585#1605
        ExplicitWidth = 41
        ExplicitHeight = 13
      end
      object edtReciptDateMiladi: TDBDateTimeEditEh
        Left = 71
        Top = 0
        Width = 99
        Height = 21
        ControlLabel.BiDiMode = bdRightToLeft
        ControlLabel.ParentBiDiMode = False
        Align = alLeft
        Color = 13431799
        DataField = 'ReciptDateMiladi'
        DataSource = srcRecipts
        DynProps = <>
        EditButtons = <>
        ShowHint = True
        TabOrder = 0
        Visible = True
        EditFormat = 'DD/MM/YYYY'
      end
      object EdtReciptDate: TDBEdit
        Left = 0
        Top = 0
        Width = 71
        Height = 21
        Align = alLeft
        DataField = 'ReciptDate'
        DataSource = srcRecipts
        TabOrder = 1
      end
    end
  end
  inherited Panel3: TPanel
    Top = 413
    Width = 1148
    Height = 246
    OnEnter = Panel3Enter
    ExplicitTop = 413
    ExplicitWidth = 1148
    ExplicitHeight = 246
    object lblCaptionGrd: TLabel
      Left = 2
      Top = 2
      Width = 3
      Height = 13
      Align = alTop
      Alignment = taRightJustify
    end
    object StatusBar2: TStatusBar
      Left = 2
      Top = 103
      Width = 1144
      Height = 19
      BiDiMode = bdRightToLeft
      BorderWidth = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Panels = <
        item
          Bevel = pbRaised
          Width = 200
        end
        item
          Bevel = pbRaised
          Width = 150
        end
        item
          Bevel = pbRaised
          Width = 150
        end
        item
          Bevel = pbRaised
          Width = 150
        end
        item
          Bevel = pbRaised
          Width = 150
        end
        item
          Width = 50
        end>
      ParentBiDiMode = False
      UseSystemFont = False
    end
    object StatusBar1: TStatusBar
      Left = 2
      Top = 122
      Width = 1144
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
    end
    object grpItemNote: TGroupBox
      Left = 2
      Top = 205
      Width = 1144
      Height = 39
      Align = alBottom
      Caption = #1578#1608#1590#1610#1581#1575#1578' '#1603#1575#1604#1575
      TabOrder = 4
      object dbmmoItemNote: TDBMemo
        Tag = 111
        Left = 2
        Top = 15
        Width = 1140
        Height = 22
        Align = alClient
        Color = 14152959
        DataField = 'ItemNote'
        DataSource = srcItems
        TabOrder = 0
      end
    end
    object grpReciptNote: TGroupBox
      Left = 2
      Top = 141
      Width = 1144
      Height = 64
      Align = alBottom
      Caption = #1578#1608#1590#1610#1581#1575#1578' '#1601#1585#1605
      TabOrder = 3
      object dbmmoReciptNote: TDBMemo
        Tag = 111
        Left = 156
        Top = 15
        Width = 986
        Height = 47
        Align = alClient
        Color = 14152959
        DataField = 'ReciptNote'
        DataSource = srcRecipts
        TabOrder = 0
      end
      object pnlInsertTime: TPanel
        Left = 2
        Top = 15
        Width = 154
        Height = 47
        Align = alLeft
        TabOrder = 1
        object Panel7: TPanel
          Left = 1
          Top = 1
          Width = 152
          Height = 23
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Label18: TLabel
            Left = 85
            Top = 0
            Width = 56
            Height = 13
            Align = alClient
            Alignment = taRightJustify
            BiDiMode = bdRightToLeft
            Caption = #1587#1575#1593#1578'  '#1608#1585#1608#1583
            ParentBiDiMode = False
          end
          object edtInsertTime: TDBEdit
            Left = 0
            Top = 0
            Width = 85
            Height = 19
            TabStop = False
            Align = alLeft
            Color = clInactiveCaption
            Ctl3D = False
            DataField = 'InsertTime'
            DataSource = srcRecipts
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
          end
        end
        object Panel8: TPanel
          Left = 1
          Top = 24
          Width = 152
          Height = 22
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object Label20: TLabel
            Left = 85
            Top = 0
            Width = 58
            Height = 13
            Align = alClient
            Alignment = taRightJustify
            BiDiMode = bdRightToLeft
            Caption = #1587#1575#1593#1578' '#1582#1585#1608#1580
            ParentBiDiMode = False
          end
          object edtEditTime: TDBEdit
            Left = 0
            Top = 0
            Width = 85
            Height = 19
            TabStop = False
            Align = alLeft
            Color = clInactiveCaption
            Ctl3D = False
            DataField = 'EditTime'
            DataSource = srcRecipts
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
          end
        end
      end
    end
    object DBGrid1: TCedarDbgrid
      Tag = 111
      Left = 2
      Top = 15
      Width = 1144
      Height = 88
      Align = alClient
      Border.ExtendedDraw = True
      Color = clCream
      Ctl3D = False
      DataSource = srcItems
      DynProps = <>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      FooterRowCount = 1
      FooterParams.FillStyle = cfstGradientEh
      GridLineParams.VertEmptySpaceStyle = dessNonEh
      HorzScrollBar.ExtraPanel.Visible = True
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ParentCtl3D = False
      ParentFont = False
      SearchPanel.Enabled = True
      SearchPanel.Location = splHorzScrollBarExtraPanelEh
      SortLocal = True
      SumList.Active = True
      TabOrder = 0
      OnColEnter = DBGrid1ColEnter
      OnColExit = DBGrid1ColExit
      OnEditButtonClick = DBGrid1EditButtonClick
      OnEnter = DBGrid1Enter
      OnExit = DBGrid1Exit
      OnKeyDown = DBGrid1KeyDown
      OnKeyPress = DBGrid1KeyPress
      OnKeyUp = DBGrid1KeyUp
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_radif'
          Footers = <>
        end
        item
          ButtonStyle = cbsEllipsis
          CellButtons = <>
          DynProps = <>
          EditButton.Style = ebsEllipsisEh
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'StuffCode'
          Footers = <>
          Width = 66
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_StuffName'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_UnitName'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_UnitName2'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_StuffTecInfo'
          Footers = <>
          Width = 64
        end
        item
          ButtonStyle = cbsEllipsis
          CellButtons = <>
          DynProps = <>
          EditButton.Style = ebsEllipsisEh
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'ProductModel'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_ProductModelName'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'RequestedEntity'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'RequestedWeight'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'AcceptEntity'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'AcceptWeight'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'RollbackEntity'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'RollbackWeight'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'InputEntity'
          Footer.FieldName = 'InputEntity'
          Footer.ValueType = fvtSum
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'OutputEntity'
          Footer.ValueType = fvtSum
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'InputWeight'
          Footer.ValueType = fvtSum
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'OutputWeight'
          Footer.ValueType = fvtSum
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'UnitSellPrice'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TotalInputPrice'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TotalOutputPrice'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'StandardRate'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TotalStandardRate'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'WaterCo'
          Footer.ValueType = fvtSum
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DeficitValue'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DeficitValueCo2'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DeficitValue2'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DeficitValueCo3'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DeficitValue3'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'StuffSize'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TotalDeficient'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TotallSellPrice_DeficitValue3'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TotallSellPrice'
          Footers = <>
          Width = 64
        end
        item
          ButtonStyle = cbsEllipsis
          CellButtons = <>
          DynProps = <>
          EditButton.Style = ebsEllipsisEh
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'ProductCode'
          Footers = <>
          Width = 64
        end
        item
          ButtonStyle = cbsEllipsis
          CellButtons = <>
          DynProps = <>
          EditButton.Style = ebsEllipsisEh
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'PersonID1'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_PersonName1'
          Footers = <>
          Width = 64
        end
        item
          ButtonStyle = cbsEllipsis
          CellButtons = <>
          DynProps = <>
          EditButton.Style = ebsEllipsisEh
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'UseUnitID'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_UseUnitName'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'AidNumber'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'AidDate'
          Footers = <>
          Width = 64
        end
        item
          ButtonStyle = cbsEllipsis
          CellButtons = <>
          DynProps = <>
          EditButton.Style = ebsEllipsisEh
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'acc_TopicCode'
          Footers = <>
          Width = 64
        end
        item
          ButtonStyle = cbsEllipsis
          CellButtons = <>
          DynProps = <>
          EditButton.Style = ebsEllipsisEh
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'acc_DetailCode'
          Footers = <>
          Width = 64
        end
        item
          ButtonStyle = cbsEllipsis
          CellButtons = <>
          DynProps = <>
          EditButton.Style = ebsEllipsisEh
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'acc_CTopicCode'
          Footers = <>
          Width = 64
        end
        item
          ButtonStyle = cbsEllipsis
          CellButtons = <>
          DynProps = <>
          EditButton.Style = ebsEllipsisEh
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'acc_CTopicCode2'
          Footers = <>
          Width = 64
        end
        item
          ButtonStyle = cbsEllipsis
          CellButtons = <>
          DynProps = <>
          EditButton.Style = ebsEllipsisEh
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'acc_CTopicCode3'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_PakhashCompany'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_gateKetab'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_NoeJeld'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_moalef'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_Motarjem'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_Nevisandeh'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_Tabageh'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ControlCode'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ItemDate'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ItemNote'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'InvEntity'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Req_InvEntity'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Req_InvEntity2'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'SecondTypeItem'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_c_KeepPlace'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'MachineFullWeight'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'MachineWeight'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TotalWeight'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'MachineName'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'MachineNo'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TotalPrice_TaxValue'
          Footers = <>
          Visible = False
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ParentForm'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'InvWeight'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TotallSellPrice_InvWeight'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'preReciptItemID'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'RegPrice'
          Footers = <>
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object grd1: TCedarDbgrid
      Tag = 1
      AlignWithMargins = True
      Left = 5087
      Top = 13090
      Width = 366
      Height = 158
      Align = alCustom
      Ctl3D = False
      DataSource = srcDeficits4Print
      DynProps = <>
      FooterParams.FillStyle = cfstGradientEh
      GridLineParams.VertEmptySpaceStyle = dessNonEh
      HorzScrollBar.ExtraPanel.Visible = True
      ParentCtl3D = False
      SearchPanel.Enabled = True
      SearchPanel.Location = splHorzScrollBarExtraPanelEh
      SortLocal = True
      TabOrder = 5
      Visible = False
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DeficitName'
          Footers = <>
          Width = 183
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Deficit_Add_Dec'
          Footers = <>
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object pnl1: TPanel [4]
    Left = 0
    Top = 709
    Width = 1148
    Height = 29
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    DesignSize = (
      1148
      29)
    object DBText12: TDBText
      Left = 965
      Top = 7
      Width = 47
      Height = 13
      Anchors = [akRight, akBottom]
      AutoSize = True
      Color = clCream
      DataField = '_OperatorName'
      DataSource = srcRecipts
      ParentColor = False
      Transparent = False
    end
    object Label2: TLabel
      Left = 1016
      Top = 7
      Width = 36
      Height = 13
      Alignment = taRightJustify
      Anchors = [akRight, akBottom]
      Caption = #1606#1575#1605' '#1603#1575#1585#1576#1585
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 771
    end
    object BtnDeficits: TBitBtn
      AlignWithMargins = True
      Left = 84
      Top = 3
      Width = 79
      Height = 23
      Action = actDeficits
      Align = alLeft
      Caption = #1603#1587#1608#1585#1575#1578'/'#1575#1590#1575#1601#1575#1578
      TabOrder = 3
      OnEnter = BtnDeficitsMouseEnter
      OnExit = BtnDeficitsMouseLeave
      OnMouseEnter = BtnDeficitsMouseEnter
      OnMouseLeave = BtnDeficitsMouseLeave
    end
    object BitBtn15: TBitBtn
      AlignWithMargins = True
      Left = 582
      Top = 3
      Width = 99
      Height = 23
      Action = actRow
      Align = alLeft
      Caption = #1605#1585#1578#1576' '#1603#1585#1583#1606' '#1585#1583#1610#1601
      TabOrder = 4
    end
    object BtnDelete2: TBitBtn
      AlignWithMargins = True
      Left = 169
      Top = 3
      Width = 75
      Height = 23
      Action = DataSetDelete2
      Align = alLeft
      Caption = #1581#1584#1601
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006B84
        C6000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
        A5000021A5000021A5000021A5000021A5006B84C600FF00FF00FF00FF000021
        A5009494F7000029E7000029E7000029E7000029E7000029E7000029E7000029
        E7000029E7000029E7000029E7000029E7000021A500FF00FF00FF00FF000021
        A500B5C6FF009CBDFF009CBDFF009CB5FF009CB5FF009CB5FF00638CF700638C
        F700638CF700638CF700526BF700526BF7000021A500FF00FF00FF00FF006B84
        C6000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
        A5000021A5000021A5000021A5000021A5006B84C600FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 2
    end
    object BtnMachineFullWeight2: TBitBtn
      AlignWithMargins = True
      Left = 331
      Top = 3
      Width = 79
      Height = 23
      Align = alLeft
      Caption = #1575#1601#1586#1608#1583#1606' '#1608#1586#1606'2'
      TabOrder = 1
      OnClick = BtnMachineFullWeight2Click
    end
    object BitBtn9: TBitBtn
      Left = 1062
      Top = 2
      Width = 79
      Height = 25
      Action = actCopyPaste
      Anchors = [akTop, akRight]
      Caption = #1603#1662#1610' '#1587#1591#1585
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00CE63
        0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
        0000CE630000CE630000CE630000CE630000CE630000CE630000FF00FF00CE63
        0000FFFFFF00FFFFF700948C8C00948C8C00948C8C00948C8C00FFD6AD00FFD6
        AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00CE630000FF00FF00CE63
        0000FFFFFF00FFFFFF00313129006B7394001029A50021213900FFE7C600FFDE
        B500FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00CE630000FF00FF00CE63
        0000FFFFFF00FFFFFF0031313900637BE700FFFFF70010219C00FFEFD600FFE7
        C600FFDEB500FFD6AD00FFD6AD00FFD6AD00FFD6AD00CE630000FF00FF00CE63
        0000FFFFFF00FFFFFF0042424200524A4A005A524A00182994006373D600FFEF
        D600FFE7C600FFDEB500FFD6AD00FFD6AD00FFD6AD00CE630000FF00FF00CE63
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00637BE700425A
        E700FFEFD600FFE7C600FFDEB500FFD6AD00FFD6AD00CE630000FF00FF00CE63
        0000FFFFFF00FFFFFF00948C8C00948C8C00948C8C00948C8C00FFFFFF00FFFF
        FF00FFF7E700FFEFD600FFE7C600FFDEB500FFD6AD00CE630000FF00FF00CE63
        0000FFFFFF00FFFFFF00313129006B7394001029A50021213900FFFFFF00FFFF
        FF00FFFFF700FFF7E700FFEFD600FFE7C600FFDEB500CE630000FF00FF00CE63
        0000FFFFFF00FFFFFF0031313900637BE700FFFFFF0010219C00FFFFFF00FFFF
        FF00FFFFFF00FFFFF700FFF7E700FFEFD600FFE7C600CE630000FF00FF00CE63
        0000FFFFFF00FFFFFF0042424200524A4A005A524A00182994006373D600FFFF
        FF00FFFFFF00FFFFFF00FFFFF700FFF7E700FFEFD600CE630000FF00FF00CE63
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00637BE700425A
        E700FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7E700CE630000FF00FF00CE63
        0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
        0000CE630000CE630000CE630000CE630000CE630000CE630000FF00FF00FF00
        FF00CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
        0000CE630000CE630000CE630000CE630000CE630000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 0
    end
    object btn1: TBitBtn
      AlignWithMargins = True
      Left = 250
      Top = 3
      Width = 75
      Height = 23
      Action = DataSetEdit2
      Align = alLeft
      Caption = #1608#1610#1585#1575#1610#1588'...'
      TabOrder = 5
    end
    object btnPayments: TBitBtn
      AlignWithMargins = True
      Left = 416
      Top = 3
      Width = 79
      Height = 23
      Action = actPayments
      Align = alLeft
      Caption = #1606#1581#1608#1607' '#1662#1585#1583#1575#1582#1578
      TabOrder = 6
    end
    object BitBtn11: TBitBtn
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 75
      Height = 23
      Action = actNoteMaster
      Align = alLeft
      Caption = #1578#1608#1590#1610#1581#1575#1578' '#1601#1585#1605
      TabOrder = 7
    end
    object BitBtn12: TBitBtn
      AlignWithMargins = True
      Left = 501
      Top = 3
      Width = 75
      Height = 23
      Action = actInsertRow
      Align = alLeft
      Caption = #1583#1585#1580' '#1585#1583#1740#1601
      TabOrder = 8
    end
  end
  object pnlMaster: TPanel [5]
    Left = 0
    Top = 54
    Width = 1148
    Height = 359
    Align = alTop
    AutoSize = True
    TabOrder = 1
    object pnlDefaultDateSecondType: TPanel
      Left = 1
      Top = 31
      Width = 1146
      Height = 29
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object PnlSecondType: TPanel
        Left = 0
        Top = 0
        Width = 354
        Height = 29
        Align = alLeft
        BevelOuter = bvNone
        BevelWidth = 2
        TabOrder = 1
        TabStop = True
        object Label3: TLabel
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
          Hint = #1576#1585#1575#1740' '#1662#1740#1588' '#1601#1585#1590' '#1602#1585#1575#1585#1583#1575#1583#1606' '#1606#1608#1593' '#1580#1575#1585#1740' '#1585#1608#1740' '#1570#1606' double click '#1705#1606#1740#1583
          BiDiMode = bdLeftToRight
          DataField = 'SecondType'
          DataSource = srcRecipts
          Items.Strings = (
            #1606#1602#1583
            #1593#1585#1601' '#1601#1585#1608#1588#1610)
          ParentBiDiMode = False
          TabOrder = 0
          OnDblClick = CmbSecondTypeDblClick
          OnEnter = CmbSecondTypeEnter
        end
      end
      object pnlDefaultDate: TPanel
        Left = 842
        Top = 0
        Width = 304
        Height = 29
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object Label10: TLabel
          AlignWithMargins = True
          Left = 249
          Top = 6
          Width = 52
          Height = 13
          Margins.Top = 6
          Align = alRight
          BiDiMode = bdLeftToRight
          Caption = #1578#1575#1585#1610#1582' '#1580#1575#1606#1576#1610
          ParentBiDiMode = False
        end
        object Label15: TLabel
          AlignWithMargins = True
          Left = 146
          Top = 6
          Width = 21
          Height = 13
          Margins.Top = 6
          Align = alRight
          BiDiMode = bdLeftToRight
          Caption = #1605#1583#1578
          ParentBiDiMode = False
        end
        object dbedtDefaultDate: TDBEdit
          Tag = 14
          AlignWithMargins = True
          Left = 173
          Top = 3
          Width = 70
          Height = 23
          Align = alRight
          DataField = 'DefaultDate'
          DataSource = srcRecipts
          TabOrder = 0
          ExplicitHeight = 21
        end
        object edtDefaultDuration: TDBEdit
          AlignWithMargins = True
          Left = 49
          Top = 4
          Width = 91
          Height = 21
          Margins.Top = 4
          Margins.Bottom = 4
          Align = alRight
          DataField = 'DefaultDuration'
          DataSource = srcRecipts
          MaxLength = 9
          TabOrder = 1
        end
      end
    end
    object pnlSells: TPanel
      Left = 1
      Top = 60
      Width = 1146
      Height = 29
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      TabStop = True
      object pnlSellsEmporium: TPanel
        Left = 730
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
        object Label13: TLabel
          Left = 347
          Top = 6
          Width = 52
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1605#1585#1603#1586' '#1601#1585#1608#1588
          FocusControl = dblkcbb_SellsEmporium
        end
        object dblkcbb_SellsEmporium: TDBLookupComboBox
          Tag = 1
          Left = 151
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
        object Label8: TLabel
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
    object pnlStoreP1: TPanel
      Left = 1
      Top = 89
      Width = 1146
      Height = 53
      Align = alTop
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 2
      object PnlPerson1: TPanel
        Left = 0
        Top = 29
        Width = 1146
        Height = 24
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          1146
          24)
        object LblPerson1: TLabel
          Left = 1077
          Top = 6
          Width = 11
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1603#1583
          FocusControl = EdtPersonID1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 834
        end
        object btnPersonID1: TSpeedButton
          Left = 979
          Top = 1
          Width = 23
          Height = 22
          Anchors = [akTop, akRight]
          Caption = '...'
          OnClick = btnPersonID1Click
          ExplicitLeft = 763
        end
        object DBTextPersonID1: TDBText
          Left = 891
          Top = 4
          Width = 85
          Height = 13
          Anchors = [akTop, akRight]
          AutoSize = True
          Color = clCream
          DataField = '_PersonName1'
          DataSource = srcRecipts
          ParentColor = False
          Transparent = False
        end
        object EdtPersonID1: TDBEdit
          Left = 1004
          Top = 2
          Width = 70
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'PersonID1'
          DataSource = srcRecipts
          TabOrder = 0
          OnKeyDown = ALLDBEditKeyDown
        end
        object Panel1: TPanel
          Left = 0
          Top = 4
          Width = 500
          Height = 15
          Align = alCustom
          BevelOuter = bvNone
          TabOrder = 1
          object DBText8: TDBText
            Left = 436
            Top = 0
            Width = 41
            Height = 13
            Align = alClient
            AutoSize = True
            Color = clBtnFace
            DataField = '_CustomersDiscountNote'
            DataSource = srcRecipts
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object LblReMainPerson: TLabel
            Left = 477
            Top = 0
            Width = 23
            Height = 13
            CustomHint = DMF.BalloonHint1
            Align = alRight
            Caption = #1605#1575#1606#1583#1607
            Color = clHighlight
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
        end
      end
      object PnlAidInfoMaster: TPanel
        Left = 1
        Top = 25
        Width = 372
        Height = 28
        Align = alCustom
        BevelOuter = bvNone
        TabOrder = 2
        DesignSize = (
          372
          28)
        object LblAidInfoNo: TLabel
          Left = 270
          Top = 7
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = #1588#1605#1575#1585#1607' '
          FocusControl = DBEdit4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object LblAidInfoDate: TLabel
          Left = 80
          Top = 7
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Anchors = [akLeft, akBottom]
          Caption = #1578#1575#1585#1610#1582' '
          FocusControl = DBEdit6
        end
        object DBEdit4: TDBEdit
          Tag = 20
          Left = 197
          Top = 3
          Width = 70
          Height = 21
          Anchors = [akRight, akBottom]
          DataField = 'AidNumber'
          DataSource = srcRecipts
          TabOrder = 0
        end
        object DBEdit6: TDBEdit
          Tag = 20
          Left = 7
          Top = 3
          Width = 70
          Height = 21
          Anchors = [akLeft, akBottom]
          DataField = 'AidDate'
          DataSource = srcRecipts
          TabOrder = 1
        end
      end
      object pnlStore: TPanel
        Left = 0
        Top = 0
        Width = 1146
        Height = 26
        Align = alTop
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 0
        object pnlStore1: TPanel
          Left = 746
          Top = 0
          Width = 400
          Height = 26
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            400
            26)
          object LblStore: TLabel
            Left = 331
            Top = 6
            Width = 35
            Height = 13
            Alignment = taRightJustify
            Caption = #1603#1583' '#1576#1606#1711#1575#1607
            FocusControl = EdtStoreID
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object btnStoreID: TSpeedButton
            Tag = 1
            Left = 233
            Top = 1
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = btnStoreIDClick
          end
          object DBTextStoreID: TDBText
            Left = 158
            Top = 4
            Width = 72
            Height = 13
            Anchors = [akTop, akRight]
            AutoSize = True
            Color = clCream
            DataField = '_StoresName'
            DataSource = srcRecipts
            ParentColor = False
            Transparent = False
          end
          object EdtStoreID: TDBEdit
            Tag = 1
            Left = 258
            Top = 2
            Width = 70
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'StoreID'
            DataSource = srcRecipts
            TabOrder = 0
            OnKeyDown = ALLDBEditKeyDown
          end
        end
        object pnlStore2: TPanel
          Left = 0
          Top = 0
          Width = 376
          Height = 26
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            376
            26)
          object dbtxt_StoresName2: TDBText
            Left = 76
            Top = 5
            Width = 96
            Height = 13
            Anchors = [akTop, akRight]
            AutoSize = True
            Color = clCream
            DataField = '_StoresName2'
            DataSource = srcRecipts
            ParentColor = False
            Transparent = False
          end
          object btnStoreID2: TSpeedButton
            Tag = 2
            Left = 175
            Top = 2
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = btnStoreIDClick
          end
          object LblStore2: TLabel
            Left = 271
            Top = 7
            Width = 41
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1576#1606#1711#1575#1607'2'
            FocusControl = EdtStoreID2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object EdtStoreID2: TDBEdit
            Tag = 2
            Left = 198
            Top = 3
            Width = 70
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'StoreID2'
            DataSource = srcRecipts
            TabOrder = 0
            OnKeyDown = ALLDBEditKeyDown
          end
        end
      end
    end
    object pnlMasir_Delivery: TPanel
      Left = 1
      Top = 142
      Width = 1146
      Height = 29
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object pnlMasir: TPanel
        Left = 360
        Top = 0
        Width = 786
        Height = 29
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          786
          29)
        object btnMasirID: TSpeedButton
          Tag = 1
          Left = 619
          Top = 2
          Width = 23
          Height = 22
          Anchors = [akTop, akRight]
          Caption = '...'
          OnClick = btnMasirIDClick
          ExplicitLeft = 376
        end
        object dbtxt_MasirID: TDBText
          Left = 548
          Top = 5
          Width = 68
          Height = 13
          Anchors = [akTop, akRight]
          AutoSize = True
          Color = clCream
          DataSource = srcRecipts
          ParentColor = False
          Transparent = False
        end
        object Label11: TLabel
          Left = 717
          Top = 7
          Width = 41
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1603#1583' '#1605#1587#1610#1585
          FocusControl = dbedtMasirID
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 474
        end
        object dbedtMasirID: TDBEdit
          Tag = 1
          Left = 644
          Top = 3
          Width = 70
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'MasirID'
          DataSource = srcRecipts
          TabOrder = 0
          OnKeyDown = ALLDBEditKeyDown
        end
      end
      object pnlDelivery: TPanel
        Left = 0
        Top = 0
        Width = 360
        Height = 29
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          360
          29)
        object Label12: TLabel
          Left = 271
          Top = 9
          Width = 82
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1603#1583' '#1605#1581#1604' '#1578#1581#1608#1610#1604' '#1603#1575#1604#1575
          FocusControl = dbedtDeliveryID
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object btnDeliveryID: TSpeedButton
          Left = 175
          Top = 4
          Width = 23
          Height = 22
          Anchors = [akTop, akRight]
          Caption = '...'
          OnClick = btnDeliveryIDClick
        end
        object dbtxt_DeliveryID: TDBText
          Left = 90
          Top = 7
          Width = 82
          Height = 13
          Anchors = [akTop, akRight]
          AutoSize = True
          Color = clCream
          DataSource = srcRecipts
          ParentColor = False
          Transparent = False
        end
        object dbedtDeliveryID: TDBEdit
          Left = 198
          Top = 4
          Width = 70
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'DeliveryID'
          DataSource = srcRecipts
          ReadOnly = True
          TabOrder = 0
          OnKeyDown = ALLDBEditKeyDown
        end
      end
    end
    object PnlPerson2_ArzActive: TPanel
      Left = 1
      Top = 171
      Width = 1146
      Height = 27
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
      object PnlPerson2: TPanel
        Left = 674
        Top = 0
        Width = 472
        Height = 27
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          472
          27)
        object LblPerson2: TLabel
          Left = 403
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
        end
        object btnPersonID2: TSpeedButton
          Left = 305
          Top = 3
          Width = 23
          Height = 22
          Anchors = [akTop, akRight]
          Caption = '...'
          OnClick = btnPersonID2Click
        end
        object dbtxt_PersonName2: TDBText
          Left = 204
          Top = 6
          Width = 98
          Height = 13
          Anchors = [akTop, akRight]
          AutoSize = True
          Color = clCream
          DataField = '_PersonName2'
          DataSource = srcRecipts
          ParentColor = False
          Transparent = False
        end
        object EdtPersonID2: TDBEdit
          Left = 330
          Top = 4
          Width = 70
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'PersonID2'
          DataSource = srcRecipts
          TabOrder = 0
          OnKeyDown = ALLDBEditKeyDown
        end
        object dbchkPersonID2Bed: TDBCheckBox
          Left = 24
          Top = 8
          Width = 97
          Height = 17
          Caption = #1576#1583#1607#1610' '#1608#1575#1587#1591
          DataField = 'PersonID2Bed'
          DataSource = srcRecipts
          TabOrder = 1
          ValueChecked = '1'
          ValueUnchecked = '0'
          Visible = False
        end
      end
      object PnlArzActive: TPanel
        Left = 0
        Top = 0
        Width = 312
        Height = 27
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          312
          27)
        object Label4: TLabel
          Left = 271
          Top = 7
          Width = 29
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1606#1608#1593' '#1575#1585#1586
        end
        object Label5: TLabel
          Left = 81
          Top = 7
          Width = 30
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1585#1610#1575#1604'/'#1575#1585#1586
          FocusControl = DBEdit1
        end
        object CmbArzTypeID: TDBComboBox
          Left = 112
          Top = 3
          Width = 156
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'ArzTypeID'
          DataSource = srcRecipts
          TabOrder = 0
          OnEnter = CmbSecondTypeEnter
        end
        object DBEdit1: TDBEdit
          Tag = 20
          Left = 5
          Top = 0
          Width = 70
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'RialsEqual'
          DataSource = srcRecipts
          TabOrder = 1
        end
      end
    end
    object pnlUse: TPanel
      Left = 1
      Top = 251
      Width = 1146
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 7
      object PnlUseUnitM: TPanel
        Left = 408
        Top = 0
        Width = 738
        Height = 26
        Align = alRight
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          738
          26)
        object LblUseUnitM: TLabel
          Left = 669
          Top = 9
          Width = 51
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1603#1583#1605' '#1605#1589#1585#1601
          FocusControl = EdtUseUnitID_M
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 426
        end
        object btnUseUnitID: TSpeedButton
          Left = 571
          Top = 4
          Width = 23
          Height = 22
          Anchors = [akTop, akRight]
          Caption = '...'
          OnClick = btnUseUnitIDClick
          ExplicitLeft = 328
        end
        object DBTextUseUnitID_M: TDBText
          Left = 471
          Top = 7
          Width = 97
          Height = 13
          Anchors = [akTop, akRight]
          AutoSize = True
          Color = clCream
          DataField = '_UseUnitName'
          DataSource = srcRecipts
          ParentColor = False
          Transparent = False
        end
        object EdtUseUnitID_M: TDBEdit
          Left = 596
          Top = 5
          Width = 70
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'UseUnitID'
          DataSource = srcRecipts
          TabOrder = 0
          OnKeyDown = ALLDBEditKeyDown
        end
      end
      object pnlUseOtherActive: TPanel
        Left = 0
        Top = 0
        Width = 360
        Height = 26
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          360
          26)
        object DBTxtUseOtherID: TDBText
          Left = 86
          Top = 5
          Width = 86
          Height = 13
          Anchors = [akTop, akRight]
          AutoSize = True
          Color = clCream
          DataSource = srcRecipts
          ParentColor = False
          Transparent = False
        end
        object btnUseOtherID: TSpeedButton
          Left = 175
          Top = 2
          Width = 23
          Height = 22
          Anchors = [akTop, akRight]
          Caption = '...'
          OnClick = btnUseOtherIDClick
        end
        object Label9: TLabel
          Left = 271
          Top = 7
          Width = 54
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1587#1575#1610#1585#1605#1581#1604'.'#8207#1605
          FocusControl = DBEdit2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit2: TDBEdit
          Left = 198
          Top = 3
          Width = 70
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'UseOtherID'
          DataSource = srcRecipts
          TabOrder = 0
          OnKeyDown = ALLDBEditKeyDown
        end
      end
    end
    object PnlMachineM: TPanel
      Left = 1
      Top = 277
      Width = 1146
      Height = 27
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 8
      DesignSize = (
        1146
        27)
      object Label27: TLabel
        Left = 1080
        Top = 6
        Width = 41
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1606#1575#1605' '#1585#1575#1606#1606#1583#1607
        FocusControl = edtMachineName
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 837
      end
      object Label28: TLabel
        Left = 877
        Top = 7
        Width = 65
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1588#1605#1575#1585#1607' '#1605#1575#1588#1610#1606
        FocusControl = edtMachineNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 634
      end
      object Label14: TLabel
        Left = 143
        Top = 7
        Width = 61
        Height = 13
        Alignment = taRightJustify
        Caption = #1588#1605#1575#1585#1607' '#1576#1575#1585#1606#1575#1605#1607
        FocusControl = edtTruckNumber
      end
      object lblMachineInfo: TLabel
        Left = 339
        Top = 7
        Width = 40
        Height = 13
        Alignment = taRightJustify
        Caption = #1575#1591#1604#1575#1593#1575#1578' '
        FocusControl = edtMachineInfo
      end
      object edtMachineName: TDBEdit
        Tag = 1
        Left = 943
        Top = 3
        Width = 131
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'MachineName'
        DataSource = srcRecipts
        TabOrder = 0
      end
      object edtMachineNo: TDBEdit
        Tag = 1
        Left = 752
        Top = 3
        Width = 121
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'MachineNo'
        DataSource = srcRecipts
        TabOrder = 1
      end
      object edtTruckNumber: TDBEdit
        Left = 8
        Top = 3
        Width = 131
        Height = 21
        DataField = 'TruckNumber'
        DataSource = srcRecipts
        TabOrder = 2
      end
      object edtMachineInfo: TDBEdit
        Left = 208
        Top = 3
        Width = 131
        Height = 21
        DataField = 'MachineInfo'
        DataSource = srcRecipts
        TabOrder = 3
      end
    end
    object pnlRecuest: TPanel
      Left = 1
      Top = 304
      Width = 1146
      Height = 27
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 9
      Visible = False
      DesignSize = (
        1146
        27)
      object Label16: TLabel
        Left = 1080
        Top = 6
        Width = 60
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = ' '#1588#1605#1575#1585#1607' '#1578#1602#1575#1590#1575
        FocusControl = edtMachineNo1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 837
      end
      object Label17: TLabel
        Left = 879
        Top = 8
        Width = 49
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1610#1582' '#1575#1593#1578#1576#1575#1585
        FocusControl = edtExpireDate
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 636
      end
      object Label19: TLabel
        Left = 339
        Top = 7
        Width = 34
        Height = 13
        Alignment = taRightJustify
        Caption = #1603#1583' '#1601#1606#1610
        FocusControl = edtMachineName1
      end
      object edtMachineNo1: TDBEdit
        Tag = 1
        Left = 943
        Top = 3
        Width = 131
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'MachineNo'
        DataSource = srcRecipts
        TabOrder = 0
      end
      object edtExpireDate: TDBEdit
        Tag = 1
        Left = 752
        Top = 3
        Width = 121
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'ExpireDate'
        DataSource = srcRecipts
        TabOrder = 1
      end
      object edtMachineName1: TDBEdit
        Left = 208
        Top = 3
        Width = 131
        Height = 21
        DataField = 'MachineName'
        DataSource = srcRecipts
        TabOrder = 2
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 1146
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 10
      DesignSize = (
        1146
        30)
      object LblStateChang: TLabel
        Left = 535
        Top = 5
        Width = 104
        Height = 23
        Anchors = [akTop]
        Caption = #1608#1590#1593#1610#1578' '#1576#1575#1591#1604#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
        ExplicitLeft = 424
      end
      object dbtxtReciptState: TDBText
        AlignWithMargins = True
        Left = 1018
        Top = 6
        Width = 98
        Height = 21
        Margins.Top = 6
        Margins.Right = 30
        Align = alRight
        Alignment = taCenter
        AutoSize = True
        DataField = 'ReciptState'
        DataSource = srcRecipts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitHeight = 13
      end
      object txtDocNo: TDBText
        AlignWithMargins = True
        Left = 933
        Top = 6
        Width = 52
        Height = 21
        Hint = #1588#1605#1575#1585#1607' '#1587#1606#1583
        Margins.Top = 6
        Margins.Right = 30
        Align = alRight
        AutoSize = True
        DataField = 'DocNo'
        DataSource = srcRecipts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitHeight = 13
      end
      object txtDocDate: TDBText
        AlignWithMargins = True
        Left = 855
        Top = 6
        Width = 65
        Height = 21
        Hint = #1578#1575#1585#1740#1582' '#1587#1606#1583
        Margins.Top = 6
        Margins.Right = 10
        Align = alRight
        AutoSize = True
        DataField = 'DocDate'
        DataSource = srcRecipts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitHeight = 13
      end
      object dbtxtParentReciptNumber: TDBText
        AlignWithMargins = True
        Left = 99
        Top = 3
        Width = 125
        Height = 24
        Hint = #1588#1605#1575#1585#1607' '#1601#1585#1605' '#1605#1585#1578#1576#1591
        Align = alLeft
        AutoSize = True
        DataField = 'ParentReciptNumber'
        DataSource = srcRecipts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitHeight = 13
      end
      object lblReciptsRow: TLabel
        AlignWithMargins = True
        Left = 315
        Top = 7
        Width = 30
        Height = 20
        Margins.Top = 7
        Align = alLeft
        Caption = #1588#1605#1575#1585#1607
        FocusControl = edtReciptsRow
        ExplicitHeight = 13
      end
      object BitBtn5: TBitBtn
        Left = 0
        Top = 0
        Width = 96
        Height = 30
        Margins.Left = 1
        Margins.Top = 5
        Margins.Right = 1
        Margins.Bottom = 5
        Action = actChangeState
        Align = alLeft
        Caption = #1578#1594#1740#1740#1585' '#1608#1590#1593#1740#1578
        TabOrder = 0
      end
      object edtReciptsRow: TDBEdit
        AlignWithMargins = True
        Left = 230
        Top = 3
        Width = 79
        Height = 24
        Align = alLeft
        DataField = 'ReciptsRow'
        DataSource = srcRecipts
        TabOrder = 1
        ExplicitHeight = 21
      end
    end
    object pnlMasterTozinActive: TPanel
      Left = 1
      Top = 331
      Width = 1146
      Height = 27
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 11
      Visible = False
      DesignSize = (
        1146
        27)
      object Label21: TLabel
        Left = 1080
        Top = 6
        Width = 46
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1608#1586#1606' '#1582#1575#1604#1740' '
        FocusControl = edtMachineWeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 864
      end
      object Label22: TLabel
        Left = 879
        Top = 8
        Width = 27
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1608#1586#1606' '#1662#1585
        FocusControl = edtMachineFullWeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 663
      end
      object edtMachineWeight: TDBEdit
        Tag = 1
        Left = 943
        Top = 3
        Width = 131
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'MachineWeight'
        DataSource = srcRecipts
        TabOrder = 0
      end
      object edtMachineFullWeight: TDBEdit
        Tag = 1
        Left = 752
        Top = 3
        Width = 121
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'MachineFullWeight'
        DataSource = srcRecipts
        TabOrder = 1
      end
    end
    object pnlPerson3And: TPanel
      Left = 1
      Top = 198
      Width = 1146
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 5
      object pnlPerson3: TPanel
        Left = 656
        Top = 0
        Width = 490
        Height = 26
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          490
          26)
        object btnPersonID3: TSpeedButton
          Tag = 3
          Left = 323
          Top = 3
          Width = 23
          Height = 22
          Anchors = [akTop, akRight]
          Caption = '...'
          OnClick = btnPersonID3Click
          ExplicitLeft = 736
        end
        object dbtxtPersonID3: TDBText
          Left = 244
          Top = 6
          Width = 76
          Height = 13
          Anchors = [akTop, akRight]
          AutoSize = True
          Color = clCream
          DataSource = srcRecipts
          ParentColor = False
          Transparent = False
        end
        object LblPerson3: TLabel
          Left = 421
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
          ExplicitLeft = 834
        end
        object dbedtPersonID3: TDBEdit
          Left = 348
          Top = 4
          Width = 70
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'PersonID3'
          DataSource = srcRecipts
          TabOrder = 0
          OnKeyDown = ALLDBEditKeyDown
        end
      end
    end
    object pnlPerson4: TPanel
      Left = 1
      Top = 224
      Width = 1146
      Height = 27
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 6
      DesignSize = (
        1146
        27)
      object btnPersonID4: TSpeedButton
        Tag = 4
        Left = 979
        Top = 3
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        OnClick = btnPersonID3Click
        ExplicitLeft = 763
      end
      object dbtxtPersonID4: TDBText
        Left = 900
        Top = 6
        Width = 76
        Height = 13
        Anchors = [akTop, akRight]
        AutoSize = True
        Color = clCream
        DataSource = srcRecipts
        ParentColor = False
        Transparent = False
      end
      object LblPerson4: TLabel
        Left = 1077
        Top = 8
        Width = 57
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1603#1583' '#1605#1588#1578#1585#1610'4'
        FocusControl = edtPersonID4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 861
      end
      object edtPersonID4: TDBEdit
        Left = 1004
        Top = 4
        Width = 70
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'PersonID4'
        DataSource = srcRecipts
        TabOrder = 0
        OnKeyDown = ALLDBEditKeyDown
      end
    end
  end
  object aBigPanel: TPanel [6]
    Left = 245
    Top = 484
    Width = 233
    Height = 120
    Align = alCustom
    Anchors = [akLeft, akBottom]
    AutoSize = True
    Caption = '0'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clGreen
    Font.Height = -64
    Font.Name = 'Badr'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    object horoofPanel: TPanel
      Left = 1
      Top = 95
      Width = 231
      Height = 24
      Align = alBottom
      BevelInner = bvLowered
      BevelOuter = bvLowered
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
  inherited ActionList: TActionList
    Left = 103
    Top = 90
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
      Caption = #1581#1584#1601' '#1601#1585#1605
      DataSource = srcRecipts
    end
    object DataSetInsert2: TDataSetInsert [8]
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      Hint = ' '
      ShortCut = 16497
      DataSource = srcItems
    end
    object DataSetEdit2: TDataSetEdit [9]
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588'...'
      Hint = ' '
      ShortCut = 16499
      DataSource = srcItems
    end
    object DataSetCancel2: TDataSetCancel [10]
      Category = 'Dataset'
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = ' '
      DataSource = srcItems
    end
    object DataSetDelete2: TDataSetDelete [11]
      Category = 'Dataset'
      Caption = #1581#1584#1601
      ImageIndex = 0
      DataSource = srcItems
    end
    object actSendExel: TAction [12]
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendExelExecute
    end
    object actSort: TAction [13]
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actPrint: TAction [14]
      Tag = -2
      Caption = #1670#1600#1600#1600#1575#1662
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object DataSetPost2: TDataSetPost [15]
      Category = 'Dataset'
      Caption = #1578#1575#1610#1610#1583
      ShortCut = 16503
      DataSource = srcItems
    end
    object actSearch: TAction [16]
      Caption = #1580#1587#1578#1580#1608
      ShortCut = 114
      OnExecute = actSearchExecute
    end
    object actRecall: TAction [17]
      Hint = #1601#1585#1575#1582#1608#1575#1606#1610' '#1575#1586' ...'
      ImageIndex = 8
      OnExecute = actRecallExecute
    end
    object actRecallSpecialReciptsF: TAction [18]
      Hint = #1601#1585#1575#1582#1608#1575#1606#1610' '#1608#1610#1688#1607
      ImageIndex = 9
      OnExecute = actRecallSpecialReciptsFExecute
    end
    object actPrint1: TAction [19]
      Tag = 1
      Caption = #1670#1600#1600#1600#1575#1662' 1'
      OnExecute = actPrint1Execute
    end
    object actNoteMaster: TAction [20]
      Caption = #1578#1608#1590#1610#1581#1575#1578' '#1601#1585#1605
      OnExecute = actNoteMasterExecute
    end
    object actSearchReciptNumber: TAction [21]
      Caption = '...'
      OnExecute = actSearchReciptNumberExecute
    end
    object actCorrelateRecipt: TAction [22]
      Caption = #1579#1576#1578' '#1601#1585#1605' '#1605#1585#1578#1576#1591
      OnExecute = actCorrelateReciptExecute
    end
    object actDeficits: TAction [23]
      Caption = #1603#1587#1608#1585#1575#1578'/'#1575#1590#1575#1601#1575#1578
      ShortCut = 16570
      OnExecute = actDeficitsExecute
    end
    object actCorrelateConversionCo: TAction [24]
      Caption = #1579#1576#1578' '#1601#1585#1605' '#1590#1585#1575#1610#1576
      OnExecute = actCorrelateConversionCoExecute
    end
    object actReciptStateTo0: TAction [25]
      Caption = #1576#1575#1591#1604' '#1603#1585#1583#1606
      OnExecute = actReciptStateTo0Execute
    end
    object actReportSearch: TAction [26]
      Caption = #1580#1587#1578#1580#1608#1610' '#1711#1586#1575#1585#1588#1575#1578
      OnExecute = actReportSearchExecute
    end
    object actReciptOnFormsRange: TAction [27]
      Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1582#1586#1575#1606#1607#8207#1583#1575#1585#1610
      OnExecute = actReciptOnFormsRangeExecute
    end
    object actDeleteCorrelateRecipt: TAction [28]
      Caption = #1581#1584#1601' '#1601#1585#1605' '#1605#1585#1578#1576#1591
      OnExecute = actDeleteCorrelateReciptExecute
    end
    object actShowCorrelateRecipt: TAction [29]
      Caption = #1606#1605#1575#1740#1588' '#1601#1585#1605' '#1605#1585#1578#1576#1591
      OnExecute = actShowCorrelateReciptExecute
    end
    object actGetExcel: TAction [30]
      Caption = #1582#1608#1575#1606#1583#1606' '#1575#1586' Excel '#8207#1576#1583#1608#1606' '#1603#1606#1578#1585#1604
      OnExecute = actGetExcelExecute
    end
    object actAllEdit: TAction [31]
      Caption = #1608#1610#1585#1575#1610#1588' '#1603#1604#1610#1607' '#1587#1591#1585#1607#1575
      OnExecute = actAllEditExecute
    end
    object actCopyPaste: TAction [32]
      Caption = #1603#1662#1610' '#1587#1591#1585
      ImageIndex = 10
      ShortCut = 16397
      OnExecute = actCopyPasteExecute
    end
    object actInsertNote1: TAction [33]
      Caption = #1603#1662#1610' '#1588#1585#1581' '#1607#1575#1610' '#1575#1587#1578#1575#1606#1583#1575#1585#1583
      OnExecute = actInsertNote1Execute
    end
    object actInsertNote2: TAction [34]
      Caption = #1603#1662#1610' '#1588#1585#1581' '#1607#1575#1610' '#1575#1587#1578#1575#1606#1583#1575#1585#1583' '#1583#1585' '#1578#1608#1590#1610#1581#1575#1578' '#1601#1585#1605
      OnExecute = actInsertNote2Execute
    end
    object actBarcode: TAction [35]
      Caption = #1670#1575#1662' '#1576#1575#1585#1603#1583
      ImageIndex = 11
      OnExecute = actBarcodeExecute
    end
    object actAllotment: TAction [36]
      Caption = #1578#1587#1607#1610#1605' '#1608' '#1575#1590#1575#1601#1607' '#1606#1605#1608#1583#1606' '#1605#1576#1604#1594' '#1576#1607' '#1603#1575#1604#1575#1607#1575
      OnExecute = actAllotmentExecute
    end
    object actSaveFormItems: TAction [37]
      Caption = #1584#1582#1610#1585#1607' '#1603#1583#1607#1575#1610' '#1603#1575#1604#1575'...'#8207
      OnExecute = actSaveFormItemsExecute
    end
    object actLoadFormItems: TAction [38]
      Caption = #1582#1608#1575#1606#1583#1606' '#1603#1583#1607#1575#1610' '#1603#1575#1604#1575' '#1575#1586'...'#8207
      OnExecute = actLoadFormItemsExecute
    end
    object actReciptsRegulates: TAction [39]
      Caption = #1578#1593#1583#1610#1604' '#1576#1607#1575#1610' '#1603#1575#1604#1575
      OnExecute = actReciptsRegulatesExecute
    end
    object actRpt001: TAction [40]
      Caption = 'actRpt001'
      ShortCut = 116
      OnExecute = actRpt001Execute
    end
    object actPrint2: TAction [41]
      Tag = 2
      Caption = #1670#1600#1600#1600#1575#1662' 2'
      OnExecute = actPrint2Execute
    end
    object actGetExcelMasterDetails: TAction [42]
      Caption = #1583#1585#1610#1575#1601#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1586' Excel('#1601#1585#1605' '#1608' '#1580#1586#1574#1610#1575#1578')'
      OnExecute = actGetExcelMasterDetailsExecute
    end
    object actCopy: TAction [43]
      Caption = #1603#1662#1610' '#1601#1585#1605
      OnExecute = actCopyExecute
    end
    object actRecallSpecialReciptsSumF: TAction [44]
      Caption = 'actRecallSpecialReciptsSumF'
      OnExecute = actRecallSpecialReciptsSumFExecute
    end
    object actCardex: TAction [45]
      Caption = #1603#1575#1585#1583#1603#1587
      OnExecute = actCardexExecute
    end
    object actInfoSMSF: TAction [46]
      Caption = #1575#1585#1587#1575#1604' '#1662#1610#1575#1605#1603
      OnExecute = actInfoSMSFExecute
    end
    object actSplitForm: TAction [47]
      Caption = ' '#1578#1602#1587#1740#1591' '#1601#1585#1605'...'
      OnExecute = actSplitFormExecute
    end
    inherited actSmsSend: TAction
      OnExecute = actSmsSendExecute
    end
    object actPayments: TAction
      Caption = #1606#1581#1608#1607' '#1662#1585#1583#1575#1582#1578
      ShortCut = 120
      OnExecute = actPaymentsExecute
    end
    object actCustomerGrpID4Add2Customers1: TAction
      Caption = 'actCustomerGrpID4Add2Customers1'
      ShortCut = 16433
      OnExecute = actCustomerGrpID4Add2Customers1Execute
    end
    object actCustomerGrpID4Add2Customers2: TAction
      Caption = 'actCustomerGrpID4Add2Customers2'
      ShortCut = 16434
      OnExecute = actCustomerGrpID4Add2Customers2Execute
    end
    object actshowRelatedF: TAction
      Caption = #1570#1606#1575#1604#1610#1586' '#1581#1587#1575#1576
      ShortCut = 16456
      OnExecute = actshowRelatedFExecute
    end
    object actViewFileF: TAction
      Caption = #1662#1740#1608#1587#1578'...'
      OnExecute = actViewFileFExecute
    end
    object actAnalytical: TAction
      Caption = #1579#1576#1578' '#1588#1605#1575#1585#1607' '#1576#1670' '#1605#1581#1589#1608#1604
      OnExecute = actAnalyticalExecute
    end
    object actMakeDoc: TAction
      Caption = #1589#1583#1585#1608' '#1587#1606#1583
      ShortCut = 16452
      OnExecute = actMakeDocExecute
    end
    object actSaveGrid: TAction
      Caption = #1584#1582#1610#1585#1607' '#1605#1581#1604' '#1587#1578#1608#1606' '#1607#1575
      OnExecute = actSaveGridExecute
    end
    object actSaveGridClean: TAction
      Caption = #1581#1584#1601' '#1584#1582#1610#1585#1607' '#1588#1583#1607' '#1605#1581#1604' '#1587#1578#1608#1606' '#1607#1575
      OnExecute = actSaveGridCleanExecute
    end
    object actWorkflowHistoryF: TAction
      Caption = #1578#1575#1585#1740#1582#1670#1607' '#1711#1585#1583#1588' '#1705#1575#1585
      ShortCut = 16471
      OnExecute = actWorkflowHistoryFExecute
    end
    object actChangeState: TAction
      Caption = #1578#1594#1740#1740#1585' '#1608#1590#1593#1740#1578
      OnExecute = actChangeStateExecute
    end
    object actShowRecall: TAction
      Caption = #1606#1605#1575#1740#1588' '#1605#1585#1575#1581#1604' '#1601#1585#1575#1582#1608#1575#1606' '#1588#1583#1607
      ShortCut = 16468
      OnExecute = actShowRecallExecute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actAutoPrice: TAction
      Caption = #1605#1581#1575#1587#1576#1607' '#1575#1588#1575#1606#1578#1740#1608#1606
      OnExecute = actAutoPriceExecute
    end
    object actRow: TAction
      Caption = #1605#1585#1578#1576' '#1603#1585#1583#1606' '#1585#1583#1610#1601
      OnExecute = actRowExecute
    end
    object actInsertRow: TAction
      Caption = #1583#1585#1580' '#1585#1583#1740#1601
      OnExecute = actInsertRowExecute
    end
    object actChanger: TAction
      Caption = #1578#1594#1610#1610#1585' '#1605#1602#1575#1583#1610#1585
      OnExecute = actChangerExecute
    end
    object actChangStuff: TAction
      Caption = #1602#1740#1605#1578' '#1711#1584#1575#1585#1740
      OnExecute = actChangStuffExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 483
    Top = 9
    Bitmap = {
      494C01010C001100040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
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
      00000000000000000000000000000000000000000000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000426BF7000021C600527BEF005273FF000021C600426BF7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000426BF7004080FF004080FF004080FF004080FF00426BF7000000
      00000000000000000000000000000000000000000000CE630000FFFFFF00FFFF
      F700948C8C00948C8C00948C8C00948C8C00FFD6AD00FFD6AD00FFD6AD00FFD6
      AD00FFD6AD00FFD6AD00FFD6AD00CE63000000000000E0E0E000E0E0E000E0E0
      E000E0E0E000E0E0E000D4D4D400D4D4D400D4D4D400D4D4D400C0C0C000C0C0
      C000C0C0C000B6B6B600B6B6B600000000000000000000000000000000000000
      0000426BF7000021C600426BF7001042E700214AEF00527BEF000021C600426B
      F700000000000000000000000000000000000000000000000000000000000000
      0000426BF7004080FF004080FF004080FF004080FF004080FF004080FF00426B
      F7000000000000000000000000000000000000000000CE630000FFFFFF00FFFF
      FF00313129006B7394001029A50021213900FFE7C600FFDEB500FFD6AD00FFD6
      AD00FFD6AD00FFD6AD00FFD6AD00CE630000000000002A2A2A00FFFFFF002A2A
      2A002A2A2A002A2A2A002A2A2A00E0E0E0002A2A2A00B6B6B600D4D4D400D4D4
      D4002A2A2A00C0C0C0002A2A2A0000000000000000000000000000000000426B
      F7000018BD00527BEF000821E7000021E7000029EF000021E700527BEF000021
      C600426BF700000000000000000000000000000000000000000000000000426B
      F7004080FF004080FF004080FF004080FF004080FF004080FF004080FF004080
      FF00426BF70000000000000000000000000000000000CE630000FFFFFF00FFFF
      FF0031313900637BE700FFFFF70010219C00FFEFD600FFE7C600FFDEB500FFD6
      AD00FFD6AD00FFD6AD00FFD6AD00CE630000000000002A2A2A00FFFFFF002A2A
      2A00FFFFFF002A2A2A00FFFFFF00E0E0E000E0E0E0002A2A2A00E0E0E0002A2A
      2A002A2A2A00D4D4D4002A2A2A00000000000000000000000000426BF7000021
      C600527BEF001031D6000021D6000821E7000021DE000029DE001031E700527B
      EF000021C600426BF70000000000000000000000000000000000426BF7004080
      FF004080FF004080FF004080FF004080FF004080FF004080FF004080FF004080
      FF004080FF00426BF700000000000000000000000000CE630000FFFFFF00FFFF
      FF0042424200524A4A005A524A00182994006373D600FFEFD600FFE7C600FFDE
      B500FFD6AD00FFD6AD00FFD6AD00CE630000000000002A2A2A00FFFFFF002A2A
      2A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002A2A2A00E0E0E000E0E0
      E000E0E0E000D4D4D4002A2A2A000000000000000000426BF7000018BD000829
      D6000021D6000021D6000021D6000021CE000021D6000021D6000021CE000018
      D6001031D6000018BD00426BF7000000000000000000426BF7004080FF004080
      FF004080FF004080FF004080FF004080FF004080FF004080FF004080FF004080
      FF004080FF004080FF00426BF7000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00637BE700425AE700FFEFD600FFE7
      C600FFDEB500FFD6AD00FFD6AD00CE630000000000002A2A2A00FFFFFF002A2A
      2A00FFFFFF002A2A2A002A2A2A00FFFFFF002A2A2A00B6B6B600E0E0E000E0E0
      E000E0E0E000D4D4D4002A2A2A0000000000426BF7000021C6000021CE000818
      D6000021CE000018CE000018CE000018CE000018CE000018CE000018CE000018
      D6000018CE001029D6000021C600426BF700426BF7004080FF004080FF004080
      FF004080FF004080FF004080FF004080FF004080FF004080FF004080FF004080
      FF004080FF004080FF004080FF00426BF70000000000CE630000FFFFFF00FFFF
      FF00948C8C00948C8C00948C8C00948C8C00FFFFFF00FFFFFF00FFF7E700FFEF
      D600FFE7C600FFDEB500FFD6AD00CE630000000000002A2A2A00FFFFFF002A2A
      2A00FFFFFF00FFFFFF002A2A2A002A2A2A002A2A2A002A2A2A00FFFFFF00E0E0
      E0002A2A2A00E0E0E0002A2A2A00000000000810BD000021C6000021C6000818
      BD000018C6000018C6000018C6000018C6000018C6000018C6000018BD000010
      C6001018BD000010C6000018C6000818BD004080FF004080FF004080FF004080
      FF004080FF004080FF004080FF004080FF004080FF004080FF004080FF004080
      FF004080FF004080FF004080FF004080FF0000000000CE630000FFFFFF00FFFF
      FF00313129006B7394001029A50021213900FFFFFF00FFFFFF00FFFFF700FFF7
      E700FFEFD600FFE7C600FFDEB500CE630000000000002A2A2A00FFFFFF002A2A
      2A00FFFFFF00FFFFFF002A2A2A002A2A2A002A2A2A002A2A2A00FFFFFF00E0E0
      E0002A2A2A00E0E0E0002A2A2A00000000000000000000000000000000000000
      00000010BD000010BD000010BD000010BD000010BD000010C6000010C6000010
      BD00000000000000000000000000000000000000000000000000000000000000
      00004080FF004080FF004080FF004080FF004080FF004080FF004080FF004080
      FF000000000000000000000000000000000000000000CE630000FFFFFF00FFFF
      FF0031313900637BE700FFFFFF0010219C00FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFF7E700FFEFD600FFE7C600CE630000000000002A2A2A00FFFFFF002A2A
      2A00FFFFFF00FFFFFF002A2A2A002A2A2A002A2A2A002A2A2A00FFFFFF00FFFF
      FF002A2A2A00E0E0E0002A2A2A00000000000000000000000000000000000000
      00000810BD000008AD000010B5000008B5000010B5000008B5000010B5000010
      B500000000000000000000000000000000000000000000000000000000000000
      00004080FF004080FF004080FF004080FF004080FF004080FF004080FF004080
      FF000000000000000000000000000000000000000000CE630000FFFFFF00FFFF
      FF0042424200524A4A005A524A00182994006373D600FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7E700FFEFD600CE630000000000002A2A2A00FFFFFF002A2A
      2A00FFFFFF00FFFFFF002A2A2A002A2A2A002A2A2A002A2A2A00FFFFFF00FFFF
      FF002A2A2A00E0E0E0002A2A2A00000000000000000000000000000000000000
      00001021BD000010AD000008AD000008AD000008AD000010AD000008A5001021
      BD00000000000000000000000000000000000000000000000000000000000000
      00004080FF004080FF004080FF004080FF004080FF004080FF004080FF004080
      FF000000000000000000000000000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00637BE700425AE700FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFF7E700CE63000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000424ABD000808A5000008A5000008A50008089C000000A50000089C004A4A
      BD00000000000000000000000000000000000000000000000000000000000000
      00004080FF004080FF004080FF004080FF004080FF004080FF004080FF004080
      FF000000000000000000000000000000000000000000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE63000000000000E0E0E000E0E0E000E0E0
      E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0
      E000E0E0E000E0E0E000E0E0E000000000000000000000000000000000000000
      0000424ABD000800A5000808A5000000A5000800A5000008A5000008A500424A
      BD00000000000000000000000000000000000000000000000000000000000000
      00004080FF004080FF004080FF004080FF004080FF004080FF004080FF004080
      FF00000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000000000000000000000000000000000000000
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
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FE7FFE7FFFFFFFFFFC3FFC3F8000FFFF
      F81FF81F80008001F00FF00F80008001E007E00780008001C003C00380008001
      800180018000800100000000800080010000000080008001F00FF00F80008001
      F00FF00F80008001F00FF00F80008001F00FF00F80008001F00FF00FC001FFFF
      F00FF00FFFFFFFFFF00FF00FFFFFFFFFFFFF9FFFFFFFFFFFFC3F0FFF88F7F003
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
    Left = 395
    Top = 314
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
      FieldAlias = '_Address'
      FieldName = '_Address'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = '_AddressMasirText'
      FieldName = '_AddressMasirText'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = '_PersonTel'
      FieldName = '_PersonTel'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = '_PersonPostalCode'
      FieldName = '_PersonPostalCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = '_PersonEconomicNumber'
      FieldName = '_PersonEconomicNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = '_PersonName1'
      FieldName = '_PersonName1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'PersonID2'
      FieldName = 'PersonID2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = '_PersonName2'
      FieldName = '_PersonName2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'ReciptType'
      FieldName = 'ReciptType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'ServiceValue'
      FieldName = 'ServiceValue'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'ReciptValue'
      FieldName = 'ReciptValue'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'TotalValue'
      FieldName = 'TotalValue'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'AddDecValue'
      FieldName = 'AddDecValue'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'DocNo'
      FieldName = 'DocNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'DocDate'
      FieldName = 'DocDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = 'ReciptNote'
      FieldName = 'ReciptNote'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = 'ParentReciptID'
      FieldName = 'ParentReciptID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField24: TppField
      FieldAlias = 'ModifyDate'
      FieldName = 'ModifyDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField25: TppField
      FieldAlias = 'ReciptState'
      FieldName = 'ReciptState'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField26: TppField
      FieldAlias = 'UseUnitID'
      FieldName = 'UseUnitID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField27: TppField
      FieldAlias = '_UseUnitName'
      FieldName = '_UseUnitName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField28: TppField
      FieldAlias = 'ExpireDate'
      FieldName = 'ExpireDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField29: TppField
      FieldAlias = '_ValuationType'
      FieldName = '_ValuationType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField30: TppField
      FieldAlias = 'ReciptID'
      FieldName = 'ReciptID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField31: TppField
      FieldAlias = 'OperatorID'
      FieldName = 'OperatorID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField32: TppField
      FieldAlias = '_OperatorName'
      FieldName = '_OperatorName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField33: TppField
      FieldAlias = '_PersonFax'
      FieldName = '_PersonFax'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField34: TppField
      FieldAlias = 'AidDate'
      FieldName = 'AidDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField35: TppField
      FieldAlias = '_CustValuationType'
      FieldName = '_CustValuationType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField36: TppField
      FieldAlias = '_StoreKind'
      FieldName = '_StoreKind'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField37: TppField
      FieldAlias = 'FirstUser'
      FieldName = 'FirstUser'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField38: TppField
      FieldAlias = 'LastUser'
      FieldName = 'LastUser'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField39: TppField
      FieldAlias = 'ReciptStartDate'
      FieldName = 'ReciptStartDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField40: TppField
      FieldAlias = 'ReciptEndDate'
      FieldName = 'ReciptEndDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField41: TppField
      FieldAlias = '_HasDeficit'
      FieldName = '_HasDeficit'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField42: TppField
      FieldAlias = 'StoreID2'
      FieldName = 'StoreID2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField43: TppField
      FieldAlias = '_StoresName2'
      FieldName = '_StoresName2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField44: TppField
      FieldAlias = 'MachineNo'
      FieldName = 'MachineNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField45: TppField
      FieldAlias = '_CustomersDiscount'
      FieldName = '_CustomersDiscount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField46: TppField
      FieldAlias = '_CustomersDiscountNote'
      FieldName = '_CustomersDiscountNote'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField47: TppField
      FieldAlias = '_CustomersDayTime'
      FieldName = '_CustomersDayTime'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField48: TppField
      FieldAlias = 'ArzTypeID'
      FieldName = 'ArzTypeID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField49: TppField
      FieldAlias = 'RialsEqual'
      FieldName = 'RialsEqual'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField50: TppField
      FieldAlias = 'SecondType'
      FieldName = 'SecondType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 49
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField51: TppField
      FieldAlias = '_NationalID'
      FieldName = '_NationalID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 50
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField52: TppField
      FieldAlias = 'UseOtherID'
      FieldName = 'UseOtherID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 51
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField53: TppField
      FieldAlias = 'SellsMethod'
      FieldName = 'SellsMethod'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 52
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField54: TppField
      FieldAlias = 'SellsEmporium'
      FieldName = 'SellsEmporium'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 53
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField55: TppField
      FieldAlias = 'MasirID'
      FieldName = 'MasirID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 54
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField56: TppField
      FieldAlias = 'DeliveryID'
      FieldName = 'DeliveryID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 55
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField57: TppField
      FieldAlias = 'PersonID2Bed'
      FieldName = 'PersonID2Bed'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 56
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField58: TppField
      FieldAlias = 'YearID'
      FieldName = 'YearID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 57
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField59: TppField
      FieldAlias = 'ServerID'
      FieldName = 'ServerID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 58
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField60: TppField
      FieldAlias = 'MachineName'
      FieldName = 'MachineName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 59
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField61: TppField
      FieldAlias = 'PersonID3'
      FieldName = 'PersonID3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 60
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField62: TppField
      FieldAlias = 'PersonID4'
      FieldName = 'PersonID4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 61
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField63: TppField
      FieldAlias = 'CostDownSave'
      FieldName = 'CostDownSave'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 62
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField64: TppField
      FieldAlias = 'DefaultDate'
      FieldName = 'DefaultDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 63
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField65: TppField
      FieldAlias = 'ParentCoReciptID'
      FieldName = 'ParentCoReciptID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 64
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField66: TppField
      FieldAlias = 'InsertDate'
      FieldName = 'InsertDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 65
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField67: TppField
      FieldAlias = 'TruckNumber'
      FieldName = 'TruckNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 66
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField68: TppField
      FieldAlias = 'MachineInfo'
      FieldName = 'MachineInfo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 67
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField69: TppField
      FieldAlias = 'AidNumber'
      FieldName = 'AidNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 68
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField70: TppField
      FieldAlias = 'InsertTime'
      FieldName = 'InsertTime'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 69
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField71: TppField
      FieldAlias = 'EditTime'
      FieldName = 'EditTime'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 70
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField72: TppField
      FieldAlias = 'ReciptsRow'
      FieldName = 'ReciptsRow'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 71
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField73: TppField
      FieldAlias = 'PrvYearID'
      FieldName = 'PrvYearID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 72
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField74: TppField
      FieldAlias = '_Mobile'
      FieldName = '_Mobile'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 73
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField75: TppField
      FieldAlias = '_Mobile2'
      FieldName = '_Mobile2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 74
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField76: TppField
      FieldAlias = '_Max4WaterCo'
      FieldName = '_Max4WaterCo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 75
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField77: TppField
      FieldAlias = '_CustomerActive'
      FieldName = '_CustomerActive'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 76
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField78: TppField
      FieldAlias = 'ParentReciptNumber'
      FieldName = 'ParentReciptNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 77
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField79: TppField
      FieldAlias = 'DefaultDuration'
      FieldName = 'DefaultDuration'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 78
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField80: TppField
      FieldAlias = 'CalcGiftItems'
      FieldName = 'CalcGiftItems'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 79
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField81: TppField
      FieldAlias = '_PersonRegisterNumber'
      FieldName = '_PersonRegisterNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 80
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField82: TppField
      FieldAlias = '_ReciptDayMoon'
      FieldName = '_ReciptDayMoon'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 81
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField83: TppField
      FieldAlias = 'ReciptDateMiladi'
      FieldName = 'ReciptDateMiladi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 82
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField84: TppField
      FieldAlias = 'MachineFullWeight'
      FieldName = 'MachineFullWeight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 83
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField85: TppField
      FieldAlias = 'MachineWeight'
      FieldName = 'MachineWeight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 84
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField86: TppField
      FieldAlias = 'ID4Print'
      FieldName = 'ID4Print'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 85
      Searchable = False
      Sortable = False
    end
  end
  object qryItems: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeOpen = qryItemsBeforeOpen
    AfterOpen = qryItemsAfterOpen
    BeforeInsert = qryItemsBeforeInsert
    AfterInsert = qryItemsAfterInsert
    BeforeEdit = qryItemsBeforeEdit
    AfterEdit = qryItemsAfterEdit
    BeforePost = qryItemsBeforePost
    AfterPost = qryItemsAfterPost
    BeforeDelete = qryItemsBeforeDelete
    AfterDelete = qryItemsAfterDelete
    BeforeScroll = qryItemsBeforeScroll
    AfterScroll = qryItemsAfterScroll
    OnCalcFields = qryItemsCalcFields
    Parameters = <
      item
        Name = 'VATCo1'
        DataType = ftFloat
        Size = 3
        Value = 0.000000000000000000
      end
      item
        Name = 'VATCo2'
        DataType = ftFloat
        Size = 3
        Value = 0.000000000000000000
      end
      item
        Name = 'ReciptID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
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
      
        'SELECT  * ,InvEntity - RequestedEntity AS Req_InvEntity, '#39#39' AS _' +
        '___StuffTecInfo, dbo.GetLookUpsName(StuffCode, 313) AS PakhshCom' +
        'pany,'
      '  dbo.GetStuffName(StuffCode) AS c_StuffName, '
      
        '  ROUND(CASE WHEN InputEntity + OutputEntity <> 0 THEN TotallSel' +
        'lPrice / (InputEntity + OutputEntity) ELSE 0 END, 0) AS UnitSell' +
        'Price3,'
      
        '  ROUND(CASE WHEN InputWeight + OutputWeight <> 0 THEN TotallSel' +
        'lPrice / (InputWeight + OutputWeight) ELSE 0 END, 0) AS UnitSell' +
        'PriceWeight,'
      
        '  (TotalInputPrice + TotalOutputPrice) + (InputEntity + OutputEn' +
        'tity) * UnitCommission - DeficitValue - DeficitValue2  AS TotalD' +
        'eficient,'
      ''
      
        ' TotallSellPrice + DeficitValue3  AS TotallSellPrice_DeficitValu' +
        'e3,'
      ''
      
        '  (InputEntity + OutputEntity) * UnitCommission AS TotallCommiss' +
        'ion, TotalInputPrice + TotalOutputPrice + TaxValue AS TotalPrice' +
        '_TaxValue, '
      '  UnitSellPrice + UnitCommission AS UnitSellPriceCommission, '
      
        '  (InputEntity + OutputEntity) * UnitCommission + TotalInputPric' +
        'e + TotalOutputPrice AS TotallCommissionTotalPrice'
      ''
      
        '  ,InvEntity - CASE WHEN AidNumber  <> 0 THEN AidNumber ELSE Inp' +
        'utEntity + OutputEntity END AS Req_InvEntity2'
      ''
      
        '  ,dbo.GetParentForm(ReciptItems.StuffCode,ReciptItems.preRecipt' +
        'ItemID,ReciptItems.ReciptItemID) AS ParentForm ,'
      
        '   (TotalInputPrice + TotalOutputPrice) * (1 + :VATCo1 * 0.01) A' +
        'S VATCoTotalPrice,'
      
        '   (TotalInputPrice + TotalOutputPrice) * (:VATCo2 * 0.01) AS VA' +
        'TCoPrice,TotallSellPrice - (InvEntity+InvWeight) AS TotallSellPr' +
        'ice_InvWeight'
      
        '         , InputEntity + OutputEntity - SugarEntity AS GiftEntit' +
        'y , DeficitValueCo2, DeficitValueCo3'
      
        '  , '#39#39' AS SyntheticCode,DeficitValue + DeficitValue2 + DeficitVa' +
        'lue3 AS DeficitValue123'
      '  ,(SELECT SUM(RegPrice) AS RegPrice FROM  ReciptsRegulates'
      
        #9#9#9'WHERE (ReciptID = ReciptItems.ReciptID) AND (YearID = ReciptI' +
        'tems.YearID)'
      '      AND (ServerID = ReciptItems.ServerID)) AS RegPrice'
      ''
      ' FROM ReciptItems'
      
        'WHERE        (ReciptID = :ReciptID) AND (YearID = :YearID) AND (' +
        'ServerID = :ServerID)')
    Left = 427
    Top = 277
    object qryItems_radif: TIntegerField
      DisplayLabel = #1585#1583#1610#1601
      FieldKind = fkCalculated
      FieldName = '_radif'
      ReadOnly = True
      Calculated = True
    end
    object qryItemsStuffCode: TLargeintField
      Tag = 3
      Alignment = taLeftJustify
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'StuffCode'
      OnChange = qryItemsStuffCodeChange
    end
    object qryItems_StuffName: TStringField
      DisplayLabel = #1588#1600#1600#1600#1600#1600#1600#1585#1581'   '#1603#1600#1600#1600#1600#1575#1604#1575
      FieldKind = fkLookup
      FieldName = '_StuffName'
      LookupDataSet = qryStuff_Unit_TecInf
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'c_StuffName'
      KeyFields = 'StuffCode'
      ReadOnly = True
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
      ReadOnly = True
      Size = 100
      Lookup = True
    end
    object qryItems_UnitName2: TStringField
      DisplayLabel = #1608#1575#1581#1583' '#1576#1587#1578#1607' '#1576#1606#1583#1740
      FieldKind = fkLookup
      FieldName = '_UnitName2'
      LookupDataSet = qryStuff_Unit_TecInf
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'UnitName2'
      KeyFields = 'StuffCode'
      ReadOnly = True
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
      ReadOnly = True
      Size = 100
      Lookup = True
    end
    object qryItemsProductModel: TIntegerField
      DisplayLabel = #1603#1583' '#1605#1583#1604
      FieldName = 'ProductModel'
    end
    object qryItems_ProductModelName: TStringField
      DisplayLabel = #1605#1583#1604
      FieldKind = fkLookup
      FieldName = '_ProductModelName'
      LookupDataSet = qry_Lookup
      LookupKeyFields = 'LookUpID'
      LookupResultField = 'Name'
      KeyFields = 'ProductModel'
      ReadOnly = True
      Size = 255
      Lookup = True
    end
    object qryItemsRequestedEntity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1583#1585#1582#1608#1575#1587#1578#1610
      FieldName = 'RequestedEntity'
      OnChange = qryItemsRequestedEntityChange
    end
    object qryItemsRequestedWeight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1583#1585' '#1582#1608#1575#1587#1578#1610
      FieldName = 'RequestedWeight'
      OnChange = qryItemsRequestedWeightChange
    end
    object qryItemsAcceptEntity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1578#1575#1610#1610#1583' '#1588#1583#1607
      FieldName = 'AcceptEntity'
      OnChange = Accept_Rollback_EntityChange
    end
    object qryItemsAcceptWeight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1578#1575#1610#1610#1583' '#1588#1583#1607
      FieldName = 'AcceptWeight'
      OnChange = Accept_Rollback_WeightChange
    end
    object qryItemsRollbackEntity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1576#1585#1711#1588#1578#1610
      FieldName = 'RollbackEntity'
      OnChange = Accept_Rollback_EntityChange
    end
    object qryItemsRollbackWeight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1576#1585#1711#1588#1578#1610
      FieldName = 'RollbackWeight'
      OnChange = Accept_Rollback_WeightChange
    end
    object qryItemsInputEntity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'InputEntity'
      OnChange = qryItemsInputEntityChange
    end
    object qryItemsOutputEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'OutputEntity'
      OnChange = qryItemsOutputEntityChange
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
      OnChange = qryItemsOutputWeightChange
      OnGetText = qryItemsInputWeightGetText
    end
    object qryItemsUnitSellPrice: TFMTBCDField
      DisplayLabel = #1601#1610
      FieldName = 'UnitSellPrice'
      OnChange = qryItemsUnitSellPriceChange
      Precision = 19
    end
    object qryItemsTotalInputPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1603#1604' '#1608#1575#1585#1583#1607
      FieldName = 'TotalInputPrice'
      OnChange = qryItemsTotalInputPriceChange
      currency = True
      Precision = 19
    end
    object qryItemsTotalOutputPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1603#1604' '#1589#1575#1583#1585#1607
      FieldName = 'TotalOutputPrice'
      OnChange = qryItemsTotalOutputPriceChange
      currency = True
      Precision = 19
    end
    object qryItemsStandardRate: TBCDField
      DisplayLabel = #1606#1585#1582' '#1575#1587#1578#1575#1606#1583#1575#1585#1583
      FieldName = 'StandardRate'
      OnChange = qryItemsStandardRateChange
      currency = True
      Precision = 19
    end
    object qryItemsTotalStandardRate: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1603#1604' '#1575#1587#1578#1575#1606#1583#1575#1585#1583
      FieldName = 'TotalStandardRate'
      currency = True
      Precision = 19
    end
    object qryItemsWaterCo: TFloatField
      DisplayLabel = #1583#1585#1589#1583#1578#1582#1601#1610#1601
      FieldName = 'WaterCo'
      OnChange = qryItemsWaterCoChange
    end
    object qryItemsDeficitValue: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1578#1582#1601#1610#1601
      FieldName = 'DeficitValue'
      OnChange = qryItemsDeficitValueChange
      currency = True
      Precision = 19
    end
    object qryItemsDeficitValueCo2: TBCDField
      DisplayLabel = #1583#1585#1589#1583#1578#1582#1601#1610#1601'2'
      FieldName = 'DeficitValueCo2'
      OnChange = qryItemsDeficitValueCo2Change
      OnGetText = qryItemsDeficitValueCo2GetText
      Precision = 1
      Size = 1
    end
    object qryItemsDeficitValue2: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1578#1582#1601#1610#1601'2'
      FieldName = 'DeficitValue2'
      OnChange = qryItemsDeficitValue2Change
      currency = True
      Precision = 19
    end
    object qryItemsDeficitValueCo3: TBCDField
      DisplayLabel = #1583#1585#1589#1583#1578#1582#1601#1610#1601'3'
      FieldName = 'DeficitValueCo3'
      OnChange = qryItemsDeficitValueCo3Change
      OnGetText = qryItemsDeficitValueCo3GetText
      Precision = 1
      Size = 1
    end
    object qryItemsDeficitValue3: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1578#1582#1601#1610#1601'3'
      FieldName = 'DeficitValue3'
      OnChange = qryItemsDeficitValue3Change
      currency = True
      Precision = 19
    end
    object qryItemsStuffSize: TStringField
      DisplayLabel = #1575#1576#1600#1600#1593#1575#1583
      FieldName = 'StuffSize'
      OnChange = qryItemsStuffAlloySizeDiameterChange
      FixedChar = True
      Size = 12
    end
    object qryItemsTotalDeficient: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1576#1575' '#1578#1582#1601#1610#1601
      FieldName = 'TotalDeficient'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryItemsTotallSellPrice_DeficitValue3: TBCDField
      DisplayLabel = #1582#1575#1604#1589' '#1575#1608#1604#1740#1607
      FieldName = 'TotallSellPrice_DeficitValue3'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryItemsTotallSellPrice: TBCDField
      DisplayLabel = #1582#1575#1604#1589
      FieldName = 'TotallSellPrice'
      OnChange = qryItemsTotallSellPriceChange
      currency = True
      Precision = 19
    end
    object qryItemsProductCode: TLargeintField
      DisplayLabel = #1603#1583' '#1605#1581#1589#1608#1604
      FieldName = 'ProductCode'
    end
    object qryItemsPersonID1: TIntegerField
      DisplayLabel = #1603#1583
      FieldName = 'PersonID1'
      OnChange = qryItemsPersonID1Change
    end
    object qryItems_PersonName1: TStringField
      FieldKind = fkLookup
      FieldName = '_PersonName1'
      LookupDataSet = qryCustomer2Detail
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'PersonID1'
      ReadOnly = True
      Size = 250
      Lookup = True
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
      ReadOnly = True
      Size = 100
      Lookup = True
    end
    object qryItemsAidNumber: TStringField
      FieldName = 'AidNumber'
      Size = 40
    end
    object qryItemsAidDate: TStringField
      FieldName = 'AidDate'
      OnChange = qryItemsAidDateChange
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryItemsacc_TopicCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576
      FieldName = 'acc_TopicCode'
    end
    object qryItemsacc_DetailCode: TStringField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610
      FieldName = 'acc_DetailCode'
      OnChange = qryItemsacc_TopicCodeChange
      EditMask = '999999999999'
      Size = 12
    end
    object qryItemsacc_CTopicCode: TStringField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'
      FieldName = 'acc_CTopicCode'
      OnChange = qryItemsacc_TopicCodeChange
      EditMask = '999999999999'
      Size = 12
    end
    object qryItemsacc_CTopicCode2: TStringField
      DisplayLabel = #1603#1583#1578#1601#1589#1740#1604#1740'3'
      FieldName = 'acc_CTopicCode2'
      OnChange = qryItemsacc_TopicCodeChange
      EditMask = '999999999999'
      Size = 12
    end
    object qryItemsacc_CTopicCode3: TStringField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'4'
      FieldName = 'acc_CTopicCode3'
      OnChange = qryItemsacc_TopicCodeChange
      EditMask = '999999999999'
      Size = 12
    end
    object qryItems_PakhashCompany: TStringField
      DisplayLabel = #1662#1582#1588
      FieldKind = fkLookup
      FieldName = '_PakhashCompany'
      LookupDataSet = qryStuff_Unit_TecInf
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'PakhshCompany'
      KeyFields = 'StuffCode'
      ReadOnly = True
      Size = 100
      Lookup = True
    end
    object qryItems_gateKetab: TStringField
      DisplayLabel = #1602#1591#1593
      FieldKind = fkLookup
      FieldName = '_gateKetab'
      LookupDataSet = qryStuff_Unit_TecInf
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'gateketab'
      KeyFields = 'StuffCode'
      ReadOnly = True
      Size = 50
      Lookup = True
    end
    object qryItems_NoeJeld: TStringField
      DisplayLabel = #1606#1608#1593' '#1580#1604#1583
      FieldKind = fkLookup
      FieldName = '_NoeJeld'
      LookupDataSet = qryStuff_Unit_TecInf
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'noejeldName'
      KeyFields = 'StuffCode'
      ReadOnly = True
      Size = 50
      Lookup = True
    end
    object qryItems_moalef: TStringField
      DisplayLabel = #1605#1608#1604#1601
      FieldKind = fkLookup
      FieldName = '_moalef'
      LookupDataSet = qryStuff_Unit_TecInf
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'moalef'
      KeyFields = 'StuffCode'
      ReadOnly = True
      Size = 50
      Lookup = True
    end
    object qryItems_Motarjem: TStringField
      DisplayLabel = #1605#1578#1585#1580#1605
      FieldKind = fkLookup
      FieldName = '_Motarjem'
      LookupDataSet = qryStuff_Unit_TecInf
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'motarjem'
      KeyFields = 'StuffCode'
      ReadOnly = True
      Size = 100
      Lookup = True
    end
    object qryItems_Nevisandeh: TStringField
      DisplayLabel = #1606#1608#1610#1587#1606#1583#1607
      FieldKind = fkLookup
      FieldName = '_Nevisandeh'
      LookupDataSet = qryStuff_Unit_TecInf
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'nevisandeh'
      KeyFields = 'StuffCode'
      ReadOnly = True
      Size = 100
      Lookup = True
    end
    object qryItems_Tabageh: TStringField
      DisplayLabel = #1591#1576#1602#1607
      FieldKind = fkLookup
      FieldName = '_Tabageh'
      LookupDataSet = qryStuff_Unit_TecInf
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'tabageh'
      KeyFields = 'StuffCode'
      ReadOnly = True
      Size = 25
      Lookup = True
    end
    object qryItemsControlCode: TLargeintField
      DisplayLabel = #1587#1585#1610#1575#1604' '#1603#1606#1578#1585#1604
      FieldName = 'ControlCode'
    end
    object qryItemsItemDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'ItemDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryItemsItemNote: TStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'ItemNote'
      Size = 1500
    end
    object qryItemsInvEntity: TFloatField
      DisplayLabel = #1605#1608#1580#1608#1583#1610
      FieldName = 'InvEntity'
    end
    object qryItemsReq_InvEntity: TFloatField
      DisplayLabel = #1576#1575#1602#1610#1605#1575#1606#1583#1607
      FieldName = 'Req_InvEntity'
      ReadOnly = True
    end
    object qryItemsReq_InvEntity2: TFloatField
      DisplayLabel = #1605#1575#1576#1607' '#1575#1604#1578#1601#1575#1608#1578
      FieldName = 'Req_InvEntity2'
      ReadOnly = True
    end
    object qryItemsSecondTypeItem: TIntegerField
      DisplayLabel = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
      FieldName = 'SecondTypeItem'
      OnChange = qryItemsSecondTypeItemChange
      OnGetText = qryItemsSecondTypeItemGetText
      OnSetText = qryItemsSecondTypeItemSetText
    end
    object qryItems_c_KeepPlace: TStringField
      DisplayLabel = #1605#1581#1604' '#1606#1711#1607#1583#1575#1585#1610' '#1603#1575#1604#1575
      FieldKind = fkLookup
      FieldName = '_c_KeepPlace'
      LookupDataSet = qryStuff_Unit_TecInf
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'c_KeepPlace'
      KeyFields = 'StuffCode'
      ReadOnly = True
      Size = 50
      Lookup = True
    end
    object qryItemsMachineFullWeight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1662#1585' '#1605#1575#1588#1610#1606
      FieldName = 'MachineFullWeight'
      OnChange = qryItemsMachineFullWeightChange
    end
    object qryItemsMachineWeight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1605#1575#1588#1610#1606
      FieldName = 'MachineWeight'
      OnChange = qryItemsMachineWeightChange
    end
    object qryItemsTotalWeight: TFloatField
      DisplayLabel = #1608#1586#1606'2'
      FieldName = 'TotalWeight'
    end
    object qryItemsMachineName: TStringField
      DisplayLabel = #1606#1575#1605' '#1585#1575#1606#1606#1583#1607
      FieldName = 'MachineName'
      Size = 50
    end
    object qryItemsMachineNo: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1605#1575#1588#1610#1606
      FieldName = 'MachineNo'
      Size = 25
    end
    object qryItemsTotalPrice_TaxValue: TBCDField
      FieldName = 'TotalPrice_TaxValue'
      ReadOnly = True
      Precision = 19
    end
    object qryItemsParentForm: TStringField
      DisplayLabel = #1601#1585#1575#1582#1608#1575#1606' '#1588#1583#1607' '#1575#1586'/'#1576#1575
      FieldName = 'ParentForm'
      ReadOnly = True
      Size = 500
    end
    object qryItemsInvWeight: TFloatField
      FieldName = 'InvWeight'
    end
    object qryItemsTotallSellPrice_InvWeight: TFloatField
      FieldName = 'TotallSellPrice_InvWeight'
      ReadOnly = True
      currency = True
    end
    object qryItemspreReciptItemID: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1606#1583#1607' '#1601#1585#1575#1582#1608#1575#1606#1610
      FieldName = 'preReciptItemID'
    end
    object qryItemsRegPrice: TBCDField
      Tag = 3
      DisplayLabel = #1578#1593#1583#1740#1604#1575#1578
      FieldName = 'RegPrice'
      ReadOnly = True
      currency = True
    end
    object qryItemsFirstUser: TStringField
      FieldName = 'FirstUser'
      Size = 50
    end
    object qryItemsLastUser: TStringField
      FieldName = 'LastUser'
      Size = 50
    end
    object qryItemsAuxiliary: TFloatField
      FieldName = 'Auxiliary'
    end
    object qryItems_ChapYear: TStringField
      FieldKind = fkLookup
      FieldName = '_ChapYear'
      LookupDataSet = qryStuff_Unit_TecInf
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'chapDate'
      KeyFields = 'StuffCode'
      ReadOnly = True
      Size = 10
      Lookup = True
    end
    object qryItemsArzAmount: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1575#1585#1586
      FieldName = 'ArzAmount'
      LookupDataSet = cliBarcode
      OnChange = qryItemsArzAmountChange
    end
    object qryItems_Carton: TFloatField
      FieldKind = fkLookup
      FieldName = '_Carton'
      LookupDataSet = qryStuff_Unit_TecInf
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'Carton'
      KeyFields = 'StuffCode'
      ReadOnly = True
      Lookup = True
    end
    object qryItemsPakhshCompany: TStringField
      Tag = 3
      DisplayLabel = #1662#1582#1588
      FieldName = 'PakhshCompany'
      ReadOnly = True
      Size = 50
    end
    object qryItemsc_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1588#1585#1581' '#1603#1575#1604#1575
      FieldName = 'c_StuffName'
      ReadOnly = True
      Size = 150
    end
    object qryItemsUnitSellPrice3: TFloatField
      Tag = 3
      DisplayLabel = #1601#1610' '#1582#1575#1604#1589
      FieldName = 'UnitSellPrice3'
      ReadOnly = True
      currency = True
    end
    object qryItems_UnitPriceUseKind: TIntegerField
      FieldKind = fkLookup
      FieldName = '_UnitPriceUseKind'
      LookupDataSet = qryStuff_Unit_TecInf
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'UnitPriceUseKind'
      KeyFields = 'StuffCode'
      ReadOnly = True
      Lookup = True
    end
    object qryItems_SellPrice_S: TCurrencyField
      FieldKind = fkLookup
      FieldName = '_SellPrice_S'
      LookupDataSet = qryStuff_Unit_TecInf
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'SellPrice_S'
      KeyFields = 'StuffCode'
      ReadOnly = True
      Lookup = True
    end
    object qryItems____StuffTecInfo: TStringField
      DisplayLabel = ' '#1605#1588#1582#1589#1575#1578'...'#1601#1606#1610
      FieldName = '____StuffTecInfo'
      OnChange = qryItems____StuffTecInfoChange
      Size = 150
    end
    object qryItems_StuffpublicPercent: TFloatField
      FieldKind = fkLookup
      FieldName = '_StuffpublicPercent'
      LookupDataSet = qryStuff_Unit_TecInf
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'StuffpublicPercent'
      KeyFields = 'StuffCode'
      Lookup = True
    end
    object qryItemsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryItemsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryItems_StuffNote: TStringField
      FieldKind = fkLookup
      FieldName = '_StuffNote'
      LookupDataSet = qryStuff_Unit_TecInf
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'StuffNote'
      KeyFields = 'StuffCode'
      Size = 300
      Lookup = True
    end
    object qryItemsUnitSellPriceWeight: TFloatField
      FieldName = 'UnitSellPriceWeight'
      ReadOnly = True
    end
    object qryItemsInsertTime: TStringField
      FieldName = 'InsertTime'
      Size = 25
    end
    object qryItemsEditTime: TStringField
      FieldName = 'EditTime'
      Size = 25
    end
    object qryItemsPestEntity: TBCDField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1575#1601#1578
      FieldName = 'PestEntity'
      Precision = 18
      Size = 2
    end
    object qryItemsPrvYearID: TIntegerField
      FieldName = 'PrvYearID'
    end
    object qryItemsVATCoTotalPrice: TFloatField
      FieldName = 'VATCoTotalPrice'
      ReadOnly = True
      currency = True
    end
    object qryItemsVATCoPrice: TFloatField
      FieldName = 'VATCoPrice'
      ReadOnly = True
      currency = True
    end
    object qryItems_StanCode: TStringField
      FieldKind = fkLookup
      FieldName = '_StanCode'
      LookupDataSet = qryStuff_Unit_TecInf
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'StanCode'
      KeyFields = 'StuffCode'
      Size = 25
      Lookup = True
    end
    object qryItems_TopicCodeName: TStringField
      DisplayLabel = #1581#1587#1575#1576
      FieldKind = fkLookup
      FieldName = '_TopicCodeName'
      LookupDataSet = DMF.qryAccTopicCode
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'MoeenName'
      KeyFields = 'acc_TopicCode'
      ReadOnly = True
      Size = 100
      Lookup = True
    end
    object qryItems_DetailCode: TStringField
      DisplayLabel = #1578#1601#1589#1610#1604#1610
      FieldKind = fkLookup
      FieldName = '_DetailCode'
      LookupDataSet = DMF.qryAccDetailCode
      LookupKeyFields = 'DetailCode'
      LookupResultField = 'DetailName'
      KeyFields = 'acc_DetailCode'
      ReadOnly = True
      Size = 100
      Lookup = True
    end
    object qryItems_CTopicCode: TStringField
      DisplayLabel = #1578#1601#1589#1610#1604#1610'2'
      FieldKind = fkLookup
      FieldName = '_CTopicCode'
      LookupDataSet = DMF.qryAccCenterTopics
      LookupKeyFields = 'CTopicCode'
      LookupResultField = 'CTopicName'
      KeyFields = 'acc_CTopicCode'
      ReadOnly = True
      Size = 100
      Lookup = True
    end
    object qryItems_CTopicCode2: TStringField
      DisplayLabel = #1705#1583' '#1578#1601#1589#1740#1604#1740'3'
      FieldKind = fkLookup
      FieldName = '_CTopicCode2'
      LookupDataSet = DMF.qryAccCenterTopics2
      LookupKeyFields = 'CTopicCode2'
      LookupResultField = 'CTopicName2'
      KeyFields = 'acc_CTopicCode2'
      ReadOnly = True
      Size = 150
      Lookup = True
    end
    object qryItems_CTopicCode3: TStringField
      DisplayLabel = #1705#1583' '#1578#1601#1589#1740#1604#1740'4'
      FieldKind = fkLookup
      FieldName = '_CTopicCode3'
      LookupDataSet = DMF.qryAccCenterTopics3
      LookupKeyFields = 'CTopicCode3'
      LookupResultField = 'CTopicName3'
      KeyFields = 'acc_CTopicCode3'
      ReadOnly = True
      Size = 150
      Lookup = True
    end
    object qryItemsID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qryItemsSyntheticCode: TStringField
      FieldName = 'SyntheticCode'
      ReadOnly = True
      Size = 37
    end
    object qryItemsDeficitValue123: TBCDField
      FieldName = 'DeficitValue123'
      ReadOnly = True
      Precision = 19
    end
    object qryItemsIRow: TIntegerField
      DisplayLabel = #1585#1583#1740#1601'*'
      FieldName = 'IRow'
    end
    object qryItemsReciptItemID: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1606#1583#1607
      FieldName = 'ReciptItemID'
    end
    object qryItemsReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryItemsStuffAlloy: TStringField
      DisplayLabel = #1570#1604#1610#1575#1688
      FieldName = 'StuffAlloy'
      OnChange = qryItemsStuffAlloySizeDiameterChange
      Size = 12
    end
    object qryItemsStuffGrade: TWordField
      DisplayLabel = #1583#1585#1580#1607' '#1603#1575#1604#1575
      FieldName = 'StuffGrade'
    end
    object qryItemsStuffDiameter: TFloatField
      DisplayLabel = #1590#1582#1575#1605#1578
      FieldName = 'StuffDiameter'
      OnChange = qryItemsStuffAlloySizeDiameterChange
    end
    object qryItemsDiscount: TIntegerField
      FieldName = 'Discount'
    end
  end
  object srcItems: TDataSource
    DataSet = qryItems
    OnStateChange = srcItemsStateChange
    Left = 338
    Top = 272
  end
  object qryRecipts: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    AfterOpen = qryReciptsAfterOpen
    BeforeInsert = qryReciptsBeforeInsert
    AfterInsert = qryReciptsAfterInsert
    BeforeEdit = qryReciptsBeforeEdit
    AfterEdit = qryReciptsAfterEdit
    BeforePost = qryReciptsBeforePost
    AfterPost = qryReciptsAfterPost
    BeforeCancel = qryReciptsBeforeCancel
    AfterCancel = qryReciptsAfterCancel
    BeforeDelete = qryReciptsBeforeDelete
    AfterDelete = qryReciptsAfterDelete
    BeforeScroll = qryReciptsBeforeScroll
    AfterScroll = qryReciptsAfterScroll
    Parameters = <
      item
        Name = 'ReciptIDFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'ReciptIDTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 2147483647
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
        Name = 'ServerIDFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'ServerIDTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'ReciptType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 0
      end
      item
        Name = 'ReciptNumberFrom'
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
        Value = 2147483647
      end
      item
        Name = 'StoreIDFrom'
        DataType = ftWideString
        Size = 6
        Value = '-32767'
      end
      item
        Name = 'StoreIDTo'
        DataType = ftWideString
        Size = 5
        Value = '32767'
      end
      item
        Name = 'PersonID1From'
        DataType = ftWideString
        Size = 11
        Value = '-2147483646'
      end
      item
        Name = 'PersonID1To'
        DataType = ftWideString
        Size = 10
        Value = '2147483647'
      end
      item
        Name = 'ReciptDateFrom'
        DataType = ftWideString
        Size = 10
        Value = '0000/00/00'
      end
      item
        Name = 'ReciptDateTo'
        DataType = ftWideString
        Size = 10
        Value = '9999/99/99'
      end>
    SQL.Strings = (
      'SELECT *, '
      
        '(SELECT  top 1 ReciptNumber FROM Recipts AS ParentRecipts   WHER' +
        'E      '
      #9#9'Recipts.ParentReciptID = ParentRecipts.ReciptID '
      
        #9#9' AND Recipts.ServerID = ParentRecipts.ServerID AND Recipts.Yea' +
        'rID = ParentRecipts.YearID ) AS  ParentReciptNumber'
      '     , REPLACE(RIGHT(ReciptDate, 5), '#39'/'#39', '#39#39') AS _ReciptDayMoon'
      
        '     ,(CONVERT(bigint,(ltrim(YearID)+right('#39'0'#39'+ltrim(ServerID),(' +
        '2)))+ltrim(abs(ReciptID)),0)) ID4Print'
      '   FROM    Recipts'
      ''
      'WHERE     (ReciptID BetWeen :ReciptIDFrom and :ReciptIDTo )'
      'and ( YearID = :YearID )'
      'and ( ServerID  BetWeen :ServerIDFrom and :ServerIDTo )'
      'And (ReciptType = :ReciptType)'
      
        'And   ( ReciptNumber  BetWeen :ReciptNumberFrom and :ReciptNumbe' +
        'rTo )'
      'And   ( StoreID  BetWeen :StoreIDFrom and :StoreIDTo )  '
      'And   ( PersonID1  BetWeen :PersonID1From and :PersonID1To )'
      'And ( ReciptDate  BetWeen :ReciptDateFrom and :ReciptDateTo )'
      'ORDER BY ReciptNumber')
    Left = 477
    Top = 91
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
      OnChange = qryReciptsReciptDateChange
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryReciptsPersonID1: TIntegerField
      FieldName = 'PersonID1'
      OnChange = qryReciptsPersonID1Change
    end
    object qryRecipts_PersonAddress: TStringField
      FieldKind = fkLookup
      FieldName = '_PersonAddress'
      LookupDataSet = qryCustomers1
      LookupKeyFields = 'CustID'
      LookupResultField = 'Address'
      KeyFields = 'PersonID1'
      Size = 500
      Lookup = True
    end
    object qryRecipts_Address: TStringField
      FieldKind = fkLookup
      FieldName = '_Address'
      LookupDataSet = qryCustomers1
      LookupKeyFields = 'CustID'
      LookupResultField = 'AddressOnly'
      KeyFields = 'PersonID1'
      Size = 500
      Lookup = True
    end
    object qryRecipts_MasirText: TStringField
      FieldKind = fkLookup
      FieldName = '_AddressMasirText'
      LookupDataSet = qryCustomers1
      LookupKeyFields = 'CustID'
      LookupResultField = 'MasirText'
      KeyFields = 'PersonID1'
      Size = 500
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
      DisplayLabel = #1605#1576#1604#1594' '#1601#1575#1603#1578#1608#1585
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
      OnGetText = qryReciptsReciptStateGetText
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
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
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
    object qryRecipts_OperatorName: TStringField
      FieldKind = fkLookup
      FieldName = '_OperatorName'
      LookupDataSet = DMF.qryOperators
      LookupKeyFields = 'UserID'
      LookupResultField = 'name'
      KeyFields = 'OperatorID'
      Size = 100
      Lookup = True
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
      OnChange = qryRecipts_StoreKindChange
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
    object qryReciptsMachineNo: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1605#1575#1588#1610#1606
      FieldName = 'MachineNo'
      Size = 50
    end
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
    object qryReciptsArzTypeID: TIntegerField
      FieldName = 'ArzTypeID'
      OnChange = qryReciptsArzTypeIDChange
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptsRialsEqual: TBCDField
      FieldName = 'RialsEqual'
      OnChange = qryReciptsRialsEqualChange
      Precision = 19
    end
    object qryReciptsSecondType: TIntegerField
      FieldName = 'SecondType'
      OnChange = qryReciptsSecondTypeChange
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryRecipts_NationalID: TStringField
      FieldKind = fkLookup
      FieldName = '_NationalID'
      LookupDataSet = qryCustomers1
      LookupKeyFields = 'CustID'
      LookupResultField = 'NationalID'
      KeyFields = 'PersonID1'
      Size = 12
      Lookup = True
    end
    object qryReciptsUseOtherID: TWideStringField
      FieldName = 'UseOtherID'
      Size = 15
    end
    object qryReciptsSellsMethod: TIntegerField
      FieldName = 'SellsMethod'
    end
    object qryReciptsSellsEmporium: TIntegerField
      FieldName = 'SellsEmporium'
      OnChange = qryReciptsSellsEmporiumChange
    end
    object qryReciptsMasirID: TIntegerField
      FieldName = 'MasirID'
    end
    object qryReciptsDeliveryID: TIntegerField
      FieldName = 'DeliveryID'
    end
    object qryReciptsPersonID2Bed: TWordField
      FieldName = 'PersonID2Bed'
    end
    object qryReciptsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryReciptsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryReciptsMachineName: TStringField
      DisplayLabel = #1606#1575#1605' '#1585#1575#1606#1606#1583#1607
      FieldName = 'MachineName'
      Size = 50
    end
    object qryReciptsPersonID3: TIntegerField
      FieldName = 'PersonID3'
      OnChange = qryReciptsPersonID3Change
    end
    object qryReciptsPersonID4: TIntegerField
      FieldName = 'PersonID4'
      OnChange = qryReciptsPersonID3Change
    end
    object qryReciptsCostDownSave: TBCDField
      FieldName = 'CostDownSave'
      currency = True
      Precision = 19
    end
    object qryReciptsDefaultDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1580#1575#1606#1576#1610
      FieldName = 'DefaultDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryReciptsParentCoReciptID: TIntegerField
      FieldName = 'ParentCoReciptID'
    end
    object qryReciptsInsertDate: TDateTimeField
      FieldName = 'InsertDate'
    end
    object qryReciptsTruckNumber: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1576#1575#1585#1606#1575#1605#1607
      FieldName = 'TruckNumber'
      Size = 100
    end
    object qryReciptsMachineInfo: TStringField
      DisplayLabel = #1575#1591#1604#1575#1593#1575#1578' '
      FieldName = 'MachineInfo'
      Size = 50
    end
    object qryReciptsAidNumber: TStringField
      FieldName = 'AidNumber'
      Size = 40
    end
    object qryReciptsInsertTime: TStringField
      FieldName = 'InsertTime'
      Size = 25
    end
    object qryReciptsEditTime: TStringField
      FieldName = 'EditTime'
      Size = 25
    end
    object qryReciptsReciptsRow: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607
      FieldName = 'ReciptsRow'
    end
    object qryReciptsPrvYearID: TIntegerField
      FieldName = 'PrvYearID'
    end
    object qryRecipts_Mobile: TStringField
      FieldKind = fkLookup
      FieldName = '_Mobile'
      LookupDataSet = qryCustomers1
      LookupKeyFields = 'CustID'
      LookupResultField = 'Mobile'
      KeyFields = 'PersonID1'
      Lookup = True
    end
    object qryRecipts_Mobile2: TStringField
      FieldKind = fkLookup
      FieldName = '_Mobile2'
      LookupDataSet = qryCustomers2
      LookupKeyFields = 'CustID'
      LookupResultField = 'Mobile'
      KeyFields = 'PersonID2'
      Lookup = True
    end
    object qryRecipts_Max4WaterCo: TStringField
      FieldKind = fkLookup
      FieldName = '_Max4WaterCo'
      LookupDataSet = qryCustomers1
      LookupKeyFields = 'CustID'
      LookupResultField = 'Max4WaterCo'
      KeyFields = 'PersonID1'
      Lookup = True
    end
    object qryRecipts_CustomerActive: TIntegerField
      FieldKind = fkLookup
      FieldName = '_CustomerActive'
      LookupDataSet = qryCustomers1
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustomerActive'
      KeyFields = 'PersonID1'
      Lookup = True
    end
    object qryReciptsParentReciptNumber: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605' '#1605#1585#1578#1576#1591
      FieldName = 'ParentReciptNumber'
      ReadOnly = True
    end
    object qryReciptsDefaultDuration: TSmallintField
      FieldName = 'DefaultDuration'
      OnChange = qryReciptsDefaultDurationChange
    end
    object qryReciptsCalcGiftItems: TBooleanField
      FieldName = 'CalcGiftItems'
    end
    object qryRecipts_PersonRegisterNumber: TStringField
      FieldKind = fkLookup
      FieldName = '_PersonRegisterNumber'
      LookupDataSet = qryCustomers1
      LookupKeyFields = 'CustID'
      LookupResultField = 'RegisterNumber'
      KeyFields = 'PersonID1'
      Size = 50
      Lookup = True
    end
    object qryRecipts_ReciptDayMoon: TStringField
      FieldName = '_ReciptDayMoon'
      ReadOnly = True
      Size = 10000
    end
    object qryReciptsReciptDateMiladi: TDateTimeField
      FieldName = 'ReciptDateMiladi'
      OnChange = qryReciptsReciptDateMiladiChange
    end
    object qryReciptsMachineFullWeight: TFloatField
      FieldName = 'MachineFullWeight'
    end
    object qryReciptsMachineWeight: TFloatField
      FieldName = 'MachineWeight'
    end
    object qryReciptsID4Print: TLargeintField
      FieldName = 'ID4Print'
      ReadOnly = True
    end
  end
  object qryStuff_Unit_TecInf: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'SELECT     *'
      'FROM        Aid_StuffCoding2   INNER JOIN'
      
        '                      StoreStuffs ON Aid_StuffCoding2.c_StuffCod' +
        'e = StoreStuffs.c_StuffCode'
      ''
      '')
    Left = 395
    Top = 97
  end
  object srcRecipts: TDataSource
    AutoEdit = False
    DataSet = qryRecipts
    OnStateChange = srcReciptsStateChange
    Left = 349
    Top = 74
  end
  object qryStores: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'UserID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 127
      end
      item
        Name = 'UserIDAdmin'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 127
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
        'Type,c_address,c_tel, Stores.EntityDisplayType, Stores.TypeOfSal' +
        'e'
      ''
      'FROM         Stores INNER JOIN'
      
        '                      UsersStore ON Stores.n_StoreID = UsersStor' +
        'e.n_StoreID'
      
        'WHERE     (UsersStore.n_UserID = :UserID) OR (127 = :UserIDAdmin' +
        ')'
      ''
      'AND (Stores.n_StoreID > 0)'
      ' :StoreKindList'
      
        'GROUP BY Stores.n_StoreID, Stores.c_StoreName, Stores.n_Valuatio' +
        'nType ,'
      
        '           Stores.StoreKind, Stores.HasDeficit, UsersStore.Store' +
        'Type,c_address,c_tel, Stores.EntityDisplayType, Stores.TypeOfSal' +
        'e'
      '')
    Left = 610
    Top = 194
  end
  object qryUseUnits: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     UseUnitID, UseUnitName'
      'FROM         UseUnits')
    Left = 325
    Top = 372
  end
  object qryinit: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ReciptType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'declare @ReciptType int'
      'set @ReciptType= :ReciptType'
      'SELECT  *  ,(SELECT   count(*)'
      'FROM            ReciptTypes'
      
        'WHERE       ( ('#39','#39' + RecallReciptTypes + '#39','#39' LIKE '#39'%,'#39'+LTRIM( st' +
        'r(@ReciptType))+'#39',%'#39')  OR'
      '       (ReciptType = @ReciptType))'
      
        ' AND (RecallType IN (2, 3, 4, 5, 6, 7, 8, 10, 11, 12, 13, 15, 16' +
        '))) AS ParentFormActive'
      ''
      ' FROM    ReciptTypes'
      ''
      'where ReciptType=@ReciptType'
      ''
      ''
      'ORDER BY ReciptType'
      '')
    Left = 326
    Top = 108
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = srcItems
    OpenDataSource = False
    UserName = 'DBPipeline2'
    Left = 773
    Top = 402
    MasterDataPipelineName = 'ppDBPipeline1'
    object ppDBPipeline2ppField1: TppField
      FieldAlias = '_radif'
      FieldName = '_radif'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField2: TppField
      FieldAlias = 'StuffCode'
      FieldName = 'StuffCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField3: TppField
      FieldAlias = '_StuffName'
      FieldName = '_StuffName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField4: TppField
      FieldAlias = '_UnitName'
      FieldName = '_UnitName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField5: TppField
      FieldAlias = '_UnitName2'
      FieldName = '_UnitName2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField6: TppField
      FieldAlias = '_StuffTecInfo'
      FieldName = '_StuffTecInfo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField7: TppField
      FieldAlias = 'ProductModel'
      FieldName = 'ProductModel'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField8: TppField
      FieldAlias = '_ProductModelName'
      FieldName = '_ProductModelName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField9: TppField
      FieldAlias = 'RequestedEntity'
      FieldName = 'RequestedEntity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField10: TppField
      FieldAlias = 'RequestedWeight'
      FieldName = 'RequestedWeight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField11: TppField
      FieldAlias = 'AcceptEntity'
      FieldName = 'AcceptEntity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField12: TppField
      FieldAlias = 'AcceptWeight'
      FieldName = 'AcceptWeight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField13: TppField
      FieldAlias = 'RollbackEntity'
      FieldName = 'RollbackEntity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField14: TppField
      FieldAlias = 'RollbackWeight'
      FieldName = 'RollbackWeight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField15: TppField
      FieldAlias = 'InputEntity'
      FieldName = 'InputEntity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField16: TppField
      FieldAlias = 'OutputEntity'
      FieldName = 'OutputEntity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField17: TppField
      FieldAlias = 'InputWeight'
      FieldName = 'InputWeight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField18: TppField
      FieldAlias = 'OutputWeight'
      FieldName = 'OutputWeight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField19: TppField
      FieldAlias = 'UnitSellPrice'
      FieldName = 'UnitSellPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField20: TppField
      FieldAlias = 'TotalInputPrice'
      FieldName = 'TotalInputPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField21: TppField
      FieldAlias = 'TotalOutputPrice'
      FieldName = 'TotalOutputPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField22: TppField
      FieldAlias = 'StandardRate'
      FieldName = 'StandardRate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField23: TppField
      FieldAlias = 'TotalStandardRate'
      FieldName = 'TotalStandardRate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField24: TppField
      FieldAlias = 'WaterCo'
      FieldName = 'WaterCo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField25: TppField
      FieldAlias = 'DeficitValue'
      FieldName = 'DeficitValue'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField26: TppField
      FieldAlias = 'DeficitValueCo2'
      FieldName = 'DeficitValueCo2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField27: TppField
      FieldAlias = 'DeficitValue2'
      FieldName = 'DeficitValue2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField28: TppField
      FieldAlias = 'DeficitValueCo3'
      FieldName = 'DeficitValueCo3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField29: TppField
      FieldAlias = 'DeficitValue3'
      FieldName = 'DeficitValue3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField30: TppField
      FieldAlias = 'StuffSize'
      FieldName = 'StuffSize'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField31: TppField
      FieldAlias = 'TotalDeficient'
      FieldName = 'TotalDeficient'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField32: TppField
      FieldAlias = 'TotallSellPrice_DeficitValue3'
      FieldName = 'TotallSellPrice_DeficitValue3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField33: TppField
      FieldAlias = 'TotallSellPrice'
      FieldName = 'TotallSellPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField34: TppField
      FieldAlias = 'ProductCode'
      FieldName = 'ProductCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField35: TppField
      FieldAlias = 'PersonID1'
      FieldName = 'PersonID1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField36: TppField
      FieldAlias = '_PersonName1'
      FieldName = '_PersonName1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField37: TppField
      FieldAlias = 'UseUnitID'
      FieldName = 'UseUnitID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField38: TppField
      FieldAlias = '_UseUnitName'
      FieldName = '_UseUnitName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField39: TppField
      FieldAlias = 'AidNumber'
      FieldName = 'AidNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField40: TppField
      FieldAlias = 'AidDate'
      FieldName = 'AidDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField41: TppField
      FieldAlias = 'acc_TopicCode'
      FieldName = 'acc_TopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField42: TppField
      FieldAlias = 'acc_DetailCode'
      FieldName = 'acc_DetailCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField43: TppField
      FieldAlias = 'acc_CTopicCode'
      FieldName = 'acc_CTopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField44: TppField
      FieldAlias = 'acc_CTopicCode2'
      FieldName = 'acc_CTopicCode2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField45: TppField
      FieldAlias = 'acc_CTopicCode3'
      FieldName = 'acc_CTopicCode3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField46: TppField
      FieldAlias = '_PakhashCompany'
      FieldName = '_PakhashCompany'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField47: TppField
      FieldAlias = '_gateKetab'
      FieldName = '_gateKetab'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField48: TppField
      FieldAlias = '_NoeJeld'
      FieldName = '_NoeJeld'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField49: TppField
      FieldAlias = '_moalef'
      FieldName = '_moalef'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField50: TppField
      FieldAlias = '_Motarjem'
      FieldName = '_Motarjem'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 49
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField51: TppField
      FieldAlias = '_Nevisandeh'
      FieldName = '_Nevisandeh'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 50
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField52: TppField
      FieldAlias = '_Tabageh'
      FieldName = '_Tabageh'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 51
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField53: TppField
      FieldAlias = 'ControlCode'
      FieldName = 'ControlCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 52
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField54: TppField
      FieldAlias = 'ItemDate'
      FieldName = 'ItemDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 53
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField55: TppField
      FieldAlias = 'ItemNote'
      FieldName = 'ItemNote'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 54
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField56: TppField
      FieldAlias = 'InvEntity'
      FieldName = 'InvEntity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 55
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField57: TppField
      FieldAlias = 'Req_InvEntity'
      FieldName = 'Req_InvEntity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 56
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField58: TppField
      FieldAlias = 'Req_InvEntity2'
      FieldName = 'Req_InvEntity2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 57
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField59: TppField
      FieldAlias = 'SecondTypeItem'
      FieldName = 'SecondTypeItem'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 58
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField60: TppField
      FieldAlias = '_c_KeepPlace'
      FieldName = '_c_KeepPlace'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 59
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField61: TppField
      FieldAlias = 'MachineFullWeight'
      FieldName = 'MachineFullWeight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 60
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField62: TppField
      FieldAlias = 'MachineWeight'
      FieldName = 'MachineWeight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 61
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField63: TppField
      FieldAlias = 'TotalWeight'
      FieldName = 'TotalWeight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 62
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField64: TppField
      FieldAlias = 'MachineName'
      FieldName = 'MachineName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 63
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField65: TppField
      FieldAlias = 'MachineNo'
      FieldName = 'MachineNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 64
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField66: TppField
      FieldAlias = 'TotalPrice_TaxValue'
      FieldName = 'TotalPrice_TaxValue'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 65
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField67: TppField
      FieldAlias = 'ParentForm'
      FieldName = 'ParentForm'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 66
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField68: TppField
      FieldAlias = 'InvWeight'
      FieldName = 'InvWeight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 67
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField69: TppField
      FieldAlias = 'TotallSellPrice_InvWeight'
      FieldName = 'TotallSellPrice_InvWeight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 68
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField70: TppField
      FieldAlias = 'preReciptItemID'
      FieldName = 'preReciptItemID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 69
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField71: TppField
      FieldAlias = 'RegPrice'
      FieldName = 'RegPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 70
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField72: TppField
      FieldAlias = 'FirstUser'
      FieldName = 'FirstUser'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 71
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField73: TppField
      FieldAlias = 'LastUser'
      FieldName = 'LastUser'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 72
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField74: TppField
      FieldAlias = 'Auxiliary'
      FieldName = 'Auxiliary'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 73
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField75: TppField
      FieldAlias = '_ChapYear'
      FieldName = '_ChapYear'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 74
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField76: TppField
      FieldAlias = 'ArzAmount'
      FieldName = 'ArzAmount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 75
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField77: TppField
      FieldAlias = '_Carton'
      FieldName = '_Carton'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 76
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField78: TppField
      FieldAlias = 'PakhshCompany'
      FieldName = 'PakhshCompany'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 77
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField79: TppField
      FieldAlias = 'c_StuffName'
      FieldName = 'c_StuffName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 78
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField80: TppField
      FieldAlias = 'UnitSellPrice3'
      FieldName = 'UnitSellPrice3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 79
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField81: TppField
      FieldAlias = '_UnitPriceUseKind'
      FieldName = '_UnitPriceUseKind'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 80
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField82: TppField
      FieldAlias = '_SellPrice_S'
      FieldName = '_SellPrice_S'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 81
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField83: TppField
      FieldAlias = '____StuffTecInfo'
      FieldName = '____StuffTecInfo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 82
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField84: TppField
      FieldAlias = '_StuffpublicPercent'
      FieldName = '_StuffpublicPercent'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 83
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField85: TppField
      FieldAlias = 'ServerID'
      FieldName = 'ServerID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 84
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField86: TppField
      FieldAlias = 'YearID'
      FieldName = 'YearID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 85
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField87: TppField
      FieldAlias = '_StuffNote'
      FieldName = '_StuffNote'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 86
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField88: TppField
      FieldAlias = 'UnitSellPriceWeight'
      FieldName = 'UnitSellPriceWeight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 87
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField89: TppField
      FieldAlias = 'InsertTime'
      FieldName = 'InsertTime'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 88
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField90: TppField
      FieldAlias = 'EditTime'
      FieldName = 'EditTime'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 89
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField91: TppField
      FieldAlias = 'PestEntity'
      FieldName = 'PestEntity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 90
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField92: TppField
      FieldAlias = 'PrvYearID'
      FieldName = 'PrvYearID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 91
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField93: TppField
      FieldAlias = 'VATCoTotalPrice'
      FieldName = 'VATCoTotalPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 92
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField94: TppField
      FieldAlias = 'VATCoPrice'
      FieldName = 'VATCoPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 93
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField95: TppField
      FieldAlias = '_StanCode'
      FieldName = '_StanCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 94
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField96: TppField
      FieldAlias = '_TopicCodeName'
      FieldName = '_TopicCodeName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 95
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField97: TppField
      FieldAlias = '_DetailCode'
      FieldName = '_DetailCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 96
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField98: TppField
      FieldAlias = '_CTopicCode'
      FieldName = '_CTopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 97
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField99: TppField
      FieldAlias = '_CTopicCode2'
      FieldName = '_CTopicCode2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 98
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField100: TppField
      FieldAlias = '_CTopicCode3'
      FieldName = '_CTopicCode3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 99
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField101: TppField
      FieldAlias = 'ID'
      FieldName = 'ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 100
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField102: TppField
      FieldAlias = 'SyntheticCode'
      FieldName = 'SyntheticCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 101
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField103: TppField
      FieldAlias = 'DeficitValue123'
      FieldName = 'DeficitValue123'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 102
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField104: TppField
      FieldAlias = 'IRow'
      FieldName = 'IRow'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 103
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField105: TppField
      FieldAlias = 'ReciptItemID'
      FieldName = 'ReciptItemID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 104
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField106: TppField
      FieldAlias = 'ReciptID'
      FieldName = 'ReciptID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 105
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField107: TppField
      FieldAlias = 'StuffAlloy'
      FieldName = 'StuffAlloy'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 106
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField108: TppField
      FieldAlias = 'StuffGrade'
      FieldName = 'StuffGrade'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 107
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField109: TppField
      FieldAlias = 'StuffDiameter'
      FieldName = 'StuffDiameter'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 108
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField110: TppField
      FieldAlias = 'Discount'
      FieldName = 'Discount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 109
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppMasterFieldLink1: TppMasterFieldLink
      MasterFieldName = 'ReciptID'
      GuidCollationType = gcString
      DetailFieldName = 'ReciptID'
      DetailSortOrder = soAscending
    end
    object ppDBPipeline2ppMasterFieldLink2: TppMasterFieldLink
      MasterFieldName = 'YearID'
      GuidCollationType = gcString
      DetailFieldName = 'YearID'
      DetailSortOrder = soAscending
    end
    object ppDBPipeline2ppMasterFieldLink3: TppMasterFieldLink
      MasterFieldName = 'ServerID'
      GuidCollationType = gcString
      DetailFieldName = 'ServerID'
      DetailSortOrder = soAscending
    end
  end
  object PopOtherMenu: TPopupMenu
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    Left = 74
    Top = 458
    object N1: TMenuItem
      Action = actSearch
    end
    object N16: TMenuItem
      Action = actSort
    end
    object mnuN19: TMenuItem
      Caption = #1578#1585#1578#1610#1576' '#1608#1585#1608#1583' '#1575#1591#1604#1575#1593#1575#1578
      OnClick = mnuN19Click
    end
    object N17: TMenuItem
      Action = actReciptStateTo0
    end
    object N13: TMenuItem
      Caption = '-'
    end
    object mnuCofferType: TMenuItem
      Caption = #1601#1585#1605' '#1607#1575#1610' '#1582#1586#1575#1606#1607' '#1583#1575#1585#1610' ...'
    end
    object mnuActGetCheckF10: TMenuItem
      Action = mdiMainF.ActGetCheckF10
    end
    object mnuActGetOtherMoneyF1: TMenuItem
      Action = mdiMainF.ActGetOtherMoneyF1
    end
    object mnuActGetCheckF50: TMenuItem
      Action = mdiMainF.ActGetCheckF50
    end
    object mnuActGetOtherMoneyF2: TMenuItem
      Action = mdiMainF.ActGetOtherMoneyF2
    end
    object actRpt0011: TMenuItem
      Action = actRpt001
    end
    object mnuQuotaPostF: TMenuItem
      Action = mdiMainF.actQuotaPostF
    end
    object mnuCardex: TMenuItem
      Action = actCardex
    end
    object N26: TMenuItem
      Action = actShowCorrelateRecipt
    end
    object mnuN12: TMenuItem
      Caption = '-'
    end
    object mnuN13: TMenuItem
      Caption = #1603#1575#1585#1583#1603#1587
      OnClick = mnuN13Click
    end
    object N12: TMenuItem
      Caption = #1711#1585#1583#1588' '#1603#1575#1604#1575#1610' '#1575#1606#1576#1575#1585
      OnClick = N12Click
    end
    object TMenuItem
      Caption = '-'
    end
    object N21: TMenuItem
      Caption = #1578#1593#1605#1740#1605' '#1605#1602#1575#1583#1740#1585
      object ALLN: TMenuItem
        Caption = #1578#1593#1605#1610#1605' '#1605#1602#1583#1575#1585' '#1587#1591#1585' '#1580#1575#1585#1610' '#1576#1607' '#1607#1605#1607' '#1587#1591#1585#1607#1575#1740' '#1576#1593#1583
        Hint = 'Entity'
        OnClick = ALLNClick
      end
      object N22: TMenuItem
        Caption = #1578#1593#1605#1610#1605' '#1578#1608#1590#1740#1581#1575#1578' '#1587#1591#1585' '#1580#1575#1585#1610' '#1576#1607' '#1607#1605#1607' '#1587#1591#1585#1607#1575#1740' '#1576#1593#1583
        Hint = 'ItemNote'
        OnClick = ALLNClick
      end
      object N23: TMenuItem
        Caption = #1578#1593#1605#1610#1605' '#1583#1585#1589#1583' '#1605#1575#1604#1740#1575#1578' '#1587#1591#1585' '#1580#1575#1585#1610' '#1576#1607' '#1587#1591#1585#1607#1575#1740' '#1576#1593#1583
        Hint = 'TaxCo'
        OnClick = ALLNClick
      end
      object N3: TMenuItem
        Tag = 100
        Caption = #1578#1593#1605#1610#1605' '#1583#1585#1589#1583' '#1578#1582#1601#1610#1601' '#1587#1591#1585' '#1580#1575#1585#1610' '#1576#1607' '#1587#1591#1585#1607#1575#1740' '#1576#1593#1583
        Hint = 'WaterCo'
        OnClick = ALLNClick
      end
      object N24: TMenuItem
        Tag = 100
        Caption = #1578#1593#1605#1610#1605' '#1583#1585#1589#1583' '#1578#1582#1601#1610#1601'2  '#1587#1591#1585' '#1580#1575#1585#1610' '#1576#1607' '#1587#1591#1585#1607#1575#1740' '#1576#1593#1583
        Hint = 'DeficitValueCo2'
        OnClick = ALLNClick
      end
      object N31: TMenuItem
        Tag = 100
        Caption = #1578#1593#1605#1610#1605' '#1583#1585#1589#1583' '#1578#1582#1601#1610#1601'3  '#1587#1591#1585' '#1580#1575#1585#1610' '#1576#1607' '#1587#1591#1585#1607#1575#1740' '#1576#1593#1583
        Hint = 'DeficitValueCo3'
        OnClick = ALLNClick
      end
    end
    object mnuActCustomersF: TMenuItem
      Action = mdiMainF.ActCustomersF
    end
    object N2: TMenuItem
      Caption = #1605#1581#1575#1587#1576#1607' '#1578#1582#1601#1610#1601' '#1601#1575#1603#1578#1608#1585' '#1601#1585#1608#1588
      OnClick = N2Click
    end
    object N4: TMenuItem
      Caption = #1581#1584#1601' '#1603#1583#1607#1575#1610' '#1578#1603#1585#1575#1585#1610' '#1603#1575#1604#1575
      OnClick = N4Click
    end
    object NReq_InvEntity: TMenuItem
      Caption = #1603#1606#1578#1585#1604' '#1605#1608#1580#1608#1583#1610
      OnClick = NReq_InvEntityClick
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object Excel1: TMenuItem
      Action = actGetExcel
    end
    object N11: TMenuItem
      Action = actAllotment
    end
    object mnuN18: TMenuItem
      Caption = '-'
    end
    object mnuCopy: TMenuItem
      Action = actCopy
    end
    object N9: TMenuItem
      Action = actAllEdit
    end
    object N18: TMenuItem
      Action = actSplitForm
    end
    object mnuAnalytical: TMenuItem
      Action = actAnalytical
    end
    object mnuMakeDoc: TMenuItem
      Action = actMakeDoc
    end
    object N19: TMenuItem
      Caption = '-'
    end
    object mnuReturnRecallType9: TMenuItem
      Caption = #1576#1585#1711#1588#1578' '#1601#1585#1575#1582#1608#1575#1606#1610' '#1610#1603' '#1576#1607' '#1610#1603' ('#1578#1594#1610#1610#1585' '#1578#1575#1610#1662' '#1601#1585#1605')'#8207'...'
    end
    object N20: TMenuItem
      Action = actshowRelatedF
    end
    object mnuViewFileF: TMenuItem
      Action = actViewFileF
    end
    object mnuCalcGiftItems: TMenuItem
      Caption = #1605#1581#1575#1587#1576#1607' '#1705#1575#1604#1575#1740' '#1607#1583#1740#1607
      OnClick = mnuCalcGiftItemsClick
    end
    object N25: TMenuItem
      Action = actChanger
    end
    object sss1: TMenuItem
      Caption = #1583#1585#1610#1575#1601#1578#1548#1605#1602#1575#1610#1587#1607#1548#1579#1576#1578' Excel'
      OnClick = sss1Click
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.Collation = False
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A5'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 148000
    PrinterSetup.PaperSize = 11
    Template.FileName = 'D:\Projects\FaraXE8\Bsell\Exe\Report\ReciptsGrid0.rtm'
    Units = utMillimeters
    AfterPrint = ppReport1AfterPrint
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ShowEmailDialog = True
    EmailSettings.ShowCancelDialog = True
    LanguageID = 'English (United States)'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = False
    ThumbnailSettings.Visible = False
    ThumbnailSettings.DeadSpace = 30
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
    PDFSettings.FontEncoding = feUnicode
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 251
    Top = 424
    Version = '18.0'
    mmColumnWidth = 135300
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 147109
      mmPrintPosition = 0
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'plblSetField1'
        OnGetText = plblSetFieldGetText
        Caption = 'TotalOutputPrice'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        mmHeight = 5757
        mmLeft = 67469
        mmTop = 141288
        mmWidth = 36237
        BandType = 0
        LayerName = Foreground1
      end
      object plblSetField: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'plblSetField'
        OnGetText = plblSetFieldGetText
        Caption = 'UnitSellPrice'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        mmHeight = 5821
        mmLeft = 103717
        mmTop = 141288
        mmWidth = 28046
        BandType = 0
        LayerName = Foreground1
      end
      object plblAllStuffCoding: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label47'
        OnGetText = plblAllStuffCodingGetText
        Caption = 'VendorBarcode'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 18
        Font.Style = []
        Transparent = True
        mmHeight = 7408
        mmLeft = 15346
        mmTop = 132027
        mmWidth = 43656
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label402'
        AutoSize = False
        Caption = #1607#1585' '#1601#1740#1604#1583#1740' '#1575#1586' '#1705#1583#1740#1606#1711' '#1705#1575#1604#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 18
        Font.Style = []
        Transparent = True
        mmHeight = 17992
        mmLeft = 5027
        mmTop = 124090
        mmWidth = 61648
        BandType = 0
        LayerName = Foreground1
      end
      object plblDeficit_TotallSellPrice_Dec: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label45'
        OnGetText = plblDeficit_TotallSellPrice_DecGetText
        Caption = #1580#1605#1593' '#1582#1575#1604#1589'  '#1605#1576#1604#1594' '#1576#1575' '#1603#1587#1608#1585#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7673
        mmLeft = 93398
        mmTop = 129117
        mmWidth = 35454
        BandType = 0
        LayerName = Foreground1
      end
      object plblDeficit_Price_Add: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label23'
        OnGetText = plblDeficit_Price_AddGetText
        Caption = #1580#1605#1593' '#1605#1576#1604#1594' '#1576#1575' '#1575#1590#1575#1601#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7673
        mmLeft = 66146
        mmTop = 120121
        mmWidth = 24342
        BandType = 0
        LayerName = Foreground1
      end
      object plblDeficit_Price_Dec: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label22'
        OnGetText = plblDeficit_Price_DecGetText
        Caption = #1580#1605#1593' '#1605#1576#1604#1594' '#1576#1575' '#1603#1587#1608#1585#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7673
        mmLeft = 102659
        mmTop = 119063
        mmWidth = 25929
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel18: TppLabel
        Tag = 3
        DesignLayer = ppDesignLayer2
        UserName = 'Label21'
        OnGetText = plbl_SellsMethod0GetText
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.Weight = 0.748799979686737100
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'MS Sans Serif'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 10848
        mmTop = 110331
        mmWidth = 3969
        BandType = 0
        LayerName = Foreground1
      end
      object ppImage1: TppImage
        DesignLayer = ppDesignLayer2
        UserName = 'Logo'
        OnDrawCommandCreate = ppImage1DrawCommandCreate
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        mmHeight = 13229
        mmLeft = 36777
        mmTop = 53975
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground1
      end
      object plblTotallSellPrice2percent: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        OnGetText = plblTotallSellPrice2percentGetText
        Caption = #1580#1605#1593' '#1582#1575#1604#1589' 2 '#1583#1585#1589#1583' '#1603#1605#1578#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7673
        mmLeft = 89959
        mmTop = 108479
        mmWidth = 31485
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        AutoSize = False
        Caption = #1594#1610#1585' '#1606#1602#1583#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        mmHeight = 8996
        mmLeft = 27252
        mmTop = 108479
        mmWidth = 14023
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label401'
        AutoSize = False
        Caption = #1606#1602#1583#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        mmHeight = 8996
        mmLeft = 59267
        mmTop = 108479
        mmWidth = 14023
        BandType = 0
        LayerName = Foreground1
      end
      object plbl_SellsMethod1: TppLabel
        Tag = 2
        DesignLayer = ppDesignLayer2
        UserName = 'plbl_SellsMethod1'
        OnGetText = plbl_SellsMethod0GetText
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.Weight = 0.748799979686737100
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'MS Sans Serif'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 20902
        mmTop = 110331
        mmWidth = 3969
        BandType = 0
        LayerName = Foreground1
      end
      object plbl_SellsMethod0: TppLabel
        Tag = 1
        DesignLayer = ppDesignLayer2
        UserName = 'plbl_SellsMethod0'
        OnGetText = plbl_SellsMethod0GetText
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.Weight = 0.748799979686737100
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'MS Sans Serif'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 53181
        mmTop = 110331
        mmWidth = 3969
        BandType = 0
        LayerName = Foreground1
      end
      object plblTotallSellPricedivEntity: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        OnGetText = plblTotallSellPricedivEntityGetText
        Caption = 'TotallSellPrice / Entity'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        mmHeight = 8996
        mmLeft = 75671
        mmTop = 94721
        mmWidth = 44715
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable1'
        OnGetText = ppSysVarPageNumGetText
        VarType = vtTime
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yekan'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 10848
        mmTop = 56092
        mmWidth = 16669
        BandType = 0
        LayerName = Foreground1
      end
      object plbl5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        OnGetText = ppLblSecondTypeGetText
        Caption = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 114829
        mmTop = 11113
        mmWidth = 16140
        BandType = 0
        LayerName = Foreground1
      end
      object pdbtxtShamsi2Miladi1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'Shamsi2Miladi1'
        OnGetText = pdbtxtShamsi2Miladi1GetText
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yekan'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 61913
        mmTop = 58738
        mmWidth = 47625
        BandType = 0
        LayerName = Foreground1
      end
      object plblTotallSellPrice2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        OnGetText = plblTotallSellPrice2GetText
        Caption = #1580#1605#1593' '#1582#1575#1604#1589' '#1576#1581#1585#1608#1601
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7673
        mmLeft = 110596
        mmTop = 57679
        mmWidth = 22754
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 6879
        mmTop = 97367
        mmWidth = 51594
        BandType = 0
        LayerName = Foreground1
      end
      object plblPrint1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label44'
        AutoSize = False
        Caption = '  vtTime  vtTime'#1578#1594#1610#1610#1585' '#1605#1578#1606' '#1583#1607#1610#1583' '#1606#1575#1605' '#1603#1575#1585#1576#1585' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yekan'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 14288
        mmLeft = 5027
        mmTop = 47625
        mmWidth = 27781
        BandType = 0
        LayerName = Foreground1
      end
      object plblAllReadBankConfig2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label43'
        OnGetText = plblAllReadBankConfigGetText
        Caption = 'PostalCode'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 50800
        mmTop = 97367
        mmWidth = 15610
        BandType = 0
        LayerName = Foreground1
      end
      object plblAllReadBankConfig1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label42'
        OnGetText = plblAllReadBankConfigGetText
        Caption = 'Tel1'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 34925
        mmTop = 92075
        mmWidth = 6350
        BandType = 0
        LayerName = Foreground1
      end
      object plblAllReadBankConfig: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label41'
        OnGetText = plblAllReadBankConfigGetText
        Caption = 'RegisterNumber'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 1852
        mmTop = 91811
        mmWidth = 23283
        BandType = 0
        LayerName = Foreground1
      end
      object plblAmount1Total_Price2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label40'
        AutoSize = False
        Caption = #1578#1576#1583#1610#1604' '#1593#1583#1583' '#1576#1607' '#1581#1585#1608#1601' '#1576#1575' '#1575#1610#1606' '#1583#1608
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 18
        Font.Style = []
        Transparent = True
        mmHeight = 21167
        mmLeft = 6879
        mmTop = 70908
        mmWidth = 62442
        BandType = 0
        LayerName = Foreground1
      end
      object plblTotallSellPricAlpha: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label39'
        OnGetText = plblTotallSellPricAlphaGetText
        Caption = #1580#1605#1593' '#1576#1581#1585#1608#1601' '#1582#1575#1604#1589' '#1576#1575' '#1603#1587#1608#1585#1575#1578' /'#1575#1590#1575#1601#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7673
        mmLeft = 80698
        mmTop = 84402
        mmWidth = 50536
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label38'
        OnGetText = ppDBTxtPayableSellPriceGetText
        Caption = #1580#1605#1593' '#1582#1575#1604#1589' '#1576#1575' '#1603#1587#1608#1585#1575#1578' /'#1575#1590#1575#1601#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7673
        mmLeft = 88636
        mmTop = 76994
        mmWidth = 40746
        BandType = 0
        LayerName = Foreground1
      end
      object plblTotallSellPrice: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label37'
        OnGetText = plblTotallSellPriceGetText
        Caption = #1580#1605#1593' '#1582#1575#1604#1589
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7705
        mmLeft = 114829
        mmTop = 69586
        mmWidth = 12996
        BandType = 0
        LayerName = Foreground1
      end
      object plblNameNote: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label36'
        OnGetText = plblNameNoteGetText
        Caption = #1588#1585#1581' '#1603#1575#1604#1575#1608' '#1578#1608#1590#1610#1581#1575#1578' '#1603#1575#1604#1575
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5800
        mmLeft = 32735
        mmTop = 14288
        mmWidth = 24680
        BandType = 0
        LayerName = Foreground1
      end
      object plblDate: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LblDate'
        OnGetText = plblDateGetText
        Caption = #1578#1575#1585#1610#1582' '#1605#1610#1604#1575#1583#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7673
        mmLeft = 55033
        mmTop = 35719
        mmWidth = 16933
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label33'
        OnGetText = ppLabelOutputEntityGetText
        Caption = #1580#1605#1593' '#1605#1602#1583#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7673
        mmLeft = 76465
        mmTop = 69321
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label34'
        OnGetText = ppLabelOutputWeightGetText
        Caption = #1580#1605#1593' '#1608#1586#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7673
        mmLeft = 96573
        mmTop = 68792
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground1
      end
      object plblSecondTypeItem: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label32'
        OnGetText = plblSecondTypeItemGetText
        Caption = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1610#1578#1605' '#1607#1575
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 110596
        mmTop = 19050
        mmWidth = 23283
        BandType = 0
        LayerName = Foreground1
      end
      object plblName_Note: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label31'
        OnGetText = plblName_NoteGetText
        Caption = #1588#1585#1581' '#1603#1575#1604#1575#1608' '#1578#1608#1590#1610#1581#1575#1578
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 34396
        mmTop = 7144
        mmWidth = 20902
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBTextSumSelect: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'ppDBTextSumSelect'
        OnGetText = ppDBTextSumSelectGetText
        DataField = 'InputEntity'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4498
        mmLeft = 69321
        mmTop = 16140
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText11'
        OnGetText = ppDBText6GetText
        BlankWhenZero = True
        DataField = 'SecondTypeItem'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5080
        mmLeft = 20902
        mmTop = 1852
        mmWidth = 14817
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText15'
        AutoSize = True
        DataField = '_NationalID'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 39952
        mmTop = 26723
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label28'
        Caption = #1603#1583' '#1605#1604#1610':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6350
        mmLeft = 59267
        mmTop = 26723
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBCalc11: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc11'
        OnGetText = ppDBCalcnum2alphabetGetText
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 34925
        mmTop = 76994
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground1
      end
      object DBnum2alphabet: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBnum2alphabet'
        OnGetText = DBnum2alphabetGetText
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 10848
        mmTop = 80433
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label11'
        Caption = '88903843_88921980'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 1588
        mmTop = 25135
        mmWidth = 24342
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label25'
        Caption = #1580#1605#1593' '#1575#1606#1578#1582#1575#1576#1610' '#1607#1585' '#1587#1578#1608#1606
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 11642
        mmLeft = 61913
        mmTop = 11377
        mmWidth = 33338
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText14'
        DataField = '_PersonPostalCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 794
        mmTop = 39423
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape5'
        Shape = stRoundRect
        mmHeight = 6350
        mmLeft = 529
        mmTop = 39158
        mmWidth = 20638
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        DataField = '_PersonEconomicNumber'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 1058
        mmTop = 32015
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label14'
        OnGetText = ppLblCompanyNameGetText
        Caption = 'company'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 78846
        mmTop = 26723
        mmWidth = 13494
        BandType = 0
        LayerName = Foreground1
      end
      object ppLblHeader: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label13'
        OnGetText = ppLblHeaderGetText
        Caption = 'header'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 96573
        mmTop = 12965
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground1
      end
      object ppLbl_PersonAddress: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        OnGetText = ppLblAddresGetText
        Caption = 'ppLbl_PersonAddress'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 100542
        mmTop = 28310
        mmWidth = 30956
        BandType = 0
        LayerName = Foreground1
      end
      object ppRegion1: TppRegion
        DesignLayer = ppDesignLayer2
        UserName = 'Region1'
        Caption = 'Region1'
        Visible = False
        mmHeight = 9260
        mmLeft = 96309
        mmTop = 0
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppRecFooterLine: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line28'
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 99484
          mmTop = 6350
          mmWidth = 13229
          BandType = 0
          LayerName = Foreground1
        end
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable2'
        OnGetText = ppSysVarPageNumGetText
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yekan'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4276
        mmLeft = 1588
        mmTop = 2646
        mmWidth = 7535
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel52: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label52'
        Caption = #1603#1600#1600#1600#1583' '#1662#1587#1578#1600#1600#1600#1600#1610':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yekan'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 21696
        mmTop = 40217
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText13'
        DataField = '_PersonTel'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 56356
        mmTop = 51858
        mmWidth = 56092
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label16'
        Caption = #1578#1604#1601#1606':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yekan'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 113506
        mmTop = 52123
        mmWidth = 6615
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label12'
        Caption = #1578#1604#1601#1606':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yekan'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 26458
        mmTop = 25400
        mmWidth = 5556
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel51: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label51'
        Caption = #1588#1605#1575#1585#1607' '#1575#1602#1578#1589#1575#1583#1610':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yekan'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 21696
        mmTop = 32808
        mmWidth = 16669
        BandType = 0
        LayerName = Foreground1
      end
      object ppLBLReportTopic: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label9'
        Caption = #1589#1608#1585#1578#1581#1587#1575#1576' '#1601#1585#1608#1588' '#1603#1575#1604#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Arshia'
        Font.Size = 18
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7408
        mmLeft = 42863
        mmTop = 529
        mmWidth = 49213
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label101'
        Caption = #1578#1575#1585#1610#1582':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yekan'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 19315
        mmTop = 16404
        mmWidth = 6085
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText10'
        DataField = 'ReciptDate'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 2646
        mmTop = 16140
        mmWidth = 15610
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText9'
        DataField = 'ReciptNumber'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clRed
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 2646
        mmTop = 10583
        mmWidth = 15610
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
        Caption = #1588#1605#1575#1585#1607':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yekan'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 19315
        mmTop = 11113
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText12'
        DataField = '_PersonAddress'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 8996
        mmLeft = 39423
        mmTop = 44450
        mmWidth = 73025
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText38: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText27'
        DataField = '_PersonName1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 82550
        mmTop = 37042
        mmWidth = 29898
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label18'
        Caption = #1606#1575#1605' '#1582#1585#1610#1583#1575#1585':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yekan'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 113506
        mmTop = 37042
        mmWidth = 13758
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label17'
        Caption = #1606#1588#1575#1606#1610':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yekan'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 113506
        mmTop = 44450
        mmWidth = 7938
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape3'
        Shape = stRoundRect
        mmHeight = 6350
        mmLeft = 794
        mmTop = 31750
        mmWidth = 20638
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBImage1: TppDBImage
        DesignLayer = ppDesignLayer2
        UserName = 'DBImage1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        DataField = 'StuffCode'
        DataPipeline = ppDBPipeline1
        GraphicType = 'JPEG'
        OnGetPicture = ppDBImage1GetPicture
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 13229
        mmLeft = 55033
        mmTop = 62706
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground1
      end
      object pdbtxtAllDBSUM: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText17'
        OnGetText = pdbtxtAllDBSUMGetText
        DataField = 'OutputEntity'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4498
        mmLeft = 47625
        mmTop = 85461
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground1
      end
      object plblAllSum: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label48'
        OnGetText = plblAllSumGetText
        Caption = 'TotalOutputPrice'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clRed
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 8996
        mmTop = 84402
        mmWidth = 34131
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintCount = 20
      mmBottomOffset = 0
      mmHeight = 36513
      mmPrintPosition = 0
      object ppLine23: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line16'
        Pen.Width = 2
        Position = lpRight
        Weight = 1.500000000000000000
        mmHeight = 6350
        mmLeft = 133086
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine22: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line15'
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 6400
        mmLeft = 0
        mmTop = 0
        mmWidth = 2000
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine19: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line8'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 40746
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine18: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line18'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6400
        mmLeft = 129382
        mmTop = 0
        mmWidth = 2000
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine17: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line17'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6400
        mmLeft = 100013
        mmTop = 0
        mmWidth = 2000
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line7'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6400
        mmLeft = 92604
        mmTop = 0
        mmWidth = 2000
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line201'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 82021
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line14'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 65617
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line13'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 47096
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line12'
        Position = lpLeft
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 6400
        mmLeft = 24342
        mmTop = 0
        mmWidth = 2000
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBCalc4: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc4'
        DataField = 'Stuffcode'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yekan'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4233
        mmLeft = 129646
        mmTop = 1058
        mmWidth = 4763
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        DataField = '_stuffName'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4763
        mmLeft = 100542
        mmTop = 794
        mmWidth = 28310
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText3'
        DataField = 'OutputEntity'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yekan'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4763
        mmLeft = 93398
        mmTop = 794
        mmWidth = 6085
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        DataField = '_UnitName'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yekan'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4233
        mmLeft = 82815
        mmTop = 1058
        mmWidth = 9525
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText6'
        DataField = 'UnitSellPrice'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yekan'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4233
        mmLeft = 66146
        mmTop = 1058
        mmWidth = 15610
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText7'
        DataField = 'TotalOutputPrice'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yekan'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4233
        mmLeft = 47625
        mmTop = 1058
        mmWidth = 17463
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText22'
        DataField = 'WaterCo'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yekan'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4233
        mmLeft = 41010
        mmTop = 1058
        mmWidth = 5821
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText25'
        BlankWhenZero = True
        DataField = 'DeficitValue'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yekan'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4233
        mmLeft = 25400
        mmTop = 1058
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        DataField = 'TotallSellPrice'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yekan'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4763
        mmLeft = 794
        mmTop = 794
        mmWidth = 22754
        BandType = 4
        LayerName = Foreground1
      end
      object ppVariable1: TppVariable
        DesignLayer = ppDesignLayer2
        UserName = 'Variable1'
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        mmHeight = 5821
        mmLeft = 27252
        mmTop = 8467
        mmWidth = 20902
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label403'
        AutoSize = False
        Caption = #1605#1581#1575#1587#1576#1607' 9 '#1583#1585#1589#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 18
        Font.Style = []
        Transparent = True
        mmHeight = 17992
        mmLeft = 5027
        mmTop = 17463
        mmWidth = 61648
        BandType = 4
        LayerName = Foreground1
      end
      object pdbtxt9Prcent: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText16'
        OnGetText = pdbtxt9PrcentGetText
        DataField = 'UnitSellPrice'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4498
        mmLeft = 25400
        mmTop = 26988
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
      object ppDBCalc9: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc9'
        DataField = 'UnitSellPrice'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 76465
        mmTop = 1058
        mmWidth = 17198
        BandType = 8
        LayerName = Foreground1
      end
      object ppCalcNum2alphabet: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalcnum2alphabet1'
        OnGetText = ppDBCalcnum2alphabetGetText
        DataField = 'UnitSellPrice'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 97631
        mmTop = 529
        mmWidth = 17198
        BandType = 8
        LayerName = Foreground1
      end
      object ppDBCalc5: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc5'
        DataField = 'TotallSellPrice'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yekan'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4763
        mmLeft = 794
        mmTop = 794
        mmWidth = 22490
        BandType = 8
        LayerName = Foreground1
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line6'
        Position = lpLeft
        StretchWithParent = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 24342
        mmTop = 265
        mmWidth = 3175
        BandType = 8
        LayerName = Foreground1
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label24'
        Caption = #1580#1605#1600#1600#1593' '#1576#1575' '#1575#1610#1606' '#1589#1601#1581#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yekan'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4276
        mmLeft = 26194
        mmTop = 1323
        mmWidth = 19431
        BandType = 8
        LayerName = Foreground1
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 55563
      mmPrintPosition = 0
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label8'
        OnGetText = ppLblReMainTotallSellPriceGetText
        Caption = #1605#1575#1606#1583#1607' '#1581#1587#1575#1576' '#1588#1605#1575' '#1576#1575' '#1575#1581#1578#1587#1575#1576' '#1575#1610#1606' '#1601#1575#1705#1578#1608#1585' '#1576#1575' '#1578#1582#1601#1610#1601
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 6350
        mmLeft = 78846
        mmTop = 40217
        mmWidth = 49477
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label27'
        OnGetText = ppLblReMainGetText
        Caption = #1605#1575#1606#1583#1607' '#1581#1587#1575#1576' '#1588#1605#1575' '#1576#1575' '#1575#1581#1578#1587#1575#1576' '#1575#1610#1606' '#1601#1575#1705#1578#1608#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 37835
        mmTop = 32544
        mmWidth = 43127
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label103'
        OnGetText = ppLblReMainOldGetText
        Caption = #1605#1575#1606#1583#1607' '#1581#1587#1575#1576' '#1588#1605#1575' '#1575#1586' '#1602#1576#1604'  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 92340
        mmTop = 30692
        mmWidth = 28046
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label26'
        Caption = 'dbcalc9'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        mmHeight = 5821
        mmLeft = 44450
        mmTop = 14023
        mmWidth = 9525
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label15'
        OnGetText = ppLblSecondTypeGetText
        Caption = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 102659
        mmTop = 1852
        mmWidth = 15610
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line29'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 65617
        mmTop = 0
        mmWidth = 2381
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line27'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 47096
        mmTop = 0
        mmWidth = 2381
        BandType = 7
        LayerName = Foreground1
      end
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer2
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentWidth = False
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 8731
        mmLeft = 40746
        mmTop = 21696
        mmWidth = 37306
        BandType = 7
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipeline3
          PrinterSetup.BinName = 'Default'
          PrinterSetup.Collation = False
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.PaperName = 'A5'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210000
          PrinterSetup.mmPaperWidth = 148000
          PrinterSetup.PaperSize = 11
          Units = utMillimeters
          Version = '18.0'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline3'
          object ppDetailBand1: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 5027
            mmPrintPosition = 0
            object ppDBText2: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText1'
              DataField = 'Deficit_Add_Dec'
              DataPipeline = ppDBPipeline3
              DisplayFormat = '#,0;(#,0)'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 5027
              mmLeft = 529
              mmTop = 0
              mmWidth = 21167
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText5: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText2'
              DataField = 'DeficitName'
              DataPipeline = ppDBPipeline3
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = [fsBold]
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 4763
              mmLeft = 27781
              mmTop = 265
              mmWidth = 14023
              BandType = 4
              LayerName = Foreground
            end
            object ppDBCalc10: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalcnum2alphabet3'
              OnGetText = ppDBCalcnum2alphabetGetText
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 5821
              mmLeft = 93134
              mmTop = 0
              mmWidth = 17198
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
      object ppDBCalcnum2alphabet: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalcnum2alphabet'
        OnGetText = ppLabelnum2alphabetPayebelSellPriceGetText
        DataField = 'TotallSellPrice'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 10848
        mmLeft = 794
        mmTop = 26988
        mmWidth = 23283
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc7: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc7'
        OnGetText = ppDBTxtPayableSellPriceGetText
        DataField = 'TotallSellPrice'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yekan'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5821
        mmLeft = 794
        mmTop = 22225
        mmWidth = 23019
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc1'
        DataField = 'TotallSellPrice'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yekan'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5821
        mmLeft = 794
        mmTop = 794
        mmWidth = 23019
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText8'
        DataField = 'ReciptNote'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 71967
        mmTop = 15081
        mmWidth = 61913
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc6: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc6'
        DataField = 'OutputEntity'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yekan'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4763
        mmLeft = 93134
        mmTop = 1588
        mmWidth = 6615
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine33: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line33'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 100013
        mmTop = 529
        mmWidth = 2117
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine32: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line32'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 92604
        mmTop = 529
        mmWidth = 2117
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc3'
        DataField = 'TotalOutputPrice'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yekan'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4233
        mmLeft = 48154
        mmTop = 1588
        mmWidth = 16933
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc2'
        BlankWhenZero = True
        DataField = 'DeficitValue'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yekan'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4233
        mmLeft = 25665
        mmTop = 1588
        mmWidth = 14288
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine25: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line26'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 40746
        mmTop = 0
        mmWidth = 2381
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine24: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line25'
        Position = lpLeft
        StretchWithParent = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 37835
        mmLeft = 24342
        mmTop = 0
        mmWidth = 3175
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line5'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 0
        mmTop = 19315
        mmWidth = 135300
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel46: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label46'
        Caption = #1605#1607#1600#1600#1600#1585' / '#1575#1605#1590#1600#1600#1600#1575#1569' '#1582#1585#1610#1583#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 75671
        mmTop = 21960
        mmWidth = 21960
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel35: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label35'
        Caption = #1605#1607#1600#1600#1600#1585' / '#1575#1605#1590#1600#1600#1600#1575#1569' '#1601#1585#1608#1588#1606#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 107950
        mmTop = 21960
        mmWidth = 23813
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label29'
        Caption = #1605#1576#1604#1594' '#1602#1575#1576#1604' '#1662#1585#1583#1575#1582#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yekan'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 25665
        mmTop = 21696
        mmWidth = 22754
        BandType = 7
        LayerName = Foreground1
      end
      object ppLBLMandeh: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBLMandeh'
        OnGetText = ppLblReMainGetText
        AutoSize = False
        Caption = #1605#1575#1606#1583#1607' '#1581#1587#1575#1576
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        WordWrap = True
        mmHeight = 6085
        mmLeft = 37835
        mmTop = 7673
        mmWidth = 95779
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine21: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 10319
        mmWidth = 135300
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label19'
        Caption = #1588#1585#1575#1610#1591' '#1601#1585#1608#1588':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yekan'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 118534
        mmTop = 1588
        mmWidth = 14817
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine20: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 6085
        mmWidth = 135300
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label30'
        Caption = #1580#1605#1593' '#1603#1604'('#1585#1610#1575#1604')'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yekan'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 67469
        mmTop = 1588
        mmWidth = 15081
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label20'
        OnGetText = ppLblFormFooterGetText
        AutoSize = False
        Caption = 'footer'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Zar'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 10319
        mmLeft = 13229
        mmTop = 40217
        mmWidth = 38365
        BandType = 7
        LayerName = Foreground1
      end
      object ppShape4: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape2'
        Pen.Width = 2
        mmHeight = 4233
        mmLeft = 0
        mmTop = 51329
        mmWidth = 135202
        BandType = 7
        LayerName = Foreground1
      end
    end
    object ppPageStyle1: TppPageStyle
      Background.Brush.Style = bsClear
      EndPage = 0
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 197300
      mmPrintPosition = 0
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label7'
        OnGetText = ppLabel15GetText
        Caption = #1576#1585#1711#1588#1578' '#1603#1575#1604#1575' '#1576#1607' '#1575#1606#1576#1575#1585' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clSilver
        Font.Name = 'Majiid Shaded'
        Font.Size = 60
        Font.Style = [fsBold, fsItalic]
        mmHeight = 29898
        mmLeft = 0
        mmTop = 5292
        mmWidth = 168540
        BandType = 10
        LayerName = PageLayer1
      end
    end
    object raCodeModule1: TraCodeModule
      object raProgramInfo1: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'Variable1OnCalc'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Variable1OnCalc(var Value: Variant);'#13#10'begin'#13#10#13#10'  Value' +
          ' := 1+3'#13#10#13#10'end;'#13#10
        raProgram.ComponentName = 'Variable1'
        raProgram.EventName = 'OnCalc'
        raProgram.EventID = 33
        raProgram.CaretPos = (
          26
          2)
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
    Connection = DMF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT DISTINCT CustID, CustName,InfoWeight,Address, CustomerAct' +
        'ive, Mobile , Discount '
      'FROM Vu_CustomersGroups'
      ''
      '  ')
    Left = 549
    Top = 206
  end
  object qryCustomers1: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT DISTINCT Vu_CustomersGroups.CustID, Vu_CustomersGroups.Cu' +
        'stName, ISNULL(AddressInMasir.MasirText, '#39#39') + '#39' '#39' + Vu_Customer' +
        'sGroups.Address AS Address, Vu_CustomersGroups.Tel,'
      
        ' Vu_CustomersGroups.PostalCode, Vu_CustomersGroups.EconomicNumbe' +
        'r, Vu_CustomersGroups.Fax, Vu_CustomersGroups.DayTime, Vu_Custom' +
        'ersGroups.ValuationType, Vu_CustomersGroups.Discount,'
      
        ' Vu_CustomersGroups.DiscountNote + '#39' '#1583#1585#1589#1583': '#39' + LTRIM(STR(Vu_Cust' +
        'omersGroups.Discount)) AS DiscountNote, Vu_CustomersGroups.Natio' +
        'nalID, Vu_CustomersGroups.InfoWeight,'
      
        ' Vu_CustomersGroups.SellsDefaultState, Vu_CustomersGroups.MasirI' +
        'D, Vu_CustomersGroups.PersonID1, Vu_CustomersGroups.Mobile, Vu_C' +
        'ustomersGroups.Max4WaterCo,'
      
        ' Vu_CustomersGroups.CustomerActive, AddressInMasir.MasirText, Vu' +
        '_CustomersGroups.Address AS AddressOnly, Vu_CustomersGroups.Regi' +
        'sterNumber, '
      'DayOrder'
      'FROM            Vu_CustomersGroups LEFT OUTER JOIN'
      
        '                         AddressInMasir ON Vu_CustomersGroups.Ma' +
        'sirID = AddressInMasir.MasirID')
    Left = 400
    Top = 158
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
    Left = 524
    Top = 6
  end
  object PopMuPrint: TPopupMenu
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    Images = ImageList1
    ParentBiDiMode = False
    Left = 134
    Top = 417
    object MenuItem1: TMenuItem
      Tag = 1
      Action = actPrint1
    end
    object MenuItem2: TMenuItem
      Tag = 2
      Action = actPrint2
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object NAllRecords: TMenuItem
      Caption = #1670#1575#1662' '#1607#1605#1607' '#1601#1585#1605' '#1607#1575
      OnClick = NAllRecordsClick
    end
    object Barcode1: TMenuItem
      Action = actBarcode
      SubMenuImages = ImageList1
    end
    object mnuZero: TMenuItem
      Caption = #1581#1584#1601' '#1605#1602#1583#1575#1585' '#1589#1601#1585' '#1583#1585' '#1670#1575#1576' '
      OnClick = mnuZeroClick
    end
  end
  object PopMnuGrid: TPopupMenu
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    Left = 583
    Top = 65
    object MenuItem10: TMenuItem
      Action = DataSetInsert2
    end
    object MenuItem11: TMenuItem
      Action = DataSetEdit2
    end
    object N5: TMenuItem
      Action = DataSetPost2
    end
    object N14: TMenuItem
      Action = DataSetCancel2
    end
    object N15: TMenuItem
      Caption = '-'
    end
    object Action11: TMenuItem
      Action = actReciptsRegulates
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object N6: TMenuItem
      Caption = #1578#1608#1590#1610#1581#1575#1578' '#1603#1575#1604#1575
    end
  end
  object qry_Deficits: TADOQuery
    Connection = DMF.adcBSell
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
      'and ( ServerID = :ServerID )'
      '')
    Left = 599
    Top = 7
  end
  object qry_Deficits4Print: TADOQuery
    Connection = DMF.adcBSell
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
      
        'SELECT        CASE WHEN isnull(Deficits.GroupDeficitID, 0) = 0 T' +
        'HEN MAX(Deficits.DeficitName) ELSE MIN(Deficits.DeficitName) + '#39 +
        '_'#39' + MAX(Deficits.DeficitName) '
      '                         END AS DeficitName, '
      
        '  SUM(ReciptsDeficits.DeficitAdd - ReciptsDeficits.DeficitDec) A' +
        'S Deficit_Add_Dec, SUM(ReciptsDeficits.DeficitAdd) AS DeficitAdd' +
        ', '
      
        '                         SUM(ReciptsDeficits.DeficitDec) AS Defi' +
        'citDec'
      
        ' ,MAX(ReciptsDeficits.DeficitCo) AS DeficitCo ,MAX(ReciptsDefici' +
        'ts.DeficitCo)*100 As DeficitPercent'
      ''
      ''
      'FROM            Deficits INNER JOIN'
      
        '                         ReciptsDeficits ON Deficits.DeficitID =' +
        ' ReciptsDeficits.DeficitID'
      
        'WHERE        (ReciptsDeficits.ReciptID = :ReciptID) AND (Recipts' +
        'Deficits.YearID = :YearID) AND (ReciptsDeficits.ServerID = :Serv' +
        'erID)'
      
        'GROUP BY Deficits.GroupDeficitID, CASE WHEN isnull(Deficits.Grou' +
        'pDeficitID, 0) = 0 THEN ReciptsDeficits.DeficitID ELSE Deficits.' +
        'GroupDeficitID END'
      'ORDER BY MIN(ReciptsDeficits.ReciptDeficitID)')
    Left = 534
    Top = 169
    object qry_Deficits4PrintDeficitName: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldName = 'DeficitName'
      Size = 50
    end
    object qry_Deficits4PrintDeficit_Add_Dec: TBCDField
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'Deficit_Add_Dec'
      currency = True
      Precision = 19
    end
    object qry_Deficits4PrintDeficitAdd: TBCDField
      FieldName = 'DeficitAdd'
      ReadOnly = True
      Precision = 19
    end
    object qry_Deficits4PrintDeficitDec: TBCDField
      FieldName = 'DeficitDec'
      ReadOnly = True
      Precision = 19
    end
    object qry_Deficits4PrintDeficitCo: TFloatField
      FieldName = 'DeficitCo'
      ReadOnly = True
    end
    object qry_Deficits4PrintDeficitPercent: TFloatField
      FieldName = 'DeficitPercent'
      ReadOnly = True
    end
  end
  object ppDBPipeline3: TppDBPipeline
    DataSource = srcDeficits4Print
    OpenDataSource = False
    UserName = 'DBPipeline3'
    Left = 499
    Top = 324
    MasterDataPipelineName = 'ppDBPipeline1'
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
    object ppDBPipeline3ppField3: TppField
      FieldAlias = 'DeficitAdd'
      FieldName = 'DeficitAdd'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField4: TppField
      FieldAlias = 'DeficitDec'
      FieldName = 'DeficitDec'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField5: TppField
      FieldAlias = 'DeficitCo'
      FieldName = 'DeficitCo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline3ppField6: TppField
      FieldAlias = 'DeficitPercent'
      FieldName = 'DeficitPercent'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
  end
  object srcDeficits4Print: TDataSource
    DataSet = qry_Deficits4Print
    Left = 596
    Top = 129
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 123
    Top = 272
  end
  object qryReciptOnFormsRange: TADOQuery
    Connection = DMF.adcBSell
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
      
        'SELECT     FormTypes.FormCaption, dbo.FormItemsAmount(Forms.Form' +
        'ID,Forms.ServerID, Forms.YearID ) AS FormItemsAmount, FormItems.' +
        'CheckNumber, FormItems.CheckDate, '
      
        '                      FormItems.BankName, FormItems.AccountNumbe' +
        'r, FormItems.AccountNumberNew'
      'FROM         Forms INNER JOIN'
      
        '                      FormTypes ON Forms.FormType = FormTypes.Fo' +
        'rmType RIGHT OUTER JOIN'
      
        '                      ReciptOnFormsRange ON Forms.FormID = Recip' +
        'tOnFormsRange.FormID LEFT OUTER JOIN'
      
        '                      FormItems ON Forms.FormID = FormItems.Form' +
        'ID'
      'WHERE     (ReciptOnFormsRange.ReciptID = :ReciptID)'
      'and ( ReciptOnFormsRange.YearID = :YearID )'
      'and ( ReciptOnFormsRange.ServerID = :ServerID )'
      ''
      ' ')
    Left = 814
    Top = 16
  end
  object DBPipFormsRange: TppDBPipeline
    DataSource = srcReciptOnFormsRange
    OpenDataSource = False
    UserName = 'DBPipFormsRange'
    Left = 504
    Top = 258
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
  object srcReciptOnFormsRange: TDataSource
    DataSet = qryReciptOnFormsRange
    Left = 586
    Top = 261
  end
  object qryCustomer2Detail: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT  DISTINCT    CustID, CustName, Address, Tel, PostalCode,'
      
        '    EconomicNumber, Fax, ValuationType, MaxCredit, CustomerActiv' +
        'e'
      'FROM Vu_CustomersGroups')
    Left = 435
    Top = 218
  end
  object qry_Lookup: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     LookUpID,Name'
      'FROM         LookUps'
      'WHERE(Kind=15)')
    Left = 327
    Top = 156
  end
  object qry_Deficits4PrintID10: TADOQuery
    Connection = DMF.adcBSell
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
      
        'SELECT     Deficits.DeficitName, ReciptsDeficits.DeficitAdd - Re' +
        'ciptsDeficits.DeficitDec AS Deficit_Add_Dec'
      'FROM         Deficits INNER JOIN'
      
        '                      ReciptsDeficits ON Deficits.DeficitID = Re' +
        'ciptsDeficits.DeficitID'
      
        'WHERE     (ReciptsDeficits.ReciptID = :ReciptID ) and (Deficits.' +
        'DeficitID>10)'
      'and ( YearID = :YearID )'
      'and ( ServerID = :ServerID )')
    Left = 662
    Top = 401
  end
  object srcDeficits4PrintID10: TDataSource
    DataSet = qry_Deficits4PrintID10
    Left = 679
    Top = 244
  end
  object ppPiplneDeficits4PrintID10: TppDBPipeline
    DataSource = srcDeficits4PrintID10
    OpenDataSource = False
    UserName = 'PiplneDeficits4PrintID10'
    Left = 417
    Top = 379
    MasterDataPipelineName = 'ppDBPipeline1'
    object ppPiplneDeficits4PrintID10ppField1: TppField
      FieldAlias = 'DeficitName'
      FieldName = 'DeficitName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppPiplneDeficits4PrintID10ppField2: TppField
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
  object MenSellPrice: TPopupMenu
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    Left = 240
    Top = 369
    object MenuItem3: TMenuItem
      Caption = #1575#1606#1578#1582#1575#1576' '#1602#1610#1605#1578' '#1601#1585#1608#1588
    end
    object mnuSp1: TMenuItem
      OnClick = A_l_l_SP__ClickClick
    end
    object mnuSp2: TMenuItem
      OnClick = A_l_l_SP__ClickClick
    end
    object mnuSp3: TMenuItem
      OnClick = A_l_l_SP__ClickClick
    end
    object mnuSp4: TMenuItem
      OnClick = A_l_l_SP__ClickClick
    end
    object A_l_l_SP__Click: TMenuItem
      Caption = 'A_l_l_SP__Click'
      Visible = False
      OnClick = A_l_l_SP__ClickClick
    end
  end
  object ppReportBarcode: TppReport
    AutoStop = False
    Columns = 5
    ColumnPositions.Strings = (
      '5000'
      '41000'
      '77000'
      '113000'
      '149000')
    DataPipeline = PiplnBarcode
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.Collation = False
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 4000
    PrinterSetup.mmMarginRight = 4000
    PrinterSetup.mmMarginTop = 1000
    PrinterSetup.mmPaperHeight = 257000
    PrinterSetup.mmPaperWidth = 190000
    PrinterSetup.PaperSize = 256
    Template.FileName = 'D:\Projects\Fara\BSell\Exe\Report\Barcode.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
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
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 48
    Top = 402
    Version = '18.0'
    mmColumnWidth = 36000
    DataPipelineName = 'PiplnBarcode'
    object pclmnhdrbnd1: TppColumnHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object pdtlbndBarcodeppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintCount = 15
      mmBottomOffset = 0
      mmHeight = 16933
      mmPrintPosition = 0
      object pdbtxt1: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText1'
        AutoSize = True
        DataField = 'c_StuffName'
        DataPipeline = PiplnBarcode
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'PiplnBarcode'
        mmHeight = 4699
        mmLeft = 10541
        mmTop = 0
        mmWidth = 14901
        BandType = 4
        LayerName = Foreground2
      end
      object pdbrcd1: TppDBBarCode
        DesignLayer = ppDesignLayer4
        UserName = 'pdbrcd1'
        AlignBarCode = ahLeft
        BarCodeType = bcCode39
        BarColor = clWindowText
        CalcCheckDigit = False
        DataField = 'StuffCode'
        DataPipeline = PiplnBarcode
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PiplnBarcode'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 3704
        mmWidth = 28575
        BandType = 4
        LayerName = Foreground2
        mmBarWidth = 254
        mmWideBarRatio = 50800
      end
      object pdbtxt2: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'pdbtxt2'
        AutoSize = True
        BlankWhenZero = True
        DataField = 'UnitSellPrice'
        DataPipeline = PiplnBarcode
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PiplnBarcode'
        mmHeight = 5165
        mmLeft = 4233
        mmTop = 10498
        mmWidth = 14986
        BandType = 4
        LayerName = Foreground2
      end
      object plbl2: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label2'
        OnGetText = ppLblBarCodeGetText
        Caption = #1588#1585#1603#1578' '#1601#1585#1575#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Titr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4614
        mmLeft = 17494
        mmTop = 10848
        mmWidth = 15579
        BandType = 4
        LayerName = Foreground2
      end
      object plbl3: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label4'
        OnGetText = ppLblBarCodeGetText
        Caption = #1603#1575#1604#1575':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 5821
        mmLeft = 29369
        mmTop = 0
        mmWidth = 5027
        BandType = 4
        LayerName = Foreground2
      end
      object plbl4: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label3'
        OnGetText = ppLblBarCodeGetText
        Caption = '66591153'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5165
        mmLeft = 22310
        mmTop = 13229
        mmWidth = 10499
        BandType = 4
        LayerName = Foreground2
      end
      object plbl1: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label1'
        OnGetText = ppLblBarCodeGetText
        Caption = #1585#1610#1575#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4699
        mmLeft = 889
        mmTop = 10848
        mmWidth = 3725
        BandType = 4
        LayerName = Foreground2
      end
      object pdbtxt3: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText2'
        DataField = 'StuffCode'
        DataPipeline = PiplnBarcode
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PiplnBarcode'
        mmHeight = 5292
        mmLeft = 0
        mmTop = 13229
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground2
      end
    end
    object pclmnftrbnd1: TppColumnFooterBand
      AlignToBottom = True
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDesignLayers3: TppDesignLayers
      object ppDesignLayer4: TppDesignLayer
        UserName = 'Foreground2'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object cliBarcode: TClientDataSet
    Aggregates = <>
    FileName = 'cliBarcode'
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 68
    Top = 205
    object cliBarcodeReciptItemID: TIntegerField
      FieldName = 'ReciptItemID'
    end
    object cliBarcode_radif: TIntegerField
      FieldName = '_radif'
    end
    object cliBarcodeReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object cliBarcodeStuffSize: TStringField
      FieldName = 'StuffSize'
      FixedChar = True
      Size = 12
    end
    object cliBarcodeStuffAlloy: TStringField
      FieldName = 'StuffAlloy'
      Size = 12
    end
    object cliBarcodeInputEntity: TFloatField
      FieldName = 'InputEntity'
    end
    object cliBarcodeOutputEntity: TFloatField
      FieldName = 'OutputEntity'
    end
    object cliBarcodeInputWeight: TFloatField
      FieldName = 'InputWeight'
    end
    object cliBarcodeOutputWeight: TFloatField
      FieldName = 'OutputWeight'
    end
    object cliBarcodeRequestedEntity: TFloatField
      FieldName = 'RequestedEntity'
    end
    object cliBarcodeRequestedWeight: TFloatField
      FieldName = 'RequestedWeight'
    end
    object cliBarcodeStuffGrade: TSmallintField
      FieldName = 'StuffGrade'
    end
    object cliBarcodeTotalInputPrice: TBCDField
      FieldName = 'TotalInputPrice'
      Precision = 19
    end
    object cliBarcodeTotalOutputPrice: TBCDField
      FieldName = 'TotalOutputPrice'
      Precision = 19
    end
    object cliBarcodeTotallSellPrice: TBCDField
      FieldName = 'TotallSellPrice'
      Precision = 19
    end
    object cliBarcodeUnitSellPrice: TFMTBCDField
      FieldName = 'UnitSellPrice'
      Precision = 19
    end
    object cliBarcodeItemNote: TStringField
      FieldName = 'ItemNote'
      Size = 1500
    end
    object cliBarcode_StuffName: TStringField
      FieldName = '_StuffName'
      Size = 100
    end
    object cliBarcode_UnitName: TStringField
      FieldName = '_UnitName'
      Size = 100
    end
    object cliBarcode_StuffTecInfo: TStringField
      FieldName = '_StuffTecInfo'
      Size = 100
    end
    object cliBarcodeacc_TopicCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576
      FieldName = 'acc_TopicCode'
    end
    object cliBarcodeacc_DetailCode: TStringField
      FieldName = 'acc_DetailCode'
      Size = 12
    end
    object cliBarcodeacc_CTopicCode: TStringField
      FieldName = 'acc_CTopicCode'
      Size = 12
    end
    object cliBarcodeUseUnitID: TIntegerField
      FieldName = 'UseUnitID'
    end
    object cliBarcode_UseUnitName: TStringField
      FieldName = '_UseUnitName'
      Size = 100
    end
    object cliBarcodepreReciptItemID: TIntegerField
      FieldName = 'preReciptItemID'
    end
    object cliBarcodeStuffDiameter: TFloatField
      FieldName = 'StuffDiameter'
    end
    object cliBarcodeControlCode: TLargeintField
      FieldName = 'ControlCode'
    end
    object cliBarcodeacc_CTopicCode2: TStringField
      FieldName = 'acc_CTopicCode2'
      Size = 12
    end
    object cliBarcodeAidNumber: TStringField
      FieldName = 'AidNumber'
      Size = 40
    end
    object cliBarcodeAidDate: TStringField
      FieldName = 'AidDate'
      FixedChar = True
      Size = 10
    end
    object cliBarcodeDiscount: TIntegerField
      FieldName = 'Discount'
    end
    object cliBarcodePersonID1: TIntegerField
      FieldName = 'PersonID1'
    end
    object cliBarcode_PersonName1: TStringField
      FieldName = '_PersonName1'
      Size = 250
    end
    object cliBarcodeProductCode: TLargeintField
      FieldName = 'ProductCode'
    end
    object cliBarcodeProductModel: TIntegerField
      FieldName = 'ProductModel'
    end
    object cliBarcode_ProductModelName: TStringField
      FieldName = '_ProductModelName'
      Size = 255
    end
    object cliBarcodeItemDate: TStringField
      FieldName = 'ItemDate'
      FixedChar = True
      Size = 10
    end
    object cliBarcodeFirstUser: TStringField
      FieldName = 'FirstUser'
      Size = 50
    end
    object cliBarcodeLastUser: TStringField
      FieldName = 'LastUser'
      Size = 50
    end
    object cliBarcodeWaterCo: TFloatField
      FieldName = 'WaterCo'
    end
    object cliBarcodeDeficitValue: TBCDField
      FieldName = 'DeficitValue'
      Precision = 19
    end
    object cliBarcodeAuxiliary: TFloatField
      FieldName = 'Auxiliary'
    end
    object cliBarcodeMachineWeight: TFloatField
      FieldName = 'MachineWeight'
    end
    object cliBarcodeMachineNo: TStringField
      FieldName = 'MachineNo'
      Size = 25
    end
    object cliBarcodeMachineName: TStringField
      FieldName = 'MachineName'
      Size = 50
    end
    object cliBarcodeMachineFullWeight: TFloatField
      FieldName = 'MachineFullWeight'
    end
    object cliBarcode_Tabageh: TStringField
      FieldName = '_Tabageh'
      Size = 25
    end
    object cliBarcode_Nevisandeh: TStringField
      FieldName = '_Nevisandeh'
      Size = 100
    end
    object cliBarcode_PakhashCompany: TStringField
      FieldName = '_PakhashCompany'
      Size = 100
    end
    object cliBarcode_Motarjem: TStringField
      FieldName = '_Motarjem'
      Size = 100
    end
    object cliBarcode_ChapYear: TStringField
      FieldName = '_ChapYear'
      Size = 10
    end
    object cliBarcode_gateKetab: TStringField
      FieldName = '_gateKetab'
      Size = 50
    end
    object cliBarcode_NoeJeld: TStringField
      FieldName = '_NoeJeld'
      Size = 50
    end
    object cliBarcode_moalef: TStringField
      FieldName = '_moalef'
      Size = 50
    end
    object cliBarcodeArzAmount: TFloatField
      FieldName = 'ArzAmount'
    end
    object cliBarcodeStandardRate: TBCDField
      FieldName = 'StandardRate'
      Precision = 19
    end
    object cliBarcodeInvEntity: TFloatField
      FieldName = 'InvEntity'
    end
    object cliBarcodeInvWeight: TFloatField
      FieldName = 'InvWeight'
    end
    object cliBarcodeSecondTypeItem: TIntegerField
      FieldName = 'SecondTypeItem'
    end
    object cliBarcode_Carton: TFloatField
      FieldName = '_Carton'
    end
    object cliBarcodePakhshCompany: TStringField
      FieldName = 'PakhshCompany'
      Size = 50
    end
    object cliBarcodeReq_InvEntity: TFloatField
      FieldName = 'Req_InvEntity'
    end
    object cliBarcodec_StuffName: TStringField
      FieldName = 'c_StuffName'
      Size = 150
    end
    object cliBarcodeUnitSellPrice3: TFloatField
      FieldName = 'UnitSellPrice3'
    end
    object cliBarcode_UnitPriceUseKind: TIntegerField
      FieldName = '_UnitPriceUseKind'
    end
    object cliBarcode_SellPrice_S: TCurrencyField
      FieldName = '_SellPrice_S'
    end
    object cliBarcode_c_KeepPlace: TStringField
      FieldName = '_c_KeepPlace'
      Size = 50
    end
    object cliBarcodeTotalWeight: TFloatField
      FieldName = 'TotalWeight'
    end
    object cliBarcode____StuffTecInfo: TStringField
      FieldName = '____StuffTecInfo'
      Size = 150
    end
    object cliBarcodeAcceptEntity: TFloatField
      FieldName = 'AcceptEntity'
    end
    object cliBarcodeRollbackEntity: TFloatField
      FieldName = 'RollbackEntity'
    end
    object cliBarcodeAcceptWeight: TFloatField
      FieldName = 'AcceptWeight'
    end
    object cliBarcodeRollbackWeight: TFloatField
      FieldName = 'RollbackWeight'
    end
    object cliBarcode_StuffpublicPercent: TFloatField
      FieldName = '_StuffpublicPercent'
    end
    object cliBarcodeServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object cliBarcodeYearID: TIntegerField
      FieldName = 'YearID'
    end
    object cliBarcode_StuffNote: TStringField
      FieldName = '_StuffNote'
      Size = 300
    end
    object cliBarcodeSyntheticCode: TStringField
      FieldName = 'SyntheticCode'
      Size = 37
    end
    object cliBarcodeTotalStandardRate: TBCDField
      FieldName = 'TotalStandardRate'
      Precision = 19
    end
    object cliBarcodeTotalDeficient: TBCDField
      FieldName = 'TotalDeficient'
      ReadOnly = True
      Precision = 19
    end
    object cliBarcodeUnitSellPriceWeight: TFloatField
      FieldName = 'UnitSellPriceWeight'
      ReadOnly = True
    end
    object cliBarcodeStuffCode: TLargeintField
      FieldName = 'StuffCode'
    end
    object cliBarcode_SD1: TStringField
      FieldName = '_SD1'
      Size = 60
    end
    object cliBarcode_SD2: TStringField
      FieldName = '_SD2'
      Size = 60
    end
    object cliBarcode_SD3: TStringField
      FieldName = '_SD3'
      Size = 60
    end
    object cliBarcode_SD4: TStringField
      FieldName = '_SD4'
      Size = 60
    end
    object cliBarcode_SD5: TStringField
      FieldName = '_SD5'
      Size = 60
    end
    object cliBarcode_SD6: TStringField
      FieldName = '_SD6'
      Size = 60
    end
    object cliBarcode_SD7: TStringField
      FieldName = '_SD7'
      Size = 60
    end
    object cliBarcode_SD8: TStringField
      FieldName = '_SD8'
      Size = 60
    end
    object cliBarcode_SD9: TStringField
      FieldName = '_SD9'
      Size = 60
    end
    object cliBarcode_ST1: TStringField
      FieldName = '_ST1'
      Size = 150
    end
    object cliBarcode_ST2: TStringField
      FieldName = '_ST2'
      Size = 150
    end
    object cliBarcode_ST3: TStringField
      FieldName = '_ST3'
      Size = 150
    end
    object cliBarcode_ST4: TStringField
      FieldName = '_ST4'
      Size = 150
    end
    object cliBarcode_ST5: TStringField
      FieldName = '_ST5'
      Size = 150
    end
    object cliBarcode_ST6: TStringField
      FieldName = '_ST6'
      Size = 150
    end
    object cliBarcode_ST7: TStringField
      FieldName = '_ST7'
      Size = 150
    end
    object cliBarcode_ST8: TStringField
      FieldName = '_ST8'
      Size = 150
    end
    object cliBarcode_ST9: TStringField
      FieldName = '_ST9'
      Size = 150
    end
    object cliBarcode_ST10: TStringField
      FieldName = '_ST10'
      Size = 150
    end
    object cliBarcode_ST11: TStringField
      FieldName = '_ST11'
      Size = 150
    end
    object cliBarcode_ST12: TStringField
      FieldName = '_ST12'
      Size = 150
    end
    object cliBarcode_ST13: TStringField
      FieldName = '_ST13'
      Size = 150
    end
    object cliBarcode_ST14: TStringField
      FieldName = '_ST14'
      Size = 150
    end
    object cliBarcode_ST15: TStringField
      FieldName = '_ST15'
      Size = 150
    end
  end
  object PiplnBarcode: TppDBPipeline
    DataSource = srcBarcode
    OpenDataSource = False
    UserName = 'PiplnBarcode'
    Left = 45
    Top = 346
    object PiplnBarcodeppField1: TppField
      FieldAlias = 'ReciptItemID'
      FieldName = 'ReciptItemID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField2: TppField
      FieldAlias = '_radif'
      FieldName = '_radif'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField3: TppField
      FieldAlias = 'ReciptID'
      FieldName = 'ReciptID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField4: TppField
      FieldAlias = 'StuffSize'
      FieldName = 'StuffSize'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField5: TppField
      FieldAlias = 'StuffAlloy'
      FieldName = 'StuffAlloy'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField6: TppField
      FieldAlias = 'InputEntity'
      FieldName = 'InputEntity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField7: TppField
      FieldAlias = 'OutputEntity'
      FieldName = 'OutputEntity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField8: TppField
      FieldAlias = 'InputWeight'
      FieldName = 'InputWeight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField9: TppField
      FieldAlias = 'OutputWeight'
      FieldName = 'OutputWeight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField10: TppField
      FieldAlias = 'RequestedEntity'
      FieldName = 'RequestedEntity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField11: TppField
      FieldAlias = 'RequestedWeight'
      FieldName = 'RequestedWeight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField12: TppField
      FieldAlias = 'StuffGrade'
      FieldName = 'StuffGrade'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField13: TppField
      FieldAlias = 'TotalInputPrice'
      FieldName = 'TotalInputPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField14: TppField
      FieldAlias = 'TotalOutputPrice'
      FieldName = 'TotalOutputPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField15: TppField
      FieldAlias = 'TotallSellPrice'
      FieldName = 'TotallSellPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField16: TppField
      FieldAlias = 'UnitSellPrice'
      FieldName = 'UnitSellPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField17: TppField
      FieldAlias = 'ItemNote'
      FieldName = 'ItemNote'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField18: TppField
      FieldAlias = '_StuffName'
      FieldName = '_StuffName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField19: TppField
      FieldAlias = '_UnitName'
      FieldName = '_UnitName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField20: TppField
      FieldAlias = '_StuffTecInfo'
      FieldName = '_StuffTecInfo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField21: TppField
      FieldAlias = 'acc_TopicCode'
      FieldName = 'acc_TopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField22: TppField
      FieldAlias = 'acc_DetailCode'
      FieldName = 'acc_DetailCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField23: TppField
      FieldAlias = 'acc_CTopicCode'
      FieldName = 'acc_CTopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField24: TppField
      FieldAlias = 'UseUnitID'
      FieldName = 'UseUnitID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField25: TppField
      FieldAlias = '_UseUnitName'
      FieldName = '_UseUnitName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField26: TppField
      FieldAlias = 'preReciptItemID'
      FieldName = 'preReciptItemID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField27: TppField
      FieldAlias = 'StuffDiameter'
      FieldName = 'StuffDiameter'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField28: TppField
      FieldAlias = 'ControlCode'
      FieldName = 'ControlCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField29: TppField
      FieldAlias = 'acc_CTopicCode2'
      FieldName = 'acc_CTopicCode2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField30: TppField
      FieldAlias = 'AidNumber'
      FieldName = 'AidNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField31: TppField
      FieldAlias = 'AidDate'
      FieldName = 'AidDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField32: TppField
      FieldAlias = 'Discount'
      FieldName = 'Discount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField33: TppField
      FieldAlias = 'PersonID1'
      FieldName = 'PersonID1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField34: TppField
      FieldAlias = '_PersonName1'
      FieldName = '_PersonName1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField35: TppField
      FieldAlias = 'ProductCode'
      FieldName = 'ProductCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField36: TppField
      FieldAlias = 'ProductModel'
      FieldName = 'ProductModel'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField37: TppField
      FieldAlias = '_ProductModelName'
      FieldName = '_ProductModelName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField38: TppField
      FieldAlias = 'ItemDate'
      FieldName = 'ItemDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField39: TppField
      FieldAlias = 'FirstUser'
      FieldName = 'FirstUser'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField40: TppField
      FieldAlias = 'LastUser'
      FieldName = 'LastUser'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField41: TppField
      FieldAlias = 'WaterCo'
      FieldName = 'WaterCo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField42: TppField
      FieldAlias = 'DeficitValue'
      FieldName = 'DeficitValue'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField43: TppField
      FieldAlias = 'Auxiliary'
      FieldName = 'Auxiliary'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField44: TppField
      FieldAlias = 'MachineWeight'
      FieldName = 'MachineWeight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField45: TppField
      FieldAlias = 'MachineNo'
      FieldName = 'MachineNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField46: TppField
      FieldAlias = 'MachineName'
      FieldName = 'MachineName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField47: TppField
      FieldAlias = 'MachineFullWeight'
      FieldName = 'MachineFullWeight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField48: TppField
      FieldAlias = '_Tabageh'
      FieldName = '_Tabageh'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField49: TppField
      FieldAlias = '_Nevisandeh'
      FieldName = '_Nevisandeh'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField50: TppField
      FieldAlias = '_PakhashCompany'
      FieldName = '_PakhashCompany'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 49
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField51: TppField
      FieldAlias = '_Motarjem'
      FieldName = '_Motarjem'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 50
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField52: TppField
      FieldAlias = '_ChapYear'
      FieldName = '_ChapYear'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 51
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField53: TppField
      FieldAlias = '_gateKetab'
      FieldName = '_gateKetab'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 52
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField54: TppField
      FieldAlias = '_NoeJeld'
      FieldName = '_NoeJeld'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 53
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField55: TppField
      FieldAlias = '_moalef'
      FieldName = '_moalef'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 54
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField56: TppField
      FieldAlias = 'ArzAmount'
      FieldName = 'ArzAmount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 55
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField57: TppField
      FieldAlias = 'StandardRate'
      FieldName = 'StandardRate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 56
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField58: TppField
      FieldAlias = 'InvEntity'
      FieldName = 'InvEntity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 57
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField59: TppField
      FieldAlias = 'InvWeight'
      FieldName = 'InvWeight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 58
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField60: TppField
      FieldAlias = 'SecondTypeItem'
      FieldName = 'SecondTypeItem'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 59
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField61: TppField
      FieldAlias = '_Carton'
      FieldName = '_Carton'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 60
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField62: TppField
      FieldAlias = 'PakhshCompany'
      FieldName = 'PakhshCompany'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 61
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField63: TppField
      FieldAlias = 'Req_InvEntity'
      FieldName = 'Req_InvEntity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 62
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField64: TppField
      FieldAlias = 'c_StuffName'
      FieldName = 'c_StuffName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 63
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField65: TppField
      FieldAlias = 'UnitSellPrice3'
      FieldName = 'UnitSellPrice3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 64
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField66: TppField
      FieldAlias = '_UnitPriceUseKind'
      FieldName = '_UnitPriceUseKind'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 65
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField67: TppField
      FieldAlias = '_SellPrice_S'
      FieldName = '_SellPrice_S'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 66
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField68: TppField
      FieldAlias = '_c_KeepPlace'
      FieldName = '_c_KeepPlace'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 67
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField69: TppField
      FieldAlias = 'TotalWeight'
      FieldName = 'TotalWeight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 68
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField70: TppField
      FieldAlias = '____StuffTecInfo'
      FieldName = '____StuffTecInfo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 69
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField71: TppField
      FieldAlias = 'AcceptEntity'
      FieldName = 'AcceptEntity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 70
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField72: TppField
      FieldAlias = 'RollbackEntity'
      FieldName = 'RollbackEntity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 71
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField73: TppField
      FieldAlias = 'AcceptWeight'
      FieldName = 'AcceptWeight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 72
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField74: TppField
      FieldAlias = 'RollbackWeight'
      FieldName = 'RollbackWeight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 73
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField75: TppField
      FieldAlias = '_StuffpublicPercent'
      FieldName = '_StuffpublicPercent'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 74
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField76: TppField
      FieldAlias = 'ServerID'
      FieldName = 'ServerID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 75
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField77: TppField
      FieldAlias = 'YearID'
      FieldName = 'YearID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 76
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField78: TppField
      FieldAlias = '_StuffNote'
      FieldName = '_StuffNote'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 77
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField79: TppField
      FieldAlias = 'SyntheticCode'
      FieldName = 'SyntheticCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 78
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField80: TppField
      FieldAlias = 'TotalStandardRate'
      FieldName = 'TotalStandardRate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 79
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField81: TppField
      FieldAlias = 'TotalDeficient'
      FieldName = 'TotalDeficient'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 80
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField82: TppField
      FieldAlias = 'UnitSellPriceWeight'
      FieldName = 'UnitSellPriceWeight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 81
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField83: TppField
      FieldAlias = 'StuffCode'
      FieldName = 'StuffCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 82
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField84: TppField
      FieldAlias = '_SD1'
      FieldName = '_SD1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 83
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField85: TppField
      FieldAlias = '_SD2'
      FieldName = '_SD2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 84
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField86: TppField
      FieldAlias = '_SD3'
      FieldName = '_SD3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 85
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField87: TppField
      FieldAlias = '_SD4'
      FieldName = '_SD4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 86
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField88: TppField
      FieldAlias = '_SD5'
      FieldName = '_SD5'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 87
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField89: TppField
      FieldAlias = '_SD6'
      FieldName = '_SD6'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 88
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField90: TppField
      FieldAlias = '_SD7'
      FieldName = '_SD7'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 89
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField91: TppField
      FieldAlias = '_SD8'
      FieldName = '_SD8'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 90
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField92: TppField
      FieldAlias = '_SD9'
      FieldName = '_SD9'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 91
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField93: TppField
      FieldAlias = '_ST1'
      FieldName = '_ST1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 92
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField94: TppField
      FieldAlias = '_ST2'
      FieldName = '_ST2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 93
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField95: TppField
      FieldAlias = '_ST3'
      FieldName = '_ST3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 94
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField96: TppField
      FieldAlias = '_ST4'
      FieldName = '_ST4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 95
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField97: TppField
      FieldAlias = '_ST5'
      FieldName = '_ST5'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 96
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField98: TppField
      FieldAlias = '_ST6'
      FieldName = '_ST6'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 97
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField99: TppField
      FieldAlias = '_ST7'
      FieldName = '_ST7'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 98
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField100: TppField
      FieldAlias = '_ST8'
      FieldName = '_ST8'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 99
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField101: TppField
      FieldAlias = '_ST9'
      FieldName = '_ST9'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 100
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField102: TppField
      FieldAlias = '_ST10'
      FieldName = '_ST10'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 101
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField103: TppField
      FieldAlias = '_ST11'
      FieldName = '_ST11'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 102
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField104: TppField
      FieldAlias = '_ST12'
      FieldName = '_ST12'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 103
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField105: TppField
      FieldAlias = '_ST13'
      FieldName = '_ST13'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 104
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField106: TppField
      FieldAlias = '_ST14'
      FieldName = '_ST14'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 105
      Searchable = False
      Sortable = False
    end
    object PiplnBarcodeppField107: TppField
      FieldAlias = '_ST15'
      FieldName = '_ST15'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 106
      Searchable = False
      Sortable = False
    end
  end
  object srcBarcode: TDataSource
    DataSet = cliBarcode
    Left = 163
    Top = 171
  end
  object qryAllRecipts: TADOQuery
    Connection = DMF.adcBSell
    LockType = ltBatchOptimistic
    AfterScroll = qryAllReciptsAfterScroll
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
      end
      item
        Name = 'ReciptNumberFrom'
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
        Value = 2147483647
      end
      item
        Name = 'StoreIDFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = -32767
      end
      item
        Name = 'StoreIDTo'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 32767
      end
      item
        Name = 'PersonID1From'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = -2147483646
      end
      item
        Name = 'PersonID1To'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 2147483647
      end
      item
        Name = 'UserAdmin'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'UserID'
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
        Value = '0000/00/00'
      end
      item
        Name = 'ReciptDateTo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '9999/99/99'
      end>
    SQL.Strings = (
      
        'SELECT        ReciptID, YearID, ServerID, StoreID, PersonID1, Pe' +
        'rsonID2, PersonID3, PersonID4'
      ''
      'FROM            Recipts'
      ''
      'WHERE     (ReciptType = :ReciptType)'
      'and ( YearID = :YearID )'
      
        'And   ( ReciptNumber  BetWeen :ReciptNumberFrom and :ReciptNumbe' +
        'rTo )  '
      'And   ( StoreID  BetWeen :StoreIDFrom and :StoreIDTo )'
      'And   ( PersonID1  BetWeen :PersonID1From and :PersonID1To )'
      
        'AND (dbo.ChkUsersCustomersGroups( :UserAdmin , :UserID , Recipts' +
        '.PersonID1) = 1)'
      'AND ( ReciptDate  BetWeen :ReciptDateFrom and :ReciptDateTo )')
    Left = 531
    Top = 98
  end
  object dsAllRecipts: TDataSource
    DataSet = qryAllRecipts
    Left = 658
    Top = 116
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = qryItems
    Left = 104
    Top = 317
  end
  object qryUseOthers4Print: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'UseOtherID'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     UseOthers.Code, UseOthers.Rate, UseOthers.Addres, Use' +
        'Others.Tel1, UseOthers.Tel2, LookUps.Name, Customers.CustName, '
      '                      UseOthers.HealthNumber, UseOthers.UseNote'
      ''
      'FROM         UseOthers LEFT OUTER JOIN'
      
        '                      LookUps ON UseOthers.LookUpID = LookUps.Lo' +
        'okUpID LEFT OUTER JOIN'
      
        '                      Customers ON UseOthers.CustID = Customers.' +
        'CustID'
      'WHERE     ( UseOthers.UseOtherID = :UseOtherID )')
    Left = 550
    Top = 393
  end
  object pdbplnUseOthers4Print: TppDBPipeline
    DataSource = SrcUseOthers4Print
    OpenDataSource = False
    UserName = 'pdbplnUseOthers4Print'
    Left = 553
    Top = 459
    MasterDataPipelineName = 'ppDBPipeline1'
    object pdbplnUseOthers4PrintppField1: TppField
      FieldAlias = 'Code'
      FieldName = 'Code'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object pdbplnUseOthers4PrintppField2: TppField
      FieldAlias = 'Rate'
      FieldName = 'Rate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object pdbplnUseOthers4PrintppField3: TppField
      FieldAlias = 'Addres'
      FieldName = 'Addres'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object pdbplnUseOthers4PrintppField4: TppField
      FieldAlias = 'Tel1'
      FieldName = 'Tel1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object pdbplnUseOthers4PrintppField5: TppField
      FieldAlias = 'Tel2'
      FieldName = 'Tel2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object pdbplnUseOthers4PrintppField6: TppField
      FieldAlias = 'Name'
      FieldName = 'Name'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object pdbplnUseOthers4PrintppField7: TppField
      FieldAlias = 'CustName'
      FieldName = 'CustName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object pdbplnUseOthers4PrintppField8: TppField
      FieldAlias = 'HealthNumber'
      FieldName = 'HealthNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object pdbplnUseOthers4PrintppField9: TppField
      FieldAlias = 'UseNote'
      FieldName = 'UseNote'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
  end
  object SrcUseOthers4Print: TDataSource
    DataSet = qryUseOthers4Print
    Left = 652
    Top = 465
  end
  object qryReciptsPayments: TADOQuery
    Connection = DMF.adcBSell
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
      
        'SELECT        ReciptsPayments.ReciptsPaymentID, ReciptsPayments.' +
        'ReciptID, ReciptsPayments.ServerID, ReciptsPayments.YearID, Reci' +
        'ptsPayments.CustID, '
      
        '                         ReciptsPayments.Payment, ReciptsPayment' +
        's.Note, Customers.CustName'
      'FROM            ReciptsPayments INNER JOIN'
      
        '                         Customers ON ReciptsPayments.CustID = C' +
        'ustomers.CustID'
      
        'WHERE        (ReciptsPayments.ReciptID = :ReciptID ) AND (Recipt' +
        'sPayments.YearID = :YearID  ) AND (ReciptsPayments.ServerID = :S' +
        'erverID  )')
    Left = 272
    Top = 137
    object qryReciptsPaymentsCustID: TIntegerField
      FieldName = 'CustID'
    end
    object qryReciptsPaymentsCustName: TStringField
      FieldName = 'CustName'
      Size = 255
    end
    object qryReciptsPaymentsPayment: TBCDField
      FieldName = 'Payment'
      Precision = 19
    end
    object qryReciptsPaymentsNote: TStringField
      FieldName = 'Note'
      Size = 100
    end
  end
  object srcReciptsPayments: TDataSource
    AutoEdit = False
    DataSet = qryReciptsPayments
    Left = 176
    Top = 320
  end
  object pdbReciptsPayments: TppDBPipeline
    DataSource = srcReciptsPayments
    OpenDataSource = False
    UserName = 'pdbReciptsPayments'
    Left = 169
    Top = 219
    object pdbReciptsPaymentsppField1: TppField
      FieldAlias = 'CustID'
      FieldName = 'CustID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object pdbReciptsPaymentsppField2: TppField
      FieldAlias = 'CustName'
      FieldName = 'CustName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object pdbReciptsPaymentsppField3: TppField
      FieldAlias = 'Payment'
      FieldName = 'Payment'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object pdbReciptsPaymentsppField4: TppField
      FieldAlias = 'Note'
      FieldName = 'Note'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
  end
  object plnTransFormItems: TppDBPipeline
    DataSource = srcTransFormItems
    OpenDataSource = False
    UserName = 'plnTransFormItems'
    Left = 413
    Top = 458
    MasterDataPipelineName = 'ppDBPipeline1'
    object plnTransFormItemsppField1: TppField
      FieldAlias = 'EntityCalc'
      FieldName = 'EntityCalc'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object plnTransFormItemsppField2: TppField
      FieldAlias = 'WeightCalc'
      FieldName = 'WeightCalc'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object plnTransFormItemsppField3: TppField
      FieldAlias = 'c_StuffName'
      FieldName = 'c_StuffName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object plnTransFormItemsppField4: TppField
      FieldAlias = 'TransFormID'
      FieldName = 'TransFormID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object plnTransFormItemsppField5: TppField
      FieldAlias = 'TransFormNo'
      FieldName = 'TransFormNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object plnTransFormItemsppField6: TppField
      FieldAlias = 'TransFormDate'
      FieldName = 'TransFormDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object plnTransFormItemsppField7: TppField
      FieldAlias = 'StuffCode'
      FieldName = 'StuffCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object plnTransFormItemsppField8: TppField
      FieldAlias = 'Entity'
      FieldName = 'Entity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object plnTransFormItemsppField9: TppField
      FieldAlias = 'Weight'
      FieldName = 'Weight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object plnTransFormItemsppField10: TppField
      FieldAlias = 'Note'
      FieldName = 'Note'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object plnTransFormItemsppField11: TppField
      FieldAlias = 'ControlCode'
      FieldName = 'ControlCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object plnTransFormItemsppField12: TppField
      FieldAlias = 'StuffModel'
      FieldName = 'StuffModel'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object plnTransFormItemsppField13: TppField
      FieldAlias = 'EarthGrpID'
      FieldName = 'EarthGrpID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object plnTransFormItemsppField14: TppField
      FieldAlias = 'EarthCost'
      FieldName = 'EarthCost'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object plnTransFormItemsppField15: TppField
      FieldAlias = 'CycleMonth'
      FieldName = 'CycleMonth'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object plnTransFormItemsppField16: TppField
      FieldAlias = 'TransFormState'
      FieldName = 'TransFormState'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object plnTransFormItemsppField17: TppField
      FieldAlias = 'ID'
      FieldName = 'ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object plnTransFormItemsppField18: TppField
      FieldAlias = 'TransFormID_1'
      FieldName = 'TransFormID_1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object plnTransFormItemsppField19: TppField
      FieldAlias = 'StuffCode_1'
      FieldName = 'StuffCode_1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object plnTransFormItemsppField20: TppField
      FieldAlias = 'Entity_1'
      FieldName = 'Entity_1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object plnTransFormItemsppField21: TppField
      FieldAlias = 'Weight_1'
      FieldName = 'Weight_1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object plnTransFormItemsppField22: TppField
      FieldAlias = 'PortionPercent'
      FieldName = 'PortionPercent'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object plnTransFormItemsppField23: TppField
      FieldAlias = 'CulchEntity'
      FieldName = 'CulchEntity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object plnTransFormItemsppField24: TppField
      FieldAlias = 'CulchWeight'
      FieldName = 'CulchWeight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object plnTransFormItemsppField25: TppField
      FieldAlias = 'StanRate'
      FieldName = 'StanRate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object plnTransFormItemsppField26: TppField
      FieldAlias = 'ScheduleID'
      FieldName = 'ScheduleID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object plnTransFormItemsppField27: TppField
      FieldAlias = 'StuffPersent'
      FieldName = 'StuffPersent'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object plnTransFormItemsppField28: TppField
      FieldAlias = 'StuffPersentRate'
      FieldName = 'StuffPersentRate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object plnTransFormItemsppField29: TppField
      FieldAlias = 'InfoType'
      FieldName = 'InfoType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object plnTransFormItemsppField30: TppField
      FieldAlias = 'CycleMonth_1'
      FieldName = 'CycleMonth_1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object plnTransFormItemsppField31: TppField
      FieldAlias = 'ProcessID'
      FieldName = 'ProcessID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
  end
  object qryTransFormItems: TADOQuery
    Connection = DMF.adcBSell
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
        Name = 'ServerID'
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
      end>
    SQL.Strings = (
      
        'SELECT (ReciptItems.InputEntity + ReciptItems.OutputEntity) / Tr' +
        'ansForms.Entity * TransFormItems.Entity AS EntityCalc, '
      
        '       (ReciptItems.InputWeight + ReciptItems.OutputWeight) / Tr' +
        'ansForms.Weight * TransFormItems.Weight AS WeightCalc, '
      #9'    StuffCoding.c_StuffName, TransForms.*, TransFormItems.*'
      'FROM            TransFormItems INNER JOIN'
      
        '                         TransForms ON TransFormItems.TransFormI' +
        'D = TransForms.TransFormID INNER JOIN'
      
        '                         ReciptItems ON TransForms.StuffCode = R' +
        'eciptItems.StuffCode AND TransForms.TransFormID = ReciptItems.Tr' +
        'ansFormID INNER JOIN'
      
        '                         StuffCoding ON TransFormItems.StuffCode' +
        ' = StuffCoding.c_StuffCode'
      
        'WHERE        (TransFormItems.InfoType = 0) AND (ReciptItems.Reci' +
        'ptID = :ReciptID ) AND (ReciptItems.ServerID = :ServerID ) AND (' +
        'ReciptItems.YearID = :YearID )')
    Left = 190
    Top = 441
  end
  object srcTransFormItems: TDataSource
    DataSet = qryTransFormItems
    Left = 316
    Top = 513
  end
  object qryTmps: TADOQuery
    Connection = DMF.adcBSell
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 848
    Top = 424
  end
  object qryEntityCodeExpirationDate: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'ReciptDate'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'StoreID'
        Attributes = [paSigned, paNullable]
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
      end>
    SQL.Strings = (
      
        'SELECT ReciptItemID,StuffCode, ItemDate, SUM(InputEntity - Outpu' +
        'tEntity) AS Entity,'
      '    SUM(InputWeight - OutputWeight) AS Weight,'
      '    SUM(TotalInputPrice - TotalOutputPrice) AS Price'
      'FROM ReciptItems_Stock'
      'WHERE (ReciptDate <= :ReciptDate)'
      
        'AND (StoreID = :StoreID) AND (EffectType IN (2, 4, 6, 7)) AND (R' +
        'eciptState < 3)'
      'AND (YearID = :YearID)'
      'GROUP BY ReciptItemID,StuffCode, ItemDate')
    Left = 754
    Top = 450
  end
end

inherited Cnt_ContractsF: TCnt_ContractsF
  Left = 343
  Top = 129
  ActiveControl = cmbGroups
  Caption = #1579#1576#1578' '#1602#1585#1575#1585#1583#1575#1583' '#1607#1575' '#1608' '#1578#1588#1603#1610#1604' '#1662#1585#1608#1606#1583#1607' '
  ClientHeight = 622
  ClientWidth = 829
  Position = poDesigned
  OnResize = FormResize
  ExplicitWidth = 837
  ExplicitHeight = 653
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 581
    Width = 829
    ExplicitTop = 581
    ExplicitWidth = 829
    object newPanel: TPanel [0]
      Left = 509
      Top = 1
      Width = 319
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitLeft = 513
      object BitBtn3: TBitBtn
        AlignWithMargins = True
        Left = 243
        Top = 6
        Width = 75
        Height = 27
        Margins.Left = 1
        Margins.Top = 6
        Margins.Right = 1
        Margins.Bottom = 6
        Action = DataSetInsert1
        Align = alRight
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        AlignWithMargins = True
        Left = 89
        Top = 6
        Width = 75
        Height = 27
        Margins.Left = 1
        Margins.Top = 6
        Margins.Right = 1
        Margins.Bottom = 6
        Action = DataSetDelete1_
        Align = alRight
        Caption = #1581#1584#1601
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        AlignWithMargins = True
        Left = 166
        Top = 6
        Width = 75
        Height = 27
        Margins.Left = 1
        Margins.Top = 6
        Margins.Right = 1
        Margins.Bottom = 6
        Action = DataSetEdit1
        Align = alRight
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 2
      end
      object BtnExcel: TBitBtn
        AlignWithMargins = True
        Left = 12
        Top = 6
        Width = 75
        Height = 27
        Hint = ' '
        Margins.Left = 1
        Margins.Top = 6
        Margins.Right = 1
        Margins.Bottom = 6
        Align = alRight
        Caption = #1582#1608#1575#1606#1583#1606' Excel'
        TabOrder = 3
        OnClick = BtnExcelClick
      end
    end
    object okPanel: TPanel [1]
      Left = 346
      Top = 1
      Width = 163
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        163
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
        Left = 6
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
    inherited BtnReject: TBitBtn
      Left = 2
      Margins.Left = 1
      Margins.Right = 1
      ExplicitLeft = 2
    end
    object DBNavigator1: TDBNavigator
      AlignWithMargins = True
      Left = 419
      Top = 7
      Width = 80
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      DataSource = srcContracts
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alClient
      Flat = True
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 79
      Top = 7
      Width = 150
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actmnuCnt_ContractOperationsF
      Align = alLeft
      Caption = 'actmnuCnt_ContractOperationsF'
      TabOrder = 4
    end
    object btnCnt_ContractsProperties: TBitBtn
      AlignWithMargins = True
      Left = 231
      Top = 7
      Width = 78
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actViewFileF
      Align = alLeft
      Caption = #1575#1587#1603#1606' '#1608' '#1662#1610#1608#1587#1578
      TabOrder = 5
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 311
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actPrint
      Align = alLeft
      Caption = #1670#1575#1662
      TabOrder = 6
    end
    object btnOtherMenu: TBitBtn
      AlignWithMargins = True
      Left = 390
      Top = 7
      Width = 25
      Height = 27
      Hint = #1587#1575#1610#1585' '#1575#1605#1603#1575#1606#1575#1578
      Margins.Top = 6
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
      TabOrder = 7
      OnClick = btnOtherMenuClick
    end
  end
  inherited Panel2: TPanel
    Width = 829
    ExplicitWidth = 829
    DesignSize = (
      829
      53)
    inherited ImgTemplate: TImage
      Left = 820
      ExplicitLeft = 827
    end
    inherited lblCaption: TLabel
      Left = 721
      ExplicitLeft = 721
    end
    inherited lblBaseDate: TLabel
      Left = 341
      ExplicitLeft = 341
    end
    object Label23: TLabel
      Left = 107
      Top = 9
      Width = 68
      Height = 13
      Caption = #1588#1606#1575#1587#1607' '#1602#1585#1575#1585#1583#1575#1583
      FocusControl = edtCaseNo
    end
    object Label24: TLabel
      Left = 107
      Top = 31
      Width = 21
      Height = 13
      Caption = #1578#1575#1585#1610#1582
      FocusControl = edtFromDate
    end
    object btnSearchReciptNumber: TSpeedButton
      Left = 9
      Top = 4
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = btnSearchReciptNumberClick
    end
    object edtCaseNo: TDBEdit
      Left = 34
      Top = 6
      Width = 68
      Height = 19
      Color = clInactiveCaption
      Ctl3D = False
      DataField = 'CaseNo'
      DataSource = srcContracts
      ParentCtl3D = False
      TabOrder = 0
    end
    object edtFromDate: TDBEdit
      Left = 9
      Top = 26
      Width = 93
      Height = 21
      DataField = 'FromDate'
      DataSource = srcContracts
      TabOrder = 1
    end
  end
  inherited Panel3: TPanel
    Width = 829
    Height = 528
    ExplicitWidth = 829
    ExplicitHeight = 528
    DesignSize = (
      829
      528)
    object Label1: TLabel
      Left = 107
      Top = 8
      Width = 22
      Height = 13
      Alignment = taRightJustify
      Caption = #1585#1583#1610#1601
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 725
      Top = 110
      Width = 50
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582' '#1575#1606#1593#1602#1575#1583
      FocusControl = edtContractDate
      ExplicitLeft = 690
    end
    object Label3: TLabel
      Left = 725
      Top = 60
      Width = 66
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1603#1583#1591#1585#1601' '#1602#1585#1575#1585#1583#1575#1583
      FocusControl = edtEmployerId
      ExplicitLeft = 690
    end
    object Label4: TLabel
      Left = 107
      Top = 245
      Width = 45
      Height = 13
      Alignment = taRightJustify
      Caption = #1578#1575#1585#1610#1582' '#1575#1610#1580#1575#1583
      FocusControl = edtInsertDate
    end
    object Label6: TLabel
      Left = 725
      Top = 194
      Width = 52
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582' '#1588#1585#1608#1593
      FocusControl = edtStartDate
      ExplicitLeft = 732
    end
    object Label7: TLabel
      Left = 489
      Top = 194
      Width = 43
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582' '#1662#1575#1610#1575#1606
      FocusControl = edtEndDate
      ExplicitLeft = 496
    end
    object Label8: TLabel
      Left = 107
      Top = 194
      Width = 42
      Height = 13
      Caption = #1605#1583#1578' -'#1605#1575#1607
      FocusControl = DBEdit8
    end
    object Label9: TLabel
      Left = 725
      Top = 221
      Width = 86
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582' '#1588#1585#1608#1593' '#1601#1593#1575#1604#1610#1578
      FocusControl = edtActivityStartDate
      ExplicitLeft = 732
    end
    object Label10: TLabel
      Left = 489
      Top = 221
      Width = 126
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582' '#1662#1740#1588' '#1576#1740#1606#1740' '#1662#1575#1610#1575#1606' '#1601#1593#1575#1604#1610#1578
      FocusControl = edtAnticipateDate
      ExplicitLeft = 496
    end
    object Label11: TLabel
      Left = 725
      Top = 245
      Width = 93
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1605#1576#1604#1594' '#1575#1608#1604#1610#1607' '#1602#1585#1575#1585#1583#1575#1583' '
      FocusControl = edtContractBasePrice
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 732
    end
    object Label13: TLabel
      Left = 725
      Top = 270
      Width = 39
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1603#1583' '#1603#1575#1585#1711#1575#1607
      FocusControl = edtWorkShopId
      ExplicitLeft = 732
    end
    object Label20: TLabel
      Left = 725
      Top = 85
      Width = 63
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1588#1605#1575#1585#1607' '#1602#1585#1575#1585#1583#1575#1583
      FocusControl = edtContractNo
      ExplicitLeft = 690
    end
    object Label21: TLabel
      Left = 725
      Top = 8
      Width = 20
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1711#1585#1608#1607
      FocusControl = edtAnticipateDate
      ExplicitLeft = 690
    end
    object dbtxt_EmployerId: TDBText
      Left = 270
      Top = 58
      Width = 351
      Height = 16
      Anchors = [akTop, akRight]
      Color = clInactiveCaption
      DataField = '_EmployerId'
      DataSource = srcContracts
      ParentColor = False
      Transparent = False
      ExplicitLeft = 235
    end
    object btnEmployerId: TSpeedButton
      Tag = 1
      Left = 623
      Top = 55
      Width = 23
      Height = 22
      Anchors = [akTop, akRight]
      Caption = '...'
      OnClick = btnEmployerIdClick
      ExplicitLeft = 588
    end
    object dbtxt_WorkShopId: TDBText
      Left = 270
      Top = 268
      Width = 351
      Height = 16
      Anchors = [akTop, akRight]
      Color = clInactiveCaption
      DataField = '_WorkShopId'
      DataSource = srcContracts
      ParentColor = False
      Transparent = False
      ExplicitLeft = 277
    end
    object btnWorkShopId: TSpeedButton
      Tag = 1
      Left = 623
      Top = 265
      Width = 23
      Height = 22
      Anchors = [akTop, akRight]
      Caption = '...'
      OnClick = btnWorkShopIdClick
      ExplicitLeft = 630
    end
    object Label22: TLabel
      Left = 107
      Top = 270
      Width = 67
      Height = 13
      Caption = #1608#1590#1593#1610#1578' '#1602#1585#1575#1585#1583#1575#1583
      FocusControl = DBEdit3
    end
    object Label25: TLabel
      Left = 725
      Top = 34
      Width = 82
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1593#1606#1608#1575#1606' '#1603#1604#1610' '#1602#1585#1575#1585#1583#1575#1583
      FocusControl = edtContractTopic
      ExplicitLeft = 690
    end
    object Label26: TLabel
      Left = 107
      Top = 110
      Width = 69
      Height = 13
      Alignment = taRightJustify
      Caption = #1578#1575#1585#1610#1582' '#1583#1585#1582#1608#1575#1587#1578
      FocusControl = edtAidDate
    end
    object Label27: TLabel
      Left = 107
      Top = 85
      Width = 78
      Height = 13
      Alignment = taRightJustify
      Caption = #1588#1605#1575#1585#1607' '#1583#1585#1582#1608#1575#1587#1578
      FocusControl = edtAidNo
    end
    object Label39: TLabel
      Left = 107
      Top = 34
      Width = 34
      Height = 13
      Alignment = taRightJustify
      Caption = #1603#1583' '#1601#1606#1610
      FocusControl = edtEndDate
    end
    object Label28: TLabel
      Left = 235
      Top = 136
      Width = 60
      Height = 13
      Caption = #1588#1605#1575#1585#1607' '#1662#1585#1608#1606#1583#1607
      FocusControl = DBEdit5
    end
    object dbtxt_CustomerInfo: TDBText
      Left = 11
      Top = 58
      Width = 259
      Height = 16
      Anchors = [akLeft, akTop, akRight]
      BiDiMode = bdRightToLeft
      Color = clInactiveCaption
      DataField = '_CustomerInfo'
      DataSource = srcContracts
      ParentBiDiMode = False
      ParentColor = False
      Transparent = False
      ExplicitWidth = 224
    end
    object lbl1: TLabel
      Left = 489
      Top = 85
      Width = 93
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1603#1583' '#1605#1604#1610' '#1591#1585#1601' '#1602#1585#1575#1585#1583#1575#1583
      ExplicitLeft = 496
    end
    object lbl2: TLabel
      Left = 489
      Top = 110
      Width = 130
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1588#1605#1575#1585#1607' '#1575#1602#1578#1589#1575#1583#1740' '#1591#1585#1601' '#1602#1585#1575#1585#1583#1575#1583
      ExplicitLeft = 496
    end
    object lbl3: TLabel
      Left = 489
      Top = 136
      Width = 79
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1578#1604#1601#1606' '#1591#1585#1601' '#1602#1585#1575#1585#1583#1575#1583
      ExplicitLeft = 496
    end
    object lbl4: TLabel
      Left = 489
      Top = 164
      Width = 83
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1570#1583#1585#1587' '#1591#1585#1601' '#1602#1585#1575#1585#1583#1575#1583
      ExplicitLeft = 496
    end
    object SpeedButton1: TSpeedButton
      Left = 575
      Top = 133
      Width = 148
      Height = 22
      Action = actEjareh
      Anchors = [akTop, akRight]
      ExplicitLeft = 583
    end
    object DBEdit1: TDBEdit
      Left = 9
      Top = 4
      Width = 93
      Height = 21
      DataField = 'ContractRow'
      DataSource = srcContracts
      TabOrder = 1
    end
    object edtContractDate: TDBEdit
      Left = 623
      Top = 106
      Width = 100
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'ContractDate'
      DataSource = srcContracts
      TabOrder = 6
      ExplicitLeft = 631
    end
    object edtEmployerId: TDBEdit
      Left = 646
      Top = 56
      Width = 77
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'EmployerId'
      DataSource = srcContracts
      TabOrder = 4
      OnKeyDown = edtEmployerIdKeyDown
      ExplicitLeft = 654
    end
    object edtInsertDate: TDBEdit
      Left = 9
      Top = 242
      Width = 93
      Height = 19
      Color = clInactiveCaption
      Ctl3D = False
      DataField = 'InsertDate'
      DataSource = srcContracts
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 23
    end
    object edtStartDate: TDBEdit
      Left = 623
      Top = 190
      Width = 100
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'StartDate'
      DataSource = srcContracts
      TabOrder = 14
      ExplicitLeft = 631
    end
    object edtEndDate: TDBEdit
      Left = 387
      Top = 190
      Width = 100
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'EndDate'
      DataSource = srcContracts
      TabOrder = 15
      ExplicitLeft = 395
    end
    object DBEdit8: TDBEdit
      Left = 9
      Top = 190
      Width = 93
      Height = 21
      DataField = 'ExecutionTime'
      DataSource = srcContracts
      TabOrder = 16
    end
    object edtActivityStartDate: TDBEdit
      Left = 623
      Top = 217
      Width = 100
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'ActivityStartDate'
      DataSource = srcContracts
      TabOrder = 17
      ExplicitLeft = 631
    end
    object edtAnticipateDate: TDBEdit
      Left = 387
      Top = 217
      Width = 100
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'AnticipateDate'
      DataSource = srcContracts
      TabOrder = 18
      ExplicitLeft = 395
    end
    object edtContractBasePrice: TDBEdit
      Left = 523
      Top = 241
      Width = 200
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'ContractBasePrice'
      DataSource = srcContracts
      TabOrder = 20
      ExplicitLeft = 531
    end
    object edtWorkShopId: TDBEdit
      Left = 645
      Top = 266
      Width = 77
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'WorkShopId'
      DataSource = srcContracts
      TabOrder = 22
      OnKeyDown = edtEmployerIdKeyDown
      ExplicitLeft = 653
    end
    object GroupBox2: TGroupBox
      Left = 2
      Top = 384
      Width = 825
      Height = 142
      Align = alBottom
      Caption = #1605#1593#1585#1601#1610' '#1606#1575#1605#1607' '#1607#1575' '
      TabOrder = 26
      ExplicitTop = 385
      ExplicitWidth = 829
      object GroupBox3: TGroupBox
        Left = 48
        Top = 14
        Width = 775
        Height = 53
        Align = alCustom
        Anchors = [akTop, akRight]
        Caption = #1575#1583#1575#1585#1607' '#1575#1605#1608#1585' '#1605#1575#1604#1610#1575#1578#1610' '
        TabOrder = 0
        object Label17: TLabel
          Left = 583
          Top = 29
          Width = 51
          Height = 13
          Caption = #1588#1605#1575#1585#1607' '#1606#1575#1605#1607
          FocusControl = DBEdit17
        end
        object Label18: TLabel
          Left = 380
          Top = 29
          Width = 42
          Height = 13
          Caption = #1578#1575#1585#1610#1582' '#1606#1575#1605#1607
          FocusControl = DBEdit18
        end
        object Label19: TLabel
          Left = 140
          Top = 29
          Width = 63
          Height = 13
          Caption = #1588#1593#1576#1607' '#1605#1575#1604#1610#1575#1578#1610
          FocusControl = DBEdit19
        end
        object DBEdit17: TDBEdit
          Left = 448
          Top = 25
          Width = 134
          Height = 21
          DataField = 'RefAssetsNo'
          DataSource = srcContracts
          TabOrder = 0
        end
        object DBEdit18: TDBEdit
          Left = 241
          Top = 25
          Width = 134
          Height = 21
          DataField = 'RefAssetsDate'
          DataSource = srcContracts
          TabOrder = 1
        end
        object DBEdit19: TDBEdit
          Left = 4
          Top = 25
          Width = 134
          Height = 21
          DataField = 'AssetsBranch'
          DataSource = srcContracts
          TabOrder = 2
        end
      end
      object GroupBox4: TGroupBox
        Left = 48
        Top = 68
        Width = 775
        Height = 68
        Align = alCustom
        Anchors = [akTop, akRight]
        Caption = #1587#1575#1586#1605#1575#1606' '#1578#1575#1605#1610#1606' '#1575#1580#1578#1605#1575#1593#1610' '
        TabOrder = 1
        object Label14: TLabel
          Left = 380
          Top = 15
          Width = 42
          Height = 13
          Caption = #1578#1575#1585#1610#1582' '#1606#1575#1605#1607
          FocusControl = DBEdit14
        end
        object Label12: TLabel
          Left = 583
          Top = 19
          Width = 51
          Height = 13
          Caption = #1588#1605#1575#1585#1607' '#1606#1575#1605#1607
          FocusControl = DBEdit12
        end
        object Label15: TLabel
          Left = 140
          Top = 15
          Width = 99
          Height = 13
          Caption = #1588#1593#1576#1607' '#1578#1575#1605#1610#1606' '#1575#1580#1578#1605#1575#1593#1610
          FocusControl = DBEdit15
        end
        object Label16: TLabel
          Left = 583
          Top = 44
          Width = 111
          Height = 13
          Caption = #1603#1583' '#1603#1575#1585#1711#1575#1607' '#1578#1575#1605#1610#1606' '#1575#1580#1578#1605#1575#1593#1610
          FocusControl = DBEdit16
        end
        object DBEdit14: TDBEdit
          Left = 241
          Top = 10
          Width = 134
          Height = 21
          DataField = 'RefInsuranceDate'
          DataSource = srcContracts
          TabOrder = 0
        end
        object DBEdit12: TDBEdit
          Left = 448
          Top = 14
          Width = 134
          Height = 21
          DataField = 'RefInsuranceNo'
          DataSource = srcContracts
          TabOrder = 1
        end
        object DBEdit15: TDBEdit
          Left = 4
          Top = 12
          Width = 134
          Height = 21
          DataField = 'InsuranceBranch'
          DataSource = srcContracts
          TabOrder = 2
        end
        object DBEdit16: TDBEdit
          Left = 448
          Top = 40
          Width = 134
          Height = 21
          DataField = 'InsuranceWorkShopId'
          DataSource = srcContracts
          TabOrder = 3
        end
      end
    end
    object edtContractNo: TDBEdit
      Left = 623
      Top = 81
      Width = 100
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'ContractNo'
      DataSource = srcContracts
      TabOrder = 5
      ExplicitLeft = 631
    end
    object DBEdit3: TDBEdit
      Left = 8
      Top = 267
      Width = 93
      Height = 19
      Color = clInactiveCaption
      Ctl3D = False
      DataField = 'ContractsStatus'
      DataSource = srcContracts
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 27
    end
    object edtContractTopic: TDBEdit
      Left = 270
      Top = 30
      Width = 453
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'ContractTopic'
      DataSource = srcContracts
      TabOrder = 2
      ExplicitLeft = 278
    end
    object dbrgrpContractType: TDBRadioGroup
      Left = 206
      Top = 74
      Width = 166
      Height = 52
      Caption = '    '#1606#1608#1593' '#1602#1585#1575#1585#1583#1575#1583'   '
      Columns = 2
      DataField = 'ContractType'
      DataSource = srcContracts
      Items.Strings = (
        #1575#1608#1604#1610#1607
        #1605#1578#1605#1605
        #1575#1601#1586#1575#1610#1588' 25%'#8207)
      TabOrder = 10
      Values.Strings = (
        '0'
        '1'
        '2')
      OnChange = dbrgrpContractTypeChange
    end
    object edtAidDate: TDBEdit
      Left = 9
      Top = 106
      Width = 93
      Height = 21
      DataField = 'AidDate'
      DataSource = srcContracts
      TabOrder = 12
    end
    object edtAidNo: TDBEdit
      Left = 9
      Top = 81
      Width = 93
      Height = 21
      DataField = 'AidNo'
      DataSource = srcContracts
      TabOrder = 11
    end
    object cmbGroups: TComboBox
      Left = 234
      Top = 3
      Width = 488
      Height = 21
      AutoDropDown = True
      Style = csDropDownList
      Anchors = [akLeft, akTop, akRight]
      Color = 14024703
      TabOrder = 0
      OnClick = cmbGroupsClick
      OnEnter = cmbGroupsEnter
    end
    object chkAllCusts: TCheckBox
      Left = 182
      Top = 6
      Width = 46
      Height = 17
      BiDiMode = bdRightToLeftNoAlign
      Caption = '&'#1607#1605#1607' '
      ParentBiDiMode = False
      TabOrder = 28
      OnClick = chkAllCustsClick
    end
    object pnlUpperCaseNo: TPanel
      Left = 7
      Top = 214
      Width = 154
      Height = 23
      BevelOuter = bvNone
      TabOrder = 19
      object btnUpperCaseNo: TSpeedButton
        Tag = 1
        Left = 0
        Top = 0
        Width = 23
        Height = 23
        Align = alLeft
        Caption = '...'
        OnClick = btnUpperCaseNoClick
        ExplicitLeft = 9
        ExplicitTop = 2
        ExplicitHeight = 22
      end
      object Label5: TLabel
        AlignWithMargins = True
        Left = 97
        Top = 3
        Width = 54
        Height = 13
        Align = alRight
        Alignment = taCenter
        Caption = #1602#1585#1575#1585#1583#1575#1583' '#1575#1608#1604#1610#1607
      end
      object edtUpperCaseNo: TDBEdit
        Left = 23
        Top = 0
        Width = 71
        Height = 23
        Align = alClient
        DataField = 'UpperCaseNo'
        DataSource = srcContracts
        TabOrder = 0
        OnKeyDown = edtEmployerIdKeyDown
        ExplicitHeight = 21
      end
    end
    object edtTechnicalCode: TDBEdit
      Left = 9
      Top = 30
      Width = 93
      Height = 21
      DataField = 'TechnicalCode'
      DataSource = srcContracts
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 9
      Top = 133
      Width = 225
      Height = 19
      Color = clInactiveCaption
      Ctl3D = False
      DataField = '__ShomareParvande'
      DataSource = srcContracts
      ParentCtl3D = False
      TabOrder = 29
    end
    object edtEdtNationalID: TEdit
      Left = 387
      Top = 80
      Width = 100
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 7
      ExplicitLeft = 395
    end
    object edtEdtEconomicNumber: TEdit
      Left = 387
      Top = 106
      Width = 100
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 8
      ExplicitLeft = 395
    end
    object edtEdtTel: TEdit
      Left = 387
      Top = 132
      Width = 100
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 9
      ExplicitLeft = 395
    end
    object edtAddress: TEdit
      Left = 9
      Top = 160
      Width = 478
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 13
      ExplicitWidth = 486
    end
    object pnl1: TPanel
      Left = 2
      Top = 318
      Width = 825
      Height = 66
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelOuter = bvNone
      TabOrder = 25
      ExplicitWidth = 829
      ExplicitHeight = 67
      object grp1: TGroupBox
        Left = 307
        Top = 0
        Width = 522
        Height = 67
        Align = alClient
        Caption = #1578#1608#1590#1610#1581#1575#1578
        TabOrder = 0
        object dbmmoNote: TDBMemo
          Tag = 111
          Left = 2
          Top = 15
          Width = 518
          Height = 50
          Align = alClient
          DataField = 'Note'
          DataSource = srcContracts
          TabOrder = 0
        end
      end
      object grp2: TGroupBox
        Left = 0
        Top = 0
        Width = 307
        Height = 67
        Align = alLeft
        Caption = #1587#1575#1740#1585' '#1575#1591#1604#1575#1593#1575#1578
        TabOrder = 1
        object dbgrd1: TDBGrid
          Tag = 111
          Left = 2
          Top = 15
          Width = 303
          Height = 50
          TabStop = False
          Align = alClient
          Color = clCream
          DataSource = srcContractsProperties
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = actCnt_ContractsPropertiesExecute
          Columns = <
            item
              Expanded = False
              FieldName = '_Name'
              Width = 87
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PropertiesEntity'
              Width = 83
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PropertiesNote'
              Width = 45
              Visible = True
            end>
        end
      end
    end
    object pnlArz: TPanel
      Left = 2
      Top = 290
      Width = 825
      Height = 28
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 24
      DesignSize = (
        825
        28)
      object Label29: TLabel
        Left = 491
        Top = 5
        Width = 29
        Height = 13
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        Caption = #1606#1585#1582' '#1575#1585#1586
        FocusControl = edtArzRate
        ParentBiDiMode = False
        ExplicitLeft = 495
      end
      object Label30: TLabel
        Left = 333
        Top = 5
        Width = 39
        Height = 13
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        Caption = #1605#1602#1583#1575#1585' '#1575#1585#1586
        FocusControl = edtArzAmount
        ParentBiDiMode = False
        ExplicitLeft = 337
      end
      object Label31: TLabel
        Left = 727
        Top = 5
        Width = 29
        Height = 13
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        Caption = #1606#1608#1593' '#1575#1585#1586
        ParentBiDiMode = False
        ExplicitLeft = 731
      end
      object Label32: TLabel
        Left = 105
        Top = 5
        Width = 93
        Height = 13
        Alignment = taRightJustify
        Caption = #1605#1576#1604#1594' '#1575#1608#1604#1610#1607' '#1602#1585#1575#1585#1583#1575#1583' '
        FocusControl = edtContractBasePrice1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtArzRate: TDBEdit
        Left = 389
        Top = 1
        Width = 100
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'ArzRate'
        DataSource = srcContracts
        TabOrder = 1
        ExplicitLeft = 393
      end
      object edtArzAmount: TDBEdit
        Left = 200
        Top = 1
        Width = 128
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'ArzAmount'
        DataSource = srcContracts
        TabOrder = 2
        ExplicitLeft = 204
      end
      object CmbArzTypeID: TDBComboBox
        Left = 627
        Top = 1
        Width = 97
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'ArzTypeID'
        DataSource = srcContracts
        TabOrder = 0
      end
      object edtContractBasePrice1: TDBEdit
        Left = 6
        Top = 1
        Width = 93
        Height = 21
        DataField = 'ContractBasePrice'
        DataSource = srcContracts
        TabOrder = 3
      end
    end
    object dbchkTaxAble: TDBCheckBox
      Left = 390
      Top = 244
      Width = 97
      Height = 17
      Anchors = [akTop, akRight]
      Caption = #1605#1588#1605#1608#1604' '#1605#1575#1604#1740#1575#1578
      DataField = 'TaxAble'
      DataSource = srcContracts
      TabOrder = 21
      ValueChecked = '1'
      ValueUnchecked = '0'
      ExplicitLeft = 398
    end
  end
  inherited ActionList: TActionList
    Left = 296
    object actmnuCnt_ContractOperationsF: TAction
      Caption = 'actmnuCnt_ContractOperationsF'
      OnExecute = actmnuCnt_ContractOperationsFExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actViewFileF: TAction
      Caption = #1575#1587#1603#1606' '#1608' '#1662#1610#1608#1587#1578
      OnExecute = actViewFileFExecute
    end
    object actInsertIntoSalary: TAction
      Caption = #1610#1603#1587#1575#1606' '#1587#1575#1586#1610' '#1603#1583#1610#1606#1711' '#1581#1602#1608#1602' '#1583#1587#1578#1605#1586#1583
      OnExecute = actInsertIntoSalaryExecute
    end
    object actInsertIntoAcc: TAction
      Caption = #1610#1603#1587#1575#1606' '#1587#1575#1586#1610' '#1603#1583#1610#1606#1711' '#1581#1587#1575#1576#1583#1575#1585#1610
      OnExecute = actInsertIntoAccExecute
    end
    object actCnt_ContractsProperties: TAction
      Caption = #1587#1575#1740#1585' '#1575#1591#1604#1575#1593#1575#1578
      OnExecute = actCnt_ContractsPropertiesExecute
    end
    object actEjareh: TAction
      Caption = #1579#1576#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1602#1585#1575#1585#1583#1575#1583' '#1575#1580#1575#1585#1607
      OnExecute = actEjarehExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 376
    Top = 5
  end
  object qryContracts: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryContractsAfterInsert
    BeforeEdit = qryContractsBeforeEdit
    BeforePost = qryContractsBeforePost
    AfterPost = qryContractsAfterPost
    BeforeDelete = qryContractsBeforeDelete
    AfterDelete = qryContractsAfterDelete
    AfterScroll = qryContractsAfterScroll
    OnCalcFields = qryContractsCalcFields
    Parameters = <
      item
        Name = 'GroupType'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'CustomerGrpIDForm'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'CustomerGrpIDTO'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'FromType'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      
        'SELECT * , '#39#39'  AS  _EconomicNumber,'#39#39' AS _NationalID,'#39#39' AS _Addr' +
        'ess ,'#39#39' AS _Tel  '
      'FROM    Cnt.Contracts'
      
        'WHERE     (CustomerGrpID in (SELECT CustomerGrpID FROM Customers' +
        'Group WHERE (GroupType = :GroupType)'
      
        'and (CustomerGrpID between :CustomerGrpIDForm and :CustomerGrpID' +
        'TO) ))'
      'and(CaseNo<>0)'
      'and ( FromType = :FromType )'
      ''
      ''
      'ORDER BY CaseNo')
    Left = 341
    Top = 67
    object qryContractsCaseNo: TIntegerField
      FieldName = 'CaseNo'
      Required = True
      OnChange = qryContractsCaseNoChange
    end
    object qryContractsYearID: TIntegerField
      FieldName = 'YearID'
      Required = True
    end
    object qryContractsCustomerGrpId: TIntegerField
      DisplayLabel = #1711#1585#1608#1607
      FieldName = 'CustomerGrpId'
      Required = True
    end
    object qryContractsContractTopic: TWideStringField
      DisplayLabel = #1605#1608#1590#1608#1593' '#1603#1604#1610' '#1602#1585#1575#1585' '#1583#1575#1583
      FieldName = 'ContractTopic'
      Required = True
      OnChange = qryContractsContractTopicChange
      Size = 100
    end
    object qryContractsInsertDate: TDateTimeField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1575#1610#1580#1575#1583
      FieldName = 'InsertDate'
      Required = True
      OnGetText = qryContractsInsertDateGetText
      EditMask = '9999/99/99'
    end
    object qryContractsContractRow: TIntegerField
      DisplayLabel = #1585#1583#1610#1601
      FieldName = 'ContractRow'
      Required = True
    end
    object qryContractsContractNo: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1602#1585#1575#1585#1583#1575#1583
      FieldName = 'ContractNo'
      Required = True
      Size = 30
    end
    object qryContractsContractDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1575#1606#1593#1602#1575#1583
      FieldName = 'ContractDate'
      Required = True
      OnChange = qryContractsContractDateChange
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryContractsEmployerId: TIntegerField
      DisplayLabel = #1603#1583#1591#1585#1601' '#1602#1585#1575#1585#1583#1575#1583
      FieldName = 'EmployerId'
      Required = True
    end
    object qryContractsWorkShopId: TIntegerField
      DisplayLabel = #1603#1583' '#1603#1575#1585#1711#1575#1607
      FieldName = 'WorkShopId'
      Required = True
    end
    object qryContractsStartDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1588#1585#1608#1593
      FieldName = 'StartDate'
      Required = True
      OnChange = qryContractsStartDateChange
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryContractsEndDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1662#1575#1610#1575#1606
      FieldName = 'EndDate'
      Required = True
      OnChange = qryContractsEndDateChange
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryContractsExecutionTime: TIntegerField
      DisplayLabel = #1605#1583#1578' -'#1605#1575#1607
      FieldName = 'ExecutionTime'
      Required = True
    end
    object qryContractsActivityStartDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1588#1585#1608#1593' '#1601#1593#1575#1604#1610#1578
      FieldName = 'ActivityStartDate'
      Required = True
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryContractsAnticipateDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1662#1740#1588' '#1576#1740#1606#1740' '#1662#1575#1610#1575#1606' '#1601#1593#1575#1604#1610#1578
      FieldName = 'AnticipateDate'
      Required = True
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryContractsContractBasePrice: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1575#1608#1604#1610#1607' '#1602#1585#1575#1585#1583#1575#1583' '
      FieldName = 'ContractBasePrice'
      currency = True
      Precision = 19
    end
    object qryContractsRefInsuranceDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1606#1575#1605#1607' '#1578
      FieldName = 'RefInsuranceDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryContractsInsuranceBranch: TWideStringField
      DisplayLabel = #1588#1593#1576#1607' '#1578#1575#1605#1610#1606' '#1575#1580#1578#1605#1575#1593#1610
      FieldName = 'InsuranceBranch'
      Size = 50
    end
    object qryContractsRefAssetsDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1606#1575#1605#1607' '#1575
      FieldName = 'RefAssetsDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryContractsAssetsBranch: TStringField
      DisplayLabel = #1588#1593#1576#1607' '#1605#1575#1604#1610#1575#1578#1610
      FieldName = 'AssetsBranch'
      Size = 50
    end
    object qryContractsContractType: TIntegerField
      DisplayLabel = #1606#1608#1593' '#1602#1585#1575#1585#1583#1575#1583
      FieldName = 'ContractType'
      Required = True
    end
    object qryContractsUpperCaseNo: TIntegerField
      DisplayLabel = #1602#1585#1575#1585#1583#1575#1583' '#1575#1608#1604#1610#1607
      FieldName = 'UpperCaseNo'
    end
    object qryContractsContractsStatus: TWordField
      DisplayLabel = #1608#1590#1593#1610#1578' '#1602#1585#1575#1585#1583#1575#1583
      FieldName = 'ContractsStatus'
      Required = True
      OnGetText = qryContractsContractsStatusGetText
    end
    object qryContracts_EmployerId: TStringField
      FieldKind = fkLookup
      FieldName = '_EmployerId'
      LookupDataSet = qryCustomers1
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'EmployerId'
      Size = 100
      Lookup = True
    end
    object qryContracts_WorkShopId: TStringField
      FieldKind = fkLookup
      FieldName = '_WorkShopId'
      LookupDataSet = qryCustomers2
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'WorkShopId'
      Size = 100
      Lookup = True
    end
    object qryContractsRefInsuranceNo: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1606#1575#1605#1607' '#1578
      FieldName = 'RefInsuranceNo'
    end
    object qryContractsFromType: TIntegerField
      FieldName = 'FromType'
    end
    object qryContractsFromDate: TStringField
      FieldName = 'FromDate'
      OnChange = qryContractsFromDateChange
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryContractsAidNo: TStringField
      FieldName = 'AidNo'
      Size = 15
    end
    object qryContractsAidDate: TStringField
      FieldName = 'AidDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryContractsNote: TStringField
      FieldName = 'Note'
      Size = 1000
    end
    object qryContractsInsuranceWorkShopId: TStringField
      DisplayLabel = #1603#1583' '#1603#1575#1585#1711#1575#1607' '#1578#1575#1605#1610#1606' '#1575#1580#1578#1605#1575#1593#1610
      FieldName = 'InsuranceWorkShopId'
      Size = 15
    end
    object qryContractsRefAssetsNo: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1606#1575#1605#1607' '#1575
      FieldName = 'RefAssetsNo'
    end
    object qryContractsTechnicalCode: TStringField
      FieldName = 'TechnicalCode'
      Size = 30
    end
    object qryContracts__ShomareParvande: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1662#1585#1608#1606#1583#1607
      FieldKind = fkCalculated
      FieldName = '__ShomareParvande'
      Size = 300
      Calculated = True
    end
    object qryContracts_CustomerInfo: TStringField
      FieldKind = fkLookup
      FieldName = '_CustomerInfo'
      LookupDataSet = qryCustomers1
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustomerInfo'
      KeyFields = 'EmployerId'
      Size = 200
      Lookup = True
    end
    object qryContracts_EconomicNumber: TStringField
      FieldKind = fkLookup
      FieldName = '_EconomicNumber'
      LookupDataSet = qryCustomersCaseNo
      LookupKeyFields = 'CustID'
      LookupResultField = 'EconomicNumber'
      KeyFields = 'CaseNo'
      Lookup = True
    end
    object qryContracts_NationalID: TStringField
      FieldKind = fkLookup
      FieldName = '_NationalID'
      LookupDataSet = qryCustomersCaseNo
      LookupKeyFields = 'CustID'
      LookupResultField = 'NationalID'
      KeyFields = 'CaseNo'
      Size = 12
      Lookup = True
    end
    object qryContracts_Tel: TStringField
      FieldKind = fkLookup
      FieldName = '_Tel'
      LookupDataSet = qryCustomersCaseNo
      LookupKeyFields = 'CustID'
      LookupResultField = 'Tel'
      KeyFields = 'CaseNo'
      Size = 30
      Lookup = True
    end
    object qryContracts_Address: TStringField
      FieldKind = fkLookup
      FieldName = '_Address'
      LookupDataSet = qryCustomersCaseNo
      LookupKeyFields = 'CustID'
      LookupResultField = 'Address'
      KeyFields = 'CaseNo'
      Size = 200
      Lookup = True
    end
    object qryContractsArzTypeID: TIntegerField
      FieldName = 'ArzTypeID'
      OnChange = qryContractsArzTypeIDChange
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryContractsArzAmount: TBCDField
      FieldName = 'ArzAmount'
      OnChange = qryContractsArzAmountChange
      Precision = 19
    end
    object qryContractsArzRate: TFloatField
      FieldName = 'ArzRate'
    end
    object qryContractsTaxAble: TWordField
      FieldName = 'TaxAble'
    end
  end
  object srcContracts: TDataSource
    AutoEdit = False
    DataSet = qryContracts
    OnStateChange = srcContractsStateChange
    Left = 469
    Top = 5
  end
  object zbal: TzAPIBalloon
    AutoCloseMode = acAutoCalc
    Title = 'aaaaddddd'
    Prompt.Strings = (
      'FINANCES Ltd'
      'TzAPIBalloon ver. 1')
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 224
    Top = 8
  end
  object qryinit: TADOQuery
    Connection = DmF.adcBSell
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
      'SELECT  * FROM    ReciptTypes'
      ''
      'where ReciptType=:ReciptType'
      ''
      ''
      'ORDER BY ReciptType')
    Left = 582
    Top = 5
  end
  object qryCustomers1: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT   DISTINCT  CustID, CustName, ISNULL('#39#1588' '#1581#1587#1575#1576#39' + AccountNu' +
        'mber, '#39#39') + ISNULL('#39' Tel1 : '#39' + Tel, '#39#39') +'
      
        'ISNULL('#39' Tel2 : '#39' + Tel2, '#39#39') + ISNULL('#39' Tel3 : '#39' + Tel3,'#39#39') + I' +
        'SNULL('#39' Mobile : '#39' + Mobile, '#39#39') AS CustomerInfo'
      ', EconomicNumber, NationalID, Address, Tel'
      'FROM Vu_CustomersGroups')
    Left = 584
    Top = 246
  end
  object qryCustomers2: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT  DISTINCT CustID, CustName,InfoWeight,Address'
      'FROM Vu_CustomersGroups')
    Left = 317
    Top = 230
  end
  object qryCustomers3: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT   DISTINCT   CustID, CustName,InfoWeight,Address'
      'FROM Vu_CustomersGroups'
      ''
      '  ')
    Left = 221
    Top = 222
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.Collation = False
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\Projects\Fara\BSell\Exe\Report\ReciptsGrid0.rtm'
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
    EmailSettings.ShowEmailDialog = True
    EmailSettings.ShowCancelDialog = True
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
    Left = 459
    Top = 400
    Version = '23.0'
    mmColumnWidth = 135300
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 23548
      mmPrintPosition = 0
      object ppLblCompanyName: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCompanyName'
        OnGetText = ppLblCompanyNameGetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 73025
        mmTop = 1058
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCaption: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCaption'
        OnGetText = ppLblCaptionGetText
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8424
        mmLeft = 93483
        mmTop = 8467
        mmWidth = 10414
        BandType = 0
        LayerName = Foreground
      end
      object ppSysVarPageNo: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SysVarPageNo1'
        OnGetText = ppSysVarPageNoGetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 9790
        mmTop = 8467
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object ppLblPrintDate: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lbprintdate'
        OnGetText = ppLblPrintDateGetText
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1711#1586#1575#1585#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 9790
        mmTop = 1058
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
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
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcContracts
    OpenDataSource = False
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'DBPipeline1'
    Left = 587
    Top = 394
  end
  object PopMuPrint: TPopupMenu
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    Images = ImageList1
    ParentBiDiMode = False
    Left = 206
    Top = 425
  end
  object popSendTo: TPopupMenu
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    Images = ImageList1
    ParentBiDiMode = False
    Left = 374
    Top = 433
    object actInsertIntoAcc1: TMenuItem
      Action = actInsertIntoAcc
    end
    object InsertIntoSalary1: TMenuItem
      Action = actInsertIntoSalary
    end
    object mnuCnt_ContractsProperties: TMenuItem
      Action = actCnt_ContractsProperties
    end
    object mnuViewFileF: TMenuItem
      Action = actViewFileF
    end
  end
  object qryCustomersCaseNo: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT   DISTINCT      CustID, CustName, EconomicNumber, Nationa' +
        'lID, Address, Tel'
      'FROM            Customers')
    Left = 760
    Top = 222
  end
  object qryContractsProperties: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'CaseNo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT        Cnt.ContractsProperties.LookUpID, LookUps.Name AS ' +
        '_Name, Cnt.ContractsProperties.PropertiesEntity, Cnt.ContractsPr' +
        'operties.PropertiesNote'
      'FROM            Cnt.ContractsProperties INNER JOIN'
      
        '                         LookUps ON Cnt.ContractsProperties.Look' +
        'UpID = LookUps.LookUpID'
      'WHERE        (Cnt.ContractsProperties.CaseNo =  :CaseNo )')
    Left = 352
    Top = 385
    object qryContractsPropertiesLookUpID: TIntegerField
      FieldName = 'LookUpID'
    end
    object qryContractsProperties_Name: TStringField
      DisplayLabel = #1606#1608#1593
      FieldName = '_Name'
      Size = 50
    end
    object qryContractsPropertiesPropertiesEntity: TFMTBCDField
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'PropertiesEntity'
      Precision = 20
      Size = 4
    end
    object qryContractsPropertiesPropertiesNote: TStringField
      DisplayLabel = #1578#1608#1590#1740#1581#1575#1578
      FieldName = 'PropertiesNote'
      Size = 200
    end
  end
  object srcContractsProperties: TDataSource
    DataSet = qryContractsProperties
    Left = 176
    Top = 408
  end
  object plnContractsProperties: TppDBPipeline
    DataSource = Cnt_ContractsPropertiesF.srcContractsProperties
    OpenDataSource = False
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'plnContractsProperties'
    Left = 683
    Top = 402
    object pfld1: TppField
      FieldAlias = 'CaseNo'
      FieldName = 'CaseNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object pfld2: TppField
      FieldAlias = 'YearID'
      FieldName = 'YearID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object pfld3: TppField
      FieldAlias = 'CustomerGrpId'
      FieldName = 'CustomerGrpId'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object pfld4: TppField
      FieldAlias = 'ContractTopic'
      FieldName = 'ContractTopic'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object pfld5: TppField
      FieldAlias = 'InsertDate'
      FieldName = 'InsertDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object pfld6: TppField
      FieldAlias = 'ContractRow'
      FieldName = 'ContractRow'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object pfld7: TppField
      FieldAlias = 'ContractNo'
      FieldName = 'ContractNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object pfld8: TppField
      FieldAlias = 'ContractDate'
      FieldName = 'ContractDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object pfld9: TppField
      FieldAlias = 'EmployerId'
      FieldName = 'EmployerId'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object pfld10: TppField
      FieldAlias = 'WorkShopId'
      FieldName = 'WorkShopId'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object pfld11: TppField
      FieldAlias = 'StartDate'
      FieldName = 'StartDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object pfld12: TppField
      FieldAlias = 'EndDate'
      FieldName = 'EndDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object pfld13: TppField
      FieldAlias = 'ExecutionTime'
      FieldName = 'ExecutionTime'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object pfld14: TppField
      FieldAlias = 'ActivityStartDate'
      FieldName = 'ActivityStartDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object pfld15: TppField
      FieldAlias = 'AnticipateDate'
      FieldName = 'AnticipateDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object pfld16: TppField
      FieldAlias = 'ContractBasePrice'
      FieldName = 'ContractBasePrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object pfld17: TppField
      FieldAlias = 'RefInsuranceDate'
      FieldName = 'RefInsuranceDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object pfld18: TppField
      FieldAlias = 'InsuranceBranch'
      FieldName = 'InsuranceBranch'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object pfld19: TppField
      FieldAlias = 'RefAssetsDate'
      FieldName = 'RefAssetsDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object pfld20: TppField
      FieldAlias = 'AssetsBranch'
      FieldName = 'AssetsBranch'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object pfld21: TppField
      FieldAlias = 'ContractType'
      FieldName = 'ContractType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object pfld22: TppField
      FieldAlias = 'UpperCaseNo'
      FieldName = 'UpperCaseNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object pfld23: TppField
      FieldAlias = 'ContractsStatus'
      FieldName = 'ContractsStatus'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object pfld24: TppField
      FieldAlias = '_EmployerId'
      FieldName = '_EmployerId'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object pfld25: TppField
      FieldAlias = '_WorkShopId'
      FieldName = '_WorkShopId'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object pfld26: TppField
      FieldAlias = 'RefInsuranceNo'
      FieldName = 'RefInsuranceNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object pfld27: TppField
      FieldAlias = 'FromType'
      FieldName = 'FromType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object pfld28: TppField
      FieldAlias = 'FromDate'
      FieldName = 'FromDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object pfld29: TppField
      FieldAlias = 'AidNo'
      FieldName = 'AidNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object pfld30: TppField
      FieldAlias = 'AidDate'
      FieldName = 'AidDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object pfld31: TppField
      FieldAlias = 'Note'
      FieldName = 'Note'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object pfld32: TppField
      FieldAlias = 'InsuranceWorkShopId'
      FieldName = 'InsuranceWorkShopId'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object pfld33: TppField
      FieldAlias = 'RefAssetsNo'
      FieldName = 'RefAssetsNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object pfld34: TppField
      FieldAlias = 'TechnicalCode'
      FieldName = 'TechnicalCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object pfld35: TppField
      FieldAlias = '__ShomareParvande'
      FieldName = '__ShomareParvande'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
  end
  object qry_Currencies: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT *  FROM  Currencies'
      'ORDER BY CurrenciesID'
      '')
    Left = 262
    Top = 290
  end
end

inherited Cnt_Contracts2F: TCnt_Contracts2F
  Left = 343
  Top = 129
  ActiveControl = grdLastPrice
  Caption = #1602#1585#1575#1585#1583#1575#1583' '#1582#1585#1740#1583' '#1576#1583#1608#1606' '#1578#1593#1583#1575#1583
  ClientHeight = 522
  ClientWidth = 856
  Position = poDesigned
  OnResize = FormResize
  ExplicitWidth = 864
  ExplicitHeight = 553
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 481
    Width = 856
    ExplicitTop = 483
    ExplicitWidth = 864
    object newPanel: TPanel [0]
      Left = 548
      Top = 1
      Width = 315
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object BitBtn3: TBitBtn
        AlignWithMargins = True
        Left = 239
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
        Left = 85
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
        Left = 162
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
        Left = 8
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
      Left = 385
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
      TabOrder = 5
      ExplicitLeft = 2
    end
    object DBNavigator1: TDBNavigator
      AlignWithMargins = True
      Left = 236
      Top = 7
      Width = 140
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      DataSource = srcContracts
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alClient
      Flat = True
      TabOrder = 2
      ExplicitWidth = 148
    end
    object btnCnt_ContractsProperties: TBitBtn
      AlignWithMargins = True
      Left = 79
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
      TabOrder = 4
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 159
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
      TabOrder = 3
    end
  end
  inherited Panel2: TPanel
    Width = 856
    ExplicitWidth = 864
    DesignSize = (
      856
      53)
    inherited ImgTemplate: TImage
      Left = 843
      ExplicitLeft = 827
    end
    inherited lblCaption: TLabel
      Left = 748
      ExplicitLeft = 748
    end
    inherited lblBaseDate: TLabel
      Left = 339
      ExplicitLeft = 342
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
      Width = 41
      Height = 13
      Caption = #1578#1575#1585#1610#1582' '#1579#1576#1578
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
      Left = 34
      Top = 26
      Width = 68
      Height = 21
      DataField = 'FromDate'
      DataSource = srcContracts
      TabOrder = 1
    end
    object BtnRecallSpecial: TBitBtn
      Left = 9
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
      TabOrder = 2
      OnClick = BtnRecallSpecialClick
    end
  end
  inherited Panel3: TPanel
    Width = 856
    Height = 428
    ExplicitWidth = 864
    ExplicitHeight = 430
    object PageControl1: TPageControl
      Left = 2
      Top = 2
      Width = 852
      Height = 424
      ActivePage = TabSheet4
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 860
      ExplicitHeight = 426
      object TabSheet1: TTabSheet
        Caption = #1602#1585#1575#1585#1583#1575#1583
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        DesignSize = (
          844
          396)
        object btnEmployerId: TSpeedButton
          Tag = 1
          Left = 633
          Top = 77
          Width = 23
          Height = 22
          Anchors = [akTop, akRight]
          Caption = '...'
          OnClick = btnEmployerIdClick
          ExplicitLeft = 618
        end
        object dbtxt_CustomerInfo: TDBText
          Left = 11
          Top = 80
          Width = 270
          Height = 16
          Anchors = [akLeft, akTop, akRight]
          BiDiMode = bdRightToLeft
          Color = clInactiveCaption
          DataField = '_CustomerInfo'
          DataSource = srcContracts
          ParentBiDiMode = False
          ParentColor = False
          Transparent = False
          ExplicitWidth = 255
        end
        object dbtxt_EmployerId: TDBText
          Left = 278
          Top = 80
          Width = 351
          Height = 16
          Anchors = [akTop, akRight]
          Color = clInactiveCaption
          DataField = '_EmployerId'
          DataSource = srcContracts
          ParentColor = False
          Transparent = False
          ExplicitLeft = 263
        end
        object Label2: TLabel
          Left = 741
          Top = 59
          Width = 54
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1578#1575#1585#1610#1582' '#1602#1585#1575#1585#1583#1575#1583
          FocusControl = edtContractDate
          ExplicitLeft = 726
        end
        object Label20: TLabel
          Left = 741
          Top = 34
          Width = 63
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1588#1605#1575#1585#1607' '#1602#1585#1575#1585#1583#1575#1583
          FocusControl = edtContractNo
          ExplicitLeft = 726
        end
        object Label21: TLabel
          Left = 741
          Top = 8
          Width = 20
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1711#1585#1608#1607
          ExplicitLeft = 726
        end
        object Label25: TLabel
          Left = 741
          Top = 136
          Width = 91
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1605#1608#1590#1608#1593' '#1603#1604#1610' '#1602#1585#1575#1585' '#1583#1575#1583
          FocusControl = edtContractTopic
          ExplicitLeft = 726
        end
        object Label3: TLabel
          Left = 741
          Top = 82
          Width = 66
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1603#1583#1591#1585#1601' '#1602#1585#1575#1585#1583#1575#1583
          FocusControl = edtEmployerId
          ExplicitLeft = 726
        end
        object Label6: TLabel
          Left = 741
          Top = 109
          Width = 52
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1578#1575#1585#1610#1582' '#1588#1585#1608#1593
          FocusControl = edtStartDate
          ExplicitLeft = 726
        end
        object Label7: TLabel
          Left = 351
          Top = 109
          Width = 43
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1578#1575#1585#1610#1582' '#1662#1575#1610#1575#1606
          FocusControl = edtEndDate
          ExplicitLeft = 336
        end
        object Label8: TLabel
          Left = 691
          Top = 180
          Width = 142
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1605#1583#1578' '#1586#1605#1575#1606' '#1587#1601#1575#1585#1588' '#1608' '#1578#1581#1608#1740#1604' '#1705#1575#1604#1575' '
          FocusControl = edtOrderDeliveryTime
          ExplicitLeft = 676
        end
        object Label9: TLabel
          Left = 351
          Top = 180
          Width = 109
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1581#1583#1575#1705#1579#1585#1586#1605#1575#1606' '#1606#1711#1607#1583#1575#1585#1740' '#1705#1575#1604#1575
          FocusControl = edtMaximumLife
          ExplicitLeft = 336
        end
        object Label10: TLabel
          Left = 125
          Top = 180
          Width = 62
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1581#1575#1588#1740#1607' '#1575#1740#1605#1606#1740
          FocusControl = edtMarginSafety
          ExplicitLeft = 110
        end
        object Label22: TLabel
          Left = 161
          Top = 34
          Width = 67
          Height = 13
          Caption = #1608#1590#1593#1610#1578' '#1602#1585#1575#1585#1583#1575#1583
          FocusControl = edtContractsStatus
        end
        object chkAllCusts: TCheckBox
          Left = 182
          Top = 6
          Width = 46
          Height = 17
          BiDiMode = bdRightToLeftNoAlign
          Caption = '&'#1607#1605#1607' '
          ParentBiDiMode = False
          TabOrder = 1
          OnClick = chkAllCustsClick
        end
        object cmbGroups: TComboBox
          Left = 229
          Top = 3
          Width = 507
          Height = 21
          AutoDropDown = True
          Style = csDropDownList
          Anchors = [akLeft, akTop, akRight]
          Color = 14024703
          TabOrder = 0
          OnClick = cmbGroupsClick
          OnEnter = cmbGroupsEnter
        end
        object edtContractNo: TDBEdit
          Left = 636
          Top = 30
          Width = 100
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'ContractNo'
          DataSource = srcContracts
          TabOrder = 2
          ExplicitLeft = 652
        end
        object edtContractDate: TDBEdit
          Left = 636
          Top = 55
          Width = 100
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'ContractDate'
          DataSource = srcContracts
          TabOrder = 3
          ExplicitLeft = 652
        end
        object edtContractTopic: TDBEdit
          Left = 243
          Top = 132
          Width = 492
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'ContractTopic'
          DataSource = srcContracts
          TabOrder = 7
          ExplicitLeft = 259
        end
        object edtEmployerId: TDBEdit
          Left = 659
          Top = 78
          Width = 77
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'EmployerId'
          DataSource = srcContracts
          TabOrder = 4
          OnKeyDown = edtEmployerIdKeyDown
          ExplicitLeft = 675
        end
        object edtEndDate: TDBEdit
          Left = 244
          Top = 105
          Width = 100
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'EndDate'
          DataSource = srcContracts
          TabOrder = 6
          ExplicitLeft = 260
        end
        object edtStartDate: TDBEdit
          Left = 636
          Top = 105
          Width = 100
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'StartDate'
          DataSource = srcContracts
          TabOrder = 5
          ExplicitLeft = 652
        end
        object Panel1: TPanel
          Left = 0
          Top = 211
          Width = 844
          Height = 39
          Align = alBottom
          TabOrder = 11
          ExplicitTop = 213
          ExplicitWidth = 852
          object lblPercent1: TLabel
            AlignWithMargins = True
            Left = 750
            Top = 11
            Width = 98
            Height = 13
            Margins.Top = 10
            Margins.Bottom = 7
            Align = alRight
            Caption = #1581#1575#1588#1740#1607' '#1587#1608#1583' '#1601#1585#1608#1588#1711#1575#1607
            FocusControl = edtPercent1
          end
          object lblPercent2: TLabel
            AlignWithMargins = True
            Left = 563
            Top = 11
            Width = 89
            Height = 13
            Margins.Top = 10
            Margins.Right = 6
            Margins.Bottom = 7
            Align = alRight
            Caption = #1581#1575#1588#1740#1607' '#1587#1608#1583' '#1588#1585#1705#1578
            FocusControl = edtPercent2
          end
          object lblPercent3: TLabel
            AlignWithMargins = True
            Left = 387
            Top = 11
            Width = 78
            Height = 13
            Margins.Top = 10
            Margins.Right = 6
            Margins.Bottom = 7
            Align = alRight
            Caption = #1581#1575#1588#1740#1607' '#1587#1608#1583' '#1705#1604#1740
            FocusControl = edtPercent3
          end
          object edtPercent1: TDBEdit
            AlignWithMargins = True
            Left = 668
            Top = 7
            Width = 69
            Height = 24
            Margins.Left = 10
            Margins.Top = 6
            Margins.Right = 10
            Margins.Bottom = 7
            Align = alRight
            DataField = 'Percent1'
            DataSource = srcContracts
            TabOrder = 0
            ExplicitHeight = 21
          end
          object edtPercent2: TDBEdit
            AlignWithMargins = True
            Left = 481
            Top = 7
            Width = 69
            Height = 24
            Margins.Left = 10
            Margins.Top = 6
            Margins.Right = 10
            Margins.Bottom = 7
            Align = alRight
            DataField = 'Percent2'
            DataSource = srcContracts
            TabOrder = 1
            ExplicitHeight = 21
          end
          object edtPercent3: TDBEdit
            AlignWithMargins = True
            Left = 305
            Top = 7
            Width = 69
            Height = 24
            Margins.Left = 10
            Margins.Top = 6
            Margins.Right = 10
            Margins.Bottom = 7
            Align = alRight
            DataField = 'Percent3'
            DataSource = srcContracts
            TabOrder = 2
            ExplicitHeight = 21
          end
        end
        object grp1: TGroupBox
          Left = 0
          Top = 250
          Width = 844
          Height = 146
          Align = alBottom
          Caption = #1588#1585#1581' '#1602#1585#1575#1585#1583#1575#1583
          TabOrder = 12
          ExplicitTop = 252
          ExplicitWidth = 852
          object dbmmoNote: TDBMemo
            Tag = 111
            Left = 2
            Top = 15
            Width = 848
            Height = 129
            Align = alClient
            DataField = 'Note'
            DataSource = srcContracts
            TabOrder = 0
          end
        end
        object edtOrderDeliveryTime: TDBEdit
          Left = 591
          Top = 176
          Width = 100
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'OrderDeliveryTime'
          DataSource = srcContracts
          TabOrder = 8
          ExplicitLeft = 607
        end
        object edtMaximumLife: TDBEdit
          Left = 244
          Top = 176
          Width = 100
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'MaximumLife'
          DataSource = srcContracts
          TabOrder = 9
          ExplicitLeft = 260
        end
        object edtMarginSafety: TDBEdit
          Left = 18
          Top = 176
          Width = 100
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'MarginSafety'
          DataSource = srcContracts
          TabOrder = 10
          ExplicitLeft = 34
        end
        object edtContractsStatus: TDBEdit
          Left = 11
          Top = 31
          Width = 144
          Height = 19
          Color = clInactiveCaption
          Ctl3D = False
          DataField = 'ContractsStatus'
          DataSource = srcContracts
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 13
        end
      end
      object TabSheet2: TTabSheet
        Caption = #1575#1580#1586#1575#1569' '#1602#1585#1575#1585#1583#1575#1583' '#1607#1575
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Splitter1: TSplitter
          Left = 625
          Top = 35
          Height = 302
          ExplicitLeft = 514
          ExplicitTop = 37
          ExplicitHeight = 305
        end
        object grdOperations: TDBGrid
          Tag = 111
          Left = 628
          Top = 35
          Width = 224
          Height = 302
          Align = alClient
          DataSource = srcOperations
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnEditButtonClick = grdOperationsEditButtonClick
          OnKeyPress = grdOperationsKeyPress
          Columns = <
            item
              Alignment = taLeftJustify
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'OperationId'
              Width = 37
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_StuffName'
              Width = 47
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_UnitName'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_Carton'
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_Basis4CalculationFormRow'
              Width = 74
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Percent1'
              Width = 103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Percent2'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Percent3'
              Width = 83
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BasePrice'
              Width = 122
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OverheadPrice'
              Width = 81
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TotalPrice'
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ContractOperationNote'
              Width = 47
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DiscountPercent'
              Width = 63
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LeadTime'
              Visible = True
            end>
        end
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 852
          Height = 35
          Align = alTop
          TabOrder = 1
          object txt_CustomerInfo: TDBText
            AlignWithMargins = True
            Left = 4
            Top = 7
            Width = 255
            Height = 21
            Margins.Top = 6
            Margins.Bottom = 6
            Align = alLeft
            BiDiMode = bdRightToLeft
            Color = clInactiveCaption
            DataField = '_CustomerInfo'
            DataSource = srcContracts
            ParentBiDiMode = False
            ParentColor = False
            Transparent = False
            ExplicitLeft = 11
            ExplicitTop = 9
            ExplicitHeight = 16
          end
          object txt_EmployerId: TDBText
            AlignWithMargins = True
            Left = 265
            Top = 7
            Width = 428
            Height = 21
            Margins.Top = 6
            Margins.Bottom = 6
            Align = alClient
            Color = clInactiveCaption
            DataField = '_EmployerId'
            DataSource = srcContracts
            ParentColor = False
            Transparent = False
            ExplicitLeft = 263
            ExplicitTop = 9
            ExplicitWidth = 351
            ExplicitHeight = 16
          end
          object Label5: TLabel
            AlignWithMargins = True
            Left = 782
            Top = 11
            Width = 66
            Height = 13
            Margins.Top = 10
            Margins.Bottom = 6
            Align = alRight
            Alignment = taRightJustify
            Caption = #1603#1583#1591#1585#1601' '#1602#1585#1575#1585#1583#1575#1583
            FocusControl = DBEdit1
          end
          object DBEdit1: TDBEdit
            AlignWithMargins = True
            Left = 699
            Top = 7
            Width = 77
            Height = 19
            Margins.Top = 6
            Margins.Bottom = 6
            Align = alRight
            Color = clInactiveCaption
            Ctl3D = False
            DataField = 'EmployerId'
            DataSource = srcContracts
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            OnKeyDown = edtEmployerIdKeyDown
          end
        end
        object Panel5: TPanel
          Left = 0
          Top = 356
          Width = 852
          Height = 42
          Align = alBottom
          TabOrder = 2
          object BitBtn2: TBitBtn
            AlignWithMargins = True
            Left = 4
            Top = 7
            Width = 75
            Height = 28
            Margins.Top = 6
            Margins.Bottom = 6
            Align = alLeft
            Caption = #1578#1585#1578#1610#1576
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006A00
              00006A0000006A000000FF00FF006A0000006A0000006A000000FFFFFF00FF00
              FF00FF00FF00FF00FF0000580300FF00FF00FF00FF00FF00FF00FFFFFF006A6A
              6A006A000000FF00FF00FF00FF00FF00FF00980000006A6A6A00FF00FF00FF00
              FF00FF00FF00005803006AFF6A0000580300FF00FF00FF00FF00FF00FF00FF00
              FF006A6A6A006A0000006A0000006A0000006A000000FF00FF00FF00FF00FF00
              FF00FF00FF006AFF6A006AB650000084000000580300FF00FF00FFFFFF00FF00
              FF00FF00FF006A000000FF00FF00980000006A000000FF00FF00FFFFFF00FF00
              FF00FF00FF006AFF6A006AB650000084000000580300FF00FF00FFFFFF00FF00
              FF00FF00FF00980000006A0000006A000000FF00FF00FF00FF00FF00FF000058
              0300005803000058030000580300005803000058030000580300FF00FF00FF00
              FF00FF00FF006A6A6A006A0000006A6A6A00FF00FF00FF00FF00FFFFFF00FF00
              FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF0098000000FF00FF00FF00FF00FF00FF00FFFFFF00FF00
              FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FFFFFF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF000000
              6A0000006A0000006A0000006A0000006A0000006A00FF00FF00FFFFFF00FF00
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
            TabOrder = 0
            OnClick = BitBtn2Click
          end
          object BitBtn9: TBitBtn
            AlignWithMargins = True
            Left = 85
            Top = 7
            Width = 75
            Height = 28
            Margins.Top = 6
            Margins.Bottom = 6
            Action = actSearch_
            Align = alLeft
            Caption = #1580#1587#1578#1580#1608
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00636B
              7300C69C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006394B500218C
              EF002173B500CE9C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF004AB5FF0042A5
              FF00218CEF007B849400CE9C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0052BD
              FF005ABDFF00218CEF002173B500CE9C9400FF00FF00FF00FF00FF00FF00FF00
              FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0031A5
              FF0052BDFF0042A5FF00218CEF0084849400CE9C9400FF00FF00FF00FF00FF00
              FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FFFFFF0052BDFF005ABDFF003184D60052636B00FF00FF009C6B6B00CEA5
              9C00D6B5A500CE9C9C00C6949400FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0031A5FF0052BDFF00C6CEDE009C9C9C00AD8C8400E7D6BD00FFFF
              D600FFFFDE00FFFFD600EFDEC600FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00C6ADAD00CEA59400FFE7BD00FFF7CE00FFFF
              D600FFFFD600FFFFDE00FFFFE700FFFFFF00C6A5A500FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00BD8C8C00EFDEB500F7D6AD00FFF7CE00FFFF
              D600FFFFDE00FFFFEF00FFFFF700FFFFFF00F7EFDE00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00E7CEAD00FFEFBD00F7CE9C00FFEFC600FFFF
              D600FFFFDE00FFFFF700FFFFF700FFFFDE00FFFFDE00C6949400FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00EFD6B500FFE7B500F7C68C00F7DEB500FFFF
              D600FFFFDE00FFFFEF00FFFFEF00FFFFDE00FFFFDE00BD9C8C00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00E7CEAD00FFEFBD00EFBD8400F7C69400FFEF
              C600FFFFD600FFFFD600FFFFD600FFFFD600FFFFDE00C6949400FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00D6ADA500FFEFBD00F7DEAD00F7CE9C00F7D6
              A500F7E7BD00FFFFD600FFFFD600FFFFD600FFFFD600FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00C69C8C00FFFFFF00FFFFFF00F7C6
              9400EFBD8400F7C69400F7D6AD00FFEFC600BD9C8C00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00EFEFE700FFFFEF00FFE7
              B500F7DEAD00FFE7B500FFEFBD00C69C9400FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C69C
              8C00CEA59C00C69C9400FF00FF00FF00FF00FF00FF00FF00FF00}
            TabOrder = 1
          end
          object BitBtn10: TBitBtn
            AlignWithMargins = True
            Left = 166
            Top = 7
            Width = 75
            Height = 28
            Margins.Top = 6
            Margins.Bottom = 6
            Align = alLeft
            Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
            TabOrder = 2
            OnClick = BitBtn10Click
          end
          object newPanelO: TPanel
            Left = 375
            Top = 1
            Width = 476
            Height = 40
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            object BitBtn1: TBitBtn
              AlignWithMargins = True
              Left = 400
              Top = 6
              Width = 75
              Height = 28
              Margins.Left = 1
              Margins.Top = 6
              Margins.Right = 1
              Margins.Bottom = 6
              Action = DataSetInsert2
              Align = alRight
              Caption = #1580#1583#1610#1583
              TabOrder = 0
            end
            object BitBtn11: TBitBtn
              AlignWithMargins = True
              Left = 246
              Top = 6
              Width = 75
              Height = 28
              Margins.Left = 1
              Margins.Top = 6
              Margins.Right = 1
              Margins.Bottom = 6
              Action = DataSetDelete2
              Align = alRight
              Caption = #1581#1584#1601' '#1705#1575#1604#1575
              TabOrder = 1
            end
            object BitBtn12: TBitBtn
              AlignWithMargins = True
              Left = 323
              Top = 6
              Width = 75
              Height = 28
              Margins.Left = 1
              Margins.Top = 6
              Margins.Right = 1
              Margins.Bottom = 6
              Action = DataSetEdit2
              Align = alRight
              Caption = #1608#1610#1585#1575#1610#1588
              TabOrder = 2
            end
            object BitBtn13: TBitBtn
              AlignWithMargins = True
              Left = 169
              Top = 6
              Width = 75
              Height = 28
              Hint = ' '
              Margins.Left = 1
              Margins.Top = 6
              Margins.Right = 1
              Margins.Bottom = 6
              Align = alRight
              Caption = #1582#1608#1575#1606#1583#1606' Excel'
              TabOrder = 3
              OnClick = BitBtn13Click
            end
            object BitBtn29: TBitBtn
              AlignWithMargins = True
              Left = 92
              Top = 6
              Width = 75
              Height = 28
              Margins.Left = 1
              Margins.Top = 6
              Margins.Right = 1
              Margins.Bottom = 6
              Action = actSelectAll
              Align = alRight
              Caption = #1575#1606#1578#1582#1575#1576' '#1607#1605#1607
              TabOrder = 4
            end
            object BitBtn35: TBitBtn
              AlignWithMargins = True
              Left = 15
              Top = 6
              Width = 75
              Height = 28
              Margins.Left = 1
              Margins.Top = 6
              Margins.Right = 1
              Margins.Bottom = 6
              Action = actDeleteAll
              Align = alRight
              Caption = #1581#1584#1601' '#1705#1604#1740
              TabOrder = 5
            end
          end
          object okPanelO: TPanel
            Left = 212
            Top = 1
            Width = 163
            Height = 40
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 4
            DesignSize = (
              163
              40)
            object BitBtn14: TBitBtn
              Left = 86
              Top = 8
              Width = 75
              Height = 25
              Action = DataSetPost2
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
            object BitBtn15: TBitBtn
              Left = 6
              Top = 8
              Width = 75
              Height = 25
              Action = DataSetCancel2
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
        end
        object Panel6: TPanel
          Left = 0
          Top = 35
          Width = 625
          Height = 300
          Align = alLeft
          TabOrder = 3
          ExplicitHeight = 302
          object Label1: TLabel
            Left = 63
            Top = 56
            Width = 40
            Height = 13
            Caption = #1578#1608#1590#1740#1581#1575#1578
            FocusControl = edtINote
          end
          object grdOperationItems: TDBGrid
            Tag = 111
            Left = 1
            Top = 1
            Width = 623
            Height = 36
            Align = alClient
            DataSource = srcOperationItems
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnEditButtonClick = grdOperationItemsEditButtonClick
            OnKeyPress = grdOperationsKeyPress
            Columns = <
              item
                DropDownRows = 9
                Expanded = False
                FieldName = 'ItemKind'
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'IStuffCount'
                Visible = True
              end
              item
                ButtonStyle = cbsEllipsis
                Expanded = False
                FieldName = 'IStuffCode'
                Width = 92
                Visible = True
              end
              item
                Expanded = False
                FieldName = '_StuffName'
                Width = 48
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'IAmount'
                Width = 59
                Visible = True
              end
              item
                Expanded = False
                FieldName = '_UnitName'
                Width = 66
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'INote2'
                Width = 85
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'INote'
                Width = 45
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'IBuyEffect'
                PickList.Strings = (
                  #1606#1583#1575#1585#1583
                  #1583#1575#1585#1583)
                Width = 45
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ISellEffect'
                PickList.Strings = (
                  #1606#1583#1575#1585#1583
                  #1583#1575#1585#1583)
                Width = 55
                Visible = True
              end>
          end
          object Panel7: TPanel
            Left = 1
            Top = 79
            Width = 623
            Height = 42
            Align = alBottom
            TabOrder = 1
            object pnlContractOperationItems: TPanel
              Left = 182
              Top = 1
              Width = 440
              Height = 40
              Align = alRight
              AutoSize = True
              TabOrder = 3
              object newPanelOI: TPanel
                Left = 155
                Top = 1
                Width = 284
                Height = 38
                Align = alRight
                AutoSize = True
                BevelOuter = bvNone
                TabOrder = 0
                object BitBtn19: TBitBtn
                  AlignWithMargins = True
                  Left = 214
                  Top = 6
                  Width = 69
                  Height = 26
                  Margins.Left = 1
                  Margins.Top = 6
                  Margins.Right = 1
                  Margins.Bottom = 6
                  Action = DataSetInsert3
                  Align = alRight
                  Caption = #1580#1583#1610#1583
                  TabOrder = 0
                end
                object BitBtn20: TBitBtn
                  AlignWithMargins = True
                  Left = 72
                  Top = 6
                  Width = 69
                  Height = 26
                  Margins.Left = 1
                  Margins.Top = 6
                  Margins.Right = 1
                  Margins.Bottom = 6
                  Action = DataSetDelete3
                  Align = alRight
                  Caption = #1581#1584#1601' '#1705#1575#1604#1575
                  TabOrder = 1
                end
                object BitBtn21: TBitBtn
                  AlignWithMargins = True
                  Left = 143
                  Top = 6
                  Width = 69
                  Height = 26
                  Margins.Left = 1
                  Margins.Top = 6
                  Margins.Right = 1
                  Margins.Bottom = 6
                  Action = DataSetEdit3
                  Align = alRight
                  Caption = #1608#1610#1585#1575#1610#1588
                  TabOrder = 2
                end
                object BitBtn22: TBitBtn
                  AlignWithMargins = True
                  Left = 1
                  Top = 6
                  Width = 69
                  Height = 26
                  Hint = ' '
                  Margins.Left = 1
                  Margins.Top = 6
                  Margins.Right = 1
                  Margins.Bottom = 6
                  Align = alRight
                  Caption = #1582#1608#1575#1606#1583#1606' Excel'
                  TabOrder = 3
                  OnClick = BitBtn22Click
                end
              end
              object okPanelOI: TPanel
                Left = 1
                Top = 1
                Width = 154
                Height = 38
                Align = alRight
                AutoSize = True
                BevelOuter = bvNone
                TabOrder = 1
                object BitBtn23: TBitBtn
                  AlignWithMargins = True
                  Left = 78
                  Top = 6
                  Width = 75
                  Height = 26
                  Margins.Left = 1
                  Margins.Top = 6
                  Margins.Right = 1
                  Margins.Bottom = 6
                  Action = DataSetPost3
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
                object BitBtn24: TBitBtn
                  AlignWithMargins = True
                  Left = 1
                  Top = 6
                  Width = 75
                  Height = 26
                  Margins.Left = 1
                  Margins.Top = 6
                  Margins.Right = 1
                  Margins.Bottom = 6
                  Action = DataSetCancel3
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
              end
            end
            object BitBtn16: TBitBtn
              AlignWithMargins = True
              Left = 4
              Top = 7
              Width = 69
              Height = 28
              Margins.Top = 6
              Margins.Bottom = 6
              Align = alLeft
              Caption = #1578#1585#1578#1610#1576
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006A00
                00006A0000006A000000FF00FF006A0000006A0000006A000000FFFFFF00FF00
                FF00FF00FF00FF00FF0000580300FF00FF00FF00FF00FF00FF00FFFFFF006A6A
                6A006A000000FF00FF00FF00FF00FF00FF00980000006A6A6A00FF00FF00FF00
                FF00FF00FF00005803006AFF6A0000580300FF00FF00FF00FF00FF00FF00FF00
                FF006A6A6A006A0000006A0000006A0000006A000000FF00FF00FF00FF00FF00
                FF00FF00FF006AFF6A006AB650000084000000580300FF00FF00FFFFFF00FF00
                FF00FF00FF006A000000FF00FF00980000006A000000FF00FF00FFFFFF00FF00
                FF00FF00FF006AFF6A006AB650000084000000580300FF00FF00FFFFFF00FF00
                FF00FF00FF00980000006A0000006A000000FF00FF00FF00FF00FF00FF000058
                0300005803000058030000580300005803000058030000580300FF00FF00FF00
                FF00FF00FF006A6A6A006A0000006A6A6A00FF00FF00FF00FF00FFFFFF00FF00
                FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF0098000000FF00FF00FF00FF00FF00FF00FFFFFF00FF00
                FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FFFFFF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF000000
                6A0000006A0000006A0000006A0000006A0000006A00FF00FF00FFFFFF00FF00
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
              TabOrder = 0
              OnClick = BitBtn16Click
            end
            object BitBtn17: TBitBtn
              AlignWithMargins = True
              Left = 79
              Top = 7
              Width = 69
              Height = 28
              Margins.Top = 6
              Margins.Bottom = 6
              Action = actSearch_
              Align = alLeft
              Caption = #1580#1587#1578#1580#1608
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00636B
                7300C69C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006394B500218C
                EF002173B500CE9C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF004AB5FF0042A5
                FF00218CEF007B849400CE9C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0052BD
                FF005ABDFF00218CEF002173B500CE9C9400FF00FF00FF00FF00FF00FF00FF00
                FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0031A5
                FF0052BDFF0042A5FF00218CEF0084849400CE9C9400FF00FF00FF00FF00FF00
                FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FFFFFF0052BDFF005ABDFF003184D60052636B00FF00FF009C6B6B00CEA5
                9C00D6B5A500CE9C9C00C6949400FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0031A5FF0052BDFF00C6CEDE009C9C9C00AD8C8400E7D6BD00FFFF
                D600FFFFDE00FFFFD600EFDEC600FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00C6ADAD00CEA59400FFE7BD00FFF7CE00FFFF
                D600FFFFD600FFFFDE00FFFFE700FFFFFF00C6A5A500FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00BD8C8C00EFDEB500F7D6AD00FFF7CE00FFFF
                D600FFFFDE00FFFFEF00FFFFF700FFFFFF00F7EFDE00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00E7CEAD00FFEFBD00F7CE9C00FFEFC600FFFF
                D600FFFFDE00FFFFF700FFFFF700FFFFDE00FFFFDE00C6949400FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00EFD6B500FFE7B500F7C68C00F7DEB500FFFF
                D600FFFFDE00FFFFEF00FFFFEF00FFFFDE00FFFFDE00BD9C8C00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00E7CEAD00FFEFBD00EFBD8400F7C69400FFEF
                C600FFFFD600FFFFD600FFFFD600FFFFD600FFFFDE00C6949400FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00D6ADA500FFEFBD00F7DEAD00F7CE9C00F7D6
                A500F7E7BD00FFFFD600FFFFD600FFFFD600FFFFD600FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00C69C8C00FFFFFF00FFFFFF00F7C6
                9400EFBD8400F7C69400F7D6AD00FFEFC600BD9C8C00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00EFEFE700FFFFEF00FFE7
                B500F7DEAD00FFE7B500FFEFBD00C69C9400FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C69C
                8C00CEA59C00C69C9400FF00FF00FF00FF00FF00FF00FF00FF00}
              TabOrder = 1
              OnClick = BitBtn17Click
            end
            object BitBtn18: TBitBtn
              AlignWithMargins = True
              Left = 229
              Top = 7
              Width = 69
              Height = 28
              Margins.Top = 6
              Margins.Bottom = 6
              Action = actCopy
              Align = alLeft
              Caption = #1705#1662#1740' '#1587#1591#1585
              TabOrder = 2
            end
            object BitBtn36: TBitBtn
              AlignWithMargins = True
              Left = 154
              Top = 7
              Width = 69
              Height = 28
              Margins.Top = 6
              Margins.Bottom = 6
              Align = alLeft
              Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
              TabOrder = 4
              OnClick = BitBtn18Click
            end
          end
          object grdOptFamilies: TDBGrid
            Tag = 111
            Left = 1
            Top = 121
            Width = 623
            Height = 138
            Align = alBottom
            DataSource = srcOptFamilies
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnEditButtonClick = grdOptFamiliesEditButtonClick
            OnKeyPress = grdOperationsKeyPress
            Columns = <
              item
                ButtonStyle = cbsEllipsis
                Expanded = False
                FieldName = 'FStuffCode'
                Width = 196
                Visible = True
              end
              item
                Expanded = False
                FieldName = '_StuffName'
                Width = 322
                Visible = True
              end>
          end
          object Panel9: TPanel
            Left = 1
            Top = 259
            Width = 623
            Height = 42
            Align = alBottom
            TabOrder = 3
            object pnlOptFamilies: TPanel
              Left = 253
              Top = 1
              Width = 369
              Height = 40
              Align = alRight
              AutoSize = True
              TabOrder = 3
              object okPanelF: TPanel
                Left = 1
                Top = 1
                Width = 154
                Height = 38
                Align = alRight
                AutoSize = True
                BevelOuter = bvNone
                TabOrder = 1
                object BitBtn31: TBitBtn
                  AlignWithMargins = True
                  Left = 1
                  Top = 6
                  Width = 75
                  Height = 26
                  Margins.Left = 1
                  Margins.Top = 6
                  Margins.Right = 1
                  Margins.Bottom = 6
                  Action = DataSetCancel4
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
                object BitBtn30: TBitBtn
                  AlignWithMargins = True
                  Left = 78
                  Top = 6
                  Width = 75
                  Height = 26
                  Margins.Left = 1
                  Margins.Top = 6
                  Margins.Right = 1
                  Margins.Bottom = 6
                  Action = DataSetPost4
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
              end
              object newPanelF: TPanel
                Left = 155
                Top = 1
                Width = 213
                Height = 38
                Align = alRight
                AutoSize = True
                BevelOuter = bvNone
                TabOrder = 0
                object BitBtn25: TBitBtn
                  AlignWithMargins = True
                  Left = 143
                  Top = 6
                  Width = 69
                  Height = 26
                  Margins.Left = 1
                  Margins.Top = 6
                  Margins.Right = 1
                  Margins.Bottom = 6
                  Action = DataSetInsert4
                  Align = alRight
                  Caption = #1580#1583#1610#1583
                  TabOrder = 0
                end
                object BitBtn27: TBitBtn
                  AlignWithMargins = True
                  Left = 1
                  Top = 6
                  Width = 69
                  Height = 26
                  Margins.Left = 1
                  Margins.Top = 6
                  Margins.Right = 1
                  Margins.Bottom = 6
                  Action = DataSetDelete4
                  Align = alRight
                  Caption = #1581#1584#1601' '#1705#1575#1604#1575
                  TabOrder = 1
                end
                object BitBtn28: TBitBtn
                  AlignWithMargins = True
                  Left = 72
                  Top = 6
                  Width = 69
                  Height = 26
                  Margins.Left = 1
                  Margins.Top = 6
                  Margins.Right = 1
                  Margins.Bottom = 6
                  Action = DataSetEdit4
                  Align = alRight
                  Caption = #1608#1610#1585#1575#1610#1588
                  TabOrder = 2
                end
              end
            end
            object BitBtn32: TBitBtn
              AlignWithMargins = True
              Left = 4
              Top = 7
              Width = 69
              Height = 28
              Margins.Top = 6
              Margins.Bottom = 6
              Align = alLeft
              Caption = #1578#1585#1578#1610#1576
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006A00
                00006A0000006A000000FF00FF006A0000006A0000006A000000FFFFFF00FF00
                FF00FF00FF00FF00FF0000580300FF00FF00FF00FF00FF00FF00FFFFFF006A6A
                6A006A000000FF00FF00FF00FF00FF00FF00980000006A6A6A00FF00FF00FF00
                FF00FF00FF00005803006AFF6A0000580300FF00FF00FF00FF00FF00FF00FF00
                FF006A6A6A006A0000006A0000006A0000006A000000FF00FF00FF00FF00FF00
                FF00FF00FF006AFF6A006AB650000084000000580300FF00FF00FFFFFF00FF00
                FF00FF00FF006A000000FF00FF00980000006A000000FF00FF00FFFFFF00FF00
                FF00FF00FF006AFF6A006AB650000084000000580300FF00FF00FFFFFF00FF00
                FF00FF00FF00980000006A0000006A000000FF00FF00FF00FF00FF00FF000058
                0300005803000058030000580300005803000058030000580300FF00FF00FF00
                FF00FF00FF006A6A6A006A0000006A6A6A00FF00FF00FF00FF00FFFFFF00FF00
                FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF0098000000FF00FF00FF00FF00FF00FF00FFFFFF00FF00
                FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FFFFFF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF000000
                6A0000006A0000006A0000006A0000006A0000006A00FF00FF00FFFFFF00FF00
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
              TabOrder = 0
              OnClick = BitBtn32Click
            end
            object BitBtn33: TBitBtn
              AlignWithMargins = True
              Left = 79
              Top = 7
              Width = 69
              Height = 28
              Hint = ' '
              Margins.Top = 6
              Margins.Bottom = 6
              Align = alLeft
              Caption = #1580#1587#1578#1580#1608
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00636B
                7300C69C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006394B500218C
                EF002173B500CE9C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF004AB5FF0042A5
                FF00218CEF007B849400CE9C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0052BD
                FF005ABDFF00218CEF002173B500CE9C9400FF00FF00FF00FF00FF00FF00FF00
                FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0031A5
                FF0052BDFF0042A5FF00218CEF0084849400CE9C9400FF00FF00FF00FF00FF00
                FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FFFFFF0052BDFF005ABDFF003184D60052636B00FF00FF009C6B6B00CEA5
                9C00D6B5A500CE9C9C00C6949400FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0031A5FF0052BDFF00C6CEDE009C9C9C00AD8C8400E7D6BD00FFFF
                D600FFFFDE00FFFFD600EFDEC600FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00C6ADAD00CEA59400FFE7BD00FFF7CE00FFFF
                D600FFFFD600FFFFDE00FFFFE700FFFFFF00C6A5A500FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00BD8C8C00EFDEB500F7D6AD00FFF7CE00FFFF
                D600FFFFDE00FFFFEF00FFFFF700FFFFFF00F7EFDE00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00E7CEAD00FFEFBD00F7CE9C00FFEFC600FFFF
                D600FFFFDE00FFFFF700FFFFF700FFFFDE00FFFFDE00C6949400FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00EFD6B500FFE7B500F7C68C00F7DEB500FFFF
                D600FFFFDE00FFFFEF00FFFFEF00FFFFDE00FFFFDE00BD9C8C00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00E7CEAD00FFEFBD00EFBD8400F7C69400FFEF
                C600FFFFD600FFFFD600FFFFD600FFFFD600FFFFDE00C6949400FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00D6ADA500FFEFBD00F7DEAD00F7CE9C00F7D6
                A500F7E7BD00FFFFD600FFFFD600FFFFD600FFFFD600FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00C69C8C00FFFFFF00FFFFFF00F7C6
                9400EFBD8400F7C69400F7D6AD00FFEFC600BD9C8C00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00EFEFE700FFFFEF00FFE7
                B500F7DEAD00FFE7B500FFEFBD00C69C9400FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C69C
                8C00CEA59C00C69C9400FF00FF00FF00FF00FF00FF00FF00FF00}
              TabOrder = 1
              OnClick = BitBtn33Click
            end
            object BitBtn34: TBitBtn
              AlignWithMargins = True
              Left = 154
              Top = 7
              Width = 69
              Height = 28
              Margins.Top = 6
              Margins.Bottom = 6
              Align = alLeft
              Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
              TabOrder = 2
              OnClick = BitBtn34Click
            end
          end
          object edtINote: TDBEdit
            Tag = 111
            Left = 1
            Top = 58
            Width = 623
            Height = 21
            Align = alBottom
            DataField = 'INote'
            DataSource = srcOperationItems
            TabOrder = 4
          end
          object edtINote2: TDBEdit
            Tag = 111
            Left = 1
            Top = 37
            Width = 623
            Height = 21
            Align = alBottom
            DataField = 'INote2'
            DataSource = srcOperationItems
            TabOrder = 5
          end
        end
        object StatusBar1: TStatusBar
          Left = 0
          Top = 335
          Width = 844
          Height = 19
          Panels = <>
          ExplicitTop = 337
          ExplicitWidth = 852
        end
      end
      object TabSheet3: TTabSheet
        Caption = #1604#1740#1587#1578' '#1602#1585#1575#1585#1583#1575#1583#1607#1575
        ImageIndex = 2
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object DBGrid1: TDBGrid
          Tag = 111
          Left = 0
          Top = 0
          Width = 852
          Height = 358
          Align = alClient
          DataSource = srcContracts
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnEditButtonClick = grdOperationsEditButtonClick
          Columns = <
            item
              Expanded = False
              FieldName = 'CaseNo'
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FromDate'
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ContractNo'
              Width = 66
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ContractDate'
              Width = 58
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'StartDate'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EndDate'
              Width = 49
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EmployerId'
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_EmployerId'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ContractTopic'
              Width = 95
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Percent1'
              Width = 37
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Percent2'
              Width = 44
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ContractsStatus'
              Visible = True
            end>
        end
        object Panel8: TPanel
          Left = 0
          Top = 358
          Width = 852
          Height = 40
          Align = alBottom
          TabOrder = 1
          object BitBtn26: TBitBtn
            AlignWithMargins = True
            Left = 4
            Top = 7
            Width = 138
            Height = 26
            Margins.Top = 6
            Margins.Bottom = 6
            Align = alLeft
            Caption = #1578#1594#1740#1740#1585' '#1608#1590#1593#1740#1578
            TabOrder = 0
            OnClick = BitBtn26Click
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = #1604#1740#1587#1578' '#1570#1582#1585#1740#1606' '#1602#1740#1605#1578' '#1705#1575#1604#1575#1607#1575
        ImageIndex = 3
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object grdLastPrice: TCedarDbgrid
          Left = 0
          Top = 0
          Width = 852
          Height = 363
          Align = alClient
          BorderStyle = bsNone
          DataSource = srcLastPrice
          DynProps = <>
          Flat = True
          FooterParams.FillStyle = cfstGradientEh
          FooterParams.Font.Charset = DEFAULT_CHARSET
          FooterParams.Font.Color = clWindowText
          FooterParams.Font.Height = -12
          FooterParams.Font.Name = 'Tahoma'
          FooterParams.Font.Style = [fsBold]
          FooterParams.ParentFont = False
          FooterParams.VertLines = False
          GridLineParams.VertEmptySpaceStyle = dessNonEh
          HorzScrollBar.ExtraPanel.Visible = True
          IndicatorTitle.ShowDropDownSign = True
          IndicatorTitle.TitleButton = True
          OddRowColor = clHighlightText
          RowDetailPanel.MaxHeight = 1
          RowHeight = 18
          SearchPanel.Enabled = True
          SearchPanel.Location = splHorzScrollBarExtraPanelEh
          SelectionDrawParams.SelectionStyle = gsdsClassicEh
          SortLocal = True
          TabOrder = 0
          TitleParams.MultiTitle = True
          OnDblClick = actShowExecute
          ActiveSearchPanel = True
          SelectFooterIndex = 0
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'c_stuffcode'
              Footers = <>
              Width = 60
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'c_StuffName'
              Footers = <>
              Width = 60
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'St1Name'
              Footers = <>
              Width = 60
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'EmployerId'
              Footers = <>
              Width = 60
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'EmployerName'
              Footers = <>
              Width = 60
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'UnitName'
              Footers = <>
              Width = 60
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'UnitName2'
              Footers = <>
              Width = 60
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Carton'
              Footers = <>
              Width = 60
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'ConsumerPrice'
              Footers = <>
              Width = 60
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'PurchasePrice'
              Footers = <>
              Width = 60
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'OverheadPrice'
              Footers = <>
              Width = 60
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'CaseNo'
              Footers = <>
              Width = 60
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object Panel10: TPanel
          Left = 0
          Top = 363
          Width = 852
          Height = 35
          Align = alBottom
          TabOrder = 1
          object BitBtn37: TBitBtn
            Left = 776
            Top = 1
            Width = 75
            Height = 33
            Margins.Left = 1
            Margins.Top = 6
            Margins.Right = 1
            Margins.Bottom = 6
            Action = actFilter
            Align = alRight
            Caption = #1605#1581#1583#1608#1583#1607
            TabOrder = 0
          end
          object BitBtn38: TBitBtn
            Left = 701
            Top = 1
            Width = 75
            Height = 33
            Margins.Left = 1
            Margins.Top = 6
            Margins.Right = 1
            Margins.Bottom = 6
            Action = actShow
            Align = alRight
            Caption = #1606#1605#1575#1740#1588' '#1602#1585#1575#1585#1583#1575#1583
            TabOrder = 1
          end
        end
      end
    end
  end
  inherited ActionList: TActionList
    Left = 296
    object DataSetInsert2: TDataSetInsert [0]
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      Hint = ' '
      ShortCut = 113
      DataSource = srcOperations
    end
    object DataSetEdit2: TDataSetEdit [1]
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      Hint = ' '
      ShortCut = 115
      DataSource = srcOperations
    end
    object DataSetPost2: TDataSetPost [2]
      Category = 'Dataset'
      Caption = #1578#1575#1610#1610#1583
      Hint = ' '
      ShortCut = 119
      DataSource = srcOperations
    end
    object DataSetCancel2: TDataSetCancel [3]
      Category = 'Dataset'
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = ' '
      ShortCut = 27
      DataSource = srcOperations
    end
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcContracts
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcContracts
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcContracts
    end
    object DataSetDelete2: TDataSetDelete [8]
      Category = 'Dataset'
      Caption = #1581#1584#1601' '#1705#1575#1604#1575
      ImageIndex = 0
      DataSource = srcOperations
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcContracts
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcContracts
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
    object actBasis4CalculationFormulasF: TAction
      Caption = #1578#1593#1575#1585#1740#1601' '#1601#1585#1605#1608#1604' '#1580#1607#1578' '#1605#1581#1575#1587#1576#1607' '#1602#1740#1605#1578
      OnExecute = actBasis4CalculationFormulasFExecute
    end
    object DataSetInsert3: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      Hint = ' '
      ShortCut = 113
      DataSource = srcOperationItems
    end
    object DataSetEdit3: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      Hint = ' '
      ShortCut = 115
      DataSource = srcOperationItems
    end
    object DataSetPost3: TDataSetPost
      Category = 'Dataset'
      Caption = #1578#1575#1610#1610#1583
      Hint = ' '
      ShortCut = 119
      DataSource = srcOperationItems
    end
    object DataSetCancel3: TDataSetCancel
      Category = 'Dataset'
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = ' '
      ShortCut = 27
      DataSource = srcOperationItems
    end
    object DataSetDelete3: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601' '#1705#1575#1604#1575
      ImageIndex = 0
      DataSource = srcOperationItems
    end
    object DataSetInsert4: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      Hint = ' '
      ShortCut = 113
      DataSource = srcOptFamilies
    end
    object DataSetEdit4: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      Hint = ' '
      ShortCut = 115
      DataSource = srcOptFamilies
    end
    object DataSetPost4: TDataSetPost
      Category = 'Dataset'
      Caption = #1578#1575#1610#1610#1583
      Hint = ' '
      ShortCut = 119
      DataSource = srcOptFamilies
    end
    object DataSetCancel4: TDataSetCancel
      Category = 'Dataset'
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = ' '
      ShortCut = 27
      DataSource = srcOptFamilies
    end
    object DataSetDelete4: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601' '#1705#1575#1604#1575
      ImageIndex = 0
      DataSource = srcOptFamilies
    end
    object actSelectAll: TAction
      Caption = #1575#1606#1578#1582#1575#1576' '#1607#1605#1607
      OnExecute = actSelectAllExecute
    end
    object actDeleteAll: TAction
      Caption = #1581#1584#1601' '#1705#1604#1740
      OnExecute = actDeleteAllExecute
    end
    object actCopy: TAction
      Caption = #1705#1662#1740' '#1587#1591#1585
      OnExecute = actCopyExecute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actShow: TAction
      Caption = #1606#1605#1575#1740#1588' '#1602#1585#1575#1585#1583#1575#1583
      OnExecute = actShowExecute
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
    BeforeScroll = qryContractsBeforeScroll
    AfterScroll = qryContractsAfterScroll
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
    Left = 349
    Top = 155
    object qryContractsCaseNo: TIntegerField
      DisplayLabel = #1588#1606#1575#1587#1607' '#1602#1585#1575#1585#1583#1575#1583
      FieldName = 'CaseNo'
      Required = True
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
      Size = 100
    end
    object qryContractsInsertDate: TDateTimeField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1602#1585#1575#1585#1583#1575#1583
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
      DisplayLabel = #1591#1585#1601' '#1602#1585#1575#1585#1583#1575#1583
      FieldKind = fkLookup
      FieldName = '_EmployerId'
      LookupDataSet = qryCustomers1
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'EmployerId'
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
      DisplayLabel = #1578#1575#1585#1610#1582' '#1579#1576#1578
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
    object qryContractsTechnicalCode: TStringField
      FieldName = 'TechnicalCode'
      Size = 30
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
      LookupDataSet = qryCustomers1
      LookupKeyFields = 'CustID'
      LookupResultField = 'EconomicNumber'
      KeyFields = 'CaseNo'
      Lookup = True
    end
    object qryContracts_NationalID: TStringField
      FieldKind = fkLookup
      FieldName = '_NationalID'
      LookupDataSet = qryCustomers1
      LookupKeyFields = 'CustID'
      LookupResultField = 'NationalID'
      KeyFields = 'CaseNo'
      Size = 12
      Lookup = True
    end
    object qryContracts_Address: TStringField
      FieldKind = fkLookup
      FieldName = '_Address'
      LookupDataSet = qryCustomers1
      LookupKeyFields = 'CustID'
      LookupResultField = 'Address'
      KeyFields = 'CaseNo'
      Size = 200
      Lookup = True
    end
    object qryContracts_Tel: TStringField
      FieldKind = fkLookup
      FieldName = '_Tel'
      LookupDataSet = qryCustomers1
      LookupKeyFields = 'CustID'
      LookupResultField = 'Tel'
      KeyFields = 'CaseNo'
      Size = 30
      Lookup = True
    end
    object qryContractsPercent1: TBCDField
      DisplayLabel = #1583#1585#1589#1583'1'
      FieldName = 'Percent1'
      Precision = 18
    end
    object qryContractsPercent2: TBCDField
      DisplayLabel = #1583#1585#1589#1583'2'
      FieldName = 'Percent2'
      Precision = 18
    end
    object qryContractsOrderDeliveryTime: TIntegerField
      DisplayLabel = #1605#1583#1578' '#1586#1605#1575#1606' '#1587#1601#1575#1585#1588' '#1608' '#1578#1581#1608#1740#1604' '#1705#1575#1604#1575' '
      FieldName = 'OrderDeliveryTime'
    end
    object qryContractsMaximumLife: TIntegerField
      DisplayLabel = #1581#1583#1575#1705#1579#1585#1586#1605#1575#1606' '#1606#1711#1607#1583#1575#1585#1740' '#1705#1575#1604#1575
      FieldName = 'MaximumLife'
    end
    object qryContractsMarginSafety: TIntegerField
      DisplayLabel = #1581#1575#1588#1740#1607' '#1575#1740#1605#1606#1740
      FieldName = 'MarginSafety'
    end
    object qryContractsPercent3: TBCDField
      FieldName = 'Percent3'
      Precision = 18
    end
  end
  object srcContracts: TDataSource
    AutoEdit = False
    DataSet = qryContracts
    OnStateChange = srcContractsStateChange
    Left = 237
    Top = 285
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
    Left = 502
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
    Left = 424
    Top = 182
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
    Left = 283
    Top = 312
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
    Left = 451
    Top = 290
  end
  object PopMuPrint: TPopupMenu
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    Images = ImageList1
    ParentBiDiMode = False
    Left = 142
    Top = 289
  end
  object plnContractsProperties: TppDBPipeline
    DataSource = Cnt_ContractsPropertiesF.srcContractsProperties
    OpenDataSource = False
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'plnContractsProperties'
    Left = 531
    Top = 346
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
  object qryOperations: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeInsert = qryOperationsBeforeInsert
    AfterInsert = qryOperationsAfterInsert
    BeforeEdit = qryOperationsBeforeEdit
    BeforePost = qryOperationsBeforePost
    BeforeDelete = qryOperationsBeforeDelete
    AfterDelete = qryOperationsAfterDelete
    BeforeScroll = qryOperationsBeforeScroll
    AfterScroll = qryOperationsAfterScroll
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
      'SELECT *,  dbo.GetStuffName(OperationId) AS c_StuffName'
      '  FROM    Cnt.ContractOperations'
      'where CaseNo = :CaseNo')
    Left = 621
    Top = 235
    object qryOperationsContractOperationId: TIntegerField
      FieldName = 'ContractOperationId'
    end
    object qryOperationsCaseNo: TIntegerField
      FieldName = 'CaseNo'
    end
    object qryOperationsOperationId: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1705#1575#1604#1575
      FieldName = 'OperationId'
    end
    object qryOperationsc_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1588#1585#1581' '#1705#1575#1604#1575
      FieldName = 'c_StuffName'
      ReadOnly = True
      Size = 100
    end
    object qryOperations_StuffName: TStringField
      DisplayLabel = #1588#1585#1581' '#1705#1575#1604#1575
      FieldKind = fkLookup
      FieldName = '_StuffName'
      LookupDataSet = qryStuff_Unit
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'c_StuffName'
      KeyFields = 'OperationId'
      ReadOnly = True
      Required = True
      Size = 100
      Lookup = True
    end
    object qryOperations_UnitName: TStringField
      DisplayLabel = #1608#1575#1581#1583#1588#1605#1575#1585#1588
      FieldKind = fkLookup
      FieldName = '_UnitName'
      LookupDataSet = qryStuff_Unit
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'UnitName'
      KeyFields = 'OperationId'
      ReadOnly = True
      Size = 100
      Lookup = True
    end
    object qryOperations_Carton: TFloatField
      DisplayLabel = #1578#1593#1583#1575#1583' '#1583#1585' '#1705#1575#1585#1578#1606
      FieldKind = fkLookup
      FieldName = '_Carton'
      LookupDataSet = qryStuff_Unit
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'Carton'
      KeyFields = 'OperationId'
      Lookup = True
    end
    object qryOperations_SellPrice1: TCurrencyField
      FieldKind = fkLookup
      FieldName = '_SellPrice1'
      LookupDataSet = qryStuff_Unit
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'SellPrice1'
      KeyFields = 'OperationId'
      Lookup = True
    end
    object qryOperationsPercent1: TBCDField
      Tag = 3
      DisplayLabel = #1581#1575#1588#1740#1607' '#1587#1608#1583' '#1601#1585#1608#1588#1711#1575#1607
      FieldName = 'Percent1'
      OnChange = CalcPercent
      Precision = 18
    end
    object qryOperationsPercent2: TBCDField
      Tag = 3
      DisplayLabel = #1581#1575#1588#1740#1607' '#1587#1608#1583' '#1588#1585#1705#1578
      FieldName = 'Percent2'
      OnChange = CalcPercent
      Precision = 18
    end
    object qryOperationsPercent3: TBCDField
      Tag = 3
      DisplayLabel = #1581#1575#1588#1740#1607' '#1587#1608#1583' '#1705#1604#1740
      FieldName = 'Percent3'
      OnChange = CalcPercent
      Precision = 18
    end
    object qryOperationsBasePrice: TBCDField
      Tag = 3
      DisplayLabel = #1602#1740#1605#1578' '#1605#1589#1585#1601' '#1705#1606#1606#1583#1607' '#1606#1607#1575#1740#1740
      FieldName = 'BasePrice'
      OnChange = CalcPercent
      currency = True
      Precision = 19
    end
    object qryOperationsAmount: TBCDField
      Tag = 3
      DisplayLabel = #1578#1593#1583#1575#1583' '#1575#1588#1575#1606#1578#1740#1608#1606
      FieldName = 'Amount'
      Required = True
      Precision = 18
    end
    object qryOperationsOverheadPrice: TBCDField
      Tag = 3
      DisplayLabel = #1602#1740#1605#1578' '#1601#1585#1608#1588#1711#1575#1607
      FieldName = 'OverheadPrice'
      OnChange = CalcPercent
      currency = True
      Precision = 19
    end
    object qryOperationsTotalPrice: TBCDField
      Tag = 3
      DisplayLabel = #1602#1740#1605#1578' '#1582#1585#1740#1583
      FieldName = 'TotalPrice'
      Required = True
      currency = True
      Precision = 19
    end
    object qryOperationsStuffCount: TIntegerField
      Tag = 3
      DisplayLabel = #1578#1593#1583#1575#1583' '#1605#1576#1606#1575#1740' '#1605#1581#1575#1587#1576#1607' '#1575#1588#1575#1606#1578#1740#1608#1606
      FieldName = 'StuffCount'
    end
    object qryOperationsContractOperationNote: TWideStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'ContractOperationNote'
      Size = 500
    end
    object qryOperationsDiscountPercent: TBCDField
      Tag = 3
      DisplayLabel = #1583#1585#1589#1583' '#1578#1582#1601#1740#1601
      FieldName = 'DiscountPercent'
      Precision = 18
    end
    object qryOperationsStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1705#1583' '#1705#1575#1604#1575#1740' '#1575#1588#1575#1606#1578#1740#1608#1606
      FieldName = 'StuffCode'
    end
    object qryOperationsLeadTime: TIntegerField
      Tag = 3
      DisplayLabel = #1605#1583#1578' '#1586#1605#1575#1606' '#1587#1601#1575#1585#1588
      FieldName = 'LeadTime'
    end
    object qryOperationsUnitCode: TWordField
      Tag = 3
      FieldName = 'UnitCode'
    end
    object qryOperationsNumberOfUnit: TFloatField
      Tag = 3
      DisplayLabel = #1578#1593#1583#1575#1583' '#1583#1585' '#1608#1575#1581#1583
      FieldName = 'NumberOfUnit'
    end
    object qryOperationsBasis4CalculationFormRow: TIntegerField
      Tag = 3
      FieldName = 'Basis4CalculationFormRow'
    end
    object qryOperations_Basis4CalculationFormRow: TStringField
      DisplayLabel = #1605#1576#1606#1575#1740' '#1605#1581#1575#1587#1576#1607
      FieldKind = fkLookup
      FieldName = '_Basis4CalculationFormRow'
      LookupDataSet = qryBasis4CalculationsLookUp
      LookupKeyFields = 'FormRow'
      LookupResultField = 'Basis4CalculationCaption'
      KeyFields = 'Basis4CalculationFormRow'
      Size = 200
      Lookup = True
    end
  end
  object srcOperations: TDataSource
    DataSet = qryOperations
    OnStateChange = srcOperationsStateChange
    Left = 525
    Top = 266
  end
  object qryStuff_Unit: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT        StuffCoding.c_StuffCode, StuffCoding.c_StuffName, ' +
        'Units.UnitName, StuffCoding.SellPrice1, StuffCoding.n_UnitCode, ' +
        'StuffCoding.UnitCode2'
      '   ,StuffCoding.Carton'
      'FROM            StuffCoding INNER JOIN'
      
        '                         Units ON StuffCoding.n_UnitCode = Units' +
        '.UnitCode')
    Left = 58
    Top = 284
  end
  object qryBasis4Calculations: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'FormName'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT        Util.Basis4Calculations.Basis4CalculationID, Util.' +
        'Basis4Calculations.Basis4CalculationCaption, Util.Basis4Calculat' +
        'ions.FormName, Util.Basis4Calculations.FormRow, Util.Basis4Calcu' +
        'lations.CalcFieldKind, '
      
        '                         Util.Basis4Calculations.CalcOnChange, U' +
        'til.Basis4Calculations.Basis4CalculationFormulaID, Util.Basis4Ca' +
        'lculationFormulas.Calc4FieldName, Util.Basis4CalculationFormulas' +
        '.Basis4CalculationFormulaTxt'
      'FROM            Util.Basis4Calculations INNER JOIN'
      
        '                         Util.Basis4CalculationFormulas ON Util.' +
        'Basis4Calculations.Basis4CalculationFormulaID = Util.Basis4Calcu' +
        'lationFormulas.Basis4CalculationFormulaID'
      'WHERE        (Util.Basis4Calculations.FormName = :FormName  )')
    Left = 490
    Top = 148
    object qryBasis4CalculationsBasis4CalculationID: TIntegerField
      FieldName = 'Basis4CalculationID'
    end
    object qryBasis4CalculationsBasis4CalculationCaption: TWideStringField
      FieldName = 'Basis4CalculationCaption'
      Size = 200
    end
    object qryBasis4CalculationsFormName: TStringField
      FieldName = 'FormName'
      Size = 100
    end
    object qryBasis4CalculationsFormRow: TWordField
      FieldName = 'FormRow'
    end
    object qryBasis4CalculationsCalcFieldKind: TIntegerField
      FieldName = 'CalcFieldKind'
    end
    object qryBasis4CalculationsCalcOnChange: TStringField
      FieldName = 'CalcOnChange'
      Size = 200
    end
    object qryBasis4CalculationsBasis4CalculationFormulaID: TIntegerField
      FieldName = 'Basis4CalculationFormulaID'
    end
    object qryBasis4CalculationsCalc4FieldName: TStringField
      FieldName = 'Calc4FieldName'
      Size = 200
    end
    object qryBasis4CalculationsBasis4CalculationFormulaTxt: TWideStringField
      FieldName = 'Basis4CalculationFormulaTxt'
      Size = 4000
    end
  end
  object qryBasis4CalculationsLookUp: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'FormName'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end>
    SQL.Strings = (
      'SELECT DISTINCT FormRow, Basis4CalculationCaption, FormName'
      'FROM            Util.Basis4Calculations'
      'WHERE        (FormName = :FormName )')
    Left = 658
    Top = 140
  end
  object srcOperationItems: TDataSource
    DataSet = qryOperationItems
    OnStateChange = srcOperationItemsStateChange
    Left = 93
    Top = 178
  end
  object qryOperationItems: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeInsert = qryOperationItemsBeforeInsert
    AfterInsert = qryOperationItemsAfterInsert
    BeforeEdit = qryOperationItemsBeforeEdit
    BeforePost = qryOperationItemsBeforePost
    BeforeDelete = qryOperationsBeforeDelete
    AfterScroll = qryOperationItemsAfterScroll
    Parameters = <
      item
        Name = 'ContractOperationId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT  *'
      'FROM            Cnt.ContractOperationItems'
      'WHERE        (ContractOperationId = :ContractOperationId)')
    Left = 93
    Top = 107
    object qryOperationItemsContractOperationItemId: TAutoIncField
      FieldName = 'ContractOperationItemId'
      ReadOnly = True
    end
    object qryOperationItemsContractOperationId: TIntegerField
      FieldName = 'ContractOperationId'
    end
    object qryOperationItemsItemKind: TWordField
      Tag = 3
      DisplayLabel = #1606#1608#1593
      FieldName = 'ItemKind'
      Required = True
      OnChange = qryOperationItemsItemKindChange
      OnGetText = qryOperationItemsItemKindGetText
      OnSetText = qryOperationItemsItemKindSetText
    end
    object qryOperationItemsIStuffCount: TIntegerField
      Tag = 3
      DisplayLabel = #1578#1593#1583#1575#1583' '#1605#1576#1606#1575#1740' '#1605#1581#1575#1587#1576#1607
      FieldName = 'IStuffCount'
      Required = True
    end
    object qryOperationItemsIStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1705#1583#1705#1575#1604#1575#1740' '#1602#1575#1576#1604' '#1578#1581#1608#1740#1604
      FieldName = 'IStuffCode'
      OnChange = qryOperationItemsIStuffCodeChange
    end
    object qryOperationItems_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1588#1585#1581' '#1705#1575#1604#1575
      FieldKind = fkLookup
      FieldName = '_StuffName'
      LookupDataSet = qryStuff_Unit
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'c_StuffName'
      KeyFields = 'IStuffCode'
      ReadOnly = True
      Required = True
      Size = 100
      Lookup = True
    end
    object qryOperationItems_UnitCode1: TIntegerField
      Tag = 3
      FieldKind = fkLookup
      FieldName = '_UnitCode1'
      LookupDataSet = qryStuff_Unit
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'n_UnitCode'
      KeyFields = 'IStuffCode'
      ReadOnly = True
      Lookup = True
    end
    object qryOperationItems_UnitCode2: TIntegerField
      Tag = 3
      FieldKind = fkLookup
      FieldName = '_UnitCode2'
      LookupDataSet = qryStuff_Unit
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'UnitCode2'
      KeyFields = 'IStuffCode'
      ReadOnly = True
      Lookup = True
    end
    object qryOperationItemsIAmount: TBCDField
      Tag = 3
      DisplayLabel = #1578#1593#1583#1575#1583'/'#1583#1585#1589#1583
      FieldName = 'IAmount'
      Required = True
      Precision = 18
    end
    object qryOperationItemsINote: TWideStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1740#1581#1575#1578
      FieldName = 'INote'
      Size = 500
    end
    object qryOperationItemsIBuyEffect: TWordField
      Tag = 3
      DisplayLabel = #1578#1575#1579#1740#1585' '#1576#1585' '#1582#1585#1740#1583
      FieldName = 'IBuyEffect'
      OnGetText = qryOperationItemsItemKindGetText
      OnSetText = qryOperationItemsItemKindSetText
    end
    object qryOperationItemsISellEffect: TWordField
      Tag = 3
      DisplayLabel = #1578#1575#1579#1740#1585' '#1576#1585' '#1601#1585#1608#1588
      FieldName = 'ISellEffect'
      OnGetText = qryOperationItemsItemKindGetText
      OnSetText = qryOperationItemsItemKindSetText
    end
    object qryOperationItemsIUnitCode: TWordField
      FieldName = 'IUnitCode'
    end
    object qryOperationItems_UnitName: TStringField
      DisplayLabel = #1608#1575#1581#1583#1588#1605#1575#1585#1588
      FieldKind = fkLookup
      FieldName = '_UnitName'
      LookupDataSet = qryUnits
      LookupKeyFields = 'UnitCode'
      LookupResultField = 'UnitName'
      KeyFields = 'IUnitCode'
      Size = 100
      Lookup = True
    end
    object qryOperationItemsINote2: TWideStringField
      DisplayLabel = #1578#1608#1590#1740#1581#1575#1578' '#1711#1585#1608#1607#1740
      FieldName = 'INote2'
      Size = 100
    end
  end
  object qryUnits: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT        UnitCode, UnitName'
      'FROM            Units')
    Left = 266
    Top = 148
  end
  object popContractsStatus: TPopupMenu
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    Images = ImageList1
    ParentBiDiMode = False
    Left = 606
    Top = 337
    object AllClick1: TMenuItem
      Caption = 'AllClick'
      OnClick = AllClick1Click
    end
  end
  object srcOptFamilies: TDataSource
    DataSet = qryOptFamilies
    OnStateChange = srcOptFamiliesStateChange
    Left = 181
    Top = 338
  end
  object qryOptFamilies: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeInsert = qryOperationItemsBeforeInsert
    AfterInsert = qryOperationItemsAfterInsert
    BeforeEdit = qryOperationItemsBeforeEdit
    BeforePost = qryOperationItemsBeforePost
    BeforeDelete = qryOperationsBeforeDelete
    Parameters = <
      item
        Name = 'ContractOperationId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT  *'
      'FROM            Cnt.ContractOperationFamilies'
      ''
      'WHERE        (ContractOperationId = :ContractOperationId)')
    Left = 381
    Top = 331
    object qryOptFamiliesContractOperationFamilyId: TAutoIncField
      FieldName = 'ContractOperationFamilyId'
      ReadOnly = True
    end
    object qryOptFamiliesCaseNo: TIntegerField
      FieldName = 'CaseNo'
    end
    object qryOptFamiliesContractOperationId: TIntegerField
      FieldName = 'ContractOperationId'
    end
    object qryOptFamiliesFStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1705#1583#1705#1575#1604#1575
      FieldName = 'FStuffCode'
    end
    object qryOptFamilies_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1588#1585#1581' '#1705#1575#1604#1575
      FieldKind = fkLookup
      FieldName = '_StuffName'
      LookupDataSet = qryStuff_Unit
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'c_StuffName'
      KeyFields = 'FStuffCode'
      ReadOnly = True
      Required = True
      Size = 100
      Lookup = True
    end
  end
  object qryLastPrice: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'CurentDate'
        Size = -1
        Value = Null
      end
      item
        Name = 'OperationIdFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'OperationIdTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'EmployerIdFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'EmployerIdTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'st1From'
        Size = -1
        Value = Null
      end
      item
        Name = 'st1To'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT        Cnt.ContractOperations.OperationId AS c_stuffcode,' +
        ' StuffCoding.c_StuffName, LookUps.Name AS St1Name, Cnt.Contracts' +
        '.EmployerId, LastPrice.EmployerName, Units_3.UnitName, '
      
        '                         Units_1.UnitName AS UnitName2, StuffCod' +
        'ing.Carton, Cnt.ContractOperations.BasePrice AS ConsumerPrice, C' +
        'nt.ContractOperations.TotalPrice AS PurchasePrice, Cnt.ContractO' +
        'perations.OverheadPrice, '
      '                         Cnt.Contracts.CaseNo'
      'FROM            StuffCoding INNER JOIN'
      
        '                         Cnt.ContractOperations ON StuffCoding.c' +
        '_StuffCode = Cnt.ContractOperations.OperationId RIGHT OUTER JOIN'
      
        '                             (SELECT        Contracts_1.Employer' +
        'Id, Customers.CustName AS EmployerName, ContractOperations_1.Ope' +
        'rationId, MAX(Contracts_1.ContractDate) AS ContractDate, Custome' +
        'rs.ValuationType'
      
        '                                FROM            Cnt.ContractOper' +
        'ations AS ContractOperations_1 INNER JOIN'
      
        '                                                         Cnt.Con' +
        'tracts AS Contracts_1 ON ContractOperations_1.CaseNo = Contracts' +
        '_1.CaseNo INNER JOIN'
      
        '                                                         Custome' +
        'rs ON Contracts_1.EmployerId = Customers.CustID'
      
        '                                WHERE        (Contracts_1.Contra' +
        'ctDate <= :CurentDate)'
      
        '                                GROUP BY Contracts_1.EmployerId,' +
        ' Customers.CustName, ContractOperations_1.OperationId, Customers' +
        '.ValuationType) AS LastPrice RIGHT OUTER JOIN'
      
        '                         Cnt.Contracts ON LastPrice.EmployerId =' +
        ' Cnt.Contracts.EmployerId AND LastPrice.ContractDate = Cnt.Contr' +
        'acts.ContractDate ON Cnt.ContractOperations.OperationId = LastPr' +
        'ice.OperationId AND '
      
        '                         Cnt.ContractOperations.CaseNo = Cnt.Con' +
        'tracts.CaseNo LEFT OUTER JOIN'
      
        '                         Units AS Units_3 ON StuffCoding.n_UnitC' +
        'ode = Units_3.UnitCode LEFT OUTER JOIN'
      
        '                         Units AS Units_1 ON StuffCoding.UnitCod' +
        'e2 = Units_1.UnitCode LEFT OUTER JOIN'
      
        '                         LookUps ON StuffCoding.st1 = LookUps.Co' +
        'de'
      
        'WHERE        (StuffCoding.State = 0) AND (StuffCoding.c_StuffCod' +
        'e <> 0) AND (LookUps.Kind = 301) '
      'AND (Cnt.Contracts.ContractsStatus = 1) '
      
        'AND (Cnt.ContractOperations.OperationId BETWEEN :OperationIdFrom' +
        ' AND :OperationIdTo ) '
      
        'AND (Cnt.Contracts.EmployerId BETWEEN :EmployerIdFrom AND :Emplo' +
        'yerIdTo ) '
      'AND (StuffCoding.st1 BETWEEN :st1From AND :st1To )')
    Left = 770
    Top = 212
    object qryLastPricec_stuffcode: TLargeintField
      Tag = 3
      DisplayLabel = #1705#1583' '#1705#1575#1604#1575
      FieldName = 'c_stuffcode'
    end
    object qryLastPricec_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1705#1575#1604#1575
      FieldName = 'c_StuffName'
      Size = 150
    end
    object qryLastPriceSt1Name: TStringField
      Tag = 3
      DisplayLabel = #1576#1585#1606#1583
      FieldName = 'St1Name'
      Size = 50
    end
    object qryLastPriceEmployerId: TIntegerField
      Tag = 3
      DisplayLabel = #1705#1583' '#1591#1585#1601' '#1602#1585#1575#1585#1583#1575#1583
      FieldName = 'EmployerId'
    end
    object qryLastPriceEmployerName: TStringField
      Tag = 3
      DisplayLabel = #1591#1585#1601' '#1602#1585#1575#1585#1583#1575#1583
      FieldName = 'EmployerName'
      Size = 150
    end
    object qryLastPriceUnitName: TStringField
      Tag = 3
      DisplayLabel = #1608#1575#1581#1583
      FieldName = 'UnitName'
      Size = 50
    end
    object qryLastPriceUnitName2: TStringField
      Tag = 3
      DisplayLabel = #1608#1575#1581#1583'2'
      FieldName = 'UnitName2'
      Size = 50
    end
    object qryLastPriceCarton: TFloatField
      Tag = 3
      DisplayLabel = #1578#1593#1583#1575#1583' '#1583#1585' '#1705#1575#1585#1578#1606
      FieldName = 'Carton'
    end
    object qryLastPriceConsumerPrice: TBCDField
      Tag = 3
      DisplayLabel = #1602#1740#1605#1578'| '#1605#1589#1585#1601' '#1705#1606#1606#1583#1607' '#1606#1607#1575#1740#1740
      FieldName = 'ConsumerPrice'
      currency = True
      Precision = 19
    end
    object qryLastPricePurchasePrice: TBCDField
      Tag = 3
      DisplayLabel = #1602#1740#1605#1578'| '#1582#1585#1740#1583#1575#1585
      FieldName = 'PurchasePrice'
      currency = True
      Precision = 19
    end
    object qryLastPriceOverheadPrice: TBCDField
      Tag = 3
      DisplayLabel = #1602#1740#1605#1578'| '#1601#1585#1608#1588#1711#1575#1607
      FieldName = 'OverheadPrice'
      currency = True
      Precision = 19
    end
    object qryLastPriceCaseNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1606#1575#1587#1607' '#1602#1585#1575#1585#1583#1575#1583
      FieldName = 'CaseNo'
    end
  end
  object srcLastPrice: TDataSource
    DataSet = qryLastPrice
    Left = 773
    Top = 274
  end
end
